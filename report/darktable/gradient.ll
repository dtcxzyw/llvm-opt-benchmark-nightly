Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gradient?download=true
inline.NumInlined: 87
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_gradient_get_area:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.033 = phi i32 [ 1, %.preheader.preheader ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_events_mouse_moved(ptr noundef %0, float noundef %1, float noundef %2, double %3, i32 %4, float noundef %5, ptr noundef %6, i32 %7, ptr noundef %8, i32 noundef %9) #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %i.b = alloca [8 x float], align 16             ; 12 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca float, align 4                    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 172
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18
  %.not = icmp eq i32 %i.i, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 112
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !130
  %i.j = icmp eq i32 %.pre, 0                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %.thread141, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @dt_control_queue_redraw_center() #12
  br label %bb.ak

bb.d:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %6, align 8, !tbaa !23
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !148 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load float, ptr %i.p, align 8, !tbaa !149 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, 0.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.r, float %i.q, float 1.000000e+00
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  %i.t = load i32, ptr %i.s, align 4, !tbaa !150  ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = uitofp nneg i32 %i.t to float
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.x = load i32, ptr %i.w, align 16, !tbaa !151
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.x to float
  %i.z = insertelement <2 x float> poison, float %i.v, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.y, i64 1
  br label %dt_masks_get_image_size.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 2760
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !152 ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 156
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !150 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %i.ah = load i32, ptr %i.ag, align 16, !tbaa !151
  %i.ai = uitofp nneg i32 %i.ae to float
  %i.aj = sitofp reassoc nsz arcp contract afn i32 %i.ah to float
  %i.ak = insertelement <2 x float> poison, float %spec.select.i, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.aj, i64 1
  %i.ao = fdiv reassoc nsz arcp contract afn <2 x float> %i.an, %i.al
  br label %dt_masks_get_image_size.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 376
  %i.aq = load <2 x i32>, ptr %i.ap, align 8, !tbaa !32
  %i.ar = sitofp <2 x i32> %i.aq to <2 x float>
  br label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.f, %bb.i, %bb.j
  %i.as = phi <2 x float> [ %i.aa, %bb.f ], [ %i.ar, %bb.j ], [ %i.ao, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.au = load <2 x i32>, ptr %i.at, align 16, !tbaa !32
  %i.av = sitofp <2 x i32> %i.au to <2 x float>   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.aw = insertelement <2 x float> poison, float %1, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %2, i64 1
  %i.ay = fmul reassoc nsz arcp contract afn <2 x float> %i.as, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !29
  %i.bc = fadd reassoc nsz arcp contract afn <2 x float> %i.bb, %i.ay
  store <2 x float> %i.bc, ptr %i.a, align 8, !tbaa !29
  %i.bd = call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, i64 noundef 1) #12 ; 0 uses
  %i.be = load float, ptr %i.a, align 8, !tbaa !29
  %i.bf = extractelement <2 x float> %i.av, i64 0
  %i.bg = fdiv reassoc nsz arcp contract afn float %i.be, %i.bf
  store float %i.bg, ptr %i.l, align 4, !tbaa !29
  %i.bh = load float, ptr %i.ba, align 4, !tbaa !29
  %i.bi = extractelement <2 x float> %i.av, i64 1
  %i.bj = fdiv reassoc nsz arcp contract afn float %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store float %i.bj, ptr %i.bk, align 4, !tbaa !29
  call void @dt_masks_gui_form_create(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %9, ptr noundef %0) #12
  call void @dt_control_queue_redraw_center() #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ak

bb.k:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !153
  %.not102 = icmp eq i32 %i.bm, 0
  br i1 %.not102, label %bb.s, label %bb.l

.thread141:                                       ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !153
  %.not102142 = icmp eq i32 %i.bo, 0
  br i1 %.not102142, label %bb.aj, label %bb.l

bb.l:                                             ; preds = %.thread141, %bb.k
  %i.bp = load ptr, ptr %6, align 8, !tbaa !23
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !148 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 152
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !149 ; 2 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt float %i.bv, 0.000000e+00
  %spec.select.i111 = select reassoc nsz arcp contract afn i1 %i.bw, float %i.bv, float 1.000000e+00 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 156
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !150 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ca = uitofp nneg i32 %i.by to float
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 160
  %i.cc = load i32, ptr %i.cb, align 16, !tbaa !151
  %i.cd = sitofp reassoc nsz arcp contract afn i32 %i.cc to float
  br label %dt_masks_get_image_size.exit114

bb.n:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 2760
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !152 ; 3 uses
  %.not.i112 = icmp eq ptr %i.cf, null
  br i1 %.not.i112, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 156
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !150 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cj = uitofp nneg i32 %i.ch to float
  %i.ck = fdiv reassoc nsz arcp contract afn float %i.cj, %spec.select.i111
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 160
  %i.cm = load i32, ptr %i.cl, align 16, !tbaa !151
  %i.cn = sitofp reassoc nsz arcp contract afn i32 %i.cm to float
  %i.co = fdiv reassoc nsz arcp contract afn float %i.cn, %spec.select.i111
  br label %dt_masks_get_image_size.exit114

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 376
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !154
  %i.cr = sitofp reassoc nsz arcp contract afn i32 %i.cq to float
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bt, i64 380
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !155
  %i.cu = sitofp reassoc nsz arcp contract afn i32 %i.ct to float
  br label %dt_masks_get_image_size.exit114

dt_masks_get_image_size.exit114:                  ; preds = %bb.m, %bb.p, %bb.q
  %.0127 = phi nsz float [ %i.ca, %bb.m ], [ %i.cr, %bb.q ], [ %i.ck, %bb.p ]
  %.sink.i113 = phi float [ %i.cd, %bb.m ], [ %i.cu, %bb.q ], [ %i.co, %bb.p ]
  %i.cv = load ptr, ptr %8, align 8, !tbaa !34
  %i.cw = tail call ptr @g_list_nth_data(ptr noundef %i.cv, i32 noundef %9) #12 ; 2 uses
  %.not110 = icmp eq ptr %i.cw, null
  br i1 %.not110, label %bb.ak, label %bb.r

bb.r:                                             ; preds = %dt_masks_get_image_size.exit114
  %i.cx = fmul reassoc nsz arcp contract afn float %.sink.i113, %2 ; 2 uses
  %i.cy = fmul reassoc nsz arcp contract afn float %.0127, %1 ; 2 uses
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !37
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !156
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !157
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 28
  %10 = fneg reassoc nsz arcp contract afn float %i.dd
  %11 = fneg reassoc nsz arcp contract afn float %i.db
  %12 = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %10, float %11)
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %14 = load <2 x float>, ptr %i.cz, align 4, !tbaa !29 ; 4 uses
  %i.df = extractelement <2 x float> %14, i64 1   ; 3 uses
  %15 = extractelement <2 x float> %14, i64 0     ; 3 uses
  %16 = load <2 x float>, ptr %i.de, align 4, !tbaa !29
  %17 = fsub reassoc nsz arcp contract afn <2 x float> %14, %16
  store <2 x float> %17, ptr %i.da, align 4, !tbaa !29
  %18 = fsub reassoc nsz arcp contract afn float %i.cx, %i.df
  %19 = fsub reassoc nsz arcp contract afn float %i.cy, %15
  %i.dg = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %18, float %19)
  %i.dh = fsub reassoc nsz arcp contract afn float %i.dg, %12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store <2 x float> %14, ptr %i.b, align 16, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.cy, ptr %i.di, align 8, !tbaa !29
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.cx, ptr %i.dj, align 4, !tbaa !29
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.dl = fadd reassoc nsz arcp contract afn float %15, 1.000000e+01
  store float %i.dl, ptr %i.dk, align 16, !tbaa !29
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store float %i.df, ptr %i.dm, align 4, !tbaa !29
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store float %15, ptr %i.dn, align 8, !tbaa !29
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.dp = fadd reassoc nsz arcp contract afn float %i.df, 1.000000e+01
  store float %i.dp, ptr %i.do, align 4, !tbaa !29
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131
  %i.dr = call i32 @dt_dev_distort_backtransform(ptr noundef %i.dq, ptr noundef nonnull %i.b, i64 noundef 4) #12 ; 0 uses
  %i.ds = load float, ptr %i.do, align 4, !tbaa !29
  %i.dt = load float, ptr %13, align 4, !tbaa !29 ; 2 uses
  %i.du = fsub reassoc nsz arcp contract afn float %i.ds, %i.dt
  %i.dv = load float, ptr %i.dn, align 8, !tbaa !29
  %i.dw = load float, ptr %i.b, align 16, !tbaa !29 ; 2 uses
  %i.dx = fsub reassoc nsz arcp contract afn float %i.dv, %i.dw
  %i.dy = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.du, float %i.dx)
  %i.dz = load float, ptr %i.dm, align 4, !tbaa !29
  %i.ea = fsub reassoc nsz arcp contract afn float %i.dz, %i.dt
  %i.eb = load float, ptr %i.dk, align 16, !tbaa !29
  %i.ec = fsub reassoc nsz arcp contract afn float %i.eb, %i.dw
  %i.ed = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ea, float %i.ec)
  %i.ee = fsub reassoc nsz arcp contract afn float %i.dy, %i.ed
  %sincos = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ee) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.ef = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %sin, float %cos)
  %i.eg = fcmp reassoc nsz arcp contract afn olt float %i.ef, 0.000000e+00
  %i.eh = fmul reassoc nsz arcp contract afn float %i.dh, f0x42652EE0 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !31
  %i.ek = fneg reassoc nsz arcp contract afn float %i.eh
  %.sink.p = select i1 %i.eg, float %i.eh, float %i.ek
  %.sink = fadd reassoc nsz arcp contract afn float %i.ej, %.sink.p
  store float %.sink, ptr %i.ei, align 4, !tbaa !31
  call void @dt_masks_gui_form_create(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %9, ptr noundef %0) #12
  call void @dt_control_queue_redraw_center() #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.ak

