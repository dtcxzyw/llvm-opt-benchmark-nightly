Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMBaseInstrInfo?download=true
inline.NumInlined: 7065
inline.NumDeleted: 2511
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN4llvm23emitARMRegPlusImmediateERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_iNS_5ARMCC9CondCodesES9_RKNS_16ARMBaseInstrInfoEj:bb.a
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bl, ptr noundef nonnull align 8 dereferenceable(1065) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %17) #26
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bl, ptr noundef nonnull align 8 dereferenceable(1065) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.aj) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false), !alias.scope !1585
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bl, ptr noundef nonnull align 8 dereferenceable(1065) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %18) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 44 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !233
  %i.bp = and i32 %i.bo, 12
  %i.bq = or disjoint i32 %i.bp, %i.an
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !233
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %.not.peel = icmp eq i32 %i.bg, %spec.select
  br i1 %.not.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.peel
  %i.br = xor i32 %i.bg, %spec.select
  br label %bb.h

bb.h:                                             ; preds = %.peel.next, %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit
  %.164 = phi i32 [ %i.br, %.peel.next ], [ %i.cr, %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit ] ; 11 uses
  %i.bs = icmp ult i32 %.164, 256
  br i1 %i.bs, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.164, i1 true)
  %i.bu = and i32 %i.bt, 30                       ; 3 uses
  %i.bv = call noundef i32 @llvm.fshr.i32(i32 %.164, i32 %.164, i32 %i.bu)
  %i.bw = icmp ult i32 %i.bv, 256
  br i1 %i.bw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bx = sub nsw i32 0, %i.bu
  %i.by = and i32 %i.bx, 30
  br label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit

bb.k:                                             ; preds = %bb.i
  %i.bz = and i32 %.164, 63
  %.not.i33 = icmp eq i32 %i.bz, 0
  br i1 %.not.i33, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = and i32 %.164, -64
  %i.cb = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ca, i1 false)
  %i.cc = and i32 %i.cb, 62                       ; 2 uses
  %i.cd = call noundef i32 @llvm.fshr.i32(i32 %.164, i32 %.164, i32 %i.cc)
  %i.ce = icmp ugt i32 %i.cd, 255
  %i.cf = sub nsw i32 0, %i.cc
  %i.cg = and i32 %i.cf, 30
  br i1 %i.ce, label %bb.m, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ch = sub nsw i32 0, %i.bu
  %i.ci = and i32 %i.ch, 30
  br label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit

_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit:        ; preds = %bb.h, %bb.j, %bb.l, %bb.m
  %.2.i = phi i32 [ 0, %bb.h ], [ %i.by, %bb.j ], [ %i.ci, %bb.m ], [ %i.cg, %bb.l ]
  %i.cj = call noundef i32 @llvm.fshr.i32(i32 255, i32 255, i32 %.2.i)
  %i.ck = and i32 %i.cj, %.164                    ; 3 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %.sroa.02.0.copyload = load ptr, ptr %2, align 8, !tbaa !408
  store ptr %.sroa.02.0.copyload, ptr %16, align 8, !tbaa !408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.cl = load ptr, ptr %i.aa, align 8, !tbaa !44
  %i.cm = getelementptr inbounds [32 x i8], ptr %i.cl, i64 %.neg
  %i.cn = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %.sroa.03.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i32 %3) ; 2 uses
  %i.co = extractvalue { ptr, ptr } %i.cn, 0      ; 5 uses
  %i.cp = extractvalue { ptr, ptr } %i.cn, 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr null, ptr %i.ab, align 8, !tbaa !396, !alias.scope !1581
  store i32 %3, ptr %i.ac, align 4, !tbaa !239, !alias.scope !1581
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !alias.scope !1581
  store i32 67108864, ptr %11, align 8, !alias.scope !1581
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(1065) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.cq = zext nneg i32 %i.ck to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i32 1, ptr %10, align 8, !alias.scope !1582
  store ptr null, ptr %i.ae, align 8, !tbaa !396, !alias.scope !1582
  store i64 %i.cq, ptr %i.af, align 8, !tbaa !239, !alias.scope !1582
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(1065) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store i32 1, ptr %17, align 8, !alias.scope !1583
  store ptr null, ptr %i.ah, align 8, !tbaa !396, !alias.scope !1583
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !239, !alias.scope !1583
  store ptr null, ptr %i.ak, align 8, !tbaa !396, !alias.scope !1584
  store i32 %7, ptr %i.al, align 4, !tbaa !239, !alias.scope !1584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !alias.scope !1584
  store i32 0, ptr %i.aj, align 8, !alias.scope !1584
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(1065) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %17) #26
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(1065) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.aj) #26
  %i.cr = xor i32 %i.ck, %.164
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false), !alias.scope !1585
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(1065) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %18) #26
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 44 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !233
  %i.cu = and i32 %i.ct, 12
  %i.cv = or disjoint i32 %i.cu, %i.an
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !233
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %.not = icmp eq i32 %i.ck, %.164
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !1576

