Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/strbuf?download=true
inline.NumInlined: 143
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@humanise_bytes:bb.a
bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #27
  br label %_.exit

_.exit:                                           ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.c ], [ @.str.22, %bb.b ]
  %i.e = lshr i64 %0, 30
  %i.f = trunc i64 %i.e to i32
  %i.g = trunc i64 %0 to i32
  %i.h = and i32 %i.g, 1073741823
  %i.i = udiv i32 %i.h, 10737419
  %i.j = tail call ptr (ptr, ...) @xstrfmt(ptr noundef %.0.i, i32 noundef %i.f, i32 noundef %i.i)
  store ptr %i.j, ptr %1, align 8, !tbaa !18
  %.not33 = icmp eq i32 %i.a, 0
  %i.k = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i37 = icmp eq i32 %i.k, 0
  %.str.28..str.27 = select i1 %.not33, ptr @.str.28, ptr @.str.27 ; 2 uses
  br i1 %.not4.i37, label %_.exit36, label %_.exit36.sink.split

_.exit36.sink.split:                              ; preds = %_.exit
  %i.l = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.28..str.27, i32 noundef 5) #27
  br label %_.exit36

bb.d:                                             ; preds = %bb.a
  %i.m = icmp sgt i64 %0, 1048576
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = trunc nuw nsw i64 %0 to i32
  %i.o = add nuw nsw i32 %i.n, 5243               ; 2 uses
  %i.p = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i40 = icmp eq i32 %i.p, 0
  br i1 %.not4.i40, label %_.exit42, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #27
  br label %_.exit42

_.exit42:                                         ; preds = %bb.e, %bb.f
  %.0.i41 = phi ptr [ %i.q, %bb.f ], [ @.str.22, %bb.e ]
  %i.r = lshr i32 %i.o, 20
  %i.s = and i32 %i.o, 1048575
  %i.t = mul nuw nsw i32 %i.s, 100
  %i.u = lshr i32 %i.t, 20
  %i.v = tail call ptr (ptr, ...) @xstrfmt(ptr noundef %.0.i41, i32 noundef %i.r, i32 noundef %i.u)
  store ptr %i.v, ptr %1, align 8, !tbaa !18
  %.not32 = icmp eq i32 %i.a, 0
  %i.w = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i46 = icmp eq i32 %i.w, 0
  %.str.30..str.29 = select i1 %.not32, ptr @.str.30, ptr @.str.29 ; 2 uses
  br i1 %.not4.i46, label %_.exit36, label %_.exit45.sink.split

_.exit45.sink.split:                              ; preds = %_.exit42
  %i.x = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.30..str.29, i32 noundef 5) #27
  br label %_.exit36

bb.g:                                             ; preds = %bb.d
  %i.y = icmp sgt i64 %0, 1024
  %i.z = trunc i64 %0 to i32                      ; 2 uses
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = add nuw nsw i32 %i.z, 5                 ; 2 uses
  %i.ab = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i49 = icmp eq i32 %i.ab, 0
  br i1 %.not4.i49, label %_.exit51, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #27
  br label %_.exit51

_.exit51:                                         ; preds = %bb.h, %bb.i
  %.0.i50 = phi ptr [ %i.ac, %bb.i ], [ @.str.22, %bb.h ]
  %i.ad = lshr i32 %i.aa, 10
  %i.ae = and i32 %i.aa, 1023
  %i.af = mul nuw nsw i32 %i.ae, 100
  %i.ag = lshr i32 %i.af, 10
  %i.ah = tail call ptr (ptr, ...) @xstrfmt(ptr noundef %.0.i50, i32 noundef %i.ad, i32 noundef %i.ag)
  store ptr %i.ah, ptr %1, align 8, !tbaa !18
  %.not31 = icmp eq i32 %i.a, 0
  %i.ai = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i55 = icmp eq i32 %i.ai, 0
  %.str.32..str.31 = select i1 %.not31, ptr @.str.32, ptr @.str.31 ; 2 uses
  br i1 %.not4.i55, label %_.exit36, label %_.exit54.sink.split

_.exit54.sink.split:                              ; preds = %_.exit51
  %i.aj = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.32..str.31, i32 noundef 5) #27
  br label %_.exit36

bb.j:                                             ; preds = %bb.g
  %i.ak = tail call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.26, i32 noundef %i.z)
  store ptr %i.ak, ptr %1, align 8, !tbaa !18
  %i.al = and i32 %3, 2
  %.not = icmp eq i32 %i.al, 0
  %.not29 = icmp eq i32 %i.a, 0                   ; 2 uses
  %i.am = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not.i65 = icmp eq i32 %i.am, 0                ; 3 uses
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.str.34..str.33 = select i1 %.not29, ptr @.str.34, ptr @.str.33 ; 2 uses
  br i1 %.not.i65, label %_.exit36, label %_.exit60.sink.split

_.exit60.sink.split:                              ; preds = %bb.k
  %i.an = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.34..str.33, i32 noundef 5) #27
  br label %_.exit36

bb.l:                                             ; preds = %bb.j
  br i1 %.not29, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i65, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ao = icmp eq i64 %0, 1
  %i.ap = select i1 %i.ao, ptr @.str.35, ptr @.str.36
  br label %_.exit36

bb.o:                                             ; preds = %bb.m
  %i.aq = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i64 noundef range(i64 -9223372036854775808, 1025) %0, i32 noundef 5) #27
  br label %_.exit36

bb.p:                                             ; preds = %bb.l
  br i1 %.not.i65, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = icmp eq i64 %0, 1
  %i.as = select i1 %i.ar, ptr @.str.37, ptr @.str.38
  br label %_.exit36

