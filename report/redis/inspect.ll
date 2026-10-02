Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/inspect?download=true
inline.NumInlined: 20
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@je_inspect_extent_util_stats_verbose_get:bb.a
  store i64 %i.j, ptr %2, align 8, !tbaa !19
  %.val47 = load i64, ptr %i.d, align 8, !tbaa !23
  %i.k = lshr i64 %.val47, 20
  %i.l = and i64 %i.k, 255                        ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !26
  %i.p = zext i32 %i.o to i64
  store i64 %i.p, ptr %3, align 8, !tbaa !19
  %.val48 = load i64, ptr %i.d, align 8, !tbaa !23 ; 2 uses
  %i.q = and i64 %.val48, 4095
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.q
  %i.s = load atomic ptr, ptr %i.r monotonic, align 8
  %i.t = lshr i64 %.val48, 38
  %i.u = and i64 %i.t, 63
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.l
  %i.x = load i32, ptr %i.w, align 4, !tbaa !10
  %i.y = zext i32 %i.x to i64
  %i.z = add i64 %i.y, %i.v
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw [224 x i8], ptr %i.aa, i64 %i.u ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  %i.ad = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ac) #5
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ab) #5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  store atomic i8 1, ptr %i.ae monotonic, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.aj, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %0, ptr %i.ai, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !34
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !34
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.i, %bb.j
  %i.an = load i64, ptr %3, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !42
  %i.aq = mul i64 %i.ap, %i.an                    ; 2 uses
  store i64 %i.aq, ptr %6, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.at = sub i64 %i.aq, %i.as
  store i64 %i.at, ptr %5, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !44 ; 2 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.k, label %.thread

bb.k:                                             ; preds = %malloc_mutex_lock.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.ax = call ptr @je_edata_heap_first(ptr noundef nonnull %i.aw) #5 ; 2 uses
  %.not44 = icmp eq ptr %i.ax, null
  br i1 %.not44, label %bb.l, label %.thread

.thread:                                          ; preds = %malloc_mutex_lock.exit, %bb.k
  %.052 = phi ptr [ %i.ax, %bb.k ], [ %i.av, %malloc_mutex_lock.exit ]
  %i.ay = getelementptr i8, ptr %.052, i64 8
  %.0.val = load ptr, ptr %i.ay, align 8, !tbaa !45
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %i.az = phi ptr [ %.0.val, %.thread ], [ null, %bb.k ]
  store ptr %i.az, ptr %7, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  store atomic i8 0, ptr %i.ba monotonic, align 8
  %i.bb = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ac) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f, %bb.d
  ret void
}

declare ptr @je_edata_heap_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 18)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52   ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !52
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !53

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !52
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !53

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54   ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54
  store ptr %i.u, ptr %i.r, align 8, !tbaa !54
  store i64 %i.c, ptr %i.d, align 8, !tbaa !52
  store ptr %i.s, ptr %i.t, align 8, !tbaa !54
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !52
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !53

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !52
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !53

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !52
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !53

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !52
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !53

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !52
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !53

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !52
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !53

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %1, ptr noundef nonnull @je_arena_emap_global, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #5
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !54 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !52
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !52
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !54
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !54
  store i64 %i.e, ptr %i.at, align 8, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !54
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !54
  store i64 %i.c, ptr %i.d, align 8, !tbaa !52
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !54
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !63
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !56, !alias.scope !66
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !58, !alias.scope !66
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = lshr i8 %i.bh, 1
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !59, !alias.scope !66
  %i.bn = trunc i64 %i.bd to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !60, !alias.scope !66
  %i.br = shl i64 %i.bd, 16
  %i.bs = ashr exact i64 %i.br, 16
  %i.bt = and i64 %i.bs, -128
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %0, align 8, !tbaa !17, !alias.scope !66
  ret void
}

declare void @je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #2

declare ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS7edata_s", !12, i64 0}
!14 = !{!"_Bool", !8, i64 0}
!15 = !{!"rtree_metadata_s", !9, i64 0, !9, i64 4, !14, i64 8, !14, i64 9}
!16 = !{!"rtree_contents_s", !13, i64 0, !15, i64 8}
!17 = !{!16, !13, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!"p1 _ZTS8hpdata_s", !12, i64 0}
!22 = !{!"edata_s", !18, i64 0, !12, i64 8, !8, i64 16, !21, i64 24, !18, i64 32, !8, i64 40, !8, i64 64}
!23 = !{!22, !18, i64 0}
!24 = !{!"bitmap_info_s", !18, i64 0, !18, i64 8}
!25 = !{!"bin_info_s", !18, i64 0, !18, i64 8, !9, i64 16, !9, i64 20, !24, i64 24}
!26 = !{!25, !9, i64 16}
!27 = !{!12, !12, i64 0}
!28 = !{!"", !18, i64 0}
!29 = !{!"", !9, i64 0}
!30 = !{!"p1 _ZTS6tsdn_s", !12, i64 0}
!31 = !{!"", !28, i64 0, !28, i64 8, !18, i64 16, !18, i64 24, !9, i64 32, !29, i64 36, !18, i64 40, !30, i64 48, !18, i64 56}
!32 = !{!31, !18, i64 56}
!33 = !{!31, !30, i64 48}
!34 = !{!31, !18, i64 40}
!35 = !{!"malloc_mutex_s", !8, i64 0}
!36 = !{!"bin_stats_s", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72}
!37 = !{!"ph_s", !12, i64 0, !18, i64 8}
!38 = !{!"", !37, i64 0}
!39 = !{!"", !13, i64 0}
!40 = !{!"", !39, i64 0}
!41 = !{!"bin_s", !35, i64 0, !36, i64 112, !13, i64 192, !38, i64 200, !40, i64 216}
!42 = !{!41, !18, i64 176}
!43 = !{!41, !18, i64 136}
!44 = !{!41, !13, i64 192}
!45 = !{!22, !12, i64 8}
!50 = !{!"p1 _ZTS16rtree_leaf_elm_s", !12, i64 0}
!51 = !{!"rtree_ctx_cache_elm_s", !18, i64 0, !50, i64 8}
!52 = !{!51, !18, i64 0}
!53 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!54 = !{!51, !50, i64 8}
!56 = !{!16, !9, i64 8}
!58 = !{!16, !14, i64 17}
!59 = !{!16, !14, i64 16}
!60 = !{!16, !9, i64 12}
!61 = distinct !{!61, i1 false, !"rtree_leaf_elm_read"}
!62 = distinct !{!62, !61, !"rtree_leaf_elm_read: argument 0"}
!63 = !{!62}
!64 = distinct !{!64, i1 false, !"rtree_leaf_elm_bits_decode"}
!65 = distinct !{!65, !64, !"rtree_leaf_elm_bits_decode: argument 0"}
!66 = !{!65}
end_hunk_0
