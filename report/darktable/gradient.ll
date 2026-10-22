Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gradient?download=true
inline.NumInlined: 87
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_gradient_modify_property:bb.a
  %i.cg = frem reassoc nsz arcp contract afn float %i.cf, 3.600000e+02 ; 2 uses
  store float %i.cg, ptr %i.cb, align 4, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %.thread82, %bb.n
  %i.ch = phi float [ %i.ca, %.thread82 ], [ %i.cg, %bb.n ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !28
  %i.ck = and i32 %i.cj, 136
  %.not75 = icmp eq i32 %i.ck, 0
  %i.cl = select i1 %.not75, ptr @.str.14, ptr @.str.13
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.cl, float noundef %i.ch) #12
  %i.cm = fsub reassoc nsz arcp contract afn float 3.600000e+02, %i.ch
  %i.cn = load float, ptr %4, align 4, !tbaa !29
  %i.co = fadd reassoc nsz arcp contract afn float %i.cm, %i.cn
  store float %i.co, ptr %4, align 4, !tbaa !29
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.l, %bb.o
  %i.cp = load i32, ptr %5, align 4, !tbaa !32
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %5, align 4, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gradient_duplicate_points(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %.010 = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %.not11 = icmp eq ptr %.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !23
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi ptr [ %i.d, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.012 = phi ptr [ %.0, %.lr.ph ], [ %.010, %.lr.ph.preheader ] ; 2 uses
  %i.b = load ptr, ptr %.012, align 8, !tbaa !25
  %i.c = tail call noalias dereferenceable_or_null(28) ptr @malloc(i64 noundef 28) #13 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.c, ptr noundef nonnull align 4 dereferenceable(28) %i.b, i64 28, i1 false)
  %i.d = tail call ptr @g_list_append(ptr noundef %i.a, ptr noundef nonnull %i.c) #12 ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %.0 = load ptr, ptr %i.e, align 8, !tbaa !33    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define internal void @_gradient_get_distance(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9, ptr nofree noundef captures(none) %10) #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %9, align 4, !tbaa !32
  store i32 0, ptr %7, align 4, !tbaa !32
  store i32 0, ptr %6, align 4, !tbaa !32
  store i32 -1, ptr %8, align 4, !tbaa !32
  store float f0x7F7FFFFF, ptr %10, align 4, !tbaa !29
  %i.a = load ptr, ptr %3, align 8, !tbaa !34
  %i.b = tail call ptr @g_list_nth_data(ptr noundef %i.a, i32 noundef %4) #12 ; 5 uses
  %.not68 = icmp eq ptr %i.b, null
  br i1 %.not68, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fmul reassoc nsz arcp contract afn float %2, %2 ; 5 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !37   ; 7 uses
  %.promoted = load float, ptr %10, align 4, !tbaa !29
  %i.e = load float, ptr %i.d, align 4, !tbaa !29
  %i.f = fsub reassoc nsz arcp contract afn float %0, %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !29
  %i.i = fsub reassoc nsz arcp contract afn float %1, %i.h ; 2 uses
  %i.j = fmul reassoc nsz arcp contract afn float %i.f, %i.f
  %i.k = fmul reassoc nsz arcp contract afn float %i.i, %i.i
  %i.l = fadd reassoc nsz arcp contract afn float %i.k, %i.j ; 2 uses
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.promoted, float %i.l) ; 2 uses
  store float %i.m, ptr %10, align 4, !tbaa !29
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.l, %i.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !29
  %i.q = fsub reassoc nsz arcp contract afn float %0, %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !29
  %i.t = fsub reassoc nsz arcp contract afn float %1, %i.s ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.q, %i.q
  %i.v = fmul reassoc nsz arcp contract afn float %i.t, %i.t
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, %i.u ; 2 uses
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.m, float %i.w) ; 2 uses
  store float %i.x, ptr %10, align 4, !tbaa !29
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.c
  %i.z = select i1 %i.n, i1 true, i1 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !29
  %i.ac = fsub reassoc nsz arcp contract afn float %0, %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !29
  %i.af = fsub reassoc nsz arcp contract afn float %1, %i.ae ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn float %i.ac, %i.ac
  %i.ah = fmul reassoc nsz arcp contract afn float %i.af, %i.af
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, %i.ag ; 2 uses
  %i.aj = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.x, float %i.ai)
  store float %i.aj, ptr %10, align 4, !tbaa !29
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.ai, %i.c
  %i.al = select i1 %i.z, i1 true, i1 %i.ak
  br i1 %i.al, label %.loopexit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !38 ; 2 uses
  %.not6976 = icmp sgt i32 %i.an, 0
  br i1 %.not6976, label %.critedge.lr.ph, label %.critedge71.preheader

.critedge.lr.ph:                                  ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !39
  %wide.trip.count = zext nneg i32 %i.an to i64
  br label %.critedge

bb.d:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge71.preheader, label %.critedge

.critedge71.preheader:                            ; preds = %bb.d, %.preheader
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 6 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !27
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
  %i.p = load float, ptr %i.h, align 4, !tbaa !27
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
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !84
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.c = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #12 ; 0 uses
  %i.d = load i64, ptr %12, align 8, !tbaa !86
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !109
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
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !84
  %i.aw = and i32 %i.av, 4112
  %or.cond.not = icmp eq i32 %i.aw, 4112
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.ay = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #12 ; 0 uses
  %i.az = load i64, ptr %11, align 8, !tbaa !86
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
  %i.bj = load ptr, ptr %2, align 8, !tbaa !23
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25 ; 6 uses
  %i.bl = load i32, ptr %4, align 4, !tbaa !32    ; 7 uses
  %i.bm = load i32, ptr %6, align 4, !tbaa !32    ; 3 uses
  %i.bn = load i32, ptr %7, align 4, !tbaa !32
  %i.bo = insertelement <2 x i32> poison, i32 %i.bl, i64 0
  %i.bp = insertelement <2 x i32> %i.bo, i32 %i.bi, i64 1
  %i.bq = add nsw <2 x i32> %i.bp, splat (i32 7)
  %i.br = sdiv <2 x i32> %i.bq, splat (i32 8)     ; 4 uses
  %i.bs = extractelement <2 x i32> %i.br, i64 0
  %i.bt = add nsw i32 %i.bs, 1                    ; 2 uses
  %i.bu = extractelement <2 x i32> %i.br, i64 1
  %i.bv = add nsw i32 %i.bu, 1
  %i.bw = sext i32 %i.bt to i64                   ; 5 uses
  %i.bx = sext i32 %i.bv to i64                   ; 2 uses
  %i.by = shl nsw i64 %i.bw, 3
  %i.bz = mul nsw i64 %i.by, %i.bx
  %i.ca = call ptr @dt_alloc_aligned(i64 noundef %i.bz) #12 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.t, label %.preheader234

.preheader234:                                    ; preds = %bb.e
  %.not196237 = icmp slt i32 %i.bi, -14           ; 2 uses
  %.not209235 = icmp slt i32 %i.bl, -14           ; 2 uses
  %or.cond = or i1 %.not196237, %.not209235
  br i1 %or.cond, label %._crit_edge239.split, label %.preheader233.preheader

