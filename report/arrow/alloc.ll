inline.NumInlined: 139
inline.NumDeleted: 49
begin_hunk_0_@mi_heap_try_new:bb.a

.lr.ph:                                           ; preds = %.split.us, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %.split.us ]
  tail call void %i.h() #16
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !28   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 3 uses
end_hunk_0
begin_hunk_1_@mi_heap_try_new:bb.a

mi_heap_malloc.exit:                              ; preds = %.split, %bb.c
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.f, %.split ]
  tail call void %i.u() #16
  %i.v = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #16 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %.critedge, !llvm.loop !38
end_hunk_1
begin_hunk_2_@mi_heap_alloc_new:bb.a
mi_heap_malloc.exit:                              ; preds = %bb.a, %bb.b
  %i.n = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0) #16 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d, !prof !39

bb.c:                                             ; preds = %mi_heap_malloc.exit
  %i.p = tail call ptr @mi_heap_try_new(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false)
end_hunk_2
begin_hunk_3_@mi_new:bb.a
mi_heap_malloc.exit.i:                            ; preds = %bb.b, %bb.a
  %i.p = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0) #16 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %mi_heap_alloc_new.exit, !prof !39

bb.c:                                             ; preds = %mi_heap_malloc.exit.i
  %i.r = tail call ptr @mi_heap_try_new(ptr noundef %i.b, i64 noundef %0, i1 noundef zeroext false)
end_hunk_3
begin_hunk_4_@mi_heap_alloc_new_n:bb.a
mi_heap_malloc.exit.i:                            ; preds = %bb.d, %bb.c
  %i.q = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false, i64 noundef 0) #16 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %mi_heap_alloc_new.exit, !prof !39

bb.e:                                             ; preds = %mi_heap_malloc.exit.i
  %i.s = tail call ptr @mi_heap_try_new(ptr noundef %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false)
end_hunk_4
begin_hunk_5_@mi_new_n:bb.a
mi_heap_malloc.exit.i.i:                          ; preds = %bb.d, %bb.c
  %i.s = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false, i64 noundef 0) #16 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %mi_heap_alloc_new_n.exit, !prof !39

bb.e:                                             ; preds = %mi_heap_malloc.exit.i.i
  %i.u = tail call ptr @mi_heap_try_new(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false)
end_hunk_5
begin_hunk_6_@mi_new_nothrow:bb.a
mi_malloc.exit:                                   ; preds = %bb.a, %bb.b
  %i.p = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0) #16 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %bb.d, !prof !39

bb.c:                                             ; preds = %mi_malloc.exit
  %i.r = tail call fastcc ptr @mi_try_new(i64 noundef %0)
end_hunk_6
begin_hunk_7_@mi_new_aligned:bb.a
  unreachable

mi_try_new_handler.exit:                          ; preds = %.lr.ph
  tail call void %i.c() #16
  %i.d = tail call noalias ptr @mi_malloc_aligned(i64 noundef %0, i64 noundef %1) #16 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.lr.ph, label %.critedge, !llvm.loop !40

.critedge:                                        ; preds = %mi_try_new_handler.exit, %bb.a
  %.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.d, %mi_try_new_handler.exit ]
end_hunk_7
begin_hunk_8_@mi_new_aligned_nothrow:bb.a
  br label %.critedge

mi_try_new_handler.exit:                          ; preds = %.lr.ph
  tail call void %i.c() #16
  %i.d = tail call noalias ptr @mi_malloc_aligned(i64 noundef %0, i64 noundef %1) #16 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.lr.ph, label %.critedge, !llvm.loop !41

.critedge:                                        ; preds = %mi_try_new_handler.exit, %bb.a, %mi_try_new_handler.exit.thread
  %i.f = phi ptr [ null, %mi_try_new_handler.exit.thread ], [ %i.a, %bb.a ], [ %i.d, %mi_try_new_handler.exit ]
end_hunk_8
begin_hunk_9_@mi_new_realloc:bb.a
  unreachable

mi_try_new_handler.exit:                          ; preds = %.lr.ph
  tail call void %i.e() #16
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.g = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.f, ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.lr.ph, label %.critedge, !llvm.loop !42

.critedge:                                        ; preds = %mi_try_new_handler.exit, %bb.a
  %.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.g, %mi_try_new_handler.exit ]
end_hunk_9
begin_hunk_10_@mi_new_reallocn:bb.a
  unreachable

