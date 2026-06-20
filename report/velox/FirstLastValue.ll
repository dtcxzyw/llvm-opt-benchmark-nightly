inline.NumInlined: 1613
inline.NumDeleted: 862
begin_hunk_0_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE5applyERKN5boost13intrusive_ptrINS0_6BufferEEESC_SC_SC_RKNS0_17SelectivityVectorEiRKSt10shared_ptrINS0_10BaseVectorEE:bb.a
  br i1 %i.em, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.en = load i32, ptr %i.w, align 8, !tbaa !217 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !231
  %i.eq = icmp eq i32 %i.en, %i.ep
  br i1 %i.eq, label %bb.n, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.er = load ptr, ptr %5, align 8, !tbaa !204   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.en, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.es = and i32 %i.en, 2147483584               ; 3 uses
  %i.et = zext nneg i32 %i.es to i64
  %.not37.i.i.not.i.i.i139.not = icmp eq i32 %i.es, 0
  br i1 %.not37.i.i.not.i.i.i139.not, label %.critedge.i.i.i.i.i, label %.lr.ph

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i140, 64 ; 2 uses
  %.not37.i.i.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.et
  br i1 %.not37.i.i.not.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i, !llvm.loop !232

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %indvars.iv.i.i.i140 = phi i64 [ %indvars.iv.next.i.i.i, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.eu = lshr exact i64 %indvars.iv.i.i.i140, 3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !129
  %i.ex = icmp eq i64 %i.ew, -1
  br i1 %i.ex, label %bb.p, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, !llvm.loop !232

.critedge.i.i.i.i.i:                              ; preds = %bb.p, %bb.o
  %.not38.i.i.i.i.i = icmp eq i32 %i.en, %i.es
  br i1 %.not38.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.critedge.i.i.i.i.i
  %i.ey = lshr i32 %i.en, 6
  %i.ez = and i32 %i.en, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %notmask.i40.i.i.i.i.i = shl nsw i64 -1, %i.fa
  %i.fb = zext nneg i32 %i.ey to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !129
  %.demorgan.i.i.i = or i64 %i.fd, %notmask.i40.i.i.i.i.i
  %i.fe = icmp eq i64 %.demorgan.i.i.i, -1
  %i.ff = zext i1 %i.fe to i16
  %i.fg = or disjoint i16 %i.ff, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i: ; preds = %.lr.ph, %bb.q, %.critedge.i.i.i.i.i, %bb.n, %bb.m, %bb.l
  %.sroa.0.0.insert.ext.i.i.i = phi i16 [ 256, %bb.m ], [ 256, %bb.l ], [ 257, %bb.n ], [ 257, %.critedge.i.i.i.i.i ], [ %i.fg, %bb.q ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i, ptr %i.eh, align 4
  %i.fh = trunc i16 %.sroa.0.0.insert.ext.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i
  %.0.in.i.i.i = phi i8 [ %.0.in.pre.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.fh, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ]
  %.0.i.i.i = trunc nuw i8 %.0.in.i.i.i to i1
  %i.fi = load i32, ptr %i.u, align 4, !tbaa !216 ; 8 uses
  br i1 %.0.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.fj = load i32, ptr %i.w, align 8, !tbaa !217 ; 2 uses
  %i.fk = icmp slt i32 %i.fi, %i.fj
  br i1 %i.fk, label %.lr.ph.i11.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit.i

.lr.ph.i11.i:                                     ; preds = %bb.r, %.lr.ph.i11.i
  %.012.i.i = phi i32 [ %i.fl, %.lr.ph.i11.i ], [ %i.fi, %bb.r ] ; 2 uses
  call fastcc void @_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_(ptr noundef nonnull readonly align 8 dereferenceable(40) %9, i32 noundef %.012.i.i)
  %i.fl = add i32 %.012.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.fl, %i.fj
  br i1 %exitcond.not.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit.i, label %.lr.ph.i11.i, !llvm.loop !233

bb.s:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.fm = load ptr, ptr %5, align 8, !tbaa !204   ; 5 uses
  %i.fn = load i32, ptr %i.w, align 8, !tbaa !217 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.c, ptr %.sroa.39.0..sroa_idx.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.d, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.b, ptr %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.a, ptr %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %0, ptr %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  store i8 1, ptr %8, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.fm, ptr %.sroa.28.0..sroa_idx.i.i.i.i, align 8
  %.not.i.i.i.i.i = icmp slt i32 %i.fi, %i.fn
  br i1 %.not.i.i.i.i.i, label %bb.t, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiiSI_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.fo = add i32 %i.fi, 63                       ; 2 uses
  %i.fp = srem i32 %i.fo, 64
  %i.fq = sub nsw i32 %i.fo, %i.fp                ; 6 uses
  %i.fr = and i32 %i.fn, -64                      ; 6 uses
  %i.fs = icmp slt i32 %i.fr, %i.fq
  br i1 %i.fs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ft = ashr i32 %i.fn, 6
  %i.fu = and i32 %i.fn, 63
  %i.fv = zext nneg i32 %i.fu to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.fv
  %i.fw = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.fx = sub nsw i32 %i.fq, %i.fi                ; 2 uses
  %i.fy = zext nneg i32 %i.fx to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.fy
  %i.fz = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.ga = sub nsw i32 64, %i.fx
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = shl i64 %i.fz, %i.gb
  %i.gd = and i64 %i.gc, %i.fw
  %i.ge = sext i32 %i.ft to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !129
  %i.gh = and i64 %i.gd, %i.gg                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiiSI_.exit.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.u, %.preheader.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.gm, %.preheader.i.i.i.i.i.i ], [ %i.gh, %bb.u ] ; 3 uses
  %i.gi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i, i1 true)
  %i.gj = trunc nuw nsw i64 %i.gi to i32
  %i.gk = or disjoint i32 %i.fr, %i.gj
  call fastcc void @_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i.i, i32 noundef %i.gk)
  %i.gl = add nsw i64 %.011.i.i.i.i.i.i, -1
  %i.gm = and i64 %i.gl, %.011.i.i.i.i.i.i        ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.gm, 0
  br i1 %.not10.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiiSI_.exit.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !234

bb.v:                                             ; preds = %bb.t
  %.not32.i.i.i.i.i = icmp eq i32 %i.fi, %i.fq
  br i1 %.not32.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gn = sdiv i32 %i.fi, 64                      ; 2 uses
  %i.go = sub nsw i32 %i.fq, %i.fi                ; 2 uses
  %i.gp = zext nneg i32 %i.go to i64
  %notmask.i.i35.i.i.i.i.i = shl nsw i64 -1, %i.gp
  %i.gq = xor i64 %notmask.i.i35.i.i.i.i.i, -1
  %i.gr = sub nsw i32 64, %i.go
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = shl i64 %i.gq, %i.gs
  %i.gu = sext i32 %i.gn to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !129
  %i.gx = and i64 %i.gw, %i.gt                    ; 2 uses
  %.not.i36.i.i.i.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not.i36.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit40.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i

.preheader.i37.i.i.i.i.i:                         ; preds = %bb.w
  %i.gy = shl nsw i32 %i.gn, 6
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader.i37.i.i.i.i.i
  %.011.i38.i.i.i.i.i = phi i64 [ %i.gx, %.preheader.i37.i.i.i.i.i ], [ %i.hd, %bb.x ] ; 3 uses
  %i.gz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i.i, i1 true)
  %i.ha = trunc nuw nsw i64 %i.gz to i32
  %i.hb = or disjoint i32 %i.gy, %i.ha
  call fastcc void @_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i.i, i32 noundef %i.hb)
  %i.hc = add i64 %.011.i38.i.i.i.i.i, -1
  %i.hd = and i64 %i.hc, %.011.i38.i.i.i.i.i      ; 2 uses
  %.not10.i39.i.i.i.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not10.i39.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.x, !llvm.loop !234

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit40.i.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.he = add nsw i32 %i.fq, 64                   ; 2 uses
  %.not3354.i.i.i.i.i = icmp sgt i32 %i.he, %i.fr
  br i1 %.not3354.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit40.i.i.i.i.i
  %i.hf = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.hg = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.hh = load ptr, ptr %i.b, align 8             ; 8 uses
  %i.hi = load ptr, ptr %i.i, align 8             ; 2 uses
  br label %bb.y

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit40.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i32 %i.fn, %i.fr
  br i1 %.not34.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiiSI_.exit.i.i, label %bb.aq

bb.y:                                             ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.hj = phi i32 [ %i.he, %.lr.ph.i.i.i.i.i ], [ %i.mq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i ] ; 2 uses
  %.055.i.i.i.i.i = phi i32 [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %i.hj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i ] ; 2 uses
  %i.hk = sdiv i32 %.055.i.i.i.i.i, 64            ; 3 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.hl
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !129 ; 2 uses
  switch i64 %i.hn, label %.lr.ph.i.i.i.i.i.i [
    i64 -1, label %bb.z
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.y
  %i.ho = shl nsw i32 %i.hk, 6
  br label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.hp = shl nsw i32 %i.hk, 6                    ; 2 uses
  %i.hq = add i32 %i.hp, 64
  %i.hr = sext i32 %i.hq to i64
  %.0.off.i.i.i.i.i = add i32 %.055.i.i.i.i.i, 127
  %.not23.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i, 64
  br i1 %.not23.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i

.lr.ph22.i.i.i.i.i.i:                             ; preds = %bb.z
  %i.hs = sext i32 %i.hp to i64
  br label %bb.aa

bb.aa:                                            ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i, %.lr.ph22.i.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.hs, %.lr.ph22.i.i.i.i.i.i ], [ %i.kc, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i ] ; 4 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %.021.i.i.i.i.i.i
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3  ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.021.i.i.i.i.i.i
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3  ; 2 uses
  %i.hx = load i32, ptr %i.a, align 4, !tbaa !3   ; 3 uses
  %i.hy = sub nsw i32 %i.hu, %i.hx                ; 5 uses
  %i.hz = sub nsw i32 %i.hw, %i.hx
  %i.ia = add nsw i32 %i.hz, 1                    ; 6 uses
  %.not.i.i.not.i.i.i.i.i.i.i = icmp sgt i32 %i.hu, %i.hw
  br i1 %.not.i.i.not.i.i.i.i.i.i.i, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ib = add i32 %i.hy, 63                       ; 2 uses
  %i.ic = srem i32 %i.ib, 64
  %i.id = sub nsw i32 %i.ib, %i.ic                ; 5 uses
  %i.ie = and i32 %i.ia, -64                      ; 5 uses
  %i.if = icmp slt i32 %i.ie, %i.id
  br i1 %i.if, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ig = ashr i32 %i.ia, 6
  %i.ih = and i32 %i.ia, 63
  %i.ii = zext nneg i32 %i.ih to i64
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ii
  %i.ij = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1
  %i.ik = sub nsw i32 %i.id, %i.hy                ; 2 uses
  %i.il = zext nneg i32 %i.ik to i64
  %notmask.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.il
  %i.im = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.in = sub nsw i32 64, %i.ik
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = shl i64 %i.im, %i.io
  %i.iq = and i64 %i.ip, %i.ij
  %i.ir = sext i32 %i.ig to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.ir
  %i.it = load i64, ptr %i.is, align 8, !tbaa !129
  %i.iu = and i64 %i.iq, %i.it                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %.not36.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.hy, %i.id
  br i1 %.not36.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.preheader, label %bb.ae

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.ae, %bb.ad
  br label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.iv = sdiv i32 %i.hy, 64                      ; 2 uses
  %i.iw = sub nsw i32 %i.id, %i.hy                ; 2 uses
  %i.ix = zext nneg i32 %i.iw to i64
  %notmask.i.i39.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ix
  %i.iy = xor i64 %notmask.i.i39.i.i.i.i.i.i.i.i.i, -1
  %i.iz = sub nsw i32 64, %i.iw
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = shl i64 %i.iy, %i.ja
  %i.jc = sext i32 %i.iv to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.jc
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !129
  %i.jf = and i64 %i.je, %i.jb                    ; 2 uses
  %.not.i40.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jf, 0
  br i1 %.not.i40.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.preheader, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i.i

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  %i.jg = shl nsw i32 %i.iv, 6
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.preheader, %bb.af
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jh, %bb.af ], [ %i.id, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.jh = add nsw i32 %.0.i.i.i.i.i.i.i.i.i, 64   ; 2 uses
  %.not37.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.jh, %i.ie
  br i1 %.not37.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i
  %i.ji = sdiv i32 %.0.i.i.i.i.i.i.i.i.i, 64      ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.jj
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !129 ; 2 uses
  %.not.i42.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jl, 0
  br i1 %.not.i42.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i, label %bb.ag, !llvm.loop !235

bb.ag:                                            ; preds = %bb.af
  %i.jm = shl nsw i32 %i.ji, 6
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i
  %.not38.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ia, %i.ie
  br i1 %.not38.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i
  %i.jn = ashr i32 %i.ia, 6
  %i.jo = and i32 %i.ia, 63
  %i.jp = zext nneg i32 %i.jo to i64
  %notmask.i43.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.jp
  %i.jq = xor i64 %notmask.i43.i.i.i.i.i.i.i.i.i, -1
  %i.jr = sext i32 %i.jn to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.jr
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !129
  %i.ju = and i64 %i.jt, %i.jq                    ; 2 uses
  %.not.i44.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ju, 0
  br i1 %.not.i44.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i.i, %bb.ac
  %.sink67.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iu, %bb.ac ], [ %i.jl, %bb.ag ], [ %i.jf, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i.i ], [ %i.ju, %bb.ah ]
  %.sink65.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ie, %bb.ac ], [ %i.jm, %bb.ag ], [ %i.jg, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i.i ], [ %i.ie, %bb.ah ]
  %i.jv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i.i.i.i.i.i.i, i1 true)
  %i.jw = trunc nuw nsw i64 %i.jv to i32
  %i.jx = or disjoint i32 %.sink65.i.i.i.i.i.i.i.i.i, %i.jw ; 2 uses
  %i.jy = icmp eq i32 %i.jx, -1
  %i.jz = add nsw i32 %i.jx, %i.hx
  %spec.select.i.i.i.i.i.i.i = select i1 %i.jy, i32 -1, i32 %i.jz
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i, %bb.ah, %.critedge.i.i.i.i.i.i.i.i.i, %bb.ac, %bb.aa
  %i.ka = phi i32 [ -1, %bb.aa ], [ %spec.select.i.i.i.i.i.i.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i.i ], [ -1, %bb.ac ], [ -1, %.critedge.i.i.i.i.i.i.i.i.i ], [ -1, %bb.ah ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.021.i.i.i.i.i.i
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !3
  %i.kc = add nuw i64 %.021.i.i.i.i.i.i, 1        ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.hr
  br i1 %i.kd, label %bb.aa, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !236

bb.ai:                                            ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.01520.i.i.i.i.i.i = phi i64 [ %i.hn, %.lr.ph.i.i.i.i.i.i ], [ %i.mp, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i ] ; 3 uses
  %i.ke = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01520.i.i.i.i.i.i, i1 true)
  %10 = trunc nuw nsw i64 %i.ke to i32
  %11 = or disjoint i32 %i.ho, %10
  %12 = sext i32 %11 to i64                       ; 3 uses
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %12
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !3  ; 2 uses
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %12
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3  ; 2 uses
  %i.kj = load i32, ptr %i.a, align 4, !tbaa !3   ; 3 uses
  %i.kk = sub nsw i32 %i.kg, %i.kj                ; 5 uses
  %i.kl = sub nsw i32 %i.ki, %i.kj
  %i.km = add nsw i32 %i.kl, 1                    ; 6 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp sgt i32 %i.kg, %i.ki
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kn = add i32 %i.kk, 63                       ; 2 uses
  %i.ko = srem i32 %i.kn, 64
  %i.kp = sub nsw i32 %i.kn, %i.ko                ; 5 uses
  %i.kq = and i32 %i.km, -64                      ; 5 uses
  %i.kr = icmp slt i32 %i.kq, %i.kp
  br i1 %i.kr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ks = ashr i32 %i.km, 6
  %i.kt = and i32 %i.km, 63
  %i.ku = zext nneg i32 %i.kt to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ku
  %i.kv = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.kw = sub nsw i32 %i.kp, %i.kk                ; 2 uses
  %i.kx = zext nneg i32 %i.kw to i64
  %notmask.i.i.i.i.i48.i.i.i.i.i = shl nsw i64 -1, %i.kx
  %i.ky = xor i64 %notmask.i.i.i.i.i48.i.i.i.i.i, -1
  %i.kz = sub nsw i32 64, %i.kw
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl i64 %i.ky, %i.la
  %i.lc = and i64 %i.lb, %i.kv
  %i.ld = sext i32 %i.ks to i64
  %i.le = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.ld
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !129
  %i.lg = and i64 %i.lc, %i.lf                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.lg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %.not36.i.i.i.i.i.i.i.i = icmp eq i32 %i.kk, %i.kp
  br i1 %.not36.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.preheader, label %bb.am

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.am, %bb.al
  br label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.lh = sdiv i32 %i.kk, 64                      ; 2 uses
  %i.li = sub nsw i32 %i.kp, %i.kk                ; 2 uses
  %i.lj = zext nneg i32 %i.li to i64
  %notmask.i.i39.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.lj
  %i.lk = xor i64 %notmask.i.i39.i.i.i.i.i.i.i.i, -1
  %i.ll = sub nsw i32 64, %i.li
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = shl i64 %i.lk, %i.lm
  %i.lo = sext i32 %i.lh to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.lo
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !129
  %i.lr = and i64 %i.lq, %i.ln                    ; 2 uses
  %.not.i40.i.i.i.i.i.i.i.i = icmp eq i64 %i.lr, 0
  br i1 %.not.i40.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.preheader, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.ls = shl nsw i32 %i.lh, 6
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.preheader, %bb.an
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.lt, %bb.an ], [ %i.kp, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.lt = add nsw i32 %.0.i.i.i.i.i.i.i.i, 64     ; 2 uses
  %.not37.i.i.i.i.i.i.i.i = icmp sgt i32 %i.lt, %i.kq
  br i1 %.not37.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.lu = sdiv i32 %.0.i.i.i.i.i.i.i.i, 64        ; 2 uses
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.lv
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !129 ; 2 uses
  %.not.i42.i.i.i.i.i.i.i.i = icmp eq i64 %i.lx, 0
  br i1 %.not.i42.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %bb.ao, !llvm.loop !235

bb.ao:                                            ; preds = %bb.an
  %i.ly = shl nsw i32 %i.lu, 6
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %.not38.i.i.i.i.i.i.i.i = icmp eq i32 %i.km, %i.kq
  br i1 %.not38.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i
  %i.lz = ashr i32 %i.km, 6
  %i.ma = and i32 %i.km, 63
  %i.mb = zext nneg i32 %i.ma to i64
  %notmask.i43.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.mb
  %i.mc = xor i64 %notmask.i43.i.i.i.i.i.i.i.i, -1
  %i.md = sext i32 %i.lz to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.md
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !129
  %i.mg = and i64 %i.mf, %i.mc                    ; 2 uses
  %.not.i44.i.i.i.i.i.i.i.i = icmp eq i64 %i.mg, 0
  br i1 %.not.i44.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i, %bb.ak
  %.sink67.i.i.i.i.i.i.i.i = phi i64 [ %i.lg, %bb.ak ], [ %i.lx, %bb.ao ], [ %i.lr, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i ], [ %i.mg, %bb.ap ]
  %.sink65.i.i.i.i.i.i.i.i = phi i32 [ %i.kq, %bb.ak ], [ %i.ly, %bb.ao ], [ %i.ls, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i.i.i.i.i.i.i ], [ %i.kq, %bb.ap ]
  %i.mh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i.i.i.i.i.i, i1 true)
  %i.mi = trunc nuw nsw i64 %i.mh to i32
  %i.mj = or disjoint i32 %.sink65.i.i.i.i.i.i.i.i, %i.mi ; 2 uses
  %i.mk = icmp eq i32 %i.mj, -1
  %i.ml = add nsw i32 %i.mj, %i.kj
  %spec.select.i.i.i.i.i.i = select i1 %i.mk, i32 -1, i32 %i.ml
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i, %bb.ap, %.critedge.i.i.i.i.i.i.i.i, %bb.ak, %bb.ai
  %i.mm = phi i32 [ -1, %bb.ai ], [ %spec.select.i.i.i.i.i.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i.i.i.i ], [ -1, %bb.ak ], [ -1, %.critedge.i.i.i.i.i.i.i.i ], [ -1, %bb.ap ]
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %12
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !3
  %i.mo = add i64 %.01520.i.i.i.i.i.i, -1
  %i.mp = and i64 %i.mo, %.01520.i.i.i.i.i.i      ; 2 uses
  %.not.i41.i.i.i.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not.i41.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.ai, !llvm.loop !237

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i, %bb.z, %bb.y
  %i.mq = add nsw i32 %i.hj, 64                   ; 2 uses
  %.not33.i.i.i.i.i = icmp sgt i32 %i.mq, %i.fr
  br i1 %.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.y, !llvm.loop !238

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.mr = ashr i32 %i.fn, 6
  %i.ms = and i32 %i.fn, 63
  %i.mt = zext nneg i32 %i.ms to i64
  %notmask.i42.i.i.i.i.i = shl nsw i64 -1, %i.mt
  %i.mu = xor i64 %notmask.i42.i.i.i.i.i, -1
  %i.mv = sext i32 %i.mr to i64
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.mv
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !129
  %i.my = and i64 %i.mx, %i.mu                    ; 2 uses
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.my, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiiSI_.exit.i.i, label %.preheader.i44.i.i.i.i.i

