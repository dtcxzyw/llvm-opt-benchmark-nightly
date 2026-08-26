Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/revision?download=true
inline.NumInlined: 268
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@do_add_index_objects_to_pending:bb.a
  %i.m = and i32 %i.l, 61440
  %i.n = icmp eq i32 %i.m, 57344
  br i1 %i.n, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.q = tail call ptr @lookup_blob(ptr noundef %i.o, ptr noundef nonnull %i.p) #24 ; 4 uses
  %.not22 = icmp eq ptr %i.q, null
  br i1 %.not22, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.42) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.q, align 4
  %i.s = or i64 %i.r, %i.f
  store i64 %i.s, ptr %i.q, align 4
  %i.t = load i32, ptr %i.k, align 4, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 108
  tail call fastcc void @add_pending_object_with_path(ptr noundef nonnull %0, ptr noundef nonnull %i.q, ptr noundef nonnull @.str.38, i32 noundef %i.t, ptr noundef nonnull %i.u)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !178
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.v = phi i32 [ %i.g, %bb.b ], [ %.pre, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !182

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !183  ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.commit_match.buf, i64 24, i1 false)
  call fastcc void @add_cache_tree(ptr noundef nonnull %i.z, ptr noundef %0, ptr noundef %3, i32 noundef %2)
  call void @strbuf_release(ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.aa = getelementptr i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !184 ; 4 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %add_resolve_undo_to_pending.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %.val, align 8, !tbaa !185 ; 2 uses
  %.not322.i = icmp eq ptr %i.ab, null
  br i1 %.not322.i, label %add_resolve_undo_to_pending.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !186
  %.not36 = icmp eq i64 %i.ae, 0
  br i1 %.not36, label %add_resolve_undo_to_pending.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %.lr.ph.i, %.loopexit.i
  %.03.i24 = phi ptr [ %i.bo, %.loopexit.i ], [ %i.ab, %.lr.ph.i ] ; 3 uses
  %i.af = load ptr, ptr %.03.i24, align 8, !tbaa !126 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.03.i24, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187 ; 8 uses
  %.not33.i = icmp eq ptr %i.ah, null
  br i1 %.not33.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 2 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !55
  %i.ak = and i32 %i.aj, 61440
  %i.al = icmp eq i32 %i.ak, 32768
  br i1 %i.al, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.preheader.i
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !81
  %i.an = call ptr @lookup_blob(ptr noundef %i.am, ptr noundef nonnull %i.ai) #24 ; 2 uses
  %.not35.i = icmp eq ptr %i.an, null
  br i1 %.not35.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr @git_gettext_enabled, align 4, !tbaa !55
  %.not4.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #24
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %i.ap, %bb.l ], [ @.str.48, %bb.k ]
  %i.aq = call ptr @oid_to_hex(ptr noundef nonnull %i.ai) #24
  call void (ptr, ...) @warning(ptr noundef %.0.i.i, ptr noundef %i.aq) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ar = load i32, ptr %i.ah, align 4, !tbaa !55
  call fastcc void @add_pending_object_with_path(ptr noundef nonnull %0, ptr noundef nonnull %i.an, ptr noundef nonnull @.str.38, i32 noundef %i.ar, ptr noundef %i.af)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_.exit.i, %.preheader.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !55
  %i.au = and i32 %i.at, 61440
  %i.av = icmp eq i32 %i.au, 32768
  br i1 %i.av, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !81
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.ay = call ptr @lookup_blob(ptr noundef %i.aw, ptr noundef nonnull %i.ax) #24 ; 2 uses
  %.not35.1.i = icmp eq ptr %i.ay, null
  br i1 %.not35.1.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = load i32, ptr %i.as, align 4, !tbaa !55
  call fastcc void @add_pending_object_with_path(ptr noundef nonnull %0, ptr noundef nonnull %i.ay, ptr noundef nonnull @.str.38, i32 noundef %i.az, ptr noundef %i.af)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ba = load i32, ptr @git_gettext_enabled, align 4, !tbaa !55
  %.not4.i.1.i = icmp eq i32 %i.ba, 0
  br i1 %.not4.i.1.i, label %_.exit.1.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #24
  br label %_.exit.1.i

_.exit.1.i:                                       ; preds = %bb.r, %bb.q
  %.0.i.1.i = phi ptr [ %i.bb, %bb.r ], [ @.str.48, %bb.q ]
  %i.bc = call ptr @oid_to_hex(ptr noundef nonnull %i.ax) #24
  call void (ptr, ...) @warning(ptr noundef %.0.i.1.i, ptr noundef %i.bc) #24
  br label %bb.s

