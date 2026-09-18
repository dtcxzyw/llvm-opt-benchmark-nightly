Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGExprConstant?download=true
inline.NumInlined: 5733
inline.NumDeleted: 2819
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN12_GLOBAL__N_124ConstantAggregateBuilder3addEPN4llvm8ConstantEN5clang9CharUnitsEb:bb.a

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit28: ; preds = %bb.t
  %.fca.0.extract.i.i27 = extractvalue { i64, i8 } %i.cj, 0
  %i.cl = add nsw i64 %.fca.0.extract.i.i27, %2   ; 2 uses
  %i.cm = tail call fastcc { i64, i8 } @_ZN12_GLOBAL__N_124ConstantAggregateBuilder7splitAtEN5clang9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(561) %0, i64 %i.cl) ; 2 uses
  %i.cn = extractvalue { i64, i8 } %i.cm, 0       ; 3 uses
  %i.co = extractvalue { i64, i8 } %i.cm, 1
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %.lr.ph.i.i.i, label %bb.ad

.lr.ph.i.i.i:                                     ; preds = %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit28
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %1, ptr %i.a, align 8, !tbaa !472
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !457 ; 4 uses
  %.idx = shl nuw nsw i64 %i.cd, 3                ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx ; 3 uses
  %.idx4.i = shl nuw nsw i64 %i.cn, 3             ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx4.i ; 2 uses
  %i.cu = icmp samesign eq i64 %.idx, %.idx4.i
  br i1 %i.cu, label %bb.y, label %._crit_edge.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr nonnull align 8 %i.ct, i64 %gepdiff.i, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.cv = icmp eq i64 %i.dk, 1
  br i1 %i.cv, label %bb.x, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !472
  store ptr %i.cw, ptr %i.dg, align 8, !tbaa !472
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.cx = phi ptr [ %.pre.i.i.i.i, %bb.v ], [ %i.cr, %bb.w ], [ %i.cr, %bb.x ]
  %i.cy = getelementptr inbounds i8, ptr %i.dg, i64 %gepdiff.i
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = lshr exact i64 %i.db, 3
  %i.dd = trunc i64 %i.dc to i32
  store i32 %i.dd, ptr %i.dh, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.df = call noundef ptr @_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6insertIPKS2_vEEPS2_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(272) %i.cq, ptr noundef %i.cs, ptr noundef nonnull %i.a, ptr noundef nonnull %i.de) ; 0 uses
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  store ptr %1, ptr %i.cs, align 8, !tbaa !472
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !458
  %i.dj = zext i32 %i.di to i64
  %i.dk = sub nsw i64 %i.dj, %i.cn                ; 3 uses
  %gepdiff.i = shl nsw i64 %i.dk, 3               ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, 1
  br i1 %i.dl, label %bb.v, label %bb.w, !prof !506

_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 %2, ptr %3, align 8, !tbaa !432
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !457 ; 4 uses
  %.idx83 = shl nuw nsw i64 %i.cd, 3              ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx83 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx4.i ; 2 uses
  %i.dq = icmp samesign eq i64 %.idx83, %.idx4.i
  br i1 %i.dq, label %bb.ac, label %._crit_edge.i.i.i33

bb.z:                                             ; preds = %._crit_edge.i.i.i33
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr nonnull align 8 %i.dp, i64 %gepdiff.i34, i1 false)
  %.pre.i.i.i.i35 = load ptr, ptr %i.dm, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i33
  %i.dr = icmp eq i64 %i.eg, 1
  br i1 %i.dr, label %bb.ab, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ds = load i64, ptr %i.dp, align 8, !tbaa !432
  store i64 %i.ds, ptr %i.ec, align 8, !tbaa !432
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.dt = phi ptr [ %.pre.i.i.i.i35, %bb.z ], [ %i.dn, %bb.aa ], [ %i.dn, %bb.ab ]
  %i.du = getelementptr inbounds i8, ptr %i.ec, i64 %gepdiff.i34
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = lshr exact i64 %i.dx, 3
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.ed, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit

bb.ac:                                            ; preds = %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eb = call noundef ptr @_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6insertIPKS2_vEEPS2_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(272) %i.dm, ptr noundef %i.do, ptr noundef nonnull %3, ptr noundef nonnull %i.ea) ; 0 uses
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit

._crit_edge.i.i.i33:                              ; preds = %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit
  store i64 %2, ptr %i.do, align 8, !tbaa !432
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !458
  %i.ef = zext i32 %i.ee to i64
  %i.eg = sub nsw i64 %i.ef, %i.cn                ; 3 uses
  %gepdiff.i34 = shl nsw i64 %i.eg, 3             ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, 1
  br i1 %i.eh, label %bb.z, label %bb.aa, !prof !506

_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ei = load i64, ptr %i.b, align 8, !tbaa !456
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.ei, i64 %i.cl)
  store i64 %.sroa.speculated, ptr %i.b, align 8, !tbaa !432
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i8 0, ptr %i.ej, align 8, !tbaa !497
  br label %bb.ad

bb.ad:                                            ; preds = %bb.s, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit28, %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit
  %.2 = phi i1 [ true, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit ], [ false, %bb.s ], [ false, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit28 ], [ true, %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, i8 } @_ZN12_GLOBAL__N_124ConstantAggregateBuilder7splitAtEN5clang9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(561) %0, i64 %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 6 uses
  %2 = alloca [2 x %"class.clang::CharUnits"], align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.c = load i64, ptr %i.b, align 8, !tbaa !456
  %.not = icmp slt i64 %1, %i.c
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 32 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 33 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !458  ; 2 uses
  %.not.i40 = icmp eq i32 %i.f, 0
  br i1 %.not.i40, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24, label %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.lr.ph

_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.lr.ph: ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 23 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 23 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.s = load i32, ptr %i.r, align 8, !tbaa !458
  %i.t = zext i32 %i.s to i64
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24

_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i: ; preds = %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.lr.ph, %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit
  %i.u = phi i32 [ %i.f, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.lr.ph ], [ %i.ajx, %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit ]
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !457  ; 4 uses
  %i.w = zext i32 %i.u to i64
  br label %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.w, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %i.v, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.112.i.i.i, %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.x = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !456
  %i.aa = icmp slt i64 %1, %i.z                   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = xor i64 %i.x, -1
  %i.ad = add nsw i64 %.017.i.i.i, %i.ac
  %.112.i.i.i = select i1 %i.aa, ptr %.01116.i.i.i, ptr %i.ab ; 3 uses
  %.1.i.i.i = select i1 %i.aa, i64 %i.x, i64 %i.ad ; 2 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ae, label %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZN4llvm11upper_boundIRNS_11SmallVectorIN5clang9CharUnitsELj32EEERS3_EEDaOT_OT0_.exit, !llvm.loop !923

_ZN4llvm11upper_boundIRNS_11SmallVectorIN5clang9CharUnitsELj32EEERS3_EEDaOT_OT0_.exit: ; preds = %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.af = icmp eq ptr %.112.i.i.i, %i.v
  br i1 %i.af, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11upper_boundIRNS_11SmallVectorIN5clang9CharUnitsELj32EEERS3_EEDaOT_OT0_.exit
  %i.ag = ptrtoint ptr %.112.i.i.i to i64
  %i.ah = ptrtoint ptr %i.v to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 33 uses
  %i.aj = ashr exact i64 %i.ai, 3                 ; 18 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 6 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !456
  %i.an = icmp eq i64 %i.am, %1
  br i1 %i.an, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !457
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ak
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !472
  %.val = load ptr, ptr %0, align 8, !tbaa !561
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val4 = load ptr, ptr %i.ar, align 8, !tbaa !476
  %i.as = getelementptr i8, ptr %.val, i64 200
  %.val.val = load ptr, ptr %i.as, align 8, !tbaa !453
  %i.at = getelementptr inbounds nuw i8, ptr %.val.val, i64 296
  %i.au = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.at, ptr noundef %.val4) #22 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %i.au, 1
  %i.av = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.av, label %bb.e, label %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit: ; preds = %bb.d
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.au, 0
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !456
  %i.ax = add nsw i64 %i.aw, %.fca.0.extract.i.i
  %.not28 = icmp sgt i64 %i.ax, %1
  br i1 %.not28, label %bb.f, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit
  store i8 0, ptr %i.h, align 8, !tbaa !497
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !457 ; 9 uses
  %.idx.i = shl nuw nsw i64 %i.ak, 3              ; 14 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i ; 8 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !472 ; 27 uses
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !457 ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ak
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !432 ; 47 uses
  %i.be = load i8, ptr %i.ba, align 8, !tbaa !564 ; 4 uses
  %i.bf = add i8 %i.be, -14
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bf, -3
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.bn, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 16 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = and i32 %i.bh, 268435455                ; 4 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ai ; 2 uses
  %i.bl = icmp eq i32 %i.bi, 0
  br i1 %i.bl, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.g
  %i.bm = sub nsw i64 0, %i.bj
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !535
  store ptr %i.bo, ptr %i.az, align 8, !tbaa !472
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bq = icmp eq i32 %i.bi, 1
  br i1 %i.bq, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.1.i

._crit_edge.i.i.i.i:                              ; preds = %bb.z, %.lr.ph.i.i.i.preheader.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.az, %bb.g ], [ %i.bp, %.lr.ph.i.i.i.preheader.i ], [ %i.iq, %bb.z ] ; 3 uses
  %i.br = load i32, ptr %i.i, align 8, !tbaa !458
  %i.bs = zext i32 %i.br to i64
  %i.bt = sub nsw i64 %i.bs, %i.aj                ; 3 uses
  %gepdiff.i.i = shl nsw i64 %i.bt, 3             ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.h, label %bb.i, !prof !506

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.lcssa.i.i.i.i, ptr nonnull align 8 %i.bk, i64 %gepdiff.i.i, i1 false)
  %.pre.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bv = icmp eq i64 %i.bt, 1
  br i1 %i.bv, label %bb.j, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !472
  store ptr %i.bw, ptr %.0.lcssa.i.i.i.i, align 8, !tbaa !472
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bx = phi ptr [ %.pre.i.i.i.i.i, %bb.h ], [ %i.ay, %bb.i ], [ %i.ay, %bb.j ]
  %i.by = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i.i, i64 %gepdiff.i.i
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 3
  %i.cd = trunc i64 %i.cc to i32
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.sink.split"

bb.k:                                             ; preds = %.lr.ph.i.i.i.1.i
  %i.ce = load i32, ptr %i.i, align 8, !tbaa !458 ; 3 uses
  %i.cf = zext i32 %i.ce to i64                   ; 3 uses
  %i.cg = icmp samesign eq i64 %i.aj, %i.cf
  %i.ch = add nsw i64 %i.bj, -1                   ; 11 uses
  %i.ci = add nuw nsw i64 %i.ch, %i.cf            ; 3 uses
  %i.cj = load i32, ptr %i.j, align 4, !tbaa !482
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp samesign ugt i64 %i.ci, %i.ck      ; 2 uses
  br i1 %i.cg, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %i.cl, label %bb.m, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull %i.k, i64 noundef %i.ci, i64 noundef 8) #22
  %.pre.i.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !458 ; 2 uses
  %.pre96.pre.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !457
  %.pre64 = zext i32 %.pre.i.i.i.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.pre-phi = phi i64 [ %i.aj, %bb.l ], [ %.pre64, %bb.m ]
  %.pre96.i.i.i.i.i = phi ptr [ %i.ay, %bb.l ], [ %.pre96.pre.i.i.i.i.i, %bb.m ]
  %i.cm = phi i32 [ %i.ce, %bb.l ], [ %.pre.i.i.i.i.i.i, %bb.m ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.pre96.i.i.i.i.i, i64 %.pre-phi ; 2 uses
  %3 = icmp ne i64 %i.ch, 0
  %umin224 = zext i1 %3 to i64                    ; 2 uses
  %4 = sub nsw i64 %i.bj, %umin224                ; 3 uses
  %xtraiter204 = and i64 %4, 1
  %5 = add nsw i64 %i.bj, -1
  %i.co = icmp eq i64 %5, %umin224
  br i1 %i.co, label %.epil.preheader203, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i.i.new

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i.i.new: ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i.i
  %unroll_iter207 = and i64 %4, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i.i.new
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cn, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i.i.new ], [ %i.di, %bb.n ] ; 3 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i.i.new ], [ %i.dh, %bb.n ] ; 3 uses
  %niter208 = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i.i.new ], [ %niter208.next.1, %bb.n ]
  %i.cp = load i32, ptr %i.bg, align 4
  %i.cq = and i32 %i.cp, 268435455
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.cs
  %i.cu = and i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !535
  store ptr %i.cw, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !472
  %i.cx = add i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cz = load i32, ptr %i.bg, align 4
  %i.da = and i32 %i.cz, 268435455
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.dc
  %i.de = and i64 %i.cx, 4294967295
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.dd, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !535
  store ptr %i.dg, ptr %i.cy, align 8, !tbaa !472
  %i.dh = add i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.loopexit.unr-lcssa", label %bb.n, !llvm.loop !924

"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.loopexit.unr-lcssa": ; preds = %bb.n
  %lcmp.mod205.not = icmp eq i64 %xtraiter204, 0
  br i1 %lcmp.mod205.not, label %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.loopexit", label %.epil.preheader203

.epil.preheader203:                               ; preds = %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.loopexit.unr-lcssa", %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.cn, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i.i ], [ %i.di, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.loopexit.unr-lcssa" ]
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i.i ], [ %i.dh, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.loopexit.unr-lcssa" ]
  %lcmp.mod206 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod206)
  %i.dj = load i32, ptr %i.bg, align 4
  %i.dk = and i32 %i.dj, 268435455
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.dm
  %i.do = and i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, 4294967295
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !535
  store ptr %i.dq, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, align 8, !tbaa !472
  br label %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.loopexit"

"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.loopexit": ; preds = %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.loopexit.unr-lcssa", %.epil.preheader203
  %i.dr = trunc nuw nsw i64 %i.ch to i32
  %i.ds = add i32 %i.cm, %i.dr
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.sink.split"

bb.o:                                             ; preds = %bb.k
  br i1 %i.cl, label %bb.p, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull %i.k, i64 noundef %i.ci, i64 noundef 8) #22
  %.pre.i12.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !457
  %.pre94.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !458 ; 2 uses
  %.pre98.i.i.i.i.i = zext i32 %.pre94.i.i.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.cf, %bb.o ], [ %.pre98.i.i.i.i.i, %bb.p ] ; 3 uses
  %i.dt = phi i32 [ %i.ce, %bb.o ], [ %.pre94.i.i.i.i.i, %bb.p ] ; 2 uses
  %i.du = phi ptr [ %i.ay, %bb.o ], [ %.pre.i12.i.i.i.i, %bb.p ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ai ; 7 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.pre-phi.i.i.i.i.i, 3 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx.i.i.i.i.i ; 6 uses
  %gepdiff.i.i.i.i.i = sub nsw i64 %.idx.i.i.i.i.i, %i.ai ; 4 uses
  %i.dx = ashr exact i64 %gepdiff.i.i.i.i.i, 3    ; 4 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.dx, %i.ch
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i
  %.neg.i.i.i.i.i = mul nsw i64 %i.ch, -8         ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %.neg.i.i.i.i.i ; 2 uses
  %.idx83.neg.i.i.i.i.i = shl nuw nsw i64 %i.ch, 3
  %i.dz = add nuw nsw i64 %.pre-phi.i.i.i.i.i, %i.ch ; 2 uses
  %i.ea = load i32, ptr %i.j, align 4, !tbaa !482
  %i.eb = zext i32 %i.ea to i64
  %i.ec = icmp samesign ugt i64 %i.dz, %i.eb
  br i1 %i.ec, label %bb.r, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull %i.k, i64 noundef %i.dz, i64 noundef 8) #22
  %.pre.i37.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !458 ; 2 uses
  %.pre12.i.i.i.i.i.i = zext i32 %.pre.i37.i.i.i.i.i to i64
  %.pre95.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.ed = phi ptr [ %i.du, %bb.q ], [ %.pre95.i.i.i.i.i, %bb.r ]
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i.i, %bb.q ], [ %.pre12.i.i.i.i.i.i, %bb.r ]
  %i.ee = phi i32 [ %i.dt, %bb.q ], [ %.pre.i37.i.i.i.i.i, %bb.r ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.pre-phi.i.i.i.i.i.i ; 2 uses
  %i.eg = icmp samesign ugt i32 %i.bi, 2
  br i1 %i.eg, label %bb.s, label %bb.t, !prof !506

bb.s:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ef, ptr nonnull align 8 %i.dy, i64 %.idx83.neg.i.i.i.i.i, i1 false)
  %.pre11.i.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !458
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i

bb.t:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i.i
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !472
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !472
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.ei = phi i32 [ %.pre11.i.i.i.i.i.i, %bb.s ], [ %i.ee, %bb.t ]
  %i.ej = trunc nuw nsw i64 %i.ch to i32
  %i.ek = add i32 %i.ei, %i.ej
  store i32 %i.ek, ptr %i.i, align 8, !tbaa !458
  %i.el = sub i64 %.neg.i.i.i.i.i, %i.ai
  %gepdiff86.i.i.i.i.i = add i64 %.idx.i.i.i.i.i, %i.el ; 3 uses
  %i.em = ashr exact i64 %gepdiff86.i.i.i.i.i, 3  ; 2 uses
  %i.en = icmp sgt i64 %i.em, 1
  br i1 %i.en, label %bb.u, label %bb.v, !prof !506

bb.u:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i
  %i.eo = sub nsw i64 0, %i.em
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.eo
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ep, ptr nonnull align 8 %i.dv, i64 %gepdiff86.i.i.i.i.i, i1 false)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

bb.v:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i
  %i.eq = icmp eq i64 %gepdiff86.i.i.i.i.i, 8
  br i1 %i.eq, label %bb.w, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %i.es = load ptr, ptr %i.dv, align 8, !tbaa !472
  store ptr %i.es, ptr %i.er, align 8, !tbaa !472
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.w, %bb.v, %bb.u
  %6 = icmp ne i64 %i.ch, 0
  %umin = zext i1 %6 to i64                       ; 2 uses
  %7 = sub nsw i64 %i.bj, %umin                   ; 3 uses
  %xtraiter = and i64 %7, 1
  %8 = add nsw i64 %i.bj, -1
  %i.et = icmp eq i64 %8, %umin
  br i1 %i.et, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %7, -2
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.044.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.fm, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.eu = load i32, ptr %i.bg, align 4
  %i.ev = and i32 %i.eu, 268435455
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = sub nsw i64 0, %i.ew
  %i.ey = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.ex
  %i.ez = and i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.fa = getelementptr inbounds nuw [32 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !535
  store ptr %i.fb, ptr %.044.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !472
  %i.fc = add i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i, 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fe = load i32, ptr %i.bg, align 4
  %i.ff = and i32 %i.fe, 268435455
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.fh
  %i.fj = and i64 %i.fc, 4294967295
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !535
  store ptr %i.fl, ptr %i.fd, align 8, !tbaa !472
  %i.fm = add i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit189.unr-lcssa", label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !924

bb.x:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i
  %i.fo = trunc nuw nsw i64 %i.ch to i32
  %i.fp = add i32 %i.dt, %i.fo                    ; 2 uses
  store i32 %i.fp, ptr %i.i, align 8, !tbaa !458
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ai, %.idx.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.x
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fq
  %i.fs = sub nsw i64 0, %i.dx
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ft, ptr nonnull align 8 %i.dv, i64 %gepdiff.i.i.i.i.i, i1 false)
  %i.fu = icmp eq i64 %gepdiff.i.i.i.i.i, 8
  br i1 %i.fu, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter199 = and i64 %i.dx, -2
  br label %bb.y

._crit_edge.i.i.i.i.i.unr-lcssa:                  ; preds = %bb.y
  %i.fv = and i64 %gepdiff.i.i.i.i.i, 8
  %lcmp.mod196.not = icmp eq i64 %i.fv, 0
  br i1 %lcmp.mod196.not, label %._crit_edge.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.091.i.i.i.i.i.epil.init = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i ], [ %i.if, %._crit_edge.i.i.i.i.i.unr-lcssa ]
  %.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i ], [ %i.ig, %._crit_edge.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod198 = trunc i64 %i.dx to i1
  call void @llvm.assume(i1 %lcmp.mod198)
  %i.fw = load i32, ptr %i.bg, align 4
  %i.fx = and i32 %i.fw, 268435455
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = sub nsw i64 0, %i.fy
  %i.ga = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.fz
  %i.gb = and i64 %.epil.init, 4294967295
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !535
  store ptr %i.gd, ptr %.091.i.i.i.i.i.epil.init, align 8, !tbaa !472
  %i.ge = add i64 %.epil.init, 1
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ig, %._crit_edge.i.i.i.i.i.unr-lcssa ], [ %i.ge, %.epil.preheader ] ; 2 uses
  %.pre99.i.i.i.i.i = sub i64 %i.bj, %.lcssa      ; 2 uses
  %i.gf = icmp sgt i64 %.pre99.i.i.i.i.i, 0
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i, %bb.x
  %.lcssa.i.i.i.i590.i = phi i64 [ %.lcssa, %._crit_edge.i.i.i.i.i ], [ 1, %bb.x ] ; 4 uses
  %.pre-phi100.i.i.i.i589.i = phi i64 [ %.pre99.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ch, %bb.x ] ; 3 uses
  %i.gg = add i64 %.pre-phi100.i.i.i.i589.i, %.lcssa.i.i.i.i590.i
  %xtraiter201 = and i64 %.pre-phi100.i.i.i.i589.i, 1
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gh = load i32, ptr %i.bg, align 4
  %i.gi = and i32 %i.gh, 268435455
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = sub nsw i64 0, %i.gj
  %i.gl = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.gk
  %i.gm = and i64 %.lcssa.i.i.i.i590.i, 4294967295
  %i.gn = getelementptr inbounds nuw [32 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !535
  store ptr %i.go, ptr %i.dw, align 8, !tbaa !472
  %i.gp = add i64 %.lcssa.i.i.i.i590.i, 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gq, %.prol.loopexit.unr-lcssa ]
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.lcssa.i.i.i.i590.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gp, %.prol.loopexit.unr-lcssa ]
  %i.gr = icmp eq i64 %.pre-phi100.i.i.i.i589.i, 1
  br i1 %i.gr, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new:             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.gs = load i32, ptr %i.bg, align 4
  %i.gt = and i32 %i.gs, 268435455
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = sub nsw i64 0, %i.gu
  %i.gw = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.gv
  %i.gx = and i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.gy = getelementptr inbounds nuw [32 x i8], ptr %i.gw, i64 %i.gx
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !535
  store ptr %i.gz, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !472
  %i.ha = add i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.hb = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.hc = load i32, ptr %i.bg, align 4
  %i.hd = and i32 %i.hc, 268435455
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = sub nsw i64 0, %i.he
  %i.hg = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.hf
  %i.hh = and i64 %i.ha, 4294967295
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %i.hg, i64 %i.hh
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !535
  store ptr %i.hj, ptr %i.hb, align 8, !tbaa !472
  %i.hk = add i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %exitcond496.not.i.1 = icmp eq i64 %i.hk, %i.gg
  br i1 %exitcond496.not.i.1, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new, !llvm.loop !924

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i.i.new
  %.091.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.new ], [ %i.if, %bb.y ] ; 3 uses
  %i.hm = phi i64 [ 1, %.lr.ph.i.i.i.i.i.new ], [ %i.ig, %bb.y ] ; 3 uses
  %niter200 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter200.next.1, %bb.y ]
  %i.hn = load i32, ptr %i.bg, align 4
  %i.ho = and i32 %i.hn, 268435455
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = sub nsw i64 0, %i.hp
  %i.hr = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.hq
  %i.hs = and i64 %i.hm, 4294967295
  %i.ht = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !535
  store ptr %i.hu, ptr %.091.i.i.i.i.i, align 8, !tbaa !472
  %i.hv = getelementptr inbounds nuw i8, ptr %.091.i.i.i.i.i, i64 8
  %i.hw = add i64 %i.hm, 1
  %i.hx = load i32, ptr %i.bg, align 4
  %i.hy = and i32 %i.hx, 268435455
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = sub nsw i64 0, %i.hz
  %i.ib = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.ia
  %i.ic = and i64 %i.hw, 4294967295
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.ib, i64 %i.ic
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !535
  store ptr %i.ie, ptr %i.hv, align 8, !tbaa !472
  %i.if = getelementptr inbounds nuw i8, ptr %.091.i.i.i.i.i, i64 16 ; 2 uses
  %i.ig = add i64 %i.hm, 2                        ; 3 uses
  %niter200.next.1 = add i64 %niter200, 2         ; 2 uses
  %niter200.ncmp.1 = icmp eq i64 %niter200.next.1, %unroll_iter199
  br i1 %niter200.ncmp.1, label %._crit_edge.i.i.i.i.i.unr-lcssa, label %bb.y, !llvm.loop !925

