Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/output?download=true
inline.NumInlined: 20
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 280
loop-unroll.NumUnrolled: 280
begin_hunk_0_@yuv2p010l1_LE_c:bb.a
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 16)
  %i.h = ashr <8 x i32> %i.g, splat (i32 5)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 1023))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = shl nuw <8 x i16> %i.k, splat (i16 6)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count29.i
  br i1 %cmp.n, label %yuv2p01xl1_c.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i, %middle.block
  %indvars.iv26.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count29.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv26.i.ph
  %i.p = load i16, ptr %i.o, align 2, !tbaa !107
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 16
  %i.s = ashr i32 %i.r, 5
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.t, i32 1023)
  %.0.i.us.i.tr.prol = trunc nuw nsw i32 %i.u to i16
  %i.v = shl nuw i16 %.0.i.us.i.tr.prol, 6
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv26.i.ph
  store i16 %i.v, ptr %i.w, align 1, !tbaa !108
  %indvars.iv.next27.i.prol = or disjoint i64 %indvars.iv26.i.ph, 1
  br label %.lr.ph.split.us.i.prol.loopexit

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %indvars.iv26.i.unr = phi i64 [ %indvars.iv26.i.ph, %.lr.ph.split.us.i.preheader ], [ %indvars.iv.next27.i.prol, %.lr.ph.split.us.i.prol ]
  %i.x = add nsw i64 %wide.trip.count29.i, -1
  %i.y = icmp eq i64 %indvars.iv26.i.ph, %i.x
  br i1 %i.y, label %yuv2p01xl1_c.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i.1, %.lr.ph.split.us.i ], [ %indvars.iv26.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv26.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, 16
  %i.ad = ashr i32 %i.ac, 5
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 1023)
  %.0.i.us.i.tr = trunc nuw nsw i32 %i.af to i16
  %i.ag = shl nuw i16 %.0.i.us.i.tr, 6
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv26.i
  store i16 %i.ag, ptr %i.ah, align 1, !tbaa !108
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next27.i
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !107
  %i.ak = sext i16 %i.aj to i32
  %i.al = add nsw i32 %i.ak, 16
  %i.am = ashr i32 %i.al, 5
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.an, i32 1023)
  %.0.i.us.i.tr.1 = trunc nuw nsw i32 %i.ao to i16
  %i.ap = shl nuw i16 %.0.i.us.i.tr.1, 6
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next27.i
  store i16 %i.ap, ptr %i.aq, align 1, !tbaa !108
  %indvars.iv.next27.i.1 = add nuw nsw i64 %indvars.iv26.i, 2 ; 2 uses
  %exitcond30.not.i.1 = icmp eq i64 %indvars.iv.next27.i.1, %wide.trip.count29.i
  br i1 %exitcond30.not.i.1, label %yuv2p01xl1_c.exit, label %.lr.ph.split.us.i, !llvm.loop !132

yuv2p01xl1_c.exit:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2p010lX_BE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph36.i, label %yuv2p01xlX_c.exit

.lr.ph36.i:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.us39.preheader.i, label %._crit_edge37.sink.split.i

.lr.ph.us39.preheader.i:                          ; preds = %.lr.ph36.i
  %wide.trip.count54.i = zext nneg i32 %4 to i64
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.c = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us39.i

.lr.ph.us39.i:                                    ; preds = %._crit_edge.us42.i, %.lr.ph.us39.preheader.i
  %indvars.iv51.i = phi i64 [ 0, %.lr.ph.us39.preheader.i ], [ %indvars.iv.next52.i, %._crit_edge.us42.i ] ; 7 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us39.i.new

.lr.ph.us39.i.new:                                ; preds = %.lr.ph.us39.i, %.lr.ph.us39.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.us39.i.new ], [ 0, %.lr.ph.us39.i ] ; 6 uses
  %.033.us40.i = phi i32 [ %i.aq, %.lr.ph.us39.i.new ], [ 65536, %.lr.ph.us39.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us39.i.new ], [ 0, %.lr.ph.us39.i ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv51.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !107
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add nsw i32 %i.l, %.033.us40.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv51.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.t = load i16, ptr %i.s, align 2, !tbaa !107
  %i.u = sext i16 %i.t to i32
  %i.v = mul nsw i32 %i.u, %i.r
  %i.w = add nsw i32 %i.v, %i.m
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.1
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv51.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i.1
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !107
  %i.ae = sext i16 %i.ad to i32
  %i.af = mul nsw i32 %i.ae, %i.ab
  %i.ag = add nsw i32 %i.af, %i.w
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.2
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv51.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !107
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i.2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !107
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %i.ao, %i.al
  %i.aq = add nsw i32 %i.ap, %i.ag                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us42.i.unr-lcssa, label %.lr.ph.us39.i.new, !llvm.loop !0

._crit_edge.us42.i.unr-lcssa:                     ; preds = %.lr.ph.us39.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us42.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us42.i.unr-lcssa, %.lr.ph.us39.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.us39.i ], [ %indvars.iv.next.i.3, %._crit_edge.us42.i.unr-lcssa ]
  %.033.us40.i.epil.init = phi i32 [ 65536, %.lr.ph.us39.i ], [ %i.aq, %._crit_edge.us42.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %bb.b ], [ %indvars.iv.i.epil.init, %.epil.preheader ] ; 3 uses
  %.033.us40.i.epil = phi i32 [ %i.ba, %bb.b ], [ %.033.us40.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !111
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv51.i
  %i.au = load i16, ptr %i.at, align 2, !tbaa !107
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.epil
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !107
  %i.ay = sext i16 %i.ax to i32
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = add nsw i32 %i.az, %.033.us40.i.epil    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us42.i, label %bb.b, !llvm.loop !133

._crit_edge.us42.i:                               ; preds = %bb.b, %._crit_edge.us42.i.unr-lcssa
  %.lcssa = phi i32 [ %i.aq, %._crit_edge.us42.i.unr-lcssa ], [ %i.ba, %bb.b ]
  %i.bb = ashr i32 %.lcssa, 17
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 1023)
  %.0.i31.us.i.tr = trunc nuw nsw i32 %i.bd to i16
  %i.be = shl nuw i16 %.0.i31.us.i.tr, 6
  %i.bf = tail call i16 @llvm.bswap.i16(i16 %i.be)
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv51.i
  store i16 %i.bf, ptr %i.bg, align 1, !tbaa !108
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count54.i
  br i1 %exitcond55.not.i, label %yuv2p01xlX_c.exit, label %.lr.ph.us39.i, !llvm.loop !1

._crit_edge37.sink.split.i:                       ; preds = %.lr.ph36.i
  %i.bh = shl nuw i32 %4, 1
  %i.bi = zext i32 %i.bh to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.bi, i1 false), !tbaa !108
  br label %yuv2p01xlX_c.exit

yuv2p01xlX_c.exit:                                ; preds = %._crit_edge.us42.i, %bb.a, %._crit_edge37.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2p010lX_LE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph36.i, label %yuv2p01xlX_c.exit

.lr.ph36.i:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.us.us.preheader.i, label %._crit_edge37.sink.split.i

.lr.ph.us.us.preheader.i:                         ; preds = %.lr.ph36.i
  %wide.trip.count67.i = zext nneg i32 %4 to i64
  %wide.trip.count62.i = zext nneg i32 %1 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count62.i, 3     ; 3 uses
  %i.c = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count62.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph.us.us.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph.us.us.preheader.i ], [ %indvars.iv.next65.i, %._crit_edge.us.us.i ] ; 7 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 6 uses
  %.033.us.us.i = phi i32 [ %i.aq, %.lr.ph.us.us.i.new ], [ 65536, %.lr.ph.us.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv59.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv64.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !107
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv59.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add nsw i32 %i.l, %.033.us.us.i
  %indvars.iv.next60.i = or disjoint i64 %indvars.iv59.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next60.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv64.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next60.i
  %i.t = load i16, ptr %i.s, align 2, !tbaa !107
  %i.u = sext i16 %i.t to i32
  %i.v = mul nsw i32 %i.u, %i.r
  %i.w = add nsw i32 %i.v, %i.m
  %indvars.iv.next60.i.1 = or disjoint i64 %indvars.iv59.i, 2 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next60.i.1
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv64.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next60.i.1
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !107
  %i.ae = sext i16 %i.ad to i32
  %i.af = mul nsw i32 %i.ae, %i.ab
  %i.ag = add nsw i32 %i.af, %i.w
  %indvars.iv.next60.i.2 = or disjoint i64 %indvars.iv59.i, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next60.i.2
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv64.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !107
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next60.i.2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !107
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %i.ao, %i.al
  %i.aq = add nsw i32 %i.ap, %i.ag                ; 3 uses
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !0

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next60.i.3, %._crit_edge.us.us.i.unr-lcssa ]
  %.033.us.us.i.epil.init = phi i32 [ 65536, %.lr.ph.us.us.i ], [ %i.aq, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv59.i.epil = phi i64 [ %indvars.iv.next60.i.epil, %bb.b ], [ %indvars.iv59.i.epil.init, %.epil.preheader ] ; 3 uses
  %.033.us.us.i.epil = phi i32 [ %i.ba, %bb.b ], [ %.033.us.us.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv59.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !111
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv64.i
  %i.au = load i16, ptr %i.at, align 2, !tbaa !107
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv59.i.epil
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !107
  %i.ay = sext i16 %i.ax to i32
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = add nsw i32 %i.az, %.033.us.us.i.epil   ; 2 uses
  %indvars.iv.next60.i.epil = add nuw nsw i64 %indvars.iv59.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i, label %bb.b, !llvm.loop !134

._crit_edge.us.us.i:                              ; preds = %bb.b, %._crit_edge.us.us.i.unr-lcssa
  %.lcssa = phi i32 [ %i.aq, %._crit_edge.us.us.i.unr-lcssa ], [ %i.ba, %bb.b ]
  %i.bb = ashr i32 %.lcssa, 17
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 1023)
  %.0.i.us.us.i.tr = trunc nuw nsw i32 %i.bd to i16
  %i.be = shl nuw i16 %.0.i.us.us.i.tr, 6
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv64.i
  store i16 %i.be, ptr %i.bf, align 1, !tbaa !108
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %yuv2p01xlX_c.exit, label %.lr.ph.us.us.i, !llvm.loop !1

._crit_edge37.sink.split.i:                       ; preds = %.lr.ph36.i
  %i.bg = shl nuw i32 %4, 1
  %i.bh = zext i32 %i.bg to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.bh, i1 false), !tbaa !108
  br label %yuv2p01xlX_c.exit

yuv2p01xlX_c.exit:                                ; preds = %._crit_edge.us.us.i, %bb.a, %._crit_edge37.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2p010cX_BE_c(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7) #3 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph7.i, label %yuv2p01xcX_c.exit

.lr.ph7.i:                                        ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %wide.trip.count43.i = zext nneg i32 %7 to i64  ; 2 uses
  br i1 %i.b, label %.lr.ph.us10.preheader.i, label %._crit_edge8.sink.split.i

.lr.ph.us10.preheader.i:                          ; preds = %.lr.ph7.i
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.c = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod14 = trunc i32 %3 to i1
  br label %.lr.ph.us10.i

.lr.ph.us10.i:                                    ; preds = %._crit_edge.us14.i, %.lr.ph.us10.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.us10.preheader.i ], [ %indvars.iv.next28.i, %._crit_edge.us14.i ] ; 8 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us10.i.new

.lr.ph.us10.i.new:                                ; preds = %.lr.ph.us10.i, %.lr.ph.us10.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.us10.i.new ], [ 0, %.lr.ph.us10.i ] ; 5 uses
  %.03.us11.i = phi i32 [ %i.ak, %.lr.ph.us10.i.new ], [ 65536, %.lr.ph.us10.i ]
  %.0472.us12.i = phi i32 [ %i.ad, %.lr.ph.us10.i.new ], [ 65536, %.lr.ph.us10.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us10.i.new ], [ 0, %.lr.ph.us10.i ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv27.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !107
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add i32 %i.l, %.0472.us12.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv27.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = mul nsw i32 %i.r, %i.k
  %i.t = add i32 %i.s, %.03.us11.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv27.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !107
  %i.y = sext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32                   ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.y
  %i.ad = add i32 %i.ac, %i.m                     ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv27.i
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !107
  %i.ai = sext i16 %i.ah to i32
  %i.aj = mul nsw i32 %i.ai, %i.ab
  %i.ak = add i32 %i.aj, %i.t                     ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us14.i.unr-lcssa, label %.lr.ph.us10.i.new, !llvm.loop !2

._crit_edge.us14.i.unr-lcssa:                     ; preds = %.lr.ph.us10.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us14.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us14.i.unr-lcssa, %.lr.ph.us10.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.us10.i ], [ %indvars.iv.next.i.1, %._crit_edge.us14.i.unr-lcssa ] ; 3 uses
  %.03.us11.i.epil.init = phi i32 [ 65536, %.lr.ph.us10.i ], [ %i.ak, %._crit_edge.us14.i.unr-lcssa ]
  %.0472.us12.i.epil.init = phi i32 [ 65536, %.lr.ph.us10.i ], [ %i.ad, %._crit_edge.us14.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i.epil.init
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !111
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv27.i
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !107
  %i.ap = sext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !107
  %i.as = sext i16 %i.ar to i32                   ; 2 uses
  %i.at = mul nsw i32 %i.as, %i.ap
  %i.au = add i32 %i.at, %.0472.us12.i.epil.init
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !111
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv27.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !107
  %i.az = sext i16 %i.ay to i32
  %i.ba = mul nsw i32 %i.az, %i.as
  %i.bb = add i32 %i.ba, %.03.us11.i.epil.init
  br label %._crit_edge.us14.i

._crit_edge.us14.i:                               ; preds = %._crit_edge.us14.i.unr-lcssa, %.epil.preheader
  %.lcssa11 = phi i32 [ %i.ad, %._crit_edge.us14.i.unr-lcssa ], [ %i.au, %.epil.preheader ]
  %.lcssa = phi i32 [ %i.ak, %._crit_edge.us14.i.unr-lcssa ], [ %i.bb, %.epil.preheader ]
  %i.bc = ashr i32 %.lcssa11, 17
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 0)
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 1023)
  %.0.i61.us.i.tr = trunc nuw nsw i32 %i.be to i16
  %i.bf = shl nuw i16 %.0.i61.us.i.tr, 6
  %i.bg = tail call i16 @llvm.bswap.i16(i16 %i.bf)
  %.idx.i = shl nuw nsw i64 %indvars.iv27.i, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i ; 2 uses
  store i16 %i.bg, ptr %i.bh, align 1, !tbaa !108
  %i.bi = ashr i32 %.lcssa, 17
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 1023)
  %.0.i53.us.i.tr = trunc nuw nsw i32 %i.bk to i16
  %i.bl = shl nuw i16 %.0.i53.us.i.tr, 6
  %i.bm = tail call i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i16 %i.bm, ptr %i.bn, align 1, !tbaa !108
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count43.i
  br i1 %exitcond31.not.i, label %yuv2p01xcX_c.exit, label %.lr.ph.us10.i, !llvm.loop !3

._crit_edge8.sink.split.i:                        ; preds = %.lr.ph7.i
  %i.bo = shl nuw nsw i64 %wide.trip.count43.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %i.bo, i1 false), !tbaa !108
  br label %yuv2p01xcX_c.exit

yuv2p01xcX_c.exit:                                ; preds = %._crit_edge.us14.i, %bb.a, %._crit_edge8.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2p010cX_LE_c(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7) #3 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph7.i, label %yuv2p01xcX_c.exit

.lr.ph7.i:                                        ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %wide.trip.count43.i = zext nneg i32 %7 to i64  ; 2 uses
  br i1 %i.b, label %.lr.ph.us.us.preheader.i, label %._crit_edge8.sink.split.i

.lr.ph.us.us.preheader.i:                         ; preds = %.lr.ph7.i
  %wide.trip.count38.i = zext nneg i32 %3 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count38.i, 1
  %i.c = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count38.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod14 = trunc i32 %3 to i1
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph.us.us.preheader.i
  %indvars.iv40.i = phi i64 [ 0, %.lr.ph.us.us.preheader.i ], [ %indvars.iv.next41.i, %._crit_edge.us.us.i ] ; 8 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.1, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 5 uses
  %.03.us.us.i = phi i32 [ %i.ak, %.lr.ph.us.us.i.new ], [ 65536, %.lr.ph.us.us.i ]
  %.0472.us.us.i = phi i32 [ %i.ad, %.lr.ph.us.us.i.new ], [ 65536, %.lr.ph.us.us.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv35.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv40.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !107
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv35.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add i32 %i.l, %.0472.us.us.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv40.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = mul nsw i32 %i.r, %i.k
  %i.t = add i32 %i.s, %.03.us.us.i
  %indvars.iv.next36.i = or disjoint i64 %indvars.iv35.i, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next36.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv40.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !107
  %i.y = sext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next36.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32                   ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.y
  %i.ad = add i32 %i.ac, %i.m                     ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv40.i
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !107
  %i.ai = sext i16 %i.ah to i32
  %i.aj = mul nsw i32 %i.ai, %i.ab
  %i.ak = add i32 %i.aj, %i.t                     ; 3 uses
  %indvars.iv.next36.i.1 = add nuw nsw i64 %indvars.iv35.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !2

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv35.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next36.i.1, %._crit_edge.us.us.i.unr-lcssa ] ; 3 uses
  %.03.us.us.i.epil.init = phi i32 [ 65536, %.lr.ph.us.us.i ], [ %i.ak, %._crit_edge.us.us.i.unr-lcssa ]
  %.0472.us.us.i.epil.init = phi i32 [ 65536, %.lr.ph.us.us.i ], [ %i.ad, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv35.i.epil.init
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !111
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv40.i
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !107
  %i.ap = sext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv35.i.epil.init
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !107
  %i.as = sext i16 %i.ar to i32                   ; 2 uses
  %i.at = mul nsw i32 %i.as, %i.ap
  %i.au = add i32 %i.at, %.0472.us.us.i.epil.init
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.i.epil.init
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !111
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv40.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !107
  %i.az = sext i16 %i.ay to i32
  %i.ba = mul nsw i32 %i.az, %i.as
  %i.bb = add i32 %i.ba, %.03.us.us.i.epil.init
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.epil.preheader
  %.lcssa11 = phi i32 [ %i.ad, %._crit_edge.us.us.i.unr-lcssa ], [ %i.au, %.epil.preheader ]
  %.lcssa = phi i32 [ %i.ak, %._crit_edge.us.us.i.unr-lcssa ], [ %i.bb, %.epil.preheader ]
  %i.bc = ashr i32 %.lcssa11, 17
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 0)
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 1023)
  %.0.i57.us.us.i.tr = trunc nuw nsw i32 %i.be to i16
  %i.bf = shl nuw i16 %.0.i57.us.us.i.tr, 6
  %.idx46.i = shl nuw nsw i64 %indvars.iv40.i, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 %.idx46.i ; 2 uses
  store i16 %i.bf, ptr %i.bg, align 1, !tbaa !108
  %i.bh = ashr i32 %.lcssa, 17
  %i.bi = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 0)
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 1023)
  %.0.i.us.us.i.tr = trunc nuw nsw i32 %i.bj to i16
  %i.bk = shl nuw i16 %.0.i.us.us.i.tr, 6
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i16 %i.bk, ptr %i.bl, align 1, !tbaa !108
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next41.i, %wide.trip.count43.i
  br i1 %exitcond44.not.i, label %yuv2p01xcX_c.exit, label %.lr.ph.us.us.i, !llvm.loop !3

