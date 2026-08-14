#[cfg_attr(mobile, tauri::mobile_entry_point)]
pub fn run() {
    tauri_icloud_base::run(
        tauri_icloud_base::IcloudAppConfig {
            app_name: "Apple Music",
            url: "https://music.apple.com",
            remove_toolbar: true,
        },
        tauri::generate_context!(),
    );
}
