Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonConstPropagation?download=true
inline.NumInlined: 2642
inline.NumDeleted: 1204
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_121HexagonConstEvaluator17evaluateHexRSEQ32EN4llvm15TargetInstrInfo13RegSubRegPairES3_RKNS_22MachineConstPropagator7CellMapERNS_11LatticeCellE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121HexagonConstEvaluator18evaluateHexCompareERKN4llvm12MachineInstrERKNS_22MachineConstPropagator7CellMapERS6_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.(anonymous namespace)::LatticeCell", align 8 ; 11 uses
  %5 = alloca %"class.(anonymous namespace)::LatticeCell", align 8 ; 13 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"struct.llvm::TargetInstrInfo::RegSubRegPair", align 8 ; 13 uses
  %8 = alloca %"struct.llvm::TargetInstrInfo::RegSubRegPair", align 8 ; 9 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %11 = alloca %"struct.llvm::TargetInstrInfo::RegSubRegPair", align 8 ; 4 uses
  %12 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %i.b = alloca i8, align 1                       ; 10 uses
  %13 = alloca %"class.(anonymous namespace)::LatticeCell", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !276  ; 2 uses
  %.off = add i32 %i.d, -1226
  %switch = icmp ult i32 %.off, 9
  br i1 %switch, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !309  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  switch i32 %i.d, label %default.unreachable [
    i32 1226, label %_ZN12_GLOBAL__N_121HexagonConstEvaluator6getCmpEj.exit.i
    i32 1228, label %_ZN12_GLOBAL__N_121HexagonConstEvaluator6getCmpEj.exit.i
    i32 1233, label %bb.d
    i32 1234, label %bb.d
    i32 1232, label %bb.d
    i32 1230, label %bb.c
    i32 1227, label %_ZN12_GLOBAL__N_121HexagonConstEvaluator6getCmpEj.exit.i
    i32 1231, label %bb.c
    i32 1229, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  br label %_ZN12_GLOBAL__N_121HexagonConstEvaluator6getCmpEj.exit.i

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b
  br label %_ZN12_GLOBAL__N_121HexagonConstEvaluator6getCmpEj.exit.i

default.unreachable:                              ; preds = %bb.b
  unreachable

_ZN12_GLOBAL__N_121HexagonConstEvaluator6getCmpEj.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b, %bb.b
  %cond29 = phi i1 [ false, %bb.d ], [ true, %bb.b ], [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %.0.i.i = phi i32 [ 72, %bb.d ], [ 1, %bb.b ], [ 1, %bb.b ], [ 8, %bb.c ], [ 1, %bb.b ] ; 7 uses
  %i.i = load i32, ptr %i.g, align 8              ; 2 uses
  %i.j = load i32, ptr %i.h, align 8              ; 3 uses
  %i.k = and i32 %i.j, 255                        ; 2 uses
  %i.l = icmp eq i32 %i.k, 0                      ; 2 uses
  %i.m = icmp eq i32 %i.k, 1                      ; 2 uses
  %trunc.i = trunc i32 %i.i to i8
  switch i8 %trunc.i, label %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit.thread [
    i8 0, label %bb.e
    i8 1, label %bb.y
  ]

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_121HexagonConstEvaluator6getCmpEj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !310
  %i.p = lshr i32 %i.i, 8
  %i.q = and i32 %i.p, 4095
  %.sroa.2.0.insert.ext.i.i = zext nneg i32 %i.q to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %7, align 8
  br i1 %i.l, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !310
  %i.t = lshr exact i32 %i.j, 8
  %i.u = and i32 %i.t, 4095
  %.sroa.2.0.insert.ext.i40.i = zext nneg i32 %i.u to i64
  %.sroa.2.0.insert.shift.i41.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i40.i, 32
  %.sroa.0.0.insert.ext.i42.i = zext i32 %i.s to i64
  %.sroa.0.0.insert.insert.i43.i = or disjoint i64 %.sroa.2.0.insert.shift.i41.i, %.sroa.0.0.insert.ext.i42.i
  store i64 %.sroa.0.0.insert.insert.i43.i, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i8 1, ptr %4, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false), !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i8 1, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false), !tbaa !193
  %i.x = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator7getCellERKN4llvm15TargetInstrInfo13RegSubRegPairERKNS_22MachineConstPropagator7CellMapERNS_11LatticeCellE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br i1 %i.x, label %bb.g, label %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit.thread26

bb.g:                                             ; preds = %bb.f
  %i.y = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator7getCellERKN4llvm15TargetInstrInfo13RegSubRegPairERKNS_22MachineConstPropagator7CellMapERNS_11LatticeCellE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(40) %5)
  br i1 %i.y, label %bb.h, label %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit.thread26

bb.h:                                             ; preds = %bb.g
  %.val48.i.i = load i8, ptr %4, align 8
  %i.z = and i8 %.val48.i.i, 32
  %.not55.i.i = icmp eq i8 %i.z, 0
  %.val47.i.i = load i8, ptr %5, align 8          ; 2 uses
  %i.aa = and i8 %.val47.i.i, 32
  %.not56.i.i = icmp eq i8 %i.aa, 0               ; 2 uses
  br i1 %.not55.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = call fastcc noundef i32 @_ZNK12_GLOBAL__N_111LatticeCell10propertiesEv(ptr noundef nonnull align 8 dereferenceable(40) %4) ; 2 uses
  br i1 %.not56.i.i, label %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit, label %.split

