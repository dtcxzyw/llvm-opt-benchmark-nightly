inline.NumInlined: 2086
inline.NumDeleted: 1090
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.adn = load i32, ptr %i.yf, align 4, !tbaa !269 ; 8 uses
  br i1 %.0.i.i, label %bb.gk, label %bb.gs

bb.gk:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ado = load i32, ptr %i.yg, align 8, !tbaa !221 ; 2 uses
  %i.adp = icmp slt i32 %i.adn, %i.ado
  br i1 %i.adp, label %.lr.ph.i117, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit

.lr.ph.i117:                                      ; preds = %bb.gk
  %i.adq = load ptr, ptr %i.l, align 8, !tbaa !241
  %i.adr = load ptr, ptr %i.m, align 8, !tbaa !241
  %i.ads = sext i32 %i.adn to i64
  %wide.trip.count.i = sext i32 %i.ado to i64
  %i.adt = load ptr, ptr %35, align 8             ; 3 uses
  br label %bb.gl

bb.gl:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, %.lr.ph.i117
  %indvars.iv.i118 = phi i64 [ %i.ads, %.lr.ph.i117 ], [ %indvars.iv.next.i120, %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ] ; 3 uses
  %i.adu = getelementptr inbounds [4 x i8], ptr %i.adq, i64 %indvars.iv.i118
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !3 ; 6 uses
  %i.adw = getelementptr inbounds [4 x i8], ptr %i.adr, i64 %indvars.iv.i118
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !3 ; 3 uses
  %i.ady = add nsw i32 %i.adx, %i.adv             ; 5 uses
  %i.adz = icmp eq i32 %i.adx, 0
  br i1 %i.adz, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %.not.i.i.i.i.i119 = icmp sgt i32 %i.adx, 0
  br i1 %.not.i.i.i.i.i119, label %bb.gn, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i

bb.gn:                                            ; preds = %bb.gm
  %i.aea = add i32 %i.adv, 63                     ; 2 uses
  %i.aeb = srem i32 %i.aea, 64
  %i.aec = sub nsw i32 %i.aea, %i.aeb             ; 6 uses
  %i.aed = and i32 %i.ady, -64                    ; 4 uses
  %i.aee = icmp slt i32 %i.aed, %i.aec
  br i1 %i.aee, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.aef = and i32 %i.ady, 63
  %i.aeg = zext nneg i32 %i.aef to i64
  %notmask.i.i.i.i.i.i127 = shl nsw i64 -1, %i.aeg
  %i.aeh = xor i64 %notmask.i.i.i.i.i.i127, -1
  %i.aei = sub nsw i32 %i.aec, %i.adv             ; 2 uses
  %i.aej = zext nneg i32 %i.aei to i64
  %notmask.i.i.i.i.i.i.i128 = shl nsw i64 -1, %i.aej
  %i.aek = xor i64 %notmask.i.i.i.i.i.i.i128, -1
  %i.ael = sub nsw i32 64, %i.aei
  %i.aem = zext nneg i32 %i.ael to i64
  %i.aen = shl i64 %i.aek, %i.aem
  %i.aeo = and i64 %i.aen, %i.aeh
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i

bb.gp:                                            ; preds = %bb.gn
  %.not32.i.i.i.i.i121 = icmp eq i32 %i.adv, %i.aec
  br i1 %.not32.i.i.i.i.i121, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aep = sdiv i32 %i.adv, 64
  %i.aeq = sub nsw i32 %i.aec, %i.adv             ; 2 uses
  %i.aer = zext nneg i32 %i.aeq to i64
  %notmask.i.i35.i.i.i.i.i122 = shl nsw i64 -1, %i.aer
  %i.aes = xor i64 %notmask.i.i35.i.i.i.i.i122, -1
  %i.aet = sub nsw i32 64, %i.aeq
  %i.aeu = zext nneg i32 %i.aet to i64
  %i.aev = shl i64 %i.aes, %i.aeu
  %i.aew = sext i32 %i.aep to i64
  %i.aex = getelementptr inbounds [8 x i8], ptr %i.adt, i64 %i.aew ; 2 uses
  %i.aey = load i64, ptr %i.aex, align 8, !tbaa !135
  %i.aez = or i64 %i.aey, %i.aev
  store i64 %i.aez, ptr %i.aex, align 8, !tbaa !135
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i: ; preds = %bb.gq, %bb.gp
  %i.afa = add nsw i32 %i.aec, 64                 ; 2 uses
  %.not3347.i.i.i.i.i = icmp sgt i32 %i.afa, %i.aed
  br i1 %.not3347.i.i.i.i.i, label %._crit_edge.i.i.i.i.i125, label %.lr.ph.i.i.i.i.i123

._crit_edge.i.i.i.i.i125:                         ; preds = %.lr.ph.i.i.i.i.i123, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i
  %.not34.i.i.i.i.i126 = icmp eq i32 %i.ady, %i.aed
  br i1 %.not34.i.i.i.i.i126, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i, label %bb.gr

