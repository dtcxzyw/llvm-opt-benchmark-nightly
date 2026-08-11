inline.NumInlined: 34
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN4absl12lts_2026052612crc_internal7CRCImpl13FillWordTableEjjiPA256_j:bb.a
  store <4 x i32> %i.nb, ptr %i.my, align 4, !tbaa !9
  store <4 x i32> %i.nc, ptr %i.nd, align 4, !tbaa !9
  %i.ne = load i32, ptr %i.af, align 4, !tbaa !9
  %broadcast.splatinsert.12 = insertelement <4 x i32> poison, i32 %i.ne, i64 0
  %broadcast.splat.12 = shufflevector <4 x i32> %broadcast.splatinsert.12, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nf = getelementptr i8, ptr %i.ad, i64 900
  %i.ng = getelementptr i8, ptr %i.ad, i64 388
  %i.nh = getelementptr i8, ptr %i.ad, i64 404
  %wide.load.12 = load <4 x i32>, ptr %i.ng, align 4, !tbaa !9
  %wide.load135.12 = load <4 x i32>, ptr %i.nh, align 4, !tbaa !9
  %i.ni = xor <4 x i32> %wide.load.12, %broadcast.splat.12
  %i.nj = xor <4 x i32> %wide.load135.12, %broadcast.splat.12
  %i.nk = getelementptr i8, ptr %i.ad, i64 916
  store <4 x i32> %i.ni, ptr %i.nf, align 4, !tbaa !9
  store <4 x i32> %i.nj, ptr %i.nk, align 4, !tbaa !9
  %i.nl = load i32, ptr %i.af, align 4, !tbaa !9
  %broadcast.splatinsert.13 = insertelement <4 x i32> poison, i32 %i.nl, i64 0
  %broadcast.splat.13 = shufflevector <4 x i32> %broadcast.splatinsert.13, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nm = getelementptr i8, ptr %i.ad, i64 932
  %i.nn = getelementptr i8, ptr %i.ad, i64 420
  %i.no = getelementptr i8, ptr %i.ad, i64 436
  %wide.load.13 = load <4 x i32>, ptr %i.nn, align 4, !tbaa !9
  %wide.load135.13 = load <4 x i32>, ptr %i.no, align 4, !tbaa !9
  %i.np = xor <4 x i32> %wide.load.13, %broadcast.splat.13
  %i.nq = xor <4 x i32> %wide.load135.13, %broadcast.splat.13
  %i.nr = getelementptr i8, ptr %i.ad, i64 948
  store <4 x i32> %i.np, ptr %i.nm, align 4, !tbaa !9
  store <4 x i32> %i.nq, ptr %i.nr, align 4, !tbaa !9
  %i.ns = load i32, ptr %i.af, align 4, !tbaa !9
  %broadcast.splatinsert.14 = insertelement <4 x i32> poison, i32 %i.ns, i64 0
  %broadcast.splat.14 = shufflevector <4 x i32> %broadcast.splatinsert.14, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nt = getelementptr i8, ptr %i.ad, i64 964
  %i.nu = getelementptr i8, ptr %i.ad, i64 452
  %i.nv = getelementptr i8, ptr %i.ad, i64 468
  %wide.load.14 = load <4 x i32>, ptr %i.nu, align 4, !tbaa !9
  %wide.load135.14 = load <4 x i32>, ptr %i.nv, align 4, !tbaa !9
  %i.nw = xor <4 x i32> %wide.load.14, %broadcast.splat.14
  %i.nx = xor <4 x i32> %wide.load135.14, %broadcast.splat.14
  %i.ny = getelementptr i8, ptr %i.ad, i64 980
  store <4 x i32> %i.nw, ptr %i.nt, align 4, !tbaa !9
  store <4 x i32> %i.nx, ptr %i.ny, align 4, !tbaa !9
  %i.nz = load i32, ptr %i.af, align 4, !tbaa !9  ; 2 uses
  %i.oa = getelementptr i8, ptr %i.ad, i64 484
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !9
  %i.oc = xor i32 %i.ob, %i.nz
  %i.od = getelementptr inbounds nuw i8, ptr %i.ad, i64 996
  store i32 %i.oc, ptr %i.od, align 4, !tbaa !9
  %i.oe = getelementptr i8, ptr %i.ad, i64 488
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !9
  %i.og = xor i32 %i.of, %i.nz
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ad, i64 1000
  store i32 %i.og, ptr %i.oh, align 4, !tbaa !9
  %i.oi = load i32, ptr %i.af, align 4, !tbaa !9  ; 2 uses
  %i.oj = getelementptr i8, ptr %i.ad, i64 492
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !9
  %i.ol = xor i32 %i.ok, %i.oi
  %i.om = getelementptr inbounds nuw i8, ptr %i.ad, i64 1004
  store i32 %i.ol, ptr %i.om, align 4, !tbaa !9
  %i.on = getelementptr i8, ptr %i.ad, i64 496
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !9
  %i.op = xor i32 %i.oo, %i.oi
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ad, i64 1008
  store i32 %i.op, ptr %i.oq, align 4, !tbaa !9
  %i.or = load i32, ptr %i.af, align 4, !tbaa !9  ; 2 uses
  %i.os = getelementptr i8, ptr %i.ad, i64 500
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !9
  %i.ou = xor i32 %i.ot, %i.or
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ad, i64 1012
  store i32 %i.ou, ptr %i.ov, align 4, !tbaa !9
  %i.ow = getelementptr i8, ptr %i.ad, i64 504
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !9
  %i.oy = xor i32 %i.ox, %i.or
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ad, i64 1016
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !9
  %i.pa = load i32, ptr %i.af, align 4, !tbaa !9
  %i.pb = getelementptr i8, ptr %i.ad, i64 508
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !9
  %i.pd = xor i32 %i.pc, %i.pa
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ad, i64 1020
  store i32 %i.pd, ptr %i.pe, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