.lr.ph.i.i.i.1.i:                                 ; preds = %.lr.ph.i.i.i.preheader.i
  %i.ih = add nuw nsw i64 %.idx.i, 8
  %i.ii = icmp samesign eq i64 %i.ih, %i.ai
  br i1 %i.ii, label %bb.k, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.1.i
  %i.ij = load i32, ptr %i.bg, align 4
  %i.ik = and i32 %i.ij, 268435455
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = sub nsw i64 0, %i.il
  %i.in = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !535
  store ptr %i.ip, ptr %i.bp, align 8, !tbaa !472
  %i.iq = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  br label %._crit_edge.i.i.i.i

"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.sink.split": ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.loopexit"
  %.sink = phi i32 [ %i.ds, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i.loopexit" ], [ %i.cd, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i ]
  store i32 %.sink, ptr %i.i, align 8, !tbaa !458
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"

"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit189.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit189.unr-lcssa", %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.044.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fn, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit189.unr-lcssa" ]
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fm, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit189.unr-lcssa" ]
  %lcmp.mod194 = trunc i64 %7 to i1
  call void @llvm.assume(i1 %lcmp.mod194)
  %i.ir = load i32, ptr %i.bg, align 4
  %i.is = and i32 %i.ir, 268435455
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = sub nsw i64 0, %i.it
  %i.iv = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.iu
  %i.iw = and i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.epil.init, 4294967295
  %i.ix = getelementptr inbounds nuw [32 x i8], ptr %i.iv, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !535
  store ptr %i.iy, ptr %.044.i.i.i.i.i.i.i.i.i.i.epil.init, align 8, !tbaa !472
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"

"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit189.unr-lcssa", %.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.sink.split", %._crit_edge.i.i.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !476 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load i32, ptr %i.jb, align 8            ; 2 uses
  %i.jd = and i32 %i.jc, 255
  %i.je = icmp eq i32 %i.jd, 17
  %i.jf = and i32 %i.jc, 254
  %spec.select.i.i.i.i.i.i.i.i60.i = icmp eq i32 %i.jf, 18
  %or.cond.i = or i1 %i.je, %spec.select.i.i.i.i.i.i.i.i60.i
  br i1 %or.cond.i, label %.critedge.i, label %bb.aq

.critedge.i:                                      ; preds = %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"
  %i.jg = call noundef ptr @_ZN4llvm17GetElementPtrInst14getTypeAtIndexEPNS_4TypeEm(ptr noundef nonnull %i.ja, i64 noundef 0) #22
  %.val45.i = load ptr, ptr %0, align 8, !tbaa !561
  %i.jh = getelementptr i8, ptr %.val45.i, i64 200
  %.val45.val.i = load ptr, ptr %i.jh, align 8, !tbaa !453
  %i.ji = getelementptr inbounds nuw i8, ptr %.val45.val.i, i64 296
  %i.jj = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ji, ptr noundef %i.jg) #22 ; 2 uses
  %.fca.1.extract.i.i5 = extractvalue { i64, i8 } %i.jj, 1
  %i.jk = trunc nuw i8 %.fca.1.extract.i.i5 to i1
  br i1 %i.jk, label %bb.aa, label %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i

bb.aa:                                            ; preds = %.critedge.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i: ; preds = %.critedge.i
  %.fca.0.extract.i.i6 = extractvalue { i64, i8 } %i.jj, 0 ; 15 uses
  %i.jl = load i32, ptr %i.bg, align 4
  %i.jm = and i32 %i.jl, 268435455                ; 4 uses
  %i.jn = zext nneg i32 %i.jm to i64              ; 9 uses
  %i.jo = load ptr, ptr %i.d, align 8, !tbaa !457 ; 6 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.idx.i ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.ai ; 2 uses
  %i.jr = icmp eq i32 %i.jm, 0
  br i1 %i.jr, label %._crit_edge.i.i.i67.i, label %.lr.ph.i.i.i66.preheader.i

.lr.ph.i.i.i66.preheader.i:                       ; preds = %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i
  store i64 %i.bd, ptr %i.jp, align 8, !tbaa !432
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 2 uses
  %i.jt = icmp eq i32 %i.jm, 1
  br i1 %i.jt, label %._crit_edge.i.i.i67.i, label %.lr.ph.i.i.i66.1.i

._crit_edge.i.i.i67.i:                            ; preds = %bb.ap, %.lr.ph.i.i.i66.preheader.i, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i
  %.0.lcssa.i.i.i68.i = phi ptr [ %i.jp, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i ], [ %i.js, %.lr.ph.i.i.i66.preheader.i ], [ %i.qg, %bb.ap ] ; 3 uses
  %i.ju = load i32, ptr %i.e, align 8, !tbaa !458
  %i.jv = zext i32 %i.ju to i64
  %i.jw = sub nsw i64 %i.jv, %i.aj                ; 3 uses
  %gepdiff.i69.i = shl nsw i64 %i.jw, 3           ; 2 uses
  %i.jx = icmp sgt i64 %i.jw, 1
  br i1 %i.jx, label %bb.ab, label %bb.ac, !prof !506

bb.ab:                                            ; preds = %._crit_edge.i.i.i67.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i.i.i68.i, ptr nonnull align 8 %i.jq, i64 %gepdiff.i69.i, i1 false)
  %.pre.i.i.i.i70.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i

bb.ac:                                            ; preds = %._crit_edge.i.i.i67.i
  %i.jy = icmp eq i64 %i.jw, 1
  br i1 %i.jy, label %bb.ad, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.jz = load i64, ptr %i.jq, align 8, !tbaa !432
  store i64 %i.jz, ptr %.0.lcssa.i.i.i68.i, align 8, !tbaa !432
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ka = phi ptr [ %.pre.i.i.i.i70.i, %bb.ab ], [ %i.jo, %bb.ac ], [ %i.jo, %bb.ad ]
  %i.kb = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i68.i, i64 %gepdiff.i69.i
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = ptrtoint ptr %i.ka to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %i.kf = lshr exact i64 %i.ke, 3
  %i.kg = trunc i64 %i.kf to i32                  ; 2 uses
  store i32 %i.kg, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

bb.ae:                                            ; preds = %.lr.ph.i.i.i66.1.i
  %i.kh = load i32, ptr %i.e, align 8, !tbaa !458 ; 3 uses
  %i.ki = zext i32 %i.kh to i64                   ; 3 uses
  %i.kj = icmp samesign eq i64 %i.aj, %i.ki
  %i.kk = add nsw i64 %i.jn, -1                   ; 10 uses
  %i.kl = add nuw nsw i64 %i.kk, %i.ki            ; 3 uses
  %i.km = load i32, ptr %i.l, align 4, !tbaa !482
  %i.kn = zext i32 %i.km to i64
  %i.ko = icmp samesign ugt i64 %i.kl, %i.kn      ; 2 uses
  br i1 %i.kj, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ko, label %bb.ag, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.kl, i64 noundef 8) #22
  %.pre.i.i.i.i.i83.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre25.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i83.i to i64
  %.pre107.pre.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i:             ; preds = %bb.ag, %bb.af
  %.pre107.i.i.i.i.i = phi ptr [ %i.jo, %bb.af ], [ %.pre107.pre.i.i.i.i.i, %bb.ag ]
  %.pre-phi.i.i.i.i.i81.i = phi i64 [ %i.aj, %bb.af ], [ %.pre25.i.i.i.i.i.i, %bb.ag ]
  %i.kp = phi i32 [ %i.kh, %bb.af ], [ %.pre.i.i.i.i.i83.i, %bb.ag ]
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %.pre107.i.i.i.i.i, i64 %.pre-phi.i.i.i.i.i81.i ; 2 uses
  %i.kr = add nsw i64 %i.jn, -1                   ; 2 uses
  %xtraiter224 = and i64 %i.kr, 3                 ; 3 uses
  %i.ks = add nsw i32 %i.jm, -2
  %i.kt = icmp ult i32 %i.ks, 3
  br i1 %i.kt, label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new:         ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i
  %unroll_iter228 = and i64 %i.kr, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i82.i

.lr.ph.i.i.i.i.i.i.i.i.i82.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new
  %.04.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kq, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new ], [ %i.ln, %.lr.ph.i.i.i.i.i.i.i.i.i82.i ] ; 5 uses
  %.val13.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new ], [ %i.lm, %.lr.ph.i.i.i.i.i.i.i.i.i82.i ] ; 5 uses
  %niter229 = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new ], [ %niter229.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i82.i ]
  %i.ku = and i64 %.val13.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.kv = mul nsw i64 %i.ku, %.fca.0.extract.i.i6
  %i.kw = add nsw i64 %i.kv, %i.bd
  store i64 %i.kw, ptr %.04.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  %i.kx = add nuw nsw i64 %.val13.i.i.i.i.i.i.i.i.i.i, 1
  %i.ky = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.kz = and i64 %i.kx, 4294967295
  %i.la = mul nsw i64 %i.kz, %.fca.0.extract.i.i6
  %i.lb = add nsw i64 %i.la, %i.bd
  store i64 %i.lb, ptr %i.ky, align 8, !tbaa !432
  %i.lc = add nuw nsw i64 %.val13.i.i.i.i.i.i.i.i.i.i, 2
  %i.ld = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.le = and i64 %i.lc, 4294967295
  %i.lf = mul nsw i64 %i.le, %.fca.0.extract.i.i6
  %i.lg = add nsw i64 %i.lf, %i.bd
  store i64 %i.lg, ptr %i.ld, align 8, !tbaa !432
  %i.lh = add i64 %.val13.i.i.i.i.i.i.i.i.i.i, 3
  %i.li = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.lj = and i64 %i.lh, 4294967295
  %i.lk = mul nsw i64 %i.lj, %.fca.0.extract.i.i6
  %i.ll = add nsw i64 %i.lk, %i.bd
  store i64 %i.ll, ptr %i.li, align 8, !tbaa !432
  %i.lm = add i64 %.val13.i.i.i.i.i.i.i.i.i.i, 4  ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %niter229.next.3 = add i64 %niter229, 4         ; 2 uses
  %niter229.ncmp.3 = icmp eq i64 %niter229.next.3, %unroll_iter228
  br i1 %niter229.ncmp.3, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa", label %.lr.ph.i.i.i.i.i.i.i.i.i82.i, !llvm.loop !926

"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i
  %lcmp.mod226.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod226.not, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader:      ; preds = %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa", %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i
  %.04.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.kq, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.ln, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa" ]
  %.val13.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.lm, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa" ]
  %lcmp.mod227 = icmp ne i64 %xtraiter224, 0
  call void @llvm.assume(i1 %lcmp.mod227)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader
  %.04.i.i.i.i.i.i.i.i.i.i.epil = phi ptr [ %i.ls, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil ], [ %.04.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader ] ; 2 uses
  %.val13.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.lr, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil ], [ %.val13.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader ] ; 2 uses
  %epil.iter225 = phi i64 [ %epil.iter225.next, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader ]
  %i.lo = and i64 %.val13.i.i.i.i.i.i.i.i.i.i.epil, 4294967295
  %i.lp = mul nsw i64 %i.lo, %.fca.0.extract.i.i6
  %i.lq = add nsw i64 %i.lp, %i.bd
  store i64 %i.lq, ptr %.04.i.i.i.i.i.i.i.i.i.i.epil, align 8, !tbaa !432
  %i.lr = add i64 %.val13.i.i.i.i.i.i.i.i.i.i.epil, 1
  %i.ls = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i.epil, i64 8
  %epil.iter225.next = add i64 %epil.iter225, 1   ; 2 uses
  %epil.iter225.cmp.not = icmp eq i64 %epil.iter225.next, %xtraiter224
  br i1 %epil.iter225.cmp.not, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil, !llvm.loop !927

"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa"
  %i.lt = trunc nuw nsw i64 %i.kk to i32
  %i.lu = add i32 %i.kp, %i.lt                    ; 2 uses
  store i32 %i.lu, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

bb.ah:                                            ; preds = %bb.ae
  br i1 %i.ko, label %bb.ai, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.kl, i64 noundef 8) #22
  %.pre.i10.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !457
  %.pre105.i.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre109.i.i.i.i.i = zext i32 %.pre105.i.i.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.pre-phi.i.i.i.i71.i = phi i64 [ %i.ki, %bb.ah ], [ %.pre109.i.i.i.i.i, %bb.ai ] ; 3 uses
  %i.lv = phi i32 [ %i.kh, %bb.ah ], [ %.pre105.i.i.i.i.i, %bb.ai ] ; 2 uses
  %i.lw = phi ptr [ %i.jo, %bb.ah ], [ %.pre.i10.i.i.i.i, %bb.ai ] ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ai ; 9 uses
  %.idx.i.i.i.i72.i = shl nuw nsw i64 %.pre-phi.i.i.i.i71.i, 3 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.idx.i.i.i.i72.i ; 6 uses
  %gepdiff.i.i.i.i73.i = sub nsw i64 %.idx.i.i.i.i72.i, %i.ai ; 2 uses
  %i.lz = ashr exact i64 %gepdiff.i.i.i.i73.i, 3  ; 7 uses
  %.not.i.i.i.i74.i = icmp ult i64 %i.lz, %i.kk
  br i1 %.not.i.i.i.i74.i, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i
  %.neg.i.i.i.i75.i = mul nsw i64 %i.kk, -8       ; 2 uses
  %i.ma = getelementptr inbounds i8, ptr %i.ly, i64 %.neg.i.i.i.i75.i ; 2 uses
  %i.mb = add nuw nsw i64 %.pre-phi.i.i.i.i71.i, %i.kk ; 2 uses
  %i.mc = load i32, ptr %i.l, align 4, !tbaa !482
  %i.md = zext i32 %i.mc to i64
  %i.me = icmp samesign ugt i64 %i.mb, %i.md
  br i1 %i.me, label %bb.ak, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.mb, i64 noundef 8) #22
  %.pre.i38.i.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre11.i.i.i.i.i76.i = zext i32 %.pre.i38.i.i.i.i.i to i64
  %.pre63 = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %i.mf = phi ptr [ %i.lw, %bb.aj ], [ %.pre63, %bb.ak ]
  %.pre-phi.i34.i.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i71.i, %bb.aj ], [ %.pre11.i.i.i.i.i76.i, %bb.ak ]
  %i.mg = phi i32 [ %i.lv, %bb.aj ], [ %.pre.i38.i.i.i.i.i, %bb.ak ]
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %.pre-phi.i34.i.i.i.i.i ; 2 uses
  %i.mi = add nuw nsw i64 %i.jn, 2305843009213693950
  %i.mj = and i64 %i.mi, 2305843009213693951
  %i.mk = add nuw nsw i64 %i.jn, 7
  %xtraiter211 = and i64 %i.mk, 7                 ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol:                ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.mn, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ], [ %i.mh, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.mm, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ], [ %i.ma, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ] ; 2 uses
  %prol.iter213 = phi i64 [ %prol.iter213.next, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ], [ 0, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ]
  %i.ml = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !432
  store i64 %i.ml, ptr %.09.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !432
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter213.next = add i64 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i64 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol, !llvm.loop !928

.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.mh, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ], [ %i.mn, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ]
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ma, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ], [ %i.mm, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ]
  %i.mo = icmp samesign ult i64 %i.mj, 7
  br i1 %i.mo, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i

.lr.ph.i.i.i.i.i36.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i36.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nm, %.lr.ph.i.i.i.i.i36.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nl, %.lr.ph.i.i.i.i.i36.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.mp = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  store i64 %i.mp, ptr %.09.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ms = load i64, ptr %i.mq, align 8, !tbaa !432
  store i64 %i.ms, ptr %i.mr, align 8, !tbaa !432
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.mu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !432
  store i64 %i.mv, ptr %i.mu, align 8, !tbaa !432
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.mx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.my = load i64, ptr %i.mw, align 8, !tbaa !432
  store i64 %i.my, ptr %i.mx, align 8, !tbaa !432
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !432
  store i64 %i.nb, ptr %i.na, align 8, !tbaa !432
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.nd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.ne = load i64, ptr %i.nc, align 8, !tbaa !432
  store i64 %i.ne, ptr %i.nd, align 8, !tbaa !432
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.ng = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.nh = load i64, ptr %i.nf, align 8, !tbaa !432
  store i64 %i.nh, ptr %i.ng, align 8, !tbaa !432
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 56
  %i.nj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 56
  %i.nk = load i64, ptr %i.ni, align 8, !tbaa !432
  store i64 %i.nk, ptr %i.nj, align 8, !tbaa !432
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i37.i.i.i.i.i.7 = icmp eq ptr %i.nl, %i.ly
  br i1 %.not.i.i.i.i.i37.i.i.i.i.i.7, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i, !llvm.loop !4

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i.i, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit
  %i.nn = trunc nuw nsw i64 %i.kk to i32
  %i.no = add i32 %i.mg, %i.nn
  store i32 %i.no, ptr %i.e, align 8, !tbaa !458
  %i.np = sub i64 %.neg.i.i.i.i75.i, %i.ai
  %gepdiff97.i.i.i.i.i = add i64 %.idx.i.i.i.i72.i, %i.np ; 3 uses
  %i.nq = ashr exact i64 %gepdiff97.i.i.i.i.i, 3  ; 2 uses
  %i.nr = icmp sgt i64 %i.nq, 1
  br i1 %i.nr, label %bb.al, label %bb.am, !prof !506

bb.al:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit
  %i.ns = sub nsw i64 0, %i.nq
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ly, i64 %i.ns
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nt, ptr nonnull align 8 %i.lx, i64 %gepdiff97.i.i.i.i.i, i1 false)
  br label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.a

bb.am:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit
  %i.nu = icmp eq i64 %gepdiff97.i.i.i.i.i, 8
  br i1 %i.nu, label %bb.an, label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.a

bb.an:                                            ; preds = %bb.am
  %i.nv = getelementptr inbounds i8, ptr %i.ly, i64 -8
  %i.nw = load i64, ptr %i.lx, align 8, !tbaa !432
  store i64 %i.nw, ptr %i.nv, align 8, !tbaa !432
  br label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.a

.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.a:         ; preds = %bb.an, %bb.am, %bb.al
  %9 = icmp ne i64 %i.kk, 0
  %.neg = sext i1 %9 to i64
  %10 = add nsw i64 %.neg, %i.jn                  ; 3 uses
  %i.nx = icmp ult i64 %10, 4
  br i1 %i.nx, label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.a
  %unroll_iter219 = and i64 %10, -4               ; 5 uses
  %11 = shl nsw i64 %unroll_iter219, 3
  %12 = getelementptr i8, ptr %i.lx, i64 %11
  %13 = sub nsw i64 %i.kk, %unroll_iter219
  %14 = or disjoint i64 %unroll_iter219, 1
  %broadcast.splatinsert185 = insertelement <2 x i64> poison, i64 %.fca.0.extract.i.i6, i64 0
  %broadcast.splat186 = shufflevector <2 x i64> %broadcast.splatinsert185, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert187 = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %broadcast.splat188 = shufflevector <2 x i64> %broadcast.splatinsert187, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.a

.lr.ph.i.i.i.i.i40.i.i.i.i.i.a:                   ; preds = %.lr.ph.i.i.i.i.i40.i.i.i.i.i.a, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.new
  %niter220 = phi i64 [ 0, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.new ], [ %i.oa, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.a ] ; 2 uses
  %vec.ind191 = phi <2 x i64> [ <i64 1, i64 2>, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.new ], [ %vec.ind.next195, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.a ] ; 3 uses
  %step.add192 = add <2 x i64> %vec.ind191, splat (i64 2)
  %15 = shl i64 %niter220, 3
  %i.ny = getelementptr i8, ptr %i.lx, i64 %15    ; 2 uses
  %16 = and <2 x i64> %vec.ind191, splat (i64 4294967295)
  %17 = and <2 x i64> %step.add192, splat (i64 4294967295)
  %18 = mul nsw <2 x i64> %16, %broadcast.splat186
  %19 = mul nsw <2 x i64> %17, %broadcast.splat186
  %20 = add nsw <2 x i64> %18, %broadcast.splat188
  %21 = add nsw <2 x i64> %19, %broadcast.splat188
  %i.nz = getelementptr i8, ptr %i.ny, i64 16
  store <2 x i64> %20, ptr %i.ny, align 8, !tbaa !432
  store <2 x i64> %21, ptr %i.nz, align 8, !tbaa !432
  %i.oa = add nuw i64 %niter220, 4                ; 2 uses
  %vec.ind.next195 = add <2 x i64> %vec.ind191, splat (i64 4)
  %niter220.ncmp.3 = icmp eq i64 %i.oa, %unroll_iter219
  br i1 %niter220.ncmp.3, label %middle.block196, label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.a, !llvm.loop !929

middle.block196:                                  ; preds = %.lr.ph.i.i.i.i.i40.i.i.i.i.i.a
  %cmp.n197 = icmp eq i64 %10, %unroll_iter219
  br i1 %cmp.n197, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader:           ; preds = %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.a, %middle.block196
  %.02.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.lx, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.a ], [ %12, %middle.block196 ]
  %.041.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.kk, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.a ], [ %13, %middle.block196 ]
  %.ph205 = phi i64 [ 1, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader.a ], [ %14, %middle.block196 ]
  br label %.lr.ph.i.i.i.i.i40.i.i.i.i.i

.lr.ph.i.i.i.i.i40.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i40.i.i.i.i.i
  %.02.i.i.i.i.i.i.i.i.i.i = phi ptr [ %27, %.lr.ph.i.i.i.i.i40.i.i.i.i.i ], [ %.02.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader ] ; 2 uses
  %.041.i.i.i.i.i.i.i.i.i.i = phi i64 [ %28, %.lr.ph.i.i.i.i.i40.i.i.i.i.i ], [ %.041.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader ] ; 2 uses
  %22 = phi i64 [ %26, %.lr.ph.i.i.i.i.i40.i.i.i.i.i ], [ %.ph205, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.preheader ] ; 2 uses
  %23 = and i64 %22, 4294967295
  %24 = mul nsw i64 %23, %.fca.0.extract.i.i6
  %25 = add nsw i64 %24, %i.bd
  store i64 %25, ptr %.02.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  %26 = add i64 %22, 1
  %27 = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i.i.i.i.i.i, i64 8
  %28 = add nsw i64 %.041.i.i.i.i.i.i.i.i.i.i, -1
  %29 = icmp samesign ugt i64 %.041.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %29, label %.lr.ph.i.i.i.i.i40.i.i.i.i.i, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, !llvm.loop !930

