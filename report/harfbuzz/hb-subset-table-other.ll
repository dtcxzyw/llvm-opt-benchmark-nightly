inline.NumInlined: 11065
inline.NumDeleted: 4620
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t22apply_deltas_to_pointsEj10hb_array_tIKiES5_I15contour_point_tER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tEb:bb.a
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !153
  %i.dm = call noundef i32 @llvm.bswap.i32(i32 %i.dl)
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i347, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i347, i64 6
  %i.dq = load i16, ptr %i.dp, align 1, !tbaa !155
  %i.dr = call noundef i16 @llvm.bswap.i16(i16 %i.dq)
  %i.ds = zext i16 %i.dr to i32
  %i.dt = mul nuw i32 %i.ds, %i.dj                ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 2 uses
  %i.dy = zext i16 %i.di to i64                   ; 2 uses
  %i.dz = icmp ugt i16 %i.di, 15
  %.not767 = icmp eq i16 %i.dh, 0
  %.sroa.4.8.extract.trunc = trunc i64 %3 to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i958, i64 %.sroa.6.0.i956 ; 2 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = icmp slt i32 %.sroa.7.8.extract.trunc, 0
  %.sroa.2.8.insert.ext.i.i371 = and i64 %5, 2147483647 ; 2 uses
  %i.ee = mul i32 %.sroa.7.8.extract.trunc, 12
  %i.ef = select i1 %8, i32 48, i32 %i.ee         ; 2 uses
  %.not.i373 = icmp eq i32 %i.ef, 0               ; 2 uses
  %i.eg = add i64 %5, 4294967292
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = select i1 %8, i64 %i.eh, i64 0          ; 2 uses
  %i.ej = zext i32 %i.ef to i64                   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 76
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 10 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 92 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 10 uses
  %i.eo = mul i64 %5, 12
  %i.ep = and i64 %i.eo, 4294967292               ; 2 uses
  %.not.i.i.i383 = icmp eq i64 %i.ep, 0
  %i.eq = add i32 %.sroa.7.8.extract.trunc, -4    ; 3 uses
  %i.er = select i1 %8, i32 %i.eq, i32 0          ; 2 uses
  %i.es = icmp ult i32 %i.er, %.sroa.7.8.extract.trunc ; 4 uses
  %i.et = load i32, ptr @_hb_NullPool, align 16   ; 4 uses
  %i.eu = zext i32 %i.er to i64                   ; 18 uses
  %i.ev = and i64 %5, 4294967295                  ; 9 uses
  %i.ew = sub nsw i64 %i.ev, %i.eu                ; 2 uses
  %i.ex = xor i64 %i.eu, -1
  %i.ey = add nsw i64 %i.ev, %i.ex                ; 2 uses
  %xtraiter1195 = and i64 %i.ew, 1
  %lcmp.mod1196.not = icmp eq i64 %xtraiter1195, 0
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %i.eu ; 2 uses
  %indvars.iv.next842.prol = add nuw nsw i64 %i.eu, 1
  %i.fa = icmp eq i64 %i.ey, 0
  %i.fb = sub nsw i64 %i.ev, %i.eu                ; 3 uses
  %min.iters.check1055 = icmp ult i64 %i.fb, 5
  %i.fc = and i64 %i.fb, 3                        ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 0
  %i.fe = select i1 %i.fd, i64 4, i64 %i.fc
  %n.vec1057 = sub nsw i64 %i.fb, %i.fe           ; 2 uses
  %i.ff = add nsw i64 %n.vec1057, %i.eu
  %i.fg = sub nsw i64 %i.ev, %i.eu                ; 3 uses
  %min.iters.check = icmp ult i64 %i.fg, 5
  %i.fh = and i64 %i.fg, 3                        ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 0
  %i.fj = select i1 %i.fi, i64 4, i64 %i.fh
  %n.vec = sub nsw i64 %i.fg, %i.fj               ; 2 uses
  %i.fk = add nsw i64 %n.vec, %i.eu
  br label %bb.o

