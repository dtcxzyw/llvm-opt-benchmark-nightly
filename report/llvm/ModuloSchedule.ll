Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModuloSchedule?download=true
inline.NumInlined: 5635
inline.NumDeleted: 2250
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4llvm22ModuloScheduleExpander17updateMemOperandsERNS_12MachineInstrES2_j:bb.a
  %storemerge.i.i.i.i = or disjoint i64 %i.cl, 1152921504606846976
  br label %_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_12LocationSizeE.exit

_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_12LocationSizeE.exit: ; preds = %bb.m, %_ZN4llvm3LLT8toVectorENS0_4KindE.exit.i.i, %bb.q
  %.sroa.012.0.i = phi i64 [ %storemerge.i.i44.i.i, %_ZN4llvm3LLT8toVectorENS0_4KindE.exit.i.i ], [ %storemerge.i.i.i.i, %bb.q ], [ 0, %bb.m ]
  %i.cm = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(1065) %i.bi, ptr noundef nonnull %i.am, i64 noundef %i.bh, i64 %.sroa.012.0.i) #19 ; 2 uses
  %i.cn = load i32, ptr %i.ab, align 8, !tbaa !198 ; 2 uses
  %i.co = load i32, ptr %i.ac, align 4, !tbaa !199
  %.not.i28 = icmp ult i32 %i.cn, %i.co
  br i1 %.not.i28, label %bb.s, label %bb.r, !prof !69

bb.r:                                             ; preds = %_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_12LocationSizeE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.cm)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit29

bb.s:                                             ; preds = %_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_12LocationSizeE.exit
  %i.cp = zext i32 %i.cn to i64
  %i.cq = load ptr, ptr %4, align 8, !tbaa !50
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cp
  store ptr %i.cm, ptr %i.cr, align 1
  %i.cs = load i32, ptr %i.ab, align 8, !tbaa !198
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.ab, align 8, !tbaa !198
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit29

bb.t:                                             ; preds = %bb.l, %bb.k
  %i.cu = load ptr, ptr %i.ad, align 8, !tbaa !148, !nonnull !47, !align !101
  %i.cv = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(1065) %i.cu, ptr noundef nonnull %i.am, i64 noundef 0, i64 0) #19 ; 2 uses
  %i.cw = load i32, ptr %i.ab, align 8, !tbaa !198 ; 2 uses
  %i.cx = load i32, ptr %i.ac, align 4, !tbaa !199
  %.not.i31 = icmp ult i32 %i.cw, %i.cx
  br i1 %.not.i31, label %bb.v, label %bb.u, !prof !69

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.cv)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit29

bb.v:                                             ; preds = %bb.t
  %i.cy = zext i32 %i.cw to i64
  %i.cz = load ptr, ptr %4, align 8, !tbaa !50
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  store ptr %i.cv, ptr %i.da, align 1
  %i.db = load i32, ptr %i.ab, align 8, !tbaa !198
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.ab, align 8, !tbaa !198
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit29

_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit29: ; preds = %bb.v, %bb.u, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit: ; preds = %bb.j, %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit29
  %i.dd = getelementptr inbounds nuw i8, ptr %.046, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dd, %i.z
  br i1 %.not, label %._crit_edge.loopexit, label %bb.e

_ZNK4llvm12MachineInstr17memoperands_emptyEv.exit.thread: ; preds = %bb.c, %bb.b, %_ZNK4llvm12MachineInstr17memoperands_emptyEv.exit, %bb.a, %_ZN4llvm11SmallVectorIPNS_17MachineMemOperandELj2EED2Ev.exit
  ret void
}

