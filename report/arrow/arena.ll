inline.NumInlined: 213
inline.NumDeleted: 76
begin_hunk_0_@mi_abandoned_visit_blocks:bb.a
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !111
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.am = call zeroext i1 %i.aj(ptr noundef null, ptr noundef nonnull %5, ptr noundef null, i64 noundef %i.ak, ptr noundef %i.al) #15, !inline_history !113
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@mi_abandoned_visit_blocks:bb.a
  %.0 = load ptr, ptr %i.as, align 8, !tbaa !109  ; 2 uses
  %i.at = icmp ne ptr %.0, null
  %i.au = select i1 %.1.i, i1 %i.at, i1 false
  br i1 %i.au, label %.lr.ph65, label %._crit_edge66, !llvm.loop !114

bb.k:                                             ; preds = %._crit_edge, %._crit_edge66
  %.045 = phi i1 [ %.5.lcssa, %._crit_edge66 ], [ false, %._crit_edge ]
end_hunk_1
begin_hunk_2_@abandoned_page_visit_at:bb.a
  %i.j = load i64, ptr %i.i, align 8, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.m = call zeroext i1 %i.h(ptr noundef null, ptr noundef nonnull %4, ptr noundef null, i64 noundef %i.j, ptr noundef %i.l) #15, !inline_history !113
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@mi_arena_unload:bb.a
bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ag = add nuw nsw i64 %.04658, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, 75
  br i1 %exitcond.not, label %bb.o, label %bb.p, !llvm.loop !115

bb.s:                                             ; preds = %.lr.ph, %bb.v
  %.04760 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.v ] ; 4 uses
end_hunk_3
begin_hunk_4_@mi_arena_unload:bb.a
bb.v:                                             ; preds = %bb.s
  %i.ap = add nuw i64 %.04760, 1                  ; 2 uses
  %exitcond63.not = icmp eq i64 %i.ap, %i.z
  br i1 %exitcond63.not, label %.loopexit, label %bb.s, !llvm.loop !116

.loopexit:                                        ; preds = %bb.v, %bb.o, %bb.u, %bb.t, %bb.a, %bb.e, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.a ], [ true, %bb.t ], [ true, %bb.u ], [ true, %bb.o ], [ true, %bb.v ]
end_hunk_4
begin_hunk_5_@mi_arena_reload:bb.a
bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aj = add nuw nsw i64 %.03342, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, 75
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !117

.loopexit:                                        ; preds = %bb.v, %mi_arenas_add.exit, %bb.e, %bb.g, %bb.i, %bb.k, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ false, %mi_arenas_add.exit ], [ false, %bb.k ], [ true, %bb.v ]
end_hunk_5
begin_hunk_6_@mi_arenas_try_find_free:bb.a
.thread138.us:                                    ; preds = %bb.f, %bb.e, %mi_arena_id_is_suitable.exit.i.us, %bb.d, %.lr.ph.split.us
  %i.x = add nuw i64 %.089184.us, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.a
  br i1 %exitcond.not, label %.thread155, label %.lr.ph.split.us, !llvm.loop !118

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %3, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader
end_hunk_6
begin_hunk_7_@mi_arenas_try_find_free:bb.a
.thread164:                                       ; preds = %.thread.i129, %mi_arena_id_is_suitable.exit.i128, %bb.q, %bb.p, %bb.r
  %i.bp = add nuw i64 %.088192, 1                 ; 2 uses
  %exitcond209.not = icmp eq i64 %i.bp, %i.ae
  br i1 %exitcond209.not, label %.thread181, label %.peel.next, !llvm.loop !119

.thread181:                                       ; preds = %bb.f, %.peel.next, %bb.r, %.thread164, %bb.g, %.lr.ph.split.split.us.preheader, %bb.o, %.thread164.peel, %bb.j, %.thread155
  %.10 = phi ptr [ %i.ab, %.lr.ph.split.split.us.preheader ], [ null, %.thread155 ], [ %i.ac, %bb.g ], [ null, %.peel.next ], [ null, %bb.j ], [ null, %.thread164.peel ], [ %i.ay, %bb.o ], [ %i.bo, %bb.r ], [ null, %.thread164 ], [ %i.w, %bb.f ]
end_hunk_7
begin_hunk_8_@mi_arena_try_alloc_at:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 %i.s, ptr %i.t, align 4, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.v = load i8, ptr %i.u, align 2, !tbaa !120, !range !18, !noundef !19
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

end_hunk_8
begin_hunk_9_@mi_arenas_page_alloc_fresh:bb.a
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = icmp ugt i64 %2, 65536                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !alias.scope !121
  %i.c = shl i64 %0, 16                           ; 5 uses
  %i.d = tail call zeroext i1 @mi_option_is_enabled(i32 noundef 26) #15
  %or.cond = or i1 %i.b, %i.d
end_hunk_9
begin_hunk_10_@mi_arenas_page_alloc_fresh:bb.a
bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !69
  %i.ax = call zeroext i1 %i.au(i1 noundef zeroext true, ptr noundef nonnull %.179107, i64 noundef %spec.select, ptr noundef nonnull %i.a, ptr noundef %i.aw) #15, !inline_history !124
  br i1 %i.ax, label %bb.q, label %bb.s

mi_arena_commit.exit:                             ; preds = %bb.n, %bb.o
end_hunk_10
begin_hunk_11_@mi_arenas_page_alloc_fresh:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %.179107, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !85
  %i.bk = getelementptr inbounds nuw i8, ptr %.179107, i64 57
  store i8 %i.bd, ptr %i.bk, align 1, !tbaa !125
  %i.bl = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond120 = icmp eq i64 %i.bl, 1
  br i1 %or.cond120, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bm = call i64 asm "tzcnt\09$1, $0", "=r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %1, i64 64) #17, !srcloc !126
  %i.bn = trunc i64 %i.bm to i8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.sink = phi i8 [ %i.bn, %bb.u ], [ 0, %bb.t ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.179107, i64 22
  store i8 %.sink, ptr %i.bo, align 2, !tbaa !127
  %i.bp = getelementptr inbounds nuw i8, ptr %.179107, i64 32
  %i.bq = atomicrmw or ptr %i.bp, i64 1 acq_rel, align 8 ; 0 uses
  call void @_mi_page_map_register(ptr noundef nonnull %.179107) #15
end_hunk_11
begin_hunk_12_@mi_arena_try_purge_visitor:bb.a
  store i8 %i.p, ptr %i.f, align 8, !tbaa !74
  %i.q = add nuw i64 %.019, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %1
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !128

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b
  ret i1 true
end_hunk_12
begin_hunk_13_@llvm.umax.i64
!110 = !{!34, !5, i64 56}
!111 = !{!112, !15, i64 32}
!112 = !{!"mi_heap_area_s", !14, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !4, i64 48}
!113 = distinct !{null}
!114 = distinct !{!114, !49}
!115 = distinct !{!115, !49}
!116 = distinct !{!116, !49}
!117 = distinct !{!117, !49}
!118 = distinct !{!118, !49}
!119 = distinct !{!119, !49, !98}
!120 = !{!12, !9, i64 22}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_mi_memid_none: argument 0"}
!123 = distinct !{!123, !"_mi_memid_none"}
!124 = distinct !{null}
!125 = !{!34, !9, i64 57}
!126 = !{i64 421076}
!127 = !{!34, !5, i64 22}
!128 = distinct !{!128, !49}
end_hunk_13
