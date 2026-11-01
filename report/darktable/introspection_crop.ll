Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_crop?download=true
inline.NumInlined: 46
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@gui_focus:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.o = load i32, ptr %i.n, align 16, !tbaa !137
  %.not5156 = icmp eq i32 %i.o, 0
  br i1 %.not5156, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.p = phi ptr [ %i.m, %.thread ], [ %i.d, %bb.b ] ; 9 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.q = load ptr, ptr %.in, align 8, !tbaa !138  ; 3 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !139
  %i.s = and i32 %i.r, 2
  %i.t = icmp ne i32 %i.s, 0
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3400), align 8
  %i.v = icmp ne i32 %i.u, 0
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.x = and i32 %i.w, 1048576
  %.not52 = icmp eq i32 %i.x, 0
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 680, ptr noundef nonnull @__FUNCTION__.gui_focus) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !140
  tail call void @dt_control_signal_connect(ptr noundef %i.y, i32 noundef 21, ptr noundef nonnull @_event_preview_updated_callback, ptr noundef nonnull %0) #22
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.aa = load <2 x float>, ptr %i.q, align 4, !tbaa !110 ; 4 uses
  %i.ab = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.aa, zeroinitializer
  %i.ac = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.aa, splat (float 9.900000e-01)
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.aa, <2 x float> splat (float 9.900000e-01)
  %i.ae = select <2 x i1> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.ad ; 2 uses
  store <2 x float> %i.ae, ptr %i.z, align 8, !tbaa !110
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !110
  %i.ai = fsub reassoc nsz arcp contract afn <2 x float> %i.ah, %i.aa ; 3 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.ai, splat (float f0x3C23D70A)
  %i.ak = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ae ; 2 uses
  %i.al = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.ai, %i.ak
  %i.am = select <2 x i1> %i.al, <2 x float> %i.ai, <2 x float> %i.ak
  %i.an = select <2 x i1> %i.aj, <2 x float> splat (float f0x3C23D70A), <2 x float> %i.am
  store <2 x float> %i.an, ptr %i.ag, align 8, !tbaa !110
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  store i32 0, ptr %i.ao, align 4, !tbaa !145
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !145
  %.not53 = icmp eq i32 %i.aq, 0
  br i1 %.not53, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 88 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !146
  store ptr %0, ptr %i.at, align 8, !tbaa !146
  tail call fastcc void @_commit_box(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef %i.q, i32 noundef 0)
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !146
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  store i64 0, ptr %i.ax, align 8, !tbaa !147
  br label %bb.k

bb.j:                                             ; preds = %.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 132
  store i32 1, ptr %i.ay, align 4, !tbaa !145
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.j, %bb.g, %bb.i, %bb.h
  %i.az = phi ptr [ %i.p, %bb.h ], [ %i.m, %bb.j ], [ %i.p, %bb.g ], [ %i.p, %bb.i ], [ %i.d, %bb.b ]
  %i.ba = tail call i64 @g_get_monotonic_time() #22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !148
  ret void
}

declare i32 @dt_dev_modulegroups_test_activated(ptr noundef) local_unnamed_addr #3

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_event_preview_updated_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !136 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i32 1, ptr %i.c, align 4, !tbaa !145
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !139
  %i.e = and i32 %i.d, 4
  %.not5 = icmp eq i32 %i.e, 0
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.g = and i32 %i.f, 1048576
  %.not6 = icmp eq i32 %i.g, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef 664, ptr noundef nonnull @.str.24) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !140
  tail call void @dt_control_signal_disconnect(ptr noundef %i.h, ptr noundef nonnull @_event_preview_updated_callback, ptr noundef nonnull %1) #22
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 0, ptr %i.i, align 8, !tbaa !147
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_commit_box(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load atomic i32, ptr %i.e seq_cst, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !150
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 348
  %i.m = load i32, ptr %i.l, align 4, !tbaa !151
  %.not = icmp eq i32 %i.m, 2
  br i1 %.not, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 0, ptr %i.n, align 8, !tbaa !152
  %i.o = load float, ptr %2, align 4, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load float, ptr %i.t, align 4, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.w = load i32, ptr %i.v, align 16, !tbaa !137
  %.not121 = icmp eq i32 %i.w, 0
  br i1 %.not121, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2, align 4, !tbaa !110
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 2760
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !153  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = load <2 x i32>, ptr %i.z, align 4, !tbaa !109
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.af = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ae to <4 x float>
  %i.ag = load <2 x float>, ptr %i.aa, align 8, !tbaa !110 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ac, align 8, !tbaa !110
  %i.ai = fadd reassoc nsz arcp contract afn <2 x float> %i.ah, %i.ag
  %i.aj = shufflevector <2 x float> %i.ag, <2 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ak = fmul reassoc nsz arcp contract afn <4 x float> %i.aj, %i.af
  store <4 x float> %i.ak, ptr %i.a, align 16, !tbaa !110
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.am = load i32, ptr %i.al, align 16, !tbaa !154
  %i.an = sitofp reassoc nsz arcp contract afn i32 %i.am to double
  %i.ao = call i32 @dt_dev_distort_backtransform_plus(ptr noundef nonnull %i.i, ptr noundef %i.y, double noundef %i.an, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 2) #22
  %.not122 = icmp eq i32 %i.ao, 0
  br i1 %.not122, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.aq = call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.ap, ptr noundef nonnull %i.y, ptr noundef nonnull %0) #22 ; 3 uses
  %.not123 = icmp eq ptr %i.aq, null
  br i1 %.not123, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 164 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !217 ; 3 uses
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  %i.av = load i32, ptr %i.au, align 4, !tbaa !218 ; 3 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !33 ; 5 uses
  %.not124 = icmp eq i32 %i.ay, 0
  %4 = insertelement <2 x i32> poison, i32 %i.as, i64 0
  %5 = insertelement <2 x i32> %4, i32 %i.av, i64 1 ; 3 uses
  br i1 %.not124, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !34 ; 3 uses
  %.not125 = icmp eq i32 %i.ba, 0
  br i1 %.not125, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp samesign uge i32 %i.as, %i.av      ; 4 uses
  %i.bc = icmp slt i32 %i.ay, 0
  %i.bd = call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.be = uitofp nneg i32 %i.bd to float          ; 2 uses
  %i.bf = call i32 @llvm.smax.i32(i32 %i.ba, i32 1)
  %i.bg = uitofp nneg i32 %i.bf to float          ; 2 uses
  %i.bh = fdiv reassoc nsz arcp contract afn float %i.bg, %i.be
  %i.bi = fdiv reassoc nsz arcp contract afn float %i.be, %i.bg
  %i.bj = select reassoc nsz arcp contract afn i1 %i.bc, float %i.bh, float %i.bi ; 5 uses
  %i.bk = load <2 x float>, ptr %i.a, align 16, !tbaa !110 ; 2 uses
  %i.bl = load <2 x float>, ptr %i.ab, align 8, !tbaa !110
  %i.bm = fsub reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bk ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0 ; 4 uses
  %i.bo = extractelement <2 x float> %i.bm, i64 1 ; 4 uses
  %i.bp = fcmp reassoc nsz arcp contract afn ogt float %i.bn, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = fdiv reassoc nsz arcp contract afn float %i.bn, %i.bj
  %i.br = fmul reassoc nsz arcp contract afn float %i.bn, %i.bj
  %i.bs = select reassoc nsz arcp contract afn i1 %i.bb, float %i.bq, float %i.br
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bo, %i.bj
  %i.bu = fdiv reassoc nsz arcp contract afn float %i.bo, %i.bj
  %i.bv = select reassoc nsz arcp contract afn i1 %i.bb, float %i.bt, float %i.bu
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0108 = phi nsz float [ %i.bn, %bb.l ], [ %i.bv, %bb.m ] ; 3 uses
  %.0 = phi nsz float [ %i.bs, %bb.l ], [ %i.bo, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.bw = icmp sgt i32 %i.ay, -1
  %i.bx = xor i1 %i.bb, %i.bw                     ; 2 uses
  %. = select i1 %i.bx, ptr %i.az, ptr %i.ax
  %i.by = load i32, ptr %., align 4, !tbaa !109
  store i32 %i.by, ptr %i.b, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %.in126 = select i1 %i.bx, ptr %i.ax, ptr %i.az
  %i.bz = load i32, ptr %.in126, align 4, !tbaa !109
  store i32 %i.bz, ptr %i.c, align 4, !tbaa !109
  %i.ca = call fastcc i32 @_reduce_aligners(ptr noundef %i.b, ptr noundef %i.c)
  %.not127 = icmp eq i32 %i.ca, 0                 ; 2 uses
  br i1 %.not127, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = insertelement <2 x float> poison, float %.0108, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %.0, i64 1
  %i.cd = fptosi <2 x float> %i.cc to <2 x i32>
  %i.ce = load i32, ptr %i.b, align 4, !tbaa !109
  %i.cf = load i32, ptr %i.c, align 4, !tbaa !109
  %i.cg = insertelement <2 x i32> poison, i32 %i.ce, i64 0
  %i.ch = insertelement <2 x i32> %i.cg, i32 %i.cf, i64 1
  %i.ci = srem <2 x i32> %i.cd, %i.ch
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %i.cj = phi <2 x i32> [ %i.ci, %bb.o ], [ zeroinitializer, %bb.n ] ; 3 uses
  %i.ck = sitofp reassoc nsz arcp contract afn <2 x i32> %i.cj to <2 x float> ; 2 uses
  %i.cl = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ck, splat (float 5.000000e-01)
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, %i.bk ; 2 uses
  store <2 x float> %i.cm, ptr %i.a, align 16, !tbaa !110
  %i.cn = insertelement <2 x float> poison, float %.0108, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %.0, i64 1
  %i.cp = fsub reassoc nsz arcp contract afn <2 x float> %i.co, %i.ck ; 2 uses
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, %i.cm
  store <2 x float> %i.cq, ptr %i.ab, align 8, !tbaa !110
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.cs = and i32 %i.cr, 33554432
  %.not128 = icmp eq i32 %i.cs, 0
  br i1 %.not128, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.ct = select i1 %i.bb, ptr @.str.9, ptr @.str.10
  %i.cu = select i1 %.not127, ptr @.str.93, ptr @.str.92
  %i.cv = fpext reassoc nsz arcp contract afn float %i.bj to double
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !109
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !109
  %i.cy = fpext reassoc nsz arcp contract afn float %.0108 to double
  %i.cz = fpext reassoc nsz arcp contract afn float %.0 to double
  %i.da = fpext reassoc nsz arcp contract afn <2 x float> %i.cp to <2 x double> ; 2 uses
  %i.db = extractelement <2 x i32> %i.cj, i64 0
  %i.dc = extractelement <2 x i32> %i.cj, i64 1
  %i.dd = extractelement <2 x double> %i.da, i64 0
  %i.de = extractelement <2 x double> %i.da, i64 1
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.91, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cu, double noundef %i.cv, i32 noundef %i.ba, i32 noundef %i.ay, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.dc, double noundef %i.cy, double noundef %i.cz, double noundef %i.dd, double noundef %i.de) #22
  %i.df = load <2 x i32>, ptr %i.ar, align 4, !tbaa !109
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %i.dg = phi <2 x i32> [ %i.df, %bb.p ], [ %5, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.j, %bb.i
  %i.dh = phi <2 x i32> [ %i.dg, %bb.q ], [ %5, %bb.j ], [ %5, %bb.i ]
  %i.di = shufflevector <2 x i32> %i.dh, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dj = sitofp reassoc nsz arcp contract afn <4 x i32> %i.di to <4 x float>
  %i.dk = load <4 x float>, ptr %i.a, align 16, !tbaa !110
  %i.dl = fdiv reassoc nsz arcp contract afn <4 x float> %i.dk, %i.dj ; 3 uses
  %i.dm = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.dl, <float 0.000000e+00, float 0.000000e+00, float f0x3C23D70A, float f0x3C23D70A>
  %i.dn = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.dl, <float 9.900000e-01, float 9.900000e-01, float 1.000000e+00, float 1.000000e+00>
  %i.do = select <4 x i1> %i.dn, <4 x float> %i.dl, <4 x float> <float 9.900000e-01, float 9.900000e-01, float 1.000000e+00, float 1.000000e+00>
  %i.dp = select <4 x i1> %i.dm, <4 x float> <float 0.000000e+00, float 0.000000e+00, float f0x3C23D70A, float f0x3C23D70A>, <4 x float> %i.do ; 5 uses
  store <4 x float> %i.dp, ptr %2, align 4, !tbaa !110
  %.not129 = icmp ne i32 %3, 0
  %i.dq = extractelement <4 x float> %i.dp, i64 0
  %i.dr = fsub reassoc nsz arcp contract afn float %i.dq, %i.o
  %i.ds = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dr)
  %i.dt = fcmp reassoc nsz arcp contract afn uge float %i.ds, f0x358637BD
  %or.cond = select i1 %.not129, i1 true, i1 %i.dt
  br i1 %or.cond, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = extractelement <4 x float> %i.dp, i64 1
  %i.dv = fsub reassoc nsz arcp contract afn float %i.du, %i.q
  %i.dw = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp reassoc nsz arcp contract afn uge float %i.dw, f0x358637BD
  br i1 %i.dx, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dy = extractelement <4 x float> %i.dp, i64 2
  %i.dz = fsub reassoc nsz arcp contract afn float %i.dy, %i.s
  %i.ea = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dz)
  %i.eb = fcmp reassoc nsz arcp contract afn uge float %i.ea, f0x358637BD
  br i1 %i.eb, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ec = extractelement <4 x float> %i.dp, i64 3
  %i.ed = fsub reassoc nsz arcp contract afn float %i.ec, %i.u
  %i.ee = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ed)
  %i.ef = fcmp reassoc nsz arcp contract afn uge float %i.ee, f0x358637BD
  br i1 %i.ef, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !135
  call void @dt_dev_add_history_item(ptr noundef %i.eg, ptr noundef nonnull %0, i32 noundef 1) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.e, %bb.f, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %bb.a, %.critedge
  ret void
}

