Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/object?download=true
inline.NumInlined: 35
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@peel_object_ext:bb.a
.critedge49:                                      ; preds = %..critedge49_crit_edge, %bb.a
  %i.j = phi i64 [ %.pre, %..critedge49_crit_edge ], [ %i.b, %bb.a ]
  %i.k = trunc i64 %i.j to i32
  %i.l = lshr i32 %i.k, 1
  %i.m = and i32 %i.l, 7                          ; 2 uses
  %.not42 = icmp eq i32 %i.m, 4
  br i1 %.not42, label %.preheader, label %.critedge52.sink.split

.preheader:                                       ; preds = %.critedge49
  %i.n = and i32 %3, 1
  %.not46 = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %.not46, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.critedge51.us
  %.03354.us = phi ptr [ %i.y, %.critedge51.us ], [ %i.a, %.preheader ] ; 3 uses
  %i.p = load i64, ptr %.03354.us, align 4
  %i.q = and i64 %i.p, 14
  %i.r = icmp eq i64 %i.q, 8
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader.split.us
  %i.s = getelementptr inbounds nuw i8, ptr %.03354.us, i64 8
  %i.t = tail call ptr @parse_object_with_flags(ptr noundef %0, ptr noundef nonnull %i.s, i32 noundef 0) ; 3 uses
  %.not44.us = icmp eq ptr %i.t, null
  br i1 %.not44.us, label %.critedge52, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.t, align 4
  %i.v = and i64 %i.u, 14
  %i.w = icmp eq i64 %i.v, 8
  br i1 %i.w, label %.critedge51.us, label %.critedge52

.critedge51.us:                                   ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88   ; 2 uses
  %.not43.us = icmp eq ptr %i.y, null
  br i1 %.not43.us, label %.critedge52, label %.preheader.split.us, !llvm.loop !86

.preheader.split:                                 ; preds = %.preheader, %bb.j
  %.03354 = phi ptr [ %i.ai, %bb.j ], [ %i.a, %.preheader ] ; 3 uses
  %i.z = load i64, ptr %.03354, align 4
  %i.aa = and i64 %i.z, 14
  %i.ab = icmp eq i64 %i.aa, 8
  br i1 %i.ab, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.preheader.split
  %i.ac = getelementptr inbounds nuw i8, ptr %.03354, i64 8
  %i.ad = tail call ptr @parse_object_with_flags(ptr noundef %0, ptr noundef nonnull %i.ac, i32 noundef 0) ; 3 uses
  %.not44 = icmp eq ptr %i.ad, null
  br i1 %.not44, label %.critedge52, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.ad, align 4
  %i.af = and i64 %i.ae, 14
  %i.ag = icmp eq i64 %i.af, 8
  br i1 %i.ag, label %bb.h, label %.critedge52

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !88 ; 4 uses
  %.not45 = icmp eq ptr %i.ai, null
  br i1 %.not45, label %.critedge52, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = tail call i32 @odb_read_object_info(ptr noundef %i.aj, ptr noundef nonnull %i.ak, ptr noundef null) #17 ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.critedge52, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = tail call ptr @object_as_type(ptr noundef nonnull %i.ai, i32 noundef %i.al, i32 noundef 0)
  %.not47 = icmp eq ptr %i.an, null
  br i1 %.not47, label %.critedge52, label %.preheader.split, !llvm.loop !86

