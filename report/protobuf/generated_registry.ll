begin_hunk_0_@upb_GeneratedRegistry_Load:bb.a

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr @upb_alloc_global, align 8, !tbaa !9
  %i.k = tail call ptr %i.j(ptr noundef nonnull @upb_alloc_global, ptr noundef null, i64 noundef 0, i64 noundef 16, ptr noundef null) #3 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_upb_GeneratedRegistry_New.exit.thread, label %bb.h

end_hunk_0
begin_hunk_1_@upb_GeneratedRegistry_Load:bb.a
  br i1 %i.p, label %_upb_GeneratedRegistry_AddAllLinkedExtensions.exit.thread26.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.m, ptr %i.k, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.q, align 8, !tbaa !16
  %.01933.i.i = load ptr, ptr @upb_generated_extension_list_dont_copy_me__upb_internal_use_only, align 8, !tbaa !17 ; 2 uses
  %.not34.i.i = icmp eq ptr %.01933.i.i, null
  br i1 %.not34.i.i, label %_upb_GeneratedRegistry_New.exit.thread37, label %.lr.ph38.i.i

.lr.ph38.i.i:                                     ; preds = %bb.j, %._crit_edge.i.i
  %.01935.i.i = phi ptr [ %.019.i.i, %._crit_edge.i.i ], [ %.01933.i.i, %bb.j ] ; 3 uses
  %i.r = load ptr, ptr %.01935.i.i, align 8, !tbaa !19 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01935.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22   ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = icmp ult ptr %i.r, %i.t
  br i1 %i.v, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i
end_hunk_1
begin_hunk_2_@upb_GeneratedRegistry_Load:bb.a
.lr.ph.i.i:                                       ; preds = %select.unfold.i.i, %.lr.ph.preheader.i.i
  %.01732.i.i = phi i64 [ %.118.i.i, %select.unfold.i.i ], [ %i.w, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.x = inttoptr i64 %.01732.i.i to ptr          ; 2 uses
  %.val.i.i = load i32, ptr %i.x, align 8, !tbaa !23
  %i.y = icmp eq i32 %.val.i.i, 0
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.z = add i64 %.01732.i.i, 8
  br label %select.unfold.i.i, !llvm.loop !28

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.aa = tail call i32 @upb_ExtensionRegistry_Add(ptr noundef nonnull %i.o, ptr noundef nonnull %i.x) #3
end_hunk_2
begin_hunk_3_@upb_GeneratedRegistry_Load:bb.a

._crit_edge.i.i:                                  ; preds = %select.unfold.i.i, %.lr.ph38.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.01935.i.i, i64 16
  %.019.i.i = load ptr, ptr %i.ad, align 8, !tbaa !17 ; 2 uses
  %.not.i.i = icmp eq ptr %.019.i.i, null
  br i1 %.not.i.i, label %_upb_GeneratedRegistry_New.exit.thread37, label %.lr.ph38.i.i, !llvm.loop !29

_upb_GeneratedRegistry_AddAllLinkedExtensions.exit.thread26.i: ; preds = %bb.i, %bb.l
  tail call void @upb_Arena_Free(ptr noundef nonnull %i.m) #3
end_hunk_3
begin_hunk_4_@upb_GeneratedRegistry_Load:bb.a

_upb_GeneratedRegistry_AddAllLinkedExtensions.exit.thread23.thread30.i: ; preds = %bb.h, %_upb_GeneratedRegistry_AddAllLinkedExtensions.exit.thread26.i
  %i.ae = load ptr, ptr @upb_alloc_global, align 8, !tbaa !9
  %i.af = tail call ptr %i.ae(ptr noundef nonnull @upb_alloc_global, ptr noundef nonnull %i.k, i64 noundef 0, i64 noundef 0, ptr noundef null) #3 ; 0 uses
  br label %_upb_GeneratedRegistry_New.exit.thread

_upb_GeneratedRegistry_New.exit.thread37:         ; preds = %._crit_edge.i.i, %bb.j
end_hunk_4
begin_hunk_5_@upb_GeneratedRegistry_Load:bb.a
  br label %_upb_GeneratedRegistry_New.exit.thread

bb.n:                                             ; preds = %_upb_GeneratedRegistry_New.exit.thread37
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !12
  tail call void @upb_Arena_Free(ptr noundef %i.ai) #3
  %i.aj = load ptr, ptr @upb_alloc_global, align 8, !tbaa !9
  %i.ak = tail call ptr %i.aj(ptr noundef nonnull @upb_alloc_global, ptr noundef nonnull %i.k, i64 noundef 0, i64 noundef 0, ptr noundef null) #3 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.n, %bb.f
end_hunk_5
begin_hunk_6_@upb_GeneratedRegistry_Release:bb.a
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  tail call void @upb_Arena_Free(ptr noundef %i.e) #3
  %i.f = load ptr, ptr @upb_alloc_global, align 8, !tbaa !9
  %i.g = tail call ptr %i.f(ptr noundef nonnull @upb_alloc_global, ptr noundef nonnull %i.d, i64 noundef 0, i64 noundef 0, ptr noundef null) #3 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
end_hunk_6
begin_hunk_7_@upb_GeneratedRegistry_Get:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_7
begin_hunk_8_@upb_ExtensionRegistry_Add
!9 = !{!10, !11, i64 0}
!10 = !{!"upb_alloc", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"upb_GeneratedRegistryRef", !14, i64 0, !15, i64 8}
!14 = !{!"p1 _ZTS9upb_Arena", !11, i64 0}
!15 = !{!"p1 _ZTS21upb_ExtensionRegistry", !11, i64 0}
!16 = !{!13, !15, i64 8}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS67upb_GeneratedExtensionListEntry_dont_copy_me__upb_internal_use_only", !11, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"upb_GeneratedExtensionListEntry_dont_copy_me__upb_internal_use_only", !21, i64 0, !21, i64 8, !18, i64 16}
!21 = !{!"p1 _ZTS22upb_MiniTableExtension", !11, i64 0}
!22 = !{!20, !21, i64 8}
!23 = !{!24, !4, i64 0}
!24 = !{!"upb_MiniTableExtension", !25, i64 0, !5, i64 16, !27, i64 24}
!25 = !{!"upb_MiniTableField", !4, i64 0, !26, i64 4, !26, i64 6, !26, i64 8, !5, i64 10, !5, i64 11}
!26 = !{!"short", !5, i64 0}
!27 = !{!"p1 _ZTS13upb_MiniTable", !11, i64 0}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
end_hunk_8
