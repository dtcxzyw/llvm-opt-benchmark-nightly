Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalance?download=true
inline.NumInlined: 167
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@add_preset:bb.a
  %i.l = load i32, ptr %i.b, align 4, !tbaa !15
  %i.m = call i32 @dt_develop_blend_legacy_params_from_so(ptr noundef %0, ptr noundef %i.h, i32 noundef 8, ptr noundef %i.j, i32 noundef %i.k, i32 noundef %i.l) #23
  %i.n = icmp eq i32 %i.m, 0
  call void @free(ptr noundef %i.h) #23
  br i1 %i.n, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  store i32 420, ptr %i.b, align 4, !tbaa !15
  br label %bb.d

.thread:                                          ; preds = %bb.b
  call void @free(ptr noundef %i.j) #23
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.a
  %.1 = phi ptr [ %i.h, %bb.a ], [ %i.j, %bb.c ]  ; 4 uses
  %i.o = icmp ne ptr %i.e, null
  %i.p = icmp ne ptr %.1, null
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.92, ptr noundef %1) #23 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.s = load i32, ptr %i.a, align 4, !tbaa !15
  call void @dt_gui_presets_add_with_blendop(ptr noundef %i.q, ptr noundef nonnull %i.r, i32 noundef 3, ptr noundef nonnull %i.e, i32 noundef %i.s, ptr noundef nonnull %.1, i32 noundef 1) #23
  call void @g_free(ptr noundef %i.q) #23
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %bb.d
  %.128 = phi ptr [ null, %.thread ], [ %.1, %bb.e ], [ %.1, %bb.d ]
  call void @free(ptr noundef %.128) #23
  call void @free(ptr noundef %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !135
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !32  ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load float, ptr %i.f, align 4, !tbaa !136 ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn une float %i.g, 0.000000e+00
  %i.i = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.g
  %spec.select = select reassoc nsz arcp contract afn i1 %i.h, float %i.i, float 1.000000e+06 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !137
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !138
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, %i.l                   ; 9 uses
  %.sroa.0136.0.vec.insert = insertelement <4 x float> poison, float %spec.select, i64 0
  %.sroa.0136.12.vec.insert = shufflevector <4 x float> %.sroa.0136.0.vec.insert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.v = load float, ptr %i.u, align 4, !tbaa !12 ; 2 uses
  %i.w = load float, ptr %i.t, align 4, !tbaa !12 ; 3 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.z = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.v
  %i.aa = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.w ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.z
  %i.ac = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ab, i64 0
  %i.ad = fcmp reassoc nsz arcp contract afn une float %i.x, 0.000000e+00
  %i.ae = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.x
  %i.af = select reassoc nsz arcp contract afn i1 %i.ad, float %i.ae, float 1.000000e+06 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.y, align 4, !tbaa !12 ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ai ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.al = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.ag
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.an = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ao = fmul reassoc nsz arcp contract afn <4 x float> %i.am, %i.an
  %.sroa.0126.12.vec.insert173 = shufflevector <4 x float> %i.ac, <4 x float> %i.ao, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ap = fcmp reassoc nsz arcp contract afn une <2 x float> %i.aj, zeroinitializer
  %i.aq = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aj
  %i.ar = select <2 x i1> %i.ap, <2 x float> %i.aq, <2 x float> splat (float 1.000000e+06) ; 2 uses
  %i.as = fmul reassoc nsz arcp contract afn float %i.af, 2.200000e+00
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.ar, splat (float 2.200000e+00)
  %i.au = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.as, i64 0
  %i.av = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0123.12.vec.insert172 = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ay = load <4 x float>, ptr %i.q, align 4, !tbaa !12 ; 3 uses
  %i.az = load float, ptr %i.r, align 4, !tbaa !12
  %i.ba = shufflevector <4 x float> %i.ay, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 2, i32 3, i32 7>
  %i.bb = shufflevector <4 x float> %i.ay, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 0, i32 7>
  %i.bc = fmul reassoc nsz arcp contract afn <4 x float> %i.ba, %i.bb
  %i.bd = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>, %i.bc ; 2 uses
  %i.be = insertelement <4 x float> %i.bd, float 0.000000e+00, i64 3
  %i.bf = extractelement <4 x float> %i.ay, i64 0
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, -2.000000e+00 ; 2 uses
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.az
  %i.bi = load <2 x float>, ptr %i.s, align 4, !tbaa !12
  %i.bj = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bh, i64 0
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bm = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bn = fadd reassoc nsz arcp contract afn <4 x float> %i.bl, %i.bm
  %.sroa.0128.12.vec.insert171 = shufflevector <4 x float> %i.bk, <4 x float> %i.bn, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.bo = load <2 x float>, ptr %i.aw, align 4, !tbaa !12 ; 3 uses
  %i.bp = load <2 x float>, ptr %i.ax, align 4, !tbaa !12
  %i.bq = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.br = insertelement <4 x float> %i.bq, float 1.000000e+00, i64 3
  %i.bs = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.bt = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.bt, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.bv = shufflevector <4 x float> %i.bs, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bw = fmul reassoc nsz arcp contract afn <4 x float> %i.br, %i.bv ; 2 uses
  %i.bx = insertelement <4 x float> %i.bw, float 1.000000e+00, i64 3 ; 2 uses
  %i.by = add nsw i64 %i.p, 3
  %i.bz = and i64 %i.by, -4                       ; 4 uses
  %.not149 = icmp eq i64 %i.p, 0
  br i1 %.not149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ca = load i32, ptr %i.e, align 4, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !139 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !140 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !141
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, f0x3C23D70A
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ce, -1.000000e+00
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ci)
  %i.ck = fpext reassoc nsz arcp contract afn float %i.cj to double
  %i.cl = fcmp reassoc nsz arcp contract afn ogt double %i.ck, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cc, -1.000000e+00
  %i.cn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cm)
  %i.co = fpext reassoc nsz arcp contract afn float %i.cn to double
  %i.cp = fcmp reassoc nsz arcp contract afn ogt double %i.co, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %i.cq = fadd reassoc nsz arcp contract afn float %spec.select, -1.000000e+00
  %i.cr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cq)
  %i.cs = fpext reassoc nsz arcp contract afn float %i.cr to double
  %i.ct = fcmp reassoc nsz arcp contract afn ogt double %i.cs, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %i.cu = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cw = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cy = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  switch i32 %i.ca, label %_process_legacy.exit [
    i32 2, label %.lr.ph.split.us.preheader
    i32 0, label %.lr.ph.split.us143.preheader
    i32 1, label %.lr.ph.split.us146.preheader
  ]

