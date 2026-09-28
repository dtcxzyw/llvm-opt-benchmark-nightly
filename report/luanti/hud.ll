Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/hud?download=true
inline.NumInlined: 2250
inline.NumDeleted: 686
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3Hud9drawItemsEN4core8vector2dIiEES2_iNS1_IfEEiP13InventoryListttb:bb.a
  %i.do = add nsw i32 %i.dn, %i.cy
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.098.0.us = phi i32 [ %i.do, %bb.k ], [ %i.dl, %bb.j ], [ %i.cy, %bb.i ], [ %i.cy, %bb.h ] ; 2 uses
  %.sroa.8.0.us = phi i32 [ %i.cy, %bb.k ], [ %i.cy, %bb.j ], [ %i.dh, %bb.i ], [ %i.de, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.dp = add nsw i32 %.sroa.098.0.us, %i.aa
  %i.dq = add nsw i32 %.sroa.8.0.us, %i.ac
  %i.dr = add nsw i32 %i.ct, %.sroa.098.0.us
  %.sroa.8.8.insert.ext.i78.us = zext i32 %i.dr to i64
  %i.ds = add nsw i32 %i.cu, %.sroa.8.0.us
  %.sroa.8.12.insert.ext.i81.us = zext i32 %i.ds to i64
  %.sroa.8.12.insert.shift.i82.us = shl nuw i64 %.sroa.8.12.insert.ext.i81.us, 32
  %.sroa.8.12.insert.insert.i83.us = or disjoint i64 %.sroa.8.12.insert.shift.i82.us, %.sroa.8.8.insert.ext.i78.us
  %.sroa.0.sroa.6.0.insert.ext.i84.us = zext i32 %i.dq to i64
  %.sroa.0.sroa.6.0.insert.shift.i85.us = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext.i84.us, 32
  %.sroa.0.sroa.0.0.insert.ext.i86.us = zext i32 %i.dp to i64
  %.sroa.0.sroa.0.0.insert.insert.i87.us = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift.i85.us, %.sroa.0.sroa.0.0.insert.ext.i86.us
  store i64 %.sroa.0.sroa.0.0.insert.insert.i87.us, ptr %12, align 8
  store i64 %.sroa.8.12.insert.insert.i83.us, ptr %i.cv, align 8
  %i.dt = zext i32 %.0133.us to i64
  %i.du = load ptr, ptr %6, align 8, !tbaa !437
  %i.dv = getelementptr inbounds nuw [296 x i8], ptr %i.du, i64 %i.dt
  %i.dw = add i32 %.0133.us, 1                    ; 3 uses
  %i.dx = icmp eq i32 %i.dw, %i.cw
  call void @_ZN3Hud8drawItemERK9ItemStackRKN4core4rectIiEEb(ptr noundef nonnull align 8 dereferenceable(572) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.dv, ptr noundef nonnull align 4 dereferenceable(16) %12, i1 noundef zeroext %i.dx)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %exitcond.not = icmp eq i32 %i.dw, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !433

._crit_edge:                                      ; preds = %bb.l, %bb.s, %bb.g
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.s
  %.0133 = phi i32 [ %i.ex, %bb.s ], [ %5, %.lr.ph ] ; 7 uses
  %i.dy = load i32, ptr %i.a, align 8, !tbaa !117
  %i.dz = load i32, ptr %i.c, align 4, !tbaa !118 ; 9 uses
  %i.ea = shl nsw i32 %i.dz, 1
  %i.eb = add nsw i32 %i.ea, %i.dy                ; 4 uses
  switch i16 %8, label %bb.p [
    i16 1, label %bb.m
    i16 2, label %bb.n
    i16 3, label %bb.o
  ]

bb.m:                                             ; preds = %.lr.ph.split
  %i.ec = xor i32 %.0133, -1
  %i.ed = add i32 %i.cs, %i.ec
  %i.ee = mul nsw i32 %i.eb, %i.ed
  %i.ef = add nsw i32 %i.ee, %i.dz
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph.split
  %i.eg = sub nsw i32 %.0133, %5
  %i.eh = mul nsw i32 %i.eb, %i.eg
  %i.ei = add nsw i32 %i.eh, %i.dz
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph.split
  %i.ej = xor i32 %.0133, -1
  %i.ek = add i32 %i.cs, %i.ej
  %i.el = mul nsw i32 %i.eb, %i.ek
  %i.em = add nsw i32 %i.el, %i.dz
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split
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
  %.sroa.02.0.copyload = load i48, ptr %1, align 2, !tbaa !110 ; 3 uses
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
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4 ; 4 uses
  %.sroa.28.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx45, align 4 ; 4 uses
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %.sroa.30.0.copyload = load float, ptr %.sroa.30.0..sroa_idx, align 4 ; 4 uses
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  %.sroa.34.0.copyload = load float, ptr %.sroa.34.0..sroa_idx, align 4, !tbaa !23 ; 4 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !69
  %4 = getelementptr inbounds nuw i8, ptr %i.ad, i64 304
  %5 = load ptr, ptr %4, align 8
  %i.ae = tail call noundef nonnull align 4 dereferenceable(64) ptr %5(ptr noundef nonnull align 8 dereferenceable(233) %i.p) ; 16 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !58 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !58 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ak = fmul nsz float %.sroa.18.0.copyload, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !58 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ao = load float, ptr %i.an, align 4, !tbaa !58 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !58 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.as = load float, ptr %i.ar, align 4, !tbaa !58 ; 3 uses
  %i.at = fmul nsz float %.sroa.18.0.copyload, %i.ao
  %i.au = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1026.0.copyload, float %i.am, float %i.at)
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %.sroa.26.0.copyload, float %i.aq, float %i.au)
  %i.aw = tail call nsz float @llvm.fmuladd.f32(float %.sroa.34.0.copyload, float %i.as, float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !58 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.ba = load float, ptr %i.az, align 4, !tbaa !58 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.bd = fmul nsz float %.sroa.18.0.copyload, %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.bf = load float, ptr %i.be, align 4, !tbaa !58 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !58 ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %7 = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  %8 = load <2 x float>, ptr %6, align 4, !tbaa !58 ; 2 uses
  %i.bi = load float, ptr %7, align 4, !tbaa !58
  %9 = fmul nsz float %.sroa.18.0.copyload, %i.bh
  %10 = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1026.0.copyload, float %i.bf, float %9)
  %i.bj = fmul nsz float %i.x, %i.aw
  %11 = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1026.0.copyload, float %i.af, float %i.ak)
  %i.bk = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1026.0.copyload, float %i.ay, float %i.bd)
  %12 = load float, ptr %i.ai, align 4, !tbaa !58 ; 3 uses
  %13 = load float, ptr %i.aj, align 4, !tbaa !58 ; 3 uses
  %14 = tail call nsz float @llvm.fmuladd.f32(float %.sroa.26.0.copyload, float %12, float %11)
  %15 = tail call nsz float @llvm.fmuladd.f32(float %.sroa.34.0.copyload, float %13, float %14)
  %16 = load float, ptr %i.bb, align 4, !tbaa !58 ; 3 uses
  %17 = load float, ptr %i.bc, align 4, !tbaa !58 ; 3 uses
  %18 = tail call nsz float @llvm.fmuladd.f32(float %.sroa.26.0.copyload, float %16, float %i.bk)
  %19 = tail call nsz float @llvm.fmuladd.f32(float %.sroa.34.0.copyload, float %17, float %18)
  %i.bl = insertelement <2 x float> poison, float %15, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %.sroa.26.0.copyload, i64 1
  %i.bn = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %20 = insertelement <2 x float> %i.bn, float %i.w, i64 0 ; 3 uses
  %i.bo = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %10, i64 1
  %i.bq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %20, <2 x float> %i.bp)
  %21 = insertelement <2 x float> poison, float %19, i64 0
  %i.br = insertelement <2 x float> %21, float %.sroa.34.0.copyload, i64 1
  %i.bs = insertelement <2 x float> poison, float %i.y, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.bi, i64 1 ; 2 uses
  %i.bu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bt, <2 x float> %i.bq)
  %i.bv = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bu) ; 3 uses
  %i.bw = fcmp nsz uge float %i.bv, 0.000000e+00  ; 2 uses
  br i1 %i.bw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bx = fmul nsz float %.sroa.14.0.copyload, %i.bh
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.bf, float %i.bx)
  %i.bz = fmul nsz float %.sroa.14.0.copyload, %i.ba
  %i.ca = fmul nsz float %.sroa.14.0.copyload, %i.ah
  %i.cb = fmul nsz float %.sroa.14.0.copyload, %i.ao
  %i.cc = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.am, float %i.cb)
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %i.aq, float %i.cc)
  %i.ce = tail call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.as, float %i.cd)
  %i.cf = fmul nsz float %i.x, %i.ce
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.ay, float %i.bz)
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %16, float %i.cg)
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %17, float %i.ch)
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %.sroa.621.0.copyload, float %i.af, float %i.ca)
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %12, float %i.cj)
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %13, float %i.ck)
  %i.cm = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %.sroa.22.0.copyload, i64 1
  %i.co = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.by, i64 1
  %i.cq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %20, <2 x float> %i.cp)
  %i.cr = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %.sroa.30.0.copyload, i64 1
  %i.ct = insertelement <2 x float> %8, float %i.y, i64 0
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ct, <2 x float> %i.cq)
  %i.cv = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.cu)
  %i.cw = fmul nsz float %.sroa.12.0.copyload, %i.bh
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.bf, float %i.cw)
  %i.cy = fmul nsz float %.sroa.12.0.copyload, %i.ba
  %i.cz = fmul nsz float %.sroa.12.0.copyload, %i.ah
  %i.da = fmul nsz float %.sroa.12.0.copyload, %i.ao
  %i.db = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.am, float %i.da)
  %i.dc = tail call nsz float @llvm.fmuladd.f32(float %.sroa.20.0.copyload, float %i.aq, float %i.db)
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float %i.as, float %i.dc)
  %i.de = fmul nsz float %i.x, %i.dd
  %i.df = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.ay, float %i.cy)
  %i.dg = tail call nsz float @llvm.fmuladd.f32(float %.sroa.20.0.copyload, float %16, float %i.df)
  %i.dh = tail call nsz float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float %17, float %i.dg)
  %i.di = tail call nsz float @llvm.fmuladd.f32(float %.sroa.019.0.copyload, float %i.af, float %i.cz)
  %i.dj = tail call nsz float @llvm.fmuladd.f32(float %.sroa.20.0.copyload, float %12, float %i.di)
  %i.dk = tail call nsz float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float %13, float %i.dj)
  %i.dl = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %.sroa.20.0.copyload, i64 1
  %i.dn = insertelement <2 x float> poison, float %i.de, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.cx, i64 1
  %i.dp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %20, <2 x float> %i.do)
  %i.dq = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %.sroa.28.0.copyload, i64 1
  %i.ds = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.bt, <2 x float> %i.dp)
  %i.dt = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.ds)
  %i.du = fcmp nsz oeq float %i.bv, 0.000000e+00
  %i.dv = fdiv nsz float 1.000000e+00, %i.bv
  %i.dw = select nsz i1 %i.du, float 1.000000e+00, float %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dy = fpext nsz float %i.dt to double
  %i.dz = fmul nsz double %i.dy, 5.000000e-01
  %i.ea = fpext nsz float %i.dw to double
  %i.eb = fmul nsz float %i.cv, %i.dw
  %i.ec = fpext nsz float %i.eb to double
  %i.ed = fneg nsz double %i.ec
  %i.ee = load <2 x i32>, ptr %i.dx, align 8, !tbaa !78
  %i.ef = uitofp <2 x i32> %i.ee to <2 x double>
  %i.eg = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.ed, i64 1
  %i.ei = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.ea, i64 0
  %i.ej = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ei, <2 x double> splat (double 5.000000e-01))
  %i.ek = fmul nsz <2 x double> %i.ej, %i.ef
  %i.el = fptosi <2 x double> %i.ek to <2 x i32>
  store <2 x i32> %i.el, ptr %3, align 4, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.bw
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
end_hunk_0
