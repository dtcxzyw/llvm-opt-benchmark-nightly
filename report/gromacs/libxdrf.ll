Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/libxdrf?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZL8sendintsP10DataBufferiiPjS1_:bb.a
  %i.jj = add i64 %i.ji, 1
  store i64 %i.jj, ptr %0, align 8, !tbaa !23
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.ji
  store i8 %i.jf, ptr %i.jk, align 1, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge126
  %.1.i87 = phi i32 [ %i.ja, %bb.q ], [ %i.ja, %bb.p ], [ %i.iv, %._crit_edge126 ] ; 2 uses
  %.0.i88 = phi i32 [ %i.jd, %bb.q ], [ %i.jb, %bb.p ], [ %i.it, %._crit_edge126 ] ; 3 uses
  store i32 %.0.i88, ptr %i.is, align 8, !tbaa !21
  store i32 %.1.i87, ptr %i.iu, align 4, !tbaa !22
  %i.jl = icmp sgt i32 %.0.i88, 0
  br i1 %i.jl, label %_ZL8sendbitsP10DataBufferii.exit74.sink.split, label %_ZL8sendbitsP10DataBufferii.exit74

_ZL8sendbitsP10DataBufferii.exit74.sink.split:    ; preds = %bb.r, %bb.k
  %.0.i88.sink = phi i32 [ %.0.i71, %bb.k ], [ %.0.i88, %bb.r ]
  %.1.i87.sink = phi i32 [ %.1.i70, %bb.k ], [ %.1.i87, %bb.r ]
  %i.jm = sub nsw i32 8, %.0.i88.sink
  %i.jn = shl i32 %.1.i87.sink, %i.jm
  %i.jo = trunc i32 %i.jn to i8
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !17
  %i.jr = load i64, ptr %0, align 8, !tbaa !23
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jr
  store i8 %i.jo, ptr %i.js, align 1, !tbaa !24
  br label %_ZL8sendbitsP10DataBufferii.exit74

