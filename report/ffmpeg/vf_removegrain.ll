Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_removegrain?download=true
inline.NumInlined: 26
inline.NumDeleted: 2
begin_hunk_0_@mode04:bb.a
  %i.aj = icmp slt i32 %.1133.val, %.val145
  br i1 %i.aj, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %.1133165, i64 4 ; 3 uses
  %.not141 = icmp ugt ptr %i.ak, %.0129170
  br i1 %.not141, label %.critedge, label %bb.m, !llvm.loop !68

.critedge:                                        ; preds = %bb.n, %bb.m
  %.1133.lcssa = phi ptr [ %i.ak, %bb.n ], [ %.1133165, %bb.m ] ; 7 uses
  %.not142166 = icmp ugt ptr %.1133.lcssa, %.0129170
  br i1 %.not142166, label %.critedge143, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.o
  %.1130167 = phi ptr [ %i.am, %bb.o ], [ %.0129170, %.critedge ] ; 4 uses
  %.1130.val = load i32, ptr %.1130167, align 4, !tbaa !35 ; 2 uses
  %i.al = icmp sgt i32 %.1130.val, %.val145
  br i1 %i.al, label %bb.o, label %.critedge2

bb.o:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds i8, ptr %.1130167, i64 -4 ; 3 uses
  %.not142 = icmp ugt ptr %.1133.lcssa, %i.am
  br i1 %.not142, label %.critedge143, label %.lr.ph, !llvm.loop !69

.critedge2:                                       ; preds = %.lr.ph
  %i.an = load i32, ptr %.1133.lcssa, align 4, !tbaa !35
  store i32 %i.an, ptr %.1130167, align 4, !tbaa !35
  store i32 %.1130.val, ptr %.1133.lcssa, align 4, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %.1133.lcssa, i64 4
  %i.ap = getelementptr inbounds i8, ptr %.1130167, i64 -4
  br label %.critedge143

.critedge143:                                     ; preds = %bb.o, %.critedge, %.critedge2
  %.2134 = phi ptr [ %i.ao, %.critedge2 ], [ %.1133.lcssa, %.critedge ], [ %.1133.lcssa, %bb.o ] ; 3 uses
  %.2131 = phi ptr [ %i.ap, %.critedge2 ], [ %.0129170, %.critedge ], [ %i.am, %bb.o ] ; 3 uses
  %.not139 = icmp ugt ptr %.2134, %.2131
  br i1 %.not139, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !70

._crit_edge.loopexit:                             ; preds = %.critedge143
  %.pre = load i32, ptr %i.t, align 4, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %i.aq = phi i32 [ %i.ag, %bb.l ], [ %.pre, %._crit_edge.loopexit ]
  %.0132.lcssa = phi ptr [ %i.w, %bb.l ], [ %.2134, %._crit_edge.loopexit ] ; 7 uses
  %.0129.lcssa = phi ptr [ %i.v, %bb.l ], [ %.2131, %._crit_edge.loopexit ] ; 2 uses
  %i.ar = load i32, ptr %.0132.lcssa, align 4, !tbaa !35
  store i32 %i.aq, ptr %.0132.lcssa, align 4, !tbaa !35
  store i32 %i.ar, ptr %i.t, align 4, !tbaa !35
  %.not140 = icmp eq i32 %.1127, 0
  br i1 %.not140, label %bb.r, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds i8, ptr %.0132.lcssa, i64 -4
  %i.at = icmp eq ptr %i.ab, %i.as
  %i.au = icmp eq ptr %i.ab, %.0132.lcssa
  %or.cond = or i1 %i.au, %i.at
  br i1 %or.cond, label %.preheader159, label %bb.r

.preheader159:                                    ; preds = %bb.p, %bb.q
  %.0135 = phi ptr [ %i.aw, %bb.q ], [ %.0120174, %bb.p ] ; 4 uses
  %i.av = icmp ult ptr %.0135, %.0123173
  br i1 %i.av, label %bb.q, label %.critedge4

bb.q:                                             ; preds = %.preheader159
  %i.aw = getelementptr inbounds nuw i8, ptr %.0135, i64 4 ; 2 uses
  %.0135.val = load i32, ptr %.0135, align 4, !tbaa !35
  %.val = load i32, ptr %i.aw, align 4, !tbaa !35
  %.not158 = icmp sgt i32 %.0135.val, %.val
  br i1 %.not158, label %.critedge4, label %.preheader159, !llvm.loop !71

