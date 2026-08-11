inline.NumInlined: 6320
inline.NumDeleted: 2547
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNCNvMs1_NtNtCslovz2ii29zg_17crossbeam_channel7flavors4zeroINtB7_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE4send0CsfcROwRM8ZtH_11polars_plan:bb.a

bb.bi:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryECsfcROwRM8ZtH_11polars_plan.exit62
  %i.gj = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !75648
  %i.gk = and i64 %i.gj, 9223372036854775807, !dbg !75654
  %i.gl = icmp eq i64 %i.gk, 0, !dbg !75654
  br i1 %i.gl, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i63, label %bb.bj, !dbg !75654, !prof !3380

bb.bj:                                            ; preds = %bb.bi
  %i.gm = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #44
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !75655

.noexc64:                                         ; preds = %bb.bj
  br i1 %i.gm, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i63, label %bb.bk, !dbg !75656

bb.bk:                                            ; preds = %.noexc64
  store atomic i8 1, ptr %i.gi monotonic, align 4, !dbg !75657
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i63, !dbg !75660

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i63: ; preds = %bb.bk, %.noexc64, %bb.bi, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryECsfcROwRM8ZtH_11polars_plan.exit62
  %i.gn = atomicrmw xchg ptr %i.fm, i32 0 release, align 4, !dbg !75661
  %i.go = icmp eq i32 %i.gn, 2, !dbg !75665
  br i1 %i.go, label %bb.bl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECsfcROwRM8ZtH_11polars_plan.exit66, !dbg !75665, !prof !32

