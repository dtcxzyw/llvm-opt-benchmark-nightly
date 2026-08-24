Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/newvor?download=true
inline.NumInlined: 47
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@swapedge:bb.a
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !8
  %i.ed = xor i64 %i.aa, 64
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !8
  store ptr %i.ec, ptr %0, align 8, !tbaa !8
  store ptr %i.ef, ptr %i.p, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @valid(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = xor i64 %i.b, 64
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = xor i64 %i.f, 64
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %i.j = load double, ptr %i.a, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !27
  %i.m = load double, ptr %i.i, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !27
  %i.p = load double, ptr %i.e, align 8, !tbaa !26 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !27 ; 2 uses
  %i.s = fsub double %i.j, %i.p
  %i.t = fsub double %i.o, %i.r
  %i.u = fsub double %i.m, %i.p
  %i.v = fsub double %i.l, %i.r
  %i.w = fneg double %i.v
  %i.x = fmul double %i.u, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.s, double %i.t, double %i.x)
  %i.z = fcmp ogt double %i.y, 0.000000e+00
  %i.aa = zext i1 %i.z to i32
  ret i32 %i.aa
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @dump_quad(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, -128
  %i.c = inttoptr i64 %i.b to ptr                 ; 9 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %i.c) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %i.c, ptr noundef nonnull %i.f, ptr noundef %i.g) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef %i.l) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, ptr noundef %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %i.s, ptr noundef nonnull %i.u, ptr noundef %i.v) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @in_order(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not9 = icmp eq ptr %0, null
  br i1 %.not9, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  ret void

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr10 = phi ptr [ %i.h, %tailrecurse ], [ %0, %bb.a ] ; 4 uses
  %i.a = load double, ptr %.tr10, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %.tr10, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.a, double noundef %i.c) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.tr10, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  tail call void @in_order(ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %.tr10, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -199970001, 199970002) i32 @mult(i32 noundef %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = sdiv i32 %0, 10000
  %i.b = srem i32 %0, 10000                       ; 2 uses
  %i.c = sdiv i32 %1, 10000
  %i.d = srem i32 %1, 10000                       ; 2 uses
  %i.e = mul nsw i32 %i.c, %i.b
  %i.f = mul nsw i32 %i.d, %i.a
  %i.g = add nsw i32 %i.e, %i.f
  %i.h = srem i32 %i.g, 10000
  %i.i = mul nsw i32 %i.h, 10000
  %i.j = mul nsw i32 %i.d, %i.b
  %i.k = add nsw i32 %i.i, %i.j
  ret i32 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @skiprand(i32 noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.k, %.lr.ph ], [ %1, %bb.a ]
  %.046 = phi i32 [ %i.j, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.a = sdiv i32 %.046, 10000
  %i.b = srem i32 %.046, 10000                    ; 2 uses
  %i.c = mul nsw i32 %i.b, 3141
  %i.d = mul nsw i32 %i.a, 5821
  %i.e = add nsw i32 %i.c, %i.d
  %i.f = srem i32 %i.e, 10000
  %i.g = mul nsw i32 %i.f, 10000
  %i.h = mul nsw i32 %i.b, 5821
  %i.i = add nsw i32 %i.h, 1
  %i.j = add nsw i32 %i.i, %i.g                   ; 2 uses
  %i.k = add nsw i32 %.07, -1                     ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.04.lcssa = phi i32 [ %0, %bb.a ], [ %i.j, %.lr.ph ]
  ret i32 %.04.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -158194178, 158194181) i32 @myrandom(i32 noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = sdiv i32 %0, 10000
  %i.b = srem i32 %0, 10000                       ; 2 uses
  %i.c = mul nsw i32 %i.b, 3141
  %i.d = mul nsw i32 %i.a, 5821
  %i.e = add nsw i32 %i.c, %i.d
  %i.f = srem i32 %i.e, 10000
  %i.g = mul nsw i32 %i.f, 10000
  %i.h = mul nsw i32 %i.b, 5821
  %i.i = add nsw i32 %i.h, 1
  %i.j = add nsw i32 %i.i, %i.g
  ret i32 %i.j
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_extra(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.a, double noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #15 {
bb.a:
  %2 = alloca %struct.get_point, align 8          ; 6 uses
  %3 = alloca %struct.get_point, align 8          ; 4 uses
  store i32 0, ptr @to_color, align 4, !tbaa !4
  store i32 0, ptr @to_3d_out, align 4, !tbaa !4
  store i32 0, ptr @to_off, align 4, !tbaa !4
  store i32 0, ptr @to_lincoln, align 4, !tbaa !4
  store i32 1, ptr @delaunay, align 4, !tbaa !4
  store i32 1, ptr @voronoi, align 4, !tbaa !4
  store i32 0, ptr @ahost, align 4, !tbaa !4
  store i32 0, ptr @interactive, align 4, !tbaa !4
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %0) ; 0 uses
  %i.b = tail call i32 @dealwithargs(i32 noundef %0, ptr noundef %1) #27 ; 6 uses
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.b) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.d = load i32, ptr @NumNodes, align 4, !tbaa !4
  %i.e = add nsw i32 %i.d, -1
  call void @get_points(ptr dead_on_unwind nonnull writable sret(%struct.get_point) align 8 %2, i32 noundef 1, double noundef 1.000000e+00, i32 noundef %i.b, i32 noundef 1023, i32 noundef %i.e, i32 noundef 1)
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !34 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.f = add nsw i32 %i.b, -1                     ; 2 uses
  %i.g = load i32, ptr @NumNodes, align 4, !tbaa !4
  call void @get_points(ptr dead_on_unwind nonnull writable sret(%struct.get_point) align 8 %3, i32 noundef %i.f, double noundef %.sroa.5.0.copyload, i32 noundef %i.f, i32 noundef %.sroa.6.0.copyload, i32 noundef 0, i32 noundef %i.g)
  %.sroa.08.0.copyload = load ptr, ptr %3, align 8, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.h = add nsw i32 %i.b, 1                      ; 3 uses
  store i32 %i.h, ptr @num_vertices, align 4, !tbaa !4
  %i.i = mul nsw i32 %i.h, 12                     ; 2 uses
  store i32 %i.i, ptr @num_edgeparts, align 4, !tbaa !4
  %i.j = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #28 ; 3 uses
  %i.k = sext i32 %i.i to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #28
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !35
  %4 = mul nsw i32 %i.h, 6
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %4, ptr %i.o, align 8, !tbaa !39
  %i.p = load i32, ptr @flag, align 4, !tbaa !4
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @in_order(ptr noundef %.sroa.08.0.copyload)
  %.pr = load i32, ptr @flag, align 4, !tbaa !4
  %.not15 = icmp eq i32 %.pr, 0
  br i1 %.not15, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load double, ptr %.sroa.0.0.copyload, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !27
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.q, double noundef %i.s) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.b) ; 0 uses
  %i.v = tail call { ptr, ptr } @build_delaunay(ptr noundef %.sroa.08.0.copyload, ptr noundef %.sroa.0.0.copyload)
  %i.w = load i32, ptr @flag, align 4, !tbaa !4
  %.not16 = icmp eq i32 %i.w, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.x = extractvalue { ptr, ptr } %i.v, 0
  tail call void @output_voronoi_diagram(ptr noundef %i.x, i32 noundef %i.b, ptr noundef nonnull %i.j) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  ret i32 0
}

