Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/mcmc?download=true
inline.NumInlined: 27
inline.NumDeleted: 7
begin_hunk_0_@mcmc_token_get_flag_32:bb.a
bb.j:                                             ; preds = %.lr.ph.split.i
  %i.ar = zext nneg i8 %i.aq to i32               ; 2 uses
  %.nonneg.i = sub nuw i32 -2147483648, %i.ar
  %i.as = udiv i32 %.nonneg.i, 10
  %.neg.i = sub nsw i32 0, %i.as
  %.not52.i = icmp slt i32 %.03860.i, %.neg.i
  br i1 %.not52.i, label %mcmc_tokto32.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = mul nsw i32 %.03860.i, 10
  %i.au = sub nsw i32 %i.at, %i.ar                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.13661.i, i64 1 ; 2 uses
  %.not49.i = icmp eq ptr %i.av, %i.ad
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %bb.i, %bb.k, %bb.g
  %.038.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.au, %bb.k ], [ %i.an, %bb.i ]
  store i32 %.038.lcssa.i, ptr %3, align 4, !tbaa !29
  br label %mcmc_tokto32.exit

mcmc_tokto32.exit:                                ; preds = %bb.b, %bb.h, %.lr.ph.split.us.i, %bb.j, %.lr.ph.split.i, %bb.a, %_mcmc_token_len.exit.i, %._crit_edge.i, %bb.f
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %._crit_edge.i ], [ -2, %bb.f ], [ -2, %_mcmc_token_len.exit.i ], [ -3, %.lr.ph.split.i ], [ -3, %.lr.ph.split.us.i ], [ -1, %bb.j ], [ -1, %bb.h ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -3, 1) i32 @mcmc_token_get_flag_64(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef signext %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28    ; 2 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !21      ; 2 uses
  %i.d = icmp ult i8 %i.b, %i.c
  br i1 %i.d, label %.lr.ph.i, label %mcmc_tokto64.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.f = zext i8 %i.b to i64
  %wide.trip.count.i = zext i8 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %mcmc_tokto64.exit, label %bb.c, !llvm.loop !5

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.f, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.h = load i16, ptr %i.g, align 2, !tbaa !25
  %i.i = zext i16 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23
  %i.l = icmp eq i8 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !25
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.r, %bb.d ], [ %i.s, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !23
  %i.u = icmp eq i8 %i.t, 32
  br i1 %i.u, label %bb.e, label %_mcmc_token_len.exit.i, !llvm.loop !6

_mcmc_token_len.exit.i:                           ; preds = %bb.e
  %i.v = ptrtoint ptr %.0.i.i to i64
  %i.w = ptrtoint ptr %i.n to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.f, label %mcmc_tokto64.exit

bb.f:                                             ; preds = %_mcmc_token_len.exit.i
  %i.aa = add i64 %i.x, 4294967295
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  %i.ac = and i64 %i.aa, 4294967295               ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = icmp samesign ugt i64 %i.ac, 22
  br i1 %i.ae, label %mcmc_tokto64.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !23
  %.fr62.i = freeze i8 %i.af
  %i.ag = icmp eq i8 %.fr62.i, 45                 ; 2 uses
  %spec.select.idx.i = zext i1 %i.ag to i64       ; 2 uses
  %.not4858.i = icmp samesign eq i64 %i.ac, %spec.select.idx.i
  br i1 %.not4858.i, label %._crit_edge.i, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.g
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 %spec.select.idx.i ; 2 uses
  br i1 %i.ag, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i7, %bb.i
  %.13660.us.i = phi ptr [ %i.ao, %bb.i ], [ %spec.select.i, %.lr.ph.i7 ] ; 2 uses
  %.03859.us.i = phi i64 [ %i.an, %bb.i ], [ 0, %.lr.ph.i7 ] ; 2 uses
  %i.ah = load i8, ptr %.13660.us.i, align 1, !tbaa !23
  %i.ai = add i8 %i.ah, -48                       ; 2 uses
  %or.cond.us.i = icmp ult i8 %i.ai, 10
  br i1 %or.cond.us.i, label %bb.h, label %mcmc_tokto64.exit

bb.h:                                             ; preds = %.lr.ph.split.us.i
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = xor i64 %i.aj, 9223372036854775806
  %i.al = udiv i64 %i.ak, 10
  %.not50.us.i = icmp sgt i64 %.03859.us.i, %i.al
  br i1 %.not50.us.i, label %mcmc_tokto64.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = mul nsw i64 %.03859.us.i, 10
  %i.an = add nsw i64 %i.am, %i.aj                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.13660.us.i, i64 1 ; 2 uses
  %.not48.us.i = icmp eq ptr %i.ao, %i.ad
  br i1 %.not48.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !4

.lr.ph.split.i:                                   ; preds = %.lr.ph.i7, %bb.k
  %.13660.i = phi ptr [ %i.av, %bb.k ], [ %spec.select.i, %.lr.ph.i7 ] ; 2 uses
  %.03859.i = phi i64 [ %i.au, %bb.k ], [ 0, %.lr.ph.i7 ] ; 2 uses
  %i.ap = load i8, ptr %.13660.i, align 1, !tbaa !23
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.aq, 10
  br i1 %or.cond.i, label %bb.j, label %mcmc_tokto64.exit

bb.j:                                             ; preds = %.lr.ph.split.i
  %i.ar = zext nneg i8 %i.aq to i64               ; 2 uses
  %.nonneg.i = sub nuw i64 -9223372036854775808, %i.ar
  %i.as = udiv i64 %.nonneg.i, 10
  %.neg.i = sub nsw i64 0, %i.as
  %.not51.i = icmp slt i64 %.03859.i, %.neg.i
  br i1 %.not51.i, label %mcmc_tokto64.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = mul nsw i64 %.03859.i, 10
  %i.au = sub nsw i64 %i.at, %i.ar                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.13660.i, i64 1 ; 2 uses
  %.not48.i = icmp eq ptr %i.av, %i.ad
  br i1 %.not48.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %bb.i, %bb.k, %bb.g
  %.038.lcssa.i = phi i64 [ 0, %bb.g ], [ %i.au, %bb.k ], [ %i.an, %bb.i ]
  store i64 %.038.lcssa.i, ptr %3, align 8, !tbaa !30
  br label %mcmc_tokto64.exit

mcmc_tokto64.exit:                                ; preds = %bb.b, %bb.h, %.lr.ph.split.us.i, %bb.j, %.lr.ph.split.i, %bb.a, %_mcmc_token_len.exit.i, %._crit_edge.i, %bb.f
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %._crit_edge.i ], [ -2, %bb.f ], [ -2, %_mcmc_token_len.exit.i ], [ -3, %.lr.ph.split.i ], [ -3, %.lr.ph.split.us.i ], [ -1, %bb.j ], [ -1, %bb.h ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 -2, 255) i32 @mcmc_token_get_flag_idx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef signext %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i8, ptr %1, align 8, !tbaa !21      ; 2 uses
  %i.e = icmp ult i8 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = zext i8 %i.b to i64
  %wide.trip.count = zext i8 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.h = load i16, ptr %i.g, align 2, !tbaa !25
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23
  %.not = icmp eq i8 %i.k, %2
  br i1 %.not, label %._crit_edge.loopexit.split.loop.exit21, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge.loopexit.split.loop.exit21:           ; preds = %.lr.ph
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit21, %bb.a
  %i.m = phi i32 [ -2, %bb.a ], [ %i.l, %._crit_edge.loopexit.split.loop.exit21 ], [ -2, %bb.b ]
  ret i32 %i.m
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -1, 1) i32 @mcmc_parse_buf(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) initializes((0, 72)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  %i.b = tail call ptr @memchr(ptr noundef %0, i32 noundef 10, i64 noundef %1) #19 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %3, label %bb.b

3:                                                ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 5, ptr %4, align 2, !tbaa !47
  br label %_mcmc_parse_response.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !48
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !33
  store i16 109, ptr %2, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.099.i = phi ptr [ %0, %bb.b ], [ %i.k, %bb.d ] ; 18 uses
  %i.j = load i8, ptr %.099.i, align 1, !tbaa !23
  switch i8 %i.j, label %bb.d [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 32, label %.critedge.i.loopexit
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.099.i, i64 1
  br label %bb.c, !llvm.loop !45

.critedge.i.loopexit:                             ; preds = %bb.c
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %bb.c, %.critedge.i.loopexit
  %.not123.i = phi i1 [ false, %.critedge.i.loopexit ], [ true, %bb.c ], [ true, %bb.c ] ; 2 uses
  %.096.i = phi i32 [ 1, %.critedge.i.loopexit ], [ 0, %bb.c ], [ 0, %bb.c ] ; 12 uses
  %i.l = ptrtoint ptr %.099.i to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = load i8, ptr %0, align 1, !tbaa !23
  %i.p = add i8 %i.o, -48
  %or.cond132.i = icmp ult i8 %i.p, 10
  br i1 %or.cond132.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge.i
  store i32 983147, ptr %2, align 8
  br label %_mcmc_parse_response.exit

bb.f:                                             ; preds = %.critedge.i
  %i.q = icmp slt i32 %i.n, 2
  br i1 %i.q, label %5, label %bb.g

5:                                                ; preds = %bb.f
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 18, ptr %6, align 2, !tbaa !47
  br label %_mcmc_parse_response.exit

bb.g:                                             ; preds = %bb.f
  switch i32 %i.n, label %bb.ar [
    i32 2, label %bb.h
    i32 3, label %bb.ad
    i32 4, label %bb.ae
    i32 5, label %bb.ag
    i32 6, label %bb.ak
    i32 7, label %bb.am
    i32 9, label %bb.ap
    i32 10, label %bb.aq
  ]

bb.h:                                             ; preds = %bb.g
  store i16 101, ptr %2, align 8, !tbaa !34
  %i.r = load i8, ptr %0, align 1, !tbaa !23
  switch i8 %i.r, label %bb.y [
    i8 69, label %bb.i
    i8 72, label %bb.k
    i8 77, label %bb.l
    i8 78, label %bb.n
    i8 79, label %bb.p
    i8 86, label %bb.r
  ]

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !23
  switch i8 %i.t, label %.fold.split134.i [
    i8 78, label %bb.y
    i8 88, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.y

bb.k:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !23
  %i.w = icmp eq i8 %i.v, 68
  %spec.select.i = select i1 %i.w, i32 15, i32 -1
  br label %bb.y

bb.l:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23
  switch i8 %i.y, label %.fold.split134.i [
    i8 78, label %bb.y
    i8 69, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %bb.y

bb.n:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !23
  switch i8 %i.aa, label %.fold.split134.i [
    i8 70, label %bb.y
    i8 83, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.y

bb.p:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !23
  %i.ad = icmp eq i8 %i.ac, 75
  br i1 %i.ad, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  store i16 104, ptr %2, align 8, !tbaa !34
  br label %bb.y

bb.r:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !23
  %i.ag = icmp eq i8 %i.af, 65
  br i1 %i.ag, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  br i1 %.not123.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = tail call ptr @__errno_location() #18   ; 2 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !35
  %i.ai = call i64 @strtoul(ptr noundef nonnull %.099.i, ptr noundef nonnull %i.a, i32 noundef 10) #20 ; 2 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.ak = icmp eq i32 %i.aj, 34
  br i1 %i.ak, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = trunc i64 %i.ai to i32
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !35  ; 3 uses
  %i.an = icmp eq ptr %.099.i, %i.am
  %i.ao = icmp ugt i32 %i.al, -4
  %or.cond.i = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  store i16 109, ptr %2, align 8, !tbaa !34
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ap = add i64 %i.ai, 2
  %i.aq = and i64 %i.ap, 4294967295               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !36
  %i.as = load i64, ptr %i.i, align 8, !tbaa !33
  %i.at = sub i64 %1, %i.as
  %i.au = shl i64 %i.at, 32
  %i.av = ashr exact i64 %i.au, 32
  %spec.select160.i = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %i.aq)
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %spec.select160.i, ptr %i.aw, align 8, !tbaa !37
  %i.ax = load i8, ptr %i.am, align 1, !tbaa !23
  %.not128.i = icmp eq i8 %i.ax, 32
  %spec.select135.i = zext i1 %.not128.i to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1100.i = phi ptr [ %.099.i, %bb.v ], [ %i.am, %bb.w ]
  %.298.i = phi i32 [ 1, %bb.v ], [ %spec.select135.i, %bb.w ]
  %.0.i = phi i32 [ -19, %bb.v ], [ 15, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.y

.thread.i:                                        ; preds = %bb.s
  store i16 109, ptr %2, align 8, !tbaa !34
  br label %bb.ac

.fold.split134.i:                                 ; preds = %bb.n, %bb.l, %bb.i
  br label %bb.y

bb.y:                                             ; preds = %.fold.split134.i, %bb.x, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.2101.i = phi ptr [ %.099.i, %bb.h ], [ %.099.i, %bb.r ], [ %.099.i, %bb.j ], [ %.099.i, %bb.i ], [ %.1100.i, %bb.x ], [ %.099.i, %.fold.split134.i ], [ %.099.i, %bb.k ], [ %.099.i, %bb.m ], [ %.099.i, %bb.l ], [ %.099.i, %bb.p ], [ %.099.i, %bb.o ], [ %.099.i, %bb.n ], [ %.099.i, %bb.q ]
  %.3.i = phi i32 [ %.096.i, %bb.h ], [ %.096.i, %bb.r ], [ %.096.i, %bb.j ], [ %.096.i, %bb.i ], [ %.298.i, %bb.x ], [ %.096.i, %.fold.split134.i ], [ %.096.i, %bb.k ], [ %.096.i, %bb.m ], [ %.096.i, %bb.l ], [ %.096.i, %bb.p ], [ %.096.i, %bb.o ], [ %.096.i, %bb.n ], [ %.096.i, %bb.q ]
  %.1.i = phi i32 [ -1, %bb.h ], [ -1, %bb.r ], [ 9, %bb.j ], [ 17, %bb.i ], [ %.0.i, %bb.x ], [ -1, %.fold.split134.i ], [ %spec.select.i, %bb.k ], [ 15, %bb.m ], [ 16, %bb.l ], [ -1, %bb.p ], [ 14, %bb.o ], [ 13, %bb.n ], [ 15, %bb.q ] ; 3 uses
  %.not129.i = icmp eq i32 %.3.i, 0
  br i1 %.not129.i, label %bb.ac, label %.preheader.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %.3102.i = phi ptr [ %i.ba, %.preheader.i ], [ %.2101.i, %bb.y ] ; 4 uses
  %i.ay = load i8, ptr %.3102.i, align 1, !tbaa !23
  %i.az = icmp eq i8 %i.ay, 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.3102.i, i64 1
  br i1 %i.az, label %.preheader.i, label %bb.z, !llvm.loop !46

bb.z:                                             ; preds = %.preheader.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %.3102.i, ptr %i.bb, align 8, !tbaa !23
  %i.bc = load i64, ptr %i.i, align 8, !tbaa !33  ; 2 uses
  %i.bd = ptrtoint ptr %.3102.i to i64
  %.neg.i = sub i64 %i.g, %i.bd
  %i.be = add i64 %i.bc, %.neg.i                  ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !23
  %i.bg = getelementptr i8, ptr %0, i64 %i.bc
  %i.bh = getelementptr i8, ptr %i.bg, i64 -2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !23
  %i.bj = icmp eq i8 %i.bi, 13
  br i1 %i.bj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bk = add i64 %i.be, -2
  store i64 %i.bk, ptr %i.bf, align 8, !tbaa !23
  br label %bb.at

bb.ab:                                            ; preds = %bb.z
  %i.bl = add i64 %i.be, -1
  store i64 %i.bl, ptr %i.bf, align 8, !tbaa !23
  br label %bb.at

bb.ac:                                            ; preds = %bb.y, %.thread.i
  %.1140.i = phi i32 [ -19, %.thread.i ], [ %.1.i, %bb.y ]
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %bb.at

bb.ad:                                            ; preds = %bb.g
  %i.bn = load i16, ptr %0, align 1
  %i.bo = xor i16 %i.bn, 20037
  %i.bp = getelementptr i8, ptr %0, i64 2
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i16
  %i.bs = xor i16 %i.br, 68
  %i.bt = or i16 %i.bo, %i.bs
  %i.bu = icmp ne i16 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.thread146.sink.split.i, label %.thread141.i

bb.ae:                                            ; preds = %bb.g
  %i.bx = load i32, ptr %0, align 1
  %i.by = icmp ne i32 %i.bx, 1413567571
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.af, label %.thread141.i

bb.af:                                            ; preds = %bb.ae
  store i16 102, ptr %2, align 8, !tbaa !34
  %i.cb = tail call fastcc i32 @_mcmc_parse_stat_line(ptr noundef nonnull %0, ptr noundef nonnull %2)
  br label %bb.at

bb.ag:                                            ; preds = %bb.g
  %i.cc = load i32, ptr %0, align 1
  %i.cd = xor i32 %i.cc, 1431060822
  %i.ce = getelementptr i8, ptr %0, i64 4
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i32
  %i.ch = xor i32 %i.cg, 69
  %i.ci = or i32 %i.cd, %i.ch
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not123.i, label %.thread141.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = tail call fastcc i32 @_mcmc_parse_value_line(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2)
  br label %bb.at

bb.aj:                                            ; preds = %bb.ag
  %i.cn = load i32, ptr %0, align 1
  %i.co = xor i32 %i.cn, 1330795077
  %i.cp = getelementptr i8, ptr %0, i64 4
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i32
  %i.cs = xor i32 %i.cr, 82
  %i.ct = or i32 %i.co, %i.cs
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.thread141.sink.split.i, label %.thread141.i

bb.ak:                                            ; preds = %bb.g
  %i.cx = load i32, ptr %0, align 1
  %i.cy = xor i32 %i.cx, 1380930643
  %i.cz = getelementptr i8, ptr %0, i64 4
  %i.da = load i16, ptr %i.cz, align 1
  %i.db = zext i16 %i.da to i32
  %i.dc = xor i32 %i.db, 17477
  %i.dd = or i32 %i.cy, %i.dc
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %.thread146.sink.split.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dh = load i32, ptr %0, align 1
  %i.di = xor i32 %i.dh, 1397315653
  %i.dj = getelementptr i8, ptr %0, i64 4
  %i.dk = load i16, ptr %i.dj, align 1
  %i.dl = zext i16 %i.dk to i32
  %i.dm = xor i32 %i.dl, 21332
  %i.dn = or i32 %i.di, %i.dm
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %.thread146.sink.split.i, label %.thread141.i

bb.am:                                            ; preds = %bb.g
  %i.dr = load i32, ptr %0, align 1
  %i.ds = xor i32 %i.dr, 1162626372
  %i.dt = getelementptr i8, ptr %0, i64 3
  %i.du = load i32, ptr %i.dt, align 1
  %i.dv = xor i32 %i.du, 1145394245
  %i.dw = or i32 %i.ds, %i.dv
  %i.dx = icmp ne i32 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %.thread146.sink.split.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = load i32, ptr %0, align 1
  %i.eb = xor i32 %i.ea, 1129664340
  %i.ec = getelementptr i8, ptr %0, i64 3
  %i.ed = load i32, ptr %i.ec, align 1
  %i.ee = xor i32 %i.ed, 1145391171
  %i.ef = or i32 %i.eb, %i.ee
  %i.eg = icmp ne i32 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %.thread146.sink.split.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ej = load i32, ptr %0, align 1
  %i.ek = xor i32 %i.ej, 1397900630
  %i.el = getelementptr i8, ptr %0, i64 3
  %i.em = load i32, ptr %i.el, align 1
  %i.en = xor i32 %i.em, 1313818963
  %i.eo = or i32 %i.ek, %i.en
  %i.ep = icmp ne i32 %i.eo, 0
  %i.eq = zext i1 %i.ep to i32
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %.thread146.sink.split.i, label %.thread141.i

bb.ap:                                            ; preds = %bb.g
  %i.es = load i64, ptr %0, align 1
  %i.et = xor i64 %i.es, 5644504871644450638
  %i.eu = getelementptr i8, ptr %0, i64 8
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = zext i8 %i.ev to i64
  %i.ex = xor i64 %i.ew, 68
  %i.ey = or i64 %i.et, %i.ex
  %i.ez = icmp ne i64 %i.ey, 0
  %i.fa = zext i1 %i.ez to i32
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %.thread146.sink.split.i, label %.thread141.i

bb.aq:                                            ; preds = %bb.g
  %i.fc = load i64, ptr %0, align 1
  %i.fd = xor i64 %i.fc, 5931051951328612174
  %i.fe = getelementptr i8, ptr %0, i64 8
  %i.ff = load i16, ptr %i.fe, align 1
  %i.fg = zext i16 %i.ff to i64
  %i.fh = xor i64 %i.fg, 17477
  %i.fi = or i64 %i.fd, %i.fh
  %i.fj = icmp ne i64 %i.fi, 0
  %i.fk = zext i1 %i.fj to i32
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %.thread146.sink.split.i, label %.thread141.i

bb.ar:                                            ; preds = %bb.g
  %i.fm = load i64, ptr %0, align 1
  %i.fn = xor i64 %i.fm, 4998804569158993235
  %i.fo = getelementptr i8, ptr %0, i64 8
  %i.fp = load i32, ptr %i.fo, align 1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = xor i64 %i.fq, 1380930130
  %i.fs = or i64 %i.fn, %i.fr
  %i.ft = icmp ne i64 %i.fs, 0
  %i.fu = zext i1 %i.ft to i32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %.thread141.sink.split.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fw = load i64, ptr %0, align 1
  %i.fx = xor i64 %i.fw, 4998806806551153731
  %i.fy = getelementptr i8, ptr %0, i64 8
  %i.fz = load i32, ptr %i.fy, align 1
  %i.ga = zext i32 %i.fz to i64
  %i.gb = xor i64 %i.ga, 1380930130
  %i.gc = or i64 %i.fx, %i.gb
  %i.gd = icmp ne i64 %i.gc, 0
  %i.ge = zext i1 %i.gd to i32
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %.thread141.sink.split.i, label %.thread141.i

bb.at:                                            ; preds = %bb.ai, %bb.af, %bb.ac, %bb.ab, %bb.aa
  %.2.i = phi i32 [ %.1140.i, %bb.ac ], [ %i.cb, %bb.af ], [ %i.cm, %bb.ai ], [ %.1.i, %bb.aa ], [ %.1.i, %bb.ab ] ; 3 uses
  %i.gg = icmp slt i32 %.2.i, 0
  br i1 %i.gg, label %.thread141.i, label %.thread146.i

.thread141.sink.split.i:                          ; preds = %bb.as, %bb.ar, %bb.aj
  %.2143.ph.i = phi i32 [ -21, %bb.aj ], [ -23, %bb.ar ], [ -22, %bb.as ]
  store i16 108, ptr %2, align 8, !tbaa !34
  br label %.thread141.i

.thread141.i:                                     ; preds = %.thread141.sink.split.i, %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.al, %bb.aj, %bb.ah, %bb.ae, %bb.ad
  %.2143.i = phi i32 [ %.2.i, %bb.at ], [ -19, %bb.ah ], [ -1, %bb.ap ], [ -1, %bb.ao ], [ -1, %bb.al ], [ -1, %bb.aj ], [ -1, %bb.as ], [ -1, %bb.aq ], [ -1, %bb.ae ], [ -1, %bb.ad ], [ %.2143.ph.i, %.thread141.sink.split.i ]
  %i.gh = trunc nsw i32 %.2143.i to i16
  %i.gi = sub nsw i16 0, %i.gh
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.gi, ptr %7, align 2, !tbaa !47
  br label %_mcmc_parse_response.exit

.thread146.sink.split.i:                          ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ad
  %.sink.i = phi i16 [ 104, %bb.an ], [ 104, %bb.am ], [ 104, %bb.al ], [ 106, %bb.ao ], [ 104, %bb.ap ], [ 104, %bb.ak ], [ 105, %bb.ad ], [ 104, %bb.aq ]
  %.2148.ph.i = phi i32 [ 11, %bb.an ], [ 10, %bb.am ], [ 9, %bb.al ], [ 12, %bb.ao ], [ 13, %bb.ap ], [ 8, %bb.ak ], [ 17, %bb.ad ], [ 14, %bb.aq ]
  store i16 %.sink.i, ptr %2, align 8, !tbaa !34
  br label %.thread146.i

.thread146.i:                                     ; preds = %.thread146.sink.split.i, %bb.at
  %.2148.i = phi i32 [ %.2.i, %bb.at ], [ %.2148.ph.i, %.thread146.sink.split.i ]
  %i.gj = trunc nuw nsw i32 %.2148.i to i16
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.gj, ptr %8, align 2, !tbaa !47
  br label %_mcmc_parse_response.exit

_mcmc_parse_response.exit:                        ; preds = %.thread146.i, %.thread141.i, %5, %bb.e, %3
  %.0 = phi i32 [ -1, %3 ], [ 0, %bb.e ], [ -1, %5 ], [ -1, %.thread141.i ], [ 0, %.thread146.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @mcmc_fd(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !39
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @mcmc_size(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  ret i64 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @mcmc_min_buffer_size(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  ret i64 2048
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @mcmc_check_nonblock_connect(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 4, ptr %i.a, align 4, !tbaa !29
  %i.b = load i32, ptr %0, align 8, !tbaa !39
  %i.c = call i32 @getsockopt(i32 noundef %i.b, i32 noundef 1, i32 noundef 4, ptr noundef %1, ptr noundef nonnull %i.a) #20
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !29
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #18
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29
  store i32 %i.h, ptr %1, align 4, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 4) i32 @mcmc_connect(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %4 = alloca %struct.addrinfo, align 8           ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 2, ptr %i.c, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !55
  %i.e = call i32 @getaddrinfo(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #20
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 10, ptr %i.c, align 4, !tbaa !54
  %i.f = call i32 @getaddrinfo(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #20 ; 2 uses
  %.not50 = icmp eq i32 %i.f, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !56
  br label %.thread59

bb.d:                                             ; preds = %bb.b, %bb.a
  %.04073 = load ptr, ptr %i.a, align 8, !tbaa !51 ; 4 uses
  %.not5174 = icmp eq ptr %.04073, null
  br i1 %.not5174, label %.thread59.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.h = and i32 %3, 2
  %.not52 = icmp eq i32 %i.h, 0                   ; 2 uses
  %i.i = and i32 %3, 1
  %.not53 = icmp eq i32 %i.i, 0
  br i1 %.not53, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not52, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.g
  %.04075.us.us = phi ptr [ %.040.us.us, %bb.g ], [ %.04073, %.lr.ph.split.us ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.04075.us.us, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %.04075.us.us, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %.04075.us.us, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !57
  %i.p = call i32 @socket(i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o) #20 ; 4 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.split.us
  %i.r = getelementptr inbounds nuw i8, ptr %.04075.us.us, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %.04075.us.us, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !59
  %i.v = call i32 @connect(i32 noundef %i.p, ptr noundef %i.s, i32 noundef %i.u) #20
  %.not54.us.us = icmp eq i32 %i.v, -1
  br i1 %.not54.us.us, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.w = call i32 @close(i32 noundef %i.p) #20    ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.split.us
  %i.x = getelementptr inbounds nuw i8, ptr %.04075.us.us, i64 40
  %.040.us.us = load ptr, ptr %i.x, align 8, !tbaa !51 ; 2 uses
  %.not51.us.us = icmp eq ptr %.040.us.us, null
  br i1 %.not51.us.us, label %.thread59, label %.lr.ph.split.us.split.us, !llvm.loop !49

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.j
  %.04075.us = phi ptr [ %.040.us, %bb.j ], [ %.04073, %.lr.ph.split.us ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.04075.us, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %.04075.us, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %.04075.us, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !57
  %i.ae = call i32 @socket(i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ad) #20 ; 6 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 1, ptr %i.b, align 4, !tbaa !29
  %i.ag = call i32 @setsockopt(i32 noundef %i.ae, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %i.b, i32 noundef 4) #20
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.split.us, label %.thread.us

.thread.us:                                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %.04075.us, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %.04075.us, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !59
  %i.am = call i32 @connect(i32 noundef %i.ae, ptr noundef %i.aj, i32 noundef %i.al) #20
  %.not54.us = icmp eq i32 %i.am, -1
  br i1 %.not54.us, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.thread.us
  %i.an = call i32 @close(i32 noundef %i.ae) #20  ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us.split
  %i.ao = getelementptr inbounds nuw i8, ptr %.04075.us, i64 40
  %.040.us = load ptr, ptr %i.ao, align 8, !tbaa !51 ; 2 uses
  %.not51.us = icmp eq ptr %.040.us, null
  br i1 %.not51.us, label %.thread59, label %.lr.ph.split.us.split, !llvm.loop !49

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.r
  %.04075 = phi ptr [ %.040, %bb.r ], [ %.04073, %.lr.ph ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.04075, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %.04075, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %.04075, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !57
  %i.av = call i32 @socket(i32 noundef %i.aq, i32 noundef %i.as, i32 noundef %i.au) #20 ; 9 uses
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.r, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split
  br i1 %.not52, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 1, ptr %i.b, align 4, !tbaa !29
  %i.ax = call i32 @setsockopt(i32 noundef %i.av, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %i.b, i32 noundef 4) #20
  %i.ay = icmp slt i32 %i.ax, 0
end_hunk_0
begin_hunk_1_@_mcmc_parse_stat_line:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.r, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %.022, ptr %i.t, align 8, !tbaa !23
  %i.u = shl i64 %i.o, 32
  %sext = add i64 %i.u, -8589934592
  %i.v = ashr exact i64 %sext, 32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.v, ptr %i.w, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 15, %bb.b ], [ -20, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define internal fastcc range(i32 -20, 16) i32 @_mcmc_parse_value_line(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = add i64 %i.d, -6
  %i.f = tail call ptr @memchr(ptr noundef nonnull %i.b, i32 noundef 32, i64 noundef %i.e) #19 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !35
  %i.k = tail call ptr @__errno_location() #18    ; 6 uses
  store i32 0, ptr %i.k, align 4, !tbaa !29
  %i.l = call i64 @strtoul(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef 10) #20
  %i.m = trunc i64 %i.l to i32
  %i.n = load i32, ptr %i.k, align 4, !tbaa !29
  %i.o = icmp eq i32 %i.n, 34
  br i1 %i.o, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.q = icmp eq ptr %i.f, %i.p
  br i1 %i.q, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.p, align 1, !tbaa !23
  %.not = icmp eq i8 %i.r, 32
  br i1 %.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.k, align 4, !tbaa !29
  %i.s = call i64 @strtoul(ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, i32 noundef 10) #20 ; 2 uses
  %i.t = load i32, ptr %i.k, align 4, !tbaa !29
  %i.u = icmp eq i32 %i.t, 34
  br i1 %i.u, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = trunc i64 %i.s to i32
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.x = icmp eq ptr %i.p, %i.w
  %i.y = icmp ugt i32 %i.v, -4
  %or.cond = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.w, align 1, !tbaa !23
  %i.aa = icmp eq i8 %i.z, 32
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.k, align 4, !tbaa !29
  %i.ab = call i64 @strtoull(ptr noundef nonnull %i.w, ptr noundef nonnull %i.a, i32 noundef 10) #20
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !29
  %i.ad = icmp eq i32 %i.ac, 34
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = icmp eq ptr %i.w, %i.ae
  %or.cond44 = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i64 [ %i.ab, %bb.h ], [ 0, %bb.g ]
  %i.ag = add i64 %i.s, 2
  %i.ah = and i64 %i.ag, 4294967295               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !36
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !33
  %i.ak = sub i64 %1, %i.aj
  %i.al = shl i64 %i.ak, 32
  %i.am = ashr exact i64 %i.al, 32
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.ah)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %spec.select, ptr %i.an, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.b, ptr %i.ao, align 8, !tbaa !23
  %i.ap = shl i64 %i.j, 32
  %i.aq = ashr exact i64 %i.ap, 32
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.m, ptr %i.as, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %.0, ptr %i.at, align 8, !tbaa !23
  store i16 100, ptr %2, align 8, !tbaa !34
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.e, %bb.h, %bb.i, %bb.b, %bb.c, %bb.d
  %.2 = phi i32 [ -20, %bb.b ], [ -20, %bb.d ], [ -20, %bb.c ], [ -20, %bb.e ], [ -20, %bb.f ], [ 15, %bb.i ], [ -20, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.3 = phi i32 [ %.2, %bb.j ], [ -20, %bb.a ]
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoull(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #17

attributes #0 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = distinct !{!4, !27}
!5 = distinct !{!5, !27}
!6 = distinct !{!6, !27}
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"long", !15, i64 0}
!20 = !{!"mcmc_tokenizer_s", !15, i64 0, !15, i64 1, !15, i64 2, !19, i64 56}
!21 = !{!20, !15, i64 0}
!22 = !{!20, !19, i64 56}
!23 = !{!15, !15, i64 0}
!24 = !{!"short", !15, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"any pointer", !15, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!20, !15, i64 1}
!29 = !{!16, !16, i64 0}
!30 = !{!19, !19, i64 0}
!31 = !{!"p1 omnipotent char", !26, i64 0}
!32 = !{!"mcmc_resp_s", !24, i64 0, !24, i64 2, !31, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !15, i64 40}
!33 = !{!32, !19, i64 16}
!34 = !{!32, !24, i64 0}
!35 = !{!31, !31, i64 0}
!36 = !{!32, !19, i64 32}
!37 = !{!32, !19, i64 24}
!38 = !{!"mcmc_ctx", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !19, i64 24, !31, i64 32}
!39 = !{!38, !16, i64 0}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !27}
!42 = !{!"p1 short", !26, i64 0}
!43 = !{!42, !42, i64 0}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !27}
!46 = distinct !{!46, !27}
!47 = !{!32, !24, i64 2}
!48 = !{!32, !31, i64 8}
!49 = distinct !{!49, !27}
!50 = !{!"p1 _ZTS8addrinfo", !26, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"p1 _ZTS8sockaddr", !26, i64 0}
!53 = !{!"addrinfo", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !52, i64 24, !31, i64 32, !50, i64 40}
!54 = !{!53, !16, i64 4}
!55 = !{!53, !16, i64 8}
!56 = !{!38, !16, i64 4}
!57 = !{!53, !16, i64 12}
!58 = !{!53, !52, i64 24}
!59 = !{!53, !16, i64 16}
!60 = !{!38, !16, i64 8}
!61 = distinct !{!61, !27, !65, !66}
!62 = distinct !{!62, !27, !66, !65}
!63 = !{!"iovec", !26, i64 0, !19, i64 8}
!64 = !{!63, !19, i64 8}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = distinct !{!67, !27}
end_hunk_1
