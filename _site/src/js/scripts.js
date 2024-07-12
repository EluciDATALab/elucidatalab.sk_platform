function copyToClipboard(text, messageId) {
    // Create a temporary text area element
    const tempTextArea = document.createElement('textarea');
    tempTextArea.value = text;
    document.body.appendChild(tempTextArea);

    // Select the text area content
    tempTextArea.select();
    tempTextArea.setSelectionRange(0, 99999); // For mobile devices

    // Copy the text to the clipboard
    document.execCommand('copy');

    // Remove the temporary text area
    document.body.removeChild(tempTextArea);

    // Show the copy message
    const copyMessage = document.getElementById(messageId);
    if (copyMessage) {
        copyMessage.style.display = 'block';

        // Hide the copy message after 2 seconds
        setTimeout(() => {
            copyMessage.style.display = 'none';
        }, 2000);
    } else {
        console.error('Copy message element not found:', messageId);
    }
}