_ZL8sendbitsP10DataBufferii.exit74:               ; preds = %_ZL8sendbitsP10DataBufferii.exit74.sink.split, %bb.r, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare noundef i32 @_Z9xdr_int64P3XDRPl(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i32 @_Z10xdr_opaqueP3XDRPcj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, -2147483648) i32 @_ZL11receivebitsP10DataBufferi(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22   ; 3 uses
  %i.e = icmp sgt i32 %1, 7
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 5 uses
  %.promoted = load i64, ptr %0, align 8, !tbaa !23 ; 2 uses
  %i.h = add nsw i32 %1, -8                       ; 2 uses
  %i.i = lshr i32 %i.h, 3
  %i.j = add nuw nsw i32 %i.i, 1                  ; 2 uses
  %xtraiter = and i32 %i.j, 3                     ; 3 uses
  %i.k = icmp ult i32 %i.h, 24
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.j, 1073741820
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.l = phi i64 [ %.promoted, %.lr.ph.new ], [ %i.ar, %bb.b ] ; 5 uses
  %.041 = phi i32 [ %i.d, %.lr.ph.new ], [ %i.av, %bb.b ]
  %.03340 = phi i32 [ 0, %.lr.ph.new ], [ %i.az, %bb.b ]
  %.03539 = phi i32 [ %1, %.lr.ph.new ], [ %i.ax, %bb.b ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.m = shl i32 %.041, 8
  %i.n = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.n, ptr %0, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %i.p = load i8, ptr %i.o, align 1, !tbaa !24
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.m, %i.q               ; 2 uses
  %i.s = lshr i32 %i.r, %i.b
  %i.t = add nsw i32 %.03539, -8
  %i.u = shl i32 %i.s, %i.t
  %i.v = or i32 %i.u, %.03340
  %i.w = shl i32 %i.r, 8
  %i.x = add i64 %i.l, 2                          ; 2 uses
  store i64 %i.x, ptr %0, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.n
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.w, %i.aa             ; 2 uses
  %i.ac = lshr i32 %i.ab, %i.b
  %i.ad = add nsw i32 %.03539, -16
  %i.ae = shl i32 %i.ac, %i.ad
  %i.af = or i32 %i.ae, %i.v
  %i.ag = shl i32 %i.ab, 8
  %i.ah = add i64 %i.l, 3                         ; 2 uses
  store i64 %i.ah, ptr %0, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.x
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak            ; 2 uses
  %i.am = lshr i32 %i.al, %i.b
  %i.an = add nsw i32 %.03539, -24
  %i.ao = shl i32 %i.am, %i.an
  %i.ap = or i32 %i.ao, %i.af
  %i.aq = shl i32 %i.al, 8
  %i.ar = add i64 %i.l, 4                         ; 3 uses
  store i64 %i.ar, ptr %0, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ah
  %i.at = load i8, ptr %i.as, align 1, !tbaa !24
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.aq, %i.au            ; 4 uses
  %i.aw = lshr i32 %i.av, %i.b
  %i.ax = add nsw i32 %.03539, -32                ; 4 uses
  %i.ay = shl i32 %i.aw, %i.ax
  %i.az = or i32 %i.ay, %i.ap                     ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !56

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.promoted, %.lr.ph ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %.041.epil.init = phi i32 [ %i.d, %.lr.ph ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ]
  %.03340.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.03539.epil.init = phi i32 [ %1, %.lr.ph ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %i.ba = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.bc, %bb.c ] ; 2 uses
  %.041.epil = phi i32 [ %.041.epil.init, %.epil.preheader ], [ %i.bg, %bb.c ]
  %.03340.epil = phi i32 [ %.03340.epil.init, %.epil.preheader ], [ %i.bk, %bb.c ]
  %.03539.epil = phi i32 [ %.03539.epil.init, %.epil.preheader ], [ %i.bi, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bb = shl i32 %.041.epil, 8
  %i.bc = add i64 %i.ba, 1                        ; 2 uses
  store i64 %i.bc, ptr %0, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !24
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bb, %i.bf            ; 3 uses
  %i.bh = lshr i32 %i.bg, %i.b
  %i.bi = add nsw i32 %.03539.epil, -8            ; 3 uses
  %i.bj = shl i32 %i.bh, %i.bi
  %i.bk = or i32 %i.bj, %.03340.epil              ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !57

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %.035.lcssa = phi i32 [ %1, %bb.a ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ], [ %i.bi, %bb.c ] ; 4 uses
  %.033.lcssa = phi i32 [ 0, %bb.a ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ], [ %i.bk, %bb.c ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ], [ %i.bg, %bb.c ] ; 3 uses
  %i.bl = icmp sgt i32 %.035.lcssa, 0
  br i1 %i.bl, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge
  %i.bm = icmp slt i32 %i.b, %.035.lcssa
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = add nsw i32 %i.b, 8
  %i.bo = shl i32 %.0.lcssa, 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !17
  %i.br = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %0, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !24
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bo, %i.bv
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.031 = phi i32 [ %i.bn, %bb.e ], [ %i.b, %bb.d ]
  %.1 = phi i32 [ %i.bw, %bb.e ], [ %.0.lcssa, %bb.d ] ; 2 uses
  %i.bx = sub nsw i32 %.031, %.035.lcssa          ; 2 uses
  %i.by = lshr i32 %.1, %i.bx
  %notmask38 = shl nsw i32 -1, %.035.lcssa
  %i.bz = xor i32 %notmask38, -1
  %i.ca = and i32 %i.by, %i.bz
  %i.cb = or i32 %i.ca, %.033.lcssa
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.134 = phi i32 [ %i.cb, %bb.f ], [ %.033.lcssa, %._crit_edge ]
  %.132 = phi i32 [ %i.bx, %bb.f ], [ %i.b, %._crit_edge ]
  %.2 = phi i32 [ %.1, %bb.f ], [ %.0.lcssa, %._crit_edge ]
  %notmask = shl nsw i32 -1, %1
  %i.cc = xor i32 %notmask, -1
  %i.cd = and i32 %.134, %i.cc
  store i32 %.132, ptr %i.a, align 8, !tbaa !21
  store i32 %.2, ptr %i.c, align 4, !tbaa !22
  ret i32 %i.cd
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL11receiveintsP10DataBufferiiPKjPi(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #10 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp sgt i32 %1, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %.promoted = load i32, ptr %i.c, align 8, !tbaa !21 ; 6 uses
  %.promoted64 = load i32, ptr %i.d, align 4, !tbaa !22 ; 2 uses
  %.promoted66 = load i64, ptr %0, align 8, !tbaa !23 ; 2 uses
  %i.g = add nsw i32 %1, -9                       ; 2 uses
  %i.h = lshr i32 %i.g, 3                         ; 2 uses
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = icmp eq i32 %i.h, 0
  br i1 %i.j, label %_ZL11receivebitsP10DataBufferi.exit.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.i, 1073741822
  br label %_ZL11receivebitsP10DataBufferi.exit

_ZL11receivebitsP10DataBufferi.exit:              ; preds = %_ZL11receivebitsP10DataBufferi.exit, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %_ZL11receivebitsP10DataBufferi.exit ] ; 3 uses
  %i.k = phi i64 [ %.promoted66, %.lr.ph.new ], [ %i.u, %_ZL11receivebitsP10DataBufferi.exit ] ; 3 uses
  %.2.i65 = phi i32 [ %.promoted64, %.lr.ph.new ], [ %i.z, %_ZL11receivebitsP10DataBufferi.exit ]
  %.03360 = phi i32 [ %1, %.lr.ph.new ], [ %i.ae, %_ZL11receivebitsP10DataBufferi.exit ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZL11receivebitsP10DataBufferi.exit ]
  %i.l = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.l, ptr %0, align 8, !tbaa !23
  %i.m = shl i32 %.2.i65, 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = lshr i32 %i.q, %.promoted
  %i.s = and i32 %i.r, 255
  store i32 %.promoted, ptr %i.c, align 8, !tbaa !21
  store i32 %i.q, ptr %i.d, align 4, !tbaa !22
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.s, ptr %i.t, align 8, !tbaa !14
  %i.u = add i64 %i.k, 2                          ; 3 uses
  store i64 %i.u, ptr %0, align 8, !tbaa !23
  %i.v = shl i32 %i.q, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = zext i8 %i.x to i32
  %i.z = or disjoint i32 %i.v, %i.y               ; 4 uses
  %i.aa = lshr i32 %i.z, %.promoted
  %i.ab = and i32 %i.aa, 255
  store i32 %.promoted, ptr %i.c, align 8, !tbaa !21
  store i32 %i.z, ptr %i.d, align 4, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !14
  %i.ae = add nsw i32 %.03360, -16                ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.thread.unr-lcssa, label %_ZL11receivebitsP10DataBufferi.exit, !llvm.loop !58

._crit_edge.thread.unr-lcssa:                     ; preds = %_ZL11receivebitsP10DataBufferi.exit
  %i.af = and i32 %i.g, 8
  %lcmp.mod.not.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not.not, label %_ZL11receivebitsP10DataBufferi.exit.epil.preheader, label %._crit_edge.thread

_ZL11receivebitsP10DataBufferi.exit.epil.preheader: ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.thread.unr-lcssa ] ; 2 uses
  %.epil.init = phi i64 [ %.promoted66, %.lr.ph ], [ %i.u, %._crit_edge.thread.unr-lcssa ] ; 2 uses
  %.2.i65.epil.init = phi i32 [ %.promoted64, %.lr.ph ], [ %i.z, %._crit_edge.thread.unr-lcssa ]
  %.03360.epil.init = phi i32 [ %1, %.lr.ph ], [ %i.ae, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod7 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %i.ag = add i64 %.epil.init, 1
  store i64 %i.ag, ptr %0, align 8, !tbaa !23
  %i.ah = shl i32 %.2.i65.epil.init, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %.epil.init
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ah, %i.ak            ; 2 uses
  %i.am = lshr i32 %i.al, %.promoted
  %i.an = and i32 %i.am, 255
  store i32 %.promoted, ptr %i.c, align 8, !tbaa !21
  store i32 %i.al, ptr %i.d, align 4, !tbaa !22
  %indvars.iv.next.epil = add i64 %indvars.iv.epil.init, 1
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !14
  %i.ap = add nsw i32 %.03360.epil.init, -8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge.thread.unr-lcssa, %_ZL11receivebitsP10DataBufferi.exit.epil.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %._crit_edge.thread.unr-lcssa ], [ %indvars.iv.next.epil, %_ZL11receivebitsP10DataBufferi.exit.epil.preheader ]
  %.lcssa4 = phi i32 [ %i.ae, %._crit_edge.thread.unr-lcssa ], [ %i.ap, %_ZL11receivebitsP10DataBufferi.exit.epil.preheader ]
  %i.aq = trunc i64 %indvars.iv.next.lcssa to i32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %bb.b, label %.split.preheader

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.030.lcssa98 = phi i32 [ %i.aq, %._crit_edge.thread ], [ 0, %._crit_edge ] ; 4 uses
  %.033.lcssa97 = phi i32 [ %.lcssa4, %._crit_edge.thread ], [ %1, %._crit_edge ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !21 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !22 ; 3 uses
  %i.aw = icmp samesign ugt i32 %.033.lcssa97, 7
  br i1 %i.aw, label %.lr.ph.i._ZL11receivebitsP10DataBufferi.exit45_crit_edge, label %._crit_edge.i34.thread

.lr.ph.i._ZL11receivebitsP10DataBufferi.exit45_crit_edge: ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !17
  %.promoted.i41 = load i64, ptr %0, align 8, !tbaa !23 ; 2 uses
  %i.az = add i64 %.promoted.i41, 1
  store i64 %i.az, ptr %0, align 8, !tbaa !23
  %i.ba = shl i32 %i.av, 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.promoted.i41
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !24
  %i.bd = zext i8 %i.bc to i32
  %i.be = or disjoint i32 %i.ba, %i.bd            ; 2 uses
  %i.bf = lshr i32 %i.be, %i.at
  br label %bb.e

._crit_edge.i34.thread:                           ; preds = %bb.b
  %i.bg = icmp slt i32 %i.at, %.033.lcssa97
  br i1 %i.bg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i34.thread
  %i.bh = add nsw i32 %i.at, 8
  %i.bi = shl i32 %i.av, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !17
  %i.bl = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %0, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !24
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bi, %i.bp
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i34.thread
  %.031.i38 = phi i32 [ %i.bh, %bb.c ], [ %i.at, %._crit_edge.i34.thread ]
  %.1.i39 = phi i32 [ %i.bq, %bb.c ], [ %i.av, %._crit_edge.i34.thread ] ; 2 uses
  %i.br = sub nsw i32 %.031.i38, %.033.lcssa97    ; 2 uses
  %i.bs = lshr i32 %.1.i39, %i.br
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i._ZL11receivebitsP10DataBufferi.exit45_crit_edge
  %.sink = phi i32 [ %i.bs, %bb.d ], [ %i.bf, %.lr.ph.i._ZL11receivebitsP10DataBufferi.exit45_crit_edge ]
  %.132.i36 = phi i32 [ %i.br, %bb.d ], [ %i.at, %.lr.ph.i._ZL11receivebitsP10DataBufferi.exit45_crit_edge ]
  %.2.i37 = phi i32 [ %.1.i39, %bb.d ], [ %i.be, %.lr.ph.i._ZL11receivebitsP10DataBufferi.exit45_crit_edge ]
  %notmask38.i40 = shl nsw i32 -1, %.033.lcssa97
  %i.bt = xor i32 %notmask38.i40, -1
  %i.bu = and i32 %.sink, %i.bt
  store i32 %.132.i36, ptr %i.as, align 8, !tbaa !21
  store i32 %.2.i37, ptr %i.au, align 4, !tbaa !22
  %i.bv = zext nneg i32 %.030.lcssa98 to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bv
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !14
  %i.bx = icmp ult i32 %.030.lcssa98, 2147483647
  br i1 %i.bx, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %._crit_edge, %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !14
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.split75.us, label %.preheader

.split.us.preheader:                              ; preds = %bb.e
  %i.cb = add nuw nsw i32 %.030.lcssa98, 1
  %i.cc = zext nneg i32 %i.cb to i64              ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !14 ; 16 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %.split75.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.split.us.preheader
  %xtraiter8 = and i64 %i.cc, 3                   ; 3 uses
  %4 = icmp ult i32 %.030.lcssa98, 3
  br i1 %4, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter12 = and i64 %i.cc, 2147483644
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader.new
  %indvars.iv83 = phi i64 [ %i.cc, %.preheader.us.preheader.new ], [ %indvars.iv.next84.3, %.preheader.us ] ; 4 uses
  %.069.us = phi i32 [ 0, %.preheader.us.preheader.new ], [ %.recomposed25, %.preheader.us ]
  %niter13 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter13.next.3, %.preheader.us ]
  %5 = shl i32 %.069.us, 8
  %6 = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv83
  %7 = getelementptr i8, ptr %6, i64 -4           ; 2 uses
  %8 = load i32, ptr %7, align 4, !tbaa !14
  %9 = or i32 %8, %5                              ; 2 uses
  %10 = udiv i32 %9, %i.ce                        ; 2 uses
  store i32 %10, ptr %7, align 4, !tbaa !14
  %11 = mul i32 %10, %i.ce                        ; 0 uses
  %.recomposed = urem i32 %9, %i.ce
  %12 = shl i32 %.recomposed, 8
  %13 = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv83
  %14 = getelementptr i8, ptr %13, i64 -8         ; 2 uses
  %15 = load i32, ptr %14, align 4, !tbaa !14
  %16 = or i32 %15, %12                           ; 2 uses
  %17 = udiv i32 %16, %i.ce                       ; 2 uses
  store i32 %17, ptr %14, align 4, !tbaa !14
  %18 = mul i32 %17, %i.ce                        ; 0 uses
  %.recomposed23 = urem i32 %16, %i.ce
  %19 = shl i32 %.recomposed23, 8
  %20 = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv83
  %21 = getelementptr i8, ptr %20, i64 -12        ; 2 uses
  %22 = load i32, ptr %21, align 4, !tbaa !14
  %23 = or i32 %22, %19                           ; 2 uses
  %24 = udiv i32 %23, %i.ce                       ; 2 uses
  store i32 %24, ptr %21, align 4, !tbaa !14
  %25 = mul i32 %24, %i.ce                        ; 0 uses
  %.recomposed24 = urem i32 %23, %i.ce
  %indvars.iv.next84.3 = add nsw i64 %indvars.iv83, -4 ; 3 uses
  %26 = shl i32 %.recomposed24, 8
  %27 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next84.3 ; 2 uses
  %28 = load i32, ptr %27, align 4, !tbaa !14
  %29 = or i32 %28, %26                           ; 2 uses
  %30 = udiv i32 %29, %i.ce                       ; 2 uses
  store i32 %30, ptr %27, align 4, !tbaa !14
  %31 = mul i32 %30, %i.ce                        ; 0 uses
  %.recomposed25 = urem i32 %29, %i.ce            ; 3 uses
  %niter13.next.3 = add i64 %niter13, 4           ; 2 uses
  %niter13.ncmp.3.not = icmp eq i64 %niter13.next.3, %unroll_iter12
  br i1 %niter13.ncmp.3.not, label %._crit_edge71.us.unr-lcssa, label %.preheader.us, !llvm.loop !59

._crit_edge71.us.unr-lcssa:                       ; preds = %.preheader.us
  %lcmp.mod9.not = icmp eq i64 %xtraiter8, 0
  br i1 %lcmp.mod9.not, label %._crit_edge71.us, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._crit_edge71.us.unr-lcssa, %.preheader.us.preheader
  %indvars.iv83.epil.init = phi i64 [ %i.cc, %.preheader.us.preheader ], [ %indvars.iv.next84.3, %._crit_edge71.us.unr-lcssa ]
  %.069.us.epil.init = phi i32 [ 0, %.preheader.us.preheader ], [ %.recomposed25, %._crit_edge71.us.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter8, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.preheader.us.a

.preheader.us.a:                                  ; preds = %.preheader.us.a, %.preheader.us.epil.preheader
  %indvars.iv83.a = phi i64 [ %indvars.iv.next84, %.preheader.us.a ], [ %indvars.iv83.epil.init, %.preheader.us.epil.preheader ]
  %.069.us.a = phi i32 [ %.recomposed.a, %.preheader.us.a ], [ %.069.us.epil.init, %.preheader.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.us.a ], [ 0, %.preheader.us.epil.preheader ]
  %indvars.iv.next84 = add nsw i64 %indvars.iv83.a, -1 ; 2 uses
  %i.cg = shl i32 %.069.us.a, 8
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next84 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !14
  %i.cj = or i32 %i.ci, %i.cg                     ; 2 uses
  %i.ck = udiv i32 %i.cj, %i.ce                   ; 2 uses
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !14
  %i.cl = mul i32 %i.ck, %i.ce                    ; 0 uses
  %.recomposed.a = urem i32 %i.cj, %i.ce          ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter8
  br i1 %epil.iter.cmp.not, label %._crit_edge71.us, label %.preheader.us.a, !llvm.loop !60

._crit_edge71.us:                                 ; preds = %.preheader.us.a, %._crit_edge71.us.unr-lcssa
  %.lcssa3 = phi i32 [ %.recomposed25, %._crit_edge71.us.unr-lcssa ], [ %.recomposed.a, %.preheader.us.a ]
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.lcssa3, ptr %i.cm, align 4, !tbaa !14
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !14 ; 4 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %.split75.us, label %.preheader.us.1

.preheader.us.1:                                  ; preds = %._crit_edge71.us, %.preheader.us.1
  %indvars.iv83.1 = phi i64 [ %indvars.iv.next84.1, %.preheader.us.1 ], [ %i.cc, %._crit_edge71.us ] ; 2 uses
  %.069.us.1 = phi i32 [ %.recomposed12, %.preheader.us.1 ], [ 0, %._crit_edge71.us ]
  %indvars.iv.next84.1 = add nsw i64 %indvars.iv83.1, -1 ; 2 uses
  %i.cq = shl i32 %.069.us.1, 8
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next84.1 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !14
  %i.ct = or i32 %i.cs, %i.cq                     ; 2 uses
  %i.cu = udiv i32 %i.ct, %i.co                   ; 2 uses
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !14
  %i.cv = mul i32 %i.cu, %i.co                    ; 0 uses
  %.recomposed12 = urem i32 %i.ct, %i.co          ; 2 uses
  %i.cw = icmp samesign ugt i64 %indvars.iv83.1, 1
  br i1 %i.cw, label %.preheader.us.1, label %.split77.us, !llvm.loop !59

.preheader:                                       ; preds = %.split.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.cx, align 4, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !14
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %.split75.us, label %.split77.us

.split75.us:                                      ; preds = %.split.preheader, %.preheader, %.split.us.preheader, %._crit_edge71.us
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.11, i64 48, i64 1, ptr %i.db) #20 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

.split77.us:                                      ; preds = %.preheader.us.1, %.preheader
  %.sink104 = phi i32 [ 0, %.preheader ], [ %.recomposed12, %.preheader.us.1 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sink104, ptr %i.df, align 4, !tbaa !14
  %i.dg = load i32, ptr %i.a, align 16, !tbaa !14
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !14
  %i.di = shl i32 %i.dh, 8
  %i.dj = or i32 %i.di, %i.dg
  %i.dk = load i32, ptr %i.dd, align 8, !tbaa !14
  %i.dl = shl i32 %i.dk, 16
  %i.dm = or i32 %i.dj, %i.dl
  %i.dn = load i32, ptr %i.de, align 4, !tbaa !14
  %i.do = shl i32 %i.dn, 24
  %i.dp = or i32 %i.dm, %i.do
  store i32 %i.dp, ptr %3, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @_Z18xdr_xtc_seek_frameiP8_IO_FILEP3XDRi(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef 0, i32 noundef 2)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %1) ; 3 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %i.d, 1
  %i.g = and i64 %i.f, 4611686018427387900        ; 2 uses
  %i.h = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.g, i32 noundef 0)
  %.not41 = icmp eq i32 %i.h, 0
  br i1 %.not41, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.c
  %i.i = and i64 %i.d, 9223372036854775804
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.j
  %.034 = phi i64 [ %.0..034, %bb.j ], [ 0, %.preheader.preheader ] ; 3 uses
  %.032 = phi i64 [ %.032..0, %bb.j ], [ %i.i, %.preheader.preheader ] ; 2 uses
  %.0 = phi i64 [ %i.x, %bb.j ], [ %i.g, %.preheader.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.j = call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %1) ; 3 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit.thread, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.l = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %2, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %i.m = call fastcc noundef i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.a, ptr noundef %i.b)
  switch i32 %i.m, label %.backedge [
    i32 1, label %bb.f
    i32 -1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.j, i32 noundef 0)
  %.not13.i = icmp eq i32 %i.n, 0
  %i.o = load i32, ptr %i.a, align 4              ; 3 uses
  br i1 %.not13.i, label %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit, label %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.p = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.j, i32 noundef 0)
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %.backedge, label %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit.thread

