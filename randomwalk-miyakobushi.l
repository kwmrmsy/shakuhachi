;; oto
;; 0:otu ro meri
;; 1:otu ro
;; 2:otu tu meri
;; 3:otu tu chumeri
;; 4:otu tu
;; 5:otu re chumeri
;; 6:otu re
;; 7:otu ti meri
;; 8:otu ti
;; 9:otu ri meri
;; 10:otu ri chumeri
;; 11:otu ri

;; 12:kan ro meri
;; 13:kan ro
;; 14:kan tu meri
;; 15:kan tu chumeri
;; 16:kan tu
;; 17:kan re chumeri
;; 18:kan re
;; 19:kan ti meri
;; 20:kan ti
;; 21:kan hi meri
;; 22:kan hi chumeri
;; 23:kan hi

;; 24:kan akehi chumeri
;; 25:kan hanogo
;; 26:kan hanosan
;; 27:kan hanoyon

;;chou
;;0:ro
;;1:ri
;;2:ti
;;3:re
;;4:tu chumeri

(defun set-next-oto (x) x)

(defun one-scale-down (chou present-oto walk-roulette tenchou-flg)
  (cond ((= chou 0)
         (cond ((= present-oto 1) (set-next-oto 2))
               ((= present-oto 2) (set-next-oto 1))
               ((= present-oto 6) (set-next-oto 2))
               ((= present-oto 8) (set-next-oto 6))
               ((= present-oto 9) (set-next-oto 8))
               ((= present-oto 11) (set-next-oto 13)) ;; ascending-u
               ((= present-oto 13) (set-next-oto 9))
               ((= present-oto 14) (set-next-oto 13))
               ((= present-oto 18) (set-next-oto 14))
               ((= present-oto 20) (set-next-oto 18))
               ((= present-oto 21) (set-next-oto 20))
               ((= present-oto 23) (set-next-oto 25)) ;; ascending-u
               ((= present-oto 25) (set-next-oto 21))
               ((= present-oto 26) (set-next-oto 25))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 1)
         (cond ((= present-oto 0) (set-next-oto 4))
               ((= present-oto 4) (set-next-oto 0))
               ((= present-oto 6) (set-next-oto 4))
               ((= present-oto 7) (set-next-oto 6))
               ((= present-oto 9) (set-next-oto 11)) ;; ascending-u
               ((= present-oto 11) (set-next-oto 7))
               ((= present-oto 12) (set-next-oto 11))
               ((= present-oto 16) (set-next-oto 12))
               ((= present-oto 18) (set-next-oto 16))
               ((= present-oto 19) (set-next-oto 18))
               ((= present-oto 21) (set-next-oto 23)) ;; ascending-u
               ((= present-oto 23) (set-next-oto 19))
               ((= present-oto 24) (set-next-oto 23))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 2)
         (cond ((= present-oto 1) (set-next-oto 3))
               ((= present-oto 3) (set-next-oto 1))
               ((= present-oto 4) (set-next-oto 3))
               ((= present-oto 6) (set-next-oto 8)) ;; ascending-u
               ((= present-oto 8) (set-next-oto 4))
               ((= present-oto 9) (set-next-oto 8))
               ((= present-oto 13) (set-next-oto 9))
               ((= present-oto 15) (set-next-oto 13))
               ((= present-oto 16) (set-next-oto 15))
               ((= present-oto 18) (set-next-oto 20)) ;; ascending-u
               ((= present-oto 20) (set-next-oto 16))
               ((= present-oto 21) (set-next-oto 20))
               ((= present-oto 25) (set-next-oto 21))
               ((= present-oto 27) (set-next-oto 25))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 3)
         (cond ((= present-oto 1) (set-next-oto 2))
               ((= present-oto 2) (set-next-oto 1))
               ((= present-oto 4) (set-next-oto 6)) ;; ascending-u
               ((= present-oto 6) (set-next-oto 2))
               ((= present-oto 7) (set-next-oto 6))
               ((= present-oto 11) (set-next-oto 7))
               ((= present-oto 13) (set-next-oto 11))
               ((= present-oto 14) (set-next-oto 13))
               ((= present-oto 16) (set-next-oto 18)) ;; ascending-u
               ((= present-oto 18) (set-next-oto 14))
               ((= present-oto 19) (set-next-oto 18))
               ((= present-oto 23) (set-next-oto 19))
               ((= present-oto 25) (set-next-oto 23))
               ((= present-oto 26) (set-next-oto 25))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 4)
         (cond ((= present-oto 3) (set-next-oto 4))
               ((= present-oto 4) (set-next-oto 3))
               ((= present-oto 8) (set-next-oto 4))
               ((= present-oto 10) (set-next-oto 8))
               ((= present-oto 11) (set-next-oto 10))
               ((= present-oto 13) (set-next-oto 15)) ;; ascending-u
               ((= present-oto 15) (set-next-oto 11))
               ((= present-oto 16) (set-next-oto 15))
               ((= present-oto 20) (set-next-oto 16))
               ((= present-oto 22) (set-next-oto 20))
               ((= present-oto 23) (set-next-oto 22))
               ((= present-oto 25) (set-next-oto 27)) ;; ascending-u
               ((= present-oto 27) (set-next-oto 23))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ) ;; cond chou
  )

(defun two-scale-down (chou present-oto walk-roulette tenchou-flg)
  (cond ((= chou 0)
         (cond ((= present-oto 1) (set-next-oto 6))
               ((= present-oto 2) (set-next-oto 1))
               ((= present-oto 6) (set-next-oto 1))
               ((= present-oto 8) (set-next-oto 6))
               ((= present-oto 9) (set-next-oto 8))
               ((= present-oto 11) (set-next-oto 13)) ;; ascending-u
               ((= present-oto 13) (set-next-oto 8))
               ((= present-oto 14) (set-next-oto 13))
               ((= present-oto 18) (set-next-oto 13))
               ((= present-oto 20) (set-next-oto 18))
               ((= present-oto 21) (set-next-oto 20))
               ((= present-oto 23) (set-next-oto 25)) ;; ascending-u
               ((= present-oto 25) (set-next-oto 20))
               ((= present-oto 26) (set-next-oto 25))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 1)
         (cond ((= present-oto 0) (set-next-oto 4))
               ((= present-oto 4) (set-next-oto 0))
               ((= present-oto 6) (set-next-oto 4))
               ((= present-oto 7) (set-next-oto 6))
               ((= present-oto 9) (set-next-oto 11)) ;; ascending-u
               ((= present-oto 11) (set-next-oto 6))
               ((= present-oto 12) (set-next-oto 11))
               ((= present-oto 16) (set-next-oto 11))
               ((= present-oto 18) (set-next-oto 16))
               ((= present-oto 19) (set-next-oto 18))
               ((= present-oto 21) (set-next-oto 23)) ;; ascending-u
               ((= present-oto 23) (set-next-oto 18))
               ((= present-oto 24) (set-next-oto 23))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 2)
         (cond ((= present-oto 1) (set-next-oto 3))
               ((= present-oto 3) (set-next-oto 1))
               ((= present-oto 4) (set-next-oto 3))
               ((= present-oto 6) (set-next-oto 8)) ;; ascending-u
               ((= present-oto 8) (set-next-oto 3))
               ((= present-oto 9) (set-next-oto 8))
               ((= present-oto 13) (set-next-oto 8))
               ((= present-oto 15) (set-next-oto 13))
               ((= present-oto 16) (set-next-oto 15))
               ((= present-oto 18) (set-next-oto 20)) ;; ascending-u
               ((= present-oto 20) (set-next-oto 15))
               ((= present-oto 21) (set-next-oto 20))
               ((= present-oto 25) (set-next-oto 20))
               ((= present-oto 27) (set-next-oto 25))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 3)
         (cond ((= present-oto 1) (set-next-oto 2))
               ((= present-oto 2) (set-next-oto 1))
               ((= present-oto 4) (set-next-oto 6)) ;; ascending-u
               ((= present-oto 6) (set-next-oto 1))
               ((= present-oto 7) (set-next-oto 6))
               ((= present-oto 11) (set-next-oto 6))
               ((= present-oto 13) (set-next-oto 11))
               ((= present-oto 14) (set-next-oto 13))
               ((= present-oto 16) (set-next-oto 18)) ;; ascending-u
               ((= present-oto 18) (set-next-oto 13))
               ((= present-oto 19) (set-next-oto 18))
               ((= present-oto 23) (set-next-oto 18))
               ((= present-oto 25) (set-next-oto 23))
               ((= present-oto 26) (set-next-oto 25))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 4)
         (cond ((= present-oto 3) (set-next-oto 4))
               ((= present-oto 4) (set-next-oto 3))
               ((= present-oto 8) (set-next-oto 3))
               ((= present-oto 10) (set-next-oto 8))
               ((= present-oto 11) (set-next-oto 10))
               ((= present-oto 13) (set-next-oto 15)) ;; ascending-u
               ((= present-oto 15) (set-next-oto 10))
               ((= present-oto 16) (set-next-oto 15))
               ((= present-oto 20) (set-next-oto 15))
               ((= present-oto 22) (set-next-oto 20))
               ((= present-oto 23) (set-next-oto 22))
               ((= present-oto 25) (set-next-oto 27)) ;; ascending-u
               ((= present-oto 27) (set-next-oto 22))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ) ;; cond chou

  )

(defun one-scale-up (chou present-oto walk-roulette tenchou-flg)
  (cond ((= chou 0)
         (cond ((= present-oto 1) (set-next-oto 2))
               ((= present-oto 2) (set-next-oto 6))
               ((= present-oto 6) (set-next-oto 8))
               ((= present-oto 8) (set-next-oto 9))
               ((= present-oto 9) (set-next-oto 13))
               ((= present-oto 11) (set-next-oto 13)) ;; ascending-u
               ((= present-oto 13) (set-next-oto 14))
               ((= present-oto 14) (set-next-oto 18))
               ((= present-oto 18) (set-next-oto 20))
               ((= present-oto 20) (set-next-oto 21))
               ((= present-oto 21) (set-next-oto 25))
               ((= present-oto 23) (set-next-oto 25)) ;; ascending-u
               ((= present-oto 25) (set-next-oto 26))
               ((= present-oto 26) (set-next-oto 25))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 1)
         (cond ((= present-oto 0) (set-next-oto 4))
               ((= present-oto 4) (set-next-oto 6))
               ((= present-oto 6) (set-next-oto 7))
               ((= present-oto 7) (set-next-oto 11))
               ((= present-oto 9) (set-next-oto 11)) ;; ascending-u
               ((= present-oto 11) (set-next-oto 12))
               ((= present-oto 12) (set-next-oto 16))
               ((= present-oto 16) (set-next-oto 18))
               ((= present-oto 18) (set-next-oto 19))
               ((= present-oto 19) (set-next-oto 23))
               ((= present-oto 21) (set-next-oto 23)) ;; ascending-u
               ((= present-oto 23) (set-next-oto 24))
               ((= present-oto 24) (set-next-oto 23))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 2)
         (cond ((= present-oto 1) (set-next-oto 3))
               ((= present-oto 3) (set-next-oto 4))
               ((= present-oto 4) (set-next-oto 8))
               ((= present-oto 6) (set-next-oto 8)) ;; ascending-u
               ((= present-oto 8) (set-next-oto 9))
               ((= present-oto 9) (set-next-oto 13))
               ((= present-oto 13) (set-next-oto 15))
               ((= present-oto 15) (set-next-oto 16))
               ((= present-oto 16) (set-next-oto 20))
               ((= present-oto 18) (set-next-oto 20)) ;; ascending-u
               ((= present-oto 20) (set-next-oto 21))
               ((= present-oto 21) (set-next-oto 25))
               ((= present-oto 25) (set-next-oto 27))
               ((= present-oto 27) (set-next-oto 25))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 3)
         (cond ((= present-oto 1) (set-next-oto 2))
               ((= present-oto 2) (set-next-oto 6))
               ((= present-oto 4) (set-next-oto 6)) ;; ascending-u
               ((= present-oto 6) (set-next-oto 7))
               ((= present-oto 7) (set-next-oto 11))
               ((= present-oto 11) (set-next-oto 13))
               ((= present-oto 13) (set-next-oto 14))
               ((= present-oto 14) (set-next-oto 18))
               ((= present-oto 16) (set-next-oto 18)) ;; ascending-u
               ((= present-oto 18) (set-next-oto 19))
               ((= present-oto 19) (set-next-oto 23))
               ((= present-oto 23) (set-next-oto 25))
               ((= present-oto 25) (set-next-oto 26))
               ((= present-oto 26) (set-next-oto 25))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 4)
         (cond ((= present-oto 3) (set-next-oto 4))
               ((= present-oto 4) (set-next-oto 8))
               ((= present-oto 8) (set-next-oto 10))
               ((= present-oto 10) (set-next-oto 11))
               ((= present-oto 11) (set-next-oto 15))
               ((= present-oto 13) (set-next-oto 15)) ;; ascending-u
               ((= present-oto 15) (set-next-oto 16))
               ((= present-oto 16) (set-next-oto 20))
               ((= present-oto 20) (set-next-oto 22))
               ((= present-oto 22) (set-next-oto 23))
               ((= present-oto 23) (set-next-oto 27))
               ((= present-oto 25) (set-next-oto 27)) ;; ascending-u
               ((= present-oto 27) (set-next-oto 23))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ) ;; cond chou
  )

(defun two-scale-up (chou present-oto walk-roulette tenchou-flg)
  (cond ((= chou 0)
         (cond ((= present-oto 1) (set-next-oto 6))
               ((= present-oto 2) (set-next-oto 6))
               ((= present-oto 6) (set-next-oto 8))
               ((= present-oto 8) (set-next-oto 13))
               ((= present-oto 9) (set-next-oto 13))
               ((= present-oto 11) (set-next-oto 13)) ;; ascending-u
               ((= present-oto 13) (set-next-oto 18))
               ((= present-oto 14) (set-next-oto 18))
               ((= present-oto 18) (set-next-oto 20))
               ((= present-oto 20) (set-next-oto 25))
               ((= present-oto 21) (set-next-oto 25))
               ((= present-oto 23) (set-next-oto 25)) ;; ascending-u
               ((= present-oto 25) (set-next-oto 26))
               ((= present-oto 26) (set-next-oto 25))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 1)
         (cond ((= present-oto 0) (set-next-oto 4))
               ((= present-oto 4) (set-next-oto 6))
               ((= present-oto 6) (set-next-oto 11))
               ((= present-oto 7) (set-next-oto 11))
               ((= present-oto 9) (set-next-oto 11)) ;; ascending-u
               ((= present-oto 11) (set-next-oto 16))
               ((= present-oto 12) (set-next-oto 16))
               ((= present-oto 16) (set-next-oto 18))
               ((= present-oto 18) (set-next-oto 23))
               ((= present-oto 19) (set-next-oto 23))
               ((= present-oto 21) (set-next-oto 23)) ;; ascending-u
               ((= present-oto 23) (set-next-oto 24))
               ((= present-oto 24) (set-next-oto 23))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 2)
         (cond ((= present-oto 1) (set-next-oto 3))
               ((= present-oto 3) (set-next-oto 8))
               ((= present-oto 4) (set-next-oto 8))
               ((= present-oto 6) (set-next-oto 8)) ;; ascending-u
               ((= present-oto 8) (set-next-oto 13))
               ((= present-oto 9) (set-next-oto 13))
               ((= present-oto 13) (set-next-oto 15))
               ((= present-oto 15) (set-next-oto 20))
               ((= present-oto 16) (set-next-oto 20))
               ((= present-oto 18) (set-next-oto 20)) ;; ascending-u
               ((= present-oto 20) (set-next-oto 25))
               ((= present-oto 21) (set-next-oto 25))
               ((= present-oto 25) (set-next-oto 27))
               ((= present-oto 27) (set-next-oto 25))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 3)
         (cond ((= present-oto 1) (set-next-oto 6))
               ((= present-oto 2) (set-next-oto 6))
               ((= present-oto 4) (set-next-oto 6)) ;; ascending-u
               ((= present-oto 6) (set-next-oto 11))
               ((= present-oto 7) (set-next-oto 11))
               ((= present-oto 11) (set-next-oto 13))
               ((= present-oto 13) (set-next-oto 18))
               ((= present-oto 14) (set-next-oto 18))
               ((= present-oto 16) (set-next-oto 18)) ;; ascending-u
               ((= present-oto 18) (set-next-oto 23))
               ((= present-oto 19) (set-next-oto 23))
               ((= present-oto 23) (set-next-oto 25))
               ((= present-oto 25) (set-next-oto 26))
               ((= present-oto 26) (set-next-oto 25))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ((= chou 4)
         (cond ((= present-oto 3) (set-next-oto 8))
               ((= present-oto 4) (set-next-oto 8))
               ((= present-oto 8) (set-next-oto 10))
               ((= present-oto 10) (set-next-oto 15))
               ((= present-oto 11) (set-next-oto 15))
               ((= present-oto 13) (set-next-oto 15)) ;; ascending-u
               ((= present-oto 15) (set-next-oto 20))
               ((= present-oto 16) (set-next-oto 20))
               ((= present-oto 20) (set-next-oto 22))
               ((= present-oto 22) (set-next-oto 27))
               ((= present-oto 23) (set-next-oto 27))
               ((= present-oto 25) (set-next-oto 27)) ;; ascending-u
               ((= present-oto 27) (set-next-oto 22))
               (t (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg) (set-next-oto (random 27)))
               ))
        ) ;; cond chou
  )

(defun ascend-to-u (chou present-oto walk-roulette tenchou-flg ascending-u)
  (let ((r (random 100)))
    (if (null ascending-u) (one-scale-up chou present-oto walk-roulette tenchou-flg)
      (cond
       ((= chou 0)
        (cond ((and (= present-oto 6) (>= r 0) (< r 100)) (set-next-oto 11))
              ((and (= present-oto 8) (>= r 0) (< r 100)) (set-next-oto 11))
              ((and (= present-oto 9) (>= r 0) (< r 100)) (set-next-oto 11))
              ((and (= present-oto 18) (>= r 0) (< r 30)) (set-next-oto 23))
              ((and (= present-oto 20) (>= r 0) (< r 30)) (set-next-oto 23))
              ((and (= present-oto 21) (>= r 0) (< r 30)) (set-next-oto 23))
              (t (one-scale-up chou present-oto walk-roulette tenchou-flg))
              )
        )
       ((= chou 1)
        (cond ((and (= present-oto 4) (>= r 0) (< r 100)) (set-next-oto 9))
              ((and (= present-oto 6) (>= r 0) (< r 100)) (set-next-oto 9))
              ((and (= present-oto 7) (>= r 0) (< r 100)) (set-next-oto 9))
              ((and (= present-oto 16) (>= r 0) (< r 50)) (set-next-oto 21))
              ((and (= present-oto 18) (>= r 0) (< r 50)) (set-next-oto 21))
              ((and (= present-oto 19) (>= r 0) (< r 50)) (set-next-oto 21))
              (t (one-scale-up chou present-oto walk-roulette tenchou-flg))
              )
        )
       ((= chou 2)
        (cond ((and (= present-oto 1) (>= r 0) (< r 100)) (set-next-oto 6))
              ((and (= present-oto 3) (>= r 0) (< r 100)) (set-next-oto 6))
              ((and (= present-oto 4) (>= r 0) (< r 100)) (set-next-oto 6))
              ((and (= present-oto 13) (>= r 0) (< r 80)) (set-next-oto 18))
              ((and (= present-oto 15) (>= r 0) (< r 80)) (set-next-oto 18))
              ((and (= present-oto 16) (>= r 0) (< r 50)) (set-next-oto 18))
              (t (one-scale-up chou present-oto walk-roulette tenchou-flg))
              )
        )
       ((= chou 3)
        (cond ((and (= present-oto 1) (>= r 0) (< r 100)) (set-next-oto 4))
              ((and (= present-oto 2) (>= r 0) (< r 100)) (set-next-oto 4))
              ((and (= present-oto 11) (>= r 0) (< r 100)) (set-next-oto 16))
              ((and (= present-oto 13) (>= r 0) (< r 100)) (set-next-oto 16))
              ((and (= present-oto 14) (>= r 0) (< r 100)) (set-next-oto 16))
              (t (one-scale-up chou present-oto walk-roulette tenchou-flg))
              )
        )
       ((= chou 4)
        (cond ((and (= present-oto 8) (>= r 0) (< r 100)) (set-next-oto 13))
              ((and (= present-oto 10) (>= r 0) (< r 100)) (set-next-oto 13))
              ((and (= present-oto 11) (>= r 0) (< r 100)) (set-next-oto 13))
              ((and (= present-oto 20) (>= r 0) (< r 20)) (set-next-oto 25))
              ((and (= present-oto 22) (>= r 0) (< r 20)) (set-next-oto 25))
              ((and (= present-oto 23) (>= r 0) (< r 20)) (set-next-oto 25))
              (t (one-scale-up chou present-oto walk-roulette tenchou-flg))
              )
        )
       ) ;; cond chou
      ) ;; if
    ) ;; let
  )

(warn "(randomwalk-shaku maxstep :randomtone-probability 0-100 :meriprint t ascending-u t)~%")
(defun randomwalk-shaku (maxstep &key (randomtone-probability 0) (meriprint t) (ascending-u t))
  (let ((chou 3)  ;; 0:ro 1:ri 2:chi 3:re 4:tu
        (step 0)
        (present-oto 0)
        (next-oto 0)
        (i 0)
        (oto-list (list 18))
        (chou-list (list 3))
        (tenchou-flg 0)
        (walk-roulette 0))

    (setq present-oto (car oto-list))

    (dotimes (step maxstep)
      ;; decide changing chou or not
      (setq tenchou-flg (random 15))
      (cond ((or (= present-oto 1) (= present-oto 13) (= present-oto 25)) ;; ro
             (cond ((= tenchou-flg 0)
                    (cond ((= chou 0) (setq chou 2))
                          ((= chou 2) (setq chou 0))
                          ((= chou 3) (setq chou 0))))
                   ((= tenchou-flg 1)
                    (cond ((= chou 0) (setq chou 3))
                          ((= chou 2) (setq chou 3))
                          ((= chou 3) (setq chou 2))))))
            ((or (= present-oto 6) (= present-oto 18)) ;; re
             (cond ((= tenchou-flg 0)
                    (cond ((= chou 0) (setq chou 1))
                          ((= chou 1) (setq chou 0))
                          ((= chou 3) (setq chou 0))))
                   ((= tenchou-flg 1)
                    (cond ((= chou 0) (setq chou 3))
                          ((= chou 1) (setq chou 3))
                          ((= chou 3) (setq chou 1))))))
            ((or (= present-oto 8) (= present-oto 20)) ;; ti
             (cond ((= tenchou-flg 0)
                    (cond ((= chou 0) (setq chou 2))
                          ((= chou 2) (setq chou 0))
                          ((= chou 4) (setq chou 0))))
                   ((= tenchou-flg 1)
                    (cond ((= chou 0) (setq chou 4))
                          ((= chou 2) (setq chou 4))
                          ((= chou 4) (setq chou 2))))))
            ((or (= present-oto 2) (= present-oto 14) (= present-oto 26)) ;; tu meri
             (when (= tenchou-flg 0)
               (cond ((= chou 0) (setq chou 3))
                     ((= chou 3) (setq chou 0)))))
            ((or (= present-oto 9) (= present-oto 21)) ;; ri meri
             (when (= tenchou-flg 0)
               (cond ((= chou 0) (setq chou 2))
                     ((= chou 2) (setq chou 0)))))
            ((or (= present-oto 11) (= present-oto 23)) ;; ri
             (when (= tenchou-flg 0)
               (cond ((= chou 1) (setq chou 3))
                     ((= chou 3) (setq chou 1)))))
            ((or (= present-oto 7) (= present-oto 19)) ;; ti meri
             (when (= tenchou-flg 0)
               (cond ((= chou 1) (setq chou 3))
                     ((= chou 3) (setq chou 1)))))
            ((or (= present-oto 3) (= present-oto 15)) ;; tu chumeri
             (when (= tenchou-flg 0)
               (cond ((= chou 2) (setq chou 4))
                     ((= chou 4) (setq chou 2)))))
            ((or (= present-oto 4) (= present-oto 16)) ;; re meri
             (when (= tenchou-flg 0)
               (cond ((= chou 2) (setq chou 4))
                     ((= chou 4) (setq chou 2)))))
            ) ;; cond of tenchou
      (setq chou-list (append chou-list (list chou)))

      ;; random walk
      (setq walk-roulette (random 100))

      (if (and (>= walk-roulette 0) (< walk-roulette randomtone-probability))
          (progn (setq next-oto (random 27)) (format t "random-tone:~A. step:~A~%" next-oto step))
        (progn
          (setq walk-roulette (random 100))
          (cond
           ((and (>= walk-roulette 0) (< walk-roulette 43)) ;; one scale down
            (setq next-oto (one-scale-down chou present-oto walk-roulette tenchou-flg))
            )
           ((and (>= walk-roulette 43) (< walk-roulette 50)) ;; two scales down (only 5 halftone)
            (setq next-oto (two-scale-down chou present-oto walk-roulette tenchou-flg))
            )
           ((and (>= walk-roulette 50) (< walk-roulette 85)) ;; one scale up
            (setq next-oto (one-scale-up chou present-oto walk-roulette tenchou-flg))
            )
           ((and (>= walk-roulette 85) (< walk-roulette 90)) ;; two scales up (only 5 halftone)
            (setq next-oto (two-scale-up chou present-oto walk-roulette tenchou-flg))
            )
           ((and (>= walk-roulette 90) (< walk-roulette 100)) ;; ascend to u
            (setq next-oto (ascend-to-u chou present-oto walk-roulette tenchou-flg ascending-u))
            )
           ) ;; cond walk-roulette
          ) ;; progn
        ) ;; if randomtone or not
      (setq oto-list (append oto-list (list next-oto)))
      (setq present-oto next-oto)

      ) ;;dotimes

    ;;print
    (print oto-list)
    (print chou-list)

    (dotimes (i maxstep)
      (cond
       ((= (elt oto-list i) 0) (warn "oロm　"))
       ((= (elt oto-list i) 1) (warn "oロ　"))
       ((= (elt oto-list i) 2) (warn "oツm　"))
       ((= (elt oto-list i) 3) (warn "oツc　"))
       ((= (elt oto-list i) 4) (if (and meriprint (or (= (elt chou-list i) 2) (= (elt chou-list i) 4)))
                                   (warn "oレm　")
                                 (warn "oツ　")
                                 ))
       ((= (elt oto-list i) 5) (warn "oレc　"))
       ((= (elt oto-list i) 6) (warn "oレ　"))
       ((= (elt oto-list i) 7) (warn "oチm　"))
       ((= (elt oto-list i) 8) (warn "oチ　"))
       ((= (elt oto-list i) 9) (warn "oリm　"))
       ((= (elt oto-list i) 10) (warn "oリc　"))
       ((= (elt oto-list i) 11) (if (and meriprint (= (elt chou-list i) 4))
                                    (warn "oヒ5m　")
                                  (warn "oリ　")))
       ((= (elt oto-list i) 12) (warn "kロm　"))
       ((= (elt oto-list i) 13) (warn "kロ　"))
       ((= (elt oto-list i) 14) (warn "kツm　"))
       ((= (elt oto-list i) 15) (warn "kツc　"))
       ((= (elt oto-list i) 16) (if (and meriprint (or (= (elt chou-list i) 2) (= (elt chou-list i) 4)))
                                    (warn "kレm　")
                                  (warn "kツ　")))
       ((= (elt oto-list i) 17) (warn "kレc　"))
       ((= (elt oto-list i) 18) (warn "kレ　"))
       ((= (elt oto-list i) 19) (warn "kチm　"))
       ((= (elt oto-list i) 20) (warn "kチ　"))
       ((= (elt oto-list i) 21) (warn "kヒm　"))
       ((= (elt oto-list i) 22) (warn "kヒc　"))
       ((= (elt oto-list i) 23) (if (and meriprint (= (elt chou-list i) 4))
                                    (warn "kヒ5m　")
                                  (warn "kヒ　")))
       ((= (elt oto-list i) 24) (warn "kヒ5c　"))
       ((= (elt oto-list i) 25) (warn "kハ5　"))
       ((= (elt oto-list i) 26) (warn "kハ3　"))
       ((= (elt oto-list i) 27) (warn "kハ4　"))
       ))
      ) ;;let
    );;defun
