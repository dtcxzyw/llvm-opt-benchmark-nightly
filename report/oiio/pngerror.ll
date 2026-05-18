inline.NumInlined: 16
begin_hunk_0_@png_fixed_error:bb.a
  store i8 0, ptr %i.x, align 1, !tbaa !26
  call void @png_error(ptr noundef %0, ptr noundef nonnull %i.a) #21
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define ptr @png_set_longjmp_fn(ptr noalias noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.e, align 8, !tbaa !62
  %i.f = icmp ult i64 %2, 201
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.b, align 8, !tbaa !61
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.g = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %2) #20 ; 3 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !61
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %2, ptr %i.e, align 8, !tbaa !62
  br label %.thread

bb.g:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %i.c, %0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #21
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.024 = phi i64 [ 200, %bb.h ], [ %i.i, %bb.g ]
  %.not30.not = icmp eq i64 %.024, %2
  br i1 %.not30.not, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.2)
  br label %bb.l

.thread:                                          ; preds = %bb.j, %bb.d, %bb.f
  %i.k = phi ptr [ %i.c, %bb.j ], [ %0, %bb.d ], [ %i.g, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.l, align 8, !tbaa !63
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e, %bb.a, %.thread
  %.1 = phi ptr [ null, %bb.k ], [ %i.k, %.thread ], [ null, %bb.a ], [ null, %bb.e ]
  ret ptr %.1
}

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @png_free_jmpbuf(ptr noalias noundef %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62
  %.not16 = icmp eq i64 %i.d, 0
  %.not17 = icmp eq ptr %i.b, %0
  %or.cond = or i1 %.not17, %.not16
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.e = call i32 @_setjmp(ptr noundef nonnull %1) #23
  %.not18 = icmp eq i32 %i.e, 0
  br i1 %.not18, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %1, ptr %i.a, align 8, !tbaa !61
  store i64 0, ptr %i.c, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr @longjmp, ptr %i.f, align 8, !tbaa !63
  call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) #12

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind uwtable
define void @png_longjmp(ptr noalias noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.b(ptr noundef nonnull %i.d, i32 noundef %1) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @abort() #24
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @png_set_error_fn(ptr noalias noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %1, ptr %i.b, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %2, ptr %i.c, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %3, ptr %i.d, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @png_get_error_ptr(ptr noalias noundef readonly captures(address_is_null) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: noreturn nounwind uwtable
define void @png_safe_error(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 5 uses
  %.not18.i = icmp eq ptr %1, null                ; 2 uses
  br i1 %.not18.i, label %png_safecat.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.d = load i8, ptr %1, align 1, !tbaa !26      ; 2 uses
  %.not29 = icmp eq i8 %i.d, 0
  br i1 %.not29, label %png_safecat.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.e = phi i8 [ %i.i, %.lr.ph.i ], [ %i.d, %.preheader.i ]
  %.020.i = phi ptr [ %i.f, %.lr.ph.i ], [ %1, %.preheader.i ]
  %.01219.i = phi i64 [ %i.g, %.lr.ph.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 2 uses
  %i.g = add nuw nsw i64 %.01219.i, 1             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %.01219.i
  store i8 %i.e, ptr %i.h, align 1, !tbaa !26
  %i.i = load i8, ptr %i.f, align 1, !tbaa !26    ; 2 uses
  %i.j = icmp ne i8 %i.i, 0
  %i.k = icmp samesign ult i64 %.01219.i, 62
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.lr.ph.i, label %png_safecat.exit, !llvm.loop !27

png_safecat.exit:                                 ; preds = %.lr.ph.i, %bb.b, %.preheader.i
  %.1.i = phi i64 [ 0, %bb.b ], [ 0, %.preheader.i ], [ %i.g, %.lr.ph.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i
  store i8 0, ptr %i.m, align 1, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !65
  %i.p = or i32 %i.o, 2
  store i32 %i.p, ptr %i.n, align 8, !tbaa !65
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %.not14 = icmp eq ptr %i.q, null
  br i1 %.not14, label %.lr.ph.i17, label %bb.c

bb.c:                                             ; preds = %png_safecat.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !69   ; 2 uses
  %.not15 = icmp eq ptr %i.s, null
  br i1 %.not15, label %.lr.ph.i17, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @longjmp(ptr noundef nonnull %i.s, i32 noundef 1) #24
  unreachable

.lr.ph.i17:                                       ; preds = %bb.c, %png_safecat.exit
  store <14 x i8> <i8 98, i8 97, i8 100, i8 32, i8 108, i8 111, i8 110, i8 103, i8 106, i8 109, i8 112, i8 58, i8 32, i8 0>, ptr %i.c, align 1, !tbaa !26
  br i1 %.not18.i, label %png_safecat.exit28, label %.preheader.i23

.preheader.i23:                                   ; preds = %.lr.ph.i17
  %i.t = load i8, ptr %1, align 1, !tbaa !26      ; 2 uses
  %.not41 = icmp eq i8 %i.t, 0
  br i1 %.not41, label %png_safecat.exit28, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.preheader.i23, %.lr.ph.i25
  %i.u = phi i8 [ %i.y, %.lr.ph.i25 ], [ %i.t, %.preheader.i23 ]
  %.020.i26 = phi ptr [ %i.v, %.lr.ph.i25 ], [ %1, %.preheader.i23 ]
  %.01219.i27 = phi i64 [ %i.w, %.lr.ph.i25 ], [ 13, %.preheader.i23 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.020.i26, i64 1 ; 2 uses
  %i.w = add nuw nsw i64 %.01219.i27, 1           ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %.01219.i27
  store i8 %i.u, ptr %i.x, align 1, !tbaa !26
  %i.y = load i8, ptr %i.v, align 1, !tbaa !26    ; 2 uses
  %i.z = icmp ne i8 %i.y, 0
  %i.aa = icmp samesign ult i64 %.01219.i27, 62
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph.i25, label %png_safecat.exit28, !llvm.loop !27

png_safecat.exit28:                               ; preds = %.lr.ph.i25, %.lr.ph.i17, %.preheader.i23
  %.1.i24 = phi i64 [ 13, %.lr.ph.i17 ], [ 13, %.preheader.i23 ], [ %i.w, %.lr.ph.i25 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i24
  store i8 0, ptr %i.ac, align 1, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %png_safecat.exit28, %bb.a
  tail call void @abort() #24
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @png_safe_warning(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %.not18.i = icmp eq ptr %1, null
  br i1 %.not18.i, label %png_safecat.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1, !tbaa !26      ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %png_safecat.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.h = phi i8 [ %i.l, %.lr.ph.i ], [ %i.g, %.preheader.i ]
  %.020.i = phi ptr [ %i.i, %.lr.ph.i ], [ %1, %.preheader.i ]
  %.01219.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 2 uses
  %i.j = add nuw nsw i64 %.01219.i, 1             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.01219.i
  store i8 %i.h, ptr %i.k, align 1, !tbaa !26
  %i.l = load i8, ptr %i.i, align 1, !tbaa !26    ; 2 uses
  %i.m = icmp ne i8 %i.l, 0
  %i.n = icmp samesign ult i64 %.01219.i, 62
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %.lr.ph.i, label %png_safecat.exit, !llvm.loop !27

png_safecat.exit:                                 ; preds = %.lr.ph.i, %bb.b, %.preheader.i
  %.1.i = phi i64 [ 0, %bb.b ], [ 0, %.preheader.i ], [ %i.j, %.lr.ph.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1.i
  store i8 0, ptr %i.p, align 1, !tbaa !26
  store i32 1, ptr %i.c, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %png_safecat.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @png_safe_execute(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.d = call i32 @_setjmp(ptr noundef nonnull %3) #23
  %i.e = icmp eq i32 %i.d, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !68    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  store ptr %3, ptr %i.f, align 8, !tbaa !69
  %i.g = call i32 %1(ptr noundef %2) #20
  %i.h = load ptr, ptr %0, align 8, !tbaa !68     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.c, ptr %i.i, align 8, !tbaa !69
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %i.h, %bb.b ], [ %.pre, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.c, ptr %i.k, align 8, !tbaa !69
  %i.l = icmp eq ptr %i.c, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @png_image_free(ptr noundef nonnull %0) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.1 = phi i32 [ 1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 %.1
}

declare void @png_image_free(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind returns_twice }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 224}
!8 = !{!"png_struct_def", !5, i64 0, !9, i64 200, !10, i64 208, !11, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !5, i64 296, !5, i64 297, !4, i64 300, !4, i64 304, !4, i64 308, !4, i64 312, !12, i64 320, !15, i64 432, !4, i64 440, !4, i64 444, !4, i64 448, !4, i64 452, !4, i64 456, !4, i64 460, !4, i64 464, !4, i64 468, !4, i64 472, !4, i64 476, !4, i64 480, !4, i64 484, !4, i64 488, !4, i64 492, !4, i64 496, !4, i64 500, !4, i64 504, !4, i64 508, !4, i64 512, !4, i64 516, !4, i64 520, !11, i64 528, !4, i64 536, !4, i64 540, !4, i64 544, !13, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !11, i64 584, !4, i64 592, !4, i64 596, !16, i64 600, !17, i64 608, !4, i64 612, !17, i64 616, !5, i64 618, !5, i64 619, !5, i64 620, !5, i64 621, !5, i64 622, !5, i64 623, !5, i64 624, !5, i64 625, !5, i64 626, !5, i64 627, !5, i64 628, !5, i64 629, !5, i64 630, !5, i64 631, !5, i64 632, !17, i64 634, !5, i64 636, !4, i64 640, !18, i64 644, !18, i64 654, !9, i64 664, !4, i64 672, !4, i64 676, !19, i64 680, !4, i64 712, !4, i64 716, !4, i64 720, !4, i64 724, !4, i64 728, !13, i64 736, !20, i64 744, !13, i64 752, !13, i64 760, !20, i64 768, !20, i64 776, !22, i64 784, !22, i64 789, !13, i64 800, !18, i64 808, !9, i64 824, !9, i64 832, !9, i64 840, !9, i64 848, !9, i64 856, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !4, i64 896, !4, i64 900, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !4, i64 936, !4, i64 940, !13, i64 944, !13, i64 952, !4, i64 960, !5, i64 964, !4, i64 996, !9, i64 1000, !9, i64 1008, !4, i64 1016, !4, i64 1020, !13, i64 1024, !5, i64 1032, !5, i64 1033, !17, i64 1034, !17, i64 1036, !13, i64 1040, !4, i64 1048, !5, i64 1052, !9, i64 1056, !9, i64 1064, !9, i64 1072, !13, i64 1080, !13, i64 1088, !13, i64 1096, !13, i64 1104, !5, i64 1112, !4, i64 1116, !4, i64 1120, !4, i64 1124, !11, i64 1128, !23, i64 1136, !11, i64 1168, !13, i64 1176, !11, i64 1184, !4, i64 1192, !4, i64 1196, !13, i64 1200, !5, i64 1208}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS13__jmp_buf_tag", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"z_stream_s", !13, i64 0, !4, i64 8, !11, i64 16, !13, i64 24, !4, i64 32, !11, i64 40, !13, i64 48, !14, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !4, i64 88, !11, i64 96, !11, i64 104}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"p1 _ZTS14internal_state", !9, i64 0}
!15 = !{!"p1 _ZTS22png_compression_buffer", !9, i64 0}
!16 = !{!"p1 _ZTS16png_color_struct", !9, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = !{!"png_color_16_struct", !5, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8}
!19 = !{!"png_xy", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!20 = !{!"p2 short", !21, i64 0}
!21 = !{!"any p2 pointer", !9, i64 0}
!22 = !{!"png_color_8_struct", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4}
!23 = !{!"png_unknown_chunk_t", !5, i64 0, !13, i64 8, !11, i64 16, !5, i64 24}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!26 = !{!5, !5, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28, !31}
!31 = !{!"llvm.loop.peeled.count", i32 1}
!32 = !{!8, !9, i64 232}
!33 = distinct !{!33, !28, !31}
!34 = distinct !{!34, !28, !31}
!35 = distinct !{!35, !28}
!36 = distinct !{!36, !28}
!37 = distinct !{!37, !28}
!38 = !{!8, !4, i64 544}
end_hunk_0