.backedge:                                        ; preds = %bb.g, %bb.e
  br label %bb.e, !llvm.loop !61

_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit.thread: ; preds = %bb.f, %.preheader, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit

_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit
  %.not42 = icmp eq i32 %i.o, %0
  br i1 %.not42, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i64 %.034, -17
  %i.s = sub i64 %i.r, %.032
  %i.t = icmp ult i64 %i.s, -33
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = icmp slt i32 %i.o, %0                    ; 2 uses
  %.0..034 = select i1 %i.u, i64 %.0, i64 %.034   ; 2 uses
  %.032..0 = select i1 %i.u, i64 %.032, i64 %.0   ; 2 uses
  %i.v = add nuw nsw i64 %.032..0, %.0..034
  %i.w = lshr i64 %i.v, 1
  %i.x = and i64 %i.w, 9223372036854775804        ; 2 uses
  %i.y = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.x, i32 noundef 0)
  %.not45 = icmp eq i32 %i.y, 0
  br i1 %.not45, label %.preheader, label %.loopexit, !llvm.loop !62

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.z = icmp samesign ult i64 %.0, 17
  %spec.select = select i1 %i.z, i64 %.034, i64 %.0
  %i.aa = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %spec.select, i32 noundef 0)
  %.not43 = icmp eq i32 %i.aa, 0
  br i1 %.not43, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ab = call fastcc noundef i64 @_ZL24xtc_get_next_frame_startP8_IO_FILEP3XDRi(ptr noundef %1, ptr noundef %2, i32 noundef %3) ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.ab, i32 noundef 0)
  %.not44 = icmp ne i32 %i.ad, 0
  %. = sext i1 %.not44 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit, %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit.thread, %bb.m, %bb.l, %bb.k, %bb.c, %bb.b, %bb.a
  %.036 = phi i32 [ -1, %bb.l ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ %., %bb.m ], [ -1, %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit.thread ], [ -1, %bb.k ], [ -1, %_ZL25xtc_get_next_frame_numberP8_IO_FILEP3XDRi.exit ], [ -1, %bb.j ]
  ret i32 %.036
}