.preheader.i44.i.i.i.i.i:                         ; preds = %bb.aq, %.preheader.i44.i.i.i.i.i
  %.011.i45.i.i.i.i.i = phi i64 [ %i.nd, %.preheader.i44.i.i.i.i.i ], [ %i.my, %bb.aq ] ; 3 uses
  %i.mz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i.i, i1 true)
  %i.na = trunc nuw nsw i64 %i.mz to i32
  %i.nb = or disjoint i32 %i.fr, %i.na
  call fastcc void @_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i.i, i32 noundef %i.nb)
  %i.nc = add nsw i64 %.011.i45.i.i.i.i.i, -1
  %i.nd = and i64 %i.nc, %.011.i45.i.i.i.i.i      ; 2 uses
  %.not10.i46.i.i.i.i.i = icmp eq i64 %i.nd, 0
  br i1 %.not10.i46.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiiSI_.exit.i.i, label %.preheader.i44.i.i.i.i.i, !llvm.loop !234

_ZN8facebook5velox4bits13forEachSetBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiiSI_.exit.i.i: ; preds = %.preheader.i44.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.aq, %._crit_edge.i.i.i.i.i, %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit.i

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit.i: ; preds = %.lr.ph.i11.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiiSI_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

bb.ar:                                            ; preds = %bb.e
  %.val = load ptr, ptr %3, align 8, !tbaa !202
  %i.ne = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.ne, align 8, !tbaa !197
  tail call fastcc void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(38) %5, ptr %.val.val)
  br label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit: ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit.i, %bb.g, %bb.ar, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.nf = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !168, !range !64, !noundef !65
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.as

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit
  %.0.in.pre.i.i = load i8, ptr %i.nf, align 4, !tbaa !138, !range !64
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.as:                                            ; preds = %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit
  %i.nj = load i32, ptr %i.u, align 4, !tbaa !216
  %i.nk = icmp eq i32 %i.nj, 0
  br i1 %i.nk, label %bb.at, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.nl = load i32, ptr %i.w, align 8, !tbaa !217 ; 6 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !231
  %i.no = icmp eq i32 %i.nl, %i.nn
  br i1 %i.no, label %bb.au, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.au:                                            ; preds = %bb.at
  %i.np = load ptr, ptr %5, align 8, !tbaa !204   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.nl, 0
  br i1 %.not.i.i.i, label %bb.av, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.av:                                            ; preds = %bb.au
  %i.nq = and i32 %i.nl, 2147483584               ; 3 uses
  %i.nr = zext nneg i32 %i.nq to i64
  %.not37.i.i.not.i.i141.not = icmp eq i32 %i.nq, 0
  br i1 %.not37.i.i.not.i.i141.not, label %.critedge.i.i.i.i, label %.lr.ph143

bb.aw:                                            ; preds = %.lr.ph143
  %indvars.iv.next.i.i49 = add nuw nsw i64 %indvars.iv.i.i48142, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i49, %i.nr
  br i1 %.not37.i.i.not.i.i, label %.lr.ph143, label %.critedge.i.i.i.i, !llvm.loop !232

.lr.ph143:                                        ; preds = %bb.av, %bb.aw
  %indvars.iv.i.i48142 = phi i64 [ %indvars.iv.next.i.i49, %bb.aw ], [ 0, %bb.av ] ; 2 uses
  %i.ns = lshr exact i64 %indvars.iv.i.i48142, 3
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.ns
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !129
  %i.nv = icmp eq i64 %i.nu, -1
  br i1 %i.nv, label %bb.aw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !232

.critedge.i.i.i.i:                                ; preds = %bb.aw, %bb.av
  %.not38.i.i.i.i = icmp eq i32 %i.nl, %i.nq
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %.critedge.i.i.i.i
  %i.nw = lshr i32 %i.nl, 6
  %i.nx = and i32 %i.nl, 63
  %i.ny = zext nneg i32 %i.nx to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ny
  %i.nz = zext nneg i32 %i.nw to i64
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.nz
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !129
  %.demorgan.i.i = or i64 %i.ob, %notmask.i40.i.i.i.i
  %i.oc = icmp eq i64 %.demorgan.i.i, -1
  %i.od = zext i1 %i.oc to i16
  %i.oe = or disjoint i16 %i.od, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph143, %bb.ax, %.critedge.i.i.i.i, %bb.au, %bb.at, %bb.as
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.at ], [ 256, %bb.as ], [ 257, %bb.au ], [ 257, %.critedge.i.i.i.i ], [ %i.oe, %bb.ax ], [ 256, %.lr.ph143 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.nf, align 4
  %i.of = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.of, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !231 ; 3 uses
  %i.oj = sext i32 %i.oi to i64
  %i.ok = add nsw i64 %i.oj, 63
  %i.ol = lshr i64 %i.ok, 6                       ; 4 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !239 ; 4 uses
  %i.oo = load ptr, ptr %i.og, align 8, !tbaa !204 ; 5 uses
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = ptrtoint ptr %i.oo to i64               ; 4 uses
  %i.or = sub i64 %i.op, %i.oq
  %i.os = ashr exact i64 %i.or, 3                 ; 3 uses
  %i.ot = icmp ugt i64 %i.ol, %i.os
  br i1 %i.ot, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ou = sub nuw nsw i64 %i.ol, %i.os
  call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(38) %i.og, i64 noundef %i.ou)
  %.pre.i.i = load ptr, ptr %i.og, align 8, !tbaa !229 ; 2 uses
  %.pre7.i.i = load ptr, ptr %i.om, align 8, !tbaa !229
  %.pre.i = ptrtoint ptr %.pre.i.i to i64
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.ov = icmp ult i64 %i.ol, %i.os
  br i1 %i.ov, label %bb.bb, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.ol ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.on, %i.ow
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.bb
  store ptr %i.ow, ptr %i.om, align 8, !tbaa !239
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i

_ZNSt6vectorImSaImEE6resizeEm.exit.i.i:           ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.bb, %bb.ba, %bb.az
  %.pre-phi.i = phi i64 [ %i.oq, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.oq, %bb.bb ], [ %i.oq, %bb.ba ], [ %.pre.i, %bb.az ]
  %i.ox = phi ptr [ %i.ow, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.on, %bb.bb ], [ %i.on, %bb.ba ], [ %.pre7.i.i, %bb.az ] ; 2 uses
  %i.oy = phi ptr [ %i.oo, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.oo, %bb.bb ], [ %i.oo, %bb.ba ], [ %.pre.i.i, %bb.az ] ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.oy, %i.ox
  br i1 %.not5.i.i.i.i.i.i, label %_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i
  %i.oz = ptrtoint ptr %i.ox to i64
  %reass.sub = sub i64 %i.oz, %.pre-phi.i
  %i.pa = and i64 %reass.sub, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.oy, i8 -1, i64 %i.pa, i1 false), !tbaa !129
  br label %_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i

_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i32 %i.oi, ptr %i.pb, align 8, !tbaa !231
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  store i32 0, ptr %i.pc, align 4, !tbaa !216
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  store i32 %i.oi, ptr %i.pd, align 8, !tbaa !217
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  store i16 257, ptr %i.pe, align 4
  call void @_ZN8facebook5velox17SelectivityVector8deselectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.og, ptr noundef nonnull align 8 dereferenceable(38) %5)
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 165
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !168, !range !64, !noundef !65
  %i.ph = trunc nuw i8 %i.pg to i1
  br i1 %i.ph, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i45, label %bb.bc

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i45: ; preds = %_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i
  %.0.in.pre.i.i.i46 = load i8, ptr %i.pe, align 4, !tbaa !138, !range !64
  %.pre = load i32, ptr %i.pc, align 4, !tbaa !216
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i16

bb.bc:                                            ; preds = %_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i
  %i.pi = load i32, ptr %i.pc, align 4, !tbaa !216 ; 2 uses
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %bb.bd, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14

bb.bd:                                            ; preds = %bb.bc
  %i.pk = load i32, ptr %i.pd, align 8, !tbaa !217 ; 6 uses
  %i.pl = load i32, ptr %i.pb, align 8, !tbaa !231
  %i.pm = icmp eq i32 %i.pk, %i.pl
  br i1 %i.pm, label %bb.be, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14

bb.be:                                            ; preds = %bb.bd
  %i.pn = load ptr, ptr %i.og, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i6.i = icmp sgt i32 %i.pk, 0
  br i1 %.not.i.i.i6.i, label %bb.bf, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14

bb.bf:                                            ; preds = %bb.be
  %i.po = and i32 %i.pk, 2147483584               ; 3 uses
  %i.pp = zext nneg i32 %i.po to i64
  %.not37.i.i.not.i.i.i39144.not = icmp eq i32 %i.po, 0
  br i1 %.not37.i.i.not.i.i.i39144.not, label %.critedge.i.i.i.i.i40, label %.lr.ph146

bb.bg:                                            ; preds = %.lr.ph146
  %indvars.iv.next.i.i.i44 = add nuw nsw i64 %indvars.iv.i.i.i38145, 64 ; 2 uses
  %.not37.i.i.not.i.i.i39 = icmp samesign ult i64 %indvars.iv.next.i.i.i44, %i.pp
  br i1 %.not37.i.i.not.i.i.i39, label %.lr.ph146, label %.critedge.i.i.i.i.i40, !llvm.loop !232