bb.o:                                             ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407, %bb.n
  %i.fl = phi i16 [ %i.ch, %bb.n ], [ %i.anu, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407 ] ; 2 uses
  %.sroa.43.0 = phi ptr [ %i.bn, %bb.n ], [ %i.ann, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407 ] ; 7 uses
  %.sroa.22.0.in = phi i64 [ %.0.i.i.i, %bb.n ], [ %.0.i.i405, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407 ] ; 2 uses
  %.sroa.16.0 = phi i32 [ %.sroa.16.1, %bb.n ], [ %i.anm, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407 ] ; 2 uses
  %.sroa.0443.0 = phi i32 [ %i.bl, %bb.n ], [ %i.ano, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407 ] ; 3 uses
  %.sroa.6440.0 = phi i64 [ 0, %bb.n ], [ %.sroa.6440.5593, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407 ] ; 8 uses
  %.sroa.0439.0 = phi ptr [ %i.cv, %bb.n ], [ %.sroa.0439.5594, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407 ] ; 7 uses
  %.sroa.18.0 = phi i64 [ 0, %bb.n ], [ %.sroa.18.3595, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407 ] ; 3 uses
  %.sroa.0421.0 = phi ptr [ %i.cz, %bb.n ], [ %.sroa.0421.3596, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407 ] ; 2 uses
  %.0284 = phi i8 [ 0, %bb.n ], [ %.4288597, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407 ] ; 3 uses
  %.0264 = phi i1 [ false, %bb.n ], [ %.2266598, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407 ] ; 2 uses
  %.0260 = phi i1 [ false, %bb.n ], [ %.3263599, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407 ] ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 2 ; 2 uses
  %i.fn = call noundef i16 @llvm.bswap.i16(i16 %i.fl) ; 3 uses
  %i.fo = zext i16 %i.fn to i32                   ; 4 uses
  %i.fp = and i32 %i.fo, 4095                     ; 10 uses
  %i.fq = and i32 %i.fo, 57343
  %i.fr = load i32, ptr %spec.select, align 4, !tbaa !650 ; 4 uses
  %i.fs = icmp ult i32 %i.fq, %i.fr
  br i1 %i.fs, label %bb.p, label %.thread516, !prof !142

bb.p:                                             ; preds = %bb.o
  %.not.i314 = icmp ult i32 %i.fp, %i.fr
  br i1 %.not.i314, label %bb.q, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, !prof !142

bb.q:                                             ; preds = %bb.p
  %i.ft = zext nneg i32 %i.fp to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ft
  %i.fv = load atomic i32, ptr %i.fu monotonic, align 4 ; 2 uses
  switch i32 %i.fv, label %bb.r [
    i32 0, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit
    i32 -2147483648, label %bb.s
  ], !prof !652

bb.r:                                             ; preds = %bb.q
  %i.fw = sitofp i32 %i.fv to float
  %i.fx = fmul nnan float %i.fw, f0x30800000
  %i.fy = fpext float %i.fx to double
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

bb.s:                                             ; preds = %bb.q
  %i.fz = and i32 %i.fo, 16384
  %i.ga = icmp ne i32 %i.fz, 0                    ; 2 uses
  %.not.i = icmp sgt i16 %i.fn, -1
  br i1 %.not.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit318, label %.split, !prof !142

.thread516:                                       ; preds = %bb.o
  %i.gb = and i32 %i.fo, 16384
  %i.gc = icmp ne i32 %i.gb, 0                    ; 4 uses
  %.not.i518 = icmp sgt i16 %i.fn, -1
  br i1 %.not.i518, label %bb.t, label %.split, !prof !142