bb.s:                                             ; preds = %_.exit.1.i, %bb.p, %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !55
  %i.bf = and i32 %i.be, 61440
  %i.bg = icmp eq i32 %i.bf, 32768
  br i1 %i.bg, label %bb.t, label %.loopexit.i

bb.t:                                             ; preds = %bb.s
  %i.bh = load ptr, ptr %i.ad, align 8, !tbaa !81
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 84 ; 2 uses
  %i.bj = call ptr @lookup_blob(ptr noundef %i.bh, ptr noundef nonnull %i.bi) #24 ; 2 uses
  %.not35.2.i = icmp eq ptr %i.bj, null
  br i1 %.not35.2.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = load i32, ptr %i.bd, align 4, !tbaa !55
  call fastcc void @add_pending_object_with_path(ptr noundef nonnull %0, ptr noundef nonnull %i.bj, ptr noundef nonnull @.str.38, i32 noundef %i.bk, ptr noundef %i.af)
  br label %.loopexit.i

bb.v:                                             ; preds = %bb.t
  %i.bl = load i32, ptr @git_gettext_enabled, align 4, !tbaa !55
  %.not4.i.2.i = icmp eq i32 %i.bl, 0
  br i1 %.not4.i.2.i, label %_.exit.2.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #24
  br label %_.exit.2.i

_.exit.2.i:                                       ; preds = %bb.w, %bb.v
  %.0.i.2.i = phi ptr [ %i.bm, %bb.w ], [ @.str.48, %bb.v ]
  %i.bn = call ptr @oid_to_hex(ptr noundef nonnull %i.bi) #24
  call void (ptr, ...) @warning(ptr noundef %.0.i.2.i, ptr noundef %i.bn) #24
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_.exit.2.i, %bb.u, %bb.s, %.lr.ph25
  %i.bo = getelementptr inbounds nuw i8, ptr %.03.i24, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %.val, align 8, !tbaa !185
  %i.bq = load i64, ptr %i.ac, align 8, !tbaa !186
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = icmp ult ptr %i.bo, %i.br
  br i1 %i.bs, label %.lr.ph25, label %add_resolve_undo_to_pending.exit

add_resolve_undo_to_pending.exit:                 ; preds = %.loopexit.i, %.lr.ph.i, %bb.h, %bb.i
  ret void
}

declare ptr @get_worktrees() local_unnamed_addr #5

declare ptr @get_worktree_git_dir(ptr noundef) local_unnamed_addr #5

declare i32 @read_index_from(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @worktree_git_path(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @discard_index(ptr noundef) local_unnamed_addr #5

declare void @free_worktrees(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @repo_init_revisions(ptr noundef %0, ptr noundef initializes((0, 3112)) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.5.0..sroa_idx, i8 0, i64 312, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 340
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.10.0..sroa_idx, i8 0, i64 28, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1068) %.sroa.14.0..sroa_idx, i8 0, i64 1068, i1 false)
  %i.a = load i32, ptr @default_abbrev, align 4, !tbaa !55
  store ptr null, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @compare_commits_by_commit_date, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i32 0, ptr %.sroa.6.0..sroa_idx.a, align 8
  %.sroa.10.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %1, i64 332
  store i64 132, ptr %.sroa.10.0..sroa_idx.a, align 4
  %.sroa.103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i32 -1, ptr %.sroa.103.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 372
  store i32 8, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i32 %i.a, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 380
  store i32 1, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1452
  store i32 -1, ptr %.sroa.144.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1456
  store i32 -1, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1460
  store i32 0, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1464
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.165.0..sroa_idx, i8 -1, i64 24, i1 false)
  store i32 0, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1492
  store i32 -1, ptr %.sroa.196.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(728) %.sroa.20.0..sroa_idx, i8 0, i64 728, i1 false)
  %.sroa.207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2224
  store i32 1, ptr %.sroa.207.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.21.0..sroa_idx, i8 0, i64 40, i1 false)
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2268
  store i32 1, ptr %.sroa.218.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %.sroa.22.0..sroa_idx, i8 0, i64 632, i1 false)
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2904
  store ptr @empty_strvec, ptr %.sroa.229.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2912
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.23.0..sroa_idx, i8 0, i64 200, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2704
  store ptr %0, ptr %i.c, align 8, !tbaa !188
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2632
  store ptr @file_add_remove, ptr %i.d, align 8, !tbaa !189
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2624
  store ptr @file_change, ptr %i.e, align 8, !tbaa !190
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2640
  store ptr %1, ptr %i.f, align 8, !tbaa !191
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr %2, ptr %i.g, align 8, !tbaa !192
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 560
  tail call void @grep_init(ptr noundef nonnull %i.h, ptr noundef %0) #24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 624
  store i32 1, ptr %i.i, align 8, !tbaa !193
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1520
  tail call void @repo_diff_setup(ptr noundef %i.j, ptr noundef nonnull %i.k) #24
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1848 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !194
  %.not37 = icmp eq ptr %i.m, null
  br i1 %.not37, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %2, ptr %i.l, align 8, !tbaa !194
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1856
  store i32 %i.o, ptr %i.p, align 8, !tbaa !195
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2816
  tail call void @init_display_notes(ptr noundef nonnull %i.q) #24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @list_objects_filter_init(ptr noundef nonnull %i.r) #24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) @__const.init_ref_exclusions.blank, i64 72, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 3072
  tail call void @oidset_init(ptr noundef nonnull %i.t, i64 noundef 0) #24
  ret void
}

