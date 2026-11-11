Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abc?download=true
inline.NumInlined: 2413
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Abc_NtkPrintSop

declare void @Abc_NtkPrintFactor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NodePrintLevel(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @Abc_NtkPrintLevel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkPrintStrSupports(ptr noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Sim_ComputeFunSupp(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -2147483646, -2147483648) i32 @Abc_TtReadHex(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #18 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !99      ; 2 uses
  %i.b = icmp eq i8 %i.a, 48
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !99
  %i.e = icmp eq i8 %i.d, 120
  %spec.select.idx = select i1 %i.e, i64 2, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 2 uses
  %.pre = load i8, ptr %spec.select, align 1, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i8 [ %i.a, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %.038 = phi ptr [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.g = add i8 %i.f, -58
  %or.cond.i46 = icmp ult i8 %i.g, -10
  %i.h = and i8 %i.f, -33
  %i.i = add i8 %i.h, -71
  %i.j = icmp ult i8 %i.i, -6
  %narrow.i.not47 = and i1 %or.cond.i46, %i.j
  br i1 %narrow.i.not47, label %.lr.ph51.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ]
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.038, i64 %indvars.iv.next
  %i.l = load i8, ptr %i.k, align 1, !tbaa !99    ; 2 uses
  %i.m = add i8 %i.l, -58
  %or.cond.i = icmp ult i8 %i.m, -10
  %i.n = and i8 %i.l, -33
  %i.o = add i8 %i.n, -71
  %i.p = icmp ult i8 %i.o, -6
  %narrow.i.not = and i1 %or.cond.i, %i.p
  br i1 %narrow.i.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1559

._crit_edge:                                      ; preds = %.lr.ph
  %indvars = trunc i64 %indvars.iv.next to i32    ; 6 uses
  switch i32 %indvars, label %.thread71 [
    i32 1, label %bb.d
    i32 0, label %.lr.ph51.preheader
  ]

bb.d:                                             ; preds = %._crit_edge
  %switch.tableidx = add i8 %i.f, -48             ; 4 uses
  %i.q = icmp ult i8 %switch.tableidx, 23
  br i1 %i.q, label %switch.hole_check, label %.lr.ph51.preheader

.thread71:                                        ; preds = %._crit_edge
  %i.r = add i32 %indvars, -1
  %i.s = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.r, i1 false) ; 2 uses
  %i.t = sub nuw nsw i32 34, %i.s                 ; 2 uses
  %i.u = icmp ult i32 %indvars, 17
  br i1 %i.u, label %.lr.ph51.preheader, label %.thread

.thread:                                          ; preds = %.thread71
  %i.v = sub nsw i32 28, %i.s
  %i.w = shl nuw i32 1, %i.v
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  br label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %._crit_edge, %switch.hole_check, %bb.d, %.thread, %bb.c, %.thread71
  %i.z = phi i64 [ %i.y, %.thread ], [ 8, %bb.d ], [ 8, %.thread71 ], [ 8, %bb.c ], [ 8, %._crit_edge ], [ 8, %switch.hole_check ]
  %i.aa = phi i32 [ %i.t, %.thread ], [ 2, %bb.d ], [ %i.t, %.thread71 ], [ 2, %bb.c ], [ 2, %._crit_edge ], [ 2, %switch.hole_check ] ; 7 uses
  %.0.lcssa6978 = phi i32 [ %indvars, %.thread ], [ 1, %bb.d ], [ %indvars, %.thread71 ], [ 0, %bb.c ], [ %indvars, %._crit_edge ], [ 1, %switch.hole_check ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, i8 0, i64 %i.z, i1 false), !tbaa !100
  %.not = icmp eq i32 %.0.lcssa6978, 0
  br i1 %.not, label %._crit_edge54, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %.lr.ph51.preheader
  %i.ab = sext i32 %.0.lcssa6978 to i64
  %wide.trip.count = zext i32 %.0.lcssa6978 to i64
  %i.ac = getelementptr i8, ptr %.038, i64 %i.ab
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %Abc_TtReadHexDigit.exit
  %indvars.iv62 = phi i64 [ 0, %.lr.ph53.preheader ], [ %indvars.iv.next63, %Abc_TtReadHexDigit.exit ] ; 4 uses
  %i.ad = xor i64 %indvars.iv62, -1
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !99  ; 4 uses
  %i.ag = sext i8 %i.af to i64                    ; 3 uses
  %i.ah = add i8 %i.af, -48
  %or.cond.i42 = icmp ult i8 %i.ah, 10
  br i1 %or.cond.i42, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph53
  %i.ai = add nsw i64 %i.ag, -48
  br label %Abc_TtReadHexDigit.exit

bb.f:                                             ; preds = %.lr.ph53
  %i.aj = add i8 %i.af, -65
  %or.cond5.i = icmp ult i8 %i.aj, 6
  br i1 %or.cond5.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i64 %i.ag, -55
  br label %Abc_TtReadHexDigit.exit

bb.h:                                             ; preds = %bb.f
  %i.al = add i8 %i.af, -97
  %or.cond8.i = icmp ult i8 %i.al, 6
  %i.am = add nsw i64 %i.ag, -87
  %spec.select.i = select i1 %or.cond8.i, i64 %i.am, i64 -1
  br label %Abc_TtReadHexDigit.exit

Abc_TtReadHexDigit.exit:                          ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.ai, %bb.e ], [ %i.ak, %bb.g ], [ %spec.select.i, %bb.h ]
  %i.an = shl i64 %indvars.iv62, 2
  %i.ao = and i64 %i.an, 60
  %i.ap = shl i64 %.0.i, %i.ao
  %i.aq = lshr i64 %indvars.iv62, 4
  %i.ar = and i64 %i.aq, 268435455
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ar ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !100
  %i.au = or i64 %i.at, %i.ap
  store i64 %i.au, ptr %i.as, align 8, !tbaa !100
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge54, label %.lr.ph53, !llvm.loop !1560

._crit_edge54:                                    ; preds = %Abc_TtReadHexDigit.exit, %.lr.ph51.preheader
  %i.av = icmp samesign ult i32 %i.aa, 6
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge54
  %i.aw = load i64, ptr %0, align 8, !tbaa !100   ; 5 uses
  %i.ax = icmp samesign ult i32 %i.aa, 2
  %i.ay = and i64 %i.aw, 3
  %i.az = mul nuw nsw i64 %i.ay, 5
  %.126.i = select i1 %i.ax, i64 %i.az, i64 %i.aw
  %i.ba = icmp samesign ult i32 %i.aa, 3
  %i.bb = and i64 %.126.i, 15
  %i.bc = mul nuw nsw i64 %i.bb, 17
  %.227.i = select i1 %i.ba, i64 %i.bc, i64 %i.aw
  %i.bd = icmp samesign ult i32 %i.aa, 4
  %i.be = and i64 %.227.i, 255
  %i.bf = mul nuw nsw i64 %i.be, 257
  %.328.i = select i1 %i.bd, i64 %i.bf, i64 %i.aw
  %.not85 = icmp eq i32 %i.aa, 5
  %i.bg = and i64 %.328.i, 65535
  %i.bh = mul nuw nsw i64 %i.bg, 65537
  %.429.i = select i1 %.not85, i64 %i.aw, i64 %i.bh
  %i.bi = and i64 %.429.i, 4294967295
  %i.bj = mul nuw i64 %i.bi, 4294967297
  br label %.sink.split

switch.hole_check:                                ; preds = %bb.d
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 4325409, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.lr.ph51.preheader

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bk = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Abc_TtReadHex, i64 %i.bk
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.bl = zext nneg i8 %switch.tableidx to i64
  %switch.gep86 = getelementptr inbounds nuw i8, ptr @switch.table.Abc_TtReadHex.155, i64 %i.bl
  %switch.load87 = load i8, ptr %switch.gep86, align 1
  %switch.ext = zext i8 %switch.load87 to i32
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup, %bb.i
  %.5.i.sink = phi i64 [ %i.bj, %bb.i ], [ %switch.load, %switch.lookup ]
  %.039.ph = phi i32 [ %i.aa, %bb.i ], [ %switch.ext, %switch.lookup ]
  store i64 %.5.i.sink, ptr %0, align 8, !tbaa !100
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %._crit_edge54
  %.039 = phi i32 [ %i.aa, %._crit_edge54 ], [ %.039.ph, %.sink.split ]
  ret i32 %.039
}

declare void @Dau_PrintNpnFunctions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc i64 @Abc_Tt6Stretch(i64 noundef %0, i32 noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = trunc i64 %0 to i1
  %i.c = select i1 %i.b, i64 3, i64 0
  %i.d = icmp samesign ult i32 %1, 2
  %i.e = and i64 %0, 3
  %i.f = select i1 %i.a, i64 %i.c, i64 %i.e
  %i.g = mul nuw nsw i64 %i.f, 5
  %.126 = select i1 %i.d, i64 %i.g, i64 %0
  %i.h = icmp samesign ult i32 %1, 3
  %i.i = and i64 %.126, 15
  %i.j = mul nuw nsw i64 %i.i, 17
  %.227 = select i1 %i.h, i64 %i.j, i64 %0
  %i.k = icmp samesign ult i32 %1, 4
  %i.l = and i64 %.227, 255
  %i.m = mul nuw nsw i64 %i.l, 257
  %.328 = select i1 %i.k, i64 %i.m, i64 %0
  %i.n = icmp samesign ult i32 %1, 5
  %i.o = and i64 %.328, 65535
  %i.p = mul nuw nsw i64 %i.o, 65537
  %.429 = select i1 %i.n, i64 %i.p, i64 %0
  %i.q = icmp ult i32 %1, 6
  %i.r = and i64 %.429, 4294967295
  %i.s = mul nuw i64 %i.r, 4294967297
  %.5 = select i1 %i.q, i64 %i.s, i64 %0
  ret i64 %.5
}

declare double @Cudd_CountMinterm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkSymmetries(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkPrintUnate(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkAutoPrint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkShow6VarFunc(ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @Abc_ObjName(ptr noundef) local_unnamed_addr #10

declare i32 @Abc_NtkToBdd(ptr noundef) local_unnamed_addr #10

declare void @Abc_NodePrintKMap(ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkPrintGates2(ptr noundef) local_unnamed_addr #10

declare void @Abc_NtkPrintGates(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkPrintSharing(ptr noundef) local_unnamed_addr #10

declare i32 @Abc_NtkCrossCut(ptr noundef) local_unnamed_addr #10

declare i32 @Abc_NtkToAig(ptr noundef) local_unnamed_addr #10

declare ptr @Hop_ManConvertAigToTruth(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @Dau_DecTrySets(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Kit_TruthPrintProfile(ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @Kit_DsdPrintCofactors(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Kit_DsdTest(ptr noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_NtkDarPrintCone(ptr noundef) local_unnamed_addr #10

declare void @Abc_NtkPrintMiter(ptr noundef) local_unnamed_addr #10

declare void @Abc_NtkPrintPoEquivs(ptr noundef) local_unnamed_addr #10

declare void @Abc_CexPrintStats(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #15

declare void @Abc_NtkDumpOneCexSpecial(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #15

declare i32 @Nm_ManFindIdByName(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare float @Abc_NtkDelayTrace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkShowFlopDependency(ptr noundef) local_unnamed_addr #10

declare void @Abc_NtkShow(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkShowBdd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkBddDecExplore(ptr noundef) local_unnamed_addr #10

declare void @Abc_NodeShowBdd(ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NodeShowCut(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkCollapse(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_FrameReplaceCurrentNetwork(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @Abc_NtkWriteLogFile(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare ptr @Abc_NtkCollapseSat(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkBalanceExor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkBalance(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkMulti(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkRenode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkDup(ptr noundef) local_unnamed_addr #10

declare ptr @Abc_NtkDarCleanupAig(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_NtkCleanup(ptr noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_NtkSweepBufsInvs(ptr noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_NtkSweep(ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkSetDefaultFxParams(ptr noundef) local_unnamed_addr #10

declare i32 @Abc_NtkGetCubePairNum(ptr noundef) local_unnamed_addr #10

declare i32 @Abc_NtkFxPerform(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_NtkFastExtract(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @Abc_NtkFxuFreeInfo(ptr noundef) local_unnamed_addr #10

declare i32 @Abc_NtkFxchPerform(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_NtkEliminateSpecial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_NtkEliminate(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_NtkEliminate1(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkDsdGlobal(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_NtkDsdLocal(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkSparsify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Lpk_Resynthesize(ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @Abc_NtkLutmin(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkMfsParsDefault(ptr noundef) local_unnamed_addr #10

declare i32 @Abc_NtkMfs(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @Sfm_ParSetDefault(ptr noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntFreeP(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #37
  %i.e = load ptr, ptr %0, align 8, !tbaa !53     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi ptr [ %i.e, %.thread ], [ %i.a, %bb.b ]
  tail call void @free(ptr noundef nonnull %i.g) #37
  store ptr null, ptr %0, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

declare i32 @Abc_NtkMfsAfterICheck(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @Abc_NtkPerformMfs(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @Sfm_ParSetDefault3(ptr noundef) local_unnamed_addr #10

declare void @Abc_NtkPerformMfs3(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @Acb_ParSetDefault(ptr noundef) local_unnamed_addr #10

declare i32 @Abc_NtkGetFaninMax(ptr noundef) local_unnamed_addr #10

declare i32 @Abc_NtkToSop(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkOptMfse(ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @Abc_NtkOptPush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Abc_NtkDelayTracePrint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare float @Abc_NtkMfsTotalGlitching(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkSpeedup(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkPowerdown(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkAddBuffs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Abc_NtkLutMerge(ptr noundef, ptr noundef) local_unnamed_addr #10
end_hunk_0