.critedge:                                        ; preds = %.preheader.split, %.preheader.split.us
  %.us-phi = phi ptr [ %.03354.us, %.preheader.split.us ], [ %.03354, %.preheader.split ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ao, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.us-phi, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !57
  %i.as = load i64, ptr %.us-phi, align 4
  %i.at = trunc i64 %i.as to i32
  %i.au = lshr i32 %i.at, 1
  %i.av = and i32 %i.au, 7
  br label %.critedge52.sink.split

.critedge52.sink.split:                           ; preds = %.critedge49, %.critedge
  %.sink = phi i32 [ %i.av, %.critedge ], [ %i.m, %.critedge49 ]
  %.5.ph = phi i32 [ 0, %.critedge ], [ -2, %.critedge49 ]
  store i32 %.sink, ptr %4, align 4, !tbaa !54
  br label %.critedge52

.critedge52:                                      ; preds = %bb.g, %bb.h, %bb.f, %bb.i, %bb.j, %bb.e, %bb.d, %.critedge51.us, %.critedge52.sink.split, %bb.c, %bb.b
  %.5 = phi i32 [ %.5.ph, %.critedge52.sink.split ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.b ], [ -1, %.critedge51.us ], [ -1, %bb.d ], [ -1, %bb.j ], [ -1, %bb.i ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.g ]
  ret i32 %.5
}

