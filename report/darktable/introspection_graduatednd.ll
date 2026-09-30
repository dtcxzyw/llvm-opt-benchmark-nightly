Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_graduatednd?download=true
inline.NumInlined: 49
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@button_released:bb.a
  %or.cond7.i = and i1 %i.cb, %i.cc
  %i.cd = fadd reassoc nsz arcp contract afn float %spec.select98.i, f0x40490FDB
  %spec.select100.i = select nsz i1 %or.cond7.i, float %i.cd, float %spec.select98.i
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ce = fcmp reassoc nsz arcp contract afn ugt float %reass.add.i, 0.000000e+00
  %..i = select nsz i1 %i.ce, float f0x3FC90FDB, float f0xBFC90FDB
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.3.i = phi nsz float [ %..i, %bb.k ], [ %spec.select100.i, %bb.j ], [ %spec.select99.i, %bb.h ] ; 2 uses
  %sincos95.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.3.i) ; 2 uses
  %sin96.i = extractvalue { float, float } %sincos95.i, 0 ; 2 uses
  %cos97.i = extractvalue { float, float } %sincos95.i, 1 ; 2 uses
  %i.cf = fmul reassoc nsz arcp contract afn float %.3.i, f0xC2652EE0
  %i.cg = fmul reassoc nsz arcp contract afn float %cos97.i, %i.ax
  %i.ch = fmul reassoc nsz arcp contract afn float %sin96.i, %i.ba
  %reass.add113.i = fsub reassoc nsz arcp contract afn float %i.cg, %i.ch
  %reass.mul114.i = fmul reassoc nsz arcp contract afn float %reass.add113.i, 2.000000e+00
  %i.ci = fadd reassoc nsz arcp contract afn float %sin96.i, 1.000000e+00
  %i.cj = fsub reassoc nsz arcp contract afn float %i.ci, %cos97.i
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, %reass.mul114.i
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, 5.000000e+01
  br label %_set_grad_from_points.exit

