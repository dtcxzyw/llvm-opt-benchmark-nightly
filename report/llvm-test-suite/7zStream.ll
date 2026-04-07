begin_hunk_0_@SeqInStream_Read:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 %.01626.i, ptr %i.a, align 8, !tbaa !8
  %i.b = load ptr, ptr %0, align 8, !tbaa !10
  %i.c = call i32 %i.b(ptr noundef nonnull %0, ptr noundef %.01427.i, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not20.i = icmp eq i32 %i.c, 0
  br i1 %.not20.i, label %bb.b, label %.thread.i

end_hunk_0
begin_hunk_1_@LookInStream_SeekTo:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 %1, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = call i32 %i.c(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.d
end_hunk_1
begin_hunk_2_@LookInStream_LookRead:bb.a
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  %i.e = call i32 %i.d(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #7 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.g = load i64, ptr %2, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.f, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = load i64, ptr %2, align 8, !tbaa !8
  %i.k = call i32 %i.i(ptr noundef nonnull %0, i64 noundef %i.j) #7
  br label %bb.d
end_hunk_2
begin_hunk_3_@LookInStream_Read2:bb.a
  %.01626 = phi i64 [ %2, %.lr.ph ], [ %i.h, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 %.01626, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = call i32 %i.c(ptr noundef %0, ptr noundef %.01427, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %bb.c, label %.thread
end_hunk_3
begin_hunk_4_@LookInStream_Read:bb.a
  %.01626.i = phi i64 [ %2, %.lr.ph.i ], [ %i.h, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 %.01626.i, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = call i32 %i.c(ptr noundef %0, ptr noundef %.01427.i, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not20.i = icmp eq i32 %i.d, 0
  br i1 %.not20.i, label %bb.c, label %.thread.i

end_hunk_4
begin_hunk_5_@LookToRead_CreateVTable:bb.a
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, ptr @LookToRead_Look_Exact, ptr @LookToRead_Look_Lookahead
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @LookToRead_Skip, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @LookToRead_Read, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @LookToRead_Seek, ptr %i.d, align 8, !tbaa !25
  ret void
}

end_hunk_5
begin_hunk_6_@LookToRead_Look_Lookahead:bb.a
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp eq i64 %i.c, %i.e
  %.pre15 = load i64, ptr %2, align 8, !tbaa !8   ; 2 uses
end_hunk_6
begin_hunk_7_@LookToRead_Look_Lookahead:bb.a
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.d, align 8, !tbaa !27
  store i64 16384, ptr %i.a, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = call i32 %i.j(ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a) #7
  %i.m = load i64, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !26
  %.pre = load i64, ptr %2, align 8, !tbaa !8
  br label %bb.d

end_hunk_7
begin_hunk_8_@LookToRead_Look_Lookahead:bb.a
.thread:                                          ; preds = %bb.b, %bb.e, %bb.d
  %.018 = phi i32 [ %.0, %bb.d ], [ %.0, %bb.e ], [ 0, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i64, ptr %i.d, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %1, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.018
}
end_hunk_8
begin_hunk_9_@LookToRead_Look_Exact
define internal i32 @LookToRead_Look_Exact(ptr noundef %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = sub i64 %i.b, %i.d                       ; 2 uses
  %i.f = icmp eq i64 %i.b, %i.d
  %.pre = load i64, ptr %2, align 8, !tbaa !8     ; 2 uses
end_hunk_9
begin_hunk_10_@LookToRead_Look_Exact:bb.a
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.c, align 8, !tbaa !27
  %i.g = load i64, ptr %2, align 8, !tbaa !8
  %i.h = icmp ugt i64 %i.g, 16384
  br i1 %i.h, label %bb.d, label %bb.e
end_hunk_10
begin_hunk_11_@LookToRead_Look_Exact:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = tail call i32 %i.k(ptr noundef nonnull %i.j, ptr noundef nonnull %i.l, ptr noundef nonnull %2) #7
  %i.n = load i64, ptr %2, align 8, !tbaa !8
  store i64 %i.n, ptr %i.a, align 8, !tbaa !26
  br label %.thread

bb.f:                                             ; preds = %bb.a
end_hunk_11
begin_hunk_12_@LookToRead_Look_Exact:bb.a
.thread:                                          ; preds = %bb.b, %bb.e, %bb.g, %bb.f
  %.02126 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.b ], [ %i.m, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.c, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  store ptr %i.r, ptr %1, align 8, !tbaa !18
  ret i32 %.02126
}

end_hunk_12
begin_hunk_13_@LookToRead_Skip
define internal noundef i32 @LookToRead_Skip(ptr noundef captures(none) %0, i64 noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %i.c = add i64 %i.b, %1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !27
  ret i32 0
}

end_hunk_13
begin_hunk_14_@LookToRead_Read
define internal i32 @LookToRead_Read(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = tail call i32 %i.h(ptr noundef nonnull %i.g, ptr noundef %1, ptr noundef %2) #7
  br label %bb.d

end_hunk_14
begin_hunk_15_@LookToRead_Read:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.m, i64 %spec.select, i1 false)
  %i.n = load i64, ptr %i.c, align 8, !tbaa !27
  %i.o = add i64 %i.n, %spec.select
  store i64 %i.o, ptr %i.c, align 8, !tbaa !27
  store i64 %spec.select, ptr %2, align 8, !tbaa !8
  br label %bb.d

end_hunk_15
begin_hunk_16_@LookToRead_Seek:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = tail call i32 %i.e(ptr noundef %i.c, ptr noundef %1, i32 noundef %2) #7
  ret i32 %i.f
}
end_hunk_16
begin_hunk_17_@LookToRead_Init:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SecToLook_CreateVTable(ptr noundef writeonly captures(none) initializes((0, 8)) %0) local_unnamed_addr #3 {
bb.a:
  store ptr @SecToLook_Read, ptr %0, align 8, !tbaa !32
  ret void
}

end_hunk_17
begin_hunk_18_@SecToLook_Read:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = load i64, ptr %2, align 8, !tbaa !8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %LookInStream_LookRead.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.g = call i32 %i.f(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #7 ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %LookInStream_LookRead.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.i = load i64, ptr %2, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.h, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = load i64, ptr %2, align 8, !tbaa !8
  %i.m = call i32 %i.k(ptr noundef nonnull %i.c, i64 noundef %i.l) #7
  br label %LookInStream_LookRead.exit

LookInStream_LookRead.exit:                       ; preds = %bb.a, %bb.b, %bb.c
end_hunk_18
begin_hunk_19_@SecToLook_Read:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SecToRead_CreateVTable(ptr noundef writeonly captures(none) initializes((0, 8)) %0) local_unnamed_addr #3 {
bb.a:
  store ptr @SecToRead_Read, ptr %0, align 8, !tbaa !32
  ret void
}

end_hunk_19
begin_hunk_20_@SecToRead_Read
define internal i32 @SecToRead_Read(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = tail call i32 %i.d(ptr noundef %i.b, ptr noundef %1, ptr noundef %2) #7
  ret i32 %i.e
}
end_hunk_20
begin_hunk_21_@llvm.umin.i64
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long long", !6, i64 0}
!15 = !{!16, !12, i64 24}
!16 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!17 = !{!16, !12, i64 0}
!18 = !{!12, !12, i64 0}
!19 = !{!16, !12, i64 8}
!20 = !{!16, !12, i64 16}
!21 = !{!22, !12, i64 0}
!22 = !{!"", !16, i64 0, !12, i64 32, !9, i64 40, !9, i64 48, !6, i64 56}
!23 = !{!22, !12, i64 8}
!24 = !{!22, !12, i64 16}
!25 = !{!22, !12, i64 24}
!26 = !{!22, !9, i64 48}
!27 = !{!22, !9, i64 40}
!28 = !{!22, !12, i64 32}
!29 = !{!30, !12, i64 0}
!30 = !{!"", !12, i64 0, !12, i64 8}
!31 = !{!30, !12, i64 8}
!32 = !{!33, !12, i64 0}
!33 = !{!"", !11, i64 0, !12, i64 8}
!34 = !{!33, !12, i64 8}
end_hunk_21
