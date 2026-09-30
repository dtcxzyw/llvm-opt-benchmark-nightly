Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/dtoa?download=true
inline.NumInlined: 82
inline.NumDeleted: 28
begin_hunk_0_@mpb_shr_round:bb.a
bb.e:                                             ; preds = %.lr.ph.i
  %i.u = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.u, ptr %0, align 4, !tbaa !19
  %i.v = icmp sgt i32 %i.p, 2
  br i1 %i.v, label %.lr.ph.i, label %mpb_renorm.exit, !llvm.loop !3

mpb_renorm.exit:                                  ; preds = %bb.e, %.lr.ph.i, %bb.d, %bb.c
  %.not103 = icmp eq i32 %i.d, 0
  br i1 %.not103, label %bb.t, label %bb.f

bb.f:                                             ; preds = %mpb_renorm.exit
  %i.w = load i32, ptr %0, align 4, !tbaa !19     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph131, label %.preheader

.lr.ph131:                                        ; preds = %bb.f
  %i.y = zext nneg i32 %i.w to i64
  %i.z = zext nneg i32 %i.d to i64
  %invariant.gep161 = getelementptr [4 x i8], ptr %0, i64 %i.z
  br label %bb.g

.preheader:                                       ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = lshr i32 %i.c, 5
  %i.ac = tail call i32 @llvm.umax.i32(i32 %i.ab, i32 1)
  %i.ad = shl nuw nsw i32 %i.ac, 2
  %i.ae = zext nneg i32 %i.ad to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aa, i8 0, i64 %i.ae, i1 false), !tbaa !19
  %i.af = add nsw i32 %i.w, %i.d
  store i32 %i.af, ptr %0, align 4, !tbaa !19
  br label %bb.t

bb.g:                                             ; preds = %.lr.ph131, %bb.g
  %indvars.iv141 = phi i64 [ %i.y, %.lr.ph131 ], [ %indvars.iv.next142, %bb.g ] ; 4 uses
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1
  %i.ag = getelementptr [4 x i8], ptr %0, i64 %indvars.iv141
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !19
  %gep162 = getelementptr [4 x i8], ptr %invariant.gep161, i64 %indvars.iv141
  store i32 %i.ah, ptr %gep162, align 4, !tbaa !19
  %i.ai = icmp samesign ugt i64 %indvars.iv141, 1
  br i1 %i.ai, label %bb.g, label %.preheader, !llvm.loop !30

bb.h:                                             ; preds = %bb.b
  %switch = icmp samesign ult i32 %2, 2
  %.pre = load i32, ptr %0, align 4, !tbaa !19    ; 5 uses
  br i1 %switch, label %bb.i, label %mpb_get_bit.exit106

bb.i:                                             ; preds = %bb.h
  %i.aj = add nsw i32 %1, -1                      ; 2 uses
  %i.ak = lshr i32 %i.aj, 5                       ; 3 uses
  %.not.i = icmp slt i32 %i.ak, %.pre
  br i1 %.not.i, label %mpb_get_bit.exit, label %mpb_get_bit.exit106

mpb_get_bit.exit:                                 ; preds = %bb.i
  %i.al = and i32 %i.aj, 31                       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.an = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19 ; 2 uses
  %i.aq = shl nuw i32 1, %i.al
  %i.ar = and i32 %i.ap, %i.aq
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %mpb_get_bit.exit106, label %bb.j

bb.j:                                             ; preds = %mpb_get_bit.exit
  %i.as = icmp eq i32 %2, 1
  br i1 %i.as, label %mpb_get_bit.exit106, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not123 = icmp eq i32 %1, 1
  br i1 %.not123, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not133 = icmp eq i32 %i.ak, 0
  br i1 %.not133, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.l ] ; 2 uses
  %.085125 = phi i32 [ %i.av, %.lr.ph ], [ 0, %bb.l ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !19
  %i.av = or i32 %i.au, %.085125                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.an
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %.085.lcssa = phi i32 [ 0, %bb.l ], [ %i.av, %.lr.ph ]
  %notmask = shl nsw i32 -1, %i.al
  %i.aw = xor i32 %notmask, -1
  %i.ax = and i32 %i.ap, %i.aw
  %i.ay = or i32 %i.ax, %.085.lcssa
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.thread, label %mpb_get_bit.exit106

.thread:                                          ; preds = %bb.k, %._crit_edge
  %i.ba = lshr i32 %1, 5                          ; 2 uses
  %.not.i104 = icmp samesign ult i32 %i.ba, %.pre
  br i1 %.not.i104, label %bb.m, label %mpb_get_bit.exit106

bb.m:                                             ; preds = %.thread
  %i.bb = and i32 %1, 31
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !19
  %i.bf = lshr i32 %i.be, %i.bb
  %i.bg = and i32 %i.bf, 1
  br label %mpb_get_bit.exit106

mpb_get_bit.exit106:                              ; preds = %bb.j, %bb.i, %bb.m, %.thread, %mpb_get_bit.exit, %._crit_edge, %bb.h
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %mpb_get_bit.exit ], [ 0, %.thread ], [ %i.bg, %bb.m ], [ 1, %bb.j ] ; 2 uses
  %i.bh = lshr i32 %1, 5                          ; 4 uses
  %i.bi = and i32 %1, 31
  %.not97 = icmp slt i32 %i.bh, %.pre
  br i1 %.not97, label %bb.o, label %bb.n