._crit_edge8.sink.split.i:                        ; preds = %.lr.ph7.i
  %i.bm = shl nuw nsw i64 %wide.trip.count43.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %i.bm, i1 false), !tbaa !108
  br label %yuv2p01xcX_c.exit

yuv2p01xcX_c.exit:                                ; preds = %._crit_edge.us.us.i, %bb.a, %._crit_edge8.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2p012l1_BE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.i, label %yuv2p01xl1_c.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count29.i = zext nneg i32 %2 to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.split.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count29.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 4)
  %i.h = ashr <8 x i32> %i.g, splat (i32 3)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 4095))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = shl nuw <8 x i16> %i.k, splat (i16 4)
  %i.m = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.l)
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.m, ptr %i.n, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count29.i
  br i1 %cmp.n, label %yuv2p01xl1_c.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count29.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.ph
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = add nsw i32 %i.r, 4
  %i.t = ashr i32 %i.s, 3
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.u, i32 4095)
  %.0.i22.i.tr.prol = trunc nuw nsw i32 %i.v to i16
  %i.w = shl nuw i16 %.0.i22.i.tr.prol, 4
  %i.x = tail call i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.ph
  store i16 %i.x, ptr %i.y, align 1, !tbaa !108
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.split.i.prol ]
  %i.z = add nsw i64 %wide.trip.count29.i, -1
  %i.aa = icmp eq i64 %indvars.iv.i.ph, %i.z
  br i1 %i.aa, label %yuv2p01xl1_c.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ %indvars.iv.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, 4
  %i.af = ashr i32 %i.ae, 3
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 4095)
  %.0.i22.i.tr = trunc nuw nsw i32 %i.ah to i16
  %i.ai = shl nuw i16 %.0.i22.i.tr, 4
  %i.aj = tail call i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  store i16 %i.aj, ptr %i.ak, align 1, !tbaa !108
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = add nsw i32 %i.an, 4
  %i.ap = ashr i32 %i.ao, 3
  %i.aq = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 0)
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 4095)
  %.0.i22.i.tr.1 = trunc nuw nsw i32 %i.ar to i16
  %i.as = shl nuw i16 %.0.i22.i.tr.1, 4
  %i.at = tail call i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.i
  store i16 %i.at, ptr %i.au, align 1, !tbaa !108
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count29.i
  br i1 %exitcond.not.i.1, label %yuv2p01xl1_c.exit, label %.lr.ph.split.i, !llvm.loop !136

yuv2p01xl1_c.exit:                                ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2p012l1_LE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.i, label %yuv2p01xl1_c.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count29.i = zext nneg i32 %2 to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count29.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 4)
  %i.h = ashr <8 x i32> %i.g, splat (i32 3)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 4095))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = shl nuw <8 x i16> %i.k, splat (i16 4)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count29.i
  br i1 %cmp.n, label %yuv2p01xl1_c.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i, %middle.block
  %indvars.iv26.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count29.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv26.i.ph
  %i.p = load i16, ptr %i.o, align 2, !tbaa !107
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 4
  %i.s = ashr i32 %i.r, 3
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.t, i32 4095)
  %.0.i.us.i.tr.prol = trunc nuw nsw i32 %i.u to i16
  %i.v = shl nuw i16 %.0.i.us.i.tr.prol, 4
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv26.i.ph
  store i16 %i.v, ptr %i.w, align 1, !tbaa !108
  %indvars.iv.next27.i.prol = or disjoint i64 %indvars.iv26.i.ph, 1
  br label %.lr.ph.split.us.i.prol.loopexit

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %indvars.iv26.i.unr = phi i64 [ %indvars.iv26.i.ph, %.lr.ph.split.us.i.preheader ], [ %indvars.iv.next27.i.prol, %.lr.ph.split.us.i.prol ]
  %i.x = add nsw i64 %wide.trip.count29.i, -1
  %i.y = icmp eq i64 %indvars.iv26.i.ph, %i.x
  br i1 %i.y, label %yuv2p01xl1_c.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i.1, %.lr.ph.split.us.i ], [ %indvars.iv26.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv26.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, 4
  %i.ad = ashr i32 %i.ac, 3
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 4095)
  %.0.i.us.i.tr = trunc nuw nsw i32 %i.af to i16
  %i.ag = shl nuw i16 %.0.i.us.i.tr, 4
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv26.i
  store i16 %i.ag, ptr %i.ah, align 1, !tbaa !108
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next27.i
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !107
  %i.ak = sext i16 %i.aj to i32
  %i.al = add nsw i32 %i.ak, 4
  %i.am = ashr i32 %i.al, 3
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.an, i32 4095)
  %.0.i.us.i.tr.1 = trunc nuw nsw i32 %i.ao to i16
  %i.ap = shl nuw i16 %.0.i.us.i.tr.1, 4
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next27.i
  store i16 %i.ap, ptr %i.aq, align 1, !tbaa !108
  %indvars.iv.next27.i.1 = add nuw nsw i64 %indvars.iv26.i, 2 ; 2 uses
  %exitcond30.not.i.1 = icmp eq i64 %indvars.iv.next27.i.1, %wide.trip.count29.i
  br i1 %exitcond30.not.i.1, label %yuv2p01xl1_c.exit, label %.lr.ph.split.us.i, !llvm.loop !138

yuv2p01xl1_c.exit:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2p012lX_BE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph36.i, label %yuv2p01xlX_c.exit

.lr.ph36.i:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.us39.preheader.i, label %._crit_edge37.sink.split.i

.lr.ph.us39.preheader.i:                          ; preds = %.lr.ph36.i
  %wide.trip.count54.i = zext nneg i32 %4 to i64
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.c = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us39.i

.lr.ph.us39.i:                                    ; preds = %._crit_edge.us42.i, %.lr.ph.us39.preheader.i
  %indvars.iv51.i = phi i64 [ 0, %.lr.ph.us39.preheader.i ], [ %indvars.iv.next52.i, %._crit_edge.us42.i ] ; 7 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us39.i.new

.lr.ph.us39.i.new:                                ; preds = %.lr.ph.us39.i, %.lr.ph.us39.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.us39.i.new ], [ 0, %.lr.ph.us39.i ] ; 6 uses
  %.033.us40.i = phi i32 [ %i.aq, %.lr.ph.us39.i.new ], [ 16384, %.lr.ph.us39.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us39.i.new ], [ 0, %.lr.ph.us39.i ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv51.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !107
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add nsw i32 %i.l, %.033.us40.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv51.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.t = load i16, ptr %i.s, align 2, !tbaa !107
  %i.u = sext i16 %i.t to i32
  %i.v = mul nsw i32 %i.u, %i.r
  %i.w = add nsw i32 %i.v, %i.m
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.1
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv51.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i.1
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !107
  %i.ae = sext i16 %i.ad to i32
  %i.af = mul nsw i32 %i.ae, %i.ab
  %i.ag = add nsw i32 %i.af, %i.w
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.2
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv51.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !107
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i.2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !107
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %i.ao, %i.al
  %i.aq = add nsw i32 %i.ap, %i.ag                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us42.i.unr-lcssa, label %.lr.ph.us39.i.new, !llvm.loop !0

._crit_edge.us42.i.unr-lcssa:                     ; preds = %.lr.ph.us39.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us42.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us42.i.unr-lcssa, %.lr.ph.us39.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.us39.i ], [ %indvars.iv.next.i.3, %._crit_edge.us42.i.unr-lcssa ]
  %.033.us40.i.epil.init = phi i32 [ 16384, %.lr.ph.us39.i ], [ %i.aq, %._crit_edge.us42.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %bb.b ], [ %indvars.iv.i.epil.init, %.epil.preheader ] ; 3 uses
  %.033.us40.i.epil = phi i32 [ %i.ba, %bb.b ], [ %.033.us40.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !111
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv51.i
  %i.au = load i16, ptr %i.at, align 2, !tbaa !107
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.epil
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !107
  %i.ay = sext i16 %i.ax to i32
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = add nsw i32 %i.az, %.033.us40.i.epil    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us42.i, label %bb.b, !llvm.loop !139

._crit_edge.us42.i:                               ; preds = %bb.b, %._crit_edge.us42.i.unr-lcssa
  %.lcssa = phi i32 [ %i.aq, %._crit_edge.us42.i.unr-lcssa ], [ %i.ba, %bb.b ]
  %i.bb = ashr i32 %.lcssa, 15
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 4095)
  %.0.i31.us.i.tr = trunc nuw nsw i32 %i.bd to i16
  %i.be = shl nuw i16 %.0.i31.us.i.tr, 4
  %i.bf = tail call i16 @llvm.bswap.i16(i16 %i.be)
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv51.i
  store i16 %i.bf, ptr %i.bg, align 1, !tbaa !108
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count54.i
  br i1 %exitcond55.not.i, label %yuv2p01xlX_c.exit, label %.lr.ph.us39.i, !llvm.loop !1

._crit_edge37.sink.split.i:                       ; preds = %.lr.ph36.i
  %i.bh = shl nuw i32 %4, 1
  %i.bi = zext i32 %i.bh to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.bi, i1 false), !tbaa !108
  br label %yuv2p01xlX_c.exit

yuv2p01xlX_c.exit:                                ; preds = %._crit_edge.us42.i, %bb.a, %._crit_edge37.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2p012lX_LE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph36.i, label %yuv2p01xlX_c.exit

.lr.ph36.i:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.us.us.preheader.i, label %._crit_edge37.sink.split.i

.lr.ph.us.us.preheader.i:                         ; preds = %.lr.ph36.i
  %wide.trip.count67.i = zext nneg i32 %4 to i64
  %wide.trip.count62.i = zext nneg i32 %1 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count62.i, 3     ; 3 uses
  %i.c = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count62.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph.us.us.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph.us.us.preheader.i ], [ %indvars.iv.next65.i, %._crit_edge.us.us.i ] ; 7 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 6 uses
  %.033.us.us.i = phi i32 [ %i.aq, %.lr.ph.us.us.i.new ], [ 16384, %.lr.ph.us.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv59.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv64.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !107
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv59.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add nsw i32 %i.l, %.033.us.us.i
  %indvars.iv.next60.i = or disjoint i64 %indvars.iv59.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next60.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv64.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next60.i
  %i.t = load i16, ptr %i.s, align 2, !tbaa !107
  %i.u = sext i16 %i.t to i32
  %i.v = mul nsw i32 %i.u, %i.r
  %i.w = add nsw i32 %i.v, %i.m
  %indvars.iv.next60.i.1 = or disjoint i64 %indvars.iv59.i, 2 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next60.i.1
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv64.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next60.i.1
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !107
  %i.ae = sext i16 %i.ad to i32
  %i.af = mul nsw i32 %i.ae, %i.ab
  %i.ag = add nsw i32 %i.af, %i.w
  %indvars.iv.next60.i.2 = or disjoint i64 %indvars.iv59.i, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next60.i.2
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv64.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !107
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next60.i.2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !107
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %i.ao, %i.al
  %i.aq = add nsw i32 %i.ap, %i.ag                ; 3 uses
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !0

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next60.i.3, %._crit_edge.us.us.i.unr-lcssa ]
  %.033.us.us.i.epil.init = phi i32 [ 16384, %.lr.ph.us.us.i ], [ %i.aq, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv59.i.epil = phi i64 [ %indvars.iv.next60.i.epil, %bb.b ], [ %indvars.iv59.i.epil.init, %.epil.preheader ] ; 3 uses
  %.033.us.us.i.epil = phi i32 [ %i.ba, %bb.b ], [ %.033.us.us.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv59.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !111
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv64.i
  %i.au = load i16, ptr %i.at, align 2, !tbaa !107
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv59.i.epil
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !107
  %i.ay = sext i16 %i.ax to i32
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = add nsw i32 %i.az, %.033.us.us.i.epil   ; 2 uses
  %indvars.iv.next60.i.epil = add nuw nsw i64 %indvars.iv59.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i, label %bb.b, !llvm.loop !140

._crit_edge.us.us.i:                              ; preds = %bb.b, %._crit_edge.us.us.i.unr-lcssa
  %.lcssa = phi i32 [ %i.aq, %._crit_edge.us.us.i.unr-lcssa ], [ %i.ba, %bb.b ]
  %i.bb = ashr i32 %.lcssa, 15
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 4095)
  %.0.i.us.us.i.tr = trunc nuw nsw i32 %i.bd to i16
  %i.be = shl nuw i16 %.0.i.us.us.i.tr, 4
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv64.i
  store i16 %i.be, ptr %i.bf, align 1, !tbaa !108
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %yuv2p01xlX_c.exit, label %.lr.ph.us.us.i, !llvm.loop !1

._crit_edge37.sink.split.i:                       ; preds = %.lr.ph36.i
  %i.bg = shl nuw i32 %4, 1
  %i.bh = zext i32 %i.bg to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.bh, i1 false), !tbaa !108
  br label %yuv2p01xlX_c.exit

yuv2p01xlX_c.exit:                                ; preds = %._crit_edge.us.us.i, %bb.a, %._crit_edge37.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2p012cX_BE_c(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7) #3 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph7.i, label %yuv2p01xcX_c.exit

.lr.ph7.i:                                        ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %wide.trip.count43.i = zext nneg i32 %7 to i64  ; 2 uses
  br i1 %i.b, label %.lr.ph.us10.preheader.i, label %._crit_edge8.sink.split.i

.lr.ph.us10.preheader.i:                          ; preds = %.lr.ph7.i
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.c = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod14 = trunc i32 %3 to i1
  br label %.lr.ph.us10.i

.lr.ph.us10.i:                                    ; preds = %._crit_edge.us14.i, %.lr.ph.us10.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.us10.preheader.i ], [ %indvars.iv.next28.i, %._crit_edge.us14.i ] ; 8 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us10.i.new

.lr.ph.us10.i.new:                                ; preds = %.lr.ph.us10.i, %.lr.ph.us10.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.us10.i.new ], [ 0, %.lr.ph.us10.i ] ; 5 uses
  %.03.us11.i = phi i32 [ %i.ak, %.lr.ph.us10.i.new ], [ 16384, %.lr.ph.us10.i ]
  %.0472.us12.i = phi i32 [ %i.ad, %.lr.ph.us10.i.new ], [ 16384, %.lr.ph.us10.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us10.i.new ], [ 0, %.lr.ph.us10.i ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv27.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !107
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add i32 %i.l, %.0472.us12.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv27.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = mul nsw i32 %i.r, %i.k
  %i.t = add i32 %i.s, %.03.us11.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv27.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !107
  %i.y = sext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32                   ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.y
  %i.ad = add i32 %i.ac, %i.m                     ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv27.i
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !107
  %i.ai = sext i16 %i.ah to i32
  %i.aj = mul nsw i32 %i.ai, %i.ab
  %i.ak = add i32 %i.aj, %i.t                     ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us14.i.unr-lcssa, label %.lr.ph.us10.i.new, !llvm.loop !2

._crit_edge.us14.i.unr-lcssa:                     ; preds = %.lr.ph.us10.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us14.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us14.i.unr-lcssa, %.lr.ph.us10.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.us10.i ], [ %indvars.iv.next.i.1, %._crit_edge.us14.i.unr-lcssa ] ; 3 uses
  %.03.us11.i.epil.init = phi i32 [ 16384, %.lr.ph.us10.i ], [ %i.ak, %._crit_edge.us14.i.unr-lcssa ]
  %.0472.us12.i.epil.init = phi i32 [ 16384, %.lr.ph.us10.i ], [ %i.ad, %._crit_edge.us14.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i.epil.init
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !111
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv27.i
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !107
  %i.ap = sext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !107
  %i.as = sext i16 %i.ar to i32                   ; 2 uses
  %i.at = mul nsw i32 %i.as, %i.ap
  %i.au = add i32 %i.at, %.0472.us12.i.epil.init
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !111
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv27.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !107
  %i.az = sext i16 %i.ay to i32
  %i.ba = mul nsw i32 %i.az, %i.as
  %i.bb = add i32 %i.ba, %.03.us11.i.epil.init
  br label %._crit_edge.us14.i

._crit_edge.us14.i:                               ; preds = %._crit_edge.us14.i.unr-lcssa, %.epil.preheader
  %.lcssa11 = phi i32 [ %i.ad, %._crit_edge.us14.i.unr-lcssa ], [ %i.au, %.epil.preheader ]
  %.lcssa = phi i32 [ %i.ak, %._crit_edge.us14.i.unr-lcssa ], [ %i.bb, %.epil.preheader ]
  %i.bc = ashr i32 %.lcssa11, 15
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 0)
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 4095)
  %.0.i61.us.i.tr = trunc nuw nsw i32 %i.be to i16
  %i.bf = shl nuw i16 %.0.i61.us.i.tr, 4
  %i.bg = tail call i16 @llvm.bswap.i16(i16 %i.bf)
  %.idx.i = shl nuw nsw i64 %indvars.iv27.i, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i ; 2 uses
  store i16 %i.bg, ptr %i.bh, align 1, !tbaa !108
  %i.bi = ashr i32 %.lcssa, 15
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 4095)
  %.0.i53.us.i.tr = trunc nuw nsw i32 %i.bk to i16
  %i.bl = shl nuw i16 %.0.i53.us.i.tr, 4
  %i.bm = tail call i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i16 %i.bm, ptr %i.bn, align 1, !tbaa !108
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count43.i
  br i1 %exitcond31.not.i, label %yuv2p01xcX_c.exit, label %.lr.ph.us10.i, !llvm.loop !3

