Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/diff-lib?download=true
inline.NumInlined: 37
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@run_diff_files:bb.a
  %i.ij = load ptr, ptr @the_repository, align 8, !tbaa !103
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 448
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !104
  %i.im = call ptr @null_oid(ptr noundef %i.il) #15
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.in = phi ptr [ %i.im, %bb.bl ], [ %i.ii, %bb.bk ] ; 3 uses
  %i.io = load i128, ptr %i.ii, align 1
  %i.ip = getelementptr i8, ptr %i.ii, i64 16
  %i.iq = load i128, ptr %i.ip, align 1
  %i.ir = or i128 %i.io, %i.iq
  %i.is = icmp ne i128 %i.ir, 0                   ; 2 uses
  %i.it = zext i1 %i.is to i32                    ; 0 uses
  %i.iu = zext i1 %i.is to i32
  %i.iv = load i128, ptr %i.in, align 1
  %i.iw = getelementptr i8, ptr %i.in, i64 16
  %i.ix = load i128, ptr %i.iw, align 1
  %i.iy = or i128 %i.iv, %i.ix
  %i.iz = icmp ne i128 %i.iy, 0                   ; 2 uses
  %i.ja = zext i1 %i.iz to i32                    ; 0 uses
  %i.jb = zext i1 %i.iz to i32
  %i.jc = getelementptr inbounds nuw i8, ptr %.5, i64 108
  call void @diff_change(ptr noundef nonnull %i.e, i32 noundef %i.ih, i32 noundef %.0138.ph, ptr noundef nonnull %i.ii, ptr noundef nonnull %i.in, i32 noundef %i.iu, i32 noundef %i.jb, ptr noundef nonnull %i.jc, i32 noundef 0, i32 noundef %.3232) #15
  br label %bb.bn

bb.bn:                                            ; preds = %bb.e, %bb.g, %bb.bm, %bb.ac, %ce_mode_from_stat.exit220, %bb.aa, %bb.ad, %bb.bj, %mark_fsmonitor_valid.exit, %.thread237
  %.6.ph = phi i32 [ %.4144.ph, %.thread237 ], [ %.5145, %mark_fsmonitor_valid.exit ], [ %.5145, %bb.bj ], [ %.5145, %bb.ad ], [ %i.dy, %bb.aa ], [ %.5145, %ce_mode_from_stat.exit220 ], [ %.5145, %bb.ac ], [ %.5145, %bb.bm ], [ %.0140270, %bb.g ], [ %.0140270, %bb.e ]
  %i.jd = add nsw i32 %.6.ph, 1                   ; 2 uses
  %i.je = icmp slt i32 %i.jd, %i.o
  br i1 %i.je, label %bb.d, label %._crit_edge, !llvm.loop !138

._crit_edge:                                      ; preds = %bb.bn, %bb.d, %bb.c
  call void @diffcore_std(ptr noundef nonnull %i.e) #15
  call void @diff_flush(ptr noundef nonnull %i.e) #15
  %trace_perf_key.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @trace_perf_key, i64 8), align 8, !tbaa !122
  %trace_perf_key.val175 = load i8, ptr getelementptr inbounds nuw (i8, ptr @trace_perf_key, i64 12), align 4
  %.not.i227 = icmp eq i32 %trace_perf_key.val, 0
  %.not172260 = trunc i8 %trace_perf_key.val175 to i1
  %.not172 = select i1 %.not.i227, i1 %.not172260, i1 false
  br i1 %.not172, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge
  %i.jf = call i64 @getnanotime() #15
  %i.jg = sub i64 %i.jf, %i.d
  call void (ptr, i32, i64, ptr, ...) @trace_performance_fl(ptr noundef nonnull @.str.3, i32 noundef 296, i64 noundef %i.jg, ptr noundef nonnull @.str.4) #15
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @getnanotime() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !124
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !99
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.14, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

declare void @diff_set_mnemonic_prefix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @refresh_fsmonitor(ptr noundef) local_unnamed_addr #2

