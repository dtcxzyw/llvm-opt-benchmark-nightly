Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/line-log?download=true
inline.NumInlined: 74
inline.NumDeleted: 35
begin_hunk_0_@range_set_union:bb.a

bb.r:                                             ; preds = %bb.p
  %i.bo = icmp slt i64 %i.ap, %i.al
  br i1 %i.bo, label %bb.s, label %.backedge

bb.s:                                             ; preds = %bb.r
  store i64 %i.al, ptr %i.ao, align 8, !tbaa !24
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.r, %bb.n
  br label %bb.c, !llvm.loop !179

bb.t:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @strvec_push(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @parse_pathspec(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @strvec_clear(ptr noundef) local_unnamed_addr #6

declare void @diff_free_filepair(ptr noundef) local_unnamed_addr #6

declare ptr @get_bloom_filter(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @bloom_key_fill(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @bloom_filter_contains(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @bloom_key_clear(ptr noundef) local_unnamed_addr #6

declare i32 @commit_list_count(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @queue_diffs(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(address) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.strvec, align 8             ; 6 uses
  %6 = alloca %struct.diff_options, align 8       ; 11 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 847, ptr noundef nonnull @__PRETTY_FUNCTION__.queue_diffs) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call ptr @get_commit_tree_oid(ptr noundef nonnull %3) #13 ; 2 uses
  %.not23 = icmp eq ptr %4, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call ptr @get_commit_tree_oid(ptr noundef nonnull %4) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.c = phi ptr [ %i.b, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !182
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !183  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %same_paths_in_pathspec_and_range.exit.thread

.lr.ph.i:                                         ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !184
  %i.k = zext nneg i32 %i.g to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.019.i = phi ptr [ %0, %.lr.ph.i ], [ %i.q, %bb.h ] ; 2 uses
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !188
  %i.n = getelementptr inbounds nuw i8, ptr %.019.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.o) #15
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.h, label %same_paths_in_pathspec_and_range.exit.thread

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = load ptr, ptr %.019.i, align 8, !tbaa !98 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next.i, %i.k ; 2 uses
  %i.s = icmp ne ptr %i.q, null                   ; 2 uses
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %bb.g, label %same_paths_in_pathspec_and_range.exit, !llvm.loop !180

same_paths_in_pathspec_and_range.exit:            ; preds = %bb.h
  %i.u = select i1 %i.r, i1 true, i1 %i.s
  br i1 %i.u, label %same_paths_in_pathspec_and_range.exit.thread, label %bb.i

same_paths_in_pathspec_and_range.exit.thread:     ; preds = %bb.g, %bb.f, %same_paths_in_pathspec_and_range.exit
  tail call void @clear_pathspec(ptr noundef nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.parse_pathspec_from_ranges.array, i64 24, i1 false)
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %same_paths_in_pathspec_and_range.exit.thread, %.lr.ph.i28
  %.06.i = phi ptr [ %i.y, %.lr.ph.i28 ], [ %0, %same_paths_in_pathspec_and_range.exit.thread ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef %i.w) #13 ; 0 uses
  %i.y = load ptr, ptr %.06.i, align 8, !tbaa !98 ; 2 uses
  %.not.i29 = icmp eq ptr %i.y, null
  br i1 %.not.i29, label %parse_pathspec_from_ranges.exit, label %.lr.ph.i28, !llvm.loop !1

parse_pathspec_from_ranges.exit:                  ; preds = %.lr.ph.i28
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !101
  call void @parse_pathspec(ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %.pre.i) #13
  call void @strvec_clear(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.i

bb.i:                                             ; preds = %parse_pathspec_from_ranges.exit, %same_paths_in_pathspec_and_range.exit, %bb.e
  call void @diff_queue_clear(ptr noundef nonnull @diff_queued_diff) #13
  call void @diff_tree_oid(ptr noundef %i.c, ptr noundef %i.a, ptr noundef nonnull @.str.19, ptr noundef %1) #13
  %i.z = load i32, ptr %i.d, align 8, !tbaa !182
  %.not26 = icmp eq i32 %i.z, 0
  br i1 %.not26, label %diff_might_be_rename.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !119 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i31, label %diff_might_be_rename.exit.thread

.lr.ph.i31:                                       ; preds = %bb.j
  %i.ac = load ptr, ptr @diff_queued_diff, align 8, !tbaa !120
  %wide.trip.count.i = zext nneg i32 %i.aa to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i34, %wide.trip.count.i
  br i1 %exitcond.not.i, label %diff_might_be_rename.exit.thread, label %bb.l, !llvm.loop !181

bb.l:                                             ; preds = %bb.k, %.lr.ph.i31
  %indvars.iv.i32 = phi i64 [ 0, %.lr.ph.i31 ], [ %indvars.iv.next.i34, %bb.k ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !121
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !105
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !122
  %.not.i33 = icmp eq i16 %i.ah, 0
  br i1 %.not.i33, label %diff_might_be_rename.exit, label %bb.k

diff_might_be_rename.exit:                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !189
  call void @repo_diff_setup(ptr noundef %i.aj, ptr noundef nonnull %6) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 1, ptr %i.ak, align 8, !tbaa !190
  %i.al = load i32, ptr %i.d, align 8, !tbaa !182
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 264
  store i32 %i.al, ptr %i.am, align 8, !tbaa !182
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !191
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 284
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !191
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 280
  store i32 2048, ptr %i.aq, align 8, !tbaa !192
  call void @diff_setup_done(ptr noundef nonnull %6) #13
  call void @diff_queue_clear(ptr noundef nonnull @diff_queued_diff) #13
  call void @diff_tree_oid(ptr noundef %i.c, ptr noundef %i.a, ptr noundef nonnull @.str.19, ptr noundef nonnull %6) #13
  call fastcc void @filter_diffs_for_paths(ptr noundef %0, i32 noundef 1)
  call void @diffcore_std(ptr noundef nonnull %6) #13
  call fastcc void @filter_diffs_for_paths(ptr noundef %0, i32 noundef 0)
  call void @diff_free(ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %diff_might_be_rename.exit.thread

diff_might_be_rename.exit.thread:                 ; preds = %bb.k, %bb.j, %diff_might_be_rename.exit, %bb.i
  %.not.i35 = icmp eq ptr %2, @diff_queued_diff
  br i1 %.not.i35, label %bb.m, label %move_diff_queue.exit

bb.m:                                             ; preds = %diff_might_be_rename.exit.thread
  call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 794, ptr noundef nonnull @__PRETTY_FUNCTION__.move_diff_queue) #14
  unreachable

move_diff_queue.exit:                             ; preds = %diff_might_be_rename.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @diff_queued_diff, i64 16, i1 false)
  call void @diff_queue_init(ptr noundef nonnull @diff_queued_diff) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @process_all_files(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.range_set, align 8          ; 7 uses
  %5 = alloca %struct.collect_diff_cbdata, align 8 ; 4 uses
  %6 = alloca %struct.s_xpparam, align 8          ; 4 uses
  %7 = alloca %struct.s_xdemitconf, align 8       ; 5 uses
  %8 = alloca %struct.s_xdemitcb, align 8         ; 5 uses
  %9 = alloca %struct.range_set, align 8          ; 7 uses
  %10 = alloca %struct.diff_ranges, align 8       ; 10 uses
  %11 = alloca %struct.s_mmfile, align 8          ; 6 uses
  %12 = alloca %struct.s_mmfile, align 8          ; 6 uses
  %i.a = tail call fastcc ptr @line_log_data_copy(ptr noundef %3)
  store ptr %i.a, ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !119
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 3 uses
  %.024110 = phi i32 [ 0, %.lr.ph ], [ %.144, %.thread ] ; 3 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !120
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !121  ; 5 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !84   ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not3279.i = icmp eq ptr %i.t, null
  br i1 %.not3279.i, label %process_diff_filepair.exit.thread, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 902, ptr noundef nonnull @__PRETTY_FUNCTION__.process_diff_filepair) #14
  unreachable

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %.02980.i = phi ptr [ %i.ab, %bb.f ], [ %i.t, %.preheader.i ] ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02980.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !97   ; 2 uses
  %.not33.i = icmp eq ptr %i.z, null
  br i1 %.not33.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 904, ptr noundef nonnull @__PRETTY_FUNCTION__.process_diff_filepair) #14
  unreachable

bb.e:                                             ; preds = %.lr.ph.i
  %i.aa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) %i.x) #15
  %.not34.i = icmp eq i32 %i.aa, 0
  br i1 %.not34.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %.02980.i, align 8, !tbaa !98 ; 2 uses
  %.not32.i = icmp eq ptr %i.ab, null
  br i1 %.not32.i, label %process_diff_filepair.exit.thread, label %.lr.ph.i, !llvm.loop !193

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.02980.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02980.i, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.02980.i, i64 20 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !99
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %process_diff_filepair.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 82
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = and i16 %i.ai, 1
  %.not35.i = icmp eq i16 %i.aj, 0
  br i1 %.not35.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 915, ptr noundef nonnull @__PRETTY_FUNCTION__.process_diff_filepair) #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.al = call i32 @diff_populate_filespec(ptr noundef %i.ak, ptr noundef nonnull %i.v, ptr noundef null) #13 ; 0 uses
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !106 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !85
  store ptr %i.ao, ptr %12, align 8, !tbaa !204
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !86
  store i64 %i.aq, ptr %i.f, align 8, !tbaa !205
  %i.ar = load ptr, ptr %i.s, align 8, !tbaa !105 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 82
  %i.at = load i16, ptr %i.as, align 2
  %i.au = and i16 %i.at, 1
  %.not36.i = icmp eq i16 %i.au, 0
  br i1 %.not36.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.aw = call i32 @diff_populate_filespec(ptr noundef %i.av, ptr noundef nonnull %i.ar, ptr noundef null) #13 ; 0 uses
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !105 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !85
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !86
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bc = call ptr @xstrdup(ptr noundef nonnull @.str.19) #13 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink119.i = phi ptr [ %i.bc, %bb.l ], [ %i.az, %bb.k ]
  %.sink.i = phi i64 [ 0, %bb.l ], [ %i.bb, %bb.k ]
  %.0.i = phi ptr [ %i.bc, %bb.l ], [ null, %bb.k ]
  store ptr %.sink119.i, ptr %11, align 8, !tbaa !204
  store i64 %.sink.i, ptr %i.g, align 8, !tbaa !205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  store ptr %10, ptr %5, align 8, !tbaa !125
  store ptr @collect_diff_cb, ptr %i.h, align 8, !tbaa !207
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %5, ptr %8, align 8, !tbaa !209
  %i.bd = call i32 @xdi_diff(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.not37.i = icmp eq i32 %i.bd, 0
  br i1 %.not37.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !84
  call void (ptr, ...) @die(ptr noundef nonnull @.str.27, ptr noundef %i.bg) #14
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !97
  call void @free(ptr noundef %i.bh) #13
  %i.bi = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84
  %i.bl = call ptr @xstrdup(ptr noundef %i.bk) #13
  store ptr %i.bl, ptr %i.ac, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.bm = call ptr @xmalloc(i64 noundef 32) #13   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i32, ptr %i.j, align 4, !tbaa !210 ; 2 uses
  %.not40.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not40.i.i.i, label %diff_ranges_filter_touched.exit.ithread-pre-split.i, label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %.02980.i, i64 24
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %ranges_overlap.exit.thread.i.i.i, %.preheader.lr.ph.i.i.i
  %i.bq = phi i32 [ %i.bo, %.preheader.lr.ph.i.i.i ], [ %i.cp, %ranges_overlap.exit.thread.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %ranges_overlap.exit.thread.i.i.i ] ; 4 uses
  %.039.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i ], [ %.1.i.i.i, %ranges_overlap.exit.thread.i.i.i ]
  %i.br = load ptr, ptr %i.k, align 8, !tbaa !211
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv.i.i.i ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !23
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.preheader.i.i.i
  %.1.i.i.i = phi i32 [ %i.bz, %bb.q ], [ %.039.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.bv = zext i32 %.1.i.i.i to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !24
  %.not.i.i.i = icmp slt i64 %i.bt, %i.by
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = add i32 %.1.i.i.i, 1                    ; 3 uses
  %i.ca = load i32, ptr %i.ae, align 4, !tbaa !20
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %diff_ranges_filter_touched.exit.i.i, label %bb.p, !llvm.loop !194

bb.r:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !24
  %i.ce = load i64, ptr %i.bw, align 8, !tbaa !23
  %.not.i.i.i.i = icmp sgt i64 %i.cd, %i.ce
  br i1 %.not.i.i.i.i, label %ranges_overlap.exit.i.i.i, label %ranges_overlap.exit.thread.i.i.i

ranges_overlap.exit.i.i.i:                        ; preds = %bb.r
  %i.cf = load ptr, ptr %i.l, align 8, !tbaa !212
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !24
  call void @range_set_append(ptr noundef nonnull %i.bm, i64 noundef %i.ch, i64 noundef %i.cj)
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !211
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !23
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !24
  call void @range_set_append(ptr noundef nonnull %i.bn, i64 noundef %i.cm, i64 noundef %i.co)
end_hunk_0
begin_hunk_1_@process_all_files:bb.a

diff_ranges_filter_touched.exit.ithread-pre-split.i: ; preds = %ranges_overlap.exit.thread.i.i.i, %bb.o
  %.pr.i = load i32, ptr %i.ae, align 4, !tbaa !20
  br label %diff_ranges_filter_touched.exit.i.i

diff_ranges_filter_touched.exit.i.i:              ; preds = %bb.q, %diff_ranges_filter_touched.exit.ithread-pre-split.i
  %i.cs = phi i32 [ %.pr.i, %diff_ranges_filter_touched.exit.ithread-pre-split.i ], [ %i.bz, %bb.q ]
  %.not66.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not66.i.i.i, label %process_diff_filepair.exit, label %.lr.ph65.i.i.i

.lr.ph65.i.i.i:                                   ; preds = %diff_ranges_filter_touched.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.02980.i, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.i.i.i, %.lr.ph65.i.i.i
  %.sroa.0.0.i.i = phi i32 [ 0, %.lr.ph65.i.i.i ], [ %.sroa.0.1.i.i, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i = phi i32 [ 0, %.lr.ph65.i.i.i ], [ %.sroa.8.1.i.i, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.15.0.i.i = phi ptr [ null, %.lr.ph65.i.i.i ], [ %.sroa.15.1.i.i, %.loopexit.i.i.i ] ; 2 uses
  %indvars.iv73.i.i.i = phi i64 [ 0, %.lr.ph65.i.i.i ], [ %indvars.iv.next74.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %.03964.i.i.i = phi i32 [ 0, %.lr.ph65.i.i.i ], [ %.3.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv73.i.i.i ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !24 ; 5 uses
  %.059.i.i.i = load i64, ptr %i.cx, align 8, !tbaa !79 ; 2 uses
  %i.da = icmp slt i64 %.059.i.i.i, %i.cz
  br i1 %i.da, label %.preheader.i12.i.i, label %.loopexit.i.i.i

.preheader.i12.i.i:                               ; preds = %bb.s, %bb.ag
  %.sroa.0.2.i.i = phi i32 [ %.sroa.0.3.i.i, %bb.ag ], [ %.sroa.0.0.i.i, %bb.s ] ; 7 uses
  %.sroa.8.2.i.i = phi i32 [ %.sroa.8.3.i.i, %bb.ag ], [ %.sroa.8.0.i.i, %bb.s ] ; 11 uses
  %.sroa.15.2.i.i = phi ptr [ %.sroa.15.3.i.i, %bb.ag ], [ %.sroa.15.0.i.i, %bb.s ] ; 7 uses
  %.061.i.i.i = phi i64 [ %.0.i.i.i, %bb.ag ], [ %.059.i.i.i, %bb.s ] ; 7 uses
  %.14060.i.i.i = phi i32 [ %i.di, %bb.ag ], [ %.03964.i.i.i, %bb.s ] ; 3 uses
  %i.db = load i32, ptr %i.cu, align 4, !tbaa !20 ; 3 uses
  %i.dc = icmp ult i32 %.14060.i.i.i, %i.db
  br i1 %i.dc, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i12.i.i
  %i.dd = load ptr, ptr %i.cv, align 8, !tbaa !19 ; 2 uses
  %i.de = zext i32 %.14060.i.i.i to i64
  %wide.trip.count.i.i.i = zext i32 %i.db to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %indvars.iv.i13.i.i = phi i64 [ %i.de, %.lr.ph.i.i.i ], [ %indvars.iv.next.i15.i.i, %bb.u ] ; 4 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %indvars.iv.i13.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !24 ; 2 uses
  %.not.i14.i.i = icmp slt i64 %.061.i.i.i, %i.dh
  br i1 %.not.i14.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i15.i.i = add nuw nsw i64 %indvars.iv.i13.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i15.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %bb.t, !llvm.loop !196

bb.v:                                             ; preds = %bb.t
  %i.di = trunc nuw i64 %indvars.iv.i13.i.i to i32 ; 3 uses
  %i.dj = load i64, ptr %i.df, align 8, !tbaa !23 ; 3 uses
  %.not45.i.i.i = icmp sgt i64 %i.cz, %i.dj
  br i1 %.not45.i.i.i, label %bb.ab, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.v, %.preheader.i12.i.i, %bb.u
  %.249.i.i.i = phi i32 [ %i.db, %bb.u ], [ %.14060.i.i.i, %.preheader.i12.i.i ], [ %i.di, %bb.v ]
  %i.dk = icmp eq i32 %.sroa.8.2.i.i, 0
  br i1 %i.dk, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.critedge.i.i.i
  %i.dl = add i32 %.sroa.8.2.i.i, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.15.2.i.i, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !24
  %.not.i27.i.i = icmp sgt i64 %i.dp, %.061.i.i.i
  br i1 %.not.i27.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_append) #14
  unreachable

bb.y:                                             ; preds = %bb.w, %.critedge.i.i.i
  %.not.i.i28.i.i = icmp sgt i64 %.061.i.i.i, %i.cz
  br i1 %.not.i.i28.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 65, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_append_unsafe) #14
  unreachable

bb.aa:                                            ; preds = %bb.y
  %.not10.i.i29.i.i = icmp ult i32 %.sroa.8.2.i.i, %.sroa.0.2.i.i
  %.pre147.i.i = zext i32 %.sroa.8.2.i.i to i64   ; 2 uses
  br i1 %.not10.i.i29.i.i, label %range_set_append.exit37.i.i, label %st_mult.exit.i.i.i30.i.i

st_mult.exit.i.i.i30.i.i:                         ; preds = %bb.aa
  %i.dq = add nuw nsw i64 %.pre147.i.i, 1
  %i.dr = mul i32 %.sroa.0.2.i.i, 3
  %i.ds = add i32 %i.dr, 48
  %i.dt = lshr i32 %i.ds, 1
  %i.du = zext nneg i32 %i.dt to i64
  %storemerge14.i.i.i31.i.i = call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.du) ; 2 uses
  %storemerge.i.i.i32.i.i = trunc i64 %storemerge14.i.i.i31.i.i to i32
  %i.dv = shl nuw nsw i64 %storemerge14.i.i.i31.i.i, 4
  %i.dw = and i64 %i.dv, 68719476720
  %i.dx = call ptr @xrealloc(ptr noundef %.sroa.15.2.i.i, i64 noundef %i.dw) #13
  br label %range_set_append.exit37.i.i

range_set_append.exit37.i.i:                      ; preds = %st_mult.exit.i.i.i30.i.i, %bb.aa
  %.sroa.0.5.i.i = phi i32 [ %storemerge.i.i.i32.i.i, %st_mult.exit.i.i.i30.i.i ], [ %.sroa.0.2.i.i, %bb.aa ]
  %.sroa.15.6.i.i = phi ptr [ %i.dx, %st_mult.exit.i.i.i30.i.i ], [ %.sroa.15.2.i.i, %bb.aa ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.15.6.i.i, i64 %.pre147.i.i ; 2 uses
  store i64 %.061.i.i.i, ptr %i.dy, align 8, !tbaa !23
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %i.cz, ptr %i.dz, align 8, !tbaa !24
  %i.ea = add i32 %.sroa.8.2.i.i, 1
  br label %.loopexit.i.i.i

bb.ab:                                            ; preds = %bb.v
  %.not46.i.i.i = icmp slt i64 %.061.i.i.i, %i.dj
  br i1 %.not46.i.i.i, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.eb = icmp eq i32 %.sroa.8.2.i.i, 0
  br i1 %i.eb, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = add i32 %.sroa.8.2.i.i, -1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.sroa.15.2.i.i, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !24
  %.not.i25.i.i = icmp sgt i64 %i.eg, %.061.i.i.i
  br i1 %.not.i25.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_append) #14
  unreachable

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.not10.i.i.i.i = icmp ult i32 %.sroa.8.2.i.i, %.sroa.0.2.i.i
  %.pre144.i.i.a = zext i32 %.sroa.8.2.i.i to i64 ; 2 uses
  br i1 %.not10.i.i.i.i, label %range_set_append.exit.i.i, label %st_mult.exit.i.i.i.i.i

st_mult.exit.i.i.i.i.i:                           ; preds = %bb.af
  %i.eh = add nuw nsw i64 %.pre144.i.i.a, 1
  %i.ei = mul i32 %.sroa.0.2.i.i, 3
  %i.ej = add i32 %i.ei, 48
  %i.ek = lshr i32 %i.ej, 1
  %i.el = zext nneg i32 %i.ek to i64
  %storemerge14.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eh, i64 %i.el) ; 2 uses
  %storemerge.i.i.i.i.i = trunc i64 %storemerge14.i.i.i.i.i to i32
  %i.em = shl nuw nsw i64 %storemerge14.i.i.i.i.i, 4
  %i.en = and i64 %i.em, 68719476720
  %i.eo = call ptr @xrealloc(ptr noundef %.sroa.15.2.i.i, i64 noundef %i.en) #13
  %.pre.i.i = load ptr, ptr %i.cv, align 8, !tbaa !19
  br label %range_set_append.exit.i.i

range_set_append.exit.i.i:                        ; preds = %st_mult.exit.i.i.i.i.i, %bb.af
  %i.ep = phi ptr [ %.pre.i.i, %st_mult.exit.i.i.i.i.i ], [ %i.dd, %bb.af ]
  %.sroa.0.4.i.i = phi i32 [ %storemerge.i.i.i.i.i, %st_mult.exit.i.i.i.i.i ], [ %.sroa.0.2.i.i, %bb.af ]
  %.sroa.15.5.i.i = phi ptr [ %i.eo, %st_mult.exit.i.i.i.i.i ], [ %.sroa.15.2.i.i, %bb.af ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.15.5.i.i, i64 %.pre144.i.i.a ; 2 uses
  store i64 %.061.i.i.i, ptr %i.eq, align 8, !tbaa !23
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %i.dj, ptr %i.er, align 8, !tbaa !24
  %i.es = add i32 %.sroa.8.2.i.i, 1
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %indvars.iv.i13.i.i
  %.1.in.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i.i.i, i64 8
  %.0.pre.i.i.i = load i64, ptr %.1.in.phi.trans.insert.i.i.i, align 8, !tbaa !79
  br label %bb.ag

bb.ag:                                            ; preds = %range_set_append.exit.i.i, %bb.ab
  %.sroa.0.3.i.i = phi i32 [ %.sroa.0.4.i.i, %range_set_append.exit.i.i ], [ %.sroa.0.2.i.i, %bb.ab ] ; 2 uses
  %.sroa.8.3.i.i = phi i32 [ %i.es, %range_set_append.exit.i.i ], [ %.sroa.8.2.i.i, %bb.ab ] ; 2 uses
  %.sroa.15.3.i.i = phi ptr [ %.sroa.15.5.i.i, %range_set_append.exit.i.i ], [ %.sroa.15.2.i.i, %bb.ab ] ; 2 uses
  %.0.i.i.i = phi i64 [ %.0.pre.i.i.i, %range_set_append.exit.i.i ], [ %i.dh, %bb.ab ] ; 2 uses
  %i.et = icmp slt i64 %.0.i.i.i, %i.cz
  br i1 %i.et, label %.preheader.i12.i.i, label %.loopexit.i.i.i, !llvm.loop !197

.loopexit.i.i.i:                                  ; preds = %bb.ag, %range_set_append.exit37.i.i, %bb.s
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %bb.s ], [ %.sroa.0.5.i.i, %range_set_append.exit37.i.i ], [ %.sroa.0.3.i.i, %bb.ag ]
  %.sroa.8.1.i.i = phi i32 [ %.sroa.8.0.i.i, %bb.s ], [ %i.ea, %range_set_append.exit37.i.i ], [ %.sroa.8.3.i.i, %bb.ag ] ; 3 uses
  %.sroa.15.1.i.i = phi ptr [ %.sroa.15.0.i.i, %bb.s ], [ %.sroa.15.6.i.i, %range_set_append.exit37.i.i ], [ %.sroa.15.3.i.i, %bb.ag ] ; 4 uses
  %.3.i.i.i = phi i32 [ %.03964.i.i.i, %bb.s ], [ %.249.i.i.i, %range_set_append.exit37.i.i ], [ %i.di, %bb.ag ]
  %indvars.iv.next74.i.i.i = add nuw nsw i64 %indvars.iv73.i.i.i, 1 ; 2 uses
  %i.eu = load i32, ptr %i.ae, align 4, !tbaa !20
  %i.ev = zext i32 %i.eu to i64
  %i.ew = icmp samesign ult i64 %indvars.iv.next74.i.i.i, %i.ev
  br i1 %i.ew, label %bb.s, label %range_set_difference.exit.i.i, !llvm.loop !198

range_set_difference.exit.i.i:                    ; preds = %.loopexit.i.i.i
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !211
  %i.ey = load ptr, ptr %i.l, align 8, !tbaa !212
  %.not12.i.i.i = icmp eq i32 %.sroa.8.1.i.i, 0
  br i1 %.not12.i.i.i, label %process_diff_filepair.exit, label %.preheader.lr.ph.i16.i.i

.preheader.lr.ph.i16.i.i:                         ; preds = %range_set_difference.exit.i.i
  %wide.trip.count.i17.i.i = zext i32 %.sroa.8.1.i.i to i64
  br label %.preheader.i18.i.i

.preheader.i18.i.i:                               ; preds = %range_set_append.exit48.i.i, %.preheader.lr.ph.i16.i.i
  %i.ez = phi ptr [ null, %.preheader.lr.ph.i16.i.i ], [ %i.gh, %range_set_append.exit48.i.i ] ; 3 uses
  %storemerge.i.i.i43108.i.i = phi i32 [ 0, %.preheader.lr.ph.i16.i.i ], [ %storemerge.i.i.i43107.i.i, %range_set_append.exit48.i.i ] ; 3 uses
  %indvars.iv14.i.i.i = phi i64 [ 0, %.preheader.lr.ph.i16.i.i ], [ %.pre.i, %range_set_append.exit48.i.i ] ; 6 uses
  %.011.i.i.i = phi i64 [ 0, %.preheader.lr.ph.i16.i.i ], [ %.1.lcssa.i.i.i, %range_set_append.exit48.i.i ] ; 2 uses
  %.02810.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i16.i.i ], [ %.129.lcssa.i.i.i, %range_set_append.exit48.i.i ] ; 3 uses
  %i.fa = load i32, ptr %i.j, align 4, !tbaa !210 ; 3 uses
  %i.fb = icmp ult i32 %.02810.i.i.i, %i.fa
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.15.1.i.i, i64 %indvars.iv14.i.i.i ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !23 ; 3 uses
  br i1 %i.fb, label %.lr.ph.i20.i.i, label %.critedge.i19.i.i

.lr.ph.i20.i.i:                                   ; preds = %.preheader.i18.i.i
  %i.fe = zext i32 %.02810.i.i.i to i64
  %i.ff = zext i32 %i.fa to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i20.i.i
  %indvars.iv.i21.i.i = phi i64 [ %i.fe, %.lr.ph.i20.i.i ], [ %indvars.iv.next.i23.i.i, %bb.ai ] ; 4 uses
  %.14.i.i.i = phi i64 [ %.011.i.i.i, %.lr.ph.i20.i.i ], [ %i.fp, %bb.ai ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %indvars.iv.i21.i.i ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !23 ; 2 uses
  %.not.i22.i.i = icmp slt i64 %i.fd, %i.fh
  br i1 %.not.i22.i.i, label %.critedge.loopexit.split.loop.exit19.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %indvars.iv.i21.i.i ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !24
  %i.fl = load i64, ptr %i.fi, align 8, !tbaa !23
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !24
  %.neg47 = add i64 %i.fh, %.14.i.i.i
  %.neg39.i = add i64 %.neg47, %i.fk
  %i.fo = add i64 %i.fl, %i.fn
  %i.fp = sub i64 %.neg39.i, %i.fo                ; 2 uses
  %indvars.iv.next.i23.i.i = add nuw nsw i64 %indvars.iv.i21.i.i, 1 ; 2 uses
  %exitcond.not.i24.i.i = icmp eq i64 %indvars.iv.next.i23.i.i, %i.ff
  br i1 %exitcond.not.i24.i.i, label %.critedge.i19.i.i, label %bb.ah, !llvm.loop !199

.critedge.loopexit.split.loop.exit19.i.i.i:       ; preds = %bb.ah
  %i.fq = trunc nuw i64 %indvars.iv.i21.i.i to i32
  br label %.critedge.i19.i.i

.critedge.i19.i.i:                                ; preds = %bb.ai, %.critedge.loopexit.split.loop.exit19.i.i.i, %.preheader.i18.i.i
  %.129.lcssa.i.i.i = phi i32 [ %.02810.i.i.i, %.preheader.i18.i.i ], [ %i.fq, %.critedge.loopexit.split.loop.exit19.i.i.i ], [ %i.fa, %bb.ai ]
  %.1.lcssa.i.i.i = phi i64 [ %.011.i.i.i, %.preheader.i18.i.i ], [ %.14.i.i.i, %.critedge.loopexit.split.loop.exit19.i.i.i ], [ %i.fp, %bb.ai ] ; 3 uses
  %i.fr = add nsw i64 %.1.lcssa.i.i.i, %i.fd      ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !24 ; 2 uses
  %i.fu = add nsw i64 %i.ft, %.1.lcssa.i.i.i
  %i.fv = icmp eq i64 %indvars.iv14.i.i.i, 0
  br i1 %i.fv, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.critedge.i19.i.i
  %i.fw = getelementptr [16 x i8], ptr %i.ez, i64 %indvars.iv14.i.i.i
  %i.fx = getelementptr i8, ptr %i.fw, i64 -8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !24
  %.not.i38.i.i = icmp sgt i64 %i.fy, %i.fr
  br i1 %.not.i38.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_append) #14
  unreachable

bb.al:                                            ; preds = %bb.aj, %.critedge.i19.i.i
  %.not.i.i39.i.i = icmp sgt i64 %i.fd, %i.ft
  br i1 %.not.i.i39.i.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 65, ptr noundef nonnull @__PRETTY_FUNCTION__.range_set_append_unsafe) #14
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.fz = zext i32 %storemerge.i.i.i43108.i.i to i64
  %.not10.i.i40.i.i = icmp samesign ult i64 %indvars.iv14.i.i.i, %i.fz
  %.pre.i = add nuw nsw i64 %indvars.iv14.i.i.i, 1 ; 4 uses
  br i1 %.not10.i.i40.i.i, label %range_set_append.exit48.i.i, label %st_mult.exit.i.i.i41.i.i

st_mult.exit.i.i.i41.i.i:                         ; preds = %bb.an
  %i.ga = mul i32 %storemerge.i.i.i43108.i.i, 3
  %i.gb = add i32 %i.ga, 48
  %i.gc = lshr i32 %i.gb, 1
  %i.gd = zext nneg i32 %i.gc to i64
  %storemerge14.i.i.i42.i.i = call i64 @llvm.umax.i64(i64 %.pre.i, i64 %i.gd) ; 2 uses
  %storemerge.i.i.i43.i.i = trunc i64 %storemerge14.i.i.i42.i.i to i32 ; 2 uses
  store i32 %storemerge.i.i.i43.i.i, ptr %4, align 8, !tbaa !18
  %i.ge = shl nuw nsw i64 %storemerge14.i.i.i42.i.i, 4
  %i.gf = and i64 %i.ge, 68719476720
  %i.gg = call ptr @xrealloc(ptr noundef %i.ez, i64 noundef %i.gf) #13 ; 2 uses
  store ptr %i.gg, ptr %i.n, align 8, !tbaa !19
  br label %range_set_append.exit48.i.i

range_set_append.exit48.i.i:                      ; preds = %st_mult.exit.i.i.i41.i.i, %bb.an
  %i.gh = phi ptr [ %i.gg, %st_mult.exit.i.i.i41.i.i ], [ %i.ez, %bb.an ] ; 3 uses
  %storemerge.i.i.i43107.i.i = phi i32 [ %storemerge.i.i.i43.i.i, %st_mult.exit.i.i.i41.i.i ], [ %storemerge.i.i.i43108.i.i, %bb.an ]
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %indvars.iv14.i.i.i ; 2 uses
  store i64 %i.fr, ptr %i.gi, align 8, !tbaa !23
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i64 %i.fu, ptr %i.gj, align 8, !tbaa !24
  %i.gk = trunc nuw i64 %.pre.i to i32
  store i32 %i.gk, ptr %i.m, align 4, !tbaa !20
  %exitcond17.not.i.i.i = icmp eq i64 %.pre.i, %wide.trip.count.i17.i.i
  br i1 %exitcond17.not.i.i.i, label %process_diff_filepair.exit, label %.preheader.i18.i.i, !llvm.loop !200

process_diff_filepair.exit.thread:                ; preds = %bb.f, %bb.g, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %.thread

process_diff_filepair.exit:                       ; preds = %range_set_append.exit48.i.i, %diff_ranges_filter_touched.exit.i.i, %range_set_difference.exit.i.i
  %i.gl = phi ptr [ %.sroa.15.1.i.i, %range_set_difference.exit.i.i ], [ null, %diff_ranges_filter_touched.exit.i.i ], [ %.sroa.15.1.i.i, %range_set_append.exit48.i.i ]
  %.sroa.15.463.i.i = phi ptr [ null, %range_set_difference.exit.i.i ], [ null, %diff_ranges_filter_touched.exit.i.i ], [ %i.gh, %range_set_append.exit48.i.i ]
  call fastcc void @range_set_union(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %i.bm)
  call void @free(ptr noundef %i.gl) #13
  call void @free(ptr noundef %.sroa.15.463.i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.gm = getelementptr inbounds nuw i8, ptr %.02980.i, i64 24 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !19
  call void @free(ptr noundef %i.gn) #13
  %i.go = load ptr, ptr %i.o, align 8, !tbaa !19
  store ptr %i.go, ptr %i.gm, align 8, !tbaa !19
  %i.gp = load <2 x i32>, ptr %9, align 8, !tbaa !126
  store <2 x i32> %i.gp, ptr %i.ad, align 8, !tbaa !126
  %i.gq = load ptr, ptr %i.l, align 8, !tbaa !19
  call void @free(ptr noundef %i.gq) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.gr = load ptr, ptr %i.k, align 8, !tbaa !19
  call void @free(ptr noundef %i.gr) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  call void @free(ptr noundef %.0.i) #13
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !213
  %.not45 = icmp eq i32 %i.gt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br i1 %.not45, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %process_diff_filepair.exit
  %i.gu = add nsw i32 %.024110, 1
  %i.gv = load ptr, ptr %i.u, align 8, !tbaa !106
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !84
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.aq
  %.0108 = phi ptr [ %3, %bb.ao ], [ %i.hb, %bb.aq ] ; 7 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.0108, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !97
  %i.ha = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gz, ptr noundef nonnull dereferenceable(1) %i.gx) #15
  %.not29 = icmp eq i32 %i.ha, 0
  br i1 %.not29, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hb = load ptr, ptr %.0108, align 8, !tbaa !98 ; 2 uses
  %.not28 = icmp eq ptr %i.hb, null
  br i1 %.not28, label %.critedge32, label %bb.ap, !llvm.loop !201

.critedge32:                                      ; preds = %bb.aq
  call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 988, ptr noundef nonnull @__PRETTY_FUNCTION__.process_all_files) #14
  unreachable

.critedge:                                        ; preds = %bb.ap
  %i.hc = getelementptr inbounds nuw i8, ptr %.0108, i64 32 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !102 ; 2 uses
  %.not30 = icmp eq ptr %i.hd, null
  br i1 %.not30, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.critedge
  call void @diff_free_filepair(ptr noundef nonnull %i.hd) #13
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.critedge
  %i.he = load ptr, ptr %2, align 8, !tbaa !120
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !121 ; 2 uses
  %i.hh = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #13 ; 3 uses
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !105 ; 2 uses
  store ptr %i.hi, ptr %i.hh, align 8, !tbaa !105
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !106 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store ptr %i.hk, ptr %i.hl, align 8, !tbaa !106
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 72 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !107
  %i.ho = add nsw i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hm, align 8, !tbaa !107
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 72 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !107
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.hp, align 8, !tbaa !107
  store ptr %i.hh, ptr %i.hc, align 8, !tbaa !102
  %i.hs = getelementptr inbounds nuw i8, ptr %.0108, i64 40 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.0108, i64 48
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !19
  call void @free(ptr noundef %i.hu) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i8 0, i64 16, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %.0108, i64 56
  %i.hw = getelementptr inbounds nuw i8, ptr %.0108, i64 64
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !19
  call void @free(ptr noundef %i.hx) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false)
  call void @free(ptr noundef %i.bm) #13
  br label %.thread