declare void @_ZN4llvm12MachineInstr10setMemRefsERNS_15MachineFunctionENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm22ModuloScheduleExpander13findDefInLoopENS_8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallPtrSet.325", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %2, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 8, ptr %i.b, align 8, !tbaa !401
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !402
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 1, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132, !nonnull !47, !align !101
  %i.g = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.f, i32 %1) #19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.0 = phi ptr [ %i.g, %bb.a ], [ %.1, %.loopexit ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !144
  switch i32 %i.j, label %.critedge26 [
    i32 74, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = load i8, ptr %i.d, align 8, !tbaa !45, !range !46, !noalias !1363, !noundef !47
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %2, align 8, !tbaa !48, !noalias !1363 ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !402, !noalias !1363 ; 4 uses
  %i.o = zext i32 %i.n to i64
  %.idx.i.i = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.n, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.r, %.critedge.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %.023.i.i, align 8, !tbaa !403, !noalias !1363
  %.not15.i.i = icmp eq ptr %i.q, %.0
  br i1 %.not15.i.i, label %.critedge26, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.d
  %i.s = load i32, ptr %i.b, align 8, !tbaa !401, !noalias !1363
  %i.t = icmp ult i32 %i.n, %i.s
  br i1 %i.t, label %.critedge, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

.critedge:                                        ; preds = %._crit_edge.i.i
  %i.u = add nuw i32 %i.n, 1
  store i32 %i.u, ptr %i.c, align 4, !tbaa !402, !noalias !1363
  store ptr %.0, ptr %i.p, align 8, !tbaa !403, !noalias !1363
  br label %bb.e

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.c
  %i.v = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull %.0) #19, !noalias !1363
  %i.w = extractvalue { ptr, i8 } %i.v, 1
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %.critedge26

bb.e:                                             ; preds = %.critedge, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.z = load i24, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp ugt i24 %i.z, 1
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !129 ; 2 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.ae = zext i24 %i.z to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !131
  %i.ai = icmp eq ptr %i.ah, %i.ad
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !132, !nonnull !47, !align !101
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !131
  %i.an = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.aj, i32 %i.am) #19
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.ao, label %bb.f, label %.loopexit, !llvm.loop !1361

.loopexit:                                        ; preds = %bb.h, %bb.e, %bb.g
  %.1 = phi ptr [ %i.an, %bb.g ], [ %.0, %bb.e ], [ %.0, %bb.h ]
  br label %bb.b, !llvm.loop !1362

.critedge26:                                      ; preds = %bb.b, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %.lr.ph.i.i
  %i.ap = load i8, ptr %i.d, align 8, !tbaa !45, !range !46, !noundef !47
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.critedge26
  %i.ar = load ptr, ptr %2, align 8, !tbaa !48
  call void @free(ptr noundef %i.ar) #19
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %.critedge26, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