.critedge4:                                       ; preds = %.preheader159, %bb.q
  %i.ax = icmp eq ptr %.0135, %.0123173
  br i1 %i.ax, label %.thread.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.p, %.critedge4, %._crit_edge
  %i.ay = ptrtoint ptr %.0132.lcssa to i64        ; 2 uses
  %i.az = sub i64 %i.x, %i.ay
  %i.ba = sub i64 %i.ay, %i.y
  %i.bb = icmp slt i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  store ptr %.0120174, ptr %i.bc, align 16, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.0129.lcssa, ptr %i.bd, align 8, !tbaa !43
  %i.be = getelementptr inbounds nuw i8, ptr %.0132.lcssa, i64 4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %.0132.lcssa, i64 4
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 16, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.0123173, ptr %i.bh, align 8, !tbaa !43
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.1124 = phi ptr [ %.0123173, %bb.s ], [ %.0129.lcssa, %bb.t ] ; 2 uses
  %.1121 = phi ptr [ %i.be, %bb.s ], [ %.0120174, %bb.t ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bi = icmp ult ptr %.1121, %.1124
  br i1 %i.bi, label %.lr.ph177, label %.thread.loopexit

bb.v:                                             ; preds = %.lr.ph177
  %i.bj = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %.0120.val = load i32, ptr %.0120174, align 4, !tbaa !35 ; 2 uses
  %.0123.val = load i32, ptr %.0123173, align 4, !tbaa !35 ; 2 uses
  %i.bk = icmp sgt i32 %.0120.val, %.0123.val
  br i1 %i.bk, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  store i32 %.0120.val, ptr %.0123173, align 4, !tbaa !35
  store i32 %.0123.val, ptr %.0120174, align 4, !tbaa !35
  br label %.thread

.thread.loopexit:                                 ; preds = %.critedge4, %bb.k, %bb.u
  %.1162.ph.in = phi i64 [ %indvars.iv, %.critedge4 ], [ %indvars.iv, %bb.k ], [ %indvars.iv.next, %bb.u ]
  %.1162.ph = trunc i64 %.1162.ph.in to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.b, %bb.v, %bb.w
  %.1162 = phi i32 [ %i.bj, %bb.w ], [ %i.bj, %bb.v ], [ %i.k, %bb.b ], [ %.1162.ph, %.thread.loopexit ] ; 2 uses
  %.not = icmp eq i32 %.1162, 0
  br i1 %.not, label %bb.x, label %bb.b, !llvm.loop !72

bb.x:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.bl = load i32, ptr %i.e, align 4, !tbaa !35  ; 2 uses
  %i.bm = load i32, ptr %i.f, align 16, !tbaa !35
  %i.bn = icmp slt i32 %0, %i.bl
  %..i = call i32 @llvm.smin.i32(i32 %0, i32 %i.bm)
  %.0.i = select i1 %i.bn, i32 %i.bl, i32 %..i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @mode05(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #4 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 %8)
  %i.b = tail call i32 @llvm.smin.i32(i32 %1, i32 %8) ; 2 uses
  %i.c = tail call i32 @llvm.smax.i32(i32 %2, i32 %7)
  %i.d = tail call i32 @llvm.smin.i32(i32 %2, i32 %7) ; 2 uses
  %i.e = tail call i32 @llvm.smax.i32(i32 %3, i32 %6)
  %i.f = tail call i32 @llvm.smin.i32(i32 %3, i32 %6) ; 2 uses
  %i.g = tail call i32 @llvm.smax.i32(i32 %4, i32 %5)
  %i.h = tail call i32 @llvm.smin.i32(i32 %4, i32 %5) ; 2 uses
  %i.i = icmp slt i32 %0, %i.b
  %..i129 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.a)
  %.0.i130 = select i1 %i.i, i32 %i.b, i32 %..i129 ; 2 uses
  %i.j = sub nsw i32 %0, %.0.i130
  %i.k = tail call i32 @llvm.abs.i32(i32 %i.j, i1 true)
  %i.l = icmp slt i32 %0, %i.d
  %..i127 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.c)
  %.0.i128 = select i1 %i.l, i32 %i.d, i32 %..i127 ; 2 uses
  %i.m = sub nsw i32 %0, %.0.i128
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 true) ; 2 uses
  %i.o = icmp slt i32 %0, %i.f
  %..i125 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.e)
  %.0.i126 = select i1 %i.o, i32 %i.f, i32 %..i125 ; 2 uses
  %i.p = sub nsw i32 %0, %.0.i126
  %i.q = tail call i32 @llvm.abs.i32(i32 %i.p, i1 true) ; 2 uses
  %i.r = icmp slt i32 %0, %i.h
  %..i = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.g)
  %.0.i = select i1 %i.r, i32 %i.h, i32 %..i      ; 2 uses
  %i.s = sub nsw i32 %0, %.0.i
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true) ; 2 uses
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.n)
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.t)
  %i.w = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.v) ; 3 uses
  %i.x = icmp eq i32 %i.w, %i.t
  br i1 %i.x, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = icmp eq i32 %i.w, %i.n
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %i.w, %i.q
  %. = select i1 %i.z, i32 %.0.i126, i32 %.0.i130
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %.0.i128, %bb.b ], [ %.0.i, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @mode06(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #4 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 %8) ; 2 uses
  %i.b = tail call i32 @llvm.smin.i32(i32 %1, i32 %8) ; 3 uses
  %i.c = tail call i32 @llvm.smax.i32(i32 %2, i32 %7) ; 2 uses
  %i.d = tail call i32 @llvm.smin.i32(i32 %2, i32 %7) ; 3 uses
  %i.e = tail call i32 @llvm.smax.i32(i32 %3, i32 %6) ; 2 uses
  %i.f = tail call i32 @llvm.smin.i32(i32 %3, i32 %6) ; 3 uses
  %i.g = tail call i32 @llvm.smax.i32(i32 %4, i32 %5) ; 2 uses
  %i.h = tail call i32 @llvm.smin.i32(i32 %4, i32 %5) ; 3 uses
  %i.i = sub i32 %i.a, %i.b
  %i.j = sub i32 %i.c, %i.d
  %i.k = sub i32 %i.e, %i.f
  %i.l = sub i32 %i.g, %i.h
  %i.m = icmp slt i32 %0, %i.b
  %..i121 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.a)
  %.0.i122 = select i1 %i.m, i32 %i.b, i32 %..i121 ; 2 uses
  %i.n = icmp slt i32 %0, %i.d
  %..i119 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.c)
  %.0.i120 = select i1 %i.n, i32 %i.d, i32 %..i119 ; 2 uses
  %i.o = icmp slt i32 %0, %i.f
  %..i117 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.e)
  %.0.i118 = select i1 %i.o, i32 %i.f, i32 %..i117 ; 2 uses
  %i.p = icmp slt i32 %0, %i.h
  %..i = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.g)
  %.0.i = select i1 %i.p, i32 %i.h, i32 %..i      ; 2 uses
  %i.q = sub nsw i32 %0, %.0.i122
  %i.r = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.s = shl nuw i32 %i.r, 1
  %i.t = add nsw i32 %i.i, %i.s
  %9 = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %.0.i132133 = tail call i32 @llvm.umin.i32(i32 %9, i32 65535)
  %i.u = trunc nuw i32 %.0.i132133 to i16
  %i.v = sub nsw i32 %0, %.0.i120
  %i.w = tail call i32 @llvm.abs.i32(i32 %i.v, i1 true)
  %i.x = shl nuw i32 %i.w, 1
  %i.y = add nsw i32 %i.j, %i.x
  %10 = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %.0.i129134 = tail call i32 @llvm.umin.i32(i32 %10, i32 65535) ; 2 uses
  %i.z = trunc nuw i32 %.0.i129134 to i16
  %i.aa = sub nsw i32 %0, %.0.i118
  %i.ab = tail call i32 @llvm.abs.i32(i32 %i.aa, i1 true)
  %i.ac = shl nuw i32 %i.ab, 1
  %i.ad = add nsw i32 %i.k, %i.ac
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 65535) ; 2 uses
  %i.ag = sub nsw i32 %0, %.0.i
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %i.ai = shl nuw i32 %i.ah, 1
  %i.aj = add nsw i32 %i.l, %i.ai
  %i.ak = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 65535) ; 2 uses
  %i.am = tail call i16 @llvm.umin.i16(i16 %i.u, i16 %i.z)
  %i.an = zext i16 %i.am to i32
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.af, i32 %i.al)
  %i.ap = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.an) ; 3 uses
  %i.aq = icmp eq i32 %i.ap, %i.al
  br i1 %i.aq, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = icmp eq i32 %i.ap, %.0.i129134
  br i1 %i.ar, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = icmp eq i32 %i.ap, %i.af
  %. = select i1 %i.as, i32 %.0.i118, i32 %.0.i122
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %.0.i120, %bb.b ], [ %.0.i, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @mode07(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #4 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 %8) ; 2 uses
  %i.b = tail call i32 @llvm.smin.i32(i32 %1, i32 %8) ; 3 uses
  %i.c = tail call i32 @llvm.smax.i32(i32 %2, i32 %7) ; 2 uses
  %i.d = tail call i32 @llvm.smin.i32(i32 %2, i32 %7) ; 3 uses
  %i.e = tail call i32 @llvm.smax.i32(i32 %3, i32 %6) ; 2 uses
  %i.f = tail call i32 @llvm.smin.i32(i32 %3, i32 %6) ; 3 uses
  %i.g = tail call i32 @llvm.smax.i32(i32 %4, i32 %5) ; 2 uses
  %i.h = tail call i32 @llvm.smin.i32(i32 %4, i32 %5) ; 3 uses
  %i.i = sub i32 %i.a, %i.b
  %i.j = sub nsw i32 %i.c, %i.d
  %i.k = sub nsw i32 %i.e, %i.f
  %i.l = sub nsw i32 %i.g, %i.h
  %i.m = icmp slt i32 %0, %i.b
  %..i121 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.a)
  %.0.i122 = select i1 %i.m, i32 %i.b, i32 %..i121 ; 2 uses
  %i.n = icmp slt i32 %0, %i.d
  %..i119 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.c)
  %.0.i120 = select i1 %i.n, i32 %i.d, i32 %..i119 ; 2 uses
  %i.o = icmp slt i32 %0, %i.f
  %..i117 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.e)
  %.0.i118 = select i1 %i.o, i32 %i.f, i32 %..i117 ; 2 uses
  %i.p = icmp slt i32 %0, %i.h
  %..i = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.g)
  %.0.i = select i1 %i.p, i32 %i.h, i32 %..i      ; 2 uses
  %i.q = sub nsw i32 %0, %.0.i122
  %i.r = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.s = add nsw i32 %i.i, %i.r
  %i.t = sub nsw i32 %0, %.0.i120
  %i.u = tail call i32 @llvm.abs.i32(i32 %i.t, i1 true)
  %i.v = add nuw nsw i32 %i.u, %i.j               ; 2 uses
  %i.w = sub nsw i32 %0, %.0.i118
  %i.x = tail call i32 @llvm.abs.i32(i32 %i.w, i1 true)
  %i.y = add nuw nsw i32 %i.x, %i.k               ; 2 uses
  %i.z = sub nsw i32 %0, %.0.i
  %i.aa = tail call i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %i.ab = add nuw nsw i32 %i.aa, %i.l             ; 2 uses
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.v)
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.ab)
  %i.ae = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ad) ; 3 uses
  %i.af = icmp eq i32 %i.ae, %i.ab
  br i1 %i.af, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = icmp eq i32 %i.ae, %i.v
  br i1 %i.ag, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp eq i32 %i.ae, %i.y
  %. = select i1 %i.ah, i32 %.0.i118, i32 %.0.i122
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %.0.i120, %bb.b ], [ %.0.i, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @mode08(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #4 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 %8) ; 2 uses
  %i.b = tail call i32 @llvm.smin.i32(i32 %1, i32 %8) ; 3 uses
  %i.c = tail call i32 @llvm.smax.i32(i32 %2, i32 %7) ; 2 uses
  %i.d = tail call i32 @llvm.smin.i32(i32 %2, i32 %7) ; 3 uses
  %i.e = tail call i32 @llvm.smax.i32(i32 %3, i32 %6) ; 2 uses
  %i.f = tail call i32 @llvm.smin.i32(i32 %3, i32 %6) ; 3 uses
  %i.g = tail call i32 @llvm.smax.i32(i32 %4, i32 %5) ; 2 uses
  %i.h = tail call i32 @llvm.smin.i32(i32 %4, i32 %5) ; 3 uses
  %i.i = sub nsw i32 %i.a, %i.b
  %i.j = sub nsw i32 %i.c, %i.d
  %i.k = sub nsw i32 %i.e, %i.f
  %i.l = sub nsw i32 %i.g, %i.h
  %i.m = icmp slt i32 %0, %i.b
  %..i121 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.a)
  %.0.i122 = select i1 %i.m, i32 %i.b, i32 %..i121 ; 2 uses
  %i.n = icmp slt i32 %0, %i.d
  %..i119 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.c)
  %.0.i120 = select i1 %i.n, i32 %i.d, i32 %..i119 ; 2 uses
  %i.o = icmp slt i32 %0, %i.f
  %..i117 = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.e)
  %.0.i118 = select i1 %i.o, i32 %i.f, i32 %..i117 ; 2 uses
  %i.p = icmp slt i32 %0, %i.h
  %..i = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.g)
  %.0.i = select i1 %i.p, i32 %i.h, i32 %..i      ; 2 uses
  %i.q = sub nsw i32 %0, %.0.i122
  %i.r = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.s = shl i32 %i.i, 1
  %i.t = add nsw i32 %i.r, %i.s
  %9 = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %.0.i132133 = tail call i32 @llvm.umin.i32(i32 %9, i32 65535)
  %i.u = trunc nuw i32 %.0.i132133 to i16
  %i.v = sub nsw i32 %0, %.0.i120
  %i.w = tail call i32 @llvm.abs.i32(i32 %i.v, i1 true)
  %i.x = shl i32 %i.j, 1
  %i.y = add nsw i32 %i.w, %i.x
  %10 = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %.0.i129134 = tail call i32 @llvm.umin.i32(i32 %10, i32 65535) ; 2 uses
  %i.z = trunc nuw i32 %.0.i129134 to i16
  %i.aa = sub nsw i32 %0, %.0.i118
  %i.ab = tail call i32 @llvm.abs.i32(i32 %i.aa, i1 true)
  %i.ac = shl i32 %i.k, 1
  %i.ad = add nsw i32 %i.ab, %i.ac
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 65535) ; 2 uses
  %i.ag = sub nsw i32 %0, %.0.i
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %i.ai = shl i32 %i.l, 1
  %i.aj = add nsw i32 %i.ah, %i.ai
  %i.ak = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 65535) ; 2 uses
  %i.am = tail call i16 @llvm.umin.i16(i16 %i.u, i16 %i.z)
  %i.an = zext i16 %i.am to i32
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.af, i32 %i.al)
  %i.ap = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.an) ; 3 uses
  %i.aq = icmp eq i32 %i.ap, %i.al
  br i1 %i.aq, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = icmp eq i32 %i.ap, %.0.i129134
  br i1 %i.ar, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = icmp eq i32 %i.ap, %i.af
  %. = select i1 %i.as, i32 %.0.i118, i32 %.0.i122
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %.0.i120, %bb.b ], [ %.0.i, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @mode09(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #4 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 %8) ; 2 uses
  %i.b = tail call i32 @llvm.smin.i32(i32 %1, i32 %8) ; 2 uses
  %i.c = tail call i32 @llvm.smax.i32(i32 %2, i32 %7) ; 2 uses
  %i.d = tail call i32 @llvm.smin.i32(i32 %2, i32 %7) ; 2 uses
  %i.e = tail call i32 @llvm.smax.i32(i32 %3, i32 %6) ; 2 uses
  %i.f = tail call i32 @llvm.smin.i32(i32 %3, i32 %6) ; 2 uses
  %i.g = tail call i32 @llvm.smax.i32(i32 %4, i32 %5) ; 2 uses
  %i.h = tail call i32 @llvm.smin.i32(i32 %4, i32 %5) ; 2 uses
  %i.i = sub nsw i32 %i.a, %i.b
  %i.j = sub nsw i32 %i.c, %i.d                   ; 2 uses
  %i.k = sub nsw i32 %i.e, %i.f                   ; 2 uses
  %i.l = sub nsw i32 %i.g, %i.h                   ; 2 uses
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.j)
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.l)
  %. = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.n) ; 3 uses
  %i.o = icmp eq i32 %., %i.l
  br i1 %i.o, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %., %i.j
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i32 %., %i.k                     ; 2 uses
  %.87 = select i1 %i.q, i32 %i.f, i32 %i.b
  %.88 = select i1 %i.q, i32 %i.e, i32 %i.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sink86 = phi i32 [ %i.d, %bb.b ], [ %.87, %bb.c ], [ %i.h, %bb.a ] ; 2 uses
  %.sink85 = phi i32 [ %i.c, %bb.b ], [ %.88, %bb.c ], [ %i.g, %bb.a ]
  %i.r = icmp slt i32 %0, %.sink86
  %..i = tail call i32 @llvm.smin.i32(i32 %0, i32 %.sink85)
  %.0.i = select i1 %i.r, i32 %.sink86, i32 %..i
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @mode10(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #4 {
bb.a:
  %i.a = sub nsw i32 %0, %1
  %i.b = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true) ; 2 uses
  %i.c = sub nsw i32 %0, %2
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true) ; 2 uses
  %i.e = sub nsw i32 %0, %3
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true) ; 2 uses
  %i.g = sub nsw i32 %0, %4
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.g, i1 true)
  %i.i = sub nsw i32 %0, %5
  %i.j = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true) ; 2 uses
  %i.k = sub nsw i32 %0, %6
  %i.l = tail call i32 @llvm.abs.i32(i32 %i.k, i1 true) ; 2 uses
  %i.m = sub nsw i32 %0, %7
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 true) ; 2 uses
  %i.o = sub nsw i32 %0, %8
  %i.p = tail call i32 @llvm.abs.i32(i32 %i.o, i1 true) ; 2 uses
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.d)
  %i.r = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.h)
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.r)
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.l)
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.p)
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.u)
  %i.w = tail call i32 @llvm.umin.i32(i32 %i.s, i32 %i.v) ; 7 uses
  %i.x = icmp eq i32 %i.w, %i.n
  br i1 %i.x, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = icmp eq i32 %i.w, %i.p
  br i1 %i.y, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %i.w, %i.l
  br i1 %i.z, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i32 %i.w, %i.d
  br i1 %i.aa, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp eq i32 %i.w, %i.f
  br i1 %i.ab, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp eq i32 %i.w, %i.b
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp eq i32 %i.w, %i.j
  %.160 = select i1 %i.ad, i32 %5, i32 %4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %1, %bb.f ], [ %7, %bb.a ], [ %8, %bb.b ], [ %6, %bb.c ], [ %2, %bb.d ], [ %3, %bb.e ], [ %.160, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 -134217728, 134217728) i32 @mode1112(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #4 {
bb.a:
  %i.a = shl nsw i32 %0, 2
  %i.b = add nsw i32 %4, %2
  %i.c = add nsw i32 %i.b, %5
  %i.d = add nsw i32 %i.c, %7
  %i.e = shl nsw i32 %i.d, 1
  %i.f = add i32 %i.a, 8
  %i.g = add i32 %i.f, %1
  %i.h = add i32 %i.g, %3
  %i.i = add i32 %i.h, %6
  %i.j = add i32 %i.i, %8
  %i.k = add i32 %i.j, %i.e
  %i.l = ashr i32 %i.k, 4
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 -1073741824, 1073741824) i32 @mode1314(i32 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #4 {
bb.a:
  %i.a = sub nsw i32 %1, %8
  %i.b = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true)
  %i.c = sub nsw i32 %2, %7
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true) ; 2 uses
  %i.e = sub nsw i32 %3, %6
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true) ; 2 uses
  %i.g = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.d) ; 2 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.f)
  %i.i = icmp eq i32 %i.h, %i.d
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %7, %2
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i32 %i.f, %i.g
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %6, %3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = add nsw i32 %8, %1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0.in.in = phi i32 [ %i.j, %bb.b ], [ %i.k, %bb.d ], [ %i.l, %bb.e ]
  %.0.in = add nsw i32 %.0.in.in, 1
  %.0 = ashr i32 %.0.in, 1
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @mode1516(i32 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #4 {
bb.a:
  %i.a = sub nsw i32 %1, %8
  %i.b = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true)
  %i.c = sub nsw i32 %2, %7
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true) ; 2 uses
  %i.e = sub nsw i32 %3, %6
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true) ; 2 uses
  %i.g = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.d) ; 2 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.f)
  %i.i = icmp eq i32 %i.h, %i.d
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @llvm.smin.i32(i32 %2, i32 %7)
  %i.k = tail call i32 @llvm.smax.i32(i32 %2, i32 %7)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i32 %i.f, %i.g
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @llvm.smin.i32(i32 %3, i32 %6)
  %i.m = tail call i32 @llvm.smax.i32(i32 %3, i32 %6)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = tail call i32 @llvm.smin.i32(i32 %1, i32 %8)
  %i.o = tail call i32 @llvm.smax.i32(i32 %1, i32 %8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
end_hunk_0
