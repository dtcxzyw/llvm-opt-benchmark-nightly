Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/CharacterProperties?download=true
inline.NumInlined: 252
inline.NumDeleted: 137
begin_hunk_0_@_ZN6hermes25makeCanonicallyEquivalentERKNS_12CodePointSetEb:bb.a
  %i.ej = load i32, ptr %i.b, align 8, !tbaa !16
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6hermes12CodePointSet3addEj.exit.i

bb.j:                                             ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i
  br i1 %.not.i.i25.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.el = ptrtoint ptr %.sroa.0.0.i37.i to i64
  %i.em = sub i64 %i.el, %i.ca
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #10
  %i.en = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  %.pre.i.i33 = load i32, ptr %i.b, align 8, !tbaa !16
  %.pre21.i.i = zext i32 %.pre.i.i33 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi22.i.i = phi i64 [ %.pre21.i.i, %bb.k ], [ %i.by, %bb.j ]
  %i.ep = phi ptr [ %i.en, %bb.k ], [ %i.bw, %bb.j ] ; 2 uses
  %.015.i.i = phi ptr [ %i.eo, %bb.k ], [ %.sroa.0.0.i37.i, %bb.j ] ; 5 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.pre-phi22.i.i ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8
  %i.es = load i64, ptr %i.er, align 4, !tbaa !11
  store i64 %i.es, ptr %i.eq, align 4, !tbaa !11
  %i.et = load i32, ptr %i.b, align 8, !tbaa !16
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -8 ; 2 uses
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %.015.i.i to i64
  %i.ez = sub i64 %i.ex, %i.ey                    ; 3 uses
  %i.fa = ashr exact i64 %i.ez, 3                 ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 1
  br i1 %i.fb, label %bb.m, label %bb.n, !prof !18

bb.m:                                             ; preds = %bb.l
  %i.fc = sub nsw i64 0, %i.fa
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.fc
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr align 4 %.015.i.i, i64 %i.ez, i1 false)
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.fe = icmp eq i64 %i.ez, 8
  br i1 %i.fe, label %bb.o, label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.ff = load i64, ptr %.015.i.i, align 4, !tbaa !11
  store i64 %i.ff, ptr %i.ew, align 4, !tbaa !11
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.fg = load i32, ptr %i.b, align 8, !tbaa !16
  %i.fh = add i32 %i.fg, 1                        ; 2 uses
  store i32 %i.fh, ptr %i.b, align 8, !tbaa !16
  %.not18.i.i = icmp ugt ptr %.015.i.i, %4
  br i1 %.not18.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i
  %i.fi = load ptr, ptr %5, align 8, !tbaa !15
  %i.fj = zext i32 %i.fh to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = icmp ult ptr %4, %i.fk
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.fl, i64 8, i64 0
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %4, i64 %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %.pre.i34 = load i64, ptr %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i
  %i.fm = phi i64 [ %.sroa.0.0.insert.insert.i.i, %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i ], [ %.pre.i34, %bb.p ]
  store i64 %i.fm, ptr %.015.i.i, align 4, !tbaa !11
  br label %_ZN6hermes12CodePointSet3addEj.exit.i

bb.r:                                             ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i
  %i.fn = load i32, ptr %.011.lcssa.i.i27.i, align 4, !tbaa !11
  %i.fo = call i32 @llvm.umin.i32(i32 %i.fn, i32 %.0.i.i) ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.sroa.3.0.i.i, i64 -8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !20
  %i.fr = getelementptr inbounds i8, ptr %.sroa.3.0.i.i, i64 -4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !21
  %i.ft = add i32 %i.fs, %i.fq
  %.sroa.speculated.i.i.i = call i32 @llvm.umax.i32(i32 %i.cb, i32 %i.ft)
  %i.fu = sub i32 %.sroa.speculated.i.i.i, %i.fo
  store i32 %i.fo, ptr %.011.lcssa.i.i27.i, align 4, !tbaa !11
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i27.i, i64 4
  store i32 %i.fu, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !11
  %i.fv = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i27.i, i64 8 ; 3 uses
  %i.fw = load i32, ptr %i.b, align 8, !tbaa !16
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.fx
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %.sroa.3.0.i.i to i64
  %i.gb = sub i64 %i.fz, %i.ga                    ; 4 uses
  %i.gc = icmp sgt i64 %i.gb, 8
  br i1 %i.gc, label %bb.s, label %bb.t, !prof !18

