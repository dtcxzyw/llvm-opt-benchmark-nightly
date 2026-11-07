Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/unigram_model?download=true
inline.NumInlined: 4081
inline.NumDeleted: 1860
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNK13sentencepiece7unigram5Model13PopulateNodesEPNS0_7LatticeE:bb.a
bb.j:                                             ; preds = %.lr.ph.i
  %i.dg = lshr i32 %i.dd, 10
  %i.dh = lshr i32 %i.dd, 6
  %i.di = and i32 %i.dh, 8
  %i.dj = shl nuw nsw i32 %i.dg, %i.di
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = xor i64 %i.db, %i.dk                    ; 2 uses
  %i.dm = and i32 %i.dd, 256
  %.not62.i = icmp eq i32 %i.dm, 0
  br i1 %.not62.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = icmp ult i64 %.272.i, %i.bn
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.272.i ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.dl
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !179
  %i.dr = and i32 %i.dq, 2147483647
  %i.ds = add i64 %.04670.i, 1
  store i32 %i.dr, ptr %i.do, align 8, !tbaa !181
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !182
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.du = add i64 %.272.i, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.3.i = phi i64 [ %i.du, %bb.m ], [ %.272.i, %bb.j ] ; 2 uses
  %i.dv = add i64 %.04670.i, 1                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !80  ; 2 uses
  %.not51.i = icmp eq i8 %i.dx, 0
  br i1 %.not51.i, label %_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit, label %.lr.ph.i, !llvm.loop !8

_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit: ; preds = %bb.i, %.preheader63.i, %bb.n, %.lr.ph.i
  %.148.i = phi i64 [ %.3.i, %bb.n ], [ %.272.i, %.lr.ph.i ], [ %.1.i, %bb.i ], [ %.04366.i, %.preheader63.i ] ; 3 uses
  %i.dy = icmp ugt i64 %.148.i, %i.bn
  br i1 %i.dy, label %bb.o, label %_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit75

bb.o:                                             ; preds = %_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit
  %i.dz = add i64 %.148.i, 1                      ; 4 uses
  %i.ea = icmp ugt i64 %i.dz, %i.bn
  br i1 %i.ea, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eb = sub nuw i64 %i.dz, %i.bn
  invoke void @_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.eb)
          to label %._ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit_crit_edge: ; preds = %bb.p
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !174
  %.pre105 = load ptr, ptr %2, align 8, !tbaa !169 ; 2 uses
  %.pre106 = load ptr, ptr %i.as, align 8, !tbaa !173
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre107 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !177
  %.pre109 = ptrtoint ptr %.pre105 to i64
  br label %_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit

bb.q:                                             ; preds = %bb.o
  %i.ec = icmp ult i64 %i.dz, %i.bn
  br i1 %i.ec, label %bb.r, label %_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.dz ; 3 uses
  %.not.i.i = icmp eq ptr %i.bj, %i.ed
  br i1 %.not.i.i, label %_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPN5Darts15DoubleArrayImplIvvivE16result_pair_typeES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5Darts15DoubleArrayImplIvvivE16result_pair_typeES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.r
  store ptr %i.ed, ptr %i.as, align 8, !tbaa !173
  br label %_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit: ; preds = %._ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPN5Darts15DoubleArrayImplIvvivE16result_pair_typeES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.r, %bb.q
  %.pre-phi = phi i64 [ %.pre109, %._ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit_crit_edge ], [ %i.bl, %_ZSt8_DestroyIPN5Darts15DoubleArrayImplIvvivE16result_pair_typeES3_EvT_S5_RSaIT0_E.exit.i.i ], [ %i.bl, %bb.r ], [ %i.bl, %bb.q ]
  %i.ee = phi ptr [ %.pre107, %._ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit_crit_edge ], [ %i.bt, %_ZSt8_DestroyIPN5Darts15DoubleArrayImplIvvivE16result_pair_typeES3_EvT_S5_RSaIT0_E.exit.i.i ], [ %i.bt, %bb.r ], [ %i.bt, %bb.q ] ; 5 uses
  %i.ef = phi ptr [ %.pre106, %._ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit_crit_edge ], [ %i.ed, %_ZSt8_DestroyIPN5Darts15DoubleArrayImplIvvivE16result_pair_typeES3_EvT_S5_RSaIT0_E.exit.i.i ], [ %i.bj, %bb.r ], [ %i.bj, %bb.q ]
  %i.eg = phi ptr [ %.pre105, %._ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit_crit_edge ], [ %i.bi, %_ZSt8_DestroyIPN5Darts15DoubleArrayImplIvvivE16result_pair_typeES3_EvT_S5_RSaIT0_E.exit.i.i ], [ %i.bi, %bb.r ], [ %i.bi, %bb.q ] ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eh, %.pre-phi
  %i.ej = ashr exact i64 %i.ei, 4                 ; 2 uses
  %i.ek = load i32, ptr %i.ee, align 4, !tbaa !128 ; 2 uses
  %i.el = lshr i32 %i.ek, 10
  %i.em = lshr i32 %i.ek, 6
  %i.en = and i32 %i.em, 8
  %i.eo = shl nuw nsw i32 %i.el, %i.en
  %i.ep = zext nneg i32 %i.eo to i64              ; 2 uses
  br i1 %.not.i, label %.preheader.i65, label %.preheader63.i56

