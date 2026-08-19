inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.strbuf = type { i64, i64, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@startup_info = external local_unnamed_addr global ptr, align 8
@removal = internal global %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@strbuf_slopbuf = external global [0 x i8], align 1
@default_cache = internal global { %struct.strbuf, i32, i32, i32, [4 x i8] } { %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [21 x i8] c"failed to lstat '%s'\00", align 1
@git_gettext_enabled = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"./strbuf.h\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"!strbuf_slopbuf[0]\00", align 1
@__PRETTY_FUNCTION__.strbuf_setlen = private unnamed_addr constant [44 x i8] c"void strbuf_setlen(struct strbuf *, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 5) i32 @threaded_has_symlink_leading_path(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call fastcc i32 @lstat_cache_matchlen(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %i.a, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.d = and i32 %i.c, 4
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 5) i32 @has_symlink_leading_path(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call fastcc i32 @lstat_cache_matchlen(ptr noundef nonnull @default_cache, ptr noundef readonly %0, i32 noundef %1, ptr noundef %i.a, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.d = and i32 %i.c, 4
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local i32 @check_leading_path(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call fastcc i32 @lstat_cache_matchlen(ptr noundef nonnull @default_cache, ptr noundef %0, i32 noundef %1, ptr noundef %i.a, i32 noundef 7, i32 noundef 0) ; 3 uses
  %i.c = tail call ptr @__errno_location() #12    ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %i.e = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %threaded_check_leading_path.exit

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.e, 1
  %.not10.i = icmp eq i32 %i.g, 0
  br i1 %.not10.i, label %bb.c, label %threaded_check_leading_path.exit

bb.c:                                             ; preds = %bb.b
  %.not11.i = icmp eq i32 %2, 0
  %i.h = and i32 %i.e, 8
  %.not12.i = icmp eq i32 %i.h, 0
  %or.cond.i = or i1 %.not11.i, %.not12.i
  br i1 %or.cond.i, label %threaded_check_leading_path.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.b to i64
  %i.j = tail call ptr @xmemdupz(ptr noundef %0, i64 noundef %i.i) #11 ; 2 uses
  store i32 %i.d, ptr %i.c, align 4, !tbaa !12
  %i.k = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #11
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.l, %bb.e ], [ @.str, %bb.d ]
  tail call void (ptr, ...) @warning_errno(ptr noundef %.0.i.i, ptr noundef %i.j) #11
  tail call void @free(ptr noundef %i.j) #11
  br label %threaded_check_leading_path.exit

threaded_check_leading_path.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %_.exit.i
  %.0.i = phi i32 [ -1, %bb.b ], [ 0, %bb.a ], [ %i.b, %_.exit.i ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @has_dirs_only_path(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call fastcc i32 @lstat_cache_matchlen(ptr noundef nonnull @default_cache, ptr noundef readonly %0, i32 noundef %1, ptr noundef %i.a, i32 noundef 33, i32 noundef %2) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.d = and i32 %i.c, 1
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local void @schedule_dir_for_removal(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @startup_info, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.c) #13
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 16), align 8, !tbaa !19 ; 2 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 8), align 8, !tbaa !22 ; 3 uses
  %i.g = trunc i64 %i.f to i32                    ; 4 uses
  %i.h = icmp slt i32 %1, %i.g
  %i.i = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.g) ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %.03242.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !23    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !23
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %longest_path_match.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = icmp eq i8 %i.l, 47
  %i.q = trunc nuw nsw i64 %indvars.iv.i to i32
  %spec.select.i = select i1 %i.p, i32 %i.q, i32 %.03242.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !24

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.032.lcssa.i = phi i32 [ 0, %bb.c ], [ %spec.select.i, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.i, %bb.d ]
  %i.r = icmp sgt i32 %1, %i.g
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge.i
  %sext = shl i64 %i.f, 32
  %i.s = ashr exact i64 %sext, 32
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23
  %i.v = icmp eq i8 %i.u, 47
  br i1 %i.v, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge.i
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds i8, ptr %i.e, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23
  %i.z = icmp eq i8 %i.y, 47
  br i1 %i.z, label %bb.i, label %longest_path_match.exit

bb.h:                                             ; preds = %bb.f
  %.old.i = icmp eq i32 %1, %i.g
  br i1 %.old.i, label %bb.i, label %longest_path_match.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  br label %longest_path_match.exit

longest_path_match.exit:                          ; preds = %.lr.ph.i, %bb.g, %bb.h, %bb.i
  %.234.i = phi i32 [ %.0.lcssa.i, %bb.i ], [ %.032.lcssa.i, %bb.h ], [ %.032.lcssa.i, %bb.g ], [ %.03242.i, %.lr.ph.i ] ; 10 uses
  %i.aa = icmp slt i32 %.234.i, %1
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %longest_path_match.exit
  %i.ab = sext i32 %.234.i to i64                 ; 4 uses
  %wide.trip.count = sext i32 %1 to i64           ; 2 uses
  %i.ac = sub nsw i64 %wide.trip.count, %i.ab     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ac, -4                      ; 3 uses
  %i.ad = add nsw i64 %n.vec, %i.ab
  %broadcast.splatinsert34 = insertelement <4 x i32> poison, i32 %.234.i, i64 0
  %broadcast.splat35 = shufflevector <4 x i32> %broadcast.splatinsert34, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %induction = add <4 x i32> %broadcast.splat35, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat35, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ae = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index
  %wide.load = load <4 x i8>, ptr %gep, align 1, !tbaa !23
  %wide.load.fr = freeze <4 x i8> %wide.load
  %i.af = icmp eq <4 x i8> %wide.load.fr, splat (i8 47) ; 2 uses
  %i.ag = bitcast <4 x i1> %i.af to i4
  %.not36 = icmp eq i4 %i.ag, 0                   ; 2 uses
  %i.ah = select i1 %.not36, <4 x i1> %i.ae, <4 x i1> %i.af ; 2 uses
  %i.ai = select i1 %.not36, <4 x i32> %vec.phi, <4 x i32> %vec.ind ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %i.ak = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.ai, <4 x i1> %i.ah, i32 %.234.i) ; 2 uses
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %i.ad, %middle.block ]
  %.01824.ph = phi i32 [ %.234.i, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader37 ] ; 3 uses
  %.01824 = phi i32 [ %spec.select, %.lr.ph ], [ %.01824.ph, %.lr.ph.preheader37 ]
  %i.al = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  %i.an = icmp eq i8 %i.am, 47
  %i.ao = trunc nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.an, i32 %i.ao, i32 %.01824 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %longest_path_match.exit
  %.018.lcssa = phi i32 [ %.234.i, %longest_path_match.exit ], [ %i.ak, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.ap = icmp slt i32 %.234.i, %.018.lcssa
  br i1 %i.ap, label %bb.j, label %.critedge

bb.j:                                             ; preds = %._crit_edge
  %i.aq = sext i32 %.234.i to i64                 ; 2 uses
  %i.ar = icmp ugt i64 %i.f, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @do_remove_scheduled_dirs(i32 noundef %.234.i)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.at = sub nsw i32 %.018.lcssa, %.234.i
  %i.au = zext nneg i32 %i.at to i64
  tail call void @strbuf_add(ptr noundef nonnull @removal, ptr noundef %i.as, i64 noundef %i.au) #11
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_remove_scheduled_dirs(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 4 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 8), align 8, !tbaa !22 ; 2 uses
  %i.c = icmp ugt i64 %i.b, %i.a
  br i1 %i.c, label %.lr.ph.preheader, label %lstat_cache_aware_rmdir.exit.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 16), align 8, !tbaa !19
  br label %.lr.ph