bb.s:                                             ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fv, ptr nonnull align 4 %.sroa.3.0.i.i, i64 %i.gb, i1 false)
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.gd = icmp eq i64 %i.gb, 8
  br i1 %i.gd, label %bb.u, label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ge = load i64, ptr %.sroa.3.0.i.i, align 4, !tbaa !11
  store i64 %i.ge, ptr %i.fv, align 4, !tbaa !11
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i

_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %i.gf = getelementptr inbounds i8, ptr %i.fv, i64 %i.gb
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = sub i64 %i.gg, %i.ca
  %i.gi = lshr exact i64 %i.gh, 3
  %i.gj = trunc i64 %i.gi to i32
  store i32 %i.gj, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6hermes12CodePointSet3addEj.exit.i

_ZN6hermes12CodePointSet3addEj.exit.i:            ; preds = %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i, %bb.q, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.gk = add i32 %.144.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gk, %invariant.umin.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %_ZN6hermes12CodePointSet3addEj.exit.i, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.046.i, %.preheader.i ], [ %invariant.umin.i, %_ZN6hermes12CodePointSet3addEj.exit.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.02145.i, i64 8
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %.lr.ph47.i
  %.122.i = phi ptr [ %i.gl, %._crit_edge.i ], [ %.02145.i, %.lr.ph47.i ] ; 2 uses
  %.2.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.bg, %.lr.ph47.i ] ; 2 uses
  %i.gm = icmp ult i32 %.2.i, %i.ba
  %i.gn = icmp ne ptr %.122.i, %i.t
  %i.go = select i1 %i.gm, i1 %i.gn, i1 false
  br i1 %i.go, label %.lr.ph47.i, label %_ZN6hermesL17canonicalizeRangeENS_14CodePointRangeEPNS_12CodePointSetEb.exit, !llvm.loop !26

_ZN6hermesL17canonicalizeRangeENS_14CodePointRangeEPNS_12CodePointSetEb.exit: ; preds = %bb.v, %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.0120, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gp, %i.r
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d

._crit_edge124.loopexit:                          ; preds = %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit
  %.pre144 = load ptr, ptr %5, align 8, !tbaa !15
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %_ZN6hermes12CodePointSetC2ERKS0_.exit30.thread, %._crit_edge124.loopexit, %_ZN6hermes12CodePointSetC2ERKS0_.exit30
  %i.gq = phi ptr [ %.pre144, %._crit_edge124.loopexit ], [ %i.al, %_ZN6hermes12CodePointSetC2ERKS0_.exit30 ], [ %i.i, %_ZN6hermes12CodePointSetC2ERKS0_.exit30.thread ] ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.a
  br i1 %i.gr, label %_ZN6hermes12CodePointSetD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge124
  call void @free(ptr noundef %i.gq) #10
  br label %_ZN6hermes12CodePointSetD2Ev.exit

_ZN6hermes12CodePointSetD2Ev.exit:                ; preds = %._crit_edge124, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void

