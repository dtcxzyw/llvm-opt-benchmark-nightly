Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gradient?download=true
inline.NumInlined: 87
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_gradient_get_distance:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !40 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 3
  br i1 %i.as, label %.critedge73.lr.ph, label %.loopexit

.critedge73.lr.ph:                                ; preds = %.critedge71.preheader
  %wide.trip.count84 = zext nneg i32 %i.ar to i64
  br label %.critedge73

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !29
  %i.av = fsub reassoc nsz arcp contract afn float %0, %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !29
  %i.ay = fsub reassoc nsz arcp contract afn float %1, %i.ax ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.av, %i.av
  %i.ba = fmul reassoc nsz arcp contract afn float %i.ay, %i.ay
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.az
  %i.bc = fcmp reassoc nsz arcp contract afn uge float %i.bb, %i.c
  br i1 %i.bc, label %bb.d, label %.loopexit.sink.split

.critedge71:                                      ; preds = %.critedge73
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %.loopexit, label %.critedge73

.critedge73:                                      ; preds = %.critedge73.lr.ph, %.critedge71
  %indvars.iv81 = phi i64 [ 3, %.critedge73.lr.ph ], [ %indvars.iv.next82, %.critedge71 ] ; 2 uses
  %.idx90 = shl nuw nsw i64 %indvars.iv81, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx90 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !29
  %i.bf = fsub reassoc nsz arcp contract afn float %0, %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !29
  %i.bi = fsub reassoc nsz arcp contract afn float %1, %i.bh ; 2 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bf, %i.bf
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bi, %i.bi
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.bj
  %i.bm = fcmp reassoc nsz arcp contract afn uge float %i.bl, %i.c
  br i1 %i.bm, label %.critedge71, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.critedge, %.critedge73, %bb.c
  %.sink = phi ptr [ %6, %bb.c ], [ %6, %.critedge73 ], [ %7, %.critedge ]
  store i32 1, ptr %.sink, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge71, %.loopexit.sink.split, %.critedge71.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_get_points_border(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 8)) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(none) %5, i32 %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !26
  %i.j = tail call fastcc i32 @_gradient_get_points(ptr noundef %0, float noundef %i.c, float noundef %i.e, float noundef %i.g, float noundef %i.i, ptr noundef %2, ptr noundef %3)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not18 = icmp eq ptr %4, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load float, ptr %i.b, align 4, !tbaa !29
  %i.l = load float, ptr %i.d, align 4, !tbaa !29
  %i.m = load float, ptr %i.f, align 4, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !30
  %i.p = load float, ptr %i.h, align 4, !tbaa !26
  %i.q = tail call fastcc i32 @_gradient_get_pts_border(ptr noundef %0, float noundef %i.k, float noundef %i.l, float noundef %i.m, float noundef %i.o, float noundef %i.p, ptr noundef %4, ptr noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.q, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_get_mask(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) #0 {
bb.a:
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = alloca [8 x float], align 16             ; 11 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.c = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #12 ; 0 uses
  %i.d = load i64, ptr %12, align 8, !tbaa !85
  %i.e = add nsw i64 %i.d, -1290608000
  %i.f = sitofp reassoc nsz arcp contract afn i64 %i.e to double
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !87
  %i.i = sitofp reassoc nsz arcp contract afn i64 %i.h to double
  %i.j = fmul reassoc nnan nsz arcp contract afn double %i.i, f0x3EB0C6F7A0B5ED8D
  %i.k = fadd reassoc nsz arcp contract afn double %i.j, %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %i.l = phi reassoc nsz arcp contract afn double [ %i.k, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !88   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store <2 x float> zeroinitializer, ptr %i.a, align 16, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.s = load <2 x i32>, ptr %i.o, align 16, !tbaa !32
  %i.t = sitofp <2 x i32> %i.s to <2 x float>     ; 3 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  store float %i.u, ptr %i.p, align 8, !tbaa !29
  store <2 x float> %i.t, ptr %i.r, align 16, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float 0.000000e+00, ptr %i.v, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.x = extractelement <2 x float> %i.t, i64 1
  store float %i.x, ptr %i.w, align 4, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !101
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !110
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.ab to double
  %i.ad = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.z, ptr noundef %i.n, double noundef %i.ac, i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef 4) #12
  %.not.i213 = icmp eq i32 %i.ad, 0
  br i1 %.not.i213, label %_gradient_get_area.exit.thread, label %bb.c

_gradient_get_area.exit.thread:                   ; preds = %dt_get_debug_wtime.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.t

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  %i.ae = load <2 x float>, ptr %i.a, align 16, !tbaa !29 ; 2 uses
  %i.af = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ae, <2 x float> splat (float f0x7F7FFFFF))
  %i.ag = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ae, <2 x float> splat (float f0x00800000))
  %i.ah = load <2 x float>, ptr %i.p, align 8, !tbaa !29 ; 2 uses
  %i.ai = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ah, <2 x float> %i.af)
  %i.aj = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ah, <2 x float> %i.ag)
  %i.ak = load <2 x float>, ptr %i.r, align 16, !tbaa !29 ; 2 uses
  %i.al = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ak, <2 x float> %i.ai) ; 3 uses
  %i.am = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ak, <2 x float> %i.aj)
  %i.an = extractelement <2 x float> %i.al, i64 0
  %i.ao = fptosi float %i.an to i32
  store i32 %i.ao, ptr %6, align 4, !tbaa !32
  %i.ap = extractelement <2 x float> %i.al, i64 1
  %i.aq = fptosi float %i.ap to i32
  store i32 %i.aq, ptr %7, align 4, !tbaa !32
  %i.ar = fsub reassoc nsz arcp contract afn <2 x float> %i.am, %i.al
  %i.as = fptosi <2 x float> %i.ar to <2 x i32>   ; 2 uses
  %i.at = extractelement <2 x i32> %i.as, i64 0
  store i32 %i.at, ptr %4, align 4, !tbaa !32
  %i.au = extractelement <2 x i32> %i.as, i64 1   ; 2 uses
  store i32 %i.au, ptr %5, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %i.aw = and i32 %i.av, 4112
  %or.cond.not = icmp eq i32 %i.aw, 4112
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.ay = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #12 ; 0 uses
  %i.az = load i64, ptr %11, align 8, !tbaa !85
  %i.ba = add nsw i64 %i.az, -1290608000
  %i.bb = sitofp reassoc nsz arcp contract afn i64 %i.ba to double
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !87
  %i.be = sitofp reassoc nsz arcp contract afn i64 %i.bd to double
  %i.bf = fmul reassoc nnan nsz arcp contract afn double %i.be, f0x3EB0C6F7A0B5ED8D
  %i.bg = fadd reassoc nsz arcp contract afn double %i.bf, %i.bb ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.bh = fsub reassoc nsz arcp contract afn double %i.bg, %i.l
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.ax, double noundef %i.bh) #12
  %.pre = load i32, ptr %5, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bi = phi i32 [ %i.au, %bb.c ], [ %.pre, %bb.d ] ; 5 uses
  %.0 = phi nsz double [ %i.l, %bb.c ], [ %i.bg, %bb.d ] ; 2 uses
  %i.bj = load ptr, ptr %2, align 8, !tbaa !21
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !24 ; 6 uses
  %i.bl = load i32, ptr %4, align 4, !tbaa !32    ; 7 uses
  %i.bm = load i32, ptr %6, align 4, !tbaa !32    ; 3 uses
  %i.bn = load i32, ptr %7, align 4, !tbaa !32
  %13 = insertelement <2 x i32> poison, i32 %i.bl, i64 0
  %14 = insertelement <2 x i32> %13, i32 %i.bi, i64 1
  %15 = add nsw <2 x i32> %14, splat (i32 7)
  %16 = sdiv <2 x i32> %15, splat (i32 8)         ; 4 uses
  %17 = extractelement <2 x i32> %16, i64 0
  %i.bo = add nsw i32 %17, 1                      ; 2 uses
  %18 = extractelement <2 x i32> %16, i64 1
  %i.bp = add nsw i32 %18, 1
  %i.bq = sext i32 %i.bo to i64                   ; 5 uses
  %i.br = sext i32 %i.bp to i64                   ; 2 uses
  %i.bs = shl nsw i64 %i.bq, 3
  %i.bt = mul nsw i64 %i.bs, %i.br
  %i.bu = call ptr @dt_alloc_aligned(i64 noundef %i.bt) #12 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bu, i64 64) ]
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.t, label %.preheader230

.preheader230:                                    ; preds = %bb.e
  %.not196233 = icmp slt i32 %i.bi, -14           ; 2 uses
  %.not209231 = icmp slt i32 %i.bl, -14           ; 2 uses
  %or.cond = or i1 %.not196233, %.not209231
  br i1 %or.cond, label %._crit_edge235.split, label %.preheader229.preheader

.preheader229.preheader:                          ; preds = %.preheader230
  %19 = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %16, <2 x i32> zeroinitializer)
  %20 = add nuw nsw <2 x i32> %19, splat (i32 1)  ; 2 uses
  %21 = extractelement <2 x i32> %20, i64 1
  %wide.trip.count277 = zext nneg i32 %21 to i64
  %22 = extractelement <2 x i32> %20, i64 0
  %wide.trip.count = zext nneg i32 %22 to i64     ; 6 uses
  %min.iters.check = icmp slt i32 %i.bl, 17
  %min.iters.check326 = icmp slt i32 %i.bl, 241
  %i.bw = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert327 = insertelement <8 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat328 = shufflevector <8 x i32> %broadcast.splatinsert327, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 64), %broadcast.splat328
  %invariant.op391.a = add <8 x i32> splat (i32 128), %broadcast.splat328
  %invariant.op393.a = add <8 x i32> splat (i32 192), %broadcast.splat328
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  %n.vec332 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert335 = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat336 = shufflevector <4 x i32> %broadcast.splatinsert335, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n344 = icmp eq i64 %n.vec332, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader229.preheader, %._crit_edge
  %indvars.iv273 = phi i64 [ 0, %.preheader229.preheader ], [ %indvars.iv.next274, %._crit_edge ] ; 3 uses
  %i.bx = mul nsw i64 %indvars.iv273, %i.bq       ; 6 uses
  %indvars.iv273.tr = trunc i64 %indvars.iv273 to i32
  %i.by = shl i32 %indvars.iv273.tr, 3
  %i.bz = add i32 %i.by, %i.bn
  %i.ca = sitofp reassoc nsz arcp contract afn i32 %i.bz to float ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check326, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ca, i64 0 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.cb = or disjoint i64 %index, 8
  %i.cc = or disjoint i64 %index, 16
  %i.cd = or disjoint i64 %index, 24
  %i.ce = shl <8 x i32> %vec.ind, splat (i32 3)
  %step.add = shl <8 x i32> %vec.ind, splat (i32 3)
  %step.add.2 = shl <8 x i32> %vec.ind, splat (i32 3)
  %step.add.3 = shl <8 x i32> %vec.ind, splat (i32 3)
  %i.cf = add <8 x i32> %i.ce, %broadcast.splat328
  %.reass = add <8 x i32> %step.add, %invariant.op
  %.reass392.a = add <8 x i32> %step.add.2, %invariant.op391.a
  %.reass394.a = add <8 x i32> %step.add.3, %invariant.op393.a
  %i.cg = sitofp reassoc nsz arcp contract afn <8 x i32> %i.cf to <8 x float>
  %i.ch = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass to <8 x float>
  %i.ci = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass392.a to <8 x float>
  %i.cj = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass394.a to <8 x float>
  %i.ck = add nsw i64 %index, %i.bx
  %i.cl = add nsw i64 %i.cb, %i.bx
  %i.cm = add nsw i64 %i.cc, %i.bx
  %i.cn = add nsw i64 %i.cd, %i.bx
  %i.co = shl nsw i64 %i.ck, 3
  %i.cp = shl nsw i64 %i.cl, 3
  %i.cq = shl nsw i64 %i.cm, 3
  %i.cr = shl nsw i64 %i.cn, 3
  %i.cs = getelementptr inbounds i8, ptr %i.bu, i64 %i.co
  %i.ct = getelementptr inbounds i8, ptr %i.bu, i64 %i.cp
  %i.cu = getelementptr inbounds i8, ptr %i.bu, i64 %i.cq
  %i.cv = getelementptr inbounds i8, ptr %i.bu, i64 %i.cr
  %interleaved.vec = shufflevector <8 x float> %i.cg, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec, ptr %i.cs, align 8, !tbaa !29
  %interleaved.vec329 = shufflevector <8 x float> %i.ch, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec329, ptr %i.ct, align 8, !tbaa !29
  %interleaved.vec330 = shufflevector <8 x float> %i.ci, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec330, ptr %i.cu, align 8, !tbaa !29
  %interleaved.vec331 = shufflevector <8 x float> %i.cj, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec331, ptr %i.cv, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !114

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert333.a = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cx = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert337 = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %broadcast.splat338 = shufflevector <4 x i32> %broadcast.splatinsert337, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat338, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index339 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next342, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind340 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next343, %vec.epilog.vector.body ] ; 2 uses
  %i.cy = shl <4 x i32> %vec.ind340, splat (i32 3)
  %i.cz = add <4 x i32> %i.cy, %broadcast.splat336
  %i.da = sitofp reassoc nsz arcp contract afn <4 x i32> %i.cz to <4 x float>
  %i.db = add nsw i64 %index339, %i.bx
  %i.dc = shl nsw i64 %i.db, 3
  %i.dd = getelementptr inbounds i8, ptr %i.bu, i64 %i.dc
  %interleaved.vec341 = shufflevector <4 x float> %i.da, <4 x float> %broadcast.splatinsert333.a, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec341, ptr %i.dd, align 8, !tbaa !29
  %index.next342 = add nuw i64 %index339, 4       ; 2 uses
  %vec.ind.next343 = add <4 x i32> %vec.ind340, splat (i32 4)
  %i.de = icmp eq i64 %index.next342, %n.vec332
  br i1 %i.de, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !115

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n344, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec332, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge235.split:                             ; preds = %._crit_edge, %.preheader230
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %i.dg = and i32 %i.df, 4112
  %or.cond210.not = icmp eq i32 %i.dg, 4112
  br i1 %or.cond210.not, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count277
  br i1 %exitcond278.not, label %._crit_edge235.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.dh = shl i32 %indvars.iv.tr, 3
  %i.di = add i32 %i.dh, %i.bm
  %i.dj = sitofp reassoc nsz arcp contract afn i32 %i.di to float
  %i.dk = add nsw i64 %indvars.iv, %i.bx
  %.idx322 = shl nsw i64 %i.dk, 3
  %i.dl = getelementptr inbounds i8, ptr %i.bu, i64 %.idx322 ; 2 uses
  store float %i.dj, ptr %i.dl, align 8, !tbaa !29
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  store float %i.ca, ptr %i.dm, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !116