.preheader233.preheader:                          ; preds = %.preheader234
  %i.cc = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.br, <2 x i32> zeroinitializer)
  %i.cd = add nuw nsw <2 x i32> %i.cc, splat (i32 1) ; 2 uses
  %i.ce = extractelement <2 x i32> %i.cd, i64 1
  %wide.trip.count281 = zext nneg i32 %i.ce to i64
  %i.cf = extractelement <2 x i32> %i.cd, i64 0
  %wide.trip.count = zext nneg i32 %i.cf to i64   ; 6 uses
  %min.iters.check = icmp slt i32 %i.bl, 17
  %min.iters.check330 = icmp slt i32 %i.bl, 241
  %i.cg = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert331 = insertelement <8 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat332 = shufflevector <8 x i32> %broadcast.splatinsert331, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 64), %broadcast.splat332
  %invariant.op395 = add <8 x i32> splat (i32 128), %broadcast.splat332
  %invariant.op397 = add <8 x i32> splat (i32 192), %broadcast.splat332
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  %n.vec336 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert339 = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat340 = shufflevector <4 x i32> %broadcast.splatinsert339, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n348 = icmp eq i64 %n.vec336, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader233.preheader, %._crit_edge
  %indvars.iv277 = phi i64 [ 0, %.preheader233.preheader ], [ %indvars.iv.next278, %._crit_edge ] ; 3 uses
  %i.ch = mul nuw nsw i64 %indvars.iv277, %i.bw   ; 6 uses
  %indvars.iv277.tr = trunc i64 %indvars.iv277 to i32
  %i.ci = shl i32 %indvars.iv277.tr, 3
  %i.cj = add i32 %i.ci, %i.bn
  %i.ck = sitofp reassoc nsz arcp contract afn i32 %i.cj to float ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check330, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ck, i64 0 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
end_hunk_0
begin_hunk_1_@_gradient_events_button_released:bb.a

bb.aa:                                            ; preds = %bb.z
  %i.ex = tail call reassoc nsz arcp contract afn float @dt_dev_get_zoom_scale_full() #12
  %i.ey = tail call noalias dereferenceable_or_null(28) ptr @malloc(i64 noundef 28) #13 ; 8 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !161
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fc = load float, ptr %i.fb, align 8, !tbaa !162
  %i.fd = fmul reassoc nsz arcp contract afn float %.0, %1
  %i.fe = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 20
  tail call fastcc void @_gradient_init_values(float noundef %i.ex, ptr noundef nonnull %7, float noundef %i.fa, float noundef %i.fc, float noundef %i.fd, float noundef %i.fe, ptr noundef %i.ey, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fh, ptr noundef nonnull %i.fi)
  store i32 0, ptr %i.bk, align 8, !tbaa !130
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store float 0.000000e+00, ptr %i.fj, align 4, !tbaa !194
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i32 2, ptr %i.fk, align 4, !tbaa !128
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 24
  store <2 x float> zeroinitializer, ptr %i.fl, align 8, !tbaa !29
  %i.fm = load ptr, ptr %5, align 8, !tbaa !23
  %i.fn = tail call ptr @g_list_append(ptr noundef %i.fm, ptr noundef %i.ey) #12
  store ptr %i.fn, ptr %5, align 8, !tbaa !23
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 184 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !195 ; 9 uses
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131
  tail call void @dt_masks_gui_form_save_creation(ptr noundef %i.fq, ptr noundef %i.fp, ptr noundef nonnull %5, ptr noundef nonnull %7) #12
  %.not145 = icmp eq ptr %i.fp, null              ; 2 uses
  br i1 %.not145, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131
  tail call void @dt_dev_add_history_item(ptr noundef %i.fr, ptr noundef nonnull %i.fp, i32 noundef 1) #12
  tail call void @dt_masks_set_edit_mode(ptr noundef nonnull %i.fp, i32 noundef 1) #12
  tail call void @dt_masks_iop_update(ptr noundef nonnull %i.fp) #12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !191
  tail call void @dt_dev_masks_selection_change(ptr noundef %i.fs, ptr noundef %i.fp, i32 noundef %i.fu) #12
  store ptr null, ptr %i.fo, align 8, !tbaa !195
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 176
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !196
  %.not146 = icmp eq i32 %i.fw, 0
  br i1 %.not146, label %bb.aq, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not145, label %bb.ap, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 784
  %i.fy = load ptr, ptr %i.fx, align 16, !tbaa !197 ; 11 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 552
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !32
  %i.gc = load i32, ptr %i.ga, align 8, !tbaa !28 ; 2 uses
  %i.gd = icmp eq i32 %i.gb, %i.gc
  br i1 %i.gd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 512
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !198
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.gf, i32 noundef 1) #12
  %.pre = load i32, ptr %i.ga, align 8, !tbaa !28
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.gg = phi i32 [ %i.gc, %bb.ae ], [ %.pre, %bb.af ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 556
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !32
  %i.gj = icmp eq i32 %i.gi, %i.gg
  br i1 %i.gj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 520
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !198
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.gl, i32 noundef 1) #12
  %.pre168 = load i32, ptr %i.ga, align 8, !tbaa !28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gm = phi i32 [ %.pre168, %bb.ah ], [ %i.gg, %bb.ag ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 560
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !32
  %i.gp = icmp eq i32 %i.go, %i.gm
  br i1 %i.gp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fy, i64 528
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !198
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.gr, i32 noundef 1) #12
  %.pre169 = load i32, ptr %i.ga, align 8, !tbaa !28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gs = phi i32 [ %.pre169, %bb.aj ], [ %i.gm, %bb.ai ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fy, i64 564
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !32
  %i.gv = icmp eq i32 %i.gu, %i.gs
  br i1 %i.gv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fy, i64 536
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !198
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.gx, i32 noundef 1) #12
  %.pre170 = load i32, ptr %i.ga, align 8, !tbaa !28
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gy = phi i32 [ %.pre170, %bb.al ], [ %i.gs, %bb.ak ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fy, i64 568
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !32
  %i.hb = icmp eq i32 %i.ha, %i.gy
  br i1 %i.hb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fy, i64 544
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !198
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.hd, i32 noundef 1) #12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.he = getelementptr inbounds nuw i8, ptr %i.fy, i64 576
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !203
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.hf, i32 noundef 0) #12
  %i.hg = load i32, ptr %i.ga, align 8, !tbaa !28
  %i.hh = tail call ptr @dt_masks_create(i32 noundef %i.hg) #12
  tail call void @dt_masks_change_form_gui(ptr noundef %i.hh) #12
  %i.hi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 2168
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !204 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 184
  store ptr %i.fp, ptr %i.hl, align 8, !tbaa !195
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 176
  store i32 1, ptr %i.hm, align 8, !tbaa !196
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 192
  store ptr %i.fp, ptr %i.hn, align 8, !tbaa !205
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ad
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !28
  %i.hq = tail call ptr @dt_masks_create(i32 noundef %i.hp) #12
  tail call void @dt_masks_change_form_gui(ptr noundef %i.hq) #12
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !205
  %i.ht = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 2168
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !204
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 184
  store ptr %i.hs, ptr %i.hw, align 8, !tbaa !195
  br label %bb.aq

