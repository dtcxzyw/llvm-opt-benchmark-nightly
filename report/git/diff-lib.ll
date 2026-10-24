Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/diff-lib?download=true
inline.NumInlined: 37
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@do_diff_cache:bb.a
bb.c:                                             ; preds = %bb.a
  call void @release_revisions(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 0
}

declare void @repo_init_revisions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_pathspec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @diff_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @release_revisions(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @index_differs_from(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.rev_info, align 8           ; 20 uses
  %5 = alloca %struct.setup_revision_opt, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @repo_init_revisions(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null) #15
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr %1, ptr %5, align 8, !tbaa !183
  %i.b = call i32 @setup_revisions(i32 noundef 0, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %5) #15 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 1660
  store i32 1, ptr %i.c, align 4, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1672
  store i32 1, ptr %i.d, align 8, !tbaa !185
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %vector.body

vector.body:                                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 1616 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !124
  %wide.load8 = load <16 x i8>, ptr %i.f, align 1, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 1632 ; 2 uses
  %wide.load9 = load <16 x i8>, ptr %i.e, align 8, !tbaa !124
  %wide.load10 = load <16 x i8>, ptr %i.g, align 8, !tbaa !124
  %i.h = or <16 x i8> %wide.load9, %wide.load
  %i.i = or <16 x i8> %wide.load10, %wide.load8
  store <16 x i8> %i.h, ptr %i.e, align 8, !tbaa !124
  store <16 x i8> %i.i, ptr %i.g, align 8, !tbaa !124
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.j, align 1, !tbaa !124
  %wide.load8.1 = load <16 x i8>, ptr %i.k, align 1, !tbaa !124
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 1648 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 1664 ; 2 uses
  %wide.load9.1 = load <16 x i8>, ptr %i.l, align 8, !tbaa !124
  %wide.load10.1 = load <16 x i8>, ptr %i.m, align 8, !tbaa !124
  %i.n = or <16 x i8> %wide.load9.1, %wide.load.1
  %i.o = or <16 x i8> %wide.load10.1, %wide.load8.1
  store <16 x i8> %i.n, ptr %i.l, align 8, !tbaa !124
  store <16 x i8> %i.o, ptr %i.m, align 8, !tbaa !124
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.p, align 1, !tbaa !124
  %wide.load8.2 = load <16 x i8>, ptr %i.q, align 1, !tbaa !124
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 1680 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 1696 ; 2 uses
  %wide.load9.2 = load <16 x i8>, ptr %i.r, align 8, !tbaa !124
  %wide.load10.2 = load <16 x i8>, ptr %i.s, align 8, !tbaa !124
  %i.t = or <16 x i8> %wide.load9.2, %wide.load.2
  %i.u = or <16 x i8> %wide.load10.2, %wide.load8.2
  store <16 x i8> %i.t, ptr %i.r, align 8, !tbaa !124
  store <16 x i8> %i.u, ptr %i.s, align 8, !tbaa !124
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.v, align 1, !tbaa !124
  %wide.load8.3 = load <16 x i8>, ptr %i.w, align 1, !tbaa !124
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 1712 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 1728 ; 2 uses
  %wide.load9.3 = load <16 x i8>, ptr %i.x, align 8, !tbaa !124
  %wide.load10.3 = load <16 x i8>, ptr %i.y, align 8, !tbaa !124
  %i.z = or <16 x i8> %wide.load9.3, %wide.load.3
  %i.aa = or <16 x i8> %wide.load10.3, %wide.load8.3
  store <16 x i8> %i.z, ptr %i.x, align 8, !tbaa !124
  store <16 x i8> %i.aa, ptr %i.y, align 8, !tbaa !124
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 128
  %wide.load12 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !124
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 1744 ; 2 uses
  %wide.load13 = load <16 x i8>, ptr %i.ac, align 8, !tbaa !124
  %i.ad = or <16 x i8> %wide.load13, %wide.load12
  store <16 x i8> %i.ad, ptr %i.ac, align 8, !tbaa !124
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !186
  %.not7 = icmp eq i32 %i.af, 0
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !187
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 1688
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !188
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 1840
  store i32 %3, ptr %i.aj, align 8, !tbaa !114
  call void @run_diff_index(ptr noundef nonnull %4, i32 noundef 1)
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 1656
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !189
  call void @release_revisions(ptr noundef nonnull %4) #15
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %i.an
}

declare i32 @setup_revisions(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @show_interdiff(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.diff_options, align 8       ; 10 uses
  %5 = alloca %struct.strbuf, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.show_interdiff.prefix, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %4, ptr noundef nonnull align 8 dereferenceable(608) %3, i64 608, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 280
  store i32 16, ptr %i.a, align 8, !tbaa !190
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 536
  store ptr @idiff_prefix_cb, ptr %i.b, align 8, !tbaa !191
  %i.c = sext i32 %2 to i64
  call void @strbuf_addchars(ptr noundef nonnull %5, i32 noundef 32, i64 noundef %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !192
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 544
  store ptr %i.e, ptr %i.f, align 8, !tbaa !193
  call void @diff_setup_done(ptr noundef nonnull %4) #15
  call void @diff_tree_oid(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %4) #15
  call void @diffcore_std(ptr noundef nonnull %4) #15
  call void @diff_flush(ptr noundef nonnull %4) #15
  call void @strbuf_release(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef ptr @idiff_prefix_cb(ptr nofree readnone captures(none) %0, ptr nofree noundef readnone returned captures(ret: address, provenance) %1) #10 {
bb.a:
  ret ptr %1
}

declare void @strbuf_addchars(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @diff_setup_done(ptr noundef) local_unnamed_addr #2

declare void @diff_tree_oid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @strbuf_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare i32 @match_pathspec(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @lstat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare i32 @fake_lstat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

declare i32 @has_symlink_leading_path(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @repo_resolve_gitlink_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ie_match_stat(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @set_diffopt_flags_from_submodule_config(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @is_submodule_modified(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fsm_settings__get_mode(ptr noundef) local_unnamed_addr #2

declare void @trace_printf_key_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @repo_parse_tree_indirect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @oneway_diff(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !98     ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98   ; 15 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !136  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !194
  %i.n = icmp eq ptr %i.i, %i.m
  %spec.store.select = select i1 %i.n, ptr null, ptr %i.i ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 2096
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 432
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !85
  %.not = icmp ne ptr %i.g, null                  ; 6 uses
  %i.s = select i1 %.not, ptr %i.g, ptr %spec.store.select ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 296
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !99
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !99
  %i.y = and i32 %i.x, 61440                      ; 2 uses
  %i.z = icmp eq i32 %i.y, 16384
  %i.aa = icmp eq i32 %i.y, 57344
  %narrow.i = or i1 %i.z, %i.aa
  %i.ab = zext i1 %narrow.i to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 108
  %i.ad = tail call i32 @match_pathspec(ptr noundef %i.r, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ac, i32 noundef %i.v, i32 noundef 0, ptr noundef null, i32 noundef %i.ab) #15
  %.not15 = icmp eq i32 %i.ad, 0
  br i1 %.not15, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 1520
  %i.af = getelementptr i8, ptr %1, i64 16
  %.val = load i32, ptr %i.af, align 8, !tbaa !135
  %.val17 = load ptr, ptr %i.j, align 8, !tbaa !136 ; 12 uses
  %.not.i = icmp eq i32 %.val, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.val17, i64 1840
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !114
  %i.ai = icmp ne i32 %i.ah, 0
  %or.cond.i = and i1 %.not, %i.ai
  br i1 %or.cond.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !99
  %i.al = and i32 %i.ak, 536870912
  %.not44.i = icmp eq i32 %i.al, 0
  br i1 %.not44.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not45.i = icmp eq ptr %spec.store.select, null
  br i1 %.not45.i, label %do_oneway_diff.exit, label %.thread12.i

bb.f:                                             ; preds = %bb.b
  br i1 %.not, label %bb.g, label %.thread7.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.an = load i32, ptr %i.am, align 8, !tbaa !99 ; 2 uses
  %i.ao = and i32 %i.an, 32768
  %.not48.i = icmp eq i32 %i.ao, 0
  br i1 %.not48.i, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.ap = and i32 %i.an, 1073741824
  %i.aq = icmp ne i32 %i.ap, 0
  br label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.g, %bb.d, %bb.c
  %i.ar = phi i1 [ true, %bb.g ], [ %i.aq, %bb.h ], [ true, %bb.c ], [ true, %bb.d ] ; 3 uses
  %i.as = zext i1 %i.ar to i32                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val17, i64 332 ; 2 uses
  %i.au = load i64, ptr %i.at, align 4
  %i.av = lshr i64 %i.au, 48
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = and i32 %i.aw, 1                        ; 3 uses
  %or.cond3.i = and i1 %.not, %i.ar
  br i1 %or.cond3.i, label %bb.i, label %2

bb.i:                                             ; preds = %.thread.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !99
  %i.ba = and i32 %i.az, 12288
  %.not49.i = icmp eq i32 %i.ba, 0
  br i1 %.not49.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.val17, i64 1520
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.bd = tail call ptr @diff_unmerge(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc) #15
  %.not51.i = icmp eq ptr %spec.store.select, null
  br i1 %.not51.i, label %do_oneway_diff.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !195
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !99
  %i.bi = trunc i32 %i.bh to i16
  tail call void @fill_filespec(ptr noundef %i.be, ptr noundef nonnull %i.bf, i32 noundef 1, i16 noundef zeroext %i.bi) #15
  br label %do_oneway_diff.exit

2:                                                ; preds = %.thread.i
  %.not50.i = icmp eq ptr %spec.store.select, null
  br i1 %.not50.i, label %bb.m, label %bb.q

bb.l:                                             ; preds = %bb.i
  %.not50.i.a = icmp eq ptr %spec.store.select, null
  br i1 %.not50.i.a, label %.thread33.i, label %bb.t

.thread33.i:                                      ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store i32 0, ptr %i.f, align 4, !tbaa !99
  br label %bb.n

.thread7.i:                                       ; preds = %bb.f
  %.not509.i = icmp eq ptr %spec.store.select, null
  br i1 %.not509.i, label %.thread20.i, label %.thread12.i

.thread20.i:                                      ; preds = %.thread7.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.val17, i64 332
  %i.bk = load i64, ptr %i.bj, align 4
  %i.bl = lshr i64 %i.bk, 48
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store i32 0, ptr %i.f, align 4, !tbaa !99
  br label %.split.i.i

bb.m:                                             ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store i32 0, ptr %i.f, align 4, !tbaa !99
  br i1 %.not, label %bb.n, label %.split.i.i

bb.n:                                             ; preds = %bb.m, %.thread33.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !99
  %i.bq = icmp eq i32 %i.bp, 16384
  br i1 %i.bq, label %bb.o, label %.split.i.i

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.bt = getelementptr inbounds nuw i8, ptr %.val17, i64 1520
  tail call void @diff_tree_oid(ptr noundef null, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt) #15
  br label %show_new_file.exit.i

.split.i.i:                                       ; preds = %bb.n, %bb.m, %.thread20.i
  %i.bu = phi i32 [ %i.ax, %bb.m ], [ %i.ax, %bb.n ], [ %i.bn, %.thread20.i ]
  %i.bv = phi i32 [ %i.as, %bb.m ], [ %i.as, %bb.n ], [ 0, %.thread20.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.val17, i64 1520 ; 2 uses
  %i.bx = call fastcc i32 @get_stat_data(ptr noundef %i.g, ptr noundef %i.d, ptr noundef %i.e, i32 noundef range(i32 0, 2) %i.bv, i32 noundef range(i32 0, 2) %i.bu, ptr noundef %i.f, ptr noundef nonnull %i.bw)
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %show_new_file.exit.i, label %bb.p

bb.p:                                             ; preds = %.split.i.i
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !137 ; 3 uses
  %i.ca = load i128, ptr %i.bz, align 1
  %i.cb = getelementptr i8, ptr %i.bz, i64 16
  %i.cc = load i128, ptr %i.cb, align 1
  %i.cd = or i128 %i.ca, %i.cc
  %i.ce = icmp ne i128 %i.cd, 0                   ; 2 uses
  %i.cf = zext i1 %i.ce to i32                    ; 0 uses
  %i.cg = zext i1 %i.ce to i32
  %i.ch = load i32, ptr %i.e, align 4, !tbaa !99
  %i.ci = load i32, ptr %i.f, align 4, !tbaa !99
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  tail call void @diff_addremove(ptr noundef nonnull %i.bw, i32 noundef 43, i32 noundef %i.ch, ptr noundef nonnull %i.bz, i32 noundef range(i32 0, 2) %i.cg, ptr noundef nonnull %i.cj, i32 noundef %i.ci) #15
  br label %show_new_file.exit.i

show_new_file.exit.i:                             ; preds = %bb.p, %.split.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %do_oneway_diff.exit

bb.q:                                             ; preds = %2
  br i1 %.not, label %bb.t, label %.thread12.i

.thread12.i:                                      ; preds = %bb.q, %.thread7.i, %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !99 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 16384
  %i.cn = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 72 ; 2 uses
  br i1 %i.cm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread12.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  %i.cp = getelementptr inbounds nuw i8, ptr %.val17, i64 1520
  tail call void @diff_tree_oid(ptr noundef nonnull %i.cn, ptr noundef null, ptr noundef nonnull %i.co, ptr noundef nonnull %i.cp) #15
  br label %do_oneway_diff.exit

bb.s:                                             ; preds = %.thread12.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.val17, i64 1520
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  tail call void @diff_addremove(ptr noundef nonnull %i.cq, i32 noundef 45, i32 noundef %i.cl, ptr noundef nonnull %i.cn, i32 noundef 1, ptr noundef nonnull %i.cr, i32 noundef 0) #15
  br label %do_oneway_diff.exit

bb.t:                                             ; preds = %bb.q, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !99
  %i.cs = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 52 ; 4 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !99
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !99
  %i.cw = icmp eq i32 %i.cv, 16384                ; 2 uses
  %i.cx = icmp ne i32 %i.ct, 16384
  %i.cy = xor i1 %i.cx, %i.cw
  br i1 %i.cy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, i32 noundef 386, ptr noundef nonnull @__PRETTY_FUNCTION__.show_modified) #16
  unreachable

bb.v:                                             ; preds = %bb.t
  br i1 %i.cw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.dc = getelementptr inbounds nuw i8, ptr %.val17, i64 1520
  tail call void @diff_tree_oid(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.da, ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc) #15
  br label %show_modified.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %.val17, i64 1520 ; 4 uses
  %i.de = call fastcc i32 @get_stat_data(ptr noundef nonnull %i.g, ptr noundef %i.b, ptr noundef %i.a, i32 noundef range(i32 0, 2) %i.as, i32 noundef range(i32 0, 2) %i.ax, ptr noundef %i.c, ptr noundef nonnull %i.dd)
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.dh = load i32, ptr %i.cs, align 4, !tbaa !99
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  tail call void @diff_addremove(ptr noundef nonnull %i.dd, i32 noundef 45, i32 noundef %i.dh, ptr noundef nonnull %i.dg, i32 noundef 1, ptr noundef nonnull %i.di, i32 noundef 0) #15
  br label %show_modified.exit.i

bb.z:                                             ; preds = %bb.x
  %i.dj = load i64, ptr %i.at, align 4
  %i.dk = and i64 %i.dj, 72057594037927936
  %i.dl = icmp eq i64 %i.dk, 0
  %or.cond.i.i = or i1 %i.ar, %i.dl
  %.pre.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !137 ; 8 uses
  br i1 %or.cond.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 72 ; 5 uses
  %i.dn = load i128, ptr %.pre.pre.i.i, align 1
  %i.do = load i128, ptr %i.dm, align 1
  %i.dp = xor i128 %i.dn, %i.do
  %i.dq = getelementptr i8, ptr %.pre.pre.i.i, i64 16
  %i.dr = getelementptr i8, ptr %i.dm, i64 16
  %i.ds = load i128, ptr %i.dq, align 1
  %i.dt = load i128, ptr %i.dr, align 1
  %i.du = xor i128 %i.ds, %i.dt
  %i.dv = or i128 %i.dp, %i.du
  %i.dw = icmp ne i128 %i.dv, 0
  %i.dx = zext i1 %i.dw to i32
  %.not.i.not.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i.not.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.dz = load i128, ptr %i.dm, align 1
  %i.ea = load i128, ptr %i.dy, align 1
  %i.eb = xor i128 %i.dz, %i.ea
  %i.ec = getelementptr i8, ptr %i.dm, i64 16
  %i.ed = getelementptr i8, ptr %i.dy, i64 16
  %i.ee = load i128, ptr %i.ec, align 1
  %i.ef = load i128, ptr %i.ed, align 1
  %i.eg = xor i128 %i.ee, %i.ef
  %i.eh = or i128 %i.eb, %i.eg
  %i.ei = icmp ne i128 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  %.not.i54.not.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i54.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.em = load i32, ptr %i.el, align 8, !tbaa !99
  %i.en = zext i32 %i.em to i64
  %i.eo = load i32, ptr %i.a, align 4, !tbaa !99
  %i.ep = load ptr, ptr @the_repository, align 8, !tbaa !103
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 448
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !104
  %i.es = tail call ptr @null_oid(ptr noundef %i.er) #15
  %i.et = tail call ptr @combine_diff_path_new(ptr noundef nonnull %i.ek, i64 noundef %i.en, i32 noundef %i.eo, ptr noundef %i.es, i64 noundef 2) #15 ; 10 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  store i8 77, ptr %i.eu, align 8, !tbaa !108
  %i.ev = load i32, ptr %i.cu, align 4, !tbaa !99
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 60
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !107
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ey, i64 32, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !105
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  store i32 %i.fa, ptr %i.fb, align 8, !tbaa !105
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 112
  store i8 77, ptr %i.fc, align 8, !tbaa !108
  %i.fd = load i32, ptr %i.cs, align 4, !tbaa !99
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 116
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !107
  %i.ff = getelementptr inbounds nuw i8, ptr %i.et, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.dm, i64 32, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !105
  %i.fi = getelementptr inbounds nuw i8, ptr %i.et, i64 152
  store i32 %i.fh, ptr %i.fi, align 8, !tbaa !105
  tail call void @show_combined_diff(ptr noundef %i.et, i32 noundef 2, ptr noundef nonnull %.val17) #15
  tail call void @free(ptr noundef %i.et) #15
  br label %show_modified.exit.i

bb.ad:                                            ; preds = %bb.ab, %bb.z
  %i.fj = load i32, ptr %i.cs, align 4, !tbaa !99 ; 3 uses
  %i.fk = load i32, ptr %i.a, align 4, !tbaa !99  ; 2 uses
  %.not50.i.i = icmp eq i32 %i.fk, %i.fj
  %.pre59.i.i = load i32, ptr %i.c, align 4       ; 2 uses
  br i1 %.not50.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fl = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.fm = load i128, ptr %.pre.pre.i.i, align 1
  %i.fn = load i128, ptr %i.fl, align 1
  %i.fo = xor i128 %i.fm, %i.fn
  %i.fp = getelementptr i8, ptr %.pre.pre.i.i, i64 16
  %i.fq = getelementptr i8, ptr %i.fl, i64 16
  %i.fr = load i128, ptr %i.fp, align 1
  %i.fs = load i128, ptr %i.fq, align 1
  %i.ft = xor i128 %i.fr, %i.fs
  %i.fu = or i128 %i.fo, %i.ft
  %i.fv = icmp ne i128 %i.fu, 0                   ; 2 uses
  %i.fw = zext i1 %i.fv to i32                    ; 0 uses
  %i.fx = icmp ne i32 %.pre59.i.i, 0
  %or.cond3.i.i = select i1 %i.fv, i1 true, i1 %i.fx
  br i1 %or.cond3.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fy = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.fz = load i128, ptr %.pre.pre.i.i, align 1
  %i.ga = getelementptr i8, ptr %.pre.pre.i.i, i64 16
  %i.gb = load i128, ptr %i.ga, align 1
  %i.gc = or i128 %i.fz, %i.gb
  %i.gd = icmp ne i128 %i.gc, 0                   ; 2 uses
  %i.ge = zext i1 %i.gd to i32                    ; 0 uses
  %i.gf = zext i1 %i.gd to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  tail call void @diff_change(ptr noundef nonnull %i.dd, i32 noundef %i.fj, i32 noundef %i.fk, ptr noundef nonnull %i.fy, ptr noundef nonnull %.pre.pre.i.i, i32 noundef 1, i32 noundef %i.gf, ptr noundef nonnull %i.gg, i32 noundef 0, i32 noundef %.pre59.i.i) #15
  br label %show_modified.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.gh = getelementptr inbounds nuw i8, ptr %.val17, i64 1644
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !113
  %.not51.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not51.i.i, label %show_modified.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gj = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  tail call void @diff_same(ptr noundef nonnull %i.dd, i32 noundef %i.fj, ptr noundef nonnull %.pre.pre.i.i, ptr noundef nonnull %i.gj) #15
  br label %show_modified.exit.i

show_modified.exit.i:                             ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ac, %bb.y, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %do_oneway_diff.exit

do_oneway_diff.exit:                              ; preds = %bb.e, %bb.j, %bb.k, %show_new_file.exit.i, %bb.r, %bb.s, %show_modified.exit.i
  %i.gk = tail call i32 @diff_can_quit_early(ptr noundef nonnull %i.ae) #15
  %.not16 = icmp eq i32 %i.gk, 0
  br i1 %.not16, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %do_oneway_diff.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 1, ptr %i.gl, align 4, !tbaa !196
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %do_oneway_diff.exit, %bb.ai
  %.0 = phi i32 [ -1, %bb.ai ], [ 0, %do_oneway_diff.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @init_tree_desc(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @unpack_trees(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @fill_filespec(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @get_stat_data(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.stat, align 8               ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
end_hunk_0