._crit_edge8.sink.split.i:                        ; preds = %.lr.ph7.i
  %i.bo = shl nuw nsw i64 %wide.trip.count43.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %i.bo, i1 false), !tbaa !108
  br label %yuv2p01xcX_c.exit

yuv2p01xcX_c.exit:                                ; preds = %._crit_edge.us14.i, %bb.a, %._crit_edge8.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2p012cX_LE_c(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7) #3 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph7.i, label %yuv2p01xcX_c.exit

.lr.ph7.i:                                        ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %wide.trip.count43.i = zext nneg i32 %7 to i64  ; 2 uses
  br i1 %i.b, label %.lr.ph.us.us.preheader.i, label %._crit_edge8.sink.split.i

.lr.ph.us.us.preheader.i:                         ; preds = %.lr.ph7.i
  %wide.trip.count38.i = zext nneg i32 %3 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count38.i, 1
  %i.c = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count38.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod14 = trunc i32 %3 to i1
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph.us.us.preheader.i
  %indvars.iv40.i = phi i64 [ 0, %.lr.ph.us.us.preheader.i ], [ %indvars.iv.next41.i, %._crit_edge.us.us.i ] ; 8 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.1, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 5 uses
  %.03.us.us.i = phi i32 [ %i.ak, %.lr.ph.us.us.i.new ], [ 16384, %.lr.ph.us.us.i ]
  %.0472.us.us.i = phi i32 [ %i.ad, %.lr.ph.us.us.i.new ], [ 16384, %.lr.ph.us.us.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv35.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv40.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !107
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv35.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add i32 %i.l, %.0472.us.us.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv40.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = mul nsw i32 %i.r, %i.k
  %i.t = add i32 %i.s, %.03.us.us.i
  %indvars.iv.next36.i = or disjoint i64 %indvars.iv35.i, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next36.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv40.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !107
  %i.y = sext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next36.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32                   ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.y
  %i.ad = add i32 %i.ac, %i.m                     ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv40.i
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !107
  %i.ai = sext i16 %i.ah to i32
  %i.aj = mul nsw i32 %i.ai, %i.ab
  %i.ak = add i32 %i.aj, %i.t                     ; 3 uses
  %indvars.iv.next36.i.1 = add nuw nsw i64 %indvars.iv35.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !2

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv35.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next36.i.1, %._crit_edge.us.us.i.unr-lcssa ] ; 3 uses
  %.03.us.us.i.epil.init = phi i32 [ 16384, %.lr.ph.us.us.i ], [ %i.ak, %._crit_edge.us.us.i.unr-lcssa ]
  %.0472.us.us.i.epil.init = phi i32 [ 16384, %.lr.ph.us.us.i ], [ %i.ad, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv35.i.epil.init
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !111
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv40.i
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !107
  %i.ap = sext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv35.i.epil.init
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !107
  %i.as = sext i16 %i.ar to i32                   ; 2 uses
  %i.at = mul nsw i32 %i.as, %i.ap
  %i.au = add i32 %i.at, %.0472.us.us.i.epil.init
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.i.epil.init
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !111
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv40.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !107
  %i.az = sext i16 %i.ay to i32
  %i.ba = mul nsw i32 %i.az, %i.as
  %i.bb = add i32 %i.ba, %.03.us.us.i.epil.init
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.epil.preheader
  %.lcssa11 = phi i32 [ %i.ad, %._crit_edge.us.us.i.unr-lcssa ], [ %i.au, %.epil.preheader ]
  %.lcssa = phi i32 [ %i.ak, %._crit_edge.us.us.i.unr-lcssa ], [ %i.bb, %.epil.preheader ]
  %i.bc = ashr i32 %.lcssa11, 15
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 0)
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 4095)
  %.0.i57.us.us.i.tr = trunc nuw nsw i32 %i.be to i16
  %i.bf = shl nuw i16 %.0.i57.us.us.i.tr, 4
  %.idx46.i = shl nuw nsw i64 %indvars.iv40.i, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 %.idx46.i ; 2 uses
  store i16 %i.bf, ptr %i.bg, align 1, !tbaa !108
  %i.bh = ashr i32 %.lcssa, 15
  %i.bi = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 0)
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 4095)
  %.0.i.us.us.i.tr = trunc nuw nsw i32 %i.bj to i16
  %i.bk = shl nuw i16 %.0.i.us.us.i.tr, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i16 %i.bk, ptr %i.bl, align 1, !tbaa !108
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next41.i, %wide.trip.count43.i
  br i1 %exitcond44.not.i, label %yuv2p01xcX_c.exit, label %.lr.ph.us.us.i, !llvm.loop !3

._crit_edge8.sink.split.i:                        ; preds = %.lr.ph7.i
  %i.bm = shl nuw nsw i64 %wide.trip.count43.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %i.bm, i1 false), !tbaa !108
  br label %yuv2p01xcX_c.exit

yuv2p01xcX_c.exit:                                ; preds = %._crit_edge.us.us.i, %bb.a, %._crit_edge8.sink.split.i
  ret void
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2nv20l1_BE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.i, label %yuv2p01xl1_c.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count29.i = zext nneg i32 %2 to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.split.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count29.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 16)
  %i.h = ashr <8 x i32> %i.g, splat (i32 5)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 1023))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.k)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count29.i
  br i1 %cmp.n, label %yuv2p01xl1_c.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count29.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.ph
  %i.p = load i16, ptr %i.o, align 2, !tbaa !107
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 16
  %i.s = ashr i32 %i.r, 5
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.t, i32 1023)
  %i.v = trunc nuw nsw i32 %i.u to i16
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.ph
  store i16 %i.w, ptr %i.x, align 1, !tbaa !108
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.split.i.prol ]
  %i.y = add nsw i64 %wide.trip.count29.i, -1
  %i.z = icmp eq i64 %indvars.iv.i.ph, %i.y
  br i1 %i.z, label %yuv2p01xl1_c.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ %indvars.iv.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !107
  %i.ac = sext i16 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, 16
  %i.ae = ashr i32 %i.ad, 5
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 1023)
  %i.ah = trunc nuw nsw i32 %i.ag to i16
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  store i16 %i.ai, ptr %i.aj, align 1, !tbaa !108
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !107
  %i.am = sext i16 %i.al to i32
  %i.an = add nsw i32 %i.am, 16
  %i.ao = ashr i32 %i.an, 5
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 1023)
  %i.ar = trunc nuw nsw i32 %i.aq to i16
  %i.as = tail call i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.i
  store i16 %i.as, ptr %i.at, align 1, !tbaa !108
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count29.i
  br i1 %exitcond.not.i.1, label %yuv2p01xl1_c.exit, label %.lr.ph.split.i, !llvm.loop !142

yuv2p01xl1_c.exit:                                ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2nv20l1_LE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.i, label %yuv2p01xl1_c.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count29.i = zext nneg i32 %2 to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count29.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 16)
  %i.h = ashr <8 x i32> %i.g, splat (i32 5)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 1023))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.k, ptr %i.l, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count29.i
  br i1 %cmp.n, label %yuv2p01xl1_c.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i, %middle.block
  %indvars.iv26.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count29.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv26.i.ph
  %i.o = load i16, ptr %i.n, align 2, !tbaa !107
  %i.p = sext i16 %i.o to i32
  %i.q = add nsw i32 %i.p, 16
  %i.r = ashr i32 %i.q, 5
  %i.s = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.s, i32 1023)
  %i.u = trunc nuw nsw i32 %i.t to i16
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv26.i.ph
  store i16 %i.u, ptr %i.v, align 1, !tbaa !108
  %indvars.iv.next27.i.prol = or disjoint i64 %indvars.iv26.i.ph, 1
  br label %.lr.ph.split.us.i.prol.loopexit

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %indvars.iv26.i.unr = phi i64 [ %indvars.iv26.i.ph, %.lr.ph.split.us.i.preheader ], [ %indvars.iv.next27.i.prol, %.lr.ph.split.us.i.prol ]
  %i.w = add nsw i64 %wide.trip.count29.i, -1
  %i.x = icmp eq i64 %indvars.iv26.i.ph, %i.w
  br i1 %i.x, label %yuv2p01xl1_c.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i.1, %.lr.ph.split.us.i ], [ %indvars.iv26.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv26.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !107
  %i.aa = sext i16 %i.z to i32
  %i.ab = add nsw i32 %i.aa, 16
  %i.ac = ashr i32 %i.ab, 5
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 1023)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv26.i
  store i16 %i.af, ptr %i.ag, align 1, !tbaa !108
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next27.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !107
  %i.aj = sext i16 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, 16
  %i.al = ashr i32 %i.ak, 5
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %i.an = tail call i32 @llvm.umin.i32(i32 %i.am, i32 1023)
  %i.ao = trunc nuw nsw i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next27.i
  store i16 %i.ao, ptr %i.ap, align 1, !tbaa !108
  %indvars.iv.next27.i.1 = add nuw nsw i64 %indvars.iv26.i, 2 ; 2 uses
  %exitcond30.not.i.1 = icmp eq i64 %indvars.iv.next27.i.1, %wide.trip.count29.i
  br i1 %exitcond30.not.i.1, label %yuv2p01xl1_c.exit, label %.lr.ph.split.us.i, !llvm.loop !144

yuv2p01xl1_c.exit:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2nv20lX_BE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph36.i, label %yuv2p01xlX_c.exit

.lr.ph36.i:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.us39.preheader.i, label %._crit_edge37.sink.split.i

.lr.ph.us39.preheader.i:                          ; preds = %.lr.ph36.i
  %wide.trip.count54.i = zext nneg i32 %4 to i64
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.c = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us39.i

.lr.ph.us39.i:                                    ; preds = %._crit_edge.us42.i, %.lr.ph.us39.preheader.i
  %indvars.iv51.i = phi i64 [ 0, %.lr.ph.us39.preheader.i ], [ %indvars.iv.next52.i, %._crit_edge.us42.i ] ; 7 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us39.i.new

.lr.ph.us39.i.new:                                ; preds = %.lr.ph.us39.i, %.lr.ph.us39.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.us39.i.new ], [ 0, %.lr.ph.us39.i ] ; 6 uses
  %.033.us40.i = phi i32 [ %i.aq, %.lr.ph.us39.i.new ], [ 65536, %.lr.ph.us39.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us39.i.new ], [ 0, %.lr.ph.us39.i ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv51.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !107
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add nsw i32 %i.l, %.033.us40.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv51.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.t = load i16, ptr %i.s, align 2, !tbaa !107
  %i.u = sext i16 %i.t to i32
  %i.v = mul nsw i32 %i.u, %i.r
  %i.w = add nsw i32 %i.v, %i.m
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.1
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv51.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i.1
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !107
  %i.ae = sext i16 %i.ad to i32
  %i.af = mul nsw i32 %i.ae, %i.ab
  %i.ag = add nsw i32 %i.af, %i.w
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.2
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv51.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !107
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i.2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !107
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %i.ao, %i.al
  %i.aq = add nsw i32 %i.ap, %i.ag                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us42.i.unr-lcssa, label %.lr.ph.us39.i.new, !llvm.loop !0

._crit_edge.us42.i.unr-lcssa:                     ; preds = %.lr.ph.us39.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us42.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us42.i.unr-lcssa, %.lr.ph.us39.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.us39.i ], [ %indvars.iv.next.i.3, %._crit_edge.us42.i.unr-lcssa ]
  %.033.us40.i.epil.init = phi i32 [ 65536, %.lr.ph.us39.i ], [ %i.aq, %._crit_edge.us42.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %bb.b ], [ %indvars.iv.i.epil.init, %.epil.preheader ] ; 3 uses
  %.033.us40.i.epil = phi i32 [ %i.ba, %bb.b ], [ %.033.us40.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !111
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv51.i
  %i.au = load i16, ptr %i.at, align 2, !tbaa !107
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.epil
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !107
  %i.ay = sext i16 %i.ax to i32
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = add nsw i32 %i.az, %.033.us40.i.epil    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us42.i, label %bb.b, !llvm.loop !145

._crit_edge.us42.i:                               ; preds = %bb.b, %._crit_edge.us42.i.unr-lcssa
  %.lcssa = phi i32 [ %i.aq, %._crit_edge.us42.i.unr-lcssa ], [ %i.ba, %bb.b ]
  %i.bb = ashr i32 %.lcssa, 17
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 1023)
  %i.be = trunc nuw nsw i32 %i.bd to i16
  %i.bf = tail call i16 @llvm.bswap.i16(i16 %i.be)
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv51.i
  store i16 %i.bf, ptr %i.bg, align 1, !tbaa !108
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count54.i
  br i1 %exitcond55.not.i, label %yuv2p01xlX_c.exit, label %.lr.ph.us39.i, !llvm.loop !1

._crit_edge37.sink.split.i:                       ; preds = %.lr.ph36.i
  %i.bh = shl nuw i32 %4, 1
  %i.bi = zext i32 %i.bh to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.bi, i1 false), !tbaa !108
  br label %yuv2p01xlX_c.exit

yuv2p01xlX_c.exit:                                ; preds = %._crit_edge.us42.i, %bb.a, %._crit_edge37.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2nv20lX_LE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph36.i, label %yuv2p01xlX_c.exit

.lr.ph36.i:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.us.us.preheader.i, label %._crit_edge37.sink.split.i

.lr.ph.us.us.preheader.i:                         ; preds = %.lr.ph36.i
  %wide.trip.count67.i = zext nneg i32 %4 to i64
  %wide.trip.count62.i = zext nneg i32 %1 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count62.i, 3     ; 3 uses
  %i.c = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count62.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph.us.us.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph.us.us.preheader.i ], [ %indvars.iv.next65.i, %._crit_edge.us.us.i ] ; 7 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 6 uses
  %.033.us.us.i = phi i32 [ %i.aq, %.lr.ph.us.us.i.new ], [ 65536, %.lr.ph.us.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv59.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv64.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !107
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv59.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add nsw i32 %i.l, %.033.us.us.i
  %indvars.iv.next60.i = or disjoint i64 %indvars.iv59.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next60.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv64.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next60.i
  %i.t = load i16, ptr %i.s, align 2, !tbaa !107
  %i.u = sext i16 %i.t to i32
  %i.v = mul nsw i32 %i.u, %i.r
  %i.w = add nsw i32 %i.v, %i.m
  %indvars.iv.next60.i.1 = or disjoint i64 %indvars.iv59.i, 2 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next60.i.1
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv64.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next60.i.1
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !107
  %i.ae = sext i16 %i.ad to i32
  %i.af = mul nsw i32 %i.ae, %i.ab
  %i.ag = add nsw i32 %i.af, %i.w
  %indvars.iv.next60.i.2 = or disjoint i64 %indvars.iv59.i, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next60.i.2
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv64.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !107
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next60.i.2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !107
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %i.ao, %i.al
  %i.aq = add nsw i32 %i.ap, %i.ag                ; 3 uses
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !0

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next60.i.3, %._crit_edge.us.us.i.unr-lcssa ]
  %.033.us.us.i.epil.init = phi i32 [ 65536, %.lr.ph.us.us.i ], [ %i.aq, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv59.i.epil = phi i64 [ %indvars.iv.next60.i.epil, %bb.b ], [ %indvars.iv59.i.epil.init, %.epil.preheader ] ; 3 uses
  %.033.us.us.i.epil = phi i32 [ %i.ba, %bb.b ], [ %.033.us.us.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv59.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !111
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv64.i
  %i.au = load i16, ptr %i.at, align 2, !tbaa !107
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv59.i.epil
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !107
  %i.ay = sext i16 %i.ax to i32
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = add nsw i32 %i.az, %.033.us.us.i.epil   ; 2 uses
  %indvars.iv.next60.i.epil = add nuw nsw i64 %indvars.iv59.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i, label %bb.b, !llvm.loop !146

._crit_edge.us.us.i:                              ; preds = %bb.b, %._crit_edge.us.us.i.unr-lcssa
  %.lcssa = phi i32 [ %i.aq, %._crit_edge.us.us.i.unr-lcssa ], [ %i.ba, %bb.b ]
  %i.bb = ashr i32 %.lcssa, 17
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 1023)
  %i.be = trunc nuw nsw i32 %i.bd to i16
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv64.i
  store i16 %i.be, ptr %i.bf, align 1, !tbaa !108
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %yuv2p01xlX_c.exit, label %.lr.ph.us.us.i, !llvm.loop !1

._crit_edge37.sink.split.i:                       ; preds = %.lr.ph36.i
  %i.bg = shl nuw i32 %4, 1
  %i.bh = zext i32 %i.bg to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.bh, i1 false), !tbaa !108
  br label %yuv2p01xlX_c.exit

