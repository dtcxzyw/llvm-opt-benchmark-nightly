Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.08?download=true
inline.NumInlined: 15275
inline.NumDeleted: 4904
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvMs2_NtNtCseeLknQCOKOd_13polars_python6series10comparisonNtB7_8PySeries18___pymethod_eq_u8__:bb.a
bb.s:                                             ; preds = %bb.r
  call void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i), !dbg !160493
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit24, !dbg !160488

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit24: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !160336
  br label %bb.q, !dbg !160334

bb.t:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !160495
  unreachable, !dbg !160495

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %i.s, !dbg !160495
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_6SenderNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4sendBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !160496 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %i.c = alloca [88 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [48 x i8], align 8        ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 17 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [56 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [48 x i8], align 8                ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 9 uses
  %i.ab = alloca [56 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !160498
  %i.ac = load i64, ptr %1, align 8, !dbg !160499, !range !8288, !noundef !11
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !160499
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !160500, !noundef !11 ; 17 uses
  switch i64 %i.ac, label %default.unreachable59 [
    i64 0, label %bb.b
    i64 1, label %bb.ak
    i64 2, label %bb.al
  ], !dbg !160498

default.unreachable59:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !160501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !dbg !160501
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160503), !dbg !160506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160507), !dbg !160506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.af, align 8, !noalias !160509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !160510, !noalias !160509
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !160513
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 128 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false), !dbg !160513, !noalias !160509
  %i.aj = load atomic i64, ptr %i.ah monotonic, align 8, !dbg !160516, !noalias !160524 ; 2 uses
  %i.ak = load i64, ptr %i.ai, align 16, !dbg !160527, !noalias !160524, !noundef !11 ; 2 uses
  %i.al = and i64 %i.ak, %i.aj, !dbg !160529
  %i.am = icmp eq i64 %i.al, 0, !dbg !160529
  br i1 %i.am, label %.lr.ph.i.lr.ph.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_.exit.i, !dbg !160529

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 392 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 408
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 416
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ar = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %.lr.ph.i.i, !dbg !160529

.lr.ph.i.i:                                       ; preds = %bb.ag, %.lr.ph.i.lr.ph.i
  %i.at = phi i64 [ %i.ak, %.lr.ph.i.lr.ph.i ], [ %i.dr, %bb.ag ]
  %i.au = phi i64 [ %i.aj, %.lr.ph.i.lr.ph.i ], [ %i.dq, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !160530), !dbg !160532
  br label %bb.c, !dbg !160529

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i, %.lr.ph.i.i
  %i.av = phi i64 [ %i.at, %.lr.ph.i.i ], [ %i.ca, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i ]
  %.sroa.02.033.i.i = phi i64 [ %i.au, %.lr.ph.i.i ], [ %i.bz, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i ] ; 8 uses
  %.sroa.0.02832.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i ] ; 14 uses
  %i.aw = add i64 %i.av, -1, !dbg !160533
  %i.ax = and i64 %i.aw, %.sroa.02.033.i.i, !dbg !160534 ; 3 uses
  %i.ay = load i64, ptr %i.an, align 8, !dbg !160535, !noalias !160537, !noundef !11
  %i.az = sub i64 0, %i.ay, !dbg !160538
  %i.ba = and i64 %.sroa.02.033.i.i, %i.az, !dbg !160539
  %i.bb = load ptr, ptr %i.ao, align 8, !dbg !160540, !noalias !160537, !nonnull !11, !noundef !11
  %i.bc = load i64, ptr %i.ap, align 16, !dbg !160540, !noalias !160537, !noundef !11
  %i.bd = icmp ult i64 %i.ax, %i.bc, !dbg !160542
  call void @llvm.assume(i1 %i.bd), !dbg !160547
  %i.be = getelementptr inbounds nuw [56 x i8], ptr %i.bb, i64 %i.ax, !dbg !160548 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48, !dbg !160549
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8, !dbg !160558, !noalias !160537 ; 2 uses
  %i.bh = icmp eq i64 %.sroa.02.033.i.i, %i.bg, !dbg !160560
  br i1 %i.bh, label %bb.e, label %bb.d, !dbg !160560

bb.d:                                             ; preds = %bb.c
  %i.bi = load i64, ptr %i.an, align 8, !dbg !160562, !noalias !160537, !noundef !11
  %i.bj = add i64 %i.bi, %i.bg, !dbg !160563
  %i.bk = add i64 %.sroa.02.033.i.i, 1, !dbg !160566
  %i.bl = icmp eq i64 %i.bj, %i.bk, !dbg !160567
  br i1 %i.bl, label %bb.i, label %bb.f, !dbg !160567

bb.e:                                             ; preds = %bb.c
  %i.bm = add nuw i64 %i.ax, 1, !dbg !160568
  %i.bn = load i64, ptr %i.aq, align 128, !dbg !160569, !noalias !160537, !noundef !11
  %i.bo = icmp ult i64 %i.bm, %i.bn, !dbg !160568
  br i1 %i.bo, label %bb.l, label %bb.k, !dbg !160568

bb.f:                                             ; preds = %bb.d
  %i.bp = icmp ult i32 %.sroa.0.02832.i.i, 7, !dbg !160570
  br i1 %i.bp, label %bb.h, label %bb.g, !dbg !160570

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.body.thread29.loopexit.i, !dbg !160572, !noalias !160509

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.02832.i.i, 0, !dbg !160573
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !160577

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.bq = mul nuw i32 %.sroa.0.02832.i.i, %.sroa.0.02832.i.i, !dbg !160578 ; 2 uses
  %xtraiter = and i32 %i.bq, 7, !dbg !160577      ; 3 uses
  %i.br = icmp ult i32 %.sroa.0.02832.i.i, 3, !dbg !160577
  br i1 %i.br, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !160577

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.bq, 56, !dbg !160577
  br label %.lr.ph.i.i.i, !dbg !160577

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !160580, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160580, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160580, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160580, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160580, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160580, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160580, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160580, !noalias !160537
  %niter.next.7 = add i32 %niter, 8, !dbg !160577 ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !160577
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !160577

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !160577
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !160577

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter, 0, !dbg !160577
  call void @llvm.assume(i1 %lcmp.mod104), !dbg !160577
  br label %.lr.ph.i.i.i.epil, !dbg !160577

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !160580, !noalias !160537
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !160577 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !160577
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !160577, !llvm.loop !160583

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.h, %bb.g
  %i.bs = add i32 %.sroa.0.02832.i.i, 1, !dbg !160584
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i, !dbg !160585

bb.i:                                             ; preds = %bb.d
  fence seq_cst, !dbg !160586
  %i.bt = load atomic i64, ptr %i.ae monotonic, align 16, !dbg !160588, !noalias !160537
  %i.bu = load i64, ptr %i.an, align 8, !dbg !160591, !noalias !160537, !noundef !11
  %i.bv = add i64 %i.bu, %i.bt, !dbg !160593
  %i.bw = icmp eq i64 %i.bv, %.sroa.02.033.i.i, !dbg !160595
  br i1 %i.bw, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.i, label %bb.j, !dbg !160595

bb.j:                                             ; preds = %bb.i
  %.not.i11.i.i = icmp eq i32 %.sroa.0.02832.i.i, 0, !dbg !160596
  br i1 %.not.i11.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i, label %.lr.ph.i12.i.i.preheader, !dbg !160608

.lr.ph.i12.i.i.preheader:                         ; preds = %bb.j
  %.sroa.0.0.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i.i, i32 6), !dbg !160609 ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !160612 ; 2 uses
  %xtraiter105 = and i32 %3, 5, !dbg !160608      ; 3 uses
  %i.bx = icmp ult i32 %.sroa.0.02832.i.i, 3, !dbg !160608
  br i1 %i.bx, label %.lr.ph.i12.i.i.epil.preheader, label %.lr.ph.i12.i.i.preheader.new, !dbg !160608

.lr.ph.i12.i.i.preheader.new:                     ; preds = %.lr.ph.i12.i.i.preheader
  %unroll_iter109 = and i32 %3, 56, !dbg !160608
  br label %.lr.ph.i12.i.i, !dbg !160608

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i12.i.i
  %lcmp.mod107.not = icmp eq i32 %xtraiter105, 0, !dbg !160608
  br i1 %lcmp.mod107.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i12.i.i.epil.preheader, !dbg !160608

.lr.ph.i12.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i12.i.i.preheader
  %lcmp.mod108 = icmp ne i32 %xtraiter105, 0, !dbg !160608
  call void @llvm.assume(i1 %lcmp.mod108), !dbg !160608
  br label %.lr.ph.i12.i.i.epil, !dbg !160608

.lr.ph.i12.i.i.epil:                              ; preds = %.lr.ph.i12.i.i.epil, %.lr.ph.i12.i.i.epil.preheader
  %epil.iter106 = phi i32 [ 0, %.lr.ph.i12.i.i.epil.preheader ], [ %epil.iter106.next, %.lr.ph.i12.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !160614, !noalias !160537
  %epil.iter106.next = add i32 %epil.iter106, 1, !dbg !160608 ; 2 uses
  %epil.iter106.cmp.not = icmp eq i32 %epil.iter106.next, %xtraiter105, !dbg !160608
  br i1 %epil.iter106.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i12.i.i.epil, !dbg !160608, !llvm.loop !160619

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i12.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.by = add i32 %.sroa.0.02832.i.i, 1, !dbg !160620
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i, !dbg !160621

.lr.ph.i12.i.i:                                   ; preds = %.lr.ph.i12.i.i, %.lr.ph.i12.i.i.preheader.new
  %niter110 = phi i32 [ 0, %.lr.ph.i12.i.i.preheader.new ], [ %niter110.next.7, %.lr.ph.i12.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !160614, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160614, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160614, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160614, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160614, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160614, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160614, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160614, !noalias !160537
  %niter110.next.7 = add i32 %niter110, 8, !dbg !160608 ; 2 uses
  %niter110.ncmp.7 = icmp eq i32 %niter110.next.7, %unroll_iter109, !dbg !160608
  br i1 %niter110.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i12.i.i, !dbg !160608

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i: ; preds = %._crit_edge.loopexit.i20.i.i, %bb.n, %._crit_edge.loopexit.i.i.i, %bb.j, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.bs, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 1, %bb.n ], [ %i.ci, %._crit_edge.loopexit.i20.i.i ], [ %i.by, %._crit_edge.loopexit.i.i.i ], [ 1, %bb.j ], !dbg !160624
  %i.bz = load atomic i64, ptr %i.ah monotonic, align 16, !dbg !160625, !noalias !160537 ; 2 uses
  %i.ca = load i64, ptr %i.ai, align 16, !dbg !160527, !noalias !160537, !noundef !11 ; 2 uses
  %i.cb = and i64 %i.ca, %i.bz, !dbg !160529
  %i.cc = icmp eq i64 %i.cb, 0, !dbg !160529
  br i1 %i.cc, label %bb.c, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_.exit.i, !dbg !160529

bb.k:                                             ; preds = %bb.e
  %i.cd = load i64, ptr %i.an, align 8, !dbg !160628, !noalias !160537, !noundef !11
  %i.ce = add i64 %i.cd, %i.ba, !dbg !160629
  br label %bb.m, !dbg !160631

bb.l:                                             ; preds = %bb.e
  %i.cf = add i64 %.sroa.02.033.i.i, 1, !dbg !160632
  br label %bb.m, !dbg !160631

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.01.0.i.i = phi i64 [ %i.cf, %bb.l ], [ %i.ce, %bb.k ], !dbg !160624
  %i.cg = cmpxchg weak ptr %i.ah, i64 %.sroa.02.033.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !dbg !160633, !noalias !160537
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.cg, 1, !dbg !160638
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_.exit.thread.i, label %bb.n, !dbg !160639

bb.n:                                             ; preds = %bb.m
  %.not.i16.i.i = icmp eq i32 %.sroa.0.02832.i.i, 0, !dbg !160640
  br i1 %.not.i16.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i, label %.lr.ph.i17.i.i.preheader, !dbg !160645

.lr.ph.i17.i.i.preheader:                         ; preds = %bb.n
  %.sroa.0.0.i.i15.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i.i, i32 6), !dbg !160646 ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i15.i.i, %.sroa.0.0.i.i15.i.i, !dbg !160648 ; 2 uses
  %xtraiter111 = and i32 %4, 5, !dbg !160645      ; 3 uses
  %i.ch = icmp ult i32 %.sroa.0.02832.i.i, 3, !dbg !160645
  br i1 %i.ch, label %.lr.ph.i17.i.i.epil.preheader, label %.lr.ph.i17.i.i.preheader.new, !dbg !160645

.lr.ph.i17.i.i.preheader.new:                     ; preds = %.lr.ph.i17.i.i.preheader
  %unroll_iter115 = and i32 %4, 56, !dbg !160645
  br label %.lr.ph.i17.i.i, !dbg !160645

._crit_edge.loopexit.i20.i.i.unr-lcssa:           ; preds = %.lr.ph.i17.i.i
  %lcmp.mod113.not = icmp eq i32 %xtraiter111, 0, !dbg !160645
  br i1 %lcmp.mod113.not, label %._crit_edge.loopexit.i20.i.i, label %.lr.ph.i17.i.i.epil.preheader, !dbg !160645

.lr.ph.i17.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i20.i.i.unr-lcssa, %.lr.ph.i17.i.i.preheader
  %lcmp.mod114 = icmp ne i32 %xtraiter111, 0, !dbg !160645
  call void @llvm.assume(i1 %lcmp.mod114), !dbg !160645
  br label %.lr.ph.i17.i.i.epil, !dbg !160645

.lr.ph.i17.i.i.epil:                              ; preds = %.lr.ph.i17.i.i.epil, %.lr.ph.i17.i.i.epil.preheader
  %epil.iter112 = phi i32 [ 0, %.lr.ph.i17.i.i.epil.preheader ], [ %epil.iter112.next, %.lr.ph.i17.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !160650, !noalias !160537
  %epil.iter112.next = add i32 %epil.iter112, 1, !dbg !160645 ; 2 uses
  %epil.iter112.cmp.not = icmp eq i32 %epil.iter112.next, %xtraiter111, !dbg !160645
  br i1 %epil.iter112.cmp.not, label %._crit_edge.loopexit.i20.i.i, label %.lr.ph.i17.i.i.epil, !dbg !160645, !llvm.loop !160653

._crit_edge.loopexit.i20.i.i:                     ; preds = %.lr.ph.i17.i.i.epil, %._crit_edge.loopexit.i20.i.i.unr-lcssa
  %i.ci = add i32 %.sroa.0.02832.i.i, 1, !dbg !160654
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i, !dbg !160655

.lr.ph.i17.i.i:                                   ; preds = %.lr.ph.i17.i.i, %.lr.ph.i17.i.i.preheader.new
  %niter116 = phi i32 [ 0, %.lr.ph.i17.i.i.preheader.new ], [ %niter116.next.7, %.lr.ph.i17.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !160650, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160650, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160650, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160650, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160650, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160650, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160650, !noalias !160537
  call void @llvm.x86.sse2.pause(), !dbg !160650, !noalias !160537
  %niter116.next.7 = add i32 %niter116, 8, !dbg !160645 ; 2 uses
  %niter116.ncmp.7 = icmp eq i32 %niter116.next.7, %unroll_iter115, !dbg !160645
  br i1 %niter116.ncmp.7, label %._crit_edge.loopexit.i20.i.i.unr-lcssa, label %.lr.ph.i17.i.i, !dbg !160645

.body.thread29.loopexit.i:                        ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread29.loopexit.split-lp.i:               ; preds = %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0uEs_0uEB3w_.exit.i.i, %bb.aa, %bb.v, %bb.q, %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.o
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.i: ; preds = %bb.i
  %i.cj = load i32, ptr %i.af, align 8, !dbg !160657, !range !113897, !noalias !160509, !noundef !11 ; 2 uses
  %.not.i = icmp eq i32 %i.cj, 1000000000, !dbg !160657
  br i1 %.not.i, label %bb.p, label %bb.o, !dbg !160659

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_.exit.thread.i: ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store ptr %i.be, ptr %i.v, align 8, !dbg !160660, !alias.scope !160530, !noalias !160509
  %i.cl = add i64 %.sroa.02.033.i.i, 1, !dbg !160661 ; 2 uses
  store i64 %i.cl, ptr %i.ag, align 8, !dbg !160661, !alias.scope !160530, !noalias !160509
  %.sroa.018.0.copyload34.i = load i64, ptr %i.aa, align 8, !dbg !160662, !alias.scope !160507, !noalias !160503
  %.sroa.5.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !160662
  store i64 %.sroa.018.0.copyload34.i, ptr %i.be, align 8, !dbg !160663, !noalias !160671
  %.sroa.5.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !160663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx35.i, i64 40, i1 false), !dbg !160663, !noalias !160503
  store atomic i64 %i.cl, ptr %i.ck release, align 8, !dbg !160674, !noalias !160678
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ae, i64 320, !dbg !160680
  call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.cm) #55, !dbg !160681, !noalias !160509
  br label %bb.ai, !dbg !160682