.split:                                           ; preds = %bb.i
  %i.ac = call fastcc noundef i32 @_ZNK12_GLOBAL__N_111LatticeCell10propertiesEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
  %i.ad = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPppEjjjRb(i32 noundef range(i32 0, 74) %.0.i.i, i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %i.ad, label %bb.ag, label %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit.thread

_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit: ; preds = %bb.i
  %i.ae = xor i32 %.0.i.i, 12
  %spec.select = select i1 %cond29, i32 2, i32 %i.ae
  %i.af = zext i32 %i.ab to i64
  %i.ag = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPrpEjRKN4llvm15TargetInstrInfo13RegSubRegPairEmRKNS_22MachineConstPropagator7CellMapERb(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %spec.select, ptr noundef nonnull align 4 dereferenceable(8) %8, i64 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %i.ag, label %bb.ag, label %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit.thread

bb.j:                                             ; preds = %bb.h
  br i1 %.not56.i.i, label %bb.k, label %.split28

.split28:                                         ; preds = %bb.j
  %i.ah = call fastcc noundef i32 @_ZNK12_GLOBAL__N_111LatticeCell10propertiesEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
  %i.ai = zext i32 %i.ah to i64
  %i.aj = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPrpEjRKN4llvm15TargetInstrInfo13RegSubRegPairEmRKNS_22MachineConstPropagator7CellMapERb(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef range(i32 0, 74) %.0.i.i, ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %i.aj, label %bb.ag, label %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 1, ptr %i.ak, align 8, !tbaa !317
  store i64 0, ptr %6, align 8, !tbaa !310
  %i.al = and i8 %.val47.i.i, 28
  %.not60.not.i.i = icmp eq i8 %i.al, 0
  br i1 %.not60.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.p
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.p ], [ 0, %bb.k ] ; 2 uses
  %.03862.i.i = phi i8 [ %i.ba, %bb.p ], [ 1, %bb.k ]
  %.03961.i.i = phi i8 [ %i.bb, %bb.p ], [ 1, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !310 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !324
  %i.ap = icmp eq i8 %i.ao, 5
  br i1 %i.ap, label %bb.l, label %.thread52.i.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !317
  %i.as = icmp ult i32 %i.ar, 65
  br i1 %i.as, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !317 ; 2 uses
  %i.av = icmp ult i32 %i.au, 65
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !310
  store i64 %i.aw, ptr %6, align 8, !tbaa !310
  store i32 %i.au, ptr %i.ak, align 8, !tbaa !317
  br label %_ZNK12_GLOBAL__N_121MachineConstEvaluator10constToIntEPKN4llvm8ConstantERNS1_5APIntE.exit.i.i

bb.o:                                             ; preds = %bb.m, %bb.l
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #24
  br label %_ZNK12_GLOBAL__N_121MachineConstEvaluator10constToIntEPKN4llvm8ConstantERNS1_5APIntE.exit.i.i

_ZNK12_GLOBAL__N_121MachineConstEvaluator10constToIntEPKN4llvm8ConstantERNS1_5APIntE.exit.i.i: ; preds = %bb.o, %bb.n
  %i.ax = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPriEjRKN4llvm15TargetInstrInfo13RegSubRegPairERKNS1_5APIntERKNS_22MachineConstPropagator7CellMapERb(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef range(i32 0, 74) %.0.i.i, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br i1 %i.ax, label %bb.p, label %.thread52.i.i

.thread52.i.i:                                    ; preds = %_ZNK12_GLOBAL__N_121MachineConstEvaluator10constToIntEPKN4llvm8ConstantERNS1_5APIntE.exit.i.i, %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.q

bb.p:                                             ; preds = %_ZNK12_GLOBAL__N_121MachineConstEvaluator10constToIntEPKN4llvm8ConstantERNS1_5APIntE.exit.i.i
  %i.ay = load i8, ptr %i.a, align 1, !range !296 ; 2 uses
  %i.az = xor i8 %i.ay, -1
  %i.ba = and i8 %.03862.i.i, %i.az               ; 2 uses
  %i.bb = and i8 %i.ay, %.03961.i.i               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i.i = load i8, ptr %5, align 8
  %i.bc = lshr i8 %.val.i.i, 2
  %i.bd = and i8 %i.bc, 7
  %i.be = zext nneg i8 %i.bd to i64
  %.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.be
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !590

._crit_edge.loopexit.i.i:                         ; preds = %bb.p
  %i.bf = trunc nuw i8 %i.ba to i1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.k
  %.039.lcssa.i.i = phi i8 [ 1, %bb.k ], [ %i.bb, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.038.lcssa.i.i = phi i1 [ true, %bb.k ], [ %i.bf, %._crit_edge.loopexit.i.i ]
  %i.bg = trunc nuw i8 %.039.lcssa.i.i to i1
  store i8 %.039.lcssa.i.i, ptr %i.b, align 1, !tbaa !294
  %i.bh = select i1 %i.bg, i1 true, i1 %.038.lcssa.i.i
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i, %.thread52.i.i
  %.4.i.i = phi i1 [ %i.bh, %._crit_edge.i.i ], [ false, %.thread52.i.i ]
  %i.bi = load i32, ptr %i.ak, align 8, !tbaa !317
  %i.bj = icmp ugt i32 %i.bi, 64
  br i1 %i.bj, label %bb.r, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.bk = load ptr, ptr %6, align 8, !tbaa !310   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.bk) #27
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.4.i.i, label %bb.ag, label %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit.thread

bb.t:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.val39.i = load i64, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 32, ptr %i.bn, align 8, !tbaa !317, !alias.scope !597
  %i.bo = and i64 %.val39.i, 4294967295
  store i64 %i.bo, ptr %9, align 8, !tbaa !310, !alias.scope !597
  %i.bp = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPriEjRKN4llvm15TargetInstrInfo13RegSubRegPairERKNS1_5APIntERKNS_22MachineConstPropagator7CellMapERb(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.0.i.i, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %i.bq = load i32, ptr %i.bn, align 8, !tbaa !317
  %i.br = icmp ugt i32 %i.bq, 64
  br i1 %i.br, label %bb.v, label %_ZN4llvm5APIntD2Ev.exit.i

bb.v:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr %9, align 8, !tbaa !310   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #27
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %i.bp, label %bb.ag, label %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit.thread

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit.thread

bb.y:                                             ; preds = %_ZN12_GLOBAL__N_121HexagonConstEvaluator6getCmpEj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val38.i = load i64, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i32 32, ptr %i.bv, align 8, !tbaa !317, !alias.scope !598
  %i.bw = and i64 %.val38.i, 4294967295
  store i64 %i.bw, ptr %10, align 8, !tbaa !310, !alias.scope !598
  br i1 %i.l, label %_ZN12_GLOBAL__N_121MachineConstEvaluator10Comparison6negateEj.exit.i, label %bb.z

_ZN12_GLOBAL__N_121MachineConstEvaluator10Comparison6negateEj.exit.i: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !310
  %i.bz = lshr exact i32 %i.j, 8
  %i.ca = and i32 %i.bz, 4095
  %.sroa.2.0.insert.ext.i44.i = zext nneg i32 %i.ca to i64
  %.sroa.2.0.insert.shift.i45.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i44.i, 32
  %.sroa.0.0.insert.ext.i46.i = zext i32 %i.by to i64
  %.sroa.0.0.insert.insert.i47.i = or disjoint i64 %.sroa.2.0.insert.shift.i45.i, %.sroa.0.0.insert.ext.i46.i
  store i64 %.sroa.0.0.insert.insert.i47.i, ptr %11, align 8
  %i.cb = xor i32 %.0.i.i, 12
  %spec.select30 = select i1 %cond29, i32 2, i32 %i.cb
  %i.cc = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPriEjRKN4llvm15TargetInstrInfo13RegSubRegPairERKNS1_5APIntERKNS_22MachineConstPropagator7CellMapERb(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %spec.select30, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  br i1 %i.m, label %bb.aa, label %_ZN4llvm5APIntD2Ev.exit50.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.val.i = load i64, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i32 32, ptr %i.ce, align 8, !tbaa !317, !alias.scope !599
  %i.cf = and i64 %.val.i, 4294967295
  store i64 %i.cf, ptr %12, align 8, !tbaa !310, !alias.scope !599
  call fastcc void @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPiiEjRKN4llvm5APIntES4_Rb(i32 noundef %.0.i.i, ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %i.cg = load i32, ptr %i.ce, align 8, !tbaa !317
  %i.ch = icmp ugt i32 %i.cg, 64
  br i1 %i.ch, label %bb.ab, label %_ZN4llvm5APIntD2Ev.exit49.i

bb.ab:                                            ; preds = %bb.aa
  %i.ci = load ptr, ptr %12, align 8, !tbaa !310  ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN4llvm5APIntD2Ev.exit49.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.ci) #27
  br label %_ZN4llvm5APIntD2Ev.exit49.i

_ZN4llvm5APIntD2Ev.exit49.i:                      ; preds = %bb.ac, %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit49.i, %_ZN12_GLOBAL__N_121MachineConstEvaluator10Comparison6negateEj.exit.i
  %.1.ph.i = phi i1 [ true, %_ZN4llvm5APIntD2Ev.exit49.i ], [ %i.cc, %_ZN12_GLOBAL__N_121MachineConstEvaluator10Comparison6negateEj.exit.i ]
  %.pr.i = load i32, ptr %i.bv, align 8, !tbaa !317
  %i.ck = icmp ugt i32 %.pr.i, 64
  br i1 %i.ck, label %bb.ae, label %_ZN4llvm5APIntD2Ev.exit50.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.cl = load ptr, ptr %10, align 8, !tbaa !310  ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN4llvm5APIntD2Ev.exit50.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #27
  br label %_ZN4llvm5APIntD2Ev.exit50.thread.i

_ZN4llvm5APIntD2Ev.exit50.thread.i:               ; preds = %bb.af, %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br i1 %.1.ph.i, label %bb.ag, label %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit.thread

_ZN4llvm5APIntD2Ev.exit50.i:                      ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit.thread

_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit.thread26: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit.thread

bb.ag:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i, %.split28, %.split, %_ZN4llvm5APIntD2Ev.exit.i, %_ZN4llvm5APIntD2Ev.exit50.thread.i, %_ZN12_GLOBAL__N_121HexagonConstEvaluator19evaluateHexCompare2EjRKN4llvm14MachineOperandES4_RKNS_22MachineConstPropagator7CellMapERb.exit
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !309
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !310 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 88
  br label %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit

bb.ai:                                            ; preds = %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !195 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not2.i.i.i.i, label %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ai, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val.i.i.i, %bb.ai ] ; 3 uses
  %.083.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ct, %bb.ai ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 32
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !325
  %i.cw = icmp ult i32 %i.cv, %i.cp               ; 2 uses
  %.19.i.i.i.i = select i1 %i.cw, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.cw, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !263 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cx = icmp eq ptr %.19.i.i.i.i, %i.ct
  br i1 %i.cx, label %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i, label %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i
end_hunk_0
begin_hunk_1_@_ZN4llvm15SmallVectorImplINS_5APIntEE7reserveEm:bb.a
  %i.s = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.prol, align 8
  store i64 %i.s, ptr %.09.i.i.i.i.i.i.i.prol, align 8
  store i32 0, ptr %i.q, align 8, !tbaa !317
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !641

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.i.unr = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.04.08.i.i.i.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.v = icmp ult i64 %i.m, 48
  br i1 %i.v, label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !317
  store i32 %i.y, ptr %i.w, align 8, !tbaa !317
  %i.z = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8
  store i64 %i.z, ptr %.09.i.i.i.i.i.i.i, align 8
  store i32 0, ptr %i.x, align 8, !tbaa !317
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !317
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !317
  %i.af = load i64, ptr %i.aa, align 8
  store i64 %i.af, ptr %i.ab, align 8
  store i32 0, ptr %i.ad, align 8, !tbaa !317
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !317
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !317
  %i.al = load i64, ptr %i.ag, align 8
  store i64 %i.al, ptr %i.ah, align 8
  store i32 0, ptr %i.aj, align 8, !tbaa !317
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !317
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !317
  %i.ar = load i64, ptr %i.am, align 8
  store i64 %i.ar, ptr %i.an, align 8
  store i32 0, ptr %i.ap, align 8, !tbaa !317
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.as, %i.l
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !642

_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !284 ; 3 uses
  %.pre3.i.i = load i32, ptr %i.i, align 8, !tbaa !285 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %.pre3.i.i, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE19moveElementsForGrowEPS1_.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i.i
  %i.au = zext i32 %.pre3.i.i to i64
  %.idx2.i.i = shl nuw nsw i64 %i.au, 4
  %i.av = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.idx2.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.aw, %_ZN4llvm5APIntD2Ev.exit.i.i.i ], [ %i.av, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !317
  %i.az = icmp ugt i32 %i.ay, 64
  br i1 %i.az, label %bb.c, label %_ZN4llvm5APIntD2Ev.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !310 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN4llvm5APIntD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.ba) #27
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.i

_ZN4llvm5APIntD2Ev.exit.i.i.i:                    ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.pre.i.i, %i.aw
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i: ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !284
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE19moveElementsForGrowEPS1_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE19moveElementsForGrowEPS1_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i, %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i.i, %bb.b
  %i.bc = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i ], [ %i.h, %bb.b ], [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i.i ] ; 2 uses
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !21
  %i.be = icmp eq ptr %i.bc, %i.f
  br i1 %i.be, label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE4growEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE19moveElementsForGrowEPS1_.exit.i
  call void @free(ptr noundef %i.bc) #24
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE4growEm.exit

_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE4growEm.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE19moveElementsForGrowEPS1_.exit.i, %bb.e
  store ptr %i.g, ptr %0, align 8, !tbaa !284
  %i.bf = trunc i64 %i.bd to i32
  store i32 %i.bf, ptr %i.b, align 4, !tbaa !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE4growEm.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

declare void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #3

declare void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPriEjRKN4llvm15TargetInstrInfo13RegSubRegPairERKNS1_5APIntERKNS_22MachineConstPropagator7CellMapERb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.(anonymous namespace)::LatticeCell", align 8 ; 8 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i8 1, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !tbaa !193
  %i.c = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator7getCellERKN4llvm15TargetInstrInfo13RegSubRegPairERKNS_22MachineConstPropagator7CellMapERNS_11LatticeCellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(40) %6)
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.val30 = load i8, ptr %6, align 8              ; 2 uses
  %i.d = and i8 %.val30, 32
  %.not37 = icmp eq i8 %i.d, 0
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call fastcc noundef i32 @_ZNK12_GLOBAL__N_111LatticeCell10propertiesEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
  %i.f = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPpiEjjRKN4llvm5APIntERb(i32 noundef %1, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 1, ptr %i.g, align 8, !tbaa !317
  store i64 0, ptr %7, align 8, !tbaa !310
  %i.h = and i8 %.val30, 28
  %.not41.not = icmp eq i8 %i.h, 0
  br i1 %.not41.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.d ] ; 2 uses
  %.02143 = phi i8 [ %i.w, %bb.i ], [ 1, %bb.d ]
  %.02242 = phi i8 [ %i.u, %bb.i ], [ 1, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !310  ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !324
  %i.l = icmp eq i8 %i.k, 5
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.g, align 8, !tbaa !317
  %i.o = icmp ult i32 %i.n, 65
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !317  ; 2 uses
  %i.r = icmp ult i32 %i.q, 65
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.m, align 8, !tbaa !310
  store i64 %i.s, ptr %7, align 8, !tbaa !310
  store i32 %i.q, ptr %i.g, align 8, !tbaa !317
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %i.m) #24
  br label %bb.i

.thread:                                          ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  call fastcc void @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPiiEjRKN4llvm5APIntES4_Rb(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.t = load i8, ptr %i.a, align 1, !tbaa !294, !range !296, !noundef !149 ; 2 uses
  %i.u = and i8 %i.t, %.02242                     ; 2 uses
  %i.v = xor i8 %i.t, -1
  %i.w = and i8 %.02143, %i.v                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i8, ptr %6, align 8
  %i.x = lshr i8 %.val, 2
  %i.y = and i8 %i.x, 7
  %i.z = zext nneg i8 %i.y to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.z
  br i1 %.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !644

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.aa = trunc nuw i8 %i.w to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.022.lcssa = phi i8 [ 1, %bb.d ], [ %i.u, %._crit_edge.loopexit ] ; 2 uses
  %.021.lcssa = phi i1 [ true, %bb.d ], [ %i.aa, %._crit_edge.loopexit ]
  %i.ab = trunc nuw i8 %.022.lcssa to i1
  store i8 %.022.lcssa, ptr %5, align 1, !tbaa !294
  %i.ac = select i1 %i.ab, i1 true, i1 %.021.lcssa
  br label %bb.j

bb.j:                                             ; preds = %.thread, %._crit_edge
  %.3 = phi i1 [ %i.ac, %._crit_edge ], [ false, %.thread ]
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !317
  %i.ae = icmp ugt i32 %i.ad, 64
  br i1 %i.ae, label %bb.k, label %_ZN4llvm5APIntD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %7, align 8, !tbaa !310   ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN4llvm5APIntD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.af) #27
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4llvm5APIntD2Ev.exit, %bb.c
  %.4 = phi i1 [ %i.f, %bb.c ], [ %.3, %_ZN4llvm5APIntD2Ev.exit ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPiiEjRKN4llvm5APIntES4_Rb(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  switch i32 %0, label %bb.d [
    i32 2, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_ZN4llvm5APInt11isSameValueERKS0_S2_b(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i1 noundef zeroext false)
  %i.b = xor i1 %i.a, true
  %i.c = zext i1 %i.b to i8
  store i8 %i.c, ptr %3, align 1, !tbaa !294
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4llvm5APInt11isSameValueERKS0_S2_b(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i1 noundef zeroext false)
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %3, align 1, !tbaa !294
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  %i.f = and i32 %0, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef zeroext i1 @_ZN4llvm5APInt11isSameValueERKS0_S2_b(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i1 noundef zeroext false)
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %3, align 1, !tbaa !294
  br label %bb.z

bb.g:                                             ; preds = %bb.e, %bb.d
  store i8 0, ptr %3, align 1, !tbaa !294
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !317
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !317
  %i.l = tail call i32 @llvm.umax.i32(i32 %i.i, i32 %i.k) ; 4 uses
  %i.m = and i32 %0, 64
  %.not37 = icmp eq i32 %i.m, 0
  %i.n = and i32 %0, 4
  %.not38 = icmp eq i32 %i.n, 0                   ; 2 uses
  br i1 %.not37, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %i.l) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %i.l) #24
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5) #28
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.p = and i32 %0, 8
  %.not41 = icmp eq i32 %i.p, 0
  br i1 %.not41, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %4) #28
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.k
  %.sink = phi i32 [ %i.q, %bb.k ], [ %i.o, %bb.i ]
  %.lobit1 = lshr i32 %.sink, 31
  %i.r = trunc nuw nsw i32 %.lobit1 to i8
  store i8 %i.r, ptr %3, align 1, !tbaa !294
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !317
  %i.u = icmp ugt i32 %i.t, 64
  br i1 %i.u, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr %5, align 8, !tbaa !310    ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN4llvm5APIntD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.v) #27
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !317
  %i.z = icmp ugt i32 %i.y, 64
  br i1 %i.z, label %bb.o, label %_ZN4llvm5APIntD2Ev.exit42

