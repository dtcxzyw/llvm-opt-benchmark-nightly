Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/dt_common?download=true
inline.NumInlined: 40
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dt2time:bb.a
  %i.e = add i64 %.neg, %i.a                      ; 2 uses
  %i.f = sdiv i64 %i.e, 60000000                  ; 2 uses
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %2, align 4
  %sext13 = shl i64 %i.f, 32
  %i.h = ashr exact i64 %sext13, 32
  %.neg14 = mul nsw i64 %i.h, -60000000
  %i.i = add i64 %.neg14, %i.e                    ; 2 uses
  %i.j = sdiv i64 %i.i, 1000000                   ; 2 uses
  %i.k = trunc i64 %i.j to i32
  store i32 %i.k, ptr %3, align 4
  %.neg16 = mul i64 %i.j, 4293967296
  %i.l = add i64 %.neg16, %i.i
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @DecodeTime(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef captures(none) initializes((8, 12)) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 17 uses
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 7168, ptr %1, align 4
  %i.c = call i32 @strtoint(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10) #16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.c, ptr %i.d, align 8
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %.not = icmp eq i8 %i.f, 58
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = call i32 @strtoint(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i32 noundef 10) #16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 %i.h, ptr %i.i, align 4
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.k = load i8, ptr %i.j, align 1
  switch i8 %i.k, label %bb.u [
    i8 0, label %bb.c
    i8 58, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 8
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = call i32 @strtoint(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, i32 noundef 10) #16
  store i32 %i.m, ptr %2, align 8
  %i.n = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %bb.u [
    i8 0, label %.sink.split
    i8 46, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 4 uses
  store ptr %i.p, ptr %i.a, align 8
  %i.q = load i8, ptr %i.p, align 1
  %.not30 = icmp eq i8 %i.q, 0
  br i1 %.not30, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  store i8 48, ptr %i.b, align 1
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 4 uses
  store ptr %i.r, ptr %i.a, align 8
  %i.s = load i8, ptr %i.p, align 1
  %.pre = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %.pre, 0
  store i8 %i.s, ptr %i.b, align 1
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 3 ; 2 uses
  store ptr %i.u, ptr %i.a, align 8
  %i.v = load i8, ptr %i.r, align 1
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.f
  %i.w = phi ptr [ %i.u, %bb.g ], [ %i.r, %bb.f ], [ %i.p, %.thread ] ; 4 uses
  %i.x = phi i8 [ %i.v, %bb.g ], [ 48, %bb.f ], [ 48, %.thread ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.x, ptr %i.y, align 1
  %i.z = load i8, ptr %i.w, align 1
  %.not30.2 = icmp eq i8 %i.z, 0
  br i1 %.not30.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = load i8, ptr %i.w, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = phi ptr [ %i.aa, %bb.i ], [ %i.w, %bb.h ] ; 4 uses
  %i.ad = phi i8 [ %i.ab, %bb.i ], [ 48, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = load i8, ptr %i.ac, align 1
  %.not30.3 = icmp eq i8 %i.af, 0
  br i1 %.not30.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8
  %i.ah = load i8, ptr %i.ac, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = phi ptr [ %i.ag, %bb.k ], [ %i.ac, %bb.j ] ; 4 uses
  %i.aj = phi i8 [ %i.ah, %bb.k ], [ 48, %bb.j ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = load i8, ptr %i.ai, align 1
  %.not30.4 = icmp eq i8 %i.al, 0
  br i1 %.not30.4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  store ptr %i.am, ptr %i.a, align 8
  %i.an = load i8, ptr %i.ai, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ao = phi ptr [ %i.am, %bb.m ], [ %i.ai, %bb.l ] ; 3 uses
  %i.ap = phi i8 [ %i.an, %bb.m ], [ 48, %bb.l ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = load i8, ptr %i.ao, align 1
  %.not30.5 = icmp eq i8 %i.ar, 0
  br i1 %.not30.5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.as, ptr %i.a, align 8
  %i.at = load i8, ptr %i.ao, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.au = phi i8 [ %i.at, %bb.o ], [ 48, %bb.n ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 0, ptr %i.aw, align 1
  %i.ax = call i32 @strtoint(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 10) #16 ; 2 uses
  store i32 %i.ax, ptr %3, align 4
  %i.ay = load ptr, ptr %i.a, align 8
  %i.az = load i8, ptr %i.ay, align 1
  %.not29 = icmp eq i8 %i.az, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br i1 %.not29, label %bb.q, label %bb.u

.sink.split:                                      ; preds = %bb.d, %bb.c
  store i32 0, ptr %3, align 4
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p
  %i.ba = phi i32 [ %i.ax, %bb.p ], [ 0, %.sink.split ]
  %i.bb = load i32, ptr %i.d, align 8
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = load i32, ptr %i.i, align 4
  %or.cond = icmp ugt i32 %i.bd, 59
  br i1 %or.cond, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = load i32, ptr %2, align 8
  %or.cond31 = icmp ugt i32 %i.be, 59
  br i1 %or.cond31, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = icmp sgt i32 %i.ba, 999999
  %spec.select = sext i1 %i.bf to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.r, %bb.s, %bb.d, %bb.b, %bb.a, %bb.p
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.q ], [ -1, %bb.a ], [ -1, %bb.p ], [ %spec.select, %bb.t ], [ -1, %bb.s ], [ -1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.1
}

declare i32 @strtoint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ParseDateTime(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) initializes((0, 8)) %5) local_unnamed_addr #5 {
bb.a:
  store ptr %0, ptr %5, align 8
  %i.a = load i8, ptr %0, align 1
  %.not185311 = icmp eq i8 %i.a, 0
  br i1 %.not185311, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %6 = tail call ptr @__ctype_b_loc() #17         ; 19 uses
  br label %.lr.ph.split.a

.lr.ph:                                           ; preds = %.loopexit
  %7 = getelementptr inbounds nuw i8, ptr %.12, i64 1
  %exitcond = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond, label %.loopexit164, label %.lr.ph.split.a, !llvm.loop !8

.lr.ph.split.a:                                   ; preds = %.lr.ph.lr.ph, %.lr.ph
  %.0.ph232312 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %7, %.lr.ph ] ; 12 uses
  %indvars.iv311 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %indvars.iv.next, %.lr.ph ] ; 10 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv311
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.a, %.backedge
  store ptr %.0.ph232312, ptr %8, align 8
  %i.b = load ptr, ptr %6, align 8
  %i.c = load ptr, ptr %5, align 8                ; 8 uses
  %i.d = load i8, ptr %i.c, align 1               ; 3 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2
  %i.h = zext i16 %i.g to i32                     ; 4 uses
  %i.i = and i32 %i.h, 2048
  %.not133 = icmp eq i32 %i.i, 0
  br i1 %.not133, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.j, ptr %5, align 8
  %i.k = load i8, ptr %i.c, align 1
  store i8 %i.k, ptr %.0.ph232312, align 1
  %.1187 = getelementptr inbounds nuw i8, ptr %.0.ph232312, i64 1 ; 2 uses
  %i.l = load ptr, ptr %6, align 8
  %i.m = load ptr, ptr %5, align 8                ; 3 uses
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2
  %i.r = and i16 %i.q, 2048
  %.not146188 = icmp eq i16 %i.r, 0
  br i1 %.not146188, label %._crit_edge192, label %.lr.ph191

.lr.ph191:                                        ; preds = %bb.c, %.lr.ph191
  %i.s = phi ptr [ %i.w, %.lr.ph191 ], [ %i.m, %bb.c ] ; 2 uses
  %.1189 = phi ptr [ %.1, %.lr.ph191 ], [ %.1187, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %5, align 8
  %i.u = load i8, ptr %i.s, align 1
  store i8 %i.u, ptr %.1189, align 1
  %.1 = getelementptr inbounds nuw i8, ptr %.1189, i64 1 ; 2 uses
  %i.v = load ptr, ptr %6, align 8
  %i.w = load ptr, ptr %5, align 8                ; 3 uses
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = and i16 %i.aa, 2048
  %.not146 = icmp eq i16 %i.ab, 0
  br i1 %.not146, label %._crit_edge192, label %.lr.ph191, !llvm.loop !9

._crit_edge192:                                   ; preds = %.lr.ph191, %bb.c
  %.0.pn152.lcssa = phi ptr [ %.0.ph232312, %bb.c ], [ %.1189, %.lr.ph191 ]
  %.1.lcssa = phi ptr [ %.1187, %bb.c ], [ %.1, %.lr.ph191 ] ; 4 uses
  %.lcssa178 = phi ptr [ %i.m, %bb.c ], [ %i.w, %.lr.ph191 ] ; 5 uses
  %.lcssa177 = phi i8 [ %i.n, %bb.c ], [ %i.x, %.lr.ph191 ]
  switch i8 %.lcssa177, label %.loopexit.sink.split [
    i8 58, label %bb.d
    i8 45, label %bb.f
    i8 47, label %bb.f
    i8 46, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge192
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv311
  store i32 3, ptr %i.ac, align 4
  %i.ad = load ptr, ptr %5, align 8               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %5, align 8
  %i.af = load i8, ptr %i.ad, align 1
  store i8 %i.af, ptr %.1.lcssa, align 1
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %.1.pn = phi ptr [ %.1.lcssa, %bb.d ], [ %.2, %.critedge ]
  %.2 = getelementptr inbounds nuw i8, ptr %.1.pn, i64 1 ; 3 uses
  %i.ag = load ptr, ptr %6, align 8
  %i.ah = load ptr, ptr %5, align 8               ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  %.fr157 = freeze i16 %i.al
  %i.am = and i16 %.fr157, 2048
  %.not151.not = icmp eq i16 %i.am, 0
  br i1 %.not151.not, label %switch.early.test, label %.critedge

switch.early.test:                                ; preds = %bb.e
  switch i8 %i.ai, label %.loopexit [
    i8 58, label %.critedge
    i8 46, label %.critedge
  ]

.critedge:                                        ; preds = %switch.early.test, %switch.early.test, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.an, ptr %5, align 8
  %i.ao = load i8, ptr %i.ah, align 1
  store i8 %i.ao, ptr %.2, align 1
  br label %bb.e, !llvm.loop !10

bb.f:                                             ; preds = %._crit_edge192, %._crit_edge192, %._crit_edge192
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa178, i64 1
  store ptr %i.ap, ptr %5, align 8
  %i.aq = load i8, ptr %.lcssa178, align 1        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.pn152.lcssa, i64 2 ; 3 uses
  store i8 %i.aq, ptr %.1.lcssa, align 1
  %i.as = load ptr, ptr %6, align 8
  %i.at = load ptr, ptr %5, align 8
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = and i16 %i.ax, 2048
  %.not147 = icmp eq i16 %i.ay, 0
  br i1 %.not147, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = icmp eq i8 %i.aq, 46
  %i.ba = select i1 %i.az, i32 0, i32 2
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv311 ; 2 uses
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = load ptr, ptr %6, align 8
  %i.bd = load ptr, ptr %5, align 8               ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1             ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = and i16 %i.bh, 2048
  %.not149197 = icmp eq i16 %i.bi, 0
  br i1 %.not149197, label %._crit_edge201, label %.lr.ph200

.lr.ph200:                                        ; preds = %bb.g, %.lr.ph200
  %i.bj = phi ptr [ %i.bo, %.lr.ph200 ], [ %i.bd, %bb.g ] ; 2 uses
  %.3198 = phi ptr [ %i.bm, %.lr.ph200 ], [ %i.ar, %bb.g ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store ptr %i.bk, ptr %5, align 8
  %i.bl = load i8, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.3198, i64 1 ; 2 uses
  store i8 %i.bl, ptr %.3198, align 1
  %i.bn = load ptr, ptr %6, align 8
  %i.bo = load ptr, ptr %5, align 8               ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1             ; 2 uses
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = and i16 %i.bs, 2048
  %.not149 = icmp eq i16 %i.bt, 0
  br i1 %.not149, label %._crit_edge201, label %.lr.ph200, !llvm.loop !11

._crit_edge201:                                   ; preds = %.lr.ph200, %bb.g
  %.3.lcssa = phi ptr [ %i.ar, %bb.g ], [ %i.bm, %.lr.ph200 ] ; 3 uses
  %.lcssa179 = phi i8 [ %i.be, %bb.g ], [ %i.bp, %.lr.ph200 ]
  %i.bu = load i8, ptr %.lcssa178, align 1
  %i.bv = icmp eq i8 %.lcssa179, %i.bu
  br i1 %i.bv, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %._crit_edge201
  store i32 2, ptr %i.bb, align 4
  %i.bw = load ptr, ptr %5, align 8               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store ptr %i.bx, ptr %5, align 8
  %i.by = load i8, ptr %i.bw, align 1
  store i8 %i.by, ptr %.3.lcssa, align 1
  br label %bb.i

bb.i:                                             ; preds = %.critedge2, %bb.h
  %.3.pn = phi ptr [ %.3.lcssa, %bb.h ], [ %.4, %.critedge2 ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 1 ; 3 uses
  %i.bz = load ptr, ptr %6, align 8
  %i.ca = load ptr, ptr %5, align 8               ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1             ; 2 uses
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = and i16 %i.ce, 2048
  %.not150 = icmp eq i16 %i.cf, 0
  br i1 %.not150, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %bb.i
  %i.cg = load i8, ptr %.lcssa178, align 1
  %i.ch = icmp eq i8 %i.cb, %i.cg
  br i1 %i.ch, label %.critedge2, label %.loopexit

.critedge2:                                       ; preds = %bb.i, %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store ptr %i.ci, ptr %5, align 8
  %i.cj = load i8, ptr %i.ca, align 1
  store i8 %i.cj, ptr %.4, align 1
  br label %bb.i, !llvm.loop !12

bb.k:                                             ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv311
  store i32 2, ptr %i.ck, align 4
  br label %bb.l

bb.l:                                             ; preds = %.critedge4, %bb.k
  %.5 = phi ptr [ %i.ar, %bb.k ], [ %i.cx, %.critedge4 ] ; 3 uses
  %i.cl = load ptr, ptr %6, align 8
  %i.cm = load ptr, ptr %5, align 8               ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 1             ; 2 uses
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = and i16 %i.cq, 8
  %.not148 = icmp eq i16 %i.cr, 0
  br i1 %.not148, label %bb.m, label %.critedge4

bb.m:                                             ; preds = %bb.l
  %i.cs = load i8, ptr %.lcssa178, align 1
  %i.ct = icmp eq i8 %i.cn, %i.cs
  br i1 %i.ct, label %.critedge4, label %.loopexit

.critedge4:                                       ; preds = %bb.l, %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store ptr %i.cu, ptr %5, align 8
  %i.cv = load i8, ptr %i.cm, align 1
  %i.cw = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.cv) #16
  %i.cx = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 %i.cw, ptr %.5, align 1
  br label %bb.l, !llvm.loop !13

bb.n:                                             ; preds = %bb.b
  %i.cy = icmp eq i8 %i.d, 46
  br i1 %i.cy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.cz, ptr %5, align 8
  %i.da = load i8, ptr %i.c, align 1
  store i8 %i.da, ptr %.0.ph232312, align 1
  %.7223 = getelementptr inbounds nuw i8, ptr %.0.ph232312, i64 1 ; 2 uses
  %i.db = load ptr, ptr %6, align 8
  %i.dc = load ptr, ptr %5, align 8               ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = and i16 %i.dg, 2048
  %.not144224 = icmp eq i16 %i.dh, 0
  br i1 %.not144224, label %.loopexit.sink.split, label %.lr.ph227

.lr.ph227:                                        ; preds = %bb.o, %.lr.ph227
  %i.di = phi ptr [ %i.dm, %.lr.ph227 ], [ %i.dc, %bb.o ] ; 2 uses
  %.7225 = phi ptr [ %.7, %.lr.ph227 ], [ %.7223, %bb.o ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store ptr %i.dj, ptr %5, align 8
  %i.dk = load i8, ptr %i.di, align 1
  store i8 %i.dk, ptr %.7225, align 1
  %.7 = getelementptr inbounds nuw i8, ptr %.7225, i64 1 ; 2 uses
  %i.dl = load ptr, ptr %6, align 8
  %i.dm = load ptr, ptr %5, align 8               ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2
  %i.dr = and i16 %i.dq, 2048
  %.not144 = icmp eq i16 %i.dr, 0
  br i1 %.not144, label %.loopexit.sink.split, label %.lr.ph227, !llvm.loop !14

bb.p:                                             ; preds = %bb.n
  %i.ds = and i32 %i.h, 1024
  %.not134 = icmp eq i32 %i.ds, 0
  br i1 %.not134, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv311 ; 2 uses
  store i32 1, ptr %i.dt, align 4
  %i.du = load ptr, ptr %5, align 8               ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dv, ptr %5, align 8
  %i.dw = load i8, ptr %i.du, align 1
  %i.dx = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.dw) #16
  store i8 %i.dx, ptr %.0.ph232312, align 1
  %.8204 = getelementptr inbounds nuw i8, ptr %.0.ph232312, i64 1 ; 2 uses
  %i.dy = load ptr, ptr %6, align 8
  %i.dz = load ptr, ptr %5, align 8               ; 3 uses
  %i.ea = load i8, ptr %i.dz, align 1             ; 2 uses
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2
  %i.ee = and i16 %i.ed, 1024
  %.not142205 = icmp eq i16 %i.ee, 0
  br i1 %.not142205, label %._crit_edge209, label %.lr.ph208

.lr.ph208:                                        ; preds = %bb.q, %.lr.ph208
  %i.ef = phi ptr [ %i.ek, %.lr.ph208 ], [ %i.dz, %bb.q ] ; 2 uses
  %.8206 = phi ptr [ %.8, %.lr.ph208 ], [ %.8204, %bb.q ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store ptr %i.eg, ptr %5, align 8
  %i.eh = load i8, ptr %i.ef, align 1
  %i.ei = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.eh) #16
  store i8 %i.ei, ptr %.8206, align 1
  %.8 = getelementptr inbounds nuw i8, ptr %.8206, i64 1 ; 2 uses
  %i.ej = load ptr, ptr %6, align 8
  %i.ek = load ptr, ptr %5, align 8               ; 3 uses
  %i.el = load i8, ptr %i.ek, align 1             ; 2 uses
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = and i16 %i.eo, 1024
  %.not142 = icmp eq i16 %i.ep, 0
  br i1 %.not142, label %._crit_edge209, label %.lr.ph208, !llvm.loop !15

._crit_edge209:                                   ; preds = %.lr.ph208, %bb.q
  %.8.lcssa = phi ptr [ %.8204, %bb.q ], [ %.8, %.lr.ph208 ] ; 3 uses
  %.lcssa181 = phi ptr [ %i.dz, %bb.q ], [ %i.ek, %.lr.ph208 ]
  %.lcssa180 = phi i8 [ %i.ea, %bb.q ], [ %i.el, %.lr.ph208 ]
  %.off = add i8 %.lcssa180, -45
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %._crit_edge209
  store i32 2, ptr %i.dt, align 4
  %i.eq = load ptr, ptr %5, align 8               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store ptr %i.er, ptr %5, align 8
  %i.es = load i8, ptr %i.eq, align 1
  store i8 %i.es, ptr %.8.lcssa, align 1
  br label %bb.s

bb.s:                                             ; preds = %.critedge6, %bb.r
  %.8.pn = phi ptr [ %.8.lcssa, %bb.r ], [ %.9, %.critedge6 ]
  %.9 = getelementptr inbounds nuw i8, ptr %.8.pn, i64 1 ; 3 uses
  %i.et = load ptr, ptr %6, align 8
  %i.eu = load ptr, ptr %5, align 8               ; 3 uses
  %i.ev = load i8, ptr %i.eu, align 1             ; 2 uses
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 2048
  %.not143 = icmp eq i16 %i.ez, 0
  br i1 %.not143, label %bb.t, label %.critedge6

bb.t:                                             ; preds = %bb.s
  %i.fa = load i8, ptr %.lcssa181, align 1
  %i.fb = icmp eq i8 %i.ev, %i.fa
  br i1 %i.fb, label %.critedge6, label %.loopexit

.critedge6:                                       ; preds = %bb.s, %bb.t
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  store ptr %i.fc, ptr %5, align 8
  %i.fd = load i8, ptr %i.eu, align 1
  store i8 %i.fd, ptr %.9, align 1
  br label %bb.s, !llvm.loop !16

bb.u:                                             ; preds = %bb.p
  %i.fe = and i32 %i.h, 8192
  %.not135 = icmp eq i32 %i.fe, 0
  br i1 %.not135, label %bb.v, label %.backedge

.backedge:                                        ; preds = %bb.ab, %bb.u
  %storemerge = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %storemerge, ptr %5, align 8
  %i.ff = load i8, ptr %storemerge, align 1
  %.not = icmp eq i8 %i.ff, 0
  br i1 %.not, label %.outer._crit_edge.loopexit, label %bb.b, !llvm.loop !8

bb.v:                                             ; preds = %bb.u
  switch i8 %i.d, label %bb.ab [
    i8 43, label %bb.w
    i8 45, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.fg, ptr %5, align 8
  %i.fh = load i8, ptr %i.c, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.ph232312, i64 1 ; 2 uses
  store i8 %i.fh, ptr %.0.ph232312, align 1
  %i.fj = load ptr, ptr %6, align 8
  %i.fk = load ptr, ptr %5, align 8               ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2
  %i.fp = zext i16 %i.fo to i32                   ; 2 uses
  %i.fq = and i32 %i.fp, 8192
  %.not137213 = icmp eq i32 %i.fq, 0
  br i1 %.not137213, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %bb.w, %.lr.ph215
  %i.fr = phi ptr [ %i.fs, %.lr.ph215 ], [ %i.fk, %bb.w ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1 ; 3 uses
  store ptr %i.fs, ptr %5, align 8
  %i.ft = load ptr, ptr %6, align 8
  %i.fu = load i8, ptr %i.fs, align 1
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2
  %i.fy = zext i16 %i.fx to i32                   ; 2 uses
  %i.fz = and i32 %i.fy, 8192
  %.not137 = icmp eq i32 %i.fz, 0
  br i1 %.not137, label %._crit_edge216, label %.lr.ph215, !llvm.loop !17

._crit_edge216:                                   ; preds = %.lr.ph215, %bb.w
  %.lcssa182 = phi i32 [ %i.fp, %bb.w ], [ %i.fy, %.lr.ph215 ] ; 2 uses
  %i.ga = and i32 %.lcssa182, 2048
  %.not138 = icmp eq i32 %i.ga, 0
  br i1 %.not138, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge216
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv311
  store i32 4, ptr %i.gb, align 4
  %i.gc = load ptr, ptr %5, align 8               ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  store ptr %i.gd, ptr %5, align 8
  %i.ge = load i8, ptr %i.gc, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.ph232312, i64 2
  store i8 %i.ge, ptr %i.fi, align 1
  br label %bb.y

bb.y:                                             ; preds = %.critedge8, %bb.x
  %.10 = phi ptr [ %i.gf, %bb.x ], [ %i.gp, %.critedge8 ] ; 3 uses
  %i.gg = load ptr, ptr %6, align 8
  %i.gh = load ptr, ptr %5, align 8               ; 3 uses
  %i.gi = load i8, ptr %i.gh, align 1             ; 2 uses
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %i.gj
  %i.gl = load i16, ptr %i.gk, align 2
  %.fr158 = freeze i16 %i.gl
  %i.gm = and i16 %.fr158, 2048
  %.not141.not = icmp eq i16 %i.gm, 0
  br i1 %.not141.not, label %switch.early.test156, label %.critedge8

switch.early.test156:                             ; preds = %bb.y
  switch i8 %i.gi, label %.loopexit [
    i8 58, label %.critedge8
    i8 46, label %.critedge8
  ]

.critedge8:                                       ; preds = %switch.early.test156, %switch.early.test156, %bb.y
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  store ptr %i.gn, ptr %5, align 8
  %i.go = load i8, ptr %i.gh, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 %i.go, ptr %.10, align 1
  br label %bb.y, !llvm.loop !18

bb.z:                                             ; preds = %._crit_edge216
  %i.gq = and i32 %.lcssa182, 1024
  %.not139 = icmp eq i32 %i.gq, 0
  br i1 %.not139, label %.loopexit164, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv311
  store i32 6, ptr %i.gr, align 4
  %i.gs = load ptr, ptr %5, align 8               ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  store ptr %i.gt, ptr %5, align 8
  %i.gu = load i8, ptr %i.gs, align 1
  %i.gv = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.gu) #16
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.ph232312, i64 2 ; 2 uses
  store i8 %i.gv, ptr %i.fi, align 1
  %i.gx = load ptr, ptr %6, align 8
  %i.gy = load ptr, ptr %5, align 8               ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %i.ha
  %i.hc = load i16, ptr %i.hb, align 2
  %i.hd = and i16 %i.hc, 1024
  %.not140218 = icmp eq i16 %i.hd, 0
  br i1 %.not140218, label %.loopexit, label %.lr.ph221

.lr.ph221:                                        ; preds = %bb.aa, %.lr.ph221
  %i.he = phi ptr [ %i.hk, %.lr.ph221 ], [ %i.gy, %bb.aa ] ; 2 uses
  %.11219 = phi ptr [ %i.hi, %.lr.ph221 ], [ %i.gw, %bb.aa ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  store ptr %i.hf, ptr %5, align 8
  %i.hg = load i8, ptr %i.he, align 1
  %i.hh = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.hg) #16
  %i.hi = getelementptr inbounds nuw i8, ptr %.11219, i64 1 ; 2 uses
  store i8 %i.hh, ptr %.11219, align 1
  %i.hj = load ptr, ptr %6, align 8
  %i.hk = load ptr, ptr %5, align 8               ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2
  %i.hp = and i16 %i.ho, 1024
  %.not140 = icmp eq i16 %i.hp, 0
  br i1 %.not140, label %.loopexit, label %.lr.ph221, !llvm.loop !19

bb.ab:                                            ; preds = %bb.v
  %i.hq = and i32 %i.h, 4
  %.not136 = icmp eq i32 %i.hq, 0
  br i1 %.not136, label %.loopexit164, label %.backedge

.loopexit.sink.split:                             ; preds = %.lr.ph227, %bb.o, %._crit_edge192
  %.12.ph = phi ptr [ %.1.lcssa, %._crit_edge192 ], [ %.7223, %bb.o ], [ %.7, %.lr.ph227 ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv311
  store i32 0, ptr %i.hr, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.m, %switch.early.test, %bb.t, %switch.early.test156, %.lr.ph221, %.loopexit.sink.split, %bb.aa, %._crit_edge209, %._crit_edge201
  %.12 = phi ptr [ %.2, %switch.early.test ], [ %.9, %bb.t ], [ %i.gw, %bb.aa ], [ %.10, %switch.early.test156 ], [ %.5, %bb.m ], [ %.8.lcssa, %._crit_edge209 ], [ %.12.ph, %.loopexit.sink.split ], [ %i.hi, %.lr.ph221 ], [ %.3.lcssa, %._crit_edge201 ], [ %.4, %bb.j ] ; 2 uses
  store i8 0, ptr %.12, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv311, 1 ; 3 uses
  %.pre = load ptr, ptr %5, align 8
  %i.hs = load i8, ptr %.pre, align 1
  %.not185 = icmp eq i8 %i.hs, 0
  br i1 %.not185, label %.outer._crit_edge.loopexit240, label %.lr.ph, !llvm.loop !8

.outer._crit_edge.loopexit:                       ; preds = %.backedge
  %9 = trunc nuw nsw i64 %indvars.iv311 to i32
  br label %.outer._crit_edge

.outer._crit_edge.loopexit240:                    ; preds = %.loopexit
  %10 = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer._crit_edge.loopexit240, %.outer._crit_edge.loopexit, %bb.a
  %.0126.ph.lcssa184 = phi i32 [ %9, %.outer._crit_edge.loopexit ], [ 0, %bb.a ], [ %10, %.outer._crit_edge.loopexit240 ]
  store i32 %.0126.ph.lcssa184, ptr %4, align 4
  br label %.loopexit164

.loopexit164:                                     ; preds = %.lr.ph, %bb.z, %bb.ab, %.outer._crit_edge
  %.0127 = phi i32 [ 0, %.outer._crit_edge ], [ -1, %bb.ab ], [ -1, %bb.z ], [ -1, %.lr.ph ]
  ret i32 %.0127
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

declare zeroext i8 @pg_tolower(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @DecodeDateTime(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef captures(none) initializes((0, 12), (32, 36)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, i1 noundef zeroext %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %7 = alloca %struct.tm, align 8                 ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %8 = alloca %struct.tm, align 8                 ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %9 = alloca %struct.tm, align 8                 ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %10 = alloca %struct.tm, align 8                ; 3 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 38 uses
  %i.g = alloca i8, align 1                       ; 9 uses
  %i.h = alloca i32, align 4                      ; 14 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i8 0, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  store i32 2, ptr %3, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 14 uses
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 13 uses
  store i32 0, ptr %i.m, align 4
  store i32 0, ptr %4, align 8
  store i32 0, ptr %5, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 8 uses
  store i32 -1, ptr %i.n, align 8
  store i32 0, ptr %i.h, align 4
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = add nsw i32 %2, -1
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.w = zext nneg i32 %i.q to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.dc
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.dc ] ; 14 uses
  %.0282483 = phi i1 [ false, %.lr.ph ], [ %.2284, %bb.dc ] ; 29 uses
  %.0285482 = phi i1 [ false, %.lr.ph ], [ %.2287, %bb.dc ] ; 30 uses
  %.0288481 = phi i32 [ 2, %.lr.ph ], [ %.2290, %bb.dc ] ; 29 uses
  %.0292476 = phi i32 [ 0, %.lr.ph ], [ %.6298, %bb.dc ] ; 23 uses
  %.0299472 = phi i32 [ 0, %.lr.ph ], [ %.1300, %bb.dc ] ; 18 uses
  %i.x = getelementptr [4 x i8], ptr %1, i64 %indvars.iv ; 9 uses
  %i.y = load i32, ptr %i.x, align 4
  switch i32 %i.y, label %.thread416 [
    i32 2, label %bb.c
    i32 3, label %bb.aa
    i32 4, label %bb.af
    i32 0, label %bb.am
    i32 1, label %bb.bo
    i32 6, label %bb.bo
  ]

bb.c:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %.0292476, 31
  br i1 %i.z, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i32 @strtoint(ptr noundef %i.ab, ptr noundef nonnull %i.i, i32 noundef 10) #16 ; 2 uses
  %i.ad = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %.not356 = icmp eq i8 %i.ae, 45
  br i1 %.not356, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.af = add i32 %i.ac, 32044                    ; 2 uses
  %i.ag = udiv i32 %i.af, 146097                  ; 2 uses
  %.neg.i = mul i32 %i.ag, 1073595727
  %i.ah = add i32 %.neg.i, %i.af
  %i.ai = shl i32 %i.ah, 2
  %i.aj = or disjoint i32 %i.ai, 3
  %i.ak = mul nuw nsw i32 %i.ag, 3
  %i.al = udiv i32 %i.aj, 146097
  %i.am = add i32 %i.ac, 32104
  %i.an = add i32 %i.am, %i.ak
  %i.ao = add i32 %i.an, %i.al                    ; 2 uses
  %i.ap = udiv i32 %i.ao, 1461                    ; 2 uses
  %.neg24.i = mul i32 %i.ap, -1461
  %i.aq = add i32 %.neg24.i, %i.ao                ; 3 uses
  %i.ar = shl i32 %i.aq, 2                        ; 2 uses
  %.not.i = icmp ult i32 %i.ar, 1461
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = add i32 %i.aq, 305
  %i.at = urem i32 %i.as, 365
  br label %j2date.exit

bb.g:                                             ; preds = %bb.e
  %i.au = add i32 %i.aq, 306
  %i.av = urem i32 %i.au, 366
  br label %j2date.exit

j2date.exit:                                      ; preds = %bb.f, %bb.g
  %i.aw = phi i32 [ %i.at, %bb.f ], [ %i.av, %bb.g ]
  %i.ax = udiv i32 %i.ar, 1461
  %i.ay = add nuw nsw i32 %i.aw, 123              ; 2 uses
  %i.az = shl nuw nsw i32 %i.ap, 2
  %i.ba = add nsw i32 %i.az, -4800
  %i.bb = add nsw i32 %i.ba, %i.ax
  store i32 %i.bb, ptr %i.t, align 4
  %i.bc = mul nuw nsw i32 %i.ay, 2141
  %i.bd = lshr i32 %i.bc, 16                      ; 2 uses
  %i.be = mul nuw nsw i32 %i.bd, 3917
  %i.bf = lshr i32 %i.be, 7
  %i.bg = sub nsw i32 %i.ay, %i.bf
  store i32 %i.bg, ptr %i.s, align 4
  %i.bh = trunc nuw nsw i32 %i.bd to i8
  %.lhs.trunc.i = add nuw nsw i8 %i.bh, 10
  %i.bi = urem i8 %.lhs.trunc.i, 12
  %narrow.i = add nuw nsw i8 %i.bi, 1
  %i.bj = zext nneg i8 %narrow.i to i32
  store i32 %i.bj, ptr %i.r, align 8
  %i.bk = call fastcc i32 @DecodeTimezone(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.h)
  %.not357 = icmp eq i32 %i.bk, 0
  br i1 %.not357, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.d, %j2date.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  br label %.thread416

bb.h:                                             ; preds = %j2date.exit
  store i32 7214, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  br label %bb.da

bb.i:                                             ; preds = %bb.c
  %i.bl = and i32 %.0299472, 14
  %i.bm = icmp eq i32 %i.bl, 14
  %i.bn = icmp ne i32 %.0292476, 0                ; 2 uses
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.bo = tail call ptr @__ctype_b_loc() #17
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 7 uses
  %i.bs = load i8, ptr %i.br, align 1             ; 3 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = and i16 %i.bv, 2048
  %i.bx = icmp ne i16 %i.bw, 0
  %or.cond9 = select i1 %i.bx, i1 true, i1 %i.bn
  br i1 %or.cond9, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  switch i32 %.0292476, label %.thread416 [
    i32 3, label %bb.l
    i32 0, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.by = and i32 %.0299472, 7168
  %i.bz = icmp eq i32 %i.by, 7168
  br i1 %i.bz, label %.thread416, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.br, i32 noundef 45) #15 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.thread416, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = call fastcc i32 @DecodeTimezone(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.h)
  %.not355 = icmp eq i32 %i.cc, 0
  br i1 %.not355, label %bb.o, label %.thread416

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.ca, align 1
  %i.cd = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.ce = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cd) #15
  %i.cf = trunc i64 %i.ce to i32
end_hunk_0