bb.bl:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i63
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.fm)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECsfcROwRM8ZtH_11polars_plan.exit66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !75666

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECsfcROwRM8ZtH_11polars_plan.exit66: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i63, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !75606
  %i.gp = load ptr, ptr %i.m, align 8, !dbg !75667, !noundef !11 ; 2 uses
  store ptr null, ptr %i.m, align 8, !dbg !75673
  %.not10 = icmp eq ptr %i.gp, null, !dbg !75675
  br i1 %.not10, label %.invoke, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero6PacketINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEEECsfcROwRM8ZtH_11polars_plan.exit57, !dbg !75677, !prof !32

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero6PacketINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEEECsfcROwRM8ZtH_11polars_plan.exit57: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECsfcROwRM8ZtH_11polars_plan.exit55, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECsfcROwRM8ZtH_11polars_plan.exit66, %bb.av, %bb.au, %_RNvMs0_NtNtCslovz2ii29zg_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE10wait_readyCsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.0.021 = phi i64 [ 2, %bb.av ], [ 2, %_RNvMs0_NtNtCslovz2ii29zg_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE10wait_readyCsfcROwRM8ZtH_11polars_plan.exit ], [ 2, %bb.au ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECsfcROwRM8ZtH_11polars_plan.exit55 ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECsfcROwRM8ZtH_11polars_plan.exit66 ]
  %.sroa.4.020 = phi ptr [ undef, %bb.av ], [ undef, %_RNvMs0_NtNtCslovz2ii29zg_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE10wait_readyCsfcROwRM8ZtH_11polars_plan.exit ], [ undef, %bb.au ], [ %i.ew, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECsfcROwRM8ZtH_11polars_plan.exit55 ], [ %i.gp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECsfcROwRM8ZtH_11polars_plan.exit66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !74976
  %i.gq = insertvalue { i64, ptr } poison, i64 %.sroa.0.021, 0, !dbg !75678
  %i.gr = insertvalue { i64, ptr } %i.gq, ptr %.sroa.4.020, 1, !dbg !75678
  ret { i64, ptr } %i.gr, !dbg !75678

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero6PacketINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.i, %.body, %bb.j
  br i1 %.sroa.05.2, label %bb.bn, label %bb.bm, !dbg !75679

bb.bm:                                            ; preds = %bb.bn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero6PacketINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEEECsfcROwRM8ZtH_11polars_plan.exit
  resume { ptr, i32 } %.pn, !dbg !75540

bb.bn:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero6PacketINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEEECsfcROwRM8ZtH_11polars_plan.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !75679
  %.val19 = load i8, ptr %i.gs, align 8, !dbg !75679, !range !3519, !noundef !11
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.u, i8 %.val19) #43
          to label %bb.bm unwind label %bb.aw, !dbg !75679
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatNtB7_9IRDisplay7__format0Bd_(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !75680 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 16               ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 16               ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 16               ; 5 uses
  %i.k = alloca [48 x i8], align 16               ; 9 uses
  %i.l = alloca [8 x i8], align 8                 ; 7 uses
  %i.m = alloca [24 x i8], align 16               ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 16               ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 16               ; 5 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [48 x i8], align 8                ; 9 uses
  %i.t = alloca [8 x i8], align 8                 ; 6 uses
  %i.u = alloca [48 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 16               ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 16               ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [64 x i8], align 8                ; 11 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 16              ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 16              ; 5 uses
  %i.ai = alloca [48 x i8], align 16              ; 9 uses
  %i.aj = alloca [8 x i8], align 8                ; 7 uses
  %i.ak = alloca [48 x i8], align 8               ; 9 uses
  %i.al = alloca [24 x i8], align 16              ; 5 uses
  %i.am = alloca [48 x i8], align 16              ; 9 uses
  %i.an = alloca [8 x i8], align 8                ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [16 x i8], align 16              ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 11 uses
  %i.au = alloca [24 x i8], align 16              ; 5 uses
  %i.av = alloca [16 x i8], align 1               ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !75685
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !75685, !noundef !11 ; 25 uses
  %i.az = icmp eq i64 %i.ay, 0, !dbg !75685
  br i1 %i.az, label %bb.b, label %bb.c, !dbg !75685

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.ba = add i64 %i.ay, 2, !dbg !75686           ; 18 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !75687
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !75687, !nonnull !11, !align !3633, !noundef !11 ; 24 uses
  %i.bd = tail call noundef nonnull align 16 ptr @_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan5plans2irNtB4_9IRPlanRef4root(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bc), !dbg !75689 ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !75693
  %i.be = load ptr, ptr %i.bc, align 8, !dbg !75695, !nonnull !11, !align !3633, !noundef !11
  %i.bf = tail call { i64, ptr } @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6schemaNtB4_2IR6schema(ptr noundef nonnull align 16 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be), !dbg !75696 ; 2 uses
  %i.bg = extractvalue { i64, ptr } %i.bf, 0, !dbg !75696 ; 2 uses
  %i.bh = extractvalue { i64, ptr } %i.bf, 1, !dbg !75696 ; 2 uses
  store i64 %i.bg, ptr %i.aw, align 8, !dbg !75696
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !75696 ; 7 uses
  store ptr %i.bh, ptr %i.bi, align 8, !dbg !75696
  %i.bj = trunc nuw i64 %i.bg to i1, !dbg !75697
  %. = select i1 %i.bj, ptr %i.bi, ptr %i.bh, !dbg !75704 ; 8 uses
  %i.bk = load i64, ptr %i.bd, align 16, !dbg !75705, !range !19130, !noundef !11 ; 3 uses
  %i.bl = icmp ne i64 %i.bk, -9223372036854775786, !dbg !75705
  tail call void @llvm.assume(i1 %i.bl), !dbg !75705
  %i.bm = add nsw i64 %i.bk, 9223372036854775804, !dbg !75705
  %i.bn = icmp ugt i64 %i.bk, -9223372036854775805, !dbg !75705
  %i.bo = select i1 %i.bn, i64 %i.bm, i64 18, !dbg !75705
  switch i64 %i.bo, label %bb.d [
    i64 8, label %bb.e
    i64 9, label %bb.f
    i64 10, label %bb.ac
    i64 14, label %bb.g
    i64 15, label %bb.h
    i64 16, label %bb.i
    i64 19, label %bb.j
    i64 20, label %bb.k
  ], !dbg !75707

bb.c:                                             ; preds = %bb.a
  %i.bp = load ptr, ptr %0, align 8, !dbg !75708, !nonnull !11, !align !3633, !noundef !11 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !75709, !nonnull !11, !noundef !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !75709
  %i.bs = load ptr, ptr %i.br, align 8, !dbg !75709, !nonnull !11, !align !3633, !noundef !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24, !dbg !75709
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !75709, !invariant.load !11, !nonnull !11
  %i.bv = tail call noundef zeroext i1 %i.bu(ptr noundef nonnull %i.bq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @557, i64 noundef 1) #46, !dbg !75715
  br i1 %i.bv, label %bb.do, label %bb.b, !dbg !75716

bb.d:                                             ; preds = %bb.b
  %i.bw = load ptr, ptr %0, align 8, !dbg !75720, !nonnull !11, !align !3633, !noundef !11 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !75722
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !75722, !nonnull !11, !align !3633, !noundef !11
  %i.bz = load ptr, ptr %., align 8, !dbg !75723, !nonnull !11, !noundef !11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !75730
  %i.cb = invoke noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6format22write_ir_non_recursive(ptr noundef nonnull %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @192, ptr noundef nonnull align 16 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, i64 noundef %i.ay)
          to label %bb.dh unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !75731

bb.e:                                             ; preds = %bb.b
  %i.cc = load ptr, ptr %0, align 8, !dbg !75732, !nonnull !11, !align !3633, !noundef !11 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !75734
  %i.ce = load ptr, ptr %i.cd, align 8, !dbg !75734, !nonnull !11, !align !3633, !noundef !11
  %i.cf = load ptr, ptr %., align 8, !dbg !75735, !nonnull !11, !noundef !11
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16, !dbg !75741
  %i.ch = invoke noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6format22write_ir_non_recursive(ptr noundef nonnull %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @192, ptr noundef nonnull align 16 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cg, i64 noundef %i.ay)
          to label %bb.n unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !75742

bb.f:                                             ; preds = %bb.b
  %i.ci = load ptr, ptr %0, align 8, !dbg !75743, !nonnull !11, !align !3633, !noundef !11 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !75745
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !75745, !nonnull !11, !align !3633, !noundef !11
  %i.cl = load ptr, ptr %., align 8, !dbg !75746, !nonnull !11, !noundef !11
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16, !dbg !75752
  %i.cn = invoke noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6format22write_ir_non_recursive(ptr noundef nonnull %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @192, ptr noundef nonnull align 16 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cm, i64 noundef %i.ay)
          to label %bb.w unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !75753

bb.g:                                             ; preds = %bb.b
  %i.co = load ptr, ptr %0, align 8, !dbg !75754, !nonnull !11, !align !3633, !noundef !11 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !75756
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !75756, !nonnull !11, !align !3633, !noundef !11
  %i.cr = load ptr, ptr %., align 8, !dbg !75757, !nonnull !11, !noundef !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !75763
  %i.ct = invoke noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6format22write_ir_non_recursive(ptr noundef nonnull %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @192, ptr noundef nonnull align 16 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cs, i64 noundef %i.ay)
          to label %bb.bh unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !75764

bb.h:                                             ; preds = %bb.b
  %i.cu = load ptr, ptr %0, align 8, !dbg !75765, !nonnull !11, !align !3633, !noundef !11 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !75767
  %i.cw = load ptr, ptr %i.cv, align 8, !dbg !75767, !nonnull !11, !align !3633, !noundef !11
  %i.cx = load ptr, ptr %., align 8, !dbg !75768, !nonnull !11, !noundef !11
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16, !dbg !75774
  %i.cz = invoke noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6format22write_ir_non_recursive(ptr noundef nonnull %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @192, ptr noundef nonnull align 16 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cy, i64 noundef %i.ay)
          to label %bb.bk unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !75775

bb.i:                                             ; preds = %bb.b
  %i.da = add nsw i64 %i.ay, 4, !dbg !75776
  %i.db = load ptr, ptr %0, align 8, !dbg !75778, !nonnull !11, !align !3633, !noundef !11 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !75780
  %i.dd = load ptr, ptr %i.dc, align 8, !dbg !75780, !nonnull !11, !align !3633, !noundef !11
  %i.de = load ptr, ptr %., align 8, !dbg !75781, !nonnull !11, !noundef !11
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !75787
  %i.dg = invoke noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6format22write_ir_non_recursive(ptr noundef nonnull %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @192, ptr noundef nonnull align 16 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.df, i64 noundef %i.ay)
          to label %bb.cb unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !75788

bb.j:                                             ; preds = %bb.b
  %i.dh = load ptr, ptr %0, align 8, !dbg !75789, !nonnull !11, !align !3633, !noundef !11 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !75791
  %i.dj = load ptr, ptr %i.di, align 8, !dbg !75791, !nonnull !11, !align !3633, !noundef !11
  %i.dk = load ptr, ptr %., align 8, !dbg !75792, !nonnull !11, !noundef !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16, !dbg !75798
  %i.dm = invoke noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6format22write_ir_non_recursive(ptr noundef nonnull %i.dh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @192, ptr noundef nonnull align 16 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dl, i64 noundef %i.ay)
          to label %bb.ck unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !75799

bb.k:                                             ; preds = %bb.b
  %i.dn = load ptr, ptr %0, align 8, !dbg !75800, !nonnull !11, !align !3633, !noundef !11 ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !75802
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !75802, !nonnull !11, !align !3633, !noundef !11
  %i.dq = load ptr, ptr %., align 8, !dbg !75803, !nonnull !11, !noundef !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16, !dbg !75809
  %i.ds = invoke noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6format22write_ir_non_recursive(ptr noundef nonnull %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @192, ptr noundef nonnull align 16 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dr, i64 noundef %i.ay)
          to label %bb.ct unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !75810

.body:                                            ; preds = %.loopexit612, %.loopexit.split-lp613.loopexit.split-lp, %.loopexit.split-lp613.loopexit, %bb.by, %bb.dl, %bb.bp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.bp ], [ %i.od, %bb.dl ], [ %i.kl, %bb.by ], [ %lpad.loopexit614, %.loopexit612 ], [ %lpad.loopexit617, %.loopexit.split-lp613.loopexit ], [ %lpad.loopexit.split-lp618, %.loopexit.split-lp613.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !75811), !dbg !75814
  %i.dt = load i64, ptr %i.aw, align 8, !dbg !75815, !range !3376, !alias.scope !75811, !noundef !11
  %i.du = icmp eq i64 %i.dt, 0, !dbg !75815
  br i1 %i.du, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.l, !dbg !75815

bb.l:                                             ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !75817), !dbg !75815
  call void @llvm.experimental.noalias.scope.decl(metadata !75820), !dbg !75823
  %i.dv = load ptr, ptr %i.bi, align 8, !dbg !75825, !alias.scope !75829, !nonnull !11, !noundef !11
  %i.dw = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !dbg !75830, !noalias !75829
  %i.dx = icmp eq i64 %i.dw, 1, !dbg !75833
  br i1 %i.dx, label %bb.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !75833

