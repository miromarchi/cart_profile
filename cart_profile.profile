<?php

/**
 * Implements hook_form_alter().
 *
 * Select the current install profile by default.
 */
if (!function_exists("system_form_install_select_profile_form_alter")) {
  function system_form_install_select_profile_form_alter(&$form, $form_state) {
    foreach ($form['profile'] as $key => $element) {
      $form['profile'][$key]['#value'] = 'cart_profile';
    }
  }
}
function cart_profile_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name
  $form['site_information']['site_name']['#default_value'] = t('Cuban Art Worldwide');
}
