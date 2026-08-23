Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/str?download=true
inline.NumInlined: 37
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cli_strrcpy:bb.a
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5) #23
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.07 = phi ptr [ %i.e, %.preheader ], [ %0, %bb.a ] ; 3 uses
  %.0 = phi ptr [ %i.c, %.preheader ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.d = load i8, ptr %.0, align 1, !tbaa !8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 1
  store i8 %i.d, ptr %.07, align 1, !tbaa !8
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.08 = phi ptr [ null, %bb.b ], [ %.07, %.preheader ]
  ret ptr %.08
}

; Function Attrs: nofree nounwind memory(read) uwtable
define noundef ptr @__cli_strcasestr(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22 ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.d = tail call ptr @__ctype_tolower_loc() #24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = load i8, ptr %1, align 1, !tbaa !8
  %i.g = sext i8 %i.f to i64                      ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = trunc i32 %i.i to i8
  store i8 %i.j, ptr %i.a, align 1, !tbaa !8
  %i.k = tail call ptr @__ctype_toupper_loc() #24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.g
  %i.n = load i32, ptr %i.m, align 4, !tbaa !9
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.q, align 1, !tbaa !8
  %i.r = call i64 @strcspn(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #22 ; 2 uses
  %.not21 = icmp eq i64 %i.r, %i.b
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02022 = phi i64 [ %i.y, %bb.b ], [ %i.r, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.02022 ; 3 uses
  %i.t = tail call i32 @strncasecmp(ptr noundef nonnull %i.s, ptr noundef nonnull %1, i64 noundef %i.c) #22
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.w = call i64 @strcspn(ptr noundef nonnull %i.v, ptr noundef nonnull %i.a) #22
  %i.x = add i64 %.02022, 1
  %i.y = add i64 %i.x, %i.w                       ; 2 uses
  %.not = icmp eq i64 %i.y, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.s, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @__cli_strndup(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strnlen(ptr noundef nonnull %0, i64 noundef %1) #22 ; 3 uses
  %i.b = add i64 %i.a, 1
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #25 ; 4 uses
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %0, i64 %i.a, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.a
  store i8 0, ptr %i.d, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @__cli_strnlen(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not8 = icmp eq i64 %1, 0
  br i1 %.not8, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.05 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.05
  %i.b = load i8, ptr %i.a, align 1, !tbaa !8
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw i64 %.05, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ %.05, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @__cli_strnstr(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !8       ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #22 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.013 = phi ptr [ %0, %bb.b ], [ %i.i, %bb.g ]
  %.0 = phi i64 [ %2, %bb.b ], [ %i.h, %bb.g ]    ; 2 uses
  %i.d = icmp eq i64 %.0, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.e
  %i.e = icmp eq i64 %i.h, 0
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.in = phi i64 [ %i.h, %bb.d ], [ %.0, %bb.c ]
  %.11442 = phi ptr [ %i.i, %bb.d ], [ %.013, %bb.c ] ; 3 uses
  %i.f = load i8, ptr %.11442, align 1, !tbaa !8  ; 2 uses
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.h = add i64 %.in, -1                         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.11442, i64 1 ; 3 uses
  %.not20 = icmp eq i8 %i.f, %i.b
  br i1 %.not20, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.j = icmp ugt i64 %i.c, %i.h
  br i1 %i.j, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @strncmp(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, i64 noundef %i.c) #22
  %.not21 = icmp eq i32 %i.k, 0
  br i1 %.not21, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.c, %.lr.ph, %bb.d, %bb.a
  %.015 = phi ptr [ null, %.lr.ph ], [ %0, %bb.a ], [ null, %bb.d ], [ %.11442, %bb.g ], [ null, %bb.f ], [ null, %bb.c ]
  ret ptr %.015
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @cli_strtokenize(ptr noundef %0, i8 noundef signext %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #14 {
bb.a:
  %.not27 = icmp eq i64 %2, 0
  br i1 %.not27, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sext i8 %1 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01624 = phi i64 [ 0, %.lr.ph ], [ %i.b, %bb.c ] ; 3 uses
  %.01823 = phi ptr [ %0, %.lr.ph ], [ %i.k, %bb.c ] ; 2 uses
  %i.b = add nuw i64 %.01624, 1                   ; 6 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.01624
  store ptr %.01823, ptr %i.c, align 8, !tbaa !23
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.01823, i32 noundef %i.a) #22 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.e = icmp ult i64 %i.b, %2
  br i1 %i.e, label %.lr.ph26.preheader, label %.loopexit

.lr.ph26.preheader:                               ; preds = %.preheader
  %i.f = shl i64 %i.b, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.f
  %i.g = shl i64 %2, 3
  %i.h = add i64 %i.g, -8
  %i.i = shl i64 %.01624, 3
  %i.j = sub i64 %i.h, %i.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.j, i1 false), !tbaa !23
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !8
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %.lr.ph26.preheader, %bb.a, %.preheader
  %.017 = phi i64 [ %i.b, %.preheader ], [ %i.b, %.lr.ph26.preheader ], [ 0, %bb.a ], [ %2, %bb.c ]
  ret i64 %.017
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @cli_strntol(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #15 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %.thread168, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.082 = phi ptr [ %i.k, %bb.c ], [ %0, %.preheader ] ; 3 uses
  %i.f = load i8, ptr %.082, align 1, !tbaa !8    ; 4 uses
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !10
  %i.j = and i16 %i.i, 8192
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.082, i64 1 ; 3 uses
  %i.l = icmp ult ptr %i.k, %i.e
  br i1 %i.l, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.183 = phi ptr [ %i.k, %bb.c ], [ %.082, %bb.b ] ; 6 uses
  %.not100 = icmp ult ptr %.183, %i.e
  br i1 %.not100, label %bb.d, label %.thread168

bb.d:                                             ; preds = %.critedge
  %.not105 = icmp eq i8 %i.f, 45                  ; 3 uses
  br i1 %.not105, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.183, i64 1 ; 2 uses
  %i.n = load i8, ptr %.183, align 1, !tbaa !8
  %.not102 = icmp ult ptr %i.m, %i.e
  br i1 %.not102, label %bb.h, label %.thread168

bb.f:                                             ; preds = %bb.d
  %i.o = icmp eq i8 %i.f, 43
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.183, i64 1 ; 2 uses
  %i.q = load i8, ptr %.183, align 1, !tbaa !8
  %.not101 = icmp ult ptr %i.p, %i.e
  br i1 %.not101, label %bb.h, label %.thread168

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.284 = phi ptr [ %i.m, %bb.e ], [ %i.p, %bb.g ], [ %.183, %bb.f ] ; 5 uses
  %.076.in = phi i8 [ %i.n, %bb.e ], [ %i.q, %bb.g ], [ %i.f, %bb.f ]
  %.076.in.fr = freeze i8 %.076.in
  %i.r = and i32 %3, -17
  %or.cond = icmp eq i32 %i.r, 0
  %i.s = icmp eq i8 %.076.in.fr, 48               ; 2 uses
  %or.cond3 = and i1 %or.cond, %i.s
  br i1 %or.cond3, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.284, i64 1 ; 2 uses
  %i.u = icmp ult ptr %i.t, %i.e
  br i1 %i.u, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.v = load i8, ptr %i.t, align 1, !tbaa !8
  switch i8 %i.v, label %.thread [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.284, i64 2 ; 2 uses
  %.not103 = icmp ult ptr %i.w, %i.e
  br i1 %.not103, label %.thread127, label %.thread168

.thread:                                          ; preds = %bb.j, %bb.i
  %i.x = icmp eq i32 %3, 0
  br i1 %i.x, label %bb.m, label %.thread127

bb.l:                                             ; preds = %bb.h
  %i.y = icmp eq i32 %3, 0
  %. = select i1 %i.s, i32 8, i32 10
  br i1 %i.y, label %bb.m, label %.thread127

bb.m:                                             ; preds = %bb.l, %.thread
  %i.z = phi i32 [ %., %bb.l ], [ 8, %.thread ]
  br label %.thread127

.thread127:                                       ; preds = %bb.l, %bb.k, %.thread, %bb.m
  %.3120130 = phi ptr [ %.284, %bb.m ], [ %i.w, %bb.k ], [ %.284, %.thread ], [ %.284, %bb.l ] ; 4 uses
  %i.aa = phi i32 [ %i.z, %bb.m ], [ 16, %bb.k ], [ %3, %.thread ], [ %3, %bb.l ] ; 2 uses
  %i.ab = select i1 %.not105, i64 -9223372036854775808, i64 9223372036854775807 ; 3 uses
  %i.ac = sext i32 %i.aa to i64                   ; 3 uses
  %i.ad = urem i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = udiv i64 %i.ab, %i.ac                   ; 3 uses
  %i.ag = icmp ult ptr %.3120130, %i.e
  br i1 %i.ag, label %.lr.ph.preheader, label %.thread168

.lr.ph.preheader:                                 ; preds = %.thread127
  %.3120130148 = ptrtoaddr ptr %.3120130 to i64
  %i.ah = add i64 %1, %i.a
  %i.ai = sub i64 %i.ah, %.3120130148
  %scevgep = getelementptr i8, ptr %.3120130, i64 %i.ai ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.0137 = phi i32 [ %.1, %bb.u ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.079136 = phi i64 [ %.180, %bb.u ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.4135 = phi ptr [ %i.bb, %bb.u ], [ %.3120130, %.lr.ph.preheader ] ; 4 uses
  %i.aj = load i8, ptr %.4135, align 1, !tbaa !8  ; 2 uses
  %i.ak = sext i8 %i.aj to i32                    ; 2 uses
  %i.al = sext i8 %i.aj to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !10
  %i.ao = zext i16 %i.an to i32                   ; 3 uses
  %i.ap = and i32 %i.ao, 2048
  %.not106 = icmp eq i32 %i.ap, 0
  br i1 %.not106, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.aq = add nsw i32 %i.ak, -48
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph
  %i.ar = and i32 %i.ao, 1024
  %.not107 = icmp eq i32 %i.ar, 0
  br i1 %.not107, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = and i32 %i.ao, 256
  %.not108 = icmp eq i32 %i.as, 0
  %.neg = select i1 %.not108, i32 -87, i32 -55
  %i.at = add nsw i32 %.neg, %i.ak
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.278 = phi i32 [ %i.aq, %bb.n ], [ %i.at, %bb.p ] ; 3 uses
  %.not109 = icmp slt i32 %.278, %i.aa
  br i1 %.not109, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.au = icmp slt i32 %.0137, 0
  %i.av = icmp ugt i64 %.079136, %i.af
  %or.cond112 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond112, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = icmp eq i64 %.079136, %i.af
  %i.ax = icmp sgt i32 %.278, %i.ae
  %or.cond113 = and i1 %i.aw, %i.ax
  br i1 %or.cond113, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = mul i64 %.079136, %i.ac
  %i.az = sext i32 %.278 to i64
  %i.ba = add i64 %i.ay, %i.az
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t
  %.180 = phi i64 [ %i.ba, %bb.t ], [ %i.af, %bb.s ], [ %.079136, %bb.r ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.t ], [ -1, %bb.s ], [ -1, %bb.r ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.4135, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.bb, %scevgep
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.u, %bb.o, %bb.q
  %.4.lcssa = phi ptr [ %.4135, %bb.q ], [ %scevgep, %bb.u ], [ %.4135, %bb.o ] ; 2 uses
  %.079.lcssa = phi i64 [ %.079136, %bb.q ], [ %.180, %bb.u ], [ %.079136, %bb.o ] ; 2 uses
  %.0.lcssa = phi i32 [ %.0137, %bb.q ], [ %.1, %bb.u ], [ %.0137, %bb.o ] ; 2 uses
  %i.bc = icmp slt i32 %.0.lcssa, 0
  br i1 %i.bc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.bd = tail call ptr @__errno_location() #24
  store i32 34, ptr %i.bd, align 4, !tbaa !9
  br label %.thread168
end_hunk_0
