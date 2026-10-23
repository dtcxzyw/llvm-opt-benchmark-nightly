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
  %i.cm = load i32, ptr %i.h, align 4, !tbaa !87
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
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !132
  call void @dt_bauhaus_slider_set(ptr noundef %i.cv, float noundef %.024) #19
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !78
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 104
  %i.cy = atomicrmw add ptr %i.cx, i32 -1 seq_cst, align 4 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store float %.024, ptr %i.cz, align 4, !tbaa !84
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store float %.0, ptr %i.da, align 4, !tbaa !85
  store i32 0, ptr %i.h, align 4, !tbaa !87
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !82
  call void @dt_dev_add_history_item(ptr noundef %i.db, ptr noundef nonnull %0, i32 noundef 1) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.a
  store i32 0, ptr %i.h, align 4, !tbaa !87
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
  %i.f = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !122
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
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !133
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.o, float noundef %.018) #19
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.p = tail call i32 @gtk_accelerator_get_default_mod_mask() #19
  %i.q = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !122
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !134
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
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !135 ; 6 uses
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
  %i.am = load i32, ptr %i.al, align 4, !tbaa !175 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !176 ; 3 uses
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.f to float
  %i.aq = fmul reassoc nsz arcp contract afn float %i.u, %i.ap
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, -1.000000e+00
  %i.as = fmul reassoc nsz arcp contract afn float %sin, %i.ar
  %i.at = fadd reassoc nsz arcp contract afn float %cos, -1.000000e+00
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, %i.ad
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.as ; 2 uses
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
  br i1 %i.be, label %.lr.ph218, label %._crit_edge241

.lr.ph218:                                        ; preds = %.preheader203
  %i.bf = sext i32 %i.am to i64                   ; 2 uses
  %i.bg = shl nsw i64 %i.bf, 2
  %i.bh = icmp sgt i32 %i.am, 3
  %i.bi = fneg reassoc nsz arcp contract afn float %i.ay ; 2 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %i.ax, 4.000000e+00
  %i.bk = and i32 %i.am, -4                       ; 2 uses
  %.not242 = icmp eq i32 %i.bk, %i.am
  %i.bl = sext i32 %i.bk to i64
  %wide.trip.count = zext nneg i32 %i.ao to i64
  %i.bm = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = fmul reassoc nsz arcp contract afn <4 x float> %i.bn, <float 3.000000e+00, float 2.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.bp = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.d

.preheader201:                                    ; preds = %bb.b
  br i1 %i.be, label %.lr.ph240, label %._crit_edge241

.lr.ph240:                                        ; preds = %.preheader201
  %i.br = sext i32 %i.am to i64                   ; 2 uses
  %i.bs = shl nsw i64 %i.br, 2
  %i.bt = icmp sgt i32 %i.am, 3
  %i.bu = fmul reassoc nsz arcp contract afn float %i.ax, 4.000000e+00
  %i.bv = and i32 %i.am, -4                       ; 2 uses
  %.not243 = icmp eq i32 %i.bv, %i.am
  %i.bw = sext i32 %i.bv to i64
  %wide.trip.count269 = zext nneg i32 %i.ao to i64
  %i.bx = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %i.by, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00>
  %i.ca = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph240, %._crit_edge238
  %indvars.iv266 = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next267, %._crit_edge238 ] ; 3 uses
  %i.cc = mul i64 %i.bs, %indvars.iv266           ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cc ; 5 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cc ; 5 uses
  %i.cf = trunc i64 %indvars.iv266 to i32
  %i.cg = add i32 %i.h, %i.cf
  %i.ch = sitofp reassoc nsz arcp contract afn i32 %i.cg to float
  %i.ci = fmul reassoc nsz arcp contract afn float %i.z, %i.ch
  %i.cj = fsub reassoc nsz arcp contract afn float %i.av, %i.ci
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, %i.ak ; 2 uses
  br i1 %i.bt, label %.lr.ph228, label %._crit_edge229

._crit_edge229:                                   ; preds = %.lr.ph228, %bb.c
  %.0189.lcssa = phi float [ %i.ck, %bb.c ], [ %i.el, %.lr.ph228 ]
  br i1 %.not243, label %._crit_edge238, label %.lr.ph237

