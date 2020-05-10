(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $f64_f64_f64_=>_f64 (func (param f64 f64 f64) (result f64)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_f64_i32_f64_f64_f64_f64_f64_f64_f64_=>_i32 (func (param i32 i32 i32 i32 i32 f64 i32 f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_f64 (func (param i32 i32 i32 i32 i32) (result f64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 64) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 128) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 176) "\04\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\00")
 (table $0 1 funcref)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/gc/gc.auto (mut i32) (i32.const 1))
 (global $assembly/index/Uint8Array_ID i32 (i32.const 3))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 176))
 (global $~lib/heap/__heap_base i32 (i32.const 212))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "Uint8Array_ID" (global $assembly/index/Uint8Array_ID))
 (export "pixelmatch" (func $assembly/index/pixelmatch))
 (export "rgb2y" (func $assembly/index/rgb2y))
 (export "rgb2i" (func $assembly/index/rgb2i))
 (export "rgb2q" (func $assembly/index/rgb2q))
 (export "blend" (func $assembly/index/blend))
 (func $~lib/rt/tlsf/removeBlock (; 1 ;) (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 277
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 279
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 292
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=16
  local.set $6
  local.get $1
  i32.load offset=20
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=20
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $9
  local.get $5
  local.set $8
  local.get $10
  local.get $9
  i32.const 4
  i32.shl
  local.get $8
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $9
   local.get $7
   local.set $8
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $9
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.store offset=96
   local.get $7
   i32.eqz
   if
    local.get $0
    local.set $9
    local.get $4
    local.set $8
    local.get $9
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $9
    local.get $0
    local.set $8
    local.get $4
    local.set $11
    local.get $9
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $9
    local.set $10
    local.get $8
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $9
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 2 ;) (param $0 i32) (param $1 i32)
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
  (local $12 i32)
  (local $13 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 205
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 207
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 16
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $3
    i32.or
    local.tee $2
    i32.store
    local.get $1
    local.set $6
    local.get $6
    i32.const 16
    i32.add
    local.get $6
    i32.load
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.set $4
    local.get $4
    i32.load
    local.set $5
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   i32.const 4
   i32.sub
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $3
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 228
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $6
    local.get $3
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    i32.store
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  local.get $8
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 244
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 4
   i32.shr_u
   local.set $10
  else
   i32.const 31
   local.get $8
   i32.clz
   i32.sub
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  local.get $9
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $10
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 260
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $7
  local.get $9
  local.set $3
  local.get $10
  local.set $6
  local.get $7
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $11
  i32.store offset=20
  local.get $11
  if
   local.get $11
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.set $12
  local.get $9
  local.set $7
  local.get $10
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $7
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.set $13
  local.get $9
  local.set $12
  local.get $0
  local.set $3
  local.get $9
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  local.set $7
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $7
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 3 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  local.get $2
  i32.le_u
  if (result i32)
   local.get $1
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 386
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   local.get $1
   local.get $4
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 396
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else
    nop
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 408
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 48
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 16
  i32.const 1
  i32.shl
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  i32.store
  local.get $8
  i32.const 0
  i32.store offset=16
  local.get $8
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $6
  i32.add
  i32.const 16
  i32.sub
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  i32.store
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/maybeInitialize (; 4 ;) (result i32)
  (local $0 i32)
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
  global.get $~lib/rt/tlsf/ROOT
  local.set $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/heap/__heap_base
   i32.const 15
   i32.add
   i32.const -16
   i32.and
   local.set $1
   memory.size
   local.set $2
   local.get $1
   i32.const 1572
   i32.add
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $3
   local.get $2
   i32.gt_s
   if (result i32)
    local.get $3
    local.get $2
    i32.sub
    memory.grow
    i32.const 0
    i32.lt_s
   else
    i32.const 0
   end
   if
    unreachable
   end
   local.get $1
   local.set $0
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   local.set $5
   i32.const 0
   local.set $4
   local.get $5
   local.get $4
   i32.store offset=1568
   i32.const 0
   local.set $5
   loop $for-loop|0
    local.get $5
    i32.const 23
    i32.lt_u
    local.set $4
    local.get $4
    if
     local.get $0
     local.set $8
     local.get $5
     local.set $7
     i32.const 0
     local.set $6
     local.get $8
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $6
     i32.store offset=4
     i32.const 0
     local.set $8
     loop $for-loop|1
      local.get $8
      i32.const 16
      i32.lt_u
      local.set $7
      local.get $7
      if
       local.get $0
       local.set $11
       local.get $5
       local.set $10
       local.get $8
       local.set $9
       i32.const 0
       local.set $6
       local.get $11
       local.get $10
       i32.const 4
       i32.shl
       local.get $9
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store offset=96
       local.get $8
       i32.const 1
       i32.add
       local.set $8
       br $for-loop|1
      end
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
   local.get $0
   local.get $1
   i32.const 1572
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   drop
   local.get $0
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (; 5 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 80
   i32.const 32
   i32.const 457
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $1
  i32.const 16
  local.tee $2
  local.get $1
  local.get $2
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 6 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $1
   i32.const 536870904
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 338
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 351
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (; 7 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 536870904
  i32.lt_u
  if
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 16
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (; 8 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 365
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 9 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/tlsf/collectLock
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 490
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/searchBlock
  local.set $4
  local.get $4
  i32.eqz
  if
   global.get $~lib/gc/gc.auto
   if
    i32.const 1
    global.set $~lib/rt/tlsf/collectLock
    call $~lib/rt/pure/__collect
    i32.const 0
    global.set $~lib/rt/tlsf/collectLock
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.set $4
    local.get $4
    i32.eqz
    if
     local.get $0
     local.get $3
     call $~lib/rt/tlsf/growMemory
     local.get $0
     local.get $3
     call $~lib/rt/tlsf/searchBlock
     local.set $4
     local.get $4
     i32.eqz
     if
      i32.const 0
      i32.const 32
      i32.const 502
      i32.const 19
      call $~lib/builtins/abort
      unreachable
     end
    end
   else
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.set $4
    local.get $4
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 507
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $4
  i32.load
  i32.const -4
  i32.and
  local.get $3
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 510
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $4
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $4
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  local.get $4
 )
 (func $~lib/rt/tlsf/__alloc (; 10 ;) (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (; 11 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 109
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 112
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 12 ;) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (; 13 ;) (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/typedarray/Uint8Array#get:length (; 14 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $assembly/index/colorDelta (; 15 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  local.get $0
  local.get $2
  i32.add
  i32.load
  local.set $5
  local.get $1
  local.get $3
  i32.add
  i32.load
  local.set $6
  local.get $5
  i32.const 0
  i32.shr_u
  i32.const 255
  i32.and
  f64.convert_i32_u
  local.set $7
  local.get $5
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  f64.convert_i32_u
  local.set $8
  local.get $5
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  f64.convert_i32_u
  local.set $9
  local.get $5
  i32.const 24
  i32.shr_u
  f64.convert_i32_u
  local.set $10
  local.get $6
  i32.const 0
  i32.shr_u
  i32.const 255
  i32.and
  f64.convert_i32_u
  local.set $11
  local.get $6
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  f64.convert_i32_u
  local.set $12
  local.get $6
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  f64.convert_i32_u
  local.set $13
  local.get $6
  i32.const 24
  i32.shr_u
  f64.convert_i32_u
  local.set $14
  local.get $10
  local.get $14
  f64.eq
  local.get $7
  local.get $11
  f64.eq
  i32.and
  local.get $8
  local.get $12
  f64.eq
  i32.and
  local.get $9
  local.get $13
  f64.eq
  i32.and
  if
   f64.const 0
   return
  end
  local.get $10
  f64.const 255
  f64.lt
  if
   local.get $10
   f64.const 1
   f64.const 255
   f64.div
   f64.mul
   local.set $10
   local.get $7
   local.set $16
   local.get $10
   local.set $15
   f64.const 255
   local.get $16
   f64.const 255
   f64.sub
   local.get $15
   f64.mul
   f64.add
   local.set $7
   local.get $8
   local.set $16
   local.get $10
   local.set $15
   f64.const 255
   local.get $16
   f64.const 255
   f64.sub
   local.get $15
   f64.mul
   f64.add
   local.set $8
   local.get $9
   local.set $16
   local.get $10
   local.set $15
   f64.const 255
   local.get $16
   f64.const 255
   f64.sub
   local.get $15
   f64.mul
   f64.add
   local.set $9
  end
  local.get $14
  f64.const 255
  f64.lt
  if
   local.get $14
   f64.const 1
   f64.const 255
   f64.div
   f64.mul
   local.set $14
   local.get $11
   local.set $16
   local.get $14
   local.set $15
   f64.const 255
   local.get $16
   f64.const 255
   f64.sub
   local.get $15
   f64.mul
   f64.add
   local.set $11
   local.get $12
   local.set $16
   local.get $14
   local.set $15
   f64.const 255
   local.get $16
   f64.const 255
   f64.sub
   local.get $15
   f64.mul
   f64.add
   local.set $12
   local.get $13
   local.set $16
   local.get $14
   local.set $15
   f64.const 255
   local.get $16
   f64.const 255
   f64.sub
   local.get $15
   f64.mul
   f64.add
   local.set $13
  end
  local.get $7
  local.set $17
  local.get $8
  local.set $16
  local.get $9
  local.set $15
  local.get $17
  f64.const 0.29889531
  f64.mul
  local.get $16
  f64.const 0.58662247
  f64.mul
  f64.add
  local.get $15
  f64.const 0.11448223
  f64.mul
  f64.add
  local.get $11
  local.set $17
  local.get $12
  local.set $16
  local.get $13
  local.set $15
  local.get $17
  f64.const 0.29889531
  f64.mul
  local.get $16
  f64.const 0.58662247
  f64.mul
  f64.add
  local.get $15
  f64.const 0.11448223
  f64.mul
  f64.add
  f64.sub
  local.set $17
  local.get $4
  if
   local.get $17
   return
  end
  local.get $7
  local.set $18
  local.get $8
  local.set $16
  local.get $9
  local.set $15
  local.get $18
  f64.const 0.59597799
  f64.mul
  local.get $16
  f64.const 0.2741761
  f64.mul
  f64.sub
  local.get $15
  f64.const 0.32180189
  f64.mul
  f64.sub
  local.get $11
  local.set $18
  local.get $12
  local.set $16
  local.get $13
  local.set $15
  local.get $18
  f64.const 0.59597799
  f64.mul
  local.get $16
  f64.const 0.2741761
  f64.mul
  f64.sub
  local.get $15
  f64.const 0.32180189
  f64.mul
  f64.sub
  f64.sub
  local.set $18
  local.get $7
  local.set $19
  local.get $8
  local.set $16
  local.get $9
  local.set $15
  local.get $19
  f64.const 0.21147017
  f64.mul
  local.get $16
  f64.const 0.52261711
  f64.mul
  f64.sub
  local.get $15
  f64.const 0.31114694
  f64.mul
  f64.add
  local.get $11
  local.set $19
  local.get $12
  local.set $16
  local.get $13
  local.set $15
  local.get $19
  f64.const 0.21147017
  f64.mul
  local.get $16
  f64.const 0.52261711
  f64.mul
  f64.sub
  local.get $15
  f64.const 0.31114694
  f64.mul
  f64.add
  f64.sub
  local.set $19
  f64.const 0.5053
  local.get $17
  f64.mul
  local.get $17
  f64.mul
  f64.const 0.299
  local.get $18
  f64.mul
  local.get $18
  f64.mul
  f64.add
  f64.const 0.1957
  local.get $19
  f64.mul
  local.get $19
  f64.mul
  f64.add
 )
 (func $assembly/index/hasManySiblings (; 16 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $5
  i32.const 0
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $5
  local.get $2
  i32.const 1
  i32.sub
  local.tee $6
  i32.const 0
  local.tee $7
  local.get $6
  local.get $7
  i32.gt_s
  select
  local.set $6
  local.get $1
  i32.const 1
  i32.add
  local.tee $7
  local.get $3
  i32.const 1
  i32.sub
  local.tee $8
  local.get $7
  local.get $8
  i32.lt_s
  select
  local.set $7
  local.get $2
  i32.const 1
  i32.add
  local.tee $8
  local.get $4
  i32.const 1
  i32.sub
  local.tee $9
  local.get $8
  local.get $9
  i32.lt_s
  select
  local.set $8
  local.get $2
  local.get $3
  i32.mul
  local.get $1
  i32.add
  i32.const 4
  i32.mul
  local.set $9
  local.get $1
  local.get $5
  i32.eq
  local.get $1
  local.get $7
  i32.eq
  i32.or
  local.get $2
  local.get $6
  i32.eq
  i32.or
  local.get $2
  local.get $8
  i32.eq
  i32.or
  local.set $10
  local.get $6
  local.set $11
  loop $for-loop|0
   local.get $11
   local.get $8
   i32.le_s
   local.set $12
   local.get $12
   if
    local.get $11
    local.get $3
    i32.mul
    i32.const 2
    i32.shl
    local.set $13
    local.get $5
    local.set $14
    loop $for-loop|1
     local.get $14
     local.get $7
     i32.le_s
     local.set $15
     local.get $15
     if
      block $for-continue|1
       local.get $14
       local.get $1
       i32.eq
       local.get $11
       local.get $2
       i32.eq
       i32.and
       if
        br $for-continue|1
       end
       local.get $13
       local.get $14
       i32.const 2
       i32.shl
       i32.add
       local.set $16
       local.get $10
       local.get $0
       local.get $9
       i32.add
       i32.load
       local.get $0
       local.get $16
       i32.add
       i32.load
       i32.eq
       i32.add
       local.set $10
       local.get $10
       i32.const 2
       i32.gt_s
       if
        i32.const 1
        return
       end
      end
      local.get $14
      i32.const 1
      i32.add
      local.set $14
      br $for-loop|1
     end
    end
    local.get $11
    i32.const 1
    i32.add
    local.set $11
    br $for-loop|0
   end
  end
  i32.const 0
 )
 (func $assembly/index/antialiased (; 17 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 f64)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $6
  i32.const 0
  local.tee $7
  local.get $6
  local.get $7
  i32.gt_s
  select
  local.set $6
  local.get $2
  i32.const 1
  i32.sub
  local.tee $7
  i32.const 0
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $7
  local.get $1
  i32.const 1
  i32.add
  local.tee $8
  local.get $3
  i32.const 1
  i32.sub
  local.tee $9
  local.get $8
  local.get $9
  i32.lt_s
  select
  local.set $8
  local.get $2
  i32.const 1
  i32.add
  local.tee $9
  local.get $4
  i32.const 1
  i32.sub
  local.tee $10
  local.get $9
  local.get $10
  i32.lt_s
  select
  local.set $9
  local.get $2
  local.get $3
  i32.mul
  local.get $1
  i32.add
  i32.const 4
  i32.mul
  local.set $10
  local.get $1
  local.get $6
  i32.eq
  local.get $1
  local.get $8
  i32.eq
  i32.or
  local.get $2
  local.get $7
  i32.eq
  i32.or
  local.get $2
  local.get $9
  i32.eq
  i32.or
  local.set $11
  f64.const 0
  local.set $12
  f64.const 0
  local.set $13
  i32.const -1
  local.set $14
  i32.const -1
  local.set $15
  i32.const -1
  local.set $16
  i32.const -1
  local.set $17
  local.get $6
  local.set $18
  loop $for-loop|0
   local.get $18
   local.get $8
   i32.le_s
   local.set $19
   local.get $19
   if
    local.get $7
    local.set $20
    loop $for-loop|1
     local.get $20
     local.get $9
     i32.le_s
     local.set $21
     local.get $21
     if
      block $for-continue|1
       local.get $18
       local.get $1
       i32.eq
       local.get $20
       local.get $2
       i32.eq
       i32.and
       if
        br $for-continue|1
       end
       local.get $0
       local.get $0
       local.get $10
       local.get $20
       local.get $3
       i32.mul
       local.get $18
       i32.add
       i32.const 4
       i32.mul
       i32.const 1
       call $assembly/index/colorDelta
       local.set $22
       local.get $22
       f64.const 0
       f64.eq
       if
        local.get $11
        i32.const 1
        i32.add
        local.set $11
        local.get $11
        i32.const 2
        i32.gt_s
        if
         i32.const 0
         return
        end
       else
        local.get $22
        local.get $12
        f64.lt
        if
         local.get $22
         local.set $12
         local.get $18
         local.set $14
         local.get $20
         local.set $15
        else
         local.get $22
         local.get $13
         f64.gt
         if
          local.get $22
          local.set $13
          local.get $18
          local.set $16
          local.get $20
          local.set $17
         end
        end
       end
      end
      local.get $20
      i32.const 1
      i32.add
      local.set $20
      br $for-loop|1
     end
    end
    local.get $18
    i32.const 1
    i32.add
    local.set $18
    br $for-loop|0
   end
  end
  local.get $12
  f64.const 0
  f64.eq
  local.get $13
  f64.const 0
  f64.eq
  i32.or
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $14
  local.get $15
  local.get $3
  local.get $4
  call $assembly/index/hasManySiblings
  if (result i32)
   local.get $5
   local.get $14
   local.get $15
   local.get $3
   local.get $4
   call $assembly/index/hasManySiblings
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   local.get $0
   local.get $16
   local.get $17
   local.get $3
   local.get $4
   call $assembly/index/hasManySiblings
   if (result i32)
    local.get $5
    local.get $16
    local.get $17
    local.get $3
    local.get $4
    call $assembly/index/hasManySiblings
   else
    i32.const 0
   end
  end
 )
 (func $assembly/index/pixelmatch (; 18 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 f64) (param $6 i32) (param $7 f64) (param $8 f64) (param $9 f64) (param $10 f64) (param $11 f64) (param $12 f64) (param $13 f64) (result i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 f64)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 f64)
  (local $35 f64)
  (local $36 f64)
  (local $37 f64)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 f64)
  (local $50 f64)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  local.get $1
  call $~lib/typedarray/Uint8Array#get:length
  i32.ne
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 0
   i32.ne
   if (result i32)
    local.get $2
    call $~lib/typedarray/Uint8Array#get:length
    local.get $0
    call $~lib/typedarray/Uint8Array#get:length
    i32.ne
   else
    i32.const 0
   end
  end
  if
   i32.const -1
   local.set $14
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $14
   return
  end
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  local.get $3
  local.get $4
  i32.mul
  i32.const 4
  i32.mul
  i32.ne
  if
   i32.const -2
   local.set $14
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $14
   return
  end
  local.get $0
  i32.load offset=4
  local.set $14
  local.get $1
  i32.load offset=4
  local.set $15
  local.get $2
  i32.load offset=4
  local.set $16
  local.get $5
  local.get $5
  f64.ne
  if (result f64)
   f64.const 0.1
  else
   local.get $5
  end
  local.set $5
  local.get $6
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  local.set $6
  local.get $7
  local.get $7
  f64.ne
  if (result f64)
   f64.const 0.1
  else
   local.get $7
  end
  local.set $7
  local.get $3
  local.get $4
  i32.mul
  i32.const 4
  i32.mul
  local.set $17
  local.get $14
  local.set $20
  local.get $15
  local.set $19
  local.get $17
  local.set $18
  block $~lib/util/memory/memcmp|inlined.0 (result i32)
   local.get $20
   local.set $23
   local.get $19
   local.set $22
   local.get $18
   local.set $21
   local.get $23
   local.get $22
   i32.eq
   if
    i32.const 0
    br $~lib/util/memory/memcmp|inlined.0
   end
   local.get $23
   i32.const 7
   i32.and
   local.get $22
   i32.const 7
   i32.and
   i32.eq
   if
    loop $while-continue|0
     local.get $23
     i32.const 7
     i32.and
     local.set $24
     local.get $24
     if
      local.get $21
      i32.eqz
      if
       i32.const 0
       br $~lib/util/memory/memcmp|inlined.0
      end
      local.get $23
      i32.load8_u
      local.set $25
      local.get $22
      i32.load8_u
      local.set $26
      local.get $25
      local.get $26
      i32.ne
      if
       local.get $25
       local.get $26
       i32.sub
       br $~lib/util/memory/memcmp|inlined.0
      end
      local.get $21
      i32.const 1
      i32.sub
      local.set $21
      local.get $23
      i32.const 1
      i32.add
      local.set $23
      local.get $22
      i32.const 1
      i32.add
      local.set $22
      br $while-continue|0
     end
    end
    block $while-break|1
     loop $while-continue|1
      local.get $21
      i32.const 8
      i32.ge_u
      local.set $24
      local.get $24
      if
       local.get $23
       i64.load
       local.get $22
       i64.load
       i64.ne
       if
        br $while-break|1
       end
       local.get $23
       i32.const 8
       i32.add
       local.set $23
       local.get $22
       i32.const 8
       i32.add
       local.set $22
       local.get $21
       i32.const 8
       i32.sub
       local.set $21
       br $while-continue|1
      end
     end
    end
   end
   loop $while-continue|2
    local.get $21
    local.tee $24
    i32.const 1
    i32.sub
    local.set $21
    local.get $24
    local.set $24
    local.get $24
    if
     local.get $23
     i32.load8_u
     local.set $27
     local.get $22
     i32.load8_u
     local.set $28
     local.get $27
     local.get $28
     i32.ne
     if
      local.get $27
      local.get $28
      i32.sub
      br $~lib/util/memory/memcmp|inlined.0
     end
     local.get $23
     i32.const 1
     i32.add
     local.set $23
     local.get $22
     i32.const 1
     i32.add
     local.set $22
     br $while-continue|2
    end
   end
   i32.const 0
  end
  i32.const 0
  i32.eq
  local.set $20
  local.get $20
  if
   local.get $2
   if
    i32.const 0
    local.set $19
    loop $for-loop|3
     local.get $19
     local.get $17
     i32.lt_s
     local.set $18
     local.get $18
     if
      local.get $14
      local.set $22
      local.get $19
      local.set $21
      local.get $7
      local.set $29
      local.get $16
      local.set $24
      local.get $22
      local.get $21
      i32.add
      i32.load
      local.set $23
      local.get $23
      i32.const 0
      i32.shr_u
      i32.const 255
      i32.and
      local.set $30
      local.get $23
      i32.const 8
      i32.shr_u
      i32.const 255
      i32.and
      local.set $31
      local.get $23
      i32.const 16
      i32.shr_u
      i32.const 255
      i32.and
      local.set $32
      local.get $23
      i32.const 24
      i32.shr_u
      local.set $33
      local.get $30
      f64.convert_i32_u
      local.set $36
      local.get $31
      f64.convert_i32_u
      local.set $35
      local.get $32
      f64.convert_i32_u
      local.set $34
      local.get $36
      f64.const 0.29889531
      f64.mul
      local.get $35
      f64.const 0.58662247
      f64.mul
      f64.add
      local.get $34
      f64.const 0.11448223
      f64.mul
      f64.add
      local.set $36
      local.get $33
      f64.convert_i32_u
      local.get $29
      f64.mul
      f64.const 1
      f64.const 255
      f64.div
      f64.mul
      local.set $35
      local.get $36
      local.set $37
      local.get $35
      local.set $34
      f64.const 255
      local.get $37
      f64.const 255
      f64.sub
      local.get $34
      f64.mul
      f64.add
      i32.trunc_f64_u
      local.set $38
      local.get $24
      local.set $43
      local.get $21
      local.set $42
      local.get $38
      local.set $41
      local.get $38
      local.set $40
      local.get $38
      local.set $39
      local.get $43
      local.get $42
      i32.add
      local.get $41
      local.get $40
      i32.const 8
      i32.shl
      i32.or
      local.get $39
      i32.const 16
      i32.shl
      i32.or
      i32.const -16777216
      i32.or
      i32.store
      local.get $19
      i32.const 4
      i32.add
      local.set $19
      br $for-loop|3
     end
    end
   end
   i32.const 0
   local.set $19
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $19
   return
  end
  f64.const 35215
  local.get $5
  f64.mul
  local.get $5
  f64.mul
  local.set $35
  i32.const 0
  local.set $19
  local.get $8
  local.get $8
  f64.ne
  if (result i32)
   i32.const 255
  else
   local.get $8
   i32.trunc_f64_u
  end
  local.set $18
  local.get $9
  local.get $9
  f64.ne
  if (result i32)
   i32.const 255
  else
   local.get $9
   i32.trunc_f64_u
  end
  local.set $38
  local.get $10
  local.get $10
  f64.ne
  if (result i32)
   i32.const 0
  else
   local.get $10
   i32.trunc_f64_u
  end
  local.set $33
  local.get $11
  local.get $11
  f64.ne
  if (result i32)
   i32.const 255
  else
   local.get $11
   i32.trunc_f64_u
  end
  local.set $32
  local.get $12
  local.get $12
  f64.ne
  if (result i32)
   i32.const 0
  else
   local.get $12
   i32.trunc_f64_u
  end
  local.set $31
  local.get $13
  local.get $13
  f64.ne
  if (result i32)
   i32.const 0
  else
   local.get $13
   i32.trunc_f64_u
  end
  local.set $30
  i32.const 0
  local.set $23
  loop $for-loop|4
   local.get $23
   local.get $4
   i32.lt_s
   local.set $22
   local.get $22
   if
    local.get $23
    local.get $3
    i32.mul
    i32.const 2
    i32.shl
    local.set $21
    i32.const 0
    local.set $24
    loop $for-loop|5
     local.get $24
     local.get $3
     i32.lt_s
     local.set $43
     local.get $43
     if
      local.get $21
      local.get $24
      i32.const 2
      i32.shl
      i32.add
      local.set $42
      local.get $14
      local.get $15
      local.get $42
      local.get $42
      i32.const 0
      call $assembly/index/colorDelta
      local.set $36
      local.get $36
      local.get $35
      f64.gt
      if
       local.get $6
       i32.eqz
       if (result i32)
        local.get $14
        local.get $24
        local.get $23
        local.get $3
        local.get $4
        local.get $15
        call $assembly/index/antialiased
        if (result i32)
         i32.const 1
        else
         local.get $15
         local.get $24
         local.get $23
         local.get $3
         local.get $4
         local.get $14
         call $assembly/index/antialiased
        end
       else
        i32.const 0
       end
       if
        local.get $2
        if
         local.get $16
         local.set $45
         local.get $42
         local.set $44
         local.get $18
         local.set $41
         local.get $38
         local.set $40
         local.get $33
         local.set $39
         local.get $45
         local.get $44
         i32.add
         local.get $41
         local.get $40
         i32.const 8
         i32.shl
         i32.or
         local.get $39
         i32.const 16
         i32.shl
         i32.or
         i32.const -16777216
         i32.or
         i32.store
        end
       else
        local.get $2
        if
         local.get $16
         local.set $45
         local.get $42
         local.set $44
         local.get $32
         local.set $41
         local.get $31
         local.set $40
         local.get $30
         local.set $39
         local.get $45
         local.get $44
         i32.add
         local.get $41
         local.get $40
         i32.const 8
         i32.shl
         i32.or
         local.get $39
         i32.const 16
         i32.shl
         i32.or
         i32.const -16777216
         i32.or
         i32.store
        end
        local.get $19
        i32.const 1
        i32.add
        local.set $19
       end
      else
       local.get $2
       if
        local.get $14
        local.set $41
        local.get $42
        local.set $40
        local.get $7
        local.set $34
        local.get $16
        local.set $39
        local.get $41
        local.get $40
        i32.add
        i32.load
        local.set $45
        local.get $45
        i32.const 0
        i32.shr_u
        i32.const 255
        i32.and
        local.set $44
        local.get $45
        i32.const 8
        i32.shr_u
        i32.const 255
        i32.and
        local.set $46
        local.get $45
        i32.const 16
        i32.shr_u
        i32.const 255
        i32.and
        local.set $47
        local.get $45
        i32.const 24
        i32.shr_u
        local.set $48
        local.get $44
        f64.convert_i32_u
        local.set $49
        local.get $46
        f64.convert_i32_u
        local.set $29
        local.get $47
        f64.convert_i32_u
        local.set $37
        local.get $49
        f64.const 0.29889531
        f64.mul
        local.get $29
        f64.const 0.58662247
        f64.mul
        f64.add
        local.get $37
        f64.const 0.11448223
        f64.mul
        f64.add
        local.set $49
        local.get $48
        f64.convert_i32_u
        local.get $34
        f64.mul
        f64.const 1
        f64.const 255
        f64.div
        f64.mul
        local.set $29
        local.get $49
        local.set $50
        local.get $29
        local.set $37
        f64.const 255
        local.get $50
        f64.const 255
        f64.sub
        local.get $37
        f64.mul
        f64.add
        i32.trunc_f64_u
        local.set $51
        local.get $39
        local.set $56
        local.get $40
        local.set $55
        local.get $51
        local.set $54
        local.get $51
        local.set $53
        local.get $51
        local.set $52
        local.get $56
        local.get $55
        i32.add
        local.get $54
        local.get $53
        i32.const 8
        i32.shl
        i32.or
        local.get $52
        i32.const 16
        i32.shl
        i32.or
        i32.const -16777216
        i32.or
        i32.store
       end
      end
      local.get $24
      i32.const 1
      i32.add
      local.set $24
      br $for-loop|5
     end
    end
    local.get $23
    i32.const 1
    i32.add
    local.set $23
    br $for-loop|4
   end
  end
  local.get $19
  local.set $23
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $23
 )
 (func $assembly/index/rgb2y (; 19 ;) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  local.get $0
  f64.const 0.29889531
  f64.mul
  local.get $1
  f64.const 0.58662247
  f64.mul
  f64.add
  local.get $2
  f64.const 0.11448223
  f64.mul
  f64.add
 )
 (func $assembly/index/rgb2i (; 20 ;) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  local.get $0
  f64.const 0.59597799
  f64.mul
  local.get $1
  f64.const 0.2741761
  f64.mul
  f64.sub
  local.get $2
  f64.const 0.32180189
  f64.mul
  f64.sub
 )
 (func $assembly/index/rgb2q (; 21 ;) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  local.get $0
  f64.const 0.21147017
  f64.mul
  local.get $1
  f64.const 0.52261711
  f64.mul
  f64.sub
  local.get $2
  f64.const 0.31114694
  f64.mul
  f64.add
 )
 (func $assembly/index/blend (; 22 ;) (param $0 f64) (param $1 f64) (result f64)
  f64.const 255
  local.get $0
  f64.const 255
  f64.sub
  local.get $1
  f64.mul
  f64.add
 )
 (func $~lib/rt/pure/__collect (; 23 ;)
  return
 )
 (func $~lib/rt/tlsf/freeBlock (; 24 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/pure/decrement (; 25 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 122
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 126
    i32.const 17
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  else
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 136
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 268435455
   i32.const -1
   i32.xor
   i32.and
   local.get $2
   i32.const 1
   i32.sub
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/rt/pure/__visit (; 26 ;) (param $0 i32) (param $1 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  local.get $1
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 69
   i32.const 15
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/pure/decrement
 )
 (func $~lib/rt/__visit_members (; 27 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $switch$1$default
   block $switch$1$case$4
    block $switch$1$case$2
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$default
    end
    return
   end
   local.get $0
   i32.load
   local.tee $2
   if
    local.get $2
    local.get $1
    call $~lib/rt/pure/__visit
   end
   return
  end
  unreachable
 )
)
