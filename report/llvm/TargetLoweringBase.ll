Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetLoweringBase?download=true
inline.NumInlined: 2991
inline.NumDeleted: 1105
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK4llvm18TargetLoweringBase14emitPatchPointERNS_12MachineInstrEPNS_17MachineBasicBlockE:bb.a
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !586
  %i.ap = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr %.sroa.022.0.copyload, i1 noundef zeroext false) #27 ; 19 uses
  tail call void @_ZN4llvm12MachineInstr12cloneMemRefsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1) #27
  %i.aq = load i24, ptr %i.f, align 8
  %.not92 = icmp eq i24 %i.aq, 0
  br i1 %.not92, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 52
  br label %bb.k

._crit_edge:                                      ; preds = %bb.t, %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull %i.ap) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.bd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %1, ptr %i.bf, align 8, !tbaa !587
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.ap, align 8
  %i.bg = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.bh = or disjoint i64 %i.bg, %i.bd
  store i64 %i.bh, ptr %i.ap, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.ap, ptr %i.bi, align 8, !tbaa !587
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.bj = ptrtoint ptr %i.ap to i64
  %i.bk = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.bl = or disjoint i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %1, align 8
  %i.bm = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27 ; 0 uses
  br label %"_ZN4llvm7none_ofINS_14iterator_rangeIPNS_14MachineOperandEEEZNKS_18TargetLoweringBase14emitPatchPointERNS_12MachineInstrEPNS_17MachineBasicBlockEE3$_0EEbOT_T0_.exit.thread"

bb.k:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !366
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %indvars.iv ; 6 uses
  %i.bp = load i32, ptr %i.bo, align 8            ; 2 uses
  %trunc = trunc i32 %i.bp to i8
  switch i8 %trunc, label %.thread [
    i8 5, label %bb.o
    i8 0, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bq = and i32 %i.bp, 15728640
  %.not82 = icmp eq i32 %i.bq, 0
  br i1 %.not82, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.k, %bb.l
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.bo) #27
  br label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  %i.bs = call noundef i32 @_ZNK4llvm12MachineInstr18findTiedOperandIdxEj(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %i.br) #27 ; 2 uses
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.bo) #27
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp samesign ugt i64 %indvars.iv, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bv = load i24, ptr %i.ar, align 8
  %i.bw = zext i24 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -1
  call void @_ZN4llvm12MachineInstr11tieOperandsEjj(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, i32 noundef %i.bs, i32 noundef %i.bx) #27
  br label %bb.t

bb.o:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !191 ; 4 uses
  %i.ca = load i32, ptr %i.at, align 8, !tbaa !607
  %i.cb = add i32 %i.ca, %i.bz
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load ptr, ptr %i.as, align 8, !tbaa !608
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 19
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !611, !range !21, !noundef !22
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store i32 1, ptr %7, align 8, !alias.scope !612
  store ptr null, ptr %i.aw, align 8, !tbaa !615, !alias.scope !612
  store i64 1, ptr %i.ax, align 8, !tbaa !191, !alias.scope !612
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ci = load i32, ptr %i.at, align 8, !tbaa !607
  %i.cj = add i32 %i.ci, %i.bz
  %i.ck = zext i32 %i.cj to i64
  %i.cl = load ptr, ptr %i.as, align 8, !tbaa !608
  %i.cm = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !616
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i32 1, ptr %6, align 8, !alias.scope !617
  store ptr null, ptr %i.ay, align 8, !tbaa !615, !alias.scope !617
  store i64 %i.co, ptr %i.az, align 8, !tbaa !191, !alias.scope !617
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.bo) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i32 1, ptr %5, align 8, !alias.scope !618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i32 1, ptr %4, align 8, !alias.scope !619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.bo) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 1, ptr %3, align 8, !alias.scope !620
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cp = load i32, ptr %i.bb, align 4, !tbaa !367
  %.not = icmp eq i32 %i.cp, 33
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm18MachinePointerInfo13getFixedStackERNS_15MachineFunctionEil(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, i32 noundef %i.bz, i64 noundef 0) #27
  %i.cq = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.a) #27
  %i.cr = call noundef i32 @_ZNK4llvm10DataLayout14getPointerSizeEj(ptr noundef nonnull align 8 dereferenceable(912) %i.cq, i32 noundef 0) #27
  %i.cs = zext i32 %i.cr to i64
  %i.ct = load i32, ptr %i.at, align 8, !tbaa !607
  %i.cu = add i32 %i.ct, %i.bz
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.as, align 8, !tbaa !608
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.sroa.0.0.copyload.i53 = load i8, ptr %i.cy, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 40, i1 false)
  %i.cz = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandENS_18MachinePointerInfoENS_17MachineMemOperand5FlagsENS_12LocationSizeENS_5AlignERKNS_9AAMDNodesEPKNS_6MDNodeEhNS_14AtomicOrderingESC_(ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %8, i16 noundef zeroext 1, i64 %i.cs, i8 %.sroa.0.0.copyload.i53, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef %i.cz) #27
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.r, %bb.s, %bb.m, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = load i24, ptr %i.f, align 8
  %i.db = zext i24 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %bb.k, label %._crit_edge, !llvm.loop !583

"_ZN4llvm7none_ofINS_14iterator_rangeIPNS_14MachineOperandEEEZNKS_18TargetLoweringBase14emitPatchPointERNS_12MachineInstrEPNS_17MachineBasicBlockEE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.j, %._crit_edge.i.i.i.i.i, %"_ZN4llvm7none_ofINS_14iterator_rangeIPNS_14MachineOperandEEEZNKS_18TargetLoweringBase14emitPatchPointERNS_12MachineInstrEPNS_17MachineBasicBlockEE3$_0EEbOT_T0_.exit", %._crit_edge
  ret ptr %2
}

declare noundef i32 @_ZNK4llvm12MachineInstr18findTiedOperandIdxEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #7

declare void @_ZN4llvm12MachineInstr11tieOperandsEjj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN4llvm18MachinePointerInfo13getFixedStackERNS_15MachineFunctionEil(ptr dead_on_unwind writable sret(%"struct.llvm::MachinePointerInfo") align 8, ptr noundef nonnull align 8 dereferenceable(1065), i32 noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #7

declare noundef i32 @_ZNK4llvm10DataLayout14getPointerSizeEj(ptr noundef nonnull align 8 dereferenceable(912), i32 noundef) local_unnamed_addr #7

declare void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #7

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZNK4llvm18TargetLoweringBase23findRepresentativeClassEPKNS_18TargetRegisterInfoENS_3MVTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518435) %0, ptr nofree noundef readonly captures(none) %1, i16 %2) unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.llvm::BitVector", align 8   ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = zext i16 %2 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190  ; 10 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !234  ; 10 uses
  %i.g = add i32 %i.f, 63                         ; 2 uses
  %i.h = lshr i32 %i.g, 6                         ; 3 uses
  %i.i = zext nneg i32 %i.h to i64                ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 6, ptr %i.l, align 4, !tbaa !368
  %i.m = icmp ugt i32 %i.g, 447
  br i1 %i.m, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit:            ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !369
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %3, ptr noundef nonnull %i.j, i64 noundef %i.i, i64 noundef 8) #27
  %i.n = load ptr, ptr %3, align 8, !tbaa !25
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.i, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !370
  %.pre = load i32, ptr %i.e, align 8, !tbaa !234
  %.pre84.pre.pre85.pre = load ptr, ptr %3, align 8
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN4llvm9BitVectorC2Ejb.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit78

_ZN4llvm9BitVectorC2Ejb.exit.loopexit78:          ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.i, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !370
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.loopexit78, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  %.pre84.pre.pre85 = phi ptr [ %i.j, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit78 ], [ %.pre84.pre.pre85.pre, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit ], [ %i.j, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ] ; 5 uses
  %i.o = phi i32 [ %i.f, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit78 ], [ %.pre, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit ], [ %i.f, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ] ; 2 uses
  store i32 %i.h, ptr %i.k, align 8, !tbaa !369
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 %i.f, ptr %i.p, align 8, !tbaa !633
  %i.q = add i32 %i.o, 31
  %i.r = lshr i32 %i.q, 5
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !634
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u ; 2 uses
  %i.w = zext nneg i32 %i.r to i64
  %i.x = load i16, ptr %i.v, align 2, !tbaa !193
  %.not.i.i27 = icmp eq i16 %i.x, 0
  br i1 %.not.i.i27, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorC2Ejb.exit
  %4 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %5 = load i32, ptr %4, align 4, !tbaa !635
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 %6
  %i.y = add i32 %i.f, 31                         ; 2 uses
  %i.z = lshr i32 %i.y, 5                         ; 3 uses
  %i.aa = icmp ugt i32 %i.y, 63
  %i.ab = add nsw i32 %i.z, -2                    ; 2 uses
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = add nuw i32 %i.ac, 1
  %wide.trip.count.i.i = zext i32 %i.ad to i64    ; 5 uses
  %8 = and i32 %i.z, 1                            ; 2 uses
  %i.ae = and i32 %i.f, 63                        ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nsw i64 -1, %i.af
  %i.ah = xor i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre84.pre.pre85, i64 %i.i
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8 ; 2 uses
  %min.iters.check = icmp ult i32 %i.ab, 6
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 4 uses
  %9 = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZN4llvm9BitVector13setBitsInMaskEPKjj.exit
  %.pre84.pre.pre = load ptr, ptr %3, align 8
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %._crit_edge.loopexit, %_ZN4llvm9BitVectorC2Ejb.exit
  %.pre84.pre = phi ptr [ %.pre84.pre.pre, %._crit_edge.loopexit ], [ %.pre84.pre.pre85, %_ZN4llvm9BitVectorC2Ejb.exit ] ; 6 uses
  %10 = icmp eq i32 %i.f, 0
  br i1 %10, label %._crit_edge77, label %bb.c

