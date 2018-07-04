# ansible-repo
> ansible-repo for testing

To test first fire up the vagrant box
```bash
make setup
```
Then apply vagrant_test playbook

```bash
ansible-playbook vagrant_test.yml
```
or
```bash
make check
```

Cleanup environment
```bash
make Cleanup
```