.split:                                           ; preds = %.thread516, %bb.s
  %i.gd = phi i1 [ %i.gc, %.thread516 ], [ %i.ga, %bb.s ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 4 ; 2 uses
  br i1 %i.gd, label %bb.x, label %bb.y

bb.t:                                             ; preds = %.thread516
  %.not127.i = icmp eq i32 %i.fr, 0
  br i1 %.not127.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit318, label %.thread521

.thread521:                                       ; preds = %bb.t
  %.not.i316 = icmp samesign ult i32 %i.fp, %i.fr
  br i1 %.not.i316, label %bb.u, label %.thread526, !prof !142

bb.u:                                             ; preds = %.thread521
  %i.gf = zext nneg i32 %i.fp to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.gf
  %i.gh = load atomic i32, ptr %i.gg monotonic, align 4 ; 2 uses
  switch i32 %i.gh, label %bb.v [
    i32 0, label %.thread526
    i32 -2147483648, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit318
  ], !prof !652

bb.v:                                             ; preds = %bb.u
  %i.gi = sitofp i32 %i.gh to float
  %i.gj = fmul nnan float %i.gi, f0x30800000      ; 3 uses
  %i.gk = fcmp une float %i.gj, 0.000000e+00
  %i.gl = fcmp une float %i.gj, 1.000000e+00
  %i.gm = and i1 %i.gk, %i.gl
  %or.cond5.i = select i1 %i.gc, i1 %i.gm, i1 false
  br i1 %or.cond5.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit318.thread, label %.thread526

.thread526:                                       ; preds = %bb.u, %.thread521, %bb.v
  %.0506.ph529 = phi float [ %i.gj, %bb.v ], [ 0.000000e+00, %.thread521 ], [ 0.000000e+00, %bb.u ]
  %i.gn = fpext float %.0506.ph529 to double
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

_ZNK2OT17hb_scalar_cache_t3getEjPf.exit318:       ; preds = %bb.s, %bb.u, %bb.t
  %i.go = phi i1 [ %i.gc, %bb.u ], [ %i.gc, %bb.t ], [ %i.ga, %bb.s ]
  %i.gp = add nuw nsw i32 %i.fp, 1
  %i.gq = mul nuw nsw i32 %i.gp, %i.dj
  %i.gr = icmp ugt i32 %i.gq, %i.dt
  br i1 %i.gr, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.w, !prof !20

_ZNK2OT17hb_scalar_cache_t3getEjPf.exit318.thread: ; preds = %bb.v
  %i.gs = add nuw nsw i32 %i.fp, 1
  %i.gt = mul nuw nsw i32 %i.gs, %i.dj
  %i.gu = icmp ugt i32 %i.gt, %i.dt
  br i1 %i.gu, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %.thread, !prof !20

.thread:                                          ; preds = %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit318.thread
  %i.gv = mul nuw nsw i32 %i.fp, %i.dj
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.gw
  br label %bb.x

bb.w:                                             ; preds = %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit318
  %i.gy = mul nuw nsw i32 %i.fp, %i.dj
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.gz ; 2 uses
  br i1 %i.go, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread, %.split, %bb.w
  %.199.i539 = phi ptr [ %i.ge, %.split ], [ %i.ha, %bb.w ], [ %i.gx, %.thread ]
  %.2107.i537 = phi ptr [ null, %.split ], [ %spec.select, %bb.w ], [ null, %.thread ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 4
  %.mask.i.i = and i16 %i.fl, 128
  %.not.i357 = icmp eq i16 %.mask.i.i, 0
  %i.hc = select i1 %.not.i357, i64 0, i64 %i.dy
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %i.dy
  br label %bb.y

bb.y:                                             ; preds = %.split, %bb.x, %bb.w
  %.199.i538 = phi ptr [ %.199.i539, %bb.x ], [ %i.ha, %bb.w ], [ %i.ge, %.split ] ; 3 uses
  %.2107.i536 = phi ptr [ %.2107.i537, %bb.x ], [ %spec.select, %bb.w ], [ null, %.split ] ; 2 uses
  %i.hf = phi i1 [ true, %bb.x ], [ false, %bb.w ], [ false, %.split ]
  %.097.i = phi ptr [ %i.hd, %bb.x ], [ null, %bb.w ], [ null, %.split ]
  %.096.i = phi ptr [ %i.he, %bb.x ], [ null, %bb.w ], [ null, %.split ]
  br i1 %.not767, label %.critedge7.i, label %.lr.ph672

.lr.ph672:                                        ; preds = %bb.y, %bb.an
  %.0.i671 = phi i32 [ %i.jd, %bb.an ], [ 0, %bb.y ] ; 3 uses
  %.092.i670 = phi double [ %.5.i.ph, %bb.an ], [ 1.000000e+00, %bb.y ] ; 11 uses
  %.3108.i669 = phi ptr [ %.6111.i.ph, %bb.an ], [ %.2107.i536, %bb.y ] ; 7 uses
  %9 = zext nneg i32 %.0.i671 to i64              ; 5 uses
  br i1 %i.dz, label %.preheader640.preheader, label %.critedge7.i.thread

.preheader640.preheader:                          ; preds = %.lr.ph672
  %indvars.iv.next1067 = add nuw nsw i64 %9, 4    ; 2 uses
  %indvars1068 = trunc nuw i64 %indvars.iv.next1067 to i32
  %.not128.i1049 = icmp ugt i32 %indvars1068, %i.dj
  br i1 %.not128.i1049, label %.critedge.i, label %.lr.ph1051

.preheader640:                                    ; preds = %.lr.ph1051
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next1071, 4 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %.not128.i = icmp ugt i32 %indvars, %i.dj
  br i1 %.not128.i, label %.critedge.i, label %.lr.ph1051, !llvm.loop !653

.lr.ph1051:                                       ; preds = %.preheader640.preheader, %.preheader640
  %indvars.iv.next1071 = phi i64 [ %indvars.iv.next, %.preheader640 ], [ %indvars.iv.next1067, %.preheader640.preheader ] ; 3 uses
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071, %.preheader640 ], [ %9, %.preheader640.preheader ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %.199.i538, i64 %indvars.iv1070
  %i.hh = load i64, ptr %i.hg, align 1, !tbaa !654
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %.preheader640, label %..critedge.i_crit_edge, !llvm.loop !653

..critedge.i_crit_edge:                           ; preds = %.lr.ph1051
  br label %.critedge.i, !llvm.loop !653

.critedge.i:                                      ; preds = %.preheader640, %..critedge.i_crit_edge, %.preheader640.preheader
  %indvars.iv.lcssa = phi i64 [ %indvars.iv1070, %..critedge.i_crit_edge ], [ %9, %.preheader640.preheader ], [ %indvars.iv.next1071, %.preheader640 ] ; 2 uses
  %10 = trunc nuw i64 %indvars.iv.lcssa to i32
  %i.hj = icmp ult i32 %10, %i.dj
  br i1 %i.hj, label %.lr.ph, label %.critedge7.i

.lr.ph:                                           ; preds = %.critedge.i, %bb.z
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %bb.z ], [ %indvars.iv.lcssa, %.critedge.i ] ; 4 uses
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %.199.i538, i64 %indvars.iv
  %i.hl = load i16, ptr %i.hk, align 1, !tbaa !155 ; 3 uses
  %i.hm = icmp eq i16 %i.hl, 0
  br i1 %i.hm, label %bb.z, label %.critedge7.i.thread.thread

bb.z:                                             ; preds = %.lr.ph
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.a to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.dj
  br i1 %exitcond.not, label %.critedge7.i, label %.lr.ph, !llvm.loop !656

.critedge7.i.thread.thread:                       ; preds = %.lr.ph
  %i.hn = trunc nuw i64 %indvars.iv to i32
  %i.ho = call noundef i16 @llvm.bswap.i16(i16 %i.hl)
  br label %bb.aa

.critedge7.i.thread:                              ; preds = %.lr.ph672
  %.phi.trans.insert881 = getelementptr inbounds nuw [2 x i8], ptr %.199.i538, i64 %9
  %.pre882 = load i16, ptr %.phi.trans.insert881, align 1, !tbaa !155 ; 3 uses
  %i.hp = call noundef i16 @llvm.bswap.i16(i16 %.pre882)
  %.not130.i = icmp eq i16 %.pre882, 0
  br i1 %.not130.i, label %bb.an, label %bb.aa

bb.aa:                                            ; preds = %.critedge7.i.thread.thread, %.critedge7.i.thread
  %i.hq = phi i16 [ %i.ho, %.critedge7.i.thread.thread ], [ %i.hp, %.critedge7.i.thread ] ; 4 uses
  %.3.i967 = phi i32 [ %i.hn, %.critedge7.i.thread.thread ], [ %.0.i671, %.critedge7.i.thread ] ; 9 uses
  %i.hr = phi i16 [ %i.hl, %.critedge7.i.thread.thread ], [ %.pre882, %.critedge7.i.thread ] ; 2 uses
  %.pre-phi966 = phi i64 [ %indvars.iv, %.critedge7.i.thread.thread ], [ %9, %.critedge7.i.thread ] ; 3 uses
  %i.hs = sext i16 %i.hq to i32                   ; 6 uses
  %.not.i.i360 = icmp ult i32 %.3.i967, %.sroa.4.8.extract.trunc
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.pre-phi966
  %.0.i.i361 = select i1 %.not.i.i360, ptr %i.ht, ptr @_hb_NullPool, !prof !142
  %i.hu = load i32, ptr %.0.i.i361, align 4, !tbaa !137 ; 10 uses
  %.not131.i = icmp eq i32 %i.hu, 0
  br i1 %.not131.i, label %.critedge7.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hv = icmp eq i32 %i.hu, %i.hs
  br i1 %i.hv, label %bb.an, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.hf, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.097.i, i64 %.pre-phi966
  %i.hx = load i16, ptr %i.hw, align 1, !tbaa !155 ; 2 uses
  %i.hy = call noundef i16 @llvm.bswap.i16(i16 %i.hx) ; 3 uses
  %i.hz = sext i16 %i.hy to i32                   ; 3 uses
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.096.i, i64 %.pre-phi966
  %i.ib = load i16, ptr %i.ia, align 1, !tbaa !155 ; 2 uses
  %i.ic = call noundef i16 @llvm.bswap.i16(i16 %i.ib) ; 3 uses
  %i.id = sext i16 %i.ic to i32                   ; 3 uses
  %i.ie = icmp slt i16 %i.hq, %i.hy
  %i.if = icmp sgt i16 %i.hq, %i.ic
  %or.cond.i = or i1 %i.ie, %i.if
  br i1 %or.cond.i, label %bb.an, label %bb.ae, !prof !136

bb.ae:                                            ; preds = %bb.ad
  %i.ig = icmp slt i16 %i.hy, 0
  %i.ih = icmp sgt i16 %i.ic, 0
  %or.cond9.i = and i1 %i.ig, %i.ih
  br i1 %or.cond9.i, label %bb.an, label %bb.af, !prof !20

bb.af:                                            ; preds = %bb.ae
  %i.ii = icmp slt i32 %i.hu, %i.hz
  %i.ij = icmp sgt i32 %i.hu, %i.id
  %or.cond137.i = or i1 %i.ii, %i.ij
  br i1 %or.cond137.i, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ik = icmp slt i32 %i.hu, %i.hs
  br i1 %i.ik, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %.not133.i = icmp eq i16 %i.hr, %i.hx
  br i1 %.not133.i, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.il = sub nsw i32 %i.hu, %i.hz
  %i.im = sitofp i32 %i.il to double
  %i.in = sub nsw i32 %i.hs, %i.hz
  %i.io = sitofp i32 %i.in to double
  %i.ip = fdiv double %i.im, %i.io
  %i.iq = fmul double %.092.i670, %i.ip
  br label %bb.an

bb.aj:                                            ; preds = %bb.ag
  %.not132.i = icmp eq i16 %i.hr, %i.ib
  br i1 %.not132.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ir = sub nsw i32 %i.id, %i.hu
  %i.is = sitofp i32 %i.ir to double
  %i.it = sub nsw i32 %i.id, %i.hs
  %i.iu = sitofp i32 %i.it to double
  %i.iv = fdiv double %i.is, %i.iu
  %i.iw = fmul double %.092.i670, %i.iv
  br label %bb.an

bb.al:                                            ; preds = %bb.ac
  %.sroa.speculated473 = call i32 @llvm.smin.i32(i32 %i.hs, i32 0)
  %i.ix = icmp slt i32 %i.hu, %.sroa.speculated473
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.hs, i32 0)
  %i.iy = icmp sgt i32 %i.hu, %.sroa.speculated
  %or.cond628 = or i1 %i.ix, %i.iy
  br i1 %or.cond628, label %.critedge7.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iz = sitofp i32 %i.hu to double
  %i.ja = sitofp i16 %i.hq to double
  %i.jb = fdiv double %i.iz, %i.ja
  %i.jc = fmul double %.092.i670, %i.jb
  br label %bb.an