.loopexit:                                        ; preds = %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit, %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.peel, %bb.b, %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm26tryFoldSPUpdateIntoPushPopERKNS_12ARMSubtargetERNS_15MachineFunctionEPNS_12MachineInstrEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519368) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.586", align 8 ; 14 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1604, !range !214, !noundef !92
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !237  ; 5 uses
  switch i32 %i.e, label %bb.c [
    i32 4501, label %_ZN4llvmL11isPopOpcodeEi.exit
    i32 4145, label %_ZN4llvmL11isPopOpcodeEi.exit
    i32 955, label %_ZN4llvmL11isPopOpcodeEi.exit
    i32 801, label %_ZN4llvmL11isPopOpcodeEi.exit
    i32 701, label %_ZN4llvmL11isPopOpcodeEi.exit
    i32 374, label %_ZN4llvmL11isPopOpcodeEi.exit
    i32 2904, label %_ZN4llvmL11isPopOpcodeEi.exit
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZN4llvmL11isPopOpcodeEi.exit

_ZN4llvmL11isPopOpcodeEi.exit:                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  %i.f = phi i1 [ false, %bb.c ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ] ; 2 uses
  switch i32 %i.e, label %_ZN4llvmL12isPushOpcodeEi.exit [
    i32 3891, label %.thread114
    i32 2022, label %.thread
    i32 4354, label %.thread
    i32 4502, label %.thread
  ]

_ZN4llvmL12isPushOpcodeEi.exit:                   ; preds = %_ZN4llvmL11isPopOpcodeEi.exit
  br i1 %i.f, label %.thread, label %bb.x

.thread:                                          ; preds = %_ZN4llvmL11isPopOpcodeEi.exit, %_ZN4llvmL11isPopOpcodeEi.exit, %_ZN4llvmL11isPopOpcodeEi.exit, %_ZN4llvmL12isPushOpcodeEi.exit
  %i.g = icmp eq i32 %i.e, 2904                   ; 2 uses
  %.off = add i32 %i.e, -4501
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.d, label %.thread114

.thread114:                                       ; preds = %.thread, %_ZN4llvmL11isPopOpcodeEi.exit
  %i.h = phi i1 [ %i.g, %.thread ], [ true, %_ZN4llvmL11isPopOpcodeEi.exit ]
  %i.i = icmp eq i32 %i.e, 801
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.thread114
  %i.j = phi i1 [ %i.h, %.thread114 ], [ %i.g, %.thread ] ; 4 uses
  %i.k = phi i1 [ %i.i, %.thread114 ], [ true, %.thread ] ; 3 uses
  %i.l = select i1 %i.j, i32 7, i32 3
  %i.m = and i32 %i.l, %3
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.n = select i1 %i.k, i32 2, i32 4             ; 4 uses
  %.082.v = select i1 %i.j, i32 3, i32 2
  %.082 = lshr i32 %3, %.082.v                    ; 4 uses
  %.081 = select i1 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 3264), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 256) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  store i32 0, ptr %i.p, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  store i32 4, ptr %i.q, align 4, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !521
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1663
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !394, !nonnull !92, !align !93 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(344) %i.v) #26, !inline_history !1587 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ab = load i24, ptr %i.aa, align 8
  %i.ac = zext i24 %i.ab to i32                   ; 2 uses
  %.not87129.not = icmp samesign ult i32 %i.n, %i.ac
  br i1 %.not87129.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  br label %bb.m

._crit_edge:                                      ; preds = %.critedge, %bb.e
  %.079.lcssa = phi i32 [ -1, %bb.e ], [ %.180, %.critedge ] ; 2 uses
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(316) %i.z, ptr noundef nonnull %1) #26
  %i.aj = icmp slt i32 %.079.lcssa, 1
  %i.ak = icmp eq i32 %.082, 0
  %.not91133 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not91133, label %._crit_edge138, label %.lr.ph137

.lr.ph137:                                        ; preds = %._crit_edge
  %.077132 = add nsw i32 %.079.lcssa, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.at = zext nneg i32 %.077132 to i64           ; 2 uses
  br i1 %i.f, label %.lr.ph137.split.us, label %.lr.ph137.split