bb.f:                                             ; preds = %._crit_edge235.split
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.do = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #12 ; 0 uses
  %i.dp = load i64, ptr %10, align 8, !tbaa !85
  %i.dq = add nsw i64 %i.dp, -1290608000
  %i.dr = sitofp reassoc nsz arcp contract afn i64 %i.dq to double
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !87
  %i.du = sitofp reassoc nsz arcp contract afn i64 %i.dt to double
  %i.dv = fmul reassoc nnan nsz arcp contract afn double %i.du, f0x3EB0C6F7A0B5ED8D
  %i.dw = fadd reassoc nsz arcp contract afn double %i.dv, %i.dr ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.dx = fsub reassoc nsz arcp contract afn double %i.dw, %.0
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.dn, double noundef %i.dx) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge235.split
  %.1 = phi nsz double [ %.0, %._crit_edge235.split ], [ %i.dw, %bb.f ] ; 2 uses
  %i.dy = load ptr, ptr %i.y, align 8, !tbaa !101
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.ea = load i32, ptr %i.aa, align 16, !tbaa !110
  %i.eb = sitofp reassoc nsz arcp contract afn i32 %i.ea to double
  %i.ec = mul nsw i64 %i.br, %i.bq
  %i.ed = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.dy, ptr noundef %i.dz, double noundef %i.eb, i32 noundef 3, ptr noundef nonnull %i.bu, i64 noundef %i.ec) #12
  %.not199 = icmp eq i32 %i.ed, 0
  br i1 %.not199, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.bu) #12
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %i.ef = and i32 %i.ee, 4112
  %or.cond211.not = icmp eq i32 %i.ef, 4112
  br i1 %or.cond211.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.eh = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #12 ; 0 uses
  %i.ei = load i64, ptr %9, align 8, !tbaa !85
  %i.ej = add nsw i64 %i.ei, -1290608000
  %i.ek = sitofp reassoc nsz arcp contract afn i64 %i.ej to double
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !87
  %i.en = sitofp reassoc nsz arcp contract afn i64 %i.em to double
  %i.eo = fmul reassoc nnan nsz arcp contract afn double %i.en, f0x3EB0C6F7A0B5ED8D
  %i.ep = fadd reassoc nsz arcp contract afn double %i.eo, %i.ek ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.eq = fsub reassoc nsz arcp contract afn double %i.ep, %.1
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.eg, double noundef %i.eq) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2 = phi nsz double [ %.1, %bb.i ], [ %i.ep, %bb.j ]
  %i.er = load ptr, ptr %i.m, align 8, !tbaa !88  ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 144
  %i.et = load i32, ptr %i.es, align 16, !tbaa !117
  %i.eu = sitofp reassoc nsz arcp contract afn i32 %i.et to float ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 148
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !130
  %i.ex = sitofp reassoc nsz arcp contract afn i32 %i.ew to float ; 2 uses
  %i.ey = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.eu, float noundef %i.ex) #14 ; 3 uses
  %i.ez = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ey ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !31
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, f0xBC8EFA36
  %sincos = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.fc) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.fd = load float, ptr %i.bk, align 4, !tbaa !29
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, %i.eu ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !29
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, %i.ex ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !30
  %i.fk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fj, float 1.000000e-03) ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !26
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !131
  %i.fp = fmul reassoc nnan nsz arcp contract afn float %i.fk, 4.000000e+00 ; 2 uses
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fp, %i.ey
  %i.fr = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.fq)
  %i.fs = fptosi float %i.fr to i32               ; 9 uses
  %i.ft = shl nsw i32 %i.fs, 1
  %i.fu = add nsw i32 %i.ft, 2                    ; 5 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = shl nsw i64 %i.fv, 2
  %i.fx = call ptr @dt_alloc_aligned(i64 noundef %i.fw) #12 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fx, i64 64) ]
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.l, label %.preheader228

.preheader228:                                    ; preds = %bb.k
  %i.fz = icmp sgt i32 %i.fs, -1
  br i1 %i.fz, label %.lr.ph, label %.preheader228.._crit_edge237_crit_edge

.preheader228.._crit_edge237_crit_edge:           ; preds = %.preheader228
  %.pre313 = sext i32 %i.fs to i64
  br label %._crit_edge237

.lr.ph:                                           ; preds = %.preheader228
  %i.ga = icmp eq i32 %i.fo, 1
  br i1 %i.ga, label %iter.check367, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.gb = zext nneg i32 %i.fs to i64
  %wide.trip.count283 = zext nneg i32 %i.fu to i64
  %i.gc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fk
  br label %.lr.ph.split

iter.check367:                                    ; preds = %.lr.ph
  %i.gd = fmul reassoc nsz arcp contract afn float %i.ez, 5.000000e-01 ; 3 uses
  %i.ge = zext nneg i32 %i.fs to i64              ; 3 uses
  %wide.trip.count289 = zext nneg i32 %i.fu to i64 ; 6 uses
  %min.iters.check345 = icmp ult i32 %i.fu, 4
  br i1 %min.iters.check345, label %vec.epilog.scalar.ph368.preheader, label %vector.main.loop.iter.check346

vector.main.loop.iter.check346:                   ; preds = %iter.check367
  %min.iters.check347 = icmp ult i32 %i.fu, 32
  br i1 %min.iters.check347, label %vec.epilog.ph371, label %vector.ph348

vector.ph348:                                     ; preds = %vector.main.loop.iter.check346
  %i.gf = and i64 %wide.trip.count289, 28
  %n.vec349 = and i64 %wide.trip.count289, 2147483616 ; 4 uses
  %broadcast.splatinsert350.a = insertelement <8 x float> poison, float %i.gd, i64 0
  %broadcast.splat351.a = shufflevector <8 x float> %broadcast.splatinsert350.a, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert352 = insertelement <8 x i32> poison, i32 %i.fs, i64 0
  %broadcast.splat353 = shufflevector <8 x i32> %broadcast.splatinsert352, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert354 = insertelement <8 x float> poison, float %i.fk, i64 0
  %broadcast.splat355 = shufflevector <8 x float> %broadcast.splatinsert354, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op395.a = sub <8 x i32> splat (i32 8), %broadcast.splat353
  %invariant.op397 = sub <8 x i32> splat (i32 16), %broadcast.splat353
  %invariant.op399 = sub <8 x i32> splat (i32 24), %broadcast.splat353
  %i.gg = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat355
  %i.gh = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat355
  %i.gi = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat355
  %i.gj = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat355
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph348
  %index357 = phi i64 [ 0, %vector.ph348 ], [ %index.next362, %vector.body356 ] ; 2 uses
  %vec.ind358 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph348 ], [ %vec.ind.next363, %vector.body356 ] ; 5 uses
  %i.gk = sub <8 x i32> %vec.ind358, %broadcast.splat353
  %.reass396.a = add <8 x i32> %vec.ind358, %invariant.op395.a
  %.reass398 = add <8 x i32> %vec.ind358, %invariant.op397
  %.reass400 = add <8 x i32> %vec.ind358, %invariant.op399
  %i.gl = sitofp reassoc nsz arcp contract afn <8 x i32> %i.gk to <8 x float>
  %i.gm = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass396.a to <8 x float>
  %i.gn = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass398 to <8 x float>
  %i.go = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass400 to <8 x float>
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat351.a, %i.gl
  %i.gq = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat351.a, %i.gm
  %i.gr = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat351.a, %i.gn
  %i.gs = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat351.a, %i.go
  %i.gt = fmul reassoc nsz arcp contract afn <8 x float> %i.gp, %i.gg
  %i.gu = fmul reassoc nsz arcp contract afn <8 x float> %i.gq, %i.gh
  %i.gv = fmul reassoc nsz arcp contract afn <8 x float> %i.gr, %i.gi
  %i.gw = fmul reassoc nsz arcp contract afn <8 x float> %i.gs, %i.gj
  %i.gx = fadd reassoc nsz arcp contract afn <8 x float> %i.gt, splat (float 5.000000e-01) ; 3 uses
  %i.gy = fadd reassoc nsz arcp contract afn <8 x float> %i.gu, splat (float 5.000000e-01) ; 3 uses
  %i.gz = fadd reassoc nsz arcp contract afn <8 x float> %i.gv, splat (float 5.000000e-01) ; 3 uses
  %i.ha = fadd reassoc nsz arcp contract afn <8 x float> %i.gw, splat (float 5.000000e-01) ; 3 uses
  %i.hb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gx, zeroinitializer
  %i.hc = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gy, zeroinitializer
  %i.hd = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gz, zeroinitializer
  %i.he = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ha, zeroinitializer
  %i.hf = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gx, splat (float 1.000000e+00)
  %i.hg = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gy, splat (float 1.000000e+00)
  %i.hh = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gz, splat (float 1.000000e+00)
  %i.hi = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ha, splat (float 1.000000e+00)
  %i.hj = select reassoc nsz arcp contract afn <8 x i1> %i.hf, <8 x float> splat (float 1.000000e+00), <8 x float> %i.gx
  %i.hk = select reassoc nsz arcp contract afn <8 x i1> %i.hg, <8 x float> splat (float 1.000000e+00), <8 x float> %i.gy
  %i.hl = select reassoc nsz arcp contract afn <8 x i1> %i.hh, <8 x float> splat (float 1.000000e+00), <8 x float> %i.gz
  %i.hm = select reassoc nsz arcp contract afn <8 x i1> %i.hi, <8 x float> splat (float 1.000000e+00), <8 x float> %i.ha
  %i.hn = select reassoc nsz arcp contract afn <8 x i1> %i.hb, <8 x float> zeroinitializer, <8 x float> %i.hj
  %i.ho = select reassoc nsz arcp contract afn <8 x i1> %i.hc, <8 x float> zeroinitializer, <8 x float> %i.hk
  %i.hp = select reassoc nsz arcp contract afn <8 x i1> %i.hd, <8 x float> zeroinitializer, <8 x float> %i.hl
  %i.hq = select reassoc nsz arcp contract afn <8 x i1> %i.he, <8 x float> zeroinitializer, <8 x float> %i.hm
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %index357 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 96
  store <8 x float> %i.hn, ptr %i.hr, align 64, !tbaa !29
  store <8 x float> %i.ho, ptr %i.hs, align 32, !tbaa !29
  store <8 x float> %i.hp, ptr %i.ht, align 64, !tbaa !29
  store <8 x float> %i.hq, ptr %i.hu, align 32, !tbaa !29
  %index.next362 = add nuw i64 %index357, 32      ; 2 uses
  %vec.ind.next363 = add <8 x i32> %vec.ind358, splat (i32 32)
  %i.hv = icmp eq i64 %index.next362, %n.vec349
  br i1 %i.hv, label %middle.block364, label %vector.body356, !llvm.loop !132

middle.block364:                                  ; preds = %vector.body356
  %cmp.n365 = icmp eq i64 %n.vec349, %wide.trip.count289
  br i1 %cmp.n365, label %._crit_edge237, label %vec.epilog.iter.check369

vec.epilog.iter.check369:                         ; preds = %middle.block364
  %min.epilog.iters.check370 = icmp eq i64 %i.gf, 0
  br i1 %min.epilog.iters.check370, label %vec.epilog.scalar.ph368.preheader, label %vec.epilog.ph371, !prof !114

vec.epilog.ph371:                                 ; preds = %vector.main.loop.iter.check346, %vec.epilog.iter.check369
  %vec.epilog.resume.val366 = phi i64 [ %n.vec349, %vec.epilog.iter.check369 ], [ 0, %vector.main.loop.iter.check346 ] ; 2 uses
  %n.vec372 = and i64 %wide.trip.count289, 2147483644 ; 3 uses
  %broadcast.splatinsert373.a = insertelement <4 x float> poison, float %i.gd, i64 0
  %broadcast.splat374.a = shufflevector <4 x float> %broadcast.splatinsert373.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert375.a = insertelement <4 x i32> poison, i32 %i.fs, i64 0
  %broadcast.splat376.a = shufflevector <4 x i32> %broadcast.splatinsert375.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert377 = insertelement <4 x float> poison, float %i.fk, i64 0
  %broadcast.splat378 = shufflevector <4 x float> %broadcast.splatinsert377, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hw = trunc nuw nsw i64 %vec.epilog.resume.val366 to i32
  %broadcast.splatinsert379 = insertelement <4 x i32> poison, i32 %i.hw, i64 0
  %broadcast.splat380 = shufflevector <4 x i32> %broadcast.splatinsert379, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction381 = or disjoint <4 x i32> %broadcast.splat380, <i32 0, i32 1, i32 2, i32 3>
  %i.hx = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat378
  br label %vec.epilog.vector.body382

