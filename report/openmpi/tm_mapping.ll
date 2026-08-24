Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_mapping?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tm_map_topology:bb.a
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv145
  %i.cv = load i32, ptr %i.cr, align 4, !tbaa !52
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %bb.z, %bb.aa
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !53
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv142
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !17 ; 2 uses
  %i.da = icmp eq i32 %i.cz, -1
  br i1 %i.da, label %._crit_edge104, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph103
  %i.db = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.cz) ; 0 uses
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.dc = load i32, ptr %i.cr, align 4, !tbaa !52
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next143, %i.dd
  br i1 %i.de, label %.lr.ph103, label %._crit_edge104, !llvm.loop !59

._crit_edge104:                                   ; preds = %bb.aa, %.lr.ph103, %bb.z
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.df = tail call i32 @tm_nb_processing_units(ptr noundef %0) #20
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next146, %i.dg
  br i1 %i.dh, label %bb.z, label %.loopexit84.thread, !llvm.loop !60

.loopexit84.thread:                               ; preds = %._crit_edge104, %bb.y, %bb.s, %.loopexit84
  tail call void @free(ptr noundef %i.r) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @nb_leaves(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.011 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.i, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = tail call fastcc i32 @nb_leaves(ptr noundef %i.g)
  %i.i = add nsw i32 %i.h, %.011                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !68

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.09 = phi i32 [ 1, %bb.a ], [ 0, %.preheader ], [ %i.i, %.lr.ph ]
  ret i32 %.09
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @depth_first(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !69
  %i.h = load i32, ptr %2, align 4, !tbaa !17     ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %2, align 4, !tbaa !17
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %i.j
  store i32 %i.g, ptr %i.k, align 4, !tbaa !17
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67
  tail call fastcc void @depth_first(ptr noundef %i.n, ptr noundef %1, ptr noundef %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = load i32, ptr %i.c, align 8, !tbaa !66
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %.lr.ph, label %.loopexit, !llvm.loop !70

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b
  ret void
}

declare hidden i32 @tm_nb_processing_units(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @tm_compute_mapping(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = tail call i32 @tm_nb_processing_units(ptr noundef %0) #20 ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  %i.f = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #21 ; 6 uses
  %i.g = shl nsw i64 %i.c, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #21 ; 2 uses
  %i.i = shl nsw i64 %i.e, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #21 ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load i32, ptr %i.k, align 4, !tbaa !52
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.028 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #21
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.028
  store ptr %i.o, ptr %i.p, align 8, !tbaa !53
  %i.q = add nuw i64 %.028, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !8
  %i.t = add nsw i32 %i.s, -1
  tail call void @tm_map_topology(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.t, ptr noundef %i.h, i32 noundef %i.b, ptr noundef %i.j, i32 noundef %i.d)
  store ptr %i.h, ptr %i.f, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.c, ptr %i.u, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.j, ptr %i.v, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.e, ptr %i.w, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.y = load i32, ptr %i.x, align 4, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.y, ptr %i.z, align 8, !tbaa !78
  ret ptr %i.f
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden i32 @tm_fill_tab(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #13 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = icmp slt i32 %3, %2
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.b = sext i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %.not33 = icmp slt i32 %i.d, %4
  br i1 %.not33, label %bb.b, label %._crit_edge.split.loop.exit53

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !79

._crit_edge.split.loop.exit53:                    ; preds = %.lr.ph
  %i.e = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.split.loop.exit53
  %.0.lcssa = phi i32 [ %i.e, %._crit_edge.split.loop.exit53 ], [ %2, %bb.b ] ; 6 uses
  %i.f = icmp eq i32 %3, %.0.lcssa
  br i1 %i.f, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.g = sub i32 %.0.lcssa, %3                    ; 2 uses
  %6 = zext i32 %i.g to i64                       ; 4 uses
  %i.h = shl nuw nsw i64 %6, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #21 ; 5 uses
  %i.j = icmp slt i32 %3, %.0.lcssa
  br i1 %i.j, label %.lr.ph40.preheader, label %._crit_edge.thread

.lr.ph40.preheader:                               ; preds = %bb.c
  %i.k = sext i32 %3 to i64                       ; 3 uses
  %min.iters.check = icmp ult i32 %i.g, 8
  br i1 %min.iters.check, label %.lr.ph40.preheader58, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph40.preheader
  %n.vec = and i64 %6, 4294967288                 ; 4 uses
  %i.l = add nsw i64 %n.vec, %i.k
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !17
  %wide.load56 = load <4 x i32>, ptr %i.m, align 4, !tbaa !17
  %i.n = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.o = sub nsw <4 x i32> %wide.load56, %broadcast.splat
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %i.n, ptr %i.p, align 4, !tbaa !17
  store <4 x i32> %i.o, ptr %i.q, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %6
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph40.preheader58

.lr.ph40.preheader58:                             ; preds = %.lr.ph40.preheader, %middle.block
  %indvars.iv45.ph = phi i64 [ %i.k, %.lr.ph40.preheader ], [ %i.l, %middle.block ]
  %indvars.iv43.ph = phi i64 [ 0, %.lr.ph40.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.preheader58, %.lr.ph40
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph40 ], [ %indvars.iv45.ph, %.lr.ph40.preheader58 ] ; 2 uses
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %.lr.ph40 ], [ %indvars.iv43.ph, %.lr.ph40.preheader58 ] ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv45
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = sub nsw i32 %i.t, %5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv43
  store i32 %i.u, ptr %i.v, align 4, !tbaa !17
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next44, %6
  br i1 %exitcond50.not, label %._crit_edge.thread, label %.lr.ph40, !llvm.loop !81

._crit_edge.thread:                               ; preds = %.lr.ph40, %middle.block, %bb.c, %._crit_edge, %.preheader, %bb.a
  %.sink = phi ptr [ null, %._crit_edge ], [ null, %bb.a ], [ null, %.preheader ], [ %i.i, %bb.c ], [ %i.i, %middle.block ], [ %i.i, %.lr.ph40 ]
  %.030 = phi i32 [ %3, %._crit_edge ], [ 0, %bb.a ], [ %3, %.preheader ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %middle.block ], [ %.0.lcssa, %.lr.ph40 ]
  store ptr %.sink, ptr %0, align 8, !tbaa !53
  ret i32 %.030
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #16

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { cold nounwind }
attributes #23 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"", !10, i64 0, !5, i64 8, !12, i64 16, !5, i64 24, !10, i64 32, !10, i64 40, !12, i64 48, !13, i64 56, !15, i64 64, !10, i64 72, !5, i64 80, !5, i64 84, !5, i64 88}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 long", !11, i64 0}
!13 = !{!"p2 int", !14, i64 0}
!14 = !{!"any p2 pointer", !11, i64 0}
!15 = !{!"p1 double", !11, i64 0}
!16 = !{!9, !10, i64 0}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !19, !21, !20}
!23 = distinct !{!23, !19}
!24 = !{!25, !26, i64 0}
!25 = !{!"", !26, i64 0, !15, i64 8, !5, i64 16, !27, i64 24}
!26 = !{!"p2 double", !14, i64 0}
!27 = !{!"long", !6, i64 0}
!28 = !{!25, !15, i64 8}
!29 = !{!25, !5, i64 16}
!30 = !{!25, !27, i64 24}
!31 = !{!32, !32, i64 0}
!32 = !{!"double", !6, i64 0}
!33 = !{!15, !15, i64 0}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19}
!41 = !{!42, !27, i64 48}
!42 = !{!"stat", !27, i64 0, !27, i64 8, !27, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !27, i64 40, !27, i64 48, !27, i64 56, !27, i64 64, !43, i64 72, !43, i64 88, !43, i64 104, !6, i64 120}
!43 = !{!"timespec", !27, i64 0, !27, i64 8}
!44 = !{!6, !6, i64 0}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19}
!49 = !{!9, !10, i64 32}
!50 = !{!9, !12, i64 16}
!51 = !{!27, !27, i64 0}
!52 = !{!9, !5, i64 84}
!53 = !{!10, !10, i64 0}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = !{!62, !63, i64 8}
!62 = !{!"_tm_tree_t", !5, i64 0, !63, i64 8, !64, i64 16, !64, i64 24, !32, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !65, i64 64, !5, i64 72}
!63 = !{!"p2 _ZTS10_tm_tree_t", !14, i64 0}
!64 = !{!"p1 _ZTS10_tm_tree_t", !11, i64 0}
!65 = !{!"p1 _ZTS11_job_info_t", !11, i64 0}
!66 = !{!62, !5, i64 40}
!67 = !{!64, !64, i64 0}
!68 = distinct !{!68, !19}
!69 = !{!62, !5, i64 48}
!70 = distinct !{!70, !19}
!71 = !{!62, !5, i64 72}
!72 = distinct !{!72, !19}
!73 = !{!74, !10, i64 0}
!74 = !{!"", !10, i64 0, !27, i64 8, !13, i64 16, !27, i64 24, !5, i64 32}
!75 = !{!74, !27, i64 8}
!76 = !{!74, !13, i64 16}
!77 = !{!74, !27, i64 24}
!78 = !{!74, !5, i64 32}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19, !20, !21}
!81 = distinct !{!81, !19, !21, !20}
end_hunk_0