declare i64 @g_get_monotonic_time() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(28) ptr @malloc(i64 noundef 28) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !122
  tail call void @free(ptr noundef %i.b) #22
  store ptr null, ptr %i.a, align 16, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @reload_defaults(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !219 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1952
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1956
  %i.g = load float, ptr %i.f, align 4, !tbaa !110
  store float %i.g, ptr %i.d, align 4, !tbaa !66
  %i.h = load float, ptr %i.e, align 16, !tbaa !110
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store float %i.h, ptr %i.i, align 4, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1964
  %i.k = load float, ptr %i.j, align 4, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float %i.k, ptr %i.l, align 4, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1960
  %i.n = load float, ptr %i.m, align 8, !tbaa !110
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store float %i.n, ptr %i.o, align 4, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 -1, ptr %i.p, align 4, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 -1, ptr %i.q, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !136 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138  ; 5 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = atomicrmw add ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.k = load float, ptr %i.j, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !157
  %i.n = fadd reassoc nsz arcp contract afn float %i.m, %i.k
  %i.o = load float, ptr %i.d, align 4, !tbaa !66 ; 2 uses
  %i.p = fsub reassoc nsz arcp contract afn float %i.n, %i.o
  store float %i.p, ptr %i.l, align 8, !tbaa !157
  store float %i.o, ptr %i.j, align 8, !tbaa !156
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !158
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.w = load float, ptr %i.v, align 8, !tbaa !156
  %i.x = fsub reassoc nsz arcp contract afn float %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store float %i.x, ptr %i.y, align 8, !tbaa !157
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !159
  %i.ab = icmp eq ptr %1, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !160
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !161
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !67 ; 2 uses
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ag, %i.ai
  store float %i.aj, ptr %i.ae, align 4, !tbaa !161
  store float %i.ai, ptr %i.ac, align 4, !tbaa !160
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !162
  %i.am = icmp eq ptr %1, %i.al
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !160
  %i.ar = fsub reassoc nsz arcp contract afn float %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store float %i.ar, ptr %i.as, align 4, !tbaa !161
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f, %bb.h, %bb.d
  %.sink = phi i32 [ 4, %bb.d ], [ 8, %bb.h ], [ 2, %bb.f ], [ 1, %bb.b ]
  tail call fastcc void @_aspect_apply(ptr noundef nonnull %0, i32 noundef %.sink)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  tail call fastcc void @_update_sliders_and_limit(ptr noundef nonnull %i.b)
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %i.av = atomicrmw add ptr %i.au, i32 -1 seq_cst, align 4 ; 0 uses
  tail call fastcc void @_commit_box(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef %i.d, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_aspect_apply(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_0
begin_hunk_1_@gui_post_expose:bb.a
  call void @g_object_unref(ptr noundef %i.ep) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.m, %bb.l
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 1432
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !183
  %i.hc = fmul reassoc nsz arcp contract afn double %i.hb, 2.000000e+00
  %i.hd = fdiv reassoc nsz arcp contract afn double %i.hc, %i.al
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.hd) #22
  %i.he = call i64 @g_get_monotonic_time() #22
  %i.hf = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 3 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !148
  %i.hh = sub nsw i64 %i.he, %i.hg
  %i.hi = sitofp reassoc nsz arcp contract afn i64 %i.hh to float
  %i.hj = fmul reassoc nnan nsz arcp contract afn float %i.hi, 5.000000e-07
  %i.hk = fcmp reassoc nsz arcp contract afn ugt float %i.hj, 1.000000e+00
  br i1 %i.hk, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hl = call i64 @g_get_monotonic_time() #22
  %i.hm = load i64, ptr %i.hf, align 8, !tbaa !148
  %i.hn = sub nsw i64 %i.hl, %i.hm
  %i.ho = sitofp reassoc nsz arcp contract afn i64 %i.hn to float
  %i.hp = fmul reassoc nnan nsz arcp contract afn float %i.ho, 5.000000e-07
  %i.hq = fpext reassoc nsz arcp contract afn float %i.hp to double
  %i.hr = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.hq
  %i.hs = fcmp reassoc nsz arcp contract afn ugt double %i.hr, 1.000000e+00
  br i1 %i.hs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ht = call i64 @g_get_monotonic_time() #22
  %i.hu = load i64, ptr %i.hf, align 8, !tbaa !148
  %i.hv = sub nsw i64 %i.ht, %i.hu
  %i.hw = sitofp reassoc nsz arcp contract afn i64 %i.hv to float
  %i.hx = fmul reassoc nnan nsz arcp contract afn float %i.hw, 5.000000e-07
  %i.hy = fpext reassoc nsz arcp contract afn float %i.hx to double
  %i.hz = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.hy
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w
  %i.ia = phi reassoc nsz arcp contract afn double [ 1.000000e+00, %bb.w ], [ %i.hz, %bb.x ], [ 0.000000e+00, %bb.v ]
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 1408
  %i.id = load double, ptr %i.ic, align 8, !tbaa !236
  %i.ie = fmul reassoc nsz arcp contract afn double %i.id, 5.000000e-01
  %i.if = fadd reassoc nsz arcp contract afn double %i.ie, 5.000000e-01 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 1384
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !237
  %i.ii = fmul reassoc nsz arcp contract afn double %i.if, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 1400
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !238
  %i.il = fmul reassoc nsz arcp contract afn double %i.ik, %i.if
  %i.im = getelementptr inbounds nuw i8, ptr %i.ib, i64 1392
  %i.in = load double, ptr %i.im, align 8, !tbaa !239
  %i.io = fmul reassoc nsz arcp contract afn double %i.in, %i.if
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.ii, double noundef %i.il, double noundef %i.io, double noundef %i.ia) #22
  %i.ip = fcmp reassoc nsz arcp contract afn olt float %2, %3
  %i.iq = select reassoc nsz arcp contract afn i1 %i.ip, float %2, float %3
  %i.ir = fpext reassoc nsz arcp contract afn float %i.iq to double
  %i.is = fmul reassoc nsz arcp contract afn double %i.ir, f0x3FD5555555555555 ; 2 uses
  %i.it = fcmp reassoc nsz arcp contract afn ogt double %i.is, 3.000000e+01
  %spec.select = select reassoc nsz arcp contract afn i1 %i.it, double 3.000000e+01, double %i.is
  %i.iu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 1432
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !183
  %i.ix = fmul reassoc nsz arcp contract afn double %i.iw, %spec.select
  %i.iy = fdiv reassoc nsz arcp contract afn double %i.ix, %i.al ; 27 uses
  %i.iz = load float, ptr %i.bj, align 8, !tbaa !156
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, %2
  %i.jb = fpext reassoc nsz arcp contract afn float %i.ja to double
  %i.jc = fadd reassoc nsz arcp contract afn double %i.iy, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.n, i64 60 ; 16 uses
  %i.je = load float, ptr %i.jd, align 4, !tbaa !160
  %i.jf = fmul reassoc nsz arcp contract afn float %i.je, %3
  %i.jg = fpext reassoc nsz arcp contract afn float %i.jf to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.jc, double noundef %i.jg) #22
  %i.jh = load float, ptr %i.bj, align 8, !tbaa !156
  %i.ji = fmul reassoc nsz arcp contract afn float %i.jh, %2
  %i.jj = fpext reassoc nsz arcp contract afn float %i.ji to double
  %i.jk = fadd reassoc nsz arcp contract afn double %i.iy, %i.jj
  %i.jl = load float, ptr %i.jd, align 4, !tbaa !160
  %i.jm = getelementptr inbounds nuw i8, ptr %i.n, i64 68 ; 9 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !161
  %i.jo = fadd reassoc nsz arcp contract afn float %i.jn, %i.jl
  %i.jp = fmul reassoc nsz arcp contract afn float %i.jo, %3
  %i.jq = fpext reassoc nsz arcp contract afn float %i.jp to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.jk, double noundef %i.jq) #22
  %i.jr = load float, ptr %i.bj, align 8, !tbaa !156
  %i.js = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 10 uses
  %i.jt = load float, ptr %i.js, align 8, !tbaa !157
  %i.ju = fadd reassoc nsz arcp contract afn float %i.jt, %i.jr
  %i.jv = fmul reassoc nsz arcp contract afn float %i.ju, %2
  %i.jw = fpext reassoc nsz arcp contract afn float %i.jv to double
  %i.jx = fsub reassoc nsz arcp contract afn double %i.jw, %i.iy
  %i.jy = load float, ptr %i.jd, align 4, !tbaa !160
  %i.jz = fmul reassoc nsz arcp contract afn float %i.jy, %3
  %i.ka = fpext reassoc nsz arcp contract afn float %i.jz to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.jx, double noundef %i.ka) #22
  %i.kb = load float, ptr %i.bj, align 8, !tbaa !156
  %i.kc = load float, ptr %i.js, align 8, !tbaa !157
  %i.kd = fadd reassoc nsz arcp contract afn float %i.kc, %i.kb
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, %2
  %i.kf = fpext reassoc nsz arcp contract afn float %i.ke to double
  %i.kg = fsub reassoc nsz arcp contract afn double %i.kf, %i.iy
  %i.kh = load float, ptr %i.jd, align 4, !tbaa !160
  %i.ki = load float, ptr %i.jm, align 4, !tbaa !161
  %i.kj = fadd reassoc nsz arcp contract afn float %i.ki, %i.kh
  %i.kk = fmul reassoc nsz arcp contract afn float %i.kj, %3
  %i.kl = fpext reassoc nsz arcp contract afn float %i.kk to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.kg, double noundef %i.kl) #22
  %i.km = load float, ptr %i.bj, align 8, !tbaa !156
  %i.kn = fmul reassoc nsz arcp contract afn float %i.km, %2
  %i.ko = fpext reassoc nsz arcp contract afn float %i.kn to double
  %i.kp = load float, ptr %i.jd, align 4, !tbaa !160
  %i.kq = fmul reassoc nsz arcp contract afn float %i.kp, %3
  %i.kr = fpext reassoc nsz arcp contract afn float %i.kq to double
  %i.ks = fadd reassoc nsz arcp contract afn double %i.iy, %i.kr
  call void @cairo_move_to(ptr noundef %1, double noundef %i.ko, double noundef %i.ks) #22
  %i.kt = load float, ptr %i.bj, align 8, !tbaa !156
  %i.ku = load float, ptr %i.js, align 8, !tbaa !157
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ku, %i.kt
  %i.kw = fmul reassoc nsz arcp contract afn float %i.kv, %2
  %i.kx = fpext reassoc nsz arcp contract afn float %i.kw to double
  %i.ky = load float, ptr %i.jd, align 4, !tbaa !160
  %i.kz = fmul reassoc nsz arcp contract afn float %i.ky, %3
  %i.la = fpext reassoc nsz arcp contract afn float %i.kz to double
  %i.lb = fadd reassoc nsz arcp contract afn double %i.iy, %i.la
  call void @cairo_line_to(ptr noundef %1, double noundef %i.kx, double noundef %i.lb) #22
  %i.lc = load float, ptr %i.bj, align 8, !tbaa !156
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, %2
  %i.le = fpext reassoc nsz arcp contract afn float %i.ld to double
  %i.lf = load float, ptr %i.jd, align 4, !tbaa !160
  %i.lg = load float, ptr %i.jm, align 4, !tbaa !161
  %i.lh = fadd reassoc nsz arcp contract afn float %i.lg, %i.lf
  %i.li = fmul reassoc nsz arcp contract afn float %i.lh, %3
  %i.lj = fpext reassoc nsz arcp contract afn float %i.li to double
  %i.lk = fsub reassoc nsz arcp contract afn double %i.lj, %i.iy
  call void @cairo_move_to(ptr noundef %1, double noundef %i.le, double noundef %i.lk) #22
  %i.ll = load float, ptr %i.bj, align 8, !tbaa !156
  %i.lm = load float, ptr %i.js, align 8, !tbaa !157
  %i.ln = fadd reassoc nsz arcp contract afn float %i.lm, %i.ll
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ln, %2
  %i.lp = fpext reassoc nsz arcp contract afn float %i.lo to double
  %i.lq = load float, ptr %i.jd, align 4, !tbaa !160
  %i.lr = load float, ptr %i.jm, align 4, !tbaa !161
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lr, %i.lq
  %i.lt = fmul reassoc nsz arcp contract afn float %i.ls, %3
  %i.lu = fpext reassoc nsz arcp contract afn float %i.lt to double
  %i.lv = fsub reassoc nsz arcp contract afn double %i.lu, %i.iy
  call void @cairo_line_to(ptr noundef %1, double noundef %i.lp, double noundef %i.lv) #22
  call void @cairo_stroke(ptr noundef %1) #22
  %i.lw = load <4 x float>, ptr %i.bj, align 8, !tbaa !110
  %i.lx = insertelement <4 x float> poison, float %2, i64 0
  %i.ly = insertelement <4 x float> %i.lx, float %3, i64 1
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ma = fmul reassoc nsz arcp contract afn <4 x float> %i.lw, %i.lz ; 4 uses
  %i.mb = extractelement <4 x float> %i.ma, i64 0
  %i.mc = extractelement <4 x float> %i.ma, i64 1
  %i.md = extractelement <4 x float> %i.ma, i64 2
  %i.me = extractelement <4 x float> %i.ma, i64 3
  call void @dt_guides_draw(ptr noundef %1, float noundef %i.mb, float noundef %i.mc, float noundef %i.md, float noundef %i.me, float noundef %6) #22
  %i.mf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 1408
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !236
  %i.mi = fmul reassoc nsz arcp contract afn double %i.mh, 5.000000e-01
  %i.mj = fadd reassoc nsz arcp contract afn double %i.mi, 5.000000e-01 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 1384
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !237
  %i.mm = fmul reassoc nsz arcp contract afn double %i.mj, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mf, i64 1400
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !238
  %i.mp = fmul reassoc nsz arcp contract afn double %i.mo, %i.mj
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mf, i64 1392
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !239
  %i.ms = fmul reassoc nsz arcp contract afn double %i.mr, %i.mj
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.mm, double noundef %i.mp, double noundef %i.ms, double noundef 1.000000e+00) #22
  %i.mt = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !152 ; 2 uses
  %.not343 = icmp eq i32 %i.mu, 0
  br i1 %.not343, label %bb.z, label %_gui_get_grab.exit