.preheader.i65:                                   ; preds = %_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit
  %i.eq = load i8, ptr %i.bg, align 1, !tbaa !80  ; 2 uses
  %.not5169.i66 = icmp eq i8 %i.eq, 0
  br i1 %.not5169.i66, label %._crit_edge.thread, label %.lr.ph.i67

.preheader63.i56:                                 ; preds = %_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit, %bb.w
  %.04267.i57 = phi i64 [ %i.fo, %bb.w ], [ 0, %_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit ] ; 3 uses
  %.04366.i58 = phi i64 [ %.1.i63, %bb.w ], [ 0, %_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit ] ; 5 uses
  %.04465.i59 = phi i64 [ %i.fe, %bb.w ], [ %i.ep, %_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EE6resizeEm.exit ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.04267.i57
  %i.es = load i8, ptr %i.er, align 1, !tbaa !80  ; 2 uses
  %i.et = zext i8 %i.es to i64
  %i.eu = xor i64 %.04465.i59, %i.et              ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !128 ; 4 uses
  %i.ex = and i32 %i.ew, -2147483393
  %i.ey = zext i8 %i.es to i32
  %.not53.i60 = icmp eq i32 %i.ex, %i.ey
  br i1 %.not53.i60, label %bb.s, label %_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit75

bb.s:                                             ; preds = %.preheader63.i56
  %i.ez = lshr i32 %i.ew, 10
  %i.fa = lshr i32 %i.ew, 6
  %i.fb = and i32 %i.fa, 8
  %i.fc = shl nuw nsw i32 %i.ez, %i.fb
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = xor i64 %i.eu, %i.fd                    ; 2 uses
  %i.ff = and i32 %i.ew, 256
  %.not61.i62 = icmp eq i32 %i.ff, 0
  br i1 %.not61.i62, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fg = icmp ult i64 %.04366.i58, %i.ej
  br i1 %i.fg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.04366.i58 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.fe
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !179
  %i.fk = and i32 %i.fj, 2147483647
  %i.fl = add nuw i64 %.04267.i57, 1
  store i32 %i.fk, ptr %i.fh, align 8, !tbaa !181
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !182
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fn = add i64 %.04366.i58, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.1.i63 = phi i64 [ %i.fn, %bb.v ], [ %.04366.i58, %bb.s ] ; 2 uses
  %i.fo = add nuw i64 %.04267.i57, 1              ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %i.fo, %i.br
  br i1 %exitcond.not.i64, label %_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit75, label %.preheader63.i56, !llvm.loop !7

.lr.ph.i67:                                       ; preds = %.preheader.i65, %bb.ab
  %i.fp = phi i8 [ %i.gn, %bb.ab ], [ %i.eq, %.preheader.i65 ] ; 2 uses
  %.272.i68 = phi i64 [ %.3.i73, %bb.ab ], [ 0, %.preheader.i65 ] ; 5 uses
  %.14571.i69 = phi i64 [ %i.gb, %bb.ab ], [ %i.ep, %.preheader.i65 ]
  %.04670.i70 = phi i64 [ %i.gl, %bb.ab ], [ 0, %.preheader.i65 ] ; 2 uses
  %i.fq = zext i8 %i.fp to i64
  %i.fr = xor i64 %.14571.i69, %i.fq              ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !128 ; 4 uses
  %i.fu = and i32 %i.ft, -2147483393
  %i.fv = zext i8 %i.fp to i32
  %.not52.i71 = icmp eq i32 %i.fu, %i.fv
  br i1 %.not52.i71, label %bb.x, label %_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit75

bb.x:                                             ; preds = %.lr.ph.i67
  %i.fw = lshr i32 %i.ft, 10
  %i.fx = lshr i32 %i.ft, 6
  %i.fy = and i32 %i.fx, 8
  %i.fz = shl nuw nsw i32 %i.fw, %i.fy
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = xor i64 %i.fr, %i.ga                    ; 2 uses
  %i.gc = and i32 %i.ft, 256
  %.not62.i72 = icmp eq i32 %i.gc, 0
  br i1 %.not62.i72, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gd = icmp ult i64 %.272.i68, %i.ej
  br i1 %i.gd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.272.i68 ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.gb
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !179
  %i.gh = and i32 %i.gg, 2147483647
  %i.gi = add i64 %.04670.i70, 1
  store i32 %i.gh, ptr %i.ge, align 8, !tbaa !181
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !182
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gk = add i64 %.272.i68, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.3.i73 = phi i64 [ %i.gk, %bb.aa ], [ %.272.i68, %bb.x ] ; 2 uses
  %i.gl = add i64 %.04670.i70, 1                  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !80  ; 2 uses
  %.not51.i74 = icmp eq i8 %i.gn, 0
  br i1 %.not51.i74, label %_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit75, label %.lr.ph.i67, !llvm.loop !8

_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit75: ; preds = %bb.w, %.preheader63.i56, %bb.ab, %.lr.ph.i67, %_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit
  %.038 = phi i64 [ %.148.i, %_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit ], [ %.3.i73, %bb.ab ], [ %.272.i68, %.lr.ph.i67 ], [ %.04366.i58, %.preheader63.i56 ], [ %.1.i63, %bb.w ] ; 2 uses
  %.not98 = icmp eq i64 %.038, 0
  br i1 %.not98, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.al
  %i.go = trunc nuw i8 %.2 to i1
  br i1 %i.go, label %bb.an, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit75, %bb.al
  %.093 = phi i64 [ %i.io, %bb.al ], [ 0, %_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit75 ] ; 2 uses
  %.03792 = phi i8 [ %.2, %bb.al ], [ 0, %_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit75 ] ; 2 uses
  %i.gp = load ptr, ptr %2, align 8, !tbaa !169
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %.093 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !182
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.gs
  %i.gu = load ptr, ptr %i.d, align 8, !tbaa !64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ac ], [ %.03994, %.lr.ph ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.i
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !71
  %i.gx = icmp ult ptr %i.gw, %i.gt
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.gx, label %bb.ac, label %bb.ad, !llvm.loop !406

bb.ad:                                            ; preds = %bb.ac
  %i.gy = trunc nsw i64 %indvars.iv.i to i32
  %i.gz = sub nsw i32 %i.gy, %i.bd                ; 2 uses
  %i.ha = load i32, ptr %i.gq, align 8, !tbaa !181 ; 2 uses
  %i.hb = load ptr, ptr %i.av, align 8, !tbaa !183
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !187
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = sext i32 %i.ha to i64                   ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !188
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 60
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !200
  %i.hk = icmp eq i32 %i.hj, 5
  br i1 %i.hk, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hl = invoke noundef ptr @_ZN13sentencepiece7unigram7Lattice6InsertEii(ptr noundef nonnull align 8 dereferenceable(152) %1, i32 noundef %i.bd, i32 noundef %i.gz)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.af:                                            ; preds = %bb.ae
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 28
  store i32 %i.ha, ptr %i.hm, align 4, !tbaa !81
  %i.hn = load ptr, ptr %i.av, align 8, !tbaa !183
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !187
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.hf
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !188 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 60
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !200
  %i.hv = icmp eq i32 %i.hu, 4
  br i1 %i.hv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hw = add nsw i32 %i.gz, -1
  %i.hx = sitofp i32 %i.hw to double
  %i.hy = fmul nnan double %i.hx, 1.000000e-01
  %i.hz = fptrunc double %i.hy to float
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 56
  %i.ib = load float, ptr %i.ia, align 8, !tbaa !201
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ic = phi float [ %i.hz, %bb.ag ], [ %i.ib, %bb.ah ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  store float %i.ic, ptr %i.id, align 8, !tbaa !86
  %i.ie = trunc nuw i8 %.03792 to i1
  br i1 %i.ie, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.if = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !84
  %i.ih = icmp eq i32 %i.ig, 1
  %spec.select = zext i1 %i.ih to i8
  br label %bb.al

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %bb.p, %._crit_edge.thread
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  %i.ii = load ptr, ptr %2, align 8, !tbaa !169   ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EED2Ev.exit77, label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !170
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.in) #30
  br label %_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EED2Ev.exit77

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ad
  %.2 = phi i8 [ %.03792, %bb.ad ], [ 1, %bb.ai ], [ %spec.select, %bb.aj ] ; 2 uses
  %i.io = add nuw i64 %.093, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.io, %.038
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !407

._crit_edge.thread:                               ; preds = %.preheader.i65, %.preheader.i, %_ZNK5Darts15DoubleArrayImplIvvivE18commonPrefixSearchINS1_16result_pair_typeEEEmPKcPT_mmm.exit75, %._crit_edge
  %i.ip = invoke noundef ptr @_ZN13sentencepiece7unigram7Lattice6InsertEii(ptr noundef nonnull align 8 dereferenceable(152) %1, i32 noundef %i.bd, i32 noundef 1)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.am:                                            ; preds = %._crit_edge.thread
  %i.iq = load i32, ptr %i.aw, align 8, !tbaa !202
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 28
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !81
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  store float %i.c, ptr %i.is, align 8, !tbaa !86
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge
  %i.it = add nuw nsw i64 %.03994, 1              ; 2 uses
  %exitcond104.not = icmp eq i64 %i.it, %i.n
  br i1 %exitcond104.not, label %._crit_edge97.loopexit, label %bb.d, !llvm.loop !408

_ZNSt6vectorIN5Darts15DoubleArrayImplIvvivE16result_pair_typeESaIS3_EED2Ev.exit77: ; preds = %bb.ak, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %lpad.loopexit.split-lp136
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK13sentencepiece7unigram5Model9PieceToIdESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(108) %0, i64 %1, ptr %2) unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEiEEJEE4findIS7_EENS9_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !412
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %i.k = load i64, ptr %3, align 8, !tbaa !69     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !177  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !128  ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader48.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.o = load i8, ptr %i.j, align 1, !tbaa !80    ; 2 uses
  %.not3258.i.i = icmp eq i8 %i.o, 0
  br i1 %.not3258.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %.preheader48.i.i
  %i.p = add nuw i64 %.02457.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.p, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.preheader48.i.i, !llvm.loop !409

