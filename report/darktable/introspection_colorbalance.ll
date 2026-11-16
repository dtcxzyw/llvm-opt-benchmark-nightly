Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalance?download=true
inline.NumInlined: 167
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@init_presets:bb.a
  tail call fastcc void @add_preset(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15)
  tail call fastcc void @add_preset(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.15)
  tail call fastcc void @add_preset(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_preset(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %i.d = trunc i64 %i.c to i32
  %i.e = call ptr @dt_exif_xmp_decode(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef nonnull %i.a) #23 ; 3 uses
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.g = trunc i64 %i.f to i32
  %i.h = call ptr @dt_exif_xmp_decode(ptr noundef nonnull %3, i32 noundef %i.g, ptr noundef nonnull %i.b) #23 ; 3 uses
  %i.i = call i32 @dt_develop_blend_version() #23
  %.not = icmp eq i32 %i.i, 8
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noalias dereferenceable_or_null(420) ptr @malloc(i64 noundef 420) #25 ; 3 uses
  %i.k = call i32 @dt_develop_blend_version() #23
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
  %6 = shufflevector <4 x float> %i.dc, <4 x float> %i.dd, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_process_legacy.exit.us
  %.0142.us = phi i64 [ %i.de, %_process_legacy.exit.us ], [ 0, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.de = add i64 %.0142.us, %i.bz                ; 3 uses
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.de, i64 %i.p) ; 2 uses
  %i.dg = shl i64 %.0142.us, 2                    ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dg
  %i.dj = sub i64 %i.df, %.0142.us
  %.not.i.us = icmp eq i64 %i.df, %.0142.us
  br i1 %.not.i.us, label %_process_legacy.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us, %dt_XYZ_to_Lab.exit.i.us
  %.01725.i.us = phi i64 [ %i.pj, %dt_XYZ_to_Lab.exit.i.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.dk = shl i64 %.01725.i.us, 2                 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dk ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load float, ptr %i.dl, align 4, !tbaa !12
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dp = fmul reassoc nsz arcp contract afn float %i.dn, 8.620690e-03
  %i.dq = load float, ptr %i.dm, align 4, !tbaa !12
  %i.dr = load float, ptr %i.do, align 4, !tbaa !12
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dq, 2.000000e-03
  %i.dt = fmul reassoc nsz arcp contract afn float %i.dr, 5.000000e-03
  %i.du = fadd reassoc nsz arcp contract afn float %i.dp, f0x3E0D3DCB ; 5 uses
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, %i.du
  %i.dw = fadd reassoc nsz arcp contract afn float %i.du, %i.ds ; 4 uses
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, %i.dw ; 2 uses
  %i.dy = fsub reassoc nsz arcp contract afn float %i.du, %i.dt ; 3 uses
  %i.dz = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.ea = insertelement <4 x float> %i.dz, float %i.du, i64 1
  %i.eb = insertelement <4 x float> %i.ea, float %i.dy, i64 3 ; 2 uses
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.ed = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ec, splat (float f0x3E53DCB1)
  %i.ee = fmul reassoc nsz arcp contract afn float %i.dy, %i.dy
  %i.ef = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.eg = insertelement <4 x float> %i.ef, float %i.dv, i64 1
  %i.eh = insertelement <4 x float> %i.eg, float %i.dw, i64 2
  %i.ei = insertelement <4 x float> %i.eh, float %i.ee, i64 3
  %i.ej = insertelement <4 x float> %i.eb, float %i.dx, i64 2
  %i.ek = fmul reassoc nsz arcp contract afn <4 x float> %i.ei, %i.ej
  %i.el = fmul reassoc nsz arcp contract afn <4 x float> %i.ec, splat (float f0x3E038026)
  %i.em = fadd reassoc nsz arcp contract afn <4 x float> %i.el, splat (float f0xBC911AA6)
  %i.en = select <4 x i1> %i.ed, <4 x float> %i.ek, <4 x float> %i.em ; 4 uses
  %i.eo = shufflevector <4 x float> <float f0x3FCEF57D, float f0x3F719831, float f0x3E6A7CB9, float poison>, <4 x float> %i.en, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ep = fmul reassoc nsz arcp contract afn <4 x float> %i.eo, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %i.eq = fmul reassoc nsz arcp contract afn <4 x float> %i.en, <float f0x404162F2, float f0x3FF54420, float f0x3D8E11AE, float f0x3F532CA5> ; 2 uses
  %i.er = shufflevector <4 x float> %i.en, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.es = fmul reassoc nsz arcp contract afn <4 x float> %i.er, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %i.et = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %i.eu = fmul reassoc nsz arcp contract afn <4 x float> %i.ep, %i.et
  %i.ev = fadd reassoc nsz arcp contract afn <4 x float> %i.ep, %i.et
  %i.ew = shufflevector <4 x float> %i.eu, <4 x float> %i.ev, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ex = fsub reassoc nsz arcp contract afn <4 x float> %i.eq, %i.ew
  %i.ey = fadd reassoc nsz arcp contract afn <4 x float> %i.eq, %i.ew
  %i.ez = shufflevector <4 x float> %i.ex, <4 x float> %i.ey, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.fa = fadd reassoc nsz arcp contract afn <4 x float> %i.ez, %i.es ; 4 uses
  %i.fb = fmul reassoc nsz arcp contract afn <4 x float> %i.ez, %i.es ; 2 uses
  %i.fc = shufflevector <4 x float> %i.fa, <4 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fd = bitcast <4 x float> %i.fc to <4 x i32>  ; 2 uses
  %i.fe = and <4 x i32> %i.fd, splat (i32 8388607)
  %i.ff = or disjoint <4 x i32> %i.fe, splat (i32 1065353216)
  %i.fg = bitcast <4 x i32> %i.ff to <4 x float>  ; 5 uses
  %i.fh = lshr <4 x i32> %i.fd, splat (i32 23)
  %i.fi = and <4 x i32> %i.fh, splat (i32 255)
  %i.fj = add nsw <4 x i32> %i.fi, splat (i32 -127)
  %i.fk = sitofp <4 x i32> %i.fj to <4 x float>
  %i.fl = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fg, splat (float f0x3D74552F)
  %i.fm = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fl, splat (float f0xBEEE7397)
  %i.fn = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fm, %i.fg
  %i.fo = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fn, splat (float f0x3FBD96DD)
  %i.fp = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fo, %i.fg
  %i.fq = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fp, splat (float f0xC02153F6)
  %i.fr = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fq, %i.fg
  %i.fs = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fr, splat (float f0x4038D96C)
  %i.ft = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fg, splat (float -1.000000e+00)
  %i.fu = fmul reassoc nsz arcp contract afn <4 x float> %i.fs, %i.ft
  %i.fv = fadd reassoc nsz arcp contract afn <4 x float> %i.fu, %i.fk
  %i.fw = fmul reassoc nsz arcp contract afn <4 x float> %i.fv, splat (float f0x3ED55555)
  %i.fx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fw, <4 x float> splat (float 1.290000e+02))
  %i.fy = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fx, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.fz = fadd reassoc nsz arcp contract afn <4 x float> %i.fy, splat (float -5.000000e-01)
  %i.ga = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.fz)
  %i.gb = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ga to <4 x float> ; 5 uses
  %i.gc = extractelement <4 x float> %i.fa, i64 0 ; 2 uses
  %i.gd = fcmp reassoc nsz arcp contract afn ugt float %i.gc, 3.130800e-03
  br i1 %i.gd, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.ge = fmul reassoc nnan nsz arcp contract afn float %i.gc, 1.292000e+01
  br label %dt_XYZ_to_sRGB.exit.i.us

bb.d:                                             ; preds = %.lr.ph.i.us
  %.sroa.014.0.vec.extract.i.i.i.i.us = extractelement <4 x float> %i.gb, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.fy, %i.gb
  %i.gf = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.gg = fmul reassoc nsz arcp contract afn float %i.gf, f0x3C5DBE69
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gg, f0x3D5509F9
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gh, %i.gf
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gi, f0x3E773CC5
  %i.gk = fmul reassoc nsz arcp contract afn float %i.gj, %i.gf
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gk, f0x3F3168B3
  %i.gm = fmul reassoc nsz arcp contract afn float %i.gl, %i.gf
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gm, f0x3F800016
  %i.go = fptosi float %.sroa.014.0.vec.extract.i.i.i.i.us to i32
  %i.gp = shl i32 %i.go, 23
  %i.gq = add i32 %i.gp, 1065353216
  %i.gr = bitcast i32 %i.gq to float
  %i.gs = fmul reassoc nnan nsz arcp contract afn float %i.gr, 1.055000e+00
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gs, %i.gn
  %i.gu = fadd reassoc nsz arcp contract afn float %i.gt, -5.500000e-02
  br label %dt_XYZ_to_sRGB.exit.i.us

dt_XYZ_to_sRGB.exit.i.us:                         ; preds = %bb.d, %bb.c
  %i.gv = phi reassoc nsz arcp contract afn float [ %i.ge, %bb.c ], [ %i.gu, %bb.d ]
  %.sroa.014.4.vec.extract.i.i.i.i.us = extractelement <4 x float> %i.gb, i64 1
  %foldExtExtBinop175 = fsub reassoc nsz arcp contract afn <4 x float> %i.fy, %i.gb
  %i.gw = extractelement <4 x float> %foldExtExtBinop175, i64 1 ; 4 uses
  %i.gx = fmul reassoc nsz arcp contract afn float %i.gw, f0x3C5DBE69
  %i.gy = fadd reassoc nsz arcp contract afn float %i.gx, f0x3D5509F9
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gy, %i.gw
  %i.ha = fadd reassoc nsz arcp contract afn float %i.gz, f0x3E773CC5
  %i.hb = fmul reassoc nsz arcp contract afn float %i.ha, %i.gw
  %i.hc = fadd reassoc nsz arcp contract afn float %i.hb, f0x3F3168B3
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, %i.gw
  %i.he = fadd reassoc nsz arcp contract afn float %i.hd, f0x3F800016
  %i.hf = fptosi float %.sroa.014.4.vec.extract.i.i.i.i.us to i32
  %i.hg = shl i32 %i.hf, 23
  %i.hh = add i32 %i.hg, 1065353216
  %i.hi = bitcast i32 %i.hh to float
  %i.hj = extractelement <4 x float> %i.fa, i64 1 ; 2 uses
  %i.hk = fmul reassoc nsz arcp contract afn float %i.hj, 1.292000e+01
  %i.hl = fcmp reassoc nsz arcp contract afn ugt float %i.hj, 3.130800e-03
  %i.hm = fmul reassoc nnan nsz arcp contract afn float %i.hi, 1.055000e+00
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hm, %i.he
  %i.ho = fadd reassoc nsz arcp contract afn float %i.hn, -5.500000e-02
  %i.hp = select reassoc nsz arcp contract afn i1 %i.hl, float %i.ho, float %i.hk
  %i.hq = shufflevector <4 x float> %i.fa, <4 x float> %i.fb, <2 x i32> <i32 2, i32 7> ; 2 uses
  %i.hr = fcmp reassoc nsz arcp contract afn ugt <2 x float> %i.hq, splat (float 3.130800e-03)
  %i.hs = shufflevector <4 x float> %i.fy, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ht = shufflevector <4 x float> %i.gb, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.hu = fsub reassoc nsz arcp contract afn <2 x float> %i.hs, %i.ht ; 4 uses
  %i.hv = fmul reassoc nsz arcp contract afn <2 x float> %i.hu, splat (float f0x3C5DBE69)
  %i.hw = fadd reassoc nsz arcp contract afn <2 x float> %i.hv, splat (float f0x3D5509F9)
  %i.hx = fmul reassoc nsz arcp contract afn <2 x float> %i.hw, %i.hu
  %i.hy = fadd reassoc nsz arcp contract afn <2 x float> %i.hx, splat (float f0x3E773CC5)
  %i.hz = fmul reassoc nsz arcp contract afn <2 x float> %i.hy, %i.hu
  %i.ia = fadd reassoc nsz arcp contract afn <2 x float> %i.hz, splat (float f0x3F3168B3)
  %i.ib = fmul reassoc nsz arcp contract afn <2 x float> %i.ia, %i.hu
  %i.ic = fadd reassoc nsz arcp contract afn <2 x float> %i.ib, splat (float f0x3F800016)
  %i.id = fptosi <2 x float> %i.ht to <2 x i32>
  %i.ie = shl <2 x i32> %i.id, splat (i32 23)
  %i.if = add <2 x i32> %i.ie, splat (i32 1065353216)
  %i.ig = bitcast <2 x i32> %i.if to <2 x float>
  %7 = fmul reassoc nsz arcp contract afn <2 x float> %i.hq, <float 1.292000e+01, float 1.000000e+00>
  %i.ih = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ig, splat (float 1.055000e+00)
  %i.ii = fmul reassoc nsz arcp contract afn <2 x float> %i.ih, %i.ic
  %i.ij = fadd reassoc nsz arcp contract afn <2 x float> %i.ii, splat (float -5.500000e-02)
  %i.ik = select <2 x i1> %i.hr, <2 x float> %i.ij, <2 x float> %7
  %i.il = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.im = insertelement <4 x float> %i.il, float %i.hp, i64 1
  %i.in = shufflevector <2 x float> %i.ik, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.io = shufflevector <4 x float> %i.im, <4 x float> %i.in, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ip = fadd reassoc nsz arcp contract afn <4 x float> %i.io, splat (float -1.000000e+00)
  %i.iq = fmul reassoc nsz arcp contract afn <4 x float> %i.ip, %i.bd
  %i.ir = fadd reassoc nsz arcp contract afn <4 x float> %i.iq, splat (float 1.000000e+00)
  %i.is = fmul reassoc nsz arcp contract afn <4 x float> %i.ir, %i.bw
  %i.it = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.is, <4 x float> zeroinitializer)
  %bc.i.us = bitcast <4 x float> %i.it to <4 x i32> ; 2 uses
  %i.iu = and <4 x i32> %bc.i.us, splat (i32 8388607)
  %i.iv = or disjoint <4 x i32> %i.iu, splat (i32 1065353216)
  %i.iw = bitcast <4 x i32> %i.iv to <4 x float>  ; 5 uses
  %i.ix = lshr <4 x i32> %bc.i.us, splat (i32 23)
  %i.iy = and <4 x i32> %i.ix, splat (i32 255)
  %i.iz = add nsw <4 x i32> %i.iy, splat (i32 -127)
  %i.ja = sitofp <4 x i32> %i.iz to <4 x float>
  %i.jb = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.iw, splat (float f0x3D74552F)
  %i.jc = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jb, splat (float f0xBEEE7397)
  %i.jd = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jc, %i.iw
  %i.je = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jd, splat (float f0x3FBD96DD)
  %i.jf = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.je, %i.iw
  %i.jg = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jf, splat (float f0xC02153F6)
  %i.jh = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.jg, %i.iw
  %i.ji = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.jh, splat (float f0x4038D96C)
  %i.jj = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.iw, splat (float -1.000000e+00)
  %i.jk = fmul reassoc nsz arcp contract afn <4 x float> %i.ji, %i.jj
  %i.jl = fadd reassoc nsz arcp contract afn <4 x float> %i.jk, %i.ja
  %i.jm = fmul reassoc nsz arcp contract afn <4 x float> %i.jl, %6
  %i.jn = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.jm, <4 x float> splat (float 1.290000e+02))
  %i.jo = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jn, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.jp = fadd reassoc nsz arcp contract afn <4 x float> %i.jo, splat (float -5.000000e-01)
  %i.jq = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.jp)
  %i.jr = sitofp reassoc nsz arcp contract afn <4 x i32> %i.jq to <4 x float> ; 3 uses
  %i.js = insertelement <4 x float> %i.jo, float 1.000000e+00, i64 3
  %i.jt = insertelement <4 x float> %i.jr, float 0.000000e+00, i64 3
  %i.ju = fsub reassoc nsz arcp contract afn <4 x float> %i.js, %i.jt ; 5 uses
  %i.jv = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.jo, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.jw = shufflevector <4 x float> %i.jr, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 3>
  %i.jx = fsub reassoc nsz arcp contract afn <4 x float> %i.jv, %i.jw ; 3 uses
  %i.jy = fptosi <4 x float> %i.jr to <4 x i32>
  %i.jz = shl <4 x i32> %i.jy, splat (i32 23)
  %i.ka = add <4 x i32> %i.jz, splat (i32 1065353216)
  %i.kb = extractelement <4 x float> %i.ju, i64 2 ; 3 uses
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, f0x3C5DBE69
  %i.kd = fadd reassoc nsz arcp contract afn float %i.kc, f0x3D5509F9
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, %i.kb
  %i.kf = fadd reassoc nsz arcp contract afn float %i.ke, f0x3E773CC5
  %i.kg = fmul reassoc nsz arcp contract afn float %i.kf, %i.kb
  %i.kh = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.kg, i64 2
  %i.ki = fmul reassoc nsz arcp contract afn <4 x float> %i.ju, <float f0x3C5DBE69, float f0x3C5DBE69, float poison, float poison>
  %i.kj = fadd reassoc nsz arcp contract afn <4 x float> %i.ki, <float f0x3D5509F9, float f0x3D5509F9, float poison, float poison>
  %i.kk = fmul reassoc nsz arcp contract afn <4 x float> %i.kj, %i.ju
  %i.kl = fadd reassoc nsz arcp contract afn <4 x float> %i.kk, <float f0x3E773CC5, float f0x3E773CC5, float poison, float poison>
  %i.km = fmul reassoc nsz arcp contract afn <4 x float> %i.kl, %i.ju
  %i.kn = shufflevector <4 x float> %i.km, <4 x float> %i.kh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ko = fadd reassoc arcp contract afn <4 x float> %i.kn, <float f0x3F3168B3, float f0x3F3168B3, float f0x3F3168B3, float -0.000000e+00>
  %i.kp = fmul reassoc arcp contract afn <4 x float> %i.ko, %i.ju
  %i.kq = fadd reassoc nsz arcp contract afn <4 x float> %i.kp, <float f0x3F800016, float f0x3F800016, float f0x3F800016, float f0x3F72A76F>
  %i.kr = extractelement <4 x float> %i.jx, i64 3 ; 2 uses
  %i.ks = fmul reassoc nsz arcp contract afn float %i.kr, f0x3C5DBE69
  %i.kt = fadd reassoc nsz arcp contract afn float %i.ks, f0x3D5509F9
  %i.ku = fmul reassoc nsz arcp contract afn float %i.kt, %i.kr
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ku, f0x3E773CC5
  %i.kw = insertelement <4 x float> <float f0x3F72A76F, float -0.000000e+00, float f0x3F72A76F, float poison>, float %i.kv, i64 3
  %i.kx = fmul reassoc arcp contract afn <4 x float> %i.kw, %i.jx
  %i.ky = fadd reassoc arcp contract afn <4 x float> %i.kx, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float f0x3F3168B3>
  %i.kz = fmul reassoc arcp contract afn <4 x float> %i.ky, %i.jx
  %i.la = fadd reassoc nsz arcp contract afn <4 x float> %i.kz, <float -0.000000e+00, float f0x3F72A76F, float -0.000000e+00, float f0x3F800016>
  %i.lb = bitcast <4 x i32> %i.ka to <4 x float>
  %i.lc = fmul reassoc nsz arcp contract afn <4 x float> %i.kq, %i.lb ; 3 uses
  %i.ld = extractelement <4 x float> %i.lc, i64 2 ; 2 uses
  %i.le = fmul reassoc nsz arcp contract afn float %i.ld, f0x3D9E8391
  %i.lf = fmul reassoc nsz arcp contract afn <4 x float> %i.lc, %i.la
  %i.lg = fadd reassoc nsz arcp contract afn <4 x float> %i.lf, splat (float f0x3D55891A)
  %i.lh = bitcast <4 x float> %i.lg to <4 x i32>  ; 2 uses
  %i.li = and <4 x i32> %i.lh, splat (i32 8388607)
  %i.lj = or disjoint <4 x i32> %i.li, splat (i32 1065353216)
  %i.lk = bitcast <4 x i32> %i.lj to <4 x float>  ; 5 uses
  %i.ll = lshr <4 x i32> %i.lh, splat (i32 23)
  %i.lm = and <4 x i32> %i.ll, splat (i32 255)
  %i.ln = add nsw <4 x i32> %i.lm, splat (i32 -127)
  %i.lo = sitofp <4 x i32> %i.ln to <4 x float>
  %i.lp = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.lk, splat (float f0x3D74552F)
  %i.lq = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.lp, splat (float f0xBEEE7397)
  %i.lr = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.lq, %i.lk
  %i.ls = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.lr, splat (float f0x3FBD96DD)
  %i.lt = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ls, %i.lk
  %i.lu = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.lt, splat (float f0xC02153F6)
  %i.lv = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.lu, %i.lk
  %i.lw = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.lv, splat (float f0x4038D96C)
  %i.lx = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.lk, splat (float -1.000000e+00)
  %i.ly = fmul reassoc nsz arcp contract afn <4 x float> %i.lw, %i.lx
  %i.lz = fadd reassoc nsz arcp contract afn <4 x float> %i.ly, %i.lo
  %i.ma = fmul reassoc nsz arcp contract afn <4 x float> %i.lz, splat (float 2.400000e+00)
  %i.mb = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ma, <4 x float> splat (float 1.290000e+02))
  %i.mc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mb, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.md = fadd reassoc nsz arcp contract afn <4 x float> %i.mc, splat (float -5.000000e-01)
  %i.me = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.md)
  %i.mf = sitofp reassoc nsz arcp contract afn <4 x i32> %i.me to <4 x float> ; 3 uses
  %.sroa.014.8.vec.extract.i.i.i.i.i.us = extractelement <4 x float> %i.mf, i64 2
  %foldExtExtBinop177 = fsub reassoc nsz arcp contract afn <4 x float> %i.mc, %i.mf
  %i.mg = extractelement <4 x float> %foldExtExtBinop177, i64 2 ; 4 uses
  %i.mh = fptosi float %.sroa.014.8.vec.extract.i.i.i.i.i.us to i32
  %i.mi = shl i32 %i.mh, 23
  %i.mj = add i32 %i.mi, 1065353216
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mg, f0x3C5DBE69
  %i.ml = fadd reassoc nsz arcp contract afn float %i.mk, f0x3D5509F9
  %i.mm = fmul reassoc nsz arcp contract afn float %i.ml, %i.mg
  %i.mn = fadd reassoc nsz arcp contract afn float %i.mm, f0x3E773CC5
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, %i.mg
  %i.mp = fadd reassoc nsz arcp contract afn float %i.mo, f0x3F3168B3
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mp, %i.mg
  %i.mr = fadd reassoc nsz arcp contract afn float %i.mq, f0x3F800016
  %i.ms = bitcast i32 %i.mj to float
  %i.mt = fmul reassoc nsz arcp contract afn float %i.mr, %i.ms
  %i.mu = fcmp reassoc nsz arcp contract afn ugt float %i.ld, 4.045000e-02
  %.sroa.speculated27.i.i.i.us = select i1 %i.mu, float %i.mt, float %i.le ; 4 uses
  %i.mv = fmul reassoc nsz arcp contract afn float %.sroa.speculated27.i.i.i.us, f0x3E1283AB
  %i.mw = fmul reassoc nsz arcp contract afn float %.sroa.speculated27.i.i.i.us, 6.061690e-02
  %i.mx = fmul reassoc nsz arcp contract afn float %.sroa.speculated27.i.i.i.us, f0x3F36D410
  %i.my = shufflevector <4 x float> %i.lc, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.mz = fmul reassoc nsz arcp contract afn <2 x float> %i.my, splat (float f0x3D9E8391)
  %i.na = shufflevector <4 x float> %i.mc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.nb = shufflevector <4 x float> %i.mf, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.nc = fsub reassoc nsz arcp contract afn <2 x float> %i.na, %i.nb ; 4 uses
  %i.nd = fptosi <2 x float> %i.nb to <2 x i32>
  %i.ne = shl <2 x i32> %i.nd, splat (i32 23)
  %i.nf = add <2 x i32> %i.ne, splat (i32 1065353216)
  %i.ng = fmul reassoc nsz arcp contract afn <2 x float> %i.nc, splat (float f0x3C5DBE69)
  %i.nh = fadd reassoc nsz arcp contract afn <2 x float> %i.ng, splat (float f0x3D5509F9)
  %i.ni = fmul reassoc nsz arcp contract afn <2 x float> %i.nh, %i.nc
  %i.nj = fadd reassoc nsz arcp contract afn <2 x float> %i.ni, splat (float f0x3E773CC5)
  %i.nk = fmul reassoc nsz arcp contract afn <2 x float> %i.nj, %i.nc
  %i.nl = fadd reassoc nsz arcp contract afn <2 x float> %i.nk, splat (float f0x3F3168B3)
  %i.nm = fmul reassoc nsz arcp contract afn <2 x float> %i.nl, %i.nc
  %i.nn = fadd reassoc nsz arcp contract afn <2 x float> %i.nm, splat (float f0x3F800016)
  %i.no = bitcast <2 x i32> %i.nf to <2 x float>
  %i.np = fmul reassoc nsz arcp contract afn <2 x float> %i.nn, %i.no
  %i.nq = fcmp reassoc nsz arcp contract afn ugt <2 x float> %i.my, splat (float 4.045000e-02)
  %i.nr = select <2 x i1> %i.nq, <2 x float> %i.np, <2 x float> %i.mz ; 2 uses
  %i.ns = shufflevector <2 x float> %i.nr, <2 x float> poison, <4 x i32> zeroinitializer
  %i.nt = fmul <4 x float> %i.ns, <float f0x3EDF452F, float f0x3E63D838, float 1.393220e-02, float 1.000000e+00>
  %i.nu = shufflevector <2 x float> %i.nr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.nv = fmul <4 x float> %i.nu, <float f0x3EC5273A, float f0x3F37855B, float f0x3DC6DEB9, float 1.000000e+00>
  %i.nw = fadd reassoc nsz arcp contract afn <4 x float> %i.nv, %i.nt ; 4 uses
  %i.nx = extractelement <4 x float> %i.nw, i64 0
  %i.ny = fadd reassoc nsz arcp contract afn float %i.nx, %i.mv ; 2 uses
  %i.nz = extractelement <4 x float> %i.nw, i64 1
  %i.oa = fadd reassoc nsz arcp contract afn float %i.nz, %i.mw ; 3 uses
  %i.ob = extractelement <4 x float> %i.nw, i64 2
  %i.oc = fadd reassoc nsz arcp contract afn float %i.ob, %i.mx ; 2 uses
  %i.od = extractelement <4 x float> %i.nw, i64 3
  %i.oe = fadd reassoc nsz arcp contract afn float %i.od, %.sroa.speculated27.i.i.i.us
  %i.of = fmul reassoc nsz arcp contract afn float %i.ny, f0x3F84C0A6 ; 2 uses
  %i.og = fcmp reassoc nsz arcp contract afn ogt float %i.of, f0x3C111AA7
  br i1 %i.og, label %bb.f, label %bb.e