bb.at:                                            ; preds = %process_diff_filepair.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !19
  call void @free(ptr noundef %i.hz) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !19
  call void @free(ptr noundef %i.ib) #13
  call void @free(ptr noundef nonnull %i.bm) #13
  br label %.thread

.thread:                                          ; preds = %process_diff_filepair.exit.thread, %bb.as, %bb.at
  %.144 = phi i32 [ %.024110, %bb.at ], [ %.024110, %process_diff_filepair.exit.thread ], [ %i.gu, %bb.as ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ic = load i32, ptr %i.b, align 4, !tbaa !119
  %i.id = sext i32 %i.ic to i64
  %i.ie = icmp slt i64 %indvars.iv.next, %i.id
  br i1 %i.ie, label %bb.b, label %._crit_edge, !llvm.loop !202

._crit_edge:                                      ; preds = %.thread, %bb.a
  %.024.lcssa = phi i32 [ 0, %bb.a ], [ %.144, %.thread ]
  ret i32 %.024.lcssa
}

declare void @diff_queue_clear(ptr noundef) local_unnamed_addr #6

declare void @commit_list_free(ptr noundef) local_unnamed_addr #6

declare ptr @commit_list_append(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @get_commit_tree_oid(ptr noundef) local_unnamed_addr #6

declare void @clear_pathspec(ptr noundef) local_unnamed_addr #6

declare void @diff_tree_oid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @repo_diff_setup(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @diff_setup_done(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @filter_diffs_for_paths(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.diff_queue_struct, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !119
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not15 = icmp eq i32 %1, 0
  br i1 %.not15, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %i.c = load ptr, ptr @diff_queued_diff, align 8, !tbaa !120
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv22
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load i16, ptr %i.h, align 8, !tbaa !122
  %.not.us = icmp eq i16 %i.i, 0
  br i1 %.not.us, label %bb.e, label %.preheader.us

bb.b:                                             ; preds = %.preheader.us, %bb.c
  %.018.us = phi ptr [ %0, %.preheader.us ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.018.us, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) %i.r) #15
  %.not17.us = icmp eq i32 %i.l, 0
  br i1 %.not17.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %.018.us, align 8, !tbaa !98 ; 2 uses
  %.not16.us = icmp eq ptr %i.m, null
  br i1 %.not16.us, label %.critedge.us, label %bb.b, !llvm.loop !214

bb.d:                                             ; preds = %bb.b
  call void @diff_q(ptr noundef nonnull %2, ptr noundef %i.e) #13
  br label %bb.f

.critedge.us:                                     ; preds = %bb.c
  call void @diff_free_filepair(ptr noundef %i.e) #13
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us
  call void @diff_free_filepair(ptr noundef nonnull %i.e) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge.us, %bb.d
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !119
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next23, %i.o
  br i1 %i.p, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !215

.preheader.us:                                    ; preds = %.lr.ph.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !84
  br label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.lr.ph ] ; 2 uses
  %i.s = load ptr, ptr @diff_queued_diff, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !121  ; 4 uses
end_hunk_1