bb.o:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.aa = load ptr, ptr %4, align 8, !tbaa !310   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4llvm5APIntD2Ev.exit42, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #27
  br label %_ZN4llvm5APIntD2Ev.exit42

_ZN4llvm5APIntD2Ev.exit42:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.z

bb.q:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %i.l) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %i.l) #24
  br i1 %.not38, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = call noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %7) #28
  br label %.sink.split7

bb.s:                                             ; preds = %bb.q
  %i.ad = and i32 %0, 8
  %.not39 = icmp eq i32 %i.ad, 0
  br i1 %.not39, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = call noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %6) #28
  br label %.sink.split7

.sink.split7:                                     ; preds = %bb.r, %bb.t
  %.sink9 = phi i32 [ %i.ae, %bb.t ], [ %i.ac, %bb.r ]
  %.lobit3 = lshr i32 %.sink9, 31
  %i.af = trunc nuw nsw i32 %.lobit3 to i8
  store i8 %i.af, ptr %3, align 1, !tbaa !294
  br label %bb.u

bb.u:                                             ; preds = %.sink.split7, %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !317
  %i.ai = icmp ugt i32 %i.ah, 64
  br i1 %i.ai, label %bb.v, label %_ZN4llvm5APIntD2Ev.exit43

bb.v:                                             ; preds = %bb.u
  %i.aj = load ptr, ptr %7, align 8, !tbaa !310   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN4llvm5APIntD2Ev.exit43, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #27
  br label %_ZN4llvm5APIntD2Ev.exit43
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPppEjjjRb:bb.a
  %i.h = icmp ne i32 %i.g, 0                      ; 2 uses
  %i.i = and i32 %i.a, 1
  %or.cond.not = icmp eq i32 %i.i, 0
  br i1 %or.cond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i32 %0 to i8
  %i.k = and i8 %i.j, 1
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %0, 2
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %or.cond3 = and i1 %i.h, %i.c
  %or.cond5 = and i1 %i.f, %i.d
  %or.cond76 = or i1 %or.cond5, %or.cond3
  br i1 %or.cond76, label %.sink.split, label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.m = and i32 %0, 64
  %.not70 = icmp eq i32 %i.m, 0
  br i1 %.not70, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %or.cond7 = and i1 %i.h, %i.c
  br i1 %or.cond7, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = trunc i32 %0 to i8
  %i.o = lshr i8 %i.n, 2
  %i.p = and i8 %i.o, 1
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %or.cond9 = and i1 %i.f, %i.d
  br i1 %or.cond9, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.q = trunc i32 %0 to i8
  %i.r = lshr i8 %i.q, 3
  %i.s = and i8 %i.r, 1
  br label %.sink.split

