Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gxstroke?download=true
inline.NumInlined: 9
begin_hunk_0_@stroke_add:bb.a

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.jt, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ju = extractelement <2 x float> %i.jr, i64 1 ; 3 uses
  %i.jv = fcmp ogt float %i.ju, 0.000000e+00
  %i.jw = fneg float %i.ju
  %.0122 = select i1 %i.jv, float %i.jw, float %i.ju
  %i.jx = extractelement <2 x float> %i.jr, i64 0
  br label %bb.al

bb.ae:                                            ; preds = %bb.ac
  %i.jy = extractelement <2 x float> %i.jr, i64 1 ; 2 uses
  %i.jz = fneg float %i.jy
  %i.ka = extractelement <2 x float> %i.jr, i64 0 ; 3 uses
  %i.kb = fcmp olt float %i.ka, 0.000000e+00
  br i1 %i.kb, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.kc = fneg float %i.ka
  br label %bb.al

bb.ag:                                            ; preds = %bb.ab
  br i1 %i.jt, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.kd = extractelement <2 x float> %i.jr, i64 0 ; 3 uses
  %i.ke = fcmp olt float %i.kd, 0.000000e+00
  %i.kf = extractelement <2 x float> %i.jr, i64 1 ; 2 uses
  br i1 %i.ke, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.kg = fneg float %i.kf
  %i.kh = fneg float %i.kd
  br label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %i.ki = extractelement <2 x float> %i.jr, i64 1 ; 3 uses
  %i.kj = fcmp olt float %i.ki, 0.000000e+00
  %i.kk = fneg float %i.ki
  %.1 = select i1 %i.kj, float %i.kk, float %i.ki ; 2 uses
  %i.kl = extractelement <2 x float> %i.jr, i64 0 ; 3 uses
  %i.km = fcmp olt float %i.kl, 0.000000e+00
  br i1 %i.km, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.kn = fneg float %i.kl
  br label %bb.al

bb.al:                                            ; preds = %bb.ad, %bb.ai, %bb.ah, %bb.ak, %bb.aj, %bb.af, %bb.ae
  %.2 = phi float [ %.1, %bb.aj ], [ %.0122, %bb.ad ], [ %i.jy, %bb.af ], [ %i.jz, %bb.ae ], [ %i.kg, %bb.ai ], [ %i.kf, %bb.ah ], [ %.1, %bb.ak ] ; 2 uses
  %.0 = phi float [ %i.kl, %bb.aj ], [ %i.jx, %bb.ad ], [ %i.kc, %bb.af ], [ %i.ka, %bb.ae ], [ %i.kh, %bb.ai ], [ %i.kd, %bb.ah ], [ %i.kn, %bb.ak ]
  %i.ko = fcmp ult float %.2, 0.000000e+00
  %i.kp = fcmp ule float %i.iz, 0.000000e+00      ; 2 uses
  %i.kq = fmul float %i.iz, %.0
  %i.kr = fcmp ult float %.2, %i.kq               ; 2 uses
  br i1 %i.ko, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %or.cond = select i1 %i.kp, i1 true, i1 %i.kr
  br i1 %or.cond, label %bb.ar, label %bb.ao

bb.an:                                            ; preds = %bb.al
  %or.cond158 = select i1 %i.kp, i1 %i.kr, i1 false
  br i1 %or.cond158, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !45
  %i.ku = sitofp i64 %i.kt to float
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !46
  %i.kx = sitofp i64 %i.kw to float
  %i.ky = fmul nnan float %i.ic, %i.ku
  %i.kz = fmul nnan float %i.hz, %i.kx
  %i.la = fcmp oge float %i.ky, %i.kz
  %i.lb = fneg float %i.hn
  %i.lc = fmul nnan float %i.lb, %i.ic
  %i.ld = fneg float %i.hq
  %i.le = fmul nnan float %i.ld, %i.hz
  %i.lf = fcmp ult float %i.lc, %i.le
  %i.lg = xor i1 %i.lf, %i.la
  br i1 %i.lg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @line_intersect(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.hr, ptr noundef nonnull %i.ik, ptr noundef nonnull %i.ks, ptr noundef nonnull %5)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call void @line_intersect(ptr noundef nonnull %i.il, ptr noundef nonnull %i.hr, ptr noundef nonnull %i.ik, ptr noundef nonnull %i.ks, ptr noundef nonnull %4)
  %.pre = load i64, ptr %4, align 8, !tbaa !57
  %.pre177 = load i64, ptr %i.ip, align 8, !tbaa !58
  br label %bb.ar

