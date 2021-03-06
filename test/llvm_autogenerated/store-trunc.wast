(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (export "trunc_i8_i32" $trunc_i8_i32)
  (export "trunc_i16_i32" $trunc_i16_i32)
  (export "trunc_i8_i64" $trunc_i8_i64)
  (export "trunc_i16_i64" $trunc_i16_i64)
  (export "trunc_i32_i64" $trunc_i32_i64)
  (func $trunc_i8_i32 (param $0 i32) (param $1 i32)
    (i32.store8
      (get_local $0)
      (get_local $1)
    )
  )
  (func $trunc_i16_i32 (param $0 i32) (param $1 i32)
    (i32.store16
      (get_local $0)
      (get_local $1)
    )
  )
  (func $trunc_i8_i64 (param $0 i32) (param $1 i64)
    (i64.store8
      (get_local $0)
      (get_local $1)
    )
  )
  (func $trunc_i16_i64 (param $0 i32) (param $1 i64)
    (i64.store16
      (get_local $0)
      (get_local $1)
    )
  )
  (func $trunc_i32_i64 (param $0 i32) (param $1 i64)
    (i64.store32
      (get_local $0)
      (get_local $1)
    )
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