bb.s:                                             ; preds = %bb.k
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 96
  %i.en = load ptr, ptr %i.em, align 16, !tbaa !148 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 152
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !149 ; 2 uses
  %i.eq = fcmp reassoc nsz arcp contract afn ogt float %i.ep, 0.000000e+00
  %spec.select.i115 = select reassoc nsz arcp contract afn i1 %i.eq, float %i.ep, float 1.000000e+00 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 156
  %i.es = load i32, ptr %i.er, align 4, !tbaa !150 ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eu = uitofp nneg i32 %i.es to float
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 160
  %i.ew = load i32, ptr %i.ev, align 16, !tbaa !151
  %i.ex = sitofp reassoc nsz arcp contract afn i32 %i.ew to float
  br label %dt_masks_get_image_size.exit118

bb.u:                                             ; preds = %bb.s
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 2760
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !152 ; 3 uses
  %.not.i116 = icmp eq ptr %i.ez, null
  br i1 %.not.i116, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 156
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !150 ; 2 uses
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fd = uitofp nneg i32 %i.fb to float
  %i.fe = fdiv reassoc nsz arcp contract afn float %i.fd, %spec.select.i115
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 160
  %i.fg = load i32, ptr %i.ff, align 16, !tbaa !151
  %i.fh = sitofp reassoc nsz arcp contract afn i32 %i.fg to float
  %i.fi = fdiv reassoc nsz arcp contract afn float %i.fh, %spec.select.i115
  br label %dt_masks_get_image_size.exit118

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %i.en, i64 376
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !154
  %i.fl = sitofp reassoc nsz arcp contract afn i32 %i.fk to float
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 380
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !155
  %i.fo = sitofp reassoc nsz arcp contract afn i32 %i.fn to float
  br label %dt_masks_get_image_size.exit118

