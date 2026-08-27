Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7lodepng17convertToXYZFloatEPfS0_PKfjjPK12LodePNGState:bb.a

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.co = phi float [ %i.cn, %bb.o ], [ %i.cl, %bb.n ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cj
  store float %i.co, ptr %i.cp, align 4, !tbaa !82
  %i.cq = add nuw i64 %.25478.i, 1                ; 2 uses
  %exitcond89.not.i = icmp eq i64 %i.cq, %mul.i68.i
  br i1 %exitcond89.not.i, label %_ZN7lodepngL18convertToXYZ_gammaEPfPKfjjPK11LodePNGInfojPKNS_10LodePNGICCE.exit, label %.preheader69.i, !llvm.loop !115

bb.q:                                             ; preds = %bb.h, %bb.g
  %.not83.i = icmp eq i64 %mul.i68.i, 0
  br i1 %.not83.i, label %_ZN7lodepngL18convertToXYZ_gammaEPfPKfjjPK11LodePNGInfojPKNS_10LodePNGICCE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q, %bb.z
  %.380.i = phi i64 [ %i.dv, %bb.z ], [ 0, %bb.q ] ; 2 uses
  %i.cr = shl i64 %.380.i, 2                      ; 4 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !82 ; 3 uses
  %i.cu = fcmp olt float %i.ct, 4.045000e-02
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.preheader.i
  %i.cv = fdiv float %i.ct, 1.292000e+01
  br label %bb.t

bb.s:                                             ; preds = %.preheader.i
  %i.cw = fadd float %i.ct, 5.500000e-02
  %i.cx = fdiv float %i.cw, 1.055000e+00
  %i.cy = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.cx, float noundef 2.400000e+00)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cz = phi float [ %i.cv, %bb.r ], [ %i.cy, %bb.s ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cr
  store float %i.cz, ptr %i.da, align 4, !tbaa !82
  %i.db = or disjoint i64 %i.cr, 1                ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !82 ; 3 uses
  %i.de = fcmp olt float %i.dd, 4.045000e-02
  br i1 %i.de, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = fadd float %i.dd, 5.500000e-02
  %i.dg = fdiv float %i.df, 1.055000e+00
  %i.dh = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.dg, float noundef 2.400000e+00)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.di = fdiv float %i.dd, 1.292000e+01
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dj = phi float [ %i.di, %bb.v ], [ %i.dh, %bb.u ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.db
  store float %i.dj, ptr %i.dk, align 4, !tbaa !82
  %i.dl = or disjoint i64 %i.cr, 2                ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !82 ; 3 uses
  %i.do = fcmp olt float %i.dn, 4.045000e-02
  br i1 %i.do, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = fadd float %i.dn, 5.500000e-02
  %i.dq = fdiv float %i.dp, 1.055000e+00
  %i.dr = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.dq, float noundef 2.400000e+00)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ds = fdiv float %i.dn, 1.292000e+01
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dt = phi float [ %i.ds, %bb.y ], [ %i.dr, %bb.x ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dl
  store float %i.dt, ptr %i.du, align 4, !tbaa !82
  %i.dv = add nuw i64 %.380.i, 1                  ; 2 uses
  %exitcond91.not.i = icmp eq i64 %i.dv, %mul.i68.i
  br i1 %exitcond91.not.i, label %_ZN7lodepngL18convertToXYZ_gammaEPfPKfjjPK11LodePNGInfojPKNS_10LodePNGICCE.exit, label %.preheader.i, !llvm.loop !116

_ZN7lodepngL18convertToXYZ_gammaEPfPKfjjPK11LodePNGInfojPKNS_10LodePNGICCE.exit: ; preds = %.preheader71.i, %bb.p, %bb.z, %bb.q, %bb.j, %bb.i, %.preheader72.i
  %i.dw = call fastcc noundef i32 @_ZN7lodepngL17convertToXYZ_chrmEPfjjPK11LodePNGInfojPKNS_10LodePNGICCES0_(ptr noundef %0, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.c, i32 noundef %.0, ptr noundef %6, ptr noundef %1)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN7lodepngL18convertToXYZ_gammaEPfPKfjjPK11LodePNGInfojPKNS_10LodePNGICCE.exit, %bb.b
  %.018 = phi i32 [ 1, %bb.b ], [ %i.dw, %_ZN7lodepngL18convertToXYZ_gammaEPfPKfjjPK11LodePNGInfojPKNS_10LodePNGICCE.exit ]
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.dx) #28
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.dy) #28
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.dz) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret i32 %.018
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7lodepng14convertFromXYZEPhPKfjjPK12LodePNGStateS2_j(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %"struct.lodepng::LodePNGICC", align 8 ; 13 uses
  %8 = alloca %struct.LodePNGColorMode, align 8   ; 4 uses
  %9 = alloca %struct.LodePNGColorMode, align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 172
  %i.d = load i32, ptr %i.c, align 4, !tbaa !73
  %i.e = icmp ugt i32 %i.d, 8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 248 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 460
  %i.j = load i32, ptr %i.i, align 4, !tbaa !74
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 472
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 480
  %i.n = load i32, ptr %i.m, align 8, !tbaa !76
  %i.o = zext i32 %i.n to i64
  %i.p = call fastcc noundef i32 @_ZN7lodepngL8parseICCEPNS_10LodePNGICCEPKhm(ptr noundef %7, ptr noundef %i.l, i64 noundef %i.o)
  %.not107 = icmp eq i32 %i.p, 0
  br i1 %.not107, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %7, align 8, !tbaa !77     ; 2 uses
  switch i32 %i.q, label %bb.e [
    i32 0, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.s = load i32, ptr %i.r, align 4, !tbaa !79
  %.not.i = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.u = load i32, ptr %i.t, align 4
  %.not6.i = icmp eq i32 %i.u, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %.not6.i
  br i1 %or.cond, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.old = getelementptr inbounds nuw i8, ptr %7, i64 68
  %.old134 = load i32, ptr %.old, align 4, !tbaa !80
  %.not6.i.old = icmp eq i32 %.old134, 0
  br i1 %.not6.i.old, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 124
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81
  %.not7.i = icmp ne i32 %i.w, 0
  %..i = zext i1 %.not7.i to i32
  br label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit

_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.089 = phi i32 [ 0, %bb.a ], [ %i.q, %bb.c ], [ 0, %bb.e ], [ %..i, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.x = zext i32 %2 to i64
  %i.y = zext i32 %3 to i64
  %mul.i133 = mul nuw i64 %i.y, %i.x              ; 12 uses
  %mul.ov.i124 = icmp ult i64 %mul.i133, 1152921504606846976
  br i1 %mul.ov.i124, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit
  %mul.val.i123 = shl nuw i64 %mul.i133, 4
  %i.z = select i1 %i.e, i64 3, i64 2
  %mul.i125 = shl nuw nsw i64 %mul.i133, %i.z
  %i.aa = tail call noalias noundef ptr @malloc(i64 noundef %mul.val.i123) #32 ; 28 uses
  %i.ab = call fastcc noundef i32 @_ZN7lodepngL19convertFromXYZ_chrmEPfPKfjjPK11LodePNGInfojPKNS_10LodePNGICCES2_j(ptr noundef %i.aa, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.b, i32 noundef %.089, ptr noundef %7, ptr noundef %5, i32 noundef %6)
  %.not114 = icmp eq i32 %i.ab, 0
  br i1 %.not114, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ac = call fastcc noundef i32 @_ZN7lodepngL20convertFromXYZ_gammaEPfjjPK11LodePNGInfojPKNS_10LodePNGICCE(ptr noundef %i.aa, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.b, i32 noundef %.089, ptr noundef %7) ; 2 uses
  %.not115 = icmp eq i32 %i.ac, 0
  br i1 %.not115, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call noalias noundef ptr @malloc(i64 noundef %mul.i125) #32 ; 8 uses
  %.not146 = icmp eq i64 %mul.i133, 0             ; 2 uses
  br i1 %i.e, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_Z23lodepng_color_mode_make16LodePNGColorTypej(ptr dead_on_unwind nonnull writable sret(%struct.LodePNGColorMode) align 8 %8, i32 noundef 6, i32 noundef 16)
  br i1 %.not146, label %._crit_edge144, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %min.iters.check150 = icmp ult i64 %mul.i133, 4
  br i1 %min.iters.check150, label %.preheader.preheader160, label %vector.ph151

vector.ph151:                                     ; preds = %.preheader.preheader
  %n.vec152 = and i64 %mul.i133, 1152921504606846972 ; 3 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next156, %vector.body153 ] ; 6 uses
  %i.ae = shl nuw nsw i64 %index154, 3
  %i.af = shl nuw i64 %index154, 4
  %i.ag = shl i64 %index154, 4
  %i.ah = shl i64 %index154, 4
  %i.ai = shl i64 %index154, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ag ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ah ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ai ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ar = load float, ptr %i.aj, align 4, !tbaa !82
  %i.as = load float, ptr %i.al, align 4, !tbaa !82
  %i.at = load float, ptr %i.an, align 4, !tbaa !82
  %i.au = load float, ptr %i.ap, align 4, !tbaa !82
  %i.av = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 1
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 2
  %i.ay = insertelement <4 x float> %i.ax, float %i.au, i64 3 ; 3 uses
  %i.az = fcmp olt <4 x float> %i.ay, zeroinitializer
  %i.ba = fcmp uge <4 x float> %i.ay, splat (float 1.000000e+00)
  %i.bb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> splat (float 6.553500e+04), <4 x float> splat (float 5.000000e-01))
  %i.bc = fptosi <4 x float> %i.bb to <4 x i32>
  %i.bd = select <4 x i1> %i.az, <4 x i32> zeroinitializer, <4 x i32> %i.bc
  %i.be = select <4 x i1> %i.ba, <4 x i32> splat (i32 65535), <4 x i32> %i.bd ; 2 uses
  %i.bf = lshr <4 x i32> %i.be, splat (i32 8)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  %i.bk = load float, ptr %i.bg, align 4, !tbaa !82
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !82
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !82
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !82
  %i.bo = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 2
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 3 ; 3 uses
  %i.bs = fcmp olt <4 x float> %i.br, zeroinitializer
  %i.bt = fcmp uge <4 x float> %i.br, splat (float 1.000000e+00)
  %i.bu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> splat (float 6.553500e+04), <4 x float> splat (float 5.000000e-01))
  %i.bv = fptosi <4 x float> %i.bu to <4 x i32>
  %i.bw = select <4 x i1> %i.bs, <4 x i32> zeroinitializer, <4 x i32> %i.bv
  %i.bx = select <4 x i1> %i.bt, <4 x i32> splat (i32 65535), <4 x i32> %i.bw ; 2 uses
  %i.by = lshr <4 x i32> %i.bx, splat (i32 8)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.cd = load float, ptr %i.bz, align 4, !tbaa !82
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !82
  %i.cf = load float, ptr %i.cb, align 4, !tbaa !82
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !82
  %i.ch = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 2
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 3 ; 3 uses
  %i.cl = fcmp olt <4 x float> %i.ck, zeroinitializer
  %i.cm = fcmp uge <4 x float> %i.ck, splat (float 1.000000e+00)
  %i.cn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> splat (float 6.553500e+04), <4 x float> splat (float 5.000000e-01))
  %i.co = fptosi <4 x float> %i.cn to <4 x i32>
  %i.cp = select <4 x i1> %i.cl, <4 x i32> zeroinitializer, <4 x i32> %i.co
  %i.cq = select <4 x i1> %i.cm, <4 x i32> splat (i32 65535), <4 x i32> %i.cp ; 2 uses
  %i.cr = lshr <4 x i32> %i.cq, splat (i32 8)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 60
  %i.cw = load float, ptr %i.cs, align 4, !tbaa !82
  %i.cx = load float, ptr %i.ct, align 4, !tbaa !82
  %i.cy = load float, ptr %i.cu, align 4, !tbaa !82
  %i.cz = load float, ptr %i.cv, align 4, !tbaa !82
  %i.da = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.db = insertelement <4 x float> %i.da, float %i.cx, i64 1
  %i.dc = insertelement <4 x float> %i.db, float %i.cy, i64 2
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 3 ; 3 uses
  %i.de = fcmp olt <4 x float> %i.dd, zeroinitializer
  %i.df = fcmp uge <4 x float> %i.dd, splat (float 1.000000e+00)
  %i.dg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> splat (float 6.553500e+04), <4 x float> splat (float 5.000000e-01))
  %i.dh = fptosi <4 x float> %i.dg to <4 x i32>
  %i.di = select <4 x i1> %i.de, <4 x i32> zeroinitializer, <4 x i32> %i.dh
  %i.dj = select <4 x i1> %i.df, <4 x i32> splat (i32 65535), <4 x i32> %i.di ; 2 uses
  %i.dk = lshr <4 x i32> %i.dj, splat (i32 8)
  %i.dl = shufflevector <4 x i32> %i.bf, <4 x i32> %i.be, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dm = shufflevector <4 x i32> %i.by, <4 x i32> %i.bx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dn = shufflevector <4 x i32> %i.cr, <4 x i32> %i.cq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.do = shufflevector <4 x i32> %i.dk, <4 x i32> %i.dj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dp = shufflevector <8 x i32> %i.dl, <8 x i32> %i.dm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dq = trunc <16 x i32> %i.dp to <16 x i8>
  %i.dr = shufflevector <8 x i32> %i.dn, <8 x i32> %i.do, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ds = trunc <16 x i32> %i.dr to <16 x i8>
  %interleaved.vec155 = shufflevector <16 x i8> %i.dq, <16 x i8> %i.ds, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i8> %interleaved.vec155, ptr %i.aq, align 1, !tbaa !20
  %index.next156 = add nuw i64 %index154, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next156, %n.vec152
  br i1 %i.dt, label %middle.block157, label %vector.body153, !llvm.loop !117

