inline.NumInlined: 376
inline.NumDeleted: 126
begin_hunk_0_@duckdb_je_arena_cache_bin_fill_small:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 256 ; 4 uses
  %i.au = getelementptr i8, ptr %.0.i.i, i64 392
end_hunk_0
begin_hunk_1_@duckdb_je_arena_cache_bin_fill_small:bb.a
.preheader:                                       ; preds = %duckdb_je_arena_slab_dalloc.exit, %bb.ai
  %.promoted187 = load ptr, ptr %i.ar, align 8, !tbaa !127 ; 2 uses
  %i.ld = icmp eq ptr %.promoted187, null
  br i1 %i.ld, label %arena_bin_flush_batch_after_unlock.exit95.loopexit, label %.lr.ph189

bb.aj:                                            ; preds = %.lr.ph186, %duckdb_je_arena_slab_dalloc.exit
  %indvars.iv205 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next206, %duckdb_je_arena_slab_dalloc.exit ] ; 2 uses
end_hunk_1
begin_hunk_2_@duckdb_je_arena_cache_bin_fill_small:bb.a
.lr.ph189:                                        ; preds = %.preheader, %duckdb_je_arena_slab_dalloc.exit120
  %i.lm = phi ptr [ %i.mg, %duckdb_je_arena_slab_dalloc.exit120 ], [ %.promoted187, %.preheader ] ; 6 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 40 ; 3 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !120 ; 3 uses
  %i.lp = icmp eq ptr %i.lo, %i.lm
  br i1 %i.lp, label %edata_list_active_remove.exit, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph189
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 48
end_hunk_2
begin_hunk_3_@duckdb_je_arena_cache_bin_fill_small:bb.a
  store ptr %i.lm, ptr %i.mf, align 8, !tbaa !120
  br label %edata_list_active_remove.exit

edata_list_active_remove.exit:                    ; preds = %.lr.ph189, %.thread.i
  %i.mg = phi ptr [ %i.lo, %.thread.i ], [ null, %.lr.ph189 ] ; 2 uses
  %.val.i119 = load i64, ptr %i.lm, align 8, !tbaa !124
  %i.mh = and i64 %.val.i119, 4095
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.mh
end_hunk_3
begin_hunk_4_@duckdb_je_arena_cache_bin_fill_small:bb.a
duckdb_je_arena_slab_dalloc.exit120:              ; preds = %edata_list_active_remove.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.mn = icmp eq ptr %i.mg, null
  br i1 %i.mn, label %arena_bin_flush_batch_after_unlock.exit95.loopexit, label %.lr.ph189

arena_bin_flush_batch_after_unlock.exit95.loopexit: ; preds = %duckdb_je_arena_slab_dalloc.exit120, %.preheader
  store ptr null, ptr %i.ar, align 8
  br label %arena_bin_flush_batch_after_unlock.exit95

arena_bin_flush_batch_after_unlock.exit95:        ; preds = %arena_bin_flush_batch_after_unlock.exit95.loopexit, %arena_bin_flush_batch_before_unlock.exit93
  %.not90 = icmp eq ptr %.3240, null
  br i1 %.not90, label %bb.bg, label %bb.be

end_hunk_4
begin_hunk_5_@duckdb_je_arena_cache_bin_fill_small:bb.a
.preheader150:                                    ; preds = %duckdb_je_arena_slab_dalloc.exit122, %bb.an
  %.promoted180 = load ptr, ptr %i.ar, align 8, !tbaa !127 ; 2 uses
  %i.my = icmp eq ptr %.promoted180, null
  br i1 %i.my, label %arena_bin_flush_batch_after_unlock.exit.loopexit, label %.lr.ph182

.lr.ph179:                                        ; preds = %bb.an, %duckdb_je_arena_slab_dalloc.exit122
  %indvars.iv = phi i64 [ %indvars.iv.next, %duckdb_je_arena_slab_dalloc.exit122 ], [ 0, %bb.an ] ; 2 uses
end_hunk_5
begin_hunk_6_@duckdb_je_arena_cache_bin_fill_small:bb.a
  br i1 %i.op, label %.lr.ph179, label %.preheader150

.lr.ph182:                                        ; preds = %.preheader150, %duckdb_je_arena_slab_dalloc.exit126
  %i.oq = phi ptr [ %7, %duckdb_je_arena_slab_dalloc.exit126 ], [ %.promoted180, %.preheader150 ] ; 6 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 40 ; 3 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !120 ; 3 uses
  %i.ot = icmp eq ptr %i.os, %i.oq
  br i1 %i.ot, label %edata_list_active_remove.exit124, label %.thread.i123

.thread.i123:                                     ; preds = %.lr.ph182
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 48
end_hunk_6
begin_hunk_7_@duckdb_je_arena_cache_bin_fill_small:bb.a
  store ptr %i.oq, ptr %i.pj, align 8, !tbaa !120
  br label %edata_list_active_remove.exit124

edata_list_active_remove.exit124:                 ; preds = %.lr.ph182, %.thread.i123
  %7 = phi ptr [ %i.os, %.thread.i123 ], [ null, %.lr.ph182 ] ; 2 uses
  %.val.i125 = load i64, ptr %i.oq, align 8, !tbaa !124
  %i.pk = and i64 %.val.i125, 4095
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.pk
end_hunk_7
begin_hunk_8_@duckdb_je_arena_cache_bin_fill_small:bb.a

duckdb_je_arena_slab_dalloc.exit126:              ; preds = %bb.bd, %bb.bc, %bb.bb, %edata_list_active_remove.exit124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.qw = icmp eq ptr %7, null
  br i1 %i.qw, label %arena_bin_flush_batch_after_unlock.exit.loopexit, label %.lr.ph182

arena_bin_flush_batch_after_unlock.exit.loopexit: ; preds = %duckdb_je_arena_slab_dalloc.exit126, %.preheader150
  store ptr null, ptr %i.ar, align 8
  br label %arena_bin_flush_batch_after_unlock.exit

arena_bin_flush_batch_after_unlock.exit:          ; preds = %arena_bin_flush_batch_after_unlock.exit.loopexit, %arena_bin_flush_batch_before_unlock.exit
  %i.qx = call fastcc ptr @arena_slab_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %.0.i111, ptr noundef nonnull %i.g)
  br label %bb.d

end_hunk_8