bb.x:                                             ; preds = %.lr.ph123, %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit
  %.019122 = phi ptr [ %i.al, %.lr.ph123 ], [ %i.mj, %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.019122, align 4, !tbaa !11 ; 2 uses
  %.sroa.028.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 3 uses
  %.sroa.4.0.extract.shift.i36 = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %i.gs = icmp eq i64 %.sroa.4.0.extract.shift.i36, 0
  br i1 %i.gs, label %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.x
  %.sroa.4.0.extract.trunc.i37 = trunc nuw i64 %.sroa.4.0.extract.shift.i36 to i32
  %i.gt = add i32 %.sroa.4.0.extract.trunc.i37, %.sroa.028.0.extract.trunc.i ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.i, %.lr.ph54.i
  %.01953.i = phi ptr [ %i.ap, %.lr.ph54.i ], [ %i.mi, %.loopexit.i ] ; 2 uses
  %i.gu = load i64, ptr %.01953.i, align 4        ; 4 uses
  %i.gv = trunc i64 %i.gu to i32                  ; 2 uses
  %i.gw = and i32 %i.gv, 16777215                 ; 2 uses
  %i.gx = lshr i32 %i.gv, 24                      ; 3 uses
  %i.gy = shl i64 %i.gu, 8
  %i.gz = ashr i64 %i.gy, 40
  %i.ha = trunc nsw i64 %i.gz to i32              ; 2 uses
  %i.hb = add nsw i32 %i.gw, %i.ha                ; 2 uses
  %i.hc = add nsw i32 %i.hb, %i.gx
  %i.hd = icmp ule i32 %i.hc, %.sroa.028.0.extract.trunc.i
  %i.he = icmp uge i32 %i.hb, %i.gt
  %.not84.i = select i1 %i.hd, i1 true, i1 %i.he
  %.not55.i = icmp eq i32 %i.gx, 0
  %or.cond.i = or i1 %.not55.i, %.not84.i
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.y
  %i.hf = add nuw nsw i32 %i.gx, %i.gw
  %i.hg = lshr i64 %i.gu, 56
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = and i64 %i.gu, 16777215                 ; 2 uses
  %i.hj = zext nneg i32 %i.hf to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.aq, %.lr.ph.i38
  %indvars.iv.i = phi i64 [ %i.hi, %.lr.ph.i38 ], [ %indvars.iv.next.i, %bb.aq ] ; 16 uses
  %indvars62.i = trunc i64 %indvars.iv.i to i32   ; 3 uses
  %i.hk = sub nuw nsw i64 %indvars.iv.i, %i.hi
  %i.hl = trunc nuw nsw i64 %i.hk to i32
  %i.hm = urem i32 %i.hl, %i.hh
  %i.hn = icmp eq i32 %i.hm, 0
  %i.ho = select i1 %i.hn, i32 %i.ha, i32 0       ; 2 uses
  %.0.i.i39 = add nsw i32 %i.ho, %indvars62.i     ; 2 uses
  %.not21.i = icmp ne i32 %i.ho, 0
  %.not22.i = icmp uge i32 %.0.i.i39, %.sroa.028.0.extract.trunc.i
  %or.cond.not39.i = and i1 %.not21.i, %.not22.i
  %i.hp = icmp ult i32 %.0.i.i39, %i.gt
  %or.cond38.i = and i1 %i.hp, %or.cond.not39.i
  br i1 %or.cond38.i, label %bb.aa, label %bb.aq

bb.aa:                                            ; preds = %bb.z
  %.sroa.0.0.insert.insert.i.i41 = or disjoint i64 %indvars.iv.i, 4294967296 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.insert.insert.i.i41, ptr %3, align 8
  %i.hq = load ptr, ptr %0, align 8, !tbaa !15    ; 9 uses
  %i.hr = load i32, ptr %i.ab, align 8, !tbaa !16 ; 3 uses
  %.not40.i = icmp eq i32 %i.hr, 0
  %i.hs = lshr i64 %.sroa.0.0.insert.insert.i.i41, 32
  %i.ht = trunc nuw i64 %i.hs to i32
  br i1 %.not40.i, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i56, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i42

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i42: ; preds = %bb.aa
  %i.hu = zext i32 %i.hr to i64                   ; 3 uses
  %i.hv = add nuw nsw i64 %indvars.iv.i, 1        ; 5 uses
  br label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i43

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i43: ; preds = %bb.ad, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i42
  %.01368.i.i44 = phi i64 [ %i.hu, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i42 ], [ %.2.i.i55, %bb.ad ] ; 3 uses
  %.067.i.i45 = phi ptr [ %i.hq, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i42 ], [ %.1.i.i54, %bb.ad ] ; 4 uses
  %i.hw = lshr i64 %.01368.i.i44, 1               ; 5 uses
  %.idx220 = shl nuw nsw i64 %i.hw, 3             ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.067.i.i45, i64 %.idx220 ; 3 uses
  %.sroa.01.0.copyload.i.i.i48 = load i64, ptr %i.hx, align 4, !tbaa !11 ; 3 uses
  %.sroa.47.0.extract.shift.i.i.i.i49 = lshr i64 %.sroa.01.0.copyload.i.i.i48, 32
  %i.hy = and i64 %.sroa.01.0.copyload.i.i.i48, 4294967295 ; 4 uses
  %6 = icmp samesign ugt i64 %i.hv, %i.hy         ; 2 uses
  %i.hz = add i64 %.sroa.47.0.extract.shift.i.i.i.i49, %.sroa.01.0.copyload.i.i.i48
  %i.ia = and i64 %i.hz, 4294967295               ; 3 uses
  %i.ib = icmp samesign ugt i64 %i.ia, %indvars.iv.i ; 2 uses
  %i.ic = select i1 %6, i1 %i.ib, i1 false
  br i1 %i.ic, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i52, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i50

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i50: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i43
  %i.id = icmp ne i64 %i.ia, %indvars.iv.i
  %i.ie = icmp samesign ugt i64 %indvars.iv.i, %i.hy
  %spec.select.i.i.i.i51 = and i1 %i.ie, %i.id
  br i1 %spec.select.i.i.i.i51, label %bb.ab, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i52

bb.ab:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i50
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ig = xor i64 %i.hw, -1
  %i.ih = add nsw i64 %.01368.i.i44, %i.ig
  br label %bb.ad

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i52: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i50, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i43
  %i.ii = and i1 %6, %i.ib
  br i1 %i.ii, label %.critedge.i.i59, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i53

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i53: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i52
  %7 = icmp ne i64 %i.ia, %indvars.iv.i
  %8 = icmp ne i64 %i.hv, %i.hy
  %.not10.i.i22.i.i54 = and i1 %8, %7
  %9 = icmp samesign ult i64 %indvars.iv.i, %i.hy
  %spec.select.i.i23.i.i55 = and i1 %9, %.not10.i.i22.i.i54
  br i1 %spec.select.i.i23.i.i55, label %bb.ad, label %.critedge.i.i59

.critedge.i.i59:                                  ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i53, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i52
  %.not218 = icmp eq i64 %i.hw, 0
  br i1 %.not218, label %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i60, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i83

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i83: ; preds = %.critedge.i.i59, %.thread.i.i.i95
  %.026.i.i.i84 = phi i64 [ %i.iw, %.thread.i.i.i95 ], [ %i.hw, %.critedge.i.i59 ] ; 2 uses
  %.01125.i.i.i85 = phi ptr [ %i.iv, %.thread.i.i.i95 ], [ %.067.i.i45, %.critedge.i.i59 ] ; 3 uses
  %i.ij = lshr i64 %.026.i.i.i84, 1               ; 4 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.01125.i.i.i85, i64 %i.ij ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i88 = load i64, ptr %i.ik, align 4, !tbaa !11 ; 3 uses
  %.sroa.47.0.extract.shift.i.i.i.i.i89 = lshr i64 %.sroa.01.0.copyload.i.i.i.i88, 32
  %i.il = and i64 %.sroa.01.0.copyload.i.i.i.i88, 4294967295 ; 2 uses
  %10 = icmp samesign ugt i64 %i.hv, %i.il
  %i.im = add i64 %.sroa.47.0.extract.shift.i.i.i.i.i89, %.sroa.01.0.copyload.i.i.i.i88
  %i.in = and i64 %i.im, 4294967295               ; 2 uses
  %i.io = icmp samesign ugt i64 %i.in, %indvars.iv.i
  %i.ip = select i1 %10, i1 %i.io, i1 false
  br i1 %i.ip, label %.thread.i.i.i95, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i90

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i90: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i83
  %i.iq = icmp ne i64 %i.in, %indvars.iv.i
  %i.ir = icmp samesign ugt i64 %indvars.iv.i, %i.il
  %spec.select.i.i.i.i.i91 = and i1 %i.ir, %i.iq
  %cond.fr.i.i.i92 = freeze i1 %spec.select.i.i.i.i.i91 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.it = xor i64 %i.ij, -1
  %i.iu = add nsw i64 %.026.i.i.i84, %i.it
  %spec.select.i.i.i93 = select i1 %cond.fr.i.i.i92, ptr %i.is, ptr %.01125.i.i.i85
  %spec.select24.i.i.i94 = select i1 %cond.fr.i.i.i92, i64 %i.iu, i64 %i.ij
  br label %.thread.i.i.i95

.thread.i.i.i95:                                  ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i90, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i83
  %i.iv = phi ptr [ %.01125.i.i.i85, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i83 ], [ %spec.select.i.i.i93, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i90 ] ; 2 uses
  %i.iw = phi i64 [ %i.ij, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i83 ], [ %spec.select24.i.i.i94, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i90 ] ; 2 uses
  %i.ix = icmp sgt i64 %i.iw, 0
  br i1 %i.ix, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i83, label %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i60, !llvm.loop !2

_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i60: ; preds = %.thread.i.i.i95, %.critedge.i.i59
  %.011.lcssa.i.i.i61 = phi ptr [ %.067.i.i45, %.critedge.i.i59 ], [ %i.iv, %.thread.i.i.i95 ] ; 6 uses
  %.idx219 = shl nuw nsw i64 %.01368.i.i44, 3
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.iz = add nuw nsw i64 %.idx220, 8
  %gepdiff221 = sub nsw i64 %.idx219, %i.iz
  %i.ja = ashr exact i64 %gepdiff221, 3           ; 2 uses
  %i.jb = icmp sgt i64 %i.ja, 0
  br i1 %i.jb, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i70, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i64

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i70: ; preds = %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i60, %.split.i.i.i81
  %.025.i.i.i71 = phi i64 [ %i.js, %.split.i.i.i81 ], [ %i.ja, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i60 ] ; 3 uses
  %.01124.i.i.i72 = phi ptr [ %i.jr, %.split.i.i.i81 ], [ %i.iy, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i60 ] ; 2 uses
  %i.jc = lshr i64 %.025.i.i.i71, 1               ; 4 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.01124.i.i.i72, i64 %i.jc ; 3 uses
  %.sroa.0.0.copyload.i.i37.i.i75 = load i64, ptr %i.jd, align 4, !tbaa !11 ; 3 uses
  %.sroa.4.0.extract.shift.i.i.i39.i.i76 = lshr i64 %.sroa.0.0.copyload.i.i37.i.i75, 32
  %i.je = add i64 %.sroa.4.0.extract.shift.i.i.i39.i.i76, %.sroa.0.0.copyload.i.i37.i.i75
  %i.jf = and i64 %i.je, 4294967295               ; 2 uses
  %i.jg = icmp samesign ugt i64 %i.jf, %indvars.iv.i
  %i.jh = and i64 %.sroa.0.0.copyload.i.i37.i.i75, 4294967295 ; 3 uses
  %11 = icmp samesign ugt i64 %i.hv, %i.jh
  %i.ji = and i1 %11, %i.jg
  br i1 %i.ji, label %.thread.i44.i.i82, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i77

.thread.i44.i.i82:                                ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i70
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jk = xor i64 %i.jc, -1
  %i.jl = add nsw i64 %.025.i.i.i71, %i.jk
  br label %.split.i.i.i81

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i77: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i70
  %i.jm = icmp ne i64 %i.jf, %indvars.iv.i
  %i.jn = icmp ne i64 %i.hv, %i.jh
  %.not10.i.i.i41.i.i78 = and i1 %i.jn, %i.jm
  %12 = icmp samesign ult i64 %indvars.iv.i, %i.jh
  %spec.select.i.i.i42.i.i79 = and i1 %12, %.not10.i.i.i41.i.i78
  %cond.fr.i43.i.i80 = freeze i1 %spec.select.i.i.i42.i.i79
  br i1 %cond.fr.i43.i.i80, label %.split.i.i.i81, label %bb.ac

bb.ac:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i77
  %i.jo = xor i64 %i.jc, -1
  %i.jp = add nsw i64 %.025.i.i.i71, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  br label %.split.i.i.i81

.split.i.i.i81:                                   ; preds = %bb.ac, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i77, %.thread.i44.i.i82
  %i.jr = phi ptr [ %i.jj, %.thread.i44.i.i82 ], [ %i.jq, %bb.ac ], [ %.01124.i.i.i72, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i77 ] ; 2 uses
  %i.js = phi i64 [ %i.jl, %.thread.i44.i.i82 ], [ %i.jp, %bb.ac ], [ %i.jc, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i77 ] ; 2 uses
  %i.jt = icmp sgt i64 %i.js, 0
  br i1 %i.jt, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i70, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i64, !llvm.loop !3

bb.ad:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i53, %bb.ab
  %.1.i.i54 = phi ptr [ %i.if, %bb.ab ], [ %.067.i.i45, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i53 ] ; 2 uses
  %.2.i.i55 = phi i64 [ %i.ih, %bb.ab ], [ %i.hw, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i53 ] ; 2 uses
  %i.ju = icmp sgt i64 %.2.i.i55, 0
  br i1 %i.ju, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i43, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i56, !llvm.loop !4

_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i64: ; preds = %.split.i.i.i81, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i60
  %.sroa.3.0.i.i65 = phi ptr [ %i.iy, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i60 ], [ %i.jr, %.split.i.i.i81 ] ; 6 uses
  %i.jv = icmp eq ptr %.011.lcssa.i.i.i61, %.sroa.3.0.i.i65
  br i1 %i.jv, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i56, label %bb.am

_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i56: ; preds = %bb.ad, %bb.aa, %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i64
  %.pre-phi = phi i64 [ %i.hu, %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i64 ], [ 0, %bb.aa ], [ %i.hu, %bb.ad ] ; 3 uses
  %.sroa.0.0.i37.i57 = phi ptr [ %.011.lcssa.i.i.i61, %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i64 ], [ %i.hq, %bb.aa ], [ %.1.i.i54, %bb.ad ] ; 3 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.pre-phi
  %i.jx = icmp eq ptr %.sroa.0.0.i37.i57, %i.jw
  %i.jy = load i32, ptr %i.ac, align 4, !tbaa !17
  %.not.i.i = icmp ult i32 %i.hr, %i.jy           ; 2 uses
  br i1 %i.jx, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i56
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i, label %bb.af, !prof !18

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.aa, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i97 = load i32, ptr %i.ab, align 8, !tbaa !16
  %.pre19.i = load ptr, ptr %0, align 8, !tbaa !15
  %.pre20.i = zext i32 %.pre.i.i97 to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i

_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i: ; preds = %bb.af, %bb.ae
  %.pre-phi.i98 = phi i64 [ %.pre-phi, %bb.ae ], [ %.pre20.i, %bb.af ]
  %i.jz = phi ptr [ %i.hq, %bb.ae ], [ %.pre19.i, %bb.af ]
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.pre-phi.i98
  store i64 %.sroa.0.0.insert.insert.i.i41, ptr %i.ka, align 1
  %i.kb = load i32, ptr %i.ab, align 8, !tbaa !16
  %i.kc = add i32 %i.kb, 1
  store i32 %i.kc, ptr %i.ab, align 8, !tbaa !16
  br label %_ZN6hermes12CodePointSet3addEj.exit.i58

bb.ag:                                            ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i56
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kd = ptrtoint ptr %.sroa.0.0.i37.i57 to i64
  %i.ke = ptrtoint ptr %i.hq to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.aa, i64 noundef 0, i64 noundef 8) #10
  %i.kg = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kf
  %.pre.i96 = load i32, ptr %i.ab, align 8, !tbaa !16
  %.pre21.i = zext i32 %.pre.i96 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pre-phi22.i = phi i64 [ %.pre21.i, %bb.ah ], [ %.pre-phi, %bb.ag ]
  %i.ki = phi ptr [ %i.kg, %bb.ah ], [ %i.hq, %bb.ag ] ; 2 uses
  %.015.i = phi ptr [ %i.kh, %bb.ah ], [ %.sroa.0.0.i37.i57, %bb.ag ] ; 5 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %.pre-phi22.i ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -8
  %i.kl = load i64, ptr %i.kk, align 4, !tbaa !11
  store i64 %i.kl, ptr %i.kj, align 4, !tbaa !11
  %i.km = load i32, ptr %i.ab, align 8, !tbaa !16
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kn ; 2 uses
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 -8 ; 2 uses
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %.015.i to i64
  %i.ks = sub i64 %i.kq, %i.kr                    ; 3 uses
  %i.kt = ashr exact i64 %i.ks, 3                 ; 2 uses
  %i.ku = icmp sgt i64 %i.kt, 1
  br i1 %i.ku, label %bb.aj, label %bb.ak, !prof !18