bb.m:                                             ; preds = %bb.l
  fence acquire, !dbg !75834
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bi) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.ca, !dbg !75836

.loopexit612:                                     ; preds = %.lr.ph625.split, %bb.cg
  %lpad.loopexit614 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp613.loopexit:                   ; preds = %bb.cp, %.lr.ph.split
  %lpad.loopexit617 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp613.loopexit.split-lp:          ; preds = %.invoke, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit.i, %bb.bn, %bb.bm, %bb.di, %bb.df, %bb.dd, %bb.db, %bb.cz, %bb.cx, %bb.cu, %bb.cm, %bb.cd, %bb.br, %bb.bi, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.aa, %bb.y, %bb.q, %bb.o, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %lpad.loopexit.split-lp618 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.e
  br i1 %i.ch, label %bb.u, label %bb.o, !dbg !75837

bb.o:                                             ; preds = %bb.n
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !75838
  %i.dz = load ptr, ptr %i.dy, align 8, !dbg !75838, !nonnull !11, !align !3633, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !75839
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !75839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i64 16, i1 false), !dbg !75839
  %i.eb = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIduNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.dz, ptr noalias noundef nonnull readonly align 1 captures(address) dereferenceable(16) %i.av)
          to label %bb.p unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !75840

bb.p:                                             ; preds = %bb.o
  %i.ec = extractvalue { i64, i1 } %i.eb, 1, !dbg !75845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !75846
  br i1 %i.ec, label %bb.s, label %bb.q, !dbg !75838

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !75847
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bd, i64 24, !dbg !75848
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !75848, !noundef !11
  %i.ef = load <2 x ptr>, ptr %i.bc, align 8, !dbg !75849
  store <2 x ptr> %i.ef, ptr %i.au, align 16, !dbg !75850, !alias.scope !75853
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !75850
  store i64 %i.ee, ptr %.sroa.5.0..sroa_idx.i, align 16, !dbg !75850, !alias.scope !75853
  %i.eg = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatNtB5_9IRDisplay7__format(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au, ptr noalias noundef align 8 dereferenceable(24) %i.cc, i64 noundef %i.ba, ptr noalias noundef align 8 dereferenceable(64) %i.dz)
          to label %bb.r unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !75856

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !75857
  br i1 %i.eg, label %bb.u, label %bb.s, !dbg !75858

bb.s:                                             ; preds = %bb.ab, %bb.r, %bb.p, %bb.dn, %bb.dg, %bb.cn, %bb.ce, %bb.bs, %bb.bj, %bb.ar
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.dn ], [ %i.nz, %bb.dg ], [ false, %bb.r ], [ %.sroa.0.3.in, %bb.ar ], [ %i.iw, %bb.bj ], [ %i.kf, %bb.bs ], [ %i.lm, %bb.ce ], [ %i.mq, %bb.cn ], [ false, %bb.p ], [ false, %bb.ab ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75859), !dbg !75814
  %i.eh = load i64, ptr %i.aw, align 8, !dbg !75862, !range !3376, !alias.scope !75859, !noundef !11
  %i.ei = icmp eq i64 %i.eh, 0, !dbg !75862
  br i1 %i.ei, label %.sink.split, label %bb.t, !dbg !75862

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !75864), !dbg !75862
  call void @llvm.experimental.noalias.scope.decl(metadata !75867), !dbg !75870
  %i.ej = load ptr, ptr %i.bi, align 8, !dbg !75872, !alias.scope !75876, !nonnull !11, !noundef !11
  %i.ek = atomicrmw sub ptr %i.ej, i64 1 release, align 8, !dbg !75877, !noalias !75876
  %i.el = icmp eq i64 %i.ek, 1, !dbg !75880
  br i1 %i.el, label %.sink.split.sink.split, label %.sink.split, !dbg !75880

bb.u:                                             ; preds = %bb.de, %bb.dc, %bb.da, %bb.cy, %bb.ab, %bb.z, %bb.r, %bb.dh, %bb.cv, %bb.ct, %bb.ck, %bb.cb, %bb.bk, %bb.bh, %bb.w, %bb.n, %bb.dr, %bb.cs, %bb.cj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit, %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !75881), !dbg !75814
  %i.em = load i64, ptr %i.aw, align 8, !dbg !75884, !range !3376, !alias.scope !75881, !noundef !11
  %i.en = icmp eq i64 %i.em, 0, !dbg !75884
  br i1 %i.en, label %.sink.split, label %bb.v, !dbg !75884

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !75886), !dbg !75884
  call void @llvm.experimental.noalias.scope.decl(metadata !75889), !dbg !75892
  %i.eo = load ptr, ptr %i.bi, align 8, !dbg !75894, !alias.scope !75898, !nonnull !11, !noundef !11
  %i.ep = atomicrmw sub ptr %i.eo, i64 1 release, align 8, !dbg !75899, !noalias !75898
  %i.eq = icmp eq i64 %i.ep, 1, !dbg !75902
  br i1 %i.eq, label %.sink.split.sink.split, label %.sink.split, !dbg !75902

bb.w:                                             ; preds = %bb.f
  br i1 %i.cn, label %bb.u, label %bb.x, !dbg !75903

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !75904
  %i.er = icmp ugt i64 %i.ba, 65535, !dbg !75907
  br i1 %i.er, label %.invoke, label %bb.y, !dbg !75907, !prof !32