bb.an:                                            ; preds = %.critedge7.i.thread, %bb.am, %bb.ab, %bb.ah, %bb.ad, %bb.ae, %bb.ai, %bb.aj, %bb.ak
  %.3.i968 = phi i32 [ %.3.i967, %bb.ae ], [ %.3.i967, %bb.ad ], [ %.3.i967, %bb.ai ], [ %.3.i967, %bb.aj ], [ %.3.i967, %bb.ak ], [ %.3.i967, %bb.ah ], [ %.3.i967, %bb.ab ], [ %.3.i967, %bb.am ], [ %.0.i671, %.critedge7.i.thread ]
  %.6111.i.ph = phi ptr [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ai ], [ null, %bb.aj ], [ null, %bb.ak ], [ null, %bb.ah ], [ %.3108.i669, %bb.ab ], [ %.3108.i669, %bb.am ], [ %.3108.i669, %.critedge7.i.thread ] ; 2 uses
  %.5.i.ph = phi double [ %.092.i670, %bb.ae ], [ %.092.i670, %bb.ad ], [ %i.iq, %bb.ai ], [ %.092.i670, %bb.aj ], [ %i.iw, %bb.ak ], [ %.092.i670, %bb.ah ], [ %.092.i670, %bb.ab ], [ %i.jc, %bb.am ], [ %.092.i670, %.critedge7.i.thread ] ; 2 uses
  %i.jd = add nuw i32 %.3.i968, 1                 ; 2 uses
  %i.je = icmp ult i32 %i.jd, %i.dj
  br i1 %i.je, label %.lr.ph672, label %.critedge7.i, !llvm.loop !657

