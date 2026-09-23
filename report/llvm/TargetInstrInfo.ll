Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetInstrInfo?download=true
inline.NumInlined: 2985
inline.NumDeleted: 1468
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm15TargetInstrInfo17foldMemoryOperandERNS_12MachineInstrENS_8ArrayRefIjEES2_RPS1_PNS_13LiveIntervalsEPNS_10VirtRegMapE:bb.a
  br label %_ZNK4llvm12MachineInstr11memoperandsEv.exit64

thread-pre-split:                                 ; preds = %_ZNK4llvm12MachineInstr17memoperands_emptyEv.exit
  %i.bc = and i64 %i.ak, -8
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.bd, align 8, !tbaa !157
  %i.bg = sext i32 %i.bf to i64
  br label %_ZNK4llvm12MachineInstr11memoperandsEv.exit64

_ZNK4llvm12MachineInstr11memoperandsEv.exit64:    ; preds = %bb.l, %thread-pre-split
  %.sroa.0.1.i60 = phi ptr [ %i.aj, %bb.l ], [ %i.be, %thread-pre-split ]
  %.sroa.7.1.i61 = phi i64 [ 1, %bb.l ], [ %i.bg, %thread-pre-split ]
  call void @_ZN4llvm12MachineInstr10setMemRefsERNS_15MachineFunctionENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(80) %.05475, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr nonnull %.sroa.0.1.i60, i64 %.sroa.7.1.i61) #27
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !71 ; 5 uses
  %i.bj = icmp ugt i64 %i.bi, 7
  br i1 %i.bj, label %bb.m, label %_ZNK4llvm12MachineInstr15memoperands_endEv.exit

bb.m:                                             ; preds = %_ZNK4llvm12MachineInstr11memoperandsEv.exit64
  %i.bk = and i64 %i.bi, 7
  switch i64 %i.bk, label %_ZNK4llvm12MachineInstr15memoperands_endEv.exit [
    i64 0, label %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.thread.thread
    i64 3, label %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.thread.thread94
  ]

_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.thread.thread94: ; preds = %bb.m
  %i.bl = and i64 %i.bi, -8
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = and i64 %i.bi, -8
  %i.bp = inttoptr i64 %i.bo to ptr               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bp, align 8, !tbaa !157
  %i.bs = sext i32 %i.br to i64
  br label %_ZNK4llvm12MachineInstr15memoperands_endEv.exit

_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.thread.thread: ; preds = %bb.m
  %i.bt = inttoptr i64 %i.bi to ptr
  store ptr %i.bt, ptr %i.bh, align 8, !tbaa !71
  br label %_ZNK4llvm12MachineInstr15memoperands_endEv.exit