dt_masks_get_image_size.exit118:                  ; preds = %bb.t, %bb.w, %bb.x
  %.0126 = phi nsz float [ %i.eu, %bb.t ], [ %i.fl, %bb.x ], [ %i.fe, %bb.w ]
  %.sink.i117 = phi float [ %i.ex, %bb.t ], [ %i.fo, %bb.x ], [ %i.fi, %bb.w ]
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !180
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1432
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !186
  %i.fs = fmul reassoc nsz arcp contract afn double %i.fr, 7.000000e+00
  %i.ft = fpext reassoc nsz arcp contract afn float %5 to double
  %i.fu = fdiv reassoc nsz arcp contract afn double %i.fs, %i.ft
  %i.fv = fptrunc reassoc nsz arcp contract afn double %i.fu to float ; 3 uses
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, %i.fv ; 2 uses
  %i.fx = fmul reassoc nsz arcp contract afn float %.0126, %1 ; 3 uses
  %i.fy = fmul reassoc nsz arcp contract afn float %.sink.i117, %2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @_gradient_get_distance(float noundef %i.fx, float noundef %i.fy, float noundef %i.fv, ptr noundef nonnull %8, i32 noundef %9, i32 poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g)
  %i.fz = load ptr, ptr %8, align 8, !tbaa !34
  %i.ga = tail call ptr @g_list_nth_data(ptr noundef %i.fz, i32 noundef %9) #12 ; 2 uses
  %.not104 = icmp eq ptr %i.ga, null
  br i1 %.not104, label %.thread, label %bb.y