bb.ar:                                            ; preds = %bb.am, %bb.an, %bb.aq, %bb.ap, %bb.aa
  %i.lh = phi i64 [ %i.io, %bb.am ], [ %i.io, %bb.an ], [ %.pre177, %bb.aq ], [ %i.io, %bb.ap ], [ %i.io, %bb.aa ]
  %i.li = phi i64 [ %i.im, %bb.am ], [ %i.im, %bb.an ], [ %.pre, %bb.aq ], [ %i.im, %bb.ap ], [ %i.im, %bb.aa ]
  %i.lj = tail call i32 @gx_path_add_line(ptr noundef nonnull %i.a, i64 noundef %i.li, i64 noundef %i.lh) #7 ; 2 uses
  %i.lk = icmp slt i32 %i.lj, 0
  br i1 %i.lk, label %.thread170, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ll = load i64, ptr %i.ik, align 8, !tbaa !57
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !58
  %i.lo = tail call i32 @gx_path_add_line(ptr noundef nonnull %i.a, i64 noundef %i.ll, i64 noundef %i.ln) #7 ; 2 uses
  %i.lp = icmp slt i32 %i.lo, 0
  br i1 %i.lp, label %.thread170, label %bb.at

.thread170:                                       ; preds = %bb.ar, %bb.as
  %.0131.ph = phi i32 [ %i.lo, %bb.as ], [ %i.lj, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %add_capped.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.lq = load i64, ptr %5, align 16, !tbaa !57
  %i.lr = load i64, ptr %i.ir, align 8, !tbaa !58
  %i.ls = tail call i32 @gx_path_add_line(ptr noundef nonnull %i.a, i64 noundef %i.lq, i64 noundef %i.lr) #7 ; 2 uses
  %i.lt = icmp sgt i32 %i.ls, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br i1 %i.lt, label %add_capped.exit162.thread175, label %add_capped.exit.thread

add_capped.exit162:                               ; preds = %bb.z, %bb.w, %bb.s, %bb.q, %bb.o
  %.2130 = phi i32 [ %i.hk, %bb.z ], [ %i.eh, %bb.o ], [ %i.gx, %bb.w ], [ %i.fn, %bb.s ], [ %i.fc, %bb.q ] ; 2 uses
  %i.lu = icmp slt i32 %.2130, 0
  br i1 %i.lu, label %add_capped.exit.thread, label %add_capped.exit162.thread175

add_capped.exit162.thread175:                     ; preds = %bb.at, %bb.l, %add_capped.exit162
  %i.lv = tail call i32 @gx_path_close_subpath(ptr noundef nonnull %i.a) #7
  %spec.select160 = tail call i32 @llvm.smin.i32(i32 %i.lv, i32 0)
  br label %add_capped.exit.thread

add_capped.exit.thread:                           ; preds = %bb.y, %bb.u, %bb.r, %bb.p, %bb.n, %bb.m, %bb.v, %.thread, %bb.i, %bb.g, %bb.f, %.thread170, %add_capped.exit162.thread175, %add_capped.exit162, %add_capped.exit, %bb.a, %bb.at
  %.1132 = phi i32 [ %i.ls, %bb.at ], [ 0, %bb.a ], [ %.152.i, %add_capped.exit ], [ %spec.select160, %add_capped.exit162.thread175 ], [ %.2130, %add_capped.exit162 ], [ %i.aw, %bb.f ], [ %.0131.ph, %.thread170 ], [ %i.co, %.thread ], [ %i.bz, %bb.i ], [ %i.be, %bb.g ], [ %i.he, %bb.y ], [ %i.gf, %bb.u ], [ %i.fh, %bb.r ], [ %i.es, %bb.p ], [ %i.dx, %bb.n ], [ %i.dp, %bb.m ], [ %i.gn, %bb.v ]
  ret i32 %.1132
}