.lr.ph.split.us146.preheader:                     ; preds = %.lr.ph
  %i.da = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.cz
  br label %.lr.ph.split.us146

.lr.ph.split.us143.preheader:                     ; preds = %.lr.ph
  %i.db = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.cz
  br label %.lr.ph.split.us143

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.dc = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.af, i64 0
  %i.dd = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.de = shufflevector <4 x float> %i.dc, <4 x float> %i.dd, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_process_legacy.exit.us
  %.0142.us = phi i64 [ %i.df, %_process_legacy.exit.us ], [ 0, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.df = add i64 %.0142.us, %i.bz                ; 3 uses
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.p) ; 2 uses
  %i.dh = shl i64 %.0142.us, 2                    ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dh
  %i.dk = sub i64 %i.dg, %.0142.us
  %.not.i.us = icmp eq i64 %i.dg, %.0142.us
  br i1 %.not.i.us, label %_process_legacy.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us, %dt_XYZ_to_Lab.exit.i.us
  %.01725.i.us = phi i64 [ %i.og, %dt_XYZ_to_Lab.exit.i.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.dl = shl i64 %.01725.i.us, 2                 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dl ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load float, ptr %i.dm, align 4, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = fmul reassoc nsz arcp contract afn float %i.do, 8.620690e-03
  %i.dr = load float, ptr %i.dn, align 4, !tbaa !12
  %i.ds = load float, ptr %i.dp, align 4, !tbaa !12
  %6 = fmul reassoc nsz arcp contract afn float %i.dr, 2.000000e-03
  %7 = fmul reassoc nsz arcp contract afn float %i.ds, 5.000000e-03
  %8 = fadd reassoc nsz arcp contract afn float %i.dq, f0x3E0D3DCB ; 7 uses
  %9 = fcmp reassoc nsz arcp contract afn ogt float %8, f0x3E53DCB1
  %10 = fmul reassoc nsz arcp contract afn float %8, %8
  %i.dt = fmul reassoc nsz arcp contract afn float %10, %8
  %i.du = fmul reassoc nsz arcp contract afn float %8, f0x3E038026
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, f0xBC911AA6
  %11 = select reassoc nsz arcp contract afn i1 %9, float %i.dt, float %i.dv ; 4 uses
  %12 = fmul reassoc nsz arcp contract afn float %11, f0x3FCEF57D
  %i.dw = fmul reassoc nsz arcp contract afn float %11, f0x3FF54420
  %i.dx = fadd reassoc nsz arcp contract afn float %8, %6 ; 5 uses
  %13 = fcmp reassoc nsz arcp contract afn ogt float %i.dx, f0x3E53DCB1
  %14 = fmul reassoc nsz arcp contract afn float %i.dx, %i.dx
  %15 = fmul reassoc nsz arcp contract afn float %14, %i.dx
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, f0x3E038026
  %16 = fadd reassoc nsz arcp contract afn float %i.dy, f0xBC911AA6
  %17 = select reassoc nsz arcp contract afn i1 %13, float %15, float %16 ; 4 uses
  %18 = fsub reassoc nsz arcp contract afn float %8, %7 ; 5 uses
  %19 = fcmp reassoc nsz arcp contract afn ogt float %18, f0x3E53DCB1
  %20 = fmul reassoc nsz arcp contract afn float %18, %18
  %21 = fmul reassoc nsz arcp contract afn float %20, %18
  %i.dz = fmul reassoc nsz arcp contract afn float %18, f0x3E038026
  %22 = fadd reassoc nsz arcp contract afn float %i.dz, f0xBC911AA6
  %23 = select reassoc nsz arcp contract afn i1 %19, float %21, float %22 ; 4 uses
  %24 = fmul reassoc nsz arcp contract afn float %17, 9.642000e-01
  %25 = fmul reassoc nsz arcp contract afn float %23, f0x3F532CA5
  %26 = fmul reassoc nsz arcp contract afn float %17, f0x404162F2
  %27 = fsub reassoc nsz arcp contract afn float %26, %12
  %28 = fmul reassoc nsz arcp contract afn float %23, f0xBECF35E2
  %29 = fadd reassoc nsz arcp contract afn float %27, %28 ; 3 uses
  %30 = fmul reassoc nsz arcp contract afn float %17, f0x3F719831
  %31 = fsub reassoc nsz arcp contract afn float %i.dw, %30
  %32 = fmul reassoc nsz arcp contract afn float %23, f0x3CE2116F
  %33 = fadd reassoc nsz arcp contract afn float %31, %32 ; 3 uses
  %34 = fmul reassoc nsz arcp contract afn float %17, f0x3D8E11AE
  %35 = fmul reassoc nsz arcp contract afn float %11, f0x3E6A7CB9
  %36 = fsub reassoc nsz arcp contract afn float %34, %35
  %37 = fmul reassoc nsz arcp contract afn float %23, f0x3F94602A
  %38 = fadd reassoc nsz arcp contract afn float %36, %37 ; 2 uses
  %39 = fadd reassoc nsz arcp contract afn float %11, %24
  %40 = fadd reassoc nsz arcp contract afn float %39, %25
  %41 = fmul reassoc nsz arcp contract afn float %40, 0.000000e+00 ; 2 uses
  %42 = insertelement <4 x float> poison, float %29, i64 0
  %43 = insertelement <4 x float> %42, float %33, i64 1
  %44 = insertelement <4 x float> %43, float %38, i64 2
  %45 = insertelement <4 x float> %44, float %41, i64 3
  %i.ea = bitcast <4 x float> %45 to <4 x i32>    ; 2 uses
  %i.eb = and <4 x i32> %i.ea, splat (i32 8388607)
  %i.ec = or disjoint <4 x i32> %i.eb, splat (i32 1065353216)
  %i.ed = bitcast <4 x i32> %i.ec to <4 x float>  ; 5 uses
  %i.ee = lshr <4 x i32> %i.ea, splat (i32 23)
  %i.ef = and <4 x i32> %i.ee, splat (i32 255)
  %i.eg = add nsw <4 x i32> %i.ef, splat (i32 -127)
  %i.eh = sitofp <4 x i32> %i.eg to <4 x float>
  %i.ei = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ed, splat (float f0x3D74552F)
  %i.ej = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ei, splat (float f0xBEEE7397)
  %i.ek = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ej, %i.ed
  %i.el = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ek, splat (float f0x3FBD96DD)
  %i.em = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.el, %i.ed
  %i.en = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.em, splat (float f0xC02153F6)
  %i.eo = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.en, %i.ed
  %i.ep = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.eo, splat (float f0x4038D96C)
  %i.eq = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ed, splat (float -1.000000e+00)
  %i.er = fmul reassoc nsz arcp contract afn <4 x float> %i.ep, %i.eq
  %i.es = fadd reassoc nsz arcp contract afn <4 x float> %i.er, %i.eh
  %i.et = fmul reassoc nsz arcp contract afn <4 x float> %i.es, splat (float f0x3ED55555)
  %i.eu = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.et, <4 x float> splat (float 1.290000e+02))
  %i.ev = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eu, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.ew = fadd reassoc nsz arcp contract afn <4 x float> %i.ev, splat (float -5.000000e-01)
  %i.ex = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ew)
  %i.ey = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ex to <4 x float> ; 5 uses
  %i.ez = fcmp reassoc nsz arcp contract afn ugt float %29, 3.130800e-03
  br i1 %i.ez, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.fa = fmul reassoc nnan nsz arcp contract afn float %29, 1.292000e+01
  br label %dt_XYZ_to_sRGB.exit.i.us