_set_grad_from_points.exit:                       ; preds = %bb.d, %.split.loop.exit36, %bb.l
  %.1 = phi nsz float [ 0.000000e+00, %.split.loop.exit36 ], [ %i.cf, %bb.l ], [ 0.000000e+00, %bb.d ]
  %.0 = phi nsz float [ 0.000000e+00, %.split.loop.exit36 ], [ %i.cl, %bb.l ], [ 0.000000e+00, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cm = load i32, ptr %i.h, align 4, !tbaa !91
  %i.cn = icmp eq i32 %i.cm, 3
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_set_grad_from_points.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !84 ; 2 uses
  %i.cq = call fastcc i32 @_set_points_from_grad(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, float noundef %i.cp, float noundef %.0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_set_grad_from_points.exit
  %.024 = phi nsz float [ %i.cp, %bb.m ], [ %.1, %_set_grad_from_points.exit ] ; 2 uses
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 104
  %i.ct = atomicrmw add ptr %i.cs, i32 1 seq_cst, align 4 ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !136
  call void @dt_bauhaus_slider_set(ptr noundef %i.cv, float noundef %.024) #19
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 104
  %i.cy = atomicrmw sub ptr %i.cx, i32 1 seq_cst, align 4 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store float %.024, ptr %i.cz, align 4, !tbaa !84
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store float %.0, ptr %i.da, align 4, !tbaa !85
  store i32 0, ptr %i.h, align 4, !tbaa !91
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !82
  call void @dt_dev_add_history_item(ptr noundef %i.db, ptr noundef nonnull %0, i32 noundef 1) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.a
  store i32 0, ptr %i.h, align 4, !tbaa !91
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @scrolled(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !73  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 2 uses
  %i.e = tail call i32 @gtk_accelerator_get_default_mod_mask() #19
  %i.f = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !126
  %i.g = or i32 %i.f, %4
  %i.h = and i32 %i.g, %i.e
  %.not = icmp eq i32 %i.h, 4
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %3, 0
  %i.i = load float, ptr %i.d, align 4, !tbaa !150 ; 3 uses
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fadd reassoc nsz arcp contract afn float %i.i, 1.000000e-01
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.j, float 8.000000e+00)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = fadd reassoc nsz arcp contract afn float %i.i, -1.000000e-01
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.l, float -8.000000e+00)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.018 = phi nsz float [ %i.k, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.n = fcmp reassoc nsz arcp contract afn une float %.018, %i.i
  br i1 %i.n, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !137
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.o, float noundef %.018) #19
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.p = tail call i32 @gtk_accelerator_get_default_mod_mask() #19
  %i.q = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !126
  %i.r = or i32 %i.q, %4
  %i.s = and i32 %i.r, %i.p
  %.not23 = icmp eq i32 %i.s, 1
  br i1 %.not23, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %.not21 = icmp eq i32 %3, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !151 ; 3 uses
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, 1.000000e+00
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.v, float 1.000000e+02)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.x = fadd reassoc nsz arcp contract afn float %i.u, -1.000000e+00
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.x, float 0.000000e+00)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi nsz float [ %i.w, %bb.i ], [ %i.y, %bb.j ] ; 2 uses
  %i.z = fcmp reassoc nsz arcp contract afn une float %.0, %i.u
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !138
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ab, float noundef %.0) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.k, %bb.l, %bb.e, %bb.f
  %.019 = phi i32 [ 1, %bb.k ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.l ], [ 0, %bb.g ]
  ret i32 %.019
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #5

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !165
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %dt_iop_alpha_copy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !139 ; 6 uses
  %i.f = load i32, ptr %4, align 4, !tbaa !166
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !167  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = load i32, ptr %i.i, align 16, !tbaa !168
  %i.k = sitofp reassoc nsz arcp contract afn i32 %i.j to float
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !169 ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, %i.k ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.p = load i32, ptr %i.o, align 4, !tbaa !170
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fmul reassoc nsz arcp contract afn float %i.m, %i.q ; 3 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.n, 5.000000e-01
  %i.t = fmul reassoc nsz arcp contract afn float %i.r, 5.000000e-01
  %i.u = fdiv reassoc nsz arcp contract afn float 2.000000e+00, %i.n ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = load float, ptr %i.v, align 8, !tbaa !172
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, f0xBC8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.x) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.y = fmul reassoc nsz arcp contract afn float %cos, 2.000000e+00
  %i.z = fdiv reassoc nsz arcp contract afn float %i.y, %i.r ; 2 uses
  %i.aa = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.t, float noundef %i.s) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !173
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, 2.000000e-02
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !174
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, 4.500000e-03
  %i.ah = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.ag
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.aa
  %i.aj = fmul reassoc nsz arcp contract afn float %i.r, 2.500000e-01
  %i.ak = fdiv reassoc nsz arcp contract afn float %i.aj, %i.ai ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !175 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !176 ; 3 uses
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.f to float
  %i.aq = fmul reassoc nsz arcp contract afn float %i.u, %i.ap
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, -1.000000e+00
  %i.as = fmul reassoc nsz arcp contract afn float %sin, %i.ar
  %i.at = fadd reassoc nsz arcp contract afn float %cos, %i.as
  %i.au = fadd reassoc nsz arcp contract afn float %i.ad, -1.000000e+00
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.at ; 2 uses
  %i.aw = fmul reassoc nsz arcp contract afn float %sin, %i.u
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.ak ; 6 uses
  %i.ay = load float, ptr %i.e, align 16, !tbaa !177 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bb = load <4 x float>, ptr %i.az, align 16, !tbaa !62 ; 10 uses
  %i.bc = load <4 x float>, ptr %i.ba, align 16, !tbaa !62 ; 10 uses
  %i.bd = fcmp reassoc nsz arcp contract afn ogt float %i.ay, 0.000000e+00
  %i.be = icmp sgt i32 %i.ao, 0                   ; 2 uses
  br i1 %i.bd, label %.preheader201, label %.preheader203

.preheader203:                                    ; preds = %bb.b
  br i1 %i.be, label %.lr.ph218, label %._crit_edge242

