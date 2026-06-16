inline.NumInlined: 252
inline.NumDeleted: 137
begin_hunk_0_@_ZN6hermes25makeCanonicallyEquivalentERKNS_12CodePointSetEb:bb.a
_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i.i: ; preds = %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %i.by, %bb.i ], [ %.pre20.i.i, %bb.j ]
  %i.eh = phi ptr [ %i.bw, %bb.i ], [ %.pre19.i.i, %bb.j ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.pre-phi.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.ei, align 1
  %i.ej = load i32, ptr %i.b, align 8, !tbaa !12
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.b, align 8, !tbaa !12
  br label %_ZN6hermes12CodePointSet3addEj.exit.i

bb.k:                                             ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i
  br i1 %.not.i.i25.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.el = ptrtoint ptr %.sroa.0.0.i37.i to i64
  %i.em = sub i64 %i.el, %i.ca
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #10
  %i.en = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  %.pre.i.i33 = load i32, ptr %i.b, align 8, !tbaa !12
  %.pre21.i.i = zext i32 %.pre.i.i33 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi22.i.i = phi i64 [ %.pre21.i.i, %bb.l ], [ %i.by, %bb.k ]
  %i.ep = phi ptr [ %i.en, %bb.l ], [ %i.bw, %bb.k ]
  %.015.i.i = phi ptr [ %i.eo, %bb.l ], [ %.sroa.0.0.i37.i, %bb.k ] ; 5 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.pre-phi22.i.i ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8
  %i.es = load i64, ptr %i.er, align 4
  store i64 %i.es, ptr %i.eq, align 4
  %i.et = load ptr, ptr %5, align 8, !tbaa !9
  %i.eu = load i32, ptr %i.b, align 8, !tbaa !12
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -8 ; 2 uses
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %.015.i.i to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 3 uses
  %i.fb = ashr exact i64 %i.fa, 3                 ; 2 uses
  %i.fc = icmp sgt i64 %i.fb, 1
  br i1 %i.fc, label %bb.n, label %bb.o, !prof !18

bb.n:                                             ; preds = %bb.m
  %i.fd = sub nsw i64 0, %i.fb
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fd
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fe, ptr align 4 %.015.i.i, i64 %i.fa, i1 false)
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.ff = icmp eq i64 %i.fa, 8
  br i1 %i.ff, label %bb.p, label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.fg = load i64, ptr %.015.i.i, align 4
  store i64 %i.fg, ptr %i.ex, align 4
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.fh = load i32, ptr %i.b, align 8, !tbaa !12
  %i.fi = add i32 %i.fh, 1                        ; 2 uses
  store i32 %i.fi, ptr %i.b, align 8, !tbaa !12
  %.not18.i.i = icmp ugt ptr %.015.i.i, %4
  %i.fj = load ptr, ptr %5, align 8
  %i.fk = zext i32 %i.fi to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fk
  %i.fm = icmp uge ptr %4, %i.fl
  %i.fn = select i1 %.not18.i.i, i1 true, i1 %i.fm
  %.0.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.fn, i64 0, i64 8
  %.0.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %4, i64 %.0.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.fo = load i64, ptr %.0.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8
  store i64 %i.fo, ptr %.015.i.i, align 4
  br label %_ZN6hermes12CodePointSet3addEj.exit.i

bb.q:                                             ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i
  %i.fp = load i32, ptr %.0.lcssa.i.i27.i, align 4, !tbaa !3
  %i.fq = call i32 @llvm.umin.i32(i32 %i.fp, i32 %.0.i.i) ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %.sroa.3.0.i.i, i64 -8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !19
  %i.ft = getelementptr inbounds i8, ptr %.sroa.3.0.i.i, i64 -4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !21
  %i.fv = add i32 %i.fu, %i.fs
  %.sroa.speculated.i.i.i = call i32 @llvm.umax.i32(i32 %i.cb, i32 %i.fv)
  %i.fw = sub i32 %.sroa.speculated.i.i.i, %i.fq
  store i32 %i.fq, ptr %.0.lcssa.i.i27.i, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i27.i, i64 4
  store i32 %i.fw, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !3
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i27.i, i64 8 ; 3 uses
  %i.fy = load i32, ptr %i.b, align 8, !tbaa !12
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.fz
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %.sroa.3.0.i.i to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 4 uses
  %i.ge = icmp sgt i64 %i.gd, 8
  br i1 %i.ge, label %bb.r, label %bb.s, !prof !18

