Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/FindActiveValues?download=true
inline.NumInlined: 28796
inline.NumDeleted: 10467
loop-unroll.NumCompletelyUnrolled: 104
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 365
begin_hunk_0_@_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv:bb.a
  %.not.31 = icmp eq i64 %i.bk, 0
  br i1 %.not.31, label %bb.ag, label %.critedge.thread

bb.ag:                                            ; preds = %bb.af
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !554
  %.not.32 = icmp eq i64 %i.bm, 0
  br i1 %.not.32, label %bb.ah, label %.critedge.thread

bb.ah:                                            ; preds = %bb.ag
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !554
  %.not.33 = icmp eq i64 %i.bo, 0
  br i1 %.not.33, label %bb.ai, label %.critedge.thread

bb.ai:                                            ; preds = %bb.ah
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !554
  %.not.34 = icmp eq i64 %i.bq, 0
  br i1 %.not.34, label %bb.aj, label %.critedge.thread

bb.aj:                                            ; preds = %bb.ai
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !554
  %.not.35 = icmp eq i64 %i.bs, 0
  br i1 %.not.35, label %bb.ak, label %.critedge.thread

bb.ak:                                            ; preds = %bb.aj
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !554
  %.not.36 = icmp eq i64 %i.bu, 0
  br i1 %.not.36, label %bb.al, label %.critedge.thread

bb.al:                                            ; preds = %bb.ak
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !554
  %.not.37 = icmp eq i64 %i.bw, 0
  br i1 %.not.37, label %bb.am, label %.critedge.thread

bb.am:                                            ; preds = %bb.al
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !554
  %.not.38 = icmp eq i64 %i.by, 0
  br i1 %.not.38, label %bb.an, label %.critedge.thread

bb.an:                                            ; preds = %bb.am
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !554
  %.not.39 = icmp eq i64 %i.ca, 0
  br i1 %.not.39, label %bb.ao, label %.critedge.thread

bb.ao:                                            ; preds = %bb.an
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !554
  %.not.40 = icmp eq i64 %i.cc, 0
  br i1 %.not.40, label %bb.ap, label %.critedge.thread

bb.ap:                                            ; preds = %bb.ao
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !554
  %.not.41 = icmp eq i64 %i.ce, 0
  br i1 %.not.41, label %bb.aq, label %.critedge.thread

bb.aq:                                            ; preds = %bb.ap
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !554
  %.not.42 = icmp eq i64 %i.cg, 0
  br i1 %.not.42, label %bb.ar, label %.critedge.thread

bb.ar:                                            ; preds = %bb.aq
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !554
  %.not.43 = icmp eq i64 %i.ci, 0
  br i1 %.not.43, label %bb.as, label %.critedge.thread

bb.as:                                            ; preds = %bb.ar
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !554
  %.not.44 = icmp eq i64 %i.ck, 0
  br i1 %.not.44, label %bb.at, label %.critedge.thread

bb.at:                                            ; preds = %bb.as
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !554
  %.not.45 = icmp eq i64 %i.cm, 0
  br i1 %.not.45, label %bb.au, label %.critedge.thread

bb.au:                                            ; preds = %bb.at
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !554
  %.not.46 = icmp eq i64 %i.co, 0
  br i1 %.not.46, label %bb.av, label %.critedge.thread

bb.av:                                            ; preds = %bb.au
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !554
  %.not.47 = icmp eq i64 %i.cq, 0
  br i1 %.not.47, label %bb.aw, label %.critedge.thread

bb.aw:                                            ; preds = %bb.av
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !554
  %.not.48 = icmp eq i64 %i.cs, 0
  br i1 %.not.48, label %bb.ax, label %.critedge.thread

bb.ax:                                            ; preds = %bb.aw
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !554
  %.not.49 = icmp eq i64 %i.cu, 0
  br i1 %.not.49, label %bb.ay, label %.critedge.thread

bb.ay:                                            ; preds = %bb.ax
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !554
  %.not.50 = icmp eq i64 %i.cw, 0
  br i1 %.not.50, label %bb.az, label %.critedge.thread

