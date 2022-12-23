# stage_03
## Как работает мой код? (Привет, будущий я)
Не забыть создать fifo файлы.
```bash
mkfifo light_data
mkfifo sound_data
```

Для начала нужно запустить light_detect и sound_detect
```bash 
sudo ./sound_detect -q  > sound_data
sudo ./light_detect -q 1000 > light_data
```
, потом script.sh. Нужно посветить на фоторезистор скрипт выдаст "light detected", после чего будет ждать сигнала с датчика звука. После сигнала скрипт выдаст время и расстояние. Есть несущественная проблема, скрипт работает лишь до первого обнаружения, так как перестает работать light_detect либо light_data перестает получать данные.