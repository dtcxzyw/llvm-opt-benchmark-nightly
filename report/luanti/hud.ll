Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/hud?download=true
inline.NumInlined: 2250
inline.NumDeleted: 686
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3Hud9drawItemsEN4core8vector2dIiEES2_iNS1_IfEEiP13InventoryListttb:bb.a
  %i.en = sub nsw i32 %.0133, %5
  %i.eo = mul nsw i32 %i.eb, %i.en
  %i.ep = add nsw i32 %i.eo, %i.dz
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.098.0 = phi i32 [ %i.ep, %bb.p ], [ %i.ef, %bb.m ], [ %i.dz, %bb.n ], [ %i.dz, %bb.o ] ; 2 uses
  %.sroa.8.0 = phi i32 [ %i.dz, %bb.p ], [ %i.dz, %bb.m ], [ %i.ei, %bb.n ], [ %i.em, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.eq = add nsw i32 %.sroa.098.0, %i.aa
  %i.er = add nsw i32 %.sroa.8.0, %i.ac
  %i.es = add nsw i32 %i.ct, %.sroa.098.0
  %.sroa.8.8.insert.ext.i78 = zext i32 %i.es to i64
  %i.et = add nsw i32 %i.cu, %.sroa.8.0
  %.sroa.8.12.insert.ext.i81 = zext i32 %i.et to i64
  %.sroa.8.12.insert.shift.i82 = shl nuw i64 %.sroa.8.12.insert.ext.i81, 32
  %.sroa.8.12.insert.insert.i83 = or disjoint i64 %.sroa.8.12.insert.shift.i82, %.sroa.8.8.insert.ext.i78
  %.sroa.0.sroa.6.0.insert.ext.i84 = zext i32 %i.er to i64
  %.sroa.0.sroa.6.0.insert.shift.i85 = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i84, 32
  %.sroa.0.sroa.0.0.insert.ext.i86 = zext i32 %i.eq to i64
  %.sroa.0.sroa.0.0.insert.insert.i87 = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i85, %.sroa.0.sroa.0.0.insert.ext.i86
  store i64 %.sroa.0.sroa.0.0.insert.insert.i87, ptr %12, align 8
  store i64 %.sroa.8.12.insert.insert.i83, ptr %i.cv, align 8
  %i.eu = zext i32 %.0133 to i64
  %i.ev = load ptr, ptr %6, align 8, !tbaa !437
  %i.ew = getelementptr inbounds nuw [296 x i8], ptr %i.ev, i64 %i.eu
  %i.ex = add i32 %.0133, 1                       ; 3 uses
  %i.ey = icmp eq i32 %i.ex, %i.cw
  call void @_ZN3Hud8drawItemERK9ItemStackRKN4core4rectIiEEb(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.ew, ptr noundef nonnull align 4 dereferenceable(16) %12, i1 noundef zeroext %i.ey)
  %i.ez = load ptr, ptr @g_touchcontrols, align 8 ; 2 uses
  %.not134 = icmp eq ptr %i.ez, null
  br i1 %.not134, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fa = trunc i32 %.0133 to i16
  call void @_ZN13TouchControls18registerHotbarRectEtRKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(712) %i.ez, i16 noundef zeroext %i.fa, ptr noundef nonnull align 4 dereferenceable(16) %12)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %exitcond136.not = icmp eq i32 %i.ex, %.sroa.speculated
  br i1 %exitcond136.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !433
}