bb.d:                                             ; preds = %.lr.ph.i.us
  %.sroa.014.0.vec.extract.i.i.i.i.us = extractelement <4 x float> %i.ey, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.ev, %i.ey
  %i.fb = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, f0x3C5DBE69
  %i.fd = fadd reassoc nsz arcp contract afn float %i.fc, f0x3D5509F9
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, %i.fb
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fe, f0x3E773CC5
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, %i.fb
  %i.fh = fadd reassoc nsz arcp contract afn float %i.fg, f0x3F3168B3
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, %i.fb
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fi, f0x3F800016
  %i.fk = fptosi float %.sroa.014.0.vec.extract.i.i.i.i.us to i32
  %i.fl = shl i32 %i.fk, 23
  %i.fm = add i32 %i.fl, 1065353216
  %i.fn = bitcast i32 %i.fm to float
  %i.fo = fmul reassoc nnan nsz arcp contract afn float %i.fn, 1.055000e+00
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fo, %i.fj
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fp, -5.500000e-02
  br label %dt_XYZ_to_sRGB.exit.i.us

dt_XYZ_to_sRGB.exit.i.us:                         ; preds = %bb.d, %bb.c
  %i.fr = phi reassoc nsz arcp contract afn float [ %i.fa, %bb.c ], [ %i.fq, %bb.d ]
  %.sroa.014.4.vec.extract.i.i.i.i.us = extractelement <4 x float> %i.ey, i64 1
  %foldExtExtBinop175 = fsub reassoc nsz arcp contract afn <4 x float> %i.ev, %i.ey
  %i.fs = extractelement <4 x float> %foldExtExtBinop175, i64 1 ; 4 uses
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fs, f0x3C5DBE69
  %i.fu = fadd reassoc nsz arcp contract afn float %i.ft, f0x3D5509F9
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fu, %i.fs
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fv, f0x3E773CC5
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fw, %i.fs
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fx, f0x3F3168B3
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fy, %i.fs
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, f0x3F800016
  %i.gb = fptosi float %.sroa.014.4.vec.extract.i.i.i.i.us to i32
  %i.gc = shl i32 %i.gb, 23
  %i.gd = add i32 %i.gc, 1065353216
  %i.ge = bitcast i32 %i.gd to float
  %i.gf = fmul reassoc nsz arcp contract afn float %33, 1.292000e+01
  %i.gg = fcmp reassoc nsz arcp contract afn ugt float %33, 3.130800e-03
  %i.gh = fmul reassoc nnan nsz arcp contract afn float %i.ge, 1.055000e+00
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gh, %i.ga
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gi, -5.500000e-02
  %i.gk = select reassoc nsz arcp contract afn i1 %i.gg, float %i.gj, float %i.gf
  %46 = insertelement <2 x float> poison, float %38, i64 0
  %47 = insertelement <2 x float> %46, float %41, i64 1 ; 2 uses
  %i.gl = fcmp reassoc nsz arcp contract afn ugt <2 x float> %47, splat (float 3.130800e-03)
  %i.gm = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gn = shufflevector <4 x float> %i.ey, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.go = fsub reassoc nsz arcp contract afn <2 x float> %i.gm, %i.gn ; 4 uses
  %i.gp = fmul reassoc nsz arcp contract afn <2 x float> %i.go, splat (float f0x3C5DBE69)
  %i.gq = fadd reassoc nsz arcp contract afn <2 x float> %i.gp, splat (float f0x3D5509F9)
  %i.gr = fmul reassoc nsz arcp contract afn <2 x float> %i.gq, %i.go
  %i.gs = fadd reassoc nsz arcp contract afn <2 x float> %i.gr, splat (float f0x3E773CC5)
  %i.gt = fmul reassoc nsz arcp contract afn <2 x float> %i.gs, %i.go
  %i.gu = fadd reassoc nsz arcp contract afn <2 x float> %i.gt, splat (float f0x3F3168B3)
  %i.gv = fmul reassoc nsz arcp contract afn <2 x float> %i.gu, %i.go
  %i.gw = fadd reassoc nsz arcp contract afn <2 x float> %i.gv, splat (float f0x3F800016)
  %i.gx = fptosi <2 x float> %i.gn to <2 x i32>
  %i.gy = shl <2 x i32> %i.gx, splat (i32 23)
  %i.gz = add <2 x i32> %i.gy, splat (i32 1065353216)
  %i.ha = bitcast <2 x i32> %i.gz to <2 x float>
  %i.hb = fmul reassoc nsz arcp contract afn <2 x float> %47, <float 1.292000e+01, float 1.000000e+00>
  %i.hc = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ha, splat (float 1.055000e+00)
  %i.hd = fmul reassoc nsz arcp contract afn <2 x float> %i.hc, %i.gw
  %i.he = fadd reassoc nsz arcp contract afn <2 x float> %i.hd, splat (float -5.500000e-02)
  %i.hf = select <2 x i1> %i.gl, <2 x float> %i.he, <2 x float> %i.hb
  %i.hg = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.hh = insertelement <4 x float> %i.hg, float %i.gk, i64 1
  %i.hi = shufflevector <2 x float> %i.hf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hj = shufflevector <4 x float> %i.hh, <4 x float> %i.hi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hk = fadd reassoc nsz arcp contract afn <4 x float> %i.hj, splat (float -1.000000e+00)
  %i.hl = fmul reassoc nsz arcp contract afn <4 x float> %i.hk, %i.bd
  %i.hm = fadd reassoc nsz arcp contract afn <4 x float> %i.hl, splat (float 1.000000e+00)
  %i.hn = fmul reassoc nsz arcp contract afn <4 x float> %i.hm, %i.bw
  %i.ho = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hn, <4 x float> zeroinitializer)
  %bc.i.us = bitcast <4 x float> %i.ho to <4 x i32> ; 2 uses
  %i.hp = and <4 x i32> %bc.i.us, splat (i32 8388607)
  %i.hq = or disjoint <4 x i32> %i.hp, splat (i32 1065353216)
  %i.hr = bitcast <4 x i32> %i.hq to <4 x float>  ; 5 uses
  %i.hs = lshr <4 x i32> %bc.i.us, splat (i32 23)
  %i.ht = and <4 x i32> %i.hs, splat (i32 255)
  %i.hu = add nsw <4 x i32> %i.ht, splat (i32 -127)
  %i.hv = sitofp <4 x i32> %i.hu to <4 x float>
  %i.hw = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.hr, splat (float f0x3D74552F)
  %i.hx = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.hw, splat (float f0xBEEE7397)
  %i.hy = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.hx, %i.hr
  %i.hz = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.hy, splat (float f0x3FBD96DD)
  %i.ia = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.hz, %i.hr
  %i.ib = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ia, splat (float f0xC02153F6)
  %i.ic = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ib, %i.hr
  %i.id = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ic, splat (float f0x4038D96C)
  %i.ie = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.hr, splat (float -1.000000e+00)
  %i.if = fmul reassoc nsz arcp contract afn <4 x float> %i.id, %i.ie
  %i.ig = fadd reassoc nsz arcp contract afn <4 x float> %i.if, %i.hv
  %i.ih = fmul reassoc nsz arcp contract afn <4 x float> %i.ig, %i.de
  %i.ii = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ih, <4 x float> splat (float 1.290000e+02))
  %i.ij = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ii, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.ik = fadd reassoc nsz arcp contract afn <4 x float> %i.ij, splat (float -5.000000e-01)
  %i.il = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ik)
  %i.im = sitofp reassoc nsz arcp contract afn <4 x i32> %i.il to <4 x float> ; 3 uses
  %i.in = insertelement <4 x float> %i.ij, float 1.000000e+00, i64 3
  %i.io = insertelement <4 x float> %i.im, float 0.000000e+00, i64 3
  %i.ip = fsub reassoc nsz arcp contract afn <4 x float> %i.in, %i.io ; 5 uses
  %i.iq = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.ij, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ir = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.im, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.is = fsub reassoc nsz arcp contract afn <4 x float> %i.iq, %i.ir ; 3 uses
  %i.it = fptosi <4 x float> %i.im to <4 x i32>
  %i.iu = shl <4 x i32> %i.it, splat (i32 23)
  %i.iv = add <4 x i32> %i.iu, splat (i32 1065353216)
  %i.iw = extractelement <4 x float> %i.ip, i64 2 ; 3 uses
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iw, f0x3C5DBE69
  %i.iy = fadd reassoc nsz arcp contract afn float %i.ix, f0x3D5509F9
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, %i.iw
  %i.ja = fadd reassoc nsz arcp contract afn float %i.iz, f0x3E773CC5
  %i.jb = fmul reassoc nsz arcp contract afn float %i.ja, %i.iw
  %i.jc = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.jb, i64 2
  %i.jd = fmul reassoc nsz arcp contract afn <4 x float> %i.ip, <float f0x3C5DBE69, float f0x3C5DBE69, float poison, float poison>
  %i.je = fadd reassoc nsz arcp contract afn <4 x float> %i.jd, <float f0x3D5509F9, float f0x3D5509F9, float poison, float poison>
  %i.jf = fmul reassoc nsz arcp contract afn <4 x float> %i.je, %i.ip
  %i.jg = fadd reassoc nsz arcp contract afn <4 x float> %i.jf, <float f0x3E773CC5, float f0x3E773CC5, float poison, float poison>
  %i.jh = fmul reassoc nsz arcp contract afn <4 x float> %i.jg, %i.ip
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> %i.jc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jj = fadd reassoc nsz arcp contract afn <4 x float> %i.ji, <float f0x3F3168B3, float f0x3F3168B3, float f0x3F3168B3, float -0.000000e+00>
  %i.jk = fmul reassoc nsz arcp contract afn <4 x float> %i.jj, %i.ip
  %i.jl = fadd reassoc nsz arcp contract afn <4 x float> %i.jk, <float f0x3F800016, float f0x3F800016, float f0x3F800016, float f0x3F72A76F>
  %i.jm = extractelement <4 x float> %i.is, i64 3 ; 2 uses
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, f0x3C5DBE69
  %i.jo = fadd reassoc nsz arcp contract afn float %i.jn, f0x3D5509F9
  %i.jp = fmul reassoc nsz arcp contract afn float %i.jo, %i.jm
  %i.jq = fadd reassoc nsz arcp contract afn float %i.jp, f0x3E773CC5
  %i.jr = insertelement <4 x float> <float f0x3F72A76F, float -0.000000e+00, float f0x3F72A76F, float poison>, float %i.jq, i64 3
  %i.js = fmul reassoc nsz arcp contract afn <4 x float> %i.jr, %i.is
  %i.jt = fadd reassoc nsz arcp contract afn <4 x float> %i.js, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float f0x3F3168B3>
  %i.ju = fmul reassoc nsz arcp contract afn <4 x float> %i.jt, %i.is
  %i.jv = fadd reassoc nsz arcp contract afn <4 x float> %i.ju, <float -0.000000e+00, float f0x3F72A76F, float -0.000000e+00, float f0x3F800016>
  %i.jw = bitcast <4 x i32> %i.iv to <4 x float>
  %i.jx = fmul reassoc nsz arcp contract afn <4 x float> %i.jl, %i.jw ; 3 uses
  %i.jy = extractelement <4 x float> %i.jx, i64 2 ; 2 uses
  %i.jz = fmul reassoc nsz arcp contract afn float %i.jy, f0x3D9E8391
  %i.ka = fmul reassoc nsz arcp contract afn <4 x float> %i.jx, %i.jv
  %i.kb = fadd reassoc nsz arcp contract afn <4 x float> %i.ka, splat (float f0x3D55891A)
  %i.kc = bitcast <4 x float> %i.kb to <4 x i32>  ; 2 uses
  %i.kd = and <4 x i32> %i.kc, splat (i32 8388607)
  %i.ke = or disjoint <4 x i32> %i.kd, splat (i32 1065353216)
  %i.kf = bitcast <4 x i32> %i.ke to <4 x float>  ; 5 uses
  %i.kg = lshr <4 x i32> %i.kc, splat (i32 23)
  %i.kh = and <4 x i32> %i.kg, splat (i32 255)
  %i.ki = add nsw <4 x i32> %i.kh, splat (i32 -127)
  %i.kj = sitofp <4 x i32> %i.ki to <4 x float>
  %i.kk = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.kf, splat (float f0x3D74552F)
  %i.kl = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.kk, splat (float f0xBEEE7397)
  %i.km = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.kl, %i.kf
  %i.kn = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.km, splat (float f0x3FBD96DD)
  %i.ko = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.kn, %i.kf
  %i.kp = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ko, splat (float f0xC02153F6)
  %i.kq = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.kp, %i.kf
  %i.kr = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.kq, splat (float f0x4038D96C)
  %i.ks = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.kf, splat (float -1.000000e+00)
  %i.kt = fmul reassoc nsz arcp contract afn <4 x float> %i.kr, %i.ks
  %i.ku = fadd reassoc nsz arcp contract afn <4 x float> %i.kt, %i.kj
  %i.kv = fmul reassoc nsz arcp contract afn <4 x float> %i.ku, splat (float 2.400000e+00)
  %i.kw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kv, <4 x float> splat (float 1.290000e+02))
  %i.kx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kw, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.ky = fadd reassoc nsz arcp contract afn <4 x float> %i.kx, splat (float -5.000000e-01)
  %i.kz = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ky)
  %i.la = sitofp reassoc nsz arcp contract afn <4 x i32> %i.kz to <4 x float> ; 3 uses
  %.sroa.014.8.vec.extract.i.i.i.i.i.us = extractelement <4 x float> %i.la, i64 2
  %foldExtExtBinop177 = fsub reassoc nsz arcp contract afn <4 x float> %i.kx, %i.la
  %i.lb = extractelement <4 x float> %foldExtExtBinop177, i64 2 ; 4 uses
  %i.lc = fptosi float %.sroa.014.8.vec.extract.i.i.i.i.i.us to i32
  %i.ld = shl i32 %i.lc, 23
  %i.le = add i32 %i.ld, 1065353216
  %i.lf = fmul reassoc nsz arcp contract afn float %i.lb, f0x3C5DBE69
  %i.lg = fadd reassoc nsz arcp contract afn float %i.lf, f0x3D5509F9
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lg, %i.lb
  %i.li = fadd reassoc nsz arcp contract afn float %i.lh, f0x3E773CC5
  %i.lj = fmul reassoc nsz arcp contract afn float %i.li, %i.lb
  %i.lk = fadd reassoc nsz arcp contract afn float %i.lj, f0x3F3168B3
  %i.ll = fmul reassoc nsz arcp contract afn float %i.lk, %i.lb
  %i.lm = fadd reassoc nsz arcp contract afn float %i.ll, f0x3F800016
  %i.ln = bitcast i32 %i.le to float
  %i.lo = fmul reassoc nsz arcp contract afn float %i.lm, %i.ln
  %i.lp = fcmp reassoc nsz arcp contract afn ugt float %i.jy, 4.045000e-02
  %.sroa.speculated27.i.i.i.us = select i1 %i.lp, float %i.lo, float %i.jz ; 4 uses
  %i.lq = fmul reassoc nsz arcp contract afn float %.sroa.speculated27.i.i.i.us, f0x3E1283AB
  %i.lr = fmul reassoc nsz arcp contract afn float %.sroa.speculated27.i.i.i.us, 6.061690e-02
  %i.ls = fmul reassoc nsz arcp contract afn float %.sroa.speculated27.i.i.i.us, f0x3F36D410
  %i.lt = shufflevector <4 x float> %i.jx, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.lu = fmul reassoc nsz arcp contract afn <2 x float> %i.lt, splat (float f0x3D9E8391)
  %i.lv = shufflevector <4 x float> %i.kx, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.lw = shufflevector <4 x float> %i.la, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.lx = fsub reassoc nsz arcp contract afn <2 x float> %i.lv, %i.lw ; 4 uses
  %i.ly = fptosi <2 x float> %i.lw to <2 x i32>
  %i.lz = shl <2 x i32> %i.ly, splat (i32 23)
  %i.ma = add <2 x i32> %i.lz, splat (i32 1065353216)
  %i.mb = fmul reassoc nsz arcp contract afn <2 x float> %i.lx, splat (float f0x3C5DBE69)
  %i.mc = fadd reassoc nsz arcp contract afn <2 x float> %i.mb, splat (float f0x3D5509F9)
  %i.md = fmul reassoc nsz arcp contract afn <2 x float> %i.mc, %i.lx
  %i.me = fadd reassoc nsz arcp contract afn <2 x float> %i.md, splat (float f0x3E773CC5)
  %i.mf = fmul reassoc nsz arcp contract afn <2 x float> %i.me, %i.lx
  %i.mg = fadd reassoc nsz arcp contract afn <2 x float> %i.mf, splat (float f0x3F3168B3)
  %i.mh = fmul reassoc nsz arcp contract afn <2 x float> %i.mg, %i.lx
  %i.mi = fadd reassoc nsz arcp contract afn <2 x float> %i.mh, splat (float f0x3F800016)
  %i.mj = bitcast <2 x i32> %i.ma to <2 x float>
  %i.mk = fmul reassoc nsz arcp contract afn <2 x float> %i.mi, %i.mj
  %i.ml = fcmp reassoc nsz arcp contract afn ugt <2 x float> %i.lt, splat (float 4.045000e-02)
  %i.mm = select <2 x i1> %i.ml, <2 x float> %i.mk, <2 x float> %i.lu ; 2 uses
  %i.mn = shufflevector <2 x float> %i.mm, <2 x float> poison, <4 x i32> zeroinitializer
  %i.mo = fmul reassoc nsz arcp contract afn <4 x float> %i.mn, <float f0x3EDF452F, float f0x3E63D838, float 1.393220e-02, float 1.000000e+00>
  %i.mp = shufflevector <2 x float> %i.mm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mq = fmul reassoc nsz arcp contract afn <4 x float> %i.mp, <float f0x3EC5273A, float f0x3F37855B, float f0x3DC6DEB9, float 1.000000e+00>
  %i.mr = fadd reassoc nsz arcp contract afn <4 x float> %i.mq, %i.mo ; 4 uses
  %i.ms = extractelement <4 x float> %i.mr, i64 0
  %i.mt = fadd reassoc nsz arcp contract afn float %i.ms, %i.lq ; 2 uses
  %i.mu = extractelement <4 x float> %i.mr, i64 1
  %i.mv = fadd reassoc nsz arcp contract afn float %i.mu, %i.lr ; 3 uses
  %i.mw = extractelement <4 x float> %i.mr, i64 2
  %i.mx = fadd reassoc nsz arcp contract afn float %i.mw, %i.ls ; 2 uses
  %i.my = extractelement <4 x float> %i.mr, i64 3
  %i.mz = fadd reassoc nsz arcp contract afn float %i.my, %.sroa.speculated27.i.i.i.us
  %i.na = fmul reassoc nsz arcp contract afn float %i.mt, f0x3F84C0A6 ; 2 uses
  %i.nb = fcmp reassoc nsz arcp contract afn ogt float %i.na, f0x3C111AA7
  br i1 %i.nb, label %bb.f, label %bb.e