.lr.ph146:                                        ; preds = %bb.bf, %bb.bg
  %indvars.iv.i.i.i38145 = phi i64 [ %indvars.iv.next.i.i.i44, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %i.pq = lshr exact i64 %indvars.iv.i.i.i38145, 3
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pq
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !129
  %i.pt = icmp eq i64 %i.ps, -1
  br i1 %i.pt, label %bb.bg, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14, !llvm.loop !232

.critedge.i.i.i.i.i40:                            ; preds = %bb.bg, %bb.bf
  %.not38.i.i.i.i.i41 = icmp eq i32 %i.pk, %i.po
  br i1 %.not38.i.i.i.i.i41, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14, label %bb.bh

bb.bh:                                            ; preds = %.critedge.i.i.i.i.i40
  %i.pu = lshr i32 %i.pk, 6
  %i.pv = and i32 %i.pk, 63
  %i.pw = zext nneg i32 %i.pv to i64
  %notmask.i40.i.i.i.i.i42 = shl nsw i64 -1, %i.pw
  %i.px = zext nneg i32 %i.pu to i64
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.px
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !129
  %.demorgan.i.i.i43 = or i64 %i.pz, %notmask.i40.i.i.i.i.i42
  %i.qa = icmp eq i64 %.demorgan.i.i.i43, -1
  %i.qb = zext i1 %i.qa to i16
  %i.qc = or disjoint i16 %i.qb, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14: ; preds = %.lr.ph146, %bb.bh, %.critedge.i.i.i.i.i40, %bb.be, %bb.bd, %bb.bc
  %.sroa.0.0.insert.ext.i.i.i15 = phi i16 [ 256, %bb.bd ], [ 256, %bb.bc ], [ 257, %bb.be ], [ 257, %.critedge.i.i.i.i.i40 ], [ %i.qc, %bb.bh ], [ 256, %.lr.ph146 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i15, ptr %i.pe, align 4
  %i.qd = trunc i16 %.sroa.0.0.insert.ext.i.i.i15 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i16

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i16: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i45
  %i.qe = phi i32 [ %.pre, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i45 ], [ %i.pi, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14 ] ; 9 uses
  %.0.in.i.i.i17 = phi i8 [ %.0.in.pre.i.i.i46, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i45 ], [ %i.qd, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14 ]
  %.0.i.i.i18 = trunc nuw i8 %.0.in.i.i.i17 to i1
  br i1 %.0.i.i.i18, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i16
  %i.qf = load i32, ptr %i.pd, align 8, !tbaa !217 ; 2 uses
  %i.qg = icmp slt i32 %i.qe, %i.qf
  br i1 %i.qg, label %.lr.ph.i.i37, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit

.lr.ph.i.i37:                                     ; preds = %bb.bi
  %.val.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !206
  %i.qh = sext i32 %i.qe to i64
  %i.qi = shl nsw i64 %i.qh, 2
  %scevgep.i.i = getelementptr nuw i8, ptr %.val.val.i.i, i64 %i.qi
  %i.qj = xor i32 %i.qe, -1
  %i.qk = add i32 %i.qf, %i.qj
  %i.ql = zext i32 %i.qk to i64
  %i.qm = shl nuw nsw i64 %i.ql, 2
  %i.qn = add nuw nsw i64 %i.qm, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 -1, i64 %i.qn, i1 false), !tbaa !3
  br label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit

bb.bj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i16
  %i.qo = load ptr, ptr %i.og, align 8, !tbaa !204 ; 4 uses
  %i.qp = load i32, ptr %i.pd, align 8, !tbaa !217 ; 7 uses
  %.not.i.i.i.i.i19 = icmp slt i32 %i.qe, %i.qp
  br i1 %.not.i.i.i.i.i19, label %bb.bk, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit

bb.bk:                                            ; preds = %bb.bj
  %i.qq = add i32 %i.qe, 63                       ; 2 uses
  %i.qr = srem i32 %i.qq, 64
  %i.qs = sub nsw i32 %i.qq, %i.qr                ; 6 uses
  %i.qt = and i32 %i.qp, -64                      ; 6 uses
  %i.qu = icmp slt i32 %i.qt, %i.qs
  br i1 %i.qu, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.qv = ashr i32 %i.qp, 6
  %i.qw = and i32 %i.qp, 63
  %i.qx = zext nneg i32 %i.qw to i64
  %notmask.i.i.i.i.i.i32 = shl nsw i64 -1, %i.qx
  %i.qy = xor i64 %notmask.i.i.i.i.i.i32, -1
  %i.qz = sub nsw i32 %i.qs, %i.qe                ; 2 uses
  %i.ra = zext nneg i32 %i.qz to i64
  %notmask.i.i.i.i.i.i.i33 = shl nsw i64 -1, %i.ra
  %i.rb = xor i64 %notmask.i.i.i.i.i.i.i33, -1
  %i.rc = sub nsw i32 64, %i.qz
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = shl i64 %i.rb, %i.rd
  %i.rf = and i64 %i.re, %i.qy
  %i.rg = sext i32 %i.qv to i64
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.rg
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !129
  %i.rj = and i64 %i.rf, %i.ri                    ; 2 uses
  %.not.i.i.i.i.i5.i = icmp eq i64 %i.rj, 0
  br i1 %.not.i.i.i.i.i5.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %.preheader.i.i.i.i.i.i34

.preheader.i.i.i.i.i.i34:                         ; preds = %bb.bl
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !206
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.preheader.i.i.i.i.i.i34
  %.011.i.i.i.i.i.i35 = phi i64 [ %i.rj, %.preheader.i.i.i.i.i.i34 ], [ %i.rn, %bb.bm ] ; 3 uses
  %i.rk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i35, i1 true)
  %13 = trunc nuw nsw i64 %i.rk to i32
  %14 = or disjoint i32 %i.qt, %13
  %15 = sext i32 %14 to i64
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i.i.i, i64 %15
  store i32 -1, ptr %i.rl, align 4, !tbaa !3
  %i.rm = add nsw i64 %.011.i.i.i.i.i.i35, -1
  %i.rn = and i64 %i.rm, %.011.i.i.i.i.i.i35      ; 2 uses
  %.not10.i.i.i.i.i.i36 = icmp eq i64 %i.rn, 0
  br i1 %.not10.i.i.i.i.i.i36, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %bb.bm, !llvm.loop !240

bb.bn:                                            ; preds = %bb.bk
  %.not32.i.i.i.i.i20 = icmp eq i32 %i.qe, %i.qs
  br i1 %.not32.i.i.i.i.i20, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ro = sdiv i32 %i.qe, 64                      ; 2 uses
  %i.rp = sub nsw i32 %i.qs, %i.qe                ; 2 uses
  %i.rq = zext nneg i32 %i.rp to i64
  %notmask.i.i35.i.i.i.i.i21 = shl nsw i64 -1, %i.rq
  %i.rr = xor i64 %notmask.i.i35.i.i.i.i.i21, -1
  %i.rs = sub nsw i32 64, %i.rp
  %i.rt = zext nneg i32 %i.rs to i64
  %i.ru = shl i64 %i.rr, %i.rt
  %i.rv = sext i32 %i.ro to i64
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.rv
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !129
  %i.ry = and i64 %i.rx, %i.ru                    ; 2 uses
  %.not.i36.i.i.i.i.i22 = icmp eq i64 %i.ry, 0
  br i1 %.not.i36.i.i.i.i.i22, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i23

.preheader.i37.i.i.i.i.i23:                       ; preds = %bb.bo
  %i.rz = shl nsw i32 %i.ro, 6
  %.val.val.i39.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !206
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.preheader.i37.i.i.i.i.i23
  %.011.i40.i.i.i.i.i = phi i64 [ %i.ry, %.preheader.i37.i.i.i.i.i23 ], [ %i.sd, %bb.bp ] ; 3 uses
  %i.sa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40.i.i.i.i.i, i1 true)
  %16 = trunc nuw nsw i64 %i.sa to i32
  %17 = or disjoint i32 %i.rz, %16
  %18 = sext i32 %17 to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i39.i.i.i.i.i, i64 %18
  store i32 -1, ptr %i.sb, align 4, !tbaa !3
  %i.sc = add i64 %.011.i40.i.i.i.i.i, -1
  %i.sd = and i64 %i.sc, %.011.i40.i.i.i.i.i      ; 2 uses
  %.not10.i41.i.i.i.i.i = icmp eq i64 %i.sd, 0
  br i1 %.not10.i41.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i, label %bb.bp, !llvm.loop !240

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.se = add nsw i32 %i.qs, 64                   ; 2 uses
  %.not3355.i.i.i.i.i = icmp sgt i32 %i.se, %i.qt
  br i1 %.not3355.i.i.i.i.i, label %._crit_edge.i.i.i.i.i26, label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i
  %.val17.val.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 2 uses
  br label %bb.bq

._crit_edge.i.i.i.i.i26:                          ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i
  %.not34.i.i.i.i.i27 = icmp eq i32 %i.qp, %i.qt
  br i1 %.not34.i.i.i.i.i27, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %bb.bt

bb.bq:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i24
  %i.sf = phi i32 [ %i.se, %.lr.ph.i.i.i.i.i24 ], [ %i.sx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i = phi i32 [ %i.qs, %.lr.ph.i.i.i.i.i24 ], [ %i.sf, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i ] ; 2 uses
  %i.sg = sdiv i32 %.056.i.i.i.i.i, 64            ; 3 uses
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.sh
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !129 ; 2 uses
  switch i64 %i.sj, label %.lr.ph.i.i.i.i.i4.i [
    i64 -1, label %bb.br
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i4.i:                              ; preds = %bb.bq
  %i.sk = shl nsw i32 %i.sg, 6
  br label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.0.off.i.i.i.i.i28 = add i32 %.056.i.i.i.i.i, 127
  %.not23.i.i.i.i.i.i29 = icmp ult i32 %.0.off.i.i.i.i.i28, 64
  br i1 %.not23.i.i.i.i.i.i29, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i30

.lr.ph22.i.i.i.i.i.i30:                           ; preds = %bb.br
  %i.sl = shl nsw i32 %i.sg, 6                    ; 2 uses
  %i.sm = add i32 %i.sl, 64
  %i.sn = sext i32 %i.sm to i64
  %i.so = sext i32 %i.sl to i64                   ; 3 uses
  %i.sp = shl nsw i64 %i.so, 2
  %scevgep.i.i.i.i.i.i = getelementptr nuw i8, ptr %.val17.val.i.i.i.i.i.i, i64 %i.sp
  %i.sq = or disjoint i64 %i.so, 1
  %umax.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.sq, i64 %i.sn)
  %i.sr = sub nsw i64 %umax.i.i.i.i.i.i, %i.so
  %i.ss = shl nsw i64 %i.sr, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i.i.i.i, i8 -1, i64 %i.ss, i1 false), !tbaa !3
  br label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i

bb.bs:                                            ; preds = %bb.bs, %.lr.ph.i.i.i.i.i4.i
  %.01520.i.i.i.i.i.i31 = phi i64 [ %i.sj, %.lr.ph.i.i.i.i.i4.i ], [ %i.sw, %bb.bs ] ; 3 uses
  %i.st = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01520.i.i.i.i.i.i31, i1 true)
  %19 = trunc nuw nsw i64 %i.st to i32
  %20 = or disjoint i32 %i.sk, %19
  %21 = sext i32 %20 to i64
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %.val17.val.i.i.i.i.i.i, i64 %21
  store i32 -1, ptr %i.su, align 4, !tbaa !3
  %i.sv = add i64 %.01520.i.i.i.i.i.i31, -1
  %i.sw = and i64 %i.sv, %.01520.i.i.i.i.i.i31    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp eq i64 %i.sw, 0
  br i1 %.not.i45.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.bs, !llvm.loop !241

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %bb.bs, %.lr.ph22.i.i.i.i.i.i30, %bb.br, %bb.bq
  %i.sx = add nsw i32 %i.sf, 64                   ; 2 uses
  %.not33.i.i.i.i.i25 = icmp sgt i32 %i.sx, %i.qt
  br i1 %.not33.i.i.i.i.i25, label %._crit_edge.i.i.i.i.i26, label %bb.bq, !llvm.loop !242

bb.bt:                                            ; preds = %._crit_edge.i.i.i.i.i26
  %i.sy = ashr i32 %i.qp, 6
  %i.sz = and i32 %i.qp, 63
  %i.ta = zext nneg i32 %i.sz to i64
  %notmask.i46.i.i.i.i.i = shl nsw i64 -1, %i.ta
  %i.tb = xor i64 %notmask.i46.i.i.i.i.i, -1
  %i.tc = sext i32 %i.sy to i64
  %i.td = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.tc
  %i.te = load i64, ptr %i.td, align 8, !tbaa !129
  %i.tf = and i64 %i.te, %i.tb                    ; 2 uses
  %.not.i47.i.i.i.i.i = icmp eq i64 %i.tf, 0
  br i1 %.not.i47.i.i.i.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %.preheader.i48.i.i.i.i.i

.preheader.i48.i.i.i.i.i:                         ; preds = %bb.bt
  %.val.val.i50.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !206
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %.preheader.i48.i.i.i.i.i
  %.011.i51.i.i.i.i.i = phi i64 [ %i.tf, %.preheader.i48.i.i.i.i.i ], [ %i.tj, %bb.bu ] ; 3 uses
  %i.tg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i51.i.i.i.i.i, i1 true)
  %22 = trunc nuw nsw i64 %i.tg to i32
  %23 = or disjoint i32 %i.qt, %22
  %24 = sext i32 %23 to i64
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i50.i.i.i.i.i, i64 %24
  store i32 -1, ptr %i.th, align 4, !tbaa !3
  %i.ti = add nsw i64 %.011.i51.i.i.i.i.i, -1
  %i.tj = and i64 %i.ti, %.011.i51.i.i.i.i.i      ; 2 uses
  %.not10.i52.i.i.i.i.i = icmp eq i64 %i.tj, 0
  br i1 %.not10.i52.i.i.i.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %bb.bu, !llvm.loop !240

_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit: ; preds = %bb.bu, %bb.bm, %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i, %bb.bi, %.lr.ph.i.i37, %bb.bj, %bb.bl, %._crit_edge.i.i.i.i.i26, %bb.bt
  %i.tk = load ptr, ptr %i.i, align 8, !tbaa !206 ; 2 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.h
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !214
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !187
  call void @_ZNK8facebook5velox4exec15WindowPartition13extractColumnEiN5folly5RangeIPKiEEiRKSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(152) %i.tn, i32 noundef %i.tp, ptr %i.tk, ptr %i.tl, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14WindowFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8facebook5velox4exec14WindowFunctionE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !205
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !42
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30, !inline_history !243
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30, !inline_history !243
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14WindowFunctionD0Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #20 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt19bad_optional_access, i64 16), ptr %i.a, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt19bad_optional_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19bad_optional_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt19bad_optional_access4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @.str.23
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Buffer7setSizeEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.144", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4, !tbaa !200
  %i.c = and i8 %i.b, 2
  %.not4 = icmp eq i8 %i.c, 0
  br i1 %.not4, label %bb.c, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !198  ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.d, label %bb.g, !prof !46

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !244
  store i64 %1, ptr %2, align 16, !tbaa !14, !alias.scope !247, !noalias !244
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.e, ptr %i.f, align 16, !tbaa !14, !alias.scope !247, !noalias !244
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.40, i64 11, i64 68, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !244
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.40) #34
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %3, align 8, !tbaa !11     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !14
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_:bb.a

bb.g:                                             ; preds = %.critedge.i.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !129
  %.demorgan.i.i = or i64 %i.y, %notmask.i40.i.i.i.i
  %i.z = icmp eq i64 %.demorgan.i.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !217 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !216 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %iter.check61, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit

iter.check61:                                     ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i = load ptr, ptr %i.ai, align 8, !tbaa !206 ; 8 uses
  %i.aj = sext i32 %i.ag to i64                   ; 6 uses
  %wide.trip.count.i = sext i32 %i.ae to i64      ; 4 uses
  %i.ak = sub nsw i64 %wide.trip.count.i, %i.aj   ; 7 uses
  %min.iters.check45 = icmp ult i64 %i.ak, 8
  %.val.val.i43 = ptrtoaddr ptr %.val.val.i to i64
  %i.al = sub i64 %.val.val.i43, %.0.val.16.val30
  %diff.check44 = icmp ult i64 %i.al, 128
  %or.cond = select i1 %min.iters.check45, i1 true, i1 %diff.check44
  br i1 %or.cond, label %vec.epilog.scalar.ph62.preheader, label %vector.main.loop.iter.check46

vector.main.loop.iter.check46:                    ; preds = %iter.check61
  %min.iters.check47 = icmp ult i64 %i.ak, 32
  br i1 %min.iters.check47, label %vec.epilog.ph65, label %vector.ph48

vector.ph48:                                      ; preds = %vector.main.loop.iter.check46
  %n.mod.vf49 = and i64 %i.ak, 24
  %n.vec50 = and i64 %i.ak, -32                   ; 4 uses
  %i.am = add nsw i64 %n.vec50, %i.aj
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph48
  %index52 = phi i64 [ 0, %vector.ph48 ], [ %index.next57, %vector.body51 ] ; 2 uses
  %i.an = add i64 %index52, %i.aj                 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %wide.load53 = load <8 x i32>, ptr %i.ao, align 4, !tbaa !3
  %wide.load54 = load <8 x i32>, ptr %i.ap, align 4, !tbaa !3
  %wide.load55 = load <8 x i32>, ptr %i.aq, align 4, !tbaa !3
  %wide.load56 = load <8 x i32>, ptr %i.ar, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %i.an ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store <8 x i32> %wide.load53, ptr %i.as, align 4, !tbaa !3
  store <8 x i32> %wide.load54, ptr %i.at, align 4, !tbaa !3
  store <8 x i32> %wide.load55, ptr %i.au, align 4, !tbaa !3
  store <8 x i32> %wide.load56, ptr %i.av, align 4, !tbaa !3
  %index.next57 = add nuw i64 %index52, 32        ; 2 uses
  %i.aw = icmp eq i64 %index.next57, %n.vec50
  br i1 %i.aw, label %middle.block58, label %vector.body51, !llvm.loop !385

middle.block58:                                   ; preds = %vector.body51
  %cmp.n59 = icmp eq i64 %i.ak, %n.vec50
  br i1 %cmp.n59, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %vec.epilog.iter.check63

vec.epilog.iter.check63:                          ; preds = %middle.block58
  %min.epilog.iters.check64 = icmp eq i64 %n.mod.vf49, 0
  br i1 %min.epilog.iters.check64, label %vec.epilog.scalar.ph62.preheader, label %vec.epilog.ph65, !prof !386

vec.epilog.ph65:                                  ; preds = %vector.main.loop.iter.check46, %vec.epilog.iter.check63
  %vec.epilog.resume.val60 = phi i64 [ %n.vec50, %vec.epilog.iter.check63 ], [ 0, %vector.main.loop.iter.check46 ]
  %n.vec67 = and i64 %i.ak, -8                    ; 3 uses
  %i.ax = add nsw i64 %n.vec67, %i.aj
  br label %vec.epilog.vector.body68

vec.epilog.vector.body68:                         ; preds = %vec.epilog.vector.body68, %vec.epilog.ph65
  %index69 = phi i64 [ %vec.epilog.resume.val60, %vec.epilog.ph65 ], [ %index.next71, %vec.epilog.vector.body68 ] ; 2 uses
  %i.ay = add i64 %index69, %i.aj                 ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %i.ay
  %wide.load70 = load <8 x i32>, ptr %i.az, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %i.ay
  store <8 x i32> %wide.load70, ptr %i.ba, align 4, !tbaa !3
  %index.next71 = add nuw i64 %index69, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next71, %n.vec67
  br i1 %i.bb, label %vec.epilog.middle.block72, label %vec.epilog.vector.body68, !llvm.loop !387

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body68
  %cmp.n73 = icmp eq i64 %i.ak, %n.vec67
  br i1 %cmp.n73, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %vec.epilog.scalar.ph62.preheader