.lr.ph228:                                        ; preds = %bb.c, %.lr.ph228
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %.lr.ph228 ], [ 0, %bb.c ] ; 6 uses
  %.0189225 = phi float [ %i.el, %.lr.ph228 ], [ %i.ck, %bb.c ] ; 2 uses
  %i.cl = fadd reassoc nsz arcp contract afn float %.0189225, 5.000000e-01
  %i.cm = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.cn, %i.bz ; 3 uses
  %i.cp = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.co, splat (float 1.000000e+00)
  %i.cq = select <4 x i1> %i.cp, <4 x float> %i.co, <4 x float> splat (float 1.000000e+00)
  %i.cr = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.co, zeroinitializer
  %i.cs = select <4 x i1> %i.cr, <4 x float> zeroinitializer, <4 x float> %i.cq
  %i.ct = fmul reassoc nsz arcp contract afn <4 x float> %i.cs, %i.cb ; 4 uses
  %i.cu = extractelement <4 x float> %i.ct, i64 0
  %i.cv = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cu)
  %i.cw = extractelement <4 x float> %i.ct, i64 1
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cw)
  %i.cy = extractelement <4 x float> %i.ct, i64 2
  %i.cz = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cy)
  %i.da = extractelement <4 x float> %i.ct, i64 3
  %i.db = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.da)
  %i.dc = shl nuw nsw i64 %indvars.iv259, 2       ; 2 uses
  %invariant.gep221 = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dc
  %i.dd = load <4 x float>, ptr %invariant.gep221, align 4, !tbaa !62
  %i.de = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = fmul reassoc nsz arcp contract afn <4 x float> %i.df, %i.bc
  %i.dh = fadd reassoc nsz arcp contract afn <4 x float> %i.dg, %i.bb
  %i.di = fdiv reassoc nsz arcp contract afn <4 x float> %i.dd, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dc
  store <4 x float> %i.di, ptr %i.dj, align 16, !tbaa !136, !alias.scope !178, !nontemporal !179
  %i.dk = shl i64 %indvars.iv259, 2
  %i.dl = or disjoint i64 %i.dk, 4                ; 2 uses
  %invariant.gep221.1 = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dl
  %i.dm = load <4 x float>, ptr %invariant.gep221.1, align 4, !tbaa !62
  %i.dn = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = fmul reassoc nsz arcp contract afn <4 x float> %i.do, %i.bc
  %i.dq = fadd reassoc nsz arcp contract afn <4 x float> %i.dp, %i.bb
  %i.dr = fdiv reassoc nsz arcp contract afn <4 x float> %i.dm, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dl
  store <4 x float> %i.dr, ptr %i.ds, align 16, !tbaa !136, !alias.scope !178, !nontemporal !179
  %i.dt = shl i64 %indvars.iv259, 2
  %i.du = or disjoint i64 %i.dt, 8                ; 2 uses
  %invariant.gep221.2 = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.du
  %i.dv = load <4 x float>, ptr %invariant.gep221.2, align 4, !tbaa !62
  %i.dw = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dy = fmul reassoc nsz arcp contract afn <4 x float> %i.dx, %i.bc
  %i.dz = fadd reassoc nsz arcp contract afn <4 x float> %i.dy, %i.bb
  %i.ea = fdiv reassoc nsz arcp contract afn <4 x float> %i.dv, %i.dz
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.du
  store <4 x float> %i.ea, ptr %i.eb, align 16, !tbaa !136, !alias.scope !178, !nontemporal !179
  %i.ec = shl i64 %indvars.iv259, 2
  %i.ed = or disjoint i64 %i.ec, 12               ; 2 uses
  %invariant.gep221.3 = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ed
  %i.ee = load <4 x float>, ptr %invariant.gep221.3, align 4, !tbaa !62
  %i.ef = insertelement <4 x float> poison, float %i.db, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eh = fmul reassoc nsz arcp contract afn <4 x float> %i.eg, %i.bc
  %i.ei = fadd reassoc nsz arcp contract afn <4 x float> %i.eh, %i.bb
  %i.ej = fdiv reassoc nsz arcp contract afn <4 x float> %i.ee, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.ed
  store <4 x float> %i.ej, ptr %i.ek, align 16, !tbaa !136, !alias.scope !178, !nontemporal !179
  %i.el = fadd reassoc nsz arcp contract afn float %.0189225, %i.bu ; 2 uses
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 4
  %6 = trunc i64 %indvars.iv259 to i32
  %7 = add i32 %6, 7
  %i.em = icmp slt i32 %7, %i.am
  br i1 %i.em, label %.lr.ph228, label %._crit_edge229