bb.y:                                             ; preds = %bb.x
  %i.es = trunc nuw i64 %i.ba to i16, !dbg !75914
  store ptr @558, ptr %i.af, align 8, !dbg !75904
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !75904
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4171.0..sroa_idx, align 8, !dbg !75904
  %i.et = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !75904
  store ptr null, ptr %i.et, align 8, !dbg !75904
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !75904
  store i16 %i.es, ptr %.sroa.4176.0..sroa_idx, align 8, !dbg !75904
  %i.eu = load ptr, ptr %i.ci, align 8, !dbg !75915, !nonnull !11, !noundef !11
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ci, i64 8, !dbg !75915
  %i.ew = load ptr, ptr %i.ev, align 8, !dbg !75915, !nonnull !11, !align !3633, !noundef !11
  %i.ex = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ew, ptr noundef nonnull @559, ptr noundef nonnull %i.af)
          to label %bb.z unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !75918

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !75919
  br i1 %i.ex, label %bb.u, label %bb.aa, !dbg !75920

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !75923
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bd, i64 96, !dbg !75924
  %i.ez = load i64, ptr %i.ey, align 16, !dbg !75924, !noundef !11
  %i.fa = load <2 x ptr>, ptr %i.bc, align 8, !dbg !75925
  store <2 x ptr> %i.fa, ptr %i.ae, align 16, !dbg !75926, !alias.scope !75928
  %.sroa.5.0..sroa_idx.i553 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !75926
  store i64 %i.ez, ptr %.sroa.5.0..sroa_idx.i553, align 16, !dbg !75926, !alias.scope !75928
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !75931
  %i.fc = load ptr, ptr %i.fb, align 8, !dbg !75931, !nonnull !11, !align !3633, !noundef !11
  %i.fd = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatNtB5_9IRDisplay7__format(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias noundef align 8 dereferenceable(24) %i.ci, i64 noundef %i.ba, ptr noalias noundef align 8 dereferenceable(64) %i.fc)
          to label %bb.ab unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !75932

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !75933
  br i1 %i.fd, label %bb.u, label %bb.s, !dbg !75934

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !75935
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bd, i64 16, !dbg !75937
  %i.ff = load ptr, ptr %i.fe, align 16, !dbg !75937, !nonnull !11, !noundef !11
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24, !dbg !75950
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !75950, !noundef !11
  %i.fi = getelementptr i8, ptr %i.bc, i64 8, !dbg !75951 ; 3 uses
  %.val522 = load ptr, ptr %i.fi, align 8, !dbg !75951, !nonnull !11, !align !3633, !noundef !11
  store ptr %i.ff, ptr %i.ad, align 8, !dbg !75952, !alias.scope !75955
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !75952
  store i64 %i.fh, ptr %i.fj, align 8, !dbg !75952, !alias.scope !75955
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !75952
  store ptr %.val522, ptr %i.fk, align 8, !dbg !75952, !alias.scope !75955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !75958
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bd, i64 40, !dbg !75960
  %i.fm = load ptr, ptr %i.fl, align 8, !dbg !75960, !nonnull !11, !noundef !11
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bd, i64 48, !dbg !75972
  %i.fo = load i64, ptr %i.fn, align 16, !dbg !75972, !noundef !11
  %.val521 = load ptr, ptr %i.fi, align 8, !dbg !75973, !nonnull !11, !align !3633, !noundef !11
  store ptr %i.fm, ptr %i.ac, align 8, !dbg !75974, !alias.scope !75976
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !75974
  store i64 %i.fo, ptr %i.fp, align 8, !dbg !75974, !alias.scope !75976
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !75974
  store ptr %.val521, ptr %i.fq, align 8, !dbg !75974, !alias.scope !75976
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bd, i64 64, !dbg !75979
  %i.fs = load ptr, ptr %i.fr, align 16, !dbg !75979, !nonnull !11, !noundef !11 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16, !dbg !75990 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 16, !dbg !75990, !range !19283, !noundef !11
  %i.fv = icmp samesign ugt i64 %i.fu, 4, !dbg !75991
  br i1 %i.fv, label %bb.ad, label %bb.ae, !dbg !75991

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !75992
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 152, !dbg !75993
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatNtB7_9IRDisplay7__format0Bd_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !76084
  br label %bb.at, !dbg !76089

bb.at:                                            ; preds = %bb.bg, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !76086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !76087
  br label %bb.u, !dbg !76091

bb.au:                                            ; preds = %bb.ad
  %i.hl = trunc nuw i64 %i.ay to i16, !dbg !76093 ; 4 uses
  store ptr @558, ptr %i.s, align 8, !dbg !75996
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !75996
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4287.0..sroa_idx, align 8, !dbg !75996
  %i.hm = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !75996
  store ptr null, ptr %i.hm, align 8, !dbg !75996
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !75996
  store i16 %i.hl, ptr %.sroa.5295.0..sroa_idx, align 8, !dbg !75996
  %i.hn = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !75996
  store ptr %i.t, ptr %i.hn, align 8, !dbg !75996
  %.sroa.4309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40, !dbg !75996
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4args8JoinTypeNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4309.0..sroa_idx, align 8, !dbg !75996
  %i.ho = load ptr, ptr %i.fx, align 8, !dbg !76094, !nonnull !11, !noundef !11
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !76094 ; 4 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !dbg !76094, !nonnull !11, !align !3633, !noundef !11
  %i.hr = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.ho, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hq, ptr noundef nonnull @569, ptr noundef nonnull %i.s)
          to label %bb.av unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76097

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !76098
  br i1 %i.hr, label %bb.bg, label %bb.aw, !dbg !76099

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !76102
  store ptr @558, ptr %i.r, align 8, !dbg !76102
  %.sroa.4325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !76102
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4325.0..sroa_idx, align 8, !dbg !76102
  %i.hs = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !76102
  store ptr null, ptr %i.hs, align 8, !dbg !76102
  %.sroa.5295.0..sroa_idx296 = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !76102
  store i16 %i.hl, ptr %.sroa.5295.0..sroa_idx296, align 8, !dbg !76102
  %i.ht = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !76102
  store ptr %i.ad, ptr %i.ht, align 8, !dbg !76102
  %.sroa.4329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40, !dbg !76102
  store ptr @_RNvXs5_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatINtB5_18ExprIRSliceDisplayNtNtB9_7expr_ir6ExprIRENtNtCscgRAwXFJnXP_4core3fmt7Display3fmtBb_, ptr %.sroa.4329.0..sroa_idx, align 8, !dbg !76102
  %i.hu = load ptr, ptr %i.fx, align 8, !dbg !76105, !nonnull !11, !noundef !11
  %i.hv = load ptr, ptr %i.hp, align 8, !dbg !76105, !nonnull !11, !align !3633, !noundef !11
  %i.hw = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.hu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hv, ptr noundef nonnull @570, ptr noundef nonnull %i.r)
          to label %bb.ax unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76107

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !76108
  br i1 %i.hw, label %bb.bg, label %bb.ay, !dbg !76109

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !76111
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bd, i64 72, !dbg !76112
  %i.hy = load i64, ptr %i.hx, align 8, !dbg !76112, !noundef !11
  %i.hz = load <2 x ptr>, ptr %i.bc, align 8, !dbg !76113
  store <2 x ptr> %i.hz, ptr %i.q, align 16, !dbg !76114, !alias.scope !76116
  %.sroa.5.0..sroa_idx.i559 = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !76114
  store i64 %i.hy, ptr %.sroa.5.0..sroa_idx.i559, align 16, !dbg !76114, !alias.scope !76116
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !76119
  %i.ib = load ptr, ptr %i.ia, align 8, !dbg !76119, !nonnull !11, !align !3633, !noundef !11 ; 2 uses
  %i.ic = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatNtB5_9IRDisplay7__format(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias noundef align 8 dereferenceable(24) %i.fx, i64 noundef %i.ba, ptr noalias noundef align 8 dereferenceable(64) %i.ib)
          to label %bb.az unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76120

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !76121
  br i1 %i.ic, label %bb.bg, label %bb.ba, !dbg !76122

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !76123
  store ptr @558, ptr %i.p, align 8, !dbg !76123
  %.sroa.4345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !76123
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4345.0..sroa_idx, align 8, !dbg !76123
  %i.id = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !76123
  store ptr null, ptr %i.id, align 8, !dbg !76123
  %.sroa.5295.0..sroa_idx298 = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !76123
  store i16 %i.hl, ptr %.sroa.5295.0..sroa_idx298, align 8, !dbg !76123
  %i.ie = getelementptr inbounds nuw i8, ptr %i.p, i64 32, !dbg !76123
  store ptr %i.ac, ptr %i.ie, align 8, !dbg !76123
  %.sroa.4349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40, !dbg !76123
  store ptr @_RNvXs5_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatINtB5_18ExprIRSliceDisplayNtNtB9_7expr_ir6ExprIRENtNtCscgRAwXFJnXP_4core3fmt7Display3fmtBb_, ptr %.sroa.4349.0..sroa_idx, align 8, !dbg !76123
  %i.if = load ptr, ptr %i.fx, align 8, !dbg !76126, !nonnull !11, !noundef !11
  %i.ig = load ptr, ptr %i.hp, align 8, !dbg !76126, !nonnull !11, !align !3633, !noundef !11
  %i.ih = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.if, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ig, ptr noundef nonnull @571, ptr noundef nonnull %i.p)
          to label %bb.bb unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76128

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !76129
  br i1 %i.ih, label %bb.bg, label %bb.bc, !dbg !76130

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !76132
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bd, i64 80, !dbg !76133
  %i.ij = load i64, ptr %i.ii, align 16, !dbg !76133, !noundef !11
  %i.ik = load <2 x ptr>, ptr %i.bc, align 8, !dbg !76134
  store <2 x ptr> %i.ik, ptr %i.o, align 16, !dbg !76135, !alias.scope !76137
  %.sroa.5.0..sroa_idx.i561 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !76135
  store i64 %i.ij, ptr %.sroa.5.0..sroa_idx.i561, align 16, !dbg !76135, !alias.scope !76137
  %i.il = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatNtB5_9IRDisplay7__format(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias noundef align 8 dereferenceable(24) %i.fx, i64 noundef %i.ba, ptr noalias noundef align 8 dereferenceable(64) %i.ib)
          to label %bb.bd unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76140

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !76141
  br i1 %i.il, label %bb.bg, label %bb.be, !dbg !76142

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !76143
  store ptr @558, ptr %i.n, align 8, !dbg !76143
  %.sroa.4365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !76143
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4365.0..sroa_idx, align 8, !dbg !76143
  %i.im = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !76143
  store ptr null, ptr %i.im, align 8, !dbg !76143
  %.sroa.5295.0..sroa_idx300 = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !76143
  store i16 %i.hl, ptr %.sroa.5295.0..sroa_idx300, align 8, !dbg !76143
  %i.in = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !76143
  store ptr %i.t, ptr %i.in, align 8, !dbg !76143
  %.sroa.4369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !76143
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4args8JoinTypeNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4369.0..sroa_idx, align 8, !dbg !76143
  %i.io = load ptr, ptr %i.fx, align 8, !dbg !76146, !nonnull !11, !noundef !11
  %i.ip = load ptr, ptr %i.hp, align 8, !dbg !76146, !nonnull !11, !align !3633, !noundef !11
  %i.iq = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.io, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ip, ptr noundef nonnull @567, ptr noundef nonnull %i.n)
          to label %bb.bf unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76148

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !76149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !76150
  br label %bb.ar, !dbg !76085