bb.r:                                             ; preds = %bb.p
  %i.at = tail call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i64 noundef range(i64 -9223372036854775808, 1025) %0, i32 noundef 5) #27
  br label %_.exit36

_.exit36:                                         ; preds = %bb.k, %_.exit51, %_.exit42, %_.exit, %bb.n, %bb.o, %bb.q, %bb.r, %_.exit60.sink.split, %_.exit54.sink.split, %_.exit45.sink.split, %_.exit36.sink.split
  %.sink = phi ptr [ %i.l, %_.exit36.sink.split ], [ %i.aj, %_.exit54.sink.split ], [ %i.an, %_.exit60.sink.split ], [ %i.x, %_.exit45.sink.split ], [ %.str.28..str.27, %_.exit ], [ %i.as, %bb.q ], [ %.str.30..str.29, %_.exit42 ], [ %i.at, %bb.r ], [ %.str.32..str.31, %_.exit51 ], [ %i.aq, %bb.o ], [ %.str.34..str.33, %bb.k ], [ %i.ap, %bb.n ]
  store ptr %.sink, ptr %2, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_humanise_bytes(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @humanise_bytes(i64 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.c = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i.i = icmp eq i32 %i.c, 0
  br i1 %.not4.i.i, label %strbuf_humanise.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #27
  br label %strbuf_humanise.exit

strbuf_humanise.exit:                             ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ @.str.52, %bb.a ]
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !18
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %0, ptr noundef %.0.i.i, ptr noundef %i.e, ptr noundef %i.f)
  tail call void @free(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_humanise_rate(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @humanise_bytes(i64 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.c = load i32, ptr @git_gettext_enabled, align 4, !tbaa !27
  %.not4.i.i = icmp eq i32 %i.c, 0
  br i1 %.not4.i.i, label %strbuf_humanise.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #27
  br label %strbuf_humanise.exit

strbuf_humanise.exit:                             ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ @.str.52, %bb.a ]
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !18
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %0, ptr noundef %.0.i.i, ptr noundef %i.e, ptr noundef %i.f)
  tail call void @free(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @printf_ln(ptr nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #19 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !52, !noalias !53
  %i.b = call i32 @vfprintf(ptr noundef %i.a, ptr noundef %0, ptr noundef nonnull %1) #27, !inline_history !49 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !52
  %i.e = call i32 @putc(i32 noundef 10, ptr noundef %i.d), !inline_history !50
  %i.f = icmp eq i32 %i.e, -1
  %i.g = add nuw nsw i32 %i.b, 1
  %spec.select = select i1 %i.f, i32 -1, i32 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @fprintf_ln(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #19 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #27 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @putc(i32 noundef 10, ptr noundef %0)
  %i.d = icmp eq i32 %i.c, -1
  %i.e = add nuw nsw i32 %i.a, 1
  %spec.select = select i1 %i.d, i32 -1, i32 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local ptr @xstrdup_tolower(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28 ; 6 uses
  %i.b = tail call ptr @xmallocz(i64 noundef %i.a) #27 ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.a, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.u, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14    ; 2 uses
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = shl i8 %i.h, 3
  %i.j = and i8 %i.i, 32
  %.0.i9 = or i8 %i.j, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.010
  store i8 %.0.i9, ptr %i.k, align 1, !tbaa !14
  %i.l = or disjoint i64 %.010, 1                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14    ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = shl i8 %i.q, 3
  %i.s = and i8 %i.r, 32
  %.0.i9.1 = or i8 %i.s, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l
  store i8 %.0.i9.1, ptr %i.t, align 1, !tbaa !14
  %i.u = add nuw i64 %.010, 2                     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !54

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.010.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.010.epil.init
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14    ; 2 uses
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = shl i8 %i.z, 3
  %i.ab = and i8 %i.aa, 32
  %.0.i9.epil = or i8 %i.ab, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %.010.epil.init
  store i8 %.0.i9.epil, ptr %i.ac, align 1, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret ptr %i.b
}

declare ptr @xmallocz(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @xstrdup_toupper(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28 ; 6 uses
  %i.b = tail call ptr @xmallocz(i64 noundef %i.a) #27 ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.a, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.09 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.09
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14    ; 3 uses
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = and i8 %i.h, 4
  %.not.i = icmp eq i8 %i.i, 0
  %i.j = and i8 %i.e, -33
  %i.k = select i1 %.not.i, i8 %i.e, i8 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %.09
  store i8 %i.k, ptr %i.l, align 1, !tbaa !14
  %i.m = or disjoint i64 %.09, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14    ; 3 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = and i8 %i.r, 4
  %.not.i.1 = icmp eq i8 %i.s, 0
  %i.t = and i8 %i.o, -33
  %i.u = select i1 %.not.i.1, i8 %i.o, i8 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  store i8 %i.u, ptr %i.v, align 1, !tbaa !14
  %i.w = add nuw i64 %.09, 2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !55

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.09.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod10 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.09.epil.init
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14    ; 3 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = and i8 %i.ab, 4
  %.not.i.epil = icmp eq i8 %i.ac, 0
  %i.ad = and i8 %i.y, -33
  %i.ae = select i1 %.not.i.epil, i8 %i.y, i8 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %.09.epil.init
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @xstrvfmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.strbuf_addftime.munged_fmt, i64 24, i1 false)
  call void @strbuf_vaddf(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1)
  %i.a = load i64, ptr %2, align 8, !tbaa !22     ; 3 uses
  %.not.i.i = icmp eq i64 %i.a, 0                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 1) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.b, label %st_add.exit19.i.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.c, i64 noundef 1) #26
  unreachable

st_add.exit19.i.i:                                ; preds = %bb.a
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %st_add.exit19.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %st_add.exit19.i.i
  %i.h = icmp ugt i64 %i.f, %i.a
  br i1 %i.h, label %bb.e, label %.strbuf_detach.exit_crit_edge

.strbuf_detach.exit_crit_edge:                    ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %strbuf_detach.exit

bb.e:                                             ; preds = %bb.d
  %i.i = mul i64 %i.a, 3
  %i.j = add i64 %i.i, 48
  %i.k = lshr i64 %i.j, 1
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = tail call ptr @xrealloc(ptr noundef %i.m, i64 noundef %..i.i) #27 ; 3 uses
  br i1 %.not.i.i, label %bb.f, label %strbuf_detach.exit

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.n, align 1, !tbaa !14
  br label %strbuf_detach.exit

strbuf_detach.exit:                               ; preds = %.strbuf_detach.exit_crit_edge, %bb.e, %bb.f
  %i.o = phi ptr [ %.pre, %.strbuf_detach.exit_crit_edge ], [ %i.n, %bb.e ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %i.o
}

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_addftime(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %struct.strbuf, align 8             ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.strbuf_addftime.munged_fmt, i64 24, i1 false)
  %i.a = load i8, ptr %1, align 1, !tbaa !14
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %strbuf_setlen.exit, label %.preheader83

.preheader83:                                     ; preds = %bb.a
  %i.b = tail call ptr @strchrnul(ptr noundef nonnull %1, i32 noundef 37) #28 ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %1, i64 noundef %i.e)
  %i.f = load i8, ptr %i.b, align 1, !tbaa !14
  %.not.i96 = icmp eq i8 %i.f, 0
  br i1 %.not.i96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader83
  %.not31 = icmp ne i32 %4, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.h = sdiv i32 %3, 100
  %i.i = mul nsw i32 %i.h, 3600
  %i.j = sext i32 %i.i to i64
  %i.k = srem i32 %3, 100
  %.neg98 = mul nsw i32 %i.k, -60
  %.neg81 = sext i32 %.neg98 to i64
  %.neg82 = sub nsw i64 %.neg81, %i.j
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %skip_prefix_impl.exit44.thread
  %i.l = phi ptr [ %i.b, %.lr.ph ], [ %i.ag, %skip_prefix_impl.exit44.thread ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 2    ; 4 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14    ; 2 uses
  switch i8 %i.n, label %skip_prefix_impl.exit40 [
    i8 37, label %bb.c
    i8 115, label %skip_prefix_impl.exit.1
    i8 122, label %skip_prefix_impl.exit36.1
  ]

bb.c:                                             ; preds = %bb.b
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull @.str.40, i64 noundef 2)
  br label %skip_prefix_impl.exit44.thread

skip_prefix_impl.exit.1:                          ; preds = %bb.b
  %i.o = tail call i64 @tm_to_time_t(ptr noundef %2) #27
  %i.p = add i64 %.neg82, %i.o
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %5, ptr noundef nonnull @.str.42, i64 noundef %i.p)
  br label %skip_prefix_impl.exit44.thread

skip_prefix_impl.exit36.1:                        ; preds = %bb.b
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %5, ptr noundef nonnull @.str.44, i32 noundef %3)
  br label %skip_prefix_impl.exit44.thread

skip_prefix_impl.exit40:                          ; preds = %bb.b
  %i.q = icmp eq i8 %i.n, 90
  %or.cond = and i1 %.not31, %i.q
  br i1 %or.cond, label %skip_prefix_impl.exit44.thread, label %skip_prefix_impl.exit44

skip_prefix_impl.exit44:                          ; preds = %skip_prefix_impl.exit40
  %i.r = load i64, ptr %5, align 8, !tbaa !22     ; 4 uses
  %.not.i.i = icmp eq i64 %i.r, 0                 ; 3 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !23 ; 4 uses
  %.neg.i = add i64 %.pre.i, 1                    ; 3 uses
  %.not.i45 = icmp eq i64 %i.r, %.neg.i
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %.not.i45
  br i1 %or.cond.i, label %strbuf_avail.exit.thread.i, label %skip_prefix_impl.exit44.strbuf_addch.exit_crit_edge

skip_prefix_impl.exit44.strbuf_addch.exit_crit_edge: ; preds = %skip_prefix_impl.exit44
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %skip_prefix_impl.exit44
  %i.s = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.pre.i, i64 1) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %bb.d, label %st_add.exit.i.i

