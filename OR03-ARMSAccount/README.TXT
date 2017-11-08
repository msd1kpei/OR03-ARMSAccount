***********************************************
1 Juni 2015
Version 1.9 By Deddy Nugraha

Perubahan pada :
1. Binding Properti pada AccountToARMS-JMS:
    - singleton = true
2. Binding Properti pada ARMSAccountDB:
    - jca.retry.interva = 1
    - jca.retry.backoff = 2
    - jca.retry.maxInterval = 120
    - jca.retry.count = 1
3. Add block CatchAll di CallAccountToARMS.
***********************************************

7 Maret 2016
Hapus JMS Queue:
- jms/middleware/outbound/ARMSAccountQueue
- jms/eclears/eCLEARSAccountResponseQueue
- eis/jms/eclearsAccountResponse