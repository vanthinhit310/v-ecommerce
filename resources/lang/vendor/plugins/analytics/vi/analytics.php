<?php

return [
    'avg_duration'                       => 'Trung bình',
    'bounce_rate'                        => 'Tỉ lệ thoát',
    'page_session'                       => 'Trang/Phiên',
    'pageviews'                          => 'Lượt xem',
    'sessions'                           => 'Phiên',
    'views'                              => 'lượt xem',
    'visitors'                           => 'Người truy cập',
    'visits'                             => 'lượt ghé thăm',
    'credential_is_not_valid'            => 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href="https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics" target="_blank">https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics</a>',
    'new_users'                          => 'Lượt khách mới',
    'percent_new_session'                => 'Tỉ lệ khách mới',
    'start_date_can_not_before_end_date' => 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date',
    'view_id_not_specified'              => 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href="https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics" target="_blank">https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics</a>',
    'wrong_configuration'                => 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href="https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics" target="_blank">https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics</a>',

    'settings' => [
        'title'                       => 'Google Analytics',
        'description'                 => 'Config Credentials for Google Analytics',
        'tracking_code'               => 'Tracking Code',
        'tracking_code_placeholder'   => 'Example: GA-12586526-8',
        'view_id'                     => 'View ID',
        'view_id_description'         => 'Google Analytics View ID',
        'json_credential'             => 'Service Account Credentials',
        'json_credential_description' => 'Service Account Credentials',
    ],

    'widget_analytics_browser'  => 'Trình duyệt truy cập nhiều',
    'widget_analytics_general'  => 'Thống kê truy cập',
    'widget_analytics_page'     => 'Trang được xem nhiều nhất',
    'widget_analytics_referrer' => 'Trang giới thiệu nhiều',
];