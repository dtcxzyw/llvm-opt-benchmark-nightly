Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/options?download=true
inline.NumInlined: 33
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@free_options:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.04677, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not75 = icmp eq ptr %i.g, null
  br i1 %.not75, label %bb.m, label %.sink.split

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.04677, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %.not72 = icmp eq ptr %i.i, null
  br i1 %.not72, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.04677, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not73 = icmp eq ptr %i.k, null
  br i1 %.not73, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.k) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.04677, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %.not74 = icmp eq ptr %i.m, null
  br i1 %.not74, label %bb.m, label %.sink.split

bb.h:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.04677, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36   ; 2 uses
  %.not71 = icmp eq ptr %i.o, null
  br i1 %.not71, label %bb.m, label %.sink.split

bb.i:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.04677, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36   ; 2 uses
  %.not70 = icmp eq ptr %i.q, null
  br i1 %.not70, label %bb.m, label %.sink.split

bb.j:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.04677, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %.not69 = icmp eq ptr %i.s, null
  br i1 %.not69, label %bb.m, label %.sink.split

bb.k:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.04677, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 2 uses
  %.not68 = icmp eq ptr %i.u, null
  br i1 %.not68, label %bb.m, label %.sink.split

bb.l:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.04677, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %.not67 = icmp eq ptr %i.w, null
  br i1 %.not67, label %bb.m, label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.b
  %.sink = phi ptr [ %i.u, %bb.k ], [ %i.g, %bb.b ], [ %i.m, %bb.g ], [ %i.o, %bb.h ], [ %i.q, %bb.i ], [ %i.s, %bb.j ], [ %i.w, %bb.l ]
  tail call void @free(ptr noundef nonnull %.sink) #17
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.b, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %.lr.ph
  %i.x = add nuw i32 %.04776, 1                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.04677, i64 48
  %i.z = load i32, ptr %i.b, align 8, !tbaa !32
  %i.aa = icmp ult i32 %i.x, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !40
  %.not87 = icmp eq i32 %i.ad, 0
  br i1 %.not87, label %._crit_edge82, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %._crit_edge
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !41
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %bb.p
  %.079 = phi ptr [ %i.al, %bb.p ], [ %i.ae, %.lr.ph81.preheader ] ; 4 uses
  %.178 = phi i32 [ %i.ak, %bb.p ], [ 0, %.lr.ph81.preheader ]
  %i.af = load i32, ptr %.079, align 8, !tbaa !35
  switch i32 %i.af, label %bb.p [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %.lr.ph81
  %i.ag = getelementptr inbounds nuw i8, ptr %.079, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 2 uses
  %.not66 = icmp eq ptr %i.ah, null
  br i1 %.not66, label %bb.p, label %.sink.split108

bb.o:                                             ; preds = %.lr.ph81, %.lr.ph81
  %i.ai = getelementptr inbounds nuw i8, ptr %.079, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %.not65 = icmp eq ptr %i.aj, null
  br i1 %.not65, label %bb.p, label %.sink.split108

.sink.split108:                                   ; preds = %bb.o, %bb.n
  %.sink109 = phi ptr [ %i.ah, %bb.n ], [ %i.aj, %bb.o ]
  tail call void @free(ptr noundef nonnull %.sink109) #17
  br label %bb.p

bb.p:                                             ; preds = %.sink.split108, %bb.n, %bb.o, %.lr.ph81
  %i.ak = add nuw i32 %.178, 1                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.079, i64 24
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !40
  %i.an = icmp ult i32 %i.ak, %i.am
  br i1 %i.an, label %.lr.ph81, label %._crit_edge82, !llvm.loop !57

._crit_edge82:                                    ; preds = %bb.p, %._crit_edge
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !33  ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge82
  tail call void @free(ptr noundef nonnull %i.ao) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge82
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %.not62 = icmp eq ptr %i.ap, null
  br i1 %.not62, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.ap) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28 ; 2 uses
  %.not63 = icmp eq ptr %i.ar, null
  br i1 %.not63, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !27 ; 2 uses
  %.not88 = icmp eq i32 %i.at, 0
  br i1 %.not88, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %.preheader, %bb.v
  %i.au = phi i32 [ %i.ay, %bb.v ], [ %i.at, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %.preheader ] ; 2 uses
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %.not64 = icmp eq ptr %i.ax, null
  br i1 %.not64, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph84
  tail call void @free(ptr noundef nonnull %i.ax) #17
  %.pre = load i32, ptr %i.as, align 8, !tbaa !27
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph84, %bb.u
  %i.ay = phi i32 [ %i.au, %.lr.ph84 ], [ %.pre, %bb.u ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %.lr.ph84, label %._crit_edge85.loopexit, !llvm.loop !58

._crit_edge85.loopexit:                           ; preds = %bb.v
  %.pre90 = load ptr, ptr %i.aq, align 8, !tbaa !28
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %._crit_edge85.loopexit, %.preheader
  %i.bb = phi ptr [ %.pre90, %._crit_edge85.loopexit ], [ %i.ar, %.preheader ]
  tail call void @free(ptr noundef %i.bb) #17
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge85, %bb.t
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @parse_md5(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %.not = icmp eq i64 %i.a, 32
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #19
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.03743 = phi ptr [ %0, %.preheader ], [ %i.m, %bb.h ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.03743, i64 1
  %i.d = load i8, ptr %.03743, align 1, !tbaa !36 ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.f = sext i8 %i.d to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !45
  %i.i = and i16 %i.h, 2048
  %.not41 = icmp eq i16 %i.i, 0
  br i1 %.not41, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = add i8 %i.d, -97
  %or.cond = icmp ult i8 %i.j, 6
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = add i8 %i.d, -65
  %or.cond3 = icmp ult i8 %2, 6
  br i1 %or.cond3, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i8 [ -48, %bb.b ], [ -87, %bb.c ], [ -55, %bb.d ]
  %i.k = add i8 %i.d, %.sink
  %i.l = shl i8 %i.k, 4
  %i.m = getelementptr inbounds nuw i8, ptr %.03743, i64 2
  %i.n = load i8, ptr %i.c, align 1, !tbaa !36    ; 4 uses
  %i.o = sext i8 %i.n to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !45
  %i.r = and i16 %i.q, 2048
  %.not42 = icmp eq i16 %i.r, 0
  br i1 %.not42, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = add i8 %i.n, -97
  %or.cond5 = icmp ult i8 %i.s, 6
  br i1 %or.cond5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add i8 %i.n, -65
  %or.cond7 = icmp ult i8 %i.t, 6
  br i1 %or.cond7, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sink46 = phi i8 [ -48, %bb.e ], [ -87, %bb.f ], [ -55, %bb.g ]
  %i.u = add i8 %i.n, %.sink46
  %.1 = or i8 %i.u, %i.l
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %.1, ptr %i.v, align 1, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !59

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.d, %bb.a
  %.036 = phi i32 [ 0, %bb.a ], [ 1, %bb.h ], [ 0, %bb.d ], [ 0, %bb.g ]
  ret i32 %.036
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @parse_uint32(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.91) #18
  %.not = icmp eq i64 %i.c, %i.a
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10) #17
  %i.e = trunc i64 %i.d to i32
  store i32 %i.e, ptr %1, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @FLAC__format_sample_rate_is_valid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @parse_uint64(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.91) #18
  %.not = icmp eq i64 %i.c, %i.a
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @__isoc23_strtoull(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10) #17
  store i64 %i.d, ptr %1, align 8, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @parse_vorbis_comment_field_name(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @local_strdup(ptr noundef %0) #17 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !36
  %.fr15 = freeze i8 %i.b                         ; 2 uses
  %.not16 = icmp eq i8 %.fr15, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.fr18 = phi i8 [ %.fr, %bb.c ], [ %.fr15, %bb.a ] ; 2 uses
  %.017 = phi ptr [ %i.d, %bb.c ], [ %i.a, %bb.a ]
  %i.c = icmp slt i8 %.fr18, 32
  br i1 %i.c, label %bb.b, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph
  switch i8 %.fr18, label %bb.c [
    i8 127, label %bb.b
    i8 126, label %bb.b
    i8 61, label %bb.b
  ]

bb.b:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %.lr.ph
  tail call void @free(ptr noundef %i.a) #17
  store ptr @.str.92, ptr %2, align 8, !tbaa !21
  br label %bb.d

bb.c:                                             ; preds = %switch.early.test
  %i.d = getelementptr inbounds nuw i8, ptr %.017, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !36
  %.fr = freeze i8 %i.e                           ; 2 uses
  %.not = icmp eq i8 %.fr, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.c, %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.011 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge ]
  ret i32 %.011
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @parse_vorbis_comment_field_names(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @local_strdup(ptr noundef %0) #17 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !36    ; 2 uses
  %.not13 = icmp eq i8 %i.b, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !36    ; 2 uses
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi i8 [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %.014 = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.f = add i8 %i.e, -126
  %or.cond = icmp ult i8 %i.f, -94
  br i1 %or.cond, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef %i.a) #17
  store ptr @.str.92, ptr %2, align 8, !tbaa !21
  br label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.010 = phi i32 [ 0, %bb.c ], [ 1, %._crit_edge ]
  ret i32 %.010
}

declare i32 @parse_vorbis_comment_field(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @parse_add_seekpoint(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18 ; 3 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @.str.94, ptr %2, align 8, !tbaa !21
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, 4294967295                 ; 2 uses
  %i.e = tail call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.95) #18
  %i.f = icmp ugt i64 %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @.str.96, ptr %2, align 8, !tbaa !21
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.g = add i64 %i.a, 4294967295
  %i.h = and i64 %i.g, 4294967295                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !36
  switch i8 %i.j, label %bb.l [
    i8 88, label %bb.f
    i8 115, label %bb.h
    i8 120, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @.str.93, ptr %2, align 8, !tbaa !21
  br label %bb.o

bb.h:                                             ; preds = %bb.e
  %i.k = tail call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.97) #18
  %i.l = icmp ugt i64 %i.h, %i.k
  br i1 %i.l, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  store ptr @.str.93, ptr %2, align 8, !tbaa !21
  br label %bb.o

bb.j:                                             ; preds = %bb.e
  %i.m = tail call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.91) #18
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  store ptr @.str.93, ptr %2, align 8, !tbaa !21
  br label %bb.o

bb.l:                                             ; preds = %bb.e
  %i.o = tail call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.91) #18
  %i.p = icmp ugt i64 %i.d, %i.o
  br i1 %i.p, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr @.str.93, ptr %2, align 8, !tbaa !21
  br label %bb.o

bb.n:                                             ; preds = %bb.h, %bb.l, %bb.j, %bb.f
  %i.q = tail call ptr @local_strdup(ptr noundef nonnull %0) #17
end_hunk_0