vec.epilog.vector.body382:                        ; preds = %vec.epilog.vector.body382, %vec.epilog.ph371
  %index383 = phi i64 [ %vec.epilog.resume.val366, %vec.epilog.ph371 ], [ %index.next385, %vec.epilog.vector.body382 ] ; 2 uses
  %vec.ind384 = phi <4 x i32> [ %induction381, %vec.epilog.ph371 ], [ %vec.ind.next386, %vec.epilog.vector.body382 ] ; 2 uses
  %i.hy = sub <4 x i32> %vec.ind384, %broadcast.splat376.a
  %i.hz = sitofp reassoc nsz arcp contract afn <4 x i32> %i.hy to <4 x float>
  %i.ia = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat374.a, %i.hz
  %i.ib = fmul reassoc nsz arcp contract afn <4 x float> %i.ia, %i.hx
  %i.ic = fadd reassoc nsz arcp contract afn <4 x float> %i.ib, splat (float 5.000000e-01) ; 3 uses
  %i.id = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ic, zeroinitializer
  %i.ie = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ic, splat (float 1.000000e+00)
  %i.if = select reassoc nsz arcp contract afn <4 x i1> %i.ie, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ic
  %i.ig = select reassoc nsz arcp contract afn <4 x i1> %i.id, <4 x float> zeroinitializer, <4 x float> %i.if
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %index383
  store <4 x float> %i.ig, ptr %i.ih, align 16, !tbaa !29
  %index.next385 = add nuw i64 %index383, 4       ; 2 uses
  %vec.ind.next386 = add <4 x i32> %vec.ind384, splat (i32 4)
  %i.ii = icmp eq i64 %index.next385, %n.vec372
  br i1 %i.ii, label %vec.epilog.middle.block387, label %vec.epilog.vector.body382, !llvm.loop !133

vec.epilog.middle.block387:                       ; preds = %vec.epilog.vector.body382
  %cmp.n388 = icmp eq i64 %n.vec372, %wide.trip.count289
  br i1 %cmp.n388, label %._crit_edge237, label %vec.epilog.scalar.ph368.preheader

vec.epilog.scalar.ph368.preheader:                ; preds = %iter.check367, %vec.epilog.iter.check369, %vec.epilog.middle.block387
  %indvars.iv285.ph = phi i64 [ 0, %iter.check367 ], [ %n.vec349, %vec.epilog.iter.check369 ], [ %n.vec372, %vec.epilog.middle.block387 ]
  %i.ij = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fk
  br label %vec.epilog.scalar.ph368

vec.epilog.scalar.ph368:                          ; preds = %vec.epilog.scalar.ph368.preheader, %vec.epilog.scalar.ph368
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %vec.epilog.scalar.ph368 ], [ %indvars.iv285.ph, %vec.epilog.scalar.ph368.preheader ] ; 3 uses
  %i.ik = trunc i64 %indvars.iv285 to i32
  %i.il = sub i32 %i.ik, %i.fs
  %i.im = sitofp reassoc nsz arcp contract afn i32 %i.il to float
  %i.in = fmul reassoc nsz arcp contract afn float %i.gd, %i.im
  %i.io = fmul reassoc nsz arcp contract afn float %i.in, %i.ij
  %i.ip = fadd reassoc nsz arcp contract afn float %i.io, 5.000000e-01 ; 3 uses
  %i.iq = fcmp reassoc nsz arcp contract afn olt float %i.ip, 0.000000e+00
  %i.ir = fcmp reassoc nsz arcp contract afn ogt float %i.ip, 1.000000e+00
  %i.is = select reassoc nsz arcp contract afn i1 %i.ir, float 1.000000e+00, float %i.ip
  %i.it = select reassoc nsz arcp contract afn i1 %i.iq, float 0.000000e+00, float %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv285
  store float %i.it, ptr %i.iu, align 4, !tbaa !29
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count289
  br i1 %exitcond290.not, label %._crit_edge237, label %vec.epilog.scalar.ph368, !llvm.loop !134

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.bu) #12
  br label %bb.t

._crit_edge237:                                   ; preds = %.lr.ph.split, %vec.epilog.scalar.ph368, %middle.block364, %vec.epilog.middle.block387, %.preheader228.._crit_edge237_crit_edge
  %.pre-phi = phi i64 [ %.pre313, %.preheader228.._crit_edge237_crit_edge ], [ %i.ge, %middle.block364 ], [ %i.ge, %vec.epilog.scalar.ph368 ], [ %i.ge, %vec.epilog.middle.block387 ], [ %i.gb, %.lr.ph.split ]
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %.pre-phi ; 2 uses
  br i1 %.not196233, label %._crit_edge259.split, label %.preheader227.lr.ph

.preheader227.lr.ph:                              ; preds = %._crit_edge237
  %i.iw = fneg reassoc nsz arcp contract afn float %sin
  %factor.op.fmul255 = fmul reassoc nsz arcp contract afn float %i.fh, %i.iw
  %factor.op.fmul240 = fmul reassoc nsz arcp contract afn float %sin, %i.ez ; 2 uses
  %factor.op.fmul242 = fmul reassoc nsz arcp contract afn float %cos, %i.ez ; 2 uses
  %i.ix = fmul reassoc nsz arcp contract afn float %cos, %i.fe
  %i.iy = fsub reassoc nsz arcp contract afn float %factor.op.fmul255, %i.ix
  %.neg220 = fmul reassoc nsz arcp contract afn float %i.iy, %i.ez
  %i.iz = fmul reassoc nnan nsz arcp contract afn float %i.fk, -4.000000e+00
  br i1 %.not209231, label %._crit_edge259.split, label %.preheader227.preheader

.preheader227.preheader:                          ; preds = %.preheader227.lr.ph
  %23 = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %16, <2 x i32> zeroinitializer)
  %24 = add nuw nsw <2 x i32> %23, splat (i32 1)  ; 2 uses
  %25 = extractelement <2 x i32> %24, i64 1
  %wide.trip.count301 = zext nneg i32 %25 to i64
  %26 = extractelement <2 x i32> %24, i64 0
  %wide.trip.count295 = zext nneg i32 %26 to i64
  br label %.preheader227

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv279 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next280, %.lr.ph.split ] ; 3 uses
  %i.ja = trunc i64 %indvars.iv279 to i32
  %i.jb = sub i32 %i.ja, %i.fs
  %i.jc = sitofp reassoc nsz arcp contract afn i32 %i.jb to float
  %i.jd = fmul reassoc nsz arcp contract afn float %i.ez, %i.jc
  %i.je = fmul reassoc nsz arcp contract afn float %i.jd, %i.gc
  %i.jf = call reassoc nsz arcp contract afn float @erff(float noundef %i.je) #14
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jf, 5.000000e-01
  %i.jh = fadd reassoc nsz arcp contract afn float %i.jg, 5.000000e-01 ; 3 uses
  %i.ji = fcmp reassoc nsz arcp contract afn olt float %i.jh, 0.000000e+00
  %i.jj = fcmp reassoc nsz arcp contract afn ogt float %i.jh, 1.000000e+00
  %i.jk = select reassoc nsz arcp contract afn i1 %i.jj, float 1.000000e+00, float %i.jh
  %i.jl = select reassoc nsz arcp contract afn i1 %i.ji, float 0.000000e+00, float %i.jk
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv279
  store float %i.jl, ptr %i.jm, align 4, !tbaa !29
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count283
  br i1 %exitcond284.not, label %._crit_edge237, label %.lr.ph.split

.preheader227:                                    ; preds = %.preheader227.preheader, %._crit_edge253
  %indvars.iv297 = phi i64 [ 0, %.preheader227.preheader ], [ %indvars.iv.next298, %._crit_edge253 ] ; 2 uses
  %i.jn = mul nsw i64 %indvars.iv297, %i.bq
  br label %bb.m

._crit_edge259.split:                             ; preds = %._crit_edge253, %.preheader227.lr.ph, %._crit_edge237
  call void @free(ptr noundef %i.fx) #12
  %i.jo = sext i32 %i.bl to i64
  %i.jp = sext i32 %i.bi to i64
  %i.jq = shl nsw i64 %i.jo, 2
  %i.jr = mul i64 %i.jq, %i.jp
  %i.js = call ptr @dt_alloc_aligned(i64 noundef %i.jr) #12 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.js, i64 64) ]
  store ptr %i.js, ptr %3, align 8, !tbaa !135
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.q, label %.preheader

.preheader:                                       ; preds = %._crit_edge259.split
  %i.ju = icmp sgt i32 %i.bi, 0
  %i.jv = icmp sgt i32 %i.bl, 0
  %or.cond270 = and i1 %i.ju, %i.jv
  br i1 %or.cond270, label %.lr.ph262.preheader, label %._crit_edge269.split

.lr.ph262.preheader:                              ; preds = %.preheader
  %i.jw = zext nneg i32 %i.bl to i64              ; 2 uses
  %wide.trip.count311 = zext nneg i32 %i.bi to i64
  br label %.lr.ph262

._crit_edge253:                                   ; preds = %bb.p
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next298, %wide.trip.count301
  br i1 %exitcond302.not, label %._crit_edge259.split, label %.preheader227

bb.m:                                             ; preds = %.preheader227, %bb.p
  %indvars.iv291 = phi i64 [ 0, %.preheader227 ], [ %indvars.iv.next292, %bb.p ] ; 2 uses
  %i.jx = add nsw i64 %indvars.iv291, %i.jn
  %.idx323 = shl nsw i64 %i.jx, 3
  %i.jy = getelementptr inbounds i8, ptr %i.bu, i64 %.idx323 ; 3 uses
  %i.jz = load float, ptr %i.jy, align 8, !tbaa !29 ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jy, i64 4
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !29 ; 2 uses
  %.reass243 = fmul reassoc nsz arcp contract afn float %i.jz, %factor.op.fmul242
  %.reass241 = fmul reassoc nsz arcp contract afn float %i.kb, %factor.op.fmul240
  %i.kc = fadd reassoc nsz arcp contract afn float %.neg220, %.reass243
  %i.kd = fadd reassoc nsz arcp contract afn float %i.kc, %.reass241 ; 2 uses
  %reass.add = fsub reassoc nsz arcp contract afn float %i.fh, %i.kb
  %reass.mul.reass = fmul reassoc nsz arcp contract afn float %reass.add, %factor.op.fmul242
  %reass.add223 = fsub reassoc nsz arcp contract afn float %i.jz, %i.fe
  %reass.mul224.reass = fmul reassoc nsz arcp contract afn float %reass.add223, %factor.op.fmul240
  %i.ke = fadd reassoc nsz arcp contract afn float %reass.mul224.reass, %reass.mul.reass
  %i.kf = fmul reassoc nsz arcp contract afn float %i.kd, %i.kd
  %i.kg = fmul reassoc nsz arcp contract afn float %i.kf, %i.fm
  %i.kh = fsub reassoc nsz arcp contract afn float %i.ke, %i.kg ; 3 uses
  %i.ki = fcmp reassoc nsz arcp contract afn ugt float %i.kh, %i.iz
  br i1 %i.ki, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.kj = fcmp reassoc nsz arcp contract afn ult float %i.kh, %i.fp
  br i1 %i.kj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.kk = fmul reassoc nsz arcp contract afn float %i.kh, %i.ey ; 3 uses
  %i.kl = fptosi float %i.kk to i32               ; 2 uses
  %i.km = fadd reassoc nsz arcp contract afn float %i.kk, 1.000000e+00
  %i.kn = fptosi float %i.km to i32
  %i.ko = sitofp reassoc nsz arcp contract afn i32 %i.kl to float
  %i.kp = fsub reassoc nsz arcp contract afn float %i.kk, %i.ko
  %i.kq = sext i32 %i.kn to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.kq
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !29
  %i.kt = sext i32 %i.kl to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.kt
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !29 ; 2 uses
  %i.kw = fsub reassoc nsz arcp contract afn float %i.ks, %i.kv
  %i.kx = fmul reassoc nsz arcp contract afn float %i.kw, %i.kp
  %i.ky = fadd reassoc nsz arcp contract afn float %i.kx, %i.kv
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.kz = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.m ], [ %i.ky, %bb.o ], [ 1.000000e+00, %bb.n ]
  store float %i.kz, ptr %i.jy, align 8, !tbaa !29
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond296.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count295
  br i1 %exitcond296.not, label %._crit_edge253, label %bb.m

bb.q:                                             ; preds = %._crit_edge259.split
  call void @free(ptr noundef nonnull %i.bu) #12
  br label %bb.t

._crit_edge269.split:                             ; preds = %._crit_edge263, %.preheader
  call void @free(ptr noundef nonnull %i.bu) #12
  %i.la = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %i.lb = and i32 %i.la, 4112
  %or.cond212.not = icmp eq i32 %i.lb, 4112
  br i1 %or.cond212.not, label %bb.s, label %bb.t

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %._crit_edge263
  %indvars.iv308 = phi i64 [ 0, %.lr.ph262.preheader ], [ %indvars.iv.next309, %._crit_edge263 ] ; 3 uses
  %i.lc = trunc nuw nsw i64 %indvars.iv308 to i32 ; 2 uses
  %i.ld = and i32 %i.lc, 7                        ; 2 uses
  %i.le = lshr i32 %i.lc, 3
  %i.lf = sub nuw nsw i32 8, %i.ld
  %i.lg = mul nuw nsw i32 %i.le, %i.bo
  %i.lh = uitofp nneg i32 %i.lf to float
  %i.li = uitofp nneg i32 %i.ld to float
  %factor.op.fmul264 = fmul reassoc nnan nsz arcp contract afn float %i.lh, 1.562500e-02
  %factor.op.fmul266 = fmul reassoc nnan nsz arcp contract afn float %i.li, 1.562500e-02
  %i.lj = mul nuw nsw i64 %indvars.iv308, %i.jw
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.lj
  br label %bb.r

._crit_edge263:                                   ; preds = %bb.r
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count311
  br i1 %exitcond312.not, label %._crit_edge269.split, label %.lr.ph262