bb.bg:                                            ; preds = %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !76150
  br label %bb.at, !dbg !76089

bb.bh:                                            ; preds = %bb.g
  br i1 %i.ct, label %bb.u, label %bb.bi, !dbg !76151

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !76152
  %i.ir = getelementptr inbounds nuw i8, ptr %i.bd, i64 216, !dbg !76153
  %i.is = load i64, ptr %i.ir, align 8, !dbg !76153, !noundef !11
  %i.it = load <2 x ptr>, ptr %i.bc, align 8, !dbg !76154
  store <2 x ptr> %i.it, ptr %i.m, align 16, !dbg !76155, !alias.scope !76157
  %.sroa.5.0..sroa_idx.i563 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !76155
  store i64 %i.is, ptr %.sroa.5.0..sroa_idx.i563, align 16, !dbg !76155, !alias.scope !76157
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !76160
  %i.iv = load ptr, ptr %i.iu, align 8, !dbg !76160, !nonnull !11, !align !3633, !noundef !11
  %i.iw = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatNtB5_9IRDisplay7__format(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias noundef align 8 dereferenceable(24) %i.co, i64 noundef %i.ba, ptr noalias noundef align 8 dereferenceable(64) %i.iv)
          to label %bb.bj unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76161

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !76162
  br label %bb.s, !dbg !76163

bb.bk:                                            ; preds = %bb.h
  br i1 %i.cz, label %bb.u, label %bb.bl, !dbg !76164

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !76165
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !76166
  %i.iy = load i64, ptr %i.ix, align 8, !dbg !76166, !range !3376, !noundef !11
  %i.iz = trunc nuw i64 %i.iy to i1, !dbg !76168
  br i1 %i.iz, label %bb.bm, label %bb.bn, !dbg !76168

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !76169
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bd, i64 16, !dbg !76169
  %i.jb = load <2 x i64>, ptr %i.ja, align 16, !dbg !76169
  store <2 x i64> %i.jb, ptr %i.as, align 16, !dbg !76169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !76170
  %i.jc = getelementptr inbounds nuw i8, ptr %i.bd, i64 60, !dbg !76170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !76171
  store ptr %i.jc, ptr %i.aq, align 8, !dbg !76171
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !76171
  store ptr @_RNvXsg_NtCscgRAwXFJnXP_4core3fmtbNtB5_7Display3fmt, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !76171
  %i.jd = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !76171
  store ptr %i.as, ptr %i.jd, align 8, !dbg !76171
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24, !dbg !76171
  store ptr @_RNvXs1G_NtCscgRAwXFJnXP_4core3fmtTxjENtB6_5Debug3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.464.0..sroa_idx, align 8, !dbg !76171
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noundef nonnull @573, ptr noundef nonnull %i.aq)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76174

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !76180
  %i.je = getelementptr inbounds nuw i8, ptr %i.bd, i64 60, !dbg !76180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !76181
  store ptr %i.je, ptr %i.ao, align 8, !dbg !76181
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !76181
  store ptr @_RNvXsg_NtCscgRAwXFJnXP_4core3fmtbNtB5_7Display3fmt, ptr %.sroa.456.0..sroa_idx, align 8, !dbg !76181
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noundef nonnull @350, ptr noundef nonnull %i.ao)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit566 unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76184

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !76170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !dbg !76189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !76170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !76193
  br label %bb.bo, !dbg !76194

bb.bo:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit566, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit
  %i.jf = add nsw i64 %i.ay, 4, !dbg !76195
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bd, i64 72, !dbg !76197
  %i.jh = load ptr, ptr %i.jg, align 8, !dbg !76197, !nonnull !11, !noundef !11 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.bd, i64 80, !dbg !76216
  %i.jj = load i64, ptr %i.ji, align 16, !dbg !76216, !noundef !11 ; 2 uses
  %.idx635 = shl nuw nsw i64 %i.jj, 3, !dbg !76217
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %.idx635, !dbg !76217
  %i.jl = icmp eq i64 %i.jj, 0, !dbg !76226
  br i1 %i.jl, label %._crit_edge632, label %.lr.ph631, !dbg !76236

.lr.ph631:                                        ; preds = %bb.bo
  %i.jm = icmp ugt i64 %i.ba, 65535
  %i.jn = trunc nuw i64 %i.ba to i16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.jp = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.jq = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.5.0..sroa_idx.i568 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !nonnull !11, !align !3633
  br i1 %i.jm, label %.lr.ph631.split.us, label %.lr.ph631.split, !prof !32

.lr.ph631.split.us:                               ; preds = %.lr.ph631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !76237
  store i64 0, ptr %i.an, align 8, !dbg !76237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !76238
  br label %.invoke640, !dbg !76242

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan.exit566: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !76180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !dbg !76245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !76180
  br label %bb.bo, !dbg !76194

.loopexit:                                        ; preds = %.lr.ph631.split, %bb.bu
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp:                               ; preds = %.invoke640, %bb.bq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at) #43
          to label %.body unwind label %bb.ca, !dbg !76248