bb.e:                                             ; preds = %dt_XYZ_to_sRGB.exit.i.us
  %i.oh = fmul reassoc nsz arcp contract afn float %i.ny, f0x410137F7
  %i.oi = fadd reassoc nsz arcp contract afn float %i.oh, f0x3E0D3DCB
  br label %bb.g

bb.f:                                             ; preds = %dt_XYZ_to_sRGB.exit.i.us
  %i.oj = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.of) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ok = phi reassoc nsz arcp contract afn float [ %i.oj, %bb.f ], [ %i.oi, %bb.e ]
  %i.ol = fcmp reassoc nsz arcp contract afn ogt float %i.oa, f0x3C111AA7
  br i1 %i.ol, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.om = fmul reassoc nsz arcp contract afn float %i.oa, f0x40F92F69
  %i.on = fadd reassoc nsz arcp contract afn float %i.om, f0x3E0D3DCB
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.oo = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.oa) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.op = phi reassoc nsz arcp contract afn float [ %i.oo, %bb.i ], [ %i.on, %bb.h ] ; 3 uses
  %i.oq = fmul reassoc nsz arcp contract afn float %i.oc, f0x3F9B2B9B ; 2 uses
  %i.or = fcmp reassoc nsz arcp contract afn ogt float %i.oq, f0x3C111AA7
  br i1 %i.or, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.os = fmul reassoc nsz arcp contract afn float %i.oc, f0x41170A26
  %i.ot = fadd reassoc nsz arcp contract afn float %i.os, f0x3E0D3DCB
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ou = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.oq) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ov = phi reassoc nsz arcp contract afn float [ %i.ou, %bb.l ], [ %i.ot, %bb.k ]
  %i.ow = fmul reassoc nsz arcp contract afn float %i.oe, 0.000000e+00 ; 3 uses
  %i.ox = fcmp reassoc nsz arcp contract afn ogt float %i.ow, f0x3C111AA7
  br i1 %i.ox, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.oy = fadd reassoc nsz arcp contract afn float %i.ow, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.i.us

