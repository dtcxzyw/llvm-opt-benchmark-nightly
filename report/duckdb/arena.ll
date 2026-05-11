inline.NumInlined: 376
inline.NumDeleted: 126
begin_hunk_0_@duckdb_je_arena_cache_bin_fill_small:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 256 ; 4 uses
  %i.au = getelementptr i8, ptr %.0.i.i, i64 392
end_hunk_0
begin_hunk_1_@duckdb_je_arena_cache_bin_fill_small:bb.a
.preheader:                                       ; preds = %duckdb_je_arena_slab_dalloc.exit, %bb.ai
  %.val106186 = load ptr, ptr %i.ar, align 8, !tbaa !127 ; 2 uses
  %i.ld = icmp eq ptr %.val106186, null
  br i1 %i.ld, label %arena_bin_flush_batch_after_unlock.exit95, label %.lr.ph188

bb.aj:                                            ; preds = %.lr.ph185, %duckdb_je_arena_slab_dalloc.exit
  %indvars.iv201 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next202, %duckdb_je_arena_slab_dalloc.exit ] ; 2 uses
end_hunk_1
begin_hunk_2_@duckdb_je_arena_cache_bin_fill_small:bb.a
.lr.ph188:                                        ; preds = %.preheader, %duckdb_je_arena_slab_dalloc.exit120
  %.val106187 = phi ptr [ %.val106, %duckdb_je_arena_slab_dalloc.exit120 ], [ %.val106186, %.preheader ] ; 6 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.val106187, i64 40 ; 3 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !120 ; 4 uses
  store ptr %i.ln, ptr %i.ar, align 8, !tbaa !127
  %i.lo = icmp eq ptr %i.ln, %.val106187
  br i1 %i.lo, label %7, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph188
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 48
end_hunk_2
begin_hunk_3_@duckdb_je_arena_cache_bin_fill_small:bb.a
  store ptr %.val106187, ptr %i.me, align 8, !tbaa !120
  br label %edata_list_active_remove.exit

7:                                                ; preds = %.lr.ph188
  store ptr null, ptr %i.ar, align 8, !tbaa !127
  br label %edata_list_active_remove.exit

edata_list_active_remove.exit:                    ; preds = %.thread.i, %7
  %.val106 = phi ptr [ %i.ln, %.thread.i ], [ null, %7 ] ; 2 uses
  %.val.i119 = load i64, ptr %.val106187, align 8, !tbaa !124
  %i.mf = and i64 %.val.i119, 4095
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.mf
end_hunk_3
begin_hunk_4_@duckdb_je_arena_cache_bin_fill_small:bb.a
duckdb_je_arena_slab_dalloc.exit120:              ; preds = %edata_list_active_remove.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.ml = icmp eq ptr %.val106, null
  br i1 %i.ml, label %arena_bin_flush_batch_after_unlock.exit95, label %.lr.ph188

arena_bin_flush_batch_after_unlock.exit95:        ; preds = %duckdb_je_arena_slab_dalloc.exit120, %.preheader, %arena_bin_flush_batch_before_unlock.exit93
  %.not90 = icmp eq ptr %.3233, null
  br i1 %.not90, label %bb.bg, label %bb.be

end_hunk_4
begin_hunk_5_@duckdb_je_arena_cache_bin_fill_small:bb.a
.preheader150:                                    ; preds = %duckdb_je_arena_slab_dalloc.exit122, %bb.an
  %.val108180 = load ptr, ptr %i.ar, align 8, !tbaa !127 ; 2 uses
  %i.mw = icmp eq ptr %.val108180, null
  br i1 %i.mw, label %arena_bin_flush_batch_after_unlock.exit, label %.lr.ph182

.lr.ph179:                                        ; preds = %bb.an, %duckdb_je_arena_slab_dalloc.exit122
  %indvars.iv = phi i64 [ %indvars.iv.next, %duckdb_je_arena_slab_dalloc.exit122 ], [ 0, %bb.an ] ; 2 uses
end_hunk_5
begin_hunk_6_@duckdb_je_arena_cache_bin_fill_small:bb.a
  br i1 %i.on, label %.lr.ph179, label %.preheader150

.lr.ph182:                                        ; preds = %.preheader150, %duckdb_je_arena_slab_dalloc.exit126
  %.val108181 = phi ptr [ %.val108, %duckdb_je_arena_slab_dalloc.exit126 ], [ %.val108180, %.preheader150 ] ; 6 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.val108181, i64 40 ; 3 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !120 ; 3 uses
  store ptr %i.op, ptr %i.ar, align 8, !tbaa !127
  %i.oq = icmp eq ptr %i.op, %.val108181
  br i1 %i.oq, label %8, label %.thread.i123

.thread.i123:                                     ; preds = %.lr.ph182
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 48
end_hunk_6
begin_hunk_7_@duckdb_je_arena_cache_bin_fill_small:bb.a
  store ptr %.val108181, ptr %i.pg, align 8, !tbaa !120
  br label %edata_list_active_remove.exit124

8:                                                ; preds = %.lr.ph182
  store ptr null, ptr %i.ar, align 8, !tbaa !127
  br label %edata_list_active_remove.exit124

edata_list_active_remove.exit124:                 ; preds = %.thread.i123, %8
  %.val.i125 = load i64, ptr %.val108181, align 8, !tbaa !124
  %i.ph = and i64 %.val.i125, 4095
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.ph
end_hunk_7
begin_hunk_8_@duckdb_je_arena_cache_bin_fill_small:bb.a

duckdb_je_arena_slab_dalloc.exit126:              ; preds = %bb.bd, %bb.bc, %bb.bb, %edata_list_active_remove.exit124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %.val108 = load ptr, ptr %i.ar, align 8, !tbaa !127 ; 2 uses
  %i.qt = icmp eq ptr %.val108, null
  br i1 %i.qt, label %arena_bin_flush_batch_after_unlock.exit, label %.lr.ph182

arena_bin_flush_batch_after_unlock.exit:          ; preds = %duckdb_je_arena_slab_dalloc.exit126, %.preheader150, %arena_bin_flush_batch_before_unlock.exit
  %i.qu = call fastcc ptr @arena_slab_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %.0.i111, ptr noundef nonnull %i.g)
  br label %bb.d

end_hunk_8