bb.r:                                             ; preds = %.lr.ph262, %bb.r
  %indvars.iv303 = phi i64 [ 0, %.lr.ph262 ], [ %indvars.iv.next304, %bb.r ] ; 3 uses
  %i.lk = trunc nuw nsw i64 %indvars.iv303 to i32 ; 2 uses
  %i.ll = and i32 %i.lk, 7                        ; 2 uses
  %i.lm = lshr i32 %i.lk, 3
  %i.ln = sub nuw nsw i32 8, %i.ll
  %i.lo = add nuw nsw i32 %i.lm, %i.lg
  %i.lp = zext nneg i32 %i.lo to i64              ; 2 uses
  %.idx = shl nuw nsw i64 %i.lp, 3
  %i.lq = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx ; 2 uses
  %i.lr = load float, ptr %i.lq, align 8, !tbaa !29
  %i.ls = uitofp nneg i32 %i.ln to float          ; 2 uses
  %i.lt = fmul reassoc nsz arcp contract afn float %i.lr, %i.ls
  %i.lu = getelementptr i8, ptr %i.lq, i64 8
  %i.lv = load float, ptr %i.lu, align 8, !tbaa !29
  %i.lw = uitofp nneg i32 %i.ll to float          ; 2 uses
  %i.lx = fmul reassoc nsz arcp contract afn float %i.lv, %i.lw
  %i.ly = fadd reassoc nsz arcp contract afn float %i.lx, %i.lt
  %.reass265 = fmul reassoc nsz arcp contract afn float %i.ly, %factor.op.fmul264
  %i.lz = add nuw nsw i64 %i.lp, %i.bq
  %.idx206 = shl nuw nsw i64 %i.lz, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx206 ; 2 uses
  %i.mb = load float, ptr %i.ma, align 8, !tbaa !29
  %i.mc = fmul reassoc nsz arcp contract afn float %i.mb, %i.ls
  %i.md = getelementptr i8, ptr %i.ma, i64 8
  %i.me = load float, ptr %i.md, align 8, !tbaa !29
  %i.mf = fmul reassoc nsz arcp contract afn float %i.me, %i.lw
  %reass.add225 = fadd reassoc nsz arcp contract afn float %i.mf, %i.mc
  %reass.mul226.reass = fmul reassoc nsz arcp contract afn float %reass.add225, %factor.op.fmul266
  %i.mg = fadd reassoc nsz arcp contract afn float %reass.mul226.reass, %.reass265
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv303
  store float %i.mg, ptr %gep, align 4, !tbaa !29
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %i.jw
  br i1 %exitcond307.not, label %._crit_edge263, label %bb.r

bb.s:                                             ; preds = %._crit_edge269.split
  %i.mh = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.mi = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #12 ; 0 uses
  %i.mj = load i64, ptr %8, align 8, !tbaa !85
  %i.mk = add nsw i64 %i.mj, -1290608000
  %i.ml = sitofp reassoc nsz arcp contract afn i64 %i.mk to double
  %i.mm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !87
  %i.mo = sitofp reassoc nsz arcp contract afn i64 %i.mn to double
  %i.mp = fmul reassoc nnan nsz arcp contract afn double %i.mo, f0x3EB0C6F7A0B5ED8D
  %i.mq = fadd reassoc nsz arcp contract afn double %i.mp, %i.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.mr = fsub reassoc nsz arcp contract afn double %i.mq, %.2
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.18, ptr noundef nonnull %i.mh, double noundef %i.mr) #12
  br label %bb.t

bb.t:                                             ; preds = %_gradient_get_area.exit.thread, %bb.h, %bb.e, %bb.q, %bb.s, %._crit_edge269.split, %bb.l
  %.3 = phi i32 [ 0, %_gradient_get_area.exit.thread ], [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.l ], [ 0, %bb.q ], [ 1, %bb.s ], [ 1, %._crit_edge269.split ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_get_mask_roi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #12 ; 0 uses
  %i.c = load i64, ptr %8, align 8, !tbaa !85
  %i.d = add nsw i64 %i.c, -1290608000
  %i.e = sitofp reassoc nsz arcp contract afn i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !87
  %i.h = sitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %i.k = phi reassoc nsz arcp contract afn double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !21
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !136  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !137  ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !138    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !139
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !140 ; 2 uses
  %i.w = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.v ; 4 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, f0x40555556
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, f0x3F2AAAAB ; 3 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt float %i.y, 4.000000e+00
  br i1 %i.z, label %bb.e, label %bb.c

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.y, 1.000000e+00
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = fptosi float %i.y to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %dt_get_debug_wtime.exit
  %i.ac = phi i32 [ 4, %dt_get_debug_wtime.exit ], [ %i.ab, %bb.d ], [ 1, %bb.c ] ; 16 uses
  %i.ad = add i32 %i.o, -1
  %i.ae = add i32 %i.ad, %i.ac
  %i.af = sdiv i32 %i.ae, %i.ac                   ; 6 uses
  %i.ag = add nsw i32 %i.af, 1                    ; 2 uses
  %i.ah = add i32 %i.q, -1
  %i.ai = add i32 %i.ah, %i.ac
  %i.aj = sdiv i32 %i.ai, %i.ac                   ; 4 uses
  %i.ak = add i32 %i.aj, 1                        ; 2 uses
  %i.al = sext i32 %i.ag to i64                   ; 6 uses
  %i.am = sext i32 %i.ak to i64                   ; 2 uses
  %i.an = shl nsw i64 %i.al, 3
  %i.ao = mul i64 %i.an, %i.am
  %i.ap = tail call ptr @dt_alloc_aligned(i64 noundef %i.ao) #12 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ap, i64 64) ]
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.s, label %.preheader225

.preheader225:                                    ; preds = %bb.e
  %i.ar = or i32 %i.aj, %i.af
  %or.cond.not263 = icmp sgt i32 %i.ar, -1
  br i1 %or.cond.not263, label %.preheader224.preheader, label %._crit_edge230.split

.preheader224.preheader:                          ; preds = %.preheader225
  %smax = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %9 = add nuw i32 %smax, 1
  %smax269 = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %10 = add nuw i32 %smax269, 1
  %wide.trip.count270 = zext i32 %10 to i64
  %wide.trip.count = zext i32 %9 to i64           ; 6 uses
  %min.iters.check = icmp slt i32 %i.af, 3
  %min.iters.check314 = icmp slt i32 %i.af, 31
  %i.as = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  %broadcast.splatinsert315 = insertelement <8 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat316 = shufflevector <8 x i32> %broadcast.splatinsert315, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert317.a = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat318 = shufflevector <8 x i32> %broadcast.splatinsert317.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert319.a = insertelement <8 x float> poison, float %i.w, i64 0
  %broadcast.splat320.a = shufflevector <8 x float> %broadcast.splatinsert319.a, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  %n.vec324 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %broadcast.splatinsert327 = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat328 = shufflevector <4 x i32> %broadcast.splatinsert327, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert329 = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat330 = shufflevector <4 x i32> %broadcast.splatinsert329, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert331 = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat332 = shufflevector <4 x float> %broadcast.splatinsert331, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n340 = icmp eq i64 %n.vec324, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader224.preheader, %._crit_edge
  %indvars.iv266 = phi i64 [ 0, %.preheader224.preheader ], [ %indvars.iv.next267, %._crit_edge ] ; 3 uses
  %i.at = mul nsw i64 %indvars.iv266, %i.al       ; 6 uses
  %i.au = trunc i64 %indvars.iv266 to i32
  %i.av = mul i32 %i.ac, %i.au
  %i.aw = add i32 %i.av, %i.t
  %i.ax = sitofp reassoc nsz arcp contract afn i32 %i.aw to float
  %i.ay = fmul reassoc nsz arcp contract afn float %i.w, %i.ax ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check314, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ay, i64 0 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.az = or disjoint i64 %index, 8
  %i.ba = or disjoint i64 %index, 16
  %i.bb = or disjoint i64 %index, 24
  %i.bc = add nsw i64 %i.at, %index
  %i.bd = add nsw i64 %i.at, %i.az
  %i.be = add nsw i64 %i.at, %i.ba
  %i.bf = add nsw i64 %i.at, %i.bb
  %i.bg = mul <8 x i32> %broadcast.splat316, %vec.ind
  %i.bh = mul <8 x i32> %broadcast.splat316, %step.add
  %i.bi = mul <8 x i32> %broadcast.splat316, %step.add.2
  %i.bj = mul <8 x i32> %broadcast.splat316, %step.add.3
  %i.bk = add <8 x i32> %i.bg, %broadcast.splat318
  %i.bl = add <8 x i32> %i.bh, %broadcast.splat318
  %i.bm = add <8 x i32> %i.bi, %broadcast.splat318
  %i.bn = add <8 x i32> %i.bj, %broadcast.splat318
  %i.bo = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bk to <8 x float>
  %i.bp = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bl to <8 x float>
  %i.bq = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bm to <8 x float>
  %i.br = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bn to <8 x float>
  %i.bs = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat320.a, %i.bo
  %i.bt = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat320.a, %i.bp
  %i.bu = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat320.a, %i.bq
  %i.bv = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat320.a, %i.br
  %i.bw = shl nsw i64 %i.bc, 3
  %i.bx = shl nsw i64 %i.bd, 3
  %i.by = shl nsw i64 %i.be, 3
  %i.bz = shl nsw i64 %i.bf, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bz
  %interleaved.vec = shufflevector <8 x float> %i.bs, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec, ptr %i.ca, align 8, !tbaa !29
  %interleaved.vec321 = shufflevector <8 x float> %i.bt, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec321, ptr %i.cb, align 8, !tbaa !29
  %interleaved.vec322 = shufflevector <8 x float> %i.bu, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec322, ptr %i.cc, align 8, !tbaa !29
  %interleaved.vec323 = shufflevector <8 x float> %i.bv, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec323, ptr %i.cd, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !114

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert325.a = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.cf = trunc nuw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert333 = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat334 = shufflevector <4 x i32> %broadcast.splatinsert333, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat334, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index335 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next338, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind336 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next339, %vec.epilog.vector.body ] ; 2 uses
  %i.cg = add nsw i64 %i.at, %index335
  %i.ch = mul <4 x i32> %broadcast.splat328, %vec.ind336
  %i.ci = add <4 x i32> %i.ch, %broadcast.splat330
  %i.cj = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ci to <4 x float>
  %i.ck = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat332, %i.cj
  %i.cl = shl nsw i64 %i.cg, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cl
  %interleaved.vec337 = shufflevector <4 x float> %i.ck, <4 x float> %broadcast.splatinsert325.a, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec337, ptr %i.cm, align 8, !tbaa !29
  %index.next338 = add nuw i64 %index335, 4       ; 2 uses
  %vec.ind.next339 = add <4 x i32> %vec.ind336, splat (i32 4)
  %i.cn = icmp eq i64 %index.next338, %n.vec324
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !142

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n340, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec324, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge230.split:                             ; preds = %._crit_edge, %.preheader225
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %i.cp = and i32 %i.co, 4112
  %or.cond.not = icmp eq i32 %i.cp, 4112
  br i1 %or.cond.not, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count270
  br i1 %exitcond271.not, label %._crit_edge230.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cq = add nsw i64 %i.at, %indvars.iv
  %i.cr = trunc i64 %indvars.iv to i32
  %i.cs = mul i32 %i.ac, %i.cr
  %i.ct = add i32 %i.cs, %i.r
  %i.cu = sitofp reassoc nsz arcp contract afn i32 %i.ct to float
  %i.cv = fmul reassoc nsz arcp contract afn float %i.w, %i.cu
  %.idx213 = shl nsw i64 %i.cq, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx213 ; 2 uses
  store float %i.cv, ptr %i.cw, align 8, !tbaa !29
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store float %i.ay, ptr %i.cx, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !143

bb.f:                                             ; preds = %._crit_edge230.split
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.cz = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #12 ; 0 uses
  %i.da = load i64, ptr %7, align 8, !tbaa !85
  %i.db = add nsw i64 %i.da, -1290608000
  %i.dc = sitofp reassoc nsz arcp contract afn i64 %i.db to double
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !87
  %i.df = sitofp reassoc nsz arcp contract afn i64 %i.de to double
  %i.dg = fmul reassoc nnan nsz arcp contract afn double %i.df, f0x3EB0C6F7A0B5ED8D
  %i.dh = fadd reassoc nsz arcp contract afn double %i.dg, %i.dc ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.di = fsub reassoc nsz arcp contract afn double %i.dh, %i.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.cy, double noundef %i.di) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge230.split
  %.0 = phi nsz double [ %i.k, %._crit_edge230.split ], [ %i.dh, %bb.f ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !101
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !88
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.do = load i32, ptr %i.dn, align 16, !tbaa !110
  %i.dp = sitofp reassoc nsz arcp contract afn i32 %i.do to double
  %i.dq = mul nsw i64 %i.am, %i.al
  %i.dr = tail call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.dk, ptr noundef %i.dm, double noundef %i.dp, i32 noundef 3, ptr noundef nonnull %i.ap, i64 noundef %i.dq) #12
  %.not197 = icmp eq i32 %i.dr, 0
  br i1 %.not197, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.ap) #12
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %i.dt = and i32 %i.ds, 4112
  %or.cond208.not = icmp eq i32 %i.dt, 4112
  br i1 %or.cond208.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.dv = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #12 ; 0 uses
  %i.dw = load i64, ptr %6, align 8, !tbaa !85
  %i.dx = add nsw i64 %i.dw, -1290608000
  %i.dy = sitofp reassoc nsz arcp contract afn i64 %i.dx to double
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !87
  %i.eb = sitofp reassoc nsz arcp contract afn i64 %i.ea to double
  %i.ec = fmul reassoc nnan nsz arcp contract afn double %i.eb, f0x3EB0C6F7A0B5ED8D
  %i.ed = fadd reassoc nsz arcp contract afn double %i.ec, %i.dy ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.ee = fsub reassoc nsz arcp contract afn double %i.ed, %.0
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.du, double noundef %i.ee) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1212 = phi nsz double [ %.0, %bb.i ], [ %i.ed, %bb.j ]
  %i.ef = load ptr, ptr %i.dl, align 8, !tbaa !88 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 144
  %i.eh = load i32, ptr %i.eg, align 16, !tbaa !117
  %i.ei = sitofp reassoc nsz arcp contract afn i32 %i.eh to float ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 148
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !130
  %i.el = sitofp reassoc nsz arcp contract afn i32 %i.ek to float ; 2 uses
  %i.em = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ei, float noundef %i.el) #14 ; 3 uses
  %i.en = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.em ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !31
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ep, f0xBC8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.eq) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.er = load float, ptr %i.m, align 4, !tbaa !29
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, %i.ei ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.eu = load float, ptr %i.et, align 4, !tbaa !29
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, %i.el ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !30
  %i.ey = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ex, float 1.000000e-03) ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !26
  %i.fb = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !131
  %i.fd = fmul reassoc nnan nsz arcp contract afn float %i.ey, 4.000000e+00 ; 2 uses
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, %i.em
  %i.ff = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.fe)
  %i.fg = fptosi float %i.ff to i32               ; 9 uses
  %i.fh = shl nsw i32 %i.fg, 1
  %i.fi = add nsw i32 %i.fh, 2                    ; 5 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = shl nsw i64 %i.fj, 2
  %i.fl = tail call ptr @dt_alloc_aligned(i64 noundef %i.fk) #12 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fl, i64 64) ]
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.l, label %.preheader223