.lr.ph631.split:                                  ; preds = %.lr.ph631, %bb.bw
  %.sroa.0588.0629 = phi ptr [ %i.jt, %bb.bw ], [ %i.jh, %.lr.ph631 ] ; 2 uses
  %.sroa.8.0628 = phi i64 [ %i.ju, %bb.bw ], [ 0, %.lr.ph631 ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0588.0629, i64 8, !dbg !76249 ; 2 uses
  %i.ju = add nuw nsw i64 %.sroa.8.0628, 1, !dbg !76252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !76237
  store i64 %.sroa.8.0628, ptr %i.an, align 8, !dbg !76237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !76238
  store <2 x ptr> <ptr @558, ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan>, ptr %i.am, align 16, !dbg !76238
  store ptr null, ptr %i.jo, align 16, !dbg !76238
  store i16 %i.jn, ptr %.sroa.480.0..sroa_idx, align 8, !dbg !76238
  store ptr %i.an, ptr %i.jp, align 16, !dbg !76238
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.485.0..sroa_idx, align 8, !dbg !76238
  %i.jv = load ptr, ptr %i.cu, align 8, !dbg !76255, !nonnull !11, !noundef !11
  %i.jw = load ptr, ptr %i.jq, align 8, !dbg !76255, !nonnull !11, !align !3633, !noundef !11
  %i.jx = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.jv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jw, ptr noundef nonnull @576, ptr noundef nonnull %i.am)
          to label %bb.bt unwind label %.loopexit, !dbg !76258

._crit_edge632:                                   ; preds = %bb.bw, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !76259
  %i.jy = icmp ugt i64 %i.ay, 65535, !dbg !76262
  br i1 %i.jy, label %.invoke640, label %bb.bq, !dbg !76262, !prof !32

bb.bq:                                            ; preds = %._crit_edge632
  %i.jz = trunc nuw i64 %i.ay to i16, !dbg !76265
  store ptr @558, ptr %i.ak, align 8, !dbg !76259
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !76259
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.475.0..sroa_idx, align 8, !dbg !76259
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !76259
  store ptr null, ptr %i.ka, align 8, !dbg !76259
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24, !dbg !76259
  store i16 %i.jz, ptr %.sroa.4102.0..sroa_idx, align 8, !dbg !76259
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ak, i64 32, !dbg !76259
  store ptr %i.at, ptr %i.kb, align 8, !dbg !76259
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40, !dbg !76259
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.4107.0..sroa_idx, align 8, !dbg !76259
  %i.kc = load ptr, ptr %i.cu, align 8, !dbg !76266, !nonnull !11, !noundef !11
  %i.kd = getelementptr inbounds nuw i8, ptr %i.cu, i64 8, !dbg !76266
  %i.ke = load ptr, ptr %i.kd, align 8, !dbg !76266, !nonnull !11, !align !3633, !noundef !11
  %i.kf = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.kc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ke, ptr noundef nonnull @574, ptr noundef nonnull %i.ak)
          to label %bb.br unwind label %.loopexit.split-lp, !dbg !76269

.invoke640:                                       ; preds = %._crit_edge632, %.lr.ph631.split.us
  %i.kg = phi ptr [ @577, %.lr.ph631.split.us ], [ @575, %._crit_edge632 ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @560, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kg) #41
          to label %.cont641 unwind label %.loopexit.split-lp, !dbg !76270

.cont641:                                         ; preds = %.invoke640
  unreachable

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !76272
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.bs unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76248

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !76248
  br label %bb.s, !dbg !76273

bb.bt:                                            ; preds = %.lr.ph631.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !76274
  br i1 %i.jx, label %bb.bx, label %bb.bu, !dbg !76275

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !76278
  %i.kh = load i64, ptr %.sroa.0588.0629, align 8, !dbg !76279, !noundef !11
  %i.ki = load <2 x ptr>, ptr %i.bc, align 8, !dbg !76280
  store <2 x ptr> %i.ki, ptr %i.al, align 16, !dbg !76281, !alias.scope !76283
  store i64 %i.kh, ptr %.sroa.5.0..sroa_idx.i568, align 16, !dbg !76281, !alias.scope !76283
  %i.kj = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatNtB5_9IRDisplay7__format(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al, ptr noalias noundef align 8 dereferenceable(24) %i.cu, i64 noundef %i.jf, ptr noalias noundef align 8 dereferenceable(64) %i.js)
          to label %bb.bv unwind label %.loopexit, !dbg !76286

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !76287
  br i1 %i.kj, label %bb.bx, label %bb.bw, !dbg !76288

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !76289
  %i.kk = icmp eq ptr %i.jt, %i.jk, !dbg !76226
  br i1 %i.kk, label %._crit_edge632, label %.lr.ph631.split, !dbg !76236

bb.bx:                                            ; preds = %bb.bv, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !76289
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.by, !dbg !76290

bb.by:                                            ; preds = %bb.bx
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body unwind label %bb.bz, !dbg !76293

bb.bz:                                            ; preds = %bb.by
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !76290
  unreachable, !dbg !76290

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.bx
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76295

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !76248
  br label %bb.u, !dbg !76297

bb.ca:                                            ; preds = %bb.m, %bb.bp
  %i.kn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !76299
  unreachable, !dbg !76299

bb.cb:                                            ; preds = %bb.i
  br i1 %i.dg, label %bb.u, label %bb.cc, !dbg !76300

bb.cc:                                            ; preds = %bb.cb
  %i.ko = getelementptr inbounds nuw i8, ptr %i.bd, i64 16, !dbg !76301
  %i.kp = load ptr, ptr %i.ko, align 16, !dbg !76301, !nonnull !11, !noundef !11 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.bd, i64 24, !dbg !76313
  %i.kr = load i64, ptr %i.kq, align 8, !dbg !76313, !noundef !11 ; 2 uses
  %.idx634 = shl nuw nsw i64 %i.kr, 3, !dbg !76314
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.idx634, !dbg !76314
  %i.kt = icmp eq i64 %i.kr, 0, !dbg !76322
  br i1 %i.kt, label %._crit_edge626, label %.lr.ph625, !dbg !76327

.lr.ph625:                                        ; preds = %bb.cc
  %i.ku = icmp ugt i64 %i.ba, 65535
  %i.kv = trunc nuw i64 %i.ba to i16
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ky = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.5.0..sroa_idx.i574 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !nonnull !11, !align !3633
  br i1 %i.ku, label %.lr.ph625.split.us, label %.lr.ph625.split, !prof !32

.lr.ph625.split.us:                               ; preds = %.lr.ph625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !76328
  store i64 0, ptr %i.aj, align 8, !dbg !76328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !76329
  br label %.invoke, !dbg !76333

.lr.ph625.split:                                  ; preds = %.lr.ph625, %bb.ci
  %.sroa.8591.0623 = phi i64 [ %i.lc, %bb.ci ], [ 0, %.lr.ph625 ] ; 2 uses
  %.sroa.0589.0622 = phi ptr [ %i.lb, %bb.ci ], [ %i.kp, %.lr.ph625 ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0589.0622, i64 8, !dbg !76336 ; 2 uses
  %i.lc = add nuw nsw i64 %.sroa.8591.0623, 1, !dbg !76338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !76328
  store i64 %.sroa.8591.0623, ptr %i.aj, align 8, !dbg !76328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !76329
  store <2 x ptr> <ptr @558, ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan>, ptr %i.ai, align 16, !dbg !76329
  store ptr null, ptr %i.kw, align 16, !dbg !76329
  store i16 %i.kv, ptr %.sroa.4132.0..sroa_idx, align 8, !dbg !76329
  store ptr %i.aj, ptr %i.kx, align 16, !dbg !76329
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4137.0..sroa_idx, align 8, !dbg !76329
  %i.ld = load ptr, ptr %i.db, align 8, !dbg !76339, !nonnull !11, !noundef !11
  %i.le = load ptr, ptr %i.ky, align 8, !dbg !76339, !nonnull !11, !align !3633, !noundef !11
  %i.lf = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.ld, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.le, ptr noundef nonnull @576, ptr noundef nonnull %i.ai)
          to label %bb.cf unwind label %.loopexit612, !dbg !76342

