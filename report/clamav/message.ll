Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/message?download=true
inline.NumInlined: 53
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@simil:bb.a
push.exit64:                                      ; preds = %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.cz, ptr %i.di, align 8, !tbaa !59
  br label %compare.exit.thread

push.exit62.thread.sink.split:                    ; preds = %bb.ae, %bb.ac
  %.lcssa147.sink = phi ptr [ %i.cz, %bb.ac ], [ %i.de, %bb.ae ]
  call void @free(ptr noundef nonnull %.lcssa147.sink) #20
  br label %push.exit62.thread

push.exit62.thread:                               ; preds = %bb.ad, %bb.ab, %push.exit62.thread.sink.split
  call void @free(ptr noundef %i.e) #20
  call void @free(ptr noundef %i.g) #20
  br label %bb.ag

compare.exit.thread:                              ; preds = %pop.exit54, %push.exit64, %bb.aa, %compare.exit
  %.17794 = phi ptr [ %.177, %compare.exit ], [ %.177, %push.exit64 ], [ %.177, %bb.aa ], [ %.076118, %pop.exit54 ]
  %.17993 = phi ptr [ %.179, %compare.exit ], [ %.179, %push.exit64 ], [ %.179, %bb.aa ], [ %.078117, %pop.exit54 ]
  %.2 = phi ptr [ %.6, %compare.exit ], [ %i.de, %push.exit64 ], [ %.181, %bb.aa ], [ %.6, %pop.exit54 ] ; 2 uses
  %.1 = phi i32 [ %.0119, %compare.exit ], [ %i.cc, %push.exit64 ], [ %i.cc, %bb.aa ], [ %.0119, %pop.exit54 ] ; 2 uses
  %.not.i = icmp eq ptr %.2, null
  br i1 %.not.i, label %pop.exit, label %bb.l

pop.exit:                                         ; preds = %compare.exit.thread
  call void @free(ptr noundef %i.e) #20
  call void @free(ptr noundef %i.g) #20
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %pop.exit
  %i.dj = mul i32 %.1, 200
  %i.dk = zext i32 %i.dj to i64
  %i.dl = udiv i64 %i.dk, %i.m
  %i.dm = trunc nuw i64 %i.dl to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %pop.exit, %bb.b, %bb.a, %push.exit62.thread, %push.exit58.thread, %push.exit.thread, %bb.g, %bb.d
  %.042 = phi i32 [ -2, %bb.b ], [ 100, %bb.a ], [ -2, %bb.d ], [ -5, %bb.g ], [ -2, %push.exit.thread ], [ -2, %push.exit58.thread ], [ -2, %push.exit62.thread ], [ %i.dm, %bb.af ], [ 0, %pop.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define i32 @messageGetMimeType(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.10) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @messageSetMimeSubtype(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.11) #20
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ @.str.13, %bb.d ], [ %1, %bb.c ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.d) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.e = tail call ptr @cli_safer_strdup(ptr noundef nonnull %.0) #20
  store ptr %i.e, ptr %i.c, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  ret void
}

declare ptr @cli_safer_strdup(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @messageGetMimeSubtype(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.13, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: nounwind uwtable
define void @messageSetDispositionType(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.14) #20
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.e = load i8, ptr %1, align 1, !tbaa !28      ; 2 uses
  %.not1924 = icmp eq i8 %i.e, 0
  br i1 %.not1924, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = tail call ptr @__ctype_b_loc() #21
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.b, align 8, !tbaa !18
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %i.h = phi i8 [ %i.e, %.lr.ph ], [ %i.n, %bb.h ]
  %.025 = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.h ] ; 2 uses
  %i.i = sext i8 %i.h to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !30
  %i.l = and i16 %i.k, 8192
  %.not20 = icmp eq i16 %i.l, 0
  br i1 %.not20, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.025, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28    ; 2 uses
  %.not19 = icmp eq i8 %i.n, 0
  br i1 %.not19, label %._crit_edge, label %bb.g

.critedge:                                        ; preds = %bb.g
  %i.o = tail call ptr @cli_safer_strdup(ptr noundef nonnull %.025) #20 ; 3 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !18
  %.not22 = icmp eq ptr %i.o, null
  br i1 %.not22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.p = tail call i64 @strstrip(ptr noundef nonnull %i.o) #20 ; 0 uses
  br label %bb.j

._crit_edge:                                      ; preds = %bb.h, %.preheader
  store ptr null, ptr %i.b, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i, %._crit_edge, %bb.f, %bb.b
  ret void
}

