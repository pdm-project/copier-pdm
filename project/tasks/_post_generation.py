import json
import os
import subprocess
from pathlib import Path

PROJECT_ROOT = Path(__file__).absolute().parent.parent


def delete_myself() -> None:
    try:
        Path(__file__).unlink()
    except OSError:
        pass


def _get_packages_path() -> str:
    packages_path = (
        subprocess.check_output(["pdm", "info", "--packages"]).decode("utf-8").strip()
    )
    return Path(packages_path).relative_to(PROJECT_ROOT).as_posix()


def write_vscode_settings() -> None:
    packages_path = _get_packages_path()
    if os.name == "nt":
        pytest_path = "Scripts/pytest.exe"
    else:
        pytest_path = "bin/pytest"

    data = {
        "python.analysis.extraPaths": [f"{packages_path}/lib"],
        "python.autoComplete.extraPaths": [f"{packages_path}/lib"],
        "python.testing.pytestEnabled": True,
        "python.testing.pytestPath": f"{packages_path}/{pytest_path}",
        "python.testing.pytestArgs": ["tests/"],
    }

    settings = PROJECT_ROOT / ".vscode/settings.json"
    settings.parent.mkdir(exist_ok=True)
    settings.write_text(json.dumps(data, indent=4))


if __name__ == "__main__":
    write_vscode_settings()
    delete_myself()