_ZNK4llvm12MachineInstr15memoperands_endEv.exit:  ; preds = %bb.m, %_ZNK4llvm12MachineInstr11memoperandsEv.exit64, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.thread.thread, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.thread.thread94
  %.sroa.0.1.i.i81 = phi ptr [ %i.bh, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.thread.thread ], [ null, %_ZNK4llvm12MachineInstr11memoperandsEv.exit64 ], [ %i.bn, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.thread.thread94 ], [ null, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i65 = phi ptr [ %i.bh, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.thread.thread ], [ null, %_ZNK4llvm12MachineInstr11memoperandsEv.exit64 ], [ %i.bq, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.thread.thread94 ], [ null, %bb.m ]
  %.sroa.7.1.i.i66 = phi i64 [ 1, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.thread.thread ], [ 0, %_ZNK4llvm12MachineInstr11memoperandsEv.exit64 ], [ %i.bs, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.thread.thread94 ], [ 0, %bb.m ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i.i65, i64 %.sroa.7.1.i.i66 ; 2 uses
  %.not5985 = icmp eq ptr %.sroa.0.1.i.i81, %i.bu
  br i1 %.not5985, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm12MachineInstr15memoperands_endEv.exit, %.lr.ph
  %.086 = phi ptr [ %i.bw, %.lr.ph ], [ %.sroa.0.1.i.i81, %_ZNK4llvm12MachineInstr15memoperands_endEv.exit ] ; 2 uses
  %i.bv = load ptr, ptr %.086, align 8, !tbaa !159
  call void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.05475, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef %i.bv) #27
  %i.bw = getelementptr inbounds nuw i8, ptr %.086, i64 8 ; 2 uses
  %.not59 = icmp eq ptr %i.bw, %i.bu
  br i1 %.not59, label %.thread, label %.lr.ph, !llvm.loop !504

.thread:                                          ; preds = %.lr.ph, %_ZNK4llvm12MachineInstr15memoperands_endEv.exit, %bb.c, %_ZNK4llvm12MachineInstr11memoperandsEv.exit, %bb.f, %bb.e
  %.053 = phi ptr [ null, %bb.f ], [ %i.ae, %bb.e ], [ null, %bb.c ], [ %.05475, %_ZNK4llvm12MachineInstr11memoperandsEv.exit ], [ %.05475, %_ZNK4llvm12MachineInstr15memoperands_endEv.exit ], [ %.05475, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %.053
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK4llvm15TargetInstrInfo28getPatchpointUnfoldableRangeERKNS_12MachineInstrE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StackMapOpers", align 8 ; 3 uses
  %3 = alloca %"class.llvm::PatchPointOpers", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !187
  switch i32 %i.b, label %bb.e [
    i32 27, label %bb.b
    i32 29, label %bb.c
    i32 33, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN4llvm13StackMapOpersC1EPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN4llvm15PatchPointOpersC1EPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull %1) #27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !506, !range !25, !noundef !26 ; 2 uses
  %narrow.i = add nuw nsw i8 %i.d, 5
  %i.e = zext nneg i8 %narrow.i to i32
  %i.f = load ptr, ptr %3, align 8, !tbaa !507
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !152
  %i.i = zext nneg i8 %i.d to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load i64, ptr %i.k, align 8, !tbaa !71
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.m, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.o = tail call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !150
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 11
  %i.s = load i8, ptr %i.r, align 1, !tbaa !508
  %i.t = zext i8 %i.s to i32
  %i.u = add i32 %i.o, %i.t
  %i.v = tail call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !150
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 11
  %i.y = load i8, ptr %i.x, align 1, !tbaa !508
  %i.z = zext i8 %i.y to i32
  %i.aa = add i32 %i.v, %i.z                      ; 2 uses
  %i.ab = add i32 %i.aa, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !152
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !71
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = add i32 %i.aa, 4
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = zext i32 %i.u to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.022.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.al, %bb.d ]
  %.sroa.423.0 = phi i32 [ 2, %bb.b ], [ %i.n, %bb.c ], [ %i.ak, %bb.d ]
  %.sroa.423.0.insert.ext = zext i32 %.sroa.423.0 to i64
  %.sroa.423.0.insert.shift = shl nuw i64 %.sroa.423.0.insert.ext, 32
  %.sroa.022.0.insert.insert = or disjoint i64 %.sroa.423.0.insert.shift, %.sroa.022.0
  ret i64 %.sroa.022.0.insert.insert
}

declare void @_ZN4llvm13StackMapOpersC1EPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #9

declare void @_ZN4llvm15PatchPointOpersC1EPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef) unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm15TargetInstrInfo17foldMemoryOperandERNS_12MachineInstrENS_8ArrayRefIjEEiRPS1_PNS_13LiveIntervalsEPNS_10VirtRegMapE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %2, i64 %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #3 align 2 {
bb.a:
  %8 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %9 = alloca %"struct.llvm::AAMDNodes", align 8  ; 4 uses
  %10 = alloca %"class.std::optional.317", align 8 ; 5 uses
  %11 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %.idx = shl i64 %3, 2                           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not153 = icmp eq i64 %3, 0
  br i1 %.not153, label %.preheader.thread, label %.lr.ph

