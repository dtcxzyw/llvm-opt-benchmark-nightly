inline.NumInlined: 35
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK6icu_7813CollationData18getGroupForPrimaryEj:bb.a
.critedge.2:                                      ; preds = %.critedge.1
  %i.ao = getelementptr [2 x i8], ptr %i.u, i64 %i.v
  %i.ap = getelementptr i8, ptr %i.ao, i64 6
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = zext i16 %i.aq to i64
  %i.as = icmp eq i64 %indvars.iv, %i.ar
  br i1 %i.as, label %.loopexit, label %.critedge.3

.critedge.3:                                      ; preds = %.critedge.2
  %i.at = getelementptr [2 x i8], ptr %i.u, i64 %i.v
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = zext i16 %i.av to i64
  %i.ax = icmp eq i64 %indvars.iv, %i.aw
  br i1 %i.ax, label %.loopexit, label %.critedge.4

.critedge.4:                                      ; preds = %.critedge.3
  %i.ay = getelementptr [2 x i8], ptr %i.u, i64 %i.v
  %i.az = getelementptr i8, ptr %i.ay, i64 10
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = zext i16 %i.ba to i64
  %i.bc = icmp eq i64 %indvars.iv, %i.bb
  br i1 %i.bc, label %.loopexit, label %.critedge.5

.critedge.5:                                      ; preds = %.critedge.4
  %i.bd = getelementptr [2 x i8], ptr %i.u, i64 %i.v
  %i.be = getelementptr i8, ptr %i.bd, i64 12
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = zext i16 %i.bf to i64
  %i.bh = icmp eq i64 %indvars.iv, %i.bg
  br i1 %i.bh, label %.loopexit, label %.critedge.6

.critedge.6:                                      ; preds = %.critedge.5
  %i.bi = getelementptr [2 x i8], ptr %i.u, i64 %i.v
  %i.bj = getelementptr i8, ptr %i.bi, i64 14
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = zext i16 %i.bk to i64
  %i.bm = icmp eq i64 %indvars.iv, %i.bl
  %spec.select = select i1 %i.bm, i32 4103, i32 -1
  br label %.loopexit

