inline.NumInlined: 81
inline.NumDeleted: 23
begin_hunk_0_@cff_blend_build_vector:bb.a
.lr.ph:                                           ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 5040
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 5036 ; 2 uses
  br i1 %i.f, label %bb.g, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph.split

bb.g:                                             ; preds = %.lr.ph
  store i32 65536, ptr %i.y, align 4, !tbaa !3
  %exitcond134.peel.not = icmp eq i32 %i.q, 0
  br i1 %exitcond134.peel.not, label %._crit_edge.thread, label %.lr.ph.split.us.peel.next

._crit_edge.thread:                               ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.ad, align 8, !tbaa !473
  br label %bb.x

.lr.ph.split.us.peel.next:                        ; preds = %bb.g
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !484
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.split.us.peel.next
  %indvars.iv130 = phi i64 [ 1, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next131, %bb.i ] ; 3 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %indvars.iv130
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !485
  %.not110.us = icmp ult i32 %i.ah, %i.ai
  br i1 %.not110.us, label %bb.i, label %.split.us

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv130
  store i32 0, ptr %i.aj, align 4, !tbaa !3
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %i.v
  br i1 %exitcond134.not, label %._crit_edge, label %bb.h, !llvm.loop !486

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.loopexit
  %i.ak = phi ptr [ %i.y, %.lr.ph.split.preheader ], [ %i.cd, %.loopexit ] ; 3 uses
  %indvars.iv125 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next126, %.loopexit ] ; 5 uses
  %i.al = icmp eq i64 %indvars.iv125, 0
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split
  store i32 65536, ptr %i.ak, align 4, !tbaa !3
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph.split
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !484
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv125
  %i.ao = getelementptr i8, ptr %i.an, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 2 uses
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !488
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.ac, align 4, !tbaa !485
  %.not110 = icmp ult i32 %i.ap, %i.at
  br i1 %.not110, label %bb.l, label %.split.us

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv125
  store i32 65536, ptr %i.au, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.u
  %indvars.iv = phi i64 [ 0, %bb.l ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !489
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %indvars.iv ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !492 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !494 ; 7 uses
  %i.ba = icmp sgt i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !495 ; 5 uses
  %i.bd = icmp sgt i64 %i.az, %i.bc
  br i1 %i.bd, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = icmp slt i64 %i.ax, 0
  %i.bf = icmp sgt i64 %i.bc, 0
  %or.cond112.not118.not = and i1 %i.be, %i.bf
  %.not111 = icmp eq i64 %i.az, 0
  %brmerge = or i1 %.not111, %or.cond112.not118.not
  br i1 %brmerge, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !134 ; 6 uses
  %i.bi = icmp slt i64 %i.bh, %i.ax
  %i.bj = icmp sgt i64 %i.bh, %i.bc
  %or.cond116 = or i1 %i.bi, %i.bj
  br i1 %or.cond116, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = icmp eq i64 %i.bh, %i.az
  br i1 %i.bk, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = icmp slt i64 %i.bh, %i.az
  br i1 %i.bl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bm = sub nsw i64 %i.bh, %i.ax
  %i.bn = sub nsw i64 %i.az, %i.ax
  %i.bo = call i64 @FT_DivFix(i64 noundef %i.bm, i64 noundef %i.bn) #18
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bp = sub nsw i64 %i.bc, %i.bh
  %i.bq = sub nsw i64 %i.bc, %i.az
  %i.br = call i64 @FT_DivFix(i64 noundef %i.bp, i64 noundef %i.bq) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.q, %bb.p, %bb.m, %bb.n, %bb.s, %bb.t
  %.0 = phi i64 [ %i.br, %bb.t ], [ 65536, %bb.m ], [ 65536, %bb.o ], [ 65536, %bb.q ], [ 0, %bb.p ], [ %i.bo, %bb.s ], [ 65536, %bb.n ]
  %i.bs = load ptr, ptr %i.w, align 8, !tbaa !483 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv125 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = sext i32 %i.bu to i64
  %sext = shl i64 %.0, 32
  %i.bw = ashr exact i64 %sext, 32
  %i.bx = mul nsw i64 %i.bw, %i.bv                ; 2 uses
  %i.by = ashr i64 %i.bx, 63
  %i.bz = add nsw i64 %i.bx, 32768
  %i.ca = add nsw i64 %i.bz, %i.by
  %i.cb = lshr i64 %i.ca, 16
  %i.cc = trunc i64 %i.cb to i32
  store i32 %i.cc, ptr %i.bt, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !496

.loopexit:                                        ; preds = %bb.u, %bb.j
  %i.cd = phi ptr [ %i.ak, %bb.j ], [ %i.bs, %bb.u ]
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %i.v
  br i1 %exitcond129.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !497

._crit_edge:                                      ; preds = %.loopexit, %bb.i, %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.ce, align 8, !tbaa !473
  br i1 %i.f, label %bb.x, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !474
  %i.ch = zext i32 %i.cg to i64
  %i.ci = zext i32 %2 to i64                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !475
  %i.cl = call ptr @ft_mem_qrealloc(ptr noundef %i.e, i64 noundef 8, i64 noundef %i.ch, i64 noundef %i.ci, ptr noundef %i.ck, ptr noundef nonnull %i.a) #18 ; 2 uses
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !475
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not109 = icmp eq i32 %i.cm, 0
  br i1 %.not109, label %bb.w, label %.split.us

bb.w:                                             ; preds = %bb.v
  %i.cn = shl nuw nsw i64 %i.ci, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cl, ptr align 8 %3, i64 %i.cn, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread, %bb.w, %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %2, ptr %i.co, align 4, !tbaa !474
  store i8 1, ptr %0, align 8, !tbaa !472
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %.split.us

.split.us:                                        ; preds = %bb.k, %bb.h, %bb.d, %bb.c, %bb.a, %bb.v, %bb.e, %bb.x
  %i.cp = phi i32 [ 3, %bb.d ], [ %i.cm, %bb.v ], [ %i.z, %bb.e ], [ %.pre, %bb.x ], [ 3, %bb.c ], [ 3, %bb.a ], [ 3, %bb.h ], [ 3, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.cp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #9

declare hidden i32 @FT_Stream_EnterFrame(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_parser_run(ptr noundef nonnull initializes((8, 32), (40, 48)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !461
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !463
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !498
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !499
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.f, align 8, !tbaa !500
  %i.g = icmp ult ptr %1, %2
  br i1 %i.g, label %.lr.ph197, label %.loopexit172

.lr.ph197:                                        ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %.lr.ph222

.lr.ph222:                                        ; preds = %.lr.ph197, %.thread166
  %.0127220 = phi ptr [ %1, %.lr.ph197 ], [ %i.cq, %.thread166 ] ; 9 uses
  %i.h = load i8, ptr %.0127220, align 1, !tbaa !165 ; 6 uses
  %i.i = zext i8 %i.h to i32
  %i.j = icmp ne i8 %i.h, 31
  %i.k = add i8 %i.h, -27
  %i.l = icmp ult i8 %i.k, -28
  %or.cond4 = and i1 %i.j, %i.l
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !463  ; 4 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !461  ; 5 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 3
  %i.s = trunc i64 %i.r to i32                    ; 3 uses
  %i.t = load i32, ptr %3, align 8, !tbaa !462
  %.not148 = icmp ugt i32 %i.t, %i.s              ; 2 uses
  br i1 %or.cond4, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph222
  br i1 %.not148, label %bb.c, label %.loopexit172

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.u, ptr %i.c, align 8, !tbaa !463
  store ptr %.0127220, ptr %i.m, align 8, !tbaa !160
  switch i8 %i.h, label %bb.f [
    i8 30, label %.preheader.preheader
    i8 28, label %bb.d
    i8 29, label %bb.e
  ]

.preheader.preheader:                             ; preds = %bb.c
  %.1128216 = getelementptr inbounds nuw i8, ptr %.0127220, i64 1 ; 2 uses
  %.not149217 = icmp ult ptr %.1128216, %2
  br i1 %.not149217, label %.lr.ph219, label %.loopexit172

.preheader:                                       ; preds = %.lr.ph219
  %.1128 = getelementptr inbounds nuw i8, ptr %.1128218, i64 1 ; 2 uses
  %.not149 = icmp ult ptr %.1128, %2
  br i1 %.not149, label %.lr.ph219, label %.loopexit172

.lr.ph219:                                        ; preds = %.preheader.preheader, %.preheader
  %.1128218 = phi ptr [ %.1128, %.preheader ], [ %.1128216, %.preheader.preheader ] ; 3 uses
  %i.v = load i8, ptr %.1128218, align 1, !tbaa !165
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %.mask = and i32 %i.w, 240
  %i.x = icmp eq i32 %.mask, 240
  %i.y = and i32 %i.w, 15
  %i.z = icmp eq i32 %i.y, 15
  %or.cond = or i1 %i.x, %i.z
  br i1 %or.cond, label %.thread166, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.0127220, i64 2
  br label %.thread166

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.0127220, i64 4
  br label %.thread166

bb.f:                                             ; preds = %bb.c
  %i.ac = icmp ugt i8 %i.h, -10
  %spec.select.idx = zext i1 %i.ac to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.0127220, i64 %spec.select.idx
  br label %.thread166

bb.g:                                             ; preds = %.lr.ph222
  br i1 %.not148, label %bb.h, label %.loopexit172

bb.h:                                             ; preds = %bb.g
  store ptr %.0127220, ptr %i.m, align 8, !tbaa !160
  %i.ad = icmp eq i8 %i.h, 12
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.0127220, i64 1 ; 3 uses
  %.not143 = icmp ult ptr %i.ae, %2
  br i1 %.not143, label %bb.j, label %.loopexit172

bb.j:                                             ; preds = %bb.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !165
  %i.ag = zext i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ag, 256
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.2129 = phi ptr [ %i.ae, %bb.j ], [ %.0127220, %bb.h ] ; 2 uses
  %.0123 = phi i32 [ %i.ah, %bb.j ], [ %i.i, %bb.h ]
  %i.ai = load i32, ptr %4, align 4, !tbaa !457
  %i.aj = or i32 %i.ai, %.0123                    ; 5 uses
  %i.ak = icmp eq i32 %i.aj, 4096
  br i1 %i.ak, label %._crit_edge, label %.lr.ph214

.lr.ph214.1:                                      ; preds = %.lr.ph214
  %i.al = getelementptr inbounds nuw i8, ptr %.0120176213, i64 68
  %i.am = load i32, ptr %i.al, align 4, !tbaa !501
  %i.an = icmp eq i32 %i.am, %i.aj
  br i1 %i.an, label %._crit_edge.loopexit.split.loop.exit244, label %.lr.ph214.2

.lr.ph214.2:                                      ; preds = %.lr.ph214.1
  %i.ao = getelementptr inbounds nuw i8, ptr %.0120176213, i64 100
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !501
  %i.aq = icmp eq i32 %i.ap, %i.aj
  br i1 %i.aq, label %._crit_edge.loopexit.split.loop.exit241, label %.lr.ph214.3

.lr.ph214.3:                                      ; preds = %.lr.ph214.2
  %i.ar = getelementptr inbounds nuw i8, ptr %.0120176213, i64 128 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !503 ; 2 uses
  %.not144.3 = icmp eq i32 %i.as, 0
  br i1 %.not144.3, label %.thread157, label %bb.l, !llvm.loop !504

bb.l:                                             ; preds = %.lr.ph214.3
  %i.at = getelementptr inbounds nuw i8, ptr %.0120176213, i64 132
  %i.au = load i32, ptr %i.at, align 4, !tbaa !501
  %i.av = icmp eq i32 %i.au, %i.aj
  br i1 %i.av, label %._crit_edge, label %.lr.ph214, !llvm.loop !504

._crit_edge.loopexit.split.loop.exit241:          ; preds = %.lr.ph214.2
  %i.aw = getelementptr inbounds nuw i8, ptr %.0120176213, i64 96 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !503
  br label %._crit_edge

._crit_edge.loopexit.split.loop.exit244:          ; preds = %.lr.ph214.1
  %i.ay = getelementptr inbounds nuw i8, ptr %.0120176213, i64 64 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !503
  br label %._crit_edge

._crit_edge.loopexit.split.loop.exit247:          ; preds = %.lr.ph214
  %i.ba = getelementptr inbounds nuw i8, ptr %.0120176213, i64 32 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !503
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.split.loop.exit241, %._crit_edge.loopexit.split.loop.exit244, %._crit_edge.loopexit.split.loop.exit247, %bb.l, %bb.k
  %.lcssa = phi i32 [ 4, %bb.k ], [ %i.az, %._crit_edge.loopexit.split.loop.exit244 ], [ %i.ax, %._crit_edge.loopexit.split.loop.exit241 ], [ %i.bb, %._crit_edge.loopexit.split.loop.exit247 ], [ %i.as, %bb.l ] ; 3 uses
  %.0120176.lcssa = phi ptr [ @cff_field_handlers, %bb.k ], [ %i.ay, %._crit_edge.loopexit.split.loop.exit244 ], [ %i.aw, %._crit_edge.loopexit.split.loop.exit241 ], [ %i.ba, %._crit_edge.loopexit.split.loop.exit247 ], [ %i.ar, %bb.l ] ; 6 uses
  %i.bc = load ptr, ptr %5, align 8, !tbaa !459   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0120176.lcssa, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !505
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf ; 5 uses
  %i.bh = icmp ne i32 %.lcssa, 6
  %i.bi = icmp eq i32 %i.s, 0
  %or.cond6 = and i1 %i.bi, %i.bh
  br i1 %or.cond6, label %.loopexit172, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  switch i32 %.lcssa, label %bb.ac [
    i32 5, label %bb.n
    i32 4, label %bb.n
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 6, label %bb.v
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %.val = load ptr, ptr %i.n, align 8, !tbaa !160
  %i.bj = tail call fastcc i64 @cff_parse_num(ptr noundef nonnull %0, ptr %.val)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.val152 = load ptr, ptr %i.n, align 8, !tbaa !160
  %i.bk = tail call fastcc i64 @do_fixed(ptr noundef nonnull readonly %0, ptr readonly %.val152, i64 noundef 0)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %.val153 = load ptr, ptr %i.n, align 8, !tbaa !160
  %i.bl = tail call fastcc i64 @do_fixed(ptr noundef nonnull readonly %0, ptr readonly %.val153, i64 noundef 3)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.0118 = phi i64 [ %i.bj, %bb.n ], [ %i.bk, %bb.o ], [ %i.bl, %bb.p ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0120176.lcssa, i64 12
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !506
  switch i8 %i.bn, label %bb.u [
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 4, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.bo = trunc i64 %.0118 to i8
  store i8 %i.bo, ptr %i.bg, align 1, !tbaa !165
  br label %.thread157

bb.s:                                             ; preds = %bb.q
  %i.bp = trunc i64 %.0118 to i16
  store i16 %i.bp, ptr %i.bg, align 2, !tbaa !60
  br label %.thread157

bb.t:                                             ; preds = %bb.q
  %i.bq = trunc i64 %.0118 to i32
  store i32 %i.bq, ptr %i.bg, align 4, !tbaa !3
  br label %.thread157

bb.u:                                             ; preds = %bb.q
  store i64 %.0118, ptr %i.bg, align 8, !tbaa !134
  br label %.thread157

bb.v:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.0120176.lcssa, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !507
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.0120176.lcssa, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !508
  %spec.select151 = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 %i.s) ; 3 uses
  %i.bx = trunc i32 %spec.select151 to i8
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !165
  %.not145177 = icmp eq i32 %spec.select151, 0
  br i1 %.not145177, label %.thread157, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %.0120176.lcssa, i64 12
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.ab
  %.0115181 = phi ptr [ %i.n, %.lr.ph ], [ %i.bz, %bb.ab ] ; 2 uses
  %.0117180 = phi ptr [ %i.bg, %.lr.ph ], [ %i.ch, %bb.ab ] ; 5 uses
  %.1119179 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.ab ]
  %.1122178 = phi i32 [ %spec.select151, %.lr.ph ], [ %i.ci, %bb.ab ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0115181, i64 8
  %.0115.val = load ptr, ptr %.0115181, align 8, !tbaa !160
  %i.ca = tail call fastcc i64 @cff_parse_num(ptr noundef nonnull %0, ptr %.0115.val)
  %i.cb = add i64 %i.ca, %.1119179                ; 5 uses
  %i.cc = load i8, ptr %i.by, align 4, !tbaa !506 ; 2 uses
  switch i8 %i.cc, label %bb.aa [
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 4, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.cd = trunc i64 %i.cb to i8
  store i8 %i.cd, ptr %.0117180, align 1, !tbaa !165
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.ce = trunc i64 %i.cb to i16
  store i16 %i.ce, ptr %.0117180, align 2, !tbaa !60
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.cf = trunc i64 %i.cb to i32
  store i32 %i.cf, ptr %.0117180, align 4, !tbaa !3
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  store i64 %i.cb, ptr %.0117180, align 8, !tbaa !134
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.y, %bb.z, %bb.aa
  %i.cg = zext i8 %i.cc to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.0117180, i64 %i.cg
  %i.ci = add i32 %.1122178, -1                   ; 2 uses
  %.not145 = icmp eq i32 %i.ci, 0
  br i1 %.not145, label %.loopexit171, label %bb.w, !llvm.loop !509

bb.ac:                                            ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %.0120176.lcssa, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !510
  %i.cl = tail call i32 %i.ck(ptr noundef nonnull %0) #18 ; 2 uses
  %.not146 = icmp eq i32 %i.cl, 0
  br i1 %.not146, label %.loopexit171, label %.loopexit172

.lr.ph214:                                        ; preds = %bb.k, %bb.l
  %.0120176213 = phi ptr [ %i.ar, %bb.l ], [ @cff_field_handlers, %bb.k ] ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0120176213, i64 36
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !501
  %i.co = icmp eq i32 %i.cn, %i.aj
  br i1 %i.co, label %._crit_edge.loopexit.split.loop.exit247, label %.lr.ph214.1

.loopexit171:                                     ; preds = %bb.ab, %bb.ac
  %.not147 = icmp eq i32 %.lcssa, 8
  br i1 %.not147, label %.thread166, label %.thread157

.thread157:                                       ; preds = %.lr.ph214.3, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %.loopexit171
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !461
  store ptr %i.cp, ptr %i.c, align 8, !tbaa !463
  br label %.thread166

.thread166:                                       ; preds = %.lr.ph219, %bb.d, %bb.e, %bb.f, %.loopexit171, %.thread157
  %.4131 = phi ptr [ %.2129, %.thread157 ], [ %spec.select, %bb.f ], [ %i.aa, %bb.d ], [ %i.ab, %bb.e ], [ %.2129, %.loopexit171 ], [ %.1128218, %.lr.ph219 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.4131, i64 1 ; 2 uses
  %i.cr = icmp ult ptr %i.cq, %2
  br i1 %i.cr, label %.lr.ph222, label %.loopexit172

.loopexit172:                                     ; preds = %.thread166, %bb.b, %bb.ac, %._crit_edge, %bb.i, %bb.g, %.preheader.preheader, %.preheader, %bb.a
  %.0116 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ 6, %._crit_edge ], [ %i.cl, %bb.ac ], [ 6, %bb.b ], [ 6, %bb.i ], [ 0, %.thread166 ], [ 6, %bb.g ], [ 0, %.preheader.preheader ]
  ret i32 %.0116
}

declare hidden void @FT_Stream_ExitFrame(ptr noundef) local_unnamed_addr #9

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -140737488355328, 140737488355328) i64 @cff_parse_num(ptr noundef readonly captures(none) %0, ptr readonly captures(address) %.0.val) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %.0.val, align 1, !tbaa !165 ; 5 uses
  switch i8 %i.a, label %bb.d [
    i8 30, label %bb.b
    i8 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !499
  %i.d = tail call fastcc i64 @cff_parse_real(ptr noundef nonnull %.0.val, ptr noundef %i.c, i64 noundef 0, ptr noundef null)
  %i.e = ashr i64 %i.d, 16
  br label %cff_parse_integer.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !165
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 16
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !165
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 8
  %i.n = or disjoint i64 %i.m, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !165
  %i.q = zext i8 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q
  %i.s = shl nuw i64 %i.r, 40
  %i.t = add i64 %i.s, 140737488355328
  %i.u = ashr i64 %i.t, 48
  br label %cff_parse_integer.exit

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !499  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 1 ; 7 uses
  %i.y = zext i8 %i.a to i32                      ; 3 uses
  switch i8 %i.a, label %bb.i [
    i8 28, label %bb.e
    i8 29, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 3
  %i.aa = icmp ule ptr %i.z, %i.w
  %.not37.i = icmp ult ptr %i.w, %i.x
  %or.cond.i = select i1 %i.aa, i1 true, i1 %.not37.i
  br i1 %or.cond.i, label %bb.f, label %cff_parse_integer.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !165
  %i.ac = zext i8 %i.ab to i16
  %i.ad = shl nuw i16 %i.ac, 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !165
  %i.ag = zext i8 %i.af to i16
  %i.ah = or disjoint i16 %i.ad, %i.ag
  %i.ai = sext i16 %i.ah to i64
  br label %cff_parse_integer.exit

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.val, i64 5
  %i.ak = icmp ule ptr %i.aj, %i.w
  %.not36.i = icmp ult ptr %i.w, %i.x
  %or.cond38.i = select i1 %i.ak, i1 true, i1 %.not36.i
  br i1 %or.cond38.i, label %bb.h, label %cff_parse_integer.exit

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.x, align 1
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = zext i32 %i.am to i64
  br label %cff_parse_integer.exit

bb.i:                                             ; preds = %bb.d
  %i.ao = icmp ult i8 %i.a, -9
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = add nsw i32 %i.y, -139
  %i.aq = sext i32 %i.ap to i64
  br label %cff_parse_integer.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = icmp samesign ult i8 %i.a, -5
  %i.as = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %i.at = icmp ule ptr %i.as, %i.w
  %.not35.i = icmp ult ptr %i.w, %i.x
  %or.cond39.i = select i1 %i.at, i1 true, i1 %.not35.i ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %or.cond39.i, label %bb.m, label %cff_parse_integer.exit

bb.m:                                             ; preds = %bb.l
  %i.au = shl nuw nsw i32 %i.y, 8
  %i.av = load i8, ptr %i.x, align 1, !tbaa !165
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %i.au, -63124
  %i.ay = add nuw nsw i32 %i.ax, %i.aw
  %i.az = zext nneg i32 %i.ay to i64
  br label %cff_parse_integer.exit

bb.n:                                             ; preds = %bb.k
  br i1 %or.cond39.i, label %bb.o, label %cff_parse_integer.exit

bb.o:                                             ; preds = %bb.n
  %i.ba = shl nuw nsw i32 %i.y, 8
  %i.bb = load i8, ptr %i.x, align 1, !tbaa !165
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = sub nsw i32 64148, %i.bd
  %i.bf = sext i32 %i.be to i64
  br label %cff_parse_integer.exit

cff_parse_integer.exit:                           ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.u, %bb.c ], [ %i.bf, %bb.o ], [ %i.ai, %bb.f ], [ %i.an, %bb.h ], [ %i.aq, %bb.j ], [ %i.az, %bb.m ], [ 0, %bb.n ], [ 0, %bb.l ], [ 0, %bb.g ], [ 0, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 162) i32 @cff_parse_font_matrix(ptr noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = alloca [6 x i64], align 16               ; 10 uses
  %i.b = alloca [6 x i64], align 16               ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !459  ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !461  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !463
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.not = icmp ult ptr %i.k, %i.l
  br i1 %.not, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i8 1, ptr %i.m, align 8, !tbaa !128
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.t
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %.07090 = phi ptr [ %i.i, %bb.b ], [ %i.o, %bb.t ] ; 2 uses
  %.07189 = phi i64 [ 9223372036854775807, %bb.b ], [ %.172, %bb.t ] ; 2 uses
  %.07587 = phi i64 [ -9223372036854775808, %bb.b ], [ %.2, %bb.t ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.07090, i64 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 5 uses
  %.070.val = load ptr, ptr %.07090, align 8, !tbaa !160 ; 10 uses
  %i.q = load i8, ptr %.070.val, align 1, !tbaa !165 ; 5 uses
  %i.r = icmp eq i8 %i.q, 30
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !499  ; 7 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = call fastcc i64 @cff_parse_real(ptr noundef nonnull readonly %.070.val, ptr noundef %i.s, i64 noundef 0, ptr noundef nonnull %i.p)
  br label %cff_parse_fixed_dynamic.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.070.val, i64 1 ; 7 uses
  %i.v = zext i8 %i.q to i32                      ; 3 uses
  switch i8 %i.q, label %bb.i [
    i8 28, label %bb.f
    i8 29, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.070.val, i64 3
  %i.x = icmp ule ptr %i.w, %i.s
  %.not37.i.i = icmp ult ptr %i.s, %i.u
  %or.cond.i.i = select i1 %i.x, i1 true, i1 %.not37.i.i
  br i1 %or.cond.i.i, label %bb.g, label %cff_parse_integer.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.y = load i8, ptr %i.u, align 1, !tbaa !165
  %i.z = zext i8 %i.y to i16
  %i.aa = shl nuw i16 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.070.val, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !165
  %i.ad = zext i8 %i.ac to i16
  %i.ae = or disjoint i16 %i.aa, %i.ad
  %i.af = sext i16 %i.ae to i64
  br label %cff_parse_integer.exit.thread.i

bb.h:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.070.val, i64 5
end_hunk_0
