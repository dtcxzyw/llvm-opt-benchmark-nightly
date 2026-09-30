Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/pseudo-merge?download=true
inline.NumInlined: 75
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@find_pseudo_merge_group_for_ref:bb.a

st_mult.exit90:                                   ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %.064, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !31
  %i.cq = shl nuw i64 %.87, 3
  %i.cr = call ptr @xrealloc(ptr noundef %i.cp, i64 noundef %i.cq) #13 ; 2 uses
  store ptr %i.cr, ptr %i.co, align 8, !tbaa !31
  %.pre99 = load i64, ptr %i.cf, align 8, !tbaa !62 ; 2 uses
  %.pre100 = add i64 %.pre99, 1
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge97, %st_mult.exit90
  %.pre-phi = phi i64 [ %i.ch, %._crit_edge97 ], [ %.pre100, %st_mult.exit90 ]
  %i.cs = phi i64 [ %i.cg, %._crit_edge97 ], [ %.pre99, %st_mult.exit90 ]
  %i.ct = phi ptr [ %.pre98, %._crit_edge97 ], [ %i.cr, %st_mult.exit90 ]
  store i64 %.pre-phi, ptr %i.cf, align 8, !tbaa !62
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs
  store ptr %i.f, ptr %i.cu, align 8, !tbaa !64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.z, %bb.u
  call void @strbuf_release(ptr noundef nonnull %3) #13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.e, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.cv = add i32 %.06593, 1                      ; 2 uses
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %i.cx = load i64, ptr %i.m, align 8, !tbaa !58
  %i.cy = icmp ugt i64 %i.cx, %i.cw
  br i1 %i.cy, label %bb.e, label %.loopexit, !llvm.loop !115

.loopexit:                                        ; preds = %bb.ab, %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 0
}

