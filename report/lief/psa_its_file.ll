Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/psa_its_file?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
%struct.psa_its_file_header_t = type { [8 x i8], [4 x i8], [4 x i8] }
%struct.psa_storage_info_t = type { i32, i32 }

@.str.1 = private unnamed_addr constant [17 x i8] c"tempfile.psa_its\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%s%08x%08x%s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c".psa_its\00", align 1

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 -152, 1) i32 @psa_its_get_info(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = call fastcc i32 @psa_its_read_file(i64 noundef %0, ptr noundef %1, ptr noundef %i.a)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 -152, 1) i32 @psa_its_read_file(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [25 x i8], align 16               ; 4 uses
  %3 = alloca %struct.psa_its_file_header_t, align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  store ptr null, ptr %2, align 8, !tbaa !8
  %i.b = lshr i64 %0, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = trunc i64 %0 to i32
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 25, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull @.str.6) #3 ; 0 uses
  %i.f = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3) ; 3 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @setbuf(ptr noundef nonnull %i.f, ptr noundef null) #3
  %i.h = load ptr, ptr %2, align 8, !tbaa !8
  %i.i = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 16, ptr noundef %i.h)
  %.not = icmp eq i64 %i.i, 16
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %3, align 1
  %i.k = icmp ne i64 %i.j, 23455095580611408
  %i.l = zext i1 %i.k to i32
  %.not10 = icmp eq i32 %i.l, 0
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load <2 x i32>, ptr %i.m, align 1
  store <2 x i32> %i.n, ptr %1, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -140, %bb.a ], [ -152, %bb.b ], [ -152, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 -152, 1) i32 @psa_its_get(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.psa_storage_info_t, align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.b = call fastcc i32 @psa_its_read_file(i64 noundef %0, ptr noundef nonnull %5, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.thread-pre-split_crit_edge

.thread-pre-split_crit_edge:                      ; preds = %bb.a
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %thread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %2, %1                           ; 2 uses
  %i.d = icmp ult i32 %i.c, %1
  %i.e = load i32, ptr %5, align 4
  %i.f = icmp ugt i32 %i.c, %i.e
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  %.pr.pre26 = load ptr, ptr %i.a, align 8, !tbaa !8 ; 7 uses
  br i1 %or.cond, label %thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %1 to i64
  %i.h = tail call i32 @fseek(ptr noundef %.pr.pre26, i64 noundef %i.g, i32 noundef 1)
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.i = zext i32 %2 to i64                       ; 3 uses
  %i.j = tail call i64 @fread(ptr noundef %3, i64 noundef 1, i64 noundef %i.i, ptr noundef %.pr.pre26)
  %.not22 = icmp eq i64 %i.j, %i.i
  br i1 %.not22, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %.not23 = icmp eq ptr %4, null
  br i1 %.not23, label %thread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.i, ptr %4, align 8, !tbaa !12
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %bb.f, %bb.d, %bb.b, %.thread-pre-split_crit_edge, %bb.c
  %i.k = phi ptr [ %.pr.pre26, %bb.c ], [ %.pr.pre26, %bb.f ], [ %.pr.pre26, %bb.d ], [ %.pr.pre26, %bb.e ], [ %.pr.pre26, %bb.b ], [ %.pr.pre, %.thread-pre-split_crit_edge ] ; 2 uses
  %.0 = phi i32 [ -146, %bb.c ], [ 0, %bb.f ], [ -146, %bb.d ], [ 0, %bb.e ], [ -135, %bb.b ], [ %i.b, %.thread-pre-split_crit_edge ]
  %.not24 = icmp eq ptr %i.k, null
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %thread-pre-split
  %i.l = tail call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %thread-pre-split
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 -146, 1) i32 @psa_its_set(i64 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [25 x i8], align 16               ; 4 uses
  %4 = alloca %struct.psa_its_file_header_t, align 8 ; 6 uses
  %i.b = icmp eq i64 %0, 0
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  store i64 23455095580611408, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %3, ptr %i.d, align 4
  %i.e = lshr i64 %0, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = trunc i64 %0 to i32
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 25, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %i.f, i32 noundef %i.g, ptr noundef nonnull @.str.6) #3 ; 0 uses
  %i.i = tail call noalias ptr @fopen(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread33, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @setbuf(ptr noundef nonnull %i.i, ptr noundef null) #3
  %i.k = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 16, ptr noundef nonnull %i.i)
  %.not = icmp eq i64 %i.k, 16
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not26 = icmp eq i32 %1, 0
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext i32 %1 to i64                       ; 2 uses
  %i.m = tail call i64 @fwrite(ptr noundef %2, i64 noundef 1, i64 noundef %i.l, ptr noundef nonnull %i.i)
  %.not27 = icmp eq i64 %i.m, %i.l
  br i1 %.not27, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.n = tail call i32 @fclose(ptr noundef nonnull %i.i)
  %.not42 = icmp eq i32 %i.n, 0
  br i1 %.not42, label %bb.h, label %.thread33

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.o = tail call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  br label %.thread33

bb.h:                                             ; preds = %bb.f
  %i.p = call i32 @rename(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #3
  %.not29 = icmp eq i32 %i.p, 0
  %spec.select = select i1 %.not29, i32 0, i32 -146
  br label %.thread33

.thread33:                                        ; preds = %bb.g, %bb.f, %bb.b, %bb.h
  %.2 = phi i32 [ -142, %bb.g ], [ %spec.select, %bb.h ], [ -146, %bb.b ], [ -142, %bb.f ]
  %i.q = tail call i32 @remove(ptr noundef nonnull @.str.1) #3 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.thread33
  %.0 = phi i32 [ %.2, %.thread33 ], [ -136, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @setbuf(ptr noundef captures(none), ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 -146, 1) i32 @psa_its_remove(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [25 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = lshr i64 %0, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = trunc i64 %0 to i32
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 25, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull @.str.6) #3 ; 0 uses
  %i.f = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  %i.i = call i32 @remove(ptr noundef nonnull %i.a) #3
  %.not = icmp eq i32 %i.i, 0
  %. = select i1 %.not, i32 0, i32 -146
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -140, %bb.a ], [ %., %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
end_hunk_0
