inline.NumInlined: 1965
inline.NumDeleted: 821
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumUnrolled: 49
begin_hunk_0_@"_ZN5faiss20with_HammingComputerILNS_9SIMDLevelE0EZNS_36search_knn_hamming_per_invlist_fixSLILS1_0EEEviPKNS_14IndexBinaryIVFEmPKhlPKlPKiPiPlbPKNS_19SearchParametersIVFEE3$_0EEDciOT0_":bb.a
  %cmp.n2532 = icmp eq i64 %i.gij, %n.vec2527
  br i1 %cmp.n2532, label %_ZN5faiss12heap_heapifyINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.i.i641, label %.lr.ph46.i.i.i638.preheader

.lr.ph46.i.i.i638.preheader:                      ; preds = %.lr.ph46.i.preheader.i.i637, %middle.block2531
  %.045.i.i.i639.ph = phi i64 [ 0, %.lr.ph46.i.preheader.i.i637 ], [ %n.vec2527, %middle.block2531 ]
  br label %.lr.ph46.i.i.i638

.lr.ph46.i.i.i638:                                ; preds = %.lr.ph46.i.i.i638.preheader, %.lr.ph46.i.i.i638
  %.045.i.i.i639 = phi i64 [ %i.gip, %.lr.ph46.i.i.i638 ], [ %.045.i.i.i639.ph, %.lr.ph46.i.i.i638.preheader ] ; 2 uses
  %i.gio = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.045.i.i.i639
  store i32 2147483647, ptr %i.gio, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.gip = add nuw i64 %.045.i.i.i639, 1          ; 2 uses
  %exitcond51.not.i.i.i640 = icmp eq i64 %i.gip, %i.gij
  br i1 %exitcond51.not.i.i.i640, label %_ZN5faiss12heap_heapifyINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.i.i641, label %.lr.ph46.i.i.i638, !llvm.loop !764

_ZN5faiss12heap_heapifyINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.i.i641: ; preds = %.lr.ph46.i.i.i638, %middle.block2531, %bb.ti
  %i.giq = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.gir = load i32, ptr %i.giq, align 4, !tbaa !62, !noalias !757 ; 3 uses
  %i.gis = sext i32 %i.gir to i64                 ; 22 uses
  %i.git = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.giu = sdiv i32 %i.gir, 8                     ; 138 uses
  %i.giv = srem i32 %i.gir, 8                     ; 20 uses
  %i.giw = and i32 %i.giu, 7                      ; 51 uses
  %.not.i753.i.i = icmp eq i32 %i.giv, 0          ; 17 uses
  %i.gix = shl nsw i32 %i.giu, 3
  %i.giy = sext i32 %i.gix to i64                 ; 34 uses
  %i.giz = icmp sgt i32 %i.giv, 3                 ; 17 uses
  %i.gja = add nsw i32 %i.giv, -4                 ; 17 uses
  %sext.i.i642 = shl i64 %i.m, 32
  %i.gjb = ashr exact i64 %sext.i.i642, 32        ; 16 uses
  %i.gjc = and i64 %i.m, 4294967294
  %i.gjd = icmp eq i64 %i.gjc, 0                  ; 4 uses
  %i.gje = icmp ult i64 %i.m, 2
  br label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.i.i643

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.i.i643: ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i675, %_ZN5faiss12heap_heapifyINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.i.i641
  %.0189.i.i644 = phi i64 [ 0, %_ZN5faiss12heap_heapifyINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.i.i641 ], [ %i.gjl, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit.i.i675 ] ; 10 uses
  %i.gjf = load i64, ptr %i.ae, align 8, !tbaa !43, !noalias !757
  %i.gjg = icmp ult i64 %.0189.i.i644, %i.gjf
  br i1 %i.gjg, label %bb.tk, label %.preheader.i.i645

.preheader.i.i645:                                ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.i.i643
  %.not280.i.i = icmp eq i64 %i.g, 0
  %.not46.i.i.i646 = icmp eq i64 %i.m, 0
  %or.cond.i.i647 = or i1 %.not280.i.i, %.not46.i.i.i646
  br i1 %or.cond.i.i647, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit.i.i662, label %.lr.ph.i373.preheader.i.i

.lr.ph.i373.preheader.i.i:                        ; preds = %.preheader.i.i645
  %i.gjh = shl i64 %i.m, 3
  br label %.lr.ph.i373.i.i

bb.tj:                                            ; preds = %._crit_edge.i.i635
  %i.gji = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit385.i.i

bb.tk:                                            ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.i.i643
  %i.gjj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.075.0.i.i, i64 %.0189.i.i644
  %i.gjk = load i64, ptr %i.gjj, align 8, !tbaa !90, !noalias !751 ; 6 uses
  %i.gjl = add nuw i64 %.0189.i.i644, 1           ; 2 uses
  %i.gjm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.075.0.i.i, i64 %i.gjl
  %i.gjn = load i64, ptr %i.gjm, align 8, !tbaa !90, !noalias !751
  %i.gjo = sub nsw i64 %i.gjn, %i.gjk             ; 7 uses
  %i.gjp = load ptr, ptr %i.git, align 8, !tbaa !86, !noalias !757 ; 6 uses
  %i.gjq = load ptr, ptr %i.gjp, align 8, !tbaa !45, !noalias !751
  %i.gjr = getelementptr inbounds nuw i8, ptr %i.gjq, i64 24
  %i.gjs = load ptr, ptr %i.gjr, align 8, !noalias !751
  %i.gjt = invoke noundef ptr %i.gjs(ptr noundef nonnull align 8 dereferenceable(25) %i.gjp, i64 noundef %.0189.i.i644)
          to label %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit.i.i670 unwind label %bb.tn, !noalias !751, !inline_history !233 ; 7 uses

_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit.i.i670: ; preds = %bb.tk
  %i.gju = load ptr, ptr %i.git, align 8, !tbaa !86, !noalias !757 ; 6 uses
  %i.gjv = load ptr, ptr %i.gju, align 8, !tbaa !45, !noalias !751
  %i.gjw = getelementptr inbounds nuw i8, ptr %i.gjv, i64 32
  %i.gjx = load ptr, ptr %i.gjw, align 8, !noalias !751
  %i.gjy = invoke noundef ptr %i.gjx(ptr noundef nonnull align 8 dereferenceable(25) %i.gju, i64 noundef %.0189.i.i644)
          to label %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.i.i672 unwind label %bb.to, !noalias !751, !inline_history !234 ; 7 uses

_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.i.i672: ; preds = %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit.i.i670
  %i.gjz = load ptr, ptr %i.git, align 8, !tbaa !86, !noalias !757 ; 2 uses
  %i.gka = load ptr, ptr %i.gjz, align 8, !tbaa !45, !noalias !751
  %i.gkb = getelementptr inbounds nuw i8, ptr %i.gka, i64 16
  %i.gkc = load ptr, ptr %i.gkb, align 8, !noalias !751
  %i.gkd = invoke noundef i64 %i.gkc(ptr noundef nonnull align 8 dereferenceable(25) %i.gjz, i64 noundef %.0189.i.i644)
          to label %bb.tl unwind label %bb.tp, !noalias !751 ; 10 uses

bb.tl:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.i.i672
  %.not213264.i.i = icmp slt i64 %i.gjo, 4        ; 4 uses
  switch i64 %i.m, label %.preheader93.i.i [
    i64 1, label %.preheader95.i.i
    i64 2, label %.preheader97.i.i
    i64 4, label %.preheader99.i.i
  ]

.preheader99.i.i:                                 ; preds = %bb.tl
  br i1 %.not213264.i.i, label %.loopexit94.i.i, label %.lr.ph234.i.i

.lr.ph234.i.i:                                    ; preds = %.preheader99.i.i
  %i.gke = getelementptr inbounds [4 x i8], ptr %i.ghu, i64 %i.gjk
  %i.gkf = icmp sgt i64 %i.gkd, 0
  br label %bb.zf

.preheader97.i.i:                                 ; preds = %bb.tl
  br i1 %.not213264.i.i, label %.loopexit94.i.i, label %.lr.ph244.i.i

.lr.ph244.i.i:                                    ; preds = %.preheader97.i.i
  %i.gkg = getelementptr inbounds [4 x i8], ptr %i.ghu, i64 %i.gjk
  %i.gkh = icmp sgt i64 %i.gkd, 0
  br label %bb.wk

.preheader95.i.i:                                 ; preds = %bb.tl
  br i1 %.not213264.i.i, label %.loopexit94.i.i, label %.lr.ph255.i.i

.lr.ph255.i.i:                                    ; preds = %.preheader95.i.i
  %i.gki = getelementptr inbounds [4 x i8], ptr %i.ghu, i64 %i.gjk
  %i.gkj = icmp sgt i64 %i.gkd, 0
  br label %bb.tm

.preheader93.i.i:                                 ; preds = %bb.tl
  br i1 %.not213264.i.i, label %.loopexit94.i.i, label %.lr.ph266.i.i

.lr.ph266.i.i:                                    ; preds = %.preheader93.i.i
  %i.gkk = getelementptr inbounds [4 x i8], ptr %i.ghu, i64 %i.gjk
  %i.gkl = icmp sgt i64 %i.gkd, 0
  br label %bb.aci

.loopexit90.i.i:                                  ; preds = %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi1EE9add_bcodeEPKhl.exit.i.i, %bb.tm
  %i.gkm = add nuw nsw i64 %i.gkn, 4              ; 2 uses
  %.not222.i.i750 = icmp sgt i64 %i.gkm, %i.gjo
  br i1 %.not222.i.i750, label %.loopexit94.i.i, label %bb.tm, !llvm.loop !765

bb.tm:                                            ; preds = %.loopexit90.i.i, %.lr.ph255.i.i
  %i.gkn = phi i64 [ 4, %.lr.ph255.i.i ], [ %i.gkm, %.loopexit90.i.i ] ; 3 uses
  %.0194254.i.i = phi i64 [ 0, %.lr.ph255.i.i ], [ %i.gkn, %.loopexit90.i.i ]
  %i.gko = getelementptr inbounds nuw [4 x i8], ptr %i.gki, i64 %.0194254.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.gkp = load i32, ptr %i.gko, align 4, !tbaa !73, !alias.scope !766, !noalias !771
  %i.gkq = sext i32 %i.gkp to i64                 ; 3 uses
  %i.gkr = mul nsw i64 %i.gkq, %i.gis
  %i.gks = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gkr ; 9 uses
  %i.gkt = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.gkq ; 2 uses
  %i.gku = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.gkq
  %i.gkv = getelementptr inbounds nuw i8, ptr %i.gko, i64 4
  %i.gkw = load i32, ptr %i.gkv, align 4, !tbaa !73, !alias.scope !766, !noalias !771
  %i.gkx = sext i32 %i.gkw to i64                 ; 3 uses
  %i.gky = mul nsw i64 %i.gkx, %i.gis
  %i.gkz = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gky ; 9 uses
  %i.gla = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.gkx ; 2 uses
  %i.glb = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.gkx
  %i.glc = getelementptr inbounds nuw i8, ptr %i.gko, i64 8
  %i.gld = load i32, ptr %i.glc, align 4, !tbaa !73, !alias.scope !766, !noalias !771
  %i.gle = sext i32 %i.gld to i64                 ; 3 uses
  %i.glf = mul nsw i64 %i.gle, %i.gis
  %i.glg = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.glf ; 9 uses
  %i.glh = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.gle ; 2 uses
  %i.gli = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.gle
  %i.glj = getelementptr inbounds nuw i8, ptr %i.gko, i64 12
  %i.glk = load i32, ptr %i.glj, align 4, !tbaa !73, !alias.scope !766, !noalias !771
  %i.gll = sext i32 %i.glk to i64                 ; 3 uses
  %i.glm = mul nsw i64 %i.gll, %i.gis
  %i.gln = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.glm ; 9 uses
  %i.glo = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.gll ; 2 uses
  %i.glp = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.gll
  br i1 %i.gkj, label %.lr.ph252.i.i, label %.loopexit90.i.i

.lr.ph252.i.i:                                    ; preds = %bb.tm
  %i.glq = load i32, ptr %i.glo, align 4, !tbaa !73, !alias.scope !774, !noalias !775
  %i.glr = load i32, ptr %i.glh, align 4, !tbaa !73, !alias.scope !774, !noalias !775
  %i.gls = load i32, ptr %i.gla, align 4, !tbaa !73, !alias.scope !774, !noalias !775
  %i.glt = load i32, ptr %i.gkt, align 4, !tbaa !73, !alias.scope !774, !noalias !775
  %i.glu = getelementptr inbounds i8, ptr %i.gks, i64 %i.giy ; 3 uses
  %i.glv = getelementptr inbounds nuw i8, ptr %i.glu, i64 4
  %i.glw = getelementptr inbounds i8, ptr %i.gkz, i64 %i.giy ; 3 uses
  %i.glx = getelementptr inbounds nuw i8, ptr %i.glw, i64 4
  %i.gly = getelementptr inbounds i8, ptr %i.glg, i64 %i.giy ; 3 uses
  %i.glz = getelementptr inbounds nuw i8, ptr %i.gly, i64 4
  %i.gma = getelementptr inbounds i8, ptr %i.gln, i64 %i.giy ; 3 uses
  %i.gmb = getelementptr inbounds nuw i8, ptr %i.gma, i64 4
  br label %bb.tq

bb.tn:                                            ; preds = %bb.tk
  %i.gmc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit385.i.i

bb.to:                                            ; preds = %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit.i.i670
  %i.gmd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit371.i.i

bb.tp:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.i.i672
  %i.gme = landingpad { ptr, i32 }
          cleanup
  %i.gmf = load ptr, ptr %i.gju, align 8, !tbaa !45, !noalias !751
  %i.gmg = getelementptr inbounds nuw i8, ptr %i.gmf, i64 48
  %i.gmh = load ptr, ptr %i.gmg, align 8, !noalias !751
  invoke void %i.gmh(ptr noundef nonnull align 8 dereferenceable(25) %i.gju, i64 noundef %.0189.i.i644, ptr noundef %i.gjy)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit371.i.i unwind label %bb.agn, !noalias !751

bb.tq:                                            ; preds = %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi1EE9add_bcodeEPKhl.exit.i.i, %.lr.ph252.i.i
  %.0193250.i.i = phi i64 [ 0, %.lr.ph252.i.i ], [ %i.hcy, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi1EE9add_bcodeEPKhl.exit.i.i ] ; 3 uses
  %.sroa.5258.0249.i.i = phi i32 [ %i.glq, %.lr.ph252.i.i ], [ %.sroa.5258.1.i.i, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi1EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %.sroa.4957.0248.i.i = phi i32 [ %i.glr, %.lr.ph252.i.i ], [ %.sroa.4957.1.i.i, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi1EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %.sroa.4656.0247.i.i = phi i32 [ %i.gls, %.lr.ph252.i.i ], [ %.sroa.4656.1.i.i, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi1EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %.sroa.4355.0246.i.i = phi i32 [ %i.glt, %.lr.ph252.i.i ], [ %.sroa.4355.1.i.i, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi1EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %i.gmi = mul i64 %.0193250.i.i, %i.gis
  %i.gmj = getelementptr inbounds nuw i8, ptr %i.gjt, i64 %i.gmi ; 36 uses
  %i.gmk = getelementptr inbounds nuw [8 x i8], ptr %i.gjy, i64 %.0193250.i.i
  %i.gml = load i64, ptr %i.gmk, align 8, !tbaa !90, !noalias !751 ; 4 uses
  switch i32 %i.giw, label %.unreachabledefault.a [
    i32 7, label %bb.tt
    i32 6, label %bb.tu
    i32 5, label %bb.tv
    i32 4, label %bb.tw
    i32 3, label %bb.tx
    i32 2, label %bb.ty
    i32 1, label %bb.tz
    i32 0, label %bb.tr
  ]

.unreachabledefault.a:                            ; preds = %bb.tq
  unreachable

default.unreachable:                              ; preds = %bb.abo, %bb.aau, %bb.aaa, %bb.zg, %bb.yn, %bb.xv, %bb.xd, %bb.wl, %bb.vs, %bb.va, %bb.ui, %bb.aeu, %bb.adz, %bb.ade, %bb.acj, %bb.afp
  unreachable

bb.tr:                                            ; preds = %bb.tz, %bb.tq
  %.090.i462.i.i = phi i32 [ %i.gpo, %bb.tz ], [ %i.giw, %bb.tq ] ; 4 uses
  %.082.i463.i.i = phi i32 [ %i.gpp, %bb.tz ], [ %i.giw, %bb.tq ] ; 2 uses
  %.080.i464.i.i = phi i32 [ %.7.i495.i.i, %bb.tz ], [ %i.giu, %bb.tq ] ; 2 uses
  %i.gmm = icmp sgt i32 %.080.i464.i.i, 7
  br i1 %i.gmm, label %bb.ts, label %bb.ua

bb.ts:                                            ; preds = %bb.tr
  %i.gmn = add nsw i32 %.080.i464.i.i, -8
  %i.gmo = sext i32 %.082.i463.i.i to i64         ; 2 uses
  %i.gmp = getelementptr inbounds [8 x i8], ptr %i.gks, i64 %i.gmo
  %i.gmq = load i64, ptr %i.gmp, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gmr = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gmo
  %i.gms = load i64, ptr %i.gmr, align 8, !tbaa !90, !noalias !751
  %i.gmt = xor i64 %i.gms, %i.gmq
  %i.gmu = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gmt)
  %i.gmv = trunc nuw nsw i64 %i.gmu to i32
  %i.gmw = add nsw i32 %.090.i462.i.i, %i.gmv
  %i.gmx = add nsw i32 %.082.i463.i.i, 1
  br label %bb.tt

bb.tt:                                            ; preds = %bb.ts, %bb.tq
  %.191.i475.i.i = phi i32 [ 0, %bb.tq ], [ %i.gmw, %bb.ts ]
  %.183.i476.i.i = phi i32 [ 0, %bb.tq ], [ %i.gmx, %bb.ts ] ; 2 uses
  %.181.i477.i.i = phi i32 [ %i.giu, %bb.tq ], [ %i.gmn, %bb.ts ]
  %i.gmy = sext i32 %.183.i476.i.i to i64         ; 2 uses
  %i.gmz = getelementptr inbounds [8 x i8], ptr %i.gks, i64 %i.gmy
  %i.gna = load i64, ptr %i.gmz, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gnb = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gmy
  %i.gnc = load i64, ptr %i.gnb, align 8, !tbaa !90, !noalias !751
  %i.gnd = xor i64 %i.gnc, %i.gna
  %i.gne = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gnd)
  %i.gnf = trunc nuw nsw i64 %i.gne to i32
  %i.gng = add nsw i32 %.191.i475.i.i, %i.gnf
  %i.gnh = add nsw i32 %.183.i476.i.i, 1
  br label %bb.tu

bb.tu:                                            ; preds = %bb.tt, %bb.tq
  %.292.i478.i.i = phi i32 [ %i.gng, %bb.tt ], [ 0, %bb.tq ]
  %.284.i479.i.i = phi i32 [ %i.gnh, %bb.tt ], [ 0, %bb.tq ] ; 2 uses
  %.2.i480.i.i = phi i32 [ %.181.i477.i.i, %bb.tt ], [ %i.giu, %bb.tq ]
  %i.gni = sext i32 %.284.i479.i.i to i64         ; 2 uses
  %i.gnj = getelementptr inbounds [8 x i8], ptr %i.gks, i64 %i.gni
  %i.gnk = load i64, ptr %i.gnj, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gnl = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gni
  %i.gnm = load i64, ptr %i.gnl, align 8, !tbaa !90, !noalias !751
  %i.gnn = xor i64 %i.gnm, %i.gnk
  %i.gno = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gnn)
  %i.gnp = trunc nuw nsw i64 %i.gno to i32
  %i.gnq = add nsw i32 %.292.i478.i.i, %i.gnp
  %i.gnr = add nsw i32 %.284.i479.i.i, 1
  br label %bb.tv

bb.tv:                                            ; preds = %bb.tu, %bb.tq
  %.393.i481.i.i = phi i32 [ %i.gnq, %bb.tu ], [ 0, %bb.tq ]
  %.385.i482.i.i = phi i32 [ %i.gnr, %bb.tu ], [ 0, %bb.tq ] ; 2 uses
  %.3.i483.i.i = phi i32 [ %.2.i480.i.i, %bb.tu ], [ %i.giu, %bb.tq ]
  %i.gns = sext i32 %.385.i482.i.i to i64         ; 2 uses
  %i.gnt = getelementptr inbounds [8 x i8], ptr %i.gks, i64 %i.gns
  %i.gnu = load i64, ptr %i.gnt, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gnv = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gns
  %i.gnw = load i64, ptr %i.gnv, align 8, !tbaa !90, !noalias !751
  %i.gnx = xor i64 %i.gnw, %i.gnu
  %i.gny = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gnx)
  %i.gnz = trunc nuw nsw i64 %i.gny to i32
  %i.goa = add nsw i32 %.393.i481.i.i, %i.gnz
  %i.gob = add nsw i32 %.385.i482.i.i, 1
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.tq
  %.494.i484.i.i = phi i32 [ %i.goa, %bb.tv ], [ 0, %bb.tq ]
  %.486.i485.i.i = phi i32 [ %i.gob, %bb.tv ], [ 0, %bb.tq ] ; 2 uses
  %.4.i486.i.i = phi i32 [ %.3.i483.i.i, %bb.tv ], [ %i.giu, %bb.tq ]
  %i.goc = sext i32 %.486.i485.i.i to i64         ; 2 uses
  %i.god = getelementptr inbounds [8 x i8], ptr %i.gks, i64 %i.goc
  %i.goe = load i64, ptr %i.god, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gof = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.goc
  %i.gog = load i64, ptr %i.gof, align 8, !tbaa !90, !noalias !751
  %i.goh = xor i64 %i.gog, %i.goe
  %i.goi = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.goh)
  %i.goj = trunc nuw nsw i64 %i.goi to i32
  %i.gok = add nsw i32 %.494.i484.i.i, %i.goj
  %i.gol = add nsw i32 %.486.i485.i.i, 1
  br label %bb.tx

bb.tx:                                            ; preds = %bb.tw, %bb.tq
  %.595.i487.i.i = phi i32 [ %i.gok, %bb.tw ], [ 0, %bb.tq ]
  %.587.i488.i.i = phi i32 [ %i.gol, %bb.tw ], [ 0, %bb.tq ] ; 2 uses
  %.5.i489.i.i = phi i32 [ %.4.i486.i.i, %bb.tw ], [ %i.giu, %bb.tq ]
  %i.gom = sext i32 %.587.i488.i.i to i64         ; 2 uses
  %i.gon = getelementptr inbounds [8 x i8], ptr %i.gks, i64 %i.gom
  %i.goo = load i64, ptr %i.gon, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gop = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gom
  %i.goq = load i64, ptr %i.gop, align 8, !tbaa !90, !noalias !751
  %i.gor = xor i64 %i.goq, %i.goo
  %i.gos = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gor)
  %i.got = trunc nuw nsw i64 %i.gos to i32
  %i.gou = add nsw i32 %.595.i487.i.i, %i.got
  %i.gov = add nsw i32 %.587.i488.i.i, 1
  br label %bb.ty

bb.ty:                                            ; preds = %bb.tx, %bb.tq
  %.696.i490.i.i = phi i32 [ %i.gou, %bb.tx ], [ 0, %bb.tq ]
  %.688.i491.i.i = phi i32 [ %i.gov, %bb.tx ], [ 0, %bb.tq ] ; 2 uses
  %.6.i492.i.i = phi i32 [ %.5.i489.i.i, %bb.tx ], [ %i.giu, %bb.tq ]
  %i.gow = sext i32 %.688.i491.i.i to i64         ; 2 uses
  %i.gox = getelementptr inbounds [8 x i8], ptr %i.gks, i64 %i.gow
  %i.goy = load i64, ptr %i.gox, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.goz = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gow
  %i.gpa = load i64, ptr %i.goz, align 8, !tbaa !90, !noalias !751
  %i.gpb = xor i64 %i.gpa, %i.goy
  %i.gpc = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gpb)
  %i.gpd = trunc nuw nsw i64 %i.gpc to i32
  %i.gpe = add nsw i32 %.696.i490.i.i, %i.gpd
  %i.gpf = add nsw i32 %.688.i491.i.i, 1
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.tq
  %.797.i493.i.i = phi i32 [ %i.gpe, %bb.ty ], [ 0, %bb.tq ]
  %.789.i494.i.i = phi i32 [ %i.gpf, %bb.ty ], [ 0, %bb.tq ] ; 2 uses
  %.7.i495.i.i = phi i32 [ %.6.i492.i.i, %bb.ty ], [ %i.giu, %bb.tq ]
  %i.gpg = sext i32 %.789.i494.i.i to i64         ; 2 uses
  %i.gph = getelementptr inbounds [8 x i8], ptr %i.gks, i64 %i.gpg
  %i.gpi = load i64, ptr %i.gph, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gpj = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gpg
  %i.gpk = load i64, ptr %i.gpj, align 8, !tbaa !90, !noalias !751
  %i.gpl = xor i64 %i.gpk, %i.gpi
  %i.gpm = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gpl)
  %i.gpn = trunc nuw nsw i64 %i.gpm to i32
  %i.gpo = add nsw i32 %.797.i493.i.i, %i.gpn
  %i.gpp = add nsw i32 %.789.i494.i.i, 1
  br label %bb.tr, !llvm.loop !180

bb.ua:                                            ; preds = %bb.tr
  br i1 %.not.i753.i.i, label %.noexc244.i.i, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.gpq = getelementptr inbounds i8, ptr %i.gmj, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.uc, label %bb.ud

bb.uc:                                            ; preds = %bb.ub
  %i.gpr = load i32, ptr %i.glu, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.gps = load i32, ptr %i.gpq, align 4, !tbaa !73, !noalias !751
  %i.gpt = xor i32 %i.gps, %i.gpr
  %i.gpu = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gpt)
  %i.gpv = add nsw i32 %i.gpu, %.090.i462.i.i
  %i.gpw = getelementptr inbounds nuw i8, ptr %i.gpq, i64 4
  br label %bb.ud

bb.ud:                                            ; preds = %bb.uc, %bb.ub
  %.098.i466.i.i = phi i32 [ %i.gja, %bb.uc ], [ %i.giv, %bb.ub ] ; 3 uses
  %.8.i467.i.i = phi i32 [ %i.gpv, %bb.uc ], [ %.090.i462.i.i, %bb.ub ] ; 2 uses
  %.078.i468.i.i = phi ptr [ %i.glv, %bb.uc ], [ %i.glu, %bb.ub ] ; 3 uses
  %.0.i469.i.i = phi ptr [ %i.gpw, %bb.uc ], [ %i.gpq, %bb.ub ] ; 3 uses
  %i.gpx = icmp sgt i32 %.098.i466.i.i, 1
  br i1 %i.gpx, label %bb.ue, label %bb.uf

bb.ue:                                            ; preds = %bb.ud
  %i.gpy = load i16, ptr %.078.i468.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.gpz = load i16, ptr %.0.i469.i.i, align 2, !tbaa !181, !noalias !751
  %i.gqa = xor i16 %i.gpz, %i.gpy
  %i.gqb = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.gqa)
  %i.gqc = zext nneg i16 %i.gqb to i32
  %i.gqd = add nsw i32 %.8.i467.i.i, %i.gqc
  %i.gqe = getelementptr inbounds nuw i8, ptr %.078.i468.i.i, i64 2
  %i.gqf = getelementptr inbounds nuw i8, ptr %.0.i469.i.i, i64 2
  %i.gqg = add nsw i32 %.098.i466.i.i, -2
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ue, %bb.ud
  %.199.i470.i.i = phi i32 [ %i.gqg, %bb.ue ], [ %.098.i466.i.i, %bb.ud ]
  %.9.i471.i.i = phi i32 [ %i.gqd, %bb.ue ], [ %.8.i467.i.i, %bb.ud ] ; 2 uses
  %.179.i472.i.i = phi ptr [ %i.gqe, %bb.ue ], [ %.078.i468.i.i, %bb.ud ]
  %.1.i473.i.i = phi ptr [ %i.gqf, %bb.ue ], [ %.0.i469.i.i, %bb.ud ]
  %i.gqh = icmp sgt i32 %.199.i470.i.i, 0
  br i1 %i.gqh, label %bb.ug, label %.noexc244.i.i

bb.ug:                                            ; preds = %bb.uf
  %i.gqi = load i8, ptr %.179.i472.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.gqj = load i8, ptr %.1.i473.i.i, align 1, !tbaa !72, !noalias !751
  %i.gqk = xor i8 %i.gqj, %i.gqi
  %i.gql = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.gqk)
  %i.gqm = zext nneg i8 %i.gql to i32
  %i.gqn = add nsw i32 %.9.i471.i.i, %i.gqm
  br label %.noexc244.i.i

.noexc244.i.i:                                    ; preds = %bb.ug, %bb.uf, %bb.ua
  %.11.i474.i.i = phi i32 [ %.090.i462.i.i, %bb.ua ], [ %i.gqn, %bb.ug ], [ %.9.i471.i.i, %bb.uf ] ; 3 uses
  %i.gqo = icmp slt i32 %.11.i474.i.i, %.sroa.4355.0246.i.i
  br i1 %i.gqo, label %bb.uh, label %bb.ui

bb.uh:                                            ; preds = %.noexc244.i.i
  store i32 %.11.i474.i.i, ptr %i.gkt, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  store i64 %i.gml, ptr %i.gku, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  br label %bb.ui

bb.ui:                                            ; preds = %bb.uh, %.noexc244.i.i
  %.sroa.4355.1.i.i = phi i32 [ %.11.i474.i.i, %bb.uh ], [ %.sroa.4355.0246.i.i, %.noexc244.i.i ]
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.ul
    i32 6, label %bb.um
    i32 5, label %bb.un
    i32 4, label %bb.uo
    i32 3, label %bb.up
    i32 2, label %bb.uq
    i32 1, label %bb.ur
    i32 0, label %bb.uj
  ]

bb.uj:                                            ; preds = %bb.ur, %bb.ui
  %.090.i426.i.i = phi i32 [ %i.gtr, %bb.ur ], [ %i.giw, %bb.ui ] ; 4 uses
  %.082.i427.i.i = phi i32 [ %i.gts, %bb.ur ], [ %i.giw, %bb.ui ] ; 2 uses
  %.080.i428.i.i = phi i32 [ %.7.i459.i.i, %bb.ur ], [ %i.giu, %bb.ui ] ; 2 uses
  %i.gqp = icmp sgt i32 %.080.i428.i.i, 7
  br i1 %i.gqp, label %bb.uk, label %bb.us

bb.uk:                                            ; preds = %bb.uj
  %i.gqq = add nsw i32 %.080.i428.i.i, -8
  %i.gqr = sext i32 %.082.i427.i.i to i64         ; 2 uses
  %i.gqs = getelementptr inbounds [8 x i8], ptr %i.gkz, i64 %i.gqr
  %i.gqt = load i64, ptr %i.gqs, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gqu = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gqr
  %i.gqv = load i64, ptr %i.gqu, align 8, !tbaa !90, !noalias !751
  %i.gqw = xor i64 %i.gqv, %i.gqt
  %i.gqx = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gqw)
  %i.gqy = trunc nuw nsw i64 %i.gqx to i32
  %i.gqz = add nsw i32 %.090.i426.i.i, %i.gqy
  %i.gra = add nsw i32 %.082.i427.i.i, 1
  br label %bb.ul

bb.ul:                                            ; preds = %bb.uk, %bb.ui
  %.191.i439.i.i = phi i32 [ 0, %bb.ui ], [ %i.gqz, %bb.uk ]
  %.183.i440.i.i = phi i32 [ 0, %bb.ui ], [ %i.gra, %bb.uk ] ; 2 uses
  %.181.i441.i.i = phi i32 [ %i.giu, %bb.ui ], [ %i.gqq, %bb.uk ]
  %i.grb = sext i32 %.183.i440.i.i to i64         ; 2 uses
  %i.grc = getelementptr inbounds [8 x i8], ptr %i.gkz, i64 %i.grb
  %i.grd = load i64, ptr %i.grc, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gre = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.grb
  %i.grf = load i64, ptr %i.gre, align 8, !tbaa !90, !noalias !751
  %i.grg = xor i64 %i.grf, %i.grd
  %i.grh = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.grg)
  %i.gri = trunc nuw nsw i64 %i.grh to i32
  %i.grj = add nsw i32 %.191.i439.i.i, %i.gri
  %i.grk = add nsw i32 %.183.i440.i.i, 1
  br label %bb.um

bb.um:                                            ; preds = %bb.ul, %bb.ui
  %.292.i442.i.i = phi i32 [ %i.grj, %bb.ul ], [ 0, %bb.ui ]
  %.284.i443.i.i = phi i32 [ %i.grk, %bb.ul ], [ 0, %bb.ui ] ; 2 uses
  %.2.i444.i.i = phi i32 [ %.181.i441.i.i, %bb.ul ], [ %i.giu, %bb.ui ]
  %i.grl = sext i32 %.284.i443.i.i to i64         ; 2 uses
  %i.grm = getelementptr inbounds [8 x i8], ptr %i.gkz, i64 %i.grl
  %i.grn = load i64, ptr %i.grm, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gro = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.grl
  %i.grp = load i64, ptr %i.gro, align 8, !tbaa !90, !noalias !751
  %i.grq = xor i64 %i.grp, %i.grn
  %i.grr = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.grq)
  %i.grs = trunc nuw nsw i64 %i.grr to i32
  %i.grt = add nsw i32 %.292.i442.i.i, %i.grs
  %i.gru = add nsw i32 %.284.i443.i.i, 1
  br label %bb.un

bb.un:                                            ; preds = %bb.um, %bb.ui
  %.393.i445.i.i = phi i32 [ %i.grt, %bb.um ], [ 0, %bb.ui ]
  %.385.i446.i.i = phi i32 [ %i.gru, %bb.um ], [ 0, %bb.ui ] ; 2 uses
  %.3.i447.i.i = phi i32 [ %.2.i444.i.i, %bb.um ], [ %i.giu, %bb.ui ]
  %i.grv = sext i32 %.385.i446.i.i to i64         ; 2 uses
  %i.grw = getelementptr inbounds [8 x i8], ptr %i.gkz, i64 %i.grv
  %i.grx = load i64, ptr %i.grw, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gry = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.grv
  %i.grz = load i64, ptr %i.gry, align 8, !tbaa !90, !noalias !751
  %i.gsa = xor i64 %i.grz, %i.grx
  %i.gsb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gsa)
  %i.gsc = trunc nuw nsw i64 %i.gsb to i32
  %i.gsd = add nsw i32 %.393.i445.i.i, %i.gsc
  %i.gse = add nsw i32 %.385.i446.i.i, 1
  br label %bb.uo

bb.uo:                                            ; preds = %bb.un, %bb.ui
  %.494.i448.i.i = phi i32 [ %i.gsd, %bb.un ], [ 0, %bb.ui ]
  %.486.i449.i.i = phi i32 [ %i.gse, %bb.un ], [ 0, %bb.ui ] ; 2 uses
  %.4.i450.i.i = phi i32 [ %.3.i447.i.i, %bb.un ], [ %i.giu, %bb.ui ]
  %i.gsf = sext i32 %.486.i449.i.i to i64         ; 2 uses
  %i.gsg = getelementptr inbounds [8 x i8], ptr %i.gkz, i64 %i.gsf
  %i.gsh = load i64, ptr %i.gsg, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gsi = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gsf
  %i.gsj = load i64, ptr %i.gsi, align 8, !tbaa !90, !noalias !751
  %i.gsk = xor i64 %i.gsj, %i.gsh
  %i.gsl = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gsk)
  %i.gsm = trunc nuw nsw i64 %i.gsl to i32
  %i.gsn = add nsw i32 %.494.i448.i.i, %i.gsm
  %i.gso = add nsw i32 %.486.i449.i.i, 1
  br label %bb.up

bb.up:                                            ; preds = %bb.uo, %bb.ui
  %.595.i451.i.i = phi i32 [ %i.gsn, %bb.uo ], [ 0, %bb.ui ]
  %.587.i452.i.i = phi i32 [ %i.gso, %bb.uo ], [ 0, %bb.ui ] ; 2 uses
  %.5.i453.i.i = phi i32 [ %.4.i450.i.i, %bb.uo ], [ %i.giu, %bb.ui ]
  %i.gsp = sext i32 %.587.i452.i.i to i64         ; 2 uses
  %i.gsq = getelementptr inbounds [8 x i8], ptr %i.gkz, i64 %i.gsp
  %i.gsr = load i64, ptr %i.gsq, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gss = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gsp
  %i.gst = load i64, ptr %i.gss, align 8, !tbaa !90, !noalias !751
  %i.gsu = xor i64 %i.gst, %i.gsr
  %i.gsv = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gsu)
  %i.gsw = trunc nuw nsw i64 %i.gsv to i32
  %i.gsx = add nsw i32 %.595.i451.i.i, %i.gsw
  %i.gsy = add nsw i32 %.587.i452.i.i, 1
  br label %bb.uq

bb.uq:                                            ; preds = %bb.up, %bb.ui
  %.696.i454.i.i = phi i32 [ %i.gsx, %bb.up ], [ 0, %bb.ui ]
  %.688.i455.i.i = phi i32 [ %i.gsy, %bb.up ], [ 0, %bb.ui ] ; 2 uses
  %.6.i456.i.i = phi i32 [ %.5.i453.i.i, %bb.up ], [ %i.giu, %bb.ui ]
  %i.gsz = sext i32 %.688.i455.i.i to i64         ; 2 uses
  %i.gta = getelementptr inbounds [8 x i8], ptr %i.gkz, i64 %i.gsz
  %i.gtb = load i64, ptr %i.gta, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gtc = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gsz
  %i.gtd = load i64, ptr %i.gtc, align 8, !tbaa !90, !noalias !751
  %i.gte = xor i64 %i.gtd, %i.gtb
  %i.gtf = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gte)
  %i.gtg = trunc nuw nsw i64 %i.gtf to i32
  %i.gth = add nsw i32 %.696.i454.i.i, %i.gtg
  %i.gti = add nsw i32 %.688.i455.i.i, 1
  br label %bb.ur

bb.ur:                                            ; preds = %bb.uq, %bb.ui
  %.797.i457.i.i = phi i32 [ %i.gth, %bb.uq ], [ 0, %bb.ui ]
  %.789.i458.i.i = phi i32 [ %i.gti, %bb.uq ], [ 0, %bb.ui ] ; 2 uses
  %.7.i459.i.i = phi i32 [ %.6.i456.i.i, %bb.uq ], [ %i.giu, %bb.ui ]
  %i.gtj = sext i32 %.789.i458.i.i to i64         ; 2 uses
  %i.gtk = getelementptr inbounds [8 x i8], ptr %i.gkz, i64 %i.gtj
  %i.gtl = load i64, ptr %i.gtk, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gtm = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gtj
  %i.gtn = load i64, ptr %i.gtm, align 8, !tbaa !90, !noalias !751
  %i.gto = xor i64 %i.gtn, %i.gtl
  %i.gtp = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gto)
  %i.gtq = trunc nuw nsw i64 %i.gtp to i32
  %i.gtr = add nsw i32 %.797.i457.i.i, %i.gtq
  %i.gts = add nsw i32 %.789.i458.i.i, 1
  br label %bb.uj, !llvm.loop !180

bb.us:                                            ; preds = %bb.uj
  br i1 %.not.i753.i.i, label %.noexc245.i.i, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  %i.gtt = getelementptr inbounds i8, ptr %i.gmj, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.uu, label %bb.uv

bb.uu:                                            ; preds = %bb.ut
  %i.gtu = load i32, ptr %i.glw, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.gtv = load i32, ptr %i.gtt, align 4, !tbaa !73, !noalias !751
  %i.gtw = xor i32 %i.gtv, %i.gtu
  %i.gtx = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gtw)
  %i.gty = add nsw i32 %i.gtx, %.090.i426.i.i
  %i.gtz = getelementptr inbounds nuw i8, ptr %i.gtt, i64 4
  br label %bb.uv

bb.uv:                                            ; preds = %bb.uu, %bb.ut
  %.098.i430.i.i = phi i32 [ %i.gja, %bb.uu ], [ %i.giv, %bb.ut ] ; 3 uses
  %.8.i431.i.i = phi i32 [ %i.gty, %bb.uu ], [ %.090.i426.i.i, %bb.ut ] ; 2 uses
  %.078.i432.i.i = phi ptr [ %i.glx, %bb.uu ], [ %i.glw, %bb.ut ] ; 3 uses
  %.0.i433.i.i = phi ptr [ %i.gtz, %bb.uu ], [ %i.gtt, %bb.ut ] ; 3 uses
  %i.gua = icmp sgt i32 %.098.i430.i.i, 1
  br i1 %i.gua, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.uv
  %i.gub = load i16, ptr %.078.i432.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.guc = load i16, ptr %.0.i433.i.i, align 2, !tbaa !181, !noalias !751
  %i.gud = xor i16 %i.guc, %i.gub
  %i.gue = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.gud)
  %i.guf = zext nneg i16 %i.gue to i32
  %i.gug = add nsw i32 %.8.i431.i.i, %i.guf
  %i.guh = getelementptr inbounds nuw i8, ptr %.078.i432.i.i, i64 2
  %i.gui = getelementptr inbounds nuw i8, ptr %.0.i433.i.i, i64 2
  %i.guj = add nsw i32 %.098.i430.i.i, -2
  br label %bb.ux

bb.ux:                                            ; preds = %bb.uw, %bb.uv
  %.199.i434.i.i = phi i32 [ %i.guj, %bb.uw ], [ %.098.i430.i.i, %bb.uv ]
  %.9.i435.i.i = phi i32 [ %i.gug, %bb.uw ], [ %.8.i431.i.i, %bb.uv ] ; 2 uses
  %.179.i436.i.i = phi ptr [ %i.guh, %bb.uw ], [ %.078.i432.i.i, %bb.uv ]
  %.1.i437.i.i = phi ptr [ %i.gui, %bb.uw ], [ %.0.i433.i.i, %bb.uv ]
  %i.guk = icmp sgt i32 %.199.i434.i.i, 0
  br i1 %i.guk, label %bb.uy, label %.noexc245.i.i

bb.uy:                                            ; preds = %bb.ux
  %i.gul = load i8, ptr %.179.i436.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.gum = load i8, ptr %.1.i437.i.i, align 1, !tbaa !72, !noalias !751
  %i.gun = xor i8 %i.gum, %i.gul
  %i.guo = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.gun)
  %i.gup = zext nneg i8 %i.guo to i32
  %i.guq = add nsw i32 %.9.i435.i.i, %i.gup
  br label %.noexc245.i.i

.noexc245.i.i:                                    ; preds = %bb.uy, %bb.ux, %bb.us
  %.11.i438.i.i = phi i32 [ %.090.i426.i.i, %bb.us ], [ %i.guq, %bb.uy ], [ %.9.i435.i.i, %bb.ux ] ; 3 uses
  %i.gur = icmp slt i32 %.11.i438.i.i, %.sroa.4656.0247.i.i
  br i1 %i.gur, label %bb.uz, label %bb.va

bb.uz:                                            ; preds = %.noexc245.i.i
  store i32 %.11.i438.i.i, ptr %i.gla, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  store i64 %i.gml, ptr %i.glb, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  br label %bb.va

bb.va:                                            ; preds = %bb.uz, %.noexc245.i.i
  %.sroa.4656.1.i.i = phi i32 [ %.11.i438.i.i, %bb.uz ], [ %.sroa.4656.0247.i.i, %.noexc245.i.i ]
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.vd
    i32 6, label %bb.ve
    i32 5, label %bb.vf
    i32 4, label %bb.vg
    i32 3, label %bb.vh
    i32 2, label %bb.vi
    i32 1, label %bb.vj
    i32 0, label %bb.vb
  ]

bb.vb:                                            ; preds = %bb.vj, %bb.va
  %.090.i390.i.i = phi i32 [ %i.gxu, %bb.vj ], [ %i.giw, %bb.va ] ; 4 uses
  %.082.i391.i.i = phi i32 [ %i.gxv, %bb.vj ], [ %i.giw, %bb.va ] ; 2 uses
  %.080.i392.i.i = phi i32 [ %.7.i423.i.i, %bb.vj ], [ %i.giu, %bb.va ] ; 2 uses
  %i.gus = icmp sgt i32 %.080.i392.i.i, 7
  br i1 %i.gus, label %bb.vc, label %bb.vk

bb.vc:                                            ; preds = %bb.vb
  %i.gut = add nsw i32 %.080.i392.i.i, -8
  %i.guu = sext i32 %.082.i391.i.i to i64         ; 2 uses
  %i.guv = getelementptr inbounds [8 x i8], ptr %i.glg, i64 %i.guu
  %i.guw = load i64, ptr %i.guv, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gux = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.guu
  %i.guy = load i64, ptr %i.gux, align 8, !tbaa !90, !noalias !751
  %i.guz = xor i64 %i.guy, %i.guw
  %i.gva = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.guz)
  %i.gvb = trunc nuw nsw i64 %i.gva to i32
  %i.gvc = add nsw i32 %.090.i390.i.i, %i.gvb
  %i.gvd = add nsw i32 %.082.i391.i.i, 1
  br label %bb.vd

bb.vd:                                            ; preds = %bb.vc, %bb.va
  %.191.i403.i.i = phi i32 [ 0, %bb.va ], [ %i.gvc, %bb.vc ]
  %.183.i404.i.i = phi i32 [ 0, %bb.va ], [ %i.gvd, %bb.vc ] ; 2 uses
  %.181.i405.i.i = phi i32 [ %i.giu, %bb.va ], [ %i.gut, %bb.vc ]
  %i.gve = sext i32 %.183.i404.i.i to i64         ; 2 uses
  %i.gvf = getelementptr inbounds [8 x i8], ptr %i.glg, i64 %i.gve
  %i.gvg = load i64, ptr %i.gvf, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gvh = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gve
  %i.gvi = load i64, ptr %i.gvh, align 8, !tbaa !90, !noalias !751
  %i.gvj = xor i64 %i.gvi, %i.gvg
  %i.gvk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gvj)
  %i.gvl = trunc nuw nsw i64 %i.gvk to i32
  %i.gvm = add nsw i32 %.191.i403.i.i, %i.gvl
  %i.gvn = add nsw i32 %.183.i404.i.i, 1
  br label %bb.ve

bb.ve:                                            ; preds = %bb.vd, %bb.va
  %.292.i406.i.i = phi i32 [ %i.gvm, %bb.vd ], [ 0, %bb.va ]
  %.284.i407.i.i = phi i32 [ %i.gvn, %bb.vd ], [ 0, %bb.va ] ; 2 uses
  %.2.i408.i.i = phi i32 [ %.181.i405.i.i, %bb.vd ], [ %i.giu, %bb.va ]
  %i.gvo = sext i32 %.284.i407.i.i to i64         ; 2 uses
  %i.gvp = getelementptr inbounds [8 x i8], ptr %i.glg, i64 %i.gvo
  %i.gvq = load i64, ptr %i.gvp, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gvr = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gvo
  %i.gvs = load i64, ptr %i.gvr, align 8, !tbaa !90, !noalias !751
  %i.gvt = xor i64 %i.gvs, %i.gvq
  %i.gvu = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gvt)
  %i.gvv = trunc nuw nsw i64 %i.gvu to i32
  %i.gvw = add nsw i32 %.292.i406.i.i, %i.gvv
  %i.gvx = add nsw i32 %.284.i407.i.i, 1
  br label %bb.vf

bb.vf:                                            ; preds = %bb.ve, %bb.va
  %.393.i409.i.i = phi i32 [ %i.gvw, %bb.ve ], [ 0, %bb.va ]
  %.385.i410.i.i = phi i32 [ %i.gvx, %bb.ve ], [ 0, %bb.va ] ; 2 uses
  %.3.i411.i.i = phi i32 [ %.2.i408.i.i, %bb.ve ], [ %i.giu, %bb.va ]
  %i.gvy = sext i32 %.385.i410.i.i to i64         ; 2 uses
  %i.gvz = getelementptr inbounds [8 x i8], ptr %i.glg, i64 %i.gvy
  %i.gwa = load i64, ptr %i.gvz, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gwb = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gvy
  %i.gwc = load i64, ptr %i.gwb, align 8, !tbaa !90, !noalias !751
  %i.gwd = xor i64 %i.gwc, %i.gwa
  %i.gwe = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gwd)
  %i.gwf = trunc nuw nsw i64 %i.gwe to i32
  %i.gwg = add nsw i32 %.393.i409.i.i, %i.gwf
  %i.gwh = add nsw i32 %.385.i410.i.i, 1
  br label %bb.vg

bb.vg:                                            ; preds = %bb.vf, %bb.va
  %.494.i412.i.i = phi i32 [ %i.gwg, %bb.vf ], [ 0, %bb.va ]
  %.486.i413.i.i = phi i32 [ %i.gwh, %bb.vf ], [ 0, %bb.va ] ; 2 uses
  %.4.i414.i.i = phi i32 [ %.3.i411.i.i, %bb.vf ], [ %i.giu, %bb.va ]
  %i.gwi = sext i32 %.486.i413.i.i to i64         ; 2 uses
  %i.gwj = getelementptr inbounds [8 x i8], ptr %i.glg, i64 %i.gwi
  %i.gwk = load i64, ptr %i.gwj, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gwl = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gwi
  %i.gwm = load i64, ptr %i.gwl, align 8, !tbaa !90, !noalias !751
  %i.gwn = xor i64 %i.gwm, %i.gwk
  %i.gwo = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gwn)
  %i.gwp = trunc nuw nsw i64 %i.gwo to i32
  %i.gwq = add nsw i32 %.494.i412.i.i, %i.gwp
  %i.gwr = add nsw i32 %.486.i413.i.i, 1
  br label %bb.vh

bb.vh:                                            ; preds = %bb.vg, %bb.va
  %.595.i415.i.i = phi i32 [ %i.gwq, %bb.vg ], [ 0, %bb.va ]
  %.587.i416.i.i = phi i32 [ %i.gwr, %bb.vg ], [ 0, %bb.va ] ; 2 uses
  %.5.i417.i.i = phi i32 [ %.4.i414.i.i, %bb.vg ], [ %i.giu, %bb.va ]
  %i.gws = sext i32 %.587.i416.i.i to i64         ; 2 uses
  %i.gwt = getelementptr inbounds [8 x i8], ptr %i.glg, i64 %i.gws
  %i.gwu = load i64, ptr %i.gwt, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gwv = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gws
  %i.gww = load i64, ptr %i.gwv, align 8, !tbaa !90, !noalias !751
  %i.gwx = xor i64 %i.gww, %i.gwu
  %i.gwy = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gwx)
  %i.gwz = trunc nuw nsw i64 %i.gwy to i32
  %i.gxa = add nsw i32 %.595.i415.i.i, %i.gwz
  %i.gxb = add nsw i32 %.587.i416.i.i, 1
  br label %bb.vi

bb.vi:                                            ; preds = %bb.vh, %bb.va
  %.696.i418.i.i = phi i32 [ %i.gxa, %bb.vh ], [ 0, %bb.va ]
  %.688.i419.i.i = phi i32 [ %i.gxb, %bb.vh ], [ 0, %bb.va ] ; 2 uses
  %.6.i420.i.i = phi i32 [ %.5.i417.i.i, %bb.vh ], [ %i.giu, %bb.va ]
  %i.gxc = sext i32 %.688.i419.i.i to i64         ; 2 uses
  %i.gxd = getelementptr inbounds [8 x i8], ptr %i.glg, i64 %i.gxc
  %i.gxe = load i64, ptr %i.gxd, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gxf = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gxc
  %i.gxg = load i64, ptr %i.gxf, align 8, !tbaa !90, !noalias !751
  %i.gxh = xor i64 %i.gxg, %i.gxe
  %i.gxi = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gxh)
  %i.gxj = trunc nuw nsw i64 %i.gxi to i32
  %i.gxk = add nsw i32 %.696.i418.i.i, %i.gxj
  %i.gxl = add nsw i32 %.688.i419.i.i, 1
  br label %bb.vj

bb.vj:                                            ; preds = %bb.vi, %bb.va
  %.797.i421.i.i = phi i32 [ %i.gxk, %bb.vi ], [ 0, %bb.va ]
  %.789.i422.i.i = phi i32 [ %i.gxl, %bb.vi ], [ 0, %bb.va ] ; 2 uses
  %.7.i423.i.i = phi i32 [ %.6.i420.i.i, %bb.vi ], [ %i.giu, %bb.va ]
  %i.gxm = sext i32 %.789.i422.i.i to i64         ; 2 uses
  %i.gxn = getelementptr inbounds [8 x i8], ptr %i.glg, i64 %i.gxm
  %i.gxo = load i64, ptr %i.gxn, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gxp = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gxm
  %i.gxq = load i64, ptr %i.gxp, align 8, !tbaa !90, !noalias !751
  %i.gxr = xor i64 %i.gxq, %i.gxo
  %i.gxs = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gxr)
  %i.gxt = trunc nuw nsw i64 %i.gxs to i32
  %i.gxu = add nsw i32 %.797.i421.i.i, %i.gxt
  %i.gxv = add nsw i32 %.789.i422.i.i, 1
  br label %bb.vb, !llvm.loop !180

bb.vk:                                            ; preds = %bb.vb
  br i1 %.not.i753.i.i, label %.noexc246.i.i, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  %i.gxw = getelementptr inbounds i8, ptr %i.gmj, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.vm, label %bb.vn

bb.vm:                                            ; preds = %bb.vl
  %i.gxx = load i32, ptr %i.gly, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.gxy = load i32, ptr %i.gxw, align 4, !tbaa !73, !noalias !751
  %i.gxz = xor i32 %i.gxy, %i.gxx
  %i.gya = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gxz)
  %i.gyb = add nsw i32 %i.gya, %.090.i390.i.i
  %i.gyc = getelementptr inbounds nuw i8, ptr %i.gxw, i64 4
  br label %bb.vn

bb.vn:                                            ; preds = %bb.vm, %bb.vl
  %.098.i394.i.i = phi i32 [ %i.gja, %bb.vm ], [ %i.giv, %bb.vl ] ; 3 uses
  %.8.i395.i.i = phi i32 [ %i.gyb, %bb.vm ], [ %.090.i390.i.i, %bb.vl ] ; 2 uses
  %.078.i396.i.i = phi ptr [ %i.glz, %bb.vm ], [ %i.gly, %bb.vl ] ; 3 uses
  %.0.i397.i.i = phi ptr [ %i.gyc, %bb.vm ], [ %i.gxw, %bb.vl ] ; 3 uses
  %i.gyd = icmp sgt i32 %.098.i394.i.i, 1
  br i1 %i.gyd, label %bb.vo, label %bb.vp

bb.vo:                                            ; preds = %bb.vn
  %i.gye = load i16, ptr %.078.i396.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.gyf = load i16, ptr %.0.i397.i.i, align 2, !tbaa !181, !noalias !751
  %i.gyg = xor i16 %i.gyf, %i.gye
  %i.gyh = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.gyg)
  %i.gyi = zext nneg i16 %i.gyh to i32
  %i.gyj = add nsw i32 %.8.i395.i.i, %i.gyi
  %i.gyk = getelementptr inbounds nuw i8, ptr %.078.i396.i.i, i64 2
  %i.gyl = getelementptr inbounds nuw i8, ptr %.0.i397.i.i, i64 2
  %i.gym = add nsw i32 %.098.i394.i.i, -2
  br label %bb.vp

bb.vp:                                            ; preds = %bb.vo, %bb.vn
  %.199.i398.i.i = phi i32 [ %i.gym, %bb.vo ], [ %.098.i394.i.i, %bb.vn ]
  %.9.i399.i.i = phi i32 [ %i.gyj, %bb.vo ], [ %.8.i395.i.i, %bb.vn ] ; 2 uses
  %.179.i400.i.i = phi ptr [ %i.gyk, %bb.vo ], [ %.078.i396.i.i, %bb.vn ]
  %.1.i401.i.i = phi ptr [ %i.gyl, %bb.vo ], [ %.0.i397.i.i, %bb.vn ]
  %i.gyn = icmp sgt i32 %.199.i398.i.i, 0
  br i1 %i.gyn, label %bb.vq, label %.noexc246.i.i

bb.vq:                                            ; preds = %bb.vp
  %i.gyo = load i8, ptr %.179.i400.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.gyp = load i8, ptr %.1.i401.i.i, align 1, !tbaa !72, !noalias !751
  %i.gyq = xor i8 %i.gyp, %i.gyo
  %i.gyr = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.gyq)
  %i.gys = zext nneg i8 %i.gyr to i32
  %i.gyt = add nsw i32 %.9.i399.i.i, %i.gys
  br label %.noexc246.i.i

.noexc246.i.i:                                    ; preds = %bb.vq, %bb.vp, %bb.vk
  %.11.i402.i.i = phi i32 [ %.090.i390.i.i, %bb.vk ], [ %i.gyt, %bb.vq ], [ %.9.i399.i.i, %bb.vp ] ; 3 uses
  %i.gyu = icmp slt i32 %.11.i402.i.i, %.sroa.4957.0248.i.i
  br i1 %i.gyu, label %bb.vr, label %bb.vs

bb.vr:                                            ; preds = %.noexc246.i.i
  store i32 %.11.i402.i.i, ptr %i.glh, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  store i64 %i.gml, ptr %i.gli, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  br label %bb.vs

bb.vs:                                            ; preds = %bb.vr, %.noexc246.i.i
  %.sroa.4957.1.i.i = phi i32 [ %.11.i402.i.i, %bb.vr ], [ %.sroa.4957.0248.i.i, %.noexc246.i.i ]
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.vv
    i32 6, label %bb.vw
    i32 5, label %bb.vx
    i32 4, label %bb.vy
    i32 3, label %bb.vz
    i32 2, label %bb.wa
    i32 1, label %bb.wb
    i32 0, label %bb.vt
  ]

bb.vt:                                            ; preds = %bb.wb, %bb.vs
  %.090.i.i.i = phi i32 [ %i.hbx, %bb.wb ], [ %i.giw, %bb.vs ] ; 4 uses
  %.082.i.i.i = phi i32 [ %i.hby, %bb.wb ], [ %i.giw, %bb.vs ] ; 2 uses
  %.080.i.i.i = phi i32 [ %.7.i.i.i, %bb.wb ], [ %i.giu, %bb.vs ] ; 2 uses
  %i.gyv = icmp sgt i32 %.080.i.i.i, 7
  br i1 %i.gyv, label %bb.vu, label %bb.wc

bb.vu:                                            ; preds = %bb.vt
  %i.gyw = add nsw i32 %.080.i.i.i, -8
  %i.gyx = sext i32 %.082.i.i.i to i64            ; 2 uses
  %i.gyy = getelementptr inbounds [8 x i8], ptr %i.gln, i64 %i.gyx
  %i.gyz = load i64, ptr %i.gyy, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gza = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gyx
  %i.gzb = load i64, ptr %i.gza, align 8, !tbaa !90, !noalias !751
  %i.gzc = xor i64 %i.gzb, %i.gyz
  %i.gzd = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gzc)
  %i.gze = trunc nuw nsw i64 %i.gzd to i32
  %i.gzf = add nsw i32 %.090.i.i.i, %i.gze
  %i.gzg = add nsw i32 %.082.i.i.i, 1
  br label %bb.vv

bb.vv:                                            ; preds = %bb.vu, %bb.vs
  %.191.i.i.i = phi i32 [ 0, %bb.vs ], [ %i.gzf, %bb.vu ]
  %.183.i.i.i = phi i32 [ 0, %bb.vs ], [ %i.gzg, %bb.vu ] ; 2 uses
  %.181.i.i.i = phi i32 [ %i.giu, %bb.vs ], [ %i.gyw, %bb.vu ]
  %i.gzh = sext i32 %.183.i.i.i to i64            ; 2 uses
  %i.gzi = getelementptr inbounds [8 x i8], ptr %i.gln, i64 %i.gzh
  %i.gzj = load i64, ptr %i.gzi, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gzk = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gzh
  %i.gzl = load i64, ptr %i.gzk, align 8, !tbaa !90, !noalias !751
  %i.gzm = xor i64 %i.gzl, %i.gzj
  %i.gzn = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gzm)
  %i.gzo = trunc nuw nsw i64 %i.gzn to i32
  %i.gzp = add nsw i32 %.191.i.i.i, %i.gzo
  %i.gzq = add nsw i32 %.183.i.i.i, 1
  br label %bb.vw

bb.vw:                                            ; preds = %bb.vv, %bb.vs
  %.292.i.i.i = phi i32 [ %i.gzp, %bb.vv ], [ 0, %bb.vs ]
  %.284.i.i.i = phi i32 [ %i.gzq, %bb.vv ], [ 0, %bb.vs ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.181.i.i.i, %bb.vv ], [ %i.giu, %bb.vs ]
  %i.gzr = sext i32 %.284.i.i.i to i64            ; 2 uses
  %i.gzs = getelementptr inbounds [8 x i8], ptr %i.gln, i64 %i.gzr
  %i.gzt = load i64, ptr %i.gzs, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.gzu = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.gzr
  %i.gzv = load i64, ptr %i.gzu, align 8, !tbaa !90, !noalias !751
  %i.gzw = xor i64 %i.gzv, %i.gzt
  %i.gzx = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gzw)
  %i.gzy = trunc nuw nsw i64 %i.gzx to i32
  %i.gzz = add nsw i32 %.292.i.i.i, %i.gzy
  %i.haa = add nsw i32 %.284.i.i.i, 1
  br label %bb.vx

bb.vx:                                            ; preds = %bb.vw, %bb.vs
  %.393.i.i.i = phi i32 [ %i.gzz, %bb.vw ], [ 0, %bb.vs ]
  %.385.i.i.i = phi i32 [ %i.haa, %bb.vw ], [ 0, %bb.vs ] ; 2 uses
  %.3.i.i.i = phi i32 [ %.2.i.i.i, %bb.vw ], [ %i.giu, %bb.vs ]
  %i.hab = sext i32 %.385.i.i.i to i64            ; 2 uses
  %i.hac = getelementptr inbounds [8 x i8], ptr %i.gln, i64 %i.hab
  %i.had = load i64, ptr %i.hac, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hae = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.hab
  %i.haf = load i64, ptr %i.hae, align 8, !tbaa !90, !noalias !751
  %i.hag = xor i64 %i.haf, %i.had
  %i.hah = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hag)
  %i.hai = trunc nuw nsw i64 %i.hah to i32
  %i.haj = add nsw i32 %.393.i.i.i, %i.hai
  %i.hak = add nsw i32 %.385.i.i.i, 1
  br label %bb.vy

bb.vy:                                            ; preds = %bb.vx, %bb.vs
  %.494.i.i.i = phi i32 [ %i.haj, %bb.vx ], [ 0, %bb.vs ]
  %.486.i.i.i = phi i32 [ %i.hak, %bb.vx ], [ 0, %bb.vs ] ; 2 uses
  %.4.i.i.i = phi i32 [ %.3.i.i.i, %bb.vx ], [ %i.giu, %bb.vs ]
  %i.hal = sext i32 %.486.i.i.i to i64            ; 2 uses
  %i.ham = getelementptr inbounds [8 x i8], ptr %i.gln, i64 %i.hal
  %i.han = load i64, ptr %i.ham, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hao = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.hal
  %i.hap = load i64, ptr %i.hao, align 8, !tbaa !90, !noalias !751
  %i.haq = xor i64 %i.hap, %i.han
  %i.har = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.haq)
  %i.has = trunc nuw nsw i64 %i.har to i32
  %i.hat = add nsw i32 %.494.i.i.i, %i.has
  %i.hau = add nsw i32 %.486.i.i.i, 1
  br label %bb.vz

bb.vz:                                            ; preds = %bb.vy, %bb.vs
  %.595.i.i.i = phi i32 [ %i.hat, %bb.vy ], [ 0, %bb.vs ]
  %.587.i.i.i = phi i32 [ %i.hau, %bb.vy ], [ 0, %bb.vs ] ; 2 uses
  %.5.i.i.i = phi i32 [ %.4.i.i.i, %bb.vy ], [ %i.giu, %bb.vs ]
  %i.hav = sext i32 %.587.i.i.i to i64            ; 2 uses
  %i.haw = getelementptr inbounds [8 x i8], ptr %i.gln, i64 %i.hav
  %i.hax = load i64, ptr %i.haw, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hay = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.hav
  %i.haz = load i64, ptr %i.hay, align 8, !tbaa !90, !noalias !751
  %i.hba = xor i64 %i.haz, %i.hax
  %i.hbb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hba)
  %i.hbc = trunc nuw nsw i64 %i.hbb to i32
  %i.hbd = add nsw i32 %.595.i.i.i, %i.hbc
  %i.hbe = add nsw i32 %.587.i.i.i, 1
  br label %bb.wa

bb.wa:                                            ; preds = %bb.vz, %bb.vs
  %.696.i.i.i = phi i32 [ %i.hbd, %bb.vz ], [ 0, %bb.vs ]
  %.688.i.i.i = phi i32 [ %i.hbe, %bb.vz ], [ 0, %bb.vs ] ; 2 uses
  %.6.i.i.i = phi i32 [ %.5.i.i.i, %bb.vz ], [ %i.giu, %bb.vs ]
  %i.hbf = sext i32 %.688.i.i.i to i64            ; 2 uses
  %i.hbg = getelementptr inbounds [8 x i8], ptr %i.gln, i64 %i.hbf
  %i.hbh = load i64, ptr %i.hbg, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hbi = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.hbf
  %i.hbj = load i64, ptr %i.hbi, align 8, !tbaa !90, !noalias !751
  %i.hbk = xor i64 %i.hbj, %i.hbh
  %i.hbl = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hbk)
  %i.hbm = trunc nuw nsw i64 %i.hbl to i32
  %i.hbn = add nsw i32 %.696.i.i.i, %i.hbm
  %i.hbo = add nsw i32 %.688.i.i.i, 1
  br label %bb.wb

bb.wb:                                            ; preds = %bb.wa, %bb.vs
  %.797.i.i.i = phi i32 [ %i.hbn, %bb.wa ], [ 0, %bb.vs ]
  %.789.i.i.i = phi i32 [ %i.hbo, %bb.wa ], [ 0, %bb.vs ] ; 2 uses
  %.7.i.i.i = phi i32 [ %.6.i.i.i, %bb.wa ], [ %i.giu, %bb.vs ]
  %i.hbp = sext i32 %.789.i.i.i to i64            ; 2 uses
  %i.hbq = getelementptr inbounds [8 x i8], ptr %i.gln, i64 %i.hbp
  %i.hbr = load i64, ptr %i.hbq, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hbs = getelementptr inbounds [8 x i8], ptr %i.gmj, i64 %i.hbp
  %i.hbt = load i64, ptr %i.hbs, align 8, !tbaa !90, !noalias !751
  %i.hbu = xor i64 %i.hbt, %i.hbr
  %i.hbv = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hbu)
  %i.hbw = trunc nuw nsw i64 %i.hbv to i32
  %i.hbx = add nsw i32 %.797.i.i.i, %i.hbw
  %i.hby = add nsw i32 %.789.i.i.i, 1
  br label %bb.vt, !llvm.loop !180

bb.wc:                                            ; preds = %bb.vt
  br i1 %.not.i753.i.i, label %.noexc247.i.i, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.hbz = getelementptr inbounds i8, ptr %i.gmj, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.we, label %bb.wf

bb.we:                                            ; preds = %bb.wd
  %i.hca = load i32, ptr %i.gma, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.hcb = load i32, ptr %i.hbz, align 4, !tbaa !73, !noalias !751
  %i.hcc = xor i32 %i.hcb, %i.hca
  %i.hcd = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hcc)
  %i.hce = add nsw i32 %i.hcd, %.090.i.i.i
  %i.hcf = getelementptr inbounds nuw i8, ptr %i.hbz, i64 4
  br label %bb.wf

bb.wf:                                            ; preds = %bb.we, %bb.wd
  %.098.i.i.i = phi i32 [ %i.gja, %bb.we ], [ %i.giv, %bb.wd ] ; 3 uses
  %.8.i.i.i = phi i32 [ %i.hce, %bb.we ], [ %.090.i.i.i, %bb.wd ] ; 2 uses
  %.078.i.i.i = phi ptr [ %i.gmb, %bb.we ], [ %i.gma, %bb.wd ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.hcf, %bb.we ], [ %i.hbz, %bb.wd ] ; 3 uses
  %i.hcg = icmp sgt i32 %.098.i.i.i, 1
  br i1 %i.hcg, label %bb.wg, label %bb.wh

bb.wg:                                            ; preds = %bb.wf
  %i.hch = load i16, ptr %.078.i.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.hci = load i16, ptr %.0.i.i.i, align 2, !tbaa !181, !noalias !751
  %i.hcj = xor i16 %i.hci, %i.hch
  %i.hck = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.hcj)
  %i.hcl = zext nneg i16 %i.hck to i32
  %i.hcm = add nsw i32 %.8.i.i.i, %i.hcl
  %i.hcn = getelementptr inbounds nuw i8, ptr %.078.i.i.i, i64 2
  %i.hco = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.hcp = add nsw i32 %.098.i.i.i, -2
  br label %bb.wh

bb.wh:                                            ; preds = %bb.wg, %bb.wf
  %.199.i.i.i = phi i32 [ %i.hcp, %bb.wg ], [ %.098.i.i.i, %bb.wf ]
  %.9.i.i.i = phi i32 [ %i.hcm, %bb.wg ], [ %.8.i.i.i, %bb.wf ] ; 2 uses
  %.179.i.i.i = phi ptr [ %i.hcn, %bb.wg ], [ %.078.i.i.i, %bb.wf ]
  %.1.i389.i.i = phi ptr [ %i.hco, %bb.wg ], [ %.0.i.i.i, %bb.wf ]
  %i.hcq = icmp sgt i32 %.199.i.i.i, 0
  br i1 %i.hcq, label %bb.wi, label %.noexc247.i.i

bb.wi:                                            ; preds = %bb.wh
  %i.hcr = load i8, ptr %.179.i.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.hcs = load i8, ptr %.1.i389.i.i, align 1, !tbaa !72, !noalias !751
  %i.hct = xor i8 %i.hcs, %i.hcr
  %i.hcu = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.hct)
  %i.hcv = zext nneg i8 %i.hcu to i32
  %i.hcw = add nsw i32 %.9.i.i.i, %i.hcv
  br label %.noexc247.i.i

.noexc247.i.i:                                    ; preds = %bb.wi, %bb.wh, %bb.wc
  %.11.i.i.i = phi i32 [ %.090.i.i.i, %bb.wc ], [ %i.hcw, %bb.wi ], [ %.9.i.i.i, %bb.wh ] ; 3 uses
  %i.hcx = icmp slt i32 %.11.i.i.i, %.sroa.5258.0249.i.i
  br i1 %i.hcx, label %bb.wj, label %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi1EE9add_bcodeEPKhl.exit.i.i

bb.wj:                                            ; preds = %.noexc247.i.i
  store i32 %.11.i.i.i, ptr %i.glo, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  store i64 %i.gml, ptr %i.glp, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  br label %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi1EE9add_bcodeEPKhl.exit.i.i

_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi1EE9add_bcodeEPKhl.exit.i.i: ; preds = %bb.wj, %.noexc247.i.i
  %.sroa.5258.1.i.i = phi i32 [ %.11.i.i.i, %bb.wj ], [ %.sroa.5258.0249.i.i, %.noexc247.i.i ]
  %i.hcy = add nuw nsw i64 %.0193250.i.i, 1       ; 2 uses
  %exitcond409.not.i.i = icmp eq i64 %i.hcy, %i.gkd
  br i1 %exitcond409.not.i.i, label %.loopexit90.i.i, label %bb.tq, !llvm.loop !777

.loopexit91.i.i:                                  ; preds = %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi2EE9add_bcodeEPKhl.exit.i.i, %bb.wk
  %i.hcz = add nuw nsw i64 %i.hda, 4              ; 2 uses
  %.not219.i.i725 = icmp sgt i64 %i.hcz, %i.gjo
  br i1 %.not219.i.i725, label %.loopexit94.i.i, label %bb.wk, !llvm.loop !778

bb.wk:                                            ; preds = %.loopexit91.i.i, %.lr.ph244.i.i
  %i.hda = phi i64 [ 4, %.lr.ph244.i.i ], [ %i.hcz, %.loopexit91.i.i ] ; 3 uses
  %.1195243.i.i = phi i64 [ 0, %.lr.ph244.i.i ], [ %i.hda, %.loopexit91.i.i ]
  %i.hdb = getelementptr inbounds nuw [4 x i8], ptr %i.gkg, i64 %.1195243.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.hdc = load i32, ptr %i.hdb, align 4, !tbaa !73, !alias.scope !779, !noalias !784
  %i.hdd = sext i32 %i.hdc to i64                 ; 2 uses
  %i.hde = mul nsw i64 %i.hdd, %i.gis
  %i.hdf = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hde ; 9 uses
  %i.hdg = shl nsw i64 %i.hdd, 1                  ; 2 uses
  %i.hdh = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.hdg ; 5 uses
  %i.hdi = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hdg ; 3 uses
  %i.hdj = getelementptr inbounds nuw i8, ptr %i.hdb, i64 4
  %i.hdk = load i32, ptr %i.hdj, align 4, !tbaa !73, !alias.scope !779, !noalias !784
  %i.hdl = sext i32 %i.hdk to i64                 ; 2 uses
  %i.hdm = mul nsw i64 %i.hdl, %i.gis
  %i.hdn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hdm ; 9 uses
  %i.hdo = shl nsw i64 %i.hdl, 1                  ; 2 uses
  %i.hdp = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.hdo ; 5 uses
  %i.hdq = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hdo ; 3 uses
  %i.hdr = getelementptr inbounds nuw i8, ptr %i.hdb, i64 8
  %i.hds = load i32, ptr %i.hdr, align 4, !tbaa !73, !alias.scope !779, !noalias !784
  %i.hdt = sext i32 %i.hds to i64                 ; 2 uses
  %i.hdu = mul nsw i64 %i.hdt, %i.gis
  %i.hdv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hdu ; 9 uses
  %i.hdw = shl nsw i64 %i.hdt, 1                  ; 2 uses
  %i.hdx = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.hdw ; 5 uses
  %i.hdy = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hdw ; 3 uses
  %i.hdz = getelementptr inbounds nuw i8, ptr %i.hdb, i64 12
  %i.hea = load i32, ptr %i.hdz, align 4, !tbaa !73, !alias.scope !779, !noalias !784
  %i.heb = sext i32 %i.hea to i64                 ; 2 uses
  %i.hec = mul nsw i64 %i.heb, %i.gis
  %i.hed = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hec ; 9 uses
  %i.hee = shl nsw i64 %i.heb, 1                  ; 2 uses
  %i.hef = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.hee ; 5 uses
  %i.heg = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hee ; 3 uses
  br i1 %i.gkh, label %.lr.ph241.i.i, label %.loopexit91.i.i

.lr.ph241.i.i:                                    ; preds = %bb.wk
  %i.heh = load i32, ptr %i.hef, align 4, !tbaa !73, !alias.scope !787, !noalias !788
  %i.hei = load i32, ptr %i.hdx, align 4, !tbaa !73, !alias.scope !787, !noalias !788
  %i.hej = load i32, ptr %i.hdp, align 4, !tbaa !73, !alias.scope !787, !noalias !788
  %i.hek = load i32, ptr %i.hdh, align 4, !tbaa !73, !alias.scope !787, !noalias !788
  %i.hel = getelementptr inbounds i8, ptr %i.hdf, i64 %i.giy ; 3 uses
  %i.hem = getelementptr inbounds nuw i8, ptr %i.hel, i64 4
  %i.hen = getelementptr inbounds i8, ptr %i.hdh, i64 -4
  %i.heo = getelementptr inbounds i8, ptr %i.hdi, i64 -8
  %.phi.trans.insert.i.i.i.i726 = getelementptr inbounds nuw i8, ptr %i.hdh, i64 4
  %i.hep = getelementptr inbounds nuw i8, ptr %i.hdi, i64 8
  %i.heq = getelementptr inbounds i8, ptr %i.hdn, i64 %i.giy ; 3 uses
  %i.her = getelementptr inbounds nuw i8, ptr %i.heq, i64 4
  %i.hes = getelementptr inbounds i8, ptr %i.hdp, i64 -4
  %i.het = getelementptr inbounds i8, ptr %i.hdq, i64 -8
  %.phi.trans.insert.i.1.i.i.i727 = getelementptr inbounds nuw i8, ptr %i.hdp, i64 4
  %i.heu = getelementptr inbounds nuw i8, ptr %i.hdq, i64 8
  %i.hev = getelementptr inbounds i8, ptr %i.hdv, i64 %i.giy ; 3 uses
  %i.hew = getelementptr inbounds nuw i8, ptr %i.hev, i64 4
  %i.hex = getelementptr inbounds i8, ptr %i.hdx, i64 -4
  %i.hey = getelementptr inbounds i8, ptr %i.hdy, i64 -8
  %.phi.trans.insert.i.2.i.i.i728 = getelementptr inbounds nuw i8, ptr %i.hdx, i64 4
  %i.hez = getelementptr inbounds nuw i8, ptr %i.hdy, i64 8
  %i.hfa = getelementptr inbounds i8, ptr %i.hed, i64 %i.giy ; 3 uses
  %i.hfb = getelementptr inbounds nuw i8, ptr %i.hfa, i64 4
  %i.hfc = getelementptr inbounds i8, ptr %i.hef, i64 -4
  %i.hfd = getelementptr inbounds i8, ptr %i.heg, i64 -8
  %.phi.trans.insert.i.3.i.i.i729 = getelementptr inbounds nuw i8, ptr %i.hef, i64 4
  %i.hfe = getelementptr inbounds nuw i8, ptr %i.heg, i64 8
  br label %bb.wl

bb.wl:                                            ; preds = %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi2EE9add_bcodeEPKhl.exit.i.i, %.lr.ph241.i.i
  %.0192239.i.i = phi i64 [ 0, %.lr.ph241.i.i ], [ %i.hxb, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi2EE9add_bcodeEPKhl.exit.i.i ] ; 3 uses
  %.sroa.5234.0238.i.i = phi i32 [ %i.heh, %.lr.ph241.i.i ], [ %.sroa.5234.1.i.i, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi2EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %.sroa.4933.0237.i.i = phi i32 [ %i.hei, %.lr.ph241.i.i ], [ %.sroa.4933.1.i.i, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi2EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %.sroa.4632.0236.i.i = phi i32 [ %i.hej, %.lr.ph241.i.i ], [ %.sroa.4632.1.i.i, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi2EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %.sroa.4331.0235.i.i = phi i32 [ %i.hek, %.lr.ph241.i.i ], [ %.sroa.4331.1.i.i, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi2EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %i.hff = mul i64 %.0192239.i.i, %i.gis
  %i.hfg = getelementptr inbounds nuw i8, ptr %i.gjt, i64 %i.hff ; 36 uses
  %i.hfh = getelementptr inbounds nuw [8 x i8], ptr %i.gjy, i64 %.0192239.i.i
  %i.hfi = load i64, ptr %i.hfh, align 8, !tbaa !90, !noalias !751 ; 8 uses
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.wo
    i32 6, label %bb.wp
    i32 5, label %bb.wq
    i32 4, label %bb.wr
    i32 3, label %bb.ws
    i32 2, label %bb.wt
    i32 1, label %bb.wu
    i32 0, label %bb.wm
  ]

bb.wm:                                            ; preds = %bb.wl, %bb.wu
  %.090.i606.i.i = phi i32 [ %i.hil, %bb.wu ], [ %i.giw, %bb.wl ] ; 4 uses
  %.082.i607.i.i = phi i32 [ %i.him, %bb.wu ], [ %i.giw, %bb.wl ] ; 2 uses
  %.080.i608.i.i = phi i32 [ %.7.i639.i.i, %bb.wu ], [ %i.giu, %bb.wl ] ; 2 uses
  %i.hfj = icmp sgt i32 %.080.i608.i.i, 7
  br i1 %i.hfj, label %bb.wn, label %bb.wv

bb.wn:                                            ; preds = %bb.wm
  %i.hfk = add nsw i32 %.080.i608.i.i, -8
  %i.hfl = sext i32 %.082.i607.i.i to i64         ; 2 uses
  %i.hfm = getelementptr inbounds [8 x i8], ptr %i.hdf, i64 %i.hfl
  %i.hfn = load i64, ptr %i.hfm, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hfo = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hfl
  %i.hfp = load i64, ptr %i.hfo, align 8, !tbaa !90, !noalias !751
  %i.hfq = xor i64 %i.hfp, %i.hfn
  %i.hfr = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hfq)
  %i.hfs = trunc nuw nsw i64 %i.hfr to i32
  %i.hft = add nsw i32 %.090.i606.i.i, %i.hfs
  %i.hfu = add nsw i32 %.082.i607.i.i, 1
  br label %bb.wo

bb.wo:                                            ; preds = %bb.wn, %bb.wl
  %.191.i619.i.i = phi i32 [ 0, %bb.wl ], [ %i.hft, %bb.wn ]
  %.183.i620.i.i = phi i32 [ 0, %bb.wl ], [ %i.hfu, %bb.wn ] ; 2 uses
  %.181.i621.i.i = phi i32 [ %i.giu, %bb.wl ], [ %i.hfk, %bb.wn ]
  %i.hfv = sext i32 %.183.i620.i.i to i64         ; 2 uses
  %i.hfw = getelementptr inbounds [8 x i8], ptr %i.hdf, i64 %i.hfv
  %i.hfx = load i64, ptr %i.hfw, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hfy = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hfv
  %i.hfz = load i64, ptr %i.hfy, align 8, !tbaa !90, !noalias !751
  %i.hga = xor i64 %i.hfz, %i.hfx
  %i.hgb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hga)
  %i.hgc = trunc nuw nsw i64 %i.hgb to i32
  %i.hgd = add nsw i32 %.191.i619.i.i, %i.hgc
  %i.hge = add nsw i32 %.183.i620.i.i, 1
  br label %bb.wp

bb.wp:                                            ; preds = %bb.wo, %bb.wl
  %.292.i622.i.i = phi i32 [ %i.hgd, %bb.wo ], [ 0, %bb.wl ]
  %.284.i623.i.i = phi i32 [ %i.hge, %bb.wo ], [ 0, %bb.wl ] ; 2 uses
  %.2.i624.i.i = phi i32 [ %.181.i621.i.i, %bb.wo ], [ %i.giu, %bb.wl ]
  %i.hgf = sext i32 %.284.i623.i.i to i64         ; 2 uses
  %i.hgg = getelementptr inbounds [8 x i8], ptr %i.hdf, i64 %i.hgf
  %i.hgh = load i64, ptr %i.hgg, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hgi = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hgf
  %i.hgj = load i64, ptr %i.hgi, align 8, !tbaa !90, !noalias !751
  %i.hgk = xor i64 %i.hgj, %i.hgh
  %i.hgl = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hgk)
  %i.hgm = trunc nuw nsw i64 %i.hgl to i32
  %i.hgn = add nsw i32 %.292.i622.i.i, %i.hgm
  %i.hgo = add nsw i32 %.284.i623.i.i, 1
  br label %bb.wq

bb.wq:                                            ; preds = %bb.wp, %bb.wl
  %.393.i625.i.i = phi i32 [ %i.hgn, %bb.wp ], [ 0, %bb.wl ]
  %.385.i626.i.i = phi i32 [ %i.hgo, %bb.wp ], [ 0, %bb.wl ] ; 2 uses
  %.3.i627.i.i = phi i32 [ %.2.i624.i.i, %bb.wp ], [ %i.giu, %bb.wl ]
  %i.hgp = sext i32 %.385.i626.i.i to i64         ; 2 uses
  %i.hgq = getelementptr inbounds [8 x i8], ptr %i.hdf, i64 %i.hgp
  %i.hgr = load i64, ptr %i.hgq, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hgs = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hgp
  %i.hgt = load i64, ptr %i.hgs, align 8, !tbaa !90, !noalias !751
  %i.hgu = xor i64 %i.hgt, %i.hgr
  %i.hgv = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hgu)
  %i.hgw = trunc nuw nsw i64 %i.hgv to i32
  %i.hgx = add nsw i32 %.393.i625.i.i, %i.hgw
  %i.hgy = add nsw i32 %.385.i626.i.i, 1
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wq, %bb.wl
  %.494.i628.i.i = phi i32 [ %i.hgx, %bb.wq ], [ 0, %bb.wl ]
  %.486.i629.i.i = phi i32 [ %i.hgy, %bb.wq ], [ 0, %bb.wl ] ; 2 uses
  %.4.i630.i.i = phi i32 [ %.3.i627.i.i, %bb.wq ], [ %i.giu, %bb.wl ]
  %i.hgz = sext i32 %.486.i629.i.i to i64         ; 2 uses
  %i.hha = getelementptr inbounds [8 x i8], ptr %i.hdf, i64 %i.hgz
  %i.hhb = load i64, ptr %i.hha, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hhc = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hgz
  %i.hhd = load i64, ptr %i.hhc, align 8, !tbaa !90, !noalias !751
  %i.hhe = xor i64 %i.hhd, %i.hhb
  %i.hhf = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hhe)
  %i.hhg = trunc nuw nsw i64 %i.hhf to i32
  %i.hhh = add nsw i32 %.494.i628.i.i, %i.hhg
  %i.hhi = add nsw i32 %.486.i629.i.i, 1
  br label %bb.ws

bb.ws:                                            ; preds = %bb.wr, %bb.wl
  %.595.i631.i.i = phi i32 [ %i.hhh, %bb.wr ], [ 0, %bb.wl ]
  %.587.i632.i.i = phi i32 [ %i.hhi, %bb.wr ], [ 0, %bb.wl ] ; 2 uses
  %.5.i633.i.i = phi i32 [ %.4.i630.i.i, %bb.wr ], [ %i.giu, %bb.wl ]
  %i.hhj = sext i32 %.587.i632.i.i to i64         ; 2 uses
  %i.hhk = getelementptr inbounds [8 x i8], ptr %i.hdf, i64 %i.hhj
  %i.hhl = load i64, ptr %i.hhk, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hhm = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hhj
  %i.hhn = load i64, ptr %i.hhm, align 8, !tbaa !90, !noalias !751
  %i.hho = xor i64 %i.hhn, %i.hhl
  %i.hhp = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hho)
  %i.hhq = trunc nuw nsw i64 %i.hhp to i32
  %i.hhr = add nsw i32 %.595.i631.i.i, %i.hhq
  %i.hhs = add nsw i32 %.587.i632.i.i, 1
  br label %bb.wt

bb.wt:                                            ; preds = %bb.ws, %bb.wl
  %.696.i634.i.i = phi i32 [ %i.hhr, %bb.ws ], [ 0, %bb.wl ]
  %.688.i635.i.i = phi i32 [ %i.hhs, %bb.ws ], [ 0, %bb.wl ] ; 2 uses
  %.6.i636.i.i = phi i32 [ %.5.i633.i.i, %bb.ws ], [ %i.giu, %bb.wl ]
  %i.hht = sext i32 %.688.i635.i.i to i64         ; 2 uses
  %i.hhu = getelementptr inbounds [8 x i8], ptr %i.hdf, i64 %i.hht
  %i.hhv = load i64, ptr %i.hhu, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hhw = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hht
  %i.hhx = load i64, ptr %i.hhw, align 8, !tbaa !90, !noalias !751
  %i.hhy = xor i64 %i.hhx, %i.hhv
  %i.hhz = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hhy)
  %i.hia = trunc nuw nsw i64 %i.hhz to i32
  %i.hib = add nsw i32 %.696.i634.i.i, %i.hia
  %i.hic = add nsw i32 %.688.i635.i.i, 1
  br label %bb.wu

bb.wu:                                            ; preds = %bb.wt, %bb.wl
  %.797.i637.i.i = phi i32 [ %i.hib, %bb.wt ], [ 0, %bb.wl ]
  %.789.i638.i.i = phi i32 [ %i.hic, %bb.wt ], [ 0, %bb.wl ] ; 2 uses
  %.7.i639.i.i = phi i32 [ %.6.i636.i.i, %bb.wt ], [ %i.giu, %bb.wl ]
  %i.hid = sext i32 %.789.i638.i.i to i64         ; 2 uses
  %i.hie = getelementptr inbounds [8 x i8], ptr %i.hdf, i64 %i.hid
  %i.hif = load i64, ptr %i.hie, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hig = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hid
  %i.hih = load i64, ptr %i.hig, align 8, !tbaa !90, !noalias !751
  %i.hii = xor i64 %i.hih, %i.hif
  %i.hij = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hii)
  %i.hik = trunc nuw nsw i64 %i.hij to i32
  %i.hil = add nsw i32 %.797.i637.i.i, %i.hik
  %i.him = add nsw i32 %.789.i638.i.i, 1
  br label %bb.wm, !llvm.loop !180

bb.wv:                                            ; preds = %bb.wm
  br i1 %.not.i753.i.i, label %.noexc259.i.i, label %bb.ww

bb.ww:                                            ; preds = %bb.wv
  %i.hin = getelementptr inbounds i8, ptr %i.hfg, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.wx, label %bb.wy

bb.wx:                                            ; preds = %bb.ww
  %i.hio = load i32, ptr %i.hel, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.hip = load i32, ptr %i.hin, align 4, !tbaa !73, !noalias !751
  %i.hiq = xor i32 %i.hip, %i.hio
  %i.hir = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hiq)
  %i.his = add nsw i32 %i.hir, %.090.i606.i.i
  %i.hit = getelementptr inbounds nuw i8, ptr %i.hin, i64 4
  br label %bb.wy

bb.wy:                                            ; preds = %bb.wx, %bb.ww
  %.098.i610.i.i = phi i32 [ %i.gja, %bb.wx ], [ %i.giv, %bb.ww ] ; 3 uses
  %.8.i611.i.i = phi i32 [ %i.his, %bb.wx ], [ %.090.i606.i.i, %bb.ww ] ; 2 uses
  %.078.i612.i.i = phi ptr [ %i.hem, %bb.wx ], [ %i.hel, %bb.ww ] ; 3 uses
  %.0.i613.i.i = phi ptr [ %i.hit, %bb.wx ], [ %i.hin, %bb.ww ] ; 3 uses
  %i.hiu = icmp sgt i32 %.098.i610.i.i, 1
  br i1 %i.hiu, label %bb.wz, label %bb.xa

bb.wz:                                            ; preds = %bb.wy
  %i.hiv = load i16, ptr %.078.i612.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.hiw = load i16, ptr %.0.i613.i.i, align 2, !tbaa !181, !noalias !751
  %i.hix = xor i16 %i.hiw, %i.hiv
  %i.hiy = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.hix)
  %i.hiz = zext nneg i16 %i.hiy to i32
  %i.hja = add nsw i32 %.8.i611.i.i, %i.hiz
  %i.hjb = getelementptr inbounds nuw i8, ptr %.078.i612.i.i, i64 2
  %i.hjc = getelementptr inbounds nuw i8, ptr %.0.i613.i.i, i64 2
  %i.hjd = add nsw i32 %.098.i610.i.i, -2
  br label %bb.xa

bb.xa:                                            ; preds = %bb.wz, %bb.wy
  %.199.i614.i.i = phi i32 [ %i.hjd, %bb.wz ], [ %.098.i610.i.i, %bb.wy ]
  %.9.i615.i.i = phi i32 [ %i.hja, %bb.wz ], [ %.8.i611.i.i, %bb.wy ] ; 2 uses
  %.179.i616.i.i = phi ptr [ %i.hjb, %bb.wz ], [ %.078.i612.i.i, %bb.wy ]
  %.1.i617.i.i = phi ptr [ %i.hjc, %bb.wz ], [ %.0.i613.i.i, %bb.wy ]
  %i.hje = icmp sgt i32 %.199.i614.i.i, 0
  br i1 %i.hje, label %bb.xb, label %.noexc259.i.i

bb.xb:                                            ; preds = %bb.xa
  %i.hjf = load i8, ptr %.179.i616.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.hjg = load i8, ptr %.1.i617.i.i, align 1, !tbaa !72, !noalias !751
  %i.hjh = xor i8 %i.hjg, %i.hjf
  %i.hji = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.hjh)
  %i.hjj = zext nneg i8 %i.hji to i32
  %i.hjk = add nsw i32 %.9.i615.i.i, %i.hjj
  br label %.noexc259.i.i

.noexc259.i.i:                                    ; preds = %bb.xb, %bb.xa, %bb.wv
  %.11.i618.i.i = phi i32 [ %.090.i606.i.i, %bb.wv ], [ %i.hjk, %bb.xb ], [ %.9.i615.i.i, %bb.xa ] ; 4 uses
  %i.hjl = icmp slt i32 %.11.i618.i.i, %.sroa.4331.0235.i.i
  br i1 %i.hjl, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i745, label %bb.xd

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i745: ; preds = %.noexc259.i.i
  %.pre.i.i.i.i746 = load i32, ptr %.phi.trans.insert.i.i.i.i726, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 3 uses
  %i.hjm = icmp sgt i32 %.11.i618.i.i, %.pre.i.i.i.i746
  br i1 %i.hjm, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i748, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i747

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i747:   ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i745
  %i.hjn = load i64, ptr %i.hep, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 2 uses
  %i.hjo = icmp eq i32 %.11.i618.i.i, %.pre.i.i.i.i746
  %i.hjp = icmp sgt i64 %i.hfi, %i.hjn
  %i.hjq = and i1 %i.hjo, %i.hjp
  br i1 %i.hjq, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i748, label %bb.xc

bb.xc:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i747
  store i32 %.pre.i.i.i.i746, ptr %i.hdh, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  store i64 %i.hjn, ptr %i.hdi, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  br label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i748

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i748: ; preds = %bb.xc, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i747, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i745
  %.0.lcssa.i.i.i.i749 = phi i64 [ 2, %bb.xc ], [ 1, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i.i.i747 ], [ 1, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i.i.i745 ] ; 2 uses
  %i.hjr = getelementptr inbounds nuw [4 x i8], ptr %i.hen, i64 %.0.lcssa.i.i.i.i749
  store i32 %.11.i618.i.i, ptr %i.hjr, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.hjs = getelementptr inbounds nuw [8 x i8], ptr %i.heo, i64 %.0.lcssa.i.i.i.i749
  store i64 %i.hfi, ptr %i.hjs, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.hjt = load i32, ptr %i.hdh, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %bb.xd

bb.xd:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i748, %.noexc259.i.i
  %.sroa.4331.1.i.i = phi i32 [ %i.hjt, %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i748 ], [ %.sroa.4331.0235.i.i, %.noexc259.i.i ]
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.xg
    i32 6, label %bb.xh
    i32 5, label %bb.xi
    i32 4, label %bb.xj
    i32 3, label %bb.xk
    i32 2, label %bb.xl
    i32 1, label %bb.xm
    i32 0, label %bb.xe
  ]

bb.xe:                                            ; preds = %bb.xm, %bb.xd
  %.090.i570.i.i = phi i32 [ %i.hmw, %bb.xm ], [ %i.giw, %bb.xd ] ; 4 uses
  %.082.i571.i.i = phi i32 [ %i.hmx, %bb.xm ], [ %i.giw, %bb.xd ] ; 2 uses
  %.080.i572.i.i = phi i32 [ %.7.i603.i.i, %bb.xm ], [ %i.giu, %bb.xd ] ; 2 uses
  %i.hju = icmp sgt i32 %.080.i572.i.i, 7
  br i1 %i.hju, label %bb.xf, label %bb.xn

bb.xf:                                            ; preds = %bb.xe
  %i.hjv = add nsw i32 %.080.i572.i.i, -8
  %i.hjw = sext i32 %.082.i571.i.i to i64         ; 2 uses
  %i.hjx = getelementptr inbounds [8 x i8], ptr %i.hdn, i64 %i.hjw
  %i.hjy = load i64, ptr %i.hjx, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hjz = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hjw
  %i.hka = load i64, ptr %i.hjz, align 8, !tbaa !90, !noalias !751
  %i.hkb = xor i64 %i.hka, %i.hjy
  %i.hkc = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hkb)
  %i.hkd = trunc nuw nsw i64 %i.hkc to i32
  %i.hke = add nsw i32 %.090.i570.i.i, %i.hkd
  %i.hkf = add nsw i32 %.082.i571.i.i, 1
  br label %bb.xg

bb.xg:                                            ; preds = %bb.xf, %bb.xd
  %.191.i583.i.i = phi i32 [ 0, %bb.xd ], [ %i.hke, %bb.xf ]
  %.183.i584.i.i = phi i32 [ 0, %bb.xd ], [ %i.hkf, %bb.xf ] ; 2 uses
  %.181.i585.i.i = phi i32 [ %i.giu, %bb.xd ], [ %i.hjv, %bb.xf ]
  %i.hkg = sext i32 %.183.i584.i.i to i64         ; 2 uses
  %i.hkh = getelementptr inbounds [8 x i8], ptr %i.hdn, i64 %i.hkg
  %i.hki = load i64, ptr %i.hkh, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hkj = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hkg
  %i.hkk = load i64, ptr %i.hkj, align 8, !tbaa !90, !noalias !751
  %i.hkl = xor i64 %i.hkk, %i.hki
  %i.hkm = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hkl)
  %i.hkn = trunc nuw nsw i64 %i.hkm to i32
  %i.hko = add nsw i32 %.191.i583.i.i, %i.hkn
  %i.hkp = add nsw i32 %.183.i584.i.i, 1
  br label %bb.xh

bb.xh:                                            ; preds = %bb.xg, %bb.xd
  %.292.i586.i.i = phi i32 [ %i.hko, %bb.xg ], [ 0, %bb.xd ]
  %.284.i587.i.i = phi i32 [ %i.hkp, %bb.xg ], [ 0, %bb.xd ] ; 2 uses
  %.2.i588.i.i = phi i32 [ %.181.i585.i.i, %bb.xg ], [ %i.giu, %bb.xd ]
  %i.hkq = sext i32 %.284.i587.i.i to i64         ; 2 uses
  %i.hkr = getelementptr inbounds [8 x i8], ptr %i.hdn, i64 %i.hkq
  %i.hks = load i64, ptr %i.hkr, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hkt = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hkq
  %i.hku = load i64, ptr %i.hkt, align 8, !tbaa !90, !noalias !751
  %i.hkv = xor i64 %i.hku, %i.hks
  %i.hkw = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hkv)
  %i.hkx = trunc nuw nsw i64 %i.hkw to i32
  %i.hky = add nsw i32 %.292.i586.i.i, %i.hkx
  %i.hkz = add nsw i32 %.284.i587.i.i, 1
  br label %bb.xi

bb.xi:                                            ; preds = %bb.xh, %bb.xd
  %.393.i589.i.i = phi i32 [ %i.hky, %bb.xh ], [ 0, %bb.xd ]
  %.385.i590.i.i = phi i32 [ %i.hkz, %bb.xh ], [ 0, %bb.xd ] ; 2 uses
  %.3.i591.i.i = phi i32 [ %.2.i588.i.i, %bb.xh ], [ %i.giu, %bb.xd ]
  %i.hla = sext i32 %.385.i590.i.i to i64         ; 2 uses
  %i.hlb = getelementptr inbounds [8 x i8], ptr %i.hdn, i64 %i.hla
  %i.hlc = load i64, ptr %i.hlb, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hld = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hla
  %i.hle = load i64, ptr %i.hld, align 8, !tbaa !90, !noalias !751
  %i.hlf = xor i64 %i.hle, %i.hlc
  %i.hlg = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hlf)
  %i.hlh = trunc nuw nsw i64 %i.hlg to i32
  %i.hli = add nsw i32 %.393.i589.i.i, %i.hlh
  %i.hlj = add nsw i32 %.385.i590.i.i, 1
  br label %bb.xj

bb.xj:                                            ; preds = %bb.xi, %bb.xd
  %.494.i592.i.i = phi i32 [ %i.hli, %bb.xi ], [ 0, %bb.xd ]
  %.486.i593.i.i = phi i32 [ %i.hlj, %bb.xi ], [ 0, %bb.xd ] ; 2 uses
  %.4.i594.i.i = phi i32 [ %.3.i591.i.i, %bb.xi ], [ %i.giu, %bb.xd ]
  %i.hlk = sext i32 %.486.i593.i.i to i64         ; 2 uses
  %i.hll = getelementptr inbounds [8 x i8], ptr %i.hdn, i64 %i.hlk
  %i.hlm = load i64, ptr %i.hll, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hln = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hlk
  %i.hlo = load i64, ptr %i.hln, align 8, !tbaa !90, !noalias !751
  %i.hlp = xor i64 %i.hlo, %i.hlm
  %i.hlq = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hlp)
  %i.hlr = trunc nuw nsw i64 %i.hlq to i32
  %i.hls = add nsw i32 %.494.i592.i.i, %i.hlr
  %i.hlt = add nsw i32 %.486.i593.i.i, 1
  br label %bb.xk

bb.xk:                                            ; preds = %bb.xj, %bb.xd
  %.595.i595.i.i = phi i32 [ %i.hls, %bb.xj ], [ 0, %bb.xd ]
  %.587.i596.i.i = phi i32 [ %i.hlt, %bb.xj ], [ 0, %bb.xd ] ; 2 uses
  %.5.i597.i.i = phi i32 [ %.4.i594.i.i, %bb.xj ], [ %i.giu, %bb.xd ]
  %i.hlu = sext i32 %.587.i596.i.i to i64         ; 2 uses
  %i.hlv = getelementptr inbounds [8 x i8], ptr %i.hdn, i64 %i.hlu
  %i.hlw = load i64, ptr %i.hlv, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hlx = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hlu
  %i.hly = load i64, ptr %i.hlx, align 8, !tbaa !90, !noalias !751
  %i.hlz = xor i64 %i.hly, %i.hlw
  %i.hma = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hlz)
  %i.hmb = trunc nuw nsw i64 %i.hma to i32
  %i.hmc = add nsw i32 %.595.i595.i.i, %i.hmb
  %i.hmd = add nsw i32 %.587.i596.i.i, 1
  br label %bb.xl

bb.xl:                                            ; preds = %bb.xk, %bb.xd
  %.696.i598.i.i = phi i32 [ %i.hmc, %bb.xk ], [ 0, %bb.xd ]
  %.688.i599.i.i = phi i32 [ %i.hmd, %bb.xk ], [ 0, %bb.xd ] ; 2 uses
  %.6.i600.i.i = phi i32 [ %.5.i597.i.i, %bb.xk ], [ %i.giu, %bb.xd ]
  %i.hme = sext i32 %.688.i599.i.i to i64         ; 2 uses
  %i.hmf = getelementptr inbounds [8 x i8], ptr %i.hdn, i64 %i.hme
  %i.hmg = load i64, ptr %i.hmf, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hmh = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hme
  %i.hmi = load i64, ptr %i.hmh, align 8, !tbaa !90, !noalias !751
  %i.hmj = xor i64 %i.hmi, %i.hmg
  %i.hmk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hmj)
  %i.hml = trunc nuw nsw i64 %i.hmk to i32
  %i.hmm = add nsw i32 %.696.i598.i.i, %i.hml
  %i.hmn = add nsw i32 %.688.i599.i.i, 1
  br label %bb.xm

bb.xm:                                            ; preds = %bb.xl, %bb.xd
  %.797.i601.i.i = phi i32 [ %i.hmm, %bb.xl ], [ 0, %bb.xd ]
  %.789.i602.i.i = phi i32 [ %i.hmn, %bb.xl ], [ 0, %bb.xd ] ; 2 uses
  %.7.i603.i.i = phi i32 [ %.6.i600.i.i, %bb.xl ], [ %i.giu, %bb.xd ]
  %i.hmo = sext i32 %.789.i602.i.i to i64         ; 2 uses
  %i.hmp = getelementptr inbounds [8 x i8], ptr %i.hdn, i64 %i.hmo
  %i.hmq = load i64, ptr %i.hmp, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hmr = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hmo
  %i.hms = load i64, ptr %i.hmr, align 8, !tbaa !90, !noalias !751
  %i.hmt = xor i64 %i.hms, %i.hmq
  %i.hmu = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hmt)
  %i.hmv = trunc nuw nsw i64 %i.hmu to i32
  %i.hmw = add nsw i32 %.797.i601.i.i, %i.hmv
  %i.hmx = add nsw i32 %.789.i602.i.i, 1
  br label %bb.xe, !llvm.loop !180

bb.xn:                                            ; preds = %bb.xe
  br i1 %.not.i753.i.i, label %.noexc260.i.i, label %bb.xo

bb.xo:                                            ; preds = %bb.xn
  %i.hmy = getelementptr inbounds i8, ptr %i.hfg, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.xp, label %bb.xq

bb.xp:                                            ; preds = %bb.xo
  %i.hmz = load i32, ptr %i.heq, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.hna = load i32, ptr %i.hmy, align 4, !tbaa !73, !noalias !751
  %i.hnb = xor i32 %i.hna, %i.hmz
  %i.hnc = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hnb)
  %i.hnd = add nsw i32 %i.hnc, %.090.i570.i.i
  %i.hne = getelementptr inbounds nuw i8, ptr %i.hmy, i64 4
  br label %bb.xq

bb.xq:                                            ; preds = %bb.xp, %bb.xo
  %.098.i574.i.i = phi i32 [ %i.gja, %bb.xp ], [ %i.giv, %bb.xo ] ; 3 uses
  %.8.i575.i.i = phi i32 [ %i.hnd, %bb.xp ], [ %.090.i570.i.i, %bb.xo ] ; 2 uses
  %.078.i576.i.i = phi ptr [ %i.her, %bb.xp ], [ %i.heq, %bb.xo ] ; 3 uses
  %.0.i577.i.i = phi ptr [ %i.hne, %bb.xp ], [ %i.hmy, %bb.xo ] ; 3 uses
  %i.hnf = icmp sgt i32 %.098.i574.i.i, 1
  br i1 %i.hnf, label %bb.xr, label %bb.xs

bb.xr:                                            ; preds = %bb.xq
  %i.hng = load i16, ptr %.078.i576.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.hnh = load i16, ptr %.0.i577.i.i, align 2, !tbaa !181, !noalias !751
  %i.hni = xor i16 %i.hnh, %i.hng
  %i.hnj = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.hni)
  %i.hnk = zext nneg i16 %i.hnj to i32
  %i.hnl = add nsw i32 %.8.i575.i.i, %i.hnk
  %i.hnm = getelementptr inbounds nuw i8, ptr %.078.i576.i.i, i64 2
  %i.hnn = getelementptr inbounds nuw i8, ptr %.0.i577.i.i, i64 2
  %i.hno = add nsw i32 %.098.i574.i.i, -2
  br label %bb.xs

bb.xs:                                            ; preds = %bb.xr, %bb.xq
  %.199.i578.i.i = phi i32 [ %i.hno, %bb.xr ], [ %.098.i574.i.i, %bb.xq ]
  %.9.i579.i.i = phi i32 [ %i.hnl, %bb.xr ], [ %.8.i575.i.i, %bb.xq ] ; 2 uses
  %.179.i580.i.i = phi ptr [ %i.hnm, %bb.xr ], [ %.078.i576.i.i, %bb.xq ]
  %.1.i581.i.i = phi ptr [ %i.hnn, %bb.xr ], [ %.0.i577.i.i, %bb.xq ]
  %i.hnp = icmp sgt i32 %.199.i578.i.i, 0
  br i1 %i.hnp, label %bb.xt, label %.noexc260.i.i

bb.xt:                                            ; preds = %bb.xs
  %i.hnq = load i8, ptr %.179.i580.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.hnr = load i8, ptr %.1.i581.i.i, align 1, !tbaa !72, !noalias !751
  %i.hns = xor i8 %i.hnr, %i.hnq
  %i.hnt = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.hns)
  %i.hnu = zext nneg i8 %i.hnt to i32
  %i.hnv = add nsw i32 %.9.i579.i.i, %i.hnu
  br label %.noexc260.i.i

.noexc260.i.i:                                    ; preds = %bb.xt, %bb.xs, %bb.xn
  %.11.i582.i.i = phi i32 [ %.090.i570.i.i, %bb.xn ], [ %i.hnv, %bb.xt ], [ %.9.i579.i.i, %bb.xs ] ; 4 uses
  %i.hnw = icmp slt i32 %.11.i582.i.i, %.sroa.4632.0236.i.i
  br i1 %i.hnw, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i.i.i740, label %bb.xv

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i.i.i740: ; preds = %.noexc260.i.i
  %.pre.i.1.i.i.i741 = load i32, ptr %.phi.trans.insert.i.1.i.i.i727, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 3 uses
  %i.hnx = icmp sgt i32 %.11.i582.i.i, %.pre.i.1.i.i.i741
  br i1 %i.hnx, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i.i.i743, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i.i.i742

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i.i.i742: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i.i.i740
  %i.hny = load i64, ptr %i.heu, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 2 uses
  %i.hnz = icmp eq i32 %.11.i582.i.i, %.pre.i.1.i.i.i741
  %i.hoa = icmp sgt i64 %i.hfi, %i.hny
  %i.hob = and i1 %i.hnz, %i.hoa
  br i1 %i.hob, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i.i.i743, label %bb.xu

bb.xu:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i.i.i742
  store i32 %.pre.i.1.i.i.i741, ptr %i.hdp, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  store i64 %i.hny, ptr %i.hdq, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  br label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i.i.i743

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i.i.i743: ; preds = %bb.xu, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i.i.i742, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i.i.i740
  %.0.lcssa.i.1.i.i.i744 = phi i64 [ 2, %bb.xu ], [ 1, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i.i.i742 ], [ 1, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i.i.i740 ] ; 2 uses
  %i.hoc = getelementptr inbounds nuw [4 x i8], ptr %i.hes, i64 %.0.lcssa.i.1.i.i.i744
  store i32 %.11.i582.i.i, ptr %i.hoc, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.hod = getelementptr inbounds nuw [8 x i8], ptr %i.het, i64 %.0.lcssa.i.1.i.i.i744
  store i64 %i.hfi, ptr %i.hod, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.hoe = load i32, ptr %i.hdp, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %bb.xv

bb.xv:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i.i.i743, %.noexc260.i.i
  %.sroa.4632.1.i.i = phi i32 [ %i.hoe, %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i.i.i743 ], [ %.sroa.4632.0236.i.i, %.noexc260.i.i ]
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.xy
    i32 6, label %bb.xz
    i32 5, label %bb.ya
    i32 4, label %bb.yb
    i32 3, label %bb.yc
    i32 2, label %bb.yd
    i32 1, label %bb.ye
    i32 0, label %bb.xw
  ]

bb.xw:                                            ; preds = %bb.ye, %bb.xv
  %.090.i534.i.i = phi i32 [ %i.hrh, %bb.ye ], [ %i.giw, %bb.xv ] ; 4 uses
  %.082.i535.i.i = phi i32 [ %i.hri, %bb.ye ], [ %i.giw, %bb.xv ] ; 2 uses
  %.080.i536.i.i = phi i32 [ %.7.i567.i.i, %bb.ye ], [ %i.giu, %bb.xv ] ; 2 uses
  %i.hof = icmp sgt i32 %.080.i536.i.i, 7
  br i1 %i.hof, label %bb.xx, label %bb.yf

bb.xx:                                            ; preds = %bb.xw
  %i.hog = add nsw i32 %.080.i536.i.i, -8
  %i.hoh = sext i32 %.082.i535.i.i to i64         ; 2 uses
  %i.hoi = getelementptr inbounds [8 x i8], ptr %i.hdv, i64 %i.hoh
  %i.hoj = load i64, ptr %i.hoi, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hok = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hoh
  %i.hol = load i64, ptr %i.hok, align 8, !tbaa !90, !noalias !751
  %i.hom = xor i64 %i.hol, %i.hoj
  %i.hon = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hom)
  %i.hoo = trunc nuw nsw i64 %i.hon to i32
  %i.hop = add nsw i32 %.090.i534.i.i, %i.hoo
  %i.hoq = add nsw i32 %.082.i535.i.i, 1
  br label %bb.xy

bb.xy:                                            ; preds = %bb.xx, %bb.xv
  %.191.i547.i.i = phi i32 [ 0, %bb.xv ], [ %i.hop, %bb.xx ]
  %.183.i548.i.i = phi i32 [ 0, %bb.xv ], [ %i.hoq, %bb.xx ] ; 2 uses
  %.181.i549.i.i = phi i32 [ %i.giu, %bb.xv ], [ %i.hog, %bb.xx ]
  %i.hor = sext i32 %.183.i548.i.i to i64         ; 2 uses
  %i.hos = getelementptr inbounds [8 x i8], ptr %i.hdv, i64 %i.hor
  %i.hot = load i64, ptr %i.hos, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hou = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hor
  %i.hov = load i64, ptr %i.hou, align 8, !tbaa !90, !noalias !751
  %i.how = xor i64 %i.hov, %i.hot
  %i.hox = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.how)
  %i.hoy = trunc nuw nsw i64 %i.hox to i32
  %i.hoz = add nsw i32 %.191.i547.i.i, %i.hoy
  %i.hpa = add nsw i32 %.183.i548.i.i, 1
  br label %bb.xz

bb.xz:                                            ; preds = %bb.xy, %bb.xv
  %.292.i550.i.i = phi i32 [ %i.hoz, %bb.xy ], [ 0, %bb.xv ]
  %.284.i551.i.i = phi i32 [ %i.hpa, %bb.xy ], [ 0, %bb.xv ] ; 2 uses
  %.2.i552.i.i = phi i32 [ %.181.i549.i.i, %bb.xy ], [ %i.giu, %bb.xv ]
  %i.hpb = sext i32 %.284.i551.i.i to i64         ; 2 uses
  %i.hpc = getelementptr inbounds [8 x i8], ptr %i.hdv, i64 %i.hpb
  %i.hpd = load i64, ptr %i.hpc, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hpe = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hpb
  %i.hpf = load i64, ptr %i.hpe, align 8, !tbaa !90, !noalias !751
  %i.hpg = xor i64 %i.hpf, %i.hpd
  %i.hph = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hpg)
  %i.hpi = trunc nuw nsw i64 %i.hph to i32
  %i.hpj = add nsw i32 %.292.i550.i.i, %i.hpi
  %i.hpk = add nsw i32 %.284.i551.i.i, 1
  br label %bb.ya

bb.ya:                                            ; preds = %bb.xz, %bb.xv
  %.393.i553.i.i = phi i32 [ %i.hpj, %bb.xz ], [ 0, %bb.xv ]
  %.385.i554.i.i = phi i32 [ %i.hpk, %bb.xz ], [ 0, %bb.xv ] ; 2 uses
  %.3.i555.i.i = phi i32 [ %.2.i552.i.i, %bb.xz ], [ %i.giu, %bb.xv ]
  %i.hpl = sext i32 %.385.i554.i.i to i64         ; 2 uses
  %i.hpm = getelementptr inbounds [8 x i8], ptr %i.hdv, i64 %i.hpl
  %i.hpn = load i64, ptr %i.hpm, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hpo = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hpl
  %i.hpp = load i64, ptr %i.hpo, align 8, !tbaa !90, !noalias !751
  %i.hpq = xor i64 %i.hpp, %i.hpn
  %i.hpr = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hpq)
  %i.hps = trunc nuw nsw i64 %i.hpr to i32
  %i.hpt = add nsw i32 %.393.i553.i.i, %i.hps
  %i.hpu = add nsw i32 %.385.i554.i.i, 1
  br label %bb.yb

bb.yb:                                            ; preds = %bb.ya, %bb.xv
  %.494.i556.i.i = phi i32 [ %i.hpt, %bb.ya ], [ 0, %bb.xv ]
  %.486.i557.i.i = phi i32 [ %i.hpu, %bb.ya ], [ 0, %bb.xv ] ; 2 uses
  %.4.i558.i.i = phi i32 [ %.3.i555.i.i, %bb.ya ], [ %i.giu, %bb.xv ]
  %i.hpv = sext i32 %.486.i557.i.i to i64         ; 2 uses
  %i.hpw = getelementptr inbounds [8 x i8], ptr %i.hdv, i64 %i.hpv
  %i.hpx = load i64, ptr %i.hpw, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hpy = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hpv
  %i.hpz = load i64, ptr %i.hpy, align 8, !tbaa !90, !noalias !751
  %i.hqa = xor i64 %i.hpz, %i.hpx
  %i.hqb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hqa)
  %i.hqc = trunc nuw nsw i64 %i.hqb to i32
  %i.hqd = add nsw i32 %.494.i556.i.i, %i.hqc
  %i.hqe = add nsw i32 %.486.i557.i.i, 1
  br label %bb.yc

bb.yc:                                            ; preds = %bb.yb, %bb.xv
  %.595.i559.i.i = phi i32 [ %i.hqd, %bb.yb ], [ 0, %bb.xv ]
  %.587.i560.i.i = phi i32 [ %i.hqe, %bb.yb ], [ 0, %bb.xv ] ; 2 uses
  %.5.i561.i.i = phi i32 [ %.4.i558.i.i, %bb.yb ], [ %i.giu, %bb.xv ]
  %i.hqf = sext i32 %.587.i560.i.i to i64         ; 2 uses
  %i.hqg = getelementptr inbounds [8 x i8], ptr %i.hdv, i64 %i.hqf
  %i.hqh = load i64, ptr %i.hqg, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hqi = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hqf
  %i.hqj = load i64, ptr %i.hqi, align 8, !tbaa !90, !noalias !751
  %i.hqk = xor i64 %i.hqj, %i.hqh
  %i.hql = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hqk)
  %i.hqm = trunc nuw nsw i64 %i.hql to i32
  %i.hqn = add nsw i32 %.595.i559.i.i, %i.hqm
  %i.hqo = add nsw i32 %.587.i560.i.i, 1
  br label %bb.yd

bb.yd:                                            ; preds = %bb.yc, %bb.xv
  %.696.i562.i.i = phi i32 [ %i.hqn, %bb.yc ], [ 0, %bb.xv ]
  %.688.i563.i.i = phi i32 [ %i.hqo, %bb.yc ], [ 0, %bb.xv ] ; 2 uses
  %.6.i564.i.i = phi i32 [ %.5.i561.i.i, %bb.yc ], [ %i.giu, %bb.xv ]
  %i.hqp = sext i32 %.688.i563.i.i to i64         ; 2 uses
  %i.hqq = getelementptr inbounds [8 x i8], ptr %i.hdv, i64 %i.hqp
  %i.hqr = load i64, ptr %i.hqq, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hqs = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hqp
  %i.hqt = load i64, ptr %i.hqs, align 8, !tbaa !90, !noalias !751
  %i.hqu = xor i64 %i.hqt, %i.hqr
  %i.hqv = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hqu)
  %i.hqw = trunc nuw nsw i64 %i.hqv to i32
  %i.hqx = add nsw i32 %.696.i562.i.i, %i.hqw
  %i.hqy = add nsw i32 %.688.i563.i.i, 1
  br label %bb.ye

bb.ye:                                            ; preds = %bb.yd, %bb.xv
  %.797.i565.i.i = phi i32 [ %i.hqx, %bb.yd ], [ 0, %bb.xv ]
  %.789.i566.i.i = phi i32 [ %i.hqy, %bb.yd ], [ 0, %bb.xv ] ; 2 uses
  %.7.i567.i.i = phi i32 [ %.6.i564.i.i, %bb.yd ], [ %i.giu, %bb.xv ]
  %i.hqz = sext i32 %.789.i566.i.i to i64         ; 2 uses
  %i.hra = getelementptr inbounds [8 x i8], ptr %i.hdv, i64 %i.hqz
  %i.hrb = load i64, ptr %i.hra, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hrc = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hqz
  %i.hrd = load i64, ptr %i.hrc, align 8, !tbaa !90, !noalias !751
  %i.hre = xor i64 %i.hrd, %i.hrb
  %i.hrf = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hre)
  %i.hrg = trunc nuw nsw i64 %i.hrf to i32
  %i.hrh = add nsw i32 %.797.i565.i.i, %i.hrg
  %i.hri = add nsw i32 %.789.i566.i.i, 1
  br label %bb.xw, !llvm.loop !180

bb.yf:                                            ; preds = %bb.xw
  br i1 %.not.i753.i.i, label %.noexc261.i.i, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.hrj = getelementptr inbounds i8, ptr %i.hfg, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.yh, label %bb.yi

bb.yh:                                            ; preds = %bb.yg
  %i.hrk = load i32, ptr %i.hev, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.hrl = load i32, ptr %i.hrj, align 4, !tbaa !73, !noalias !751
  %i.hrm = xor i32 %i.hrl, %i.hrk
  %i.hrn = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hrm)
  %i.hro = add nsw i32 %i.hrn, %.090.i534.i.i
  %i.hrp = getelementptr inbounds nuw i8, ptr %i.hrj, i64 4
  br label %bb.yi

bb.yi:                                            ; preds = %bb.yh, %bb.yg
  %.098.i538.i.i = phi i32 [ %i.gja, %bb.yh ], [ %i.giv, %bb.yg ] ; 3 uses
  %.8.i539.i.i = phi i32 [ %i.hro, %bb.yh ], [ %.090.i534.i.i, %bb.yg ] ; 2 uses
  %.078.i540.i.i = phi ptr [ %i.hew, %bb.yh ], [ %i.hev, %bb.yg ] ; 3 uses
  %.0.i541.i.i = phi ptr [ %i.hrp, %bb.yh ], [ %i.hrj, %bb.yg ] ; 3 uses
  %i.hrq = icmp sgt i32 %.098.i538.i.i, 1
  br i1 %i.hrq, label %bb.yj, label %bb.yk

bb.yj:                                            ; preds = %bb.yi
  %i.hrr = load i16, ptr %.078.i540.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.hrs = load i16, ptr %.0.i541.i.i, align 2, !tbaa !181, !noalias !751
  %i.hrt = xor i16 %i.hrs, %i.hrr
  %i.hru = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.hrt)
  %i.hrv = zext nneg i16 %i.hru to i32
  %i.hrw = add nsw i32 %.8.i539.i.i, %i.hrv
  %i.hrx = getelementptr inbounds nuw i8, ptr %.078.i540.i.i, i64 2
  %i.hry = getelementptr inbounds nuw i8, ptr %.0.i541.i.i, i64 2
  %i.hrz = add nsw i32 %.098.i538.i.i, -2
  br label %bb.yk

bb.yk:                                            ; preds = %bb.yj, %bb.yi
  %.199.i542.i.i = phi i32 [ %i.hrz, %bb.yj ], [ %.098.i538.i.i, %bb.yi ]
  %.9.i543.i.i = phi i32 [ %i.hrw, %bb.yj ], [ %.8.i539.i.i, %bb.yi ] ; 2 uses
  %.179.i544.i.i = phi ptr [ %i.hrx, %bb.yj ], [ %.078.i540.i.i, %bb.yi ]
  %.1.i545.i.i = phi ptr [ %i.hry, %bb.yj ], [ %.0.i541.i.i, %bb.yi ]
  %i.hsa = icmp sgt i32 %.199.i542.i.i, 0
  br i1 %i.hsa, label %bb.yl, label %.noexc261.i.i

bb.yl:                                            ; preds = %bb.yk
  %i.hsb = load i8, ptr %.179.i544.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.hsc = load i8, ptr %.1.i545.i.i, align 1, !tbaa !72, !noalias !751
  %i.hsd = xor i8 %i.hsc, %i.hsb
  %i.hse = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.hsd)
  %i.hsf = zext nneg i8 %i.hse to i32
  %i.hsg = add nsw i32 %.9.i543.i.i, %i.hsf
  br label %.noexc261.i.i

.noexc261.i.i:                                    ; preds = %bb.yl, %bb.yk, %bb.yf
  %.11.i546.i.i = phi i32 [ %.090.i534.i.i, %bb.yf ], [ %i.hsg, %bb.yl ], [ %.9.i543.i.i, %bb.yk ] ; 4 uses
  %i.hsh = icmp slt i32 %.11.i546.i.i, %.sroa.4933.0237.i.i
  br i1 %i.hsh, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i.i.i735, label %bb.yn

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i.i.i735: ; preds = %.noexc261.i.i
  %.pre.i.2.i.i.i736 = load i32, ptr %.phi.trans.insert.i.2.i.i.i728, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 3 uses
  %i.hsi = icmp sgt i32 %.11.i546.i.i, %.pre.i.2.i.i.i736
  br i1 %i.hsi, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i.i.i738, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i.i.i737

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i.i.i737: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i.i.i735
  %i.hsj = load i64, ptr %i.hez, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 2 uses
  %i.hsk = icmp eq i32 %.11.i546.i.i, %.pre.i.2.i.i.i736
  %i.hsl = icmp sgt i64 %i.hfi, %i.hsj
  %i.hsm = and i1 %i.hsk, %i.hsl
  br i1 %i.hsm, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i.i.i738, label %bb.ym

bb.ym:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i.i.i737
  store i32 %.pre.i.2.i.i.i736, ptr %i.hdx, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  store i64 %i.hsj, ptr %i.hdy, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  br label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i.i.i738

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i.i.i738: ; preds = %bb.ym, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i.i.i737, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i.i.i735
  %.0.lcssa.i.2.i.i.i739 = phi i64 [ 2, %bb.ym ], [ 1, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i.i.i737 ], [ 1, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i.i.i735 ] ; 2 uses
  %i.hsn = getelementptr inbounds nuw [4 x i8], ptr %i.hex, i64 %.0.lcssa.i.2.i.i.i739
  store i32 %.11.i546.i.i, ptr %i.hsn, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.hso = getelementptr inbounds nuw [8 x i8], ptr %i.hey, i64 %.0.lcssa.i.2.i.i.i739
  store i64 %i.hfi, ptr %i.hso, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.hsp = load i32, ptr %i.hdx, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %bb.yn

bb.yn:                                            ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i.i.i738, %.noexc261.i.i
  %.sroa.4933.1.i.i = phi i32 [ %i.hsp, %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i.i.i738 ], [ %.sroa.4933.0237.i.i, %.noexc261.i.i ]
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.yq
    i32 6, label %bb.yr
    i32 5, label %bb.ys
    i32 4, label %bb.yt
    i32 3, label %bb.yu
    i32 2, label %bb.yv
    i32 1, label %bb.yw
    i32 0, label %bb.yo
  ]

bb.yo:                                            ; preds = %bb.yw, %bb.yn
  %.090.i498.i.i = phi i32 [ %i.hvs, %bb.yw ], [ %i.giw, %bb.yn ] ; 4 uses
  %.082.i499.i.i = phi i32 [ %i.hvt, %bb.yw ], [ %i.giw, %bb.yn ] ; 2 uses
  %.080.i500.i.i = phi i32 [ %.7.i531.i.i, %bb.yw ], [ %i.giu, %bb.yn ] ; 2 uses
  %i.hsq = icmp sgt i32 %.080.i500.i.i, 7
  br i1 %i.hsq, label %bb.yp, label %bb.yx

bb.yp:                                            ; preds = %bb.yo
  %i.hsr = add nsw i32 %.080.i500.i.i, -8
  %i.hss = sext i32 %.082.i499.i.i to i64         ; 2 uses
  %i.hst = getelementptr inbounds [8 x i8], ptr %i.hed, i64 %i.hss
  %i.hsu = load i64, ptr %i.hst, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hsv = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hss
  %i.hsw = load i64, ptr %i.hsv, align 8, !tbaa !90, !noalias !751
  %i.hsx = xor i64 %i.hsw, %i.hsu
  %i.hsy = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hsx)
  %i.hsz = trunc nuw nsw i64 %i.hsy to i32
  %i.hta = add nsw i32 %.090.i498.i.i, %i.hsz
  %i.htb = add nsw i32 %.082.i499.i.i, 1
  br label %bb.yq

bb.yq:                                            ; preds = %bb.yp, %bb.yn
  %.191.i511.i.i = phi i32 [ 0, %bb.yn ], [ %i.hta, %bb.yp ]
  %.183.i512.i.i = phi i32 [ 0, %bb.yn ], [ %i.htb, %bb.yp ] ; 2 uses
  %.181.i513.i.i = phi i32 [ %i.giu, %bb.yn ], [ %i.hsr, %bb.yp ]
  %i.htc = sext i32 %.183.i512.i.i to i64         ; 2 uses
  %i.htd = getelementptr inbounds [8 x i8], ptr %i.hed, i64 %i.htc
  %i.hte = load i64, ptr %i.htd, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.htf = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.htc
  %i.htg = load i64, ptr %i.htf, align 8, !tbaa !90, !noalias !751
  %i.hth = xor i64 %i.htg, %i.hte
  %i.hti = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hth)
  %i.htj = trunc nuw nsw i64 %i.hti to i32
  %i.htk = add nsw i32 %.191.i511.i.i, %i.htj
  %i.htl = add nsw i32 %.183.i512.i.i, 1
  br label %bb.yr

bb.yr:                                            ; preds = %bb.yq, %bb.yn
  %.292.i514.i.i = phi i32 [ %i.htk, %bb.yq ], [ 0, %bb.yn ]
  %.284.i515.i.i = phi i32 [ %i.htl, %bb.yq ], [ 0, %bb.yn ] ; 2 uses
  %.2.i516.i.i = phi i32 [ %.181.i513.i.i, %bb.yq ], [ %i.giu, %bb.yn ]
  %i.htm = sext i32 %.284.i515.i.i to i64         ; 2 uses
  %i.htn = getelementptr inbounds [8 x i8], ptr %i.hed, i64 %i.htm
  %i.hto = load i64, ptr %i.htn, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.htp = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.htm
  %i.htq = load i64, ptr %i.htp, align 8, !tbaa !90, !noalias !751
  %i.htr = xor i64 %i.htq, %i.hto
  %i.hts = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.htr)
  %i.htt = trunc nuw nsw i64 %i.hts to i32
  %i.htu = add nsw i32 %.292.i514.i.i, %i.htt
  %i.htv = add nsw i32 %.284.i515.i.i, 1
  br label %bb.ys

bb.ys:                                            ; preds = %bb.yr, %bb.yn
  %.393.i517.i.i = phi i32 [ %i.htu, %bb.yr ], [ 0, %bb.yn ]
  %.385.i518.i.i = phi i32 [ %i.htv, %bb.yr ], [ 0, %bb.yn ] ; 2 uses
  %.3.i519.i.i = phi i32 [ %.2.i516.i.i, %bb.yr ], [ %i.giu, %bb.yn ]
  %i.htw = sext i32 %.385.i518.i.i to i64         ; 2 uses
  %i.htx = getelementptr inbounds [8 x i8], ptr %i.hed, i64 %i.htw
  %i.hty = load i64, ptr %i.htx, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.htz = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.htw
  %i.hua = load i64, ptr %i.htz, align 8, !tbaa !90, !noalias !751
  %i.hub = xor i64 %i.hua, %i.hty
  %i.huc = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hub)
  %i.hud = trunc nuw nsw i64 %i.huc to i32
  %i.hue = add nsw i32 %.393.i517.i.i, %i.hud
  %i.huf = add nsw i32 %.385.i518.i.i, 1
  br label %bb.yt

bb.yt:                                            ; preds = %bb.ys, %bb.yn
  %.494.i520.i.i = phi i32 [ %i.hue, %bb.ys ], [ 0, %bb.yn ]
  %.486.i521.i.i = phi i32 [ %i.huf, %bb.ys ], [ 0, %bb.yn ] ; 2 uses
  %.4.i522.i.i = phi i32 [ %.3.i519.i.i, %bb.ys ], [ %i.giu, %bb.yn ]
  %i.hug = sext i32 %.486.i521.i.i to i64         ; 2 uses
  %i.huh = getelementptr inbounds [8 x i8], ptr %i.hed, i64 %i.hug
  %i.hui = load i64, ptr %i.huh, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.huj = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hug
  %i.huk = load i64, ptr %i.huj, align 8, !tbaa !90, !noalias !751
  %i.hul = xor i64 %i.huk, %i.hui
  %i.hum = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hul)
  %i.hun = trunc nuw nsw i64 %i.hum to i32
  %i.huo = add nsw i32 %.494.i520.i.i, %i.hun
  %i.hup = add nsw i32 %.486.i521.i.i, 1
  br label %bb.yu

bb.yu:                                            ; preds = %bb.yt, %bb.yn
  %.595.i523.i.i = phi i32 [ %i.huo, %bb.yt ], [ 0, %bb.yn ]
  %.587.i524.i.i = phi i32 [ %i.hup, %bb.yt ], [ 0, %bb.yn ] ; 2 uses
  %.5.i525.i.i = phi i32 [ %.4.i522.i.i, %bb.yt ], [ %i.giu, %bb.yn ]
  %i.huq = sext i32 %.587.i524.i.i to i64         ; 2 uses
  %i.hur = getelementptr inbounds [8 x i8], ptr %i.hed, i64 %i.huq
  %i.hus = load i64, ptr %i.hur, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hut = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.huq
  %i.huu = load i64, ptr %i.hut, align 8, !tbaa !90, !noalias !751
  %i.huv = xor i64 %i.huu, %i.hus
  %i.huw = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.huv)
  %i.hux = trunc nuw nsw i64 %i.huw to i32
  %i.huy = add nsw i32 %.595.i523.i.i, %i.hux
  %i.huz = add nsw i32 %.587.i524.i.i, 1
  br label %bb.yv

bb.yv:                                            ; preds = %bb.yu, %bb.yn
  %.696.i526.i.i = phi i32 [ %i.huy, %bb.yu ], [ 0, %bb.yn ]
  %.688.i527.i.i = phi i32 [ %i.huz, %bb.yu ], [ 0, %bb.yn ] ; 2 uses
  %.6.i528.i.i = phi i32 [ %.5.i525.i.i, %bb.yu ], [ %i.giu, %bb.yn ]
  %i.hva = sext i32 %.688.i527.i.i to i64         ; 2 uses
  %i.hvb = getelementptr inbounds [8 x i8], ptr %i.hed, i64 %i.hva
  %i.hvc = load i64, ptr %i.hvb, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hvd = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hva
  %i.hve = load i64, ptr %i.hvd, align 8, !tbaa !90, !noalias !751
  %i.hvf = xor i64 %i.hve, %i.hvc
  %i.hvg = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hvf)
  %i.hvh = trunc nuw nsw i64 %i.hvg to i32
  %i.hvi = add nsw i32 %.696.i526.i.i, %i.hvh
  %i.hvj = add nsw i32 %.688.i527.i.i, 1
  br label %bb.yw

bb.yw:                                            ; preds = %bb.yv, %bb.yn
  %.797.i529.i.i = phi i32 [ %i.hvi, %bb.yv ], [ 0, %bb.yn ]
  %.789.i530.i.i = phi i32 [ %i.hvj, %bb.yv ], [ 0, %bb.yn ] ; 2 uses
  %.7.i531.i.i = phi i32 [ %.6.i528.i.i, %bb.yv ], [ %i.giu, %bb.yn ]
  %i.hvk = sext i32 %.789.i530.i.i to i64         ; 2 uses
  %i.hvl = getelementptr inbounds [8 x i8], ptr %i.hed, i64 %i.hvk
  %i.hvm = load i64, ptr %i.hvl, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hvn = getelementptr inbounds [8 x i8], ptr %i.hfg, i64 %i.hvk
  %i.hvo = load i64, ptr %i.hvn, align 8, !tbaa !90, !noalias !751
  %i.hvp = xor i64 %i.hvo, %i.hvm
  %i.hvq = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hvp)
  %i.hvr = trunc nuw nsw i64 %i.hvq to i32
  %i.hvs = add nsw i32 %.797.i529.i.i, %i.hvr
  %i.hvt = add nsw i32 %.789.i530.i.i, 1
  br label %bb.yo, !llvm.loop !180

bb.yx:                                            ; preds = %bb.yo
  br i1 %.not.i753.i.i, label %.noexc262.i.i, label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  %i.hvu = getelementptr inbounds i8, ptr %i.hfg, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.yz, label %bb.za

bb.yz:                                            ; preds = %bb.yy
  %i.hvv = load i32, ptr %i.hfa, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.hvw = load i32, ptr %i.hvu, align 4, !tbaa !73, !noalias !751
  %i.hvx = xor i32 %i.hvw, %i.hvv
  %i.hvy = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hvx)
  %i.hvz = add nsw i32 %i.hvy, %.090.i498.i.i
  %i.hwa = getelementptr inbounds nuw i8, ptr %i.hvu, i64 4
  br label %bb.za

bb.za:                                            ; preds = %bb.yz, %bb.yy
  %.098.i502.i.i = phi i32 [ %i.gja, %bb.yz ], [ %i.giv, %bb.yy ] ; 3 uses
  %.8.i503.i.i = phi i32 [ %i.hvz, %bb.yz ], [ %.090.i498.i.i, %bb.yy ] ; 2 uses
  %.078.i504.i.i = phi ptr [ %i.hfb, %bb.yz ], [ %i.hfa, %bb.yy ] ; 3 uses
  %.0.i505.i.i = phi ptr [ %i.hwa, %bb.yz ], [ %i.hvu, %bb.yy ] ; 3 uses
  %i.hwb = icmp sgt i32 %.098.i502.i.i, 1
  br i1 %i.hwb, label %bb.zb, label %bb.zc

bb.zb:                                            ; preds = %bb.za
  %i.hwc = load i16, ptr %.078.i504.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.hwd = load i16, ptr %.0.i505.i.i, align 2, !tbaa !181, !noalias !751
  %i.hwe = xor i16 %i.hwd, %i.hwc
  %i.hwf = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.hwe)
  %i.hwg = zext nneg i16 %i.hwf to i32
  %i.hwh = add nsw i32 %.8.i503.i.i, %i.hwg
  %i.hwi = getelementptr inbounds nuw i8, ptr %.078.i504.i.i, i64 2
  %i.hwj = getelementptr inbounds nuw i8, ptr %.0.i505.i.i, i64 2
  %i.hwk = add nsw i32 %.098.i502.i.i, -2
  br label %bb.zc

bb.zc:                                            ; preds = %bb.zb, %bb.za
  %.199.i506.i.i = phi i32 [ %i.hwk, %bb.zb ], [ %.098.i502.i.i, %bb.za ]
  %.9.i507.i.i = phi i32 [ %i.hwh, %bb.zb ], [ %.8.i503.i.i, %bb.za ] ; 2 uses
  %.179.i508.i.i = phi ptr [ %i.hwi, %bb.zb ], [ %.078.i504.i.i, %bb.za ]
  %.1.i509.i.i = phi ptr [ %i.hwj, %bb.zb ], [ %.0.i505.i.i, %bb.za ]
  %i.hwl = icmp sgt i32 %.199.i506.i.i, 0
  br i1 %i.hwl, label %bb.zd, label %.noexc262.i.i

bb.zd:                                            ; preds = %bb.zc
  %i.hwm = load i8, ptr %.179.i508.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.hwn = load i8, ptr %.1.i509.i.i, align 1, !tbaa !72, !noalias !751
  %i.hwo = xor i8 %i.hwn, %i.hwm
  %i.hwp = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.hwo)
  %i.hwq = zext nneg i8 %i.hwp to i32
  %i.hwr = add nsw i32 %.9.i507.i.i, %i.hwq
  br label %.noexc262.i.i

.noexc262.i.i:                                    ; preds = %bb.zd, %bb.zc, %bb.yx
  %.11.i510.i.i = phi i32 [ %.090.i498.i.i, %bb.yx ], [ %i.hwr, %bb.zd ], [ %.9.i507.i.i, %bb.zc ] ; 4 uses
  %i.hws = icmp slt i32 %.11.i510.i.i, %.sroa.5234.0238.i.i
  br i1 %i.hws, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i.i.i730, label %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi2EE9add_bcodeEPKhl.exit.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i.i.i730: ; preds = %.noexc262.i.i
  %.pre.i.3.i.i.i731 = load i32, ptr %.phi.trans.insert.i.3.i.i.i729, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 3 uses
  %i.hwt = icmp sgt i32 %.11.i510.i.i, %.pre.i.3.i.i.i731
  br i1 %i.hwt, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i.i.i733, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i.i.i732

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i.i.i732: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i.i.i730
  %i.hwu = load i64, ptr %i.hfe, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 2 uses
  %i.hwv = icmp eq i32 %.11.i510.i.i, %.pre.i.3.i.i.i731
  %i.hww = icmp sgt i64 %i.hfi, %i.hwu
  %i.hwx = and i1 %i.hwv, %i.hww
  br i1 %i.hwx, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i.i.i733, label %bb.ze

bb.ze:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i.i.i732
  store i32 %.pre.i.3.i.i.i731, ptr %i.hef, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  store i64 %i.hwu, ptr %i.heg, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  br label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i.i.i733

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i.i.i733: ; preds = %bb.ze, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i.i.i732, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i.i.i730
  %.0.lcssa.i.3.i.i.i734 = phi i64 [ 2, %bb.ze ], [ 1, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i.i.i732 ], [ 1, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i.i.i730 ] ; 2 uses
  %i.hwy = getelementptr inbounds nuw [4 x i8], ptr %i.hfc, i64 %.0.lcssa.i.3.i.i.i734
  store i32 %.11.i510.i.i, ptr %i.hwy, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.hwz = getelementptr inbounds nuw [8 x i8], ptr %i.hfd, i64 %.0.lcssa.i.3.i.i.i734
  store i64 %i.hfi, ptr %i.hwz, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.hxa = load i32, ptr %i.hef, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi2EE9add_bcodeEPKhl.exit.i.i

_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi2EE9add_bcodeEPKhl.exit.i.i: ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i.i.i733, %.noexc262.i.i
  %.sroa.5234.1.i.i = phi i32 [ %i.hxa, %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i.i.i733 ], [ %.sroa.5234.0238.i.i, %.noexc262.i.i ]
  %i.hxb = add nuw nsw i64 %.0192239.i.i, 1       ; 2 uses
  %exitcond408.not.i.i = icmp eq i64 %i.hxb, %i.gkd
  br i1 %exitcond408.not.i.i, label %.loopexit91.i.i, label %bb.wl, !llvm.loop !789

.loopexit92.i.i:                                  ; preds = %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi4EE9add_bcodeEPKhl.exit.i.i, %bb.zf
  %i.hxc = add nuw nsw i64 %i.hxd, 4              ; 2 uses
  %.not216.i.i673 = icmp sgt i64 %i.hxc, %i.gjo
  br i1 %.not216.i.i673, label %.loopexit94.i.i, label %bb.zf, !llvm.loop !790

bb.zf:                                            ; preds = %.loopexit92.i.i, %.lr.ph234.i.i
  %i.hxd = phi i64 [ 4, %.lr.ph234.i.i ], [ %i.hxc, %.loopexit92.i.i ] ; 3 uses
  %.2196233.i.i = phi i64 [ 0, %.lr.ph234.i.i ], [ %i.hxd, %.loopexit92.i.i ]
  %i.hxe = getelementptr inbounds nuw [4 x i8], ptr %i.gke, i64 %.2196233.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.hxf = load i32, ptr %i.hxe, align 4, !tbaa !73, !alias.scope !791, !noalias !796
  %i.hxg = sext i32 %i.hxf to i64                 ; 2 uses
  %i.hxh = mul nsw i64 %i.hxg, %i.gis
  %i.hxi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hxh ; 9 uses
  %i.hxj = shl nsw i64 %i.hxg, 2                  ; 2 uses
  %i.hxk = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.hxj ; 5 uses
  %i.hxl = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hxj ; 2 uses
  %i.hxm = getelementptr inbounds nuw i8, ptr %i.hxe, i64 4
  %i.hxn = load i32, ptr %i.hxm, align 4, !tbaa !73, !alias.scope !791, !noalias !796
  %i.hxo = sext i32 %i.hxn to i64                 ; 2 uses
  %i.hxp = mul nsw i64 %i.hxo, %i.gis
  %i.hxq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hxp ; 9 uses
  %i.hxr = shl nsw i64 %i.hxo, 2                  ; 2 uses
  %i.hxs = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.hxr ; 5 uses
  %i.hxt = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hxr ; 2 uses
  %i.hxu = getelementptr inbounds nuw i8, ptr %i.hxe, i64 8
  %i.hxv = load i32, ptr %i.hxu, align 4, !tbaa !73, !alias.scope !791, !noalias !796
  %i.hxw = sext i32 %i.hxv to i64                 ; 2 uses
  %i.hxx = mul nsw i64 %i.hxw, %i.gis
  %i.hxy = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hxx ; 9 uses
  %i.hxz = shl nsw i64 %i.hxw, 2                  ; 2 uses
  %i.hya = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.hxz ; 5 uses
  %i.hyb = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hxz ; 2 uses
  %i.hyc = getelementptr inbounds nuw i8, ptr %i.hxe, i64 12
  %i.hyd = load i32, ptr %i.hyc, align 4, !tbaa !73, !alias.scope !791, !noalias !796
  %i.hye = sext i32 %i.hyd to i64                 ; 2 uses
  %i.hyf = mul nsw i64 %i.hye, %i.gis
  %i.hyg = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hyf ; 9 uses
  %i.hyh = shl nsw i64 %i.hye, 2                  ; 2 uses
  %i.hyi = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.hyh ; 5 uses
  %i.hyj = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hyh ; 2 uses
  br i1 %i.gkf, label %.lr.ph231.i.i, label %.loopexit92.i.i

.lr.ph231.i.i:                                    ; preds = %bb.zf
  %i.hyk = load i32, ptr %i.hyi, align 4, !tbaa !73, !alias.scope !799, !noalias !800
  %i.hyl = load i32, ptr %i.hya, align 4, !tbaa !73, !alias.scope !799, !noalias !800
  %i.hym = load i32, ptr %i.hxs, align 4, !tbaa !73, !alias.scope !799, !noalias !800
  %i.hyn = load i32, ptr %i.hxk, align 4, !tbaa !73, !alias.scope !799, !noalias !800
  %i.hyo = getelementptr inbounds i8, ptr %i.hxi, i64 %i.giy ; 3 uses
  %i.hyp = getelementptr inbounds nuw i8, ptr %i.hyo, i64 4
  %i.hyq = getelementptr inbounds i8, ptr %i.hxk, i64 -4 ; 3 uses
  %i.hyr = getelementptr inbounds i8, ptr %i.hxl, i64 -8 ; 4 uses
  %.phi.trans.insert.i.i292.i.i = getelementptr inbounds nuw i8, ptr %i.hxk, i64 12
  %i.hys = getelementptr inbounds i8, ptr %i.hxq, i64 %i.giy ; 3 uses
  %i.hyt = getelementptr inbounds nuw i8, ptr %i.hys, i64 4
  %i.hyu = getelementptr inbounds i8, ptr %i.hxs, i64 -4 ; 3 uses
  %i.hyv = getelementptr inbounds i8, ptr %i.hxt, i64 -8 ; 4 uses
  %.phi.trans.insert.i.1.i286.i.i = getelementptr inbounds nuw i8, ptr %i.hxs, i64 12
  %i.hyw = getelementptr inbounds i8, ptr %i.hxy, i64 %i.giy ; 3 uses
  %i.hyx = getelementptr inbounds nuw i8, ptr %i.hyw, i64 4
  %i.hyy = getelementptr inbounds i8, ptr %i.hya, i64 -4 ; 3 uses
  %i.hyz = getelementptr inbounds i8, ptr %i.hyb, i64 -8 ; 4 uses
  %.phi.trans.insert.i.2.i280.i.i = getelementptr inbounds nuw i8, ptr %i.hya, i64 12
  %i.hza = getelementptr inbounds i8, ptr %i.hyg, i64 %i.giy ; 3 uses
  %i.hzb = getelementptr inbounds nuw i8, ptr %i.hza, i64 4
  %i.hzc = getelementptr inbounds i8, ptr %i.hyi, i64 -4 ; 3 uses
  %i.hzd = getelementptr inbounds i8, ptr %i.hyj, i64 -8 ; 4 uses
  %.phi.trans.insert.i.3.i274.i.i = getelementptr inbounds nuw i8, ptr %i.hyi, i64 12
  br label %bb.zg

bb.zg:                                            ; preds = %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi4EE9add_bcodeEPKhl.exit.i.i, %.lr.ph231.i.i
  %.0191229.i.i = phi i64 [ 0, %.lr.ph231.i.i ], [ %i.iva, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi4EE9add_bcodeEPKhl.exit.i.i ] ; 3 uses
  %.sroa.52.0228.i.i = phi i32 [ %i.hyk, %.lr.ph231.i.i ], [ %.sroa.52.1.i.i, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi4EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %.sroa.49.0227.i.i = phi i32 [ %i.hyl, %.lr.ph231.i.i ], [ %.sroa.49.1.i.i692, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi4EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %.sroa.4610.0226.i.i = phi i32 [ %i.hym, %.lr.ph231.i.i ], [ %.sroa.4610.1.i.i, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi4EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %.sroa.43.0225.i.i = phi i32 [ %i.hyn, %.lr.ph231.i.i ], [ %.sroa.43.1.i.i691, %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi4EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %i.hze = mul i64 %.0191229.i.i, %i.gis
  %i.hzf = getelementptr inbounds nuw i8, ptr %i.gjt, i64 %i.hze ; 36 uses
  %i.hzg = getelementptr inbounds nuw [8 x i8], ptr %i.gjy, i64 %.0191229.i.i
  %i.hzh = load i64, ptr %i.hzg, align 8, !tbaa !90, !noalias !751 ; 12 uses
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.zj
    i32 6, label %bb.zk
    i32 5, label %bb.zl
    i32 4, label %bb.zm
    i32 3, label %bb.zn
    i32 2, label %bb.zo
    i32 1, label %bb.zp
    i32 0, label %bb.zh
  ]

bb.zh:                                            ; preds = %bb.zg, %bb.zp
  %.090.i750.i.i = phi i32 [ %i.ick, %bb.zp ], [ %i.giw, %bb.zg ] ; 4 uses
  %.082.i751.i.i = phi i32 [ %i.icl, %bb.zp ], [ %i.giw, %bb.zg ] ; 2 uses
  %.080.i752.i.i = phi i32 [ %.7.i783.i.i, %bb.zp ], [ %i.giu, %bb.zg ] ; 2 uses
  %i.hzi = icmp sgt i32 %.080.i752.i.i, 7
  br i1 %i.hzi, label %bb.zi, label %bb.zq

bb.zi:                                            ; preds = %bb.zh
  %i.hzj = add nsw i32 %.080.i752.i.i, -8
  %i.hzk = sext i32 %.082.i751.i.i to i64         ; 2 uses
  %i.hzl = getelementptr inbounds [8 x i8], ptr %i.hxi, i64 %i.hzk
  %i.hzm = load i64, ptr %i.hzl, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hzn = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.hzk
  %i.hzo = load i64, ptr %i.hzn, align 8, !tbaa !90, !noalias !751
  %i.hzp = xor i64 %i.hzo, %i.hzm
  %i.hzq = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hzp)
  %i.hzr = trunc nuw nsw i64 %i.hzq to i32
  %i.hzs = add nsw i32 %.090.i750.i.i, %i.hzr
  %i.hzt = add nsw i32 %.082.i751.i.i, 1
  br label %bb.zj

bb.zj:                                            ; preds = %bb.zi, %bb.zg
  %.191.i763.i.i = phi i32 [ 0, %bb.zg ], [ %i.hzs, %bb.zi ]
  %.183.i764.i.i = phi i32 [ 0, %bb.zg ], [ %i.hzt, %bb.zi ] ; 2 uses
  %.181.i765.i.i = phi i32 [ %i.giu, %bb.zg ], [ %i.hzj, %bb.zi ]
  %i.hzu = sext i32 %.183.i764.i.i to i64         ; 2 uses
  %i.hzv = getelementptr inbounds [8 x i8], ptr %i.hxi, i64 %i.hzu
  %i.hzw = load i64, ptr %i.hzv, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.hzx = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.hzu
  %i.hzy = load i64, ptr %i.hzx, align 8, !tbaa !90, !noalias !751
  %i.hzz = xor i64 %i.hzy, %i.hzw
  %i.iaa = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hzz)
  %i.iab = trunc nuw nsw i64 %i.iaa to i32
  %i.iac = add nsw i32 %.191.i763.i.i, %i.iab
  %i.iad = add nsw i32 %.183.i764.i.i, 1
  br label %bb.zk

bb.zk:                                            ; preds = %bb.zj, %bb.zg
  %.292.i766.i.i = phi i32 [ %i.iac, %bb.zj ], [ 0, %bb.zg ]
  %.284.i767.i.i = phi i32 [ %i.iad, %bb.zj ], [ 0, %bb.zg ] ; 2 uses
  %.2.i768.i.i = phi i32 [ %.181.i765.i.i, %bb.zj ], [ %i.giu, %bb.zg ]
  %i.iae = sext i32 %.284.i767.i.i to i64         ; 2 uses
  %i.iaf = getelementptr inbounds [8 x i8], ptr %i.hxi, i64 %i.iae
  %i.iag = load i64, ptr %i.iaf, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.iah = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.iae
  %i.iai = load i64, ptr %i.iah, align 8, !tbaa !90, !noalias !751
  %i.iaj = xor i64 %i.iai, %i.iag
  %i.iak = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.iaj)
  %i.ial = trunc nuw nsw i64 %i.iak to i32
  %i.iam = add nsw i32 %.292.i766.i.i, %i.ial
  %i.ian = add nsw i32 %.284.i767.i.i, 1
  br label %bb.zl

bb.zl:                                            ; preds = %bb.zk, %bb.zg
  %.393.i769.i.i = phi i32 [ %i.iam, %bb.zk ], [ 0, %bb.zg ]
  %.385.i770.i.i = phi i32 [ %i.ian, %bb.zk ], [ 0, %bb.zg ] ; 2 uses
  %.3.i771.i.i = phi i32 [ %.2.i768.i.i, %bb.zk ], [ %i.giu, %bb.zg ]
  %i.iao = sext i32 %.385.i770.i.i to i64         ; 2 uses
  %i.iap = getelementptr inbounds [8 x i8], ptr %i.hxi, i64 %i.iao
  %i.iaq = load i64, ptr %i.iap, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.iar = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.iao
  %i.ias = load i64, ptr %i.iar, align 8, !tbaa !90, !noalias !751
  %i.iat = xor i64 %i.ias, %i.iaq
  %i.iau = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.iat)
  %i.iav = trunc nuw nsw i64 %i.iau to i32
  %i.iaw = add nsw i32 %.393.i769.i.i, %i.iav
  %i.iax = add nsw i32 %.385.i770.i.i, 1
  br label %bb.zm

bb.zm:                                            ; preds = %bb.zl, %bb.zg
  %.494.i772.i.i = phi i32 [ %i.iaw, %bb.zl ], [ 0, %bb.zg ]
  %.486.i773.i.i = phi i32 [ %i.iax, %bb.zl ], [ 0, %bb.zg ] ; 2 uses
  %.4.i774.i.i = phi i32 [ %.3.i771.i.i, %bb.zl ], [ %i.giu, %bb.zg ]
  %i.iay = sext i32 %.486.i773.i.i to i64         ; 2 uses
  %i.iaz = getelementptr inbounds [8 x i8], ptr %i.hxi, i64 %i.iay
  %i.iba = load i64, ptr %i.iaz, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ibb = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.iay
  %i.ibc = load i64, ptr %i.ibb, align 8, !tbaa !90, !noalias !751
  %i.ibd = xor i64 %i.ibc, %i.iba
  %i.ibe = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ibd)
  %i.ibf = trunc nuw nsw i64 %i.ibe to i32
  %i.ibg = add nsw i32 %.494.i772.i.i, %i.ibf
  %i.ibh = add nsw i32 %.486.i773.i.i, 1
  br label %bb.zn

bb.zn:                                            ; preds = %bb.zm, %bb.zg
  %.595.i775.i.i = phi i32 [ %i.ibg, %bb.zm ], [ 0, %bb.zg ]
  %.587.i776.i.i = phi i32 [ %i.ibh, %bb.zm ], [ 0, %bb.zg ] ; 2 uses
  %.5.i777.i.i = phi i32 [ %.4.i774.i.i, %bb.zm ], [ %i.giu, %bb.zg ]
  %i.ibi = sext i32 %.587.i776.i.i to i64         ; 2 uses
  %i.ibj = getelementptr inbounds [8 x i8], ptr %i.hxi, i64 %i.ibi
  %i.ibk = load i64, ptr %i.ibj, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ibl = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.ibi
  %i.ibm = load i64, ptr %i.ibl, align 8, !tbaa !90, !noalias !751
  %i.ibn = xor i64 %i.ibm, %i.ibk
  %i.ibo = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ibn)
  %i.ibp = trunc nuw nsw i64 %i.ibo to i32
  %i.ibq = add nsw i32 %.595.i775.i.i, %i.ibp
  %i.ibr = add nsw i32 %.587.i776.i.i, 1
  br label %bb.zo

bb.zo:                                            ; preds = %bb.zn, %bb.zg
  %.696.i778.i.i = phi i32 [ %i.ibq, %bb.zn ], [ 0, %bb.zg ]
  %.688.i779.i.i = phi i32 [ %i.ibr, %bb.zn ], [ 0, %bb.zg ] ; 2 uses
  %.6.i780.i.i = phi i32 [ %.5.i777.i.i, %bb.zn ], [ %i.giu, %bb.zg ]
  %i.ibs = sext i32 %.688.i779.i.i to i64         ; 2 uses
  %i.ibt = getelementptr inbounds [8 x i8], ptr %i.hxi, i64 %i.ibs
  %i.ibu = load i64, ptr %i.ibt, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ibv = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.ibs
  %i.ibw = load i64, ptr %i.ibv, align 8, !tbaa !90, !noalias !751
  %i.ibx = xor i64 %i.ibw, %i.ibu
  %i.iby = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ibx)
  %i.ibz = trunc nuw nsw i64 %i.iby to i32
  %i.ica = add nsw i32 %.696.i778.i.i, %i.ibz
  %i.icb = add nsw i32 %.688.i779.i.i, 1
  br label %bb.zp

bb.zp:                                            ; preds = %bb.zo, %bb.zg
  %.797.i781.i.i = phi i32 [ %i.ica, %bb.zo ], [ 0, %bb.zg ]
  %.789.i782.i.i = phi i32 [ %i.icb, %bb.zo ], [ 0, %bb.zg ] ; 2 uses
  %.7.i783.i.i = phi i32 [ %.6.i780.i.i, %bb.zo ], [ %i.giu, %bb.zg ]
  %i.icc = sext i32 %.789.i782.i.i to i64         ; 2 uses
  %i.icd = getelementptr inbounds [8 x i8], ptr %i.hxi, i64 %i.icc
  %i.ice = load i64, ptr %i.icd, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.icf = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.icc
  %i.icg = load i64, ptr %i.icf, align 8, !tbaa !90, !noalias !751
  %i.ich = xor i64 %i.icg, %i.ice
  %i.ici = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ich)
  %i.icj = trunc nuw nsw i64 %i.ici to i32
  %i.ick = add nsw i32 %.797.i781.i.i, %i.icj
  %i.icl = add nsw i32 %.789.i782.i.i, 1
  br label %bb.zh, !llvm.loop !180

bb.zq:                                            ; preds = %bb.zh
  br i1 %.not.i753.i.i, label %.noexc298.i.i, label %bb.zr

bb.zr:                                            ; preds = %bb.zq
  %i.icm = getelementptr inbounds i8, ptr %i.hzf, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.zs, label %bb.zt

bb.zs:                                            ; preds = %bb.zr
  %i.icn = load i32, ptr %i.hyo, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.ico = load i32, ptr %i.icm, align 4, !tbaa !73, !noalias !751
  %i.icp = xor i32 %i.ico, %i.icn
  %i.icq = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.icp)
  %i.icr = add nsw i32 %i.icq, %.090.i750.i.i
  %i.ics = getelementptr inbounds nuw i8, ptr %i.icm, i64 4
  br label %bb.zt

bb.zt:                                            ; preds = %bb.zs, %bb.zr
  %.098.i754.i.i = phi i32 [ %i.gja, %bb.zs ], [ %i.giv, %bb.zr ] ; 3 uses
  %.8.i755.i.i = phi i32 [ %i.icr, %bb.zs ], [ %.090.i750.i.i, %bb.zr ] ; 2 uses
  %.078.i756.i.i = phi ptr [ %i.hyp, %bb.zs ], [ %i.hyo, %bb.zr ] ; 3 uses
  %.0.i757.i.i = phi ptr [ %i.ics, %bb.zs ], [ %i.icm, %bb.zr ] ; 3 uses
  %i.ict = icmp sgt i32 %.098.i754.i.i, 1
  br i1 %i.ict, label %bb.zu, label %bb.zv

bb.zu:                                            ; preds = %bb.zt
  %i.icu = load i16, ptr %.078.i756.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.icv = load i16, ptr %.0.i757.i.i, align 2, !tbaa !181, !noalias !751
  %i.icw = xor i16 %i.icv, %i.icu
  %i.icx = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.icw)
  %i.icy = zext nneg i16 %i.icx to i32
  %i.icz = add nsw i32 %.8.i755.i.i, %i.icy
  %i.ida = getelementptr inbounds nuw i8, ptr %.078.i756.i.i, i64 2
  %i.idb = getelementptr inbounds nuw i8, ptr %.0.i757.i.i, i64 2
  %i.idc = add nsw i32 %.098.i754.i.i, -2
  br label %bb.zv

bb.zv:                                            ; preds = %bb.zu, %bb.zt
  %.199.i758.i.i = phi i32 [ %i.idc, %bb.zu ], [ %.098.i754.i.i, %bb.zt ]
  %.9.i759.i.i = phi i32 [ %i.icz, %bb.zu ], [ %.8.i755.i.i, %bb.zt ] ; 2 uses
  %.179.i760.i.i = phi ptr [ %i.ida, %bb.zu ], [ %.078.i756.i.i, %bb.zt ]
  %.1.i761.i.i = phi ptr [ %i.idb, %bb.zu ], [ %.0.i757.i.i, %bb.zt ]
  %i.idd = icmp sgt i32 %.199.i758.i.i, 0
  br i1 %i.idd, label %bb.zw, label %.noexc298.i.i

bb.zw:                                            ; preds = %bb.zv
  %i.ide = load i8, ptr %.179.i760.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.idf = load i8, ptr %.1.i761.i.i, align 1, !tbaa !72, !noalias !751
  %i.idg = xor i8 %i.idf, %i.ide
  %i.idh = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.idg)
  %i.idi = zext nneg i8 %i.idh to i32
  %i.idj = add nsw i32 %.9.i759.i.i, %i.idi
  br label %.noexc298.i.i

.noexc298.i.i:                                    ; preds = %bb.zw, %bb.zv, %bb.zq
  %.11.i762.i.i = phi i32 [ %.090.i750.i.i, %bb.zq ], [ %i.idj, %bb.zw ], [ %.9.i759.i.i, %bb.zv ] ; 6 uses
  %i.idk = icmp slt i32 %.11.i762.i.i, %.sroa.43.0225.i.i
  br i1 %i.idk, label %.lr.ph.i.i.i.i717, label %bb.aaa

.lr.ph.i.i.i.i717:                                ; preds = %.noexc298.i.i, %bb.zz
  %i.idl = phi i64 [ %i.ieo, %bb.zz ], [ 3, %.noexc298.i.i ]
  %i.idm = phi i64 [ %i.ien, %bb.zz ], [ 2, %.noexc298.i.i ] ; 7 uses
  %.056.i.i.i.i718 = phi i64 [ %.1.i.i.i.i723, %bb.zz ], [ 1, %.noexc298.i.i ] ; 6 uses
  %i.idn = icmp eq i64 %i.idm, 4
  br i1 %i.idn, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i724, label %bb.zx

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i724: ; preds = %.lr.ph.i.i.i.i717
  %.pre.i.i297.i.i = load i32, ptr %.phi.trans.insert.i.i292.i.i, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i295.i.i

bb.zx:                                            ; preds = %.lr.ph.i.i.i.i717
  %i.ido = getelementptr inbounds nuw [4 x i8], ptr %i.hyq, i64 %i.idm
  %i.idp = load i32, ptr %i.ido, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 4 uses
  %i.idq = getelementptr [4 x i8], ptr %i.hxk, i64 %i.idm
  %i.idr = load i32, ptr %i.idq, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 5 uses
  %i.ids = getelementptr [8 x i8], ptr %i.hxl, i64 %i.idm
  %i.idt = load i64, ptr %i.ids, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 3 uses
  %i.idu = icmp sgt i32 %i.idp, %i.idr
  br i1 %i.idu, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i295.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i719

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i719:     ; preds = %bb.zx
  %i.idv = getelementptr inbounds nuw [8 x i8], ptr %i.hyr, i64 %i.idm
  %i.idw = load i64, ptr %i.idv, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.idx = icmp eq i32 %i.idp, %i.idr
  %i.idy = icmp sgt i64 %i.idw, %i.idt
  %i.idz = and i1 %i.idx, %i.idy
  br i1 %i.idz, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i295.i.i, label %bb.zy

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i295.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i719, %bb.zx, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i724
  %i.iea = phi i32 [ %.pre.i.i297.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i.i.i724 ], [ %i.idp, %bb.zx ], [ %i.idp, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i719 ] ; 3 uses
  %i.ieb = icmp sgt i32 %.11.i762.i.i, %i.iea
  br i1 %i.ieb, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i293.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i296.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i296.i.i:   ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i295.i.i
  %i.iec = getelementptr inbounds nuw [8 x i8], ptr %i.hyr, i64 %i.idm
  %i.ied = load i64, ptr %i.iec, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 2 uses
  %i.iee = icmp eq i32 %.11.i762.i.i, %i.iea
  %i.ief = icmp sgt i64 %i.hzh, %i.ied
  %i.ieg = and i1 %i.iee, %i.ief
  br i1 %i.ieg, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i293.i.i, label %bb.zz

bb.zy:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i.i.i719
  %i.ieh = icmp sgt i32 %.11.i762.i.i, %i.idr
  br i1 %i.ieh, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i293.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i720

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i720:   ; preds = %bb.zy
  %i.iei = icmp eq i32 %.11.i762.i.i, %i.idr
  %i.iej = icmp sgt i64 %i.hzh, %i.idt
  %i.iek = and i1 %i.iei, %i.iej
  br i1 %i.iek, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i293.i.i, label %bb.zz

bb.zz:                                            ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i720, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i296.i.i
  %.sink71.i.i.i.i721 = phi i32 [ %i.iea, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i296.i.i ], [ %i.idr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i720 ]
  %.sink.i.i.i.i722 = phi i64 [ %i.ied, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i296.i.i ], [ %i.idt, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i720 ]
  %.1.i.i.i.i723 = phi i64 [ %i.idm, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i296.i.i ], [ %i.idl, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i720 ] ; 4 uses
  %i.iel = getelementptr inbounds nuw [4 x i8], ptr %i.hyq, i64 %.056.i.i.i.i718
  store i32 %.sink71.i.i.i.i721, ptr %i.iel, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.iem = getelementptr inbounds nuw [8 x i8], ptr %i.hyr, i64 %.056.i.i.i.i718
  store i64 %.sink.i.i.i.i722, ptr %i.iem, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.ien = shl nuw nsw i64 %.1.i.i.i.i723, 1      ; 2 uses
  %i.ieo = or disjoint i64 %i.ien, 1
  %i.iep = icmp ugt i64 %.1.i.i.i.i723, 2
  br i1 %i.iep, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i293.i.i, label %.lr.ph.i.i.i.i717, !llvm.loop !114

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i293.i.i: ; preds = %bb.zz, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i720, %bb.zy, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i296.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i295.i.i
  %.0.lcssa.i.i294.i.i = phi i64 [ %.1.i.i.i.i723, %bb.zz ], [ %.056.i.i.i.i718, %bb.zy ], [ %.056.i.i.i.i718, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i295.i.i ], [ %.056.i.i.i.i718, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i.i.i720 ], [ %.056.i.i.i.i718, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i296.i.i ] ; 2 uses
  %i.ieq = getelementptr inbounds nuw [4 x i8], ptr %i.hyq, i64 %.0.lcssa.i.i294.i.i
  store i32 %.11.i762.i.i, ptr %i.ieq, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.ier = getelementptr inbounds nuw [8 x i8], ptr %i.hyr, i64 %.0.lcssa.i.i294.i.i
  store i64 %i.hzh, ptr %i.ier, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.ies = load i32, ptr %i.hxk, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %bb.aaa

bb.aaa:                                           ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i293.i.i, %.noexc298.i.i
  %.sroa.43.1.i.i691 = phi i32 [ %i.ies, %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i293.i.i ], [ %.sroa.43.0225.i.i, %.noexc298.i.i ]
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.aad
    i32 6, label %bb.aae
    i32 5, label %bb.aaf
    i32 4, label %bb.aag
    i32 3, label %bb.aah
    i32 2, label %bb.aai
    i32 1, label %bb.aaj
    i32 0, label %bb.aab
  ]

bb.aab:                                           ; preds = %bb.aaj, %bb.aaa
  %.090.i714.i.i = phi i32 [ %i.ihv, %bb.aaj ], [ %i.giw, %bb.aaa ] ; 4 uses
  %.082.i715.i.i = phi i32 [ %i.ihw, %bb.aaj ], [ %i.giw, %bb.aaa ] ; 2 uses
  %.080.i716.i.i = phi i32 [ %.7.i747.i.i, %bb.aaj ], [ %i.giu, %bb.aaa ] ; 2 uses
  %i.iet = icmp sgt i32 %.080.i716.i.i, 7
  br i1 %i.iet, label %bb.aac, label %bb.aak

bb.aac:                                           ; preds = %bb.aab
  %i.ieu = add nsw i32 %.080.i716.i.i, -8
  %i.iev = sext i32 %.082.i715.i.i to i64         ; 2 uses
  %i.iew = getelementptr inbounds [8 x i8], ptr %i.hxq, i64 %i.iev
  %i.iex = load i64, ptr %i.iew, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.iey = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.iev
  %i.iez = load i64, ptr %i.iey, align 8, !tbaa !90, !noalias !751
  %i.ifa = xor i64 %i.iez, %i.iex
  %i.ifb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ifa)
  %i.ifc = trunc nuw nsw i64 %i.ifb to i32
  %i.ifd = add nsw i32 %.090.i714.i.i, %i.ifc
  %i.ife = add nsw i32 %.082.i715.i.i, 1
  br label %bb.aad

bb.aad:                                           ; preds = %bb.aac, %bb.aaa
  %.191.i727.i.i = phi i32 [ 0, %bb.aaa ], [ %i.ifd, %bb.aac ]
  %.183.i728.i.i = phi i32 [ 0, %bb.aaa ], [ %i.ife, %bb.aac ] ; 2 uses
  %.181.i729.i.i = phi i32 [ %i.giu, %bb.aaa ], [ %i.ieu, %bb.aac ]
  %i.iff = sext i32 %.183.i728.i.i to i64         ; 2 uses
  %i.ifg = getelementptr inbounds [8 x i8], ptr %i.hxq, i64 %i.iff
  %i.ifh = load i64, ptr %i.ifg, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ifi = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.iff
  %i.ifj = load i64, ptr %i.ifi, align 8, !tbaa !90, !noalias !751
  %i.ifk = xor i64 %i.ifj, %i.ifh
  %i.ifl = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ifk)
  %i.ifm = trunc nuw nsw i64 %i.ifl to i32
  %i.ifn = add nsw i32 %.191.i727.i.i, %i.ifm
  %i.ifo = add nsw i32 %.183.i728.i.i, 1
  br label %bb.aae

bb.aae:                                           ; preds = %bb.aad, %bb.aaa
  %.292.i730.i.i = phi i32 [ %i.ifn, %bb.aad ], [ 0, %bb.aaa ]
  %.284.i731.i.i = phi i32 [ %i.ifo, %bb.aad ], [ 0, %bb.aaa ] ; 2 uses
  %.2.i732.i.i = phi i32 [ %.181.i729.i.i, %bb.aad ], [ %i.giu, %bb.aaa ]
  %i.ifp = sext i32 %.284.i731.i.i to i64         ; 2 uses
  %i.ifq = getelementptr inbounds [8 x i8], ptr %i.hxq, i64 %i.ifp
  %i.ifr = load i64, ptr %i.ifq, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ifs = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.ifp
  %i.ift = load i64, ptr %i.ifs, align 8, !tbaa !90, !noalias !751
  %i.ifu = xor i64 %i.ift, %i.ifr
  %i.ifv = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ifu)
  %i.ifw = trunc nuw nsw i64 %i.ifv to i32
  %i.ifx = add nsw i32 %.292.i730.i.i, %i.ifw
  %i.ify = add nsw i32 %.284.i731.i.i, 1
  br label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae, %bb.aaa
  %.393.i733.i.i = phi i32 [ %i.ifx, %bb.aae ], [ 0, %bb.aaa ]
  %.385.i734.i.i = phi i32 [ %i.ify, %bb.aae ], [ 0, %bb.aaa ] ; 2 uses
  %.3.i735.i.i = phi i32 [ %.2.i732.i.i, %bb.aae ], [ %i.giu, %bb.aaa ]
  %i.ifz = sext i32 %.385.i734.i.i to i64         ; 2 uses
  %i.iga = getelementptr inbounds [8 x i8], ptr %i.hxq, i64 %i.ifz
  %i.igb = load i64, ptr %i.iga, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.igc = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.ifz
  %i.igd = load i64, ptr %i.igc, align 8, !tbaa !90, !noalias !751
  %i.ige = xor i64 %i.igd, %i.igb
  %i.igf = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ige)
  %i.igg = trunc nuw nsw i64 %i.igf to i32
  %i.igh = add nsw i32 %.393.i733.i.i, %i.igg
  %i.igi = add nsw i32 %.385.i734.i.i, 1
  br label %bb.aag

bb.aag:                                           ; preds = %bb.aaf, %bb.aaa
  %.494.i736.i.i = phi i32 [ %i.igh, %bb.aaf ], [ 0, %bb.aaa ]
  %.486.i737.i.i = phi i32 [ %i.igi, %bb.aaf ], [ 0, %bb.aaa ] ; 2 uses
  %.4.i738.i.i = phi i32 [ %.3.i735.i.i, %bb.aaf ], [ %i.giu, %bb.aaa ]
  %i.igj = sext i32 %.486.i737.i.i to i64         ; 2 uses
  %i.igk = getelementptr inbounds [8 x i8], ptr %i.hxq, i64 %i.igj
  %i.igl = load i64, ptr %i.igk, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.igm = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.igj
  %i.ign = load i64, ptr %i.igm, align 8, !tbaa !90, !noalias !751
  %i.igo = xor i64 %i.ign, %i.igl
  %i.igp = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.igo)
  %i.igq = trunc nuw nsw i64 %i.igp to i32
  %i.igr = add nsw i32 %.494.i736.i.i, %i.igq
  %i.igs = add nsw i32 %.486.i737.i.i, 1
  br label %bb.aah

bb.aah:                                           ; preds = %bb.aag, %bb.aaa
  %.595.i739.i.i = phi i32 [ %i.igr, %bb.aag ], [ 0, %bb.aaa ]
  %.587.i740.i.i = phi i32 [ %i.igs, %bb.aag ], [ 0, %bb.aaa ] ; 2 uses
  %.5.i741.i.i = phi i32 [ %.4.i738.i.i, %bb.aag ], [ %i.giu, %bb.aaa ]
  %i.igt = sext i32 %.587.i740.i.i to i64         ; 2 uses
  %i.igu = getelementptr inbounds [8 x i8], ptr %i.hxq, i64 %i.igt
  %i.igv = load i64, ptr %i.igu, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.igw = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.igt
  %i.igx = load i64, ptr %i.igw, align 8, !tbaa !90, !noalias !751
  %i.igy = xor i64 %i.igx, %i.igv
  %i.igz = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.igy)
  %i.iha = trunc nuw nsw i64 %i.igz to i32
  %i.ihb = add nsw i32 %.595.i739.i.i, %i.iha
  %i.ihc = add nsw i32 %.587.i740.i.i, 1
  br label %bb.aai

bb.aai:                                           ; preds = %bb.aah, %bb.aaa
  %.696.i742.i.i = phi i32 [ %i.ihb, %bb.aah ], [ 0, %bb.aaa ]
  %.688.i743.i.i = phi i32 [ %i.ihc, %bb.aah ], [ 0, %bb.aaa ] ; 2 uses
  %.6.i744.i.i = phi i32 [ %.5.i741.i.i, %bb.aah ], [ %i.giu, %bb.aaa ]
  %i.ihd = sext i32 %.688.i743.i.i to i64         ; 2 uses
  %i.ihe = getelementptr inbounds [8 x i8], ptr %i.hxq, i64 %i.ihd
  %i.ihf = load i64, ptr %i.ihe, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ihg = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.ihd
  %i.ihh = load i64, ptr %i.ihg, align 8, !tbaa !90, !noalias !751
  %i.ihi = xor i64 %i.ihh, %i.ihf
  %i.ihj = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ihi)
  %i.ihk = trunc nuw nsw i64 %i.ihj to i32
  %i.ihl = add nsw i32 %.696.i742.i.i, %i.ihk
  %i.ihm = add nsw i32 %.688.i743.i.i, 1
  br label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai, %bb.aaa
  %.797.i745.i.i = phi i32 [ %i.ihl, %bb.aai ], [ 0, %bb.aaa ]
  %.789.i746.i.i = phi i32 [ %i.ihm, %bb.aai ], [ 0, %bb.aaa ] ; 2 uses
  %.7.i747.i.i = phi i32 [ %.6.i744.i.i, %bb.aai ], [ %i.giu, %bb.aaa ]
  %i.ihn = sext i32 %.789.i746.i.i to i64         ; 2 uses
  %i.iho = getelementptr inbounds [8 x i8], ptr %i.hxq, i64 %i.ihn
  %i.ihp = load i64, ptr %i.iho, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ihq = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.ihn
  %i.ihr = load i64, ptr %i.ihq, align 8, !tbaa !90, !noalias !751
  %i.ihs = xor i64 %i.ihr, %i.ihp
  %i.iht = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ihs)
  %i.ihu = trunc nuw nsw i64 %i.iht to i32
  %i.ihv = add nsw i32 %.797.i745.i.i, %i.ihu
  %i.ihw = add nsw i32 %.789.i746.i.i, 1
  br label %bb.aab, !llvm.loop !180

bb.aak:                                           ; preds = %bb.aab
  br i1 %.not.i753.i.i, label %.noexc299.i.i, label %bb.aal

bb.aal:                                           ; preds = %bb.aak
  %i.ihx = getelementptr inbounds i8, ptr %i.hzf, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.aam, label %bb.aan

bb.aam:                                           ; preds = %bb.aal
  %i.ihy = load i32, ptr %i.hys, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.ihz = load i32, ptr %i.ihx, align 4, !tbaa !73, !noalias !751
  %i.iia = xor i32 %i.ihz, %i.ihy
  %i.iib = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.iia)
  %i.iic = add nsw i32 %i.iib, %.090.i714.i.i
  %i.iid = getelementptr inbounds nuw i8, ptr %i.ihx, i64 4
  br label %bb.aan

bb.aan:                                           ; preds = %bb.aam, %bb.aal
  %.098.i718.i.i = phi i32 [ %i.gja, %bb.aam ], [ %i.giv, %bb.aal ] ; 3 uses
  %.8.i719.i.i = phi i32 [ %i.iic, %bb.aam ], [ %.090.i714.i.i, %bb.aal ] ; 2 uses
  %.078.i720.i.i = phi ptr [ %i.hyt, %bb.aam ], [ %i.hys, %bb.aal ] ; 3 uses
  %.0.i721.i.i = phi ptr [ %i.iid, %bb.aam ], [ %i.ihx, %bb.aal ] ; 3 uses
  %i.iie = icmp sgt i32 %.098.i718.i.i, 1
  br i1 %i.iie, label %bb.aao, label %bb.aap

bb.aao:                                           ; preds = %bb.aan
  %i.iif = load i16, ptr %.078.i720.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.iig = load i16, ptr %.0.i721.i.i, align 2, !tbaa !181, !noalias !751
  %i.iih = xor i16 %i.iig, %i.iif
  %i.iii = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.iih)
  %i.iij = zext nneg i16 %i.iii to i32
  %i.iik = add nsw i32 %.8.i719.i.i, %i.iij
  %i.iil = getelementptr inbounds nuw i8, ptr %.078.i720.i.i, i64 2
  %i.iim = getelementptr inbounds nuw i8, ptr %.0.i721.i.i, i64 2
  %i.iin = add nsw i32 %.098.i718.i.i, -2
  br label %bb.aap

bb.aap:                                           ; preds = %bb.aao, %bb.aan
  %.199.i722.i.i = phi i32 [ %i.iin, %bb.aao ], [ %.098.i718.i.i, %bb.aan ]
  %.9.i723.i.i = phi i32 [ %i.iik, %bb.aao ], [ %.8.i719.i.i, %bb.aan ] ; 2 uses
  %.179.i724.i.i = phi ptr [ %i.iil, %bb.aao ], [ %.078.i720.i.i, %bb.aan ]
  %.1.i725.i.i = phi ptr [ %i.iim, %bb.aao ], [ %.0.i721.i.i, %bb.aan ]
  %i.iio = icmp sgt i32 %.199.i722.i.i, 0
  br i1 %i.iio, label %bb.aaq, label %.noexc299.i.i

bb.aaq:                                           ; preds = %bb.aap
  %i.iip = load i8, ptr %.179.i724.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.iiq = load i8, ptr %.1.i725.i.i, align 1, !tbaa !72, !noalias !751
  %i.iir = xor i8 %i.iiq, %i.iip
  %i.iis = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.iir)
  %i.iit = zext nneg i8 %i.iis to i32
  %i.iiu = add nsw i32 %.9.i723.i.i, %i.iit
  br label %.noexc299.i.i

.noexc299.i.i:                                    ; preds = %bb.aaq, %bb.aap, %bb.aak
  %.11.i726.i.i = phi i32 [ %.090.i714.i.i, %bb.aak ], [ %i.iiu, %bb.aaq ], [ %.9.i723.i.i, %bb.aap ] ; 6 uses
  %i.iiv = icmp slt i32 %.11.i726.i.i, %.sroa.4610.0226.i.i
  br i1 %i.iiv, label %.lr.ph.i.1.i.i.i709, label %bb.aau

.lr.ph.i.1.i.i.i709:                              ; preds = %.noexc299.i.i, %bb.aat
  %i.iiw = phi i64 [ %i.ijz, %bb.aat ], [ 3, %.noexc299.i.i ]
  %i.iix = phi i64 [ %i.ijy, %bb.aat ], [ 2, %.noexc299.i.i ] ; 7 uses
  %.056.i.1.i.i.i710 = phi i64 [ %.1.i.1.i.i.i715, %bb.aat ], [ 1, %.noexc299.i.i ] ; 6 uses
  %i.iiy = icmp eq i64 %i.iix, 4
  br i1 %i.iiy, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.1.i.i.i716, label %bb.aar

bb.aar:                                           ; preds = %.lr.ph.i.1.i.i.i709
  %i.iiz = getelementptr inbounds nuw [4 x i8], ptr %i.hyu, i64 %i.iix
  %i.ija = load i32, ptr %i.iiz, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 4 uses
  %i.ijb = getelementptr [4 x i8], ptr %i.hxs, i64 %i.iix
  %i.ijc = load i32, ptr %i.ijb, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 5 uses
  %i.ijd = getelementptr [8 x i8], ptr %i.hxt, i64 %i.iix
  %i.ije = load i64, ptr %i.ijd, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 3 uses
  %i.ijf = icmp sgt i32 %i.ija, %i.ijc
  br i1 %i.ijf, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i289.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.1.i.i.i711

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.1.i.i.i711:   ; preds = %bb.aar
  %i.ijg = getelementptr inbounds nuw [8 x i8], ptr %i.hyv, i64 %i.iix
  %i.ijh = load i64, ptr %i.ijg, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.iji = icmp eq i32 %i.ija, %i.ijc
  %i.ijj = icmp sgt i64 %i.ijh, %i.ije
  %i.ijk = and i1 %i.iji, %i.ijj
  br i1 %i.ijk, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i289.i.i, label %bb.aas

bb.aas:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.1.i.i.i711
  %i.ijl = icmp sgt i32 %.11.i726.i.i, %i.ijc
  br i1 %i.ijl, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i287.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i.i.i712

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i.i.i712: ; preds = %bb.aas
  %i.ijm = icmp eq i32 %.11.i726.i.i, %i.ijc
  %i.ijn = icmp sgt i64 %i.hzh, %i.ije
  %i.ijo = and i1 %i.ijm, %i.ijn
  br i1 %i.ijo, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i287.i.i, label %bb.aat

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.1.i.i.i716: ; preds = %.lr.ph.i.1.i.i.i709
  %.pre.i.1.i291.i.i = load i32, ptr %.phi.trans.insert.i.1.i286.i.i, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i289.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i289.i.i: ; preds = %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.1.i.i.i716, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.1.i.i.i711, %bb.aar
  %i.ijp = phi i32 [ %.pre.i.1.i291.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.1.i.i.i716 ], [ %i.ija, %bb.aar ], [ %i.ija, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.1.i.i.i711 ] ; 3 uses
  %i.ijq = icmp sgt i32 %.11.i726.i.i, %i.ijp
  br i1 %i.ijq, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i287.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i290.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i290.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i289.i.i
  %i.ijr = getelementptr inbounds nuw [8 x i8], ptr %i.hyv, i64 %i.iix
  %i.ijs = load i64, ptr %i.ijr, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 2 uses
  %i.ijt = icmp eq i32 %.11.i726.i.i, %i.ijp
  %i.iju = icmp sgt i64 %i.hzh, %i.ijs
  %i.ijv = and i1 %i.ijt, %i.iju
  br i1 %i.ijv, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i287.i.i, label %bb.aat

bb.aat:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i290.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i.i.i712
  %.sink71.i.1.i.i.i713 = phi i32 [ %i.ijp, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i290.i.i ], [ %i.ijc, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i.i.i712 ]
  %.sink.i.1.i.i.i714 = phi i64 [ %i.ijs, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i290.i.i ], [ %i.ije, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i.i.i712 ]
  %.1.i.1.i.i.i715 = phi i64 [ %i.iix, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i290.i.i ], [ %i.iiw, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i.i.i712 ] ; 4 uses
  %i.ijw = getelementptr inbounds nuw [4 x i8], ptr %i.hyu, i64 %.056.i.1.i.i.i710
  store i32 %.sink71.i.1.i.i.i713, ptr %i.ijw, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.ijx = getelementptr inbounds nuw [8 x i8], ptr %i.hyv, i64 %.056.i.1.i.i.i710
  store i64 %.sink.i.1.i.i.i714, ptr %i.ijx, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.ijy = shl nuw nsw i64 %.1.i.1.i.i.i715, 1    ; 2 uses
  %i.ijz = or disjoint i64 %i.ijy, 1
  %i.ika = icmp ugt i64 %.1.i.1.i.i.i715, 2
  br i1 %i.ika, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i287.i.i, label %.lr.ph.i.1.i.i.i709, !llvm.loop !114

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i287.i.i: ; preds = %bb.aat, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i290.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i289.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i.i.i712, %bb.aas
  %.0.lcssa.i.1.i288.i.i = phi i64 [ %.1.i.1.i.i.i715, %bb.aat ], [ %.056.i.1.i.i.i710, %bb.aas ], [ %.056.i.1.i.i.i710, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i289.i.i ], [ %.056.i.1.i.i.i710, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i.i.i712 ], [ %.056.i.1.i.i.i710, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i290.i.i ] ; 2 uses
  %i.ikb = getelementptr inbounds nuw [4 x i8], ptr %i.hyu, i64 %.0.lcssa.i.1.i288.i.i
  store i32 %.11.i726.i.i, ptr %i.ikb, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.ikc = getelementptr inbounds nuw [8 x i8], ptr %i.hyv, i64 %.0.lcssa.i.1.i288.i.i
  store i64 %i.hzh, ptr %i.ikc, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.ikd = load i32, ptr %i.hxs, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %bb.aau

bb.aau:                                           ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i287.i.i, %.noexc299.i.i
  %.sroa.4610.1.i.i = phi i32 [ %i.ikd, %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i287.i.i ], [ %.sroa.4610.0226.i.i, %.noexc299.i.i ]
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.aax
    i32 6, label %bb.aay
    i32 5, label %bb.aaz
    i32 4, label %bb.aba
    i32 3, label %bb.abb
    i32 2, label %bb.abc
    i32 1, label %bb.abd
    i32 0, label %bb.aav
  ]

bb.aav:                                           ; preds = %bb.abd, %bb.aau
  %.090.i678.i.i = phi i32 [ %i.ing, %bb.abd ], [ %i.giw, %bb.aau ] ; 4 uses
  %.082.i679.i.i = phi i32 [ %i.inh, %bb.abd ], [ %i.giw, %bb.aau ] ; 2 uses
  %.080.i680.i.i = phi i32 [ %.7.i711.i.i, %bb.abd ], [ %i.giu, %bb.aau ] ; 2 uses
  %i.ike = icmp sgt i32 %.080.i680.i.i, 7
  br i1 %i.ike, label %bb.aaw, label %bb.abe

bb.aaw:                                           ; preds = %bb.aav
  %i.ikf = add nsw i32 %.080.i680.i.i, -8
  %i.ikg = sext i32 %.082.i679.i.i to i64         ; 2 uses
  %i.ikh = getelementptr inbounds [8 x i8], ptr %i.hxy, i64 %i.ikg
  %i.iki = load i64, ptr %i.ikh, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ikj = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.ikg
  %i.ikk = load i64, ptr %i.ikj, align 8, !tbaa !90, !noalias !751
  %i.ikl = xor i64 %i.ikk, %i.iki
  %i.ikm = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ikl)
  %i.ikn = trunc nuw nsw i64 %i.ikm to i32
  %i.iko = add nsw i32 %.090.i678.i.i, %i.ikn
  %i.ikp = add nsw i32 %.082.i679.i.i, 1
  br label %bb.aax

bb.aax:                                           ; preds = %bb.aaw, %bb.aau
  %.191.i691.i.i = phi i32 [ 0, %bb.aau ], [ %i.iko, %bb.aaw ]
  %.183.i692.i.i = phi i32 [ 0, %bb.aau ], [ %i.ikp, %bb.aaw ] ; 2 uses
  %.181.i693.i.i = phi i32 [ %i.giu, %bb.aau ], [ %i.ikf, %bb.aaw ]
  %i.ikq = sext i32 %.183.i692.i.i to i64         ; 2 uses
  %i.ikr = getelementptr inbounds [8 x i8], ptr %i.hxy, i64 %i.ikq
  %i.iks = load i64, ptr %i.ikr, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ikt = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.ikq
  %i.iku = load i64, ptr %i.ikt, align 8, !tbaa !90, !noalias !751
  %i.ikv = xor i64 %i.iku, %i.iks
  %i.ikw = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ikv)
  %i.ikx = trunc nuw nsw i64 %i.ikw to i32
  %i.iky = add nsw i32 %.191.i691.i.i, %i.ikx
  %i.ikz = add nsw i32 %.183.i692.i.i, 1
  br label %bb.aay

bb.aay:                                           ; preds = %bb.aax, %bb.aau
  %.292.i694.i.i = phi i32 [ %i.iky, %bb.aax ], [ 0, %bb.aau ]
  %.284.i695.i.i = phi i32 [ %i.ikz, %bb.aax ], [ 0, %bb.aau ] ; 2 uses
  %.2.i696.i.i = phi i32 [ %.181.i693.i.i, %bb.aax ], [ %i.giu, %bb.aau ]
  %i.ila = sext i32 %.284.i695.i.i to i64         ; 2 uses
  %i.ilb = getelementptr inbounds [8 x i8], ptr %i.hxy, i64 %i.ila
  %i.ilc = load i64, ptr %i.ilb, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ild = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.ila
  %i.ile = load i64, ptr %i.ild, align 8, !tbaa !90, !noalias !751
  %i.ilf = xor i64 %i.ile, %i.ilc
  %i.ilg = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ilf)
  %i.ilh = trunc nuw nsw i64 %i.ilg to i32
  %i.ili = add nsw i32 %.292.i694.i.i, %i.ilh
  %i.ilj = add nsw i32 %.284.i695.i.i, 1
  br label %bb.aaz

bb.aaz:                                           ; preds = %bb.aay, %bb.aau
  %.393.i697.i.i = phi i32 [ %i.ili, %bb.aay ], [ 0, %bb.aau ]
  %.385.i698.i.i = phi i32 [ %i.ilj, %bb.aay ], [ 0, %bb.aau ] ; 2 uses
  %.3.i699.i.i = phi i32 [ %.2.i696.i.i, %bb.aay ], [ %i.giu, %bb.aau ]
  %i.ilk = sext i32 %.385.i698.i.i to i64         ; 2 uses
  %i.ill = getelementptr inbounds [8 x i8], ptr %i.hxy, i64 %i.ilk
  %i.ilm = load i64, ptr %i.ill, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.iln = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.ilk
  %i.ilo = load i64, ptr %i.iln, align 8, !tbaa !90, !noalias !751
  %i.ilp = xor i64 %i.ilo, %i.ilm
  %i.ilq = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ilp)
  %i.ilr = trunc nuw nsw i64 %i.ilq to i32
  %i.ils = add nsw i32 %.393.i697.i.i, %i.ilr
  %i.ilt = add nsw i32 %.385.i698.i.i, 1
  br label %bb.aba

bb.aba:                                           ; preds = %bb.aaz, %bb.aau
  %.494.i700.i.i = phi i32 [ %i.ils, %bb.aaz ], [ 0, %bb.aau ]
  %.486.i701.i.i = phi i32 [ %i.ilt, %bb.aaz ], [ 0, %bb.aau ] ; 2 uses
  %.4.i702.i.i = phi i32 [ %.3.i699.i.i, %bb.aaz ], [ %i.giu, %bb.aau ]
  %i.ilu = sext i32 %.486.i701.i.i to i64         ; 2 uses
  %i.ilv = getelementptr inbounds [8 x i8], ptr %i.hxy, i64 %i.ilu
  %i.ilw = load i64, ptr %i.ilv, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ilx = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.ilu
  %i.ily = load i64, ptr %i.ilx, align 8, !tbaa !90, !noalias !751
  %i.ilz = xor i64 %i.ily, %i.ilw
  %i.ima = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ilz)
  %i.imb = trunc nuw nsw i64 %i.ima to i32
  %i.imc = add nsw i32 %.494.i700.i.i, %i.imb
  %i.imd = add nsw i32 %.486.i701.i.i, 1
  br label %bb.abb

bb.abb:                                           ; preds = %bb.aba, %bb.aau
  %.595.i703.i.i = phi i32 [ %i.imc, %bb.aba ], [ 0, %bb.aau ]
  %.587.i704.i.i = phi i32 [ %i.imd, %bb.aba ], [ 0, %bb.aau ] ; 2 uses
  %.5.i705.i.i = phi i32 [ %.4.i702.i.i, %bb.aba ], [ %i.giu, %bb.aau ]
  %i.ime = sext i32 %.587.i704.i.i to i64         ; 2 uses
  %i.imf = getelementptr inbounds [8 x i8], ptr %i.hxy, i64 %i.ime
  %i.img = load i64, ptr %i.imf, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.imh = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.ime
  %i.imi = load i64, ptr %i.imh, align 8, !tbaa !90, !noalias !751
  %i.imj = xor i64 %i.imi, %i.img
  %i.imk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.imj)
  %i.iml = trunc nuw nsw i64 %i.imk to i32
  %i.imm = add nsw i32 %.595.i703.i.i, %i.iml
  %i.imn = add nsw i32 %.587.i704.i.i, 1
  br label %bb.abc

bb.abc:                                           ; preds = %bb.abb, %bb.aau
  %.696.i706.i.i = phi i32 [ %i.imm, %bb.abb ], [ 0, %bb.aau ]
  %.688.i707.i.i = phi i32 [ %i.imn, %bb.abb ], [ 0, %bb.aau ] ; 2 uses
  %.6.i708.i.i = phi i32 [ %.5.i705.i.i, %bb.abb ], [ %i.giu, %bb.aau ]
  %i.imo = sext i32 %.688.i707.i.i to i64         ; 2 uses
  %i.imp = getelementptr inbounds [8 x i8], ptr %i.hxy, i64 %i.imo
  %i.imq = load i64, ptr %i.imp, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.imr = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.imo
  %i.ims = load i64, ptr %i.imr, align 8, !tbaa !90, !noalias !751
  %i.imt = xor i64 %i.ims, %i.imq
  %i.imu = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.imt)
  %i.imv = trunc nuw nsw i64 %i.imu to i32
  %i.imw = add nsw i32 %.696.i706.i.i, %i.imv
  %i.imx = add nsw i32 %.688.i707.i.i, 1
  br label %bb.abd

bb.abd:                                           ; preds = %bb.abc, %bb.aau
  %.797.i709.i.i = phi i32 [ %i.imw, %bb.abc ], [ 0, %bb.aau ]
  %.789.i710.i.i = phi i32 [ %i.imx, %bb.abc ], [ 0, %bb.aau ] ; 2 uses
  %.7.i711.i.i = phi i32 [ %.6.i708.i.i, %bb.abc ], [ %i.giu, %bb.aau ]
  %i.imy = sext i32 %.789.i710.i.i to i64         ; 2 uses
  %i.imz = getelementptr inbounds [8 x i8], ptr %i.hxy, i64 %i.imy
  %i.ina = load i64, ptr %i.imz, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.inb = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.imy
  %i.inc = load i64, ptr %i.inb, align 8, !tbaa !90, !noalias !751
  %i.ind = xor i64 %i.inc, %i.ina
  %i.ine = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ind)
  %i.inf = trunc nuw nsw i64 %i.ine to i32
  %i.ing = add nsw i32 %.797.i709.i.i, %i.inf
  %i.inh = add nsw i32 %.789.i710.i.i, 1
  br label %bb.aav, !llvm.loop !180

bb.abe:                                           ; preds = %bb.aav
  br i1 %.not.i753.i.i, label %.noexc300.i.i, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.ini = getelementptr inbounds i8, ptr %i.hzf, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.abg, label %bb.abh

bb.abg:                                           ; preds = %bb.abf
  %i.inj = load i32, ptr %i.hyw, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.ink = load i32, ptr %i.ini, align 4, !tbaa !73, !noalias !751
  %i.inl = xor i32 %i.ink, %i.inj
  %i.inm = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.inl)
  %i.inn = add nsw i32 %i.inm, %.090.i678.i.i
  %i.ino = getelementptr inbounds nuw i8, ptr %i.ini, i64 4
  br label %bb.abh

bb.abh:                                           ; preds = %bb.abg, %bb.abf
  %.098.i682.i.i = phi i32 [ %i.gja, %bb.abg ], [ %i.giv, %bb.abf ] ; 3 uses
  %.8.i683.i.i = phi i32 [ %i.inn, %bb.abg ], [ %.090.i678.i.i, %bb.abf ] ; 2 uses
  %.078.i684.i.i = phi ptr [ %i.hyx, %bb.abg ], [ %i.hyw, %bb.abf ] ; 3 uses
  %.0.i685.i.i = phi ptr [ %i.ino, %bb.abg ], [ %i.ini, %bb.abf ] ; 3 uses
  %i.inp = icmp sgt i32 %.098.i682.i.i, 1
  br i1 %i.inp, label %bb.abi, label %bb.abj

bb.abi:                                           ; preds = %bb.abh
  %i.inq = load i16, ptr %.078.i684.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.inr = load i16, ptr %.0.i685.i.i, align 2, !tbaa !181, !noalias !751
  %i.ins = xor i16 %i.inr, %i.inq
  %i.int = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.ins)
  %i.inu = zext nneg i16 %i.int to i32
  %i.inv = add nsw i32 %.8.i683.i.i, %i.inu
  %i.inw = getelementptr inbounds nuw i8, ptr %.078.i684.i.i, i64 2
  %i.inx = getelementptr inbounds nuw i8, ptr %.0.i685.i.i, i64 2
  %i.iny = add nsw i32 %.098.i682.i.i, -2
  br label %bb.abj

bb.abj:                                           ; preds = %bb.abi, %bb.abh
  %.199.i686.i.i = phi i32 [ %i.iny, %bb.abi ], [ %.098.i682.i.i, %bb.abh ]
  %.9.i687.i.i = phi i32 [ %i.inv, %bb.abi ], [ %.8.i683.i.i, %bb.abh ] ; 2 uses
  %.179.i688.i.i = phi ptr [ %i.inw, %bb.abi ], [ %.078.i684.i.i, %bb.abh ]
  %.1.i689.i.i = phi ptr [ %i.inx, %bb.abi ], [ %.0.i685.i.i, %bb.abh ]
  %i.inz = icmp sgt i32 %.199.i686.i.i, 0
  br i1 %i.inz, label %bb.abk, label %.noexc300.i.i

bb.abk:                                           ; preds = %bb.abj
  %i.ioa = load i8, ptr %.179.i688.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.iob = load i8, ptr %.1.i689.i.i, align 1, !tbaa !72, !noalias !751
  %i.ioc = xor i8 %i.iob, %i.ioa
  %i.iod = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ioc)
  %i.ioe = zext nneg i8 %i.iod to i32
  %i.iof = add nsw i32 %.9.i687.i.i, %i.ioe
  br label %.noexc300.i.i

.noexc300.i.i:                                    ; preds = %bb.abk, %bb.abj, %bb.abe
  %.11.i690.i.i = phi i32 [ %.090.i678.i.i, %bb.abe ], [ %i.iof, %bb.abk ], [ %.9.i687.i.i, %bb.abj ] ; 6 uses
  %i.iog = icmp slt i32 %.11.i690.i.i, %.sroa.49.0227.i.i
  br i1 %i.iog, label %.lr.ph.i.2.i.i.i701, label %bb.abo

.lr.ph.i.2.i.i.i701:                              ; preds = %.noexc300.i.i, %bb.abn
  %i.ioh = phi i64 [ %i.ipk, %bb.abn ], [ 3, %.noexc300.i.i ]
  %i.ioi = phi i64 [ %i.ipj, %bb.abn ], [ 2, %.noexc300.i.i ] ; 7 uses
  %.056.i.2.i.i.i702 = phi i64 [ %.1.i.2.i.i.i707, %bb.abn ], [ 1, %.noexc300.i.i ] ; 6 uses
  %i.ioj = icmp eq i64 %i.ioi, 4
  br i1 %i.ioj, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.2.i.i.i708, label %bb.abl

bb.abl:                                           ; preds = %.lr.ph.i.2.i.i.i701
  %i.iok = getelementptr inbounds nuw [4 x i8], ptr %i.hyy, i64 %i.ioi
  %i.iol = load i32, ptr %i.iok, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 4 uses
  %i.iom = getelementptr [4 x i8], ptr %i.hya, i64 %i.ioi
  %i.ion = load i32, ptr %i.iom, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 5 uses
  %i.ioo = getelementptr [8 x i8], ptr %i.hyb, i64 %i.ioi
  %i.iop = load i64, ptr %i.ioo, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 3 uses
  %i.ioq = icmp sgt i32 %i.iol, %i.ion
  br i1 %i.ioq, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i283.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.2.i.i.i703

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.2.i.i.i703:   ; preds = %bb.abl
  %i.ior = getelementptr inbounds nuw [8 x i8], ptr %i.hyz, i64 %i.ioi
  %i.ios = load i64, ptr %i.ior, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.iot = icmp eq i32 %i.iol, %i.ion
  %i.iou = icmp sgt i64 %i.ios, %i.iop
  %i.iov = and i1 %i.iot, %i.iou
  br i1 %i.iov, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i283.i.i, label %bb.abm

bb.abm:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.2.i.i.i703
  %i.iow = icmp sgt i32 %.11.i690.i.i, %i.ion
  br i1 %i.iow, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i281.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i.i.i704

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i.i.i704: ; preds = %bb.abm
  %i.iox = icmp eq i32 %.11.i690.i.i, %i.ion
  %i.ioy = icmp sgt i64 %i.hzh, %i.iop
  %i.ioz = and i1 %i.iox, %i.ioy
  br i1 %i.ioz, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i281.i.i, label %bb.abn

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.2.i.i.i708: ; preds = %.lr.ph.i.2.i.i.i701
  %.pre.i.2.i285.i.i = load i32, ptr %.phi.trans.insert.i.2.i280.i.i, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i283.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i283.i.i: ; preds = %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.2.i.i.i708, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.2.i.i.i703, %bb.abl
  %i.ipa = phi i32 [ %.pre.i.2.i285.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.2.i.i.i708 ], [ %i.iol, %bb.abl ], [ %i.iol, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.2.i.i.i703 ] ; 3 uses
  %i.ipb = icmp sgt i32 %.11.i690.i.i, %i.ipa
  br i1 %i.ipb, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i281.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i284.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i284.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i283.i.i
  %i.ipc = getelementptr inbounds nuw [8 x i8], ptr %i.hyz, i64 %i.ioi
  %i.ipd = load i64, ptr %i.ipc, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 2 uses
  %i.ipe = icmp eq i32 %.11.i690.i.i, %i.ipa
  %i.ipf = icmp sgt i64 %i.hzh, %i.ipd
  %i.ipg = and i1 %i.ipe, %i.ipf
  br i1 %i.ipg, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i281.i.i, label %bb.abn

bb.abn:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i284.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i.i.i704
  %.sink71.i.2.i.i.i705 = phi i32 [ %i.ipa, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i284.i.i ], [ %i.ion, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i.i.i704 ]
  %.sink.i.2.i.i.i706 = phi i64 [ %i.ipd, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i284.i.i ], [ %i.iop, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i.i.i704 ]
  %.1.i.2.i.i.i707 = phi i64 [ %i.ioi, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i284.i.i ], [ %i.ioh, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i.i.i704 ] ; 4 uses
  %i.iph = getelementptr inbounds nuw [4 x i8], ptr %i.hyy, i64 %.056.i.2.i.i.i702
  store i32 %.sink71.i.2.i.i.i705, ptr %i.iph, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.ipi = getelementptr inbounds nuw [8 x i8], ptr %i.hyz, i64 %.056.i.2.i.i.i702
  store i64 %.sink.i.2.i.i.i706, ptr %i.ipi, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.ipj = shl nuw nsw i64 %.1.i.2.i.i.i707, 1    ; 2 uses
  %i.ipk = or disjoint i64 %i.ipj, 1
  %i.ipl = icmp ugt i64 %.1.i.2.i.i.i707, 2
  br i1 %i.ipl, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i281.i.i, label %.lr.ph.i.2.i.i.i701, !llvm.loop !114

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i281.i.i: ; preds = %bb.abn, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i284.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i283.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i.i.i704, %bb.abm
  %.0.lcssa.i.2.i282.i.i = phi i64 [ %.1.i.2.i.i.i707, %bb.abn ], [ %.056.i.2.i.i.i702, %bb.abm ], [ %.056.i.2.i.i.i702, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i283.i.i ], [ %.056.i.2.i.i.i702, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i.i.i704 ], [ %.056.i.2.i.i.i702, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i284.i.i ] ; 2 uses
  %i.ipm = getelementptr inbounds nuw [4 x i8], ptr %i.hyy, i64 %.0.lcssa.i.2.i282.i.i
  store i32 %.11.i690.i.i, ptr %i.ipm, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.ipn = getelementptr inbounds nuw [8 x i8], ptr %i.hyz, i64 %.0.lcssa.i.2.i282.i.i
  store i64 %i.hzh, ptr %i.ipn, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.ipo = load i32, ptr %i.hya, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %bb.abo

bb.abo:                                           ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i281.i.i, %.noexc300.i.i
  %.sroa.49.1.i.i692 = phi i32 [ %i.ipo, %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i281.i.i ], [ %.sroa.49.0227.i.i, %.noexc300.i.i ]
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.abr
    i32 6, label %bb.abs
    i32 5, label %bb.abt
    i32 4, label %bb.abu
    i32 3, label %bb.abv
    i32 2, label %bb.abw
    i32 1, label %bb.abx
    i32 0, label %bb.abp
  ]

bb.abp:                                           ; preds = %bb.abx, %bb.abo
  %.090.i642.i.i = phi i32 [ %i.isr, %bb.abx ], [ %i.giw, %bb.abo ] ; 4 uses
  %.082.i643.i.i = phi i32 [ %i.iss, %bb.abx ], [ %i.giw, %bb.abo ] ; 2 uses
  %.080.i644.i.i = phi i32 [ %.7.i675.i.i, %bb.abx ], [ %i.giu, %bb.abo ] ; 2 uses
  %i.ipp = icmp sgt i32 %.080.i644.i.i, 7
  br i1 %i.ipp, label %bb.abq, label %bb.aby

bb.abq:                                           ; preds = %bb.abp
  %i.ipq = add nsw i32 %.080.i644.i.i, -8
  %i.ipr = sext i32 %.082.i643.i.i to i64         ; 2 uses
  %i.ips = getelementptr inbounds [8 x i8], ptr %i.hyg, i64 %i.ipr
  %i.ipt = load i64, ptr %i.ips, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ipu = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.ipr
  %i.ipv = load i64, ptr %i.ipu, align 8, !tbaa !90, !noalias !751
  %i.ipw = xor i64 %i.ipv, %i.ipt
  %i.ipx = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ipw)
  %i.ipy = trunc nuw nsw i64 %i.ipx to i32
  %i.ipz = add nsw i32 %.090.i642.i.i, %i.ipy
  %i.iqa = add nsw i32 %.082.i643.i.i, 1
  br label %bb.abr

bb.abr:                                           ; preds = %bb.abq, %bb.abo
  %.191.i655.i.i = phi i32 [ 0, %bb.abo ], [ %i.ipz, %bb.abq ]
  %.183.i656.i.i = phi i32 [ 0, %bb.abo ], [ %i.iqa, %bb.abq ] ; 2 uses
  %.181.i657.i.i = phi i32 [ %i.giu, %bb.abo ], [ %i.ipq, %bb.abq ]
  %i.iqb = sext i32 %.183.i656.i.i to i64         ; 2 uses
  %i.iqc = getelementptr inbounds [8 x i8], ptr %i.hyg, i64 %i.iqb
  %i.iqd = load i64, ptr %i.iqc, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.iqe = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.iqb
  %i.iqf = load i64, ptr %i.iqe, align 8, !tbaa !90, !noalias !751
  %i.iqg = xor i64 %i.iqf, %i.iqd
  %i.iqh = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.iqg)
  %i.iqi = trunc nuw nsw i64 %i.iqh to i32
  %i.iqj = add nsw i32 %.191.i655.i.i, %i.iqi
  %i.iqk = add nsw i32 %.183.i656.i.i, 1
  br label %bb.abs

bb.abs:                                           ; preds = %bb.abr, %bb.abo
  %.292.i658.i.i = phi i32 [ %i.iqj, %bb.abr ], [ 0, %bb.abo ]
  %.284.i659.i.i = phi i32 [ %i.iqk, %bb.abr ], [ 0, %bb.abo ] ; 2 uses
  %.2.i660.i.i = phi i32 [ %.181.i657.i.i, %bb.abr ], [ %i.giu, %bb.abo ]
  %i.iql = sext i32 %.284.i659.i.i to i64         ; 2 uses
  %i.iqm = getelementptr inbounds [8 x i8], ptr %i.hyg, i64 %i.iql
  %i.iqn = load i64, ptr %i.iqm, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.iqo = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.iql
  %i.iqp = load i64, ptr %i.iqo, align 8, !tbaa !90, !noalias !751
  %i.iqq = xor i64 %i.iqp, %i.iqn
  %i.iqr = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.iqq)
  %i.iqs = trunc nuw nsw i64 %i.iqr to i32
  %i.iqt = add nsw i32 %.292.i658.i.i, %i.iqs
  %i.iqu = add nsw i32 %.284.i659.i.i, 1
  br label %bb.abt

bb.abt:                                           ; preds = %bb.abs, %bb.abo
  %.393.i661.i.i = phi i32 [ %i.iqt, %bb.abs ], [ 0, %bb.abo ]
  %.385.i662.i.i = phi i32 [ %i.iqu, %bb.abs ], [ 0, %bb.abo ] ; 2 uses
  %.3.i663.i.i = phi i32 [ %.2.i660.i.i, %bb.abs ], [ %i.giu, %bb.abo ]
  %i.iqv = sext i32 %.385.i662.i.i to i64         ; 2 uses
  %i.iqw = getelementptr inbounds [8 x i8], ptr %i.hyg, i64 %i.iqv
  %i.iqx = load i64, ptr %i.iqw, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.iqy = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.iqv
  %i.iqz = load i64, ptr %i.iqy, align 8, !tbaa !90, !noalias !751
  %i.ira = xor i64 %i.iqz, %i.iqx
  %i.irb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ira)
  %i.irc = trunc nuw nsw i64 %i.irb to i32
  %i.ird = add nsw i32 %.393.i661.i.i, %i.irc
  %i.ire = add nsw i32 %.385.i662.i.i, 1
  br label %bb.abu

bb.abu:                                           ; preds = %bb.abt, %bb.abo
  %.494.i664.i.i = phi i32 [ %i.ird, %bb.abt ], [ 0, %bb.abo ]
  %.486.i665.i.i = phi i32 [ %i.ire, %bb.abt ], [ 0, %bb.abo ] ; 2 uses
  %.4.i666.i.i = phi i32 [ %.3.i663.i.i, %bb.abt ], [ %i.giu, %bb.abo ]
  %i.irf = sext i32 %.486.i665.i.i to i64         ; 2 uses
  %i.irg = getelementptr inbounds [8 x i8], ptr %i.hyg, i64 %i.irf
  %i.irh = load i64, ptr %i.irg, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.iri = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.irf
  %i.irj = load i64, ptr %i.iri, align 8, !tbaa !90, !noalias !751
  %i.irk = xor i64 %i.irj, %i.irh
  %i.irl = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.irk)
  %i.irm = trunc nuw nsw i64 %i.irl to i32
  %i.irn = add nsw i32 %.494.i664.i.i, %i.irm
  %i.iro = add nsw i32 %.486.i665.i.i, 1
  br label %bb.abv

bb.abv:                                           ; preds = %bb.abu, %bb.abo
  %.595.i667.i.i = phi i32 [ %i.irn, %bb.abu ], [ 0, %bb.abo ]
  %.587.i668.i.i = phi i32 [ %i.iro, %bb.abu ], [ 0, %bb.abo ] ; 2 uses
  %.5.i669.i.i = phi i32 [ %.4.i666.i.i, %bb.abu ], [ %i.giu, %bb.abo ]
  %i.irp = sext i32 %.587.i668.i.i to i64         ; 2 uses
  %i.irq = getelementptr inbounds [8 x i8], ptr %i.hyg, i64 %i.irp
  %i.irr = load i64, ptr %i.irq, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.irs = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.irp
  %i.irt = load i64, ptr %i.irs, align 8, !tbaa !90, !noalias !751
  %i.iru = xor i64 %i.irt, %i.irr
  %i.irv = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.iru)
  %i.irw = trunc nuw nsw i64 %i.irv to i32
  %i.irx = add nsw i32 %.595.i667.i.i, %i.irw
  %i.iry = add nsw i32 %.587.i668.i.i, 1
  br label %bb.abw

bb.abw:                                           ; preds = %bb.abv, %bb.abo
  %.696.i670.i.i = phi i32 [ %i.irx, %bb.abv ], [ 0, %bb.abo ]
  %.688.i671.i.i = phi i32 [ %i.iry, %bb.abv ], [ 0, %bb.abo ] ; 2 uses
  %.6.i672.i.i = phi i32 [ %.5.i669.i.i, %bb.abv ], [ %i.giu, %bb.abo ]
  %i.irz = sext i32 %.688.i671.i.i to i64         ; 2 uses
  %i.isa = getelementptr inbounds [8 x i8], ptr %i.hyg, i64 %i.irz
  %i.isb = load i64, ptr %i.isa, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.isc = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.irz
  %i.isd = load i64, ptr %i.isc, align 8, !tbaa !90, !noalias !751
  %i.ise = xor i64 %i.isd, %i.isb
  %i.isf = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ise)
  %i.isg = trunc nuw nsw i64 %i.isf to i32
  %i.ish = add nsw i32 %.696.i670.i.i, %i.isg
  %i.isi = add nsw i32 %.688.i671.i.i, 1
  br label %bb.abx

bb.abx:                                           ; preds = %bb.abw, %bb.abo
  %.797.i673.i.i = phi i32 [ %i.ish, %bb.abw ], [ 0, %bb.abo ]
  %.789.i674.i.i = phi i32 [ %i.isi, %bb.abw ], [ 0, %bb.abo ] ; 2 uses
  %.7.i675.i.i = phi i32 [ %.6.i672.i.i, %bb.abw ], [ %i.giu, %bb.abo ]
  %i.isj = sext i32 %.789.i674.i.i to i64         ; 2 uses
  %i.isk = getelementptr inbounds [8 x i8], ptr %i.hyg, i64 %i.isj
  %i.isl = load i64, ptr %i.isk, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ism = getelementptr inbounds [8 x i8], ptr %i.hzf, i64 %i.isj
  %i.isn = load i64, ptr %i.ism, align 8, !tbaa !90, !noalias !751
  %i.iso = xor i64 %i.isn, %i.isl
  %i.isp = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.iso)
  %i.isq = trunc nuw nsw i64 %i.isp to i32
  %i.isr = add nsw i32 %.797.i673.i.i, %i.isq
  %i.iss = add nsw i32 %.789.i674.i.i, 1
  br label %bb.abp, !llvm.loop !180

bb.aby:                                           ; preds = %bb.abp
  br i1 %.not.i753.i.i, label %.noexc301.i.i, label %bb.abz

bb.abz:                                           ; preds = %bb.aby
  %i.ist = getelementptr inbounds i8, ptr %i.hzf, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.aca, label %bb.acb

bb.aca:                                           ; preds = %bb.abz
  %i.isu = load i32, ptr %i.hza, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.isv = load i32, ptr %i.ist, align 4, !tbaa !73, !noalias !751
  %i.isw = xor i32 %i.isv, %i.isu
  %i.isx = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.isw)
  %i.isy = add nsw i32 %i.isx, %.090.i642.i.i
  %i.isz = getelementptr inbounds nuw i8, ptr %i.ist, i64 4
  br label %bb.acb

bb.acb:                                           ; preds = %bb.aca, %bb.abz
  %.098.i646.i.i = phi i32 [ %i.gja, %bb.aca ], [ %i.giv, %bb.abz ] ; 3 uses
  %.8.i647.i.i = phi i32 [ %i.isy, %bb.aca ], [ %.090.i642.i.i, %bb.abz ] ; 2 uses
  %.078.i648.i.i = phi ptr [ %i.hzb, %bb.aca ], [ %i.hza, %bb.abz ] ; 3 uses
  %.0.i649.i.i = phi ptr [ %i.isz, %bb.aca ], [ %i.ist, %bb.abz ] ; 3 uses
  %i.ita = icmp sgt i32 %.098.i646.i.i, 1
  br i1 %i.ita, label %bb.acc, label %bb.acd

bb.acc:                                           ; preds = %bb.acb
  %i.itb = load i16, ptr %.078.i648.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.itc = load i16, ptr %.0.i649.i.i, align 2, !tbaa !181, !noalias !751
  %i.itd = xor i16 %i.itc, %i.itb
  %i.ite = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.itd)
  %i.itf = zext nneg i16 %i.ite to i32
  %i.itg = add nsw i32 %.8.i647.i.i, %i.itf
  %i.ith = getelementptr inbounds nuw i8, ptr %.078.i648.i.i, i64 2
  %i.iti = getelementptr inbounds nuw i8, ptr %.0.i649.i.i, i64 2
  %i.itj = add nsw i32 %.098.i646.i.i, -2
  br label %bb.acd

bb.acd:                                           ; preds = %bb.acc, %bb.acb
  %.199.i650.i.i = phi i32 [ %i.itj, %bb.acc ], [ %.098.i646.i.i, %bb.acb ]
  %.9.i651.i.i = phi i32 [ %i.itg, %bb.acc ], [ %.8.i647.i.i, %bb.acb ] ; 2 uses
  %.179.i652.i.i = phi ptr [ %i.ith, %bb.acc ], [ %.078.i648.i.i, %bb.acb ]
  %.1.i653.i.i = phi ptr [ %i.iti, %bb.acc ], [ %.0.i649.i.i, %bb.acb ]
  %i.itk = icmp sgt i32 %.199.i650.i.i, 0
  br i1 %i.itk, label %bb.ace, label %.noexc301.i.i

bb.ace:                                           ; preds = %bb.acd
  %i.itl = load i8, ptr %.179.i652.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.itm = load i8, ptr %.1.i653.i.i, align 1, !tbaa !72, !noalias !751
  %i.itn = xor i8 %i.itm, %i.itl
  %i.ito = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.itn)
  %i.itp = zext nneg i8 %i.ito to i32
  %i.itq = add nsw i32 %.9.i651.i.i, %i.itp
  br label %.noexc301.i.i

.noexc301.i.i:                                    ; preds = %bb.ace, %bb.acd, %bb.aby
  %.11.i654.i.i = phi i32 [ %.090.i642.i.i, %bb.aby ], [ %i.itq, %bb.ace ], [ %.9.i651.i.i, %bb.acd ] ; 6 uses
  %i.itr = icmp slt i32 %.11.i654.i.i, %.sroa.52.0228.i.i
  br i1 %i.itr, label %.lr.ph.i.3.i.i.i693, label %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi4EE9add_bcodeEPKhl.exit.i.i

.lr.ph.i.3.i.i.i693:                              ; preds = %.noexc301.i.i, %bb.ach
  %i.its = phi i64 [ %i.iuv, %bb.ach ], [ 3, %.noexc301.i.i ]
  %i.itt = phi i64 [ %i.iuu, %bb.ach ], [ 2, %.noexc301.i.i ] ; 7 uses
  %.056.i.3.i.i.i694 = phi i64 [ %.1.i.3.i.i.i699, %bb.ach ], [ 1, %.noexc301.i.i ] ; 6 uses
  %i.itu = icmp eq i64 %i.itt, 4
  br i1 %i.itu, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.3.i.i.i700, label %bb.acf

bb.acf:                                           ; preds = %.lr.ph.i.3.i.i.i693
  %i.itv = getelementptr inbounds nuw [4 x i8], ptr %i.hzc, i64 %i.itt
  %i.itw = load i32, ptr %i.itv, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 4 uses
  %i.itx = getelementptr [4 x i8], ptr %i.hyi, i64 %i.itt
  %i.ity = load i32, ptr %i.itx, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 5 uses
  %i.itz = getelementptr [8 x i8], ptr %i.hyj, i64 %i.itt
  %i.iua = load i64, ptr %i.itz, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 3 uses
  %i.iub = icmp sgt i32 %i.itw, %i.ity
  br i1 %i.iub, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i277.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.3.i.i.i695

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.3.i.i.i695:   ; preds = %bb.acf
  %i.iuc = getelementptr inbounds nuw [8 x i8], ptr %i.hzd, i64 %i.itt
  %i.iud = load i64, ptr %i.iuc, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.iue = icmp eq i32 %i.itw, %i.ity
  %i.iuf = icmp sgt i64 %i.iud, %i.iua
  %i.iug = and i1 %i.iue, %i.iuf
  br i1 %i.iug, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i277.i.i, label %bb.acg

bb.acg:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.3.i.i.i695
  %i.iuh = icmp sgt i32 %.11.i654.i.i, %i.ity
  br i1 %i.iuh, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i275.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i.i.i696

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i.i.i696: ; preds = %bb.acg
  %i.iui = icmp eq i32 %.11.i654.i.i, %i.ity
  %i.iuj = icmp sgt i64 %i.hzh, %i.iua
  %i.iuk = and i1 %i.iui, %i.iuj
  br i1 %i.iuk, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i275.i.i, label %bb.ach

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.3.i.i.i700: ; preds = %.lr.ph.i.3.i.i.i693
  %.pre.i.3.i279.i.i = load i32, ptr %.phi.trans.insert.i.3.i274.i.i, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i277.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i277.i.i: ; preds = %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.3.i.i.i700, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.3.i.i.i695, %bb.acf
  %i.iul = phi i32 [ %.pre.i.3.i279.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.3.i.i.i700 ], [ %i.itw, %bb.acf ], [ %i.itw, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.3.i.i.i695 ] ; 3 uses
  %i.ium = icmp sgt i32 %.11.i654.i.i, %i.iul
  br i1 %i.ium, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i275.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i278.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i278.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i277.i.i
  %i.iun = getelementptr inbounds nuw [8 x i8], ptr %i.hzd, i64 %i.itt
  %i.iuo = load i64, ptr %i.iun, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 2 uses
  %i.iup = icmp eq i32 %.11.i654.i.i, %i.iul
  %i.iuq = icmp sgt i64 %i.hzh, %i.iuo
  %i.iur = and i1 %i.iup, %i.iuq
  br i1 %i.iur, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i275.i.i, label %bb.ach

bb.ach:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i278.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i.i.i696
  %.sink71.i.3.i.i.i697 = phi i32 [ %i.iul, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i278.i.i ], [ %i.ity, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i.i.i696 ]
  %.sink.i.3.i.i.i698 = phi i64 [ %i.iuo, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i278.i.i ], [ %i.iua, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i.i.i696 ]
  %.1.i.3.i.i.i699 = phi i64 [ %i.itt, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i278.i.i ], [ %i.its, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i.i.i696 ] ; 4 uses
  %i.ius = getelementptr inbounds nuw [4 x i8], ptr %i.hzc, i64 %.056.i.3.i.i.i694
  store i32 %.sink71.i.3.i.i.i697, ptr %i.ius, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.iut = getelementptr inbounds nuw [8 x i8], ptr %i.hzd, i64 %.056.i.3.i.i.i694
  store i64 %.sink.i.3.i.i.i698, ptr %i.iut, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.iuu = shl nuw nsw i64 %.1.i.3.i.i.i699, 1    ; 2 uses
  %i.iuv = or disjoint i64 %i.iuu, 1
  %i.iuw = icmp ugt i64 %.1.i.3.i.i.i699, 2
  br i1 %i.iuw, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i275.i.i, label %.lr.ph.i.3.i.i.i693, !llvm.loop !114

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i275.i.i: ; preds = %bb.ach, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i278.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i277.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i.i.i696, %bb.acg
  %.0.lcssa.i.3.i276.i.i = phi i64 [ %.1.i.3.i.i.i699, %bb.ach ], [ %.056.i.3.i.i.i694, %bb.acg ], [ %.056.i.3.i.i.i694, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i277.i.i ], [ %.056.i.3.i.i.i694, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i.i.i696 ], [ %.056.i.3.i.i.i694, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i278.i.i ] ; 2 uses
  %i.iux = getelementptr inbounds nuw [4 x i8], ptr %i.hzc, i64 %.0.lcssa.i.3.i276.i.i
  store i32 %.11.i654.i.i, ptr %i.iux, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.iuy = getelementptr inbounds nuw [8 x i8], ptr %i.hzd, i64 %.0.lcssa.i.3.i276.i.i
  store i64 %i.hzh, ptr %i.iuy, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.iuz = load i32, ptr %i.hyi, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi4EE9add_bcodeEPKhl.exit.i.i

_ZN5faiss12_GLOBAL__N_111BlockSearchINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4ELi4EE9add_bcodeEPKhl.exit.i.i: ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i275.i.i, %.noexc301.i.i
  %.sroa.52.1.i.i = phi i32 [ %i.iuz, %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i275.i.i ], [ %.sroa.52.0228.i.i, %.noexc301.i.i ]
  %i.iva = add nuw nsw i64 %.0191229.i.i, 1       ; 2 uses
  %exitcond407.not.i.i = icmp eq i64 %i.iva, %i.gkd
  br i1 %exitcond407.not.i.i, label %.loopexit92.i.i, label %bb.zg, !llvm.loop !801

.loopexit89.i.i:                                  ; preds = %_ZN5faiss12_GLOBAL__N_120BlockSearchVariableKINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4EE9add_bcodeEPKhl.exit.i.i, %bb.aci
  %i.ivb = add nuw nsw i64 %i.ivc, 4              ; 2 uses
  %.not213.i.i751 = icmp sgt i64 %i.ivb, %i.gjo
  br i1 %.not213.i.i751, label %.loopexit94.i.i, label %bb.aci, !llvm.loop !802

bb.aci:                                           ; preds = %.loopexit89.i.i, %.lr.ph266.i.i
  %i.ivc = phi i64 [ 4, %.lr.ph266.i.i ], [ %i.ivb, %.loopexit89.i.i ] ; 3 uses
  %.3197265.i.i = phi i64 [ 0, %.lr.ph266.i.i ], [ %i.ivc, %.loopexit89.i.i ]
  %i.ivd = getelementptr inbounds nuw [4 x i8], ptr %i.gkk, i64 %.3197265.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.ive = load i32, ptr %i.ivd, align 4, !tbaa !73, !alias.scope !803, !noalias !808
  %i.ivf = sext i32 %i.ive to i64                 ; 2 uses
  %i.ivg = mul nsw i64 %i.ivf, %i.gis
  %i.ivh = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ivg ; 9 uses
  %i.ivi = mul nsw i64 %i.gjb, %i.ivf             ; 2 uses
  %i.ivj = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ivi ; 4 uses
  %i.ivk = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ivi ; 2 uses
  %i.ivl = getelementptr inbounds nuw i8, ptr %i.ivd, i64 4
  %i.ivm = load i32, ptr %i.ivl, align 4, !tbaa !73, !alias.scope !803, !noalias !808
  %i.ivn = sext i32 %i.ivm to i64                 ; 2 uses
  %i.ivo = mul nsw i64 %i.ivn, %i.gis
  %i.ivp = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ivo ; 9 uses
  %i.ivq = mul nsw i64 %i.gjb, %i.ivn             ; 2 uses
  %i.ivr = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ivq ; 4 uses
  %i.ivs = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ivq ; 2 uses
  %i.ivt = getelementptr inbounds nuw i8, ptr %i.ivd, i64 8
  %i.ivu = load i32, ptr %i.ivt, align 4, !tbaa !73, !alias.scope !803, !noalias !808
  %i.ivv = sext i32 %i.ivu to i64                 ; 2 uses
  %i.ivw = mul nsw i64 %i.ivv, %i.gis
  %i.ivx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ivw ; 9 uses
  %i.ivy = mul nsw i64 %i.gjb, %i.ivv             ; 2 uses
  %i.ivz = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ivy ; 4 uses
  %i.iwa = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ivy ; 2 uses
  %i.iwb = getelementptr inbounds nuw i8, ptr %i.ivd, i64 12
  %i.iwc = load i32, ptr %i.iwb, align 4, !tbaa !73, !alias.scope !803, !noalias !808
  %i.iwd = sext i32 %i.iwc to i64                 ; 2 uses
  %i.iwe = mul nsw i64 %i.iwd, %i.gis
  %i.iwf = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.iwe ; 9 uses
  %i.iwg = mul nsw i64 %i.gjb, %i.iwd             ; 2 uses
  %i.iwh = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.iwg ; 4 uses
  %i.iwi = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.iwg ; 2 uses
  br i1 %i.gkl, label %.lr.ph263.i.i, label %.loopexit89.i.i

.lr.ph263.i.i:                                    ; preds = %bb.aci
  %i.iwj = load i32, ptr %i.iwh, align 4, !tbaa !73, !alias.scope !811, !noalias !812
  %i.iwk = load i32, ptr %i.ivz, align 4, !tbaa !73, !alias.scope !811, !noalias !812
  %i.iwl = load i32, ptr %i.ivr, align 4, !tbaa !73, !alias.scope !811, !noalias !812
  %i.iwm = load i32, ptr %i.ivj, align 4, !tbaa !73, !alias.scope !811, !noalias !812
  %i.iwn = getelementptr inbounds i8, ptr %i.ivh, i64 %i.giy ; 3 uses
  %i.iwo = getelementptr inbounds nuw i8, ptr %i.iwn, i64 4
  %i.iwp = getelementptr inbounds i8, ptr %i.ivj, i64 -4 ; 4 uses
  %i.iwq = getelementptr inbounds i8, ptr %i.ivk, i64 -8 ; 4 uses
  %.phi.trans.insert.i.i352.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.iwp, i64 %i.gjb
  %i.iwr = getelementptr inbounds i8, ptr %i.ivp, i64 %i.giy ; 3 uses
  %i.iws = getelementptr inbounds nuw i8, ptr %i.iwr, i64 4
  %i.iwt = getelementptr inbounds i8, ptr %i.ivr, i64 -4 ; 4 uses
  %i.iwu = getelementptr inbounds i8, ptr %i.ivs, i64 -8 ; 4 uses
  %.phi.trans.insert.i.1.i338.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.iwt, i64 %i.gjb
  %i.iwv = getelementptr inbounds i8, ptr %i.ivx, i64 %i.giy ; 3 uses
  %i.iww = getelementptr inbounds nuw i8, ptr %i.iwv, i64 4
  %i.iwx = getelementptr inbounds i8, ptr %i.ivz, i64 -4 ; 4 uses
  %i.iwy = getelementptr inbounds i8, ptr %i.iwa, i64 -8 ; 4 uses
  %.phi.trans.insert.i.2.i324.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.iwx, i64 %i.gjb
  %i.iwz = getelementptr inbounds i8, ptr %i.iwf, i64 %i.giy ; 3 uses
  %i.ixa = getelementptr inbounds nuw i8, ptr %i.iwz, i64 4
  %i.ixb = getelementptr inbounds i8, ptr %i.iwh, i64 -4 ; 4 uses
  %i.ixc = getelementptr inbounds i8, ptr %i.iwi, i64 -8 ; 4 uses
  %.phi.trans.insert.i.3.i310.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.ixb, i64 %i.gjb
  br label %bb.acj

bb.acj:                                           ; preds = %_ZN5faiss12_GLOBAL__N_120BlockSearchVariableKINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4EE9add_bcodeEPKhl.exit.i.i, %.lr.ph263.i.i
  %.0190261.i.i = phi i64 [ 0, %.lr.ph263.i.i ], [ %i.jsz, %_ZN5faiss12_GLOBAL__N_120BlockSearchVariableKINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4EE9add_bcodeEPKhl.exit.i.i ] ; 3 uses
  %.sroa.57.0260.i.i = phi i32 [ %i.iwj, %.lr.ph263.i.i ], [ %.sroa.57.1.i.i, %_ZN5faiss12_GLOBAL__N_120BlockSearchVariableKINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %.sroa.54.0259.i.i = phi i32 [ %i.iwk, %.lr.ph263.i.i ], [ %.sroa.54.1.i.i752, %_ZN5faiss12_GLOBAL__N_120BlockSearchVariableKINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %.sroa.51.0258.i.i = phi i32 [ %i.iwl, %.lr.ph263.i.i ], [ %.sroa.51.1.i.i, %_ZN5faiss12_GLOBAL__N_120BlockSearchVariableKINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %.sroa.48.0257.i.i = phi i32 [ %i.iwm, %.lr.ph263.i.i ], [ %.sroa.48.1.i.i, %_ZN5faiss12_GLOBAL__N_120BlockSearchVariableKINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4EE9add_bcodeEPKhl.exit.i.i ] ; 2 uses
  %i.ixd = mul i64 %.0190261.i.i, %i.gis
  %i.ixe = getelementptr inbounds nuw i8, ptr %i.gjt, i64 %i.ixd ; 36 uses
  %i.ixf = getelementptr inbounds nuw [8 x i8], ptr %i.gjy, i64 %.0190261.i.i
  %i.ixg = load i64, ptr %i.ixf, align 8, !tbaa !90, !noalias !751 ; 12 uses
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.acm
    i32 6, label %bb.acn
    i32 5, label %bb.aco
    i32 4, label %bb.acp
    i32 3, label %bb.acq
    i32 2, label %bb.acr
    i32 1, label %bb.acs
    i32 0, label %bb.ack
  ]

bb.ack:                                           ; preds = %bb.acj, %bb.acs
  %.090.i894.i.i = phi i32 [ %i.jaj, %bb.acs ], [ %i.giw, %bb.acj ] ; 4 uses
  %.082.i895.i.i = phi i32 [ %i.jak, %bb.acs ], [ %i.giw, %bb.acj ] ; 2 uses
  %.080.i896.i.i = phi i32 [ %.7.i927.i.i, %bb.acs ], [ %i.giu, %bb.acj ] ; 2 uses
  %i.ixh = icmp sgt i32 %.080.i896.i.i, 7
  br i1 %i.ixh, label %bb.acl, label %bb.act

bb.acl:                                           ; preds = %bb.ack
  %i.ixi = add nsw i32 %.080.i896.i.i, -8
  %i.ixj = sext i32 %.082.i895.i.i to i64         ; 2 uses
  %i.ixk = getelementptr inbounds [8 x i8], ptr %i.ivh, i64 %i.ixj
  %i.ixl = load i64, ptr %i.ixk, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ixm = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.ixj
  %i.ixn = load i64, ptr %i.ixm, align 8, !tbaa !90, !noalias !751
  %i.ixo = xor i64 %i.ixn, %i.ixl
  %i.ixp = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ixo)
  %i.ixq = trunc nuw nsw i64 %i.ixp to i32
  %i.ixr = add nsw i32 %.090.i894.i.i, %i.ixq
  %i.ixs = add nsw i32 %.082.i895.i.i, 1
  br label %bb.acm

bb.acm:                                           ; preds = %bb.acl, %bb.acj
  %.191.i907.i.i = phi i32 [ 0, %bb.acj ], [ %i.ixr, %bb.acl ]
  %.183.i908.i.i = phi i32 [ 0, %bb.acj ], [ %i.ixs, %bb.acl ] ; 2 uses
  %.181.i909.i.i = phi i32 [ %i.giu, %bb.acj ], [ %i.ixi, %bb.acl ]
  %i.ixt = sext i32 %.183.i908.i.i to i64         ; 2 uses
  %i.ixu = getelementptr inbounds [8 x i8], ptr %i.ivh, i64 %i.ixt
  %i.ixv = load i64, ptr %i.ixu, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.ixw = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.ixt
  %i.ixx = load i64, ptr %i.ixw, align 8, !tbaa !90, !noalias !751
  %i.ixy = xor i64 %i.ixx, %i.ixv
  %i.ixz = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ixy)
  %i.iya = trunc nuw nsw i64 %i.ixz to i32
  %i.iyb = add nsw i32 %.191.i907.i.i, %i.iya
  %i.iyc = add nsw i32 %.183.i908.i.i, 1
  br label %bb.acn

bb.acn:                                           ; preds = %bb.acm, %bb.acj
  %.292.i910.i.i = phi i32 [ %i.iyb, %bb.acm ], [ 0, %bb.acj ]
  %.284.i911.i.i = phi i32 [ %i.iyc, %bb.acm ], [ 0, %bb.acj ] ; 2 uses
  %.2.i912.i.i = phi i32 [ %.181.i909.i.i, %bb.acm ], [ %i.giu, %bb.acj ]
  %i.iyd = sext i32 %.284.i911.i.i to i64         ; 2 uses
  %i.iye = getelementptr inbounds [8 x i8], ptr %i.ivh, i64 %i.iyd
  %i.iyf = load i64, ptr %i.iye, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.iyg = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.iyd
  %i.iyh = load i64, ptr %i.iyg, align 8, !tbaa !90, !noalias !751
  %i.iyi = xor i64 %i.iyh, %i.iyf
  %i.iyj = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.iyi)
  %i.iyk = trunc nuw nsw i64 %i.iyj to i32
  %i.iyl = add nsw i32 %.292.i910.i.i, %i.iyk
  %i.iym = add nsw i32 %.284.i911.i.i, 1
  br label %bb.aco

bb.aco:                                           ; preds = %bb.acn, %bb.acj
  %.393.i913.i.i = phi i32 [ %i.iyl, %bb.acn ], [ 0, %bb.acj ]
  %.385.i914.i.i = phi i32 [ %i.iym, %bb.acn ], [ 0, %bb.acj ] ; 2 uses
  %.3.i915.i.i = phi i32 [ %.2.i912.i.i, %bb.acn ], [ %i.giu, %bb.acj ]
  %i.iyn = sext i32 %.385.i914.i.i to i64         ; 2 uses
  %i.iyo = getelementptr inbounds [8 x i8], ptr %i.ivh, i64 %i.iyn
  %i.iyp = load i64, ptr %i.iyo, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.iyq = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.iyn
  %i.iyr = load i64, ptr %i.iyq, align 8, !tbaa !90, !noalias !751
  %i.iys = xor i64 %i.iyr, %i.iyp
  %i.iyt = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.iys)
  %i.iyu = trunc nuw nsw i64 %i.iyt to i32
  %i.iyv = add nsw i32 %.393.i913.i.i, %i.iyu
  %i.iyw = add nsw i32 %.385.i914.i.i, 1
  br label %bb.acp

bb.acp:                                           ; preds = %bb.aco, %bb.acj
  %.494.i916.i.i = phi i32 [ %i.iyv, %bb.aco ], [ 0, %bb.acj ]
  %.486.i917.i.i = phi i32 [ %i.iyw, %bb.aco ], [ 0, %bb.acj ] ; 2 uses
  %.4.i918.i.i = phi i32 [ %.3.i915.i.i, %bb.aco ], [ %i.giu, %bb.acj ]
  %i.iyx = sext i32 %.486.i917.i.i to i64         ; 2 uses
  %i.iyy = getelementptr inbounds [8 x i8], ptr %i.ivh, i64 %i.iyx
  %i.iyz = load i64, ptr %i.iyy, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.iza = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.iyx
  %i.izb = load i64, ptr %i.iza, align 8, !tbaa !90, !noalias !751
  %i.izc = xor i64 %i.izb, %i.iyz
  %i.izd = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.izc)
  %i.ize = trunc nuw nsw i64 %i.izd to i32
  %i.izf = add nsw i32 %.494.i916.i.i, %i.ize
  %i.izg = add nsw i32 %.486.i917.i.i, 1
  br label %bb.acq

bb.acq:                                           ; preds = %bb.acp, %bb.acj
  %.595.i919.i.i = phi i32 [ %i.izf, %bb.acp ], [ 0, %bb.acj ]
  %.587.i920.i.i = phi i32 [ %i.izg, %bb.acp ], [ 0, %bb.acj ] ; 2 uses
  %.5.i921.i.i = phi i32 [ %.4.i918.i.i, %bb.acp ], [ %i.giu, %bb.acj ]
  %i.izh = sext i32 %.587.i920.i.i to i64         ; 2 uses
  %i.izi = getelementptr inbounds [8 x i8], ptr %i.ivh, i64 %i.izh
  %i.izj = load i64, ptr %i.izi, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.izk = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.izh
  %i.izl = load i64, ptr %i.izk, align 8, !tbaa !90, !noalias !751
  %i.izm = xor i64 %i.izl, %i.izj
  %i.izn = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.izm)
  %i.izo = trunc nuw nsw i64 %i.izn to i32
  %i.izp = add nsw i32 %.595.i919.i.i, %i.izo
  %i.izq = add nsw i32 %.587.i920.i.i, 1
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %bb.acj
  %.696.i922.i.i = phi i32 [ %i.izp, %bb.acq ], [ 0, %bb.acj ]
  %.688.i923.i.i = phi i32 [ %i.izq, %bb.acq ], [ 0, %bb.acj ] ; 2 uses
  %.6.i924.i.i = phi i32 [ %.5.i921.i.i, %bb.acq ], [ %i.giu, %bb.acj ]
  %i.izr = sext i32 %.688.i923.i.i to i64         ; 2 uses
  %i.izs = getelementptr inbounds [8 x i8], ptr %i.ivh, i64 %i.izr
  %i.izt = load i64, ptr %i.izs, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.izu = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.izr
  %i.izv = load i64, ptr %i.izu, align 8, !tbaa !90, !noalias !751
  %i.izw = xor i64 %i.izv, %i.izt
  %i.izx = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.izw)
  %i.izy = trunc nuw nsw i64 %i.izx to i32
  %i.izz = add nsw i32 %.696.i922.i.i, %i.izy
  %i.jaa = add nsw i32 %.688.i923.i.i, 1
  br label %bb.acs

bb.acs:                                           ; preds = %bb.acr, %bb.acj
  %.797.i925.i.i = phi i32 [ %i.izz, %bb.acr ], [ 0, %bb.acj ]
  %.789.i926.i.i = phi i32 [ %i.jaa, %bb.acr ], [ 0, %bb.acj ] ; 2 uses
  %.7.i927.i.i = phi i32 [ %.6.i924.i.i, %bb.acr ], [ %i.giu, %bb.acj ]
  %i.jab = sext i32 %.789.i926.i.i to i64         ; 2 uses
  %i.jac = getelementptr inbounds [8 x i8], ptr %i.ivh, i64 %i.jab
  %i.jad = load i64, ptr %i.jac, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jae = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jab
  %i.jaf = load i64, ptr %i.jae, align 8, !tbaa !90, !noalias !751
  %i.jag = xor i64 %i.jaf, %i.jad
  %i.jah = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jag)
  %i.jai = trunc nuw nsw i64 %i.jah to i32
  %i.jaj = add nsw i32 %.797.i925.i.i, %i.jai
  %i.jak = add nsw i32 %.789.i926.i.i, 1
  br label %bb.ack, !llvm.loop !180

bb.act:                                           ; preds = %bb.ack
  br i1 %.not.i753.i.i, label %.noexc366.i.i, label %bb.acu

bb.acu:                                           ; preds = %bb.act
  %i.jal = getelementptr inbounds i8, ptr %i.ixe, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.acv, label %bb.acw

bb.acv:                                           ; preds = %bb.acu
  %i.jam = load i32, ptr %i.iwn, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.jan = load i32, ptr %i.jal, align 4, !tbaa !73, !noalias !751
  %i.jao = xor i32 %i.jan, %i.jam
  %i.jap = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.jao)
  %i.jaq = add nsw i32 %i.jap, %.090.i894.i.i
  %i.jar = getelementptr inbounds nuw i8, ptr %i.jal, i64 4
  br label %bb.acw

bb.acw:                                           ; preds = %bb.acv, %bb.acu
  %.098.i898.i.i = phi i32 [ %i.gja, %bb.acv ], [ %i.giv, %bb.acu ] ; 3 uses
  %.8.i899.i.i = phi i32 [ %i.jaq, %bb.acv ], [ %.090.i894.i.i, %bb.acu ] ; 2 uses
  %.078.i900.i.i = phi ptr [ %i.iwo, %bb.acv ], [ %i.iwn, %bb.acu ] ; 3 uses
  %.0.i901.i.i = phi ptr [ %i.jar, %bb.acv ], [ %i.jal, %bb.acu ] ; 3 uses
  %i.jas = icmp sgt i32 %.098.i898.i.i, 1
  br i1 %i.jas, label %bb.acx, label %bb.acy

bb.acx:                                           ; preds = %bb.acw
  %i.jat = load i16, ptr %.078.i900.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.jau = load i16, ptr %.0.i901.i.i, align 2, !tbaa !181, !noalias !751
  %i.jav = xor i16 %i.jau, %i.jat
  %i.jaw = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.jav)
  %i.jax = zext nneg i16 %i.jaw to i32
  %i.jay = add nsw i32 %.8.i899.i.i, %i.jax
  %i.jaz = getelementptr inbounds nuw i8, ptr %.078.i900.i.i, i64 2
  %i.jba = getelementptr inbounds nuw i8, ptr %.0.i901.i.i, i64 2
  %i.jbb = add nsw i32 %.098.i898.i.i, -2
  br label %bb.acy

bb.acy:                                           ; preds = %bb.acx, %bb.acw
  %.199.i902.i.i = phi i32 [ %i.jbb, %bb.acx ], [ %.098.i898.i.i, %bb.acw ]
  %.9.i903.i.i = phi i32 [ %i.jay, %bb.acx ], [ %.8.i899.i.i, %bb.acw ] ; 2 uses
  %.179.i904.i.i = phi ptr [ %i.jaz, %bb.acx ], [ %.078.i900.i.i, %bb.acw ]
  %.1.i905.i.i = phi ptr [ %i.jba, %bb.acx ], [ %.0.i901.i.i, %bb.acw ]
  %i.jbc = icmp sgt i32 %.199.i902.i.i, 0
  br i1 %i.jbc, label %bb.acz, label %.noexc366.i.i

bb.acz:                                           ; preds = %bb.acy
  %i.jbd = load i8, ptr %.179.i904.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.jbe = load i8, ptr %.1.i905.i.i, align 1, !tbaa !72, !noalias !751
  %i.jbf = xor i8 %i.jbe, %i.jbd
  %i.jbg = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.jbf)
  %i.jbh = zext nneg i8 %i.jbg to i32
  %i.jbi = add nsw i32 %.9.i903.i.i, %i.jbh
  br label %.noexc366.i.i

.noexc366.i.i:                                    ; preds = %bb.acz, %bb.acy, %bb.act
  %.11.i906.i.i = phi i32 [ %.090.i894.i.i, %bb.act ], [ %i.jbi, %bb.acz ], [ %.9.i903.i.i, %bb.acy ] ; 6 uses
  %i.jbj = icmp slt i32 %.11.i906.i.i, %.sroa.48.0257.i.i
  br i1 %i.jbj, label %bb.ada, label %bb.ade

bb.ada:                                           ; preds = %.noexc366.i.i
  br i1 %i.gjd, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i360.i.i, label %.lr.ph.i.i353.i.i

.lr.ph.i.i353.i.i:                                ; preds = %bb.ada, %bb.add
  %i.jbk = phi i64 [ %i.jcn, %bb.add ], [ 3, %bb.ada ]
  %i.jbl = phi i64 [ %i.jcm, %bb.add ], [ 2, %bb.ada ] ; 7 uses
  %.056.i.i354.i.i = phi i64 [ %.1.i.i359.i.i, %bb.add ], [ 1, %bb.ada ] ; 6 uses
  %i.jbm = icmp eq i64 %i.jbl, %i.gjb
  br i1 %i.jbm, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i364.i.i, label %bb.adb

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i364.i.i: ; preds = %.lr.ph.i.i353.i.i
  %.pre.i.i365.i.i = load i32, ptr %.phi.trans.insert.i.i352.i.i, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i362.i.i

bb.adb:                                           ; preds = %.lr.ph.i.i353.i.i
  %i.jbn = getelementptr inbounds nuw [4 x i8], ptr %i.iwp, i64 %i.jbl
  %i.jbo = load i32, ptr %i.jbn, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 4 uses
  %i.jbp = getelementptr [4 x i8], ptr %i.ivj, i64 %i.jbl
  %i.jbq = load i32, ptr %i.jbp, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 5 uses
  %i.jbr = getelementptr [8 x i8], ptr %i.ivk, i64 %i.jbl
  %i.jbs = load i64, ptr %i.jbr, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 3 uses
  %i.jbt = icmp sgt i32 %i.jbo, %i.jbq
  br i1 %i.jbt, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i362.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i355.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i355.i.i:     ; preds = %bb.adb
  %i.jbu = getelementptr inbounds nuw [8 x i8], ptr %i.iwq, i64 %i.jbl
  %i.jbv = load i64, ptr %i.jbu, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.jbw = icmp eq i32 %i.jbo, %i.jbq
  %i.jbx = icmp sgt i64 %i.jbv, %i.jbs
  %i.jby = and i1 %i.jbw, %i.jbx
  br i1 %i.jby, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i362.i.i, label %bb.adc

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i362.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i355.i.i, %bb.adb, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i364.i.i
  %i.jbz = phi i32 [ %.pre.i.i365.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.i364.i.i ], [ %i.jbo, %bb.adb ], [ %i.jbo, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i355.i.i ] ; 3 uses
  %i.jca = icmp sgt i32 %.11.i906.i.i, %i.jbz
  br i1 %i.jca, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i360.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i363.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i363.i.i:   ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i362.i.i
  %i.jcb = getelementptr inbounds nuw [8 x i8], ptr %i.iwq, i64 %i.jbl
  %i.jcc = load i64, ptr %i.jcb, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 2 uses
  %i.jcd = icmp eq i32 %.11.i906.i.i, %i.jbz
  %i.jce = icmp sgt i64 %i.ixg, %i.jcc
  %i.jcf = and i1 %i.jcd, %i.jce
  br i1 %i.jcf, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i360.i.i, label %bb.add

bb.adc:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.i355.i.i
  %i.jcg = icmp sgt i32 %.11.i906.i.i, %i.jbq
  br i1 %i.jcg, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i360.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i356.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i356.i.i:   ; preds = %bb.adc
  %i.jch = icmp eq i32 %.11.i906.i.i, %i.jbq
  %i.jci = icmp sgt i64 %i.ixg, %i.jbs
  %i.jcj = and i1 %i.jch, %i.jci
  br i1 %i.jcj, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i360.i.i, label %bb.add

bb.add:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i356.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i363.i.i
  %.sink71.i.i357.i.i = phi i32 [ %i.jbz, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i363.i.i ], [ %i.jbq, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i356.i.i ]
  %.sink.i.i358.i.i = phi i64 [ %i.jcc, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i363.i.i ], [ %i.jbs, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i356.i.i ]
  %.1.i.i359.i.i = phi i64 [ %i.jbl, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i363.i.i ], [ %i.jbk, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i356.i.i ] ; 3 uses
  %i.jck = getelementptr inbounds nuw [4 x i8], ptr %i.iwp, i64 %.056.i.i354.i.i
  store i32 %.sink71.i.i357.i.i, ptr %i.jck, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.jcl = getelementptr inbounds nuw [8 x i8], ptr %i.iwq, i64 %.056.i.i354.i.i
  store i64 %.sink.i.i358.i.i, ptr %i.jcl, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.jcm = shl i64 %.1.i.i359.i.i, 1              ; 3 uses
  %i.jcn = or disjoint i64 %i.jcm, 1
  %i.jco = icmp ugt i64 %i.jcm, %i.gjb
  br i1 %i.jco, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i360.i.i, label %.lr.ph.i.i353.i.i, !llvm.loop !114

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i360.i.i: ; preds = %bb.add, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i356.i.i, %bb.adc, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i363.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i362.i.i, %bb.ada
  %.0.lcssa.i.i361.i.i = phi i64 [ 1, %bb.ada ], [ %.056.i.i354.i.i, %bb.adc ], [ %.056.i.i354.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i362.i.i ], [ %.056.i.i354.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.i356.i.i ], [ %.056.i.i354.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.i363.i.i ], [ %.1.i.i359.i.i, %bb.add ] ; 2 uses
  %i.jcp = getelementptr inbounds nuw [4 x i8], ptr %i.iwp, i64 %.0.lcssa.i.i361.i.i
  store i32 %.11.i906.i.i, ptr %i.jcp, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.jcq = getelementptr inbounds nuw [8 x i8], ptr %i.iwq, i64 %.0.lcssa.i.i361.i.i
  store i64 %i.ixg, ptr %i.jcq, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.jcr = load i32, ptr %i.ivj, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %bb.ade

bb.ade:                                           ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i360.i.i, %.noexc366.i.i
  %.sroa.48.1.i.i = phi i32 [ %i.jcr, %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i360.i.i ], [ %.sroa.48.0257.i.i, %.noexc366.i.i ]
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.adh
    i32 6, label %bb.adi
    i32 5, label %bb.adj
    i32 4, label %bb.adk
    i32 3, label %bb.adl
    i32 2, label %bb.adm
    i32 1, label %bb.adn
    i32 0, label %bb.adf
  ]

bb.adf:                                           ; preds = %bb.adn, %bb.ade
  %.090.i858.i.i = phi i32 [ %i.jfu, %bb.adn ], [ %i.giw, %bb.ade ] ; 4 uses
  %.082.i859.i.i = phi i32 [ %i.jfv, %bb.adn ], [ %i.giw, %bb.ade ] ; 2 uses
  %.080.i860.i.i = phi i32 [ %.7.i891.i.i, %bb.adn ], [ %i.giu, %bb.ade ] ; 2 uses
  %i.jcs = icmp sgt i32 %.080.i860.i.i, 7
  br i1 %i.jcs, label %bb.adg, label %bb.ado

bb.adg:                                           ; preds = %bb.adf
  %i.jct = add nsw i32 %.080.i860.i.i, -8
  %i.jcu = sext i32 %.082.i859.i.i to i64         ; 2 uses
  %i.jcv = getelementptr inbounds [8 x i8], ptr %i.ivp, i64 %i.jcu
  %i.jcw = load i64, ptr %i.jcv, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jcx = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jcu
  %i.jcy = load i64, ptr %i.jcx, align 8, !tbaa !90, !noalias !751
  %i.jcz = xor i64 %i.jcy, %i.jcw
  %i.jda = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jcz)
  %i.jdb = trunc nuw nsw i64 %i.jda to i32
  %i.jdc = add nsw i32 %.090.i858.i.i, %i.jdb
  %i.jdd = add nsw i32 %.082.i859.i.i, 1
  br label %bb.adh

bb.adh:                                           ; preds = %bb.adg, %bb.ade
  %.191.i871.i.i = phi i32 [ 0, %bb.ade ], [ %i.jdc, %bb.adg ]
  %.183.i872.i.i = phi i32 [ 0, %bb.ade ], [ %i.jdd, %bb.adg ] ; 2 uses
  %.181.i873.i.i = phi i32 [ %i.giu, %bb.ade ], [ %i.jct, %bb.adg ]
  %i.jde = sext i32 %.183.i872.i.i to i64         ; 2 uses
  %i.jdf = getelementptr inbounds [8 x i8], ptr %i.ivp, i64 %i.jde
  %i.jdg = load i64, ptr %i.jdf, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jdh = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jde
  %i.jdi = load i64, ptr %i.jdh, align 8, !tbaa !90, !noalias !751
  %i.jdj = xor i64 %i.jdi, %i.jdg
  %i.jdk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jdj)
  %i.jdl = trunc nuw nsw i64 %i.jdk to i32
  %i.jdm = add nsw i32 %.191.i871.i.i, %i.jdl
  %i.jdn = add nsw i32 %.183.i872.i.i, 1
  br label %bb.adi

bb.adi:                                           ; preds = %bb.adh, %bb.ade
  %.292.i874.i.i = phi i32 [ %i.jdm, %bb.adh ], [ 0, %bb.ade ]
  %.284.i875.i.i = phi i32 [ %i.jdn, %bb.adh ], [ 0, %bb.ade ] ; 2 uses
  %.2.i876.i.i = phi i32 [ %.181.i873.i.i, %bb.adh ], [ %i.giu, %bb.ade ]
  %i.jdo = sext i32 %.284.i875.i.i to i64         ; 2 uses
  %i.jdp = getelementptr inbounds [8 x i8], ptr %i.ivp, i64 %i.jdo
  %i.jdq = load i64, ptr %i.jdp, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jdr = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jdo
  %i.jds = load i64, ptr %i.jdr, align 8, !tbaa !90, !noalias !751
  %i.jdt = xor i64 %i.jds, %i.jdq
  %i.jdu = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jdt)
  %i.jdv = trunc nuw nsw i64 %i.jdu to i32
  %i.jdw = add nsw i32 %.292.i874.i.i, %i.jdv
  %i.jdx = add nsw i32 %.284.i875.i.i, 1
  br label %bb.adj

bb.adj:                                           ; preds = %bb.adi, %bb.ade
  %.393.i877.i.i = phi i32 [ %i.jdw, %bb.adi ], [ 0, %bb.ade ]
  %.385.i878.i.i = phi i32 [ %i.jdx, %bb.adi ], [ 0, %bb.ade ] ; 2 uses
  %.3.i879.i.i = phi i32 [ %.2.i876.i.i, %bb.adi ], [ %i.giu, %bb.ade ]
  %i.jdy = sext i32 %.385.i878.i.i to i64         ; 2 uses
  %i.jdz = getelementptr inbounds [8 x i8], ptr %i.ivp, i64 %i.jdy
  %i.jea = load i64, ptr %i.jdz, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jeb = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jdy
  %i.jec = load i64, ptr %i.jeb, align 8, !tbaa !90, !noalias !751
  %i.jed = xor i64 %i.jec, %i.jea
  %i.jee = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jed)
  %i.jef = trunc nuw nsw i64 %i.jee to i32
  %i.jeg = add nsw i32 %.393.i877.i.i, %i.jef
  %i.jeh = add nsw i32 %.385.i878.i.i, 1
  br label %bb.adk

bb.adk:                                           ; preds = %bb.adj, %bb.ade
  %.494.i880.i.i = phi i32 [ %i.jeg, %bb.adj ], [ 0, %bb.ade ]
  %.486.i881.i.i = phi i32 [ %i.jeh, %bb.adj ], [ 0, %bb.ade ] ; 2 uses
  %.4.i882.i.i = phi i32 [ %.3.i879.i.i, %bb.adj ], [ %i.giu, %bb.ade ]
  %i.jei = sext i32 %.486.i881.i.i to i64         ; 2 uses
  %i.jej = getelementptr inbounds [8 x i8], ptr %i.ivp, i64 %i.jei
  %i.jek = load i64, ptr %i.jej, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jel = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jei
  %i.jem = load i64, ptr %i.jel, align 8, !tbaa !90, !noalias !751
  %i.jen = xor i64 %i.jem, %i.jek
  %i.jeo = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jen)
  %i.jep = trunc nuw nsw i64 %i.jeo to i32
  %i.jeq = add nsw i32 %.494.i880.i.i, %i.jep
  %i.jer = add nsw i32 %.486.i881.i.i, 1
  br label %bb.adl

bb.adl:                                           ; preds = %bb.adk, %bb.ade
  %.595.i883.i.i = phi i32 [ %i.jeq, %bb.adk ], [ 0, %bb.ade ]
  %.587.i884.i.i = phi i32 [ %i.jer, %bb.adk ], [ 0, %bb.ade ] ; 2 uses
  %.5.i885.i.i = phi i32 [ %.4.i882.i.i, %bb.adk ], [ %i.giu, %bb.ade ]
  %i.jes = sext i32 %.587.i884.i.i to i64         ; 2 uses
  %i.jet = getelementptr inbounds [8 x i8], ptr %i.ivp, i64 %i.jes
  %i.jeu = load i64, ptr %i.jet, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jev = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jes
  %i.jew = load i64, ptr %i.jev, align 8, !tbaa !90, !noalias !751
  %i.jex = xor i64 %i.jew, %i.jeu
  %i.jey = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jex)
  %i.jez = trunc nuw nsw i64 %i.jey to i32
  %i.jfa = add nsw i32 %.595.i883.i.i, %i.jez
  %i.jfb = add nsw i32 %.587.i884.i.i, 1
  br label %bb.adm

bb.adm:                                           ; preds = %bb.adl, %bb.ade
  %.696.i886.i.i = phi i32 [ %i.jfa, %bb.adl ], [ 0, %bb.ade ]
  %.688.i887.i.i = phi i32 [ %i.jfb, %bb.adl ], [ 0, %bb.ade ] ; 2 uses
  %.6.i888.i.i = phi i32 [ %.5.i885.i.i, %bb.adl ], [ %i.giu, %bb.ade ]
  %i.jfc = sext i32 %.688.i887.i.i to i64         ; 2 uses
  %i.jfd = getelementptr inbounds [8 x i8], ptr %i.ivp, i64 %i.jfc
  %i.jfe = load i64, ptr %i.jfd, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jff = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jfc
  %i.jfg = load i64, ptr %i.jff, align 8, !tbaa !90, !noalias !751
  %i.jfh = xor i64 %i.jfg, %i.jfe
  %i.jfi = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jfh)
  %i.jfj = trunc nuw nsw i64 %i.jfi to i32
  %i.jfk = add nsw i32 %.696.i886.i.i, %i.jfj
  %i.jfl = add nsw i32 %.688.i887.i.i, 1
  br label %bb.adn

bb.adn:                                           ; preds = %bb.adm, %bb.ade
  %.797.i889.i.i = phi i32 [ %i.jfk, %bb.adm ], [ 0, %bb.ade ]
  %.789.i890.i.i = phi i32 [ %i.jfl, %bb.adm ], [ 0, %bb.ade ] ; 2 uses
  %.7.i891.i.i = phi i32 [ %.6.i888.i.i, %bb.adm ], [ %i.giu, %bb.ade ]
  %i.jfm = sext i32 %.789.i890.i.i to i64         ; 2 uses
  %i.jfn = getelementptr inbounds [8 x i8], ptr %i.ivp, i64 %i.jfm
  %i.jfo = load i64, ptr %i.jfn, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jfp = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jfm
  %i.jfq = load i64, ptr %i.jfp, align 8, !tbaa !90, !noalias !751
  %i.jfr = xor i64 %i.jfq, %i.jfo
  %i.jfs = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jfr)
  %i.jft = trunc nuw nsw i64 %i.jfs to i32
  %i.jfu = add nsw i32 %.797.i889.i.i, %i.jft
  %i.jfv = add nsw i32 %.789.i890.i.i, 1
  br label %bb.adf, !llvm.loop !180

bb.ado:                                           ; preds = %bb.adf
  br i1 %.not.i753.i.i, label %.noexc367.i.i, label %bb.adp

bb.adp:                                           ; preds = %bb.ado
  %i.jfw = getelementptr inbounds i8, ptr %i.ixe, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.adq, label %bb.adr

bb.adq:                                           ; preds = %bb.adp
  %i.jfx = load i32, ptr %i.iwr, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.jfy = load i32, ptr %i.jfw, align 4, !tbaa !73, !noalias !751
  %i.jfz = xor i32 %i.jfy, %i.jfx
  %i.jga = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.jfz)
  %i.jgb = add nsw i32 %i.jga, %.090.i858.i.i
  %i.jgc = getelementptr inbounds nuw i8, ptr %i.jfw, i64 4
  br label %bb.adr

bb.adr:                                           ; preds = %bb.adq, %bb.adp
  %.098.i862.i.i = phi i32 [ %i.gja, %bb.adq ], [ %i.giv, %bb.adp ] ; 3 uses
  %.8.i863.i.i = phi i32 [ %i.jgb, %bb.adq ], [ %.090.i858.i.i, %bb.adp ] ; 2 uses
  %.078.i864.i.i = phi ptr [ %i.iws, %bb.adq ], [ %i.iwr, %bb.adp ] ; 3 uses
  %.0.i865.i.i = phi ptr [ %i.jgc, %bb.adq ], [ %i.jfw, %bb.adp ] ; 3 uses
  %i.jgd = icmp sgt i32 %.098.i862.i.i, 1
  br i1 %i.jgd, label %bb.ads, label %bb.adt

bb.ads:                                           ; preds = %bb.adr
  %i.jge = load i16, ptr %.078.i864.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.jgf = load i16, ptr %.0.i865.i.i, align 2, !tbaa !181, !noalias !751
  %i.jgg = xor i16 %i.jgf, %i.jge
  %i.jgh = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.jgg)
  %i.jgi = zext nneg i16 %i.jgh to i32
  %i.jgj = add nsw i32 %.8.i863.i.i, %i.jgi
  %i.jgk = getelementptr inbounds nuw i8, ptr %.078.i864.i.i, i64 2
  %i.jgl = getelementptr inbounds nuw i8, ptr %.0.i865.i.i, i64 2
  %i.jgm = add nsw i32 %.098.i862.i.i, -2
  br label %bb.adt

bb.adt:                                           ; preds = %bb.ads, %bb.adr
  %.199.i866.i.i = phi i32 [ %i.jgm, %bb.ads ], [ %.098.i862.i.i, %bb.adr ]
  %.9.i867.i.i = phi i32 [ %i.jgj, %bb.ads ], [ %.8.i863.i.i, %bb.adr ] ; 2 uses
  %.179.i868.i.i = phi ptr [ %i.jgk, %bb.ads ], [ %.078.i864.i.i, %bb.adr ]
  %.1.i869.i.i = phi ptr [ %i.jgl, %bb.ads ], [ %.0.i865.i.i, %bb.adr ]
  %i.jgn = icmp sgt i32 %.199.i866.i.i, 0
  br i1 %i.jgn, label %bb.adu, label %.noexc367.i.i

bb.adu:                                           ; preds = %bb.adt
  %i.jgo = load i8, ptr %.179.i868.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.jgp = load i8, ptr %.1.i869.i.i, align 1, !tbaa !72, !noalias !751
  %i.jgq = xor i8 %i.jgp, %i.jgo
  %i.jgr = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.jgq)
  %i.jgs = zext nneg i8 %i.jgr to i32
  %i.jgt = add nsw i32 %.9.i867.i.i, %i.jgs
  br label %.noexc367.i.i

.noexc367.i.i:                                    ; preds = %bb.adu, %bb.adt, %bb.ado
  %.11.i870.i.i = phi i32 [ %.090.i858.i.i, %bb.ado ], [ %i.jgt, %bb.adu ], [ %.9.i867.i.i, %bb.adt ] ; 6 uses
  %i.jgu = icmp slt i32 %.11.i870.i.i, %.sroa.51.0258.i.i
  br i1 %i.jgu, label %bb.adv, label %bb.adz

bb.adv:                                           ; preds = %.noexc367.i.i
  br i1 %i.gjd, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i346.i.i, label %.lr.ph.i.1.i339.i.i

.lr.ph.i.1.i339.i.i:                              ; preds = %bb.adv, %bb.ady
  %i.jgv = phi i64 [ %i.jhy, %bb.ady ], [ 3, %bb.adv ]
  %i.jgw = phi i64 [ %i.jhx, %bb.ady ], [ 2, %bb.adv ] ; 7 uses
  %.056.i.1.i340.i.i = phi i64 [ %.1.i.1.i345.i.i, %bb.ady ], [ 1, %bb.adv ] ; 6 uses
  %i.jgx = icmp eq i64 %i.jgw, %i.gjb
  br i1 %i.jgx, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.1.i350.i.i, label %bb.adw

bb.adw:                                           ; preds = %.lr.ph.i.1.i339.i.i
  %i.jgy = getelementptr inbounds nuw [4 x i8], ptr %i.iwt, i64 %i.jgw
  %i.jgz = load i32, ptr %i.jgy, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 4 uses
  %i.jha = getelementptr [4 x i8], ptr %i.ivr, i64 %i.jgw
  %i.jhb = load i32, ptr %i.jha, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 5 uses
  %i.jhc = getelementptr [8 x i8], ptr %i.ivs, i64 %i.jgw
  %i.jhd = load i64, ptr %i.jhc, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 3 uses
  %i.jhe = icmp sgt i32 %i.jgz, %i.jhb
  br i1 %i.jhe, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i348.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.1.i341.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.1.i341.i.i:   ; preds = %bb.adw
  %i.jhf = getelementptr inbounds nuw [8 x i8], ptr %i.iwu, i64 %i.jgw
  %i.jhg = load i64, ptr %i.jhf, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.jhh = icmp eq i32 %i.jgz, %i.jhb
  %i.jhi = icmp sgt i64 %i.jhg, %i.jhd
  %i.jhj = and i1 %i.jhh, %i.jhi
  br i1 %i.jhj, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i348.i.i, label %bb.adx

bb.adx:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.1.i341.i.i
  %i.jhk = icmp sgt i32 %.11.i870.i.i, %i.jhb
  br i1 %i.jhk, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i346.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i342.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i342.i.i: ; preds = %bb.adx
  %i.jhl = icmp eq i32 %.11.i870.i.i, %i.jhb
  %i.jhm = icmp sgt i64 %i.ixg, %i.jhd
  %i.jhn = and i1 %i.jhl, %i.jhm
  br i1 %i.jhn, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i346.i.i, label %bb.ady

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.1.i350.i.i: ; preds = %.lr.ph.i.1.i339.i.i
  %.pre.i.1.i351.i.i = load i32, ptr %.phi.trans.insert.i.1.i338.i.i, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i348.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i348.i.i: ; preds = %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.1.i350.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.1.i341.i.i, %bb.adw
  %i.jho = phi i32 [ %.pre.i.1.i351.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.1.i350.i.i ], [ %i.jgz, %bb.adw ], [ %i.jgz, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.1.i341.i.i ] ; 3 uses
  %i.jhp = icmp sgt i32 %.11.i870.i.i, %i.jho
  br i1 %i.jhp, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i346.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i349.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i349.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i348.i.i
  %i.jhq = getelementptr inbounds nuw [8 x i8], ptr %i.iwu, i64 %i.jgw
  %i.jhr = load i64, ptr %i.jhq, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 2 uses
  %i.jhs = icmp eq i32 %.11.i870.i.i, %i.jho
  %i.jht = icmp sgt i64 %i.ixg, %i.jhr
  %i.jhu = and i1 %i.jhs, %i.jht
  br i1 %i.jhu, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i346.i.i, label %bb.ady

bb.ady:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i349.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i342.i.i
  %.sink71.i.1.i343.i.i = phi i32 [ %i.jho, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i349.i.i ], [ %i.jhb, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i342.i.i ]
  %.sink.i.1.i344.i.i = phi i64 [ %i.jhr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i349.i.i ], [ %i.jhd, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i342.i.i ]
  %.1.i.1.i345.i.i = phi i64 [ %i.jgw, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i349.i.i ], [ %i.jgv, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i342.i.i ] ; 3 uses
  %i.jhv = getelementptr inbounds nuw [4 x i8], ptr %i.iwt, i64 %.056.i.1.i340.i.i
  store i32 %.sink71.i.1.i343.i.i, ptr %i.jhv, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.jhw = getelementptr inbounds nuw [8 x i8], ptr %i.iwu, i64 %.056.i.1.i340.i.i
  store i64 %.sink.i.1.i344.i.i, ptr %i.jhw, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.jhx = shl i64 %.1.i.1.i345.i.i, 1            ; 3 uses
  %i.jhy = or disjoint i64 %i.jhx, 1
  %i.jhz = icmp ugt i64 %i.jhx, %i.gjb
  br i1 %i.jhz, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i346.i.i, label %.lr.ph.i.1.i339.i.i, !llvm.loop !114

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i346.i.i: ; preds = %bb.ady, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i349.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i348.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i342.i.i, %bb.adx, %bb.adv
  %.0.lcssa.i.1.i347.i.i = phi i64 [ 1, %bb.adv ], [ %.056.i.1.i340.i.i, %bb.adx ], [ %.056.i.1.i340.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.1.i348.i.i ], [ %.056.i.1.i340.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.1.i342.i.i ], [ %.056.i.1.i340.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.1.i349.i.i ], [ %.1.i.1.i345.i.i, %bb.ady ] ; 2 uses
  %i.jia = getelementptr inbounds nuw [4 x i8], ptr %i.iwt, i64 %.0.lcssa.i.1.i347.i.i
  store i32 %.11.i870.i.i, ptr %i.jia, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.jib = getelementptr inbounds nuw [8 x i8], ptr %i.iwu, i64 %.0.lcssa.i.1.i347.i.i
  store i64 %i.ixg, ptr %i.jib, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.jic = load i32, ptr %i.ivr, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %bb.adz

bb.adz:                                           ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i346.i.i, %.noexc367.i.i
  %.sroa.51.1.i.i = phi i32 [ %i.jic, %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.1.i346.i.i ], [ %.sroa.51.0258.i.i, %.noexc367.i.i ]
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.aec
    i32 6, label %bb.aed
    i32 5, label %bb.aee
    i32 4, label %bb.aef
    i32 3, label %bb.aeg
    i32 2, label %bb.aeh
    i32 1, label %bb.aei
    i32 0, label %bb.aea
  ]

bb.aea:                                           ; preds = %bb.aei, %bb.adz
  %.090.i822.i.i = phi i32 [ %i.jlf, %bb.aei ], [ %i.giw, %bb.adz ] ; 4 uses
  %.082.i823.i.i = phi i32 [ %i.jlg, %bb.aei ], [ %i.giw, %bb.adz ] ; 2 uses
  %.080.i824.i.i = phi i32 [ %.7.i855.i.i, %bb.aei ], [ %i.giu, %bb.adz ] ; 2 uses
  %i.jid = icmp sgt i32 %.080.i824.i.i, 7
  br i1 %i.jid, label %bb.aeb, label %bb.aej

bb.aeb:                                           ; preds = %bb.aea
  %i.jie = add nsw i32 %.080.i824.i.i, -8
  %i.jif = sext i32 %.082.i823.i.i to i64         ; 2 uses
  %i.jig = getelementptr inbounds [8 x i8], ptr %i.ivx, i64 %i.jif
  %i.jih = load i64, ptr %i.jig, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jii = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jif
  %i.jij = load i64, ptr %i.jii, align 8, !tbaa !90, !noalias !751
  %i.jik = xor i64 %i.jij, %i.jih
  %i.jil = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jik)
  %i.jim = trunc nuw nsw i64 %i.jil to i32
  %i.jin = add nsw i32 %.090.i822.i.i, %i.jim
  %i.jio = add nsw i32 %.082.i823.i.i, 1
  br label %bb.aec

bb.aec:                                           ; preds = %bb.aeb, %bb.adz
  %.191.i835.i.i = phi i32 [ 0, %bb.adz ], [ %i.jin, %bb.aeb ]
  %.183.i836.i.i = phi i32 [ 0, %bb.adz ], [ %i.jio, %bb.aeb ] ; 2 uses
  %.181.i837.i.i = phi i32 [ %i.giu, %bb.adz ], [ %i.jie, %bb.aeb ]
  %i.jip = sext i32 %.183.i836.i.i to i64         ; 2 uses
  %i.jiq = getelementptr inbounds [8 x i8], ptr %i.ivx, i64 %i.jip
  %i.jir = load i64, ptr %i.jiq, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jis = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jip
  %i.jit = load i64, ptr %i.jis, align 8, !tbaa !90, !noalias !751
  %i.jiu = xor i64 %i.jit, %i.jir
  %i.jiv = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jiu)
  %i.jiw = trunc nuw nsw i64 %i.jiv to i32
  %i.jix = add nsw i32 %.191.i835.i.i, %i.jiw
  %i.jiy = add nsw i32 %.183.i836.i.i, 1
  br label %bb.aed

bb.aed:                                           ; preds = %bb.aec, %bb.adz
  %.292.i838.i.i = phi i32 [ %i.jix, %bb.aec ], [ 0, %bb.adz ]
  %.284.i839.i.i = phi i32 [ %i.jiy, %bb.aec ], [ 0, %bb.adz ] ; 2 uses
  %.2.i840.i.i = phi i32 [ %.181.i837.i.i, %bb.aec ], [ %i.giu, %bb.adz ]
  %i.jiz = sext i32 %.284.i839.i.i to i64         ; 2 uses
  %i.jja = getelementptr inbounds [8 x i8], ptr %i.ivx, i64 %i.jiz
  %i.jjb = load i64, ptr %i.jja, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jjc = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jiz
  %i.jjd = load i64, ptr %i.jjc, align 8, !tbaa !90, !noalias !751
  %i.jje = xor i64 %i.jjd, %i.jjb
  %i.jjf = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jje)
  %i.jjg = trunc nuw nsw i64 %i.jjf to i32
  %i.jjh = add nsw i32 %.292.i838.i.i, %i.jjg
  %i.jji = add nsw i32 %.284.i839.i.i, 1
  br label %bb.aee

bb.aee:                                           ; preds = %bb.aed, %bb.adz
  %.393.i841.i.i = phi i32 [ %i.jjh, %bb.aed ], [ 0, %bb.adz ]
  %.385.i842.i.i = phi i32 [ %i.jji, %bb.aed ], [ 0, %bb.adz ] ; 2 uses
  %.3.i843.i.i = phi i32 [ %.2.i840.i.i, %bb.aed ], [ %i.giu, %bb.adz ]
  %i.jjj = sext i32 %.385.i842.i.i to i64         ; 2 uses
  %i.jjk = getelementptr inbounds [8 x i8], ptr %i.ivx, i64 %i.jjj
  %i.jjl = load i64, ptr %i.jjk, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jjm = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jjj
  %i.jjn = load i64, ptr %i.jjm, align 8, !tbaa !90, !noalias !751
  %i.jjo = xor i64 %i.jjn, %i.jjl
  %i.jjp = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jjo)
  %i.jjq = trunc nuw nsw i64 %i.jjp to i32
  %i.jjr = add nsw i32 %.393.i841.i.i, %i.jjq
  %i.jjs = add nsw i32 %.385.i842.i.i, 1
  br label %bb.aef

bb.aef:                                           ; preds = %bb.aee, %bb.adz
  %.494.i844.i.i = phi i32 [ %i.jjr, %bb.aee ], [ 0, %bb.adz ]
  %.486.i845.i.i = phi i32 [ %i.jjs, %bb.aee ], [ 0, %bb.adz ] ; 2 uses
  %.4.i846.i.i = phi i32 [ %.3.i843.i.i, %bb.aee ], [ %i.giu, %bb.adz ]
  %i.jjt = sext i32 %.486.i845.i.i to i64         ; 2 uses
  %i.jju = getelementptr inbounds [8 x i8], ptr %i.ivx, i64 %i.jjt
  %i.jjv = load i64, ptr %i.jju, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jjw = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jjt
  %i.jjx = load i64, ptr %i.jjw, align 8, !tbaa !90, !noalias !751
  %i.jjy = xor i64 %i.jjx, %i.jjv
  %i.jjz = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jjy)
  %i.jka = trunc nuw nsw i64 %i.jjz to i32
  %i.jkb = add nsw i32 %.494.i844.i.i, %i.jka
  %i.jkc = add nsw i32 %.486.i845.i.i, 1
  br label %bb.aeg

bb.aeg:                                           ; preds = %bb.aef, %bb.adz
  %.595.i847.i.i = phi i32 [ %i.jkb, %bb.aef ], [ 0, %bb.adz ]
  %.587.i848.i.i = phi i32 [ %i.jkc, %bb.aef ], [ 0, %bb.adz ] ; 2 uses
  %.5.i849.i.i = phi i32 [ %.4.i846.i.i, %bb.aef ], [ %i.giu, %bb.adz ]
  %i.jkd = sext i32 %.587.i848.i.i to i64         ; 2 uses
  %i.jke = getelementptr inbounds [8 x i8], ptr %i.ivx, i64 %i.jkd
  %i.jkf = load i64, ptr %i.jke, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jkg = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jkd
  %i.jkh = load i64, ptr %i.jkg, align 8, !tbaa !90, !noalias !751
  %i.jki = xor i64 %i.jkh, %i.jkf
  %i.jkj = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jki)
  %i.jkk = trunc nuw nsw i64 %i.jkj to i32
  %i.jkl = add nsw i32 %.595.i847.i.i, %i.jkk
  %i.jkm = add nsw i32 %.587.i848.i.i, 1
  br label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg, %bb.adz
  %.696.i850.i.i = phi i32 [ %i.jkl, %bb.aeg ], [ 0, %bb.adz ]
  %.688.i851.i.i = phi i32 [ %i.jkm, %bb.aeg ], [ 0, %bb.adz ] ; 2 uses
  %.6.i852.i.i = phi i32 [ %.5.i849.i.i, %bb.aeg ], [ %i.giu, %bb.adz ]
  %i.jkn = sext i32 %.688.i851.i.i to i64         ; 2 uses
  %i.jko = getelementptr inbounds [8 x i8], ptr %i.ivx, i64 %i.jkn
  %i.jkp = load i64, ptr %i.jko, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jkq = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jkn
  %i.jkr = load i64, ptr %i.jkq, align 8, !tbaa !90, !noalias !751
  %i.jks = xor i64 %i.jkr, %i.jkp
  %i.jkt = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jks)
  %i.jku = trunc nuw nsw i64 %i.jkt to i32
  %i.jkv = add nsw i32 %.696.i850.i.i, %i.jku
  %i.jkw = add nsw i32 %.688.i851.i.i, 1
  br label %bb.aei

bb.aei:                                           ; preds = %bb.aeh, %bb.adz
  %.797.i853.i.i = phi i32 [ %i.jkv, %bb.aeh ], [ 0, %bb.adz ]
  %.789.i854.i.i = phi i32 [ %i.jkw, %bb.aeh ], [ 0, %bb.adz ] ; 2 uses
  %.7.i855.i.i = phi i32 [ %.6.i852.i.i, %bb.aeh ], [ %i.giu, %bb.adz ]
  %i.jkx = sext i32 %.789.i854.i.i to i64         ; 2 uses
  %i.jky = getelementptr inbounds [8 x i8], ptr %i.ivx, i64 %i.jkx
  %i.jkz = load i64, ptr %i.jky, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jla = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jkx
  %i.jlb = load i64, ptr %i.jla, align 8, !tbaa !90, !noalias !751
  %i.jlc = xor i64 %i.jlb, %i.jkz
  %i.jld = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jlc)
  %i.jle = trunc nuw nsw i64 %i.jld to i32
  %i.jlf = add nsw i32 %.797.i853.i.i, %i.jle
  %i.jlg = add nsw i32 %.789.i854.i.i, 1
  br label %bb.aea, !llvm.loop !180

bb.aej:                                           ; preds = %bb.aea
  br i1 %.not.i753.i.i, label %.noexc368.i.i, label %bb.aek

bb.aek:                                           ; preds = %bb.aej
  %i.jlh = getelementptr inbounds i8, ptr %i.ixe, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.ael, label %bb.aem

bb.ael:                                           ; preds = %bb.aek
  %i.jli = load i32, ptr %i.iwv, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.jlj = load i32, ptr %i.jlh, align 4, !tbaa !73, !noalias !751
  %i.jlk = xor i32 %i.jlj, %i.jli
  %i.jll = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.jlk)
  %i.jlm = add nsw i32 %i.jll, %.090.i822.i.i
  %i.jln = getelementptr inbounds nuw i8, ptr %i.jlh, i64 4
  br label %bb.aem

bb.aem:                                           ; preds = %bb.ael, %bb.aek
  %.098.i826.i.i = phi i32 [ %i.gja, %bb.ael ], [ %i.giv, %bb.aek ] ; 3 uses
  %.8.i827.i.i = phi i32 [ %i.jlm, %bb.ael ], [ %.090.i822.i.i, %bb.aek ] ; 2 uses
  %.078.i828.i.i = phi ptr [ %i.iww, %bb.ael ], [ %i.iwv, %bb.aek ] ; 3 uses
  %.0.i829.i.i = phi ptr [ %i.jln, %bb.ael ], [ %i.jlh, %bb.aek ] ; 3 uses
  %i.jlo = icmp sgt i32 %.098.i826.i.i, 1
  br i1 %i.jlo, label %bb.aen, label %bb.aeo

bb.aen:                                           ; preds = %bb.aem
  %i.jlp = load i16, ptr %.078.i828.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.jlq = load i16, ptr %.0.i829.i.i, align 2, !tbaa !181, !noalias !751
  %i.jlr = xor i16 %i.jlq, %i.jlp
  %i.jls = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.jlr)
  %i.jlt = zext nneg i16 %i.jls to i32
  %i.jlu = add nsw i32 %.8.i827.i.i, %i.jlt
  %i.jlv = getelementptr inbounds nuw i8, ptr %.078.i828.i.i, i64 2
  %i.jlw = getelementptr inbounds nuw i8, ptr %.0.i829.i.i, i64 2
  %i.jlx = add nsw i32 %.098.i826.i.i, -2
  br label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen, %bb.aem
  %.199.i830.i.i = phi i32 [ %i.jlx, %bb.aen ], [ %.098.i826.i.i, %bb.aem ]
  %.9.i831.i.i = phi i32 [ %i.jlu, %bb.aen ], [ %.8.i827.i.i, %bb.aem ] ; 2 uses
  %.179.i832.i.i = phi ptr [ %i.jlv, %bb.aen ], [ %.078.i828.i.i, %bb.aem ]
  %.1.i833.i.i = phi ptr [ %i.jlw, %bb.aen ], [ %.0.i829.i.i, %bb.aem ]
  %i.jly = icmp sgt i32 %.199.i830.i.i, 0
  br i1 %i.jly, label %bb.aep, label %.noexc368.i.i

bb.aep:                                           ; preds = %bb.aeo
  %i.jlz = load i8, ptr %.179.i832.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.jma = load i8, ptr %.1.i833.i.i, align 1, !tbaa !72, !noalias !751
  %i.jmb = xor i8 %i.jma, %i.jlz
  %i.jmc = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.jmb)
  %i.jmd = zext nneg i8 %i.jmc to i32
  %i.jme = add nsw i32 %.9.i831.i.i, %i.jmd
  br label %.noexc368.i.i

.noexc368.i.i:                                    ; preds = %bb.aep, %bb.aeo, %bb.aej
  %.11.i834.i.i = phi i32 [ %.090.i822.i.i, %bb.aej ], [ %i.jme, %bb.aep ], [ %.9.i831.i.i, %bb.aeo ] ; 6 uses
  %i.jmf = icmp slt i32 %.11.i834.i.i, %.sroa.54.0259.i.i
  br i1 %i.jmf, label %bb.aeq, label %bb.aeu

bb.aeq:                                           ; preds = %.noexc368.i.i
  br i1 %i.gjd, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i332.i.i, label %.lr.ph.i.2.i325.i.i

.lr.ph.i.2.i325.i.i:                              ; preds = %bb.aeq, %bb.aet
  %i.jmg = phi i64 [ %i.jnj, %bb.aet ], [ 3, %bb.aeq ]
  %i.jmh = phi i64 [ %i.jni, %bb.aet ], [ 2, %bb.aeq ] ; 7 uses
  %.056.i.2.i326.i.i = phi i64 [ %.1.i.2.i331.i.i, %bb.aet ], [ 1, %bb.aeq ] ; 6 uses
  %i.jmi = icmp eq i64 %i.jmh, %i.gjb
  br i1 %i.jmi, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.2.i336.i.i, label %bb.aer

bb.aer:                                           ; preds = %.lr.ph.i.2.i325.i.i
  %i.jmj = getelementptr inbounds nuw [4 x i8], ptr %i.iwx, i64 %i.jmh
  %i.jmk = load i32, ptr %i.jmj, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 4 uses
  %i.jml = getelementptr [4 x i8], ptr %i.ivz, i64 %i.jmh
  %i.jmm = load i32, ptr %i.jml, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 5 uses
  %i.jmn = getelementptr [8 x i8], ptr %i.iwa, i64 %i.jmh
  %i.jmo = load i64, ptr %i.jmn, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 3 uses
  %i.jmp = icmp sgt i32 %i.jmk, %i.jmm
  br i1 %i.jmp, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i334.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.2.i327.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.2.i327.i.i:   ; preds = %bb.aer
  %i.jmq = getelementptr inbounds nuw [8 x i8], ptr %i.iwy, i64 %i.jmh
  %i.jmr = load i64, ptr %i.jmq, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.jms = icmp eq i32 %i.jmk, %i.jmm
  %i.jmt = icmp sgt i64 %i.jmr, %i.jmo
  %i.jmu = and i1 %i.jms, %i.jmt
  br i1 %i.jmu, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i334.i.i, label %bb.aes

bb.aes:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.2.i327.i.i
  %i.jmv = icmp sgt i32 %.11.i834.i.i, %i.jmm
  br i1 %i.jmv, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i332.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i328.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i328.i.i: ; preds = %bb.aes
  %i.jmw = icmp eq i32 %.11.i834.i.i, %i.jmm
  %i.jmx = icmp sgt i64 %i.ixg, %i.jmo
  %i.jmy = and i1 %i.jmw, %i.jmx
  br i1 %i.jmy, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i332.i.i, label %bb.aet

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.2.i336.i.i: ; preds = %.lr.ph.i.2.i325.i.i
  %.pre.i.2.i337.i.i = load i32, ptr %.phi.trans.insert.i.2.i324.i.i, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i334.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i334.i.i: ; preds = %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.2.i336.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.2.i327.i.i, %bb.aer
  %i.jmz = phi i32 [ %.pre.i.2.i337.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.2.i336.i.i ], [ %i.jmk, %bb.aer ], [ %i.jmk, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.2.i327.i.i ] ; 3 uses
  %i.jna = icmp sgt i32 %.11.i834.i.i, %i.jmz
  br i1 %i.jna, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i332.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i335.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i335.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i334.i.i
  %i.jnb = getelementptr inbounds nuw [8 x i8], ptr %i.iwy, i64 %i.jmh
  %i.jnc = load i64, ptr %i.jnb, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 2 uses
  %i.jnd = icmp eq i32 %.11.i834.i.i, %i.jmz
  %i.jne = icmp sgt i64 %i.ixg, %i.jnc
  %i.jnf = and i1 %i.jnd, %i.jne
  br i1 %i.jnf, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i332.i.i, label %bb.aet

bb.aet:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i335.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i328.i.i
  %.sink71.i.2.i329.i.i = phi i32 [ %i.jmz, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i335.i.i ], [ %i.jmm, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i328.i.i ]
  %.sink.i.2.i330.i.i = phi i64 [ %i.jnc, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i335.i.i ], [ %i.jmo, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i328.i.i ]
  %.1.i.2.i331.i.i = phi i64 [ %i.jmh, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i335.i.i ], [ %i.jmg, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i328.i.i ] ; 3 uses
  %i.jng = getelementptr inbounds nuw [4 x i8], ptr %i.iwx, i64 %.056.i.2.i326.i.i
  store i32 %.sink71.i.2.i329.i.i, ptr %i.jng, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.jnh = getelementptr inbounds nuw [8 x i8], ptr %i.iwy, i64 %.056.i.2.i326.i.i
  store i64 %.sink.i.2.i330.i.i, ptr %i.jnh, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.jni = shl i64 %.1.i.2.i331.i.i, 1            ; 3 uses
  %i.jnj = or disjoint i64 %i.jni, 1
  %i.jnk = icmp ugt i64 %i.jni, %i.gjb
  br i1 %i.jnk, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i332.i.i, label %.lr.ph.i.2.i325.i.i, !llvm.loop !114

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i332.i.i: ; preds = %bb.aet, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i335.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i334.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i328.i.i, %bb.aes, %bb.aeq
  %.0.lcssa.i.2.i333.i.i = phi i64 [ 1, %bb.aeq ], [ %.056.i.2.i326.i.i, %bb.aes ], [ %.056.i.2.i326.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.2.i334.i.i ], [ %.056.i.2.i326.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.2.i328.i.i ], [ %.056.i.2.i326.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.2.i335.i.i ], [ %.1.i.2.i331.i.i, %bb.aet ] ; 2 uses
  %i.jnl = getelementptr inbounds nuw [4 x i8], ptr %i.iwx, i64 %.0.lcssa.i.2.i333.i.i
  store i32 %.11.i834.i.i, ptr %i.jnl, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.jnm = getelementptr inbounds nuw [8 x i8], ptr %i.iwy, i64 %.0.lcssa.i.2.i333.i.i
  store i64 %i.ixg, ptr %i.jnm, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.jnn = load i32, ptr %i.ivz, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %bb.aeu

bb.aeu:                                           ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i332.i.i, %.noexc368.i.i
  %.sroa.54.1.i.i752 = phi i32 [ %i.jnn, %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.2.i332.i.i ], [ %.sroa.54.0259.i.i, %.noexc368.i.i ]
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.aex
    i32 6, label %bb.aey
    i32 5, label %bb.aez
    i32 4, label %bb.afa
    i32 3, label %bb.afb
    i32 2, label %bb.afc
    i32 1, label %bb.afd
    i32 0, label %bb.aev
  ]

bb.aev:                                           ; preds = %bb.afd, %bb.aeu
  %.090.i786.i.i = phi i32 [ %i.jqq, %bb.afd ], [ %i.giw, %bb.aeu ] ; 4 uses
  %.082.i787.i.i = phi i32 [ %i.jqr, %bb.afd ], [ %i.giw, %bb.aeu ] ; 2 uses
  %.080.i788.i.i = phi i32 [ %.7.i819.i.i, %bb.afd ], [ %i.giu, %bb.aeu ] ; 2 uses
  %i.jno = icmp sgt i32 %.080.i788.i.i, 7
  br i1 %i.jno, label %bb.aew, label %bb.afe

bb.aew:                                           ; preds = %bb.aev
  %i.jnp = add nsw i32 %.080.i788.i.i, -8
  %i.jnq = sext i32 %.082.i787.i.i to i64         ; 2 uses
  %i.jnr = getelementptr inbounds [8 x i8], ptr %i.iwf, i64 %i.jnq
  %i.jns = load i64, ptr %i.jnr, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jnt = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jnq
  %i.jnu = load i64, ptr %i.jnt, align 8, !tbaa !90, !noalias !751
  %i.jnv = xor i64 %i.jnu, %i.jns
  %i.jnw = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jnv)
  %i.jnx = trunc nuw nsw i64 %i.jnw to i32
  %i.jny = add nsw i32 %.090.i786.i.i, %i.jnx
  %i.jnz = add nsw i32 %.082.i787.i.i, 1
  br label %bb.aex

bb.aex:                                           ; preds = %bb.aew, %bb.aeu
  %.191.i799.i.i = phi i32 [ 0, %bb.aeu ], [ %i.jny, %bb.aew ]
  %.183.i800.i.i = phi i32 [ 0, %bb.aeu ], [ %i.jnz, %bb.aew ] ; 2 uses
  %.181.i801.i.i = phi i32 [ %i.giu, %bb.aeu ], [ %i.jnp, %bb.aew ]
  %i.joa = sext i32 %.183.i800.i.i to i64         ; 2 uses
  %i.job = getelementptr inbounds [8 x i8], ptr %i.iwf, i64 %i.joa
  %i.joc = load i64, ptr %i.job, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jod = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.joa
  %i.joe = load i64, ptr %i.jod, align 8, !tbaa !90, !noalias !751
  %i.jof = xor i64 %i.joe, %i.joc
  %i.jog = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jof)
  %i.joh = trunc nuw nsw i64 %i.jog to i32
  %i.joi = add nsw i32 %.191.i799.i.i, %i.joh
  %i.joj = add nsw i32 %.183.i800.i.i, 1
  br label %bb.aey

bb.aey:                                           ; preds = %bb.aex, %bb.aeu
  %.292.i802.i.i = phi i32 [ %i.joi, %bb.aex ], [ 0, %bb.aeu ]
  %.284.i803.i.i = phi i32 [ %i.joj, %bb.aex ], [ 0, %bb.aeu ] ; 2 uses
  %.2.i804.i.i = phi i32 [ %.181.i801.i.i, %bb.aex ], [ %i.giu, %bb.aeu ]
  %i.jok = sext i32 %.284.i803.i.i to i64         ; 2 uses
  %i.jol = getelementptr inbounds [8 x i8], ptr %i.iwf, i64 %i.jok
  %i.jom = load i64, ptr %i.jol, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jon = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jok
  %i.joo = load i64, ptr %i.jon, align 8, !tbaa !90, !noalias !751
  %i.jop = xor i64 %i.joo, %i.jom
  %i.joq = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jop)
  %i.jor = trunc nuw nsw i64 %i.joq to i32
  %i.jos = add nsw i32 %.292.i802.i.i, %i.jor
  %i.jot = add nsw i32 %.284.i803.i.i, 1
  br label %bb.aez

bb.aez:                                           ; preds = %bb.aey, %bb.aeu
  %.393.i805.i.i = phi i32 [ %i.jos, %bb.aey ], [ 0, %bb.aeu ]
  %.385.i806.i.i = phi i32 [ %i.jot, %bb.aey ], [ 0, %bb.aeu ] ; 2 uses
  %.3.i807.i.i = phi i32 [ %.2.i804.i.i, %bb.aey ], [ %i.giu, %bb.aeu ]
  %i.jou = sext i32 %.385.i806.i.i to i64         ; 2 uses
  %i.jov = getelementptr inbounds [8 x i8], ptr %i.iwf, i64 %i.jou
  %i.jow = load i64, ptr %i.jov, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jox = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jou
  %i.joy = load i64, ptr %i.jox, align 8, !tbaa !90, !noalias !751
  %i.joz = xor i64 %i.joy, %i.jow
  %i.jpa = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.joz)
  %i.jpb = trunc nuw nsw i64 %i.jpa to i32
  %i.jpc = add nsw i32 %.393.i805.i.i, %i.jpb
  %i.jpd = add nsw i32 %.385.i806.i.i, 1
  br label %bb.afa

bb.afa:                                           ; preds = %bb.aez, %bb.aeu
  %.494.i808.i.i = phi i32 [ %i.jpc, %bb.aez ], [ 0, %bb.aeu ]
  %.486.i809.i.i = phi i32 [ %i.jpd, %bb.aez ], [ 0, %bb.aeu ] ; 2 uses
  %.4.i810.i.i = phi i32 [ %.3.i807.i.i, %bb.aez ], [ %i.giu, %bb.aeu ]
  %i.jpe = sext i32 %.486.i809.i.i to i64         ; 2 uses
  %i.jpf = getelementptr inbounds [8 x i8], ptr %i.iwf, i64 %i.jpe
  %i.jpg = load i64, ptr %i.jpf, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jph = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jpe
  %i.jpi = load i64, ptr %i.jph, align 8, !tbaa !90, !noalias !751
  %i.jpj = xor i64 %i.jpi, %i.jpg
  %i.jpk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jpj)
  %i.jpl = trunc nuw nsw i64 %i.jpk to i32
  %i.jpm = add nsw i32 %.494.i808.i.i, %i.jpl
  %i.jpn = add nsw i32 %.486.i809.i.i, 1
  br label %bb.afb

bb.afb:                                           ; preds = %bb.afa, %bb.aeu
  %.595.i811.i.i = phi i32 [ %i.jpm, %bb.afa ], [ 0, %bb.aeu ]
  %.587.i812.i.i = phi i32 [ %i.jpn, %bb.afa ], [ 0, %bb.aeu ] ; 2 uses
  %.5.i813.i.i = phi i32 [ %.4.i810.i.i, %bb.afa ], [ %i.giu, %bb.aeu ]
  %i.jpo = sext i32 %.587.i812.i.i to i64         ; 2 uses
  %i.jpp = getelementptr inbounds [8 x i8], ptr %i.iwf, i64 %i.jpo
  %i.jpq = load i64, ptr %i.jpp, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jpr = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jpo
  %i.jps = load i64, ptr %i.jpr, align 8, !tbaa !90, !noalias !751
  %i.jpt = xor i64 %i.jps, %i.jpq
  %i.jpu = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jpt)
  %i.jpv = trunc nuw nsw i64 %i.jpu to i32
  %i.jpw = add nsw i32 %.595.i811.i.i, %i.jpv
  %i.jpx = add nsw i32 %.587.i812.i.i, 1
  br label %bb.afc

bb.afc:                                           ; preds = %bb.afb, %bb.aeu
  %.696.i814.i.i = phi i32 [ %i.jpw, %bb.afb ], [ 0, %bb.aeu ]
  %.688.i815.i.i = phi i32 [ %i.jpx, %bb.afb ], [ 0, %bb.aeu ] ; 2 uses
  %.6.i816.i.i = phi i32 [ %.5.i813.i.i, %bb.afb ], [ %i.giu, %bb.aeu ]
  %i.jpy = sext i32 %.688.i815.i.i to i64         ; 2 uses
  %i.jpz = getelementptr inbounds [8 x i8], ptr %i.iwf, i64 %i.jpy
  %i.jqa = load i64, ptr %i.jpz, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jqb = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jpy
  %i.jqc = load i64, ptr %i.jqb, align 8, !tbaa !90, !noalias !751
  %i.jqd = xor i64 %i.jqc, %i.jqa
  %i.jqe = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jqd)
  %i.jqf = trunc nuw nsw i64 %i.jqe to i32
  %i.jqg = add nsw i32 %.696.i814.i.i, %i.jqf
  %i.jqh = add nsw i32 %.688.i815.i.i, 1
  br label %bb.afd

bb.afd:                                           ; preds = %bb.afc, %bb.aeu
  %.797.i817.i.i = phi i32 [ %i.jqg, %bb.afc ], [ 0, %bb.aeu ]
  %.789.i818.i.i = phi i32 [ %i.jqh, %bb.afc ], [ 0, %bb.aeu ] ; 2 uses
  %.7.i819.i.i = phi i32 [ %.6.i816.i.i, %bb.afc ], [ %i.giu, %bb.aeu ]
  %i.jqi = sext i32 %.789.i818.i.i to i64         ; 2 uses
  %i.jqj = getelementptr inbounds [8 x i8], ptr %i.iwf, i64 %i.jqi
  %i.jqk = load i64, ptr %i.jqj, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jql = getelementptr inbounds [8 x i8], ptr %i.ixe, i64 %i.jqi
  %i.jqm = load i64, ptr %i.jql, align 8, !tbaa !90, !noalias !751
  %i.jqn = xor i64 %i.jqm, %i.jqk
  %i.jqo = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jqn)
  %i.jqp = trunc nuw nsw i64 %i.jqo to i32
  %i.jqq = add nsw i32 %.797.i817.i.i, %i.jqp
  %i.jqr = add nsw i32 %.789.i818.i.i, 1
  br label %bb.aev, !llvm.loop !180

bb.afe:                                           ; preds = %bb.aev
  br i1 %.not.i753.i.i, label %.noexc369.i.i, label %bb.aff

bb.aff:                                           ; preds = %bb.afe
  %i.jqs = getelementptr inbounds i8, ptr %i.ixe, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.afg, label %bb.afh

bb.afg:                                           ; preds = %bb.aff
  %i.jqt = load i32, ptr %i.iwz, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.jqu = load i32, ptr %i.jqs, align 4, !tbaa !73, !noalias !751
  %i.jqv = xor i32 %i.jqu, %i.jqt
  %i.jqw = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.jqv)
  %i.jqx = add nsw i32 %i.jqw, %.090.i786.i.i
  %i.jqy = getelementptr inbounds nuw i8, ptr %i.jqs, i64 4
  br label %bb.afh

bb.afh:                                           ; preds = %bb.afg, %bb.aff
  %.098.i790.i.i = phi i32 [ %i.gja, %bb.afg ], [ %i.giv, %bb.aff ] ; 3 uses
  %.8.i791.i.i = phi i32 [ %i.jqx, %bb.afg ], [ %.090.i786.i.i, %bb.aff ] ; 2 uses
  %.078.i792.i.i = phi ptr [ %i.ixa, %bb.afg ], [ %i.iwz, %bb.aff ] ; 3 uses
  %.0.i793.i.i = phi ptr [ %i.jqy, %bb.afg ], [ %i.jqs, %bb.aff ] ; 3 uses
  %i.jqz = icmp sgt i32 %.098.i790.i.i, 1
  br i1 %i.jqz, label %bb.afi, label %bb.afj

bb.afi:                                           ; preds = %bb.afh
  %i.jra = load i16, ptr %.078.i792.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.jrb = load i16, ptr %.0.i793.i.i, align 2, !tbaa !181, !noalias !751
  %i.jrc = xor i16 %i.jrb, %i.jra
  %i.jrd = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.jrc)
  %i.jre = zext nneg i16 %i.jrd to i32
  %i.jrf = add nsw i32 %.8.i791.i.i, %i.jre
  %i.jrg = getelementptr inbounds nuw i8, ptr %.078.i792.i.i, i64 2
  %i.jrh = getelementptr inbounds nuw i8, ptr %.0.i793.i.i, i64 2
  %i.jri = add nsw i32 %.098.i790.i.i, -2
  br label %bb.afj

bb.afj:                                           ; preds = %bb.afi, %bb.afh
  %.199.i794.i.i = phi i32 [ %i.jri, %bb.afi ], [ %.098.i790.i.i, %bb.afh ]
  %.9.i795.i.i = phi i32 [ %i.jrf, %bb.afi ], [ %.8.i791.i.i, %bb.afh ] ; 2 uses
  %.179.i796.i.i = phi ptr [ %i.jrg, %bb.afi ], [ %.078.i792.i.i, %bb.afh ]
  %.1.i797.i.i = phi ptr [ %i.jrh, %bb.afi ], [ %.0.i793.i.i, %bb.afh ]
  %i.jrj = icmp sgt i32 %.199.i794.i.i, 0
  br i1 %i.jrj, label %bb.afk, label %.noexc369.i.i

bb.afk:                                           ; preds = %bb.afj
  %i.jrk = load i8, ptr %.179.i796.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.jrl = load i8, ptr %.1.i797.i.i, align 1, !tbaa !72, !noalias !751
  %i.jrm = xor i8 %i.jrl, %i.jrk
  %i.jrn = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.jrm)
  %i.jro = zext nneg i8 %i.jrn to i32
  %i.jrp = add nsw i32 %.9.i795.i.i, %i.jro
  br label %.noexc369.i.i

.noexc369.i.i:                                    ; preds = %bb.afk, %bb.afj, %bb.afe
  %.11.i798.i.i = phi i32 [ %.090.i786.i.i, %bb.afe ], [ %i.jrp, %bb.afk ], [ %.9.i795.i.i, %bb.afj ] ; 6 uses
  %i.jrq = icmp slt i32 %.11.i798.i.i, %.sroa.57.0260.i.i
  br i1 %i.jrq, label %bb.afl, label %_ZN5faiss12_GLOBAL__N_120BlockSearchVariableKINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4EE9add_bcodeEPKhl.exit.i.i

bb.afl:                                           ; preds = %.noexc369.i.i
  br i1 %i.gjd, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i318.i.i, label %.lr.ph.i.3.i311.i.i

.lr.ph.i.3.i311.i.i:                              ; preds = %bb.afl, %bb.afo
  %i.jrr = phi i64 [ %i.jsu, %bb.afo ], [ 3, %bb.afl ]
  %i.jrs = phi i64 [ %i.jst, %bb.afo ], [ 2, %bb.afl ] ; 7 uses
  %.056.i.3.i312.i.i = phi i64 [ %.1.i.3.i317.i.i, %bb.afo ], [ 1, %bb.afl ] ; 6 uses
  %i.jrt = icmp eq i64 %i.jrs, %i.gjb
  br i1 %i.jrt, label %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.3.i322.i.i, label %bb.afm

bb.afm:                                           ; preds = %.lr.ph.i.3.i311.i.i
  %i.jru = getelementptr inbounds nuw [4 x i8], ptr %i.ixb, i64 %i.jrs
  %i.jrv = load i32, ptr %i.jru, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 4 uses
  %i.jrw = getelementptr [4 x i8], ptr %i.iwh, i64 %i.jrs
  %i.jrx = load i32, ptr %i.jrw, align 4, !tbaa !73, !alias.scope !753, !noalias !762 ; 5 uses
  %i.jry = getelementptr [8 x i8], ptr %i.iwi, i64 %i.jrs
  %i.jrz = load i64, ptr %i.jry, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 3 uses
  %i.jsa = icmp sgt i32 %i.jrv, %i.jrx
  br i1 %i.jsa, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i320.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.3.i313.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.3.i313.i.i:   ; preds = %bb.afm
  %i.jsb = getelementptr inbounds nuw [8 x i8], ptr %i.ixc, i64 %i.jrs
  %i.jsc = load i64, ptr %i.jsb, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.jsd = icmp eq i32 %i.jrv, %i.jrx
  %i.jse = icmp sgt i64 %i.jsc, %i.jrz
  %i.jsf = and i1 %i.jsd, %i.jse
  br i1 %i.jsf, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i320.i.i, label %bb.afn

bb.afn:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.3.i313.i.i
  %i.jsg = icmp sgt i32 %.11.i798.i.i, %i.jrx
  br i1 %i.jsg, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i318.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i314.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i314.i.i: ; preds = %bb.afn
  %i.jsh = icmp eq i32 %.11.i798.i.i, %i.jrx
  %i.jsi = icmp sgt i64 %i.ixg, %i.jrz
  %i.jsj = and i1 %i.jsh, %i.jsi
  br i1 %i.jsj, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i318.i.i, label %bb.afo

.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.3.i322.i.i: ; preds = %.lr.ph.i.3.i311.i.i
  %.pre.i.3.i323.i.i = load i32, ptr %.phi.trans.insert.i.3.i310.i.i, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i320.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i320.i.i: ; preds = %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.3.i322.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.3.i313.i.i, %bb.afm
  %i.jsk = phi i32 [ %.pre.i.3.i323.i.i, %.lr.ph._ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread_crit_edge.i.3.i322.i.i ], [ %i.jrv, %bb.afm ], [ %i.jrv, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.i.3.i313.i.i ] ; 3 uses
  %i.jsl = icmp sgt i32 %.11.i798.i.i, %i.jsk
  br i1 %i.jsl, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i318.i.i, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i321.i.i

_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i321.i.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i320.i.i
  %i.jsm = getelementptr inbounds nuw [8 x i8], ptr %i.ixc, i64 %i.jrs
  %i.jsn = load i64, ptr %i.jsm, align 8, !tbaa !90, !alias.scope !755, !noalias !761 ; 2 uses
  %i.jso = icmp eq i32 %.11.i798.i.i, %i.jsk
  %i.jsp = icmp sgt i64 %i.ixg, %i.jsn
  %i.jsq = and i1 %i.jso, %i.jsp
  br i1 %i.jsq, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i318.i.i, label %bb.afo

bb.afo:                                           ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i321.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i314.i.i
  %.sink71.i.3.i315.i.i = phi i32 [ %i.jsk, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i321.i.i ], [ %i.jrx, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i314.i.i ]
  %.sink.i.3.i316.i.i = phi i64 [ %i.jsn, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i321.i.i ], [ %i.jrz, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i314.i.i ]
  %.1.i.3.i317.i.i = phi i64 [ %i.jrs, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i321.i.i ], [ %i.jrr, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i314.i.i ] ; 3 uses
  %i.jsr = getelementptr inbounds nuw [4 x i8], ptr %i.ixb, i64 %.056.i.3.i312.i.i
  store i32 %.sink71.i.3.i315.i.i, ptr %i.jsr, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.jss = getelementptr inbounds nuw [8 x i8], ptr %i.ixc, i64 %.056.i.3.i312.i.i
  store i64 %.sink.i.3.i316.i.i, ptr %i.jss, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.jst = shl i64 %.1.i.3.i317.i.i, 1            ; 3 uses
  %i.jsu = or disjoint i64 %i.jst, 1
  %i.jsv = icmp ugt i64 %i.jst, %i.gjb
  br i1 %i.jsv, label %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i318.i.i, label %.lr.ph.i.3.i311.i.i, !llvm.loop !114

_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i318.i.i: ; preds = %bb.afo, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i321.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i320.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i314.i.i, %bb.afn, %bb.afl
  %.0.lcssa.i.3.i319.i.i = phi i64 [ 1, %bb.afl ], [ %.056.i.3.i312.i.i, %bb.afn ], [ %.056.i.3.i312.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.3.i320.i.i ], [ %.056.i.3.i312.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit55.i.3.i314.i.i ], [ %.056.i.3.i312.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit54.i.3.i321.i.i ], [ %.1.i.3.i317.i.i, %bb.afo ] ; 2 uses
  %i.jsw = getelementptr inbounds nuw [4 x i8], ptr %i.ixb, i64 %.0.lcssa.i.3.i319.i.i
  store i32 %.11.i798.i.i, ptr %i.jsw, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.jsx = getelementptr inbounds nuw [8 x i8], ptr %i.ixc, i64 %.0.lcssa.i.3.i319.i.i
  store i64 %i.ixg, ptr %i.jsx, align 8, !tbaa !90, !alias.scope !755, !noalias !761
  %i.jsy = load i32, ptr %i.iwh, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  br label %_ZN5faiss12_GLOBAL__N_120BlockSearchVariableKINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4EE9add_bcodeEPKhl.exit.i.i

_ZN5faiss12_GLOBAL__N_120BlockSearchVariableKINS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEELi4EE9add_bcodeEPKhl.exit.i.i: ; preds = %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i318.i.i, %.noexc369.i.i
  %.sroa.57.1.i.i = phi i32 [ %i.jsy, %_ZN5faiss16heap_replace_topINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.3.i318.i.i ], [ %.sroa.57.0260.i.i, %.noexc369.i.i ]
  %i.jsz = add nuw nsw i64 %.0190261.i.i, 1       ; 2 uses
  %exitcond410.not.i.i = icmp eq i64 %i.jsz, %i.gkd
  br i1 %exitcond410.not.i.i, label %.loopexit89.i.i, label %bb.acj, !llvm.loop !813

.loopexit94.i.i:                                  ; preds = %.loopexit92.i.i, %.loopexit91.i.i, %.loopexit90.i.i, %.loopexit89.i.i, %.preheader93.i.i, %.preheader95.i.i, %.preheader97.i.i, %.preheader99.i.i
  %.4198.i.i674 = phi i64 [ %i.ivc, %.loopexit89.i.i ], [ %i.gkn, %.loopexit90.i.i ], [ %i.hda, %.loopexit91.i.i ], [ 0, %.preheader93.i.i ], [ 0, %.preheader95.i.i ], [ 0, %.preheader97.i.i ], [ 0, %.preheader99.i.i ], [ %i.hxd, %.loopexit92.i.i ] ; 2 uses
  %i.jta = icmp slt i64 %.4198.i.i674, %i.gjo
  br i1 %i.jta, label %.lr.ph275.i.i, label %._crit_edge276.split.i.i

.lr.ph275.i.i:                                    ; preds = %.loopexit94.i.i
  %i.jtb = getelementptr [4 x i8], ptr %i.ghu, i64 %i.gjk
  %i.jtc = icmp sgt i64 %i.gkd, 0
  br i1 %i.jtc, label %.lr.ph271.i.i, label %._crit_edge276.split.i.i

.lr.ph271.i.i:                                    ; preds = %.lr.ph275.i.i, %._crit_edge272.i.i
  %.5199273.i.i = phi i64 [ %i.jtq, %._crit_edge272.i.i ], [ %.4198.i.i674, %.lr.ph275.i.i ] ; 2 uses
  %i.jtd = getelementptr [4 x i8], ptr %i.jtb, i64 %.5199273.i.i
  %i.jte = load i32, ptr %i.jtd, align 4, !tbaa !73, !noalias !751
  %i.jtf = sext i32 %i.jte to i64                 ; 2 uses
  %i.jtg = mul nsw i64 %i.jtf, %i.gis
  %i.jth = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.jtg ; 9 uses
  %i.jti = mul nsw i64 %i.m, %i.jtf               ; 2 uses
  %i.jtj = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.jti ; 2 uses
  %i.jtk = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.jti ; 4 uses
  %i.jtl = load i32, ptr %i.jtk, align 4, !tbaa !73, !alias.scope !753, !noalias !762
  %i.jtm = getelementptr inbounds i8, ptr %i.jth, i64 %i.giy ; 3 uses
  %i.jtn = getelementptr inbounds nuw i8, ptr %i.jtm, i64 4
  %i.jto = getelementptr inbounds i8, ptr %i.jtk, i64 -4 ; 4 uses
  %i.jtp = getelementptr inbounds i8, ptr %i.jtj, i64 -8 ; 4 uses
  %.phi.trans.insert.i.i.i676 = getelementptr inbounds nuw [4 x i8], ptr %i.jto, i64 %i.m
  br label %bb.afp

._crit_edge272.i.i:                               ; preds = %bb.agk
  %i.jtq = add nuw nsw i64 %.5199273.i.i, 1       ; 2 uses
  %i.jtr = icmp slt i64 %i.jtq, %i.gjo
  br i1 %i.jtr, label %.lr.ph271.i.i, label %._crit_edge276.split.i.i, !llvm.loop !814

bb.afp:                                           ; preds = %bb.agk, %.lr.ph271.i.i
  %.0185269.i.i = phi i64 [ 0, %.lr.ph271.i.i ], [ %i.jzh, %bb.agk ] ; 3 uses
  %.0186268.i.i = phi i32 [ %i.jtl, %.lr.ph271.i.i ], [ %.1187.i.i677, %bb.agk ] ; 2 uses
  %i.jts = mul i64 %.0185269.i.i, %i.gis
  %i.jtt = getelementptr inbounds nuw i8, ptr %i.gjt, i64 %i.jts ; 9 uses
  switch i32 %i.giw, label %default.unreachable [
    i32 7, label %bb.afs
    i32 6, label %bb.aft
    i32 5, label %bb.afu
    i32 4, label %bb.afv
    i32 3, label %bb.afw
    i32 2, label %bb.afx
    i32 1, label %bb.afy
    i32 0, label %bb.afq
  ]

bb.afq:                                           ; preds = %bb.afp, %bb.afy
  %.090.i930.i.i = phi i32 [ %i.jww, %bb.afy ], [ %i.giw, %bb.afp ] ; 4 uses
  %.082.i931.i.i = phi i32 [ %i.jwx, %bb.afy ], [ %i.giw, %bb.afp ] ; 2 uses
  %.080.i932.i.i = phi i32 [ %.7.i963.i.i, %bb.afy ], [ %i.giu, %bb.afp ] ; 2 uses
  %i.jtu = icmp sgt i32 %.080.i932.i.i, 7
  br i1 %i.jtu, label %bb.afr, label %bb.afz

bb.afr:                                           ; preds = %bb.afq
  %i.jtv = add nsw i32 %.080.i932.i.i, -8
  %i.jtw = sext i32 %.082.i931.i.i to i64         ; 2 uses
  %i.jtx = getelementptr inbounds [8 x i8], ptr %i.jth, i64 %i.jtw
  %i.jty = load i64, ptr %i.jtx, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jtz = getelementptr inbounds [8 x i8], ptr %i.jtt, i64 %i.jtw
  %i.jua = load i64, ptr %i.jtz, align 8, !tbaa !90, !noalias !751
  %i.jub = xor i64 %i.jua, %i.jty
  %i.juc = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jub)
  %i.jud = trunc nuw nsw i64 %i.juc to i32
  %i.jue = add nsw i32 %.090.i930.i.i, %i.jud
  %i.juf = add nsw i32 %.082.i931.i.i, 1
  br label %bb.afs

bb.afs:                                           ; preds = %bb.afr, %bb.afp
  %.191.i943.i.i = phi i32 [ 0, %bb.afp ], [ %i.jue, %bb.afr ]
  %.183.i944.i.i = phi i32 [ 0, %bb.afp ], [ %i.juf, %bb.afr ] ; 2 uses
  %.181.i945.i.i = phi i32 [ %i.giu, %bb.afp ], [ %i.jtv, %bb.afr ]
  %i.jug = sext i32 %.183.i944.i.i to i64         ; 2 uses
  %i.juh = getelementptr inbounds [8 x i8], ptr %i.jth, i64 %i.jug
  %i.jui = load i64, ptr %i.juh, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.juj = getelementptr inbounds [8 x i8], ptr %i.jtt, i64 %i.jug
  %i.juk = load i64, ptr %i.juj, align 8, !tbaa !90, !noalias !751
  %i.jul = xor i64 %i.juk, %i.jui
  %i.jum = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jul)
  %i.jun = trunc nuw nsw i64 %i.jum to i32
  %i.juo = add nsw i32 %.191.i943.i.i, %i.jun
  %i.jup = add nsw i32 %.183.i944.i.i, 1
  br label %bb.aft

bb.aft:                                           ; preds = %bb.afs, %bb.afp
  %.292.i946.i.i = phi i32 [ %i.juo, %bb.afs ], [ 0, %bb.afp ]
  %.284.i947.i.i = phi i32 [ %i.jup, %bb.afs ], [ 0, %bb.afp ] ; 2 uses
  %.2.i948.i.i = phi i32 [ %.181.i945.i.i, %bb.afs ], [ %i.giu, %bb.afp ]
  %i.juq = sext i32 %.284.i947.i.i to i64         ; 2 uses
  %i.jur = getelementptr inbounds [8 x i8], ptr %i.jth, i64 %i.juq
  %i.jus = load i64, ptr %i.jur, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jut = getelementptr inbounds [8 x i8], ptr %i.jtt, i64 %i.juq
  %i.juu = load i64, ptr %i.jut, align 8, !tbaa !90, !noalias !751
  %i.juv = xor i64 %i.juu, %i.jus
  %i.juw = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.juv)
  %i.jux = trunc nuw nsw i64 %i.juw to i32
  %i.juy = add nsw i32 %.292.i946.i.i, %i.jux
  %i.juz = add nsw i32 %.284.i947.i.i, 1
  br label %bb.afu

bb.afu:                                           ; preds = %bb.aft, %bb.afp
  %.393.i949.i.i = phi i32 [ %i.juy, %bb.aft ], [ 0, %bb.afp ]
  %.385.i950.i.i = phi i32 [ %i.juz, %bb.aft ], [ 0, %bb.afp ] ; 2 uses
  %.3.i951.i.i = phi i32 [ %.2.i948.i.i, %bb.aft ], [ %i.giu, %bb.afp ]
  %i.jva = sext i32 %.385.i950.i.i to i64         ; 2 uses
  %i.jvb = getelementptr inbounds [8 x i8], ptr %i.jth, i64 %i.jva
  %i.jvc = load i64, ptr %i.jvb, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jvd = getelementptr inbounds [8 x i8], ptr %i.jtt, i64 %i.jva
  %i.jve = load i64, ptr %i.jvd, align 8, !tbaa !90, !noalias !751
  %i.jvf = xor i64 %i.jve, %i.jvc
  %i.jvg = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jvf)
  %i.jvh = trunc nuw nsw i64 %i.jvg to i32
  %i.jvi = add nsw i32 %.393.i949.i.i, %i.jvh
  %i.jvj = add nsw i32 %.385.i950.i.i, 1
  br label %bb.afv

bb.afv:                                           ; preds = %bb.afu, %bb.afp
  %.494.i952.i.i = phi i32 [ %i.jvi, %bb.afu ], [ 0, %bb.afp ]
  %.486.i953.i.i = phi i32 [ %i.jvj, %bb.afu ], [ 0, %bb.afp ] ; 2 uses
  %.4.i954.i.i = phi i32 [ %.3.i951.i.i, %bb.afu ], [ %i.giu, %bb.afp ]
  %i.jvk = sext i32 %.486.i953.i.i to i64         ; 2 uses
  %i.jvl = getelementptr inbounds [8 x i8], ptr %i.jth, i64 %i.jvk
  %i.jvm = load i64, ptr %i.jvl, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jvn = getelementptr inbounds [8 x i8], ptr %i.jtt, i64 %i.jvk
  %i.jvo = load i64, ptr %i.jvn, align 8, !tbaa !90, !noalias !751
  %i.jvp = xor i64 %i.jvo, %i.jvm
  %i.jvq = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jvp)
  %i.jvr = trunc nuw nsw i64 %i.jvq to i32
  %i.jvs = add nsw i32 %.494.i952.i.i, %i.jvr
  %i.jvt = add nsw i32 %.486.i953.i.i, 1
  br label %bb.afw

bb.afw:                                           ; preds = %bb.afv, %bb.afp
  %.595.i955.i.i = phi i32 [ %i.jvs, %bb.afv ], [ 0, %bb.afp ]
  %.587.i956.i.i = phi i32 [ %i.jvt, %bb.afv ], [ 0, %bb.afp ] ; 2 uses
  %.5.i957.i.i = phi i32 [ %.4.i954.i.i, %bb.afv ], [ %i.giu, %bb.afp ]
  %i.jvu = sext i32 %.587.i956.i.i to i64         ; 2 uses
  %i.jvv = getelementptr inbounds [8 x i8], ptr %i.jth, i64 %i.jvu
  %i.jvw = load i64, ptr %i.jvv, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jvx = getelementptr inbounds [8 x i8], ptr %i.jtt, i64 %i.jvu
  %i.jvy = load i64, ptr %i.jvx, align 8, !tbaa !90, !noalias !751
  %i.jvz = xor i64 %i.jvy, %i.jvw
  %i.jwa = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jvz)
  %i.jwb = trunc nuw nsw i64 %i.jwa to i32
  %i.jwc = add nsw i32 %.595.i955.i.i, %i.jwb
  %i.jwd = add nsw i32 %.587.i956.i.i, 1
  br label %bb.afx

bb.afx:                                           ; preds = %bb.afw, %bb.afp
  %.696.i958.i.i = phi i32 [ %i.jwc, %bb.afw ], [ 0, %bb.afp ]
  %.688.i959.i.i = phi i32 [ %i.jwd, %bb.afw ], [ 0, %bb.afp ] ; 2 uses
  %.6.i960.i.i = phi i32 [ %.5.i957.i.i, %bb.afw ], [ %i.giu, %bb.afp ]
  %i.jwe = sext i32 %.688.i959.i.i to i64         ; 2 uses
  %i.jwf = getelementptr inbounds [8 x i8], ptr %i.jth, i64 %i.jwe
  %i.jwg = load i64, ptr %i.jwf, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jwh = getelementptr inbounds [8 x i8], ptr %i.jtt, i64 %i.jwe
  %i.jwi = load i64, ptr %i.jwh, align 8, !tbaa !90, !noalias !751
  %i.jwj = xor i64 %i.jwi, %i.jwg
  %i.jwk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jwj)
  %i.jwl = trunc nuw nsw i64 %i.jwk to i32
  %i.jwm = add nsw i32 %.696.i958.i.i, %i.jwl
  %i.jwn = add nsw i32 %.688.i959.i.i, 1
  br label %bb.afy

bb.afy:                                           ; preds = %bb.afx, %bb.afp
  %.797.i961.i.i = phi i32 [ %i.jwm, %bb.afx ], [ 0, %bb.afp ]
  %.789.i962.i.i = phi i32 [ %i.jwn, %bb.afx ], [ 0, %bb.afp ] ; 2 uses
  %.7.i963.i.i = phi i32 [ %.6.i960.i.i, %bb.afx ], [ %i.giu, %bb.afp ]
  %i.jwo = sext i32 %.789.i962.i.i to i64         ; 2 uses
  %i.jwp = getelementptr inbounds [8 x i8], ptr %i.jth, i64 %i.jwo
  %i.jwq = load i64, ptr %i.jwp, align 8, !tbaa !90, !alias.scope !748, !noalias !776
  %i.jwr = getelementptr inbounds [8 x i8], ptr %i.jtt, i64 %i.jwo
  %i.jws = load i64, ptr %i.jwr, align 8, !tbaa !90, !noalias !751
  %i.jwt = xor i64 %i.jws, %i.jwq
  %i.jwu = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jwt)
  %i.jwv = trunc nuw nsw i64 %i.jwu to i32
  %i.jww = add nsw i32 %.797.i961.i.i, %i.jwv
  %i.jwx = add nsw i32 %.789.i962.i.i, 1
  br label %bb.afq, !llvm.loop !180

bb.afz:                                           ; preds = %bb.afq
  br i1 %.not.i753.i.i, label %_ZNK5faiss26HammingComputerDefault_tplILNS_9SIMDLevelE0EE7hammingEPKh.exit.i.i, label %bb.aga

bb.aga:                                           ; preds = %bb.afz
  %i.jwy = getelementptr inbounds i8, ptr %i.jtt, i64 %i.giy ; 3 uses
  br i1 %i.giz, label %bb.agb, label %bb.agc

bb.agb:                                           ; preds = %bb.aga
  %i.jwz = load i32, ptr %i.jtm, align 4, !tbaa !73, !alias.scope !748, !noalias !776
  %i.jxa = load i32, ptr %i.jwy, align 4, !tbaa !73, !noalias !751
  %i.jxb = xor i32 %i.jxa, %i.jwz
  %i.jxc = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.jxb)
  %i.jxd = add nsw i32 %i.jxc, %.090.i930.i.i
  %i.jxe = getelementptr inbounds nuw i8, ptr %i.jwy, i64 4
  br label %bb.agc

bb.agc:                                           ; preds = %bb.agb, %bb.aga
  %.098.i934.i.i = phi i32 [ %i.gja, %bb.agb ], [ %i.giv, %bb.aga ] ; 3 uses
  %.8.i935.i.i = phi i32 [ %i.jxd, %bb.agb ], [ %.090.i930.i.i, %bb.aga ] ; 2 uses
  %.078.i936.i.i = phi ptr [ %i.jtn, %bb.agb ], [ %i.jtm, %bb.aga ] ; 3 uses
  %.0.i937.i.i = phi ptr [ %i.jxe, %bb.agb ], [ %i.jwy, %bb.aga ] ; 3 uses
  %i.jxf = icmp sgt i32 %.098.i934.i.i, 1
  br i1 %i.jxf, label %bb.agd, label %bb.age

bb.agd:                                           ; preds = %bb.agc
  %i.jxg = load i16, ptr %.078.i936.i.i, align 2, !tbaa !181, !alias.scope !748, !noalias !776
  %i.jxh = load i16, ptr %.0.i937.i.i, align 2, !tbaa !181, !noalias !751
  %i.jxi = xor i16 %i.jxh, %i.jxg
  %i.jxj = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.jxi)
  %i.jxk = zext nneg i16 %i.jxj to i32
  %i.jxl = add nsw i32 %.8.i935.i.i, %i.jxk
  %i.jxm = getelementptr inbounds nuw i8, ptr %.078.i936.i.i, i64 2
  %i.jxn = getelementptr inbounds nuw i8, ptr %.0.i937.i.i, i64 2
  %i.jxo = add nsw i32 %.098.i934.i.i, -2
  br label %bb.age

bb.age:                                           ; preds = %bb.agd, %bb.agc
  %.199.i938.i.i = phi i32 [ %i.jxo, %bb.agd ], [ %.098.i934.i.i, %bb.agc ]
  %.9.i939.i.i = phi i32 [ %i.jxl, %bb.agd ], [ %.8.i935.i.i, %bb.agc ] ; 2 uses
  %.179.i940.i.i = phi ptr [ %i.jxm, %bb.agd ], [ %.078.i936.i.i, %bb.agc ]
  %.1.i941.i.i = phi ptr [ %i.jxn, %bb.agd ], [ %.0.i937.i.i, %bb.agc ]
  %i.jxp = icmp sgt i32 %.199.i938.i.i, 0
  br i1 %i.jxp, label %bb.agf, label %_ZNK5faiss26HammingComputerDefault_tplILNS_9SIMDLevelE0EE7hammingEPKh.exit.i.i

bb.agf:                                           ; preds = %bb.age
  %i.jxq = load i8, ptr %.179.i940.i.i, align 1, !tbaa !72, !alias.scope !748, !noalias !776
  %i.jxr = load i8, ptr %.1.i941.i.i, align 1, !tbaa !72, !noalias !751
  %i.jxs = xor i8 %i.jxr, %i.jxq
  %i.jxt = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.jxs)
  %i.jxu = zext nneg i8 %i.jxt to i32
  %i.jxv = add nsw i32 %.9.i939.i.i, %i.jxu
  br label %_ZNK5faiss26HammingComputerDefault_tplILNS_9SIMDLevelE0EE7hammingEPKh.exit.i.i

_ZNK5faiss26HammingComputerDefault_tplILNS_9SIMDLevelE0EE7hammingEPKh.exit.i.i: ; preds = %bb.agf, %bb.age, %bb.afz
  %.11.i942.i.i = phi i32 [ %.090.i930.i.i, %bb.afz ], [ %i.jxv, %bb.agf ], [ %.9.i939.i.i, %bb.age ] ; 6 uses
  %i.jxw = icmp slt i32 %.11.i942.i.i, %.0186268.i.i
  br i1 %i.jxw, label %bb.agg, label %bb.agk

bb.agg:                                           ; preds = %_ZNK5faiss26HammingComputerDefault_tplILNS_9SIMDLevelE0EE7hammingEPKh.exit.i.i
  %i.jxx = getelementptr inbounds nuw [8 x i8], ptr %i.gjy, i64 %.0185269.i.i
  %i.jxy = load i64, ptr %i.jxx, align 8, !tbaa !90, !noalias !751 ; 3 uses
  br i1 %i.gje, label %.loopexit.i.i685, label %.lr.ph.i.i.i678

.lr.ph.i.i.i678:                                  ; preds = %bb.agg, %bb.agj
  %i.jxz = phi i64 [ %i.jzc, %bb.agj ], [ 3, %bb.agg ]
  %i.jya = phi i64 [ %i.jzb, %bb.agj ], [ 2, %bb.agg ] ; 7 uses
  %.056.i.i.i679 = phi i64 [ %.1.i.i.i684, %bb.agj ], [ 1, %bb.agg ] ; 6 uses
end_hunk_0