bb.k:                                             ; preds = %bb.f
  %i.t = and i32 %1, 256
  %i.u = icmp ne i32 %i.t, 0
  %i.v = and i32 %2, 256
  %i.w = icmp ne i32 %i.v, 0
  %i.x = and i32 %1, 512
  %i.y = icmp ne i32 %i.x, 0
  %i.z = and i32 %2, 512
  %i.aa = icmp ne i32 %i.z, 0
  %or.cond11 = and i1 %i.y, %i.w
  br i1 %or.cond11, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ab = or i32 %2, %1
  %i.ac = and i32 %i.ab, 2
  %or.cond13.not = icmp eq i32 %i.ac, 0
  br i1 %or.cond13.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = trunc i32 %0 to i8
  %i.ae = lshr i8 %i.ad, 2
  %i.af = and i8 %i.ae, 1
  br label %.sink.split

bb.n:                                             ; preds = %bb.l
  %i.ag = and i32 %0, 5
  %or.cond77.not = icmp eq i32 %i.ag, 5
  br i1 %or.cond77.not, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %or.cond15 = and i1 %i.u, %i.aa
  br i1 %or.cond15, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ah = or i32 %2, %1
  %i.ai = and i32 %i.ah, 2
  %or.cond17.not = icmp eq i32 %i.ai, 0
  br i1 %or.cond17.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = trunc i32 %0 to i8
  %i.ak = lshr i8 %i.aj, 3
  %i.al = and i8 %i.ak, 1
  br label %.sink.split