.lr.ph137.split.us:                               ; preds = %.lr.ph137, %bb.l
  %indvars.iv153.a = phi i64 [ %indvars.iv.next154.a, %bb.l ], [ %i.at, %.lr.ph137 ] ; 4 uses
  %.183134.us = phi i32 [ %.284.ph.us, %bb.l ], [ %.082, %.lr.ph137 ] ; 3 uses
  %i.au = load i32, ptr %.081, align 8, !tbaa !537
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.081, i64 %i.av
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv153.a
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !68 ; 2 uses
  %i.az = zext i16 %i.ay to i32                   ; 2 uses
  br i1 %i.k, label %bb.f, label %.preheader.us.preheader

bb.f:                                             ; preds = %.lr.ph137.split.us
  %i.ba = load ptr, ptr %i.al, align 8, !tbaa !495
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 162
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !68
  %i.bd = zext i16 %i.bc to i64
  %i.be = icmp samesign ugt i64 %indvars.iv153.a, %i.bd
  br i1 %i.be, label %bb.l, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.f, %.lr.ph137.split.us
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %.06.i.us = phi i32 [ %i.bj, %.preheader.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.bf = zext i32 %.06.i.us to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !68 ; 2 uses
  %.not.i97.us = icmp ne i16 %i.bh, 0             ; 2 uses
  %i.bi = icmp ne i16 %i.ay, %i.bh
  %or.cond.not.i.us = select i1 %.not.i97.us, i1 %i.bi, i1 false
  %i.bj = add i32 %.06.i.us, 1
  br i1 %or.cond.not.i.us, label %.preheader.us, label %_ZN4llvmL21isCalleeSavedRegisterENS_10MCRegisterEPKt.exit.us, !llvm.loop !1588

_ZN4llvmL21isCalleeSavedRegisterENS_10MCRegisterEPKt.exit.us: ; preds = %.preheader.us
  br i1 %.not.i97.us, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZN4llvmL21isCalleeSavedRegisterENS_10MCRegisterEPKt.exit.us
  %i.bk = load ptr, ptr %i.ap, align 8, !tbaa !409
  %i.bl = call noundef i32 @_ZNK4llvm17MachineBasicBlock23computeRegisterLivenessEPKNS_18TargetRegisterInfoENS_10MCRegisterENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEEj(ptr noundef nonnull align 8 dereferenceable(360) %i.bk, ptr noundef nonnull %i.z, i32 %i.az, ptr %2, i32 noundef 10) #26
  %.not88.us = icmp eq i32 %i.bl, 1
  br i1 %.not88.us, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr null, ptr %i.aq, align 8, !tbaa !396, !alias.scope !1664
  store i32 %i.az, ptr %i.ar, align 4, !tbaa !239, !alias.scope !1664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false), !alias.scope !1664
  store i32 83886080, ptr %6, align 8, !alias.scope !1664
  %i.bm = load i32, ptr %i.p, align 8, !tbaa !56  ; 2 uses
  %i.bn = load i32, ptr %i.q, align 4, !tbaa !57
  %.not.i98.us = icmp ult i32 %i.bm, %i.bn
  br i1 %.not.i98.us, label %bb.j, label %bb.i, !prof !241

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit99.us

bb.j:                                             ; preds = %bb.h
  %i.bo = zext i32 %i.bm to i64
  %i.bp = load ptr, ptr %4, align 8, !tbaa !55
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.br = load i32, ptr %i.p, align 8, !tbaa !56
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.p, align 8, !tbaa !56
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit99.us

_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit99.us: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bt = add nsw i32 %.183134.us, -1
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %_ZN4llvmL21isCalleeSavedRegisterENS_10MCRegisterEPKt.exit.us
  br i1 %i.j, label %.thread119, label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit99.us, %bb.f
  %.284.ph.us = phi i32 [ %i.bt, %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit99.us ], [ %.183134.us, %bb.f ], [ %.183134.us, %bb.k ] ; 3 uses
  %indvars.iv.next154.a = add nsw i64 %indvars.iv153.a, -1
  %i.bu = icmp slt i64 %indvars.iv153.a, 1
  %i.bv = icmp eq i32 %.284.ph.us, 0
  %.not91.us = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %.not91.us, label %._crit_edge138, label %.lr.ph137.split.us, !llvm.loop !1591

bb.m:                                             ; preds = %.lr.ph, %.critedge
  %.078131.in = phi i32 [ %i.ac, %.lr.ph ], [ %.078131, %.critedge ]
  %.079130 = phi i32 [ -1, %.lr.ph ], [ %.180, %.critedge ] ; 2 uses
  %.078131 = add nsw i32 %.078131.in, -1          ; 3 uses
  %i.bw = load ptr, ptr %i.ad, align 8, !tbaa !238
  %7 = zext nneg i32 %.078131 to i64
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %7 ; 4 uses
  %i.by = load i32, ptr %i.p, align 8, !tbaa !56  ; 2 uses
  %i.bz = load i32, ptr %i.q, align 4, !tbaa !57
  %.not.i = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !241

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit

