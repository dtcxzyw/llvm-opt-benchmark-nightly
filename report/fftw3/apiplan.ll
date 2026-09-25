Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/apiplan?download=true
inline.NumInlined: 7
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@before_planner_hook = internal unnamed_addr global ptr null, align 8
@after_planner_hook = internal unnamed_addr global ptr null, align 8
@fftw_mkapiplan.pats = internal unnamed_addr constant [4 x i32] [i32 64, i32 0, i32 32, i32 8], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @fftw_set_planner_hooks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr @before_planner_hook, align 8, !tbaa !11
  store ptr %1, ptr @after_planner_hook, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fftw_mkapiplan(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @before_planner_hook, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.a() #3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call ptr @fftw_the_planner() #3     ; 13 uses
  %i.c = and i32 %1, 2097152
  %.not55 = icmp eq i32 %i.c, 0
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @fftw_mapflags(ptr noundef %i.b, i32 noundef %1) #3
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 212 ; 2 uses
  %i.e = load i64, ptr %i.d, align 4
  %i.f = and i64 %i.e, -7340033
  store i64 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i32 1, ptr %i.g, align 4, !tbaa !21
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = tail call ptr %i.j(ptr noundef nonnull %i.b, ptr noundef %2) #3, !inline_history !0
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.l = and i32 %1, 64
  %.not56 = icmp eq i32 %i.l, 0
  br i1 %.not56, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = and i32 %1, 8
  %.not57 = icmp eq i32 %i.m, 0
  %i.n = and i32 %1, 32
  %.not58 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not58, i32 1, i32 2
  %i.p = select i1 %.not57, i32 %i.o, i32 3
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.q = phi i32 [ %i.p, %bb.f ], [ 0, %bb.e ]    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.s = load double, ptr %i.r, align 8, !tbaa !33
  %i.t = fcmp oge double %i.s, 0.000000e+00
  %i.u = and i32 %1, -2097257                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.w = tail call { i64, i64 } @fftw_get_crude_time() #3 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !34
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !34
  %i.z = zext nneg i32 %i.q to i64
  %i.aa = select i1 %i.t, i64 0, i64 %i.z         ; 2 uses
  %3 = add nuw nsw i32 %i.q, 1
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @fftw_mkapiplan.pats, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !35
  %i.ad = or i32 %i.ac, %i.u                      ; 2 uses
  %i.ae = tail call fastcc ptr @mkplan(ptr noundef %i.b, i32 noundef %i.ad, ptr noundef %2, i32 noundef 0) ; 2 uses
  %.not6098 = icmp eq ptr %i.ae, null
  br i1 %.not6098, label %.loopexit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @fftw_mkapiplan.pats, i64 %indvars.iv.next
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !35
  %i.ah = or i32 %i.ag, %i.u                      ; 2 uses
  %i.ai = tail call fastcc ptr @mkplan(ptr noundef %i.b, i32 noundef %i.ah, ptr noundef %2, i32 noundef 0) ; 2 uses
  %.not60 = icmp eq ptr %i.ai, null
  br i1 %.not60, label %.loopexit, label %.lr.ph, !llvm.loop !32

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.aj = phi ptr [ %i.ai, %bb.h ], [ %i.ae, %bb.g ] ; 4 uses
  %i.ak = phi i32 [ %i.ah, %bb.h ], [ %i.ad, %bb.g ] ; 2 uses
  %.04970100 = phi ptr [ %i.aj, %bb.h ], [ null, %bb.g ]
  %indvars.iv99 = phi i64 [ %indvars.iv.next, %bb.h ], [ %i.aa, %bb.g ]
  tail call void @fftw_plan_destroy_internal(ptr noundef %.04970100) #3
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.am = load double, ptr %i.al, align 8, !tbaa !39 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv99, 1 ; 3 uses
  %i.an = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %3, %i.an
  br i1 %exitcond.not, label %.loopexit.thread, label %bb.h, !llvm.loop !32

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.d
  %.251 = phi ptr [ %i.k, %bb.d ], [ null, %bb.g ], [ %i.aj, %bb.h ] ; 2 uses
  %.248 = phi i32 [ %1, %bb.d ], [ 0, %bb.g ], [ %i.ak, %bb.h ]
  %.2 = phi double [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.g ], [ %i.am, %bb.h ]
  %.not61 = icmp eq ptr %.251, null
  br i1 %.not61, label %bb.i, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph, %.loopexit
  %.283 = phi double [ %.2, %.loopexit ], [ %i.am, %.lr.ph ]
  %.24882 = phi i32 [ %.248, %.loopexit ], [ %i.ak, %.lr.ph ]
  %.25181 = phi ptr [ %.251, %.loopexit ], [ %i.aj, %.lr.ph ]
  %i.ao = tail call ptr @fftw_malloc_plain(i64 noundef 32) #3 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %2, ptr %i.ap, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 1, ptr %i.aq, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i32 %0, ptr %i.ar, align 8, !tbaa !40
  %i.as = tail call fastcc ptr @mkplan(ptr noundef %i.b, i32 noundef %.24882, ptr noundef %2, i32 noundef 1) ; 3 uses
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store double %.283, ptr %i.at, align 8, !tbaa !39
  tail call void @fftw_plan_awake(ptr noundef %i.as, i32 noundef 3) #3
  tail call void @fftw_plan_destroy_internal(ptr noundef nonnull %.25181) #3
  br label %bb.j

bb.i:                                             ; preds = %.loopexit
  tail call void @fftw_problem_destroy(ptr noundef %2) #3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit.thread
  %.043 = phi ptr [ %i.ao, %.loopexit.thread ], [ null, %bb.i ]
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31
  tail call void %i.aw(ptr noundef nonnull %i.b, i32 noundef 0) #3
  %i.ax = load ptr, ptr @after_planner_hook, align 8, !tbaa !11 ; 2 uses
  %.not62 = icmp eq ptr %i.ax, null
  br i1 %.not62, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void %i.ax() #3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret ptr %.043
}