bb.r:                                             ; preds = %bb.q
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fx, ptr nonnull align 4 %.sroa.3.0.i.i, i64 %i.gd, i1 false)
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.gf = icmp eq i64 %i.gd, 8
  br i1 %i.gf, label %bb.t, label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.gg = load i64, ptr %.sroa.3.0.i.i, align 4
  store i64 %i.gg, ptr %i.fx, align 4
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i

_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.gh = getelementptr inbounds i8, ptr %i.fx, i64 %i.gd
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = sub i64 %i.gi, %i.ca
  %i.gk = lshr exact i64 %i.gj, 3
  %i.gl = trunc i64 %i.gk to i32
  store i32 %i.gl, ptr %i.b, align 8, !tbaa !12
  br label %_ZN6hermes12CodePointSet3addEj.exit.i

_ZN6hermes12CodePointSet3addEj.exit.i:            ; preds = %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i, %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.gm = add i32 %.12244.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gm, %invariant.umin.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %_ZN6hermes12CodePointSet3addEj.exit.i, %.preheader.i
  %.122.lcssa.i = phi i32 [ %.02145.i, %.preheader.i ], [ %invariant.umin.i, %_ZN6hermes12CodePointSet3addEj.exit.i ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i, %.lr.ph47.i
  %.2.i = phi i32 [ %.122.lcssa.i, %._crit_edge.i ], [ %i.bg, %.lr.ph47.i ] ; 2 uses
  %.1.i = phi ptr [ %i.gn, %._crit_edge.i ], [ %.046.i, %.lr.ph47.i ] ; 2 uses
  %i.go = icmp ult i32 %.2.i, %i.ba
  %i.gp = icmp ne ptr %.1.i, %i.t
  %i.gq = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %i.gq, label %.lr.ph47.i, label %_ZN6hermesL17canonicalizeRangeENS_14CodePointRangeEPNS_12CodePointSetEb.exit, !llvm.loop !23

_ZN6hermesL17canonicalizeRangeENS_14CodePointRangeEPNS_12CodePointSetEb.exit: ; preds = %bb.u, %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.0118, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gr, %i.r
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d

._crit_edge122.loopexit:                          ; preds = %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit
  %.pre142 = load ptr, ptr %5, align 8, !tbaa !9
  br label %._crit_edge122

._crit_edge122:                                   ; preds = %_ZN6hermes12CodePointSetC2ERKS0_.exit30.thread, %._crit_edge122.loopexit, %_ZN6hermes12CodePointSetC2ERKS0_.exit30
  %i.gs = phi ptr [ %.pre142, %._crit_edge122.loopexit ], [ %i.al, %_ZN6hermes12CodePointSetC2ERKS0_.exit30 ], [ %i.i, %_ZN6hermes12CodePointSetC2ERKS0_.exit30.thread ] ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.a
  br i1 %i.gt, label %_ZN6hermes12CodePointSetD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge122
  call void @free(ptr noundef %i.gs) #10
  br label %_ZN6hermes12CodePointSetD2Ev.exit

_ZN6hermes12CodePointSetD2Ev.exit:                ; preds = %._crit_edge122, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void

bb.w:                                             ; preds = %.lr.ph121, %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit
  %.019120 = phi ptr [ %i.al, %.lr.ph121 ], [ %i.mq, %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.019120, align 4 ; 2 uses
  %.sroa.028.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 3 uses
  %.sroa.4.0.extract.shift.i35 = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %i.gu = icmp eq i64 %.sroa.4.0.extract.shift.i35, 0
  br i1 %i.gu, label %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.w
  %.sroa.4.0.extract.trunc.i36 = trunc nuw i64 %.sroa.4.0.extract.shift.i35 to i32
  %i.gv = add i32 %.sroa.4.0.extract.trunc.i36, %.sroa.028.0.extract.trunc.i ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.i, %.lr.ph54.i
  %.053.i = phi ptr [ %i.ap, %.lr.ph54.i ], [ %i.mp, %.loopexit.i ] ; 2 uses
  %i.gw = load i64, ptr %.053.i, align 4          ; 4 uses
  %i.gx = trunc i64 %i.gw to i32                  ; 2 uses
  %i.gy = and i32 %i.gx, 16777215                 ; 2 uses
  %i.gz = lshr i32 %i.gx, 24                      ; 3 uses
  %i.ha = shl i64 %i.gw, 8
  %i.hb = ashr i64 %i.ha, 40
  %i.hc = trunc nsw i64 %i.hb to i32              ; 2 uses
  %i.hd = add nsw i32 %i.gy, %i.hc                ; 2 uses
  %i.he = add nsw i32 %i.hd, %i.gz
  %i.hf = icmp ule i32 %i.he, %.sroa.028.0.extract.trunc.i
  %i.hg = icmp uge i32 %i.hd, %i.gv
  %.not79.i = select i1 %i.hf, i1 true, i1 %i.hg
  %.not55.i = icmp eq i32 %i.gz, 0
  %or.cond.i = or i1 %.not55.i, %.not79.i
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.x
  %i.hh = add nuw nsw i32 %i.gz, %i.gy
  %i.hi = lshr i64 %i.gw, 56
  %i.hj = trunc nuw nsw i64 %i.hi to i32
  %i.hk = and i64 %i.gw, 16777215                 ; 2 uses
  %i.hl = zext nneg i32 %i.hh to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.aq, %.lr.ph.i37
  %indvars.iv.i = phi i64 [ %i.hk, %.lr.ph.i37 ], [ %indvars.iv.next.i, %bb.aq ] ; 16 uses
  %indvars62.i = trunc i64 %indvars.iv.i to i32   ; 3 uses
  %i.hm = sub nuw nsw i64 %indvars.iv.i, %i.hk
  %i.hn = trunc nuw nsw i64 %i.hm to i32
  %i.ho = urem i32 %i.hn, %i.hj
  %i.hp = icmp eq i32 %i.ho, 0
  %i.hq = select i1 %i.hp, i32 %i.hc, i32 0       ; 2 uses
  %.0.i.i38 = add nsw i32 %i.hq, %indvars62.i     ; 2 uses
  %.not21.i = icmp ne i32 %i.hq, 0
  %.not22.i = icmp uge i32 %.0.i.i38, %.sroa.028.0.extract.trunc.i
  %or.cond.not39.i = and i1 %.not21.i, %.not22.i
  %i.hr = icmp ult i32 %.0.i.i38, %i.gv
  %or.cond38.i = and i1 %i.hr, %or.cond.not39.i
  br i1 %or.cond38.i, label %bb.z, label %bb.aq

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.insert.insert.i.i40 = or disjoint i64 %indvars.iv.i, 4294967296 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.insert.insert.i.i40, ptr %3, align 8
  %i.hs = load ptr, ptr %0, align 8, !tbaa !9     ; 7 uses
  %i.ht = load i32, ptr %i.ab, align 8, !tbaa !12 ; 3 uses
  %.not40.i = icmp eq i32 %i.ht, 0
  %i.hu = lshr i64 %.sroa.0.0.insert.insert.i.i40, 32
  %i.hv = trunc nuw i64 %i.hu to i32
  br i1 %.not40.i, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i66, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i41

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i41: ; preds = %bb.z
  %i.hw = zext i32 %i.ht to i64                   ; 3 uses
  %i.hx = add nuw nsw i64 %indvars.iv.i, 1        ; 5 uses
  br label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i42

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i42: ; preds = %bb.ad, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i41
  %.01368.i.i43 = phi i64 [ %i.hw, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i41 ], [ %.2.i.i94, %bb.ad ] ; 3 uses
  %.067.i.i44 = phi ptr [ %i.hs, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i41 ], [ %.1.i.i93, %bb.ad ] ; 4 uses
  %i.hy = lshr i64 %.01368.i.i43, 1               ; 5 uses
  %.idx217 = shl nuw nsw i64 %i.hy, 3             ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.067.i.i44, i64 %.idx217 ; 3 uses
  %.sroa.01.0.copyload.i.i.i47 = load i64, ptr %i.hz, align 4 ; 3 uses
  %.sroa.47.0.extract.shift.i.i.i.i48 = lshr i64 %.sroa.01.0.copyload.i.i.i47, 32
  %i.ia = and i64 %.sroa.01.0.copyload.i.i.i47, 4294967295 ; 4 uses
  %6 = icmp samesign ugt i64 %i.hx, %i.ia         ; 2 uses
  %i.ib = add i64 %.sroa.47.0.extract.shift.i.i.i.i48, %.sroa.01.0.copyload.i.i.i47
  %i.ic = and i64 %i.ib, 4294967295               ; 3 uses
  %i.id = icmp samesign ugt i64 %i.ic, %indvars.iv.i ; 2 uses
  %i.ie = select i1 %6, i1 %i.id, i1 false
  br i1 %i.ie, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i51, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i49

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i49: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i42
  %i.if = icmp ne i64 %i.ic, %indvars.iv.i
  %i.ig = icmp samesign ugt i64 %indvars.iv.i, %i.ia
  %spec.select.i.i.i.i50 = and i1 %i.ig, %i.if
  br i1 %spec.select.i.i.i.i50, label %bb.aa, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i51

bb.aa:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i49
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ii = xor i64 %i.hy, -1
  %i.ij = add nsw i64 %.01368.i.i43, %i.ii
  br label %bb.ad

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i51: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i49, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i42
  %i.ik = and i1 %6, %i.id
  br i1 %i.ik, label %.critedge.i.i55, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i52

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i52: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i51
  %i.il = icmp ne i64 %i.ic, %indvars.iv.i
  %i.im = icmp ne i64 %i.hx, %i.ia
  %.not10.i.i22.i.i53 = and i1 %i.im, %i.il
  %i.in = icmp samesign ult i64 %indvars.iv.i, %i.ia
  %spec.select.i.i23.i.i54 = and i1 %i.in, %.not10.i.i22.i.i53
  br i1 %spec.select.i.i23.i.i54, label %bb.ad, label %.critedge.i.i55

.critedge.i.i55:                                  ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i52, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i51
  %.not215 = icmp eq i64 %i.hy, 0
  br i1 %.not215, label %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i56, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i80

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i80: ; preds = %.critedge.i.i55, %.thread.i.i.i92
  %.025.i.i.i81 = phi ptr [ %i.jb, %.thread.i.i.i92 ], [ %.067.i.i44, %.critedge.i.i55 ] ; 3 uses
  %.01124.i.i.i82 = phi i64 [ %i.ja, %.thread.i.i.i92 ], [ %i.hy, %.critedge.i.i55 ] ; 2 uses
  %i.io = lshr i64 %.01124.i.i.i82, 1             ; 4 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.025.i.i.i81, i64 %i.io ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i85 = load i64, ptr %i.ip, align 4 ; 3 uses
  %.sroa.47.0.extract.shift.i.i.i.i.i86 = lshr i64 %.sroa.01.0.copyload.i.i.i.i85, 32
  %i.iq = and i64 %.sroa.01.0.copyload.i.i.i.i85, 4294967295 ; 2 uses
  %7 = icmp samesign ugt i64 %i.hx, %i.iq
  %i.ir = add i64 %.sroa.47.0.extract.shift.i.i.i.i.i86, %.sroa.01.0.copyload.i.i.i.i85
  %i.is = and i64 %i.ir, 4294967295               ; 2 uses
  %i.it = icmp samesign ugt i64 %i.is, %indvars.iv.i
  %i.iu = select i1 %7, i1 %i.it, i1 false
  br i1 %i.iu, label %.thread.i.i.i92, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i87

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i87: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i80
  %i.iv = icmp ne i64 %i.is, %indvars.iv.i
  %i.iw = icmp samesign ugt i64 %indvars.iv.i, %i.iq
  %spec.select.i.i.i.i.i88 = and i1 %i.iw, %i.iv
  %cond.fr.i.i.i89 = freeze i1 %spec.select.i.i.i.i.i88 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.iy = xor i64 %i.io, -1
  %i.iz = add nsw i64 %.01124.i.i.i82, %i.iy
  %spec.select.i.i.i90 = select i1 %cond.fr.i.i.i89, i64 %i.iz, i64 %i.io
  %spec.select23.i.i.i91 = select i1 %cond.fr.i.i.i89, ptr %i.ix, ptr %.025.i.i.i81
  br label %.thread.i.i.i92

.thread.i.i.i92:                                  ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i87, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i80
  %i.ja = phi i64 [ %i.io, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i80 ], [ %spec.select.i.i.i90, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i87 ] ; 2 uses
  %i.jb = phi ptr [ %.025.i.i.i81, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i80 ], [ %spec.select23.i.i.i91, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i87 ] ; 2 uses
  %i.jc = icmp sgt i64 %i.ja, 0
  br i1 %i.jc, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i80, label %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i56, !llvm.loop !15

_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i56: ; preds = %.thread.i.i.i92, %.critedge.i.i55
  %.0.lcssa.i.i.i57 = phi ptr [ %.067.i.i44, %.critedge.i.i55 ], [ %i.jb, %.thread.i.i.i92 ] ; 6 uses
  %.idx216 = shl nuw nsw i64 %.01368.i.i43, 3
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.je = add nuw nsw i64 %.idx217, 8
  %gepdiff218 = sub nsw i64 %.idx216, %i.je
  %i.jf = ashr exact i64 %gepdiff218, 3           ; 2 uses
  %i.jg = icmp sgt i64 %i.jf, 0
  br i1 %i.jg, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i68, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i60

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i68: ; preds = %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i56, %bb.ac
  %.024.i.i.i69 = phi ptr [ %i.jy, %bb.ac ], [ %i.jd, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i56 ] ; 2 uses
  %.01123.i.i.i70 = phi i64 [ %i.jx, %bb.ac ], [ %i.jf, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i56 ] ; 3 uses
  %i.jh = lshr i64 %.01123.i.i.i70, 1             ; 4 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.024.i.i.i69, i64 %i.jh ; 3 uses
  %.sroa.0.0.copyload.i.i37.i.i73 = load i64, ptr %i.ji, align 4 ; 3 uses
  %.sroa.4.0.extract.shift.i.i.i39.i.i74 = lshr i64 %.sroa.0.0.copyload.i.i37.i.i73, 32
  %i.jj = add i64 %.sroa.4.0.extract.shift.i.i.i39.i.i74, %.sroa.0.0.copyload.i.i37.i.i73
  %i.jk = and i64 %i.jj, 4294967295               ; 2 uses
  %i.jl = icmp samesign ugt i64 %i.jk, %indvars.iv.i
  %i.jm = and i64 %.sroa.0.0.copyload.i.i37.i.i73, 4294967295 ; 3 uses
  %8 = icmp samesign ugt i64 %i.hx, %i.jm
  %i.jn = and i1 %8, %i.jl
  br i1 %i.jn, label %.thread.i44.i.i79, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i75

.thread.i44.i.i79:                                ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i68
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jp = xor i64 %i.jh, -1
  %i.jq = add nsw i64 %.01123.i.i.i70, %i.jp
  br label %bb.ac

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i75: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i68
  %i.jr = icmp ne i64 %i.jk, %indvars.iv.i
  %i.js = icmp ne i64 %i.hx, %i.jm
  %.not10.i.i.i41.i.i76 = and i1 %i.js, %i.jr
  %i.jt = icmp samesign ult i64 %indvars.iv.i, %i.jm
  %spec.select.i.i.i42.i.i77 = and i1 %i.jt, %.not10.i.i.i41.i.i76
  %cond.fr.i43.i.i78 = freeze i1 %spec.select.i.i.i42.i.i77
  br i1 %cond.fr.i43.i.i78, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i75
  %i.ju = xor i64 %i.jh, -1
  %i.jv = add nsw i64 %.01123.i.i.i70, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i75, %.thread.i44.i.i79
  %i.jx = phi i64 [ %i.jq, %.thread.i44.i.i79 ], [ %i.jv, %bb.ab ], [ %i.jh, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i75 ] ; 2 uses
  %i.jy = phi ptr [ %i.jo, %.thread.i44.i.i79 ], [ %i.jw, %bb.ab ], [ %.024.i.i.i69, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i75 ] ; 2 uses
  %i.jz = icmp sgt i64 %i.jx, 0
  br i1 %i.jz, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i68, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i60, !llvm.loop !16

bb.ad:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i52, %bb.aa
  %.1.i.i93 = phi ptr [ %i.ih, %bb.aa ], [ %.067.i.i44, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i52 ] ; 2 uses
  %.2.i.i94 = phi i64 [ %i.ij, %bb.aa ], [ %i.hy, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i52 ] ; 2 uses
  %i.ka = icmp sgt i64 %.2.i.i94, 0
  br i1 %i.ka, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i42, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i66, !llvm.loop !17

_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i60: ; preds = %bb.ac, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i56
  %.sroa.3.0.i.i61 = phi ptr [ %i.jd, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i56 ], [ %i.jy, %bb.ac ] ; 6 uses
  %i.kb = icmp eq ptr %.0.lcssa.i.i.i57, %.sroa.3.0.i.i61
  br i1 %i.kb, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i66, label %bb.am

_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i66: ; preds = %bb.ad, %bb.z, %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i60
  %.pre-phi = phi i64 [ %i.hw, %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i60 ], [ 0, %bb.z ], [ %i.hw, %bb.ad ] ; 3 uses
  %.sroa.0.0.i37.i67 = phi ptr [ %.0.lcssa.i.i.i57, %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i60 ], [ %i.hs, %bb.z ], [ %.1.i.i93, %bb.ad ] ; 3 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.pre-phi
  %i.kd = icmp eq ptr %.sroa.0.0.i37.i67, %i.kc
  %i.ke = load i32, ptr %i.ac, align 4, !tbaa !13
  %.not.i.i = icmp ult i32 %i.ht, %i.ke           ; 2 uses
  br i1 %i.kd, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i66
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i, label %bb.af, !prof !18

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.aa, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i96 = load i32, ptr %i.ab, align 8, !tbaa !12
  %.pre19.i = load ptr, ptr %0, align 8, !tbaa !9
  %.pre20.i = zext i32 %.pre.i.i96 to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i

_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i: ; preds = %bb.af, %bb.ae
  %.pre-phi.i = phi i64 [ %.pre-phi, %bb.ae ], [ %.pre20.i, %bb.af ]
  %i.kf = phi ptr [ %i.hs, %bb.ae ], [ %.pre19.i, %bb.af ]
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.pre-phi.i
  store i64 %.sroa.0.0.insert.insert.i.i40, ptr %i.kg, align 1
  %i.kh = load i32, ptr %i.ab, align 8, !tbaa !12
  %i.ki = add i32 %i.kh, 1
  store i32 %i.ki, ptr %i.ab, align 8, !tbaa !12
  br label %_ZN6hermes12CodePointSet3addEj.exit.i65

bb.ag:                                            ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i66
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kj = ptrtoint ptr %.sroa.0.0.i37.i67 to i64
  %i.kk = ptrtoint ptr %i.hs to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.aa, i64 noundef 0, i64 noundef 8) #10
  %i.km = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kl
  %.pre.i95 = load i32, ptr %i.ab, align 8, !tbaa !12
  %.pre21.i = zext i32 %.pre.i95 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pre-phi22.i = phi i64 [ %.pre21.i, %bb.ah ], [ %.pre-phi, %bb.ag ]
  %i.ko = phi ptr [ %i.km, %bb.ah ], [ %i.hs, %bb.ag ]
  %.015.i = phi ptr [ %i.kn, %bb.ah ], [ %.sroa.0.0.i37.i67, %bb.ag ] ; 5 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %.pre-phi22.i ; 2 uses
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 -8
  %i.kr = load i64, ptr %i.kq, align 4
  store i64 %i.kr, ptr %i.kp, align 4
  %i.ks = load ptr, ptr %0, align 8, !tbaa !9
  %i.kt = load i32, ptr %i.ab, align 8, !tbaa !12
  %i.ku = zext i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.ku ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 -8 ; 2 uses
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %.015.i to i64
  %i.kz = sub i64 %i.kx, %i.ky                    ; 3 uses
  %i.la = ashr exact i64 %i.kz, 3                 ; 2 uses
  %i.lb = icmp sgt i64 %i.la, 1
  br i1 %i.lb, label %bb.aj, label %bb.ak, !prof !18

bb.aj:                                            ; preds = %bb.ai
  %i.lc = sub nsw i64 0, %i.la
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.lc
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ld, ptr align 4 %.015.i, i64 %i.kz, i1 false)
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.le = icmp eq i64 %i.kz, 8
  br i1 %i.le, label %bb.al, label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.lf = load i64, ptr %.015.i, align 4
  store i64 %i.lf, ptr %i.kw, align 4
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i

