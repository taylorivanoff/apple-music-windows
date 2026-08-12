#[cfg_attr(mobile, tauri::mobile_entry_point)]
pub fn run() {
    tauri_icloud_base::run(
        tauri_icloud_base::IcloudAppConfig {
            app_name: "Apple Music",
            url: "https://music.apple.com",
            remove_toolbar: false,
        },
        tauri::generate_context!(),
    );
}
