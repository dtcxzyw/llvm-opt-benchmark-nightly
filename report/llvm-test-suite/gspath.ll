Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gspath?download=true
inline.NumInlined: 1
begin_hunk_0_@arc_either:bb.a
  %i.dl = fsub float %.2120187, %.1111189
  %i.dm = fpext float %i.dl to double
  %i.dn = fadd float %.2115188, %.1108190
  %i.do = fpext float %i.dn to double
  %i.dp = extractelement <2 x double> %i.dk, i64 0
  %i.dq = extractelement <2 x double> %i.dk, i64 1
  %i.dr = tail call i32 @arc_add(ptr noundef %0, double noundef %i.di, double noundef %i.dj, double noundef %i.dq, double noundef %i.dp, double noundef %i.dm, double noundef %i.do, i32 noundef 0) ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, -1
  br i1 %i.ds, label %bb.j, label %.thread

.loopexit:                                        ; preds = %bb.i, %bb.j, %bb.g, %bb.h, %.preheader158, %.preheader
  %.0123 = phi i64 [ %i.da, %bb.j ], [ %i.ag, %.preheader ], [ %i.ag, %.preheader158 ], [ %i.bz, %bb.h ], [ %i.bb, %bb.g ], [ %i.cc, %bb.i ] ; 2 uses
  %.4122 = phi float [ %i.cy, %bb.j ], [ %i.af, %.preheader ], [ %i.af, %.preheader158 ], [ %i.bm, %bb.h ], [ %i.ao, %bb.g ], [ %i.cf, %bb.i ]
  %.4117 = phi float [ %i.cx, %bb.j ], [ %i.ae, %.preheader ], [ %i.ae, %.preheader158 ], [ %i.bn, %bb.h ], [ %i.ap, %bb.g ], [ %i.ce, %bb.i ]
  %.2112 = phi float [ %.1108190, %bb.j ], [ %i.t, %.preheader ], [ %i.t, %.preheader158 ], [ %i.v, %bb.h ], [ %i.ai, %bb.g ], [ %i.cg, %bb.i ]
  %.2109 = phi float [ %i.dc, %bb.j ], [ %i.v, %.preheader ], [ %i.v, %.preheader158 ], [ %i.bg, %bb.h ], [ %i.t, %bb.g ], [ %.0110178, %bb.i ]
  %.4106 = phi i32 [ 0, %bb.j ], [ 1, %.preheader ], [ 1, %.preheader158 ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.i ]
  %i.dt = phi <2 x float> [ %i.dh, %bb.j ], [ %i.ad, %.preheader ], [ %i.ad, %.preheader158 ], [ %i.bl, %bb.h ], [ %i.an, %bb.g ], [ %i.cl, %bb.i ]
  %i.du = icmp eq i64 %.0123, 0
  br i1 %i.du, label %.thread, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.dv = sitofp i64 %.0123 to double
  %i.dw = fmul nnan double %i.dv, f0x3F30000000000000
  %i.dx = fptrunc nnan double %i.dw to float
  %i.dy = fpext nnan float %i.dx to double
  %i.dz = fmul nnan double %i.dy, f0x3F81DF46A2529D39
  %i.ea = tail call double @tan(double noundef %i.dz) #5, !tbaa !7
  %i.eb = fptrunc double %i.ea to float           ; 2 uses
  %i.ec = sitofp i64 %.0124 to double
  %i.ed = fmul nnan double %i.ec, f0x3F30000000000000
  %i.ee = fptrunc nnan double %i.ed to float
  %i.ef = fpext nnan float %i.ee to double
  %i.eg = fmul nnan double %i.ef, f0x3F91DF46A2529D39
  %i.eh = fptrunc double %i.eg to float
  %i.ei = fpext float %.4122 to double
  %i.ej = fpext float %.4117 to double
  %i.ek = fpext float %i.eh to double             ; 2 uses
  %i.el = tail call double @cos(double noundef %i.ek) #5, !tbaa !7
  %i.em = tail call double @llvm.fmuladd.f64(double %3, double %i.el, double %1)
  %i.en = tail call double @sin(double noundef %i.ek) #5, !tbaa !7
  %i.eo = tail call double @llvm.fmuladd.f64(double %3, double %i.en, double %2)
  %i.ep = fneg float %i.eb
  %i.eq = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %i.ep, i64 1
  %i.es = insertelement <2 x float> poison, float %.2109, i64 0
  %i.et = insertelement <2 x float> %i.es, float %.2112, i64 1
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.et, <2 x float> %i.dt)
  %i.ev = fpext <2 x float> %i.eu to <2 x double> ; 2 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 0
  %i.ex = extractelement <2 x double> %i.ev, i64 1
  %i.ey = tail call i32 @arc_add(ptr noundef %0, double noundef %i.ei, double noundef %i.ej, double noundef %i.em, double noundef %i.eo, double noundef %i.ex, double noundef %i.ew, i32 noundef %.4106)
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.lr.ph193, %.lr.ph.preheader, %.lr.ph193.preheader, %.loopexit, %bb.a, %bb.k
  %.4 = phi i32 [ %i.dr, %.lr.ph193 ], [ 0, %.loopexit ], [ -15, %bb.a ], [ %i.ey, %bb.k ], [ %i.bw, %.lr.ph193.preheader ], [ %i.ay, %.lr.ph.preheader ], [ %i.cv, %.lr.ph ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_arcn(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @arc_either(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @arc_add(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.gs_fixed_point_s, align 8   ; 7 uses
  %9 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  %10 = alloca %struct.gs_fixed_point_s, align 8  ; 5 uses
  %11 = alloca %struct.gs_fixed_point_s, align 8  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = call i32 @gs_point_transform2fixed(ptr noundef nonnull %i.c, double noundef %1, double noundef %2, ptr noundef nonnull %8) #5 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @gs_point_transform2fixed(ptr noundef nonnull %i.c, double noundef %3, double noundef %4, ptr noundef nonnull %9) #5 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @gs_point_transform2fixed(ptr noundef nonnull %i.c, double noundef %5, double noundef %6, ptr noundef nonnull %10) #5 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call i32 @gx_path_current_point(ptr noundef %i.b, ptr noundef nonnull %11) #5
  %i.k = icmp sgt i32 %i.j, -1
  %i.l = load i64, ptr %8, align 8, !tbaa !27     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 @gx_path_add_line(ptr noundef %i.b, i64 noundef %i.l, i64 noundef %i.n) #5
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = call i32 @gx_path_add_point(ptr noundef %i.b, i64 noundef %i.l, i64 noundef %i.n) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = phi i32 [ %i.o, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.s = load i64, ptr %8, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !28
  %i.v = load i64, ptr %9, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !28
  %i.y = load i64, ptr %10, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28
  %i.ab = call i32 @gx_path_add_arc(ptr noundef %i.b, i64 noundef %i.s, i64 noundef %i.u, i64 noundef %i.v, i64 noundef %i.x, i64 noundef %i.y, i64 noundef %i.aa) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.h, %bb.i
  %.016 = phi i32 [ %i.ab, %bb.i ], [ %i.d, %bb.a ], [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.q, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  ret i32 %.016
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_arcto(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.gs_fixed_point_s, align 16  ; 5 uses
  %8 = alloca %struct.gs_point_s, align 8         ; 4 uses
  %9 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.a = fcmp olt double %5, 0.000000e+00
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = call i32 @gx_path_current_point(ptr noundef %i.c, ptr noundef nonnull %7) #5 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %gs_currentpoint.exit.thread, label %gs_currentpoint.exit

gs_currentpoint.exit.thread:                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.j

gs_currentpoint.exit:                             ; preds = %bb.b
  %i.f = load <2 x i64>, ptr %7, align 16, !tbaa !25
  %i.g = sitofp <2 x i64> %i.f to <2 x double>
  %i.h = fmul nnan <2 x double> %i.g, splat (double f0x3F30000000000000)
  %i.i = fptrunc <2 x double> %i.h to <2 x float>
  %i.j = fpext <2 x float> %i.i to <2 x double>   ; 2 uses
  %i.k = extractelement <2 x double> %i.j, i64 0
  %i.l = extractelement <2 x double> %i.j, i64 1
  %i.m = call i32 (ptr, double, double, ptr, ...) @gs_itransform(ptr noundef nonnull %0, double noundef %i.k, double noundef %i.l, ptr noundef nonnull %8) #5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.c

bb.c:                                             ; preds = %gs_currentpoint.exit
  %i.o = load <2 x float>, ptr %8, align 8, !tbaa !33
  %i.p = fpext <2 x float> %i.o to <2 x double>
  %i.q = insertelement <4 x double> poison, double %3, i64 2
  %i.r = insertelement <4 x double> %i.q, double %4, i64 3
  %i.s = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.t = shufflevector <4 x double> %i.s, <4 x double> %i.r, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.u = insertelement <4 x double> poison, double %1, i64 0
  %i.v = insertelement <4 x double> %i.u, double %2, i64 1 ; 2 uses
  %i.w = shufflevector <4 x double> %i.v, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.x = fsub <4 x double> %i.t, %i.w
  %i.y = fptrunc <4 x double> %i.x to <4 x float> ; 8 uses
  %10 = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.z = fmul <2 x float> %10, %10
  %11 = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.aa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %11, <2 x float> %i.z)
  %i.ab = fpext <2 x float> %i.aa to <2 x double> ; 2 uses
  %12 = extractelement <2 x double> %i.ab, i64 0  ; 2 uses
  %13 = extractelement <2 x double> %i.ab, i64 1  ; 2 uses
  %14 = fmul double %12, %13
  %i.ac = call double @sqrt(double noundef %14) #5, !tbaa !7
  %i.ad = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ae = fneg <4 x float> %i.y
  %i.af = shufflevector <4 x float> %i.y, <4 x float> %i.ae, <2 x i32> <i32 1, i32 4>
  %i.ag = fmul <2 x float> %i.ad, %i.af
  %i.ah = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ai = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ai, <2 x float> %i.ag) ; 2 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 1
  %i.al = fpext float %i.ak to double             ; 2 uses
  %i.am = extractelement <2 x float> %i.aj, i64 0
  %i.an = fpext float %i.am to double
  %i.ao = fsub double %i.ac, %i.an                ; 2 uses
  %i.ap = call double @llvm.fabs.f64(double %i.al)
  %i.aq = fcmp olt double %i.ap, f0x3EB0C6F7A0B5ED8D
  %i.ar = call double @llvm.fabs.f64(double %i.ao)
  %i.as = fcmp olt double %i.ar, f0x3EB0C6F7A0B5ED8D
  %or.cond = select i1 %i.aq, i1 true, i1 %i.as
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = call i32 @gs_point_transform2fixed(ptr noundef nonnull %i.at, double noundef %1, double noundef %2, ptr noundef nonnull %9) #5 ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.ax = load i64, ptr %9, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !28
  %i.ba = call i32 @gx_path_add_line(ptr noundef %i.aw, i64 noundef %i.ax, i64 noundef %i.az) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.074 = phi i32 [ %i.ba, %bb.e ], [ %i.au, %bb.d ]
  %i.bb = shufflevector <4 x double> %i.v, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.bc = fptrunc <2 x double> %i.bb to <2 x float>
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.be = fmul double %5, %i.al
  %i.bf = fdiv double %i.be, %i.ao
  %15 = call double @llvm.fabs.f64(double %i.bf)
  %i.bg = call double @sqrt(double noundef %13) #5, !tbaa !7
  %sqrt = call double @llvm.sqrt.f64(double %12)
  %i.bh = fpext <4 x float> %i.y to <4 x double>
  %i.bi = insertelement <2 x double> poison, double %15, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x double> poison, double %i.bg, i64 0
  %17 = insertelement <2 x double> %16, double %sqrt, i64 1
  %i.bk = fdiv <2 x double> %i.bj, %17
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bh, <4 x double> %i.bl, <4 x double> %i.w)
  %i.bn = fptrunc <4 x double> %i.bm to <4 x float> ; 2 uses
  %i.bo = fpext <4 x float> %i.bn to <4 x double> ; 4 uses
  %i.bp = extractelement <4 x double> %i.bo, i64 0
  %i.bq = extractelement <4 x double> %i.bo, i64 1
  %i.br = extractelement <4 x double> %i.bo, i64 2
  %i.bs = extractelement <4 x double> %i.bo, i64 3
  %i.bt = call i32 @arc_add(ptr noundef nonnull %0, double noundef %i.bp, double noundef %i.bq, double noundef %i.br, double noundef %i.bs, double noundef %1, double noundef %2, i32 noundef 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %.074, %bb.f ], [ %i.bt, %bb.g ] ; 2 uses
  %i.bu = phi <4 x float> [ %i.bd, %bb.f ], [ %i.bn, %bb.g ]
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <4 x float> %i.bu, ptr %6, align 4, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %gs_currentpoint.exit.thread, %bb.h, %bb.i, %gs_currentpoint.exit, %bb.a
  %.0 = phi i32 [ %i.m, %gs_currentpoint.exit ], [ -23, %bb.a ], [ %.1, %bb.i ], [ %.1, %bb.h ], [ %i.d, %gs_currentpoint.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare i32 @gx_path_add_arc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_curveto(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  %8 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  %9 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = call i32 @gs_point_transform2fixed(ptr noundef nonnull %i.a, double noundef %1, double noundef %2, ptr noundef nonnull %7) #5 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @gs_point_transform2fixed(ptr noundef nonnull %i.a, double noundef %3, double noundef %4, ptr noundef nonnull %8) #5 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @gs_point_transform2fixed(ptr noundef nonnull %i.a, double noundef %5, double noundef %6, ptr noundef nonnull %9) #5 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.j = load i64, ptr %7, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %i.m = load i64, ptr %8, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !28
  %i.p = load i64, ptr %9, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !28
  %i.s = call i32 @gx_path_add_curve(ptr noundef %i.i, i64 noundef %i.j, i64 noundef %i.l, i64 noundef %i.m, i64 noundef %i.o, i64 noundef %i.p, i64 noundef %i.r) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.011 = phi i32 [ %i.s, %bb.d ], [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret i32 %.011
}

declare i32 @gx_path_add_curve(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_rcurveto(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  %8 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  %9 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  %10 = alloca %struct.gs_fixed_point_s, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = call i32 @gx_path_current_point(ptr noundef %i.b, ptr noundef nonnull %7) #5 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %i.e, double noundef %1, double noundef %2, ptr noundef nonnull %8) #5 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %i.e, double noundef %3, double noundef %4, ptr noundef nonnull %9) #5 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %i.e, double noundef %5, double noundef %6, ptr noundef nonnull %10) #5 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.m = load i64, ptr %7, align 8, !tbaa !27     ; 3 uses
  %i.n = load i64, ptr %8, align 8, !tbaa !27
  %i.o = add nsw i64 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28
  %i.t = add nsw i64 %i.s, %i.q
  %i.u = load i64, ptr %9, align 8, !tbaa !27
  %i.v = add nsw i64 %i.u, %i.m
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !28
  %i.y = add nsw i64 %i.x, %i.q
  %i.z = load i64, ptr %10, align 8, !tbaa !27
  %i.aa = add nsw i64 %i.z, %i.m
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ad = add nsw i64 %i.ac, %i.q
  %i.ae = call i32 @gx_path_add_curve(ptr noundef %i.l, i64 noundef %i.o, i64 noundef %i.t, i64 noundef %i.v, i64 noundef %i.y, i64 noundef %i.aa, i64 noundef %i.ad) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a, %bb.e
  %.014 = phi i32 [ %i.ae, %bb.e ], [ %i.c, %bb.a ], [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret i32 %.014
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTS10gs_state_s", !8, i64 0}
!10 = !{!"", !8, i64 0, !8, i64 8}
!11 = !{!"float", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"gs_matrix_fixed_s", !11, i64 0, !12, i64 8, !11, i64 16, !12, i64 24, !11, i64 32, !12, i64 40, !11, i64 48, !12, i64 56, !11, i64 64, !12, i64 72, !11, i64 80, !12, i64 88, !12, i64 96, !12, i64 104}
!14 = !{!"gs_matrix_s", !11, i64 0, !12, i64 8, !11, i64 16, !12, i64 24, !11, i64 32, !12, i64 40, !11, i64 48, !12, i64 56, !11, i64 64, !12, i64 72, !11, i64 80, !12, i64 88}
!15 = !{!"p1 omnipotent char", !8, i64 0}
!16 = !{!"p1 _ZTS9gx_path_s", !8, i64 0}
!17 = !{!"p1 _ZTS13line_params_s", !8, i64 0}
!18 = !{!"p1 _ZTS10halftone_s", !8, i64 0}
!19 = !{!"p1 _ZTS10gs_color_s", !8, i64 0}
!20 = !{!"p1 _ZTS17gx_device_color_s", !8, i64 0}
!21 = !{!"p1 _ZTS9gs_font_s", !8, i64 0}
!22 = !{!"p1 _ZTS8device_s", !8, i64 0}
!23 = !{!"gs_state_s", !9, i64 0, !10, i64 8, !13, i64 24, !14, i64 136, !6, i64 232, !15, i64 240, !15, i64 248, !16, i64 256, !16, i64 264, !6, i64 272, !17, i64 280, !18, i64 288, !8, i64 296, !19, i64 304, !20, i64 312, !8, i64 320, !21, i64 328, !14, i64 336, !6, i64 432, !5, i64 436, !5, i64 437, !11, i64 440, !22, i64 448, !6, i64 456}
!24 = !{!23, !16, i64 256}
!25 = !{!12, !12, i64 0}
!26 = !{!"gs_fixed_point_s", !12, i64 0, !12, i64 8}
!27 = !{!26, !12, i64 0}
!28 = !{!26, !12, i64 8}
!29 = distinct !{!29, !31, !32}
!30 = distinct !{!30, !31, !32}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.peeled.count", i32 1}
!33 = !{!11, !11, i64 0}
end_hunk_0