bb.az:                                            ; preds = %bb.ay
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !554
  %.not.51 = icmp eq i64 %i.cy, 0
  br i1 %.not.51, label %bb.ba, label %.critedge.thread

bb.ba:                                            ; preds = %bb.az
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !554
  %.not.52 = icmp eq i64 %i.da, 0
  br i1 %.not.52, label %bb.bb, label %.critedge.thread

bb.bb:                                            ; preds = %bb.ba
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !554
  %.not.53 = icmp eq i64 %i.dc, 0
  br i1 %.not.53, label %bb.bc, label %.critedge.thread

bb.bc:                                            ; preds = %bb.bb
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !554
  %.not.54 = icmp eq i64 %i.de, 0
  br i1 %.not.54, label %bb.bd, label %.critedge.thread

bb.bd:                                            ; preds = %bb.bc
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !554
  %.not.55 = icmp eq i64 %i.dg, 0
  br i1 %.not.55, label %bb.be, label %.critedge.thread

bb.be:                                            ; preds = %bb.bd
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !554
  %.not.56 = icmp eq i64 %i.di, 0
  br i1 %.not.56, label %bb.bf, label %.critedge.thread

bb.bf:                                            ; preds = %bb.be
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !554
  %.not.57 = icmp eq i64 %i.dk, 0
  br i1 %.not.57, label %bb.bg, label %.critedge.thread

bb.bg:                                            ; preds = %bb.bf
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !554
  %.not.58 = icmp eq i64 %i.dm, 0
  br i1 %.not.58, label %bb.bh, label %.critedge.thread

bb.bh:                                            ; preds = %bb.bg
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !554
  %.not.59 = icmp eq i64 %i.do, 0
  br i1 %.not.59, label %bb.bi, label %.critedge.thread

bb.bi:                                            ; preds = %bb.bh
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !554
  %.not.60 = icmp eq i64 %i.dq, 0
  br i1 %.not.60, label %bb.bj, label %.critedge.thread

bb.bj:                                            ; preds = %bb.bi
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !554
  %.not.61 = icmp eq i64 %i.ds, 0
  br i1 %.not.61, label %bb.bk, label %.critedge.thread

bb.bk:                                            ; preds = %bb.bj
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !554
  %.not.62 = icmp eq i64 %i.du, 0
  br i1 %.not.62, label %bb.bl, label %.critedge.thread