declare i32 @gx_path_flatten(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @gs_idtransform(...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @compute_caps(ptr nofree noundef captures(none) initializes((16, 64), (80, 128)) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <2 x i64>, ptr %i.a, align 8, !tbaa !29
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.e = load <2 x i64>, ptr %0, align 8, !tbaa !29
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.g = sub nsw <4 x i64> %i.f, %i.d
  %i.h = add nsw <4 x i64> %i.f, %i.d
  %i.i = shufflevector <4 x i64> %i.g, <4 x i64> %i.h, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i64> %i.i, ptr %i.b, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load <2 x i64>, ptr %i.j, align 8, !tbaa !29
  %i.m = shufflevector <2 x i64> %i.l, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.n = add nsw <4 x i64> %i.m, %i.d
  %i.o = sub nsw <4 x i64> %i.m, %i.d
  %i.p = shufflevector <4 x i64> %i.n, <4 x i64> %i.o, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i64> %i.p, ptr %i.k, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i64, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.s, ptr %i.t, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38   ; 2 uses
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.w, ptr %i.x, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.r, ptr %i.y, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.v, ptr %i.z, align 8, !tbaa !48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @line_intersect(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !57
  %i.b = sitofp i64 %i.a to float
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  %i.e = sitofp i64 %i.d to float
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = fneg float %i.e
  %i.h = load <2 x i64>, ptr %1, align 8, !tbaa !29
  %i.i = load i64, ptr %i.f, align 8, !tbaa !58
  %i.j = sitofp <2 x i64> %i.h to <2 x float>     ; 3 uses
  %i.k = load i64, ptr %2, align 8, !tbaa !57
  %i.l = sitofp i64 %i.i to float
  %i.m = load <2 x i64>, ptr %3, align 8, !tbaa !29
  %i.n = sitofp <2 x i64> %i.m to <2 x float>     ; 3 uses
  %i.o = sitofp i64 %i.k to float
  %i.p = extractelement <2 x float> %i.j, i64 0   ; 2 uses
  %i.q = fmul nnan float %i.p, %i.g
  %i.r = extractelement <2 x float> %i.j, i64 1   ; 2 uses
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %i.b, float %i.q)
  %i.t = fpext float %i.s to double
  %5 = fneg float %i.r
  %6 = fneg float %i.l
  %7 = extractelement <2 x float> %i.n, i64 0     ; 2 uses
  %8 = fmul nnan float %7, %5
  %9 = fmul nnan float %7, %6
  %10 = extractelement <2 x float> %i.n, i64 1    ; 2 uses
  %11 = tail call float @llvm.fmuladd.f32(float %i.p, float %10, float %8)
  %12 = tail call float @llvm.fmuladd.f32(float %10, float %i.o, float %9)
  %13 = fpext float %11 to double
  %14 = fpext float %12 to double
  %i.u = fneg double %i.t
  %i.v = fpext <2 x float> %i.j to <2 x double>
  %i.w = fpext nnan ninf <2 x float> %i.n to <2 x double>
  %i.x = insertelement <2 x double> poison, double %i.u, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x double> %i.y, %i.w
  %15 = insertelement <2 x double> poison, double %14, i64 0
  %i.aa = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.aa, <2 x double> %i.z)
  %16 = insertelement <2 x double> poison, double %13, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x double> %i.ab, %17
  %i.ad = fptosi <2 x double> %i.ac to <2 x i64>
  store <2 x i64> %i.ad, ptr %4, align 8, !tbaa !29
  ret void
}

declare i32 @gx_cpath_includes_rectangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @gz_draw_line_fixed(...) local_unnamed_addr #2

declare void @gx_path_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @add_capped(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %.thread [
    i32 1, label %bb.b
    i32 2, label %bb.e
    i32 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50
  %i.d = add nsw i64 %i.c, %i.a                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !52
  %i.i = add nsw i64 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !54
  %i.n = tail call i32 %2(ptr noundef %0, i64 noundef %i.k, i64 noundef %i.m) #7 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.j, align 8, !tbaa !53   ; 2 uses
  %i.q = load i64, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.r = load i64, ptr %i.b, align 8, !tbaa !50
  %i.s = add nsw i64 %i.r, %i.p
  %i.t = load i64, ptr %i.g, align 8, !tbaa !52
  %i.u = add nsw i64 %i.t, %i.q
  %i.v = tail call i32 @gx_path_add_arc(ptr noundef %0, i64 noundef %i.p, i64 noundef %i.q, i64 noundef %i.d, i64 noundef %i.i, i64 noundef %i.s, i64 noundef %i.u) #7 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !55   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !56  ; 2 uses
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !50
  %i.ac = add nsw i64 %i.ab, %i.y
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !52
  %i.ae = add nsw i64 %i.ad, %i.aa
  %i.af = tail call i32 @gx_path_add_arc(ptr noundef %0, i64 noundef %i.d, i64 noundef %i.i, i64 noundef %i.y, i64 noundef %i.aa, i64 noundef %i.ac, i64 noundef %i.ae) #7
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !50
  %i.ak = add nsw i64 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !52
  %i.ap = add nsw i64 %i.ao, %i.am
  %i.aq = tail call i32 %2(ptr noundef %0, i64 noundef %i.ak, i64 noundef %i.ap) #7 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !55
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !50
  %i.av = add nsw i64 %i.au, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !56
  %i.ay = load i64, ptr %i.an, align 8, !tbaa !52
  %i.az = add nsw i64 %i.ay, %i.ax
  %i.ba = tail call i32 @gx_path_add_line(ptr noundef %0, i64 noundef %i.av, i64 noundef %i.az) #7
  br label %.thread

bb.g:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !54
  %i.bf = tail call i32 %2(ptr noundef %0, i64 noundef %i.bc, i64 noundef %i.be) #7 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !55
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !56
  %i.bl = tail call i32 @gx_path_add_line(ptr noundef %0, i64 noundef %i.bi, i64 noundef %i.bk) #7
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.f, %bb.h, %bb.c, %bb.b, %bb.a, %bb.g, %bb.e
  %.152 = phi i32 [ %i.n, %bb.b ], [ %i.ba, %bb.f ], [ %i.v, %bb.c ], [ %i.aq, %bb.e ], [ %i.bf, %bb.g ], [ %i.bl, %bb.h ], [ undef, %bb.a ], [ %i.af, %bb.d ]
  ret i32 %.152
}

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @gx_path_add_line(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @gx_path_close_subpath(ptr noundef) local_unnamed_addr #2

declare i32 @gx_path_add_arc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!9 = !{!"p1 _ZTS9gx_path_s", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"p1 _ZTS10gs_state_s", !8, i64 0}
!12 = !{!"", !8, i64 0, !8, i64 8}
!13 = !{!"float", !5, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"gs_matrix_fixed_s", !13, i64 0, !14, i64 8, !13, i64 16, !14, i64 24, !13, i64 32, !14, i64 40, !13, i64 48, !14, i64 56, !13, i64 64, !14, i64 72, !13, i64 80, !14, i64 88, !14, i64 96, !14, i64 104}
!16 = !{!"gs_matrix_s", !13, i64 0, !14, i64 8, !13, i64 16, !14, i64 24, !13, i64 32, !14, i64 40, !13, i64 48, !14, i64 56, !13, i64 64, !14, i64 72, !13, i64 80, !14, i64 88}
!17 = !{!"p1 omnipotent char", !8, i64 0}
!18 = !{!"p1 _ZTS13line_params_s", !8, i64 0}
!19 = !{!"p1 _ZTS10halftone_s", !8, i64 0}
!20 = !{!"p1 _ZTS10gs_color_s", !8, i64 0}
!21 = !{!"p1 _ZTS17gx_device_color_s", !8, i64 0}
!22 = !{!"p1 _ZTS9gs_font_s", !8, i64 0}
!23 = !{!"p1 _ZTS8device_s", !8, i64 0}
!24 = !{!"gs_state_s", !11, i64 0, !12, i64 8, !15, i64 24, !16, i64 136, !6, i64 232, !17, i64 240, !17, i64 248, !9, i64 256, !9, i64 264, !6, i64 272, !18, i64 280, !19, i64 288, !8, i64 296, !20, i64 304, !21, i64 312, !8, i64 320, !22, i64 328, !16, i64 336, !6, i64 432, !5, i64 436, !5, i64 437, !13, i64 440, !23, i64 448, !6, i64 456}
!25 = !{!24, !21, i64 312}
!26 = !{!24, !18, i64 280}
!27 = !{!"p1 float", !8, i64 0}
!28 = !{!"dash_params_s", !27, i64 0, !6, i64 8, !13, i64 12, !6, i64 16, !6, i64 20, !13, i64 24}
!29 = !{!14, !14, i64 0}
!30 = !{!"line_params_s", !13, i64 0, !6, i64 4, !6, i64 8, !13, i64 12, !13, i64 16, !28, i64 24}
!31 = !{!"gs_fixed_point_s", !14, i64 0, !14, i64 8}
!32 = !{!"endpoint_s", !31, i64 0, !31, i64 16, !31, i64 32, !31, i64 48}
!33 = !{!"partial_line_s", !32, i64 0, !32, i64 64, !31, i64 128, !31, i64 144, !6, i64 160}
!34 = !{!33, !14, i64 128}
!35 = !{!33, !14, i64 136}
!36 = !{!33, !6, i64 160}
!37 = !{!33, !14, i64 144}
!38 = !{!33, !14, i64 152}
!39 = !{!33, !14, i64 0}
!40 = !{!33, !14, i64 8}
!41 = !{!33, !14, i64 64}
!42 = !{!33, !14, i64 72}
!43 = !{!33, !14, i64 80}
!44 = !{!33, !14, i64 88}
!45 = !{!33, !14, i64 48}
!46 = !{!33, !14, i64 56}
!47 = !{!33, !14, i64 112}
!48 = !{!33, !14, i64 120}
!49 = !{!32, !14, i64 0}
!50 = !{!32, !14, i64 48}
end_hunk_0