bb.r:                                             ; preds = %bb.p
  %i.am = and i32 %0, 9
  %or.cond78.not = icmp eq i32 %i.am, 9
  br i1 %or.cond78.not, label %.sink.split, label %bb.s

.sink.split:                                      ; preds = %bb.r, %bb.n, %bb.e, %bb.m, %bb.q, %bb.j, %bb.h, %bb.c
  %.sink = phi i8 [ %i.k, %bb.c ], [ %i.af, %bb.m ], [ %i.p, %bb.h ], [ %i.s, %bb.j ], [ 1, %bb.n ], [ %i.al, %bb.q ], [ 1, %bb.e ], [ 1, %bb.r ]
  store i8 %.sink, ptr %3, align 1, !tbaa !294
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.e, %bb.i, %bb.o, %bb.r, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.o ], [ false, %bb.e ], [ false, %bb.r ], [ false, %bb.i ], [ true, %.sink.split ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPrpEjRKN4llvm15TargetInstrInfo13RegSubRegPairEmRKNS_22MachineConstPropagator7CellMapERb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i64 noundef range(i64 0, 4294967296) %3, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.(anonymous namespace)::LatticeCell", align 8 ; 8 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i8 1, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !tbaa !193
  %i.c = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator7getCellERKN4llvm15TargetInstrInfo13RegSubRegPairERKNS_22MachineConstPropagator7CellMapERNS_11LatticeCellE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(40) %6)
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %.val31 = load i8, ptr %6, align 8              ; 2 uses
  %i.d = and i8 %.val31, 32
  %.not38 = icmp eq i8 %i.d, 0
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call fastcc noundef i32 @_ZNK12_GLOBAL__N_111LatticeCell10propertiesEv(ptr noundef nonnull align 8 dereferenceable(40) %6)
  %i.f = trunc nuw i64 %3 to i32
  %i.g = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPppEjjjRb(i32 noundef %1, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 1, ptr %i.h, align 8, !tbaa !317
  store i64 0, ptr %7, align 8, !tbaa !310
  switch i32 %1, label %bb.f [
    i32 1, label %_ZN12_GLOBAL__N_121MachineConstEvaluator10Comparison6negateEj.exit
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %_ZN12_GLOBAL__N_121MachineConstEvaluator10Comparison6negateEj.exit

bb.f:                                             ; preds = %bb.d
  %i.i = xor i32 %1, 12
  br label %_ZN12_GLOBAL__N_121MachineConstEvaluator10Comparison6negateEj.exit

_ZN12_GLOBAL__N_121MachineConstEvaluator10Comparison6negateEj.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.i, %bb.f ], [ 1, %bb.e ], [ 2, %bb.d ]
  %i.j = and i8 %.val31, 28
  %.not42.not = icmp eq i8 %i.j, 0
  br i1 %.not42.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_121MachineConstEvaluator10Comparison6negateEj.exit
  %i.k = trunc nuw i64 %3 to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.02244 = phi i8 [ 1, %.lr.ph ], [ %i.z, %bb.l ]
  %.02343 = phi i8 [ 1, %.lr.ph ], [ %i.aa, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !310  ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !324
  %i.o = icmp eq i8 %i.n, 5
  br i1 %i.o, label %bb.h, label %.thread35

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.h, align 8, !tbaa !317
  %i.r = icmp ult i32 %i.q, 65
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !317  ; 2 uses
  %i.u = icmp ult i32 %i.t, 65
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.p, align 8, !tbaa !310
  store i64 %i.v, ptr %7, align 8, !tbaa !310
  store i32 %i.t, ptr %i.h, align 8, !tbaa !317
  br label %_ZNK12_GLOBAL__N_121MachineConstEvaluator10constToIntEPKN4llvm8ConstantERNS1_5APIntE.exit

bb.k:                                             ; preds = %bb.i, %bb.h
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %i.p) #24
  br label %_ZNK12_GLOBAL__N_121MachineConstEvaluator10constToIntEPKN4llvm8ConstantERNS1_5APIntE.exit

_ZNK12_GLOBAL__N_121MachineConstEvaluator10constToIntEPKN4llvm8ConstantERNS1_5APIntE.exit: ; preds = %bb.k, %bb.j
  %i.w = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPpiEjjRKN4llvm5APIntERb(i32 noundef %.0.i, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br i1 %i.w, label %bb.l, label %.thread35

.thread35:                                        ; preds = %_ZNK12_GLOBAL__N_121MachineConstEvaluator10constToIntEPKN4llvm8ConstantERNS1_5APIntE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.m

bb.l:                                             ; preds = %_ZNK12_GLOBAL__N_121MachineConstEvaluator10constToIntEPKN4llvm8ConstantERNS1_5APIntE.exit
  %i.x = load i8, ptr %i.a, align 1, !range !296  ; 2 uses
  %i.y = xor i8 %i.x, -1
  %i.z = and i8 %.02244, %i.y                     ; 2 uses
  %i.aa = and i8 %i.x, %.02343                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i8, ptr %6, align 8
  %i.ab = lshr i8 %.val, 2
  %i.ac = and i8 %i.ab, 7
  %i.ad = zext nneg i8 %i.ac to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %.not, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !645

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.ae = trunc nuw i8 %i.z to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN12_GLOBAL__N_121MachineConstEvaluator10Comparison6negateEj.exit
  %.023.lcssa = phi i8 [ 1, %_ZN12_GLOBAL__N_121MachineConstEvaluator10Comparison6negateEj.exit ], [ %i.aa, %._crit_edge.loopexit ] ; 2 uses
  %.022.lcssa = phi i1 [ true, %_ZN12_GLOBAL__N_121MachineConstEvaluator10Comparison6negateEj.exit ], [ %i.ae, %._crit_edge.loopexit ]
  %i.af = trunc nuw i8 %.023.lcssa to i1
  store i8 %.023.lcssa, ptr %5, align 1, !tbaa !294
  %i.ag = select i1 %i.af, i1 true, i1 %.022.lcssa
  br label %bb.m

bb.m:                                             ; preds = %.thread35, %._crit_edge
  %.3 = phi i1 [ %i.ag, %._crit_edge ], [ false, %.thread35 ]
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !317
  %i.ai = icmp ugt i32 %i.ah, 64
  br i1 %i.ai, label %bb.n, label %_ZN4llvm5APIntD2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %7, align 8, !tbaa !310   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN4llvm5APIntD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #27
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZN4llvm5APIntD2Ev.exit, %bb.c
  %.4 = phi i1 [ %i.g, %bb.c ], [ %.3, %_ZN4llvm5APIntD2Ev.exit ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret i1 %.4
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121MachineConstEvaluator13evaluateCMPpiEjjRKN4llvm5APIntERb(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) unnamed_addr #16 align 2 {
bb.a:
  %i.a = and i32 %1, 20
  %or.cond50.not = icmp eq i32 %i.a, 4
  br i1 %or.cond50.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %0, 64
  %.not40 = icmp eq i32 %i.b, 0
  br i1 %.not40, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !317  ; 2 uses
  %i.e = icmp ult i32 %i.d, 65                    ; 2 uses
  br i1 %i.e, label %_ZNK4llvm5APInteqEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.c
  %i.f = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #28
  %i.g = sub i32 %i.d, %i.f
  %i.h = icmp ult i32 %i.g, 65
  br i1 %i.h, label %_ZNK4llvm5APInteqEm.exit, label %_ZNK4llvm5APInteqEm.exit.thread

_ZNK4llvm5APInteqEm.exit:                         ; preds = %bb.c, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i
  %i.i = load ptr, ptr %2, align 8
  %spec.select.i.i = select i1 %i.e, ptr %2, ptr %i.i
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !310
  %i.j = icmp eq i64 %.0.i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNK4llvm5APInteqEm.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm5APInteqEm.exit
  %i.k = and i32 %1, 1
  %.not47 = icmp eq i32 %i.k, 0
  br i1 %.not47, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = trunc i32 %0 to i8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = and i32 %1, 2
  %.not48 = icmp eq i32 %i.m, 0
  br i1 %.not48, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = trunc i32 %0 to i8
  %i.o = lshr i8 %i.n, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %storemerge49.in = phi i8 [ %i.o, %bb.g ], [ %i.l, %bb.e ]
  %storemerge49 = and i8 %storemerge49.in, 1
  br label %.sink.split

_ZNK4llvm5APInteqEm.exit.thread:                  ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, %_ZNK4llvm5APInteqEm.exit
  %i.p = and i32 %1, 1
  %.not46 = icmp eq i32 %i.p, 0
  br i1 %.not46, label %bb.w, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm5APInteqEm.exit.thread
  %i.q = trunc i32 %0 to i8
  %i.r = lshr i8 %i.q, 2
  %i.s = and i8 %i.r, 1
  br label %.sink.split

bb.j:                                             ; preds = %bb.b
  %i.t = and i32 %1, 1
  %.not41 = icmp eq i32 %i.t, 0
  br i1 %.not41, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !317  ; 4 uses
  %i.w = icmp ult i32 %i.v, 65                    ; 4 uses
  br i1 %i.w, label %_ZNK4llvm5APInteqEm.exit54, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i51

_ZNK4llvm5APInt13getActiveBitsEv.exit.i51:        ; preds = %bb.k
  %i.x = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #28
  %i.y = sub i32 %i.v, %i.x
  %i.z = icmp ult i32 %i.y, 65
  br i1 %i.z, label %_ZNK4llvm5APInteqEm.exit54, label %_ZNK4llvm5APInteqEm.exit54.thread

_ZNK4llvm5APInteqEm.exit54:                       ; preds = %bb.k, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i51
  %i.aa = load ptr, ptr %2, align 8
  %spec.select.i.i52 = select i1 %i.w, ptr %2, ptr %i.aa
  %.0.i.i53 = load i64, ptr %spec.select.i.i52, align 8, !tbaa !310
  %i.ab = icmp eq i64 %.0.i.i53, 0
  br i1 %i.ab, label %bb.l, label %_ZNK4llvm5APInteqEm.exit54.thread

bb.l:                                             ; preds = %_ZNK4llvm5APInteqEm.exit54
  %i.ac = trunc i32 %0 to i8
  %i.ad = and i8 %i.ac, 1
  br label %.sink.split

_ZNK4llvm5APInteqEm.exit54.thread:                ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i51, %_ZNK4llvm5APInteqEm.exit54
  %i.ae = icmp eq i32 %0, 2
  br i1 %i.ae, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm5APInteqEm.exit54.thread
  %i.af = and i32 %0, 4
  %.not44 = icmp eq i32 %i.af, 0
  br i1 %.not44, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = add i32 %i.v, -1                        ; 2 uses
  %i.ah = and i32 %i.ag, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = load ptr, ptr %2, align 8
  %i.al = lshr i32 %i.ag, 6
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.am
  %.in.i.i.i = select i1 %i.w, ptr %2, ptr %i.an
  %i.ao = load i64, ptr %.in.i.i.i, align 8, !tbaa !310
  %i.ap = and i64 %i.ao, %i.aj
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aq = and i32 %0, 8
  %.not45 = icmp eq i32 %i.aq, 0
  br i1 %.not45, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = add i32 %i.v, -1                        ; 2 uses
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = load ptr, ptr %2, align 8
  %i.av = lshr i32 %i.ar, 6
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw
  %.in.i.i.i55 = select i1 %i.w, ptr %2, ptr %i.ax
  %i.ay = load i64, ptr %.in.i.i.i55, align 8, !tbaa !310
  %i.az = lshr i64 %i.ay, %i.at
  %i.ba = trunc i64 %i.az to i8
  %i.bb = and i8 %i.ba, 1
  br label %.sink.split

bb.q:                                             ; preds = %bb.j
  %i.bc = and i32 %1, 256
  %.not42 = icmp eq i32 %i.bc, 0
  br i1 %.not42, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !317 ; 2 uses
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = icmp ult i32 %i.be, 65
  %i.bk = load ptr, ptr %2, align 8
end_hunk_2