bb.d:                                             ; preds = %strbuf_avail.exit.thread.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %.pre.i, i64 noundef 1) #26
  unreachable

st_add.exit.i.i:                                  ; preds = %strbuf_avail.exit.thread.i
  %i.u = extractvalue { i64, i1 } %i.s, 0         ; 2 uses
  %i.v = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.u, i64 1) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.w, label %bb.e, label %st_add.exit19.i.i

bb.e:                                             ; preds = %st_add.exit.i.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.u, i64 noundef 1) #26
  unreachable

st_add.exit19.i.i:                                ; preds = %st_add.exit.i.i
  %i.x = extractvalue { i64, i1 } %i.v, 0         ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %st_add.exit19.i.i._crit_edge

st_add.exit19.i.i._crit_edge:                     ; preds = %st_add.exit19.i.i
  %.pre116.pre = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %bb.g

bb.f:                                             ; preds = %st_add.exit19.i.i
  store ptr null, ptr %i.g, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %st_add.exit19.i.i._crit_edge, %bb.f
  %.pre116 = phi ptr [ %.pre116.pre, %st_add.exit19.i.i._crit_edge ], [ null, %bb.f ] ; 2 uses
  %i.y = icmp ugt i64 %i.x, %i.r
  br i1 %i.y, label %bb.h, label %strbuf_addch.exit