declare void @display_progress(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @free_pseudo_merge_map(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i64 [ %i.l, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %.08 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.a ]
  %i.d = load ptr, ptr %0, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  tail call void @ewah_pool_free(ptr noundef %i.f) #13
  %i.g = load ptr, ptr %0, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79
  tail call void @ewah_pool_free(ptr noundef %i.j) #13
  %i.k = add i32 %.08, 1                          ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !75
  %i.n = icmp ugt i64 %i.m, %i.l
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !129

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !76
  tail call void @free(ptr noundef %i.o) #13
  ret void
}

declare void @ewah_pool_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @pseudo_merge_bitmap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8               ; 2 uses
  %i.d = and i8 %i.c, 2
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.3, i32 noundef 528, ptr noundef nonnull @.str.4) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = and i8 %i.c, 4
  %.not8 = icmp eq i8 %i.e, 0
  br i1 %.not8, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !79
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !80
  store i64 %i.g, ptr %i.a, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !83
  %i.l = call ptr @read_bitmap(ptr noundef %i.i, i64 noundef %i.k, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !79
  %i.n = load i8, ptr %i.b, align 8
  %i.o = or i8 %i.n, 4
  store i8 %i.o, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.d ]
  ret ptr %i.p
}

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @read_bitmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @use_pseudo_merge(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef returned captures(ret: address, provenance) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 2
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !84
  store i64 %i.f, ptr %i.a, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !83
  %i.k = call ptr @read_bitmap(ptr noundef %i.h, i64 noundef %i.j, ptr noundef nonnull %i.a) #13
  store ptr %i.k, ptr %1, align 8, !tbaa !78
  %i.l = load i64, ptr %i.a, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.l, ptr %i.m, align 8, !tbaa !80
  %i.n = load i8, ptr %i.b, align 8
  %i.o = or i8 %i.n, 2
  store i8 %i.o, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @apply_pseudo_merges_for_commit(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %find_pseudo_merge.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.b
  %.021.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %i.b, %bb.b ] ; 2 uses
  %.01620.i.i = phi i64 [ %.117.i.i, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.e = add i64 %.01620.i.i, %.021.i.i
  %i.f = lshr i64 %i.e, 1                         ; 3 uses
  %i.g = mul i64 %i.f, 12                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 1
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)  ; 2 uses
  %i.k = icmp ult i32 %3, %i.j
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq i32 %3, %i.j
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i64 %i.f, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.117.i.i = phi i64 [ %i.l, %bb.d ], [ %.01620.i.i, %.lr.ph.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %.021.i.i, %bb.d ], [ %i.f, %.lr.ph.i.i ] ; 2 uses
  %i.m = icmp ult i64 %.117.i.i, %.1.i.i
  br i1 %i.m, label %.lr.ph.i.i, label %find_pseudo_merge.exit.thread, !llvm.loop !130

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g ; 5 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %5 = load i32, ptr %4, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32                         ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %10 = load i8, ptr %9, align 1, !tbaa !46
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 24
  %13 = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %14 = load i8, ptr %13, align 1, !tbaa !46
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = or disjoint i64 %16, %12
  %18 = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %19 = load i8, ptr %18, align 1, !tbaa !46
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %22 = load i8, ptr %i.o, align 1, !tbaa !46
  %23 = zext i8 %22 to i64
  %24 = or disjoint i64 %17, %23
  %25 = or disjoint i64 %24, %21
  %26 = or disjoint i64 %25, %8                   ; 2 uses
  %.not38 = icmp sgt i64 %8, -1
  br i1 %.not38, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = and i64 %26, 9223372036854775807         ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !83   ; 4 uses
  %.not.i46 = icmp ult i64 %i.p, %i.r
  br i1 %.not.i46, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i32, ptr @git_gettext_enabled, align 4, !tbaa !48
  %.not4.i.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #13
  %.pre.i = load i64, ptr %i.q, align 8, !tbaa !83
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.i, %bb.h
  %i.u = phi i64 [ %.pre.i, %bb.i ], [ %i.r, %bb.h ]
  %.0.i.i = phi ptr [ %i.t, %bb.i ], [ @.str.24, %bb.h ]
  %i.v = tail call i32 (ptr, ...) @error(ptr noundef %.0.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.p, i64 noundef %i.u) #13 ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.w = add nuw i64 %i.p, 4                      ; 2 uses
  %.not17.i = icmp ult i64 %i.w, %i.r
  br i1 %.not17.i, label %pseudo_merge_ext_at.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr @git_gettext_enabled, align 4, !tbaa !48
  %.not4.i18.i = icmp eq i32 %i.x, 0
  br i1 %.not4.i18.i, label %_.exit20.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #13
  %.pre21.i = load i64, ptr %i.q, align 8, !tbaa !83
  br label %_.exit20.i

_.exit20.i:                                       ; preds = %bb.l, %bb.k
  %i.z = phi i64 [ %.pre21.i, %bb.l ], [ %i.r, %bb.k ]
  %.0.i19.i = phi ptr [ %i.y, %bb.l ], [ @.str.25, %bb.k ]
  %i.aa = tail call i32 (ptr, ...) @error(ptr noundef %.0.i19.i, i64 noundef %i.w, i64 noundef %i.z) #13 ; 0 uses
  br label %bb.m

pseudo_merge_ext_at.exit:                         ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.p ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 1            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %find_pseudo_merge.exit.thread, label %st_mult.exit.i.lr.ph

st_mult.exit.i.lr.ph:                             ; preds = %pseudo_merge_ext_at.exit
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count = zext i32 %i.ag to i64
  br label %st_mult.exit.i

bb.m:                                             ; preds = %_.exit.i, %_.exit20.i
  %i.ai = load i32, ptr @git_gettext_enabled, align 4, !tbaa !48
  %.not4.i = icmp eq i32 %i.ai, 0
  br i1 %.not4.i, label %_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #13
  br label %_.exit

_.exit:                                           ; preds = %bb.m, %bb.n
  %.0.i48 = phi ptr [ %i.aj, %bb.n ], [ @.str.5, %bb.m ]
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = tail call ptr @oid_to_hex(ptr noundef nonnull %i.ak) #13
  tail call void (ptr, ...) @warning(ptr noundef %.0.i48, ptr noundef %i.al) #13
  br label %find_pseudo_merge.exit.thread

st_mult.exit.i:                                   ; preds = %st_mult.exit.i.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %st_mult.exit.i.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %.03387 = phi i32 [ 0, %st_mult.exit.i.lr.ph ], [ %spec.select, %bb.q ] ; 3 uses
  %i.am = shl nuw nsw i64 %indvars.iv, 3
  %27 = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.am ; 2 uses
  %28 = load i32, ptr %27, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %27, i64 4
  %29 = load i32, ptr %i.an, align 1
  %30 = zext i32 %28 to i64
  %31 = zext i32 %29 to i64
  %32 = shl nuw i64 %31, 32
  %33 = or disjoint i64 %32, %30
  %op.rdx = tail call i64 @llvm.bswap.i64(i64 %33) ; 3 uses
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !83  ; 2 uses
  %.not15.i = icmp ult i64 %op.rdx, %i.ao
  br i1 %.not15.i, label %nth_pseudo_merge_ext.exit, label %bb.o

bb.o:                                             ; preds = %st_mult.exit.i
  %i.ap = load i32, ptr @git_gettext_enabled, align 4, !tbaa !48
  %.not4.i16.i = icmp eq i32 %i.ap, 0
  br i1 %.not4.i16.i, label %nth_pseudo_merge_ext.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #13
  %.pre.i54 = load i64, ptr %i.q, align 8, !tbaa !83
  br label %nth_pseudo_merge_ext.exit.thread

nth_pseudo_merge_ext.exit.thread:                 ; preds = %bb.o, %bb.p
  %i.ar = phi i64 [ %.pre.i54, %bb.p ], [ %i.ao, %bb.o ]
  %.0.i17.i = phi ptr [ %i.aq, %bb.p ], [ @.str.27, %bb.o ]
  %i.as = tail call i32 (ptr, ...) @error(ptr noundef %.0.i17.i, i64 noundef %op.rdx, i64 noundef %i.ar) #13 ; 0 uses
  br label %find_pseudo_merge.exit.thread

nth_pseudo_merge_ext.exit:                        ; preds = %st_mult.exit.i
  %i.at = tail call fastcc ptr @pseudo_merge_at(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, i64 noundef %op.rdx) ; 2 uses
  %.not41 = icmp eq ptr %i.at, null
  br i1 %.not41, label %find_pseudo_merge.exit.thread, label %bb.q

bb.q:                                             ; preds = %nth_pseudo_merge_ext.exit
  %i.au = tail call fastcc i32 @apply_pseudo_merge(ptr noundef nonnull %0, ptr noundef nonnull %i.at, ptr noundef %1, ptr noundef null)
  %spec.select = add nuw nsw i32 %i.au, %.03387   ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %st_mult.exit.i, !llvm.loop !131

bb.r:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = tail call fastcc ptr @pseudo_merge_at(ptr noundef %0, ptr noundef nonnull %i.av, i64 noundef %26) ; 2 uses
  %.not39 = icmp eq ptr %i.aw, null
  br i1 %.not39, label %find_pseudo_merge.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = tail call fastcc i32 @apply_pseudo_merge(ptr noundef %0, ptr noundef nonnull %i.aw, ptr noundef %1, ptr noundef null)
  %.not40 = icmp eq i32 %i.ax, 0
  br i1 %.not40, label %find_pseudo_merge.exit.thread, label %.thread75

._crit_edge:                                      ; preds = %bb.q
  %.not43 = icmp eq i32 %spec.select, 0
  br i1 %.not43, label %find_pseudo_merge.exit.thread, label %.thread75

.thread75:                                        ; preds = %bb.s, %._crit_edge
  %.378 = phi i32 [ %spec.select, %._crit_edge ], [ 1, %bb.s ]
  %i.ay = tail call i32 @cascade_pseudo_merges(ptr noundef %0, ptr noundef %1, ptr noundef null) ; 0 uses
  br label %find_pseudo_merge.exit.thread

find_pseudo_merge.exit.thread:                    ; preds = %bb.e, %nth_pseudo_merge_ext.exit, %pseudo_merge_ext_at.exit, %bb.s, %nth_pseudo_merge_ext.exit.thread, %_.exit, %bb.a, %._crit_edge, %.thread75, %bb.r
  %.135 = phi i32 [ 0, %bb.r ], [ %.03387, %nth_pseudo_merge_ext.exit ], [ 0, %_.exit ], [ %.378, %.thread75 ], [ 0, %._crit_edge ], [ 0, %bb.a ], [ %.03387, %nth_pseudo_merge_ext.exit.thread ], [ 0, %bb.s ], [ 0, %pseudo_merge_ext_at.exit ], [ 0, %bb.e ]
  ret i32 %.135
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @warning(ptr noundef, ...) local_unnamed_addr #2

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pseudo_merge_at(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  %.not36 = icmp eq i64 %i.c, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !76
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %use_pseudo_merge.exit
  %.02035 = phi i64 [ %i.c, %.lr.ph ], [ %.1, %use_pseudo_merge.exit ] ; 2 uses
  %.02134 = phi i64 [ 0, %.lr.ph ], [ %.122, %use_pseudo_merge.exit ] ; 3 uses
  %i.e = sub nuw i64 %.02035, %.02134
  %i.f = lshr i64 %i.e, 1
  %i.g = add i64 %i.f, %.02134                    ; 3 uses
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.g ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !84   ; 2 uses
  %.not = icmp eq i64 %i.j, %2
  br i1 %.not, label %bb.c, label %use_pseudo_merge.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 2
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.d, label %use_pseudo_merge.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %2, ptr %i.a, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !83
  %i.r = call ptr @read_bitmap(ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.a) #13
  store ptr %i.r, ptr %i.h, align 8, !tbaa !78
  %i.s = load i64, ptr %i.a, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.s, ptr %i.t, align 8, !tbaa !80
  %i.u = load i8, ptr %i.k, align 8
  %i.v = or i8 %i.u, 2
  store i8 %i.v, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %use_pseudo_merge.exit.thread

use_pseudo_merge.exit:                            ; preds = %bb.b
  %i.w = icmp ult i64 %i.j, %2                    ; 2 uses
  %i.x = add i64 %i.g, 1
  %.122 = select i1 %i.w, i64 %i.x, i64 %.02134   ; 2 uses
  %.1 = select i1 %i.w, i64 %.02035, i64 %i.g     ; 2 uses
  %i.y = icmp ult i64 %.122, %.1
  br i1 %i.y, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %use_pseudo_merge.exit, %bb.a
  %i.z = load i32, ptr @git_gettext_enabled, align 4, !tbaa !48
  %.not4.i = icmp eq i32 %i.z, 0
  br i1 %.not4.i, label %_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.aa = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #13
  br label %_.exit

_.exit:                                           ; preds = %._crit_edge, %bb.e
  %.0.i = phi ptr [ %i.aa, %bb.e ], [ @.str.28, %._crit_edge ]
  %i.ab = tail call ptr @oid_to_hex(ptr noundef %1) #13
  tail call void (ptr, ...) @warning(ptr noundef %.0.i, ptr noundef %i.ab, i64 noundef %2) #13
  br label %use_pseudo_merge.exit.thread

use_pseudo_merge.exit.thread:                     ; preds = %bb.c, %bb.d, %_.exit
  %.226 = phi ptr [ null, %_.exit ], [ %i.h, %bb.d ], [ %i.h, %bb.c ]
  ret ptr %.226
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @apply_pseudo_merge(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !78
  %.not14 = icmp eq ptr %3, null                  ; 2 uses
  %i.g = select i1 %.not14, ptr %2, ptr %3
  %i.h = tail call i32 @ewah_bitmap_is_subset(ptr noundef %i.f, ptr noundef %i.g) #13
  %.not15 = icmp eq i32 %i.h, 0
  br i1 %.not15, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.c, align 8               ; 2 uses
  %i.j = and i8 %i.i, 2
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.3, i32 noundef 528, ptr noundef nonnull @.str.4) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = and i8 %i.i, 4
  %.not8.i = icmp eq i8 %i.k, 0
  br i1 %.not8.i, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %pseudo_merge_bitmap.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !80
  store i64 %i.m, ptr %i.b, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !83
  %i.r = call ptr @read_bitmap(ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.b) #13 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !79
  %i.t = load i8, ptr %i.c, align 8
  %i.u = or i8 %i.t, 4
  store i8 %i.u, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %pseudo_merge_bitmap.exit

pseudo_merge_bitmap.exit:                         ; preds = %._crit_edge.i, %bb.f
  %i.v = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.r, %bb.f ]
  call void @bitmap_or_ewah(ptr noundef %2, ptr noundef %i.v) #13
  br i1 %.not14, label %bb.k, label %bb.g

bb.g:                                             ; preds = %pseudo_merge_bitmap.exit
  %i.w = load i8, ptr %i.c, align 8               ; 2 uses
  %i.x = and i8 %i.w, 2
  %.not.i16 = icmp eq i8 %i.x, 0
  br i1 %.not.i16, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.3, i32 noundef 528, ptr noundef nonnull @.str.4) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.y = and i8 %i.w, 4
  %.not8.i17 = icmp eq i8 %i.y, 0
  br i1 %.not8.i17, label %bb.j, label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %bb.i
  %.phi.trans.insert.i19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i20 = load ptr, ptr %.phi.trans.insert.i19, align 8, !tbaa !79
  br label %pseudo_merge_bitmap.exit21

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !80
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !83
  %i.af = call ptr @read_bitmap(ptr noundef %i.ac, i64 noundef %i.ae, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
begin_hunk_1_@pseudo_merge_idx:bb.a

kh_resize_oid_map.exit:                           ; preds = %._crit_edge149.thread.i, %.sink.split.i, %bb.a
  %i.ds = phi i32 [ %spec.store.select.i, %._crit_edge149.thread.i ], [ %.pre, %.sink.split.i ], [ %.pre, %bb.a ] ; 5 uses
  %i.dt = add i32 %i.ds, -1                       ; 2 uses
  %.val.i = load i32, ptr %3, align 8
  %i.du = and i32 %.val.i, %i.dt                  ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !148 ; 3 uses
  %i.dx = lshr i32 %i.du, 4
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !48
  %i.eb = shl i32 %i.du, 1
  %i.ec = and i32 %i.eb, 30
  %i.ed = shl nuw i32 2, %i.ec
  %i.ee = and i32 %i.ed, %i.ea
  %.not78.i = icmp eq i32 %i.ee, 0
  br i1 %.not78.i, label %.preheader.i, label %bb.l

.preheader.i:                                     ; preds = %kh_resize_oid_map.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

bb.i:                                             ; preds = %.critedge2.i, %.preheader.i
  %.069.i = phi i32 [ %i.fh, %.critedge2.i ], [ %i.du, %.preheader.i ] ; 6 uses
  %.068.i = phi i32 [ %spec.select.i, %.critedge2.i ], [ %i.ds, %.preheader.i ] ; 2 uses
  %.0.i = phi i32 [ %i.ff, %.critedge2.i ], [ 0, %.preheader.i ]
  %i.eg = lshr i32 %.069.i, 4
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !48 ; 3 uses
  %i.ek = shl i32 %.069.i, 1
  %i.el = and i32 %i.ek, 30                       ; 3 uses
  %i.em = lshr i32 %i.ej, %i.el                   ; 2 uses
  %i.en = and i32 %i.em, 2
  %.not79.i = icmp eq i32 %i.en, 0
  br i1 %.not79.i, label %bb.j, label %.critedge.thread.loopexit.i

bb.j:                                             ; preds = %bb.i
  %i.eo = and i32 %i.em, 1
  %.not80.i = icmp eq i32 %i.eo, 0
  br i1 %.not80.i, label %bb.k, label %.critedge2.i

bb.k:                                             ; preds = %bb.j
  %i.ep = load ptr, ptr %i.ef, align 8, !tbaa !146
  %i.eq = zext i32 %.069.i to i64
  %i.er = getelementptr inbounds nuw [36 x i8], ptr %i.ep, i64 %i.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 4 dereferenceable(36) %i.er, i64 36, i1 false), !tbaa.struct !151
  %i.es = load i128, ptr %2, align 8
  %i.et = load i128, ptr %3, align 8
  %i.eu = xor i128 %i.es, %i.et
  %i.ev = getelementptr i8, ptr %2, i64 16
  %i.ew = getelementptr i8, ptr %3, i64 16
  %i.ex = load i128, ptr %i.ev, align 8
  %i.ey = load i128, ptr %i.ew, align 8
  %i.ez = xor i128 %i.ex, %i.ey
  %i.fa = or i128 %i.eu, %i.ez
  %i.fb = icmp ne i128 %i.fa, 0
  %i.fc = zext i1 %i.fb to i32
  %.not.i.i.not.i = icmp eq i32 %i.fc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br i1 %.not.i.i.not.i, label %.critedge.thread.loopexit.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.k, %bb.j
  %i.fd = shl nuw nsw i32 1, %i.el
  %i.fe = and i32 %i.ej, %i.fd
  %.not82.i = icmp eq i32 %i.fe, 0
  %spec.select.i = select i1 %.not82.i, i32 %.068.i, i32 %.069.i ; 3 uses
  %i.ff = add i32 %.0.i, 1                        ; 2 uses
  %i.fg = add i32 %i.ff, %.069.i
  %i.fh = and i32 %i.fg, %i.dt                    ; 2 uses
  %i.fi = icmp eq i32 %i.fh, %i.du
  br i1 %i.fi, label %.critedge.i, label %bb.i, !llvm.loop !140