mi_try_new_handler.exit.i:                        ; preds = %.lr.ph.i
  tail call void %i.h() #16
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.j = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.i, ptr noundef %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false) ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.lr.ph.i, label %mi_new_realloc.exit, !llvm.loop !42

mi_new_realloc.exit:                              ; preds = %mi_try_new_handler.exit.i, %bb.c, %mi_count_size_overflow.exit
  %.0 = phi ptr [ null, %mi_count_size_overflow.exit ], [ %i.f, %bb.c ], [ %i.j, %mi_try_new_handler.exit.i ]
end_hunk_10
begin_hunk_11_@mi_free_try_collect_mt:bb.a
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43
  %.not = icmp eq ptr %i.i, %i.k
  br i1 %.not, label %bb.h, label %bb.f

end_hunk_11
begin_hunk_12_@mi_free_try_collect_mt:bb.a

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !44
  %i.q = tail call ptr @_mi_heap_by_tag(ptr noundef nonnull %i.i, i8 noundef zeroext %i.p) #16
  br label %bb.h

end_hunk_12
begin_hunk_13_@mi_free_try_collect_mt:bb.a

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.040, i64 224
  %i.s = load i8, ptr %i.r, align 8, !tbaa !45, !range !32, !noundef !33
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.j, label %mi_page_is_used_at_frac.exit48

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.v = icmp eq ptr %.040, %i.u
  br i1 %i.v, label %bb.k, label %bb.l, !prof !29

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %.040, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 57
  %i.y = load i8, ptr %i.x, align 1, !tbaa !51, !range !32, !noundef !33
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = select i1 %i.z, i32 42, i32 41
  br label %bb.o
end_hunk_13
begin_hunk_14_@mi_free_try_collect_mt:bb.a
  br i1 %i.ab, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %.040, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 57
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !51, !range !32, !noundef !33
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.thread, label %mi_page_is_used_at_frac.exit

mi_page_is_used_at_frac.exit:                     ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !58 ; 2 uses
  %i.ai = zext i16 %i.ah to i32
  %i.aj = lshr i16 %i.ah, 3
  %i.ak = load i16, ptr %i.a, align 8, !tbaa !24
end_hunk_14
begin_hunk_15_@mi_free_try_collect_mt:bb.a
bb.n:                                             ; preds = %mi_page_is_used_at_frac.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %.040, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !59
  %i.ar = tail call zeroext i1 @_mi_arena_memid_is_suitable(ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.ao, ptr noundef %i.aq) #16
  br i1 %i.ar, label %bb.o, label %.thread

end_hunk_15
begin_hunk_16_@mi_free_try_collect_mt:bb.a
  %i.av = tail call i64 @_mi_bin(i64 noundef %i.au) #16
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %.040, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1280
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !60
  %.not56 = icmp ugt i64 %i.ay, %.03951
  br i1 %.not56, label %mi_page_is_used_at_frac.exit48, label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread
  tail call void @_mi_arenas_page_unabandon(ptr noundef nonnull %0) #16
  tail call void @_mi_heap_page_reclaim(ptr noundef nonnull %.040, ptr noundef nonnull %0) #16
  %i.az = load ptr, ptr %.040, align 8, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 544
  tail call void @__mi_stat_counter_increase(ptr noundef nonnull %i.ba, i64 noundef 1) #16
  br label %mi_page_unown_from_free.exit

mi_page_is_used_at_frac.exit48:                   ; preds = %bb.d, %bb.h, %bb.i, %.thread, %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !58 ; 2 uses
  %i.bd = zext i16 %i.bc to i32
  %i.be = lshr i16 %i.bc, 3
  %i.bf = load i16, ptr %i.a, align 8, !tbaa !24
end_hunk_16
begin_hunk_17_@mi_free_try_collect_mt:bb.a

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !62
  %i.bo = icmp eq i32 %i.bn, 7
  br i1 %i.bo, label %bb.s, label %bb.t

end_hunk_17
begin_hunk_18_@mi_free_try_collect_mt:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bt = cmpxchg weak ptr %i.bs, i64 %i.br, i64 %i.bq acq_rel acquire, align 8 ; 2 uses
  %i.bu = extractvalue { i64, i1 } %i.bt, 1
  br i1 %i.bu, label %mi_page_unown_from_free.exit, label %.preheader.i, !prof !63