bb.bl:                                            ; preds = %bb.bk
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !554
  %.not.63 = icmp eq i64 %i.dw, 0
  br i1 %.not.63, label %.critedge, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl
  %.013.lcssa = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ %i.f, %bb.d ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.l, %bb.g ], [ %i.n, %bb.h ], [ %i.p, %bb.i ], [ %i.r, %bb.j ], [ %i.t, %bb.k ], [ %i.v, %bb.l ], [ %i.x, %bb.m ], [ %i.z, %bb.n ], [ %i.ab, %bb.o ], [ %i.ad, %bb.p ], [ %i.af, %bb.q ], [ %i.ah, %bb.r ], [ %i.aj, %bb.s ], [ %i.al, %bb.t ], [ %i.an, %bb.u ], [ %i.ap, %bb.v ], [ %i.ar, %bb.w ], [ %i.at, %bb.x ], [ %i.av, %bb.y ], [ %i.ax, %bb.z ], [ %i.az, %bb.aa ], [ %i.bb, %bb.ab ], [ %i.bd, %bb.ac ], [ %i.bf, %bb.ad ], [ %i.bh, %bb.ae ], [ %i.bj, %bb.af ], [ %i.bl, %bb.ag ], [ %i.bn, %bb.ah ], [ %i.bp, %bb.ai ], [ %i.br, %bb.aj ], [ %i.bt, %bb.ak ], [ %i.bv, %bb.al ], [ %i.bx, %bb.am ], [ %i.bz, %bb.an ], [ %i.cb, %bb.ao ], [ %i.cd, %bb.ap ], [ %i.cf, %bb.aq ], [ %i.ch, %bb.ar ], [ %i.cj, %bb.as ], [ %i.cl, %bb.at ], [ %i.cn, %bb.au ], [ %i.cp, %bb.av ], [ %i.cr, %bb.aw ], [ %i.ct, %bb.ax ], [ %i.cv, %bb.ay ], [ %i.cx, %bb.az ], [ %i.cz, %bb.ba ], [ %i.db, %bb.bb ], [ %i.dd, %bb.bc ], [ %i.df, %bb.bd ], [ %i.dh, %bb.be ], [ %i.dj, %bb.bf ], [ %i.dl, %bb.bg ], [ %i.dn, %bb.bh ], [ %i.dp, %bb.bi ], [ %i.dr, %bb.bj ], [ %i.dt, %bb.bk ], [ %i.dv, %bb.bl ]
  %.0712.lcssa = phi i32 [ 0, %bb.a ], [ 64, %bb.b ], [ 128, %bb.c ], [ 192, %bb.d ], [ 256, %bb.e ], [ 320, %bb.f ], [ 384, %bb.g ], [ 448, %bb.h ], [ 512, %bb.i ], [ 576, %bb.j ], [ 640, %bb.k ], [ 704, %bb.l ], [ 768, %bb.m ], [ 832, %bb.n ], [ 896, %bb.o ], [ 960, %bb.p ], [ 1024, %bb.q ], [ 1088, %bb.r ], [ 1152, %bb.s ], [ 1216, %bb.t ], [ 1280, %bb.u ], [ 1344, %bb.v ], [ 1408, %bb.w ], [ 1472, %bb.x ], [ 1536, %bb.y ], [ 1600, %bb.z ], [ 1664, %bb.aa ], [ 1728, %bb.ab ], [ 1792, %bb.ac ], [ 1856, %bb.ad ], [ 1920, %bb.ae ], [ 1984, %bb.af ], [ 2048, %bb.ag ], [ 2112, %bb.ah ], [ 2176, %bb.ai ], [ 2240, %bb.aj ], [ 2304, %bb.ak ], [ 2368, %bb.al ], [ 2432, %bb.am ], [ 2496, %bb.an ], [ 2560, %bb.ao ], [ 2624, %bb.ap ], [ 2688, %bb.aq ], [ 2752, %bb.ar ], [ 2816, %bb.as ], [ 2880, %bb.at ], [ 2944, %bb.au ], [ 3008, %bb.av ], [ 3072, %bb.aw ], [ 3136, %bb.ax ], [ 3200, %bb.ay ], [ 3264, %bb.az ], [ 3328, %bb.ba ], [ 3392, %bb.bb ], [ 3456, %bb.bc ], [ 3520, %bb.bd ], [ 3584, %bb.be ], [ 3648, %bb.bf ], [ 3712, %bb.bg ], [ 3776, %bb.bh ], [ 3840, %bb.bi ], [ 3904, %bb.bj ], [ 3968, %bb.bk ], [ 4032, %bb.bl ]
  %i.dx = load i64, ptr %.013.lcssa, align 8, !tbaa !554 ; 2 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dx, i1 true)
  %1 = icmp eq i64 %i.dx, 0
  %2 = trunc nuw nsw i64 %i.dy to i32
  %i.dz = select i1 %1, i32 0, i32 %2, !prof !2624
  %i.ea = or disjoint i32 %i.dz, %.0712.lcssa
  br label %.critedge