declare ptr @fftw_the_planner() local_unnamed_addr #2

declare { i64, i64 } @fftw_get_crude_time() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mkplan(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  tail call void @fftw_mapflags(ptr noundef %0, i32 noundef %1) #3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 8 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = shl nuw nsw i32 %3, 20
  %i.d = zext nneg i32 %i.c to i64                ; 4 uses
  %i.e = and i64 %i.b, -7340033
  %i.f = or disjoint i64 %i.e, %i.d
  store i64 %i.f, ptr %i.a, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 7 uses
  store i32 0, ptr %i.g, align 4, !tbaa !21
  %i.h = load ptr, ptr %0, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = tail call ptr %i.j(ptr noundef nonnull %0, ptr noundef %2) #3, !inline_history !0 ; 2 uses
  %i.l = load i32, ptr %i.g, align 4, !tbaa !21   ; 2 uses
  %i.m = icmp ne i32 %i.l, 0
  %i.n = icmp ne ptr %i.k, null
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = and i32 %1, -105
  %i.p = or disjoint i32 %i.o, 64
  tail call void @fftw_mapflags(ptr noundef nonnull %0, i32 noundef %i.p) #3
  %i.q = load i64, ptr %i.a, align 4
  %i.r = and i64 %i.q, -7340033
  %i.s = or disjoint i64 %i.r, %i.d
  store i64 %i.s, ptr %i.a, align 4
  store i32 3, ptr %i.g, align 4, !tbaa !21
  %i.t = load ptr, ptr %0, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.w = tail call ptr %i.v(ptr noundef nonnull %0, ptr noundef %2) #3, !inline_history !0
  %.pr = load i32, ptr %i.g, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = phi i32 [ %.pr, %bb.b ], [ %i.l, %bb.a ]
  %.0 = phi ptr [ %i.w, %bb.b ], [ %i.k, %bb.a ]
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %0, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  tail call void %i.ab(ptr noundef nonnull %0, i32 noundef 1) #3
  tail call void @fftw_mapflags(ptr noundef nonnull %0, i32 noundef %1) #3
  %i.ac = load i64, ptr %i.a, align 4
  %i.ad = and i64 %i.ac, -7340033
  %i.ae = or disjoint i64 %i.ad, %i.d
  store i64 %i.ae, ptr %i.a, align 4
  store i32 0, ptr %i.g, align 4, !tbaa !21
  %i.af = load ptr, ptr %0, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !24
  %i.ai = tail call ptr %i.ah(ptr noundef nonnull %0, ptr noundef %2) #3, !inline_history !0
  %i.aj = load i32, ptr %i.g, align 4, !tbaa !21
  %i.ak = icmp eq i32 %i.aj, 2
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %0, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  tail call void %i.an(ptr noundef nonnull %0, i32 noundef 1) #3
  %i.ao = and i32 %1, -105
  %i.ap = or disjoint i32 %i.ao, 64
  tail call void @fftw_mapflags(ptr noundef nonnull %0, i32 noundef %i.ap) #3
  %i.aq = load i64, ptr %i.a, align 4
  %i.ar = and i64 %i.aq, -7340033
  %i.as = or disjoint i64 %i.ar, %i.d
  store i64 %i.as, ptr %i.a, align 4
  store i32 4, ptr %i.g, align 4, !tbaa !21
  %i.at = load ptr, ptr %0, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24
  %i.aw = tail call ptr %i.av(ptr noundef nonnull %0, ptr noundef %2) #3, !inline_history !0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.1 = phi ptr [ %i.aw, %bb.e ], [ %i.ai, %bb.d ], [ %.0, %bb.c ]
  ret ptr %.1
}

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #2

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #2

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @fftw_problem_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @fftw_copy_plan(ptr nofree noundef returned captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @before_planner_hook, align 8, !tbaa !11 ; 2 uses
  %.not5 = icmp eq ptr %i.a, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.a() #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !29
  %i.e = load ptr, ptr @after_planner_hook, align 8, !tbaa !11 ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.e() #3
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local void @fftw_destroy_plan(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @before_planner_hook, align 8, !tbaa !11 ; 2 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.a() #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = add i64 %i.c, -1
end_hunk_0