vec.epilog.scalar.ph62.preheader:                 ; preds = %iter.check61, %vec.epilog.iter.check63, %vec.epilog.middle.block72
  %indvars.iv.i.ph = phi i64 [ %i.aj, %iter.check61 ], [ %i.am, %vec.epilog.iter.check63 ], [ %i.ax, %vec.epilog.middle.block72 ] ; 4 uses
  %i.bc = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph62.prol.loopexit, label %vec.epilog.scalar.ph62.prol

vec.epilog.scalar.ph62.prol:                      ; preds = %vec.epilog.scalar.ph62.preheader, %vec.epilog.scalar.ph62.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph62.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph62.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph62.prol ], [ 0, %vec.epilog.scalar.ph62.preheader ]
  %i.bd = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.i.prol
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.i.prol
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph62.prol.loopexit, label %vec.epilog.scalar.ph62.prol, !llvm.loop !388

vec.epilog.scalar.ph62.prol.loopexit:             ; preds = %vec.epilog.scalar.ph62.prol, %vec.epilog.scalar.ph62.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph62.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph62.prol ]
  %i.bg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %vec.epilog.scalar.ph62

vec.epilog.scalar.ph62:                           ; preds = %vec.epilog.scalar.ph62.prol.loopexit, %vec.epilog.scalar.ph62
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph62 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph62.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.i
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.next.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.next.i
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.next.i.1
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.next.i.1
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.next.i.2
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.next.i.2
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %vec.epilog.scalar.ph62, !llvm.loop !389

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bu = load ptr, ptr %1, align 8, !tbaa !204   ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !216 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !217 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.bw, %i.by
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = add i32 %i.bw, 63                       ; 2 uses
  %i.ca = srem i32 %i.bz, 64
  %i.cb = sub nsw i32 %i.bz, %i.ca                ; 6 uses
  %i.cc = and i32 %i.by, -64                      ; 6 uses
  %i.cd = icmp slt i32 %i.cc, %i.cb
  br i1 %i.cd, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ce = ashr i32 %i.by, 6
  %i.cf = and i32 %i.by, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.cg
  %i.ch = xor i64 %notmask.i.i.i.i.i, -1
  %i.ci = sub nsw i32 %i.cb, %i.bw                ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.cj
  %i.ck = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.cl = sub nsw i32 64, %i.ci
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl i64 %i.ck, %i.cm
  %i.co = and i64 %i.cn, %i.ch
  %i.cp = sext i32 %i.ce to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !129
  %i.cs = and i64 %i.co, %i.cr                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !206
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cs, %.preheader.i.i.i.i.i ], [ %i.cz, %bb.l ] ; 3 uses
  %i.cu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %2 = trunc nuw nsw i64 %i.cu to i32
  %3 = or disjoint i32 %i.cc, %2
  %4 = sext i32 %3 to i64                         ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %4
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !3
  %i.cy = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cz = and i64 %i.cy, %.012.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %bb.l, !llvm.loop !390

bb.m:                                             ; preds = %bb.j
  %.not32.i.i.i.i = icmp eq i32 %i.bw, %i.cb
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = sdiv i32 %i.bw, 64                      ; 2 uses
  %i.db = sub nsw i32 %i.cb, %i.bw                ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dc
  %i.dd = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.de = sub nsw i32 64, %i.db
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = shl i64 %i.dd, %i.df
  %i.dh = sext i32 %i.da to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !129
  %i.dk = and i64 %i.dj, %i.dg                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.n
  %i.dl = shl nsw i32 %i.da, 6
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i40.i.i.i.i = load ptr, ptr %i.dm, align 8, !tbaa !206
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader.i37.i.i.i.i
  %.012.i42.i.i.i.i = phi i64 [ %i.dk, %.preheader.i37.i.i.i.i ], [ %i.ds, %bb.o ] ; 3 uses
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i42.i.i.i.i, i1 true)
  %5 = trunc nuw nsw i64 %i.dn to i32
  %6 = or disjoint i32 %i.dl, %5
  %7 = sext i32 %6 to i64                         ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %7
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i40.i.i.i.i, i64 %7
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !3
  %i.dr = add i64 %.012.i42.i.i.i.i, -1
  %i.ds = and i64 %i.dr, %.012.i42.i.i.i.i        ; 2 uses
  %.not10.i43.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not10.i43.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i, label %bb.o, !llvm.loop !390

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.dt = add nsw i32 %i.cb, 64                   ; 2 uses
  %.not3360.i.i.i.i = icmp sgt i32 %i.dt, %i.cc
  br i1 %.not3360.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val18.val.i.i.i.i.i = load ptr, ptr %i.du, align 8 ; 5 uses
  %.val18.val.i.i.i.i.i29 = ptrtoaddr ptr %.val18.val.i.i.i.i.i to i64
  %i.dv = sub i64 %.val18.val.i.i.i.i.i29, %.0.val.16.val30
  %diff.check = icmp ult i64 %i.dv, 128
  br label %bb.p

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.by, %i.cc
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %bb.s

bb.p:                                             ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.dw = phi i32 [ %i.dt, %.lr.ph.i.i.i.i ], [ %i.fi, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.061.i.i.i.i = phi i32 [ %i.cb, %.lr.ph.i.i.i.i ], [ %i.dw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.dx = sdiv i32 %.061.i.i.i.i, 64              ; 3 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !129 ; 2 uses
  switch i64 %i.ea, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.q
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p
  %i.eb = shl nsw i32 %i.dx, 6
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ec = shl nsw i32 %i.dx, 6                    ; 2 uses
  %i.ed = add i32 %i.ec, 64
  %i.ee = sext i32 %i.ed to i64                   ; 2 uses
  %.0.off.i.i.i.i = add i32 %.061.i.i.i.i, 127
  %.not25.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not25.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.ef = sext i32 %i.ec to i64                   ; 6 uses
  %i.eg = or disjoint i64 %i.ef, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eg, i64 %i.ee) ; 2 uses
  %i.eh = sub i64 %umax, %i.ef                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.eh, 8
  %or.cond75 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond75, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check31 = icmp ult i64 %i.eh, 32
  %n.mod.vf35 = and i64 %umax, 1                  ; 3 uses
  %n.vec36 = sub nuw i64 %i.eh, %n.mod.vf35       ; 3 uses
  %i.ei = add i64 %n.vec36, %i.ef                 ; 2 uses
  br i1 %min.iters.check31, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ej = add i64 %index, %i.ef                   ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.0.val.16.val, i64 %i.ej ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %wide.load = load <8 x i32>, ptr %i.ek, align 4, !tbaa !3
  %wide.load32 = load <8 x i32>, ptr %i.el, align 4, !tbaa !3
  %wide.load33 = load <8 x i32>, ptr %i.em, align 4, !tbaa !3
  %wide.load34 = load <8 x i32>, ptr %i.en, align 4, !tbaa !3
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %i.ej ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  store <8 x i32> %wide.load, ptr %i.eo, align 4, !tbaa !3
  store <8 x i32> %wide.load32, ptr %i.ep, align 4, !tbaa !3
  store <8 x i32> %wide.load33, ptr %i.eq, align 4, !tbaa !3
  store <8 x i32> %wide.load34, ptr %i.er, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec36
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf35, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index37 = phi i64 [ %index.next39, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.et = add i64 %index37, %i.ef                 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0.val.16.val, i64 %i.et
  %wide.load38 = load <8 x i32>, ptr %i.eu, align 4, !tbaa !3
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %i.et
  store <8 x i32> %wide.load38, ptr %i.ev, align 4, !tbaa !3
  %index.next39 = add nuw i64 %index37, 8         ; 2 uses
  %i.ew = icmp eq i64 %index.next39, %n.vec36
  br i1 %i.ew, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !392

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %n.mod.vf35, 0
  br i1 %cmp.n40, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.023.i.i.i.i.i.ph = phi i64 [ %i.ei, %middle.block ], [ %i.ef, %iter.check ], [ %i.ei, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.023.i.i.i.i.i = phi i64 [ %i.fa, %vec.epilog.scalar.ph ], [ %.023.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0.val.16.val, i64 %.023.i.i.i.i.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %.023.i.i.i.i.i
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !3
  %i.fa = add nuw i64 %.023.i.i.i.i.i, 1          ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.ee
  br i1 %i.fb, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !393

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i
  %.01522.i.i.i.i.i = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.i ], [ %i.fh, %bb.r ] ; 3 uses
  %i.fc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i, i1 true)
  %8 = trunc nuw nsw i64 %i.fc to i32
  %9 = or disjoint i32 %i.eb, %8
  %10 = sext i32 %9 to i64                        ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %10
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %10
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !3
  %i.fg = add i64 %.01522.i.i.i.i.i, -1
  %i.fh = and i64 %i.fg, %.01522.i.i.i.i.i        ; 2 uses
  %.not.i47.i.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i47.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %bb.r, !llvm.loop !394

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i: ; preds = %vec.epilog.scalar.ph, %bb.r, %middle.block, %vec.epilog.middle.block, %bb.q, %bb.p
  %i.fi = add nsw i32 %i.dw, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.fi, %i.cc
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.p, !llvm.loop !395

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.fj = ashr i32 %i.by, 6
  %i.fk = and i32 %i.by, 63
  %i.fl = zext nneg i32 %i.fk to i64
  %notmask.i48.i.i.i.i = shl nsw i64 -1, %i.fl
  %i.fm = xor i64 %notmask.i48.i.i.i.i, -1
  %i.fn = sext i32 %i.fj to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !129
  %i.fq = and i64 %i.fp, %i.fm                    ; 2 uses
  %.not.i49.i.i.i.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i49.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %.preheader.i50.i.i.i.i

.preheader.i50.i.i.i.i:                           ; preds = %bb.s
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i53.i.i.i.i = load ptr, ptr %i.fr, align 8, !tbaa !206
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader.i50.i.i.i.i
  %.012.i55.i.i.i.i = phi i64 [ %i.fq, %.preheader.i50.i.i.i.i ], [ %i.fx, %bb.t ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i55.i.i.i.i, i1 true)
  %11 = trunc nuw nsw i64 %i.fs to i32
  %12 = or disjoint i32 %i.cc, %11
  %13 = sext i32 %12 to i64                       ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %13
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i53.i.i.i.i, i64 %13
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !3
  %i.fw = add nsw i64 %.012.i55.i.i.i.i, -1
  %i.fx = and i64 %i.fw, %.012.i55.i.i.i.i        ; 2 uses
  %.not10.i56.i.i.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not10.i56.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %bb.t, !llvm.loop !390

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit: ; preds = %bb.t, %bb.l, %vec.epilog.scalar.ph62.prol.loopexit, %vec.epilog.scalar.ph62, %middle.block58, %vec.epilog.middle.block72, %bb.h, %bb.i, %bb.k, %._crit_edge.i.i.i.i, %bb.s
  ret void
}

declare void @_ZNK8facebook5velox4exec15WindowPartition13extractColumnEiN5folly5RangeIPKiEEiRKSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, ptr, ptr, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !206    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !207
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !215
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #31 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !3
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !3
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #32
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !206
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !215
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !207
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

declare { i64, i8 } @_ZNK8facebook5velox4exec15WindowPartition12extractNullsEjRKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESB_PS9_(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, ptr noundef nonnull align 8 dereferenceable(38), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !396
  %i.c = load ptr, ptr %0, align 8, !tbaa !401, !nonnull !65, !align !290
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !230
  %i.e = sext i32 %1 to i64                       ; 3 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !402, !nonnull !65, !align !290
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !230
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.e
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !403, !nonnull !65, !align !290
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !229  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !404, !nonnull !65, !align !292
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = sub nsw i32 %i.g, %i.r                   ; 5 uses
  %i.t = sub nsw i32 %i.l, %i.r
  %i.u = add nsw i32 %i.t, 1                      ; 6 uses
  %.not.i.i.not = icmp sgt i32 %i.g, %i.l
  br i1 %.not.i.i.not, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = add i32 %i.s, 63                         ; 2 uses
  %i.w = srem i32 %i.v, 64
  %i.x = sub nsw i32 %i.v, %i.w                   ; 5 uses
  %i.y = and i32 %i.u, -64                        ; 5 uses
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = ashr i32 %i.u, 6
  %i.ab = and i32 %i.u, 63
  %i.ac = zext nneg i32 %i.ab to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.ac
  %i.ad = xor i64 %notmask.i.i.i, -1
  %i.ae = sub nsw i32 %i.x, %i.s                  ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.af
  %i.ag = xor i64 %notmask.i.i.i.i, -1
  %i.ah = sub nsw i32 64, %i.ae
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl i64 %i.ag, %i.ai
  %i.ak = and i64 %i.aj, %i.ad
  %i.al = sext i32 %i.aa to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !129
  %i.ao = and i64 %i.ak, %i.an                    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit

bb.d:                                             ; preds = %bb.b
  %.not36.i.i = icmp eq i32 %i.s, %i.x
  br i1 %.not36.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.preheader, label %bb.e

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.preheader: ; preds = %bb.e, %bb.d
  br label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = sdiv i32 %i.s, 64                       ; 2 uses
  %i.aq = sub nsw i32 %i.x, %i.s                  ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %notmask.i.i39.i.i = shl nsw i64 -1, %i.ar
  %i.as = xor i64 %notmask.i.i39.i.i, -1
  %i.at = sub nsw i32 64, %i.aq
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl i64 %i.as, %i.au
  %i.aw = sext i32 %i.ap to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !129
  %i.az = and i64 %i.ay, %i.av                    ; 2 uses
  %.not.i40.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i40.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.preheader, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUlimE_clEim.exit41.i.i: ; preds = %bb.e
  %i.ba = shl nsw i32 %i.ap, 6
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i: ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.preheader, %bb.f
  %.0.i.i = phi i32 [ %i.bb, %bb.f ], [ %i.x, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.preheader ] ; 2 uses
  %i.bb = add nsw i32 %.0.i.i, 64                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE5applyERKN5boost13intrusive_ptrINS0_6BufferEEESC_SC_SC_RKNS0_17SelectivityVectorEiRKSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.dk = and i64 %indvars.iv41.i.i, 63
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dl, %i.dj
  %.not25.i.i = icmp eq i64 %i.dm, 0
  %i.dn = lshr i64 %indvars.iv41.i.i, 3
  %i.do = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.dn ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !14  ; 2 uses
  br i1 %.not25.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph34.i.i
  %i.dq = trunc i64 %indvars.iv41.i.i to i8
  %i.dr = and i8 %i.dq, 7
  %i.ds = shl nuw i8 1, %i.dr
  %i.dt = or i8 %i.ds, %i.dp
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i

bb.j:                                             ; preds = %.lr.ph34.i.i
  %i.du = and i64 %indvars.iv41.i.i, 7
  %i.dv = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !14
  %i.dx = and i8 %i.dw, %i.dp
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i: ; preds = %bb.j, %bb.i
  %.sink.i.i.i = phi i8 [ %i.dx, %bb.j ], [ %i.dt, %bb.i ]
  store i8 %.sink.i.i.i, ptr %i.do, align 1, !tbaa !14
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next42.i.i, %.sroa.015.4.extract.shift.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox4bits6negateEPmi.exit.i, label %.lr.ph34.i.i, !llvm.loop !228

_ZN8facebook5velox4bits6negateEPmi.exit.i:        ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i, %.preheader.i.i
  %i.dy = load ptr, ptr %i.ah, align 8, !tbaa !202
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !197 ; 14 uses
  %i.eb = load ptr, ptr %3, align 8, !tbaa !202
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !197 ; 6 uses
  %i.ee = load ptr, ptr %4, align 8, !tbaa !202
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !197 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !168, !range !64, !noundef !65
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i, label %bb.k

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i: ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit.i
  %.0.in.pre.i.i.i = load i8, ptr %i.eh, align 4, !tbaa !138, !range !64
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

bb.k:                                             ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit.i
  %i.el = load i32, ptr %i.v, align 4, !tbaa !216
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.l, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.en = load i32, ptr %i.x, align 8, !tbaa !217 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !231
  %i.eq = icmp eq i32 %i.en, %i.ep
  br i1 %i.eq, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.er = load ptr, ptr %5, align 8, !tbaa !204   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.en, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.es = and i32 %i.en, 2147483584               ; 3 uses
  %i.et = zext nneg i32 %i.es to i64
  %.not37.i.i.not.i.i.i137.not = icmp eq i32 %i.es, 0
  br i1 %.not37.i.i.not.i.i.i137.not, label %.critedge.i.i.i.i.i, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i138, 64 ; 2 uses
  %.not37.i.i.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.et
  br i1 %.not37.i.i.not.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i, !llvm.loop !232

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %indvars.iv.i.i.i138 = phi i64 [ %indvars.iv.next.i.i.i, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.eu = lshr exact i64 %indvars.iv.i.i.i138, 3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !129
  %i.ex = icmp eq i64 %i.ew, -1
  br i1 %i.ex, label %bb.o, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, !llvm.loop !232

.critedge.i.i.i.i.i:                              ; preds = %bb.o, %bb.n
  %.not38.i.i.i.i.i = icmp eq i32 %i.en, %i.es
  br i1 %.not38.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i
  %i.ey = lshr i32 %i.en, 6
  %i.ez = and i32 %i.en, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %notmask.i40.i.i.i.i.i = shl nsw i64 -1, %i.fa
  %i.fb = zext nneg i32 %i.ey to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !129
  %.demorgan.i.i.i = or i64 %i.fd, %notmask.i40.i.i.i.i.i
  %i.fe = icmp eq i64 %.demorgan.i.i.i, -1
  %i.ff = zext i1 %i.fe to i16
  %i.fg = or disjoint i16 %i.ff, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i: ; preds = %.lr.ph, %bb.p, %.critedge.i.i.i.i.i, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.insert.ext.i.i.i = phi i16 [ 256, %bb.l ], [ 256, %bb.k ], [ 257, %bb.m ], [ 257, %.critedge.i.i.i.i.i ], [ %i.fg, %bb.p ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i, ptr %i.eh, align 4
  %i.fh = trunc i16 %.sroa.0.0.insert.ext.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i
  %.0.in.i.i.i = phi i8 [ %.0.in.pre.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.fh, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ]
  %.0.i.i.i = trunc nuw i8 %.0.in.i.i.i to i1
  %i.fi = load i32, ptr %i.v, align 4, !tbaa !216 ; 8 uses
  br i1 %.0.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.fj = load i32, ptr %i.x, align 8, !tbaa !217 ; 2 uses
  %i.fk = icmp slt i32 %i.fi, %i.fj
  br i1 %i.fk, label %.lr.ph.i11.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

.lr.ph.i11.i:                                     ; preds = %bb.q
  %i.fl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fp = sext i32 %i.fi to i64
  %invariant.op204 = sub i32 1, %.sroa.015.0.extract.trunc.i
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i, %.lr.ph.i11.i
  %indvars.iv.i12.i = phi i64 [ %i.fp, %.lr.ph.i11.i ], [ %indvars.iv.next.i13.i, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i ] ; 4 uses
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %indvars.iv.i12.i
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %indvars.iv.i12.i
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3
  %i.fu = sub nsw i32 %i.fr, %.sroa.015.0.extract.trunc.i
  %.reass105.i.reass.reass = add i32 %i.ft, %invariant.op204
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i32 -1, ptr %i.e, align 4, !tbaa !3
  store ptr %i.ea, ptr %16, align 8, !tbaa !405
  store ptr %i.e, ptr %i.fl, align 8, !tbaa !230
  store i8 1, ptr %i.fm, align 8, !tbaa !407
  store ptr %i.ea, ptr %17, align 8, !tbaa !408
  store ptr %i.e, ptr %i.fn, align 8, !tbaa !230
  store i8 1, ptr %i.fo, align 8, !tbaa !410
  %i.fv = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.fu, i32 noundef %.reass105.i.reass.reass, ptr noundef nonnull byval(%class.anon.202) align 8 %16, ptr noundef nonnull byval(%class.anon.204) align 8 %17) ; 0 uses
  %i.fw = load i32, ptr %i.e, align 4, !tbaa !3   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.fx = icmp eq i32 %i.fw, -1
  %i.fy = add nsw i32 %i.fw, %.sroa.015.0.extract.trunc.i
  %spec.select.i = select i1 %i.fx, i32 -1, i32 %i.fy
  %i.fz = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.i12.i
  store i32 %spec.select.i, ptr %i.ga, align 4, !tbaa !3
  %indvars.iv.next.i13.i = add nsw i64 %indvars.iv.i12.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i13.i to i32
  %exitcond.not.i.i = icmp eq i32 %i.fj, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i, !llvm.loop !438

bb.r:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.gb = load ptr, ptr %5, align 8, !tbaa !204   ; 4 uses
  %i.gc = load i32, ptr %i.x, align 8, !tbaa !217 ; 7 uses
  %.not.i.i.i.i.i = icmp slt i32 %i.fi, %i.gc
  br i1 %.not.i.i.i.i.i, label %bb.s, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

bb.s:                                             ; preds = %bb.r
  %i.gd = add i32 %i.fi, 63                       ; 2 uses
  %i.ge = srem i32 %i.gd, 64
  %i.gf = sub nsw i32 %i.gd, %i.ge                ; 6 uses
  %i.gg = and i32 %i.gc, -64                      ; 6 uses
  %i.gh = icmp slt i32 %i.gg, %i.gf
  br i1 %i.gh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gi = ashr i32 %i.gc, 6
  %i.gj = and i32 %i.gc, 63
  %i.gk = zext nneg i32 %i.gj to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.gk
  %i.gl = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.gm = sub nsw i32 %i.gf, %i.fi                ; 2 uses
  %i.gn = zext nneg i32 %i.gm to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.gn
  %i.go = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.gp = sub nsw i32 64, %i.gm
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = shl i64 %i.go, %i.gq
  %i.gs = and i64 %i.gr, %i.gl
  %i.gt = sext i32 %i.gi to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !129
  %i.gw = and i64 %i.gs, %i.gv                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.t
  %i.gx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %15, i64 16
  %invariant.op203 = sub i32 1, %.sroa.015.0.extract.trunc.i
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.gw, %.preheader.i.i.i.i.i.i ], [ %i.ho, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i.i ] ; 3 uses
  %i.hb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i, i1 true)
  %18 = trunc nuw nsw i64 %i.hb to i32
  %19 = or disjoint i32 %i.gg, %18
  %20 = sext i32 %19 to i64                       ; 3 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %20
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %20
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3
  %i.hg = sub nsw i32 %i.hd, %.sroa.015.0.extract.trunc.i
  %.reass103.i.reass.reass = add i32 %i.hf, %invariant.op203
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i32 -1, ptr %i.d, align 4, !tbaa !3
  store ptr %i.ea, ptr %14, align 8, !tbaa !405
  store ptr %i.d, ptr %i.gx, align 8, !tbaa !230
  store i8 1, ptr %i.gy, align 8, !tbaa !407
  store ptr %i.ea, ptr %15, align 8, !tbaa !408
  store ptr %i.d, ptr %i.gz, align 8, !tbaa !230
  store i8 1, ptr %i.ha, align 8, !tbaa !410
  %i.hh = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.hg, i32 noundef %.reass103.i.reass.reass, ptr noundef nonnull byval(%class.anon.202) align 8 %14, ptr noundef nonnull byval(%class.anon.204) align 8 %15) ; 0 uses
  %i.hi = load i32, ptr %i.d, align 4, !tbaa !3   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.hj = icmp eq i32 %i.hi, -1
  %i.hk = add nsw i32 %i.hi, %.sroa.015.0.extract.trunc.i
  %spec.select46.i = select i1 %i.hj, i32 -1, i32 %i.hk
  %i.hl = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %20
  store i32 %spec.select46.i, ptr %i.hm, align 4, !tbaa !3
  %i.hn = add nsw i64 %.011.i.i.i.i.i.i, -1
  %i.ho = and i64 %i.hn, %.011.i.i.i.i.i.i        ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.ho, 0
  br i1 %.not10.i.i.i.i.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i.i, !llvm.loop !439