yuv2p01xlX_c.exit:                                ; preds = %._crit_edge.us.us.i, %bb.a, %._crit_edge37.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2nv20cX_BE_c(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7) #3 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph7.i, label %yuv2p01xcX_c.exit

.lr.ph7.i:                                        ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %wide.trip.count43.i = zext nneg i32 %7 to i64  ; 2 uses
  br i1 %i.b, label %.lr.ph.us10.preheader.i, label %._crit_edge8.sink.split.i

.lr.ph.us10.preheader.i:                          ; preds = %.lr.ph7.i
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.c = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod14 = trunc i32 %3 to i1
  br label %.lr.ph.us10.i

.lr.ph.us10.i:                                    ; preds = %._crit_edge.us14.i, %.lr.ph.us10.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.us10.preheader.i ], [ %indvars.iv.next28.i, %._crit_edge.us14.i ] ; 8 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us10.i.new

.lr.ph.us10.i.new:                                ; preds = %.lr.ph.us10.i, %.lr.ph.us10.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.us10.i.new ], [ 0, %.lr.ph.us10.i ] ; 5 uses
  %.03.us11.i = phi i32 [ %i.ak, %.lr.ph.us10.i.new ], [ 65536, %.lr.ph.us10.i ]
  %.0472.us12.i = phi i32 [ %i.ad, %.lr.ph.us10.i.new ], [ 65536, %.lr.ph.us10.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us10.i.new ], [ 0, %.lr.ph.us10.i ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv27.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !107
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add i32 %i.l, %.0472.us12.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv27.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = mul nsw i32 %i.r, %i.k
  %i.t = add i32 %i.s, %.03.us11.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv27.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !107
  %i.y = sext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32                   ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.y
  %i.ad = add i32 %i.ac, %i.m                     ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv27.i
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !107
  %i.ai = sext i16 %i.ah to i32
  %i.aj = mul nsw i32 %i.ai, %i.ab
  %i.ak = add i32 %i.aj, %i.t                     ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us14.i.unr-lcssa, label %.lr.ph.us10.i.new, !llvm.loop !2

._crit_edge.us14.i.unr-lcssa:                     ; preds = %.lr.ph.us10.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us14.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us14.i.unr-lcssa, %.lr.ph.us10.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.us10.i ], [ %indvars.iv.next.i.1, %._crit_edge.us14.i.unr-lcssa ] ; 3 uses
  %.03.us11.i.epil.init = phi i32 [ 65536, %.lr.ph.us10.i ], [ %i.ak, %._crit_edge.us14.i.unr-lcssa ]
  %.0472.us12.i.epil.init = phi i32 [ 65536, %.lr.ph.us10.i ], [ %i.ad, %._crit_edge.us14.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i.epil.init
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !111
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv27.i
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !107
  %i.ap = sext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !107
  %i.as = sext i16 %i.ar to i32                   ; 2 uses
  %i.at = mul nsw i32 %i.as, %i.ap
  %i.au = add i32 %i.at, %.0472.us12.i.epil.init
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !111
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv27.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !107
  %i.az = sext i16 %i.ay to i32
  %i.ba = mul nsw i32 %i.az, %i.as
  %i.bb = add i32 %i.ba, %.03.us11.i.epil.init
  br label %._crit_edge.us14.i

._crit_edge.us14.i:                               ; preds = %._crit_edge.us14.i.unr-lcssa, %.epil.preheader
  %.lcssa11 = phi i32 [ %i.ad, %._crit_edge.us14.i.unr-lcssa ], [ %i.au, %.epil.preheader ]
  %.lcssa = phi i32 [ %i.ak, %._crit_edge.us14.i.unr-lcssa ], [ %i.bb, %.epil.preheader ]
  %i.bc = ashr i32 %.lcssa11, 17
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 0)
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 1023)
  %i.bf = trunc nuw nsw i32 %i.be to i16
  %i.bg = tail call i16 @llvm.bswap.i16(i16 %i.bf)
  %.idx.i = shl nuw nsw i64 %indvars.iv27.i, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i ; 2 uses
  store i16 %i.bg, ptr %i.bh, align 1, !tbaa !108
  %i.bi = ashr i32 %.lcssa, 17
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 1023)
  %i.bl = trunc nuw nsw i32 %i.bk to i16
  %i.bm = tail call i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i16 %i.bm, ptr %i.bn, align 1, !tbaa !108
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count43.i
  br i1 %exitcond31.not.i, label %yuv2p01xcX_c.exit, label %.lr.ph.us10.i, !llvm.loop !3

._crit_edge8.sink.split.i:                        ; preds = %.lr.ph7.i
  %i.bo = shl nuw nsw i64 %wide.trip.count43.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %i.bo, i1 false), !tbaa !108
  br label %yuv2p01xcX_c.exit

yuv2p01xcX_c.exit:                                ; preds = %._crit_edge.us14.i, %bb.a, %._crit_edge8.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2nv20cX_LE_c(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7) #3 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph7.i, label %yuv2p01xcX_c.exit

.lr.ph7.i:                                        ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %wide.trip.count43.i = zext nneg i32 %7 to i64  ; 2 uses
  br i1 %i.b, label %.lr.ph.us.us.preheader.i, label %._crit_edge8.sink.split.i

.lr.ph.us.us.preheader.i:                         ; preds = %.lr.ph7.i
  %wide.trip.count38.i = zext nneg i32 %3 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count38.i, 1
  %i.c = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count38.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod14 = trunc i32 %3 to i1
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph.us.us.preheader.i
  %indvars.iv40.i = phi i64 [ 0, %.lr.ph.us.us.preheader.i ], [ %indvars.iv.next41.i, %._crit_edge.us.us.i ] ; 8 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.1, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 5 uses
  %.03.us.us.i = phi i32 [ %i.ak, %.lr.ph.us.us.i.new ], [ 65536, %.lr.ph.us.us.i ]
  %.0472.us.us.i = phi i32 [ %i.ad, %.lr.ph.us.us.i.new ], [ 65536, %.lr.ph.us.us.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv35.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv40.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !107
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv35.i
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add i32 %i.l, %.0472.us.us.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv40.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = mul nsw i32 %i.r, %i.k
  %i.t = add i32 %i.s, %.03.us.us.i
  %indvars.iv.next36.i = or disjoint i64 %indvars.iv35.i, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next36.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv40.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !107
  %i.y = sext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next36.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32                   ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.y
  %i.ad = add i32 %i.ac, %i.m                     ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next36.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv40.i
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !107
  %i.ai = sext i16 %i.ah to i32
  %i.aj = mul nsw i32 %i.ai, %i.ab
  %i.ak = add i32 %i.aj, %i.t                     ; 3 uses
  %indvars.iv.next36.i.1 = add nuw nsw i64 %indvars.iv35.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !2

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv35.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next36.i.1, %._crit_edge.us.us.i.unr-lcssa ] ; 3 uses
  %.03.us.us.i.epil.init = phi i32 [ 65536, %.lr.ph.us.us.i ], [ %i.ak, %._crit_edge.us.us.i.unr-lcssa ]
  %.0472.us.us.i.epil.init = phi i32 [ 65536, %.lr.ph.us.us.i ], [ %i.ad, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv35.i.epil.init
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !111
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv40.i
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !107
  %i.ap = sext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv35.i.epil.init
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !107
  %i.as = sext i16 %i.ar to i32                   ; 2 uses
  %i.at = mul nsw i32 %i.as, %i.ap
  %i.au = add i32 %i.at, %.0472.us.us.i.epil.init
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35.i.epil.init
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !111
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv40.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !107
  %i.az = sext i16 %i.ay to i32
  %i.ba = mul nsw i32 %i.az, %i.as
  %i.bb = add i32 %i.ba, %.03.us.us.i.epil.init
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.epil.preheader
  %.lcssa11 = phi i32 [ %i.ad, %._crit_edge.us.us.i.unr-lcssa ], [ %i.au, %.epil.preheader ]
  %.lcssa = phi i32 [ %i.ak, %._crit_edge.us.us.i.unr-lcssa ], [ %i.bb, %.epil.preheader ]
  %i.bc = ashr i32 %.lcssa11, 17
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 0)
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 1023)
  %i.bf = trunc nuw nsw i32 %i.be to i16
  %.idx46.i = shl nuw nsw i64 %indvars.iv40.i, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 %.idx46.i ; 2 uses
  store i16 %i.bf, ptr %i.bg, align 1, !tbaa !108
  %i.bh = ashr i32 %.lcssa, 17
  %i.bi = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 0)
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 1023)
  %i.bk = trunc nuw nsw i32 %i.bj to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i16 %i.bk, ptr %i.bl, align 1, !tbaa !108
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next41.i, %wide.trip.count43.i
  br i1 %exitcond44.not.i, label %yuv2p01xcX_c.exit, label %.lr.ph.us.us.i, !llvm.loop !3

._crit_edge8.sink.split.i:                        ; preds = %.lr.ph7.i
  %i.bm = shl nuw nsw i64 %wide.trip.count43.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %i.bm, i1 false), !tbaa !108
  br label %yuv2p01xcX_c.exit

yuv2p01xcX_c.exit:                                ; preds = %._crit_edge.us.us.i, %bb.a, %._crit_edge8.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2planeX_16BE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2planeX_16_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2planeX_16_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count14 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv11 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next12, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.023.i5.us = phi i32 [ %i.ao, %.preheader.us.new ], [ -1073725440, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv11
  %i.i = load i32, ptr %i.h, align 4, !tbaa !114
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !107
  %i.l = sext i16 %i.k to i32
  %i.m = mul i32 %i.i, %i.l
  %i.n = add i32 %i.m, %.023.i5.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv11
  %i.r = load i32, ptr %i.q, align 4, !tbaa !114
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.t = load i16, ptr %i.s, align 2, !tbaa !107
  %i.u = sext i16 %i.t to i32
  %i.v = mul i32 %i.r, %i.u
  %i.w = add i32 %i.v, %i.n
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !113
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv11
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !114
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = mul i32 %i.aa, %i.ad
  %i.af = add i32 %i.ae, %i.w
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !113
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv11
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !114
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !107
  %i.am = sext i16 %i.al to i32
  %i.an = mul i32 %i.aj, %i.am
  %i.ao = add i32 %i.an, %i.af                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !4

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.023.i5.us.epil.init = phi i32 [ -1073725440, %.preheader.us ], [ %i.ao, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.023.i5.us.epil = phi i32 [ %.023.i5.us.epil.init, %.epil.preheader ], [ %i.ax, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !113
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv11
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !114
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.au = load i16, ptr %i.at, align 2, !tbaa !107
  %i.av = sext i16 %i.au to i32
  %i.aw = mul i32 %i.as, %i.av
  %i.ax = add i32 %i.aw, %.023.i5.us.epil         ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !147

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.ao, %._crit_edge.us.unr-lcssa ], [ %i.ax, %bb.b ]
  %i.ay = ashr i32 %.lcssa, 15
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 -32768)
  %i.ba = tail call i32 @llvm.smin.i32(i32 %i.az, i32 32767)
  %.0.i4.us = trunc nsw i32 %i.ba to i16
  %i.bb = xor i16 %.0.i4.us, -32768
  %i.bc = tail call i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv11
  store i16 %i.bc, ptr %i.bd, align 1, !tbaa !108
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1 ; 2 uses
  %exitcond15.not = icmp eq i64 %indvars.iv.next12, %wide.trip.count14
  br i1 %exitcond15.not, label %yuv2planeX_16_c_template.exit, label %.preheader.us, !llvm.loop !5

yuv2planeX_16_c_template.exit:                    ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2planeX_16LE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2planeX_16_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2planeX_16_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count14 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv11 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next12, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.023.i5.us = phi i32 [ %i.ao, %.preheader.us.new ], [ -1073725440, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv11
  %i.i = load i32, ptr %i.h, align 4, !tbaa !114
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !107
  %i.l = sext i16 %i.k to i32
  %i.m = mul i32 %i.i, %i.l
  %i.n = add i32 %i.m, %.023.i5.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv11
  %i.r = load i32, ptr %i.q, align 4, !tbaa !114
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.t = load i16, ptr %i.s, align 2, !tbaa !107
  %i.u = sext i16 %i.t to i32
  %i.v = mul i32 %i.r, %i.u
  %i.w = add i32 %i.v, %i.n
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !113
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv11
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !114
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = mul i32 %i.aa, %i.ad
  %i.af = add i32 %i.ae, %i.w
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !113
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv11
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !114
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !107
  %i.am = sext i16 %i.al to i32
  %i.an = mul i32 %i.aj, %i.am
  %i.ao = add i32 %i.an, %i.af                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !4

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.023.i5.us.epil.init = phi i32 [ -1073725440, %.preheader.us ], [ %i.ao, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.023.i5.us.epil = phi i32 [ %.023.i5.us.epil.init, %.epil.preheader ], [ %i.ax, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !113
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv11
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !114
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.au = load i16, ptr %i.at, align 2, !tbaa !107
  %i.av = sext i16 %i.au to i32
  %i.aw = mul i32 %i.as, %i.av
  %i.ax = add i32 %i.aw, %.023.i5.us.epil         ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !148

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.ao, %._crit_edge.us.unr-lcssa ], [ %i.ax, %bb.b ]
  %i.ay = ashr i32 %.lcssa, 15
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 -32768)
  %i.ba = tail call i32 @llvm.smin.i32(i32 %i.az, i32 32767)
  %.0.i4.us = trunc nsw i32 %i.ba to i16
  %i.bb = xor i16 %.0.i4.us, -32768
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv11
  store i16 %i.bb, ptr %i.bc, align 1, !tbaa !108
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1 ; 2 uses
  %exitcond15.not = icmp eq i64 %indvars.iv.next12, %wide.trip.count14
  br i1 %exitcond15.not, label %yuv2planeX_16_c_template.exit, label %.preheader.us, !llvm.loop !5

yuv2planeX_16_c_template.exit:                    ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2plane1_16BE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2plane1_16_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 7 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl nuw nsw i64 %wide.trip.count, 1
  %i.c = getelementptr i8, ptr %1, i64 %i.b
  %i.d = shl nuw nsw i64 %wide.trip.count, 2
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %bound0 = icmp ult ptr %1, %i.e
  %bound1 = icmp ult ptr %0, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !114, !alias.scope !154
  %wide.load7 = load <4 x i32>, ptr %i.g, align 4, !tbaa !114, !alias.scope !154
  %i.h = add nsw <4 x i32> %wide.load, splat (i32 4)
  %i.i = add nsw <4 x i32> %wide.load7, splat (i32 4)
  %i.j = ashr <4 x i32> %i.h, splat (i32 3)
  %i.k = ashr <4 x i32> %i.i, splat (i32 3)
  %i.l = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.j, <4 x i32> zeroinitializer)
  %i.m = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.k, <4 x i32> zeroinitializer)
  %i.n = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.l, <4 x i32> splat (i32 65535))
  %i.o = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.m, <4 x i32> splat (i32 65535))
  %i.p = trunc nuw <4 x i32> %i.n to <4 x i16>
  %i.q = trunc nuw <4 x i32> %i.o to <4 x i16>
  %i.r = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.p)
  %i.s = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.q)
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store <4 x i16> %i.r, ptr %i.t, align 1, !tbaa !108, !alias.scope !155, !noalias !154
  store <4 x i16> %i.s, ptr %i.u, align 1, !tbaa !108, !alias.scope !155, !noalias !154
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2plane1_16_c_template.exit, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  %i.x = load i32, ptr %i.w, align 4, !tbaa !114
  %i.y = add nsw i32 %i.x, 4
  %i.z = ashr i32 %i.y, 3
  %i.aa = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %.0.i23.prol = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 65535)
  %.0.i2.prol = trunc nuw i32 %.0.i23.prol to i16
  %i.ab = tail call i16 @llvm.bswap.i16(i16 %.0.i2.prol)
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.ab, ptr %i.ac, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader8
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader8 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ad = add nsw i64 %wide.trip.count, -1
  %i.ae = icmp eq i64 %indvars.iv.ph, %i.ad
  br i1 %i.ae, label %yuv2plane1_16_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !114
  %i.ah = add nsw i32 %i.ag, 4
  %i.ai = ashr i32 %i.ah, 3
  %i.aj = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 0)
  %.0.i23 = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 65535)
  %.0.i2 = trunc nuw i32 %.0.i23 to i16
  %i.ak = tail call i16 @llvm.bswap.i16(i16 %.0.i2)
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.ak, ptr %i.al, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.an = load i32, ptr %i.am, align 4, !tbaa !114
  %i.ao = add nsw i32 %i.an, 4
  %i.ap = ashr i32 %i.ao, 3
  %i.aq = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 0)
  %.0.i23.1 = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 65535)
  %.0.i2.1 = trunc nuw i32 %.0.i23.1 to i16
  %i.ar = tail call i16 @llvm.bswap.i16(i16 %.0.i2.1)
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.ar, ptr %i.as, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2plane1_16_c_template.exit, label %.lr.ph, !llvm.loop !153

