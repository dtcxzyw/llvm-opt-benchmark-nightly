Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvrender_core_svg?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@svg_rgradstyle:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sitofp i32 %i.f to double
  %i.i = fmul nnan double %i.h, f0x400921FB54442D18
  %i.j = fdiv double %i.i, 1.800000e+02           ; 2 uses
  %i.k = tail call double @cos(double noundef %i.j) #11
  %i.l = fadd double %i.k, 1.000000e+00
  %i.m = fmul double %i.l, 5.000000e+01
  %i.n = tail call double @llvm.round.f64(double %i.m)
  %i.o = tail call double @sin(double noundef %i.j) #11
  %i.p = fsub double 1.000000e+00, %i.o
  %i.q = fmul double %i.p, 5.000000e+01
  %i.r = tail call double @llvm.round.f64(double %i.q)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.019 = phi double [ %i.r, %bb.b ], [ 5.000000e+01, %bb.a ]
  %.0 = phi double [ %i.n, %bb.b ], [ 5.000000e+01, %bb.a ]
  %i.s = tail call i32 @gvputs(ptr noundef nonnull %0, ptr noundef nonnull @.str.104) #11 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call i32 @gvputs_xml(ptr noundef nonnull %0, ptr noundef nonnull %i.u) #11 ; 0 uses
  %i.w = tail call i32 @gvputc(ptr noundef nonnull %0, i32 noundef 95) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.105, i32 noundef %i.a, double noundef %.0, double noundef %.019) #11
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  tail call fastcc void @svg_print_stop(ptr noundef nonnull %0, double noundef 0.000000e+00, ptr noundef nonnull byval(%struct.color_s) align 8 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  tail call fastcc void @svg_print_stop(ptr noundef nonnull %0, double noundef 1.000000e+00, ptr noundef nonnull byval(%struct.color_s) align 8 %i.y)
  %i.z = tail call i32 @gvputs(ptr noundef nonnull %0, ptr noundef nonnull @.str.106) #11 ; 0 uses
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc void @svg_grstyle(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 10 uses
  %i.c = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.107) #11 ; 0 uses
  switch i32 %1, label %bb.h [
    i32 2, label %bb.b
    i32 3, label %bb.e
    i32 0, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @gvputs(ptr noundef nonnull %0, ptr noundef nonnull @.str.108) #11 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %.not51 = icmp eq ptr %i.f, null
  br i1 %.not51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @gvputs_xml(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #11 ; 0 uses
  %i.h = tail call i32 @gvputc(ptr noundef nonnull %0, i32 noundef 95) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.109, i32 noundef %2) #11
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.i = tail call i32 @gvputs(ptr noundef nonnull %0, ptr noundef nonnull @.str.108) #11 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  %.not50 = icmp eq ptr %i.k, null
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @gvputs_xml(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #11 ; 0 uses
  %i.m = tail call i32 @gvputc(ptr noundef nonnull %0, i32 noundef 95) #11 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.110, i32 noundef %2) #11
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call fastcc void @svg_print_paint(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.color_s) align 8 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.p = load i32, ptr %i.o, align 8, !tbaa !116
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 75
  %i.s = load i8, ptr %i.r, align 1, !tbaa !49    ; 2 uses
  %.off = add i8 %i.s, -1
  %switch = icmp ult i8 %.off, -2
  br i1 %switch, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.t = uitofp i8 %i.s to double
  %i.u = fdiv double %i.t, 2.550000e+02
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.111, double noundef %i.u) #11
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.v = tail call i32 @gvputs(ptr noundef nonnull %0, ptr noundef nonnull @.str.112) #11 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.g, %bb.h, %bb.j, %bb.k, %bb.d
  %i.w = tail call i32 @gvputs(ptr noundef nonnull %0, ptr noundef nonnull @.str.113) #11 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call fastcc void @svg_print_paint(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.color_s) align 8 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !117
  %i.aa = fadd double %i.z, -1.000000e+00
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = fcmp olt double %i.ab, 5.000000e-03
  br i1 %i.ac, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call i32 @gvputs(ptr noundef nonnull %0, ptr noundef nonnull @.str.114) #11 ; 0 uses
  %i.ae = load double, ptr %i.y, align 8, !tbaa !117
  tail call void @gvprintdouble(ptr noundef nonnull %0, double noundef %i.ae) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !118
  switch i32 %i.ag, label %bb.p [
    i32 1, label %.sink.split
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.o
  %sdotarray.sink = phi ptr [ @sdotarray, %bb.o ], [ @sdasharray, %bb.n ]
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.115, ptr noundef nonnull %sdotarray.sink) #11
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !56
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 35
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !49  ; 2 uses
  %.off54 = add i8 %i.al, -1
  %switch55 = icmp ult i8 %.off54, -2
  br i1 %switch55, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.am = uitofp i8 %i.al to double
  %i.an = fdiv double %i.am, 2.550000e+02
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.116, double noundef %i.an) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %i.ao = tail call i32 @gvputc(ptr noundef nonnull %0, i32 noundef 34) #11 ; 0 uses
  ret void
}