bb.n:                                             ; preds = %mpb_get_bit.exit106
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0, ptr %i.bj, align 4, !tbaa !19
  br label %bb.t

bb.o:                                             ; preds = %mpb_get_bit.exit106
  %.not98 = icmp eq i32 %i.bh, 0
  br i1 %.not98, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = sub nuw nsw i32 %.pre, %i.bh            ; 4 uses
  store i32 %i.bk, ptr %0, align 4, !tbaa !19
  %.not163 = icmp eq i32 %i.bk, 0
  br i1 %.not163, label %mpb_renorm.exit110, label %.lr.ph128

.lr.ph128:                                        ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bm = zext nneg i32 %i.bh to i64
  %wide.trip.count139 = zext nneg i32 %i.bk to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph128, %bb.q
  %indvars.iv136 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next137, %bb.q ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv136
  %i.bn = load i32, ptr %gep, align 4, !tbaa !19
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv136
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !19
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %.loopexit, label %bb.q, !llvm.loop !32

.loopexit:                                        ; preds = %bb.q, %bb.o
  %i.bp = phi i32 [ %.pre, %bb.o ], [ %i.bk, %bb.q ] ; 2 uses
  %.not99 = icmp eq i32 %i.bi, 0
  br i1 %.not99, label %mpb_renorm.exit110, label %.lr.ph.i107.preheader

.lr.ph.i107.preheader:                            ; preds = %.loopexit
  %i.bq = zext nneg i32 %i.bp to i64
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %.lr.ph.i107.preheader, %.lr.ph.i107
  %.020.i = phi i32 [ %i.bs, %.lr.ph.i107 ], [ 0, %.lr.ph.i107.preheader ]
  %.017.in19.i = phi i64 [ %.017.i, %.lr.ph.i107 ], [ %i.bq, %.lr.ph.i107.preheader ] ; 3 uses
  %.017.i = add nsw i64 %.017.in19.i, -1
  %i.br = getelementptr [4 x i8], ptr %0, i64 %.017.in19.i ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !19 ; 2 uses
  %i.bt = tail call i32 @llvm.fshr.i32(i32 %.020.i, i32 %i.bs, i32 range(i32 1, 32) %1)
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !19
  %i.bu = icmp samesign ugt i64 %.017.in19.i, 1
  br i1 %i.bu, label %.lr.ph.i107, label %mp_shr.exit, !llvm.loop !33

mp_shr.exit:                                      ; preds = %.lr.ph.i107
  %.pr.i108.pr = load i32, ptr %0, align 4, !tbaa !19 ; 3 uses
  %i.bv = icmp sgt i32 %.pr.i108.pr, 1
  br i1 %i.bv, label %.lr.ph.i109, label %mpb_renorm.exit110

.lr.ph.i109:                                      ; preds = %mp_shr.exit, %bb.r
  %i.bw = phi i32 [ %i.cb, %bb.r ], [ %.pr.i108.pr, %mp_shr.exit ] ; 4 uses
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr [4 x i8], ptr %0, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !19
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.r, label %mpb_renorm.exit110

bb.r:                                             ; preds = %.lr.ph.i109
  %i.cb = add nsw i32 %i.bw, -1                   ; 3 uses
  store i32 %i.cb, ptr %0, align 4, !tbaa !19
  %i.cc = icmp sgt i32 %i.bw, 2
  br i1 %i.cc, label %.lr.ph.i109, label %mpb_renorm.exit110, !llvm.loop !3

mpb_renorm.exit110:                               ; preds = %bb.r, %.lr.ph.i109, %bb.p, %mp_shr.exit, %.loopexit
  %i.cd = phi i32 [ 0, %bb.p ], [ %.pr.i108.pr, %mp_shr.exit ], [ %i.bp, %.loopexit ], [ %i.cb, %bb.r ], [ %i.bw, %.lr.ph.i109 ] ; 3 uses
  %.not100 = icmp eq i32 %.0, 0
  br i1 %.not100, label %bb.t, label %bb.s