.preheader223:                                    ; preds = %bb.k
  %i.fn = icmp sgt i32 %i.fg, -1
  br i1 %i.fn, label %.lr.ph, label %.preheader223.._crit_edge232_crit_edge

.preheader223.._crit_edge232_crit_edge:           ; preds = %.preheader223
  %.pre = sext i32 %i.fg to i64
  br label %._crit_edge232

.lr.ph:                                           ; preds = %.preheader223
  %i.fo = icmp eq i32 %i.fc, 1
  br i1 %i.fo, label %iter.check363, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.fp = zext nneg i32 %i.fg to i64
  %wide.trip.count276.a = zext nneg i32 %i.fi to i64
  %i.fq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ey
  br label %.lr.ph.split

iter.check363:                                    ; preds = %.lr.ph
  %i.fr = fmul reassoc nsz arcp contract afn float %i.en, 5.000000e-01 ; 3 uses
  %i.fs = zext nneg i32 %i.fg to i64              ; 3 uses
  %wide.trip.count282 = zext nneg i32 %i.fi to i64 ; 6 uses
  %min.iters.check341 = icmp ult i32 %i.fi, 4
  br i1 %min.iters.check341, label %vec.epilog.scalar.ph364.preheader, label %vector.main.loop.iter.check342

vector.main.loop.iter.check342:                   ; preds = %iter.check363
  %min.iters.check343 = icmp ult i32 %i.fi, 32
  br i1 %min.iters.check343, label %vec.epilog.ph367, label %vector.ph344

vector.ph344:                                     ; preds = %vector.main.loop.iter.check342
  %i.ft = and i64 %wide.trip.count282, 28
  %n.vec345 = and i64 %wide.trip.count282, 2147483616 ; 4 uses
  %broadcast.splatinsert346 = insertelement <8 x float> poison, float %i.fr, i64 0
  %broadcast.splat347 = shufflevector <8 x float> %broadcast.splatinsert346, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert348 = insertelement <8 x i32> poison, i32 %i.fg, i64 0
  %broadcast.splat349 = shufflevector <8 x i32> %broadcast.splatinsert348, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert350 = insertelement <8 x float> poison, float %i.ey, i64 0
  %broadcast.splat351 = shufflevector <8 x float> %broadcast.splatinsert350, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = sub <8 x i32> splat (i32 8), %broadcast.splat349
  %invariant.op387 = sub <8 x i32> splat (i32 16), %broadcast.splat349
  %invariant.op389 = sub <8 x i32> splat (i32 24), %broadcast.splat349
  %i.fu = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat351
  %i.fv = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat351
  %i.fw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat351
  %i.fx = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat351
  br label %vector.body352

vector.body352:                                   ; preds = %vector.body352, %vector.ph344
  %index353 = phi i64 [ 0, %vector.ph344 ], [ %index.next358, %vector.body352 ] ; 2 uses
  %vec.ind354 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph344 ], [ %vec.ind.next359, %vector.body352 ] ; 5 uses
  %i.fy = sub <8 x i32> %vec.ind354, %broadcast.splat349
  %.reass = add <8 x i32> %vec.ind354, %invariant.op
  %.reass388 = add <8 x i32> %vec.ind354, %invariant.op387
  %.reass390 = add <8 x i32> %vec.ind354, %invariant.op389
  %i.fz = sitofp reassoc nsz arcp contract afn <8 x i32> %i.fy to <8 x float>
  %i.ga = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass to <8 x float>
  %i.gb = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass388 to <8 x float>
  %i.gc = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass390 to <8 x float>
  %i.gd = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat347, %i.fz
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat347, %i.ga
  %i.gf = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat347, %i.gb
  %i.gg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat347, %i.gc
  %i.gh = fmul reassoc nsz arcp contract afn <8 x float> %i.gd, %i.fu
  %i.gi = fmul reassoc nsz arcp contract afn <8 x float> %i.ge, %i.fv
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %i.gf, %i.fw
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %i.gg, %i.fx
  %i.gl = fadd reassoc nsz arcp contract afn <8 x float> %i.gh, splat (float 5.000000e-01) ; 3 uses
  %i.gm = fadd reassoc nsz arcp contract afn <8 x float> %i.gi, splat (float 5.000000e-01) ; 3 uses
  %i.gn = fadd reassoc nsz arcp contract afn <8 x float> %i.gj, splat (float 5.000000e-01) ; 3 uses
  %i.go = fadd reassoc nsz arcp contract afn <8 x float> %i.gk, splat (float 5.000000e-01) ; 3 uses
  %i.gp = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gl, zeroinitializer
  %i.gq = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gm, zeroinitializer
  %i.gr = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gn, zeroinitializer
  %i.gs = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.go, zeroinitializer
  %i.gt = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gl, splat (float 1.000000e+00)
  %i.gu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gm, splat (float 1.000000e+00)
  %i.gv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gn, splat (float 1.000000e+00)
  %i.gw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.go, splat (float 1.000000e+00)
  %i.gx = select reassoc nsz arcp contract afn <8 x i1> %i.gt, <8 x float> splat (float 1.000000e+00), <8 x float> %i.gl
  %i.gy = select reassoc nsz arcp contract afn <8 x i1> %i.gu, <8 x float> splat (float 1.000000e+00), <8 x float> %i.gm
  %i.gz = select reassoc nsz arcp contract afn <8 x i1> %i.gv, <8 x float> splat (float 1.000000e+00), <8 x float> %i.gn
  %i.ha = select reassoc nsz arcp contract afn <8 x i1> %i.gw, <8 x float> splat (float 1.000000e+00), <8 x float> %i.go
  %i.hb = select reassoc nsz arcp contract afn <8 x i1> %i.gp, <8 x float> zeroinitializer, <8 x float> %i.gx
  %i.hc = select reassoc nsz arcp contract afn <8 x i1> %i.gq, <8 x float> zeroinitializer, <8 x float> %i.gy
  %i.hd = select reassoc nsz arcp contract afn <8 x i1> %i.gr, <8 x float> zeroinitializer, <8 x float> %i.gz
  %i.he = select reassoc nsz arcp contract afn <8 x i1> %i.gs, <8 x float> zeroinitializer, <8 x float> %i.ha
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %index353 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 96
  store <8 x float> %i.hb, ptr %i.hf, align 64, !tbaa !29
  store <8 x float> %i.hc, ptr %i.hg, align 32, !tbaa !29
  store <8 x float> %i.hd, ptr %i.hh, align 64, !tbaa !29
  store <8 x float> %i.he, ptr %i.hi, align 32, !tbaa !29
  %index.next358 = add nuw i64 %index353, 32      ; 2 uses
  %vec.ind.next359 = add <8 x i32> %vec.ind354, splat (i32 32)
  %i.hj = icmp eq i64 %index.next358, %n.vec345
  br i1 %i.hj, label %middle.block360, label %vector.body352, !llvm.loop !144

middle.block360:                                  ; preds = %vector.body352
  %cmp.n361 = icmp eq i64 %n.vec345, %wide.trip.count282
  br i1 %cmp.n361, label %._crit_edge232, label %vec.epilog.iter.check365

vec.epilog.iter.check365:                         ; preds = %middle.block360
  %min.epilog.iters.check366 = icmp eq i64 %i.ft, 0
  br i1 %min.epilog.iters.check366, label %vec.epilog.scalar.ph364.preheader, label %vec.epilog.ph367, !prof !114

vec.epilog.ph367:                                 ; preds = %vector.main.loop.iter.check342, %vec.epilog.iter.check365
  %vec.epilog.resume.val362 = phi i64 [ %n.vec345, %vec.epilog.iter.check365 ], [ 0, %vector.main.loop.iter.check342 ] ; 2 uses
  %n.vec368 = and i64 %wide.trip.count282, 2147483644 ; 3 uses
  %broadcast.splatinsert369 = insertelement <4 x float> poison, float %i.fr, i64 0
  %broadcast.splat370 = shufflevector <4 x float> %broadcast.splatinsert369, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert371 = insertelement <4 x i32> poison, i32 %i.fg, i64 0
  %broadcast.splat372 = shufflevector <4 x i32> %broadcast.splatinsert371, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert373 = insertelement <4 x float> poison, float %i.ey, i64 0
  %broadcast.splat374 = shufflevector <4 x float> %broadcast.splatinsert373, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hk = trunc nuw nsw i64 %vec.epilog.resume.val362 to i32
  %broadcast.splatinsert375 = insertelement <4 x i32> poison, i32 %i.hk, i64 0
  %broadcast.splat376 = shufflevector <4 x i32> %broadcast.splatinsert375, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction377 = or disjoint <4 x i32> %broadcast.splat376, <i32 0, i32 1, i32 2, i32 3>
  %i.hl = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat374
  br label %vec.epilog.vector.body378

vec.epilog.vector.body378:                        ; preds = %vec.epilog.vector.body378, %vec.epilog.ph367
  %index379 = phi i64 [ %vec.epilog.resume.val362, %vec.epilog.ph367 ], [ %index.next381, %vec.epilog.vector.body378 ] ; 2 uses
  %vec.ind380 = phi <4 x i32> [ %induction377, %vec.epilog.ph367 ], [ %vec.ind.next382, %vec.epilog.vector.body378 ] ; 2 uses
  %i.hm = sub <4 x i32> %vec.ind380, %broadcast.splat372
  %i.hn = sitofp reassoc nsz arcp contract afn <4 x i32> %i.hm to <4 x float>
  %i.ho = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat370, %i.hn
  %i.hp = fmul reassoc nsz arcp contract afn <4 x float> %i.ho, %i.hl
  %i.hq = fadd reassoc nsz arcp contract afn <4 x float> %i.hp, splat (float 5.000000e-01) ; 3 uses
  %i.hr = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.hq, zeroinitializer
  %i.hs = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.hq, splat (float 1.000000e+00)
  %i.ht = select reassoc nsz arcp contract afn <4 x i1> %i.hs, <4 x float> splat (float 1.000000e+00), <4 x float> %i.hq
  %i.hu = select reassoc nsz arcp contract afn <4 x i1> %i.hr, <4 x float> zeroinitializer, <4 x float> %i.ht
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %index379
  store <4 x float> %i.hu, ptr %i.hv, align 16, !tbaa !29
  %index.next381 = add nuw i64 %index379, 4       ; 2 uses
  %vec.ind.next382 = add <4 x i32> %vec.ind380, splat (i32 4)
  %i.hw = icmp eq i64 %index.next381, %n.vec368
  br i1 %i.hw, label %vec.epilog.middle.block383, label %vec.epilog.vector.body378, !llvm.loop !145

vec.epilog.middle.block383:                       ; preds = %vec.epilog.vector.body378
  %cmp.n384 = icmp eq i64 %n.vec368, %wide.trip.count282
  br i1 %cmp.n384, label %._crit_edge232, label %vec.epilog.scalar.ph364.preheader

vec.epilog.scalar.ph364.preheader:                ; preds = %iter.check363, %vec.epilog.iter.check365, %vec.epilog.middle.block383
  %indvars.iv278.ph = phi i64 [ 0, %iter.check363 ], [ %n.vec345, %vec.epilog.iter.check365 ], [ %n.vec368, %vec.epilog.middle.block383 ]
  %i.hx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ey
  br label %vec.epilog.scalar.ph364

vec.epilog.scalar.ph364:                          ; preds = %vec.epilog.scalar.ph364.preheader, %vec.epilog.scalar.ph364
  %indvars.iv278.a = phi i64 [ %indvars.iv.next279.a, %vec.epilog.scalar.ph364 ], [ %indvars.iv278.ph, %vec.epilog.scalar.ph364.preheader ] ; 3 uses
  %i.hy = trunc i64 %indvars.iv278.a to i32
  %i.hz = sub i32 %i.hy, %i.fg
  %i.ia = sitofp reassoc nsz arcp contract afn i32 %i.hz to float
  %i.ib = fmul reassoc nsz arcp contract afn float %i.fr, %i.ia
  %i.ic = fmul reassoc nsz arcp contract afn float %i.ib, %i.hx
  %i.id = fadd reassoc nsz arcp contract afn float %i.ic, 5.000000e-01 ; 3 uses
  %i.ie = fcmp reassoc nsz arcp contract afn olt float %i.id, 0.000000e+00
  %i.if = fcmp reassoc nsz arcp contract afn ogt float %i.id, 1.000000e+00
  %i.ig = select reassoc nsz arcp contract afn i1 %i.if, float 1.000000e+00, float %i.id
  %i.ih = select reassoc nsz arcp contract afn i1 %i.ie, float 0.000000e+00, float %i.ig
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv278.a
  store float %i.ih, ptr %i.ii, align 4, !tbaa !29
  %indvars.iv.next279.a = add nuw nsw i64 %indvars.iv278.a, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next279.a, %wide.trip.count282
  br i1 %exitcond283.not, label %._crit_edge232, label %vec.epilog.scalar.ph364, !llvm.loop !146

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.ap) #12
  br label %bb.s