._crit_edge238:                                   ; preds = %.lr.ph237, %._crit_edge229
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %._crit_edge241, label %bb.c

.lr.ph237:                                        ; preds = %._crit_edge229, %.lr.ph237
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %.lr.ph237 ], [ %i.bw, %._crit_edge229 ] ; 2 uses
  %.1190234 = phi float [ %i.fc, %.lr.ph237 ], [ %.0189.lcssa, %._crit_edge229 ] ; 2 uses
  %i.en = fadd reassoc nsz arcp contract afn float %.1190234, 5.000000e-01 ; 3 uses
  %i.eo = fcmp reassoc nsz arcp contract afn ult float %i.en, 0.000000e+00
  %i.ep = fcmp reassoc nsz arcp contract afn ole float %i.en, 1.000000e+00
  %i.eq = select reassoc nsz arcp contract afn i1 %i.ep, float %i.en, float 1.000000e+00
  %i.er = select reassoc nsz arcp contract afn i1 %i.eo, float 0.000000e+00, float %i.eq
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, %i.ay
  %i.et = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.es)
  %i.eu = shl nsw i64 %indvars.iv263, 2           ; 2 uses
  %invariant.gep231 = getelementptr [4 x i8], ptr %i.cd, i64 %i.eu
  %i.ev = load <4 x float>, ptr %invariant.gep231, align 4, !tbaa !62
  %i.ew = insertelement <4 x float> poison, float %i.et, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, %i.ex
  %i.ez = fadd reassoc nsz arcp contract afn <4 x float> %i.ey, %i.bb
  %i.fa = fdiv reassoc nsz arcp contract afn <4 x float> %i.ev, %i.ez
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.eu
  store <4 x float> %i.fa, ptr %i.fb, align 16, !tbaa !136, !alias.scope !180, !nontemporal !179
  %i.fc = fadd reassoc nsz arcp contract afn float %.1190234, %i.ax
  %indvars.iv.next264 = add nsw i64 %indvars.iv263, 1 ; 2 uses
  %i.fd = icmp slt i64 %indvars.iv.next264, %i.br
  br i1 %i.fd, label %.lr.ph237, label %._crit_edge238