yuv2plane1_16_c_template.exit:                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2plane1_16LE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2plane1_16_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 7 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl nuw nsw i64 %wide.trip.count, 1
  %i.c = getelementptr i8, ptr %1, i64 %i.b
  %i.d = shl nuw nsw i64 %wide.trip.count, 2
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %bound0 = icmp ult ptr %1, %i.e
  %bound1 = icmp ult ptr %0, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !114, !alias.scope !161
  %wide.load7 = load <4 x i32>, ptr %i.g, align 4, !tbaa !114, !alias.scope !161
  %i.h = add nsw <4 x i32> %wide.load, splat (i32 4)
  %i.i = add nsw <4 x i32> %wide.load7, splat (i32 4)
  %i.j = ashr <4 x i32> %i.h, splat (i32 3)
  %i.k = ashr <4 x i32> %i.i, splat (i32 3)
  %i.l = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.j, <4 x i32> zeroinitializer)
  %i.m = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.k, <4 x i32> zeroinitializer)
  %i.n = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.l, <4 x i32> splat (i32 65535))
  %i.o = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.m, <4 x i32> splat (i32 65535))
  %i.p = trunc nuw <4 x i32> %i.n to <4 x i16>
  %i.q = trunc nuw <4 x i32> %i.o to <4 x i16>
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store <4 x i16> %i.p, ptr %i.r, align 1, !tbaa !108, !alias.scope !162, !noalias !161
  store <4 x i16> %i.q, ptr %i.s, align 1, !tbaa !108, !alias.scope !162, !noalias !161
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2plane1_16_c_template.exit, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  %i.v = load i32, ptr %i.u, align 4, !tbaa !114
  %i.w = add nsw i32 %i.v, 4
  %i.x = ashr i32 %i.w, 3
  %i.y = tail call i32 @llvm.smax.i32(i32 %i.x, i32 0)
  %.0.i23.prol = tail call i32 @llvm.umin.i32(i32 %i.y, i32 65535)
  %.0.i2.prol = trunc nuw i32 %.0.i23.prol to i16
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %.0.i2.prol, ptr %i.z, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader8
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader8 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aa = add nsw i64 %wide.trip.count, -1
  %i.ab = icmp eq i64 %indvars.iv.ph, %i.aa
  br i1 %i.ab, label %yuv2plane1_16_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !114
  %i.ae = add nsw i32 %i.ad, 4
  %i.af = ashr i32 %i.ae, 3
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %.0.i23 = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 65535)
  %.0.i2 = trunc nuw i32 %.0.i23 to i16
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %.0.i2, ptr %i.ah, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !114
  %i.ak = add nsw i32 %i.aj, 4
  %i.al = ashr i32 %i.ak, 3
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %.0.i23.1 = tail call i32 @llvm.umin.i32(i32 %i.am, i32 65535)
  %.0.i2.1 = trunc nuw i32 %.0.i23.1 to i16
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %.0.i2.1, ptr %i.an, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2plane1_16_c_template.exit, label %.lr.ph, !llvm.loop !160

yuv2plane1_16_c_template.exit:                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2nv12cX_16BE_c(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7) #3 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2nv12cX_16_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %wide.trip.count18 = zext nneg i32 %7 to i64    ; 2 uses
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw nsw i64 %wide.trip.count18, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %i.c, i1 false), !tbaa !108
  br label %yuv2nv12cX_16_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod26 = trunc i32 %3 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv15 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next16, %._crit_edge.us ] ; 8 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.0.i8.us = phi i32 [ %i.ah, %.preheader.us.new ], [ -1073725440, %.preheader.us ]
  %.043.i7.us = phi i32 [ %i.ab, %.preheader.us.new ], [ -1073725440, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv15
  %i.h = load i32, ptr %i.g, align 4, !tbaa !114
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = mul i32 %i.h, %i.k
  %i.m = add i32 %i.l, %.043.i7.us
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !113
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv15
  %i.q = load i32, ptr %i.p, align 4, !tbaa !114
  %i.r = mul i32 %i.q, %i.k
  %i.s = add i32 %i.r, %.0.i8.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !113
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv15
  %i.w = load i32, ptr %i.v, align 4, !tbaa !114
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next
  %i.y = load i16, ptr %i.x, align 2, !tbaa !107
  %i.z = sext i16 %i.y to i32                     ; 2 uses
  %i.aa = mul i32 %i.w, %i.z
  %i.ab = add i32 %i.aa, %i.m                     ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !113
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv15
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !114
  %i.ag = mul i32 %i.af, %i.z
  %i.ah = add i32 %i.ag, %i.s                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !6

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 3 uses
  %.0.i8.us.epil.init = phi i32 [ -1073725440, %.preheader.us ], [ %i.ah, %._crit_edge.us.unr-lcssa ]
  %.043.i7.us.epil.init = phi i32 [ -1073725440, %.preheader.us ], [ %i.ab, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !113
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv15
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !114
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.an = load i16, ptr %i.am, align 2, !tbaa !107
  %i.ao = sext i16 %i.an to i32                   ; 2 uses
  %i.ap = mul i32 %i.al, %i.ao
  %i.aq = add i32 %i.ap, %.043.i7.us.epil.init
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.epil.init
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !113
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv15
  %i.au = load i32, ptr %i.at, align 4, !tbaa !114
  %i.av = mul i32 %i.au, %i.ao
  %i.aw = add i32 %i.av, %.0.i8.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa23 = phi i32 [ %i.ab, %._crit_edge.us.unr-lcssa ], [ %i.aq, %.epil.preheader ]
  %.lcssa = phi i32 [ %i.ah, %._crit_edge.us.unr-lcssa ], [ %i.aw, %.epil.preheader ]
  %i.ax = ashr i32 %.lcssa23, 15
  %i.ay = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 -32768)
  %i.az = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 32767)
  %.0.i48.i.us = trunc nsw i32 %i.az to i16
  %i.ba = xor i16 %.0.i48.i.us, -32768
  %i.bb = tail call i16 @llvm.bswap.i16(i16 %i.ba)
  %.idx = shl nuw nsw i64 %indvars.iv15, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 %.idx ; 2 uses
  store i16 %i.bb, ptr %i.bc, align 1, !tbaa !108
  %i.bd = ashr i32 %.lcssa, 15
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 -32768)
  %i.bf = tail call i32 @llvm.smin.i32(i32 %i.be, i32 32767)
  %.0.i46.i.us = trunc nsw i32 %i.bf to i16
  %i.bg = xor i16 %.0.i46.i.us, -32768
  %i.bh = tail call i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %i.bh, ptr %i.bi, align 1, !tbaa !108
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1 ; 2 uses
  %exitcond19.not = icmp eq i64 %indvars.iv.next16, %wide.trip.count18
  br i1 %exitcond19.not, label %yuv2nv12cX_16_c_template.exit, label %.preheader.us, !llvm.loop !7

yuv2nv12cX_16_c_template.exit:                    ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2nv12cX_16LE_c(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7) #3 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2nv12cX_16_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %wide.trip.count18 = zext nneg i32 %7 to i64    ; 2 uses
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw nsw i64 %wide.trip.count18, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %i.c, i1 false), !tbaa !108
  br label %yuv2nv12cX_16_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod26 = trunc i32 %3 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv15 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next16, %._crit_edge.us ] ; 8 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.0.i8.us = phi i32 [ %i.ah, %.preheader.us.new ], [ -1073725440, %.preheader.us ]
  %.043.i7.us = phi i32 [ %i.ab, %.preheader.us.new ], [ -1073725440, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv15
  %i.h = load i32, ptr %i.g, align 4, !tbaa !114
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = mul i32 %i.h, %i.k
  %i.m = add i32 %i.l, %.043.i7.us
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !113
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv15
  %i.q = load i32, ptr %i.p, align 4, !tbaa !114
  %i.r = mul i32 %i.q, %i.k
  %i.s = add i32 %i.r, %.0.i8.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !113
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv15
  %i.w = load i32, ptr %i.v, align 4, !tbaa !114
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next
  %i.y = load i16, ptr %i.x, align 2, !tbaa !107
  %i.z = sext i16 %i.y to i32                     ; 2 uses
  %i.aa = mul i32 %i.w, %i.z
  %i.ab = add i32 %i.aa, %i.m                     ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !113
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv15
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !114
  %i.ag = mul i32 %i.af, %i.z
  %i.ah = add i32 %i.ag, %i.s                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !6

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 3 uses
  %.0.i8.us.epil.init = phi i32 [ -1073725440, %.preheader.us ], [ %i.ah, %._crit_edge.us.unr-lcssa ]
  %.043.i7.us.epil.init = phi i32 [ -1073725440, %.preheader.us ], [ %i.ab, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !113
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv15
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !114
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.an = load i16, ptr %i.am, align 2, !tbaa !107
  %i.ao = sext i16 %i.an to i32                   ; 2 uses
  %i.ap = mul i32 %i.al, %i.ao
  %i.aq = add i32 %i.ap, %.043.i7.us.epil.init
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.epil.init
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !113
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv15
  %i.au = load i32, ptr %i.at, align 4, !tbaa !114
  %i.av = mul i32 %i.au, %i.ao
  %i.aw = add i32 %i.av, %.0.i8.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa23 = phi i32 [ %i.ab, %._crit_edge.us.unr-lcssa ], [ %i.aq, %.epil.preheader ]
  %.lcssa = phi i32 [ %i.ah, %._crit_edge.us.unr-lcssa ], [ %i.aw, %.epil.preheader ]
  %i.ax = ashr i32 %.lcssa23, 15
  %i.ay = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 -32768)
  %i.az = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 32767)
  %.0.i47.i.us = trunc nsw i32 %i.az to i16
  %i.ba = xor i16 %.0.i47.i.us, -32768
  %.idx = shl nuw nsw i64 %indvars.iv15, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 %.idx ; 2 uses
  store i16 %i.ba, ptr %i.bb, align 1, !tbaa !108
  %i.bc = ashr i32 %.lcssa, 15
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 -32768)
  %i.be = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 32767)
  %.0.i.i.us = trunc nsw i32 %i.be to i16
  %i.bf = xor i16 %.0.i.i.us, -32768
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i16 %i.bf, ptr %i.bg, align 1, !tbaa !108
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1 ; 2 uses
  %exitcond19.not = icmp eq i64 %indvars.iv.next16, %wide.trip.count18
  br i1 %exitcond19.not, label %yuv2nv12cX_16_c_template.exit, label %.preheader.us, !llvm.loop !7

yuv2nv12cX_16_c_template.exit:                    ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2msbplaneX_10BE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2msbplaneX_10_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2msbplaneX_10_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count13 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.026.i4.us = phi i32 [ %i.as, %.preheader.us.new ], [ 65536, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !107
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !107
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = add nsw i32 %i.n, %.026.i4.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load i16, ptr %i.u, align 2, !tbaa !107
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = add nsw i32 %i.ah, %i.y
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = add nsw i32 %i.ar, %i.ai                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !8

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.026.i4.us.epil.init = phi i32 [ 65536, %.preheader.us ], [ %i.as, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.026.i4.us.epil = phi i32 [ %.026.i4.us.epil.init, %.epil.preheader ], [ %i.bc, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !107
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !107
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = add nsw i32 %i.bb, %.026.i4.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !163

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.as, %._crit_edge.us.unr-lcssa ], [ %i.bc, %bb.b ]
  %i.bd = ashr i32 %.lcssa, 17
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 1023)
  %.0.i31.i.tr.us = trunc nuw nsw i32 %i.bf to i16
  %i.bg = shl nuw i16 %.0.i31.i.tr.us, 6
  %i.bh = tail call i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv10
  store i16 %i.bh, ptr %i.bi, align 1, !tbaa !108
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2msbplaneX_10_c_template.exit, label %.preheader.us, !llvm.loop !9

yuv2msbplaneX_10_c_template.exit:                 ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2msbplaneX_10LE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2msbplaneX_10_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2msbplaneX_10_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count13 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.026.i4.us = phi i32 [ %i.as, %.preheader.us.new ], [ 65536, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !107
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !107
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = add nsw i32 %i.n, %.026.i4.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load i16, ptr %i.u, align 2, !tbaa !107
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = add nsw i32 %i.ah, %i.y
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = add nsw i32 %i.ar, %i.ai                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !8

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.026.i4.us.epil.init = phi i32 [ 65536, %.preheader.us ], [ %i.as, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.026.i4.us.epil = phi i32 [ %.026.i4.us.epil.init, %.epil.preheader ], [ %i.bc, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !107
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !107
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = add nsw i32 %i.bb, %.026.i4.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !164

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.as, %._crit_edge.us.unr-lcssa ], [ %i.bc, %bb.b ]
  %i.bd = ashr i32 %.lcssa, 17
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 1023)
  %.0.i.i.tr.us = trunc nuw nsw i32 %i.bf to i16
  %i.bg = shl nuw i16 %.0.i.i.tr.us, 6
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv10
  store i16 %i.bg, ptr %i.bh, align 1, !tbaa !108
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2msbplaneX_10_c_template.exit, label %.preheader.us, !llvm.loop !9

yuv2msbplaneX_10_c_template.exit:                 ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2msbplane1_10BE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2msbplane1_10_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 16)
  %i.h = ashr <8 x i32> %i.g, splat (i32 5)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 1023))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = shl nuw <8 x i16> %i.k, splat (i16 6)
  %i.m = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.l)
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.m, ptr %i.n, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2msbplane1_10_c_template.exit, label %.lr.ph.preheader4

.lr.ph.preheader4:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader4
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = add nsw i32 %i.r, 16
  %i.t = ashr i32 %i.s, 5
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.u, i32 1023)
  %.0.i22.i.tr.prol = trunc nuw nsw i32 %i.v to i16
  %i.w = shl nuw i16 %.0.i22.i.tr.prol, 6
  %i.x = tail call i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.x, ptr %i.y, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader4
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader4 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.z = add nsw i64 %wide.trip.count, -1
  %i.aa = icmp eq i64 %indvars.iv.ph, %i.z
  br i1 %i.aa, label %yuv2msbplane1_10_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, 16
  %i.af = ashr i32 %i.ae, 5
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 1023)
  %.0.i22.i.tr = trunc nuw nsw i32 %i.ah to i16
  %i.ai = shl nuw i16 %.0.i22.i.tr, 6
  %i.aj = tail call i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.aj, ptr %i.ak, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = add nsw i32 %i.an, 16
  %i.ap = ashr i32 %i.ao, 5
  %i.aq = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 0)
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 1023)
  %.0.i22.i.tr.1 = trunc nuw nsw i32 %i.ar to i16
  %i.as = shl nuw i16 %.0.i22.i.tr.1, 6
  %i.at = tail call i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.at, ptr %i.au, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2msbplane1_10_c_template.exit, label %.lr.ph, !llvm.loop !166

yuv2msbplane1_10_c_template.exit:                 ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2msbplane1_10LE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2msbplane1_10_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 16)
  %i.h = ashr <8 x i32> %i.g, splat (i32 5)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 1023))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = shl nuw <8 x i16> %i.k, splat (i16 6)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2msbplane1_10_c_template.exit, label %.lr.ph.preheader4

.lr.ph.preheader4:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader4
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.p = load i16, ptr %i.o, align 2, !tbaa !107
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 16
  %i.s = ashr i32 %i.r, 5
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.t, i32 1023)
  %.0.i.i.tr.prol = trunc nuw nsw i32 %i.u to i16
  %i.v = shl nuw i16 %.0.i.i.tr.prol, 6
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.v, ptr %i.w, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader4
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader4 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.x = add nsw i64 %wide.trip.count, -1
  %i.y = icmp eq i64 %indvars.iv.ph, %i.x
  br i1 %i.y, label %yuv2msbplane1_10_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, 16
  %i.ad = ashr i32 %i.ac, 5
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 1023)
  %.0.i.i.tr = trunc nuw nsw i32 %i.af to i16
  %i.ag = shl nuw i16 %.0.i.i.tr, 6
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.ag, ptr %i.ah, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !107
  %i.ak = sext i16 %i.aj to i32
  %i.al = add nsw i32 %i.ak, 16
  %i.am = ashr i32 %i.al, 5
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.an, i32 1023)
  %.0.i.i.tr.1 = trunc nuw nsw i32 %i.ao to i16
  %i.ap = shl nuw i16 %.0.i.i.tr.1, 6
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.ap, ptr %i.aq, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2msbplane1_10_c_template.exit, label %.lr.ph, !llvm.loop !168

yuv2msbplane1_10_c_template.exit:                 ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2msbplaneX_12BE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2msbplaneX_10_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2msbplaneX_10_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count13 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.026.i4.us = phi i32 [ %i.as, %.preheader.us.new ], [ 16384, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !107
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !107
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = add nsw i32 %i.n, %.026.i4.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load i16, ptr %i.u, align 2, !tbaa !107
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = add nsw i32 %i.ah, %i.y
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = add nsw i32 %i.ar, %i.ai                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !8

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.026.i4.us.epil.init = phi i32 [ 16384, %.preheader.us ], [ %i.as, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.026.i4.us.epil = phi i32 [ %.026.i4.us.epil.init, %.epil.preheader ], [ %i.bc, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !107
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !107
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = add nsw i32 %i.bb, %.026.i4.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !169

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.as, %._crit_edge.us.unr-lcssa ], [ %i.bc, %bb.b ]
  %i.bd = ashr i32 %.lcssa, 15
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 4095)
  %.0.i31.i.tr.us = trunc nuw nsw i32 %i.bf to i16
  %i.bg = shl nuw i16 %.0.i31.i.tr.us, 4
  %i.bh = tail call i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv10
  store i16 %i.bh, ptr %i.bi, align 1, !tbaa !108
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2msbplaneX_10_c_template.exit, label %.preheader.us, !llvm.loop !9

yuv2msbplaneX_10_c_template.exit:                 ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2msbplaneX_12LE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2msbplaneX_10_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2msbplaneX_10_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count13 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.026.i4.us = phi i32 [ %i.as, %.preheader.us.new ], [ 16384, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !107
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !107
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = add nsw i32 %i.n, %.026.i4.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load i16, ptr %i.u, align 2, !tbaa !107
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = add nsw i32 %i.ah, %i.y
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = add nsw i32 %i.ar, %i.ai                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !8

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.026.i4.us.epil.init = phi i32 [ 16384, %.preheader.us ], [ %i.as, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.026.i4.us.epil = phi i32 [ %.026.i4.us.epil.init, %.epil.preheader ], [ %i.bc, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !107
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !107
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = add nsw i32 %i.bb, %.026.i4.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !170

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.as, %._crit_edge.us.unr-lcssa ], [ %i.bc, %bb.b ]
  %i.bd = ashr i32 %.lcssa, 15
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 4095)
  %.0.i.i.tr.us = trunc nuw nsw i32 %i.bf to i16
  %i.bg = shl nuw i16 %.0.i.i.tr.us, 4
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv10
  store i16 %i.bg, ptr %i.bh, align 1, !tbaa !108
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2msbplaneX_10_c_template.exit, label %.preheader.us, !llvm.loop !9

yuv2msbplaneX_10_c_template.exit:                 ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2msbplane1_12BE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2msbplane1_10_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 4)
  %i.h = ashr <8 x i32> %i.g, splat (i32 3)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 4095))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = shl nuw <8 x i16> %i.k, splat (i16 4)
  %i.m = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.l)
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.m, ptr %i.n, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2msbplane1_10_c_template.exit, label %.lr.ph.preheader4