.critedge7.i:                                     ; preds = %bb.an, %bb.al, %bb.aa, %.critedge.i, %bb.z, %bb.y
  %.3108.i658 = phi ptr [ %.2107.i536, %bb.y ], [ %.3108.i669, %bb.z ], [ %.3108.i669, %.critedge.i ], [ %.6111.i.ph, %bb.an ], [ %.3108.i669, %bb.al ], [ %.3108.i669, %bb.aa ] ; 3 uses
  %.6.i = phi double [ 1.000000e+00, %bb.y ], [ %.092.i670, %bb.z ], [ %.092.i670, %.critedge.i ], [ %.5.i.ph, %bb.an ], [ 0.000000e+00, %bb.al ], [ 0.000000e+00, %bb.aa ] ; 4 uses
  %.not134.i = icmp eq ptr %.3108.i658, null
  br i1 %.not134.i, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.ao

bb.ao:                                            ; preds = %.critedge7.i
  %i.jf = load i32, ptr %.3108.i658, align 4, !tbaa !650
  %.not.i319 = icmp ult i32 %i.fp, %i.jf
  br i1 %.not.i319, label %bb.ap, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, !prof !142

bb.ap:                                            ; preds = %bb.ao
  %i.jg = fptrunc double %.6.i to float
  %i.jh = getelementptr inbounds nuw i8, ptr %.3108.i658, i64 4
  %i.ji = zext nneg i32 %i.fp to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.ji
  %i.jk = fmul float %i.jg, f0x4E800000
  %i.jl = fadd float %i.jk, 5.000000e-01
  %i.jm = call noundef float @llvm.floor.f32(float %i.jl)
  %i.jn = fptosi float %i.jm to i32
  store atomic i32 %i.jn, ptr %i.jj monotonic, align 4
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.af, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit318.thread, %bb.q, %bb.r, %bb.p, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit318, %.thread526, %bb.ap, %bb.ao, %.critedge7.i
  %.4116.i = phi double [ 0.000000e+00, %bb.q ], [ %.6.i, %bb.ap ], [ %i.gn, %.thread526 ], [ %.6.i, %.critedge7.i ], [ %.6.i, %bb.ao ], [ 0.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit318 ], [ 0.000000e+00, %bb.p ], [ %i.fy, %bb.r ], [ 0.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit318.thread ], [ 0.000000e+00, %bb.af ]
  %i.jo = fptrunc double %.4116.i to float        ; 8 uses
  %i.jp = fcmp oeq float %i.jo, 0.000000e+00
  br i1 %i.jp, label %.thread584, label %bb.aq

