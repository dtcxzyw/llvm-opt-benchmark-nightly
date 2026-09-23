Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.09?download=true
inline.NumInlined: 10559
inline.NumDeleted: 3096
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvMs1_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame20___pymethod_explode__:bb.a
bb.p:                                             ; preds = %bb.o
  %i.ar = load i8, ptr %i.h, align 8, !dbg !178480, !range !2925, !noundef !2739
  %i.as = trunc nuw i8 %i.ar to i1, !dbg !178480
  br i1 %i.as, label %bb.ag, label %bb.q, !dbg !178481

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 1, !dbg !178482
  %i.au = load i8, ptr %i.at, align 1, !dbg !178482, !range !2925, !noundef !2739
  %i.av = trunc nuw i8 %i.au to i1, !dbg !178482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !178483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !178483, !noalias !178432
  %i.aw = load atomic i64, ptr %i.ac monotonic, align 8, !dbg !178484, !noalias !178432 ; 4 uses
  %i.ax = and i64 %i.aw, 8, !dbg !178485
  %i.ay = icmp ne i64 %i.ax, 0, !dbg !178485
  %i.az = icmp ugt i64 %i.aw, -17
  %or.cond.i.i = or i1 %i.az, %i.ay, !dbg !178485
  br i1 %or.cond.i.i, label %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, label %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, !dbg !178485, !prof !3632

.noexc8.i:                                        ; preds = %bb.t, %bb.s
  br i1 %.sroa.0.2.i, label %bb.aa, label %.body, !dbg !178486

_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i: ; preds = %bb.q
  %i.ba = add nuw i64 %i.aw, 16, !dbg !178487
  %i.bb = cmpxchg weak ptr %i.ac, i64 %i.aw, i64 %i.ba acquire monotonic, align 8, !dbg !178488, !noalias !178432
  %i.bc = extractvalue { i64, i1 } %i.bb, 1, !dbg !178488
  br i1 %i.bc, label %bb.r, label %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, !dbg !178489, !prof !3814

_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i: ; preds = %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, %bb.q
  %i.bd = invoke noundef zeroext i1 @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 16 %i.ac, i1 noundef zeroext false, i64 undef, i32 noundef 1000000000)
          to label %bb.r unwind label %.split.thread.i, !dbg !178490, !noalias !178432 ; 0 uses

.split.thread.i:                                  ; preds = %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa, !dbg !178486

bb.r:                                             ; preds = %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 32, !dbg !178491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !178492, !noalias !178432
  invoke void @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan3dsl4planNtB2_7DslPlanNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([368 x i8]) align 16 captures(address) dereferenceable(368) %i.d, ptr noundef nonnull align 16 %i.bf)
          to label %bb.u unwind label %bb.s, !dbg !178492, !noalias !178432

bb.s:                                             ; preds = %bb.v, %bb.r
  %.sroa.0.2.i = phi i1 [ false, %bb.v ], [ true, %bb.r ], !dbg !178493
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = atomicrmw sub ptr %i.ac, i64 16 release, align 8, !dbg !178494, !noalias !178432
  %i.bi = and i64 %i.bh, -14, !dbg !178495
  %i.bj = icmp eq i64 %i.bi, 18, !dbg !178495
  br i1 %i.bj, label %bb.t, label %.noexc8.i, !dbg !178495, !prof !2797

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 16 %i.ac)
          to label %.noexc8.i unwind label %bb.z, !dbg !178496, !noalias !178432

bb.u:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %i.t, i64 408, !dbg !178497
  %i.bl = load i32, ptr %i.bk, align 8, !dbg !178497, !noalias !178432, !noundef !2739
  %i.bm = getelementptr inbounds nuw i8, ptr %i.t, i64 400, !dbg !178498 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 16, !dbg !178498, !noalias !178432, !nonnull !2739, !noundef !2739
  %i.bo = atomicrmw add ptr %i.bn, i64 1 monotonic, align 8, !dbg !178499, !noalias !178432
  %i.bp = icmp slt i64 %i.bo, 0, !dbg !178500
  br i1 %i.bp, label %bb.w, label %bb.v, !dbg !178500

bb.v:                                             ; preds = %bb.u
  %i.bq = load ptr, ptr %i.bm, align 16, !dbg !178501, !noalias !178432, !nonnull !2739, !noundef !2739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.f, ptr noundef nonnull align 16 dereferenceable(368) %i.d, i64 368, i1 false), !dbg !178492, !noalias !178432
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 376, !dbg !178492
  store i32 %i.bl, ptr %i.br, align 8, !dbg !178492, !noalias !178432
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 368, !dbg !178492
  store ptr %i.bq, ptr %i.bs, align 16, !dbg !178492, !noalias !178432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !178492, !noalias !178432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !178502, !noalias !178432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !dbg !178502, !noalias !178434
  invoke void @_RNvMs1_NtCs7Ga9Brpi21q_11polars_lazy5frameNtB5_9LazyFrame7explode(ptr noalias noundef nonnull sret([384 x i8]) align 16 captures(address) dereferenceable(384) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(384) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, i1 noundef zeroext %i.ao, i1 noundef zeroext %i.av)
          to label %bb.x unwind label %bb.s, !dbg !178503, !noalias !178432

bb.w:                                             ; preds = %bb.u
  call void @llvm.trap(), !dbg !178504
  unreachable, !dbg !178504

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !178505, !noalias !178432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !178505, !noalias !178432
  %.sroa.4.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 8, !dbg !178506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.sroa.4.16..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(384) %i.c, i64 384, i1 false), !dbg !178506
  %i.bt = atomicrmw sub ptr %i.ac, i64 16 release, align 8, !dbg !178507, !noalias !178432
  %i.bu = and i64 %i.bt, -14, !dbg !178508
  %i.bv = icmp eq i64 %i.bu, 18, !dbg !178508
  br i1 %i.bv, label %bb.y, label %bb.ab, !dbg !178508, !prof !2797

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 16 %i.ac)
          to label %bb.ab unwind label %.body36, !dbg !178509

bb.z:                                             ; preds = %bb.aa, %bb.t
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !178510, !noalias !178434
  unreachable, !dbg !178510

bb.aa:                                            ; preds = %.split.thread.i, %.noexc8.i
  %.pn13.i = phi { ptr, i32 } [ %i.be, %.split.thread.i ], [ %i.bg, %.noexc8.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k) #54
          to label %.body unwind label %bb.z, !dbg !178486, !noalias !178434

bb.ab:                                            ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !178511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !178454
  %.sroa.221.sroa.2.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !178512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !178513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.221.sroa.2.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(392) %.sroa.4.i, i64 392, i1 false), !dbg !178514
  store i64 0, ptr %i.g, align 16, !dbg !178512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !178515, !noalias !178440
  invoke void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(400) %i.g)
          to label %.noexc38 unwind label %bb.h, !dbg !178516

.noexc38:                                         ; preds = %bb.ab
  %i.bx = load i64, ptr %i.b, align 8, !dbg !178515, !range !2795, !noalias !178440, !noundef !2739
  %i.by = trunc nuw i64 %i.bx to i1, !dbg !178517
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !178518
  %.sroa.446.8.copyload47 = load ptr, ptr %i.bz, align 8, !dbg !178518, !noalias !178442
  br i1 %i.by, label %bb.ac, label %bb.ad, !dbg !178517

bb.ac:                                            ; preds = %.noexc38
  %.sroa.8.8..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !178519
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !178520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.450.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.8..sroa_idx48, i64 56, i1 false), !dbg !178519
  br label %bb.ad, !dbg !178521

bb.ad:                                            ; preds = %.noexc38, %bb.ac
  %storemerge = phi i64 [ 1, %bb.ac ], [ 0, %.noexc38 ], !dbg !178522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !178523, !noalias !178440
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !178522
  store ptr %.sroa.446.8.copyload47, ptr %i.ca, align 8, !dbg !178522
  store i64 %storemerge, ptr %0, align 8, !dbg !178522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !178513
  %i.cb = load ptr, ptr %i.m, align 8, !dbg !178524, !alias.scope !178444, !noundef !2739
  %i.cc = icmp eq ptr %i.cb, null, !dbg !178524
  br i1 %i.cc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit39, label %bb.ae, !dbg !178524

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m), !dbg !178525
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit39, !dbg !178524

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit39: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !178453
  br label %bb.af, !dbg !178526

bb.af:                                            ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit43, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !178447
  ret void, !dbg !178526

bb.ag:                                            ; preds = %bb.p, %bb.n
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.n ], [ %.sink.sroa.gep67, %bb.p ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !178527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, ptr noundef nonnull align 8 dereferenceable(64) %.sink.sroa.phi, i64 64, i1 false), !dbg !178445
  store i64 1, ptr %0, align 8, !dbg !178527
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCseeLknQCOKOd_13polars_python4expr8selector10PySelectorEBM_.exit unwind label %bb.h, !dbg !178528

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCseeLknQCOKOd_13polars_python4expr8selector10PySelectorEBM_.exit: ; preds = %bb.ag, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !178454
  br label %bb.aj, !dbg !178468

bb.ah:                                            ; preds = %bb.o, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.body unwind label %bb.ai, !dbg !178529

bb.ai:                                            ; preds = %bb.ah, %bb.g
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !178530
  unreachable, !dbg !178530