bb.h:                                             ; preds = %bb.g
  %i.z = mul i64 %i.r, 3
  %i.aa = add i64 %i.z, 48
  %i.ab = lshr i64 %i.aa, 1
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.x) ; 2 uses
  store i64 %..i.i, ptr %5, align 8, !tbaa !22
  %i.ac = tail call ptr @xrealloc(ptr noundef %.pre116, i64 noundef %..i.i) #27 ; 4 uses
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !21
  br i1 %.not.i.i, label %bb.i, label %strbuf_addch.exit

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.ac, align 1, !tbaa !14
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %skip_prefix_impl.exit44.strbuf_addch.exit_crit_edge, %bb.g, %bb.h, %bb.i
  %i.ad = phi ptr [ %.pre, %skip_prefix_impl.exit44.strbuf_addch.exit_crit_edge ], [ %.pre116, %bb.g ], [ %i.ac, %bb.h ], [ %i.ac, %bb.i ] ; 2 uses
  store i64 %.neg.i, ptr %.phi.trans.insert.i, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.pre.i
  store i8 37, ptr %i.ae, align 1, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.neg.i
  store i8 0, ptr %i.af, align 1, !tbaa !14
  br label %skip_prefix_impl.exit44.thread

skip_prefix_impl.exit44.thread:                   ; preds = %skip_prefix_impl.exit40, %skip_prefix_impl.exit.1, %strbuf_addch.exit, %skip_prefix_impl.exit36.1, %bb.c
  %.2 = phi ptr [ %scevgep, %bb.c ], [ %scevgep, %skip_prefix_impl.exit.1 ], [ %scevgep, %skip_prefix_impl.exit36.1 ], [ %i.m, %strbuf_addch.exit ], [ %scevgep, %skip_prefix_impl.exit40 ] ; 3 uses
  %i.ag = tail call ptr @strchrnul(ptr noundef %.2, i32 noundef 37) #28 ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %.2 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef %.2, i64 noundef %i.aj)
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i, label %._crit_edge, label %bb.b, !llvm.loop !56

._crit_edge:                                      ; preds = %skip_prefix_impl.exit44.thread, %.preheader83
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21 ; 3 uses
  %i.an = load i64, ptr %0, align 8, !tbaa !22    ; 3 uses
  %.not.i46 = icmp eq i64 %i.an, 0                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  %i.aq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ap, i64 128) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %bb.j, label %st_add.exit.i

bb.j:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.ap, i64 noundef 128) #26
  unreachable

st_add.exit.i:                                    ; preds = %._crit_edge
  %i.as = extractvalue { i64, i1 } %i.aq, 0       ; 2 uses
  %i.at = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.as, i64 1) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 1
  br i1 %i.au, label %bb.k, label %st_add.exit19.i

bb.k:                                             ; preds = %st_add.exit.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.as, i64 noundef 1) #26
  unreachable

st_add.exit19.i:                                  ; preds = %st_add.exit.i
  %i.av = extractvalue { i64, i1 } %i.at, 0       ; 2 uses
  br i1 %.not.i46, label %bb.l, label %bb.m

bb.l:                                             ; preds = %st_add.exit19.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.aw, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %st_add.exit19.i
  %i.ax = icmp ugt i64 %i.av, %i.an
  br i1 %i.ax, label %bb.n, label %strbuf_grow.exit

bb.n:                                             ; preds = %bb.m
  %i.ay = mul i64 %i.an, 3
  %i.az = add i64 %i.ay, 48
  %i.ba = lshr i64 %i.az, 1
  %..i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.av) ; 2 uses
  store i64 %..i, ptr %0, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21
  %i.bd = tail call ptr @xrealloc(ptr noundef %i.bc, i64 noundef %..i) #27 ; 2 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !21
  br i1 %.not.i46, label %bb.o, label %strbuf_grow.exit

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.bd, align 1, !tbaa !14
  br label %strbuf_grow.exit

strbuf_grow.exit:                                 ; preds = %bb.m, %bb.n, %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !21
  %i.bg = load i64, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %0, align 8, !tbaa !22
  %i.bj = sub i64 %i.bi, %i.bg
  %i.bk = tail call i64 @strftime(ptr noundef %i.bh, i64 noundef %i.bj, ptr noundef %i.am, ptr noundef %2) #27 ; 2 uses
  %.not29 = icmp eq i64 %i.bk, 0
  br i1 %.not29, label %bb.p, label %bb.ae

bb.p:                                             ; preds = %strbuf_grow.exit
  %i.bl = load i64, ptr %5, align 8, !tbaa !22    ; 4 uses
  %.not.i.i47 = icmp eq i64 %i.bl, 0              ; 3 uses
  %.phi.trans.insert.i48 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i49 = load i64, ptr %.phi.trans.insert.i48, align 8, !tbaa !23 ; 4 uses
  %.neg.i50 = add i64 %.pre.i49, 1                ; 2 uses
  %.not.i51 = icmp eq i64 %i.bl, %.neg.i50
  %or.cond.i52 = select i1 %.not.i.i47, i1 true, i1 %.not.i51
  br i1 %or.cond.i52, label %strbuf_avail.exit.thread.i53, label %strbuf_addch.exit57

strbuf_avail.exit.thread.i53:                     ; preds = %bb.p
  %i.bm = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.pre.i49, i64 1) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  br i1 %i.bn, label %bb.q, label %st_add.exit.i.i54

bb.q:                                             ; preds = %strbuf_avail.exit.thread.i53
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %.pre.i49, i64 noundef 1) #26
  unreachable