bb.aj:                                            ; preds = %bb.ai
  %i.kv = sub nsw i64 0, %i.kt
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %i.kv
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kw, ptr align 4 %.015.i, i64 %i.ks, i1 false)
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.kx = icmp eq i64 %i.ks, 8
  br i1 %i.kx, label %bb.al, label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.ky = load i64, ptr %.015.i, align 4, !tbaa !11
  store i64 %i.ky, ptr %i.kp, align 4, !tbaa !11
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i

_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.kz = load i32, ptr %i.ab, align 8, !tbaa !16
  %i.la = add i32 %i.kz, 1                        ; 2 uses
  store i32 %i.la, ptr %i.ab, align 8, !tbaa !16
  %.not18.i = icmp ugt ptr %.015.i, %3
  %i.lb = load ptr, ptr %0, align 8
  %i.lc = zext i32 %i.la to i64
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lc
  %i.le = icmp uge ptr %3, %i.ld
  %i.lf = select i1 %.not18.i, i1 true, i1 %i.le
  %.0.i.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.lf, i64 0, i64 8
  %.0.i.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %.0.i.idx.sroa.sel.idx.sroa.sel.idx
  %i.lg = load i64, ptr %.0.i.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !11
  store i64 %i.lg, ptr %.015.i, align 4, !tbaa !11
  br label %_ZN6hermes12CodePointSet3addEj.exit.i58