.preheader48.i.i:                                 ; preds = %bb.c, %bb.d
  %.02457.i.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.02556.i.i = phi i64 [ %i.z, %bb.d ], [ 0, %bb.c ]
  %.sroa.0.055.i.i = phi i32 [ %i.ab, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.q = lshr i32 %.sroa.0.055.i.i, 10
  %i.r = lshr i32 %.sroa.0.055.i.i, 6
  %i.s = and i32 %i.r, 8
  %i.t = shl nuw nsw i32 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.02457.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !80
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = xor i32 %i.t, %i.w
  %i.y = zext nneg i32 %i.x to i64
  %i.z = xor i64 %.02556.i.i, %i.y                ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !128 ; 3 uses
  %i.ac = and i32 %i.ab, -2147483393
  %.not34.i.i = icmp eq i32 %i.ac, %i.w
  br i1 %.not34.i.i, label %bb.d, label %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit.thread

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ad = add i64 %.02660.i.i, 1                  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !80  ; 2 uses
  %.not32.i.i = icmp eq i8 %i.af, 0
  br i1 %.not32.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !410

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.e
  %i.ag = phi i8 [ %i.af, %bb.e ], [ %i.o, %.preheader.i.i ]
  %.261.i.i = phi i64 [ %i.ao, %bb.e ], [ 0, %.preheader.i.i ]
  %.02660.i.i = phi i64 [ %i.ad, %bb.e ], [ 0, %.preheader.i.i ]
  %.sroa.0.259.i.i = phi i32 [ %i.aq, %bb.e ], [ %i.n, %.preheader.i.i ] ; 2 uses
  %i.ah = lshr i32 %.sroa.0.259.i.i, 10
  %i.ai = lshr i32 %.sroa.0.259.i.i, 6
  %i.aj = and i32 %i.ai, 8
  %i.ak = shl nuw nsw i32 %i.ah, %i.aj
  %i.al = zext i8 %i.ag to i32                    ; 2 uses
  %i.am = xor i32 %i.ak, %i.al
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = xor i64 %.261.i.i, %i.an                ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !128 ; 3 uses
  %i.ar = and i32 %i.aq, -2147483393
  %.not33.i.i = icmp eq i32 %i.ar, %i.al
  br i1 %.not33.i.i, label %bb.e, label %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit.thread

.loopexit.i.i:                                    ; preds = %bb.d, %bb.e, %.preheader.i.i
  %.sroa.0.3.i.i = phi i32 [ %i.aq, %bb.e ], [ %i.n, %.preheader.i.i ], [ %i.ab, %bb.d ] ; 3 uses
  %.3.i.i = phi i64 [ %i.ao, %bb.e ], [ 0, %.preheader.i.i ], [ %i.z, %bb.d ]
  %i.as = and i32 %.sroa.0.3.i.i, 256
  %.not47.i.i = icmp eq i32 %i.as, 0
  br i1 %.not47.i.i, label %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit.thread, label %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit

_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit: ; preds = %.loopexit.i.i
  %i.at = lshr i32 %.sroa.0.3.i.i, 10
  %i.au = lshr i32 %.sroa.0.3.i.i, 6
  %i.av = and i32 %i.au, 8
  %i.aw = shl nuw nsw i32 %i.at, %i.av
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = xor i64 %.3.i.i, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !128
  %i.bb = and i32 %i.ba, 2147483647
  br label %bb.f

_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit.thread: ; preds = %.preheader48.i.i, %.lr.ph.i.i, %.loopexit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !202
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit, %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit.thread, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.bd, %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit.thread ], [ %i.bb, %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN13sentencepiece7unigram5Model9BuildTrieEPSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::Status", align 8 ; 4 uses
  %3 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %5 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = load ptr, ptr %0, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.d = load i64, ptr %2, align 8, !tbaa !203    ; 3 uses
  %i.e = icmp eq i64 %i.d, 1
  %i.f = trunc i64 %i.d to i1
  br i1 %i.f, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.d to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #36
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %i.e, label %bb.d, label %bb.ax

bb.d:                                             ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit
  %i.j = load ptr, ptr %1, align 8, !tbaa !205    ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !205  ; 4 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.e, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi13EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %3, i64 21, ptr nonnull @.str.13, i64 643, ptr nonnull @.str.1)
  %i.n = load i64, ptr %3, align 8, !tbaa !203, !alias.scope !429 ; 4 uses
  %i.o = icmp ne i64 %i.n, 1
  call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !203  ; 3 uses
  %.not.i = icmp eq i64 %i.n, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_202605266StatusaSEOS1_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.n, ptr %i.p, align 8, !tbaa !203
  store i64 55, ptr %3, align 8, !tbaa !203
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %_ZN4absl12lts_202605266StatusD2Ev.exit47, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = inttoptr i64 %i.q to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge unwind label %bb.h

._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge: ; preds = %bb.g
  %.pre226 = load i64, ptr %3, align 8, !tbaa !203
  br label %_ZN4absl12lts_202605266StatusaSEOS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #36
  unreachable

_ZN4absl12lts_202605266StatusaSEOS1_.exit:        ; preds = %._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge, %bb.e
  %i.v = phi i64 [ %.pre226, %._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge ], [ %i.n, %bb.e ] ; 2 uses
  %i.w = trunc i64 %i.v to i1
end_hunk_0
