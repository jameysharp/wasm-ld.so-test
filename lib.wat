(module
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