.preheader.thread:                                ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !148  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !291
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !152  ; 3 uses
  %i.j = add i64 %.idx, -4                        ; 3 uses
  %i.k = lshr exact i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.l, 9223372036854775806
  br label %bb.b

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  %i.n = and i64 %i.j, 4
  %lcmp.mod.not.not = icmp eq i64 %i.n, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.096155.epil.init = phi ptr [ %2, %.lr.ph ], [ %i.au, %._crit_edge.unr-lcssa ]
  %.0154.epil.init = phi i16 [ 0, %.lr.ph ], [ %i.at, %._crit_edge.unr-lcssa ]
  %lcmp.mod177 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod177)
  %i.o = load i32, ptr %.096155.epil.init, align 4, !tbaa !154
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.p
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, 16777216
  %.not151.epil = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not151.epil, i16 1, i16 2
  %i.u = or i16 %i.t, %.0154.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa175 = phi i16 [ %i.at, %._crit_edge.unr-lcssa ], [ %i.u, %.epil.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !148  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !291 ; 4 uses
  %12 = and i16 %.lcssa175, 2
  %.not104 = icmp eq i16 %12, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  br i1 %.not104, label %.lr.ph159, label %bb.c

.lr.ph159:                                        ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.d

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.096155 = phi ptr [ %2, %.lr.ph.new ], [ %i.au, %bb.b ] ; 3 uses
  %.0154 = phi i16 [ 0, %.lr.ph.new ], [ %i.at, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.af = load i32, ptr %.096155, align 4, !tbaa !154
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 16777216
  %.not151 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not151, i16 1, i16 2
  %i.al = or i16 %i.ak, %.0154
  %i.am = getelementptr inbounds nuw i8, ptr %.096155, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !154
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = and i32 %i.aq, 16777216
  %.not151.1 = icmp eq i32 %i.ar, 0
  %i.as = select i1 %.not151.1, i16 1, i16 2
  %i.at = or i16 %i.as, %i.al                     ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.096155, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.b

bb.c:                                             ; preds = %._crit_edge
  %i.av = load i32, ptr %i.ac, align 8, !tbaa !311
  %i.aw = add i32 %i.av, %4
  %i.ax = zext i32 %i.aw to i64
  %i.ay = load ptr, ptr %i.ab, align 8, !tbaa !312
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !315
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph159, %bb.g
  %.097158 = phi ptr [ %2, %.lr.ph159 ], [ %i.bv, %bb.g ] ; 2 uses
  %.0139157 = phi i64 [ 0, %.lr.ph159 ], [ %.sroa.speculated, %bb.g ]
  %i.bc = load i32, ptr %.097158, align 4, !tbaa !154
  %i.bd = load i32, ptr %i.ac, align 8, !tbaa !311
  %i.be = add i32 %i.bd, %4
  %i.bf = zext i32 %i.be to i64
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !312
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !315 ; 2 uses
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !152
  %i.bl = zext i32 %i.bc to i64
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = lshr i32 %i.bn, 8
  %i.bp = and i32 %i.bo, 4095                     ; 2 uses
  %.not106 = icmp eq i32 %i.bp, 0
  br i1 %.not106, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = load ptr, ptr %i.ae, align 8, !tbaa !54, !nonnull !26, !align !55
  %i.br = tail call noundef i32 @_ZNK4llvm18TargetRegisterInfo16getSubRegIdxSizeEj(ptr noundef nonnull align 8 dereferenceable(316) %i.bq, i32 noundef %i.bp) #27 ; 3 uses
  %.not107 = icmp ne i32 %i.br, 0
  %i.bs = and i32 %i.br, 7
  %.not108 = icmp eq i32 %i.bs, 0
  %or.cond = and i1 %.not107, %.not108
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = lshr exact i32 %i.br, 3
  %i.bu = zext nneg i32 %i.bt to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.0141 = phi i64 [ %i.bj, %bb.d ], [ %i.bu, %bb.f ], [ %i.bj, %bb.e ]
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %.0139157, i64 %.0141) ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.097158, i64 4 ; 2 uses
  %.not105 = icmp eq ptr %i.bv, %i.a
  br i1 %.not105, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.g, %.preheader.thread, %bb.c
  %i.bw = phi ptr [ %i.aa, %bb.c ], [ %i.g, %.preheader.thread ], [ %i.aa, %bb.g ] ; 2 uses
  %i.bx = phi ptr [ %i.y, %bb.c ], [ %i.e, %.preheader.thread ], [ %i.y, %bb.g ] ; 7 uses
  %i.by = phi ptr [ %i.w, %bb.c ], [ %i.c, %.preheader.thread ], [ %i.w, %bb.g ] ; 4 uses
  %.0.lcssa170 = phi i16 [ %.lcssa175, %bb.c ], [ 0, %.preheader.thread ], [ %.lcssa175, %bb.g ] ; 2 uses
  %.1140 = phi i64 [ %i.bb, %bb.c ], [ 0, %.preheader.thread ], [ %.sroa.speculated, %bb.g ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !187 ; 2 uses
  switch i32 %i.ca, label %bb.i [
    i32 27, label %bb.h
    i32 29, label %bb.h
    i32 33, label %bb.h
  ]

bb.h:                                             ; preds = %.loopexit, %.loopexit, %.loopexit
  %i.cb = tail call fastcc noundef ptr @_ZL14foldPatchpointRN4llvm15MachineFunctionERNS_12MachineInstrENS_8ArrayRefIjEEiRKNS_15TargetInstrInfoE(ptr noundef nonnull align 8 dereferenceable(1065) %i.bx, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %2, i64 %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(112) %0) ; 8 uses
  %.not109 = icmp eq ptr %i.cb, null
  br i1 %.not109, label %.thread, label %.thread144

.thread144:                                       ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull %i.cb) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %1, ptr %i.cf, align 8, !tbaa !96
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.cb, align 8
  %i.cg = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.ch = or disjoint i64 %i.cg, %i.cd
  store i64 %i.ch, ptr %i.cb, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cb, ptr %i.ci, align 8, !tbaa !96
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.cj = ptrtoint ptr %i.cb to i64
  %i.ck = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.cl = or disjoint i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %1, align 8
  br label %bb.l

bb.i:                                             ; preds = %.loopexit
  %i.cm = add i32 %i.ca, -1
  %spec.select.i = icmp ult i32 %i.cm, 2
  br i1 %spec.select.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = tail call fastcc noundef ptr @_ZL23foldInlineAsmMemOperandRN4llvm12MachineInstrENS_8ArrayRefIjEEiRKNS_15TargetInstrInfoE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %2, i64 %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

bb.k:                                             ; preds = %bb.i
  %i.co = load ptr, ptr %0, align 8, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 704
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call noundef ptr %i.cq(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(1065) %i.bx, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %2, i64 %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6, ptr noundef %7) #27 ; 2 uses
  %.not110 = icmp eq ptr %i.cr, null
  br i1 %.not110, label %.thread, label %bb.l

bb.l:                                             ; preds = %.thread144, %bb.k
  %.098147 = phi ptr [ %i.cb, %.thread144 ], [ %i.cr, %bb.k ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !71 ; 4 uses
  %i.cu = icmp ugt i64 %i.ct, 7
  br i1 %i.cu, label %bb.m, label %_ZNK4llvm12MachineInstr11memoperandsEv.exit

bb.m:                                             ; preds = %bb.l
  %i.cv = and i64 %i.ct, 7
  switch i64 %i.cv, label %_ZNK4llvm12MachineInstr11memoperandsEv.exit [
    i64 0, label %bb.n
    i64 3, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.cw = inttoptr i64 %i.ct to ptr
  store ptr %i.cw, ptr %i.cs, align 8, !tbaa !71
  br label %_ZNK4llvm12MachineInstr11memoperandsEv.exit

bb.o:                                             ; preds = %bb.m
  %i.cx = and i64 %i.ct, -8
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load i32, ptr %i.cy, align 8, !tbaa !157
  %i.db = sext i32 %i.da to i64
  br label %_ZNK4llvm12MachineInstr11memoperandsEv.exit

_ZNK4llvm12MachineInstr11memoperandsEv.exit:      ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %.sroa.0.1.i = phi ptr [ %i.cs, %bb.n ], [ null, %bb.l ], [ %i.cz, %bb.o ], [ null, %bb.m ]
  %.sroa.7.1.i = phi i64 [ 1, %bb.n ], [ 0, %bb.l ], [ %i.db, %bb.o ], [ 0, %bb.m ]
  tail call void @_ZN4llvm12MachineInstr10setMemRefsERNS_15MachineFunctionENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(80) %.098147, ptr noundef nonnull align 8 dereferenceable(1065) %i.bx, ptr %.sroa.0.1.i, i64 %.sroa.7.1.i) #27
  call void @_ZN4llvm18MachinePointerInfo13getFixedStackERNS_15MachineFunctionEil(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1065) %i.bx, i32 noundef %4, i64 noundef 0) #27
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !311
  %i.df = add i32 %i.de, %4
  %i.dg = zext i32 %i.df to i64
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !312
  %i.di = getelementptr inbounds nuw [40 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %.sroa.0.0.copyload.i = load i8, ptr %i.dj, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 40, i1 false)
  %i.dk = icmp ugt i64 %.1140, 4611686018427387899
  %i.dl = select i1 %i.dk, i64 -4611686018427387906, i64 %.1140
  %i.dm = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandENS_18MachinePointerInfoENS_17MachineMemOperand5FlagsENS_12LocationSizeENS_5AlignERKNS_9AAMDNodesEPKNS_6MDNodeEhNS_14AtomicOrderingESC_(ptr noundef nonnull align 8 dereferenceable(1065) %i.bx, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %8, i16 noundef zeroext %.0.lcssa170, i64 %i.dl, i8 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.098147, ptr noundef nonnull align 8 dereferenceable(1065) %i.bx, ptr noundef %i.dm) #27
  call void @_ZN4llvm12MachineInstr17cloneInstrSymbolsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.098147, ptr noundef nonnull align 8 dereferenceable(1065) %i.bx, ptr noundef nonnull align 8 dereferenceable(80) %1) #27
  br label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

