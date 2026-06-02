inline.NumInlined: 12424
inline.NumDeleted: 1708
begin_hunk_0_@porterClose:bb.a
  br i1 %.not.i.i4, label %sqlite3_mutex_enter.exit.i5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.t(ptr noundef nonnull %i.s) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i5

sqlite3_mutex_enter.exit.i5:                      ; preds = %bb.h, %bb.g
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.v = tail call i32 %i.u(ptr noundef nonnull %0) #59, !inline_history !269
  %i.w = sext i32 %i.v to i64
  %i.x = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.y = sub nsw i64 %i.x, %i.w
  store i64 %i.y, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.ab(ptr noundef nonnull %0) #59, !inline_history !270
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i6, label %sqlite3_free.exit7, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i5
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.ad(ptr noundef nonnull %i.ac) #59, !inline_history !271
  br label %sqlite3_free.exit7

bb.j:                                             ; preds = %sqlite3_free.exit
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.ae(ptr noundef nonnull %0) #59, !inline_history !270
  br label %sqlite3_free.exit7

sqlite3_free.exit7:                               ; preds = %sqlite3_mutex_enter.exit.i5, %bb.i, %bb.j
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 102) i32 @porterNext(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef writeonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 57 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5468 ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.f, align 4, !tbaa !5471 ; 2 uses
  %i.m = load i32, ptr %i.g, align 8, !tbaa !5470 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.preheader, label %.thread450

.lr.ph.preheader:                                 ; preds = %bb.a, %.backedge
  %i.o = phi i32 [ %i.asv, %.backedge ], [ %i.m, %bb.a ] ; 4 uses
  %i.p = phi i32 [ %i.asu, %.backedge ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !227   ; 2 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %.lr.ph950, label %.critedge

.lr.ph:                                           ; preds = %.critedge3
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.next
  %i.v = load i8, ptr %i.u, align 1, !tbaa !227   ; 2 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %.lr.ph950, label %.critedge, !llvm.loop !5475

.lr.ph950:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi i8 [ %i.v, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv949 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %.promoted558704948 = phi i32 [ %i.ad, %.lr.ph ], [ %i.p, %.lr.ph.preheader ]
  %i.y = icmp samesign ult i8 %i.x, 48
  br i1 %i.y, label %.critedge3, label %bb.b

bb.b:                                             ; preds = %.lr.ph950
  %i.z = zext nneg i8 %i.x to i64
  %i.aa = getelementptr i8, ptr @porterIdChar, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -48
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !227
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %.critedge3, label %.critedge

.critedge3:                                       ; preds = %.lr.ph950, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv949, 1 ; 4 uses
  %i.ad = trunc i64 %indvars.iv.next to i32       ; 4 uses
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !5471
  %exitcond.not = icmp eq i32 %i.o, %i.ad
  br i1 %exitcond.not, label %.backedge, label %.lr.ph, !llvm.loop !5475

.critedge:                                        ; preds = %.lr.ph, %bb.b, %.lr.ph.preheader
  %.promoted558704.lcssa = phi i32 [ %i.p, %.lr.ph.preheader ], [ %i.ad, %.lr.ph ], [ %.promoted558704948, %bb.b ] ; 3 uses
  %indvars.iv.lcssa = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv949, %bb.b ] ; 2 uses
  %i.ae = trunc nsw i64 %indvars.iv.lcssa to i32  ; 3 uses
  %i.af = icmp slt i32 %.promoted558704.lcssa, %i.o
  br i1 %i.af, label %.lr.ph559.preheader, label %.critedge5

.lr.ph559.preheader:                              ; preds = %.critedge
  %i.ag = sext i32 %.promoted558704.lcssa to i64
  br label %.lr.ph559

.lr.ph559:                                        ; preds = %.lr.ph559.preheader, %.critedge68
  %indvars.iv652 = phi i64 [ %i.ag, %.lr.ph559.preheader ], [ %indvars.iv.next653, %.critedge68 ] ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv652
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !227 ; 3 uses
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.c, label %.critedge68

bb.c:                                             ; preds = %.lr.ph559
  %i.ak = icmp samesign ult i8 %i.ai, 48
  br i1 %i.ak, label %.critedge5.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = zext nneg i8 %i.ai to i64
  %i.am = getelementptr i8, ptr @porterIdChar, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -48
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !227
  %.not64.not = icmp eq i8 %i.ao, 0
  br i1 %.not64.not, label %.critedge5.loopexit.split.loop.exit888, label %.critedge68

.critedge68:                                      ; preds = %.lr.ph559, %bb.d
  %indvars.iv.next653 = add nsw i64 %indvars.iv652, 1 ; 2 uses
  %i.ap = trunc i64 %indvars.iv.next653 to i32    ; 2 uses
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !5471
  %exitcond656.not = icmp eq i32 %i.o, %i.ap
  br i1 %exitcond656.not, label %.critedge5, label %.lr.ph559, !llvm.loop !5476

.critedge5.loopexit.split.loop.exit:              ; preds = %bb.c
  %i.aq = trunc nsw i64 %indvars.iv652 to i32
  br label %.critedge5

.critedge5.loopexit.split.loop.exit888:           ; preds = %bb.d
  %i.ar = trunc nsw i64 %indvars.iv652 to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge68, %.critedge5.loopexit.split.loop.exit, %.critedge5.loopexit.split.loop.exit888, %.critedge
  %.lcssa497 = phi i32 [ %.promoted558704.lcssa, %.critedge ], [ %i.aq, %.critedge5.loopexit.split.loop.exit ], [ %i.ar, %.critedge5.loopexit.split.loop.exit888 ], [ %i.o, %.critedge68 ] ; 2 uses
  %.not66 = icmp sgt i32 %.lcssa497, %i.ae
  br i1 %.not66, label %bb.e, label %.backedge

bb.e:                                             ; preds = %.critedge5
  %i.as = sub nsw i32 %.lcssa497, %i.ae           ; 14 uses
  %i.at = load i32, ptr %i.h, align 8, !tbaa !5474
  %i.au = icmp sgt i32 %i.as, %i.at
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !5473 ; 2 uses
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.av = add nsw i32 %i.as, 20                   ; 2 uses
  store i32 %i.av, ptr %i.h, align 8, !tbaa !5474
  %i.aw = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %.thread450

sqlite3_realloc64.exit:                           ; preds = %bb.f
  %i.ax = sext i32 %i.av to i64
  %i.ay = tail call fastcc ptr @sqlite3Realloc(ptr noundef %.pre, i64 noundef %i.ax), !inline_history !1057 ; 3 uses
  %.not65.not = icmp eq ptr %i.ay, null
  br i1 %.not65.not, label %.thread450, label %bb.g

bb.g:                                             ; preds = %sqlite3_realloc64.exit
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !5473
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.az = phi ptr [ %i.ay, %bb.g ], [ %.pre, %bb.e ] ; 24 uses
  %i.ba = ptrtoaddr ptr %i.az to i64              ; 2 uses
  %sext = shl i64 %indvars.iv.lcssa, 32
  %i.bb = ashr exact i64 %sext, 32                ; 3 uses
  %i.bc = getelementptr inbounds i8, ptr %i.d, i64 %i.bb ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.bd = add i32 %i.as, -21
  %or.cond.i = icmp ult i32 %i.bd, -18
  %wide.trip.count.i.i = zext i32 %i.as to i64    ; 15 uses
  br i1 %or.cond.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %min.iters.check984 = icmp ult i32 %i.as, 8
  br i1 %min.iters.check984, label %.lr.ph.i.i.preheader1039, label %vector.memcheck981

vector.memcheck981:                               ; preds = %.lr.ph.i.i.preheader
  %i.be = add i64 %i.bb, %i.e
  %i.bf = sub i64 %i.ba, %i.be
  %diff.check982 = icmp ult i64 %i.bf, 8
  br i1 %diff.check982, label %.lr.ph.i.i.preheader1039, label %vector.ph985

vector.ph985:                                     ; preds = %vector.memcheck981
  %n.vec987 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %vector.ph985
  %index989 = phi i64 [ 0, %vector.ph985 ], [ %index.next994, %vector.body988 ] ; 3 uses
  %vec.phi990 = phi <4 x i1> [ zeroinitializer, %vector.ph985 ], [ %i.bs, %vector.body988 ]
  %vec.phi991 = phi <4 x i1> [ zeroinitializer, %vector.ph985 ], [ %i.bt, %vector.body988 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index989 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %wide.load992 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !227 ; 3 uses
  %wide.load993 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !227 ; 3 uses
  %i.bi = add <4 x i8> %wide.load992, splat (i8 -65)
  %i.bj = add <4 x i8> %wide.load993, splat (i8 -65)
  %i.bk = icmp ult <4 x i8> %i.bi, splat (i8 26)
  %i.bl = icmp ult <4 x i8> %i.bj, splat (i8 26)
  %6 = select <4 x i1> %i.bk, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.bm = or disjoint <4 x i8> %wide.load992, %6
  %i.bn = select <4 x i1> %i.bl, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %7 = or disjoint <4 x i8> %wide.load993, %i.bn
  %i.bo = add <4 x i8> %wide.load992, splat (i8 -48)
  %i.bp = icmp ult <4 x i8> %i.bo, splat (i8 10)
  %i.bq = add <4 x i8> %wide.load993, splat (i8 -48)
  %i.br = icmp ult <4 x i8> %i.bq, splat (i8 10)
  %i.bs = or <4 x i1> %vec.phi990, %i.bp          ; 2 uses
  %i.bt = or <4 x i1> %vec.phi991, %i.br          ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 %index989 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store <4 x i8> %i.bm, ptr %i.bu, align 1, !tbaa !227
  store <4 x i8> %7, ptr %i.bv, align 1, !tbaa !227
  %index.next994 = add nuw i64 %index989, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next994, %n.vec987
  br i1 %i.bw, label %middle.block995, label %vector.body988, !llvm.loop !5477

middle.block995:                                  ; preds = %vector.body988
  %bin.rdx996 = or <4 x i1> %i.bt, %i.bs
  %bin.rdx996.fr = freeze <4 x i1> %bin.rdx996
  %i.bx = bitcast <4 x i1> %bin.rdx996.fr to i4
  %.not1036 = icmp ne i4 %i.bx, 0
  %rdx.select997 = zext i1 %.not1036 to i32       ; 2 uses
  %cmp.n998 = icmp eq i64 %n.vec987, %wide.trip.count.i.i
  br i1 %cmp.n998, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader1039

.lr.ph.i.i.preheader1039:                         ; preds = %vector.memcheck981, %.lr.ph.i.i.preheader, %middle.block995
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck981 ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec987, %middle.block995 ] ; 5 uses
  %.03844.i.i.ph = phi i32 [ 0, %vector.memcheck981 ], [ 0, %.lr.ph.i.i.preheader ], [ %rdx.select997, %middle.block995 ] ; 2 uses
  %xtraiter1101 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod1102.not = icmp eq i64 %xtraiter1101, 0
  br i1 %lcmp.mod1102.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader1039
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i.i.ph
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !227 ; 4 uses
  %i.ca = add i8 %i.bz, -65
  %or.cond.i.i.prol = icmp ult i8 %i.ca, 26
  %i.cb = or disjoint i8 %i.bz, 32
  %.sink.i.i.prol = select i1 %or.cond.i.i.prol, i8 %i.cb, i8 %i.bz
  %i.cc = add i8 %i.bz, -58
  %i.cd = icmp ult i8 %i.cc, -10
  %.240.i.i.prol = select i1 %i.cd, i32 %.03844.i.i.ph, i32 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i.ph
  store i8 %.sink.i.i.prol, ptr %i.ce, align 1, !tbaa !227
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader1039
  %.240.i.i.lcssa1040.unr = phi i32 [ poison, %.lr.ph.i.i.preheader1039 ], [ %.240.i.i.prol, %.lr.ph.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader1039 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.03844.i.i.unr = phi i32 [ %.03844.i.i.ph, %.lr.ph.i.i.preheader1039 ], [ %.240.i.i.prol, %.lr.ph.i.i.prol ]
  %i.cf = add nsw i64 %wide.trip.count.i.i, -1
  %i.cg = icmp eq i64 %indvars.iv.i.i.ph, %i.cf
  br i1 %i.cg, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.03844.i.i = phi i32 [ %.240.i.i.1, %.lr.ph.i.i ], [ %.03844.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !227 ; 4 uses
  %i.cj = add i8 %i.ci, -65
  %or.cond.i.i = icmp ult i8 %i.cj, 26
  %i.ck = or disjoint i8 %i.ci, 32
  %.sink.i.i = select i1 %or.cond.i.i, i8 %i.ck, i8 %i.ci
  %i.cl = add i8 %i.ci, -58
  %i.cm = icmp ult i8 %i.cl, -10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i
  store i8 %.sink.i.i, ptr %i.cn, align 1, !tbaa !227
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.i.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !227 ; 4 uses
  %i.cq = add i8 %i.cp, -65
  %or.cond.i.i.1 = icmp ult i8 %i.cq, 26
  %i.cr = or disjoint i8 %i.cp, 32
  %.sink.i.i.1 = select i1 %or.cond.i.i.1, i8 %i.cr, i8 %i.cp
  %i.cs = add i8 %i.cp, -58
  %i.ct = icmp ult i8 %i.cs, -10
  %i.cu = select i1 %i.ct, i1 %i.cm, i1 false
  %.240.i.i.1 = select i1 %i.cu, i32 %.03844.i.i, i32 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i.i
  store i8 %.sink.i.i.1, ptr %i.cv, align 1, !tbaa !227
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5478

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block995
  %.240.i.i.lcssa = phi i32 [ %rdx.select997, %middle.block995 ], [ %.240.i.i.lcssa1040.unr, %.lr.ph.i.i.prol.loopexit ], [ %.240.i.i.1, %.lr.ph.i.i ]
  %i.cw = icmp eq i32 %.240.i.i.lcssa, 0
  %i.cx = select i1 %i.cw, i32 10, i32 3          ; 3 uses
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = icmp sgt i32 %i.as, %i.cy
  br i1 %i.cz, label %iter.check1020, label %.loopexit.sink.split.i

iter.check1020:                                   ; preds = %._crit_edge.loopexit.i.i
  %i.da = sub i32 %i.as, %i.cx
  %i.db = zext i32 %i.da to i64                   ; 8 uses
  %i.dc = zext nneg i32 %i.cx to i64              ; 6 uses
  %i.dd = add nuw nsw i64 %i.db, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 %wide.trip.count.i.i)
  %i.de = sub nsw i64 %umax, %i.db                ; 7 uses
  %min.iters.check1004 = icmp ult i64 %i.de, 4
  %i.df = sub nsw i64 %i.dc, %i.db
  %diff.check1002 = icmp ult i64 %i.df, 32
  %or.cond1037 = select i1 %min.iters.check1004, i1 true, i1 %diff.check1002
  br i1 %or.cond1037, label %.lr.ph50.i.i.preheader, label %vector.main.loop.iter.check1005

vector.main.loop.iter.check1005:                  ; preds = %iter.check1020
  %min.iters.check1006 = icmp ult i64 %i.de, 32
  br i1 %min.iters.check1006, label %vec.epilog.ph1024, label %vector.ph1007

vector.ph1007:                                    ; preds = %vector.main.loop.iter.check1005
  %n.mod.vf1008 = and i64 %i.de, 28
  %n.vec1009 = and i64 %i.de, -32                 ; 5 uses
  %i.dg = or disjoint i64 %n.vec1009, %i.dc       ; 2 uses
  %i.dh = add nsw i64 %n.vec1009, %i.db
  %invariant.gep1144 = getelementptr i8, ptr %i.az, i64 %i.db
  %invariant.gep1146 = getelementptr i8, ptr %i.az, i64 %i.dc
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1007
  %index1011 = phi i64 [ 0, %vector.ph1007 ], [ %index.next1014, %vector.body1010 ] ; 3 uses
  %gep1145 = getelementptr i8, ptr %invariant.gep1144, i64 %index1011 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %gep1145, i64 16
  %wide.load1012 = load <16 x i8>, ptr %gep1145, align 1, !tbaa !227
  %wide.load1013 = load <16 x i8>, ptr %i.di, align 1, !tbaa !227
  %gep1147 = getelementptr i8, ptr %invariant.gep1146, i64 %index1011 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %gep1147, i64 16
  store <16 x i8> %wide.load1012, ptr %gep1147, align 1, !tbaa !227
  store <16 x i8> %wide.load1013, ptr %i.dj, align 1, !tbaa !227
  %index.next1014 = add nuw i64 %index1011, 32    ; 2 uses
  %i.dk = icmp eq i64 %index.next1014, %n.vec1009
  br i1 %i.dk, label %middle.block1015, label %vector.body1010, !llvm.loop !5479

middle.block1015:                                 ; preds = %vector.body1010
  %cmp.n1016 = icmp eq i64 %i.de, %n.vec1009
  br i1 %cmp.n1016, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check1022

vec.epilog.iter.check1022:                        ; preds = %middle.block1015
  %min.epilog.iters.check1023 = icmp eq i64 %n.mod.vf1008, 0
  br i1 %min.epilog.iters.check1023, label %.lr.ph50.i.i.preheader, label %vec.epilog.ph1024, !prof !3271

vec.epilog.ph1024:                                ; preds = %vector.main.loop.iter.check1005, %vec.epilog.iter.check1022
  %vec.epilog.resume.val1017 = phi i64 [ %n.vec1009, %vec.epilog.iter.check1022 ], [ 0, %vector.main.loop.iter.check1005 ]
  %n.vec1026 = and i64 %i.de, -4                  ; 4 uses
  %i.dl = add nsw i64 %n.vec1026, %i.dc           ; 2 uses
  %i.dm = add nsw i64 %n.vec1026, %i.db
  %invariant.gep1148 = getelementptr i8, ptr %i.az, i64 %i.db
  %invariant.gep1150 = getelementptr i8, ptr %i.az, i64 %i.dc
  br label %vec.epilog.vector.body1027

vec.epilog.vector.body1027:                       ; preds = %vec.epilog.vector.body1027, %vec.epilog.ph1024
  %index1028 = phi i64 [ %vec.epilog.resume.val1017, %vec.epilog.ph1024 ], [ %index.next1030, %vec.epilog.vector.body1027 ] ; 3 uses
  %gep1149 = getelementptr i8, ptr %invariant.gep1148, i64 %index1028
  %wide.load1029 = load <4 x i8>, ptr %gep1149, align 1, !tbaa !227
  %gep1151 = getelementptr i8, ptr %invariant.gep1150, i64 %index1028
  store <4 x i8> %wide.load1029, ptr %gep1151, align 1, !tbaa !227
  %index.next1030 = add nuw i64 %index1028, 4     ; 2 uses
  %i.dn = icmp eq i64 %index.next1030, %n.vec1026
  br i1 %i.dn, label %vec.epilog.middle.block1031, label %vec.epilog.vector.body1027, !llvm.loop !5480

vec.epilog.middle.block1031:                      ; preds = %vec.epilog.vector.body1027
  %cmp.n1032 = icmp eq i64 %i.de, %n.vec1026
  br i1 %cmp.n1032, label %.loopexit.loopexit.i.i, label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %iter.check1020, %vec.epilog.iter.check1022, %vec.epilog.middle.block1031
  %indvars.iv57.i.i.ph = phi i64 [ %i.dc, %iter.check1020 ], [ %i.dg, %vec.epilog.iter.check1022 ], [ %i.dl, %vec.epilog.middle.block1031 ]
  %indvars.iv55.i.i.ph = phi i64 [ %i.db, %iter.check1020 ], [ %i.dh, %vec.epilog.iter.check1022 ], [ %i.dm, %vec.epilog.middle.block1031 ]
  br label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph50.i.i.preheader, %.lr.ph50.i.i
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %.lr.ph50.i.i ], [ %indvars.iv57.i.i.ph, %.lr.ph50.i.i.preheader ] ; 2 uses
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %.lr.ph50.i.i ], [ %indvars.iv55.i.i.ph, %.lr.ph50.i.i.preheader ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv55.i.i
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !227
  %i.dq = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv57.i.i
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !227
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %i.dr = icmp samesign ult i64 %indvars.iv.next56.i.i, %wide.trip.count.i.i
  br i1 %i.dr, label %.lr.ph50.i.i, label %.loopexit.loopexit.i.i, !llvm.loop !5481

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph50.i.i, %vec.epilog.middle.block1031, %middle.block1015
  %indvars.iv.next58.i.i.lcssa = phi i64 [ %i.dl, %vec.epilog.middle.block1031 ], [ %i.dg, %middle.block1015 ], [ %indvars.iv.next58.i.i, %.lr.ph50.i.i ]
  %i.ds = trunc nuw i64 %indvars.iv.next58.i.i.lcssa to i32
  br label %.loopexit.sink.split.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.k
  %indvars.iv786.i = phi i64 [ %indvars.iv.next787.i, %bb.k ], [ 22, %bb.h ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %bb.h ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !227 ; 4 uses
  %i.dv = add i8 %i.du, -65
  %or.cond4.i = icmp ult i8 %i.dv, 26
  br i1 %or.cond4.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.dw = or disjoint i8 %i.du, 32
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.dx = add i8 %i.du, -97
  %or.cond7.i = icmp ult i8 %i.dx, 26
  br i1 %or.cond7.i, label %bb.k, label %.lr.ph.i111.i.preheader

.lr.ph.i111.i.preheader:                          ; preds = %bb.j
  %min.iters.check = icmp ult i32 %i.as, 8
  br i1 %min.iters.check, label %.lr.ph.i111.i.preheader1094, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i111.i.preheader
  %i.dy = add i64 %i.bb, %i.e
  %i.dz = sub i64 %i.ba, %i.dy
  %diff.check = icmp ult i64 %i.dz, 8
  br i1 %diff.check, label %.lr.ph.i111.i.preheader1094, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 24       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %vec.phi954 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.en, %vector.body ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %wide.load = load <4 x i8>, ptr %i.ea, align 1, !tbaa !227 ; 3 uses
  %wide.load955 = load <4 x i8>, ptr %i.eb, align 1, !tbaa !227 ; 3 uses
  %i.ec = add <4 x i8> %wide.load, splat (i8 -65)
  %i.ed = add <4 x i8> %wide.load955, splat (i8 -65)
  %i.ee = icmp ult <4 x i8> %i.ec, splat (i8 26)
  %i.ef = icmp ult <4 x i8> %i.ed, splat (i8 26)
  %8 = select <4 x i1> %i.ee, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.eg = or disjoint <4 x i8> %wide.load, %8
  %i.eh = select <4 x i1> %i.ef, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %9 = or disjoint <4 x i8> %wide.load955, %i.eh
  %i.ei = add <4 x i8> %wide.load, splat (i8 -48)
  %i.ej = icmp ult <4 x i8> %i.ei, splat (i8 10)
  %i.ek = add <4 x i8> %wide.load955, splat (i8 -48)
  %i.el = icmp ult <4 x i8> %i.ek, splat (i8 10)
  %i.em = or <4 x i1> %vec.phi, %i.ej             ; 2 uses
  %i.en = or <4 x i1> %vec.phi954, %i.el          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.az, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store <4 x i8> %i.eg, ptr %i.eo, align 1, !tbaa !227
  store <4 x i8> %9, ptr %i.ep, align 1, !tbaa !227
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !5482

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.en, %i.em
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.er = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not1035 = icmp ne i4 %i.er, 0
  %rdx.select = zext i1 %.not1035 to i32          ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i98.i, label %.lr.ph.i111.i.preheader1094

.lr.ph.i111.i.preheader1094:                      ; preds = %vector.memcheck, %.lr.ph.i111.i.preheader, %middle.block
  %indvars.iv.i112.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i111.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.03844.i113.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i111.i.preheader ], [ %rdx.select, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i111.i.prol.loopexit, label %.lr.ph.i111.i.prol

.lr.ph.i111.i.prol:                               ; preds = %.lr.ph.i111.i.preheader1094
  %i.es = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i112.i.ph
  %i.et = load i8, ptr %i.es, align 1, !tbaa !227 ; 4 uses
  %i.eu = add i8 %i.et, -65
  %or.cond.i114.i.prol = icmp ult i8 %i.eu, 26
  %i.ev = or disjoint i8 %i.et, 32
  %.sink.i115.i.prol = select i1 %or.cond.i114.i.prol, i8 %i.ev, i8 %i.et
  %i.ew = add i8 %i.et, -58
  %i.ex = icmp ult i8 %i.ew, -10
  %.240.i116.i.prol = select i1 %i.ex, i32 %.03844.i113.i.ph, i32 1 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i112.i.ph
  store i8 %.sink.i115.i.prol, ptr %i.ey, align 1, !tbaa !227
  %indvars.iv.next.i117.i.prol = or disjoint i64 %indvars.iv.i112.i.ph, 1
  br label %.lr.ph.i111.i.prol.loopexit

.lr.ph.i111.i.prol.loopexit:                      ; preds = %.lr.ph.i111.i.prol, %.lr.ph.i111.i.preheader1094
  %.240.i116.i.lcssa1095.unr = phi i32 [ poison, %.lr.ph.i111.i.preheader1094 ], [ %.240.i116.i.prol, %.lr.ph.i111.i.prol ]
  %indvars.iv.i112.i.unr = phi i64 [ %indvars.iv.i112.i.ph, %.lr.ph.i111.i.preheader1094 ], [ %indvars.iv.next.i117.i.prol, %.lr.ph.i111.i.prol ]
  %.03844.i113.i.unr = phi i32 [ %.03844.i113.i.ph, %.lr.ph.i111.i.preheader1094 ], [ %.240.i116.i.prol, %.lr.ph.i111.i.prol ]
  %i.ez = add nsw i64 %wide.trip.count.i.i, -1
  %i.fa = icmp eq i64 %indvars.iv.i112.i.ph, %i.ez
  br i1 %i.fa, label %._crit_edge.i98.i, label %.lr.ph.i111.i

.lr.ph.i111.i:                                    ; preds = %.lr.ph.i111.i.prol.loopexit, %.lr.ph.i111.i
  %indvars.iv.i112.i = phi i64 [ %indvars.iv.next.i117.i.1, %.lr.ph.i111.i ], [ %indvars.iv.i112.i.unr, %.lr.ph.i111.i.prol.loopexit ] ; 4 uses
  %.03844.i113.i = phi i32 [ %.240.i116.i.1, %.lr.ph.i111.i ], [ %.03844.i113.i.unr, %.lr.ph.i111.i.prol.loopexit ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i112.i
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !227 ; 4 uses
  %i.fd = add i8 %i.fc, -65
  %or.cond.i114.i = icmp ult i8 %i.fd, 26
  %i.fe = or disjoint i8 %i.fc, 32
  %.sink.i115.i = select i1 %or.cond.i114.i, i8 %i.fe, i8 %i.fc
  %i.ff = add i8 %i.fc, -58
  %i.fg = icmp ult i8 %i.ff, -10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i112.i
  store i8 %.sink.i115.i, ptr %i.fh, align 1, !tbaa !227
  %indvars.iv.next.i117.i = add nuw nsw i64 %indvars.iv.i112.i, 1 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.i117.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !227 ; 4 uses
  %i.fk = add i8 %i.fj, -65
  %or.cond.i114.i.1 = icmp ult i8 %i.fk, 26
  %i.fl = or disjoint i8 %i.fj, 32
  %.sink.i115.i.1 = select i1 %or.cond.i114.i.1, i8 %i.fl, i8 %i.fj
  %i.fm = add i8 %i.fj, -58
  %i.fn = icmp ult i8 %i.fm, -10
  %i.fo = select i1 %i.fn, i1 %i.fg, i1 false
  %.240.i116.i.1 = select i1 %i.fo, i32 %.03844.i113.i, i32 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i117.i
  store i8 %.sink.i115.i.1, ptr %i.fp, align 1, !tbaa !227
  %indvars.iv.next.i117.i.1 = add nuw nsw i64 %indvars.iv.i112.i, 2 ; 2 uses
  %exitcond.not.i118.i.1 = icmp eq i64 %indvars.iv.next.i117.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i118.i.1, label %._crit_edge.i98.i, label %.lr.ph.i111.i, !llvm.loop !5483

._crit_edge.i98.i:                                ; preds = %.lr.ph.i111.i.prol.loopexit, %.lr.ph.i111.i, %middle.block
  %.240.i116.i.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.240.i116.i.lcssa1095.unr, %.lr.ph.i111.i.prol.loopexit ], [ %.240.i116.i.1, %.lr.ph.i111.i ]
  %i.fq = icmp eq i32 %.240.i116.i.lcssa, 0
  %i.fr = select i1 %i.fq, i32 10, i32 3          ; 3 uses
  %i.fs = shl nuw nsw i32 %i.fr, 1
  %i.ft = icmp sgt i32 %i.as, %i.fs
  br i1 %i.ft, label %iter.check, label %.loopexit.sink.split.i

iter.check:                                       ; preds = %._crit_edge.i98.i
  %i.fu = sub nsw i32 %i.as, %i.fr
  %i.fv = sext i32 %i.fu to i64                   ; 6 uses
  %i.fw = zext nneg i32 %i.fr to i64              ; 9 uses
  %i.fx = zext nneg i32 %i.as to i64              ; 2 uses
  %reass.sub = sub nsw i64 %i.fx, %i.fw
  %i.fy = add nsw i64 %reass.sub, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.fy, i64 %wide.trip.count.i.i)
  %i.fz = add nuw i64 %smax, %i.fw
  %i.ga = sub i64 %i.fz, %i.fx                    ; 7 uses
  %min.iters.check959 = icmp ult i64 %i.ga, 4
  br i1 %min.iters.check959, label %.lr.ph50.i103.i.preheader, label %vector.memcheck956

vector.memcheck956:                               ; preds = %iter.check
  %i.gb = shl nuw nsw i64 %i.fw, 1
  %i.gc = zext nneg i32 %i.as to i64
  %i.gd = sub nsw i64 %i.gb, %i.gc
  %diff.check957 = icmp ult i64 %i.gd, 32
  br i1 %diff.check957, label %.lr.ph50.i103.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck956
  %min.iters.check960 = icmp ult i64 %i.ga, 32
  br i1 %min.iters.check960, label %vec.epilog.ph, label %vector.ph961

vector.ph961:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf962 = and i64 %i.ga, 28
  %n.vec963 = and i64 %i.ga, -32                  ; 5 uses
  %i.ge = or disjoint i64 %n.vec963, %i.fw        ; 2 uses
  %i.gf = add i64 %n.vec963, %i.fv
  %invariant.gep = getelementptr i8, ptr %i.az, i64 %i.fv
  %invariant.gep1138 = getelementptr i8, ptr %i.az, i64 %i.fw
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %vector.ph961
  %index965 = phi i64 [ 0, %vector.ph961 ], [ %index.next968, %vector.body964 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index965 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load966 = load <16 x i8>, ptr %gep, align 1, !tbaa !227
  %wide.load967 = load <16 x i8>, ptr %i.gg, align 1, !tbaa !227
  %gep1139 = getelementptr i8, ptr %invariant.gep1138, i64 %index965 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %gep1139, i64 16
  store <16 x i8> %wide.load966, ptr %gep1139, align 1, !tbaa !227
  store <16 x i8> %wide.load967, ptr %i.gh, align 1, !tbaa !227
  %index.next968 = add nuw i64 %index965, 32      ; 2 uses
  %i.gi = icmp eq i64 %index.next968, %n.vec963
  br i1 %i.gi, label %middle.block969, label %vector.body964, !llvm.loop !5484

middle.block969:                                  ; preds = %vector.body964
  %cmp.n970 = icmp eq i64 %i.ga, %n.vec963
  br i1 %cmp.n970, label %.loopexit.loopexit.i108.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block969
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf962, 0
  br i1 %min.epilog.iters.check, label %.lr.ph50.i103.i.preheader, label %vec.epilog.ph, !prof !3271

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec963, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec974 = and i64 %i.ga, -4                   ; 4 uses
  %i.gj = add i64 %n.vec974, %i.fw                ; 2 uses
  %i.gk = add i64 %n.vec974, %i.fv
  %invariant.gep1140 = getelementptr i8, ptr %i.az, i64 %i.fv
  %invariant.gep1142 = getelementptr i8, ptr %i.az, i64 %i.fw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index975 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next977, %vec.epilog.vector.body ] ; 3 uses
  %gep1141 = getelementptr i8, ptr %invariant.gep1140, i64 %index975
  %wide.load976 = load <4 x i8>, ptr %gep1141, align 1, !tbaa !227
  %gep1143 = getelementptr i8, ptr %invariant.gep1142, i64 %index975
  store <4 x i8> %wide.load976, ptr %gep1143, align 1, !tbaa !227
  %index.next977 = add nuw i64 %index975, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next977, %n.vec974
  br i1 %i.gl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5485

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n978 = icmp eq i64 %i.ga, %n.vec974
  br i1 %cmp.n978, label %.loopexit.loopexit.i108.i, label %.lr.ph50.i103.i.preheader

.lr.ph50.i103.i.preheader:                        ; preds = %vector.memcheck956, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i104.i.ph = phi i64 [ %i.fw, %iter.check ], [ %i.fw, %vector.memcheck956 ], [ %i.ge, %vec.epilog.iter.check ], [ %i.gj, %vec.epilog.middle.block ]
  %indvars.iv55.i105.i.ph = phi i64 [ %i.fv, %iter.check ], [ %i.fv, %vector.memcheck956 ], [ %i.gf, %vec.epilog.iter.check ], [ %i.gk, %vec.epilog.middle.block ]
  br label %.lr.ph50.i103.i

.lr.ph50.i103.i:                                  ; preds = %.lr.ph50.i103.i.preheader, %.lr.ph50.i103.i
  %indvars.iv57.i104.i = phi i64 [ %indvars.iv.next58.i107.i, %.lr.ph50.i103.i ], [ %indvars.iv57.i104.i.ph, %.lr.ph50.i103.i.preheader ] ; 2 uses
  %indvars.iv55.i105.i = phi i64 [ %indvars.iv.next56.i106.i, %.lr.ph50.i103.i ], [ %indvars.iv55.i105.i.ph, %.lr.ph50.i103.i.preheader ] ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.az, i64 %indvars.iv55.i105.i
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !227
  %i.go = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv57.i104.i
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !227
  %indvars.iv.next56.i106.i = add nsw i64 %indvars.iv55.i105.i, 1 ; 2 uses
  %indvars.iv.next58.i107.i = add nuw nsw i64 %indvars.iv57.i104.i, 1 ; 2 uses
  %i.gp = icmp slt i64 %indvars.iv.next56.i106.i, %wide.trip.count.i.i
  br i1 %i.gp, label %.lr.ph50.i103.i, label %.loopexit.loopexit.i108.i, !llvm.loop !5486

.loopexit.loopexit.i108.i:                        ; preds = %.lr.ph50.i103.i, %vec.epilog.middle.block, %middle.block969
  %indvars.iv.next58.i107.i.lcssa = phi i64 [ %i.gj, %vec.epilog.middle.block ], [ %i.ge, %middle.block969 ], [ %indvars.iv.next58.i107.i, %.lr.ph50.i103.i ]
  %i.gq = trunc nuw i64 %indvars.iv.next58.i107.i.lcssa to i32
  br label %.loopexit.sink.split.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.i = phi i8 [ %i.dw, %bb.i ], [ %i.du, %bb.j ]
  %i.gr = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv786.i
  store i8 %.sink.i, ptr %i.gr, align 1, !tbaa !227
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %indvars.iv.next787.i = add nsw i64 %indvars.iv786.i, -1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5487

._crit_edge.i:                                    ; preds = %bb.k
  %sext914.i = shl i64 %indvars.iv.next787.i, 32
  %i.gs = ashr exact i64 %sext914.i, 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.gt = getelementptr i8, ptr %i.a, i64 %i.gs   ; 4 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 1      ; 4 uses
  store ptr %i.gu, ptr %i.b, align 8, !tbaa !251
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !227 ; 2 uses
  %i.gw = icmp eq i8 %i.gv, 115
end_hunk_0
begin_hunk_1_@fts5AsciiDelete:bb.a
bb.f:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.o(ptr noundef nonnull %0) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.a, %sqlite3_mutex_enter.exit.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 102, 101) i32 @fts5AsciiTokenize(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 %2, ptr noundef readonly captures(none) %3, i32 noundef %4, ptr noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.preheader94.preheader, label %sqlite3_free.exit75.thread

.preheader94.preheader:                           ; preds = %bb.a
  %i.d = zext nneg i32 %4 to i64                  ; 2 uses
  %i.e = add nsw i32 %4, -1
  br label %.preheader94

.preheader94:                                     ; preds = %.preheader94.preheader, %.loopexit
  %.054106 = phi ptr [ %.155, %.loopexit ], [ %i.b, %.preheader94.preheader ] ; 6 uses
  %.057105 = phi i32 [ %.158, %.loopexit ], [ 64, %.preheader94.preheader ] ; 2 uses
  %.060104 = phi i32 [ %i.cj, %.loopexit ], [ 0, %.preheader94.preheader ] ; 2 uses
  %i.f = sext i32 %.060104 to i64
  %i.g = add nsw i32 %.060104, 1
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 %i.g)
  br label %bb.b

bb.b:                                             ; preds = %.preheader94, %bb.d
  %indvars.iv = phi i64 [ %i.f, %.preheader94 ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %3, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !227   ; 2 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.c, label %.critedge.split.loop.exit130

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i8 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !227
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %.critedge.split.loop.exit132

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.o = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.o, label %bb.b, label %.critedge, !llvm.loop !7808

.critedge.split.loop.exit130:                     ; preds = %bb.b
  %i.p = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge.split.loop.exit132:                     ; preds = %bb.c
  %i.q = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.split.loop.exit132, %.critedge.split.loop.exit130
  %.161.lcssa = phi i32 [ %i.p, %.critedge.split.loop.exit130 ], [ %i.q, %.critedge.split.loop.exit132 ], [ %smax, %bb.d ] ; 7 uses
  %i.r = icmp eq i32 %.161.lcssa, %4
  br i1 %i.r, label %.thread, label %.preheader

.preheader:                                       ; preds = %.critedge
  %.05397 = add nsw i32 %.161.lcssa, 1            ; 3 uses
  %i.s = icmp slt i32 %.05397, %4
  br i1 %i.s, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.t = sext i32 %.05397 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge4
  %indvars.iv112 = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next113, %.critedge4 ] ; 4 uses
  %.053.in98 = phi i32 [ %.161.lcssa, %.lr.ph.preheader ], [ %.pre-phi, %.critedge4 ]
  %i.u = getelementptr inbounds i8, ptr %3, i64 %indvars.iv112
  %i.v = load i8, ptr %i.u, align 1, !tbaa !227   ; 2 uses
  %.not = icmp sgt i8 %i.v, -1
  br i1 %.not, label %bb.e, label %.lr.ph..critedge4_crit_edge

.lr.ph..critedge4_crit_edge:                      ; preds = %.lr.ph
  %.pre = trunc nsw i64 %indvars.iv112 to i32
  br label %.critedge4

bb.e:                                             ; preds = %.lr.ph
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !227
  %.not67 = icmp eq i8 %i.y, 0
  %i.z = trunc nsw i64 %indvars.iv112 to i32      ; 2 uses
  br i1 %.not67, label %.critedge2, label %.critedge4

.critedge4:                                       ; preds = %.lr.ph..critedge4_crit_edge, %bb.e
  %.pre-phi = phi i32 [ %.pre, %.lr.ph..critedge4_crit_edge ], [ %i.z, %bb.e ]
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, %i.d
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !7809

.critedge2:                                       ; preds = %bb.e, %.critedge4, %.preheader
  %.053.in.lcssa = phi i32 [ %.161.lcssa, %.preheader ], [ %i.e, %.critedge4 ], [ %.053.in98, %bb.e ]
  %.053.lcssa = phi i32 [ %.05397, %.preheader ], [ %4, %.critedge4 ], [ %i.z, %bb.e ] ; 2 uses
  %i.aa = sub nsw i32 %.053.lcssa, %.161.lcssa    ; 8 uses
  %i.ab = icmp sgt i32 %i.aa, %.057105
  br i1 %i.ab, label %bb.f, label %bb.m

bb.f:                                             ; preds = %.critedge2
  %.not68 = icmp eq ptr %.054106, %i.b
  br i1 %.not68, label %sqlite3_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.ae(ptr noundef nonnull %i.ad) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.i, %bb.h
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.ag = call i32 %i.af(ptr noundef nonnull %.054106) #59, !inline_history !269
  %i.ah = sext i32 %i.ag to i64
  %i.ai = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.aj = sub nsw i64 %i.ai, %i.ah
  store i64 %i.aj, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.al = add nsw i64 %i.ak, -1
  store i64 %i.al, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.am(ptr noundef nonnull %.054106) #59, !inline_history !270
  %i.an = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.an, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.ao(ptr noundef nonnull %i.an) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.k:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.ap(ptr noundef nonnull %.054106) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.k, %bb.j, %sqlite3_mutex_enter.exit.i, %bb.f
  %i.aq = call i32 @sqlite3_initialize(), !inline_history !396
  %.not.i70 = icmp eq i32 %i.aq, 0
  br i1 %.not.i70, label %sqlite3_malloc64.exit, label %sqlite3_free.exit75.thread

sqlite3_malloc64.exit:                            ; preds = %sqlite3_free.exit
  %i.ar = zext nneg i32 %i.aa to i64
  %i.as = shl nuw nsw i64 %i.ar, 1
  %i.at = call fastcc ptr @sqlite3Malloc(i64 noundef %i.as), !inline_history !396 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %sqlite3_free.exit75.thread, label %bb.l

bb.l:                                             ; preds = %sqlite3_malloc64.exit
  %i.av = shl nuw nsw i32 %i.aa, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge2
  %.158 = phi i32 [ %i.av, %bb.l ], [ %.057105, %.critedge2 ]
  %.155 = phi ptr [ %i.at, %bb.l ], [ %.054106, %.critedge2 ] ; 9 uses
  %.155137 = ptrtoaddr ptr %.155 to i64
  %i.aw = sext i32 %.161.lcssa to i64             ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %3, i64 %i.aw ; 5 uses
  %i.ay = icmp sgt i32 %i.aa, 0
  br i1 %i.ay, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.m
  %wide.trip.count.i = zext nneg i32 %i.aa to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.aa, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = add i64 %i.a, %i.aw
  %i.ba = sub i64 %.155137, %i.az
  %diff.check = icmp ult i64 %i.ba, 32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check138 = icmp ult i32 %i.aa, 32
  br i1 %min.iters.check138, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i, 24
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <16 x i8>, ptr %i.bb, align 1, !tbaa !227 ; 2 uses
  %wide.load139 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !227 ; 2 uses
  %i.bd = add <16 x i8> %wide.load, splat (i8 -65)
  %i.be = add <16 x i8> %wide.load139, splat (i8 -65)
  %i.bf = icmp ult <16 x i8> %i.bd, splat (i8 26)
  %i.bg = icmp ult <16 x i8> %i.be, splat (i8 26)
  %6 = select <16 x i1> %i.bf, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.bh = or disjoint <16 x i8> %wide.load, %6
  %i.bi = select <16 x i1> %i.bg, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %7 = or disjoint <16 x i8> %wide.load139, %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %.155, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <16 x i8> %i.bh, ptr %i.bj, align 1, !tbaa !227
  store <16 x i8> %7, ptr %i.bk, align 1, !tbaa !227
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !7810

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !345

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec141 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next144, %vec.epilog.vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index142
  %wide.load143 = load <8 x i8>, ptr %i.bm, align 1, !tbaa !227 ; 2 uses
  %i.bn = add <8 x i8> %wide.load143, splat (i8 -65)
  %i.bo = icmp ult <8 x i8> %i.bn, splat (i8 26)
  %8 = select <8 x i1> %i.bo, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %9 = or disjoint <8 x i8> %wide.load143, %8
  %i.bp = getelementptr inbounds nuw i8, ptr %.155, i64 %index142
  store <8 x i8> %9, ptr %i.bp, align 1, !tbaa !227
  %index.next144 = add nuw i64 %index142, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next144, %n.vec141
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7811

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n145 = icmp eq i64 %n.vec141, %wide.trip.count.i
  br i1 %cmp.n145, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec141, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.i.ph
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !227 ; 3 uses
  %i.bt = add i8 %i.bs, -65
  %or.cond.i.prol = icmp ult i8 %i.bt, 26
  %i.bu = or disjoint i8 %i.bs, 32
  %spec.select.i.prol = select i1 %or.cond.i.prol, i8 %i.bu, i8 %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr %.155, i64 %indvars.iv.i.ph
  store i8 %spec.select.i.prol, ptr %i.bv, align 1, !tbaa !227
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bw = add nsw i64 %wide.trip.count.i, -1
  %i.bx = icmp eq i64 %indvars.iv.i.ph, %i.bw
  br i1 %i.bx, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !227 ; 3 uses
  %i.ca = add i8 %i.bz, -65
  %or.cond.i = icmp ult i8 %i.ca, 26
  %i.cb = or disjoint i8 %i.bz, 32
  %spec.select.i = select i1 %or.cond.i, i8 %i.cb, i8 %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %.155, i64 %indvars.iv.i
  store i8 %spec.select.i, ptr %i.cc, align 1, !tbaa !227
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !227 ; 3 uses
  %i.cf = add i8 %i.ce, -65
  %or.cond.i.1 = icmp ult i8 %i.cf, 26
  %i.cg = or disjoint i8 %i.ce, 32
  %spec.select.i.1 = select i1 %or.cond.i.1, i8 %i.cg, i8 %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %.155, i64 %indvars.iv.next.i
  store i8 %spec.select.i.1, ptr %i.ch, align 1, !tbaa !227
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.i, !llvm.loop !7812

.loopexit:                                        ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.m
  %i.ci = call i32 %5(ptr noundef %1, i32 noundef 0, ptr noundef %.155, i32 noundef %i.aa, i32 noundef %.161.lcssa, i32 noundef %.053.lcssa) #59 ; 2 uses
  %i.cj = add nsw i32 %.053.in.lcssa, 2           ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %4
  %i.cl = icmp eq i32 %i.ci, 0
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %i.cm, label %.preheader94, label %.thread

.thread:                                          ; preds = %.loopexit, %.critedge
  %.054.lcssa.ph = phi ptr [ %.155, %.loopexit ], [ %.054106, %.critedge ] ; 4 uses
  %.2.ph = phi i32 [ %i.ci, %.loopexit ], [ 0, %.critedge ]
  %i.cn = freeze i32 %.2.ph                       ; 2 uses
  %.not69 = icmp eq ptr %.054.lcssa.ph, %i.b
  br i1 %.not69, label %sqlite3_free.exit75, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.co = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i71 = icmp eq i32 %i.co, 0
  br i1 %.not.i71, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i72, label %sqlite3_mutex_enter.exit.i73, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.cq(ptr noundef nonnull %i.cp) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i73

sqlite3_mutex_enter.exit.i73:                     ; preds = %bb.p, %bb.o
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.cs = call i32 %i.cr(ptr noundef nonnull %.054.lcssa.ph) #59, !inline_history !269
  %i.ct = sext i32 %i.cs to i64
  %i.cu = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.cv = sub nsw i64 %i.cu, %i.ct
  store i64 %i.cv, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.cw = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.cx = add nsw i64 %i.cw, -1
  store i64 %i.cx, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.cy(ptr noundef nonnull %.054.lcssa.ph) #59, !inline_history !270
  %i.cz = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i74 = icmp eq ptr %i.cz, null
  br i1 %.not.i4.i74, label %sqlite3_free.exit75, label %bb.q

bb.q:                                             ; preds = %sqlite3_mutex_enter.exit.i73
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.da(ptr noundef nonnull %i.cz) #59, !inline_history !271
  br label %sqlite3_free.exit75

bb.r:                                             ; preds = %bb.n
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.db(ptr noundef nonnull %.054.lcssa.ph) #59, !inline_history !270
  br label %sqlite3_free.exit75

sqlite3_free.exit75:                              ; preds = %bb.r, %bb.q, %sqlite3_mutex_enter.exit.i73, %.thread
  %i.dc = icmp eq i32 %i.cn, 101
  %spec.select = select i1 %i.dc, i32 0, i32 %i.cn
  br label %sqlite3_free.exit75.thread

sqlite3_free.exit75.thread:                       ; preds = %sqlite3_free.exit, %sqlite3_malloc64.exit, %sqlite3_free.exit75, %bb.a
  %i.dd = phi i32 [ 0, %bb.a ], [ %spec.select, %sqlite3_free.exit75 ], [ 7, %sqlite3_malloc64.exit ], [ 7, %sqlite3_free.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  ret i32 %i.dd
}

; Function Attrs: nounwind uwtable
define internal i32 @fts5TriTokenize(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 %2, ptr noundef %3, i32 noundef %4, ptr noundef readonly captures(none) %5) #0 {
.preheader151:
  %i.a = alloca [32 x i8], align 16               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %.not = icmp eq ptr %3, null
  %i.b = sext i32 %4 to i64
  %i.c = getelementptr inbounds i8, ptr %3, i64 %i.b
  %i.d = select i1 %.not, ptr null, ptr %i.c      ; 9 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.f = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %.preheader151, %bb.g
  %.1117 = phi ptr [ %.3119, %bb.g ], [ %3, %.preheader151 ] ; 5 uses
  %i.h = ptrtoint ptr %.1117 to i64               ; 2 uses
  %.not137 = icmp ult ptr %.1117, %i.d
  br i1 %.not137, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.1117, i64 1 ; 4 uses
  %i.j = load i8, ptr %.1117, align 1, !tbaa !227 ; 3 uses
  %i.k = zext i8 %i.j to i32
  %i.l = icmp ugt i8 %i.j, -65
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = zext i8 %i.j to i64
  %i.n = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -192
  %i.p = load i8, ptr %i.o, align 1, !tbaa !227
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = icmp ult ptr %i.i, %i.d
  br i1 %i.r, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.c
  %scevgep = getelementptr i8, ptr %.1117, i64 %i.e
  %i.s = sub i64 0, %i.h
  %scevgep176 = getelementptr i8, ptr %scevgep, i64 %i.s ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.0114157 = phi i32 [ %i.aa, %bb.d ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %.2118156 = phi ptr [ %i.y, %bb.d ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  %i.t = load i8, ptr %.2118156, align 1, !tbaa !227
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = and i32 %i.u, 192
  %i.w = icmp eq i32 %i.v, 128
  br i1 %i.w, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.x = shl i32 %.0114157, 6
  %i.y = getelementptr inbounds nuw i8, ptr %.2118156, i64 1 ; 2 uses
  %i.z = and i32 %i.u, 63
  %i.aa = or disjoint i32 %i.z, %i.x              ; 2 uses
  %exitcond.not = icmp eq ptr %i.y, %scevgep176
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !7813

.critedge:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  %.2118.lcssa = phi ptr [ %i.i, %bb.c ], [ %scevgep176, %bb.d ], [ %.2118156, %.lr.ph ]
  %.0114.lcssa = phi i32 [ %i.q, %bb.c ], [ %i.aa, %bb.d ], [ %.0114157, %.lr.ph ] ; 4 uses
  %i.ab = icmp ult i32 %.0114.lcssa, 128
  %i.ac = and i32 %.0114.lcssa, -2048
  %i.ad = icmp eq i32 %i.ac, 55296
  %or.cond140 = or i1 %i.ab, %i.ad
  %i.ae = and i32 %.0114.lcssa, -2
  %i.af = icmp eq i32 %i.ae, 65534
  %or.cond142 = or i1 %i.af, %or.cond140
  %spec.select = select i1 %or.cond142, i32 65533, i32 %.0114.lcssa
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.b
  %.3119 = phi ptr [ %i.i, %bb.b ], [ %.2118.lcssa, %.critedge ] ; 2 uses
  %.1115 = phi i32 [ %i.k, %bb.b ], [ %spec.select, %.critedge ] ; 2 uses
  %i.ag = load i32, ptr %0, align 4, !tbaa !6634
end_hunk_1