.loopexit.loopexit36:                             ; preds = %bb.c
  %i.bn = trunc nuw nsw i64 %indvars.iv40 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.6, %.critedge.preheader, %.critedge, %.critedge.1, %.critedge.2, %.critedge.3, %.critedge.4, %.critedge.5, %.loopexit.loopexit36, %bb.a, %bb.b
  %.3 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %spec.select, %.critedge.6 ], [ %i.bn, %.loopexit.loopexit36 ], [ 4096, %.critedge.preheader ], [ 4097, %.critedge ], [ 4098, %.critedge.1 ], [ 4099, %.critedge.2 ], [ 4100, %.critedge.3 ], [ 4101, %.critedge.4 ], [ 4102, %.critedge.5 ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK6icu_7813CollationData20getEquivalentScriptsEiPiiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(140) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = icmp slt i32 %1, 0
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 5 uses
  %i.f = icmp slt i32 %1, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.i
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.k = and i32 %1, 2147483640
  %or.cond.i = icmp eq i32 %i.k, 4096
  br i1 %or.cond.i, label %bb.e, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i32 %1, -4096
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = add nsw i32 %i.l, %i.e
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.p
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit

_ZNK6icu_7813CollationData14getScriptIndexEi.exit: ; preds = %bb.c, %bb.e
  %.0.shrunk.i.in = phi ptr [ %i.q, %bb.e ], [ %i.j, %bb.c ]
  %.0.shrunk.i = load i16, ptr %.0.shrunk.i.in, align 2 ; 2 uses
  %i.r = icmp eq i16 %.0.shrunk.i, 0
  br i1 %i.r, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit
  %i.s = icmp samesign ugt i32 %1, 4095
  br i1 %i.s, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i32 %3, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %1, ptr %2, align 4
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

bb.i:                                             ; preds = %bb.g
  store i32 15, ptr %4, align 4
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

._crit_edge:                                      ; preds = %bb.n, %.preheader
  %.023.lcssa = phi i32 [ 0, %.preheader ], [ %.1, %bb.n ] ; 3 uses
  %i.w = icmp sgt i32 %.023.lcssa, %3
  br i1 %i.w, label %bb.o, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

bb.j:                                             ; preds = %.lr.ph, %bb.n
  %.pre34 = phi i32 [ %i.e, %.lr.ph ], [ %.pre35, %bb.n ] ; 2 uses
  %i.x = phi i32 [ %i.e, %.lr.ph ], [ %i.ah, %bb.n ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %.02330 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.n ] ; 4 uses
  %i.y = load ptr, ptr %i.u, align 8
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = icmp eq i16 %.0.shrunk.i, %i.aa
  br i1 %i.ab, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp slt i32 %.02330, %3
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = sext i32 %.02330 to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ad
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.af, ptr %i.ae, align 4
  %.pre.pre = load i32, ptr %i.d, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre = phi i32 [ %.pre.pre, %bb.l ], [ %.pre34, %bb.k ] ; 2 uses
  %i.ag = add nsw i32 %.02330, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m
  %.pre35 = phi i32 [ %.pre, %bb.m ], [ %.pre34, %bb.j ]
  %i.ah = phi i32 [ %.pre, %bb.m ], [ %i.x, %bb.j ] ; 2 uses
  %.1 = phi i32 [ %i.ag, %bb.m ], [ %.02330, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.j, label %._crit_edge, !llvm.loop !9

bb.o:                                             ; preds = %._crit_edge
  store i32 15, ptr %4, align 4
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread: ; preds = %bb.d, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit, %bb.i, %bb.h, %bb.o, %._crit_edge, %bb.a
  %.125 = phi i32 [ 0, %bb.a ], [ 1, %bb.h ], [ 0, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit ], [ 1, %bb.i ], [ %.023.lcssa, %bb.o ], [ %.023.lcssa, %._crit_edge ], [ 0, %bb.d ]
  ret i32 %.125
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7813CollationData17makeReorderRangesEPKiiRNS_9UVector32ER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(140) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZNK6icu_7813CollationData17makeReorderRangesEPKiiaRNS_9UVector32ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %1, i32 noundef %2, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7813CollationData17makeReorderRangesEPKiiaRNS_9UVector32ER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(140) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 17 uses
  %i.b = load i32, ptr %5, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.bf

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_789UVector3217removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #8
  switch i32 %2, label %bb.d [
    i32 0, label %bb.bf
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 4
  %i.e = icmp eq i32 %i.d, 103
  br i1 %i.e, label %bb.bf, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8              ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.i = load i32, ptr %i.h, align 4              ; 5 uses
  %i.j = sext i32 %i.i to i64                     ; 8 uses
  %i.k = getelementptr [2 x i8], ptr %i.g, i64 %i.j ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 28
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %.not157 = icmp eq i16 %i.m, 0
  br i1 %.not157, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  store i8 -1, ptr %i.o, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr i8, ptr %i.k, i64 30
  %i.q = load i16, ptr %i.p, align 2              ; 2 uses
  %.not158 = icmp eq i16 %i.q, 0
  br i1 %.not158, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  store i8 -1, ptr %i.s, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = load i16, ptr %i.v, align 2
  %i.x = zext i16 %i.w to i32                     ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8              ; 4 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [2 x i8], ptr %i.u, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -2
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i32                   ; 4 uses
  %i.af = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.af, label %.lr.ph.preheader, label %.preheader202

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader339, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi329 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <4 x i32>, ptr %i.ag, align 4 ; 2 uses
  %wide.load330 = load <4 x i32>, ptr %i.ah, align 4 ; 2 uses
  %i.ai = and <4 x i32> %wide.load, splat (i32 -8)
  %i.aj = and <4 x i32> %wide.load330, splat (i32 -8)
  %i.ak = icmp eq <4 x i32> %i.ai, splat (i32 4096)
  %i.al = icmp eq <4 x i32> %i.aj, splat (i32 4096)
  %i.am = add nsw <4 x i32> %wide.load, splat (i32 -4096)
  %i.an = add nsw <4 x i32> %wide.load330, splat (i32 -4096)
  %i.ao = shl nuw nsw <4 x i32> splat (i32 1), %i.am
  %i.ap = shl nuw nsw <4 x i32> splat (i32 1), %i.an
  %i.aq = select <4 x i1> %i.ak, <4 x i32> %i.ao, <4 x i32> zeroinitializer
  %i.ar = select <4 x i1> %i.al, <4 x i32> %i.ap, <4 x i32> zeroinitializer
  %i.as = or <4 x i32> %i.aq, %vec.phi            ; 2 uses
  %i.at = or <4 x i32> %i.ar, %vec.phi329         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.at, %i.as
  %i.av = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader202, label %.lr.ph.preheader339

.lr.ph.preheader339:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0129217.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph

.preheader202:                                    ; preds = %.lr.ph, %middle.block, %bb.h
  %.0129.lcssa = phi i32 [ 0, %bb.h ], [ %i.av, %middle.block ], [ %.1130, %.lr.ph ] ; 9 uses
  %i.aw = load i16, ptr %i.k, align 2             ; 2 uses
  %.not167 = icmp ne i16 %i.aw, 0
  %i.ax = and i32 %.0129.lcssa, 1
  %i.ay = icmp eq i32 %i.ax, 0
  %or.cond308 = select i1 %.not167, i1 %i.ay, i1 false
  br i1 %or.cond308, label %bb.i, label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader339, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader339 ] ; 2 uses
  %.0129217 = phi i32 [ %.1130, %.lr.ph ], [ %.0129217.ph, %.lr.ph.preheader339 ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bb = and i32 %i.ba, -8
  %or.cond = icmp eq i32 %i.bb, 4096
  %i.bc = add nsw i32 %i.ba, -4096
  %i.bd = shl nuw nsw i32 1, %i.bc
  %i.be = select i1 %or.cond, i32 %i.bd, i32 0
  %.1130 = or i32 %i.be, %.0129217                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader202, label %.lr.ph, !llvm.loop !13

bb.i:                                             ; preds = %.preheader202
  %i.bf = zext i16 %i.aw to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.bf ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = zext i16 %i.bh to i32                   ; 2 uses
  %i.bj = and i32 %i.bi, 255
  %i.bk = and i32 %i.x, 255
  %i.bl = icmp samesign ult i32 %i.bj, %i.bk
  %i.bm = add nuw nsw i32 %i.x, 256
  %spec.select.i = select i1 %i.bl, i32 %i.bm, i32 %i.x ; 2 uses
  %i.bn = lshr i32 %spec.select.i, 8
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = getelementptr i8, ptr %i.bg, i64 2
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = zext i16 %i.br to i32                   ; 2 uses
  %i.bt = and i32 %spec.select.i, 65280
  %i.bu = and i32 %i.bs, 65280
  %i.bv = and i32 %i.bi, 65280
  %i.bw = sub nsw i32 %i.bu, %i.bv
  %i.bx = and i32 %i.bs, 255
  %i.by = or disjoint i32 %i.bw, %i.bx
  %i.bz = add nsw i32 %i.by, %i.bt
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader202
  %.1120 = phi i32 [ %i.bz, %bb.i ], [ %i.x, %.preheader202 ] ; 4 uses
  %i.ca = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.cb = getelementptr i8, ptr %i.ca, i64 2
  %i.cc = load i16, ptr %i.cb, align 2            ; 2 uses
  %.not167.1 = icmp ne i16 %i.cc, 0
  %i.cd = and i32 %.0129.lcssa, 2
  %i.ce = icmp eq i32 %i.cd, 0
  %or.cond310 = select i1 %.not167.1, i1 %i.ce, i1 false
  br i1 %or.cond310, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cf = zext i16 %i.cc to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.cf ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = zext i16 %i.ch to i32                   ; 2 uses
  %i.cj = and i32 %i.ci, 255
  %i.ck = and i32 %.1120, 255
  %i.cl = icmp samesign ult i32 %i.cj, %i.ck
  %i.cm = add nsw i32 %.1120, 256
  %spec.select.i.1 = select i1 %i.cl, i32 %i.cm, i32 %.1120 ; 2 uses
  %i.cn = lshr i32 %spec.select.i.1, 8
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf
  store i8 %i.co, ptr %i.cp, align 1
  %i.cq = getelementptr i8, ptr %i.cg, i64 2
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  %i.ct = and i32 %spec.select.i.1, 65280
  %i.cu = and i32 %i.cs, 65280
  %i.cv = and i32 %i.ci, 65280
  %i.cw = sub nsw i32 %i.cu, %i.cv
  %i.cx = and i32 %i.cs, 255
  %i.cy = or disjoint i32 %i.cw, %i.cx
  %i.cz = add nsw i32 %i.cy, %i.ct
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1120.1 = phi i32 [ %i.cz, %bb.k ], [ %.1120, %bb.j ] ; 4 uses
  %i.da = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %i.dc = load i16, ptr %i.db, align 2            ; 2 uses
  %.not167.2 = icmp ne i16 %i.dc, 0
  %i.dd = and i32 %.0129.lcssa, 4
  %i.de = icmp eq i32 %i.dd, 0
  %or.cond312 = select i1 %.not167.2, i1 %i.de, i1 false
  br i1 %or.cond312, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.df = zext i16 %i.dc to i64                   ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.df ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = zext i16 %i.dh to i32                   ; 2 uses
  %i.dj = and i32 %i.di, 255
  %i.dk = and i32 %.1120.1, 255
  %i.dl = icmp samesign ult i32 %i.dj, %i.dk
  %i.dm = add nsw i32 %.1120.1, 256
  %spec.select.i.2 = select i1 %i.dl, i32 %i.dm, i32 %.1120.1 ; 2 uses
  %i.dn = lshr i32 %spec.select.i.2, 8
  %i.do = trunc i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  store i8 %i.do, ptr %i.dp, align 1
  %i.dq = getelementptr i8, ptr %i.dg, i64 2
  %i.dr = load i16, ptr %i.dq, align 2
  %i.ds = zext i16 %i.dr to i32                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6icu_7813CollationData17makeReorderRangesEPKiiaRNS_9UVector32ER10UErrorCode:bb.a
  %i.ej = and i32 %i.ei, 255
  %i.ek = and i32 %.1120.2, 255
  %i.el = icmp samesign ult i32 %i.ej, %i.ek
  %i.em = add nsw i32 %.1120.2, 256
  %spec.select.i.3 = select i1 %i.el, i32 %i.em, i32 %.1120.2 ; 2 uses
  %i.en = lshr i32 %spec.select.i.3, 8
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ef
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = getelementptr i8, ptr %i.eg, i64 2
  %i.er = load i16, ptr %i.eq, align 2
  %i.es = zext i16 %i.er to i32                   ; 2 uses
  %i.et = and i32 %spec.select.i.3, 65280
  %i.eu = and i32 %i.es, 65280
  %i.ev = and i32 %i.ei, 65280
  %i.ew = sub nsw i32 %i.eu, %i.ev
  %i.ex = and i32 %i.es, 255
  %i.ey = or disjoint i32 %i.ew, %i.ex
  %i.ez = add nsw i32 %i.ey, %i.et
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1120.3 = phi i32 [ %i.ez, %bb.o ], [ %.1120.2, %bb.n ] ; 4 uses
  %i.fa = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  %i.fc = load i16, ptr %i.fb, align 2            ; 2 uses
  %.not167.4 = icmp ne i16 %i.fc, 0
  %i.fd = and i32 %.0129.lcssa, 16
  %i.fe = icmp eq i32 %i.fd, 0
  %or.cond316 = select i1 %.not167.4, i1 %i.fe, i1 false
  br i1 %or.cond316, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ff = zext i16 %i.fc to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ff ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2
  %i.fi = zext i16 %i.fh to i32                   ; 2 uses
  %i.fj = and i32 %i.fi, 255
  %i.fk = and i32 %.1120.3, 255
  %i.fl = icmp samesign ult i32 %i.fj, %i.fk
  %i.fm = add nsw i32 %.1120.3, 256
  %spec.select.i.4 = select i1 %i.fl, i32 %i.fm, i32 %.1120.3 ; 2 uses
  %i.fn = lshr i32 %spec.select.i.4, 8
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ff
  store i8 %i.fo, ptr %i.fp, align 1
  %i.fq = getelementptr i8, ptr %i.fg, i64 2
  %i.fr = load i16, ptr %i.fq, align 2
  %i.fs = zext i16 %i.fr to i32                   ; 2 uses
  %i.ft = and i32 %spec.select.i.4, 65280
  %i.fu = and i32 %i.fs, 65280
  %i.fv = and i32 %i.fi, 65280
  %i.fw = sub nsw i32 %i.fu, %i.fv
  %i.fx = and i32 %i.fs, 255
  %i.fy = or disjoint i32 %i.fw, %i.fx
  %i.fz = add nsw i32 %i.fy, %i.ft
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1120.4 = phi i32 [ %i.fz, %bb.q ], [ %.1120.3, %bb.p ] ; 4 uses
  %i.ga = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.gb = getelementptr i8, ptr %i.ga, i64 10
  %i.gc = load i16, ptr %i.gb, align 2            ; 2 uses
  %.not167.5 = icmp ne i16 %i.gc, 0
  %i.gd = and i32 %.0129.lcssa, 32
  %i.ge = icmp eq i32 %i.gd, 0
  %or.cond318 = select i1 %.not167.5, i1 %i.ge, i1 false
  br i1 %or.cond318, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gf = zext i16 %i.gc to i64                   ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.gf ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 2
  %i.gi = zext i16 %i.gh to i32                   ; 2 uses
  %i.gj = and i32 %i.gi, 255
  %i.gk = and i32 %.1120.4, 255
  %i.gl = icmp samesign ult i32 %i.gj, %i.gk
  %i.gm = add nsw i32 %.1120.4, 256
  %spec.select.i.5 = select i1 %i.gl, i32 %i.gm, i32 %.1120.4 ; 2 uses
  %i.gn = lshr i32 %spec.select.i.5, 8
  %i.go = trunc i32 %i.gn to i8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gf
  store i8 %i.go, ptr %i.gp, align 1
  %i.gq = getelementptr i8, ptr %i.gg, i64 2
  %i.gr = load i16, ptr %i.gq, align 2
  %i.gs = zext i16 %i.gr to i32                   ; 2 uses
  %i.gt = and i32 %spec.select.i.5, 65280
  %i.gu = and i32 %i.gs, 65280
  %i.gv = and i32 %i.gi, 65280
  %i.gw = sub nsw i32 %i.gu, %i.gv
  %i.gx = and i32 %i.gs, 255
  %i.gy = or disjoint i32 %i.gw, %i.gx
  %i.gz = add nsw i32 %i.gy, %i.gt
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1120.5 = phi i32 [ %i.gz, %bb.s ], [ %.1120.4, %bb.r ] ; 4 uses
  %i.ha = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.hb = getelementptr i8, ptr %i.ha, i64 12
  %i.hc = load i16, ptr %i.hb, align 2            ; 2 uses
  %.not167.6 = icmp ne i16 %i.hc, 0
  %i.hd = and i32 %.0129.lcssa, 64
  %i.he = icmp eq i32 %i.hd, 0
  %or.cond320 = select i1 %.not167.6, i1 %i.he, i1 false
  br i1 %or.cond320, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hf = zext i16 %i.hc to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.hf ; 2 uses
  %i.hh = load i16, ptr %i.hg, align 2
  %i.hi = zext i16 %i.hh to i32                   ; 2 uses
  %i.hj = and i32 %i.hi, 255
  %i.hk = and i32 %.1120.5, 255
  %i.hl = icmp samesign ult i32 %i.hj, %i.hk
  %i.hm = add nsw i32 %.1120.5, 256
  %spec.select.i.6 = select i1 %i.hl, i32 %i.hm, i32 %.1120.5 ; 2 uses
  %i.hn = lshr i32 %spec.select.i.6, 8
  %i.ho = trunc i32 %i.hn to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hf
  store i8 %i.ho, ptr %i.hp, align 1
  %i.hq = getelementptr i8, ptr %i.hg, i64 2
  %i.hr = load i16, ptr %i.hq, align 2
  %i.hs = zext i16 %i.hr to i32                   ; 2 uses
  %i.ht = and i32 %spec.select.i.6, 65280
  %i.hu = and i32 %i.hs, 65280
  %i.hv = and i32 %i.hi, 65280
  %i.hw = sub nsw i32 %i.hu, %i.hv
  %i.hx = and i32 %i.hs, 255
  %i.hy = or disjoint i32 %i.hw, %i.hx
  %i.hz = add nsw i32 %i.hy, %i.ht
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1120.6 = phi i32 [ %i.hz, %bb.u ], [ %.1120.5, %bb.t ] ; 5 uses
  %i.ia = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.ib = getelementptr i8, ptr %i.ia, i64 14
  %i.ic = load i16, ptr %i.ib, align 2            ; 2 uses
  %.not167.7 = icmp eq i16 %i.ic, 0
  br i1 %.not167.7, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.id = and i32 %.0129.lcssa, 128
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.x, label %.thread295

bb.x:                                             ; preds = %bb.w
  %i.if = zext i16 %i.ic to i64                   ; 2 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.if ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = zext i16 %i.ih to i32                   ; 2 uses
  %i.ij = and i32 %i.ii, 255
  %i.ik = and i32 %.1120.6, 255
  %i.il = icmp samesign ult i32 %i.ij, %i.ik
  %i.im = add nsw i32 %.1120.6, 256
  %spec.select.i.7 = select i1 %i.il, i32 %i.im, i32 %.1120.6 ; 2 uses
  %i.in = lshr i32 %spec.select.i.7, 8
  %i.io = trunc i32 %i.in to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.if
  store i8 %i.io, ptr %i.ip, align 1
  %i.iq = getelementptr i8, ptr %i.ig, i64 2
  %i.ir = load i16, ptr %i.iq, align 2
  %i.is = zext i16 %i.ir to i32                   ; 2 uses
  %i.it = and i32 %spec.select.i.7, 65280
  %i.iu = and i32 %i.is, 65280
  %i.iv = and i32 %i.ii, 65280
  %i.iw = sub nsw i32 %i.iu, %i.iv
  %i.ix = and i32 %i.is, 255
  %i.iy = or disjoint i32 %i.iw, %i.ix
  %i.iz = add nsw i32 %i.iy, %i.it
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.1120.7 = phi i32 [ %i.iz, %bb.x ], [ %.1120.6, %bb.v ] ; 3 uses
  %i.ja = icmp eq i32 %.0129.lcssa, 0
  br i1 %i.ja, label %bb.z, label %.thread295

bb.z:                                             ; preds = %bb.y
  %i.jb = load i32, ptr %1, align 4
  %i.jc = icmp ne i32 %i.jb, 25
  %i.jd = icmp ne i8 %3, 0
  %or.cond4 = or i1 %i.jd, %i.jc
  br i1 %or.cond4, label %.thread295, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.je = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  %i.jf = load i16, ptr %i.je, align 2
  %i.jg = zext i16 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2
  %i.jj = zext i16 %i.ji to i32                   ; 2 uses
  %i.jk = sub nsw i32 %i.jj, %.1120.7
  %i.jl = and i32 %i.jk, 65280
  br label %.thread295

.thread295:                                       ; preds = %bb.w, %bb.aa, %bb.z, %bb.y
  %.0143 = phi i32 [ 0, %bb.z ], [ %i.jl, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.w ]
  %.2121 = phi i32 [ %.1120.7, %bb.z ], [ %i.jj, %bb.aa ], [ %.1120.7, %bb.y ], [ %.1120.6, %bb.w ] ; 2 uses
  br i1 %i.af, label %.lr.ph224.a, label %.thread182

.lr.ph224.a:                                      ; preds = %.thread295
  %wide.trip.count261 = zext nneg i32 %2 to i64
  %invariant.op = add i32 %i.i, -4096
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph224.a, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread
  %indvars.iv261 = phi i64 [ 0, %.lr.ph224.a ], [ %indvars.iv.next262, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %.3122222 = phi i32 [ %.2121, %.lr.ph224.a ], [ %.5, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 8 uses
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 4 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv261
  %i.jn = load i32, ptr %i.jm, align 4            ; 6 uses
  switch i32 %i.jn, label %bb.am [
    i32 103, label %.preheader200
    i32 -1, label %bb.al
  ]

.preheader200:                                    ; preds = %bb.ab
  %i.jo = trunc nuw nsw i64 %indvars.iv.next262 to i32
  %i.jp = icmp sgt i32 %2, %i.jo
  br i1 %i.jp, label %.lr.ph229.a, label %.thread182

.lr.ph229.a:                                      ; preds = %.preheader200
  %i.jq = zext nneg i32 %2 to i64
  %sext = shl i64 %indvars.iv.next262, 32
  %i.jr = ashr exact i64 %sext, 32
  %invariant.op304 = add i32 %i.i, -4096
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph229.a, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread
  %indvars.iv266.a = phi i64 [ %i.jq, %.lr.ph229.a ], [ %indvars.iv.next267.a, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ]
  %.1125227 = phi i32 [ %i.ae, %.lr.ph229.a ], [ %.2126, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ] ; 6 uses
  %indvars.iv.next267.a = add nsw i64 %indvars.iv266.a, -1 ; 3 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next267.a
  %i.jt = load i32, ptr %i.js, align 4            ; 6 uses
  switch i32 %i.jt, label %bb.ae [
    i32 -1, label %bb.ad
    i32 103, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  store i32 1, ptr %5, align 4
  br label %.thread182.thread

bb.ae:                                            ; preds = %bb.ac
  %i.ju = icmp slt i32 %i.jt, 0
  br i1 %i.ju, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jv = icmp slt i32 %i.jt, %i.i
  br i1 %i.jv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jw = zext nneg i32 %i.jt to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit

bb.ah:                                            ; preds = %bb.af
  %i.jx = and i32 %i.jt, 2147483640
  %or.cond.i = icmp eq i32 %i.jx, 4096
  br i1 %or.cond.i, label %bb.ai, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %.reass232 = add i32 %i.jt, %invariant.op304
  %i.jy = sext i32 %.reass232 to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit

_ZNK6icu_7813CollationData14getScriptIndexEi.exit: ; preds = %bb.ag, %bb.ai
  %.pn = phi i64 [ %i.jy, %bb.ai ], [ %i.jw, %bb.ag ]
  %.0.shrunk.i.in = getelementptr inbounds [2 x i8], ptr %i.g, i64 %.pn
  %.0.shrunk.i = load i16, ptr %.0.shrunk.i.in, align 2 ; 2 uses
  %i.jz = icmp eq i16 %.0.shrunk.i, 0
  br i1 %i.jz, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, label %bb.aj, !llvm.loop !14

bb.aj:                                            ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit
  %i.ka = zext i16 %.0.shrunk.i to i64            ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ka ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 1
  %.not160 = icmp eq i8 %i.kc, 0
  br i1 %.not160, label %bb.ak, label %.thread

.thread:                                          ; preds = %bb.aj
  store i32 1, ptr %5, align 4
  br label %.thread182.thread

bb.ak:                                            ; preds = %bb.aj
  %i.kd = getelementptr [2 x i8], ptr %i.u, i64 %i.ka ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 2
  %i.kf = load i16, ptr %i.ke, align 2
  %i.kg = zext i16 %i.kf to i32                   ; 2 uses
  %i.kh = and i32 %i.kg, 255
  %i.ki = and i32 %.1125227, 255
  %i.kj = icmp samesign ugt i32 %i.kh, %i.ki
  %i.kk = add i32 %.1125227, 65280
  %spec.select.i169 = select i1 %i.kj, i32 %i.kk, i32 %.1125227
  %i.kl = load i16, ptr %i.kd, align 2
  %i.km = zext i16 %i.kl to i32                   ; 2 uses
  %i.kn = and i32 %spec.select.i169, 65280
  %i.ko = and i32 %i.kg, 65280
  %i.kp = and i32 %i.km, 65280
  %.neg.i = sub nsw i32 %i.kp, %i.ko
  %i.kq = add nsw i32 %i.kn, %.neg.i              ; 2 uses
  %i.kr = and i32 %i.km, 255
  %i.ks = or disjoint i32 %i.kq, %i.kr
  %i.kt = lshr exact i32 %i.kq, 8
  %i.ku = trunc i32 %i.kt to i8
  store i8 %i.ku, ptr %i.kb, align 1
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread

_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread: ; preds = %bb.ae, %bb.ah, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit, %bb.ak
  %.2126 = phi i32 [ %i.ks, %bb.ak ], [ %.1125227, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit ], [ %.1125227, %bb.ah ], [ %.1125227, %bb.ae ] ; 2 uses
  %i.kv = icmp slt i64 %i.jr, %indvars.iv.next267.a
  br i1 %i.kv, label %bb.ac, label %.thread182

bb.al:                                            ; preds = %bb.ab
  store i32 1, ptr %5, align 4
  br label %.thread182.thread

bb.am:                                            ; preds = %bb.ab
  %i.kw = icmp slt i32 %i.jn, 0
  br i1 %i.kw, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kx = icmp slt i32 %i.jn, %i.i
  br i1 %i.kx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ky = zext nneg i32 %i.jn to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173

bb.ap:                                            ; preds = %bb.an
  %i.kz = and i32 %i.jn, 2147483640
  %or.cond.i170 = icmp eq i32 %i.kz, 4096
  br i1 %or.cond.i170, label %bb.aq, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread

bb.aq:                                            ; preds = %bb.ap
  %.reass = add i32 %i.jn, %invariant.op
  %i.la = sext i32 %.reass to i64
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173

_ZNK6icu_7813CollationData14getScriptIndexEi.exit173: ; preds = %bb.ao, %bb.aq
  %.pn248 = phi i64 [ %i.la, %bb.aq ], [ %i.ky, %bb.ao ]
  %.0.shrunk.i171.in = getelementptr inbounds [2 x i8], ptr %i.g, i64 %.pn248
  %.0.shrunk.i171 = load i16, ptr %.0.shrunk.i171.in, align 2 ; 2 uses
  %i.lb = icmp eq i16 %.0.shrunk.i171, 0
  br i1 %i.lb, label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, label %bb.ar, !llvm.loop !15

bb.ar:                                            ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173
  %i.lc = zext i16 %.0.shrunk.i171 to i64         ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lc ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1
  %.not159 = icmp eq i8 %i.le, 0
  br i1 %.not159, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 1, ptr %5, align 4
  br label %.thread182.thread

bb.at:                                            ; preds = %bb.ar
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.lc ; 2 uses
  %i.lg = load i16, ptr %i.lf, align 2
  %i.lh = zext i16 %i.lg to i32                   ; 2 uses
  %i.li = and i32 %i.lh, 255
  %i.lj = and i32 %.3122222, 255
  %i.lk = icmp samesign ult i32 %i.li, %i.lj
  %i.ll = add nsw i32 %.3122222, 256
  %spec.select.i174 = select i1 %i.lk, i32 %i.ll, i32 %.3122222 ; 2 uses
  %i.lm = lshr i32 %spec.select.i174, 8
  %i.ln = trunc i32 %i.lm to i8
  store i8 %i.ln, ptr %i.ld, align 1
  %i.lo = getelementptr i8, ptr %i.lf, i64 2
  %i.lp = load i16, ptr %i.lo, align 2
  %i.lq = zext i16 %i.lp to i32                   ; 2 uses
  %i.lr = and i32 %spec.select.i174, 65280
  %i.ls = and i32 %i.lq, 65280
  %i.lt = and i32 %i.lh, 65280
  %i.lu = sub nsw i32 %i.ls, %i.lt
  %i.lv = and i32 %i.lq, 255
  %i.lw = or disjoint i32 %i.lu, %i.lv
  %i.lx = add nsw i32 %i.lw, %i.lr
  br label %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread

_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread: ; preds = %bb.am, %bb.ap, %bb.at, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173
  %.5 = phi i32 [ %.3122222, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173 ], [ %i.lx, %bb.at ], [ %.3122222, %bb.ap ], [ %.3122222, %bb.am ] ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count261
  br i1 %exitcond265.not, label %.thread182, label %bb.ab

.thread182:                                       ; preds = %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread, %.thread295, %.preheader200
  %.3122212 = phi i32 [ %.3122222, %.preheader200 ], [ %.3122222, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ %.2121, %.thread295 ], [ %.5, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %.not208 = phi i1 [ true, %.preheader200 ], [ true, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ false, %.thread295 ], [ false, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ]
  %.4128 = phi i32 [ %i.ae, %.preheader200 ], [ %.2126, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit.thread ], [ %i.ae, %.thread295 ], [ %i.ae, %_ZNK6icu_7813CollationData14getScriptIndexEi.exit173.thread ] ; 2 uses
  %i.ly = icmp sgt i32 %i.z, 2
  br i1 %i.ly, label %.lr.ph235, label %._crit_edge

.lr.ph235:                                        ; preds = %.thread182
  %i.lz = add nsw i32 %i.z, -1
  %wide.trip.count272 = zext nneg i32 %i.lz to i64
  br label %bb.au

._crit_edge:                                      ; preds = %bb.aw, %.thread182
  %.7.lcssa = phi i32 [ %.3122212, %.thread182 ], [ %.9, %bb.aw ] ; 2 uses
  %i.ma = icmp sgt i32 %.7.lcssa, %.4128
  br i1 %i.ma, label %bb.ax, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.ba

bb.au:                                            ; preds = %.lr.ph235, %bb.aw
  %indvars.iv269 = phi i64 [ 1, %.lr.ph235 ], [ %indvars.iv.next270, %bb.aw ] ; 3 uses
  %.7234 = phi i32 [ %.3122212, %.lr.ph235 ], [ %.9, %bb.aw ] ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv269 ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1
  %.not165 = icmp eq i8 %i.mf, 0
  br i1 %.not165, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv269 ; 2 uses
  %i.mh = load i16, ptr %i.mg, align 2
  %i.mi = zext i16 %i.mh to i32                   ; 3 uses
  %i.mj = tail call i32 @llvm.smax.i32(i32 %.7234, i32 %i.mi)
  %.8 = select i1 %.not208, i32 %.7234, i32 %i.mj ; 3 uses
  %i.mk = and i32 %i.mi, 255
  %i.ml = and i32 %.8, 255
  %i.mm = icmp samesign ult i32 %i.mk, %i.ml
  %i.mn = add nsw i32 %.8, 256
  %spec.select.i175 = select i1 %i.mm, i32 %i.mn, i32 %.8 ; 2 uses
  %i.mo = lshr i32 %spec.select.i175, 8
  %i.mp = trunc i32 %i.mo to i8
  store i8 %i.mp, ptr %i.me, align 1
  %i.mq = getelementptr i8, ptr %i.mg, i64 2
  %i.mr = load i16, ptr %i.mq, align 2
  %i.ms = zext i16 %i.mr to i32                   ; 2 uses
  %i.mt = and i32 %spec.select.i175, 65280
  %i.mu = and i32 %i.ms, 65280
  %i.mv = and i32 %i.mi, 65280
  %i.mw = sub nsw i32 %i.mu, %i.mv
  %i.mx = and i32 %i.ms, 255
  %i.my = or disjoint i32 %i.mw, %i.mx
  %i.mz = add nsw i32 %i.my, %i.mt
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %.9 = phi i32 [ %i.mz, %bb.av ], [ %.7234, %bb.au ] ; 2 uses
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count272
  br i1 %exitcond273.not, label %._crit_edge, label %bb.au, !llvm.loop !16

bb.ax:                                            ; preds = %._crit_edge
  %i.na = sub nsw i32 %.7.lcssa, %.0143
  %.not164 = icmp sgt i32 %i.na, %.4128
  br i1 %.not164, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZNK6icu_7813CollationData17makeReorderRangesEPKiiaRNS_9UVector32ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %1, i32 noundef %2, i8 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %.thread182.thread

bb.az:                                            ; preds = %bb.ax
  store i32 15, ptr %5, align 4
  br label %.thread182.thread

bb.ba:                                            ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, %.preheader
  %i.nb = phi i32 [ %i.ok, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit ], [ %i.z, %.preheader ]
  %.0117 = phi i32 [ %.3, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit ], [ 0, %.preheader ] ; 6 uses
  %.0113 = phi i32 [ %i.om, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit ], [ 1, %.preheader ] ; 3 uses
  %i.nc = add nsw i32 %i.nb, -1                   ; 4 uses
  %i.nd = icmp slt i32 %.0113, %i.nc
  br i1 %i.nd, label %.lr.ph240, label %.thread188

.lr.ph240:                                        ; preds = %bb.ba
  %i.ne = sext i32 %.0113 to i64
  %i.nf = sext i32 %i.nc to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph240, %bb.bd
  %indvars.iv274 = phi i64 [ %i.ne, %.lr.ph240 ], [ %indvars.iv.next275, %bb.bd ] ; 4 uses
  %.0110238 = phi i32 [ %.0117, %.lr.ph240 ], [ %.1111, %bb.bd ]
  %i.ng = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv274
  %i.nh = load i8, ptr %i.ng, align 1             ; 2 uses
  %i.ni = icmp eq i8 %i.nh, -1
  br i1 %i.ni, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nj = zext i8 %i.nh to i32
  %6 = load ptr, ptr %i.t, align 8
  %i.nk = getelementptr inbounds [2 x i8], ptr %6, i64 %indvars.iv274
  %i.nl = load i16, ptr %i.nk, align 2
  %i.nm = lshr i16 %i.nl, 8
  %i.nn = zext nneg i16 %i.nm to i32
  %i.no = sub nsw i32 %i.nj, %i.nn                ; 2 uses
  %.not161 = icmp eq i32 %i.no, %.0117
  br i1 %.not161, label %bb.bd, label %.thread188.loopexit.split.loop.exit

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %.1111 = phi i32 [ %.0110238, %bb.bb ], [ %.0117, %bb.bc ] ; 2 uses
  %indvars.iv.next275 = add nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next275, %i.nf
  br i1 %exitcond277.not, label %.thread188, label %bb.bb

.thread188.loopexit.split.loop.exit:              ; preds = %bb.bc
  %i.np = trunc nsw i64 %indvars.iv274 to i32
  br label %.thread188

.thread188:                                       ; preds = %bb.bd, %.thread188.loopexit.split.loop.exit, %bb.ba
  %.1114.lcssa = phi i32 [ %.0113, %bb.ba ], [ %i.np, %.thread188.loopexit.split.loop.exit ], [ %i.nc, %bb.bd ] ; 4 uses
  %.3 = phi i32 [ %.0117, %bb.ba ], [ %i.no, %.thread188.loopexit.split.loop.exit ], [ %.1111, %bb.bd ]
  %.not162 = icmp ne i32 %.0117, 0
  %i.nq = icmp slt i32 %.1114.lcssa, %i.nc
  %or.cond197 = or i1 %.not162, %i.nq
  br i1 %or.cond197, label %bb.be, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit

bb.be:                                            ; preds = %.thread188
  %i.nr = load ptr, ptr %i.t, align 8
  %i.ns = sext i32 %.1114.lcssa to i64
  %i.nt = getelementptr inbounds [2 x i8], ptr %i.nr, i64 %i.ns
  %i.nu = load i16, ptr %i.nt, align 2
  %i.nv = zext i16 %i.nu to i32
  %i.nw = shl nuw i32 %i.nv, 16
  %i.nx = and i32 %.0117, 65535
  %i.ny = or disjoint i32 %i.nw, %i.nx
  %i.nz = load i32, ptr %i.mb, align 8            ; 4 uses
  %i.oa = icmp slt i32 %i.nz, -1
  %i.ob = load i32, ptr %i.mc, align 4
  %.not.i.i = icmp sle i32 %i.ob, %i.nz
  %or.cond.i.i = select i1 %i.oa, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i: ; preds = %bb.be
  %i.oc = add nsw i32 %i.nz, 1
  %i.od = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.oc, ptr noundef nonnull align 4 dereferenceable(4) %5) #8
  %.not.i = icmp eq i8 %i.od, 0
  br i1 %.not.i, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i
  %.pre.i = load i32, ptr %i.mb, align 8
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i, %bb.be
  %i.oe = phi i32 [ %.pre.i, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i ], [ %i.nz, %bb.be ]
  %i.of = load ptr, ptr %i.md, align 8
  %i.og = sext i32 %i.oe to i64
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.og
  store i32 %i.ny, ptr %i.oh, align 4
  %i.oi = load i32, ptr %i.mb, align 8
  %i.oj = add nsw i32 %i.oi, 1
  store i32 %i.oj, ptr %i.mb, align 8
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit: ; preds = %.thread188, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i
  %i.ok = load i32, ptr %i.y, align 8             ; 2 uses
  %i.ol = add nsw i32 %i.ok, -1
  %.not163 = icmp eq i32 %.1114.lcssa, %i.ol
  %i.om = add nsw i32 %.1114.lcssa, 1
  br i1 %.not163, label %.thread182.thread, label %bb.ba, !llvm.loop !17

.thread182.thread:                                ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, %bb.ad, %.thread, %bb.al, %bb.as, %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.b, %bb.c, %bb.a, %.thread182.thread
  ret void
}

declare void @_ZN6icu_789UVector3217removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK6icu_7813CollationData17addLowScriptRangeEPhii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(140) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %2 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = and i32 %i.f, 255
  %i.h = and i32 %3, 255
  %i.i = icmp samesign ult i32 %i.g, %i.h
  %i.j = add nsw i32 %3, 256
  %spec.select = select i1 %i.i, i32 %i.j, i32 %3 ; 2 uses
  %i.k = lshr i32 %spec.select, 8
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.c
  store i8 %i.l, ptr %i.m, align 1
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr [2 x i8], ptr %i.n, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 2
  %i.q = load i16, ptr %i.p, align 2
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = and i32 %spec.select, 65280
  %i.t = and i32 %i.r, 65280
  %i.u = and i32 %i.f, 65280
  %i.v = sub nsw i32 %i.t, %i.u
  %i.w = add nsw i32 %i.v, %i.s
  %i.x = and i32 %i.r, 255
  %i.y = or disjoint i32 %i.w, %i.x
  ret i32 %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK6icu_7813CollationData18addHighScriptRangeEPhii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(140) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr [2 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = and i32 %i.g, 255
  %i.i = and i32 %3, 255
  %i.j = icmp samesign ugt i32 %i.h, %i.i
  %i.k = add i32 %3, 65280
  %spec.select = select i1 %i.j, i32 %i.k, i32 %3
  %i.l = load i16, ptr %i.d, align 2
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = and i32 %spec.select, 65280
  %i.o = and i32 %i.g, 65280
  %i.p = and i32 %i.m, 65280
  %.neg = sub nsw i32 %i.p, %i.o
  %i.q = add nsw i32 %i.n, %.neg                  ; 2 uses
  %i.r = and i32 %i.m, 255
  %i.s = or disjoint i32 %i.q, %i.r
  %i.t = lshr exact i32 %i.q, 8
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.c
  store i8 %i.u, ptr %i.v, align 1
  ret i32 %i.s
}

declare noundef i32 @_ZN6icu_789Collation32getThreeBytePrimaryForOffsetDataEil(i32 noundef, i64 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN6icu_789Collation30unassignedPrimaryFromCodePointEi(i32 noundef) local_unnamed_addr #4

declare noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6, !11, !12}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !6, !12, !11}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
end_hunk_1
