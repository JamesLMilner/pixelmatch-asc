(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iiiiiififii (func (param i32 i32 i32 i32 i32 f32 i32 f32 i32 i32) (result i32)))
 (type $FUNCSIG$viifi (func (param i32 i32 f32 i32)))
 (type $FUNCSIG$ffff (func (param f32 f32 f32) (result f32)))
 (type $FUNCSIG$fff (func (param f32 f32) (result f32)))
 (type $FUNCSIG$viifff (func (param i32 i32 f32 f32 f32)))
 (type $FUNCSIG$fiiiii (func (param i32 i32 i32 i32 i32) (result f32)))
 (type $FUNCSIG$iiiiiii (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 56) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 112) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 160) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 216) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 256) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 312) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00N\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d")
 (data (i32.const 360) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00m\00e\00m\00o\00r\00y\00.\00t\00s")
 (data (i32.const 408) "\04\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $assembly/index/Uint8Array_ID i32 (i32.const 3))
 (global $~lib/rt/__rtti_base i32 (i32.const 408))
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "Uint8Array_ID" (global $assembly/index/Uint8Array_ID))
 (export "pixelmatch" (func $assembly/index/pixelmatch))
 (export "antialiased" (func $assembly/index/antialiased))
 (export "hasManySiblings" (func $assembly/index/hasManySiblings))
 (export "__setargc" (func $~lib/setargc))
 (export "colorDelta" (func $assembly/index/colorDelta|trampoline))
 (export "rgb2y" (func $assembly/index/rgb2y))
 (export "rgb2i" (func $assembly/index/rgb2i))
 (export "rgb2q" (func $assembly/index/rgb2q))
 (export "blend" (func $assembly/index/blend))
 (export "drawPixel" (func $assembly/index/drawPixel))
 (export "drawGrayPixel" (func $assembly/index/drawGrayPixel))
 (export "memory.copy" (func $~lib/memory/memory.copy))
 (export "memory.init" (func $~lib/memory/memory.init))
 (export "memory.drop" (func $~lib/memory/memory.drop))
 (export "memory.repeat" (func $~lib/memory/memory.repeat))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (func $~lib/rt/tlsf/removeBlock (; 1 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 277
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 279
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
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
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
  end
  local.tee $3
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 292
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=20
  local.set $4
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=20
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=16
  end
  local.get $3
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $3
   i32.const 4
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    i32.const 1
    local.get $2
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
 (func $~lib/rt/tlsf/insertBlock (; 2 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 205
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 207
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
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
    local.get $3
    i32.const 3
    i32.and
    local.get $2
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
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 228
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
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
   if (result i32)
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $6
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $3
    i32.store
    local.get $2
   else    
    local.get $1
   end
   local.set $1
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 24
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
  local.get $2
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
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $4
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 260
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.shl
  local.get $4
  i32.add
  i32.const 2
  i32.shl
  local.get $0
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
  local.get $3
  i32.const 4
  i32.shl
  local.get $4
  i32.add
  i32.const 2
  i32.shl
  local.get $0
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
  local.get $3
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $3
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $4
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 3 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  local.get $2
  i32.le_u
  select
  select
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 386
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $1
   local.get $3
   i32.const 16
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 24
    i32.const 396
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $3
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else   
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 24
    i32.const 408
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
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
 (func $~lib/rt/tlsf/initializeRoot (; 4 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
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
  i32.const 448
  i32.const 0
  i32.store
  i32.const 2016
  i32.const 0
  i32.store
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 23
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.const 2
    i32.shl
    i32.const 448
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $loop|1
     block $break|1
      local.get $1
      i32.const 16
      i32.ge_u
      br_if $break|1
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 448
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  i32.const 448
  i32.const 2032
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 448
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 72
   i32.const 24
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
 (func $~lib/rt/tlsf/searchBlock (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    local.get $1
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
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 338
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
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
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 24
     i32.const 351
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=96
   else    
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/growMemory (; 7 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  memory.size
  local.tee $2
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
  i32.const 1
  i32.const 27
  local.get $1
  i32.clz
  i32.sub
  i32.shl
  i32.const 1
  i32.sub
  local.get $1
  i32.add
  local.get $1
  local.get $1
  i32.const 536870904
  i32.lt_u
  select
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
 (func $~lib/rt/tlsf/prepareBlock (; 8 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 24
   i32.const 365
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $3
   i32.const 2
   i32.and
   local.get $2
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
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
 (func $~lib/rt/tlsf/allocateBlock (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 487
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.load
  i32.const -4
  i32.and
  local.get $3
  i32.lt_u
  if
   i32.const 0
   i32.const 24
   i32.const 489
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $2
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  local.get $2
 )
 (func $~lib/rt/tlsf/__alloc (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $2
  if (result i32)
   local.get $2
  else   
   call $~lib/rt/tlsf/initializeRoot
   global.get $~lib/rt/tlsf/ROOT
  end
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.tee $0
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.ne
  if
   i32.const 0
   i32.const 128
   i32.const 104
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
  if
   i32.const 0
   i32.const 128
   i32.const 107
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 444
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/freeBlock (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 24
   i32.const 546
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/__typeinfo (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 408
  i32.load
  i32.gt_u
  if
   i32.const 176
   i32.const 232
   i32.const 22
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.shl
  i32.const 412
  i32.add
  i32.load
 )
 (func $~lib/memory/memory.copy (; 15 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $3
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $4
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
    end
   else    
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $continue|3
      local.get $0
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $3
     if
      local.get $0
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/__free (; 16 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 576
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 577
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/growRoots (; 17 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/pure/CUR
  global.get $~lib/rt/pure/ROOTS
  local.tee $1
  i32.sub
  local.tee $2
  i32.const 1
  i32.shl
  local.tee $0
  i32.const 256
  local.get $0
  i32.const 256
  i32.gt_u
  select
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $1
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  if
   local.get $1
   call $~lib/rt/tlsf/__free
  end
  local.get $0
  global.set $~lib/rt/pure/ROOTS
  local.get $0
  local.get $2
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $0
  local.get $3
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (; 18 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.tee $1
  global.get $~lib/rt/pure/END
  i32.ge_u
  if
   call $~lib/rt/pure/growRoots
   global.get $~lib/rt/pure/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/pure/decrement (; 19 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 268435455
  i32.and
  local.set $1
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 128
   i32.const 115
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $2
   i32.const -2147483648
   i32.and
   if
    local.get $0
    i32.const -2147483648
    i32.store offset=4
   else    
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
   end
  else   
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 128
    i32.const 124
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.and
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $2
    i32.const -268435456
    i32.and
    i32.or
    i32.store offset=4
   else    
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    i32.const -1342177280
    i32.or
    i32.store offset=4
    local.get $2
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   end
  end
 )
 (func $~lib/rt/pure/__release (; 20 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 444
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/rt/pure/markGray (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const -1879048193
   i32.and
   i32.const 268435456
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 2
   call $~lib/rt/__visit_members
  end
 )
 (func $~lib/rt/pure/scanBlack (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const -1879048193
  i32.and
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.add
  i32.const 4
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/pure/scan (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.eq
  if
   local.get $1
   i32.const 268435455
   i32.and
   i32.const 0
   i32.gt_u
   if
    local.get $0
    call $~lib/rt/pure/scanBlack
   else    
    local.get $0
    local.get $1
    i32.const -1879048193
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    local.get $0
    i32.const 16
    i32.add
    i32.const 3
    call $~lib/rt/__visit_members
   end
  end
 )
 (func $~lib/rt/pure/collectWhite (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1879048192
  i32.and
  i32.const 536870912
  i32.eq
  if (result i32)
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   i32.const -1879048193
   i32.and
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 5
   call $~lib/rt/__visit_members
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  end
 )
 (func $~lib/rt/pure/__collect (; 25 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.tee $5
  local.tee $2
  local.set $3
  global.get $~lib/rt/pure/CUR
  local.set $0
  loop $loop|0
   block $break|0
    local.get $3
    local.get $0
    i32.ge_u
    br_if $break|0
    local.get $3
    i32.load
    local.tee $4
    i32.load offset=4
    local.tee $1
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $1
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else     
     i32.const 0
    end
    if
     local.get $4
     call $~lib/rt/pure/markGray
     local.get $2
     local.get $4
     i32.store
     local.get $2
     i32.const 4
     i32.add
     local.set $2
    else     
     i32.const 0
     local.get $1
     i32.const 268435455
     i32.and
     i32.eqz
     local.get $1
     i32.const 1879048192
     i32.and
     select
     if
      global.get $~lib/rt/tlsf/ROOT
      local.get $4
      call $~lib/rt/tlsf/freeBlock
     else      
      local.get $4
      local.get $1
      i32.const 2147483647
      i32.and
      i32.store offset=4
     end
    end
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $loop|0
   end
  end
  local.get $2
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    local.get $2
    i32.ge_u
    br_if $break|1
    local.get $0
    i32.load
    call $~lib/rt/pure/scan
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $loop|1
   end
  end
  local.get $5
  local.set $0
  loop $loop|2
   block $break|2
    local.get $0
    local.get $2
    i32.ge_u
    br_if $break|2
    local.get $0
    i32.load
    local.tee $1
    local.get $1
    i32.load offset=4
    i32.const 2147483647
    i32.and
    i32.store offset=4
    local.get $1
    call $~lib/rt/pure/collectWhite
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $loop|2
   end
  end
  local.get $5
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/typedarray/Uint8Array#__get (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 176
   i32.const 272
   i32.const 125
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $assembly/index/rgb2y (; 27 ;) (type $FUNCSIG$ffff) (param $0 f32) (param $1 f32) (param $2 f32) (result f32)
  local.get $0
  f32.const 0.29889529943466187
  f32.mul
  local.get $1
  f32.const 0.5866224765777588
  f32.mul
  f32.add
  local.get $2
  f32.const 0.11448223143815994
  f32.mul
  f32.add
 )
 (func $assembly/index/blend (; 28 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  f32.const 255
  local.get $0
  f32.const 255
  f32.sub
  local.get $1
  f32.mul
  f32.add
 )
 (func $~lib/typedarray/Uint8Array#__set (; 29 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 176
   i32.const 272
   i32.const 131
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $assembly/index/drawPixel (; 30 ;) (type $FUNCSIG$viifff) (param $0 i32) (param $1 i32) (param $2 f32) (param $3 f32) (param $4 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  local.get $2
  i32.trunc_f32_u
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  local.get $3
  i32.trunc_f32_u
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  local.get $1
  i32.const 2
  i32.add
  local.get $4
  i32.trunc_f32_u
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  local.get $1
  i32.const 3
  i32.add
  i32.const 255
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/drawGrayPixel (; 31 ;) (type $FUNCSIG$viifi) (param $0 i32) (param $1 i32) (param $2 f32) (param $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  local.get $1
  local.get $0
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.get $0
  local.get $1
  i32.const 2
  i32.add
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  call $assembly/index/rgb2y
  local.get $2
  local.get $0
  local.get $1
  i32.const 3
  i32.add
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  f32.mul
  f32.const 255
  f32.div
  call $assembly/index/blend
  local.tee $2
  local.get $2
  local.get $2
  call $assembly/index/drawPixel
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $assembly/index/rgb2i (; 32 ;) (type $FUNCSIG$ffff) (param $0 f32) (param $1 f32) (param $2 f32) (result f32)
  local.get $0
  f32.const 0.5959779620170593
  f32.mul
  local.get $1
  f32.const 0.27417609095573425
  f32.mul
  f32.sub
  local.get $2
  f32.const 0.32180190086364746
  f32.mul
  f32.sub
 )
 (func $assembly/index/rgb2q (; 33 ;) (type $FUNCSIG$ffff) (param $0 f32) (param $1 f32) (param $2 f32) (result f32)
  local.get $0
  f32.const 0.21147017180919647
  f32.mul
  local.get $1
  f32.const 0.5226171016693115
  f32.mul
  f32.sub
  local.get $2
  f32.const 0.31114694476127625
  f32.mul
  f32.add
 )
 (func $assembly/index/colorDelta (; 34 ;) (type $FUNCSIG$fiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $2
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.set $6
  local.get $0
  local.get $2
  i32.const 1
  i32.add
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.set $9
  local.get $0
  local.get $2
  i32.const 2
  i32.add
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.set $7
  local.get $0
  local.get $2
  i32.const 3
  i32.add
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.set $5
  local.get $1
  local.get $3
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.set $10
  local.get $1
  local.get $3
  i32.const 1
  i32.add
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.set $11
  local.get $1
  local.get $3
  i32.const 2
  i32.add
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.set $8
  local.get $5
  local.get $1
  local.get $3
  i32.const 3
  i32.add
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.tee $12
  f32.eq
  if (result i32)
   local.get $6
   local.get $10
   f32.eq
  else   
   i32.const 0
  end
  if (result i32)
   local.get $9
   local.get $11
   f32.eq
  else   
   i32.const 0
  end
  if (result i32)
   local.get $7
   local.get $8
   f32.eq
  else   
   i32.const 0
  end
  if
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   f32.const 0
   return
  end
  local.get $5
  f32.const 255
  f32.lt
  if
   local.get $6
   local.get $5
   f32.const 255
   f32.div
   local.tee $5
   call $assembly/index/blend
   local.set $6
   local.get $9
   local.get $5
   call $assembly/index/blend
   local.set $9
   local.get $7
   local.get $5
   call $assembly/index/blend
   local.set $7
  end
  local.get $12
  f32.const 255
  f32.lt
  if
   local.get $10
   local.get $12
   f32.const 255
   f32.div
   local.tee $5
   call $assembly/index/blend
   local.set $10
   local.get $11
   local.get $5
   call $assembly/index/blend
   local.set $11
   local.get $8
   local.get $5
   call $assembly/index/blend
   local.set $8
  end
  local.get $6
  local.get $9
  local.get $7
  call $assembly/index/rgb2y
  local.get $10
  local.get $11
  local.get $8
  call $assembly/index/rgb2y
  f32.sub
  local.set $5
  local.get $4
  if
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $6
  local.get $9
  local.get $7
  call $assembly/index/rgb2i
  local.get $10
  local.get $11
  local.get $8
  call $assembly/index/rgb2i
  f32.sub
  local.set $12
  local.get $6
  local.get $9
  local.get $7
  call $assembly/index/rgb2q
  local.get $10
  local.get $11
  local.get $8
  call $assembly/index/rgb2q
  f32.sub
  local.set $6
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  f32.const 0.505299985408783
  local.get $5
  f32.mul
  local.get $5
  f32.mul
  f32.const 0.29899999499320984
  local.get $12
  f32.mul
  local.get $12
  f32.mul
  f32.add
  f32.const 0.195700004696846
  local.get $6
  f32.mul
  local.get $6
  f32.mul
  f32.add
 )
 (func $assembly/index/hasManySiblings (; 35 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 1
  i32.sub
  f64.convert_i32_s
  f64.const 0
  f64.max
  local.set $9
  local.get $1
  i32.const 1
  i32.add
  f64.convert_i32_s
  local.get $3
  i32.const 1
  i32.sub
  f64.convert_i32_s
  f64.min
  local.set $10
  local.get $2
  i32.const 1
  i32.add
  f64.convert_i32_s
  local.get $4
  i32.const 1
  i32.sub
  f64.convert_i32_s
  f64.min
  local.set $11
  local.get $2
  local.get $3
  i32.mul
  local.get $1
  i32.add
  i32.const 2
  i32.shl
  local.set $7
  local.get $1
  f64.convert_i32_s
  local.get $1
  i32.const 1
  i32.sub
  f64.convert_i32_s
  f64.const 0
  f64.max
  local.tee $5
  f64.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   f64.convert_i32_s
   local.get $10
   f64.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $2
   f64.convert_i32_s
   local.get $9
   f64.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $2
   f64.convert_i32_s
   local.get $11
   f64.eq
  end
  if (result i32)
   i32.const 1
  else   
   i32.const 0
  end
  local.set $4
  local.get $5
  local.set $6
  loop $loop|0
   block $break|0
    local.get $6
    local.get $10
    f64.le
    i32.eqz
    br_if $break|0
    local.get $9
    local.set $5
    loop $loop|1
     block $break|1
      local.get $5
      local.get $11
      f64.le
      i32.eqz
      br_if $break|1
      local.get $5
      local.get $2
      f64.convert_i32_s
      f64.eq
      i32.const 0
      local.get $6
      local.get $1
      f64.convert_i32_s
      f64.eq
      select
      i32.eqz
      if
       local.get $5
       local.get $3
       f64.convert_i32_s
       f64.mul
       local.get $6
       f64.add
       f64.const 4
       f64.mul
       i32.trunc_f64_s
       local.set $8
       local.get $0
       local.get $7
       call $~lib/typedarray/Uint8Array#__get
       local.get $0
       local.get $8
       call $~lib/typedarray/Uint8Array#__get
       i32.eq
       if (result i32)
        local.get $0
        local.get $7
        i32.const 1
        i32.add
        call $~lib/typedarray/Uint8Array#__get
        local.get $0
        local.get $8
        i32.const 1
        i32.add
        call $~lib/typedarray/Uint8Array#__get
        i32.eq
       else        
        i32.const 0
       end
       if (result i32)
        local.get $0
        local.get $7
        i32.const 2
        i32.add
        call $~lib/typedarray/Uint8Array#__get
        local.get $0
        local.get $8
        i32.const 2
        i32.add
        call $~lib/typedarray/Uint8Array#__get
        i32.eq
       else        
        i32.const 0
       end
       if (result i32)
        local.get $0
        local.get $7
        i32.const 3
        i32.add
        call $~lib/typedarray/Uint8Array#__get
        local.get $0
        local.get $8
        i32.const 3
        i32.add
        call $~lib/typedarray/Uint8Array#__get
        i32.eq
       else        
        i32.const 0
       end
       if
        local.get $4
        i32.const 1
        i32.add
        local.set $4
       end
       local.get $4
       i32.const 2
       i32.gt_s
       if
        local.get $0
        call $~lib/rt/pure/__release
        i32.const 1
        return
       end
      end
      local.get $5
      f64.const 1
      f64.add
      local.set $5
      br $loop|1
     end
    end
    local.get $6
    f64.const 1
    f64.add
    local.set $6
    br $loop|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 0
 )
 (func $assembly/index/antialiased (; 36 ;) (type $FUNCSIG$iiiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $5
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 1
  i32.sub
  f64.convert_i32_s
  f64.const 0
  f64.max
  i32.trunc_f64_s
  local.set $15
  local.get $1
  i32.const 1
  i32.add
  f64.convert_i32_s
  local.get $3
  i32.const 1
  i32.sub
  f64.convert_i32_s
  f64.min
  i32.trunc_f64_s
  local.set $16
  local.get $2
  i32.const 1
  i32.add
  f64.convert_i32_s
  local.get $4
  i32.const 1
  i32.sub
  f64.convert_i32_s
  f64.min
  i32.trunc_f64_s
  local.set $17
  local.get $2
  local.get $3
  i32.mul
  local.get $1
  i32.add
  i32.const 2
  i32.shl
  local.set $19
  local.get $1
  i32.const 1
  i32.sub
  f64.convert_i32_s
  f64.const 0
  f64.max
  i32.trunc_f64_s
  local.tee $6
  local.get $1
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   local.get $16
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $2
   local.get $15
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $2
   local.get $17
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   i32.const 0
  end
  local.set $18
  i32.const -1
  local.set $12
  i32.const -1
  local.set $13
  i32.const -1
  local.set $14
  i32.const -1
  local.set $8
  block $folding-inner0
   loop $loop|0
    block $break|0
     local.get $6
     local.get $16
     i32.gt_s
     br_if $break|0
     local.get $15
     local.set $7
     loop $loop|1
      block $break|1
       local.get $7
       local.get $17
       i32.gt_s
       br_if $break|1
       local.get $2
       local.get $7
       i32.eq
       i32.const 0
       local.get $1
       local.get $6
       i32.eq
       select
       i32.eqz
       if
        local.get $0
        local.get $0
        local.get $19
        local.get $3
        local.get $7
        i32.mul
        local.get $6
        i32.add
        i32.const 2
        i32.shl
        i32.const 1
        call $assembly/index/colorDelta
        local.tee $9
        f32.const 0
        f32.eq
        if
         local.get $18
         i32.const 1
         i32.add
         local.tee $18
         i32.const 2
         i32.gt_s
         if
          br $folding-inner0
         end
        else         
         local.get $9
         local.get $10
         f32.lt
         if
          local.get $9
          local.set $10
          local.get $6
          local.set $12
          local.get $7
          local.set $13
         else          
          local.get $9
          local.get $11
          f32.gt
          if
           local.get $9
           local.set $11
           local.get $6
           local.set $14
           local.get $7
           local.set $8
          end
         end
        end
       end
       local.get $7
       i32.const 1
       i32.add
       local.set $7
       br $loop|1
      end
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $loop|0
    end
   end
   i32.const 1
   local.get $11
   f32.const 0
   f32.eq
   local.get $10
   f32.const 0
   f32.eq
   select
   if
    br $folding-inner0
   end
   local.get $0
   local.get $12
   local.get $13
   local.get $3
   local.get $4
   call $assembly/index/hasManySiblings
   if (result i32)
    local.get $5
    local.get $12
    local.get $13
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
    local.get $14
    local.get $8
    local.get $3
    local.get $4
    call $assembly/index/hasManySiblings
    if (result i32)
     local.get $5
     local.get $14
     local.get $8
     local.get $3
     local.get $4
     call $assembly/index/hasManySiblings
    else     
     i32.const 0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  i32.const 0
 )
 (func $assembly/index/pixelmatch (; 37 ;) (type $FUNCSIG$iiiiiififii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 f32) (param $6 i32) (param $7 f32) (param $8 i32) (param $9 i32) (result i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $8
  call $~lib/rt/pure/__retain
  drop
  local.get $9
  call $~lib/rt/pure/__retain
  drop
  local.get $5
  f32.const 0
  f32.eq
  if
   f32.const 0.10000000149011612
   local.set $5
  end
  i32.const 1
  i32.const 0
  local.get $6
  select
  local.set $13
  local.get $7
  f32.const 0
  f32.eq
  if
   f32.const 0.10000000149011612
   local.set $7
  end
  local.get $3
  local.get $4
  i32.mul
  local.set $6
  i32.const 1
  local.set $11
  block $break|0
   loop $loop|0 (result i32)
    local.get $10
    local.get $6
    i32.ge_s
    br_if $break|0
    local.get $0
    local.get $10
    call $~lib/typedarray/Uint8Array#__get
    local.get $1
    local.get $10
    call $~lib/typedarray/Uint8Array#__get
    i32.ne
    if (result i32)
     i32.const 0
    else     
     local.get $10
     i32.const 1
     i32.add
     local.set $10
     br $loop|0
    end
   end
   local.set $11
  end
  local.get $11
  if
   local.get $2
   if
    block $break|1
     i32.const 0
     local.set $10
     loop $loop|1
      local.get $10
      local.get $6
      i32.ge_s
      br_if $break|1
      local.get $0
      local.get $10
      i32.const 2
      i32.shl
      local.get $7
      local.get $2
      call $assembly/index/drawGrayPixel
      local.get $10
      i32.const 1
      i32.add
      local.set $10
      br $loop|1
     end
     unreachable
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   i32.const 0
   return
  end
  f32.const 35215
  local.get $5
  f32.mul
  local.get $5
  f32.mul
  local.set $14
  i32.const 0
  local.set $10
  local.get $8
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.tee $5
  f32.const 0
  f32.eq
  if
   f32.const 255
   local.set $5
  end
  local.get $5
  local.set $15
  local.get $8
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.tee $5
  f32.const 0
  f32.eq
  if
   f32.const 255
   local.set $5
  end
  local.get $5
  local.set $16
  local.get $8
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.tee $5
  f32.const 0
  f32.eq
  if
   f32.const 0
   local.set $5
  end
  local.get $5
  local.set $17
  local.get $9
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.tee $5
  f32.const 0
  f32.eq
  if
   f32.const 255
   local.set $5
  end
  local.get $5
  local.set $18
  local.get $9
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.tee $5
  f32.const 0
  f32.eq
  if
   f32.const 0
   local.set $5
  end
  local.get $5
  local.set $19
  local.get $9
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  f32.convert_i32_u
  local.tee $5
  f32.const 0
  f32.eq
  if
   f32.const 0
   local.set $5
  end
  i32.const 0
  local.set $11
  loop $loop|2
   block $break|2
    local.get $11
    local.get $4
    i32.ge_s
    br_if $break|2
    i32.const 0
    local.set $6
    loop $loop|3
     block $break|3
      local.get $6
      local.get $3
      i32.ge_s
      br_if $break|3
      local.get $0
      local.get $1
      local.get $3
      local.get $11
      i32.mul
      local.get $6
      i32.add
      i32.const 2
      i32.shl
      local.tee $12
      local.get $12
      i32.const 0
      call $assembly/index/colorDelta
      local.get $14
      f32.gt
      if
       local.get $13
       if (result i32)
        i32.const 0
       else        
        local.get $0
        local.get $6
        local.get $11
        local.get $3
        local.get $4
        local.get $1
        call $assembly/index/antialiased
        if (result i32)
         i32.const 1
        else         
         local.get $1
         local.get $6
         local.get $11
         local.get $3
         local.get $4
         local.get $0
         call $assembly/index/antialiased
        end
       end
       if
        local.get $2
        if
         local.get $2
         local.get $12
         local.get $15
         local.get $16
         local.get $17
         call $assembly/index/drawPixel
        end
       else        
        local.get $2
        if
         local.get $2
         local.get $12
         local.get $18
         local.get $19
         local.get $5
         call $assembly/index/drawPixel
        end
        local.get $10
        i32.const 1
        i32.add
        local.set $10
       end
      else       
       local.get $2
       if
        local.get $0
        local.get $12
        local.get $7
        local.get $2
        call $assembly/index/drawGrayPixel
       end
      end
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $loop|3
     end
    end
    local.get $11
    i32.const 1
    i32.add
    local.set $11
    br $loop|2
   end
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
 )
 (func $~lib/memory/memory.init (; 38 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  i32.const 328
  i32.const 376
  i32.const 35
  i32.const 4
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/memory/memory.drop (; 39 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 328
  i32.const 376
  i32.const 42
  i32.const 4
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/memory/memory.repeat (; 40 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $2
  local.get $3
  i32.mul
  local.set $3
  loop $continue|0
   local.get $4
   local.get $3
   i32.ge_u
   i32.eqz
   if
    local.get $0
    local.get $4
    i32.add
    local.get $1
    local.get $2
    call $~lib/memory/memory.copy
    local.get $2
    local.get $4
    i32.add
    local.set $4
    br $continue|0
   end
  end
 )
 (func $~lib/memory/memory.compare (; 41 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  i32.eq
  if (result i32)
   i32.const 0
  else   
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $0
     i32.load8_u
     local.get $1
     i32.load8_u
     i32.eq
    else     
     i32.const 0
    end
    if
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $continue|0
    end
   end
   local.get $2
   if (result i32)
    local.get $0
    i32.load8_u
    local.get $1
    i32.load8_u
    i32.sub
   else    
    i32.const 0
   end
  end
 )
 (func $~lib/rt/pure/__visit (; 42 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 444
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $0
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        local.get $1
        i32.const 1
        i32.ne
        if
         local.get $1
         i32.const 2
         i32.eq
         br_if $case1|0
         block $tablify|0
          local.get $1
          i32.const 3
          i32.sub
          br_table $case2|0 $case3|0 $case4|0 $tablify|0
         end
         br $case5|0
        end
        local.get $0
        call $~lib/rt/pure/decrement
        br $break|0
       end
       local.get $0
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.le_u
       if
        i32.const 0
        i32.const 128
        i32.const 75
        i32.const 17
        call $~lib/builtins/abort
        unreachable
       end
       local.get $0
       local.get $0
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $0
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $0
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.const -268435456
     i32.and
     local.get $1
     i32.const 1
     i32.add
     i32.const -268435456
     i32.and
     i32.ne
     if
      i32.const 0
      i32.const 128
      i32.const 86
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $1
     i32.const 1879048192
     i32.and
     if
      local.get $0
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $0
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 0
   i32.const 128
   i32.const 97
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/__visit_members (; 43 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    local.get $1
    call $~lib/rt/pure/__visit
   end
   return
  end
  unreachable
 )
 (func $null (; 44 ;) (type $FUNCSIG$v)
  nop
 )
 (func $assembly/index/colorDelta|trampoline (; 45 ;) (type $FUNCSIG$fiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result f32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 4
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $4
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  call $assembly/index/colorDelta
 )
 (func $~lib/setargc (; 46 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.set $~lib/argc
 )
)
