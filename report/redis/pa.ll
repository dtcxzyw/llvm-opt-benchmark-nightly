inline.NumInlined: 31
inline.NumDeleted: 18
begin_hunk_0_@je_pa_alloc:tsdn_witness_tsdp_get.exit
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 62264 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = tail call ptr %i.e(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %6, i1 noundef zeroext false, i1 noundef zeroext %4, ptr noundef %8) #4, !inline_history !63 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %.thread39

.thread:                                          ; preds = %bb.a, %tsdn_witness_tsdp_get.exit, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = tail call ptr %i.i(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %4, ptr noundef %8) #4, !inline_history !63 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %.thread39

end_hunk_0
begin_hunk_1_@je_pa_alloc:tsdn_witness_tsdp_get.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 68264 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  tail call void @je_emap_remap(ptr noundef %0, ptr noundef %i.o, ptr noundef nonnull %.142, i32 noundef %5, i1 noundef zeroext %4) #4
  %i.p = load i64, ptr %.142, align 8, !tbaa !64
  %i.q = and i64 %i.p, -267390977
  %i.r = zext i32 %5 to i64
  %i.s = shl nuw nsw i64 %i.r, 20
  %i.t = select i1 %4, i64 4096, i64 0
  %i.u = or disjoint i64 %i.s, %i.t
  %i.v = or i64 %i.u, %i.q
  store i64 %i.v, ptr %.142, align 8, !tbaa !64
  %i.w = icmp ugt i64 %2, 8192
  %or.cond = and i1 %i.w, %4
  br i1 %or.cond, label %bb.c, label %bb.d
end_hunk_1
begin_hunk_2_@je_emap_register_interior
; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_pa_expand(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i1 noundef zeroext %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.a = and i64 %.val, 65536
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d
end_hunk_2
begin_hunk_3_@je_pa_expand:bb.a
  %.v.i = select i1 %i.c, i64 24, i64 62264
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.v.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.g = tail call zeroext i1 %i.f(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %6, ptr noundef %7) #4, !inline_history !67
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_3
begin_hunk_4_@je_pa_expand:bb.a
  %i.i = lshr i64 %i.h, 12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = atomicrmw add ptr %i.j, i64 %i.i monotonic, align 8 ; 0 uses
  %i.l = load i64, ptr %2, align 8, !tbaa !64
  %i.m = and i64 %i.l, -267386881
  %i.n = zext i32 %5 to i64
  %i.o = shl nuw nsw i64 %i.n, 20
  %i.p = or i64 %i.m, %i.o
  store i64 %i.p, ptr %2, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68264
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58
  tail call void @je_emap_remap(ptr noundef %0, ptr noundef %i.r, ptr noundef nonnull %2, i32 noundef %5, i1 noundef zeroext false) #4
end_hunk_4
begin_hunk_5_@je_pa_expand:bb.a
; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_pa_shrink(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.a = and i64 %.val, 65536
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d
end_hunk_5
begin_hunk_6_@je_pa_shrink:bb.a
  %.v.i = select i1 %i.c, i64 24, i64 62264
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.v.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = tail call zeroext i1 %i.f(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef %6) #4, !inline_history !69
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_6
begin_hunk_7_@je_pa_shrink:bb.a
  %i.i = lshr i64 %i.h, 12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = atomicrmw sub ptr %i.j, i64 %i.i monotonic, align 8 ; 0 uses
  %i.l = load i64, ptr %2, align 8, !tbaa !64
  %i.m = and i64 %i.l, -267386881
  %i.n = zext i32 %5 to i64
  %i.o = shl nuw nsw i64 %i.n, 20
  %i.p = or i64 %i.m, %i.o
  store i64 %i.p, ptr %2, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68264
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58
  tail call void @je_emap_remap(ptr noundef %0, ptr noundef %i.r, ptr noundef nonnull %2, i32 noundef %5, i1 noundef zeroext false) #4
end_hunk_7
begin_hunk_8_@je_pa_dalloc:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  tail call void @je_emap_remap(ptr noundef %0, ptr noundef %i.b, ptr noundef %2, i32 noundef 235, i1 noundef zeroext false) #4
  %.val18 = load i64, ptr %2, align 8, !tbaa !64  ; 2 uses
  %i.c = and i64 %.val18, 4096
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_8
begin_hunk_9_@je_pa_dalloc:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !58
  tail call void @je_emap_deregister_interior(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull %2) #4
  %.pre = load i64, ptr %2, align 8, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %.pre, %bb.b ], [ %.val18, %bb.a ]
  %i.f = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val19 = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.g = ptrtoint ptr %.val19 to i64
  %i.h = and i64 %i.g, -4096
  %i.i = inttoptr i64 %i.h to ptr
  store ptr %i.i, ptr %i.f, align 8, !tbaa !70
  %i.j = and i64 %i.e, -267386881
  %i.k = or disjoint i64 %i.j, 246415360
  store i64 %i.k, ptr %2, align 8, !tbaa !64
  %i.l = getelementptr i8, ptr %2, i64 16
  %.val20 = load i64, ptr %i.l, align 8, !tbaa !71
  %i.m = lshr i64 %.val20, 12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = atomicrmw sub ptr %i.n, i64 %i.m monotonic, align 8 ; 0 uses
  %.val = load i64, ptr %2, align 8, !tbaa !64
  %i.p = and i64 %.val, 16384
  %i.q = icmp eq i64 %i.p, 0
  %.v.i = select i1 %i.q, i64 24, i64 62264
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.v.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72
  tail call void %i.t(ptr noundef %0, ptr noundef nonnull %i.r, ptr noundef nonnull %2, ptr noundef %3) #4, !inline_history !73
  ret void
}

end_hunk_9
begin_hunk_10_@je_pa_shard_time_until_deferred_work:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.d = tail call i64 %i.c(ptr noundef %0, ptr noundef nonnull %i.a) #4, !inline_history !75 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

end_hunk_10
begin_hunk_11_@je_pa_shard_time_until_deferred_work:bb.a
bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 62384
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 62432
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.l = tail call i64 %i.k(ptr noundef %0, ptr noundef nonnull %i.i) #4, !inline_history !75
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.d)
  br label %bb.d

end_hunk_11
begin_hunk_12_@llvm.umin.i64
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!20, !14, i64 0}
!63 = distinct !{null}
!64 = !{!65, !16, i64 0}
!65 = !{!"edata_s", !16, i64 0, !14, i64 8, !9, i64 16, !47, i64 24, !16, i64 32, !9, i64 40, !9, i64 64}
!66 = !{!20, !14, i64 16}
!67 = distinct !{null}
!68 = !{!20, !14, i64 24}
!69 = distinct !{null}
!70 = !{!65, !14, i64 8}
!71 = !{!9, !9, i64 0}
!72 = !{!20, !14, i64 32}
!73 = distinct !{null}
!74 = !{!20, !14, i64 48}
!75 = distinct !{null}
end_hunk_12