bb.z:                                             ; preds = %bb.y
  %i.mv = fptrunc reassoc nsz arcp contract afn double %i.iy to float ; 2 uses
  %i.mw = load float, ptr %i.bj, align 8, !tbaa !156 ; 6 uses
  %i.mx = fcmp reassoc nsz arcp contract afn olt float %4, %i.mw
  br i1 %i.mx, label %_gui_get_grab.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.my = load float, ptr %i.js, align 8, !tbaa !157 ; 3 uses
  %i.mz = fadd reassoc nsz arcp contract afn float %i.my, %i.mw ; 3 uses
  %i.na = fcmp reassoc nsz arcp contract afn ogt float %4, %i.mz
  br i1 %i.na, label %_gui_get_grab.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %8 = load float, ptr %i.jd, align 4, !tbaa !160 ; 6 uses
  %i.nb = fcmp reassoc nsz arcp contract afn olt float %5, %8
  br i1 %i.nb, label %_gui_get_grab.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.nc = load float, ptr %i.jm, align 4, !tbaa !161 ; 3 uses
  %i.nd = fadd reassoc nsz arcp contract afn float %i.nc, %8 ; 3 uses
  %i.ne = fcmp reassoc nsz arcp contract afn ogt float %5, %i.nd
  br i1 %i.ne, label %_gui_get_grab.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.nf = fdiv reassoc nsz arcp contract afn float %i.mv, %2
  %i.ng = fdiv reassoc nsz arcp contract afn float %i.mv, %3
  %i.nh = insertelement <4 x float> poison, float %i.mw, i64 0
  %9 = insertelement <4 x float> %i.nh, float %8, i64 1
  %10 = insertelement <4 x float> %9, float %i.my, i64 2
  %i.ni = insertelement <4 x float> %10, float %i.nc, i64 3
  %i.nj = fcmp reassoc nsz arcp contract afn une <4 x float> %i.ni, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.nk = bitcast <4 x i1> %i.nj to i4
  %.not359 = icmp eq i4 %i.nk, 0                  ; 2 uses
  %.052.i = select nsz i1 %.not359, float 4.500000e-01, float %i.nf ; 2 uses
  %.0.i = select nsz i1 %.not359, float 4.500000e-01, float %i.ng ; 2 uses
  %i.nl = fcmp reassoc nsz arcp contract afn oge float %4, %i.mw
  %i.nm = fadd reassoc nsz arcp contract afn float %.052.i, %i.mw
  %i.nn = fcmp reassoc nsz arcp contract afn olt float %4, %i.nm
  %or.cond65.i = and i1 %i.nl, %i.nn
  br i1 %or.cond65.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.no = fsub reassoc nsz arcp contract afn float %4, %i.mw
  %i.np = fpext reassoc nsz arcp contract afn float %i.no to double
  %i.nq = fpext reassoc nsz arcp contract afn float %i.my to double
  %i.nr = fmul reassoc nsz arcp contract afn double %i.nq, 5.000000e-01
  %i.ns = fcmp reassoc nsz arcp contract afn ogt double %i.nr, %i.np
  br i1 %i.ns, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.nt = fcmp reassoc nsz arcp contract afn ole float %4, %i.mz
  %i.nu = fsub reassoc nsz arcp contract afn float %i.mz, %.052.i
  %i.nv = fcmp reassoc nsz arcp contract afn ogt float %4, %i.nu
  %or.cond67.i = and i1 %i.nt, %i.nv
  %spec.select.i = select i1 %or.cond67.i, i32 4, i32 0
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.053.i = phi i32 [ %spec.select.i, %bb.af ], [ 1, %bb.ae ] ; 3 uses
  %i.nw = fcmp reassoc nsz arcp contract afn oge float %5, %8
  %i.nx = fadd reassoc nsz arcp contract afn float %.0.i, %8
  %i.ny = fcmp reassoc nsz arcp contract afn olt float %5, %i.nx
  %or.cond69.i = and i1 %i.nw, %i.ny
  br i1 %or.cond69.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.nz = fsub reassoc nsz arcp contract afn float %5, %8
  %i.oa = fpext reassoc nsz arcp contract afn float %i.nz to double
  %i.ob = fpext reassoc nsz arcp contract afn float %i.nc to double
  %i.oc = fmul reassoc nsz arcp contract afn double %i.ob, 5.000000e-01
  %i.od = fcmp reassoc nsz arcp contract afn ogt double %i.oc, %i.oa
  br i1 %i.od, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.oe = or disjoint i32 %.053.i, 2
  br label %_gui_get_grab.exit

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.of = fcmp reassoc nsz arcp contract afn ole float %5, %i.nd
  %i.og = fsub reassoc nsz arcp contract afn float %i.nd, %.0.i
  %i.oh = fcmp reassoc nsz arcp contract afn ogt float %5, %i.og
  %or.cond71.i = and i1 %i.of, %i.oh
  %i.oi = or disjoint i32 %.053.i, 8
  %spec.select357 = select i1 %or.cond71.i, i32 %i.oi, i32 %.053.i
  br label %_gui_get_grab.exit

