inline.NumInlined: 223
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_start_new_shape:bb.a
  %i.c = alloca [2 x float], align 8              ; 6 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !180 ; 6 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !207
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = load <2 x i32>, ptr %i.j, align 8, !tbaa !12
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
  %i.o = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.n, splat (float 5.000000e-01)
  %i.p = call i32 @dt_dev_get_preview_size(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.q = load float, ptr %i.a, align 4, !tbaa !13
  %i.r = load float, ptr %i.b, align 4, !tbaa !13
  %i.s = insertelement <2 x float> poison, float %i.q, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1
  %i.u = fmul reassoc nsz arcp contract afn <2 x float> %i.o, %i.t
  store <2 x float> %i.u, ptr %i.c, align 8, !tbaa !13
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !207 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !182
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.z = load i32, ptr %i.y, align 16, !tbaa !216
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to double
  %i.ab = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.v, ptr noundef %i.x, double noundef %i.aa, i32 noundef 2, ptr noundef nonnull %i.c, i64 noundef 1) #30 ; 0 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !207 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !182
  %i.af = load i32, ptr %i.y, align 16, !tbaa !216
  %i.ag = sitofp reassoc nsz arcp contract afn i32 %i.af to double
  %i.ah = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.ac, ptr noundef %i.ae, double noundef %i.ag, i32 noundef 4, ptr noundef nonnull %i.c, i64 noundef 1) #30 ; 0 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !207
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !182 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  %i.am = load i32, ptr %i.al, align 16, !tbaa !228
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 148
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !229
  %i.ap = load <2 x float>, ptr %i.c, align 8, !tbaa !13
  %i.aq = call reassoc nsz arcp contract afn float @dt_dev_get_zoom_scale_full() #30 ; 0 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !207
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2760
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !230
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  %i.av = load <2 x i32>, ptr %i.au, align 16, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call fastcc void @get_stamp_params(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f)
  %i.aw = getelementptr i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.aw, align 8, !tbaa !181 ; 3 uses
  %.val17 = load ptr, ptr %i.g, align 16, !tbaa !180
  %i.ax = load i32, ptr %.val, align 4, !tbaa !174
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %alloc_move_to.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv.i.i22 = phi i64 [ %indvars.iv.next.i.i, %.lr.ph ], [ 0, %bb.a ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i22, 1 ; 4 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, 100
  call void @llvm.assume(i1 %exitcond.not.i.i)
  %i.az = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !174
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %alloc_move_to.exit, label %.lr.ph

alloc_move_to.exit:                               ; preds = %.lr.ph, %bb.a
  %indvars.iv.i.i.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i, %.lr.ph ] ; 2 uses
  %.lcssa = phi ptr [ %.val, %bb.a ], [ %i.az, %.lr.ph ] ; 14 uses
  %i.bc = sitofp <2 x i32> %i.av to <2 x float>
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %i.ao to float
  %i.be = fmul reassoc nsz arcp contract afn <2 x float> %i.ap, %i.bc ; 2 uses
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.am to float
  %i.bg = extractelement <2 x float> %i.be, i64 0
  %i.bh = fdiv reassoc nsz arcp contract afn float %i.bg, %i.bf
  %i.bi = trunc nuw nsw i64 %indvars.iv.i.i.lcssa to i32
  store i32 %i.bi, ptr %.val17, align 4, !tbaa !12
  %i.bj = trunc i64 %indvars.iv.i.i.lcssa to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa, i64 17
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !240
  %i.bl = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i8 -1, ptr %i.bl, align 4, !tbaa !170
  %i.bm = getelementptr inbounds nuw i8, ptr %.lcssa, i64 18
  store i8 -1, ptr %i.bm, align 2, !tbaa !213
  store <4 x i32> <i32 1, i32 3, i32 0, i32 0>, ptr %.lcssa, align 4, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa, i64 20
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa, i64 52
  store i32 0, ptr %i.bo, align 4, !tbaa !93
  %i.bp = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %.lcssa, i64 36
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %.lcssa, i64 28
  %i.bt = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %.lcssa, i64 44
  store <2 x float> <float 5.000000e-01, float 7.500000e-01>, ptr %i.bu, align 4, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.lcssa, i64 56
  store i32 0, ptr %i.bv, align 4, !tbaa !91
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  %i.bx = load float, ptr %i.d, align 4, !tbaa !13
  %i.by = load float, ptr %i.e, align 4, !tbaa !13
  %i.bz = load float, ptr %i.f, align 4, !tbaa !13
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, <float 0.000000e+00, float 1.000000e+00>
  %i.cd = call reassoc nsz arcp contract afn <2 x float> @cexpf(<2 x float> noundef %i.cc) #31
  %i.ce = extractelement <2 x float> %i.be, i64 1
  %i.cf = fdiv reassoc nsz arcp contract afn float %i.ce, %i.bd ; 5 uses
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, 0.000000e+00
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.bh ; 4 uses
  store float %i.ch, ptr %i.bn, align 4
  store float %i.cf, ptr %i.bp, align 4
  store float %i.ch, ptr %i.bs, align 4
  store float %i.cf, ptr %i.bt, align 4
  store ptr %.lcssa, ptr %i.bw, align 8, !tbaa !218
  %i.ci = fadd reassoc nsz arcp contract afn float %i.bx, %i.ch
  store float %i.ci, ptr %i.bq, align 4
  store float %i.cf, ptr %i.br, align 4
  %i.cj = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul reassoc nsz arcp contract afn <2 x float> %i.cd, %i.ck
  %i.cm = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.cf, i64 1
  %i.co = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, %i.cn
  %i.cp = load ptr, ptr %i.bw, align 8, !tbaa !218
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 28
  store <2 x float> %i.co, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !225
  %i.ct = or i32 %i.cs, 5
  store i32 %i.ct, ptr %i.cr, align 8, !tbaa !225
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i32 1, ptr %i.cu, align 4, !tbaa !241
  %i.cv = load ptr, ptr %i.bw, align 8, !tbaa !218
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 12, ptr %i.cw, align 8, !tbaa !232
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !208
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @alloc_line_to(ptr nofree captures(ret: address, provenance) %.680.val, ptr nofree writeonly captures(none) %.704.val, <2 x float> noundef %0) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.4, %bb.g ] ; 7 uses
  %i.a = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.i ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !174
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.g = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !174
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.j = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !174
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.3 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !174
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 100
  br i1 %exitcond.not.i.4, label %node_alloc.exit.thread, label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.b ], [ %indvars.iv.next.i, %bb.c ], [ %indvars.iv.next.i.1, %bb.d ], [ %indvars.iv.next.i.2, %bb.e ], [ %indvars.iv.next.i.3, %bb.f ] ; 2 uses
  %.lcssa = phi ptr [ %i.a, %bb.b ], [ %i.d, %bb.c ], [ %i.g, %bb.d ], [ %i.j, %bb.e ], [ %i.m, %bb.f ] ; 10 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  store i32 %i.p, ptr %.704.val, align 4, !tbaa !12
  %i.q = trunc i64 %indvars.iv.i.lcssa to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa, i64 17
  store i8 %i.q, ptr %i.r, align 1, !tbaa !240
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i8 -1, ptr %i.s, align 4, !tbaa !170
  %i.t = getelementptr inbounds nuw i8, ptr %.lcssa, i64 18
  store i8 -1, ptr %i.t, align 2, !tbaa !213
  store <4 x i32> <i32 2, i32 3, i32 0, i32 0>, ptr %.lcssa, align 4, !tbaa !12
  %1 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa, i64 52
  store i32 0, ptr %i.u, align 4, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa, i64 36
  store <2 x float> %0, ptr %i.v, align 4
  %2 = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %2, ptr %1, align 4
  %3 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 44
  store <2 x float> <float 5.000000e-01, float 7.500000e-01>, ptr %3, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa, i64 56
  store i32 0, ptr %i.w, align 4, !tbaa !91
  br label %node_alloc.exit.thread