declare void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32), i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @_ZN4llvm22ModuloScheduleExpander13getPrevMapValEjjNS_8RegisterEjPNS_8DenseMapIS1_S1_NS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S1_EEEEPNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i32 noundef %1, i32 noundef %2, i32 %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(address) %6) local_unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"class.llvm::Register", align 4    ; 4 uses
  store i32 %3, ptr %7, align 4
  %i.a = icmp ugt i32 %1, %2
  br i1 %i.a, label %.lr.ph, label %_ZL13getInitPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = icmp eq i32 %2, %4
  %i.d = add nuw i32 %2, 1
  %i.e = zext i32 %1 to i64
  %i.f = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZL13getLoopPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit, %.lr.ph
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %_ZL13getLoopPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit ] ; 4 uses
  %i.g = phi i32 [ %3, %.lr.ph ], [ %.sroa.0.1.i52, %_ZL13getLoopPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit ] ; 7 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !132, !nonnull !47, !align !101
  %i.i = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.h, i32 %i.g) #19 ; 6 uses
  br i1 %i.c, label %bb.c, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr [24 x i8], ptr %5, i64 %indvars.iv ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !257, !noalias !1372
  %i.m = getelementptr i8, ptr %i.j, i64 -16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !279, !noalias !1372 ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !256, !noalias !1372 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add i32 %i.p, -1                         ; 2 uses
  %i.s = mul i32 %i.g, 37
  %.019.i.i.i = and i32 %i.s, %i.r                ; 3 uses
  %i.t = zext i32 %.019.i.i.i to i64              ; 2 uses
  %i.u = lshr i64 %i.t, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !67
  %i.x = and i32 %.019.i.i.i, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit.thread, !prof !68

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = add nuw i32 %.020.i.i.i, 1
  %.0.i.i.i = and i32 %i.aa, %i.r                 ; 3 uses
  %i.ab = zext i32 %.0.i.i.i to i64               ; 2 uses
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !67
  %i.af = and i32 %.0.i.i.i, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit.thread, !prof !70

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %i.ai = phi i64 [ %i.ab, %bb.e ], [ %i.t, %bb.d ]
  %.020.i.i.i = phi i32 [ %.0.i.i.i, %bb.e ], [ %.019.i.i.i, %bb.d ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !136
  %i.al = icmp eq i32 %i.g, %i.ak
  br i1 %i.al, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit, label %bb.e, !prof !69

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit: ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr i8, ptr %i.j, i64 -24
  %i.an = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.an, 0
  br label %_ZL13getInitPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit.sink.split

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit.thread: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %indvars.iv ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !257, !noalias !1373
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !279, !noalias !1373 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !256, !noalias !1373 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit.thread
  %i.av = add i32 %i.at, -1                       ; 2 uses
  %i.aw = mul i32 %i.g, 37
  %.019.i.i.i41 = and i32 %i.aw, %i.av            ; 3 uses
  %i.ax = zext i32 %.019.i.i.i41 to i64           ; 2 uses
  %i.ay = lshr i64 %i.ax, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !67
  %i.bb = and i32 %.019.i.i.i41, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i.i.i43, label %.loopexit, !prof !68

bb.g:                                             ; preds = %.lr.ph.i.i.i43
  %i.be = add nuw i32 %.020.i.i.i44, 1
  %.0.i.i.i45 = and i32 %i.be, %i.av              ; 3 uses
  %i.bf = zext i32 %.0.i.i.i45 to i64             ; 2 uses
  %i.bg = lshr i64 %i.bf, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !67
  %i.bj = and i32 %.0.i.i.i45, 31
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = trunc i32 %i.bk to i1
  br i1 %i.bl, label %.lr.ph.i.i.i43, label %.loopexit, !prof !70

.lr.ph.i.i.i43:                                   ; preds = %bb.f, %bb.g
  %i.bm = phi i64 [ %i.bf, %bb.g ], [ %i.ax, %bb.f ]
  %.020.i.i.i44 = phi i32 [ %.0.i.i.i45, %bb.g ], [ %.019.i.i.i41, %bb.f ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !136
  %i.bp = icmp eq i32 %i.g, %i.bo
  br i1 %i.bp, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit46, label %bb.g, !prof !69

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit46: ; preds = %.lr.ph.i.i.i43
  %i.bq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %.fca.0.extract.i47 = extractvalue { ptr, i8 } %i.bq, 0
  br label %_ZL13getInitPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit.sink.split

.loopexit:                                        ; preds = %bb.g, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit.thread, %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !144
  switch i32 %i.bs, label %_ZL13getInitPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit [
    i32 74, label %bb.h
    i32 0, label %bb.h
  ]

bb.h:                                             ; preds = %.loopexit, %.loopexit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !145
  %.not37 = icmp eq ptr %i.bu, %6
  br i1 %.not37, label %bb.i, label %_ZL13getInitPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit

bb.i:                                             ; preds = %bb.h
  %i.bv = icmp eq i64 %indvars.iv, %i.f
  br i1 %i.bv, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr i8, ptr %i.i, i64 32
  %.val = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.bx = getelementptr i8, ptr %i.i, i64 40
  %.val38 = load i24, ptr %i.bx, align 8          ; 2 uses
  %i.by = zext i24 %.val38 to i32
  %.not4.i = icmp eq i24 %.val38, 1
  br i1 %.not4.i, label %_ZL13getInitPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.095.i = phi i32 [ %i.ce, %bb.k ], [ 1, %bb.j ] ; 3 uses
  %i.bz = add i32 %.095.i, 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !131
  %.not10.i = icmp eq ptr %i.cd, %6
  br i1 %.not10.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.ce = add i32 %.095.i, 2                      ; 2 uses
  %.not.i = icmp eq i32 %i.ce, %i.by
  br i1 %.not.i, label %_ZL13getInitPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit, label %.lr.ph.i, !llvm.loop !11

bb.l:                                             ; preds = %.lr.ph.i
  %i.cf = zext i32 %.095.i to i64
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.cf
  br label %_ZL13getInitPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit.sink.split

bb.m:                                             ; preds = %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ch = getelementptr i8, ptr %i.i, i64 32
  %.val39 = load ptr, ptr %i.ch, align 8          ; 2 uses
  %i.ci = getelementptr i8, ptr %i.i, i64 40
  %.val40 = load i24, ptr %i.ci, align 8          ; 2 uses
  %i.cj = zext i24 %.val40 to i32
  %.not4.i48 = icmp eq i24 %.val40, 1
  br i1 %.not4.i48, label %_ZL13getLoopPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.m, %bb.n
  %.095.i50 = phi i32 [ %i.cq, %bb.n ], [ 1, %bb.m ] ; 3 uses
  %i.ck = add i32 %.095.i50, 1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %.val39, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !131
  %i.cp = icmp eq ptr %i.co, %6
  br i1 %i.cp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i49
  %i.cq = add i32 %.095.i50, 2                    ; 2 uses
  %.not.i51 = icmp eq i32 %i.cq, %i.cj
  br i1 %.not.i51, label %_ZL13getLoopPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit, label %.lr.ph.i49, !llvm.loop !12

bb.o:                                             ; preds = %.lr.ph.i49
  %i.cr = zext i32 %.095.i50 to i64
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %.val39, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !131
  br label %_ZL13getLoopPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit

_ZL13getLoopPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit: ; preds = %bb.n, %bb.m, %bb.o
  %.sroa.0.1.i52 = phi i32 [ %i.cu, %bb.o ], [ 0, %bb.m ], [ 0, %bb.n ] ; 2 uses
  store i32 %.sroa.0.1.i52, ptr %7, align 4
  br label %bb.b

_ZL13getInitPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit.sink.split: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit46, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit, %bb.l
  %.sink106 = phi ptr [ %i.cg, %bb.l ], [ %.fca.0.extract.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit ], [ %.fca.0.extract.i47, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5countERKS2_.exit46 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sink106, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !131
  br label %_ZL13getInitPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit

_ZL13getInitPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit: ; preds = %bb.h, %.loopexit, %bb.k, %_ZL13getInitPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit.sink.split, %bb.a, %bb.j
  %.sroa.0.0 = phi i32 [ %i.cw, %_ZL13getInitPhiRegRN4llvm12MachineInstrEPNS_17MachineBasicBlockE.exit.sink.split ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.a ], [ %i.g, %.loopexit ], [ %i.g, %bb.h ]
  ret i32 %.sroa.0.0
}

declare noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520), i32, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm29PeelingModuloScheduleExpander10peelKernelENS_17LoopPeelDirectionE(ptr noundef nonnull align 8 dereferenceable(496) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.std::pair.350", align 8    ; 5 uses
  %3 = alloca %"struct.std::pair.350", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !423
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !424, !nonnull !47, !align !101
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = tail call noundef ptr @_ZN4llvm19PeelSingleBlockLoopENS_17LoopPeelDirectionEPNS_17MachineBasicBlockERNS_19MachineRegisterInfoEPKNS_15TargetInstrInfoE(i32 noundef %1, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(520) %i.g, ptr noundef %i.i) #19 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !110
  %i.k = icmp eq i32 %1, 0
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !426  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1375
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %.not.i = icmp eq ptr %i.m, %i.p
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.m, align 8, !tbaa !110
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !426
  br label %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EE10push_frontERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EE9push_backERKS2_.exit

_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.d, %bb.c, %bb.e
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !423
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !251
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit14, %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EE9push_backERKS2_.exit
  %.sroa.0.0.in = phi ptr [ %i.x, %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EE9push_backERKS2_.exit ], [ %i.bs, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit14 ]
  %.sroa.017.0 = phi ptr [ %i.v, %_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EE9push_backERKS2_.exit ], [ %i.bi, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit14 ] ; 14 uses
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !tbaa !251 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 44 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !253 ; 2 uses
  %i.ae = and i32 %i.ad, 12
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = and i32 %i.ad, 4
  %i.ah = icmp ne i32 %i.ag, 0
  %or.cond.i.i = or i1 %i.af, %i.ah
  br i1 %or.cond.i.i, label %.split, label %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit

.split:                                           ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !427
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !429
  %i.am = and i64 %i.al, 512
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %bb.h, label %bb.g

_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit: ; preds = %bb.f
  %i.an = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.017.0, i64 noundef 512, i32 noundef 1) #19
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split, %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %i.ao

bb.h:                                             ; preds = %.split, %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %.sroa.017.0, ptr %i.b, align 8, !tbaa !54
  %i.ap = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store ptr %.sroa.017.0, ptr %i.aq, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store ptr %.sroa.0.0, ptr %i.c, align 8, !tbaa !54
  %i.ar = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i2 = extractvalue { ptr, i8 } %i.ar, 0
  %i.as = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i2, i64 8
  store ptr %.sroa.017.0, ptr %i.as, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !110
  store ptr %i.at, ptr %2, align 8, !tbaa !431
  store ptr %.sroa.017.0, ptr %i.aa, align 8, !tbaa !432
  %i.au = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockEPNS_12MachineInstrEES6_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S6_EEEES7_S6_S9_SC_E24lookupOrInsertIntoBucketIS7_JEEES2_IPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %.fca.0.extract.i3 = extractvalue { ptr, i8 } %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i3, i64 16
  store ptr %.sroa.0.0, ptr %i.av, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !110
  store ptr %i.aw, ptr %3, align 8, !tbaa !431
  store ptr %.sroa.017.0, ptr %i.ab, align 8, !tbaa !432
  %i.ax = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_17MachineBasicBlockEPNS_12MachineInstrEES6_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S6_EEEES7_S6_S9_SC_E24lookupOrInsertIntoBucketIS7_JEEES2_IPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %.fca.0.extract.i4 = extractvalue { ptr, i8 } %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i4, i64 16
  store ptr %.sroa.017.0, ptr %i.ay, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.0) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.017.0, align 8
  %i.az = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.h
  %i.ba = load i32, ptr %i.ac, align 4, !tbaa !253
  %i.bb = and i32 %i.ba, 8
  %.not34.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.bd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.017.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !251 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !253
  %i.bg = and i32 %i.bf, 8
  %.not3.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !6

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %bb.h, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.017.0, %bb.h ], [ %.sroa.017.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.bd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !251
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i6 = load i64, ptr %.sroa.0.0, align 8
  %i.bj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i6, 4
  %.not.i.i.i7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i7, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i9, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit14

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i9: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !253
  %i.bm = and i32 %i.bl, 8
  %.not34.i.i.i10 = icmp eq i32 %i.bm, 0
  br i1 %.not34.i.i.i10, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit14, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i9, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11
  %.sroa.0.05.i.i.i12 = phi ptr [ %i.bo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11 ], [ %.sroa.0.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i9 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i12, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !251 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !253
  %i.br = and i32 %i.bq, 8
  %.not3.i.i.i13 = icmp eq i32 %i.br, 0
  br i1 %.not3.i.i.i13, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit14, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11, !llvm.loop !6

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit14: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i9
  %.sroa.0.1.i.i.i8 = phi ptr [ %.sroa.0.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.0.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i9 ], [ %i.bo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i8, i64 8
  br label %bb.f, !llvm.loop !1374
}

declare noundef ptr @_ZN4llvm19PeelSingleBlockLoopENS_17LoopPeelDirectionEPNS_17MachineBasicBlockERNS_19MachineRegisterInfoEPKNS_15TargetInstrInfoE(i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(520), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIPN4llvm17MachineBasicBlockESaIS2_EE10push_frontERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1376 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1377
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !110
  store ptr %i.f, ptr %i.e, align 8, !tbaa !110
  store ptr %i.e, ptr %i.a, align 8, !tbaa !1376
  br label %bb.g

end_hunk_0