._crit_edge232:                                   ; preds = %.lr.ph.split, %vec.epilog.scalar.ph364, %middle.block360, %vec.epilog.middle.block383, %.preheader223.._crit_edge232_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader223.._crit_edge232_crit_edge ], [ %i.fs, %middle.block360 ], [ %i.fs, %vec.epilog.scalar.ph364 ], [ %i.fs, %vec.epilog.middle.block383 ], [ %i.fp, %.lr.ph.split ]
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %.pre-phi ; 2 uses
  %.not200252 = icmp slt i32 %i.aj, 0
  br i1 %.not200252, label %._crit_edge254.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge232
  %i.ik = fneg reassoc nsz arcp contract afn float %sin
  %factor.op.fmul250 = fmul reassoc nsz arcp contract afn float %i.ev, %i.ik
  %factor.op.fmul235 = fmul reassoc nsz arcp contract afn float %sin, %i.en ; 2 uses
  %factor.op.fmul237 = fmul reassoc nsz arcp contract afn float %cos, %i.en ; 2 uses
  %.not206245 = icmp slt i32 %i.af, 0
  %i.il = fmul reassoc nsz arcp contract afn float %cos, %i.es
  %i.im = fsub reassoc nsz arcp contract afn float %factor.op.fmul250, %i.il
  %.neg216 = fmul reassoc nsz arcp contract afn float %i.im, %i.en
  %i.in = fmul reassoc nnan nsz arcp contract afn float %i.ey, -4.000000e+00
  br i1 %.not206245, label %._crit_edge254.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count292.a = zext i32 %i.ak to i64
  %wide.trip.count287.a = zext nneg i32 %i.ag to i64
  br label %.preheader

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv272 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next273, %.lr.ph.split ] ; 3 uses
  %i.io = trunc i64 %indvars.iv272 to i32
  %i.ip = sub i32 %i.io, %i.fg
  %i.iq = sitofp reassoc nsz arcp contract afn i32 %i.ip to float
  %i.ir = fmul reassoc nsz arcp contract afn float %i.en, %i.iq
  %i.is = fmul reassoc nsz arcp contract afn float %i.ir, %i.fq
  %i.it = tail call reassoc nsz arcp contract afn float @erff(float noundef %i.is) #14
  %i.iu = fmul reassoc nsz arcp contract afn float %i.it, 5.000000e-01
  %i.iv = fadd reassoc nsz arcp contract afn float %i.iu, 5.000000e-01 ; 3 uses
  %i.iw = fcmp reassoc nsz arcp contract afn olt float %i.iv, 0.000000e+00
  %i.ix = fcmp reassoc nsz arcp contract afn ogt float %i.iv, 1.000000e+00
  %i.iy = select reassoc nsz arcp contract afn i1 %i.ix, float 1.000000e+00, float %i.iv
  %i.iz = select reassoc nsz arcp contract afn i1 %i.iw, float 0.000000e+00, float %i.iy
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv272
  store float %i.iz, ptr %i.ja, align 4, !tbaa !29
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count276.a
  br i1 %exitcond277.not, label %._crit_edge232, label %.lr.ph.split

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge248
  %indvars.iv289.a = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next290.a, %._crit_edge248 ] ; 2 uses
  %i.jb = mul nuw nsw i64 %indvars.iv289.a, %i.al
  br label %bb.m

._crit_edge254.split:                             ; preds = %._crit_edge248, %.preheader.lr.ph, %._crit_edge232
  tail call void @free(ptr noundef %i.fl) #12
  %i.jc = icmp sgt i32 %i.q, 0
  br i1 %i.jc, label %.lr.ph261, label %._crit_edge262.split

.lr.ph261:                                        ; preds = %._crit_edge254.split
  %i.jd = icmp sgt i32 %i.o, 0
  %i.je = sext i32 %i.o to i64
  br i1 %i.jd, label %.lr.ph257.preheader, label %._crit_edge262.split

.lr.ph257.preheader:                              ; preds = %.lr.ph261
  %i.jf = mul nsw i32 %i.ac, %i.ac
  %i.jg = uitofp nneg i32 %i.jf to float
  %wide.trip.count302 = zext nneg i32 %i.q to i64
  %wide.trip.count297 = zext nneg i32 %i.o to i64
  %i.jh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jg
  br label %.lr.ph257

._crit_edge248:                                   ; preds = %bb.p
  %indvars.iv.next290.a = add nuw nsw i64 %indvars.iv289.a, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next290.a, %wide.trip.count292.a
  br i1 %exitcond293.not, label %._crit_edge254.split, label %.preheader

bb.m:                                             ; preds = %.preheader, %bb.p
  %indvars.iv284.a = phi i64 [ 0, %.preheader ], [ %indvars.iv.next285.a, %bb.p ] ; 2 uses
  %i.ji = add nuw nsw i64 %i.jb, %indvars.iv284.a
  %.idx214 = shl nsw i64 %i.ji, 3
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx214 ; 3 uses
  %i.jk = load float, ptr %i.jj, align 8, !tbaa !29 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !29 ; 2 uses
  %.reass238 = fmul reassoc nsz arcp contract afn float %i.jk, %factor.op.fmul237
  %.reass236 = fmul reassoc nsz arcp contract afn float %i.jm, %factor.op.fmul235
  %i.jn = fadd reassoc nsz arcp contract afn float %.neg216, %.reass238
  %i.jo = fadd reassoc nsz arcp contract afn float %i.jn, %.reass236 ; 2 uses
  %reass.add = fsub reassoc nsz arcp contract afn float %i.ev, %i.jm
  %reass.mul.reass = fmul reassoc nsz arcp contract afn float %reass.add, %factor.op.fmul237
  %reass.add219 = fsub reassoc nsz arcp contract afn float %i.jk, %i.es
  %reass.mul220.reass = fmul reassoc nsz arcp contract afn float %reass.add219, %factor.op.fmul235
  %i.jp = fadd reassoc nsz arcp contract afn float %reass.mul220.reass, %reass.mul.reass
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jo, %i.jo
  %i.jr = fmul reassoc nsz arcp contract afn float %i.jq, %i.fa
  %i.js = fsub reassoc nsz arcp contract afn float %i.jp, %i.jr ; 3 uses
  %i.jt = fcmp reassoc nsz arcp contract afn ugt float %i.js, %i.in
  br i1 %i.jt, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ju = fcmp reassoc nsz arcp contract afn ult float %i.js, %i.fd
  br i1 %i.ju, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.jv = fmul reassoc nsz arcp contract afn float %i.js, %i.em ; 3 uses
  %i.jw = fptosi float %i.jv to i32               ; 2 uses
  %i.jx = fadd reassoc nsz arcp contract afn float %i.jv, 1.000000e+00
  %i.jy = fptosi float %i.jx to i32
  %i.jz = sitofp reassoc nsz arcp contract afn i32 %i.jw to float
  %i.ka = fsub reassoc nsz arcp contract afn float %i.jv, %i.jz
  %i.kb = sext i32 %i.jy to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.kb
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !29
  %i.ke = sext i32 %i.jw to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !29 ; 2 uses
  %i.kh = fsub reassoc nsz arcp contract afn float %i.kd, %i.kg
  %i.ki = fmul reassoc nsz arcp contract afn float %i.kh, %i.ka
  %i.kj = fadd reassoc nsz arcp contract afn float %i.ki, %i.kg
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.kk = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.m ], [ %i.kj, %bb.o ], [ 1.000000e+00, %bb.n ]
  store float %i.kk, ptr %i.jj, align 8, !tbaa !29
  %indvars.iv.next285.a = add nuw nsw i64 %indvars.iv284.a, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285.a, %wide.trip.count287.a
  br i1 %exitcond288.not, label %._crit_edge248, label %bb.m

._crit_edge262.split:                             ; preds = %._crit_edge258, %.lr.ph261, %._crit_edge254.split
  tail call void @free(ptr noundef nonnull %i.ap) #12
  %i.kl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !41
  %i.km = and i32 %i.kl, 4112
  %or.cond209.not = icmp eq i32 %i.km, 4112
  br i1 %or.cond209.not, label %bb.r, label %bb.s

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %._crit_edge258
  %indvars.iv299 = phi i64 [ 0, %.lr.ph257.preheader ], [ %indvars.iv.next300, %._crit_edge258 ] ; 3 uses
  %i.kn = trunc nuw nsw i64 %indvars.iv299 to i32 ; 2 uses
  %i.ko = srem i32 %i.kn, %i.ac                   ; 2 uses
  %i.kp = sdiv i32 %i.kn, %i.ac
  %i.kq = sub nsw i32 %i.ac, %i.ko
  %i.kr = sext i32 %i.kp to i64
  %i.ks = mul nsw i64 %i.kr, %i.al
  %i.kt = sitofp reassoc nsz arcp contract afn i32 %i.kq to float
  %i.ku = uitofp nneg i32 %i.ko to float
  %i.kv = mul nuw nsw i64 %indvars.iv299, %i.je
  %i.kw = getelementptr [4 x i8], ptr %4, i64 %i.kv
  br label %bb.q

._crit_edge258:                                   ; preds = %bb.q
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next300, %wide.trip.count302
  br i1 %exitcond303.not, label %._crit_edge262.split, label %.lr.ph257

bb.q:                                             ; preds = %.lr.ph257, %bb.q
  %indvars.iv294 = phi i64 [ 0, %.lr.ph257 ], [ %indvars.iv.next295, %bb.q ] ; 3 uses
  %i.kx = trunc nuw nsw i64 %indvars.iv294 to i32 ; 2 uses
  %i.ky = srem i32 %i.kx, %i.ac                   ; 2 uses
  %i.kz = sdiv i32 %i.kx, %i.ac
  %i.la = sub nsw i32 %i.ac, %i.ky
  %i.lb = sext i32 %i.kz to i64
  %i.lc = add nsw i64 %i.ks, %i.lb                ; 2 uses
  %.idx = shl nsw i64 %i.lc, 3
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx ; 2 uses
  %i.le = load float, ptr %i.ld, align 8, !tbaa !29
  %i.lf = sitofp reassoc nsz arcp contract afn i32 %i.la to float ; 2 uses
  %i.lg = fmul reassoc nsz arcp contract afn float %i.le, %i.lf
  %i.lh = getelementptr i8, ptr %i.ld, i64 8
  %i.li = load float, ptr %i.lh, align 8, !tbaa !29
  %i.lj = uitofp nneg i32 %i.ky to float          ; 2 uses
  %i.lk = fmul reassoc nsz arcp contract afn float %i.li, %i.lj
  %i.ll = fadd reassoc nsz arcp contract afn float %i.lk, %i.lg
  %i.lm = fmul reassoc nsz arcp contract afn float %i.ll, %i.kt
  %i.ln = add nsw i64 %i.lc, %i.al
  %.idx204 = shl i64 %i.ln, 3
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx204 ; 2 uses
  %i.lp = load float, ptr %i.lo, align 8, !tbaa !29
  %i.lq = fmul reassoc nsz arcp contract afn float %i.lp, %i.lf
  %i.lr = getelementptr i8, ptr %i.lo, i64 8
  %i.ls = load float, ptr %i.lr, align 8, !tbaa !29
  %i.lt = fmul reassoc nsz arcp contract afn float %i.ls, %i.lj
  %reass.add221 = fadd reassoc nsz arcp contract afn float %i.lt, %i.lq
  %reass.mul222 = fmul reassoc nsz arcp contract afn float %reass.add221, %i.ku
  %i.lu = fadd reassoc nsz arcp contract afn float %reass.mul222, %i.lm
  %i.lv = fmul reassoc nsz arcp contract afn float %i.lu, %i.jh
  %i.lw = getelementptr [4 x i8], ptr %i.kw, i64 %indvars.iv294
  store float %i.lv, ptr %i.lw, align 4, !tbaa !29
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %._crit_edge258, label %bb.q