middle.block157:                                  ; preds = %vector.body153
  %cmp.n158 = icmp eq i64 %mul.i133, %n.vec152
  br i1 %cmp.n158, label %._crit_edge144, label %.preheader.preheader160

.preheader.preheader160:                          ; preds = %.preheader.preheader, %middle.block157
  %.094143.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec152, %middle.block157 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader160, %.preheader
  %.094143 = phi i64 [ %i.eh, %.preheader ], [ %.094143.ph, %.preheader.preheader160 ] ; 3 uses
  %i.du = shl nuw nsw i64 %.094143, 3
  %.idx = shl nuw i64 %.094143, 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.du
  %i.dx = load <4 x float>, ptr %i.dv, align 4, !tbaa !82 ; 3 uses
  %i.dy = fcmp olt <4 x float> %i.dx, zeroinitializer
  %i.dz = fcmp uge <4 x float> %i.dx, splat (float 1.000000e+00)
  %i.ea = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> splat (float 6.553500e+04), <4 x float> splat (float 5.000000e-01))
  %i.eb = fptosi <4 x float> %i.ea to <4 x i32>
  %i.ec = select <4 x i1> %i.dy, <4 x i32> zeroinitializer, <4 x i32> %i.eb
  %i.ed = select <4 x i1> %i.dz, <4 x i32> splat (i32 65535), <4 x i32> %i.ec
  %i.ee = shufflevector <4 x i32> %i.ed, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.ef = lshr <8 x i32> %i.ee, <i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0>
  %i.eg = trunc <8 x i32> %i.ef to <8 x i8>
  store <8 x i8> %i.eg, ptr %i.dw, align 1, !tbaa !20
  %i.eh = add nuw i64 %.094143, 1                 ; 2 uses
  %exitcond148.not = icmp eq i64 %i.eh, %mul.i133
  br i1 %exitcond148.not, label %._crit_edge144, label %.preheader, !llvm.loop !118