_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.lg = load i32, ptr %i.ab, align 8, !tbaa !12
  %i.lh = add i32 %i.lg, 1                        ; 2 uses
  store i32 %i.lh, ptr %i.ab, align 8, !tbaa !12
  %.not18.i = icmp ugt ptr %.015.i, %3
  %i.li = load ptr, ptr %0, align 8
  %i.lj = zext i32 %i.lh to i64
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lj
  %i.ll = icmp uge ptr %3, %i.lk
  %i.lm = select i1 %.not18.i, i1 true, i1 %i.ll
  %.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.lm, i64 0, i64 8
  %.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.ln = load i64, ptr %.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8
  store i64 %i.ln, ptr %.015.i, align 4
  br label %_ZN6hermes12CodePointSet3addEj.exit.i65

bb.am:                                            ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i60
  %i.lo = load i32, ptr %.0.lcssa.i.i.i57, align 4, !tbaa !3
  %i.lp = call i32 @llvm.umin.i32(i32 %i.lo, i32 %indvars62.i) ; 2 uses
  %i.lq = add i32 %i.hv, %indvars62.i
  %i.lr = getelementptr inbounds i8, ptr %.sroa.3.0.i.i61, i64 -8
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !19
  %i.lt = getelementptr inbounds i8, ptr %.sroa.3.0.i.i61, i64 -4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !21
  %i.lv = add i32 %i.lu, %i.ls
  %.sroa.speculated.i.i.i62 = call i32 @llvm.umax.i32(i32 %i.lq, i32 %i.lv)
  %i.lw = sub i32 %.sroa.speculated.i.i.i62, %i.lp
  store i32 %i.lp, ptr %.0.lcssa.i.i.i57, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i.i.i63 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i57, i64 4
  store i32 %i.lw, ptr %.sroa.4.0..sroa_idx.i.i.i63, align 4, !tbaa !3
  %i.lx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i57, i64 8 ; 3 uses
  %i.ly = load i32, ptr %i.ab, align 8, !tbaa !12
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.lz
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = ptrtoint ptr %.sroa.3.0.i.i61 to i64
  %i.md = sub i64 %i.mb, %i.mc                    ; 4 uses
  %i.me = icmp sgt i64 %i.md, 8
  br i1 %i.me, label %bb.an, label %bb.ao, !prof !18