bb.ao:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i
  %i.ob = trunc nuw nsw i64 %i.kk to i32
  %i.oc = add i32 %i.lv, %i.ob                    ; 2 uses
  store i32 %i.oc, ptr %i.e, align 8, !tbaa !458
  %.not.i.i.i.i.i.i77.i = icmp eq i64 %i.ai, %.idx.i.i.i.i72.i
  br i1 %.not.i.i.i.i.i.i77.i, label %._crit_edge.i.i.i.i79.i, label %.lr.ph.i.i.i.i78.i

.lr.ph.i.i.i.i78.i:                               ; preds = %bb.ao
  %i.od = zext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.od
  %i.of = sub nsw i64 0, %i.lz
  %i.og = getelementptr inbounds [8 x i8], ptr %i.oe, i64 %i.of
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.og, ptr nonnull align 8 %i.lx, i64 %gepdiff.i.i.i.i73.i, i1 false)
  %min.iters.check163 = icmp ult i64 %i.lz, 4
  br i1 %min.iters.check163, label %scalar.ph162.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph.i.i.i.i78.i
  %n.vec165 = and i64 %i.lz, -4                   ; 4 uses
  %i.oh = shl nsw i64 %n.vec165, 3
  %i.oi = getelementptr i8, ptr %i.lx, i64 %i.oh
  %i.oj = and i64 %i.lz, 3
  %i.ok = or disjoint i64 %n.vec165, 1            ; 2 uses
  %broadcast.splatinsert166 = insertelement <2 x i64> poison, i64 %.fca.0.extract.i.i6, i64 0
  %broadcast.splat167 = shufflevector <2 x i64> %broadcast.splatinsert166, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert168 = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %broadcast.splat169 = shufflevector <2 x i64> %broadcast.splatinsert168, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph164
  %index171 = phi i64 [ 0, %vector.ph164 ], [ %index.next175, %vector.body170 ] ; 2 uses
  %vec.ind172 = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph164 ], [ %vec.ind.next176, %vector.body170 ] ; 3 uses
  %step.add173 = add <2 x i64> %vec.ind172, splat (i64 2)
  %i.ol = shl i64 %index171, 3
  %next.gep174 = getelementptr i8, ptr %i.lx, i64 %i.ol ; 2 uses
  %i.om = and <2 x i64> %vec.ind172, splat (i64 4294967295)
  %i.on = and <2 x i64> %step.add173, splat (i64 4294967295)
  %i.oo = mul nsw <2 x i64> %i.om, %broadcast.splat167
  %i.op = mul nsw <2 x i64> %i.on, %broadcast.splat167
  %i.oq = add nsw <2 x i64> %i.oo, %broadcast.splat169
  %i.or = add nsw <2 x i64> %i.op, %broadcast.splat169
  %i.os = getelementptr i8, ptr %next.gep174, i64 16
  store <2 x i64> %i.oq, ptr %next.gep174, align 8, !tbaa !432
  store <2 x i64> %i.or, ptr %i.os, align 8, !tbaa !432
  %index.next175 = add nuw i64 %index171, 4       ; 2 uses
  %vec.ind.next176 = add <2 x i64> %vec.ind172, splat (i64 4)
  %i.ot = icmp eq i64 %index.next175, %n.vec165
  br i1 %i.ot, label %middle.block177, label %vector.body170, !llvm.loop !931

middle.block177:                                  ; preds = %vector.body170
  %cmp.n178 = icmp eq i64 %i.lz, %n.vec165
  br i1 %cmp.n178, label %._crit_edge.i.i.i.i79.i, label %scalar.ph162.preheader

scalar.ph162.preheader:                           ; preds = %.lr.ph.i.i.i.i78.i, %middle.block177
  %.028102.i.i.i.i.i.ph = phi ptr [ %i.lx, %.lr.ph.i.i.i.i78.i ], [ %i.oi, %middle.block177 ]
  %.029101.i.i.i.i.i.ph = phi i64 [ %i.lz, %.lr.ph.i.i.i.i78.i ], [ %i.oj, %middle.block177 ]
  %.ph185 = phi i64 [ 1, %.lr.ph.i.i.i.i78.i ], [ %i.ok, %middle.block177 ]
  br label %scalar.ph162

._crit_edge.i.i.i.i79.i:                          ; preds = %scalar.ph162, %middle.block177, %bb.ao
  %.lcssa.i.i.i.i80.i = phi i64 [ 1, %bb.ao ], [ %i.ok, %middle.block177 ], [ %i.qb, %scalar.ph162 ] ; 5 uses
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq i64 %.lcssa.i.i.i.i80.i, %i.jn
  br i1 %.not2.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i79.i
  %i.ou = sub i64 %i.jn, %.lcssa.i.i.i.i80.i
  %xtraiter221 = and i64 %i.ou, 3                 ; 2 uses
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.04.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.oz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.val13.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.oy, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.lcssa.i.i.i.i80.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter223 = phi i64 [ %prol.iter223.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ov = and i64 %.val13.i.i.i.i.i.i.i.i.i.prol, 4294967295
  %i.ow = mul nsw i64 %i.ov, %.fca.0.extract.i.i6
  %i.ox = add nsw i64 %i.ow, %i.bd
  store i64 %i.ox, ptr %.04.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !432
  %i.oy = add i64 %.val13.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter223.next = add i64 %prol.iter223, 1   ; 2 uses
  %prol.iter223.cmp.not = icmp eq i64 %prol.iter223.next, %xtraiter221
  br i1 %prol.iter223.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !932

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.04.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.oz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.val13.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.lcssa.i.i.i.i80.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.oy, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.pa = sub i64 %.lcssa.i.i.i.i80.i, %i.jn
  %i.pb = icmp ugt i64 %i.pa, -4
  br i1 %i.pb, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.04.i.i.i.i.i.i.i.i.i = phi ptr [ %i.pv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.04.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.val13.i.i.i.i.i.i.i.i.i = phi i64 [ %i.pu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.val13.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.pc = and i64 %.val13.i.i.i.i.i.i.i.i.i, 4294967295
  %i.pd = mul nsw i64 %i.pc, %.fca.0.extract.i.i6
  %i.pe = add nsw i64 %i.pd, %i.bd
  store i64 %i.pe, ptr %.04.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  %i.pf = add i64 %.val13.i.i.i.i.i.i.i.i.i, 1
  %i.pg = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 8
  %i.ph = and i64 %i.pf, 4294967295
  %i.pi = mul nsw i64 %i.ph, %.fca.0.extract.i.i6
  %i.pj = add nsw i64 %i.pi, %i.bd
  store i64 %i.pj, ptr %i.pg, align 8, !tbaa !432
  %i.pk = add i64 %.val13.i.i.i.i.i.i.i.i.i, 2
  %i.pl = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 16
  %i.pm = and i64 %i.pk, 4294967295
  %i.pn = mul nsw i64 %i.pm, %.fca.0.extract.i.i6
  %i.po = add nsw i64 %i.pn, %i.bd
  store i64 %i.po, ptr %i.pl, align 8, !tbaa !432
  %i.pp = add i64 %.val13.i.i.i.i.i.i.i.i.i, 3
  %i.pq = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 24
  %i.pr = and i64 %i.pp, 4294967295
  %i.ps = mul nsw i64 %i.pr, %.fca.0.extract.i.i6
  %i.pt = add nsw i64 %i.ps, %i.bd
  store i64 %i.pt, ptr %i.pq, align 8, !tbaa !432
  %i.pu = add i64 %.val13.i.i.i.i.i.i.i.i.i, 4    ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.pu, %i.jn
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !926

scalar.ph162:                                     ; preds = %scalar.ph162.preheader, %scalar.ph162
  %.028102.i.i.i.i.i = phi ptr [ %i.qa, %scalar.ph162 ], [ %.028102.i.i.i.i.i.ph, %scalar.ph162.preheader ] ; 2 uses
  %.029101.i.i.i.i.i = phi i64 [ %i.qc, %scalar.ph162 ], [ %.029101.i.i.i.i.i.ph, %scalar.ph162.preheader ]
  %i.pw = phi i64 [ %i.qb, %scalar.ph162 ], [ %.ph185, %scalar.ph162.preheader ] ; 2 uses
  %i.px = and i64 %i.pw, 4294967295
  %i.py = mul nsw i64 %i.px, %.fca.0.extract.i.i6
  %i.pz = add nsw i64 %i.py, %i.bd
  store i64 %i.pz, ptr %.028102.i.i.i.i.i, align 8, !tbaa !432
  %i.qa = getelementptr inbounds nuw i8, ptr %.028102.i.i.i.i.i, i64 8
  %i.qb = add i64 %i.pw, 1                        ; 2 uses
  %i.qc = add i64 %.029101.i.i.i.i.i, -1          ; 2 uses
  %.not31.i.i.i.i.i = icmp eq i64 %i.qc, 0
  br i1 %.not31.i.i.i.i.i, label %._crit_edge.i.i.i.i79.i, label %scalar.ph162, !llvm.loop !933

.lr.ph.i.i.i66.1.i:                               ; preds = %.lr.ph.i.i.i66.preheader.i
  %i.qd = add nuw nsw i64 %.idx.i, 8
  %i.qe = icmp samesign eq i64 %i.qd, %i.ai
  br i1 %i.qe, label %bb.ae, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i66.1.i
  %i.qf = add nsw i64 %.fca.0.extract.i.i6, %i.bd
  store i64 %i.qf, ptr %i.js, align 8, !tbaa !432
  %i.qg = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  br label %._crit_edge.i.i.i67.i

bb.aq:                                            ; preds = %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"
  %i.qh = load ptr, ptr %0, align 8, !tbaa !561, !nonnull !43, !align !45
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 200
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !453, !nonnull !43, !align !45
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 296
  %i.ql = call noundef ptr @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.qk, ptr noundef nonnull %i.ja) #22 ; 4 uses
  %i.qm = load i32, ptr %i.bg, align 4
  %i.qn = and i32 %i.qm, 268435455                ; 3 uses
  %i.qo = zext nneg i32 %i.qn to i64              ; 6 uses
  %i.qp = load ptr, ptr %i.d, align 8, !tbaa !457 ; 6 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %.idx.i ; 4 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.ai ; 2 uses
  %i.qs = icmp eq i32 %i.qn, 0
  br i1 %i.qs, label %._crit_edge.i.i.i100.i, label %.lr.ph.i.i.i98.preheader.i

.lr.ph.i.i.i98.preheader.i:                       ; preds = %bb.aq
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ql, i64 24 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 32
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8
  %i.qu = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.qu, label %bb.bl, label %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i"

._crit_edge.i.i.i100.i:                           ; preds = %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.1.i", %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i", %bb.aq
  %.0.lcssa.i.i.i101.i = phi ptr [ %i.qq, %bb.aq ], [ %i.vf, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i" ], [ %i.vm, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.1.i" ] ; 3 uses
  %i.qv = load i32, ptr %i.e, align 8, !tbaa !458
  %i.qw = zext i32 %i.qv to i64
  %i.qx = sub nsw i64 %i.qw, %i.aj                ; 3 uses
  %gepdiff.i102.i = shl nsw i64 %i.qx, 3          ; 2 uses
  %i.qy = icmp sgt i64 %i.qx, 1
  br i1 %i.qy, label %bb.ar, label %bb.as, !prof !506

bb.ar:                                            ; preds = %._crit_edge.i.i.i100.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i.i.i101.i, ptr nonnull align 8 %i.qr, i64 %gepdiff.i102.i, i1 false)
  %.pre.i.i.i.i104.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i103.i

bb.as:                                            ; preds = %._crit_edge.i.i.i100.i
  %i.qz = icmp eq i64 %i.qx, 1
  br i1 %i.qz, label %bb.at, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i103.i

bb.at:                                            ; preds = %bb.as
  %i.ra = load i64, ptr %i.qr, align 8, !tbaa !432
  store i64 %i.ra, ptr %.0.lcssa.i.i.i101.i, align 8, !tbaa !432
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i103.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i103.i: ; preds = %bb.at, %bb.as, %bb.ar
  %i.rb = phi ptr [ %.pre.i.i.i.i104.i, %bb.ar ], [ %i.qp, %bb.as ], [ %i.qp, %bb.at ]
  %i.rc = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i101.i, i64 %gepdiff.i102.i
  %i.rd = ptrtoint ptr %i.rc to i64
  %i.re = ptrtoint ptr %i.rb to i64
  %i.rf = sub i64 %i.rd, %i.re
  %i.rg = lshr exact i64 %i.rf, 3
  %i.rh = trunc i64 %i.rg to i32                  ; 2 uses
  store i32 %i.rh, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

bb.au:                                            ; preds = %.lr.ph.i.i.i98.1.i
  %i.ri = load i32, ptr %i.e, align 8, !tbaa !458 ; 3 uses
  %i.rj = zext i32 %i.ri to i64                   ; 3 uses
  %i.rk = icmp samesign eq i64 %i.aj, %i.rj
  %i.rl = add nsw i64 %i.qo, -1                   ; 8 uses
  %i.rm = add nuw nsw i64 %i.rl, %i.rj            ; 3 uses
  %i.rn = load i32, ptr %i.l, align 4, !tbaa !482
  %i.ro = zext i32 %i.rn to i64
  %i.rp = icmp samesign ugt i64 %i.rm, %i.ro      ; 2 uses
  br i1 %i.rk, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  br i1 %i.rp, label %bb.aw, label %.lr.ph.i.i.i.i.i.i.i.i.i132.i

bb.aw:                                            ; preds = %bb.av
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.rm, i64 noundef 8) #22
  %.pre.i.i.i.i.i135.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre110.pre.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !457
  %.pre.i.i.i.i = zext i32 %.pre.i.i.i.i.i135.i to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.i132.i

.lr.ph.i.i.i.i.i.i.i.i.i132.i:                    ; preds = %bb.aw, %bb.av
  %.pre-phi.i.i.i.i = phi i64 [ %i.aj, %bb.av ], [ %.pre.i.i.i.i, %bb.aw ]
  %.pre110.i.i.i.i.i = phi ptr [ %i.qp, %bb.av ], [ %.pre110.pre.i.i.i.i.i, %bb.aw ]
  %i.rq = phi i32 [ %i.ri, %bb.av ], [ %.pre.i.i.i.i.i135.i, %bb.aw ]
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %.pre110.i.i.i.i.i, i64 %.pre-phi.i.i.i.i
  br label %bb.ax