bb.y:                                             ; preds = %dt_masks_get_image_size.exit118
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !37 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !29
  %i.ge = fsub reassoc nsz arcp contract afn float %i.fx, %i.gd ; 2 uses
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !29
  %i.gi = fsub reassoc nsz arcp contract afn float %i.fy, %i.gh ; 2 uses
  %i.gj = fmul reassoc nsz arcp contract afn float %i.gi, %i.gi
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gj, %i.gf
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !29
  %i.gn = fsub reassoc nsz arcp contract afn float %i.fx, %i.gm ; 2 uses
  %i.go = fmul reassoc nsz arcp contract afn float %i.gn, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !29
  %i.gr = fsub reassoc nsz arcp contract afn float %i.fy, %i.gq ; 2 uses
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gr, %i.gr
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gs, %i.go
  br label %.thread

.thread:                                          ; preds = %dt_masks_get_image_size.exit118, %bb.y
  %i.gu = phi float [ %i.gk, %bb.y ], [ f0x7F7FFFFF, %dt_masks_get_image_size.exit118 ]
  %i.gv = phi reassoc nsz arcp contract afn float [ %i.gt, %bb.y ], [ f0x7F7FFFFF, %dt_masks_get_image_size.exit118 ]
  %i.gw = fcmp reassoc nsz arcp contract afn olt float %i.gu, %i.fw
  %i.gx = fcmp reassoc nsz arcp contract afn olt float %i.gv, %i.fw
  %or.cond = select i1 %i.gw, i1 true, i1 %i.gx
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 1, ptr %i.gy, align 8, !tbaa !20
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 60
  store i32 1, ptr %i.gz, align 4, !tbaa !19
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 0, ptr %i.ha, align 8, !tbaa !158
  br label %bb.af

bb.aa:                                            ; preds = %.thread
  %i.hb = load i32, ptr %i.c, align 4, !tbaa !32
  %.not105 = icmp eq i32 %i.hb, 0
  br i1 %.not105, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 0, ptr %i.hc, align 8, !tbaa !20
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 60
  store i32 1, ptr %i.hd, align 4, !tbaa !19
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 0, ptr %i.he, align 8, !tbaa !158
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.hf = load i32, ptr %i.d, align 4, !tbaa !32
  %.not106 = icmp eq i32 %i.hf, 0
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 0, ptr %i.hg, align 8, !tbaa !20
  %i.hh = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  br i1 %.not106, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %i.hh, align 4, !tbaa !19
  store i32 1, ptr %i.hi, align 8, !tbaa !158
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  store i32 0, ptr %i.hh, align 4, !tbaa !19
  store i32 0, ptr %i.hi, align 8, !tbaa !158
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ae, %bb.ad, %bb.z
  tail call void @dt_control_queue_redraw_center() #12
  %i.hj = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !19
  %.not107 = icmp eq i32 %i.hk, 0
  br i1 %.not107, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hl = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !158
  %.not108 = icmp eq i32 %i.hm, 0
  br i1 %.not108, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !159
  %.not109 = icmp eq i32 %i.ho, 1
  %. = zext i1 %.not109 to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1 = phi i32 [ %., %bb.ah ], [ 0, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
end_hunk_0