.lr.ph218:                                        ; preds = %.preheader203
  %i.bf = sext i32 %i.am to i64                   ; 3 uses
  %i.bg = shl nsw i64 %i.bf, 2
  %i.bh = icmp sgt i32 %i.am, 3
  %i.bi = fneg reassoc nsz arcp contract afn float %i.ay ; 2 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %i.ax, 4.000000e+00
  %i.bk = and i32 %i.am, -4                       ; 2 uses
  %.not243 = icmp eq i32 %i.bk, %i.am
  %i.bl = sext i32 %i.bk to i64
  %wide.trip.count = zext nneg i32 %i.ao to i64
  %i.bm = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = fmul reassoc nsz arcp contract afn <4 x float> %i.bn, <float 3.000000e+00, float 2.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %invariant.op419 = add nsw i64 %i.bf, -3
  %i.bp = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.d

.preheader201:                                    ; preds = %bb.b
  br i1 %i.be, label %.lr.ph241, label %._crit_edge242

.lr.ph241:                                        ; preds = %.preheader201
  %i.br = sext i32 %i.am to i64                   ; 3 uses
  %i.bs = shl nsw i64 %i.br, 2
  %i.bt = icmp sgt i32 %i.am, 3
  %i.bu = fmul reassoc nsz arcp contract afn float %i.ax, 4.000000e+00
  %i.bv = and i32 %i.am, -4                       ; 2 uses
  %.not244 = icmp eq i32 %i.bv, %i.am
  %i.bw = sext i32 %i.bv to i64
  %wide.trip.count270 = zext nneg i32 %i.ao to i64
  %i.bx = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %i.by, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00>
  %invariant.op420 = add nsw i64 %i.br, -3
  %i.ca = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph241, %._crit_edge239
  %indvars.iv267 = phi i64 [ 0, %.lr.ph241 ], [ %indvars.iv.next268, %._crit_edge239 ] ; 3 uses
  %i.cc = mul i64 %i.bs, %indvars.iv267           ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cc ; 5 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cc ; 5 uses
  %i.cf = trunc i64 %indvars.iv267 to i32
  %i.cg = add i32 %i.h, %i.cf
  %i.ch = sitofp reassoc nsz arcp contract afn i32 %i.cg to float
  %i.ci = fmul reassoc nsz arcp contract afn float %i.z, %i.ch
  %i.cj = fsub reassoc nsz arcp contract afn float %i.av, %i.ci
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, %i.ak ; 2 uses
  br i1 %i.bt, label %.lr.ph229, label %._crit_edge230

._crit_edge230:                                   ; preds = %.lr.ph229, %bb.c
  %.0189.lcssa = phi float [ %i.ck, %bb.c ], [ %i.ek, %.lr.ph229 ]
  br i1 %.not244, label %._crit_edge239, label %.lr.ph238

