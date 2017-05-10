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

(warn "(randomwalk-shaku maxstep)~%")
(defun randomwalk-shaku (maxstep)
  (let ((chou 0)  ;; 0:ro 1:ri 2:chi 3:re 4:tu
        (step 0)
        (present-oto 0)
        (next-oto 0)
        (i 0)
        (oto-list (list 18))
        (chou-list (list 0))
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
      (setq walk-roulette (random 21))
      (cond
       ((= walk-roulette 0)
        (setq next-oto (random 27))
        (format t "random oto. step:~A~%" step)
        )
       ((and (>= walk-roulette 1) (<= walk-roulette 10))
        (cond ((= chou 0)
               (cond ((= present-oto 1) (setq next-oto 2))
                     ((= present-oto 2) (setq next-oto 1))
                     ((= present-oto 6) (setq next-oto 2))
                     ((= present-oto 8) (setq next-oto 6))
                     ((= present-oto 9) (setq next-oto 8))
                     ((= present-oto 13) (setq next-oto 9))
                     ((= present-oto 14) (setq next-oto 13))
                     ((= present-oto 18) (setq next-oto 14))
                     ((= present-oto 20) (setq next-oto 18))
                     ((= present-oto 21) (setq next-oto 20))
                     ((= present-oto 25) (setq next-oto 21))
                     ((= present-oto 26) (setq next-oto 25))
                     (t (setq next-oto (random 27)) (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg))
                     ))
              ((= chou 1)
               (cond ((= present-oto 0) (setq next-oto 4))
                     ((= present-oto 4) (setq next-oto 0))
                     ((= present-oto 6) (setq next-oto 4))
                     ((= present-oto 7) (setq next-oto 6))
                     ((= present-oto 11) (setq next-oto 7))
                     ((= present-oto 12) (setq next-oto 11))
                     ((= present-oto 16) (setq next-oto 12))
                     ((= present-oto 18) (setq next-oto 16))
                     ((= present-oto 19) (setq next-oto 18))
                     ((= present-oto 23) (setq next-oto 19))
                     ((= present-oto 24) (setq next-oto 23))
                     (t (setq next-oto (random 27)) (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg))
                     ))
              ((= chou 2)
               (cond ((= present-oto 1) (setq next-oto 3))
                     ((= present-oto 3) (setq next-oto 1))
                     ((= present-oto 4) (setq next-oto 3))
                     ((= present-oto 8) (setq next-oto 4))
                     ((= present-oto 9) (setq next-oto 8))
                     ((= present-oto 13) (setq next-oto 9))
                     ((= present-oto 15) (setq next-oto 13))
                     ((= present-oto 16) (setq next-oto 15))
                     ((= present-oto 20) (setq next-oto 16))
                     ((= present-oto 21) (setq next-oto 20))
                     ((= present-oto 25) (setq next-oto 21))
                     ((= present-oto 27) (setq next-oto 25))
                     (t (setq next-oto (random 27)) (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg))
                     ))
              ((= chou 3)
               (cond ((= present-oto 1) (setq next-oto 2))
                     ((= present-oto 2) (setq next-oto 1))
                     ((= present-oto 6) (setq next-oto 2))
                     ((= present-oto 7) (setq next-oto 6))
                     ((= present-oto 11) (setq next-oto 7))
                     ((= present-oto 13) (setq next-oto 11))
                     ((= present-oto 14) (setq next-oto 13))
                     ((= present-oto 18) (setq next-oto 14))
                     ((= present-oto 19) (setq next-oto 18))
                     ((= present-oto 23) (setq next-oto 19))
                     ((= present-oto 25) (setq next-oto 23))
                     ((= present-oto 26) (setq next-oto 25))
                     (t (setq next-oto (random 27)) (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg))
                     ))
              ((= chou 4)
               (cond ((= present-oto 3) (setq next-oto 4))
                     ((= present-oto 4) (setq next-oto 3))
                     ((= present-oto 8) (setq next-oto 4))
                     ((= present-oto 10) (setq next-oto 8))
                     ((= present-oto 11) (setq next-oto 10))
                     ((= present-oto 15) (setq next-oto 11))
                     ((= present-oto 16) (setq next-oto 15))
                     ((= present-oto 20) (setq next-oto 16))
                     ((= present-oto 22) (setq next-oto 20))
                     ((= present-oto 23) (setq next-oto 22))
                     ((= present-oto 27) (setq next-oto 23))
                     (t (setq next-oto (random 27)) (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg))
                     ))
              ) ;; cond chou
        )
       ((and (>= walk-roulette 10) (<= walk-roulette 20))
        (cond ((= chou 0)
               (cond ((= present-oto 1) (setq next-oto 2))
                     ((= present-oto 2) (setq next-oto 6))
                     ((= present-oto 6) (setq next-oto 8))
                     ((= present-oto 8) (setq next-oto 9))
                     ((= present-oto 9) (setq next-oto 13))
                     ((= present-oto 13) (setq next-oto 14))
                     ((= present-oto 14) (setq next-oto 18))
                     ((= present-oto 18) (setq next-oto 20))
                     ((= present-oto 20) (setq next-oto 21))
                     ((= present-oto 21) (setq next-oto 25))
                     ((= present-oto 25) (setq next-oto 26))
                     ((= present-oto 26) (setq next-oto 25))
                     (t (setq next-oto (random 27)) (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg))
                     ))
              ((= chou 1)
               (cond ((= present-oto 0) (setq next-oto 4))
                     ((= present-oto 4) (setq next-oto 6))
                     ((= present-oto 6) (setq next-oto 7))
                     ((= present-oto 7) (setq next-oto 11))
                     ((= present-oto 11) (setq next-oto 12))
                     ((= present-oto 12) (setq next-oto 16))
                     ((= present-oto 16) (setq next-oto 18))
                     ((= present-oto 18) (setq next-oto 19))
                     ((= present-oto 19) (setq next-oto 23))
                     ((= present-oto 23) (setq next-oto 24))
                     ((= present-oto 24) (setq next-oto 23))
                     (t (setq next-oto (random 27)) (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg))
                     ))
              ((= chou 2)
               (cond ((= present-oto 1) (setq next-oto 3))
                     ((= present-oto 3) (setq next-oto 4))
                     ((= present-oto 4) (setq next-oto 8))
                     ((= present-oto 8) (setq next-oto 9))
                     ((= present-oto 9) (setq next-oto 13))
                     ((= present-oto 13) (setq next-oto 15))
                     ((= present-oto 15) (setq next-oto 16))
                     ((= present-oto 16) (setq next-oto 20))
                     ((= present-oto 20) (setq next-oto 21))
                     ((= present-oto 21) (setq next-oto 25))
                     ((= present-oto 25) (setq next-oto 27))
                     ((= present-oto 27) (setq next-oto 25))
                     (t (setq next-oto (random 27)) (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg))
                     ))
              ((= chou 3)
               (cond ((= present-oto 1) (setq next-oto 2))
                     ((= present-oto 2) (setq next-oto 6))
                     ((= present-oto 6) (setq next-oto 7))
                     ((= present-oto 7) (setq next-oto 11))
                     ((= present-oto 11) (setq next-oto 13))
                     ((= present-oto 13) (setq next-oto 14))
                     ((= present-oto 14) (setq next-oto 18))
                     ((= present-oto 18) (setq next-oto 19))
                     ((= present-oto 19) (setq next-oto 23))
                     ((= present-oto 23) (setq next-oto 25))
                     ((= present-oto 25) (setq next-oto 26))
                     ((= present-oto 26) (setq next-oto 25))
                     (t (setq next-oto (random 27)) (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg))
                     ))
              ((= chou 4)
               (cond ((= present-oto 3) (setq next-oto 4))
                     ((= present-oto 4) (setq next-oto 8))
                     ((= present-oto 8) (setq next-oto 10))
                     ((= present-oto 10) (setq next-oto 11))
                     ((= present-oto 11) (setq next-oto 15))
                     ((= present-oto 15) (setq next-oto 16))
                     ((= present-oto 16) (setq next-oto 20))
                     ((= present-oto 20) (setq next-oto 22))
                     ((= present-oto 22) (setq next-oto 23))
                     ((= present-oto 23) (setq next-oto 27))
                     ((= present-oto 27) (setq next-oto 23))
                     (t (setq next-oto (random 27)) (format t "present-oto:~A chou:~A walk-roulette:~A tenchou-flg:~A~%" present-oto chou walk-roulette tenchou-flg))
                     ))
              ) ;; cond chou
        )
       ) ;; cond walk-roulette

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
       ((= (elt oto-list i) 4) (if (or (= (elt chou-list i) 2) (= (elt chou-list i) 4))
                                   (warn "oレm　")
                                 (warn "oツ　")
                                 ))
       ((= (elt oto-list i) 5) (warn "oレc　"))
       ((= (elt oto-list i) 6) (warn "oレ　"))
       ((= (elt oto-list i) 7) (warn "oチm　"))
       ((= (elt oto-list i) 8) (warn "oチ　"))
       ((= (elt oto-list i) 9) (warn "oリm　"))
       ((= (elt oto-list i) 10) (warn "oリc　"))
       ((= (elt oto-list i) 11) (if (= (elt chou-list i) 4)
                                    (warn "oヒ5m　")
                                  (warn "oリ　")))
       ((= (elt oto-list i) 12) (warn "kロm　"))
       ((= (elt oto-list i) 13) (warn "kロ　"))
       ((= (elt oto-list i) 14) (warn "kツm　"))
       ((= (elt oto-list i) 15) (warn "kツc　"))
       ((= (elt oto-list i) 16) (if (or (= (elt chou-list i) 2) (= (elt chou-list i) 4))
                                    (warn "kレm　")
                                  (warn "kツ　")))
       ((= (elt oto-list i) 17) (warn "kレc　"))
       ((= (elt oto-list i) 18) (warn "kレ　"))
       ((= (elt oto-list i) 19) (warn "kチm　"))
       ((= (elt oto-list i) 20) (warn "kチ　"))
       ((= (elt oto-list i) 21) (warn "kヒm　"))
       ((= (elt oto-list i) 22) (warn "kヒc　"))
       ((= (elt oto-list i) 23) (if (= (elt chou-list i) 4)
                                    (warn "kヒ5m　")
                                  (warn "kヒ　")))
       ((= (elt oto-list i) 24) (warn "kヒ5c　"))
       ((= (elt oto-list i) 25) (warn "kハ5　"))
       ((= (elt oto-list i) 26) (warn "kハ3　"))
       ((= (elt oto-list i) 27) (warn "kハ4　"))
       )
      ) ;;let
    );;defun