bb.e:                                             ; preds = %dt_XYZ_to_sRGB.exit.i.us
  %i.nc = fmul reassoc nsz arcp contract afn float %i.mt, f0x410137F7
  %i.nd = fadd reassoc nsz arcp contract afn float %i.nc, f0x3E0D3DCB
  br label %bb.g

bb.f:                                             ; preds = %dt_XYZ_to_sRGB.exit.i.us
  %i.ne = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.na) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.nf = phi reassoc nsz arcp contract afn float [ %i.ne, %bb.f ], [ %i.nd, %bb.e ]
  %i.ng = fcmp reassoc nsz arcp contract afn ogt float %i.mv, f0x3C111AA7
  br i1 %i.ng, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.nh = fmul reassoc nsz arcp contract afn float %i.mv, f0x40F92F69
  %i.ni = fadd reassoc nsz arcp contract afn float %i.nh, f0x3E0D3DCB
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.nj = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.mv) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.nk = phi reassoc nsz arcp contract afn float [ %i.nj, %bb.i ], [ %i.ni, %bb.h ] ; 3 uses
  %i.nl = fmul reassoc nsz arcp contract afn float %i.mx, f0x3F9B2B9B ; 2 uses
  %i.nm = fcmp reassoc nsz arcp contract afn ogt float %i.nl, f0x3C111AA7
  br i1 %i.nm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.nn = fmul reassoc nsz arcp contract afn float %i.mx, f0x41170A26
  %i.no = fadd reassoc nsz arcp contract afn float %i.nn, f0x3E0D3DCB
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.np = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.nl) #27
  br label %bb.m