bb.aq:                                            ; preds = %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit
  br i1 %.0264, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %.preheader650.preheader

.preheader650.preheader:                          ; preds = %bb.aq
  %.pre883 = load i16, ptr %i.fm, align 1, !tbaa !155
  br label %.preheader650

.preheader650:                                    ; preds = %.preheader650.preheader, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit
  %i.jq = phi i16 [ %i.jz, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.pre883, %.preheader650.preheader ]
  %.sroa.14417.0 = phi ptr [ %i.js, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.43.0, %.preheader650.preheader ]
  %.sroa.9.0 = phi i64 [ %.0.i.i366, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.22.0.in, %.preheader650.preheader ]
  %.sroa.0413.0 = phi i32 [ %i.jt, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.0443.0, %.preheader650.preheader ] ; 2 uses
  %i.jr = and i16 %i.jq, 32
  %.not619 = icmp eq i16 %i.jr, 0
  br i1 %.not619, label %bb.ar, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread

bb.ar:                                            ; preds = %.preheader650
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.14417.0, i64 %.sroa.9.0 ; 4 uses
  %i.jt = add nsw i32 %.sroa.0413.0, -1
  %i.ju = icmp slt i32 %.sroa.0413.0, 2
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = sub i64 %i.jw, %i.ce
  %.not.i364 = icmp ugt i64 %i.jx, %.sroa.6.0.i956
  %or.cond759 = select i1 %i.ju, i1 true, i1 %.not.i364, !prof !136
  br i1 %or.cond759, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %bb.as, !prof !136

