(component
(core module $MAIN
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (import "env" "memory" (memory $mimport$0 256 256))
 (data (global.get $gimport$1) "\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (import "env" "__indirect_function_table" (table $timport$0 1 funcref))
 (import "env" "__stack_pointer" (global $gimport$0 (mut i32)))
 (import "env" "__memory_base" (global $gimport$1 i32))
 (import "env" "__table_base" (global $gimport$2 i32))
 (import "GOT.mem" "__heap_base" (global $gimport$3 (mut i32)))
 (import "env" "f" (func $fimport$0 (result i32)))
 (import "wasi_snapshot_preview1" "proc_exit" (func $fimport$1 (param i32)))
 (global $global$0 (mut i32) (i32.const 508))
 (global $global$1 (mut i32) (i32.const 512))
 (global $global$2 i32 (i32.const 0))
 (elem (global.get $gimport$2) $0)
 (export "__wasm_apply_data_relocs" (func $1))
 (export "x" (global $global$2))
 (export "_start" (func $3))
 (export "__errno_location" (func $7))
 (export "malloc" (func $9))
 (export "free" (func $10))
 (export "setThrew" (func $11))
 (export "stackSave" (func $4))
 (export "stackRestore" (func $5))
 (export "stackAlloc" (func $6))
 (start $2)
 (func $0
  (nop)
 )
 (func $1
  (i32.store offset=4
   (global.get $gimport$1)
   (global.get $gimport$3)
  )
 )
 (func $2
  (global.set $global$0
   (i32.add
    (global.get $gimport$1)
    (i32.const 508)
   )
  )
  (global.set $global$1
   (i32.add
    (global.get $gimport$1)
    (i32.const 512)
   )
  )
 )
 (func $3
  (local $0 i32)
  (local $1 i32)
  (local.set $1
   (call $fimport$0)
  )
  (if
   (local.tee $0
    (i32.const 0)
   )
   (loop $label$2
    (call_indirect (type $none_=>_none)
     (i32.load
      (local.tee $0
       (i32.sub
        (local.get $0)
        (i32.const 4)
       )
      )
     )
    )
    (br_if $label$2
     (local.get $0)
    )
   )
  )
  (call $fimport$1
   (local.get $1)
  )
  (unreachable)
 )
 (func $4 (result i32)
  (global.get $gimport$0)
 )
 (func $5 (param $0 i32)
  (global.set $gimport$0
   (local.get $0)
  )
 )
 (func $6 (param $0 i32) (result i32)
  (global.set $gimport$0
   (local.tee $0
    (i32.and
     (i32.sub
      (global.get $gimport$0)
      (local.get $0)
     )
     (i32.const -16)
    )
   )
  )
  (local.get $0)
 )
 (func $7 (result i32)
  (i32.add
   (global.get $gimport$1)
   (i32.const 8)
  )
 )
 (func $8 (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.and
    (i32.add
     (local.get $0)
     (i32.const 3)
    )
    (i32.const -4)
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load offset=4
      (global.get $gimport$1)
     )
    )
   )
   (i32.store offset=4
    (global.get $gimport$1)
    (local.tee $0
     (global.get $gimport$3)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (select
     (local.get $1)
     (i32.const 0)
     (i32.le_u
      (local.tee $1
       (i32.add
        (local.get $0)
        (local.get $1)
       )
      )
      (local.get $0)
     )
    )
   )
   (br_if $label$2
    (i32.gt_u
     (local.get $1)
     (i32.shl
      (memory.size)
      (i32.const 16)
     )
    )
   )
   (i32.store offset=4
    (global.get $gimport$1)
    (local.get $1)
   )
   (return
    (local.get $0)
   )
  )
  (i32.store
   (call $7)
   (i32.const 48)
  )
  (i32.const -1)
 )
 (func $9 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (global.set $gimport$0
   (local.tee $11
    (i32.sub
     (global.get $gimport$0)
     (i32.const 16)
    )
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (block $label$6
        (block $label$7
         (block $label$8
          (block $label$9
           (block $label$10
            (block $label$11
             (if
              (i32.le_u
               (local.get $0)
               (i32.const 244)
              )
              (block
               (if
                (i32.and
                 (local.tee $0
                  (i32.shr_u
                   (local.tee $6
                    (i32.load offset=12
                     (global.get $gimport$1)
                    )
                   )
                   (local.tee $1
                    (i32.shr_u
                     (local.tee $5
                      (select
                       (i32.const 16)
                       (i32.and
                        (i32.add
                         (local.get $0)
                         (i32.const 11)
                        )
                        (i32.const -8)
                       )
                       (i32.lt_u
                        (local.get $0)
                        (i32.const 11)
                       )
                      )
                     )
                     (i32.const 3)
                    )
                   )
                  )
                 )
                 (i32.const 3)
                )
                (block
                 (local.set $0
                  (i32.add
                   (local.tee $1
                    (i32.load offset=48
                     (local.tee $3
                      (i32.add
                       (i32.add
                        (global.get $gimport$1)
                        (i32.const 12)
                       )
                       (i32.shl
                        (local.tee $2
                         (i32.add
                          (i32.and
                           (i32.xor
                            (local.get $0)
                            (i32.const -1)
                           )
                           (i32.const 1)
                          )
                          (local.get $1)
                         )
                        )
                        (i32.const 3)
                       )
                      )
                     )
                    )
                   )
                   (i32.const 8)
                  )
                 )
                 (block $label$14
                  (if
                   (i32.eq
                    (local.tee $5
                     (i32.load offset=8
                      (local.get $1)
                     )
                    )
                    (local.tee $3
                     (i32.add
                      (local.get $3)
                      (i32.const 40)
                     )
                    )
                   )
                   (block
                    (i32.store offset=12
                     (global.get $gimport$1)
                     (i32.and
                      (local.get $6)
                      (i32.rotl
                       (i32.const -2)
                       (local.get $2)
                      )
                     )
                    )
                    (br $label$14)
                   )
                  )
                  (i32.store offset=12
                   (local.get $5)
                   (local.get $3)
                  )
                  (i32.store offset=8
                   (local.get $3)
                   (local.get $5)
                  )
                 )
                 (i32.store offset=4
                  (local.get $1)
                  (i32.or
                   (local.tee $2
                    (i32.shl
                     (local.get $2)
                     (i32.const 3)
                    )
                   )
                   (i32.const 3)
                  )
                 )
                 (i32.store offset=4
                  (local.tee $1
                   (i32.add
                    (local.get $1)
                    (local.get $2)
                   )
                  )
                  (i32.or
                   (i32.load offset=4
                    (local.get $1)
                   )
                   (i32.const 1)
                  )
                 )
                 (br $label$1)
                )
               )
               (br_if $label$11
                (i32.le_u
                 (local.get $5)
                 (local.tee $8
                  (i32.load offset=20
                   (global.get $gimport$1)
                  )
                 )
                )
               )
               (if
                (local.get $0)
                (block
                 (block $label$17
                  (if
                   (i32.eq
                    (local.tee $0
                     (i32.load offset=8
                      (local.tee $1
                       (i32.load offset=48
                        (local.tee $3
                         (i32.add
                          (i32.add
                           (global.get $gimport$1)
                           (i32.const 12)
                          )
                          (i32.shl
                           (local.tee $2
                            (i32.add
                             (i32.or
                              (i32.or
                               (i32.or
                                (i32.or
                                 (local.tee $2
                                  (i32.and
                                   (i32.shr_u
                                    (local.tee $1
                                     (i32.shr_u
                                      (local.tee $0
                                       (i32.sub
                                        (i32.and
                                         (local.tee $0
                                          (i32.and
                                           (i32.shl
                                            (local.get $0)
                                            (local.get $1)
                                           )
                                           (i32.or
                                            (local.tee $0
                                             (i32.shl
                                              (i32.const 2)
                                              (local.get $1)
                                             )
                                            )
                                            (i32.sub
                                             (i32.const 0)
                                             (local.get $0)
                                            )
                                           )
                                          )
                                         )
                                         (i32.sub
                                          (i32.const 0)
                                          (local.get $0)
                                         )
                                        )
                                        (i32.const 1)
                                       )
                                      )
                                      (local.tee $0
                                       (i32.and
                                        (i32.shr_u
                                         (local.get $0)
                                         (i32.const 12)
                                        )
                                        (i32.const 16)
                                       )
                                      )
                                     )
                                    )
                                    (i32.const 5)
                                   )
                                   (i32.const 8)
                                  )
                                 )
                                 (local.get $0)
                                )
                                (local.tee $1
                                 (i32.and
                                  (i32.shr_u
                                   (local.tee $0
                                    (i32.shr_u
                                     (local.get $1)
                                     (local.get $2)
                                    )
                                   )
                                   (i32.const 2)
                                  )
                                  (i32.const 4)
                                 )
                                )
                               )
                               (local.tee $1
                                (i32.and
                                 (i32.shr_u
                                  (local.tee $0
                                   (i32.shr_u
                                    (local.get $0)
                                    (local.get $1)
                                   )
                                  )
                                  (i32.const 1)
                                 )
                                 (i32.const 2)
                                )
                               )
                              )
                              (local.tee $1
                               (i32.and
                                (i32.shr_u
                                 (local.tee $0
                                  (i32.shr_u
                                   (local.get $0)
                                   (local.get $1)
                                  )
                                 )
                                 (i32.const 1)
                                )
                                (i32.const 1)
                               )
                              )
                             )
                             (i32.shr_u
                              (local.get $0)
                              (local.get $1)
                             )
                            )
                           )
                           (i32.const 3)
                          )
                         )
                        )
                       )
                      )
                     )
                    )
                    (local.tee $3
                     (i32.add
                      (local.get $3)
                      (i32.const 40)
                     )
                    )
                   )
                   (block
                    (i32.store offset=12
                     (global.get $gimport$1)
                     (local.tee $6
                      (i32.and
                       (local.get $6)
                       (i32.rotl
                        (i32.const -2)
                        (local.get $2)
                       )
                      )
                     )
                    )
                    (br $label$17)
                   )
                  )
                  (i32.store offset=12
                   (local.get $0)
                   (local.get $3)
                  )
                  (i32.store offset=8
                   (local.get $3)
                   (local.get $0)
                  )
                 )
                 (local.set $0
                  (i32.add
                   (local.get $1)
                   (i32.const 8)
                  )
                 )
                 (i32.store offset=4
                  (local.get $1)
                  (i32.or
                   (local.get $5)
                   (i32.const 3)
                  )
                 )
                 (i32.store offset=4
                  (local.tee $3
                   (i32.add
                    (local.get $1)
                    (local.get $5)
                   )
                  )
                  (i32.or
                   (local.tee $2
                    (i32.sub
                     (local.tee $4
                      (i32.shl
                       (local.get $2)
                       (i32.const 3)
                      )
                     )
                     (local.get $5)
                    )
                   )
                   (i32.const 1)
                  )
                 )
                 (i32.store
                  (i32.add
                   (local.get $1)
                   (local.get $4)
                  )
                  (local.get $2)
                 )
                 (if
                  (local.get $8)
                  (block
                   (local.set $5
                    (i32.add
                     (i32.add
                      (local.tee $1
                       (i32.add
                        (global.get $gimport$1)
                        (i32.const 12)
                       )
                      )
                      (i32.shl
                       (local.tee $4
                        (i32.shr_u
                         (local.get $8)
                         (i32.const 3)
                        )
                       )
                       (i32.const 3)
                      )
                     )
                     (i32.const 40)
                    )
                   )
                   (local.set $1
                    (i32.load offset=20
                     (local.get $1)
                    )
                   )
                   (local.set $4
                    (block $label$20 (result i32)
                     (if
                      (i32.eqz
                       (i32.and
                        (local.get $6)
                        (local.tee $4
                         (i32.shl
                          (i32.const 1)
                          (local.get $4)
                         )
                        )
                       )
                      )
                      (block
                       (i32.store offset=12
                        (global.get $gimport$1)
                        (i32.or
                         (local.get $4)
                         (local.get $6)
                        )
                       )
                       (br $label$20
                        (local.get $5)
                       )
                      )
                     )
                     (i32.load offset=8
                      (local.get $5)
                     )
                    )
                   )
                   (i32.store offset=8
                    (local.get $5)
                    (local.get $1)
                   )
                   (i32.store offset=12
                    (local.get $4)
                    (local.get $1)
                   )
                   (i32.store offset=12
                    (local.get $1)
                    (local.get $5)
                   )
                   (i32.store offset=8
                    (local.get $1)
                    (local.get $4)
                   )
                  )
                 )
                 (i32.store offset=20
                  (local.tee $1
                   (i32.add
                    (global.get $gimport$1)
                    (i32.const 12)
                   )
                  )
                  (local.get $3)
                 )
                 (i32.store offset=8
                  (local.get $1)
                  (local.get $2)
                 )
                 (br $label$1)
                )
               )
               (br_if $label$11
                (i32.eqz
                 (local.tee $9
                  (i32.load offset=16
                   (global.get $gimport$1)
                  )
                 )
                )
               )
               (local.set $1
                (i32.sub
                 (i32.and
                  (i32.load offset=4
                   (local.tee $3
                    (i32.load offset=316
                     (i32.add
                      (global.get $gimport$1)
                      (i32.shl
                       (i32.add
                        (i32.or
                         (i32.or
                          (i32.or
                           (i32.or
                            (local.tee $2
                             (i32.and
                              (i32.shr_u
                               (local.tee $1
                                (i32.shr_u
                                 (local.tee $0
                                  (i32.sub
                                   (i32.and
                                    (local.get $9)
                                    (i32.sub
                                     (i32.const 0)
                                     (local.get $9)
                                    )
                                   )
                                   (i32.const 1)
                                  )
                                 )
                                 (local.tee $0
                                  (i32.and
                                   (i32.shr_u
                                    (local.get $0)
                                    (i32.const 12)
                                   )
                                   (i32.const 16)
                                  )
                                 )
                                )
                               )
                               (i32.const 5)
                              )
                              (i32.const 8)
                             )
                            )
                            (local.get $0)
                           )
                           (local.tee $1
                            (i32.and
                             (i32.shr_u
                              (local.tee $0
                               (i32.shr_u
                                (local.get $1)
                                (local.get $2)
                               )
                              )
                              (i32.const 2)
                             )
                             (i32.const 4)
                            )
                           )
                          )
                          (local.tee $1
                           (i32.and
                            (i32.shr_u
                             (local.tee $0
                              (i32.shr_u
                               (local.get $0)
                               (local.get $1)
                              )
                             )
                             (i32.const 1)
                            )
                            (i32.const 2)
                           )
                          )
                         )
                         (local.tee $1
                          (i32.and
                           (i32.shr_u
                            (local.tee $0
                             (i32.shr_u
                              (local.get $0)
                              (local.get $1)
                             )
                            )
                            (i32.const 1)
                           )
                           (i32.const 1)
                          )
                         )
                        )
                        (i32.shr_u
                         (local.get $0)
                         (local.get $1)
                        )
                       )
                       (i32.const 2)
                      )
                     )
                    )
                   )
                  )
                  (i32.const -8)
                 )
                 (local.get $5)
                )
               )
               (local.set $2
                (local.get $3)
               )
               (loop $label$22
                (block $label$23
                 (if
                  (i32.eqz
                   (local.tee $0
                    (i32.load offset=16
                     (local.get $2)
                    )
                   )
                  )
                  (br_if $label$23
                   (i32.eqz
                    (local.tee $0
                     (i32.load offset=20
                      (local.get $2)
                     )
                    )
                   )
                  )
                 )
                 (local.set $1
                  (select
                   (local.tee $2
                    (i32.sub
                     (i32.and
                      (i32.load offset=4
                       (local.get $0)
                      )
                      (i32.const -8)
                     )
                     (local.get $5)
                    )
                   )
                   (local.get $1)
                   (local.tee $2
                    (i32.gt_u
                     (local.get $1)
                     (local.get $2)
                    )
                   )
                  )
                 )
                 (local.set $3
                  (select
                   (local.get $0)
                   (local.get $3)
                   (local.get $2)
                  )
                 )
                 (local.set $2
                  (local.get $0)
                 )
                 (br $label$22)
                )
               )
               (local.set $0
                (global.get $gimport$1)
               )
               (local.set $10
                (i32.load offset=24
                 (local.get $3)
                )
               )
               (if
                (i32.ne
                 (local.tee $4
                  (i32.load offset=12
                   (local.get $3)
                  )
                 )
                 (local.get $3)
                )
                (block
                 (drop
                  (i32.gt_u
                   (i32.load offset=28
                    (local.get $0)
                   )
                   (local.tee $0
                    (i32.load offset=8
                     (local.get $3)
                    )
                   )
                  )
                 )
                 (i32.store offset=12
                  (local.get $0)
                  (local.get $4)
                 )
                 (i32.store offset=8
                  (local.get $4)
                  (local.get $0)
                 )
                 (br $label$2)
                )
               )
               (if
                (i32.eqz
                 (local.tee $0
                  (i32.load
                   (local.tee $2
                    (i32.add
                     (local.get $3)
                     (i32.const 20)
                    )
                   )
                  )
                 )
                )
                (block
                 (br_if $label$10
                  (i32.eqz
                   (local.tee $0
                    (i32.load offset=16
                     (local.get $3)
                    )
                   )
                  )
                 )
                 (local.set $2
                  (i32.add
                   (local.get $3)
                   (i32.const 16)
                  )
                 )
                )
               )
               (loop $label$27
                (local.set $7
                 (local.get $2)
                )
                (br_if $label$27
                 (local.tee $0
                  (i32.load
                   (local.tee $2
                    (i32.add
                     (local.tee $4
                      (local.get $0)
                     )
                     (i32.const 20)
                    )
                   )
                  )
                 )
                )
                (local.set $2
                 (i32.add
                  (local.get $4)
                  (i32.const 16)
                 )
                )
                (br_if $label$27
                 (local.tee $0
                  (i32.load offset=16
                   (local.get $4)
                  )
                 )
                )
               )
               (i32.store
                (local.get $7)
                (i32.const 0)
               )
               (br $label$2)
              )
             )
             (local.set $5
              (i32.const -1)
             )
             (br_if $label$11
              (i32.gt_u
               (local.get $0)
               (i32.const -65)
              )
             )
             (local.set $5
              (i32.and
               (local.tee $1
                (i32.add
                 (local.get $0)
                 (i32.const 11)
                )
               )
               (i32.const -8)
              )
             )
             (br_if $label$11
              (i32.eqz
               (local.tee $8
                (i32.load offset=16
                 (global.get $gimport$1)
                )
               )
              )
             )
             (local.set $0
              (i32.const 0)
             )
             (local.set $7
              (block $label$28 (result i32)
               (drop
                (br_if $label$28
                 (i32.const 0)
                 (i32.lt_u
                  (local.get $5)
                  (i32.const 256)
                 )
                )
               )
               (drop
                (br_if $label$28
                 (i32.const 31)
                 (i32.gt_u
                  (local.get $5)
                  (i32.const 16777215)
                 )
                )
               )
               (i32.add
                (i32.or
                 (i32.shl
                  (local.tee $1
                   (i32.sub
                    (i32.shr_u
                     (i32.shl
                      (local.tee $3
                       (i32.shl
                        (local.tee $2
                         (i32.shl
                          (local.tee $1
                           (i32.shr_u
                            (local.get $1)
                            (i32.const 8)
                           )
                          )
                          (local.tee $1
                           (i32.and
                            (i32.shr_u
                             (i32.add
                              (local.get $1)
                              (i32.const 1048320)
                             )
                             (i32.const 16)
                            )
                            (i32.const 8)
                           )
                          )
                         )
                        )
                        (local.tee $2
                         (i32.and
                          (i32.shr_u
                           (i32.add
                            (local.get $2)
                            (i32.const 520192)
                           )
                           (i32.const 16)
                          )
                          (i32.const 4)
                         )
                        )
                       )
                      )
                      (local.tee $3
                       (i32.and
                        (i32.shr_u
                         (i32.add
                          (local.get $3)
                          (i32.const 245760)
                         )
                         (i32.const 16)
                        )
                        (i32.const 2)
                       )
                      )
                     )
                     (i32.const 15)
                    )
                    (i32.or
                     (i32.or
                      (local.get $1)
                      (local.get $2)
                     )
                     (local.get $3)
                    )
                   )
                  )
                  (i32.const 1)
                 )
                 (i32.and
                  (i32.shr_u
                   (local.get $5)
                   (i32.add
                    (local.get $1)
                    (i32.const 21)
                   )
                  )
                  (i32.const 1)
                 )
                )
                (i32.const 28)
               )
              )
             )
             (local.set $1
              (i32.sub
               (i32.const 0)
               (local.get $5)
              )
             )
             (block $label$29
              (block $label$30
               (block $label$31
                (if
                 (i32.eqz
                  (local.tee $2
                   (i32.load offset=316
                    (i32.add
                     (global.get $gimport$1)
                     (i32.shl
                      (local.get $7)
                      (i32.const 2)
                     )
                    )
                   )
                  )
                 )
                 (br $label$31)
                )
                (local.set $3
                 (i32.shl
                  (local.get $5)
                  (select
                   (i32.const 0)
                   (i32.sub
                    (i32.const 25)
                    (i32.shr_u
                     (local.get $7)
                     (i32.const 1)
                    )
                   )
                   (i32.eq
                    (local.get $7)
                    (i32.const 31)
                   )
                  )
                 )
                )
                (loop $label$33
                 (block $label$34
                  (br_if $label$34
                   (i32.ge_u
                    (local.tee $6
                     (i32.sub
                      (i32.and
                       (i32.load offset=4
                        (local.get $2)
                       )
                       (i32.const -8)
                      )
                      (local.get $5)
                     )
                    )
                    (local.get $1)
                   )
                  )
                  (local.set $4
                   (local.get $2)
                  )
                  (br_if $label$34
                   (local.tee $1
                    (local.get $6)
                   )
                  )
                  (local.set $1
                   (i32.const 0)
                  )
                  (local.set $0
                   (local.get $2)
                  )
                  (br $label$30)
                 )
                 (local.set $0
                  (select
                   (select
                    (local.get $0)
                    (local.tee $6
                     (i32.load offset=20
                      (local.get $2)
                     )
                    )
                    (i32.eq
                     (local.get $6)
                     (local.tee $2
                      (i32.load offset=16
                       (i32.add
                        (local.get $2)
                        (i32.and
                         (i32.shr_u
                          (local.get $3)
                          (i32.const 29)
                         )
                         (i32.const 4)
                        )
                       )
                      )
                     )
                    )
                   )
                   (local.get $0)
                   (local.get $6)
                  )
                 )
                 (local.set $3
                  (i32.shl
                   (local.get $3)
                   (i32.const 1)
                  )
                 )
                 (br_if $label$33
                  (local.get $2)
                 )
                )
               )
               (if
                (i32.eqz
                 (i32.or
                  (local.get $0)
                  (local.get $4)
                 )
                )
                (block
                 (local.set $4
                  (i32.const 0)
                 )
                 (br_if $label$11
                  (i32.eqz
                   (local.tee $0
                    (i32.and
                     (i32.or
                      (local.tee $0
                       (i32.shl
                        (i32.const 2)
                        (local.get $7)
                       )
                      )
                      (i32.sub
                       (i32.const 0)
                       (local.get $0)
                      )
                     )
                     (local.get $8)
                    )
                   )
                  )
                 )
                 (local.set $0
                  (i32.load offset=316
                   (i32.add
                    (global.get $gimport$1)
                    (i32.shl
                     (i32.add
                      (i32.or
                       (i32.or
                        (i32.or
                         (i32.or
                          (local.tee $3
                           (i32.and
                            (i32.shr_u
                             (local.tee $2
                              (i32.shr_u
                               (local.tee $0
                                (i32.sub
                                 (i32.and
                                  (local.get $0)
                                  (i32.sub
                                   (i32.const 0)
                                   (local.get $0)
                                  )
                                 )
                                 (i32.const 1)
                                )
                               )
                               (local.tee $0
                                (i32.and
                                 (i32.shr_u
                                  (local.get $0)
                                  (i32.const 12)
                                 )
                                 (i32.const 16)
                                )
                               )
                              )
                             )
                             (i32.const 5)
                            )
                            (i32.const 8)
                           )
                          )
                          (local.get $0)
                         )
                         (local.tee $2
                          (i32.and
                           (i32.shr_u
                            (local.tee $0
                             (i32.shr_u
                              (local.get $2)
                              (local.get $3)
                             )
                            )
                            (i32.const 2)
                           )
                           (i32.const 4)
                          )
                         )
                        )
                        (local.tee $2
                         (i32.and
                          (i32.shr_u
                           (local.tee $0
                            (i32.shr_u
                             (local.get $0)
                             (local.get $2)
                            )
                           )
                           (i32.const 1)
                          )
                          (i32.const 2)
                         )
                        )
                       )
                       (local.tee $2
                        (i32.and
                         (i32.shr_u
                          (local.tee $0
                           (i32.shr_u
                            (local.get $0)
                            (local.get $2)
                           )
                          )
                          (i32.const 1)
                         )
                         (i32.const 1)
                        )
                       )
                      )
                      (i32.shr_u
                       (local.get $0)
                       (local.get $2)
                      )
                     )
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
               (br_if $label$29
                (i32.eqz
                 (local.get $0)
                )
               )
              )
              (loop $label$36
               (local.set $3
                (i32.lt_u
                 (local.tee $6
                  (i32.sub
                   (i32.and
                    (i32.load offset=4
                     (local.get $0)
                    )
                    (i32.const -8)
                   )
                   (local.get $5)
                  )
                 )
                 (local.get $1)
                )
               )
               (local.set $1
                (select
                 (local.get $6)
                 (local.get $1)
                 (local.get $3)
                )
               )
               (local.set $4
                (select
                 (local.get $0)
                 (local.get $4)
                 (local.get $3)
                )
               )
               (br_if $label$36
                (local.tee $0
                 (if (result i32)
                  (local.tee $2
                   (i32.load offset=16
                    (local.get $0)
                   )
                  )
                  (local.get $2)
                  (i32.load offset=20
                   (local.get $0)
                  )
                 )
                )
               )
              )
             )
             (br_if $label$11
              (i32.eqz
               (local.get $4)
              )
             )
             (br_if $label$11
              (i32.ge_u
               (local.get $1)
               (i32.sub
                (i32.load offset=20
                 (global.get $gimport$1)
                )
                (local.get $5)
               )
              )
             )
             (local.set $0
              (global.get $gimport$1)
             )
             (local.set $7
              (i32.load offset=24
               (local.get $4)
              )
             )
             (if
              (i32.ne
               (local.get $4)
               (local.tee $3
                (i32.load offset=12
                 (local.get $4)
                )
               )
              )
              (block
               (drop
                (i32.gt_u
                 (i32.load offset=28
                  (local.get $0)
                 )
                 (local.tee $0
                  (i32.load offset=8
                   (local.get $4)
                  )
                 )
                )
               )
               (i32.store offset=12
                (local.get $0)
                (local.get $3)
               )
               (i32.store offset=8
                (local.get $3)
                (local.get $0)
               )
               (br $label$3)
              )
             )
             (if
              (i32.eqz
               (local.tee $0
                (i32.load
                 (local.tee $2
                  (i32.add
                   (local.get $4)
                   (i32.const 20)
                  )
                 )
                )
               )
              )
              (block
               (br_if $label$9
                (i32.eqz
                 (local.tee $0
                  (i32.load offset=16
                   (local.get $4)
                  )
                 )
                )
               )
               (local.set $2
                (i32.add
                 (local.get $4)
                 (i32.const 16)
                )
               )
              )
             )
             (loop $label$41
              (local.set $6
               (local.get $2)
              )
              (br_if $label$41
               (local.tee $0
                (i32.load
                 (local.tee $2
                  (i32.add
                   (local.tee $3
                    (local.get $0)
                   )
                   (i32.const 20)
                  )
                 )
                )
               )
              )
              (local.set $2
               (i32.add
                (local.get $3)
                (i32.const 16)
               )
              )
              (br_if $label$41
               (local.tee $0
                (i32.load offset=16
                 (local.get $3)
                )
               )
              )
             )
             (i32.store
              (local.get $6)
              (i32.const 0)
             )
             (br $label$3)
            )
            (if
             (i32.le_u
              (local.get $5)
              (local.tee $0
               (i32.load offset=20
                (global.get $gimport$1)
               )
              )
             )
             (block
              (local.set $1
               (i32.load offset=32
                (global.get $gimport$1)
               )
              )
              (block $label$43
               (if
                (i32.ge_u
                 (local.tee $2
                  (i32.sub
                   (local.get $0)
                   (local.get $5)
                  )
                 )
                 (i32.const 16)
                )
                (block
                 (i32.store offset=8
                  (local.tee $3
                   (i32.add
                    (global.get $gimport$1)
                    (i32.const 12)
                   )
                  )
                  (local.get $2)
                 )
                 (i32.store offset=20
                  (local.get $3)
                  (local.tee $4
                   (i32.add
                    (local.get $1)
                    (local.get $5)
                   )
                  )
                 )
                 (i32.store offset=4
                  (local.get $4)
                  (i32.or
                   (local.get $2)
                   (i32.const 1)
                  )
                 )
                 (i32.store
                  (i32.add
                   (local.get $0)
                   (local.get $1)
                  )
                  (local.get $2)
                 )
                 (i32.store offset=4
                  (local.get $1)
                  (i32.or
                   (local.get $5)
                   (i32.const 3)
                  )
                 )
                 (br $label$43)
                )
               )
               (i32.store offset=20
                (local.tee $2
                 (i32.add
                  (global.get $gimport$1)
                  (i32.const 12)
                 )
                )
                (i32.const 0)
               )
               (i32.store offset=8
                (local.get $2)
                (i32.const 0)
               )
               (i32.store offset=4
                (local.get $1)
                (i32.or
                 (local.get $0)
                 (i32.const 3)
                )
               )
               (i32.store offset=4
                (local.tee $0
                 (i32.add
                  (local.get $0)
                  (local.get $1)
                 )
                )
                (i32.or
                 (i32.load offset=4
                  (local.get $0)
                 )
                 (i32.const 1)
                )
               )
              )
              (local.set $0
               (i32.add
                (local.get $1)
                (i32.const 8)
               )
              )
              (br $label$1)
             )
            )
            (if
             (i32.lt_u
              (local.get $5)
              (local.tee $4
               (i32.load offset=24
                (global.get $gimport$1)
               )
              )
             )
             (block
              (i32.store offset=12
               (local.tee $0
                (i32.add
                 (global.get $gimport$1)
                 (i32.const 12)
                )
               )
               (local.tee $2
                (i32.sub
                 (local.get $4)
                 (local.get $5)
                )
               )
              )
              (i32.store offset=24
               (local.get $0)
               (local.tee $3
                (i32.add
                 (local.tee $1
                  (i32.load offset=24
                   (local.get $0)
                  )
                 )
                 (local.get $5)
                )
               )
              )
              (i32.store offset=4
               (local.get $3)
               (i32.or
                (local.get $2)
                (i32.const 1)
               )
              )
              (i32.store offset=4
               (local.get $1)
               (i32.or
                (local.get $5)
                (i32.const 3)
               )
              )
              (local.set $0
               (i32.add
                (local.get $1)
                (i32.const 8)
               )
              )
              (br $label$1)
             )
            )
            (local.set $1
             (block $label$46 (result i32)
              (if
               (i32.load offset=484
                (global.get $gimport$1)
               )
               (br $label$46
                (i32.load offset=492
                 (global.get $gimport$1)
                )
               )
              )
              (i32.store offset=20
               (local.tee $0
                (i32.add
                 (local.tee $1
                  (global.get $gimport$1)
                 )
                 (i32.const 484)
                )
               )
               (i32.const 0)
              )
              (i64.store offset=12 align=4
               (local.get $0)
               (i64.const -1)
              )
              (i64.store offset=4 align=4
               (local.get $0)
               (i64.const 17592186048512)
              )
              (i32.store offset=456
               (local.get $1)
               (i32.const 0)
              )
              (i32.store
               (local.get $0)
               (i32.xor
                (i32.and
                 (i32.add
                  (local.get $11)
                  (i32.const 12)
                 )
                 (i32.const -16)
                )
                (i32.const 1431655768)
               )
              )
              (i32.const 4096)
             )
            )
            (local.set $0
             (i32.const 0)
            )
            (br_if $label$1
             (i32.le_u
              (local.tee $6
               (i32.and
                (local.tee $7
                 (i32.add
                  (local.get $1)
                  (local.tee $9
                   (i32.add
                    (local.get $5)
                    (i32.const 47)
                   )
                  )
                 )
                )
                (local.tee $8
                 (i32.sub
                  (i32.const 0)
                  (local.get $1)
                 )
                )
               )
              )
              (local.get $5)
             )
            )
            (if
             (local.tee $1
              (i32.load offset=452
               (global.get $gimport$1)
              )
             )
             (block
              (br_if $label$1
               (i32.le_u
                (local.tee $3
                 (i32.add
                  (local.tee $2
                   (i32.load offset=444
                    (global.get $gimport$1)
                   )
                  )
                  (local.get $6)
                 )
                )
                (local.get $2)
               )
              )
              (br_if $label$1
               (i32.lt_u
                (local.get $1)
                (local.get $3)
               )
              )
             )
            )
            (br_if $label$6
             (i32.and
              (i32.load8_u offset=456
               (global.get $gimport$1)
              )
              (i32.const 4)
             )
            )
            (block $label$49
             (block $label$50
              (if
               (local.tee $2
                (i32.load offset=36
                 (global.get $gimport$1)
                )
               )
               (block
                (local.set $1
                 (i32.add
                  (global.get $gimport$1)
                  (i32.const 460)
                 )
                )
                (loop $label$52
                 (if
                  (i32.ge_u
                   (local.get $2)
                   (local.tee $3
                    (i32.load
                     (local.get $1)
                    )
                   )
                  )
                  (br_if $label$50
                   (i32.gt_u
                    (i32.add
                     (local.get $3)
                     (i32.load offset=4
                      (local.get $1)
                     )
                    )
                    (local.get $2)
                   )
                  )
                 )
                 (br_if $label$52
                  (local.tee $1
                   (i32.load offset=8
                    (local.get $1)
                   )
                  )
                 )
                )
               )
              )
              (br_if $label$7
               (i32.eq
                (local.tee $4
                 (call $8
                  (i32.const 0)
                 )
                )
                (i32.const -1)
               )
              )
              (local.set $7
               (local.get $6)
              )
              (if
               (i32.and
                (local.tee $2
                 (i32.sub
                  (local.tee $1
                   (i32.load offset=488
                    (global.get $gimport$1)
                   )
                  )
                  (i32.const 1)
                 )
                )
                (local.get $4)
               )
               (local.set $7
                (i32.add
                 (i32.sub
                  (local.get $6)
                  (local.get $4)
                 )
                 (i32.and
                  (i32.add
                   (local.get $2)
                   (local.get $4)
                  )
                  (i32.sub
                   (i32.const 0)
                   (local.get $1)
                  )
                 )
                )
               )
              )
              (local.set $1
               (global.get $gimport$1)
              )
              (br_if $label$7
               (i32.ge_u
                (local.get $5)
                (local.get $7)
               )
              )
              (br_if $label$7
               (i32.gt_u
                (local.get $7)
                (i32.const 2147483646)
               )
              )
              (local.set $1
               (i32.load offset=444
                (local.get $1)
               )
              )
              (if
               (local.tee $2
                (i32.load offset=452
                 (global.get $gimport$1)
                )
               )
               (block
                (br_if $label$7
                 (i32.le_u
                  (local.tee $3
                   (i32.add
                    (local.get $1)
                    (local.get $7)
                   )
                  )
                  (local.get $1)
                 )
                )
                (br_if $label$7
                 (i32.lt_u
                  (local.get $2)
                  (local.get $3)
                 )
                )
               )
              )
              (br_if $label$49
               (i32.ne
                (local.tee $1
                 (call $8
                  (local.get $7)
                 )
                )
                (local.get $4)
               )
              )
              (br $label$5)
             )
             (br_if $label$7
              (i32.gt_u
               (local.tee $7
                (i32.and
                 (i32.sub
                  (local.get $7)
                  (local.get $4)
                 )
                 (local.get $8)
                )
               )
               (i32.const 2147483646)
              )
             )
             (br_if $label$8
              (i32.eq
               (local.tee $4
                (call $8
                 (local.get $7)
                )
               )
               (i32.add
                (i32.load
                 (local.get $1)
                )
                (i32.load offset=4
                 (local.get $1)
                )
               )
              )
             )
             (local.set $1
              (local.get $4)
             )
            )
            (block $label$56
             (br_if $label$56
              (i32.eq
               (local.get $1)
               (i32.const -1)
              )
             )
             (br_if $label$56
              (i32.le_u
               (i32.add
                (local.get $5)
                (i32.const 48)
               )
               (local.get $7)
              )
             )
             (if
              (i32.gt_u
               (local.tee $2
                (i32.and
                 (i32.add
                  (local.tee $2
                   (i32.load offset=492
                    (global.get $gimport$1)
                   )
                  )
                  (i32.sub
                   (local.get $9)
                   (local.get $7)
                  )
                 )
                 (i32.sub
                  (i32.const 0)
                  (local.get $2)
                 )
                )
               )
               (i32.const 2147483646)
              )
              (block
               (local.set $4
                (local.get $1)
               )
               (br $label$5)
              )
             )
             (if
              (i32.ne
               (call $8
                (local.get $2)
               )
               (i32.const -1)
              )
              (block
               (local.set $7
                (i32.add
                 (local.get $2)
                 (local.get $7)
                )
               )
               (local.set $4
                (local.get $1)
               )
               (br $label$5)
              )
             )
             (drop
              (call $8
               (i32.sub
                (i32.const 0)
                (local.get $7)
               )
              )
             )
             (br $label$7)
            )
            (local.set $4
             (local.get $1)
            )
            (br_if $label$5
             (i32.ne
              (local.get $1)
              (i32.const -1)
             )
            )
            (br $label$7)
           )
           (local.set $4
            (i32.const 0)
           )
           (br $label$2)
          )
          (local.set $3
           (i32.const 0)
          )
          (br $label$3)
         )
         (br_if $label$5
          (i32.ne
           (local.get $4)
           (i32.const -1)
          )
         )
        )
        (i32.store offset=444
         (local.tee $1
          (i32.add
           (global.get $gimport$1)
           (i32.const 12)
          )
         )
         (i32.or
          (i32.load offset=444
           (local.get $1)
          )
          (i32.const 4)
         )
        )
       )
       (br_if $label$4
        (i32.gt_u
         (local.get $6)
         (i32.const 2147483646)
        )
       )
       (local.set $4
        (call $8
         (local.get $6)
        )
       )
       (local.set $1
        (call $8
         (i32.const 0)
        )
       )
       (br_if $label$4
        (i32.eq
         (local.get $4)
         (i32.const -1)
        )
       )
       (br_if $label$4
        (i32.eq
         (local.get $1)
         (i32.const -1)
        )
       )
       (br_if $label$4
        (i32.le_u
         (local.get $1)
         (local.get $4)
        )
       )
       (br_if $label$4
        (i32.le_u
         (local.tee $7
          (i32.sub
           (local.get $1)
           (local.get $4)
          )
         )
         (i32.add
          (local.get $5)
          (i32.const 40)
         )
        )
       )
      )
      (i32.store offset=432
       (local.tee $1
        (i32.add
         (global.get $gimport$1)
         (i32.const 12)
        )
       )
       (local.tee $2
        (i32.add
         (i32.load offset=432
          (local.get $1)
         )
         (local.get $7)
        )
       )
      )
      (if
       (i32.lt_u
        (i32.load offset=436
         (local.get $1)
        )
        (local.get $2)
       )
       (i32.store offset=448
        (global.get $gimport$1)
        (local.get $2)
       )
      )
      (block $label$60
       (block $label$61
        (block $label$62
         (if
          (local.tee $2
           (i32.load offset=24
            (local.tee $1
             (i32.add
              (global.get $gimport$1)
              (i32.const 12)
             )
            )
           )
          )
          (block
           (local.set $1
            (i32.add
             (local.get $1)
             (i32.const 448)
            )
           )
           (loop $label$64
            (br_if $label$62
             (i32.eq
              (local.get $4)
              (i32.add
               (local.tee $3
                (i32.load
                 (local.get $1)
                )
               )
               (local.tee $6
                (i32.load offset=4
                 (local.get $1)
                )
               )
              )
             )
            )
            (br_if $label$64
             (local.tee $1
              (i32.load offset=8
               (local.get $1)
              )
             )
            )
           )
           (br $label$61)
          )
         )
         (if
          (i32.eqz
           (select
            (local.tee $1
             (i32.load offset=28
              (global.get $gimport$1)
             )
            )
            (i32.const 0)
            (i32.le_u
             (local.get $1)
             (local.get $4)
            )
           )
          )
          (i32.store offset=28
           (global.get $gimport$1)
           (local.get $4)
          )
         )
         (i32.store offset=448
          (local.tee $2
           (i32.add
            (local.tee $3
             (global.get $gimport$1)
            )
            (i32.const 12)
           )
          )
          (local.get $4)
         )
         (i32.store offset=32
          (local.get $2)
          (i32.const -1)
         )
         (local.set $1
          (i32.const 0)
         )
         (i32.store offset=460
          (local.get $2)
          (i32.const 0)
         )
         (i32.store offset=452
          (local.get $2)
          (local.get $7)
         )
         (i32.store offset=36
          (local.get $2)
          (i32.load offset=484
           (local.get $3)
          )
         )
         (loop $label$66
          (i32.store offset=48
           (local.tee $2
            (i32.add
             (i32.add
              (global.get $gimport$1)
              (i32.const 12)
             )
             (i32.shl
              (local.get $1)
              (i32.const 3)
             )
            )
           )
           (local.tee $3
            (i32.add
             (local.get $2)
             (i32.const 40)
            )
           )
          )
          (i32.store offset=52
           (local.get $2)
           (local.get $3)
          )
          (br_if $label$66
           (i32.ne
            (local.tee $1
             (i32.add
              (local.get $1)
              (i32.const 1)
             )
            )
            (i32.const 32)
           )
          )
         )
         (i32.store offset=12
          (local.tee $1
           (i32.add
            (local.tee $2
             (global.get $gimport$1)
            )
            (i32.const 12)
           )
          )
          (local.tee $7
           (i32.sub
            (local.tee $3
             (i32.sub
              (local.get $7)
              (i32.const 40)
             )
            )
            (local.tee $6
             (select
              (i32.and
               (i32.sub
                (i32.const -8)
                (local.get $4)
               )
               (i32.const 7)
              )
              (i32.const 0)
              (i32.and
               (i32.add
                (local.get $4)
                (i32.const 8)
               )
               (i32.const 7)
              )
             )
            )
           )
          )
         )
         (i32.store offset=24
          (local.get $1)
          (local.tee $6
           (i32.add
            (local.get $4)
            (local.get $6)
           )
          )
         )
         (i32.store offset=4
          (local.get $6)
          (i32.or
           (local.get $7)
           (i32.const 1)
          )
         )
         (i32.store offset=4
          (i32.add
           (local.get $3)
           (local.get $4)
          )
          (i32.const 40)
         )
         (i32.store offset=28
          (local.get $1)
          (i32.load offset=500
           (local.get $2)
          )
         )
         (br $label$60)
        )
        (br_if $label$61
         (i32.and
          (i32.load8_u offset=12
           (local.get $1)
          )
          (i32.const 8)
         )
        )
        (br_if $label$61
         (i32.lt_u
          (local.get $2)
          (local.get $3)
         )
        )
        (br_if $label$61
         (i32.ge_u
          (local.get $2)
          (local.get $4)
         )
        )
        (i32.store offset=4
         (local.get $1)
         (i32.add
          (local.get $6)
          (local.get $7)
         )
        )
        (i32.store offset=24
         (local.tee $1
          (i32.add
           (local.tee $3
            (global.get $gimport$1)
           )
           (i32.const 12)
          )
         )
         (local.tee $6
          (i32.add
           (local.get $2)
           (local.tee $4
            (select
             (i32.and
              (i32.sub
               (i32.const -8)
               (local.get $2)
              )
              (i32.const 7)
             )
             (i32.const 0)
             (i32.and
              (i32.add
               (local.get $2)
               (i32.const 8)
              )
              (i32.const 7)
             )
            )
           )
          )
         )
        )
        (i32.store offset=12
         (local.get $1)
         (local.tee $4
          (i32.sub
           (local.tee $7
            (i32.add
             (i32.load offset=12
              (local.get $1)
             )
             (local.get $7)
            )
           )
           (local.get $4)
          )
         )
        )
        (i32.store offset=4
         (local.get $6)
         (i32.or
          (local.get $4)
          (i32.const 1)
         )
        )
        (i32.store offset=4
         (i32.add
          (local.get $2)
          (local.get $7)
         )
         (i32.const 40)
        )
        (i32.store offset=28
         (local.get $1)
         (i32.load offset=500
          (local.get $3)
         )
        )
        (br $label$60)
       )
       (if
        (i32.gt_u
         (i32.load offset=28
          (global.get $gimport$1)
         )
         (local.get $4)
        )
        (i32.store offset=28
         (global.get $gimport$1)
         (local.get $4)
        )
       )
       (local.set $3
        (i32.add
         (local.get $4)
         (local.get $7)
        )
       )
       (local.set $1
        (i32.add
         (global.get $gimport$1)
         (i32.const 460)
        )
       )
       (block $label$68
        (block $label$69
         (block $label$70
          (block $label$71
           (block $label$72
            (block $label$73
             (loop $label$74
              (if
               (i32.ne
                (local.get $3)
                (i32.load
                 (local.get $1)
                )
               )
               (block
                (br_if $label$74
                 (local.tee $1
                  (i32.load offset=8
                   (local.get $1)
                  )
                 )
                )
                (br $label$73)
               )
              )
             )
             (br_if $label$72
              (i32.eqz
               (i32.and
                (i32.load8_u offset=12
                 (local.get $1)
                )
                (i32.const 8)
               )
              )
             )
            )
            (local.set $1
             (i32.add
              (global.get $gimport$1)
              (i32.const 460)
             )
            )
            (loop $label$76
             (if
              (i32.ge_u
               (local.get $2)
               (local.tee $3
                (i32.load
                 (local.get $1)
                )
               )
              )
              (br_if $label$71
               (i32.gt_u
                (local.tee $3
                 (i32.add
                  (local.get $3)
                  (i32.load offset=4
                   (local.get $1)
                  )
                 )
                )
                (local.get $2)
               )
              )
             )
             (local.set $1
              (i32.load offset=8
               (local.get $1)
              )
             )
             (br $label$76)
            )
           )
           (i32.store
            (local.get $1)
            (local.get $4)
           )
           (i32.store offset=4
            (local.get $1)
            (i32.add
             (i32.load offset=4
              (local.get $1)
             )
             (local.get $7)
            )
           )
           (i32.store offset=4
            (local.tee $7
             (i32.add
              (local.get $4)
              (select
               (i32.and
                (i32.sub
                 (i32.const -8)
                 (local.get $4)
                )
                (i32.const 7)
               )
               (i32.const 0)
               (i32.and
                (i32.add
                 (local.get $4)
                 (i32.const 8)
                )
                (i32.const 7)
               )
              )
             )
            )
            (i32.or
             (local.get $5)
             (i32.const 3)
            )
           )
           (local.set $5
            (i32.sub
             (local.tee $4
              (i32.add
               (local.get $3)
               (select
                (i32.and
                 (i32.sub
                  (i32.const -8)
                  (local.get $3)
                 )
                 (i32.const 7)
                )
                (i32.const 0)
                (i32.and
                 (i32.add
                  (local.get $3)
                  (i32.const 8)
                 )
                 (i32.const 7)
                )
               )
              )
             )
             (local.tee $3
              (i32.add
               (local.get $5)
               (local.get $7)
              )
             )
            )
           )
           (if
            (i32.eq
             (local.get $2)
             (local.get $4)
            )
            (block
             (i32.store offset=24
              (local.tee $0
               (i32.add
                (global.get $gimport$1)
                (i32.const 12)
               )
              )
              (local.get $3)
             )
             (i32.store offset=12
              (local.get $0)
              (local.tee $1
               (i32.add
                (i32.load offset=12
                 (local.get $0)
                )
                (local.get $5)
               )
              )
             )
             (i32.store offset=4
              (local.get $3)
              (i32.or
               (local.get $1)
               (i32.const 1)
              )
             )
             (br $label$69)
            )
           )
           (if
            (i32.eq
             (local.get $4)
             (i32.load offset=32
              (global.get $gimport$1)
             )
            )
            (block
             (i32.store offset=20
              (local.tee $1
               (i32.add
                (global.get $gimport$1)
                (i32.const 12)
               )
              )
              (local.get $3)
             )
             (i32.store offset=8
              (local.get $1)
              (local.tee $0
               (i32.add
                (i32.load offset=8
                 (local.get $1)
                )
                (local.get $5)
               )
              )
             )
             (i32.store offset=4
              (local.get $3)
              (i32.or
               (local.get $0)
               (i32.const 1)
              )
             )
             (i32.store
              (i32.add
               (local.get $0)
               (local.get $3)
              )
              (local.get $0)
             )
             (br $label$69)
            )
           )
           (if
            (i32.eq
             (i32.and
              (local.tee $0
               (i32.load offset=4
                (local.get $4)
               )
              )
              (i32.const 3)
             )
             (i32.const 1)
            )
            (block
             (local.set $8
              (i32.and
               (local.get $0)
               (i32.const -8)
              )
             )
             (block $label$81
              (if
               (i32.le_u
                (local.get $0)
                (i32.const 255)
               )
               (block
                (drop
                 (i32.eq
                  (local.tee $1
                   (i32.load offset=8
                    (local.get $4)
                   )
                  )
                  (i32.add
                   (i32.add
                    (global.get $gimport$1)
                    (i32.shl
                     (local.tee $6
                      (i32.shr_u
                       (local.get $0)
                       (i32.const 3)
                      )
                     )
                     (i32.const 3)
                    )
                   )
                   (i32.const 52)
                  )
                 )
                )
                (if
                 (i32.eq
                  (local.get $1)
                  (local.tee $0
                   (i32.load offset=12
                    (local.get $4)
                   )
                  )
                 )
                 (block
                  (i32.store
                   (local.tee $0
                    (i32.add
                     (global.get $gimport$1)
                     (i32.const 12)
                    )
                   )
                   (i32.and
                    (i32.load
                     (local.get $0)
                    )
                    (i32.rotl
                     (i32.const -2)
                     (local.get $6)
                    )
                   )
                  )
                  (br $label$81)
                 )
                )
                (i32.store offset=12
                 (local.get $1)
                 (local.get $0)
                )
                (i32.store offset=8
                 (local.get $0)
                 (local.get $1)
                )
                (br $label$81)
               )
              )
              (local.set $9
               (i32.load offset=24
                (local.get $4)
               )
              )
              (block $label$84
               (if
                (i32.ne
                 (local.get $4)
                 (local.tee $2
                  (i32.load offset=12
                   (local.get $4)
                  )
                 )
                )
                (block
                 (i32.store offset=12
                  (local.tee $0
                   (i32.load offset=8
                    (local.get $4)
                   )
                  )
                  (local.get $2)
                 )
                 (i32.store offset=8
                  (local.get $2)
                  (local.get $0)
                 )
                 (br $label$84)
                )
               )
               (block $label$86
                (br_if $label$86
                 (local.tee $1
                  (i32.load
                   (local.tee $0
                    (i32.add
                     (local.get $4)
                     (i32.const 20)
                    )
                   )
                  )
                 )
                )
                (br_if $label$86
                 (local.tee $1
                  (i32.load
                   (local.tee $0
                    (i32.add
                     (local.get $4)
                     (i32.const 16)
                    )
                   )
                  )
                 )
                )
                (local.set $2
                 (i32.const 0)
                )
                (br $label$84)
               )
               (loop $label$87
                (local.set $6
                 (local.get $0)
                )
                (br_if $label$87
                 (local.tee $1
                  (i32.load
                   (local.tee $0
                    (i32.add
                     (local.tee $2
                      (local.get $1)
                     )
                     (i32.const 20)
                    )
                   )
                  )
                 )
                )
                (local.set $0
                 (i32.add
                  (local.get $2)
                  (i32.const 16)
                 )
                )
                (br_if $label$87
                 (local.tee $1
                  (i32.load offset=16
                   (local.get $2)
                  )
                 )
                )
               )
               (i32.store
                (local.get $6)
                (i32.const 0)
               )
              )
              (br_if $label$81
               (i32.eqz
                (local.get $9)
               )
              )
              (block $label$88
               (if
                (i32.eq
                 (local.get $4)
                 (i32.load
                  (local.tee $0
                   (i32.add
                    (i32.add
                     (global.get $gimport$1)
                     (i32.shl
                      (local.tee $1
                       (i32.load offset=28
                        (local.get $4)
                       )
                      )
                      (i32.const 2)
                     )
                    )
                    (i32.const 316)
                   )
                  )
                 )
                )
                (block
                 (i32.store
                  (local.get $0)
                  (local.get $2)
                 )
                 (br_if $label$88
                  (local.get $2)
                 )
                 (i32.store offset=4
                  (local.tee $0
                   (i32.add
                    (global.get $gimport$1)
                    (i32.const 12)
                   )
                  )
                  (i32.and
                   (i32.load offset=4
                    (local.get $0)
                   )
                   (i32.rotl
                    (i32.const -2)
                    (local.get $1)
                   )
                  )
                 )
                 (br $label$81)
                )
               )
               (i32.store
                (i32.add
                 (local.get $9)
                 (select
                  (i32.const 16)
                  (i32.const 20)
                  (i32.eq
                   (i32.load offset=16
                    (local.get $9)
                   )
                   (local.get $4)
                  )
                 )
                )
                (local.get $2)
               )
               (br_if $label$81
                (i32.eqz
                 (local.get $2)
                )
               )
              )
              (i32.store offset=24
               (local.get $2)
               (local.get $9)
              )
              (if
               (local.tee $0
                (i32.load offset=16
                 (local.get $4)
                )
               )
               (block
                (i32.store offset=16
                 (local.get $2)
                 (local.get $0)
                )
                (i32.store offset=24
                 (local.get $0)
                 (local.get $2)
                )
               )
              )
              (br_if $label$81
               (i32.eqz
                (local.tee $0
                 (i32.load offset=20
                  (local.get $4)
                 )
                )
               )
              )
              (i32.store offset=20
               (local.get $2)
               (local.get $0)
              )
              (i32.store offset=24
               (local.get $0)
               (local.get $2)
              )
             )
             (local.set $5
              (i32.add
               (local.get $5)
               (local.get $8)
              )
             )
             (local.set $4
              (i32.add
               (local.get $4)
               (local.get $8)
              )
             )
            )
           )
           (i32.store offset=4
            (local.get $4)
            (i32.and
             (i32.load offset=4
              (local.get $4)
             )
             (i32.const -2)
            )
           )
           (i32.store offset=4
            (local.get $3)
            (i32.or
             (local.get $5)
             (i32.const 1)
            )
           )
           (i32.store
            (i32.add
             (local.get $3)
             (local.get $5)
            )
            (local.get $5)
           )
           (if
            (i32.le_u
             (local.get $5)
             (i32.const 255)
            )
            (block
             (local.set $0
              (i32.add
               (i32.add
                (local.tee $1
                 (i32.add
                  (global.get $gimport$1)
                  (i32.const 12)
                 )
                )
                (i32.shl
                 (local.tee $2
                  (i32.shr_u
                   (local.get $5)
                   (i32.const 3)
                  )
                 )
                 (i32.const 3)
                )
               )
               (i32.const 40)
              )
             )
             (local.set $1
              (block $label$92 (result i32)
               (if
                (i32.eqz
                 (i32.and
                  (local.tee $1
                   (i32.load
                    (local.get $1)
                   )
                  )
                  (local.tee $2
                   (i32.shl
                    (i32.const 1)
                    (local.get $2)
                   )
                  )
                 )
                )
                (block
                 (i32.store offset=12
                  (global.get $gimport$1)
                  (i32.or
                   (local.get $1)
                   (local.get $2)
                  )
                 )
                 (br $label$92
                  (local.get $0)
                 )
                )
               )
               (i32.load offset=8
                (local.get $0)
               )
              )
             )
             (i32.store offset=8
              (local.get $0)
              (local.get $3)
             )
             (i32.store offset=12
              (local.get $1)
              (local.get $3)
             )
             (i32.store offset=12
              (local.get $3)
              (local.get $0)
             )
             (i32.store offset=8
              (local.get $3)
              (local.get $1)
             )
             (br $label$69)
            )
           )
           (local.set $0
            (i32.const 31)
           )
           (if
            (i32.le_u
             (local.get $5)
             (i32.const 16777215)
            )
            (local.set $0
             (i32.add
              (i32.or
               (i32.shl
                (local.tee $0
                 (i32.sub
                  (i32.shr_u
                   (i32.shl
                    (local.tee $2
                     (i32.shl
                      (local.tee $1
                       (i32.shl
                        (local.tee $0
                         (i32.shr_u
                          (local.get $5)
                          (i32.const 8)
                         )
                        )
                        (local.tee $0
                         (i32.and
                          (i32.shr_u
                           (i32.add
                            (local.get $0)
                            (i32.const 1048320)
                           )
                           (i32.const 16)
                          )
                          (i32.const 8)
                         )
                        )
                       )
                      )
                      (local.tee $1
                       (i32.and
                        (i32.shr_u
                         (i32.add
                          (local.get $1)
                          (i32.const 520192)
                         )
                         (i32.const 16)
                        )
                        (i32.const 4)
                       )
                      )
                     )
                    )
                    (local.tee $2
                     (i32.and
                      (i32.shr_u
                       (i32.add
                        (local.get $2)
                        (i32.const 245760)
                       )
                       (i32.const 16)
                      )
                      (i32.const 2)
                     )
                    )
                   )
                   (i32.const 15)
                  )
                  (i32.or
                   (i32.or
                    (local.get $0)
                    (local.get $1)
                   )
                   (local.get $2)
                  )
                 )
                )
                (i32.const 1)
               )
               (i32.and
                (i32.shr_u
                 (local.get $5)
                 (i32.add
                  (local.get $0)
                  (i32.const 21)
                 )
                )
                (i32.const 1)
               )
              )
              (i32.const 28)
             )
            )
           )
           (i32.store offset=28
            (local.get $3)
            (local.get $0)
           )
           (i64.store offset=16 align=4
            (local.get $3)
            (i64.const 0)
           )
           (local.set $1
            (i32.add
             (i32.add
              (local.tee $2
               (i32.add
                (global.get $gimport$1)
                (i32.const 12)
               )
              )
              (i32.shl
               (local.get $0)
               (i32.const 2)
              )
             )
             (i32.const 304)
            )
           )
           (block $label$95
            (if
             (i32.eqz
              (i32.and
               (local.tee $2
                (i32.load offset=4
                 (local.get $2)
                )
               )
               (local.tee $4
                (i32.shl
                 (i32.const 1)
                 (local.get $0)
                )
               )
              )
             )
             (block
              (i32.store offset=16
               (global.get $gimport$1)
               (i32.or
                (local.get $2)
                (local.get $4)
               )
              )
              (i32.store
               (local.get $1)
               (local.get $3)
              )
              (i32.store offset=24
               (local.get $3)
               (local.get $1)
              )
              (br $label$95)
             )
            )
            (local.set $0
             (i32.shl
              (local.get $5)
              (select
               (i32.const 0)
               (i32.sub
                (i32.const 25)
                (i32.shr_u
                 (local.get $0)
                 (i32.const 1)
                )
               )
               (i32.eq
                (local.get $0)
                (i32.const 31)
               )
              )
             )
            )
            (local.set $2
             (i32.load
              (local.get $1)
             )
            )
            (loop $label$97
             (br_if $label$70
              (i32.eq
               (i32.and
                (i32.load offset=4
                 (local.tee $1
                  (local.get $2)
                 )
                )
                (i32.const -8)
               )
               (local.get $5)
              )
             )
             (local.set $2
              (i32.shr_u
               (local.get $0)
               (i32.const 29)
              )
             )
             (local.set $0
              (i32.shl
               (local.get $0)
               (i32.const 1)
              )
             )
             (br_if $label$97
              (local.tee $2
               (i32.load
                (local.tee $4
                 (i32.add
                  (i32.add
                   (local.get $1)
                   (i32.and
                    (local.get $2)
                    (i32.const 4)
                   )
                  )
                  (i32.const 16)
                 )
                )
               )
              )
             )
            )
            (i32.store
             (local.get $4)
             (local.get $3)
            )
            (i32.store offset=24
             (local.get $3)
             (local.get $1)
            )
           )
           (i32.store offset=12
            (local.get $3)
            (local.get $3)
           )
           (i32.store offset=8
            (local.get $3)
            (local.get $3)
           )
           (br $label$69)
          )
          (i32.store offset=12
           (local.tee $1
            (i32.add
             (local.tee $6
              (global.get $gimport$1)
             )
             (i32.const 12)
            )
           )
           (local.tee $10
            (i32.sub
             (local.tee $8
              (i32.sub
               (local.get $7)
               (i32.const 40)
              )
             )
             (local.tee $9
              (select
               (i32.and
                (i32.sub
                 (i32.const -8)
                 (local.get $4)
                )
                (i32.const 7)
               )
               (i32.const 0)
               (i32.and
                (i32.add
                 (local.get $4)
                 (i32.const 8)
                )
                (i32.const 7)
               )
              )
             )
            )
           )
          )
          (i32.store offset=24
           (local.get $1)
           (local.tee $9
            (i32.add
             (local.get $4)
             (local.get $9)
            )
           )
          )
          (i32.store offset=4
           (local.get $9)
           (i32.or
            (local.get $10)
            (i32.const 1)
           )
          )
          (i32.store offset=4
           (i32.add
            (local.get $4)
            (local.get $8)
           )
           (i32.const 40)
          )
          (i32.store offset=28
           (local.get $1)
           (i32.load offset=500
            (local.get $6)
           )
          )
          (i32.store offset=4
           (local.tee $6
            (select
             (local.get $2)
             (local.tee $6
              (i32.sub
               (i32.add
                (local.get $3)
                (select
                 (i32.and
                  (i32.sub
                   (i32.const 39)
                   (local.get $3)
                  )
                  (i32.const 7)
                 )
                 (i32.const 0)
                 (i32.and
                  (i32.sub
                   (local.get $3)
                   (i32.const 39)
                  )
                  (i32.const 7)
                 )
                )
               )
               (i32.const 47)
              )
             )
             (i32.lt_u
              (local.get $6)
              (i32.add
               (local.get $2)
               (i32.const 16)
              )
             )
            )
           )
           (i32.const 27)
          )
          (i64.store offset=16 align=4
           (local.get $6)
           (i64.load align=4
            (local.tee $8
             (i32.add
              (local.get $1)
              (i32.const 456)
             )
            )
           )
          )
          (i64.store offset=8 align=4
           (local.get $6)
           (i64.load offset=448 align=4
            (local.get $1)
           )
          )
          (i32.store offset=448
           (local.get $1)
           (local.get $4)
          )
          (i32.store offset=452
           (local.get $1)
           (local.get $7)
          )
          (i32.store offset=460
           (local.get $1)
           (i32.const 0)
          )
          (i32.store
           (local.get $8)
           (i32.add
            (local.get $6)
            (i32.const 8)
           )
          )
          (local.set $1
           (i32.add
            (local.get $6)
            (i32.const 24)
           )
          )
          (loop $label$98
           (i32.store offset=4
            (local.get $1)
            (i32.const 7)
           )
           (local.set $4
            (i32.add
             (local.get $1)
             (i32.const 8)
            )
           )
           (local.set $1
            (i32.add
             (local.get $1)
             (i32.const 4)
            )
           )
           (br_if $label$98
            (i32.gt_u
             (local.get $3)
             (local.get $4)
            )
           )
          )
          (br_if $label$60
           (i32.eq
            (local.get $2)
            (local.get $6)
           )
          )
          (i32.store offset=4
           (local.get $6)
           (i32.and
            (i32.load offset=4
             (local.get $6)
            )
            (i32.const -2)
           )
          )
          (i32.store offset=4
           (local.get $2)
           (i32.or
            (local.tee $7
             (i32.sub
              (local.get $6)
              (local.get $2)
             )
            )
            (i32.const 1)
           )
          )
          (i32.store
           (local.get $6)
           (local.get $7)
          )
          (if
           (i32.le_u
            (local.get $7)
            (i32.const 255)
           )
           (block
            (local.set $1
             (i32.add
              (i32.add
               (local.tee $3
                (i32.add
                 (global.get $gimport$1)
                 (i32.const 12)
                )
               )
               (i32.shl
                (local.tee $4
                 (i32.shr_u
                  (local.get $7)
                  (i32.const 3)
                 )
                )
                (i32.const 3)
               )
              )
              (i32.const 40)
             )
            )
            (local.set $3
             (block $label$100 (result i32)
              (if
               (i32.eqz
                (i32.and
                 (local.tee $3
                  (i32.load
                   (local.get $3)
                  )
                 )
                 (local.tee $4
                  (i32.shl
                   (i32.const 1)
                   (local.get $4)
                  )
                 )
                )
               )
               (block
                (i32.store offset=12
                 (global.get $gimport$1)
                 (i32.or
                  (local.get $3)
                  (local.get $4)
                 )
                )
                (br $label$100
                 (local.get $1)
                )
               )
              )
              (i32.load offset=8
               (local.get $1)
              )
             )
            )
            (i32.store offset=8
             (local.get $1)
             (local.get $2)
            )
            (i32.store offset=12
             (local.get $3)
             (local.get $2)
            )
            (i32.store offset=12
             (local.get $2)
             (local.get $1)
            )
            (i32.store offset=8
             (local.get $2)
             (local.get $3)
            )
            (br $label$60)
           )
          )
          (local.set $1
           (i32.const 31)
          )
          (i64.store offset=16 align=4
           (local.get $2)
           (i64.const 0)
          )
          (if
           (i32.le_u
            (local.get $7)
            (i32.const 16777215)
           )
           (local.set $1
            (i32.add
             (i32.or
              (i32.shl
               (local.tee $1
                (i32.sub
                 (i32.shr_u
                  (i32.shl
                   (local.tee $4
                    (i32.shl
                     (local.tee $3
                      (i32.shl
                       (local.tee $1
                        (i32.shr_u
                         (local.get $7)
                         (i32.const 8)
                        )
                       )
                       (local.tee $1
                        (i32.and
                         (i32.shr_u
                          (i32.add
                           (local.get $1)
                           (i32.const 1048320)
                          )
                          (i32.const 16)
                         )
                         (i32.const 8)
                        )
                       )
                      )
                     )
                     (local.tee $3
                      (i32.and
                       (i32.shr_u
                        (i32.add
                         (local.get $3)
                         (i32.const 520192)
                        )
                        (i32.const 16)
                       )
                       (i32.const 4)
                      )
                     )
                    )
                   )
                   (local.tee $4
                    (i32.and
                     (i32.shr_u
                      (i32.add
                       (local.get $4)
                       (i32.const 245760)
                      )
                      (i32.const 16)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                  (i32.const 15)
                 )
                 (i32.or
                  (i32.or
                   (local.get $1)
                   (local.get $3)
                  )
                  (local.get $4)
                 )
                )
               )
               (i32.const 1)
              )
              (i32.and
               (i32.shr_u
                (local.get $7)
                (i32.add
                 (local.get $1)
                 (i32.const 21)
                )
               )
               (i32.const 1)
              )
             )
             (i32.const 28)
            )
           )
          )
          (i32.store offset=28
           (local.get $2)
           (local.get $1)
          )
          (local.set $3
           (i32.add
            (i32.add
             (local.tee $4
              (i32.add
               (global.get $gimport$1)
               (i32.const 12)
              )
             )
             (i32.shl
              (local.get $1)
              (i32.const 2)
             )
            )
            (i32.const 304)
           )
          )
          (block $label$103
           (if
            (i32.eqz
             (i32.and
              (local.tee $4
               (i32.load offset=4
                (local.get $4)
               )
              )
              (local.tee $6
               (i32.shl
                (i32.const 1)
                (local.get $1)
               )
              )
             )
            )
            (block
             (i32.store offset=16
              (global.get $gimport$1)
              (i32.or
               (local.get $4)
               (local.get $6)
              )
             )
             (i32.store
              (local.get $3)
              (local.get $2)
             )
             (i32.store offset=24
              (local.get $2)
              (local.get $3)
             )
             (br $label$103)
            )
           )
           (local.set $1
            (i32.shl
             (local.get $7)
             (select
              (i32.const 0)
              (i32.sub
               (i32.const 25)
               (i32.shr_u
                (local.get $1)
                (i32.const 1)
               )
              )
              (i32.eq
               (local.get $1)
               (i32.const 31)
              )
             )
            )
           )
           (local.set $4
            (i32.load
             (local.get $3)
            )
           )
           (loop $label$105
            (br_if $label$68
             (i32.eq
              (i32.and
               (i32.load offset=4
                (local.tee $3
                 (local.get $4)
                )
               )
               (i32.const -8)
              )
              (local.get $7)
             )
            )
            (local.set $4
             (i32.shr_u
              (local.get $1)
              (i32.const 29)
             )
            )
            (local.set $1
             (i32.shl
              (local.get $1)
              (i32.const 1)
             )
            )
            (br_if $label$105
             (local.tee $4
              (i32.load
               (local.tee $6
                (i32.add
                 (i32.add
                  (local.get $3)
                  (i32.and
                   (local.get $4)
                   (i32.const 4)
                  )
                 )
                 (i32.const 16)
                )
               )
              )
             )
            )
           )
           (i32.store
            (local.get $6)
            (local.get $2)
           )
           (i32.store offset=24
            (local.get $2)
            (local.get $3)
           )
          )
          (i32.store offset=12
           (local.get $2)
           (local.get $2)
          )
          (i32.store offset=8
           (local.get $2)
           (local.get $2)
          )
          (br $label$60)
         )
         (i32.store offset=12
          (local.tee $0
           (i32.load offset=8
            (local.get $1)
           )
          )
          (local.get $3)
         )
         (i32.store offset=8
          (local.get $1)
          (local.get $3)
         )
         (i32.store offset=24
          (local.get $3)
          (i32.const 0)
         )
         (i32.store offset=12
          (local.get $3)
          (local.get $1)
         )
         (i32.store offset=8
          (local.get $3)
          (local.get $0)
         )
        )
        (local.set $0
         (i32.add
          (local.get $7)
          (i32.const 8)
         )
        )
        (br $label$1)
       )
       (i32.store offset=12
        (local.tee $1
         (i32.load offset=8
          (local.get $3)
         )
        )
        (local.get $2)
       )
       (i32.store offset=8
        (local.get $3)
        (local.get $2)
       )
       (i32.store offset=24
        (local.get $2)
        (i32.const 0)
       )
       (i32.store offset=12
        (local.get $2)
        (local.get $3)
       )
       (i32.store offset=8
        (local.get $2)
        (local.get $1)
       )
      )
      (br_if $label$4
       (i32.le_u
        (local.tee $1
         (i32.load offset=24
          (global.get $gimport$1)
         )
        )
        (local.get $5)
       )
      )
      (i32.store offset=12
       (local.tee $0
        (i32.add
         (global.get $gimport$1)
         (i32.const 12)
        )
       )
       (local.tee $2
        (i32.sub
         (local.get $1)
         (local.get $5)
        )
       )
      )
      (i32.store offset=24
       (local.get $0)
       (local.tee $3
        (i32.add
         (local.tee $1
          (i32.load offset=24
           (local.get $0)
          )
         )
         (local.get $5)
        )
       )
      )
      (i32.store offset=4
       (local.get $3)
       (i32.or
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.store offset=4
       (local.get $1)
       (i32.or
        (local.get $5)
        (i32.const 3)
       )
      )
      (local.set $0
       (i32.add
        (local.get $1)
        (i32.const 8)
       )
      )
      (br $label$1)
     )
     (i32.store
      (call $7)
      (i32.const 48)
     )
     (br $label$1)
    )
    (block $label$106
     (br_if $label$106
      (i32.eqz
       (local.get $7)
      )
     )
     (block $label$107
      (if
       (i32.eq
        (i32.load
         (local.tee $0
          (i32.add
           (i32.add
            (global.get $gimport$1)
            (i32.shl
             (local.tee $2
              (i32.load offset=28
               (local.get $4)
              )
             )
             (i32.const 2)
            )
           )
           (i32.const 316)
          )
         )
        )
        (local.get $4)
       )
       (block
        (i32.store
         (local.get $0)
         (local.get $3)
        )
        (br_if $label$107
         (local.get $3)
        )
        (i32.store offset=16
         (global.get $gimport$1)
         (local.tee $8
          (i32.and
           (local.get $8)
           (i32.rotl
            (i32.const -2)
            (local.get $2)
           )
          )
         )
        )
        (br $label$106)
       )
      )
      (i32.store
       (i32.add
        (local.get $7)
        (select
         (i32.const 16)
         (i32.const 20)
         (i32.eq
          (i32.load offset=16
           (local.get $7)
          )
          (local.get $4)
         )
        )
       )
       (local.get $3)
      )
      (br_if $label$106
       (i32.eqz
        (local.get $3)
       )
      )
     )
     (i32.store offset=24
      (local.get $3)
      (local.get $7)
     )
     (if
      (local.tee $0
       (i32.load offset=16
        (local.get $4)
       )
      )
      (block
       (i32.store offset=16
        (local.get $3)
        (local.get $0)
       )
       (i32.store offset=24
        (local.get $0)
        (local.get $3)
       )
      )
     )
     (br_if $label$106
      (i32.eqz
       (local.tee $0
        (i32.load offset=20
         (local.get $4)
        )
       )
      )
     )
     (i32.store offset=20
      (local.get $3)
      (local.get $0)
     )
     (i32.store offset=24
      (local.get $0)
      (local.get $3)
     )
    )
    (block $label$110
     (if
      (i32.le_u
       (local.get $1)
       (i32.const 15)
      )
      (block
       (i32.store offset=4
        (local.get $4)
        (i32.or
         (local.tee $0
          (i32.add
           (local.get $1)
           (local.get $5)
          )
         )
         (i32.const 3)
        )
       )
       (i32.store offset=4
        (local.tee $0
         (i32.add
          (local.get $0)
          (local.get $4)
         )
        )
        (i32.or
         (i32.load offset=4
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (br $label$110)
      )
     )
     (i32.store offset=4
      (local.get $4)
      (i32.or
       (local.get $5)
       (i32.const 3)
      )
     )
     (i32.store offset=4
      (local.tee $3
       (i32.add
        (local.get $4)
        (local.get $5)
       )
      )
      (i32.or
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.store
      (i32.add
       (local.get $1)
       (local.get $3)
      )
      (local.get $1)
     )
     (if
      (i32.le_u
       (local.get $1)
       (i32.const 255)
      )
      (block
       (local.set $0
        (i32.add
         (i32.add
          (local.tee $2
           (i32.add
            (global.get $gimport$1)
            (i32.const 12)
           )
          )
          (i32.shl
           (local.tee $1
            (i32.shr_u
             (local.get $1)
             (i32.const 3)
            )
           )
           (i32.const 3)
          )
         )
         (i32.const 40)
        )
       )
       (local.set $1
        (block $label$113 (result i32)
         (if
          (i32.eqz
           (i32.and
            (local.tee $2
             (i32.load
              (local.get $2)
             )
            )
            (local.tee $1
             (i32.shl
              (i32.const 1)
              (local.get $1)
             )
            )
           )
          )
          (block
           (i32.store offset=12
            (global.get $gimport$1)
            (i32.or
             (local.get $1)
             (local.get $2)
            )
           )
           (br $label$113
            (local.get $0)
           )
          )
         )
         (i32.load offset=8
          (local.get $0)
         )
        )
       )
       (i32.store offset=8
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=12
        (local.get $1)
        (local.get $3)
       )
       (i32.store offset=12
        (local.get $3)
        (local.get $0)
       )
       (i32.store offset=8
        (local.get $3)
        (local.get $1)
       )
       (br $label$110)
      )
     )
     (local.set $0
      (i32.const 31)
     )
     (if
      (i32.le_u
       (local.get $1)
       (i32.const 16777215)
      )
      (local.set $0
       (i32.add
        (i32.or
         (i32.shl
          (local.tee $0
           (i32.sub
            (i32.shr_u
             (i32.shl
              (local.tee $5
               (i32.shl
                (local.tee $2
                 (i32.shl
                  (local.tee $0
                   (i32.shr_u
                    (local.get $1)
                    (i32.const 8)
                   )
                  )
                  (local.tee $0
                   (i32.and
                    (i32.shr_u
                     (i32.add
                      (local.get $0)
                      (i32.const 1048320)
                     )
                     (i32.const 16)
                    )
                    (i32.const 8)
                   )
                  )
                 )
                )
                (local.tee $2
                 (i32.and
                  (i32.shr_u
                   (i32.add
                    (local.get $2)
                    (i32.const 520192)
                   )
                   (i32.const 16)
                  )
                  (i32.const 4)
                 )
                )
               )
              )
              (local.tee $5
               (i32.and
                (i32.shr_u
                 (i32.add
                  (local.get $5)
                  (i32.const 245760)
                 )
                 (i32.const 16)
                )
                (i32.const 2)
               )
              )
             )
             (i32.const 15)
            )
            (i32.or
             (i32.or
              (local.get $0)
              (local.get $2)
             )
             (local.get $5)
            )
           )
          )
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (local.get $1)
           (i32.add
            (local.get $0)
            (i32.const 21)
           )
          )
          (i32.const 1)
         )
        )
        (i32.const 28)
       )
      )
     )
     (i32.store offset=28
      (local.get $3)
      (local.get $0)
     )
     (i64.store offset=16 align=4
      (local.get $3)
      (i64.const 0)
     )
     (local.set $2
      (i32.add
       (i32.add
        (global.get $gimport$1)
        (i32.shl
         (local.get $0)
         (i32.const 2)
        )
       )
       (i32.const 316)
      )
     )
     (block $label$116
      (block $label$117
       (if
        (i32.eqz
         (i32.and
          (local.get $8)
          (local.tee $5
           (i32.shl
            (i32.const 1)
            (local.get $0)
           )
          )
         )
        )
        (block
         (i32.store offset=16
          (global.get $gimport$1)
          (i32.or
           (local.get $5)
           (local.get $8)
          )
         )
         (i32.store
          (local.get $2)
          (local.get $3)
         )
         (i32.store offset=24
          (local.get $3)
          (local.get $2)
         )
         (br $label$117)
        )
       )
       (local.set $0
        (i32.shl
         (local.get $1)
         (select
          (i32.const 0)
          (i32.sub
           (i32.const 25)
           (i32.shr_u
            (local.get $0)
            (i32.const 1)
           )
          )
          (i32.eq
           (local.get $0)
           (i32.const 31)
          )
         )
        )
       )
       (local.set $5
        (i32.load
         (local.get $2)
        )
       )
       (loop $label$119
        (br_if $label$116
         (i32.eq
          (i32.and
           (i32.load offset=4
            (local.tee $2
             (local.get $5)
            )
           )
           (i32.const -8)
          )
          (local.get $1)
         )
        )
        (local.set $5
         (i32.shr_u
          (local.get $0)
          (i32.const 29)
         )
        )
        (local.set $0
         (i32.shl
          (local.get $0)
          (i32.const 1)
         )
        )
        (br_if $label$119
         (local.tee $5
          (i32.load
           (local.tee $6
            (i32.add
             (i32.add
              (local.get $2)
              (i32.and
               (local.get $5)
               (i32.const 4)
              )
             )
             (i32.const 16)
            )
           )
          )
         )
        )
       )
       (i32.store
        (local.get $6)
        (local.get $3)
       )
       (i32.store offset=24
        (local.get $3)
        (local.get $2)
       )
      )
      (i32.store offset=12
       (local.get $3)
       (local.get $3)
      )
      (i32.store offset=8
       (local.get $3)
       (local.get $3)
      )
      (br $label$110)
     )
     (i32.store offset=12
      (local.tee $0
       (i32.load offset=8
        (local.get $2)
       )
      )
      (local.get $3)
     )
     (i32.store offset=8
      (local.get $2)
      (local.get $3)
     )
     (i32.store offset=24
      (local.get $3)
      (i32.const 0)
     )
     (i32.store offset=12
      (local.get $3)
      (local.get $2)
     )
     (i32.store offset=8
      (local.get $3)
      (local.get $0)
     )
    )
    (local.set $0
     (i32.add
      (local.get $4)
      (i32.const 8)
     )
    )
    (br $label$1)
   )
   (block $label$120
    (br_if $label$120
     (i32.eqz
      (local.get $10)
     )
    )
    (block $label$121
     (if
      (i32.eq
       (i32.load
        (local.tee $0
         (i32.add
          (i32.add
           (global.get $gimport$1)
           (i32.shl
            (local.tee $2
             (i32.load offset=28
              (local.get $3)
             )
            )
            (i32.const 2)
           )
          )
          (i32.const 316)
         )
        )
       )
       (local.get $3)
      )
      (block
       (i32.store
        (local.get $0)
        (local.get $4)
       )
       (br_if $label$121
        (local.get $4)
       )
       (i32.store offset=16
        (global.get $gimport$1)
        (i32.and
         (local.get $9)
         (i32.rotl
          (i32.const -2)
          (local.get $2)
         )
        )
       )
       (br $label$120)
      )
     )
     (i32.store
      (i32.add
       (local.get $10)
       (select
        (i32.const 16)
        (i32.const 20)
        (i32.eq
         (i32.load offset=16
          (local.get $10)
         )
         (local.get $3)
        )
       )
      )
      (local.get $4)
     )
     (br_if $label$120
      (i32.eqz
       (local.get $4)
      )
     )
    )
    (i32.store offset=24
     (local.get $4)
     (local.get $10)
    )
    (if
     (local.tee $0
      (i32.load offset=16
       (local.get $3)
      )
     )
     (block
      (i32.store offset=16
       (local.get $4)
       (local.get $0)
      )
      (i32.store offset=24
       (local.get $0)
       (local.get $4)
      )
     )
    )
    (br_if $label$120
     (i32.eqz
      (local.tee $0
       (i32.load offset=20
        (local.get $3)
       )
      )
     )
    )
    (i32.store offset=20
     (local.get $4)
     (local.get $0)
    )
    (i32.store offset=24
     (local.get $0)
     (local.get $4)
    )
   )
   (block $label$124
    (if
     (i32.le_u
      (local.get $1)
      (i32.const 15)
     )
     (block
      (i32.store offset=4
       (local.get $3)
       (i32.or
        (local.tee $0
         (i32.add
          (local.get $1)
          (local.get $5)
         )
        )
        (i32.const 3)
       )
      )
      (i32.store offset=4
       (local.tee $0
        (i32.add
         (local.get $0)
         (local.get $3)
        )
       )
       (i32.or
        (i32.load offset=4
         (local.get $0)
        )
        (i32.const 1)
       )
      )
      (br $label$124)
     )
    )
    (i32.store offset=4
     (local.get $3)
     (i32.or
      (local.get $5)
      (i32.const 3)
     )
    )
    (i32.store offset=4
     (local.tee $2
      (i32.add
       (local.get $3)
       (local.get $5)
      )
     )
     (i32.or
      (local.get $1)
      (i32.const 1)
     )
    )
    (i32.store
     (i32.add
      (local.get $1)
      (local.get $2)
     )
     (local.get $1)
    )
    (if
     (local.get $8)
     (block
      (local.set $5
       (i32.add
        (i32.add
         (local.tee $0
          (i32.add
           (global.get $gimport$1)
           (i32.const 12)
          )
         )
         (i32.shl
          (local.tee $4
           (i32.shr_u
            (local.get $8)
            (i32.const 3)
           )
          )
          (i32.const 3)
         )
        )
        (i32.const 40)
       )
      )
      (local.set $0
       (i32.load offset=20
        (local.get $0)
       )
      )
      (local.set $4
       (block $label$127 (result i32)
        (if
         (i32.eqz
          (i32.and
           (local.tee $4
            (i32.shl
             (i32.const 1)
             (local.get $4)
            )
           )
           (local.get $6)
          )
         )
         (block
          (i32.store offset=12
           (global.get $gimport$1)
           (i32.or
            (local.get $4)
            (local.get $6)
           )
          )
          (br $label$127
           (local.get $5)
          )
         )
        )
        (i32.load offset=8
         (local.get $5)
        )
       )
      )
      (i32.store offset=8
       (local.get $5)
       (local.get $0)
      )
      (i32.store offset=12
       (local.get $4)
       (local.get $0)
      )
      (i32.store offset=12
       (local.get $0)
       (local.get $5)
      )
      (i32.store offset=8
       (local.get $0)
       (local.get $4)
      )
     )
    )
    (i32.store offset=20
     (local.tee $0
      (i32.add
       (global.get $gimport$1)
       (i32.const 12)
      )
     )
     (local.get $2)
    )
    (i32.store offset=8
     (local.get $0)
     (local.get $1)
    )
   )
   (local.set $0
    (i32.add
     (local.get $3)
     (i32.const 8)
    )
   )
  )
  (global.set $gimport$0
   (i32.add
    (local.get $11)
    (i32.const 16)
   )
  )
  (local.get $0)
 )
 (func $10 (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (local.get $0)
    )
   )
   (local.set $5
    (i32.add
     (local.tee $2
      (i32.sub
       (local.get $0)
       (i32.const 8)
      )
     )
     (local.tee $0
      (i32.and
       (local.tee $1
        (i32.load
         (i32.sub
          (local.get $0)
          (i32.const 4)
         )
        )
       )
       (i32.const -8)
      )
     )
    )
   )
   (local.set $4
    (global.get $gimport$1)
   )
   (block $label$2
    (br_if $label$2
     (i32.and
      (local.get $1)
      (i32.const 1)
     )
    )
    (br_if $label$1
     (i32.eqz
      (i32.and
       (local.get $1)
       (i32.const 3)
      )
     )
    )
    (br_if $label$1
     (i32.lt_u
      (local.tee $2
       (i32.sub
        (local.get $2)
        (local.tee $1
         (i32.load
          (local.get $2)
         )
        )
       )
      )
      (i32.load offset=28
       (local.get $4)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.get $0)
      (local.get $1)
     )
    )
    (if
     (i32.ne
      (local.get $2)
      (i32.load offset=32
       (global.get $gimport$1)
      )
     )
     (block
      (if
       (i32.le_u
        (local.get $1)
        (i32.const 255)
       )
       (block
        (drop
         (i32.eq
          (local.tee $4
           (i32.load offset=8
            (local.get $2)
           )
          )
          (i32.add
           (i32.add
            (global.get $gimport$1)
            (i32.shl
             (local.tee $7
              (i32.shr_u
               (local.get $1)
               (i32.const 3)
              )
             )
             (i32.const 3)
            )
           )
           (i32.const 52)
          )
         )
        )
        (if
         (i32.eq
          (local.get $4)
          (local.tee $1
           (i32.load offset=12
            (local.get $2)
           )
          )
         )
         (block
          (i32.store
           (local.tee $1
            (i32.add
             (global.get $gimport$1)
             (i32.const 12)
            )
           )
           (i32.and
            (i32.load
             (local.get $1)
            )
            (i32.rotl
             (i32.const -2)
             (local.get $7)
            )
           )
          )
          (br $label$2)
         )
        )
        (i32.store offset=12
         (local.get $4)
         (local.get $1)
        )
        (i32.store offset=8
         (local.get $1)
         (local.get $4)
        )
        (br $label$2)
       )
      )
      (local.set $6
       (i32.load offset=24
        (local.get $2)
       )
      )
      (block $label$6
       (if
        (i32.ne
         (local.get $2)
         (local.tee $3
          (i32.load offset=12
           (local.get $2)
          )
         )
        )
        (block
         (i32.store offset=12
          (local.tee $1
           (i32.load offset=8
            (local.get $2)
           )
          )
          (local.get $3)
         )
         (i32.store offset=8
          (local.get $3)
          (local.get $1)
         )
         (br $label$6)
        )
       )
       (block $label$8
        (br_if $label$8
         (local.tee $4
          (i32.load
           (local.tee $1
            (i32.add
             (local.get $2)
             (i32.const 20)
            )
           )
          )
         )
        )
        (br_if $label$8
         (local.tee $4
          (i32.load
           (local.tee $1
            (i32.add
             (local.get $2)
             (i32.const 16)
            )
           )
          )
         )
        )
        (local.set $3
         (i32.const 0)
        )
        (br $label$6)
       )
       (loop $label$9
        (local.set $7
         (local.get $1)
        )
        (br_if $label$9
         (local.tee $4
          (i32.load
           (local.tee $1
            (i32.add
             (local.tee $3
              (local.get $4)
             )
             (i32.const 20)
            )
           )
          )
         )
        )
        (local.set $1
         (i32.add
          (local.get $3)
          (i32.const 16)
         )
        )
        (br_if $label$9
         (local.tee $4
          (i32.load offset=16
           (local.get $3)
          )
         )
        )
       )
       (i32.store
        (local.get $7)
        (i32.const 0)
       )
      )
      (br_if $label$2
       (i32.eqz
        (local.get $6)
       )
      )
      (block $label$10
       (if
        (i32.eq
         (local.get $2)
         (i32.load
          (local.tee $1
           (i32.add
            (i32.add
             (global.get $gimport$1)
             (i32.shl
              (local.tee $4
               (i32.load offset=28
                (local.get $2)
               )
              )
              (i32.const 2)
             )
            )
            (i32.const 316)
           )
          )
         )
        )
        (block
         (i32.store
          (local.get $1)
          (local.get $3)
         )
         (br_if $label$10
          (local.get $3)
         )
         (i32.store offset=4
          (local.tee $1
           (i32.add
            (global.get $gimport$1)
            (i32.const 12)
           )
          )
          (i32.and
           (i32.load offset=4
            (local.get $1)
           )
           (i32.rotl
            (i32.const -2)
            (local.get $4)
           )
          )
         )
         (br $label$2)
        )
       )
       (i32.store
        (i32.add
         (local.get $6)
         (select
          (i32.const 16)
          (i32.const 20)
          (i32.eq
           (i32.load offset=16
            (local.get $6)
           )
           (local.get $2)
          )
         )
        )
        (local.get $3)
       )
       (br_if $label$2
        (i32.eqz
         (local.get $3)
        )
       )
      )
      (i32.store offset=24
       (local.get $3)
       (local.get $6)
      )
      (if
       (local.tee $1
        (i32.load offset=16
         (local.get $2)
        )
       )
       (block
        (i32.store offset=16
         (local.get $3)
         (local.get $1)
        )
        (i32.store offset=24
         (local.get $1)
         (local.get $3)
        )
       )
      )
      (br_if $label$2
       (i32.eqz
        (local.tee $1
         (i32.load offset=20
          (local.get $2)
         )
        )
       )
      )
      (i32.store offset=20
       (local.get $3)
       (local.get $1)
      )
      (i32.store offset=24
       (local.get $1)
       (local.get $3)
      )
      (br $label$2)
     )
    )
    (br_if $label$2
     (i32.ne
      (i32.and
       (local.tee $1
        (i32.load offset=4
         (local.get $5)
        )
       )
       (i32.const 3)
      )
      (i32.const 3)
     )
    )
    (i32.store offset=20
     (global.get $gimport$1)
     (local.get $0)
    )
    (i32.store offset=4
     (local.get $5)
     (i32.and
      (local.get $1)
      (i32.const -2)
     )
    )
    (i32.store offset=4
     (local.get $2)
     (i32.or
      (local.get $0)
      (i32.const 1)
     )
    )
    (i32.store
     (i32.add
      (local.get $0)
      (local.get $2)
     )
     (local.get $0)
    )
    (return)
   )
   (br_if $label$1
    (i32.ge_u
     (local.get $2)
     (local.get $5)
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (local.tee $1
       (i32.load offset=4
        (local.get $5)
       )
      )
      (i32.const 1)
     )
    )
   )
   (block $label$13
    (if
     (i32.eqz
      (i32.and
       (local.get $1)
       (i32.const 2)
      )
     )
     (block
      (if
       (i32.eq
        (local.get $5)
        (i32.load offset=36
         (global.get $gimport$1)
        )
       )
       (block
        (i32.store offset=24
         (local.tee $1
          (i32.add
           (global.get $gimport$1)
           (i32.const 12)
          )
         )
         (local.get $2)
        )
        (i32.store offset=12
         (local.get $1)
         (local.tee $0
          (i32.add
           (i32.load offset=12
            (local.get $1)
           )
           (local.get $0)
          )
         )
        )
        (i32.store offset=4
         (local.get $2)
         (i32.or
          (local.get $0)
          (i32.const 1)
         )
        )
        (br_if $label$1
         (i32.ne
          (local.get $2)
          (i32.load offset=20
           (local.get $1)
          )
         )
        )
        (i32.store offset=8
         (local.tee $2
          (i32.add
           (global.get $gimport$1)
           (i32.const 12)
          )
         )
         (i32.const 0)
        )
        (i32.store offset=20
         (local.get $2)
         (i32.const 0)
        )
        (return)
       )
      )
      (if
       (i32.eq
        (local.get $5)
        (i32.load offset=32
         (global.get $gimport$1)
        )
       )
       (block
        (i32.store offset=20
         (local.tee $1
          (i32.add
           (global.get $gimport$1)
           (i32.const 12)
          )
         )
         (local.get $2)
        )
        (i32.store offset=8
         (local.get $1)
         (local.tee $0
          (i32.add
           (i32.load offset=8
            (local.get $1)
           )
           (local.get $0)
          )
         )
        )
        (i32.store offset=4
         (local.get $2)
         (i32.or
          (local.get $0)
          (i32.const 1)
         )
        )
        (i32.store
         (i32.add
          (local.get $0)
          (local.get $2)
         )
         (local.get $0)
        )
        (return)
       )
      )
      (local.set $0
       (i32.add
        (i32.and
         (local.get $1)
         (i32.const -8)
        )
        (local.get $0)
       )
      )
      (block $label$17
       (if
        (i32.le_u
         (local.get $1)
         (i32.const 255)
        )
        (block
         (drop
          (i32.eq
           (local.tee $4
            (i32.load offset=8
             (local.get $5)
            )
           )
           (i32.add
            (i32.add
             (global.get $gimport$1)
             (i32.shl
              (local.tee $7
               (i32.shr_u
                (local.get $1)
                (i32.const 3)
               )
              )
              (i32.const 3)
             )
            )
            (i32.const 52)
           )
          )
         )
         (if
          (i32.eq
           (local.get $4)
           (local.tee $1
            (i32.load offset=12
             (local.get $5)
            )
           )
          )
          (block
           (i32.store
            (local.tee $1
             (i32.add
              (global.get $gimport$1)
              (i32.const 12)
             )
            )
            (i32.and
             (i32.load
              (local.get $1)
             )
             (i32.rotl
              (i32.const -2)
              (local.get $7)
             )
            )
           )
           (br $label$17)
          )
         )
         (i32.store offset=12
          (local.get $4)
          (local.get $1)
         )
         (i32.store offset=8
          (local.get $1)
          (local.get $4)
         )
         (br $label$17)
        )
       )
       (local.set $6
        (i32.load offset=24
         (local.get $5)
        )
       )
       (block $label$20
        (if
         (i32.ne
          (local.get $5)
          (local.tee $3
           (i32.load offset=12
            (local.get $5)
           )
          )
         )
         (block
          (drop
           (i32.lt_u
            (local.tee $1
             (i32.load offset=8
              (local.get $5)
             )
            )
            (i32.load offset=28
             (global.get $gimport$1)
            )
           )
          )
          (i32.store offset=12
           (local.get $1)
           (local.get $3)
          )
          (i32.store offset=8
           (local.get $3)
           (local.get $1)
          )
          (br $label$20)
         )
        )
        (block $label$22
         (br_if $label$22
          (local.tee $4
           (i32.load
            (local.tee $1
             (i32.add
              (local.get $5)
              (i32.const 20)
             )
            )
           )
          )
         )
         (br_if $label$22
          (local.tee $4
           (i32.load
            (local.tee $1
             (i32.add
              (local.get $5)
              (i32.const 16)
             )
            )
           )
          )
         )
         (local.set $3
          (i32.const 0)
         )
         (br $label$20)
        )
        (loop $label$23
         (local.set $7
          (local.get $1)
         )
         (br_if $label$23
          (local.tee $4
           (i32.load
            (local.tee $1
             (i32.add
              (local.tee $3
               (local.get $4)
              )
              (i32.const 20)
             )
            )
           )
          )
         )
         (local.set $1
          (i32.add
           (local.get $3)
           (i32.const 16)
          )
         )
         (br_if $label$23
          (local.tee $4
           (i32.load offset=16
            (local.get $3)
           )
          )
         )
        )
        (i32.store
         (local.get $7)
         (i32.const 0)
        )
       )
       (br_if $label$17
        (i32.eqz
         (local.get $6)
        )
       )
       (block $label$24
        (if
         (i32.eq
          (local.get $5)
          (i32.load
           (local.tee $1
            (i32.add
             (i32.add
              (global.get $gimport$1)
              (i32.shl
               (local.tee $4
                (i32.load offset=28
                 (local.get $5)
                )
               )
               (i32.const 2)
              )
             )
             (i32.const 316)
            )
           )
          )
         )
         (block
          (i32.store
           (local.get $1)
           (local.get $3)
          )
          (br_if $label$24
           (local.get $3)
          )
          (i32.store offset=4
           (local.tee $1
            (i32.add
             (global.get $gimport$1)
             (i32.const 12)
            )
           )
           (i32.and
            (i32.load offset=4
             (local.get $1)
            )
            (i32.rotl
             (i32.const -2)
             (local.get $4)
            )
           )
          )
          (br $label$17)
         )
        )
        (i32.store
         (i32.add
          (local.get $6)
          (select
           (i32.const 16)
           (i32.const 20)
           (i32.eq
            (i32.load offset=16
             (local.get $6)
            )
            (local.get $5)
           )
          )
         )
         (local.get $3)
        )
        (br_if $label$17
         (i32.eqz
          (local.get $3)
         )
        )
       )
       (i32.store offset=24
        (local.get $3)
        (local.get $6)
       )
       (if
        (local.tee $1
         (i32.load offset=16
          (local.get $5)
         )
        )
        (block
         (i32.store offset=16
          (local.get $3)
          (local.get $1)
         )
         (i32.store offset=24
          (local.get $1)
          (local.get $3)
         )
        )
       )
       (br_if $label$17
        (i32.eqz
         (local.tee $1
          (i32.load offset=20
           (local.get $5)
          )
         )
        )
       )
       (i32.store offset=20
        (local.get $3)
        (local.get $1)
       )
       (i32.store offset=24
        (local.get $1)
        (local.get $3)
       )
      )
      (i32.store offset=4
       (local.get $2)
       (i32.or
        (local.get $0)
        (i32.const 1)
       )
      )
      (i32.store
       (i32.add
        (local.get $0)
        (local.get $2)
       )
       (local.get $0)
      )
      (br_if $label$13
       (i32.ne
        (local.get $2)
        (i32.load offset=32
         (global.get $gimport$1)
        )
       )
      )
      (i32.store offset=20
       (global.get $gimport$1)
       (local.get $0)
      )
      (return)
     )
    )
    (i32.store offset=4
     (local.get $5)
     (i32.and
      (local.get $1)
      (i32.const -2)
     )
    )
    (i32.store offset=4
     (local.get $2)
     (i32.or
      (local.get $0)
      (i32.const 1)
     )
    )
    (i32.store
     (i32.add
      (local.get $0)
      (local.get $2)
     )
     (local.get $0)
    )
   )
   (if
    (i32.le_u
     (local.get $0)
     (i32.const 255)
    )
    (block
     (local.set $0
      (i32.add
       (i32.add
        (local.tee $1
         (i32.add
          (global.get $gimport$1)
          (i32.const 12)
         )
        )
        (i32.shl
         (local.tee $4
          (i32.shr_u
           (local.get $0)
           (i32.const 3)
          )
         )
         (i32.const 3)
        )
       )
       (i32.const 40)
      )
     )
     (local.set $1
      (block $label$28 (result i32)
       (if
        (i32.eqz
         (i32.and
          (local.tee $1
           (i32.load
            (local.get $1)
           )
          )
          (local.tee $4
           (i32.shl
            (i32.const 1)
            (local.get $4)
           )
          )
         )
        )
        (block
         (i32.store offset=12
          (global.get $gimport$1)
          (i32.or
           (local.get $1)
           (local.get $4)
          )
         )
         (br $label$28
          (local.get $0)
         )
        )
       )
       (i32.load offset=8
        (local.get $0)
       )
      )
     )
     (i32.store offset=8
      (local.get $0)
      (local.get $2)
     )
     (i32.store offset=12
      (local.get $1)
      (local.get $2)
     )
     (i32.store offset=12
      (local.get $2)
      (local.get $0)
     )
     (i32.store offset=8
      (local.get $2)
      (local.get $1)
     )
     (return)
    )
   )
   (local.set $1
    (i32.const 31)
   )
   (i64.store offset=16 align=4
    (local.get $2)
    (i64.const 0)
   )
   (if
    (i32.le_u
     (local.get $0)
     (i32.const 16777215)
    )
    (local.set $1
     (i32.add
      (i32.or
       (i32.shl
        (local.tee $1
         (i32.sub
          (i32.shr_u
           (i32.shl
            (local.tee $3
             (i32.shl
              (local.tee $4
               (i32.shl
                (local.tee $1
                 (i32.shr_u
                  (local.get $0)
                  (i32.const 8)
                 )
                )
                (local.tee $1
                 (i32.and
                  (i32.shr_u
                   (i32.add
                    (local.get $1)
                    (i32.const 1048320)
                   )
                   (i32.const 16)
                  )
                  (i32.const 8)
                 )
                )
               )
              )
              (local.tee $4
               (i32.and
                (i32.shr_u
                 (i32.add
                  (local.get $4)
                  (i32.const 520192)
                 )
                 (i32.const 16)
                )
                (i32.const 4)
               )
              )
             )
            )
            (local.tee $3
             (i32.and
              (i32.shr_u
               (i32.add
                (local.get $3)
                (i32.const 245760)
               )
               (i32.const 16)
              )
              (i32.const 2)
             )
            )
           )
           (i32.const 15)
          )
          (i32.or
           (i32.or
            (local.get $1)
            (local.get $4)
           )
           (local.get $3)
          )
         )
        )
        (i32.const 1)
       )
       (i32.and
        (i32.shr_u
         (local.get $0)
         (i32.add
          (local.get $1)
          (i32.const 21)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 28)
     )
    )
   )
   (i32.store offset=28
    (local.get $2)
    (local.get $1)
   )
   (local.set $4
    (i32.add
     (i32.add
      (local.tee $3
       (i32.add
        (global.get $gimport$1)
        (i32.const 12)
       )
      )
      (i32.shl
       (local.get $1)
       (i32.const 2)
      )
     )
     (i32.const 304)
    )
   )
   (block $label$31
    (block $label$32
     (block $label$33
      (if
       (i32.eqz
        (i32.and
         (local.tee $3
          (i32.load offset=4
           (local.get $3)
          )
         )
         (local.tee $5
          (i32.shl
           (i32.const 1)
           (local.get $1)
          )
         )
        )
       )
       (block
        (i32.store offset=16
         (global.get $gimport$1)
         (i32.or
          (local.get $3)
          (local.get $5)
         )
        )
        (i32.store
         (local.get $4)
         (local.get $2)
        )
        (i32.store offset=24
         (local.get $2)
         (local.get $4)
        )
        (br $label$33)
       )
      )
      (local.set $1
       (i32.shl
        (local.get $0)
        (select
         (i32.const 0)
         (i32.sub
          (i32.const 25)
          (i32.shr_u
           (local.get $1)
           (i32.const 1)
          )
         )
         (i32.eq
          (local.get $1)
          (i32.const 31)
         )
        )
       )
      )
      (local.set $3
       (i32.load
        (local.get $4)
       )
      )
      (loop $label$35
       (br_if $label$32
        (i32.eq
         (i32.and
          (i32.load offset=4
           (local.tee $4
            (local.get $3)
           )
          )
          (i32.const -8)
         )
         (local.get $0)
        )
       )
       (local.set $3
        (i32.shr_u
         (local.get $1)
         (i32.const 29)
        )
       )
       (local.set $1
        (i32.shl
         (local.get $1)
         (i32.const 1)
        )
       )
       (br_if $label$35
        (local.tee $3
         (i32.load
          (local.tee $5
           (i32.add
            (i32.add
             (local.get $4)
             (i32.and
              (local.get $3)
              (i32.const 4)
             )
            )
            (i32.const 16)
           )
          )
         )
        )
       )
      )
      (i32.store
       (local.get $5)
       (local.get $2)
      )
      (i32.store offset=24
       (local.get $2)
       (local.get $4)
      )
     )
     (i32.store offset=12
      (local.get $2)
      (local.get $2)
     )
     (i32.store offset=8
      (local.get $2)
      (local.get $2)
     )
     (br $label$31)
    )
    (i32.store offset=12
     (local.tee $0
      (i32.load offset=8
       (local.get $4)
      )
     )
     (local.get $2)
    )
    (i32.store offset=8
     (local.get $4)
     (local.get $2)
    )
    (i32.store offset=24
     (local.get $2)
     (i32.const 0)
    )
    (i32.store offset=12
     (local.get $2)
     (local.get $4)
    )
    (i32.store offset=8
     (local.get $2)
     (local.get $0)
    )
   )
   (i32.store offset=32
    (local.tee $2
     (i32.add
      (global.get $gimport$1)
      (i32.const 12)
     )
    )
    (select
     (local.tee $2
      (i32.sub
       (i32.load offset=32
        (local.get $2)
       )
       (i32.const 1)
      )
     )
     (i32.const -1)
     (local.get $2)
    )
   )
  )
 )
 (func $11 (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (i32.load
     (global.get $global$0)
    )
   )
   (block
    (i32.store
     (global.get $global$1)
     (local.get $1)
    )
    (i32.store
     (global.get $global$0)
     (local.get $0)
    )
   )
  )
 )
 ;; dylink section
 ;;   memorysize: 516
 ;;   memoryalignment: 2
 ;;   tablesize: 1
 ;;   tablealignment: 0
 ;;   needed dynlib: lib.so
 ;;   extra dylink data, size 49
)

(core module $LIB
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "memory" (memory $mimport$0 0))
 (import "GOT.mem" "x" (global $gimport$0 (mut i32)))
 (export "__wasm_call_ctors" (func $0))
 (export "__wasm_apply_data_relocs" (func $0))
 (export "f" (func $1))
 (func $0
  (nop)
 )
 (func $1 (result i32)
  (i32.load
   (global.get $gimport$0)
  )
 )
 ;; dylink section
 ;;   memorysize: 0
 ;;   memoryalignment: 0
 ;;   tablesize: 0
 ;;   tablealignment: 0
)

(core module $PREVIEW1
  (func (export "proc_exit") (param i32)
    ;; TODO: use a `canon lower` import
    unreachable
  )
)
(core instance $preview1 (instantiate $PREVIEW1))

(core module $ENV
  ;; shared across all modules
  (memory (export "memory") 256 256)
  (table $funcs (export "__indirect_function_table") 4 funcref)
  (global (export "__stack_pointer") (mut i32) i32.const 65536)

  ;; pre-allocated space in memory
  (global (export "main:memory_base") i32 i32.const 65536) ;; initial __stack_pointer
  (global (export "lib:memory_base") i32 i32.const 66052) ;; main:memory_base + main memorysize
  (global (export "__heap_base") (mut i32) i32.const 66052) ;; lib:memory_base + lib memorysize, rounded up to 16-byte alignment

  ;; pre-allocated space in __indirect_function_table
  (global (export "main:table_base") i32 i32.const 0)

  ;; Global Offset Table (GOT.mem)
  (global (export "x") (mut i32) i32.const 0)
)
(core instance $env (instantiate $ENV))

(core instance $lib (instantiate $LIB
  (with "GOT.mem" (instance $env))
  (with "env" (instance
    (export "memory" (memory $env "memory"))
    (export "__memory_base" (global $env "lib:memory_base"))
  ))
))

(core instance $main (instantiate $MAIN
  (with "GOT.mem" (instance $env))
  (with "wasi_snapshot_preview1" (instance $preview1))
  (with "env" (instance
    (export "memory" (memory $env "memory"))
    (export "__indirect_function_table" (table $env "__indirect_function_table"))
    (export "__stack_pointer" (global $env "__stack_pointer"))
    (export "__memory_base" (global $env "main:memory_base"))
    (export "__table_base" (global $env "main:table_base"))
    (export "f" (func $lib "f"))
  ))
))

(core module $INIT
  (import "env" "__indirect_function_table" (table $funcs 1 funcref))
  (import "main" "__wasm_apply_data_relocs" (func $main:reloc))
  (import "lib" "__wasm_apply_data_relocs" (func $lib:reloc))

  (import "env" "main:memory_base" (global $main:memory_base i32))
  (import "main" "x" (global $x:def i32))
  (import "env" "x" (global $x:got (mut i32)))

  (import "main" "_start" (func $start))

  (func (export "start") (result i32)
    global.get $main:memory_base
    global.get $x:def
    i32.add
    global.set $x:got

    call $main:reloc
    call $lib:reloc

    call $start
    i32.const 0 ;; "ok"
  )
)
(core instance $init (instantiate $INIT
  (with "env" (instance $env))
  (with "main" (instance $main))
  (with "lib" (instance $lib))
))

(type $main (result))
(func $start (result $main) (canon lift (core func $init "start")))
(export "run" (func $start))
)