bb.aj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCseeLknQCOKOd_13polars_python4expr8selector10PySelectorEBM_.exit, %bb.i
  %i.cf = load ptr, ptr %i.m, align 8, !dbg !178531, !alias.scope !178446, !noundef !2739
  %i.cg = icmp eq ptr %i.cf, null, !dbg !178531
  br i1 %i.cg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit43, label %bb.ak, !dbg !178531

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m), !dbg !178532
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit43, !dbg !178531

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit43: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !178453
  br label %bb.af, !dbg !178452

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit: ; preds = %.body, %bb.g
  %.pn64 = phi { ptr, i32 } [ %.pn.ph, %.body ], [ %.pn63, %bb.g ]
  resume { ptr, i32 } %.pn64, !dbg !178530
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame20___pymethod_profile__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !178533 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [96 x i8], align 8                ; 8 uses
  %i.d = alloca [112 x i8], align 8               ; 11 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 11 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !178631
  store ptr null, ptr %i.i, align 8, !dbg !178631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !178601
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @964, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.i, i64 noundef 1), !dbg !178601
  %i.j = load i64, ptr %i.h, align 8, !dbg !178632, !range !2795, !noundef !2739
  %i.k = trunc nuw i64 %i.j to i1, !dbg !178633
  br i1 %i.k, label %bb.b, label %bb.c, !dbg !178633

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !178634
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !178635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !dbg !178634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !178601
  store i64 1, ptr %0, align 8, !dbg !178635
  br label %bb.p, !dbg !178636

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !178601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !178637
  store ptr null, ptr %i.g, align 8, !dbg !178637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !178638
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !178639
  %i.n = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameE21try_from_class_objectB11_(ptr noundef nonnull align 16 %1)
          to label %.noexc unwind label %.body, !dbg !178640 ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.o = icmp eq ptr %i.n, null, !dbg !178641
  br i1 %i.o, label %bb.d, label %._crit_edge125, !dbg !178642

bb.d:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !178643 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p)
          to label %bb.f unwind label %.body, !dbg !178644

.body:                                            ; preds = %._crit_edge125, %bb.c, %bb.d, %bb.i, %bb.k
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.pr = load ptr, ptr %i.g, align 8, !dbg !178645, !alias.scope !178609
  %i.r = icmp eq ptr %.pr, null, !dbg !178645
  br i1 %i.r, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit, label %bb.e, !dbg !178645

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit unwind label %bb.s, !dbg !178646

bb.f:                                             ; preds = %bb.d
  %.sroa.016.0.copyload = load ptr, ptr %i.p, align 8, !dbg !178647
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !178647
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !178648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.219.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.0..sroa_idx, i64 56, i1 false), !dbg !178647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !178638
  br label %bb.q, !dbg !178649

._crit_edge125:                                   ; preds = %.noexc
  %.pre = load ptr, ptr %i.i, align 8, !dbg !178638
  store ptr %i.n, ptr %i.g, align 8, !dbg !178650, !alias.scope !178615, !noalias !178616
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !178651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !178638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !178617
  invoke void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentINtNtCscgRAwXFJnXP_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %.pre, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @954, i64 noundef 15)
          to label %bb.g unwind label %.body, !dbg !178617

bb.g:                                             ; preds = %._crit_edge125
  %i.t = load i64, ptr %i.e, align 8, !dbg !178652, !range !2795, !noundef !2739
  %i.u = trunc nuw i64 %i.t to i1, !dbg !178653
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !178654
  %.sroa.022.0.copyload = load ptr, ptr %i.v, align 8, !dbg !178654 ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.i, !dbg !178653

bb.h:                                             ; preds = %bb.g
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !178655
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !178656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.225.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.523.0..sroa_idx, i64 56, i1 false), !dbg !178655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !178657
  br label %bb.q, !dbg !178649

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !178657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !178658, !noalias !178620
  invoke void @_RINvXNtCseeLknQCOKOd_13polars_python5utilsNtNtCsbm5zPlkZccl_4pyo36marker6PythonNtB3_14EnterPolarsExt12enter_polarsTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1P_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMs0_NtNtB5_9lazyframe7generalNtB3I_11PyLazyFrame7profile0EB5_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.c, ptr noundef nonnull align 16 %i.s, ptr noundef %.sroa.022.0.copyload)
          to label %.noexc30 unwind label %.body, !dbg !178659

.noexc30:                                         ; preds = %bb.i
  %.sroa.6.i.sroa.7.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !178660
  %5 = load <6 x i64>, ptr %.sroa.6.i.sroa.7.0..sroa_idx63, align 8, !dbg !178660, !noalias !178620 ; 3 uses
  %6 = load <4 x i64>, ptr %i.c, align 8, !dbg !178661, !noalias !178620 ; 3 uses
  %7 = extractelement <4 x i64> %6, i64 0, !dbg !178661
  %8 = icmp eq i64 %7, -9223372036854775808, !dbg !178661
  %.sroa.6.i.sroa.10.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !178660
  %.sroa.6.i.sroa.10.0.copyload68 = load i64, ptr %.sroa.6.i.sroa.10.0..sroa_idx67, align 8, !dbg !178660, !noalias !178620 ; 2 uses
  br i1 %8, label %bb.j, label %bb.k, !dbg !178662

bb.j:                                             ; preds = %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !178663, !noalias !178620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !178664
  %9 = extractelement <4 x i64> %6, i64 1, !dbg !178665
  %i.w = inttoptr i64 %9 to ptr, !dbg !178665
  br label %bb.l, !dbg !178666

bb.k:                                             ; preds = %.noexc30
  %.sroa.6.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !178667
  %.sroa.945.sroa.3.0..sroa.945.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88, !dbg !178668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !178664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.945.sroa.3.0..sroa.945.8..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.11.0..sroa_idx, i64 24, i1 false), !dbg !178667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !178663, !noalias !178620
  store i64 0, ptr %i.d, align 8, !dbg !178668
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !178668
  store <4 x i64> %6, ptr %.sroa.6.8..sroa_idx, align 8, !dbg !178668
  %.sroa.7.sroa.5.sroa.4.0..sroa.7.sroa.5.0..sroa.7.8..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !178668
  %i.x = shufflevector <6 x i64> %5, <6 x i64> poison, <2 x i32> <i32 2, i32 3>, !dbg !178668
  store <2 x i64> %i.x, ptr %.sroa.7.sroa.5.sroa.4.0..sroa.7.sroa.5.0..sroa.7.8..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !178668
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !178668
  store i64 0, ptr %.sroa.8.8..sroa_idx, align 8, !dbg !178668
  %.sroa.945.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64, !dbg !178668
  %i.y = shufflevector <6 x i64> %5, <6 x i64> poison, <2 x i32> <i32 4, i32 5>, !dbg !178668
  store <2 x i64> %i.y, ptr %.sroa.945.8..sroa_idx, align 8, !dbg !178668
  %.sroa.945.sroa.2.0..sroa.945.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80, !dbg !178668
  store i64 %.sroa.6.i.sroa.10.0.copyload68, ptr %.sroa.945.sroa.2.0..sroa.945.8..sroa_idx.sroa_idx, align 8, !dbg !178668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !178669, !noalias !178625
  invoke void @_RNvXsn_NtNtCsbm5zPlkZccl_4pyo35types5tupleTNtNtCseeLknQCOKOd_13polars_python9dataframe11PyDataFrameBF_ENtNtB9_10conversion12IntoPyObject13into_pyobjectBJ_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.d)
          to label %.noexc32 unwind label %.body, !dbg !178670

.noexc32:                                         ; preds = %bb.k
  %i.z = load i64, ptr %i.b, align 8, !dbg !178669, !range !2795, !noalias !178625, !noundef !2739
  %i.aa = trunc nuw i64 %i.z to i1, !dbg !178671
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !178672
  %.sroa.5.8.copyload48 = load ptr, ptr %i.ab, align 8, !dbg !178672, !noalias !178627 ; 2 uses
  br i1 %i.aa, label %.thread115, label %bb.m, !dbg !178671

.thread115:                                       ; preds = %.noexc32
  %.sroa.10.8..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !178673
  %i.ac = load <6 x i64>, ptr %.sroa.10.8..sroa_idx50, align 8, !dbg !178673, !noalias !178627
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx50.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !178673
  %.sroa.10.sroa.6.0.copyload56 = load i64, ptr %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx50.sroa_idx, align 8, !dbg !178673, !noalias !178627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !178674, !noalias !178625
  br label %bb.l, !dbg !178666

bb.l:                                             ; preds = %.thread115, %bb.j
  %.sroa.10.sroa.6.0 = phi i64 [ %.sroa.6.i.sroa.10.0.copyload68, %bb.j ], [ %.sroa.10.sroa.6.0.copyload56, %.thread115 ], !dbg !178675
  %.sroa.5.0 = phi ptr [ %i.w, %bb.j ], [ %.sroa.5.8.copyload48, %.thread115 ], !dbg !178675
  %i.ad = phi <6 x i64> [ %5, %bb.j ], [ %i.ac, %.thread115 ], !dbg !178675
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !178676
  store ptr %.sroa.5.0, ptr %i.ae, align 8, !dbg !178676
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !178676
  store <6 x i64> %i.ad, ptr %.sroa.558.0..sroa_idx, align 8, !dbg !178676
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !178676
  store i64 %.sroa.10.sroa.6.0, ptr %.sroa.760.0..sroa_idx, align 8, !dbg !178676
  br label %bb.n, !dbg !178677