declare void @get_gradient_points(ptr noundef, ptr noundef, i64 noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @svg_print_stop(ptr noundef %0, double noundef %1, ptr nofree noundef readonly byval(%struct.color_s) align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %1)
  %i.b = fcmp olt double %i.a, 5.000000e-04
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.95) #11 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = fadd double %1, -1.000000e+00
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp olt double %i.e, 5.000000e-04
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.96) #11 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.97, double noundef %1) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.717.0.copyload = load i32, ptr %.sroa.717.0..sroa_idx, align 8 ; 3 uses
  %i.h = ptrtoint ptr %.sroa.0.0.copyload to i64  ; 4 uses
  %i.i = lshr i64 %i.h, 24
  %i.j = trunc i64 %i.i to i8                     ; 2 uses
  switch i32 %.sroa.717.0.copyload, label %bb.k [
    i32 4, label %bb.g
    i32 1, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload, ptr noundef nonnull dereferenceable(12) @.str.266) #12
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.70) #11 ; 0 uses
  br label %svg_print_gradient_color.exit

bb.i:                                             ; preds = %bb.g
  %i.m = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull %.sroa.0.0.copyload) #11 ; 0 uses
  br label %svg_print_gradient_color.exit

bb.j:                                             ; preds = %bb.f
  %.sroa.0.0.extract.trunc = trunc i64 %i.h to i32
  %i.n = and i32 %.sroa.0.0.extract.trunc, 255
  %.sroa.0.1.extract.shift = lshr i64 %i.h, 8
  %.sroa.0.1.extract.trunc = trunc i64 %.sroa.0.1.extract.shift to i32
  %i.o = and i32 %.sroa.0.1.extract.trunc, 255
  %.sroa.0.2.extract.shift = lshr i64 %i.h, 16
  %.sroa.0.2.extract.trunc = trunc i64 %.sroa.0.2.extract.shift to i32
  %i.p = and i32 %.sroa.0.2.extract.trunc, 255
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.103, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p) #11
  br label %svg_print_gradient_color.exit

bb.k:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !57
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 161) #13 ; 0 uses
  tail call void @abort() #14
  unreachable

svg_print_gradient_color.exit:                    ; preds = %bb.h, %bb.i, %bb.j
  %i.s = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.98) #11 ; 0 uses
  %i.t = icmp eq i32 %.sroa.717.0.copyload, 1
  %i.u = icmp ne i8 %i.j, -1
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %svg_print_gradient_color.exit
  %i.v = uitofp i8 %i.j to double
  %i.w = fdiv double %i.v, 2.550000e+02
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.99, double noundef %i.w) #11
  br label %bb.q

bb.m:                                             ; preds = %svg_print_gradient_color.exit
  %i.x = icmp eq i32 %.sroa.717.0.copyload, 4
  br i1 %i.x, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload, ptr noundef nonnull dereferenceable(12) @.str.266) #12
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.100) #11 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.aa = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.101) #11 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.l
  %i.ab = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.102) #11 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @svg_print_paint(ptr noundef %0, ptr nofree noundef readonly byval(%struct.color_s) align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  switch i32 %i.b, label %bb.h [
    i32 4, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(12) @.str.266) #12
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.112) #11 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull %i.c) #11 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !49
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.112) #11 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = load i8, ptr %1, align 8, !tbaa !49
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !49
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 2, !tbaa !49
  %i.r = zext i8 %i.q to i32
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.103, i32 noundef %i.l, i32 noundef %i.o, i32 noundef %i.r) #11
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !57
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 136) #13 ; 0 uses
  tail call void @abort() #14
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  ret void
}