declare i32 @compare_commits_by_commit_date(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @file_add_remove(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 %2, ptr nofree readnone captures(none) %3, i32 %4, ptr nofree readnone captures(none) %5, i32 %6) #12 {
bb.a:
  %i.a = icmp eq i32 %1, 43
  %i.b = select i1 %i.a, i32 1, i32 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !196
  %i.e = load i32, ptr @tree_difference, align 4, !tbaa !55
  %i.f = or i32 %i.e, %i.b                        ; 2 uses
  store i32 %i.f, ptr @tree_difference, align 4, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 332
  %i.h = load i64, ptr %i.g, align 4
  %i.i = and i64 %i.h, 64
  %i.j = icmp eq i64 %i.i, 0
  %i.k = icmp ne i32 %i.f, 1
  %or.cond = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1, ptr %i.l, align 8, !tbaa !197
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define internal void @file_change(ptr nofree noundef writeonly captures(none) initializes((136, 140)) %0, i32 %1, i32 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6, ptr nofree readnone captures(none) %7, i32 %8, i32 %9) #13 {
bb.a:
  store i32 3, ptr @tree_difference, align 4, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1, ptr %i.a, align 8, !tbaa !197
  ret void
}

declare void @grep_init(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @repo_diff_setup(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare void @init_display_notes(ptr noundef) local_unnamed_addr #5

declare void @list_objects_filter_init(ptr noundef) local_unnamed_addr #5

declare void @oidset_init(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @handle_revision_arg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.object_context, align 8     ; 7 uses
  %5 = alloca %struct.object_context, align 8     ; 7 uses
  %6 = alloca %struct.object_context, align 8     ; 7 uses
  %7 = alloca %struct.object_id, align 4          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.b = and i32 %3, 1
  %i.c = and i32 %2, -1025
  %i.d = shl i32 %2, 9
  %masksel.i = and i32 %i.d, 1024
  %i.e = or disjoint i32 %masksel.i, %i.c         ; 7 uses
  %.not.i = icmp eq i32 %i.b, 0                   ; 2 uses
  br i1 %.not.i, label %sub_0.i, label %.tail.thread.i

sub_0.i:                                          ; preds = %bb.a
  %i.f = load i8, ptr %0, align 1
  %.not123.i = icmp eq i8 %i.f, 46
  br i1 %.not123.i, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %.not124.i = icmp eq i8 %i.h, 46
  br i1 %.not124.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %handle_revision_arg_1.exit, label %.tail.thread.i

.tail.thread.i:                                   ; preds = %.tail.i, %sub_1.i, %sub_0.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.l = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.49) #25 ; 4 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %handle_dotdot.exit.thread.i, label %bb.b

handle_dotdot.exit.thread.i:                      ; preds = %.tail.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.c

bb.b:                                             ; preds = %.tail.thread.i
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %0 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = tail call ptr @xmemdupz(ptr noundef nonnull %0, i64 noundef %i.o) #24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !133
  %i.s = icmp eq i8 %i.r, 46
  br i1 %i.s, label %.split.i.i, label %.split19.i.i

.split19.i.i:                                     ; preds = %bb.b
  %i.t = call fastcc i32 @handle_dotdot_1(ptr noundef %i.p, ptr noundef %i.q, ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i32 noundef %i.e, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %handle_dotdot.exit.i

.split.i.i:                                       ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.v = call fastcc i32 @handle_dotdot_1(ptr noundef %i.p, ptr noundef %i.u, ptr noundef nonnull %0, i32 noundef 1, ptr noundef %1, i32 noundef %i.e, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %handle_dotdot.exit.i

handle_dotdot.exit.i:                             ; preds = %.split.i.i, %.split19.i.i
  %phi.call.i.i = phi i32 [ %i.v, %.split.i.i ], [ %i.t, %.split19.i.i ]
  call void @free(ptr noundef %i.p) #24
  call void @object_context_release(ptr noundef nonnull %4) #24
  call void @object_context_release(ptr noundef nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
end_hunk_0