.critedge:                                        ; preds = %bb.bl, %.critedge.thread
  %i.eb = phi i32 [ %i.ea, %.critedge.thread ], [ 4096, %bb.bl ]
  ret i32 %i.eb
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools16FindActiveValuesINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEE15anyActiveVoxelsEPKS8_RKNS0_4math9CoordBBoxE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(24) %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::LeafNode<bool, 3>::ValueIter", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i32, ptr %i.a, align 4, !tbaa !296, !noalias !2632 ; 2 uses
  %i.c = add nsw i32 %i.b, 7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 132
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.520.0.copyload = load i32, ptr %.sroa.520.0..sroa_idx, align 8, !tbaa !283 ; 2 uses
  %i.d = load i32, ptr %2, align 4, !tbaa !296
  %i.e = icmp slt i32 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp slt i32 %.sroa.4.0.copyload, %i.g
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp slt i32 %.sroa.520.0.copyload, %i.j
  %or.cond25 = select i1 %or.cond, i1 true, i1 %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp slt i32 %i.m, %i.c
  %or.cond28 = select i1 %or.cond25, i1 true, i1 %i.n
  br i1 %or.cond28, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = add nsw i32 %.sroa.520.0.copyload, 7
  %i.p = add nsw i32 %.sroa.4.0.copyload, 7
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !296
  %i.s = icmp slt i32 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %.not = icmp slt i32 %i.u, %i.o
  %or.cond45 = select i1 %i.s, i1 true, i1 %.not
  br i1 %or.cond45, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %1, align 8, !tbaa !554
  %i.w = icmp ne i64 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp ne i64 %i.y, 0
  %or.cond.i.not42 = select i1 %i.w, i1 true, i1 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp ne i64 %i.ab, 0
  %or.cond8.i.not39 = select i1 %or.cond.i.not42, i1 true, i1 %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp ne i64 %i.ae, 0
  %or.cond11.i.not37 = select i1 %or.cond8.i.not39, i1 true, i1 %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp ne i64 %i.ah, 0
  %or.cond14.i.not35 = select i1 %or.cond11.i.not37, i1 true, i1 %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp ne i64 %i.ak, 0
  %or.cond17.i.not33 = select i1 %or.cond14.i.not35, i1 true, i1 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp ne i64 %i.an, 0
  %or.cond20.i.not = select i1 %or.cond17.i.not33, i1 true, i1 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = icmp ne i64 %i.aq, 0
  %or.cond23.i = select i1 %or.cond20.i.not, i1 true, i1 %i.ar
  br label %bb.q

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread: ; preds = %bb.b, %bb.a
  %i.as = load i64, ptr %1, align 8, !tbaa !554   ; 3 uses
  %i.at = icmp eq i64 %i.as, -1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = icmp eq i64 %i.av, -1
  %or.cond.i10 = select i1 %i.at, i1 %i.aw, i1 false
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i64, ptr %i.ax, align 8            ; 3 uses
  %i.az = icmp eq i64 %i.ay, -1
  %or.cond8.i11 = select i1 %or.cond.i10, i1 %i.az, i1 false
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.bc = icmp eq i64 %i.bb, -1
  %or.cond11.i12 = select i1 %or.cond8.i11, i1 %i.bc, i1 false
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = icmp eq i64 %i.be, -1
  %or.cond14.i13 = select i1 %or.cond11.i12, i1 %i.bf, i1 false
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = icmp eq i64 %i.bh, -1
  %or.cond17.i14 = select i1 %or.cond14.i13, i1 %i.bi, i1 false
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.bl = icmp eq i64 %i.bk, -1
  %or.cond20.i15 = select i1 %or.cond17.i14, i1 %i.bl, i1 false
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bn = load i64, ptr %i.bm, align 8            ; 3 uses
  %i.bo = icmp eq i64 %i.bn, -1
  %or.cond23.i16 = select i1 %or.cond20.i15, i1 %i.bo, i1 false
  br i1 %or.cond23.i16, label %bb.q, label %bb.d

bb.d:                                             ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE13cbeginValueOnEv.exit

bb.e:                                             ; preds = %bb.d
  %.not.1.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.1.i.i.i, label %bb.f, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE13cbeginValueOnEv.exit

bb.f:                                             ; preds = %bb.e
  %.not.2.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.2.i.i.i, label %bb.g, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE13cbeginValueOnEv.exit

bb.g:                                             ; preds = %bb.f
  %.not.3.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.3.i.i.i, label %bb.h, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE13cbeginValueOnEv.exit