bb.o:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.i
  %i.cn = load i64, ptr %i.w, align 8, !dbg !160686, !noalias !160509, !noundef !11 ; 2 uses
  %i.co = invoke { i64, i32 } @_RNvMNtCsh8eZTKRCwoO_3std4timeNtB2_7Instant3now()
          to label %bb.ad unwind label %.body.thread29.loopexit.split-lp.i, !dbg !160687, !noalias !160509 ; 2 uses

bb.p:                                             ; preds = %bb.ae, %.split.i, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !160688, !noalias !160691
  store ptr %i.v, ptr %i.u, align 8, !dbg !160694, !noalias !160509
  store ptr %i.ae, ptr %.sroa.421.0..sroa_idx.i, align 8, !dbg !160694, !noalias !160509
  store ptr %i.w, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !160694, !noalias !160509
  %i.cp = load i8, ptr %i.as, align 8, !dbg !160695, !range !21821, !noalias !160704, !noundef !11
  %i.cq = icmp eq i8 %i.cp, 1, !dbg !160711
  br i1 %i.cq, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !160711, !prof !17433

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.p
  %i.cr = invoke noundef ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECseeLknQCOKOd_13polars_python(ptr noundef nonnull align 8 %i.ar, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10.i unwind label %.body.thread29.loopexit.split-lp.i, !dbg !160712, !noalias !160509 ; 2 uses

.noexc10.i:                                       ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.cs = icmp eq ptr %i.cr, null, !dbg !160713
  br i1 %i.cs, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0uEs_0uEB3w_.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i.i, !dbg !160713

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i.i: ; preds = %.noexc10.i, %bb.p
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.cr, %.noexc10.i ], [ %i.ar, %bb.p ] ; 4 uses
  %i.ct = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !dbg !160716, !noalias !160691, !noundef !11 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !dbg !160726, !noalias !160691
  %.not.i.i.i.i = icmp eq ptr %i.ct, null, !dbg !160728
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.x, !dbg !160729, !prof !1928

bb.q:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !160730, !noalias !160691
  %i.cu = invoke noundef nonnull ptr @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.r unwind label %.body.thread29.loopexit.split-lp.i, !dbg !160730, !noalias !160509 ; 2 uses

bb.r:                                             ; preds = %bb.q
  store ptr %i.cu, ptr %i.t, align 8, !dbg !160730, !noalias !160691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !160731, !noalias !160691
  store ptr %i.v, ptr %i.r, align 8, !dbg !160732, !noalias !160691
  store ptr %i.ae, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !dbg !160732, !noalias !160509
  store ptr %i.w, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8, !dbg !160732, !noalias !160509
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0B12_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, ptr nonnull %i.cu)
          to label %bb.u unwind label %bb.s, !dbg !160737, !noalias !160691

bb.s:                                             ; preds = %bb.r
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160739), !dbg !160742
  call void @llvm.experimental.noalias.scope.decl(metadata !160743), !dbg !160746
  call void @llvm.experimental.noalias.scope.decl(metadata !160748), !dbg !160751
  %i.cw = load ptr, ptr %i.t, align 8, !dbg !160753, !alias.scope !160757, !noalias !160691, !nonnull !11, !noundef !11
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !dbg !160758, !noalias !160761
  %i.cy = icmp eq i64 %i.cx, 1, !dbg !160762
  br i1 %i.cy, label %bb.t, label %.body.thread.i, !dbg !160762

bb.t:                                             ; preds = %bb.s
  fence acquire, !dbg !160763
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #58
          to label %.body.thread.i unwind label %bb.w, !dbg !160765, !noalias !160691

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !160731, !noalias !160691
  call void @llvm.experimental.noalias.scope.decl(metadata !160766), !dbg !160742
  call void @llvm.experimental.noalias.scope.decl(metadata !160769), !dbg !160772
  call void @llvm.experimental.noalias.scope.decl(metadata !160774), !dbg !160777
  %i.cz = load ptr, ptr %i.t, align 8, !dbg !160779, !alias.scope !160783, !noalias !160691, !nonnull !11, !noundef !11
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !dbg !160784, !noalias !160787
  %i.db = icmp eq i64 %i.da, 1, !dbg !160788
  br i1 %i.db, label %bb.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python.exit19.i.i.i.i, !dbg !160788

bb.v:                                             ; preds = %bb.u
  fence acquire, !dbg !160789
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #58
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python.exit19.i.i.i.i unwind label %.body.thread29.loopexit.split-lp.i, !dbg !160791, !noalias !160509

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python.exit19.i.i.i.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !160742, !noalias !160691
  br label %bb.ag, !dbg !160742

bb.w:                                             ; preds = %bb.ac, %bb.t
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !160792, !noalias !160691
  unreachable, !dbg !160792

bb.x:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !160793, !noalias !160691
  store ptr %i.ct, ptr %i.s, align 8, !dbg !160793, !noalias !160691
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 24, !dbg !160794
  store atomic i64 0, ptr %i.dd release, align 8, !dbg !160804, !noalias !160691
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 32, !dbg !160806
  store atomic ptr null, ptr %i.de release, align 8, !dbg !160813, !noalias !160691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !160815, !noalias !160691
  store ptr %i.v, ptr %i.q, align 8, !dbg !160816, !noalias !160691
  store ptr %i.ae, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !dbg !160816, !noalias !160509
  store ptr %i.w, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !dbg !160816, !noalias !160509
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0B12_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr nonnull %i.ct)
          to label %bb.y unwind label %bb.ab, !dbg !160820, !noalias !160691

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !160815, !noalias !160691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !160822, !noalias !160691
  %i.df = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !dbg !160826, !noalias !160691, !noundef !11 ; 3 uses
  store ptr %i.df, ptr %i.p, align 8, !dbg !160826, !noalias !160691
  store ptr %i.ct, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !dbg !160830, !noalias !160691
  %i.dg = icmp eq ptr %i.df, null, !dbg !160832
  br i1 %i.dg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, label %bb.z, !dbg !160832

bb.z:                                             ; preds = %bb.y
  %i.dh = atomicrmw sub ptr %i.df, i64 1 release, align 8, !dbg !160834, !noalias !160840
  %i.di = icmp eq i64 %i.dh, 1, !dbg !160849
  br i1 %i.di, label %bb.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !160849

bb.aa:                                            ; preds = %bb.z
  fence acquire, !dbg !160850
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p) #58
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python.exit.i.i.i.i unwind label %.body.thread29.loopexit.split-lp.i, !dbg !160852, !noalias !160509

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !160853, !noalias !160691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !160854, !noalias !160691
  br label %bb.ag, !dbg !160855

bb.ab:                                            ; preds = %bb.x
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !dbg !160856, !noalias !160862
  %i.dl = icmp eq i64 %i.dk, 1, !dbg !160869
  br i1 %i.dl, label %bb.ac, label %.body.thread.i, !dbg !160869

bb.ac:                                            ; preds = %bb.ab
  fence acquire, !dbg !160870
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #58
          to label %.body.thread.i unwind label %bb.w, !dbg !160872, !noalias !160691

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0uEs_0uEB3w_.exit.i.i: ; preds = %.noexc10.i
  invoke fastcc void @_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0uEs0_0B1E_(ptr nonnull %i.u)
          to label %bb.ag unwind label %.body.thread29.loopexit.split-lp.i, !dbg !160873, !noalias !160509

bb.ad:                                            ; preds = %bb.o
  %i.dm = extractvalue { i64, i32 } %i.co, 0, !dbg !160687 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, %i.cn, !dbg !160877
  br i1 %i.dn, label %.split.i, label %bb.ae, !dbg !160877

.split.i:                                         ; preds = %bb.ad
  %i.do = extractvalue { i64, i32 } %i.co, 1, !dbg !160687 ; 2 uses
  %i.dp = icmp ult i32 %i.do, 1000000000, !dbg !160886
  call void @llvm.assume(i1 %i.dp), !dbg !160886
  %.not43.i = icmp samesign ult i32 %i.do, %i.cj, !dbg !160899
  br i1 %.not43.i, label %bb.p, label %bb.af, !dbg !160687

bb.ae:                                            ; preds = %bb.ad
  %.not42.i = icmp slt i64 %i.dm, %i.cn, !dbg !160899
  br i1 %.not42.i, label %bb.p, label %bb.af, !dbg !160687

bb.af:                                            ; preds = %bb.ae, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !160908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !dbg !160909, !alias.scope !160509
  store i64 0, ptr %i.ab, align 8, !dbg !160908, !alias.scope !160503, !noalias !160507
  br label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4sendB10_.exit, !dbg !160910

bb.ag:                                            ; preds = %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0uEs_0uEB3w_.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python.exit.i.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python.exit19.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !160912, !noalias !160691
  %i.dq = load atomic i64, ptr %i.ah monotonic, align 16, !dbg !160516, !noalias !160913 ; 2 uses
  %i.dr = load i64, ptr %i.ai, align 16, !dbg !160527, !noalias !160913, !noundef !11 ; 2 uses
  %i.ds = and i64 %i.dr, %i.dq, !dbg !160529
  %i.dt = icmp eq i64 %i.ds, 0, !dbg !160529
  br i1 %i.dt, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_.exit.i, !dbg !160529

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_.exit.i: ; preds = %bb.ag, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i, %bb.b
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE20disconnect_receiversB10_:bb.a
_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !218335
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !218335

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod7 = icmp ne i32 %xtraiter, 0, !dbg !218335
  tail call void @llvm.assume(i1 %lcmp.mod7), !dbg !218335
  br label %.lr.ph.i.i.epil, !dbg !218335

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !218338
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !218335 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !218335
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !218335, !llvm.loop !218341

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1, !dbg !218342
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_.exit.i, !dbg !218343

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.k, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %i.al, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.07.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i.i ], !dbg !218344
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.05.0.i, %bb.k ], [ %.sroa.05.0.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i.i ], !dbg !218296
  %.pre.i = load i64, ptr %i.a, align 16, !dbg !218292
  br label %bb.d, !dbg !218289

bb.j:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !dbg !218345, !noundef !11
  %i.an = add i64 %i.am, %i.v, !dbg !218346
  br label %bb.k, !dbg !218349

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.j ], [ %i.ab, %bb.f ], !dbg !218350 ; 2 uses
  %i.ao = load i64, ptr %i.z, align 8, !dbg !218351, !range !22581, !alias.scope !218355, !noundef !11
  %switch.i.i = icmp slt i64 %i.ao, -9223372036854775806, !dbg !218351
  br i1 %switch.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_.exit.i, label %bb.l, !dbg !218351

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.m, !dbg !218358

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i unwind label %bb.n, !dbg !218362

bb.n:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !218358
  unreachable, !dbg !218358

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i: ; preds = %bb.m
  resume { ptr, i32 } %i.ap, !dbg !218358

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.l
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z), !dbg !218364
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_.exit.i, !dbg !218366

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE20discard_all_messagesB10_.exit: ; preds = %bb.e
  ret i1 %i.g, !dbg !218367
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvB10_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !218368 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [40 x i8], align 8            ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !218369
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !218370
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !dbg !218370
  br label %bb.b, !dbg !218372

bb.b:                                             ; preds = %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !218374), !dbg !218377
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !218378

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.028.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.028.i.be, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ], !dbg !218383 ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !dbg !218384, !noalias !218374 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !dbg !218388, !noalias !218374, !noundef !11
  %i.w = add i64 %i.v, -1, !dbg !218389
  %i.x = and i64 %i.w, %i.u, !dbg !218390         ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !dbg !218391, !noalias !218374, !noundef !11
  %i.z = sub i64 0, %i.y, !dbg !218393
  %i.aa = and i64 %i.u, %i.z, !dbg !218394
  %i.ab = load ptr, ptr %i.o, align 8, !dbg !218395, !noalias !218374, !nonnull !11, !noundef !11
  %i.ac = load i64, ptr %i.p, align 32, !dbg !218395, !noalias !218374, !noundef !11
  %i.ad = icmp ult i64 %i.x, %i.ac, !dbg !218397
  call void @llvm.assume(i1 %i.ad), !dbg !218402
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %i.x, !dbg !218403 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48, !dbg !218404
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !dbg !218413, !noalias !218374 ; 3 uses
  %i.ah = add i64 %i.u, 1, !dbg !218415
  %i.ai = icmp eq i64 %i.ah, %i.ag, !dbg !218415
  br i1 %i.ai, label %bb.d, label %bb.c, !dbg !218415

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u, !dbg !218417
  br i1 %i.aj, label %bb.h, label %bb.e, !dbg !218417

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ak = add nuw i64 %i.x, 1, !dbg !218418
  %i.al = load i64, ptr %i.r, align 128, !dbg !218419, !noalias !218374, !noundef !11
  %i.am = icmp ult i64 %i.ak, %i.al, !dbg !218418
  br i1 %i.am, label %bb.l, label %bb.k, !dbg !218418

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.028.i, 7, !dbg !218420
  br i1 %i.an, label %bb.g, label %bb.f, !dbg !218420

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !218422, !noalias !218374
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !218422

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.028.i, 0, !dbg !218423
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !218427

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw i32 %.sroa.0.028.i, %.sroa.0.028.i, !dbg !218428 ; 2 uses
  %xtraiter = and i32 %i.ao, 7, !dbg !218427      ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.028.i, 3, !dbg !218427
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !218427

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56, !dbg !218427
  br label %.lr.ph.i.i, !dbg !218427

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !218430, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218430, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218430, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218430, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218430, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218430, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218430, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218430, !noalias !218374
  %niter.next.7 = add i32 %niter, 8, !dbg !218427 ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !218427
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !218427

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !218427
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !218427

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0, !dbg !218427
  call void @llvm.assume(i1 %lcmp.mod65), !dbg !218427
  br label %.lr.ph.i.i.epil, !dbg !218427

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !218430, !noalias !218374
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !218427 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !218427
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !218427, !llvm.loop !218433

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.028.i, 1, !dbg !218434
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, !dbg !218435

bb.h:                                             ; preds = %bb.c
  fence seq_cst, !dbg !218436
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !dbg !218438, !noalias !218374 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !dbg !218441, !noalias !218374, !noundef !11 ; 2 uses
  %i.at = xor i64 %i.as, -1, !dbg !218443
  %i.au = and i64 %i.ar, %i.at, !dbg !218444
  %i.av = icmp eq i64 %i.au, %i.u, !dbg !218444
  br i1 %i.av, label %bb.j, label %bb.i, !dbg !218444

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.028.i, 0, !dbg !218445
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader, !dbg !218450

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6), !dbg !218451 ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !218453 ; 2 uses
  %xtraiter66 = and i32 %4, 5, !dbg !218450       ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.028.i, 3, !dbg !218450
  br i1 %i.aw, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new, !dbg !218450

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter70 = and i32 %4, 56, !dbg !218450
  br label %.lr.ph.i12.i, !dbg !218450

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0, !dbg !218450
  br i1 %lcmp.mod68.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader, !dbg !218450

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0, !dbg !218450
  call void @llvm.assume(i1 %lcmp.mod69), !dbg !218450
  br label %.lr.ph.i12.i.epil, !dbg !218450

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !218455, !noalias !218374
  %epil.iter67.next = add i32 %epil.iter67, 1, !dbg !218450 ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66, !dbg !218450
  br i1 %epil.iter67.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !dbg !218450, !llvm.loop !218458

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ax = add i32 %.sroa.0.028.i, 1, !dbg !218459
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, !dbg !218460

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !dbg !218455, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218455, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218455, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218455, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218455, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218455, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218455, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218455, !noalias !218374
  %niter71.next.7 = add i32 %niter71, 8, !dbg !218450 ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70, !dbg !218450
  br i1 %niter71.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i, !dbg !218450

bb.j:                                             ; preds = %bb.h
  %i.ay = and i64 %i.as, %i.ar, !dbg !218462
  %i.az = icmp eq i64 %i.ay, 0, !dbg !218462
  br i1 %i.az, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_.exit, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit.thread, !dbg !218462