declare i64 @strstrip(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @messageGetDispositionType(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.13, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: nounwind uwtable
define void @messageAddArgument(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.15) #20
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.loopexit, label %.preheader63

.preheader63:                                     ; preds = %bb.c
  %i.d = tail call ptr @__ctype_b_loc() #21       ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader63
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.preheader63 ] ; 3 uses
  %.043 = phi ptr [ %i.k, %bb.d ], [ %1, %.preheader63 ] ; 22 uses
  %i.f = load i8, ptr %.043, align 1, !tbaa !28   ; 2 uses
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !30
  %i.j = and i16 %i.i, 8192
  %.not = icmp eq i16 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %.043, i64 1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq i8 %i.f, 0
  br i1 %i.l, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16, ptr noundef nonnull %.043) #20
  %i.m = tail call fastcc i32 @usefulArg(ptr noundef %.043)
  %.not50 = icmp eq i32 %i.m, 0
  br i1 %.not50, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20   ; 5 uses
  %.not81 = icmp eq i64 %i.o, 0
  br i1 %.not81, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.04276 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.04276
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i32 @strcasecmp(ptr noundef nonnull %.043, ptr noundef nonnull %i.s) #22
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = add nuw i64 %.04276, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.o
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %.042.lcssa = phi i64 [ 0, %.preheader ], [ %.04276, %bb.g ] ; 3 uses
  %i.x = icmp eq i64 %.042.lcssa, %i.o
  br i1 %i.x, label %._crit_edge.thread, label %bb.k

._crit_edge.thread:                               ; preds = %bb.i, %._crit_edge
  %.042.lcssa105 = phi i64 [ %.042.lcssa, %._crit_edge ], [ %i.o, %bb.i ]
  %i.y = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.y, ptr %i.n, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.ab = shl i64 %i.y, 3
  %i.ac = tail call ptr @cli_max_realloc(ptr noundef %i.aa, i64 noundef %i.ab) #20 ; 2 uses
  %.not51 = icmp eq ptr %i.ac, null
  br i1 %.not51, label %.thread, label %bb.j

.thread:                                          ; preds = %._crit_edge.thread
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !20
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.n, align 8, !tbaa !20
  br label %.loopexit

bb.j:                                             ; preds = %._crit_edge.thread
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.042.lcssa104 = phi i64 [ %.042.lcssa105, %bb.j ], [ %.042.lcssa, %._crit_edge ] ; 5 uses
  %i.af = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.043, ptr noundef nonnull dereferenceable(1) @.str.126) #22
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.043) #22
  %i.ah = add i64 %i.ag, 16
  %i.ai = tail call ptr @cli_max_malloc(i64 noundef %i.ah) #20 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %rfc2231.exit.thread59, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.l
  %.pr.i = load i8, ptr %.043, align 1, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %thread-pre-split.i
  %i.ak = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ar, %bb.q ] ; 2 uses
  %.073.i = phi ptr [ %.043, %thread-pre-split.i ], [ %.275.i, %bb.q ] ; 2 uses
  %.0.i = phi ptr [ %i.ai, %thread-pre-split.i ], [ %.1.i, %bb.q ] ; 6 uses
  switch i8 %i.ak, label %bb.n [
    i8 42, label %.preheader110.i
    i8 61, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %.073.i, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.ak, ptr %.0.i, align 1, !tbaa !28
  br label %bb.q

.preheader110.i:                                  ; preds = %bb.m, %.preheader110.i
  %.174.i = phi ptr [ %i.an, %.preheader110.i ], [ %.073.i, %bb.m ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.174.i, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !28
  switch i8 %i.ao, label %.preheader110.i [
    i8 0, label %.loopexit111.i
    i8 42, label %bb.o
  ]

bb.o:                                             ; preds = %.preheader110.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.174.i, i64 2
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i, ptr noundef nonnull align 1 dereferenceable(16) @.str.128, i64 16, i1 false) #20
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 15
  br label %.loopexit111.i

bb.q:                                             ; preds = %bb.o, %bb.n
  %.275.i = phi ptr [ %i.al, %bb.n ], [ %i.ap, %bb.o ] ; 2 uses
  %.1.i = phi ptr [ %i.am, %bb.n ], [ %.0.i, %bb.o ] ; 2 uses
  %i.ar = load i8, ptr %.275.i, align 1, !tbaa !28 ; 2 uses
  %.not96.i = icmp eq i8 %i.ar, 0
  br i1 %.not96.i, label %.loopexit111.i, label %bb.m

.loopexit111.i:                                   ; preds = %bb.q, %.preheader110.i, %bb.p
  %.2.i = phi ptr [ %.0.i, %.preheader110.i ], [ %i.aq, %bb.p ], [ %.1.i, %bb.q ]
  store i8 0, ptr %.2.i, align 1, !tbaa !28
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.129, ptr noundef nonnull %i.ai) #20
  br label %rfc2231.exit.thread