declare noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -9223372036854775808, 9223372036854775804) i64 @_ZL24xtc_get_next_frame_startP8_IO_FILEP3XDRi(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca float, align 4                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %1, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.d = call fastcc noundef i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.a, ptr noundef %i.b)
  switch i32 %i.d, label %bb.b [
    i32 1, label %bb.c
    i32 -1, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 3 uses
  %i.f = add nsw i64 %i.e, -4
  %i.g = icmp slt i64 %i.e, 0
  %spec.select = select i1 %i.g, i64 %i.e, i64 %i.f
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c
  %.0 = phi i64 [ %spec.select, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -1, 2) i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [10 x float], align 16            ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 6 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.v, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.e = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %1, ptr noundef nonnull %i.a)
  %.not38 = icmp eq i32 %i.e, 0
  br i1 %.not38, label %bb.c, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %1, ptr noundef nonnull %i.f)
  %.not38.1 = icmp eq i32 %i.g, 0
  br i1 %.not38.1, label %bb.c, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %1, ptr noundef nonnull %i.h)
  %.not38.2 = icmp eq i32 %i.i, 0
  br i1 %.not38.2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.2
  %i.j = load i32, ptr %i.a, align 4, !tbaa !14
  switch i32 %i.j, label %bb.d [
    i32 2023, label %bb.e
    i32 1995, label %bb.e
  ]