bb.aq:                                            ; preds = %bb.z, %bb.ac, %bb.ap, %bb.ao, %bb.w, %bb.v, %bb.y, %bb.r, %bb.n
  %.1 = phi i32 [ 1, %bb.n ], [ 1, %bb.r ], [ 1, %bb.ac ], [ 1, %bb.y ], [ 0, %bb.v ], [ 1, %bb.w ], [ 1, %bb.ao ], [ 1, %bb.ap ], [ 0, %bb.z ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal void @_gradient_events_post_expose(ptr noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = load float, ptr %i.l, align 4, !tbaa !161 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load float, ptr %i.n, align 8, !tbaa !162 ; 2 uses
  call fastcc void @_gradient_init_values(float noundef %1, ptr noundef nonnull %2, float noundef %i.m, float noundef %i.o, float noundef %i.m, float noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131
  %i.q = load float, ptr %i.a, align 4, !tbaa !29 ; 2 uses
  %i.r = load float, ptr %i.b, align 4, !tbaa !29 ; 2 uses
  %i.s = load float, ptr %i.c, align 4, !tbaa !29 ; 2 uses
  %i.t = load float, ptr %i.e, align 4, !tbaa !29 ; 2 uses
  %i.u = call fastcc i32 @_gradient_get_points(ptr noundef %i.p, float noundef %i.q, float noundef %i.r, float noundef %i.s, float noundef %i.t, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  %.not54 = icmp eq i32 %i.u, 0
  br i1 %.not54, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load float, ptr %i.d, align 4, !tbaa !29 ; 2 uses
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131
  %i.y = call fastcc i32 @_gradient_get_pts_border(ptr noundef %i.x, float noundef %i.q, float noundef %i.r, float noundef %i.s, float noundef %i.v, float noundef %i.t, ptr noundef %i.h, ptr noundef nonnull %i.i) ; 0 uses
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !129
  %.pre57 = load i32, ptr %i.i, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.z = phi i32 [ %.pre57, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.aa = phi ptr [ %.pre, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  tail call void @cairo_save(ptr noundef %0) #12
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !129 ; 3 uses
  %i.ac = load i32, ptr %i.g, align 4, !tbaa !32  ; 2 uses
  tail call fastcc void @_gradient_draw_lines(i32 noundef 0, ptr noundef %0, i32 noundef 0, float noundef %1, ptr noundef nonnull %i.ab, i32 noundef %i.ac)
  tail call fastcc void @_gradient_draw_lines(i32 noundef 1, ptr noundef %0, i32 noundef 0, float noundef %1, ptr noundef %i.aa, i32 noundef %i.z)
  tail call fastcc void @_gradient_draw_arrow(ptr noundef %0, i32 noundef 0, float noundef %1, ptr noundef nonnull %i.ab, i32 noundef %i.ac)
  tail call void @cairo_restore(ptr noundef %0) #12
  tail call void @free(ptr noundef %i.ab) #12
  %.not56 = icmp eq ptr %i.aa, null
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.aa) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %2, align 8, !tbaa !34
  %i.ae = tail call ptr @g_list_nth_data(ptr noundef %i.ad, i32 noundef %3) #12 ; 6 uses
  %.not51 = icmp eq ptr %i.ae, null
  br i1 %.not51, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.ai = icmp eq i32 %i.ah, %3
  br i1 %i.ai, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !19
  %.not52 = icmp eq i32 %i.ak, 0
  br i1 %.not52, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.am = load i32, ptr %i.al, align 8, !tbaa !130
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.ap = phi i32 [ 0, %bb.i ], [ 1, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !40
  tail call fastcc void @_gradient_draw_lines(i32 noundef 0, ptr noundef %0, i32 noundef %i.ap, float noundef %1, ptr noundef nonnull %i.af, i32 noundef %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.at = load i32, ptr %i.as, align 8, !tbaa !207
  %.not53 = icmp eq i32 %i.at, 0
  br i1 %.not53, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.av = icmp eq i32 %i.au, %3
  br i1 %i.av, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !158
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !38
  tail call fastcc void @_gradient_draw_lines(i32 noundef 1, ptr noundef %0, i32 noundef %i.ax, float noundef %1, ptr noundef %i.az, i32 noundef %i.bb)
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.m
  %i.bc = load ptr, ptr %i.ae, align 8, !tbaa !37
  %i.bd = load i32, ptr %i.aq, align 8, !tbaa !40
  tail call fastcc void @_gradient_draw_arrow(ptr noundef %0, i32 noundef %i.ap, float noundef %1, ptr noundef %i.bc, i32 noundef %i.bd)
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.h, %bb.g
  ret void
}

declare void @dt_conf_set_float(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @dt_mouse_action_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @g_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @g_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_list_nth_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_gradient_get_points(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr nofree noundef captures(none) initializes((0, 8)) %5, ptr nofree noundef captures(none) initializes((0, 4)) %6) unnamed_addr #0 {
dt_masks_get_image_size.exit:
  store ptr null, ptr %5, align 8, !tbaa !129
  store i32 0, ptr %6, align 4, !tbaa !32
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !148
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load <2 x i32>, ptr %i.d, align 16, !tbaa !32
  %i.f = sitofp <2 x i32> %i.e to <2 x float>     ; 4 uses
  %i.g = extractelement <2 x float> %i.f, i64 0   ; 3 uses
  %i.h = extractelement <2 x float> %i.f, i64 1   ; 3 uses
  %i.i = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.g, float noundef %i.h) #14 ; 4 uses
  %i.j = fmul reassoc nsz arcp contract afn float %3, f0xBC8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.j) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.k = fadd reassoc nsz arcp contract afn float %i.i, 3.000000e+00
  %i.l = fptosi float %i.k to i32                 ; 4 uses
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 3                      ; 2 uses
  %i.o = tail call ptr @dt_alloc_aligned(i64 noundef %i.n) #12 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  store ptr %i.o, ptr %5, align 8, !tbaa !129
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.a

bb.a:                                             ; preds = %dt_masks_get_image_size.exit
  %i.q = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.g, float %i.h)
  %i.r = fmul reassoc nnan nsz arcp contract afn float %i.q, 1.000000e-01 ; 4 uses
  %i.s = fmul reassoc nsz arcp contract afn float %1, %i.g ; 4 uses
  store float %i.s, ptr %i.o, align 64, !tbaa !29
  %i.t = fmul reassoc nsz arcp contract afn float %2, %i.h ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store float %i.t, ptr %i.u, align 4, !tbaa !29
  %i.v = fmul reassoc nsz arcp contract afn float %3, f0x3C8EFA36 ; 2 uses
  %i.w = fsub reassoc nsz arcp contract afn float f0x3FC90FDC, %i.v
  %sincos120 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.w) ; 2 uses
  %sin121 = extractvalue { float, float } %sincos120, 0
  %cos122 = extractvalue { float, float } %sincos120, 1
  %i.x = fmul reassoc nsz arcp contract afn float %i.r, %cos122
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, %i.s
  %i.z = fmul reassoc nsz arcp contract afn float %i.r, %sin121
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.t
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store float %i.y, ptr %i.ab, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store float %i.aa, ptr %i.ac, align 4, !tbaa !29
  %i.ad = fsub reassoc nsz arcp contract afn float f0xBFC90FDC, %i.v
  %sincos123 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ad) ; 2 uses
  %sin124 = extractvalue { float, float } %sincos123, 0
  %cos125 = extractvalue { float, float } %sincos123, 1
  %i.ae = fmul reassoc nsz arcp contract afn float %i.r, %cos125
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, %i.s
  %i.ag = fmul reassoc nsz arcp contract afn float %i.r, %sin124
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, %i.t
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 16
end_hunk_1
begin_hunk_2_@_gradient_get_points:dt_masks_get_image_size.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %wide.vec = load <16 x float>, ptr %i.cu, align 64, !tbaa !29, !alias.scope !215
  %wide.vec172 = load <16 x float>, ptr %i.cw, align 64, !tbaa !29, !alias.scope !215
  %i.cx = shl i64 %index, 3
  %i.cy = shl i64 %index, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 88
  store <16 x float> %wide.vec, ptr %i.da, align 4, !tbaa !29, !alias.scope !216, !noalias !215
  store <16 x float> %wide.vec172, ptr %i.dc, align 4, !tbaa !29, !alias.scope !216, !noalias !215
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %..loopexit_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !163

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec176 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %i.de = or i64 %wide.trip.count, 3              ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index177 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next182, %vec.epilog.vector.body ] ; 3 uses
  %i.df = shl nuw nsw i64 %index177, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.df
  %wide.vec178 = load <8 x float>, ptr %i.dg, align 32, !tbaa !29, !alias.scope !215
  %i.dh = shl i64 %index177, 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store <8 x float> %wide.vec178, ptr %i.dj, align 4, !tbaa !29, !alias.scope !216, !noalias !215
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next182, %n.vec176
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !212

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n183 = icmp eq i64 %n.vec176, %wide.trip.count
  br i1 %cmp.n183, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv154.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec176, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ 3, %iter.check ], [ 3, %vector.memcheck ], [ %i.cr, %vec.epilog.iter.check ], [ %i.de, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv154.prol = phi i64 [ %indvars.iv.next155.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv154.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %.idx.prol = shl nuw nsw i64 %indvars.iv154.prol, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.prol ; 2 uses
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !29
  %.idx165.prol = shl nsw i64 %indvars.iv.prol, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx165.prol ; 2 uses
  store float %i.dm, ptr %i.dn, align 4, !tbaa !29
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !29
  %i.dq = getelementptr i8, ptr %i.dn, i64 4
  store float %i.dp, ptr %i.dq, align 4, !tbaa !29
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %indvars.iv.next155.prol = add nuw nsw i64 %indvars.iv154.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !213

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next.lcssa187.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv154.unr = phi i64 [ %indvars.iv154.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next155.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dr = sub nsw i64 %indvars.iv154.ph, %wide.trip.count
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv154 = phi i64 [ %indvars.iv.next155.3, %vec.epilog.scalar.ph ], [ %indvars.iv154.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv154, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx ; 2 uses
  %i.du = load float, ptr %i.dt, align 8, !tbaa !29
  %.idx165 = shl nsw i64 %indvars.iv, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx165 ; 2 uses
  store float %i.du, ptr %i.dv, align 4, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !29
  %i.dy = getelementptr i8, ptr %i.dv, i64 4
  store float %i.dx, ptr %i.dy, align 4, !tbaa !29
  %indvars.iv.next155 = shl i64 %indvars.iv154, 3
  %i.dz = getelementptr i8, ptr %i.al, i64 %indvars.iv.next155 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = load float, ptr %i.ea, align 8, !tbaa !29
  %indvars.iv.next = shl i64 %indvars.iv, 3
  %i.ec = getelementptr i8, ptr %i.ck, i64 %indvars.iv.next ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  store float %i.eb, ptr %i.ed, align 4, !tbaa !29
  %i.ee = getelementptr i8, ptr %i.dz, i64 12
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !29
  %i.eg = getelementptr i8, ptr %i.ec, i64 12
  store float %i.ef, ptr %i.eg, align 4, !tbaa !29
  %indvars.iv.next155.1 = shl i64 %indvars.iv154, 3
  %i.eh = getelementptr i8, ptr %i.al, i64 %indvars.iv.next155.1 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !29
  %indvars.iv.next.1 = shl i64 %indvars.iv, 3
  %i.ek = getelementptr i8, ptr %i.ck, i64 %indvars.iv.next.1 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  store float %i.ej, ptr %i.el, align 4, !tbaa !29
  %i.em = getelementptr i8, ptr %i.eh, i64 20
  %i.en = load float, ptr %i.em, align 4, !tbaa !29
  %i.eo = getelementptr i8, ptr %i.ek, i64 20
  store float %i.en, ptr %i.eo, align 4, !tbaa !29
  %indvars.iv.next155.2 = shl i64 %indvars.iv154, 3
  %i.ep = getelementptr i8, ptr %i.al, i64 %indvars.iv.next155.2 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 24
  %i.er = load float, ptr %i.eq, align 8, !tbaa !29
  %indvars.iv.next.2 = shl i64 %indvars.iv, 3
  %i.es = getelementptr i8, ptr %i.ck, i64 %indvars.iv.next.2 ; 2 uses
  %i.et = getelementptr i8, ptr %i.es, i64 24
  store float %i.er, ptr %i.et, align 4, !tbaa !29
  %i.eu = getelementptr i8, ptr %i.ep, i64 28
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !29
  %i.ew = getelementptr i8, ptr %i.es, i64 28
  store float %i.ev, ptr %i.ew, align 4, !tbaa !29
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars.iv.next155.3 = add nuw nsw i64 %indvars.iv154, 4 ; 2 uses
  %exitcond159.not.3 = icmp eq i64 %indvars.iv.next155.3, %wide.trip.count
  br i1 %exitcond159.not.3, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !214

bb.e:                                             ; preds = %.split151.us
  %i.ex = load ptr, ptr %5, align 8, !tbaa !129
  tail call void @free(ptr noundef %i.ex) #12
  store ptr null, ptr %5, align 8, !tbaa !129
  store i32 0, ptr %6, align 4, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split151.us, %dt_masks_get_image_size.exit
  %.1 = phi i32 [ 0, %dt_masks_get_image_size.exit ], [ 0, %bb.e ], [ 1, %.split151.us ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_gradient_get_pts_border(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7) unnamed_addr #0 {
dt_masks_get_image_size.exit:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  store ptr null, ptr %6, align 8, !tbaa !129
  store i32 0, ptr %7, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !148
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load <2 x i32>, ptr %i.h, align 16, !tbaa !32
  %i.j = sitofp <2 x i32> %i.i to <2 x float>     ; 4 uses
  %i.k = extractelement <2 x float> %i.j, i64 0
  %i.l = extractelement <2 x float> %i.j, i64 1
  %i.m = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.k, float noundef %i.l) #14
  %i.n = fmul reassoc nsz arcp contract afn float %3, f0x3C8EFA36 ; 2 uses
  %i.o = fsub reassoc nsz arcp contract afn float f0x3FC90FDC, %i.n
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.o) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.p = fmul reassoc nsz arcp contract afn float %i.m, %4
  %i.q = fsub reassoc nsz arcp contract afn float f0xBFC90FDC, %i.n
  %sincos114 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.q) ; 2 uses
  %sin115 = extractvalue { float, float } %sincos114, 0
  %cos116 = extractvalue { float, float } %sincos114, 1
  %i.r = insertelement <2 x float> poison, float %1, i64 0
  %i.s = insertelement <2 x float> %i.r, float %2, i64 1
  %i.t = fmul reassoc nsz arcp contract afn <2 x float> %i.s, %i.j
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.v = insertelement <4 x float> poison, float %i.p, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %i.x = insertelement <4 x float> poison, float %cos, i64 0
  %i.y = insertelement <4 x float> %i.x, float %sin, i64 1
  %i.z = insertelement <4 x float> %i.y, float %cos116, i64 2
  %i.aa = insertelement <4 x float> %i.z, float %sin115, i64 3
  %i.ab = fmul reassoc nsz arcp contract afn <4 x float> %i.w, %i.aa
  %i.ac = fadd reassoc nsz arcp contract afn <4 x float> %i.ab, %i.u
  %i.ad = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ae = fdiv reassoc nsz arcp contract afn <4 x float> %i.ac, %i.ad ; 4 uses
  %i.af = extractelement <4 x float> %i.ae, i64 0
  %i.ag = extractelement <4 x float> %i.ae, i64 1
  %i.ah = call fastcc i32 @_gradient_get_points(ptr noundef %0, float noundef %i.af, float noundef %i.ag, float noundef %3, float noundef %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c)
  %i.ai = extractelement <4 x float> %i.ae, i64 2
  %i.aj = extractelement <4 x float> %i.ae, i64 3
  %i.ak = call fastcc i32 @_gradient_get_points(ptr noundef %0, float noundef %i.ai, float noundef %i.aj, float noundef %3, float noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d)
  %8 = icmp ne i32 %i.ah, 0                       ; 2 uses
  %9 = icmp ne i32 %i.ak, 0                       ; 2 uses
  %or.cond = select i1 %8, i1 %9, i1 false
  %i.al = load i32, ptr %i.c, align 4             ; 4 uses
  %i.am = icmp sgt i32 %i.al, 4                   ; 2 uses
  %or.cond5 = select i1 %or.cond, i1 %i.am, i1 false
  %i.an = load i32, ptr %i.d, align 4             ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 4                   ; 2 uses
  %or.cond7 = select i1 %or.cond5, i1 %i.ao, i1 false
  br i1 %or.cond7, label %bb.a, label %bb.b

bb.a:                                             ; preds = %dt_masks_get_image_size.exit
  %i.ap = add nsw i32 %i.al, -5
  %i.aq = add nuw i32 %i.ap, %i.an                ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = tail call ptr @dt_alloc_aligned(i64 noundef %i.as) #12 ; 22 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.at, i64 64) ]
  store ptr %i.at, ptr %6, align 8, !tbaa !129
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.loopexit, label %iter.check279

iter.check279:                                    ; preds = %bb.a
  store i32 %i.aq, ptr %7, align 4, !tbaa !32
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !129 ; 10 uses
  %i.aw = add nsw i32 %i.al, -3                   ; 5 uses
  %wide.trip.count159 = zext i32 %i.aw to i64     ; 11 uses
  %min.iters.check256 = icmp ult i32 %i.aw, 4
  br i1 %min.iters.check256, label %vec.epilog.scalar.ph280.preheader, label %vector.memcheck257

vector.memcheck257:                               ; preds = %iter.check279
  %i.ax = shl nuw nsw i64 %wide.trip.count159, 3  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.at, i64 %i.ax
  %i.az = getelementptr nuw i8, ptr %i.av, i64 24
  %i.ba = getelementptr i8, ptr %i.av, i64 %i.ax
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  %bound0258 = icmp ult ptr %i.at, %i.bb
  %bound1259 = icmp ult ptr %i.az, %i.ay
  %found.conflict260 = and i1 %bound0258, %bound1259
  br i1 %found.conflict260, label %vec.epilog.scalar.ph280.preheader, label %vector.main.loop.iter.check261

vector.main.loop.iter.check261:                   ; preds = %vector.memcheck257
  %min.iters.check262 = icmp ult i32 %i.aw, 16
  br i1 %min.iters.check262, label %vec.epilog.ph283, label %vector.ph263

vector.ph263:                                     ; preds = %vector.main.loop.iter.check261
  %i.bc = and i64 %wide.trip.count159, 12
  %n.vec264 = and i64 %wide.trip.count159, 2147483632 ; 5 uses
  %i.bd = or disjoint i64 %n.vec264, 3
  br label %vector.body265

vector.body265:                                   ; preds = %vector.ph263, %vector.body265
  %index266 = phi i64 [ 0, %vector.ph263 ], [ %index.next275, %vector.body265 ] ; 5 uses
  %i.be = shl i64 %index266, 3
  %i.bf = shl i64 %index266, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  %wide.vec267 = load <16 x float>, ptr %i.bh, align 4, !tbaa !29, !alias.scope !244
  %wide.vec270 = load <16 x float>, ptr %i.bj, align 4, !tbaa !29, !alias.scope !244
  %i.bk = shl nuw nsw i64 %index266, 3
  %i.bl = shl i64 %index266, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  store <16 x float> %wide.vec267, ptr %i.bm, align 64, !tbaa !29, !alias.scope !245, !noalias !244
  store <16 x float> %wide.vec270, ptr %i.bo, align 64, !tbaa !29, !alias.scope !245, !noalias !244
  %index.next275 = add nuw i64 %index266, 16      ; 2 uses
  %i.bp = icmp eq i64 %index.next275, %n.vec264
  br i1 %i.bp, label %middle.block276, label %vector.body265, !llvm.loop !220

middle.block276:                                  ; preds = %vector.body265
  %cmp.n277 = icmp eq i64 %n.vec264, %wide.trip.count159
  br i1 %cmp.n277, label %.lr.ph135, label %vec.epilog.iter.check281

vec.epilog.iter.check281:                         ; preds = %middle.block276
  %min.epilog.iters.check282 = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check282, label %vec.epilog.scalar.ph280.preheader, label %vec.epilog.ph283, !prof !163

vec.epilog.ph283:                                 ; preds = %vector.main.loop.iter.check261, %vec.epilog.iter.check281
  %vec.epilog.resume.val278 = phi i64 [ %n.vec264, %vec.epilog.iter.check281 ], [ 0, %vector.main.loop.iter.check261 ]
  %n.vec284 = and i64 %wide.trip.count159, 2147483644 ; 3 uses
  %i.bq = or i64 %wide.trip.count159, 3
  br label %vec.epilog.vector.body285

vec.epilog.vector.body285:                        ; preds = %vec.epilog.vector.body285, %vec.epilog.ph283
  %index286 = phi i64 [ %vec.epilog.resume.val278, %vec.epilog.ph283 ], [ %index.next291, %vec.epilog.vector.body285 ] ; 3 uses
  %i.br = shl i64 %index286, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %wide.vec287 = load <8 x float>, ptr %i.bt, align 4, !tbaa !29, !alias.scope !244
  %i.bu = shl nuw nsw i64 %index286, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bu
  store <8 x float> %wide.vec287, ptr %i.bv, align 32, !tbaa !29, !alias.scope !245, !noalias !244
  %index.next291 = add nuw i64 %index286, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next291, %n.vec284
  br i1 %i.bw, label %vec.epilog.middle.block292, label %vec.epilog.vector.body285, !llvm.loop !221

vec.epilog.middle.block292:                       ; preds = %vec.epilog.vector.body285
  %cmp.n293 = icmp eq i64 %n.vec284, %wide.trip.count159
  br i1 %cmp.n293, label %.lr.ph135, label %vec.epilog.scalar.ph280.preheader

vec.epilog.scalar.ph280.preheader:                ; preds = %iter.check279, %vector.memcheck257, %vec.epilog.iter.check281, %vec.epilog.middle.block292
  %indvars.iv154.ph = phi i64 [ 0, %iter.check279 ], [ 0, %vector.memcheck257 ], [ %n.vec264, %vec.epilog.iter.check281 ], [ %n.vec284, %vec.epilog.middle.block292 ] ; 3 uses
  %indvars.iv152.ph = phi i64 [ 3, %iter.check279 ], [ 3, %vector.memcheck257 ], [ %i.bd, %vec.epilog.iter.check281 ], [ %i.bq, %vec.epilog.middle.block292 ] ; 2 uses
  %xtraiter325 = and i64 %wide.trip.count159, 3   ; 2 uses
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %vec.epilog.scalar.ph280.prol.loopexit, label %vec.epilog.scalar.ph280.prol

vec.epilog.scalar.ph280.prol:                     ; preds = %vec.epilog.scalar.ph280.preheader, %vec.epilog.scalar.ph280.prol
  %indvars.iv154.prol = phi i64 [ %indvars.iv.next155.prol, %vec.epilog.scalar.ph280.prol ], [ %indvars.iv154.ph, %vec.epilog.scalar.ph280.preheader ] ; 2 uses
  %indvars.iv152.prol = phi i64 [ %indvars.iv.next153.prol, %vec.epilog.scalar.ph280.prol ], [ %indvars.iv152.ph, %vec.epilog.scalar.ph280.preheader ] ; 2 uses
  %prol.iter327 = phi i64 [ %prol.iter327.next, %vec.epilog.scalar.ph280.prol ], [ 0, %vec.epilog.scalar.ph280.preheader ]
  %.idx178.prol = shl nuw nsw i64 %indvars.iv152.prol, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx178.prol ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !29
  %.idx179.prol = shl nuw nsw i64 %indvars.iv154.prol, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx179.prol ; 2 uses
  store float %i.by, ptr %i.bz, align 8, !tbaa !29
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !29
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store float %i.cb, ptr %i.cc, align 4, !tbaa !29
  %indvars.iv.next155.prol = add nuw nsw i64 %indvars.iv154.prol, 1 ; 2 uses
  %indvars.iv.next153.prol = add nuw nsw i64 %indvars.iv152.prol, 1 ; 2 uses
  %prol.iter327.next = add i64 %prol.iter327, 1   ; 2 uses
  %prol.iter327.cmp.not = icmp eq i64 %prol.iter327.next, %xtraiter325
  br i1 %prol.iter327.cmp.not, label %vec.epilog.scalar.ph280.prol.loopexit, label %vec.epilog.scalar.ph280.prol, !llvm.loop !222

vec.epilog.scalar.ph280.prol.loopexit:            ; preds = %vec.epilog.scalar.ph280.prol, %vec.epilog.scalar.ph280.preheader
  %indvars.iv154.unr = phi i64 [ %indvars.iv154.ph, %vec.epilog.scalar.ph280.preheader ], [ %indvars.iv.next155.prol, %vec.epilog.scalar.ph280.prol ]
  %indvars.iv152.unr = phi i64 [ %indvars.iv152.ph, %vec.epilog.scalar.ph280.preheader ], [ %indvars.iv.next153.prol, %vec.epilog.scalar.ph280.prol ]
  %i.cd = sub nsw i64 %indvars.iv154.ph, %wide.trip.count159
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %.lr.ph135, label %vec.epilog.scalar.ph280

.lr.ph135:                                        ; preds = %vec.epilog.scalar.ph280.prol.loopexit, %vec.epilog.scalar.ph280, %vec.epilog.middle.block292, %middle.block276
  %i.cf = shl nuw nsw i32 %i.aw, 1
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cg
  store <2 x float> splat (float +inf), ptr %i.ch, align 8, !tbaa !29
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !129 ; 8 uses
  %i.cj = zext nneg i32 %i.aw to i64              ; 4 uses
  %wide.trip.count168 = zext nneg i32 %i.an to i64 ; 5 uses
  %i.ck = add nsw i64 %wide.trip.count168, -3     ; 3 uses
  %min.iters.check303 = icmp ult i64 %i.ck, 16
  br i1 %min.iters.check303, label %scalar.ph.preheader, label %vector.memcheck304

vector.memcheck304:                               ; preds = %.lr.ph135
  %i.cl = shl nuw nsw i64 %wide.trip.count159, 3  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.at, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %i.co = shl nuw nsw i64 %wide.trip.count168, 3  ; 2 uses
  %i.cp = getelementptr i8, ptr %i.at, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cl
  %i.cr = getelementptr i8, ptr %i.cq, i64 -16
  %i.cs = getelementptr nuw i8, ptr %i.ci, i64 24
  %i.ct = getelementptr i8, ptr %i.ci, i64 %i.co
  %bound0305 = icmp ult ptr %i.cn, %i.ct
  %bound1306 = icmp ult ptr %i.cs, %i.cr
  %found.conflict307 = and i1 %bound0305, %bound1306
  br i1 %found.conflict307, label %scalar.ph.preheader, label %vector.ph308

vector.ph308:                                     ; preds = %vector.memcheck304
  %n.vec309 = and i64 %i.ck, -8                   ; 4 uses
  %i.cu = add nsw i64 %n.vec309, %i.cj
  %i.cv = or disjoint i64 %n.vec309, 3
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph308
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next316, %vector.body310 ] ; 3 uses
  %i.cw = add nuw i64 %index311, %i.cj
  %i.cx = shl i64 %index311, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %wide.vec312 = load <16 x float>, ptr %i.cz, align 4, !tbaa !29, !alias.scope !246
  %i.da = shl i64 %i.cw, 3
  %i.db = getelementptr i8, ptr %i.at, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  store <16 x float> %wide.vec312, ptr %i.dc, align 8, !tbaa !29, !alias.scope !247, !noalias !246
  %index.next316 = add nuw i64 %index311, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next316, %n.vec309
  br i1 %i.dd, label %middle.block317, label %vector.body310, !llvm.loop !226

middle.block317:                                  ; preds = %vector.body310
  %cmp.n318 = icmp eq i64 %i.ck, %n.vec309
  br i1 %cmp.n318, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck304, %.lr.ph135, %middle.block317
  %indvars.iv163.ph = phi i64 [ %i.cj, %vector.memcheck304 ], [ %i.cj, %.lr.ph135 ], [ %i.cu, %middle.block317 ] ; 2 uses
  %indvars.iv161.ph = phi i64 [ 3, %vector.memcheck304 ], [ 3, %.lr.ph135 ], [ %i.cv, %middle.block317 ] ; 3 uses
  %i.de = add nuw nsw i64 %wide.trip.count168, 1
  %xtraiter328 = and i64 %i.de, 3                 ; 2 uses
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod329.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv163.prol = phi i64 [ %indvars.iv.next164.prol, %scalar.ph.prol ], [ %indvars.iv163.ph, %scalar.ph.preheader ]
  %indvars.iv161.prol = phi i64 [ %indvars.iv.next162.prol, %scalar.ph.prol ], [ %indvars.iv161.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter330 = phi i64 [ %prol.iter330.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next164.prol = add nuw nsw i64 %indvars.iv163.prol, 1 ; 3 uses
end_hunk_2
begin_hunk_3_@dt_alloc_aligned
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #1

declare i32 @dt_dev_distort_backtransform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @erff(float noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_control_queue_redraw_center() local_unnamed_addr #1

declare i32 @dt_dev_distort_backtransform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_masks_gui_form_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #11

declare void @dt_toast_log(ptr noundef, ...) local_unnamed_addr #1

declare void @dt_dev_masks_list_change(ptr noundef) local_unnamed_addr #1

declare float @dt_masks_form_change_opacity(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @dt_dev_add_masks_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #1

declare void @dt_masks_set_edit_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_iop_update(ptr noundef) local_unnamed_addr #1

declare void @dt_masks_change_form_gui(ptr noundef) local_unnamed_addr #1

declare void @dt_masks_clear_form_gui(ptr noundef) local_unnamed_addr #1

declare ptr @g_list_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_masks_form_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dt_masks_get_from_id(ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @dt_dev_get_zoom_scale_full() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_gradient_init_values(float noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %10) unnamed_addr #0 {
dt_masks_get_image_size.exit:
  %i.a = alloca [8 x float], align 16             ; 12 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !148
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load <2 x i32>, ptr %i.e, align 16, !tbaa !32
  %i.g = sitofp <2 x i32> %i.f to <2 x float>
  %i.h = fmul reassoc nsz arcp contract afn float %0, 1.500000e+00 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !130
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %dt_masks_get_image_size.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.l = fneg reassoc nsz arcp contract afn float %i.h ; 2 uses
  %i.m = load <2 x float>, ptr %i.k, align 4, !tbaa !29 ; 4 uses
  %i.n = extractelement <2 x float> %i.m, i64 1   ; 3 uses
  %i.o = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.p = fsub reassoc nsz arcp contract afn float %i.o, %2 ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn ogt float %i.p, %i.l
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.p, %i.h
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.s = fsub reassoc nsz arcp contract afn float %i.n, %3 ; 2 uses
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.s, %i.l
  %i.u = fcmp reassoc nsz arcp contract afn olt float %i.s, %i.h
  %or.cond50 = and i1 %i.t, %i.u
  br i1 %or.cond50, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b, %dt_masks_get_image_size.exit
  %i.v = fadd reassoc nsz arcp contract afn float %4, 1.000000e+02
  %i.w = insertelement <2 x float> poison, float %4, i64 0
  %i.x = insertelement <2 x float> %i.w, float %5, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b, %bb.c
  %.045 = phi nsz float [ %4, %bb.c ], [ %i.o, %bb.b ], [ %i.o, %bb.a ]
  %.044 = phi nsz float [ %5, %bb.c ], [ %i.n, %bb.b ], [ %i.n, %bb.a ]
  %.043 = phi nsz float [ %i.v, %bb.c ], [ %4, %bb.b ], [ %4, %bb.a ]
  %i.y = phi <2 x float> [ %i.x, %bb.c ], [ %i.m, %bb.b ], [ %i.m, %bb.a ]
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store float %.045, ptr %i.a, align 16, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %.044, ptr %i.aa, align 4, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store float %.043, ptr %i.ab, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store float %5, ptr %i.ac, align 4, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ah = fadd nsz <4 x float> %i.z, <float 1.000000e+01, float -0.000000e+00, float -0.000000e+00, float 1.000000e+01>
  store <4 x float> %i.ah, ptr %i.ad, align 16, !tbaa !29
  %i.ai = call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 4) #12 ; 0 uses
  %i.aj = load <2 x float>, ptr %i.a, align 16, !tbaa !29 ; 3 uses
  %i.ak = fdiv reassoc nsz arcp contract afn <2 x float> %i.aj, %i.g ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  store float %i.al, ptr %6, align 4, !tbaa !29
  %i.am = extractelement <2 x float> %i.ak, i64 1
  store float %i.am, ptr %7, align 4, !tbaa !29
  %i.an = load float, ptr %i.ac, align 4, !tbaa !29
  %i.ao = extractelement <2 x float> %i.aj, i64 1 ; 3 uses
  %i.ap = fsub reassoc nsz arcp contract afn float %i.an, %i.ao
  %i.aq = load float, ptr %i.ab, align 8, !tbaa !29
  %i.ar = extractelement <2 x float> %i.aj, i64 0 ; 3 uses
  %i.as = fsub reassoc nsz arcp contract afn float %i.aq, %i.ar
  %i.at = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ap, float %i.as) ; 2 uses
  %i.au = load float, ptr %i.ag, align 4, !tbaa !29
  %i.av = fsub reassoc nsz arcp contract afn float %i.au, %i.ao
  %i.aw = load float, ptr %i.af, align 8, !tbaa !29
  %i.ax = fsub reassoc nsz arcp contract afn float %i.aw, %i.ar
  %i.ay = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.av, float %i.ax)
  %i.az = load float, ptr %i.ae, align 4, !tbaa !29
  %i.ba = fsub reassoc nsz arcp contract afn float %i.az, %i.ao
  %i.bb = load float, ptr %i.ad, align 16, !tbaa !29
  %i.bc = fsub reassoc nsz arcp contract afn float %i.bb, %i.ar
  %i.bd = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ba, float %i.bc)
  %i.be = fsub reassoc nsz arcp contract afn float %i.ay, %i.bd
  %sincos = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.be) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.bf = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %sin, float %cos)
  %i.bg = fcmp reassoc nsz arcp contract afn olt float %i.bf, 0.000000e+00
  %i.bh = fadd reassoc nsz arcp contract afn float %i.at, f0xC0490FDB
  %spec.select = select nsz i1 %i.bg, float %i.bh, float %i.at
  %i.bi = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.12) #12
  %i.bj = fcmp reassoc nsz arcp contract afn ogt float %i.bi, 1.000000e+00
  br i1 %i.bj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bk = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.12) #12
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.bl = phi reassoc nsz arcp contract afn float [ %i.bk, %bb.d ], [ 1.000000e+00, %._crit_edge ] ; 2 uses
  %i.bm = fmul reassoc nsz arcp contract afn float %spec.select, f0xC2652EE0
  store float %i.bm, ptr %8, align 4, !tbaa !29
  %i.bn = fcmp reassoc nsz arcp contract afn olt float %i.bl, 0.000000e+00
  %i.bo = select reassoc nsz arcp contract afn i1 %i.bn, float 0.000000e+00, float %i.bl
  store float %i.bo, ptr %9, align 4, !tbaa !29
  %i.bp = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.1) #12
  %i.bq = fcmp reassoc nsz arcp contract afn ogt float %i.bp, 2.000000e+00
  br i1 %i.bq, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.1) #12
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %i.br, -2.000000e+00
  br i1 %i.bs, label %bb.h, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f
  %i.bt = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.1) #12
  %i.bu = fcmp reassoc nsz arcp contract afn ogt float %i.bt, 2.000000e+00
  br i1 %i.bu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.bv = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.1) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge, %bb.f
  %i.bw = phi reassoc nsz arcp contract afn float [ -2.000000e+00, %bb.f ], [ %i.bv, %bb.g ], [ 2.000000e+00, %.critedge ]
  store float %i.bw, ptr %10, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
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
  %.not = icmp eq i32 %0, 0                       ; 3 uses
  %or.cond81.v = select i1 %.not, i32 4, i32 3
  %or.cond81 = icmp sgt i32 %5, %or.cond81.v
  br i1 %or.cond81, label %dt_masks_get_image_size.exit, label %.loopexit