bb.ax:                                            ; preds = %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i132.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rr, %.lr.ph.i.i.i.i.i.i.i.i.i132.i ], [ %i.rx, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.val25.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i132.i ], [ %i.rw, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.rs = and i64 %.val25.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.rt = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %i.rs ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8
  %i.ru = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ru, label %bb.ay, label %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i.i.i.i.i.i"

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ax
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.rt, align 8
  %i.rv = add nsw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bd
  store i64 %i.rv, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  %i.rw = add i64 %.val25.i.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i.i134.i = icmp eq i64 %i.rw, %i.qo
  br i1 %.not.i.i.i.i.i.i.i.i.i134.i, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_2S2_EEvEEvT_SD_.exit.i.i.i.i.i", label %bb.ax, !llvm.loop !934

"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_2S2_EEvEEvT_SD_.exit.i.i.i.i.i": ; preds = %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i.i.i.i.i.i"
  %i.ry = trunc nuw nsw i64 %i.rl to i32
  %i.rz = add i32 %i.rq, %i.ry                    ; 2 uses
  store i32 %i.rz, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

bb.az:                                            ; preds = %bb.au
  br i1 %i.rp, label %bb.ba, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i105.i

bb.ba:                                            ; preds = %bb.az
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.rm, i64 noundef 8) #22
  %.pre.i10.i.i.i130.i = load ptr, ptr %i.d, align 8, !tbaa !457
  %.pre109.i.i.i.i131.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre112.i.i.i.i.i = zext i32 %.pre109.i.i.i.i131.i to i64
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i105.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i105.i: ; preds = %bb.ba, %bb.az
  %.pre-phi.i.i.i.i106.i = phi i64 [ %i.rj, %bb.az ], [ %.pre112.i.i.i.i.i, %bb.ba ] ; 3 uses
  %i.sa = phi i32 [ %i.ri, %bb.az ], [ %.pre109.i.i.i.i131.i, %bb.ba ] ; 2 uses
  %i.sb = phi ptr [ %i.qp, %bb.az ], [ %.pre.i10.i.i.i130.i, %bb.ba ] ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.ai ; 5 uses
  %.idx.i.i.i.i107.i = shl nuw nsw i64 %.pre-phi.i.i.i.i106.i, 3 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 %.idx.i.i.i.i107.i ; 5 uses
  %gepdiff.i.i.i.i108.i = sub nsw i64 %.idx.i.i.i.i107.i, %i.ai ; 2 uses
  %i.se = ashr exact i64 %gepdiff.i.i.i.i108.i, 3 ; 3 uses
  %.not.i.i.i.i109.i = icmp ult i64 %i.se, %i.rl
  br i1 %.not.i.i.i.i109.i, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i105.i
  %.neg.i.i.i.i110.i = mul nsw i64 %i.rl, -8      ; 2 uses
  %i.sf = getelementptr inbounds i8, ptr %i.sd, i64 %.neg.i.i.i.i110.i ; 2 uses
  %i.sg = add nuw nsw i64 %.pre-phi.i.i.i.i106.i, %i.rl ; 2 uses
  %i.sh = load i32, ptr %i.l, align 4, !tbaa !482
  %i.si = zext i32 %i.sh to i64
  %i.sj = icmp samesign ugt i64 %i.sg, %i.si
  br i1 %i.sj, label %bb.bc, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i111.i

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.sg, i64 noundef 8) #22
  %.pre.i36.i.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre11.i.i.i.i.i120.i = zext i32 %.pre.i36.i.i.i.i.i to i64
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i111.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i111.i: ; preds = %bb.bc, %bb.bb
  %i.sk = phi ptr [ %i.sb, %bb.bb ], [ %.pre, %bb.bc ]
  %.pre-phi.i.i.i.i.i112.i = phi i64 [ %.pre-phi.i.i.i.i106.i, %bb.bb ], [ %.pre11.i.i.i.i.i120.i, %bb.bc ]
  %i.sl = phi i32 [ %i.sa, %bb.bb ], [ %.pre.i36.i.i.i.i.i, %bb.bc ]
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %.pre-phi.i.i.i.i.i112.i ; 2 uses
  %i.sn = add nuw nsw i64 %i.qo, 2305843009213693950
  %i.so = and i64 %i.sn, 2305843009213693951
  %i.sp = add nuw nsw i64 %i.qo, 7
  %xtraiter209 = and i64 %i.sp, 7                 ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol:                ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i111.i, %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.i115.i.prol = phi ptr [ %i.ss, %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol ], [ %i.sm, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i111.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i.prol = phi ptr [ %i.sr, %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol ], [ %i.sf, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i111.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol ], [ 0, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i111.i ]
  %i.sq = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i.prol, align 8, !tbaa !432
  store i64 %i.sq, ptr %.09.i.i.i.i.i.i.i.i.i115.i.prol, align 8, !tbaa !432
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i.prol, i64 8 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i115.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter209
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol, !llvm.loop !935

.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i111.i
  %.09.i.i.i.i.i.i.i.i.i115.i.unr = phi ptr [ %i.sm, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i111.i ], [ %i.ss, %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol ]
  %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i.unr = phi ptr [ %i.sf, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i111.i ], [ %i.sr, %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol ]
  %i.st = icmp samesign ult i64 %i.so, 7
  br i1 %i.st, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i117.i.loopexit, label %.lr.ph.i.i.i.i.i34.i.i.i.i.i

.lr.ph.i.i.i.i.i34.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i34.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i115.i = phi ptr [ %i.tr, %.lr.ph.i.i.i.i.i34.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.i115.i.unr, %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i = phi ptr [ %i.tq, %.lr.ph.i.i.i.i.i34.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i.unr, %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.su = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i, align 8, !tbaa !432
  store i64 %i.su, ptr %.09.i.i.i.i.i.i.i.i.i115.i, align 8, !tbaa !432
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i, i64 8
  %i.sw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i115.i, i64 8
  %i.sx = load i64, ptr %i.sv, align 8, !tbaa !432
  store i64 %i.sx, ptr %i.sw, align 8, !tbaa !432
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i, i64 16
  %i.sz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i115.i, i64 16
  %i.ta = load i64, ptr %i.sy, align 8, !tbaa !432
  store i64 %i.ta, ptr %i.sz, align 8, !tbaa !432
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i, i64 24
  %i.tc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i115.i, i64 24
  %i.td = load i64, ptr %i.tb, align 8, !tbaa !432
  store i64 %i.td, ptr %i.tc, align 8, !tbaa !432
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i, i64 32
  %i.tf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i115.i, i64 32
  %i.tg = load i64, ptr %i.te, align 8, !tbaa !432
  store i64 %i.tg, ptr %i.tf, align 8, !tbaa !432
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i, i64 40
  %i.ti = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i115.i, i64 40
  %i.tj = load i64, ptr %i.th, align 8, !tbaa !432
  store i64 %i.tj, ptr %i.ti, align 8, !tbaa !432
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i, i64 48
  %i.tl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i115.i, i64 48
  %i.tm = load i64, ptr %i.tk, align 8, !tbaa !432
  store i64 %i.tm, ptr %i.tl, align 8, !tbaa !432
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i, i64 56
  %i.to = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i115.i, i64 56
  %i.tp = load i64, ptr %i.tn, align 8, !tbaa !432
  store i64 %i.tp, ptr %i.to, align 8, !tbaa !432
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i116.i, i64 64 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i115.i, i64 64
  %.not.i.i.i.i.i35.i.i.i.i.i.7 = icmp eq ptr %i.tq, %i.sd
  br i1 %.not.i.i.i.i.i35.i.i.i.i.i.7, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i117.i.loopexit, label %.lr.ph.i.i.i.i.i34.i.i.i.i.i, !llvm.loop !4

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i117.i.loopexit: ; preds = %.lr.ph.i.i.i.i.i34.i.i.i.i.i, %.lr.ph.i.i.i.i.i34.i.i.i.i.i.prol.loopexit
  %i.ts = trunc nuw nsw i64 %i.rl to i32
  %i.tt = add i32 %i.sl, %i.ts
  store i32 %i.tt, ptr %i.e, align 8, !tbaa !458
  %i.tu = sub i64 %.neg.i.i.i.i110.i, %i.ai
  %gepdiff98.i.i.i.i.i = add i64 %.idx.i.i.i.i107.i, %i.tu ; 3 uses
  %i.tv = ashr exact i64 %gepdiff98.i.i.i.i.i, 3  ; 2 uses
  %i.tw = icmp sgt i64 %i.tv, 1
  br i1 %i.tw, label %bb.bd, label %bb.be, !prof !506

bb.bd:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i117.i.loopexit
  %i.tx = sub nsw i64 0, %i.tv
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.sd, i64 %i.tx
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ty, ptr nonnull align 8 %i.sc, i64 %gepdiff98.i.i.i.i.i, i1 false)
  br label %.lr.ph.i.i.i.i.i38.i.i.i.i.i.preheader

bb.be:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i117.i.loopexit
  %i.tz = icmp eq i64 %gepdiff98.i.i.i.i.i, 8
  br i1 %i.tz, label %bb.bf, label %.lr.ph.i.i.i.i.i38.i.i.i.i.i.preheader

bb.bf:                                            ; preds = %bb.be
  %i.ua = getelementptr inbounds i8, ptr %i.sd, i64 -8
  %i.ub = load i64, ptr %i.sc, align 8, !tbaa !432
  store i64 %i.ub, ptr %i.ua, align 8, !tbaa !432
  br label %.lr.ph.i.i.i.i.i38.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i38.i.i.i.i.i.preheader:           ; preds = %bb.bf, %bb.be, %bb.bd
  br label %.lr.ph.i.i.i.i.i38.i.i.i.i.i

.lr.ph.i.i.i.i.i38.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i38.i.i.i.i.i.preheader, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i42.i.i.i.i.i"
  %.05.i.i.i.i.i.i.i.i.i119.i = phi ptr [ %i.uh, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i42.i.i.i.i.i" ], [ %i.sc, %.lr.ph.i.i.i.i.i38.i.i.i.i.i.preheader ] ; 2 uses
  %.043.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ui, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i42.i.i.i.i.i" ], [ %i.rl, %.lr.ph.i.i.i.i.i38.i.i.i.i.i.preheader ] ; 2 uses
  %i.uc = phi i64 [ %i.ug, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i42.i.i.i.i.i" ], [ 1, %.lr.ph.i.i.i.i.i38.i.i.i.i.i.preheader ] ; 2 uses
  %i.ud = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %i.uc ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i40.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i41.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i40.i.i.i.i.i, align 8
  %i.ue = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i41.i.i.i.i.i to i1
  br i1 %i.ue, label %bb.bg, label %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i42.i.i.i.i.i"

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i.i38.i.i.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i42.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i38.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i43.i.i.i.i.i = load i64, ptr %i.ud, align 8
  %i.uf = add nsw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i43.i.i.i.i.i, %i.bd
  store i64 %i.uf, ptr %.05.i.i.i.i.i.i.i.i.i119.i, align 8, !tbaa !432
  %i.ug = add nuw nsw i64 %i.uc, 1
  %i.uh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i119.i, i64 8
  %i.ui = add nsw i64 %.043.i.i.i.i.i.i.i.i.i.i, -1
  %i.uj = icmp sgt i64 %.043.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.uj, label %.lr.ph.i.i.i.i.i38.i.i.i.i.i, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, !llvm.loop !936

bb.bh:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i105.i
  %i.uk = trunc nuw nsw i64 %i.rl to i32
  %i.ul = add i32 %i.sa, %i.uk                    ; 2 uses
  store i32 %i.ul, ptr %i.e, align 8, !tbaa !458
  %.not.i.i.i.i.i.i121.i = icmp eq i64 %i.ai, %.idx.i.i.i.i107.i
  br i1 %.not.i.i.i.i.i.i121.i, label %._crit_edge.i.i.i.i125.i, label %.lr.ph.i.i.i.i122.i

.lr.ph.i.i.i.i122.i:                              ; preds = %bb.bh
  %i.um = zext i32 %i.ul to i64
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %i.um
  %i.uo = sub nsw i64 0, %i.se
  %i.up = getelementptr inbounds [8 x i8], ptr %i.un, i64 %i.uo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.up, ptr nonnull align 8 %i.sc, i64 %gepdiff.i.i.i.i108.i, i1 false)
  br label %bb.bj

._crit_edge.i.i.i.i125.i:                         ; preds = %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i", %bb.bh
  %.lcssa.i.i.i.i126.i = phi i64 [ 1, %bb.bh ], [ %i.vc, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i" ] ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq i64 %.lcssa.i.i.i.i126.i, %i.qo
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i.i.i.i127.i

.lr.ph.i.i.i.i.i.i.i.i127.i:                      ; preds = %._crit_edge.i.i.i.i125.i, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i.i.i.i.i"
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.uv, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i.i.i.i.i" ], [ %i.sd, %._crit_edge.i.i.i.i125.i ] ; 2 uses
  %.val25.i.i.i.i.i.i.i.i.i = phi i64 [ %i.uu, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i.i.i.i.i" ], [ %.lcssa.i.i.i.i126.i, %._crit_edge.i.i.i.i125.i ] ; 2 uses
  %i.uq = and i64 %.val25.i.i.i.i.i.i.i.i.i, 4294967295
  %i.ur = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %i.uq ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8
  %i.us = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.us, label %bb.bi, label %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i.i.i.i.i"

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i127.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i127.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ur, align 8
  %i.ut = add nsw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bd
  store i64 %i.ut, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  %i.uu = add i64 %.val25.i.i.i.i.i.i.i.i.i, 1    ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i129.i = icmp eq i64 %i.uu, %i.qo
  br i1 %.not.i.i.i.i.i.i.i.i129.i, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i.i.i.i127.i, !llvm.loop !934

bb.bj:                                            ; preds = %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i", %.lr.ph.i.i.i.i122.i
  %.028104.i.i.i.i.i = phi ptr [ %i.sc, %.lr.ph.i.i.i.i122.i ], [ %i.vb, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i" ] ; 2 uses
  %.029103.i.i.i.i.i = phi i64 [ %i.se, %.lr.ph.i.i.i.i122.i ], [ %i.vd, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i" ]
  %i.uw = phi i64 [ 1, %.lr.ph.i.i.i.i122.i ], [ %i.vc, %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i" ] ; 2 uses
  %i.ux = and i64 %i.uw, 4294967295
  %i.uy = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %i.ux ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8
  %i.uz = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.uz, label %bb.bk, label %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i"

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i": ; preds = %bb.bj
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.uy, align 8
  %i.va = add nsw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %i.bd
  store i64 %i.va, ptr %.028104.i.i.i.i.i, align 8, !tbaa !432
  %i.vb = getelementptr inbounds nuw i8, ptr %.028104.i.i.i.i.i, i64 8
  %i.vc = add i64 %i.uw, 1                        ; 2 uses
  %i.vd = add i64 %.029103.i.i.i.i.i, -1          ; 2 uses
  %.not31.i.i.i.i124.i = icmp eq i64 %i.vd, 0
  br i1 %.not31.i.i.i.i124.i, label %._crit_edge.i.i.i.i125.i, label %bb.bj, !llvm.loop !937

bb.bl:                                            ; preds = %bb.bm, %.lr.ph.i.i.i98.preheader.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i98.preheader.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.qt, align 8
  %i.ve = add nsw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.bd
  store i64 %i.ve, ptr %i.qq, align 8, !tbaa !432
  %i.vf = getelementptr inbounds nuw i8, ptr %i.qq, i64 8 ; 2 uses
  %i.vg = icmp eq i32 %i.qn, 1
  br i1 %i.vg, label %._crit_edge.i.i.i100.i, label %.lr.ph.i.i.i98.1.i

.lr.ph.i.i.i98.1.i:                               ; preds = %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i"
  %i.vh = add nuw nsw i64 %.idx.i, 8
  %i.vi = icmp samesign eq i64 %i.vh, %i.ai
  br i1 %i.vi, label %bb.au, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i98.1.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 48
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.1.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1.i, align 8
  %i.vj = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.1.i to i1
  br i1 %i.vj, label %bb.bl, label %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.1.i"

"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.1.i": ; preds = %bb.bm
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ql, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.1.i = load i64, ptr %i.vk, align 8
  %i.vl = add nsw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.1.i, %i.bd
  store i64 %i.vl, ptr %i.vf, align 8, !tbaa !432
  %i.vm = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  br label %._crit_edge.i.i.i100.i

bb.bn:                                            ; preds = %bb.f
  %i.vn = add i8 %i.be, -5
  %spec.select.i.i.i.i.i.i.i.i136.i = icmp ult i8 %i.vn, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i136.i, label %.critedge44.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.vo = call noundef ptr @_ZNK4llvm22ConstantDataSequential14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #22
  %.val.i = load ptr, ptr %0, align 8, !tbaa !561
  %i.vp = getelementptr i8, ptr %.val.i, i64 200
  %.val.val.i = load ptr, ptr %i.vp, align 8, !tbaa !453
  %i.vq = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 296
  %i.vr = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.vq, ptr noundef %i.vo) #22 ; 2 uses
  %.fca.1.extract.i138.i = extractvalue { i64, i8 } %i.vr, 1
  %i.vs = trunc nuw i8 %.fca.1.extract.i138.i to i1
  br i1 %i.vs, label %bb.bp, label %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit140.i

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit140.i: ; preds = %bb.bo
  %.fca.0.extract.i139.i = extractvalue { i64, i8 } %i.vr, 0 ; 18 uses
  %i.vt = call noundef i64 @_ZNK4llvm22ConstantDataSequential14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #22 ; 6 uses
  %i.vu = load ptr, ptr %i.g, align 8, !tbaa !457 ; 3 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 %.idx.i ; 4 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 %i.ai ; 5 uses
  %i.vx = icmp eq i64 %i.vt, 0
  br i1 %i.vx, label %._crit_edge.i.i.i153.i, label %.lr.ph.i.i.i150.preheader.i

.lr.ph.i.i.i150.preheader.i:                      ; preds = %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit140.i
  %i.vy = call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 noundef 0) #22
  store ptr %i.vy, ptr %i.vv, align 8, !tbaa !472
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vv, i64 8 ; 2 uses
  %i.wa = icmp eq i64 %i.vt, 1
  br i1 %i.wa, label %._crit_edge.i.i.loopexit.i.i, label %.lr.ph.i.i.i150.1.i

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.ci, %.lr.ph.i.i.i150.preheader.i
  %.lcssa482.i = phi ptr [ %i.vz, %.lr.ph.i.i.i150.preheader.i ], [ %i.zm, %bb.ci ]
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !457
  br label %._crit_edge.i.i.i153.i

._crit_edge.i.i.i153.i:                           ; preds = %._crit_edge.i.i.loopexit.i.i, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit140.i
  %i.wb = phi ptr [ %i.vu, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit140.i ], [ %.pre.i.i, %._crit_edge.i.i.loopexit.i.i ] ; 3 uses
  %.0.lcssa.i.i.i154.i = phi ptr [ %i.vv, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit140.i ], [ %.lcssa482.i, %._crit_edge.i.i.loopexit.i.i ] ; 3 uses
  %i.wc = load i32, ptr %i.i, align 8, !tbaa !458
  %i.wd = zext i32 %i.wc to i64
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %i.wd
  %i.wf = ptrtoint ptr %i.we to i64
  %i.wg = ptrtoint ptr %i.vw to i64
  %i.wh = sub i64 %i.wf, %i.wg                    ; 4 uses
  %i.wi = icmp sgt i64 %i.wh, 8
  br i1 %i.wi, label %bb.bq, label %bb.br, !prof !506

bb.bq:                                            ; preds = %._crit_edge.i.i.i153.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i.i.i154.i, ptr nonnull align 8 %i.vw, i64 %i.wh, i1 false)
  %.pre.i.i.i.i156.i = load ptr, ptr %i.g, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i155.i

bb.br:                                            ; preds = %._crit_edge.i.i.i153.i
  %i.wj = icmp eq i64 %i.wh, 8
  br i1 %i.wj, label %bb.bs, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i155.i

bb.bs:                                            ; preds = %bb.br
  %i.wk = load ptr, ptr %i.vw, align 8, !tbaa !472
  store ptr %i.wk, ptr %.0.lcssa.i.i.i154.i, align 8, !tbaa !472
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i155.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i155.i: ; preds = %bb.bs, %bb.br, %bb.bq
  %i.wl = phi ptr [ %.pre.i.i.i.i156.i, %bb.bq ], [ %i.wb, %bb.br ], [ %i.wb, %bb.bs ]
  %i.wm = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i154.i, i64 %i.wh
  %i.wn = ptrtoint ptr %i.wm to i64
  %i.wo = ptrtoint ptr %i.wl to i64
  %i.wp = sub i64 %i.wn, %i.wo
  %i.wq = lshr exact i64 %i.wp, 3
  %i.wr = trunc i64 %i.wq to i32
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i.sink.split"

bb.bt:                                            ; preds = %.lr.ph.i.i.i150.1.i
  %i.ws = load ptr, ptr %i.g, align 8, !tbaa !457 ; 4 uses
  %i.wt = ptrtoint ptr %i.vw to i64
  %i.wu = ptrtoint ptr %i.ws to i64
  %i.wv = sub i64 %i.wt, %i.wu                    ; 4 uses
  %i.ww = load i32, ptr %i.i, align 8, !tbaa !458 ; 3 uses
  %i.wx = zext i32 %i.ww to i64                   ; 4 uses
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %i.wx
  %i.wz = icmp eq ptr %i.vw, %i.wy
  %i.xa = add i64 %i.vt, -1                       ; 13 uses
  %i.xb = add i64 %i.xa, %i.wx                    ; 3 uses
  %i.xc = load i32, ptr %i.j, align 4, !tbaa !482
  %i.xd = zext i32 %i.xc to i64
  %i.xe = icmp ugt i64 %i.xb, %i.xd               ; 2 uses
  br i1 %i.wz, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.xe, label %bb.bv, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i189.i

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull %i.k, i64 noundef %i.xb, i64 noundef 8) #22
  %.pre.i.i.i.i.i197.i = load i32, ptr %i.i, align 8, !tbaa !458 ; 2 uses
  %.pre25.i.i.i.i.i198.i = zext i32 %.pre.i.i.i.i.i197.i to i64
  %.pre98.pre.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i189.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i189.i: ; preds = %bb.bv, %bb.bu
  %.pre98.i.i.i.i190.i = phi ptr [ %i.ws, %bb.bu ], [ %.pre98.pre.i.i.i.i.i, %bb.bv ]
  %.pre-phi.i.i.i.i.i191.i = phi i64 [ %i.wx, %bb.bu ], [ %.pre25.i.i.i.i.i198.i, %bb.bv ]
  %i.xf = phi i32 [ %i.ww, %bb.bu ], [ %.pre.i.i.i.i.i197.i, %bb.bv ]
  %i.xg = icmp sgt i64 %i.xa, 0
  br i1 %i.xg, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i, label %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEvEEvT_SF_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i:     ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i189.i
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %.pre98.i.i.i.i190.i, i64 %.pre-phi.i.i.i.i.i191.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i194.i = phi ptr [ %i.xk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i ], [ %i.xh, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i195.i = phi i64 [ %i.xj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.xi = call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 noundef %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i195.i) #22
  store ptr %i.xi, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i194.i, align 8, !tbaa !472
  %i.xj = add nuw i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i195.i, 1 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i194.i, i64 8
  %exitcond501.not.i = icmp eq i64 %i.xj, %i.vt
  br i1 %exitcond501.not.i, label %"_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE18uninitialized_copyINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEPS2_EEvT_SG_T0_.exit.loopexit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i, !llvm.loop !938

"_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE18uninitialized_copyINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEPS2_EEvT_SG_T0_.exit.loopexit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i
  %.pre24.i.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !458
  br label %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEvEEvT_SF_.exit.i.i.i.i.i"

"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEvEEvT_SF_.exit.i.i.i.i.i": ; preds = %"_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE18uninitialized_copyINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEPS2_EEvT_SG_T0_.exit.loopexit.i.i.i.i.i.i", %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i189.i
  %i.xl = phi i32 [ %.pre24.i.i.i.i.i.i, %"_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE18uninitialized_copyINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEPS2_EEvT_SG_T0_.exit.loopexit.i.i.i.i.i.i" ], [ %i.xf, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i189.i ]
  %i.xm = trunc i64 %i.xa to i32
  %i.xn = add i32 %i.xl, %i.xm
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i.sink.split"

bb.bw:                                            ; preds = %bb.bt
  br i1 %i.xe, label %bb.bx, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i157.i

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull %i.k, i64 noundef %i.xb, i64 noundef 8) #22
  %.pre.i12.i.i.i187.i = load ptr, ptr %i.g, align 8, !tbaa !457
  %.pre95.i.i.i.i188.i = load i32, ptr %i.i, align 8, !tbaa !458 ; 2 uses
  %.pre100.i.i.i.i.i = zext i32 %.pre95.i.i.i.i188.i to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i157.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i157.i: ; preds = %bb.bx, %bb.bw
  %.pre-phi.i.i.i.i158.i = phi i64 [ %i.wx, %bb.bw ], [ %.pre100.i.i.i.i.i, %bb.bx ] ; 3 uses
  %i.xo = phi i32 [ %i.ww, %bb.bw ], [ %.pre95.i.i.i.i188.i, %bb.bx ] ; 2 uses
  %i.xp = phi ptr [ %i.ws, %bb.bw ], [ %.pre.i12.i.i.i187.i, %bb.bx ] ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 %i.wv ; 5 uses
  %.idx.i.i.i.i159.i = shl nuw nsw i64 %.pre-phi.i.i.i.i158.i, 3 ; 4 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 %.idx.i.i.i.i159.i ; 4 uses
  %gepdiff.i.i.i.i160.i = sub nsw i64 %.idx.i.i.i.i159.i, %i.wv ; 2 uses
  %i.xs = ashr exact i64 %gepdiff.i.i.i.i160.i, 3 ; 3 uses
  %.not.i.i.i.i161.i = icmp ult i64 %i.xs, %i.xa
  br i1 %.not.i.i.i.i161.i, label %bb.cg, label %bb.by

bb.by:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i157.i
  %.neg.i.i.i.i162.i = mul i64 %i.xa, -8          ; 2 uses
  %i.xt = getelementptr inbounds i8, ptr %i.xr, i64 %.neg.i.i.i.i162.i ; 2 uses
  %.idx84.neg.i.i.i.i.i = shl nuw nsw i64 %i.xa, 3
  %i.xu = add nsw i64 %.pre-phi.i.i.i.i158.i, %i.xa ; 2 uses
  %i.xv = load i32, ptr %i.j, align 4, !tbaa !482
  %i.xw = zext i32 %i.xv to i64
  %i.xx = icmp ugt i64 %i.xu, %i.xw
  br i1 %i.xx, label %bb.bz, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i163.i

bb.bz:                                            ; preds = %bb.by
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull %i.k, i64 noundef %i.xu, i64 noundef 8) #22
  %.pre.i38.i.i.i.i172.i = load i32, ptr %i.i, align 8, !tbaa !458 ; 2 uses
  %.pre12.i.i.i.i.i173.i = zext i32 %.pre.i38.i.i.i.i172.i to i64
  %.pre96.i.i.i.i174.i = load ptr, ptr %i.g, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i163.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i163.i: ; preds = %bb.bz, %bb.by
  %i.xy = phi ptr [ %i.xp, %bb.by ], [ %.pre96.i.i.i.i174.i, %bb.bz ]
  %.pre-phi.i37.i.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i158.i, %bb.by ], [ %.pre12.i.i.i.i.i173.i, %bb.bz ]
  %i.xz = phi i32 [ %i.xo, %bb.by ], [ %.pre.i38.i.i.i.i172.i, %bb.bz ] ; 2 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.xy, i64 %.pre-phi.i37.i.i.i.i.i ; 2 uses
  %i.yb = icmp sgt i64 %i.xa, 1
  br i1 %i.yb, label %bb.ca, label %bb.cb, !prof !506

bb.ca:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i163.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ya, ptr nonnull align 8 %i.xt, i64 %.idx84.neg.i.i.i.i.i, i1 false)
  %.pre11.i.i.i.i.i171.i = load i32, ptr %i.i, align 8, !tbaa !458
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i164.i

bb.cb:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i163.i
  %i.yc = icmp eq i64 %i.xa, 1
  br i1 %i.yc, label %bb.cc, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i164.i

bb.cc:                                            ; preds = %bb.cb
  %i.yd = load ptr, ptr %i.xt, align 8, !tbaa !472
  store ptr %i.yd, ptr %i.ya, align 8, !tbaa !472
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i164.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i164.i: ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.ye = phi i32 [ %.pre11.i.i.i.i.i171.i, %bb.ca ], [ %i.xz, %bb.cb ], [ %i.xz, %bb.cc ]
  %i.yf = trunc i64 %i.xa to i32
  %i.yg = add i32 %i.ye, %i.yf
  store i32 %i.yg, ptr %i.i, align 8, !tbaa !458
  %i.yh = sub i64 %.neg.i.i.i.i162.i, %i.wv
  %gepdiff87.i.i.i.i.i = add i64 %.idx.i.i.i.i159.i, %i.yh ; 3 uses
  %i.yi = ashr exact i64 %gepdiff87.i.i.i.i.i, 3  ; 2 uses
  %i.yj = icmp sgt i64 %i.yi, 1
  br i1 %i.yj, label %bb.cd, label %bb.ce, !prof !506

bb.cd:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i164.i
  %i.yk = sub nsw i64 0, %i.yi
  %i.yl = getelementptr inbounds [8 x i8], ptr %i.xr, i64 %i.yk
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yl, ptr align 8 %i.xq, i64 %gepdiff87.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i

bb.ce:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i164.i
  %i.ym = icmp eq i64 %gepdiff87.i.i.i.i.i, 8
  br i1 %i.ym, label %bb.cf, label %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i

bb.cf:                                            ; preds = %bb.ce
  %i.yn = getelementptr inbounds i8, ptr %i.xr, i64 -8
  %i.yo = load ptr, ptr %i.xq, align 8, !tbaa !472
  store ptr %i.yo, ptr %i.yn, align 8, !tbaa !472
  br label %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i

_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i: ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.yp = icmp sgt i64 %i.xa, 0
  br i1 %i.yp, label %.lr.ph.i.i.i.i.i.i.i.i.i166.i, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i"

.lr.ph.i.i.i.i.i.i.i.i.i166.i:                    ; preds = %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i, %.lr.ph.i.i.i.i.i.i.i.i.i166.i
  %.044.i.i.i.i.i.i.i.i.i168.i = phi ptr [ %i.ys, %.lr.ph.i.i.i.i.i.i.i.i.i166.i ], [ %i.xq, %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i ] ; 2 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i169.i = phi i64 [ %i.yr, %.lr.ph.i.i.i.i.i.i.i.i.i166.i ], [ 1, %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i ] ; 2 uses
  %i.yq = call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 noundef %.0.allc.03.i.i.i.i.i.i.i.i.i169.i) #22
  store ptr %i.yq, ptr %.044.i.i.i.i.i.i.i.i.i168.i, align 8, !tbaa !472
  %i.yr = add nuw i64 %.0.allc.03.i.i.i.i.i.i.i.i.i169.i, 1 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i168.i, i64 8
  %exitcond499.not.i = icmp eq i64 %i.yr, %i.vt
  br i1 %exitcond499.not.i, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i166.i, !llvm.loop !938

bb.cg:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i157.i
  %i.yt = trunc i64 %i.xa to i32
  %i.yu = add i32 %i.xo, %i.yt                    ; 2 uses
  store i32 %i.yu, ptr %i.i, align 8, !tbaa !458
  %.not.i.i.i.i.i.i175.i = icmp eq i64 %i.wv, %.idx.i.i.i.i159.i
  br i1 %.not.i.i.i.i.i.i175.i, label %._crit_edge.i.i.i.i180.i, label %.lr.ph.i.i.i.i176.i

.lr.ph.i.i.i.i176.i:                              ; preds = %bb.cg
  %i.yv = zext i32 %i.yu to i64
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.yv
  %i.yx = sub nsw i64 0, %i.xs
  %i.yy = getelementptr inbounds [8 x i8], ptr %i.yw, i64 %i.yx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yy, ptr align 8 %i.xq, i64 %gepdiff.i.i.i.i160.i, i1 false)
  br label %bb.ch

._crit_edge.loopexit.i.i.i.i179.i:                ; preds = %bb.ch
  %.pre101.i.i.i.i.i = sub i64 %i.vt, %i.zh
  br label %._crit_edge.i.i.i.i180.i

._crit_edge.i.i.i.i180.i:                         ; preds = %._crit_edge.loopexit.i.i.i.i179.i, %bb.cg
  %.pre-phi102.i.i.i.i.i = phi i64 [ %.pre101.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i179.i ], [ %i.xa, %bb.cg ] ; 2 uses
  %.lcssa.i.i.i.i181.i = phi i64 [ %i.zh, %._crit_edge.loopexit.i.i.i.i179.i ], [ 1, %bb.cg ] ; 2 uses
  %i.yz = icmp sgt i64 %.pre-phi102.i.i.i.i.i, 0
  br i1 %i.yz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.preheader.i, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.preheader.i:    ; preds = %._crit_edge.i.i.i.i180.i
  %i.za = add i64 %.lcssa.i.i.i.i181.i, %.pre-phi102.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.preheader.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i184.i = phi ptr [ %i.zd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i ], [ %i.xr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.preheader.i ] ; 2 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i185.i = phi i64 [ %i.zc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i ], [ %.lcssa.i.i.i.i181.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.preheader.i ] ; 2 uses
  %i.zb = call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 noundef %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i185.i) #22
  store ptr %i.zb, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i184.i, align 8, !tbaa !472
  %i.zc = add i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i185.i, 1 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i184.i, i64 8
  %exitcond500.not.i = icmp eq i64 %i.zc, %i.za
  br i1 %exitcond500.not.i, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i, !llvm.loop !938