._crit_edge626:                                   ; preds = %bb.ci, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !76343
  %i.lg = icmp ugt i64 %i.ay, 65535, !dbg !76346
  br i1 %i.lg, label %.invoke, label %bb.cd, !dbg !76346, !prof !32

bb.cd:                                            ; preds = %._crit_edge626
  %i.lh = trunc nuw i64 %i.ay to i16, !dbg !76349
  store ptr @558, ptr %i.ag, align 8, !dbg !76343
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !76343
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4127.0..sroa_idx, align 8, !dbg !76343
  %i.li = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !76343
  store ptr null, ptr %i.li, align 8, !dbg !76343
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !76343
  store i16 %i.lh, ptr %.sroa.4154.0..sroa_idx, align 8, !dbg !76343
  %i.lj = load ptr, ptr %i.db, align 8, !dbg !76350, !nonnull !11, !noundef !11
  %i.lk = getelementptr inbounds nuw i8, ptr %i.db, i64 8, !dbg !76350
  %i.ll = load ptr, ptr %i.lk, align 8, !dbg !76350, !nonnull !11, !align !3633, !noundef !11
  %i.lm = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.lj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ll, ptr noundef nonnull @578, ptr noundef nonnull %i.ag)
          to label %bb.ce unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76353

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !76354
  br label %bb.s, !dbg !76355

bb.cf:                                            ; preds = %.lr.ph625.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !76356
  br i1 %i.lf, label %bb.cj, label %bb.cg, !dbg !76357

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !76360
  %i.ln = load i64, ptr %.sroa.0589.0622, align 8, !dbg !76361, !noundef !11
  %i.lo = load <2 x ptr>, ptr %i.bc, align 8, !dbg !76362
  store <2 x ptr> %i.lo, ptr %i.ah, align 16, !dbg !76363, !alias.scope !76365
  store i64 %i.ln, ptr %.sroa.5.0..sroa_idx.i574, align 16, !dbg !76363, !alias.scope !76365
  %i.lp = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatNtB5_9IRDisplay7__format(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah, ptr noalias noundef align 8 dereferenceable(24) %i.db, i64 noundef %i.da, ptr noalias noundef align 8 dereferenceable(64) %i.la)
          to label %bb.ch unwind label %.loopexit612, !dbg !76368

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !76369
  br i1 %i.lp, label %bb.cj, label %bb.ci, !dbg !76370

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !76371
  %i.lq = icmp eq ptr %i.lb, %i.ks, !dbg !76322
  br i1 %i.lq, label %._crit_edge626, label %.lr.ph625.split, !dbg !76327

bb.cj:                                            ; preds = %bb.ch, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !76371
  br label %bb.u, !dbg !76372

bb.ck:                                            ; preds = %bb.j
  br i1 %i.dm, label %bb.u, label %bb.cl, !dbg !76374

bb.cl:                                            ; preds = %bb.ck
  %i.lr = add nsw i64 %i.ay, 4, !dbg !76375
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bd, i64 16, !dbg !76376
  %i.lt = load ptr, ptr %i.ls, align 16, !dbg !76376, !nonnull !11, !noundef !11 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bd, i64 24, !dbg !76389
  %i.lv = load i64, ptr %i.lu, align 8, !dbg !76389, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.lv, 3, !dbg !76390
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 %.idx, !dbg !76390
  %i.lx = icmp eq i64 %i.lv, 0, !dbg !76398
  br i1 %i.lx, label %._crit_edge, label %.lr.ph, !dbg !76403

.lr.ph:                                           ; preds = %bb.cl
  %i.ly = icmp ugt i64 %i.ba, 65535
  %i.lz = trunc nuw i64 %i.ba to i16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.mb = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.4399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.mc = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.5.0..sroa_idx.i579 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.me = load ptr, ptr %i.md, align 8, !nonnull !11, !align !3633
  br i1 %i.ly, label %.lr.ph.split.us, label %.lr.ph.split, !prof !32

.lr.ph.split.us:                                  ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !76404
  store i64 0, ptr %i.l, align 8, !dbg !76404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !76405
  br label %.invoke, !dbg !76409

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.cr
  %.sroa.8594.0621 = phi i64 [ %i.mg, %bb.cr ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.0592.0620 = phi ptr [ %i.mf, %bb.cr ], [ %i.lt, %.lr.ph ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0592.0620, i64 8, !dbg !76412 ; 2 uses
  %i.mg = add nuw nsw i64 %.sroa.8594.0621, 1, !dbg !76414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !76404
  store i64 %.sroa.8594.0621, ptr %i.l, align 8, !dbg !76404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !76405
  store <2 x ptr> <ptr @558, ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan>, ptr %i.k, align 16, !dbg !76405
  store ptr null, ptr %i.ma, align 16, !dbg !76405
  store i16 %i.lz, ptr %.sroa.4394.0..sroa_idx, align 8, !dbg !76405
  store ptr %i.l, ptr %i.mb, align 16, !dbg !76405
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4399.0..sroa_idx, align 8, !dbg !76405
  %i.mh = load ptr, ptr %i.dh, align 8, !dbg !76415, !nonnull !11, !noundef !11
  %i.mi = load ptr, ptr %i.mc, align 8, !dbg !76415, !nonnull !11, !align !3633, !noundef !11
  %i.mj = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.mh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mi, ptr noundef nonnull @576, ptr noundef nonnull %i.k)
          to label %bb.co unwind label %.loopexit.split-lp613.loopexit, !dbg !76418

._crit_edge:                                      ; preds = %bb.cr, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !76419
  %i.mk = icmp ugt i64 %i.ay, 65535, !dbg !76422
  br i1 %i.mk, label %.invoke, label %bb.cm, !dbg !76422, !prof !32

bb.cm:                                            ; preds = %._crit_edge
  %i.ml = trunc nuw i64 %i.ay to i16, !dbg !76425
  store ptr @558, ptr %i.i, align 8, !dbg !76419
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !76419
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4389.0..sroa_idx, align 8, !dbg !76419
  %i.mm = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !76419
  store ptr null, ptr %i.mm, align 8, !dbg !76419
  %.sroa.4416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !76419
  store i16 %i.ml, ptr %.sroa.4416.0..sroa_idx, align 8, !dbg !76419
  %i.mn = load ptr, ptr %i.dh, align 8, !dbg !76426, !nonnull !11, !noundef !11
  %i.mo = getelementptr inbounds nuw i8, ptr %i.dh, i64 8, !dbg !76426
  %i.mp = load ptr, ptr %i.mo, align 8, !dbg !76426, !nonnull !11, !align !3633, !noundef !11
  %i.mq = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.mn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mp, ptr noundef nonnull @581, ptr noundef nonnull %i.i)
          to label %bb.cn unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76429

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !76430
  br label %bb.s, !dbg !76431