declare i32 @dealwithargs(i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @get_points(ptr dead_on_unwind noalias nofree writable sret(%struct.get_point) align 8 captures(none) initializes((0, 20)) %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.b, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %4, ptr %i.c, align 8, !tbaa !42
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = lshr i32 %1, 1                           ; 3 uses
  %i.e = sdiv i32 %6, 2                           ; 3 uses
  %i.f = add nsw i32 %i.e, %5
  tail call void @get_points(ptr dead_on_unwind nonnull writable sret(%struct.get_point) align 8 %0, i32 noundef %i.d, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.f, i32 noundef %i.e)
  %i.g = sub nsw i32 %3, %i.d                     ; 2 uses
  %i.h = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #28 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = sdiv i32 %i.l, 10000
  %i.n = srem i32 %i.l, 10000                     ; 2 uses
  %i.o = mul nsw i32 %i.n, 3141
  %i.p = mul nsw i32 %i.m, 5821
  %i.q = add nsw i32 %i.o, %i.p
  %i.r = srem i32 %i.q, 10000
  %i.s = mul nsw i32 %i.r, 10000
  %i.t = mul nsw i32 %i.n, 5821
  %i.u = add nsw i32 %i.t, 1
  %i.v = add nsw i32 %i.u, %i.s                   ; 3 uses
  %i.w = sitofp i32 %i.v to double
  %i.x = fdiv double %i.w, f0x41DFFFFFFFC00000
  %i.y = tail call double @log(double noundef %i.x) #27, !tbaa !4
  %i.z = sitofp i32 %i.g to double
  %i.aa = fdiv double %i.y, %i.z
  %i.ab = tail call double @exp(double noundef %i.aa) #27, !tbaa !4
  %i.ac = fmul double %i.j, %i.ab                 ; 4 uses
  store double %i.ac, ptr %i.h, align 8, !tbaa !26
  %i.ad = sdiv i32 %i.v, 10000
  %i.ae = srem i32 %i.v, 10000                    ; 2 uses
  %i.af = mul nsw i32 %i.ae, 3141
  %i.ag = mul nsw i32 %i.ad, 5821
  %i.ah = add nsw i32 %i.af, %i.ag
  %i.ai = srem i32 %i.ah, 10000
  %i.aj = mul nsw i32 %i.ai, 10000
  %i.ak = mul nsw i32 %i.ae, 5821
  %i.al = add nsw i32 %i.ak, 1
  %i.am = add nsw i32 %i.al, %i.aj                ; 3 uses
  store i32 %i.am, ptr %i.k, align 8, !tbaa !42
  %i.an = sitofp i32 %i.am to double
  %i.ao = fdiv double %i.an, f0x41DFFFFFFFC00000  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store double %i.ao, ptr %i.ap, align 8, !tbaa !27
  %i.aq = fmul double %i.ao, %i.ao
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store double %i.ar, ptr %i.as, align 8, !tbaa !30
  %i.at = load ptr, ptr %0, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.at, ptr %i.au, align 8, !tbaa !17
  %i.av = add nsw i32 %i.g, -1
  tail call void @get_points(ptr dead_on_unwind nonnull writable sret(%struct.get_point) align 8 %0, i32 noundef %i.d, double noundef %i.ac, i32 noundef %i.av, i32 noundef %i.am, i32 noundef %5, i32 noundef %i.e)
  %i.aw = load ptr, ptr %0, align 8, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ]
  store ptr %.sink, ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @allocate_stack(i32 noundef %0) local_unnamed_addr #18 {
bb.a:
  %i.a = mul nsw i32 %0, 12                       ; 2 uses
  store i32 %i.a, ptr @num_edgeparts, align 4, !tbaa !4
  %i.b = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #28 ; 3 uses
  %i.c = sext i32 %i.a to i64
  %i.d = shl nsw i64 %i.c, 3
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #28
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !35
  %1 = mul nsw i32 %0, 6
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %1, ptr %i.g, align 8, !tbaa !39
  ret ptr %i.b
}