.lr.ph.i.i.i.i.i123:                              ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i, %.lr.ph.i.i.i.i.i123
  %i.afb = phi i32 [ %i.aff, %.lr.ph.i.i.i.i.i123 ], [ %i.afa, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i.i = phi i32 [ %i.afb, %.lr.ph.i.i.i.i.i123 ], [ %i.aec, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i ]
  %i.afc = sdiv i32 %.048.i.i.i.i.i, 64
  %i.afd = sext i32 %i.afc to i64
  %i.afe = getelementptr inbounds [8 x i8], ptr %i.adt, i64 %i.afd
  store i64 -1, ptr %i.afe, align 8, !tbaa !135
  %i.aff = add nsw i32 %i.afb, 64                 ; 2 uses
  %.not33.i.i.i.i.i124 = icmp sgt i32 %i.aff, %i.aed
  br i1 %.not33.i.i.i.i.i124, label %._crit_edge.i.i.i.i.i125, label %.lr.ph.i.i.i.i.i123, !llvm.loop !319

bb.gr:                                            ; preds = %._crit_edge.i.i.i.i.i125
  %i.afg = and i32 %i.ady, 63
  %i.afh = zext nneg i32 %i.afg to i64
  %notmask.i37.i.i.i.i.i = shl nsw i64 -1, %i.afh
  %i.afi = xor i64 %notmask.i37.i.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i: ; preds = %bb.gr, %bb.go
  %.sink10.i.i = phi i64 [ %i.afi, %bb.gr ], [ %i.aeo, %bb.go ]
  %.sink.i.i = ashr i32 %i.ady, 6
  %i.afj = sext i32 %.sink.i.i to i64
  %i.afk = getelementptr inbounds [8 x i8], ptr %i.adt, i64 %i.afj ; 2 uses
  %i.afl = load i64, ptr %i.afk, align 8, !tbaa !135
  %i.afm = or i64 %i.afl, %.sink10.i.i
  store i64 %i.afm, ptr %i.afk, align 8, !tbaa !135
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i, %._crit_edge.i.i.i.i.i125, %bb.gm
  store i8 0, ptr %i.yj, align 1, !tbaa !268
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i, %bb.gl
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i120, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %bb.gl, !llvm.loop !320

bb.gs:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.afn = load ptr, ptr %i.xy, align 8, !tbaa !254 ; 2 uses
  %i.afo = load i32, ptr %i.yg, align 8, !tbaa !221 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %35, ptr %.sroa.39.0..sroa_idx.i.i.i, align 8
  store ptr %i.l, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.m, ptr %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  store i8 1, ptr %9, align 8
  store ptr %i.afn, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i114 = icmp slt i32 %i.adn, %i.afo
  br i1 %.not.i.i.i.i114, label %bb.gt, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i

bb.gt:                                            ; preds = %bb.gs
  %i.afp = add i32 %i.adn, 63                     ; 2 uses
  %i.afq = srem i32 %i.afp, 64
  %i.afr = sub nsw i32 %i.afp, %i.afq             ; 6 uses
  %i.afs = and i32 %i.afo, -64                    ; 4 uses
  %i.aft = icmp slt i32 %i.afs, %i.afr
  br i1 %i.aft, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.afu = ashr i32 %i.afo, 6
  %i.afv = and i32 %i.afo, 63
  %i.afw = zext nneg i32 %i.afv to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.afw
  %i.afx = xor i64 %notmask.i.i.i.i.i, -1
  %i.afy = sub nsw i32 %i.afr, %i.adn             ; 2 uses
  %i.afz = zext nneg i32 %i.afy to i64
  %notmask.i.i.i.i.i6.i = shl nsw i64 -1, %i.afz
  %i.aga = xor i64 %notmask.i.i.i.i.i6.i, -1
  %i.agb = sub nsw i32 64, %i.afy
  %i.agc = zext nneg i32 %i.agb to i64
  %i.agd = shl i64 %i.aga, %i.agc
  %i.age = and i64 %i.agd, %i.afx
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %9, i32 noundef %i.afu, i64 noundef %i.age)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i