bb.r:                                             ; preds = %._crit_edge262.split
  %i.lx = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.ly = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #12 ; 0 uses
  %i.lz = load i64, ptr %5, align 8, !tbaa !85
  %i.ma = add nsw i64 %i.lz, -1290608000
  %i.mb = sitofp reassoc nsz arcp contract afn i64 %i.ma to double
  %i.mc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !87
  %i.me = sitofp reassoc nsz arcp contract afn i64 %i.md to double
  %i.mf = fmul reassoc nnan nsz arcp contract afn double %i.me, f0x3EB0C6F7A0B5ED8D
  %i.mg = fadd reassoc nsz arcp contract afn double %i.mf, %i.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.mh = fsub reassoc nsz arcp contract afn double %i.mg, %.1212
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.18, ptr noundef nonnull %i.lx, double noundef %i.mh) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.r, %._crit_edge262.split, %bb.e, %bb.h
  %.1 = phi i32 [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.l ], [ 1, %bb.r ], [ 1, %._crit_edge262.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_gradient_get_area(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store <2 x float> zeroinitializer, ptr %i.a, align 16, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.h = load <2 x i32>, ptr %i.d, align 16, !tbaa !32
  %i.i = sitofp <2 x i32> %i.h to <2 x float>     ; 3 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  store float %i.j, ptr %i.e, align 8, !tbaa !29
  store <2 x float> %i.i, ptr %i.g, align 16, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float 0.000000e+00, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.m = extractelement <2 x float> %i.i, i64 1
  store float %i.m, ptr %i.l, align 4, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.q = load i32, ptr %i.p, align 16, !tbaa !110
  %i.r = sitofp reassoc nsz arcp contract afn i32 %i.q to double
  %i.s = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.o, ptr noundef %i.c, double noundef %i.r, i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef 4) #12
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.t = load <2 x float>, ptr %i.a, align 16, !tbaa !29 ; 2 uses
  %i.u = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.t, <2 x float> splat (float f0x7F7FFFFF))
  %i.v = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.t, <2 x float> splat (float f0x00800000))
  %i.w = load <2 x float>, ptr %i.e, align 8, !tbaa !29 ; 2 uses
  %i.x = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.w, <2 x float> %i.u)
  %i.y = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.w, <2 x float> %i.v)
  %i.z = load <2 x float>, ptr %i.g, align 16, !tbaa !29 ; 2 uses
  %i.aa = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.z, <2 x float> %i.x) ; 3 uses
  %i.ab = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.z, <2 x float> %i.y)
  %i.ac = extractelement <2 x float> %i.aa, i64 0
  %i.ad = fptosi float %i.ac to i32
  store i32 %i.ad, ptr %5, align 4, !tbaa !32
  %i.ae = extractelement <2 x float> %i.aa, i64 1
  %i.af = fptosi float %i.ae to i32
  store i32 %i.af, ptr %6, align 4, !tbaa !32
  %i.ag = fsub reassoc nsz arcp contract afn <2 x float> %i.ab, %i.aa
  %i.ah = fptosi <2 x float> %i.ag to <2 x i32>   ; 2 uses
  %i.ai = extractelement <2 x i32> %i.ah, i64 0
  store i32 %i.ai, ptr %3, align 4, !tbaa !32
  %i.aj = extractelement <2 x i32> %i.ah, i64 1
  store i32 %i.aj, ptr %4, align 4, !tbaa !32
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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %.not = icmp eq i32 %i.i, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 112
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !147
  %i.j = icmp eq i32 %.pre, 0                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %.thread139, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @dt_control_queue_redraw_center() #12
  br label %bb.ak

bb.d:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %6, align 8, !tbaa !21
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !148 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !149 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load float, ptr %i.p, align 8, !tbaa !166 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, 0.000000e+00
  %i.s = select reassoc nsz arcp contract afn i1 %i.r, float %i.q, float 1.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  %i.u = load i32, ptr %i.t, align 4, !tbaa !167  ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = uitofp nneg i32 %i.u to float
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.y = load i32, ptr %i.x, align 16, !tbaa !168
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to float
  %i.aa = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.z, i64 1
  br label %dt_masks_get_image_size.exit

end_hunk_0
begin_hunk_1_@_gradient_init_values:dt_masks_get_image_size.exit
}

declare void @dt_masks_gui_form_save_creation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_dev_masks_selection_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dt_masks_create(i32 noundef) local_unnamed_addr #1

declare void @cairo_save(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_gradient_draw_lines(i32 noundef range(i32 0, 2) %0, ptr noundef %1, i32 noundef %2, float noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i32 %0, 0                        ; 3 uses
  %i.b = icmp slt i32 %5, 4
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %0, 0
  %i.d = icmp slt i32 %5, 5
  %or.cond3 = and i1 %i.c, %i.d
  br i1 %or.cond3, label %.loopexit, label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.b
  %.idx = select i1 %i.a, i64 0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %i.f = add nsw i32 %5, -3
  %i.g = select i1 %i.a, i32 %5, i32 %i.f         ; 5 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph66, label %.loopexit

.lr.ph66:                                         ; preds = %dt_masks_get_image_size.exit
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !148
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !149
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load i32, ptr %i.l, align 16, !tbaa !117
  %i.n = sitofp reassoc nsz arcp contract afn i32 %i.m to float ; 2 uses
  %i.o = fneg reassoc nsz arcp contract afn float %i.n ; 4 uses
  %i.p = fmul reassoc nnan nsz arcp contract afn float %i.n, 2.000000e+00 ; 4 uses
  %i.q = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph66, %.backedge
  %.065 = phi i32 [ 0, %.lr.ph66 ], [ %.0.be, %.backedge ] ; 4 uses
  %i.r = shl nsw i32 %.065, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !29 ; 4 uses
  %i.v = tail call i1 @llvm.is.fpclass.f32(float %i.u, /* (nan inf zero sub) */ i32 759)
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = add nsw i32 %.065, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %_gradient_is_canonical.exit.thread, %.critedge
  %.0.be = phi i32 [ %.1.lcssa, %.critedge ], [ %i.af, %_gradient_is_canonical.exit.thread ], [ %i.w, %bb.d ] ; 2 uses
  %i.x = icmp slt i32 %.0.be, %i.g
  br i1 %i.x, label %bb.c, label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.t, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !29 ; 4 uses
  %i.aa = tail call i1 @llvm.is.fpclass.f32(float %i.z, /* (nan inf zero sub) */ i32 759)
  %i.ab = fcmp reassoc nsz arcp contract afn ult float %i.u, %i.o
  %or.cond.i = or i1 %i.ab, %i.aa
  %i.ac = fcmp reassoc nsz arcp contract afn ugt float %i.u, %i.p
  %or.cond14.i = or i1 %i.ac, %or.cond.i
  %i.ad = fcmp reassoc nsz arcp contract afn ult float %i.z, %i.o
  %or.cond16.i = or i1 %i.ad, %or.cond14.i
  %i.ae = fcmp reassoc nsz arcp contract afn ugt float %i.z, %i.p
  %or.cond57 = or i1 %i.ae, %or.cond16.i
  br i1 %or.cond57, label %_gradient_is_canonical.exit.thread, label %bb.f

_gradient_is_canonical.exit.thread:               ; preds = %bb.e
  %i.af = add nsw i32 %.065, 1
  br label %.backedge

bb.f:                                             ; preds = %bb.e
  %i.ag = fpext reassoc nsz arcp contract afn float %i.u to double
  %i.ah = fpext reassoc nsz arcp contract afn float %i.z to double
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.ag, double noundef %i.ah) #12
  %.159 = add nsw i32 %.065, 1                    ; 3 uses
  %i.ai = icmp slt i32 %.159, %i.g
  br i1 %i.ai, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.aj = sext i32 %.159 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ %i.aj, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.idx74 = shl nsw i64 %indvars.iv, 3
  %i.ak = getelementptr inbounds i8, ptr %i.e, i64 %.idx74 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !29 ; 4 uses
  %i.am = tail call i1 @llvm.is.fpclass.f32(float %i.al, /* (nan inf zero sub) */ i32 759)
  br i1 %i.am, label %.critedge.loopexit.split.loop.exit77, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.an = getelementptr i8, ptr %i.ak, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !29 ; 4 uses
  %i.ap = tail call i1 @llvm.is.fpclass.f32(float %i.ao, /* (nan inf zero sub) */ i32 759)
  %i.aq = fcmp reassoc nsz arcp contract afn ult float %i.al, %i.o
  %or.cond.i50 = or i1 %i.aq, %i.ap
  %i.ar = fcmp reassoc nsz arcp contract afn ugt float %i.al, %i.p
  %or.cond14.i51 = or i1 %i.ar, %or.cond.i50
  %i.as = fcmp reassoc nsz arcp contract afn ult float %i.ao, %i.o
  %or.cond16.i52 = or i1 %i.as, %or.cond14.i51
  %i.at = fcmp reassoc nsz arcp contract afn ugt float %i.ao, %i.p
  %or.cond58 = or i1 %i.at, %or.cond16.i52
  br i1 %or.cond58, label %.critedge.loopexit.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = fpext reassoc nsz arcp contract afn float %i.al to double
  %i.av = fpext reassoc nsz arcp contract afn float %i.ao to double
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.au, double noundef %i.av) #12
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.critedge.loopexit.split.loop.exit:               ; preds = %bb.g
  %i.aw = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit77:             ; preds = %.lr.ph
  %i.ax = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.critedge.loopexit.split.loop.exit, %.critedge.loopexit.split.loop.exit77, %bb.f
  %.1.lcssa = phi i32 [ %.159, %bb.f ], [ %i.ax, %.critedge.loopexit.split.loop.exit77 ], [ %i.aw, %.critedge.loopexit.split.loop.exit ], [ %i.g, %bb.h ]
  tail call void @dt_masks_line_stroke(ptr noundef %1, i32 noundef %0, i32 noundef 0, i32 noundef %2, float noundef %3) #12
  br label %.backedge