bb.as:                                            ; preds = %bb.ar
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.jz = load i16, ptr %i.jy, align 1, !tbaa !155 ; 2 uses
  %i.ka = call noundef i16 @llvm.bswap.i16(i16 %i.jz) ; 2 uses
  %.not.i.i365 = icmp ult i16 %i.ka, 16384
  br i1 %.not.i.i365, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit, label %bb.at, !prof !142

bb.at:                                            ; preds = %bb.as
  %i.kb = zext i16 %i.ka to i32                   ; 2 uses
  %i.kc = lshr i32 %i.kb, 15
  %i.kd = lshr i32 %i.kb, 13
  %i.ke = and i32 %i.kd, 2
  %i.kf = or disjoint i32 %i.ke, %i.kc
  %narrow620 = mul nuw nsw i32 %i.kf, %i.bm
  %narrow621 = add nuw nsw i32 %narrow620, 4
  %i.kg = zext nneg i32 %narrow621 to i64
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit: ; preds = %bb.as, %bb.at
  %.0.i.i366 = phi i64 [ %i.kg, %bb.at ], [ 4, %bb.as ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.js, i64 %.0.i.i366
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = sub i64 %i.ki, %i.ce
  %.not622 = icmp ugt i64 %i.kj, %.sroa.6.0.i956
  br i1 %.not622, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %.preheader650, !llvm.loop !658

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread: ; preds = %bb.ar, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit, %.preheader650, %bb.aq
  %.2262 = phi i1 [ %.0260, %bb.aq ], [ %.0260, %bb.ar ], [ %.0260, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ true, %.preheader650 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.kk = load i16, ptr %i.ea, align 1, !tbaa !155 ; 2 uses
  %i.kl = icmp eq i16 %i.kk, 0
  %i.km = call i16 @llvm.bswap.i16(i16 %i.kk)
  %i.kn = zext i16 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i958, i64 %i.kn
  %.0.i.i.i368 = select i1 %i.kl, ptr @_hb_NullPool, ptr %i.ko, !prof !20
  %i.kp = zext i32 %.sroa.16.0 to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i.i.i368, i64 %i.kp ; 4 uses
  store ptr %i.kq, ptr %i.b, align 8, !tbaa !648
  %i.kr = load i16, ptr %.sroa.43.0, align 1, !tbaa !155
  %i.ks = call noundef i16 @llvm.bswap.i16(i16 %i.kr) ; 2 uses
  %.not.i369 = icmp ugt ptr %.sroa.015.0.i958, %i.kq
  br i1 %.not.i369, label %.thread601, label %bb.au, !prof !280

bb.au:                                            ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread
  %i.kt = zext i16 %i.ks to i32
  %.not6.i = icmp ule ptr %i.kq, %i.eb
  %i.ku = ptrtoint ptr %i.kq to i64
  %i.kv = sub i64 %i.ec, %i.ku
  %i.kw = trunc i64 %i.kv to i32
  %i.kx = icmp ule i32 %i.kt, %i.kw
end_hunk_0
