import os, sys, webbrowser
def resource_path(name):
    root = getattr(sys, "_MEIPASS", os.path.dirname(os.path.abspath(__file__)))
    return os.path.join(root, name)
if __name__ == "__main__":
    page = resource_path("cam_nang_plc_mitsubishi_fx.html")
    if not os.path.exists(page): raise FileNotFoundError(page)
    webbrowser.open_new_tab("file://" + os.path.abspath(page).replace("\\", "/"))
