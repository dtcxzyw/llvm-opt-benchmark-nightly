Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/paint?download=true
inline.NumInlined: 21
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dtgtk_cairo_paint_masks_vertgradient:bb.a

; Function Attrs: nounwind uwtable
define void @dtgtk_cairo_paint_masks_brush_and_inverse(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct._cairo_matrix, align 8      ; 5 uses
  tail call void @cairo_save(ptr noundef %0) #8
  tail call void @cairo_set_line_cap(ptr noundef %0, i32 noundef 1) #8
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to double ; 3 uses
  %i.c = sitofp reassoc nsz arcp contract afn i32 %1 to double
  %i.d = sitofp reassoc nsz arcp contract afn i32 %3 to double
  %i.e = fmul reassoc nnan nsz arcp contract afn double %i.d, 5.000000e-01
  %i.f = fadd reassoc nsz arcp contract afn double %i.e, %i.c
  %.neg = fmul reassoc nnan nsz arcp contract afn double %i.b, -5.000000e-01 ; 2 uses
  %i.g = fadd reassoc nsz arcp contract afn double %.neg, %i.f
  %i.h = sitofp reassoc nsz arcp contract afn i32 %2 to double
  %i.i = sitofp reassoc nsz arcp contract afn i32 %4 to double
  %i.j = fmul reassoc nnan nsz arcp contract afn double %i.i, 5.000000e-01
  %i.k = fadd reassoc nsz arcp contract afn double %i.j, %i.h
  %i.l = fadd reassoc nsz arcp contract afn double %i.k, %.neg
  tail call void @cairo_translate(ptr noundef %0, double noundef %i.g, double noundef %i.l) #8
  tail call void @cairo_scale(ptr noundef %0, double noundef %i.b, double noundef %i.b) #8
  tail call void @cairo_translate(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @cairo_get_matrix(ptr noundef %0, ptr noundef nonnull %7) #8
  %i.m = load double, ptr %7, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !14
  %i.p = call reassoc nsz arcp contract afn double @hypot(double noundef %i.m, double noundef %i.o) #9
  %i.q = fdiv reassoc nsz arcp contract afn double 1.618000e+00, %i.p
  call void @cairo_set_line_width(ptr noundef %0, double noundef %i.q) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @cairo_arc(ptr noundef %0, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 4.000000e-01, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #8
  call void @cairo_stroke(ptr noundef %0) #8
  call void @cairo_arc(ptr noundef %0, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 4.000000e-01, double noundef f0x4012D97C7F3321D2, double noundef f0x3FF921FB54442D18) #8
  call void @cairo_fill(ptr noundef %0) #8
  call void @cairo_move_to(ptr noundef %0, double noundef -5.000000e-02, double noundef 1.000000e+00) #8
  call void @cairo_arc_negative(ptr noundef %0, double noundef 2.500000e-01, double noundef 8.500000e-01, double noundef 1.500000e-01, double noundef f0x3FF921FB54442D18, double noundef f0x400C260F3FA8846E) #8
  call void @cairo_arc(ptr noundef %0, double noundef -2.360000e-01, double noundef f0x3FE70A3D70A3D70A, double noundef 3.500000e-01, double noundef f0x3FD015BF9217271A, double noundef f0x3FEA23574D659F8A) #8
  call void @cairo_close_path(ptr noundef %0) #8
  call void @cairo_fill(ptr noundef %0) #8
  call void @cairo_set_line_width(ptr noundef %0, double noundef 1.000000e-02) #8
  call void @cairo_arc(ptr noundef %0, double noundef f0x3FEF5C28F5C28F5C, double noundef 0.000000e+00, double noundef 5.500000e-02, double noundef f0x400E28C731EB6950, double noundef f0x3FE41B2F769CF0E0) #8
  call void @cairo_arc(ptr noundef %0, double noundef 4.800000e-01, double noundef f0x3FE70A3D70A3D70A, double noundef f0x3FB70A3D70A3D70A, double noundef f0x3FE41B2F769CF0E0, double noundef f0x400E28C731EB6950) #8
  call void @cairo_close_path(ptr noundef %0) #8
  call void @cairo_stroke(ptr noundef %0) #8
  call void @cairo_restore(ptr noundef %0) #8
  ret void
}

declare void @cairo_arc_negative(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @dtgtk_cairo_paint_masks_brush(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct._cairo_matrix, align 8      ; 5 uses
  tail call void @cairo_save(ptr noundef %0) #8
  tail call void @cairo_set_line_cap(ptr noundef %0, i32 noundef 1) #8
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to double ; 2 uses
  %i.c = fmul reassoc nnan nsz arcp contract afn double %i.b, 9.000000e-01 ; 2 uses
  %i.d = sitofp reassoc nsz arcp contract afn i32 %1 to double
  %i.e = sitofp reassoc nsz arcp contract afn i32 %3 to double
  %i.f = fmul reassoc nnan nsz arcp contract afn double %i.e, 5.000000e-01
  %i.g = fadd reassoc nsz arcp contract afn double %i.f, %i.d
  %.neg = fmul reassoc nnan nsz arcp contract afn double %i.b, -4.500000e-01 ; 2 uses
  %i.h = fadd reassoc nsz arcp contract afn double %.neg, %i.g
  %i.i = sitofp reassoc nsz arcp contract afn i32 %2 to double
  %i.j = sitofp reassoc nsz arcp contract afn i32 %4 to double
  %i.k = fmul reassoc nnan nsz arcp contract afn double %i.j, 5.000000e-01
  %i.l = fadd reassoc nsz arcp contract afn double %i.k, %i.i
  %i.m = fadd reassoc nsz arcp contract afn double %i.l, %.neg
  tail call void @cairo_translate(ptr noundef %0, double noundef %i.h, double noundef %i.m) #8
  tail call void @cairo_scale(ptr noundef %0, double noundef %i.c, double noundef %i.c) #8
  tail call void @cairo_translate(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @cairo_get_matrix(ptr noundef %0, ptr noundef nonnull %7) #8
  %i.n = load double, ptr %7, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !14
  %i.q = call reassoc nsz arcp contract afn double @hypot(double noundef %i.n, double noundef %i.p) #9
  %i.r = fdiv reassoc nsz arcp contract afn double 1.618000e+00, %i.q
  call void @cairo_set_line_width(ptr noundef %0, double noundef %i.r) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @cairo_move_to(ptr noundef %0, double noundef -5.000000e-02, double noundef 1.000000e+00) #8
  call void @cairo_arc_negative(ptr noundef %0, double noundef 2.500000e-01, double noundef 8.500000e-01, double noundef 1.500000e-01, double noundef f0x3FF921FB54442D18, double noundef f0x400C260F3FA8846E) #8
  call void @cairo_arc(ptr noundef %0, double noundef -2.360000e-01, double noundef f0x3FE70A3D70A3D70A, double noundef 3.500000e-01, double noundef f0x3FD015BF9217271A, double noundef f0x3FEA23574D659F8A) #8
  call void @cairo_close_path(ptr noundef %0) #8
  call void @cairo_stroke(ptr noundef %0) #8
  call void @cairo_move_to(ptr noundef %0, double noundef 0.000000e+00, double noundef 1.000000e+00) #8
  call void @cairo_arc_negative(ptr noundef %0, double noundef 2.000000e-01, double noundef 8.000000e-01, double noundef 1.000000e-01, double noundef f0x3FF41B2F769CF0E0, double noundef f0x4017E0485CDA5E0A) #8
  call void @cairo_stroke(ptr noundef %0) #8
  call void @cairo_set_line_width(ptr noundef %0, double noundef 1.000000e-02) #8
  call void @cairo_arc(ptr noundef %0, double noundef f0x3FEF5C28F5C28F5C, double noundef 0.000000e+00, double noundef 5.500000e-02, double noundef f0x400E28C731EB6950, double noundef f0x3FE41B2F769CF0E0) #8
  call void @cairo_arc(ptr noundef %0, double noundef 4.800000e-01, double noundef f0x3FE70A3D70A3D70A, double noundef f0x3FB70A3D70A3D70A, double noundef f0x3FE41B2F769CF0E0, double noundef f0x400E28C731EB6950) #8
  call void @cairo_close_path(ptr noundef %0) #8
  call void @cairo_fill(ptr noundef %0) #8
  call void @cairo_restore(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @dtgtk_cairo_paint_masks_uniform(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct._cairo_matrix, align 8      ; 5 uses
  tail call void @cairo_save(ptr noundef %0) #8
  tail call void @cairo_set_line_cap(ptr noundef %0, i32 noundef 1) #8
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to double ; 2 uses
  %i.c = fmul reassoc nnan nsz arcp contract afn double %i.b, f0x3FEE666666666666 ; 2 uses
  %i.d = sitofp reassoc nsz arcp contract afn i32 %1 to double
  %i.e = sitofp reassoc nsz arcp contract afn i32 %3 to double
  %i.f = fmul reassoc nnan nsz arcp contract afn double %i.e, 5.000000e-01
  %i.g = fadd reassoc nsz arcp contract afn double %i.f, %i.d
  %.neg = fmul reassoc nnan nsz arcp contract afn double %i.b, -4.750000e-01 ; 2 uses
  %i.h = fadd reassoc nsz arcp contract afn double %.neg, %i.g
  %i.i = sitofp reassoc nsz arcp contract afn i32 %2 to double
  %i.j = sitofp reassoc nsz arcp contract afn i32 %4 to double
  %i.k = fmul reassoc nnan nsz arcp contract afn double %i.j, 5.000000e-01
  %i.l = fadd reassoc nsz arcp contract afn double %i.k, %i.i
  %i.m = fadd reassoc nsz arcp contract afn double %i.l, %.neg
  tail call void @cairo_translate(ptr noundef %0, double noundef %i.h, double noundef %i.m) #8
  tail call void @cairo_scale(ptr noundef %0, double noundef %i.c, double noundef %i.c) #8
  tail call void @cairo_translate(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @cairo_get_matrix(ptr noundef %0, ptr noundef nonnull %7) #8
  %i.n = load double, ptr %7, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !14
  %i.q = call reassoc nsz arcp contract afn double @hypot(double noundef %i.n, double noundef %i.p) #9
  %i.r = fdiv reassoc nsz arcp contract afn double 1.618000e+00, %i.q
  call void @cairo_set_line_width(ptr noundef %0, double noundef %i.r) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @cairo_arc(ptr noundef %0, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef f0xC00921FB54442D18, double noundef f0x400921FB54442D18) #8
  call void @cairo_stroke(ptr noundef %0) #8
  call void @cairo_restore(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @dtgtk_cairo_paint_masks_drawn(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct._cairo_matrix, align 8      ; 5 uses
  tail call void @cairo_save(ptr noundef %0) #8
  tail call void @cairo_set_line_cap(ptr noundef %0, i32 noundef 1) #8
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to double ; 2 uses
  %i.c = fmul reassoc nnan nsz arcp contract afn double %i.b, 9.000000e-01 ; 2 uses
  %i.d = sitofp reassoc nsz arcp contract afn i32 %1 to double
  %i.e = sitofp reassoc nsz arcp contract afn i32 %3 to double
  %i.f = fmul reassoc nnan nsz arcp contract afn double %i.e, 5.000000e-01
  %i.g = fadd reassoc nsz arcp contract afn double %i.f, %i.d
  %.neg = fmul reassoc nnan nsz arcp contract afn double %i.b, -4.500000e-01 ; 2 uses
  %i.h = fadd reassoc nsz arcp contract afn double %.neg, %i.g
  %i.i = sitofp reassoc nsz arcp contract afn i32 %2 to double
  %i.j = sitofp reassoc nsz arcp contract afn i32 %4 to double
  %i.k = fmul reassoc nnan nsz arcp contract afn double %i.j, 5.000000e-01
  %i.l = fadd reassoc nsz arcp contract afn double %i.k, %i.i
  %i.m = fadd reassoc nsz arcp contract afn double %i.l, %.neg
  tail call void @cairo_translate(ptr noundef %0, double noundef %i.h, double noundef %i.m) #8
  tail call void @cairo_scale(ptr noundef %0, double noundef %i.c, double noundef %i.c) #8
  tail call void @cairo_translate(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @cairo_get_matrix(ptr noundef %0, ptr noundef nonnull %7) #8
  %i.n = load double, ptr %7, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !14
  %i.q = call reassoc nsz arcp contract afn double @hypot(double noundef %i.n, double noundef %i.p) #9
  %i.r = fdiv reassoc nsz arcp contract afn double 1.618000e+00, %i.q
  call void @cairo_set_line_width(ptr noundef %0, double noundef %i.r) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @cairo_move_to(ptr noundef %0, double noundef 1.000000e+00, double noundef 1.000000e+00) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 9.000000e-01, double noundef f0x3FE6666666666666) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 2.000000e-01, double noundef 0.000000e+00) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 0.000000e+00, double noundef 2.000000e-01) #8
  call void @cairo_line_to(ptr noundef %0, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 1.000000e+00, double noundef 1.000000e+00) #8
  call void @cairo_stroke(ptr noundef %0) #8
  call void @cairo_move_to(ptr noundef %0, double noundef 8.000000e-01, double noundef 8.000000e-01) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 1.500000e-01, double noundef 1.500000e-01) #8
  call void @cairo_stroke(ptr noundef %0) #8
  call void @cairo_move_to(ptr noundef %0, double noundef 9.000000e-01, double noundef f0x3FE6666666666666) #8
  call void @cairo_line_to(ptr noundef %0, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #8
  call void @cairo_stroke(ptr noundef %0) #8
  call void @cairo_move_to(ptr noundef %0, double noundef 1.050000e+00, double noundef 1.050000e+00) #8
  call void @cairo_line_to(ptr noundef %0, double noundef f0x3FEE666666666666, double noundef f0x3FEE666666666666) #8
  call void @cairo_stroke(ptr noundef %0) #8
  call void @cairo_restore(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_gradient_arc(ptr noundef %0, double noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10) local_unnamed_addr #0 {
bb.a:
  tail call void @cairo_set_line_width(ptr noundef %0, double noundef %1) #8
  %i.a = add nsw i32 %2, 1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #10 ; 8 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fadd reassoc nsz arcp contract afn double %6, f0x400921FB54442D18 ; 3 uses
  %i.f = fadd reassoc nsz arcp contract afn double %7, f0x400921FB54442D18
  %i.g = sitofp reassoc nsz arcp contract afn i32 %2 to double ; 4 uses
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %iter.check, label %._crit_edge49

iter.check:                                       ; preds = %bb.b
  %i.i = fsub reassoc nsz arcp contract afn double %7, %6 ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i32 %2, 16
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.i, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert60 = insertelement <4 x double> poison, double %i.g, i64 0
  %broadcast.splat61 = shufflevector <4 x double> %broadcast.splatinsert60, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert62 = insertelement <4 x double> poison, double %i.e, i64 0
  %broadcast.splat63 = shufflevector <4 x double> %broadcast.splatinsert62, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.k = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat61
  %i.l = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat61
  %i.m = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat61
  %i.n = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat61
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add.2 = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.3 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.o = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.p = uitofp nneg <4 x i32> %step.add to <4 x double>
  %i.q = uitofp nneg <4 x i32> %step.add.2 to <4 x double>
  %i.r = uitofp nneg <4 x i32> %step.add.3 to <4 x double>
  %i.s = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat, %i.o
  %i.t = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat, %i.p
  %i.u = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat, %i.q
  %i.v = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat, %i.r
  %i.w = fmul reassoc nsz arcp contract afn <4 x double> %i.s, %i.k
  %i.x = fmul reassoc nsz arcp contract afn <4 x double> %i.t, %i.l
  %i.y = fmul reassoc nsz arcp contract afn <4 x double> %i.u, %i.m
  %i.z = fmul reassoc nsz arcp contract afn <4 x double> %i.v, %i.n
  %i.aa = fadd reassoc nsz arcp contract afn <4 x double> %broadcast.splat63, %i.w
  %i.ab = fadd reassoc nsz arcp contract afn <4 x double> %broadcast.splat63, %i.x
  %i.ac = fadd reassoc nsz arcp contract afn <4 x double> %broadcast.splat63, %i.y
  %i.ad = fadd reassoc nsz arcp contract afn <4 x double> %broadcast.splat63, %i.z
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  store <4 x double> %i.aa, ptr %i.ae, align 8, !tbaa !15
  store <4 x double> %i.ab, ptr %i.af, align 8, !tbaa !15
  store <4 x double> %i.ac, ptr %i.ag, align 8, !tbaa !15
  store <4 x double> %i.ad, ptr %i.ah, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph48, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec64 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert65 = insertelement <4 x double> poison, double %i.i, i64 0
  %broadcast.splat66 = shufflevector <4 x double> %broadcast.splatinsert65, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <4 x double> poison, double %i.g, i64 0
  %broadcast.splat68 = shufflevector <4 x double> %broadcast.splatinsert67, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <4 x double> poison, double %i.e, i64 0
  %broadcast.splat70 = shufflevector <4 x double> %broadcast.splatinsert69, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aj = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert71 = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat72 = shufflevector <4 x i32> %broadcast.splatinsert71, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat72, <i32 0, i32 1, i32 2, i32 3>
  %i.ak = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat68
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next75, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind74 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next76, %vec.epilog.vector.body ] ; 2 uses
  %i.al = uitofp nneg <4 x i32> %vec.ind74 to <4 x double>
  %i.am = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat66, %i.al
  %i.an = fmul reassoc nsz arcp contract afn <4 x double> %i.am, %i.ak
  %i.ao = fadd reassoc nsz arcp contract afn <4 x double> %broadcast.splat70, %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index73
  store <4 x double> %i.ao, ptr %i.ap, align 8, !tbaa !15
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %vec.ind.next76 = add <4 x i32> %vec.ind74, splat (i32 4)
  %i.aq = icmp eq i64 %index.next75, %n.vec64
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.vec64, %wide.trip.count
  br i1 %cmp.n77, label %.lr.ph48, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec64, %vec.epilog.middle.block ]
  %i.ar = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.g
  br label %vec.epilog.scalar.ph

.lr.ph48:                                         ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.as = zext nneg i32 %2 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.as
  store double %i.f, ptr %i.at, align 8, !tbaa !15
  %i.au = fsub reassoc nsz arcp contract afn double %9, %8
  %wide.trip.count56 = zext nneg i32 %2 to i64
  %i.av = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.g
  br label %bb.c

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  %i.ax = uitofp nsz nneg i32 %i.aw to double
  %i.ay = fmul reassoc nsz arcp contract afn double %i.i, %i.ax
  %i.az = fmul reassoc nsz arcp contract afn double %i.ay, %i.ar
  %i.ba = fadd reassoc nsz arcp contract afn double %i.e, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.ba, ptr %i.bb, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph48, label %vec.epilog.scalar.ph, !llvm.loop !64

._crit_edge49:                                    ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph48, %bb.c
  %indvars.iv53 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next54, %bb.c ] ; 3 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv53 to i32
  %i.bd = uitofp nsz nneg i32 %i.bc to double
  %i.be = fmul reassoc nsz arcp contract afn double %i.au, %i.bd
  %i.bf = fmul reassoc nsz arcp contract afn double %i.be, %i.av
  %i.bg = fadd reassoc nsz arcp contract afn double %i.bf, %8 ; 3 uses
  tail call void @cairo_set_source_rgba(ptr noundef %0, double noundef %i.bg, double noundef %i.bg, double noundef %i.bg, double noundef %10) #8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv53
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !15
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next54
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !15
  tail call void @cairo_arc(ptr noundef %0, double noundef %3, double noundef %4, double noundef %5, double noundef %i.bi, double noundef %i.bk) #8
  tail call void @cairo_stroke(ptr noundef %0) #8
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %._crit_edge49, label %bb.c

bb.d:                                             ; preds = %bb.a, %._crit_edge49
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @dtgtk_cairo_paint_masks_parametric(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct._cairo_matrix, align 8      ; 5 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 3 uses
  %i.c = alloca double, align 8                   ; 3 uses
  %i.d = alloca double, align 8                   ; 4 uses
  tail call void @cairo_save(ptr noundef %0) #8
  tail call void @cairo_set_line_cap(ptr noundef %0, i32 noundef 1) #8
  %i.e = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %i.f = sitofp reassoc nsz arcp contract afn i32 %i.e to double ; 2 uses
  %i.g = fmul reassoc nnan nsz arcp contract afn double %i.f, f0x3FEE666666666666 ; 2 uses
  %i.h = sitofp reassoc nsz arcp contract afn i32 %1 to double
  %i.i = sitofp reassoc nsz arcp contract afn i32 %3 to double
  %i.j = fmul reassoc nnan nsz arcp contract afn double %i.i, 5.000000e-01
  %i.k = fadd reassoc nsz arcp contract afn double %i.j, %i.h
  %.neg = fmul reassoc nnan nsz arcp contract afn double %i.f, -4.750000e-01 ; 2 uses
  %i.l = fadd reassoc nsz arcp contract afn double %.neg, %i.k
  %i.m = sitofp reassoc nsz arcp contract afn i32 %2 to double
  %i.n = sitofp reassoc nsz arcp contract afn i32 %4 to double
  %i.o = fmul reassoc nnan nsz arcp contract afn double %i.n, 5.000000e-01
  %i.p = fadd reassoc nsz arcp contract afn double %i.o, %i.m
  %i.q = fadd reassoc nsz arcp contract afn double %i.p, %.neg
  tail call void @cairo_translate(ptr noundef %0, double noundef %i.l, double noundef %i.q) #8
  tail call void @cairo_scale(ptr noundef %0, double noundef %i.g, double noundef %i.g) #8
  tail call void @cairo_translate(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @cairo_get_matrix(ptr noundef %0, ptr noundef nonnull %7) #8
  %i.r = load double, ptr %7, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !14
  %i.u = call reassoc nsz arcp contract afn double @hypot(double noundef %i.r, double noundef %i.t) #9
  %i.v = fdiv reassoc nsz arcp contract afn double 1.618000e+00, %i.u
  call void @cairo_set_line_width(ptr noundef %0, double noundef %i.v) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.w = call ptr @cairo_get_source(ptr noundef %0) #8
  %i.x = call i32 @cairo_pattern_get_rgba(ptr noundef %i.w, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = and i32 %5, 32
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = load double, ptr %i.a, align 8          ; 3 uses
  %i.ab = fcmp reassoc nsz arcp contract afn olt double %i.aa, 5.000000e-01
  %or.cond = and i1 %i.z, %i.ab
  %i.ac = fmul reassoc nsz arcp contract afn double %i.aa, 2.500000e-01
  %i.ad = select reassoc nsz arcp contract afn i1 %or.cond, double 8.000000e-01, double %i.ac
  %i.ae = load double, ptr %i.d, align 8, !tbaa !15
  call void @_gradient_arc(ptr noundef %0, double noundef 1.250000e-01, i32 noundef 16, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef f0xBFF0C152382D7365, double noundef f0x4010C152382D7365, double noundef %i.ad, double noundef %i.aa, double noundef %i.ae)
  call void @cairo_move_to(ptr noundef %0, double noundef 1.000000e+00, double noundef 2.000000e-01) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 1.200000e+00, double noundef 2.000000e-01) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 1.100000e+00, double noundef 0.000000e+00) #8
  call void @cairo_fill(ptr noundef %0) #8
  call void @cairo_move_to(ptr noundef %0, double noundef 1.100000e+00, double noundef 6.000000e-01) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 1.325000e+00, double noundef 5.500000e-01) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 1.275000e+00, double noundef 7.500000e-01) #8
  call void @cairo_fill(ptr noundef %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @cairo_restore(ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare i32 @cairo_pattern_get_rgba(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cairo_get_source(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @dtgtk_cairo_paint_masks_drawn_and_parametric(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct._cairo_matrix, align 8      ; 5 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 3 uses
  %i.c = alloca double, align 8                   ; 3 uses
  %i.d = alloca double, align 8                   ; 4 uses
  tail call void @cairo_save(ptr noundef %0) #8
  tail call void @cairo_set_line_cap(ptr noundef %0, i32 noundef 1) #8
  %i.e = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %i.f = sitofp reassoc nsz arcp contract afn i32 %i.e to double ; 2 uses
  %i.g = fmul reassoc nnan nsz arcp contract afn double %i.f, 1.050000e+00 ; 2 uses
  %i.h = sitofp reassoc nsz arcp contract afn i32 %1 to double
  %i.i = sitofp reassoc nsz arcp contract afn i32 %3 to double
  %i.j = fmul reassoc nnan nsz arcp contract afn double %i.i, 5.000000e-01
  %i.k = fadd reassoc nsz arcp contract afn double %i.j, %i.h
  %.neg = fmul reassoc nnan nsz arcp contract afn double %i.f, -5.250000e-01 ; 2 uses
  %i.l = fadd reassoc nsz arcp contract afn double %.neg, %i.k
  %i.m = sitofp reassoc nsz arcp contract afn i32 %2 to double
  %i.n = sitofp reassoc nsz arcp contract afn i32 %4 to double
  %i.o = fmul reassoc nnan nsz arcp contract afn double %i.n, 5.000000e-01
  %i.p = fadd reassoc nsz arcp contract afn double %i.o, %i.m
  %i.q = fadd reassoc nsz arcp contract afn double %i.p, %.neg
  tail call void @cairo_translate(ptr noundef %0, double noundef %i.l, double noundef %i.q) #8
  tail call void @cairo_scale(ptr noundef %0, double noundef %i.g, double noundef %i.g) #8
  tail call void @cairo_translate(ptr noundef %0, double noundef -1.000000e-01, double noundef -5.000000e-02) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @cairo_get_matrix(ptr noundef %0, ptr noundef nonnull %7) #8
  %i.r = load double, ptr %7, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !14
  %i.u = call reassoc nsz arcp contract afn double @hypot(double noundef %i.r, double noundef %i.t) #9
  %i.v = fdiv reassoc nsz arcp contract afn double 1.618000e+00, %i.u
  call void @cairo_set_line_width(ptr noundef %0, double noundef %i.v) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.w = call ptr @cairo_get_source(ptr noundef %0) #8
  %i.x = call i32 @cairo_pattern_get_rgba(ptr noundef %i.w, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = and i32 %5, 32
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = load double, ptr %i.a, align 8          ; 2 uses
  %i.ab = fcmp reassoc nsz arcp contract afn olt double %i.aa, 5.000000e-01
  %or.cond = select i1 %i.z, i1 %i.ab, i1 false
  %i.ac = fmul reassoc nsz arcp contract afn double %i.aa, 2.500000e-01
  %i.ad = select reassoc nsz arcp contract afn i1 %or.cond, double 8.000000e-01, double %i.ac
  call void @cairo_save(ptr noundef %0) #8
  %i.ae = load double, ptr %i.a, align 8, !tbaa !15
  %i.af = load double, ptr %i.d, align 8, !tbaa !15
  call void @_gradient_arc(ptr noundef %0, double noundef 1.250000e-01, i32 noundef 16, double noundef 7.500000e-01, double noundef 6.000000e-01, double noundef 4.000000e-01, double noundef f0xBFF0C152382D7365, double noundef f0x4010C152382D7365, double noundef %i.ad, double noundef %i.ae, double noundef %i.af)
  call void @cairo_move_to(ptr noundef %0, double noundef 1.200000e+00, double noundef 3.500000e-01) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 1.350000e+00, double noundef 3.500000e-01) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 1.275000e+00, double noundef 1.500000e-01) #8
  call void @cairo_fill(ptr noundef %0) #8
  call void @cairo_move_to(ptr noundef %0, double noundef 1.250000e+00, double noundef f0x3FE6666666666666) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 1.400000e+00, double noundef 6.000000e-01) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 1.400000e+00, double noundef 8.000000e-01) #8
  call void @cairo_fill(ptr noundef %0) #8
  call void @cairo_restore(ptr noundef %0) #8
  call void @cairo_scale(ptr noundef %0, double noundef 8.000000e-01, double noundef 8.000000e-01) #8
  call void @cairo_translate(ptr noundef %0, double noundef 5.000000e-02, double noundef -5.000000e-02) #8
  call void @cairo_move_to(ptr noundef %0, double noundef 1.000000e+00, double noundef 1.000000e+00) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 9.000000e-01, double noundef f0x3FE6666666666666) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 2.000000e-01, double noundef 0.000000e+00) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 0.000000e+00, double noundef 2.000000e-01) #8
  call void @cairo_line_to(ptr noundef %0, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 1.000000e+00, double noundef 1.000000e+00) #8
  call void @cairo_stroke(ptr noundef %0) #8
  call void @cairo_move_to(ptr noundef %0, double noundef 8.000000e-01, double noundef 8.000000e-01) #8
  call void @cairo_line_to(ptr noundef %0, double noundef 2.500000e-01, double noundef 2.500000e-01) #8
  call void @cairo_stroke(ptr noundef %0) #8
  call void @cairo_move_to(ptr noundef %0, double noundef 9.000000e-01, double noundef f0x3FE6666666666666) #8
  call void @cairo_line_to(ptr noundef %0, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #8
  call void @cairo_stroke(ptr noundef %0) #8
  call void @cairo_move_to(ptr noundef %0, double noundef 1.050000e+00, double noundef 1.050000e+00) #8
  call void @cairo_line_to(ptr noundef %0, double noundef f0x3FEE666666666666, double noundef f0x3FEE666666666666) #8
  call void @cairo_stroke(ptr noundef %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @cairo_restore(ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
end_hunk_0