bb.r:                                             ; preds = %bb.k
  %i.as = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.043, ptr noundef nonnull dereferenceable(1) @.str.130) #22 ; 2 uses
  %.not87.i = icmp eq ptr %i.as, null
  br i1 %.not87.i, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.at = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.043, ptr noundef nonnull dereferenceable(1) @.str.131) #22 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %bb.s
  %i.av = tail call ptr @cli_safer_strdup(ptr noundef nonnull %.043) #20 ; 4 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !28  ; 2 uses
  %.not92120.i = icmp eq i8 %i.aw, 0
  br i1 %.not92120.i, label %rfc2231.exit.thread, label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %bb.t, %.lr.ph123.i
  %i.ax = phi i8 [ %i.ba, %.lr.ph123.i ], [ %i.aw, %bb.t ]
  %.064121.i = phi ptr [ %i.ay, %.lr.ph123.i ], [ %i.av, %bb.t ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.064121.i, i64 1 ; 2 uses
  %i.az = and i8 %i.ax, 127
  store i8 %i.az, ptr %.064121.i, align 1, !tbaa !28
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !28  ; 2 uses
  %.not92.i = icmp eq i8 %i.ba, 0
  br i1 %.not92.i, label %rfc2231.exit.thread, label %.lr.ph123.i

.thread.i:                                        ; preds = %bb.s, %bb.r
  %.061106.i = phi i32 [ 0, %bb.s ], [ 2, %bb.r ]
  %.068105.i = phi ptr [ %i.at, %bb.s ], [ %i.as, %bb.r ] ; 4 uses
  %.068105.i124 = ptrtoaddr ptr %.068105.i to i64 ; 3 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.132, ptr noundef nonnull %.043) #20
  %i.bb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.043) #22
  %i.bc = add i64 %i.bb, 1
  %i.bd = tail call ptr @cli_max_malloc(i64 noundef %i.bc) #20 ; 12 uses
  %i.be = ptrtoaddr ptr %i.bd to i64
  %i.bf = icmp eq ptr %i.bd, null
  br i1 %i.bf, label %rfc2231.exit.thread59, label %.preheader109.i

