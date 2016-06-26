jQuery(document).ready( function($) { 

    // Initialize the CodeMirror editor
    if ( $('#content').length > 0 ) {
        var editor = CodeMirror.fromTextArea(document.getElementById("content"), {
            lineNumbers: true,
            mode: $("#content").attr('mode'),
            matchBrackets: true,
        });
    }
});