declare void @_ZN13TouchControls18registerHotbarRectEtRKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(712), i16 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN3Hud16hasElementOfTypeE14HudElementType(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(572) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135  ; 2 uses
  %.not1516.not = icmp eq ptr %i.d, %i.f
  br i1 %.not1516.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.011.017 = phi ptr [ %i.j, %.critedge ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.011.017, align 8, !tbaa !137 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.g, align 8, !tbaa !141
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %._crit_edge, label %.critedge

.critedge:                                        ; preds = %bb.b, %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.011.017, i64 8 ; 2 uses
  %.not15.not = icmp eq ptr %i.j, %i.f
  br i1 %.not15.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.critedge, %bb.a
  %.not15.lcssa = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ true, %bb.b ]
  ret i1 %.not15.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3Hud18calculateScreenPosERKN4core8vector3dIsEEP10HudElementPNS0_8vector2dIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(572) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.b = load float, ptr %i.a, align 4, !tbaa !142
  %i.c = fmul nsz float %i.b, 1.000000e+01
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.e = load float, ptr %i.d, align 4, !tbaa !143
  %i.f = fmul nsz float %i.e, 1.000000e+01
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.h = load float, ptr %i.g, align 4, !tbaa !144
  %i.i = fmul nsz float %i.h, 1.000000e+01
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = tail call noundef ptr @_ZN6Client15getSceneManagerEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.k) ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 4 uses
  %.sroa.02.0.copyload = load i48, ptr %1, align 2 ; 3 uses
  %.sroa.013.0.extract.trunc.i = trunc i48 %.sroa.02.0.copyload to i16
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.02.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.02.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.q = sitofp nsz i16 %.sroa.013.0.extract.trunc.i to float
  %i.r = sitofp nsz i16 %.sroa.2.0.extract.trunc.i to float
  %i.s = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.t = fmul nnan nsz float %i.q, 1.000000e+01
  %i.u = fmul nnan nsz float %i.r, 1.000000e+01
  %i.v = fmul nnan nsz float %i.s, 1.000000e+01
  %i.w = fsub nsz float %i.c, %i.t
  %i.x = fsub nsz float %i.f, %i.u                ; 3 uses
  %i.y = fsub nsz float %i.i, %i.v                ; 2 uses
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 296
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(233) %i.p) ; 12 uses
  %.sroa.019.0.copyload = load float, ptr %i.ac, align 4 ; 4 uses
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.sroa.621.0.copyload = load float, ptr %.sroa.621.0..sroa_idx, align 4 ; 4 uses
  %.sroa.1026.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.sroa.1026.0.copyload = load float, ptr %.sroa.1026.0..sroa_idx, align 4 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4 ; 4 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 4 ; 4 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 4 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4 ; 4 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %.sroa.28.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx45, align 4 ; 4 uses
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %.sroa.30.0.copyload = load float, ptr %.sroa.30.0..sroa_idx, align 4 ; 4 uses
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 304
  %i.af = load ptr, ptr %i.ae, align 8
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4 ; 4 uses
  %.sroa.34.0.copyload = load float, ptr %.sroa.34.0..sroa_idx, align 4, !tbaa !23 ; 4 uses
  %i.ag = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(233) %i.p) ; 15 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !58 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !58 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.am = fmul nsz float %.sroa.18.0.copyload, %i.aj
  %i.an = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1026.0.copyload, float %i.ah, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !58 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !58 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.at = load float, ptr %i.as, align 4, !tbaa !58 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.av = load float, ptr %i.au, align 4, !tbaa !58 ; 3 uses
  %i.aw = fmul nsz float %.sroa.18.0.copyload, %i.ar
  %i.ax = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1026.0.copyload, float %i.ap, float %i.aw)
  %i.ay = tail call nsz float @llvm.fmuladd.f32(float %.sroa.26.0.copyload, float %i.at, float %i.ax)
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %.sroa.34.0.copyload, float %i.av, float %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !58 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !58 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.bg = fmul nsz float %.sroa.18.0.copyload, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 52
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !58 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.bl = load float, ptr %i.al, align 4, !tbaa !58 ; 3 uses
  %i.bm = load float, ptr %i.ak, align 4, !tbaa !58 ; 3 uses
  %i.bn = tail call nsz float @llvm.fmuladd.f32(float %.sroa.26.0.copyload, float %i.bm, float %i.an)
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %.sroa.34.0.copyload, float %i.bl, float %i.bn)
  %i.bp = load float, ptr %i.be, align 4, !tbaa !58 ; 3 uses
  %i.bq = load <2 x float>, ptr %i.bj, align 4, !tbaa !58 ; 2 uses
  %i.br = load float, ptr %i.bk, align 4, !tbaa !58
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1026.0.copyload, float %i.bb, float %i.bg)
  %i.bt = load <2 x float>, ptr %i.bf, align 4, !tbaa !58 ; 3 uses
  %i.bu = fmul nsz float %.sroa.18.0.copyload, %i.bi
  %i.bv = tail call nsz float @llvm.fmuladd.f32(float %.sroa.26.0.copyload, float %i.bp, float %i.bs)
  %i.bw = insertelement <2 x float> poison, float %.sroa.34.0.copyload, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %.sroa.1026.0.copyload, i64 1
  %i.by = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bu, i64 1
  %i.ca = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bt, <2 x float> %i.bz) ; 2 uses
  %i.cb = fmul nsz float %i.x, %i.az
  %i.cc = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %.sroa.26.0.copyload, i64 1
  %i.ce = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cf = insertelement <2 x float> %i.ce, float %i.w, i64 0 ; 3 uses
  %i.cg = insertelement <2 x float> %i.ca, float %i.cb, i64 0
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.cf, <2 x float> %i.cg)
  %i.ci = insertelement <2 x float> %i.ca, float %.sroa.34.0.copyload, i64 1
  %i.cj = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.br, i64 1 ; 2 uses
  %i.cl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.ck, <2 x float> %i.ch)
  %4 = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.cl) ; 3 uses
  %i.cm = fcmp nsz uge float %4, 0.000000e+00     ; 2 uses
  br i1 %i.cm, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cn = fmul nsz float %.sroa.14.0.copyload, %i.bi
  %i.co = extractelement <2 x float> %i.bt, i64 1 ; 2 uses
  %i.cp = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.co, float %i.cn)
  %i.cq = fmul nsz float %.sroa.14.0.copyload, %i.bd
  %i.cr = fmul nsz float %.sroa.14.0.copyload, %i.aj
  %i.cs = fmul nsz float %.sroa.14.0.copyload, %i.ar
  %i.ct = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.ap, float %i.cs)
  %i.cu = tail call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %i.at, float %i.ct)
  %i.cv = tail call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.av, float %i.cu)
  %i.cw = fmul nsz float %i.x, %i.cv
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.bb, float %i.cq)
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %i.bp, float %i.cx)
  %i.cz = extractelement <2 x float> %i.bt, i64 0 ; 2 uses
  %i.da = tail call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.cz, float %i.cy)
  %i.db = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.ah, float %i.cr)
  %i.dc = tail call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %i.bm, float %i.db)
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.bl, float %i.dc)
  %i.de = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.df = insertelement <2 x float> %i.de, float %.sroa.22.0.copyload, i64 1
  %i.dg = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.cp, i64 1
  %i.di = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.cf, <2 x float> %i.dh)
  %i.dj = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %.sroa.30.0.copyload, i64 1
  %i.dl = insertelement <2 x float> %i.bq, float %i.y, i64 0
  %i.dm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dl, <2 x float> %i.di)
  %5 = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.dm)
  %i.dn = fmul nsz float %.sroa.12.0.copyload, %i.bi
  %i.do = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.co, float %i.dn)
  %i.dp = fmul nsz float %.sroa.12.0.copyload, %i.bd
  %i.dq = fmul nsz float %.sroa.12.0.copyload, %i.aj
  %i.dr = fmul nsz float %.sroa.12.0.copyload, %i.ar
  %i.ds = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.ap, float %i.dr)
  %i.dt = tail call nsz float @llvm.fmuladd.f32(float %.sroa.20.0.copyload, float %i.at, float %i.ds)
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float %i.av, float %i.dt)
  %i.dv = fmul nsz float %i.x, %i.du
  %i.dw = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.bb, float %i.dp)
  %i.dx = tail call nsz float @llvm.fmuladd.f32(float %.sroa.20.0.copyload, float %i.bp, float %i.dw)
  %i.dy = tail call nsz float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float %i.cz, float %i.dx)
  %i.dz = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.ah, float %i.dq)
  %i.ea = tail call nsz float @llvm.fmuladd.f32(float %.sroa.20.0.copyload, float %i.bm, float %i.dz)
  %i.eb = tail call nsz float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float %i.bl, float %i.ea)
  %i.ec = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ed = insertelement <2 x float> %i.ec, float %.sroa.20.0.copyload, i64 1
  %i.ee = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %i.do, i64 1
  %i.eg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.cf, <2 x float> %i.ef)
  %i.eh = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %.sroa.28.0.copyload, i64 1
  %i.ej = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ck, <2 x float> %i.eg)
  %6 = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.ej)
  %i.ek = fcmp nsz oeq float %4, 0.000000e+00
  %i.el = fdiv nsz float 1.000000e+00, %4
  %i.em = select nsz i1 %i.ek, float 1.000000e+00, float %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.eo = fpext nsz float %6 to double
  %i.ep = fmul nsz double %i.eo, 5.000000e-01
  %i.eq = fpext nsz float %i.em to double
  %i.er = fmul nsz float %5, %i.em
  %i.es = fpext nsz float %i.er to double
  %i.et = fneg nsz double %i.es
  %i.eu = load <2 x i32>, ptr %i.en, align 8, !tbaa !78
  %i.ev = uitofp <2 x i32> %i.eu to <2 x double>
  %i.ew = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.et, i64 1
  %i.ey = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.eq, i64 0
  %i.ez = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %i.ey, <2 x double> splat (double 5.000000e-01))
  %i.fa = fmul nsz <2 x double> %i.ez, %i.ev
  %i.fb = fptosi <2 x double> %i.fa to <2 x i32>
  store <2 x i32> %i.fb, ptr %3, align 4, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.cm
}

