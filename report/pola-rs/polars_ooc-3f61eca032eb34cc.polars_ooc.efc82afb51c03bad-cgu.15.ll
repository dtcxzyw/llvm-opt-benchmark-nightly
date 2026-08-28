Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ooc-3f61eca032eb34cc.polars_ooc.efc82afb51c03bad-cgu.15?download=true
inline.NumInlined: 950
inline.NumDeleted: 481
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2_13MemoryManager12register_ctx:bb.a
  store ptr %1, ptr %i.al, align 8, !dbg !9244
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !9244
  store i64 %2, ptr %i.am, align 8, !dbg !9244
  %i.an = add i64 %i.af, 1, !dbg !9248
  store i64 %i.an, ptr %i.ae, align 8, !dbg !9248, !alias.scope !9219
  call void @_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB1L_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !9249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9251
  ret void, !dbg !9252

bb.l:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !9253
  unreachable, !dbg !9253
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2_13MemoryManager12should_spill(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 !dbg !1535 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCskAlUH1kY1DR_10polars_ooc12global_alloc17GLOBAL_ALLOC_SIZE monotonic, align 8, !dbg !9254
  %spec.store.select.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.a, i64 0), !dbg !9258
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !9259
  %i.c = load atomic i64, ptr %i.b monotonic, align 8, !dbg !9263
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %spec.store.select.i, i64 %i.c), !dbg !9265
  %i.e = tail call noundef nonnull align 8 ptr @_RNvCshZ4kA9mlxmz_13polars_config6config(), !dbg !9267
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !9268
  %i.g = load atomic i64, ptr %i.f monotonic, align 8, !dbg !9273
  %i.h = icmp ugt i64 %i.d, %i.g, !dbg !9275
  ret i1 %i.h, !dbg !9276
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2_13MemoryManager14clean_contexts(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9277 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9278
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9278 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9280), !dbg !9283
  %i.e = load atomic i32, ptr %i.d monotonic, align 8, !dbg !9284, !noalias !9280
  br label %bb.b, !dbg !9294

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.06.0.i.i = phi i32 [ %i.e, %bb.a ], [ %i.j, %bb.c ], !dbg !9296 ; 3 uses
  %i.f = and i32 %.sroa.06.0.i.i, 1073741823, !dbg !9297
  %.not = icmp eq i32 %i.f, 0, !dbg !9305
  br i1 %.not, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEINtB17_12TryLockErrorB12_EEEB2F_.exit10, !dbg !9308

bb.c:                                             ; preds = %bb.b
  %i.g = or disjoint i32 %.sroa.06.0.i.i, 1073741823, !dbg !9305
  %i.h = cmpxchg weak ptr %i.d, i32 %.sroa.06.0.i.i, i32 %i.g acquire monotonic, align 4, !dbg !9309, !noalias !9280 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1, !dbg !9309
  %i.j = extractvalue { i32, i1 } %i.h, 0, !dbg !9309
  br i1 %i.i, label %_RINvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECskAlUH1kY1DR_10polars_ooc.exit.i, label %bb.b, !dbg !9313

_RINvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9314, !noalias !9280
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9315
  %i.l = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !9318, !noalias !9280
  %i.m = and i64 %i.l, 9223372036854775807, !dbg !9325
  %i.n = icmp eq i64 %i.m, 0, !dbg !9325
  br i1 %i.n, label %_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEE9try_writeB1A_.exit, label %bb.d, !dbg !9325, !prof !2008

bb.d:                                             ; preds = %_RINvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECskAlUH1kY1DR_10polars_ooc.exit.i
  %i.o = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #33, !dbg !9326, !noalias !9280
  %i.p = xor i1 %i.o, true, !dbg !9327
  %i.q = zext i1 %i.p to i8, !dbg !9328
  br label %_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEE9try_writeB1A_.exit, !dbg !9326