._crit_edge144:                                   ; preds = %.preheader, %middle.block157, %bb.j
  %i.ei = call noundef i32 @_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj(ptr noundef %0, ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %8, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_Z23lodepng_color_mode_make16LodePNGColorTypej(ptr dead_on_unwind nonnull writable sret(%struct.LodePNGColorMode) align 8 %9, i32 noundef 6, i32 noundef 8)
  br i1 %.not146, label %._crit_edge, label %.preheader139.preheader

.preheader139.preheader:                          ; preds = %bb.k
  %min.iters.check = icmp ult i64 %mul.i133, 4
  br i1 %min.iters.check, label %.preheader139.preheader161, label %vector.ph

vector.ph:                                        ; preds = %.preheader139.preheader
  %n.vec = and i64 %mul.i133, 1152921504606846972 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ej = shl nuw nsw i64 %index, 2               ; 5 uses
  %i.ek = shl i64 %index, 2                       ; 4 uses
  %i.el = shl i64 %index, 2                       ; 4 uses
  %i.em = shl i64 %index, 2                       ; 4 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ej
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ek
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.el
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.em
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load float, ptr %i.en, align 4, !tbaa !82
  %i.ev = load float, ptr %i.ep, align 4, !tbaa !82
  %i.ew = load float, ptr %i.er, align 4, !tbaa !82
  %i.ex = load float, ptr %i.et, align 4, !tbaa !82
  %i.ey = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.ez = insertelement <4 x float> %i.ey, float %i.ev, i64 1
  %i.fa = insertelement <4 x float> %i.ez, float %i.ew, i64 2
  %i.fb = insertelement <4 x float> %i.fa, float %i.ex, i64 3 ; 3 uses
  %i.fc = fcmp olt <4 x float> %i.fb, zeroinitializer
  %i.fd = fcmp uge <4 x float> %i.fb, splat (float 1.000000e+00) ; 2 uses
  %i.fe = or <4 x i1> %i.fd, %i.fc
  %i.ff = sext <4 x i1> %i.fd to <4 x i8>
  %i.fg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.fh = fptoui <4 x float> %i.fg to <4 x i8>
  %i.fi = select <4 x i1> %i.fe, <4 x i8> %i.ff, <4 x i8> %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ej
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ej
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ek
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.el
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 36
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.em
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 52
  %i.fs = load float, ptr %i.fl, align 4, !tbaa !82
  %i.ft = load float, ptr %i.fn, align 4, !tbaa !82
  %i.fu = load float, ptr %i.fp, align 4, !tbaa !82
  %i.fv = load float, ptr %i.fr, align 4, !tbaa !82
  %i.fw = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.fx = insertelement <4 x float> %i.fw, float %i.ft, i64 1
  %i.fy = insertelement <4 x float> %i.fx, float %i.fu, i64 2
  %i.fz = insertelement <4 x float> %i.fy, float %i.fv, i64 3 ; 3 uses
  %i.ga = fcmp olt <4 x float> %i.fz, zeroinitializer
  %i.gb = fcmp uge <4 x float> %i.fz, splat (float 1.000000e+00) ; 2 uses
  %i.gc = or <4 x i1> %i.gb, %i.ga
  %i.gd = sext <4 x i1> %i.gb to <4 x i8>
  %i.ge = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.gf = fptoui <4 x float> %i.ge to <4 x i8>
  %i.gg = select <4 x i1> %i.gc, <4 x i8> %i.gd, <4 x i8> %i.gf
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ej
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ek
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.el
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.em
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  %i.gp = load float, ptr %i.gi, align 4, !tbaa !82
  %i.gq = load float, ptr %i.gk, align 4, !tbaa !82
  %i.gr = load float, ptr %i.gm, align 4, !tbaa !82
  %i.gs = load float, ptr %i.go, align 4, !tbaa !82
  %i.gt = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gu = insertelement <4 x float> %i.gt, float %i.gq, i64 1
  %i.gv = insertelement <4 x float> %i.gu, float %i.gr, i64 2
  %i.gw = insertelement <4 x float> %i.gv, float %i.gs, i64 3 ; 3 uses
  %i.gx = fcmp olt <4 x float> %i.gw, zeroinitializer
  %i.gy = fcmp uge <4 x float> %i.gw, splat (float 1.000000e+00) ; 2 uses
  %i.gz = or <4 x i1> %i.gy, %i.gx
  %i.ha = sext <4 x i1> %i.gy to <4 x i8>
  %i.hb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gw, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.hc = fptoui <4 x float> %i.hb to <4 x i8>
  %i.hd = select <4 x i1> %i.gz, <4 x i8> %i.ha, <4 x i8> %i.hc
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ej
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ek
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 28
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.el
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 44
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.em
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 60
  %i.hm = load float, ptr %i.hf, align 4, !tbaa !82
  %i.hn = load float, ptr %i.hh, align 4, !tbaa !82
  %i.ho = load float, ptr %i.hj, align 4, !tbaa !82
  %i.hp = load float, ptr %i.hl, align 4, !tbaa !82
  %i.hq = insertelement <4 x float> poison, float %i.hm, i64 0
  %i.hr = insertelement <4 x float> %i.hq, float %i.hn, i64 1
  %i.hs = insertelement <4 x float> %i.hr, float %i.ho, i64 2
  %i.ht = insertelement <4 x float> %i.hs, float %i.hp, i64 3 ; 3 uses
  %i.hu = fcmp olt <4 x float> %i.ht, zeroinitializer
  %i.hv = fcmp uge <4 x float> %i.ht, splat (float 1.000000e+00) ; 2 uses
  %i.hw = or <4 x i1> %i.hv, %i.hu
  %i.hx = sext <4 x i1> %i.hv to <4 x i8>
  %i.hy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ht, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.hz = fptoui <4 x float> %i.hy to <4 x i8>
  %i.ia = select <4 x i1> %i.hw, <4 x i8> %i.hx, <4 x i8> %i.hz
  %i.ib = shufflevector <4 x i8> %i.fi, <4 x i8> %i.gg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ic = shufflevector <4 x i8> %i.hd, <4 x i8> %i.ia, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i8> %i.ib, <8 x i8> %i.ic, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.fj, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %mul.i133, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.preheader139.preheader161

.preheader139.preheader161:                       ; preds = %.preheader139.preheader, %middle.block
  %.195141.ph = phi i64 [ 0, %.preheader139.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader139

.preheader139:                                    ; preds = %.preheader139.preheader161, %.preheader139
  %.195141 = phi i64 [ %i.ip, %.preheader139 ], [ %.195141.ph, %.preheader139.preheader161 ] ; 2 uses
  %i.ie = shl nuw nsw i64 %.195141, 2             ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ie
  %i.ih = load <4 x float>, ptr %i.if, align 4, !tbaa !82 ; 3 uses
  %i.ii = fcmp olt <4 x float> %i.ih, zeroinitializer
  %i.ij = fcmp uge <4 x float> %i.ih, splat (float 1.000000e+00) ; 2 uses
  %i.ik = or <4 x i1> %i.ij, %i.ii
  %i.il = sext <4 x i1> %i.ij to <4 x i8>
  %i.im = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ih, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.in = fptoui <4 x float> %i.im to <4 x i8>
  %i.io = select <4 x i1> %i.ik, <4 x i8> %i.il, <4 x i8> %i.in
  store <4 x i8> %i.io, ptr %i.ig, align 1, !tbaa !20
  %i.ip = add nuw i64 %.195141, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ip, %mul.i133
  br i1 %exitcond.not, label %._crit_edge, label %.preheader139, !llvm.loop !120

._crit_edge:                                      ; preds = %.preheader139, %middle.block, %bb.k
  %i.iq = call noundef i32 @_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj(ptr noundef %0, ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %9, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %._crit_edge144, %bb.h, %bb.g, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, %bb.b
  %.4 = phi i32 [ 1, %bb.b ], [ %i.ei, %._crit_edge144 ], [ 92, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.iq, %._crit_edge ], [ 1, %bb.g ], [ %i.ac, %bb.h ]
  %.091 = phi ptr [ null, %bb.b ], [ %i.aa, %._crit_edge144 ], [ null, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.aa, %._crit_edge ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ]
  %.090 = phi ptr [ null, %bb.b ], [ %i.ad, %._crit_edge144 ], [ null, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.ad, %._crit_edge ], [ null, %bb.g ], [ null, %bb.h ]
  %i.ir = load ptr, ptr %i.f, align 8, !tbaa !69
  call void @free(ptr noundef %i.ir) #28
  %i.is = load ptr, ptr %i.g, align 8, !tbaa !69
  call void @free(ptr noundef %i.is) #28
  %i.it = load ptr, ptr %i.h, align 8, !tbaa !69
  call void @free(ptr noundef %i.it) #28
  call void @free(ptr noundef %.091) #28
  call void @free(ptr noundef %.090) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL19convertFromXYZ_chrmEPfPKfjjPK11LodePNGInfojPKNS_10LodePNGICCES2_j(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 2) %5, ptr nofree noundef nonnull readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = alloca [9 x float], align 16             ; 15 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = zext i32 %3 to i64                       ; 2 uses
  %mul.i46 = mul nuw i64 %i.f, %i.e               ; 6 uses
  %i.g = call fastcc noundef i32 @_ZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfo(ptr noundef %i.c, ptr noundef nonnull %i.d, i32 noundef %5, ptr noundef %6, ptr noundef %4)
  %.not42 = icmp eq i32 %i.g, 0
  br i1 %.not42, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.c)
  %.not43 = icmp eq i32 %i.h, 0
  br i1 %.not43, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ne i32 %8, 3                        ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load float, ptr %i.l, align 8, !tbaa !82
  %i.n = load <2 x float>, ptr %7, align 4, !tbaa !82 ; 2 uses
  %i.o = load <2 x float>, ptr %i.d, align 8, !tbaa !82 ; 2 uses
  %i.p = shufflevector <2 x float> %i.o, <2 x float> %i.n, <2 x i32> <i32 1, i32 3>
  %i.q = fpext <2 x float> %i.p to <2 x double>   ; 3 uses
  %i.r = shufflevector <2 x float> %i.o, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.s = fpext <2 x float> %i.r to <2 x double>   ; 3 uses
  %i.t = insertelement <2 x float> poison, float %i.m, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.k, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 3 uses
  %i.w = fmul <2 x double> %i.q, splat (double f0x3FD10CB2A0000000)
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> splat (double f0x3FECA4A8C0000000), <2 x double> %i.w)
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double f0xBFC4A8C160000000), <2 x double> %i.x)
  %i.z = fptrunc <2 x double> %i.y to <2 x float> ; 2 uses
  %i.aa = fmul <2 x double> %i.q, splat (double f0x3FFB6A7F00000000)
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> splat (double f0xBFE801A360000000), <2 x double> %i.aa)
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double f0x3FA2CA57A0000000), <2 x double> %i.ab) ; 2 uses
  %i.ad = fmul <2 x double> %i.q, splat (double f0xBFB1893740000000)
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> splat (double f0x3FA3EAB360000000), <2 x double> %i.ad)
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double f0x3FF0793DE0000000), <2 x double> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x float> %i.z, i64 0
  %i.ah = extractelement <2 x float> %i.z, i64 1
  %i.ai = fdiv float %i.ag, %i.ah
  %i.aj = shufflevector <2 x double> %i.ac, <2 x double> %i.af, <2 x i32> <i32 0, i32 2>
  %i.ak = fptrunc <2 x double> %i.aj to <2 x float>
  %i.al = shufflevector <2 x double> %i.ac, <2 x double> %i.af, <2 x i32> <i32 1, i32 3>
  %i.am = fptrunc <2 x double> %i.al to <2 x float>
  %i.an = fdiv <2 x float> %i.ak, %i.am           ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !82
  %i.ar = fpext float %i.aq to double             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.at = load float, ptr %i.as, align 4, !tbaa !82
  %i.au = fpext float %i.at to double             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.aw = load float, ptr %i.av, align 16, !tbaa !82
  %i.ax = fpext float %i.aw to double             ; 2 uses
  %i.ay = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ba = fmul <4 x float> %i.az, <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0x3F652546>
  %i.bb = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bc = fmul <4 x float> %i.bb, <float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float f0xBF400D1B>
  %i.bd = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.be = fmul <4 x float> %i.bd, <float 3.890000e-02, float -6.850000e-02, float 1.029600e+00, float 3.890000e-02>
  %i.bf = fpext <4 x float> %i.ba to <4 x double> ; 2 uses
  %i.bg = fpext <4 x float> %i.bc to <4 x double> ; 2 uses
  %i.bh = fpext <4 x float> %i.be to <4 x double> ; 2 uses
  %i.bi = shufflevector <4 x double> %i.bg, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bj = fmul <4 x double> %i.bi, splat (double f0xBFC2D2ACE0000000)
  %i.bk = shufflevector <4 x double> %i.bf, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bk, <4 x double> splat (double f0x3FEF957220000000), <4 x double> %i.bj)
  %i.bm = shufflevector <4 x double> %i.bh, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bm, <4 x double> splat (double f0x3FC479A860000000), <4 x double> %i.bl)
  %i.bo = fptrunc <4 x double> %i.bn to <4 x float>
  %i.bp = fmul <4 x double> %i.bi, splat (double f0x3FE0966860000000)
  %i.bq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bk, <4 x double> splat (double f0x3FDBAAE3E0000000), <4 x double> %i.bp)
  %i.br = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bm, <4 x double> splat (double f0x3FA93CB240000000), <4 x double> %i.bq)
  %i.bs = fptrunc <4 x double> %i.br to <4 x float>
  %i.bt = fmul <4 x double> %i.bg, splat (double f0x3FA4807D60000000)
  %i.bu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bf, <4 x double> splat (double f0xBF81777EC0000000), <4 x double> %i.bt)
  %i.bv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bh, <4 x double> splat (double f0x3FEEFDD7E0000000), <4 x double> %i.bu)
  %i.bw = fptrunc <4 x double> %i.bv to <4 x float>
  %i.bx = load <4 x float>, ptr %i.c, align 16, !tbaa !82 ; 3 uses
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bz = fpext <2 x float> %i.by to <2 x double> ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cb = load <2 x float>, ptr %i.ao, align 16, !tbaa !82 ; 2 uses
  %i.cc = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.bx, <4 x float> %i.cd, <2 x i32> <i32 1, i32 4>
  %i.cf = fpext <2 x float> %i.ce to <2 x double> ; 2 uses
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> %i.cb, <2 x i32> <i32 0, i32 3>
  %i.ci = fpext <2 x float> %i.ch to <2 x double> ; 2 uses
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ck = fpext <4 x float> %i.bs to <4 x double> ; 3 uses
  %i.cl = fpext <4 x float> %i.bo to <4 x double> ; 3 uses
  %i.cm = fpext <4 x float> %i.bw to <4 x double> ; 3 uses
  %i.cn = fmul <4 x double> %i.cg, %i.ck
  %i.co = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cl, <4 x double> %i.ca, <4 x double> %i.cn)
  %i.cp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cm, <4 x double> %i.cj, <4 x double> %i.co)
  %i.cq = fptrunc <4 x double> %i.cp to <4 x float>
  %i.cr = extractelement <4 x double> %i.ck, i64 2
  %i.cs = extractelement <4 x double> %i.cl, i64 2
  %i.ct = extractelement <4 x double> %i.cm, i64 2
  %i.cu = fmul double %i.cr, %i.au
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.ar, double %i.cu)
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ax, double %i.cv)
  %i.cx = fptrunc double %i.cw to float
  store <4 x float> %i.cq, ptr %i.c, align 16, !tbaa !82
  %i.cy = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cz = insertelement <2 x double> %i.cy, double %i.au, i64 1
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.db = shufflevector <4 x double> %i.ck, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.dc = fmul <4 x double> %i.da, %i.db
  %i.dd = shufflevector <4 x double> %i.cl, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.de = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.df = insertelement <2 x double> %i.de, double %i.ar, i64 1
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dd, <4 x double> %i.dg, <4 x double> %i.dc)
  %i.di = shufflevector <4 x double> %i.cm, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.dj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = insertelement <2 x double> %i.dj, double %i.ax, i64 1
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.di, <4 x double> %i.dl, <4 x double> %i.dh)
  %i.dn = fptrunc <4 x double> %i.dm to <4 x float>
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.do, ptr %i.ao, align 16, !tbaa !82
  store float %i.cx, ptr %i.av, align 16, !tbaa !82
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not44 = icmp eq i32 %5, 0
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dp = load i32, ptr %6, align 8, !tbaa !77
  %i.dq = icmp eq i32 %i.dp, 2
  %or.cond = or i1 %i.i, %i.dq
  br i1 %or.cond, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.dr = shl i64 %mul.i46, 2                     ; 5 uses
  %.not = icmp eq i64 %i.dr, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.dr, 8
  %i.ds = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ds, -32
  %or.cond85 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond85, label %.lr.ph.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
end_hunk_0
