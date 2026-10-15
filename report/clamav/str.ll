Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/str?download=true
inline.NumInlined: 37
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@__cli_strcasestr:bb.a
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
define noalias noundef ptr @__cli_strndup(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #12 {
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
  %.01624 = phi i64 [ 0, %.lr.ph ], [ %i.b, %bb.c ] ; 4 uses
  %.01823 = phi ptr [ %0, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.b = add nuw i64 %.01624, 1                   ; 5 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.01624
  store ptr %.01823, ptr %i.c, align 8, !tbaa !14
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.01823, i32 noundef %i.a) #22 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.e = icmp ult i64 %i.b, %2
  br i1 %i.e, label %.lr.ph26.preheader, label %.loopexit

.lr.ph26.preheader:                               ; preds = %.preheader
  %i.f = shl i64 %.01624, 3
  %i.g = getelementptr i8, ptr %3, i64 %i.f
  %scevgep = getelementptr i8, ptr %i.g, i64 8
  %i.h = shl i64 %2, 3
  %i.i = add i64 %i.h, -8
  %i.j = shl i64 %.01624, 3
  %i.k = sub i64 %i.i, %i.j
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.k, i1 false), !tbaa !14
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.082 = phi ptr [ %i.k, %bb.c ], [ %0, %.preheader ] ; 3 uses
  %i.f = load i8, ptr %.082, align 1, !tbaa !8    ; 4 uses
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !11
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
  %4 = phi i32 [ %i.z, %bb.m ], [ 16, %bb.k ], [ %3, %.thread ], [ %3, %bb.l ] ; 2 uses
  %i.aa = select i1 %.not105, i64 -9223372036854775808, i64 9223372036854775807 ; 3 uses
  %i.ab = sext i32 %4 to i64                      ; 3 uses
  %i.ac = urem i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = udiv i64 %i.aa, %i.ab                   ; 3 uses
  %i.af = icmp ult ptr %.3120130, %i.e
  br i1 %i.af, label %.lr.ph.preheader, label %.thread168