declare i64 @gvwrite(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { cold nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS5GVC_s", !8, i64 0}
!10 = !{!"p1 _ZTS5GVJ_s", !8, i64 0}
!11 = !{!"p1 _ZTS10GVCOMMON_s", !8, i64 0}
!12 = !{!"p1 _ZTS11obj_state_s", !8, i64 0}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"p1 _ZTS17gvrender_engine_s", !8, i64 0}
!17 = !{!"gvplugin_active_render_s", !16, i64 0, !5, i64 8, !8, i64 16, !13, i64 24}
!18 = !{!"p1 _ZTS17gvdevice_engine_s", !8, i64 0}
!19 = !{!"gvplugin_active_device_s", !18, i64 0, !5, i64 8, !8, i64 16, !13, i64 24}
!20 = !{!"p1 _ZTS20gvloadimage_engine_s", !8, i64 0}
!21 = !{!"gvplugin_active_loadimage_t", !20, i64 0, !5, i64 8, !13, i64 16}
!22 = !{!"p1 _ZTS20gvdevice_callbacks_s", !8, i64 0}
!23 = !{!"double", !4, i64 0}
!24 = !{!"pointf_s", !23, i64 0, !23, i64 8}
!25 = !{!"_Bool", !4, i64 0}
!26 = !{!"", !5, i64 0, !5, i64 4}
!27 = !{!"", !24, i64 0, !24, i64 16}
!28 = !{!"", !26, i64 0, !26, i64 8}
!29 = !{!"p1 _ZTS21gvevent_key_binding_s", !8, i64 0}
!30 = !{!"GVJ_s", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !12, i64 32, !13, i64 40, !5, i64 48, !13, i64 56, !13, i64 64, !14, i64 72, !13, i64 80, !15, i64 88, !15, i64 96, !13, i64 104, !5, i64 112, !17, i64 120, !19, i64 152, !21, i64 184, !22, i64 208, !24, i64 216, !25, i64 232, !8, i64 240, !5, i64 248, !8, i64 256, !25, i64 264, !13, i64 272, !5, i64 280, !5, i64 284, !5, i64 288, !26, i64 292, !26, i64 300, !26, i64 308, !26, i64 316, !26, i64 324, !5, i64 332, !27, i64 336, !24, i64 368, !27, i64 384, !27, i64 416, !24, i64 448, !24, i64 464, !23, i64 480, !5, i64 488, !24, i64 496, !27, i64 512, !24, i64 544, !24, i64 560, !5, i64 576, !5, i64 580, !28, i64 584, !28, i64 600, !24, i64 616, !24, i64 632, !24, i64 648, !25, i64 664, !25, i64 665, !25, i64 666, !25, i64 667, !25, i64 668, !4, i64 669, !24, i64 672, !24, i64 688, !8, i64 704, !8, i64 712, !13, i64 720, !13, i64 728, !8, i64 736, !29, i64 744, !15, i64 752, !8, i64 760}
!31 = !{!30, !5, i64 128}
!32 = !{!30, !9, i64 0}
!33 = !{!"any p2 pointer", !8, i64 0}
!34 = !{!"p2 omnipotent char", !33, i64 0}
!35 = !{!"GVCOMMON_s", !34, i64 0, !13, i64 8, !5, i64 16, !25, i64 20, !25, i64 21, !8, i64 24, !34, i64 32, !34, i64 40, !5, i64 48, !8, i64 56, !5, i64 64}
!36 = !{!"p1 _ZTS5GVG_s", !8, i64 0}
!37 = !{!"p1 _ZTS18gvplugin_package_s", !8, i64 0}
!38 = !{!"dtdisc_s_", !5, i64 0, !5, i64 4, !5, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!39 = !{!"p1 _ZTS5dt_s_", !8, i64 0}
!40 = !{!"p1 _ZTS21gvtextlayout_engine_s", !8, i64 0}
!41 = !{!"gvplugin_active_textlayout_s", !40, i64 0, !5, i64 8, !13, i64 16}
!42 = !{!"p1 _ZTS8Agraph_s", !8, i64 0}
!43 = !{!"p1 _ZTS17gvlayout_engine_s", !8, i64 0}
!44 = !{!"gvplugin_active_layout_s", !43, i64 0, !5, i64 8, !8, i64 16, !13, i64 24}
!45 = !{!"p1 int", !8, i64 0}
!46 = !{!"color_s", !4, i64 0, !5, i64 32}
!47 = !{!"GVC_s", !35, i64 0, !13, i64 72, !25, i64 80, !34, i64 88, !5, i64 96, !36, i64 104, !36, i64 112, !4, i64 120, !4, i64 160, !37, i64 200, !8, i64 208, !38, i64 216, !39, i64 256, !41, i64 264, !10, i64 288, !10, i64 296, !42, i64 304, !44, i64 312, !13, i64 344, !10, i64 352, !13, i64 360, !24, i64 368, !24, i64 384, !24, i64 400, !26, i64 416, !27, i64 424, !5, i64 456, !25, i64 460, !25, i64 461, !25, i64 462, !13, i64 464, !13, i64 472, !13, i64 480, !34, i64 488, !5, i64 496, !45, i64 504, !13, i64 512, !23, i64 520, !34, i64 528, !46, i64 536, !5, i64 576}
!48 = !{!47, !42, i64 304}
!49 = !{!4, !4, i64 0}
!50 = !{!13, !13, i64 0}
!51 = !{!30, !12, i64 32}
!52 = !{!"p1 _ZTS8pointf_s", !8, i64 0}
!53 = !{!"p1 long", !8, i64 0}
!54 = !{!"obj_state_s", !12, i64 0, !5, i64 8, !4, i64 16, !5, i64 24, !46, i64 32, !46, i64 72, !46, i64 112, !5, i64 152, !23, i64 160, !5, i64 168, !5, i64 172, !23, i64 176, !34, i64 184, !23, i64 192, !23, i64 200, !23, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 353, !5, i64 353, !5, i64 356, !15, i64 360, !52, i64 368, !15, i64 376, !53, i64 384, !52, i64 392, !5, i64 400, !52, i64 408, !5, i64 416, !52, i64 424}
!55 = !{!54, !13, i64 256}
!56 = !{!54, !5, i64 64}
!57 = !{!14, !14, i64 0}
!58 = !{!24, !23, i64 0}
!59 = !{!24, !23, i64 8}
end_hunk_0