st_add.exit.i.i54:                                ; preds = %strbuf_avail.exit.thread.i53
  %i.bo = extractvalue { i64, i1 } %i.bm, 0       ; 2 uses
  %i.bp = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bo, i64 1) ; 2 uses
  %i.bq = extractvalue { i64, i1 } %i.bp, 1
  br i1 %i.bq, label %bb.r, label %st_add.exit19.i.i55

bb.r:                                             ; preds = %st_add.exit.i.i54
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.bo, i64 noundef 1) #26
  unreachable

st_add.exit19.i.i55:                              ; preds = %st_add.exit.i.i54
  %i.br = extractvalue { i64, i1 } %i.bp, 0       ; 2 uses
  br i1 %.not.i.i47, label %bb.s, label %bb.t

bb.s:                                             ; preds = %st_add.exit19.i.i55
  store ptr null, ptr %i.al, align 8, !tbaa !21
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %st_add.exit19.i.i55
  %i.bs = phi ptr [ null, %bb.s ], [ %i.am, %st_add.exit19.i.i55 ] ; 2 uses
  %i.bt = icmp ugt i64 %i.br, %i.bl
  br i1 %i.bt, label %bb.u, label %strbuf_addch.exit57

bb.u:                                             ; preds = %bb.t
  %i.bu = mul i64 %i.bl, 3
  %i.bv = add i64 %i.bu, 48
  %i.bw = lshr i64 %i.bv, 1
  %..i.i56 = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 %i.br) ; 2 uses
  store i64 %..i.i56, ptr %5, align 8, !tbaa !22
  %i.bx = tail call ptr @xrealloc(ptr noundef %i.bs, i64 noundef %..i.i56) #27 ; 4 uses
  store ptr %i.bx, ptr %i.al, align 8, !tbaa !21
  br i1 %.not.i.i47, label %bb.v, label %strbuf_addch.exit57

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr %i.bx, align 1, !tbaa !14
  br label %strbuf_addch.exit57

strbuf_addch.exit57:                              ; preds = %bb.p, %bb.t, %bb.u, %bb.v
  %i.by = phi ptr [ %i.am, %bb.p ], [ %i.bs, %bb.t ], [ %i.bx, %bb.u ], [ %i.bx, %bb.v ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.pre.i49
  store i8 32, ptr %i.bz, align 1, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %.neg.i50
  store i8 0, ptr %i.ca, align 1, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %strbuf_addch.exit57, %strbuf_grow.exit62
  %.02597 = phi i64 [ 128, %strbuf_addch.exit57 ], [ %i.cb, %strbuf_grow.exit62 ]
  %i.cb = shl i64 %.02597, 1                      ; 3 uses
  %i.cc = load i64, ptr %0, align 8, !tbaa !22    ; 3 uses
  %.not.i58 = icmp eq i64 %i.cc, 0                ; 2 uses
  %i.cd = load i64, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  %i.ce = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cd, i64 %i.cb) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  br i1 %i.cf, label %bb.x, label %st_add.exit.i59

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.cd, i64 noundef %i.cb) #26
  unreachable

st_add.exit.i59:                                  ; preds = %bb.w
  %i.cg = extractvalue { i64, i1 } %i.ce, 0       ; 2 uses
  %i.ch = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cg, i64 1) ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  br i1 %i.ci, label %bb.y, label %st_add.exit19.i60

bb.y:                                             ; preds = %st_add.exit.i59
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.cg, i64 noundef 1) #26
  unreachable

st_add.exit19.i60:                                ; preds = %st_add.exit.i59
  %i.cj = extractvalue { i64, i1 } %i.ch, 0       ; 2 uses
  br i1 %.not.i58, label %bb.z, label %st_add.exit19.i60._crit_edge

st_add.exit19.i60._crit_edge:                     ; preds = %st_add.exit19.i60
  %.pre118.pre = load ptr, ptr %i.be, align 8, !tbaa !21
  br label %bb.aa

bb.z:                                             ; preds = %st_add.exit19.i60
  store ptr null, ptr %i.be, align 8, !tbaa !21
  br label %bb.aa

bb.aa:                                            ; preds = %st_add.exit19.i60._crit_edge, %bb.z
  %.pre118 = phi ptr [ %.pre118.pre, %st_add.exit19.i60._crit_edge ], [ null, %bb.z ] ; 2 uses
  %i.ck = icmp ugt i64 %i.cj, %i.cc
  br i1 %i.ck, label %bb.ab, label %strbuf_grow.exit62

bb.ab:                                            ; preds = %bb.aa
  %i.cl = mul i64 %i.cc, 3
  %i.cm = add i64 %i.cl, 48
  %i.cn = lshr i64 %i.cm, 1
  %..i61 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.cj) ; 2 uses
  store i64 %..i61, ptr %0, align 8, !tbaa !22
  %i.co = tail call ptr @xrealloc(ptr noundef %.pre118, i64 noundef %..i61) #27 ; 3 uses
  store ptr %i.co, ptr %i.be, align 8, !tbaa !21
  br i1 %.not.i58, label %bb.ac, label %strbuf_grow.exit62

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.co, align 1, !tbaa !14
  %.pre117 = load ptr, ptr %i.be, align 8, !tbaa !21
  br label %strbuf_grow.exit62