bb.o:                                             ; preds = %bb.m
  %i.oz = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ow) #27
  br label %dt_XYZ_to_Lab.exit.i.us

dt_XYZ_to_Lab.exit.i.us:                          ; preds = %bb.o, %bb.n
  %i.pa = phi reassoc nsz arcp contract afn float [ %i.oz, %bb.o ], [ %i.oy, %bb.n ]
  %i.pb = fmul reassoc nsz arcp contract afn float %i.op, 1.160000e+02
  %i.pc = fadd reassoc nsz arcp contract afn float %i.pb, -1.600000e+01
  %i.pd = fsub reassoc nsz arcp contract afn float %i.ok, %i.op
  %i.pe = fsub reassoc nsz arcp contract afn float %i.ov, %i.op
  %i.pf = insertelement <4 x float> poison, float %i.pc, i64 0
  %i.pg = insertelement <4 x float> %i.pf, float %i.pd, i64 1
  %i.ph = insertelement <4 x float> %i.pg, float %i.pe, i64 2
  %8 = insertelement <4 x float> %i.ph, float %i.pa, i64 3
  %9 = fmul reassoc nsz arcp contract afn <4 x float> %8, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dk
  store <4 x float> %9, ptr %i.pi, align 16, !tbaa !35, !alias.scope !142, !nontemporal !143
  %i.pj = add nuw i64 %.01725.i.us, 1             ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.pj, %i.dj
  br i1 %exitcond.not.i.us, label %_process_legacy.exit.us, label %.lr.ph.i.us