_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEE9try_writeB1A_.exit: ; preds = %_RINvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECskAlUH1kY1DR_10polars_ooc.exit.i, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.q, %bb.d ], [ 0, %_RINvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicmE10try_updateNCNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync6rwlock5futexNtB1c_6RwLock9try_write0ECskAlUH1kY1DR_10polars_ooc.exit.i ], !dbg !9329
  %i.r = load atomic i8, ptr %i.k monotonic, align 8, !dbg !9330, !noalias !9280
  %i.s = icmp ne i8 %i.r, 0, !dbg !9334
  call void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEENCNvMse_B10_BX_3new0EB25_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %i.s, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %i.d), !dbg !9335, !noalias !9280
  %i.t = load i64, ptr %i.a, align 8, !dbg !9336, !range !52, !noalias !9280, !noundef !16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9340
  %i.v = load ptr, ptr %i.u, align 8, !dbg !9340, !noalias !9280, !nonnull !16, !align !531, !noundef !16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9340
  %i.x = load i8, ptr %i.w, align 8, !dbg !9340, !range !268, !noalias !9280, !noundef !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9341, !noalias !9280
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9342 ; 3 uses
  store ptr %i.v, ptr %i.y, align 8, !dbg !9342, !alias.scope !9280
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9342 ; 3 uses
  store i8 %i.x, ptr %i.z, align 8, !dbg !9342, !alias.scope !9280
  store i64 %i.t, ptr %i.c, align 8, !dbg !9343, !alias.scope !9280
  %i.aa = trunc nuw i64 %i.t to i1, !dbg !9344
  br i1 %i.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison12TryLockErrorINtNtBJ_6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEEB2D_.exit.sink.split.i9, label %bb.e, !dbg !9344

bb.e:                                             ; preds = %_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEE9try_writeB1A_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9345
  store ptr %i.v, ptr %i.b, align 8, !dbg !9345
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9345
  store i8 %i.x, ptr %i.ab, align 8, !dbg !9345
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !9346
  invoke void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextE6retainNCNvMNtBJ_14memory_managerNtB1T_13MemoryManager14clean_contexts0EBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.g unwind label %bb.f, !dbg !9351

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB1L_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEB2j_.exit unwind label %bb.i, !dbg !9352

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB1L_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEB2j_.exit2 unwind label %bb.h, !dbg !9354

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEB2j_.exit: ; preds = %bb.f, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ad, %bb.f ]
  %i.ae = load i64, ptr %i.c, align 8, !dbg !9356, !range !52, !noundef !16
  %i.af = icmp eq i64 %i.ae, 0, !dbg !9356
  %i.ag = load i8, ptr %i.z, align 8, !range !28
  %.not.i.i3 = icmp eq i8 %i.ag, 2
  %or.cond12 = select i1 %i.af, i1 true, i1 %.not.i.i3, !dbg !9356
  br i1 %or.cond12, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEINtB17_12TryLockErrorB12_EEEB2F_.exit6, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison12TryLockErrorINtNtBJ_6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEEB2D_.exit.sink.split.i5, !dbg !9356