bb.u:                                             ; preds = %bb.s
  %.not32.i.i.i.i.i = icmp eq i32 %i.fi, %i.gf
  br i1 %.not32.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit41.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hp = sdiv i32 %i.fi, 64                      ; 2 uses
  %i.hq = sub nsw i32 %i.gf, %i.fi                ; 2 uses
  %i.hr = zext nneg i32 %i.hq to i64
  %notmask.i.i35.i.i.i.i.i = shl nsw i64 -1, %i.hr
  %i.hs = xor i64 %notmask.i.i35.i.i.i.i.i, -1
  %i.ht = sub nsw i32 64, %i.hq
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = shl i64 %i.hs, %i.hu
  %i.hw = sext i32 %i.hp to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.hw
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !129
  %i.hz = and i64 %i.hy, %i.hv                    ; 2 uses
  %.not.i36.i.i.i.i.i = icmp eq i64 %i.hz, 0
  br i1 %.not.i36.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit41.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i

.preheader.i37.i.i.i.i.i:                         ; preds = %bb.v
  %i.ia = shl nsw i32 %i.hp, 6
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 16
  %invariant.op = sub i32 1, %.sroa.015.0.extract.trunc.i
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i39.i.i.i.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i39.i.i.i.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i39.i.i.i.i.i, %.preheader.i37.i.i.i.i.i
  %.011.i38.i.i.i.i.i = phi i64 [ %i.hz, %.preheader.i37.i.i.i.i.i ], [ %i.is, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i39.i.i.i.i.i ] ; 3 uses
  %i.if = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i.i, i1 true)
  %21 = trunc nuw nsw i64 %i.if to i32
  %22 = or disjoint i32 %i.ia, %21
  %23 = sext i32 %22 to i64                       ; 3 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %23
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !3
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %23
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3
  %i.ik = sub nsw i32 %i.ih, %.sroa.015.0.extract.trunc.i
  %.reass.i.reass.reass = add i32 %i.ij, %invariant.op
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i32 -1, ptr %i.c, align 4, !tbaa !3
  store ptr %i.ea, ptr %12, align 8, !tbaa !405
  store ptr %i.c, ptr %i.ib, align 8, !tbaa !230
  store i8 1, ptr %i.ic, align 8, !tbaa !407
  store ptr %i.ea, ptr %13, align 8, !tbaa !408
  store ptr %i.c, ptr %i.id, align 8, !tbaa !230
  store i8 1, ptr %i.ie, align 8, !tbaa !410
  %i.il = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.ik, i32 noundef %.reass.i.reass.reass, ptr noundef nonnull byval(%class.anon.202) align 8 %12, ptr noundef nonnull byval(%class.anon.204) align 8 %13) ; 0 uses
  %i.im = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.in = icmp eq i32 %i.im, -1
  %i.io = add nsw i32 %i.im, %.sroa.015.0.extract.trunc.i
  %spec.select47.i = select i1 %i.in, i32 -1, i32 %i.io
  %i.ip = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %23
  store i32 %spec.select47.i, ptr %i.iq, align 4, !tbaa !3
  %i.ir = add i64 %.011.i38.i.i.i.i.i, -1
  %i.is = and i64 %i.ir, %.011.i38.i.i.i.i.i      ; 2 uses
  %.not10.i40.i.i.i.i.i = icmp eq i64 %i.is, 0
  br i1 %.not10.i40.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit41.i.i.i.i.i, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i39.i.i.i.i.i, !llvm.loop !439

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit41.i.i.i.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i39.i.i.i.i.i, %bb.v, %bb.u
  %i.it = add nsw i32 %i.gf, 64                   ; 2 uses
  %.not3385.i.i.i.i.i = icmp sgt i32 %i.it, %i.gg
  br i1 %.not3385.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit41.i.i.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %11, i64 16
  %invariant.op200 = sub i32 1, %.sroa.015.0.extract.trunc.i
  %invariant.op201 = sub i32 1, %.sroa.015.0.extract.trunc.i
  br label %bb.w

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit41.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i32 %i.gc, %i.gg
  br i1 %.not34.i.i.i.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit, label %bb.ai

bb.w:                                             ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.iy = phi i32 [ %i.it, %.lr.ph.i.i.i.i.i ], [ %i.mq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i ] ; 2 uses
  %.086.i.i.i.i.i = phi i32 [ %i.gf, %.lr.ph.i.i.i.i.i ], [ %i.iy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i ] ; 2 uses
  %i.iz = sdiv i32 %.086.i.i.i.i.i, 64            ; 3 uses
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.ja
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !129 ; 2 uses
  switch i64 %i.jc, label %.lr.ph.i.i.i.i.i.i [
    i64 -1, label %bb.x
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w
  %i.jd = shl nsw i32 %i.iz, 6
  %i.je = load ptr, ptr %i.j, align 8, !tbaa !206
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jf = shl nsw i32 %i.iz, 6                    ; 2 uses
  %i.jg = add i32 %i.jf, 64
  %i.jh = sext i32 %i.jg to i64
  %.0.off.i.i.i.i.i = add i32 %.086.i.i.i.i.i, 127
  %.not23.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i, 64
  br i1 %.not23.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i

.lr.ph22.i.i.i.i.i.i:                             ; preds = %bb.x
  %i.ji = sext i32 %i.jf to i64
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i, %.lr.ph22.i.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ji, %.lr.ph22.i.i.i.i.i.i ], [ %i.ju, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i ] ; 4 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.021.i.i.i.i.i.i
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !3
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.021.i.i.i.i.i.i
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !3
  %i.jn = sub nsw i32 %i.jk, %.sroa.015.0.extract.trunc.i
  %.reass97.i.reass.reass = add i32 %i.jm, %invariant.op200
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 -1, ptr %i.b, align 4, !tbaa !3
  store ptr %i.ea, ptr %10, align 8, !tbaa !405
  store ptr %i.b, ptr %i.iu, align 8, !tbaa !230
  store i8 1, ptr %i.iv, align 8, !tbaa !407
  store ptr %i.ea, ptr %11, align 8, !tbaa !408
  store ptr %i.b, ptr %i.iw, align 8, !tbaa !230
  store i8 1, ptr %i.ix, align 8, !tbaa !410
  %i.jo = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.jn, i32 noundef %.reass97.i.reass.reass, ptr noundef nonnull byval(%class.anon.202) align 8 %10, ptr noundef nonnull byval(%class.anon.204) align 8 %11) ; 0 uses
  %i.jp = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.jq = icmp eq i32 %i.jp, -1
  %i.jr = add nsw i32 %i.jp, %.sroa.015.0.extract.trunc.i
  %spec.select48.i = select i1 %i.jq, i32 -1, i32 %i.jr
  %i.js = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.021.i.i.i.i.i.i
  store i32 %spec.select48.i, ptr %i.jt, align 4, !tbaa !3
  %i.ju = add nuw i64 %.021.i.i.i.i.i.i, 1        ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jh
  br i1 %i.jv, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !440

bb.y:                                             ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i42.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.01520.i.i.i.i.i.i = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i.i ], [ %i.mp, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i42.i.i.i.i.i ] ; 3 uses
  %i.jw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01520.i.i.i.i.i.i, i1 true)
  %24 = trunc nuw nsw i64 %i.jw to i32
  %25 = or disjoint i32 %i.jd, %24
  %26 = sext i32 %25 to i64                       ; 3 uses
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %26
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !3
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %26
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !3
  %i.kb = sub nsw i32 %i.jy, %.sroa.015.0.extract.trunc.i ; 6 uses
  %.reass99.i.reass.reass.reass = add i32 %i.ka, %invariant.op201 ; 9 uses
  %.not.i51.i.i.i.i.i = icmp slt i32 %i.kb, %.reass99.i.reass.reass.reass
  br i1 %.not.i51.i.i.i.i.i, label %bb.z, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i42.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.kc = add i32 %i.kb, 63                       ; 2 uses
  %i.kd = srem i32 %i.kc, 64
  %i.ke = sub nsw i32 %i.kc, %i.kd                ; 5 uses
  %i.kf = and i32 %.reass99.i.reass.reass.reass, -64 ; 3 uses
  %i.kg = icmp slt i32 %i.kf, %i.ke
  br i1 %i.kg, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.kh = ashr i32 %.reass99.i.reass.reass.reass, 6
  %i.ki = and i32 %.reass99.i.reass.reass.reass, 63
  %i.kj = zext nneg i32 %i.ki to i64
  %notmask.i.i52.i.i.i.i.i = shl nsw i64 -1, %i.kj
  %i.kk = xor i64 %notmask.i.i52.i.i.i.i.i, -1
  %i.kl = sub nsw i32 %i.ke, %i.kb                ; 2 uses
  %i.km = zext nneg i32 %i.kl to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.km
  %i.kn = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  %i.ko = sub nsw i32 64, %i.kl
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = shl i64 %i.kn, %i.kp
  %i.kr = and i64 %i.kq, %i.kk
  %i.ks = sext i32 %i.kh to i64
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ks
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !129
  %i.kv = and i64 %i.kr, %i.ku                    ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.kv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i42.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kw = or i32 %.reass99.i.reass.reass.reass, 63
  %i.kx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.kv, i1 true)
  %i.ky = trunc nuw nsw i64 %i.kx to i32
  %i.kz = sub nuw nsw i32 %i.kw, %i.ky
  br label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread74.i.i.i.i.i