node_alloc.exit.thread:                           ; preds = %bb.g, %bb.h
  %i.x = phi ptr [ %.lcssa, %bb.h ], [ null, %bb.g ]
  ret ptr %i.x
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @alloc_curve_to(ptr nofree captures(ret: address, provenance) %.680.val, ptr nofree writeonly captures(none) %.704.val, <2 x float> noundef %0) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.4, %bb.g ] ; 7 uses
  %i.a = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.i ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !174
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.g = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !174
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.j = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !174
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.3 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !174
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 100
  br i1 %exitcond.not.i.4, label %node_alloc.exit.thread, label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.b ], [ %indvars.iv.next.i, %bb.c ], [ %indvars.iv.next.i.1, %bb.d ], [ %indvars.iv.next.i.2, %bb.e ], [ %indvars.iv.next.i.3, %bb.f ] ; 2 uses
  %.lcssa = phi ptr [ %i.a, %bb.b ], [ %i.d, %bb.c ], [ %i.g, %bb.d ], [ %i.j, %bb.e ], [ %i.m, %bb.f ] ; 11 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  store i32 %i.p, ptr %.704.val, align 4, !tbaa !12
  %i.q = trunc i64 %indvars.iv.i.lcssa to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa, i64 17
  store i8 %i.q, ptr %i.r, align 1, !tbaa !240
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i8 -1, ptr %i.s, align 4, !tbaa !170
  %i.t = getelementptr inbounds nuw i8, ptr %.lcssa, i64 18
  store i8 -1, ptr %i.t, align 2, !tbaa !213
  store <4 x i32> <i32 3, i32 3, i32 0, i32 0>, ptr %.lcssa, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa, i64 60
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa, i64 52
  store i32 0, ptr %i.w, align 4, !tbaa !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 36
  store <2 x float> %0, ptr %1, align 4
  %2 = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %2, ptr %i.v, align 4
  %3 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 44
  store <2 x float> <float 5.000000e-01, float 7.500000e-01>, ptr %3, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.lcssa, i64 56
  store i32 0, ptr %i.x, align 4, !tbaa !91
  br label %node_alloc.exit.thread