dt_masks_get_image_size.exit:                     ; preds = %bb.a
  %.idx = select i1 %.not, i64 24, i64 0
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %i.b = add nsw i32 %5, -3
  %i.c = select i1 %.not, i32 %i.b, i32 %5        ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph66, label %.loopexit

.lr.ph66:                                         ; preds = %dt_masks_get_image_size.exit
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !148
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load i32, ptr %i.h, align 16, !tbaa !126
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to float ; 2 uses
  %i.k = fneg reassoc nsz arcp contract afn float %i.j ; 4 uses
  %i.l = fmul reassoc nnan nsz arcp contract afn float %i.j, 2.000000e+00 ; 4 uses
  %i.m = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %.backedge
  %.065 = phi i32 [ 0, %.lr.ph66 ], [ %.0.be, %.backedge ] ; 4 uses
  %i.n = shl nsw i32 %.065, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !29 ; 4 uses
  %i.r = tail call i1 @llvm.is.fpclass.f32(float %i.q, /* (nan inf zero sub) */ i32 759)
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i32 %.065, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %_gradient_is_canonical.exit.thread, %.critedge
  %.0.be = phi i32 [ %.1.lcssa, %.critedge ], [ %i.ab, %_gradient_is_canonical.exit.thread ], [ %i.s, %bb.c ] ; 2 uses
  %i.t = icmp slt i32 %.0.be, %i.c
  br i1 %i.t, label %bb.b, label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %i.p, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !29 ; 4 uses
  %i.w = tail call i1 @llvm.is.fpclass.f32(float %i.v, /* (nan inf zero sub) */ i32 759)
  %i.x = fcmp reassoc nsz arcp contract afn ult float %i.q, %i.k
  %or.cond.i = or i1 %i.x, %i.w
  %i.y = fcmp reassoc nsz arcp contract afn ugt float %i.q, %i.l
  %or.cond14.i = or i1 %i.y, %or.cond.i
  %i.z = fcmp reassoc nsz arcp contract afn ult float %i.v, %i.k
  %or.cond16.i = or i1 %i.z, %or.cond14.i
  %i.aa = fcmp reassoc nsz arcp contract afn ugt float %i.v, %i.l
  %or.cond57 = or i1 %i.aa, %or.cond16.i
  br i1 %or.cond57, label %_gradient_is_canonical.exit.thread, label %bb.e