bb.s:                                             ; preds = %mpb_renorm.exit110
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cf = sext i32 %i.cd to i64                   ; 2 uses
  %i.cg = icmp eq i32 %i.cd, 0
  br i1 %i.cg, label %mp_add_ui.exit.thread, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.s, %.lr.ph.i111
  %.01415.i = phi i64 [ %3, %.lr.ph.i111 ], [ 0, %bb.s ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.01415.i ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !19
  %i.cj = add i32 %i.ci, 1                        ; 3 uses
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !19
  %3 = add nuw i64 %.01415.i, 1                   ; 2 uses
  %4 = icmp uge i64 %3, %i.cf
  %.not.i112 = icmp ne i32 %i.cj, 0
  %or.cond.not.i = select i1 %4, i1 true, i1 %.not.i112
  br i1 %or.cond.not.i, label %mp_add_ui.exit, label %.lr.ph.i111, !llvm.loop !34

mp_add_ui.exit:                                   ; preds = %.lr.ph.i111
  %.not.i112.not = icmp eq i32 %i.cj, 0
  br i1 %.not.i112.not, label %mp_add_ui.exit.thread, label %bb.t

mp_add_ui.exit.thread:                            ; preds = %bb.s, %mp_add_ui.exit
  %i.ck = add nsw i32 %i.cd, 1
  store i32 %i.ck, ptr %0, align 4, !tbaa !19
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cf
  store i32 1, ptr %i.cl, align 4, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %.preheader, %mpb_renorm.exit, %mp_add_ui.exit, %mp_add_ui.exit.thread, %mpb_renorm.exit110, %bb.n, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local double @js_atod(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = and i32 %3, 8
  %.not = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not, i32 256, i32 95         ; 10 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !38
  %i.e = load i8, ptr %0, align 1, !tbaa !17      ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 43, label %thread-pre-split
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.a, %bb.b
  %.0195.ph = phi i64 [ -9223372036854775808, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !38
  %.pr = load i8, ptr %i.f, align 1, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.g = phi i8 [ %.pr, %thread-pre-split ], [ %i.e, %bb.a ]
  %i.h = phi ptr [ %i.f, %thread-pre-split ], [ %0, %bb.a ] ; 21 uses
  %.0195 = phi i64 [ %.0195.ph, %thread-pre-split ], [ 0, %bb.a ]
  %i.i = icmp eq i8 %i.g, 48
  br i1 %i.i, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17    ; 7 uses
  switch i8 %i.k, label %bb.h [
    i8 120, label %bb.e
    i8 88, label %bb.e
    i8 111, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = and i32 %2, -17
  %or.cond = icmp eq i32 %i.l, 0
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %.thread322

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i8 %i.k, 111
  br i1 %i.n, label %.thread331, label %.thread

bb.h:                                             ; preds = %bb.d
  %i.o = icmp eq i8 %i.k, 79
  %i.p = icmp eq i32 %2, 0                        ; 2 uses
  %or.cond3 = and i1 %i.p, %i.o
  br i1 %or.cond3, label %bb.j, label %.thread

bb.i:                                             ; preds = %bb.d
  %.old2 = icmp eq i32 %2, 0
  br i1 %.old2, label %bb.j, label %.thread331

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.q = and i32 %3, 2
  %.not235 = icmp eq i32 %i.q, 0
  br i1 %.not235, label %.thread331, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %.thread322

.thread:                                          ; preds = %bb.g, %bb.h
  %i.s = phi i1 [ %i.p, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.t = icmp eq i8 %i.k, 98
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.u = icmp eq i8 %i.k, 66
  %or.cond6 = and i1 %i.s, %i.u
  br i1 %or.cond6, label %.thread317, label %bb.o

bb.m:                                             ; preds = %.thread
  br i1 %i.s, label %.thread317, label %.thread331

.thread317:                                       ; preds = %bb.l, %bb.m
  %.old389 = and i32 %3, 2
  %.not236.old = icmp eq i32 %.old389, 0
  br i1 %.not236.old, label %.thread331, label %bb.n

bb.n:                                             ; preds = %.thread317
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %.thread322

bb.o:                                             ; preds = %bb.l
  %i.w = icmp sgt i8 %i.k, 47
  %i.x = icmp samesign ult i8 %i.k, 58
  %or.cond9 = and i1 %i.s, %i.x
  %or.cond461 = select i1 %i.w, i1 %or.cond9, i1 false
  br i1 %or.cond461, label %bb.p, label %.thread320

bb.p:                                             ; preds = %bb.o
  %i.y = and i32 %3, 4
  %.not237 = icmp eq i32 %i.y, 0
  br i1 %.not237, label %.thread331, label %.preheader397

.preheader397:                                    ; preds = %bb.p, %.preheader397
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader397 ], [ 1, %bb.p ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17   ; 2 uses
  %i.ab = and i8 %i.aa, -8
  %or.cond254 = icmp eq i8 %i.ab, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %or.cond254, label %.preheader397, label %.critedge, !llvm.loop !35

.critedge:                                        ; preds = %.preheader397
  %i.ac = and i8 %i.aa, -2
  %switch = icmp eq i8 %i.ac, 56
  br i1 %switch, label %.thread331, label %.thread322

.thread322:                                       ; preds = %.critedge, %bb.k, %bb.n, %bb.f
  %.sink = phi ptr [ %i.m, %bb.f ], [ %i.r, %bb.k ], [ %i.v, %bb.n ], [ %i.j, %.critedge ] ; 3 uses
  %.1206 = phi i32 [ 16, %bb.f ], [ 8, %bb.k ], [ 2, %bb.n ], [ 8, %.critedge ] ; 2 uses
  %.0186 = phi i32 [ %i.d, %bb.f ], [ %i.d, %bb.k ], [ %i.d, %bb.n ], [ 256, %.critedge ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !38
  %i.ad = load i8, ptr %.sink, align 1, !tbaa !17 ; 3 uses
  %i.ae = zext i8 %i.ad to i32                    ; 3 uses
  %i.af = add nsw i32 %i.ae, -48                  ; 2 uses
  %or.cond.i = icmp ult i32 %i.af, 10
  br i1 %or.cond.i, label %to_digit.exit, label %bb.q

bb.q:                                             ; preds = %.thread322
  %i.ag = add i8 %i.ad, -65
  %or.cond3.i = icmp ult i8 %i.ag, 26
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ah = add nsw i32 %i.ae, -55
  br label %to_digit.exit

bb.s:                                             ; preds = %bb.q
  %i.ai = add i8 %i.ad, -97
  %or.cond5.i = icmp ult i8 %i.ai, 26
  %i.aj = add nsw i32 %i.ae, -87
  %spec.select.i = select i1 %or.cond5.i, i32 %i.aj, i32 36
  br label %to_digit.exit

to_digit.exit:                                    ; preds = %.thread322, %bb.r, %bb.s
  %.0.i = phi i32 [ %spec.select.i, %bb.s ], [ %i.ah, %bb.r ], [ %i.af, %.thread322 ]
  %.not238 = icmp slt i32 %.0.i, %.1206
  br i1 %.not238, label %.thread331, label %.thread349

bb.t:                                             ; preds = %bb.c
  %i.ak = and i32 %3, 1
  %.not233 = icmp eq i32 %i.ak, 0
  br i1 %.not233, label %bb.u, label %.thread320

bb.u:                                             ; preds = %bb.t
  %i.al = call i32 @strstart(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a) #14
  %.not234 = icmp eq i32 %i.al, 0
  br i1 %.not234, label %..thread320_crit_edge, label %bb.cr

..thread320_crit_edge:                            ; preds = %bb.u
  %.promoted.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %.thread320

.thread320:                                       ; preds = %..thread320_crit_edge, %bb.t, %bb.o
  %.promoted.pre = phi ptr [ %.promoted.pre.pre, %..thread320_crit_edge ], [ %i.h, %bb.t ], [ %i.h, %bb.o ]
  %i.am = icmp eq i32 %2, 0
  %spec.select391 = select i1 %i.am, i32 10, i32 %2
  br label %.thread331

.thread331:                                       ; preds = %bb.g, %bb.j, %.thread320, %bb.m, %bb.i, %.thread317, %.critedge, %bb.p, %to_digit.exit
  %.promoted = phi ptr [ %i.h, %bb.i ], [ %.promoted.pre, %.thread320 ], [ %.sink, %to_digit.exit ], [ %i.h, %.critedge ], [ %i.h, %bb.p ], [ %i.h, %bb.m ], [ %i.h, %.thread317 ], [ %i.h, %bb.j ], [ %i.h, %bb.g ]
  %.1187329 = phi i32 [ %i.d, %bb.i ], [ %i.d, %.thread320 ], [ %.0186, %to_digit.exit ], [ 256, %.critedge ], [ %i.d, %bb.p ], [ %i.d, %bb.m ], [ %i.d, %.thread317 ], [ %i.d, %bb.j ], [ %i.d, %bb.g ] ; 3 uses
  %i.an = phi i32 [ %2, %bb.i ], [ %spec.select391, %.thread320 ], [ %.1206, %to_digit.exit ], [ 10, %.critedge ], [ 10, %bb.p ], [ %2, %bb.m ], [ 10, %.thread317 ], [ 10, %bb.j ], [ %2, %bb.g ] ; 10 uses
  %i.ao = add nsw i32 %i.an, -2
  %i.ap = sext i32 %i.ao to i64                   ; 5 uses
  %i.aq = getelementptr inbounds i8, ptr @atod_max_digits_table, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr inbounds i8, ptr @digits_per_limb_table, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds [4 x i8], ptr @radix_base_table, i64 %i.ap
end_hunk_0