.lr.ph.loopexit:                                  ; preds = %.lr.ph23
  br label %.lr.ph, !llvm.loop !30

.lr.ph:                                           ; preds = %.lr.ph.loopexit, %.lr.ph.preheader
  %i.d = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.n, %.lr.ph.loopexit ]
  %i.e = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.s, %.lr.ph.loopexit ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.f, align 1, !tbaa !23
  %i.g = load ptr, ptr @startup_info, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %.pre14 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 16), align 8, !tbaa !19 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pre14, ptr noundef nonnull dereferenceable(1) %i.i) #13
  %.not6 = icmp eq i32 %i.j, 0
  br i1 %.not6, label %lstat_cache_aware_rmdir.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.k = tail call i32 @rmdir(ptr noundef readonly %.pre14) #11
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %lstat_cache_aware_rmdir.exit.thread

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 8), align 8, !tbaa !22
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 16), align 8, !tbaa !19 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.l, @strbuf_slopbuf
  br i1 %.not9.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.l, align 1, !tbaa !23
  br label %lstat_cache_aware_rmdir.exit

bb.f:                                             ; preds = %bb.d
  %i.m = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !23
  %.not10.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not10.i.i.i.i, label %lstat_cache_aware_rmdir.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #14
  unreachable

lstat_cache_aware_rmdir.exit:                     ; preds = %bb.e, %bb.f
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 24), align 8, !tbaa !31
  %.promoted = load i64, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 8), align 8, !tbaa !22
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 16), align 8 ; 2 uses
  %i.o = add i64 %.promoted, -1                   ; 3 uses
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 8), align 8, !tbaa !22
  %i.p = icmp ugt i64 %i.o, %i.a
  br i1 %i.p, label %.lr.ph23, label %lstat_cache_aware_rmdir.exit.thread

bb.h:                                             ; preds = %.lr.ph23
  %i.q = add i64 %i.s, -1                         ; 3 uses
  store i64 %i.q, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 8), align 8, !tbaa !22
  %i.r = icmp ugt i64 %i.q, %i.a
  br i1 %i.r, label %.lr.ph23, label %lstat_cache_aware_rmdir.exit.thread, !llvm.loop !30

.lr.ph23:                                         ; preds = %lstat_cache_aware_rmdir.exit, %bb.h
  %i.s = phi i64 [ %i.q, %bb.h ], [ %i.o, %lstat_cache_aware_rmdir.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23
  %.not8 = icmp eq i8 %i.u, 47
  br i1 %.not8, label %.lr.ph.loopexit, label %bb.h, !llvm.loop !30

lstat_cache_aware_rmdir.exit.thread:              ; preds = %bb.b, %bb.c, %lstat_cache_aware_rmdir.exit, %bb.h, %bb.a
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 8), align 8, !tbaa !22
  ret void
}

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @remove_scheduled_dirs() local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @do_remove_scheduled_dirs(i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @invalidate_lstat_cache() local_unnamed_addr #0 {
bb.a:
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 8), align 8, !tbaa !22
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 16), align 8, !tbaa !19 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.a, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !23
  br label %reset_lstat_cache.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !23
  %.not10.i.i = icmp eq i8 %i.b, 0
  br i1 %.not10.i.i, label %reset_lstat_cache.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #14
  unreachable

reset_lstat_cache.exit:                           ; preds = %bb.b, %bb.c
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 24), align 8, !tbaa !31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @lstat_cache_aware_rmdir(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rmdir(ptr noundef %0) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 8), align 8, !tbaa !22
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 16), align 8, !tbaa !19 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.b, @strbuf_slopbuf
end_hunk_0