bb.k:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.n, align 8, !dbg !218463, !noalias !218374, !noundef !11
  %i.bb = add i64 %i.ba, %i.aa, !dbg !218464
  br label %bb.l, !dbg !218467

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.ag, %bb.d ], !dbg !218468
  %i.bc = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !dbg !218469, !noalias !218374
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bc, 1, !dbg !218474
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m, !dbg !218475

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.028.i, 0, !dbg !218476
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader, !dbg !218481

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6), !dbg !218482 ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i, !dbg !218484 ; 2 uses
  %xtraiter72 = and i32 %5, 5, !dbg !218481       ; 3 uses
  %i.bd = icmp ult i32 %.sroa.0.028.i, 3, !dbg !218481
  br i1 %i.bd, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new, !dbg !218481

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter76 = and i32 %5, 56, !dbg !218481
  br label %.lr.ph.i17.i, !dbg !218481

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0, !dbg !218481
  br i1 %lcmp.mod74.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader, !dbg !218481

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0, !dbg !218481
  call void @llvm.assume(i1 %lcmp.mod75), !dbg !218481
  br label %.lr.ph.i17.i.epil, !dbg !218481

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !218486, !noalias !218374
  %epil.iter73.next = add i32 %epil.iter73, 1, !dbg !218481 ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72, !dbg !218481
  br i1 %epil.iter73.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !dbg !218481, !llvm.loop !218489

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.be = add i32 %.sroa.0.028.i, 1, !dbg !218490
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, !dbg !218491

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.028.i.be = phi i32 [ %i.aq, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.be, %._crit_edge.loopexit.i20.i ], [ %i.ax, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !218384

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !dbg !218486, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218486, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218486, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218486, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218486, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218486, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218486, !noalias !218374
  call void @llvm.x86.sse2.pause(), !dbg !218486, !noalias !218374
  %niter77.next.7 = add i32 %niter77, 8, !dbg !218481 ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76, !dbg !218481
  br i1 %niter77.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i, !dbg !218481

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_.exit: ; preds = %bb.j
  %i.bf = load i32, ptr %i.k, align 8, !dbg !218493, !range !113897, !noundef !11 ; 2 uses
  %.not = icmp eq i32 %i.bf, 1000000000, !dbg !218493
  br i1 %.not, label %bb.r, label %bb.q, !dbg !218495

bb.n:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store ptr %i.ae, ptr %i.i, align 8, !dbg !218496, !alias.scope !218374
  %i.bh = load i64, ptr %i.n, align 8, !dbg !218497, !noalias !218374, !noundef !11
  %i.bi = add i64 %i.bh, %i.u, !dbg !218498       ; 2 uses
  store i64 %i.bi, ptr %i.l, align 8, !dbg !218500, !alias.scope !218374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !218501, !noalias !218504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !218507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false), !dbg !218509, !noalias !218504
  store atomic i64 %i.bi, ptr %i.bg release, align 8, !dbg !218514, !noalias !218504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !dbg !218519, !noalias !218504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !218520
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !218521
  invoke fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bj)
          to label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit unwind label %bb.o, !dbg !218523, !noalias !218504

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_(ptr noalias noundef align 8 dereferenceable(48) %i.h) #56
          to label %common.resume unwind label %bb.p, !dbg !218524, !noalias !218504

bb.p:                                             ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !218525, !noalias !218504
  unreachable, !dbg !218525

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %i.bx, %bb.t ], [ %i.cl, %bb.ac ], [ %i.bx, %bb.u ], [ %i.cl, %bb.ad ]
  resume { ptr, i32 } %common.resume.op, !dbg !218526

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 8, !dbg !218527 ; 2 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !218527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx3, i64 40, i1 false), !dbg !218527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !218524, !noalias !218504
  %i.bm = icmp eq i64 %.sroa.0.0.copyload2, -9223372036854775806, !dbg !218528
  br i1 %i.bm, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit.thread, label %bb.ah, !dbg !218532

bb.q:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_.exit
  %i.bn = load i64, ptr %i.j, align 8, !dbg !218533, !noundef !11 ; 2 uses
  %i.bo = call { i64, i32 } @_RNvMNtCsh8eZTKRCwoO_3std4timeNtB2_7Instant3now(), !dbg !218534 ; 2 uses
  %i.bp = extractvalue { i64, i32 } %i.bo, 0, !dbg !218534 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.bn, !dbg !218535
  br i1 %i.bq, label %.split, label %bb.ae, !dbg !218535

bb.r:                                             ; preds = %.split, %bb.ae, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !218543, !noalias !218546
  store ptr %i.i, ptr %i.f, align 8, !dbg !218549
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !218549
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !218549
  %i.br = load i8, ptr %i.t, align 8, !dbg !218550, !range !21821, !noalias !218559, !noundef !11
  %i.bs = icmp eq i8 %i.br, 1, !dbg !218566
  br i1 %i.bs, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !218566, !prof !17433

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.r
  %i.bt = call noundef ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECseeLknQCOKOd_13polars_python(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !dbg !218567, !noalias !218546 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null, !dbg !218568
  br i1 %i.bu, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEs_0uEB3w_.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !218568

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bt, %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.bv = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !218571, !noalias !218546, !noundef !11 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !218581, !noalias !218546
  %.not.i.i.i = icmp eq ptr %i.bv, null, !dbg !218583
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !dbg !218584, !prof !1928

bb.s:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !218585, !noalias !218546
  %i.bw = call noundef nonnull ptr @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context3new(), !dbg !218585, !noalias !218546 ; 2 uses
  store ptr %i.bw, ptr %i.e, align 8, !dbg !218585, !noalias !218546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !218586, !noalias !218546
  store ptr %i.i, ptr %i.c, align 8, !dbg !218587, !noalias !218546
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !dbg !218587
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8, !dbg !218587
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0B12_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bw)
          to label %bb.v unwind label %bb.t, !dbg !218592, !noalias !218546

bb.t:                                             ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !218594), !dbg !218597
  call void @llvm.experimental.noalias.scope.decl(metadata !218598), !dbg !218601
  call void @llvm.experimental.noalias.scope.decl(metadata !218603), !dbg !218606
  %i.by = load ptr, ptr %i.e, align 8, !dbg !218608, !alias.scope !218612, !noalias !218546, !nonnull !11, !noundef !11
  %i.bz = atomicrmw sub ptr %i.by, i64 1 release, align 8, !dbg !218613, !noalias !218616
  %i.ca = icmp eq i64 %i.bz, 1, !dbg !218617
  br i1 %i.ca, label %bb.u, label %common.resume, !dbg !218617

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !218618
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #58
          to label %common.resume unwind label %bb.x, !dbg !218620, !noalias !218546

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !218586, !noalias !218546
  call void @llvm.experimental.noalias.scope.decl(metadata !218621), !dbg !218597
  call void @llvm.experimental.noalias.scope.decl(metadata !218624), !dbg !218627
  call void @llvm.experimental.noalias.scope.decl(metadata !218629), !dbg !218632
  %i.cb = load ptr, ptr %i.e, align 8, !dbg !218634, !alias.scope !218638, !noalias !218546, !nonnull !11, !noundef !11
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !dbg !218639, !noalias !218642
  %i.cd = icmp eq i64 %i.cc, 1, !dbg !218643
  br i1 %i.cd, label %bb.w, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python.exit19.i.i.i, !dbg !218643

bb.w:                                             ; preds = %bb.v
  fence acquire, !dbg !218644
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #58, !dbg !218646, !noalias !218546
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python.exit19.i.i.i, !dbg !218646

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python.exit19.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !218597, !noalias !218546
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_.exit, !dbg !218597

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !218647, !noalias !218546
  unreachable, !dbg !218647

bb.y:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !218648, !noalias !218546
  store ptr %i.bv, ptr %i.d, align 8, !dbg !218648, !noalias !218546
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 24, !dbg !218649
  store atomic i64 0, ptr %i.cf release, align 8, !dbg !218659, !noalias !218546
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 32, !dbg !218661
  store atomic ptr null, ptr %i.cg release, align 8, !dbg !218668, !noalias !218546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !218670, !noalias !218546
  store ptr %i.i, ptr %i.b, align 8, !dbg !218671, !noalias !218546
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8, !dbg !218671
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8, !dbg !218671
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0B12_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bv)
          to label %bb.z unwind label %bb.ac, !dbg !218675, !noalias !218546

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !218670, !noalias !218546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !218677, !noalias !218546
  %i.ch = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !218681, !noalias !218546, !noundef !11 ; 3 uses
  store ptr %i.ch, ptr %i.a, align 8, !dbg !218681, !noalias !218546
  store ptr %i.bv, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !218685, !noalias !218546
  %i.ci = icmp eq ptr %i.ch, null, !dbg !218687
  br i1 %i.ci, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python.exit.i.i.i, label %bb.aa, !dbg !218687

bb.aa:                                            ; preds = %bb.z
  %i.cj = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !dbg !218689, !noalias !218695
  %i.ck = icmp eq i64 %i.cj, 1, !dbg !218704
  br i1 %i.ck, label %bb.ab, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !218704

bb.ab:                                            ; preds = %bb.aa
  fence acquire, !dbg !218705
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58, !dbg !218707, !noalias !218546
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !218707

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !218708, !noalias !218546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !218709, !noalias !218546
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_.exit, !dbg !218710

bb.ac:                                            ; preds = %bb.y
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !dbg !218711, !noalias !218717
  %i.cn = icmp eq i64 %i.cm, 1, !dbg !218724
  br i1 %i.cn, label %bb.ad, label %common.resume, !dbg !218724

bb.ad:                                            ; preds = %bb.ac
  fence acquire, !dbg !218725
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %common.resume unwind label %bb.x, !dbg !218727, !noalias !218546

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEs_0uEB3w_.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEs0_0B1E_(ptr nonnull %i.f), !dbg !218728, !noalias !218546
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_.exit, !dbg !218728

_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python.exit19.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python.exit.i.i.i, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEs_0uEB3w_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !218732, !noalias !218546
  br label %bb.b, !dbg !218372

.split:                                           ; preds = %bb.q
  %i.co = extractvalue { i64, i32 } %i.bo, 1, !dbg !218534 ; 2 uses
  %i.cp = icmp ult i32 %i.co, 1000000000, !dbg !218733
  call void @llvm.assume(i1 %i.cp), !dbg !218733
  %.not18 = icmp samesign ult i32 %i.co, %i.bf, !dbg !218741
  br i1 %.not18, label %bb.r, label %bb.af, !dbg !218534

bb.ae:                                            ; preds = %bb.q
  %.not17 = icmp slt i64 %i.bp, %i.bn, !dbg !218741
  br i1 %.not17, label %bb.r, label %bb.af, !dbg !218534

bb.af:                                            ; preds = %.split, %bb.ae
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !218749
  store i8 0, ptr %i.cq, align 8, !dbg !218749
  br label %bb.ag, !dbg !218750