_gui_get_grab.exit:                               ; preds = %bb.aj, %bb.ai, %bb.y
  %i.oj = phi i32 [ %i.mu, %bb.y ], [ %spec.select357, %bb.aj ], [ %i.oe, %bb.ai ]
  switch i32 %i.oj, label %_gui_get_grab.exit.thread [
    i32 1, label %bb.ak
    i32 2, label %bb.al
    i32 3, label %bb.am
    i32 4, label %bb.an
    i32 8, label %bb.ao
    i32 12, label %bb.ap
    i32 6, label %bb.aq
    i32 9, label %bb.ar
  ]

bb.ak:                                            ; preds = %_gui_get_grab.exit
  %i.ok = load float, ptr %i.bj, align 8, !tbaa !156
  %i.ol = fmul reassoc nsz arcp contract afn float %i.ok, %2
  %i.om = fpext reassoc nsz arcp contract afn float %i.ol to double
  %i.on = load float, ptr %i.jd, align 4, !tbaa !160
  %i.oo = fmul reassoc nsz arcp contract afn float %i.on, %3
  %i.op = fpext reassoc nsz arcp contract afn float %i.oo to double
  %i.oq = load float, ptr %i.jm, align 4, !tbaa !161
  %i.or = fmul reassoc nsz arcp contract afn float %i.oq, %3
  %i.os = fpext reassoc nsz arcp contract afn float %i.or to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.om, double noundef %i.op, double noundef %i.iy, double noundef %i.os) #22
  br label %_gui_get_grab.exit.thread

bb.al:                                            ; preds = %_gui_get_grab.exit
  %i.ot = load float, ptr %i.bj, align 8, !tbaa !156
  %i.ou = fmul reassoc nsz arcp contract afn float %i.ot, %2
  %i.ov = fpext reassoc nsz arcp contract afn float %i.ou to double
  %i.ow = load float, ptr %i.jd, align 4, !tbaa !160
  %i.ox = fmul reassoc nsz arcp contract afn float %i.ow, %3
  %i.oy = fpext reassoc nsz arcp contract afn float %i.ox to double
  %i.oz = load float, ptr %i.js, align 8, !tbaa !157
  %i.pa = fmul reassoc nsz arcp contract afn float %i.oz, %2
  %i.pb = fpext reassoc nsz arcp contract afn float %i.pa to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.ov, double noundef %i.oy, double noundef %i.pb, double noundef %i.iy) #22
  br label %_gui_get_grab.exit.thread

bb.am:                                            ; preds = %_gui_get_grab.exit
  %i.pc = load float, ptr %i.bj, align 8, !tbaa !156
  %i.pd = fmul reassoc nsz arcp contract afn float %i.pc, %2
  %i.pe = fpext reassoc nsz arcp contract afn float %i.pd to double
  %i.pf = load float, ptr %i.jd, align 4, !tbaa !160
  %i.pg = fmul reassoc nsz arcp contract afn float %i.pf, %3
  %i.ph = fpext reassoc nsz arcp contract afn float %i.pg to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.pe, double noundef %i.ph, double noundef %i.iy, double noundef %i.iy) #22
  br label %_gui_get_grab.exit.thread

bb.an:                                            ; preds = %_gui_get_grab.exit
  %i.pi = load float, ptr %i.bj, align 8, !tbaa !156
  %i.pj = load float, ptr %i.js, align 8, !tbaa !157
  %i.pk = fadd reassoc nsz arcp contract afn float %i.pj, %i.pi
  %i.pl = fmul reassoc nsz arcp contract afn float %i.pk, %2
  %i.pm = fpext reassoc nsz arcp contract afn float %i.pl to double
  %i.pn = fsub reassoc nsz arcp contract afn double %i.pm, %i.iy
  %i.po = load float, ptr %i.jd, align 4, !tbaa !160
  %i.pp = fmul reassoc nsz arcp contract afn float %i.po, %3
  %i.pq = fpext reassoc nsz arcp contract afn float %i.pp to double
  %i.pr = load float, ptr %i.jm, align 4, !tbaa !161
  %i.ps = fmul reassoc nsz arcp contract afn float %i.pr, %3
  %i.pt = fpext reassoc nsz arcp contract afn float %i.ps to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.pn, double noundef %i.pq, double noundef %i.iy, double noundef %i.pt) #22
  br label %_gui_get_grab.exit.thread