bb.m:                                             ; preds = %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !178674, !noalias !178625
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !178678
  store ptr %.sroa.5.8.copyload48, ptr %i.af, align 8, !dbg !178678
  br label %bb.n, !dbg !178679

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge = phi i64 [ 0, %bb.m ], [ 1, %bb.l ], !dbg !178680
  store i64 %storemerge, ptr %0, align 8, !dbg !178680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !178664
  %i.ag = load ptr, ptr %i.g, align 8, !dbg !178681, !alias.scope !178628, !noundef !2739
  %i.ah = icmp eq ptr %i.ag, null, !dbg !178681
  br i1 %i.ah, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit33, label %bb.o, !dbg !178681

bb.o:                                             ; preds = %bb.n
  call void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g), !dbg !178682
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit33, !dbg !178681

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit33: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !178637
  br label %bb.p, !dbg !178683

bb.p:                                             ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit34, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !178631
  ret void, !dbg !178683

bb.q:                                             ; preds = %bb.h, %bb.f
  %.sroa.022.0.copyload.sink = phi ptr [ %.sroa.022.0.copyload, %bb.h ], [ %.sroa.016.0.copyload, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !178684
  store ptr %.sroa.022.0.copyload.sink, ptr %i.ai, align 8, !dbg !178684
  store i64 1, ptr %0, align 8, !dbg !178684
  %i.aj = load ptr, ptr %i.g, align 8, !dbg !178685, !alias.scope !178630, !noundef !2739
  %i.ak = icmp eq ptr %i.aj, null, !dbg !178685
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit34, label %bb.r, !dbg !178685

bb.r:                                             ; preds = %bb.q
  call void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g), !dbg !178686
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit34, !dbg !178685

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit34: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !178637
  br label %bb.p, !dbg !178636

bb.s:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !178687
  unreachable, !dbg !178687

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %i.q, !dbg !178687
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame20___pymethod_reverse__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !178688 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [384 x i8], align 16              ; 4 uses
  %.sroa.4.i = alloca [392 x i8], align 8         ; 2 uses
  %i.c = alloca [368 x i8], align 16              ; 4 uses
  %i.d = alloca [384 x i8], align 16              ; 7 uses
  %i.e = alloca [400 x i8], align 16              ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !178810
  store ptr null, ptr %i.g, align 8, !dbg !178810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !178811
  %i.h = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameE21try_from_class_objectB11_(ptr noundef nonnull align 16 %1)
          to label %.noexc unwind label %bb.e, !dbg !178812 ; 7 uses

.noexc:                                           ; preds = %bb.a
  %i.i = icmp eq ptr %i.h, null, !dbg !178813
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !178814

bb.b:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !178815 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j)
          to label %bb.g unwind label %bb.e, !dbg !178816

bb.c:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.g, align 8, !dbg !178817, !alias.scope !178789, !noalias !178790, !noundef !2739
  %i.l = icmp eq ptr %i.k, null, !dbg !178817
  br i1 %i.l, label %bb.h, label %bb.d, !dbg !178817

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.h unwind label %.body.thread, !dbg !178818, !noalias !178790

.body.thread:                                     ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %i.g, align 8, !dbg !178819, !alias.scope !178791, !noalias !178790
  br label %bb.f, !dbg !178820

bb.e:                                             ; preds = %bb.q, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api6rwlock15RwLockReadGuardNtNtCs3mtJKb2XD8V_11parking_lot10raw_rwlock9RawRwLockNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEECseeLknQCOKOd_13polars_python.exit8.i, %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %bb.b, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !178808

.body:                                            ; preds = %bb.i, %bb.j, %bb.o, %bb.e
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.as, %bb.o ], [ %i.ac, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %.pr = load ptr, ptr %i.g, align 8, !dbg !178820, !alias.scope !178792
  %i.o = icmp eq ptr %.pr, null, !dbg !178820
  br i1 %i.o, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit, label %bb.f, !dbg !178820

bb.f:                                             ; preds = %.body.thread, %.body
  %eh.lpad-body31 = phi { ptr, i32 } [ %i.m, %.body.thread ], [ %eh.lpad-body.ph, %.body ]
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit unwind label %bb.t, !dbg !178821

bb.g:                                             ; preds = %bb.b
  %.sroa.08.0.copyload = load ptr, ptr %i.j, align 8, !dbg !178822
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !178822
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !178823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.211.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.59.0..sroa_idx, i64 56, i1 false), !dbg !178822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !178824
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !178823
  store ptr %.sroa.08.0.copyload, ptr %i.p, align 8, !dbg !178823
  store i64 1, ptr %0, align 8, !dbg !178823
  %i.q = load ptr, ptr %i.g, align 8, !dbg !178825, !alias.scope !178797, !noundef !2739
  %i.r = icmp eq ptr %i.q, null, !dbg !178825
  br i1 %i.r, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit16, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_.exit16.sink.split, !dbg !178825

bb.h:                                             ; preds = %bb.d, %bb.c
  store ptr %i.h, ptr %i.g, align 8, !dbg !178819, !alias.scope !178791, !noalias !178790
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !178826 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !178824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !178827, !noalias !178798
  %i.t = load atomic i64, ptr %i.s monotonic, align 8, !dbg !178828, !noalias !178798 ; 4 uses
  %i.u = and i64 %i.t, 8, !dbg !178829
  %i.v = icmp ne i64 %i.u, 0, !dbg !178829
  %i.w = icmp ugt i64 %i.t, -17
  %or.cond.i.i = or i1 %i.w, %i.v, !dbg !178829
  br i1 %or.cond.i.i, label %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, label %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, !dbg !178829, !prof !3632

_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i: ; preds = %bb.h
  %i.x = add nuw i64 %i.t, 16, !dbg !178830
  %i.y = cmpxchg weak ptr %i.s, i64 %i.t, i64 %i.x acquire monotonic, align 8, !dbg !178831, !noalias !178798
  %i.z = extractvalue { i64, i1 } %i.y, 1, !dbg !178831
  br i1 %i.z, label %.noexc17, label %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, !dbg !178832, !prof !3814

_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i: ; preds = %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, %bb.h
  %i.aa = invoke noundef zeroext i1 @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 16 %i.s, i1 noundef zeroext false, i64 undef, i32 noundef 1000000000)
          to label %.noexc17 unwind label %bb.e, !dbg !178833 ; 0 uses

.noexc17:                                         ; preds = %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !178834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !178835, !noalias !178798
  invoke void @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan3dsl4planNtB2_7DslPlanNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([368 x i8]) align 16 captures(address) dereferenceable(368) %i.c, ptr noundef nonnull align 16 %i.ab)
          to label %bb.k unwind label %bb.i, !dbg !178835, !noalias !178798

bb.i:                                             ; preds = %.noexc17
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = atomicrmw sub ptr %i.s, i64 16 release, align 8, !dbg !178836, !noalias !178798
  %i.ae = and i64 %i.ad, -14, !dbg !178837
  %i.af = icmp eq i64 %i.ae, 18, !dbg !178837
  br i1 %i.af, label %bb.j, label %.body, !dbg !178837, !prof !2797

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 16 %i.s)
          to label %.body unwind label %bb.p, !dbg !178838, !noalias !178798

bb.k:                                             ; preds = %.noexc17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 408, !dbg !178839
  %i.ah = load i32, ptr %i.ag, align 8, !dbg !178839, !noalias !178798, !noundef !2739
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 400, !dbg !178840 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 16, !dbg !178840, !noalias !178798, !nonnull !2739, !noundef !2739
  %i.ak = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !dbg !178841, !noalias !178798
  %i.al = icmp slt i64 %i.ak, 0, !dbg !178842
  br i1 %i.al, label %bb.n, label %bb.l, !dbg !178842

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.ai, align 16, !dbg !178843, !noalias !178798, !nonnull !2739, !noundef !2739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.d, ptr noundef nonnull align 16 dereferenceable(368) %i.c, i64 368, i1 false), !dbg !178835, !noalias !178798
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 376, !dbg !178835
  store i32 %i.ah, ptr %i.an, align 8, !dbg !178835, !noalias !178798
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 368, !dbg !178835
  store ptr %i.am, ptr %i.ao, align 16, !dbg !178835, !noalias !178798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !178835, !noalias !178798
  %i.ap = atomicrmw sub ptr %i.s, i64 16 release, align 8, !dbg !178844, !noalias !178798
  %i.aq = and i64 %i.ap, -14, !dbg !178845
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !178845
  br i1 %i.ar, label %bb.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api6rwlock15RwLockReadGuardNtNtCs3mtJKb2XD8V_11parking_lot10raw_rwlock9RawRwLockNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEECseeLknQCOKOd_13polars_python.exit8.i, !dbg !178845, !prof !2797

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 16 %i.s)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api6rwlock15RwLockReadGuardNtNtCs3mtJKb2XD8V_11parking_lot10raw_rwlock9RawRwLockNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEECseeLknQCOKOd_13polars_python.exit8.i unwind label %bb.o, !dbg !178846, !noalias !178798

bb.n:                                             ; preds = %bb.k
  call void @llvm.trap(), !dbg !178847
  unreachable, !dbg !178847