_process_legacy.exit.us:                          ; preds = %dt_XYZ_to_Lab.exit.i.us, %.lr.ph.split.us
  %i.pk = icmp ult i64 %i.de, %i.p
  br i1 %i.pk, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split.us143:                               ; preds = %.lr.ph.split.us143.preheader, %_process_legacy.exit.us145
  %.0142.us144 = phi i64 [ %i.pl, %_process_legacy.exit.us145 ], [ 0, %.lr.ph.split.us143.preheader ] ; 4 uses
  %i.pl = add i64 %.0142.us144, %i.bz             ; 3 uses
  %i.pm = tail call i64 @llvm.umin.i64(i64 %i.pl, i64 %i.p) ; 2 uses
  %i.pn = shl i64 %.0142.us144, 2                 ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.pn
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.pn
  %i.pq = sub i64 %i.pm, %.0142.us144
  %.not.i105.us = icmp eq i64 %i.pm, %.0142.us144
  br i1 %.not.i105.us, label %_process_legacy.exit.us145, label %.lr.ph.i106.us

.lr.ph.i106.us:                                   ; preds = %.lr.ph.split.us143, %bb.s
  %.0485.i.us = phi i64 [ %i.xa, %bb.s ], [ 0, %.lr.ph.split.us143 ] ; 2 uses
  %i.pr = shl i64 %.0485.i.us, 2                  ; 2 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.pr
  %i.pt = load <3 x float>, ptr %i.ps, align 16, !tbaa !35 ; 2 uses
  %i.pu = shufflevector <3 x float> %i.pt, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 0>
  %i.pv = fmul reassoc nsz arcp contract afn <4 x float> %i.pu, <float 2.000000e-03, float 8.620690e-03, float -5.000000e-03, float 0.000000e+00>
  %i.pw = shufflevector <3 x float> %i.pt, <3 x float> poison, <4 x i32> zeroinitializer
  %i.px = fmul reassoc nsz arcp contract afn <4 x float> %i.pw, <float 8.620690e-03, float 0.000000e+00, float 8.620690e-03, float 8.620690e-03>
  %i.py = fadd reassoc nsz arcp contract afn <4 x float> %i.pv, splat (float f0x3E0D3DCB)
  %i.pz = fadd reassoc nsz arcp contract afn <4 x float> %i.py, %i.px ; 5 uses
  %i.qa = fmul reassoc nsz arcp contract afn <4 x float> %i.pz, %i.pz
  %i.qb = fmul reassoc nsz arcp contract afn <4 x float> %i.qa, %i.pz
  %i.qc = fmul reassoc nsz arcp contract afn <4 x float> %i.pz, <float f0x3E038027, float f0x3E038027, float f0x3E038027, float poison>
  %i.qd = fadd reassoc nsz arcp contract afn <4 x float> %i.qc, <float f0xBC911AA7, float f0xBC911AA7, float f0xBC911AA7, float poison>
  %i.qe = fcmp reassoc nsz arcp contract afn ule <4 x float> %i.pz, splat (float f0x3E53DCB1)
  %.v.i.i.i.us = select <4 x i1> %i.qe, <4 x float> %i.qd, <4 x float> %i.qb
  %i.qf = fmul reassoc nsz arcp contract afn <4 x float> %.v.i.i.i.us, <float 9.642000e-01, float 1.000000e+00, float f0x3F532CA5, float poison> ; 3 uses
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qh = fmul reassoc nsz arcp contract afn <4 x float> %i.qg, <float f0x3FAC47DF, float f0xBF0B6AD5, float 0.000000e+00, float 0.000000e+00>
  %i.qi = shufflevector <4 x float> %i.qf, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.qj = fmul reassoc nsz arcp contract afn <4 x float> %i.qi, <float f0xBE82DEFC, float f0x3FC10BA0, float 0.000000e+00, float 0.000000e+00>
  %i.qk = fadd reassoc nsz arcp contract afn <4 x float> %i.qh, %i.qj
  %i.ql = shufflevector <4 x float> %i.qf, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.qm = fmul reassoc nsz arcp contract afn <4 x float> %i.ql, <float -5.111180e-02, float 2.053510e-02, float f0x3F9B1CAF, float 0.000000e+00>
  %i.qn = fadd reassoc nsz arcp contract afn <4 x float> %i.qk, %i.qm ; 2 uses
  %i.qo = fsub reassoc nsz arcp contract afn <4 x float> %i.qn, %i.qi
  %i.qp = fmul reassoc nsz arcp contract afn <4 x float> %i.qo, %i.cv
  %i.qq = fadd reassoc nsz arcp contract afn <4 x float> %i.qp, %i.qi
  %.0.i.us = select nsz i1 %i.cl, <4 x float> %i.qq, <4 x float> %i.qn
  %i.qr = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.0.i.us, <4 x float> zeroinitializer)
  %i.qs = bitcast <4 x float> %i.qr to <4 x i32>  ; 2 uses
  %i.qt = lshr <4 x i32> %i.qs, splat (i32 23)
  %i.qu = and <4 x i32> %i.qt, splat (i32 255)
  %i.qv = add nsw <4 x i32> %i.qu, splat (i32 -127)
  %i.qw = sitofp reassoc nsz arcp contract afn <4 x i32> %i.qv to <4 x float>
  %i.qx = and <4 x i32> %i.qs, splat (i32 8388607)
  %i.qy = or disjoint <4 x i32> %i.qx, splat (i32 1065353216)
  %i.qz = bitcast <4 x i32> %i.qy to <4 x float>  ; 5 uses
  %i.ra = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.qz, splat (float f0x3D74552F)
  %i.rb = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ra, splat (float f0xBEEE7397)
  %i.rc = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.rb, %i.qz
  %i.rd = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.rc, splat (float f0x3FBD96DD)
  %i.re = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.rd, %i.qz
  %i.rf = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.re, splat (float f0xC02153F6)
  %i.rg = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.rf, %i.qz
  %i.rh = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.rg, splat (float f0x4038D96C)
  %i.ri = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.qz, splat (float -1.000000e+00)
  %i.rj = fmul reassoc nsz arcp contract afn <4 x float> %i.rh, %i.ri
  %i.rk = fadd reassoc nsz arcp contract afn <4 x float> %i.rj, %i.qw
  %i.rl = fmul reassoc nsz arcp contract afn <4 x float> %i.rk, splat (float f0x3EE8BA2E)
  %i.rm = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.rl, <4 x float> splat (float 1.290000e+02))
  %i.rn = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.rm, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.ro = fadd reassoc nsz arcp contract afn <4 x float> %i.rn, splat (float -5.000000e-01)
  %i.rp = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ro) ; 2 uses
  %i.rq = sitofp reassoc nsz arcp contract afn <4 x i32> %i.rp to <4 x float>
  %i.rr = fsub reassoc nsz arcp contract afn <4 x float> %i.rn, %i.rq ; 4 uses
  %i.rs = shl <4 x i32> %i.rp, splat (i32 23)
  %i.rt = add <4 x i32> %i.rs, splat (i32 1065353216)
  %i.ru = bitcast <4 x i32> %i.rt to <4 x float>
  %i.rv = fmul reassoc nsz arcp contract afn <4 x float> %i.rr, splat (float f0x3C5DBE69)
  %i.rw = fadd reassoc nsz arcp contract afn <4 x float> %i.rv, splat (float f0x3D5509F9)
  %i.rx = fmul reassoc nsz arcp contract afn <4 x float> %i.rw, %i.rr
  %i.ry = fadd reassoc nsz arcp contract afn <4 x float> %i.rx, splat (float f0x3E773CC5)
  %i.rz = fmul reassoc nsz arcp contract afn <4 x float> %i.ry, %i.rr
  %i.sa = fadd reassoc nsz arcp contract afn <4 x float> %i.rz, splat (float f0x3F3168B3)
  %i.sb = fmul reassoc nsz arcp contract afn <4 x float> %i.sa, %i.rr
  %i.sc = fadd reassoc nsz arcp contract afn <4 x float> %i.sb, splat (float f0x3F800016)
  %i.sd = fmul reassoc nsz arcp contract afn <4 x float> %i.sc, %i.ru
  %i.se = fadd reassoc nsz arcp contract afn <4 x float> %i.sd, splat (float -1.000000e+00)
  %i.sf = fmul reassoc nsz arcp contract afn <4 x float> %i.se, %i.be
  %i.sg = fadd reassoc nsz arcp contract afn <4 x float> %i.sf, splat (float 1.000000e+00)
  %i.sh = fmul reassoc nsz arcp contract afn <4 x float> %i.sg, %i.bx
  %i.si = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.sh, <4 x float> zeroinitializer)
  %i.sj = bitcast <4 x float> %i.si to <4 x i32>  ; 2 uses
  %i.sk = lshr <4 x i32> %i.sj, splat (i32 23)
  %i.sl = and <4 x i32> %i.sk, splat (i32 255)
  %i.sm = add nsw <4 x i32> %i.sl, splat (i32 -127)
  %i.sn = sitofp reassoc nsz arcp contract afn <4 x i32> %i.sm to <4 x float>
  %i.so = and <4 x i32> %i.sj, splat (i32 8388607)
  %i.sp = or disjoint <4 x i32> %i.so, splat (i32 1065353216)
  %i.sq = bitcast <4 x i32> %i.sp to <4 x float>  ; 5 uses
  %i.sr = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.sq, splat (float f0x3D74552F)
  %i.ss = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.sr, splat (float f0xBEEE7397)
  %i.st = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ss, %i.sq
  %i.su = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.st, splat (float f0x3FBD96DD)
  %i.sv = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.su, %i.sq
  %i.sw = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.sv, splat (float f0xC02153F6)
  %i.sx = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.sw, %i.sq
  %i.sy = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.sx, splat (float f0x4038D96C)
  %i.sz = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.sq, splat (float -1.000000e+00)
  %i.ta = fmul reassoc nsz arcp contract afn <4 x float> %i.sy, %i.sz
  %i.tb = fadd reassoc nsz arcp contract afn <4 x float> %i.ta, %i.sn
  %i.tc = fmul reassoc nsz arcp contract afn <4 x float> %i.tb, %.sroa.0123.12.vec.insert172
  %i.td = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.tc, <4 x float> splat (float 1.290000e+02))
  %i.te = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.td, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.tf = fadd reassoc nsz arcp contract afn <4 x float> %i.te, splat (float -5.000000e-01)
  %i.tg = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.tf) ; 2 uses
  %i.th = sitofp reassoc nsz arcp contract afn <4 x i32> %i.tg to <4 x float>
  %i.ti = fsub reassoc nsz arcp contract afn <4 x float> %i.te, %i.th ; 4 uses
  %i.tj = shl <4 x i32> %i.tg, splat (i32 23)
  %i.tk = add <4 x i32> %i.tj, splat (i32 1065353216)
  %i.tl = bitcast <4 x i32> %i.tk to <4 x float>
  %i.tm = fmul reassoc nsz arcp contract afn <4 x float> %i.ti, splat (float f0x3C5DBE69)
  %i.tn = fadd reassoc nsz arcp contract afn <4 x float> %i.tm, splat (float f0x3D5509F9)
  %i.to = fmul reassoc nsz arcp contract afn <4 x float> %i.tn, %i.ti
  %i.tp = fadd reassoc nsz arcp contract afn <4 x float> %i.to, splat (float f0x3E773CC5)
  %i.tq = fmul reassoc nsz arcp contract afn <4 x float> %i.tp, %i.ti
  %i.tr = fadd reassoc nsz arcp contract afn <4 x float> %i.tq, splat (float f0x3F3168B3)
  %i.ts = fmul reassoc nsz arcp contract afn <4 x float> %i.tr, %i.ti
  %i.tt = fadd reassoc nsz arcp contract afn <4 x float> %i.ts, splat (float f0x3F800016)
  %i.tu = fmul reassoc nsz arcp contract afn <4 x float> %i.tt, %i.tl ; 5 uses
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i106.us
  %i.tv = extractelement <4 x float> %i.tu, i64 0
  %i.tw = fmul reassoc nsz arcp contract afn float %i.tv, f0x3E937A01
  %i.tx = extractelement <4 x float> %i.tu, i64 1
  %i.ty = fmul reassoc nsz arcp contract afn float %i.tx, f0x3F363D62
  %i.tz = fadd reassoc nsz arcp contract afn float %i.tw, %i.ty
  %i.ua = extractelement <4 x float> %i.tu, i64 2
  %i.ub = fmul reassoc nsz arcp contract afn float %i.ua, f0x38B3B9D6
  %i.uc = fadd reassoc nsz arcp contract afn float %i.tz, %i.ub
  %i.ud = insertelement <4 x float> poison, float %i.uc, i64 0
  %i.ue = shufflevector <4 x float> %i.ud, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.uf = fsub reassoc nsz arcp contract afn <4 x float> %i.tu, %i.ue
  %i.ug = fmul reassoc nsz arcp contract afn <4 x float> %i.uf, %i.cx
  %i.uh = fadd reassoc nsz arcp contract afn <4 x float> %i.ug, %i.ue
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i106.us
  %.1.i.us = phi nsz <4 x float> [ %i.uh, %bb.p ], [ %i.tu, %.lr.ph.i106.us ] ; 2 uses
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ui = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.1.i.us, <4 x float> zeroinitializer)
  %i.uj = fmul reassoc nsz arcp contract afn <4 x float> %i.ui, %i.db
  %i.uk = bitcast <4 x float> %i.uj to <4 x i32>  ; 2 uses
  %i.ul = lshr <4 x i32> %i.uk, splat (i32 23)
  %i.um = and <4 x i32> %i.ul, splat (i32 255)
  %i.un = add nsw <4 x i32> %i.um, splat (i32 -127)
  %i.uo = sitofp reassoc nsz arcp contract afn <4 x i32> %i.un to <4 x float>
  %i.up = and <4 x i32> %i.uk, splat (i32 8388607)
  %i.uq = or disjoint <4 x i32> %i.up, splat (i32 1065353216)
  %i.ur = bitcast <4 x i32> %i.uq to <4 x float>  ; 5 uses
  %i.us = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ur, splat (float f0x3D74552F)
  %i.ut = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.us, splat (float f0xBEEE7397)
  %i.uu = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ut, %i.ur
  %i.uv = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.uu, splat (float f0x3FBD96DD)
  %i.uw = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.uv, %i.ur
  %i.ux = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.uw, splat (float f0xC02153F6)
  %i.uy = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ux, %i.ur
  %i.uz = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.uy, splat (float f0x4038D96C)
  %i.va = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ur, splat (float -1.000000e+00)
  %i.vb = fmul reassoc nsz arcp contract afn <4 x float> %i.uz, %i.va
  %i.vc = fadd reassoc nsz arcp contract afn <4 x float> %i.vb, %i.uo
  %i.vd = fmul reassoc nsz arcp contract afn <4 x float> %i.vc, %.sroa.0136.12.vec.insert
  %i.ve = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vd, <4 x float> splat (float 1.290000e+02))
  %i.vf = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ve, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.vg = fadd reassoc nsz arcp contract afn <4 x float> %i.vf, splat (float -5.000000e-01)
  %i.vh = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.vg) ; 2 uses
  %i.vi = sitofp reassoc nsz arcp contract afn <4 x i32> %i.vh to <4 x float>
  %i.vj = fsub reassoc nsz arcp contract afn <4 x float> %i.vf, %i.vi ; 4 uses
  %i.vk = shl <4 x i32> %i.vh, splat (i32 23)
  %i.vl = add <4 x i32> %i.vk, splat (i32 1065353216)
  %i.vm = bitcast <4 x i32> %i.vl to <4 x float>
  %i.vn = fmul reassoc nsz arcp contract afn <4 x float> %i.vj, splat (float f0x3C5DBE69)
  %i.vo = fadd reassoc nsz arcp contract afn <4 x float> %i.vn, splat (float f0x3D5509F9)
  %i.vp = fmul reassoc nsz arcp contract afn <4 x float> %i.vo, %i.vj
  %i.vq = fadd reassoc nsz arcp contract afn <4 x float> %i.vp, splat (float f0x3E773CC5)
  %i.vr = fmul reassoc nsz arcp contract afn <4 x float> %i.vq, %i.vj
  %i.vs = fadd reassoc nsz arcp contract afn <4 x float> %i.vr, splat (float f0x3F3168B3)
  %i.vt = fmul reassoc nsz arcp contract afn <4 x float> %i.vs, %i.vj
  %i.vu = fadd reassoc nsz arcp contract afn <4 x float> %i.vt, splat (float f0x3F800016)
  %i.vv = fmul reassoc nsz arcp contract afn <4 x float> %i.cz, %i.vm
  %i.vw = fmul reassoc nsz arcp contract afn <4 x float> %i.vv, %i.vu
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.i.us = phi nsz <4 x float> [ %i.vw, %bb.r ], [ %.1.i.us, %bb.q ] ; 3 uses
  %i.vx = shufflevector <4 x float> %.2.i.us, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_0