.lr.ph229:                                        ; preds = %bb.c, %.lr.ph229
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %.lr.ph229 ], [ 0, %bb.c ] ; 5 uses
  %.0189226 = phi float [ %i.ek, %.lr.ph229 ], [ %i.ck, %bb.c ] ; 2 uses
  %invariant.op = fadd reassoc nsz arcp contract afn float %.0189226, 5.000000e-01
  %i.cl = insertelement <4 x float> poison, float %invariant.op, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cn = fadd reassoc nsz arcp contract afn <4 x float> %i.bz, %i.cm ; 3 uses
  %i.co = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.cn, splat (float 1.000000e+00)
  %i.cp = select <4 x i1> %i.co, <4 x float> %i.cn, <4 x float> splat (float 1.000000e+00)
  %i.cq = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.cn, zeroinitializer
  %i.cr = select <4 x i1> %i.cq, <4 x float> zeroinitializer, <4 x float> %i.cp
  %i.cs = fmul reassoc nsz arcp contract afn <4 x float> %i.cr, %i.cb ; 4 uses
  %i.ct = extractelement <4 x float> %i.cs, i64 0
  %i.cu = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ct)
  %i.cv = extractelement <4 x float> %i.cs, i64 1
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cv)
  %i.cx = extractelement <4 x float> %i.cs, i64 2
  %i.cy = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cx)
  %i.cz = extractelement <4 x float> %i.cs, i64 3
  %i.da = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cz)
  %i.db = shl nuw nsw i64 %indvars.iv260, 2       ; 2 uses
  %invariant.gep222 = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.db
  %i.dc = load <4 x float>, ptr %invariant.gep222, align 4, !tbaa !62
  %i.dd = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = fmul reassoc nsz arcp contract afn <4 x float> %i.de, %i.bc
  %i.dg = fadd reassoc nsz arcp contract afn <4 x float> %i.df, %i.bb
  %i.dh = fdiv reassoc nsz arcp contract afn <4 x float> %i.dc, %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.db
  store <4 x float> %i.dh, ptr %i.di, align 16, !tbaa !140, !alias.scope !178, !nontemporal !179
  %i.dj = shl i64 %indvars.iv260, 2
  %i.dk = or disjoint i64 %i.dj, 4                ; 2 uses
  %invariant.gep222.1 = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dk
  %i.dl = load <4 x float>, ptr %invariant.gep222.1, align 4, !tbaa !62
  %i.dm = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = fmul reassoc nsz arcp contract afn <4 x float> %i.dn, %i.bc
  %i.dp = fadd reassoc nsz arcp contract afn <4 x float> %i.do, %i.bb
  %i.dq = fdiv reassoc nsz arcp contract afn <4 x float> %i.dl, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dk
  store <4 x float> %i.dq, ptr %i.dr, align 16, !tbaa !140, !alias.scope !178, !nontemporal !179
  %i.ds = shl i64 %indvars.iv260, 2
  %i.dt = or disjoint i64 %i.ds, 8                ; 2 uses
  %invariant.gep222.2 = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dt
  %i.du = load <4 x float>, ptr %invariant.gep222.2, align 4, !tbaa !62
  %i.dv = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dx = fmul reassoc nsz arcp contract afn <4 x float> %i.dw, %i.bc
  %i.dy = fadd reassoc nsz arcp contract afn <4 x float> %i.dx, %i.bb
  %i.dz = fdiv reassoc nsz arcp contract afn <4 x float> %i.du, %i.dy
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dt
  store <4 x float> %i.dz, ptr %i.ea, align 16, !tbaa !140, !alias.scope !178, !nontemporal !179
  %i.eb = shl i64 %indvars.iv260, 2
  %i.ec = or disjoint i64 %i.eb, 12               ; 2 uses
  %invariant.gep222.3 = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ec
  %i.ed = load <4 x float>, ptr %invariant.gep222.3, align 4, !tbaa !62
  %i.ee = insertelement <4 x float> poison, float %i.da, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = fmul reassoc nsz arcp contract afn <4 x float> %i.ef, %i.bc
  %i.eh = fadd reassoc nsz arcp contract afn <4 x float> %i.eg, %i.bb
  %i.ei = fdiv reassoc nsz arcp contract afn <4 x float> %i.ed, %i.eh
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.ec
  store <4 x float> %i.ei, ptr %i.ej, align 16, !tbaa !140, !alias.scope !178, !nontemporal !179
  %i.ek = fadd reassoc nsz arcp contract afn float %.0189226, %i.bu ; 2 uses
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 4 ; 2 uses
  %i.el = icmp slt i64 %indvars.iv.next261, %invariant.op420
  br i1 %i.el, label %.lr.ph229, label %._crit_edge230

._crit_edge239:                                   ; preds = %.lr.ph238, %._crit_edge230
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %._crit_edge242, label %bb.c

.lr.ph238:                                        ; preds = %._crit_edge230, %.lr.ph238
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %.lr.ph238 ], [ %i.bw, %._crit_edge230 ] ; 2 uses
  %.1190235 = phi float [ %i.fb, %.lr.ph238 ], [ %.0189.lcssa, %._crit_edge230 ] ; 2 uses
  %i.em = fadd reassoc nsz arcp contract afn float %.1190235, 5.000000e-01 ; 3 uses
  %i.en = fcmp reassoc nsz arcp contract afn ult float %i.em, 0.000000e+00
  %i.eo = fcmp reassoc nsz arcp contract afn ole float %i.em, 1.000000e+00
  %i.ep = select reassoc nsz arcp contract afn i1 %i.eo, float %i.em, float 1.000000e+00
  %i.eq = select reassoc nsz arcp contract afn i1 %i.en, float 0.000000e+00, float %i.ep
  %i.er = fmul reassoc nsz arcp contract afn float %i.eq, %i.ay
  %i.es = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.er)
  %i.et = shl nsw i64 %indvars.iv264, 2           ; 2 uses
  %invariant.gep232 = getelementptr [4 x i8], ptr %i.cd, i64 %i.et
  %i.eu = load <4 x float>, ptr %invariant.gep232, align 4, !tbaa !62
  %i.ev = insertelement <4 x float> poison, float %i.es, i64 0
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, %i.ew
  %i.ey = fadd reassoc nsz arcp contract afn <4 x float> %i.ex, %i.bb
  %i.ez = fdiv reassoc nsz arcp contract afn <4 x float> %i.eu, %i.ey
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.et
  store <4 x float> %i.ez, ptr %i.fa, align 16, !tbaa !140, !alias.scope !180, !nontemporal !179
  %i.fb = fadd reassoc nsz arcp contract afn float %.1190235, %i.ax
  %indvars.iv.next265 = add nsw i64 %indvars.iv264, 1 ; 2 uses
  %i.fc = icmp slt i64 %indvars.iv.next265, %i.br
  br i1 %i.fc, label %.lr.ph238, label %._crit_edge239