end_hunk_0
begin_hunk_1_@color_picker_apply:bb.a

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @apply_autoluma(ptr noundef nonnull %0)
  br label %apply_lift_neutralize.exit

bb.x:                                             ; preds = %bb.v
  %i.wt = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !113
  %i.wv = icmp eq ptr %1, %i.wu
  br i1 %i.wv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @apply_autocolor(ptr noundef nonnull %0)
  br label %apply_lift_neutralize.exit

bb.z:                                             ; preds = %bb.x
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #23
  br label %apply_lift_neutralize.exit

apply_lift_neutralize.exit:                       ; preds = %bb.u, %bb.t, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.b, %bb.w, %bb.z, %bb.y
  %.val = load ptr, ptr %i.a, align 16, !tbaa !47 ; 8 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.val, i64 324
  %i.wx = getelementptr inbounds nuw i8, ptr %.val, i64 332
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !15
  %i.wz = icmp eq i32 %i.wy, 1
  br i1 %i.wz, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %apply_lift_neutralize.exit
  %i.xa = getelementptr inbounds nuw i8, ptr %.val, i64 328
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !15
  %i.xc = icmp eq i32 %i.xb, 1
  br i1 %i.xc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.xd = load i32, ptr %i.ww, align 4, !tbaa !15
  %i.xe = icmp eq i32 %i.xd, 1
  br i1 %i.xe, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %apply_lift_neutralize.exit
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.str.75.sink.i = phi ptr [ @.str.75, %bb.ac ], [ @.str.93, %bb.ab ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.val, i64 248
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !112
  %i.xh = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.xg, ptr noundef null, ptr noundef nonnull %.str.75.sink.i) #23 ; 0 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.val, i64 300
  %i.xj = getelementptr inbounds nuw i8, ptr %.val, i64 308
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !15
  %i.xl = icmp eq i32 %i.xk, 1
  br i1 %i.xl, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.xm = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !15
  %i.xo = icmp eq i32 %i.xn, 1
  br i1 %i.xo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.xp = load i32, ptr %i.xi, align 4, !tbaa !15
  %i.xq = icmp eq i32 %i.xp, 1
  br i1 %i.xq, label %_check_tuner_picker_labels.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  br label %_check_tuner_picker_labels.exit