bb.an:                                            ; preds = %bb.am
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lx, ptr nonnull align 4 %.sroa.3.0.i.i61, i64 %i.md, i1 false)
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i64

bb.ao:                                            ; preds = %bb.am
  %i.mf = icmp eq i64 %i.md, 8
  br i1 %i.mf, label %bb.ap, label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i64

bb.ap:                                            ; preds = %bb.ao
  %i.mg = load i64, ptr %.sroa.3.0.i.i61, align 4
  store i64 %i.mg, ptr %i.lx, align 4
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i64

_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i64: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.mh = getelementptr inbounds i8, ptr %i.lx, i64 %i.md
  %i.mi = load ptr, ptr %0, align 8, !tbaa !9
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = sub i64 %i.mj, %i.mk
  %i.mm = lshr exact i64 %i.ml, 3
  %i.mn = trunc i64 %i.mm to i32
  store i32 %i.mn, ptr %i.ab, align 8, !tbaa !12
  br label %_ZN6hermes12CodePointSet3addEj.exit.i65

_ZN6hermes12CodePointSet3addEj.exit.i65:          ; preds = %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i, %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN6hermes12CodePointSet3addEj.exit.i65, %bb.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mo = icmp samesign ult i64 %indvars.iv.next.i, %i.hl
  br i1 %i.mo, label %bb.y, label %.loopexit.i, !llvm.loop !24

.loopexit.i:                                      ; preds = %bb.aq, %bb.x
  %i.mp = getelementptr inbounds nuw i8, ptr %.053.i, i64 8 ; 2 uses
  %.not.i39 = icmp eq ptr %i.mp, %i.ao
  br i1 %.not.i39, label %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit, label %bb.x, !llvm.loop !25

_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit: ; preds = %.loopexit.i, %bb.w
  %i.mq = getelementptr inbounds nuw i8, ptr %.019120, i64 8 ; 2 uses
  %.not20 = icmp eq ptr %i.mq, %i.an
end_hunk_0
