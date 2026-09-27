<div id="alert-container-proposal" class="alert-container"></div>
<div id="alert-container-order" class="alert-container"></div>
<div id="alert-container-payment" class="alert-container"></div>

<style>
.alert-container {
    margin-bottom: 20px; /* More space between different alert containers */
}

.alert {
    margin-bottom: 10px; /* Space between alerts */
    padding: 10px; /* Padding inside the alert */
    border-radius: 5px; /* Rounded corners */
    position: relative; /* Required for close button positioning */
}

.alert .icon {
    margin-right: 10px; /* Space between icon and text */
}

.alert ul {
    margin: 0;
    padding: 0;
    list-style: none; /* Remove default list styling */
}

.alert ul li {
    margin-bottom: 5px; /* Space between list items */
}

.alert .close {
    position: absolute;
    top: 5px;
    right: 10px;
}
</style>
<script type="text/javascript">
    $(document).ready(function() {
    // Function to check order status
    function checkOrderStatus() {
        $.ajax({
            url: 'check_order_status.php',
            method: 'GET',
            success: function(response) {
                const data = JSON.parse(response);

                // Show or hide alerts based on the response
                if (data.alerts.proposal) {
                    showAlert('proposal', data.orders.proposal);
                } else {
                    $('#alert-container-proposal').empty();
                }
                if (data.alerts.order) {
                    showAlert('order', data.orders.order);
                } else {
                    $('#alert-container-order').empty();
                }
                if (data.alerts.payment) {
                    showAlert('payment', data.orders.payment);
                } else {
                    $('#alert-container-payment').empty();
                }
            },
            error: function(xhr, status, error) {
                console.error('AJAX error:', status, error);
                // Handle the error appropriately
            }
        });
    }

    // Function to show the alert
    function showAlert(type, orders) {
        let alertClass = '';
        let alertIcon = '';
        let message = '';

        switch (type) {
            case 'proposal':
                alertClass = 'alert-danger'; // Red color for proposal alerts
                alertIcon = 'info-circle';
                message = `You Sent The Customer a Proposal or Quotation Five Days Ago. Order ID: ${orders[0].order_id} - Transaction Time: ${orders[0].transaction_time}. Kindly Inquire About The Progress of Your Quote.`;
                break;
            case 'order':
                alertClass = 'alert-warning'; // Yellow color for order alerts
                alertIcon = 'info-circle';
                message = `You Prepared a Sales Order 7 Days Ago. Order ID: ${orders[0].order_id} - Transaction Time: ${orders[0].transaction_time}. Please Remind The Customer That Order Cannot Be Processed Until Payment Has Been Received.`;
                break;
            case 'payment':
                alertClass = 'alert-info'; // Blue color for payment alerts
                alertIcon = 'info-circle';
                message = `Payment Was Processed 3 Days Ago. Order ID: ${orders[0].order_id} - Transaction Time: ${orders[0].transaction_time}. Please Verify If The Item Has Been Delivered.`;
                break;
        }

        let alertHtml = `
            <div class="alert ${alertClass} alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h5><i class="icon fas fa-${alertIcon}"></i> Alert!</h5>
                <p style="font-size: 12px;">${message}</p>
            </div>`;

        if (type === 'proposal') {
            $('#alert-container-proposal').html(alertHtml);
        } else if (type === 'order') {
            $('#alert-container-order').html(alertHtml);
        } else if (type === 'payment') {
            $('#alert-container-payment').html(alertHtml);
        }
    }

    // Check the order status at specified intervals
    setInterval(checkOrderStatus, 60000); // Check every minute
});
</script>