bb.co:                                            ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !76432
  br i1 %i.mj, label %bb.cs, label %bb.cp, !dbg !76433

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !76436
  %i.mr = load i64, ptr %.sroa.0592.0620, align 8, !dbg !76437, !noundef !11
  %i.ms = load <2 x ptr>, ptr %i.bc, align 8, !dbg !76438
  store <2 x ptr> %i.ms, ptr %i.j, align 16, !dbg !76439, !alias.scope !76441
  store i64 %i.mr, ptr %.sroa.5.0..sroa_idx.i579, align 16, !dbg !76439, !alias.scope !76441
  %i.mt = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatNtB5_9IRDisplay7__format(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias noundef align 8 dereferenceable(24) %i.dh, i64 noundef %i.lr, ptr noalias noundef align 8 dereferenceable(64) %i.me)
          to label %bb.cq unwind label %.loopexit.split-lp613.loopexit, !dbg !76444

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !76445
  br i1 %i.mt, label %bb.cs, label %bb.cr, !dbg !76446

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !76447
  %i.mu = icmp eq ptr %i.mf, %i.lw, !dbg !76398
  br i1 %i.mu, label %._crit_edge, label %.lr.ph.split, !dbg !76403

bb.cs:                                            ; preds = %bb.cq, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !76447
  br label %bb.u, !dbg !76448

bb.ct:                                            ; preds = %bb.k
  br i1 %i.ds, label %bb.u, label %bb.cu, !dbg !76450

bb.cu:                                            ; preds = %bb.ct
  %i.mv = load ptr, ptr %i.dn, align 8, !dbg !76451, !nonnull !11, !noundef !11
  %i.mw = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !76451 ; 4 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !dbg !76451, !nonnull !11, !align !3633, !noundef !11
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 24, !dbg !76451
  %i.mz = load ptr, ptr %i.my, align 8, !dbg !76451, !invariant.load !11, !nonnull !11
  %i.na = invoke noundef zeroext i1 %i.mz(ptr noundef nonnull %i.mv, ptr noalias noundef nonnull readonly captures(address, read_provenance) @584, i64 noundef 1)
          to label %bb.cv unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76455

bb.cv:                                            ; preds = %bb.cu
  br i1 %i.na, label %bb.u, label %bb.cw, !dbg !76456

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !76459
  %i.nb = icmp ugt i64 %i.ay, 65535, !dbg !76462
  br i1 %i.nb, label %.invoke, label %bb.cx, !dbg !76462, !prof !32

bb.cx:                                            ; preds = %bb.cw
  %i.nc = trunc nuw i64 %i.ay to i16, !dbg !76465 ; 3 uses
  store ptr @558, ptr %i.h, align 8, !dbg !76459
  %.sroa.4445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !76459
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4445.0..sroa_idx, align 8, !dbg !76459
  %i.nd = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !76459
  store ptr null, ptr %i.nd, align 8, !dbg !76459
  %.sroa.4452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !76459
  store i16 %i.nc, ptr %.sroa.4452.0..sroa_idx, align 8, !dbg !76459
  %i.ne = load ptr, ptr %i.dn, align 8, !dbg !76466, !nonnull !11, !noundef !11
  %i.nf = load ptr, ptr %i.mw, align 8, !dbg !76466, !nonnull !11, !align !3633, !noundef !11
  %i.ng = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.ne, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nf, ptr noundef nonnull @565, ptr noundef nonnull %i.h)
          to label %bb.cy unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76469

.invoke:                                          ; preds = %bb.cw, %._crit_edge, %._crit_edge626, %bb.ad, %bb.ae, %bb.x, %.lr.ph625.split.us, %.lr.ph.split.us
  %i.nh = phi ptr [ @582, %._crit_edge ], [ @583, %.lr.ph.split.us ], [ @579, %._crit_edge626 ], [ @580, %.lr.ph625.split.us ], [ @572, %bb.ad ], [ @568, %bb.ae ], [ @562, %bb.x ], [ @586, %bb.cw ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @560, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nh) #41
          to label %.cont unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76470

.cont:                                            ; preds = %.invoke
  unreachable

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !76472
  br i1 %i.ng, label %bb.u, label %bb.cz, !dbg !76473

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !76476
  %i.ni = getelementptr inbounds nuw i8, ptr %i.bd, i64 24, !dbg !76477
  %i.nj = load i64, ptr %i.ni, align 8, !dbg !76477, !noundef !11
  %i.nk = load <2 x ptr>, ptr %i.bc, align 8, !dbg !76478
  store <2 x ptr> %i.nk, ptr %i.g, align 16, !dbg !76479, !alias.scope !76481
  %.sroa.5.0..sroa_idx.i581 = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !76479
  store i64 %i.nj, ptr %.sroa.5.0..sroa_idx.i581, align 16, !dbg !76479, !alias.scope !76481
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !76484
  %i.nm = load ptr, ptr %i.nl, align 8, !dbg !76484, !nonnull !11, !align !3633, !noundef !11 ; 2 uses
  %i.nn = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatNtB5_9IRDisplay7__format(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias noundef align 8 dereferenceable(24) %i.dn, i64 noundef %i.ba, ptr noalias noundef align 8 dereferenceable(64) %i.nm)
          to label %bb.da unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76485

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !76486
  br i1 %i.nn, label %bb.u, label %bb.db, !dbg !76487

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !76488
  store ptr @558, ptr %i.f, align 8, !dbg !76488
  %.sroa.4475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !76488
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4475.0..sroa_idx, align 8, !dbg !76488
  %i.no = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !76488
  store ptr null, ptr %i.no, align 8, !dbg !76488
  %.sroa.4452.0..sroa_idx453 = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !76488
  store i16 %i.nc, ptr %.sroa.4452.0..sroa_idx453, align 8, !dbg !76488
  %i.np = load ptr, ptr %i.dn, align 8, !dbg !76491, !nonnull !11, !noundef !11
  %i.nq = load ptr, ptr %i.mw, align 8, !dbg !76491, !nonnull !11, !align !3633, !noundef !11
  %i.nr = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.np, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nq, ptr noundef nonnull @566, ptr noundef nonnull %i.f)
          to label %bb.dc unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76493

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !76494
  br i1 %i.nr, label %bb.u, label %bb.dd, !dbg !76495

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !76497
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bd, i64 32, !dbg !76498
  %i.nt = load i64, ptr %i.ns, align 16, !dbg !76498, !noundef !11
  %i.nu = load <2 x ptr>, ptr %i.bc, align 8, !dbg !76499
  store <2 x ptr> %i.nu, ptr %i.e, align 16, !dbg !76500, !alias.scope !76502
  %.sroa.5.0..sroa_idx.i583 = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !76500
  store i64 %i.nt, ptr %.sroa.5.0..sroa_idx.i583, align 16, !dbg !76500, !alias.scope !76502
  %i.nv = invoke fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatNtB5_9IRDisplay7__format(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef align 8 dereferenceable(24) %i.dn, i64 noundef %i.ba, ptr noalias noundef align 8 dereferenceable(64) %i.nm)
          to label %bb.de unwind label %.loopexit.split-lp613.loopexit.split-lp, !dbg !76505

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !76506
  br i1 %i.nv, label %bb.u, label %bb.df, !dbg !76507

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !76508
  store ptr @558, ptr %i.d, align 8, !dbg !76508
  %.sroa.4491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !76508
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4491.0..sroa_idx, align 8, !dbg !76508
  %i.nw = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !76508
  store ptr null, ptr %i.nw, align 8, !dbg !76508
  %.sroa.4452.0..sroa_idx455 = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !76508
end_hunk_1