.lr.ph.preheader:                                 ; preds = %.thread127
  %.3120130148 = ptrtoaddr ptr %.3120130 to i64
  %i.ag = add i64 %1, %i.a
  %i.ah = sub i64 %i.ag, %.3120130148
  %scevgep = getelementptr i8, ptr %.3120130, i64 %i.ah ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.0137 = phi i32 [ %.1, %bb.u ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.079136 = phi i64 [ %.180, %bb.u ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.4135 = phi ptr [ %i.ba, %bb.u ], [ %.3120130, %.lr.ph.preheader ] ; 4 uses
  %i.ai = load i8, ptr %.4135, align 1, !tbaa !8  ; 2 uses
  %i.aj = sext i8 %i.ai to i32                    ; 2 uses
  %i.ak = sext i8 %i.ai to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !11
  %i.an = zext i16 %i.am to i32                   ; 3 uses
  %i.ao = and i32 %i.an, 2048
  %.not106 = icmp eq i32 %i.ao, 0
  br i1 %.not106, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.ap = add nsw i32 %i.aj, -48
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph
  %i.aq = and i32 %i.an, 1024
  %.not107 = icmp eq i32 %i.aq, 0
  br i1 %.not107, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = and i32 %i.an, 256
  %.not108 = icmp eq i32 %i.ar, 0
  %.neg = select i1 %.not108, i32 -87, i32 -55
  %i.as = add nsw i32 %.neg, %i.aj
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.278 = phi i32 [ %i.ap, %bb.n ], [ %i.as, %bb.p ] ; 3 uses
  %.not109 = icmp slt i32 %.278, %4
  br i1 %.not109, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.at = icmp slt i32 %.0137, 0
  %i.au = icmp ugt i64 %.079136, %i.ae
  %or.cond112 = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond112, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = icmp eq i64 %.079136, %i.ae
  %i.aw = icmp sgt i32 %.278, %i.ad
  %or.cond113 = and i1 %i.av, %i.aw
  br i1 %or.cond113, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = mul i64 %.079136, %i.ab
  %i.ay = sext i32 %.278 to i64
  %i.az = add i64 %i.ax, %i.ay
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t
  %.180 = phi i64 [ %i.az, %bb.t ], [ %i.ae, %bb.s ], [ %.079136, %bb.r ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.t ], [ -1, %bb.s ], [ -1, %bb.r ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.4135, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.ba, %scevgep
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.u, %bb.o, %bb.q
  %.4.lcssa = phi ptr [ %.4135, %bb.q ], [ %scevgep, %bb.u ], [ %.4135, %bb.o ] ; 2 uses
  %.079.lcssa = phi i64 [ %.079136, %bb.q ], [ %.180, %bb.u ], [ %.079136, %bb.o ] ; 2 uses
  %.0.lcssa = phi i32 [ %.0137, %bb.q ], [ %.1, %bb.u ], [ %.0137, %bb.o ] ; 2 uses
  %i.bb = icmp slt i32 %.0.lcssa, 0
  br i1 %i.bb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.bc = tail call ptr @__errno_location() #24
  store i32 34, ptr %i.bc, align 4, !tbaa !9
  br label %.thread168

bb.w:                                             ; preds = %._crit_edge
  %i.bd = sub i64 0, %.079.lcssa
  %spec.select = select i1 %.not105, i64 %i.bd, i64 %.079.lcssa
  %i.be = icmp eq i32 %.0.lcssa, 0
  %spec.select175 = select i1 %i.be, ptr %0, ptr %.4.lcssa
  br label %.thread168

.thread168:                                       ; preds = %bb.w, %.thread127, %bb.v, %bb.k, %bb.g, %bb.e, %.critedge, %bb.a
  %.281 = phi i64 [ 0, %bb.a ], [ 0, %.critedge ], [ 0, %bb.e ], [ 0, %bb.k ], [ %i.aa, %bb.v ], [ 0, %bb.g ], [ %spec.select, %bb.w ], [ 0, %.thread127 ]
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %.critedge ], [ %0, %bb.e ], [ %0, %bb.k ], [ %.4.lcssa, %bb.v ], [ %0, %bb.g ], [ %spec.select175, %bb.w ], [ %0, %.thread127 ]
  %.not110 = icmp eq ptr %2, null
  br i1 %.not110, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread168
  store ptr %.2, ptr %2, align 8, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread168
  ret i64 %.281
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @cli_strntoul(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #15 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = tail call ptr @__ctype_b_loc() #24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.077 = phi ptr [ %0, %bb.a ], [ %i.j, %bb.c ]  ; 3 uses
  %i.e = load i8, ptr %.077, align 1, !tbaa !8    ; 4 uses
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !11
  %i.i = and i16 %i.h, 8192
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.077, i64 1 ; 3 uses
  %i.k = icmp ult ptr %i.j, %i.d
  br i1 %i.k, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.178 = phi ptr [ %i.j, %bb.c ], [ %.077, %bb.b ] ; 6 uses
  %.not95 = icmp ult ptr %.178, %i.d
  br i1 %.not95, label %bb.d, label %.thread162

bb.d:                                             ; preds = %.critedge
  %.not104 = icmp eq i8 %i.e, 45                  ; 2 uses
  br i1 %.not104, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.178, i64 1 ; 2 uses
  %i.m = load i8, ptr %.178, align 1, !tbaa !8
  %.not97 = icmp ult ptr %i.l, %i.d
  br i1 %.not97, label %bb.h, label %.thread162

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i8 %i.e, 43
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.178, i64 1 ; 2 uses
  %i.p = load i8, ptr %.178, align 1, !tbaa !8
  %.not96 = icmp ult ptr %i.o, %i.d
  br i1 %.not96, label %bb.h, label %.thread162

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.279 = phi ptr [ %i.l, %bb.e ], [ %i.o, %bb.g ], [ %.178, %bb.f ] ; 5 uses
  %.071.in = phi i8 [ %i.m, %bb.e ], [ %i.p, %bb.g ], [ %i.e, %bb.f ]
  %.071.in.fr = freeze i8 %.071.in
  %i.q = and i32 %3, -17
  %or.cond = icmp eq i32 %i.q, 0
  %i.r = icmp eq i8 %.071.in.fr, 48               ; 2 uses
  %or.cond3 = and i1 %or.cond, %i.r
  br i1 %or.cond3, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.279, i64 1 ; 2 uses
  %i.t = icmp ult ptr %i.s, %i.d
  br i1 %i.t, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %i.s, align 1, !tbaa !8
  switch i8 %i.u, label %.thread [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.279, i64 2 ; 2 uses
  %.not98 = icmp ult ptr %i.v, %i.d
  br i1 %.not98, label %.thread122, label %.thread162

.thread:                                          ; preds = %bb.j, %bb.i
  %i.w = icmp eq i32 %3, 0
  br i1 %i.w, label %bb.m, label %.thread122

bb.l:                                             ; preds = %bb.h
  %i.x = icmp eq i32 %3, 0
  %. = select i1 %i.r, i32 8, i32 10
  br i1 %i.x, label %bb.m, label %.thread122

bb.m:                                             ; preds = %bb.l, %.thread
  %i.y = phi i32 [ %., %bb.l ], [ 8, %.thread ]
  br label %.thread122

.thread122:                                       ; preds = %bb.l, %bb.k, %.thread, %bb.m
  %.3115125 = phi ptr [ %.279, %bb.m ], [ %i.v, %bb.k ], [ %.279, %.thread ], [ %.279, %bb.l ] ; 4 uses
  %4 = phi i32 [ %i.y, %bb.m ], [ 16, %bb.k ], [ %3, %.thread ], [ %3, %bb.l ] ; 2 uses
  %i.z = sext i32 %4 to i64                       ; 3 uses
  %i.aa = udiv i64 -1, %i.z                       ; 3 uses
  %i.ab = urem i64 -1, %i.z
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = icmp ult ptr %.3115125, %i.d
  br i1 %i.ad, label %.lr.ph.preheader, label %.thread162

.lr.ph.preheader:                                 ; preds = %.thread122
  %.3115125143 = ptrtoaddr ptr %.3115125 to i64
  %i.ae = add i64 %1, %i.a
  %i.af = sub i64 %i.ae, %.3115125143
  %scevgep = getelementptr i8, ptr %.3115125, i64 %i.af ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.0132 = phi i32 [ %.1, %bb.u ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.074131 = phi i64 [ %.175, %bb.u ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.4130 = phi ptr [ %i.ay, %bb.u ], [ %.3115125, %.lr.ph.preheader ] ; 4 uses
  %i.ag = load i8, ptr %.4130, align 1, !tbaa !8  ; 2 uses
  %i.ah = sext i8 %i.ag to i32                    ; 2 uses
  %i.ai = sext i8 %i.ag to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !11
  %i.al = zext i16 %i.ak to i32                   ; 3 uses
  %i.am = and i32 %i.al, 2048
  %.not99 = icmp eq i32 %i.am, 0
  br i1 %.not99, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.an = add nsw i32 %i.ah, -48
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph
  %i.ao = and i32 %i.al, 1024
  %.not100 = icmp eq i32 %i.ao, 0
  br i1 %.not100, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = and i32 %i.al, 256
  %.not101 = icmp eq i32 %i.ap, 0
  %.neg = select i1 %.not101, i32 -87, i32 -55
  %i.aq = add nsw i32 %.neg, %i.ah
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.273 = phi i32 [ %i.an, %bb.n ], [ %i.aq, %bb.p ] ; 3 uses
  %.not102 = icmp slt i32 %.273, %4
  br i1 %.not102, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.ar = icmp slt i32 %.0132, 0
  %i.as = icmp ugt i64 %.074131, %i.aa
  %or.cond107 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond107, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = icmp eq i64 %.074131, %i.aa
  %i.au = icmp sgt i32 %.273, %i.ac
  %or.cond108 = and i1 %i.at, %i.au
  br i1 %or.cond108, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = mul i64 %.074131, %i.z
  %i.aw = sext i32 %.273 to i64
  %i.ax = add i64 %i.av, %i.aw
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t
  %.175 = phi i64 [ %i.ax, %bb.t ], [ %i.aa, %bb.s ], [ %.074131, %bb.r ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.t ], [ -1, %bb.s ], [ -1, %bb.r ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.4130, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.ay, %scevgep
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.u, %bb.o, %bb.q
  %.4.lcssa = phi ptr [ %.4130, %bb.q ], [ %scevgep, %bb.u ], [ %.4130, %bb.o ] ; 2 uses
  %.074.lcssa = phi i64 [ %.074131, %bb.q ], [ %.175, %bb.u ], [ %.074131, %bb.o ] ; 2 uses
  %.0.lcssa = phi i32 [ %.0132, %bb.q ], [ %.1, %bb.u ], [ %.0132, %bb.o ] ; 2 uses
  %i.az = icmp slt i32 %.0.lcssa, 0
  br i1 %i.az, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.ba = tail call ptr @__errno_location() #24
  store i32 34, ptr %i.ba, align 4, !tbaa !9
  br label %.thread162

bb.w:                                             ; preds = %._crit_edge
  %i.bb = sub i64 0, %.074.lcssa
  %spec.select = select i1 %.not104, i64 %i.bb, i64 %.074.lcssa
  %i.bc = icmp eq i32 %.0.lcssa, 0
  %spec.select169 = select i1 %i.bc, ptr %0, ptr %.4.lcssa
  br label %.thread162

.thread162:                                       ; preds = %bb.w, %.thread122, %bb.v, %bb.k, %bb.g, %bb.e, %.critedge
  %.276 = phi i64 [ 0, %.critedge ], [ 0, %bb.e ], [ 0, %bb.k ], [ -1, %bb.v ], [ 0, %bb.g ], [ %spec.select, %bb.w ], [ 0, %.thread122 ]
  %.2 = phi ptr [ %0, %.critedge ], [ %0, %bb.e ], [ %0, %bb.k ], [ %.4.lcssa, %bb.v ], [ %0, %bb.g ], [ %spec.select169, %bb.w ], [ %0, %.thread122 ]
  %.not105 = icmp eq ptr %2, null
  br i1 %.not105, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread162
  store ptr %.2, ptr %2, align 8, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread162
  ret i64 %.276
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 28) i32 @cli_strntol_wrap(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !14
  %i.b = icmp ne i64 %1, 0
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %4, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #24    ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !9
  %i.f = call i64 @cli_strntol(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef %3) ; 2 uses
  %i.g = add i64 %i.f, -9223372036854775807
  %or.cond5 = icmp ult i64 %i.g, 2
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.e, align 4, !tbaa !9
  %i.i = icmp eq i32 %i.h, 34
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not = icmp ne i32 %2, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.m = icmp ult ptr %i.j, %i.l
  %or.cond25 = select i1 %.not, i1 %i.m, i1 false
  br i1 %or.cond25, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.j, align 1, !tbaa !8
  %.not23 = icmp eq i8 %i.n, 0
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %i.f, ptr %4, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.a, %bb.g
  %.0 = phi i32 [ 27, %bb.a ], [ 27, %bb.c ], [ 27, %bb.d ], [ 0, %bb.g ], [ 27, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 28) i32 @cli_strntoul_wrap(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !14
  %i.b = icmp ne i64 %1, 0
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %4, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #24    ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !9
  %i.f = call i64 @cli_strntoul(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef %3) ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.e, align 4, !tbaa !9
  %i.i = icmp eq i32 %i.h, 34
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not = icmp ne i32 %2, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.m = icmp ult ptr %i.j, %i.l
  %or.cond22 = select i1 %.not, i1 %i.m, i1 false
  br i1 %or.cond22, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.j, align 1, !tbaa !8
  %.not20 = icmp eq i8 %i.n, 0
  br i1 %.not20, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %i.f, ptr %4, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.a, %bb.g
  %.0 = phi i32 [ 27, %bb.a ], [ 27, %bb.c ], [ 27, %bb.d ], [ 0, %bb.g ], [ 27, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @cli_ldbtokenize(ptr noundef %0, i8 noundef signext %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not84 = icmp eq i64 %2, 0
  br i1 %.not84, label %.loopexit, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.a, %.split.us
  %.03578 = phi i64 [ %i.v, %.split.us ], [ 0, %bb.a ] ; 4 uses
  %.03877 = phi i64 [ %i.b, %.split.us ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.03578 ; 4 uses
  %i.b = add nuw i64 %.03877, 1                   ; 7 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03877
  store ptr %i.a, ptr %i.c, align 8, !tbaa !14
  %i.d = load i8, ptr %i.a, align 1, !tbaa !8     ; 3 uses
  %.not53 = icmp eq i8 %i.d, 0
  br i1 %.not53, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph80
  %.not85 = icmp ult i64 %.03877, %4
  br i1 %.not85, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not118 = icmp eq i8 %i.d, %1
  br i1 %.not118, label %.split.us, label %.lr.ph63.split

bb.b:                                             ; preds = %.lr.ph63.split
  %.not86 = icmp eq i8 %i.g, %1
  br i1 %.not86, label %.split.us.loopexit, label %.lr.ph63.split

.lr.ph63.split:                                   ; preds = %.lr.ph.split.us, %bb.b
  %.13654.us62 = phi i64 [ %i.e, %bb.b ], [ %.03578, %.lr.ph.split.us ]
  %i.e = add i64 %.13654.us62, 1                  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8     ; 2 uses
  %.not.us = icmp eq i8 %i.g, 0
  br i1 %.not.us, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph80, %bb.e, %.lr.ph63.split
  %i.h = icmp ult i64 %i.b, %2
  br i1 %i.h, label %.lr.ph83.preheader, label %.loopexit

.lr.ph83.preheader:                               ; preds = %.preheader
  %i.i = shl i64 %i.b, 3
  %scevgep111 = getelementptr i8, ptr %3, i64 %i.i
  %i.j = sub nuw i64 %2, %i.b
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep111, i8 0, i64 %i.k, i1 false), !tbaa !14
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %i.l = phi i8 [ %i.t, %bb.e ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.m = phi ptr [ %i.s, %bb.e ], [ %i.a, %.lr.ph ] ; 2 uses
  %.155 = phi i1 [ %.2, %bb.e ], [ false, %.lr.ph ] ; 3 uses
  %.13654 = phi i64 [ %i.r, %bb.e ], [ %.03578, %.lr.ph ] ; 3 uses
  %i.n = icmp ne i8 %i.l, %1
  %or.cond45.not = or i1 %.155, %i.n
  br i1 %or.cond45.not, label %bb.c, label %.split.us
end_hunk_0