bb.o:                                             ; preds = %bb.m
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %4, align 8, !tbaa !55
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false)
  %i.cd = load i32, ptr %i.p, align 8, !tbaa !56
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.p, align 8, !tbaa !56
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit: ; preds = %bb.n, %bb.o
  %i.cf = load i32, ptr %i.bx, align 8
  %i.cg = and i32 %i.cf, 33554687
  %or.cond124.not = icmp eq i32 %i.cg, 0
  br i1 %or.cond124.not, label %bb.p, label %.critedge

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !239
  %i.cj = load ptr, ptr %i.ae, align 8, !tbaa !495
  %i.ck = zext i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !68
  %i.cn = zext i16 %i.cm to i32
  %spec.select = call i32 @llvm.umin.i32(i32 %.079130, i32 %i.cn)
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit
  %.180 = phi i32 [ %spec.select, %bb.p ], [ %.079130, %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit ] ; 2 uses
  %.not87.not = icmp sgt i32 %.078131, %i.n
  br i1 %.not87.not, label %bb.m, label %._crit_edge, !llvm.loop !1592

.lr.ph137.split:                                  ; preds = %.lr.ph137, %bb.u
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %bb.u ], [ %i.at, %.lr.ph137 ] ; 4 uses
  %.183134 = phi i32 [ %.284.ph, %bb.u ], [ %.082, %.lr.ph137 ] ; 2 uses
  %i.co = load i32, ptr %.081, align 8, !tbaa !537
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.081, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %indvars.iv.a
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !68
  %i.ct = zext i16 %i.cs to i32
  br i1 %i.k, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph137.split
  %i.cu = load ptr, ptr %i.al, align 8, !tbaa !495
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 162
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !68
  %i.cx = zext i16 %i.cw to i64
  %i.cy = icmp samesign ugt i64 %indvars.iv.a, %i.cx
  br i1 %i.cy, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph137.split
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %i.am, align 8, !tbaa !396, !alias.scope !1665
  store i32 %i.ct, ptr %i.an, align 4, !tbaa !239, !alias.scope !1665
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !1665
  store i32 268435456, ptr %5, align 8, !alias.scope !1665
  %i.cz = load i32, ptr %i.p, align 8, !tbaa !56  ; 2 uses
  %i.da = load i32, ptr %i.q, align 4, !tbaa !57
  %.not.i95 = icmp ult i32 %i.cz, %i.da
  br i1 %.not.i95, label %bb.t, label %bb.s, !prof !241

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit96

bb.t:                                             ; preds = %bb.r
  %i.db = zext i32 %i.cz to i64
  %i.dc = load ptr, ptr %4, align 8, !tbaa !55
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.de = load i32, ptr %i.p, align 8, !tbaa !56
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.p, align 8, !tbaa !56
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit96

_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit96: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.dg = add nsw i32 %.183134, -1
  br label %bb.u

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit96, %bb.q
  %.284.ph = phi i32 [ %i.dg, %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit96 ], [ %.183134, %bb.q ] ; 3 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1
  %i.dh = icmp slt i64 %indvars.iv.a, 1
  %i.di = icmp eq i32 %.284.ph, 0
  %.not91 = select i1 %i.dh, i1 true, i1 %i.di
  br i1 %.not91, label %._crit_edge138, label %.lr.ph137.split, !llvm.loop !1591

._crit_edge138:                                   ; preds = %bb.u, %bb.l, %._crit_edge
  %.183.lcssa = phi i32 [ %.082, %._crit_edge ], [ %.284.ph.us, %bb.l ], [ %.284.ph, %bb.u ]
  %.not92 = icmp eq i32 %.183.lcssa, 0
  br i1 %.not92, label %bb.v, label %.thread119

bb.v:                                             ; preds = %._crit_edge138
  %i.dj = load i24, ptr %i.aa, align 8
  %i.dk = zext i24 %i.dj to i32                   ; 2 uses
  %.not93141.not = icmp samesign ult i32 %i.n, %i.dk
  br i1 %.not93141.not, label %.lr.ph144, label %._crit_edge145