end_hunk_1
begin_hunk_2_@llvm.umin.i32
!160396 = !DILocation(line: 2189, column: 23, scope: !160397, inlinedAt: !160398)
!160397 = distinct !DILexicalBlock(scope: !160329, file: !4353, line: 2189, column: 13)
!160398 = !DILocation(line: 40, column: 50, scope: !160399)
!160399 = !DILexicalBlockFile(scope: !160400, file: !135686, discriminator: 4)
!160400 = distinct !DILexicalBlock(scope: !160401, file: !135686, line: 40, column: 54)
!160401 = distinct !DILexicalBlock(scope: !160340, file: !135686, line: 40, column: 54)
!160402 = !DILocation(line: 40, column: 54, scope: !160340)
!160403 = !DILocation(line: 2174, column: 16, scope: !160392, inlinedAt: !160393)
!160404 = !{!160405}
!160405 = distinct !{!160405, !160406, !"_RNvMs1_NtNtCseeLknQCOKOd_13polars_python6series10comparisonNtB7_8PySeries5eq_u8: argument 0"}
!160406 = distinct !{!160406, !"_RNvMs1_NtNtCseeLknQCOKOd_13polars_python6series10comparisonNtB7_8PySeries5eq_u8"}
!160407 = !DILocation(line: 123, column: 9, scope: !160408, inlinedAt: !160409)
!160408 = distinct !DISubprogram(name: "enter_polars_series<pyo3::marker::Python, polars_core::chunked_array::ChunkedArray<polars_core::datatypes::BooleanType>, polars_python::series::comparison::{impl#3}::eq_u8::{closure_env#0}>", linkageName: "_RINvYNtNtCsbm5zPlkZccl_4pyo36marker6PythonNtNtCseeLknQCOKOd_13polars_python5utils14EnterPolarsExt19enter_polars_seriesINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1X_9datatypes11BooleanTypeENCNvMs1_NtNtBI_6series10comparisonNtB3x_8PySeries5eq_u80EBI_", scope: !133365, file: !126193, line: 117, type: !10, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160409 = distinct !DILocation(line: 41, column: 20, scope: !160410, inlinedAt: !160411)
!160410 = distinct !DISubprogram(name: "eq_u8", linkageName: "_RNvMs1_NtNtCseeLknQCOKOd_13polars_python6series10comparisonNtB7_8PySeries5eq_u8", scope: !132865, file: !135686, line: 40, type: !10, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160411 = distinct !DILocation(line: 38, column: 9, scope: !160340)
!160412 = !{!160413, !160415, !160405}
!160413 = distinct !{!160413, !160414, !"_RINvYNtNtCsbm5zPlkZccl_4pyo36marker6PythonNtNtCseeLknQCOKOd_13polars_python5utils14EnterPolarsExt19enter_polars_seriesINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1X_9datatypes11BooleanTypeENCNvMs1_NtNtBI_6series10comparisonNtB3x_8PySeries5eq_u80EBI_: argument 0"}
!160414 = distinct !{!160414, !"_RINvYNtNtCsbm5zPlkZccl_4pyo36marker6PythonNtNtCseeLknQCOKOd_13polars_python5utils14EnterPolarsExt19enter_polars_seriesINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1X_9datatypes11BooleanTypeENCNvMs1_NtNtBI_6series10comparisonNtB3x_8PySeries5eq_u80EBI_"}
!160415 = distinct !{!160415, !160414, !"_RINvYNtNtCsbm5zPlkZccl_4pyo36marker6PythonNtNtCseeLknQCOKOd_13polars_python5utils14EnterPolarsExt19enter_polars_seriesINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1X_9datatypes11BooleanTypeENCNvMs1_NtNtBI_6series10comparisonNtB3x_8PySeries5eq_u80EBI_: argument 1"}
!160416 = !DILocation(line: 123, column: 14, scope: !160408, inlinedAt: !160409)
!160417 = !DILocation(line: 835, column: 15, scope: !160418, inlinedAt: !160419)
!160418 = distinct !DISubprogram(name: "map<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::BooleanType>, pyo3::err::PyErr, polars_python::series::PySeries, polars_python::utils::EnterPolarsExt::enter_polars_series::{closure_env#0}<pyo3::marker::Python, polars_core::chunked_array::ChunkedArray<polars_core::datatypes::BooleanType>, polars_python::series::comparison::{impl#3}::eq_u8::{closure_env#0}>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBN_9datatypes11BooleanTypeENtNtCsbm5zPlkZccl_4pyo33err5PyErrE3mapNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNCINvYNtNtB2g_6marker6PythonNtNtB2S_5utils14EnterPolarsExt19enter_polars_seriesBI_NCNvMs1_NtB2Q_10comparisonB2O_5eq_u80E0EB2S_", scope: !4354, file: !4353, line: 831, type: !10, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160419 = distinct !DILocation(line: 123, column: 30, scope: !160408, inlinedAt: !160409)
!160420 = !DILocation(line: 835, column: 9, scope: !160418, inlinedAt: !160419)
!160421 = !DILocation(line: 0, scope: !160418, inlinedAt: !160419)
!160422 = !DILocation(line: 836, column: 16, scope: !160418, inlinedAt: !160419)
!160423 = !DILocation(line: 123, column: 54, scope: !160424, inlinedAt: !160425)
!160424 = distinct !DISubprogram(name: "{closure#0}<pyo3::marker::Python, polars_core::chunked_array::ChunkedArray<polars_core::datatypes::BooleanType>, polars_python::series::comparison::{impl#3}::eq_u8::{closure_env#0}>", linkageName: "_RNCINvYNtNtCsbm5zPlkZccl_4pyo36marker6PythonNtNtCseeLknQCOKOd_13polars_python5utils14EnterPolarsExt19enter_polars_seriesINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1Z_9datatypes11BooleanTypeENCNvMs1_NtNtBK_6series10comparisonNtB3z_8PySeries5eq_u80E0BK_", scope: !135824, file: !126193, line: 123, type: !10, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160425 = distinct !DILocation(line: 836, column: 25, scope: !160426, inlinedAt: !160419)
!160426 = distinct !DILexicalBlock(scope: !160418, file: !4353, line: 836, column: 13)
!160427 = !DILocation(line: 837, column: 17, scope: !160418, inlinedAt: !160419)
!160428 = !{!160415}
!160429 = !DILocation(line: 123, column: 68, scope: !160408, inlinedAt: !160409)
!160430 = !DILocation(line: 124, column: 6, scope: !160408, inlinedAt: !160409)
!160431 = !DILocation(line: 42, column: 14, scope: !160410, inlinedAt: !160411)
!160432 = !DILocation(line: 40, column: 60, scope: !160433)
!160433 = distinct !DILexicalBlock(scope: !160434, file: !135686, line: 40, column: 60)
!160434 = distinct !DILexicalBlock(scope: !160340, file: !135686, line: 38, column: 9)
!160435 = !DILocation(line: 1494, column: 23, scope: !160436, inlinedAt: !160438)
!160436 = distinct !DILexicalBlock(scope: !160437, file: !4353, line: 1494, column: 13)
!160437 = distinct !DISubprogram(name: "and_then<polars_python::series::PySeries, pyo3::err::PyErr, pyo3::instance::Bound<pyo3::types::any::PyAny>, pyo3::impl_::wrap::{impl#12}::map_into_ptr::{closure_env#0}<polars_python::series::PySeries, pyo3::err::PyErr>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo33err5PyErrE8and_thenINtNtB1z_8instance5BoundNtNtNtB1z_5types3any5PyAnyENCNvMsa_NtNtB1z_5impl_4wrapINtB39_21IntoPyObjectConverterBv_E12map_into_ptr0EBM_", scope: !4354, file: !4353, line: 1488, type: !10, scopeLine: 1488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160438 = !DILocation(line: 133, column: 13, scope: !160439, inlinedAt: !160440)
!160439 = distinct !DISubprogram(name: "map_into_ptr<polars_python::series::PySeries, pyo3::err::PyErr>", linkageName: "_RNvMsa_NtNtCsbm5zPlkZccl_4pyo35impl_4wrapINtB5_21IntoPyObjectConverterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtB9_3err5PyErrEE12map_into_ptrB1M_", scope: !135839, file: !135838, line: 129, type: !10, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160440 = !DILocation(line: 40, column: 60, scope: !160441)
!160441 = !DILexicalBlockFile(scope: !160433, file: !135686, discriminator: 16)
!160442 = !DILocation(line: 835, column: 9, scope: !160443, inlinedAt: !160444)
!160443 = distinct !DISubprogram(name: "map<pyo3::instance::Bound<pyo3::types::any::PyAny>, pyo3::err::PyErr, *mut pyo3_ffi::object::PyObject, fn(pyo3::instance::Bound<pyo3::types::any::PyAny>) -> *mut pyo3_ffi::object::PyObject>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultINtNtCsbm5zPlkZccl_4pyo38instance5BoundNtNtNtBN_5types3any5PyAnyENtNtBN_3err5PyErrE3mapONtNtCsfueLBegRnmY_8pyo3_ffi6object8PyObjectNvMs9_BL_BI_8into_ptrECseeLknQCOKOd_13polars_python", scope: !4354, file: !4353, line: 831, type: !10, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160444 = !DILocation(line: 134, column: 14, scope: !160439, inlinedAt: !160440)
!160445 = !DILocation(line: 2347, column: 9, scope: !160446, inlinedAt: !160447)
!160446 = distinct !DISubprogram(name: "new<polars_core::series::Series>", linkageName: "_RNvMsW_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE3newCseeLknQCOKOd_13polars_python", scope: !17064, file: !17063, line: 2346, type: !10, scopeLine: 2346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160447 = distinct !DILocation(line: 372, column: 19, scope: !160448, inlinedAt: !160449)
!160448 = distinct !DISubprogram(name: "new<parking_lot::raw_rwlock::RawRwLock, polars_core::series::Series>", linkageName: "_RNvMs0_NtCsdjtJf7E0q1U_8lock_api6rwlockINtB5_6RwLockNtNtCs3mtJKb2XD8V_11parking_lot10raw_rwlock9RawRwLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE3newCseeLknQCOKOd_13polars_python", scope: !132882, file: !132881, line: 370, type: !10, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160449 = distinct !DILocation(line: 53, column: 21, scope: !160450, inlinedAt: !160451)
!160450 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs0_NtCseeLknQCOKOd_13polars_python6seriesNtB5_8PySeries3new", scope: !132865, file: !133238, line: 51, type: !10, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160451 = distinct !DILocation(line: 123, column: 38, scope: !160424, inlinedAt: !160425)
!160452 = !DILocation(line: 1493, column: 16, scope: !160437, inlinedAt: !160438)
!160453 = !DILocation(line: 227, column: 15, scope: !135855, inlinedAt: !160454)
!160454 = distinct !DILocation(line: 133, column: 32, scope: !160455, inlinedAt: !160456)
!160455 = distinct !DISubprogram(name: "{closure#0}<polars_python::series::PySeries, pyo3::err::PyErr>", linkageName: "_RNCNvMsa_NtNtCsbm5zPlkZccl_4pyo35impl_4wrapINtB7_21IntoPyObjectConverterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtBb_3err5PyErrEE12map_into_ptr0B1O_", scope: !135858, file: !135838, line: 133, type: !10, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160456 = !DILocation(line: 1493, column: 22, scope: !160457, inlinedAt: !160438)
!160457 = distinct !DILexicalBlock(scope: !160437, file: !4353, line: 1493, column: 13)
!160458 = !{!160459, !160461}
!160459 = distinct !{!160459, !160460, !"_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_: argument 0"}
!160460 = distinct !{!160460, !"_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_"}
!160461 = distinct !{!160461, !160460, !"_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_: argument 1"}
!160462 = !DILocation(line: 102, column: 22, scope: !135867, inlinedAt: !160463)
!160463 = distinct !DILocation(line: 30, column: 1, scope: !135869, inlinedAt: !160464)
!160464 = distinct !DILocation(line: 227, column: 20, scope: !135855, inlinedAt: !160454)
!160465 = !DILocation(line: 227, column: 9, scope: !135855, inlinedAt: !160454)
!160466 = !DILocation(line: 0, scope: !135855, inlinedAt: !160454)
!160467 = !{!160461}
!160468 = !DILocation(line: 229, column: 17, scope: !135855, inlinedAt: !160454)
!160469 = !DILocation(line: 231, column: 5, scope: !135855, inlinedAt: !160454)
!160470 = !DILocation(line: 0, scope: !160437, inlinedAt: !160438)
!160471 = !DILocation(line: 837, column: 23, scope: !160472, inlinedAt: !160444)
!160472 = distinct !DILexicalBlock(scope: !160443, file: !4353, line: 837, column: 13)
!160473 = !DILocation(line: 839, column: 5, scope: !160443, inlinedAt: !160444)
!160474 = !DILocation(line: 836, column: 22, scope: !160475, inlinedAt: !160444)
!160475 = distinct !DILexicalBlock(scope: !160443, file: !4353, line: 836, column: 13)
!160476 = !DILocation(line: 839, column: 6, scope: !160443, inlinedAt: !160444)
!160477 = !DILocation(line: 0, scope: !160443, inlinedAt: !160444)
!160478 = !DILocation(line: 810, column: 1, scope: !135743, inlinedAt: !160479)
!160479 = distinct !DILocation(line: 38, column: 9, scope: !160337)
!160480 = !{!160481}
!160481 = distinct !{!160481, !160482, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_: argument 0"}
!160482 = distinct !{!160482, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_"}
!160483 = !DILocation(line: 810, column: 1, scope: !135757, inlinedAt: !160484)
!160484 = distinct !DILocation(line: 810, column: 1, scope: !135743, inlinedAt: !160479)
!160485 = !DILocation(line: 105, column: 64, scope: !160318)
!160486 = !DILocation(line: 2189, column: 23, scope: !160329, inlinedAt: !160487)
!160487 = !DILocation(line: 0, scope: !160340)
!160488 = !DILocation(line: 810, column: 1, scope: !135743, inlinedAt: !160489)
!160489 = distinct !DILocation(line: 38, column: 9, scope: !160337)
!160490 = !{!160491}
!160491 = distinct !{!160491, !160492, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_: argument 0"}
!160492 = distinct !{!160492, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_"}
!160493 = !DILocation(line: 810, column: 1, scope: !135757, inlinedAt: !160494)
!160494 = distinct !DILocation(line: 810, column: 1, scope: !135743, inlinedAt: !160489)
!160495 = !DILocation(line: 99, column: 9, scope: !160318)
!160496 = distinct !DISubprogram(name: "send<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_6SenderNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4sendBS_", scope: !160497, file: !64586, line: 393, type: !10, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160497 = !DINamespace(name: "Sender", scope: !64587)
!160498 = !DILocation(line: 394, column: 9, scope: !160496)
!160499 = !DILocation(line: 394, column: 15, scope: !160496)
!160500 = !DILocation(line: 0, scope: !160496)
!160501 = !DILocation(line: 395, column: 52, scope: !160502)
!160502 = distinct !DILexicalBlock(scope: !160496, file: !64586, line: 395, column: 13)
!160503 = !{!160504}
!160504 = distinct !{!160504, !160505, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4sendB10_: argument 0"}
!160505 = distinct !{!160505, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4sendB10_"}
!160506 = !DILocation(line: 395, column: 47, scope: !160502)
!160507 = !{!160508}
!160508 = distinct !{!160508, !160505, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4sendB10_: argument 1"}
!160509 = !{!160504, !160508}
!160510 = !DILocation(line: 324, column: 26, scope: !160511, inlinedAt: !160512)
!160511 = distinct !DISubprogram(name: "send<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4sendB10_", scope: !128798, file: !128781, line: 319, type: !10, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160512 = distinct !DILocation(line: 395, column: 47, scope: !160502)
!160513 = !DILocation(line: 5, column: 17, scope: !160514, inlinedAt: !160515)
!160514 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs2_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !148874, file: !127612, line: 5, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160515 = distinct !DILocation(line: 324, column: 26, scope: !160511, inlinedAt: !160512)
!160516 = !DILocation(line: 3904, column: 24, scope: !17380, inlinedAt: !160517)
!160517 = distinct !DILocation(line: 2870, column: 26, scope: !160518, inlinedAt: !160519)
!160518 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !17069, file: !17068, line: 2868, type: !10, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160519 = distinct !DILocation(line: 126, column: 34, scope: !160520, inlinedAt: !160522)
!160520 = distinct !DILexicalBlock(scope: !160521, file: !128781, line: 125, column: 9)
!160521 = distinct !DISubprogram(name: "start_send<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_", scope: !128798, file: !128781, line: 124, type: !10, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160522 = distinct !DILocation(line: 327, column: 21, scope: !160523, inlinedAt: !160512)
!160523 = distinct !DILexicalBlock(scope: !160511, file: !128781, line: 324, column: 9)
!160524 = !{!160525, !160504, !160508}
!160525 = distinct !{!160525, !160526, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_: argument 0:pre.rot"}
!160526 = distinct !{!160526, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_"}
!160527 = !DILocation(line: 130, column: 23, scope: !160528, inlinedAt: !160522)
!160528 = distinct !DILexicalBlock(scope: !160520, file: !128781, line: 126, column: 9)
!160529 = !DILocation(line: 130, column: 16, scope: !160528, inlinedAt: !160522)
!160530 = !{!160531}
!160531 = distinct !{!160531, !160526, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_: argument 0"}
!160532 = !DILocation(line: 327, column: 21, scope: !160523, inlinedAt: !160512)
!160533 = !DILocation(line: 137, column: 32, scope: !160528, inlinedAt: !160522)
!160534 = !DILocation(line: 137, column: 25, scope: !160528, inlinedAt: !160522)
!160535 = !DILocation(line: 138, column: 32, scope: !160536, inlinedAt: !160522)
!160536 = distinct !DILexicalBlock(scope: !160528, file: !128781, line: 137, column: 13)
!160537 = !{!160531, !160504, !160508}
!160538 = !DILocation(line: 138, column: 30, scope: !160536, inlinedAt: !160522)
!160539 = !DILocation(line: 138, column: 23, scope: !160536, inlinedAt: !160522)
!160540 = !DILocation(line: 142, column: 33, scope: !160541, inlinedAt: !160522)
!160541 = distinct !DILexicalBlock(scope: !160536, file: !128781, line: 138, column: 13)
!160542 = !DILocation(line: 252, column: 39, scope: !160543, inlinedAt: !160544)
!160543 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE13get_uncheckedB1O_", scope: !147, file: !146, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160544 = distinct !DILocation(line: 646, column: 26, scope: !160545, inlinedAt: !160546)
!160545 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<polars_python::timeout::TimeoutRequest>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE13get_uncheckedjEB1l_", scope: !115, file: !114, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160546 = distinct !DILocation(line: 142, column: 45, scope: !160541, inlinedAt: !160522)
!160547 = !DILocation(line: 252, column: 13, scope: !160543, inlinedAt: !160544)
!160548 = !DILocation(line: 253, column: 13, scope: !160543, inlinedAt: !160544)
!160549 = !DILocation(line: 2447, column: 9, scope: !160550, inlinedAt: !160551)
!160550 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCseeLknQCOKOd_13polars_python", scope: !17064, file: !17063, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160551 = distinct !DILocation(line: 3615, column: 24, scope: !160552, inlinedAt: !160554)
!160552 = !DILexicalBlockFile(scope: !160553, file: !17068, discriminator: 2)
!160553 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !17069, file: !17068, line: 3614, type: !10, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160554 = distinct !DILocation(line: 2870, column: 43, scope: !160555, inlinedAt: !160556)
!160555 = !DILexicalBlockFile(scope: !160518, file: !17068, discriminator: 2)
!160556 = distinct !DILocation(line: 143, column: 36, scope: !160557, inlinedAt: !160522)
!160557 = distinct !DILexicalBlock(scope: !160541, file: !128781, line: 142, column: 13)
!160558 = !DILocation(line: 3905, column: 24, scope: !17380, inlinedAt: !160559)
!160559 = distinct !DILocation(line: 2870, column: 26, scope: !160518, inlinedAt: !160556)
!160560 = !DILocation(line: 146, column: 16, scope: !160561, inlinedAt: !160522)
!160561 = distinct !DILexicalBlock(scope: !160557, file: !128781, line: 143, column: 13)
!160562 = !DILocation(line: 175, column: 42, scope: !160561, inlinedAt: !160522)
!160563 = !DILocation(line: 2511, column: 13, scope: !160564, inlinedAt: !160565)
!160564 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !17191, file: !17149, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160565 = distinct !DILocation(line: 175, column: 29, scope: !160561, inlinedAt: !160522)
!160566 = !DILocation(line: 175, column: 59, scope: !160561, inlinedAt: !160522)
!160567 = !DILocation(line: 175, column: 23, scope: !160561, inlinedAt: !160522)
!160568 = !DILocation(line: 147, column: 35, scope: !160561, inlinedAt: !160522)
!160569 = !DILocation(line: 147, column: 47, scope: !160561, inlinedAt: !160522)
!160570 = !DILocation(line: 127, column: 12, scope: !127885, inlinedAt: !160571)
!160571 = distinct !DILocation(line: 189, column: 25, scope: !160561, inlinedAt: !160522)
!160572 = !DILocation(line: 132, column: 13, scope: !127885, inlinedAt: !160571)
!160573 = !DILocation(line: 1917, column: 50, scope: !127892, inlinedAt: !160574)
!160574 = distinct !DILocation(line: 781, column: 12, scope: !127894, inlinedAt: !160575)
!160575 = distinct !DILocation(line: 866, column: 14, scope: !127896, inlinedAt: !160576)
!160576 = distinct !DILocation(line: 128, column: 22, scope: !127898, inlinedAt: !160571)
!160577 = !DILocation(line: 781, column: 12, scope: !127894, inlinedAt: !160575)
!160578 = !DILocation(line: 3558, column: 28, scope: !127902, inlinedAt: !160579)
!160579 = distinct !DILocation(line: 128, column: 41, scope: !127885, inlinedAt: !160571)
!160580 = !DILocation(line: 25, column: 14, scope: !127907, inlinedAt: !160581)
!160581 = distinct !DILocation(line: 287, column: 13, scope: !127909, inlinedAt: !160582)
!160582 = distinct !DILocation(line: 129, column: 17, scope: !127899, inlinedAt: !160571)
!160583 = distinct !{!160583, !22214}
!160584 = !DILocation(line: 135, column: 23, scope: !127885, inlinedAt: !160571)
!160585 = !DILocation(line: 175, column: 20, scope: !160561, inlinedAt: !160522)
!160586 = !DILocation(line: 4390, column: 23, scope: !22474, inlinedAt: !160587)
!160587 = distinct !DILocation(line: 176, column: 17, scope: !160561, inlinedAt: !160522)
!160588 = !DILocation(line: 3904, column: 24, scope: !17380, inlinedAt: !160589)
!160589 = distinct !DILocation(line: 2870, column: 26, scope: !160518, inlinedAt: !160590)
!160590 = distinct !DILocation(line: 177, column: 38, scope: !160561, inlinedAt: !160522)
!160591 = !DILocation(line: 180, column: 38, scope: !160592, inlinedAt: !160522)
!160592 = distinct !DILexicalBlock(scope: !160561, file: !128781, line: 177, column: 17)
!160593 = !DILocation(line: 2511, column: 13, scope: !160564, inlinedAt: !160594)
!160594 = distinct !DILocation(line: 180, column: 25, scope: !160592, inlinedAt: !160522)
!160595 = !DILocation(line: 180, column: 20, scope: !160592, inlinedAt: !160522)
!160596 = !DILocation(line: 1917, column: 50, scope: !160597, inlinedAt: !160598)
!160597 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs10_NtNtCscgRAwXFJnXP_4core3cmp5implsmNtB8_10PartialOrd2lt", scope: !66740, file: !12103, line: 1917, type: !10, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160598 = distinct !DILocation(line: 781, column: 12, scope: !160599, inlinedAt: !160600)
!160599 = distinct !DISubprogram(name: "spec_next<u32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtB5_17RangeIteratorImpl9spec_nextCseeLknQCOKOd_13polars_python", scope: !21750, file: !10224, line: 780, type: !10, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160600 = distinct !DILocation(line: 866, column: 14, scope: !160601, inlinedAt: !160602)
!160601 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtNtNtB7_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python", scope: !10225, file: !10224, line: 865, type: !10, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160602 = distinct !DILocation(line: 115, column: 18, scope: !160603, inlinedAt: !160607)
!160603 = !DILexicalBlockFile(scope: !160604, file: !127886, discriminator: 2)
!160604 = distinct !DILexicalBlock(scope: !160605, file: !127886, line: 115, column: 9)
!160605 = distinct !DILexicalBlock(scope: !160606, file: !127886, line: 114, column: 9)
!160606 = distinct !DISubprogram(name: "spin_light", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light", scope: !127887, file: !127886, line: 113, type: !10, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160607 = distinct !DILocation(line: 185, column: 25, scope: !160592, inlinedAt: !160522)
!160608 = !DILocation(line: 781, column: 12, scope: !160599, inlinedAt: !160600)
!160609 = !DILocation(line: 1077, column: 12, scope: !160610, inlinedAt: !160611)
!160610 = distinct !DISubprogram(name: "min<u32>", linkageName: "_RNvYmNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCseeLknQCOKOd_13polars_python", scope: !12104, file: !12103, line: 1073, type: !10, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160611 = distinct !DILocation(line: 114, column: 36, scope: !160606, inlinedAt: !160607)
!160612 = !DILocation(line: 3558, column: 28, scope: !127902, inlinedAt: !160613)
!160613 = distinct !DILocation(line: 115, column: 26, scope: !160605, inlinedAt: !160607)
!160614 = !DILocation(line: 25, column: 14, scope: !160615, inlinedAt: !160616)
!160615 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !38393, file: !38391, line: 22, type: !10, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160616 = distinct !DILocation(line: 287, column: 13, scope: !160617, inlinedAt: !160618)
!160617 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !170, file: !162, line: 270, type: !10, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160618 = distinct !DILocation(line: 116, column: 13, scope: !160604, inlinedAt: !160607)
!160619 = distinct !{!160619, !22214}
!160620 = !DILocation(line: 119, column: 23, scope: !160605, inlinedAt: !160607)
!160621 = !DILocation(line: 555, column: 18, scope: !160622, inlinedAt: !160623)
!160622 = distinct !DISubprogram(name: "get<u32>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CellmE3getCseeLknQCOKOd_13polars_python", scope: !21810, file: !17063, line: 552, type: !10, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160623 = distinct !DILocation(line: 119, column: 33, scope: !160605, inlinedAt: !160607)
!160624 = !DILocation(line: 0, scope: !160561, inlinedAt: !160522)
!160625 = !DILocation(line: 3904, column: 24, scope: !17380, inlinedAt: !160626)
!160626 = distinct !DILocation(line: 2870, column: 26, scope: !160518, inlinedAt: !160627)
!160627 = distinct !DILocation(line: 0, scope: !160561, inlinedAt: !160522)
!160628 = !DILocation(line: 154, column: 38, scope: !160561, inlinedAt: !160522)
!160629 = !DILocation(line: 2511, column: 13, scope: !160564, inlinedAt: !160630)
!160630 = distinct !DILocation(line: 154, column: 25, scope: !160561, inlinedAt: !160522)
!160631 = !DILocation(line: 147, column: 32, scope: !160561, inlinedAt: !160522)
!160632 = !DILocation(line: 150, column: 21, scope: !160561, inlinedAt: !160522)
!160633 = !DILocation(line: 4081, column: 17, scope: !17401, inlinedAt: !160634)
!160634 = distinct !DILocation(line: 3130, column: 21, scope: !160635, inlinedAt: !160636)
!160635 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !17069, file: !17068, line: 3123, type: !10, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160636 = distinct !DILocation(line: 158, column: 33, scope: !160637, inlinedAt: !160522)
!160637 = distinct !DILexicalBlock(scope: !160561, file: !128781, line: 147, column: 17)
!160638 = !DILocation(line: 0, scope: !17401, inlinedAt: !160634)
!160639 = !DILocation(line: 158, column: 17, scope: !160637, inlinedAt: !160522)
!160640 = !DILocation(line: 1917, column: 50, scope: !160597, inlinedAt: !160641)
!160641 = distinct !DILocation(line: 781, column: 12, scope: !160599, inlinedAt: !160642)
!160642 = distinct !DILocation(line: 866, column: 14, scope: !160601, inlinedAt: !160643)
!160643 = distinct !DILocation(line: 115, column: 18, scope: !160603, inlinedAt: !160644)
!160644 = distinct !DILocation(line: 171, column: 33, scope: !160637, inlinedAt: !160522)
!160645 = !DILocation(line: 781, column: 12, scope: !160599, inlinedAt: !160642)
!160646 = !DILocation(line: 1077, column: 12, scope: !160610, inlinedAt: !160647)
!160647 = distinct !DILocation(line: 114, column: 36, scope: !160606, inlinedAt: !160644)
!160648 = !DILocation(line: 3558, column: 28, scope: !127902, inlinedAt: !160649)
!160649 = distinct !DILocation(line: 115, column: 26, scope: !160605, inlinedAt: !160644)
!160650 = !DILocation(line: 25, column: 14, scope: !160615, inlinedAt: !160651)
!160651 = distinct !DILocation(line: 287, column: 13, scope: !160617, inlinedAt: !160652)
!160652 = distinct !DILocation(line: 116, column: 13, scope: !160604, inlinedAt: !160644)
!160653 = distinct !{!160653, !22214}
!160654 = !DILocation(line: 119, column: 23, scope: !160605, inlinedAt: !160644)
!160655 = !DILocation(line: 555, column: 18, scope: !160622, inlinedAt: !160656)
!160656 = distinct !DILocation(line: 119, column: 33, scope: !160605, inlinedAt: !160644)
!160657 = !DILocation(line: 332, column: 30, scope: !160658, inlinedAt: !160512)
!160658 = distinct !DILexicalBlock(scope: !160523, file: !128781, line: 332, column: 39)
!160659 = !DILocation(line: 332, column: 20, scope: !160658, inlinedAt: !160512)
!160660 = !DILocation(line: 166, column: 25, scope: !160637, inlinedAt: !160522)
!160661 = !DILocation(line: 167, column: 25, scope: !160637, inlinedAt: !160522)
!160662 = !DILocation(line: 328, column: 54, scope: !160523, inlinedAt: !160512)
!160663 = !DILocation(line: 1921, column: 41, scope: !160664, inlinedAt: !160665)
!160664 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<polars_python::timeout::TimeoutRequest>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEB1g_", scope: !1946, file: !1945, line: 1898, type: !10, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160665 = distinct !DILocation(line: 1418, column: 18, scope: !160666, inlinedAt: !160667)
!160666 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB1l_", scope: !2065, file: !2064, line: 1413, type: !10, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160667 = distinct !DILocation(line: 205, column: 28, scope: !160668, inlinedAt: !160670)
!160668 = distinct !DILexicalBlock(scope: !160669, file: !128781, line: 204, column: 13)
!160669 = distinct !DISubprogram(name: "write<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_", scope: !128798, file: !128781, line: 196, type: !30, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160670 = distinct !DILocation(line: 328, column: 41, scope: !160523, inlinedAt: !160512)
!160671 = !{!160672, !160504, !160508}
!160672 = distinct !{!160672, !160673, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_: argument 0"}
!160673 = distinct !{!160673, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_"}
!160674 = !DILocation(line: 3890, column: 24, scope: !149334, inlinedAt: !160675)
!160675 = distinct !DILocation(line: 2898, column: 26, scope: !160676, inlinedAt: !160677)
!160676 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !17069, file: !17068, line: 2896, type: !10, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160677 = distinct !DILocation(line: 206, column: 24, scope: !160668, inlinedAt: !160670)
!160678 = !{!160672, !160679, !160504, !160508}
!160679 = distinct !{!160679, !160673, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_: argument 1"}
!160680 = !DILocation(line: 210, column: 9, scope: !160669, inlinedAt: !160670)
!160681 = !DILocation(line: 210, column: 24, scope: !160669, inlinedAt: !160670)
!160682 = !DILocation(line: 966, column: 9, scope: !160683, inlinedAt: !160684)
!160683 = distinct !DISubprogram(name: "map_err<(), polars_python::timeout::TimeoutRequest, std::sync::mpmc::error::SendTimeoutError<polars_python::timeout::TimeoutRequest>, fn(polars_python::timeout::TimeoutRequest) -> std::sync::mpmc::error::SendTimeoutError<polars_python::timeout::TimeoutRequest>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE7map_errINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5error16SendTimeoutErrorBJ_ENcNtB1N_12Disconnected0EBN_", scope: !4354, file: !4353, line: 962, type: !10, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160684 = distinct !DILocation(line: 329, column: 28, scope: !160685, inlinedAt: !160512)
!160685 = distinct !DILexicalBlock(scope: !160523, file: !128781, line: 328, column: 17)
!160686 = !DILocation(line: 332, column: 25, scope: !160658, inlinedAt: !160512)
!160687 = !DILocation(line: 333, column: 20, scope: !160658, inlinedAt: !160512)
!160688 = !DILocation(line: 46, column: 13, scope: !160689, inlinedAt: !160690)
!160689 = distinct !DISubprogram(name: "with<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<polars_python::timeout::TimeoutRequest>, ()>", linkageName: "_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0uEB1C_", scope: !127747, file: !122397, line: 37, type: !10, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160690 = distinct !DILocation(line: 338, column: 13, scope: !160523, inlinedAt: !160512)
!160691 = !{!160692, !160504, !160508}
!160692 = distinct !{!160692, !160693, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0uEB1C_: argument 0"}
!160693 = distinct !{!160693, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0uEB1C_"}
!160694 = !DILocation(line: 46, column: 21, scope: !160689, inlinedAt: !160690)
!160695 = !DILocation(line: 555, column: 18, scope: !149232, inlinedAt: !160696)
!160696 = distinct !DILocation(line: 59, column: 42, scope: !149234, inlinedAt: !160697)
!160697 = distinct !DILocation(line: 97, column: 49, scope: !149221, inlinedAt: !160698)
!160698 = distinct !DILocation(line: 250, column: 5, scope: !149225, inlinedAt: !160699)
!160699 = distinct !DILocation(line: 461, column: 37, scope: !160700, inlinedAt: !160701)
!160700 = distinct !DISubprogram(name: "try_with<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>, std::sync::mpmc::context::{impl#0}::with::{closure_env#1}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<polars_python::timeout::TimeoutRequest>, ()>, ()>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0uEs_0uEB3w_", scope: !21803, file: !21802, line: 457, type: !30, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160701 = distinct !DILocation(line: 53, column: 14, scope: !160702, inlinedAt: !160690)
!160702 = distinct !DILexicalBlock(scope: !160703, file: !122397, line: 47, column: 9)
!160703 = distinct !DILexicalBlock(scope: !160689, file: !122397, line: 46, column: 9)
!160704 = !{!160705, !160707, !160709, !160692, !160504, !160508}
!160705 = distinct !{!160705, !160706, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECseeLknQCOKOd_13polars_python: argument 0"}
!160706 = distinct !{!160706, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECseeLknQCOKOd_13polars_python"}
!160707 = distinct !{!160707, !160708, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CseeLknQCOKOd_13polars_python: argument 0"}
!160708 = distinct !{!160708, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CseeLknQCOKOd_13polars_python"}
!160709 = distinct !{!160709, !160710, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python: argument 0"}
!160710 = distinct !{!160710, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python"}
!160711 = !DILocation(line: 59, column: 16, scope: !149234, inlinedAt: !160697)
!160712 = !DILocation(line: 62, column: 27, scope: !149235, inlinedAt: !160697)
!160713 = !DILocation(line: 269, column: 12, scope: !160714, inlinedAt: !160715)
!160714 = distinct !DISubprogram(name: "as_ref<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtB6_4cell4CellINtNtB6_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE6as_refCseeLknQCOKOd_13polars_python", scope: !1950, file: !1949, line: 266, type: !10, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160715 = distinct !DILocation(line: 461, column: 56, scope: !160700, inlinedAt: !160701)
!160716 = !DILocation(line: 929, column: 22, scope: !160717, inlinedAt: !160718)
!160717 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python", scope: !9368, file: !16683, line: 915, type: !10, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160718 = distinct !DILocation(line: 513, column: 9, scope: !160719, inlinedAt: !160720)
!160719 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE7replaceCseeLknQCOKOd_13polars_python", scope: !21810, file: !17063, line: 510, type: !10, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160720 = distinct !DILocation(line: 675, column: 14, scope: !160721, inlinedAt: !160722)
!160721 = distinct !DISubprogram(name: "take<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE4takeCseeLknQCOKOd_13polars_python", scope: !21810, file: !17063, line: 671, type: !10, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160722 = distinct !DILocation(line: 53, column: 41, scope: !160723, inlinedAt: !160724)
!160723 = distinct !DISubprogram(name: "{closure#1}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<polars_python::timeout::TimeoutRequest>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0uEs_0B1E_", scope: !122398, file: !122397, line: 53, type: !30, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160724 = distinct !DILocation(line: 462, column: 12, scope: !160725, inlinedAt: !160701)
!160725 = distinct !DILexicalBlock(scope: !160700, file: !21802, line: 461, column: 9)
!160726 = !DILocation(line: 930, column: 49, scope: !160727, inlinedAt: !160718)
!160727 = distinct !DILexicalBlock(scope: !160717, file: !16683, line: 929, column: 9)
!160728 = !DILocation(line: 53, column: 36, scope: !160723, inlinedAt: !160724)
!160729 = !DILocation(line: 53, column: 30, scope: !160723, inlinedAt: !160724)
!160730 = !DILocation(line: 54, column: 28, scope: !160723, inlinedAt: !160724)
!160731 = !DILocation(line: 54, column: 25, scope: !160723, inlinedAt: !160724)
!160732 = !DILocation(line: 1015, column: 18, scope: !160733, inlinedAt: !160734)
!160733 = distinct !DISubprogram(name: "unwrap<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtBO_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0E6unwrapB1K_", scope: !43, file: !42, line: 1013, type: !10, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160734 = distinct !DILocation(line: 48, column: 30, scope: !160735, inlinedAt: !160736)
!160735 = distinct !DISubprogram(name: "{closure#0}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<polars_python::timeout::TimeoutRequest>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0uE0B1E_", scope: !122398, file: !122397, line: 47, type: !10, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160736 = distinct !DILocation(line: 54, column: 25, scope: !160723, inlinedAt: !160724)
!160737 = !DILocation(line: 49, column: 13, scope: !160738, inlinedAt: !160736)
!160738 = distinct !DILexicalBlock(scope: !160735, file: !122397, line: 48, column: 13)
!160739 = !{!160740}
!160740 = distinct !{!160740, !160741, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python: argument 0"}
!160741 = distinct !{!160741, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python"}
!160742 = !DILocation(line: 54, column: 42, scope: !160723, inlinedAt: !160724)
!160743 = !{!160744}
!160744 = distinct !{!160744, !160745, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python: argument 0"}
!160745 = distinct !{!160745, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python"}
!160746 = !DILocation(line: 810, column: 1, scope: !122427, inlinedAt: !160747)
!160747 = distinct !DILocation(line: 54, column: 42, scope: !160723, inlinedAt: !160724)
!160748 = !{!160749}
!160749 = distinct !{!160749, !160750, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!160750 = distinct !{!160750, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!160751 = !DILocation(line: 810, column: 1, scope: !122433, inlinedAt: !160752)
!160752 = distinct !DILocation(line: 810, column: 1, scope: !122427, inlinedAt: !160747)
!160753 = !DILocation(line: 444, column: 20, scope: !122436, inlinedAt: !160754)
!160754 = distinct !DILocation(line: 2110, column: 27, scope: !122438, inlinedAt: !160755)
!160755 = distinct !DILocation(line: 2814, column: 17, scope: !122440, inlinedAt: !160756)
!160756 = distinct !DILocation(line: 810, column: 1, scope: !122433, inlinedAt: !160752)
!160757 = !{!160749, !160744, !160740}
!160758 = !DILocation(line: 3956, column: 24, scope: !122444, inlinedAt: !160759)
!160759 = distinct !DILocation(line: 3193, column: 26, scope: !122446, inlinedAt: !160760)
!160760 = distinct !DILocation(line: 2814, column: 32, scope: !122440, inlinedAt: !160756)
!160761 = !{!160749, !160744, !160740, !160692, !160504, !160508}
!160762 = !DILocation(line: 2814, column: 12, scope: !122440, inlinedAt: !160756)
!160763 = !DILocation(line: 4387, column: 24, scope: !22474, inlinedAt: !160764)
!160764 = distinct !DILocation(line: 64, column: 9, scope: !122440, inlinedAt: !160756)
!160765 = !DILocation(line: 2857, column: 18, scope: !122440, inlinedAt: !160756)
!160766 = !{!160767}
!160767 = distinct !{!160767, !160768, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python: argument 0"}
!160768 = distinct !{!160768, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python"}
!160769 = !{!160770}
!160770 = distinct !{!160770, !160771, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python: argument 0"}
!160771 = distinct !{!160771, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python"}
!160772 = !DILocation(line: 810, column: 1, scope: !122427, inlinedAt: !160773)
!160773 = distinct !DILocation(line: 54, column: 42, scope: !160723, inlinedAt: !160724)
!160774 = !{!160775}
!160775 = distinct !{!160775, !160776, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!160776 = distinct !{!160776, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!160777 = !DILocation(line: 810, column: 1, scope: !122433, inlinedAt: !160778)
!160778 = distinct !DILocation(line: 810, column: 1, scope: !122427, inlinedAt: !160773)
!160779 = !DILocation(line: 444, column: 20, scope: !122436, inlinedAt: !160780)
!160780 = distinct !DILocation(line: 2110, column: 27, scope: !122438, inlinedAt: !160781)
!160781 = distinct !DILocation(line: 2814, column: 17, scope: !122440, inlinedAt: !160782)
!160782 = distinct !DILocation(line: 810, column: 1, scope: !122433, inlinedAt: !160778)
!160783 = !{!160775, !160770, !160767}
!160784 = !DILocation(line: 3956, column: 24, scope: !122444, inlinedAt: !160785)
!160785 = distinct !DILocation(line: 3193, column: 26, scope: !122446, inlinedAt: !160786)
!160786 = distinct !DILocation(line: 2814, column: 32, scope: !122440, inlinedAt: !160782)
!160787 = !{!160775, !160770, !160767, !160692, !160504, !160508}
!160788 = !DILocation(line: 2814, column: 12, scope: !122440, inlinedAt: !160782)
!160789 = !DILocation(line: 4387, column: 24, scope: !22474, inlinedAt: !160790)
!160790 = distinct !DILocation(line: 64, column: 9, scope: !122440, inlinedAt: !160782)
!160791 = !DILocation(line: 2857, column: 18, scope: !122440, inlinedAt: !160782)
!160792 = !DILocation(line: 53, column: 23, scope: !160723, inlinedAt: !160724)
!160793 = !DILocation(line: 55, column: 22, scope: !160723, inlinedAt: !160724)
!160794 = !DILocation(line: 2447, column: 9, scope: !160795, inlinedAt: !160796)
!160795 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCseeLknQCOKOd_13polars_python", scope: !17064, file: !17063, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160796 = distinct !DILocation(line: 3615, column: 24, scope: !160797, inlinedAt: !160798)
!160797 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !17069, file: !17068, line: 3614, type: !10, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160798 = distinct !DILocation(line: 2898, column: 44, scope: !160799, inlinedAt: !160800)
!160799 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !17069, file: !17068, line: 2896, type: !10, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160800 = distinct !DILocation(line: 81, column: 27, scope: !160801, inlinedAt: !160802)
!160801 = distinct !DISubprogram(name: "reset", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context5reset", scope: !127747, file: !122397, line: 80, type: !10, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160802 = distinct !DILocation(line: 56, column: 24, scope: !160803, inlinedAt: !160724)
!160803 = distinct !DILexicalBlock(scope: !160723, file: !122397, line: 55, column: 17)
!160804 = !DILocation(line: 3890, column: 24, scope: !149334, inlinedAt: !160805)
!160805 = distinct !DILocation(line: 2898, column: 26, scope: !160799, inlinedAt: !160800)
!160806 = !DILocation(line: 2447, column: 9, scope: !160807, inlinedAt: !160808)
!160807 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut ()>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OuEE3getCseeLknQCOKOd_13polars_python", scope: !17064, file: !17063, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160808 = distinct !DILocation(line: 2500, column: 16, scope: !160809, inlinedAt: !160810)
!160809 = distinct !DISubprogram(name: "as_ptr<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE6as_ptrCseeLknQCOKOd_13polars_python", scope: !17069, file: !17068, line: 2499, type: !10, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160810 = distinct !DILocation(line: 1763, column: 31, scope: !160811, inlinedAt: !160812)
!160811 = distinct !DISubprogram(name: "store<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE5storeCseeLknQCOKOd_13polars_python", scope: !17069, file: !17068, line: 1760, type: !10, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160812 = distinct !DILocation(line: 82, column: 27, scope: !160801, inlinedAt: !160802)
!160813 = !DILocation(line: 3890, column: 24, scope: !138168, inlinedAt: !160814)
!160814 = distinct !DILocation(line: 1763, column: 13, scope: !160811, inlinedAt: !160812)
!160815 = !DILocation(line: 57, column: 31, scope: !160803, inlinedAt: !160724)
!160816 = !DILocation(line: 1015, column: 18, scope: !160733, inlinedAt: !160817)
!160817 = distinct !DILocation(line: 48, column: 30, scope: !160818, inlinedAt: !160819)
!160818 = !DILexicalBlockFile(scope: !160735, file: !122397, discriminator: 2)
!160819 = distinct !DILocation(line: 57, column: 31, scope: !160803, inlinedAt: !160724)
!160820 = !DILocation(line: 49, column: 13, scope: !160821, inlinedAt: !160819)
!160821 = distinct !DILexicalBlock(scope: !160735, file: !122397, line: 48, column: 13)
!160822 = !DILocation(line: 437, column: 9, scope: !160823, inlinedAt: !160824)
!160823 = distinct !DISubprogram(name: "set<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE3setCseeLknQCOKOd_13polars_python", scope: !21810, file: !17063, line: 433, type: !10, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!160824 = distinct !DILocation(line: 58, column: 26, scope: !160825, inlinedAt: !160724)
!160825 = distinct !DILexicalBlock(scope: !160803, file: !122397, line: 57, column: 21)
!160826 = !DILocation(line: 929, column: 22, scope: !160717, inlinedAt: !160827)
!160827 = distinct !DILocation(line: 513, column: 9, scope: !160828, inlinedAt: !160829)
!160828 = !DILexicalBlockFile(scope: !160719, file: !17063, discriminator: 2)
!160829 = distinct !DILocation(line: 437, column: 14, scope: !160823, inlinedAt: !160824)
!160830 = !DILocation(line: 930, column: 49, scope: !160831, inlinedAt: !160827)
!160831 = distinct !DILexicalBlock(scope: !160717, file: !16683, line: 929, column: 9)
!160832 = !DILocation(line: 810, column: 1, scope: !149369, inlinedAt: !160833)
!160833 = distinct !DILocation(line: 437, column: 26, scope: !160823, inlinedAt: !160824)
!160834 = !DILocation(line: 3956, column: 24, scope: !122444, inlinedAt: !160835)
!160835 = distinct !DILocation(line: 3193, column: 26, scope: !122446, inlinedAt: !160836)
!160836 = distinct !DILocation(line: 2814, column: 32, scope: !122440, inlinedAt: !160837)
!160837 = distinct !DILocation(line: 810, column: 1, scope: !122433, inlinedAt: !160838)
!160838 = distinct !DILocation(line: 810, column: 1, scope: !122427, inlinedAt: !160839)
!160839 = distinct !DILocation(line: 810, column: 1, scope: !149369, inlinedAt: !160833)
!160840 = !{!160841, !160843, !160845, !160847, !160692, !160504, !160508}
!160841 = distinct !{!160841, !160842, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!160842 = distinct !{!160842, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!160843 = distinct !{!160843, !160844, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python: argument 0"}
!160844 = distinct !{!160844, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python"}
!160845 = distinct !{!160845, !160846, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python: argument 0"}
!160846 = distinct !{!160846, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python"}
!160847 = distinct !{!160847, !160848, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python: argument 0"}
!160848 = distinct !{!160848, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python"}
!160849 = !DILocation(line: 2814, column: 12, scope: !122440, inlinedAt: !160837)
!160850 = !DILocation(line: 4387, column: 24, scope: !22474, inlinedAt: !160851)
!160851 = distinct !DILocation(line: 64, column: 9, scope: !122440, inlinedAt: !160837)
!160852 = !DILocation(line: 2857, column: 18, scope: !122440, inlinedAt: !160837)
!160853 = !DILocation(line: 437, column: 26, scope: !160823, inlinedAt: !160824)
!160854 = !DILocation(line: 60, column: 17, scope: !160723, inlinedAt: !160724)
!160855 = !DILocation(line: 61, column: 13, scope: !160723, inlinedAt: !160724)
!160856 = !DILocation(line: 3956, column: 24, scope: !122444, inlinedAt: !160857)
end_hunk_2
begin_hunk_3_@llvm.umin.i32
!218245 = !DILocation(line: 3615, column: 24, scope: !218246, inlinedAt: !218247)
!218246 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !17069, file: !17068, line: 3614, type: !10, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218247 = !DILocation(line: 3295, column: 41, scope: !218248, inlinedAt: !218249)
!218248 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !17069, file: !17068, line: 3293, type: !10, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218249 = !DILocation(line: 452, column: 30, scope: !218241)
!218250 = !DILocation(line: 4135, column: 23, scope: !218251, inlinedAt: !218252)
!218251 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECseeLknQCOKOd_13polars_python", scope: !17070, file: !17068, line: 4131, type: !10, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218252 = !DILocation(line: 3295, column: 26, scope: !218248, inlinedAt: !218249)
!218253 = !DILocation(line: 454, column: 19, scope: !218254)
!218254 = distinct !DILexicalBlock(scope: !218241, file: !128781, line: 452, column: 9)
!218255 = !DILocation(line: 454, column: 12, scope: !218254)
!218256 = !DILocation(line: 455, column: 13, scope: !218254)
!218257 = !DILocation(line: 455, column: 28, scope: !218254)
!218258 = !DILocation(line: 454, column: 9, scope: !218254)
!218259 = !DILocation(line: 460, column: 6, scope: !218241)
!218260 = distinct !DISubprogram(name: "disconnect_receivers<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE20disconnect_receiversB10_", scope: !128798, file: !128781, line: 470, type: !10, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218261 = !DILocation(line: 471, column: 39, scope: !218260)
!218262 = !DILocation(line: 2447, column: 9, scope: !218263, inlinedAt: !218264)
!218263 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCseeLknQCOKOd_13polars_python", scope: !17064, file: !17063, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218264 = !DILocation(line: 3615, column: 24, scope: !218265, inlinedAt: !218266)
!218265 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !17069, file: !17068, line: 3614, type: !10, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218266 = !DILocation(line: 3295, column: 41, scope: !218267, inlinedAt: !218268)
!218267 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !17069, file: !17068, line: 3293, type: !10, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218268 = !DILocation(line: 471, column: 30, scope: !218260)
!218269 = !DILocation(line: 4135, column: 23, scope: !218270, inlinedAt: !218271)
!218270 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECseeLknQCOKOd_13polars_python", scope: !17070, file: !17068, line: 4131, type: !10, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218271 = !DILocation(line: 3295, column: 26, scope: !218267, inlinedAt: !218268)
!218272 = !DILocation(line: 472, column: 38, scope: !218273)
!218273 = distinct !DILexicalBlock(scope: !218260, file: !128781, line: 471, column: 9)
!218274 = !DILocation(line: 472, column: 31, scope: !218273)
!218275 = !DILocation(line: 473, column: 13, scope: !218273)
!218276 = !DILocation(line: 473, column: 26, scope: !218273)
!218277 = !DILocation(line: 502, column: 28, scope: !218278, inlinedAt: !218280)
!218278 = distinct !DILexicalBlock(scope: !218279, file: !128781, line: 501, column: 9)
!218279 = distinct !DISubprogram(name: "discard_all_messages<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE20discard_all_messagesB10_", scope: !128798, file: !128781, line: 495, type: !10, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218280 = distinct !DILocation(line: 479, column: 23, scope: !218281)
!218281 = distinct !DILexicalBlock(scope: !218273, file: !128781, line: 472, column: 9)
!218282 = !DILocation(line: 472, column: 28, scope: !218273)
!218283 = !DILocation(line: 3904, column: 24, scope: !17380, inlinedAt: !218284)
!218284 = distinct !DILocation(line: 2870, column: 26, scope: !218285, inlinedAt: !218286)
!218285 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !17069, file: !17068, line: 2868, type: !10, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218286 = distinct !DILocation(line: 501, column: 34, scope: !218279, inlinedAt: !218280)
!218287 = !DILocation(line: 502, column: 27, scope: !218278, inlinedAt: !218280)
!218288 = !DILocation(line: 502, column: 20, scope: !218278, inlinedAt: !218280)
!218289 = !DILocation(line: 505, column: 9, scope: !218290, inlinedAt: !218280)
!218290 = distinct !DILexicalBlock(scope: !218291, file: !128781, line: 504, column: 9)
!218291 = distinct !DILexicalBlock(scope: !218278, file: !128781, line: 502, column: 9)
!218292 = !DILocation(line: 507, column: 33, scope: !218290, inlinedAt: !218280)
!218293 = !DILocation(line: 105, column: 9, scope: !218294, inlinedAt: !218295)
!218294 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff3new", scope: !127887, file: !127886, line: 104, type: !10, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218295 = distinct !DILocation(line: 504, column: 23, scope: !218291, inlinedAt: !218280)
!218296 = !DILocation(line: 0, scope: !218279, inlinedAt: !218280)
!218297 = !DILocation(line: 507, column: 32, scope: !218290, inlinedAt: !218280)
!218298 = !DILocation(line: 507, column: 25, scope: !218290, inlinedAt: !218280)
!218299 = !DILocation(line: 508, column: 32, scope: !218300, inlinedAt: !218280)
!218300 = distinct !DILexicalBlock(scope: !218290, file: !128781, line: 507, column: 13)
!218301 = !DILocation(line: 508, column: 30, scope: !218300, inlinedAt: !218280)
!218302 = !DILocation(line: 508, column: 23, scope: !218300, inlinedAt: !218280)
!218303 = !DILocation(line: 512, column: 33, scope: !218304, inlinedAt: !218280)
!218304 = distinct !DILexicalBlock(scope: !218300, file: !128781, line: 508, column: 13)
!218305 = !DILocation(line: 252, column: 39, scope: !218306, inlinedAt: !218307)
!218306 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE13get_uncheckedB1O_", scope: !147, file: !146, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218307 = distinct !DILocation(line: 646, column: 26, scope: !218308, inlinedAt: !218309)
!218308 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<polars_python::timeout::TimeoutRequest>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE13get_uncheckedjEB1l_", scope: !115, file: !114, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218309 = distinct !DILocation(line: 512, column: 45, scope: !218304, inlinedAt: !218280)
!218310 = !DILocation(line: 252, column: 13, scope: !218306, inlinedAt: !218307)
!218311 = !DILocation(line: 253, column: 13, scope: !218306, inlinedAt: !218307)
!218312 = !DILocation(line: 2447, column: 9, scope: !218313, inlinedAt: !218314)
!218313 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCseeLknQCOKOd_13polars_python", scope: !17064, file: !17063, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218314 = distinct !DILocation(line: 3615, column: 24, scope: !218315, inlinedAt: !218317)
!218315 = !DILexicalBlockFile(scope: !218316, file: !17068, discriminator: 4)
!218316 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !17069, file: !17068, line: 3614, type: !10, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218317 = distinct !DILocation(line: 2870, column: 43, scope: !218318, inlinedAt: !218319)
!218318 = !DILexicalBlockFile(scope: !218285, file: !17068, discriminator: 4)
!218319 = distinct !DILocation(line: 513, column: 36, scope: !218320, inlinedAt: !218280)
!218320 = distinct !DILexicalBlock(scope: !218304, file: !128781, line: 512, column: 13)
!218321 = !DILocation(line: 3905, column: 24, scope: !17380, inlinedAt: !218322)
!218322 = distinct !DILocation(line: 2870, column: 26, scope: !218285, inlinedAt: !218319)
!218323 = !DILocation(line: 516, column: 16, scope: !218324, inlinedAt: !218280)
!218324 = distinct !DILexicalBlock(scope: !218320, file: !128781, line: 513, column: 13)
!218325 = !DILocation(line: 531, column: 23, scope: !218324, inlinedAt: !218280)
!218326 = !DILocation(line: 517, column: 27, scope: !218324, inlinedAt: !218280)
!218327 = !DILocation(line: 517, column: 39, scope: !218324, inlinedAt: !218280)
!218328 = !DILocation(line: 127, column: 12, scope: !127885, inlinedAt: !218329)
!218329 = distinct !DILocation(line: 536, column: 25, scope: !218324, inlinedAt: !218280)
!218330 = !DILocation(line: 132, column: 13, scope: !127885, inlinedAt: !218329)
!218331 = !DILocation(line: 1917, column: 50, scope: !127892, inlinedAt: !218332)
!218332 = distinct !DILocation(line: 781, column: 12, scope: !127894, inlinedAt: !218333)
!218333 = distinct !DILocation(line: 866, column: 14, scope: !127896, inlinedAt: !218334)
!218334 = distinct !DILocation(line: 128, column: 22, scope: !127898, inlinedAt: !218329)
!218335 = !DILocation(line: 781, column: 12, scope: !127894, inlinedAt: !218333)
!218336 = !DILocation(line: 3558, column: 28, scope: !127902, inlinedAt: !218337)
!218337 = distinct !DILocation(line: 128, column: 41, scope: !127885, inlinedAt: !218329)
!218338 = !DILocation(line: 25, column: 14, scope: !127907, inlinedAt: !218339)
!218339 = distinct !DILocation(line: 287, column: 13, scope: !127909, inlinedAt: !218340)
!218340 = distinct !DILocation(line: 129, column: 17, scope: !127899, inlinedAt: !218329)
!218341 = distinct !{!218341, !22214}
!218342 = !DILocation(line: 135, column: 23, scope: !127885, inlinedAt: !218329)
!218343 = !DILocation(line: 516, column: 13, scope: !218324, inlinedAt: !218280)
!218344 = !DILocation(line: 0, scope: !218291, inlinedAt: !218280)
!218345 = !DILocation(line: 524, column: 38, scope: !218324, inlinedAt: !218280)
!218346 = !DILocation(line: 2511, column: 13, scope: !218347, inlinedAt: !218348)
!218347 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !17191, file: !17149, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218348 = distinct !DILocation(line: 524, column: 25, scope: !218324, inlinedAt: !218280)
!218349 = !DILocation(line: 517, column: 24, scope: !218324, inlinedAt: !218280)
!218350 = !DILocation(line: 0, scope: !218324, inlinedAt: !218280)
!218351 = !DILocation(line: 810, column: 1, scope: !22538, inlinedAt: !218352)
!218352 = distinct !DILocation(line: 832, column: 18, scope: !218353, inlinedAt: !218354)
!218353 = distinct !DISubprogram(name: "assume_init_drop<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE16assume_init_dropB17_", scope: !26731, file: !26730, line: 825, type: !10, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218354 = distinct !DILocation(line: 528, column: 39, scope: !218324, inlinedAt: !218280)
!218355 = !{!218356}
!218356 = distinct !{!218356, !218357, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_: argument 0"}
!218357 = distinct !{!218357, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_"}
!218358 = !DILocation(line: 810, column: 1, scope: !22543, inlinedAt: !218359)
!218359 = distinct !DILocation(line: 810, column: 1, scope: !22545, inlinedAt: !218360)
!218360 = distinct !DILocation(line: 810, column: 1, scope: !22547, inlinedAt: !218361)
!218361 = distinct !DILocation(line: 810, column: 1, scope: !22538, inlinedAt: !218352)
!218362 = !DILocation(line: 810, column: 1, scope: !22550, inlinedAt: !218363)
!218363 = distinct !DILocation(line: 810, column: 1, scope: !22543, inlinedAt: !218359)
!218364 = !DILocation(line: 810, column: 1, scope: !22550, inlinedAt: !218365)
!218365 = distinct !DILocation(line: 810, column: 1, scope: !22543, inlinedAt: !218359)
!218366 = !DILocation(line: 810, column: 1, scope: !22547, inlinedAt: !218361)
!218367 = !DILocation(line: 481, column: 6, scope: !218260)
!218368 = distinct !DISubprogram(name: "recv<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvB10_", scope: !128798, file: !128781, line: 375, type: !10, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218369 = !DILocation(line: 376, column: 26, scope: !218368)
!218370 = !DILocation(line: 5, column: 17, scope: !218371, inlinedAt: !218369)
!218371 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs2_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !148874, file: !127612, line: 5, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218372 = !DILocation(line: 377, column: 9, scope: !218373)
!218373 = distinct !DILexicalBlock(scope: !218368, file: !128781, line: 376, column: 9)
!218374 = !{!218375}
!218375 = distinct !{!218375, !218376, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_: argument 0"}
!218376 = distinct !{!218376, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_"}
!218377 = !DILocation(line: 379, column: 21, scope: !218373)
!218378 = !DILocation(line: 219, column: 9, scope: !218379, inlinedAt: !218382)
!218379 = distinct !DILexicalBlock(scope: !218380, file: !128781, line: 217, column: 9)
!218380 = distinct !DILexicalBlock(scope: !218381, file: !128781, line: 216, column: 9)
!218381 = distinct !DISubprogram(name: "start_recv<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_", scope: !128798, file: !128781, line: 215, type: !10, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218382 = distinct !DILocation(line: 379, column: 21, scope: !218373)
!218383 = !DILocation(line: 0, scope: !218381, inlinedAt: !218382)
!218384 = !DILocation(line: 3904, column: 24, scope: !17380, inlinedAt: !218385)
!218385 = !DILocation(line: 2870, column: 26, scope: !218386, inlinedAt: !218387)
!218386 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !17069, file: !17068, line: 2868, type: !10, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218387 = !DILocation(line: 0, scope: !218380, inlinedAt: !218382)
!218388 = !DILocation(line: 221, column: 33, scope: !218379, inlinedAt: !218382)
!218389 = !DILocation(line: 221, column: 32, scope: !218379, inlinedAt: !218382)
!218390 = !DILocation(line: 221, column: 25, scope: !218379, inlinedAt: !218382)
!218391 = !DILocation(line: 222, column: 32, scope: !218392, inlinedAt: !218382)
!218392 = distinct !DILexicalBlock(scope: !218379, file: !128781, line: 221, column: 13)
!218393 = !DILocation(line: 222, column: 30, scope: !218392, inlinedAt: !218382)
!218394 = !DILocation(line: 222, column: 23, scope: !218392, inlinedAt: !218382)
!218395 = !DILocation(line: 226, column: 33, scope: !218396, inlinedAt: !218382)
!218396 = distinct !DILexicalBlock(scope: !218392, file: !128781, line: 222, column: 13)
!218397 = !DILocation(line: 252, column: 39, scope: !218398, inlinedAt: !218399)
!218398 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEE13get_uncheckedB1O_", scope: !147, file: !146, line: 239, type: !10, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218399 = distinct !DILocation(line: 646, column: 26, scope: !218400, inlinedAt: !218401)
!218400 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<polars_python::timeout::TimeoutRequest>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE13get_uncheckedjEB1l_", scope: !115, file: !114, line: 639, type: !10, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218401 = distinct !DILocation(line: 226, column: 45, scope: !218396, inlinedAt: !218382)
!218402 = !DILocation(line: 252, column: 13, scope: !218398, inlinedAt: !218399)
!218403 = !DILocation(line: 253, column: 13, scope: !218398, inlinedAt: !218399)
!218404 = !DILocation(line: 2447, column: 9, scope: !218405, inlinedAt: !218406)
!218405 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCseeLknQCOKOd_13polars_python", scope: !17064, file: !17063, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218406 = distinct !DILocation(line: 3615, column: 24, scope: !218407, inlinedAt: !218409)
!218407 = !DILexicalBlockFile(scope: !218408, file: !17068, discriminator: 2)
!218408 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !17069, file: !17068, line: 3614, type: !10, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218409 = distinct !DILocation(line: 2870, column: 43, scope: !218410, inlinedAt: !218411)
!218410 = !DILexicalBlockFile(scope: !218386, file: !17068, discriminator: 2)
!218411 = distinct !DILocation(line: 227, column: 36, scope: !218412, inlinedAt: !218382)
!218412 = distinct !DILexicalBlock(scope: !218396, file: !128781, line: 226, column: 13)
!218413 = !DILocation(line: 3905, column: 24, scope: !17380, inlinedAt: !218414)
!218414 = distinct !DILocation(line: 2870, column: 26, scope: !218386, inlinedAt: !218411)
!218415 = !DILocation(line: 230, column: 16, scope: !218416, inlinedAt: !218382)
!218416 = distinct !DILexicalBlock(scope: !218412, file: !128781, line: 227, column: 13)
!218417 = !DILocation(line: 259, column: 23, scope: !218416, inlinedAt: !218382)
!218418 = !DILocation(line: 231, column: 30, scope: !218416, inlinedAt: !218382)
!218419 = !DILocation(line: 231, column: 42, scope: !218416, inlinedAt: !218382)
!218420 = !DILocation(line: 127, column: 12, scope: !127885, inlinedAt: !218421)
!218421 = distinct !DILocation(line: 281, column: 25, scope: !218416, inlinedAt: !218382)
!218422 = !DILocation(line: 132, column: 13, scope: !127885, inlinedAt: !218421)
!218423 = !DILocation(line: 1917, column: 50, scope: !127892, inlinedAt: !218424)
!218424 = distinct !DILocation(line: 781, column: 12, scope: !127894, inlinedAt: !218425)
!218425 = distinct !DILocation(line: 866, column: 14, scope: !127896, inlinedAt: !218426)
!218426 = distinct !DILocation(line: 128, column: 22, scope: !127898, inlinedAt: !218421)
!218427 = !DILocation(line: 781, column: 12, scope: !127894, inlinedAt: !218425)
!218428 = !DILocation(line: 3558, column: 28, scope: !127902, inlinedAt: !218429)
!218429 = distinct !DILocation(line: 128, column: 41, scope: !127885, inlinedAt: !218421)
!218430 = !DILocation(line: 25, column: 14, scope: !127907, inlinedAt: !218431)
!218431 = distinct !DILocation(line: 287, column: 13, scope: !127909, inlinedAt: !218432)
!218432 = distinct !DILocation(line: 129, column: 17, scope: !127899, inlinedAt: !218421)
!218433 = distinct !{!218433, !22214}
!218434 = !DILocation(line: 135, column: 23, scope: !127885, inlinedAt: !218421)
!218435 = !DILocation(line: 259, column: 20, scope: !218416, inlinedAt: !218382)
!218436 = !DILocation(line: 4390, column: 23, scope: !22474, inlinedAt: !218437)
!218437 = distinct !DILocation(line: 260, column: 17, scope: !218416, inlinedAt: !218382)
!218438 = !DILocation(line: 3904, column: 24, scope: !17380, inlinedAt: !218439)
!218439 = distinct !DILocation(line: 2870, column: 26, scope: !218386, inlinedAt: !218440)
!218440 = distinct !DILocation(line: 261, column: 38, scope: !218416, inlinedAt: !218382)
!218441 = !DILocation(line: 264, column: 29, scope: !218442, inlinedAt: !218382)
!218442 = distinct !DILexicalBlock(scope: !218416, file: !128781, line: 261, column: 17)
!218443 = !DILocation(line: 264, column: 28, scope: !218442, inlinedAt: !218382)
!218444 = !DILocation(line: 264, column: 20, scope: !218442, inlinedAt: !218382)
!218445 = !DILocation(line: 1917, column: 50, scope: !160597, inlinedAt: !218446)
!218446 = distinct !DILocation(line: 781, column: 12, scope: !160599, inlinedAt: !218447)
!218447 = distinct !DILocation(line: 866, column: 14, scope: !160601, inlinedAt: !218448)
!218448 = distinct !DILocation(line: 115, column: 18, scope: !160603, inlinedAt: !218449)
!218449 = distinct !DILocation(line: 277, column: 25, scope: !218442, inlinedAt: !218382)
!218450 = !DILocation(line: 781, column: 12, scope: !160599, inlinedAt: !218447)
!218451 = !DILocation(line: 1077, column: 12, scope: !160610, inlinedAt: !218452)
!218452 = distinct !DILocation(line: 114, column: 36, scope: !160606, inlinedAt: !218449)
!218453 = !DILocation(line: 3558, column: 28, scope: !127902, inlinedAt: !218454)
!218454 = distinct !DILocation(line: 115, column: 26, scope: !160605, inlinedAt: !218449)
!218455 = !DILocation(line: 25, column: 14, scope: !160615, inlinedAt: !218456)
!218456 = distinct !DILocation(line: 287, column: 13, scope: !160617, inlinedAt: !218457)
!218457 = distinct !DILocation(line: 116, column: 13, scope: !160604, inlinedAt: !218449)
!218458 = distinct !{!218458, !22214}
!218459 = !DILocation(line: 119, column: 23, scope: !160605, inlinedAt: !218449)
!218460 = !DILocation(line: 555, column: 18, scope: !160622, inlinedAt: !218461)
!218461 = distinct !DILocation(line: 119, column: 33, scope: !160605, inlinedAt: !218449)
!218462 = !DILocation(line: 266, column: 24, scope: !218442, inlinedAt: !218382)
!218463 = !DILocation(line: 238, column: 38, scope: !218416, inlinedAt: !218382)
!218464 = !DILocation(line: 2511, column: 13, scope: !218465, inlinedAt: !218466)
!218465 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !17191, file: !17149, line: 2510, type: !10, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218466 = distinct !DILocation(line: 238, column: 25, scope: !218416, inlinedAt: !218382)
!218467 = !DILocation(line: 231, column: 27, scope: !218416, inlinedAt: !218382)
!218468 = !DILocation(line: 0, scope: !218416, inlinedAt: !218382)
!218469 = !DILocation(line: 4081, column: 17, scope: !17401, inlinedAt: !218470)
!218470 = distinct !DILocation(line: 3130, column: 21, scope: !218471, inlinedAt: !218472)
!218471 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !17069, file: !17068, line: 3123, type: !10, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218472 = distinct !DILocation(line: 242, column: 33, scope: !218473, inlinedAt: !218382)
!218473 = distinct !DILexicalBlock(scope: !218416, file: !128781, line: 231, column: 17)
!218474 = !DILocation(line: 0, scope: !17401, inlinedAt: !218470)
!218475 = !DILocation(line: 242, column: 17, scope: !218473, inlinedAt: !218382)
!218476 = !DILocation(line: 1917, column: 50, scope: !160597, inlinedAt: !218477)
!218477 = distinct !DILocation(line: 781, column: 12, scope: !160599, inlinedAt: !218478)
!218478 = distinct !DILocation(line: 866, column: 14, scope: !160601, inlinedAt: !218479)
!218479 = distinct !DILocation(line: 115, column: 18, scope: !160603, inlinedAt: !218480)
!218480 = distinct !DILocation(line: 255, column: 33, scope: !218473, inlinedAt: !218382)
!218481 = !DILocation(line: 781, column: 12, scope: !160599, inlinedAt: !218478)
!218482 = !DILocation(line: 1077, column: 12, scope: !160610, inlinedAt: !218483)
!218483 = distinct !DILocation(line: 114, column: 36, scope: !160606, inlinedAt: !218480)
!218484 = !DILocation(line: 3558, column: 28, scope: !127902, inlinedAt: !218485)
!218485 = distinct !DILocation(line: 115, column: 26, scope: !160605, inlinedAt: !218480)
!218486 = !DILocation(line: 25, column: 14, scope: !160615, inlinedAt: !218487)
!218487 = distinct !DILocation(line: 287, column: 13, scope: !160617, inlinedAt: !218488)
!218488 = distinct !DILocation(line: 116, column: 13, scope: !160604, inlinedAt: !218480)
!218489 = distinct !{!218489, !22214}
!218490 = !DILocation(line: 119, column: 23, scope: !160605, inlinedAt: !218480)
!218491 = !DILocation(line: 555, column: 18, scope: !160622, inlinedAt: !218492)
!218492 = distinct !DILocation(line: 119, column: 33, scope: !160605, inlinedAt: !218480)
!218493 = !DILocation(line: 384, column: 30, scope: !218494)
!218494 = distinct !DILexicalBlock(scope: !218373, file: !128781, line: 384, column: 39)
!218495 = !DILocation(line: 384, column: 20, scope: !218494)
!218496 = !DILocation(line: 250, column: 25, scope: !218473, inlinedAt: !218382)
!218497 = !DILocation(line: 251, column: 63, scope: !218473, inlinedAt: !218382)
!218498 = !DILocation(line: 2511, column: 13, scope: !218465, inlinedAt: !218499)
!218499 = distinct !DILocation(line: 251, column: 50, scope: !218473, inlinedAt: !218382)
!218500 = !DILocation(line: 251, column: 25, scope: !218473, inlinedAt: !218382)
!218501 = !DILocation(line: 295, column: 13, scope: !218502, inlinedAt: !218503)
!218502 = distinct !DISubprogram(name: "read<polars_python::timeout::TimeoutRequest>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_", scope: !128798, file: !128781, line: 288, type: !30, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218503 = distinct !DILocation(line: 380, column: 41, scope: !218373)
!218504 = !{!218505}
!218505 = distinct !{!218505, !218506, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_: argument 0"}
!218506 = distinct !{!218506, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_"}
!218507 = !DILocation(line: 298, column: 17, scope: !218508, inlinedAt: !218503)
!218508 = distinct !DILexicalBlock(scope: !218502, file: !128781, line: 296, column: 13)
!218509 = !DILocation(line: 1721, column: 9, scope: !218510, inlinedAt: !218511)
!218510 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<polars_python::timeout::TimeoutRequest>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEB1f_", scope: !1946, file: !1945, line: 1682, type: !10, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218511 = distinct !DILocation(line: 1263, column: 18, scope: !218512, inlinedAt: !218513)
!218512 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB1l_", scope: !2065, file: !2064, line: 1258, type: !10, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218513 = distinct !DILocation(line: 298, column: 38, scope: !218508, inlinedAt: !218503)
!218514 = !DILocation(line: 3890, column: 24, scope: !149334, inlinedAt: !218515)
!218515 = distinct !DILocation(line: 2898, column: 26, scope: !218516, inlinedAt: !218517)
!218516 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !17069, file: !17068, line: 2896, type: !10, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218517 = distinct !DILocation(line: 299, column: 24, scope: !218518, inlinedAt: !218503)
!218518 = distinct !DILexicalBlock(scope: !218508, file: !128781, line: 298, column: 13)
!218519 = !DILocation(line: 300, column: 13, scope: !218518, inlinedAt: !218503)
!218520 = !DILocation(line: 301, column: 9, scope: !218508, inlinedAt: !218503)
!218521 = !DILocation(line: 304, column: 9, scope: !218522, inlinedAt: !218503)
!218522 = distinct !DILexicalBlock(scope: !218502, file: !128781, line: 295, column: 9)
!218523 = !DILocation(line: 304, column: 22, scope: !218522, inlinedAt: !218503)
!218524 = !DILocation(line: 306, column: 5, scope: !218502, inlinedAt: !218503)
!218525 = !DILocation(line: 288, column: 5, scope: !218502, inlinedAt: !218503)
!218526 = !DILocation(line: 0, scope: !218373)
!218527 = !DILocation(line: 305, column: 12, scope: !218522, inlinedAt: !218503)
!218528 = !DILocation(line: 966, column: 15, scope: !218529, inlinedAt: !218530)
!218529 = distinct !DISubprogram(name: "map_err<polars_python::timeout::TimeoutRequest, (), std::sync::mpsc::RecvTimeoutError, std::sync::mpmc::array::{impl#1}::recv::{closure_env#0}<polars_python::timeout::TimeoutRequest>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestuE7map_errNtNtNtCsh8eZTKRCwoO_3std4sync4mpsc16RecvTimeoutErrorNCNvMs_NtNtB1R_4mpmc5arrayINtB2K_7ChannelBI_E4recv0EBM_", scope: !4354, file: !4353, line: 962, type: !10, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218530 = !DILocation(line: 381, column: 28, scope: !218531)
!218531 = distinct !DILexicalBlock(scope: !218373, file: !128781, line: 380, column: 17)
!218532 = !DILocation(line: 966, column: 9, scope: !218529, inlinedAt: !218530)
!218533 = !DILocation(line: 384, column: 25, scope: !218494)
!218534 = !DILocation(line: 385, column: 20, scope: !218494)
!218535 = !DILocation(line: 25, column: 38, scope: !218536, inlinedAt: !218537)
!218536 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs5_NtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix4timeNtB5_8TimespecNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !127760, file: !127759, line: 25, type: !10, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218537 = !DILocation(line: 49, column: 38, scope: !218538, inlinedAt: !218539)
!218538 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std3sys4time4unixNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !127767, file: !127766, line: 49, type: !10, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218539 = !DILocation(line: 154, column: 38, scope: !218540, inlinedAt: !218541)
!218540 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsm_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !127773, file: !127772, line: 154, type: !10, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218541 = !DILocation(line: 1466, column: 14, scope: !218542, inlinedAt: !218534)
!218542 = distinct !DISubprogram(name: "ge<std::time::Instant, std::time::Instant>", linkageName: "_RNvYNtNtCsh8eZTKRCwoO_3std4time7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2geCseeLknQCOKOd_13polars_python", scope: !78534, file: !12103, line: 1465, type: !10, scopeLine: 1465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218543 = !DILocation(line: 46, column: 13, scope: !218544, inlinedAt: !218545)
!218544 = distinct !DISubprogram(name: "with<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<polars_python::timeout::TimeoutRequest>, ()>", linkageName: "_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_", scope: !127747, file: !122397, line: 37, type: !10, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218545 = distinct !DILocation(line: 390, column: 13, scope: !218373)
!218546 = !{!218547}
!218547 = distinct !{!218547, !218548, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_: argument 0"}
!218548 = distinct !{!218548, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_"}
!218549 = !DILocation(line: 46, column: 21, scope: !218544, inlinedAt: !218545)
!218550 = !DILocation(line: 555, column: 18, scope: !149232, inlinedAt: !218551)
!218551 = distinct !DILocation(line: 59, column: 42, scope: !149234, inlinedAt: !218552)
!218552 = distinct !DILocation(line: 97, column: 49, scope: !149221, inlinedAt: !218553)
!218553 = distinct !DILocation(line: 250, column: 5, scope: !149225, inlinedAt: !218554)
!218554 = distinct !DILocation(line: 461, column: 37, scope: !218555, inlinedAt: !218556)
!218555 = distinct !DISubprogram(name: "try_with<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>, std::sync::mpmc::context::{impl#0}::with::{closure_env#1}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<polars_python::timeout::TimeoutRequest>, ()>, ()>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEs_0uEB3w_", scope: !21803, file: !21802, line: 457, type: !30, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218556 = distinct !DILocation(line: 53, column: 14, scope: !218557, inlinedAt: !218545)
!218557 = distinct !DILexicalBlock(scope: !218558, file: !122397, line: 47, column: 9)
!218558 = distinct !DILexicalBlock(scope: !218544, file: !122397, line: 46, column: 9)
!218559 = !{!218560, !218562, !218564, !218547}
!218560 = distinct !{!218560, !218561, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECseeLknQCOKOd_13polars_python: argument 0"}
!218561 = distinct !{!218561, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECseeLknQCOKOd_13polars_python"}
!218562 = distinct !{!218562, !218563, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CseeLknQCOKOd_13polars_python: argument 0"}
!218563 = distinct !{!218563, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00CseeLknQCOKOd_13polars_python"}
!218564 = distinct !{!218564, !218565, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python: argument 0"}
!218565 = distinct !{!218565, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python"}
!218566 = !DILocation(line: 59, column: 16, scope: !149234, inlinedAt: !218552)
!218567 = !DILocation(line: 62, column: 27, scope: !149235, inlinedAt: !218552)
!218568 = !DILocation(line: 269, column: 12, scope: !218569, inlinedAt: !218570)
!218569 = distinct !DISubprogram(name: "as_ref<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtB6_4cell4CellINtNtB6_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE6as_refCseeLknQCOKOd_13polars_python", scope: !1950, file: !1949, line: 266, type: !10, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218570 = distinct !DILocation(line: 461, column: 56, scope: !218555, inlinedAt: !218556)
!218571 = !DILocation(line: 929, column: 22, scope: !218572, inlinedAt: !218573)
!218572 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECseeLknQCOKOd_13polars_python", scope: !9368, file: !16683, line: 915, type: !10, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218573 = distinct !DILocation(line: 513, column: 9, scope: !218574, inlinedAt: !218575)
!218574 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE7replaceCseeLknQCOKOd_13polars_python", scope: !21810, file: !17063, line: 510, type: !10, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218575 = distinct !DILocation(line: 675, column: 14, scope: !218576, inlinedAt: !218577)
!218576 = distinct !DISubprogram(name: "take<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE4takeCseeLknQCOKOd_13polars_python", scope: !21810, file: !17063, line: 671, type: !10, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218577 = distinct !DILocation(line: 53, column: 41, scope: !218578, inlinedAt: !218579)
!218578 = distinct !DISubprogram(name: "{closure#1}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<polars_python::timeout::TimeoutRequest>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEs_0B1E_", scope: !122398, file: !122397, line: 53, type: !30, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218579 = distinct !DILocation(line: 462, column: 12, scope: !218580, inlinedAt: !218556)
!218580 = distinct !DILexicalBlock(scope: !218555, file: !21802, line: 461, column: 9)
!218581 = !DILocation(line: 930, column: 49, scope: !218582, inlinedAt: !218573)
!218582 = distinct !DILexicalBlock(scope: !218572, file: !16683, line: 929, column: 9)
!218583 = !DILocation(line: 53, column: 36, scope: !218578, inlinedAt: !218579)
!218584 = !DILocation(line: 53, column: 30, scope: !218578, inlinedAt: !218579)
!218585 = !DILocation(line: 54, column: 28, scope: !218578, inlinedAt: !218579)
!218586 = !DILocation(line: 54, column: 25, scope: !218578, inlinedAt: !218579)
!218587 = !DILocation(line: 1015, column: 18, scope: !218588, inlinedAt: !218589)
!218588 = distinct !DISubprogram(name: "unwrap<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<polars_python::timeout::TimeoutRequest>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtBO_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0E6unwrapB1K_", scope: !43, file: !42, line: 1013, type: !10, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218589 = distinct !DILocation(line: 48, column: 30, scope: !218590, inlinedAt: !218591)
!218590 = distinct !DISubprogram(name: "{closure#0}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<polars_python::timeout::TimeoutRequest>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uE0B1E_", scope: !122398, file: !122397, line: 47, type: !10, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218591 = distinct !DILocation(line: 54, column: 25, scope: !218578, inlinedAt: !218579)
!218592 = !DILocation(line: 49, column: 13, scope: !218593, inlinedAt: !218591)
!218593 = distinct !DILexicalBlock(scope: !218590, file: !122397, line: 48, column: 13)
!218594 = !{!218595}
!218595 = distinct !{!218595, !218596, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python: argument 0"}
!218596 = distinct !{!218596, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python"}
!218597 = !DILocation(line: 54, column: 42, scope: !218578, inlinedAt: !218579)
!218598 = !{!218599}
!218599 = distinct !{!218599, !218600, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python: argument 0"}
!218600 = distinct !{!218600, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python"}
!218601 = !DILocation(line: 810, column: 1, scope: !122427, inlinedAt: !218602)
!218602 = distinct !DILocation(line: 54, column: 42, scope: !218578, inlinedAt: !218579)
!218603 = !{!218604}
!218604 = distinct !{!218604, !218605, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!218605 = distinct !{!218605, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!218606 = !DILocation(line: 810, column: 1, scope: !122433, inlinedAt: !218607)
!218607 = distinct !DILocation(line: 810, column: 1, scope: !122427, inlinedAt: !218602)
!218608 = !DILocation(line: 444, column: 20, scope: !122436, inlinedAt: !218609)
!218609 = distinct !DILocation(line: 2110, column: 27, scope: !122438, inlinedAt: !218610)
!218610 = distinct !DILocation(line: 2814, column: 17, scope: !122440, inlinedAt: !218611)
!218611 = distinct !DILocation(line: 810, column: 1, scope: !122433, inlinedAt: !218607)
!218612 = !{!218604, !218599, !218595}
!218613 = !DILocation(line: 3956, column: 24, scope: !122444, inlinedAt: !218614)
!218614 = distinct !DILocation(line: 3193, column: 26, scope: !122446, inlinedAt: !218615)
!218615 = distinct !DILocation(line: 2814, column: 32, scope: !122440, inlinedAt: !218611)
!218616 = !{!218604, !218599, !218595, !218547}
!218617 = !DILocation(line: 2814, column: 12, scope: !122440, inlinedAt: !218611)
!218618 = !DILocation(line: 4387, column: 24, scope: !22474, inlinedAt: !218619)
!218619 = distinct !DILocation(line: 64, column: 9, scope: !122440, inlinedAt: !218611)
!218620 = !DILocation(line: 2857, column: 18, scope: !122440, inlinedAt: !218611)
!218621 = !{!218622}
!218622 = distinct !{!218622, !218623, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python: argument 0"}
!218623 = distinct !{!218623, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python"}
!218624 = !{!218625}
!218625 = distinct !{!218625, !218626, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python: argument 0"}
!218626 = distinct !{!218626, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECseeLknQCOKOd_13polars_python"}
!218627 = !DILocation(line: 810, column: 1, scope: !122427, inlinedAt: !218628)
!218628 = distinct !DILocation(line: 54, column: 42, scope: !218578, inlinedAt: !218579)
!218629 = !{!218630}
!218630 = distinct !{!218630, !218631, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!218631 = distinct !{!218631, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!218632 = !DILocation(line: 810, column: 1, scope: !122433, inlinedAt: !218633)
!218633 = distinct !DILocation(line: 810, column: 1, scope: !122427, inlinedAt: !218628)
!218634 = !DILocation(line: 444, column: 20, scope: !122436, inlinedAt: !218635)
!218635 = distinct !DILocation(line: 2110, column: 27, scope: !122438, inlinedAt: !218636)
!218636 = distinct !DILocation(line: 2814, column: 17, scope: !122440, inlinedAt: !218637)
!218637 = distinct !DILocation(line: 810, column: 1, scope: !122433, inlinedAt: !218633)
!218638 = !{!218630, !218625, !218622}
!218639 = !DILocation(line: 3956, column: 24, scope: !122444, inlinedAt: !218640)
!218640 = distinct !DILocation(line: 3193, column: 26, scope: !122446, inlinedAt: !218641)
!218641 = distinct !DILocation(line: 2814, column: 32, scope: !122440, inlinedAt: !218637)
!218642 = !{!218630, !218625, !218622, !218547}
!218643 = !DILocation(line: 2814, column: 12, scope: !122440, inlinedAt: !218637)
!218644 = !DILocation(line: 4387, column: 24, scope: !22474, inlinedAt: !218645)
!218645 = distinct !DILocation(line: 64, column: 9, scope: !122440, inlinedAt: !218637)
!218646 = !DILocation(line: 2857, column: 18, scope: !122440, inlinedAt: !218637)
!218647 = !DILocation(line: 53, column: 23, scope: !218578, inlinedAt: !218579)
!218648 = !DILocation(line: 55, column: 22, scope: !218578, inlinedAt: !218579)
!218649 = !DILocation(line: 2447, column: 9, scope: !218650, inlinedAt: !218651)
!218650 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCseeLknQCOKOd_13polars_python", scope: !17064, file: !17063, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218651 = distinct !DILocation(line: 3615, column: 24, scope: !218652, inlinedAt: !218653)
!218652 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !17069, file: !17068, line: 3614, type: !10, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218653 = distinct !DILocation(line: 2898, column: 44, scope: !218654, inlinedAt: !218655)
!218654 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !17069, file: !17068, line: 2896, type: !10, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218655 = distinct !DILocation(line: 81, column: 27, scope: !218656, inlinedAt: !218657)
!218656 = distinct !DISubprogram(name: "reset", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context5reset", scope: !127747, file: !122397, line: 80, type: !10, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218657 = distinct !DILocation(line: 56, column: 24, scope: !218658, inlinedAt: !218579)
!218658 = distinct !DILexicalBlock(scope: !218578, file: !122397, line: 55, column: 17)
!218659 = !DILocation(line: 3890, column: 24, scope: !149334, inlinedAt: !218660)
!218660 = distinct !DILocation(line: 2898, column: 26, scope: !218654, inlinedAt: !218655)
!218661 = !DILocation(line: 2447, column: 9, scope: !218662, inlinedAt: !218663)
!218662 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut ()>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OuEE3getCseeLknQCOKOd_13polars_python", scope: !17064, file: !17063, line: 2443, type: !10, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218663 = distinct !DILocation(line: 2500, column: 16, scope: !218664, inlinedAt: !218665)
!218664 = distinct !DISubprogram(name: "as_ptr<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE6as_ptrCseeLknQCOKOd_13polars_python", scope: !17069, file: !17068, line: 2499, type: !10, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218665 = distinct !DILocation(line: 1763, column: 31, scope: !218666, inlinedAt: !218667)
!218666 = distinct !DISubprogram(name: "store<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE5storeCseeLknQCOKOd_13polars_python", scope: !17069, file: !17068, line: 1760, type: !10, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218667 = distinct !DILocation(line: 82, column: 27, scope: !218656, inlinedAt: !218657)
!218668 = !DILocation(line: 3890, column: 24, scope: !138168, inlinedAt: !218669)
!218669 = distinct !DILocation(line: 1763, column: 13, scope: !218666, inlinedAt: !218667)
!218670 = !DILocation(line: 57, column: 31, scope: !218658, inlinedAt: !218579)
!218671 = !DILocation(line: 1015, column: 18, scope: !218588, inlinedAt: !218672)
!218672 = distinct !DILocation(line: 48, column: 30, scope: !218673, inlinedAt: !218674)
!218673 = !DILexicalBlockFile(scope: !218590, file: !122397, discriminator: 2)
!218674 = distinct !DILocation(line: 57, column: 31, scope: !218658, inlinedAt: !218579)
!218675 = !DILocation(line: 49, column: 13, scope: !218676, inlinedAt: !218674)
!218676 = distinct !DILexicalBlock(scope: !218590, file: !122397, line: 48, column: 13)
!218677 = !DILocation(line: 437, column: 9, scope: !218678, inlinedAt: !218679)
!218678 = distinct !DISubprogram(name: "set<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE3setCseeLknQCOKOd_13polars_python", scope: !21810, file: !17063, line: 433, type: !10, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !11)
!218679 = distinct !DILocation(line: 58, column: 26, scope: !218680, inlinedAt: !218579)
!218680 = distinct !DILexicalBlock(scope: !218658, file: !122397, line: 57, column: 21)
!218681 = !DILocation(line: 929, column: 22, scope: !218572, inlinedAt: !218682)
!218682 = distinct !DILocation(line: 513, column: 9, scope: !218683, inlinedAt: !218684)
!218683 = !DILexicalBlockFile(scope: !218574, file: !17063, discriminator: 2)
!218684 = distinct !DILocation(line: 437, column: 14, scope: !218678, inlinedAt: !218679)
!218685 = !DILocation(line: 930, column: 49, scope: !218686, inlinedAt: !218682)
!218686 = distinct !DILexicalBlock(scope: !218572, file: !16683, line: 929, column: 9)
!218687 = !DILocation(line: 810, column: 1, scope: !149369, inlinedAt: !218688)
!218688 = distinct !DILocation(line: 437, column: 26, scope: !218678, inlinedAt: !218679)
!218689 = !DILocation(line: 3956, column: 24, scope: !122444, inlinedAt: !218690)
!218690 = distinct !DILocation(line: 3193, column: 26, scope: !122446, inlinedAt: !218691)
!218691 = distinct !DILocation(line: 2814, column: 32, scope: !122440, inlinedAt: !218692)
!218692 = distinct !DILocation(line: 810, column: 1, scope: !122433, inlinedAt: !218693)
end_hunk_3