.split.2:                                         ; preds = %.lr.ph
  store i32 %1, ptr %i.af, align 4, !tbaa !9
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ad, i64 256
  store i32 %., ptr %i.pf, align 4, !tbaa !9
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store i32 %.sink123, ptr %i.pg, align 4, !tbaa !9
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store i32 %.sink125, ptr %i.ph, align 4, !tbaa !9
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i32 %.sink127, ptr %i.pi, align 4, !tbaa !9
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 %.sink129, ptr %i.pj, align 4, !tbaa !9
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %.sink131, ptr %i.pk, align 4, !tbaa !9
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %.sink133, ptr %i.pl, align 4, !tbaa !9
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.pre75 = load i32, ptr %.phi.trans.insert74, align 4, !tbaa !9
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !9
  %.phi.trans.insert94 = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %.pre95 = load i32, ptr %.phi.trans.insert94, align 4, !tbaa !9
  br label %.preheader
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local noundef range(i32 -2147483648, 257) i32 @_ZN4absl12lts_2026052612crc_internal7CRCImpl15FillZeroesTableEjPA256_j(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 align 2 {
.preheader35:
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader35
  %.020.i = phi i32 [ -2147483648, %.preheader35 ], [ %i.j, %bb.a ] ; 3 uses
  %.01319.i = phi i32 [ 1073741824, %.preheader35 ], [ %.1.i.153, %bb.a ] ; 3 uses
  %.01418.i = phi i32 [ 0, %.preheader35 ], [ %spec.select.i.151, %bb.a ]
  %i.a = and i32 %.020.i, 1073741824
  %.not16.i = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not16.i, i32 0, i32 %.01319.i
  %spec.select.i = xor i32 %i.b, %.01418.i
  %i.c = and i32 %.01319.i, 1
  %.not17.i = icmp eq i32 %i.c, 0
  %i.d = lshr i32 %.01319.i, 1
  %i.e = select i1 %.not17.i, i32 0, i32 %0
  %.1.i = xor i32 %i.e, %i.d                      ; 3 uses
  %.not16.i.150.inv = icmp slt i32 %.020.i, 0
  %i.f = select i1 %.not16.i.150.inv, i32 %.1.i, i32 0
  %spec.select.i.151 = xor i32 %i.f, %spec.select.i ; 4 uses
  %i.g = and i32 %.1.i, 1
  %.not17.i.152 = icmp eq i32 %i.g, 0
  %i.h = lshr i32 %.1.i, 1
  %i.i = select i1 %.not17.i.152, i32 0, i32 %0
  %.1.i.153 = xor i32 %i.i, %i.h
  %i.j = lshr i32 %.020.i, 2                      ; 2 uses
  %.not.i.154 = icmp eq i32 %i.j, 0
  br i1 %.not.i.154, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit, label %bb.a, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit
  %.020.i.1 = phi i32 [ %i.v, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit ], [ -2147483648, %bb.a ] ; 3 uses
  %.01319.i.1 = phi i32 [ %.1.i.1.1, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit ], [ %spec.select.i.151, %bb.a ] ; 3 uses
  %.01418.i.1 = phi i32 [ %spec.select.i.1.1, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit ], [ 0, %bb.a ]
  %i.k = and i32 %.020.i.1, %spec.select.i.151
  %.not16.i.1 = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not16.i.1, i32 0, i32 %.01319.i.1
  %spec.select.i.1 = xor i32 %i.l, %.01418.i.1
  %i.m = and i32 %.01319.i.1, 1
  %.not17.i.1 = icmp eq i32 %i.m, 0
  %i.n = lshr i32 %.01319.i.1, 1
  %i.o = select i1 %.not17.i.1, i32 0, i32 %0
  %.1.i.1 = xor i32 %i.o, %i.n                    ; 3 uses
  %i.p = lshr i32 %.020.i.1, 1
  %i.q = and i32 %i.p, %spec.select.i.151
  %.not16.i.1.1 = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not16.i.1.1, i32 0, i32 %.1.i.1
  %spec.select.i.1.1 = xor i32 %i.r, %spec.select.i.1 ; 4 uses
  %i.s = and i32 %.1.i.1, 1
  %.not17.i.1.1 = icmp eq i32 %i.s, 0
  %i.t = lshr i32 %.1.i.1, 1
  %i.u = select i1 %.not17.i.1.1, i32 0, i32 %0
  %.1.i.1.1 = xor i32 %i.u, %i.t
  %i.v = lshr i32 %.020.i.1, 2                    ; 2 uses
  %.not.i.1.1 = icmp eq i32 %i.v, 0
  br i1 %.not.i.1.1, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit.1, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit.1: ; preds = %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit.1
  %.020.i.2 = phi i32 [ %i.ah, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit.1 ], [ -2147483648, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit ] ; 3 uses
  %.01319.i.2 = phi i32 [ %.1.i.2.1, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit.1 ], [ %spec.select.i.1.1, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit ] ; 3 uses
  %.01418.i.2 = phi i32 [ %spec.select.i.2.1, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit.1 ], [ 0, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit ]
  %i.w = and i32 %.020.i.2, %spec.select.i.1.1
  %.not16.i.2 = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not16.i.2, i32 0, i32 %.01319.i.2
  %spec.select.i.2 = xor i32 %i.x, %.01418.i.2
  %i.y = and i32 %.01319.i.2, 1
  %.not17.i.2 = icmp eq i32 %i.y, 0
  %i.z = lshr i32 %.01319.i.2, 1
  %i.aa = select i1 %.not17.i.2, i32 0, i32 %0
  %.1.i.2 = xor i32 %i.aa, %i.z                   ; 3 uses
  %i.ab = lshr i32 %.020.i.2, 1
  %i.ac = and i32 %i.ab, %spec.select.i.1.1
  %.not16.i.2.1 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not16.i.2.1, i32 0, i32 %.1.i.2
  %spec.select.i.2.1 = xor i32 %i.ad, %spec.select.i.2 ; 2 uses
  %i.ae = and i32 %.1.i.2, 1
  %.not17.i.2.1 = icmp eq i32 %i.ae, 0
  %i.af = lshr i32 %.1.i.2, 1
  %i.ag = select i1 %.not17.i.2.1, i32 0, i32 %0
  %.1.i.2.1 = xor i32 %i.ag, %i.af
  %i.ah = lshr i32 %.020.i.2, 2                   ; 2 uses
  %.not.i.2.1 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.2.1, label %.preheader, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit.1, !llvm.loop !12

.preheader:                                       ; preds = %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit.1, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.14
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.14 ], [ 0, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit.1 ] ; 16 uses
  %.01343 = phi i64 [ %i.ij, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.14 ], [ 1, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit.1 ]
  %.13341 = phi i32 [ %spec.select.i20.14.1, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.14 ], [ %spec.select.i.2.1, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit.1 ] ; 18 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %.13341, ptr %i.ai, align 4, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader
  %.020.i16 = phi i32 [ -2147483648, %.preheader ], [ %i.au, %bb.b ] ; 3 uses
  %.01319.i17 = phi i32 [ %.13341, %.preheader ], [ %.1.i22.162, %bb.b ] ; 3 uses
  %.01418.i18 = phi i32 [ 0, %.preheader ], [ %spec.select.i20.160, %bb.b ]
  %i.aj = and i32 %.020.i16, %.13341
  %.not16.i19 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not16.i19, i32 0, i32 %.01319.i17
  %spec.select.i20 = xor i32 %i.ak, %.01418.i18
  %i.al = and i32 %.01319.i17, 1
  %.not17.i21 = icmp eq i32 %i.al, 0
  %i.am = lshr i32 %.01319.i17, 1
  %i.an = select i1 %.not17.i21, i32 0, i32 %0
  %.1.i22 = xor i32 %i.an, %i.am                  ; 3 uses
  %i.ao = lshr i32 %.020.i16, 1
  %i.ap = and i32 %i.ao, %.13341
  %.not16.i19.159 = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not16.i19.159, i32 0, i32 %.1.i22
  %spec.select.i20.160 = xor i32 %i.aq, %spec.select.i20 ; 4 uses
  %i.ar = and i32 %.1.i22, 1
  %.not17.i21.161 = icmp eq i32 %i.ar, 0
  %i.as = lshr i32 %.1.i22, 1
  %i.at = select i1 %.not17.i21.161, i32 0, i32 %0
  %.1.i22.162 = xor i32 %i.at, %i.as
  %i.au = lshr i32 %.020.i16, 2                   ; 2 uses
  %.not.i23.163 = icmp eq i32 %i.au, 0
  br i1 %.not.i23.163, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24, label %bb.b, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24: ; preds = %bb.b
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %spec.select.i20.160, ptr %i.aw, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24
  %.020.i16.1 = phi i32 [ -2147483648, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24 ], [ %i.bi, %bb.c ] ; 3 uses
  %.01319.i17.1 = phi i32 [ %.13341, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24 ], [ %.1.i22.1.1, %bb.c ] ; 3 uses
  %.01418.i18.1 = phi i32 [ 0, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24 ], [ %spec.select.i20.1.1, %bb.c ]
  %i.ax = and i32 %.020.i16.1, %spec.select.i20.160
  %.not16.i19.1 = icmp eq i32 %i.ax, 0
  %i.ay = select i1 %.not16.i19.1, i32 0, i32 %.01319.i17.1
  %spec.select.i20.1 = xor i32 %i.ay, %.01418.i18.1
  %i.az = and i32 %.01319.i17.1, 1
  %.not17.i21.1 = icmp eq i32 %i.az, 0
  %i.ba = lshr i32 %.01319.i17.1, 1
  %i.bb = select i1 %.not17.i21.1, i32 0, i32 %0
  %.1.i22.1 = xor i32 %i.bb, %i.ba                ; 3 uses
  %i.bc = lshr i32 %.020.i16.1, 1
  %i.bd = and i32 %i.bc, %spec.select.i20.160
  %.not16.i19.1.1 = icmp eq i32 %i.bd, 0
  %i.be = select i1 %.not16.i19.1.1, i32 0, i32 %.1.i22.1
  %spec.select.i20.1.1 = xor i32 %i.be, %spec.select.i20.1 ; 4 uses
  %i.bf = and i32 %.1.i22.1, 1
  %.not17.i21.1.1 = icmp eq i32 %i.bf, 0
  %i.bg = lshr i32 %.1.i22.1, 1
  %i.bh = select i1 %.not17.i21.1.1, i32 0, i32 %0
  %.1.i22.1.1 = xor i32 %i.bh, %i.bg
  %i.bi = lshr i32 %.020.i16.1, 2                 ; 2 uses
  %.not.i23.1.1 = icmp eq i32 %i.bi, 0
  br i1 %.not.i23.1.1, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.1, label %bb.c, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.1: ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %spec.select.i20.1.1, ptr %i.bk, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.1
  %.020.i16.2 = phi i32 [ -2147483648, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.1 ], [ %i.bw, %bb.d ] ; 3 uses
  %.01319.i17.2 = phi i32 [ %.13341, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.1 ], [ %.1.i22.2.1, %bb.d ] ; 3 uses
  %.01418.i18.2 = phi i32 [ 0, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.1 ], [ %spec.select.i20.2.1, %bb.d ]
  %i.bl = and i32 %.020.i16.2, %spec.select.i20.1.1
  %.not16.i19.2 = icmp eq i32 %i.bl, 0
  %i.bm = select i1 %.not16.i19.2, i32 0, i32 %.01319.i17.2
  %spec.select.i20.2 = xor i32 %i.bm, %.01418.i18.2
  %i.bn = and i32 %.01319.i17.2, 1
  %.not17.i21.2 = icmp eq i32 %i.bn, 0
  %i.bo = lshr i32 %.01319.i17.2, 1
  %i.bp = select i1 %.not17.i21.2, i32 0, i32 %0
  %.1.i22.2 = xor i32 %i.bp, %i.bo                ; 3 uses
  %i.bq = lshr i32 %.020.i16.2, 1
  %i.br = and i32 %i.bq, %spec.select.i20.1.1
  %.not16.i19.2.1 = icmp eq i32 %i.br, 0
  %i.bs = select i1 %.not16.i19.2.1, i32 0, i32 %.1.i22.2
  %spec.select.i20.2.1 = xor i32 %i.bs, %spec.select.i20.2 ; 4 uses
  %i.bt = and i32 %.1.i22.2, 1
  %.not17.i21.2.1 = icmp eq i32 %i.bt, 0
  %i.bu = lshr i32 %.1.i22.2, 1
  %i.bv = select i1 %.not17.i21.2.1, i32 0, i32 %0
  %.1.i22.2.1 = xor i32 %i.bv, %i.bu
  %i.bw = lshr i32 %.020.i16.2, 2                 ; 2 uses
  %.not.i23.2.1 = icmp eq i32 %i.bw, 0
  br i1 %.not.i23.2.1, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.2, label %bb.d, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.2: ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 %spec.select.i20.2.1, ptr %i.by, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.2
  %.020.i16.3 = phi i32 [ -2147483648, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.2 ], [ %i.ck, %bb.e ] ; 3 uses
  %.01319.i17.3 = phi i32 [ %.13341, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.2 ], [ %.1.i22.3.1, %bb.e ] ; 3 uses
  %.01418.i18.3 = phi i32 [ 0, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.2 ], [ %spec.select.i20.3.1, %bb.e ]
  %i.bz = and i32 %.020.i16.3, %spec.select.i20.2.1
  %.not16.i19.3 = icmp eq i32 %i.bz, 0
  %i.ca = select i1 %.not16.i19.3, i32 0, i32 %.01319.i17.3
  %spec.select.i20.3 = xor i32 %i.ca, %.01418.i18.3
  %i.cb = and i32 %.01319.i17.3, 1
  %.not17.i21.3 = icmp eq i32 %i.cb, 0
  %i.cc = lshr i32 %.01319.i17.3, 1
  %i.cd = select i1 %.not17.i21.3, i32 0, i32 %0
  %.1.i22.3 = xor i32 %i.cd, %i.cc                ; 3 uses
  %i.ce = lshr i32 %.020.i16.3, 1
  %i.cf = and i32 %i.ce, %spec.select.i20.2.1
  %.not16.i19.3.1 = icmp eq i32 %i.cf, 0
  %i.cg = select i1 %.not16.i19.3.1, i32 0, i32 %.1.i22.3
  %spec.select.i20.3.1 = xor i32 %i.cg, %spec.select.i20.3 ; 4 uses
  %i.ch = and i32 %.1.i22.3, 1
  %.not17.i21.3.1 = icmp eq i32 %i.ch, 0
  %i.ci = lshr i32 %.1.i22.3, 1
  %i.cj = select i1 %.not17.i21.3.1, i32 0, i32 %0
  %.1.i22.3.1 = xor i32 %i.cj, %i.ci
  %i.ck = lshr i32 %.020.i16.3, 2                 ; 2 uses
  %.not.i23.3.1 = icmp eq i32 %i.ck, 0
  br i1 %.not.i23.3.1, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.3, label %bb.e, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.3: ; preds = %bb.e
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i32 %spec.select.i20.3.1, ptr %i.cm, align 4, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.3
  %.020.i16.4 = phi i32 [ -2147483648, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.3 ], [ %i.cy, %bb.f ] ; 3 uses
  %.01319.i17.4 = phi i32 [ %.13341, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.3 ], [ %.1.i22.4.1, %bb.f ] ; 3 uses
  %.01418.i18.4 = phi i32 [ 0, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.3 ], [ %spec.select.i20.4.1, %bb.f ]
  %i.cn = and i32 %.020.i16.4, %spec.select.i20.3.1
  %.not16.i19.4 = icmp eq i32 %i.cn, 0
  %i.co = select i1 %.not16.i19.4, i32 0, i32 %.01319.i17.4
  %spec.select.i20.4 = xor i32 %i.co, %.01418.i18.4
  %i.cp = and i32 %.01319.i17.4, 1
  %.not17.i21.4 = icmp eq i32 %i.cp, 0
  %i.cq = lshr i32 %.01319.i17.4, 1
  %i.cr = select i1 %.not17.i21.4, i32 0, i32 %0
  %.1.i22.4 = xor i32 %i.cr, %i.cq                ; 3 uses
  %i.cs = lshr i32 %.020.i16.4, 1
  %i.ct = and i32 %i.cs, %spec.select.i20.3.1
  %.not16.i19.4.1 = icmp eq i32 %i.ct, 0
  %i.cu = select i1 %.not16.i19.4.1, i32 0, i32 %.1.i22.4
  %spec.select.i20.4.1 = xor i32 %i.cu, %spec.select.i20.4 ; 4 uses
  %i.cv = and i32 %.1.i22.4, 1
  %.not17.i21.4.1 = icmp eq i32 %i.cv, 0
  %i.cw = lshr i32 %.1.i22.4, 1
  %i.cx = select i1 %.not17.i21.4.1, i32 0, i32 %0
  %.1.i22.4.1 = xor i32 %i.cx, %i.cw
  %i.cy = lshr i32 %.020.i16.4, 2                 ; 2 uses
  %.not.i23.4.1 = icmp eq i32 %i.cy, 0
  br i1 %.not.i23.4.1, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.4, label %bb.f, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.4: ; preds = %bb.f
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  store i32 %spec.select.i20.4.1, ptr %i.da, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.4
  %.020.i16.5 = phi i32 [ -2147483648, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.4 ], [ %i.dm, %bb.g ] ; 3 uses
  %.01319.i17.5 = phi i32 [ %.13341, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.4 ], [ %.1.i22.5.1, %bb.g ] ; 3 uses
  %.01418.i18.5 = phi i32 [ 0, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.4 ], [ %spec.select.i20.5.1, %bb.g ]
  %i.db = and i32 %.020.i16.5, %spec.select.i20.4.1
  %.not16.i19.5 = icmp eq i32 %i.db, 0
  %i.dc = select i1 %.not16.i19.5, i32 0, i32 %.01319.i17.5
  %spec.select.i20.5 = xor i32 %i.dc, %.01418.i18.5
  %i.dd = and i32 %.01319.i17.5, 1
  %.not17.i21.5 = icmp eq i32 %i.dd, 0
  %i.de = lshr i32 %.01319.i17.5, 1
  %i.df = select i1 %.not17.i21.5, i32 0, i32 %0
  %.1.i22.5 = xor i32 %i.df, %i.de                ; 3 uses
  %i.dg = lshr i32 %.020.i16.5, 1
  %i.dh = and i32 %i.dg, %spec.select.i20.4.1
  %.not16.i19.5.1 = icmp eq i32 %i.dh, 0
  %i.di = select i1 %.not16.i19.5.1, i32 0, i32 %.1.i22.5
  %spec.select.i20.5.1 = xor i32 %i.di, %spec.select.i20.5 ; 4 uses
  %i.dj = and i32 %.1.i22.5, 1
  %.not17.i21.5.1 = icmp eq i32 %i.dj, 0
  %i.dk = lshr i32 %.1.i22.5, 1
  %i.dl = select i1 %.not17.i21.5.1, i32 0, i32 %0
  %.1.i22.5.1 = xor i32 %i.dl, %i.dk
  %i.dm = lshr i32 %.020.i16.5, 2                 ; 2 uses
  %.not.i23.5.1 = icmp eq i32 %i.dm, 0
  br i1 %.not.i23.5.1, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.5, label %bb.g, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.5: ; preds = %bb.g
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052612crc_internal7CRCImpl15FillZeroesTableEjPA256_j:.preheader35

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.8: ; preds = %bb.j
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 36
  store i32 %spec.select.i20.8.1, ptr %i.fe, align 4, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.8
  %.020.i16.9 = phi i32 [ -2147483648, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.8 ], [ %i.fq, %bb.k ] ; 3 uses
  %.01319.i17.9 = phi i32 [ %.13341, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.8 ], [ %.1.i22.9.1, %bb.k ] ; 3 uses
  %.01418.i18.9 = phi i32 [ 0, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.8 ], [ %spec.select.i20.9.1, %bb.k ]
  %i.ff = and i32 %.020.i16.9, %spec.select.i20.8.1
  %.not16.i19.9 = icmp eq i32 %i.ff, 0
  %i.fg = select i1 %.not16.i19.9, i32 0, i32 %.01319.i17.9
  %spec.select.i20.9 = xor i32 %i.fg, %.01418.i18.9
  %i.fh = and i32 %.01319.i17.9, 1
  %.not17.i21.9 = icmp eq i32 %i.fh, 0
  %i.fi = lshr i32 %.01319.i17.9, 1
  %i.fj = select i1 %.not17.i21.9, i32 0, i32 %0
  %.1.i22.9 = xor i32 %i.fj, %i.fi                ; 3 uses
  %i.fk = lshr i32 %.020.i16.9, 1
  %i.fl = and i32 %i.fk, %spec.select.i20.8.1
  %.not16.i19.9.1 = icmp eq i32 %i.fl, 0
  %i.fm = select i1 %.not16.i19.9.1, i32 0, i32 %.1.i22.9
  %spec.select.i20.9.1 = xor i32 %i.fm, %spec.select.i20.9 ; 4 uses
  %i.fn = and i32 %.1.i22.9, 1
  %.not17.i21.9.1 = icmp eq i32 %i.fn, 0
  %i.fo = lshr i32 %.1.i22.9, 1
  %i.fp = select i1 %.not17.i21.9.1, i32 0, i32 %0
  %.1.i22.9.1 = xor i32 %i.fp, %i.fo
  %i.fq = lshr i32 %.020.i16.9, 2                 ; 2 uses
  %.not.i23.9.1 = icmp eq i32 %i.fq, 0
  br i1 %.not.i23.9.1, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.9, label %bb.k, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.9: ; preds = %bb.k
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  store i32 %spec.select.i20.9.1, ptr %i.fs, align 4, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.9
  %.020.i16.10 = phi i32 [ -2147483648, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.9 ], [ %i.ge, %bb.l ] ; 3 uses
  %.01319.i17.10 = phi i32 [ %.13341, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.9 ], [ %.1.i22.10.1, %bb.l ] ; 3 uses
  %.01418.i18.10 = phi i32 [ 0, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.9 ], [ %spec.select.i20.10.1, %bb.l ]
  %i.ft = and i32 %.020.i16.10, %spec.select.i20.9.1
  %.not16.i19.10 = icmp eq i32 %i.ft, 0
  %i.fu = select i1 %.not16.i19.10, i32 0, i32 %.01319.i17.10
  %spec.select.i20.10 = xor i32 %i.fu, %.01418.i18.10
  %i.fv = and i32 %.01319.i17.10, 1
  %.not17.i21.10 = icmp eq i32 %i.fv, 0
  %i.fw = lshr i32 %.01319.i17.10, 1
  %i.fx = select i1 %.not17.i21.10, i32 0, i32 %0
  %.1.i22.10 = xor i32 %i.fx, %i.fw               ; 3 uses
  %i.fy = lshr i32 %.020.i16.10, 1
  %i.fz = and i32 %i.fy, %spec.select.i20.9.1
  %.not16.i19.10.1 = icmp eq i32 %i.fz, 0
  %i.ga = select i1 %.not16.i19.10.1, i32 0, i32 %.1.i22.10
  %spec.select.i20.10.1 = xor i32 %i.ga, %spec.select.i20.10 ; 4 uses
  %i.gb = and i32 %.1.i22.10, 1
  %.not17.i21.10.1 = icmp eq i32 %i.gb, 0
  %i.gc = lshr i32 %.1.i22.10, 1
  %i.gd = select i1 %.not17.i21.10.1, i32 0, i32 %0
  %.1.i22.10.1 = xor i32 %i.gd, %i.gc
  %i.ge = lshr i32 %.020.i16.10, 2                ; 2 uses
  %.not.i23.10.1 = icmp eq i32 %i.ge, 0
  br i1 %.not.i23.10.1, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.10, label %bb.l, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.10: ; preds = %bb.l
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 44
  store i32 %spec.select.i20.10.1, ptr %i.gg, align 4, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.10
  %.020.i16.11 = phi i32 [ -2147483648, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.10 ], [ %i.gs, %bb.m ] ; 3 uses
  %.01319.i17.11 = phi i32 [ %.13341, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.10 ], [ %.1.i22.11.1, %bb.m ] ; 3 uses
  %.01418.i18.11 = phi i32 [ 0, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.10 ], [ %spec.select.i20.11.1, %bb.m ]
  %i.gh = and i32 %.020.i16.11, %spec.select.i20.10.1
  %.not16.i19.11 = icmp eq i32 %i.gh, 0
  %i.gi = select i1 %.not16.i19.11, i32 0, i32 %.01319.i17.11
  %spec.select.i20.11 = xor i32 %i.gi, %.01418.i18.11
  %i.gj = and i32 %.01319.i17.11, 1
  %.not17.i21.11 = icmp eq i32 %i.gj, 0
  %i.gk = lshr i32 %.01319.i17.11, 1
  %i.gl = select i1 %.not17.i21.11, i32 0, i32 %0
  %.1.i22.11 = xor i32 %i.gl, %i.gk               ; 3 uses
  %i.gm = lshr i32 %.020.i16.11, 1
  %i.gn = and i32 %i.gm, %spec.select.i20.10.1
  %.not16.i19.11.1 = icmp eq i32 %i.gn, 0
  %i.go = select i1 %.not16.i19.11.1, i32 0, i32 %.1.i22.11
  %spec.select.i20.11.1 = xor i32 %i.go, %spec.select.i20.11 ; 4 uses
  %i.gp = and i32 %.1.i22.11, 1
  %.not17.i21.11.1 = icmp eq i32 %i.gp, 0
  %i.gq = lshr i32 %.1.i22.11, 1
  %i.gr = select i1 %.not17.i21.11.1, i32 0, i32 %0
  %.1.i22.11.1 = xor i32 %i.gr, %i.gq
  %i.gs = lshr i32 %.020.i16.11, 2                ; 2 uses
  %.not.i23.11.1 = icmp eq i32 %i.gs, 0
  br i1 %.not.i23.11.1, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.11, label %bb.m, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.11: ; preds = %bb.m
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  store i32 %spec.select.i20.11.1, ptr %i.gu, align 4, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.11
  %.020.i16.12 = phi i32 [ -2147483648, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.11 ], [ %i.hg, %bb.n ] ; 3 uses
  %.01319.i17.12 = phi i32 [ %.13341, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.11 ], [ %.1.i22.12.1, %bb.n ] ; 3 uses
  %.01418.i18.12 = phi i32 [ 0, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.11 ], [ %spec.select.i20.12.1, %bb.n ]
  %i.gv = and i32 %.020.i16.12, %spec.select.i20.11.1
  %.not16.i19.12 = icmp eq i32 %i.gv, 0
  %i.gw = select i1 %.not16.i19.12, i32 0, i32 %.01319.i17.12
  %spec.select.i20.12 = xor i32 %i.gw, %.01418.i18.12
  %i.gx = and i32 %.01319.i17.12, 1
  %.not17.i21.12 = icmp eq i32 %i.gx, 0
  %i.gy = lshr i32 %.01319.i17.12, 1
  %i.gz = select i1 %.not17.i21.12, i32 0, i32 %0
  %.1.i22.12 = xor i32 %i.gz, %i.gy               ; 3 uses
  %i.ha = lshr i32 %.020.i16.12, 1
  %i.hb = and i32 %i.ha, %spec.select.i20.11.1
  %.not16.i19.12.1 = icmp eq i32 %i.hb, 0
  %i.hc = select i1 %.not16.i19.12.1, i32 0, i32 %.1.i22.12
  %spec.select.i20.12.1 = xor i32 %i.hc, %spec.select.i20.12 ; 4 uses
  %i.hd = and i32 %.1.i22.12, 1
  %.not17.i21.12.1 = icmp eq i32 %i.hd, 0
  %i.he = lshr i32 %.1.i22.12, 1
  %i.hf = select i1 %.not17.i21.12.1, i32 0, i32 %0
  %.1.i22.12.1 = xor i32 %i.hf, %i.he
  %i.hg = lshr i32 %.020.i16.12, 2                ; 2 uses
  %.not.i23.12.1 = icmp eq i32 %i.hg, 0
  br i1 %.not.i23.12.1, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.12, label %bb.n, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.12: ; preds = %bb.n
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 52
  store i32 %spec.select.i20.12.1, ptr %i.hi, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.12
  %.020.i16.13 = phi i32 [ -2147483648, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.12 ], [ %i.hu, %bb.o ] ; 3 uses
  %.01319.i17.13 = phi i32 [ %.13341, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.12 ], [ %.1.i22.13.1, %bb.o ] ; 3 uses
  %.01418.i18.13 = phi i32 [ 0, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.12 ], [ %spec.select.i20.13.1, %bb.o ]
  %i.hj = and i32 %.020.i16.13, %spec.select.i20.12.1
  %.not16.i19.13 = icmp eq i32 %i.hj, 0
  %i.hk = select i1 %.not16.i19.13, i32 0, i32 %.01319.i17.13
  %spec.select.i20.13 = xor i32 %i.hk, %.01418.i18.13
  %i.hl = and i32 %.01319.i17.13, 1
  %.not17.i21.13 = icmp eq i32 %i.hl, 0
  %i.hm = lshr i32 %.01319.i17.13, 1
  %i.hn = select i1 %.not17.i21.13, i32 0, i32 %0
  %.1.i22.13 = xor i32 %i.hn, %i.hm               ; 3 uses
  %i.ho = lshr i32 %.020.i16.13, 1
  %i.hp = and i32 %i.ho, %spec.select.i20.12.1
  %.not16.i19.13.1 = icmp eq i32 %i.hp, 0
  %i.hq = select i1 %.not16.i19.13.1, i32 0, i32 %.1.i22.13
  %spec.select.i20.13.1 = xor i32 %i.hq, %spec.select.i20.13 ; 4 uses
  %i.hr = and i32 %.1.i22.13, 1
  %.not17.i21.13.1 = icmp eq i32 %i.hr, 0
  %i.hs = lshr i32 %.1.i22.13, 1
  %i.ht = select i1 %.not17.i21.13.1, i32 0, i32 %0
  %.1.i22.13.1 = xor i32 %i.ht, %i.hs
  %i.hu = lshr i32 %.020.i16.13, 2                ; 2 uses
  %.not.i23.13.1 = icmp eq i32 %i.hu, 0
  br i1 %.not.i23.13.1, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.13, label %bb.o, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.13: ; preds = %bb.o
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  store i32 %spec.select.i20.13.1, ptr %i.hw, align 4, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.13
  %.020.i16.14 = phi i32 [ -2147483648, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.13 ], [ %i.ii, %bb.p ] ; 3 uses
  %.01319.i17.14 = phi i32 [ %.13341, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.13 ], [ %.1.i22.14.1, %bb.p ] ; 3 uses
  %.01418.i18.14 = phi i32 [ 0, %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.13 ], [ %spec.select.i20.14.1, %bb.p ]
  %i.hx = and i32 %.020.i16.14, %spec.select.i20.13.1
  %.not16.i19.14 = icmp eq i32 %i.hx, 0
  %i.hy = select i1 %.not16.i19.14, i32 0, i32 %.01319.i17.14
  %spec.select.i20.14 = xor i32 %i.hy, %.01418.i18.14
  %i.hz = and i32 %.01319.i17.14, 1
  %.not17.i21.14 = icmp eq i32 %i.hz, 0
  %i.ia = lshr i32 %.01319.i17.14, 1
  %i.ib = select i1 %.not17.i21.14, i32 0, i32 %0
  %.1.i22.14 = xor i32 %i.ib, %i.ia               ; 3 uses
  %i.ic = lshr i32 %.020.i16.14, 1
  %i.id = and i32 %i.ic, %spec.select.i20.13.1
  %.not16.i19.14.1 = icmp eq i32 %i.id, 0
  %i.ie = select i1 %.not16.i19.14.1, i32 0, i32 %.1.i22.14
  %spec.select.i20.14.1 = xor i32 %i.ie, %spec.select.i20.14 ; 2 uses
  %i.if = and i32 %.1.i22.14, 1
  %.not17.i21.14.1 = icmp eq i32 %i.if, 0
  %i.ig = lshr i32 %.1.i22.14, 1
  %i.ih = select i1 %.not17.i21.14.1, i32 0, i32 %0
  %.1.i22.14.1 = xor i32 %i.ih, %i.ig
  %i.ii = lshr i32 %.020.i16.14, 2                ; 2 uses
  %.not.i23.14.1 = icmp eq i32 %i.ii, 0
  br i1 %.not.i23.14.1, label %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.14, label %bb.p, !llvm.loop !12

_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.14: ; preds = %bb.p
  %i.ij = shl i64 %.01343, 4                      ; 2 uses
  %.not = icmp eq i64 %i.ij, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 15
  br i1 %.not, label %bb.q, label %.preheader, !llvm.loop !13

bb.q:                                             ; preds = %_ZN4absl12lts_2026052612crc_internal12_GLOBAL__N_112PolyMultiplyEPjjj.exit24.14
  ret i32 240
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN4absl12lts_2026052612crc_internal7CRCImpl11NewInternalEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4absl12lts_2026052612crc_internal36TryNewCRC32AcceleratedX86ARMCombinedEv() ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(8200) ptr @_Znwm(i64 noundef 8200) #18 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8200) %i.c, i8 0, i64 8200, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4absl12lts_2026052612crc_internal5CRC32E, i64 16), ptr %i.c, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.d = phi ptr [ %.pre, %._crit_edge ], [ getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4absl12lts_2026052612crc_internal5CRC32E, i64 16), %bb.b ]
  %.0 = phi ptr [ %i.a, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %.0)
  ret ptr %.0
}