bb.c:                                             ; preds = %.preheader.2, %.preheader.1, %.preheader.preheader
  %i.k = add nuw nsw i64 %i.c, 4
  %i.l = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.k, i32 noundef 0) ; 0 uses
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.m = add nuw nsw i64 %i.c, 4
  %i.n = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.m, i32 noundef 0)
  %.not37 = icmp ne i32 %i.n, 0
  %. = sext i1 %.not37 to i32
  br label %bb.v

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.o = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.b)
  %.not36 = icmp eq i32 %i.o, 0
  br i1 %.not36, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.q = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.p)
  %.not36.1 = icmp eq i32 %i.q, 0
  br i1 %.not36.1, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.r)
  %.not36.2 = icmp eq i32 %i.s, 0
  br i1 %.not36.2, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.u = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.t)
  %.not36.3 = icmp eq i32 %i.u, 0
  br i1 %.not36.3, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.v)
  %.not36.4 = icmp eq i32 %i.w, 0
  br i1 %.not36.4, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.y = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.x)
  %.not36.5 = icmp eq i32 %i.y, 0
  br i1 %.not36.5, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.aa = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.z)
  %.not36.6 = icmp eq i32 %i.aa, 0
  br i1 %.not36.6, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ac = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.ab)
  %.not36.7 = icmp eq i32 %i.ac, 0
  br i1 %.not36.7, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ae = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.ad)
  %.not36.8 = icmp eq i32 %i.ae, 0
  br i1 %.not36.8, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.ag = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef %1, ptr noundef nonnull %i.af)
  %.not36.9 = icmp eq i32 %i.ag, 0
  br i1 %.not36.9, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = load i32, ptr %i.f, align 4, !tbaa !14
  %i.ai = icmp eq i32 %i.ah, %2
  br i1 %i.ai, label %bb.q, label %bb.u

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.aj = add nuw nsw i64 %i.c, 4
  %i.ak = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.aj, i32 noundef 0) ; 0 uses
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.al = load float, ptr %i.p, align 4, !tbaa !19 ; 2 uses
  %i.am = fcmp une float %i.al, 0.000000e+00
  %i.an = load float, ptr %i.z, align 8
  %i.ao = fcmp oeq float %i.an, 0.000000e+00
  %or.cond5 = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond5, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = fcmp oeq float %i.al, 0.000000e+00
  %i.aq = load float, ptr %i.x, align 4
  %i.ar = fcmp oeq float %i.aq, 0.000000e+00
  %or.cond8 = select i1 %i.ap, i1 %i.ar, i1 false
  %i.as = load float, ptr %i.af, align 4
  %i.at = fcmp oeq float %i.as, 0.000000e+00
  %or.cond11 = select i1 %or.cond8, i1 %i.at, i1 false
  br i1 %or.cond11, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.au = add nuw nsw i64 %i.c, 4
  %i.av = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.au, i32 noundef 0)
  %.not35 = icmp eq i32 %i.av, 0
  br i1 %.not35, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