bb.h:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEB2j_.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEB2j_.exit2: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9356
  %i.ai = load i64, ptr %i.c, align 8, !dbg !9356, !range !52, !noundef !16
  %i.aj = trunc nuw i64 %i.ai to i1, !dbg !9356
  %i.ak = load i8, ptr %i.z, align 8, !range !28
  %.not.i.i = icmp ne i8 %i.ak, 2
  %or.cond.not = select i1 %i.aj, i1 %.not.i.i, i1 false, !dbg !9356
  br i1 %or.cond.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEINtB17_12TryLockErrorB12_EEEB2F_.exit10.sink.split, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEINtB17_12TryLockErrorB12_EEEB2F_.exit10, !dbg !9356

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEINtB17_12TryLockErrorB12_EEEB2F_.exit10.sink.split: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEB2j_.exit2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison12TryLockErrorINtNtBJ_6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEEB2D_.exit.sink.split.i9
  %.sink = phi ptr [ %i.am, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison12TryLockErrorINtNtBJ_6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEEB2D_.exit.sink.split.i9 ], [ %i.y, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEB2j_.exit2 ]
  call void @_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB1L_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sink), !dbg !9357
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEINtB17_12TryLockErrorB12_EEEB2F_.exit10, !dbg !9356

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEINtB17_12TryLockErrorB12_EEEB2F_.exit10: ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEINtB17_12TryLockErrorB12_EEEB2F_.exit10.sink.split, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEB2j_.exit2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9356
  ret void, !dbg !9359

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison12TryLockErrorINtNtBJ_6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEEB2D_.exit.sink.split.i5, %bb.f
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !9360
  unreachable, !dbg !9360

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEINtB17_12TryLockErrorB12_EEEB2F_.exit6: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison12TryLockErrorINtNtBJ_6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEEB2D_.exit.sink.split.i5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEB2j_.exit
  resume { ptr, i32 } %.pn, !dbg !9360

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison12TryLockErrorINtNtBJ_6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEEB2D_.exit.sink.split.i5: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEB2j_.exit
  invoke void @_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB1L_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEINtB17_12TryLockErrorB12_EEEB2F_.exit6 unwind label %bb.i, !dbg !9361

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison12TryLockErrorINtNtBJ_6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEEB2D_.exit.sink.split.i9: ; preds = %_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_6RwLockINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEE9try_writeB1A_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9363
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEINtB17_12TryLockErrorB12_EEEB2F_.exit10.sink.split, !dbg !9363
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2_13MemoryManager15find_spillables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) initializes((0, 8), (136, 137)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #7 !dbg !9365 {
bb.a:
  store ptr %1, ptr %0, align 8, !dbg !9366
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !9366
  store i8 0, ptr %i.a, align 8, !dbg !9366
  ret void, !dbg !9367
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2_13MemoryManager17do_spill_blocking(ptr noundef nonnull align 8 %0) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !9368 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [232 x i8], align 8               ; 4 uses
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80) acquire, align 8, !dbg !9369
  %i.e = icmp eq i32 %i.d, 0, !dbg !9378
  br i1 %i.e, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECskAlUH1kY1DR_10polars_ooc.exit, label %bb.b, !dbg !9378, !prof !2008

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9379
  store ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr %i.b, align 8, !dbg !9380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9381
  store ptr %i.b, ptr %i.a, align 8, !dbg !9381
  call void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !dbg !9382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9384
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECskAlUH1kY1DR_10polars_ooc.exit, !dbg !9384

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9385
  call void @_RNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2_13MemoryManager8do_spill(ptr noalias noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.c, ptr noundef nonnull align 8 %0) #33, !dbg !9386
  call void @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager17block_in_place_onNCNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB1e_13MemoryManager8do_spill0EB1g_(ptr noundef nonnull align 8 @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.c), !dbg !9387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9388
  ret void, !dbg !9389
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2_13MemoryManager3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9390 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9391
  store i64 0, ptr %i.c, align 8, !dbg !9392
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9392
  store i8 0, ptr %i.d, align 8, !dbg !9392
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9392
  store i64 0, ptr %i.e, align 8, !dbg !9392
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !9392
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.47.0..sroa_idx, align 8, !dbg !9392
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !9392
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !9392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9394
  invoke void @_RNvMs8_NtNtCskmDBXs7hs3c_5tokio4sync5mutexINtB5_5MutexuE3newCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73)
          to label %bb.c unwind label %bb.b, !dbg !9394

bb.b:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock6RwLockINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEEEB28_(ptr noalias noundef align 8 dereferenceable(40) %i.c) #37
          to label %bb.h unwind label %bb.g, !dbg !9395

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMNtNtCskmDBXs7hs3c_5tokio4sync9semaphoreNtB2_9Semaphore3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74)
          to label %bb.d unwind label %bb.b, !dbg !9396

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !dbg !9397
  %i.g = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 24, 233) 56, i64 noundef 8) #35, !dbg !9407 ; 5 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !9408
  br i1 %i.h, label %bb.e, label %bb.f, !dbg !9409, !prof !1669

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #38
          to label %.noexc unwind label %bb.b, !dbg !9410

.noexc:                                           ; preds = %bb.e
  unreachable, !dbg !9410

bb.f:                                             ; preds = %bb.d
  store i64 1, ptr %i.g, align 8, !dbg !9411
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !9411
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !9411
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !9411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !9411
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !9413
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !9413
  store ptr %i.g, ptr %0, align 8, !dbg !9413
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !9413
  store i64 0, ptr %i.k, align 8, !dbg !9413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9395
  ret void, !dbg !9414

bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !9415
  unreachable, !dbg !9415

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f, !dbg !9415
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCskAlUH1kY1DR_10polars_ooc14memory_managerNtB2_13MemoryManager8do_spill(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) initializes((8, 16), (18, 19)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #7 !dbg !9416 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9417
  store ptr %1, ptr %i.a, align 8, !dbg !9417
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18, !dbg !9417
  store i8 0, ptr %i.b, align 2, !dbg !9417
  ret void, !dbg !9418
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 384307168202282326) i64 @_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueE3lenCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 !dbg !9419 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9423
  %i.b = load ptr, ptr %i.a, align 8, !dbg !9423, !noundef !16
  %i.c = load ptr, ptr %0, align 8, !dbg !9424, !noundef !16
  %i.d = ptrtoint ptr %i.b to i64, !dbg !9425
  %i.e = ptrtoint ptr %i.c to i64, !dbg !9425
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !9425
  %i.g = udiv exact i64 %i.f, 48, !dbg !9425
  ret i64 %i.g, !dbg !9431
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCskAlUH1kY1DR_10polars_ooc10spill_fileNtB5_12SpillCleaner3run(i64 noundef range(i64 0, 3) %0, ptr noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9432 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = alloca [40 x i8], align 8                ; 13 uses
  %.sroa.7.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 11 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [120 x i8], align 8               ; 9 uses
  %i.k = alloca [4 x i8], align 4                 ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  store i64 %0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %1, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9434
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvCshZ4kA9mlxmz_13polars_config6config()
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !9437

.noexc:                                           ; preds = %bb.a
  invoke void @_RNvMCshZ4kA9mlxmz_13polars_configNtB2_6Config13ooc_spill_dir(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 8 %i.aa)
          to label %.noexc33 unwind label %.loopexit.split-lp, !dbg !9438

.noexc33:                                         ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !9439
  invoke void @_RINvNtCsh8eZTKRCwoO_3std2fs8read_dirRNtNtB4_4path7PathBufECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.c unwind label %bb.b, !dbg !9439

.thread.i:                                        ; preds = %bb.bp, %bb.bo, %.body.i, %bb.e, %bb.b
  %.pn19.i = phi { ptr, i32 } [ %i.ab, %bb.b ], [ %.pn.i, %.body.i ], [ %i.ai, %bb.e ], [ %i.fr, %bb.bp ], [ %i.fr, %bb.bo ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(24) %i.n) #37
          to label %.body unwind label %bb.bn, !dbg !9441

bb.b:                                             ; preds = %bb.bq, %.noexc33
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.c:                                             ; preds = %.noexc33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !9439
  %i.ad = load i8, ptr %i.ac, align 8, !dbg !9439, !range !28, !noundef !16 ; 3 uses
  %i.ae = icmp eq i8 %i.ad, 2, !dbg !9439
  br i1 %i.ae, label %bb.bq, label %bb.d, !dbg !9442

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !9443
  %i.af = load ptr, ptr %i.l, align 8, !dbg !9443, !nonnull !16, !noundef !16 ; 3 uses
  store ptr %i.af, ptr %i.m, align 8, !dbg !9443
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !9443
  store i8 %i.ad, ptr %i.ag, align 8, !dbg !9443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !9445
  %i.ah = invoke noundef i32 @_RNvNtCsh8eZTKRCwoO_3std7process2id()
          to label %.lr.ph.i unwind label %bb.bo, !dbg !9447

bb.e:                                             ; preds = %.loopexit55.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i, !dbg !9448

.lr.ph.i:                                         ; preds = %bb.d
  store i32 %i.ah, ptr %i.k, align 4, !dbg !9447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9449
  store i64 0, ptr %i.j, align 8, !dbg !9449
  %.sroa.0.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48, !dbg !9449
  store i64 0, ptr %.sroa.0.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !9449
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 96, !dbg !9449 ; 5 uses
  store ptr %i.af, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !dbg !9449
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 104, !dbg !9449 ; 5 uses
  store i8 %i.ad, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !dbg !9449
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 112, !dbg !9449 ; 2 uses
  store ptr %i.k, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !9449
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.f, !dbg !9452

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit31.i, %.lr.ph.i
  %.sroa.2.0..sroa_idx.val120.i = phi ptr [ %i.k, %.lr.ph.i ], [ %.sroa.2.0..sroa_idx.val.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECskAlUH1kY1DR_10polars_ooc.exit31.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9480), !dbg !9483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9484, !noalias !9489
  invoke void @_RNvXsB_NtCsh8eZTKRCwoO_3std2fsNtB5_7ReadDirNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.2.0..sroa_idx.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !9495

.noexc.i:                                         ; preds = %bb.f
  %i.as = load i64, ptr %i.g, align 8, !dbg !9484, !range !52, !noalias !9489, !noundef !16
  %i.at = trunc nuw i64 %i.as to i1, !dbg !9496
  br i1 %i.at, label %.lr.ph.i.i.i, label %.loopexit.i.i, !dbg !9496

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc22.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9497, !noalias !9489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false), !dbg !9498, !noalias !9489
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i), !dbg !9497
end_hunk_0