bb.c:                                             ; preds = %._crit_edge.a
  %11 = add i32 %i.f, -1                          ; 2 uses
  %12 = lshr i32 %11, 6                           ; 3 uses
  %13 = and i32 %11, 63
  %14 = xor i32 %13, 63
  %15 = zext nneg i32 %14 to i64
  %16 = lshr i64 -1, %15                          ; 2 uses
  %17 = zext nneg i32 %12 to i64
  %18 = add nuw nsw i32 %12, 1
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %18 to i64
  %19 = load i64, ptr %.pre84.pre, align 8, !tbaa !370, !noalias !636
  %20 = icmp eq i32 %12, 0                        ; 2 uses
  %21 = select i1 %20, i64 %16, i64 -1
  %.230.peel.i.i.i.i.i = and i64 %19, %21         ; 2 uses
  %.not37.peel.i.i.i.i.i.a = icmp eq i64 %.230.peel.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i.a, label %bb.d, label %_ZNK4llvm9BitVector8set_bitsEv.exit.a

bb.d:                                             ; preds = %bb.c
  br i1 %20, label %._crit_edge77, label %.peel.next.i.i.i.i.i.a

.peel.next.i.i.i.i.i.a:                           ; preds = %bb.d, %bb.e
  %indvars.iv.i.i.i.i.i.a = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre84.pre, i64 %indvars.iv.i.i.i.i.i.a
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !370, !noalias !636
  %22 = icmp eq i64 %indvars.iv.i.i.i.i.i.a, %17
  %23 = select i1 %22, i64 %16, i64 -1
  %.230.i.i.i.i.i = and i64 %23, %i.al            ; 2 uses
  %.not37.i.i.i.i.i.a = icmp eq i64 %.230.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i.a, label %bb.e, label %.loopexit48.i.i.i.i.i.a

.loopexit48.i.i.i.i.i.a:                          ; preds = %.peel.next.i.i.i.i.i.a
  %.pre.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.a to i32
  %24 = shl nuw i32 %.pre.i.i.i.i.i, 6
  br label %_ZNK4llvm9BitVector8set_bitsEv.exit.a

bb.e:                                             ; preds = %.peel.next.i.i.i.i.i.a
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.a, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge77, label %.peel.next.i.i.i.i.i.a, !llvm.loop !623

_ZNK4llvm9BitVector8set_bitsEv.exit.a:            ; preds = %bb.c, %.loopexit48.i.i.i.i.i.a
  %.pre-phi.i.i.i.i.i = phi i32 [ %24, %.loopexit48.i.i.i.i.i.a ], [ 0, %bb.c ]
  %.230.lcssa.i.i.i.i.i = phi i64 [ %.230.i.i.i.i.i, %.loopexit48.i.i.i.i.i.a ], [ %.230.peel.i.i.i.i.i, %bb.c ]
  %25 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i.i, i1 true)
  %26 = trunc nuw nsw i64 %25 to i32
  %27 = or disjoint i32 %.pre-phi.i.i.i.i.i, %26  ; 2 uses
  %.not6473 = icmp eq i32 %27, -1
  br i1 %.not6473, label %._crit_edge77, label %.lr.ph76

.lr.ph76:                                         ; preds = %_ZNK4llvm9BitVector8set_bitsEv.exit.a
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !638
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 296
  %31 = load ptr, ptr %30, align 8, !tbaa !233    ; 2 uses
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.am = load i32, ptr %32, align 8, !tbaa !235
  %33 = mul i32 %i.am, %i.o                       ; 2 uses
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 304
  %35 = add i32 %i.f, -1                          ; 2 uses
  %36 = lshr i32 %35, 6                           ; 4 uses
  %37 = and i32 %35, 63
  %38 = xor i32 %37, 63
  %39 = zext nneg i32 %38 to i64
  %40 = lshr i64 -1, %39                          ; 2 uses
  %41 = zext nneg i32 %36 to i64
  %42 = add nuw nsw i32 %36, 1
  %wide.trip.count.i.i.i.i = zext nneg i32 %42 to i64 ; 2 uses
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvm9BitVector13setBitsInMaskEPKjj.exit
  %.pn = phi ptr [ %7, %.lr.ph ], [ %.sroa.14.072, %_ZN4llvm9BitVector13setBitsInMaskEPKjj.exit ]
  %.pn103 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.7.071, %_ZN4llvm9BitVector13setBitsInMaskEPKjj.exit ]
  %.sroa.7.071 = getelementptr inbounds nuw i8, ptr %.pn103, i64 2 ; 2 uses
  %.sroa.14.072 = getelementptr inbounds nuw [4 x i8], ptr %.pn, i64 %i.w ; 6 uses
  br i1 %i.aa, label %.lr.ph.i.i.preheader, label %.preheader.i.i.a

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader125, label %vector.ph.a

vector.ph.a:                                      ; preds = %.lr.ph.i.i.preheader
  %43 = getelementptr i8, ptr %.sroa.14.072, i64 %9 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.a
  %index = phi i64 [ 0, %vector.ph.a ], [ %index.next, %vector.body ] ; 3 uses
  %44 = shl i64 %index, 3                         ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.14.072, i64 %44
  %45 = getelementptr i8, ptr %.sroa.14.072, i64 %44
  %next.gep111 = getelementptr i8, ptr %45, i64 16
  %46 = getelementptr inbounds nuw [8 x i8], ptr %.pre84.pre.pre85, i64 %index ; 3 uses
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %46, align 8, !tbaa !370
  %wide.load112 = load <2 x i64>, ptr %47, align 8, !tbaa !370
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !175
  %48 = freeze <4 x i32> %wide.vec
  %49 = bitcast <4 x i32> %48 to <2 x i64>
  %wide.vec114 = load <4 x i32>, ptr %next.gep111, align 4, !tbaa !175
  %50 = freeze <4 x i32> %wide.vec114
  %51 = bitcast <4 x i32> %50 to <2 x i64>
  %52 = or <2 x i64> %wide.load, %49
  %53 = or <2 x i64> %wide.load112, %51
  store <2 x i64> %52, ptr %46, align 8, !tbaa !370
  store <2 x i64> %53, ptr %47, align 8, !tbaa !370
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !624

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader.i.i.a, label %.lr.ph.i.i.preheader125

.lr.ph.i.i.preheader125:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.034.i.i.ph = phi ptr [ %.sroa.14.072, %.lr.ph.i.i.preheader ], [ %43, %middle.block ]
  br label %.lr.ph.i.i