_check_tuner_picker_labels.exit:                  ; preds = %bb.af, %bb.ag
  %.str.77.sink.i = phi ptr [ @.str.77, %bb.ag ], [ @.str.94, %bb.af ]
  %i.xr = getelementptr inbounds nuw i8, ptr %.val, i64 256
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !113
  %i.xt = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.xs, ptr noundef null, ptr noundef nonnull %.str.77.sink.i) #23 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_autoluma(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !47  ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 324 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.i = load float, ptr %i.h, align 16, !tbaa !12
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 8.620690e-03
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, f0x3E0D3DCB ; 5 uses
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %i.k, f0x3E53DCB1
  %i.m = fmul reassoc nsz arcp contract afn float %i.k, %i.k
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, %i.k
  %i.o = fmul reassoc nsz arcp contract afn float %i.k, f0x3E038026
  %i.p = fadd reassoc nsz arcp contract afn float %i.o, f0xBC911AA6
  %i.q = select reassoc nsz arcp contract afn i1 %i.l, float %i.n, float %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  store float %i.q, ptr %i.r, align 8, !tbaa !12
  store i32 2, ptr %i.e, align 4, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 328 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !15
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.w = load float, ptr %i.v, align 16, !tbaa !12
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, 8.620690e-03
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, f0x3E0D3DCB ; 5 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt float %i.y, f0x3E53DCB1
  %i.aa = fmul reassoc nsz arcp contract afn float %i.y, %i.y
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.y
  %i.ac = fmul reassoc nsz arcp contract afn float %i.y, f0x3E038026
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, f0xBC911AA6
  %i.ae = select reassoc nsz arcp contract afn i1 %i.z, float %i.ab, float %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 316
  store float %i.ae, ptr %i.af, align 4, !tbaa !12
  store i32 2, ptr %i.s, align 4, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 332 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !15
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ak = load float, ptr %i.aj, align 16, !tbaa !12
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, 8.620690e-03
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, f0x3E0D3DCB ; 5 uses
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.am, f0x3E53DCB1
  %i.ao = fmul reassoc nsz arcp contract afn float %i.am, %i.am
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, %i.am
  %i.aq = fmul reassoc nsz arcp contract afn float %i.am, f0x3E038026
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, f0xBC911AA6
  %i.as = select reassoc nsz arcp contract afn i1 %i.an, float %i.ap, float %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  store float %i.as, ptr %i.at, align 8, !tbaa !12
  store i32 2, ptr %i.ag, align 4, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %0, i32 noundef 1) #23
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 316
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %.pre = load float, ptr %i.au, align 4, !tbaa !12
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.bc = atomicrmw add ptr %i.bb, i32 1 seq_cst, align 4 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !107
  %i.bf = load float, ptr %i.au, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.be, float noundef %i.bf) #23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !108
  %i.bi = load float, ptr %i.az, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bh, float noundef %i.bi) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !109
  %i.bl = load float, ptr %i.ax, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bk, float noundef %i.bl) #23
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  %i.bo = atomicrmw sub ptr %i.bn, i32 1 seq_cst, align 4 ; 0 uses
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.bp, ptr noundef nonnull %0, i32 noundef 1) #23
  ret void