end_hunk_0
begin_hunk_1_@memcmp
!178460 = !DILocation(line: 2189, column: 27, scope: !2256, inlinedAt: !178304)
!178461 = !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178313)
!178462 = !DILocation(line: 810, column: 1, scope: !881, inlinedAt: !178314)
!178463 = !DILocation(line: 1726, column: 9, scope: !2260, inlinedAt: !178312)
!178464 = !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178315)
!178465 = !DILocation(line: 810, column: 1, scope: !881, inlinedAt: !178318)
!178466 = !DILocation(line: 2175, column: 17, scope: !178319, inlinedAt: !178423)
!178467 = !DILocation(line: 2189, column: 23, scope: !178320, inlinedAt: !178425)
!178468 = !DILocation(line: 0, scope: !178426)
!178469 = !DILocation(line: 2447, column: 9, scope: !2261, inlinedAt: !178325)
!178470 = !DILocation(line: 2173, column: 15, scope: !178326, inlinedAt: !178427)
!178471 = !DILocation(line: 2173, column: 9, scope: !178326, inlinedAt: !178427)
!178472 = !DILocation(line: 0, scope: !178326, inlinedAt: !178427)
!178473 = !DILocation(line: 2175, column: 17, scope: !178326, inlinedAt: !178427)
!178474 = !DILocation(line: 1355, column: 40, scope: !178297)
!178475 = !DILocation(line: 2189, column: 23, scope: !178327, inlinedAt: !178429)
!178476 = !DILocation(line: 2174, column: 16, scope: !178326, inlinedAt: !178427)
!178477 = !DILocation(line: 2173, column: 15, scope: !178330, inlinedAt: !178430)
!178478 = !DILocation(line: 2173, column: 9, scope: !178330, inlinedAt: !178430)
!178479 = !DILocation(line: 2174, column: 16, scope: !178330, inlinedAt: !178430)
!178480 = !DILocation(line: 2173, column: 15, scope: !178330, inlinedAt: !178431)
!178481 = !DILocation(line: 2173, column: 9, scope: !178330, inlinedAt: !178431)
!178482 = !DILocation(line: 2174, column: 16, scope: !178330, inlinedAt: !178431)
!178483 = !DILocation(line: 1356, column: 9, scope: !178331, inlinedAt: !178332)
!178484 = !DILocation(line: 3904, column: 24, scope: !243, inlinedAt: !178342)
!178485 = !DILocation(line: 513, column: 12, scope: !2190, inlinedAt: !178340)
!178486 = !DILocation(line: 1367, column: 5, scope: !178331, inlinedAt: !178332)
!178487 = !DILocation(line: 823, column: 37, scope: !2191, inlinedAt: !178343)
!178488 = !DILocation(line: 4054, column: 17, scope: !2180, inlinedAt: !178345)
!178489 = !DILocation(line: 108, column: 13, scope: !178336, inlinedAt: !178339)
!178490 = !DILocation(line: 109, column: 31, scope: !178336, inlinedAt: !178339)
!178491 = !DILocation(line: 2447, column: 9, scope: !178346, inlinedAt: !178349)
!178492 = !DILocation(line: 68, column: 10, scope: !178350, inlinedAt: !178351)
!178493 = !DILocation(line: 0, scope: !178331, inlinedAt: !178332)
!178494 = !DILocation(line: 3956, column: 24, scope: !2198, inlinedAt: !178356)
!178495 = !DILocation(line: 136, column: 12, scope: !2203, inlinedAt: !178354)
!178496 = !DILocation(line: 137, column: 18, scope: !2203, inlinedAt: !178354)
!178497 = !DILocation(line: 4, column: 16, scope: !178358, inlinedAt: !178359)
!178498 = !DILocation(line: 444, column: 20, scope: !178360, inlinedAt: !178365)
!178499 = !DILocation(line: 3937, column: 24, scope: !178366, inlinedAt: !178369)
!178500 = !DILocation(line: 2411, column: 12, scope: !178370, inlinedAt: !178363)
!178501 = !DILocation(line: 2415, column: 38, scope: !178370, inlinedAt: !178363)
!178502 = !DILocation(line: 1360, column: 17, scope: !178331, inlinedAt: !178332)
!178503 = !DILocation(line: 1359, column: 14, scope: !178331, inlinedAt: !178332)
!178504 = !DILocation(line: 2412, column: 13, scope: !178370, inlinedAt: !178363)
!178505 = !DILocation(line: 1365, column: 13, scope: !178331, inlinedAt: !178332)
!178506 = !DILocation(line: 371, column: 9, scope: !178371, inlinedAt: !178376)
!178507 = !DILocation(line: 3956, column: 24, scope: !2198, inlinedAt: !178381)
!178508 = !DILocation(line: 136, column: 12, scope: !2203, inlinedAt: !178379)
!178509 = !DILocation(line: 137, column: 18, scope: !2203, inlinedAt: !178379)
!178510 = !DILocation(line: 1355, column: 5, scope: !178331, inlinedAt: !178332)
!178511 = !DILocation(line: 1367, column: 6, scope: !178331, inlinedAt: !178332)
!178512 = !DILocation(line: 1493, column: 16, scope: !178382, inlinedAt: !178437)
!178513 = !DILocation(line: 1355, column: 85, scope: !178384)
!178514 = !DILocation(line: 967, column: 22, scope: !178387, inlinedAt: !178439)
!178515 = !DILocation(line: 227, column: 15, scope: !2264, inlinedAt: !178395)
!178516 = !DILocation(line: 102, column: 22, scope: !2265, inlinedAt: !178397)
!178517 = !DILocation(line: 227, column: 9, scope: !2264, inlinedAt: !178395)
!178518 = !DILocation(line: 0, scope: !2264, inlinedAt: !178395)
!178519 = !DILocation(line: 229, column: 17, scope: !2264, inlinedAt: !178395)
!178520 = !DILocation(line: 837, column: 23, scope: !178399, inlinedAt: !178443)
!178521 = !DILocation(line: 839, column: 5, scope: !178398, inlinedAt: !178443)
!178522 = !DILocation(line: 0, scope: !178398, inlinedAt: !178443)
!178523 = !DILocation(line: 231, column: 5, scope: !2264, inlinedAt: !178395)
!178524 = !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178402)
!178525 = !DILocation(line: 810, column: 1, scope: !881, inlinedAt: !178403)
!178526 = !DILocation(line: 105, column: 64, scope: !178285)
!178527 = !DILocation(line: 2189, column: 23, scope: !178289, inlinedAt: !178445)
!178528 = !DILocation(line: 810, column: 1, scope: !2267, inlinedAt: !178404)
!178529 = !DILocation(line: 810, column: 1, scope: !2267, inlinedAt: !178405)
!178530 = !DILocation(line: 99, column: 9, scope: !178285)
!178531 = !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178408)
!178532 = !DILocation(line: 810, column: 1, scope: !881, inlinedAt: !178409)
!178533 = distinct !DISubprogram(name: "__pymethod_profile__", linkageName: "_RNvMs1_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame20___pymethod_profile__", scope: !3830, file: !3907, line: 99, type: !2740, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178534 = distinct !DILexicalBlock(scope: !178533, file: !3015, line: 86, column: 1)
!178535 = distinct !DILexicalBlock(scope: !178534, file: !3015, line: 86, column: 1)
!178536 = distinct !DISubprogram(name: "branch<((), ()), pyo3::err::PyErr>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultTuuENtNtCsbm5zPlkZccl_4pyo33err5PyErrENtNtNtB7_3ops9try_trait3Try6branchCseeLknQCOKOd_13polars_python", scope: !2860, file: !2858, line: 2172, type: !2740, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178537 = distinct !DISubprogram(name: "from_residual<*mut pyo3_ffi::object::PyObject, pyo3::err::PyErr, pyo3::err::PyErr>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultONtNtCsfueLBegRnmY_8pyo3_ffi6object8PyObjectNtNtCsbm5zPlkZccl_4pyo33err5PyErrEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1s_EE13from_residualCseeLknQCOKOd_13polars_python", scope: !2891, file: !2858, line: 2187, type: !2740, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178538 = distinct !DILexicalBlock(scope: !178537, file: !2858, line: 2189, column: 13)
!178539 = distinct !DILexicalBlock(scope: !178535, file: !3015, line: 86, column: 12)
!178540 = distinct !DILexicalBlock(scope: !178539, file: !3015, line: 86, column: 12)
!178541 = distinct !DILexicalBlock(scope: !178535, file: !3015, line: 86, column: 1)
!178542 = distinct !DILexicalBlock(scope: !178541, file: !3015, line: 86, column: 1)
!178543 = distinct !DILexicalBlock(scope: !178542, file: !3015, line: 86, column: 1)
!178544 = distinct !DISubprogram(name: "new_unchecked<pyo3_ffi::object::PyObject>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtCsfueLBegRnmY_8pyo3_ffi6object8PyObjectE13new_uncheckedCseeLknQCOKOd_13polars_python", scope: !2874, file: !2872, line: 233, type: !2740, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178545 = distinct !DISubprogram(name: "cast_function_argument", linkageName: "_RNvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument22cast_function_argument", scope: !3897, file: !3895, line: 408, type: !2740, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178546 = distinct !DISubprogram(name: "from_ptr_unchecked", linkageName: "_RNvMsd_NtCsbm5zPlkZccl_4pyo38instanceINtB5_8BorrowedNtNtNtB7_5types3any5PyAnyE18from_ptr_unchecked", scope: !3193, file: !3059, line: 1198, type: !2740, scopeLine: 1198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178547 = distinct !DILocation(line: 86, column: 1, scope: !178543)
!178548 = distinct !DILocation(line: 242, column: 31, scope: !2253, inlinedAt: !178547)
!178549 = distinct !DILocation(line: 242, column: 31, scope: !3898, inlinedAt: !178547)
!178550 = distinct !DILocation(line: 242, column: 31, scope: !3899, inlinedAt: !178547)
!178551 = distinct !{!178551, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_"}
!178552 = distinct !{!178552, !178551, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_: argument 0"}
!178553 = distinct !DILocation(line: 86, column: 1, scope: !178542)
!178554 = distinct !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178553)
!178555 = distinct !DISubprogram(name: "branch<&polars_python::lazyframe::PyLazyFrame, pyo3::err::PyErr>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultRNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameNtNtCsbm5zPlkZccl_4pyo33err5PyErrENtNtNtB7_3ops9try_trait3Try6branchBP_", scope: !2860, file: !2858, line: 2172, type: !2740, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178556 = distinct !DILexicalBlock(scope: !178537, file: !2858, line: 2189, column: 13)
!178557 = distinct !DILexicalBlock(scope: !178543, file: !3015, line: 86, column: 12)
!178558 = distinct !DILexicalBlock(scope: !178557, file: !3015, line: 86, column: 12)
!178559 = distinct !{!178559, !"_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument27extract_pyclass_ref_trustedNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEB1k_"}
!178560 = distinct !{!178560, !178559, !"_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument27extract_pyclass_ref_trustedNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEB1k_: argument 1"}
!178561 = distinct !{!178561, !"_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEE6insertB1D_"}
!178562 = distinct !{!178562, !178561, !"_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEE6insertB1D_: argument 0"}
!178563 = distinct !{!178563, !178559, !"_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument27extract_pyclass_ref_trustedNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEB1k_: argument 0"}
!178564 = distinct !DILocation(line: 242, column: 24, scope: !2253, inlinedAt: !178547)
!178565 = distinct !DILocation(line: 242, column: 17, scope: !2253, inlinedAt: !178547)
!178566 = distinct !DILocation(line: 292, column: 43, scope: !2263, inlinedAt: !178565)
!178567 = distinct !DILocation(line: 445, column: 29, scope: !2262, inlinedAt: !178566)
!178568 = distinct !DISubprogram(name: "branch<core::option::Option<pyo3::instance::Py<pyo3::types::any::PyAny>>, pyo3::err::PyErr>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultINtNtB7_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1b_5types3any5PyAnyEENtNtB1b_3err5PyErrENtNtNtB7_3ops9try_trait3Try6branchCseeLknQCOKOd_13polars_python", scope: !2860, file: !2858, line: 2172, type: !2740, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178569 = distinct !DILexicalBlock(scope: !178537, file: !2858, line: 2189, column: 13)
!178570 = distinct !DILexicalBlock(scope: !178543, file: !3015, line: 594, column: 42)
!178571 = distinct !DILexicalBlock(scope: !178570, file: !3015, line: 594, column: 42)
!178572 = distinct !{!178572, !"_RNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame7profile"}
!178573 = distinct !{!178573, !178572, !"_RNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame7profile: argument 0"}
!178574 = distinct !DISubprogram(name: "profile", linkageName: "_RNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame7profile", scope: !3830, file: !3015, line: 591, type: !2740, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178575 = distinct !DILocation(line: 86, column: 1, scope: !178543)
!178576 = distinct !DISubprogram(name: "branch<(polars_core::frame::dataframe::DataFrame, polars_core::frame::dataframe::DataFrame), pyo3::err::PyErr>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameBL_ENtNtCsbm5zPlkZccl_4pyo33err5PyErrENtNtNtB7_3ops9try_trait3Try6branchCseeLknQCOKOd_13polars_python", scope: !2860, file: !2858, line: 2172, type: !2740, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178577 = distinct !DILocation(line: 596, column: 29, scope: !178574, inlinedAt: !178575)
!178578 = distinct !DILexicalBlock(scope: !178543, file: !3015, line: 86, column: 1)
!178579 = distinct !DILexicalBlock(scope: !178578, file: !3015, line: 595, column: 10)
!178580 = distinct !DISubprogram(name: "and_then<(polars_python::dataframe::PyDataFrame, polars_python::dataframe::PyDataFrame), pyo3::err::PyErr, pyo3::instance::Bound<pyo3::types::any::PyAny>, pyo3::impl_::wrap::{impl#12}::map_into_ptr::{closure_env#0}<(polars_python::dataframe::PyDataFrame, polars_python::dataframe::PyDataFrame), pyo3::err::PyErr>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultTNtNtCseeLknQCOKOd_13polars_python9dataframe11PyDataFrameBJ_ENtNtCsbm5zPlkZccl_4pyo33err5PyErrE8and_thenINtNtB1L_8instance5BoundNtNtNtB1L_5types3any5PyAnyENCNvMsa_NtNtB1L_5impl_4wrapINtB3l_21IntoPyObjectConverterBv_E12map_into_ptr0EBN_", scope: !2861, file: !2858, line: 1488, type: !2740, scopeLine: 1488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178581 = distinct !DILexicalBlock(scope: !178580, file: !2858, line: 1494, column: 13)
!178582 = distinct !DISubprogram(name: "map_into_ptr<(polars_python::dataframe::PyDataFrame, polars_python::dataframe::PyDataFrame), pyo3::err::PyErr>", linkageName: "_RNvMsa_NtNtCsbm5zPlkZccl_4pyo35impl_4wrapINtB5_21IntoPyObjectConverterINtNtCscgRAwXFJnXP_4core6result6ResultTNtNtCseeLknQCOKOd_13polars_python9dataframe11PyDataFrameB1J_ENtNtB9_3err5PyErrEE12map_into_ptrB1N_", scope: !3902, file: !3900, line: 129, type: !2740, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178583 = distinct !DISubprogram(name: "map<pyo3::instance::Bound<pyo3::types::any::PyAny>, pyo3::err::PyErr, *mut pyo3_ffi::object::PyObject, fn(pyo3::instance::Bound<pyo3::types::any::PyAny>) -> *mut pyo3_ffi::object::PyObject>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtBN_5types3any5PyAnyENtNtBN_3err5PyErrE3mapONtNtCsfueLBegRnmY_8pyo3_ffi6object8PyObjectNvMs9_BL_BI_8into_ptrECseeLknQCOKOd_13polars_python", scope: !2861, file: !2858, line: 831, type: !2740, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178584 = distinct !{!178584, !"_RNvYTNtNtCseeLknQCOKOd_13polars_python9dataframe11PyDataFrameB3_ENtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB7_"}
!178585 = distinct !{!178585, !178584, !"_RNvYTNtNtCseeLknQCOKOd_13polars_python9dataframe11PyDataFrameB3_ENtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB7_: argument 1"}
!178586 = distinct !{!178586, !178584, !"_RNvYTNtNtCseeLknQCOKOd_13polars_python9dataframe11PyDataFrameB3_ENtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB7_: argument 0"}
!178587 = distinct !DISubprogram(name: "into_bound_py_any<(polars_python::dataframe::PyDataFrame, polars_python::dataframe::PyDataFrame)>", linkageName: "_RNvYTNtNtCseeLknQCOKOd_13polars_python9dataframe11PyDataFrameB3_ENtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB7_", scope: !3903, file: !3676, line: 226, type: !2740, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178588 = distinct !DISubprogram(name: "{closure#0}<(polars_python::dataframe::PyDataFrame, polars_python::dataframe::PyDataFrame), pyo3::err::PyErr>", linkageName: "_RNCNvMsa_NtNtCsbm5zPlkZccl_4pyo35impl_4wrapINtB7_21IntoPyObjectConverterINtNtCscgRAwXFJnXP_4core6result6ResultTNtNtCseeLknQCOKOd_13polars_python9dataframe11PyDataFrameB1L_ENtNtBb_3err5PyErrEE12map_into_ptr0B1P_", scope: !3905, file: !3900, line: 133, type: !2740, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178589 = distinct !DILexicalBlock(scope: !178580, file: !2858, line: 1493, column: 13)
!178590 = distinct !DILocation(line: 133, column: 32, scope: !178588, inlinedAt: !178626)
!178591 = distinct !DILexicalBlock(scope: !178583, file: !2858, line: 837, column: 13)
!178592 = distinct !DILexicalBlock(scope: !178583, file: !2858, line: 836, column: 13)
!178593 = distinct !{!178593, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_"}
!178594 = distinct !{!178594, !178593, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_: argument 0"}
!178595 = distinct !DILocation(line: 86, column: 1, scope: !178542)
!178596 = distinct !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178595)
!178597 = distinct !{!178597, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_"}
!178598 = distinct !{!178598, !178597, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_: argument 0"}
!178599 = distinct !DILocation(line: 86, column: 1, scope: !178542)
!178600 = distinct !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178599)
!178601 = !DILocation(line: 86, column: 1, scope: !178535)
!178602 = !DILexicalBlockFile(scope: !178540, file: !3015, discriminator: 4)
!178603 = !DILocation(line: 86, column: 1, scope: !178602)
!178604 = !DILexicalBlockFile(scope: !178535, file: !2902, discriminator: 0)
!178605 = !DILexicalBlockFile(scope: !178543, file: !3015, discriminator: 2)
!178606 = !DILocation(line: 86, column: 1, scope: !178605)
!178607 = !DILocation(line: 413, column: 14, scope: !178545, inlinedAt: !178606)
!178608 = !DILocation(line: 1200, column: 42, scope: !178546, inlinedAt: !178607)
!178609 = !{!178552}
!178610 = !DILexicalBlockFile(scope: !178543, file: !3015, discriminator: 6)
!178611 = !DILocation(line: 86, column: 1, scope: !178610)
!178612 = !DILexicalBlockFile(scope: !178558, file: !3015, discriminator: 8)
!178613 = !DILocation(line: 86, column: 1, scope: !178612)
!178614 = !DILexicalBlockFile(scope: !178543, file: !2902, discriminator: 0)
!178615 = !{!178562, !178560}
!178616 = !{!178563}
!178617 = !DILocation(line: 594, column: 26, scope: !178543)
!178618 = !DILexicalBlockFile(scope: !178571, file: !3015, discriminator: 2)
!178619 = !DILocation(line: 594, column: 26, scope: !178618)
!178620 = !{!178573}
!178621 = !DILexicalBlockFile(scope: !178579, file: !3015, discriminator: 16)
!178622 = !DILocation(line: 595, column: 10, scope: !178621)
!178623 = !DILocation(line: 133, column: 13, scope: !178582, inlinedAt: !178622)
!178624 = !DILocation(line: 134, column: 14, scope: !178582, inlinedAt: !178622)
!178625 = !{!178586, !178585}
!178626 = !DILocation(line: 1493, column: 22, scope: !178589, inlinedAt: !178623)
!178627 = !{!178585}
!178628 = !{!178594}
!178629 = !DILocation(line: 0, scope: !178543)
!178630 = !{!178598}
!178631 = !DILocation(line: 86, column: 1, scope: !178534)
!178632 = !DILocation(line: 2173, column: 15, scope: !178536, inlinedAt: !178601)
!178633 = !DILocation(line: 2173, column: 9, scope: !178536, inlinedAt: !178601)
!178634 = !DILocation(line: 2175, column: 17, scope: !178536, inlinedAt: !178601)
!178635 = !DILocation(line: 2189, column: 23, scope: !178538, inlinedAt: !178603)
!178636 = !DILocation(line: 0, scope: !178604)
!178637 = !DILocation(line: 86, column: 1, scope: !178542)
!178638 = !DILocation(line: 86, column: 1, scope: !178543)
!178639 = !DILocation(line: 241, column: 13, scope: !178544, inlinedAt: !178608)
!178640 = !DILocation(line: 107, column: 9, scope: !2252, inlinedAt: !178548)
!178641 = !DILocation(line: 2173, column: 15, scope: !2254, inlinedAt: !178549)
!178642 = !DILocation(line: 2173, column: 9, scope: !2254, inlinedAt: !178549)
!178643 = !DILocation(line: 2189, column: 23, scope: !2256, inlinedAt: !178550)
!178644 = !DILocation(line: 2189, column: 27, scope: !2256, inlinedAt: !178550)
!178645 = !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178553)
!178646 = !DILocation(line: 810, column: 1, scope: !881, inlinedAt: !178554)
!178647 = !DILocation(line: 2175, column: 17, scope: !178555, inlinedAt: !178611)
!178648 = !DILocation(line: 2189, column: 23, scope: !178556, inlinedAt: !178613)
!178649 = !DILocation(line: 0, scope: !178614)
!178650 = !DILocation(line: 1726, column: 9, scope: !2260, inlinedAt: !178564)
!178651 = !DILocation(line: 2447, column: 9, scope: !2261, inlinedAt: !178567)
!178652 = !DILocation(line: 2173, column: 15, scope: !178568, inlinedAt: !178617)
!178653 = !DILocation(line: 2173, column: 9, scope: !178568, inlinedAt: !178617)
!178654 = !DILocation(line: 0, scope: !178568, inlinedAt: !178617)
!178655 = !DILocation(line: 2175, column: 17, scope: !178568, inlinedAt: !178617)
!178656 = !DILocation(line: 2189, column: 23, scope: !178569, inlinedAt: !178619)
!178657 = !DILocation(line: 594, column: 42, scope: !178543)
!178658 = !DILocation(line: 596, column: 29, scope: !178574, inlinedAt: !178575)
!178659 = !DILocation(line: 596, column: 32, scope: !178574, inlinedAt: !178575)
!178660 = !DILocation(line: 0, scope: !178576, inlinedAt: !178577)
!178661 = !DILocation(line: 2173, column: 15, scope: !178576, inlinedAt: !178577)
!178662 = !DILocation(line: 2173, column: 9, scope: !178576, inlinedAt: !178577)
!178663 = !DILocation(line: 605, column: 11, scope: !178574, inlinedAt: !178575)
!178664 = !DILocation(line: 595, column: 10, scope: !178579)
!178665 = !DILocation(line: 1494, column: 23, scope: !178581, inlinedAt: !178623)
!178666 = !DILocation(line: 835, column: 9, scope: !178583, inlinedAt: !178624)
!178667 = !DILocation(line: 2174, column: 16, scope: !178576, inlinedAt: !178577)
!178668 = !DILocation(line: 1493, column: 16, scope: !178580, inlinedAt: !178623)
!178669 = !DILocation(line: 227, column: 15, scope: !178587, inlinedAt: !178590)
!178670 = !DILocation(line: 227, column: 20, scope: !178587, inlinedAt: !178590)
!178671 = !DILocation(line: 227, column: 9, scope: !178587, inlinedAt: !178590)
!178672 = !DILocation(line: 0, scope: !178587, inlinedAt: !178590)
!178673 = !DILocation(line: 229, column: 17, scope: !178587, inlinedAt: !178590)
!178674 = !DILocation(line: 231, column: 5, scope: !178587, inlinedAt: !178590)
!178675 = !DILocation(line: 0, scope: !178580, inlinedAt: !178623)
!178676 = !DILocation(line: 837, column: 23, scope: !178591, inlinedAt: !178624)
!178677 = !DILocation(line: 839, column: 5, scope: !178583, inlinedAt: !178624)
!178678 = !DILocation(line: 836, column: 22, scope: !178592, inlinedAt: !178624)
!178679 = !DILocation(line: 839, column: 6, scope: !178583, inlinedAt: !178624)
!178680 = !DILocation(line: 0, scope: !178583, inlinedAt: !178624)
!178681 = !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178595)
!178682 = !DILocation(line: 810, column: 1, scope: !881, inlinedAt: !178596)
!178683 = !DILocation(line: 105, column: 64, scope: !178533)
!178684 = !DILocation(line: 2189, column: 23, scope: !178537, inlinedAt: !178629)
!178685 = !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178599)
!178686 = !DILocation(line: 810, column: 1, scope: !881, inlinedAt: !178600)
!178687 = !DILocation(line: 99, column: 9, scope: !178533)
!178688 = distinct !DISubprogram(name: "__pymethod_reverse__", linkageName: "_RNvMs1_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame20___pymethod_reverse__", scope: !3830, file: !3015, line: 86, type: !2740, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178689 = distinct !DILexicalBlock(scope: !178688, file: !3015, line: 86, column: 1)
!178690 = distinct !DILexicalBlock(scope: !178689, file: !3015, line: 86, column: 1)
!178691 = distinct !DILexicalBlock(scope: !178689, file: !3015, line: 86, column: 1)
!178692 = distinct !DILocation(line: 86, column: 1, scope: !178691)
!178693 = distinct !DILocation(line: 242, column: 31, scope: !2253, inlinedAt: !178692)
!178694 = distinct !DILocation(line: 242, column: 31, scope: !3898, inlinedAt: !178692)
!178695 = distinct !DILocation(line: 242, column: 31, scope: !3899, inlinedAt: !178692)
!178696 = distinct !{!178696, !"_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument27extract_pyclass_ref_trustedNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEB1k_"}
!178697 = distinct !{!178697, !178696, !"_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument27extract_pyclass_ref_trustedNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEB1k_: argument 1"}
!178698 = distinct !{!178698, !"_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEE6insertB1D_"}
!178699 = distinct !{!178699, !178698, !"_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEE6insertB1D_: argument 0"}
!178700 = distinct !{!178700, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_"}
!178701 = distinct !{!178701, !178700, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_: argument 0"}
!178702 = distinct !{!178702, !178696, !"_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument27extract_pyclass_ref_trustedNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEB1k_: argument 0"}
!178703 = distinct !DILocation(line: 242, column: 24, scope: !2253, inlinedAt: !178692)
!178704 = distinct !DILocation(line: 1726, column: 9, scope: !2260, inlinedAt: !178703)
!178705 = distinct !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178704)
!178706 = distinct !DILocation(line: 86, column: 12, scope: !178689)
!178707 = distinct !{!178707, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_"}
!178708 = distinct !{!178708, !178707, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_: argument 0"}
!178709 = distinct !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178706)
!178710 = distinct !DISubprogram(name: "branch<&polars_python::lazyframe::PyLazyFrame, pyo3::err::PyErr>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultRNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameNtNtCsbm5zPlkZccl_4pyo33err5PyErrENtNtNtB7_3ops9try_trait3Try6branchBP_", scope: !2860, file: !2858, line: 2172, type: !2740, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178711 = distinct !DISubprogram(name: "from_residual<*mut pyo3_ffi::object::PyObject, pyo3::err::PyErr, pyo3::err::PyErr>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultONtNtCsfueLBegRnmY_8pyo3_ffi6object8PyObjectNtNtCsbm5zPlkZccl_4pyo33err5PyErrEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1s_EE13from_residualCseeLknQCOKOd_13polars_python", scope: !2891, file: !2858, line: 2187, type: !2740, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178712 = distinct !DILexicalBlock(scope: !178711, file: !2858, line: 2189, column: 13)
!178713 = distinct !DILexicalBlock(scope: !178691, file: !3015, line: 86, column: 12)
!178714 = distinct !DILexicalBlock(scope: !178713, file: !3015, line: 86, column: 12)
!178715 = distinct !{!178715, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_"}
!178716 = distinct !{!178716, !178715, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_: argument 0"}
!178717 = distinct !DILocation(line: 86, column: 12, scope: !178689)
!178718 = distinct !DILocation(line: 242, column: 17, scope: !2253, inlinedAt: !178692)
!178719 = distinct !DILocation(line: 292, column: 43, scope: !2263, inlinedAt: !178718)
!178720 = distinct !DILocation(line: 445, column: 29, scope: !2262, inlinedAt: !178719)
!178721 = distinct !{!178721, !"_RNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame7reverse"}
!178722 = distinct !{!178722, !178721, !"_RNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame7reverse: argument 0"}
!178723 = distinct !DISubprogram(name: "reverse", linkageName: "_RNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame7reverse", scope: !3830, file: !3015, line: 1287, type: !2740, scopeLine: 1287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178724 = distinct !DILocation(line: 86, column: 1, scope: !178691)
!178725 = distinct !DISubprogram(name: "lock_shared", linkageName: "_RNvXNtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsdjtJf7E0q1U_8lock_api6rwlock9RawRwLock11lock_shared", scope: !3804, file: !3797, line: 107, type: !2740, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178726 = distinct !DISubprogram(name: "read<parking_lot::raw_rwlock::RawRwLock, polars_lazy::frame::LazyFrame>", linkageName: "_RNvMs2_NtCsdjtJf7E0q1U_8lock_api6rwlockINtB5_6RwLockNtNtCs3mtJKb2XD8V_11parking_lot10raw_rwlock9RawRwLockNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameE4readCseeLknQCOKOd_13polars_python", scope: !3801, file: !3798, line: 457, type: !2740, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178727 = distinct !DILocation(line: 1288, column: 28, scope: !178723, inlinedAt: !178724)
!178728 = distinct !DILocation(line: 458, column: 18, scope: !178726, inlinedAt: !178727)
!178729 = distinct !DILocation(line: 108, column: 18, scope: !178725, inlinedAt: !178728)
!178730 = distinct !DILocation(line: 509, column: 32, scope: !2187, inlinedAt: !178729)
!178731 = distinct !DILocation(line: 2870, column: 26, scope: !2186, inlinedAt: !178730)
!178732 = distinct !DILocation(line: 529, column: 47, scope: !2192, inlinedAt: !178729)
!178733 = distinct !DILocation(line: 531, column: 18, scope: !2192, inlinedAt: !178729)
!178734 = distinct !DILocation(line: 3130, column: 21, scope: !2193, inlinedAt: !178733)
!178735 = distinct !DISubprogram(name: "get<polars_lazy::frame::LazyFrame>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameE3getCseeLknQCOKOd_13polars_python", scope: !2941, file: !2939, line: 2443, type: !2740, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178736 = distinct !DISubprogram(name: "deref<parking_lot::raw_rwlock::RawRwLock, polars_lazy::frame::LazyFrame>", linkageName: "_RNvXsf_NtCsdjtJf7E0q1U_8lock_api6rwlockINtB5_15RwLockReadGuardNtNtCs3mtJKb2XD8V_11parking_lot10raw_rwlock9RawRwLockNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCseeLknQCOKOd_13polars_python", scope: !3815, file: !3798, line: 1427, type: !2740, scopeLine: 1427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178737 = distinct !DILocation(line: 1288, column: 19, scope: !178723, inlinedAt: !178724)
!178738 = distinct !DILocation(line: 1428, column: 37, scope: !178736, inlinedAt: !178737)
!178739 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs7_NtCs7Ga9Brpi21q_11polars_lazy5frameNtB5_9LazyFrameNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !3831, file: !2984, line: 68, type: !2740, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178740 = distinct !DILocation(line: 1288, column: 35, scope: !178723, inlinedAt: !178724)
!178741 = distinct !DILocation(line: 1288, column: 42, scope: !178723, inlinedAt: !178724)
!178742 = distinct !DILocation(line: 810, column: 1, scope: !2223, inlinedAt: !178741)
!178743 = distinct !DILocation(line: 1437, column: 29, scope: !2222, inlinedAt: !178742)
!178744 = distinct !DILocation(line: 134, column: 24, scope: !2200, inlinedAt: !178743)
!178745 = distinct !DILocation(line: 3193, column: 26, scope: !2199, inlinedAt: !178744)
!178746 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5frame9opt_stateNtB5_8OptFlagsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !3816, file: !3806, line: 4, type: !2740, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178747 = distinct !DILexicalBlock(scope: !178746, file: !3806, line: 4, column: 16)
!178748 = distinct !DILocation(line: 68, column: 10, scope: !178739, inlinedAt: !178740)
!178749 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::sync::poison::mutex::Mutex<core::option::Option<polars_lazy::frame::cached_arenas::CachedArena>>>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB9_6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEEE6as_refCseeLknQCOKOd_13polars_python", scope: !2874, file: !2872, line: 440, type: !2740, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178750 = distinct !DISubprogram(name: "inner<std::sync::poison::mutex::Mutex<core::option::Option<polars_lazy::frame::cached_arenas::CachedArena>>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEE5innerCseeLknQCOKOd_13polars_python", scope: !2827, file: !2825, line: 2104, type: !2740, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178751 = distinct !DISubprogram(name: "clone<std::sync::poison::mutex::Mutex<core::option::Option<polars_lazy::frame::cached_arenas::CachedArena>>, alloc::alloc::Global>", linkageName: "_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEEENtNtB1A_5clone5Clone5cloneCseeLknQCOKOd_13polars_python", scope: !3832, file: !2825, line: 2382, type: !2740, scopeLine: 2382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178752 = distinct !DILocation(line: 68, column: 10, scope: !178799, inlinedAt: !178740)
!178753 = distinct !DILocation(line: 2394, column: 29, scope: !178751, inlinedAt: !178752)
!178754 = distinct !DILocation(line: 2110, column: 27, scope: !178750, inlinedAt: !178753)
!178755 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECseeLknQCOKOd_13polars_python", scope: !2834, file: !2832, line: 3933, type: !2740, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178756 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !2835, file: !2832, line: 3160, type: !2740, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178757 = distinct !DILocation(line: 2394, column: 44, scope: !178751, inlinedAt: !178752)
!178758 = distinct !DILocation(line: 3162, column: 26, scope: !178756, inlinedAt: !178757)
!178759 = distinct !DILexicalBlock(scope: !178751, file: !2825, line: 2394, column: 9)
!178760 = distinct !DILocation(line: 1288, column: 42, scope: !178723, inlinedAt: !178724)
!178761 = distinct !DILocation(line: 810, column: 1, scope: !2223, inlinedAt: !178760)
!178762 = distinct !DILocation(line: 1437, column: 29, scope: !2222, inlinedAt: !178761)
!178763 = distinct !DILocation(line: 134, column: 24, scope: !2200, inlinedAt: !178762)
!178764 = distinct !DILocation(line: 3193, column: 26, scope: !2199, inlinedAt: !178763)
!178765 = distinct !DISubprogram(name: "new<parking_lot::raw_rwlock::RawRwLock, polars_lazy::frame::LazyFrame>", linkageName: "_RNvMs0_NtCsdjtJf7E0q1U_8lock_api6rwlockINtB5_6RwLockNtNtCs3mtJKb2XD8V_11parking_lot10raw_rwlock9RawRwLockNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameE3newCseeLknQCOKOd_13polars_python", scope: !3801, file: !3798, line: 370, type: !2740, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178766 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs_NtCseeLknQCOKOd_13polars_python9lazyframeNtB4_11PyLazyFrameINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameE4from", scope: !3833, file: !3201, line: 36, type: !2740, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178767 = distinct !DISubprogram(name: "into<polars_lazy::frame::LazyFrame, polars_python::lazyframe::PyLazyFrame>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameINtB5_4IntoNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameE4intoB1y_", scope: !2745, file: !2741, line: 777, type: !2740, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178768 = distinct !DILexicalBlock(scope: !178723, file: !3015, line: 1288, column: 9)
!178769 = distinct !DILocation(line: 1289, column: 23, scope: !178768, inlinedAt: !178724)
!178770 = distinct !DILocation(line: 778, column: 9, scope: !178767, inlinedAt: !178769)
!178771 = distinct !DILocation(line: 38, column: 18, scope: !178766, inlinedAt: !178770)
!178772 = distinct !DILexicalBlock(scope: !178691, file: !3015, line: 86, column: 1)
!178773 = distinct !DILexicalBlock(scope: !178772, file: !3015, line: 1287, column: 26)
!178774 = distinct !DISubprogram(name: "and_then<polars_python::lazyframe::PyLazyFrame, pyo3::err::PyErr, pyo3::instance::Bound<pyo3::types::any::PyAny>, pyo3::impl_::wrap::{impl#12}::map_into_ptr::{closure_env#0}<polars_python::lazyframe::PyLazyFrame, pyo3::err::PyErr>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameNtNtCsbm5zPlkZccl_4pyo33err5PyErrE8and_thenINtNtB1G_8instance5BoundNtNtNtB1G_5types3any5PyAnyENCNvMsa_NtNtB1G_5impl_4wrapINtB3g_21IntoPyObjectConverterBv_E12map_into_ptr0EBM_", scope: !2861, file: !2858, line: 1488, type: !2740, scopeLine: 1488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178775 = distinct !DISubprogram(name: "map_into_ptr<polars_python::lazyframe::PyLazyFrame, pyo3::err::PyErr>", linkageName: "_RNvMsa_NtNtCsbm5zPlkZccl_4pyo35impl_4wrapINtB5_21IntoPyObjectConverterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameNtNtB9_3err5PyErrEE12map_into_ptrB1M_", scope: !3902, file: !3900, line: 129, type: !2740, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178776 = distinct !{!178776, !"_RNvYNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_"}
!178777 = distinct !{!178777, !178776, !"_RNvYNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_: argument 1"}
!178778 = distinct !{!178778, !178776, !"_RNvYNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_: argument 0"}
!178779 = distinct !DISubprogram(name: "{closure#0}<polars_python::lazyframe::PyLazyFrame, pyo3::err::PyErr>", linkageName: "_RNCNvMsa_NtNtCsbm5zPlkZccl_4pyo35impl_4wrapINtB7_21IntoPyObjectConverterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameNtNtBb_3err5PyErrEE12map_into_ptr0B1O_", scope: !3905, file: !3900, line: 133, type: !2740, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178780 = distinct !DILexicalBlock(scope: !178774, file: !2858, line: 1493, column: 13)
!178781 = distinct !DILocation(line: 133, column: 32, scope: !178779, inlinedAt: !178804)
!178782 = distinct !DILocation(line: 227, column: 20, scope: !2264, inlinedAt: !178781)
!178783 = distinct !DILocation(line: 21, column: 1, scope: !2266, inlinedAt: !178782)
!178784 = distinct !DISubprogram(name: "map<pyo3::instance::Bound<pyo3::types::any::PyAny>, pyo3::err::PyErr, *mut pyo3_ffi::object::PyObject, fn(pyo3::instance::Bound<pyo3::types::any::PyAny>) -> *mut pyo3_ffi::object::PyObject>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtBN_5types3any5PyAnyENtNtBN_3err5PyErrE3mapONtNtCsfueLBegRnmY_8pyo3_ffi6object8PyObjectNvMs9_BL_BI_8into_ptrECseeLknQCOKOd_13polars_python", scope: !2861, file: !2858, line: 831, type: !2740, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2739)
!178785 = distinct !DILexicalBlock(scope: !178784, file: !2858, line: 837, column: 13)
!178786 = distinct !{!178786, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_"}
!178787 = distinct !{!178787, !178786, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python9lazyframe11PyLazyFrameEEEB1Y_: argument 0"}
!178788 = distinct !DILocation(line: 86, column: 12, scope: !178689)
!178789 = !{!178701, !178699, !178697}
!178790 = !{!178702}
!178791 = !{!178699, !178697}
!178792 = !{!178708}
!178793 = !DILexicalBlockFile(scope: !178691, file: !3015, discriminator: 2)
!178794 = !DILocation(line: 86, column: 1, scope: !178793)
!178795 = !DILexicalBlockFile(scope: !178714, file: !3015, discriminator: 4)
!178796 = !DILocation(line: 86, column: 1, scope: !178795)
!178797 = !{!178716}
!178798 = !{!178722}
!178799 = !DILexicalBlockFile(scope: !178739, file: !2984, discriminator: 2)
!178800 = !DILexicalBlockFile(scope: !178773, file: !3015, discriminator: 16)
!178801 = !DILocation(line: 1287, column: 26, scope: !178800)
!178802 = !DILocation(line: 133, column: 13, scope: !178775, inlinedAt: !178801)
!178803 = !{!178778, !178777}
!178804 = !DILocation(line: 1493, column: 22, scope: !178780, inlinedAt: !178802)
!178805 = !{!178777}
!178806 = !DILocation(line: 134, column: 14, scope: !178775, inlinedAt: !178801)
!178807 = !{!178787}
!178808 = !DILocation(line: 86, column: 12, scope: !178689)
!178809 = !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178808)
!178810 = !DILocation(line: 86, column: 1, scope: !178690)
!178811 = !DILocation(line: 86, column: 1, scope: !178691)
!178812 = !DILocation(line: 107, column: 9, scope: !2252, inlinedAt: !178693)
!178813 = !DILocation(line: 2173, column: 15, scope: !2254, inlinedAt: !178694)
!178814 = !DILocation(line: 2173, column: 9, scope: !2254, inlinedAt: !178694)
!178815 = !DILocation(line: 2189, column: 23, scope: !2256, inlinedAt: !178695)
!178816 = !DILocation(line: 2189, column: 27, scope: !2256, inlinedAt: !178695)
!178817 = !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178704)
!178818 = !DILocation(line: 810, column: 1, scope: !881, inlinedAt: !178705)
!178819 = !DILocation(line: 1726, column: 9, scope: !2260, inlinedAt: !178703)
!178820 = !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178706)
!178821 = !DILocation(line: 810, column: 1, scope: !881, inlinedAt: !178709)
!178822 = !DILocation(line: 2175, column: 17, scope: !178710, inlinedAt: !178794)
!178823 = !DILocation(line: 2189, column: 23, scope: !178712, inlinedAt: !178796)
!178824 = !DILocation(line: 86, column: 12, scope: !178691)
!178825 = !DILocation(line: 810, column: 1, scope: !2259, inlinedAt: !178717)
!178826 = !DILocation(line: 2447, column: 9, scope: !2261, inlinedAt: !178720)
!178827 = !DILocation(line: 1288, column: 13, scope: !178723, inlinedAt: !178724)
!178828 = !DILocation(line: 3904, column: 24, scope: !243, inlinedAt: !178731)
!178829 = !DILocation(line: 513, column: 12, scope: !2190, inlinedAt: !178729)
!178830 = !DILocation(line: 823, column: 37, scope: !2191, inlinedAt: !178732)
!178831 = !DILocation(line: 4054, column: 17, scope: !2180, inlinedAt: !178734)
!178832 = !DILocation(line: 108, column: 13, scope: !178725, inlinedAt: !178728)
!178833 = !DILocation(line: 109, column: 31, scope: !178725, inlinedAt: !178728)
!178834 = !DILocation(line: 2447, column: 9, scope: !178735, inlinedAt: !178738)
!178835 = !DILocation(line: 68, column: 10, scope: !178739, inlinedAt: !178740)
!178836 = !DILocation(line: 3956, column: 24, scope: !2198, inlinedAt: !178745)
!178837 = !DILocation(line: 136, column: 12, scope: !2203, inlinedAt: !178743)
!178838 = !DILocation(line: 137, column: 18, scope: !2203, inlinedAt: !178743)
!178839 = !DILocation(line: 4, column: 16, scope: !178747, inlinedAt: !178748)
!178840 = !DILocation(line: 444, column: 20, scope: !178749, inlinedAt: !178754)
!178841 = !DILocation(line: 3937, column: 24, scope: !178755, inlinedAt: !178758)
!178842 = !DILocation(line: 2411, column: 12, scope: !178759, inlinedAt: !178752)
!178843 = !DILocation(line: 2415, column: 38, scope: !178759, inlinedAt: !178752)
!178844 = !DILocation(line: 3956, column: 24, scope: !2198, inlinedAt: !178764)
!178845 = !DILocation(line: 136, column: 12, scope: !2203, inlinedAt: !178762)
!178846 = !DILocation(line: 137, column: 18, scope: !2203, inlinedAt: !178762)
!178847 = !DILocation(line: 2412, column: 13, scope: !178759, inlinedAt: !178752)
!178848 = !DILocation(line: 372, column: 19, scope: !178765, inlinedAt: !178771)
!178849 = !DILocation(line: 1289, column: 13, scope: !178768, inlinedAt: !178724)
!178850 = !DILocation(line: 1290, column: 5, scope: !178723, inlinedAt: !178724)
!178851 = !DILocation(line: 1287, column: 5, scope: !178723, inlinedAt: !178724)
!178852 = !DILocation(line: 371, column: 9, scope: !178765, inlinedAt: !178771)
!178853 = !DILocation(line: 374, column: 9, scope: !178765, inlinedAt: !178771)
!178854 = !DILocation(line: 1287, column: 26, scope: !178773)
!178855 = !DILocation(line: 1493, column: 16, scope: !178774, inlinedAt: !178802)
!178856 = !DILocation(line: 227, column: 15, scope: !2264, inlinedAt: !178781)
!178857 = !DILocation(line: 102, column: 22, scope: !2265, inlinedAt: !178783)
!178858 = !DILocation(line: 227, column: 9, scope: !2264, inlinedAt: !178781)
!178859 = !DILocation(line: 0, scope: !2264, inlinedAt: !178781)
!178860 = !DILocation(line: 229, column: 17, scope: !2264, inlinedAt: !178781)
!178861 = !DILocation(line: 837, column: 23, scope: !178785, inlinedAt: !178806)
end_hunk_1