bb.gv:                                            ; preds = %bb.gt
  %.not32.i.i.i.i = icmp eq i32 %i.adn, %i.afr
  br i1 %.not32.i.i.i.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.agf = sdiv i32 %i.adn, 64
  %i.agg = sub nsw i32 %i.afr, %i.adn             ; 2 uses
  %i.agh = zext nneg i32 %i.agg to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.agh
  %i.agi = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.agj = sub nsw i32 64, %i.agg
  %i.agk = zext nneg i32 %i.agj to i64
  %i.agl = shl i64 %i.agi, %i.agk
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %9, i32 noundef %i.agf, i64 noundef %i.agl)
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.agm = add nsw i32 %i.afr, 64                 ; 2 uses
  %.not3338.i.i.i.i = icmp sgt i32 %i.agm, %i.afs
  br i1 %.not3338.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.gx
  %i.agn = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.ago = load ptr, ptr %i.m, align 8            ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, %bb.gx
  %.not34.i.i.i.i = icmp eq i32 %i.afo, %i.afs
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i, label %bb.hn

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  %i.agp = phi i32 [ %i.aks, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.agm, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.039.i.i.i.i = phi i32 [ %i.agp, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.afr, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.agq = sdiv i32 %.039.i.i.i.i, 64             ; 3 uses
  %i.agr = sext i32 %i.agq to i64
  %i.ags = getelementptr inbounds [8 x i8], ptr %i.afn, i64 %i.agr
  %i.agt = load i64, ptr %i.ags, align 8, !tbaa !135 ; 2 uses
  switch i64 %i.agt, label %.lr.ph.i.i.i.i4.i [
    i64 -1, label %bb.gy
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i4.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.agu = shl nsw i32 %i.agq, 6
  %40 = sext i32 %i.agu to i64
  %i.agv = load ptr, ptr %35, align 8             ; 3 uses
  br label %bb.hg

bb.gy:                                            ; preds = %.lr.ph.i.i.i.i
  %i.agw = shl nsw i32 %i.agq, 6                  ; 2 uses
  %i.agx = add i32 %i.agw, 64
  %i.agy = sext i32 %i.agx to i64
  %.0.off.i.i.i.i = add i32 %.039.i.i.i.i, 127
  %.not39.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not39.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph38.i.i.i.i.i

.lr.ph38.i.i.i.i.i:                               ; preds = %bb.gy
  %i.agz = sext i32 %i.agw to i64
  %i.aha = load ptr, ptr %35, align 8             ; 3 uses
  br label %bb.gz

bb.gz:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, %.lr.ph38.i.i.i.i.i
  %.037.i.i.i.i.i = phi i64 [ %i.agz, %.lr.ph38.i.i.i.i.i ], [ %i.aiu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 3 uses
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %.037.i.i.i.i.i
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !3 ; 6 uses
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %.037.i.i.i.i.i
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !3 ; 3 uses
  %i.ahf = add nsw i32 %i.ahe, %i.ahc             ; 5 uses
  %i.ahg = icmp eq i32 %i.ahe, 0
  br i1 %i.ahg, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %.not.i.i.i.i.i.i.i.i.i116 = icmp sgt i32 %i.ahe, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i116, label %bb.hb, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i.i

bb.hb:                                            ; preds = %bb.ha
  %i.ahh = add i32 %i.ahc, 63                     ; 2 uses
  %i.ahi = srem i32 %i.ahh, 64
  %i.ahj = sub nsw i32 %i.ahh, %i.ahi             ; 6 uses
  %i.ahk = and i32 %i.ahf, -64                    ; 4 uses
  %i.ahl = icmp slt i32 %i.ahk, %i.ahj
  br i1 %i.ahl, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.ahm = and i32 %i.ahf, 63
  %i.ahn = zext nneg i32 %i.ahm to i64
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ahn
  %i.aho = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1
  %i.ahp = sub nsw i32 %i.ahj, %i.ahc             ; 2 uses
  %i.ahq = zext nneg i32 %i.ahp to i64
  %notmask.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ahq
  %i.ahr = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ahs = sub nsw i32 64, %i.ahp
  %i.aht = zext nneg i32 %i.ahs to i64
  %i.ahu = shl i64 %i.ahr, %i.aht
  %i.ahv = and i64 %i.ahu, %i.aho
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i.i.i.i.i

bb.hd:                                            ; preds = %bb.hb
  %.not32.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ahc, %i.ahj
  br i1 %.not32.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.ahw = sdiv i32 %i.ahc, 64
  %i.ahx = sub nsw i32 %i.ahj, %i.ahc             ; 2 uses
  %i.ahy = zext nneg i32 %i.ahx to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ahy
  %i.ahz = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i, -1
  %i.aia = sub nsw i32 64, %i.ahx
  %i.aib = zext nneg i32 %i.aia to i64
  %i.aic = shl i64 %i.ahz, %i.aib
  %i.aid = sext i32 %i.ahw to i64
  %i.aie = getelementptr inbounds [8 x i8], ptr %i.aha, i64 %i.aid ; 2 uses
  %i.aif = load i64, ptr %i.aie, align 8, !tbaa !135
  %i.aig = or i64 %i.aif, %i.aic
  store i64 %i.aig, ptr %i.aie, align 8, !tbaa !135
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i: ; preds = %bb.he, %bb.hd
  %i.aih = add nsw i32 %i.ahj, 64                 ; 2 uses
  %.not3347.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aih, %i.ahk
  br i1 %.not3347.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ahf, %i.ahk
  br i1 %.not34.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i.i, label %bb.hf

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.aii = phi i32 [ %i.aim, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aih, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aii, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ahj, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i.i ]
  %i.aij = sdiv i32 %.048.i.i.i.i.i.i.i.i.i, 64
  %i.aik = sext i32 %i.aij to i64
  %i.ail = getelementptr inbounds [8 x i8], ptr %i.aha, i64 %i.aik
  store i64 -1, ptr %i.ail, align 8, !tbaa !135
  %i.aim = add nsw i32 %i.aii, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aim, %i.ahk
  br i1 %.not33.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !319

bb.hf:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ain = and i32 %i.ahf, 63
  %i.aio = zext nneg i32 %i.ain to i64
  %notmask.i37.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.aio
  %i.aip = xor i64 %notmask.i37.i.i.i.i.i.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i.i.i.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i.i.i.i.i: ; preds = %bb.hf, %bb.hc
  %.sink10.i.i.i.i.i.i = phi i64 [ %i.aip, %bb.hf ], [ %i.ahv, %bb.hc ]
  %.sink.i.i.i.i.i.i = ashr i32 %i.ahf, 6
  %i.aiq = sext i32 %.sink.i.i.i.i.i.i to i64
  %i.air = getelementptr inbounds [8 x i8], ptr %i.aha, i64 %i.aiq ; 2 uses
  %i.ais = load i64, ptr %i.air, align 8, !tbaa !135
  %i.ait = or i64 %i.ais, %.sink10.i.i.i.i.i.i
  store i64 %i.ait, ptr %i.air, align 8, !tbaa !135
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.ha
  store i8 0, ptr %i.yj, align 1, !tbaa !268
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i.i, %bb.gz
  %i.aiu = add nuw i64 %.037.i.i.i.i.i, 1         ; 2 uses
  %i.aiv = icmp ult i64 %i.aiu, %i.agy
  br i1 %i.aiv, label %bb.gz, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !321

bb.hg:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i4.i
  %.01536.i.i.i.i.i = phi i64 [ %i.agt, %.lr.ph.i.i.i.i4.i ], [ %i.akr, %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ] ; 3 uses
  %i.aiw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01536.i.i.i.i.i, i1 true)
  %41 = or disjoint i64 %i.aiw, %40               ; 2 uses
  %i.aix = getelementptr inbounds [4 x i8], ptr %i.agn, i64 %41
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !3 ; 6 uses
  %i.aiz = getelementptr inbounds [4 x i8], ptr %i.ago, i64 %41
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !3 ; 3 uses
  %i.ajb = add nsw i32 %i.aja, %i.aiy             ; 5 uses
  %i.ajc = icmp eq i32 %i.aja, 0
  br i1 %i.ajc, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %.not.i.i.i.i17.i.i.i.i.i = icmp sgt i32 %i.aja, 0
  br i1 %.not.i.i.i.i17.i.i.i.i.i, label %bb.hi, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i18.i.i.i.i.i

bb.hi:                                            ; preds = %bb.hh
  %i.ajd = add i32 %i.aiy, 63                     ; 2 uses
  %i.aje = srem i32 %i.ajd, 64
  %i.ajf = sub nsw i32 %i.ajd, %i.aje             ; 6 uses
  %i.ajg = and i32 %i.ajb, -64                    ; 4 uses
  %i.ajh = icmp slt i32 %i.ajg, %i.ajf
  br i1 %i.ajh, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.aji = and i32 %i.ajb, 63
  %i.ajj = zext nneg i32 %i.aji to i64
  %notmask.i.i.i.i.i32.i.i.i.i.i = shl nsw i64 -1, %i.ajj
  %i.ajk = xor i64 %notmask.i.i.i.i.i32.i.i.i.i.i, -1
  %i.ajl = sub nsw i32 %i.ajf, %i.aiy             ; 2 uses
  %i.ajm = zext nneg i32 %i.ajl to i64
  %notmask.i.i.i.i.i.i33.i.i.i.i.i = shl nsw i64 -1, %i.ajm
  %i.ajn = xor i64 %notmask.i.i.i.i.i.i33.i.i.i.i.i, -1
  %i.ajo = sub nsw i32 64, %i.ajl
  %i.ajp = zext nneg i32 %i.ajo to i64
  %i.ajq = shl i64 %i.ajn, %i.ajp
  %i.ajr = and i64 %i.ajq, %i.ajk
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i29.i.i.i.i.i

bb.hk:                                            ; preds = %bb.hi
  %.not32.i.i.i.i19.i.i.i.i.i = icmp eq i32 %i.aiy, %i.ajf
  br i1 %.not32.i.i.i.i19.i.i.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i21.i.i.i.i.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.ajs = sdiv i32 %i.aiy, 64
  %i.ajt = sub nsw i32 %i.ajf, %i.aiy             ; 2 uses
  %i.aju = zext nneg i32 %i.ajt to i64
  %notmask.i.i35.i.i.i.i20.i.i.i.i.i = shl nsw i64 -1, %i.aju
  %i.ajv = xor i64 %notmask.i.i35.i.i.i.i20.i.i.i.i.i, -1
  %i.ajw = sub nsw i32 64, %i.ajt
  %i.ajx = zext nneg i32 %i.ajw to i64
  %i.ajy = shl i64 %i.ajv, %i.ajx
  %i.ajz = sext i32 %i.ajs to i64
  %i.aka = getelementptr inbounds [8 x i8], ptr %i.agv, i64 %i.ajz ; 2 uses
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !135
  %i.akc = or i64 %i.akb, %i.ajy
  store i64 %i.akc, ptr %i.aka, align 8, !tbaa !135
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i21.i.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i21.i.i.i.i.i: ; preds = %bb.hl, %bb.hk
  %i.akd = add nsw i32 %i.ajf, 64                 ; 2 uses
  %.not3347.i.i.i.i22.i.i.i.i.i = icmp sgt i32 %i.akd, %i.ajg
  br i1 %.not3347.i.i.i.i22.i.i.i.i.i, label %._crit_edge.i.i.i.i26.i.i.i.i.i, label %.lr.ph.i.i.i.i23.i.i.i.i.i

._crit_edge.i.i.i.i26.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i23.i.i.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i21.i.i.i.i.i
  %.not34.i.i.i.i27.i.i.i.i.i = icmp eq i32 %i.ajb, %i.ajg
  br i1 %.not34.i.i.i.i27.i.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i18.i.i.i.i.i, label %bb.hm

.lr.ph.i.i.i.i23.i.i.i.i.i:                       ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i21.i.i.i.i.i, %.lr.ph.i.i.i.i23.i.i.i.i.i
  %i.ake = phi i32 [ %i.aki, %.lr.ph.i.i.i.i23.i.i.i.i.i ], [ %i.akd, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i21.i.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i24.i.i.i.i.i = phi i32 [ %i.ake, %.lr.ph.i.i.i.i23.i.i.i.i.i ], [ %i.ajf, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i21.i.i.i.i.i ]
  %i.akf = sdiv i32 %.048.i.i.i.i24.i.i.i.i.i, 64
  %i.akg = sext i32 %i.akf to i64
  %i.akh = getelementptr inbounds [8 x i8], ptr %i.agv, i64 %i.akg
  store i64 -1, ptr %i.akh, align 8, !tbaa !135
  %i.aki = add nsw i32 %i.ake, 64                 ; 2 uses
  %.not33.i.i.i.i25.i.i.i.i.i = icmp sgt i32 %i.aki, %i.ajg
  br i1 %.not33.i.i.i.i25.i.i.i.i.i, label %._crit_edge.i.i.i.i26.i.i.i.i.i, label %.lr.ph.i.i.i.i23.i.i.i.i.i, !llvm.loop !319

bb.hm:                                            ; preds = %._crit_edge.i.i.i.i26.i.i.i.i.i
  %i.akj = and i32 %i.ajb, 63
  %i.akk = zext nneg i32 %i.akj to i64
  %notmask.i37.i.i.i.i28.i.i.i.i.i = shl nsw i64 -1, %i.akk
  %i.akl = xor i64 %notmask.i37.i.i.i.i28.i.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i29.i.i.i.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i29.i.i.i.i.i: ; preds = %bb.hm, %bb.hj
  %.sink10.i30.i.i.i.i.i = phi i64 [ %i.akl, %bb.hm ], [ %i.ajr, %bb.hj ]
  %.sink.i31.i.i.i.i.i = ashr i32 %i.ajb, 6
  %i.akm = sext i32 %.sink.i31.i.i.i.i.i to i64
  %i.akn = getelementptr inbounds [8 x i8], ptr %i.agv, i64 %i.akm ; 2 uses
  %i.ako = load i64, ptr %i.akn, align 8, !tbaa !135
  %i.akp = or i64 %i.ako, %.sink10.i30.i.i.i.i.i
  store i64 %i.akp, ptr %i.akn, align 8, !tbaa !135
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i18.i.i.i.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i18.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i29.i.i.i.i.i, %._crit_edge.i.i.i.i26.i.i.i.i.i, %bb.hh
  store i8 0, ptr %i.yj, align 1, !tbaa !268
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i18.i.i.i.i.i, %bb.hg
  %i.akq = add i64 %.01536.i.i.i.i.i, -1
  %i.akr = and i64 %i.akq, %.01536.i.i.i.i.i      ; 2 uses
  %.not.i.i.i.i5.i = icmp eq i64 %i.akr, 0
  br i1 %.not.i.i.i.i5.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %bb.hg, !llvm.loop !322

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, %bb.gy, %.lr.ph.i.i.i.i
  %i.aks = add nsw i32 %i.agp, 64                 ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.aks, %i.afs
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !323

bb.hn:                                            ; preds = %._crit_edge.i.i.i.i
  %i.akt = ashr i32 %i.afo, 6
  %i.aku = and i32 %i.afo, 63
  %i.akv = zext nneg i32 %i.aku to i64
  %notmask.i36.i.i.i.i = shl nsw i64 -1, %i.akv
  %i.akw = xor i64 %notmask.i36.i.i.i.i, -1
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %9, i32 noundef %i.akt, i64 noundef %i.akw)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i: ; preds = %bb.hn, %._crit_edge.i.i.i.i, %bb.gu, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.pre340 = load i32, ptr %i.ym, align 8, !tbaa !270
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i, %bb.gk
  %i.akx = phi i32 [ %i.wv, %bb.gk ], [ %.pre340, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiiSP_.exit.i ], [ %i.wv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ] ; 6 uses
  %i.aky = load ptr, ptr %35, align 8, !tbaa !254 ; 4 uses
  %.not.i.i.i130 = icmp sgt i32 %i.akx, 0
  br i1 %.not.i.i.i130, label %bb.ho, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.ho:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit
  %i.akz = and i32 %i.akx, 2147483584             ; 4 uses
  %i.ala = zext nneg i32 %i.akz to i64
  %.not37.i.i.not.i132530.not = icmp eq i32 %i.akz, 0
  br i1 %.not37.i.i.not.i132530.not, label %.critedge.i.i.i133, label %.lr.ph533

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph533
  %indvars.iv.next.i135 = add nuw nsw i64 %indvars.iv.i131531, 64 ; 2 uses
  %.not37.i.i.not.i132 = icmp samesign ult i64 %indvars.iv.next.i135, %i.ala
  br i1 %.not37.i.i.not.i132, label %.lr.ph533, label %.critedge.i.i.i133, !llvm.loop !324

.lr.ph533:                                        ; preds = %bb.ho, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i131531 = phi i64 [ %indvars.iv.next.i135, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.ho ] ; 3 uses
  %i.alb = lshr exact i64 %indvars.iv.i131531, 3
  %i.alc = getelementptr inbounds nuw i8, ptr %i.aky, i64 %i.alb
  %i.ald = load i64, ptr %i.alc, align 8, !tbaa !135 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.ald, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !324

.critedge.i.i.i133:                               ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.ho
  %.not38.i.i.i134 = icmp eq i32 %i.akx, %i.akz
  br i1 %.not38.i.i.i134, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.hp

bb.hp:                                            ; preds = %.critedge.i.i.i133
  %i.ale = lshr i32 %i.akx, 6
  %i.alf = and i32 %i.akx, 63
  %i.alg = zext nneg i32 %i.alf to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.alg
  %i.alh = xor i64 %notmask.i43.i.i.i, -1
  %i.ali = zext nneg i32 %i.ale to i64
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.aky, i64 %i.ali
  %i.alk = load i64, ptr %i.alj, align 8, !tbaa !135
  %i.all = and i64 %i.alk, %i.alh                 ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.all, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.hp, %.critedge.i.i.i133, %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit
  store i32 0, ptr %i.yl, align 4, !tbaa !269
  store i32 0, ptr %i.yk, align 8, !tbaa !221
  store i16 256, ptr %i.yn, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph533
  %i.alm = trunc nuw nsw i64 %indvars.iv.i131531 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.hp
  %.sink67.i.i.i = phi i64 [ %i.all, %bb.hp ], [ %i.ald, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.akz, %bb.hp ], [ %i.alm, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.aln = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.alo = trunc nuw nsw i64 %i.aln to i32
  %i.alp = or disjoint i32 %.sink65.i.i.i, %i.alo ; 2 uses
  store i32 %i.alp, ptr %i.yl, align 4, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.aky, ptr %7, align 8, !tbaa !325
  store ptr %i.a, ptr %i.yo, align 8, !tbaa !241
  store i8 1, ptr %i.yp, align 8, !tbaa !327
  store ptr %i.aky, ptr %8, align 8, !tbaa !328
  store ptr %i.a, ptr %i.yq, align 8, !tbaa !241
  store i8 1, ptr %i.yr, align 8, !tbaa !330
  %i.alq = invoke noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.alp, i32 noundef %i.akx, ptr noundef nonnull byval(%class.anon.243) align 8 %7, ptr noundef nonnull byval(%class.anon.245) align 8 %8)
          to label %.noexc136 unwind label %bb.hq ; 0 uses

.noexc136:                                        ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.alr = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.als = add nsw i32 %i.alr, 1
  store i32 %i.als, ptr %i.yk, align 8, !tbaa !221
  store i8 0, ptr %i.yj, align 1, !tbaa !268
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox17SelectivityVector9intersectERKS1_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.o = ashr i32 %.sroa.speculated, 6
  %i.p = and i32 %.sroa.speculated, 63
  %i.q = zext nneg i32 %i.p to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.q
  %i.r = sub nsw i32 %i.l, %i.e                   ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.s
  %i.t = xor i64 %notmask.i.i.i.i.i, -1
  %i.u = sub nsw i32 64, %i.r
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %i.t, %i.v
  %i.x = sext i32 %i.o to i64                     ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !135
  %.not.i = xor i64 %i.w, -1
  %i.aa = or i64 %notmask.i.i.i.i, %.not.i
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.x
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !135
  %i.ad = or i64 %i.aa, %i.ac
  %i.ae = and i64 %i.ad, %i.z
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !135
  br label %_ZN8facebook5velox4bits7andBitsEPmPKmii.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i.i.i = icmp eq i32 %i.e, %i.l
  br i1 %.not32.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = sdiv i32 %i.e, 64
  %i.ag = sub nsw i32 %i.l, %i.e                  ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i.i35.i.i.i = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i.i35.i.i.i, -1
  %i.aj = sub nsw i32 64, %i.ag
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl i64 %i.ai, %i.ak
  %i.am = sext i32 %i.af to i64                   ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.am ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !135
  %i.ap = xor i64 %i.al, -1
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.am
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !135
  %i.as = or i64 %i.ar, %i.ap
  %i.at = and i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.an, align 8, !tbaa !135
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.au = add nsw i32 %i.l, 64                    ; 2 uses
  %.not3337.i.i.i = icmp sgt i32 %i.au, %i.m
  br i1 %.not3337.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.f
  %.not34.i.i.i = icmp eq i32 %.sroa.speculated, %i.m
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox4bits7andBitsEPmPKmii.exit, label %bb.g

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.av = phi i32 [ %i.bd, %.lr.ph.i.i.i ], [ %i.au, %bb.f ] ; 2 uses
  %.038.i.i.i = phi i32 [ %i.av, %.lr.ph.i.i.i ], [ %i.l, %bb.f ]
  %i.aw = sdiv i32 %.038.i.i.i, 64
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !135
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ax
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !135
  %i.bc = and i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !135
  %i.bd = add nsw i32 %i.av, 64                   ; 2 uses
  %.not33.i.i.i = icmp sgt i32 %i.bd, %i.m
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !679

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.be = ashr i32 %.sroa.speculated, 6
  %i.bf = and i32 %.sroa.speculated, 63
  %i.bg = zext nneg i32 %i.bf to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.bg
  %i.bh = sext i32 %i.be to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !135
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bh
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !135
  %i.bm = or i64 %i.bl, %notmask.i36.i.i.i
  %i.bn = and i64 %i.bm, %i.bj
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !135
  br label %_ZN8facebook5velox4bits7andBitsEPmPKmii.exit

_ZN8facebook5velox4bits7andBitsEPmPKmii.exit:     ; preds = %bb.a, %bb.c, %._crit_edge.i.i.i, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !270 ; 6 uses
  %.not.i.i.i3 = icmp sgt i32 %i.bp, 0
  br i1 %.not.i.i.i3, label %bb.h, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.h:                                             ; preds = %_ZN8facebook5velox4bits7andBitsEPmPKmii.exit
  %i.bq = and i32 %i.bp, 2147483584               ; 4 uses
  %i.br = zext nneg i32 %i.bq to i64
  %.not37.i.i.not.i16.not = icmp eq i32 %i.bq, 0
  br i1 %.not37.i.i.not.i16.not, label %.critedge.i.i.i, label %.lr.ph

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i17, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.br
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !324

.lr.ph:                                           ; preds = %bb.h, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i17 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.h ] ; 3 uses
  %i.bs = lshr exact i64 %indvars.iv.i17, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !135 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !324

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.h
  %.not38.i.i.i = icmp eq i32 %i.bp, %i.bq
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %.critedge.i.i.i
  %i.bv = lshr i32 %i.bp, 6
  %i.bw = and i32 %i.bp, 63
  %i.bx = zext nneg i32 %i.bw to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.bx
  %i.by = xor i64 %notmask.i43.i.i.i, -1
  %i.bz = zext nneg i32 %i.bv to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !135
  %i.cc = and i64 %i.cb, %i.by                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.i, %.critedge.i.i.i, %_ZN8facebook5velox4bits7andBitsEPmPKmii.exit
  store i32 0, ptr %i.d, align 4, !tbaa !269
  store i32 0, ptr %i.f, align 8, !tbaa !221
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 256, ptr %i.cd, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph
  %i.ce = trunc nuw nsw i64 %indvars.iv.i17 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.i
  %.sink67.i.i.i = phi i64 [ %i.cc, %bb.i ], [ %i.bu, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.bq, %bb.i ], [ %i.ce, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.cf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = or disjoint i32 %.sink65.i.i.i, %i.cg   ; 2 uses
  store i32 %i.ch, ptr %i.d, align 4, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.b, ptr %2, align 8, !tbaa !325
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.ci, align 8, !tbaa !241
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.cj, align 8, !tbaa !327
  store ptr %i.b, ptr %3, align 8, !tbaa !328
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.ck, align 8, !tbaa !241
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.cl, align 8, !tbaa !330
  %i.cm = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.ch, i32 noundef %i.bp, ptr noundef nonnull byval(%class.anon.243) align 8 %2, ptr noundef nonnull byval(%class.anon.245) align 8 %3) ; 0 uses
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.f, align 8, !tbaa !221
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %i.cp, align 1, !tbaa !268
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !680, !range !71, !noundef !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !683
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !135
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !684, !nonnull !72, !align !274 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !685, !nonnull !72, !align !274
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !241
  %3 = sext i32 %i.m to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !686, !nonnull !72, !align !274
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !241
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 37
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit
  %.011 = phi i64 [ %i.k, %.preheader ], [ %i.br, %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit ] ; 3 uses
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011, i1 true)
  %4 = or disjoint i64 %i.v, %3                   ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.q, i64 %4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3    ; 6 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.t, i64 %4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3    ; 3 uses
  %i.aa = add nsw i32 %i.z, %i.x                  ; 5 uses
  %i.ab = icmp eq i32 %i.z, 0
  br i1 %i.ab, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !254 ; 3 uses
  %.not.i.i.i.i = icmp sgt i32 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ad = add i32 %i.x, 63                        ; 2 uses
  %i.ae = srem i32 %i.ad, 64
  %i.af = sub nsw i32 %i.ad, %i.ae                ; 6 uses
  %i.ag = and i32 %i.aa, -64                      ; 4 uses
  %i.ah = icmp slt i32 %i.ag, %i.af
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = and i32 %i.aa, 63
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i.i.i.i, -1
  %i.al = sub nsw i32 %i.af, %i.x                 ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.am
  %i.an = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.ao = sub nsw i32 64, %i.al
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl i64 %i.an, %i.ap
  %i.ar = and i64 %i.aq, %i.ak
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i

bb.f:                                             ; preds = %bb.d
  %.not32.i.i.i.i = icmp eq i32 %i.x, %i.af
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = sdiv i32 %i.x, 64
  %i.at = sub nsw i32 %i.af, %i.x                 ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.aw = sub nsw i32 64, %i.at
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl i64 %i.av, %i.ax
  %i.az = sext i32 %i.as to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !135
  %i.bc = or i64 %i.bb, %i.ay
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !135
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.bd = add nsw i32 %i.af, 64                   ; 2 uses
  %.not3347.i.i.i.i = icmp sgt i32 %i.bd, %i.ag
  br i1 %.not3347.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.aa, %i.ag
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i, label %bb.h

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, %.lr.ph.i.i.i.i
  %i.be = phi i32 [ %i.bi, %.lr.ph.i.i.i.i ], [ %i.bd, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i = phi i32 [ %i.be, %.lr.ph.i.i.i.i ], [ %i.af, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ]
  %i.bf = sdiv i32 %.048.i.i.i.i, 64
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bg
  store i64 -1, ptr %i.bh, align 8, !tbaa !135
  %i.bi = add nsw i32 %i.be, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.bi, %i.ag
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !319

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = and i32 %i.aa, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %notmask.i37.i.i.i.i = shl nsw i64 -1, %i.bk
  %i.bl = xor i64 %notmask.i37.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i: ; preds = %bb.h, %bb.e
  %.sink10.i = phi i64 [ %i.bl, %bb.h ], [ %i.ar, %bb.e ]
  %.sink.i = ashr i32 %i.aa, 6
  %i.bm = sext i32 %.sink.i to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !135
  %i.bp = or i64 %i.bo, %.sink10.i
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !135
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i:  ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i, %._crit_edge.i.i.i.i, %bb.c
  store i8 0, ptr %i.u, align 1, !tbaa !268
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit

_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit: ; preds = %bb.b, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i
  %i.bq = add i64 %.011, -1
  %i.br = and i64 %i.bq, %.011                    ; 2 uses
  %.not10 = icmp eq i64 %i.br, 0
  br i1 %.not10, label %.loopexit, label %bb.b, !llvm.loop !687

.loopexit:                                        ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_115ZipWithFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.243) align 8 %2, ptr noundef byval(%class.anon.245) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 5 uses
  %i.d = and i32 %1, -64                          ; 3 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !327, !range !71, !noundef !72
  %i.s = load ptr, ptr %2, align 8, !tbaa !325
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !135
  %i.w = xor i8 %i.r, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = or i32 %1, 63
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 %i.ab, %i.ad
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %.not35 = icmp eq i32 %1, %i.d
  br i1 %.not35, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ashr i32 %1, 6
  %i.ag = and i32 %1, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i38 = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i38, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !327, !range !71, !noundef !72
  %i.al = load ptr, ptr %2, align 8, !tbaa !325
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !135
  %i.ap = xor i8 %i.ak, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = xor i64 %i.ao, %i.ar
  %i.at = and i64 %i.as, %i.ai                    ; 2 uses
  %.not.i39 = icmp eq i64 %i.at, 0
  br i1 %.not.i39, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40: ; preds = %bb.f
  %i.au = or i32 %1, 63
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = sub nuw nsw i32 %i.au, %i.aw
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread: ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !71
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = xor i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc                    ; 2 uses
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit: ; preds = %bb.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread
  %.0.in = phi i32 [ %i.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread ], [ %.0, %bb.g ] ; 2 uses
  %.0 = add nsw i32 %.0.in, -64                   ; 3 uses
  %.not36 = icmp slt i32 %.0, %i.c
  br i1 %.not36, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
end_hunk_1