strbuf_grow.exit62:                               ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.cp = phi ptr [ %.pre118, %bb.aa ], [ %i.co, %bb.ab ], [ %.pre117, %bb.ac ]
  %i.cq = load i64, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq
  %i.cs = load i64, ptr %0, align 8, !tbaa !22
  %i.ct = sub i64 %i.cs, %i.cq
  %i.cu = tail call i64 @strftime(ptr noundef %i.cr, i64 noundef %i.ct, ptr noundef %i.by, ptr noundef %2) #27 ; 2 uses
  %.not30 = icmp eq i64 %i.cu, 0
  br i1 %.not30, label %bb.w, label %bb.ad, !llvm.loop !57

bb.ad:                                            ; preds = %strbuf_grow.exit62
  %i.cv = add i64 %i.cu, -1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %strbuf_grow.exit
  %.1 = phi i64 [ %i.bk, %strbuf_grow.exit ], [ %i.cv, %bb.ad ]
  %i.cw = load i64, ptr %5, align 8, !tbaa !22
  %.not.i63 = icmp eq i64 %i.cw, 0
  br i1 %.not.i63, label %strbuf_release.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cx = load ptr, ptr %i.al, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.cx) #27
  br label %strbuf_release.exit

strbuf_release.exit:                              ; preds = %bb.ae, %bb.af
  %i.cy = load i64, ptr %i.ao, align 8, !tbaa !23
  %i.cz = add i64 %i.cy, %.1                      ; 3 uses
  %i.da = load i64, ptr %0, align 8, !tbaa !22
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.da, i64 1)
  %i.db = icmp ugt i64 %i.cz, %spec.select.i
  br i1 %i.db, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %strbuf_release.exit
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.48, i32 noundef 167, ptr noundef nonnull @.str.49) #26
  unreachable

bb.ah:                                            ; preds = %strbuf_release.exit
  store i64 %i.cz, ptr %i.ao, align 8, !tbaa !23
  %i.dc = load ptr, ptr %i.be, align 8, !tbaa !21 ; 2 uses
  %.not9.i = icmp eq ptr %i.dc, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cz
  store i8 0, ptr %i.dd, align 1, !tbaa !14
  br label %strbuf_setlen.exit

bb.aj:                                            ; preds = %bb.ah
  %i.de = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !14
  %.not10.i = icmp eq i8 %i.de, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #26
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.aj, %bb.ai, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

declare i64 @tm_to_time_t(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_stripspace(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22     ; 3 uses
  %.not.i = icmp eq i64 %i.a, 0                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 1) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.b, label %st_add.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.c, i64 noundef 1) #26
  unreachable

st_add.exit.i:                                    ; preds = %bb.a
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 1) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.c, label %st_add.exit19.i

bb.c:                                             ; preds = %st_add.exit.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.f, i64 noundef 1) #26
  unreachable

st_add.exit19.i:                                  ; preds = %st_add.exit.i
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %st_add.exit19.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %st_add.exit19.i
  %i.k = icmp ugt i64 %i.i, %i.a
  br i1 %i.k, label %bb.f, label %strbuf_grow.exit

bb.f:                                             ; preds = %bb.e
  %i.l = mul i64 %i.a, 3
  %i.m = add i64 %i.l, 48
  %i.n = lshr i64 %i.m, 1
  %..i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.i) ; 2 uses
  store i64 %..i, ptr %0, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = tail call ptr @xrealloc(ptr noundef %i.p, i64 noundef %..i) #27 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !21
  br i1 %.not.i, label %bb.g, label %strbuf_grow.exit

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.q, align 1, !tbaa !14
  br label %strbuf_grow.exit

strbuf_grow.exit:                                 ; preds = %bb.e, %bb.f, %bb.g
  %i.r = load i64, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %.not62 = icmp eq i64 %i.r, 0
  br i1 %.not62, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %strbuf_grow.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.not63 = icmp eq ptr %1, null
  br i1 %.not63, label %starts_with.exit.us, label %.lr.ph.split