bb.d:                                             ; preds = %.lr.ph218, %._crit_edge216
  %indvars.iv250 = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next251, %._crit_edge216 ] ; 3 uses
  %i.fe = mul i64 %i.bg, %indvars.iv250           ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fe ; 5 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fe ; 5 uses
  %i.fh = trunc i64 %indvars.iv250 to i32
  %i.fi = add i32 %i.h, %i.fh
  %i.fj = sitofp reassoc nsz arcp contract afn i32 %i.fi to float
  %i.fk = fmul reassoc nsz arcp contract afn float %i.z, %i.fj
  %i.fl = fsub reassoc nsz arcp contract afn float %i.av, %i.fk
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fl, %i.ak ; 2 uses
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.0181.lcssa = phi float [ %i.fm, %bb.d ], [ %i.hn, %.lr.ph ]
  br i1 %.not242, label %._crit_edge216, label %.lr.ph215

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ] ; 6 uses
  %.0181207 = phi float [ %i.hn, %.lr.ph ], [ %i.fm, %bb.d ] ; 2 uses
  %i.fn = insertelement <4 x float> poison, float %.0181207, i64 0
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fp = fadd reassoc nsz arcp contract afn <4 x float> %i.fo, %i.bo
  %i.fq = fsub reassoc nsz arcp contract afn <4 x float> splat (float 5.000000e-01), %i.fp ; 3 uses
  %i.fr = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.fq, splat (float 1.000000e+00)
  %i.fs = select <4 x i1> %i.fr, <4 x float> %i.fq, <4 x float> splat (float 1.000000e+00)
  %i.ft = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.fq, zeroinitializer
  %i.fu = select <4 x i1> %i.ft, <4 x float> zeroinitializer, <4 x float> %i.fs
  %i.fv = fmul reassoc nsz arcp contract afn <4 x float> %i.fu, %i.bq ; 4 uses
  %i.fw = extractelement <4 x float> %i.fv, i64 3
  %i.fx = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fw)
  %i.fy = extractelement <4 x float> %i.fv, i64 2
  %i.fz = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fy)
  %i.ga = extractelement <4 x float> %i.fv, i64 1
  %i.gb = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ga)
  %i.gc = extractelement <4 x float> %i.fv, i64 0
  %i.gd = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.gc)
  %i.ge = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.ge
  %i.gf = load <4 x float>, ptr %invariant.gep, align 4, !tbaa !62
  %i.gg = insertelement <4 x float> poison, float %i.fx, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = fmul reassoc nsz arcp contract afn <4 x float> %i.gh, %i.bc
  %i.gj = fadd reassoc nsz arcp contract afn <4 x float> %i.gi, %i.bb
  %i.gk = fmul reassoc nsz arcp contract afn <4 x float> %i.gj, %i.gf
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ge
  store <4 x float> %i.gk, ptr %i.gl, align 16, !tbaa !136, !alias.scope !181, !nontemporal !179
  %i.gm = shl i64 %indvars.iv, 2
  %i.gn = or disjoint i64 %i.gm, 4                ; 2 uses
  %invariant.gep.1 = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.gn
  %i.go = load <4 x float>, ptr %invariant.gep.1, align 4, !tbaa !62
  %i.gp = insertelement <4 x float> poison, float %i.fz, i64 0
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gr = fmul reassoc nsz arcp contract afn <4 x float> %i.gq, %i.bc
  %i.gs = fadd reassoc nsz arcp contract afn <4 x float> %i.gr, %i.bb
  %i.gt = fmul reassoc nsz arcp contract afn <4 x float> %i.gs, %i.go
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.gn
  store <4 x float> %i.gt, ptr %i.gu, align 16, !tbaa !136, !alias.scope !181, !nontemporal !179
  %i.gv = shl i64 %indvars.iv, 2
  %i.gw = or disjoint i64 %i.gv, 8                ; 2 uses
  %invariant.gep.2 = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.gw
  %i.gx = load <4 x float>, ptr %invariant.gep.2, align 4, !tbaa !62
  %i.gy = insertelement <4 x float> poison, float %i.gb, i64 0
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ha = fmul reassoc nsz arcp contract afn <4 x float> %i.gz, %i.bc
  %i.hb = fadd reassoc nsz arcp contract afn <4 x float> %i.ha, %i.bb
  %i.hc = fmul reassoc nsz arcp contract afn <4 x float> %i.hb, %i.gx
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.gw
  store <4 x float> %i.hc, ptr %i.hd, align 16, !tbaa !136, !alias.scope !181, !nontemporal !179
  %i.he = shl i64 %indvars.iv, 2
  %i.hf = or disjoint i64 %i.he, 12               ; 2 uses
  %invariant.gep.3 = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hf
  %i.hg = load <4 x float>, ptr %invariant.gep.3, align 4, !tbaa !62
  %i.hh = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hj = fmul reassoc nsz arcp contract afn <4 x float> %i.hi, %i.bc
  %i.hk = fadd reassoc nsz arcp contract afn <4 x float> %i.hj, %i.bb
  %i.hl = fmul reassoc nsz arcp contract afn <4 x float> %i.hk, %i.hg
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.hf
  store <4 x float> %i.hl, ptr %i.hm, align 16, !tbaa !136, !alias.scope !181, !nontemporal !179
  %i.hn = fadd reassoc nsz arcp contract afn float %.0181207, %i.bj ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %8 = trunc i64 %indvars.iv to i32
  %9 = add i32 %8, 7
  %i.ho = icmp slt i32 %9, %i.am
  br i1 %i.ho, label %.lr.ph, label %._crit_edge

._crit_edge216:                                   ; preds = %.lr.ph215, %._crit_edge
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge241, label %bb.d

