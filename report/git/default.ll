Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/default?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.commit_stack = type { ptr, i64, i64 }

@marked = internal unnamed_addr global i1 false, align 4
@the_repository = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @default_negotiator_init(ptr nofree noundef writeonly captures(none) initializes((0, 56)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @known_common, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @add_tip, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @next, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @ack, ptr %i.c, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @have_sent, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @release, ptr %i.e, align 8, !tbaa !32
  %i.f = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %i.g, align 8, !tbaa !15
  store ptr @compare_commits_by_commit_date, ptr %i.f, align 8, !tbaa !33
  %.b = load i1, ptr @marked, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.i = tail call ptr @get_main_ref_store(ptr noundef %i.h) #5
  %i.j = tail call i32 @refs_for_each_ref(ptr noundef %i.i, ptr noundef nonnull @clear_marks, ptr noundef null) #5 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i1 true, ptr @marked, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @known_common(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = and i64 %i.a, 68719476736
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = and i64 %i.a, 34359738368
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %rev_list_push.exit

bb.c:                                             ; preds = %bb.b
  %i.f = or disjoint i64 %i.a, 103079215104
  store i64 %i.f, ptr %1, align 8
  %i.g = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.h = tail call i32 @repo_parse_commit_gently(ptr noundef %i.g, ptr noundef nonnull %1, i32 noundef 0) #5
  %.not8.i = icmp eq i32 %i.h, 0
  br i1 %.not8.i, label %bb.d, label %rev_list_push.exit

bb.d:                                             ; preds = %bb.c
  tail call void @prio_queue_put(ptr noundef %i.d, ptr noundef nonnull %1) #5
  %i.i = load i64, ptr %1, align 8
  %i.j = and i64 %i.i, 17179869184
  %.not9.i = icmp eq i64 %i.j, 0
  br i1 %.not9.i, label %bb.e, label %rev_list_push.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !22
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !22
  br label %rev_list_push.exit

rev_list_push.exit:                               ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !15
  tail call fastcc void @mark_common(ptr noundef %i.n, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %rev_list_push.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_tip(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr noundef %1) #0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = and i64 %i.c, 68719476736
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %rev_list_push.exit

bb.b:                                             ; preds = %bb.a
  %i.e = or disjoint i64 %i.c, 68719476736
  store i64 %i.e, ptr %1, align 8
  %i.f = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.g = tail call i32 @repo_parse_commit_gently(ptr noundef %i.f, ptr noundef nonnull %1, i32 noundef 0) #5
  %.not8.i = icmp eq i32 %i.g, 0
  br i1 %.not8.i, label %bb.c, label %rev_list_push.exit

bb.c:                                             ; preds = %bb.b
  tail call void @prio_queue_put(ptr noundef %i.b, ptr noundef nonnull %1) #5
  %i.h = load i64, ptr %1, align 8
  %i.i = and i64 %i.h, 17179869184
  %.not9.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i, label %bb.d, label %rev_list_push.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !22
  br label %rev_list_push.exit

rev_list_push.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @next(ptr nofree noundef captures(none) initializes((0, 16)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 7 uses
  br label %bb.b

.loopexit.i:                                      ; preds = %rev_list_push.exit.i, %rev_list_push.exit.us.i, %bb.f
  %i.e = icmp eq ptr %.1.i, null
  br i1 %i.e, label %bb.b, label %bb.m, !llvm.loop !34

bb.b:                                             ; preds = %.loopexit.i, %bb.a
  %i.f = load i64, ptr %i.c, align 8, !tbaa !36
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %get_rev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 8, !tbaa !22
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %get_rev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @prio_queue_get(ptr noundef nonnull %i.b) #5 ; 6 uses
  %i.k = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.l = tail call i32 @repo_parse_commit_gently(ptr noundef %i.k, ptr noundef %i.j, i32 noundef 0) #5 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41   ; 3 uses
  %i.o = load i64, ptr %i.j, align 8              ; 2 uses
  %i.p = or i64 %i.o, 137438953472                ; 2 uses
  store i64 %i.p, ptr %i.j, align 8
  %i.q = and i64 %i.o, 17179869184
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.d, align 8, !tbaa !22
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.d, align 8, !tbaa !22
  %.pre.i = load i64, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ]
  %.fr.i = freeze i64 %i.t                        ; 2 uses
  %1 = and i64 %.fr.i, 17179869184
  %.not28.i = icmp eq i64 %1, 0
  %.1.i = select i1 %.not28.i, ptr %i.j, ptr null ; 2 uses
  %.not3034.i = icmp eq ptr %i.n, null
  br i1 %.not3034.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.u = and i64 %.fr.i, 51539607552
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %rev_list_push.exit.us.i
  %.02235.us.i = phi ptr [ %i.ah, %rev_list_push.exit.us.i ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.w = load ptr, ptr %.02235.us.i, align 8, !tbaa !27 ; 5 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = and i64 %i.x, 68719476736
  %.not31.us.i = icmp eq i64 %i.y, 0
  br i1 %.not31.us.i, label %bb.g, label %rev_list_push.exit.us.i

bb.g:                                             ; preds = %.lr.ph.split.us.i
  %i.z = or disjoint i64 %i.x, 68719476736
  store i64 %i.z, ptr %i.w, align 8
  %i.aa = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.ab = tail call i32 @repo_parse_commit_gently(ptr noundef %i.aa, ptr noundef nonnull %i.w, i32 noundef 0) #5
  %.not8.i.us.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i.us.i, label %bb.h, label %rev_list_push.exit.us.i

bb.h:                                             ; preds = %bb.g
  tail call void @prio_queue_put(ptr noundef nonnull %i.b, ptr noundef nonnull %i.w) #5
  %i.ac = load i64, ptr %i.w, align 8
  %i.ad = and i64 %i.ac, 17179869184
  %.not9.i.us.i = icmp eq i64 %i.ad, 0
  br i1 %.not9.i.us.i, label %bb.i, label %rev_list_push.exit.us.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !22
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.d, align 8, !tbaa !22
  br label %rev_list_push.exit.us.i

rev_list_push.exit.us.i:                          ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph.split.us.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.02235.us.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !42 ; 2 uses
  %.not30.us.i = icmp eq ptr %i.ah, null
  br i1 %.not30.us.i, label %.loopexit.i, label %.lr.ph.split.us.i, !llvm.loop !35

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %rev_list_push.exit.i
  %.02235.i = phi ptr [ %i.au, %rev_list_push.exit.i ], [ %i.n, %.lr.ph.i ] ; 3 uses
  %i.ai = load ptr, ptr %.02235.i, align 8, !tbaa !27 ; 5 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = and i64 %i.aj, 85899345920
  %or.cond.i = icmp eq i64 %i.ak, 0
  br i1 %or.cond.i, label %bb.j, label %rev_list_push.exit.i

bb.j:                                             ; preds = %.lr.ph.split.i
  %i.al = or disjoint i64 %i.aj, 85899345920
  store i64 %i.al, ptr %i.ai, align 8
  %i.am = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.an = tail call i32 @repo_parse_commit_gently(ptr noundef %i.am, ptr noundef nonnull %i.ai, i32 noundef 0) #5
  %.not8.i.i = icmp eq i32 %i.an, 0
  br i1 %.not8.i.i, label %bb.k, label %rev_list_push.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @prio_queue_put(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ai) #5
  %i.ao = load i64, ptr %i.ai, align 8
  %i.ap = and i64 %i.ao, 17179869184
  %.not9.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not9.i.i, label %bb.l, label %rev_list_push.exit.i

bb.l:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.d, align 8, !tbaa !22
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.d, align 8, !tbaa !22
  br label %rev_list_push.exit.i

rev_list_push.exit.i:                             ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.split.i
  %i.as = load ptr, ptr %.02235.i, align 8, !tbaa !27
  tail call fastcc void @mark_common(ptr noundef nonnull %i.b, ptr noundef %i.as, i32 noundef 1, i32 noundef 0)
  %i.at = getelementptr inbounds nuw i8, ptr %.02235.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42 ; 2 uses
  %.not30.i = icmp eq ptr %i.au, null
  br i1 %.not30.i, label %.loopexit.i, label %.lr.ph.split.i, !llvm.loop !35

bb.m:                                             ; preds = %.loopexit.i
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  br label %get_rev.exit

get_rev.exit:                                     ; preds = %bb.b, %bb.c, %bb.m
  %.227.i = phi ptr [ %i.av, %bb.m ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.227.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ack(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = lshr i64 %i.a, 34
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = and i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  tail call fastcc void @mark_common(ptr noundef %i.f, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1)
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal void @have_sent(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.b = tail call i32 @repo_parse_commit_gently(ptr noundef %i.a, ptr noundef %1, i32 noundef 0) #5
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  tail call fastcc void @mark_common(ptr noundef %i.d, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @release(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  tail call void @clear_prio_queue(ptr noundef %i.b) #5
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.c) #5
  store ptr null, ptr %i.a, align 8, !tbaa !15
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @compare_commits_by_commit_date(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @refs_for_each_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_main_ref_store(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @clear_marks(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = tail call ptr @parse_object(ptr noundef %i.a, ptr noundef %i.c) #5
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = tail call ptr @deref_tag(ptr noundef %i.a, ptr noundef %i.d, ptr noundef %i.e, i32 noundef 0) #5 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 4
  %i.h = and i64 %i.g, 14
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @clear_commit_marks(ptr noundef nonnull %i.f, i32 noundef 60) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_common(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.commit_stack, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8
  %i.b = and i64 %i.a, 17179869184
  %.not29 = icmp eq i64 %i.b, 0
  br i1 %.not29, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  call void @commit_stack_push(ptr noundef nonnull %4, ptr noundef nonnull %1) #5
  %.not30 = icmp eq i32 %2, 0
  br i1 %.not30, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = or i64 %i.c, 17179869184
  store i64 %i.d, ptr %1, align 8
  %i.e = and i64 %i.c, 206158430208
  %or.cond40 = icmp eq i64 %i.e, 68719476736
  br i1 %or.cond40, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !22
  %i.h = add nsw i32 %i.g, -1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.i = call ptr @commit_stack_pop(ptr noundef nonnull %4) #5 ; 2 uses
  %.not3345 = icmp eq ptr %i.i, null
  br i1 %.not3345, label %._crit_edge, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.f
  %i.j = icmp ne i32 %3, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46, %.critedge
  %i.l = phi ptr [ %i.i, %.lr.ph46 ], [ %i.ai, %.critedge ] ; 7 uses
  %i.m = load i64, ptr %i.l, align 4              ; 3 uses
  %i.n = and i64 %i.m, 68719476736
  %.not34 = icmp eq i64 %i.n, 0
  br i1 %.not34, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.o = or disjoint i64 %i.m, 68719476736
  store i64 %i.o, ptr %i.l, align 8
  %i.p = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.q = call i32 @repo_parse_commit_gently(ptr noundef %i.p, ptr noundef nonnull %i.l, i32 noundef 0) #5
  %.not8.i = icmp eq i32 %i.q, 0
  br i1 %.not8.i, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  call void @prio_queue_put(ptr noundef %0, ptr noundef nonnull %i.l) #5
  %i.r = load i64, ptr %i.l, align 8
  %i.s = and i64 %i.r, 17179869184
  %.not9.i = icmp eq i64 %i.s, 0
  br i1 %.not9.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.t = load i32, ptr %i.k, align 8, !tbaa !22
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.k, align 8, !tbaa !22
  br label %.critedge

bb.k:                                             ; preds = %bb.g
  %i.v = trunc i64 %i.m to i1
  %or.cond = or i1 %i.j, %i.v
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr @the_repository, align 8, !tbaa !21
  %i.x = call i32 @repo_parse_commit_gently(ptr noundef %i.w, ptr noundef nonnull %i.l, i32 noundef 0) #5
  %.not35 = icmp eq i32 %i.x, 0
  br i1 %.not35, label %bb.m, label %.critedge, !llvm.loop !48

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.042 = load ptr, ptr %i.y, align 8, !tbaa !50  ; 2 uses
  %.not3643 = icmp eq ptr %.042, null
  br i1 %.not3643, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.q
  %.044 = phi ptr [ %.0, %bb.q ], [ %.042, %bb.m ] ; 3 uses
  %i.z = load ptr, ptr %.044, align 8, !tbaa !27  ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = and i64 %i.aa, 17179869184
  %.not37 = icmp eq i64 %i.ab, 0
  br i1 %.not37, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.lr.ph
  %i.ac = or disjoint i64 %i.aa, 17179869184
  store i64 %i.ac, ptr %i.z, align 8
  %i.ad = and i64 %i.aa, 206158430208
  %or.cond41 = icmp eq i64 %i.ad, 68719476736
  br i1 %or.cond41, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ae = load i32, ptr %i.k, align 8, !tbaa !22
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.k, align 8, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ag = load ptr, ptr %.044, align 8, !tbaa !27
end_hunk_0