end_hunk_0
begin_hunk_1_@_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.033
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2, 1) i32 @_Z17xdr_xtc_seek_timefP8_IO_FILEP3XDRib(float noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %1)
  %i.e = add nsw i64 %i.d, -16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.093 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.f = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef 0, i32 noundef 2)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %1) ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i64 %i.g, 9223372036854775804        ; 2 uses
  %i.j = sub nsw i64 %i.i, %.093
  %i.k = sdiv i64 %i.j, 8
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  %i.m = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.l, i32 noundef 0)
  %.not103 = icmp eq i32 %i.m, 0
  br i1 %.not103, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.e
  %i.n = call fastcc noundef float @_ZL19xdr_xtc_estimate_dtP8_IO_FILEP3XDRiPb(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.c)
  %i.o = load i8, ptr %i.c, align 1, !tbaa !27, !range !28, !noundef !29
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.ab
  %i.q = phi float [ %i.bj, %bb.ab ], [ %i.n, %.preheader ] ; 8 uses
  %.0114 = phi i32 [ %.1, %bb.ab ], [ 0, %.preheader ] ; 3 uses
  %.088113 = phi i64 [ %.189, %bb.ab ], [ %i.l, %.preheader ] ; 7 uses
  %.090112 = phi i64 [ %.292, %bb.ab ], [ %i.i, %.preheader ] ; 5 uses
  %.194111 = phi i64 [ %.3, %bb.ab ], [ %.093, %.preheader ] ; 6 uses
  %i.r = fcmp ogt float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.s = icmp eq i32 %.0114, -1
  br i1 %i.s, label %.loopexit, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.t = fcmp olt float %i.q, 0.000000e+00
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %.0114, 1
  br i1 %i.u, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g
  %.1 = phi i32 [ %.0114, %bb.g ], [ 1, %bb.f ], [ -1, %bb.h ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.v = call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %1) ; 3 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %2, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.y = call fastcc noundef i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.b, ptr noundef %i.a)
  switch i32 %i.y, label %bb.k [
    i32 1, label %bb.l
    i32 -1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.c, align 1, !tbaa !27
  %i.z = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.v, i32 noundef 0)
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.n, label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.aa = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.v, i32 noundef 0) ; 0 uses
  br label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit.thread

