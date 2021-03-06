<?php
/**
 * Custom CSS and JS
 *
 */

if ( ! defined( 'ABSPATH' ) ) {
    exit; // Exit if accessed directly
}

/**
 * CustomCSSandJS_Addons 
 */
class CustomCSSandJS_Addons {

    /**
     * Constructor
     */
    public function __construct() {

        // Add actions
        $actions = array(
            'add_meta_boxes' => 'add_meta_boxes',
            'edit_form_advanced' => 'only_premium',
        );
        foreach( $actions as $_key => $_value ) {
            add_action( $_key, array( $this, $_value ) );
        }

    }

    function only_premium() {
        $current_screen = get_current_screen();

        if ( $current_screen->post_type != 'custom-css-js' ) {
            return false;
        }

?>
    <div class="ccj_only_premium ccj_only_premium-first">
        <div> 
            <a href="http://www.silkypress.com/simple-custom-css-js-pro/" target="_blank">Only available in Premium version</a>
        </div>
    </div>
    <?php
    }


    /**
     * Add the URL Preview meta box
     */
    function add_meta_boxes() {
        
        add_meta_box( 'previewdiv', __('Preview'), array( $this, 'previews_meta_box_callback' ), 'custom-css-js', 'normal' );
        add_meta_box( 'url-rules', __('Apply only on these URLs'), array( $this, 'url_rules_meta_box_callback' ), 'custom-css-js', 'normal' );
        add_meta_box( 'revisionsdiv', __('Code Revisions'), array( $this, 'revisions_meta_box_callback' ), 'custom-css-js', 'normal' );
    }


    /**
     * The Preview meta box content
     */
    function previews_meta_box_callback( $post ) {
?>
<div id="preview-action">
    <div>
    <input type="text" name="preview_url" id="ccj-preview_url" placeholder="Full URL on which to preview the changes ..." disabled="disabled" />
    <a class="preview button button-primary button-large" id="ccj-preview">Preview Changes</a>
    </div>
</div>
<?php
        
    }


    /**
     * Show the URL Rules metabox
     */
    function url_rules_meta_box_callback( $post ) {

        $filters = array(
            'all'           => __('All Website'),
            'first-page'    => __('First page'),
            'contains'      => __('Contains'),
            'not-contains'  => __('Not contains'),
            'equal-to'      => __('Is equal to'),
            'not-equal-to'  => __('Not equal to'),
            'begins-with'   => __('Starts with'),
            'ends-by'       => __('Ends by'),
        );
        $filters_html = '';
        foreach( $filters as $_key => $_value ) {
            $filters_html .= '<option value="'.$_key.'">' . $_value . '</option>';
        }

        $applied_filters = '[{"value":"","type":"all","index":1}]';

?>
        <input type="hidden" name="scan_anchor_filters" id="wplnst-scan-anchor-filters" value='<?php echo $applied_filters; ?>' />
    <table id="wplnst-elist-anchor-filters" class="wplnst-elist" cellspacing="0" cellpadding="0" border="0" data-editable="true" data-label="<?php _e('URL'); ?>"></table>
        <?php _e('URL'); ?> <select id="wplnst-af-new-type"><?php echo $filters_html ?></select>&nbsp;
        <input id="wplnst-af-new" type="text" class="regular-text" value="" placeholder="<?php _e('Text filter'); ?>" />&nbsp;
        <input class="button button-primary" type="button" id="wplnst-af-new-add" value="<?php _e('Add'); ?>" /></td>

<?php
    }



    /**
     * Output the revisions 
     */
    function revisions_meta_box_callback( $post ) {
        $datef = _x( 'F j, Y @ H:i:s', 'revision date format' );
        $users = get_users(array('number' => 3));
        $revisions = array(
            array(
                'ID' => 1,
                'post_author' => $users[0]->display_name,
                'title' => date_i18n( $datef, time() - 86400 ),
            ),
            array(
                'ID' => 2,
                'post_author' => isset($users[1]) ? $users[1]->display_name : $users[0]->display_name,
                'title' => date_i18n( $datef, time() - 87639),
            ),
            array(
                'ID' => 3,
                'post_author' => isset($users[2]) ? $users[2]->display_name : $users[0]->display_name,
                'title' => date_i18n( $datef, time() - 97639),
            ),
        );
?>
    <table class="revisions">
        <thead><tr>
            <th class="revisions-compare">Compare</th>
            <th>Revision</th>
            <th>Author</th>
            <th><input type="checkbox" name="delete[]" value="all" id="ccj-delete-checkbox" /> Delete</th>
            <th>Restore</th>
        </tr></thead>
        <tbody>
        <?php foreach( $revisions as $revision ) : ?>
        <?php

        $restore_url = '#';

        $delete_disabled = '';
        $delete_tooltip = '';
        $class = '';
        ?>
        <tr class="<?php echo $class; ?>" id="<?php echo 'revision-row-' . $revision['ID']; ?>">
            <td class="revisions-compare">
            <input type="radio" name="compare_left" value="<?php echo $revision['ID']; ?>" />
            <input type="radio" name="compare_right" value="<?php echo $revision['ID']; ?>" />
            </td>
            <td><?php echo $revision['title']; ?></td>
            <td><?php echo $revision['post_author']; ?></td>
            <td class="revisions-delete">
            <input type="checkbox" name="delete[]" value="<?php echo $revision['ID']; ?>" <?php echo $delete_disabled . $delete_tooltip; ?>/>
            </td>
            <td class="revisions-restore">
                <a href="<?php echo $restore_url; ?>"><?php _e('Restore'); ?></a>
            </td>
        </tr>
        <?php endforeach; ?>
        <tr>
            <td>
                <input type="button" class="button-secondary" value="<?php esc_attr_e('Compare'); ?>" id="revisions-compare-button" />
            </td>
            <td colspan="2"> &nbsp;</td>
            <td>
                <input type="button" class="button-secondary" value="<?php esc_attr_e('Delete'); ?>" id="revisions-delete-button" />
            </td>
            <td> &nbsp; </td>
        </tr> 
        </tbody>
    </table>
<?php 
    }
        


}

return new CustomCSSandJS_Addons();
