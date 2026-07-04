inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"Invalid reference to float vector object to initialize\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Received request to allocate negative sized float vector (%d entries)\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Invalid too large size for float vector (%d entries)\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Invalid reference to float array object to initialize\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Invalid (NULL) arguments to float vector create\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @exr_attr_float_vector_init(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = shl nsw i64 %i.a, 2                      ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not29 = icmp eq ptr %1, null
  br i1 %.not29, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str) #3
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = tail call i32 (ptr, i32, ptr, ...) %i.h(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %2) #3
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.j = icmp ugt i64 %i.b, 2147483647
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = tail call i32 (ptr, i32, ptr, ...) %i.l(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %2) #3
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %.not30 = icmp eq i32 %2, 0
  br i1 %.not30, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = tail call ptr %i.o(i64 noundef %i.b) #3  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !25
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = tail call i32 %i.t(ptr noundef nonnull %0, i32 noundef 1) #3
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %2, ptr %1, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %2, ptr %i.v, align 4, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.a, %bb.j, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ %i.i, %bb.e ], [ %i.m, %bb.g ], [ %i.u, %bb.j ], [ 2, %bb.a ], [ %i.e, %bb.c ], [ 0, %bb.h ], [ 0, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden i32 @exr_attr_float_vector_init_static(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %3, 0
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = tail call i32 (ptr, i32, ptr, ...) %i.c(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %3) #3
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %.not21 = icmp eq ptr %1, null
  br i1 %.not21, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str) #3
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %.not22 = icmp eq ptr %2, null
  br i1 %.not22, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.3) #3
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.k, align 8, !tbaa !25
  store i32 %3, ptr %1, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.h ], [ %i.j, %bb.g ], [ %i.g, %bb.e ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @exr_attr_float_vector_create(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %exr_attr_float_vector_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.4) #3
  br label %exr_attr_float_vector_init.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.f = sext i32 %3 to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.h = icmp slt i32 %3, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = tail call i32 (ptr, i32, ptr, ...) %i.j(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %3) #3, !inline_history !31
  br label %exr_attr_float_vector_init.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.g, 2147483647
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.o = tail call i32 (ptr, i32, ptr, ...) %i.n(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %3) #3, !inline_history !31
  br label %exr_attr_float_vector_init.exit

bb.h:                                             ; preds = %bb.f
  %.not30.i = icmp eq i32 %3, 0
  br i1 %.not30.i, label %exr_attr_float_vector_init.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = tail call ptr %i.q(i64 noundef %i.g) #3, !inline_history !31 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !25
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %4, label %bb.j

4:                                                ; preds = %bb.i
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = tail call i32 %6(ptr noundef nonnull %0, i32 noundef 1) #3, !inline_history !31
  br label %exr_attr_float_vector_init.exit

bb.j:                                             ; preds = %bb.i
  store i32 %3, ptr %1, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %3, ptr %i.u, align 4, !tbaa !30
  br label %exr_attr_float_vector_init.exit

exr_attr_float_vector_init.exit:                  ; preds = %bb.g, %4, %bb.j
  %.0.i = phi i32 [ 0, %bb.j ], [ %i.o, %bb.g ], [ %7, %4 ] ; 2 uses
  %8 = icmp eq i32 %.0.i, 0
  %9 = add nsw i32 %3, -1
  %10 = icmp ult i32 %9, 536870911
  %or.cond25 = and i1 %10, %8
  br i1 %or.cond25, label %bb.k, label %exr_attr_float_vector_init.exit.thread

bb.k:                                             ; preds = %exr_attr_float_vector_init.exit
  %i.v = shl nuw nsw i32 %3, 2
  %i.w = zext nneg i32 %i.v to i64
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %11, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.x, ptr nonnull align 4 %2, i64 %i.w, i1 false)
  br label %exr_attr_float_vector_init.exit.thread

exr_attr_float_vector_init.exit.thread:           ; preds = %bb.h, %bb.e, %exr_attr_float_vector_init.exit, %bb.k, %bb.a, %bb.c
  %.0 = phi i32 [ 2, %bb.a ], [ %i.e, %bb.c ], [ %.0.i, %exr_attr_float_vector_init.exit ], [ 0, %bb.k ], [ 0, %bb.h ], [ %i.k, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 3) i32 @exr_attr_float_vector_destroy(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10 = icmp eq ptr %1, null
  br i1 %.not10, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void %i.g(ptr noundef nonnull %i.b) #3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ 0, %bb.f ], [ 0, %bb.b ]
  ret i32 %.0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
!7 = !{!8, !11, i64 64}
!8 = !{!"_priv_exr_context_t", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !9, i64 8, !9, i64 24, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !12, i64 124, !11, i64 128, !11, i64 136, !11, i64 144, !13, i64 152, !11, i64 160, !11, i64 168, !13, i64 176, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !14, i64 200, !21, i64 464, !22, i64 472, !15, i64 480, !5, i64 504, !5, i64 544, !5, i64 545, !5, i64 546, !4, i64 548}
!9 = !{!"", !4, i64 0, !4, i64 4, !10, i64 8}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"float", !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_priv_exr_part_t", !4, i64 0, !4, i64 4, !15, i64 8, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !17, i64 144, !17, i64 160, !4, i64 176, !4, i64 180, !4, i64 184, !12, i64 188, !4, i64 192, !4, i64 196, !19, i64 200, !19, i64 208, !19, i64 216, !19, i64 224, !13, i64 232, !20, i64 240, !20, i64 242, !4, i64 244, !13, i64 248, !5, i64 256}
!15 = !{!"exr_attribute_list", !4, i64 0, !4, i64 4, !16, i64 8, !16, i64 16}
!16 = !{!"any p2 pointer", !11, i64 0}
!17 = !{!"", !18, i64 0, !18, i64 8}
!18 = !{!"", !4, i64 0, !4, i64 4}
!19 = !{!"p1 int", !11, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = !{!"p1 _ZTS16_priv_exr_part_t", !11, i64 0}
!22 = !{!"p2 _ZTS16_priv_exr_part_t", !16, i64 0}
!23 = !{!8, !11, i64 72}
!24 = !{!8, !11, i64 88}
!25 = !{!26, !27, i64 8}
!26 = !{!"", !4, i64 0, !4, i64 4, !27, i64 8}
!27 = !{!"p1 float", !11, i64 0}
!28 = !{!8, !11, i64 56}
!29 = !{!26, !4, i64 0}
!30 = !{!26, !4, i64 4}
!31 = !{ptr @exr_attr_float_vector_init}
!32 = !{!8, !11, i64 96}
end_hunk_0