.preheader.i.i.a:                                 ; preds = %.lr.ph.i.i, %middle.block, %bb.f
  %.027.lcssa.i.i = phi i32 [ %i.z, %bb.f ], [ %8, %middle.block ], [ %8, %.lr.ph.i.i ]
  %.018.lcssa.i.i = phi i64 [ 0, %bb.f ], [ %wide.trip.count.i.i, %middle.block ], [ %wide.trip.count.i.i, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi ptr [ %.sroa.14.072, %bb.f ], [ %43, %middle.block ], [ %scevgep.i.i, %.lr.ph.i.i ]
  %.not37.i.i.a = icmp eq i32 %.027.lcssa.i.i, 0
  br i1 %.not37.i.i.a, label %66, label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.preheader.i.i.a
  %54 = getelementptr inbounds nuw [8 x i8], ptr %.pre84.pre.pre85, i64 %.018.lcssa.i.i ; 2 uses
  %.promoted.i.i = load i64, ptr %54, align 8, !tbaa !370
  %55 = load i32, ptr %.0.lcssa.i.i, align 4, !tbaa !175
  %56 = zext i32 %55 to i64
  %57 = or i64 %.promoted.i.i, %56
  store i64 %57, ptr %54, align 8, !tbaa !370
  br label %66

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader125, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader125 ] ; 2 uses
  %.034.i.i = phi ptr [ %scevgep.i.i, %.lr.ph.i.i ], [ %.034.i.i.ph, %.lr.ph.i.i.preheader125 ] ; 3 uses
  %58 = getelementptr inbounds nuw [8 x i8], ptr %.pre84.pre.pre85, i64 %indvars.iv.i.i ; 2 uses
  %59 = load i64, ptr %58, align 8, !tbaa !370
  %i.ao = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 4
  %i.ap = load i32, ptr %.034.i.i, align 4, !tbaa !175
  %60 = zext i32 %i.ap to i64
  %61 = or i64 %59, %60
  %62 = load i32, ptr %i.ao, align 4, !tbaa !175
  %63 = zext i32 %62 to i64
  %64 = shl nuw i64 %63, 32
  %65 = or i64 %61, %64
  %scevgep.i.i = getelementptr i8, ptr %.034.i.i, i64 8 ; 2 uses
  store i64 %65, ptr %58, align 8, !tbaa !370
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i.i.a, label %.lr.ph.i.i, !llvm.loop !625

66:                                               ; preds = %.lr.ph41.i.i, %.preheader.i.i.a
  br i1 %.not.i.i.i.i, label %_ZN4llvm9BitVector13setBitsInMaskEPKjj.exit, label %bb.g

bb.g:                                             ; preds = %66
  %i.aq = load i64, ptr %i.aj, align 8, !tbaa !370
  %i.ar = and i64 %i.aq, %i.ah
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !370
  br label %_ZN4llvm9BitVector13setBitsInMaskEPKjj.exit

_ZN4llvm9BitVector13setBitsInMaskEPKjj.exit:      ; preds = %66, %bb.g
  %67 = load i16, ptr %.sroa.7.071, align 2, !tbaa !193
  %.not.i = icmp eq i16 %67, 0
  br i1 %.not.i, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !626

._crit_edge77:                                    ; preds = %bb.e, %bb.m, %bb.l, %_ZNK4llvm18TargetLoweringBase9isLegalRCERKNS_18TargetRegisterInfoERKNS_15MCRegisterClassE.exit, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit, %bb.n, %bb.d, %._crit_edge.a, %_ZNK4llvm9BitVector8set_bitsEv.exit.a
  %.0.lcssa = phi ptr [ %i.d, %_ZNK4llvm9BitVector8set_bitsEv.exit.a ], [ %.1, %bb.n ], [ %.1, %bb.m ], [ %i.d, %._crit_edge.a ], [ %i.d, %bb.d ], [ %.1, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit ], [ %.1, %_ZNK4llvm18TargetLoweringBase9isLegalRCERKNS_18TargetRegisterInfoERKNS_15MCRegisterClassE.exit ], [ %.1, %bb.l ], [ %i.d, %bb.e ]
  %i.as = icmp eq ptr %.pre84.pre, %i.j
  br i1 %i.as, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge77
  call void @free(ptr noundef %.pre84.pre) #27
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %._crit_edge77, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.o

bb.i:                                             ; preds = %.lr.ph76, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit
  %.sroa.441.075 = phi i32 [ %27, %.lr.ph76 ], [ %i.cs, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit ] ; 2 uses
  %.074 = phi ptr [ %i.d, %.lr.ph76 ], [ %.1, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit ] ; 3 uses
  %i.at = zext i32 %.sroa.441.075 to i64
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %29, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !237
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add i32 %33, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %31, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !641
  %i.bd = lshr i32 %i.bc, 3
  %i.be = getelementptr inbounds nuw i8, ptr %.074, i64 20
  %i.bf = load i16, ptr %i.be, align 4, !tbaa !237
  %i.bg = zext i16 %i.bf to i32
  %i.bh = add i32 %33, %i.bg
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %31, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !641
  %i.bm = lshr i32 %i.bl, 3
  %.not26 = icmp samesign ugt i32 %i.bd, %i.bm
  br i1 %.not26, label %bb.j, label %_ZNK4llvm18TargetLoweringBase9isLegalRCERKNS_18TargetRegisterInfoERKNS_15MCRegisterClassE.exit

bb.j:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr %34, align 8, !tbaa !232
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !239
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bq
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i, %bb.j
  %.07.i = phi ptr [ %i.br, %bb.j ], [ %i.bw, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i ] ; 2 uses
  %i.bs = load i16, ptr %.07.i, align 2, !tbaa !196 ; 2 uses
  switch i16 %i.bs, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i [
    i16 1, label %_ZNK4llvm18TargetLoweringBase9isLegalRCERKNS_18TargetRegisterInfoERKNS_15MCRegisterClassE.exit
    i16 0, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i
  ]

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.k
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !190
  %.not.i38 = icmp eq ptr %i.bv, null
  br i1 %.not.i38, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i, label %_ZNK4llvm18TargetLoweringBase9isLegalRCERKNS_18TargetRegisterInfoERKNS_15MCRegisterClassE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.i, i64 2
  br label %bb.k, !llvm.loop !1