.loopexit:                                        ; preds = %.backedge, %dt_masks_get_image_size.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_gradient_draw_arrow(ptr noundef %0, i32 noundef range(i32 0, 2) %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %4, 3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load float, ptr %3, align 4, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load float, ptr %i.i, align 4, !tbaa !29 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.l = load float, ptr %i.k, align 4, !tbaa !29 ; 2 uses
  tail call void @dt_masks_draw_arrow(ptr noundef %0, float noundef %i.j, float noundef %i.l, float noundef %i.f, float noundef %i.h, float noundef %2, i32 noundef 1) #12
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %1, float noundef %2) #12
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %i.b, float noundef %i.d) #12
  %i.m = fpext reassoc nsz arcp contract afn float %i.j to double
  %i.n = fpext reassoc nsz arcp contract afn float %i.l to double
  %i.o = fdiv reassoc nsz arcp contract afn float 3.000000e+00, %2
  %i.p = fpext reassoc nsz arcp contract afn float %i.o to double
  tail call void @cairo_arc(ptr noundef %0, double noundef %i.m, double noundef %i.n, double noundef %i.p, double noundef 0.000000e+00, double noundef f0x401921FB60000000) #12
  tail call void @cairo_fill_preserve(ptr noundef %0) #12
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %1, float noundef %2) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @cairo_restore(ptr noundef) local_unnamed_addr #1

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @dt_masks_line_stroke(ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #5

declare void @dt_masks_draw_arrow(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_draw_anchor(ptr noundef, i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 172}
!12 = !{!"dt_masks_form_gui_t", !13, i64 0, !15, i64 8, !15, i64 16, !8, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !16, i64 152, !16, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !17, i64 184, !17, i64 192, !8, i64 200, !8, i64 204, !18, i64 208, !14, i64 216, !14, i64 224}
!13 = !{!"p1 _ZTS6_GList", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTS17dt_masks_dynbuf_t", !14, i64 0}
!16 = !{!"float", !9, i64 0}
!17 = !{!"p1 _ZTS15dt_iop_module_t", !14, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = !{!12, !8, i64 60}
!20 = !{!12, !8, i64 72}
!21 = !{!22, !13, i64 0}
!22 = !{!"dt_masks_form_t", !13, i64 0, !8, i64 8, !23, i64 16, !9, i64 24, !9, i64 32, !8, i64 160, !8, i64 164}
!23 = !{!"p1 _ZTS20dt_masks_functions_t", !14, i64 0}
!24 = !{!25, !14, i64 0}
!25 = !{!"_GList", !14, i64 0, !13, i64 8, !13, i64 16}
!26 = !{!27, !16, i64 20}
!27 = !{!"dt_masks_point_gradient_t", !9, i64 0, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !8, i64 24}
!28 = !{!22, !8, i64 8}
!29 = !{!16, !16, i64 0}
!30 = !{!27, !16, i64 12}
!31 = !{!27, !16, i64 8}
!32 = !{!8, !8, i64 0}
!33 = !{!13, !13, i64 0}
!34 = !{!12, !13, i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"dt_masks_form_gui_points_t", !37, i64 0, !8, i64 8, !37, i64 16, !8, i64 24, !37, i64 32, !8, i64 40, !8, i64 44}
!37 = !{!"p1 float", !14, i64 0}
!38 = !{!36, !8, i64 24}
!39 = !{!36, !37, i64 16}
!40 = !{!36, !8, i64 8}
!41 = !{!42, !8, i64 8}
!42 = !{!"darktable_t", !43, i64 0, !8, i64 4, !8, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !44, i64 48, !45, i64 56, !46, i64 64, !47, i64 72, !48, i64 80, !49, i64 88, !50, i64 96, !51, i64 104, !52, i64 112, !53, i64 120, !54, i64 128, !55, i64 136, !56, i64 144, !57, i64 152, !58, i64 160, !59, i64 168, !60, i64 176, !61, i64 184, !62, i64 192, !63, i64 200, !64, i64 208, !65, i64 216, !66, i64 224, !9, i64 232, !67, i64 2792, !67, i64 2832, !67, i64 2872, !67, i64 2912, !67, i64 2952, !67, i64 2992, !68, i64 3032, !68, i64 3040, !68, i64 3048, !68, i64 3056, !68, i64 3064, !68, i64 3072, !68, i64 3080, !68, i64 3088, !68, i64 3096, !68, i64 3104, !68, i64 3112, !68, i64 3120, !68, i64 3128, !69, i64 3136, !13, i64 3288, !76, i64 3296, !13, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !77, i64 3520, !78, i64 3528, !79, i64 3536, !81, i64 3576, !82, i64 3600, !83, i64 3632, !8, i64 3672}
!43 = !{!"dt_codepath_t", !8, i64 0}
!44 = !{!"p1 _ZTS11_JsonParser", !14, i64 0}
!45 = !{!"p1 _ZTS9dt_conf_t", !14, i64 0}
!46 = !{!"p1 _ZTS12dt_develop_t", !14, i64 0}
!47 = !{!"p1 _ZTS8dt_lib_t", !14, i64 0}
!48 = !{!"p1 _ZTS17dt_view_manager_t", !14, i64 0}
!49 = !{!"p1 _ZTS12dt_control_t", !14, i64 0}
!50 = !{!"p1 _ZTS19dt_control_signal_t", !14, i64 0}
!51 = !{!"p1 _ZTS12dt_gui_gtk_t", !14, i64 0}
!52 = !{!"p1 _ZTS17dt_mipmap_cache_t", !14, i64 0}
!53 = !{!"p1 _ZTS16dt_image_cache_t", !14, i64 0}
!54 = !{!"p1 _ZTS12dt_bauhaus_t", !14, i64 0}
!55 = !{!"p1 _ZTS13dt_database_t", !14, i64 0}
!56 = !{!"p1 _ZTS14dt_pwstorage_t", !14, i64 0}
!57 = !{!"p1 _ZTS11dt_camctl_t", !14, i64 0}
!58 = !{!"p1 _ZTS15dt_collection_t", !14, i64 0}
!59 = !{!"p1 _ZTS14dt_selection_t", !14, i64 0}
!60 = !{!"p1 _ZTS11dt_points_t", !14, i64 0}
!61 = !{!"p1 _ZTS12dt_imageio_t", !14, i64 0}
!62 = !{!"p1 _ZTS11dt_opencl_t", !14, i64 0}
!63 = !{!"p1 _ZTS9dt_dbus_t", !14, i64 0}
!64 = !{!"p1 _ZTS9dt_undo_t", !14, i64 0}
!65 = !{!"p1 _ZTS16dt_colorspaces_t", !14, i64 0}
!66 = !{!"p1 _ZTS9dt_l10n_t", !14, i64 0}
!67 = !{!"dt_pthread_mutex_t", !9, i64 0}
!68 = !{!"p1 omnipotent char", !14, i64 0}
!69 = !{!"", !70, i64 0, !67, i64 8, !9, i64 48, !71, i64 96, !71, i64 97, !72, i64 104, !73, i64 112, !74, i64 120, !75, i64 128, !75, i64 136, !75, i64 144}
!70 = !{!"p1 _ZTS9lua_State", !14, i64 0}
!71 = !{!"_Bool", !9, i64 0}
!72 = !{!"p1 _ZTS10_GMainLoop", !14, i64 0}
!73 = !{!"p1 _ZTS13_GMainContext", !14, i64 0}
!74 = !{!"p1 _ZTS12_GThreadPool", !14, i64 0}
!75 = !{!"p1 _ZTS12_GAsyncQueue", !14, i64 0}
!76 = !{!"double", !9, i64 0}
!77 = !{!"p1 _ZTS10_GTimeZone", !14, i64 0}
!78 = !{!"p1 _ZTS10_GDateTime", !14, i64 0}
!79 = !{!"dt_sys_resources_t", !18, i64 0, !18, i64 8, !80, i64 16, !80, i64 24, !8, i64 32}
!80 = !{!"p1 int", !14, i64 0}
!81 = !{!"dt_backthumb_t", !76, i64 0, !76, i64 8, !8, i64 16, !8, i64 20}
!82 = !{!"dt_gimp_t", !8, i64 0, !68, i64 8, !68, i64 16, !8, i64 24, !8, i64 28}
!83 = !{!"dt_splash_t", !84, i64 0, !84, i64 8, !84, i64 16, !84, i64 24, !8, i64 32}
!84 = !{!"p1 _ZTS10_GtkWidget", !14, i64 0}
!85 = !{!86, !18, i64 0}
!86 = !{!"timeval", !18, i64 0, !18, i64 8}
!87 = !{!86, !18, i64 8}
!88 = !{!89, !90, i64 8}
!89 = !{!"dt_dev_pixelpipe_iop_t", !17, i64 0, !90, i64 8, !14, i64 16, !14, i64 24, !8, i64 32, !8, i64 36, !91, i64 40, !80, i64 56, !93, i64 64, !9, i64 88, !16, i64 104, !8, i64 108, !8, i64 112, !18, i64 120, !8, i64 128, !8, i64 132, !94, i64 136, !94, i64 156, !94, i64 176, !94, i64 196, !8, i64 216, !8, i64 220, !95, i64 224, !95, i64 352, !9, i64 480, !8, i64 516, !99, i64 520, !100, i64 528, !100, i64 576}
!90 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !14, i64 0}
!91 = !{!"dt_dev_histogram_collection_params_t", !92, i64 0, !8, i64 8}
!92 = !{!"p1 _ZTS18dt_histogram_roi_t", !14, i64 0}
!93 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !18, i64 8, !8, i64 16, !8, i64 20}
!94 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !16, i64 16}
!95 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !96, i64 48, !98, i64 64, !9, i64 96, !8, i64 112}
!96 = !{!"", !97, i64 0, !97, i64 2}
!97 = !{!"short", !9, i64 0}
!98 = !{!"", !8, i64 0, !9, i64 16}
!99 = !{!"p1 _ZTS11_GHashTable", !14, i64 0}
!100 = !{!"dt_dev_distorted_mask_cache_t", !37, i64 0, !94, i64 8, !18, i64 32, !18, i64 40}
!101 = !{!102, !46, i64 664}
!102 = !{!"dt_iop_module_t", !8, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !14, i64 376, !14, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !14, i64 440, !103, i64 448, !9, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !9, i64 512, !9, i64 528, !9, i64 544, !9, i64 560, !9, i64 576, !9, i64 592, !80, i64 608, !93, i64 616, !9, i64 640, !8, i64 656, !8, i64 660, !46, i64 664, !8, i64 672, !8, i64 676, !14, i64 680, !14, i64 688, !8, i64 696, !14, i64 704, !67, i64 712, !14, i64 752, !14, i64 760, !104, i64 768, !104, i64 776, !14, i64 784, !105, i64 792, !84, i64 824, !84, i64 832, !84, i64 840, !84, i64 848, !84, i64 856, !84, i64 864, !84, i64 872, !8, i64 880, !84, i64 888, !84, i64 896, !84, i64 904, !108, i64 912, !108, i64 920, !84, i64 928, !84, i64 936, !8, i64 944, !109, i64 952, !8, i64 960, !9, i64 964, !8, i64 1092, !84, i64 1096, !14, i64 1104, !8, i64 1112}
!103 = !{!"p1 _ZTS8_GModule", !14, i64 0}
!104 = !{!"p1 _ZTS25dt_develop_blend_params_t", !14, i64 0}
!105 = !{!"", !106, i64 0, !107, i64 16}
!106 = !{!"", !99, i64 0, !99, i64 8}
!107 = !{!"", !17, i64 0, !8, i64 8}
!108 = !{!"p1 _ZTS7_GSList", !14, i64 0}
!109 = !{!"p1 _ZTS18dt_iop_module_so_t", !14, i64 0}
!110 = !{!102, !8, i64 480}
!111 = distinct !{!111, !112, !113}
!112 = !{!"llvm.loop.isvectorized", i32 1}
!113 = !{!"llvm.loop.unroll.runtime.disable"}
!114 = !{!"branch_weights", i32 4, i32 28}
!115 = distinct !{!115, !112, !113}
!116 = distinct !{!116, !113, !112}
!117 = !{!118, !8, i64 144}
!118 = !{!"dt_dev_pixelpipe_t", !119, i64 0, !8, i64 120, !18, i64 128, !37, i64 136, !8, i64 144, !8, i64 148, !16, i64 152, !8, i64 156, !8, i64 160, !95, i64 176, !123, i64 304, !123, i64 312, !123, i64 320, !123, i64 328, !13, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !68, i64 360, !18, i64 368, !8, i64 376, !8, i64 380, !16, i64 384, !9, i64 388, !18, i64 416, !67, i64 424, !67, i64 464, !67, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !124, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !9, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !125, i64 656, !8, i64 2544, !68, i64 2552, !8, i64 2560, !13, i64 2568, !13, i64 2576, !13, i64 2584, !8, i64 2592, !37, i64 2600, !18, i64 2608, !9, i64 2616, !9, i64 2632}
!119 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !18, i64 8, !18, i64 16, !120, i64 24, !121, i64 32, !122, i64 40, !121, i64 48, !80, i64 56, !80, i64 64, !18, i64 72, !8, i64 80, !18, i64 88, !18, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!120 = !{!"any p2 pointer", !14, i64 0}
!121 = !{!"p1 long", !14, i64 0}
!122 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !14, i64 0}
!123 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !14, i64 0}
!124 = !{!"dt_dev_detail_mask_t", !94, i64 0, !18, i64 24, !37, i64 32}
!125 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !8, i64 40, !9, i64 44, !9, i64 108, !9, i64 172, !9, i64 300, !9, i64 364, !9, i64 428, !9, i64 492, !18, i64 560, !8, i64 568, !9, i64 572, !9, i64 800, !9, i64 864, !9, i64 928, !9, i64 992, !8, i64 1120, !9, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !16, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !18, i64 1448, !18, i64 1456, !18, i64 1464, !18, i64 1472, !8, i64 1480, !95, i64 1488, !9, i64 1616, !68, i64 1656, !8, i64 1664, !8, i64 1668, !126, i64 1672, !127, i64 1680, !128, i64 1704, !97, i64 1736, !9, i64 1738, !8, i64 1748, !8, i64 1752, !16, i64 1756, !16, i64 1760, !9, i64 1776, !9, i64 1792, !9, i64 1840, !13, i64 1856, !129, i64 1864, !8, i64 1872, !8, i64 1876}
!126 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!127 = !{!"dt_image_geoloc_t", !76, i64 0, !76, i64 8, !76, i64 16}
!128 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16}
!129 = !{!"p1 _ZTS16dt_cache_entry_t", !14, i64 0}
!130 = !{!118, !8, i64 148}
!131 = !{!27, !8, i64 24}
!132 = distinct !{!132, !112, !113}
!133 = distinct !{!133, !112, !113}
!134 = distinct !{!134, !113, !112}
!135 = !{!37, !37, i64 0}
!136 = !{!94, !8, i64 8}
!137 = !{!94, !8, i64 12}
!138 = !{!94, !8, i64 0}
!139 = !{!94, !8, i64 4}
!140 = !{!94, !16, i64 16}
!141 = distinct !{!141, !112, !113}
!142 = distinct !{!142, !112, !113}
!143 = distinct !{!143, !113, !112}
!144 = distinct !{!144, !112, !113}
!145 = distinct !{!145, !112, !113}
!146 = distinct !{!146, !113, !112}
!147 = !{!12, !8, i64 112}
!148 = !{!42, !46, i64 64}
!149 = !{!150, !90, i64 96}
!150 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !14, i64 16, !76, i64 24, !76, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !76, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !17, i64 88, !90, i64 96, !125, i64 112, !8, i64 2000, !8, i64 2004, !67, i64 2008, !8, i64 2048, !13, i64 2056, !8, i64 2064, !17, i64 2072, !8, i64 2080, !13, i64 2088, !13, i64 2096, !8, i64 2104, !13, i64 2112, !13, i64 2120, !80, i64 2128, !80, i64 2136, !8, i64 2144, !8, i64 2148, !13, i64 2152, !151, i64 2160, !152, i64 2168, !13, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !16, i64 2196, !16, i64 2200, !17, i64 2208, !8, i64 2216, !153, i64 2224, !158, i64 2384, !159, i64 2496, !160, i64 2520, !161, i64 2560, !162, i64 2592, !163, i64 2608, !164, i64 2624, !84, i64 2664, !84, i64 2672, !165, i64 2680, !165, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !13, i64 2904, !8, i64 2912, !46, i64 2920}
!151 = !{!"p1 _ZTS15dt_masks_form_t", !14, i64 0}
!152 = !{!"p1 _ZTS19dt_masks_form_gui_t", !14, i64 0}
!153 = !{!"", !154, i64 0, !17, i64 40, !155, i64 48, !157, i64 120}
!154 = !{!"dt_dev_proxy_exposure_t", !17, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!155 = !{!"", !156, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64}
!156 = !{!"p1 _ZTS15dt_lib_module_t", !14, i64 0}
!157 = !{!"", !156, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!158 = !{!"dt_dev_chroma_t", !17, i64 0, !17, i64 8, !9, i64 16, !9, i64 32, !9, i64 64, !8, i64 96}
!159 = !{!"", !17, i64 0, !17, i64 8, !14, i64 16}
!160 = !{!"", !84, i64 0, !84, i64 8, !8, i64 16, !8, i64 20, !16, i64 24, !16, i64 28, !8, i64 32}
!161 = !{!"", !84, i64 0, !84, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !16, i64 28}
!162 = !{!"", !84, i64 0, !84, i64 8}
!163 = !{!"", !84, i64 0, !8, i64 8}
!164 = !{!"", !84, i64 0, !84, i64 8, !84, i64 16, !84, i64 24, !84, i64 32}
!165 = !{!"dt_dev_viewport_t", !84, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !90, i64 80, !84, i64 88, !46, i64 96}
!166 = !{!118, !16, i64 152}
!167 = !{!118, !8, i64 156}
!168 = !{!118, !8, i64 160}
!169 = !{!150, !90, i64 2760}
!170 = !{!12, !8, i64 120}
!171 = !{!118, !8, i64 376}
!172 = !{!118, !8, i64 380}
!173 = !{!12, !16, i64 36}
!174 = !{!12, !16, i64 40}
!175 = !{!42, !51, i64 104}
!176 = !{!177, !76, i64 1432}
!177 = !{!"dt_gui_gtk_t", !178, i64 0, !179, i64 8, !180, i64 56, !181, i64 80, !8, i64 88, !68, i64 96, !9, i64 104, !9, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !76, i64 1384, !76, i64 1392, !76, i64 1400, !76, i64 1408, !84, i64 1416, !76, i64 1424, !76, i64 1432, !76, i64 1440, !76, i64 1448, !8, i64 1456, !8, i64 1460, !9, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!178 = !{!"p1 _ZTS7dt_ui_t", !14, i64 0}
end_hunk_1
