Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_v360?download=true
inline.NumInlined: 74
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 117
begin_hunk_0_@remap1_8bit_line_c:bb.a
  %i.i = sext i16 %i.h to i64
  %i.j = getelementptr i8, ptr %2, i64 %i.f
  %i.k = getelementptr i8, ptr %i.j, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  store i8 %i.l, ptr %i.m, align 1, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !18
  %i.p = sext i16 %i.o to i64
  %i.q = mul nsw i64 %3, %i.p
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  %i.s = load i16, ptr %i.r, align 2, !tbaa !18
  %i.t = sext i16 %i.s to i64
  %i.u = getelementptr i8, ptr %2, i64 %i.q
  %i.v = getelementptr i8, ptr %i.u, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.w, ptr %i.x, align 1, !tbaa !19
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv.next
  %i.z = load i16, ptr %i.y, align 2, !tbaa !18
  %i.aa = sext i16 %i.z to i64
  %i.ab = mul nsw i64 %3, %i.aa
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !18
  %i.ae = sext i16 %i.ad to i64
  %i.af = getelementptr i8, ptr %2, i64 %i.ab
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !79
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @remap1_16bit_line_c(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree readnone captures(none) %6) #1 {
bb.a:
  %i.a = sdiv i64 %3, 2                           ; 3 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod15 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv.epil.init
  %i.e = load i16, ptr %i.d, align 2, !tbaa !18
  %i.f = sext i16 %i.e to i64
  %i.g = mul nsw i64 %i.a, %i.f
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.i = load i16, ptr %i.h, align 2, !tbaa !18
  %i.j = sext i16 %i.i to i64
  %i.k = getelementptr [2 x i8], ptr %2, i64 %i.g
  %i.l = getelementptr [2 x i8], ptr %i.k, i64 %i.j
  %i.m = load i16, ptr %i.l, align 2, !tbaa !18
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil.init
  store i16 %i.m, ptr %i.n, align 2, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2, !tbaa !18
  %i.q = sext i16 %i.p to i64
  %i.r = mul nsw i64 %i.a, %i.q
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  %i.t = load i16, ptr %i.s, align 2, !tbaa !18
  %i.u = sext i16 %i.t to i64
  %i.v = getelementptr [2 x i8], ptr %2, i64 %i.r
  %i.w = getelementptr [2 x i8], ptr %i.v, i64 %i.u
  %i.x = load i16, ptr %i.w, align 2, !tbaa !18
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.x, ptr %i.y, align 2, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv.next
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !18
  %i.ab = sext i16 %i.aa to i64
  %i.ac = mul nsw i64 %i.a, %i.ab
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !18
  %i.af = sext i16 %i.ae to i64
  %i.ag = getelementptr [2 x i8], ptr %2, i64 %i.ac
  %i.ah = getelementptr [2 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !18
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !80
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @remap2_8bit_line_c(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.b = shl nuw nsw i64 %indvars.iv, 2           ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.b ; 4 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.b ; 4 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !18
  %i.g = sext i16 %i.f to i32
  %i.h = load i16, ptr %i.d, align 2, !tbaa !18
  %i.i = sext i16 %i.h to i64
  %i.j = mul nsw i64 %3, %i.i
  %i.k = load i16, ptr %i.c, align 2, !tbaa !18
  %i.l = sext i16 %i.k to i64
  %i.m = getelementptr i8, ptr %2, i64 %i.j
  %i.n = getelementptr i8, ptr %i.m, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !tbaa !19
  %i.p = zext i8 %i.o to i32
  %i.q = mul nsw i32 %i.p, %i.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !18
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !18
  %i.w = sext i16 %i.v to i64
  %i.x = mul nsw i64 %3, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !18
  %i.aa = sext i16 %i.z to i64
  %i.ab = getelementptr i8, ptr %2, i64 %i.x
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nsw i32 %i.ae, %i.t
  %i.ag = add nsw i32 %i.af, %i.q
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !18
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !18
  %i.am = sext i16 %i.al to i64
  %i.an = mul nsw i64 %3, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !18
  %i.aq = sext i16 %i.ap to i64
  %i.ar = getelementptr i8, ptr %2, i64 %i.an
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.aq
  %i.at = load i8, ptr %i.as, align 1, !tbaa !19
  %i.au = zext i8 %i.at to i32
  %i.av = mul nsw i32 %i.au, %i.aj
  %i.aw = add nsw i32 %i.av, %i.ag
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !18
  %i.az = sext i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !18
  %i.bc = sext i16 %i.bb to i64
  %i.bd = mul nsw i64 %3, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !18
  %i.bg = sext i16 %i.bf to i64
  %i.bh = getelementptr i8, ptr %2, i64 %i.bd
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.bg
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !19
  %i.bk = zext i8 %i.bj to i32
  %i.bl = mul nsw i32 %i.bk, %i.az
  %i.bm = add nsw i32 %i.bl, %i.aw
  %i.bn = ashr i32 %i.bm, 14
  %7 = tail call i32 @llvm.smax.i32(i32 %i.bn, i32 0)
  %.0.i34 = tail call i32 @llvm.umin.i32(i32 %7, i32 255)
  %i.bo = trunc nuw i32 %.0.i34 to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !81
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @remap2_16bit_line_c(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #1 {
bb.a:
  %i.a = sdiv i64 %3, 2                           ; 4 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.c = shl nuw nsw i64 %indvars.iv, 2           ; 3 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.c ; 4 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.c ; 4 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18
  %i.h = sext i16 %i.g to i32
  %i.i = load i16, ptr %i.e, align 2, !tbaa !18
  %i.j = sext i16 %i.i to i64
  %i.k = mul nsw i64 %i.a, %i.j
  %i.l = load i16, ptr %i.d, align 2, !tbaa !18
  %i.m = sext i16 %i.l to i64
  %i.n = getelementptr [2 x i8], ptr %2, i64 %i.k
  %i.o = getelementptr [2 x i8], ptr %i.n, i64 %i.m
  %i.p = load i16, ptr %i.o, align 2, !tbaa !18
  %i.q = zext i16 %i.p to i32
  %i.r = mul nsw i32 %i.q, %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !18
  %i.u = sext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !18
  %i.x = sext i16 %i.w to i64
  %i.y = mul nsw i64 %i.a, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !18
  %i.ab = sext i16 %i.aa to i64
  %i.ac = getelementptr [2 x i8], ptr %2, i64 %i.y
  %i.ad = getelementptr [2 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !18
  %i.af = zext i16 %i.ae to i32
  %i.ag = mul nsw i32 %i.af, %i.u
  %i.ah = add nsw i32 %i.ag, %i.r
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !18
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.am = load i16, ptr %i.al, align 2, !tbaa !18
  %i.an = sext i16 %i.am to i64
  %i.ao = mul nsw i64 %i.a, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !18
  %i.ar = sext i16 %i.aq to i64
  %i.as = getelementptr [2 x i8], ptr %2, i64 %i.ao
  %i.at = getelementptr [2 x i8], ptr %i.as, i64 %i.ar
  %i.au = load i16, ptr %i.at, align 2, !tbaa !18
  %i.av = zext i16 %i.au to i32
  %i.aw = mul nsw i32 %i.av, %i.ak
  %i.ax = add nsw i32 %i.aw, %i.ah
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !18
  %i.ba = sext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !18
  %i.bd = sext i16 %i.bc to i64
  %i.be = mul nsw i64 %i.a, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !18
  %i.bh = sext i16 %i.bg to i64
  %i.bi = getelementptr [2 x i8], ptr %2, i64 %i.be
  %i.bj = getelementptr [2 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !18
  %i.bl = zext i16 %i.bk to i32
  %i.bm = mul nsw i32 %i.bl, %i.ba
  %i.bn = add nsw i32 %i.bm, %i.ax
  %i.bo = ashr i32 %i.bn, 14
  %7 = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 0)
  %.0.i34 = tail call i32 @llvm.umin.i32(i32 %7, i32 65535)
  %i.bp = trunc nuw i32 %.0.i34 to i16
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @remap3_8bit_line_c(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.b = mul nuw nsw i64 %indvars.iv, 9           ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.b ; 9 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.b ; 9 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.b ; 9 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !18
  %i.g = sext i16 %i.f to i32
  %i.h = load i16, ptr %i.d, align 2, !tbaa !18
  %i.i = sext i16 %i.h to i64
  %i.j = mul nsw i64 %3, %i.i
  %i.k = load i16, ptr %i.c, align 2, !tbaa !18
  %i.l = sext i16 %i.k to i64
  %i.m = getelementptr i8, ptr %2, i64 %i.j
  %i.n = getelementptr i8, ptr %i.m, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !tbaa !19
  %i.p = zext i8 %i.o to i32
  %i.q = mul nsw i32 %i.p, %i.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !18
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !18
  %i.w = sext i16 %i.v to i64
  %i.x = mul nsw i64 %3, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !18
  %i.aa = sext i16 %i.z to i64
  %i.ab = getelementptr i8, ptr %2, i64 %i.x
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nsw i32 %i.ae, %i.t
  %i.ag = add nsw i32 %i.af, %i.q
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !18
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !18
  %i.am = sext i16 %i.al to i64
  %i.an = mul nsw i64 %3, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !18
  %i.aq = sext i16 %i.ap to i64
  %i.ar = getelementptr i8, ptr %2, i64 %i.an
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.aq
  %i.at = load i8, ptr %i.as, align 1, !tbaa !19
  %i.au = zext i8 %i.at to i32
  %i.av = mul nsw i32 %i.au, %i.aj
  %i.aw = add nsw i32 %i.av, %i.ag
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !18
  %i.az = sext i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !18
  %i.bc = sext i16 %i.bb to i64
  %i.bd = mul nsw i64 %3, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !18
  %i.bg = sext i16 %i.bf to i64
  %i.bh = getelementptr i8, ptr %2, i64 %i.bd
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.bg
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !19
  %i.bk = zext i8 %i.bj to i32
  %i.bl = mul nsw i32 %i.bk, %i.az
  %i.bm = add nsw i32 %i.bl, %i.aw
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !18
  %i.bp = sext i16 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !18
  %i.bs = sext i16 %i.br to i64
  %i.bt = mul nsw i64 %3, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !18
  %i.bw = sext i16 %i.bv to i64
  %i.bx = getelementptr i8, ptr %2, i64 %i.bt
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !19
  %i.ca = zext i8 %i.bz to i32
  %i.cb = mul nsw i32 %i.ca, %i.bp
  %i.cc = add nsw i32 %i.cb, %i.bm
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !18
  %i.cf = sext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !18
  %i.ci = sext i16 %i.ch to i64
  %i.cj = mul nsw i64 %3, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !18
  %i.cm = sext i16 %i.cl to i64
  %i.cn = getelementptr i8, ptr %2, i64 %i.cj
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.cm
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !19
  %i.cq = zext i8 %i.cp to i32
  %i.cr = mul nsw i32 %i.cq, %i.cf
  %i.cs = add nsw i32 %i.cr, %i.cc
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !18
  %i.cv = sext i16 %i.cu to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !18
  %i.cy = sext i16 %i.cx to i64
  %i.cz = mul nsw i64 %3, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.db = load i16, ptr %i.da, align 2, !tbaa !18
  %i.dc = sext i16 %i.db to i64
  %i.dd = getelementptr i8, ptr %2, i64 %i.cz
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.dc
  %i.df = load i8, ptr %i.de, align 1, !tbaa !19
  %i.dg = zext i8 %i.df to i32
  %i.dh = mul nsw i32 %i.dg, %i.cv
  %i.di = add nsw i32 %i.dh, %i.cs
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !18
  %i.dl = sext i16 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !18
  %i.do = sext i16 %i.dn to i64
  %i.dp = mul nsw i64 %3, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !18
  %i.ds = sext i16 %i.dr to i64
  %i.dt = getelementptr i8, ptr %2, i64 %i.dp
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !19
  %i.dw = zext i8 %i.dv to i32
  %i.dx = mul nsw i32 %i.dw, %i.dl
  %i.dy = add nsw i32 %i.dx, %i.di
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !18
  %i.eb = sext i16 %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !18
  %i.ee = sext i16 %i.ed to i64
  %i.ef = mul nsw i64 %3, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !18
  %i.ei = sext i16 %i.eh to i64
  %i.ej = getelementptr i8, ptr %2, i64 %i.ef
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !19
  %i.em = zext i8 %i.el to i32
  %i.en = mul nsw i32 %i.em, %i.eb
  %i.eo = add nsw i32 %i.en, %i.dy
  %i.ep = ashr i32 %i.eo, 14
  %7 = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 0)
  %.0.i34 = tail call i32 @llvm.umin.i32(i32 %7, i32 255)
  %i.eq = trunc nuw i32 %.0.i34 to i8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !83
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @remap3_16bit_line_c(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #1 {
bb.a:
  %i.a = sdiv i64 %3, 2                           ; 9 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.c = mul nuw nsw i64 %indvars.iv, 9           ; 3 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.c ; 9 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.c ; 9 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.c ; 9 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18
  %i.h = sext i16 %i.g to i32
  %i.i = load i16, ptr %i.e, align 2, !tbaa !18
  %i.j = sext i16 %i.i to i64
  %i.k = mul nsw i64 %i.a, %i.j
  %i.l = load i16, ptr %i.d, align 2, !tbaa !18
  %i.m = sext i16 %i.l to i64
  %i.n = getelementptr [2 x i8], ptr %2, i64 %i.k
  %i.o = getelementptr [2 x i8], ptr %i.n, i64 %i.m
  %i.p = load i16, ptr %i.o, align 2, !tbaa !18
  %i.q = zext i16 %i.p to i32
  %i.r = mul nsw i32 %i.q, %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !18
  %i.u = sext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !18
  %i.x = sext i16 %i.w to i64
  %i.y = mul nsw i64 %i.a, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !18
  %i.ab = sext i16 %i.aa to i64
  %i.ac = getelementptr [2 x i8], ptr %2, i64 %i.y
  %i.ad = getelementptr [2 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !18
  %i.af = zext i16 %i.ae to i32
  %i.ag = mul nsw i32 %i.af, %i.u
  %i.ah = add nsw i32 %i.ag, %i.r
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !18
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.am = load i16, ptr %i.al, align 2, !tbaa !18
  %i.an = sext i16 %i.am to i64
  %i.ao = mul nsw i64 %i.a, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !18
  %i.ar = sext i16 %i.aq to i64
  %i.as = getelementptr [2 x i8], ptr %2, i64 %i.ao
  %i.at = getelementptr [2 x i8], ptr %i.as, i64 %i.ar
  %i.au = load i16, ptr %i.at, align 2, !tbaa !18
  %i.av = zext i16 %i.au to i32
  %i.aw = mul nsw i32 %i.av, %i.ak
  %i.ax = add nsw i32 %i.aw, %i.ah
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !18
  %i.ba = sext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !18
  %i.bd = sext i16 %i.bc to i64
  %i.be = mul nsw i64 %i.a, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !18
  %i.bh = sext i16 %i.bg to i64
  %i.bi = getelementptr [2 x i8], ptr %2, i64 %i.be
  %i.bj = getelementptr [2 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !18
  %i.bl = zext i16 %i.bk to i32
  %i.bm = mul nsw i32 %i.bl, %i.ba
  %i.bn = add nsw i32 %i.bm, %i.ax
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !18
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !18
  %i.bt = sext i16 %i.bs to i64
  %i.bu = mul nsw i64 %i.a, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !18
  %i.bx = sext i16 %i.bw to i64
  %i.by = getelementptr [2 x i8], ptr %2, i64 %i.bu
  %i.bz = getelementptr [2 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !18
  %i.cb = zext i16 %i.ca to i32
  %i.cc = mul nsw i32 %i.cb, %i.bq
  %i.cd = add nsw i32 %i.cc, %i.bn
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !18
  %i.cg = sext i16 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !18
  %i.cj = sext i16 %i.ci to i64
  %i.ck = mul nsw i64 %i.a, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !18
  %i.cn = sext i16 %i.cm to i64
  %i.co = getelementptr [2 x i8], ptr %2, i64 %i.ck
  %i.cp = getelementptr [2 x i8], ptr %i.co, i64 %i.cn
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !18
  %i.cr = zext i16 %i.cq to i32
  %i.cs = mul nsw i32 %i.cr, %i.cg
  %i.ct = add nsw i32 %i.cs, %i.cd
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !18
  %i.cw = sext i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !18
  %i.cz = sext i16 %i.cy to i64
  %i.da = mul nsw i64 %i.a, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !18
  %i.dd = sext i16 %i.dc to i64
  %i.de = getelementptr [2 x i8], ptr %2, i64 %i.da
  %i.df = getelementptr [2 x i8], ptr %i.de, i64 %i.dd
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !18
  %i.dh = zext i16 %i.dg to i32
  %i.di = mul nsw i32 %i.dh, %i.cw
  %i.dj = add nsw i32 %i.di, %i.ct
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !18
  %i.dm = sext i16 %i.dl to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !18
  %i.dp = sext i16 %i.do to i64
  %i.dq = mul nsw i64 %i.a, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !18
  %i.dt = sext i16 %i.ds to i64
  %i.du = getelementptr [2 x i8], ptr %2, i64 %i.dq
  %i.dv = getelementptr [2 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !18
  %i.dx = zext i16 %i.dw to i32
  %i.dy = mul nsw i32 %i.dx, %i.dm
  %i.dz = add nsw i32 %i.dy, %i.dj
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !18
  %i.ec = sext i16 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !18
  %i.ef = sext i16 %i.ee to i64
  %i.eg = mul nsw i64 %i.a, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !18
  %i.ej = sext i16 %i.ei to i64
  %i.ek = getelementptr [2 x i8], ptr %2, i64 %i.eg
  %i.el = getelementptr [2 x i8], ptr %i.ek, i64 %i.ej
  %i.em = load i16, ptr %i.el, align 2, !tbaa !18
  %i.en = zext i16 %i.em to i32
  %i.eo = mul nsw i32 %i.en, %i.ec
  %i.ep = add nsw i32 %i.eo, %i.dz
  %i.eq = ashr i32 %i.ep, 14
  %7 = tail call i32 @llvm.smax.i32(i32 %i.eq, i32 0)
  %.0.i34 = tail call i32 @llvm.umin.i32(i32 %7, i32 65535)
  %i.er = trunc nuw i32 %.0.i34 to i16
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.er, ptr %i.es, align 2, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !84
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @remap4_8bit_line_c(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.b = shl nuw nsw i64 %indvars.iv, 4           ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.b ; 16 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.b ; 16 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.b ; 16 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !18
  %i.g = sext i16 %i.f to i32
  %i.h = load i16, ptr %i.d, align 2, !tbaa !18
  %i.i = sext i16 %i.h to i64
  %i.j = mul nsw i64 %3, %i.i
  %i.k = load i16, ptr %i.c, align 2, !tbaa !18
  %i.l = sext i16 %i.k to i64
  %i.m = getelementptr i8, ptr %2, i64 %i.j
  %i.n = getelementptr i8, ptr %i.m, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !tbaa !19
  %i.p = zext i8 %i.o to i32
  %i.q = mul nsw i32 %i.p, %i.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !18
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !18
  %i.w = sext i16 %i.v to i64
  %i.x = mul nsw i64 %3, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !18
  %i.aa = sext i16 %i.z to i64
  %i.ab = getelementptr i8, ptr %2, i64 %i.x
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nsw i32 %i.ae, %i.t
  %i.ag = add nsw i32 %i.af, %i.q
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !18
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !18
  %i.am = sext i16 %i.al to i64
  %i.an = mul nsw i64 %3, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !18
  %i.aq = sext i16 %i.ap to i64
  %i.ar = getelementptr i8, ptr %2, i64 %i.an
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.aq
  %i.at = load i8, ptr %i.as, align 1, !tbaa !19
  %i.au = zext i8 %i.at to i32
  %i.av = mul nsw i32 %i.au, %i.aj
  %i.aw = add nsw i32 %i.av, %i.ag
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !18
  %i.az = sext i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !18
  %i.bc = sext i16 %i.bb to i64
  %i.bd = mul nsw i64 %3, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !18
  %i.bg = sext i16 %i.bf to i64
  %i.bh = getelementptr i8, ptr %2, i64 %i.bd
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.bg
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !19
  %i.bk = zext i8 %i.bj to i32
  %i.bl = mul nsw i32 %i.bk, %i.az
  %i.bm = add nsw i32 %i.bl, %i.aw
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !18
  %i.bp = sext i16 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !18
  %i.bs = sext i16 %i.br to i64
  %i.bt = mul nsw i64 %3, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !18
  %i.bw = sext i16 %i.bv to i64
  %i.bx = getelementptr i8, ptr %2, i64 %i.bt
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !19
  %i.ca = zext i8 %i.bz to i32
  %i.cb = mul nsw i32 %i.ca, %i.bp
  %i.cc = add nsw i32 %i.cb, %i.bm
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !18
  %i.cf = sext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !18
  %i.ci = sext i16 %i.ch to i64
  %i.cj = mul nsw i64 %3, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !18
  %i.cm = sext i16 %i.cl to i64
  %i.cn = getelementptr i8, ptr %2, i64 %i.cj
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.cm
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !19
  %i.cq = zext i8 %i.cp to i32
  %i.cr = mul nsw i32 %i.cq, %i.cf
  %i.cs = add nsw i32 %i.cr, %i.cc
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !18
  %i.cv = sext i16 %i.cu to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !18
  %i.cy = sext i16 %i.cx to i64
  %i.cz = mul nsw i64 %3, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.db = load i16, ptr %i.da, align 2, !tbaa !18
  %i.dc = sext i16 %i.db to i64
  %i.dd = getelementptr i8, ptr %2, i64 %i.cz
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.dc
  %i.df = load i8, ptr %i.de, align 1, !tbaa !19
  %i.dg = zext i8 %i.df to i32
  %i.dh = mul nsw i32 %i.dg, %i.cv
  %i.di = add nsw i32 %i.dh, %i.cs
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !18
  %i.dl = sext i16 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !18
  %i.do = sext i16 %i.dn to i64
  %i.dp = mul nsw i64 %3, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !18
  %i.ds = sext i16 %i.dr to i64
  %i.dt = getelementptr i8, ptr %2, i64 %i.dp
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !19
  %i.dw = zext i8 %i.dv to i32
  %i.dx = mul nsw i32 %i.dw, %i.dl
  %i.dy = add nsw i32 %i.dx, %i.di
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !18
  %i.eb = sext i16 %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !18
  %i.ee = sext i16 %i.ed to i64
  %i.ef = mul nsw i64 %3, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !18
  %i.ei = sext i16 %i.eh to i64
  %i.ej = getelementptr i8, ptr %2, i64 %i.ef
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !19
  %i.em = zext i8 %i.el to i32
  %i.en = mul nsw i32 %i.em, %i.eb
  %i.eo = add nsw i32 %i.en, %i.dy
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !18
  %i.er = sext i16 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.et = load i16, ptr %i.es, align 2, !tbaa !18
  %i.eu = sext i16 %i.et to i64
  %i.ev = mul nsw i64 %3, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !18
  %i.ey = sext i16 %i.ex to i64
  %i.ez = getelementptr i8, ptr %2, i64 %i.ev
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.ey
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !19
  %i.fc = zext i8 %i.fb to i32
  %i.fd = mul nsw i32 %i.fc, %i.er
  %i.fe = add nsw i32 %i.fd, %i.eo
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !18
  %i.fh = sext i16 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !18
  %i.fk = sext i16 %i.fj to i64
  %i.fl = mul nsw i64 %3, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !18
  %i.fo = sext i16 %i.fn to i64
  %i.fp = getelementptr i8, ptr %2, i64 %i.fl
  %i.fq = getelementptr i8, ptr %i.fp, i64 %i.fo
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !19
  %i.fs = zext i8 %i.fr to i32
  %i.ft = mul nsw i32 %i.fs, %i.fh
  %i.fu = add nsw i32 %i.ft, %i.fe
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !18
  %i.fx = sext i16 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !18
  %i.ga = sext i16 %i.fz to i64
  %i.gb = mul nsw i64 %3, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !18
  %i.ge = sext i16 %i.gd to i64
  %i.gf = getelementptr i8, ptr %2, i64 %i.gb
  %i.gg = getelementptr i8, ptr %i.gf, i64 %i.ge
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !19
  %i.gi = zext i8 %i.gh to i32
  %i.gj = mul nsw i32 %i.gi, %i.fx
  %i.gk = add nsw i32 %i.gj, %i.fu
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !18
  %i.gn = sext i16 %i.gm to i32
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !18
  %i.gq = sext i16 %i.gp to i64
  %i.gr = mul nsw i64 %3, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !18
  %i.gu = sext i16 %i.gt to i64
  %i.gv = getelementptr i8, ptr %2, i64 %i.gr
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gu
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !19
  %i.gy = zext i8 %i.gx to i32
  %i.gz = mul nsw i32 %i.gy, %i.gn
  %i.ha = add nsw i32 %i.gz, %i.gk
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !18
  %i.hd = sext i16 %i.hc to i32
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !18
  %i.hg = sext i16 %i.hf to i64
  %i.hh = mul nsw i64 %3, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !18
  %i.hk = sext i16 %i.hj to i64
  %i.hl = getelementptr i8, ptr %2, i64 %i.hh
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hk
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !19
  %i.ho = zext i8 %i.hn to i32
  %i.hp = mul nsw i32 %i.ho, %i.hd
  %i.hq = add nsw i32 %i.hp, %i.ha
  %i.hr = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !18
  %i.ht = sext i16 %i.hs to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !18
  %i.hw = sext i16 %i.hv to i64
  %i.hx = mul nsw i64 %3, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !18
  %i.ia = sext i16 %i.hz to i64
  %i.ib = getelementptr i8, ptr %2, i64 %i.hx
  %i.ic = getelementptr i8, ptr %i.ib, i64 %i.ia
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !19
  %i.ie = zext i8 %i.id to i32
  %i.if = mul nsw i32 %i.ie, %i.ht
  %i.ig = add nsw i32 %i.if, %i.hq
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 30
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !18
  %i.ij = sext i16 %i.ii to i32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !18
  %i.im = sext i16 %i.il to i64
  %i.in = mul nsw i64 %3, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !18
  %i.iq = sext i16 %i.ip to i64
  %i.ir = getelementptr i8, ptr %2, i64 %i.in
  %i.is = getelementptr i8, ptr %i.ir, i64 %i.iq
  %i.it = load i8, ptr %i.is, align 1, !tbaa !19
  %i.iu = zext i8 %i.it to i32
  %i.iv = mul nsw i32 %i.iu, %i.ij
  %i.iw = add nsw i32 %i.iv, %i.ig
  %i.ix = ashr i32 %i.iw, 14
  %7 = tail call i32 @llvm.smax.i32(i32 %i.ix, i32 0)
  %.0.i34 = tail call i32 @llvm.umin.i32(i32 %7, i32 255)
  %i.iy = trunc nuw i32 %.0.i34 to i8
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !85
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @remap4_16bit_line_c(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #1 {
bb.a:
  %i.a = sdiv i64 %3, 2                           ; 16 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.c = shl nuw nsw i64 %indvars.iv, 4           ; 3 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.c ; 16 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.c ; 16 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.c ; 16 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !18
  %i.h = sext i16 %i.g to i32
  %i.i = load i16, ptr %i.e, align 2, !tbaa !18
  %i.j = sext i16 %i.i to i64
  %i.k = mul nsw i64 %i.a, %i.j
  %i.l = load i16, ptr %i.d, align 2, !tbaa !18
  %i.m = sext i16 %i.l to i64
  %i.n = getelementptr [2 x i8], ptr %2, i64 %i.k
  %i.o = getelementptr [2 x i8], ptr %i.n, i64 %i.m
  %i.p = load i16, ptr %i.o, align 2, !tbaa !18
  %i.q = zext i16 %i.p to i32
  %i.r = mul nsw i32 %i.q, %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !18
  %i.u = sext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !18
  %i.x = sext i16 %i.w to i64
  %i.y = mul nsw i64 %i.a, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !18
  %i.ab = sext i16 %i.aa to i64
  %i.ac = getelementptr [2 x i8], ptr %2, i64 %i.y
  %i.ad = getelementptr [2 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !18
  %i.af = zext i16 %i.ae to i32
  %i.ag = mul nsw i32 %i.af, %i.u
  %i.ah = add nsw i32 %i.ag, %i.r
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !18
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.am = load i16, ptr %i.al, align 2, !tbaa !18
  %i.an = sext i16 %i.am to i64
  %i.ao = mul nsw i64 %i.a, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !18
  %i.ar = sext i16 %i.aq to i64
  %i.as = getelementptr [2 x i8], ptr %2, i64 %i.ao
  %i.at = getelementptr [2 x i8], ptr %i.as, i64 %i.ar
  %i.au = load i16, ptr %i.at, align 2, !tbaa !18
  %i.av = zext i16 %i.au to i32
  %i.aw = mul nsw i32 %i.av, %i.ak
  %i.ax = add nsw i32 %i.aw, %i.ah
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !18
  %i.ba = sext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !18
  %i.bd = sext i16 %i.bc to i64
  %i.be = mul nsw i64 %i.a, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !18
  %i.bh = sext i16 %i.bg to i64
  %i.bi = getelementptr [2 x i8], ptr %2, i64 %i.be
  %i.bj = getelementptr [2 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !18
  %i.bl = zext i16 %i.bk to i32
  %i.bm = mul nsw i32 %i.bl, %i.ba
  %i.bn = add nsw i32 %i.bm, %i.ax
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !18
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !18
  %i.bt = sext i16 %i.bs to i64
  %i.bu = mul nsw i64 %i.a, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !18
  %i.bx = sext i16 %i.bw to i64
  %i.by = getelementptr [2 x i8], ptr %2, i64 %i.bu
  %i.bz = getelementptr [2 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !18
  %i.cb = zext i16 %i.ca to i32
  %i.cc = mul nsw i32 %i.cb, %i.bq
  %i.cd = add nsw i32 %i.cc, %i.bn
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !18
  %i.cg = sext i16 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !18
  %i.cj = sext i16 %i.ci to i64
  %i.ck = mul nsw i64 %i.a, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !18
  %i.cn = sext i16 %i.cm to i64
  %i.co = getelementptr [2 x i8], ptr %2, i64 %i.ck
  %i.cp = getelementptr [2 x i8], ptr %i.co, i64 %i.cn
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !18
  %i.cr = zext i16 %i.cq to i32
  %i.cs = mul nsw i32 %i.cr, %i.cg
  %i.ct = add nsw i32 %i.cs, %i.cd
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !18
  %i.cw = sext i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !18
  %i.cz = sext i16 %i.cy to i64
  %i.da = mul nsw i64 %i.a, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !18
  %i.dd = sext i16 %i.dc to i64
  %i.de = getelementptr [2 x i8], ptr %2, i64 %i.da
  %i.df = getelementptr [2 x i8], ptr %i.de, i64 %i.dd
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !18
  %i.dh = zext i16 %i.dg to i32
  %i.di = mul nsw i32 %i.dh, %i.cw
  %i.dj = add nsw i32 %i.di, %i.ct
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !18
  %i.dm = sext i16 %i.dl to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !18
  %i.dp = sext i16 %i.do to i64
  %i.dq = mul nsw i64 %i.a, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !18
  %i.dt = sext i16 %i.ds to i64
  %i.du = getelementptr [2 x i8], ptr %2, i64 %i.dq
  %i.dv = getelementptr [2 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !18
  %i.dx = zext i16 %i.dw to i32
  %i.dy = mul nsw i32 %i.dx, %i.dm
  %i.dz = add nsw i32 %i.dy, %i.dj
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !18
  %i.ec = sext i16 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !18
  %i.ef = sext i16 %i.ee to i64
  %i.eg = mul nsw i64 %i.a, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !18
  %i.ej = sext i16 %i.ei to i64
  %i.ek = getelementptr [2 x i8], ptr %2, i64 %i.eg
  %i.el = getelementptr [2 x i8], ptr %i.ek, i64 %i.ej
  %i.em = load i16, ptr %i.el, align 2, !tbaa !18
  %i.en = zext i16 %i.em to i32
  %i.eo = mul nsw i32 %i.en, %i.ec
  %i.ep = add nsw i32 %i.eo, %i.dz
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !18
  %i.es = sext i16 %i.er to i32
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !18
  %i.ev = sext i16 %i.eu to i64
  %i.ew = mul nsw i64 %i.a, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !18
  %i.ez = sext i16 %i.ey to i64
  %i.fa = getelementptr [2 x i8], ptr %2, i64 %i.ew
  %i.fb = getelementptr [2 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !18
  %i.fd = zext i16 %i.fc to i32
  %i.fe = mul nsw i32 %i.fd, %i.es
  %i.ff = add nsw i32 %i.fe, %i.ep
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !18
  %i.fi = sext i16 %i.fh to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !18
  %i.fl = sext i16 %i.fk to i64
  %i.fm = mul nsw i64 %i.a, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !18
  %i.fp = sext i16 %i.fo to i64
  %i.fq = getelementptr [2 x i8], ptr %2, i64 %i.fm
  %i.fr = getelementptr [2 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !18
  %i.ft = zext i16 %i.fs to i32
  %i.fu = mul nsw i32 %i.ft, %i.fi
  %i.fv = add nsw i32 %i.fu, %i.ff
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !18
  %i.fy = sext i16 %i.fx to i32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !18
  %i.gb = sext i16 %i.ga to i64
  %i.gc = mul nsw i64 %i.a, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !18
  %i.gf = sext i16 %i.ge to i64
  %i.gg = getelementptr [2 x i8], ptr %2, i64 %i.gc
  %i.gh = getelementptr [2 x i8], ptr %i.gg, i64 %i.gf
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !18
  %i.gj = zext i16 %i.gi to i32
  %i.gk = mul nsw i32 %i.gj, %i.fy
  %i.gl = add nsw i32 %i.gk, %i.fv
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !18
  %i.go = sext i16 %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !18
  %i.gr = sext i16 %i.gq to i64
  %i.gs = mul nsw i64 %i.a, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !18
  %i.gv = sext i16 %i.gu to i64
  %i.gw = getelementptr [2 x i8], ptr %2, i64 %i.gs
  %i.gx = getelementptr [2 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !18
  %i.gz = zext i16 %i.gy to i32
  %i.ha = mul nsw i32 %i.gz, %i.go
  %i.hb = add nsw i32 %i.ha, %i.gl
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 26
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !18
  %i.he = sext i16 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !18
  %i.hh = sext i16 %i.hg to i64
  %i.hi = mul nsw i64 %i.a, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !18
  %i.hl = sext i16 %i.hk to i64
  %i.hm = getelementptr [2 x i8], ptr %2, i64 %i.hi
  %i.hn = getelementptr [2 x i8], ptr %i.hm, i64 %i.hl
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !18
  %i.hp = zext i16 %i.ho to i32
  %i.hq = mul nsw i32 %i.hp, %i.he
  %i.hr = add nsw i32 %i.hq, %i.hb
  %i.hs = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !18
  %i.hu = sext i16 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !18
  %i.hx = sext i16 %i.hw to i64
  %i.hy = mul nsw i64 %i.a, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !18
  %i.ib = sext i16 %i.ia to i64
  %i.ic = getelementptr [2 x i8], ptr %2, i64 %i.hy
  %i.id = getelementptr [2 x i8], ptr %i.ic, i64 %i.ib
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !18
  %i.if = zext i16 %i.ie to i32
  %i.ig = mul nsw i32 %i.if, %i.hu
  %i.ih = add nsw i32 %i.ig, %i.hr
  %i.ii = getelementptr inbounds nuw i8, ptr %i.f, i64 30
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !18
  %i.ik = sext i16 %i.ij to i32
  %i.il = getelementptr inbounds nuw i8, ptr %i.e, i64 30
  %i.im = load i16, ptr %i.il, align 2, !tbaa !18
  %i.in = sext i16 %i.im to i64
  %i.io = mul nsw i64 %i.a, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !18
  %i.ir = sext i16 %i.iq to i64
  %i.is = getelementptr [2 x i8], ptr %2, i64 %i.io
  %i.it = getelementptr [2 x i8], ptr %i.is, i64 %i.ir
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !18
  %i.iv = zext i16 %i.iu to i32
  %i.iw = mul nsw i32 %i.iv, %i.ik
  %i.ix = add nsw i32 %i.iw, %i.ih
  %i.iy = ashr i32 %i.ix, 14
  %7 = tail call i32 @llvm.smax.i32(i32 %i.iy, i32 0)
  %.0.i34 = tail call i32 @llvm.umin.i32(i32 %7, i32 65535)
  %i.iz = trunc nuw i32 %.0.i34 to i16
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.iz, ptr %i.ja, align 2, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !86
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @init(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 300
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.c, align 4, !tbaa !29
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 556 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph22, label %.critedge

.lr.ph22:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 540 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv25 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next26, %._crit_edge ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b, %._crit_edge, %bb.a
  tail call void @av_freep(ptr noundef nonnull %i.c) #17
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv25 ; 4 uses
  %i.j = load i32, ptr %i.g, align 4, !tbaa !32
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  tail call void @av_freep(ptr noundef nonnull %i.n) #17
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %i.o = load i32, ptr %i.d, align 4, !tbaa !30
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next26, %i.p
  br i1 %i.q, label %bb.b, label %.critedge, !llvm.loop !87

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.r) #17
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.s) #17
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.t) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.g, align 4, !tbaa !32
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.d, label %._crit_edge, !llvm.loop !88
}

; Function Attrs: nounwind uwtable
define internal i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33
  %.not = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not, ptr @query_formats.pix_fmts, ptr @query_formats.alpha_pix_fmts
  %i.f = tail call i32 @ff_set_pixel_formats_from_list2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.e) #17
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !29
  %i.h = icmp slt i32 %i.d, 0
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !89
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.i = tail call i32 @ff_filter_process_command(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #17 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.k = load i32, ptr %i.c, align 8, !tbaa !89
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 300
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.l, align 4, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = tail call i32 @config_output(ptr noundef %i.o)
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.0 = phi i32 [ %i.p, %bb.f ], [ %i.i, %.thread ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.ThreadData, align 8         ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !48
  %i.m = tail call ptr @ff_get_video_buffer(ptr noundef %i.f, i32 noundef %i.j, i32 noundef %i.l) #17 ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.m, ptr noundef %1) #17 ; 0 uses
  store ptr %1, ptr %2, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 608
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 556
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef %i.q, ptr noundef nonnull %2, ptr noundef null, i32 noundef %i.s) #17 ; 0 uses
  call void @av_frame_free(ptr noundef nonnull %i.a) #17
  %i.u = call i32 @ff_filter_frame(ptr noundef nonnull %i.f, ptr noundef nonnull %i.m) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.u, %bb.c ], [ -12, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.0
}

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @av_frame_free(ptr noundef) local_unnamed_addr #6

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
end_hunk_0
begin_hunk_1_@process_cube_coordinates:bb.a
bb.al:                                            ; preds = %bb.aj
  store float %i.ag, ptr %4, align 4, !tbaa !29
  %i.ai = fneg nsz float %.1
  br label %bb.as

bb.am:                                            ; preds = %bb.aj
  store float %.1, ptr %4, align 4, !tbaa !29
  br label %bb.as

bb.an:                                            ; preds = %bb.aj
  %i.aj = fneg nsz float %.1
  store float %i.aj, ptr %4, align 4, !tbaa !29
  %i.ak = fneg nsz float %i.ag
  br label %bb.as

bb.ao:                                            ; preds = %bb.aj
  store float %.1, ptr %4, align 4, !tbaa !29
  br label %bb.as

bb.ap:                                            ; preds = %bb.aj
  %i.al = fneg nsz float %.1
  store float %i.al, ptr %4, align 4, !tbaa !29
  %i.am = fneg nsz float %i.ag
  br label %bb.as

bb.aq:                                            ; preds = %bb.aj
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1382) #17
  tail call void @abort() #18
  unreachable

bb.ar:                                            ; preds = %bb.ai
  store float %.1, ptr %4, align 4, !tbaa !29
  br label %bb.as

bb.as:                                            ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.ar, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.g
  %.0122.sink = phi float [ %.0122, %bb.o ], [ %.0122, %bb.n ], [ %i.q, %bb.m ], [ %i.r, %bb.l ], [ %.0122, %bb.k ], [ %.0122, %bb.j ], [ %i.ae, %bb.ag ], [ %i.y, %bb.af ], [ %i.y, %bb.ae ], [ %i.ac, %bb.ad ], [ %.1, %bb.ac ], [ %i.z, %bb.ab ], [ %.1, %bb.ak ], [ %i.ai, %bb.al ], [ %i.ag, %bb.am ], [ %i.ak, %bb.an ], [ %i.ag, %bb.ao ], [ %i.am, %bb.ap ], [ %.0122, %bb.ar ], [ %.0122, %bb.s ], [ %.0122, %bb.t ], [ %i.u, %bb.u ], [ %i.w, %bb.v ], [ %.0122, %bb.w ], [ %.0122, %bb.x ], [ %.0122, %bb.g ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 5, %bb.k ], [ 4, %bb.j ], [ 2, %bb.ag ], [ 2, %bb.af ], [ 4, %bb.ae ], [ 5, %bb.ad ], [ 2, %bb.ac ], [ 2, %bb.ab ], [ 3, %bb.ak ], [ 3, %bb.al ], [ 4, %bb.am ], [ 5, %bb.an ], [ 3, %bb.ao ], [ 3, %bb.ap ], [ %3, %bb.ar ], [ 5, %bb.s ], [ 4, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.w ], [ 1, %bb.x ], [ %3, %bb.g ]
  store float %.0122.sink, ptr %5, align 4, !tbaa !29
  %i.an = sext i32 %.0 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !57 ; 2 uses
  store i32 %i.ap, ptr %6, align 4, !tbaa !57
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !57
  switch i32 %i.as, label %bb.aw [
    i32 0, label %rotate_cube_face.exit
    i32 1, label %bb.at
    i32 2, label %bb.au
    i32 3, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  %i.at = load float, ptr %4, align 4, !tbaa !29
  %i.au = fneg nsz float %.0122.sink
  store float %i.au, ptr %4, align 4, !tbaa !29
  br label %.sink.split.i73

bb.au:                                            ; preds = %bb.as
  %i.av = load float, ptr %4, align 4, !tbaa !29
  %i.aw = fneg nsz float %i.av
  store float %i.aw, ptr %4, align 4, !tbaa !29
  %i.ax = load float, ptr %5, align 4, !tbaa !29
  %i.ay = fneg nsz float %i.ax
  br label %.sink.split.i73

bb.av:                                            ; preds = %bb.as
  %i.az = load float, ptr %4, align 4, !tbaa !29
  %i.ba = fneg nsz float %i.az
  store float %.0122.sink, ptr %4, align 4, !tbaa !29
  br label %.sink.split.i73

bb.aw:                                            ; preds = %bb.as
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1008) #17
  tail call void @abort() #18
  unreachable

.sink.split.i73:                                  ; preds = %bb.av, %bb.au, %bb.at
  %.sink.i74 = phi float [ %i.ba, %bb.av ], [ %i.ay, %bb.au ], [ %i.at, %bb.at ]
  store float %.sink.i74, ptr %5, align 4, !tbaa !29
  br label %rotate_cube_face.exit

rotate_cube_face.exit:                            ; preds = %bb.as, %.sink.split.i73
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.acos.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nounwind uwtable
define internal fastcc void @cube_to_xyz(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, float noundef %5, float noundef %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = sext i32 %3 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !57
  %i.e = fdiv nsz float %1, %5                    ; 4 uses
  %i.f = fdiv nsz float %2, %6                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !57
  switch i32 %i.i, label %bb.e [
    i32 0, label %rotate_cube_face_inverse.exit
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = fneg nsz float %i.e
  br label %rotate_cube_face_inverse.exit

bb.c:                                             ; preds = %bb.a
  %i.k = fneg nsz float %i.e
  %i.l = fneg nsz float %i.f
  br label %rotate_cube_face_inverse.exit

bb.d:                                             ; preds = %bb.a
  %i.m = fneg nsz float %i.f
  br label %rotate_cube_face_inverse.exit

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1034) #17
  tail call void @abort() #18
  unreachable

rotate_cube_face_inverse.exit:                    ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.1 = phi nsz float [ %i.e, %bb.a ], [ %i.f, %bb.b ], [ %i.k, %bb.c ], [ %i.m, %bb.d ] ; 6 uses
  %.032 = phi nsz float [ %i.f, %bb.a ], [ %i.j, %bb.b ], [ %i.l, %bb.c ], [ %i.e, %bb.d ] ; 6 uses
  switch i32 %i.d, label %bb.k [
    i32 0, label %bb.f
    i32 1, label %bb.l
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
  ]

bb.f:                                             ; preds = %rotate_cube_face_inverse.exit
  %i.n = fneg nsz float %.1
  br label %bb.l

bb.g:                                             ; preds = %rotate_cube_face_inverse.exit
  br label %bb.l

bb.h:                                             ; preds = %rotate_cube_face_inverse.exit
  %i.o = fneg nsz float %.032
  br label %bb.l

bb.i:                                             ; preds = %rotate_cube_face_inverse.exit
  br label %bb.l

bb.j:                                             ; preds = %rotate_cube_face_inverse.exit
  %i.p = fneg nsz float %.1
  br label %bb.l

bb.k:                                             ; preds = %rotate_cube_face_inverse.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1119) #17
  tail call void @abort() #18
  unreachable

bb.l:                                             ; preds = %rotate_cube_face_inverse.exit, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.013 = phi nsz float [ 1.000000e+00, %bb.f ], [ %i.p, %bb.j ], [ %.1, %bb.g ], [ %.1, %bb.h ], [ %.1, %bb.i ], [ -1.000000e+00, %rotate_cube_face_inverse.exit ]
  %.012 = phi nsz float [ %.032, %bb.f ], [ %.032, %bb.j ], [ -1.000000e+00, %bb.g ], [ 1.000000e+00, %bb.h ], [ %.032, %bb.i ], [ %.032, %rotate_cube_face_inverse.exit ]
  %.0 = phi nsz float [ %i.n, %bb.f ], [ -1.000000e+00, %bb.j ], [ %.032, %bb.g ], [ %i.o, %bb.h ], [ 1.000000e+00, %bb.i ], [ %.1, %rotate_cube_face_inverse.exit ]
  store float %.013, ptr %4, align 4, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %.012, ptr %i.q, align 4, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %.0, ptr %i.r, align 4, !tbaa !29
  ret void
}

declare ptr @av_default_item_name(ptr noundef) #6

declare void @av_freep(ptr noundef) local_unnamed_addr #6

declare i32 @ff_set_pixel_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.asin.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.lrint.v2i64.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tan.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sin.v2f32(<2 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.atan2.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"float", !5, i64 0}
!13 = !{!"p1 _ZTS12SliceXYRemap", !9, i64 0}
!14 = !{!"V360Context", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !5, i64 80, !5, i64 104, !5, i64 128, !5, i64 152, !5, i64 176, !6, i64 188, !6, i64 192, !12, i64 196, !12, i64 200, !6, i64 204, !6, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !5, i64 284, !5, i64 292, !5, i64 300, !5, i64 332, !6, i64 344, !6, i64 348, !6, i64 352, !6, i64 356, !5, i64 360, !5, i64 376, !5, i64 392, !5, i64 408, !5, i64 424, !5, i64 440, !5, i64 456, !5, i64 472, !5, i64 488, !5, i64 504, !5, i64 520, !6, i64 536, !6, i64 540, !6, i64 544, !6, i64 548, !6, i64 552, !6, i64 556, !13, i64 560, !5, i64 568, !9, i64 584, !9, i64 592, !9, i64 600, !9, i64 608, !9, i64 616}
!15 = !{!14, !6, i64 16}
!16 = !{!14, !9, i64 616}
!17 = !{!"short", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!22 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!23 = !{!"any p2 pointer", !9, i64 0}
!24 = !{!"p2 _ZTS12AVFilterLink", !23, i64 0}
!25 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!26 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!27 = !{!"AVFilterContext", !10, i64 0, !21, i64 8, !11, i64 16, !22, i64 24, !24, i64 32, !6, i64 40, !22, i64 48, !24, i64 56, !6, i64 64, !9, i64 72, !25, i64 80, !6, i64 88, !6, i64 92, !11, i64 96, !6, i64 104, !26, i64 112, !6, i64 120}
!28 = !{!27, !9, i64 72}
!29 = !{!12, !12, i64 0}
!30 = !{!14, !6, i64 556}
!31 = !{!14, !13, i64 560}
!32 = !{!14, !6, i64 540}
!33 = !{!14, !6, i64 20}
!34 = !{!14, !12, i64 220}
!35 = !{!27, !24, i64 56}
!36 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!39 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!40 = !{!"AVRational", !6, i64 0, !6, i64 4}
!41 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!42 = !{!"p2 _ZTS15AVFrameSideData", !23, i64 0}
!43 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!44 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!45 = !{!"AVFilterFormatsConfig", !43, i64 0, !43, i64 8, !44, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!46 = !{!"AVFilterLink", !39, i64 0, !22, i64 8, !39, i64 16, !22, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !40, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !41, i64 72, !40, i64 96, !42, i64 104, !6, i64 112, !6, i64 116, !45, i64 120, !45, i64 168}
!47 = !{!46, !6, i64 40}
!48 = !{!46, !6, i64 44}
!49 = !{!"ThreadData", !38, i64 0, !38, i64 8}
!50 = !{!49, !38, i64 0}
!51 = !{!49, !38, i64 8}
!52 = !{!14, !9, i64 608}
!53 = !{!14, !6, i64 548}
!54 = !{!14, !6, i64 552}
!55 = !{!14, !9, i64 600}
!56 = !{!14, !6, i64 544}
!57 = !{!6, !6, i64 0}
!58 = !{!14, !12, i64 272}
!59 = !{!14, !12, i64 276}
!60 = !{!14, !6, i64 252}
!61 = !{!14, !9, i64 584}
!62 = !{!14, !9, i64 592}
!63 = !{!14, !12, i64 260}
!64 = !{!14, !12, i64 264}
!65 = !{!14, !6, i64 256}
!66 = !{!14, !6, i64 192}
!67 = !{!14, !6, i64 536}
!68 = !{!"p1 short", !9, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"SliceXYRemap", !5, i64 0, !5, i64 16, !5, i64 32, !11, i64 48}
!71 = !{!70, !11, i64 48}
!72 = !{!"llvm.loop.unswitch.partial.disable"}
!73 = !{!11, !11, i64 0}
!74 = !{!14, !6, i64 204}
!75 = !{!14, !12, i64 196}
!76 = !{!"branch_weights", i32 1, i32 1048575}
!77 = !{!14, !6, i64 208}
!78 = !{!14, !12, i64 200}
!79 = distinct !{!79, !20}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, !20}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !20}
!89 = !{!14, !6, i64 24}
!90 = !{!38, !38, i64 0}
!91 = !{!46, !39, i64 16}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20, !72}
!94 = !{!46, !39, i64 0}
!95 = !{!27, !24, i64 32}
!96 = !{!46, !6, i64 36}
!97 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!98 = !{!97, !6, i64 16}
!99 = !{!14, !11, i64 72}
!100 = !{!14, !6, i64 188}
!101 = !{!"long", !5, i64 0}
!102 = !{!"AVPixFmtDescriptor", !11, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !101, i64 16, !5, i64 24, !11, i64 104}
!103 = !{!102, !5, i64 9}
!104 = !{!102, !5, i64 10}
!105 = !{!14, !6, i64 344}
!106 = !{!14, !6, i64 348}
!107 = !{!14, !6, i64 8}
!108 = !{!14, !12, i64 280}
!109 = !{!14, !6, i64 12}
!110 = !{!14, !6, i64 28}
!111 = !{!14, !6, i64 32}
!112 = !{!14, !12, i64 268}
!113 = !{!102, !101, i64 16}
!114 = !{!14, !12, i64 212}
!115 = !{!14, !12, i64 216}
!116 = !{!14, !6, i64 248}
!117 = distinct !{!117, !20, !72}
!118 = distinct !{!118, !20}
!119 = distinct !{!119, !20}
end_hunk_1