_ZNK4llvm18TargetLoweringBase9isLegalRCERKNS_18TargetRegisterInfoERKNS_15MCRegisterClassE.exit: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.k, %bb.i
  %.1 = phi ptr [ %.074, %bb.i ], [ %i.au, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ %.074, %bb.k ] ; 6 uses
  %i.bx = add nuw i32 %.sroa.441.075, 1           ; 3 uses
  %i.by = icmp eq i32 %i.bx, %i.f
  br i1 %i.by, label %._crit_edge77, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm18TargetLoweringBase9isLegalRCERKNS_18TargetRegisterInfoERKNS_15MCRegisterClassE.exit
  %i.bz = lshr i32 %i.bx, 6                       ; 4 uses
  %.not42.i.i.i.i = icmp samesign ugt i32 %i.bz, %36
  br i1 %.not42.i.i.i.i, label %._crit_edge77, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l
  %i.ca = and i32 %i.bx, 63                       ; 2 uses
  %i.cb = sub nuw nsw i32 64, %i.ca
  %.not.i.i.i = icmp eq i32 %i.ca, 0
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = lshr i64 -1, %i.cc
  %i.ce = xor i64 %i.cd, -1
  %i.cf = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.pre84.pre, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !370
  %i.ci = select i1 %.not.i.i.i, i64 -1, i64 %i.ce
  %i.cj = icmp eq i32 %i.bz, %36
  %i.ck = select i1 %i.cj, i64 %40, i64 -1
  %spec.select44.peel.i.i.i.i = and i64 %i.ci, %i.ck
  %.230.peel.i.i.i.i = and i64 %spec.select44.peel.i.i.i.i, %i.ch ; 2 uses
  %.not37.peel.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i, label %bb.m, label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.peel.i.i.i.i = add nuw nsw i64 %i.cf, 1 ; 2 uses
  %exitcond.peel.not.i.i.i.i = icmp eq i64 %indvars.iv.next.peel.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.peel.not.i.i.i.i, label %._crit_edge77, label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %bb.m, %bb.n
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.n ], [ %indvars.iv.next.peel.i.i.i.i, %bb.m ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.pre84.pre, i64 %indvars.iv.i.i.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !370
  %i.cn = icmp eq i64 %indvars.iv.i.i.i.i, %41
  %i.co = select i1 %i.cn, i64 %40, i64 -1
  %.230.i.i.i.i = and i64 %i.co, %i.cm            ; 2 uses
  %.not37.i.i.i.i = icmp eq i64 %.230.i.i.i.i, 0
  br i1 %.not37.i.i.i.i, label %bb.n, label %.loopexit48.i.i.i.i

.loopexit48.i.i.i.i:                              ; preds = %.peel.next.i.i.i.i
  %.pre.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  br label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit

bb.n:                                             ; preds = %.peel.next.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge77, label %.peel.next.i.i.i.i, !llvm.loop !623

_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit48.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre.i.i.i.i, %.loopexit48.i.i.i.i ], [ %i.bz, %.lr.ph.i.i.i.i ]
  %.230.lcssa.i.i.i.i = phi i64 [ %.230.i.i.i.i, %.loopexit48.i.i.i.i ], [ %.230.peel.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.cp = shl nuw i32 %.pre-phi.i.i.i.i, 6
  %i.cq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr            ; 2 uses
  %.not64 = icmp eq i32 %i.cs, -1
  br i1 %.not64, label %._crit_edge77, label %bb.i

bb.o:                                             ; preds = %bb.a, %_ZN4llvm9BitVectorD2Ev.exit
  %.sroa.060.0 = phi ptr [ %.0.lcssa, %_ZN4llvm9BitVectorD2Ev.exit ], [ null, %bb.a ]
  %.sroa.361.0 = phi i8 [ 1, %_ZN4llvm9BitVectorD2Ev.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.060.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.361.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18TargetLoweringBase25computeRegisterPropertiesEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1) local_unnamed_addr #6 align 2 {
iter.check:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %3 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5656 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2752 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2240
  store <8 x i16> splat (i16 1), ptr %i.a, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.d, align 8, !tbaa !193
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5672
  store <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, ptr %i.b, align 8, !tbaa !196
  store <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, ptr %i.e, align 8, !tbaa !196
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, ptr %i.c, align 8, !tbaa !196
  store <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, ptr %i.f, align 8, !tbaa !196
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2272
  store <8 x i16> splat (i16 1), ptr %i.g, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.h, align 8, !tbaa !193
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5704
  store <8 x i16> <i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23>, ptr %i.i, align 8, !tbaa !196
  store <8 x i16> <i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>, ptr %i.j, align 8, !tbaa !196
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store <8 x i16> <i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23>, ptr %i.k, align 8, !tbaa !196
  store <8 x i16> <i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>, ptr %i.l, align 8, !tbaa !196
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2304
  store <8 x i16> splat (i16 1), ptr %i.m, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.n, align 8, !tbaa !193
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5720
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5736
  store <8 x i16> <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39>, ptr %i.o, align 8, !tbaa !196
  store <8 x i16> <i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47>, ptr %i.p, align 8, !tbaa !196
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2832
  store <8 x i16> <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39>, ptr %i.q, align 8, !tbaa !196
  store <8 x i16> <i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47>, ptr %i.r, align 8, !tbaa !196
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2336
  store <8 x i16> splat (i16 1), ptr %i.s, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.t, align 8, !tbaa !193
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5752
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5768
  store <8 x i16> <i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55>, ptr %i.u, align 8, !tbaa !196
  store <8 x i16> <i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>, ptr %i.v, align 8, !tbaa !196
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2864
  store <8 x i16> <i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55>, ptr %i.w, align 8, !tbaa !196
  store <8 x i16> <i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>, ptr %i.x, align 8, !tbaa !196
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2368
  store <8 x i16> splat (i16 1), ptr %i.y, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.z, align 8, !tbaa !193
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5784
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5800
  store <8 x i16> <i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71>, ptr %i.aa, align 8, !tbaa !196
  store <8 x i16> <i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79>, ptr %i.ab, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2896
  store <8 x i16> <i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71>, ptr %i.ac, align 8, !tbaa !196
  store <8 x i16> <i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79>, ptr %i.ad, align 8, !tbaa !196
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2400
  store <8 x i16> splat (i16 1), ptr %i.ae, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.af, align 8, !tbaa !193
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5816
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 5832
  store <8 x i16> <i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87>, ptr %i.ag, align 8, !tbaa !196
  store <8 x i16> <i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95>, ptr %i.ah, align 8, !tbaa !196
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2928
  store <8 x i16> <i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87>, ptr %i.ai, align 8, !tbaa !196
  store <8 x i16> <i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95>, ptr %i.aj, align 8, !tbaa !196
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2432
  store <8 x i16> splat (i16 1), ptr %i.ak, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.al, align 8, !tbaa !193
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5848
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5864
  store <8 x i16> <i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103>, ptr %i.am, align 8, !tbaa !196
  store <8 x i16> <i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111>, ptr %i.an, align 8, !tbaa !196
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store <8 x i16> <i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103>, ptr %i.ao, align 8, !tbaa !196
  store <8 x i16> <i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111>, ptr %i.ap, align 8, !tbaa !196
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2464
  store <8 x i16> splat (i16 1), ptr %i.aq, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.ar, align 8, !tbaa !193
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5880
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 5896
  store <8 x i16> <i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119>, ptr %i.as, align 8, !tbaa !196
  store <8 x i16> <i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127>, ptr %i.at, align 8, !tbaa !196
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2992
  store <8 x i16> <i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119>, ptr %i.au, align 8, !tbaa !196
  store <8 x i16> <i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127>, ptr %i.av, align 8, !tbaa !196
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2496
  store <8 x i16> splat (i16 1), ptr %i.aw, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.ax, align 8, !tbaa !193
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store <8 x i16> <i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135>, ptr %i.ay, align 8, !tbaa !196
  store <8 x i16> <i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143>, ptr %i.az, align 8, !tbaa !196
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 3024
  store <8 x i16> <i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135>, ptr %i.ba, align 8, !tbaa !196
  store <8 x i16> <i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143>, ptr %i.bb, align 8, !tbaa !196
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store <8 x i16> splat (i16 1), ptr %i.bc, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.bd, align 8, !tbaa !193
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5944
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store <8 x i16> <i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151>, ptr %i.be, align 8, !tbaa !196
  store <8 x i16> <i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159>, ptr %i.bf, align 8, !tbaa !196
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3056
  store <8 x i16> <i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151>, ptr %i.bg, align 8, !tbaa !196
  store <8 x i16> <i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159>, ptr %i.bh, align 8, !tbaa !196
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store <8 x i16> splat (i16 1), ptr %i.bi, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.bj, align 8, !tbaa !193
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5976
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5992
  store <8 x i16> <i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167>, ptr %i.bk, align 8, !tbaa !196
  store <8 x i16> <i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175>, ptr %i.bl, align 8, !tbaa !196
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3088
  store <8 x i16> <i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167>, ptr %i.bm, align 8, !tbaa !196
  store <8 x i16> <i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175>, ptr %i.bn, align 8, !tbaa !196
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store <8 x i16> splat (i16 1), ptr %i.bo, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.bp, align 8, !tbaa !193
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 6008
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 6024
  store <8 x i16> <i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183>, ptr %i.bq, align 8, !tbaa !196
  store <8 x i16> <i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191>, ptr %i.br, align 8, !tbaa !196
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3120
  store <8 x i16> <i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183>, ptr %i.bs, align 8, !tbaa !196
  store <8 x i16> <i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191>, ptr %i.bt, align 8, !tbaa !196
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2624
  store <8 x i16> splat (i16 1), ptr %i.bu, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.bv, align 8, !tbaa !193
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 6040
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 6056
  store <8 x i16> <i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199>, ptr %i.bw, align 8, !tbaa !196
  store <8 x i16> <i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207>, ptr %i.bx, align 8, !tbaa !196
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3136
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 3152
  store <8 x i16> <i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199>, ptr %i.by, align 8, !tbaa !196
  store <8 x i16> <i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207>, ptr %i.bz, align 8, !tbaa !196
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2656
  store <8 x i16> splat (i16 1), ptr %i.ca, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.cb, align 8, !tbaa !193
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 6072
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 6088
  store <8 x i16> <i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215>, ptr %i.cc, align 8, !tbaa !196
  store <8 x i16> <i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223>, ptr %i.cd, align 8, !tbaa !196
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 3184
  store <8 x i16> <i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215>, ptr %i.ce, align 8, !tbaa !196
  store <8 x i16> <i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223>, ptr %i.cf, align 8, !tbaa !196
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2688
  store <8 x i16> splat (i16 1), ptr %i.cg, align 8, !tbaa !193
  store <8 x i16> splat (i16 1), ptr %i.ch, align 8, !tbaa !193
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 6104
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 6120
  store <8 x i16> <i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231>, ptr %i.ci, align 8, !tbaa !196
  store <8 x i16> <i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239>, ptr %i.cj, align 8, !tbaa !196
end_hunk_0
begin_hunk_1_@llvm.ctpop.i16
!421 = !{!"p1 _ZTSN4llvm6ModuleE", !14, i64 0}
!422 = !{!"_ZTSN4llvm11GlobalValueE", !420, i64 0, !200, i64 24, !9, i64 32, !9, i64 32, !9, i64 32, !9, i64 33, !9, i64 33, !9, i64 33, !9, i64 33, !9, i64 33, !9, i64 34, !9, i64 34, !9, i64 36, !421, i64 40}
!423 = !{!422, !421, i64 40}
!424 = !{!"_ZTSN4llvm5RTLIB11LibcallImplE", !8, i64 0}
!425 = !{!424, !424, i64 0}
!426 = !{!204, !69, i64 0}
!427 = !{!405, !8, i64 0}
!428 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_14GlobalVariableELb0ELb0EvLb0EvEEEE", !277, i64 0}
!429 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_14GlobalVariableELb0ELb0EvLb0EvEEEE", !428, i64 0}
!430 = !{!"_ZTSN4llvm12simple_ilistINS_14GlobalVariableEJEEE", !429, i64 0}
!431 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_14GlobalVariableEJEEENS_21SymbolTableListTraitsIS2_JEEEEE", !430, i64 0}
!432 = !{!"_ZTSN4llvm15SymbolTableListINS_14GlobalVariableEJEEE", !431, i64 0}
!433 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEEEE", !277, i64 0}
!434 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEEEE", !433, i64 0}
!435 = !{!"_ZTSN4llvm12simple_ilistINS_8FunctionEJEEE", !434, i64 0}
!436 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_8FunctionEJEEENS_21SymbolTableListTraitsIS2_JEEEEE", !435, i64 0}
!437 = !{!"_ZTSN4llvm15SymbolTableListINS_8FunctionEJEEE", !436, i64 0}
!438 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11GlobalAliasELb0ELb0EvLb0EvEEEE", !277, i64 0}
!439 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_11GlobalAliasELb0ELb0EvLb0EvEEEE", !438, i64 0}
!440 = !{!"_ZTSN4llvm12simple_ilistINS_11GlobalAliasEJEEE", !439, i64 0}
!441 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_11GlobalAliasEJEEENS_21SymbolTableListTraitsIS2_JEEEEE", !440, i64 0}
!442 = !{!"_ZTSN4llvm15SymbolTableListINS_11GlobalAliasEJEEE", !441, i64 0}
!443 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11GlobalIFuncELb0ELb0EvLb0EvEEEE", !277, i64 0}
!444 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_11GlobalIFuncELb0ELb0EvLb0EvEEEE", !443, i64 0}
!445 = !{!"_ZTSN4llvm12simple_ilistINS_11GlobalIFuncEJEEE", !444, i64 0}
!446 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_11GlobalIFuncEJEEENS_21SymbolTableListTraitsIS2_JEEEEE", !445, i64 0}
!447 = !{!"_ZTSN4llvm15SymbolTableListINS_11GlobalIFuncEJEEE", !446, i64 0}
!448 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11NamedMDNodeELb0ELb0EvLb0EvEEEE", !277, i64 0}
!449 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_11NamedMDNodeELb0ELb0EvLb0EvEEEE", !448, i64 0}
!450 = !{!"_ZTSN4llvm12simple_ilistINS_11NamedMDNodeEJEEE", !449, i64 0}
!451 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_11NamedMDNodeEJEEENS_12ilist_traitsIS2_EEEE", !450, i64 0}
!452 = !{!"_ZTSN4llvm6iplistINS_11NamedMDNodeEJEEE", !451, i64 0}
!453 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_6Module17GlobalAsmFragmentEvEE", !24, i64 0}
!454 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_6Module17GlobalAsmFragmentELb0EEE", !453, i64 0}
!455 = !{!"_ZTSN4llvm15SmallVectorImplINS_6Module17GlobalAsmFragmentEEE", !454, i64 0}
!456 = !{!"_ZTSN4llvm11SmallVectorINS_6Module17GlobalAsmFragmentELj0EEE", !455, i64 0}
!457 = !{!"p1 _ZTSN4llvm16ValueSymbolTableE", !14, i64 0}
!458 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm16ValueSymbolTableELb0EE", !457, i64 0}
!459 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm16ValueSymbolTableESt14default_deleteIS1_EEE", !458, i64 0}
!460 = !{!"_ZTSSt5tupleIJPN4llvm16ValueSymbolTableESt14default_deleteIS1_EEE", !459, i64 0}
!461 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm16ValueSymbolTableESt14default_deleteIS1_EE", !460, i64 0}
!462 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm16ValueSymbolTableESt14default_deleteIS1_ELb1ELb1EE", !461, i64 0}
!463 = !{!"_ZTSSt10unique_ptrIN4llvm16ValueSymbolTableESt14default_deleteIS1_EE", !462, i64 0}
!464 = !{!"_ZTSN4llvm9StringMapINS_6ComdatENS_15MallocAllocatorEEE", !113, i64 0}
!465 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12MemoryBufferELb0EE", !124, i64 0}
!466 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm12MemoryBufferESt14default_deleteIS1_EEE", !465, i64 0}
!467 = !{!"_ZTSSt5tupleIJPN4llvm12MemoryBufferESt14default_deleteIS1_EEE", !466, i64 0}
!468 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm12MemoryBufferESt14default_deleteIS1_EE", !467, i64 0}
!469 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12MemoryBufferESt14default_deleteIS1_ELb1ELb1EE", !468, i64 0}
!470 = !{!"_ZTSSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EE", !469, i64 0}
!471 = !{!"p1 _ZTSN4llvm14GVMaterializerE", !14, i64 0}
!472 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm14GVMaterializerELb0EE", !471, i64 0}
!473 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm14GVMaterializerESt14default_deleteIS1_EEE", !472, i64 0}
!474 = !{!"_ZTSSt5tupleIJPN4llvm14GVMaterializerESt14default_deleteIS1_EEE", !473, i64 0}
!475 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm14GVMaterializerESt14default_deleteIS1_EE", !474, i64 0}
!476 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm14GVMaterializerESt14default_deleteIS1_ELb1ELb1EE", !475, i64 0}
!477 = !{!"_ZTSSt10unique_ptrIN4llvm14GVMaterializerESt14default_deleteIS1_EE", !476, i64 0}
!478 = !{!"_ZTSN4llvm9StringMapIPNS_11NamedMDNodeENS_15MallocAllocatorEEE", !113, i64 0}
!479 = !{!"_ZTSN4llvm9StringMapIjNS_15MallocAllocatorEEE", !113, i64 0}
!480 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt4pairIjPKNS_12FunctionTypeEEjEE", !14, i64 0}
!481 = !{!"_ZTSN4llvm8DenseMapISt4pairIjPKNS_12FunctionTypeEEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEE", !480, i64 0, !153, i64 8, !9, i64 16, !9, i64 20}
!482 = !{!"p1 _ZTSN4llvm11NamedMDNodeE", !14, i64 0}
!483 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_5ValueEmEE", !14, i64 0}
!484 = !{!"_ZTSN4llvm8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEE", !483, i64 0, !153, i64 8, !9, i64 16, !9, i64 20}
!485 = !{!"_ZTSN4llvm6ModuleE", !373, i64 0, !432, i64 8, !437, i64 24, !442, i64 40, !447, i64 56, !452, i64 72, !456, i64 88, !463, i64 104, !464, i64 112, !470, i64 136, !477, i64 144, !71, i64 152, !71, i64 184, !80, i64 216, !478, i64 272, !73, i64 296, !479, i64 1208, !481, i64 1232, !482, i64 1256, !484, i64 1264}
!486 = !{!485, !373, i64 0}
!487 = !{!"_ZTSN4llvm5Twine8NodeKindE", !8, i64 0}
!488 = !{!"_ZTSN4llvm5TwineE", !8, i64 0, !8, i64 16, !487, i64 32, !487, i64 33}
!489 = !{!488, !487, i64 32}
!490 = !{!488, !487, i64 33}
!491 = !{!69, !69, i64 0}
!492 = !{!"p1 _ZTSN4llvm18TargetLoweringBaseE", !14, i64 0}
!493 = !{!"_ZTSZNK4llvm18TargetLoweringBase21insertSSPDeclarationsERNS_6ModuleERKNS_19LibcallLoweringInfoEE3$_0", !421, i64 0, !204, i64 8, !492, i64 24}
!494 = !{!493, !492, i64 24}
!495 = !{!"_ZTSSt8functionIFvRKjEE", !15, i64 0, !14, i64 24}
!496 = !{!495, !14, i64 24}
!497 = !{!349, !240, i64 0}
!498 = !{!70, !69, i64 0}
!499 = !{!71, !69, i64 0}
!500 = !{!71, !36, i64 8}
!501 = !{!"_ZTSSt4pairIjN4llvm3MVT15SimpleValueTypeEE", !9, i64 0, !30, i64 4}
!502 = !{!501, !9, i64 0}
!503 = !{!501, !30, i64 4}
!504 = !{!34, !34, i64 0}
!505 = !{!"_ZTSSt4pairIKS_IjN4llvm3MVT15SimpleValueTypeEES2_E", !501, i64 0, !30, i64 8}
!506 = !{!505, !30, i64 8}
!507 = !{!"p1 _ZTSN4llvm17TargetLibraryInfoE", !14, i64 0}
!508 = !{!"_ZTSN4llvm14FoldingSetBase4NodeE", !14, i64 0}
!509 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_6SDNodeELb0ELb0EvLb0EvEEEE", !277, i64 0}
!510 = !{!"_ZTSN4llvm10ilist_nodeINS_6SDNodeEJEEE", !509, i64 0}
!511 = !{!"_ZTSN4llvm11SDNodeFlagsE", !9, i64 0}
!512 = !{!"p1 _ZTSN4llvm5SDUseE", !14, i64 0}
!513 = !{!"p1 _ZTSN4llvm3EVTE", !14, i64 0}
!514 = !{!"_ZTSN4llvm6SDNodeE", !508, i64 0, !510, i64 8, !9, i64 24, !511, i64 28, !8, i64 32, !192, i64 34, !9, i64 36, !512, i64 40, !513, i64 48, !512, i64 56, !192, i64 64, !192, i64 66, !9, i64 68, !364, i64 72, !8, i64 80, !9, i64 84}
!515 = !{!"p1 _ZTSN4llvm6SDNodeE", !14, i64 0}
!516 = !{!"_ZTSN4llvm7SDValueE", !515, i64 0, !9, i64 8}
!517 = !{!349, !243, i64 32}
!518 = !{!405, !192, i64 2}
!519 = !{!"_ZTSN4llvm10ilist_nodeINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEE", !412, i64 0}
!520 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_11InstructionENS_10BasicBlockEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentIS2_EEEEE", !519, i64 0}
!521 = !{!"p1 _ZTSN4llvm9DbgMarkerE", !14, i64 0}
!522 = !{!"_ZTSN4llvm11InstructionE", !419, i64 0, !520, i64 24, !364, i64 48, !9, i64 56, !9, i64 60, !521, i64 64}
!523 = !{!522, !9, i64 56}
!524 = !{!"p1 _ZTSN4llvm5ValueE", !14, i64 0}
!525 = !{!"p2 _ZTSN4llvm3UseE", !17, i64 0}
!526 = !{!"p1 _ZTSN4llvm4UserE", !14, i64 0}
!527 = !{!"_ZTSN4llvm3UseE", !524, i64 0, !404, i64 8, !525, i64 16, !526, i64 24}
!528 = !{!527, !524, i64 0}
!529 = !{!405, !200, i64 8}
!530 = !{!18, !18, i64 0}
!531 = !{!402, !373, i64 32}
!532 = !{!402, !396, i64 48}
!533 = !{!514, !513, i64 48}
!534 = !{!35, !34, i64 24}
!535 = !{!376, !375, i64 16}
!536 = !{!177, !18, i64 9}
!537 = !{!183, !18, i64 12}
!538 = !{!28, !28, i64 0}
!539 = !{!29, !9, i64 0}
!540 = !{!37, !33, i64 0}
!541 = !{!37, !34, i64 24}
!542 = !{!151, !135, i64 1404}
!543 = !{!151, !129, i64 1380}
!544 = !{!151, !132, i64 1392}
!545 = !{!151, !134, i64 1400}
!546 = !{!171, !9, i64 518424}
!547 = !{!171, !9, i64 518428}
!548 = !{!171, !18, i64 16}
!549 = !{!171, !18, i64 518432}
!550 = !{!171, !18, i64 518433}
!551 = !{!171, !155, i64 52}
!552 = !{!171, !155, i64 56}
!553 = !{!171, !155, i64 60}
!554 = !{!171, !156, i64 64}
!555 = !{!171, !18, i64 518434}
!556 = !{!171, !9, i64 88}
!557 = !{!171, !18, i64 100}
!558 = !{!158, !9, i64 20}
!559 = !{!158, !157, i64 0}
!560 = !{!154, !9, i64 20}
!561 = !{!154, !152, i64 0}
!562 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_2cl14OptionCategoryEvEE", !24, i64 0}
!563 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_2cl14OptionCategoryELb1EEE", !562, i64 0}
!564 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_2cl14OptionCategoryEEE", !563, i64 0}
!565 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_2cl14OptionCategoryELj1EEE", !8, i64 0}
!566 = !{!"_ZTSN4llvm11SmallVectorIPNS_2cl14OptionCategoryELj1EEE", !564, i64 0, !565, i64 16}
!567 = !{!"_ZTSN4llvm15SmallPtrSetImplIPNS_2cl10SubCommandEEE", !19, i64 0}
!568 = !{!"_ZTSN4llvm11SmallPtrSetIPNS_2cl10SubCommandELj1EEE", !567, i64 0, !8, i64 24}
!569 = !{!"_ZTSN4llvm2cl6OptionE", !192, i64 8, !192, i64 10, !192, i64 10, !192, i64 10, !192, i64 10, !192, i64 11, !192, i64 11, !192, i64 12, !192, i64 14, !204, i64 16, !204, i64 32, !204, i64 48, !566, i64 64, !568, i64 88}
!570 = !{!569, !192, i64 8}
!571 = distinct !{!571, !212}
!572 = distinct !{!572, !212}
!573 = distinct !{!573, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!574 = distinct !{!574, !573, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!575 = distinct !{!575, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!576 = distinct !{!576, !575, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!577 = distinct !{!577, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!578 = distinct !{!578, !577, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!579 = distinct !{!579, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!580 = distinct !{!580, !579, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!581 = distinct !{!581, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!582 = distinct !{!582, !581, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!583 = distinct !{!583, !212}
!584 = !{!349, !245, i64 48}
!585 = !{!363, !363, i64 0}
!586 = !{!365, !358, i64 16}
!587 = !{!353, !352, i64 8}
!588 = !{!"p1 _ZTSN4llvm16MachineFrameInfo11StackObjectE", !14, i64 0}
!589 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MachineFrameInfo11StackObjectESaIS2_EE17_Vector_impl_dataE", !588, i64 0, !588, i64 8, !588, i64 16}
!590 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MachineFrameInfo11StackObjectESaIS2_EE12_Vector_implE", !589, i64 0}
!591 = !{!"_ZTSSt12_Vector_baseIN4llvm16MachineFrameInfo11StackObjectESaIS2_EE", !590, i64 0}
!592 = !{!"_ZTSSt6vectorIN4llvm16MachineFrameInfo11StackObjectESaIS2_EE", !591, i64 0}
!593 = !{!"_ZTSN4llvm16FramePointerKindE", !8, i64 0}
!594 = !{!"p1 _ZTSN4llvm15CalleeSavedInfoE", !14, i64 0}
!595 = !{!"_ZTSNSt12_Vector_baseIN4llvm15CalleeSavedInfoESaIS1_EE17_Vector_impl_dataE", !594, i64 0, !594, i64 8, !594, i64 16}
!596 = !{!"_ZTSNSt12_Vector_baseIN4llvm15CalleeSavedInfoESaIS1_EE12_Vector_implE", !595, i64 0}
!597 = !{!"_ZTSSt12_Vector_baseIN4llvm15CalleeSavedInfoESaIS1_EE", !596, i64 0}
!598 = !{!"_ZTSSt6vectorIN4llvm15CalleeSavedInfoESaIS1_EE", !597, i64 0}
!599 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIilEvEE", !24, i64 0}
!600 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIilELb1EEE", !599, i64 0}
!601 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIilEEE", !600, i64 0}
!602 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairIilELj32EEE", !8, i64 0}
!603 = !{!"_ZTSN4llvm11SmallVectorISt4pairIilELj32EEE", !601, i64 0, !602, i64 16}
!604 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_17MachineBasicBlockESt6vectorINS_15CalleeSavedInfoESaIS5_EEEE", !14, i64 0}
!605 = !{!"_ZTSN4llvm8DenseMapIPNS_17MachineBasicBlockESt6vectorINS_15CalleeSavedInfoESaIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE", !604, i64 0, !153, i64 8, !9, i64 16, !9, i64 20}
!606 = !{!"_ZTSN4llvm16MachineFrameInfoE", !72, i64 0, !18, i64 1, !18, i64 2, !592, i64 8, !9, i64 32, !18, i64 36, !18, i64 37, !18, i64 38, !18, i64 39, !18, i64 40, !36, i64 48, !36, i64 56, !72, i64 64, !18, i64 65, !18, i64 66, !593, i64 68, !9, i64 72, !9, i64 76, !36, i64 80, !9, i64 88, !598, i64 96, !18, i64 120, !603, i64 128, !36, i64 656, !72, i64 664, !18, i64 665, !18, i64 666, !18, i64 667, !18, i64 668, !18, i64 669, !18, i64 670, !605, i64 672, !605, i64 696, !36, i64 720}
!607 = !{!606, !9, i64 32}
!608 = !{!589, !588, i64 0}
!609 = !{!"p1 _ZTSN4llvm10AllocaInstE", !14, i64 0}
!610 = !{!"_ZTSN4llvm16MachineFrameInfo11StackObjectE", !36, i64 0, !36, i64 8, !72, i64 16, !18, i64 17, !18, i64 18, !18, i64 19, !18, i64 20, !8, i64 21, !609, i64 24, !18, i64 32, !18, i64 33, !18, i64 34, !18, i64 35, !8, i64 36}
!611 = !{!610, !18, i64 19}
!612 = !{!574}
!613 = !{!"p1 _ZTSN4llvm12MachineInstrE", !14, i64 0}
!614 = !{!"_ZTSN4llvm14MachineOperandE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 3, !9, i64 3, !9, i64 3, !9, i64 3, !9, i64 3, !9, i64 3, !9, i64 3, !8, i64 4, !613, i64 8, !8, i64 16}
!615 = !{!614, !613, i64 8}
!616 = !{!610, !36, i64 8}
!617 = !{!576}
!618 = !{!578}
!619 = !{!580}
!620 = !{!582}
!621 = distinct !{!621, !"_ZNK4llvm9BitVector8set_bitsEv"}
!622 = distinct !{!622, !621, !"_ZNK4llvm9BitVector8set_bitsEv: argument 0"}
!623 = distinct !{!623, !212, !637}
!624 = distinct !{!624, !212, !639, !640}
!625 = distinct !{!625, !212, !640, !639}
!626 = distinct !{!626, !212}
!627 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonImvEE", !24, i64 0}
!628 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseImLb1EEE", !627, i64 0}
!629 = !{!"_ZTSN4llvm15SmallVectorImplImEE", !628, i64 0}
!630 = !{!"_ZTSN4llvm18SmallVectorStorageImLj6EEE", !8, i64 0}
!631 = !{!"_ZTSN4llvm11SmallVectorImLj6EEE", !629, i64 0, !630, i64 16}
!632 = !{!"_ZTSN4llvm9BitVectorE", !631, i64 0, !9, i64 64}
!633 = !{!632, !9, i64 64}
!634 = !{!236, !9, i64 32}
!635 = !{!236, !9, i64 28}
!636 = !{!622}
!637 = !{!"llvm.loop.peeled.count", i32 1}
!638 = !{!225, !189, i64 32}
!639 = !{!"llvm.loop.isvectorized", i32 1}
!640 = !{!"llvm.loop.unroll.runtime.disable"}
!641 = !{!238, !9, i64 4}
!642 = distinct !{!642, !212}
!643 = distinct !{!643, !212}
!644 = distinct !{!644, !212}
!645 = distinct !{!645, !212}
!646 = distinct !{!646, !212}
!647 = distinct !{!647, !212}
!648 = distinct !{!648, !212}
!649 = distinct !{!649, !212}
!650 = !{!171, !9, i64 96}
!651 = distinct !{!651, !212}
!652 = distinct !{!652, !212}
!653 = !{!372, !371, i64 0}
!654 = distinct !{!654, !212}
!655 = !{!"_ZTSN4llvm3ISD10ArgFlagsTyE", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 2, !9, i64 2, !9, i64 2, !9, i64 2, !9, i64 2, !9, i64 3, !9, i64 3, !9, i64 4, !9, i64 4, !9, i64 4, !9, i64 4, !9, i64 8, !9, i64 12}
!656 = !{!"_ZTSN4llvm3ISD9OutputArgE", !655, i64 0, !31, i64 16, !201, i64 24, !200, i64 40, !9, i64 48, !9, i64 52}
!657 = !{!656, !200, i64 40}
!658 = !{!656, !9, i64 48}
!659 = !{!656, !9, i64 52}
!660 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!661 = !{!"_ZTSN4llvm10VectorTypeE", !376, i64 0, !200, i64 24, !9, i64 32}
!662 = !{!661, !200, i64 24}
!663 = !{!661, !9, i64 32}
!664 = !{!73, !9, i64 4}
!665 = !{!422, !200, i64 24}
!666 = distinct !{!666, !"_ZNK4llvm5Twine6concatERKS0_"}
!667 = distinct !{!667, !666, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!668 = !{!667}
!669 = !{!487, !487, i64 0}
!670 = !{i64 0, i64 16, !191, i64 16, i64 16, !191, i64 32, i64 1, !669, i64 33, i64 1, !669}
!671 = !{!"p1 _ZTSN4llvm11GlobalValueE", !14, i64 0}
!672 = !{!"_ZTSN4llvm18TargetLoweringBase8AddrModeE", !671, i64 0, !36, i64 8, !18, i64 16, !36, i64 24, !36, i64 32}
!673 = !{!672, !36, i64 32}
!674 = !{!672, !36, i64 8}
!675 = !{!672, !36, i64 24}
!676 = !{!672, !18, i64 16}
!677 = !{!73, !9, i64 12}
!678 = !{!421, !421, i64 0}
!679 = !{!151, !9, i64 1376}
!680 = !{!171, !9, i64 72}
!681 = distinct !{!681, !212}
!682 = distinct !{!682, !212}
!683 = !{!"p1 _ZTSN4llvm22SelectionDAGTargetInfoE", !14, i64 0}
!684 = !{!"p1 _ZTSN4llvm14TargetLoweringE", !14, i64 0}
!685 = !{!"p1 _ZTSN4llvm19LibcallLoweringInfoE", !14, i64 0}
!686 = !{!"p1 _ZTSN4llvm15FunctionVarLocsE", !14, i64 0}
!687 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !14, i64 0}
!688 = !{!"p1 _ZTSN4llvm15AnalysisManagerINS_15MachineFunctionEJEEE", !14, i64 0}
!689 = !{!"p1 _ZTSN4llvm4PassE", !14, i64 0}
!690 = !{!"p1 _ZTSN4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEE", !14, i64 0}
!691 = !{!"p1 _ZTSN4llvm20FunctionLoweringInfoE", !14, i64 0}
!692 = !{!"p1 _ZTSN4llvm25OptimizationRemarkEmitterE", !14, i64 0}
!693 = !{!"p1 _ZTSN4llvm18ProfileSummaryInfoE", !14, i64 0}
!694 = !{!"p1 _ZTSN4llvm18BlockFrequencyInfoE", !14, i64 0}
!695 = !{!"p1 _ZTSN4llvm17MachineModuleInfoE", !14, i64 0}
!696 = !{!"_ZTSN4llvm3EVT14compareRawBitsE"}
!697 = !{!"_ZTSSt20_Rb_tree_key_compareIN4llvm3EVT14compareRawBitsEE", !696, i64 0}
!698 = !{!"_ZTSNSt8_Rb_treeIN4llvm3EVTES1_St9_IdentityIS1_ENS1_14compareRawBitsESaIS1_EE13_Rb_tree_implIS4_Lb1EEE", !697, i64 0, !37, i64 8}
!699 = !{!"_ZTSSt8_Rb_treeIN4llvm3EVTES1_St9_IdentityIS1_ENS1_14compareRawBitsESaIS1_EE", !698, i64 0}
!700 = !{!"_ZTSSt3setIN4llvm3EVTENS1_14compareRawBitsESaIS1_EE", !699, i64 0}
!701 = !{!"_ZTSN4llvm14FoldingSetBaseE", !17, i64 0, !9, i64 8, !9, i64 12}
!702 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetINS_12SDVTListNodeEEES2_EE", !701, i64 0}
!703 = !{!"_ZTSN4llvm10FoldingSetINS_12SDVTListNodeEEE", !702, i64 0}
!704 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_6SDNodeELb0ELb0EvLb0EvEEEE", !509, i64 0}
!705 = !{!"_ZTSN4llvm12simple_ilistINS_6SDNodeEJEEE", !704, i64 0}
!706 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_6SDNodeEJEEENS_12ilist_traitsIS2_EEEE", !705, i64 0}
!707 = !{!"_ZTSN4llvm6iplistINS_6SDNodeEJEEE", !706, i64 0}
!708 = !{!"p1 _ZTSN4llvm8RecyclerINS_6SDNodeELm112ELm8EE8FreeNodeE", !14, i64 0}
!709 = !{!"_ZTSN4llvm8RecyclerINS_6SDNodeELm112ELm8EEE", !708, i64 0}
!710 = !{!"_ZTSN4llvm18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS_6SDNodeELm112ELm8EEE", !709, i64 0, !264, i64 8}
!711 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetINS_6SDNodeEEES2_EE", !701, i64 0}
!712 = !{!"_ZTSN4llvm10FoldingSetINS_6SDNodeEEE", !711, i64 0}
!713 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_13ArrayRecyclerINS_5SDUseELm8EE8FreeListEvEE", !24, i64 0}
!714 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_13ArrayRecyclerINS_5SDUseELm8EE8FreeListELb1EEE", !713, i64 0}
!715 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_13ArrayRecyclerINS_5SDUseELm8EE8FreeListEEE", !714, i64 0}
!716 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_13ArrayRecyclerINS_5SDUseELm8EE8FreeListELj8EEE", !8, i64 0}
!717 = !{!"_ZTSN4llvm11SmallVectorIPNS_13ArrayRecyclerINS_5SDUseELm8EE8FreeListELj8EEE", !715, i64 0, !716, i64 16}
!718 = !{!"_ZTSN4llvm13ArrayRecyclerINS_5SDUseELm8EEE", !717, i64 0}
!719 = !{!"p1 _ZTSN4llvm9SDDbgInfoE", !14, i64 0}
!720 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_6SDNodeENS_12SelectionDAG13NodeExtraInfoEEE", !14, i64 0}
!721 = !{!"_ZTSN4llvm8DenseMapIPKNS_6SDNodeENS_12SelectionDAG13NodeExtraInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !720, i64 0, !153, i64 8, !9, i64 16, !9, i64 20}
!722 = !{!"p1 _ZTSN4llvm12SelectionDAG17DAGUpdateListenerE", !14, i64 0}
!723 = !{!"p2 _ZTSN4llvm14CondCodeSDNodeE", !17, i64 0}
!724 = !{!"_ZTSNSt12_Vector_baseIPN4llvm14CondCodeSDNodeESaIS2_EE17_Vector_impl_dataE", !723, i64 0, !723, i64 8, !723, i64 16}
!725 = !{!"_ZTSNSt12_Vector_baseIPN4llvm14CondCodeSDNodeESaIS2_EE12_Vector_implE", !724, i64 0}
!726 = !{!"_ZTSSt12_Vector_baseIPN4llvm14CondCodeSDNodeESaIS2_EE", !725, i64 0}
!727 = !{!"_ZTSSt6vectorIPN4llvm14CondCodeSDNodeESaIS2_EE", !726, i64 0}
!728 = !{!"p2 _ZTSN4llvm6SDNodeE", !17, i64 0}
!729 = !{!"_ZTSNSt12_Vector_baseIPN4llvm6SDNodeESaIS2_EE17_Vector_impl_dataE", !728, i64 0, !728, i64 8, !728, i64 16}
!730 = !{!"_ZTSNSt12_Vector_baseIPN4llvm6SDNodeESaIS2_EE12_Vector_implE", !729, i64 0}
!731 = !{!"_ZTSSt12_Vector_baseIPN4llvm6SDNodeESaIS2_EE", !730, i64 0}
!732 = !{!"_ZTSSt6vectorIPN4llvm6SDNodeESaIS2_EE", !731, i64 0}
!733 = !{!"_ZTSNSt8_Rb_treeIN4llvm3EVTESt4pairIKS1_PNS0_6SDNodeEESt10_Select1stIS6_ENS1_14compareRawBitsESaIS6_EE13_Rb_tree_implIS9_Lb1EEE", !697, i64 0, !37, i64 8}
!734 = !{!"_ZTSSt8_Rb_treeIN4llvm3EVTESt4pairIKS1_PNS0_6SDNodeEESt10_Select1stIS6_ENS1_14compareRawBitsESaIS6_EE", !733, i64 0}
!735 = !{!"_ZTSSt3mapIN4llvm3EVTEPNS0_6SDNodeENS1_14compareRawBitsESaISt4pairIKS1_S3_EEE", !734, i64 0}
!736 = !{!"_ZTSN4llvm9StringMapIPNS_6SDNodeENS_15MallocAllocatorEEE", !113, i64 0}
!737 = !{!"_ZTSSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEE"}
!738 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEEE", !737, i64 0}
!739 = !{!"_ZTSNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjES0_IKS7_PN4llvm6SDNodeEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !738, i64 0, !37, i64 8}
!740 = !{!"_ZTSSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjES0_IKS7_PN4llvm6SDNodeEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE", !739, i64 0}
!741 = !{!"_ZTSSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEPN4llvm6SDNodeESt4lessIS7_ESaIS0_IKS7_SA_EEE", !740, i64 0}
!742 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolEPNS_6SDNodeEEE", !14, i64 0}
!743 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolEPNS_6SDNodeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !742, i64 0, !153, i64 8, !9, i64 16, !9, i64 20}
!744 = !{!"p1 _ZTSN4llvm12SelectionDAG12FlagInserterE", !14, i64 0}
!745 = !{!"_ZTSN4llvm12SelectionDAGE", !28, i64 0, !683, i64 8, !684, i64 16, !507, i64 24, !169, i64 32, !685, i64 40, !686, i64 48, !687, i64 56, !688, i64 64, !689, i64 72, !373, i64 80, !83, i64 88, !690, i64 96, !691, i64 104, !692, i64 112, !693, i64 120, !694, i64 128, !695, i64 136, !700, i64 144, !703, i64 192, !264, i64 208, !514, i64 288, !516, i64 376, !707, i64 392, !710, i64 408, !712, i64 496, !264, i64 512, !718, i64 592, !719, i64 672, !721, i64 680, !192, i64 704, !18, i64 706, !722, i64 712, !727, i64 720, !732, i64 744, !735, i64 768, !736, i64 816, !741, i64 840, !743, i64 888, !744, i64 912}
!746 = !{!745, !373, i64 80}
!747 = !{!745, !687, i64 56}
!748 = !{ptr @_ZNK4llvm18TargetLoweringBase18allowsMemoryAccessERNS_11LLVMContextERKNS_10DataLayoutENS_3EVTERKNS_17MachineMemOperandEPj}
!749 = !{!"p1 _ZTSN4llvm10DataLayoutE", !14, i64 0}
!750 = !{!749, !749, i64 0}
!751 = !{!"p1 _ZTSN4llvm13DominatorTreeE", !14, i64 0}
!752 = !{!"p1 _ZTSN4llvm15AssumptionCacheE", !14, i64 0}
!753 = !{!"p1 _ZTSN4llvm11InstructionE", !14, i64 0}
!754 = !{!"p1 _ZTSN4llvm17DomConditionCacheE", !14, i64 0}
!755 = !{!"p1 _ZTSN4llvm11CondContextE", !14, i64 0}
!756 = !{!"_ZTSN4llvm14InstrInfoQueryE", !18, i64 0}
!757 = !{!"_ZTSN4llvm13SimplifyQueryE", !749, i64 0, !507, i64 8, !751, i64 16, !752, i64 24, !753, i64 32, !754, i64 40, !755, i64 48, !756, i64 56, !18, i64 57, !18, i64 58}
!758 = !{!757, !507, i64 8}
!759 = !{!757, !751, i64 16}
!760 = !{!757, !752, i64 24}
!761 = !{!757, !753, i64 32}
!762 = !{!756, !18, i64 0}
!763 = !{!757, !18, i64 57}
!764 = !{!757, !18, i64 58}
!765 = !{!422, !9, i64 36}
!766 = !{!515, !515, i64 0}
!767 = !{!"p1 _ZTSN4llvm11ConstantIntE", !14, i64 0}
!768 = !{!"_ZTSN4llvm14ConstantSDNodeE", !514, i64 0, !767, i64 88}
!769 = !{!768, !767, i64 88}
!770 = !{!514, !9, i64 24}
!771 = distinct !{null, null}
!772 = distinct !{null, null}
!773 = !{!512, !512, i64 0}
!774 = !{!516, !9, i64 8}
!775 = distinct !{!775, !212}
!776 = !{!35, !34, i64 16}
!777 = distinct !{!777, !212}
!778 = distinct !{!778, !212}
!779 = distinct !{!779, !786}
!780 = distinct !{null}
!781 = !{!400, !400, i64 0}
!782 = !{!"p2 _ZTSN4llvm5ValueE", !17, i64 0}
!783 = !{!"_ZTSNSt12_Vector_baseIPN4llvm5ValueESaIS2_EE17_Vector_impl_dataE", !782, i64 0, !782, i64 8, !782, i64 16}
!784 = !{!783, !782, i64 8}
!785 = !{!783, !782, i64 0}
!786 = !{!"llvm.loop.unroll.disable"}
!787 = !{!"p1 _ZTSN4llvm17AttributeListImplE", !14, i64 0}
!788 = !{!"_ZTSN4llvm13AttributeListE", !787, i64 0}
!789 = !{!788, !787, i64 0}
!790 = !{!397, !9, i64 0}
!791 = !{!402, !18, i64 68}
!792 = !{!787, !787, i64 0}
!793 = distinct !{!793, !212}
!794 = !{!"_ZTSN4llvm9ArrayTypeE", !376, i64 0, !200, i64 24, !36, i64 32}
!795 = !{!794, !200, i64 24}
!796 = !{i64 0, i64 8, !191, i64 8, i64 4, !175, i64 12, i64 4, !175, i64 16, i64 2, !196, i64 24, i64 2, !196, i64 32, i64 8, !210, i64 40, i64 8, !210, i64 48, i64 4, !175, i64 52, i64 4, !175}
!797 = !{!493, !421, i64 0}
!798 = !{!80, !77, i64 44}
!799 = !{!80, !74, i64 32}
!800 = !{!80, !76, i64 40}
!801 = !{!177, !18, i64 8}
!802 = !{!183, !9, i64 8}
end_hunk_1