.lr.ph.preheader4:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader4
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = add nsw i32 %i.r, 4
  %i.t = ashr i32 %i.s, 3
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.u, i32 4095)
  %.0.i22.i.tr.prol = trunc nuw nsw i32 %i.v to i16
  %i.w = shl nuw i16 %.0.i22.i.tr.prol, 4
  %i.x = tail call i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.x, ptr %i.y, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader4
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader4 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.z = add nsw i64 %wide.trip.count, -1
  %i.aa = icmp eq i64 %indvars.iv.ph, %i.z
  br i1 %i.aa, label %yuv2msbplane1_10_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, 4
  %i.af = ashr i32 %i.ae, 3
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 4095)
  %.0.i22.i.tr = trunc nuw nsw i32 %i.ah to i16
  %i.ai = shl nuw i16 %.0.i22.i.tr, 4
  %i.aj = tail call i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.aj, ptr %i.ak, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = add nsw i32 %i.an, 4
  %i.ap = ashr i32 %i.ao, 3
  %i.aq = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 0)
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 4095)
  %.0.i22.i.tr.1 = trunc nuw nsw i32 %i.ar to i16
  %i.as = shl nuw i16 %.0.i22.i.tr.1, 4
  %i.at = tail call i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.at, ptr %i.au, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2msbplane1_10_c_template.exit, label %.lr.ph, !llvm.loop !172

yuv2msbplane1_10_c_template.exit:                 ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2msbplane1_12LE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2msbplane1_10_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 4)
  %i.h = ashr <8 x i32> %i.g, splat (i32 3)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 4095))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = shl nuw <8 x i16> %i.k, splat (i16 4)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2msbplane1_10_c_template.exit, label %.lr.ph.preheader4

.lr.ph.preheader4:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader4
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.p = load i16, ptr %i.o, align 2, !tbaa !107
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 4
  %i.s = ashr i32 %i.r, 3
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.t, i32 4095)
  %.0.i.i.tr.prol = trunc nuw nsw i32 %i.u to i16
  %i.v = shl nuw i16 %.0.i.i.tr.prol, 4
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.v, ptr %i.w, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader4
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader4 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.x = add nsw i64 %wide.trip.count, -1
  %i.y = icmp eq i64 %indvars.iv.ph, %i.x
  br i1 %i.y, label %yuv2msbplane1_10_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, 4
  %i.ad = ashr i32 %i.ac, 3
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 4095)
  %.0.i.i.tr = trunc nuw nsw i32 %i.af to i16
  %i.ag = shl nuw i16 %.0.i.i.tr, 4
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.ag, ptr %i.ah, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !107
  %i.ak = sext i16 %i.aj to i32
  %i.al = add nsw i32 %i.ak, 4
  %i.am = ashr i32 %i.al, 3
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.an, i32 4095)
  %.0.i.i.tr.1 = trunc nuw nsw i32 %i.ao to i16
  %i.ap = shl nuw i16 %.0.i.i.tr.1, 4
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.ap, ptr %i.aq, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2msbplane1_10_c_template.exit, label %.lr.ph, !llvm.loop !174

yuv2msbplane1_10_c_template.exit:                 ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2planeX_9BE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2planeX_10_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2planeX_10_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count13 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.024.i4.us = phi i32 [ %i.as, %.preheader.us.new ], [ 131072, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !107
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !107
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = add nsw i32 %i.n, %.024.i4.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load i16, ptr %i.u, align 2, !tbaa !107
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = add nsw i32 %i.ah, %i.y
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = add nsw i32 %i.ar, %i.ai                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !10

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.024.i4.us.epil.init = phi i32 [ 131072, %.preheader.us ], [ %i.as, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.024.i4.us.epil = phi i32 [ %.024.i4.us.epil.init, %.epil.preheader ], [ %i.bc, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !107
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !107
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = add nsw i32 %i.bb, %.024.i4.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !175

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.as, %._crit_edge.us.unr-lcssa ], [ %i.bc, %bb.b ]
  %i.bd = ashr i32 %.lcssa, 18
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 511)
  %i.bg = trunc nuw nsw i32 %i.bf to i16
  %i.bh = tail call i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv10
  store i16 %i.bh, ptr %i.bi, align 1, !tbaa !108
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2planeX_10_c_template.exit, label %.preheader.us, !llvm.loop !11

yuv2planeX_10_c_template.exit:                    ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2planeX_9LE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2planeX_10_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2planeX_10_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count13 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.024.i4.us = phi i32 [ %i.as, %.preheader.us.new ], [ 131072, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !107
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !107
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = add nsw i32 %i.n, %.024.i4.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load i16, ptr %i.u, align 2, !tbaa !107
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = add nsw i32 %i.ah, %i.y
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = add nsw i32 %i.ar, %i.ai                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !10

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.024.i4.us.epil.init = phi i32 [ 131072, %.preheader.us ], [ %i.as, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.024.i4.us.epil = phi i32 [ %.024.i4.us.epil.init, %.epil.preheader ], [ %i.bc, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !107
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !107
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = add nsw i32 %i.bb, %.024.i4.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !176

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.as, %._crit_edge.us.unr-lcssa ], [ %i.bc, %bb.b ]
  %i.bd = ashr i32 %.lcssa, 18
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 511)
  %i.bg = trunc nuw nsw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv10
  store i16 %i.bg, ptr %i.bh, align 1, !tbaa !108
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2planeX_10_c_template.exit, label %.preheader.us, !llvm.loop !11

yuv2planeX_10_c_template.exit:                    ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2plane1_9BE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2plane1_10_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 32)
  %i.h = ashr <8 x i32> %i.g, splat (i32 6)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 511))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.k)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2plane1_10_c_template.exit, label %.lr.ph.preheader4

.lr.ph.preheader4:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader4
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.p = load i16, ptr %i.o, align 2, !tbaa !107
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 32
  %i.s = ashr i32 %i.r, 6
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.t, i32 511)
  %i.v = trunc nuw nsw i32 %i.u to i16
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.w, ptr %i.x, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader4
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader4 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.y = add nsw i64 %wide.trip.count, -1
  %i.z = icmp eq i64 %indvars.iv.ph, %i.y
  br i1 %i.z, label %yuv2plane1_10_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !107
  %i.ac = sext i16 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, 32
  %i.ae = ashr i32 %i.ad, 6
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 511)
  %i.ah = trunc nuw nsw i32 %i.ag to i16
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.ai, ptr %i.aj, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !107
  %i.am = sext i16 %i.al to i32
  %i.an = add nsw i32 %i.am, 32
  %i.ao = ashr i32 %i.an, 6
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 511)
  %i.ar = trunc nuw nsw i32 %i.aq to i16
  %i.as = tail call i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.as, ptr %i.at, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2plane1_10_c_template.exit, label %.lr.ph, !llvm.loop !178

yuv2plane1_10_c_template.exit:                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2plane1_9LE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2plane1_10_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 32)
  %i.h = ashr <8 x i32> %i.g, splat (i32 6)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 511))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.k, ptr %i.l, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2plane1_10_c_template.exit, label %.lr.ph.preheader4

.lr.ph.preheader4:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader4
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.o = load i16, ptr %i.n, align 2, !tbaa !107
  %i.p = sext i16 %i.o to i32
  %i.q = add nsw i32 %i.p, 32
  %i.r = ashr i32 %i.q, 6
  %i.s = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.s, i32 511)
  %i.u = trunc nuw nsw i32 %i.t to i16
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.u, ptr %i.v, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader4
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader4 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.w = add nsw i64 %wide.trip.count, -1
  %i.x = icmp eq i64 %indvars.iv.ph, %i.w
  br i1 %i.x, label %yuv2plane1_10_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.z = load i16, ptr %i.y, align 2, !tbaa !107
  %i.aa = sext i16 %i.z to i32
  %i.ab = add nsw i32 %i.aa, 32
  %i.ac = ashr i32 %i.ab, 6
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 511)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.af, ptr %i.ag, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !107
  %i.aj = sext i16 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, 32
  %i.al = ashr i32 %i.ak, 6
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %i.an = tail call i32 @llvm.umin.i32(i32 %i.am, i32 511)
  %i.ao = trunc nuw nsw i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.ao, ptr %i.ap, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2plane1_10_c_template.exit, label %.lr.ph, !llvm.loop !180

yuv2plane1_10_c_template.exit:                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2planeX_10BE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2planeX_10_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2planeX_10_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count13 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.024.i4.us = phi i32 [ %i.as, %.preheader.us.new ], [ 65536, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !107
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !107
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = add nsw i32 %i.n, %.024.i4.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load i16, ptr %i.u, align 2, !tbaa !107
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = add nsw i32 %i.ah, %i.y
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = add nsw i32 %i.ar, %i.ai                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !10

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.024.i4.us.epil.init = phi i32 [ 65536, %.preheader.us ], [ %i.as, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.024.i4.us.epil = phi i32 [ %.024.i4.us.epil.init, %.epil.preheader ], [ %i.bc, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !107
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !107
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = add nsw i32 %i.bb, %.024.i4.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !181

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.as, %._crit_edge.us.unr-lcssa ], [ %i.bc, %bb.b ]
  %i.bd = ashr i32 %.lcssa, 17
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 1023)
  %i.bg = trunc nuw nsw i32 %i.bf to i16
  %i.bh = tail call i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv10
  store i16 %i.bh, ptr %i.bi, align 1, !tbaa !108
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2planeX_10_c_template.exit, label %.preheader.us, !llvm.loop !11

yuv2planeX_10_c_template.exit:                    ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2planeX_10LE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2planeX_10_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2planeX_10_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count13 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.024.i4.us = phi i32 [ %i.as, %.preheader.us.new ], [ 65536, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !107
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !107
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = add nsw i32 %i.n, %.024.i4.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load i16, ptr %i.u, align 2, !tbaa !107
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = add nsw i32 %i.ah, %i.y
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = add nsw i32 %i.ar, %i.ai                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !10

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.024.i4.us.epil.init = phi i32 [ 65536, %.preheader.us ], [ %i.as, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.024.i4.us.epil = phi i32 [ %.024.i4.us.epil.init, %.epil.preheader ], [ %i.bc, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !107
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !107
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = add nsw i32 %i.bb, %.024.i4.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !182

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.as, %._crit_edge.us.unr-lcssa ], [ %i.bc, %bb.b ]
  %i.bd = ashr i32 %.lcssa, 17
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 1023)
  %i.bg = trunc nuw nsw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv10
  store i16 %i.bg, ptr %i.bh, align 1, !tbaa !108
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2planeX_10_c_template.exit, label %.preheader.us, !llvm.loop !11

yuv2planeX_10_c_template.exit:                    ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2plane1_10BE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2plane1_10_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 16)
  %i.h = ashr <8 x i32> %i.g, splat (i32 5)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 1023))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.k)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2plane1_10_c_template.exit, label %.lr.ph.preheader4

.lr.ph.preheader4:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader4
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.p = load i16, ptr %i.o, align 2, !tbaa !107
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 16
  %i.s = ashr i32 %i.r, 5
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.t, i32 1023)
  %i.v = trunc nuw nsw i32 %i.u to i16
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.w, ptr %i.x, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader4
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader4 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.y = add nsw i64 %wide.trip.count, -1
  %i.z = icmp eq i64 %indvars.iv.ph, %i.y
  br i1 %i.z, label %yuv2plane1_10_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !107
  %i.ac = sext i16 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, 16
  %i.ae = ashr i32 %i.ad, 5
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 1023)
  %i.ah = trunc nuw nsw i32 %i.ag to i16
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.ai, ptr %i.aj, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !107
  %i.am = sext i16 %i.al to i32
  %i.an = add nsw i32 %i.am, 16
  %i.ao = ashr i32 %i.an, 5
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 1023)
  %i.ar = trunc nuw nsw i32 %i.aq to i16
  %i.as = tail call i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.as, ptr %i.at, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2plane1_10_c_template.exit, label %.lr.ph, !llvm.loop !184

yuv2plane1_10_c_template.exit:                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2plane1_10LE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2plane1_10_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 16)
  %i.h = ashr <8 x i32> %i.g, splat (i32 5)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 1023))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.k, ptr %i.l, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2plane1_10_c_template.exit, label %.lr.ph.preheader4

.lr.ph.preheader4:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader4
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.o = load i16, ptr %i.n, align 2, !tbaa !107
  %i.p = sext i16 %i.o to i32
  %i.q = add nsw i32 %i.p, 16
  %i.r = ashr i32 %i.q, 5
  %i.s = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.s, i32 1023)
  %i.u = trunc nuw nsw i32 %i.t to i16
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.u, ptr %i.v, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader4
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader4 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.w = add nsw i64 %wide.trip.count, -1
  %i.x = icmp eq i64 %indvars.iv.ph, %i.w
  br i1 %i.x, label %yuv2plane1_10_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.z = load i16, ptr %i.y, align 2, !tbaa !107
  %i.aa = sext i16 %i.z to i32
  %i.ab = add nsw i32 %i.aa, 16
  %i.ac = ashr i32 %i.ab, 5
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 1023)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.af, ptr %i.ag, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !107
  %i.aj = sext i16 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, 16
  %i.al = ashr i32 %i.ak, 5
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %i.an = tail call i32 @llvm.umin.i32(i32 %i.am, i32 1023)
  %i.ao = trunc nuw nsw i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.ao, ptr %i.ap, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2plane1_10_c_template.exit, label %.lr.ph, !llvm.loop !186

yuv2plane1_10_c_template.exit:                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2planeX_12BE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2planeX_10_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2planeX_10_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count13 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.024.i4.us = phi i32 [ %i.as, %.preheader.us.new ], [ 16384, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !107
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !107
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = add nsw i32 %i.n, %.024.i4.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load i16, ptr %i.u, align 2, !tbaa !107
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = add nsw i32 %i.ah, %i.y
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = add nsw i32 %i.ar, %i.ai                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !10

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.024.i4.us.epil.init = phi i32 [ 16384, %.preheader.us ], [ %i.as, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.024.i4.us.epil = phi i32 [ %.024.i4.us.epil.init, %.epil.preheader ], [ %i.bc, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !107
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !107
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = add nsw i32 %i.bb, %.024.i4.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !187

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.as, %._crit_edge.us.unr-lcssa ], [ %i.bc, %bb.b ]
  %i.bd = ashr i32 %.lcssa, 15
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 4095)
  %i.bg = trunc nuw nsw i32 %i.bf to i16
  %i.bh = tail call i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv10
  store i16 %i.bh, ptr %i.bi, align 1, !tbaa !108
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2planeX_10_c_template.exit, label %.preheader.us, !llvm.loop !11

yuv2planeX_10_c_template.exit:                    ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2planeX_12LE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2planeX_10_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2planeX_10_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count13 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.024.i4.us = phi i32 [ %i.as, %.preheader.us.new ], [ 16384, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !107
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !107
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = add nsw i32 %i.n, %.024.i4.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load i16, ptr %i.u, align 2, !tbaa !107
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = add nsw i32 %i.ah, %i.y
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = add nsw i32 %i.ar, %i.ai                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !10

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.024.i4.us.epil.init = phi i32 [ 16384, %.preheader.us ], [ %i.as, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.024.i4.us.epil = phi i32 [ %.024.i4.us.epil.init, %.epil.preheader ], [ %i.bc, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !107
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !107
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = add nsw i32 %i.bb, %.024.i4.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !188

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.as, %._crit_edge.us.unr-lcssa ], [ %i.bc, %bb.b ]
  %i.bd = ashr i32 %.lcssa, 15
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 4095)
  %i.bg = trunc nuw nsw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv10
  store i16 %i.bg, ptr %i.bh, align 1, !tbaa !108
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2planeX_10_c_template.exit, label %.preheader.us, !llvm.loop !11

yuv2planeX_10_c_template.exit:                    ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2plane1_12BE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2plane1_10_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 4)
  %i.h = ashr <8 x i32> %i.g, splat (i32 3)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 4095))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.k)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2plane1_10_c_template.exit, label %.lr.ph.preheader4

