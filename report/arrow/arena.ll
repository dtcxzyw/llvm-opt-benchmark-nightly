inline.NumInlined: 213
inline.NumDeleted: 76
begin_hunk_0_@mi_arenas_page_alloc_fresh:bb.a

.thread117:                                       ; preds = %bb.q, %bb.r
  %.pre = phi i8 [ %i.az, %bb.q ], [ %.pre.pre, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.t

bb.s:                                             ; preds = %mi_arena_commit.exit, %bb.p
  call void @_mi_arenas_free(ptr noundef nonnull %.179107, i64 noundef %i.c, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %mi_arena_os_alloc_aligned.exit.thread

bb.t:                                             ; preds = %.thread117, %bb.m
  %i.bd = phi i8 [ %i.z, %bb.m ], [ %.pre, %.thread117 ]
  %.1 = phi i64 [ 0, %bb.m ], [ %spec.select, %.thread117 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.179107, i64 20
  store i16 %i.an, ptr %i.be, align 4, !tbaa !56
  %i.bf = getelementptr inbounds nuw i8, ptr %.179107, i64 %.077112
  %i.bg = getelementptr inbounds nuw i8, ptr %.179107, i64 48
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !96
  %i.bh = getelementptr inbounds nuw i8, ptr %.179107, i64 40
  store i64 %1, ptr %i.bh, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %.179107, i64 88
  store i64 %.1, ptr %i.bi, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %.179107, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !85
  %i.bk = getelementptr inbounds nuw i8, ptr %.179107, i64 57
  store i8 %i.bd, ptr %i.bk, align 1, !tbaa !125
  %i.bl = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond120 = icmp eq i64 %i.bl, 1
  br i1 %or.cond120, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bm = call i64 asm "tzcnt\09$1, $0", "=r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %1, i64 64) #16, !srcloc !126
  %i.bn = trunc i64 %i.bm to i8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.sink = phi i8 [ %i.bn, %bb.u ], [ 0, %bb.t ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.179107, i64 22
  store i8 %.sink, ptr %i.bo, align 2, !tbaa !127
  %i.bp = getelementptr inbounds nuw i8, ptr %.179107, i64 32
  %i.bq = atomicrmw or ptr %i.bp, i64 1 acq_rel, align 8 ; 0 uses
  call void @_mi_page_map_register(ptr noundef nonnull %.179107) #14
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @__mi_stat_increase(ptr noundef nonnull %i.br, i64 noundef 1) #14
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 2472
  %i.bt = call i64 @_mi_page_bin(ptr noundef nonnull %.179107) #14
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.bt
  call void @__mi_stat_increase(ptr noundef nonnull %i.bu, i64 noundef 1) #14
  br label %mi_arena_os_alloc_aligned.exit.thread

mi_arena_os_alloc_aligned.exit.thread:            ; preds = %bb.g, %bb.e, %bb.s, %bb.v, %mi_arena_os_alloc_aligned.exit
  %.2 = phi ptr [ null, %mi_arena_os_alloc_aligned.exit ], [ %.179107, %bb.v ], [ null, %bb.s ], [ null, %bb.e ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret ptr %.2
}

declare zeroext i1 @_mi_page_init(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_mi_page_map_register(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

declare zeroext i1 @_mi_os_commit(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @mi_bitmap_try_find_and_claim(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @mi_arena_try_claim_abandoned(i64 noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3) #5 {
bb.a:
  %i.a = shl i64 %0, 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.d = atomicrmw or ptr %i.c, i64 1 acq_rel, align 8
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_mi_page_unown.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !110
  %.not = icmp eq i8 %2, %i.h
  br i1 %.not, label %_mi_page_unown.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load atomic i64, ptr %i.c monotonic, align 8
  %i.j = getelementptr i8, ptr %i.b, i64 16
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %bb.c
  %.014.i = phi i64 [ %i.i, %bb.c ], [ %i.o, %._crit_edge.i ] ; 2 uses
  %.not18.i = icmp ugt i64 %.014.i, 1
  br i1 %.not18.i, label %.lr.ph.i, label %._crit_edge.i, !prof !63

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  tail call void @_mi_page_free_collect(ptr noundef %i.b, i1 noundef zeroext false) #14
  %.val.i = load i16, ptr %i.j, align 8, !tbaa !55
  %i.k = icmp eq i16 %.val.i, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @_mi_arenas_page_unabandon(ptr noundef nonnull %i.b)
  tail call void @_mi_arenas_page_free(ptr noundef nonnull %i.b, ptr noundef null)
  br label %_mi_page_unown.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.l = load atomic i64, ptr %i.c monotonic, align 8 ; 2 uses
  %.not.i = icmp ugt i64 %i.l, 1
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !prof !64, !llvm.loop !65

._crit_edge.i:                                    ; preds = %bb.f, %bb.d
  %.1.lcssa.i = phi i64 [ %.014.i, %bb.d ], [ %i.l, %bb.f ]
  %i.m = cmpxchg weak ptr %i.c, i64 %.1.lcssa.i, i64 0 acq_rel acquire, align 8 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0
  br i1 %i.n, label %_mi_page_unown.exit, label %bb.d, !llvm.loop !66

_mi_page_unown.exit:                              ; preds = %._crit_edge.i, %bb.b, %bb.e, %bb.a
  %.sink = phi i8 [ 0, %bb.b ], [ 1, %bb.a ], [ 0, %bb.e ], [ 1, %._crit_edge.i ]
  %.0 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.e ], [ false, %._crit_edge.i ]
  store i8 %.sink, ptr %3, align 1, !tbaa !86
  ret i1 %.0
}

declare void @_mi_page_free_collect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #13

declare void @_mi_os_free_ex(ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef byval(%struct.mi_memid_s) align 8, ptr noundef) local_unnamed_addr #6

declare i64 @_mi_os_secure_guard_page_size() local_unnamed_addr #6

declare zeroext i1 @_mi_os_secure_guard_page_set_before(ptr noundef, ptr noundef byval(%struct.mi_memid_s) align 8) local_unnamed_addr #6

declare void @mi_bbitmap_unsafe_setN(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @mi_bitmap_unsafe_setN(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @mi_bitmap_size(i64 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @mi_bbitmap_size(i64 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @_mi_os_page_size() local_unnamed_addr #6

declare i64 @mi_bbitmap_init(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #6

declare i64 @mi_bitmap_init(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @_mi_raw_message(ptr noundef, ...) local_unnamed_addr #6

declare i32 @mi_bbitmap_debug_get_bin(ptr noundef, i64 noundef) local_unnamed_addr #6

declare signext i8 @_mi_toupper(i8 noundef signext) local_unnamed_addr #6

declare zeroext i1 @_mi_meta_is_meta_page(ptr noundef) local_unnamed_addr #6

declare zeroext i1 @mi_bbitmap_is_xsetN(i1 noundef zeroext, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @_mi_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

declare i64 @_mi_clock_now() local_unnamed_addr #6

declare zeroext i1 @_mi_os_purge_ex(ptr noundef, i64 noundef, i1 noundef zeroext, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @__mi_stat_counter_increase_mt(ptr noundef, i64 noundef) local_unnamed_addr #6

declare zeroext i1 @_mi_bitmap_forall_setc_ranges(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @mi_arena_try_purge_visitor(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) #5 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @mi_arena_try_purge_range(ptr noundef %2, i64 noundef %0, i64 noundef %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.b, align 1, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.c, align 8, !tbaa !73
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 1
  br i1 %i.d, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.019 = phi i64 [ 0, %.preheader ], [ %i.k, %bb.d ] ; 2 uses
  %i.g = add i64 %.019, %0
  %i.h = tail call fastcc zeroext i1 @mi_arena_try_purge_range(ptr noundef %2, i64 noundef %i.g, i64 noundef 1) ; 2 uses
  %i.i = load i8, ptr %i.e, align 1, !tbaa !74, !range !18, !noundef !19
  %4 = zext i1 %i.h to i8
  %5 = or i8 %i.i, %4
  store i8 %5, ptr %i.e, align 1, !tbaa !74
  %i.j = load i8, ptr %i.f, align 8, !tbaa !73, !range !18, !noundef !19
  %6 = select i1 %i.h, i8 %i.j, i8 0
  store i8 %6, ptr %i.f, align 8, !tbaa !73
  %i.k = add nuw i64 %.019, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !128

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @mi_arena_try_purge_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = tail call zeroext i1 @mi_bbitmap_try_clearN(ptr noundef %i.c, i64 noundef %1, i64 noundef %2) #14 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = shl i64 %2, 16
  %i.f = shl i64 %1, 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.j = call zeroext i1 @mi_bitmap_setN(ptr noundef %i.i, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.l = icmp eq i64 %i.k, %2                     ; 2 uses
  %i.m = shl i64 %i.k, 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.r = call zeroext i1 @_mi_os_purge_ex(ptr noundef %i.g, i64 noundef %i.e, i1 noundef zeroext %i.l, i64 noundef %i.m, ptr noundef %i.o, ptr noundef %i.q) #14
  %.not.i = xor i1 %i.l, true
  %brmerge.i = or i1 %i.r, %.not.i
  br i1 %brmerge.i, label %.sink.split.i, label %mi_arena_purge.exit

.sink.split.i:                                    ; preds = %bb.b
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.t = call zeroext i1 @mi_bitmap_clearN(ptr noundef %i.s, i64 noundef %1, i64 noundef %2) #14 ; 0 uses
  br label %mi_arena_purge.exit

mi_arena_purge.exit:                              ; preds = %bb.b, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.v = call zeroext i1 @mi_bbitmap_setN(ptr noundef %i.u, i64 noundef %1, i64 noundef %2) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %mi_arena_purge.exit
  ret i1 %i.d
}

declare zeroext i1 @mi_bbitmap_try_clearN(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @_mi_heap_area_init(ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @_mi_heap_area_visit_blocks(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @mi_bitmap_bsr(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @mi_arena_page_register(i64 noundef %0, i64 %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #5 {
bb.a:
  %i.a = shl i64 %0, 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a
  tail call void @_mi_page_map_register(ptr noundef %i.b) #14
  ret i1 true
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 16}
!8 = !{!"mi_memid_s", !5, i64 0, !4, i64 16, !9, i64 20, !9, i64 21, !9, i64 22}
!9 = !{!"_Bool", !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !9, i64 52}
!12 = !{!"mi_arena_s", !8, i64 0, !13, i64 24, !15, i64 32, !15, i64 40, !4, i64 48, !9, i64 52, !5, i64 56, !14, i64 64, !14, i64 72, !16, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !5, i64 120}
!13 = !{!"p1 _ZTS12mi_subproc_s", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"p1 _ZTS12mi_bbitmap_s", !14, i64 0}
!17 = !{!"p1 _ZTS11mi_bitmap_s", !14, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!15, !15, i64 0}
!21 = !{!12, !15, i64 32}
!22 = !{!8, !9, i64 20}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{!25, !27, i64 8}
!25 = !{!"mi_heap_s", !26, i64 0, !27, i64 8, !4, i64 16, !15, i64 24, !28, i64 32, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !29, i64 208, !15, i64 216, !9, i64 224, !9, i64 225, !5, i64 226, !5, i64 232, !5, i64 1264, !8, i64 3664}
!26 = !{!"p1 _ZTS8mi_tld_s", !14, i64 0}
!27 = !{!"p1 _ZTS10mi_arena_s", !14, i64 0}
!28 = !{!"mi_random_cxt_s", !5, i64 0, !5, i64 64, !4, i64 128, !9, i64 132}
!29 = !{!"p1 _ZTS9mi_heap_s", !14, i64 0}
!30 = !{!25, !26, i64 0}
!31 = !{!25, !4, i64 16}
!32 = !{!33, !4, i64 112}
!33 = !{!"mi_page_s", !5, i64 0, !34, i64 8, !35, i64 16, !35, i64 18, !35, i64 20, !5, i64 22, !5, i64 23, !34, i64 24, !5, i64 32, !15, i64 40, !36, i64 48, !5, i64 56, !9, i64 57, !29, i64 64, !37, i64 72, !37, i64 80, !15, i64 88, !8, i64 96}
!34 = !{!"p1 _ZTS10mi_block_s", !14, i64 0}
!35 = !{!"short", !5, i64 0}
!36 = !{!"p1 omnipotent char", !14, i64 0}
!37 = !{!"p1 _ZTS9mi_page_s", !14, i64 0}
!38 = !{!39, !13, i64 24}
!39 = !{!"mi_tld_s", !15, i64 0, !15, i64 8, !4, i64 16, !13, i64 24, !29, i64 32, !29, i64 40, !40, i64 48, !9, i64 56, !9, i64 57, !41, i64 64, !8, i64 4368}
!40 = !{!"long long", !5, i64 0}
!41 = !{!"mi_stats_s", !4, i64 0, !42, i64 8, !42, i64 32, !42, i64 56, !42, i64 80, !42, i64 104, !42, i64 128, !42, i64 152, !42, i64 176, !42, i64 200, !42, i64 224, !42, i64 248, !43, i64 272, !43, i64 280, !43, i64 288, !43, i64 296, !43, i64 304, !43, i64 312, !43, i64 320, !43, i64 328, !43, i64 336, !43, i64 344, !43, i64 352, !43, i64 360, !43, i64 368, !42, i64 376, !42, i64 400, !42, i64 424, !42, i64 448, !43, i64 472, !43, i64 480, !43, i64 488, !43, i64 496, !5, i64 504, !5, i64 600, !5, i64 632, !5, i64 2408, !5, i64 4184}
!42 = !{!"mi_stat_count_s", !15, i64 0, !15, i64 8, !15, i64 16}
!43 = !{!"mi_stat_counter_s", !15, i64 0}
!44 = !{!25, !5, i64 226}
!45 = !{!39, !15, i64 8}
!46 = !{!17, !17, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!12, !17, i64 112}
!50 = !{!33, !15, i64 88}
!51 = !{!12, !17, i64 88}
!52 = !{!12, !15, i64 40}
!53 = !{!12, !9, i64 20}
!54 = !{!12, !16, i64 80}
!55 = !{!33, !35, i64 16}
!56 = !{!33, !35, i64 20}
!57 = !{!33, !15, i64 40}
!58 = !{!12, !13, i64 24}
!59 = !{!33, !37, i64 80}
!60 = !{!61, !37, i64 1936}
!61 = !{!"mi_subproc_s", !5, i64 0, !5, i64 8, !5, i64 1288, !5, i64 1328, !5, i64 1336, !37, i64 1936, !5, i64 1944, !8, i64 1984, !41, i64 2008}
!62 = !{!33, !37, i64 72}
!63 = !{!"branch_weights", i32 1, i32 1999}
!64 = !{!"branch_weights", i32 0, i32 1}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !48}
!67 = !{!12, !14, i64 64}
!68 = !{!12, !14, i64 72}
!69 = !{!12, !17, i64 104}
!70 = !{!71, !15, i64 0}
!71 = !{!"mi_purge_visit_info_s", !15, i64 0, !15, i64 8, !9, i64 16, !9, i64 17}
!72 = !{!71, !15, i64 8}
!73 = !{!71, !9, i64 16}
!74 = !{!71, !9, i64 17}
!75 = distinct !{!75, !48}
!76 = distinct !{!76, !48}
!77 = !{!12, !4, i64 16}
!78 = distinct !{!78, !48}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_mi_memid_create: argument 0"}
!81 = distinct !{!81, !"_mi_memid_create"}
!82 = !{!8, !9, i64 21}
!83 = !{!8, !9, i64 22}
!84 = !{!14, !14, i64 0}
!85 = !{i64 0, i64 16, !10, i64 16, i64 4, !3, i64 20, i64 1, !86, i64 21, i64 1, !86, i64 22, i64 1, !86}
!86 = !{!9, !9, i64 0}
!87 = !{!12, !4, i64 48}
!88 = !{!12, !5, i64 56}
!89 = !{!12, !17, i64 96}
!90 = distinct !{!90, !48}
!91 = distinct !{!91, !48}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_mi_memid_create: argument 0"}
end_hunk_0
