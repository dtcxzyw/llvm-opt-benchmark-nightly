inline.NumInlined: 1
begin_hunk_0_@arc_either:bb.a
  %i.dn = fadd float %.2117188, %.1110190
  %i.do = fpext float %i.dn to double
  %i.dp = tail call i32 @arc_add(ptr noundef %0, double noundef %i.dh, double noundef %i.di, double noundef %i.dj, double noundef %i.dk, double noundef %i.dm, double noundef %i.do, i32 noundef 0) ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  br i1 %i.dq, label %bb.j, label %.thread

.loopexit:                                        ; preds = %bb.i, %bb.j, %bb.g, %bb.h, %.preheader158, %.preheader
  %.4124 = phi float [ %i.df, %bb.j ], [ %i.af, %.preheader ], [ %i.af, %.preheader158 ], [ %i.bm, %bb.h ], [ %i.ao, %bb.g ], [ %i.cm, %bb.i ]
  %.4119 = phi float [ %i.dg, %bb.j ], [ %i.ae, %.preheader ], [ %i.ae, %.preheader158 ], [ %i.bn, %bb.h ], [ %i.ap, %bb.g ], [ %i.co, %bb.i ]
  %.2114 = phi float [ %.1110190, %bb.j ], [ %i.v, %.preheader ], [ %i.v, %.preheader158 ], [ %i.u, %bb.h ], [ %i.ai, %bb.g ], [ %i.ce, %bb.i ]
  %.2111 = phi float [ %i.cz, %bb.j ], [ %i.u, %.preheader ], [ %i.u, %.preheader158 ], [ %i.bg, %bb.h ], [ %i.v, %bb.g ], [ %.0112178, %bb.i ]
  %.4108 = phi i32 [ 0, %bb.j ], [ 1, %.preheader ], [ 1, %.preheader158 ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.i ]
  %.0101 = phi i64 [ %i.cx, %bb.j ], [ %i.ag, %.preheader ], [ %i.ag, %.preheader158 ], [ %i.bz, %bb.h ], [ %i.bb, %bb.g ], [ %i.cc, %bb.i ] ; 2 uses
  %i.dr = phi <2 x float> [ %i.de, %bb.j ], [ %i.ad, %.preheader ], [ %i.ad, %.preheader158 ], [ %i.bl, %bb.h ], [ %i.an, %bb.g ], [ %i.cj, %bb.i ]
  %i.ds = icmp eq i64 %.0101, 0
  br i1 %i.ds, label %.thread, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.dt = sitofp i64 %.0101 to double
  %i.du = fmul nnan double %i.dt, f0x3F30000000000000
  %i.dv = fptrunc nnan double %i.du to float
  %i.dw = fpext nnan float %i.dv to double
  %i.dx = fmul nnan double %i.dw, f0x3F81DF46A2529D39
  %i.dy = tail call double @tan(double noundef %i.dx) #5, !tbaa !4
  %i.dz = fptrunc double %i.dy to float           ; 2 uses
  %i.ea = sitofp i64 %.0100 to double
  %i.eb = fmul nnan double %i.ea, f0x3F30000000000000
  %i.ec = fptrunc nnan double %i.eb to float
  %i.ed = fpext nnan float %i.ec to double
  %i.ee = fmul nnan double %i.ed, f0x3F91DF46A2529D39
  %i.ef = fptrunc double %i.ee to float
  %i.eg = fpext float %.4124 to double
  %i.eh = fpext float %.4119 to double
  %i.ei = fpext float %i.ef to double             ; 2 uses
  %i.ej = tail call double @cos(double noundef %i.ei) #5, !tbaa !4
  %i.ek = tail call double @llvm.fmuladd.f64(double %3, double %i.ej, double %1)
  %i.el = tail call double @sin(double noundef %i.ei) #5, !tbaa !4
  %i.em = tail call double @llvm.fmuladd.f64(double %3, double %i.el, double %2)
  %i.en = fneg float %i.dz
  %i.eo = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.en, i64 1
  %i.eq = insertelement <2 x float> poison, float %.2111, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %.2114, i64 1
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.er, <2 x float> %i.dr) ; 2 uses
  %i.et = extractelement <2 x float> %i.es, i64 1
  %i.eu = fpext float %i.et to double
  %i.ev = extractelement <2 x float> %i.es, i64 0
  %i.ew = fpext float %i.ev to double
  %i.ex = tail call i32 @arc_add(ptr noundef %0, double noundef %i.eg, double noundef %i.eh, double noundef %i.ek, double noundef %i.em, double noundef %i.eu, double noundef %i.ew, i32 noundef %.4108)
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.lr.ph193, %.lr.ph.preheader, %.lr.ph193.preheader, %.loopexit, %bb.a, %bb.k
  %.4 = phi i32 [ %i.dp, %.lr.ph193 ], [ 0, %.loopexit ], [ -15, %bb.a ], [ %i.ex, %bb.k ], [ %i.bw, %.lr.ph193.preheader ], [ %i.ay, %.lr.ph.preheader ], [ %i.cu, %.lr.ph ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
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
  %i.l = load i64, ptr %8, align 8, !tbaa !25     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 2 uses
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
  %i.s = load i64, ptr %8, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27
  %i.v = load i64, ptr %9, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !27
  %i.y = load i64, ptr %10, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !27
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
  %7 = alloca %struct.gs_fixed_point_s, align 8   ; 6 uses
  %8 = alloca %struct.gs_point_s, align 8         ; 4 uses
  %9 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.a = fcmp olt double %5, 0.000000e+00
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = call i32 @gx_path_current_point(ptr noundef %i.c, ptr noundef nonnull %7) #5 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %gs_currentpoint.exit.thread, label %gs_currentpoint.exit

gs_currentpoint.exit.thread:                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.j

gs_currentpoint.exit:                             ; preds = %bb.b
  %i.f = load i64, ptr %7, align 8, !tbaa !25
  %i.g = sitofp i64 %i.f to double
  %i.h = fmul nnan double %i.g, f0x3F30000000000000
  %i.i = fptrunc double %i.h to float
  %i.j = fpext float %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = sitofp i64 %i.l to double
  %i.n = fmul nnan double %i.m, f0x3F30000000000000
  %i.o = fptrunc double %i.n to float
  %i.p = fpext float %i.o to double
  %i.q = call i32 (ptr, double, double, ptr, ...) @gs_itransform(ptr noundef nonnull %0, double noundef %i.j, double noundef %i.p, ptr noundef nonnull %8) #5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %gs_currentpoint.exit
  %i.s = load <2 x float>, ptr %8, align 8, !tbaa !32
  %i.t = fpext <2 x float> %i.s to <2 x double>
  %i.u = insertelement <4 x double> poison, double %3, i64 2
  %i.v = insertelement <4 x double> %i.u, double %4, i64 3
  %i.w = shufflevector <2 x double> %i.t, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.x = shufflevector <4 x double> %i.w, <4 x double> %i.v, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.y = insertelement <4 x double> poison, double %1, i64 0
  %i.z = insertelement <4 x double> %i.y, double %2, i64 1 ; 2 uses
  %i.aa = shufflevector <4 x double> %i.z, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ab = fsub <4 x double> %i.x, %i.aa
  %i.ac = fptrunc <4 x double> %i.ab to <4 x float> ; 9 uses
  %10 = fmul <4 x float> %i.ac, %i.ac
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ae = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ad, <2 x float> %11)
  %i.af = fpext <2 x float> %i.ae to <2 x double> ; 3 uses
  %shift = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.af
  %i.ag = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ah = call double @sqrt(double noundef %i.ag) #5, !tbaa !4
  %i.ai = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.aj = fneg <4 x float> %i.ac
  %i.ak = shufflevector <4 x float> %i.ac, <4 x float> %i.aj, <2 x i32> <i32 1, i32 4>
  %i.al = fmul <2 x float> %i.ai, %i.ak
  %i.am = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.an = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ao = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.an, <2 x float> %i.al) ; 2 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 1
  %i.aq = fpext float %i.ap to double             ; 2 uses
  %i.ar = extractelement <2 x float> %i.ao, i64 0
  %i.as = fpext float %i.ar to double
  %i.at = fsub double %i.ah, %i.as                ; 2 uses
  %i.au = call double @llvm.fabs.f64(double %i.aq)
  %i.av = fcmp olt double %i.au, f0x3EB0C6F7A0B5ED8D
  %i.aw = call double @llvm.fabs.f64(double %i.at)
  %i.ax = fcmp olt double %i.aw, f0x3EB0C6F7A0B5ED8D
  %or.cond = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = call i32 @gs_point_transform2fixed(ptr noundef nonnull %i.ay, double noundef %1, double noundef %2, ptr noundef nonnull %9) #5 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.bc = load i64, ptr %9, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !27
  %i.bf = call i32 @gx_path_add_line(ptr noundef %i.bb, i64 noundef %i.bc, i64 noundef %i.be) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.076 = phi i32 [ %i.bf, %bb.e ], [ %i.az, %bb.d ]
  %i.bg = shufflevector <4 x double> %i.z, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.bh = fptrunc <2 x double> %i.bg to <2 x float>
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.bj = fmul double %5, %i.aq
  %i.bk = fdiv double %i.bj, %i.at
  %i.bl = call double @llvm.fabs.f64(double %i.bk)
  %i.bm = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.af)
  %i.bn = fpext <4 x float> %i.ac to <4 x double>
  %i.bo = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fdiv <2 x double> %i.bp, %i.bm
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bs = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bn, <4 x double> %i.br, <4 x double> %i.aa)
  %i.bt = fptrunc <4 x double> %i.bs to <4 x float> ; 5 uses
  %i.bu = extractelement <4 x float> %i.bt, i64 0
  %i.bv = fpext float %i.bu to double
  %i.bw = extractelement <4 x float> %i.bt, i64 1
  %i.bx = fpext float %i.bw to double
  %i.by = extractelement <4 x float> %i.bt, i64 2
  %i.bz = fpext float %i.by to double
  %i.ca = extractelement <4 x float> %i.bt, i64 3
  %i.cb = fpext float %i.ca to double
  %i.cc = call i32 @arc_add(ptr noundef nonnull %0, double noundef %i.bv, double noundef %i.bx, double noundef %i.bz, double noundef %i.cb, double noundef %1, double noundef %2, i32 noundef 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %.076, %bb.f ], [ %i.cc, %bb.g ] ; 2 uses
  %i.cd = phi <4 x float> [ %i.bi, %bb.f ], [ %i.bt, %bb.g ]
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <4 x float> %i.cd, ptr %6, align 4, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %gs_currentpoint.exit.thread, %bb.h, %bb.i, %gs_currentpoint.exit, %bb.a
  %.0 = phi i32 [ %i.q, %gs_currentpoint.exit ], [ -23, %bb.a ], [ %.1, %bb.i ], [ %.1, %bb.h ], [ %i.d, %gs_currentpoint.exit.thread ]
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = load i64, ptr %7, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = load i64, ptr %8, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27
  %i.p = load i64, ptr %9, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !27
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
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
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.m = load i64, ptr %7, align 8, !tbaa !25     ; 3 uses
  %i.n = load i64, ptr %8, align 8, !tbaa !25
  %i.o = add nsw i64 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27
  %i.t = add nsw i64 %i.s, %i.q
  %i.u = load i64, ptr %9, align 8, !tbaa !25
  %i.v = add nsw i64 %i.u, %i.m
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !27
  %i.y = add nsw i64 %i.x, %i.q
  %i.z = load i64, ptr %10, align 8, !tbaa !25
  %i.aa = add nsw i64 %i.z, %i.m
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !27
  %i.ad = add nsw i64 %i.ac, %i.q
  %i.ae = call i32 @gx_path_add_curve(ptr noundef %i.l, i64 noundef %i.o, i64 noundef %i.t, i64 noundef %i.v, i64 noundef %i.y, i64 noundef %i.aa, i64 noundef %i.ad) #5
  br label %bb.f
end_hunk_0