._crit_edge145:                                   ; preds = %.lr.ph144, %bb.v
  %i.dl = load ptr, ptr %4, align 8, !tbaa !55, !noalias !1666 ; 2 uses
  %i.dm = load i32, ptr %i.p, align 8, !tbaa !56, !noalias !1666 ; 2 uses
  %.not125146 = icmp eq i32 %i.dm, 0
  br i1 %.not125146, label %.thread119, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %._crit_edge145
  %i.dn = zext i32 %i.dm to i64
  %.idx = shl nuw nsw i64 %i.dn, 5
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx
  br label %.lr.ph149

.lr.ph144:                                        ; preds = %bb.v, %.lr.ph144
  %.074142.in = phi i32 [ %.074142, %.lr.ph144 ], [ %i.dk, %bb.v ]
  %.074142 = add nsw i32 %.074142.in, -1          ; 3 uses
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %.074142) #26
  %.not93.not = icmp samesign ugt i32 %.074142, %i.n
  br i1 %.not93.not, label %.lr.ph144, label %._crit_edge145, !llvm.loop !1603

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %.lr.ph149
  %.sroa.0100.0147 = phi ptr [ %i.dp, %.lr.ph149 ], [ %i.do, %.lr.ph149.preheader ]
  %i.dp = getelementptr inbounds i8, ptr %.sroa.0100.0147, i64 -32 ; 3 uses
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.dp) #26
  %.not125 = icmp eq ptr %i.dp, %i.dl
  br i1 %.not125, label %.thread119, label %.lr.ph149

.thread119:                                       ; preds = %bb.k, %.lr.ph149, %._crit_edge145, %._crit_edge138
  %.3 = phi i1 [ false, %._crit_edge138 ], [ true, %._crit_edge145 ], [ true, %.lr.ph149 ], [ false, %bb.k ]
  %i.dq = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.o
  br i1 %i.dr, label %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.thread119
  call void @free(ptr noundef %i.dq) #26
  br label %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit: ; preds = %.thread119, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvmL12isPushOpcodeEi.exit, %bb.d, %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit, %bb.a
  %.6 = phi i1 [ false, %bb.a ], [ false, %_ZN4llvmL12isPushOpcodeEi.exit ], [ %.3, %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit ], [ false, %bb.d ]
  ret i1 %.6
}

declare noundef i32 @_ZNK4llvm17MachineBasicBlock23computeRegisterLivenessEPKNS_18TargetRegisterInfoENS_10MCRegisterENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEEj(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, i32, ptr, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm20rewriteARMFrameIndexERNS_12MachineInstrEjNS_8RegisterERiRKNS_16ARMBaseInstrInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, i32 %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !237  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !234
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !412
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  %i.i = add i32 %i.b, -1
  %or.cond = icmp ult i32 %i.i, 2
  %spec.select = select i1 %or.cond, i32 2, i32 %i.h ; 5 uses
  %i.j = icmp eq i32 %i.b, 817
  br i1 %i.j, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %1, 1                            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !238
  %i.n = zext i32 %i.k to i64                     ; 3 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !239
  %i.r = load i32, ptr %3, align 4, !tbaa !52
  %i.s = trunc i64 %i.q to i32
  %i.t = add i32 %i.r, %i.s                       ; 5 uses
  store i32 %i.t, ptr %3, align 4, !tbaa !52
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32224
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x) #26
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !238
  %i.z = zext i32 %1 to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.z
  tail call void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 %2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #26
  tail call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k) #26
  store i32 0, ptr %3, align 4, !tbaa !52
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.ab = icmp slt i32 %i.t, 0                    ; 2 uses
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = sub nsw i32 0, %i.t
  store i32 %i.ac, ptr %3, align 4, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -65760
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af) #26
  %.pr = load i32, ptr %3, align 4, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ag = phi i32 [ %i.t, %bb.d ], [ %.pr, %bb.e ] ; 17 uses
  %i.ah = icmp ult i32 %i.ag, 256
  br i1 %i.ah, label %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread154, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ag, i1 true)
  %i.aj = and i32 %i.ai, 30                       ; 5 uses
  %i.ak = tail call noundef i32 @llvm.fshr.i32(i32 %i.ag, i32 %i.ag, i32 %i.aj)
  %i.al = icmp ult i32 %i.ak, 256                 ; 2 uses
  br i1 %i.al, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = and i32 %i.ag, 63
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = and i32 %i.ag, -64
  %i.ao = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.an, i1 false)
  %i.ap = and i32 %i.ao, 62                       ; 2 uses
  %i.aq = tail call noundef i32 @llvm.fshr.i32(i32 %i.ag, i32 %i.ag, i32 %i.ap)
  %i.ar = icmp ugt i32 %i.aq, 255
  br i1 %i.ar, label %bb.j, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i

end_hunk_0