bb.i:                                             ; preds = %bb.g, %bb.i
  %i.bq = phi float [ %.pre, %bb.g ], [ %i.cb, %bb.i ]
  %.071 = phi i32 [ 0, %bb.g ], [ %i.co, %bb.i ]
  %i.br = load float, ptr %i.aw, align 8, !tbaa !12
  %i.bs = fdiv reassoc nsz arcp contract afn float %i.bq, %i.br ; 3 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ogt float %i.bs, 2.000000e+00
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bs, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.bu, float 0.000000e+00, float %i.bs
  %i.bv = select reassoc nsz arcp contract afn i1 %i.bt, float 2.000000e+00, float %spec.select ; 3 uses
  store float %i.bv, ptr %i.ax, align 4, !tbaa !12
  %i.bw = load float, ptr %i.av, align 8, !tbaa !12
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bv, %i.bw
  %i.by = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bx ; 3 uses
  %i.bz = fcmp reassoc nsz arcp contract afn ogt float %i.by, 2.000000e+00
  %i.ca = fcmp reassoc nsz arcp contract afn olt float %i.by, 0.000000e+00
  %spec.select61 = select reassoc nsz arcp contract afn i1 %i.ca, float 0.000000e+00, float %i.by
  %i.cb = select reassoc nsz arcp contract afn i1 %i.bz, float 2.000000e+00, float %spec.select61 ; 3 uses
  store float %i.cb, ptr %i.au, align 4, !tbaa !12
  %i.cc = load float, ptr %i.ay, align 4, !tbaa !12
  %i.cd = fmul reassoc nsz arcp contract afn float %i.bv, %i.cc
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, %i.cb
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, -1.000000e+00 ; 2 uses
  %i.cg = fcmp reassoc nsz arcp contract afn ogt float %i.cf, f0x358637BD
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.cf)
  %i.ci = fdiv reassoc nsz arcp contract afn float f0xBFD88AB6, %i.ch
  %i.cj = select i1 %i.cg, float %i.ci, float f0x3DFAC7F8 ; 2 uses
  %i.ck = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.cj ; 2 uses
  %i.cl = fcmp reassoc nsz arcp contract afn ogt float %i.ck, 2.000000e+00
  %i.cm = fcmp reassoc nsz arcp contract afn ogt float %i.cj, 2.000000e+00
  %spec.select70 = select reassoc nsz arcp contract afn i1 %i.cm, float 0.000000e+00, float %i.ck
  %i.cn = select reassoc nsz arcp contract afn i1 %i.cl, float 2.000000e+00, float %spec.select70
  store float %i.cn, ptr %i.az, align 4, !tbaa !12
  %i.co = add nuw nsw i32 %.071, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, 100
  br i1 %exitcond.not, label %bb.h, label %bb.i
}

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_autocolor(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !47  ; 35 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 300 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 308 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i32, ptr %i.e, align 4, !tbaa !15
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = icmp eq i32 %i.j, 0
  %.pre274 = load i32, ptr %i.e, align 4, !tbaa !15 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %.pre274, 0
  br i1 %i.l, label %bb.d, label %.preheader197

bb.d:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  %i.m = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.c ], [ %.pre274, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.p = load float, ptr %i.o, align 4, !tbaa !12
  %i.q = load float, ptr %i.n, align 16, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.s = load float, ptr %i.r, align 8, !tbaa !12
  %i.t = fmul reassoc nsz arcp contract afn float %i.p, 2.000000e-03
  %i.u = fmul reassoc nsz arcp contract afn float %i.q, 8.620690e-03
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, f0x3E0D3DCB ; 7 uses
  %i.w = fmul reassoc nsz arcp contract afn float %i.s, 5.000000e-03
  %i.x = fadd reassoc nsz arcp contract afn float %i.v, %i.t ; 5 uses
  %i.y = fcmp reassoc nsz arcp contract afn ogt float %i.x, f0x3E53DCB1
  %i.z = fmul reassoc nsz arcp contract afn float %i.x, %i.x
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.x
  %i.ab = fmul reassoc nsz arcp contract afn float %i.x, f0x3E038026
  %i.ac = fadd reassoc nsz arcp contract afn float %i.ab, f0xBC911AA6
  %i.ad = select reassoc nsz arcp contract afn i1 %i.y, float %i.aa, float %i.ac ; 3 uses
  %i.ae = fcmp reassoc nsz arcp contract afn ogt float %i.v, f0x3E53DCB1
  %i.af = fmul reassoc nsz arcp contract afn float %i.v, %i.v
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.v
  %i.ah = fmul reassoc nsz arcp contract afn float %i.v, f0x3E038026
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, f0xBC911AA6
  %i.aj = select reassoc nsz arcp contract afn i1 %i.ae, float %i.ag, float %i.ai ; 3 uses
  %i.ak = fsub reassoc nsz arcp contract afn float %i.v, %i.w ; 5 uses
  %i.al = fcmp reassoc nsz arcp contract afn ogt float %i.ak, f0x3E53DCB1
  %i.am = fmul reassoc nsz arcp contract afn float %i.ak, %i.ak
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.ak
  %i.ao = fmul reassoc nsz arcp contract afn float %i.ak, f0x3E038026
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, f0xBC911AA6
  %i.aq = select reassoc nsz arcp contract afn i1 %i.al, float %i.an, float %i.ap ; 3 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ad, 9.642000e-01
  %i.as = fmul reassoc nsz arcp contract afn float %i.ad, f0x3FA61CF4
  %i.at = fmul reassoc nsz arcp contract afn float %i.aj, f0xBE82DEFC
  %i.au = fadd reassoc nsz arcp contract afn float %i.as, %i.at
  %i.av = fmul reassoc nsz arcp contract afn float %i.aq, f0xBD2CB230
  %i.aw = fadd reassoc nsz arcp contract afn float %i.au, %i.av ; 3 uses
  %i.ax = fmul reassoc nsz arcp contract afn float %i.ad, f0xBF066D1A
  %i.ay = fmul reassoc nsz arcp contract afn float %i.aj, f0x3FC10BA0
  %i.az = fadd reassoc nsz arcp contract afn float %i.ax, %i.ay
  %i.ba = fmul reassoc nsz arcp contract afn float %i.aq, f0x3C8AC481
  %i.bb = fadd reassoc nsz arcp contract afn float %i.az, %i.ba ; 3 uses
  %i.bc = fadd reassoc nsz arcp contract afn float %i.ar, %i.aj
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, 0.000000e+00
  %i.be = fmul reassoc nsz arcp contract afn float %i.aq, f0x3F7FE762
  %i.bf = fadd reassoc nsz arcp contract afn float %i.bd, %i.be ; 3 uses
  %i.bg = icmp eq i32 %i.m, 0
  br i1 %i.bg, label %.preheader200, label %bb.e

.preheader200:                                    ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  store float %i.aw, ptr %i.bh, align 4, !tbaa !12
  %.sroa.7264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 268
  store float %i.bb, ptr %.sroa.7264.0..sroa_idx, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store float %i.bf, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !12
  store i32 2, ptr %i.e, align 4, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %.preheader200, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 304 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !15
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.preheader199, label %bb.f

.preheader199:                                    ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 276
  store float %i.aw, ptr %i.bl, align 4, !tbaa !12
  %.sroa.7264.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  store float %i.bb, ptr %.sroa.7264.0..sroa_idx265, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx269 = getelementptr inbounds nuw i8, ptr %i.d, i64 284
  store float %i.bf, ptr %.sroa.8.0..sroa_idx269, align 4, !tbaa !12
  store i32 2, ptr %i.bi, align 4, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %.preheader199, %bb.e
  br i1 %i.h, label %.preheader198, label %.preheader197

.preheader198:                                    ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  store float %i.aw, ptr %i.bm, align 4, !tbaa !12
  %.sroa.7264.0..sroa_idx267 = getelementptr inbounds nuw i8, ptr %i.d, i64 292
  store float %i.bb, ptr %.sroa.7264.0..sroa_idx267, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  store float %i.bf, ptr %.sroa.8.0..sroa_idx271, align 4, !tbaa !12
  store i32 2, ptr %i.f, align 4, !tbaa !15
  br label %.preheader197

.preheader197:                                    ; preds = %bb.f, %.preheader198, %bb.c
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %0, i32 noundef 1) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 276
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 292
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.by = load float, ptr %i.bx, align 4, !tbaa !12
  %i.bz = fmul reassoc nsz arcp contract afn float %i.bp, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 284
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !12
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.bp
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !12
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, %i.bp
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !12
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, -1.000000e+00
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !12
  %i.cn = load float, ptr %i.bv, align 4, !tbaa !12
  %i.co = load <2 x float>, ptr %i.bu, align 4, !tbaa !12
  %i.cp = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cr = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.cq
  %i.cs = load <2 x float>, ptr %i.bn, align 4, !tbaa !12
  %i.ct = fmul reassoc nsz arcp contract afn <2 x float> %i.cq, %i.cs
  %i.cu = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.bt ; 4 uses
  %i.cv = fadd reassoc nsz arcp contract afn float %i.br, -1.000000e+00 ; 4 uses
  %i.cw = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cy = fadd reassoc nsz arcp contract afn <2 x float> %i.cx, %i.ct ; 2 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cy, zeroinitializer
  %i.da = select <2 x i1> %i.cz, <2 x float> %i.cy, <2 x float> zeroinitializer
  %i.db = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dd = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.da, <2 x float> %i.dc) ; 3 uses
  %i.de = fadd reassoc nsz arcp contract afn <2 x float> %i.cr, %i.cx ; 2 uses
  %i.df = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.de, zeroinitializer
  %i.dg = select <2 x i1> %i.df, <2 x float> %i.de, <2 x float> zeroinitializer
  %i.dh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.dg, <2 x float> %i.dc) ; 3 uses
  %i.di = load float, ptr %i.bw, align 4, !tbaa !12
  %i.dj = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %i.di, i64 1
  %i.dl = fmul reassoc nsz arcp contract afn <2 x float> %i.dk, %i.cq
  %i.dm = fadd reassoc nsz arcp contract afn <2 x float> %i.dl, %i.cx ; 2 uses
  %i.dn = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.dm, zeroinitializer
  %i.do = select <2 x i1> %i.dn, <2 x float> %i.dm, <2 x float> zeroinitializer
  %i.dp = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.do, <2 x float> %i.dc) ; 4 uses
  %i.dq = fadd reassoc nsz arcp contract afn float %i.cv, %i.bz ; 2 uses
  %i.dr = fcmp reassoc nsz arcp contract afn ogt float %i.dq, 0.000000e+00
  %i.ds = select reassoc nsz arcp contract afn i1 %i.dr, float %i.dq, float 0.000000e+00
  %i.dt = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.ds, float %i.cu) ; 2 uses
  %i.du = fadd reassoc nsz arcp contract afn float %i.cc, %i.cv ; 2 uses
  %i.dv = fcmp reassoc nsz arcp contract afn ogt float %i.du, 0.000000e+00
  %i.dw = select reassoc nsz arcp contract afn i1 %i.dv, float %i.du, float 0.000000e+00
  %i.dx = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.dw, float %i.cu) ; 2 uses
  %i.dy = fadd reassoc nsz arcp contract afn float %i.cf, %i.cv ; 2 uses
  %i.dz = fcmp reassoc nsz arcp contract afn ogt float %i.dy, 0.000000e+00
  %i.ea = select reassoc nsz arcp contract afn i1 %i.dz, float %i.dy, float 0.000000e+00
end_hunk_1
