inline.NumInlined: 5
inline.NumDeleted: 5
begin_hunk_0_@duckdb_je_pai_alloc_batch_default:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i8 0, ptr %i.a, align 1, !tbaa !7
  %i.b = load ptr, ptr %1, align 8, !tbaa !9
  %i.c = call ptr %i.b(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef 4096, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext %5, ptr noundef nonnull %i.a) #2 ; 8 uses
  %i.d = load i8, ptr %i.a, align 1, !tbaa !7, !range !12, !noundef !13
  %i.e = load i8, ptr %6, align 1, !tbaa !7, !range !12, !noundef !13
  %i.f = or i8 %i.e, %i.d
  store i8 %i.f, ptr %6, align 1, !tbaa !7
  %.not = icmp eq ptr %i.c, null
end_hunk_0
begin_hunk_1_@duckdb_je_pai_alloc_batch_default:bb.a

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.c, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 4 uses
  store ptr %i.c, ptr %i.h, align 8, !tbaa !14
  %i.i = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  store ptr %i.l, ptr %i.g, align 8, !tbaa !14
  %i.m = load ptr, ptr %4, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.c, ptr %i.n, align 8, !tbaa !14
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14
  store ptr %i.q, ptr %i.h, align 8, !tbaa !14
  %i.r = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.r, ptr %i.u, align 8, !tbaa !14
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr %i.c, ptr %i.w, align 8, !tbaa !14
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %.pre.i, %bb.c ], [ %i.c, %bb.b ]
  store ptr %i.x, ptr %4, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  %i.y = add nuw i64 %.01724, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %3
end_hunk_1
begin_hunk_2_@duckdb_je_pai_dalloc_batch_default
define void @duckdb_je_pai_dalloc_batch_default(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %.val7 = load ptr, ptr %2, align 8, !tbaa !15   ; 2 uses
  %.not8 = icmp eq ptr %.val7, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

end_hunk_2
begin_hunk_3_@duckdb_je_pai_dalloc_batch_default:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i8 0, ptr %i.a, align 1, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val9, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !15
  %i.e = icmp eq ptr %i.d, %.val9
  br i1 %i.e, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %.val9, i64 48 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.g, ptr %i.j, align 8, !tbaa !14
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.k, ptr %i.m, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  store ptr %i.o, ptr %i.h, align 8, !tbaa !14
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.p, ptr %i.s, align 8, !tbaa !14
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %.val9, ptr %i.u, align 8, !tbaa !14
  br label %edata_list_active_remove.exit

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %2, align 8, !tbaa !15
  br label %edata_list_active_remove.exit

edata_list_active_remove.exit:                    ; preds = %.thread.i, %bb.c
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !19
  call void %i.v(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.val9, ptr noundef nonnull %i.a) #2
  %i.w = load i8, ptr %i.a, align 1, !tbaa !7, !range !12, !noundef !13
  %i.x = load i8, ptr %3, align 1, !tbaa !7, !range !12, !noundef !13
  %i.y = or i8 %i.x, %i.w
  store i8 %i.y, ptr %3, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  %.val = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %._crit_edge, label %bb.b

end_hunk_3
begin_hunk_4_@duckdb_je_pai_dalloc_batch_default:bb.a
!9 = !{!10, !11, i64 0}
!10 = !{!"pai_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!5, !5, i64 0}
!15 = !{!16, !18, i64 0}
!16 = !{!"", !17, i64 0}
!17 = !{!"", !18, i64 0}
!18 = !{!"p1 _ZTS7edata_s", !11, i64 0}
!19 = !{!10, !11, i64 32}
end_hunk_4