bb.h:                                             ; preds = %bb.g
  %.not.4.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.4.i.i.i, label %bb.i, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE13cbeginValueOnEv.exit

bb.i:                                             ; preds = %bb.h
  %.not.5.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.5.i.i.i, label %bb.j, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE13cbeginValueOnEv.exit

bb.j:                                             ; preds = %bb.i
  %.not.6.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.6.i.i.i, label %bb.k, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE13cbeginValueOnEv.exit

bb.k:                                             ; preds = %bb.j
  %.not.7.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.7.i.i.i, label %.critedge, label %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE13cbeginValueOnEv.exit

_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE13cbeginValueOnEv.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %i.bp = phi i64 [ %i.as, %bb.d ], [ %i.av, %bb.e ], [ %i.ay, %bb.f ], [ %i.bb, %bb.g ], [ %i.be, %bb.h ], [ %i.bh, %bb.i ], [ %i.bk, %bb.j ], [ %i.bn, %bb.k ]
  %.0712.lcssa.i.i.i = phi i32 [ 0, %bb.d ], [ 64, %bb.e ], [ 128, %bb.f ], [ 192, %bb.g ], [ 256, %bb.h ], [ 320, %bb.i ], [ 384, %bb.j ], [ 448, %bb.k ]
  %i.bq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = or disjoint i32 %.0712.lcssa.i.i.i, %i.br
  store ptr %1, ptr %3, align 8, !tbaa !599, !alias.scope !2633
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %i.bs, ptr %i.bt, align 8, !alias.scope !2633
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %1, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !2633
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %bb.l

.critedge:                                        ; preds = %.lr.ph.6, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %bb.k
  %.09.lcssa = phi i1 [ false, %bb.k ], [ %i.cx, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit ], [ %i.cx, %.lr.ph.i.i.i.i.5 ], [ %i.cx, %.lr.ph.i.i.i.i.4 ], [ %i.cx, %.lr.ph.i.i.i.i.3 ], [ %i.cx, %.lr.ph.i.i.i.i.2 ], [ %i.cx, %.lr.ph.i.i.i.i.1 ], [ %i.cx, %.lr.ph.i.i.i.i ], [ %i.cx, %.lr.ph.i.i.i.i.preheader ], [ %i.cx, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit ], [ %i.cx, %.lr.ph.6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.q

bb.l:                                             ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIbLj3EE13cbeginValueOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEEppEv.exit
  %i.bw = call noundef nonnull align 8 dereferenceable(144) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIbLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  %i.bx = load i32, ptr %i.bt, align 8, !tbaa !600 ; 4 uses
  %i.by = lshr i32 %i.bx, 6
  %i.bz = lshr i32 %i.bx, 3
  %i.ca = and i32 %i.bz, 7
  %i.cb = and i32 %i.bx, 7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !296
  %i.ce = add nsw i32 %i.cd, %i.by                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 132
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !296
  %i.ch = add nsw i32 %i.cg, %i.ca                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !296
  %i.ck = add nsw i32 %i.cj, %i.cb                ; 2 uses
  %i.cl = load i32, ptr %2, align 4, !tbaa !296
  %i.cm = icmp slt i32 %i.ce, %i.cl
  br i1 %i.cm, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = load i32, ptr %i.f, align 4, !tbaa !296
  %i.co = icmp slt i32 %i.ch, %i.cn
  br i1 %i.co, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKNS1_5CoordE.exit, label %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i17

_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i17: ; preds = %bb.m
  %i.cp = load i32, ptr %i.i, align 4, !tbaa !296
  %i.cq = icmp slt i32 %i.ck, %i.cp
  %i.cr = load i32, ptr %i.l, align 4
  %i.cs = icmp slt i32 %i.cr, %i.ce
  %or.cond.i18 = select i1 %i.cq, i1 true, i1 %i.cs
  %i.ct = load i32, ptr %i.bu, align 4
  %i.cu = icmp slt i32 %i.ct, %i.ch
  %or.cond10.i = select i1 %or.cond.i18, i1 true, i1 %i.cu
end_hunk_0