.lr.ph.preheader4:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader4
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.p = load i16, ptr %i.o, align 2, !tbaa !107
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 4
  %i.s = ashr i32 %i.r, 3
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.t, i32 4095)
  %i.v = trunc nuw nsw i32 %i.u to i16
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.w, ptr %i.x, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader4
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader4 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.y = add nsw i64 %wide.trip.count, -1
  %i.z = icmp eq i64 %indvars.iv.ph, %i.y
  br i1 %i.z, label %yuv2plane1_10_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !107
  %i.ac = sext i16 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, 4
  %i.ae = ashr i32 %i.ad, 3
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 4095)
  %i.ah = trunc nuw nsw i32 %i.ag to i16
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.ai, ptr %i.aj, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !107
  %i.am = sext i16 %i.al to i32
  %i.an = add nsw i32 %i.am, 4
  %i.ao = ashr i32 %i.an, 3
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 4095)
  %i.ar = trunc nuw nsw i32 %i.aq to i16
  %i.as = tail call i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.as, ptr %i.at, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2plane1_10_c_template.exit, label %.lr.ph, !llvm.loop !190

yuv2plane1_10_c_template.exit:                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2plane1_12LE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2plane1_10_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 4)
  %i.h = ashr <8 x i32> %i.g, splat (i32 3)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 4095))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.k, ptr %i.l, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2plane1_10_c_template.exit, label %.lr.ph.preheader4

.lr.ph.preheader4:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader4
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.o = load i16, ptr %i.n, align 2, !tbaa !107
  %i.p = sext i16 %i.o to i32
  %i.q = add nsw i32 %i.p, 4
  %i.r = ashr i32 %i.q, 3
  %i.s = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.s, i32 4095)
  %i.u = trunc nuw nsw i32 %i.t to i16
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.u, ptr %i.v, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader4
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader4 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.w = add nsw i64 %wide.trip.count, -1
  %i.x = icmp eq i64 %indvars.iv.ph, %i.w
  br i1 %i.x, label %yuv2plane1_10_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.z = load i16, ptr %i.y, align 2, !tbaa !107
  %i.aa = sext i16 %i.z to i32
  %i.ab = add nsw i32 %i.aa, 4
  %i.ac = ashr i32 %i.ab, 3
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 4095)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.af, ptr %i.ag, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !107
  %i.aj = sext i16 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, 4
  %i.al = ashr i32 %i.ak, 3
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %i.an = tail call i32 @llvm.umin.i32(i32 %i.am, i32 4095)
  %i.ao = trunc nuw nsw i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.ao, ptr %i.ap, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2plane1_10_c_template.exit, label %.lr.ph, !llvm.loop !192

yuv2plane1_10_c_template.exit:                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2planeX_14BE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2planeX_10_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2planeX_10_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count13 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.024.i4.us = phi i32 [ %i.as, %.preheader.us.new ], [ 4096, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !107
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !107
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = add nsw i32 %i.n, %.024.i4.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load i16, ptr %i.u, align 2, !tbaa !107
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = add nsw i32 %i.ah, %i.y
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = add nsw i32 %i.ar, %i.ai                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !10

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.024.i4.us.epil.init = phi i32 [ 4096, %.preheader.us ], [ %i.as, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.024.i4.us.epil = phi i32 [ %.024.i4.us.epil.init, %.epil.preheader ], [ %i.bc, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !107
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !107
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = add nsw i32 %i.bb, %.024.i4.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !193

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.as, %._crit_edge.us.unr-lcssa ], [ %i.bc, %bb.b ]
  %i.bd = ashr i32 %.lcssa, 13
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 16383)
  %i.bg = trunc nuw nsw i32 %i.bf to i16
  %i.bh = tail call i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv10
  store i16 %i.bh, ptr %i.bi, align 1, !tbaa !108
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2planeX_10_c_template.exit, label %.preheader.us, !llvm.loop !11

yuv2planeX_10_c_template.exit:                    ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2planeX_14LE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2planeX_10_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw i32 %4, 1
  %i.d = zext i32 %i.c to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.d, i1 false), !tbaa !108
  br label %yuv2planeX_10_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count13 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.024.i4.us = phi i32 [ %i.as, %.preheader.us.new ], [ 4096, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !107
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !107
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = add nsw i32 %i.n, %.024.i4.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load i16, ptr %i.u, align 2, !tbaa !107
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = add nsw i32 %i.x, %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = add nsw i32 %i.ah, %i.y
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !107
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = add nsw i32 %i.ar, %i.ai                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !10

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.024.i4.us.epil.init = phi i32 [ 4096, %.preheader.us ], [ %i.as, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.024.i4.us.epil = phi i32 [ %.024.i4.us.epil.init, %.epil.preheader ], [ %i.bc, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !107
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !107
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = add nsw i32 %i.bb, %.024.i4.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !194

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.as, %._crit_edge.us.unr-lcssa ], [ %i.bc, %bb.b ]
  %i.bd = ashr i32 %.lcssa, 13
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 16383)
  %i.bg = trunc nuw nsw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv10
  store i16 %i.bg, ptr %i.bh, align 1, !tbaa !108
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2planeX_10_c_template.exit, label %.preheader.us, !llvm.loop !11

yuv2planeX_10_c_template.exit:                    ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2plane1_14BE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2plane1_10_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 1)
  %i.h = ashr <8 x i32> %i.g, splat (i32 1)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 16383))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.k)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2plane1_10_c_template.exit, label %.lr.ph.preheader4

.lr.ph.preheader4:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader4
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.p = load i16, ptr %i.o, align 2, !tbaa !107
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 1
  %i.s = ashr i32 %i.r, 1
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.t, i32 16383)
  %i.v = trunc nuw nsw i32 %i.u to i16
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.w, ptr %i.x, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader4
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader4 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.y = add nsw i64 %wide.trip.count, -1
  %i.z = icmp eq i64 %indvars.iv.ph, %i.y
  br i1 %i.z, label %yuv2plane1_10_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !107
  %i.ac = sext i16 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = ashr i32 %i.ad, 1
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 16383)
  %i.ah = trunc nuw nsw i32 %i.ag to i16
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.ai, ptr %i.aj, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !107
  %i.am = sext i16 %i.al to i32
  %i.an = add nsw i32 %i.am, 1
  %i.ao = ashr i32 %i.an, 1
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 16383)
  %i.ar = trunc nuw nsw i32 %i.aq to i16
  %i.as = tail call i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.as, ptr %i.at, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2plane1_10_c_template.exit, label %.lr.ph, !llvm.loop !196

yuv2plane1_10_c_template.exit:                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2plane1_14LE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2plane1_10_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !107
  %i.f = sext <8 x i16> %wide.load to <8 x i32>
  %i.g = add nsw <8 x i32> %i.f, splat (i32 1)
  %i.h = ashr <8 x i32> %i.g, splat (i32 1)
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 16383))
  %i.k = trunc nuw nsw <8 x i32> %i.j to <8 x i16>
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.k, ptr %i.l, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2plane1_10_c_template.exit, label %.lr.ph.preheader4

.lr.ph.preheader4:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader4
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.o = load i16, ptr %i.n, align 2, !tbaa !107
  %i.p = sext i16 %i.o to i32
  %i.q = add nsw i32 %i.p, 1
  %i.r = ashr i32 %i.q, 1
  %i.s = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.s, i32 16383)
  %i.u = trunc nuw nsw i32 %i.t to i16
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.u, ptr %i.v, align 1, !tbaa !108
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader4
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader4 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.w = add nsw i64 %wide.trip.count, -1
  %i.x = icmp eq i64 %indvars.iv.ph, %i.w
  br i1 %i.x, label %yuv2plane1_10_c_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.z = load i16, ptr %i.y, align 2, !tbaa !107
  %i.aa = sext i16 %i.z to i32
  %i.ab = add nsw i32 %i.aa, 1
  %i.ac = ashr i32 %i.ab, 1
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 16383)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.af, ptr %i.ag, align 1, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !107
  %i.aj = sext i16 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = ashr i32 %i.ak, 1
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %i.an = tail call i32 @llvm.umin.i32(i32 %i.am, i32 16383)
  %i.ao = trunc nuw nsw i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.ao, ptr %i.ap, align 1, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %yuv2plane1_10_c_template.exit, label %.lr.ph, !llvm.loop !198

yuv2plane1_10_c_template.exit:                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2planeX_floatBE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2planeX_float_bswap_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  %wide.trip.count13 = zext nneg i32 %4 to i64    ; 2 uses
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw nsw i64 %wide.trip.count13, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.c, i1 false), !tbaa !114
  br label %yuv2planeX_float_bswap_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.0.i5.us = phi i32 [ %i.an, %.preheader.us.new ], [ -1073725440, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv10
  %i.h = load i32, ptr %i.g, align 4, !tbaa !114
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32
  %i.l = mul i32 %i.h, %i.k
  %i.m = add i32 %i.l, %.0.i5.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !113
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv10
  %i.q = load i32, ptr %i.p, align 4, !tbaa !114
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = mul i32 %i.q, %i.t
  %i.v = add i32 %i.u, %i.m
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv10
  %i.z = load i32, ptr %i.y, align 4, !tbaa !114
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !107
  %i.ac = sext i16 %i.ab to i32
  %i.ad = mul i32 %i.z, %i.ac
  %i.ae = add i32 %i.ad, %i.v
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !113
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv10
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !114
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !107
  %i.al = sext i16 %i.ak to i32
  %i.am = mul i32 %i.ai, %i.al
  %i.an = add i32 %i.am, %i.ae                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !199

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.0.i5.us.epil.init = phi i32 [ -1073725440, %.preheader.us ], [ %i.an, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.0.i5.us.epil = phi i32 [ %.0.i5.us.epil.init, %.epil.preheader ], [ %i.aw, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !113
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv10
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !114
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.at = load i16, ptr %i.as, align 2, !tbaa !107
  %i.au = sext i16 %i.at to i32
  %i.av = mul i32 %i.ar, %i.au
  %i.aw = add i32 %i.av, %.0.i5.us.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !200

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.an, %._crit_edge.us.unr-lcssa ], [ %i.aw, %bb.b ]
  %i.ax = ashr i32 %.lcssa, 15
  %i.ay = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 -32768)
  %i.az = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 32767)
  %.0.i.i.us = trunc nsw i32 %i.az to i16
  %i.ba = xor i16 %.0.i.i.us, -32768
  %i.bb = uitofp nsz i16 %i.ba to float
  %i.bc = fmul nnan nsz float %i.bb, f0x37800080
  %i.bd = bitcast float %i.bc to i32
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv10
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !114
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2planeX_float_bswap_c_template.exit, label %.preheader.us, !llvm.loop !201

yuv2planeX_float_bswap_c_template.exit:           ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2plane1_floatBE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2plane1_float_bswap_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x i32>, ptr %i.e, align 4, !tbaa !114
  %i.f = add nsw <4 x i32> %wide.load, splat (i32 4)
  %i.g = ashr <4 x i32> %i.f, splat (i32 3)
  %i.h = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.g, <4 x i32> zeroinitializer)
  %i.i = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.h, <4 x i32> splat (i32 65535))
  %i.j = trunc nuw <4 x i32> %i.i to <4 x i16>
  %i.k = uitofp <4 x i16> %i.j to <4 x float>
  %i.l = fmul nnan nsz <4 x float> %i.k, splat (float f0x37800080)
  %i.m = bitcast <4 x float> %i.l to <4 x i32>
  %i.n = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.m)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  store <4 x i32> %i.n, ptr %i.o, align 4, !tbaa !114
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2plane1_float_bswap_c_template.exit, label %.lr.ph.preheader5

.lr.ph.preheader5:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader5, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader5 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !114
  %i.s = add nsw i32 %i.r, 4
  %i.t = ashr i32 %i.s, 3
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %.0.i.i2 = tail call i32 @llvm.umin.i32(i32 %i.u, i32 65535)
  %.0.i.i = trunc nuw i32 %.0.i.i2 to i16
  %i.v = uitofp nsz i16 %.0.i.i to float
  %i.w = fmul nnan nsz float %i.v, f0x37800080
  %i.x = bitcast float %i.w to i32
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.y, ptr %i.z, align 4, !tbaa !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %yuv2plane1_float_bswap_c_template.exit, label %.lr.ph, !llvm.loop !203

yuv2plane1_float_bswap_c_template.exit:           ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2planeX_floatLE_c(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader.lr.ph, label %yuv2planeX_float_c_template.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  %wide.trip.count13 = zext nneg i32 %4 to i64    ; 2 uses
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = shl nuw nsw i64 %wide.trip.count13, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.c, i1 false), !tbaa !116
  br label %yuv2planeX_float_c_template.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv10 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next11, %._crit_edge.us ] ; 7 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.0.i5.us = phi i32 [ %i.an, %.preheader.us.new ], [ -1073725440, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv10
  %i.h = load i32, ptr %i.g, align 4, !tbaa !114
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32
  %i.l = mul i32 %i.h, %i.k
  %i.m = add i32 %i.l, %.0.i5.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !113
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv10
  %i.q = load i32, ptr %i.p, align 4, !tbaa !114
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.s = load i16, ptr %i.r, align 2, !tbaa !107
  %i.t = sext i16 %i.s to i32
  %i.u = mul i32 %i.q, %i.t
  %i.v = add i32 %i.u, %i.m
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv10
  %i.z = load i32, ptr %i.y, align 4, !tbaa !114
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !107
  %i.ac = sext i16 %i.ab to i32
  %i.ad = mul i32 %i.z, %i.ac
  %i.ae = add i32 %i.ad, %i.v
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !113
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv10
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !114
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !107
  %i.al = sext i16 %i.ak to i32
  %i.am = mul i32 %i.ai, %i.al
  %i.an = add i32 %i.am, %i.ae                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !204

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.0.i5.us.epil.init = phi i32 [ -1073725440, %.preheader.us ], [ %i.an, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.0.i5.us.epil = phi i32 [ %.0.i5.us.epil.init, %.epil.preheader ], [ %i.aw, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !113
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv10
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !114
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil
  %i.at = load i16, ptr %i.as, align 2, !tbaa !107
  %i.au = sext i16 %i.at to i32
  %i.av = mul i32 %i.ar, %i.au
  %i.aw = add i32 %i.av, %.0.i5.us.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !205

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.an, %._crit_edge.us.unr-lcssa ], [ %i.aw, %bb.b ]
  %i.ax = ashr i32 %.lcssa, 15
  %i.ay = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 -32768)
  %i.az = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 32767)
  %.0.i.i.us = trunc nsw i32 %i.az to i16
  %i.ba = xor i16 %.0.i.i.us, -32768
  %i.bb = uitofp nsz i16 %i.ba to float
  %i.bc = fmul nnan nsz float %i.bb, f0x37800080
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv10
  store float %i.bc, ptr %i.bd, align 4, !tbaa !116
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %yuv2planeX_float_c_template.exit, label %.preheader.us, !llvm.loop !206

yuv2planeX_float_c_template.exit:                 ; preds = %._crit_edge.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2plane1_floatLE_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, i32 %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %yuv2plane1_float_c_template.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !114
  %wide.load5 = load <4 x i32>, ptr %i.c, align 4, !tbaa !114
  %i.d = add nsw <4 x i32> %wide.load, splat (i32 4)
  %i.e = add nsw <4 x i32> %wide.load5, splat (i32 4)
  %i.f = ashr <4 x i32> %i.d, splat (i32 3)
  %i.g = ashr <4 x i32> %i.e, splat (i32 3)
  %i.h = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.f, <4 x i32> zeroinitializer)
  %i.i = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.g, <4 x i32> zeroinitializer)
  %i.j = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.h, <4 x i32> splat (i32 65535))
  %i.k = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.i, <4 x i32> splat (i32 65535))
  %i.l = trunc nuw <4 x i32> %i.j to <4 x i16>
  %i.m = trunc nuw <4 x i32> %i.k to <4 x i16>
  %i.n = uitofp <4 x i16> %i.l to <4 x float>
  %i.o = uitofp <4 x i16> %i.m to <4 x float>
  %i.p = fmul nnan nsz <4 x float> %i.n, splat (float f0x37800080)
  %i.q = fmul nnan nsz <4 x float> %i.o, splat (float f0x37800080)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x float> %i.p, ptr %i.r, align 4, !tbaa !116
  store <4 x float> %i.q, ptr %i.s, align 4, !tbaa !116
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %yuv2plane1_float_c_template.exit, label %.lr.ph.preheader6

.lr.ph.preheader6:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader6 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !114
  %i.w = add nsw i32 %i.v, 4
  %i.x = ashr i32 %i.w, 3
  %i.y = tail call i32 @llvm.smax.i32(i32 %i.x, i32 0)
  %.0.i.i2 = tail call i32 @llvm.umin.i32(i32 %i.y, i32 65535)
  %.0.i.i = trunc nuw i32 %.0.i.i2 to i16
  %i.z = uitofp nsz i16 %.0.i.i to float
  %i.aa = fmul nnan nsz float %i.z, f0x37800080
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.aa, ptr %i.ab, align 4, !tbaa !116
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %yuv2plane1_float_c_template.exit, label %.lr.ph, !llvm.loop !208

yuv2plane1_float_c_template.exit:                 ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @yuv2plane1_8_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 9 uses
  %min.iters.check = icmp ult i32 %2, 16
  br i1 %min.iters.check, label %.lr.ph.preheader23, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.b = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.c = trunc i32 %4 to i3
  %i.d = trunc i64 %i.b to i3
  %i.e = xor i3 %i.c, -1
  %i.f = icmp ult i3 %i.e, %i.d
  %i.g = icmp ugt i64 %i.b, 7
  %i.h = or i1 %i.f, %i.g
end_hunk_0
begin_hunk_1_@yuv2ya8_X_c:bb.a

.preheader48.lr.ph:                               ; preds = %bb.a
  %.not = icmp eq ptr %8, null
  %i.b = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %.not, label %.preheader48.lr.ph.split.us, label %.preheader48.lr.ph.split

