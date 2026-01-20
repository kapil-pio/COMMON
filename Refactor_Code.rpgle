Scenario:
Legacy fixed-format code requiring modernization


C     ORDNO         CHAIN     ORDHDR                        90
C                   IF        *IN90 = *OFF
C                   ADD       ORDAMT        TOTAL
C                   IF        TOTAL > 10000
C                   MOVE      'Y'           VIPORD
C                   ELSE
C                   MOVE      'N'           VIPORD
C                   ENDIF
C                   UPDATE    ORDHDR
C                   ENDIF
C                   CLEAR     TOTAL
C                   Z-ADD     0             ORDAMT
C                   MOVE      *BLANKS       CUSTMSG
C                   IF        VIPORD = 'Y'
C                   MOVE      'VIP ORDER'   CUSTMSG
C                   ENDIF