.lr.ph215:                                        ; preds = %._crit_edge, %.lr.ph215
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %.lr.ph215 ], [ %i.bl, %._crit_edge ] ; 2 uses
  %.1212 = phi float [ %i.ie, %.lr.ph215 ], [ %.0181.lcssa, %._crit_edge ] ; 2 uses
  %i.hp = fsub reassoc nsz arcp contract afn float 5.000000e-01, %.1212 ; 3 uses
  %i.hq = fcmp reassoc nsz arcp contract afn ult float %i.hp, 0.000000e+00
  %i.hr = fcmp reassoc nsz arcp contract afn ole float %i.hp, 1.000000e+00
  %i.hs = select reassoc nsz arcp contract afn i1 %i.hr, float %i.hp, float 1.000000e+00
  %i.ht = select reassoc nsz arcp contract afn i1 %i.hq, float 0.000000e+00, float %i.hs
  %i.hu = fmul reassoc nsz arcp contract afn float %i.ht, %i.bi
  %i.hv = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.hu)
  %i.hw = shl nsw i64 %indvars.iv247, 2           ; 2 uses
  %invariant.gep209 = getelementptr [4 x i8], ptr %i.ff, i64 %i.hw
  %i.hx = load <4 x float>, ptr %invariant.gep209, align 4, !tbaa !62
  %i.hy = insertelement <4 x float> poison, float %i.hv, i64 0
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ia = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, %i.hz
  %i.ib = fadd reassoc nsz arcp contract afn <4 x float> %i.ia, %i.bb
  %i.ic = fmul reassoc nsz arcp contract afn <4 x float> %i.ib, %i.hx
  %i.id = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.hw
  store <4 x float> %i.ic, ptr %i.id, align 16, !tbaa !136, !alias.scope !182, !nontemporal !179
  %i.ie = fadd reassoc nsz arcp contract afn float %.1212, %i.ax
  %indvars.iv.next248 = add nsw i64 %indvars.iv247, 1 ; 2 uses
  %i.if = icmp slt i64 %indvars.iv.next248, %i.bf
  br i1 %i.if, label %.lr.ph215, label %._crit_edge216

._crit_edge241:                                   ; preds = %._crit_edge216, %._crit_edge238, %.preheader203, %.preheader201
  tail call void @llvm.x86.sse.sfence()
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !183
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 628
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !191
  %i.ik = and i32 %i.ij, 1
  %.not196 = icmp eq i32 %i.ik, 0
  br i1 %.not196, label %dt_iop_alpha_copy.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge241
  %i.il = load i32, ptr %i.al, align 4, !tbaa !175
  %i.im = sext i32 %i.il to i64
  %i.in = load i32, ptr %i.an, align 4, !tbaa !176
  %i.io = sext i32 %i.in to i64
  %i.ip = shl nsw i64 %i.im, 2
  %i.iq = mul i64 %i.ip, %i.io                    ; 3 uses
  %.not.i = icmp eq i64 %i.iq, 0
  br i1 %.not.i, label %dt_iop_alpha_copy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ir = tail call i64 @llvm.umax.i64(i64 %i.iq, i64 7)
  %i.is = add i64 %i.ir, -4                       ; 3 uses
  %i.it = lshr i64 %i.is, 2
  %i.iu = add nuw nsw i64 %i.it, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.is, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader424, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.iv = getelementptr i8, ptr %3, i64 12
  %i.iw = shl i64 %i.is, 2
  %i.ix = and i64 %i.iw, -16
  %i.iy = add i64 %i.ix, 16                       ; 2 uses
  %i.iz = getelementptr i8, ptr %3, i64 %i.iy
  %i.ja = getelementptr i8, ptr %2, i64 12
  %i.jb = getelementptr i8, ptr %2, i64 %i.iy
  %bound0 = icmp ult ptr %i.iv, %i.jb
  %bound1 = icmp ult ptr %i.ja, %i.iz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader424, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.jc = and i64 %i.iu, 7                        ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  %i.je = select i1 %i.jd, i64 8, i64 %i.jc
  %n.vec = sub nsw i64 %i.iu, %i.je               ; 2 uses
  %i.jf = shl i64 %n.vec, 2
  %i.jg = or disjoint i64 %i.jf, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 3, i64 7, i64 11, i64 15, i64 19, i64 23, i64 27, i64 31>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  %wide.vec = load <32 x float>, ptr %i.ji, align 4, !tbaa !62, !alias.scope !192
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %3, <8 x i64> %vec.ind
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !62, !alias.scope !193, !noalias !192
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %.lr.ph.i.preheader424, label %vector.body, !llvm.loop !163

.lr.ph.i.preheader424:                            ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.preheader
  %.09.i.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.i.preheader ], [ %i.jg, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader424, %.lr.ph.i
  %.09.i = phi i64 [ %i.jn, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader424 ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.09.i
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !62
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.09.i
  store float %i.jl, ptr %i.jm, align 4, !tbaa !62
  %i.jn = add nuw i64 %.09.i, 4                   ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.iq
  br i1 %i.jo, label %.lr.ph.i, label %dt_iop_alpha_copy.exit, !llvm.loop !164

dt_iop_alpha_copy.exit:                           ; preds = %.lr.ph.i, %._crit_edge241, %bb.e, %bb.a
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
  store ptr %i.a, ptr %i.b, align 8, !tbaa !137
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  tail call void @free(ptr noundef %i.b) #19
  store ptr null, ptr %i.a, align 8, !tbaa !137
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132
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