starts_with.exit.us:                              ; preds = %.lr.ph, %starts_with.exit.thread.us
  %i.t = phi i64 [ %i.aw, %starts_with.exit.thread.us ], [ %i.r, %.lr.ph ] ; 2 uses
  %.04361.us = phi i64 [ %i.ay, %starts_with.exit.thread.us ], [ 0, %.lr.ph ] ; 5 uses
  %.04460.us = phi i64 [ %i.ax, %starts_with.exit.thread.us ], [ 0, %.lr.ph ] ; 4 uses
  %.04559.us = phi i64 [ %.146.us, %starts_with.exit.thread.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !21   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.04460.us ; 3 uses
  %i.w = sub nuw i64 %i.t, %.04460.us             ; 2 uses
  %i.x = tail call ptr @memchr(ptr noundef %i.v, i32 noundef 10, i64 noundef %i.w) #28 ; 2 uses
  %.not.us = icmp eq ptr %i.x, null
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %reass.sub = sub i64 %i.y, %i.z
  %i.aa = add i64 %reass.sub, 1
  %i.ab = select i1 %.not.us, i64 %i.w, i64 %i.aa ; 4 uses
  %.not.i54.us101 = icmp eq i64 %i.ab, 0
  br i1 %.not.i54.us101, label %._crit_edge104, label %.lr.ph103

bb.h:                                             ; preds = %.lr.ph103
  %i.ac = add i64 %.06.i.us102, -1                ; 3 uses
  %.not.i54.us = icmp eq i64 %i.ac, 0
  br i1 %.not.i54.us, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %starts_with.exit.us, %bb.h
  %.06.i.us102 = phi i64 [ %i.ac, %bb.h ], [ %i.ab, %starts_with.exit.us ] ; 5 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 %.06.i.us102
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = and i8 %i.ai, 1
  %.not7.i.us = icmp eq i8 %i.aj, 0
  br i1 %.not7.i.us, label %cleanup.exit.us, label %bb.h

cleanup.exit.us:                                  ; preds = %.lr.ph103
  %i.ak = icmp ne i64 %.04559.us, 0
  %i.al = icmp ne i64 %.04361.us, 0
  %or.cond3.us = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond3.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %cleanup.exit.us
  %i.am = add i64 %.04361.us, 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 %.04361.us
  store i8 10, ptr %i.an, align 1, !tbaa !14
  %.pre71 = load ptr, ptr %i.s, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %cleanup.exit.us
  %i.ao = phi ptr [ %.pre71, %bb.i ], [ %i.u, %cleanup.exit.us ] ; 2 uses
  %.1.us = phi i64 [ %i.am, %bb.i ], [ %.04361.us, %cleanup.exit.us ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.1.us
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.04460.us
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i64 %.06.i.us102, i1 false)
  %i.ar = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.as = add i64 %.1.us, 1
  %i.at = getelementptr i8, ptr %i.ar, i64 %.06.i.us102
  %i.au = getelementptr i8, ptr %i.at, i64 %.1.us
  store i8 10, ptr %i.au, align 1, !tbaa !14
  %.pre72 = load i64, ptr %i.b, align 8, !tbaa !23
  br label %starts_with.exit.thread.us

._crit_edge104:                                   ; preds = %bb.h, %starts_with.exit.us
  %.06.i.us.lcssa = phi i64 [ %i.ab, %starts_with.exit.us ], [ %i.ac, %bb.h ]
  %i.av = add i64 %.04559.us, 1
  br label %starts_with.exit.thread.us

starts_with.exit.thread.us:                       ; preds = %._crit_edge104, %bb.j
  %.06.i.us94 = phi i64 [ %.06.i.us.lcssa, %._crit_edge104 ], [ %.06.i.us102, %bb.j ]
  %i.aw = phi i64 [ %i.t, %._crit_edge104 ], [ %.pre72, %bb.j ] ; 2 uses
  %.146.us = phi i64 [ %i.av, %._crit_edge104 ], [ 0, %bb.j ]
  %.2.us = phi i64 [ %.04361.us, %._crit_edge104 ], [ %i.as, %bb.j ]
  %i.ax = add i64 %i.ab, %.04460.us               ; 2 uses
  %i.ay = add i64 %.06.i.us94, %.2.us             ; 2 uses
  %i.az = icmp ult i64 %i.ax, %i.aw
  br i1 %i.az, label %starts_with.exit.us, label %._crit_edge, !llvm.loop !58

.lr.ph.split:                                     ; preds = %.lr.ph, %starts_with.exit.thread
  %i.ba = phi i64 [ %i.cj, %starts_with.exit.thread ], [ %i.r, %.lr.ph ] ; 4 uses
  %.04361 = phi i64 [ %i.cl, %starts_with.exit.thread ], [ 0, %.lr.ph ] ; 7 uses
  %.04460 = phi i64 [ %i.ck, %starts_with.exit.thread ], [ 0, %.lr.ph ] ; 4 uses
  %.04559 = phi i64 [ %.146, %starts_with.exit.thread ], [ 0, %.lr.ph ] ; 4 uses
  %i.bb = load ptr, ptr %i.s, align 8, !tbaa !21  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.04460 ; 4 uses
  %i.bd = sub nuw i64 %i.ba, %.04460              ; 2 uses
  %i.be = tail call ptr @memchr(ptr noundef %i.bc, i32 noundef 10, i64 noundef %i.bd) #28 ; 2 uses
  %.not = icmp eq ptr %i.be, null
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %reass.sub64 = sub i64 %i.bf, %i.bg
  %i.bh = add i64 %reass.sub64, 1
  %i.bi = select i1 %.not, i64 %i.bd, i64 %i.bh   ; 3 uses
  %cond = icmp eq i64 %i.bi, 0
  br i1 %cond, label %._crit_edge100, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split
  %i.bj = load i8, ptr %1, align 1, !tbaa !14     ; 2 uses
  %.not10.i = icmp eq i8 %i.bj, 0
  br i1 %.not10.i, label %starts_with.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.l
  %i.bk = phi i8 [ %i.bo, %bb.l ], [ %i.bj, %bb.k ]
  %.012.i = phi ptr [ %i.bn, %bb.l ], [ %1, %bb.k ]
  %.0611.i = phi ptr [ %i.bm, %bb.l ], [ %i.bc, %bb.k ] ; 2 uses
  %i.bl = load i8, ptr %.0611.i, align 1, !tbaa !14
  %.not9.i = icmp eq i8 %i.bl, %i.bk
  br i1 %.not9.i, label %bb.l, label %.lr.ph99

bb.l:                                             ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.0611.i, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !14  ; 2 uses
  %.not.i53 = icmp eq i8 %i.bo, 0
  br i1 %.not.i53, label %starts_with.exit.thread, label %.lr.ph.i

bb.m:                                             ; preds = %.lr.ph99
  %i.bp = add i64 %.06.i98, -1                    ; 2 uses
  %.not.i54 = icmp eq i64 %i.bp, 0
  br i1 %.not.i54, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph.i, %bb.m
  %.06.i98 = phi i64 [ %i.bp, %bb.m ], [ %i.bi, %.lr.ph.i ] ; 5 uses
  %i.bq = getelementptr i8, ptr %i.bc, i64 %.06.i98
  %i.br = getelementptr i8, ptr %i.bq, i64 -1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !14
  %i.bw = and i8 %i.bv, 1
  %.not7.i = icmp eq i8 %i.bw, 0
  br i1 %.not7.i, label %cleanup.exit, label %bb.m

cleanup.exit:                                     ; preds = %.lr.ph99
  %i.bx = icmp ne i64 %.04559, 0
  %i.by = icmp ne i64 %.04361, 0
  %or.cond3 = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %cleanup.exit
  %i.bz = add i64 %.04361, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.04361
  store i8 10, ptr %i.ca, align 1, !tbaa !14
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %cleanup.exit
  %i.cb = phi ptr [ %.pre, %bb.n ], [ %i.bb, %cleanup.exit ] ; 2 uses
  %.1 = phi i64 [ %i.bz, %bb.n ], [ %.04361, %cleanup.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.04460
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %i.cd, i64 %.06.i98, i1 false)
  %i.ce = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.cf = add i64 %.1, 1
  %i.cg = getelementptr i8, ptr %i.ce, i64 %.06.i98
  %i.ch = getelementptr i8, ptr %i.cg, i64 %.1
  store i8 10, ptr %i.ch, align 1, !tbaa !14
  %.pre70 = load i64, ptr %i.b, align 8, !tbaa !23
  br label %starts_with.exit.thread

._crit_edge100:                                   ; preds = %bb.m, %.lr.ph.split
  %i.ci = add i64 %.04559, 1
  br label %starts_with.exit.thread

starts_with.exit.thread:                          ; preds = %bb.l, %bb.k, %bb.o, %._crit_edge100
  %i.cj = phi i64 [ %i.ba, %._crit_edge100 ], [ %.pre70, %bb.o ], [ %i.ba, %bb.k ], [ %i.ba, %bb.l ] ; 2 uses
  %.146 = phi i64 [ %i.ci, %._crit_edge100 ], [ 0, %bb.o ], [ %.04559, %bb.k ], [ %.04559, %bb.l ]
  %.2 = phi i64 [ %.04361, %._crit_edge100 ], [ %i.cf, %bb.o ], [ %.04361, %bb.k ], [ %.04361, %bb.l ]
  %.0 = phi i64 [ 0, %._crit_edge100 ], [ %.06.i98, %bb.o ], [ 0, %bb.k ], [ 0, %bb.l ]
  %i.ck = add i64 %i.bi, %.04460                  ; 2 uses
  %i.cl = add i64 %.0, %.2                        ; 2 uses
  %i.cm = icmp ult i64 %i.ck, %i.cj
  br i1 %i.cm, label %.lr.ph.split, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %starts_with.exit.thread, %starts_with.exit.thread.us
  %.043.lcssa = phi i64 [ %i.ay, %starts_with.exit.thread.us ], [ %i.cl, %starts_with.exit.thread ] ; 2 uses
  %i.cn = load i64, ptr %0, align 8, !tbaa !22
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cn, i64 1)
  %i.co = icmp ugt i64 %.043.lcssa, %spec.select.i
  br i1 %i.co, label %bb.p, label %._crit_edge.thread