bb.am:                                            ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i64
  %i.lh = load i32, ptr %.011.lcssa.i.i.i61, align 4, !tbaa !11
  %i.li = call i32 @llvm.umin.i32(i32 %i.lh, i32 %indvars62.i) ; 2 uses
  %i.lj = add i32 %i.ht, %indvars62.i
  %i.lk = getelementptr inbounds i8, ptr %.sroa.3.0.i.i65, i64 -8
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !20
  %i.lm = getelementptr inbounds i8, ptr %.sroa.3.0.i.i65, i64 -4
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !21
  %i.lo = add i32 %i.ln, %i.ll
  %.sroa.speculated.i.i.i66 = call i32 @llvm.umax.i32(i32 %i.lj, i32 %i.lo)
  %i.lp = sub i32 %.sroa.speculated.i.i.i66, %i.li
  store i32 %i.li, ptr %.011.lcssa.i.i.i61, align 4, !tbaa !11
  %.sroa.4.0..sroa_idx.i.i.i67 = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i61, i64 4
  store i32 %i.lp, ptr %.sroa.4.0..sroa_idx.i.i.i67, align 4, !tbaa !11
  %i.lq = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i61, i64 8 ; 3 uses
  %i.lr = load i32, ptr %i.ab, align 8, !tbaa !16
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.ls
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %.sroa.3.0.i.i65 to i64
  %i.lw = sub i64 %i.lu, %i.lv                    ; 4 uses
  %i.lx = icmp sgt i64 %i.lw, 8
  br i1 %i.lx, label %bb.an, label %bb.ao, !prof !18