bb.d:                                             ; preds = %.lr.ph218, %._crit_edge216
  %indvars.iv251 = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next252, %._crit_edge216 ] ; 3 uses
  %i.fd = mul i64 %i.bg, %indvars.iv251           ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fd ; 5 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fd ; 5 uses
  %i.fg = trunc i64 %indvars.iv251 to i32
  %i.fh = add i32 %i.h, %i.fg
  %i.fi = sitofp reassoc nsz arcp contract afn i32 %i.fh to float
  %i.fj = fmul reassoc nsz arcp contract afn float %i.z, %i.fi
  %i.fk = fsub reassoc nsz arcp contract afn float %i.av, %i.fj
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, %i.ak ; 2 uses
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.0181.lcssa = phi float [ %i.fl, %bb.d ], [ %i.hm, %.lr.ph ]
  br i1 %.not243, label %._crit_edge216, label %.lr.ph215

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ] ; 5 uses
  %.0181207 = phi float [ %i.hm, %.lr.ph ], [ %i.fl, %bb.d ] ; 2 uses
  %i.fm = insertelement <4 x float> poison, float %.0181207, i64 0
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fo = fadd reassoc nsz arcp contract afn <4 x float> %i.fn, %i.bo
  %i.fp = fsub reassoc nsz arcp contract afn <4 x float> splat (float 5.000000e-01), %i.fo ; 3 uses
  %i.fq = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.fp, splat (float 1.000000e+00)
  %i.fr = select <4 x i1> %i.fq, <4 x float> %i.fp, <4 x float> splat (float 1.000000e+00)
  %i.fs = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.fp, zeroinitializer
  %i.ft = select <4 x i1> %i.fs, <4 x float> zeroinitializer, <4 x float> %i.fr
  %i.fu = fmul reassoc nsz arcp contract afn <4 x float> %i.ft, %i.bq ; 4 uses
  %i.fv = extractelement <4 x float> %i.fu, i64 3
  %i.fw = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fv)
  %i.fx = extractelement <4 x float> %i.fu, i64 2
  %i.fy = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fx)
  %i.fz = extractelement <4 x float> %i.fu, i64 1
  %i.ga = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fz)
  %i.gb = extractelement <4 x float> %i.fu, i64 0
  %i.gc = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.gb)
  %i.gd = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.gd
  %i.ge = load <4 x float>, ptr %invariant.gep, align 4, !tbaa !62
  %i.gf = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gh = fmul reassoc nsz arcp contract afn <4 x float> %i.gg, %i.bc
  %i.gi = fadd reassoc nsz arcp contract afn <4 x float> %i.gh, %i.bb
  %i.gj = fmul reassoc nsz arcp contract afn <4 x float> %i.gi, %i.ge
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.gd
  store <4 x float> %i.gj, ptr %i.gk, align 16, !tbaa !140, !alias.scope !181, !nontemporal !179
  %i.gl = shl i64 %indvars.iv, 2
  %i.gm = or disjoint i64 %i.gl, 4                ; 2 uses
  %invariant.gep.1 = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.gm
  %i.gn = load <4 x float>, ptr %invariant.gep.1, align 4, !tbaa !62
  %i.go = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.gp = shufflevector <4 x float> %i.go, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gq = fmul reassoc nsz arcp contract afn <4 x float> %i.gp, %i.bc
  %i.gr = fadd reassoc nsz arcp contract afn <4 x float> %i.gq, %i.bb
  %i.gs = fmul reassoc nsz arcp contract afn <4 x float> %i.gr, %i.gn
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.gm
  store <4 x float> %i.gs, ptr %i.gt, align 16, !tbaa !140, !alias.scope !181, !nontemporal !179
  %i.gu = shl i64 %indvars.iv, 2
  %i.gv = or disjoint i64 %i.gu, 8                ; 2 uses
  %invariant.gep.2 = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.gv
  %i.gw = load <4 x float>, ptr %invariant.gep.2, align 4, !tbaa !62
  %i.gx = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gz = fmul reassoc nsz arcp contract afn <4 x float> %i.gy, %i.bc
  %i.ha = fadd reassoc nsz arcp contract afn <4 x float> %i.gz, %i.bb
  %i.hb = fmul reassoc nsz arcp contract afn <4 x float> %i.ha, %i.gw
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.gv
  store <4 x float> %i.hb, ptr %i.hc, align 16, !tbaa !140, !alias.scope !181, !nontemporal !179
  %i.hd = shl i64 %indvars.iv, 2
  %i.he = or disjoint i64 %i.hd, 12               ; 2 uses
  %invariant.gep.3 = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.he
  %i.hf = load <4 x float>, ptr %invariant.gep.3, align 4, !tbaa !62
  %i.hg = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hi = fmul reassoc nsz arcp contract afn <4 x float> %i.hh, %i.bc
  %i.hj = fadd reassoc nsz arcp contract afn <4 x float> %i.hi, %i.bb
  %i.hk = fmul reassoc nsz arcp contract afn <4 x float> %i.hj, %i.hf
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.he
  store <4 x float> %i.hk, ptr %i.hl, align 16, !tbaa !140, !alias.scope !181, !nontemporal !179
  %i.hm = fadd reassoc nsz arcp contract afn float %.0181207, %i.bj ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.hn = icmp slt i64 %indvars.iv.next, %invariant.op419
  br i1 %i.hn, label %.lr.ph, label %._crit_edge