.preheader109.i:                                  ; preds = %.thread.i
  %.not88116.i = icmp eq ptr %.043, %.068105.i
  br i1 %.not88116.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader109.i
  %2 = add i64 %indvar, %i.a
  %3 = sub i64 %.068105.i124, %2                  ; 7 uses
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bg = add i64 %indvar, %i.a
  %i.bh = sub i64 %i.bg, %i.be
  %diff.check = icmp ugt i64 %i.bh, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check125 = icmp ult i64 %3, 32
  br i1 %min.iters.check125, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i64 %3, 24
  %n.vec = and i64 %3, -32                        ; 5 uses
  %i.bj = getelementptr i8, ptr %i.bd, i64 %n.vec ; 2 uses
  %i.bk = getelementptr i8, ptr %.043, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %index ; 2 uses
  %next.gep126 = getelementptr i8, ptr %.043, i64 %index ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep126, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep126, align 1, !tbaa !28
  %wide.load127 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !28
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !28
  store <16 x i8> %wide.load127, ptr %i.bm, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec128 = and i64 %3, -8                      ; 4 uses
  %i.bo = getelementptr i8, ptr %i.bd, i64 %n.vec128 ; 2 uses
  %i.bp = getelementptr i8, ptr %.043, i64 %n.vec128 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index129 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next133, %vec.epilog.vector.body ] ; 3 uses
  %next.gep130 = getelementptr i8, ptr %i.bd, i64 %index129
  %next.gep131 = getelementptr i8, ptr %.043, i64 %index129
  %wide.load132 = load <8 x i8>, ptr %next.gep131, align 1, !tbaa !28
  store <8 x i8> %wide.load132, ptr %next.gep130, align 1, !tbaa !28
  %index.next133 = add nuw i64 %index129, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next133, %n.vec128
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n134 = icmp eq i64 %3, %n.vec128
  br i1 %cmp.n134, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.165118.i.ph = phi ptr [ %i.bd, %iter.check ], [ %i.bd, %vector.memcheck ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ] ; 2 uses
  %.376117.i.ph = phi ptr [ %.043, %iter.check ], [ %.043, %vector.memcheck ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ] ; 3 uses
  %.376117.i.ph145 = ptrtoaddr ptr %.376117.i.ph to i64 ; 2 uses
  %i.br = sub i64 %.068105.i124, %.376117.i.ph145
  %xtraiter = and i64 %i.br, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.165118.i.prol = phi ptr [ %i.bu, %.lr.ph.i.prol ], [ %.165118.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.376117.i.prol = phi ptr [ %i.bs, %.lr.ph.i.prol ], [ %.376117.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.376117.i.prol, i64 1 ; 3 uses
  %i.bt = load i8, ptr %.376117.i.prol, align 1, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %.165118.i.prol, i64 1 ; 3 uses
  store i8 %i.bt, ptr %.165118.i.prol, align 1, !tbaa !28
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !62

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa137.unr.a = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bs, %.lr.ph.i.prol ]
  %.lcssa136.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bu, %.lr.ph.i.prol ]
  %.165118.i.unr = phi ptr [ %.165118.i.ph, %.lr.ph.i.preheader ], [ %i.bu, %.lr.ph.i.prol ]
  %.376117.i.unr = phi ptr [ %.376117.i.ph, %.lr.ph.i.preheader ], [ %i.bs, %.lr.ph.i.prol ]
  %i.bv = sub i64 %.376117.i.ph145, %.068105.i124
  %i.bw = icmp ugt i64 %i.bv, -8
  br i1 %i.bw, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.165118.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %.165118.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.376117.i = phi ptr [ %i.cs, %.lr.ph.i ], [ %.376117.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.376117.i, i64 1
  %i.by = load i8, ptr %.376117.i, align 1, !tbaa !28
  %i.bz = getelementptr inbounds nuw i8, ptr %.165118.i, i64 1
  store i8 %i.by, ptr %.165118.i, align 1, !tbaa !28
  %i.ca = getelementptr inbounds nuw i8, ptr %.376117.i, i64 2
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !28
  %i.cc = getelementptr inbounds nuw i8, ptr %.165118.i, i64 2
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !28
  %i.cd = getelementptr inbounds nuw i8, ptr %.376117.i, i64 3
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !28
  %i.cf = getelementptr inbounds nuw i8, ptr %.165118.i, i64 3
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !28
  %i.cg = getelementptr inbounds nuw i8, ptr %.376117.i, i64 4
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %.165118.i, i64 4
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !28
  %i.cj = getelementptr inbounds nuw i8, ptr %.376117.i, i64 5
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !28
  %i.cl = getelementptr inbounds nuw i8, ptr %.165118.i, i64 5
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %.376117.i, i64 6
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %.165118.i, i64 6
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !28
  %i.cp = getelementptr inbounds nuw i8, ptr %.376117.i, i64 7
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !28
  %i.cr = getelementptr inbounds nuw i8, ptr %.165118.i, i64 7
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !28
  %i.cs = getelementptr inbounds nuw i8, ptr %.376117.i, i64 8 ; 3 uses
  %i.ct = load i8, ptr %i.cp, align 1, !tbaa !28
  %i.cu = getelementptr inbounds nuw i8, ptr %.165118.i, i64 8 ; 2 uses
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !28
  %.not88.i.7 = icmp eq ptr %i.cs, %.068105.i
  br i1 %.not88.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !63

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader109.i
  %.376.lcssa.i = phi ptr [ %.043, %.preheader109.i ], [ %i.bp, %vec.epilog.middle.block ], [ %i.bk, %middle.block ], [ %.lcssa137.unr.a, %.lr.ph.i.prol.loopexit ], [ %i.cs, %.lr.ph.i ]
  %.165.lcssa.i = phi ptr [ %i.bd, %.preheader109.i ], [ %i.bo, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %.lcssa136.unr, %.lr.ph.i.prol.loopexit ], [ %i.cu, %.lr.ph.i ] ; 2 uses
  store i8 61, ptr %.165.lcssa.i, align 1, !tbaa !28
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %._crit_edge.i
  %.169.i = phi ptr [ %.068105.i, %._crit_edge.i ], [ %i.cv, %bb.u ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.169.i, i64 1 ; 2 uses
  %i.cw = load i8, ptr %.169.i, align 1, !tbaa !28
  %.not89.i = icmp eq i8 %i.cw, 61
  br i1 %.not89.i, label %.preheader.preheader.i, label %bb.u

.preheader.preheader.i:                           ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %.165.lcssa.i, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.aq, %.preheader.preheader.i
  %.270.i = phi ptr [ %i.ei, %bb.aq ], [ %i.cv, %.preheader.preheader.i ] ; 6 uses
  %.266.i = phi ptr [ %.4.i, %bb.aq ], [ %i.cx, %.preheader.preheader.i ] ; 11 uses
  %.162.i = phi i32 [ %.263.i, %bb.aq ], [ %.061106.i, %.preheader.preheader.i ] ; 2 uses
  %i.cy = load i8, ptr %.270.i, align 1, !tbaa !28 ; 5 uses
  %.not90.i = icmp eq i8 %i.cy, 0
  br i1 %.not90.i, label %bb.ar, label %bb.v

bb.v:                                             ; preds = %.preheader.i
  switch i32 %.162.i, label %default.unreachable [
    i32 0, label %bb.w
    i32 1, label %bb.x
    i32 2, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.cz = icmp eq i8 %i.cy, 39
  %spec.select.i = zext i1 %i.cz to i32
  br label %thread-pre-split107.i

bb.x:                                             ; preds = %bb.v
  %i.da = icmp eq i8 %i.cy, 39
  %spec.select97.i = select i1 %i.da, i32 2, i32 1
  br label %thread-pre-split107.i

bb.y:                                             ; preds = %bb.v
  %i.db = icmp eq i8 %i.cy, 37
  br i1 %i.db, label %bb.z, label %bb.ap

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %.270.i, i64 1 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !28  ; 10 uses
  switch i8 %i.dd, label %bb.aa [
    i8 0, label %bb.aq
    i8 10, label %bb.aq
  ]

bb.aa:                                            ; preds = %bb.z
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.df = sext i8 %i.dd to i32
  %i.dg = sext i8 %i.dd to i64
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !30
  %i.dj = and i16 %i.di, 2048
  %.not.i.i = icmp eq i16 %i.dj, 0
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dk = add i8 %i.dd, -48
  br label %hex.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.dl = add i8 %i.dd, -65
  %or.cond.i.i = icmp ult i8 %i.dl, 6
  br i1 %or.cond.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dm = add nsw i8 %i.dd, -55
  br label %hex.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.dn = add i8 %i.dd, -97
  %or.cond5.i.i = icmp ult i8 %i.dn, 6
  br i1 %or.cond5.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.do = add nsw i8 %i.dd, -87
  br label %hex.exit.i

bb.ag:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.115, i32 noundef %i.df) #20
  br label %hex.exit.i

hex.exit.i:                                       ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ab
  %.0.i.i = phi i8 [ %i.dk, %bb.ab ], [ %i.dm, %bb.ad ], [ %i.do, %bb.af ], [ 61, %bb.ag ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.270.i, i64 2 ; 3 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !28  ; 8 uses
  switch i8 %i.dq, label %bb.ai [
    i8 0, label %bb.ah
    i8 10, label %bb.ah
  ]

bb.ah:                                            ; preds = %hex.exit.i, %hex.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.266.i, i64 1
  store i8 %.0.i.i, ptr %.266.i, align 1, !tbaa !28
  br label %thread-pre-split107.i

bb.ai:                                            ; preds = %hex.exit.i
  %i.ds = shl i8 %.0.i.i, 4
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.du = sext i8 %i.dq to i32
  %i.dv = sext i8 %i.dq to i64
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !30
  %i.dy = and i16 %i.dx, 2048
  %.not.i98.i = icmp eq i16 %i.dy, 0
  br i1 %.not.i98.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dz = add i8 %i.dq, -48
  br label %hex.exit102.i

bb.ak:                                            ; preds = %bb.ai
  %i.ea = add i8 %i.dq, -65
  %or.cond.i100.i = icmp ult i8 %i.ea, 6
  br i1 %or.cond.i100.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eb = add nsw i8 %i.dq, -55
  br label %hex.exit102.i

bb.am:                                            ; preds = %bb.ak
  %i.ec = add i8 %i.dq, -97
  %or.cond5.i101.i = icmp ult i8 %i.ec, 6
  br i1 %or.cond5.i101.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ed = add nsw i8 %i.dq, -87
end_hunk_0
