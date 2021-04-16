# FAQ

## How to add new language to admin panel?

- Add your language in /resources/lang directory, copy all files /resources/lang/en and paste to your language folder and translate it to your language.

- You can use Laravel language https://github.com/caouecs/Laravel-lang/tree/master/src to quick translate.

## How to add new post format

- Add below code to your themes /functions/functions.php

```php
register_post_format([
    'post-format-key' => [
        'key'  => 'post-format-key',
        'name' => 'Post Format Name',
    ],
]);
```

## How to share data between theme's views?

You can use `Theme::set()` and `Theme::get()` for partials views (using `Theme::partial('...')`).

Example:
In `public/themes/ripple/views/post.blade.php` you can add bellow code to share $post data.

```php
@php
    Theme::set('current_post', $post);
@endphp
```

And if you want to use it in `public/themes/ripple/partials/header.blade.php`.

```php
@php
    $current_post = Theme::get('current_post');
@endphp
```

You can pass data like normal if you're using @include.

Example:

```php
@include('theme.ripple::partials.header', ['current_post' => $post])
```

## How to custom breadcrumbs for post?

There're 2 ways to do that.

### Using action

Add to `/platform/themes/your-theme/functions/functions.php`

```php
add_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, 'custom_breadcrumbs', 10, 2);

function custom_breadcrumbs(string $screen, $post) {
    if ($screen == POST_MODULE_SCREEN_NAME) {
        Theme::breadcrumb()->crumbs = [];
        $breadcrumb = Theme::breadcrumb()->add(__('Home'), url('/'));

        $category = $post->categories()->first();

        $breadcrumb->add($category->name, $category->url);

        Theme::breadcrumb()->add($post->name, $post->url);
    }
}
```

### Using event

Add to `/platform/themes/your-theme/functions/functions.php`

```php

\Event::listen(\Botble\Theme\Events\RenderingSingleEvent::class, function (\Botble\Theme\Events\RenderingSingleEvent $event) {
    if ($event->slug->reference_type == \Botble\Blog\Models\Post::class) {
        $post = $event->slug->reference()->with('categories')->first();

        \Theme::breadcrumb()->crumbs = [];

        $breadcrumb = \Theme::breadcrumb()->add(__('Home'), url('/'));

        $category = $post->categories->first();

        $breadcrumb->add($category->name, $category->url);

        \Theme::breadcrumb()->add($post->name, $post->url);
    }
});
```

## How to add new language for admin panel?

Run command `php artisan cms:locale:create <locale>`

Ex: `php artisan cms:locale:create fr` then open folder `resources/lang/fr` to translate it to French.

## How to remove a language for admin panel?

Run command `php artisan cms:locale:remove <locale>`

Ex: `php artisan cms:locale:remove zh-CN`