bb.ac:                                            ; preds = %bb.z
  %.not35.i.i.i.i.i.i = icmp eq i32 %.reass99.i.reass.reass.reass, %i.kf
  br i1 %.not35.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.i.i.i.i.preheader, label %bb.ad

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.i.i.i.i.preheader: ; preds = %bb.ad, %bb.ac
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.la = ashr i32 %.reass99.i.reass.reass.reass, 6
  %i.lb = and i32 %.reass99.i.reass.reass.reass, 63
  %i.lc = zext nneg i32 %i.lb to i64
  %notmask.i38.i.i.i.i.i.i = shl nsw i64 -1, %i.lc
  %i.ld = xor i64 %notmask.i38.i.i.i.i.i.i, -1
  %i.le = sext i32 %i.la to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.le
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !129
  %i.lh = and i64 %i.lg, %i.ld                    ; 2 uses
  %.not.i39.i.i.i.i.i.i = icmp eq i64 %i.lh, 0
  br i1 %.not.i39.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.i.i.i.i.preheader, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i.i.i.i.i

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i.i.i.i.i: ; preds = %bb.ad
  %i.li = or i32 %.reass99.i.reass.reass.reass, 63
  %i.lj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.lh, i1 true)
  %i.lk = trunc nuw nsw i64 %i.lj to i32
  %i.ll = sub nuw nsw i32 %i.li, %i.lk
  br label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread74.i.i.i.i.i

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.i.i.i.i.preheader, %bb.ae
  %.0.in.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i, %bb.ae ], [ %i.kf, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0.i.i.i.i.i.i = add nsw i32 %.0.in.i.i.i.i.i.i, -64 ; 3 uses
  %.not36.i.i.i.i.i.i = icmp slt i32 %.0.i.i.i.i.i.i, %i.ke
  br i1 %.not36.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.i.i.i.i
  %i.lm = ashr exact i32 %.0.i.i.i.i.i.i, 6
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ln
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !129 ; 2 uses
  %.not.i41.i.i.i.i.i.i = icmp eq i64 %i.lp, 0
  br i1 %.not.i41.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.lp, i1 true)
  %i.lr = trunc nuw nsw i64 %i.lq to i32
  %i.ls = xor i32 %i.lr, -1
  %i.lt = add i32 %.0.in.i.i.i.i.i.i, %i.ls
  br label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.i.i.i.i
  %.not37.i.i.i.i.i.i = icmp eq i32 %i.kb, %i.ke
  br i1 %.not37.i.i.i.i.i.i, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i42.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.lu = sdiv i32 %i.kb, 64                      ; 2 uses
  %i.lv = sub nsw i32 %i.ke, %i.kb                ; 2 uses
  %i.lw = zext nneg i32 %i.lv to i64
  %notmask.i.i42.i.i.i.i.i.i = shl nsw i64 -1, %i.lw
  %i.lx = xor i64 %notmask.i.i42.i.i.i.i.i.i, -1
  %i.ly = sub nsw i32 64, %i.lv
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = shl i64 %i.lx, %i.lz
  %i.mb = sext i32 %i.lu to i64
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.mb
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !129
  %i.me = and i64 %i.md, %i.ma                    ; 2 uses
  %.not.i43.i.i.i.i.i.i = icmp eq i64 %i.me, 0
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i42.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mf = shl nsw i32 %i.lu, 6
  %i.mg = or disjoint i32 %i.mf, 63
  %i.mh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.me, i1 true)
  %i.mi = trunc nuw nsw i64 %i.mh to i32
  %i.mj = sub nuw nsw i32 %i.mg, %i.mi
  br label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.i.i.i.i.i

_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.i.i.i.i.i: ; preds = %bb.ah, %bb.af
  %.071.i.i.i.i.i = phi i32 [ %i.mj, %bb.ah ], [ %i.lt, %bb.af ] ; 2 uses
  %i.mk = icmp eq i32 %.071.i.i.i.i.i, -1
  br i1 %i.mk, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i42.i.i.i.i.i, label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread74.i.i.i.i.i

_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread74.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i.i.i.i.i, %bb.ab
  %.07176.i.i.i.i.i = phi i32 [ %.071.i.i.i.i.i, %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.i.i.i.i.i ], [ %i.kz, %bb.ab ], [ %i.ll, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.i.i.i.i.i.i ]
  %i.ml = add nsw i32 %.07176.i.i.i.i.i, %.sroa.015.0.extract.trunc.i
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i42.i.i.i.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i42.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread74.i.i.i.i.i, %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.i.i.i.i.i, %bb.ag, %.critedge.i.i.i.i.i.i, %bb.aa, %bb.y
  %i.mm = phi i32 [ %i.ml, %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.thread74.i.i.i.i.i ], [ -1, %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.i.i.i.i.i ], [ -1, %bb.aa ], [ -1, %bb.y ], [ -1, %.critedge.i.i.i.i.i.i ], [ -1, %bb.ag ]
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %26
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !3
  %i.mo = add i64 %.01520.i.i.i.i.i.i, -1
  %i.mp = and i64 %i.mo, %.01520.i.i.i.i.i.i      ; 2 uses
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.y, !llvm.loop !441

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clImEEDaSG_.exit.i.i.i.i.i.i, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i42.i.i.i.i.i, %bb.x, %bb.w
  %i.mq = add nsw i32 %i.iy, 64                   ; 2 uses
  %.not33.i.i.i.i.i = icmp sgt i32 %i.mq, %i.gg
  br i1 %.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.w, !llvm.loop !442

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.mr = ashr i32 %i.gc, 6
  %i.ms = and i32 %i.gc, 63
  %i.mt = zext nneg i32 %i.ms to i64
  %notmask.i44.i.i.i.i.i = shl nsw i64 -1, %i.mt
  %i.mu = xor i64 %notmask.i44.i.i.i.i.i, -1
  %i.mv = sext i32 %i.mr to i64
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.mv
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !129
  %i.my = and i64 %i.mx, %i.mu                    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp eq i64 %i.my, 0
  br i1 %.not.i45.i.i.i.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit, label %.preheader.i46.i.i.i.i.i

.preheader.i46.i.i.i.i.i:                         ; preds = %bb.ai
  %i.mz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.nc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %invariant.op202 = sub i32 1, %.sroa.015.0.extract.trunc.i
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i48.i.i.i.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i48.i.i.i.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i48.i.i.i.i.i, %.preheader.i46.i.i.i.i.i
  %.011.i47.i.i.i.i.i = phi i64 [ %i.my, %.preheader.i46.i.i.i.i.i ], [ %i.nq, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i48.i.i.i.i.i ] ; 3 uses
  %i.nd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47.i.i.i.i.i, i1 true)
  %27 = trunc nuw nsw i64 %i.nd to i32
  %28 = or disjoint i32 %i.gg, %27
  %29 = sext i32 %28 to i64                       ; 3 uses
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %29
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !3
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %29
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !3
  %i.ni = sub nsw i32 %i.nf, %.sroa.015.0.extract.trunc.i
  %.reass101.i.reass.reass = add i32 %i.nh, %invariant.op202
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.ea, ptr %8, align 8, !tbaa !405
  store ptr %i.a, ptr %i.mz, align 8, !tbaa !230
  store i8 1, ptr %i.na, align 8, !tbaa !407
  store ptr %i.ea, ptr %9, align 8, !tbaa !408
  store ptr %i.a, ptr %i.nb, align 8, !tbaa !230
  store i8 1, ptr %i.nc, align 8, !tbaa !410
  %i.nj = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.ni, i32 noundef %.reass101.i.reass.reass, ptr noundef nonnull byval(%class.anon.202) align 8 %8, ptr noundef nonnull byval(%class.anon.204) align 8 %9) ; 0 uses
  %i.nk = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.nl = icmp eq i32 %i.nk, -1
  %i.nm = add nsw i32 %i.nk, %.sroa.015.0.extract.trunc.i
  %spec.select49.i = select i1 %i.nl, i32 -1, i32 %i.nm
  %i.nn = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %29
  store i32 %spec.select49.i, ptr %i.no, align 4, !tbaa !3
  %i.np = add nsw i64 %.011.i47.i.i.i.i.i, -1
  %i.nq = and i64 %i.np, %.011.i47.i.i.i.i.i      ; 2 uses
  %.not10.i49.i.i.i.i.i = icmp eq i64 %i.nq, 0
  br i1 %.not10.i49.i.i.i.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i48.i.i.i.i.i, !llvm.loop !439

_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit.sink.split: ; preds = %bb.e, %bb.f
  %.val.i = load ptr, ptr %4, align 8, !tbaa !202
  %i.nr = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load ptr, ptr %i.nr, align 8, !tbaa !197
  tail call fastcc void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(38) %5, ptr %.val.val.i)
  br label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i48.i.i.i.i.i, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i.i, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i, %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit.sink.split, %bb.ai, %._crit_edge.i.i.i.i.i, %bb.t, %bb.r, %bb.q, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !168, !range !64, !noundef !65
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.aj

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit
  %.0.in.pre.i.i = load i8, ptr %i.ns, align 4, !tbaa !138, !range !64
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.aj:                                            ; preds = %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit
  %i.nw = load i32, ptr %i.v, align 4, !tbaa !216
  %i.nx = icmp eq i32 %i.nw, 0
  br i1 %i.nx, label %bb.ak, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ny = load i32, ptr %i.x, align 8, !tbaa !217 ; 6 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !231
  %i.ob = icmp eq i32 %i.ny, %i.oa
  br i1 %i.ob, label %bb.al, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.oc = load ptr, ptr %5, align 8, !tbaa !204   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ny, 0
  br i1 %.not.i.i.i, label %bb.am, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.od = and i32 %i.ny, 2147483584               ; 3 uses
  %i.oe = zext nneg i32 %i.od to i64
  %.not37.i.i.not.i.i139.not = icmp eq i32 %i.od, 0
  br i1 %.not37.i.i.not.i.i139.not, label %.critedge.i.i.i.i, label %.lr.ph141

bb.an:                                            ; preds = %.lr.ph141
  %indvars.iv.next.i.i50 = add nuw nsw i64 %indvars.iv.i.i49140, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i50, %i.oe
  br i1 %.not37.i.i.not.i.i, label %.lr.ph141, label %.critedge.i.i.i.i, !llvm.loop !232

.lr.ph141:                                        ; preds = %bb.am, %bb.an
  %indvars.iv.i.i49140 = phi i64 [ %indvars.iv.next.i.i50, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %i.of = lshr exact i64 %indvars.iv.i.i49140, 3
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.of
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !129
  %i.oi = icmp eq i64 %i.oh, -1
  br i1 %i.oi, label %bb.an, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !232

.critedge.i.i.i.i:                                ; preds = %bb.an, %bb.am
  %.not38.i.i.i.i = icmp eq i32 %i.ny, %i.od
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %.critedge.i.i.i.i
  %i.oj = lshr i32 %i.ny, 6
  %i.ok = and i32 %i.ny, 63
  %i.ol = zext nneg i32 %i.ok to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ol
  %i.om = zext nneg i32 %i.oj to i64
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.om
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !129
  %.demorgan.i.i = or i64 %i.oo, %notmask.i40.i.i.i.i
  %i.op = icmp eq i64 %.demorgan.i.i, -1
  %i.oq = zext i1 %i.op to i16
  %i.or = or disjoint i16 %i.oq, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph141, %bb.ao, %.critedge.i.i.i.i, %bb.al, %bb.ak, %bb.aj
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.ak ], [ 256, %bb.aj ], [ 257, %bb.al ], [ 257, %.critedge.i.i.i.i ], [ %i.or, %bb.ao ], [ 256, %.lr.ph141 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.ns, align 4
  %i.os = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.os, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !231 ; 3 uses
  %i.ow = sext i32 %i.ov to i64
  %i.ox = add nsw i64 %i.ow, 63
  %i.oy = lshr i64 %i.ox, 6                       ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !239 ; 4 uses
  %i.pb = load ptr, ptr %i.ot, align 8, !tbaa !204 ; 5 uses
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = ptrtoint ptr %i.pb to i64               ; 4 uses
  %i.pe = sub i64 %i.pc, %i.pd
  %i.pf = ashr exact i64 %i.pe, 3                 ; 3 uses
  %i.pg = icmp ugt i64 %i.oy, %i.pf
  br i1 %i.pg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ph = sub nuw nsw i64 %i.oy, %i.pf
  call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(38) %i.ot, i64 noundef %i.ph)
  %.pre.i.i = load ptr, ptr %i.ot, align 8, !tbaa !229 ; 2 uses
  %.pre7.i.i = load ptr, ptr %i.oz, align 8, !tbaa !229
  %.pre.i = ptrtoint ptr %.pre.i.i to i64
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.pi = icmp ult i64 %i.oy, %i.pf
  br i1 %i.pi, label %bb.as, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %i.oy ; 3 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.pa, %i.pj
  br i1 %.not.i.i.i.i48, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.as
  store ptr %i.pj, ptr %i.oz, align 8, !tbaa !239
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i

_ZNSt6vectorImSaImEE6resizeEm.exit.i.i:           ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.as, %bb.ar, %bb.aq
  %.pre-phi.i = phi i64 [ %i.pd, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.pd, %bb.as ], [ %i.pd, %bb.ar ], [ %.pre.i, %bb.aq ]
  %i.pk = phi ptr [ %i.pj, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.pa, %bb.as ], [ %i.pa, %bb.ar ], [ %.pre7.i.i, %bb.aq ] ; 2 uses
  %i.pl = phi ptr [ %i.pb, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.pb, %bb.as ], [ %i.pb, %bb.ar ], [ %.pre.i.i, %bb.aq ] ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.pl, %i.pk
  br i1 %.not5.i.i.i.i.i.i, label %_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i
  %i.pm = ptrtoint ptr %i.pk to i64
  %reass.sub62 = sub i64 %i.pm, %.pre-phi.i
  %i.pn = and i64 %reass.sub62, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.pl, i8 -1, i64 %i.pn, i1 false), !tbaa !129
  br label %_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i

_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i32 %i.ov, ptr %i.po, align 8, !tbaa !231
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  store i32 0, ptr %i.pp, align 4, !tbaa !216
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  store i32 %i.ov, ptr %i.pq, align 8, !tbaa !217
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  store i16 257, ptr %i.pr, align 4
  call void @_ZN8facebook5velox17SelectivityVector8deselectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.ot, ptr noundef nonnull align 8 dereferenceable(38) %5)
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 165
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !168, !range !64, !noundef !65
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i46, label %bb.at

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i46: ; preds = %_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i
  %.0.in.pre.i.i.i47 = load i8, ptr %i.pr, align 4, !tbaa !138, !range !64
  %.pre = load i32, ptr %i.pp, align 4, !tbaa !216
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i16

bb.at:                                            ; preds = %_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i
  %i.pv = load i32, ptr %i.pp, align 4, !tbaa !216 ; 2 uses
  %i.pw = icmp eq i32 %i.pv, 0
  br i1 %i.pw, label %bb.au, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14

bb.au:                                            ; preds = %bb.at
  %i.px = load i32, ptr %i.pq, align 8, !tbaa !217 ; 6 uses
  %i.py = load i32, ptr %i.po, align 8, !tbaa !231
  %i.pz = icmp eq i32 %i.px, %i.py
  br i1 %i.pz, label %bb.av, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14

bb.av:                                            ; preds = %bb.au
  %i.qa = load ptr, ptr %i.ot, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i6.i = icmp sgt i32 %i.px, 0
  br i1 %.not.i.i.i6.i, label %bb.aw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14

bb.aw:                                            ; preds = %bb.av
  %i.qb = and i32 %i.px, 2147483584               ; 3 uses
  %i.qc = zext nneg i32 %i.qb to i64
  %.not37.i.i.not.i.i.i40142.not = icmp eq i32 %i.qb, 0
  br i1 %.not37.i.i.not.i.i.i40142.not, label %.critedge.i.i.i.i.i41, label %.lr.ph144

bb.ax:                                            ; preds = %.lr.ph144
  %indvars.iv.next.i.i.i45 = add nuw nsw i64 %indvars.iv.i.i.i39143, 64 ; 2 uses
  %.not37.i.i.not.i.i.i40 = icmp samesign ult i64 %indvars.iv.next.i.i.i45, %i.qc
  br i1 %.not37.i.i.not.i.i.i40, label %.lr.ph144, label %.critedge.i.i.i.i.i41, !llvm.loop !232

.lr.ph144:                                        ; preds = %bb.aw, %bb.ax
  %indvars.iv.i.i.i39143 = phi i64 [ %indvars.iv.next.i.i.i45, %bb.ax ], [ 0, %bb.aw ] ; 2 uses
  %i.qd = lshr exact i64 %indvars.iv.i.i.i39143, 3
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qd
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !129
  %i.qg = icmp eq i64 %i.qf, -1
  br i1 %i.qg, label %bb.ax, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14, !llvm.loop !232

.critedge.i.i.i.i.i41:                            ; preds = %bb.ax, %bb.aw
  %.not38.i.i.i.i.i42 = icmp eq i32 %i.px, %i.qb
  br i1 %.not38.i.i.i.i.i42, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14, label %bb.ay