bb.ch:                                            ; preds = %bb.ch, %.lr.ph.i.i.i.i176.i
  %.092.i.i.i.i.i = phi ptr [ %i.xq, %.lr.ph.i.i.i.i176.i ], [ %i.zg, %bb.ch ] ; 2 uses
  %.02891.i.i.i.i.i = phi i64 [ %i.xs, %.lr.ph.i.i.i.i176.i ], [ %i.zi, %bb.ch ]
  %i.ze = phi i64 [ 1, %.lr.ph.i.i.i.i176.i ], [ %i.zh, %bb.ch ] ; 2 uses
  %i.zf = call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 noundef %i.ze) #22
  store ptr %i.zf, ptr %.092.i.i.i.i.i, align 8, !tbaa !472
  %i.zg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8
  %i.zh = add i64 %i.ze, 1                        ; 3 uses
  %i.zi = add i64 %.02891.i.i.i.i.i, -1           ; 2 uses
  %.not32.i.i.i.i178.i = icmp eq i64 %i.zi, 0
  br i1 %.not32.i.i.i.i178.i, label %._crit_edge.loopexit.i.i.i.i179.i, label %bb.ch, !llvm.loop !939

.lr.ph.i.i.i150.1.i:                              ; preds = %.lr.ph.i.i.i150.preheader.i
  %i.zj = add nuw nsw i64 %.idx.i, 8
  %i.zk = icmp samesign eq i64 %i.zj, %i.ai
  br i1 %i.zk, label %bb.bt, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i.i.i150.1.i
  %i.zl = call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 noundef 1) #22
  store ptr %i.zl, ptr %i.vz, align 8, !tbaa !472
  %i.zm = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  br label %._crit_edge.i.i.loopexit.i.i

"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i.sink.split": ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i155.i, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEvEEvT_SF_.exit.i.i.i.i.i"
  %.sink146 = phi i32 [ %i.xn, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEvEEvT_SF_.exit.i.i.i.i.i" ], [ %i.wr, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i155.i ]
  store i32 %.sink146, ptr %i.i, align 8, !tbaa !458
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i"

"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i166.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i.sink.split", %._crit_edge.i.i.i.i180.i, %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i
  %i.zn = call noundef i64 @_ZNK4llvm22ConstantDataSequential14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #22 ; 12 uses
  %i.zo = load ptr, ptr %i.d, align 8, !tbaa !457 ; 6 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 %.idx.i ; 4 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.ai ; 2 uses
  %i.zr = icmp eq i64 %i.zn, 0
  br i1 %i.zr, label %._crit_edge.i.i.i217.i, label %.lr.ph.i.i.i213.preheader.i

.lr.ph.i.i.i213.preheader.i:                      ; preds = %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i"
  store i64 %i.bd, ptr %i.zp, align 8, !tbaa !432
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 8 ; 2 uses
  %i.zt = icmp eq i64 %i.zn, 1
  br i1 %i.zt, label %._crit_edge.i.i.i217.i, label %.lr.ph.i.i.i213.1.i

._crit_edge.i.i.i217.i:                           ; preds = %bb.cx, %.lr.ph.i.i.i213.preheader.i, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i"
  %.0.lcssa.i.i.i218.i = phi ptr [ %i.zp, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i" ], [ %i.zs, %.lr.ph.i.i.i213.preheader.i ], [ %i.agj, %bb.cx ] ; 3 uses
  %i.zu = load i32, ptr %i.e, align 8, !tbaa !458
  %i.zv = zext i32 %i.zu to i64
  %i.zw = sub nsw i64 %i.zv, %i.aj                ; 3 uses
  %gepdiff.i219.i = shl nsw i64 %i.zw, 3          ; 2 uses
  %i.zx = icmp sgt i64 %i.zw, 1
  br i1 %i.zx, label %bb.cj, label %bb.ck, !prof !506

bb.cj:                                            ; preds = %._crit_edge.i.i.i217.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i.i.i218.i, ptr nonnull align 8 %i.zq, i64 %gepdiff.i219.i, i1 false)
  %.pre.i.i.i.i221.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i220.i

bb.ck:                                            ; preds = %._crit_edge.i.i.i217.i
  %i.zy = icmp eq i64 %i.zw, 1
  br i1 %i.zy, label %bb.cl, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i220.i

bb.cl:                                            ; preds = %bb.ck
  %i.zz = load i64, ptr %i.zq, align 8, !tbaa !432
  store i64 %i.zz, ptr %.0.lcssa.i.i.i218.i, align 8, !tbaa !432
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i220.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i220.i: ; preds = %bb.cl, %bb.ck, %bb.cj
  %i.aaa = phi ptr [ %.pre.i.i.i.i221.i, %bb.cj ], [ %i.zo, %bb.ck ], [ %i.zo, %bb.cl ]
  %i.aab = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i218.i, i64 %gepdiff.i219.i
  %i.aac = ptrtoint ptr %i.aab to i64
  %i.aad = ptrtoint ptr %i.aaa to i64
  %i.aae = sub i64 %i.aac, %i.aad
  %i.aaf = lshr exact i64 %i.aae, 3
  %i.aag = trunc i64 %i.aaf to i32                ; 2 uses
  store i32 %i.aag, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

bb.cm:                                            ; preds = %.lr.ph.i.i.i213.1.i
  %i.aah = load i32, ptr %i.e, align 8, !tbaa !458 ; 3 uses
  %i.aai = zext i32 %i.aah to i64                 ; 3 uses
  %i.aaj = icmp samesign eq i64 %i.aj, %i.aai
  %i.aak = add i64 %i.zn, -1                      ; 10 uses
  %i.aal = add i64 %i.aak, %i.aai                 ; 3 uses
  %i.aam = load i32, ptr %i.l, align 4, !tbaa !482
  %i.aan = zext i32 %i.aam to i64
  %i.aao = icmp ugt i64 %i.aal, %i.aan            ; 2 uses
  br i1 %i.aaj, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.aao, label %bb.co, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i

bb.co:                                            ; preds = %bb.cn
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.aal, i64 noundef 8) #22
  %.pre.i.i.i.i.i274.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre25.i.i.i.i.i275.i = zext i32 %.pre.i.i.i.i.i274.i to i64
  %.pre107.pre.i.i.i.i276.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i:          ; preds = %bb.co, %bb.cn
  %.pre107.i.i.i.i266.i = phi ptr [ %i.zo, %bb.cn ], [ %.pre107.pre.i.i.i.i276.i, %bb.co ]
  %.pre-phi.i.i.i.i.i267.i = phi i64 [ %i.aj, %bb.cn ], [ %.pre25.i.i.i.i.i275.i, %bb.co ]
  %i.aap = phi i32 [ %i.aah, %bb.cn ], [ %.pre.i.i.i.i.i274.i, %bb.co ]
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %.pre107.i.i.i.i266.i, i64 %.pre-phi.i.i.i.i.i267.i ; 2 uses
  %i.aar = add i64 %i.zn, -1                      ; 2 uses
  %i.aas = add i64 %i.zn, -2
  %xtraiter244 = and i64 %i.aar, 3                ; 3 uses
  %i.aat = icmp ult i64 %i.aas, 3
  br i1 %i.aat, label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i.new

.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i.new:      ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i
  %unroll_iter248 = and i64 %i.aar, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i268.i

.lr.ph.i.i.i.i.i.i.i.i.i268.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i.new
  %.04.i.i.i.i.i.i.i.i.i269.i = phi ptr [ %i.aaq, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i.new ], [ %i.abj, %.lr.ph.i.i.i.i.i.i.i.i.i268.i ] ; 5 uses
  %.val13.i.i.i.i.i.i.i.i.i270.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i.new ], [ %i.abi, %.lr.ph.i.i.i.i.i.i.i.i.i268.i ] ; 5 uses
  %niter249 = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i.new ], [ %niter249.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i268.i ]
  %i.aau = mul nsw i64 %.val13.i.i.i.i.i.i.i.i.i270.i, %.fca.0.extract.i139.i
  %i.aav = add nsw i64 %i.aau, %i.bd
  store i64 %i.aav, ptr %.04.i.i.i.i.i.i.i.i.i269.i, align 8, !tbaa !432
  %i.aaw = add nuw nsw i64 %.val13.i.i.i.i.i.i.i.i.i270.i, 1
  %i.aax = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i269.i, i64 8
  %i.aay = mul nsw i64 %i.aaw, %.fca.0.extract.i139.i
  %i.aaz = add nsw i64 %i.aay, %i.bd
  store i64 %i.aaz, ptr %i.aax, align 8, !tbaa !432
  %i.aba = add nuw nsw i64 %.val13.i.i.i.i.i.i.i.i.i270.i, 2
  %i.abb = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i269.i, i64 16
  %i.abc = mul nsw i64 %i.aba, %.fca.0.extract.i139.i
  %i.abd = add nsw i64 %i.abc, %i.bd
  store i64 %i.abd, ptr %i.abb, align 8, !tbaa !432
  %i.abe = add i64 %.val13.i.i.i.i.i.i.i.i.i270.i, 3
  %i.abf = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i269.i, i64 24
  %i.abg = mul nsw i64 %i.abe, %.fca.0.extract.i139.i
  %i.abh = add nsw i64 %i.abg, %i.bd
  store i64 %i.abh, ptr %i.abf, align 8, !tbaa !432
  %i.abi = add i64 %.val13.i.i.i.i.i.i.i.i.i270.i, 4 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i269.i, i64 32 ; 2 uses
  %niter249.next.3 = add i64 %niter249, 4         ; 2 uses
  %niter249.ncmp.3 = icmp eq i64 %niter249.next.3, %unroll_iter248
  br i1 %niter249.ncmp.3, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa", label %.lr.ph.i.i.i.i.i.i.i.i.i268.i, !llvm.loop !940

"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i
  %lcmp.mod246.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod246.not, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader:     ; preds = %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa", %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i
  %.04.i.i.i.i.i.i.i.i.i269.i.epil.init = phi ptr [ %i.aaq, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i ], [ %i.abj, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa" ]
  %.val13.i.i.i.i.i.i.i.i.i270.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i ], [ %i.abi, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa" ]
  %lcmp.mod247 = icmp ne i64 %xtraiter244, 0
  call void @llvm.assume(i1 %lcmp.mod247)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader
  %.04.i.i.i.i.i.i.i.i.i269.i.epil = phi ptr [ %i.abn, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil ], [ %.04.i.i.i.i.i.i.i.i.i269.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader ] ; 2 uses
  %.val13.i.i.i.i.i.i.i.i.i270.i.epil = phi i64 [ %i.abm, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil ], [ %.val13.i.i.i.i.i.i.i.i.i270.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader ] ; 2 uses
  %epil.iter245 = phi i64 [ %epil.iter245.next, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader ]
  %i.abk = mul nsw i64 %.val13.i.i.i.i.i.i.i.i.i270.i.epil, %.fca.0.extract.i139.i
  %i.abl = add nsw i64 %i.abk, %i.bd
  store i64 %i.abl, ptr %.04.i.i.i.i.i.i.i.i.i269.i.epil, align 8, !tbaa !432
  %i.abm = add i64 %.val13.i.i.i.i.i.i.i.i.i270.i.epil, 1
  %i.abn = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i269.i.epil, i64 8
  %epil.iter245.next = add i64 %epil.iter245, 1   ; 2 uses
  %epil.iter245.cmp.not = icmp eq i64 %epil.iter245.next, %xtraiter244
  br i1 %epil.iter245.cmp.not, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil, !llvm.loop !941

"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa"
  %i.abo = trunc i64 %i.aak to i32
  %i.abp = add i32 %i.aap, %i.abo                 ; 2 uses
  store i32 %i.abp, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

bb.cp:                                            ; preds = %bb.cm
  br i1 %i.aao, label %bb.cq, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i222.i

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.aal, i64 noundef 8) #22
  %.pre.i10.i.i.i262.i = load ptr, ptr %i.d, align 8, !tbaa !457
  %.pre105.i.i.i.i263.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre109.i.i.i.i264.i = zext i32 %.pre105.i.i.i.i263.i to i64
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i222.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i222.i: ; preds = %bb.cq, %bb.cp
  %.pre-phi.i.i.i.i223.i = phi i64 [ %i.aai, %bb.cp ], [ %.pre109.i.i.i.i264.i, %bb.cq ] ; 3 uses
  %i.abq = phi i32 [ %i.aah, %bb.cp ], [ %.pre105.i.i.i.i263.i, %bb.cq ] ; 2 uses
  %i.abr = phi ptr [ %i.zo, %bb.cp ], [ %.pre.i10.i.i.i262.i, %bb.cq ] ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 %i.ai ; 8 uses
  %.idx.i.i.i.i224.i = shl nuw nsw i64 %.pre-phi.i.i.i.i223.i, 3 ; 4 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 %.idx.i.i.i.i224.i ; 6 uses
  %gepdiff.i.i.i.i225.i = sub nsw i64 %.idx.i.i.i.i224.i, %i.ai ; 2 uses
  %i.abu = ashr exact i64 %gepdiff.i.i.i.i225.i, 3 ; 7 uses
  %.not.i.i.i.i226.i = icmp ult i64 %i.abu, %i.aak
  br i1 %.not.i.i.i.i226.i, label %bb.cw, label %bb.cr

bb.cr:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i222.i
  %.neg.i.i.i.i227.i = mul i64 %i.aak, -8         ; 3 uses
  %i.abv = getelementptr inbounds i8, ptr %i.abt, i64 %.neg.i.i.i.i227.i ; 2 uses
  %i.abw = add nsw i64 %.pre-phi.i.i.i.i223.i, %i.aak ; 2 uses
  %i.abx = load i32, ptr %i.l, align 4, !tbaa !482
  %i.aby = zext i32 %i.abx to i64
  %i.abz = icmp ugt i64 %i.abw, %i.aby
  br i1 %i.abz, label %bb.cs, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i228.i

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.abw, i64 noundef 8) #22
  %.pre.i38.i.i.i.i244.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre11.i.i.i.i.i245.i = zext i32 %.pre.i38.i.i.i.i244.i to i64
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i228.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i228.i: ; preds = %bb.cs, %bb.cr
  %.pre-phi.i34.i.i.i.i229.i = phi i64 [ %.pre-phi.i.i.i.i223.i, %bb.cr ], [ %.pre11.i.i.i.i.i245.i, %bb.cs ]
  %i.aca = phi i32 [ %i.abq, %bb.cr ], [ %.pre.i38.i.i.i.i244.i, %bb.cs ]
  %.not7.i.i.i.i.i.i.i.i.i230.i = icmp eq i64 %.neg.i.i.i.i227.i, 0
  br i1 %.not7.i.i.i.i.i.i.i.i.i230.i, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i236.i, label %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i

.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i:        ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i228.i
  %i.acb = load ptr, ptr %i.d, align 8, !tbaa !457
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.acb, i64 %.pre-phi.i34.i.i.i.i229.i ; 2 uses
  %i.acd = add i64 %i.zn, 2305843009213693950
  %i.ace = and i64 %i.acd, 2305843009213693951
  %i.acf = add i64 %i.zn, 7
  %xtraiter230 = and i64 %i.acf, 7                ; 2 uses
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol

.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol:             ; preds = %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol
  %.09.i.i.i.i.i.i.i.i.i233.i.prol = phi ptr [ %i.aci, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol ], [ %i.acc, %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i.prol = phi ptr [ %i.ach, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol ], [ %i.abv, %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i ] ; 2 uses
  %prol.iter232 = phi i64 [ %prol.iter232.next, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i ]
  %i.acg = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i.prol, align 8, !tbaa !432
  store i64 %i.acg, ptr %.09.i.i.i.i.i.i.i.i.i233.i.prol, align 8, !tbaa !432
  %i.ach = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i.prol, i64 8 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i.prol, i64 8 ; 2 uses
  %prol.iter232.next = add i64 %prol.iter232, 1   ; 2 uses
  %prol.iter232.cmp.not = icmp eq i64 %prol.iter232.next, %xtraiter230
  br i1 %prol.iter232.cmp.not, label %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol, !llvm.loop !942

.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol, %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i
  %.09.i.i.i.i.i.i.i.i.i233.i.unr = phi ptr [ %i.acc, %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i ], [ %i.aci, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol ]
  %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i.unr = phi ptr [ %i.abv, %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i ], [ %i.ach, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol ]
  %i.acj = icmp samesign ult i64 %i.ace, 7
  br i1 %i.acj, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i236.i, label %.lr.ph.i.i.i.i.i36.i.i.i.i232.i

.lr.ph.i.i.i.i.i36.i.i.i.i232.i:                  ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i
  %.09.i.i.i.i.i.i.i.i.i233.i = phi ptr [ %i.adh, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i ], [ %.09.i.i.i.i.i.i.i.i.i233.i.unr, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i = phi ptr [ %i.adg, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i.unr, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit ] ; 9 uses
  %i.ack = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, align 8, !tbaa !432
  store i64 %i.ack, ptr %.09.i.i.i.i.i.i.i.i.i233.i, align 8, !tbaa !432
  %i.acl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 8
  %i.acm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 8
  %i.acn = load i64, ptr %i.acl, align 8, !tbaa !432
  store i64 %i.acn, ptr %i.acm, align 8, !tbaa !432
  %i.aco = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 16
  %i.acp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 16
  %i.acq = load i64, ptr %i.aco, align 8, !tbaa !432
  store i64 %i.acq, ptr %i.acp, align 8, !tbaa !432
  %i.acr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 24
  %i.acs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 24
  %i.act = load i64, ptr %i.acr, align 8, !tbaa !432
  store i64 %i.act, ptr %i.acs, align 8, !tbaa !432
  %i.acu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 32
  %i.acv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 32
  %i.acw = load i64, ptr %i.acu, align 8, !tbaa !432
  store i64 %i.acw, ptr %i.acv, align 8, !tbaa !432
  %i.acx = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 40
  %i.acy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 40
  %i.acz = load i64, ptr %i.acx, align 8, !tbaa !432
  store i64 %i.acz, ptr %i.acy, align 8, !tbaa !432
  %i.ada = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 48
  %i.adb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 48
  %i.adc = load i64, ptr %i.ada, align 8, !tbaa !432
  store i64 %i.adc, ptr %i.adb, align 8, !tbaa !432
  %i.add = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 56
  %i.ade = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 56
  %i.adf = load i64, ptr %i.add, align 8, !tbaa !432
  store i64 %i.adf, ptr %i.ade, align 8, !tbaa !432
  %i.adg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 64 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 64
  %.not.i.i.i.i.i37.i.i.i.i235.i.7 = icmp eq ptr %i.adg, %i.abt
  br i1 %.not.i.i.i.i.i37.i.i.i.i235.i.7, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i236.i, label %.lr.ph.i.i.i.i.i36.i.i.i.i232.i, !llvm.loop !4

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i236.i: ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i228.i
  %i.adi = trunc i64 %i.aak to i32
  %i.adj = add i32 %i.aca, %i.adi
  store i32 %i.adj, ptr %i.e, align 8, !tbaa !458
  %i.adk = sub i64 %.neg.i.i.i.i227.i, %i.ai
  %gepdiff97.i.i.i.i237.i = add i64 %.idx.i.i.i.i224.i, %i.adk ; 3 uses
  %i.adl = ashr exact i64 %gepdiff97.i.i.i.i237.i, 3 ; 2 uses
  %i.adm = icmp sgt i64 %i.adl, 1
  br i1 %i.adm, label %bb.ct, label %bb.cu, !prof !506

bb.ct:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i236.i
  %i.adn = sub nsw i64 0, %i.adl
  %i.ado = getelementptr inbounds [8 x i8], ptr %i.abt, i64 %i.adn
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ado, ptr nonnull align 8 %i.abs, i64 %gepdiff97.i.i.i.i237.i, i1 false)
  br label %_ZSt13move_backwardIPN5clang9CharUnitsES2_ET0_T_S4_S3_.exit.i.i.i.i238.i

bb.cu:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i236.i
  %i.adp = icmp eq i64 %gepdiff97.i.i.i.i237.i, 8
  br i1 %i.adp, label %bb.cv, label %_ZSt13move_backwardIPN5clang9CharUnitsES2_ET0_T_S4_S3_.exit.i.i.i.i238.i

bb.cv:                                            ; preds = %bb.cu
  %i.adq = getelementptr inbounds i8, ptr %i.abt, i64 -8
  %i.adr = load i64, ptr %i.abs, align 8, !tbaa !432
  store i64 %i.adr, ptr %i.adq, align 8, !tbaa !432
  br label %_ZSt13move_backwardIPN5clang9CharUnitsES2_ET0_T_S4_S3_.exit.i.i.i.i238.i

_ZSt13move_backwardIPN5clang9CharUnitsES2_ET0_T_S4_S3_.exit.i.i.i.i238.i: ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.ads = icmp sgt i64 %i.aak, 0
  br i1 %i.ads, label %.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split

.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader:        ; preds = %_ZSt13move_backwardIPN5clang9CharUnitsES2_ET0_T_S4_S3_.exit.i.i.i.i238.i
  %i.adt = add i64 %i.zn, -2
  %xtraiter233 = and i64 %i.aak, 3                ; 3 uses
  %i.adu = icmp ult i64 %i.adt, 3
  br i1 %i.adu, label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader.new

.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader.new:    ; preds = %.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader
  %unroll_iter239 = and i64 %i.aak, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i40.i.i.i.i239.i

.lr.ph.i.i.i.i.i40.i.i.i.i239.i:                  ; preds = %.lr.ph.i.i.i.i.i40.i.i.i.i239.i, %.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader.new
  %.02.i.i.i.i.i.i.i.i.i240.i = phi ptr [ %i.abs, %.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader.new ], [ %i.ael, %.lr.ph.i.i.i.i.i40.i.i.i.i239.i ] ; 5 uses
  %i.adv = phi i64 [ 1, %.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader.new ], [ %i.aek, %.lr.ph.i.i.i.i.i40.i.i.i.i239.i ] ; 5 uses
  %niter240 = phi i64 [ 0, %.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader.new ], [ %niter240.next.3, %.lr.ph.i.i.i.i.i40.i.i.i.i239.i ]
  %i.adw = mul nsw i64 %i.adv, %.fca.0.extract.i139.i
  %i.adx = add nsw i64 %i.adw, %i.bd
  store i64 %i.adx, ptr %.02.i.i.i.i.i.i.i.i.i240.i, align 8, !tbaa !432
  %i.ady = add nuw nsw i64 %i.adv, 1
  %i.adz = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i.i.i.i.i240.i, i64 8
  %i.aea = mul nsw i64 %i.ady, %.fca.0.extract.i139.i
  %i.aeb = add nsw i64 %i.aea, %i.bd
  store i64 %i.aeb, ptr %i.adz, align 8, !tbaa !432
  %i.aec = add nuw nsw i64 %i.adv, 2
  %i.aed = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i.i.i.i.i240.i, i64 16
  %i.aee = mul nsw i64 %i.aec, %.fca.0.extract.i139.i
  %i.aef = add nsw i64 %i.aee, %i.bd
  store i64 %i.aef, ptr %i.aed, align 8, !tbaa !432
  %i.aeg = add nuw i64 %i.adv, 3
  %i.aeh = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i.i.i.i.i240.i, i64 24
  %i.aei = mul nsw i64 %i.aeg, %.fca.0.extract.i139.i
  %i.aej = add nsw i64 %i.aei, %i.bd
  store i64 %i.aej, ptr %i.aeh, align 8, !tbaa !432
  %i.aek = add nuw i64 %i.adv, 4                  ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i.i.i.i.i240.i, i64 32 ; 2 uses
  %niter240.next.3 = add i64 %niter240, 4         ; 2 uses
  %niter240.ncmp.3 = icmp eq i64 %niter240.next.3, %unroll_iter239
  br i1 %niter240.ncmp.3, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split.loopexit186.unr-lcssa, label %.lr.ph.i.i.i.i.i40.i.i.i.i239.i, !llvm.loop !943

bb.cw:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i222.i
  %i.aem = trunc i64 %i.aak to i32
  %i.aen = add i32 %i.abq, %i.aem                 ; 2 uses
  store i32 %i.aen, ptr %i.e, align 8, !tbaa !458
  %.not.i.i.i.i.i.i246.i = icmp eq i64 %i.ai, %.idx.i.i.i.i224.i
  br i1 %.not.i.i.i.i.i.i246.i, label %._crit_edge.i.i.i.i253.i, label %.lr.ph.i.i.i.i247.i

.lr.ph.i.i.i.i247.i:                              ; preds = %bb.cw
  %i.aeo = zext i32 %i.aen to i64
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %i.aeo
  %i.aeq = sub nsw i64 0, %i.abu
  %i.aer = getelementptr inbounds [8 x i8], ptr %i.aep, i64 %i.aeq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aer, ptr nonnull align 8 %i.abs, i64 %gepdiff.i.i.i.i225.i, i1 false)
  %min.iters.check = icmp ult i64 %i.abu, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i247.i
  %n.vec = and i64 %i.abu, -4                     ; 4 uses
  %i.aes = shl nsw i64 %n.vec, 3
  %i.aet = getelementptr i8, ptr %i.abs, i64 %i.aes
  %i.aeu = and i64 %i.abu, 3
  %i.aev = or disjoint i64 %n.vec, 1              ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.fca.0.extract.i139.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert158 = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %broadcast.splat159 = shufflevector <2 x i64> %broadcast.splatinsert158, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i64> %vec.ind, splat (i64 2)
  %i.aew = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.abs, i64 %i.aew ; 2 uses
  %i.aex = mul nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.aey = mul nsw <2 x i64> %step.add, %broadcast.splat
  %i.aez = add nsw <2 x i64> %i.aex, %broadcast.splat159
  %i.afa = add nsw <2 x i64> %i.aey, %broadcast.splat159
  %i.afb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.aez, ptr %next.gep, align 8, !tbaa !432
  store <2 x i64> %i.afa, ptr %i.afb, align 8, !tbaa !432
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.afc = icmp eq i64 %index.next, %n.vec
  br i1 %i.afc, label %middle.block, label %vector.body, !llvm.loop !944

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abu, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i253.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i247.i, %middle.block
  %.028102.i.i.i.i248.i.ph = phi ptr [ %i.abs, %.lr.ph.i.i.i.i247.i ], [ %i.aet, %middle.block ]
  %.029101.i.i.i.i249.i.ph = phi i64 [ %i.abu, %.lr.ph.i.i.i.i247.i ], [ %i.aeu, %middle.block ]
  %.ph = phi i64 [ 1, %.lr.ph.i.i.i.i247.i ], [ %i.aev, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i.i.i253.i:                         ; preds = %scalar.ph, %middle.block, %bb.cw
  %.lcssa.i.i.i.i254.i = phi i64 [ 1, %bb.cw ], [ %i.aev, %middle.block ], [ %i.age, %scalar.ph ] ; 5 uses
  %.not2.i.i.i.i.i.i.i.i255.i = icmp eq i64 %.lcssa.i.i.i.i254.i, %i.zn
  br i1 %.not2.i.i.i.i.i.i.i.i255.i, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i.i.i.i256.i.preheader

.lr.ph.i.i.i.i.i.i.i.i256.i.preheader:            ; preds = %._crit_edge.i.i.i.i253.i
  %i.afd = sub i64 %i.zn, %.lcssa.i.i.i.i254.i
  %xtraiter241 = and i64 %i.afd, 3                ; 2 uses
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.lr.ph.i.i.i.i.i.i.i.i256.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i256.i.prol

.lr.ph.i.i.i.i.i.i.i.i256.i.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i256.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i256.i.prol
  %.04.i.i.i.i.i.i.i.i257.i.prol = phi ptr [ %i.afh, %.lr.ph.i.i.i.i.i.i.i.i256.i.prol ], [ %i.abt, %.lr.ph.i.i.i.i.i.i.i.i256.i.preheader ] ; 2 uses
  %.val13.i.i.i.i.i.i.i.i258.i.prol = phi i64 [ %i.afg, %.lr.ph.i.i.i.i.i.i.i.i256.i.prol ], [ %.lcssa.i.i.i.i254.i, %.lr.ph.i.i.i.i.i.i.i.i256.i.preheader ] ; 2 uses
  %prol.iter243 = phi i64 [ %prol.iter243.next, %.lr.ph.i.i.i.i.i.i.i.i256.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i256.i.preheader ]
  %i.afe = mul nsw i64 %.val13.i.i.i.i.i.i.i.i258.i.prol, %.fca.0.extract.i139.i
  %i.aff = add nsw i64 %i.afe, %i.bd
  store i64 %i.aff, ptr %.04.i.i.i.i.i.i.i.i257.i.prol, align 8, !tbaa !432
  %i.afg = add i64 %.val13.i.i.i.i.i.i.i.i258.i.prol, 1 ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i257.i.prol, i64 8 ; 2 uses
  %prol.iter243.next = add i64 %prol.iter243, 1   ; 2 uses
  %prol.iter243.cmp.not = icmp eq i64 %prol.iter243.next, %xtraiter241
  br i1 %prol.iter243.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i256.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i256.i.prol, !llvm.loop !945

.lr.ph.i.i.i.i.i.i.i.i256.i.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i256.i.prol, %.lr.ph.i.i.i.i.i.i.i.i256.i.preheader
  %.04.i.i.i.i.i.i.i.i257.i.unr = phi ptr [ %i.abt, %.lr.ph.i.i.i.i.i.i.i.i256.i.preheader ], [ %i.afh, %.lr.ph.i.i.i.i.i.i.i.i256.i.prol ]
  %.val13.i.i.i.i.i.i.i.i258.i.unr = phi i64 [ %.lcssa.i.i.i.i254.i, %.lr.ph.i.i.i.i.i.i.i.i256.i.preheader ], [ %i.afg, %.lr.ph.i.i.i.i.i.i.i.i256.i.prol ]
  %i.afi = sub i64 %.lcssa.i.i.i.i254.i, %i.zn
  %i.afj = icmp ugt i64 %i.afi, -4
  br i1 %i.afj, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i.i.i.i256.i

.lr.ph.i.i.i.i.i.i.i.i256.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i256.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i256.i
  %.04.i.i.i.i.i.i.i.i257.i = phi ptr [ %i.afz, %.lr.ph.i.i.i.i.i.i.i.i256.i ], [ %.04.i.i.i.i.i.i.i.i257.i.unr, %.lr.ph.i.i.i.i.i.i.i.i256.i.prol.loopexit ] ; 5 uses
  %.val13.i.i.i.i.i.i.i.i258.i = phi i64 [ %i.afy, %.lr.ph.i.i.i.i.i.i.i.i256.i ], [ %.val13.i.i.i.i.i.i.i.i258.i.unr, %.lr.ph.i.i.i.i.i.i.i.i256.i.prol.loopexit ] ; 5 uses
  %i.afk = mul nsw i64 %.val13.i.i.i.i.i.i.i.i258.i, %.fca.0.extract.i139.i
  %i.afl = add nsw i64 %i.afk, %i.bd
  store i64 %i.afl, ptr %.04.i.i.i.i.i.i.i.i257.i, align 8, !tbaa !432
  %i.afm = add i64 %.val13.i.i.i.i.i.i.i.i258.i, 1
  %i.afn = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i257.i, i64 8
  %i.afo = mul nsw i64 %i.afm, %.fca.0.extract.i139.i
  %i.afp = add nsw i64 %i.afo, %i.bd
  store i64 %i.afp, ptr %i.afn, align 8, !tbaa !432
  %i.afq = add i64 %.val13.i.i.i.i.i.i.i.i258.i, 2
  %i.afr = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i257.i, i64 16
  %i.afs = mul nsw i64 %i.afq, %.fca.0.extract.i139.i
  %i.aft = add nsw i64 %i.afs, %i.bd
  store i64 %i.aft, ptr %i.afr, align 8, !tbaa !432
  %i.afu = add i64 %.val13.i.i.i.i.i.i.i.i258.i, 3
  %i.afv = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i257.i, i64 24
  %i.afw = mul nsw i64 %i.afu, %.fca.0.extract.i139.i
  %i.afx = add nsw i64 %i.afw, %i.bd
  store i64 %i.afx, ptr %i.afv, align 8, !tbaa !432
  %i.afy = add i64 %.val13.i.i.i.i.i.i.i.i258.i, 4 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i257.i, i64 32
  %.not.i.i.i.i.i.i.i.i261.i.3 = icmp eq i64 %i.afy, %i.zn
  br i1 %.not.i.i.i.i.i.i.i.i261.i.3, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i.i.i.i256.i, !llvm.loop !940

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.028102.i.i.i.i248.i = phi ptr [ %i.agd, %scalar.ph ], [ %.028102.i.i.i.i248.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.029101.i.i.i.i249.i = phi i64 [ %i.agf, %scalar.ph ], [ %.029101.i.i.i.i249.i.ph, %scalar.ph.preheader ]
  %i.aga = phi i64 [ %i.age, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.agb = mul nsw i64 %i.aga, %.fca.0.extract.i139.i
  %i.agc = add nsw i64 %i.agb, %i.bd
  store i64 %i.agc, ptr %.028102.i.i.i.i248.i, align 8, !tbaa !432
  %i.agd = getelementptr inbounds nuw i8, ptr %.028102.i.i.i.i248.i, i64 8
  %i.age = add i64 %i.aga, 1                      ; 2 uses
  %i.agf = add i64 %.029101.i.i.i.i249.i, -1      ; 2 uses
  %.not31.i.i.i.i252.i = icmp eq i64 %i.agf, 0
  br i1 %.not31.i.i.i.i252.i, label %._crit_edge.i.i.i.i253.i, label %scalar.ph, !llvm.loop !946

.lr.ph.i.i.i213.1.i:                              ; preds = %.lr.ph.i.i.i213.preheader.i
  %i.agg = add nuw nsw i64 %.idx.i, 8
  %i.agh = icmp samesign eq i64 %i.agg, %i.ai
  br i1 %i.agh, label %bb.cm, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i.i.i213.1.i
  %i.agi = add nsw i64 %.fca.0.extract.i139.i, %i.bd
  store i64 %i.agi, ptr %i.zs, align 8, !tbaa !432
  %i.agj = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  br label %._crit_edge.i.i.i217.i

.critedge44.i:                                    ; preds = %bb.bn
  %i.agk = icmp eq i8 %i.be, 2
  br i1 %i.agk, label %bb.cy, label %bb.dh

bb.cy:                                            ; preds = %.critedge44.i
  %.val46.i = load ptr, ptr %0, align 8, !tbaa !561
  %i.agl = getelementptr i8, ptr %i.ba, i64 8
  %.val47.i = load ptr, ptr %i.agl, align 8, !tbaa !476
  %i.agm = getelementptr i8, ptr %.val46.i, i64 200
  %.val46.val.i = load ptr, ptr %i.agm, align 8, !tbaa !453
  %i.agn = getelementptr inbounds nuw i8, ptr %.val46.val.i, i64 296
  %i.ago = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.agn, ptr noundef %.val47.i) #22 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { i64, i8 } %i.ago, 1
  %i.agp = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.agp, label %bb.cz, label %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit.i

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit.i: ; preds = %bb.cy
  %.fca.0.extract.i.i.i = extractvalue { i64, i8 } %i.ago, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.agq = sub nsw i64 %1, %i.bd
  %.val59.i = load ptr, ptr %0, align 8, !tbaa !561
  %i.agr = getelementptr i8, ptr %.val59.i, i64 80
  %.val59.val.i = load ptr, ptr %i.agr, align 8, !tbaa !601
  %i.ags = call noundef ptr @_ZN4llvm9ArrayType3getEPNS_4TypeEm(ptr noundef %.val59.val.i, i64 noundef %i.agq) #22
  %i.agt = call noundef ptr @_ZN4llvm21ConstantAggregateZero3getEPNS_4TypeE(ptr noundef %i.ags) #22 ; 2 uses
  store ptr %i.agt, ptr %i.a, align 8, !tbaa !472
  %i.agu = sub i64 %i.bd, %1
  %i.agv = add i64 %i.agu, %.fca.0.extract.i.i.i
  %.val58.i = load ptr, ptr %0, align 8, !tbaa !561
  %i.agw = getelementptr i8, ptr %.val58.i, i64 80
  %.val58.val.i = load ptr, ptr %i.agw, align 8, !tbaa !601
  %i.agx = call noundef ptr @_ZN4llvm9ArrayType3getEPNS_4TypeEm(ptr noundef %.val58.val.i, i64 noundef %i.agv) #22
  %i.agy = call noundef ptr @_ZN4llvm21ConstantAggregateZero3getEPNS_4TypeE(ptr noundef %i.agx) #22 ; 3 uses
  store ptr %i.agy, ptr %i.n, align 8, !tbaa !472
  %i.agz = load ptr, ptr %i.g, align 8, !tbaa !457 ; 4 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 %.idx.i ; 3 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 %i.ai ; 2 uses
  store ptr %i.agt, ptr %i.aha, align 8, !tbaa !472
  %i.ahc = add nuw nsw i64 %.idx.i, 8
  %i.ahd = icmp samesign eq i64 %i.ahc, %i.ai
  br i1 %i.ahd, label %bb.dg, label %._crit_edge.i.i.i278.i

bb.da:                                            ; preds = %._crit_edge.i.i.i278.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ahg, ptr nonnull align 8 %i.ahb, i64 %gepdiff.i280.i, i1 false)
  %.pre.i.i.i.i282.i = load ptr, ptr %i.g, align 8, !tbaa !457
  br label %._crit_edge.i.i.i287.i

bb.db:                                            ; preds = %._crit_edge.i.i.i278.i
  %i.ahe = icmp eq i64 %i.ahj, 1
  br i1 %i.ahe, label %bb.dc, label %._crit_edge.i.i.i287.i

bb.dc:                                            ; preds = %bb.db
  store ptr %i.agy, ptr %i.ahg, align 8, !tbaa !472
  br label %._crit_edge.i.i.i287.i

._crit_edge.i.i.i278.i:                           ; preds = %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit.i
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  store ptr %i.agy, ptr %i.ahf, align 8, !tbaa !472
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.aha, i64 16 ; 3 uses
  %i.ahh = load i32, ptr %i.i, align 8, !tbaa !458
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = sub nsw i64 %i.ahi, %i.aj              ; 3 uses
  %gepdiff.i280.i = shl nsw i64 %i.ahj, 3         ; 2 uses
  %i.ahk = icmp sgt i64 %i.ahj, 1
  br i1 %i.ahk, label %bb.da, label %bb.db, !prof !506

bb.dd:                                            ; preds = %._crit_edge.i.i.i287.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.aig, i64 %i.ai
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aij, ptr nonnull align 8 %i.ahl, i64 %gepdiff.i289.i, i1 false)
  %.pre.i.i.i.i291.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i290.i

bb.de:                                            ; preds = %._crit_edge.i.i.i287.i
  %i.ahm = icmp eq i64 %i.aim, 1
  br i1 %i.ahm, label %bb.df, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i290.i

bb.df:                                            ; preds = %bb.de
  store i64 %1, ptr %i.aij, align 8, !tbaa !432
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i290.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i290.i: ; preds = %bb.df, %bb.de, %bb.dd
  %i.ahn = phi ptr [ %.pre.i.i.i.i291.i, %bb.dd ], [ %i.aig, %bb.de ], [ %i.aig, %bb.df ]
  %i.aho = getelementptr inbounds i8, ptr %i.aij, i64 %gepdiff.i289.i
  %i.ahp = ptrtoint ptr %i.aho to i64
  %i.ahq = ptrtoint ptr %i.ahn to i64
  %i.ahr = sub i64 %i.ahp, %i.ahq
  %i.ahs = lshr exact i64 %i.ahr, 3
  %i.aht = trunc i64 %i.ahs to i32
  store i32 %i.aht, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit.i

bb.dg:                                            ; preds = %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit.i
  %i.ahu = call noundef ptr @_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6insertIPKS2_vEEPS2_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull %i.ahb, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store i64 %i.bd, ptr %2, align 8, !tbaa !432
  store i64 %1, ptr %i.o, align 8, !tbaa !432
  %i.ahv = load ptr, ptr %i.d, align 8, !tbaa !457 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 %.idx.i
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahv, i64 %i.ai
  store i64 %i.bd, ptr %i.ahw, align 8, !tbaa !432
  %i.ahy = call noundef ptr @_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6insertIPKS2_vEEPS2_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.ahx, ptr noundef nonnull %i.o, ptr noundef nonnull %i.q) ; 0 uses
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit.i

._crit_edge.i.i.i287.i:                           ; preds = %bb.dc, %bb.db, %bb.da
  %i.ahz = phi ptr [ %.pre.i.i.i.i282.i, %bb.da ], [ %i.agz, %bb.db ], [ %i.agz, %bb.dc ]
  %i.aia = getelementptr inbounds i8, ptr %i.ahg, i64 %gepdiff.i280.i
  %i.aib = ptrtoint ptr %i.aia to i64
  %i.aic = ptrtoint ptr %i.ahz to i64
  %i.aid = sub i64 %i.aib, %i.aic
  %i.aie = lshr exact i64 %i.aid, 3
  %i.aif = trunc i64 %i.aie to i32
  store i32 %i.aif, ptr %i.i, align 8, !tbaa !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store i64 %i.bd, ptr %2, align 8, !tbaa !432
  store i64 %1, ptr %i.o, align 8, !tbaa !432
  %i.aig = load ptr, ptr %i.d, align 8, !tbaa !457 ; 4 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 %.idx.i ; 3 uses
  store i64 %i.bd, ptr %i.aih, align 8, !tbaa !432
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  store i64 %1, ptr %i.aii, align 8, !tbaa !432
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aih, i64 16 ; 3 uses
  %i.aik = load i32, ptr %i.e, align 8, !tbaa !458
  %i.ail = zext i32 %i.aik to i64
  %i.aim = sub nsw i64 %i.ail, %i.aj              ; 3 uses
  %gepdiff.i289.i = shl nsw i64 %i.aim, 3         ; 2 uses
  %i.ain = icmp sgt i64 %i.aim, 1
  br i1 %i.ain, label %bb.dd, label %bb.de, !prof !506

_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit.i: ; preds = %bb.dg, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i290.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split

bb.dh:                                            ; preds = %.critedge44.i
  %spec.select.i.i.i.i.i.i.i.i292.i = icmp ult i8 %i.be, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i292.i, label %bb.di, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24

bb.di:                                            ; preds = %bb.dh
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ai ; 2 uses
  %i.aip = load i32, ptr %i.i, align 8, !tbaa !458
  %i.aiq = zext i32 %i.aip to i64
  %i.air = sub nsw i64 %i.aiq, %i.aj              ; 3 uses
  %gepdiff.i296.i = shl nsw i64 %i.air, 3         ; 2 uses
  %i.ais = icmp sgt i64 %i.air, 1
  br i1 %i.ais, label %bb.dj, label %bb.dk, !prof !506

bb.dj:                                            ; preds = %bb.di
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 8 %i.aio, i64 %gepdiff.i296.i, i1 false)
  %.pre.i.i.i.i298.i = load ptr, ptr %i.g, align 8, !tbaa !457
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit299.i

bb.dk:                                            ; preds = %bb.di
  %i.ait = icmp eq i64 %i.air, 1
  br i1 %i.ait, label %bb.dl, label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit299.i

bb.dl:                                            ; preds = %bb.dk
  %i.aiu = load ptr, ptr %i.aio, align 8, !tbaa !472
  store ptr %i.aiu, ptr %i.az, align 8, !tbaa !472
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit299.i

_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit299.i: ; preds = %bb.dl, %bb.dk, %bb.dj
  %i.aiv = phi ptr [ %.pre.i, %bb.dj ], [ %i.bb, %bb.dk ], [ %i.bb, %bb.dl ] ; 4 uses
  %i.aiw = phi ptr [ %.pre.i.i.i.i298.i, %bb.dj ], [ %i.ay, %bb.dk ], [ %i.ay, %bb.dl ]
  %i.aix = getelementptr inbounds i8, ptr %i.az, i64 %gepdiff.i296.i
  %i.aiy = ptrtoint ptr %i.aix to i64
  %i.aiz = ptrtoint ptr %i.aiw to i64
  %i.aja = sub i64 %i.aiy, %i.aiz
  %i.ajb = lshr exact i64 %i.aja, 3
  %i.ajc = trunc i64 %i.ajb to i32
  store i32 %i.ajc, ptr %i.i, align 8, !tbaa !458
  %i.ajd = getelementptr inbounds nuw [8 x i8], ptr %i.aiv, i64 %i.ak ; 3 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aiv, i64 %i.ai ; 2 uses
  %i.ajf = load i32, ptr %i.e, align 8, !tbaa !458
  %i.ajg = zext i32 %i.ajf to i64
  %i.ajh = sub nsw i64 %i.ajg, %i.aj              ; 3 uses
  %gepdiff.i303.i = shl nsw i64 %i.ajh, 3         ; 2 uses
  %i.aji = icmp sgt i64 %i.ajh, 1
  br i1 %i.aji, label %bb.dm, label %bb.dn, !prof !506

bb.dm:                                            ; preds = %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit299.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ajd, ptr nonnull align 8 %i.aje, i64 %gepdiff.i303.i, i1 false)
  %.pre.i.i.i.i305.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit306.i

bb.dn:                                            ; preds = %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit299.i
  %i.ajj = icmp eq i64 %i.ajh, 1
  br i1 %i.ajj, label %bb.do, label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit306.i

bb.do:                                            ; preds = %bb.dn
  %i.ajk = load i64, ptr %i.aje, align 8, !tbaa !432
  store i64 %i.ajk, ptr %i.ajd, align 8, !tbaa !432
  br label %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit306.i