_gradient_is_canonical.exit.thread:               ; preds = %bb.d
  %i.ab = add nsw i32 %.065, 1
  br label %.backedge

bb.e:                                             ; preds = %bb.d
  %i.ac = fpext reassoc nsz arcp contract afn float %i.q to double
  %i.ad = fpext reassoc nsz arcp contract afn float %i.v to double
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.ac, double noundef %i.ad) #12
  %.159 = add nsw i32 %.065, 1                    ; 3 uses
  %i.ae = icmp slt i32 %.159, %i.c
  br i1 %i.ae, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.af = sext i32 %.159 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.af, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.idx75 = shl nsw i64 %indvars.iv, 3
  %i.ag = getelementptr inbounds i8, ptr %i.a, i64 %.idx75 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !29 ; 4 uses
  %i.ai = tail call i1 @llvm.is.fpclass.f32(float %i.ah, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ai, label %.critedge.loopexit.split.loop.exit78, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aj = getelementptr i8, ptr %i.ag, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !29 ; 4 uses
  %i.al = tail call i1 @llvm.is.fpclass.f32(float %i.ak, /* (nan inf zero sub) */ i32 759)
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.ah, %i.k
  %or.cond.i50 = or i1 %i.am, %i.al
  %i.an = fcmp reassoc nsz arcp contract afn ugt float %i.ah, %i.l
  %or.cond14.i51 = or i1 %i.an, %or.cond.i50
  %i.ao = fcmp reassoc nsz arcp contract afn ult float %i.ak, %i.k
  %or.cond16.i52 = or i1 %i.ao, %or.cond14.i51
  %i.ap = fcmp reassoc nsz arcp contract afn ugt float %i.ak, %i.l
  %or.cond58 = or i1 %i.ap, %or.cond16.i52
  br i1 %or.cond58, label %.critedge.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = fpext reassoc nsz arcp contract afn float %i.ah to double
  %i.ar = fpext reassoc nsz arcp contract afn float %i.ak to double
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.aq, double noundef %i.ar) #12
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.critedge.loopexit.split.loop.exit:               ; preds = %bb.f
  %i.as = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit78:             ; preds = %.lr.ph
  %i.at = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.critedge.loopexit.split.loop.exit, %.critedge.loopexit.split.loop.exit78, %bb.e
  %.1.lcssa = phi i32 [ %.159, %bb.e ], [ %i.at, %.critedge.loopexit.split.loop.exit78 ], [ %i.as, %.critedge.loopexit.split.loop.exit ], [ %i.c, %bb.g ]
  tail call void @dt_masks_line_stroke(ptr noundef %1, i32 noundef %0, i32 noundef 0, i32 noundef %2, float noundef %3) #12
  br label %.backedge