._crit_edge216:                                   ; preds = %.lr.ph215, %._crit_edge
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next252, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge242, label %bb.d

.lr.ph215:                                        ; preds = %._crit_edge, %.lr.ph215
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %.lr.ph215 ], [ %i.bl, %._crit_edge ] ; 2 uses
  %.1212 = phi float [ %i.id, %.lr.ph215 ], [ %.0181.lcssa, %._crit_edge ] ; 2 uses
  %i.ho = fsub reassoc nsz arcp contract afn float 5.000000e-01, %.1212 ; 3 uses
  %i.hp = fcmp reassoc nsz arcp contract afn ult float %i.ho, 0.000000e+00
  %i.hq = fcmp reassoc nsz arcp contract afn ole float %i.ho, 1.000000e+00
  %i.hr = select reassoc nsz arcp contract afn i1 %i.hq, float %i.ho, float 1.000000e+00
  %i.hs = select reassoc nsz arcp contract afn i1 %i.hp, float 0.000000e+00, float %i.hr
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hs, %i.bi
  %i.hu = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ht)
  %i.hv = shl nsw i64 %indvars.iv248, 2           ; 2 uses
  %invariant.gep209 = getelementptr [4 x i8], ptr %i.fe, i64 %i.hv
  %i.hw = load <4 x float>, ptr %invariant.gep209, align 4, !tbaa !62
  %i.hx = insertelement <4 x float> poison, float %i.hu, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, %i.hy
  %i.ia = fadd reassoc nsz arcp contract afn <4 x float> %i.hz, %i.bb
  %i.ib = fmul reassoc nsz arcp contract afn <4 x float> %i.ia, %i.hw
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.hv
  store <4 x float> %i.ib, ptr %i.ic, align 16, !tbaa !140, !alias.scope !182, !nontemporal !179
  %i.id = fadd reassoc nsz arcp contract afn float %.1212, %i.ax
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.ie = icmp slt i64 %indvars.iv.next249, %i.bf
  br i1 %i.ie, label %.lr.ph215, label %._crit_edge216

