## Cel. 
Celem jest zapoznanie się z narzędziem Ansible

## Uruchomienie mastera i workerów

``` shell
docker compose up -d
```

![alt text](image.png)

## Wugenerowanie kluczy ssh

``` shell
ssh-keygen -t ed25519
```

## Aktualizacja kluczy publicznych na workerach

``` shell
echo <PUBLIC_KEY> >> /root/.ssh/authorized_keys
```

## Sprawdzanie połączenia ssh z workerem_1

![alt text](image-1.png)

## Sprawdzanie połączenia ssh z workerem_2

![alt text](image-2.png)

## Zainstalowanie ansbile na mastera za pomocą poleceń
```bash
apt update
apt install software-properties-common
add-apt-repository --yes --update ppa:ansible/ansible
apt install ansible
```

![alt text](image-3.png)

## Konfiguracja /etc/ansible/hosts i grupy workeres

![alt text](image-4.png)

## Napisanie playbooka

![alt text](image-5.png)

## Uruchomienie ansibla za pomocą polecenia
```bash
ansible-playbook -i /etc/ansible/hosts /etc/ansible/playbook.yml
```

![alt text](image-6.png)

## Sprawdzenia działania na workerze 1 nano

![alt text](image-7.png)

## Sprawdzenia działania na workerze 1 ifconfig

![alt text](image-8.png)

## Sprawdzenia działania na workerze 1 nano

![alt text](image-9.png)

## Sprawdzenia działania na workerze 1 ifconfig

![alt text](image-10.png)