.thread:                                          ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.dn = load i32, ptr %i.bz, align 4, !tbaa !187, !noalias !511
  %i.do = icmp eq i32 %i.dn, 20
  br i1 %i.do, label %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.thread, label %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit

_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit: ; preds = %.thread
  %i.dp = load ptr, ptr %0, align 8, !tbaa !17, !noalias !511
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 464
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !511
  call void %i.dr(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.317") align 8 %10, ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #27, !inline_history !2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !317, !range !25
  %i.ds = trunc nuw i8 %.pre to i1
  br i1 %i.ds, label %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.thread, label %.critedge

_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.thread: ; preds = %.thread, %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit
  %.not111 = icmp eq i64 %3, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %.not111, label %bb.p, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

.critedge:                                        ; preds = %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

bb.p:                                             ; preds = %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.thread
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.du = load i24, ptr %i.dt, align 8
  %.not.i = icmp eq i24 %i.du, 2
  br i1 %.not.i, label %bb.q, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

bb.q:                                             ; preds = %bb.p
  %i.dv = load i32, ptr %2, align 4, !tbaa !154   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !152 ; 2 uses
  %i.dy = zext i32 %i.dv to i64
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.dx, i64 %i.dy ; 2 uses
  %i.ea = sub i32 1, %i.dv
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.dx, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.dz, align 8
  %i.ee = and i32 %i.ed, 1048320
  %.not22.i = icmp eq i32 %i.ee, 0
  br i1 %.not22.i, label %bb.r, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

bb.r:                                             ; preds = %bb.q
  %i.ef = load i32, ptr %i.ec, align 8
  %i.eg = and i32 %i.ef, 1048320
  %.not23.i = icmp eq i32 %i.eg, 0
  br i1 %.not23.i, label %bb.s, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

bb.s:                                             ; preds = %bb.r
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !71
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !71
  %i.el = call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !318
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.ep = and i32 %i.ei, 2147483647
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !29 ; 2 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.eq
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.es, align 8
  %i.et = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.eu = inttoptr i64 %i.et to ptr               ; 7 uses
  %i.ev = load i32, ptr %i.ej, align 4, !tbaa !71 ; 3 uses
  %i.ew = add i32 %i.ev, -1
  %i.ex = icmp ult i32 %i.ew, 1073741823
  br i1 %i.ex, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ey = lshr i32 %i.ev, 3                       ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 18
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !512
  %i.fb = zext i16 %i.fa to i32
  %.not.i.i = icmp samesign ult i32 %i.ey, %i.fb
  br i1 %.not.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i: ; preds = %bb.t
  %i.fc = and i32 %i.ev, 7
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !513
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ff
  %i.fh = zext nneg i32 %i.ey to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !71
  %i.fk = zext i8 %i.fj to i32
  %i.fl = shl nuw nsw i32 1, %i.fc
  %i.fm = and i32 %i.fl, %i.fk
  %.fr.i = freeze i32 %i.fm
  %.not4.i = icmp eq i32 %.fr.i, 0
  br i1 %.not4.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %_ZL11canFoldCopyRKN4llvm12MachineInstrERKNS_15TargetInstrInfoEj.exit

bb.u:                                             ; preds = %bb.s
end_hunk_0