bb.an:                                            ; preds = %bb.am
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lq, ptr nonnull align 4 %.sroa.3.0.i.i65, i64 %i.lw, i1 false)
  %.pre.i.i.i.i69 = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i68

bb.ao:                                            ; preds = %bb.am
  %i.ly = icmp eq i64 %i.lw, 8
  br i1 %i.ly, label %bb.ap, label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i68

bb.ap:                                            ; preds = %bb.ao
  %i.lz = load i64, ptr %.sroa.3.0.i.i65, align 4, !tbaa !11
  store i64 %i.lz, ptr %i.lq, align 4, !tbaa !11
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i68

_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i68: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.ma = phi ptr [ %.pre.i.i.i.i69, %bb.an ], [ %i.hq, %bb.ao ], [ %i.hq, %bb.ap ]
  %i.mb = getelementptr inbounds i8, ptr %i.lq, i64 %i.lw
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.ma to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = lshr exact i64 %i.me, 3
  %i.mg = trunc i64 %i.mf to i32
  store i32 %i.mg, ptr %i.ab, align 8, !tbaa !16
  br label %_ZN6hermes12CodePointSet3addEj.exit.i58

_ZN6hermes12CodePointSet3addEj.exit.i58:          ; preds = %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i, %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN6hermes12CodePointSet3addEj.exit.i58, %bb.z
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mh = icmp samesign ult i64 %indvars.iv.next.i, %i.hj
  br i1 %i.mh, label %bb.z, label %.loopexit.i, !llvm.loop !27

.loopexit.i:                                      ; preds = %bb.aq, %bb.y
  %i.mi = getelementptr inbounds nuw i8, ptr %.01953.i, i64 8 ; 2 uses
  %.not.i40 = icmp eq ptr %i.mi, %i.ao
  br i1 %.not.i40, label %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit, label %bb.y, !llvm.loop !28

_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit: ; preds = %.loopexit.i, %bb.x
  %i.mj = getelementptr inbounds nuw i8, ptr %.019122, i64 8 ; 2 uses
  %.not20 = icmp eq ptr %i.mj, %i.an
  br i1 %.not20, label %._crit_edge124.loopexit, label %bb.x
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN6hermes12canonicalizeEjb(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
end_hunk_0