bb.ao:                                            ; preds = %_gui_get_grab.exit
  %i.pu = load float, ptr %i.bj, align 8, !tbaa !156
  %i.pv = fmul reassoc nsz arcp contract afn float %i.pu, %2
  %i.pw = fpext reassoc nsz arcp contract afn float %i.pv to double
  %i.px = load float, ptr %i.jd, align 4, !tbaa !160
  %i.py = load float, ptr %i.jm, align 4, !tbaa !161
  %i.pz = fadd reassoc nsz arcp contract afn float %i.py, %i.px
  %i.qa = fmul reassoc nsz arcp contract afn float %i.pz, %3
  %i.qb = fpext reassoc nsz arcp contract afn float %i.qa to double
  %i.qc = fsub reassoc nsz arcp contract afn double %i.qb, %i.iy
  %i.qd = load float, ptr %i.js, align 8, !tbaa !157
  %i.qe = fmul reassoc nsz arcp contract afn float %i.qd, %2
  %i.qf = fpext reassoc nsz arcp contract afn float %i.qe to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.pw, double noundef %i.qc, double noundef %i.qf, double noundef %i.iy) #22
  br label %_gui_get_grab.exit.thread

bb.ap:                                            ; preds = %_gui_get_grab.exit
  %i.qg = load <2 x float>, ptr %i.bj, align 8, !tbaa !110
  %i.qh = load <2 x float>, ptr %i.js, align 8, !tbaa !110
  %i.qi = fadd reassoc nsz arcp contract afn <2 x float> %i.qh, %i.qg
  %i.qj = insertelement <2 x float> poison, float %2, i64 0
  %i.qk = insertelement <2 x float> %i.qj, float %3, i64 1
  %i.ql = fmul reassoc nsz arcp contract afn <2 x float> %i.qi, %i.qk
  %i.qm = fpext reassoc nsz arcp contract afn <2 x float> %i.ql to <2 x double> ; 2 uses
  %i.qn = extractelement <2 x double> %i.qm, i64 0
  %i.qo = fsub reassoc nsz arcp contract afn double %i.qn, %i.iy
  %i.qp = extractelement <2 x double> %i.qm, i64 1
  %i.qq = fsub reassoc nsz arcp contract afn double %i.qp, %i.iy
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.qo, double noundef %i.qq, double noundef %i.iy, double noundef %i.iy) #22
  br label %_gui_get_grab.exit.thread

bb.aq:                                            ; preds = %_gui_get_grab.exit
  %i.qr = load float, ptr %i.bj, align 8, !tbaa !156
  %i.qs = load float, ptr %i.js, align 8, !tbaa !157
  %i.qt = fadd reassoc nsz arcp contract afn float %i.qs, %i.qr
  %i.qu = fmul reassoc nsz arcp contract afn float %i.qt, %2
  %i.qv = fpext reassoc nsz arcp contract afn float %i.qu to double
  %i.qw = fsub reassoc nsz arcp contract afn double %i.qv, %i.iy
  %i.qx = load float, ptr %i.jd, align 4, !tbaa !160
  %i.qy = fmul reassoc nsz arcp contract afn float %i.qx, %3
  %i.qz = fpext reassoc nsz arcp contract afn float %i.qy to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.qw, double noundef %i.qz, double noundef %i.iy, double noundef %i.iy) #22
  br label %_gui_get_grab.exit.thread

bb.ar:                                            ; preds = %_gui_get_grab.exit
  %i.ra = load float, ptr %i.bj, align 8, !tbaa !156
  %i.rb = fmul reassoc nsz arcp contract afn float %i.ra, %2
  %i.rc = fpext reassoc nsz arcp contract afn float %i.rb to double
  %i.rd = load float, ptr %i.jd, align 4, !tbaa !160
  %i.re = load float, ptr %i.jm, align 4, !tbaa !161
  %i.rf = fadd reassoc nsz arcp contract afn float %i.re, %i.rd
  %i.rg = fmul reassoc nsz arcp contract afn float %i.rf, %3
  %i.rh = fpext reassoc nsz arcp contract afn float %i.rg to double
  %i.ri = fsub reassoc nsz arcp contract afn double %i.rh, %i.iy
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.rc, double noundef %i.ri, double noundef %i.iy, double noundef %i.iy) #22
  br label %_gui_get_grab.exit.thread

_gui_get_grab.exit.thread:                        ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %_gui_get_grab.exit, %bb.ar
  call void @cairo_stroke(ptr noundef %1) #22
  br label %bb.as

bb.as:                                            ; preds = %_gui_get_grab.exit.thread, %bb.k, %bb.c, %bb.b
  ret void
}