declare i32 @odb_read_object_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @parse_object(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @parse_object_with_flags(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @peel_object(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call i32 @peel_object_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @parse_object_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #2 {
bb.a:
  store i32 0, ptr %5, align 4, !tbaa !54
  switch i32 %2, label %bb.q [
    i32 3, label %bb.b
    i32 2, label %bb.d
    i32 1, label %bb.j
    i32 4, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @lookup_blob(ptr noundef %0, ptr noundef %1) #17 ; 3 uses
  %.not73 = icmp eq ptr %i.a, null
  br i1 %.not73, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @parse_blob_buffer(ptr noundef nonnull %i.a) #17
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.b = tail call ptr @lookup_tree(ptr noundef %0, ptr noundef %1) #17 ; 7 uses
  %.not69 = icmp eq ptr %i.b, null
  br i1 %.not69, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %.not70 = icmp eq ptr %i.d, null
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  br i1 %.not70, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = and i64 %.pre, -2                        ; 2 uses
  store i64 %i.e, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.f = phi i64 [ %i.e, %bb.f ], [ %.pre, %bb.e ]
  %i.g = and i64 %i.f, 1
  %.not71 = icmp eq i64 %i.g, 0
  br i1 %.not71, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @parse_tree_buffer(ptr noundef nonnull %i.b, ptr noundef %4, i64 noundef %3) #17
  %.not72 = icmp eq i32 %i.h, 0
  br i1 %.not72, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %5, align 4, !tbaa !54
  br label %.critedge

bb.j:                                             ; preds = %bb.a
  %i.i = tail call ptr @lookup_commit(ptr noundef %0, ptr noundef %1) #17 ; 7 uses
  %.not65 = icmp eq ptr %i.i, null
  br i1 %.not65, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = tail call i32 @parse_commit_buffer(ptr noundef %0, ptr noundef nonnull %i.i, ptr noundef %4, i64 noundef %3, i32 noundef 1) #17
  %.not66 = icmp eq i32 %i.j, 0
  br i1 %.not66, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.k = load i32, ptr @save_commit_buffer, align 4, !tbaa !54
  %.not67 = icmp eq i32 %i.k, 0
  br i1 %.not67, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.l = tail call ptr @get_cached_commit_buffer(ptr noundef %0, ptr noundef nonnull %i.i, ptr noundef null) #17
  %.not68 = icmp eq ptr %i.l, null
  br i1 %.not68, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  tail call void @set_commit_buffer(ptr noundef %0, ptr noundef nonnull %i.i, ptr noundef %4, i64 noundef %3) #17
  store i32 1, ptr %5, align 4, !tbaa !54
  br label %.critedge

bb.o:                                             ; preds = %bb.a
  %i.m = tail call ptr @lookup_tag(ptr noundef %0, ptr noundef %1) #17 ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.n = tail call i32 @parse_tag_buffer(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef %4, i64 noundef %3) #17
  %.not64 = icmp eq i32 %i.n, 0
  %spec.select = select i1 %.not64, ptr %i.m, ptr null
  br label %.critedge

bb.q:                                             ; preds = %bb.a
  %i.o = load i32, ptr @git_gettext_enabled, align 4, !tbaa !54
  %.not4.i = icmp eq i32 %i.o, 0
  br i1 %.not4.i, label %_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.p = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #17
  br label %_.exit

_.exit:                                           ; preds = %bb.q, %bb.r
  %.0.i = phi ptr [ %i.p, %bb.r ], [ @.str.4, %bb.q ]
  %i.q = tail call ptr @oid_to_hex(ptr noundef %1) #17
  tail call void (ptr, ...) @warning(ptr noundef %.0.i, ptr noundef %i.q, i32 noundef %2) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.k, %bb.h, %_.exit, %bb.c, %bb.b, %bb.d, %bb.i, %bb.g, %bb.j, %bb.n, %bb.m, %bb.l, %bb.o
  %.358 = phi ptr [ null, %bb.k ], [ null, %bb.o ], [ null, %bb.h ], [ null, %_.exit ], [ null, %bb.b ], [ %i.b, %bb.i ], [ %i.i, %bb.m ], [ %i.a, %bb.c ], [ null, %bb.d ], [ %i.b, %bb.g ], [ %i.i, %bb.l ], [ null, %bb.j ], [ %i.i, %bb.n ], [ %spec.select, %bb.p ]
  ret ptr %.358
}

declare void @parse_blob_buffer(ptr noundef) local_unnamed_addr #5

declare i32 @parse_tree_buffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @parse_commit_buffer(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @get_cached_commit_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @set_commit_buffer(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @parse_tag_buffer(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @warning(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @parse_object_or_die(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @parse_object_with_flags(ptr noundef %0, ptr noundef %1, i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !54
  %.not4.i = icmp eq i32 %i.b, 0
  br i1 %.not4.i, label %_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #17
  br label %_.exit

_.exit:                                           ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.c, %bb.d ], [ @.str.5, %bb.c ]
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_.exit
  %i.d = tail call ptr @oid_to_hex(ptr noundef %1) #17
  br label %bb.f

bb.f:                                             ; preds = %_.exit, %bb.e
  %i.e = phi ptr [ %i.d, %bb.e ], [ %2, %_.exit ]
  tail call void (ptr, ...) @die(ptr noundef %.0.i, ptr noundef %i.e) #18
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local ptr @parse_object_with_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = trunc i32 %2 to i1                       ; 3 uses
  %i.e = and i32 %2, 2
  %i.f = icmp ne i32 %i.e, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.g = tail call i32 @replace_refs_enabled(ptr noundef %0) #17
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %lookup_replace_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 1
  %.not7.i = icmp eq i8 %i.l, 0
  br i1 %.not7.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.n = load i8, ptr %i.m, align 8
  %i.o = and i8 %i.n, 1
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.d, label %oidmap_get_size.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.13, i32 noundef 308, ptr noundef nonnull @.str.14) #18
  unreachable

oidmap_get_size.exit.i:                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.q = load i32, ptr %i.p, align 8, !tbaa !91
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %lookup_replace_object.exit, label %bb.e

bb.e:                                             ; preds = %oidmap_get_size.exit.i, %bb.b
  %i.s = tail call ptr @do_lookup_replace_object(ptr noundef nonnull %0, ptr noundef %1) #17
  br label %lookup_replace_object.exit

lookup_replace_object.exit:                       ; preds = %bb.a, %oidmap_get_size.exit.i, %bb.e
  %.0.i = phi ptr [ %i.s, %bb.e ], [ %1, %oidmap_get_size.exit.i ], [ %1, %bb.a ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49   ; 4 uses
  %.not.i79 = icmp eq ptr %i.w, null
  br i1 %.not.i79, label %lookup_object.exit.thread, label %bb.f

bb.f:                                             ; preds = %lookup_replace_object.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !48   ; 2 uses
  %.val.i = load i32, ptr %1, align 4
  %i.z = add i32 %i.y, -1
  %i.aa = and i32 %i.z, %.val.i                   ; 3 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 4 uses
  %.not2633.i = icmp eq ptr %i.ad, null
  %i.ae = ptrtoint ptr %i.ad to i64
  br i1 %.not2633.i, label %lookup_object.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = load i128, ptr %1, align 1
  %i.ah = load i128, ptr %i.af, align 1
  %i.ai = xor i128 %i.ag, %i.ah
  %i.aj = getelementptr i8, ptr %1, i64 16
  %i.ak = getelementptr i8, ptr %i.af, i64 16
  %i.al = load i128, ptr %i.aj, align 1
  %i.am = load i128, ptr %i.ak, align 1
  %i.an = xor i128 %i.al, %i.am
  %i.ao = or i128 %i.ai, %i.an
  %i.ap = icmp ne i128 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %.not.i.not.i122 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.not.i122, label %lookup_object.exit, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.as = load i128, ptr %1, align 1
  %i.at = load i128, ptr %i.ar, align 1
  %i.au = xor i128 %i.as, %i.at
  %i.av = getelementptr i8, ptr %1, i64 16
  %i.aw = getelementptr i8, ptr %i.ar, i64 16
  %i.ax = load i128, ptr %i.av, align 1
  %i.ay = load i128, ptr %i.aw, align 1
  %i.az = xor i128 %i.ax, %i.ay
  %i.ba = or i128 %i.au, %i.az
  %i.bb = icmp ne i128 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %.not.i.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.not.i, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.02334.i123 = phi i32 [ %spec.store.select.i, %.lr.ph.i ], [ %i.aa, %.lr.ph.i.preheader ]
  %i.bd = add i32 %.02334.i123, 1                 ; 2 uses
  %i.be = icmp eq i32 %i.bd, %i.y
  %spec.store.select.i = select i1 %i.be, i32 0, i32 %i.bd ; 3 uses
  %i.bf = zext i32 %spec.store.select.i to i64    ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8            ; 5 uses
  %.not26.i = icmp eq ptr %i.bh, null
  br i1 %.not26.i, label %lookup_object.exit.thread, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  %i.bi = icmp eq i32 %spec.store.select.i, %i.aa
  br i1 %i.bi, label %lookup_object.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i._crit_edge
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bf
  store i64 %i.ae, ptr %i.bk, align 1
  store i64 %i.bj, ptr %i.ac, align 8
  br label %lookup_object.exit

lookup_object.exit:                               ; preds = %.lr.ph.i.preheader, %bb.g, %.lr.ph.i._crit_edge
  %.lcssa118164 = phi ptr [ %i.bh, %.lr.ph.i._crit_edge ], [ %i.bh, %bb.g ], [ %i.ad, %.lr.ph.i.preheader ] ; 3 uses
  %i.bl = load i64, ptr %.lcssa118164, align 4
  %i.bm = and i64 %i.bl, 1
  %.not74 = icmp eq i64 %i.bm, 0
  br i1 %.not74, label %lookup_object.exit.thread, label %lookup_object.exit97

lookup_object.exit.thread:                        ; preds = %.lr.ph, %bb.f, %lookup_replace_object.exit, %lookup_object.exit
  %.not104 = phi i1 [ false, %lookup_object.exit ], [ true, %lookup_replace_object.exit ], [ true, %bb.f ], [ true, %.lr.ph ] ; 2 uses
  %.0.i80103 = phi ptr [ %.lcssa118164, %lookup_object.exit ], [ null, %lookup_replace_object.exit ], [ null, %bb.f ], [ null, %.lr.ph ] ; 2 uses
  br i1 %i.d, label %bb.h, label %bb.i

bb.h:                                             ; preds = %lookup_object.exit.thread
  %i.bn = tail call ptr @lookup_commit_in_graph(ptr noundef %0, ptr noundef %.0.i) #17 ; 2 uses
  %.not75 = icmp eq ptr %i.bn, null
  br i1 %.not75, label %bb.i, label %lookup_object.exit97

bb.i:                                             ; preds = %bb.h, %lookup_object.exit.thread
  br i1 %.not104, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = load i64, ptr %.0.i80103, align 4
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = lshr i32 %i.bp, 1
  %i.br = and i32 %i.bq, 7                        ; 2 uses
  switch i32 %i.br, label %.thread107 [
    i32 0, label %bb.k
end_hunk_0
