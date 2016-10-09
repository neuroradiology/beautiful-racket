#lang br
(require racket/draw)
(provide buttons)

(define buttons
  (list (let ([label "Insert expression"]
              [bitmap (make-object bitmap% 16 16)]
              [callback (λ (drr-frame)
                          (define drr-editor (send drr-frame get-definitions-text))
                          (send drr-editor begin-edit-sequence)
                          (send drr-editor insert "@$  $@")
                          (send drr-editor end-edit-sequence)
                          (define pos (send drr-editor get-end-position))
                          (send drr-editor set-position (- pos 3)) 
                          )]
              [number 98])
          (list label bitmap callback number))))