declare i32 @dt_iop_color_picker_is_visible(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_set_max_clip(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !136 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !150 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  %i.m = load i64, ptr %i.l, align 16, !tbaa !252
  %i.n = icmp eq i64 %i.g, %i.m
  br i1 %i.n, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 348
  %i.p = load i32, ptr %i.o, align 4, !tbaa !151
  %.not = icmp eq i32 %i.p, 2
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 2760
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !153  ; 3 uses
  %i.s = tail call ptr @dt_dev_distort_get_iop_pipe(ptr noundef nonnull %i.i, ptr noundef %i.r, ptr noundef nonnull %0) #22 ; 2 uses
  %.not72 = icmp eq ptr %i.s, null
  br i1 %.not72, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store <2 x float> zeroinitializer, ptr %i.a, align 16, !tbaa !110
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.t, align 4, !tbaa !109
  %i.w = sitofp reassoc nsz arcp contract afn <2 x i32> %i.v to <2 x float> ; 3 uses
  store <2 x float> %i.w, ptr %i.u, align 8, !tbaa !110
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.y = load float, ptr %i.e, align 4, !tbaa !66
  %i.z = extractelement <2 x float> %i.w, i64 0   ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.y, %i.z
  store float %i.aa, ptr %i.x, align 16, !tbaa !110
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !67
  %i.ae = extractelement <2 x float> %i.w, i64 1  ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.ad, %i.ae
  store float %i.af, ptr %i.ab, align 4, !tbaa !110
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !68
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.z
  store float %i.aj, ptr %i.ag, align 8, !tbaa !110
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !69
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.ae
  store float %i.an, ptr %i.ak, align 4, !tbaa !110
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aq = load i32, ptr %i.ap, align 16, !tbaa !154
  %i.ar = sitofp reassoc nsz arcp contract afn i32 %i.aq to double
  %i.as = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.ao, ptr noundef %i.r, double noundef %i.ar, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 4) #22
  %.not73 = icmp eq i32 %i.as, 0
  br i1 %.not73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 156
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aw = load <2 x i32>, ptr %i.at, align 4, !tbaa !109
  %i.ax = shufflevector <2 x i32> %i.aw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ay = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ax to <4 x float> ; 2 uses
  %i.az = load <2 x float>, ptr %i.a, align 16, !tbaa !110 ; 2 uses
  %i.ba = load <2 x float>, ptr %i.u, align 8, !tbaa !110
  %i.bb = fsub reassoc nsz arcp contract afn <2 x float> %i.ba, %i.az
  %i.bc = shufflevector <2 x float> %i.az, <2 x float> %i.bb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bd = fdiv reassoc nsz arcp contract afn <4 x float> %i.bc, %i.ay ; 3 uses
  %i.be = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bd, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bf = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bd, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bg = shufflevector <4 x i1> %i.be, <4 x i1> %i.bf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bh = select <4 x i1> %i.bg, <4 x float> %i.bd, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 4 uses
  store <4 x float> %i.bh, ptr %i.au, align 8, !tbaa !110
  %i.bi = load <2 x float>, ptr %i.x, align 16, !tbaa !110 ; 2 uses
  %i.bj = load <2 x float>, ptr %i.ag, align 8, !tbaa !110
  %i.bk = fsub reassoc nsz arcp contract afn <2 x float> %i.bj, %i.bi
  %i.bl = shufflevector <2 x float> %i.bi, <2 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bm = fdiv reassoc nsz arcp contract afn <4 x float> %i.bl, %i.ay ; 3 uses
  %i.bn = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bm, %i.bh
  %i.bo = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bm, %i.bh
  %i.bp = shufflevector <4 x i1> %i.bn, <4 x i1> %i.bo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bq = select <4 x i1> %i.bp, <4 x float> %i.bm, <4 x float> %i.bh
  store <4 x float> %i.bq, ptr %i.av, align 8, !tbaa !110
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !150
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 416
  %i.bv = load i64, ptr %i.bu, align 16, !tbaa !252
  store i64 %i.bv, ptr %i.f, align 8, !tbaa !147
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b, %bb.a
  %.2 = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ %.0, %bb.f ], [ 0, %bb.c ]
  ret i32 %.2
}

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_fill_rule(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_fill(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #3

declare i32 @dt_dev_get_processed_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #3

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #3

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #3

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_clip_extents(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gui_draw_rounded_rectangle(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #3

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @dt_guides_draw(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr noundef %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !136 ; 53 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !145
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !150
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  %i.l = load i32, ptr %i.k, align 16, !tbaa !177
  %.not307 = icmp eq i32 %i.l, 0
  br i1 %.not307, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.m = call i32 @dt_dev_get_preview_size(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1432
  %i.p = load double, ptr %i.o, align 8, !tbaa !183
  %i.q = fmul reassoc nsz arcp contract afn double %i.p, 3.000000e+01
  %i.r = fpext reassoc nsz arcp contract afn float %5 to double
  %i.s = fdiv reassoc nsz arcp contract afn double %i.q, %i.r
  %i.t = fptrunc reassoc nsz arcp contract afn double %i.s to float ; 2 uses
  %i.u = load float, ptr %i.a, align 4, !tbaa !110
  %i.v = load float, ptr %i.b, align 4, !tbaa !110
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 7 uses
  %i.x = load float, ptr %i.w, align 8, !tbaa !156 ; 6 uses
  %i.y = fcmp reassoc nsz arcp contract afn olt float %1, %i.x
  br i1 %i.y, label %_gui_get_grab.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aa = load float, ptr %i.z, align 8, !tbaa !157 ; 3 uses
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, %i.x ; 3 uses
  %i.ac = fcmp reassoc nsz arcp contract afn ogt float %1, %i.ab
  br i1 %i.ac, label %_gui_get_grab.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %6 = load float, ptr %i.ad, align 4, !tbaa !160 ; 6 uses
  %i.ae = fcmp reassoc nsz arcp contract afn olt float %2, %6
  br i1 %i.ae, label %_gui_get_grab.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.ag = load float, ptr %i.af, align 4, !tbaa !161 ; 3 uses
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, %6 ; 3 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %2, %i.ah
  br i1 %i.ai, label %_gui_get_grab.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.t, %i.u
  %i.ak = fdiv reassoc nsz arcp contract afn float %i.t, %i.v
  %i.al = insertelement <4 x float> poison, float %i.x, i64 0
  %7 = insertelement <4 x float> %i.al, float %6, i64 1
  %8 = insertelement <4 x float> %7, float %i.aa, i64 2
  %i.am = insertelement <4 x float> %8, float %i.ag, i64 3
  %i.an = fcmp reassoc nsz arcp contract afn une <4 x float> %i.am, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.ao = bitcast <4 x i1> %i.an to i4
  %.not363 = icmp eq i4 %i.ao, 0                  ; 2 uses
  %.052.i = select nsz i1 %.not363, float 4.500000e-01, float %i.aj ; 2 uses
  %.0.i = select nsz i1 %.not363, float 4.500000e-01, float %i.ak ; 2 uses
  %i.ap = fcmp reassoc nsz arcp contract afn oge float %1, %i.x
  %i.aq = fadd reassoc nsz arcp contract afn float %.052.i, %i.x
  %i.ar = fcmp reassoc nsz arcp contract afn olt float %1, %i.aq
  %or.cond65.i = and i1 %i.ap, %i.ar
  br i1 %or.cond65.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = fsub reassoc nsz arcp contract afn float %1, %i.x
  %i.at = fpext reassoc nsz arcp contract afn float %i.as to double
  %i.au = fpext reassoc nsz arcp contract afn float %i.aa to double
  %i.av = fmul reassoc nsz arcp contract afn double %i.au, 5.000000e-01
  %i.aw = fcmp reassoc nsz arcp contract afn ogt double %i.av, %i.at
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = fcmp reassoc nsz arcp contract afn ole float %1, %i.ab
  %i.ay = fsub reassoc nsz arcp contract afn float %i.ab, %.052.i
  %i.az = fcmp reassoc nsz arcp contract afn ogt float %1, %i.ay
  %or.cond67.i = and i1 %i.ax, %i.az
  %spec.select.i = select i1 %or.cond67.i, i32 4, i32 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.053.i = phi i32 [ %spec.select.i, %bb.i ], [ 1, %bb.h ] ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn oge float %2, %6
  %i.bb = fadd reassoc nsz arcp contract afn float %.0.i, %6
  %i.bc = fcmp reassoc nsz arcp contract afn olt float %2, %i.bb
  %or.cond69.i = and i1 %i.ba, %i.bc
  br i1 %or.cond69.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bd = fsub reassoc nsz arcp contract afn float %2, %6
  %i.be = fpext reassoc nsz arcp contract afn float %i.bd to double
  %i.bf = fpext reassoc nsz arcp contract afn float %i.ag to double
  %i.bg = fmul reassoc nsz arcp contract afn double %i.bf, 5.000000e-01
  %i.bh = fcmp reassoc nsz arcp contract afn ogt double %i.bg, %i.be
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = or disjoint i32 %.053.i, 2
  br label %_gui_get_grab.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bj = fcmp reassoc nsz arcp contract afn ole float %2, %i.ah
  %i.bk = fsub reassoc nsz arcp contract afn float %i.ah, %.0.i
  %i.bl = fcmp reassoc nsz arcp contract afn ogt float %2, %i.bk
  %or.cond71.i = and i1 %i.bj, %i.bl
  %i.bm = or disjoint i32 %.053.i, 8
  %spec.select72.i = select i1 %or.cond71.i, i32 %i.bm, i32 %.053.i
  br label %_gui_get_grab.exit

_gui_get_grab.exit:                               ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.l, %bb.m
  %.2.i = phi i32 [ 16, %bb.c ], [ 16, %bb.d ], [ 16, %bb.e ], [ 16, %bb.f ], [ %i.bi, %bb.l ], [ %spec.select72.i, %bb.m ]
  %i.bn = call fastcc i32 @_set_max_clip(ptr noundef nonnull %0) ; 0 uses
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !184 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 624
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !194
  %.not308 = icmp eq i32 %i.bq, 0
  br i1 %.not308, label %bb.am, label %bb.n

bb.n:                                             ; preds = %_gui_get_grab.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 628
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !195
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.o, label %bb.am

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !196 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !197 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !152 ; 10 uses
  switch i32 %i.bz, label %bb.t [
    i32 15, label %bb.p
    i32 16, label %bb.aw
  ]

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !198
  %.not322 = icmp eq i32 %i.cb, 0
  br i1 %.not322, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !166
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !164 ; 3 uses
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !157
  %i.cj = fsub reassoc nsz arcp contract afn float %i.cg, %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !199
  %i.cm = fsub reassoc nsz arcp contract afn float %1, %i.bv
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, %i.cl ; 2 uses
  %i.co = fcmp reassoc nsz arcp contract afn ogt float %i.cf, %i.cn
  %. = select reassoc nsz arcp contract afn i1 %i.co, float %i.cf, float %i.cn ; 2 uses
  %i.cp = fcmp reassoc nsz arcp contract afn olt float %i.cj, %.
  %spec.select337 = select reassoc nsz arcp contract afn i1 %i.cp, float %i.cj, float %.
  store float %spec.select337, ptr %i.w, align 8, !tbaa !156
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !200
  %.not323 = icmp eq i32 %i.cr, 0
  br i1 %.not323, label %bb.s, label %bb.al

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !167
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !165 ; 3 uses
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !161
  %i.cz = fsub reassoc nsz arcp contract afn float %i.cw, %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.db = load float, ptr %i.da, align 4, !tbaa !201
  %i.dc = fsub reassoc nsz arcp contract afn float %2, %i.bx
  %i.dd = fadd reassoc nsz arcp contract afn float %i.dc, %i.db ; 2 uses
  %i.de = fcmp reassoc nsz arcp contract afn ogt float %i.cv, %i.dd
  %.325 = select reassoc nsz arcp contract afn i1 %i.de, float %i.cv, float %i.dd ; 2 uses
  %i.df = fcmp reassoc nsz arcp contract afn olt float %i.cz, %.325
  %spec.select338 = select reassoc nsz arcp contract afn i1 %i.df, float %i.cz, float %.325
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store float %spec.select338, ptr %i.dg, align 4, !tbaa !160
  br label %bb.al

bb.t:                                             ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !198
  %.not311 = icmp eq i32 %i.di, 0
  br i1 %.not311, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = and i32 %i.bz, 5
  %or.cond = icmp eq i32 %i.dj, 0
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = and i32 %i.bz, 1
  %.not316 = icmp eq i32 %i.dk, 0
  %i.dl = fsub reassoc nsz arcp contract afn float %1, %i.bv
  %i.dm = fsub reassoc nsz arcp contract afn float %i.bv, %1
  %i.dn = select reassoc nsz arcp contract afn i1 %.not316, float %i.dm, float %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.dp = load float, ptr %i.do, align 8, !tbaa !253 ; 2 uses
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dn, 2.000000e+00
  %i.dr = fsub reassoc nsz arcp contract afn float %i.dp, %i.dq
  %i.ds = fdiv reassoc nsz arcp contract afn float %i.dr, %i.dp
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.0 = phi nsz float [ %i.ds, %bb.v ], [ 0.000000e+00, %bb.u ] ; 2 uses
  %i.dt = and i32 %i.bz, 10
  %or.cond327 = icmp eq i32 %i.dt, 0
  br i1 %or.cond327, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.w
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !254
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.du = and i32 %i.bz, 2
  %.not319 = icmp eq i32 %i.du, 0
  %i.dv = fsub reassoc nsz arcp contract afn float %2, %i.bx
  %i.dw = fsub reassoc nsz arcp contract afn float %i.bx, %2
  %i.dx = select reassoc nsz arcp contract afn i1 %.not319, float %i.dw, float %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !254 ; 3 uses
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dx, 2.000000e+00
  %i.eb = fsub reassoc nsz arcp contract afn float %i.dz, %i.ea
  %i.ec = fdiv reassoc nsz arcp contract afn float %i.eb, %i.dz
  %i.ed = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.0, float %i.ec)
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.x
  %i.ee = phi float [ %i.dz, %bb.x ], [ %.pre, %._crit_edge ] ; 4 uses
  %.1 = phi nsz float [ %i.ed, %bb.x ], [ %.0, %._crit_edge ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.eg = load float, ptr %i.ef, align 8, !tbaa !253 ; 4 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %.1
  %i.ei = fcmp reassoc nsz arcp contract afn olt float %i.eh, f0x3C23D70A
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.em = load <2 x float>, ptr %i.ej, align 8, !tbaa !110 ; 4 uses
  %i.en = extractelement <2 x float> %i.em, i64 0
  %i.eo = extractelement <2 x float> %i.em, i64 1
  %i.ep = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> <float f0x3C23D70A, float f0x3C23D70A, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %i.er = insertelement <4 x float> poison, float %i.eg, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.ee, i64 1
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.eu = fdiv reassoc nsz arcp contract afn <4 x float> %i.eq, %i.et ; 4 uses
  %i.ev = extractelement <4 x float> %i.eu, i64 0
  %spec.select = select nsz i1 %i.ei, float %i.ev, float %.1 ; 2 uses
  %i.ew = fmul reassoc nsz arcp contract afn float %spec.select, %i.ee
  %i.ex = fcmp reassoc nsz arcp contract afn olt float %i.ew, f0x3C23D70A
  %i.ey = extractelement <4 x float> %i.eu, i64 1
  %.3 = select nsz i1 %i.ex, float %i.ey, float %spec.select ; 2 uses
  %i.ez = fmul reassoc nsz arcp contract afn float %.3, %i.eg
  %i.fa = fcmp reassoc nsz arcp contract afn ogt float %i.ez, %i.en
  %i.fb = extractelement <4 x float> %i.eu, i64 2
  %.4 = select nsz i1 %i.fa, float %i.fb, float %.3 ; 2 uses
  %i.fc = fmul reassoc nsz arcp contract afn float %.4, %i.ee
  %i.fd = fcmp reassoc nsz arcp contract afn ogt float %i.fc, %i.eo
  %i.fe = extractelement <4 x float> %i.eu, i64 3
  %.5 = select nsz i1 %i.fd, float %i.fe, float %.4
  %i.ff = load <2 x float>, ptr %i.ek, align 8, !tbaa !110
  %i.fg = insertelement <2 x float> poison, float %.5, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.ee, i64 1 ; 2 uses
  %i.fk = fmul reassoc nsz arcp contract afn <2 x float> %i.fh, %i.fj ; 4 uses
  %i.fl = fsub reassoc nsz arcp contract afn <2 x float> %i.fk, %i.fj
  %i.fm = fmul reassoc nsz arcp contract afn <2 x float> %i.fl, splat (float 5.000000e-01)
  %i.fn = fsub reassoc nsz arcp contract afn <2 x float> %i.ff, %i.fm ; 2 uses
  %i.fo = load <2 x float>, ptr %i.el, align 8, !tbaa !110 ; 3 uses
  %i.fp = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fn, %i.fo
  %i.fq = select <2 x i1> %i.fp, <2 x float> %i.fn, <2 x float> %i.fo ; 2 uses
  %i.fr = fadd reassoc nsz arcp contract afn <2 x float> %i.fo, %i.em
  %i.fs = fsub reassoc nsz arcp contract afn <2 x float> %i.fr, %i.fk ; 2 uses
  %i.ft = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fq, %i.fs
  %i.fu = select <2 x i1> %i.ft, <2 x float> %i.fq, <2 x float> %i.fs
  store <2 x float> %i.fu, ptr %i.w, align 8, !tbaa !110
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.fw = extractelement <2 x float> %i.fk, i64 0
end_hunk_1
begin_hunk_2_@mouse_moved:bb.a
    i32 2, label %bb.an
    i32 4, label %bb.ao
    i32 8, label %bb.ap
    i32 3, label %bb.aq
    i32 6, label %bb.ar
    i32 12, label %bb.as
    i32 9, label %bb.at
    i32 16, label %bb.au
  ]

bb.an:                                            ; preds = %bb.am
  br label %.thread.sink.split

bb.ao:                                            ; preds = %bb.am
  br label %.thread.sink.split

bb.ap:                                            ; preds = %bb.am
  br label %.thread.sink.split

bb.aq:                                            ; preds = %bb.am
  br label %.thread.sink.split

bb.ar:                                            ; preds = %bb.am
  br label %.thread.sink.split

bb.as:                                            ; preds = %bb.am
  br label %.thread.sink.split

bb.at:                                            ; preds = %bb.am
  br label %.thread.sink.split

bb.au:                                            ; preds = %bb.am
  call void @dt_control_hinter_message(ptr noundef nonnull @.str.8) #22
  call void @dt_control_change_cursor(ptr noundef nonnull @.str.82) #22
  br label %.sink.split362

.thread.sink.split:                               ; preds = %bb.am, %bb.an, %bb.ap, %bb.ar, %bb.at, %bb.as, %bb.aq, %bb.ao
  %.str.74.sink = phi ptr [ @.str.75, %bb.an ], [ @.str.76, %bb.ao ], [ @.str.78, %bb.aq ], [ @.str.80, %bb.as ], [ @.str.81, %bb.at ], [ @.str.79, %bb.ar ], [ @.str.77, %bb.ap ], [ @.str.74, %bb.am ]
  call void @dt_control_change_cursor(ptr noundef nonnull %.str.74.sink) #22
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.am
  %i.jh = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.83, i32 noundef 5) #22
  call void @dt_control_hinter_message(ptr noundef %i.jh) #22
  br label %.sink.split362

bb.av:                                            ; preds = %bb.am
  call void @dt_control_change_cursor(ptr noundef nonnull @.str.84) #22
  %i.ji = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i32 0, ptr %i.ji, align 8, !tbaa !152
  %i.jj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.85, i32 noundef 5) #22
  call void @dt_control_hinter_message(ptr noundef %i.jj) #22
  br label %.sink.split362

.sink.split362:                                   ; preds = %.thread, %bb.au, %bb.al, %bb.av
  %.1265.ph = phi i32 [ 0, %bb.av ], [ 1, %bb.al ], [ 0, %bb.au ], [ 0, %.thread ]
  call void @dt_control_queue_redraw_center() #22
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split362, %bb.o
  %.1265 = phi i32 [ 0, %bb.o ], [ %.1265.ph, %.sink.split362 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ax

bb.ax:                                            ; preds = %bb.a, %bb.b, %bb.aw
  %.2266 = phi i32 [ %.1265, %bb.aw ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.2266
}

declare i32 @dt_dev_get_preview_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #8

declare void @dt_control_queue_redraw_center() local_unnamed_addr #3

declare void @dt_control_change_cursor(ptr noundef) local_unnamed_addr #3

declare void @dt_control_hinter_message(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @button_released(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !136 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !145
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 0, ptr %i.g, align 4, !tbaa !198
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i32 0, ptr %i.h, align 8, !tbaa !200
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 0, ptr %i.i, align 8, !tbaa !152
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.82) #22
  tail call fastcc void @_commit_box(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef %i.f, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @button_pressed(ptr noundef %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !136 ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !145
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %5, 5
  %i.h = icmp eq i32 %4, 1                        ; 2 uses
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.d, label %bb.ae

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = call i32 @dt_dev_get_preview_size(ptr noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.m = load i32, ptr %i.l, align 16, !tbaa !137
  %.not63 = icmp eq i32 %i.m, 0
  br i1 %.not63, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !135
  call void @dt_dev_add_history_item(ptr noundef %i.n, ptr noundef nonnull %0, i32 noundef 1) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store float %1, ptr %i.o, align 8, !tbaa !196
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store float %2, ptr %i.p, align 4, !tbaa !197
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 2 uses
  %i.v = load <4 x float>, ptr %i.q, align 8, !tbaa !110
  store <4 x float> %i.v, ptr %i.r, align 8, !tbaa !110
  %i.w = call i32 @gtk_accelerator_get_default_mod_mask() #22
  %i.x = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !109
  %i.y = or i32 %i.x, %6
  %i.z = and i32 %i.w, 1
  %i.aa = and i32 %i.z, %i.y
  %.not64 = icmp eq i32 %i.aa, 0
  br i1 %.not64, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  store i32 1, ptr %i.ab, align 4, !tbaa !198
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = call i32 @gtk_accelerator_get_default_mod_mask() #22
  %i.ad = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !109
  %i.ae = or i32 %i.ad, %6
  %i.af = and i32 %i.ac, 4
  %i.ag = and i32 %i.af, %i.ae
  %.not65 = icmp eq i32 %i.ag, 0
  br i1 %.not65, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i32 1, ptr %i.ah, align 8, !tbaa !200
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1432
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !183
  %i.al = fmul reassoc nsz arcp contract afn double %i.ak, 3.000000e+01
  %i.am = fpext reassoc nsz arcp contract afn float %7 to double
  %i.an = fdiv reassoc nsz arcp contract afn double %i.al, %i.am
  %i.ao = fptrunc reassoc nsz arcp contract afn double %i.an to float ; 2 uses
  %i.ap = load float, ptr %i.a, align 4, !tbaa !110
  %i.aq = load float, ptr %i.b, align 4, !tbaa !110
  %i.ar = load float, ptr %i.q, align 8, !tbaa !156 ; 9 uses
  %i.as = fcmp reassoc nsz arcp contract afn olt float %1, %i.ar
  br i1 %i.as, label %_gui_get_grab.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load float, ptr %i.t, align 8, !tbaa !157 ; 3 uses
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, %i.ar ; 3 uses
  %i.av = fcmp reassoc nsz arcp contract afn ogt float %1, %i.au
  br i1 %i.av, label %_gui_get_grab.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %8 = load float, ptr %i.s, align 4, !tbaa !160  ; 7 uses
  %i.aw = fcmp reassoc nsz arcp contract afn olt float %2, %8
  br i1 %i.aw, label %_gui_get_grab.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load float, ptr %i.u, align 4, !tbaa !161 ; 3 uses
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %8 ; 3 uses
  %i.az = fcmp reassoc nsz arcp contract afn ogt float %2, %i.ay
  br i1 %i.az, label %_gui_get_grab.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = fdiv reassoc nsz arcp contract afn float %i.ao, %i.ap
  %i.bb = fdiv reassoc nsz arcp contract afn float %i.ao, %i.aq
  %i.bc = insertelement <4 x float> poison, float %i.ar, i64 0
  %9 = insertelement <4 x float> %i.bc, float %8, i64 1
  %10 = insertelement <4 x float> %9, float %i.at, i64 2
  %i.bd = insertelement <4 x float> %10, float %i.ax, i64 3
  %i.be = fcmp reassoc nsz arcp contract afn une <4 x float> %i.bd, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bf = bitcast <4 x i1> %i.be to i4
  %.not85 = icmp eq i4 %i.bf, 0                   ; 2 uses
  %.052.i = select nsz i1 %.not85, float 4.500000e-01, float %i.ba ; 2 uses
  %.0.i = select nsz i1 %.not85, float 4.500000e-01, float %i.bb ; 2 uses
  %i.bg = fcmp reassoc nsz arcp contract afn oge float %1, %i.ar
  %i.bh = fadd reassoc nsz arcp contract afn float %.052.i, %i.ar
  %i.bi = fcmp reassoc nsz arcp contract afn olt float %1, %i.bh
  %or.cond65.i = and i1 %i.bg, %i.bi
  br i1 %or.cond65.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = fsub reassoc nsz arcp contract afn float %1, %i.ar
  %i.bk = fpext reassoc nsz arcp contract afn float %i.bj to double
  %i.bl = fpext reassoc nsz arcp contract afn float %i.at to double
  %i.bm = fmul reassoc nsz arcp contract afn double %i.bl, 5.000000e-01
  %i.bn = fcmp reassoc nsz arcp contract afn ogt double %i.bm, %i.bk
  br i1 %i.bn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bo = fcmp reassoc nsz arcp contract afn ole float %1, %i.au
  %i.bp = fsub reassoc nsz arcp contract afn float %i.au, %.052.i
  %i.bq = fcmp reassoc nsz arcp contract afn ogt float %1, %i.bp
  %or.cond67.i = and i1 %i.bo, %i.bq
  %spec.select.i = select i1 %or.cond67.i, i32 4, i32 0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.053.i = phi i32 [ %spec.select.i, %bb.p ], [ 1, %bb.o ] ; 5 uses
  %i.br = fcmp reassoc nsz arcp contract afn oge float %2, %8
  %i.bs = fadd reassoc nsz arcp contract afn float %.0.i, %8
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %2, %i.bs
  %or.cond69.i = and i1 %i.br, %i.bt
  br i1 %or.cond69.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bu = fsub reassoc nsz arcp contract afn float %2, %8
  %i.bv = fpext reassoc nsz arcp contract afn float %i.bu to double
  %i.bw = fpext reassoc nsz arcp contract afn float %i.ax to double
  %i.bx = fmul reassoc nsz arcp contract afn double %i.bw, 5.000000e-01
  %i.by = fcmp reassoc nsz arcp contract afn ogt double %i.bx, %i.bv
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = or disjoint i32 %.053.i, 2
  br label %_gui_get_grab.exit.thread

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.ca = fcmp reassoc nsz arcp contract afn ole float %2, %i.ay
  %i.cb = fsub reassoc nsz arcp contract afn float %i.ay, %.0.i
  %i.cc = fcmp reassoc nsz arcp contract afn ogt float %2, %i.cb
  %or.cond71.i = and i1 %i.ca, %i.cc
  %i.cd = or disjoint i32 %.053.i, 8
  br i1 %or.cond71.i, label %_gui_get_grab.exit.thread, label %_gui_get_grab.exit

_gui_get_grab.exit.thread:                        ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.s, %bb.t
  %.2.i.ph = phi i32 [ 16, %bb.j ], [ %i.bz, %bb.s ], [ 16, %bb.m ], [ 16, %bb.l ], [ 16, %bb.k ], [ %i.cd, %bb.t ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i32 %.2.i.ph, ptr %i.ce, align 8, !tbaa !152
  br label %bb.v

_gui_get_grab.exit:                               ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  store i32 %.053.i, ptr %i.cf, align 8, !tbaa !152
  %i.cg = icmp eq i32 %.053.i, 0
  br i1 %i.cg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_gui_get_grab.exit
  store i32 15, ptr %i.cf, align 8, !tbaa !152
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store float %i.ar, ptr %i.ch, align 8, !tbaa !199
  br label %.sink.split

bb.v:                                             ; preds = %_gui_get_grab.exit.thread, %_gui_get_grab.exit
  %.2.i71 = phi i32 [ %.2.i.ph, %_gui_get_grab.exit.thread ], [ %.053.i, %_gui_get_grab.exit ] ; 4 uses
  %i.ci = and i32 %.2.i71, 1
  %.not66 = icmp eq i32 %i.ci, 0
  br i1 %.not66, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = fsub reassoc nsz arcp contract afn float %1, %i.ar
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store float %i.cj, ptr %i.ck, align 8, !tbaa !199
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cl = and i32 %.2.i71, 2
  %.not67 = icmp eq i32 %i.cl, 0
  br i1 %.not67, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = load float, ptr %i.s, align 4, !tbaa !160
  %i.cn = fsub reassoc nsz arcp contract afn float %2, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store float %i.cn, ptr %i.co, align 4, !tbaa !201
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cp = and i32 %.2.i71, 4
  %.not68 = icmp eq i32 %i.cp, 0
  br i1 %.not68, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = load float, ptr %i.t, align 8, !tbaa !157
  %i.cr = fadd reassoc nsz arcp contract afn float %i.ar, %i.cq
  %i.cs = fsub reassoc nsz arcp contract afn float %1, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store float %i.cs, ptr %i.ct, align 8, !tbaa !199
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cu = and i32 %.2.i71, 8
  %.not69 = icmp eq i32 %i.cu, 0
  br i1 %.not69, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = load float, ptr %i.u, align 4, !tbaa !161
  %i.cw = load float, ptr %i.s, align 4, !tbaa !160
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cv, %i.cw
  %i.cy = fsub reassoc nsz arcp contract afn float %2, %i.cx
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.ac
  %.sink = phi float [ %i.cy, %bb.ac ], [ %8, %bb.u ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store float %.sink, ptr %i.cz, align 4, !tbaa !201
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ag

bb.ae:                                            ; preds = %bb.c
  %i.da = icmp eq i32 %4, 3
  br i1 %i.da, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.db, align 8, !tbaa !110
  tail call fastcc void @_aspect_apply(ptr noundef nonnull %0, i32 noundef 12)
  tail call void @gui_changed(ptr noundef nonnull %0, ptr noundef null, ptr poison)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.b, %bb.a, %bb.af, %bb.ad
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.ad ], [ 1, %bb.af ], [ 1, %bb.b ], [ 0, %bb.ae ]
  ret i32 %.0
}

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @mouse_actions(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !255
  %i.d = tail call ptr %i.c() #22
  %i.e = tail call ptr @dt_mouse_action_create_format(ptr noundef null, i32 noundef 7, i32 noundef 0, ptr noundef %i.a, ptr noundef %i.d) #22
  %i.f = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef 5) #22
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !255
  %i.h = tail call ptr %i.g() #22
  %i.i = tail call ptr @dt_mouse_action_create_format(ptr noundef %i.e, i32 noundef 7, i32 noundef 1, ptr noundef %i.f, ptr noundef %i.h) #22
  ret ptr %i.i
}

declare ptr @dt_mouse_action_create_format(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !258
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !174
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !174
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !174
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !174
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !174
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !174
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !174
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !174
  store ptr @introspection_init.f6, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 600), align 8, !tbaa !174
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 {
sub_0:
  %i.a = load i8, ptr %1, align 1
  %.not34 = icmp eq i8 %i.a, 99
  br i1 %.not34, label %sub_1, label %.tail29.thread

sub_1:                                            ; preds = %sub_0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %.not35 = icmp eq i8 %i.c, 120
  br i1 %.not35, label %.tail, label %sub_121

.tail:                                            ; preds = %sub_1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.f, label %sub_121

sub_121:                                          ; preds = %.tail, %sub_1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %.not37 = icmp eq i8 %i.h, 121
  br i1 %.not37, label %.tail19, label %sub_126

.tail19:                                          ; preds = %sub_121
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.a, label %sub_126

bb.a:                                             ; preds = %.tail19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.f

sub_126:                                          ; preds = %.tail19, %sub_121
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %.not39 = icmp eq i8 %i.n, 119
  br i1 %.not39, label %.tail24, label %sub_131

.tail24:                                          ; preds = %sub_126
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.b, label %sub_131

bb.b:                                             ; preds = %.tail24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

sub_131:                                          ; preds = %.tail24, %sub_126
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %.not41 = icmp eq i8 %i.t, 104
  br i1 %.not41, label %.tail29, label %.tail29.thread

.tail29:                                          ; preds = %sub_131
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.c, label %.tail29.thread

bb.c:                                             ; preds = %.tail29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.f

.tail29.thread:                                   ; preds = %sub_0, %sub_131, %.tail29
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.88) #24
  %.not17 = icmp eq i32 %i.y, 0
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.tail29.thread
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.e:                                             ; preds = %.tail29.thread
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.89) #24
  %.not18 = icmp eq i32 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %spec.select = select i1 %.not18, ptr %i.ab, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.tail, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %0, %.tail ], [ %spec.select, %bb.e ], [ %i.z, %bb.d ], [ %i.x, %bb.c ], [ %i.r, %bb.b ], [ %i.l, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.60) #22
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.65) #22
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.63) #22
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.67) #22
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.88) #22
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %bb.g, label %bb.f

end_hunk_2
