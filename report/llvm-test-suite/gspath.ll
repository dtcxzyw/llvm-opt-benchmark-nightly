inline.NumInlined: 1
begin_hunk_0_@gs_moveto:bb.a
  ret i32 %.0
}

declare i32 @gs_point_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_rmoveto(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %i.a, double noundef %1, double noundef %2, ptr noundef nonnull %3) #5 ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = load i64, ptr %3, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27
  %i.i = call i32 @gx_path_add_relative_point(ptr noundef %i.e, i64 noundef %i.f, i64 noundef %i.h) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret i32 %.0
}

declare i32 @gs_distance_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_path_add_relative_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_lineto(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = call i32 @gs_point_transform2fixed(ptr noundef nonnull %i.a, double noundef %1, double noundef %2, ptr noundef nonnull %3) #5 ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = load i64, ptr %3, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27
  %i.i = call i32 @gx_path_add_line(ptr noundef %i.e, i64 noundef %i.f, i64 noundef %i.h) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret i32 %.0
}

declare i32 @gx_path_add_line(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_rlineto(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  %4 = alloca %struct.gs_fixed_point_s, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = call i32 @gx_path_current_point(ptr noundef %i.b, ptr noundef nonnull %3) #5 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %i.e, double noundef %1, double noundef %2, ptr noundef nonnull %4) #5 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.i = load i64, ptr %3, align 8, !tbaa !25
  %i.j = load i64, ptr %4, align 8, !tbaa !25
  %i.k = add nsw i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27
  %i.p = add nsw i64 %i.o, %i.m
  %i.q = call i32 @gx_path_add_line(ptr noundef %i.h, i64 noundef %i.k, i64 noundef %i.p) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.08 = phi i32 [ %i.c, %bb.a ], [ %i.q, %bb.c ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_arc(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @arc_either(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @arc_either(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = fmul double %4, 4.096000e+03
  %i.b = fptosi double %i.a to i64                ; 4 uses
  %i.c = fmul double %5, 4.096000e+03
  %i.d = fptosi double %i.c to i64                ; 2 uses
  %i.e = fcmp olt double %3, 0.000000e+00
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = srem i64 %i.b, 1474560                   ; 5 uses
  %i.g = srem i64 %i.d, 1474560                   ; 5 uses
  %.not142 = icmp eq i32 %6, 0
  br i1 %.not142, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not144 = icmp slt i64 %i.g, %i.f
  %i.h = add nsw i64 %i.f, 1474560
  %spec.select = select i1 %.not144, i64 %i.f, i64 %i.h
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.not143 = icmp sgt i64 %i.g, %i.f
  %i.i = add nsw i64 %i.g, 1474560
  %spec.select146 = select i1 %.not143, i64 %i.g, i64 %i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0100 = phi i64 [ %i.b, %bb.b ], [ %spec.select146, %bb.e ], [ %i.g, %bb.d ] ; 6 uses
  %.095 = phi i64 [ %i.b, %bb.b ], [ %i.f, %bb.e ], [ %spec.select, %bb.d ] ; 4 uses
  %i.j = sitofp i64 %.095 to double
  %i.k = fmul nnan double %i.j, f0x3F30000000000000
  %i.l = fptrunc nnan double %i.k to float
  %i.m = fpext nnan float %i.l to double
  %i.n = fmul nnan double %i.m, f0x3F91DF46A2529D39
  %i.o = fptrunc double %i.n to float
  %i.p = fpext float %i.o to double               ; 2 uses
  %i.q = tail call double @sin(double noundef %i.p) #5, !tbaa !4
  %i.r = tail call double @cos(double noundef %i.p) #5, !tbaa !4
  %i.s = fmul double %3, %i.r
  %i.t = fmul double %3, %i.q
  %i.u = fptrunc double %i.s to float             ; 8 uses
  %i.v = fptrunc double %i.t to float             ; 8 uses
  %i.w = insertelement <2 x float> poison, float %i.u, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.y = fpext <2 x float> %i.x to <2 x double>   ; 3 uses
  %i.z = insertelement <2 x double> poison, double %1, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %2, i64 1 ; 3 uses
  %i.ab = fadd <2 x double> %i.aa, %i.y
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ad = fptrunc <2 x double> %i.ac to <2 x float> ; 4 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0 ; 6 uses
  %i.af = extractelement <2 x float> %i.ad, i64 1 ; 6 uses
  %.not145 = icmp eq i32 %6, 0
  %i.ag = sub nsw i64 %.0100, %.095               ; 4 uses
  br i1 %.not145, label %.preheader, label %.preheader158

.preheader158:                                    ; preds = %bb.f
  %i.ah = icmp slt i64 %i.ag, -368640
  br i1 %i.ah, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader158
  %i.ai = fneg float %i.u                         ; 3 uses
  %i.aj = fpext float %i.ai to double
  %i.ak = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.al = insertelement <2 x double> %i.y, double %i.aj, i64 0
  %i.am = fadd <2 x double> %i.ak, %i.al
  %i.an = fptrunc <2 x double> %i.am to <2 x float> ; 3 uses
  %i.ao = extractelement <2 x float> %i.an, i64 1 ; 3 uses
  %i.ap = extractelement <2 x float> %i.an, i64 0 ; 3 uses
  %i.aq = fpext float %i.af to double
  %i.ar = fpext float %i.ae to double
  %i.as = fpext float %i.ao to double
  %i.at = fpext float %i.ap to double
  %i.au = fadd float %i.af, %i.v
  %i.av = fpext float %i.au to double
  %i.aw = fsub float %i.ae, %i.u
  %i.ax = fpext float %i.aw to double
  %i.ay = tail call i32 @arc_add(ptr noundef %0, double noundef %i.aq, double noundef %i.ar, double noundef %i.as, double noundef %i.at, double noundef %i.av, double noundef %i.ax, i32 noundef 1) ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.g, label %.thread

bb.g:                                             ; preds = %.lr.ph.preheader
  %i.ba = add nsw i64 %.095, -368640              ; 2 uses
  %i.bb = sub nsw i64 %.0100, %i.ba               ; 2 uses
  %i.bc = icmp slt i64 %i.bb, -368640
  br i1 %i.bc, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.bd = icmp sgt i64 %i.ag, 368640
  br i1 %i.bd, label %.lr.ph193.preheader, label %.loopexit

.lr.ph193.preheader:                              ; preds = %.preheader
  %i.be = fneg float %i.v                         ; 3 uses
  %i.bf = fpext float %i.be to double
  %i.bg = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bh = insertelement <2 x double> %i.y, double %i.bf, i64 1
  %i.bi = fadd <2 x double> %i.bg, %i.bh
  %i.bj = fptrunc <2 x double> %i.bi to <2 x float> ; 3 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 1 ; 3 uses
  %i.bl = extractelement <2 x float> %i.bj, i64 0 ; 3 uses
  %i.bm = fpext float %i.af to double
  %i.bn = fpext float %i.ae to double
  %i.bo = fpext float %i.bk to double
  %i.bp = fpext float %i.bl to double
  %i.bq = fsub float %i.af, %i.v
  %i.br = fpext float %i.bq to double
  %i.bs = fadd float %i.ae, %i.u
  %i.bt = fpext float %i.bs to double
  %i.bu = tail call i32 @arc_add(ptr noundef %0, double noundef %i.bm, double noundef %i.bn, double noundef %i.bo, double noundef %i.bp, double noundef %i.br, double noundef %i.bt, i32 noundef 1) ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, -1
  br i1 %i.bv, label %bb.h, label %.thread

bb.h:                                             ; preds = %.lr.ph193.preheader
  %i.bw = add nsw i64 %.095, 368640               ; 2 uses
  %i.bx = sub nsw i64 %.0100, %i.bw               ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 368640
  br i1 %i.by, label %.lr.ph193, label %.loopexit

bb.i:                                             ; preds = %.lr.ph
  %i.bz = add nsw i64 %.196181, -368640           ; 2 uses
  %i.ca = sub nsw i64 %.0100, %i.bz               ; 2 uses
  %i.cb = icmp slt i64 %i.ca, -368640
  br i1 %i.cb, label %.lr.ph, label %.loopexit.loopexit293, !llvm.loop !28

.lr.ph:                                           ; preds = %bb.g, %bb.i
  %.196181 = phi i64 [ %i.bz, %bb.i ], [ %i.ba, %bb.g ]
  %.0109179 = phi float [ %.0112178, %bb.i ], [ %i.v, %bb.g ] ; 2 uses
  %.0112178 = phi float [ %i.cc, %bb.i ], [ %i.ai, %bb.g ] ; 4 uses
  %.0115177 = phi float [ %12, %bb.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.0120176 = phi float [ %9, %bb.i ], [ %i.ao, %bb.g ] ; 2 uses
  %i.cc = fneg float %.0109179                    ; 3 uses
  %7 = fpext float %.0112178 to double
  %8 = fadd double %1, %7
  %9 = fptrunc double %8 to float                 ; 4 uses
  %10 = fpext float %i.cc to double
  %11 = fadd double %2, %10
  %12 = fptrunc double %11 to float               ; 4 uses
  %i.cd = fpext float %.0120176 to double
  %i.ce = fpext float %.0115177 to double
  %13 = fpext float %9 to double
  %i.cf = fpext float %12 to double
  %i.cg = fadd float %.0120176, %.0112178
  %i.ch = fpext float %i.cg to double
  %i.ci = fsub float %.0115177, %.0109179
  %i.cj = fpext float %i.ci to double
  %i.ck = tail call i32 @arc_add(ptr noundef %0, double noundef %i.cd, double noundef %i.ce, double noundef %13, double noundef %i.cf, double noundef %i.ch, double noundef %i.cj, i32 noundef 0) ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, -1
  br i1 %i.cl, label %bb.i, label %.thread

bb.j:                                             ; preds = %.lr.ph193
  %i.cm = add nsw i64 %.398192, 368640            ; 2 uses
  %i.cn = sub nsw i64 %.0100, %i.cm               ; 2 uses
  %i.co = icmp sgt i64 %i.cn, 368640
  br i1 %i.co, label %.lr.ph193, label %.loopexit, !llvm.loop !31

.lr.ph193:                                        ; preds = %bb.h, %bb.j
  %.398192 = phi i64 [ %i.cm, %bb.j ], [ %i.bw, %bb.h ]
  %.1110190 = phi float [ %i.cp, %bb.j ], [ %i.be, %bb.h ] ; 4 uses
  %.1113189 = phi float [ %.1110190, %bb.j ], [ %i.u, %bb.h ] ; 2 uses
  %.2117188 = phi float [ %i.cw, %bb.j ], [ %i.bl, %bb.h ] ; 2 uses
  %.2122187 = phi float [ %i.cv, %bb.j ], [ %i.bk, %bb.h ] ; 2 uses
  %i.cp = fneg float %.1113189                    ; 3 uses
  %i.cq = insertelement <2 x float> poison, float %.1110190, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cp, i64 1
  %i.cs = fpext <2 x float> %i.cr to <2 x double>
  %i.ct = fadd <2 x double> %i.bg, %i.cs
  %i.cu = fptrunc <2 x double> %i.ct to <2 x float> ; 3 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 1 ; 3 uses
  %i.cw = extractelement <2 x float> %i.cu, i64 0 ; 3 uses
  %i.cx = fpext float %.2122187 to double
  %i.cy = fpext float %.2117188 to double
  %i.cz = fpext float %i.cv to double
  %i.da = fpext float %i.cw to double
  %i.db = fsub float %.2122187, %.1113189
  %i.dc = fpext float %i.db to double
  %i.dd = fadd float %.2117188, %.1110190
  %i.de = fpext float %i.dd to double
  %i.df = tail call i32 @arc_add(ptr noundef %0, double noundef %i.cx, double noundef %i.cy, double noundef %i.cz, double noundef %i.da, double noundef %i.dc, double noundef %i.de, i32 noundef 0) ; 2 uses
  %i.dg = icmp sgt i32 %i.df, -1
  br i1 %i.dg, label %bb.j, label %.thread

.loopexit.loopexit293:                            ; preds = %bb.i
  %14 = insertelement <2 x float> poison, float %12, i64 0
  %15 = insertelement <2 x float> %14, float %9, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.loopexit293, %bb.g, %bb.h, %.preheader158, %.preheader
  %.4124 = phi float [ %9, %.loopexit.loopexit293 ], [ %i.af, %.preheader ], [ %i.af, %.preheader158 ], [ %i.bk, %bb.h ], [ %i.ao, %bb.g ], [ %i.cv, %bb.j ]
  %.4119 = phi float [ %12, %.loopexit.loopexit293 ], [ %i.ae, %.preheader ], [ %i.ae, %.preheader158 ], [ %i.bl, %bb.h ], [ %i.ap, %bb.g ], [ %i.cw, %bb.j ]
  %.2114 = phi float [ %i.cc, %.loopexit.loopexit293 ], [ %i.v, %.preheader ], [ %i.v, %.preheader158 ], [ %i.u, %bb.h ], [ %i.ai, %bb.g ], [ %.1110190, %bb.j ]
  %.2111 = phi float [ %.0112178, %.loopexit.loopexit293 ], [ %i.u, %.preheader ], [ %i.u, %.preheader158 ], [ %i.be, %bb.h ], [ %i.v, %bb.g ], [ %i.cp, %bb.j ]
  %.4108 = phi i32 [ 0, %.loopexit.loopexit293 ], [ 1, %.preheader ], [ 1, %.preheader158 ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.j ]
  %.0101 = phi i64 [ %i.ca, %.loopexit.loopexit293 ], [ %i.ag, %.preheader ], [ %i.ag, %.preheader158 ], [ %i.bx, %bb.h ], [ %i.bb, %bb.g ], [ %i.cn, %bb.j ] ; 2 uses
  %i.dh = phi <2 x float> [ %15, %.loopexit.loopexit293 ], [ %i.ad, %.preheader ], [ %i.ad, %.preheader158 ], [ %i.bj, %bb.h ], [ %i.an, %bb.g ], [ %i.cu, %bb.j ]
  %i.di = icmp eq i64 %.0101, 0
  br i1 %i.di, label %.thread, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.dj = sitofp i64 %.0101 to double
  %i.dk = fmul nnan double %i.dj, f0x3F30000000000000
  %i.dl = fptrunc nnan double %i.dk to float
  %i.dm = fpext nnan float %i.dl to double
  %i.dn = fmul nnan double %i.dm, f0x3F81DF46A2529D39
  %i.do = tail call double @tan(double noundef %i.dn) #5, !tbaa !4
  %i.dp = fptrunc double %i.do to float           ; 2 uses
  %i.dq = sitofp i64 %.0100 to double
  %i.dr = fmul nnan double %i.dq, f0x3F30000000000000
  %i.ds = fptrunc nnan double %i.dr to float
  %i.dt = fpext nnan float %i.ds to double
  %i.du = fmul nnan double %i.dt, f0x3F91DF46A2529D39
  %i.dv = fptrunc double %i.du to float
  %i.dw = fpext float %.4124 to double
  %i.dx = fpext float %.4119 to double
  %i.dy = fpext float %i.dv to double             ; 2 uses
  %i.dz = tail call double @cos(double noundef %i.dy) #5, !tbaa !4
  %i.ea = tail call double @llvm.fmuladd.f64(double %3, double %i.dz, double %1)
  %i.eb = tail call double @sin(double noundef %i.dy) #5, !tbaa !4
  %i.ec = tail call double @llvm.fmuladd.f64(double %3, double %i.eb, double %2)
  %i.ed = fneg float %i.dp
  %i.ee = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %i.ed, i64 1
  %i.eg = insertelement <2 x float> poison, float %.2111, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %.2114, i64 1
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.eh, <2 x float> %i.dh) ; 2 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 1
  %i.ek = fpext float %i.ej to double
  %i.el = extractelement <2 x float> %i.ei, i64 0
  %i.em = fpext float %i.el to double
  %i.en = tail call i32 @arc_add(ptr noundef %0, double noundef %i.dw, double noundef %i.dx, double noundef %i.ea, double noundef %i.ec, double noundef %i.ek, double noundef %i.em, i32 noundef %.4108)
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.lr.ph193, %.lr.ph.preheader, %.lr.ph193.preheader, %.loopexit, %bb.a, %bb.k
  %.4 = phi i32 [ %i.df, %.lr.ph193 ], [ 0, %.loopexit ], [ -15, %bb.a ], [ %i.en, %bb.k ], [ %i.bu, %.lr.ph193.preheader ], [ %i.ay, %.lr.ph.preheader ], [ %i.ck, %.lr.ph ]
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
  %i.ad = fmul <4 x float> %i.ac, %i.ac
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.af = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ag = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.af, <2 x float> %i.ae)
  %i.ah = fpext <2 x float> %i.ag to <2 x double> ; 3 uses
  %shift = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.ah
  %i.ai = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aj = call double @sqrt(double noundef %i.ai) #5, !tbaa !4
  %i.ak = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.al = fneg <4 x float> %i.ac
  %i.am = shufflevector <4 x float> %i.ac, <4 x float> %i.al, <2 x i32> <i32 1, i32 4>
  %i.an = fmul <2 x float> %i.ak, %i.am
end_hunk_0