bb.p:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.48, i32 noundef 167, ptr noundef nonnull @.str.49) #26
  unreachable

._crit_edge.thread:                               ; preds = %strbuf_grow.exit, %._crit_edge
  %.043.lcssa86 = phi i64 [ %.043.lcssa, %._crit_edge ], [ 0, %strbuf_grow.exit ] ; 2 uses
  store i64 %.043.lcssa86, ptr %i.b, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21 ; 2 uses
  %.not9.i55 = icmp eq ptr %i.cq, @strbuf_slopbuf
  br i1 %.not9.i55, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.043.lcssa86
  store i8 0, ptr %i.cr, align 1, !tbaa !14
  br label %strbuf_setlen.exit

bb.r:                                             ; preds = %._crit_edge.thread
  %i.cs = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !14
  %.not10.i56 = icmp eq i8 %i.cs, 0
  br i1 %.not10.i56, label %strbuf_setlen.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #26
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.q, %bb.r
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_strip_file_from_path(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 47) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %reass.sub = sub i64 %i.d, %i.e
  %i.f = add i64 %reass.sub, 1
  %i.g = select i1 %.not, i64 0, i64 %i.f         ; 3 uses
  %i.h = load i64, ptr %0, align 8, !tbaa !22
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 1)
  %i.i = icmp ugt i64 %i.g, %spec.select.i
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.48, i32 noundef 167, ptr noundef nonnull @.str.49) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.j, align 8, !tbaa !23
  %.not9.i = icmp eq ptr %i.b, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  store i8 0, ptr %i.k, align 1, !tbaa !14
  br label %strbuf_setlen.exit

bb.e:                                             ; preds = %bb.c
  %i.l = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !14
  %.not10.i = icmp eq i8 %i.l, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #26
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #24

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare ptr @dcngettext(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!10, !10, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"long", !10, i64 0}
!20 = !{!"strbuf", !19, i64 0, !19, i64 8, !17, i64 16}
!21 = !{!20, !17, i64 16}
!22 = !{!20, !19, i64 0}
!23 = !{!20, !19, i64 8}
!24 = !{!19, !19, i64 0}
!25 = !{!"p1 _ZTS6strbuf", !16, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!11, !11, i64 0}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = !{!"p1 _ZTS16string_list_item", !16, i64 0}
!33 = !{!"string_list", !32, i64 0, !19, i64 8, !19, i64 16, !11, i64 24, !16, i64 32}
!34 = !{!33, !32, i64 0}
!35 = !{!33, !19, i64 8}
!36 = !{!"string_list_item", !17, i64 0, !16, i64 8}
!37 = !{!36, !17, i64 0}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{null}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, i1 false, !"vprintf"}
!48 = distinct !{!48, !47, !"vprintf: argument 0"}
!49 = distinct !{null}
!50 = distinct !{null}
!51 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!48}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
end_hunk_0