declare noundef ptr @_ZN6Client15getSceneManagerEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN3Hud15drawLuaElementsERKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.FontSpec, align 4           ; 8 uses
  %5 = alloca %struct.HudElement, align 8         ; 19 uses
  %6 = alloca %struct.HudElement, align 8         ; 19 uses
  %7 = alloca %struct.HudElement, align 8         ; 23 uses
  %8 = alloca %struct.HudElement, align 8         ; 20 uses
  %9 = alloca %"class.core::vector2d.0", align 8  ; 14 uses
  %10 = alloca %"class.video::SColor", align 4    ; 6 uses
  %11 = alloca %class.EnrichedString, align 8     ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %14 = alloca %class.EnrichedString, align 8     ; 12 uses
  %15 = alloca %"class.core::rect", align 8       ; 6 uses
  %16 = alloca %"class.core::string.460", align 8 ; 11 uses
  %17 = alloca %"class.core::rect", align 8       ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 16 uses
  %19 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 9 uses
  %20 = alloca %"class.core::string.460", align 8 ; 11 uses
  %21 = alloca %"class.core::rect", align 8       ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 16 uses
  %23 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string.449", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.core::string.460", align 8 ; 11 uses
  %27 = alloca %"class.core::rect", align 8       ; 6 uses
  %28 = alloca [4 x %"class.video::SColor"], align 16 ; 5 uses
  %29 = alloca %"class.core::rect", align 8       ; 6 uses
  %30 = alloca %"class.core::rect", align 8       ; 7 uses
  %31 = alloca %"class.core::rect", align 8       ; 7 uses
  %i.e = load ptr, ptr @g_fontengine, align 8, !tbaa !131 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1324
  %i.g = load i8, ptr %i.f, align 4, !tbaa !460, !range !122, !noundef !123
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1325
  %i.i = load i8, ptr %i.h, align 1, !tbaa !461, !range !122, !noundef !123
  store i32 -1, ptr %4, align 4, !tbaa !464
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 4, ptr %i.j, align 4, !tbaa !465
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %i.g, ptr %i.k, align 1, !tbaa !466
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %i.i, ptr %i.l, align 2, !tbaa !467
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 7
  store i8 1, ptr %i.m, align 1, !tbaa !468
  %i.n = call noundef i32 @_ZN10FontEngine13getTextHeightERK8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %4) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.o = load ptr, ptr @g_fontengine, align 8, !tbaa !131 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1324
  %i.q = load i16, ptr %i.p, align 4
  %i.r = zext i16 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 40
  %.sroa.0.0.insert.insert.i = or disjoint i64 %i.s, 72057615512764415
  %i.t = call noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.o, i64 %.sroa.0.0.insert.insert.i) ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 392
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 400
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !470  ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !471  ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #33
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not1006 = icmp eq ptr %i.y, %i.z
  br i1 %.not1006, label %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #37 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !72  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 392
  %.pre1165 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !135
  %.phi.trans.insert1166 = getelementptr inbounds nuw i8, ptr %.pre, i64 400
  %.pre1167 = load ptr, ptr %.phi.trans.insert1166, align 8, !tbaa !135
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.ag = phi ptr [ %.pre1167, %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i ], [ %i.y, %bb.b ] ; 2 uses
  %i.ah = phi ptr [ %.pre1165, %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i ], [ %i.z, %bb.b ] ; 2 uses
  %.sroa.31.6 = phi ptr [ %i.af, %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 2 uses
  %.sroa.17.4 = phi ptr [ %i.ae, %_ZNSt12_Vector_baseIP10HudElementSaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 4 uses
  %.not10071146 = icmp eq ptr %i.ah, %i.ag
  br i1 %.not10071146, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit
  %.sroa.0966.01150 = phi ptr [ %.sroa.0966.1, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.17.4, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ] ; 8 uses
  %.sroa.17.01149 = phi ptr [ %.sroa.17.1, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.17.4, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ] ; 7 uses
  %.sroa.31.01148 = phi ptr [ %.sroa.31.1, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.31.6, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ] ; 3 uses
  %.sroa.0963.01147 = phi ptr [ %i.az, %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit ], [ %i.ah, %_ZNSt6vectorIP10HudElementSaIS1_EE7reserveEm.exit ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.0963.01147, align 8, !tbaa !137 ; 3 uses
  %.not333 = icmp eq ptr %i.ai, null
  br i1 %.not333, label %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.17.01149, %.sroa.31.01148
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ai, ptr %.sroa.17.01149, align 8, !tbaa !137
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.17.01149, i64 8
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.ak = ptrtoint ptr %.sroa.17.01149 to i64
  %i.al = ptrtoint ptr %.sroa.0966.01150 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.f, label %_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #33
          to label %.noexc337 unwind label %.loopexit.split-lp1018

.noexc337:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #37
          to label %.noexc338 unwind label %.loopexit1017 ; 4 uses

.noexc338:                                        ; preds = %_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  store ptr %i.ai, ptr %i.av, align 8, !tbaa !137
  %i.aw = icmp sgt i64 %i.am, 0
  br i1 %i.aw, label %bb.g, label %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.g:                                             ; preds = %.noexc338
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %.sroa.0966.01150, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.g, %.noexc338
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0966.01150, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0966.01150, i64 noundef %i.am) #35
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10HudElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP10HudElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  br label %_ZNSt6vectorIP10HudElementSaIS1_EE9push_backERKS1_.exit

.loopexit1017:                                    ; preds = %_ZNKSt6vectorIP10HudElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit1019 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

.loopexit.split-lp1018:                           ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZN4core6stringIwEaSIwEERS1_PKT_:bb.a
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @wcslen(ptr noundef nonnull %1) #39 ; 5 uses
  %i.l = and i64 %i.k, 4294967295                 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !335
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = and i64 %i.k, 4294967295                 ; 2 uses
  %.not18 = icmp eq i64 %i.p, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.q = load ptr, ptr %0, align 8, !tbaa !338    ; 7 uses
  %wide.trip.count = and i64 %i.k, 4294967295     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %i.a, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.k, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !337
  %wide.load24 = load <4 x i32>, ptr %i.u, align 4, !tbaa !337
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !337
  store <4 x i32> %wide.load24, ptr %i.w, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !622

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !337
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !337
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !623

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %i.p
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !335
  %i.ae = icmp ugt i64 %i.ad, %i.l
  br i1 %i.ae, label %bb.g, label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !337
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !337
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !337
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !337
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !337
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i32 %i.am, ptr %i.an, align 4, !tbaa !337
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !337
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !337
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !624

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIwE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #21

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nounwind
declare ptr @wmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #22

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare extern_weak void @_ZTH13warningstream() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #22

declare extern_weak void @_ZTH10infostream() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #27 = { nobuiltin nounwind allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { noreturn }
attributes #34 = { nounwind }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn nounwind }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{null, null, null}
!1 = distinct !{null}
!2 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, null, null, null, null}
!3 = distinct !{!3, !132}
!4 = distinct !{!4, !132}
!5 = distinct !{!5, !132}
!6 = distinct !{!6, !132}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"long", !12, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !20, i64 8, !12, i64 16}
!22 = !{!21, !20, i64 8}
!23 = !{!12, !12, i64 0}
!24 = !{!"_ZTSN3Hud15BlockBoundsModeE", !12, i64 0}
!25 = !{!"_ZTSN5video6SColorE", !13, i64 0}
!26 = !{!"bool", !12, i64 0}
!27 = !{!"p1 _ZTS6Client", !16, i64 0}
!28 = !{!"p1 _ZTSN5video12IVideoDriverE", !16, i64 0}
!29 = !{!"p1 _ZTS11LocalPlayer", !16, i64 0}
!30 = !{!"p1 _ZTS9Inventory", !16, i64 0}
!31 = !{!"p1 _ZTS14ITextureSource", !16, i64 0}
!32 = !{!"float", !12, i64 0}
!33 = !{!"short", !12, i64 0}
!34 = !{!"_ZTSN4core8vector3dIsEE", !33, i64 0, !33, i64 2, !33, i64 4}
!35 = !{!"_ZTSN4core8vector2dIjEE", !13, i64 0, !13, i64 4}
!36 = !{!"_ZTSN4core8vector2dIiEE", !13, i64 0, !13, i64 4}
!37 = !{!"p1 _ZTSN4core8aabbox3dIfEE", !16, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE12_Vector_implE", !38, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorIN4core8aabbox3dIfEESaIS2_EE", !40, i64 0}
!42 = !{!"_ZTSN4core8vector3dIfEE", !32, i64 0, !32, i64 4, !32, i64 8}
!43 = !{!"p1 _ZTSN5scene5IMeshE", !16, i64 0}
!44 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !12, i64 0}
!45 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !12, i64 0}
!46 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !12, i64 0}
!47 = !{!"_ZTSN5video13E_COLOR_PLANEE", !12, i64 0}
!48 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !12, i64 0}
!49 = !{!"_ZTSN5video8E_ZWRITEE", !12, i64 0}
!50 = !{!"_ZTSN5video9SMaterialE", !12, i64 0, !44, i64 96, !25, i64 100, !32, i64 104, !32, i64 108, !32, i64 112, !32, i64 116, !32, i64 120, !45, i64 124, !46, i64 124, !47, i64 125, !48, i64 125, !26, i64 126, !26, i64 126, !49, i64 126, !26, i64 126, !26, i64 126, !26, i64 126, !26, i64 126}
!51 = !{!"p1 _ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE", !16, i64 0}
!52 = !{!"_ZTS7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE", !51, i64 0}
!53 = !{!"_ZTSN3HudUt_E", !12, i64 0}
!54 = !{!"_ZTS3Hud", !24, i64 0, !25, i64 4, !25, i64 8, !26, i64 12, !26, i64 13, !21, i64 16, !26, i64 48, !21, i64 56, !26, i64 88, !26, i64 89, !27, i64 96, !28, i64 104, !29, i64 112, !30, i64 120, !31, i64 128, !32, i64 136, !32, i64 140, !34, i64 144, !35, i64 152, !36, i64 160, !13, i64 168, !13, i64 172, !12, i64 176, !41, i64 192, !41, i64 216, !42, i64 240, !42, i64 252, !42, i64 264, !43, i64 280, !25, i64 288, !42, i64 292, !50, i64 304, !50, i64 432, !52, i64 560, !53, i64 568}
!55 = !{!54, !26, i64 48}
!56 = !{!54, !26, i64 88}
!57 = !{!54, !26, i64 89}
!58 = !{!32, !32, i64 0}
!59 = !{!"p1 _ZTSN5video8ITextureE", !16, i64 0}
!60 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !12, i64 0}
!61 = !{!"_ZTSN5video20E_TEXTURE_MAG_FILTERE", !12, i64 0}
!62 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !16, i64 0}
!63 = !{!"_ZTSN5video14SMaterialLayerE", !59, i64 0, !12, i64 8, !12, i64 8, !12, i64 9, !60, i64 10, !61, i64 11, !12, i64 12, !12, i64 13, !62, i64 16}
!64 = !{!63, !59, i64 0}
!65 = !{!52, !51, i64 0}
!66 = !{!"p1 _ZTS15RenderingEngine", !16, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"vtable pointer", !11, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!54, !28, i64 104}
!71 = !{!54, !27, i64 96}
!72 = !{!54, !29, i64 112}
!73 = !{!54, !30, i64 120}
!74 = !{!"p1 _ZTS8Settings", !16, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!20, !20, i64 0}
!77 = !{!21, !17, i64 0}
!78 = !{!13, !13, i64 0}
!79 = !{!54, !31, i64 128}
!80 = !{!54, !26, i64 12}
!81 = !{!54, !26, i64 13}
!82 = !{!38, !37, i64 0}
!83 = !{!38, !37, i64 8}
!84 = !{!54, !53, i64 568}
!85 = !{!"_ZTSSt14_Rb_tree_color", !12, i64 0}
!86 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !16, i64 0}
!87 = !{!"_ZTSSt18_Rb_tree_node_base", !85, i64 0, !86, i64 8, !86, i64 16, !86, i64 24}
!88 = !{!"_ZTSSt15_Rb_tree_header", !87, i64 0, !20, i64 32}
!89 = !{!88, !86, i64 8}
!90 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!91 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !90, i64 0}
!92 = !{!"_ZTS17IReferenceCounted", !13, i64 8}
!93 = !{!92, !13, i64 8}
!94 = !{!"_ZTSN5scene11IMeshBufferE"}
!95 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE", !16, i64 0}
!96 = !{!"p1 _ZTSN5scene12CIndexBufferItEE", !16, i64 0}
!97 = !{!"_ZTSN4core8aabbox3dIfEE", !42, i64 0, !42, i64 12}
!98 = !{!"_ZTSN5scene16E_PRIMITIVE_TYPEE", !12, i64 0}
!99 = !{!"_ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE", !94, i64 0, !50, i64 8, !95, i64 136, !96, i64 144, !97, i64 152, !98, i64 176}
!100 = !{!99, !95, i64 136}
!101 = !{!99, !96, i64 144}
!102 = !{!"p1 _ZTSN5video9S3DVertexE", !16, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!103, !102, i64 8}
!105 = !{!103, !102, i64 0}
!106 = !{!"p1 short", !16, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!107, !106, i64 8}
!109 = !{!107, !106, i64 0}
!110 = !{!33, !33, i64 0}
!111 = !{!"_ZTSN5scene18E_HARDWARE_MAPPINGE", !12, i64 0}
!112 = !{!"_ZTSN5scene8HWBufferE", !111, i64 8, !16, i64 16, !13, i64 24}
!113 = !{!112, !111, i64 8}
!114 = !{!38, !37, i64 16}
!115 = !{!54, !32, i64 136}
!116 = !{!54, !32, i64 140}
!117 = !{!54, !13, i64 168}
!118 = !{!54, !13, i64 172}
!119 = !{!99, !98, i64 176}
!120 = !{!63, !62, i64 16}
!121 = !{!54, !43, i64 280}
!122 = !{i8 0, i8 2}
!123 = !{}
!124 = !{i64 0, i64 4, !78, i64 4, i64 4, !78, i64 8, i64 4, !78, i64 12, i64 4, !78}
!125 = !{!"_ZTSN4core4rectIiEE", !36, i64 0, !36, i64 8}
!126 = !{!125, !13, i64 0}
!127 = !{!125, !13, i64 4}
!128 = !{!125, !13, i64 8}
!129 = !{!125, !13, i64 12}
!130 = !{!"p1 _ZTS10FontEngine", !16, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !{!"any p2 pointer", !16, i64 0}
!134 = !{!"p2 _ZTS10HudElement", !133, i64 0}
!135 = !{!134, !134, i64 0}
!136 = !{!"p1 _ZTS10HudElement", !16, i64 0}
!137 = !{!136, !136, i64 0}
!138 = !{!"_ZTS14HudElementType", !12, i64 0}
!139 = !{!"_ZTSN4core8vector2dIfEE", !32, i64 0, !32, i64 4}
!140 = !{!"_ZTS10HudElement", !138, i64 0, !139, i64 4, !21, i64 16, !139, i64 48, !21, i64 56, !13, i64 88, !13, i64 92, !13, i64 96, !139, i64 100, !139, i64 108, !42, i64 116, !139, i64 128, !33, i64 136, !21, i64 144, !13, i64 176}
!141 = !{!140, !138, i64 0}
!142 = !{!42, !32, i64 0}
!143 = !{!42, !32, i64 4}
!144 = !{!42, !32, i64 8}
!145 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !133, i64 0}
!146 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!147 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !146, i64 0}
!148 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !32, i64 0, !20, i64 8}
!149 = !{!"_ZTSN3con11PeerHandlerE"}
end_hunk_1