node_alloc.exit.thread:                           ; preds = %bb.g, %bb.h
  %i.y = phi ptr [ %.lcssa, %bb.h ], [ null, %bb.g ]
  ret ptr %i.y
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @node_delete(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val = load i8, ptr %i.a, align 4, !tbaa !170  ; 2 uses
  %i.b = icmp eq i8 %.val, -1                     ; 2 uses
  %i.c = sext i8 %.val to i64
  %i.d = getelementptr inbounds [76 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 18         ; 2 uses
  %.val20 = load i8, ptr %i.e, align 2, !tbaa !213 ; 3 uses
  %i.f = icmp ne i8 %.val20, -1
  %i.g = sext i8 %.val20 to i64
  %i.h = getelementptr inbounds [76 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = icmp ne ptr %0, null
  %i.j = and i1 %i.i, %i.f                        ; 2 uses
  %or.cond = select i1 %i.b, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 -1, ptr %i.k, align 4, !tbaa !170
  store i32 1, ptr %i.h, align 4, !tbaa !174
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %0, null
  %i.m = or i1 %i.l, %i.b
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i8 %.val20, ptr %i.n, align 2, !tbaa !213
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.p = load i8, ptr %i.o, align 1, !tbaa !240
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 %i.p, ptr %i.q, align 4, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  store i8 -1, ptr %i.e, align 2, !tbaa !213
  store i8 -1, ptr %i.a, align 4, !tbaa !170
  store i32 0, ptr %1, align 4, !tbaa !174
  br label %bb.g

bb.g:                                             ; preds = %bb.p, %bb.f
  %.03946.i = phi i32 [ 99, %bb.f ], [ %i.ba, %bb.p ] ; 12 uses
  %i.r = zext nneg i32 %.03946.i to i64
  %i.s = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !174
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %.03946.i, -1                ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !174
  %.not.i.1 = icmp eq i32 %i.x, 0
  br i1 %.not.i.1, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %.03946.i, -2                ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !174
  %.not.i.2 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.2, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ac = add nsw i32 %.03946.i, -3               ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !174
  %.not.i.3 = icmp eq i32 %i.af, 0
  br i1 %.not.i.3, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %.03946.i, -4               ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !174
  %.not.i.4 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.4, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ak = add nsw i32 %.03946.i, -5               ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !174
  %.not.i.5 = icmp eq i32 %i.an, 0
  br i1 %.not.i.5, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ao = add nsw i32 %.03946.i, -6               ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !174
  %.not.i.6 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.6, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.as = add nsw i32 %.03946.i, -7               ; 2 uses
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !174
  %.not.i.7 = icmp eq i32 %i.av, 0
  br i1 %.not.i.7, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aw = add nsw i32 %.03946.i, -8               ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !174
  %.not.i.8 = icmp eq i32 %i.az, 0
  br i1 %.not.i.8, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = add nsw i32 %.03946.i, -9
  %i.bb = icmp sgt i32 %.03946.i, 9
  br i1 %i.bb, label %bb.g, label %.lr.ph52.i.preheader

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.03946.i.lcssa = phi i32 [ %.03946.i, %bb.g ], [ %i.u, %bb.h ], [ %i.y, %bb.i ], [ %i.ac, %bb.j ], [ %i.ag, %bb.k ], [ %i.ak, %bb.l ], [ %i.ao, %bb.m ], [ %i.as, %bb.n ], [ %i.aw, %bb.o ] ; 3 uses
  %.not4148.i = icmp slt i32 %.03946.i.lcssa, 0
  br i1 %.not4148.i, label %iter.check, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %bb.p, %bb.q
  %.14049.i.ph = phi i32 [ %.03946.i.lcssa, %bb.q ], [ 0, %bb.p ]
  br label %.lr.ph52.i

.preheader.i:                                     ; preds = %bb.x
  %i.bc = icmp slt i32 %.2.i, 99
  br i1 %i.bc, label %iter.check, label %node_gc.exit

iter.check:                                       ; preds = %.preheader.i, %bb.q
  %.140.lcssa65.i = phi i32 [ %.2.i, %.preheader.i ], [ %.03946.i.lcssa, %bb.q ]
  %i.bd = sext i32 %.140.lcssa65.i to i64         ; 6 uses
  %i.be = sub nsw i64 99, %i.bd                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.be, 4
  br i1 %min.iters.check, label %.lr.ph54.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check26 = icmp ult i64 %i.be, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %i.be, 28
  %n.vec = and i64 %i.be, -32                     ; 4 uses
  %i.bg = add nsw i64 %n.vec, %i.bd               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.bd, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.bh = add nsw <8 x i64> %vec.ind, splat (i64 1)
  %i.bi = add nsw <8 x i64> %vec.ind, splat (i64 9)
  %i.bj = add nsw <8 x i64> %vec.ind, splat (i64 17)
  %i.bk = add nsw <8 x i64> %vec.ind, splat (i64 25)
  %wide.gep = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bh
  %wide.gep27 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bi
  %wide.gep28 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bj
  %wide.gep29 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bk
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !174
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep27, <8 x i1> splat (i1 true)), !tbaa !174
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep28, <8 x i1> splat (i1 true)), !tbaa !174
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep29, <8 x i1> splat (i1 true)), !tbaa !174
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %node_gc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph54.i.preheader, label %vec.epilog.ph, !prof !243

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.bg, %vec.epilog.iter.check ], [ %i.bd, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.be, -4                    ; 3 uses
  %i.bm = add nsw i64 %n.vec30, %i.bd
  %broadcast.splatinsert31 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
end_hunk_0
