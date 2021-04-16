# Release Notes

- [Botble 5.11](#version_5_11)
- [Botble 5.10](#version_5_10)
- [Botble 5.9](#version_5_9)
- [Botble 5.8](#version_5_8)
- [Botble 5.7](#version_5_7)
- [Botble 5.6](#version_5_6)
- [Botble 5.5](#version_5_5)
- [Botble 5.4](#version_5_4)
- [Botble 5.3](#version_5_3)
- [Botble 5.2](#version_5_2)
- [Botble 5.1](#version_5_1)
- [Botble 5.0](#version_5_0)
- [Botble 4.2](#version_4_2)
- [Botble 4.1](#version_4_1)
- [Botble 4.0](#version_4_0)
- [Botble 3.6](#version_3_6)
- [Botble 3.5.1](#version_3_5_1)
- [Botble 3.5](#version_3_5)
- [Botble 3.4](#version_3_4)
- [Botble 3.3.1](#version_3_3_1)
- [Botble 3.3](#version_3_3)
- [Botble 3.2.1](#version_3_2_1)
- [Botble 3.2](#version_3_2)
- [Botble 3.2](#version_3_1)
- [Botble 3.0.2](#version_3_0.2)
- [Botble 3.0.1](#version_3_0.1)
- [Botble 3.0](#version_3_0)
- [Botble 2.6](#version_2_6)
- [Botble 2.5](#version_2_5)
- [Botble 2.4.2](#version_2_4_2)
- [Botble 2.4.1](#version_2_4_1)
- [Botble 2.4](#version_2_4)
- [Botble 2.3.1](#version_2_3_1)
- [Botble 2.3](#version_2_3)
- [Botble 2.2.1](#version_2_2_1)
- [Botble 2.2](#version_2_2)
- [Botble 2.1](#version_2_1)
- [Botble 2.0](#version_2_0)
- [Botble 1.0](#version_1_0)

## Botble 5.11
### Dec 11, 2020
- Improve Cookie Consent plugin.
- Improve responsive.
- Update translations, added missing keys.
- Improve DO Spaces integration.
- Fix roles & permissions.
- Update UI for Ripple theme.
- Update seeders, easy to generate sample data using command db:seed.
- Update setting page & system info.
- Optimize page speed and performance.

## Botble 5.10
### Nov 14, 2020
- Update menu: optimize queries, cache menu URL for better performance.
- Optimize queries on menu & widgets.
- Update Cookie consent: Add option to change background color, text color.
- Update error pages, make it more beautiful.
- Update UI contact form, galleries.
- Improve permalink & custom CSS page.
- Improve Analytics plugin, make it compatible with PHP 7.4.
- Fix theme translations: new keys in English doesn't show in other languages.
- Fix IP in activity logs, allow IP v6.
- Add seeders: easy to create sample data with command php artisan db:seed.
- Add command to activate all plugins in one time: php artisan cms:plugin:activate:all
- Add functions to get popular blog categories.
- Add mediaImages fields.
- Refactor code.

## Botble 5.9
### Oct 15, 2020
- Fix multi-language with Ajax.
- Fix views count.
- Update contact form with Ajax.
- Update email encryption settings.
- Improve Recaptcha: add an option to hide the v3 badge.
- Improve export posts to CSV, Excel.
- Apply PurgeCSS to remove unused CSS, make it loads faster.
- Improve theme UI.
- Refactor code.

## Botble 5.8
### 15-09-2020

- Update to Laravel version 7.28
- Update homepage & blog page settings. Now, it's moved into Appearance -> Theme options.
- Move settings for Cookie Consent into Appearance -> Theme options.
- Add theme options to enable/disable Facebook chat, Facebook comment.
- Add settings for watermark. Now, you can add watermark by changing setting in Admin -> Settings -> Media.
- Allow to change permalink in Admin -> Settings -> Permalinks.
- Add language settings. Allow to set default language in Admin -> Settings -> General.
- Allow admin to login using email or username.
- Optimize queries to make site loads faster.
- Update UI.
- Refactor code.
- Fix webpack.mix.js config, issue with path on Windows.
- Fix assets path.
- Fix copy folder in Admin -> Media.

## Botble 5.7
### 05-08-2020
- Upgrade to the latest Laravel framework version 7.22.
- Deprecated some media functions: `is_image`, `get_image_url`, `get_object_image`, `rv_media_handle_upload`. 
  Replacements: `RvMedia::isImage()`, `RvMedia::getImageUrl()`, `RvMedia::handleUpload()`.
- Add theme options to change primary color.
- Add support **Digital Ocean Spaces**.
- Send an email to admin when someone create a new post.
- Fix timezone, it doesn't work before.
- Fix filter posts.
- Update email settings. Add support **SES**, **Postmark**, **Array**, **Log**.
- Improve performance & refactor source code.
- Improve license system, make it works better.

<a name="version_5_6"></a>
## Botble 5.6
### 03-07-2020

- Update to the latest Laravel version 7.18.
- Optimize database queries.
- Add support Recaptcha v3.
- Improve cookie consent.
- Fix bugs plugin Language & Custom fields.
- Add default open graph image.
- Improve dev tools.
- Improve admin UI.
- Refactor code.

<a name="version_5_5"></a>
## Botble 5.5
### 29-05-2020

- Update to the latest Laravel version 7.13.
- Improve media module: support upload chunk size.
- Improve email system.
- Update API package.
- Move `js-validation` package to `core`.
- Upgrade jQuery to v3.5.1 and Bootstrap 4.5.0.
- Improve admin UI.
- Refactor code.


<a name="version_5_4"></a>
## Botble 5.4
### 01-05-2020

- Update to the latest Laravel version 7.8.
- Refactor code & optimize performance.
- Add backup commands:
    - php artisan cms:backup:create
    - php artisan cms:backup:restore
    - php artisan cms:backup:remove
    - php artisan cms:backup:list
- Fix image's watermark.
- Change default avatar, remove Gravatar as default avatar.
- Fix widget & plugin language.
- Remove package `davejamesmiller/laravel-breadcrumbs`, build own breadcrumbs.
- Fix bug repeater field in plugin Custom fields.
- Fix theme options when using `editor` field.

<a name="version_5_3"></a>
## Botble 5.3
### 29-03-2020
- Update to the latest Laravel version 7.3
- Improve source code.
- Add plugin Translation.
- Improve plugin custom fields.
- Improve plugin language. When add/remove a language, it also adds/removes language files in /resources/lang.
- Update UI.
- Refactor code.

<a name="version_5_2"></a>
## Botble 5.2
### 12-03-2020
- Upgrade to Laravel 7.x
- Improve source code.
- Add package `js-validation` & `sitemap`
- Fix context menu in media.
- Fix bug when changing admin's password.
- Improve plugin custom fields.
- Update translations.
- Update UI.
- Refactor code.

<a name="version_5_1"></a>
## Botble 5.1
### 08-02-2020
- Update admin theme.
- Improve source code.
- Update member activity logs.
- Fix media upload.

<a name="version_5_0"></a>
## Botble 5.0
### 20-01-2020
- Change admin theme to make it more awesome.
- Add license.
- Update ckeditor to allow to add image's caption.
- Fix ACL module.
- Fix account plugin.

<a name="version_4_2"></a>
## Botble 4.2
### 06-01-2020

- Fix bug upload avatar in plugin member.
- Fix permission issue when changing language.
- Fix dev commands.
- Fix error when creating new role.
- Fix page title.
- Fix logo in email.
- Fix menu & audit log.
- Fix sort order in dashboard widgets.
- Update UI in login/register form for member.
- Update plugin `social login` to support plugin member.
- Update country flags.
- Update latest code from Laravel framework.
- Deprecated function `setModuleName()` in forms.
- Using package `mews/purifier` to prevent XSS attack.
- Add plugin `cookie consent`.
- Refactor code.

<a name="version_4_1"></a>
## Botble 4.1
### 01-12-2019

- Fix bug in plugin member.
- Improve custom fields.
- Improve media.
- Change to use `laravel/tinker` 2.0
- Change to use `mpociot/laravel-apidoc-generator` 4.0
- Add command `php artisan cms:plugin:make:crud` (Video tutorial: https://www.youtube.com/watch?v=GAnoZbGHE28)
- Fix UI
- Add config for Travis CI
- Fix mail variables
- Fix SEO helper, cache issue in media.
- Add option to disable preview feature (Ex: `\SlugHelper::disablePreview(Post::class)`)
- Refactor code.

<a name="version_4_0"></a>
## Botble 4.0
### 31-10-2019

- Upgraded to Laravel 6.0. Now this CMS requires PHP >=7.2 (https://laravel.com/docs/6.0#server-requirements)

- Refactor database to improve query performance.
+ **slugs**: renamed column `reference` to `reference_type` and using model class instead of screen name. Ex: `reference_type` is `post` now changed to `Botble\Blog\Models\Post`.
+ **language_meta**: renamed column `lang_meta_content_id` to `reference_id` and `lang_meta_reference` to `reference_type`. Using model class instead of screen name. Ex: `reference_type` is `post` now changed to `Botble\Blog\Models\Post`.
+ **menu_nodes**: renamed column `related_id` to `reference_id` and `type` to `reference_type`.  Using model class instead of screen name. Ex: `reference_type` is `post` now changed to `Botble\Blog\Models\Post`.
+ **meta_boxes**: renamed column `content_id` to `reference_id` and `reference` to `reference`. Using model class instead of screen name. Ex: `reference_type` is `post` now changed to `Botble\Blog\Models\Post`.

- Update meta boxes helpers: Remove screen name in function. (`get_meta_data()`, `get_meta()`, `save_meta_data()`, `delete_meta_data()`)
Ex:
```php
// Before
function get_meta_data($object->id, $key, $screen, $single = false, $select = ['meta_value'])
```

```php
// Now
function get_meta_data($object, $key, $single = false, $select = ['meta_value'])
```

- All forms now require to setup model. Ex: platform/plugins/blog/src/Forms/PostForm.php:54
```php
$this->setupModel(new Post);
```

<a name="version_3_6_1"></a>
## Botble 3.6.1
### 10-08-2019

- Fix bug delete widget.
- Fix bug search users.
- Refactor code.
- Improve performance.

<a name="version_3_6"></a>
## Botble 3.6
### 20-07-2019

- Fix bug repeater field with image, file in custom fields plugin.
- Move plugin management into /packages. Now it's a optional feature, you can remove `platform/plugin-management` and run composer update to remove plugin feature.
- Update `composer.json`. Add package `wikimedia/composer-merge-plugin`.
- Add command to regenerate image sizes: `php artisan cms:media:thumnail:generate`.
- Add default theme options: site title, SEO meta tags.
- Add search box on tables.
- Update translations.
- Optimize performance & refactor code.

<a name="version_3_5_1"></a>
## Botble 3.5.1
### 25-06-2019

- Hotfix delete language.

Add this line into `platform/plugins/language/resources/views/index.blade.php:191`
```
@include('core/table::modal')
```

http://prntscr.com/o66h4x

<a name="version_3_5"></a>
## Botble 3.5
### 30-05-2019
- Restructure asset files.
- Fix security issue in upload user's avatar.
- Change default value for `status` column to `published` instead of `publish`.
- Create `dev-tool` package.
- Change binding type for repositories from `singleton` to `bind`.
- Remove `@author` in comment docs.
- Fix language issue.
- Fix dashboard widgets.
- Allow to create user without role.
- Refactor, clean migrations.

<a name="version_3_4"></a>
## Botble 3.4
### 15-03-2019
- Upgraded to the latest Laravel version 5.8
- Change folder structure: core, plugins and public/themes are now located in /platform folder.
- Contact plugin: Allow to reply directly from admin panel.
- Improve admin UI.
- Move some plugins to packages. Now we have a new folder is /platform/packages (it is the place for required plugins).
- Theme's directory is now located in /platform/themes/your-theme so it can't access directly anymore. After make change on theme's assets, you will need to run command `php artisan cms:theme:assets:publish your-theme` to copy assets to /public/themes/your-themes.

- Made some change on `assets` module.
    + Refactor some methods.
        + `addJavascript` => `addScripts`
        + `removeJavascript` => `removeScripts`
        + `getJavascript` => `getScripts`
        + `addStylesheets` => `addStyles`
        + `removeStylesheets` => `removeStyles`
        + `getStylesheets` => `getStyles`
        + `addStylesheetsDirectly` => `addStylesDirectly`
        + `addJavascriptDirectly` => `addScriptsDirectly`

    + Change some config keys:
        + `javascript` => `scripts`
        + `stylesheets` => `styles`
        
- Change folder to upload to `storage/uploads`, you need to run command `php artisan storage:link` to create symlink.

- Change event to listen when adding admin menu.

Change `\Botble\Base\Events\SessionStarted::class` to `\Illuminate\Routing\Events\RouteMatched::class`

Example:

```php
\Event::listen(\Illuminate\Routing\Events\RouteMatched::class, function () {
    dashboard_menu()->registerItem([
        'id' => 'cms-plugins-<your-plugin>', // key of menu, it should unique
        'priority' => 5,
        'parent_id' => null,
        'name' => __('Your plugin name'), // menu name, if you don't need translation, you can use the name in plain text
        'icon' => 'fa fa-camera',
        'url' => route('<plugins>.list'), // route to your plugin list.
        'permissions' => ['<plugins>.list'], // permission should same with route name, you can see that flag in Plugin.php
    ]);
});
```

<a name="version_3_3_1"></a>
## Botble 3.3.1
### 18-10-2018
- Hotfix: Disabled installation Laravel CMS from UI because of security issues.

<a name="version_3_3"></a>
## Botble 3.3
### 30-09-2018
- See what's new here: https://laravel-cms.gistensal.com/whats-new-in-laravel-cms-33

<a name="version_3_2_1"></a>
## Botble 3.2.1
### 22-06-2018

- Hotfix bulk actions and language column

<a name="version_3_2"></a>
## Botble 3.2
### 14-06-2018
- Fix bug UI & update admin UI
- Add Chinese language
- Refactor code & optimize queries
- Update vendor packages

<a name="version_3_1"></a>
## Botble 3.1
### 15-05-2018

- Support multi-language for theme options & widgets
- Fix bug add super users
- Upgrade table system & add filter tables
- Support change language on the login page
- Fix bug adding admin locale
- Fix bug create plugin by command

<a name="version_3_0_2"></a>
## Botble 3.0.2
### 12-04-2018

- Hotfix bug cannot create new custom field

<a name="version_3_0_1"></a>
## Botble 3.0.1
### 09-04-2018

- Fix bug cropping image size.
- Fix preview image in media management
- Move API clients to settings.
- Update UI for member frontend.
- Update UI in admin panel.

<a name="version_3_0"></a>
## Botble 3.0
### 04-04-2018

- Upgrade to Laravel 5.6 (change PHP required version to >=7.1.3)
- Add Passport support
- Refactor plugin system
- Refactor ACL system
- Fix bug member login and forgot password.
- Update UI
- Update some vendor packages

<a name="version_2_6"></a>
## Botble 2.6
### 21-02-2018

- Fix member reset password bug.
- Fix to change status after creating a new plugin.
- Auto register plugin menu to admin dashboard after creating new plugin.
- Update vendor packages.
- Fix coding standard.

<a name="version_2_5"></a>
## Botble 2.5
### 19-01-2018
- Update media module. Support Amazon S3 and allowing to upload video/mp4, support preview .mp4 video on admin panel.
- Allowing to add more extensions. Just need to add to .env file.
```
    RV_MEDIA_ALLOWED_MIME_TYPES=jpg,jpeg,png,gif,txt,docx,zip,mp3,bmp,csv,docs,xls,xlsx,ppt,pptx,pdf,mp4
```
- Fix admin menu with permissions.
- Fix some UI bugs.
- Add cache management. Now we can clear cache from admin panel.
- Upgrade custom field: Fix bugs, refactor code & adding import/export functions.

<a name="version_2_4_2"></a>
## Botble 2.4.2
### 29-12-2017
    - Refactor plugin language to make it easier to integrate with new plugin (check FAQ for more detail).
    - Fix bug when deleting default user admin@gistensal.com.
    - Redirect back to previous page after login
    - Update default database.
    - Refactor slug plugin.

<a name="version_2_4_1"></a>
## Botble 2.4.1
    - Fix bug change profile image
    - Refactor plugin language & gallery
    - Move member to plugin
    - Update default database

<a name="version_2_4"></a>
## Botble 2.4
    - Upgrade to latest Laravel version 5.5. In this version, it's required PHP >= 7.0
    - Separate Admin users and members.
    - Update editor: allows multiple rich editor in a page, switch between text editor & rich editor.
    - Fix UI: dashboard widgets, plugins.

>  {warning} This a big update with Laravel framework, it's core update so to upgrade from version 2.3, you should copy your themes and plugins to version 2.4 and use new database from /database.sql.

<a name="version_2_3_1"></a>
## Botble 2.3.1
    - Fix create a Category.
    - Move analytics JSON config file to storage path.
    - Move repositories, criteria to support module.
    - Optimize media module.
    
<a name="version_2_3"></a>
## Botble 2.3
    - Apply new media management. There is many change on media on this version so the document for Media will be update later.
    - Add shortcode button above editor to easy add shortcode.
    - Allow switch between Ckeditor and Tinymce.
    - Fix bug when create new role.
    - Fix bug activate/deactivate user.
    - Add create user in admin area, now we have 2 options: create user and invite user.
    - Remove function get_file_by_size(). Now you can use get_image_url($post->image, 'thumb') instead of get_file_by_size.
    - Add front site users area.

<a name="version_2_2_1"></a>
## Botble 2.2.1
    - Add post format (Default, gallery, video...)
    - Fix bug in plugin language when default language is not set.
    - Change route name of post, page, category in front site from "public.view" to "public.single.detail"
    - Fix counter in Dashboard.
    - Refactor admin breadcrumb.
    - Set page title for each page in admin area.
    - Add new demo theme
    - Refactor show category list, theme list...
    - Remove admin bar config in theme
<a name="version_2_2"></a>
## Botble 2.2
    - Easier theme breadcrumbs. Now you can use Theme::breadcrumb()->add('label', 'http://...')->add('label2', 'http:...');
    - Fix invite user
    - Fix reset password
    - Update email template and send mail function.
    Now you can send mail by: `EmailHandler::send('Hello there', 'Test email', ['name' => 'Sang Nguyen', 'to' => 'sangit7b@gmail.com']);`
    - Remove laroute package.
    Please remove LarouteServiceProvider on /config/app.php and laroute package on composer.json.
    
<a name="version_2_1"></a>
## Botble 2.1

    - Upgrade to Laravel 5.4.
    - Upgrade custom field plugin
    - Refactor assets structure
    - Fix error when installing.
    - Fix analytics plugin after installation.

<a name="version_2_0"></a>
## Botble 2.0
### 11-09-2016
    - Fix https://github.com/google/issues/issues/1: Media upload error
    - Please see image attachment in this issue to update your code.
    
### 11-08-2016
    - Fix installation script.

### 10-22-2016
    Release Botble version 2.0

<a name="version_1_0"></a>
## Botble 1.0 

### 09-13-2016
     - Fix folders in media is not accessible: To update, you just need update two files:
          + /resources/views/files/partials/folder-row.blade.php
          + /resources/views/files/partials/uplevel.blade.php
     - Fix Menu management: 
        Run "composer update" to update menu package or replace /vendor/platform/menu folder.

### 08-31-2016
    - Fix menu module (just run "composer update" to update menu module)
    - Fix media uploads:
        Replace botbe/repositories/feature, 
        app/http/controllers/features 
        and app/http/endpoints/feature, media.js in assets.

### 08-24-2016
    - Upgrade to Laravel 5.3

### 08-11-2016
    - Update routes and media

###  08-01-2016
    - Add social login (login to admin page via facebook, github, google...

### 07-16-2016
    - Add contact form support, fix some small bugs.

### 07-09-2016
    - Fix dashboard widget, custom field and media management.

### 07-08-2016
    - Initial release Version 1.0