.critedge.i:                                      ; preds = %.critedge2.i
  %i.fj = icmp eq i32 %spec.select.i, %i.ds
  br i1 %i.fj, label %.critedge.thread.i, label %bb.l

.critedge.thread.loopexit.i:                      ; preds = %bb.k, %bb.i
  %.pre.i = shl nuw i32 2, %i.el
  %.pre101.i = and i32 %.pre.i, %i.ej
  %i.fk = icmp eq i32 %.pre101.i, 0
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.thread.loopexit.i, %.critedge.i
  %.pre-phi102.i = phi i1 [ %i.fk, %.critedge.thread.loopexit.i ], [ true, %.critedge.i ]
  %.292.i = phi i32 [ %.068.i, %.critedge.thread.loopexit.i ], [ %i.ds, %.critedge.i ] ; 2 uses
  %.17091.i = phi i32 [ %.069.i, %.critedge.thread.loopexit.i ], [ %i.du, %.critedge.i ]
  %.not84.i = icmp eq i32 %.292.i, %i.ds
  %or.cond.i = select i1 %.pre-phi102.i, i1 true, i1 %.not84.i
  %spec.select87.i = select i1 %or.cond.i, i32 %.17091.i, i32 %.292.i
  br label %bb.l

bb.l:                                             ; preds = %.critedge.thread.i, %.critedge.i, %kh_resize_oid_map.exit
  %.172.i = phi i32 [ %spec.select.i, %.critedge.i ], [ %i.du, %kh_resize_oid_map.exit ], [ %spec.select87.i, %.critedge.thread.i ] ; 5 uses
  %i.fl = lshr i32 %.172.i, 4
  %i.fm = zext nneg i32 %i.fl to i64              ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !48
  %i.fp = shl i32 %.172.i, 1
  %i.fq = and i32 %i.fp, 30                       ; 3 uses
  %i.fr = lshr i32 %i.fo, %i.fq                   ; 2 uses
  %i.fs = and i32 %i.fr, 2
  %.not85.i = icmp eq i32 %i.fs, 0
  br i1 %.not85.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !146
  %i.fv = zext i32 %.172.i to i64                 ; 2 uses
  %i.fw = getelementptr inbounds nuw [36 x i8], ptr %i.fu, i64 %i.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.fw, ptr noundef nonnull readonly align 8 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !151
  %i.fx = shl nuw i32 3, %i.fq
  %i.fy = xor i32 %i.fx, -1
  %i.fz = load ptr, ptr %i.dv, align 8, !tbaa !148
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fm ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !48
  %i.gc = and i32 %i.gb, %i.fy
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !48
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ge = load <2 x i32>, ptr %i.gd, align 4, !tbaa !48
  %i.gf = add <2 x i32> %i.ge, splat (i32 1)
  store <2 x i32> %i.gf, ptr %i.gd, align 4, !tbaa !48
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.gg = and i32 %i.fr, 1
  %.not86.i = icmp eq i32 %i.gg, 0
  br i1 %.not86.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !146
  %i.gj = zext i32 %.172.i to i64                 ; 2 uses
  %i.gk = getelementptr inbounds nuw [36 x i8], ptr %i.gi, i64 %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.gk, ptr noundef nonnull readonly align 8 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !151
  %i.gl = shl nuw i32 3, %i.fq
  %i.gm = xor i32 %i.gl, -1
  %i.gn = load ptr, ptr %i.dv, align 8, !tbaa !148
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.fm ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !48
  %i.gq = and i32 %i.gp, %i.gm
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !48
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !145
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !145
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.pre-phi = phi i64 [ %i.gj, %bb.o ], [ %i.fv, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.gu = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #13 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !147
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.pre-phi
  store ptr %i.gu, ptr %i.gx, align 8, !tbaa !150
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !147
  %i.ha = zext i32 %.172.i to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.ha
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !150
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi ptr [ %i.gu, %bb.p ], [ %i.hc, %bb.q ]
  ret ptr %.0
}