declare noundef ptr @_ZN4absl12lts_2026052612crc_internal36TryNewCRC32AcceleratedX86ARMCombinedEv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052612crc_internal5CRC3210InitTablesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8200) initializes((8, 1032)) %0) unnamed_addr #3 align 2 {
.preheader39:
  %i.a = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #18 ; 7 uses
  tail call void @_ZN4absl12lts_2026052612crc_internal7CRCImpl13FillWordTableEjjiPA256_j(i32 noundef -2097792136, i32 noundef -2097792136, i32 noundef 1, ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.b, ptr noundef nonnull align 4 dereferenceable(1024) %i.a, i64 1024, i1 false), !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = xor i32 %i.d, 8582715                    ; 2 uses
  %i.f = lshr i32 %i.e, 8
  %i.g = and i32 %i.e, 255
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9
  %i.k = xor i32 %i.j, %i.f                       ; 2 uses
  %i.l = lshr i32 %i.k, 8
  %i.m = and i32 %i.k, 255
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9
  %i.q = xor i32 %i.p, %i.l                       ; 2 uses
  %i.r = lshr i32 %i.q, 8
  %i.s = and i32 %i.q, 255
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
  %i.w = xor i32 %i.v, %i.r                       ; 2 uses
  %i.x = lshr i32 %i.w, 8
  %i.y = and i32 %i.w, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !9
  %i.ac = xor i32 %i.ab, %i.x                     ; 2 uses
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = and i32 %i.ac, 255
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9
  %i.ai = xor i32 %i.ah, %i.ad                    ; 2 uses
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = and i32 %i.ai, 255
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !9
  %i.ao = xor i32 %i.an, %i.aj                    ; 2 uses
  %i.ap = lshr i32 %i.ao, 8
  %i.aq = and i32 %i.ao, 255
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9
  %i.au = xor i32 %i.at, %i.ap                    ; 2 uses
  %i.av = lshr i32 %i.au, 8
  %i.aw = and i32 %i.au, 255
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !9
  %i.ba = xor i32 %i.az, %i.av                    ; 2 uses
  %i.bb = lshr i32 %i.ba, 8
  %i.bc = and i32 %i.ba, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !9
  %i.bg = xor i32 %i.bf, %i.bb                    ; 2 uses
  %i.bh = lshr i32 %i.bg, 8
  %i.bi = and i32 %i.bg, 255
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !9
  %i.bm = xor i32 %i.bl, %i.bh                    ; 2 uses
  %i.bn = lshr i32 %i.bm, 8
  %i.bo = and i32 %i.bm, 255
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !9
  %i.bs = xor i32 %i.br, %i.bn
  tail call void @_ZN4absl12lts_2026052612crc_internal7CRCImpl13FillWordTableEjjiPA256_j(i32 noundef -2097792136, i32 noundef %i.bs, i32 noundef 4, ptr noundef nonnull %i.a)
  %scevgep49 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %scevgep49, ptr noundef nonnull align 4 dereferenceable(4096) %i.a, i64 4096, i1 false), !tbaa !9
  %i.bt = tail call noundef i32 @_ZN4absl12lts_2026052612crc_internal7CRCImpl15FillZeroesTableEjPA256_j(i32 noundef -2097792136, ptr noundef nonnull %i.a) ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader39
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.bw = zext nneg i32 %i.bt to i64
  %i.bx = shl nuw nsw i64 %i.bw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr nonnull align 4 %i.a, i64 %i.bx, i1 false), !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader39
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #19
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 6152
  tail call void @_ZN4absl12lts_2026052612crc_internal7CRCImpl13FillWordTableEjjiPA256_j(i32 noundef -1888602208, i32 noundef -1888602208, i32 noundef 1, ptr noundef nonnull %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 7176
  %i.ca = tail call noundef i32 @_ZN4absl12lts_2026052612crc_internal7CRCImpl15FillZeroesTableEjPA256_j(i32 noundef -1888602208, ptr noundef nonnull %i.bz) ; 0 uses
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @_ZNK4absl12lts_2026052612crc_internal5CRC326ExtendEPjPKvm(ptr nofree noundef nonnull readonly align 8 dereferenceable(8200) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 3 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !9      ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = icmp ugt i64 %3, 15
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i = load i32, ptr %2, align 1
  %i.f = xor i32 %.0.copyload.i.i, %i.c           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.0.copyload.i.i15 = load i32, ptr %i.g, align 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i16 = load i32, ptr %i.h, align 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.0.copyload.i.i17 = load i32, ptr %i.i, align 1 ; 2 uses
  %.0118125 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp sgt i64 %3, 272
  br i1 %i.j, label %.lr.ph, label %..preheader124_crit_edge

..preheader124_crit_edge:                         ; preds = %bb.b
  %gepdiff = add nsw i64 %3, -16
  br label %.preheader124

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5128 ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4104 ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 16 uses
  br label %bb.c

.preheader124:                                    ; preds = %bb.c, %..preheader124_crit_edge
  %.pre-phi180 = phi i64 [ %gepdiff, %..preheader124_crit_edge ], [ %i.ny, %bb.c ] ; 2 uses
  %.0121.lcssa = phi i32 [ %i.f, %..preheader124_crit_edge ], [ %i.lf, %bb.c ] ; 2 uses
  %.0115.lcssa = phi i32 [ %.0.copyload.i.i15, %..preheader124_crit_edge ], [ %i.mc, %bb.c ] ; 2 uses
  %.0112.lcssa = phi i32 [ %.0.copyload.i.i16, %..preheader124_crit_edge ], [ %i.mz, %bb.c ] ; 2 uses
  %.0110.lcssa = phi i32 [ %.0.copyload.i.i17, %..preheader124_crit_edge ], [ %i.nw, %bb.c ] ; 2 uses
  %.0118.lcssa = phi ptr [ %.0118125, %..preheader124_crit_edge ], [ %.0118, %bb.c ] ; 2 uses
  %i.o = icmp ugt i64 %.pre-phi180, 15
  br i1 %i.o, label %.lr.ph141, label %.preheader

.lr.ph141:                                        ; preds = %.preheader124
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5128 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4104 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 4 uses
  br label %bb.d
end_hunk_1
