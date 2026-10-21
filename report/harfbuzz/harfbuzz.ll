Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 273
loop-unroll.NumUnrolled: 472
begin_hunk_0_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t22apply_deltas_to_pointsEj10hb_array_tIKiES5_I15contour_point_tER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tEb:bb.a
  %i.fa = sub nsw i64 %i.eu, %i.et                ; 3 uses
  %min.iters.check1051 = icmp ult i64 %i.fa, 5
  %i.fb = and i64 %i.fa, 3                        ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  %i.fd = select i1 %i.fc, i64 4, i64 %i.fb
  %n.vec1053 = sub nsw i64 %i.fa, %i.fd           ; 2 uses
  %i.fe = add nsw i64 %n.vec1053, %i.et
  %i.ff = sub nsw i64 %i.eu, %i.et                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ff, 5
  %i.fg = and i64 %i.ff, 3                        ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  %i.fi = select i1 %i.fh, i64 4, i64 %i.fg
  %n.vec = sub nsw i64 %i.ff, %i.fi               ; 2 uses
  %i.fj = add nsw i64 %n.vec, %i.et
  br label %bb.o

bb.o:                                             ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403, %bb.n
  %i.fk = phi i16 [ %i.ch, %bb.n ], [ %i.any, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.sroa.43.0 = phi ptr [ %i.bn, %bb.n ], [ %i.anr, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 7 uses
  %.sroa.22.0.in = phi i64 [ %.0.i.i.i, %bb.n ], [ %.0.i.i401, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.sroa.16.0 = phi i32 [ %.sroa.16.1, %bb.n ], [ %i.anq, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.sroa.0439.0 = phi i32 [ %i.bl, %bb.n ], [ %i.ans, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 3 uses
  %.sroa.6436.0 = phi i64 [ 0, %bb.n ], [ %.sroa.6436.5589, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 8 uses
  %.sroa.0435.0 = phi ptr [ %i.cv, %bb.n ], [ %.sroa.0435.5590, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 7 uses
  %.sroa.18.0 = phi i64 [ 0, %bb.n ], [ %.sroa.18.3591, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 3 uses
  %.sroa.0417.0 = phi ptr [ %i.cz, %bb.n ], [ %.sroa.0417.3592, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.0284 = phi i8 [ 0, %bb.n ], [ %.4288593, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 3 uses
  %.0264 = phi i1 [ false, %bb.n ], [ %.2266594, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.0260 = phi i1 [ false, %bb.n ], [ %.3263595, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 2 ; 2 uses
  %i.fm = call noundef i16 @llvm.bswap.i16(i16 %i.fk) ; 3 uses
  %i.fn = zext i16 %i.fm to i32                   ; 4 uses
  %i.fo = and i32 %i.fn, 4095                     ; 10 uses
  %i.fp = and i32 %i.fn, 57343
  %i.fq = load i32, ptr %spec.select, align 4, !tbaa !480 ; 4 uses
  %i.fr = icmp ult i32 %i.fp, %i.fq
  br i1 %i.fr, label %bb.p, label %.thread512, !prof !268

bb.p:                                             ; preds = %bb.o
  %.not.i138.i = icmp ult i32 %i.fo, %i.fq
  br i1 %.not.i138.i, label %bb.q, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, !prof !268

bb.q:                                             ; preds = %bb.p
  %i.fs = zext nneg i32 %i.fo to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.fs
  %i.fu = load atomic i32, ptr %i.ft monotonic, align 4 ; 2 uses
  switch i32 %i.fu, label %bb.r [
    i32 0, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit
    i32 -2147483648, label %bb.s
  ], !prof !649

bb.r:                                             ; preds = %bb.q
  %i.fv = sitofp i32 %i.fu to float
  %i.fw = fmul nnan float %i.fv, f0x30800000
  %i.fx = fpext float %i.fw to double
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

bb.s:                                             ; preds = %bb.q
  %i.fy = and i32 %i.fn, 16384
  %i.fz = icmp ne i32 %i.fy, 0                    ; 2 uses
  %.not.i = icmp sgt i16 %i.fm, -1
  br i1 %.not.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i, label %.split, !prof !268

.thread512:                                       ; preds = %bb.o
  %i.ga = and i32 %i.fn, 16384
  %i.gb = icmp ne i32 %i.ga, 0                    ; 4 uses
  %.not.i514 = icmp sgt i16 %i.fm, -1
  br i1 %.not.i514, label %bb.t, label %.split, !prof !268

.split:                                           ; preds = %.thread512, %bb.s
  %i.gc = phi i1 [ %i.gb, %.thread512 ], [ %i.fz, %bb.s ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 4 ; 2 uses
  br i1 %i.gc, label %bb.x, label %bb.y

bb.t:                                             ; preds = %.thread512
  %.not127.i = icmp eq i32 %i.fq, 0
  br i1 %.not127.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i, label %.thread517

.thread517:                                       ; preds = %bb.t
  %.not.i.i = icmp samesign ult i32 %i.fo, %i.fq
  br i1 %.not.i.i, label %bb.u, label %.thread522, !prof !268

bb.u:                                             ; preds = %.thread517
  %i.ge = zext nneg i32 %i.fo to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ge
  %i.gg = load atomic i32, ptr %i.gf monotonic, align 4 ; 2 uses
  switch i32 %i.gg, label %bb.v [
    i32 0, label %.thread522
    i32 -2147483648, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i
  ], !prof !649

bb.v:                                             ; preds = %bb.u
  %i.gh = sitofp i32 %i.gg to float
  %i.gi = fmul nnan float %i.gh, f0x30800000      ; 3 uses
  %i.gj = fcmp une float %i.gi, 0.000000e+00
  %i.gk = fcmp une float %i.gi, 1.000000e+00
  %i.gl = and i1 %i.gj, %i.gk
  %or.cond5.i = select i1 %i.gb, i1 %i.gl, i1 false
  br i1 %or.cond5.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread, label %.thread522

.thread522:                                       ; preds = %bb.u, %.thread517, %bb.v
  %.0502.ph525 = phi float [ %i.gi, %bb.v ], [ 0.000000e+00, %.thread517 ], [ 0.000000e+00, %bb.u ]
  %i.gm = fpext float %.0502.ph525 to double
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i:        ; preds = %bb.s, %bb.u, %bb.t
  %i.gn = phi i1 [ %i.gb, %bb.u ], [ %i.gb, %bb.t ], [ %i.fz, %bb.s ]
  %i.go = add nuw nsw i32 %i.fo, 1
  %i.gp = mul nuw nsw i32 %i.go, %i.dj
  %i.gq = icmp ugt i32 %i.gp, %i.dt
  br i1 %i.gq, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.w, !prof !267

_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread: ; preds = %bb.v
  %i.gr = add nuw nsw i32 %i.fo, 1
  %i.gs = mul nuw nsw i32 %i.gr, %i.dj
  %i.gt = icmp ugt i32 %i.gs, %i.dt
  br i1 %i.gt, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %.thread, !prof !267

.thread:                                          ; preds = %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread
  %i.gu = mul nuw nsw i32 %i.fo, %i.dj
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.gv
  br label %bb.x

bb.w:                                             ; preds = %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i
  %i.gx = mul nuw nsw i32 %i.fo, %i.dj
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.gy ; 2 uses
  br i1 %i.gn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread, %.split, %bb.w
  %.199.i535 = phi ptr [ %i.gd, %.split ], [ %i.gz, %bb.w ], [ %i.gw, %.thread ]
  %.2107.i533 = phi ptr [ null, %.split ], [ %spec.select, %bb.w ], [ null, %.thread ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 4
  %.mask.i.i = and i16 %i.fk, 128
  %.not.i352 = icmp eq i16 %.mask.i.i, 0
  %i.hb = select i1 %.not.i352, i64 0, i64 %i.dy
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.dy
  br label %bb.y

bb.y:                                             ; preds = %.split, %bb.x, %bb.w
  %.199.i534 = phi ptr [ %.199.i535, %bb.x ], [ %i.gz, %bb.w ], [ %i.gd, %.split ] ; 3 uses
  %.2107.i532 = phi ptr [ %.2107.i533, %bb.x ], [ %spec.select, %bb.w ], [ null, %.split ] ; 2 uses
  %i.he = phi i1 [ true, %bb.x ], [ false, %bb.w ], [ false, %.split ]
  %.097.i = phi ptr [ %i.hc, %bb.x ], [ null, %bb.w ], [ null, %.split ]
  %.096.i = phi ptr [ %i.hd, %bb.x ], [ null, %bb.w ], [ null, %.split ]
  br i1 %.not763, label %.critedge7.i, label %.lr.ph668

.lr.ph668:                                        ; preds = %bb.y, %bb.an
  %.0.i667 = phi i32 [ %i.jh, %bb.an ], [ 0, %bb.y ] ; 6 uses
  %.092.i666 = phi double [ %.5.i.ph, %bb.an ], [ 1.000000e+00, %bb.y ] ; 11 uses
  %.3108.i665 = phi ptr [ %.6111.i.ph, %bb.an ], [ %.2107.i532, %bb.y ] ; 7 uses
  br i1 %i.dz, label %.preheader636.preheader, label %.critedge7.i.thread

.preheader636.preheader:                          ; preds = %.lr.ph668
  %i.hf = add i32 %.0.i667, 4                     ; 2 uses
  %.not128.i1045 = icmp ugt i32 %i.hf, %i.dj
  br i1 %.not128.i1045, label %.critedge.i, label %.lr.ph1047

.preheader636:                                    ; preds = %.lr.ph1047
  %i.hg = add i32 %i.hh, 4                        ; 2 uses
  %.not128.i = icmp ugt i32 %i.hg, %i.dj
  br i1 %.not128.i, label %.critedge.i, label %.lr.ph1047, !llvm.loop !3255

.lr.ph1047:                                       ; preds = %.preheader636.preheader, %.preheader636
  %i.hh = phi i32 [ %i.hg, %.preheader636 ], [ %i.hf, %.preheader636.preheader ] ; 3 uses
  %.1.i1046 = phi i32 [ %i.hh, %.preheader636 ], [ %.0.i667, %.preheader636.preheader ] ; 2 uses
  %i.hi = zext i32 %.1.i1046 to i64
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.199.i534, i64 %i.hi
  %i.hk = load i64, ptr %i.hj, align 1, !tbaa !3296
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %.preheader636, label %..critedge.i_crit_edge, !llvm.loop !3255

..critedge.i_crit_edge:                           ; preds = %.lr.ph1047
  br label %.critedge.i, !llvm.loop !3255

.critedge.i:                                      ; preds = %.preheader636, %..critedge.i_crit_edge, %.preheader636.preheader
  %.1.i.lcssa = phi i32 [ %.1.i1046, %..critedge.i_crit_edge ], [ %.0.i667, %.preheader636.preheader ], [ %i.hh, %.preheader636 ] ; 2 uses
  %i.hm = icmp ult i32 %.1.i.lcssa, %i.dj
  br i1 %i.hm, label %.lr.ph.preheader, label %.critedge7.i

.lr.ph.preheader:                                 ; preds = %.critedge.i
  %i.hn = zext nneg i32 %.1.i.lcssa to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.z
  %indvars.iv = phi i64 [ %i.hn, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.z ] ; 4 uses
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %.199.i534, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 1, !tbaa !283 ; 3 uses
  %i.hq = icmp eq i16 %i.hp, 0
  br i1 %i.hq, label %bb.z, label %.critedge7.i.thread.thread

bb.z:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.dj
  br i1 %exitcond.not, label %.critedge7.i, label %.lr.ph, !llvm.loop !3256

.critedge7.i.thread.thread:                       ; preds = %.lr.ph
  %i.hr = trunc nuw nsw i64 %indvars.iv to i32
  %i.hs = call noundef i16 @llvm.bswap.i16(i16 %i.hp)
  br label %bb.aa

.critedge7.i.thread:                              ; preds = %.lr.ph668
  %.phi.trans.insert876 = zext nneg i32 %.0.i667 to i64 ; 2 uses
  %.phi.trans.insert877 = getelementptr inbounds nuw [2 x i8], ptr %.199.i534, i64 %.phi.trans.insert876
  %.pre878 = load i16, ptr %.phi.trans.insert877, align 1, !tbaa !283 ; 3 uses
  %i.ht = call noundef i16 @llvm.bswap.i16(i16 %.pre878)
  %.not130.i = icmp eq i16 %.pre878, 0
  br i1 %.not130.i, label %bb.an, label %bb.aa

bb.aa:                                            ; preds = %.critedge7.i.thread.thread, %.critedge7.i.thread
  %i.hu = phi i16 [ %i.hs, %.critedge7.i.thread.thread ], [ %i.ht, %.critedge7.i.thread ] ; 4 uses
  %.3.i963 = phi i32 [ %i.hr, %.critedge7.i.thread.thread ], [ %.0.i667, %.critedge7.i.thread ] ; 9 uses
  %i.hv = phi i16 [ %i.hp, %.critedge7.i.thread.thread ], [ %.pre878, %.critedge7.i.thread ] ; 2 uses
  %.pre-phi962 = phi i64 [ %indvars.iv, %.critedge7.i.thread.thread ], [ %.phi.trans.insert876, %.critedge7.i.thread ] ; 3 uses
  %i.hw = sext i16 %i.hu to i32                   ; 6 uses
  %.not.i.i355 = icmp ult i32 %.3.i963, %.sroa.4.8.extract.trunc
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.pre-phi962
  %.0.i.i356 = select i1 %.not.i.i355, ptr %i.hx, ptr @_hb_NullPool, !prof !268
  %i.hy = load i32, ptr %.0.i.i356, align 4, !tbaa !324 ; 10 uses
  %.not131.i = icmp eq i32 %i.hy, 0
  br i1 %.not131.i, label %.critedge7.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hz = icmp eq i32 %i.hy, %i.hw
  br i1 %i.hz, label %bb.an, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.he, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.097.i, i64 %.pre-phi962
  %i.ib = load i16, ptr %i.ia, align 1, !tbaa !283 ; 2 uses
  %i.ic = call noundef i16 @llvm.bswap.i16(i16 %i.ib) ; 3 uses
  %i.id = sext i16 %i.ic to i32                   ; 3 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %.096.i, i64 %.pre-phi962
  %i.if = load i16, ptr %i.ie, align 1, !tbaa !283 ; 2 uses
  %i.ig = call noundef i16 @llvm.bswap.i16(i16 %i.if) ; 3 uses
  %i.ih = sext i16 %i.ig to i32                   ; 3 uses
  %i.ii = icmp slt i16 %i.hu, %i.ic
  %i.ij = icmp sgt i16 %i.hu, %i.ig
  %or.cond.i = or i1 %i.ii, %i.ij
  br i1 %or.cond.i, label %bb.an, label %bb.ae, !prof !408

bb.ae:                                            ; preds = %bb.ad
  %i.ik = icmp slt i16 %i.ic, 0
  %i.il = icmp sgt i16 %i.ig, 0
  %or.cond9.i = and i1 %i.ik, %i.il
  br i1 %or.cond9.i, label %bb.an, label %bb.af, !prof !267

bb.af:                                            ; preds = %bb.ae
  %i.im = icmp slt i32 %i.hy, %i.id
  %i.in = icmp sgt i32 %i.hy, %i.ih
  %or.cond137.i = or i1 %i.im, %i.in
  br i1 %or.cond137.i, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.io = icmp slt i32 %i.hy, %i.hw
  br i1 %i.io, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %.not133.i = icmp eq i16 %i.hv, %i.ib
  br i1 %.not133.i, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ip = sub nsw i32 %i.hy, %i.id
  %i.iq = sitofp i32 %i.ip to double
  %i.ir = sub nsw i32 %i.hw, %i.id
  %i.is = sitofp i32 %i.ir to double
  %i.it = fdiv double %i.iq, %i.is
  %i.iu = fmul double %.092.i666, %i.it
  br label %bb.an

bb.aj:                                            ; preds = %bb.ag
  %.not132.i = icmp eq i16 %i.hv, %i.if
  br i1 %.not132.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iv = sub nsw i32 %i.ih, %i.hy
  %i.iw = sitofp i32 %i.iv to double
  %i.ix = sub nsw i32 %i.ih, %i.hw
  %i.iy = sitofp i32 %i.ix to double
  %i.iz = fdiv double %i.iw, %i.iy
  %i.ja = fmul double %.092.i666, %i.iz
  br label %bb.an

bb.al:                                            ; preds = %bb.ac
  %.sroa.speculated469 = call i32 @llvm.smin.i32(i32 %i.hw, i32 0)
  %i.jb = icmp slt i32 %i.hy, %.sroa.speculated469
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.hw, i32 0)
  %i.jc = icmp sgt i32 %i.hy, %.sroa.speculated
  %or.cond624 = or i1 %i.jb, %i.jc
  br i1 %or.cond624, label %.critedge7.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jd = sitofp i32 %i.hy to double
  %i.je = sitofp i16 %i.hu to double
  %i.jf = fdiv double %i.jd, %i.je
  %i.jg = fmul double %.092.i666, %i.jf
  br label %bb.an

bb.an:                                            ; preds = %.critedge7.i.thread, %bb.am, %bb.ab, %bb.ah, %bb.ad, %bb.ae, %bb.ai, %bb.aj, %bb.ak
  %.3.i964 = phi i32 [ %.3.i963, %bb.ae ], [ %.3.i963, %bb.ad ], [ %.3.i963, %bb.ai ], [ %.3.i963, %bb.aj ], [ %.3.i963, %bb.ak ], [ %.3.i963, %bb.ah ], [ %.3.i963, %bb.ab ], [ %.3.i963, %bb.am ], [ %.0.i667, %.critedge7.i.thread ]
  %.6111.i.ph = phi ptr [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ai ], [ null, %bb.aj ], [ null, %bb.ak ], [ null, %bb.ah ], [ %.3108.i665, %bb.ab ], [ %.3108.i665, %bb.am ], [ %.3108.i665, %.critedge7.i.thread ] ; 2 uses
  %.5.i.ph = phi double [ %.092.i666, %bb.ae ], [ %.092.i666, %bb.ad ], [ %i.iu, %bb.ai ], [ %.092.i666, %bb.aj ], [ %i.ja, %bb.ak ], [ %.092.i666, %bb.ah ], [ %.092.i666, %bb.ab ], [ %i.jg, %bb.am ], [ %.092.i666, %.critedge7.i.thread ] ; 2 uses
  %i.jh = add nuw i32 %.3.i964, 1                 ; 2 uses
  %i.ji = icmp ult i32 %i.jh, %i.dj
  br i1 %i.ji, label %.lr.ph668, label %.critedge7.i, !llvm.loop !3257

.critedge7.i:                                     ; preds = %bb.an, %bb.al, %bb.aa, %.critedge.i, %bb.z, %bb.y
  %.3108.i654 = phi ptr [ %.2107.i532, %bb.y ], [ %.3108.i665, %bb.z ], [ %.3108.i665, %.critedge.i ], [ %.6111.i.ph, %bb.an ], [ %.3108.i665, %bb.al ], [ %.3108.i665, %bb.aa ] ; 3 uses
  %.6.i = phi double [ 1.000000e+00, %bb.y ], [ %.092.i666, %bb.z ], [ %.092.i666, %.critedge.i ], [ %.5.i.ph, %bb.an ], [ 0.000000e+00, %bb.al ], [ 0.000000e+00, %bb.aa ] ; 4 uses
  %.not134.i = icmp eq ptr %.3108.i654, null
  br i1 %.not134.i, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.ao

bb.ao:                                            ; preds = %.critedge7.i
  %i.jj = load i32, ptr %.3108.i654, align 4, !tbaa !480
  %.not.i141.i = icmp ult i32 %i.fo, %i.jj
  br i1 %.not.i141.i, label %bb.ap, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, !prof !268

bb.ap:                                            ; preds = %bb.ao
  %i.jk = fptrunc double %.6.i to float
  %i.jl = getelementptr inbounds nuw i8, ptr %.3108.i654, i64 4
  %i.jm = zext nneg i32 %i.fo to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.jm
  %i.jo = fmul float %i.jk, f0x4E800000
  %i.jp = fadd float %i.jo, 5.000000e-01
  %i.jq = call noundef float @llvm.floor.f32(float %i.jp)
  %i.jr = fptosi float %i.jq to i32
  store atomic i32 %i.jr, ptr %i.jn monotonic, align 4
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.af, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread, %bb.q, %bb.r, %bb.p, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i, %.thread522, %bb.ao, %bb.ap, %.critedge7.i
  %.4116.i = phi double [ 0.000000e+00, %bb.q ], [ %.6.i, %bb.ao ], [ %i.gm, %.thread522 ], [ %.6.i, %.critedge7.i ], [ %.6.i, %bb.ap ], [ 0.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i ], [ 0.000000e+00, %bb.p ], [ %i.fx, %bb.r ], [ 0.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread ], [ 0.000000e+00, %bb.af ]
  %i.js = fptrunc double %.4116.i to float        ; 8 uses
  %i.jt = fcmp oeq float %i.js, 0.000000e+00
  br i1 %i.jt, label %.thread580, label %bb.aq

bb.aq:                                            ; preds = %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit
  br i1 %.0264, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %.preheader646.preheader

.preheader646.preheader:                          ; preds = %bb.aq
  %.pre879 = load i16, ptr %i.fl, align 1, !tbaa !283
  br label %.preheader646

.preheader646:                                    ; preds = %.preheader646.preheader, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit
  %i.ju = phi i16 [ %i.kd, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.pre879, %.preheader646.preheader ]
  %.sroa.14413.0 = phi ptr [ %i.jw, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.43.0, %.preheader646.preheader ]
  %.sroa.9.0 = phi i64 [ %.0.i.i361, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.22.0.in, %.preheader646.preheader ]
  %.sroa.0409.0 = phi i32 [ %i.jx, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.0439.0, %.preheader646.preheader ] ; 2 uses
  %i.jv = and i16 %i.ju, 32
  %.not615 = icmp eq i16 %i.jv, 0
  br i1 %.not615, label %bb.ar, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread

bb.ar:                                            ; preds = %.preheader646
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.14413.0, i64 %.sroa.9.0 ; 4 uses
  %i.jx = add nsw i32 %.sroa.0409.0, -1
  %i.jy = icmp slt i32 %.sroa.0409.0, 2
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = sub i64 %i.ka, %i.ce
  %.not.i359 = icmp ugt i64 %i.kb, %.sroa.6.0.i952
  %or.cond755 = select i1 %i.jy, i1 true, i1 %.not.i359, !prof !408
  br i1 %or.cond755, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %bb.as, !prof !408

bb.as:                                            ; preds = %bb.ar
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.kd = load i16, ptr %i.kc, align 1, !tbaa !283 ; 2 uses
  %i.ke = call noundef i16 @llvm.bswap.i16(i16 %i.kd) ; 2 uses
  %.not.i.i360 = icmp ult i16 %i.ke, 16384
  br i1 %.not.i.i360, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit, label %bb.at, !prof !268

bb.at:                                            ; preds = %bb.as
  %i.kf = zext i16 %i.ke to i32                   ; 2 uses
  %i.kg = lshr i32 %i.kf, 15
  %i.kh = lshr i32 %i.kf, 13
  %i.ki = and i32 %i.kh, 2
  %i.kj = or disjoint i32 %i.ki, %i.kg
  %narrow616 = mul nuw nsw i32 %i.kj, %i.bm
  %narrow617 = add nuw nsw i32 %narrow616, 4
  %i.kk = zext nneg i32 %narrow617 to i64
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit: ; preds = %bb.as, %bb.at
  %.0.i.i361 = phi i64 [ %i.kk, %bb.at ], [ 4, %bb.as ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.0.i.i361
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = sub i64 %i.km, %i.ce
  %.not618 = icmp ugt i64 %i.kn, %.sroa.6.0.i952
  br i1 %.not618, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %.preheader646, !llvm.loop !3258

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread: ; preds = %bb.ar, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit, %.preheader646, %bb.aq
  %.2262 = phi i1 [ %.0260, %bb.aq ], [ %.0260, %bb.ar ], [ %.0260, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ true, %.preheader646 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.ko = load i16, ptr %i.ea, align 1, !tbaa !283 ; 2 uses
  %i.kp = icmp eq i16 %i.ko, 0
  %i.kq = call i16 @llvm.bswap.i16(i16 %i.ko)
  %i.kr = zext i16 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i954, i64 %i.kr
end_hunk_0