_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit306.i: ; preds = %bb.do, %bb.dn, %bb.dm
  %i.ajl = phi ptr [ %.pre.i.i.i.i305.i, %bb.dm ], [ %i.aiv, %bb.dn ], [ %i.aiv, %bb.do ]
  %i.ajm = getelementptr inbounds i8, ptr %i.ajd, i64 %gepdiff.i303.i
  %i.ajn = ptrtoint ptr %i.ajm to i64
  %i.ajo = ptrtoint ptr %i.ajl to i64
  %i.ajp = sub i64 %i.ajn, %i.ajo
  %i.ajq = lshr exact i64 %i.ajp, 3
  %i.ajr = trunc i64 %i.ajq to i32                ; 2 uses
  store i32 %i.ajr, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split.loopexit186.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i40.i.i.i.i239.i
  %lcmp.mod217.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod217.not, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil.preheader:      ; preds = %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split.loopexit186.unr-lcssa, %.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader
  %.02.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.abs, %.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader ], [ %i.ael, %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split.loopexit186.unr-lcssa ]
  %.epil.init216 = phi i64 [ 1, %.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader ], [ %i.aek, %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split.loopexit186.unr-lcssa ]
  %lcmp.mod218 = icmp ne i64 %xtraiter233, 0
  call void @llvm.assume(i1 %lcmp.mod218)
  br label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil.preheader
  %.02.i.i.i.i.i.i.i.i.i.i.epil = phi ptr [ %i.ajw, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil ], [ %.02.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.ajs = phi i64 [ %i.ajv, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil ], [ %.epil.init216, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil.preheader ]
  %i.ajt = mul nsw i64 %i.ajs, %.fca.0.extract.i139.i
  %i.aju = add nsw i64 %i.ajt, %i.bd
  store i64 %i.aju, ptr %.02.i.i.i.i.i.i.i.i.i.i.epil, align 8, !tbaa !432
  %i.ajv = add nuw i64 %i.ajs, 1
  %i.ajw = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i.i.i.i.i.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter233
  br i1 %epil.iter.cmp.not, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, label %.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil, !llvm.loop !947

_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split: ; preds = %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i42.i.i.i.i.i", %"_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_2S7_EdeEv.exit.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i40.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split.loopexit186.unr-lcssa, %.lr.ph.i.i.i.i.i40.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i256.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i256.i, %middle.block196, %_ZSt13move_backwardIPN5clang9CharUnitsES2_ET0_T_S4_S3_.exit.i.i.i.i238.i, %._crit_edge.i.i.i.i253.i, %._crit_edge.i.i.i.i79.i, %._crit_edge.i.i.i.i125.i, %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit.i
  %.pr = load i32, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit: ; preds = %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split, %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit306.i, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_2S2_EEvEEvT_SD_.exit.i.i.i.i.i", %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i103.i, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i", %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i220.i, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i"
  %i.ajx = phi i32 [ %.pr, %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split ], [ %i.ajr, %_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIN5clang9CharUnitsELj32EEESt16initializer_listIS4_EEEvRT_mmT0_.exit306.i ], [ %i.kg, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i ], [ %i.rz, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_2S2_EEvEEvT_SD_.exit.i.i.i.i.i" ], [ %i.rh, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i103.i ], [ %i.lu, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i" ], [ %i.aag, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i220.i ], [ %i.abp, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i" ] ; 2 uses
  %.not.i = icmp eq i32 %i.ajx, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24, label %_ZSt9__advanceIPN5clang9CharUnitsElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i

_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit.thread24: ; preds = %_ZN4llvm11upper_boundIRNS_11SmallVectorIN5clang9CharUnitsELj32EEERS3_EEDaOT_OT0_.exit, %bb.c, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit, %bb.dh, %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit, %.preheader, %bb.b
  %.sroa.020.3 = phi i64 [ %i.t, %bb.b ], [ 0, %.preheader ], [ undef, %bb.dh ], [ %i.ak, %bb.c ], [ 0, %_ZN4llvm11upper_boundIRNS_11SmallVectorIN5clang9CharUnitsELj32EEERS3_EEDaOT_OT0_.exit ], [ %i.aj, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit ], [ 0, %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit ]
  %.sroa.5.3 = phi i8 [ 1, %bb.b ], [ 1, %.preheader ], [ 0, %bb.dh ], [ 1, %bb.c ], [ 1, %_ZN4llvm11upper_boundIRNS_11SmallVectorIN5clang9CharUnitsELj32EEERS3_EEDaOT_OT0_.exit ], [ 1, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPKN4llvm8ConstantE.exit ], [ 1, %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.020.3, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.5.3, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

declare void @_ZN4llvm5APInt12lshrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #3

declare void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #3

declare i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_110getPaddingERKN5clang7CodeGen13CodeGenModuleENS0_9CharUnitsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4008) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !601  ; 2 uses
  %i.c = icmp sgt i64 %1, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4llvm9ArrayType3getEPNS_4TypeEm(ptr noundef %i.b, i64 noundef %1) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !483, !nonnull !43, !align !45
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 4096
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %.0) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noundef ptr @_ZN4llvm10UndefValue3getEPNS_4TypeE(ptr noundef %.0) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.06 = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  ret ptr %.06
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang9CharUnitsELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !458
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #22
  %i.f = load ptr, ptr %0, align 8, !tbaa !457
  %i.g = load i32, ptr %i.a, align 8, !tbaa !458
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !458
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !458
  ret void
}

declare { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6insertIPKS2_vEEPS2_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !457    ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !458  ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 10 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = add nsw i64 %i.m, %i.g                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !482
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.n, i64 noundef 8) #22
  %.pre8.pre.i = load i32, ptr %i.e, align 8, !tbaa !458
  %.pre62.pre = load ptr, ptr %0, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %.pre62 = phi ptr [ %i.a, %bb.b ], [ %.pre62.pre, %bb.c ] ; 2 uses
  %.pre8.i = phi i32 [ %i.f, %bb.b ], [ %.pre8.pre.i, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %2, %3
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendIPKS2_vEEvT_S7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i
  %i.t = zext i32 %.pre8.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre62, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 8 %2, i64 %i.l, i1 false)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !458
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendIPKS2_vEEvT_S7_.exit

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendIPKS2_vEEvT_S7_.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i, %bb.d
  %i.v = phi ptr [ %.pre62, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i ], [ %.pre61, %bb.d ]
  %i.w = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i ], [ %.pre.i, %bb.d ]
  %i.x = trunc i64 %i.m to i32
  %i.y = add i32 %i.w, %i.x
  store i32 %i.y, ptr %i.e, align 8, !tbaa !458
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.d
  br label %_ZSt4copyIPKPN4llvm8ConstantEPS2_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.a
  %.idx52 = sub i64 0, %i.l
  %i.aa = ashr exact i64 %i.l, 3                  ; 5 uses
  %i.ab = add nsw i64 %i.aa, %i.g                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !482
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.f, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ag, i64 noundef %i.ab, i64 noundef 8) #22
  %.pre = load ptr, ptr %0, align 8, !tbaa !457
  %.pre59 = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre64 = zext i32 %.pre59 to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit: ; preds = %bb.e, %bb.f
  %.pre-phi = phi i64 [ %i.g, %bb.e ], [ %.pre64, %bb.f ] ; 3 uses
  %i.ah = phi i32 [ %i.f, %bb.e ], [ %.pre59, %bb.f ] ; 2 uses
  %i.ai = phi ptr [ %i.a, %bb.e ], [ %.pre, %bb.f ] ; 5 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.d ; 14 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 3            ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 4 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 2 uses
  %i.am = ashr exact i64 %gepdiff, 3              ; 8 uses
  %.not = icmp ult i64 %i.am, %i.aa
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %.idx52 ; 2 uses
  %i.ao = add nsw i64 %i.aa, %.pre-phi            ; 2 uses
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !482
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i46

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.as, i64 noundef %i.ao, i64 noundef 8) #22
  %.pre.i47 = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre12.i = zext i32 %.pre.i47 to i64
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i46

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i46: ; preds = %bb.h, %bb.g
  %i.at = phi ptr [ %i.ai, %bb.g ], [ %.pre60, %bb.h ]
  %.pre-phi.i = phi i64 [ %.pre-phi, %bb.g ], [ %.pre12.i, %bb.h ]
  %i.au = phi i32 [ %i.ah, %bb.g ], [ %.pre.i47, %bb.h ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.pre-phi.i ; 2 uses
  %i.aw = icmp sgt i64 %i.l, 8                    ; 2 uses
  br i1 %i.aw, label %bb.i, label %bb.j, !prof !506

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i46
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.av, ptr nonnull align 8 %i.an, i64 %i.l, i1 false)
  %.pre11.i = load i32, ptr %i.e, align 8, !tbaa !458
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit

end_hunk_0
begin_hunk_1_@llvm.smin.i64
!729 = !{!728, !26, i64 8}
!730 = !{!728, !26, i64 12}
!731 = !{!728, !449, i64 0}
!732 = !{!"_ZTSN4llvm14FoldingSetBase4NodeE", !29, i64 0}
!733 = !{!"_ZTSN5clang10MatrixTypeE", !484, i64 0, !732, i64 24, !354, i64 32}
!734 = !{!"_ZTSN5clang18ConstantMatrixTypeE", !733, i64 0, !26, i64 40, !26, i64 44}
!735 = !{!734, !26, i64 44}
!736 = !{!734, !26, i64 40}
!737 = !{!"p1 _ZTSN5clang13AddrLabelExprE", !29, i64 0}
!738 = !{!"_ZTSN5clang7APValue17AddrLabelDiffDataE", !737, i64 0, !737, i64 8}
!739 = !{!738, !737, i64 0}
!740 = !{!738, !737, i64 8}
!741 = !{!"_ZTSN5clang7APValue3ArrE", !449, i64 0, !26, i64 8, !26, i64 12}
!742 = !{!741, !26, i64 12}
!743 = !{!741, !26, i64 8}
!744 = !{!741, !449, i64 0}
!745 = !{ptr @_ZN5clang7CodeGen15ConstantEmitter15tryEmitAbstractERKNS_7APValueENS_8QualTypeE, ptr @_ZN5clang7CodeGen15ConstantEmitter24tryEmitAbstractForMemoryERKNS_7APValueENS_8QualTypeE}
!746 = !{!"llvm.loop.peeled.count", i32 1}
!747 = distinct !{!747, !512}
!748 = !{ptr @_ZN5clang7CodeGen13CodeGenModule14getNullPointerEPN4llvm11PointerTypeENS_8QualTypeE}
!749 = distinct !{!749, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6insertERKSt4pairIS3_S5_E"}
!750 = distinct !{!750, !749, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6insertERKSt4pairIS3_S5_E: argument 0"}
!751 = distinct !{!751, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E16try_emplace_implIRKS3_JRKS5_EEESt4pairINS_16DenseMapIteratorIS3_S5_S7_SA_Lb0EEEbEOT_DpOT0_"}
!752 = distinct !{!752, !751, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E16try_emplace_implIRKS3_JRKS5_EEESt4pairINS_16DenseMapIteratorIS3_S5_S7_SA_Lb0EEEbEOT_DpOT0_: argument 0"}
!753 = distinct !{!753, !461}
!754 = distinct !{!754, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv"}
!755 = distinct !{!755, !754, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv: argument 0"}
!756 = distinct !{!756, !"_ZN4llvm16DenseMapIteratorIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EE9makeBeginEPS9_PKjjbRKNS_14DebugEpochBaseE"}
!757 = distinct !{!757, !756, !"_ZN4llvm16DenseMapIteratorIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EE9makeBeginEPS9_PKjjbRKNS_14DebugEpochBaseE: argument 0"}
!758 = distinct !{!758, !461}
!759 = !{!40, !32, i64 18}
!760 = !{!752, !750}
!761 = !{!755}
!762 = !{!757, !755}
!763 = !{!"_ZTSN4llvm14PointerIntPairIPN5clang4DeclELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEE", !548, i64 0}
!764 = !{!"_ZTSN5clang28SubstNonTypeTemplateParmExprE", !425, i64 0, !545, i64 16, !763, i64 24, !354, i64 32, !26, i64 40, !26, i64 41}
!765 = !{!764, !545, i64 16}
!766 = !{!"_ZTSN5clang9ParenExprE", !425, i64 0, !427, i64 16, !427, i64 20, !545, i64 24}
!767 = !{!766, !545, i64 24}
!768 = !{!"_ZTSN5clang14ObjCEncodeExprE", !425, i64 0, !554, i64 16, !427, i64 24, !427, i64 28}
!769 = !{!768, !554, i64 16}
!770 = !{ptr @_ZN5clang7CodeGen15ConstantEmitter15tryEmitAbstractEPKNS_4ExprENS_8QualTypeE}
!771 = distinct !{!771, !"_ZNK4llvm5APInt3shlEj"}
!772 = distinct !{!772, !771, !"_ZNK4llvm5APInt3shlEj: argument 0"}
!773 = distinct !{!773, !"_ZNK4llvm5APInt3shlEj"}
!774 = distinct !{!774, !773, !"_ZNK4llvm5APInt3shlEj: argument 0"}
!775 = distinct !{!775, !"_ZN4llvmcoENS_5APIntE"}
!776 = distinct !{!776, !775, !"_ZN4llvmcoENS_5APIntE: argument 0"}
!777 = distinct !{!777, !"_ZN4llvmanERKNS_5APIntEOS0_"}
!778 = distinct !{!778, !777, !"_ZN4llvmanERKNS_5APIntEOS0_: argument 0"}
!779 = distinct !{!779, !461}
!780 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm5AlignEE", !25, i64 0, !32, i64 1}
!781 = !{!"_ZTSSt17_Optional_payloadIN4llvm5AlignELb1ELb1ELb1EE", !780, i64 0}
!782 = !{!"_ZTSSt14_Optional_baseIN4llvm5AlignELb1ELb1EE", !781, i64 0}
!783 = !{!"_ZTSSt8optionalIN4llvm5AlignEE", !782, i64 0}
!784 = !{!"_ZTSN4llvm10MaybeAlignE", !783, i64 0}
!785 = !{!"_ZTSN4llvm10DataLayout20FunctionPtrAlignTypeE", !25, i64 0}
!786 = !{!"_ZTSN4llvm10DataLayout13ManglingModeTE", !25, i64 0}
!787 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIhvEE", !562, i64 0}
!788 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIhLb1EEE", !787, i64 0}
!789 = !{!"_ZTSN4llvm15SmallVectorImplIhEE", !788, i64 0}
!790 = !{!"_ZTSN4llvm18SmallVectorStorageIhLj8EEE", !25, i64 0}
!791 = !{!"_ZTSN4llvm11SmallVectorIhLj8EEE", !789, i64 0, !790, i64 24}
!792 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_10DataLayout13PrimitiveSpecEvEE", !34, i64 0}
!793 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_10DataLayout13PrimitiveSpecELb1EEE", !792, i64 0}
!794 = !{!"_ZTSN4llvm15SmallVectorImplINS_10DataLayout13PrimitiveSpecEEE", !793, i64 0}
!795 = !{!"_ZTSN4llvm18SmallVectorStorageINS_10DataLayout13PrimitiveSpecELj6EEE", !25, i64 0}
!796 = !{!"_ZTSN4llvm11SmallVectorINS_10DataLayout13PrimitiveSpecELj6EEE", !794, i64 0, !795, i64 16}
!797 = !{!"_ZTSN4llvm18SmallVectorStorageINS_10DataLayout13PrimitiveSpecELj4EEE", !25, i64 0}
!798 = !{!"_ZTSN4llvm11SmallVectorINS_10DataLayout13PrimitiveSpecELj4EEE", !794, i64 0, !797, i64 16}
!799 = !{!"_ZTSN4llvm18SmallVectorStorageINS_10DataLayout13PrimitiveSpecELj10EEE", !25, i64 0}
!800 = !{!"_ZTSN4llvm11SmallVectorINS_10DataLayout13PrimitiveSpecELj10EEE", !794, i64 0, !799, i64 16}
!801 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_10DataLayout11PointerSpecEvEE", !34, i64 0}
!802 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_10DataLayout11PointerSpecELb0EEE", !801, i64 0}
!803 = !{!"_ZTSN4llvm15SmallVectorImplINS_10DataLayout11PointerSpecEEE", !802, i64 0}
!804 = !{!"_ZTSN4llvm18SmallVectorStorageINS_10DataLayout11PointerSpecELj8EEE", !25, i64 0}
!805 = !{!"_ZTSN4llvm11SmallVectorINS_10DataLayout11PointerSpecELj8EEE", !803, i64 0, !804, i64 16}
!806 = !{!"_ZTSN4llvm5AlignE", !25, i64 0}
!807 = !{!"_ZTSN4llvm10DataLayoutE", !32, i64 0, !32, i64 1, !26, i64 4, !26, i64 8, !26, i64 12, !784, i64 16, !784, i64 18, !785, i64 20, !786, i64 24, !791, i64 32, !796, i64 64, !798, i64 128, !800, i64 176, !805, i64 272, !71, i64 864, !806, i64 896, !806, i64 897, !29, i64 904}
!808 = !{!807, !32, i64 0}
!809 = !{!772}
!810 = !{!774}
!811 = !{!776}
!812 = !{!778}
!813 = distinct !{!813, !"_ZN4llvm6APSInt3getEl"}
!814 = distinct !{!814, !813, !"_ZN4llvm6APSInt3getEl: argument 0"}
!815 = !{!814}
!816 = distinct !{!816, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv"}
!817 = distinct !{!817, !816, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv: argument 0"}
!818 = distinct !{!818, !"_ZNK4llvm8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE6getRepEv"}
!819 = distinct !{!819, !818, !"_ZNK4llvm8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE6getRepEv: argument 0"}
!820 = !{!819, !817}
!821 = distinct !{!821, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6insertEOSt4pairIS5_S7_E"}
!822 = distinct !{!822, !821, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6insertEOSt4pairIS5_S7_E: argument 0"}
!823 = distinct !{!823, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16try_emplace_implIS5_JS7_EEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SC_Lb0EEEbEOT_DpOT0_"}
!824 = distinct !{!824, !823, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16try_emplace_implIS5_JS7_EEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SC_Lb0EEEbEOT_DpOT0_: argument 0"}
!825 = !{!824, !822}
!826 = distinct !{!826, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv"}
!827 = distinct !{!827, !826, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6getRepEv: argument 0"}
!828 = distinct !{!828, !"_ZNK4llvm8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE6getRepEv"}
!829 = distinct !{!829, !828, !"_ZNK4llvm8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE6getRepEv: argument 0"}
!830 = distinct !{!830, !"_ZN5clang7CodeGen15ConstantAddress7invalidEv"}
!831 = distinct !{!831, !830, !"_ZN5clang7CodeGen15ConstantAddress7invalidEv: argument 0"}
!832 = distinct !{!832, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6insertEOSt4pairIS5_S7_E"}
!833 = distinct !{!833, !832, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E6insertEOSt4pairIS5_S7_E: argument 0"}
!834 = distinct !{!834, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16try_emplace_implIS5_JS7_EEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SC_Lb0EEEbEOT_DpOT0_"}
!835 = distinct !{!835, !834, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang19CompoundLiteralExprEPNS_14GlobalVariableENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16try_emplace_implIS5_JS7_EEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SC_Lb0EEEbEOT_DpOT0_: argument 0"}
!836 = !{!829, !827}
!837 = !{!"_ZTSN4llvm4UserE", !475, i64 0}
!838 = !{!"_ZTSN4llvm8ConstantE", !837, i64 0}
!839 = !{!"_ZTSN4llvm11GlobalValueE", !838, i64 0, !46, i64 24, !26, i64 32, !26, i64 32, !26, i64 32, !26, i64 33, !26, i64 33, !26, i64 33, !26, i64 33, !26, i64 33, !26, i64 34, !26, i64 34, !26, i64 36, !57, i64 40}
!840 = !{!839, !46, i64 24}
!841 = !{!575, !46, i64 8}
!842 = !{ptr @_ZN5clang7CodeGen15ConstantEmitter21tryEmitForInitializerEPKNS_4ExprENS_6LangASENS_8QualTypeE}
!843 = !{!831}
!844 = !{!"_ZTSN4llvm5Twine8NodeKindE", !25, i64 0}
!845 = !{!"_ZTSN4llvm5TwineE", !25, i64 0, !25, i64 16, !844, i64 32, !844, i64 33}
!846 = !{!845, !844, i64 33}
!847 = !{!845, !844, i64 32}
!848 = !{!835, !833}
!849 = !{!"_ZTSN5clang18DeclarationNameLocE", !25, i64 0}
!850 = !{!"_ZTSN5clang11DeclRefExprE", !425, i64 0, !576, i64 16, !849, i64 24}
!851 = !{!850, !576, i64 16}
!852 = distinct !{!852, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E6getRepEv"}
!853 = distinct !{!853, !852, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E6getRepEv: argument 0"}
!854 = distinct !{!854, !"_ZNK4llvm8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE6getRepEv"}
!855 = distinct !{!855, !854, !"_ZNK4llvm8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE6getRepEv: argument 0"}
!856 = distinct !{null}
!857 = distinct !{!857, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E6getRepEv"}
!858 = distinct !{!858, !857, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E6getRepEv: argument 0"}
!859 = distinct !{!859, !"_ZNK4llvm8DenseMapIPKN5clang9FieldDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE6getRepEv"}
!860 = distinct !{!860, !859, !"_ZNK4llvm8DenseMapIPKN5clang9FieldDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE6getRepEv: argument 0"}
!861 = distinct !{!861, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E6getRepEv"}
!862 = distinct !{!862, !861, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E6getRepEv: argument 0"}
!863 = distinct !{!863, !"_ZNK4llvm8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE6getRepEv"}
!864 = distinct !{!864, !863, !"_ZNK4llvm8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE6getRepEv: argument 0"}
!865 = distinct !{!865, !461}
!866 = !{!588, !587, i64 0}
!867 = !{!855, !853}
!868 = !{!588, !126, i64 8}
!869 = !{!588, !26, i64 20}
!870 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang9FieldDeclEjEE", !29, i64 0}
!871 = !{!"_ZTSN4llvm8DenseMapIPKN5clang9FieldDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEE", !870, i64 0, !126, i64 8, !26, i64 16, !26, i64 20}
!872 = !{!871, !870, i64 0}
!873 = !{!860, !858}
!874 = !{!871, !126, i64 8}
!875 = !{!871, !26, i64 20}
!876 = !{!594, !70, i64 0}
!877 = !{!864, !862}
!878 = distinct !{!878, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6getRepEv"}
!879 = distinct !{!879, !878, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6getRepEv: argument 0"}
!880 = distinct !{!880, !"_ZNK4llvm8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE6getRepEv"}
!881 = distinct !{!881, !880, !"_ZNK4llvm8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE6getRepEv: argument 0"}
!882 = !{!881, !879}
!883 = distinct !{!883, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6getRepEv"}
!884 = distinct !{!884, !883, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6getRepEv: argument 0"}
!885 = distinct !{!885, !"_ZNK4llvm8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE6getRepEv"}
!886 = distinct !{!886, !885, !"_ZNK4llvm8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE6getRepEv: argument 0"}
!887 = !{!886, !884}
!888 = distinct !{!888, !461}
!889 = distinct !{!889, !461}
!890 = distinct !{!890, !461}
!891 = distinct !{!891, !461}
!892 = distinct !{!892, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findEPKS2_"}
!893 = distinct !{!893, !892, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4findEPKS2_: argument 0"}
!894 = distinct !{!894, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E7find_asIPKS2_EENS_16DenseMapIteratorIS3_S5_S7_SA_Lb0EEERKT_"}
!895 = distinct !{!895, !894, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E7find_asIPKS2_EENS_16DenseMapIteratorIS3_S5_S7_SA_Lb0EEERKT_: argument 0"}
!896 = distinct !{!896, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6getRepEv"}
!897 = distinct !{!897, !896, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6getRepEv: argument 0"}
!898 = distinct !{!898, !"_ZNK4llvm8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE6getRepEv"}
!899 = distinct !{!899, !898, !"_ZNK4llvm8DenseMapIPNS_8ConstantEPNS_14GlobalVariableENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE6getRepEv: argument 0"}
!900 = distinct !{!900, !461}
!901 = distinct !{!901, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6insertEOSt4pairIS3_S5_E"}
!902 = distinct !{!902, !901, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6insertEOSt4pairIS3_S5_E: argument 0"}
!903 = distinct !{!903, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E16try_emplace_implIS3_JS5_EEESt4pairINS_16DenseMapIteratorIS3_S5_S7_SA_Lb0EEEbEOT_DpOT0_"}
!904 = distinct !{!904, !903, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E16try_emplace_implIS3_JS5_EEESt4pairINS_16DenseMapIteratorIS3_S5_S7_SA_Lb0EEEbEOT_DpOT0_: argument 0"}
!905 = !{!899, !897, !895, !893}
!906 = !{!895, !893}
!907 = !{!462, !345, i64 8}
!908 = !{!526, !30, i64 0}
!909 = !{!904, !902}
!910 = distinct !{!910, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6getRepEv"}
!911 = distinct !{!911, !910, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6getRepEv: argument 0"}
!912 = distinct !{!912, !"_ZNK4llvm8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE6getRepEv"}
!913 = distinct !{!913, !912, !"_ZNK4llvm8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE6getRepEv: argument 0"}
!914 = !{!913, !911}
!915 = distinct !{!915, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6getRepEv"}
!916 = distinct !{!916, !915, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E6getRepEv: argument 0"}
!917 = distinct !{!917, !"_ZNK4llvm8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE6getRepEv"}
!918 = distinct !{!918, !917, !"_ZNK4llvm8DenseMapIPNS_14GlobalVariableEPNS_8ConstantENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE6getRepEv: argument 0"}
!919 = !{!918, !916}
!920 = distinct !{!920, !461}
!921 = distinct !{!921, !461}
!922 = distinct !{!922, !461}
!923 = distinct !{!923, !461}
!924 = distinct !{!924, !461}
!925 = distinct !{!925, !461}
!926 = distinct !{!926, !461}
!927 = distinct !{!927, !512}
!928 = distinct !{!928, !512}
!929 = distinct !{!929, !461, !602, !603}
!930 = distinct !{!930, !461, !603, !602}
!931 = distinct !{!931, !461, !602, !603}
!932 = distinct !{!932, !512}
!933 = distinct !{!933, !461, !603, !602}
!934 = distinct !{!934, !461}
!935 = distinct !{!935, !512}
!936 = distinct !{!936, !461}
!937 = distinct !{!937, !461}
!938 = distinct !{!938, !461}
!939 = distinct !{!939, !461}
!940 = distinct !{!940, !461}
!941 = distinct !{!941, !512}
!942 = distinct !{!942, !512}
!943 = distinct !{!943, !461}
!944 = distinct !{!944, !461, !602, !603}
!945 = distinct !{!945, !512}
!946 = distinct !{!946, !461, !603, !602}
!947 = distinct !{!947, !512}
!948 = distinct !{!948, !461, !602, !603}
!949 = distinct !{!949, !512}
!950 = distinct !{!950, !461, !602}
!951 = distinct !{!951, !461, !602, !603}
!952 = distinct !{!952, !512}
!953 = distinct !{!953, !461, !602}
!954 = distinct !{!954, !461}
!955 = distinct !{!955, !461}
!956 = !{!507, !70, i64 32}
!957 = !{!450, !449, i64 16}
!958 = !{!"_ZTSN5clang17ObjCStringLiteralE", !605, i64 0, !545, i64 16, !427, i64 24}
!959 = !{!958, !545, i64 16}
!960 = !{!"p1 _ZTSN5clang9LabelDeclE", !29, i64 0}
!961 = !{!"_ZTSN5clang13AddrLabelExprE", !425, i64 0, !427, i64 16, !427, i64 20, !960, i64 24}
!962 = !{!961, !960, i64 24}
!963 = distinct !{!963, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE"}
!964 = distinct !{!964, !963, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE: argument 0"}
!965 = !{!964}
!966 = distinct !{!966, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE"}
!967 = distinct !{!967, !966, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE: argument 0"}
!968 = distinct !{!968, !"_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj"}
!969 = distinct !{!969, !968, !"_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj: argument 0"}
!970 = distinct !{!970, !"_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj"}
!971 = distinct !{!971, !970, !"_ZNK5clang21ObjCDictionaryLiteral18getKeyValueElementEj: argument 0"}
!972 = distinct !{!972, !461}
!973 = !{!967}
!974 = !{!"_ZTSN5clang34ObjCDictionaryLiteral_KeyValuePairE", !552, i64 0, !552, i64 8}
!975 = !{!974, !552, i64 0}
!976 = !{!969}
!977 = !{!974, !552, i64 8}
!978 = !{!971}
!979 = distinct !{!979, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE"}
!980 = distinct !{!980, !979, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE: argument 0"}
!981 = distinct !{!981, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE"}
!982 = distinct !{!982, !981, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE: argument 0"}
!983 = distinct !{!983, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE"}
!984 = distinct !{!984, !983, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE: argument 0"}
!985 = distinct !{!985, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE"}
!986 = distinct !{!986, !985, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE: argument 0"}
!987 = !{!"_ZTSN5clang13ObjCBoxedExprE", !605, i64 0, !545, i64 16, !611, i64 24, !428, i64 32}
!988 = !{!987, !545, i64 16}
!989 = !{!980}
!990 = !{!982}
!991 = !{!984}
!992 = !{!986}
!993 = distinct !{!993, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE"}
!994 = distinct !{!994, !993, !"_ZNK5clang7CodeGen15ConstantAddress15withElementTypeEPN4llvm4TypeE: argument 0"}
!995 = distinct !{!995, !461}
!996 = !{!"_ZTSN5clang16ObjCArrayLiteralE", !605, i64 0, !26, i64 16, !428, i64 20, !611, i64 32}
!997 = !{!996, !26, i64 16}
!998 = !{!"_ZTSN4llvm8ArrayRefIPNS_8ConstantEEE", !255, i64 0, !70, i64 8}
!999 = !{!998, !255, i64 0}
!1000 = !{!998, !70, i64 8}
!1001 = !{!994}
!1002 = distinct !{null, null}
!1003 = distinct !{null, null, ptr @_ZN5clang7CodeGen15ConstantEmitter12emitAbstractENS_14SourceLocationERKNS_7APValueENS_8QualTypeEb}
!1004 = distinct !{null, null}
!1005 = distinct !{ptr @_ZN5clang7CodeGen15ConstantEmitter12emitAbstractEPKNS_4ExprENS_8QualTypeE, null, null}
!1006 = distinct !{null}
!1007 = !{!"_ZTSN5clang7CodeGen14LoopAttributes13LVEnableStateE", !25, i64 0}
!1008 = !{!"_ZTSN5clang7CodeGen14LoopAttributesE", !32, i64 0, !1007, i64 4, !1007, i64 8, !1007, i64 12, !1007, i64 16, !26, i64 20, !1007, i64 24, !26, i64 28, !26, i64 32, !26, i64 36, !1007, i64 40, !32, i64 44, !32, i64 45, !26, i64 48, !26, i64 52, !32, i64 56}
!1009 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt10unique_ptrIN5clang7CodeGen8LoopInfoESt14default_deleteIS4_EEvEE", !34, i64 0}
!1010 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang7CodeGen8LoopInfoESt14default_deleteIS4_EELb0EEE", !1009, i64 0}
!1011 = !{!"_ZTSN4llvm15SmallVectorImplISt10unique_ptrIN5clang7CodeGen8LoopInfoESt14default_deleteIS4_EEEE", !1010, i64 0}
!1012 = !{!"_ZTSN4llvm18SmallVectorStorageISt10unique_ptrIN5clang7CodeGen8LoopInfoESt14default_deleteIS4_EELj4EEE", !25, i64 0}
!1013 = !{!"_ZTSN4llvm11SmallVectorISt10unique_ptrIN5clang7CodeGen8LoopInfoESt14default_deleteIS4_EELj4EEE", !1011, i64 0, !1012, i64 16}
!1014 = !{!"_ZTSN5clang7CodeGen13LoopInfoStackE", !1008, i64 0, !1013, i64 64}
!1015 = !{!"p1 _ZTSN4llvm10DILocationE", !29, i64 0}
!1016 = !{!"_ZTSN4llvm8DebugLocE", !1015, i64 0}
!1017 = !{!"p1 _ZTSN4llvm10BasicBlockE", !29, i64 0}
!1018 = !{!"p1 _ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEEEE", !29, i64 0}
!1019 = !{!"_ZTSN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE", !1018, i64 0, !32, i64 8, !32, i64 9}
!1020 = !{!"p1 _ZTSN4llvm15IRBuilderFolderE", !29, i64 0}
!1021 = !{!"p1 _ZTSN4llvm24IRBuilderDefaultInserterE", !29, i64 0}
!1022 = !{!"_ZTSN4llvm13FastMathFlagsE", !26, i64 0}
!1023 = !{!"_ZTSN4llvm2fp17ExceptionBehaviorE", !25, i64 0}
!1024 = !{!"_ZTSN4llvm12RoundingModeE", !25, i64 0}
!1025 = !{!"p1 _ZTSN4llvm17OperandBundleDefTIPNS_5ValueEEE", !29, i64 0}
!1026 = !{!"_ZTSN4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE", !1025, i64 0, !70, i64 8}
!1027 = !{!"_ZTSN4llvm13IRBuilderBaseE", !1016, i64 0, !1017, i64 8, !1019, i64 16, !67, i64 32, !1020, i64 40, !1021, i64 48, !179, i64 56, !1022, i64 64, !32, i64 68, !1023, i64 69, !1024, i64 70, !1026, i64 72}
!1028 = !{!"_ZTSN4llvm15IRBuilderFolderE"}
!1029 = !{!"p1 _ZTSN4llvm10DataLayoutE", !29, i64 0}
!1030 = !{!"_ZTSN4llvm12TargetFolderE", !1028, i64 0, !1029, i64 8}
!1031 = !{!"_ZTSN4llvm24IRBuilderDefaultInserterE"}
!1032 = !{!"_ZTSN5clang7CodeGen17CGBuilderInserterE", !1031, i64 0, !31, i64 8}
!1033 = !{!"_ZTSN4llvm9IRBuilderINS_12TargetFolderEN5clang7CodeGen17CGBuilderInserterEEE", !1027, i64 0, !1030, i64 88, !1032, i64 104}
!1034 = !{!"p1 _ZTSN5clang7CodeGen16CodeGenTypeCacheE", !29, i64 0}
!1035 = !{!"_ZTSN5clang7CodeGen11CGBuilderTyE", !1033, i64 0, !1034, i64 120}
!1036 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIjPKN5clang7VarDeclEEvEE", !34, i64 0}
!1037 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIjPKN5clang7VarDeclEELb1EEE", !1036, i64 0}
!1038 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIjPKN5clang7VarDeclEEEE", !1037, i64 0}
!1039 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairIjPKN5clang7VarDeclEELj48EEE", !25, i64 0}
!1040 = !{!"_ZTSN4llvm11SmallVectorISt4pairIjPKN5clang7VarDeclEELj48EEE", !1038, i64 0, !1039, i64 16}
!1041 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPKN5clang4StmtEjEvEE", !34, i64 0}
!1042 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang4StmtEjELb1EEE", !1041, i64 0}
!1043 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPKN5clang4StmtEjEEE", !1042, i64 0}
!1044 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairIPKN5clang4StmtEjELj16EEE", !25, i64 0}
!1045 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPKN5clang4StmtEjELj16EEE", !1043, i64 0, !1044, i64 16}
!1046 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang4StmtEjEE", !29, i64 0}
!1047 = !{!"_ZTSN4llvm8DenseMapIPKN5clang4StmtEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEE", !1046, i64 0, !126, i64 8, !26, i64 16, !26, i64 20}
!1048 = !{!"_ZTSN5clang7CodeGen17VarBypassDetectorE", !1040, i64 0, !1045, i64 784, !1047, i64 1056, !627, i64 1080, !32, i64 1104}
!1049 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_17CanonicalLoopInfoEvEE", !34, i64 0}
!1050 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_17CanonicalLoopInfoELb1EEE", !1049, i64 0}
!1051 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_17CanonicalLoopInfoEEE", !1050, i64 0}
!1052 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_17CanonicalLoopInfoELj4EEE", !25, i64 0}
!1053 = !{!"_ZTSN4llvm11SmallVectorIPNS_17CanonicalLoopInfoELj4EEE", !1051, i64 0, !1052, i64 16}
!1054 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_22ConvergenceControlInstEvEE", !34, i64 0}
!1055 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_22ConvergenceControlInstELb1EEE", !1054, i64 0}
!1056 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_22ConvergenceControlInstEEE", !1055, i64 0}
!1057 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_22ConvergenceControlInstELj4EEE", !25, i64 0}
!1058 = !{!"_ZTSN4llvm11SmallVectorIPNS_22ConvergenceControlInstELj4EEE", !1056, i64 0, !1057, i64 16}
!1059 = !{!"p1 _ZTSN5clang7CodeGen14CGFunctionInfoE", !29, i64 0}
!1060 = !{!"p1 _ZTSN5clang8CastExprE", !29, i64 0}
!1061 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPKN5clang11ParmVarDeclEvEE", !34, i64 0}
!1062 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPKN5clang11ParmVarDeclELb1EEE", !1061, i64 0}
!1063 = !{!"_ZTSN4llvm15SmallVectorImplIPKN5clang11ParmVarDeclEEE", !1062, i64 0}
!1064 = !{!"_ZTSN4llvm18SmallVectorStorageIPKN5clang11ParmVarDeclELj4EEE", !25, i64 0}
!1065 = !{!"_ZTSN4llvm11SmallVectorIPKN5clang11ParmVarDeclELj4EEE", !1063, i64 0, !1064, i64 16}
!1066 = !{!"p1 _ZTSN5clang7CodeGen10CGCoroDataE", !29, i64 0}
!1067 = !{!"_ZTSSt10_Head_baseILm0EPN5clang7CodeGen10CGCoroDataELb0EE", !1066, i64 0}
!1068 = !{!"_ZTSSt11_Tuple_implILm0EJPN5clang7CodeGen10CGCoroDataESt14default_deleteIS2_EEE", !1067, i64 0}
!1069 = !{!"_ZTSSt5tupleIJPN5clang7CodeGen10CGCoroDataESt14default_deleteIS2_EEE", !1068, i64 0}
!1070 = !{!"_ZTSSt15__uniq_ptr_implIN5clang7CodeGen10CGCoroDataESt14default_deleteIS2_EE", !1069, i64 0}
!1071 = !{!"_ZTSSt15__uniq_ptr_dataIN5clang7CodeGen10CGCoroDataESt14default_deleteIS2_ELb1ELb1EE", !1070, i64 0}
!1072 = !{!"_ZTSSt10unique_ptrIN5clang7CodeGen10CGCoroDataESt14default_deleteIS2_EE", !1071, i64 0}
!1073 = !{!"_ZTSN5clang7CodeGen15CodeGenFunction10CGCoroInfoE", !1072, i64 0, !32, i64 8}
!1074 = !{!"_ZTSN5clang7CodeGen15CodeGenFunction23AwaitSuspendWrapperInfoE", !349, i64 0}
!1075 = !{!"_ZTSN5clang7CodeGen12EHScopeStack15stable_iteratorE", !70, i64 0}
!1076 = !{!"_ZTSN5clang7CodeGen15CodeGenFunction8JumpDestE", !1017, i64 0, !1075, i64 8, !26, i64 16}
!1077 = !{!"_ZTSN5clang25PointerAuthenticationModeE", !25, i64 0}
!1078 = !{!"_ZTSN5clang7CodeGen17CGPointerAuthInfoE", !1077, i64 0, !26, i64 0, !26, i64 0, !26, i64 0, !349, i64 8}
!1079 = !{!"_ZTSN5clang7CodeGen7AddressE", !574, i64 0, !46, i64 8, !455, i64 16, !1078, i64 24, !349, i64 40}
!1080 = !{!"_ZTSN4llvm11AssertingVHINS_11InstructionEEE", !349, i64 0}
!1081 = !{!"p1 _ZTSN5clang7CodeGen15CodeGenFunction18CGCapturedStmtInfoE", !29, i64 0}
!1082 = !{!"_ZTSN5clang13SanitizerMaskE", !25, i64 0}
!1083 = !{!"_ZTSN5clang12SanitizerSetE", !1082, i64 0}
!1084 = !{!"_ZTSN5clang23HLSLControlFlowHintAttr8SpellingE", !25, i64 0}
!1085 = !{!"p1 _ZTSN5clang8CallExprE", !29, i64 0}
!1086 = !{!"p1 _ZTSN5clang7CodeGen11CGBlockInfoE", !29, i64 0}
!1087 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang9ValueDeclEPNS2_9FieldDeclEEE", !29, i64 0}
!1088 = !{!"_ZTSN4llvm8DenseMapIPKN5clang9ValueDeclEPNS1_9FieldDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEE", !1087, i64 0, !126, i64 8, !26, i64 16, !26, i64 20}
!1089 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang7VarDeclEPNS_5ValueEEE", !29, i64 0}
!1090 = !{!"_ZTSN4llvm8DenseMapIPKN5clang7VarDeclEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEE", !1089, i64 0, !126, i64 8, !26, i64 16, !26, i64 20}
!1091 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang7CodeGen11BranchFixupEvEE", !34, i64 0}
!1092 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang7CodeGen11BranchFixupELb1EEE", !1091, i64 0}
!1093 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang7CodeGen11BranchFixupEEE", !1092, i64 0}
!1094 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang7CodeGen11BranchFixupELj8EEE", !25, i64 0}
!1095 = !{!"_ZTSN4llvm11SmallVectorIN5clang7CodeGen11BranchFixupELj8EEE", !1093, i64 0, !1094, i64 16}
!1096 = !{!"_ZTSN5clang7CodeGen12EHScopeStackE", !68, i64 0, !68, i64 8, !68, i64 16, !1075, i64 24, !1075, i64 32, !31, i64 40, !1095, i64 48}
!1097 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIcvEE", !562, i64 0}
!1098 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIcLb1EEE", !1097, i64 0}
!1099 = !{!"_ZTSN4llvm15SmallVectorImplIcEE", !1098, i64 0}
!1100 = !{!"_ZTSN4llvm18SmallVectorStorageIcLj256EEE", !25, i64 0}
!1101 = !{!"_ZTSN4llvm11SmallVectorIcLj256EEE", !1099, i64 0, !1100, i64 24}
!1102 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang7CodeGen15CodeGenFunction25DeferredDeactivateCleanupEvEE", !34, i64 0}
!1103 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang7CodeGen15CodeGenFunction25DeferredDeactivateCleanupELb1EEE", !1102, i64 0}
!1104 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang7CodeGen15CodeGenFunction25DeferredDeactivateCleanupEEE", !1103, i64 0}
!1105 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang7CodeGen15CodeGenFunction25DeferredDeactivateCleanupELj3EEE", !25, i64 0}
!1106 = !{!"_ZTSN4llvm11SmallVectorIN5clang7CodeGen15CodeGenFunction25DeferredDeactivateCleanupELj3EEE", !1104, i64 0, !1105, i64 16}
!1107 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPKN5clang7CodeGen15CodeGenFunction8JumpDestEvEE", !34, i64 0}
!1108 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPKN5clang7CodeGen15CodeGenFunction8JumpDestELb1EEE", !1107, i64 0}
!1109 = !{!"_ZTSN4llvm15SmallVectorImplIPKN5clang7CodeGen15CodeGenFunction8JumpDestEEE", !1108, i64 0}
!1110 = !{!"_ZTSN4llvm18SmallVectorStorageIPKN5clang7CodeGen15CodeGenFunction8JumpDestELj2EEE", !25, i64 0}
!1111 = !{!"_ZTSN4llvm11SmallVectorIPKN5clang7CodeGen15CodeGenFunction8JumpDestELj2EEE", !1109, i64 0, !1110, i64 16}
!1112 = !{!"p1 _ZTSN4llvm11InstructionE", !29, i64 0}
!1113 = !{!"p1 _ZTSN4llvm10AllocaInstE", !29, i64 0}
!1114 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang7CodeGen7AddressEvEE", !34, i64 0}
!1115 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang7CodeGen7AddressELb1EEE", !1114, i64 0}
!1116 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang7CodeGen7AddressEEE", !1115, i64 0}
!1117 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang7CodeGen7AddressELj1EEE", !25, i64 0}
!1118 = !{!"_ZTSN4llvm11SmallVectorIN5clang7CodeGen7AddressELj1EEE", !1116, i64 0, !1117, i64 16}
!1119 = !{!"p1 _ZTSN5clang22OMPExecutableDirectiveE", !29, i64 0}
!1120 = !{!"_ZTSN5clang9FPOptionsE", !26, i64 0}
!1121 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_5ValueEvEE", !34, i64 0}
!1122 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EEE", !1121, i64 0}
!1123 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_5ValueEEE", !1122, i64 0}
!1124 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_5ValueELj8EEE", !25, i64 0}
!1125 = !{!"_ZTSN4llvm11SmallVectorIPNS_5ValueELj8EEE", !1123, i64 0, !1124, i64 16}
!1126 = !{!"p1 _ZTSN4llvm14IndirectBrInstE", !29, i64 0}
!1127 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang4DeclENS2_7CodeGen7AddressEEE", !29, i64 0}
!1128 = !{!"_ZTSN4llvm8DenseMapIPKN5clang4DeclENS1_7CodeGen7AddressENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEE", !1127, i64 0, !126, i64 8, !26, i64 16, !26, i64 20}
!1129 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang11ParmVarDeclENS2_7CodeGen12EHScopeStack15stable_iteratorEEE", !29, i64 0}
!1130 = !{!"_ZTSN4llvm8DenseMapIPKN5clang11ParmVarDeclENS1_7CodeGen12EHScopeStack15stable_iteratorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEE", !1129, i64 0, !126, i64 8, !26, i64 16, !26, i64 20}
!1131 = !{!"_ZTSN4llvm13SmallDenseMapIPKN5clang11ParmVarDeclEPKNS1_17ImplicitParamDeclELj2ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEE", !26, i64 0, !26, i64 0, !25, i64 8}
!1132 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_10AllocaInstEiEE", !29, i64 0}
!1133 = !{!"_ZTSN4llvm8DenseMapIPNS_10AllocaInstEiNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEEE", !1132, i64 0, !126, i64 8, !26, i64 16, !26, i64 20}
!1134 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang9LabelDeclENS2_7CodeGen15CodeGenFunction8JumpDestEEE", !29, i64 0}
!1135 = !{!"_ZTSN4llvm8DenseMapIPKN5clang9LabelDeclENS1_7CodeGen15CodeGenFunction8JumpDestENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEE", !1134, i64 0, !126, i64 8, !26, i64 16, !26, i64 20}
!1136 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang7CodeGen15CodeGenFunction13BreakContinueEvEE", !34, i64 0}
!1137 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang7CodeGen15CodeGenFunction13BreakContinueELb1EEE", !1136, i64 0}
!1138 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang7CodeGen15CodeGenFunction13BreakContinueEEE", !1137, i64 0}
!1139 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang7CodeGen15CodeGenFunction13BreakContinueELj8EEE", !25, i64 0}
!1140 = !{!"_ZTSN4llvm11SmallVectorIN5clang7CodeGen15CodeGenFunction13BreakContinueELj8EEE", !1138, i64 0, !1139, i64 16}
!1141 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang7CodeGen15CodeGenFunction21OpenMPCancelExitStack10CancelExitEvEE", !34, i64 0}
!1142 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang7CodeGen15CodeGenFunction21OpenMPCancelExitStack10CancelExitELb1EEE", !1141, i64 0}
!1143 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang7CodeGen15CodeGenFunction21OpenMPCancelExitStack10CancelExitEEE", !1142, i64 0}
!1144 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang7CodeGen15CodeGenFunction21OpenMPCancelExitStack10CancelExitELj8EEE", !25, i64 0}
!1145 = !{!"_ZTSN4llvm11SmallVectorIN5clang7CodeGen15CodeGenFunction21OpenMPCancelExitStack10CancelExitELj8EEE", !1143, i64 0, !1144, i64 16}
!1146 = !{!"_ZTSN5clang7CodeGen15CodeGenFunction21OpenMPCancelExitStackE", !1145, i64 0}
end_hunk_1