declare i32 @diff_can_quit_early(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @check_removed(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.object_id, align 4          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %i.c = and i32 %i.b, 2097152
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.e = tail call i32 @lstat64(ptr noundef nonnull %i.d, ptr noundef nonnull %1) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @fake_lstat(ptr noundef nonnull %0, ptr noundef nonnull %1) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.012 = phi i32 [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  %i.g = icmp slt i32 %.012, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__errno_location() #19
  %i.i = load i32, ptr %i.h, align 4, !tbaa !99   ; 2 uses
  %i.j = icmp ne i32 %i.i, 2
  %i.k = icmp ne i32 %i.i, 20
  %.not19 = and i1 %i.j, %i.k
  %. = select i1 %.not19, i32 -1, i32 1
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !99
  %i.o = tail call i32 @has_symlink_leading_path(ptr noundef nonnull %i.l, i32 noundef %i.n) #15
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !102
  %i.r = and i32 %i.q, 61440
  %i.s = icmp eq i32 %i.r, 16384
  br i1 %i.s, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !99
  %i.v = and i32 %i.u, 61440
  %i.w = icmp eq i32 %i.v, 57344
  br i1 %i.w, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr @the_repository, align 8, !tbaa !103
  %i.y = call i32 @repo_resolve_gitlink_ref(ptr noundef %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull @.str.7, ptr noundef nonnull %2) #15
  %.not15 = icmp eq i32 %i.y, 0
  br i1 %.not15, label %.critedge, label %bb.j

.critedge:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %.critedge, %bb.j, %bb.f, %bb.e
  %.1 = phi i32 [ 1, %bb.j ], [ %., %bb.e ], [ 1, %bb.f ], [ 0, %.critedge ], [ 0, %bb.g ]
  ret i32 %.1
}

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare ptr @combine_diff_path_new(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @null_oid(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @show_combined_diff(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare ptr @diff_unmerge(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @diff_same(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @diff_addremove(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @diff_change(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @diffcore_std(ptr noundef) local_unnamed_addr #2

declare void @diff_flush(ptr noundef) local_unnamed_addr #2

declare void @trace_performance_fl(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @diff_get_merge_base(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.object_id, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !125  ; 4 uses
  %.not31 = icmp eq i32 %i.c, 0
  br i1 %.not31, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !126
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !151

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129
  %i.h = load i64, ptr %i.g, align 4
  %i.i = and i64 %i.h, 2305843004918726656
  %.not21 = icmp eq i64 %i.i, 0
  br i1 %.not21, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc ptr @_(ptr noundef nonnull @.str.5)
  tail call void (ptr, ...) @die(ptr noundef %i.j) #16
  unreachable

._crit_edge:                                      ; preds = %bb.b
  %i.k = add nsw i32 %i.c, -3
  %or.cond = icmp ult i32 %i.k, -2
  br i1 %or.cond, label %._crit_edge.thread, label %.lr.ph28

.lr.ph28:                                         ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %3 = load ptr, ptr @the_repository, align 8, !tbaa !103
  %4 = load ptr, ptr %i.l, align 8, !tbaa !126
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %7 = tail call ptr @lookup_commit_reference(ptr noundef %3, ptr noundef nonnull %6) #15 ; 2 uses
  %8 = load i32, ptr %i.b, align 8, !tbaa !125    ; 2 uses
  %9 = icmp ugt i32 %8, 1
  br i1 %9, label %.cont.peel.next, label %._crit_edge29._crit_edge

.cont.peel.next:                                  ; preds = %.lr.ph28
  %10 = load ptr, ptr @the_repository, align 8, !tbaa !103
  %11 = load ptr, ptr %i.l, align 8, !tbaa !126
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !129
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = tail call ptr @lookup_commit_reference(ptr noundef %10, ptr noundef nonnull %14) #15 ; 2 uses
  %16 = load i32, ptr %i.b, align 8, !tbaa !125   ; 2 uses
  %17 = icmp ugt i32 %16, 2
  br i1 %17, label %bb.e, label %._crit_edge29._crit_edge

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.3, i32 noundef 596, ptr noundef nonnull @.str.6, i32 noundef %i.c) #16
  unreachable

bb.e:                                             ; preds = %.cont.peel.next, %bb.e
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %bb.e ], [ 2, %.cont.peel.next ] ; 2 uses
  %i.m = load ptr, ptr @the_repository, align 8, !tbaa !103
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv35
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = tail call ptr @lookup_commit_reference(ptr noundef %i.m, ptr noundef nonnull %i.q) #15
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.s = load i32, ptr %i.b, align 8, !tbaa !125  ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next36, %i.t
  br i1 %i.u, label %bb.e, label %._crit_edge29._crit_edge, !llvm.loop !152

._crit_edge29._crit_edge:                         ; preds = %bb.e, %.lr.ph28, %.cont.peel.next
  %.sroa.0.0..lcssa = phi ptr [ %7, %.cont.peel.next ], [ %7, %.lr.ph28 ], [ %i.r, %bb.e ]
  %..sroa.5.0.lcssa = phi ptr [ %15, %.cont.peel.next ], [ null, %.lr.ph28 ], [ %15, %bb.e ]
  %.lcssa36 = phi i32 [ %16, %.cont.peel.next ], [ %8, %.lr.ph28 ], [ %i.s, %bb.e ]
  %18 = icmp eq i32 %.lcssa36, 1
  br i1 %18, label %bb.f, label %bb.i

bb.f:                                             ; preds = %._crit_edge29._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.v = load ptr, ptr @the_repository, align 8, !tbaa !103
  %i.w = call i32 @repo_get_oid(ptr noundef %i.v, ptr noundef nonnull @.str.7, ptr noundef nonnull %2) #15
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = call fastcc ptr @_(ptr noundef nonnull @.str.8)
  call void (ptr, ...) @die(ptr noundef %i.x) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = load ptr, ptr @the_repository, align 8, !tbaa !103
  %i.z = call ptr @lookup_commit_reference(ptr noundef %i.y, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge29._crit_edge
  %i.aa = phi ptr [ %i.z, %bb.h ], [ %..sroa.5.0.lcssa, %._crit_edge29._crit_edge ]
  %i.ab = load ptr, ptr @the_repository, align 8, !tbaa !103
  %i.ac = call i32 @repo_get_merge_bases(ptr noundef %i.ab, ptr noundef %.sroa.0.0..lcssa, ptr noundef %i.aa, ptr noundef nonnull %i.a) #15
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = call i32 @common_exit(ptr noundef nonnull @.str.3, i32 noundef 610, i32 noundef 128) #15
  call void @exit(i32 noundef %i.ae) #16
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !153 ; 4 uses
  %.not19 = icmp eq ptr %i.af, null
  br i1 %.not19, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = call fastcc ptr @_(ptr noundef nonnull @.str.9)
  call void (ptr, ...) @die(ptr noundef %i.ag) #16
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !157
  %.not20 = icmp eq ptr %i.ai, null
  br i1 %.not20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = call fastcc ptr @_(ptr noundef nonnull @.str.10)
  call void (ptr, ...) @die(ptr noundef %i.aj) #16
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !158 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.al, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.an = load i32, ptr %i.am, align 4, !tbaa !105
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !105
  call void @commit_list_free(ptr noundef nonnull %i.af) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @lookup_commit_reference(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @repo_get_oid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @repo_get_merge_bases(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

declare i32 @common_exit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @commit_list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @run_diff_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.object_id, align 4          ; 7 uses
  %i.a = alloca [65 x i8], align 16               ; 3 uses
  %i.b = trunc i32 %1 to i1
  %i.c = and i32 %1, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !125
  %.not16 = icmp eq i32 %i.f, 1
  br i1 %.not16, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.3, i32 noundef 632, ptr noundef nonnull @.str.11) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !85
  %i.k = and i32 %1, 2
  %.not = icmp eq i32 %i.k, 0
  %i.l = tail call i64 @trace_performance_enter() #15 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126  ; 2 uses
  tail call void @refresh_fsmonitor(ptr noundef %i.j) #15
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @diff_get_merge_base(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.o = call ptr @oid_to_hex_r(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !129  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.s = load i32, ptr %i.r, align 4, !tbaa !105
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.s, ptr %i.t, align 4, !tbaa !105
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !159
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.o, %bb.d ], [ %i.v, %bb.e ]
  %i.w = call fastcc i32 @diff_cache(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %.0, i32 noundef %i.c)
  %.not17 = icmp eq i32 %i.w, 0
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = call i32 @common_exit(ptr noundef nonnull @.str.3, i32 noundef 648, i32 noundef 128) #15
  call void @exit(i32 noundef %i.x) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = select i1 %i.b, ptr @.str.1, ptr @.str.2
  call void @diff_set_mnemonic_prefix(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.y) #15
  call void @diffcore_fix_diff_index() #15
  call void @diffcore_std(ptr noundef nonnull %i.d) #15
  call void @diff_flush(ptr noundef nonnull %i.d) #15
  %trace_perf_key.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @trace_perf_key, i64 8), align 8, !tbaa !122
  %trace_perf_key.val19 = load i8, ptr getelementptr inbounds nuw (i8, ptr @trace_perf_key, i64 12), align 4
  %.not.i = icmp eq i32 %trace_perf_key.val, 0
  %.not1820 = trunc i8 %trace_perf_key.val19 to i1
  %.not18 = select i1 %.not.i, i1 %.not1820, i1 false
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = call i64 @getnanotime() #15
  call void (ptr, i32, i64, ptr, ...) @trace_performance_leave_fl(ptr noundef nonnull @.str.3, i32 noundef 654, i64 noundef %i.z, ptr noundef nonnull @.str.13) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

declare i64 @trace_performance_enter() local_unnamed_addr #2

declare ptr @oid_to_hex_r(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @diff_cache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tree_desc, align 8          ; 4 uses
  %5 = alloca %struct.unpack_trees_options, align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !103
  %i.b = tail call ptr @repo_parse_tree_indirect(ptr noundef %i.a, ptr noundef %1) #15 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not17 = icmp eq ptr %2, null
  br i1 %.not17, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @oid_to_hex(ptr noundef %1) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = phi ptr [ %i.c, %bb.c ], [ %2, %bb.b ]
  %i.e = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.17, ptr noundef %i.d) #15 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %5, i8 0, i64 1120, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i32 1, ptr %i.f, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %3, ptr %i.g, align 8, !tbaa !135
  %.not18 = icmp eq i32 %3, 0
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1644
  %i.i = load i32, ptr %i.h, align 4, !tbaa !113
  %.not19 = icmp eq i32 %i.i, 0
  %i.j = zext i1 %.not19 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = phi i32 [ 0, %bb.e ], [ %i.j, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %i.k, ptr %i.l, align 8, !tbaa !161
  store i32 1, ptr %5, align 8, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr @oneway_diff, ptr %i.m, align 8, !tbaa !163
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 120
  store ptr %0, ptr %i.n, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 432
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 136
  store ptr %i.r, ptr %i.s, align 8, !tbaa !164
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %i.t, ptr %i.u, align 8, !tbaa !165
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1988 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4
  %i.x = or i8 %i.w, 2
  store i8 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.z = load i32, ptr %i.y, align 8, !tbaa !86
  %.not20 = icmp eq i32 %i.z, 0
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call fastcc ptr @_(ptr noundef nonnull @.str.18)
  tail call void (ptr, ...) @die(ptr noundef %i.aa) #16
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !168
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !169
  call void @init_tree_desc(ptr noundef nonnull %4, ptr noundef nonnull %i.ab, ptr noundef %i.ad, i64 noundef %i.af) #15
  %i.ag = call i32 @unpack_trees(i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.0 = phi i32 [ %i.ag, %bb.i ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.0
}

end_hunk_0
begin_hunk_1_@get_stat_data:bb.a
  br label %bb.w

bb.u:                                             ; preds = %match_stat_with_submodule.exit, %ce_mode_from_stat.exit
  %.124 = phi ptr [ %i.a, %match_stat_with_submodule.exit ], [ %i.ax, %ce_mode_from_stat.exit ]
  %.1 = phi i32 [ %i.c, %match_stat_with_submodule.exit ], [ %.0.i34, %ce_mode_from_stat.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b, %bb.a
  %.225 = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ %.124, %bb.u ]
  %.2 = phi i32 [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ %.1, %bb.u ]
  store ptr %.225, ptr %1, align 8, !tbaa !137
  store i32 %.2, ptr %2, align 4, !tbaa !99
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v
  %.127 = phi i32 [ 0, %bb.v ], [ %.026.ph, %.thread ]
  ret i32 %.127
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { cold }
attributes #19 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS11commit_list", !12, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"p1 _ZTS16prio_queue_entry", !12, i64 0}
!16 = !{!"prio_queue", !12, i64 0, !14, i64 8, !12, i64 16, !14, i64 24, !14, i64 32, !15, i64 40}
!17 = !{!"p1 _ZTS18object_array_entry", !12, i64 0}
!18 = !{!"object_array", !9, i64 0, !9, i64 4, !17, i64 8}
!19 = !{!"p1 _ZTS10repository", !12, i64 0}
!20 = !{!"p1 _ZTS17rev_cmdline_entry", !12, i64 0}
!21 = !{!"rev_cmdline_info", !9, i64 0, !9, i64 4, !20, i64 8}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!"strbuf", !14, i64 0, !14, i64 8, !22, i64 16}
!24 = !{!"p1 _ZTS27list_objects_filter_options", !12, i64 0}
!25 = !{!"list_objects_filter_options", !23, i64 0, !9, i64 24, !9, i64 28, !9, i64 28, !22, i64 32, !14, i64 40, !14, i64 48, !9, i64 56, !14, i64 64, !14, i64 72, !24, i64 80}
!26 = !{!"p1 _ZTS16string_list_item", !12, i64 0}
!27 = !{!"string_list", !26, i64 0, !14, i64 8, !14, i64 16, !9, i64 24, !12, i64 32}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!"p2 omnipotent char", !28, i64 0}
!30 = !{!"strvec", !29, i64 0, !14, i64 8, !14, i64 16}
!31 = !{!"ref_exclusions", !27, i64 0, !30, i64 40, !8, i64 64}
!32 = !{!"p1 _ZTS13pathspec_item", !12, i64 0}
!33 = !{!"pathspec", !9, i64 0, !9, i64 4, !9, i64 4, !9, i64 4, !9, i64 8, !9, i64 12, !32, i64 16}
!34 = !{!"date_mode", !9, i64 0, !9, i64 4, !22, i64 8}
!35 = !{!"p1 _ZTS8log_info", !12, i64 0}
!36 = !{!"ident_split", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56}
!37 = !{!"p1 _ZTS11string_list", !12, i64 0}
!38 = !{!"p1 _ZTS8grep_pat", !12, i64 0}
!39 = !{!"p2 _ZTS8grep_pat", !28, i64 0}
!40 = !{!"p1 _ZTS9grep_expr", !12, i64 0}
!41 = !{!"grep_opt", !38, i64 0, !39, i64 8, !38, i64 16, !39, i64 24, !40, i64 32, !19, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !8, i64 152, !9, i64 828, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !12, i64 856, !12, i64 864, !12, i64 872}
!42 = !{!"p1 _ZTS9git_graph", !12, i64 0}
!43 = !{!"p2 _ZTS17re_pattern_buffer", !28, i64 0}
!44 = !{!"diff_flags", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140}
!45 = !{!"p1 _ZTS6oidset", !12, i64 0}
!46 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!47 = !{!"p1 _ZTS20emitted_diff_symbols", !12, i64 0}
!48 = !{!"p1 _ZTS6strmap", !12, i64 0}
!49 = !{!"diff_options", !22, i64 0, !22, i64 8, !9, i64 16, !9, i64 20, !22, i64 24, !9, i64 32, !43, i64 40, !14, i64 48, !14, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !44, i64 96, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !9, i64 300, !9, i64 304, !9, i64 308, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !22, i64 328, !9, i64 336, !22, i64 344, !9, i64 352, !9, i64 356, !29, i64 360, !14, i64 368, !14, i64 376, !9, i64 384, !9, i64 388, !9, i64 392, !9, i64 396, !22, i64 400, !9, i64 408, !9, i64 412, !45, i64 416, !9, i64 424, !9, i64 428, !9, i64 432, !12, i64 440, !46, i64 448, !9, i64 456, !8, i64 460, !33, i64 464, !12, i64 488, !12, i64 496, !12, i64 504, !12, i64 512, !12, i64 520, !12, i64 528, !12, i64 536, !12, i64 544, !9, i64 552, !47, i64 560, !9, i64 568, !9, i64 572, !19, i64 576, !48, i64 584, !9, i64 592, !9, i64 596, !9, i64 600}
!50 = !{!"p1 _ZTS16reflog_walk_info", !12, i64 0}
!51 = !{!"p1 _ZTS16decoration_entry", !12, i64 0}
!52 = !{!"decoration", !22, i64 0, !9, i64 8, !9, i64 12, !51, i64 16}
!53 = !{!"display_notes_opt", !9, i64 0, !27, i64 8}
!54 = !{!"p1 _ZTS9object_id", !12, i64 0}
!55 = !{!"p1 _ZTS13saved_parents", !12, i64 0}
!56 = !{!"p1 _ZTS16revision_sources", !12, i64 0}
!57 = !{!"p1 _ZTS14topo_walk_info", !12, i64 0}
!58 = !{!"p2 _ZTS12bloom_keyvec", !28, i64 0}
!59 = !{!"p1 _ZTS21bloom_filter_settings", !12, i64 0}
!60 = !{!"p1 _ZTS10tmp_objdir", !12, i64 0}
!61 = !{!"p1 int", !12, i64 0}
!62 = !{!"kh_oid_set", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !61, i64 16, !54, i64 24, !61, i64 32}
!63 = !{!"oidset", !62, i64 0}
!64 = !{!"rev_info", !13, i64 0, !16, i64 8, !18, i64 56, !19, i64 72, !18, i64 80, !21, i64 96, !25, i64 112, !31, i64 200, !22, i64 272, !22, i64 280, !22, i64 288, !33, i64 296, !9, i64 320, !9, i64 324, !9, i64 328, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 339, !9, i64 339, !9, i64 339, !9, i64 339, !9, i64 339, !9, i64 340, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 346, !9, i64 346, !9, i64 346, !9, i64 346, !9, i64 346, !34, i64 352, !9, i64 368, !9, i64 372, !9, i64 376, !9, i64 380, !35, i64 384, !9, i64 392, !9, i64 396, !22, i64 400, !22, i64 408, !9, i64 416, !22, i64 424, !22, i64 432, !36, i64 440, !37, i64 504, !9, i64 512, !22, i64 520, !22, i64 528, !9, i64 536, !9, i64 540, !9, i64 544, !37, i64 552, !41, i64 560, !42, i64 1440, !9, i64 1448, !9, i64 1452, !9, i64 1456, !9, i64 1460, !9, i64 1460, !14, i64 1464, !14, i64 1472, !14, i64 1480, !9, i64 1488, !9, i64 1492, !12, i64 1496, !12, i64 1504, !12, i64 1512, !49, i64 1520, !49, i64 2128, !50, i64 2736, !52, i64 2744, !52, i64 2768, !52, i64 2792, !53, i64 2816, !54, i64 2864, !54, i64 2872, !22, i64 2880, !22, i64 2888, !22, i64 2896, !30, i64 2904, !9, i64 2928, !22, i64 2936, !9, i64 2944, !9, i64 2948, !9, i64 2952, !52, i64 2960, !55, i64 2984, !13, i64 2992, !13, i64 3000, !22, i64 3008, !56, i64 3016, !57, i64 3024, !58, i64 3032, !9, i64 3040, !59, i64 3048, !9, i64 3056, !60, i64 3064, !63, i64 3072}
!65 = !{!64, !19, i64 2096}
!66 = !{!"p1 _ZTS15object_database", !12, i64 0}
!67 = !{!"p1 _ZTS18parsed_object_pool", !12, i64 0}
!68 = !{!"p1 _ZTS9ref_store", !12, i64 0}
!69 = !{!"_Bool", !8, i64 0}
!70 = !{!"p2 _ZTS13hashmap_entry", !28, i64 0}
!71 = !{!"hashmap", !70, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!72 = !{!"p1 _ZTS8mem_pool", !12, i64 0}
!73 = !{!"strmap", !71, i64 0, !72, i64 48, !9, i64 56}
!74 = !{!"repo_path_cache", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48}
!75 = !{!"p1 _ZTS18fsmonitor_settings", !12, i64 0}
!76 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !75, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !9, i64 128, !22, i64 136}
!77 = !{!"p1 _ZTS10config_set", !12, i64 0}
!78 = !{!"p1 _ZTS15submodule_cache", !12, i64 0}
!79 = !{!"p1 _ZTS11index_state", !12, i64 0}
!80 = !{!"p1 _ZTS12remote_state", !12, i64 0}
!81 = !{!"p1 _ZTS13git_hash_algo", !12, i64 0}
!82 = !{!"repo_config_values", !22, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!83 = !{!"p1 _ZTS22promisor_remote_config", !12, i64 0}
!84 = !{!"repository", !22, i64 0, !22, i64 8, !66, i64 16, !67, i64 24, !68, i64 32, !69, i64 40, !73, i64 48, !73, i64 112, !74, i64 176, !22, i64 232, !22, i64 240, !22, i64 248, !69, i64 256, !69, i64 257, !22, i64 264, !76, i64 272, !77, i64 416, !78, i64 424, !79, i64 432, !80, i64 440, !81, i64 448, !81, i64 456, !82, i64 464, !9, i64 512, !22, i64 520, !9, i64 528, !9, i64 532, !48, i64 536, !9, i64 544, !73, i64 552, !27, i64 616, !22, i64 656, !83, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !69, i64 689, !69, i64 690}
!85 = !{!84, !79, i64 432}
!86 = !{!64, !9, i64 2120}
!87 = !{!"p2 _ZTS11cache_entry", !28, i64 0}
!88 = !{!"p1 _ZTS10cache_tree", !12, i64 0}
!89 = !{!"p1 _ZTS11split_index", !12, i64 0}
!90 = !{!"cache_time", !9, i64 0, !9, i64 4}
!91 = !{!"object_id", !8, i64 0, !9, i64 32}
!92 = !{!"p1 _ZTS15untracked_cache", !12, i64 0}
!93 = !{!"p1 _ZTS11ewah_bitmap", !12, i64 0}
!94 = !{!"p1 _ZTS8progress", !12, i64 0}
!95 = !{!"p1 _ZTS12pattern_list", !12, i64 0}
!96 = !{!"index_state", !87, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !37, i64 24, !88, i64 32, !89, i64 40, !90, i64 48, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 60, !71, i64 64, !71, i64 112, !91, i64 160, !92, i64 200, !22, i64 208, !93, i64 216, !72, i64 224, !94, i64 232, !19, i64 240, !95, i64 248}
!97 = !{!"p1 _ZTS11cache_entry", !12, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!9, !9, i64 0}
!100 = !{!"timespec", !14, i64 0, !14, i64 8}
!101 = !{!"stat", !14, i64 0, !14, i64 8, !14, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !100, i64 72, !100, i64 88, !100, i64 104, !8, i64 120}
!102 = !{!101, !9, i64 24}
!103 = !{!19, !19, i64 0}
!104 = !{!84, !81, i64 448}
!105 = !{!91, !9, i64 32}
!106 = !{!"combine_diff_parent", !8, i64 0, !9, i64 4, !91, i64 8, !22, i64 48}
!107 = !{!106, !9, i64 4}
!108 = !{!106, !8, i64 0}
!109 = !{!"p1 _ZTS13diff_filespec", !12, i64 0}
!110 = !{!"p1 _ZTS9range_set", !12, i64 0}
!111 = !{!"short", !8, i64 0}
!112 = !{!"diff_filepair", !109, i64 0, !109, i64 8, !110, i64 16, !111, i64 24, !8, i64 26, !9, i64 27, !9, i64 27, !9, i64 27, !9, i64 27, !9, i64 27}
!113 = !{!64, !9, i64 1644}
!114 = !{!64, !9, i64 1840}
!115 = !{!49, !19, i64 576}
!116 = !{!49, !9, i64 208}
!117 = !{!49, !9, i64 168}
!118 = !{!49, !9, i64 204}
!119 = !{!49, !9, i64 192}
!120 = !{!49, !9, i64 196}
!121 = !{!"trace_key", !22, i64 0, !9, i64 8, !9, i64 12, !9, i64 12}
!122 = !{!121, !9, i64 8}
!123 = !{!"llvm.loop.mustprogress"}
!124 = !{!8, !8, i64 0}
!125 = !{!64, !9, i64 56}
!126 = !{!64, !17, i64 64}
!127 = !{!"p1 _ZTS6object", !12, i64 0}
!128 = !{!"object_array_entry", !127, i64 0, !22, i64 8, !22, i64 16, !9, i64 24}
!129 = !{!128, !127, i64 0}
!130 = !{!"p1 _ZTS8pathspec", !12, i64 0}
!131 = !{!"checkout_metadata", !22, i64 0, !91, i64 8, !91, i64 44}
!132 = !{!"p1 _ZTS10dir_struct", !12, i64 0}
!133 = !{!"unpack_trees_options_internal", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !8, i64 24, !30, i64 120, !8, i64 144, !96, i64 624, !95, i64 880, !132, i64 888}
!134 = !{!"unpack_trees_options", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !22, i64 72, !22, i64 80, !130, i64 88, !12, i64 96, !9, i64 104, !97, i64 112, !12, i64 120, !79, i64 128, !79, i64 136, !131, i64 144, !133, i64 224}
!135 = !{!134, !9, i64 16}
!136 = !{!134, !12, i64 120}
!137 = !{!54, !54, i64 0}
!138 = distinct !{!138, !123}
!139 = !{!64, !9, i64 1456}
!140 = !{!96, !9, i64 12}
!141 = !{!96, !87, i64 0}
!142 = !{!64, !22, i64 288}
!143 = !{!64, !22, i64 1848}
!144 = !{!64, !9, i64 1856}
!145 = !{!112, !109, i64 8}
!146 = !{!"p1 _ZTS15userdiff_driver", !12, i64 0}
!147 = !{!"diff_filespec", !91, i64 0, !22, i64 40, !12, i64 48, !12, i64 56, !14, i64 64, !9, i64 72, !9, i64 76, !111, i64 80, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !9, i64 82, !146, i64 88}
!148 = !{!147, !111, i64 80}
!149 = !{!96, !19, i64 240}
!150 = !{!96, !9, i64 20}
!151 = distinct !{!151, !123}
!152 = distinct !{!152, !123, !154}
!153 = !{!13, !13, i64 0}
!154 = !{!"llvm.loop.peeled.count", i32 2}
!155 = !{!"p1 _ZTS6commit", !12, i64 0}
!156 = !{!"commit_list", !155, i64 0, !13, i64 8}
!157 = !{!156, !13, i64 8}
!158 = !{!156, !155, i64 0}
!159 = !{!128, !22, i64 8}
!160 = !{!134, !9, i64 104}
!161 = !{!134, !9, i64 40}
!162 = !{!134, !9, i64 0}
!163 = !{!134, !12, i64 96}
!164 = !{!134, !79, i64 136}
!165 = !{!134, !130, i64 88}
!166 = !{!"object", !9, i64 0, !9, i64 0, !9, i64 4, !91, i64 8}
!167 = !{!"tree", !166, i64 0, !12, i64 48, !14, i64 56}
!168 = !{!167, !12, i64 48}
!169 = !{!167, !14, i64 56}
!170 = !{!22, !22, i64 0}
!171 = !{!43, !43, i64 0}
!172 = !{!14, !14, i64 0}
!173 = !{!29, !29, i64 0}
!174 = !{!45, !45, i64 0}
!175 = !{!12, !12, i64 0}
!176 = !{!46, !46, i64 0}
!177 = !{!32, !32, i64 0}
!178 = !{!47, !47, i64 0}
!179 = !{!48, !48, i64 0}
!180 = !{i64 0, i64 8, !170, i64 8, i64 8, !170, i64 16, i64 4, !99, i64 20, i64 4, !99, i64 24, i64 8, !170, i64 32, i64 4, !99, i64 40, i64 8, !171, i64 48, i64 8, !172, i64 56, i64 8, !172, i64 64, i64 8, !170, i64 72, i64 8, !170, i64 80, i64 8, !170, i64 88, i64 8, !170, i64 96, i64 4, !99, i64 100, i64 4, !99, i64 104, i64 4, !99, i64 108, i64 4, !99, i64 112, i64 4, !99, i64 116, i64 4, !99, i64 120, i64 4, !99, i64 124, i64 4, !99, i64 128, i64 4, !99, i64 132, i64 4, !99, i64 136, i64 4, !99, i64 140, i64 4, !99, i64 144, i64 4, !99, i64 148, i64 4, !99, i64 152, i64 4, !99, i64 156, i64 4, !99, i64 160, i64 4, !99, i64 164, i64 4, !99, i64 168, i64 4, !99, i64 172, i64 4, !99, i64 176, i64 4, !99, i64 180, i64 4, !99, i64 184, i64 4, !99, i64 188, i64 4, !99, i64 192, i64 4, !99, i64 196, i64 4, !99, i64 200, i64 4, !99, i64 204, i64 4, !99, i64 208, i64 4, !99, i64 212, i64 4, !99, i64 216, i64 4, !99, i64 220, i64 4, !99, i64 224, i64 4, !99, i64 228, i64 4, !99, i64 232, i64 4, !99, i64 236, i64 4, !99, i64 240, i64 4, !99, i64 244, i64 4, !99, i64 248, i64 4, !99, i64 252, i64 4, !99, i64 256, i64 4, !99, i64 260, i64 4, !99, i64 264, i64 4, !99, i64 268, i64 4, !99, i64 272, i64 4, !99, i64 276, i64 4, !99, i64 280, i64 4, !99, i64 284, i64 4, !99, i64 288, i64 4, !99, i64 292, i64 4, !99, i64 296, i64 4, !99, i64 300, i64 4, !99, i64 304, i64 4, !99, i64 308, i64 4, !99, i64 312, i64 4, !99, i64 316, i64 4, !99, i64 320, i64 4, !99, i64 324, i64 4, !99, i64 328, i64 8, !170, i64 336, i64 4, !99, i64 344, i64 8, !170, i64 352, i64 4, !99, i64 356, i64 4, !99, i64 360, i64 8, !173, i64 368, i64 8, !172, i64 376, i64 8, !172, i64 384, i64 4, !99, i64 388, i64 4, !99, i64 392, i64 4, !99, i64 396, i64 4, !99, i64 400, i64 8, !170, i64 408, i64 4, !99, i64 412, i64 4, !99, i64 416, i64 8, !174, i64 424, i64 4, !99, i64 428, i64 4, !99, i64 432, i64 4, !99, i64 440, i64 8, !175, i64 448, i64 8, !176, i64 456, i64 4, !99, i64 460, i64 3, !124, i64 464, i64 4, !99, i64 468, i64 1, !124, i64 472, i64 4, !99, i64 476, i64 4, !99, i64 480, i64 8, !177, i64 488, i64 8, !175, i64 496, i64 8, !175, i64 504, i64 8, !175, i64 512, i64 8, !175, i64 520, i64 8, !175, i64 528, i64 8, !175, i64 536, i64 8, !175, i64 544, i64 8, !175, i64 552, i64 4, !99, i64 560, i64 8, !178, i64 568, i64 4, !99, i64 572, i64 4, !99, i64 576, i64 8, !103, i64 584, i64 8, !179, i64 592, i64 4, !99, i64 596, i64 4, !99, i64 600, i64 4, !99}
!181 = !{!64, !9, i64 2112}
!182 = !{!"setup_revision_opt", !22, i64 0, !12, i64 8, !9, i64 16, !9, i64 16, !9, i64 16, !9, i64 20}
!183 = !{!182, !22, i64 0}
!184 = !{!64, !9, i64 1660}
!185 = !{!64, !9, i64 1672}
!186 = !{!44, !9, i64 112}
!187 = !{!44, !9, i64 72}
!188 = !{!64, !9, i64 1688}
!189 = !{!64, !9, i64 1656}
!190 = !{!49, !9, i64 280}
!191 = !{!49, !12, i64 536}
!192 = !{!23, !22, i64 16}
!193 = !{!49, !12, i64 544}
!194 = !{!134, !97, i64 112}
!195 = !{!112, !109, i64 0}
!196 = !{!134, !9, i64 52}
end_hunk_1