_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit.thread: ; preds = %bb.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.ab = load float, ptr %i.a, align 4, !tbaa !19 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ac = fcmp olt float %i.ab, %0                ; 3 uses
  %i.ad = icmp sgt i32 %.1, -1                    ; 2 uses
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = fcmp ogt float %i.ab, %0
  %i.af = icmp eq i32 %.1, -1
  %or.cond3 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = fsub float %i.ab, %0
  %i.ah = fcmp oge float %i.ag, %i.q
  %or.cond5 = select i1 %i.ah, i1 %i.ad, i1 false
  br i1 %or.cond5, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = fsub float %0, %i.ab
  %i.aj = fneg float %i.q
  %i.ak = fcmp oge float %i.ai, %i.aj
  %i.al = icmp slt i32 %.1, 0
  %or.cond7 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond7, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.am = add i64 %.194111, -17
  %i.an = sub i64 %i.am, %.090112
  %i.ao = icmp ult i64 %i.an, -33
  br i1 %i.ao, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ap = fcmp oge float %i.q, 0.000000e+00
  %i.aq = icmp ne i32 %.1, -1
  %or.cond9 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond9, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.088..194 = select i1 %i.ac, i64 %.088113, i64 %.194111
  %.090..088 = select i1 %i.ac, i64 %.090112, i64 %.088113
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ar = fcmp ole float %i.q, 0.000000e+00
  %i.as = icmp eq i32 %.1, -1
  %or.cond11 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond11, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.at = fcmp ult float %i.ab, %0                ; 2 uses
  %.194..088 = select i1 %i.at, i64 %.194111, i64 %.088113
  %.088..090 = select i1 %i.at, i64 %.088113, i64 %.090112
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.295 = phi i64 [ %.088..194, %bb.t ], [ %.194..088, %bb.v ] ; 2 uses
  %.191 = phi i64 [ %.090..088, %bb.t ], [ %.088..090, %bb.v ] ; 2 uses
  %i.au = add nsw i64 %.191, %.295
  %i.av = sdiv i64 %i.au, 8
  %i.aw = shl nsw i64 %i.av, 2                    ; 2 uses
  %i.ax = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.aw, i32 noundef 0)
  %.not105 = icmp eq i32 %i.ax, 0
  br i1 %.not105, label %bb.ab, label %.loopexit

bb.x:                                             ; preds = %bb.r, %bb.q
  %i.ay = add i64 %.194111, 16
  %i.az = sub i64 %i.ay, %.090112
  %i.ba = icmp ult i64 %i.az, 33
  br i1 %i.ba, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = call fastcc noundef float @_ZL19xdr_xtc_estimate_dtP8_IO_FILEP3XDRiPb(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.c)
  %i.bc = fcmp une float %i.bb, %i.q
  %i.bd = load i8, ptr %i.c, align 1, !range !28
  %i.be = trunc nuw i8 %i.bd to i1
  %or.cond13 = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond13, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bf = call fastcc noundef float @_ZL19xdr_xtc_estimate_dtP8_IO_FILEP3XDRiPb(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.c)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.096 = phi float [ %i.bf, %bb.z ], [ %i.q, %bb.y ]
  %i.bg = fcmp oge float %i.ab, %0
  %i.bh = fsub float %i.ab, %0
  %i.bi = fcmp olt float %i.bh, %.096
  %or.cond107 = and i1 %i.bg, %i.bi
  br i1 %or.cond107, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %.3 = phi i64 [ %.295, %bb.w ], [ %.194111, %bb.aa ]
  %.292 = phi i64 [ %.191, %bb.w ], [ %.090112, %bb.aa ]
  %.189 = phi i64 [ %i.aw, %bb.w ], [ %.088113, %bb.aa ]
  %i.bj = call fastcc noundef float @_ZL19xdr_xtc_estimate_dtP8_IO_FILEP3XDRiPb(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.c)
  %i.bk = load i8, ptr %i.c, align 1, !tbaa !27, !range !28, !noundef !29
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.lr.ph, label %.loopexit, !llvm.loop !63

bb.ac:                                            ; preds = %bb.aa, %bb.x
  %i.bm = icmp slt i64 %.088113, 17
  %spec.select = select i1 %i.bm, i64 %.194111, i64 %.088113
  %i.bn = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %spec.select, i32 noundef 0) ; 0 uses
  %i.bo = call fastcc noundef i64 @_ZL24xtc_get_next_frame_startP8_IO_FILEP3XDRi(ptr noundef %1, ptr noundef %2, i32 noundef %3) ; 2 uses
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bq = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %1, i64 noundef %i.bo, i32 noundef 0)
  %.not104 = icmp ne i32 %i.bq, 0
  %. = sext i1 %.not104 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %bb.f, %bb.h, %bb.u, %bb.w, %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit.thread, %.preheader, %bb.ad, %bb.ac, %bb.e, %bb.d, %bb.c
  %.097 = phi i32 [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.d ], [ %., %bb.ad ], [ -1, %bb.ac ], [ -1, %.preheader ], [ -1, %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit.thread ], [ -1, %bb.ab ], [ -2, %bb.f ], [ -1, %bb.u ], [ -2, %bb.h ], [ -1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret i32 %.097
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZL19xdr_xtc_estimate_dtP8_IO_FILEP3XDRiPb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) initializes((0, 1)) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store i8 0, ptr %3, align 1, !tbaa !27
  %i.c = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef float @_ZL26xtc_get_current_frame_timeP8_IO_FILEP3XDRiPb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3)
  %i.f = load i8, ptr %3, align 1, !tbaa !27, !range !28, !noundef !29
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %3, align 1, !tbaa !27
  %i.h = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef %1, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.k = call fastcc noundef i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.b, ptr noundef %i.a)
  switch i32 %i.k, label %bb.e [
    i32 1, label %bb.f
    i32 -1, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %3, align 1, !tbaa !27
  %i.l = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.h, i32 noundef 0)
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %3, align 1, !tbaa !27
  br label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit

bb.h:                                             ; preds = %bb.f
  %i.m = load float, ptr %i.a, align 4, !tbaa !19
  br label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit

bb.i:                                             ; preds = %bb.e
  %i.n = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.h, i32 noundef 0) ; 0 uses
  br label %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit

_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit: ; preds = %bb.c, %bb.g, %bb.h, %bb.i
  %.0.i = phi float [ -1.000000e+00, %bb.i ], [ -1.000000e+00, %bb.g ], [ %i.m, %bb.h ], [ -1.000000e+00, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.o = load i8, ptr %3, align 1, !tbaa !27, !range !28, !noundef !29
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit
  %i.q = call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.c, i32 noundef 0)
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %3, align 1, !tbaa !27
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.r = fsub float %.0.i, %i.e
  br label %bb.m

bb.m:                                             ; preds = %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit, %bb.b, %bb.a, %bb.l, %bb.k
  %.0 = phi float [ -1.000000e+00, %bb.a ], [ -1.000000e+00, %bb.k ], [ %i.r, %bb.l ], [ -1.000000e+00, %bb.b ], [ -1.000000e+00, %_ZL23xtc_get_next_frame_timeP8_IO_FILEP3XDRiPb.exit ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZL26xtc_get_current_frame_timeP8_IO_FILEP3XDRiPb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %3, align 1, !tbaa !27
  %i.c = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 3 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.f
  %i.e = call fastcc noundef i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.a, ptr noundef %i.b)
  switch i32 %i.e, label %bb.f [
    i32 1, label %bb.b
    i32 -1, label %bb.e
  ]

bb.b:                                             ; preds = %.preheader
  store i8 1, ptr %3, align 1, !tbaa !27
  %i.f = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.c, i32 noundef 0)
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %3, align 1, !tbaa !27
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.g = load float, ptr %i.b, align 4, !tbaa !19
  br label %.loopexit

bb.e:                                             ; preds = %.preheader
  %i.h = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.c, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %.preheader
  %i.i = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef -8, i32 noundef 1)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.preheader, label %.loopexit, !llvm.loop !64

.loopexit:                                        ; preds = %bb.f, %bb.a, %bb.e, %bb.d, %bb.c
  %.0 = phi float [ -1.000000e+00, %bb.a ], [ -1.000000e+00, %bb.c ], [ %i.g, %bb.d ], [ -1.000000e+00, %bb.e ], [ -1.000000e+00, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define noundef float @_Z27xdr_xtc_get_last_frame_timeP8_IO_FILEP3XDRiPb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 1)) %3) local_unnamed_addr #2 {
bb.a:
  store i8 1, ptr %3, align 1, !tbaa !27
  %i.a = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef -12, i32 noundef 2)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef float @_ZL26xtc_get_current_frame_timeP8_IO_FILEP3XDRiPb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3)
  %i.e = load i8, ptr %3, align 1, !tbaa !27, !range !28, !noundef !29
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.a, i32 noundef 0)
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.b, %bb.a
  store i8 0, ptr %3, align 1, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d, %bb.c
  %.0 = phi float [ %i.d, %bb.d ], [ -1.000000e+00, %bb.c ], [ -1.000000e+00, %.sink.split ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z29xdr_xtc_get_last_frame_numberP8_IO_FILEP3XDRiPb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 1)) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca float, align 4                    ; 3 uses
  store i8 1, ptr %3, align 1, !tbaa !27
  %i.c = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef -12, i32 noundef 2)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %3, align 1, !tbaa !27
  %i.f = tail call noundef i64 @_Z9gmx_ftellP8_IO_FILE(ptr noundef %0) ; 3 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.h
  %i.h = call fastcc noundef i32 @_ZL19xtc_at_header_startP8_IO_FILEP3XDRiPiPf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.a, ptr noundef %i.b)
  switch i32 %i.h, label %default.unreachable [
    i32 1, label %bb.d
    i32 -1, label %bb.g
    i32 0, label %bb.h
  ]

bb.d:                                             ; preds = %.preheader.i
  store i8 1, ptr %3, align 1, !tbaa !27
  %i.i = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.f, i32 noundef 0)
  %.not16.i = icmp eq i32 %i.i, 0
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %3, align 1, !tbaa !27
  br label %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit

bb.f:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.a, align 4, !tbaa !14
  br label %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit

bb.g:                                             ; preds = %.preheader.i
  %i.k = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.f, i32 noundef 0) ; 0 uses
  br label %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit

bb.h:                                             ; preds = %.preheader.i
  %i.l = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef -8, i32 noundef 1)
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %.preheader.i, label %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit, !llvm.loop !65

default.unreachable:                              ; preds = %.preheader.i
  unreachable

_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit: ; preds = %bb.h, %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ %i.j, %bb.f ], [ -1, %bb.g ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.m = load i8, ptr %3, align 1, !tbaa !27, !range !28, !noundef !29
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit
  %i.o = tail call noundef i32 @_Z9gmx_fseekP8_IO_FILEli(ptr noundef %0, i64 noundef %i.c, i32 noundef 0)
  %.not15 = icmp eq i32 %i.o, 0
  br i1 %.not15, label %bb.j, label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.b, %bb.a
  store i8 0, ptr %3, align 1, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit
  %.0 = phi i32 [ %.0.i, %bb.i ], [ -1, %_ZL28xtc_get_current_frame_numberP8_IO_FILEP3XDRiPb.exit ], [ -1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !20}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"_ZTS10DataBuffer", !15, i64 0, !7, i64 8, !7, i64 12, !11, i64 16}
!17 = !{!16, !11, i64 16}
!18 = !{!"float", !6, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!16, !7, i64 8}
!22 = !{!16, !7, i64 12}
!23 = !{!16, !15, i64 0}
!24 = !{!6, !6, i64 0}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!"bool", !6, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!11, !11, i64 0}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20, !44}
!39 = distinct !{!39, !20}
!40 = !{!"_ZTS6xdr_op", !6, i64 0}
!41 = !{!"p1 _ZTSN3XDR7xdr_opsE", !10, i64 0}
!42 = !{!"_ZTS3XDR", !40, i64 0, !41, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !7, i64 40}
!43 = !{!42, !40, i64 0}
!44 = !{!"llvm.loop.peeled.count", i32 1}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !20}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
end_hunk_1