.preheader48.lr.ph.split.us:                      ; preds = %.preheader48.lr.ph
  %wide.trip.count110 = zext nneg i32 %10 to i64  ; 7 uses
  br i1 %i.b, label %.preheader48.us.us.preheader, label %iter.check

iter.check:                                       ; preds = %.preheader48.lr.ph.split.us
  %min.iters.check = icmp ult i32 %10, 4
  br i1 %min.iters.check, label %.preheader48.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check122 = icmp ult i32 %10, 16
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.c = and i64 %wide.trip.count110, 12
  %n.vec = and i64 %wide.trip.count110, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = shl nuw nsw i64 %index, 1
  %i.e = shl i64 %index, 1
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <16 x i8> <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>, ptr %i.f, align 1, !tbaa !108
  store <16 x i8> <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>, ptr %i.h, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !2466

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count110
  br i1 %cmp.n, label %._crit_edge58, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.c, 0
  br i1 %min.epilog.iters.check, label %.preheader48.us.preheader, label %vec.epilog.ph, !prof !2475

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec123 = and i64 %wide.trip.count110, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.j = shl nuw nsw i64 %index124, 1
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 %i.j
  store <8 x i8> <i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1>, ptr %i.k, align 1, !tbaa !108
  %index.next125 = add nuw i64 %index124, 4       ; 2 uses
  %i.l = icmp eq i64 %index.next125, %n.vec123
  br i1 %i.l, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2467

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %n.vec123, %wide.trip.count110
  br i1 %cmp.n126, label %._crit_edge58, label %.preheader48.us.preheader

.preheader48.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv97.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec123, %vec.epilog.middle.block ]
  br label %.preheader48.us

.preheader48.us.us.preheader:                     ; preds = %.preheader48.lr.ph.split.us
  %wide.trip.count105 = zext nneg i32 %3 to i64   ; 2 uses
  %xtraiter142 = and i64 %wide.trip.count105, 3   ; 3 uses
  %i.m = icmp ult i32 %3, 4
  %unroll_iter147 = and i64 %wide.trip.count105, 2147483644
  %lcmp.mod144.not = icmp eq i64 %xtraiter142, 0
  %lcmp.mod146 = icmp ne i64 %xtraiter142, 0
  br label %.preheader48.us.us

.preheader48.us.us:                               ; preds = %.preheader48.us.us.preheader, %bb.d
  %indvars.iv107 = phi i64 [ 0, %.preheader48.us.us.preheader ], [ %indvars.iv.next108, %bb.d ] ; 7 uses
  br i1 %i.m, label %.epil.preheader141, label %.preheader48.us.us.new

.preheader48.us.us.new:                           ; preds = %.preheader48.us.us, %.preheader48.us.us.new
  %indvars.iv102 = phi i64 [ %indvars.iv.next103.3, %.preheader48.us.us.new ], [ 0, %.preheader48.us.us ] ; 6 uses
  %.03550.us.us = phi i32 [ %i.ba, %.preheader48.us.us.new ], [ 262144, %.preheader48.us.us ]
  %niter148 = phi i64 [ %niter148.next.3, %.preheader48.us.us.new ], [ 0, %.preheader48.us.us ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv102
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv107
  %i.q = load i16, ptr %i.p, align 2, !tbaa !107
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv102
  %i.t = load i16, ptr %i.s, align 2, !tbaa !107
  %i.u = sext i16 %i.t to i32
  %i.v = mul nsw i32 %i.u, %i.r
  %i.w = add i32 %i.v, %.03550.us.us
  %indvars.iv.next103 = or disjoint i64 %indvars.iv102, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next103
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv107
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !107
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next103
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !107
  %i.ae = sext i16 %i.ad to i32
  %i.af = mul nsw i32 %i.ae, %i.ab
  %i.ag = add i32 %i.af, %i.w
  %indvars.iv.next103.1 = or disjoint i64 %indvars.iv102, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next103.1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv107
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !107
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next103.1
  %i.an = load i16, ptr %i.am, align 2, !tbaa !107
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %i.ao, %i.al
  %i.aq = add i32 %i.ap, %i.ag
  %indvars.iv.next103.2 = or disjoint i64 %indvars.iv102, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next103.2
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !111
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv107
  %i.au = load i16, ptr %i.at, align 2, !tbaa !107
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next103.2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !107
  %i.ay = sext i16 %i.ax to i32
  %i.az = mul nsw i32 %i.ay, %i.av
  %i.ba = add i32 %i.az, %i.aq                    ; 3 uses
  %indvars.iv.next103.3 = add nuw nsw i64 %indvars.iv102, 4 ; 2 uses
  %niter148.next.3 = add i64 %niter148, 4         ; 2 uses
  %niter148.ncmp.3 = icmp eq i64 %niter148.next.3, %unroll_iter147
  br i1 %niter148.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %.preheader48.us.us.new, !llvm.loop !2468

._crit_edge.us.us.unr-lcssa:                      ; preds = %.preheader48.us.us.new
  br i1 %lcmp.mod144.not, label %._crit_edge.us.us, label %.epil.preheader141

.epil.preheader141:                               ; preds = %._crit_edge.us.us.unr-lcssa, %.preheader48.us.us
  %indvars.iv102.epil.init = phi i64 [ 0, %.preheader48.us.us ], [ %indvars.iv.next103.3, %._crit_edge.us.us.unr-lcssa ]
  %.03550.us.us.epil.init = phi i32 [ 262144, %.preheader48.us.us ], [ %i.ba, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod146)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader141
  %indvars.iv102.epil = phi i64 [ %indvars.iv.next103.epil, %bb.b ], [ %indvars.iv102.epil.init, %.epil.preheader141 ] ; 3 uses
  %.03550.us.us.epil = phi i32 [ %i.bk, %bb.b ], [ %.03550.us.us.epil.init, %.epil.preheader141 ]
  %epil.iter143 = phi i64 [ %epil.iter143.next, %bb.b ], [ 0, %.epil.preheader141 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv102.epil
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !111
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv107
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !107
  %i.bf = sext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv102.epil
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !107
  %i.bi = sext i16 %i.bh to i32
  %i.bj = mul nsw i32 %i.bi, %i.bf
  %i.bk = add i32 %i.bj, %.03550.us.us.epil       ; 2 uses
  %indvars.iv.next103.epil = add nuw nsw i64 %indvars.iv102.epil, 1
  %epil.iter143.next = add i64 %epil.iter143, 1   ; 2 uses
  %epil.iter143.cmp.not = icmp eq i64 %epil.iter143.next, %xtraiter142
  br i1 %epil.iter143.cmp.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !2469

._crit_edge.us.us:                                ; preds = %bb.b, %._crit_edge.us.us.unr-lcssa
  %.lcssa = phi i32 [ %i.ba, %._crit_edge.us.us.unr-lcssa ], [ %i.bk, %bb.b ] ; 2 uses
  %i.bl = ashr i32 %.lcssa, 19                    ; 2 uses
  %i.bm = and i32 %.lcssa, 134217728
  %.not42.us.us = icmp eq i32 %i.bm, 0
  br i1 %.not42.us.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us.us
  %i.bn = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 0)
  %.0.i4546.us.us = tail call i32 @llvm.umin.i32(i32 %i.bn, i32 255)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.us.us
  %.136.us.us = phi i32 [ %.0.i4546.us.us, %bb.c ], [ %i.bl, %._crit_edge.us.us ]
  %i.bo = trunc i32 %.136.us.us to i8
  %i.bp = shl nuw nsw i64 %indvars.iv107, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 %i.bp ; 2 uses
  store i8 %i.bo, ptr %i.bq, align 1, !tbaa !108
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 -1, ptr %i.br, align 1, !tbaa !108
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge58, label %.preheader48.us.us, !llvm.loop !2470

.preheader48.us:                                  ; preds = %.preheader48.us.preheader, %.preheader48.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %.preheader48.us ], [ %indvars.iv97.ph, %.preheader48.us.preheader ] ; 2 uses
  %i.bs = shl nuw nsw i64 %indvars.iv97, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 %i.bs ; 2 uses
  store i8 0, ptr %i.bt, align 1, !tbaa !108
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 -1, ptr %i.bu, align 1, !tbaa !108
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count110
  br i1 %exitcond101.not, label %._crit_edge58, label %.preheader48.us, !llvm.loop !2471

.preheader48.lr.ph.split:                         ; preds = %.preheader48.lr.ph
  br i1 %i.b, label %.preheader48.us59.preheader, label %.preheader48.preheader

.preheader48.preheader:                           ; preds = %.preheader48.lr.ph.split
  %i.bv = shl nuw i32 %10, 1
  %i.bw = zext i32 %i.bv to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %9, i8 0, i64 %i.bw, i1 false), !tbaa !108
  br label %._crit_edge58

.preheader48.us59.preheader:                      ; preds = %.preheader48.lr.ph.split
  %wide.trip.count95 = zext nneg i32 %10 to i64
  %wide.trip.count = zext nneg i32 %3 to i64      ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bx = icmp ult i32 %3, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod132 = icmp ne i64 %xtraiter, 0
  %xtraiter134 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.by = icmp ult i32 %3, 4
  %unroll_iter139 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod136.not = icmp eq i64 %xtraiter134, 0
  %lcmp.mod138 = icmp ne i64 %xtraiter134, 0
  br label %.preheader48.us59

.preheader48.us59:                                ; preds = %.preheader48.us59.preheader, %bb.i
  %indvars.iv92 = phi i64 [ 0, %.preheader48.us59.preheader ], [ %indvars.iv.next93, %bb.i ] ; 12 uses
  br i1 %i.bx, label %.epil.preheader, label %.preheader48.us59.new

.preheader48.us59.new:                            ; preds = %.preheader48.us59, %.preheader48.us59.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader48.us59.new ], [ 0, %.preheader48.us59 ] ; 6 uses
  %.03550.us62 = phi i32 [ %i.dm, %.preheader48.us59.new ], [ 262144, %.preheader48.us59 ]
  %niter = phi i64 [ %niter.next.3, %.preheader48.us59.new ], [ 0, %.preheader48.us59 ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !111
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv92
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !107
  %i.cd = sext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !107
  %i.cg = sext i16 %i.cf to i32
  %i.ch = mul nsw i32 %i.cg, %i.cd
  %i.ci = add i32 %i.ch, %.03550.us62
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !111
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv92
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !107
  %i.cn = sext i16 %i.cm to i32
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !107
  %i.cq = sext i16 %i.cp to i32
  %i.cr = mul nsw i32 %i.cq, %i.cn
  %i.cs = add i32 %i.cr, %i.ci
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !111
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv92
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !107
  %i.cx = sext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !107
  %i.da = sext i16 %i.cz to i32
  %i.db = mul nsw i32 %i.da, %i.cx
  %i.dc = add i32 %i.db, %i.cs
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !111
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %indvars.iv92
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !107
  %i.dh = sext i16 %i.dg to i32
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !107
  %i.dk = sext i16 %i.dj to i32
  %i.dl = mul nsw i32 %i.dk, %i.dh
  %i.dm = add i32 %i.dl, %i.dc                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us64.unr-lcssa, label %.preheader48.us59.new, !llvm.loop !2468

._crit_edge.us64.unr-lcssa:                       ; preds = %.preheader48.us59.new
  br i1 %lcmp.mod.not, label %._crit_edge.us64, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us64.unr-lcssa, %.preheader48.us59
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader48.us59 ], [ %indvars.iv.next.3, %._crit_edge.us64.unr-lcssa ]
  %.03550.us62.epil.init = phi i32 [ 262144, %.preheader48.us59 ], [ %i.dm, %._crit_edge.us64.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod132)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.e ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 3 uses
  %.03550.us62.epil = phi i32 [ %i.dw, %bb.e ], [ %.03550.us62.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.e ], [ 0, %.epil.preheader ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !111
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv92
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !107
  %i.dr = sext i16 %i.dq to i32
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !107
  %i.du = sext i16 %i.dt to i32
  %i.dv = mul nsw i32 %i.du, %i.dr
  %i.dw = add i32 %i.dv, %.03550.us62.epil        ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us64, label %bb.e, !llvm.loop !2472

._crit_edge.us64:                                 ; preds = %bb.e, %._crit_edge.us64.unr-lcssa
  %.lcssa129 = phi i32 [ %i.dm, %._crit_edge.us64.unr-lcssa ], [ %i.dw, %bb.e ] ; 2 uses
  %i.dx = ashr i32 %.lcssa129, 19                 ; 2 uses
  %i.dy = and i32 %.lcssa129, 134217728
  %.not42.us67 = icmp eq i32 %i.dy, 0
  br i1 %.not42.us67, label %.lr.ph53.us, label %bb.f

bb.f:                                             ; preds = %._crit_edge.us64
  %i.dz = tail call i32 @llvm.smax.i32(i32 %i.dx, i32 0)
  %.0.i4546.us68 = tail call i32 @llvm.umin.i32(i32 %i.dz, i32 255)
  br label %.lr.ph53.us

.lr.ph53.us:                                      ; preds = %._crit_edge.us64, %bb.f
  %.136.us69 = phi i32 [ %.0.i4546.us68, %bb.f ], [ %i.dx, %._crit_edge.us64 ]
  br i1 %i.by, label %.epil.preheader133, label %.lr.ph53.us.new

.lr.ph53.us.new:                                  ; preds = %.lr.ph53.us, %.lr.ph53.us.new
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.3, %.lr.ph53.us.new ], [ 0, %.lr.ph53.us ] ; 6 uses
  %.052.us = phi i32 [ %i.fn, %.lr.ph53.us.new ], [ 262144, %.lr.ph53.us ]
  %niter140 = phi i64 [ %niter140.next.3, %.lr.ph53.us.new ], [ 0, %.lr.ph53.us ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv87
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !111
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %indvars.iv92
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !107
  %i.ee = sext i16 %i.ed to i32
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv87
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !107
  %i.eh = sext i16 %i.eg to i32
  %i.ei = mul nsw i32 %i.eh, %i.ee
  %i.ej = add i32 %i.ei, %.052.us
  %indvars.iv.next88 = or disjoint i64 %indvars.iv87, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next88
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !111
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.el, i64 %indvars.iv92
  %i.en = load i16, ptr %i.em, align 2, !tbaa !107
  %i.eo = sext i16 %i.en to i32
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next88
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !107
  %i.er = sext i16 %i.eq to i32
  %i.es = mul nsw i32 %i.er, %i.eo
  %i.et = add i32 %i.es, %i.ej
  %indvars.iv.next88.1 = or disjoint i64 %indvars.iv87, 2 ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next88.1
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !111
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %indvars.iv92
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !107
  %i.ey = sext i16 %i.ex to i32
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next88.1
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !107
  %i.fb = sext i16 %i.fa to i32
  %i.fc = mul nsw i32 %i.fb, %i.ey
  %i.fd = add i32 %i.fc, %i.et
  %indvars.iv.next88.2 = or disjoint i64 %indvars.iv87, 3 ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next88.2
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !111
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %indvars.iv92
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !107
  %i.fi = sext i16 %i.fh to i32
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next88.2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !107
  %i.fl = sext i16 %i.fk to i32
  %i.fm = mul nsw i32 %i.fl, %i.fi
  %i.fn = add i32 %i.fm, %i.fd                    ; 3 uses
  %indvars.iv.next88.3 = add nuw nsw i64 %indvars.iv87, 4 ; 2 uses
  %niter140.next.3 = add i64 %niter140, 4         ; 2 uses
  %niter140.ncmp.3 = icmp eq i64 %niter140.next.3, %unroll_iter139
  br i1 %niter140.ncmp.3, label %._crit_edge54.us.unr-lcssa, label %.lr.ph53.us.new, !llvm.loop !2473

._crit_edge54.us.unr-lcssa:                       ; preds = %.lr.ph53.us.new
  br i1 %lcmp.mod136.not, label %._crit_edge54.us, label %.epil.preheader133

.epil.preheader133:                               ; preds = %._crit_edge54.us.unr-lcssa, %.lr.ph53.us
  %indvars.iv87.epil.init = phi i64 [ 0, %.lr.ph53.us ], [ %indvars.iv.next88.3, %._crit_edge54.us.unr-lcssa ]
  %.052.us.epil.init = phi i32 [ 262144, %.lr.ph53.us ], [ %i.fn, %._crit_edge54.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader133
  %indvars.iv87.epil = phi i64 [ %indvars.iv.next88.epil, %bb.g ], [ %indvars.iv87.epil.init, %.epil.preheader133 ] ; 3 uses
  %.052.us.epil = phi i32 [ %i.fx, %bb.g ], [ %.052.us.epil.init, %.epil.preheader133 ]
  %epil.iter135 = phi i64 [ %epil.iter135.next, %bb.g ], [ 0, %.epil.preheader133 ]
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv87.epil
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !111
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %indvars.iv92
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !107
  %i.fs = sext i16 %i.fr to i32
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv87.epil
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !107
  %i.fv = sext i16 %i.fu to i32
  %i.fw = mul nsw i32 %i.fv, %i.fs
  %i.fx = add i32 %i.fw, %.052.us.epil            ; 2 uses
  %indvars.iv.next88.epil = add nuw nsw i64 %indvars.iv87.epil, 1
  %epil.iter135.next = add i64 %epil.iter135, 1   ; 2 uses
  %epil.iter135.cmp.not = icmp eq i64 %epil.iter135.next, %xtraiter134
  br i1 %epil.iter135.cmp.not, label %._crit_edge54.us, label %bb.g, !llvm.loop !2474

._crit_edge54.us:                                 ; preds = %bb.g, %._crit_edge54.us.unr-lcssa
  %.lcssa130 = phi i32 [ %i.fn, %._crit_edge54.us.unr-lcssa ], [ %i.fx, %bb.g ] ; 2 uses
  %i.fy = ashr i32 %.lcssa130, 19                 ; 2 uses
end_hunk_1