bb.ay:                                            ; preds = %.critedge.i.i.i.i.i41
  %i.qh = lshr i32 %i.px, 6
  %i.qi = and i32 %i.px, 63
  %i.qj = zext nneg i32 %i.qi to i64
  %notmask.i40.i.i.i.i.i43 = shl nsw i64 -1, %i.qj
  %i.qk = zext nneg i32 %i.qh to i64
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %i.qk
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !129
  %.demorgan.i.i.i44 = or i64 %i.qm, %notmask.i40.i.i.i.i.i43
  %i.qn = icmp eq i64 %.demorgan.i.i.i44, -1
  %i.qo = zext i1 %i.qn to i16
  %i.qp = or disjoint i16 %i.qo, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14: ; preds = %.lr.ph144, %bb.ay, %.critedge.i.i.i.i.i41, %bb.av, %bb.au, %bb.at
  %.sroa.0.0.insert.ext.i.i.i15 = phi i16 [ 256, %bb.au ], [ 256, %bb.at ], [ 257, %bb.av ], [ 257, %.critedge.i.i.i.i.i41 ], [ %i.qp, %bb.ay ], [ 256, %.lr.ph144 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i15, ptr %i.pr, align 4
  %i.qq = trunc i16 %.sroa.0.0.insert.ext.i.i.i15 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i16

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i16: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i46
  %i.qr = phi i32 [ %.pre, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i46 ], [ %i.pv, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14 ] ; 9 uses
  %.0.in.i.i.i17 = phi i8 [ %.0.in.pre.i.i.i47, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i46 ], [ %i.qq, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i14 ]
  %.0.i.i.i18 = trunc nuw i8 %.0.in.i.i.i17 to i1
  br i1 %.0.i.i.i18, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i16
  %i.qs = load i32, ptr %i.pq, align 8, !tbaa !217 ; 2 uses
  %i.qt = icmp slt i32 %i.qr, %i.qs
  br i1 %i.qt, label %.lr.ph.i.i38, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit

.lr.ph.i.i38:                                     ; preds = %bb.az
  %.val.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.qu = sext i32 %i.qr to i64
  %i.qv = shl nsw i64 %i.qu, 2
  %scevgep.i.i = getelementptr nuw i8, ptr %.val.val.i.i, i64 %i.qv
  %i.qw = xor i32 %i.qr, -1
  %i.qx = add i32 %i.qs, %i.qw
  %i.qy = zext i32 %i.qx to i64
  %i.qz = shl nuw nsw i64 %i.qy, 2
  %i.ra = add nuw nsw i64 %i.qz, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 -1, i64 %i.ra, i1 false), !tbaa !3
  br label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit

bb.ba:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i16
  %i.rb = load ptr, ptr %i.ot, align 8, !tbaa !204 ; 4 uses
  %i.rc = load i32, ptr %i.pq, align 8, !tbaa !217 ; 7 uses
  %.not.i.i.i.i.i19 = icmp slt i32 %i.qr, %i.rc
  br i1 %.not.i.i.i.i.i19, label %bb.bb, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.rd = add i32 %i.qr, 63                       ; 2 uses
  %i.re = srem i32 %i.rd, 64
  %i.rf = sub nsw i32 %i.rd, %i.re                ; 6 uses
  %i.rg = and i32 %i.rc, -64                      ; 6 uses
  %i.rh = icmp slt i32 %i.rg, %i.rf
  br i1 %i.rh, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ri = ashr i32 %i.rc, 6
  %i.rj = and i32 %i.rc, 63
  %i.rk = zext nneg i32 %i.rj to i64
  %notmask.i.i.i.i.i.i33 = shl nsw i64 -1, %i.rk
  %i.rl = xor i64 %notmask.i.i.i.i.i.i33, -1
  %i.rm = sub nsw i32 %i.rf, %i.qr                ; 2 uses
  %i.rn = zext nneg i32 %i.rm to i64
  %notmask.i.i.i.i.i.i.i34 = shl nsw i64 -1, %i.rn
  %i.ro = xor i64 %notmask.i.i.i.i.i.i.i34, -1
  %i.rp = sub nsw i32 64, %i.rm
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = shl i64 %i.ro, %i.rq
  %i.rs = and i64 %i.rr, %i.rl
  %i.rt = sext i32 %i.ri to i64
  %i.ru = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.rt
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !129
  %i.rw = and i64 %i.rs, %i.rv                    ; 2 uses
  %.not.i.i.i.i.i5.i = icmp eq i64 %i.rw, 0
  br i1 %.not.i.i.i.i.i5.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %.preheader.i.i.i.i.i.i35

.preheader.i.i.i.i.i.i35:                         ; preds = %bb.bc
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !206
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.preheader.i.i.i.i.i.i35
  %.011.i.i.i.i.i.i36 = phi i64 [ %i.rw, %.preheader.i.i.i.i.i.i35 ], [ %i.sa, %bb.bd ] ; 3 uses
  %i.rx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i36, i1 true)
  %30 = trunc nuw nsw i64 %i.rx to i32
  %31 = or disjoint i32 %i.rg, %30
  %32 = sext i32 %31 to i64
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i.i.i, i64 %32
  store i32 -1, ptr %i.ry, align 4, !tbaa !3
  %i.rz = add nsw i64 %.011.i.i.i.i.i.i36, -1
  %i.sa = and i64 %i.rz, %.011.i.i.i.i.i.i36      ; 2 uses
  %.not10.i.i.i.i.i.i37 = icmp eq i64 %i.sa, 0
  br i1 %.not10.i.i.i.i.i.i37, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %bb.bd, !llvm.loop !443

bb.be:                                            ; preds = %bb.bb
  %.not32.i.i.i.i.i20 = icmp eq i32 %i.qr, %i.rf
  br i1 %.not32.i.i.i.i.i20, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.sb = sdiv i32 %i.qr, 64                      ; 2 uses
  %i.sc = sub nsw i32 %i.rf, %i.qr                ; 2 uses
  %i.sd = zext nneg i32 %i.sc to i64
  %notmask.i.i35.i.i.i.i.i21 = shl nsw i64 -1, %i.sd
  %i.se = xor i64 %notmask.i.i35.i.i.i.i.i21, -1
  %i.sf = sub nsw i32 64, %i.sc
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = shl i64 %i.se, %i.sg
  %i.si = sext i32 %i.sb to i64
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.si
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !129
  %i.sl = and i64 %i.sk, %i.sh                    ; 2 uses
  %.not.i36.i.i.i.i.i22 = icmp eq i64 %i.sl, 0
  br i1 %.not.i36.i.i.i.i.i22, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i23

.preheader.i37.i.i.i.i.i23:                       ; preds = %bb.bf
  %i.sm = shl nsw i32 %i.sb, 6
  %.val.val.i39.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !206
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.preheader.i37.i.i.i.i.i23
  %.011.i40.i.i.i.i.i = phi i64 [ %i.sl, %.preheader.i37.i.i.i.i.i23 ], [ %i.sq, %bb.bg ] ; 3 uses
  %i.sn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40.i.i.i.i.i, i1 true)
  %33 = trunc nuw nsw i64 %i.sn to i32
  %34 = or disjoint i32 %i.sm, %33
  %35 = sext i32 %34 to i64
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i39.i.i.i.i.i, i64 %35
  store i32 -1, ptr %i.so, align 4, !tbaa !3
  %i.sp = add i64 %.011.i40.i.i.i.i.i, -1
  %i.sq = and i64 %i.sp, %.011.i40.i.i.i.i.i      ; 2 uses
  %.not10.i41.i.i.i.i.i = icmp eq i64 %i.sq, 0
  br i1 %.not10.i41.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i, label %bb.bg, !llvm.loop !443

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.sr = add nsw i32 %i.rf, 64                   ; 2 uses
  %.not3355.i.i.i.i.i = icmp sgt i32 %i.sr, %i.rg
  br i1 %.not3355.i.i.i.i.i, label %._crit_edge.i.i.i.i.i26, label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i
  %.val17.val.i.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 2 uses
  br label %bb.bh

._crit_edge.i.i.i.i.i26:                          ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i
  %.not34.i.i.i.i.i27 = icmp eq i32 %i.rc, %i.rg
  br i1 %.not34.i.i.i.i.i27, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %bb.bk

bb.bh:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i24
  %i.ss = phi i32 [ %i.sr, %.lr.ph.i.i.i.i.i24 ], [ %i.tk, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i = phi i32 [ %i.rf, %.lr.ph.i.i.i.i.i24 ], [ %i.ss, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i ] ; 2 uses
  %i.st = sdiv i32 %.056.i.i.i.i.i, 64            ; 3 uses
  %i.su = sext i32 %i.st to i64
  %i.sv = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.su
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !129 ; 2 uses
  switch i64 %i.sw, label %.lr.ph.i.i.i.i.i4.i [
    i64 -1, label %bb.bi
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i4.i:                              ; preds = %bb.bh
  %i.sx = shl nsw i32 %i.st, 6
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %.0.off.i.i.i.i.i28 = add i32 %.056.i.i.i.i.i, 127
  %.not23.i.i.i.i.i.i29 = icmp ult i32 %.0.off.i.i.i.i.i28, 64
  br i1 %.not23.i.i.i.i.i.i29, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i30

.lr.ph22.i.i.i.i.i.i30:                           ; preds = %bb.bi
  %i.sy = shl nsw i32 %i.st, 6                    ; 2 uses
  %i.sz = add i32 %i.sy, 64
  %i.ta = sext i32 %i.sz to i64
  %i.tb = sext i32 %i.sy to i64                   ; 3 uses
  %i.tc = shl nsw i64 %i.tb, 2
  %scevgep.i.i.i.i.i.i = getelementptr nuw i8, ptr %.val17.val.i.i.i.i.i.i, i64 %i.tc
  %i.td = or disjoint i64 %i.tb, 1
  %umax.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.td, i64 %i.ta)
  %i.te = sub nsw i64 %umax.i.i.i.i.i.i, %i.tb
  %i.tf = shl nsw i64 %i.te, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i.i.i.i, i8 -1, i64 %i.tf, i1 false), !tbaa !3
  br label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i.i.i.i.i4.i
  %.01520.i.i.i.i.i.i31 = phi i64 [ %i.sw, %.lr.ph.i.i.i.i.i4.i ], [ %i.tj, %bb.bj ] ; 3 uses
  %i.tg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01520.i.i.i.i.i.i31, i1 true)
  %36 = trunc nuw nsw i64 %i.tg to i32
  %37 = or disjoint i32 %i.sx, %36
  %38 = sext i32 %37 to i64
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.val17.val.i.i.i.i.i.i, i64 %38
  store i32 -1, ptr %i.th, align 4, !tbaa !3
  %i.ti = add i64 %.01520.i.i.i.i.i.i31, -1
  %i.tj = and i64 %i.ti, %.01520.i.i.i.i.i.i31    ; 2 uses
  %.not.i45.i.i.i.i.i32 = icmp eq i64 %i.tj, 0
  br i1 %.not.i45.i.i.i.i.i32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.bj, !llvm.loop !444

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %bb.bj, %.lr.ph22.i.i.i.i.i.i30, %bb.bi, %bb.bh
  %i.tk = add nsw i32 %i.ss, 64                   ; 2 uses
  %.not33.i.i.i.i.i25 = icmp sgt i32 %i.tk, %i.rg
  br i1 %.not33.i.i.i.i.i25, label %._crit_edge.i.i.i.i.i26, label %bb.bh, !llvm.loop !445

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i.i26
  %i.tl = ashr i32 %i.rc, 6
  %i.tm = and i32 %i.rc, 63
  %i.tn = zext nneg i32 %i.tm to i64
  %notmask.i46.i.i.i.i.i = shl nsw i64 -1, %i.tn
  %i.to = xor i64 %notmask.i46.i.i.i.i.i, -1
  %i.tp = sext i32 %i.tl to i64
  %i.tq = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.tp
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !129
  %i.ts = and i64 %i.tr, %i.to                    ; 2 uses
  %.not.i47.i.i.i.i.i = icmp eq i64 %i.ts, 0
  br i1 %.not.i47.i.i.i.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %.preheader.i48.i.i.i.i.i

.preheader.i48.i.i.i.i.i:                         ; preds = %bb.bk
  %.val.val.i50.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !206
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.preheader.i48.i.i.i.i.i
  %.011.i51.i.i.i.i.i = phi i64 [ %i.ts, %.preheader.i48.i.i.i.i.i ], [ %i.tw, %bb.bl ] ; 3 uses
  %i.tt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i51.i.i.i.i.i, i1 true)
  %39 = trunc nuw nsw i64 %i.tt to i32
  %40 = or disjoint i32 %i.rg, %39
  %41 = sext i32 %40 to i64
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i50.i.i.i.i.i, i64 %41
  store i32 -1, ptr %i.tu, align 4, !tbaa !3
  %i.tv = add nsw i64 %.011.i51.i.i.i.i.i, -1
  %i.tw = and i64 %i.tv, %.011.i51.i.i.i.i.i      ; 2 uses
  %.not10.i52.i.i.i.i.i = icmp eq i64 %i.tw, 0
  br i1 %.not10.i52.i.i.i.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %bb.bl, !llvm.loop !443

_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit: ; preds = %bb.bl, %bb.bd, %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i, %bb.az, %.lr.ph.i.i38, %bb.ba, %bb.bc, %._crit_edge.i.i.i.i.i26, %bb.bk
  %i.tx = load ptr, ptr %i.j, align 8, !tbaa !206 ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.i
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !431
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !426
  call void @_ZNK8facebook5velox4exec15WindowPartition13extractColumnEiN5folly5RangeIPKiEEiRKSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(152) %i.ua, i32 noundef %i.uc, ptr %i.tx, ptr %i.ty, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(38) %1, ptr nofree readonly captures(none) %.0.val.16.val) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.0.val.16.val30 = ptrtoaddr ptr %.0.val.16.val to i64 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !168, !range !64, !noundef !65
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.a
  %.0.in.pre.i.i = load i8, ptr %i.a, align 4, !tbaa !138, !range !64
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !216
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !217  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !231
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !204    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i.i27.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i.i27.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i28, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.o
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !232

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i.i28 = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i.i28, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !129
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !232

.critedge.i.i.i.i:                                ; preds = %bb.f, %bb.e
  %.not38.i.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !129
  %.demorgan.i.i = or i64 %i.y, %notmask.i40.i.i.i.i
  %i.z = icmp eq i64 %.demorgan.i.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !217 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !216 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %iter.check61, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit

iter.check61:                                     ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i = load ptr, ptr %i.ai, align 8, !tbaa !206 ; 8 uses
  %i.aj = sext i32 %i.ag to i64                   ; 6 uses
  %wide.trip.count.i = sext i32 %i.ae to i64      ; 4 uses
  %i.ak = sub nsw i64 %wide.trip.count.i, %i.aj   ; 7 uses
  %min.iters.check45 = icmp ult i64 %i.ak, 8
  %.val.val.i43 = ptrtoaddr ptr %.val.val.i to i64
  %i.al = sub i64 %.val.val.i43, %.0.val.16.val30
  %diff.check44 = icmp ult i64 %i.al, 128
  %or.cond = select i1 %min.iters.check45, i1 true, i1 %diff.check44
  br i1 %or.cond, label %vec.epilog.scalar.ph62.preheader, label %vector.main.loop.iter.check46

vector.main.loop.iter.check46:                    ; preds = %iter.check61
  %min.iters.check47 = icmp ult i64 %i.ak, 32
  br i1 %min.iters.check47, label %vec.epilog.ph65, label %vector.ph48

vector.ph48:                                      ; preds = %vector.main.loop.iter.check46
  %n.mod.vf49 = and i64 %i.ak, 24
  %n.vec50 = and i64 %i.ak, -32                   ; 4 uses
  %i.am = add nsw i64 %n.vec50, %i.aj
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph48
  %index52 = phi i64 [ 0, %vector.ph48 ], [ %index.next57, %vector.body51 ] ; 2 uses
  %i.an = add i64 %index52, %i.aj                 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %wide.load53 = load <8 x i32>, ptr %i.ao, align 4, !tbaa !3
  %wide.load54 = load <8 x i32>, ptr %i.ap, align 4, !tbaa !3
  %wide.load55 = load <8 x i32>, ptr %i.aq, align 4, !tbaa !3
  %wide.load56 = load <8 x i32>, ptr %i.ar, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %i.an ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store <8 x i32> %wide.load53, ptr %i.as, align 4, !tbaa !3
  store <8 x i32> %wide.load54, ptr %i.at, align 4, !tbaa !3
  store <8 x i32> %wide.load55, ptr %i.au, align 4, !tbaa !3
  store <8 x i32> %wide.load56, ptr %i.av, align 4, !tbaa !3
  %index.next57 = add nuw i64 %index52, 32        ; 2 uses
  %i.aw = icmp eq i64 %index.next57, %n.vec50
  br i1 %i.aw, label %middle.block58, label %vector.body51, !llvm.loop !446