.loopexit.i:                                      ; preds = %bb.v, %.preheader.i
  %.2.lcssa.i = phi i64 [ %i.bx, %.preheader.i ], [ %i.bz, %bb.v ]
  %i.bv = cmpxchg weak ptr %i.bs, i64 %.2.lcssa.i, i64 0 acq_rel acquire, align 8 ; 2 uses
  %i.bw = extractvalue { i64, i1 } %i.bv, 1
  br i1 %i.bw, label %mi_page_unown_from_free.exit, label %.preheader.i, !prof !64, !llvm.loop !65

.preheader.i:                                     ; preds = %bb.t, %.loopexit.i
  %.pn.i = phi { i64, i1 } [ %i.bv, %.loopexit.i ], [ %i.bt, %bb.t ]
end_hunk_18
begin_hunk_19_@mi_free_try_collect_mt:bb.a
bb.v:                                             ; preds = %.lr.ph.i
  %i.bz = load atomic i64, ptr %i.bs monotonic, align 8 ; 2 uses
  %.not.i = icmp ult i64 %i.bz, 2
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !66

mi_page_unown_from_free.exit:                     ; preds = %.loopexit.i, %bb.u, %bb.t, %bb.p, %bb.s, %bb.b
  ret void
end_hunk_19
begin_hunk_20_@llvm.umin.i64
!36 = !{!"branch_weights", !"expected", i32 1074010192, i32 1073473456}
!37 = !{!5, !5, i64 0}
!38 = distinct !{!38, !26}
!39 = !{!"branch_weights", !"expected", i32 1074010193, i32 1073473455}
!40 = distinct !{!40, !26}
!41 = distinct !{!41, !26}
!42 = distinct !{!42, !26}
!43 = !{!8, !15, i64 64}
!44 = !{!8, !5, i64 56}
!45 = !{!46, !14, i64 224}
!46 = !{!"mi_heap_s", !47, i64 0, !48, i64 8, !4, i64 16, !12, i64 24, !49, i64 32, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !15, i64 208, !12, i64 216, !14, i64 224, !14, i64 225, !5, i64 226, !5, i64 232, !5, i64 1264, !17, i64 3664}
!47 = !{!"p1 _ZTS8mi_tld_s", !10, i64 0}
!48 = !{!"p1 _ZTS10mi_arena_s", !10, i64 0}
!49 = !{!"mi_random_cxt_s", !5, i64 0, !5, i64 64, !4, i64 128, !14, i64 132}
!50 = !{!46, !47, i64 0}
!51 = !{!52, !14, i64 57}
!52 = !{!"mi_tld_s", !12, i64 0, !12, i64 8, !4, i64 16, !53, i64 24, !15, i64 32, !15, i64 40, !54, i64 48, !14, i64 56, !14, i64 57, !55, i64 64, !17, i64 4368}
!53 = !{!"p1 _ZTS12mi_subproc_s", !10, i64 0}
!54 = !{!"long long", !5, i64 0}
!55 = !{!"mi_stats_s", !4, i64 0, !56, i64 8, !56, i64 32, !56, i64 56, !56, i64 80, !56, i64 104, !56, i64 128, !56, i64 152, !56, i64 176, !56, i64 200, !56, i64 224, !56, i64 248, !57, i64 272, !57, i64 280, !57, i64 288, !57, i64 296, !57, i64 304, !57, i64 312, !57, i64 320, !57, i64 328, !57, i64 336, !57, i64 344, !57, i64 352, !57, i64 360, !57, i64 368, !56, i64 376, !56, i64 400, !56, i64 424, !56, i64 448, !57, i64 472, !57, i64 480, !57, i64 488, !57, i64 496, !5, i64 504, !5, i64 600, !5, i64 632, !5, i64 2408, !5, i64 4184}
!56 = !{!"mi_stat_count_s", !12, i64 0, !12, i64 8, !12, i64 16}
!57 = !{!"mi_stat_counter_s", !12, i64 0}
!58 = !{!8, !11, i64 20}
!59 = !{!46, !48, i64 8}
!60 = !{!61, !12, i64 16}
!61 = !{!"mi_page_queue_s", !16, i64 0, !16, i64 8, !12, i64 16, !12, i64 24}
!62 = !{!8, !4, i64 112}
!63 = !{!"branch_weights", i32 1999, i32 1}
!64 = !{!"branch_weights", i32 1, i32 0}
!65 = distinct !{!65, !26}
!66 = distinct !{!66, !26}
end_hunk_20