declare ptr @commit_list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bitmap_writer_push_commit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @alloc_commit_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

declare void @stop_progress_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

declare i32 @ewah_bitmap_is_subset(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bitmap_or_ewah(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!13 = !{!"p1 _ZTS17re_pattern_buffer", !12, i64 0}
!14 = !{!"any p2 pointer", !12, i64 0}
!15 = !{!"p2 _ZTS13hashmap_entry", !14, i64 0}
!16 = !{!"hashmap", !15, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!17 = !{!"p1 _ZTS8mem_pool", !12, i64 0}
!18 = !{!"strmap", !16, i64 0, !17, i64 48, !9, i64 56}
!19 = !{!"p2 _ZTS6commit", !14, i64 0}
!20 = !{!"long", !8, i64 0}
!21 = !{!"double", !8, i64 0}
!22 = !{!"pseudo_merge_group", !13, i64 0, !18, i64 8, !19, i64 72, !20, i64 80, !20, i64 88, !21, i64 96, !9, i64 104, !21, i64 112, !9, i64 120, !20, i64 128, !20, i64 136}
!23 = !{!22, !13, i64 0}
!24 = !{!"p1 _ZTS13hashmap_entry", !12, i64 0}
!25 = !{!"hashmap_entry", !24, i64 0, !9, i64 8}
!26 = !{!"p1 omnipotent char", !12, i64 0}
!27 = !{!"strmap_entry", !25, i64 0, !26, i64 16, !12, i64 24}
!28 = !{!27, !12, i64 24}
!29 = !{!"pseudo_merge_matches", !19, i64 0, !19, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40}
!30 = !{!29, !19, i64 0}
!31 = !{!29, !19, i64 8}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!22, !19, i64 72}
!34 = !{!"p1 _ZTS16string_list_item", !12, i64 0}
!35 = !{!"string_list", !34, i64 0, !20, i64 8, !20, i64 16, !9, i64 24, !12, i64 32}
!36 = !{!"string_list_item", !26, i64 0, !12, i64 8}
!37 = !{!36, !12, i64 8}
!38 = !{!22, !20, i64 128}
!39 = !{!22, !20, i64 136}
!40 = !{!"strbuf", !20, i64 0, !20, i64 8, !26, i64 16}
!41 = !{!40, !26, i64 16}
!42 = !{!22, !21, i64 96}
!43 = !{!22, !9, i64 104}
!44 = !{!22, !21, i64 112}
!45 = !{!22, !9, i64 120}
!46 = !{!8, !8, i64 0}
!47 = !{!40, !20, i64 8}
!48 = !{!9, !9, i64 0}
!49 = !{!"p1 _ZTS8progress", !12, i64 0}
!50 = !{!"p1 _ZTS10repository", !12, i64 0}
!51 = !{!"p1 _ZTS11ewah_bitmap", !12, i64 0}
!52 = !{!"p1 _ZTS10kh_oid_map", !12, i64 0}
!53 = !{!"p1 _ZTS12packing_data", !12, i64 0}
!54 = !{!"p1 _ZTS16multi_pack_index", !12, i64 0}
!55 = !{!"p1 _ZTS22bitmap_pos_cache_entry", !12, i64 0}
!56 = !{!"p1 _ZTS16bitmapped_commit", !12, i64 0}
!57 = !{!"bitmap_writer", !50, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !52, i64 40, !53, i64 48, !54, i64 56, !55, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !56, i64 96, !9, i64 104, !9, i64 108, !35, i64 112, !52, i64 152, !9, i64 160, !49, i64 168, !9, i64 176, !8, i64 180}
!58 = !{!57, !20, i64 120}
!59 = !{!50, !50, i64 0}
!60 = !{!57, !34, i64 112}
!61 = !{!29, !20, i64 16}
!62 = !{!29, !20, i64 32}
!63 = !{!"p1 _ZTS6commit", !12, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"p1 int", !12, i64 0}
!66 = !{!"object_id", !8, i64 0, !9, i64 32}
!67 = !{!"object", !9, i64 0, !9, i64 0, !9, i64 4, !66, i64 8}
!68 = !{!"p1 _ZTS11commit_list", !12, i64 0}
!69 = !{!"p1 _ZTS4tree", !12, i64 0}
!70 = !{!"commit", !67, i64 0, !20, i64 48, !68, i64 56, !69, i64 64, !9, i64 72}
!71 = !{!"p1 _ZTS9object_id", !12, i64 0}
!72 = !{!70, !20, i64 48}
!73 = !{!"p1 _ZTS12pseudo_merge", !12, i64 0}
!74 = !{!"pseudo_merge_map", !73, i64 0, !20, i64 8, !20, i64 16, !26, i64 24, !26, i64 32, !20, i64 40}
!75 = !{!74, !20, i64 8}
!76 = !{!74, !73, i64 0}
!77 = !{!"pseudo_merge", !51, i64 0, !51, i64 8, !20, i64 16, !20, i64 24, !9, i64 32, !9, i64 32, !9, i64 32}
!78 = !{!77, !51, i64 0}
!79 = !{!77, !51, i64 8}
!80 = !{!77, !20, i64 24}
!81 = !{!20, !20, i64 0}
!82 = !{!74, !26, i64 24}
!83 = !{!74, !20, i64 40}
!84 = !{!77, !20, i64 16}
!85 = distinct !{!85, !32}
!86 = !{!35, !34, i64 0}
!87 = !{!35, !20, i64 8}
!88 = !{!36, !26, i64 0}
!89 = !{!26, !26, i64 0}
!90 = !{!"p1 _ZTS14key_value_info", !12, i64 0}
!91 = !{!"config_context", !90, i64 0}
!92 = !{!91, !90, i64 0}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !32}
!95 = distinct !{!95, !32}
!96 = distinct !{!96, !113}
!97 = distinct !{!97, !113}
!98 = distinct !{!98, !32}
!99 = distinct !{!99, !32}
!100 = distinct !{!100, !32}
!101 = distinct !{!101, !32}
!102 = !{!49, !49, i64 0}
!103 = !{!57, !9, i64 176}
!104 = !{!22, !20, i64 80}
!105 = !{!22, !20, i64 88}
!106 = !{!57, !52, i64 152}
!107 = !{!"pseudo_merge_commit_idx", !65, i64 0, !20, i64 8, !20, i64 16}
!108 = !{!107, !20, i64 8}
!109 = !{!107, !20, i64 16}
!110 = !{!107, !65, i64 0}
!111 = !{!57, !9, i64 160}
!112 = !{!70, !68, i64 56}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = distinct !{!114, !32}
!115 = distinct !{!115, !32}
!116 = !{!"reference", !26, i64 0, !26, i64 8, !71, i64 16, !71, i64 24, !9, i64 32}
!117 = !{!116, !71, i64 16}
!118 = !{!57, !53, i64 48}
!119 = !{!116, !26, i64 0}
!120 = !{!"", !9, i64 0, !9, i64 4}
!121 = !{!120, !9, i64 0}
!122 = !{!"p1 _ZTS8re_dfa_t", !12, i64 0}
!123 = !{!"re_pattern_buffer", !122, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !26, i64 32, !26, i64 40, !20, i64 48, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56}
!124 = !{!123, !20, i64 48}
!125 = !{!40, !20, i64 0}
!126 = !{!120, !9, i64 4}
!127 = !{!29, !20, i64 24}
!128 = !{!29, !20, i64 40}
!129 = distinct !{!129, !32}
!130 = distinct !{!130, !32}
!131 = distinct !{!131, !32}
!132 = !{!74, !20, i64 16}
!133 = !{!74, !26, i64 32}
!134 = distinct !{!134, !32}
!135 = distinct !{!135, !32, !136}
!136 = !{!"llvm.loop.unswitch.partial.disable"}
!137 = distinct !{!137, !32}
!138 = distinct !{!138, !32}
!139 = distinct !{!139, !32}
!140 = distinct !{!140, !32}
!141 = !{!"kh_oid_map", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !65, i64 16, !71, i64 24, !14, i64 32}
!142 = !{!141, !9, i64 8}
!143 = !{!141, !9, i64 12}
!144 = !{!141, !9, i64 0}
!145 = !{!141, !9, i64 4}
!146 = !{!141, !71, i64 24}
!147 = !{!141, !14, i64 32}
!148 = !{!141, !65, i64 16}
!149 = !{i64 0, i64 28, !46, i64 28, i64 4, !48}
!150 = !{!12, !12, i64 0}
!151 = !{i64 0, i64 32, !46, i64 32, i64 4, !48}
end_hunk_1