.loopexit:                                        ; preds = %.backedge, %dt_masks_get_image_size.exit, %bb.a
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
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS6_GList", !11, i64 0}
!13 = !{!"p1 _ZTS17dt_masks_dynbuf_t", !11, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"dt_masks_form_gui_t", !12, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !14, i64 152, !14, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !15, i64 184, !15, i64 192, !8, i64 200, !8, i64 204, !16, i64 208, !11, i64 216, !11, i64 224}
!18 = !{!17, !8, i64 172}
!19 = !{!17, !8, i64 60}
!20 = !{!17, !8, i64 72}
!21 = !{!"p1 _ZTS20dt_masks_functions_t", !11, i64 0}
!22 = !{!"dt_masks_form_t", !12, i64 0, !8, i64 8, !21, i64 16, !7, i64 24, !7, i64 32, !8, i64 160, !8, i64 164}
!23 = !{!22, !12, i64 0}
!24 = !{!"_GList", !11, i64 0, !12, i64 8, !12, i64 16}
!25 = !{!24, !11, i64 0}
!26 = !{!"dt_masks_point_gradient_t", !7, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !8, i64 24}
!27 = !{!26, !14, i64 20}
!28 = !{!22, !8, i64 8}
!29 = !{!14, !14, i64 0}
!30 = !{!26, !14, i64 12}
!31 = !{!26, !14, i64 8}
!32 = !{!8, !8, i64 0}
!33 = !{!12, !12, i64 0}
!34 = !{!17, !12, i64 0}
!35 = !{!"p1 float", !11, i64 0}
!36 = !{!"dt_masks_form_gui_points_t", !35, i64 0, !8, i64 8, !35, i64 16, !8, i64 24, !35, i64 32, !8, i64 40, !8, i64 44}
!37 = !{!36, !35, i64 0}
!38 = !{!36, !8, i64 24}
!39 = !{!36, !35, i64 16}
!40 = !{!36, !8, i64 8}
!41 = !{!"dt_codepath_t", !8, i64 0}
!42 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!43 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!44 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!45 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!46 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!47 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!48 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!49 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!50 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!51 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!52 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!53 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!54 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!55 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!56 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!57 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!58 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!59 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!60 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!61 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!62 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!63 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!64 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!65 = !{!"dt_pthread_mutex_t", !7, i64 0}
!66 = !{!"p1 omnipotent char", !11, i64 0}
!67 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!68 = !{!"_Bool", !7, i64 0}
!69 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!70 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!71 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!72 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!73 = !{!"", !67, i64 0, !65, i64 8, !7, i64 48, !68, i64 96, !68, i64 97, !69, i64 104, !70, i64 112, !71, i64 120, !72, i64 128, !72, i64 136, !72, i64 144}
!74 = !{!"double", !7, i64 0}
!75 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!76 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!77 = !{!"p1 int", !11, i64 0}
!78 = !{!"dt_sys_resources_t", !16, i64 0, !16, i64 8, !77, i64 16, !77, i64 24, !8, i64 32}
!79 = !{!"dt_backthumb_t", !74, i64 0, !74, i64 8, !8, i64 16, !8, i64 20}
!80 = !{!"dt_gimp_t", !8, i64 0, !66, i64 8, !66, i64 16, !8, i64 24, !8, i64 28}
!81 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!82 = !{!"dt_splash_t", !81, i64 0, !81, i64 8, !81, i64 16, !81, i64 24, !8, i64 32}
!83 = !{!"darktable_t", !41, i64 0, !8, i64 4, !8, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !42, i64 48, !43, i64 56, !44, i64 64, !45, i64 72, !46, i64 80, !47, i64 88, !48, i64 96, !49, i64 104, !50, i64 112, !51, i64 120, !52, i64 128, !53, i64 136, !54, i64 144, !55, i64 152, !56, i64 160, !57, i64 168, !58, i64 176, !59, i64 184, !60, i64 192, !61, i64 200, !62, i64 208, !63, i64 216, !64, i64 224, !7, i64 232, !65, i64 2792, !65, i64 2832, !65, i64 2872, !65, i64 2912, !65, i64 2952, !65, i64 2992, !66, i64 3032, !66, i64 3040, !66, i64 3048, !66, i64 3056, !66, i64 3064, !66, i64 3072, !66, i64 3080, !66, i64 3088, !66, i64 3096, !66, i64 3104, !66, i64 3112, !66, i64 3120, !66, i64 3128, !73, i64 3136, !12, i64 3288, !74, i64 3296, !12, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !75, i64 3520, !76, i64 3528, !78, i64 3536, !79, i64 3576, !80, i64 3600, !82, i64 3632, !8, i64 3672}
!84 = !{!83, !8, i64 8}
!85 = !{!"timeval", !16, i64 0, !16, i64 8}
!86 = !{!85, !16, i64 0}
!87 = !{!85, !16, i64 8}
!88 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!89 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!90 = !{!"dt_dev_histogram_collection_params_t", !89, i64 0, !8, i64 8}
!91 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !16, i64 8, !8, i64 16, !8, i64 20}
!92 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !14, i64 16}
!93 = !{!"short", !7, i64 0}
!94 = !{!"", !93, i64 0, !93, i64 2}
!95 = !{!"", !8, i64 0, !7, i64 16}
!96 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !94, i64 48, !95, i64 64, !7, i64 96, !8, i64 112}
!97 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!98 = !{!"dt_dev_distorted_mask_cache_t", !35, i64 0, !92, i64 8, !16, i64 32, !16, i64 40}
!99 = !{!"dt_dev_pixelpipe_iop_t", !15, i64 0, !88, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !90, i64 40, !77, i64 56, !91, i64 64, !7, i64 88, !14, i64 104, !8, i64 108, !8, i64 112, !16, i64 120, !8, i64 128, !8, i64 132, !92, i64 136, !92, i64 156, !92, i64 176, !92, i64 196, !8, i64 216, !8, i64 220, !96, i64 224, !96, i64 352, !7, i64 480, !8, i64 516, !97, i64 520, !98, i64 528, !98, i64 576}
!100 = !{!99, !88, i64 8}
!101 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!102 = !{!"p1 _ZTS25dt_develop_blend_params_t", !11, i64 0}
!103 = !{!"", !97, i64 0, !97, i64 8}
!104 = !{!"", !15, i64 0, !8, i64 8}
!105 = !{!"", !103, i64 0, !104, i64 16}
!106 = !{!"p1 _ZTS7_GSList", !11, i64 0}
!107 = !{!"p1 _ZTS18dt_iop_module_so_t", !11, i64 0}
!108 = !{!"dt_iop_module_t", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !101, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !77, i64 608, !91, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !44, i64 664, !8, i64 672, !8, i64 676, !11, i64 680, !11, i64 688, !8, i64 696, !11, i64 704, !65, i64 712, !11, i64 752, !11, i64 760, !102, i64 768, !102, i64 776, !11, i64 784, !105, i64 792, !81, i64 824, !81, i64 832, !81, i64 840, !81, i64 848, !81, i64 856, !81, i64 864, !81, i64 872, !8, i64 880, !81, i64 888, !81, i64 896, !81, i64 904, !106, i64 912, !106, i64 920, !81, i64 928, !81, i64 936, !8, i64 944, !107, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !81, i64 1096, !11, i64 1104, !8, i64 1112}
!109 = !{!108, !44, i64 664}
!110 = !{!108, !8, i64 480}
!111 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_3
