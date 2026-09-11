Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/ws_getopt?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@ws_getopt:bb.a
  %i.ag = add i32 %i.ad, %.0                      ; 2 uses
  store i32 %i.ag, ptr @ws_optpos, align 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %i.ac, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %.not57 = icmp eq i8 %i.aj, 0
  br i1 %.not57, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = add i32 %i.z, 1
  store i32 %i.ak, ptr @ws_optind, align 4
  store i32 0, ptr @ws_optpos, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.al = load i8, ptr %2, align 1
  switch i8 %i.al, label %bb.s [
    i8 45, label %bb.r
    i8 43, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.am = getelementptr i8, ptr %2, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.042 = phi ptr [ %i.am, %bb.r ], [ %2, %bb.q ] ; 5 uses
  store i32 0, ptr %i.b, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.041 = phi i32 [ 0, %bb.s ], [ %.1, %bb.t ]    ; 2 uses
  %i.an = sext i32 %.041 to i64
  %i.ao = getelementptr i8, ptr %.042, i64 %i.an
  %i.ap = call i32 @mbtowc(ptr noundef nonnull %i.b, ptr noundef %i.ao, i64 noundef 16) #8 ; 2 uses
  %. = call i32 @llvm.smax.i32(i32 %i.ap, i32 1)
  %.1 = add i32 %., %.041                         ; 3 uses
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = load i32, ptr %i.b, align 4             ; 4 uses
  %i.as = load i32, ptr %i.a, align 4             ; 3 uses
  %i.at = icmp ne i32 %i.ar, %i.as                ; 2 uses
  %i.au = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %i.au, label %bb.t, label %bb.u, !llvm.loop !7

bb.u:                                             ; preds = %bb.t
  %i.av = icmp eq i32 %i.as, 58
  %or.cond3 = or i1 %i.at, %i.av
  br i1 %or.cond3, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  store i32 %i.as, ptr @ws_optopt, align 4
  %i.aw = load i8, ptr %.042, align 1
  %i.ax = icmp ne i8 %i.aw, 58
  %i.ay = load i32, ptr @ws_opterr, align 4
  %i.az = icmp ne i32 %i.ay, 0
  %or.cond5 = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond5, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.ba = call ptr @g_get_prgname()
  %i.bb = zext nneg i32 %.0 to i64
  call fastcc void @__getopt_msg(ptr noundef %i.ba, ptr noundef nonnull @.str, ptr noundef %i.af, i64 noundef %i.bb)
  br label %bb.ae

bb.x:                                             ; preds = %bb.u
  %i.bc = sext i32 %.1 to i64
  %i.bd = getelementptr i8, ptr %.042, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = icmp eq i8 %i.be, 58
  br i1 %i.bf, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr @ws_optarg, align 8
  %i.bg = add i32 %.1, 1
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr i8, ptr %.042, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp ne i8 %i.bj, 58
  %i.bl = load i32, ptr @ws_optpos, align 4       ; 2 uses
  %i.bm = icmp ne i32 %i.bl, 0
  %or.cond7 = select i1 %i.bk, i1 true, i1 %i.bm
  %.pre = load i32, ptr @ws_optind, align 4       ; 3 uses
  br i1 %or.cond7, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bn = add i32 %.pre, 1                        ; 2 uses
  store i32 %i.bn, ptr @ws_optind, align 4
  %i.bo = sext i32 %.pre to i64
  %i.bp = getelementptr [8 x i8], ptr %1, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = sext i32 %i.bl to i64
  %i.bs = getelementptr i8, ptr %i.bq, i64 %i.br
  store ptr %i.bs, ptr @ws_optarg, align 8
  store i32 0, ptr @ws_optpos, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.bt = phi i32 [ %.pre, %bb.y ], [ %i.bn, %bb.z ]
  %i.bu = icmp sgt i32 %i.bt, %0
  br i1 %i.bu, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.ar, ptr @ws_optopt, align 4
  %i.bv = load i8, ptr %.042, align 1
  %i.bw = icmp eq i8 %i.bv, 58
  br i1 %i.bw, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = load i32, ptr @ws_opterr, align 4
  %.not58 = icmp eq i32 %i.bx, 0
  br i1 %.not58, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.by = call ptr @g_get_prgname()
  %i.bz = zext nneg i32 %.0 to i64
  call fastcc void @__getopt_msg(ptr noundef %i.by, ptr noundef nonnull @.str.1, ptr noundef %i.af, i64 noundef %i.bz)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.x, %bb.aa, %bb.ac, %bb.ad, %bb.ab, %bb.v, %bb.w, %bb.h, %bb.f, %bb.c, %bb.d, %bb.j, %bb.g
  %.043 = phi i32 [ -1, %bb.f ], [ 1, %bb.g ], [ -1, %bb.c ], [ -1, %bb.h ], [ 63, %bb.v ], [ 58, %bb.ab ], [ 63, %bb.ac ], [ -1, %bb.j ], [ -1, %bb.d ], [ 63, %bb.w ], [ 63, %bb.ad ], [ %i.ar, %bb.aa ], [ %i.ar, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.043
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @mbtowc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind null_pointer_is_valid sspstrong uwtable
define internal fastcc void @__getopt_msg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8           ; 4 uses
  %i.b = tail call i32 @fputs(ptr noundef %0, ptr noundef %i.a) #9
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @fputs(ptr noundef %1, ptr noundef %i.a) #9
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @fwrite(ptr noundef %2, i64 noundef 1, i64 noundef %3, ptr noundef %i.a) #9
  %.not = icmp eq i64 %i.f, %3
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @putc(i32 noundef 10, ptr noundef %i.a) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_get_prgname() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @ws_getopt_long(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @__getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @__getopt_long(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ws_optind, align 4        ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = load i32, ptr @ws_optreset, align 4
  %i.d = icmp ne i32 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr @ws_optreset, align 4
  store i32 0, ptr @ws_optpos, align 4
  store i32 1, ptr @ws_optind, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.a, %bb.a ], [ 1, %bb.b ]    ; 8 uses
  %.not = icmp slt i32 %i.e, %0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %1, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %2, align 1
  switch i8 %i.i, label %.lr.ph.preheader [
    i8 43, label %bb.i
    i8 45, label %bb.i
  ]

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = sext i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.j = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not46 = icmp eq ptr %i.k, null
  br i1 %.not46, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 45
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.k, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %.not47 = icmp eq i8 %i.o, 0
  br i1 %.not47, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.critedge:                                        ; preds = %bb.g
  %i.p = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  store i32 %i.p, ptr @ws_optind, align 4
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.e, %bb.e
  %i.q = phi i32 [ %i.p, %.critedge ], [ %i.e, %bb.e ], [ %i.e, %bb.e ] ; 5 uses
  store ptr null, ptr @ws_optarg, align 8
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.ao, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [8 x i8], ptr %1, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 45
  br i1 %i.v, label %bb.k, label %bb.ao

bb.k:                                             ; preds = %bb.j
  %i.w = icmp ne i32 %5, 0                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.t, i64 1        ; 6 uses
  %i.y = load i8, ptr %i.x, align 1               ; 4 uses
  br i1 %i.w, label %bb.l, label %._crit_edge198.i

bb.l:                                             ; preds = %bb.k
  switch i8 %i.y, label %bb.n [
    i8 45, label %bb.m
    i8 0, label %bb.ao
  ]

._crit_edge198.i:                                 ; preds = %bb.k
  %i.z = icmp eq i8 %i.y, 45
  br i1 %i.z, label %bb.m, label %bb.ao

bb.m:                                             ; preds = %bb.l, %._crit_edge198.i
  %i.aa = getelementptr i8, ptr %i.t, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %.not133.i = icmp eq i8 %i.ab, 0
  br i1 %.not133.i, label %bb.ao, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ac = phi i8 [ %i.y, %bb.l ], [ 45, %bb.m ]
  %i.ad = load i8, ptr %2, align 1                ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 43
  %i.af = icmp eq i8 %i.ad, 45
  %narrow.i = or i1 %i.ae, %i.af
  %i.ag = zext i1 %narrow.i to i64
  %i.ah = getelementptr i8, ptr %2, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, 58                    ; 3 uses
  %i.ak = load ptr, ptr %3, align 8               ; 2 uses
  %.not134171.i = icmp eq ptr %i.ak, null
  br i1 %.not134171.i, label %.loopexit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.al = icmp eq i8 %i.ac, 45
  %i.am = getelementptr i8, ptr %i.t, i64 2
  %spec.select.i = select i1 %i.al, ptr %i.am, ptr %i.x
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i
  %i.an = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.ax, %bb.s ]
  %.0109175.i = phi ptr [ null, %.lr.ph.i ], [ %.1110.ph.i, %bb.s ]
  %.0112174.i = phi i32 [ -1, %.lr.ph.i ], [ %.1113.ph.i, %bb.s ]
  %.0115173.i = phi i32 [ 0, %.lr.ph.i ], [ %.1116.ph.i, %bb.s ] ; 2 uses
  %.0118172.i = phi i32 [ 0, %.lr.ph.i ], [ %i.au, %bb.s ] ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.1108.i = phi ptr [ %spec.select.i, %bb.o ], [ %i.as, %bb.r ] ; 4 uses
  %.0106.i = phi ptr [ %i.an, %bb.o ], [ %i.ar, %bb.r ] ; 2 uses
  %i.ao = load i8, ptr %.1108.i, align 1          ; 3 uses
  %i.ap = load i8, ptr %.0106.i, align 1          ; 2 uses
  switch i8 %i.ao, label %bb.q [
    i8 0, label %.loopexit165.i
    i8 61, label %.loopexit165.i
  ]

bb.q:                                             ; preds = %bb.p
  %i.aq = icmp eq i8 %i.ao, %i.ap
  br i1 %i.aq, label %bb.r, label %.critedge.i

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr i8, ptr %.0106.i, i64 1
  %i.as = getelementptr i8, ptr %.1108.i, i64 1
  br label %bb.p, !llvm.loop !8

.critedge.i:                                      ; preds = %bb.q
  %cond.i = icmp eq i8 %i.ao, 0
  br i1 %cond.i, label %.loopexit165.i, label %bb.s

.loopexit165.i:                                   ; preds = %bb.p, %bb.p, %.critedge.i
  %.not139.i = icmp eq i8 %i.ap, 0
  %i.at = add i32 %.0115173.i, 1
  br i1 %.not139.i, label %._crit_edge.i, label %bb.s

bb.s:                                             ; preds = %.loopexit165.i, %.critedge.i
  %.1116.ph.i = phi i32 [ %i.at, %.loopexit165.i ], [ %.0115173.i, %.critedge.i ] ; 2 uses
  %.1113.ph.i = phi i32 [ %.0118172.i, %.loopexit165.i ], [ %.0112174.i, %.critedge.i ] ; 2 uses
  %.1110.ph.i = phi ptr [ %.1108.i, %.loopexit165.i ], [ %.0109175.i, %.critedge.i ] ; 2 uses
  %i.au = add i32 %.0118172.i, 1                  ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [32 x i8], ptr %3, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not134.i = icmp eq ptr %i.ax, null
  br i1 %.not134.i, label %._crit_edge.i, label %bb.o, !llvm.loop !9

._crit_edge.i:                                    ; preds = %bb.s, %.loopexit165.i
  %.2117.i = phi i32 [ 1, %.loopexit165.i ], [ %.1116.ph.i, %bb.s ] ; 2 uses
  %.2114.i = phi i32 [ %.0118172.i, %.loopexit165.i ], [ %.1113.ph.i, %bb.s ] ; 2 uses
  %.2111.i = phi ptr [ %.1108.i, %.loopexit165.i ], [ %.1110.ph.i, %bb.s ] ; 4 uses
  %i.ay = icmp eq i32 %.2117.i, 1                 ; 2 uses
  %or.cond.i = and i1 %i.w, %i.ay
  br i1 %or.cond.i, label %bb.t, label %.loopexit.i

bb.t:                                             ; preds = %._crit_edge.i
  %i.az = ptrtoint ptr %.2111.i to i64
  %i.ba = ptrtoint ptr %i.x to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = tail call i32 @mblen(ptr noundef %i.x, i64 noundef 16) #8
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp eq i64 %i.bb, %i.bd
  br i1 %i.be, label %.preheader164.i, label %..thread158_crit_edge.i

..thread158_crit_edge.i:                          ; preds = %bb.t
  %.pre201.i = load i32, ptr @ws_optind, align 4
  br label %.thread158.i

.preheader164.i:                                  ; preds = %bb.t
  %i.bf = load i8, ptr %2, align 1
  %.not140187.i = icmp eq i8 %i.bf, 0
  br i1 %.not140187.i, label %.loopexit.thread227.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader164.i
  %i.bg = icmp sgt i64 %i.bb, 0
  br i1 %i.bg, label %.preheader.us.i, label %.preheader.lr.ph.split.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %.critedge3.us.i
  %i.bh = phi i64 [ %i.bo, %.critedge3.us.i ], [ 0, %.preheader.lr.ph.i ]
  %.1119188.us.i = phi i32 [ %i.bn, %.critedge3.us.i ], [ 0, %.preheader.lr.ph.i ]
  %invariant.gep.us.i = getelementptr i8, ptr %2, i64 %i.bh
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.preheader.us.i
  %.0182.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.bm, %bb.v ] ; 3 uses
  %i.bi = getelementptr i8, ptr %i.x, i64 %.0182.us.i
  %i.bj = load i8, ptr %i.bi, align 1
  %gep.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %.0182.us.i
  %i.bk = load i8, ptr %gep.us.i, align 1
  %i.bl = icmp eq i8 %i.bj, %i.bk
  br i1 %i.bl, label %bb.v, label %.critedge3.us.i

bb.v:                                             ; preds = %bb.u
  %i.bm = add nuw nsw i64 %.0182.us.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bm, %i.bb
  br i1 %exitcond.not.i, label %.loopexit.thread.i, label %bb.u, !llvm.loop !10

.critedge3.us.i:                                  ; preds = %bb.u
  %i.bn = add i32 %.1119188.us.i, 1               ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr i8, ptr %2, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1
  %.not140.us.i = icmp eq i8 %i.bq, 0
  br i1 %.not140.us.i, label %.loopexit.thread227.i, label %.preheader.us.i, !llvm.loop !11

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.br = icmp eq ptr %.2111.i, %i.x
  br i1 %i.br, label %.loopexit.thread.i, label %.loopexit.thread227.i

.loopexit.thread.i:                               ; preds = %bb.v, %.preheader.lr.ph.split.i, %bb.n
  %.6.ph.i = phi i32 [ 0, %bb.n ], [ 2, %.preheader.lr.ph.split.i ], [ 2, %bb.v ]
  %.pre202223.i = load i32, ptr @ws_optind, align 4 ; 2 uses
  %.pre = sext i32 %.pre202223.i to i64
  %.phi.trans.insert = getelementptr [8 x i8], ptr %1, i64 %.pre
  %.pre69 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert70 = getelementptr i8, ptr %.pre69, i64 1
  %.pre71 = load i8, ptr %.phi.trans.insert70, align 1
  br label %bb.ak

.loopexit.thread227.i:                            ; preds = %.critedge3.us.i, %.preheader.lr.ph.split.i, %.preheader164.i
  %.pre202231.i = load i32, ptr @ws_optind, align 4
  br label %.thread158.i

.loopexit.i:                                      ; preds = %._crit_edge.i
  br i1 %i.ay, label %.thread158.i, label %bb.ak

.thread158.i:                                     ; preds = %.loopexit.i, %.loopexit.thread227.i, %..thread158_crit_edge.i
  %i.bs = phi i32 [ %.pre201.i, %..thread158_crit_edge.i ], [ %i.q, %.loopexit.i ], [ %.pre202231.i, %.loopexit.thread227.i ] ; 2 uses
  %i.bt = add i32 %i.bs, 1                        ; 2 uses
  store i32 %i.bt, ptr @ws_optind, align 4
  %i.bu = load i8, ptr %.2111.i, align 1
  %i.bv = icmp eq i8 %i.bu, 61
  %i.bw = sext i32 %.2114.i to i64
  %i.bx = getelementptr [32 x i8], ptr %3, i64 %i.bw ; 7 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  br i1 %i.bv, label %bb.w, label %bb.aa
end_hunk_0