middle.block58:                                   ; preds = %vector.body51
  %cmp.n59 = icmp eq i64 %i.ak, %n.vec50
  br i1 %cmp.n59, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %vec.epilog.iter.check63

vec.epilog.iter.check63:                          ; preds = %middle.block58
  %min.epilog.iters.check64 = icmp eq i64 %n.mod.vf49, 0
  br i1 %min.epilog.iters.check64, label %vec.epilog.scalar.ph62.preheader, label %vec.epilog.ph65, !prof !386

vec.epilog.ph65:                                  ; preds = %vector.main.loop.iter.check46, %vec.epilog.iter.check63
  %vec.epilog.resume.val60 = phi i64 [ %n.vec50, %vec.epilog.iter.check63 ], [ 0, %vector.main.loop.iter.check46 ]
  %n.vec67 = and i64 %i.ak, -8                    ; 3 uses
  %i.ax = add nsw i64 %n.vec67, %i.aj
  br label %vec.epilog.vector.body68

vec.epilog.vector.body68:                         ; preds = %vec.epilog.vector.body68, %vec.epilog.ph65
  %index69 = phi i64 [ %vec.epilog.resume.val60, %vec.epilog.ph65 ], [ %index.next71, %vec.epilog.vector.body68 ] ; 2 uses
  %i.ay = add i64 %index69, %i.aj                 ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %i.ay
  %wide.load70 = load <8 x i32>, ptr %i.az, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %i.ay
  store <8 x i32> %wide.load70, ptr %i.ba, align 4, !tbaa !3
  %index.next71 = add nuw i64 %index69, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next71, %n.vec67
  br i1 %i.bb, label %vec.epilog.middle.block72, label %vec.epilog.vector.body68, !llvm.loop !447

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body68
  %cmp.n73 = icmp eq i64 %i.ak, %n.vec67
  br i1 %cmp.n73, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %vec.epilog.scalar.ph62.preheader

vec.epilog.scalar.ph62.preheader:                 ; preds = %iter.check61, %vec.epilog.iter.check63, %vec.epilog.middle.block72
  %indvars.iv.i.ph = phi i64 [ %i.aj, %iter.check61 ], [ %i.am, %vec.epilog.iter.check63 ], [ %i.ax, %vec.epilog.middle.block72 ] ; 4 uses
  %i.bc = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph62.prol.loopexit, label %vec.epilog.scalar.ph62.prol

vec.epilog.scalar.ph62.prol:                      ; preds = %vec.epilog.scalar.ph62.preheader, %vec.epilog.scalar.ph62.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph62.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph62.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph62.prol ], [ 0, %vec.epilog.scalar.ph62.preheader ]
  %i.bd = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.i.prol
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.i.prol
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph62.prol.loopexit, label %vec.epilog.scalar.ph62.prol, !llvm.loop !448

vec.epilog.scalar.ph62.prol.loopexit:             ; preds = %vec.epilog.scalar.ph62.prol, %vec.epilog.scalar.ph62.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph62.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph62.prol ]
  %i.bg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %vec.epilog.scalar.ph62

vec.epilog.scalar.ph62:                           ; preds = %vec.epilog.scalar.ph62.prol.loopexit, %vec.epilog.scalar.ph62
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph62 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph62.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.i
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.next.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.next.i
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.next.i.1
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.next.i.1
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.next.i.2
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.next.i.2
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %vec.epilog.scalar.ph62, !llvm.loop !449

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bu = load ptr, ptr %1, align 8, !tbaa !204   ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !216 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !217 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.bw, %i.by
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = add i32 %i.bw, 63                       ; 2 uses
  %i.ca = srem i32 %i.bz, 64
  %i.cb = sub nsw i32 %i.bz, %i.ca                ; 6 uses
  %i.cc = and i32 %i.by, -64                      ; 6 uses
  %i.cd = icmp slt i32 %i.cc, %i.cb
  br i1 %i.cd, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ce = ashr i32 %i.by, 6
  %i.cf = and i32 %i.by, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.cg
  %i.ch = xor i64 %notmask.i.i.i.i.i, -1
  %i.ci = sub nsw i32 %i.cb, %i.bw                ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.cj
  %i.ck = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.cl = sub nsw i32 64, %i.ci
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl i64 %i.ck, %i.cm
  %i.co = and i64 %i.cn, %i.ch
  %i.cp = sext i32 %i.ce to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !129
  %i.cs = and i64 %i.co, %i.cr                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !206
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cs, %.preheader.i.i.i.i.i ], [ %i.cz, %bb.l ] ; 3 uses
  %i.cu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %2 = trunc nuw nsw i64 %i.cu to i32
  %3 = or disjoint i32 %i.cc, %2
  %4 = sext i32 %3 to i64                         ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %4
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !3
  %i.cy = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cz = and i64 %i.cy, %.012.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %bb.l, !llvm.loop !450

bb.m:                                             ; preds = %bb.j
  %.not32.i.i.i.i = icmp eq i32 %i.bw, %i.cb
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = sdiv i32 %i.bw, 64                      ; 2 uses
  %i.db = sub nsw i32 %i.cb, %i.bw                ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dc
  %i.dd = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.de = sub nsw i32 64, %i.db
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = shl i64 %i.dd, %i.df
  %i.dh = sext i32 %i.da to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !129
  %i.dk = and i64 %i.dj, %i.dg                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.n
  %i.dl = shl nsw i32 %i.da, 6
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i40.i.i.i.i = load ptr, ptr %i.dm, align 8, !tbaa !206
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader.i37.i.i.i.i
  %.012.i42.i.i.i.i = phi i64 [ %i.dk, %.preheader.i37.i.i.i.i ], [ %i.ds, %bb.o ] ; 3 uses
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i42.i.i.i.i, i1 true)
  %5 = trunc nuw nsw i64 %i.dn to i32
  %6 = or disjoint i32 %i.dl, %5
  %7 = sext i32 %6 to i64                         ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %7
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i40.i.i.i.i, i64 %7
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !3
  %i.dr = add i64 %.012.i42.i.i.i.i, -1
  %i.ds = and i64 %i.dr, %.012.i42.i.i.i.i        ; 2 uses
  %.not10.i43.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not10.i43.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i, label %bb.o, !llvm.loop !450

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.dt = add nsw i32 %i.cb, 64                   ; 2 uses
  %.not3360.i.i.i.i = icmp sgt i32 %i.dt, %i.cc
  br i1 %.not3360.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val18.val.i.i.i.i.i = load ptr, ptr %i.du, align 8 ; 5 uses
  %.val18.val.i.i.i.i.i29 = ptrtoaddr ptr %.val18.val.i.i.i.i.i to i64
  %i.dv = sub i64 %.val18.val.i.i.i.i.i29, %.0.val.16.val30
  %diff.check = icmp ult i64 %i.dv, 128
  br label %bb.p

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.by, %i.cc
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %bb.s

bb.p:                                             ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.dw = phi i32 [ %i.dt, %.lr.ph.i.i.i.i ], [ %i.fi, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.061.i.i.i.i = phi i32 [ %i.cb, %.lr.ph.i.i.i.i ], [ %i.dw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.dx = sdiv i32 %.061.i.i.i.i, 64              ; 3 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !129 ; 2 uses
  switch i64 %i.ea, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.q
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p
  %i.eb = shl nsw i32 %i.dx, 6
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ec = shl nsw i32 %i.dx, 6                    ; 2 uses
  %i.ed = add i32 %i.ec, 64
  %i.ee = sext i32 %i.ed to i64                   ; 2 uses
  %.0.off.i.i.i.i = add i32 %.061.i.i.i.i, 127
  %.not25.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not25.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.ef = sext i32 %i.ec to i64                   ; 6 uses
  %i.eg = or disjoint i64 %i.ef, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eg, i64 %i.ee) ; 2 uses
  %i.eh = sub i64 %umax, %i.ef                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.eh, 8
  %or.cond75 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond75, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check31 = icmp ult i64 %i.eh, 32
  %n.mod.vf35 = and i64 %umax, 1                  ; 3 uses
  %n.vec36 = sub nuw i64 %i.eh, %n.mod.vf35       ; 3 uses
  %i.ei = add i64 %n.vec36, %i.ef                 ; 2 uses
  br i1 %min.iters.check31, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ej = add i64 %index, %i.ef                   ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.0.val.16.val, i64 %i.ej ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %wide.load = load <8 x i32>, ptr %i.ek, align 4, !tbaa !3
  %wide.load32 = load <8 x i32>, ptr %i.el, align 4, !tbaa !3
  %wide.load33 = load <8 x i32>, ptr %i.em, align 4, !tbaa !3
  %wide.load34 = load <8 x i32>, ptr %i.en, align 4, !tbaa !3
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %i.ej ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  store <8 x i32> %wide.load, ptr %i.eo, align 4, !tbaa !3
  store <8 x i32> %wide.load32, ptr %i.ep, align 4, !tbaa !3
  store <8 x i32> %wide.load33, ptr %i.eq, align 4, !tbaa !3
  store <8 x i32> %wide.load34, ptr %i.er, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec36
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !451

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf35, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index37 = phi i64 [ %index.next39, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.et = add i64 %index37, %i.ef                 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0.val.16.val, i64 %i.et
  %wide.load38 = load <8 x i32>, ptr %i.eu, align 4, !tbaa !3
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %i.et
  store <8 x i32> %wide.load38, ptr %i.ev, align 4, !tbaa !3
  %index.next39 = add nuw i64 %index37, 8         ; 2 uses
  %i.ew = icmp eq i64 %index.next39, %n.vec36
  br i1 %i.ew, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !452

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %n.mod.vf35, 0
  br i1 %cmp.n40, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.023.i.i.i.i.i.ph = phi i64 [ %i.ei, %middle.block ], [ %i.ef, %iter.check ], [ %i.ei, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.023.i.i.i.i.i = phi i64 [ %i.fa, %vec.epilog.scalar.ph ], [ %.023.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0.val.16.val, i64 %.023.i.i.i.i.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %.023.i.i.i.i.i
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !3
  %i.fa = add nuw i64 %.023.i.i.i.i.i, 1          ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.ee
  br i1 %i.fb, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !453

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i
  %.01522.i.i.i.i.i = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.i ], [ %i.fh, %bb.r ] ; 3 uses
  %i.fc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i, i1 true)
  %8 = trunc nuw nsw i64 %i.fc to i32
  %9 = or disjoint i32 %i.eb, %8
  %10 = sext i32 %9 to i64                        ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %10
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %10
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !3
  %i.fg = add i64 %.01522.i.i.i.i.i, -1
  %i.fh = and i64 %i.fg, %.01522.i.i.i.i.i        ; 2 uses
  %.not.i47.i.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i47.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %bb.r, !llvm.loop !454

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i: ; preds = %vec.epilog.scalar.ph, %bb.r, %middle.block, %vec.epilog.middle.block, %bb.q, %bb.p
  %i.fi = add nsw i32 %i.dw, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.fi, %i.cc
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.p, !llvm.loop !455

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.fj = ashr i32 %i.by, 6
  %i.fk = and i32 %i.by, 63
  %i.fl = zext nneg i32 %i.fk to i64
  %notmask.i48.i.i.i.i = shl nsw i64 -1, %i.fl
  %i.fm = xor i64 %notmask.i48.i.i.i.i, -1
  %i.fn = sext i32 %i.fj to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !129
  %i.fq = and i64 %i.fp, %i.fm                    ; 2 uses
  %.not.i49.i.i.i.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i49.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %.preheader.i50.i.i.i.i

.preheader.i50.i.i.i.i:                           ; preds = %bb.s
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i53.i.i.i.i = load ptr, ptr %i.fr, align 8, !tbaa !206
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader.i50.i.i.i.i
  %.012.i55.i.i.i.i = phi i64 [ %i.fq, %.preheader.i50.i.i.i.i ], [ %i.fx, %bb.t ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i55.i.i.i.i, i1 true)
  %11 = trunc nuw nsw i64 %i.fs to i32
  %12 = or disjoint i32 %i.cc, %11
  %13 = sext i32 %12 to i64                       ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %13
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i53.i.i.i.i, i64 %13
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !3
  %i.fw = add nsw i64 %.012.i55.i.i.i.i, -1
  %i.fx = and i64 %i.fw, %.012.i55.i.i.i.i        ; 2 uses
  %.not10.i56.i.i.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not10.i56.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %bb.t, !llvm.loop !450

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit: ; preds = %bb.t, %bb.l, %vec.epilog.scalar.ph62.prol.loopexit, %vec.epilog.scalar.ph62, %middle.block58, %vec.epilog.middle.block72, %bb.h, %bb.i, %bb.k, %._crit_edge.i.i.i.i, %bb.s
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { cold noreturn }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !9, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!12, !13, i64 8}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !18, i64 0, !13, i64 8, !20, i64 16, !13, i64 24, !22, i64 32, !21, i64 48}
!18 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !19, i64 0}
!19 = !{!"any p2 pointer", !10, i64 0}
!20 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !21, i64 0}
!21 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!22 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !23, i64 0, !13, i64 8}
!23 = !{!"float", !5, i64 0}
!24 = !{!17, !13, i64 8}
!25 = !{!22, !23, i64 0}
!26 = !{!27, !30, i64 32}
!27 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !28, i64 0, !28, i64 16, !30, i64 32}
!28 = !{!"_ZTSSt13_Bit_iterator", !29, i64 0}
!29 = !{!"_ZTSSt18_Bit_iterator_base", !30, i64 0, !4, i64 8}
!30 = !{!"p1 long", !10, i64 0}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !10, i64 0}
!34 = !{!32, !33, i64 16}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!37 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!38 = !{!10, !10, i64 0}
!39 = !{!32, !33, i64 8}
!40 = !{!41, !4, i64 8}
!41 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!42 = !{!41, !4, i64 12}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !6, i64 0}
!45 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!33, !33, i64 0}
!48 = !{!49, !10, i64 24}
!49 = !{!"_ZTSSt8functionIFSt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERKSt6vectorINS3_17WindowFunctionArgESaIS9_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEEE", !50, i64 0, !10, i64 24}
!50 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!51 = !{!50, !10, i64 16}
!52 = distinct !{null, ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!56 = distinct !{null, ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!57 = !{!58, !59, i64 32}
!58 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !59, i64 32}
!59 = !{!"bool", !5, i64 0}
!60 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!63 = distinct !{!63, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!67, !59, i64 104}
!67 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !5, i64 0, !59, i64 104}
!68 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!69 = !{!70, !71, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !10, i64 0}
!72 = !{!70, !71, i64 8}
!73 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!74 = distinct !{!74, !54}
!75 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!76 = !{!70, !71, i64 16}
!77 = distinct !{null, null}
!78 = !{!29, !30, i64 0}
!79 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!80 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!81 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!82 = !{!17, !13, i64 24}
!83 = !{!20, !21, i64 0}
!84 = distinct !{!84, !54}
!85 = !{!21, !21, i64 0}
!86 = !{!87, !13, i64 0}
!87 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !13, i64 0}
!88 = distinct !{!88, !54}
!89 = !{!90, !91, i64 0}
!90 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !91, i64 0, !92, i64 8}
!91 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEEE", !10, i64 0}
!92 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEE", !10, i64 0}
!93 = !{!90, !92, i64 8}
!94 = distinct !{!94, !54}
!95 = !{!22, !13, i64 8}
!96 = !{!17, !21, i64 16}
!97 = !{!17, !21, i64 48}
!98 = distinct !{!98, !54}
!99 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!100 = !{!101, !59, i64 96}
!101 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !12, i64 0, !102, i64 32, !105, i64 56, !59, i64 96}
!102 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !103, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !104, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !70, i64 0}
!105 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !106, i64 0}
!106 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !107, i64 0}
!107 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !108, i64 0}
!108 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !58, i64 0}
!109 = !{!71, !71, i64 0}
!110 = distinct !{null, null, null, null}
!111 = distinct !{!111, !54}
!112 = distinct !{null, null, null}
!113 = distinct !{null, null, null, null}
!114 = distinct !{null}
!115 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_}
!116 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!117 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!118 = !{!119, !59, i64 232}
!119 = !{!"_ZTSN8facebook5velox4exec24FunctionSignatureBuilderE", !120, i64 0, !121, i64 56, !102, i64 168, !125, i64 192, !59, i64 232}
!120 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !17, i64 0}
!121 = !{!"_ZTSSt8optionalIN8facebook5velox4exec13TypeSignatureEE", !122, i64 0}
!122 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EE", !123, i64 0}
!123 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb0ELb0ELb0EE", !124, i64 0}
!124 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb1ELb0ELb0EE", !67, i64 0}
!125 = !{!"_ZTSSt6vectorIbSaIbEE", !126, i64 0}
end_hunk_2
