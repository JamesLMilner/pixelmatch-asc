(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $f64_f64_f64_=>_f64 (func (param f64 f64 f64) (result f64)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_f64_i32_f64_f64_f64_f64_f64_f64_f64_=>_i32 (func (param i32 i32 i32 i32 i32 f64 i32 f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_f64 (func (param i32 i32 i32 i32 i32) (result f64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 80) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 128) "\04\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $assembly/index/Uint8Array_ID i32 (i32.const 3))
 (global $~lib/rt/__rtti_base i32 (i32.const 128))
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
  local.get $1
  i32.load
  i32.const -4
  i32.and
  local.tee $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $4
   i32.const 0
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $4
   local.get $3
   i32.const 7
   i32.sub
  end
  local.set $3
  local.get $1
  i32.load offset=20
  local.set $2
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $2
   i32.store offset=20
  end
  local.get $2
  if
   local.get $2
   local.get $5
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.get $4
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $4
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $2
   i32.store offset=96
   local.get $2
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.const 1
    local.get $4
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $3
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
  local.get $1
  i32.load
  local.set $3
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    local.get $3
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $4
    i32.load
    local.set $5
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $6
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $7
    local.get $6
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $2
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $4
   i32.const 0
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $4
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $3
  i32.const 4
  i32.shl
  local.get $4
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $2
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $2
  i32.store offset=20
  local.get $2
  if
   local.get $2
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $4
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $4
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 3 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/maybeInitialize (; 4 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $0
  i32.eqz
  if
   i32.const 1
   memory.size
   local.tee $0
   i32.gt_s
   if (result i32)
    i32.const 1
    local.get $0
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
   i32.const 176
   local.tee $0
   i32.const 0
   i32.store
   i32.const 1744
   i32.const 0
   i32.store
   loop $for-loop|0
    local.get $1
    i32.const 23
    i32.lt_u
    if
     local.get $1
     i32.const 2
     i32.shl
     i32.const 176
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 16
      i32.lt_u
      if
       local.get $1
       i32.const 4
       i32.shl
       local.get $2
       i32.add
       i32.const 2
       i32.shl
       i32.const 176
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   i32.const 176
   i32.const 1760
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 176
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (; 5 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 32
   i32.const 96
   i32.const 457
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 6 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
   i32.const 0
  else
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
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $0
    local.get $1
    i32.ctz
    local.tee $0
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.ctz
    local.get $0
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/growMemory (; 7 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  memory.size
  local.tee $2
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
   i32.const 1
   i32.sub
   i32.add
  else
   local.get $1
  end
  i32.const 16
  local.get $0
  i32.load offset=1568
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.sub
  i32.ne
  i32.shl
  i32.add
  i32.const 65535
  i32.add
  i32.const -65536
  i32.and
  i32.const 16
  i32.shr_u
  local.tee $1
  local.get $2
  local.get $1
  i32.gt_s
  select
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $1
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
 )
 (func $~lib/rt/tlsf/prepareBlock (; 8 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
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
   local.get $2
   local.get $1
   i32.const 16
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $1
   i32.const 16
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 9 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $4
  call $~lib/rt/tlsf/searchBlock
  local.tee $3
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/tlsf/collectLock
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/searchBlock
   local.tee $3
   i32.eqz
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/searchBlock
    local.set $3
   end
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $4
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (; 10 ;) (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/__retain (; 11 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 164
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (; 12 ;) (param $0 i32)
  local.get $0
  i32.const 164
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $assembly/index/colorDelta (; 13 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  local.get $0
  local.get $2
  i32.add
  i32.load
  local.tee $0
  i32.const 24
  i32.shr_u
  f64.convert_i32_u
  local.tee $5
  local.get $1
  local.get $3
  i32.add
  i32.load
  local.tee $1
  i32.const 24
  i32.shr_u
  f64.convert_i32_u
  local.tee $12
  f64.eq
  local.get $0
  i32.const 255
  i32.and
  f64.convert_i32_u
  local.tee $6
  local.get $1
  i32.const 255
  i32.and
  f64.convert_i32_u
  local.tee $7
  f64.eq
  i32.and
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  f64.convert_i32_u
  local.tee $8
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  f64.convert_i32_u
  local.tee $9
  f64.eq
  i32.and
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  f64.convert_i32_u
  local.tee $10
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  f64.convert_i32_u
  local.tee $11
  f64.eq
  i32.and
  if
   f64.const 0
   return
  end
  local.get $5
  f64.const 255
  f64.lt
  if
   f64.const 255
   local.get $6
   f64.const 255
   f64.sub
   local.get $5
   f64.const 0.00392156862745098
   f64.mul
   local.tee $5
   f64.mul
   f64.add
   local.set $6
   f64.const 255
   local.get $10
   f64.const 255
   f64.sub
   local.get $5
   f64.mul
   f64.add
   local.set $10
   f64.const 255
   local.get $8
   f64.const 255
   f64.sub
   local.get $5
   f64.mul
   f64.add
   local.set $8
  end
  local.get $12
  f64.const 255
  f64.lt
  if
   f64.const 255
   local.get $7
   f64.const 255
   f64.sub
   local.get $12
   f64.const 0.00392156862745098
   f64.mul
   local.tee $5
   f64.mul
   f64.add
   local.set $7
   f64.const 255
   local.get $11
   f64.const 255
   f64.sub
   local.get $5
   f64.mul
   f64.add
   local.set $11
   f64.const 255
   local.get $9
   f64.const 255
   f64.sub
   local.get $5
   f64.mul
   f64.add
   local.set $9
  end
  local.get $6
  f64.const 0.29889531
  f64.mul
  local.get $8
  f64.const 0.58662247
  f64.mul
  f64.add
  local.get $10
  f64.const 0.11448223
  f64.mul
  f64.add
  local.get $7
  f64.const 0.29889531
  f64.mul
  local.get $9
  f64.const 0.58662247
  f64.mul
  f64.add
  local.get $11
  f64.const 0.11448223
  f64.mul
  f64.add
  f64.sub
  local.set $5
  local.get $4
  if
   local.get $5
   return
  end
  f64.const 0.5053
  local.get $5
  f64.mul
  local.get $5
  f64.mul
  f64.const 0.299
  local.get $6
  f64.const 0.59597799
  f64.mul
  local.get $8
  f64.const 0.2741761
  f64.mul
  f64.sub
  local.get $10
  f64.const 0.32180189
  f64.mul
  f64.sub
  local.get $7
  f64.const 0.59597799
  f64.mul
  local.get $9
  f64.const 0.2741761
  f64.mul
  f64.sub
  local.get $11
  f64.const 0.32180189
  f64.mul
  f64.sub
  f64.sub
  local.tee $5
  f64.mul
  local.get $5
  f64.mul
  f64.add
  f64.const 0.1957
  local.get $6
  f64.const 0.21147017
  f64.mul
  local.get $8
  f64.const 0.52261711
  f64.mul
  f64.sub
  local.get $10
  f64.const 0.31114694
  f64.mul
  f64.add
  local.get $7
  f64.const 0.21147017
  f64.mul
  local.get $9
  f64.const 0.52261711
  f64.mul
  f64.sub
  local.get $11
  f64.const 0.31114694
  f64.mul
  f64.add
  f64.sub
  local.tee $6
  f64.mul
  local.get $6
  f64.mul
  f64.add
 )
 (func $assembly/index/hasManySiblings (; 14 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  local.get $2
  local.get $3
  i32.mul
  i32.add
  i32.const 2
  i32.shl
  local.set $8
  local.get $1
  local.get $1
  i32.const 1
  i32.sub
  local.tee $5
  i32.const 0
  local.get $5
  i32.const 0
  i32.gt_s
  select
  local.tee $9
  i32.eq
  local.get $1
  local.get $1
  i32.const 1
  i32.add
  local.tee $6
  local.get $3
  i32.const 1
  i32.sub
  local.tee $5
  local.get $6
  local.get $5
  i32.lt_s
  select
  local.tee $10
  i32.eq
  i32.or
  local.get $2
  local.get $2
  i32.const 1
  i32.sub
  local.tee $5
  i32.const 0
  local.get $5
  i32.const 0
  i32.gt_s
  select
  local.tee $5
  i32.eq
  i32.or
  local.get $2
  local.get $2
  i32.const 1
  i32.add
  local.tee $6
  local.get $4
  i32.const 1
  i32.sub
  local.tee $4
  local.get $6
  local.get $4
  i32.lt_s
  select
  local.tee $11
  i32.eq
  i32.or
  local.set $7
  loop $for-loop|0
   local.get $5
   local.get $11
   i32.le_s
   if
    local.get $3
    local.get $5
    i32.mul
    i32.const 2
    i32.shl
    local.set $6
    local.get $9
    local.set $4
    loop $for-loop|1
     local.get $4
     local.get $10
     i32.le_s
     if
      local.get $1
      local.get $4
      i32.eq
      local.get $2
      local.get $5
      i32.eq
      i32.and
      i32.eqz
      if
       local.get $7
       local.get $0
       local.get $8
       i32.add
       i32.load
       local.get $0
       local.get $6
       local.get $4
       i32.const 2
       i32.shl
       i32.add
       i32.add
       i32.load
       i32.eq
       i32.add
       local.tee $7
       i32.const 2
       i32.gt_s
       if
        i32.const 1
        return
       end
      end
      local.get $4
      i32.const 1
      i32.add
      local.set $4
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
  i32.const 0
 )
 (func $assembly/index/antialiased (; 15 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f64)
  (local $15 f64)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  local.get $1
  local.get $2
  local.get $3
  i32.mul
  i32.add
  i32.const 2
  i32.shl
  local.set $16
  local.get $1
  local.get $1
  i32.const 1
  i32.sub
  local.tee $7
  i32.const 0
  local.get $7
  i32.const 0
  i32.gt_s
  select
  local.tee $7
  i32.eq
  local.get $1
  local.get $1
  i32.const 1
  i32.add
  local.tee $6
  local.get $3
  i32.const 1
  i32.sub
  local.tee $8
  local.get $6
  local.get $8
  i32.lt_s
  select
  local.tee $17
  i32.eq
  i32.or
  local.get $2
  local.get $2
  i32.const 1
  i32.sub
  local.tee $6
  i32.const 0
  local.get $6
  i32.const 0
  i32.gt_s
  select
  local.tee $18
  i32.eq
  i32.or
  local.get $2
  local.get $2
  i32.const 1
  i32.add
  local.tee $6
  local.get $4
  i32.const 1
  i32.sub
  local.tee $8
  local.get $6
  local.get $8
  i32.lt_s
  select
  local.tee $19
  i32.eq
  i32.or
  local.set $13
  i32.const -1
  local.set $8
  i32.const -1
  local.set $10
  i32.const -1
  local.set $11
  i32.const -1
  local.set $12
  loop $for-loop|0
   local.get $7
   local.get $17
   i32.le_s
   if
    local.get $18
    local.set $6
    loop $for-loop|1
     local.get $6
     local.get $19
     i32.le_s
     if
      local.get $1
      local.get $7
      i32.eq
      local.get $2
      local.get $6
      i32.eq
      i32.and
      i32.eqz
      if
       local.get $0
       local.get $0
       local.get $16
       local.get $7
       local.get $3
       local.get $6
       i32.mul
       i32.add
       i32.const 2
       i32.shl
       i32.const 1
       call $assembly/index/colorDelta
       local.tee $9
       f64.const 0
       f64.eq
       if
        local.get $13
        i32.const 1
        i32.add
        local.tee $13
        i32.const 2
        i32.gt_s
        if
         i32.const 0
         return
        end
       else
        local.get $9
        local.get $14
        f64.lt
        if
         local.get $9
         local.set $14
         local.get $7
         local.set $8
         local.get $6
         local.set $10
        else
         local.get $9
         local.get $15
         f64.gt
         if
          local.get $7
          local.set $11
          local.get $6
          local.set $12
          local.get $9
          local.set $15
         end
        end
       end
      end
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $for-loop|1
     end
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  local.get $14
  f64.const 0
  f64.eq
  local.get $15
  f64.const 0
  f64.eq
  i32.or
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $8
  local.get $10
  local.get $3
  local.get $4
  call $assembly/index/hasManySiblings
  if (result i32)
   local.get $5
   local.get $8
   local.get $10
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
   local.get $11
   local.get $12
   local.get $3
   local.get $4
   call $assembly/index/hasManySiblings
   if (result i32)
    local.get $5
    local.get $11
    local.get $12
    local.get $3
    local.get $4
    call $assembly/index/hasManySiblings
   else
    i32.const 0
   end
  end
 )
 (func $assembly/index/pixelmatch (; 16 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 f64) (param $6 i32) (param $7 f64) (param $8 f64) (param $9 f64) (param $10 f64) (param $11 f64) (param $12 f64) (param $13 f64) (result i32)
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
  local.get $2
  local.set $16
  local.get $0
  local.tee $2
  i32.load offset=8
  local.get $1
  i32.load offset=8
  i32.ne
  if (result i32)
   i32.const 1
  else
   local.get $16
   if (result i32)
    local.get $16
    i32.load offset=8
    local.get $2
    i32.load offset=8
    i32.ne
   else
    i32.const 0
   end
  end
  if
   i32.const -1
   return
  end
  local.get $2
  i32.load offset=8
  local.get $3
  local.get $4
  i32.mul
  i32.const 2
  i32.shl
  i32.ne
  if
   i32.const -2
   return
  end
  local.get $2
  i32.load offset=4
  local.set $18
  local.get $1
  i32.load offset=4
  local.set $20
  local.get $16
  i32.load offset=4
  local.set $21
  f64.const 0.1
  local.get $5
  local.get $5
  local.get $5
  f64.ne
  select
  local.set $5
  i32.const 1
  i32.const 0
  local.get $6
  select
  local.set $23
  f64.const 0.1
  local.get $7
  local.get $7
  local.get $7
  f64.ne
  select
  local.set $7
  block $~lib/util/memory/memcmp|inlined.0 (result i32)
   local.get $3
   local.get $4
   i32.mul
   i32.const 2
   i32.shl
   local.tee $22
   local.set $1
   i32.const 0
   local.get $20
   local.tee $2
   local.get $18
   local.tee $14
   i32.eq
   br_if $~lib/util/memory/memcmp|inlined.0
   drop
   local.get $14
   i32.const 7
   i32.and
   local.get $2
   i32.const 7
   i32.and
   i32.eq
   if
    loop $while-continue|0
     local.get $14
     i32.const 7
     i32.and
     if
      i32.const 0
      local.get $1
      i32.eqz
      br_if $~lib/util/memory/memcmp|inlined.0
      drop
      local.get $14
      i32.load8_u
      local.tee $6
      local.get $2
      i32.load8_u
      local.tee $0
      i32.ne
      if
       local.get $6
       local.get $0
       i32.sub
       br $~lib/util/memory/memcmp|inlined.0
      end
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      local.get $14
      i32.const 1
      i32.add
      local.set $14
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $while-continue|0
     end
    end
    loop $while-continue|1
     local.get $1
     i32.const 8
     i32.ge_u
     if
      local.get $14
      i64.load
      local.get $2
      i64.load
      i64.eq
      if
       local.get $14
       i32.const 8
       i32.add
       local.set $14
       local.get $2
       i32.const 8
       i32.add
       local.set $2
       local.get $1
       i32.const 8
       i32.sub
       local.set $1
       br $while-continue|1
      end
     end
    end
   end
   loop $while-continue|2
    local.get $1
    local.tee $0
    i32.const 1
    i32.sub
    local.set $1
    local.get $0
    if
     local.get $14
     i32.load8_u
     local.tee $6
     local.get $2
     i32.load8_u
     local.tee $0
     i32.ne
     if
      local.get $6
      local.get $0
      i32.sub
      br $~lib/util/memory/memcmp|inlined.0
     end
     local.get $14
     i32.const 1
     i32.add
     local.set $14
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|2
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   local.get $16
   if
    loop $for-loop|3
     local.get $17
     local.get $22
     i32.lt_s
     if
      local.get $17
      local.get $21
      i32.add
      f64.const 255
      local.get $17
      local.get $18
      i32.add
      i32.load
      local.tee $0
      i32.const 255
      i32.and
      f64.convert_i32_u
      f64.const 0.29889531
      f64.mul
      local.get $0
      i32.const 8
      i32.shr_u
      i32.const 255
      i32.and
      f64.convert_i32_u
      f64.const 0.58662247
      f64.mul
      f64.add
      local.get $0
      i32.const 16
      i32.shr_u
      i32.const 255
      i32.and
      f64.convert_i32_u
      f64.const 0.11448223
      f64.mul
      f64.add
      f64.const 255
      f64.sub
      local.get $0
      i32.const 24
      i32.shr_u
      f64.convert_i32_u
      local.get $7
      f64.mul
      f64.const 0.00392156862745098
      f64.mul
      f64.mul
      f64.add
      i32.trunc_f64_u
      local.tee $0
      local.get $0
      i32.const 8
      i32.shl
      i32.or
      local.get $0
      i32.const 16
      i32.shl
      i32.or
      i32.const -16777216
      i32.or
      i32.store
      local.get $17
      i32.const 4
      i32.add
      local.set $17
      br $for-loop|3
     end
    end
   end
   i32.const 0
   return
  end
  f64.const 35215
  local.get $5
  f64.mul
  local.get $5
  f64.mul
  local.set $5
  local.get $8
  local.get $8
  f64.ne
  if (result i32)
   i32.const 255
  else
   local.get $8
   i32.trunc_f64_u
  end
  local.set $24
  local.get $9
  local.get $9
  f64.ne
  if (result i32)
   i32.const 255
  else
   local.get $9
   i32.trunc_f64_u
  end
  local.set $22
  local.get $10
  local.get $10
  f64.ne
  if (result i32)
   i32.const 0
  else
   local.get $10
   i32.trunc_f64_u
  end
  local.set $6
  local.get $11
  local.get $11
  f64.ne
  if (result i32)
   i32.const 255
  else
   local.get $11
   i32.trunc_f64_u
  end
  local.set $2
  local.get $12
  local.get $12
  f64.ne
  if (result i32)
   i32.const 0
  else
   local.get $12
   i32.trunc_f64_u
  end
  local.set $1
  local.get $13
  local.get $13
  f64.ne
  if (result i32)
   i32.const 0
  else
   local.get $13
   i32.trunc_f64_u
  end
  local.set $0
  i32.const 0
  local.set $14
  loop $for-loop|4
   local.get $14
   local.get $4
   i32.lt_s
   if
    local.get $3
    local.get $14
    i32.mul
    i32.const 2
    i32.shl
    local.set $25
    i32.const 0
    local.set $19
    loop $for-loop|5
     local.get $19
     local.get $3
     i32.lt_s
     if
      local.get $18
      local.get $20
      local.get $25
      local.get $19
      i32.const 2
      i32.shl
      i32.add
      local.tee $15
      local.get $15
      i32.const 0
      call $assembly/index/colorDelta
      local.get $5
      f64.gt
      if
       local.get $23
       if (result i32)
        i32.const 0
       else
        local.get $18
        local.get $19
        local.get $14
        local.get $3
        local.get $4
        local.get $20
        call $assembly/index/antialiased
        if (result i32)
         i32.const 1
        else
         local.get $20
         local.get $19
         local.get $14
         local.get $3
         local.get $4
         local.get $18
         call $assembly/index/antialiased
        end
       end
       if
        local.get $16
        if
         local.get $15
         local.get $21
         i32.add
         local.get $24
         local.get $22
         i32.const 8
         i32.shl
         i32.or
         local.get $6
         i32.const 16
         i32.shl
         i32.or
         i32.const -16777216
         i32.or
         i32.store
        end
       else
        local.get $16
        if
         local.get $15
         local.get $21
         i32.add
         local.get $2
         local.get $1
         i32.const 8
         i32.shl
         i32.or
         local.get $0
         i32.const 16
         i32.shl
         i32.or
         i32.const -16777216
         i32.or
         i32.store
        end
        local.get $17
        i32.const 1
        i32.add
        local.set $17
       end
      else
       local.get $16
       if
        local.get $15
        local.get $21
        i32.add
        f64.const 255
        local.get $15
        local.get $18
        i32.add
        i32.load
        local.tee $15
        i32.const 255
        i32.and
        f64.convert_i32_u
        f64.const 0.29889531
        f64.mul
        local.get $15
        i32.const 8
        i32.shr_u
        i32.const 255
        i32.and
        f64.convert_i32_u
        f64.const 0.58662247
        f64.mul
        f64.add
        local.get $15
        i32.const 16
        i32.shr_u
        i32.const 255
        i32.and
        f64.convert_i32_u
        f64.const 0.11448223
        f64.mul
        f64.add
        f64.const 255
        f64.sub
        local.get $15
        i32.const 24
        i32.shr_u
        f64.convert_i32_u
        local.get $7
        f64.mul
        f64.const 0.00392156862745098
        f64.mul
        f64.mul
        f64.add
        i32.trunc_f64_u
        local.tee $15
        local.get $15
        i32.const 8
        i32.shl
        i32.or
        local.get $15
        i32.const 16
        i32.shl
        i32.or
        i32.const -16777216
        i32.or
        i32.store
       end
      end
      local.get $19
      i32.const 1
      i32.add
      local.set $19
      br $for-loop|5
     end
    end
    local.get $14
    i32.const 1
    i32.add
    local.set $14
    br $for-loop|4
   end
  end
  local.get $17
 )
 (func $assembly/index/rgb2y (; 17 ;) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
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
 (func $assembly/index/rgb2i (; 18 ;) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
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
 (func $assembly/index/rgb2q (; 19 ;) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
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
 (func $assembly/index/blend (; 20 ;) (param $0 f64) (param $1 f64) (result f64)
  f64.const 255
  local.get $0
  f64.const 255
  f64.sub
  local.get $1
  f64.mul
  f64.add
 )
 (func $~lib/rt/pure/__collect (; 21 ;)
  nop
 )
 (func $~lib/rt/pure/decrement (; 22 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 268435455
  i32.and
  local.tee $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   call $~lib/rt/__visit_members
   local.get $0
   local.get $0
   i32.load
   i32.const 1
   i32.or
   i32.store
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.get $1
   i32.const -268435456
   i32.and
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/rt/__visit_members (; 23 ;) (param $0 i32)
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
   local.tee $0
   if
    local.get $0
    i32.const 164
    i32.ge_u
    if
     local.get $0
     i32.const 16
     i32.sub
     call $~lib/rt/pure/decrement
    end
   end
   return
  end
  unreachable
 )
)
