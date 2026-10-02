Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/inspect?download=true
inline.NumInlined: 21
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@duckdb_je_inspect_extent_util_stats_verbose_get:bb.a
  %i.m = and i32 %i.l, 255                        ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !22
  %i.r = zext i32 %i.q to i64
  store i64 %i.r, ptr %3, align 8, !tbaa !15
  %.val48 = load i64, ptr %i.d, align 8, !tbaa !19 ; 2 uses
  %i.s = and i64 %.val48, 4095
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.s
  %i.u = load atomic ptr, ptr %i.t monotonic, align 8
  %i.v = lshr i64 %.val48, 38
  %i.w = and i64 %i.v, 63                         ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %i.n
  %i.y = load i32, ptr %i.x, align 4, !tbaa !6
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !6
  %i.ac = icmp ult i32 %i.m, %i.ab
  %i.ad = getelementptr inbounds nuw [648 x i8], ptr %i.aa, i64 %i.w
  %i.ae = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %i.w
  %.0.i50 = select i1 %i.ac, ptr %i.ad, ptr %i.ae ; 11 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i50, i64 72 ; 2 uses
  %i.ag = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.af) #5
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %.0.i50) #5
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i50, i64 64
  store atomic i8 1, ptr %i.ah monotonic, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i50, i64 56 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !28
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i50, i64 48 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.am, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %0, ptr %i.al, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i50, i64 40 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !30
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !30
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.i, %bb.j
  %i.aq = load i64, ptr %3, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i50, i64 176
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !38
  %i.at = mul i64 %i.as, %i.aq                    ; 2 uses
  store i64 %i.at, ptr %6, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i50, i64 136
  %i.av = load i64, ptr %i.au, align 8, !tbaa !39
  %i.aw = sub i64 %i.at, %i.av
  store i64 %i.aw, ptr %5, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i50, i64 224
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40 ; 2 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %bb.k, label %.thread

bb.k:                                             ; preds = %malloc_mutex_lock.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i50, i64 232
  %i.ba = call ptr @duckdb_je_edata_heap_first(ptr noundef nonnull %i.az) #5 ; 2 uses
  %.not44 = icmp eq ptr %i.ba, null
  br i1 %.not44, label %bb.l, label %.thread

.thread:                                          ; preds = %malloc_mutex_lock.exit, %bb.k
  %.053 = phi ptr [ %i.ba, %bb.k ], [ %i.ay, %malloc_mutex_lock.exit ]
  %i.bb = getelementptr i8, ptr %.053, i64 8
  %.0.val = load ptr, ptr %i.bb, align 8, !tbaa !41
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %i.bc = phi ptr [ %.0.val, %.thread ], [ null, %bb.k ]
  store ptr %i.bc, ptr %7, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i50, i64 64
  store atomic i8 0, ptr %i.bd monotonic, align 8
  %i.be = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.af) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f, %bb.d
  ret void
}

declare ptr @duckdb_je_edata_heap_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 18)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48   ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !49

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50   ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  store ptr %i.u, ptr %i.r, align 8, !tbaa !50
  store i64 %i.c, ptr %i.d, align 8, !tbaa !48
  store ptr %i.s, ptr %i.t, align 8, !tbaa !50
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !48
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !49

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !48
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !49

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !48
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !49

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !49

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !48
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !49

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !48
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !49

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @duckdb_je_rtree_leaf_elm_lookup_hard(ptr noundef %1, ptr noundef nonnull @duckdb_je_arena_emap_global, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #5
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !48
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !50
  store i64 %i.e, ptr %i.at, align 8, !tbaa !48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !50
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !50
  store i64 %i.c, ptr %i.d, align 8, !tbaa !48
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !50
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !51
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !52, !alias.scope !53
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !54, !alias.scope !53
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = lshr i8 %i.bh, 1
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !55, !alias.scope !53
  %i.bn = trunc i64 %i.bd to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !56, !alias.scope !53
  %i.br = shl i64 %i.bd, 16
  %i.bs = ashr exact i64 %i.br, 16
  %i.bt = and i64 %i.bs, -128
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %0, align 8, !tbaa !13, !alias.scope !53
  ret void
}

declare void @duckdb_je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #2

declare ptr @duckdb_je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @duckdb_je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #2

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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS7edata_s", !8, i64 0}
!10 = !{!"_Bool", !4, i64 0}
!11 = !{!"rtree_metadata_s", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 9}
!12 = !{!"rtree_contents_s", !9, i64 0, !11, i64 8}
!13 = !{!12, !9, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!4, !4, i64 0}
!17 = !{!"p1 _ZTS8hpdata_s", !8, i64 0}
!18 = !{!"edata_s", !14, i64 0, !8, i64 8, !4, i64 16, !17, i64 24, !14, i64 32, !4, i64 40, !4, i64 64}
!19 = !{!18, !14, i64 0}
!20 = !{!"bitmap_info_s", !14, i64 0, !14, i64 8}
!21 = !{!"bin_info_s", !14, i64 0, !14, i64 8, !5, i64 16, !5, i64 20, !20, i64 24}
!22 = !{!21, !5, i64 16}
!23 = !{!8, !8, i64 0}
!24 = !{!"", !14, i64 0}
!25 = !{!"", !5, i64 0}
!26 = !{!"p1 _ZTS6tsdn_s", !8, i64 0}
!27 = !{!"", !24, i64 0, !24, i64 8, !14, i64 16, !14, i64 24, !5, i64 32, !25, i64 36, !14, i64 40, !26, i64 48, !14, i64 56}
!28 = !{!27, !14, i64 56}
!29 = !{!27, !26, i64 48}
!30 = !{!27, !14, i64 40}
!31 = !{!"malloc_mutex_s", !4, i64 0}
!32 = !{!"bin_stats_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104}
!33 = !{!"ph_s", !8, i64 0, !14, i64 8}
!34 = !{!"", !33, i64 0}
!35 = !{!"", !9, i64 0}
!36 = !{!"", !35, i64 0}
!37 = !{!"bin_s", !31, i64 0, !32, i64 112, !9, i64 224, !34, i64 232, !36, i64 248}
!38 = !{!37, !14, i64 176}
!39 = !{!37, !14, i64 136}
!40 = !{!37, !9, i64 224}
!41 = !{!18, !8, i64 8}
!42 = distinct !{!42, i1 false, !"rtree_leaf_elm_read"}
!43 = distinct !{!43, !42, !"rtree_leaf_elm_read: argument 0"}
!44 = distinct !{!44, i1 false, !"rtree_leaf_elm_bits_decode"}
!45 = distinct !{!45, !44, !"rtree_leaf_elm_bits_decode: argument 0"}
!46 = !{!"p1 _ZTS16rtree_leaf_elm_s", !8, i64 0}
!47 = !{!"rtree_ctx_cache_elm_s", !14, i64 0, !46, i64 8}
!48 = !{!47, !14, i64 0}
!49 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!50 = !{!47, !46, i64 8}
!51 = !{!43}
!52 = !{!12, !5, i64 8}
!53 = !{!45}
!54 = !{!12, !10, i64 17}
!55 = !{!12, !10, i64 16}
!56 = !{!12, !5, i64 12}
end_hunk_0