declare void @output_voronoi_diagram(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @free_all(i32 noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.b) #27
  tail call void @free(ptr noundef %1) #27
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @pop_edge(ptr nofree noundef captures(none) %0) local_unnamed_addr #23 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = add nsw i32 %i.a, -1
  store i32 %i.b, ptr %0, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = sext i32 %i.a to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  ret ptr %i.g
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @push_edge(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.a, 1                      ; 2 uses
  store i32 %i.e, ptr %0, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.h = sext i32 %i.e to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  store ptr %1, ptr %i.i, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @push_ring(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %.0.in8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.09 = load ptr, ptr %.0.in8, align 8, !tbaa !14 ; 2 uses
  %.not10 = icmp eq ptr %.09, %1
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %push_edge.exit
  %.011 = phi ptr [ %.09, %.lr.ph ], [ %.0, %push_edge.exit ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.011, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %push_edge.exit

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %i.c, align 8, !tbaa !16
  %i.f = load i32, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.g = load i32, ptr %i.a, align 8, !tbaa !39
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %push_edge.exit

bb.e:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.f, 1                      ; 2 uses
  store i32 %i.i, ptr %0, align 8, !tbaa !44
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k
  store ptr %.011, ptr %i.l, align 8, !tbaa !15
  br label %push_edge.exit

push_edge.exit:                                   ; preds = %bb.e, %bb.d, %bb.b
  %.0.in = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !14  ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !45

._crit_edge:                                      ; preds = %push_edge.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @push_nonzero_ring(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %.0.in9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.010 = load ptr, ptr %.0.in9, align 8, !tbaa !14 ; 2 uses
  %.not11 = icmp eq ptr %.010, %1
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %push_edge.exit
  %.012 = phi ptr [ %.010, %.lr.ph ], [ %.0, %push_edge.exit ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.012, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %.not8 = icmp eq i64 %i.d, 0
  br i1 %.not8, label %push_edge.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.c, align 8, !tbaa !16
  %i.e = load i32, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !39
  %i.g = icmp eq i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %push_edge.exit

bb.e:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.e, 1                      ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !44
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j
  store ptr %.012, ptr %i.k, align 8, !tbaa !15
  br label %push_edge.exit

push_edge.exit:                                   ; preds = %bb.e, %bb.d, %bb.b
  %.0.in = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !14  ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !46

._crit_edge:                                      ; preds = %push_edge.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @zero_seen(ptr nofree noundef captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !44
  %.0.in9.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.010.i = load ptr, ptr %.0.in9.i, align 8, !tbaa !14 ; 2 uses
  %.not11.i = icmp eq ptr %.010.i, %1
  br i1 %.not11.i, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %push_edge.exit.i, %.lr.ph.i
  %.012.i = phi ptr [ %.010.i, %.lr.ph.i ], [ %.0.i, %push_edge.exit.i ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %.not8.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i, label %push_edge.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.c, align 8, !tbaa !16
  %i.e = load i32, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !39
  %i.g = icmp eq i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %push_edge.exit.i

bb.e:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.e, 1                      ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !44
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j
  store ptr %.012.i, ptr %i.k, align 8, !tbaa !15
  br label %push_edge.exit.i

push_edge.exit.i:                                 ; preds = %bb.e, %bb.d, %bb.b
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %1
  br i1 %.not.i, label %push_nonzero_ring.exit, label %bb.b, !llvm.loop !46

push_nonzero_ring.exit:                           ; preds = %push_edge.exit.i
  %.pre = load i32, ptr %0, align 8, !tbaa !44    ; 2 uses
  %.not19 = icmp eq i32 %.pre, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %push_nonzero_ring.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %push_nonzero_ring.exit18
  %i.n = phi i32 [ %.pre, %.lr.ph ], [ %i.af, %push_nonzero_ring.exit18 ] ; 2 uses
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %0, align 8, !tbaa !44
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = xor i64 %i.t, 64
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %.0.in9.i7 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.010.i8 = load ptr, ptr %.0.in9.i7, align 8, !tbaa !14 ; 2 uses
  %.not11.i9 = icmp eq ptr %.010.i8, %i.v
  br i1 %.not11.i9, label %push_nonzero_ring.exit18, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.f, %push_edge.exit.i13
  %.012.i11 = phi ptr [ %.0.i15, %push_edge.exit.i13 ], [ %.010.i8, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i11, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16
  %.not8.i12 = icmp eq i64 %i.x, 0
  br i1 %.not8.i12, label %push_edge.exit.i13, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i10
  store i64 0, ptr %i.w, align 8, !tbaa !16
  %i.y = load i32, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.z = load i32, ptr %i.m, align 8, !tbaa !39
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %puts.i.i17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %push_edge.exit.i13

bb.i:                                             ; preds = %bb.g
  %i.ab = add nsw i32 %i.y, 1                     ; 2 uses
  store i32 %i.ab, ptr %0, align 8, !tbaa !44
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  store ptr %.012.i11, ptr %i.ae, align 8, !tbaa !15
  br label %push_edge.exit.i13

push_edge.exit.i13:                               ; preds = %bb.i, %bb.h, %.lr.ph.i10
  %.0.in.i14 = getelementptr inbounds nuw i8, ptr %.012.i11, i64 8
  %.0.i15 = load ptr, ptr %.0.in.i14, align 8, !tbaa !14 ; 2 uses
  %.not.i16 = icmp eq ptr %.0.i15, %i.v
  br i1 %.not.i16, label %push_nonzero_ring.exit18.loopexit, label %.lr.ph.i10, !llvm.loop !46

push_nonzero_ring.exit18.loopexit:                ; preds = %push_edge.exit.i13
  %.pre20 = load i32, ptr %0, align 8, !tbaa !44
  br label %push_nonzero_ring.exit18

push_nonzero_ring.exit18:                         ; preds = %push_nonzero_ring.exit18.loopexit, %bb.f
  %i.af = phi i32 [ %.pre20, %push_nonzero_ring.exit18.loopexit ], [ %i.o, %bb.f ] ; 2 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !47

._crit_edge:                                      ; preds = %push_nonzero_ring.exit18, %bb.a, %push_nonzero_ring.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #11

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind }
attributes #25 = { nounwind allocsize(1) }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"edge_rec", !10, i64 0, !12, i64 8, !13, i64 16, !11, i64 24}
!10 = !{!"p1 _ZTS6VERTEX", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS8edge_rec", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!9, !12, i64 8}
!15 = !{!12, !12, i64 0}
!16 = !{!9, !13, i64 16}
!17 = !{!18, !10, i64 32}
!18 = !{!"VERTEX", !19, i64 0, !10, i64 24, !10, i64 32}
!19 = !{!"VEC2", !20, i64 0, !20, i64 8, !20, i64 16}
!20 = !{!"double", !6, i64 0}
!21 = !{!18, !10, i64 24}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = !{!18, !20, i64 0}
!27 = !{!18, !20, i64 8}
!28 = distinct !{!28, !23}
!29 = !{!20, !20, i64 0}
!30 = !{!18, !20, i64 16}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = !{!10, !10, i64 0}
!35 = !{!36, !37, i64 8}
!36 = !{!"EDGE_STACK", !5, i64 0, !37, i64 8, !5, i64 16}
!37 = !{!"p2 _ZTS8edge_rec", !38, i64 0}
!38 = !{!"any p2 pointer", !11, i64 0}
!39 = !{!36, !5, i64 16}
!40 = !{!41, !20, i64 8}
!41 = !{!"get_point", !10, i64 0, !20, i64 8, !5, i64 16}
!42 = !{!41, !5, i64 16}
!43 = !{!41, !10, i64 0}
!44 = !{!36, !5, i64 0}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !23}
end_hunk_0