._crit_edge242:                                   ; preds = %._crit_edge216, %._crit_edge239, %.preheader203, %.preheader201
  tail call void @llvm.x86.sse.sfence()
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !183
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 628
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !191
  %i.ij = and i32 %i.ii, 1
  %.not196 = icmp eq i32 %i.ij, 0
  br i1 %.not196, label %dt_iop_alpha_copy.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge242
  %i.ik = load i32, ptr %i.al, align 4, !tbaa !175
  %i.il = sext i32 %i.ik to i64
  %i.im = load i32, ptr %i.an, align 4, !tbaa !176
  %i.in = sext i32 %i.im to i64
  %i.io = shl nsw i64 %i.il, 2
  %i.ip = mul i64 %i.io, %i.in                    ; 3 uses
  %.not.i = icmp eq i64 %i.ip, 0
  br i1 %.not.i, label %dt_iop_alpha_copy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.iq = tail call i64 @llvm.umax.i64(i64 %i.ip, i64 7)
  %i.ir = add i64 %i.iq, -4                       ; 3 uses
  %i.is = lshr i64 %i.ir, 2
  %i.it = add nuw nsw i64 %i.is, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ir, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader426, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.iu = getelementptr i8, ptr %3, i64 12
  %i.iv = shl i64 %i.ir, 2
  %i.iw = and i64 %i.iv, -16
  %i.ix = add i64 %i.iw, 16                       ; 2 uses
  %i.iy = getelementptr i8, ptr %3, i64 %i.ix
  %i.iz = getelementptr i8, ptr %2, i64 12
  %i.ja = getelementptr i8, ptr %2, i64 %i.ix
  %bound0 = icmp ult ptr %i.iu, %i.ja
  %bound1 = icmp ult ptr %i.iz, %i.iy
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader426, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.jb = and i64 %i.it, 7                        ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 0
  %i.jd = select i1 %i.jc, i64 8, i64 %i.jb
  %n.vec = sub nsw i64 %i.it, %i.jd               ; 2 uses
  %i.je = shl i64 %n.vec, 2
  %i.jf = or disjoint i64 %i.je, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 3, i64 7, i64 11, i64 15, i64 19, i64 23, i64 27, i64 31>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %wide.vec = load <32 x float>, ptr %i.jh, align 4, !tbaa !62, !alias.scope !192
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %3, <8 x i64> %vec.ind
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !62, !alias.scope !193, !noalias !192
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %.lr.ph.i.preheader426, label %vector.body, !llvm.loop !163

.lr.ph.i.preheader426:                            ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.preheader
  %.09.i.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.i.preheader ], [ %i.jf, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader426, %.lr.ph.i
  %.09.i = phi i64 [ %i.jm, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader426 ] ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.09.i
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !62
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.09.i
  store float %i.jk, ptr %i.jl, align 4, !tbaa !62
  %i.jm = add nuw i64 %.09.i, 4                   ; 2 uses
  %i.jn = icmp ult i64 %i.jm, %i.ip
  br i1 %i.jn, label %.lr.ph.i, label %dt_iop_alpha_copy.exit, !llvm.loop !164

dt_iop_alpha_copy.exit:                           ; preds = %.lr.ph.i, %._crit_edge242, %bb.e, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !141
  store i32 -999, ptr %i.a, align 4, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -999, ptr %i.c, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141
  tail call void @free(ptr noundef %i.b) #19
  store ptr null, ptr %i.a, align 8, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !73  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !85
  %i.p = tail call fastcc i32 @_set_points_from_grad(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, float noundef %i.m, float noundef %i.o) ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load float, ptr %i.v, align 4, !tbaa !76
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, 6.000000e+00 ; 8 uses
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.x, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.y, float 2.000000e+00, float -4.000000e+00
  %i.z = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.x ; 5 uses
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.z, 1.000000e+00
  br i1 %i.aa, label %hue2rgb.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.z, 3.000000e+00
  br i1 %i.ab, label %hue2rgb.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = fcmp reassoc nsz arcp contract afn olt float %i.z, 4.000000e+00
  %i.ad = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.z
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ac, float %i.ad, float 0.000000e+00
  br label %hue2rgb.exit.i.i

end_hunk_0
