Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/zstd_decompress_block?download=true
inline.NumInlined: 579
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ZSTD_decodeLiteralsBlock:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %i.hx, i8 %i.hy, i64 65536, i1 false)
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs, %bb.bq
  %.sink = phi ptr [ %i.hk, %bb.bs ], [ %i.hi, %bb.bq ] ; 3 uses
  %.sink35.i243.ph = phi i32 [ 0, %bb.bs ], [ 1, %bb.bq ]
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 30352
  store ptr %.sink, ptr %i.hz, align 8, !tbaa !45
  %.sink37.i242.ph = getelementptr inbounds nuw i8, ptr %.sink, i64 %.0207
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 30360
  store ptr %.sink37.i242.ph, ptr %i.ia, align 8, !tbaa !46
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 %.sink35.i243.ph, ptr %i.ib, align 8, !tbaa !47
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sink, i8 %i.id, i64 %.0207, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !45
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !50
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %.0207, ptr %i.ih, align 8, !tbaa !51
  %i.ii = add nuw nsw i64 %.0, 1
  br label %bb.bw

default.unreachable253:                           ; preds = %ZSTD_blockSizeMax.exit
  unreachable

bb.bw:                                            ; preds = %bb.d, %bb.e, %bb.ah, %bb.ai, %bb.ag, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.ay, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.bd, %bb.bc, %bb.bm, %bb.bl, %bb.bk, %bb.bi, %bb.bg, %bb.bv, %bb.a
  %.4 = phi i64 [ -20, %bb.a ], [ -20, %bb.ay ], [ %i.as, %bb.ah ], [ -30, %bb.d ], [ -20, %bb.e ], [ -20, %bb.ag ], [ -70, %bb.j ], [ -20, %bb.k ], [ -24, %bb.l ], [ -20, %bb.m ], [ -70, %bb.n ], [ %i.as, %bb.ai ], [ -20, %bb.am ], [ -70, %bb.ao ], [ -20, %bb.ap ], [ -70, %bb.aq ], [ %i.fo, %bb.bc ], [ %i.fo, %bb.bd ], [ -20, %bb.bi ], [ -70, %bb.bk ], [ -20, %bb.bl ], [ %i.ii, %bb.bv ], [ -20, %bb.bg ], [ -70, %bb.bm ]
  ret i64 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZSTD_buildFSETable(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef captures(none) %6, i64 %7, i32 noundef %8) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ZSTD_buildFSETable_body_bmi2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %ZSTD_buildFSETable_body_default.exit

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = add i32 %2, 1                            ; 3 uses
  %i.c = shl nuw i32 1, %5                        ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 106 ; 2 uses
  %i.e = add i32 %i.c, -1                         ; 7 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.c
  store i32 1, ptr %0, align 4
  %.sroa.5.0..sroa_idx.i65.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %.sroa.5.0..sroa_idx.i65.i, align 4
  br label %.preheader7.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = add i32 %5, -1
  %i.g = shl i32 65536, %i.f
  %i.h = ashr exact i32 %i.g, 16                  ; 3 uses
  %wide.trip.count.i = zext i32 %i.b to i64       ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.j ] ; 5 uses
  %.sroa.0.0.i10.i = phi i32 [ 1, %.lr.ph.i.new ], [ %.sroa.0.2.i.i.1, %bb.j ] ; 2 uses
  %.0123.i9.i = phi i32 [ %i.e, %.lr.ph.i.new ], [ %.1124.i.i.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.j ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !27   ; 3 uses
  %i.l = icmp eq i16 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add i32 %.0123.i9.i, -1
  %i.n = zext i32 %.0123.i9.i to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.q, ptr %i.p, align 4, !tbaa !53
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = sext i16 %i.k to i32
  %.not.i.i = icmp sgt i32 %i.h, %i.r
  %spec.select.i.i = select i1 %.not.i.i, i32 %.sroa.0.0.i10.i, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i = phi i16 [ 1, %bb.e ], [ %i.k, %bb.f ]
  %.1124.i.i = phi i32 [ %i.m, %bb.e ], [ %.0123.i9.i, %bb.f ] ; 3 uses
  %.sroa.0.2.i.i = phi i32 [ %.sroa.0.0.i10.i, %bb.e ], [ %spec.select.i.i, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.i
  store i16 %.sink.i, ptr %i.s, align 2, !tbaa !27
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !27   ; 3 uses
  %i.v = icmp eq i16 %i.u, -1
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = sext i16 %i.u to i32
  %.not.i.i.1 = icmp sgt i32 %i.h, %i.w
  %spec.select.i.i.1 = select i1 %.not.i.i.1, i32 %.sroa.0.2.i.i, i32 0
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = add i32 %.1124.i.i, -1
  %i.y = zext i32 %.1124.i.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = trunc nuw i64 %indvars.iv.next.i to i32
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i.1 = phi i16 [ 1, %bb.i ], [ %i.u, %bb.h ]
  %.1124.i.i.1 = phi i32 [ %i.x, %bb.i ], [ %.1124.i.i, %bb.h ] ; 3 uses
  %.sroa.0.2.i.i.1 = phi i32 [ %.sroa.0.2.i.i, %bb.i ], [ %spec.select.i.i.1, %bb.h ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.next.i
  store i16 %.sink.i.1, ptr %i.ac, align 2, !tbaa !27
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.d, !llvm.loop !0

._crit_edge.i.unr-lcssa:                          ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %.sroa.0.0.i10.i.epil.init = phi i32 [ 1, %.lr.ph.i ], [ %.sroa.0.2.i.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.0123.i9.i.epil.init = phi i32 [ %i.e, %.lr.ph.i ], [ %.1124.i.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %lcmp.mod27 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !27 ; 3 uses
  %i.af = icmp eq i16 %i.ae, -1
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.ag = sext i16 %i.ae to i32
  %.not.i.i.epil = icmp sgt i32 %i.h, %i.ag
  %spec.select.i.i.epil = select i1 %.not.i.i.epil, i32 %.sroa.0.0.i10.i.epil.init, i32 0
  br label %._crit_edge.i.epilog-lcssa

bb.l:                                             ; preds = %.epil.preheader
  %i.ah = add i32 %.0123.i9.i.epil.init, -1
  %i.ai = zext i32 %.0123.i9.i.epil.init to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = trunc nuw i64 %indvars.iv.i.epil.init to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !53
  br label %._crit_edge.i.epilog-lcssa

._crit_edge.i.epilog-lcssa:                       ; preds = %bb.l, %bb.k
  %.sink.i.epil = phi i16 [ 1, %bb.l ], [ %i.ae, %bb.k ]
  %.1124.i.i.epil = phi i32 [ %i.ah, %bb.l ], [ %.0123.i9.i.epil.init, %bb.k ]
  %.sroa.0.2.i.i.epil = phi i32 [ %.sroa.0.0.i10.i.epil.init, %bb.l ], [ %spec.select.i.i.epil, %bb.k ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.i.epil.init
  store i16 %.sink.i.epil, ptr %i.am, align 2, !tbaa !27
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %._crit_edge.i.epilog-lcssa
  %.1124.i.i.lcssa = phi i32 [ %.1124.i.i.1, %._crit_edge.i.unr-lcssa ], [ %.1124.i.i.epil, %._crit_edge.i.epilog-lcssa ] ; 4 uses
  %.sroa.0.2.i.i.lcssa = phi i32 [ %.sroa.0.2.i.i.1, %._crit_edge.i.unr-lcssa ], [ %.sroa.0.2.i.i.epil, %._crit_edge.i.epilog-lcssa ]
  store i32 %.sroa.0.2.i.i.lcssa, ptr %0, align 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %i.an = icmp eq i32 %.1124.i.i.lcssa, %i.e
  br i1 %i.an, label %.lr.ph31.i, label %bb.m

.preheader7.i:                                    ; preds = %._crit_edge26.i, %.thread.i
  %i.ao = lshr i32 %i.c, 1
  %i.ap = lshr i32 %i.c, 3
  %i.aq = add nuw nsw i32 %i.ap, 3
  %i.ar = add nuw nsw i32 %i.aq, %i.ao
  %i.as = zext nneg i32 %i.e to i64               ; 3 uses
  %i.at = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.au = zext i32 %i.c to i64                    ; 2 uses
  %i.av = shl nuw nsw i64 %i.at, 1
  br label %.preheader.i

.lr.ph31.i:                                       ; preds = %._crit_edge.i, %._crit_edge26.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %._crit_edge26.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %.0120.i28.i = phi i64 [ %i.bq, %._crit_edge26.i ], [ 0, %._crit_edge.i ] ; 4 uses
  %.0121.i27.i = phi i64 [ %i.bp, %._crit_edge26.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv49.i
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !27 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0121.i27.i ; 3 uses
  store i64 %.0120.i28.i, ptr %i.ay, align 1, !tbaa !55
  %i.az = icmp sgt i16 %i.ax, 8
  br i1 %i.az, label %.lr.ph25.preheader.i, label %._crit_edge26.i

.lr.ph25.preheader.i:                             ; preds = %.lr.ph31.i
  %i.ba = zext nneg i16 %i.ax to i64              ; 2 uses
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 16)
  %i.bc = add nsw i64 %i.bb, -9                   ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 24
  br i1 %min.iters.check, label %.lr.ph25.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph25.preheader.i
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bf = shl i64 %n.vec, 3
  %i.bg = or disjoint i64 %i.bf, 8
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0120.i28.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl nuw i64 %index, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.bj, align 1, !tbaa !55
  store <2 x i64> %broadcast.splat, ptr %i.bk, align 1, !tbaa !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %._crit_edge26.i, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %.lr.ph25.preheader.i, %middle.block
  %indvars.iv46.i.ph = phi i64 [ 8, %.lr.ph25.preheader.i ], [ %i.bg, %middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %.lr.ph25.i ], [ %indvars.iv46.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv46.i
  store i64 %.0120.i28.i, ptr %i.bm, align 1, !tbaa !55
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 8 ; 2 uses
  %i.bn = icmp samesign ult i64 %indvars.iv.next47.i, %i.ba
  br i1 %i.bn, label %.lr.ph25.i, label %._crit_edge26.i, !llvm.loop !110

._crit_edge26.i:                                  ; preds = %.lr.ph25.i, %middle.block, %.lr.ph31.i
  %i.bo = sext i16 %i.ax to i64
  %i.bp = add i64 %.0121.i27.i, %i.bo
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %i.bq = add i64 %.0120.i28.i, 72340172838076673
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count.i
  br i1 %exitcond53.not.i, label %.preheader7.i, label %.lr.ph31.i, !llvm.loop !1

.preheader.i:                                     ; preds = %.preheader.i, %.preheader7.i
  %.0116.i34.i = phi i64 [ 0, %.preheader7.i ], [ %i.cg, %.preheader.i ] ; 2 uses
  %.0117.i33.i = phi i64 [ 0, %.preheader7.i ], [ %i.cf, %.preheader.i ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0116.i34.i ; 2 uses
  %i.bs = and i64 %.0117.i33.i, %i.as
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !28
  %i.bu = zext i8 %i.bt to i32
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !53
  %i.bx = add nuw nsw i64 %.0117.i33.i, %i.at
  %i.by = and i64 %i.bx, %i.as
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !28
  %i.cb = zext i8 %i.ca to i32
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !53
  %i.ce = add nuw nsw i64 %.0117.i33.i, %i.av
  %i.cf = and i64 %i.ce, %i.as
  %i.cg = add nuw nsw i64 %.0116.i34.i, 2         ; 2 uses
  %i.ch = icmp samesign ult i64 %i.cg, %i.au
  br i1 %i.ch, label %.preheader.i, label %.loopexit.i, !llvm.loop !2

bb.m:                                             ; preds = %._crit_edge.i
  %i.ci = lshr i32 %i.c, 3
  %i.cj = lshr i32 %i.c, 1
  %i.ck = add nuw nsw i32 %i.ci, 3
  %i.cl = add nuw nsw i32 %i.ck, %i.cj            ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge17.i, %bb.m
  %indvars.iv41.i = phi i64 [ 0, %bb.m ], [ %indvars.iv.next42.i, %._crit_edge17.i ] ; 3 uses
  %.0113.i20.i = phi i32 [ 0, %bb.m ], [ %.1.i.lcssa.i, %._crit_edge17.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv41.i
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !27 ; 5 uses
  %i.co = icmp sgt i16 %i.cn, 0
  br i1 %i.co, label %.lr.ph16.preheader.i, label %._crit_edge17.i

.lr.ph16.preheader.i:                             ; preds = %bb.n
  %i.cp = trunc nuw i64 %indvars.iv41.i to i32    ; 3 uses
  %i.cq = icmp eq i16 %i.cn, 1
  br i1 %i.cq, label %.lr.ph16.i.epil.preheader, label %.lr.ph16.preheader.i.new

.lr.ph16.preheader.i.new:                         ; preds = %.lr.ph16.preheader.i
  %i.cr = and i16 %i.cn, 32766
  %unroll_iter32 = zext nneg i16 %i.cr to i32
  br label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.q, %.lr.ph16.preheader.i.new
  %.1.i13.i = phi i32 [ %.0113.i20.i, %.lr.ph16.preheader.i.new ], [ %.2.i.i.1, %bb.q ] ; 2 uses
  %niter33 = phi i32 [ 0, %.lr.ph16.preheader.i.new ], [ %niter33.next.1, %bb.q ]
  %i.cs = zext nneg i32 %.1.i13.i to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cp, ptr %i.cu, align 4, !tbaa !53
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph16.i
  %.1.pn.i.i = phi i32 [ %.1.i13.i, %.lr.ph16.i ], [ %.2.i.i, %bb.o ]
  %.pn.i.i = add nuw i32 %i.cl, %.1.pn.i.i
  %.2.i.i = and i32 %.pn.i.i, %i.e                ; 4 uses
  %i.cv = icmp ugt i32 %.2.i.i, %.1124.i.i.lcssa
  br i1 %i.cv, label %bb.o, label %.lr.ph16.i.1, !prof !58, !llvm.loop !3

.lr.ph16.i.1:                                     ; preds = %bb.o
  %i.cw = zext nneg i32 %.2.i.i to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %i.cp, ptr %i.cy, align 4, !tbaa !53
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph16.i.1
  %.1.pn.i.i.1 = phi i32 [ %.2.i.i, %.lr.ph16.i.1 ], [ %.2.i.i.1, %bb.p ]
  %.pn.i.i.1 = add nuw i32 %i.cl, %.1.pn.i.i.1
  %.2.i.i.1 = and i32 %.pn.i.i.1, %i.e            ; 5 uses
  %i.cz = icmp ugt i32 %.2.i.i.1, %.1124.i.i.lcssa
  br i1 %i.cz, label %bb.p, label %bb.q, !prof !58, !llvm.loop !3

bb.q:                                             ; preds = %bb.p
  %niter33.next.1 = add i32 %niter33, 2           ; 2 uses
  %niter33.ncmp.1 = icmp eq i32 %niter33.next.1, %unroll_iter32
  br i1 %niter33.ncmp.1, label %._crit_edge17.i.loopexit.unr-lcssa, label %.lr.ph16.i, !llvm.loop !4

._crit_edge17.i.loopexit.unr-lcssa:               ; preds = %bb.q
  %i.da = and i16 %i.cn, 1
  %lcmp.mod29.not = icmp eq i16 %i.da, 0
  br i1 %lcmp.mod29.not, label %._crit_edge17.i, label %.lr.ph16.i.epil.preheader

.lr.ph16.i.epil.preheader:                        ; preds = %._crit_edge17.i.loopexit.unr-lcssa, %.lr.ph16.preheader.i
  %.1.i13.i.epil.init = phi i32 [ %.0113.i20.i, %.lr.ph16.preheader.i ], [ %.2.i.i.1, %._crit_edge17.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod31 = trunc i16 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.db = zext nneg i32 %.1.i13.i.epil.init to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 %i.cp, ptr %i.dd, align 4, !tbaa !53
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph16.i.epil.preheader
  %.1.pn.i.i.epil = phi i32 [ %.1.i13.i.epil.init, %.lr.ph16.i.epil.preheader ], [ %.2.i.i.epil, %bb.r ]
  %.pn.i.i.epil = add nuw i32 %i.cl, %.1.pn.i.i.epil
  %.2.i.i.epil = and i32 %.pn.i.i.epil, %i.e      ; 3 uses
  %i.de = icmp ugt i32 %.2.i.i.epil, %.1124.i.i.lcssa
  br i1 %i.de, label %bb.r, label %._crit_edge17.i, !prof !58, !llvm.loop !3

._crit_edge17.i:                                  ; preds = %._crit_edge17.i.loopexit.unr-lcssa, %bb.r, %bb.n
  %.1.i.lcssa.i = phi i32 [ %.0113.i20.i, %bb.n ], [ %.2.i.i.1, %._crit_edge17.i.loopexit.unr-lcssa ], [ %.2.i.i.epil, %bb.r ]
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count.i
  br i1 %exitcond45.not.i, label %.loopexit.i.loopexit17, label %bb.n, !llvm.loop !5

.loopexit.i.loopexit17:                           ; preds = %._crit_edge17.i
  %.pre = zext i32 %i.c to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %.loopexit.i.loopexit17
  %wide.trip.count57.i.pre-phi = phi i64 [ %.pre, %.loopexit.i.loopexit17 ], [ %i.au, %.preheader.i ]
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.loopexit.i
  %indvars.iv54.i = phi i64 [ 0, %.loopexit.i ], [ %indvars.iv.next55.i, %bb.s ] ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv54.i ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !53
  %i.di = zext i32 %i.dh to i64                   ; 3 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.di ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !27 ; 2 uses
  %i.dl = add i16 %i.dk, 1
  store i16 %i.dl, ptr %i.dj, align 2, !tbaa !27
  %i.dm = zext i16 %i.dk to i32                   ; 2 uses
  %i.dn = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.dm, i1 true)
  %i.do = xor i32 %i.dn, 31
  %i.dp = sub i32 %5, %i.do                       ; 2 uses
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 3
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !59
  %i.ds = and i32 %i.dp, 255
  %i.dt = shl i32 %i.dm, %i.ds
  %i.du = sub i32 %i.dt, %i.c
  %i.dv = trunc i32 %i.du to i16
  store i16 %i.dv, ptr %i.df, align 4, !tbaa !60
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 %i.di
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !28
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store i8 %i.dx, ptr %i.dy, align 2, !tbaa !61
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.di
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !43
  store i32 %i.ea, ptr %i.dg, align 4, !tbaa !53
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count57.i.pre-phi
  br i1 %exitcond58.not.i, label %ZSTD_buildFSETable_body_default.exit, label %bb.s, !llvm.loop !6

ZSTD_buildFSETable_body_default.exit:             ; preds = %bb.s, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_buildFSETable_body_bmi2(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = add i32 %2, 1                            ; 4 uses
  %i.c = shl nuw i32 1, %5                        ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 106 ; 2 uses
  %i.e = add i32 %i.c, -1                         ; 7 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.a
  store i32 1, ptr %0, align 4
  %.sroa.5.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %.sroa.5.0..sroa_idx.i65, align 4
  %i.f = lshr i32 %i.c, 1
  %i.g = lshr i32 %i.c, 3
  %i.h = add nuw nsw i32 %i.g, 3
  %i.i = add nuw nsw i32 %i.h, %i.f
  br label %.preheader7

.lr.ph:                                           ; preds = %bb.a
  %i.j = add i32 %5, -1
  %i.k = shl i32 65536, %i.j
  %i.l = ashr exact i32 %i.k, 16                  ; 3 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %2, 0
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 5 uses
  %.sroa.0.0.i10 = phi i32 [ 1, %.lr.ph.new ], [ %.sroa.0.2.i.1, %bb.h ] ; 2 uses
  %.0123.i9 = phi i32 [ %i.e, %.lr.ph.new ], [ %.1124.i.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !27   ; 3 uses
  %i.p = icmp eq i16 %i.o, -1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = add i32 %.0123.i9, -1
  %i.r = zext i32 %.0123.i9 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = trunc nuw i64 %indvars.iv to i32
  store i32 %i.u, ptr %i.t, align 4, !tbaa !53
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = sext i16 %i.o to i32
  %.not.i = icmp sgt i32 %i.l, %i.v
  %spec.select.i = select i1 %.not.i, i32 %.sroa.0.0.i10, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i16 [ 1, %bb.c ], [ %i.o, %bb.d ]
  %.1124.i = phi i32 [ %i.q, %bb.c ], [ %.0123.i9, %bb.d ] ; 3 uses
  %.sroa.0.2.i = phi i32 [ %.sroa.0.0.i10, %bb.c ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv
  store i16 %.sink, ptr %i.w, align 2, !tbaa !27
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.y = load i16, ptr %i.x, align 2, !tbaa !27   ; 3 uses
  %i.z = icmp eq i16 %i.y, -1
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = sext i16 %i.y to i32
  %.not.i.1 = icmp sgt i32 %i.l, %i.aa
  %spec.select.i.1 = select i1 %.not.i.1, i32 %.sroa.0.2.i, i32 0
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = add i32 %.1124.i, -1
  %i.ac = zext i32 %.1124.i to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.1 = phi i16 [ 1, %bb.g ], [ %i.y, %bb.f ]
  %.1124.i.1 = phi i32 [ %i.ab, %bb.g ], [ %.1124.i, %bb.f ] ; 3 uses
  %.sroa.0.2.i.1 = phi i32 [ %.sroa.0.2.i, %bb.g ], [ %spec.select.i.1, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.next
  store i16 %.sink.1, ptr %i.ag, align 2, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !0

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.sroa.0.0.i10.epil.init = phi i32 [ 1, %.lr.ph ], [ %.sroa.0.2.i.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0123.i9.epil.init = phi i32 [ %i.e, %.lr.ph ], [ %.1124.i.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod6 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !27 ; 3 uses
  %i.aj = icmp eq i16 %i.ai, -1
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
  %i.ak = sext i16 %i.ai to i32
  %.not.i.epil = icmp sgt i32 %i.l, %i.ak
  %spec.select.i.epil = select i1 %.not.i.epil, i32 %.sroa.0.0.i10.epil.init, i32 0
  br label %._crit_edge.epilog-lcssa

bb.j:                                             ; preds = %.epil.preheader
  %i.al = add i32 %.0123.i9.epil.init, -1
  %i.am = zext i32 %.0123.i9.epil.init to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = trunc nuw i64 %indvars.iv.epil.init to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !53
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.j, %bb.i
  %.sink.epil = phi i16 [ 1, %bb.j ], [ %i.ai, %bb.i ]
  %.1124.i.epil = phi i32 [ %i.al, %bb.j ], [ %.0123.i9.epil.init, %bb.i ]
  %.sroa.0.2.i.epil = phi i32 [ %.sroa.0.0.i10.epil.init, %bb.j ], [ %spec.select.i.epil, %bb.i ]
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.epil.init
  store i16 %.sink.epil, ptr %i.aq, align 2, !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %.1124.i.lcssa = phi i32 [ %.1124.i.1, %._crit_edge.unr-lcssa ], [ %.1124.i.epil, %._crit_edge.epilog-lcssa ] ; 4 uses
  %.sroa.0.2.i.lcssa = phi i32 [ %.sroa.0.2.i.1, %._crit_edge.unr-lcssa ], [ %.sroa.0.2.i.epil, %._crit_edge.epilog-lcssa ]
  store i32 %.sroa.0.2.i.lcssa, ptr %0, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.ar = icmp eq i32 %.1124.i.lcssa, %i.e
  %wide.trip.count52 = zext i32 %i.b to i64       ; 2 uses
  br i1 %i.ar, label %.lr.ph31.preheader, label %.lr.ph22

.lr.ph31.preheader:                               ; preds = %._crit_edge
  %i.as = lshr i32 %i.c, 1
  %i.at = lshr i32 %i.c, 3
  %i.au = add nuw nsw i32 %i.at, 3
  %i.av = add nuw nsw i32 %i.au, %i.as
  br label %.lr.ph31

.preheader7:                                      ; preds = %._crit_edge26, %.thread
  %.shrunk = phi i32 [ %i.i, %.thread ], [ %i.av, %._crit_edge26 ]
  %i.aw = zext i32 %i.e to i64                    ; 3 uses
  %i.ax = zext i32 %.shrunk to i64                ; 2 uses
  %i.ay = zext i32 %i.c to i64
  %i.az = shl nuw nsw i64 %i.ax, 1
  br label %.preheader

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %._crit_edge26
  %indvars.iv49 = phi i64 [ 0, %.lr.ph31.preheader ], [ %indvars.iv.next50, %._crit_edge26 ] ; 2 uses
  %.0120.i28 = phi i64 [ 0, %.lr.ph31.preheader ], [ %i.bu, %._crit_edge26 ] ; 4 uses
  %.0121.i27 = phi i64 [ 0, %.lr.ph31.preheader ], [ %i.bt, %._crit_edge26 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv49
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !27 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0121.i27 ; 3 uses
  store i64 %.0120.i28, ptr %i.bc, align 1, !tbaa !55
  %i.bd = icmp sgt i16 %i.bb, 8
  br i1 %i.bd, label %.lr.ph25.preheader, label %._crit_edge26

.lr.ph25.preheader:                               ; preds = %.lr.ph31
  %i.be = zext nneg i16 %i.bb to i64              ; 2 uses
  %i.bf = tail call i64 @llvm.umax.i64(i64 %i.be, i64 16)
  %i.bg = add nsw i64 %i.bf, -9                   ; 2 uses
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 24
  br i1 %min.iters.check, label %.lr.ph25.preheader2, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph25.preheader
  %n.vec = and i64 %i.bi, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3
  %i.bk = or disjoint i64 %i.bj, 8
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0120.i28, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl nuw i64 %index, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.bn, align 1, !tbaa !55
  store <2 x i64> %broadcast.splat, ptr %i.bo, align 1, !tbaa !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge26, label %.lr.ph25.preheader2

.lr.ph25.preheader2:                              ; preds = %.lr.ph25.preheader, %middle.block
  %indvars.iv46.ph = phi i64 [ 8, %.lr.ph25.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph25

.lr.ph25:                                         ; preds = %.lr.ph25.preheader2, %.lr.ph25
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.lr.ph25 ], [ %indvars.iv46.ph, %.lr.ph25.preheader2 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv46
  store i64 %.0120.i28, ptr %i.bq, align 1, !tbaa !55
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 8 ; 2 uses
  %i.br = icmp samesign ult i64 %indvars.iv.next47, %i.be
  br i1 %i.br, label %.lr.ph25, label %._crit_edge26, !llvm.loop !112

._crit_edge26:                                    ; preds = %.lr.ph25, %middle.block, %.lr.ph31
  %i.bs = sext i16 %i.bb to i64
  %i.bt = add i64 %.0121.i27, %i.bs
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.bu = add i64 %.0120.i28, 72340172838076673
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %.preheader7, label %.lr.ph31, !llvm.loop !1

.preheader:                                       ; preds = %.preheader7, %.preheader
  %.0116.i34 = phi i64 [ 0, %.preheader7 ], [ %i.ck, %.preheader ] ; 2 uses
  %.0117.i33 = phi i64 [ 0, %.preheader7 ], [ %i.cj, %.preheader ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0116.i34 ; 2 uses
  %i.bw = and i64 %.0117.i33, %i.aw
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !53
  %i.cb = add nuw nsw i64 %.0117.i33, %i.ax
  %i.cc = and i64 %i.cb, %i.aw
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !28
  %i.cf = zext i8 %i.ce to i32
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !53
  %i.ci = add nuw nsw i64 %.0117.i33, %i.az
  %i.cj = and i64 %i.ci, %i.aw
  %i.ck = add nuw nsw i64 %.0116.i34, 2           ; 2 uses
  %i.cl = icmp samesign ult i64 %i.ck, %i.ay
  br i1 %i.cl, label %.preheader, label %.loopexit, !llvm.loop !2

.lr.ph22:                                         ; preds = %._crit_edge
  %i.cm = lshr i32 %i.c, 3
  %i.cn = lshr i32 %i.c, 1
  %i.co = add nuw nsw i32 %i.cm, 3
  %i.cp = add nuw nsw i32 %i.co, %i.cn            ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph22, %._crit_edge17
  %indvars.iv41 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next42, %._crit_edge17 ] ; 3 uses
  %.0113.i20 = phi i32 [ 0, %.lr.ph22 ], [ %.1.i.lcssa, %._crit_edge17 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv41
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !27 ; 5 uses
  %i.cs = icmp sgt i16 %i.cr, 0
  br i1 %i.cs, label %.lr.ph16.preheader, label %._crit_edge17

.lr.ph16.preheader:                               ; preds = %bb.k
  %i.ct = trunc nuw i64 %indvars.iv41 to i32      ; 3 uses
  %i.cu = icmp eq i16 %i.cr, 1
  br i1 %i.cu, label %.lr.ph16.epil.preheader, label %.lr.ph16.preheader.new

.lr.ph16.preheader.new:                           ; preds = %.lr.ph16.preheader
  %i.cv = and i16 %i.cr, 32766
  %unroll_iter11 = zext nneg i16 %i.cv to i32
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.n, %.lr.ph16.preheader.new
  %.1.i13 = phi i32 [ %.0113.i20, %.lr.ph16.preheader.new ], [ %.2.i.1, %bb.n ] ; 2 uses
  %niter12 = phi i32 [ 0, %.lr.ph16.preheader.new ], [ %niter12.next.1, %bb.n ]
  %i.cw = zext nneg i32 %.1.i13 to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %i.ct, ptr %i.cy, align 4, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph16
  %.1.pn.i = phi i32 [ %.1.i13, %.lr.ph16 ], [ %.2.i, %bb.l ]
  %.pn.i = add nuw i32 %i.cp, %.1.pn.i
  %.2.i = and i32 %.pn.i, %i.e                    ; 4 uses
  %i.cz = icmp ugt i32 %.2.i, %.1124.i.lcssa
  br i1 %i.cz, label %bb.l, label %.lr.ph16.1, !prof !58, !llvm.loop !3

.lr.ph16.1:                                       ; preds = %bb.l
  %i.da = zext nneg i32 %.2.i to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %i.ct, ptr %i.dc, align 4, !tbaa !53
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph16.1
  %.1.pn.i.1 = phi i32 [ %.2.i, %.lr.ph16.1 ], [ %.2.i.1, %bb.m ]
  %.pn.i.1 = add nuw i32 %i.cp, %.1.pn.i.1
  %.2.i.1 = and i32 %.pn.i.1, %i.e                ; 5 uses
  %i.dd = icmp ugt i32 %.2.i.1, %.1124.i.lcssa
  br i1 %i.dd, label %bb.m, label %bb.n, !prof !58, !llvm.loop !3

bb.n:                                             ; preds = %bb.m
  %niter12.next.1 = add i32 %niter12, 2           ; 2 uses
  %niter12.ncmp.1 = icmp eq i32 %niter12.next.1, %unroll_iter11
  br i1 %niter12.ncmp.1, label %._crit_edge17.loopexit.unr-lcssa, label %.lr.ph16, !llvm.loop !4

._crit_edge17.loopexit.unr-lcssa:                 ; preds = %bb.n
  %i.de = and i16 %i.cr, 1
  %lcmp.mod8.not = icmp eq i16 %i.de, 0
  br i1 %lcmp.mod8.not, label %._crit_edge17, label %.lr.ph16.epil.preheader

.lr.ph16.epil.preheader:                          ; preds = %._crit_edge17.loopexit.unr-lcssa, %.lr.ph16.preheader
  %.1.i13.epil.init = phi i32 [ %.0113.i20, %.lr.ph16.preheader ], [ %.2.i.1, %._crit_edge17.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod10 = trunc i16 %i.cr to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.df = zext nneg i32 %.1.i13.epil.init to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 %i.ct, ptr %i.dh, align 4, !tbaa !53
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph16.epil.preheader
  %.1.pn.i.epil = phi i32 [ %.1.i13.epil.init, %.lr.ph16.epil.preheader ], [ %.2.i.epil, %bb.o ]
  %.pn.i.epil = add nuw i32 %i.cp, %.1.pn.i.epil
  %.2.i.epil = and i32 %.pn.i.epil, %i.e          ; 3 uses
  %i.di = icmp ugt i32 %.2.i.epil, %.1124.i.lcssa
  br i1 %i.di, label %bb.o, label %._crit_edge17, !prof !58, !llvm.loop !3

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit.unr-lcssa, %bb.o, %bb.k
  %.1.i.lcssa = phi i32 [ %.0113.i20, %bb.k ], [ %.2.i.1, %._crit_edge17.loopexit.unr-lcssa ], [ %.2.i.epil, %bb.o ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count52
  br i1 %exitcond45.not, label %.loopexit, label %bb.k, !llvm.loop !5

.loopexit:                                        ; preds = %._crit_edge17, %.preheader
  %wide.trip.count57 = zext i32 %i.c to i64
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.p
  %indvars.iv54 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next55, %bb.p ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv54 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !53
  %i.dm = zext i32 %i.dl to i64                   ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.dm ; 2 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !27 ; 2 uses
  %i.dp = add i16 %i.do, 1
  store i16 %i.dp, ptr %i.dn, align 2, !tbaa !27
  %i.dq = zext i16 %i.do to i32                   ; 2 uses
  %i.dr = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.dq, i1 true)
  %i.ds = xor i32 %i.dr, 31
  %i.dt = sub i32 %5, %i.ds                       ; 2 uses
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 3
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !59
  %i.dw = and i32 %i.dt, 255
  %i.dx = shl i32 %i.dq, %i.dw
  %i.dy = sub i32 %i.dx, %i.c
  %i.dz = trunc i32 %i.dy to i16
  store i16 %i.dz, ptr %i.dj, align 4, !tbaa !60
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 %i.dm
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i8 %i.eb, ptr %i.ec, align 2, !tbaa !61
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dm
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !43
  store i32 %i.ee, ptr %i.dk, align 4, !tbaa !53
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %ZSTD_buildFSETable_body.exit, label %bb.p, !llvm.loop !6

ZSTD_buildFSETable_body.exit:                     ; preds = %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decodeSeqHeaders(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [53 x i16], align 16              ; 5 uses
end_hunk_0
begin_hunk_1_@ZSTD_decodeSeqHeaders:bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eq, i64 1984
  call void @llvm.prefetch.p0(ptr nonnull %i.fv, i32 0, i32 2, i32 1)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eq, i64 2048
  call void @llvm.prefetch.p0(ptr nonnull %i.fw, i32 0, i32 2, i32 1)
  br label %ZSTD_buildSeqTable.exit111.thread

bb.z:                                             ; preds = %ZSTD_buildSeqTable.exit.thread
  %i.fx = ptrtoint ptr %.183119 to i64
  %i.fy = sub i64 %i.aj, %i.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.fz = call i64 @FSE_readNCount(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %.183119, i64 noundef %i.fy) #17 ; 2 uses
  %i.ga = icmp ult i64 %i.fz, -119
  br i1 %i.ga, label %bb.aa, label %ZSTD_buildSeqTable.exit111.thread142

bb.aa:                                            ; preds = %bb.z
  %i.gb = load i32, ptr %i.b, align 4, !tbaa !43  ; 2 uses
  %i.gc = icmp ugt i32 %i.gb, 8
  br i1 %i.gc, label %ZSTD_buildSeqTable.exit111.thread142, label %ZSTD_buildSeqTable.exit111

ZSTD_buildSeqTable.exit111.thread:                ; preds = %ZSTD_buildSeqTable.exit111.thread.loopexit, %bb.v, %bb.w, %bb.y
  %.1.i105.ph = phi i64 [ 1, %bb.v ], [ 0, %bb.y ], [ 0, %bb.w ], [ 0, %ZSTD_buildSeqTable.exit111.thread.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ab

ZSTD_buildSeqTable.exit111.thread137:             ; preds = %bb.t, %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

ZSTD_buildSeqTable.exit111.thread142:             ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

ZSTD_buildSeqTable.exit111:                       ; preds = %bb.aa
  %i.gd = load i32, ptr %i.a, align 4, !tbaa !43
  call void @ZSTD_buildFSETable(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.c, i32 noundef %i.gd, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, i32 noundef %i.gb, ptr noundef nonnull %i.ao, i64 poison, i32 noundef %.val102)
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i32, ptr %i.ak, align 4, !tbaa !62
  %.pre146 = load i32, ptr %i.am, align 4, !tbaa !48
  %.val101.pre = load i32, ptr %i.ap, align 4, !tbaa !44
  br label %bb.ab

bb.ab:                                            ; preds = %ZSTD_buildSeqTable.exit111, %ZSTD_buildSeqTable.exit111.thread
  %.val101 = phi i32 [ %.val102, %ZSTD_buildSeqTable.exit111.thread ], [ %.val101.pre, %ZSTD_buildSeqTable.exit111 ]
  %i.ge = phi i32 [ %i.eb, %ZSTD_buildSeqTable.exit111.thread ], [ %.pre146, %ZSTD_buildSeqTable.exit111 ]
  %i.gf = phi i32 [ %i.ea, %ZSTD_buildSeqTable.exit111.thread ], [ %.pre, %ZSTD_buildSeqTable.exit111 ]
  %.1.i105.ph.pn = phi i64 [ %.1.i105.ph, %ZSTD_buildSeqTable.exit111.thread ], [ %i.fz, %ZSTD_buildSeqTable.exit111 ]
  %.284134 = getelementptr inbounds nuw i8, ptr %.183119, i64 %.1.i105.ph.pn ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gi = ptrtoint ptr %.284134 to i64
  %i.gj = sub i64 %i.aj, %i.gi
  %i.gk = call fastcc i64 @ZSTD_buildSeqTable(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gh, i32 noundef %i.ah, i32 noundef 52, i32 noundef 9, ptr noundef nonnull %.284134, i64 noundef %i.gj, ptr noundef nonnull @ML_base, ptr noundef nonnull @ML_bits, ptr noundef nonnull @ML_defaultDTable, i32 noundef %i.gf, i32 noundef %i.ge, i32 noundef %.081115, ptr noundef nonnull %i.ao, i32 noundef %.val101) ; 2 uses
  %i.gl = icmp ult i64 %i.gk, -119
  br i1 %i.gl, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.gm = getelementptr inbounds nuw i8, ptr %.284134, i64 %i.gk
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %2 to i64
  %i.gp = sub i64 %i.gn, %i.go
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %ZSTD_buildSeqTable.exit111.thread142, %ZSTD_buildSeqTable.exit111.thread137, %ZSTD_buildSeqTable.exit.thread127, %ZSTD_buildSeqTable.exit.thread122, %bb.j, %bb.i, %bb.e, %bb.d, %bb.a, %bb.ab, %bb.ac
  %.490 = phi i64 [ -72, %bb.d ], [ -72, %bb.a ], [ -72, %bb.e ], [ -20, %ZSTD_buildSeqTable.exit111.thread137 ], [ %spec.select, %bb.h ], [ -72, %bb.i ], [ %i.gp, %bb.ac ], [ -20, %bb.ab ], [ -20, %bb.j ], [ -20, %ZSTD_buildSeqTable.exit.thread127 ], [ -20, %ZSTD_buildSeqTable.exit111.thread142 ], [ -20, %ZSTD_buildSeqTable.exit.thread122 ]
  ret i64 %.490
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -20, -71) i64 @ZSTD_buildSeqTable(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 4) %2, i32 noundef range(i32 31, 53) %3, i32 noundef range(i32 8, 10) %4, ptr noundef %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef range(i32 1, 98048) %12, ptr nofree noundef captures(none) %13, i32 noundef %14) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [53 x i16], align 16              ; 4 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !43
  switch i32 %2, label %default.unreachable48 [
    i32 1, label %bb.b
    i32 0, label %bb.e
    i32 3, label %bb.f
    i32 2, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %.not45 = icmp eq i64 %6, 0
  br i1 %.not45, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %5, align 1, !tbaa !28      ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = icmp samesign ult i32 %3, %i.e
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = zext i8 %i.d to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !64
  store i32 0, ptr %0, align 4, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 0, ptr %i.n, align 1, !tbaa !59
  store i16 0, ptr %i.l, align 4, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.k, ptr %i.o, align 2, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.i, ptr %i.p, align 4, !tbaa !53
  store ptr %0, ptr %1, align 8, !tbaa !66
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  store ptr %9, ptr %1, align 8, !tbaa !66
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %.not44 = icmp eq i32 %10, 0
  br i1 %.not44, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp ne i32 %11, 0
  %i.r = icmp samesign ugt i32 %12, 24
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %.new, label %.loopexit

.new:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %1, align 8, !tbaa !66     ; 9 uses
  %i.t = shl nuw nsw i32 8, %4
  %i.u = lshr exact i32 %i.t, 6
  %unroll_iter = zext nneg i32 %i.u to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.new
  %.046 = phi i64 [ 0, %.new ], [ %i.ak, %bb.h ]  ; 9 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.7, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.046
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 2, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.046
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.x, i32 0, i32 2, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %.046
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.z, i32 0, i32 2, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %.046
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ab, i32 0, i32 2, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %.046
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ad, i32 0, i32 2, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %.046
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.af, i32 0, i32 2, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 %.046
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ah, i32 0, i32 2, i32 1)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 %.046
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aj, i32 0, i32 2, i32 1)
  %i.ak = add nuw nsw i64 %.046, 512              ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.epil.preheader, label %bb.h, !llvm.loop !113

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.al = call i64 @FSE_readNCount(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5, i64 noundef %6) #17 ; 2 uses
  %i.am = icmp ult i64 %i.al, -119
  br i1 %i.am, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.b, align 4, !tbaa !43  ; 2 uses
  %i.ao = icmp ugt i32 %i.an, %4
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !43
  call void @ZSTD_buildFSETable(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.ap, ptr noundef %7, ptr noundef %8, i32 noundef %i.an, ptr noundef %13, i64 poison, i32 noundef %14)
  store ptr %0, ptr %1, align 8, !tbaa !66
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.k
  %.041 = phi i64 [ %i.al, %bb.k ], [ -20, %bb.i ], [ -20, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.loopexit

default.unreachable48:                            ; preds = %bb.a
  unreachable

.epil.preheader:                                  ; preds = %bb.h, %.epil.preheader
  %.046.epil = phi i64 [ %i.ar, %.epil.preheader ], [ %i.ak, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 %.046.epil
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 2, i32 1)
  %i.ar = add nuw nsw i64 %.046.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.epil.preheader, !llvm.loop !114

.loopexit:                                        ; preds = %.epil.preheader, %bb.g, %bb.f, %bb.c, %bb.b, %bb.l, %bb.e, %bb.d
  %.1 = phi i64 [ %.041, %bb.l ], [ -72, %bb.b ], [ 1, %bb.d ], [ -20, %bb.c ], [ 0, %bb.e ], [ -20, %bb.f ], [ 0, %bb.g ], [ 0, %.epil.preheader ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 30176 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %ZSTD_blockSizeMax.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %i.e = load i32, ptr %i.d, align 8, !tbaa !42
  %i.f = zext i32 %i.e to i64
  br label %ZSTD_blockSizeMax.exit

ZSTD_blockSizeMax.exit:                           ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ 131072, %bb.a ]
  %i.h = icmp ugt i64 %4, %i.g
  br i1 %i.h, label %bb.o, label %bb.c

bb.c:                                             ; preds = %ZSTD_blockSizeMax.exit
  %i.i = tail call fastcc i64 @ZSTD_decodeLiteralsBlock(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4, ptr noundef %1, i64 noundef %2, i32 noundef %5) ; 4 uses
  %i.j = icmp ult i64 %i.i, -119
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.i ; 2 uses
  %i.l = sub nsw i64 %4, %i.i                     ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.b, align 8, !tbaa !41
  %.not.i84 = icmp eq i32 %i.m, 0
  br i1 %.not.i84, label %ZSTD_blockSizeMax.exit85, label %ZSTD_blockSizeMax.exit85.thread

ZSTD_blockSizeMax.exit85:                         ; preds = %bb.d
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 131072)
  br label %ZSTD_blockSizeMax.exit87

ZSTD_blockSizeMax.exit85.thread:                  ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42
  %i.p = zext i32 %i.o to i64
  %spec.select96 = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.p)
  br label %ZSTD_blockSizeMax.exit87

ZSTD_blockSizeMax.exit87:                         ; preds = %ZSTD_blockSizeMax.exit85.thread, %ZSTD_blockSizeMax.exit85
  %i.q = phi i64 [ %spec.select96, %ZSTD_blockSizeMax.exit85.thread ], [ %spec.select, %ZSTD_blockSizeMax.exit85 ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 30204 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !48   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.z = call i64 @ZSTD_decodeSeqHeaders(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %i.k, i64 noundef %i.l) ; 4 uses
  %i.aa = icmp ult i64 %i.z, -119
  br i1 %i.aa, label %bb.e, label %bb.n

bb.e:                                             ; preds = %ZSTD_blockSizeMax.exit87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.z ; 3 uses
  %i.ac = sub i64 %i.l, %i.z                      ; 3 uses
  %i.ad = icmp eq ptr %1, null
  %i.ae = icmp eq i64 %2, 0
  %or.cond = or i1 %i.ad, %i.ae
  %i.af = load i32, ptr %i.a, align 4             ; 5 uses
  %i.ag = icmp sgt i32 %i.af, 0
  %or.cond3 = select i1 %or.cond, i1 %i.ag, i1 false
  %i.ah = icmp ugt ptr %1, inttoptr (i64 -1048577 to ptr)
  %or.cond89 = or i1 %i.ah, %or.cond3
  br i1 %or.cond89, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i32 %i.y, 0
  %i.aj = icmp ugt i64 %i.w, 16777216
  %or.cond5 = select i1 %i.ai, i1 %i.aj, i1 false
  %i.ak = icmp sgt i32 %i.af, 8
  %or.cond7 = select i1 %or.cond5, i1 %i.ak, i1 false
  br i1 %or.cond7, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !69 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !64 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.024.i = phi i32 [ 0, %bb.g ], [ %i.av, %bb.h ] ; 2 uses
  %.sroa.0.023.i = phi i32 [ 0, %bb.g ], [ %.sroa.0.1.i, %bb.h ]
  %i.ap = zext i32 %.024.i to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !61
  %i.at = icmp ugt i8 %i.as, 22
  %i.au = zext i1 %i.at to i32
  %.sroa.0.1.i = add i32 %.sroa.0.023.i, %i.au    ; 2 uses
  %i.av = add i32 %.024.i, 1                      ; 2 uses
  %.0.highbits.i = lshr i32 %i.av, %i.ao
  %i.aw = icmp eq i32 %.0.highbits.i, 0
  br i1 %i.aw, label %bb.h, label %ZSTD_getOffsetInfo.exit, !llvm.loop !115

ZSTD_getOffsetInfo.exit:                          ; preds = %bb.h
  %i.ax = sub i32 8, %i.ao
  %i.ay = shl i32 %.sroa.0.1.i, %i.ax
  %i.az = icmp ugt i32 %i.ay, 6
  %i.ba = zext i1 %i.az to i32
  br label %bb.i

bb.i:                                             ; preds = %ZSTD_getOffsetInfo.exit, %bb.f
  %.173 = phi i32 [ %i.y, %bb.f ], [ %i.ba, %ZSTD_getOffsetInfo.exit ]
  store i32 0, ptr %i.x, align 4, !tbaa !48
  %.not83 = icmp eq i32 %.173, 0
  br i1 %.not83, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = tail call fastcc i64 @ZSTD_decompressSequencesLong(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %i.ab, i64 noundef %i.ac, i32 noundef %i.af)
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !47
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = tail call fastcc i64 @ZSTD_decompressSequencesSplitLitBuffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %i.ab, i64 noundef %i.ac, i32 noundef %i.af)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bg = tail call fastcc i64 @ZSTD_decompressSequences(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %i.ab, i64 noundef %i.ac, i32 noundef %i.af)
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %ZSTD_blockSizeMax.exit87, %bb.m, %bb.l, %bb.j
  %.1 = phi i64 [ %i.bg, %bb.m ], [ %i.z, %ZSTD_blockSizeMax.exit87 ], [ -70, %bb.e ], [ %i.bb, %bb.j ], [ %i.bf, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.o

bb.o:                                             ; preds = %ZSTD_blockSizeMax.exit, %bb.c, %bb.n
  %.2 = phi i64 [ %i.i, %bb.c ], [ %.1, %bb.n ], [ -72, %ZSTD_blockSizeMax.exit ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_decompressSequencesLong(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 22 uses
  %6 = alloca [8 x %struct.seq_t], align 16       ; 8 uses
  %7 = alloca %struct.seqState_t, align 8         ; 35 uses
  %i.b = getelementptr i8, ptr %0, i64 30180
  %.val = load i32, ptr %i.b, align 4, !tbaa !44
  %.not = icmp eq i32 %.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @ZSTD_decompressSequencesLong_bmi2(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  br label %bb.hv

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30368 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.idx.i.i = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30360 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70   ; 16 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68   ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71   ; 15 uses
  %.not.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i, label %bb.hm, label %bb.g

end_hunk_1
begin_hunk_2_@ZSTD_decompressSequencesSplitLitBuffer:bb.a
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.be:                                            ; preds = %.critedge.i198.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %.0134.i289.i, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %i.oa, i64 16 ; 2 uses
  %i.oq = add i64 %.sroa.079.0.i, -16
  %.val17.i = load <2 x i64>, ptr %i.op, align 1, !tbaa !28
  store <2 x i64> %.val17.i, ptr %i.oo, align 1, !tbaa !28
  %i.or = icmp slt i64 %i.oq, 17
  br i1 %i.or, label %ZSTD_wildcopy.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.os = getelementptr inbounds nuw i8, ptr %.0134.i289.i, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.pn.i.i.i = phi ptr [ %i.op, %bb.bf ], [ %i.ou, %bb.bg ] ; 2 uses
  %.1.i.i.i = phi ptr [ %i.os, %bb.bf ], [ %i.ov, %bb.bg ] ; 3 uses
  %.130.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.130.i.i.val.i = load <2 x i64>, ptr %.130.i.i.i, align 1, !tbaa !28
  store <2 x i64> %.130.i.i.val.i, ptr %.1.i.i.i, align 1, !tbaa !28
  %i.ot = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.ou = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val16.i = load <2 x i64>, ptr %i.ou, align 1, !tbaa !28
  store <2 x i64> %.val16.i, ptr %i.ot, align 1, !tbaa !28
  %i.ov = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 32 ; 2 uses
  %i.ow = icmp ult ptr %i.ov, %i.of
  br i1 %i.ow, label %bb.bg, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !8

ZSTD_wildcopy.exit.i.i:                           ; preds = %bb.bg, %bb.be, %.critedge.i198.i.i
  store ptr %i.nz, ptr %i.a, align 8, !tbaa !49
  %i.ox = ptrtoint ptr %i.of to i64               ; 2 uses
  %i.oy = sub i64 %i.ox, %i.gu
  %i.oz = icmp ugt i64 %.sink.i, %i.oy
  br i1 %i.oz, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.pa = sub i64 %i.ox, %i.gv
  %i.pb = icmp ugt i64 %.sink.i, %i.pa
  br i1 %i.pb, label %ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i, label %bb.bi, !prof !58

ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i:  ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread238.i

bb.bi:                                            ; preds = %bb.bh
  %i.pc = ptrtoint ptr %i.oi to i64
  %i.pd = sub i64 %i.pc, %i.gu                    ; 3 uses
  %i.pe = getelementptr inbounds i8, ptr %i.n, i64 %i.pd ; 2 uses
  %i.pf = add nsw i64 %i.pd, %.sroa.680.0.i       ; 3 uses
  %.not.i200.i.i = icmp sgt i64 %i.pf, 0
  br i1 %.not.i200.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.of, ptr align 1 %i.pe, i64 %.sroa.680.0.i, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i201.i.i = sub nsw i64 0, %i.pd        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.of, ptr align 1 %i.pe, i64 %gepdiff.i201.i.i, i1 false)
  %i.pg = getelementptr inbounds nuw i8, ptr %i.of, i64 %gepdiff.i201.i.i
  store i64 %i.pf, ptr %.sroa.985.0..sroa_idx.i, align 8, !tbaa !89
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %ZSTD_wildcopy.exit.i.i
  %.0178.i = phi ptr [ %i.pg, %bb.bk ], [ %i.of, %ZSTD_wildcopy.exit.i.i ] ; 12 uses
  %.0176.i = phi ptr [ %i.j, %bb.bk ], [ %i.oi, %ZSTD_wildcopy.exit.i.i ] ; 9 uses
  %i.ph = phi i64 [ %i.pf, %bb.bk ], [ %.sroa.680.0.i, %ZSTD_wildcopy.exit.i.i ] ; 5 uses
  %i.pi = icmp ugt i64 %.sink.i, 15
  br i1 %i.pi, label %bb.bm, label %bb.bp, !prof !83

bb.bm:                                            ; preds = %bb.bl
  %i.pj = getelementptr inbounds i8, ptr %.0178.i, i64 %i.ph
  %.val19.i = load <2 x i64>, ptr %.0176.i, align 1, !tbaa !28
  store <2 x i64> %.val19.i, ptr %.0178.i, align 1, !tbaa !28
  %i.pk = icmp slt i64 %i.ph, 17
  br i1 %i.pk, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pl = getelementptr inbounds nuw i8, ptr %.0178.i, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.pn.i233.i.i = phi ptr [ %.0176.i, %bb.bn ], [ %i.pn, %bb.bo ] ; 2 uses
  %.1.i234.i.i = phi ptr [ %i.pl, %bb.bn ], [ %i.po, %bb.bo ] ; 3 uses
  %.130.i235.i.i = getelementptr inbounds nuw i8, ptr %.pn.i233.i.i, i64 16
  %.130.i235.i.val.i = load <2 x i64>, ptr %.130.i235.i.i, align 1, !tbaa !28
  store <2 x i64> %.130.i235.i.val.i, ptr %.1.i234.i.i, align 1, !tbaa !28
  %i.pm = getelementptr inbounds nuw i8, ptr %.1.i234.i.i, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %.pn.i233.i.i, i64 32 ; 2 uses
  %.val18.i = load <2 x i64>, ptr %i.pn, align 1, !tbaa !28
  store <2 x i64> %.val18.i, ptr %i.pm, align 1, !tbaa !28
  %i.po = getelementptr inbounds nuw i8, ptr %.1.i234.i.i, i64 32 ; 2 uses
  %i.pp = icmp ult ptr %i.po, %i.pj
  br i1 %i.pp, label %bb.bo, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !8

bb.bp:                                            ; preds = %bb.bl
  %i.pq = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.pq, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink.i
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !43
  %i.pt = load i8, ptr %.0176.i, align 1, !tbaa !28
  store i8 %i.pt, ptr %.0178.i, align 1, !tbaa !28
  %i.pu = getelementptr inbounds nuw i8, ptr %.0176.i, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !28
  %i.pw = getelementptr inbounds nuw i8, ptr %.0178.i, i64 1
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !28
  %i.px = getelementptr inbounds nuw i8, ptr %.0176.i, i64 2
  %i.py = load i8, ptr %i.px, align 1, !tbaa !28
  %i.pz = getelementptr inbounds nuw i8, ptr %.0178.i, i64 2
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !28
  %i.qa = getelementptr inbounds nuw i8, ptr %.0176.i, i64 3
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !28
  %i.qc = getelementptr inbounds nuw i8, ptr %.0178.i, i64 3
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !28
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink.i
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !43
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %.0176.i, i64 %i.qf ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.0178.i, i64 4
  %.val31.i = load i32, ptr %i.qg, align 1
  store i32 %.val31.i, ptr %i.qh, align 1
  %i.qi = sext i32 %i.ps to i64
  %i.qj = sub nsw i64 0, %i.qi
  %i.qk = getelementptr inbounds i8, ptr %i.qg, i64 %i.qj
  br label %ZSTD_overlapCopy8.exit.i.i

bb.br:                                            ; preds = %bb.bp
  %.val35.i = load i64, ptr %.0176.i, align 1
  store i64 %.val35.i, ptr %.0178.i, align 1
  br label %ZSTD_overlapCopy8.exit.i.i

ZSTD_overlapCopy8.exit.i.i:                       ; preds = %bb.br, %bb.bq
  %.1177.i = phi ptr [ %i.qk, %bb.bq ], [ %.0176.i, %bb.br ]
  %i.ql = getelementptr inbounds nuw i8, ptr %.1177.i, i64 8 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.0178.i, i64 8 ; 3 uses
  %i.qn = icmp ugt i64 %i.ph, 8
  br i1 %i.qn, label %bb.bs, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.bs:                                            ; preds = %ZSTD_overlapCopy8.exit.i.i
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.ql to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = getelementptr i8, ptr %.0178.i, i64 %i.ph ; 2 uses
  %i.qs = icmp slt i64 %i.qq, 16
  br i1 %i.qs, label %.preheader268.i, label %bb.bt

.preheader268.i:                                  ; preds = %bb.bs, %.preheader268.i
  %.029.i.i.i = phi ptr [ %i.qu, %.preheader268.i ], [ %i.ql, %bb.bs ] ; 2 uses
  %.0.i242.i.i = phi ptr [ %i.qt, %.preheader268.i ], [ %i.qm, %bb.bs ] ; 2 uses
  %.029.i.i.val.i = load i64, ptr %.029.i.i.i, align 1
  store i64 %.029.i.i.val.i, ptr %.0.i242.i.i, align 1
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.i242.i.i, i64 8 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8
  %i.qv = icmp ult ptr %i.qt, %i.qr
  br i1 %i.qv, label %.preheader268.i, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !9

bb.bt:                                            ; preds = %bb.bs
  %.val21.i = load <2 x i64>, ptr %i.ql, align 1, !tbaa !28
  store <2 x i64> %.val21.i, ptr %i.qm, align 1, !tbaa !28
  %i.qw = icmp slt i64 %i.ph, 25
  br i1 %i.qw, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qx = getelementptr inbounds nuw i8, ptr %.0178.i, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.pn.i239.i.i = phi ptr [ %i.ql, %bb.bu ], [ %i.qz, %bb.bv ] ; 2 uses
  %.1.i240.i.i = phi ptr [ %i.qx, %bb.bu ], [ %i.ra, %bb.bv ] ; 3 uses
  %.130.i241.i.i = getelementptr inbounds nuw i8, ptr %.pn.i239.i.i, i64 16
  %.130.i241.i.val.i = load <2 x i64>, ptr %.130.i241.i.i, align 1, !tbaa !28
  store <2 x i64> %.130.i241.i.val.i, ptr %.1.i240.i.i, align 1, !tbaa !28
  %i.qy = getelementptr inbounds nuw i8, ptr %.1.i240.i.i, i64 16
  %i.qz = getelementptr inbounds nuw i8, ptr %.pn.i239.i.i, i64 32 ; 2 uses
  %.val20.i = load <2 x i64>, ptr %i.qz, align 1, !tbaa !28
  store <2 x i64> %.val20.i, ptr %i.qy, align 1, !tbaa !28
  %i.ra = getelementptr inbounds nuw i8, ptr %.1.i240.i.i, i64 32 ; 2 uses
  %i.rb = icmp ult ptr %i.ra, %i.qr
  br i1 %i.rb, label %bb.bv, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !8

ZSTD_execSequenceSplitLitBuffer.exit.i.i:         ; preds = %bb.bv, %.preheader268.i, %bb.bo, %bb.bt, %ZSTD_overlapCopy8.exit.i.i, %bb.bm, %bb.bj, %bb.bd
  %.0.i199.i.i = phi i64 [ %i.on, %bb.bd ], [ %i.og, %.preheader268.i ], [ %i.og, %bb.bj ], [ %i.og, %ZSTD_overlapCopy8.exit.i.i ], [ %i.og, %bb.bm ], [ %i.og, %bb.bt ], [ %i.og, %bb.bo ], [ %i.og, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rc = icmp ult i64 %.0.i199.i.i, -119
  br i1 %i.rc, label %bb.bw, label %.thread238.i

bb.bw:                                            ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %.0134.i289.i, i64 %.0.i199.i.i ; 2 uses
  %i.re = add nsw i32 %.0157.i288.i, -1           ; 2 uses
  %.not169.i.i = icmp eq i32 %i.re, 0
  br i1 %.not169.i.i, label %.thread234.i, label %bb.ae, !llvm.loop !12

bb.bx:                                            ; preds = %ZSTD_decodeSequence.exit189.i.i
  %i.rf = icmp sgt i32 %.0157.i288.i, 0
  br i1 %i.rf, label %.thread390.i, label %.thread238.i

.thread390.i:                                     ; preds = %ZSTD_decodeSequence.exit189.i.thread.i, %bb.bx
  %i.rg = phi ptr [ %i.nl, %bb.bx ], [ %i.la, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 2 uses
  %i.rh = phi i32 [ %i.nm, %bb.bx ], [ %i.lm, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 2 uses
  %i.ri = phi i64 [ %i.nn, %bb.bx ], [ %i.lc, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.rj = phi i64 [ %i.mg, %bb.bx ], [ %i.hd, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.rk = phi i64 [ %i.mq, %bb.bx ], [ %i.he, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.rl = phi i64 [ %i.lw, %bb.bx ], [ %i.hf, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.rm = phi ptr [ %i.no, %bb.bx ], [ %i.ns, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 11 uses
  %i.rn = phi ptr [ %i.nq, %bb.bx ], [ %i.nu, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 2 uses
  %i.ro = ptrtoint ptr %i.rn to i64               ; 2 uses
  %i.rp = ptrtoint ptr %i.rm to i64               ; 3 uses
  %i.rq = sub i64 %i.ro, %i.rp                    ; 9 uses
  %.not171.i.i = icmp eq ptr %i.rn, %i.rm
  br i1 %.not171.i.i, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %.thread390.i
  %i.rr = ptrtoint ptr %i.d to i64
  %i.rs = ptrtoint ptr %.0134.i289.i to i64       ; 6 uses
  %i.rt = sub i64 %i.rr, %i.rs
  %i.ru = icmp ugt i64 %i.rq, %i.rt
  br i1 %i.ru, label %.thread238.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.rv = sub i64 %i.rs, %i.rp                    ; 3 uses
  %i.rw = getelementptr inbounds i8, ptr %.0134.i289.i, i64 %i.rq ; 3 uses
  %i.rx = icmp slt i64 %i.rq, 8
  %i.ry = icmp sgt i64 %i.rv, -8
  %or.cond.i.i = or i1 %i.ry, %i.rx
  br i1 %or.cond.i.i, label %.preheader.i.i, label %bb.ca

.preheader.i.i:                                   ; preds = %bb.bz
  %i.rz = icmp sgt i64 %i.rq, 0
  br i1 %i.rz, label %iter.check137, label %ZSTD_safecopyDstBeforeSrc.exit.i

iter.check137:                                    ; preds = %.preheader.i.i
  %i.sa = add i64 %i.rs, %i.ro
  %i.sb = sub i64 %i.sa, %i.rp
  %i.sc = add i64 %i.rs, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.sb, i64 %i.sc)
  %i.sd = sub i64 %umax, %i.rs                    ; 7 uses
  %min.iters.check121 = icmp ult i64 %i.sd, 8
  %i.se = add i64 %i.rv, -1
  %diff.check123 = icmp ult i64 %i.se, 31
  %or.cond = or i1 %min.iters.check121, %diff.check123
  br i1 %or.cond, label %.lr.ph41.i.i.preheader, label %vector.main.loop.iter.check124

vector.main.loop.iter.check124:                   ; preds = %iter.check137
  %min.iters.check125 = icmp ult i64 %i.sd, 32
  br i1 %min.iters.check125, label %vec.epilog.ph141, label %vector.ph126

vector.ph126:                                     ; preds = %vector.main.loop.iter.check124
  %i.sf = and i64 %i.sd, 24
  %n.vec127 = and i64 %i.sd, -32                  ; 5 uses
  %i.sg = getelementptr i8, ptr %.0134.i289.i, i64 %n.vec127
  %i.sh = getelementptr i8, ptr %i.rm, i64 %n.vec127
  br label %vector.body128

vector.body128:                                   ; preds = %vector.ph126, %vector.body128
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next134, %vector.body128 ] ; 3 uses
  %next.gep130 = getelementptr i8, ptr %.0134.i289.i, i64 %index129 ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.rm, i64 %index129 ; 2 uses
  %i.si = getelementptr i8, ptr %next.gep131, i64 16
  %wide.load132 = load <16 x i8>, ptr %next.gep131, align 1, !tbaa !28
  %wide.load133 = load <16 x i8>, ptr %i.si, align 1, !tbaa !28
  %i.sj = getelementptr i8, ptr %next.gep130, i64 16
  store <16 x i8> %wide.load132, ptr %next.gep130, align 1, !tbaa !28
  store <16 x i8> %wide.load133, ptr %i.sj, align 1, !tbaa !28
  %index.next134 = add nuw i64 %index129, 32      ; 2 uses
  %i.sk = icmp eq i64 %index.next134, %n.vec127
  br i1 %i.sk, label %middle.block135, label %vector.body128, !llvm.loop !136

middle.block135:                                  ; preds = %vector.body128
  %cmp.n136 = icmp eq i64 %i.sd, %n.vec127
  br i1 %cmp.n136, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %vec.epilog.iter.check138

vec.epilog.iter.check138:                         ; preds = %middle.block135
  %min.epilog.iters.check140 = icmp eq i64 %i.sf, 0
  br i1 %min.epilog.iters.check140, label %.lr.ph41.i.i.preheader, label %vec.epilog.ph141, !prof !86

vec.epilog.ph141:                                 ; preds = %vector.main.loop.iter.check124, %vec.epilog.iter.check138
  %vec.epilog.resume.val142 = phi i64 [ %n.vec127, %vec.epilog.iter.check138 ], [ 0, %vector.main.loop.iter.check124 ]
  %n.vec143 = and i64 %i.sd, -8                   ; 4 uses
  %i.sl = getelementptr i8, ptr %.0134.i289.i, i64 %n.vec143
  %i.sm = getelementptr i8, ptr %i.rm, i64 %n.vec143
  br label %vec.epilog.vector.body144

vec.epilog.vector.body144:                        ; preds = %vec.epilog.vector.body144, %vec.epilog.ph141
  %index145 = phi i64 [ %vec.epilog.resume.val142, %vec.epilog.ph141 ], [ %index.next149, %vec.epilog.vector.body144 ] ; 3 uses
  %next.gep146 = getelementptr i8, ptr %.0134.i289.i, i64 %index145
  %next.gep147 = getelementptr i8, ptr %i.rm, i64 %index145
  %wide.load148 = load <8 x i8>, ptr %next.gep147, align 1, !tbaa !28
  store <8 x i8> %wide.load148, ptr %next.gep146, align 1, !tbaa !28
  %index.next149 = add nuw i64 %index145, 8       ; 2 uses
  %i.sn = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.sn, label %vec.epilog.middle.block150, label %vec.epilog.vector.body144, !llvm.loop !137

vec.epilog.middle.block150:                       ; preds = %vec.epilog.vector.body144
  %cmp.n151 = icmp eq i64 %i.sd, %n.vec143
  br i1 %cmp.n151, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph41.i.i.preheader

.lr.ph41.i.i.preheader:                           ; preds = %iter.check137, %vec.epilog.iter.check138, %vec.epilog.middle.block150
  %.040.i.i.ph = phi ptr [ %.0134.i289.i, %iter.check137 ], [ %i.sg, %vec.epilog.iter.check138 ], [ %i.sl, %vec.epilog.middle.block150 ]
  %.02939.i.i.ph = phi ptr [ %i.rm, %iter.check137 ], [ %i.sh, %vec.epilog.iter.check138 ], [ %i.sm, %vec.epilog.middle.block150 ]
  br label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.lr.ph41.i.i.preheader, %.lr.ph41.i.i
  %.040.i.i = phi ptr [ %i.sq, %.lr.ph41.i.i ], [ %.040.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %.02939.i.i = phi ptr [ %i.so, %.lr.ph41.i.i ], [ %.02939.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.02939.i.i, i64 1
  %i.sp = load i8, ptr %.02939.i.i, align 1, !tbaa !28
  %i.sq = getelementptr inbounds nuw i8, ptr %.040.i.i, i64 1 ; 2 uses
  store i8 %i.sp, ptr %.040.i.i, align 1, !tbaa !28
  %i.sr = icmp ult ptr %i.sq, %i.rw
  br i1 %i.sr, label %.lr.ph41.i.i, label %ZSTD_safecopyDstBeforeSrc.exit.i, !llvm.loop !138

bb.ca:                                            ; preds = %bb.bz
  %i.ss = icmp samesign ugt i64 %i.rq, 31
  %i.st = icmp samesign ult i64 %i.rv, -16
  %or.cond3.i.i = and i1 %i.st, %i.ss
  br i1 %or.cond3.i.i, label %bb.cb, label %iter.check

bb.cb:                                            ; preds = %bb.ca
  %i.su = getelementptr inbounds i8, ptr %i.rw, i64 -32
  %i.sv = add nsw i64 %i.rq, -32                  ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.0134.i289.i, i64 %i.sv
  %.val35.i.i = load <2 x i64>, ptr %i.rm, align 1, !tbaa !28
  store <2 x i64> %.val35.i.i, ptr %.0134.i289.i, align 1, !tbaa !28
  %i.sx = icmp samesign ult i64 %i.rq, 49
  br i1 %i.sx, label %.thread.i68.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sy = getelementptr inbounds nuw i8, ptr %.0134.i289.i, i64 16
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %bb.cc
  %.pn.i.i64.i = phi ptr [ %i.rm, %bb.cc ], [ %i.ta, %bb.cd ] ; 2 uses
  %.1.i.i65.i = phi ptr [ %i.sy, %bb.cc ], [ %i.tb, %bb.cd ] ; 3 uses
  %.130.i.i66.i = getelementptr inbounds nuw i8, ptr %.pn.i.i64.i, i64 16
  %.130.i.val.i.i = load <2 x i64>, ptr %.130.i.i66.i, align 1, !tbaa !28
  store <2 x i64> %.130.i.val.i.i, ptr %.1.i.i65.i, align 1, !tbaa !28
  %i.sz = getelementptr inbounds nuw i8, ptr %.1.i.i65.i, i64 16
  %i.ta = getelementptr inbounds nuw i8, ptr %.pn.i.i64.i, i64 32 ; 2 uses
  %.val.i67.i = load <2 x i64>, ptr %i.ta, align 1, !tbaa !28
  store <2 x i64> %.val.i67.i, ptr %i.sz, align 1, !tbaa !28
  %i.tb = getelementptr inbounds nuw i8, ptr %.1.i.i65.i, i64 32 ; 2 uses
  %i.tc = icmp ult ptr %i.tb, %i.sw
  br i1 %i.tc, label %bb.cd, label %.thread.i68.i, !llvm.loop !8

.thread.i68.i:                                    ; preds = %bb.cd, %bb.cb
  %i.td = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.sv
  br label %iter.check

iter.check:                                       ; preds = %.thread.i68.i, %bb.ca
  %.148.i.i = phi ptr [ %i.su, %.thread.i68.i ], [ %.0134.i289.i, %bb.ca ] ; 7 uses
  %.13047.i.i = phi ptr [ %i.td, %.thread.i68.i ], [ %i.rm, %bb.ca ] ; 6 uses
  %.143.i.i = ptrtoaddr ptr %.148.i.i to i64      ; 2 uses
  %i.te = add i64 %i.rq, %i.rs
  %i.tf = sub i64 %i.te, %.143.i.i                ; 8 uses
  %scevgep.i.i = getelementptr i8, ptr %.148.i.i, i64 %i.tf
  %min.iters.check = icmp ult i64 %i.tf, 8
  %.13047.i.i107 = ptrtoaddr ptr %.13047.i.i to i64
  %i.tg = sub i64 %.13047.i.i107, %.143.i.i
  %diff.check = icmp ugt i64 %i.tg, -32
  %or.cond154 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond154, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp ult i64 %i.tf, 32
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.th = and i64 %i.tf, 24
  %n.vec = and i64 %i.tf, -32                     ; 5 uses
  %i.ti = getelementptr i8, ptr %.148.i.i, i64 %n.vec
  %i.tj = getelementptr i8, ptr %.13047.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.148.i.i, i64 %index ; 2 uses
  %next.gep109 = getelementptr i8, ptr %.13047.i.i, i64 %index ; 2 uses
  %i.tk = getelementptr i8, ptr %next.gep109, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep109, align 1, !tbaa !28
  %wide.load110 = load <16 x i8>, ptr %i.tk, align 1, !tbaa !28
  %i.tl = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !28
  store <16 x i8> %wide.load110, ptr %i.tl, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.tm = icmp eq i64 %index.next, %n.vec
  br i1 %i.tm, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tf, %n.vec
  br i1 %cmp.n, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.th, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_2
begin_hunk_3_@ZSTD_decompressSequencesSplitLitBuffer:bb.a
  %i.ue = getelementptr inbounds nuw i8, ptr %.2136.i.i, i64 %i.ty
  %i.uf = icmp ugt ptr %i.ue, %i.ud
  %or.cond.i191.i.i = select i1 %i.uc, i1 true, i1 %i.uf, !prof !87
  br i1 %or.cond.i191.i.i, label %bb.cf, label %.critedge.i192.i.i, !prof !87

.critedge.i192.i.i:                               ; preds = %bb.ce
  %.val15.i = load <2 x i64>, ptr %i.tu, align 4, !tbaa !28
  store <2 x i64> %.val15.i, ptr %.2136.i.i, align 1, !tbaa !28
  %i.ug = icmp samesign ugt i64 %.sroa.082.2.i, 16
  br i1 %i.ug, label %bb.cg, label %ZSTD_wildcopy.exit250.i.i, !prof !58

bb.cf:                                            ; preds = %bb.ce
  %i.uh = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.2136.i.i, ptr noundef %i.d, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.tv, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %.loopexit.i

bb.cg:                                            ; preds = %.critedge.i192.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %.2136.i.i, i64 16
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.val10.i = load <2 x i64>, ptr %i.uj, align 4, !tbaa !28
  store <2 x i64> %.val10.i, ptr %i.ui, align 1, !tbaa !28
  %i.uk = icmp samesign ult i64 %.sroa.082.2.i, 33
  br i1 %i.uk, label %ZSTD_wildcopy.exit250.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ul = getelementptr inbounds nuw i8, ptr %.2136.i.i, i64 32
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.pn.i245.i.i = phi ptr [ %i.uj, %bb.ch ], [ %i.un, %bb.ci ] ; 2 uses
  %.1.i246.i.i = phi ptr [ %i.ul, %bb.ch ], [ %i.uo, %bb.ci ] ; 3 uses
  %.130.i247.i.i = getelementptr inbounds nuw i8, ptr %.pn.i245.i.i, i64 16
  %.130.i247.i.val.i = load <2 x i64>, ptr %.130.i247.i.i, align 1, !tbaa !28
  store <2 x i64> %.130.i247.i.val.i, ptr %.1.i246.i.i, align 1, !tbaa !28
  %i.um = getelementptr inbounds nuw i8, ptr %.1.i246.i.i, i64 16
  %i.un = getelementptr inbounds nuw i8, ptr %.pn.i245.i.i, i64 32 ; 2 uses
  %.val9.i = load <2 x i64>, ptr %i.un, align 1, !tbaa !28
  store <2 x i64> %.val9.i, ptr %i.um, align 1, !tbaa !28
  %i.uo = getelementptr inbounds nuw i8, ptr %.1.i246.i.i, i64 32 ; 2 uses
  %i.up = icmp ult ptr %i.uo, %i.tx
  br i1 %i.up, label %bb.ci, label %ZSTD_wildcopy.exit250.i.i, !llvm.loop !8

ZSTD_wildcopy.exit250.i.i:                        ; preds = %bb.ci, %bb.cg, %.critedge.i192.i.i
  store ptr %i.tz, ptr %i.a, align 8, !tbaa !49
  %i.uq = ptrtoint ptr %i.tx to i64               ; 2 uses
  %i.ur = sub i64 %i.uq, %i.gu
  %i.us = icmp ugt i64 %.sink.i, %i.ur
  br i1 %i.us, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %ZSTD_wildcopy.exit250.i.i
  %i.ut = sub i64 %i.uq, %i.gv
  %i.uu = icmp ugt i64 %.sink.i, %i.ut
  br i1 %i.uu, label %.loopexit.thread.i, label %bb.ck, !prof !58

.loopexit.thread.i:                               ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread238.i

bb.ck:                                            ; preds = %bb.cj
  %i.uv = ptrtoint ptr %i.ub to i64
  %i.uw = sub i64 %i.uv, %i.gu                    ; 3 uses
  %i.ux = getelementptr inbounds i8, ptr %i.n, i64 %i.uw ; 2 uses
  %i.uy = add nsw i64 %i.uw, %.sroa.680.0.i       ; 3 uses
  %.not.i194.i.i = icmp sgt i64 %i.uy, 0
  br i1 %.not.i194.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tx, ptr align 1 %i.ux, i64 %.sroa.680.0.i, i1 false)
  br label %.loopexit.i

bb.cm:                                            ; preds = %bb.ck
  %gepdiff.i195.i.i = sub nsw i64 0, %i.uw        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tx, ptr align 1 %i.ux, i64 %gepdiff.i195.i.i, i1 false)
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tx, i64 %gepdiff.i195.i.i
  store i64 %i.uy, ptr %.sroa.985.0..sroa_idx86.i, align 8, !tbaa !89
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %ZSTD_wildcopy.exit250.i.i
  %.0175.i = phi ptr [ %i.uz, %bb.cm ], [ %i.tx, %ZSTD_wildcopy.exit250.i.i ] ; 12 uses
  %.0173.i = phi ptr [ %i.j, %bb.cm ], [ %i.ub, %ZSTD_wildcopy.exit250.i.i ] ; 9 uses
  %i.va = phi i64 [ %i.uy, %bb.cm ], [ %.sroa.680.0.i, %ZSTD_wildcopy.exit250.i.i ] ; 5 uses
  %i.vb = icmp ugt i64 %.sink.i, 15
  br i1 %i.vb, label %bb.co, label %bb.cr, !prof !83

bb.co:                                            ; preds = %bb.cn
  %i.vc = getelementptr inbounds i8, ptr %.0175.i, i64 %i.va
  %.val12.i = load <2 x i64>, ptr %.0173.i, align 1, !tbaa !28
  store <2 x i64> %.val12.i, ptr %.0175.i, align 1, !tbaa !28
  %i.vd = icmp slt i64 %i.va, 17
  br i1 %i.vd, label %.loopexit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ve = getelementptr inbounds nuw i8, ptr %.0175.i, i64 16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %bb.cp
  %.pn.i252.i.i = phi ptr [ %.0173.i, %bb.cp ], [ %i.vg, %bb.cq ] ; 2 uses
  %.1.i253.i.i = phi ptr [ %i.ve, %bb.cp ], [ %i.vh, %bb.cq ] ; 3 uses
  %.130.i254.i.i = getelementptr inbounds nuw i8, ptr %.pn.i252.i.i, i64 16
  %.130.i254.i.val.i = load <2 x i64>, ptr %.130.i254.i.i, align 1, !tbaa !28
  store <2 x i64> %.130.i254.i.val.i, ptr %.1.i253.i.i, align 1, !tbaa !28
  %i.vf = getelementptr inbounds nuw i8, ptr %.1.i253.i.i, i64 16
  %i.vg = getelementptr inbounds nuw i8, ptr %.pn.i252.i.i, i64 32 ; 2 uses
  %.val11.i = load <2 x i64>, ptr %i.vg, align 1, !tbaa !28
  store <2 x i64> %.val11.i, ptr %i.vf, align 1, !tbaa !28
  %i.vh = getelementptr inbounds nuw i8, ptr %.1.i253.i.i, i64 32 ; 2 uses
  %i.vi = icmp ult ptr %i.vh, %i.vc
  br i1 %i.vi, label %bb.cq, label %.loopexit.i, !llvm.loop !8

bb.cr:                                            ; preds = %bb.cn
  %i.vj = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.vj, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink.i
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !43
  %i.vm = load i8, ptr %.0173.i, align 1, !tbaa !28
  store i8 %i.vm, ptr %.0175.i, align 1, !tbaa !28
  %i.vn = getelementptr inbounds nuw i8, ptr %.0173.i, i64 1
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !28
  %i.vp = getelementptr inbounds nuw i8, ptr %.0175.i, i64 1
  store i8 %i.vo, ptr %i.vp, align 1, !tbaa !28
  %i.vq = getelementptr inbounds nuw i8, ptr %.0173.i, i64 2
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !28
  %i.vs = getelementptr inbounds nuw i8, ptr %.0175.i, i64 2
  store i8 %i.vr, ptr %i.vs, align 1, !tbaa !28
  %i.vt = getelementptr inbounds nuw i8, ptr %.0173.i, i64 3
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !28
  %i.vv = getelementptr inbounds nuw i8, ptr %.0175.i, i64 3
  store i8 %i.vu, ptr %i.vv, align 1, !tbaa !28
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink.i
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !43
  %i.vy = zext i32 %i.vx to i64
  %i.vz = getelementptr inbounds nuw i8, ptr %.0173.i, i64 %i.vy ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.0175.i, i64 4
  %.val30.i = load i32, ptr %i.vz, align 1
  store i32 %.val30.i, ptr %i.wa, align 1
  %i.wb = sext i32 %i.vl to i64
  %i.wc = sub nsw i64 0, %i.wb
  %i.wd = getelementptr inbounds i8, ptr %i.vz, i64 %i.wc
  br label %ZSTD_overlapCopy8.exit286.i.i

bb.ct:                                            ; preds = %bb.cr
  %.val33.i = load i64, ptr %.0173.i, align 1
  store i64 %.val33.i, ptr %.0175.i, align 1
  br label %ZSTD_overlapCopy8.exit286.i.i

ZSTD_overlapCopy8.exit286.i.i:                    ; preds = %bb.ct, %bb.cs
  %.1174.i = phi ptr [ %i.wd, %bb.cs ], [ %.0173.i, %bb.ct ]
  %i.we = getelementptr inbounds nuw i8, ptr %.1174.i, i64 8 ; 4 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.0175.i, i64 8 ; 3 uses
  %i.wg = icmp ugt i64 %i.va, 8
  br i1 %i.wg, label %bb.cu, label %.loopexit.i

bb.cu:                                            ; preds = %ZSTD_overlapCopy8.exit286.i.i
  %i.wh = ptrtoint ptr %i.wf to i64
  %i.wi = ptrtoint ptr %i.we to i64
  %i.wj = sub i64 %i.wh, %i.wi
  %i.wk = getelementptr i8, ptr %.0175.i, i64 %i.va ; 2 uses
  %i.wl = icmp slt i64 %i.wj, 16
  br i1 %i.wl, label %.preheader264.i, label %bb.cv

.preheader264.i:                                  ; preds = %bb.cu, %.preheader264.i
  %.029.i262.i.i = phi ptr [ %i.wn, %.preheader264.i ], [ %i.we, %bb.cu ] ; 2 uses
  %.0.i263.i.i = phi ptr [ %i.wm, %.preheader264.i ], [ %i.wf, %bb.cu ] ; 2 uses
  %.029.i262.i.val.i = load i64, ptr %.029.i262.i.i, align 1
  store i64 %.029.i262.i.val.i, ptr %.0.i263.i.i, align 1
  %i.wm = getelementptr inbounds nuw i8, ptr %.0.i263.i.i, i64 8 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.029.i262.i.i, i64 8
  %i.wo = icmp ult ptr %i.wm, %i.wk
  br i1 %i.wo, label %.preheader264.i, label %.loopexit.i, !llvm.loop !9

bb.cv:                                            ; preds = %bb.cu
  %.val14.i = load <2 x i64>, ptr %i.we, align 1, !tbaa !28
  store <2 x i64> %.val14.i, ptr %i.wf, align 1, !tbaa !28
  %i.wp = icmp slt i64 %i.va, 25
  br i1 %i.wp, label %.loopexit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.wq = getelementptr inbounds nuw i8, ptr %.0175.i, i64 24
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.pn.i259.i.i = phi ptr [ %i.we, %bb.cw ], [ %i.ws, %bb.cx ] ; 2 uses
  %.1.i260.i.i = phi ptr [ %i.wq, %bb.cw ], [ %i.wt, %bb.cx ] ; 3 uses
  %.130.i261.i.i = getelementptr inbounds nuw i8, ptr %.pn.i259.i.i, i64 16
  %.130.i261.i.val.i = load <2 x i64>, ptr %.130.i261.i.i, align 1, !tbaa !28
  store <2 x i64> %.130.i261.i.val.i, ptr %.1.i260.i.i, align 1, !tbaa !28
  %i.wr = getelementptr inbounds nuw i8, ptr %.1.i260.i.i, i64 16
  %i.ws = getelementptr inbounds nuw i8, ptr %.pn.i259.i.i, i64 32 ; 2 uses
  %.val13.i = load <2 x i64>, ptr %i.ws, align 1, !tbaa !28
  store <2 x i64> %.val13.i, ptr %i.wr, align 1, !tbaa !28
  %i.wt = getelementptr inbounds nuw i8, ptr %.1.i260.i.i, i64 32 ; 2 uses
  %i.wu = icmp ult ptr %i.wt, %i.wk
  br i1 %i.wu, label %bb.cx, label %.loopexit.i, !llvm.loop !8

.loopexit.i:                                      ; preds = %bb.cx, %.preheader264.i, %bb.cq, %bb.cv, %ZSTD_overlapCopy8.exit286.i.i, %bb.co, %bb.cl, %bb.cf
  %.0.i193.i.i = phi i64 [ %i.uh, %bb.cf ], [ %i.ty, %bb.cq ], [ %i.ty, %bb.cl ], [ %i.ty, %ZSTD_overlapCopy8.exit286.i.i ], [ %i.ty, %bb.co ], [ %i.ty, %.preheader264.i ], [ %i.ty, %bb.cv ], [ %i.ty, %bb.cx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.wv = icmp ult i64 %.0.i193.i.i, -119
  %i.ww = getelementptr inbounds nuw i8, ptr %.2136.i.i, i64 %.0.i193.i.i ; 2 uses
  %i.wx = add nsw i32 %.0157.i288.i, -1           ; 2 uses
  br i1 %i.wv, label %bb.cy, label %.thread238.i

bb.cy:                                            ; preds = %.loopexit.i
  %.not255.i = icmp eq i32 %i.wx, 0
  br i1 %.not255.i, label %.thread234.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !90
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !91
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !92
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !93
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !94
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.da

bb.da:                                            ; preds = %bb.er, %bb.cz
  %i.wy = phi ptr [ %i.rg, %bb.cz ], [ %i.adm, %bb.er ] ; 8 uses
  %i.wz = phi i32 [ %i.rh, %bb.cz ], [ %i.adn, %bb.er ] ; 5 uses
  %i.xa = phi i64 [ %i.ri, %bb.cz ], [ %i.ado, %bb.er ] ; 6 uses
  %i.xb = phi i64 [ %i.ju, %bb.cz ], [ %i.zv, %bb.er ] ; 2 uses
  %i.xc = phi i64 [ %.sink469.i, %bb.cz ], [ %.sink471.i, %bb.er ] ; 6 uses
  %i.xd = phi i64 [ %.sink.i, %bb.cz ], [ %.sink470.i, %bb.er ] ; 6 uses
  %i.xe = phi i64 [ %i.rj, %bb.cz ], [ %i.adp, %bb.er ] ; 2 uses
  %i.xf = phi i64 [ %i.rk, %bb.cz ], [ %i.adq, %bb.er ] ; 2 uses
  %i.xg = phi i64 [ %i.rl, %bb.cz ], [ %i.adr, %bb.er ] ; 2 uses
  %.7141.i292.i = phi ptr [ %i.ww, %bb.cz ], [ %i.ags, %bb.er ] ; 7 uses
  %.4161.i291.i = phi i32 [ %i.wx, %bb.cz ], [ %i.agt, %bb.er ] ; 2 uses
  %.not259.i = icmp eq i32 %.4161.i291.i, 1
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.xg ; 4 uses
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.xe ; 4 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.xf ; 4 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 4
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !53, !noalias !145
  %i.xm = zext i32 %i.xl to i64                   ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !53, !noalias !145 ; 2 uses
  %i.xp = zext i32 %i.xo to i64                   ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xj, i64 4
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !53, !noalias !145 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.xt = load i8, ptr %i.xs, align 2, !tbaa !61, !noalias !145 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xi, i64 2
  %i.xv = load i8, ptr %i.xu, align 2, !tbaa !61, !noalias !145 ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xj, i64 2
  %i.xx = load i8, ptr %i.xw, align 2, !tbaa !61, !noalias !145 ; 4 uses
  %i.xy = zext i8 %i.xt to i32                    ; 2 uses
  %i.xz = zext i8 %i.xv to i32                    ; 2 uses
  %i.ya = add i8 %i.xv, %i.xt
  %i.yb = add i8 %i.ya, %i.xx
  %i.yc = load i16, ptr %i.xh, align 4, !tbaa !60, !noalias !145
  %i.yd = load i16, ptr %i.xi, align 4, !tbaa !60, !noalias !145
  %i.ye = load i16, ptr %i.xj, align 4, !tbaa !60, !noalias !145
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xh, i64 3
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !59, !noalias !145 ; 2 uses
  %i.yh = zext i8 %i.yg to i32
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xi, i64 3
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !59, !noalias !145 ; 2 uses
  %i.yk = zext i8 %i.yj to i32
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xj, i64 3
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !59, !noalias !145 ; 2 uses
  %i.yn = zext i8 %i.ym to i32
  %i.yo = icmp ugt i8 %i.xx, 1
  br i1 %i.yo, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.yp = zext i8 %i.xx to i32                    ; 2 uses
  %i.yq = and i32 %i.wz, 63
  %i.yr = zext nneg i32 %i.yq to i64
  %i.ys = shl i64 %i.xa, %i.yr
  %i.yt = sub nsw i32 0, %i.yp
  %i.yu = and i32 %i.yt, 63
  %i.yv = zext nneg i32 %i.yu to i64
  %i.yw = lshr i64 %i.ys, %i.yv
  %i.yx = add i32 %i.wz, %i.yp                    ; 2 uses
  store i32 %i.yx, ptr %i.cp, align 8, !tbaa !80, !noalias !145
  %i.yy = zext i32 %i.xr to i64
  %i.yz = add i64 %i.yw, %i.yy
  store i64 %i.xc, ptr %i.aa, align 8, !tbaa !55, !noalias !145
  br label %bb.dh

bb.dc:                                            ; preds = %bb.da
  %i.za = icmp eq i32 %i.xo, 0                    ; 3 uses
  %i.zb = icmp eq i8 %i.xx, 0
  br i1 %i.zb, label %bb.dd, label %bb.de, !prof !83

bb.dd:                                            ; preds = %bb.dc
  %i.zc = select i1 %i.za, i64 %i.xc, i64 %i.xd
  %i.zd = select i1 %i.za, i64 %i.xd, i64 %i.xc
  br label %bb.dh

bb.de:                                            ; preds = %bb.dc
  %i.ze = zext i1 %i.za to i32
  %i.zf = add i32 %i.xr, %i.ze
  %i.zg = zext i32 %i.zf to i64
  %i.zh = and i32 %i.wz, 63
  %i.zi = zext nneg i32 %i.zh to i64
  %i.zj = shl i64 %i.xa, %i.zi
  %i.zk = lshr i64 %i.zj, 63
  %i.zl = add i32 %i.wz, 1                        ; 3 uses
  store i32 %i.zl, ptr %i.cp, align 8, !tbaa !80, !noalias !145
  %i.zm = add nuw nsw i64 %i.zk, %i.zg            ; 3 uses
  %i.zn = icmp eq i64 %i.zm, 3
  br i1 %i.zn, label %.thread217.i, label %bb.df

.thread217.i:                                     ; preds = %bb.de
  %i.zo = add i64 %i.xd, -1                       ; 2 uses
  %.not.i.i218.i = icmp eq i64 %i.zo, 0
  %i.zp = select i1 %.not.i.i218.i, i64 -1, i64 %i.zo
  br label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.zm
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !55, !noalias !145 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.zr, 0
  %i.zs = select i1 %.not.i.i.i, i64 -1, i64 %i.zr ; 2 uses
  %.not101.i.i.i = icmp eq i64 %i.zm, 1
  br i1 %.not101.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.thread217.i
  %i.zt = phi i64 [ %i.zp, %.thread217.i ], [ %i.zs, %bb.df ]
  store i64 %i.xc, ptr %i.aa, align 8, !tbaa !55, !noalias !145
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.dd, %bb.db
  %i.zu = phi i32 [ %i.yx, %bb.db ], [ %i.wz, %bb.dd ], [ %i.zl, %bb.dg ], [ %i.zl, %bb.df ] ; 3 uses
  %.sink471.i = phi i64 [ %i.xd, %bb.db ], [ %i.zd, %bb.dd ], [ %i.xd, %bb.dg ], [ %i.xd, %bb.df ] ; 3 uses
  %.sink470.i = phi i64 [ %i.yz, %bb.db ], [ %i.zc, %bb.dd ], [ %i.zt, %bb.dg ], [ %i.zs, %bb.df ] ; 11 uses
  %i.zv = phi i64 [ %i.xc, %bb.db ], [ %i.xb, %bb.dd ], [ %i.xc, %bb.dg ], [ %i.xb, %bb.df ] ; 2 uses
  store i64 %.sink471.i, ptr %i.w, align 8, !tbaa !55, !noalias !145
  store i64 %.sink470.i, ptr %i.q, align 8, !tbaa !55, !noalias !145
  %.not102.i.i.i = icmp eq i8 %i.xv, 0
  br i1 %.not102.i.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zw = and i32 %i.zu, 63
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = shl i64 %i.xa, %i.zx
  %i.zz = sub nsw i32 0, %i.xz
  %i.aaa = and i32 %i.zz, 63
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = lshr i64 %i.zy, %i.aab
  %i.aad = add i32 %i.zu, %i.xz                   ; 2 uses
  store i32 %i.aad, ptr %i.cp, align 8, !tbaa !80, !noalias !145
  %i.aae = add i64 %i.aac, %i.xm
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.aaf = phi i32 [ %i.zu, %bb.dh ], [ %i.aad, %bb.di ] ; 8 uses
  %.sroa.6.0.i = phi i64 [ %i.xm, %bb.dh ], [ %i.aae, %bb.di ] ; 5 uses
  %i.aag = icmp ugt i8 %i.yb, 30
  br i1 %i.aag, label %bb.dk, label %BIT_reloadDStream.exit217.i.i, !prof !58

bb.dk:                                            ; preds = %bb.dj
  %i.aah = icmp ugt i32 %i.aaf, 64
  br i1 %i.aah, label %bb.dl, label %bb.dm, !prof !58

bb.dl:                                            ; preds = %bb.dk
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.cz, align 8, !tbaa !75, !noalias !145
  br label %BIT_reloadDStream.exit217.i.i

bb.dm:                                            ; preds = %bb.dk
  %.not.i211.i.i = icmp ult ptr %i.wy, %i.ad
  br i1 %.not.i211.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aai = lshr i32 %i.aaf, 3
  %i.aaj = zext nneg i32 %i.aai to i64
  %i.aak = sub nsw i64 0, %i.aaj
  %i.aal = getelementptr inbounds i8, ptr %i.wy, i64 %i.aak ; 3 uses
  store ptr %i.aal, ptr %i.cz, align 8, !tbaa !75, !noalias !145
  %i.aam = and i32 %i.aaf, 7                      ; 2 uses
  store i32 %i.aam, ptr %i.cp, align 8, !tbaa !80, !noalias !145
  %.val.i75.i = load i64, ptr %i.aal, align 1, !tbaa !55, !noalias !145 ; 2 uses
  store i64 %.val.i75.i, ptr %9, align 8, !tbaa !76, !noalias !145
  br label %BIT_reloadDStream.exit217.i.i

bb.do:                                            ; preds = %bb.dm
  %i.aan = icmp eq ptr %i.wy, %3
  br i1 %i.aan, label %BIT_reloadDStream.exit217.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aao = lshr i32 %i.aaf, 3                     ; 2 uses
  %i.aap = zext nneg i32 %i.aao to i64
  %i.aaq = sub nsw i64 0, %i.aap
  %i.aar = getelementptr inbounds i8, ptr %i.wy, i64 %i.aaq
  %i.aas = icmp ult ptr %i.aar, %3
  %i.aat = ptrtoint ptr %i.wy to i64
  %i.aau = sub i64 %i.aat, %i.gw
  %i.aav = trunc i64 %i.aau to i32
  %.021.i213.i.i = select i1 %i.aas, i32 %i.aav, i32 %i.aao ; 2 uses
  %i.aaw = zext i32 %.021.i213.i.i to i64
  %i.aax = sub nsw i64 0, %i.aaw
  %i.aay = getelementptr inbounds i8, ptr %i.wy, i64 %i.aax ; 3 uses
  store ptr %i.aay, ptr %i.cz, align 8, !tbaa !75, !noalias !145
  %i.aaz = shl i32 %.021.i213.i.i, 3
  %i.aba = sub i32 %i.aaf, %i.aaz                 ; 2 uses
  store i32 %i.aba, ptr %i.cp, align 8, !tbaa !80, !noalias !145
  %.val7.i = load i64, ptr %i.aay, align 1, !tbaa !55 ; 2 uses
  store i64 %.val7.i, ptr %9, align 8, !tbaa !76, !noalias !145
end_hunk_3
begin_hunk_4_@ZSTD_decompressSequencesLong_bmi2:bb.a
  %i.wz = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !28
  store <16 x i8> %wide.load30, ptr %i.wz, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.xa = icmp eq i64 %index.next, %n.vec
  br i1 %i.xa, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.wt, %n.vec
  br i1 %cmp.n, label %ZSTD_safecopyDstBeforeSrc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.wv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.i.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %i.wt, -8                    ; 4 uses
  %i.xb = getelementptr i8, ptr %.0230.i642, i64 %n.vec31
  %i.xc = getelementptr i8, ptr %i.vx, i64 %n.vec31
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %next.gep33 = getelementptr i8, ptr %.0230.i642, i64 %index32
  %next.gep34 = getelementptr i8, ptr %i.vx, i64 %index32
  %wide.load35 = load <8 x i8>, ptr %next.gep34, align 1, !tbaa !28
  store <8 x i8> %wide.load35, ptr %next.gep33, align 1, !tbaa !28
  %index.next36 = add nuw i64 %index32, 8         ; 2 uses
  %i.xd = icmp eq i64 %index.next36, %n.vec31
  br i1 %i.xd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !154

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %i.wt, %n.vec31
  br i1 %cmp.n37, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.040.i.ph = phi ptr [ %.0230.i642, %iter.check ], [ %i.ww, %vec.epilog.iter.check ], [ %i.xb, %vec.epilog.middle.block ]
  %.02939.i.ph = phi ptr [ %i.vx, %iter.check ], [ %i.wx, %vec.epilog.iter.check ], [ %i.xc, %vec.epilog.middle.block ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.lr.ph41.i
  %.040.i = phi ptr [ %i.xg, %.lr.ph41.i ], [ %.040.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %.02939.i = phi ptr [ %i.xe, %.lr.ph41.i ], [ %.02939.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.02939.i, i64 1
  %i.xf = load i8, ptr %.02939.i, align 1, !tbaa !28
  %i.xg = getelementptr inbounds nuw i8, ptr %.040.i, i64 1 ; 2 uses
  store i8 %i.xf, ptr %.040.i, align 1, !tbaa !28
  %i.xh = icmp ult ptr %i.xg, %i.wm
  br i1 %i.xh, label %.lr.ph41.i, label %ZSTD_safecopyDstBeforeSrc.exit, !llvm.loop !155

bb.cf:                                            ; preds = %bb.ce
  %i.xi = icmp samesign ugt i64 %i.wh, 31
  %i.xj = icmp samesign ult i64 %i.wl, -16
  %or.cond3.i = and i1 %i.xj, %i.xi
  br i1 %or.cond3.i, label %bb.cg, label %iter.check56

bb.cg:                                            ; preds = %bb.cf
  %i.xk = getelementptr inbounds i8, ptr %i.wm, i64 -32
  %i.xl = add nsw i64 %i.wh, -32                  ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.0230.i642, i64 %i.xl
  %.val35.i = load <2 x i64>, ptr %i.vx, align 1, !tbaa !28
  store <2 x i64> %.val35.i, ptr %.0230.i642, align 1, !tbaa !28
  %i.xn = icmp samesign ult i64 %i.wh, 49
  br i1 %i.xn, label %.thread.i292, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xo = getelementptr inbounds nuw i8, ptr %.0230.i642, i64 16
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.pn.i.i = phi ptr [ %i.vx, %bb.ch ], [ %i.xq, %bb.ci ] ; 2 uses
  %.1.i.i = phi ptr [ %i.xo, %bb.ch ], [ %i.xr, %bb.ci ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !28
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i, align 1, !tbaa !28
  %i.xp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.xq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i291 = load <2 x i64>, ptr %i.xq, align 1, !tbaa !28
  store <2 x i64> %.val.i291, ptr %i.xp, align 1, !tbaa !28
  %i.xr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.xs = icmp ult ptr %i.xr, %i.xm
  br i1 %i.xs, label %bb.ci, label %.thread.i292, !llvm.loop !8

.thread.i292:                                     ; preds = %bb.ci, %bb.cg
  %i.xt = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.xl
  br label %iter.check56

iter.check56:                                     ; preds = %bb.cf, %.thread.i292
  %.148.i = phi ptr [ %i.xk, %.thread.i292 ], [ %.0230.i642, %bb.cf ] ; 7 uses
  %.13047.i = phi ptr [ %i.xt, %.thread.i292 ], [ %i.vx, %bb.cf ] ; 6 uses
  %.143.i = ptrtoaddr ptr %.148.i to i64          ; 2 uses
  %i.xu = add i64 %i.wh, %i.wi
  %i.xv = sub i64 %i.xu, %.143.i                  ; 8 uses
  %scevgep.i = getelementptr i8, ptr %.148.i, i64 %i.xv
  %min.iters.check42 = icmp ult i64 %i.xv, 8
  %.13047.i40 = ptrtoaddr ptr %.13047.i to i64
  %i.xw = sub i64 %.13047.i40, %.143.i
  %diff.check41 = icmp ugt i64 %i.xw, -32
  %or.cond142 = select i1 %min.iters.check42, i1 true, i1 %diff.check41
  br i1 %or.cond142, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check43

vector.main.loop.iter.check43:                    ; preds = %iter.check56
  %min.iters.check44 = icmp ult i64 %i.xv, 32
  br i1 %min.iters.check44, label %vec.epilog.ph60, label %vector.ph45

vector.ph45:                                      ; preds = %vector.main.loop.iter.check43
  %i.xx = and i64 %i.xv, 24
  %n.vec46 = and i64 %i.xv, -32                   ; 5 uses
  %i.xy = getelementptr i8, ptr %.148.i, i64 %n.vec46
  %i.xz = getelementptr i8, ptr %.13047.i, i64 %n.vec46
  br label %vector.body47

vector.body47:                                    ; preds = %vector.ph45, %vector.body47
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next53, %vector.body47 ] ; 3 uses
  %next.gep49 = getelementptr i8, ptr %.148.i, i64 %index48 ; 2 uses
  %next.gep50 = getelementptr i8, ptr %.13047.i, i64 %index48 ; 2 uses
  %i.ya = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load51 = load <16 x i8>, ptr %next.gep50, align 1, !tbaa !28
  %wide.load52 = load <16 x i8>, ptr %i.ya, align 1, !tbaa !28
  %i.yb = getelementptr i8, ptr %next.gep49, i64 16
  store <16 x i8> %wide.load51, ptr %next.gep49, align 1, !tbaa !28
  store <16 x i8> %wide.load52, ptr %i.yb, align 1, !tbaa !28
  %index.next53 = add nuw i64 %index48, 32        ; 2 uses
  %i.yc = icmp eq i64 %index.next53, %n.vec46
  br i1 %i.yc, label %middle.block54, label %vector.body47, !llvm.loop !156

middle.block54:                                   ; preds = %vector.body47
  %cmp.n55 = icmp eq i64 %i.xv, %n.vec46
  br i1 %cmp.n55, label %ZSTD_safecopyDstBeforeSrc.exit, label %vec.epilog.iter.check57

vec.epilog.iter.check57:                          ; preds = %middle.block54
  %min.epilog.iters.check59 = icmp eq i64 %i.xx, 0
  br i1 %min.epilog.iters.check59, label %.lr.ph.i.preheader, label %vec.epilog.ph60, !prof !86

vec.epilog.ph60:                                  ; preds = %vector.main.loop.iter.check43, %vec.epilog.iter.check57
  %vec.epilog.resume.val61 = phi i64 [ %n.vec46, %vec.epilog.iter.check57 ], [ 0, %vector.main.loop.iter.check43 ]
  %n.vec62 = and i64 %i.xv, -8                    ; 4 uses
  %i.yd = getelementptr i8, ptr %.148.i, i64 %n.vec62
  %i.ye = getelementptr i8, ptr %.13047.i, i64 %n.vec62
  br label %vec.epilog.vector.body63

vec.epilog.vector.body63:                         ; preds = %vec.epilog.vector.body63, %vec.epilog.ph60
  %index64 = phi i64 [ %vec.epilog.resume.val61, %vec.epilog.ph60 ], [ %index.next68, %vec.epilog.vector.body63 ] ; 3 uses
  %next.gep65 = getelementptr i8, ptr %.148.i, i64 %index64
  %next.gep66 = getelementptr i8, ptr %.13047.i, i64 %index64
  %wide.load67 = load <8 x i8>, ptr %next.gep66, align 1, !tbaa !28
  store <8 x i8> %wide.load67, ptr %next.gep65, align 1, !tbaa !28
  %index.next68 = add nuw i64 %index64, 8         ; 2 uses
  %i.yf = icmp eq i64 %index.next68, %n.vec62
  br i1 %i.yf, label %vec.epilog.middle.block69, label %vec.epilog.vector.body63, !llvm.loop !157

vec.epilog.middle.block69:                        ; preds = %vec.epilog.vector.body63
  %cmp.n70 = icmp eq i64 %i.xv, %n.vec62
  br i1 %cmp.n70, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check56, %vec.epilog.iter.check57, %vec.epilog.middle.block69
  %.238.i.ph = phi ptr [ %.148.i, %iter.check56 ], [ %i.xy, %vec.epilog.iter.check57 ], [ %i.yd, %vec.epilog.middle.block69 ]
  %.23137.i.ph = phi ptr [ %.13047.i, %iter.check56 ], [ %i.xz, %vec.epilog.iter.check57 ], [ %i.ye, %vec.epilog.middle.block69 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.238.i = phi ptr [ %i.yi, %.lr.ph.i ], [ %.238.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.23137.i = phi ptr [ %i.yg, %.lr.ph.i ], [ %.23137.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.23137.i, i64 1
  %i.yh = load i8, ptr %.23137.i, align 1, !tbaa !28
  %i.yi = getelementptr inbounds nuw i8, ptr %.238.i, i64 1 ; 2 uses
  store i8 %i.yh, ptr %.238.i, align 1, !tbaa !28
  %exitcond.not.i = icmp eq ptr %i.yi, %scevgep.i
  br i1 %exitcond.not.i, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph.i, !llvm.loop !158

ZSTD_safecopyDstBeforeSrc.exit:                   ; preds = %.lr.ph.i, %.lr.ph41.i, %middle.block54, %vec.epilog.middle.block69, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.yj = load i64, ptr %i.wa, align 8, !tbaa !85
  %i.yk = sub i64 %i.yj, %i.wh
  store i64 %i.yk, ptr %i.wa, align 8, !tbaa !85
  br label %bb.cj

bb.cj:                                            ; preds = %ZSTD_safecopyDstBeforeSrc.exit, %bb.cc
  %.1231.i = phi ptr [ %i.wm, %ZSTD_safecopyDstBeforeSrc.exit ], [ %.0230.i642, %bb.cc ] ; 8 uses
  store ptr %i.hw, ptr %i.a, align 8, !tbaa !49
  store i32 0, ptr %i.b, align 8, !tbaa !47
  %.sroa.0.0.copyload = load i64, ptr %i.wa, align 8 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 7 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.1231.i, i64 %.sroa.0.0.copyload ; 6 uses
  %i.ym = add i64 %.sroa.6.0.copyload, %.sroa.0.0.copyload ; 8 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.sroa.0.0.copyload
  %i.yo = sub i64 0, %.sroa.11.0.copyload
  %i.yp = getelementptr inbounds i8, ptr %i.yl, i64 %i.yo ; 2 uses
  %i.yq = icmp ugt i64 %.sroa.0.0.copyload, 65536
  %i.yr = getelementptr inbounds nuw i8, ptr %.1231.i, i64 %i.ym
  %i.ys = icmp ugt ptr %i.yr, %i.ht
  %or.cond.i = select i1 %i.yq, i1 true, i1 %i.ys, !prof !87
  br i1 %or.cond.i, label %bb.ck, label %.critedge.i, !prof !87

.critedge.i:                                      ; preds = %bb.cj
  %.val242 = load <2 x i64>, ptr %i.hw, align 4, !tbaa !28
  store <2 x i64> %.val242, ptr %.1231.i, align 1, !tbaa !28
  %i.yt = icmp ugt i64 %.sroa.0.0.copyload, 16
  br i1 %i.yt, label %bb.cl, label %ZSTD_wildcopy.exit178, !prof !58

bb.ck:                                            ; preds = %bb.cj
  %i.yu = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.1231.i, ptr noundef %i.h, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.wa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hx, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %ZSTD_execSequence.exit

bb.cl:                                            ; preds = %.critedge.i
  %i.yv = getelementptr inbounds nuw i8, ptr %.1231.i, i64 16
  %i.yw = getelementptr i8, ptr %.1231.i, i64 %.sroa.0.0.copyload
  %.val206 = load <2 x i64>, ptr %i.hy, align 4, !tbaa !28
  store <2 x i64> %.val206, ptr %i.yv, align 1, !tbaa !28
  %i.yx = icmp slt i64 %.sroa.0.0.copyload, 33
  br i1 %i.yx, label %ZSTD_wildcopy.exit178, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.yy = getelementptr inbounds nuw i8, ptr %.1231.i, i64 32
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %bb.cm
  %.pn.i173 = phi ptr [ %i.hy, %bb.cm ], [ %i.za, %bb.cn ] ; 2 uses
  %.1.i174 = phi ptr [ %i.yy, %bb.cm ], [ %i.zb, %bb.cn ] ; 3 uses
  %.130.i175 = getelementptr inbounds nuw i8, ptr %.pn.i173, i64 16
  %.130.i175.val = load <2 x i64>, ptr %.130.i175, align 1, !tbaa !28
  store <2 x i64> %.130.i175.val, ptr %.1.i174, align 1, !tbaa !28
  %i.yz = getelementptr inbounds nuw i8, ptr %.1.i174, i64 16
  %i.za = getelementptr inbounds nuw i8, ptr %.pn.i173, i64 32 ; 2 uses
  %.val205 = load <2 x i64>, ptr %i.za, align 1, !tbaa !28
  store <2 x i64> %.val205, ptr %i.yz, align 1, !tbaa !28
  %i.zb = getelementptr inbounds nuw i8, ptr %.1.i174, i64 32 ; 2 uses
  %i.zc = icmp ult ptr %i.zb, %i.yw
  br i1 %i.zc, label %bb.cn, label %ZSTD_wildcopy.exit178, !llvm.loop !8

ZSTD_wildcopy.exit178:                            ; preds = %bb.cn, %bb.cl, %.critedge.i
  store ptr %i.yn, ptr %i.a, align 8, !tbaa !49
  %i.zd = ptrtoint ptr %i.yl to i64               ; 2 uses
  %i.ze = sub i64 %i.zd, %i.ah
  %i.zf = icmp ugt i64 %.sroa.11.0.copyload, %i.ze
  br i1 %i.zf, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %ZSTD_wildcopy.exit178
  %i.zg = sub i64 %i.zd, %i.hu
  %i.zh = icmp ugt i64 %.sroa.11.0.copyload, %i.zg
  br i1 %i.zh, label %.thread565, label %bb.cp, !prof !58

bb.cp:                                            ; preds = %bb.co
  %i.zi = ptrtoint ptr %i.yp to i64
  %i.zj = sub i64 %i.zi, %i.ah                    ; 3 uses
  %i.zk = getelementptr inbounds i8, ptr %i.r, i64 %i.zj ; 2 uses
  %i.zl = add i64 %.sroa.6.0.copyload, %i.zj      ; 2 uses
  %.not.i15 = icmp sgt i64 %i.zl, 0
  br i1 %.not.i15, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yl, ptr align 1 %i.zk, i64 %.sroa.6.0.copyload, i1 false)
  br label %ZSTD_execSequence.exit

bb.cr:                                            ; preds = %bb.cp
  %gepdiff.i = sub nsw i64 0, %i.zj               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yl, ptr align 1 %i.zk, i64 %gepdiff.i, i1 false)
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yl, i64 %gepdiff.i
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %ZSTD_wildcopy.exit178
  %.sroa.6.0 = phi i64 [ %i.zl, %bb.cr ], [ %.sroa.6.0.copyload, %ZSTD_wildcopy.exit178 ] ; 5 uses
  %.0504 = phi ptr [ %i.zm, %bb.cr ], [ %i.yl, %ZSTD_wildcopy.exit178 ] ; 12 uses
  %.0502 = phi ptr [ %i.n, %bb.cr ], [ %i.yp, %ZSTD_wildcopy.exit178 ] ; 9 uses
  %i.zn = icmp ugt i64 %.sroa.11.0.copyload, 15
  br i1 %i.zn, label %bb.ct, label %bb.cw, !prof !83

bb.ct:                                            ; preds = %bb.cs
  %i.zo = getelementptr inbounds i8, ptr %.0504, i64 %.sroa.6.0
  %.val204 = load <2 x i64>, ptr %.0502, align 1, !tbaa !28
  store <2 x i64> %.val204, ptr %.0504, align 1, !tbaa !28
  %i.zp = icmp slt i64 %.sroa.6.0, 17
  br i1 %i.zp, label %ZSTD_execSequence.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.zq = getelementptr inbounds nuw i8, ptr %.0504, i64 16
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %.pn.i180 = phi ptr [ %.0502, %bb.cu ], [ %i.zs, %bb.cv ] ; 2 uses
  %.1.i181 = phi ptr [ %i.zq, %bb.cu ], [ %i.zt, %bb.cv ] ; 3 uses
  %.130.i182 = getelementptr inbounds nuw i8, ptr %.pn.i180, i64 16
  %.130.i182.val = load <2 x i64>, ptr %.130.i182, align 1, !tbaa !28
  store <2 x i64> %.130.i182.val, ptr %.1.i181, align 1, !tbaa !28
  %i.zr = getelementptr inbounds nuw i8, ptr %.1.i181, i64 16
  %i.zs = getelementptr inbounds nuw i8, ptr %.pn.i180, i64 32 ; 2 uses
  %.val203 = load <2 x i64>, ptr %i.zs, align 1, !tbaa !28
  store <2 x i64> %.val203, ptr %i.zr, align 1, !tbaa !28
  %i.zt = getelementptr inbounds nuw i8, ptr %.1.i181, i64 32 ; 2 uses
  %i.zu = icmp ult ptr %i.zt, %i.zo
  br i1 %i.zu, label %bb.cv, label %ZSTD_execSequence.exit, !llvm.loop !8

bb.cw:                                            ; preds = %bb.cs
  %i.zv = icmp samesign ult i64 %.sroa.11.0.copyload, 8
  br i1 %i.zv, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.11.0.copyload
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !43
  %i.zy = load i8, ptr %.0502, align 1, !tbaa !28
  store i8 %i.zy, ptr %.0504, align 1, !tbaa !28
  %i.zz = getelementptr inbounds nuw i8, ptr %.0502, i64 1
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !28
  %i.aab = getelementptr inbounds nuw i8, ptr %.0504, i64 1
  store i8 %i.aaa, ptr %i.aab, align 1, !tbaa !28
  %i.aac = getelementptr inbounds nuw i8, ptr %.0502, i64 2
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !28
  %i.aae = getelementptr inbounds nuw i8, ptr %.0504, i64 2
  store i8 %i.aad, ptr %i.aae, align 1, !tbaa !28
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0502, i64 3
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !28
  %i.aah = getelementptr inbounds nuw i8, ptr %.0504, i64 3
  store i8 %i.aag, ptr %i.aah, align 1, !tbaa !28
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.11.0.copyload
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !43
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %.0502, i64 %i.aak ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.0504, i64 4
  %.val243 = load i32, ptr %i.aal, align 1
  store i32 %.val243, ptr %i.aam, align 1
  %i.aan = sext i32 %i.zx to i64
  %i.aao = sub nsw i64 0, %i.aan
  %i.aap = getelementptr inbounds i8, ptr %i.aal, i64 %i.aao
  br label %ZSTD_overlapCopy8.exit197

bb.cy:                                            ; preds = %bb.cw
  %.val249 = load i64, ptr %.0502, align 1
  store i64 %.val249, ptr %.0504, align 1
  br label %ZSTD_overlapCopy8.exit197

ZSTD_overlapCopy8.exit197:                        ; preds = %bb.cx, %bb.cy
  %.1503 = phi ptr [ %i.aap, %bb.cx ], [ %.0502, %bb.cy ]
  %i.aaq = getelementptr inbounds nuw i8, ptr %.1503, i64 8 ; 4 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.0504, i64 8 ; 3 uses
  %i.aas = icmp ugt i64 %.sroa.6.0, 8
  br i1 %i.aas, label %bb.cz, label %ZSTD_execSequence.exit

bb.cz:                                            ; preds = %ZSTD_overlapCopy8.exit197
  %i.aat = ptrtoint ptr %i.aar to i64
  %i.aau = ptrtoint ptr %i.aaq to i64
  %i.aav = sub i64 %i.aat, %i.aau
  %i.aaw = getelementptr i8, ptr %.0504, i64 %.sroa.6.0 ; 2 uses
  %i.aax = icmp slt i64 %i.aav, 16
  br i1 %i.aax, label %.preheader597, label %bb.da

.preheader597:                                    ; preds = %bb.cz, %.preheader597
  %.029.i190 = phi ptr [ %i.aaz, %.preheader597 ], [ %i.aaq, %bb.cz ] ; 2 uses
  %.0.i191 = phi ptr [ %i.aay, %.preheader597 ], [ %i.aar, %bb.cz ] ; 2 uses
  %.029.i190.val = load i64, ptr %.029.i190, align 1
  store i64 %.029.i190.val, ptr %.0.i191, align 1
  %i.aay = getelementptr inbounds nuw i8, ptr %.0.i191, i64 8 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.029.i190, i64 8
  %i.aba = icmp ult ptr %i.aay, %i.aaw
  br i1 %i.aba, label %.preheader597, label %ZSTD_execSequence.exit, !llvm.loop !9

bb.da:                                            ; preds = %bb.cz
  %.val202 = load <2 x i64>, ptr %i.aaq, align 1, !tbaa !28
  store <2 x i64> %.val202, ptr %i.aar, align 1, !tbaa !28
  %i.abb = icmp slt i64 %.sroa.6.0, 25
  br i1 %i.abb, label %ZSTD_execSequence.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.abc = getelementptr inbounds nuw i8, ptr %.0504, i64 24
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %bb.db
  %.pn.i187 = phi ptr [ %i.aaq, %bb.db ], [ %i.abe, %bb.dc ] ; 2 uses
  %.1.i188 = phi ptr [ %i.abc, %bb.db ], [ %i.abf, %bb.dc ] ; 3 uses
  %.130.i189 = getelementptr inbounds nuw i8, ptr %.pn.i187, i64 16
  %.130.i189.val = load <2 x i64>, ptr %.130.i189, align 1, !tbaa !28
  store <2 x i64> %.130.i189.val, ptr %.1.i188, align 1, !tbaa !28
  %i.abd = getelementptr inbounds nuw i8, ptr %.1.i188, i64 16
  %i.abe = getelementptr inbounds nuw i8, ptr %.pn.i187, i64 32 ; 2 uses
  %.val201 = load <2 x i64>, ptr %i.abe, align 1, !tbaa !28
  store <2 x i64> %.val201, ptr %i.abd, align 1, !tbaa !28
  %i.abf = getelementptr inbounds nuw i8, ptr %.1.i188, i64 32 ; 2 uses
  %i.abg = icmp ult ptr %i.abf, %i.aaw
  br i1 %i.abg, label %bb.dc, label %ZSTD_execSequence.exit, !llvm.loop !8

ZSTD_execSequence.exit:                           ; preds = %bb.dc, %.preheader597, %bb.cv, %bb.da, %bb.ct, %bb.ck, %bb.cq, %ZSTD_overlapCopy8.exit197
  %.0.i14 = phi i64 [ %i.yu, %bb.ck ], [ %i.ym, %bb.cv ], [ %i.ym, %bb.cq ], [ %i.ym, %ZSTD_overlapCopy8.exit197 ], [ %i.ym, %bb.da ], [ %i.ym, %bb.ct ], [ %i.ym, %.preheader597 ], [ %i.ym, %bb.dc ] ; 3 uses
  %i.abh = icmp ult i64 %.0.i14, -119
  br i1 %i.abh, label %bb.dd, label %.thread565

bb.dd:                                            ; preds = %ZSTD_execSequence.exit
  %i.abi = add i64 %.sroa.0.0, %.1210.i648        ; 3 uses
  %i.abj = icmp ugt i64 %.sink825, %i.abi
  %i.abk = select i1 %i.abj, ptr %i.r, ptr %i.n
  %i.abl = getelementptr inbounds i8, ptr %i.abk, i64 %i.abi
  %i.abm = sub i64 0, %.sink825
  %i.abn = getelementptr inbounds i8, ptr %i.abl, i64 %i.abm ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.abn, i32 0, i32 3, i32 1)
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.abo, i32 0, i32 3, i32 1)
  store i64 %.sroa.0.0, ptr %i.wa, align 8, !tbaa !55
  %.sroa.9.0..sroa_idx319 = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx319, align 8, !tbaa !55
  %.sroa.12.0..sroa_idx325 = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
end_hunk_4
begin_hunk_5_@ZSTD_decompressSequencesLong_bmi2:bb.a
  %i.aka = getelementptr i8, ptr %next.gep83, i64 16
  store <16 x i8> %wide.load85, ptr %next.gep83, align 1, !tbaa !28
  store <16 x i8> %wide.load86, ptr %i.aka, align 1, !tbaa !28
  %index.next87 = add nuw i64 %index82, 32        ; 2 uses
  %i.akb = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.akb, label %middle.block88, label %vector.body81, !llvm.loop !159

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %i.aju, %n.vec80
  br i1 %cmp.n89, label %ZSTD_safecopyDstBeforeSrc.exit315, label %vec.epilog.iter.check91

vec.epilog.iter.check91:                          ; preds = %middle.block88
  %min.epilog.iters.check93 = icmp eq i64 %i.ajw, 0
  br i1 %min.epilog.iters.check93, label %.lr.ph41.i312.preheader, label %vec.epilog.ph94, !prof !86

vec.epilog.ph94:                                  ; preds = %vector.main.loop.iter.check77, %vec.epilog.iter.check91
  %vec.epilog.resume.val95 = phi i64 [ %n.vec80, %vec.epilog.iter.check91 ], [ 0, %vector.main.loop.iter.check77 ]
  %n.vec96 = and i64 %i.aju, -8                   ; 4 uses
  %i.akc = getelementptr i8, ptr %.7237.i653, i64 %n.vec96
  %i.akd = getelementptr i8, ptr %i.ajb, i64 %n.vec96
  br label %vec.epilog.vector.body97

vec.epilog.vector.body97:                         ; preds = %vec.epilog.vector.body97, %vec.epilog.ph94
  %index98 = phi i64 [ %vec.epilog.resume.val95, %vec.epilog.ph94 ], [ %index.next102, %vec.epilog.vector.body97 ] ; 3 uses
  %next.gep99 = getelementptr i8, ptr %.7237.i653, i64 %index98
  %next.gep100 = getelementptr i8, ptr %i.ajb, i64 %index98
  %wide.load101 = load <8 x i8>, ptr %next.gep100, align 1, !tbaa !28
  store <8 x i8> %wide.load101, ptr %next.gep99, align 1, !tbaa !28
  %index.next102 = add nuw i64 %index98, 8        ; 2 uses
  %i.ake = icmp eq i64 %index.next102, %n.vec96
  br i1 %i.ake, label %vec.epilog.middle.block103, label %vec.epilog.vector.body97, !llvm.loop !160

vec.epilog.middle.block103:                       ; preds = %vec.epilog.vector.body97
  %cmp.n104 = icmp eq i64 %i.aju, %n.vec96
  br i1 %cmp.n104, label %ZSTD_safecopyDstBeforeSrc.exit315, label %.lr.ph41.i312.preheader

.lr.ph41.i312.preheader:                          ; preds = %iter.check90, %vec.epilog.iter.check91, %vec.epilog.middle.block103
  %.040.i313.ph = phi ptr [ %.7237.i653, %iter.check90 ], [ %i.ajx, %vec.epilog.iter.check91 ], [ %i.akc, %vec.epilog.middle.block103 ]
  %.02939.i314.ph = phi ptr [ %i.ajb, %iter.check90 ], [ %i.ajy, %vec.epilog.iter.check91 ], [ %i.akd, %vec.epilog.middle.block103 ]
  br label %.lr.ph41.i312

.lr.ph41.i312:                                    ; preds = %.lr.ph41.i312.preheader, %.lr.ph41.i312
  %.040.i313 = phi ptr [ %i.akh, %.lr.ph41.i312 ], [ %.040.i313.ph, %.lr.ph41.i312.preheader ] ; 2 uses
  %.02939.i314 = phi ptr [ %i.akf, %.lr.ph41.i312 ], [ %.02939.i314.ph, %.lr.ph41.i312.preheader ] ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %.02939.i314, i64 1
  %i.akg = load i8, ptr %.02939.i314, align 1, !tbaa !28
  %i.akh = getelementptr inbounds nuw i8, ptr %.040.i313, i64 1 ; 2 uses
  store i8 %i.akg, ptr %.040.i313, align 1, !tbaa !28
  %i.aki = icmp ult ptr %i.akh, %i.ajn
  br i1 %i.aki, label %.lr.ph41.i312, label %ZSTD_safecopyDstBeforeSrc.exit315, !llvm.loop !161

bb.ez:                                            ; preds = %bb.ey
  %i.akj = icmp samesign ugt i64 %i.aji, 31
  %i.akk = icmp samesign ult i64 %i.ajm, -16
  %or.cond3.i294 = and i1 %i.akk, %i.akj
  br i1 %or.cond3.i294, label %bb.fa, label %iter.check124

bb.fa:                                            ; preds = %bb.ez
  %i.akl = getelementptr inbounds i8, ptr %i.ajn, i64 -32
  %i.akm = add nsw i64 %i.aji, -32                ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %.7237.i653, i64 %i.akm
  %.val35.i304 = load <2 x i64>, ptr %i.ajb, align 1, !tbaa !28
  store <2 x i64> %.val35.i304, ptr %.7237.i653, align 1, !tbaa !28
  %i.ako = icmp samesign ult i64 %i.aji, 49
  br i1 %i.ako, label %.thread.i310, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.akp = getelementptr inbounds nuw i8, ptr %.7237.i653, i64 16
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fc, %bb.fb
  %.pn.i.i305 = phi ptr [ %i.ajb, %bb.fb ], [ %i.akr, %bb.fc ] ; 2 uses
  %.1.i.i306 = phi ptr [ %i.akp, %bb.fb ], [ %i.aks, %bb.fc ] ; 3 uses
  %.130.i.i307 = getelementptr inbounds nuw i8, ptr %.pn.i.i305, i64 16
  %.130.i.val.i308 = load <2 x i64>, ptr %.130.i.i307, align 1, !tbaa !28
  store <2 x i64> %.130.i.val.i308, ptr %.1.i.i306, align 1, !tbaa !28
  %i.akq = getelementptr inbounds nuw i8, ptr %.1.i.i306, i64 16
  %i.akr = getelementptr inbounds nuw i8, ptr %.pn.i.i305, i64 32 ; 2 uses
  %.val.i309 = load <2 x i64>, ptr %i.akr, align 1, !tbaa !28
  store <2 x i64> %.val.i309, ptr %i.akq, align 1, !tbaa !28
  %i.aks = getelementptr inbounds nuw i8, ptr %.1.i.i306, i64 32 ; 2 uses
  %i.akt = icmp ult ptr %i.aks, %i.akn
  br i1 %i.akt, label %bb.fc, label %.thread.i310, !llvm.loop !8

.thread.i310:                                     ; preds = %bb.fc, %bb.fa
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %i.akm
  br label %iter.check124

iter.check124:                                    ; preds = %bb.ez, %.thread.i310
  %.148.i296 = phi ptr [ %i.akl, %.thread.i310 ], [ %.7237.i653, %bb.ez ] ; 7 uses
  %.13047.i297 = phi ptr [ %i.aku, %.thread.i310 ], [ %i.ajb, %bb.ez ] ; 6 uses
  %.143.i298 = ptrtoaddr ptr %.148.i296 to i64    ; 2 uses
  %i.akv = add i64 %i.aji, %i.ajj
  %i.akw = sub i64 %i.akv, %.143.i298             ; 8 uses
  %scevgep.i299 = getelementptr i8, ptr %.148.i296, i64 %i.akw
  %min.iters.check110 = icmp ult i64 %i.akw, 8
  %.13047.i297108 = ptrtoaddr ptr %.13047.i297 to i64
  %i.akx = sub i64 %.13047.i297108, %.143.i298
  %diff.check109 = icmp ugt i64 %i.akx, -32
  %or.cond144 = select i1 %min.iters.check110, i1 true, i1 %diff.check109
  br i1 %or.cond144, label %.lr.ph.i300.preheader, label %vector.main.loop.iter.check111

vector.main.loop.iter.check111:                   ; preds = %iter.check124
  %min.iters.check112 = icmp ult i64 %i.akw, 32
  br i1 %min.iters.check112, label %vec.epilog.ph128, label %vector.ph113

vector.ph113:                                     ; preds = %vector.main.loop.iter.check111
  %i.aky = and i64 %i.akw, 24
  %n.vec114 = and i64 %i.akw, -32                 ; 5 uses
  %i.akz = getelementptr i8, ptr %.148.i296, i64 %n.vec114
  %i.ala = getelementptr i8, ptr %.13047.i297, i64 %n.vec114
  br label %vector.body115

vector.body115:                                   ; preds = %vector.ph113, %vector.body115
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body115 ] ; 3 uses
  %next.gep117 = getelementptr i8, ptr %.148.i296, i64 %index116 ; 2 uses
  %next.gep118 = getelementptr i8, ptr %.13047.i297, i64 %index116 ; 2 uses
  %i.alb = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load119 = load <16 x i8>, ptr %next.gep118, align 1, !tbaa !28
  %wide.load120 = load <16 x i8>, ptr %i.alb, align 1, !tbaa !28
  %i.alc = getelementptr i8, ptr %next.gep117, i64 16
  store <16 x i8> %wide.load119, ptr %next.gep117, align 1, !tbaa !28
  store <16 x i8> %wide.load120, ptr %i.alc, align 1, !tbaa !28
  %index.next121 = add nuw i64 %index116, 32      ; 2 uses
  %i.ald = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.ald, label %middle.block122, label %vector.body115, !llvm.loop !162

middle.block122:                                  ; preds = %vector.body115
  %cmp.n123 = icmp eq i64 %i.akw, %n.vec114
  br i1 %cmp.n123, label %ZSTD_safecopyDstBeforeSrc.exit315, label %vec.epilog.iter.check125

vec.epilog.iter.check125:                         ; preds = %middle.block122
  %min.epilog.iters.check127 = icmp eq i64 %i.aky, 0
  br i1 %min.epilog.iters.check127, label %.lr.ph.i300.preheader, label %vec.epilog.ph128, !prof !86

vec.epilog.ph128:                                 ; preds = %vector.main.loop.iter.check111, %vec.epilog.iter.check125
  %vec.epilog.resume.val129 = phi i64 [ %n.vec114, %vec.epilog.iter.check125 ], [ 0, %vector.main.loop.iter.check111 ]
  %n.vec130 = and i64 %i.akw, -8                  ; 4 uses
  %i.ale = getelementptr i8, ptr %.148.i296, i64 %n.vec130
  %i.alf = getelementptr i8, ptr %.13047.i297, i64 %n.vec130
  br label %vec.epilog.vector.body131

vec.epilog.vector.body131:                        ; preds = %vec.epilog.vector.body131, %vec.epilog.ph128
  %index132 = phi i64 [ %vec.epilog.resume.val129, %vec.epilog.ph128 ], [ %index.next136, %vec.epilog.vector.body131 ] ; 3 uses
  %next.gep133 = getelementptr i8, ptr %.148.i296, i64 %index132
  %next.gep134 = getelementptr i8, ptr %.13047.i297, i64 %index132
  %wide.load135 = load <8 x i8>, ptr %next.gep134, align 1, !tbaa !28
  store <8 x i8> %wide.load135, ptr %next.gep133, align 1, !tbaa !28
  %index.next136 = add nuw i64 %index132, 8       ; 2 uses
  %i.alg = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.alg, label %vec.epilog.middle.block137, label %vec.epilog.vector.body131, !llvm.loop !163

vec.epilog.middle.block137:                       ; preds = %vec.epilog.vector.body131
  %cmp.n138 = icmp eq i64 %i.akw, %n.vec130
  br i1 %cmp.n138, label %ZSTD_safecopyDstBeforeSrc.exit315, label %.lr.ph.i300.preheader

.lr.ph.i300.preheader:                            ; preds = %iter.check124, %vec.epilog.iter.check125, %vec.epilog.middle.block137
  %.238.i301.ph = phi ptr [ %.148.i296, %iter.check124 ], [ %i.akz, %vec.epilog.iter.check125 ], [ %i.ale, %vec.epilog.middle.block137 ]
  %.23137.i302.ph = phi ptr [ %.13047.i297, %iter.check124 ], [ %i.ala, %vec.epilog.iter.check125 ], [ %i.alf, %vec.epilog.middle.block137 ]
  br label %.lr.ph.i300

.lr.ph.i300:                                      ; preds = %.lr.ph.i300.preheader, %.lr.ph.i300
  %.238.i301 = phi ptr [ %i.alj, %.lr.ph.i300 ], [ %.238.i301.ph, %.lr.ph.i300.preheader ] ; 2 uses
  %.23137.i302 = phi ptr [ %i.alh, %.lr.ph.i300 ], [ %.23137.i302.ph, %.lr.ph.i300.preheader ] ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %.23137.i302, i64 1
  %i.ali = load i8, ptr %.23137.i302, align 1, !tbaa !28
  %i.alj = getelementptr inbounds nuw i8, ptr %.238.i301, i64 1 ; 2 uses
  store i8 %i.ali, ptr %.238.i301, align 1, !tbaa !28
  %exitcond.not.i303 = icmp eq ptr %i.alj, %scevgep.i299
  br i1 %exitcond.not.i303, label %ZSTD_safecopyDstBeforeSrc.exit315, label %.lr.ph.i300, !llvm.loop !164

ZSTD_safecopyDstBeforeSrc.exit315:                ; preds = %.lr.ph.i300, %.lr.ph41.i312, %middle.block122, %vec.epilog.middle.block137, %middle.block88, %vec.epilog.middle.block103, %.preheader.i311
  %i.alk = load i64, ptr %i.aiy, align 8, !tbaa !85
  %i.all = sub i64 %i.alk, %i.aji
  store i64 %i.all, ptr %i.aiy, align 8, !tbaa !85
  br label %bb.fd

bb.fd:                                            ; preds = %ZSTD_safecopyDstBeforeSrc.exit315, %bb.ew
  %.8238.i = phi ptr [ %i.ajn, %ZSTD_safecopyDstBeforeSrc.exit315 ], [ %.7237.i653, %bb.ew ] ; 8 uses
  store ptr %i.aiq, ptr %i.a, align 8, !tbaa !49
  store i32 0, ptr %i.b, align 8, !tbaa !47
  %.sroa.0188.0.copyload = load i64, ptr %i.aiy, align 8 ; 7 uses
  %.sroa.6190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %.sroa.6190.0.copyload = load i64, ptr %.sroa.6190.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  %.sroa.11194.0.copyload = load i64, ptr %.sroa.11194.0..sroa_idx, align 8 ; 7 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %.8238.i, i64 %.sroa.0188.0.copyload ; 6 uses
  %i.aln = add i64 %.sroa.6190.0.copyload, %.sroa.0188.0.copyload ; 8 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %.sroa.0188.0.copyload
  %i.alp = sub i64 0, %.sroa.11194.0.copyload
  %i.alq = getelementptr inbounds i8, ptr %i.alm, i64 %i.alp ; 2 uses
  %i.alr = icmp ugt i64 %.sroa.0188.0.copyload, 65536
  %i.als = getelementptr inbounds nuw i8, ptr %.8238.i, i64 %i.aln
  %i.alt = icmp ugt ptr %i.als, %i.ain
  %or.cond.i22 = select i1 %i.alr, i1 true, i1 %i.alt, !prof !87
  br i1 %or.cond.i22, label %bb.fe, label %.critedge.i23, !prof !87

.critedge.i23:                                    ; preds = %bb.fd
  %.val240 = load <2 x i64>, ptr %i.aiq, align 4, !tbaa !28
  store <2 x i64> %.val240, ptr %.8238.i, align 1, !tbaa !28
  %i.alu = icmp ugt i64 %.sroa.0188.0.copyload, 16
  br i1 %i.alu, label %bb.ff, label %ZSTD_wildcopy.exit136, !prof !58

bb.fe:                                            ; preds = %bb.fd
  %i.alv = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.8238.i, ptr noundef %i.h, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.aiy, ptr noundef nonnull %i.a, ptr noundef nonnull %i.air, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %.loopexit

bb.ff:                                            ; preds = %.critedge.i23
  %i.alw = getelementptr inbounds nuw i8, ptr %.8238.i, i64 16
  %i.alx = getelementptr i8, ptr %.8238.i, i64 %.sroa.0188.0.copyload
  %.val218 = load <2 x i64>, ptr %i.ais, align 4, !tbaa !28
  store <2 x i64> %.val218, ptr %i.alw, align 1, !tbaa !28
  %i.aly = icmp slt i64 %.sroa.0188.0.copyload, 33
  br i1 %i.aly, label %ZSTD_wildcopy.exit136, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.alz = getelementptr inbounds nuw i8, ptr %.8238.i, i64 32
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fh, %bb.fg
  %.pn.i131 = phi ptr [ %i.ais, %bb.fg ], [ %i.amb, %bb.fh ] ; 2 uses
  %.1.i132 = phi ptr [ %i.alz, %bb.fg ], [ %i.amc, %bb.fh ] ; 3 uses
  %.130.i133 = getelementptr inbounds nuw i8, ptr %.pn.i131, i64 16
  %.130.i133.val = load <2 x i64>, ptr %.130.i133, align 1, !tbaa !28
  store <2 x i64> %.130.i133.val, ptr %.1.i132, align 1, !tbaa !28
  %i.ama = getelementptr inbounds nuw i8, ptr %.1.i132, i64 16
  %i.amb = getelementptr inbounds nuw i8, ptr %.pn.i131, i64 32 ; 2 uses
  %.val217 = load <2 x i64>, ptr %i.amb, align 1, !tbaa !28
  store <2 x i64> %.val217, ptr %i.ama, align 1, !tbaa !28
  %i.amc = getelementptr inbounds nuw i8, ptr %.1.i132, i64 32 ; 2 uses
  %i.amd = icmp ult ptr %i.amc, %i.alx
  br i1 %i.amd, label %bb.fh, label %ZSTD_wildcopy.exit136, !llvm.loop !8

ZSTD_wildcopy.exit136:                            ; preds = %bb.fh, %bb.ff, %.critedge.i23
  store ptr %i.alo, ptr %i.a, align 8, !tbaa !49
  %i.ame = ptrtoint ptr %i.alm to i64             ; 2 uses
  %i.amf = sub i64 %i.ame, %i.ah
  %i.amg = icmp ugt i64 %.sroa.11194.0.copyload, %i.amf
  br i1 %i.amg, label %bb.fi, label %bb.fm

bb.fi:                                            ; preds = %ZSTD_wildcopy.exit136
  %i.amh = sub i64 %i.ame, %i.aio
  %i.ami = icmp ugt i64 %.sroa.11194.0.copyload, %i.amh
  br i1 %i.ami, label %.thread565, label %bb.fj, !prof !58

bb.fj:                                            ; preds = %bb.fi
  %i.amj = ptrtoint ptr %i.alq to i64
  %i.amk = sub i64 %i.amj, %i.ah                  ; 3 uses
  %i.aml = getelementptr inbounds i8, ptr %i.r, i64 %i.amk ; 2 uses
  %i.amm = add i64 %.sroa.6190.0.copyload, %i.amk ; 2 uses
  %.not.i25 = icmp sgt i64 %i.amm, 0
  br i1 %.not.i25, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.alm, ptr align 1 %i.aml, i64 %.sroa.6190.0.copyload, i1 false)
  br label %.loopexit

bb.fl:                                            ; preds = %bb.fj
  %gepdiff.i26 = sub nsw i64 0, %i.amk            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.alm, ptr align 1 %i.aml, i64 %gepdiff.i26, i1 false)
  %i.amn = getelementptr inbounds nuw i8, ptr %i.alm, i64 %gepdiff.i26
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %ZSTD_wildcopy.exit136
  %.sroa.6190.0 = phi i64 [ %i.amm, %bb.fl ], [ %.sroa.6190.0.copyload, %ZSTD_wildcopy.exit136 ] ; 5 uses
  %.0499 = phi ptr [ %i.n, %bb.fl ], [ %i.alq, %ZSTD_wildcopy.exit136 ] ; 9 uses
  %.0498 = phi ptr [ %i.amn, %bb.fl ], [ %i.alm, %ZSTD_wildcopy.exit136 ] ; 12 uses
  %i.amo = icmp ugt i64 %.sroa.11194.0.copyload, 15
  br i1 %i.amo, label %bb.fn, label %bb.fq, !prof !83

bb.fn:                                            ; preds = %bb.fm
  %i.amp = getelementptr inbounds i8, ptr %.0498, i64 %.sroa.6190.0
  %.val216 = load <2 x i64>, ptr %.0499, align 1, !tbaa !28
  store <2 x i64> %.val216, ptr %.0498, align 1, !tbaa !28
  %i.amq = icmp slt i64 %.sroa.6190.0, 17
  br i1 %i.amq, label %.loopexit, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.amr = getelementptr inbounds nuw i8, ptr %.0498, i64 16
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fp, %bb.fo
  %.pn.i138 = phi ptr [ %.0499, %bb.fo ], [ %i.amt, %bb.fp ] ; 2 uses
  %.1.i139 = phi ptr [ %i.amr, %bb.fo ], [ %i.amu, %bb.fp ] ; 3 uses
  %.130.i140 = getelementptr inbounds nuw i8, ptr %.pn.i138, i64 16
  %.130.i140.val = load <2 x i64>, ptr %.130.i140, align 1, !tbaa !28
  store <2 x i64> %.130.i140.val, ptr %.1.i139, align 1, !tbaa !28
  %i.ams = getelementptr inbounds nuw i8, ptr %.1.i139, i64 16
  %i.amt = getelementptr inbounds nuw i8, ptr %.pn.i138, i64 32 ; 2 uses
  %.val215 = load <2 x i64>, ptr %i.amt, align 1, !tbaa !28
  store <2 x i64> %.val215, ptr %i.ams, align 1, !tbaa !28
  %i.amu = getelementptr inbounds nuw i8, ptr %.1.i139, i64 32 ; 2 uses
  %i.amv = icmp ult ptr %i.amu, %i.amp
  br i1 %i.amv, label %bb.fp, label %.loopexit, !llvm.loop !8

bb.fq:                                            ; preds = %bb.fm
  %i.amw = icmp samesign ult i64 %.sroa.11194.0.copyload, 8
  br i1 %i.amw, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.11194.0.copyload
  %i.amy = load i32, ptr %i.amx, align 4, !tbaa !43
  %i.amz = load i8, ptr %.0499, align 1, !tbaa !28
  store i8 %i.amz, ptr %.0498, align 1, !tbaa !28
  %i.ana = getelementptr inbounds nuw i8, ptr %.0499, i64 1
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !28
  %i.anc = getelementptr inbounds nuw i8, ptr %.0498, i64 1
  store i8 %i.anb, ptr %i.anc, align 1, !tbaa !28
  %i.and = getelementptr inbounds nuw i8, ptr %.0499, i64 2
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !28
  %i.anf = getelementptr inbounds nuw i8, ptr %.0498, i64 2
  store i8 %i.ane, ptr %i.anf, align 1, !tbaa !28
  %i.ang = getelementptr inbounds nuw i8, ptr %.0499, i64 3
  %i.anh = load i8, ptr %i.ang, align 1, !tbaa !28
  %i.ani = getelementptr inbounds nuw i8, ptr %.0498, i64 3
  store i8 %i.anh, ptr %i.ani, align 1, !tbaa !28
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.11194.0.copyload
  %i.ank = load i32, ptr %i.anj, align 4, !tbaa !43
  %i.anl = zext i32 %i.ank to i64
  %i.anm = getelementptr inbounds nuw i8, ptr %.0499, i64 %i.anl ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %.0498, i64 4
  %.val245 = load i32, ptr %i.anm, align 1
  store i32 %.val245, ptr %i.ann, align 1
  %i.ano = sext i32 %i.amy to i64
  %i.anp = sub nsw i64 0, %i.ano
  %i.anq = getelementptr inbounds i8, ptr %i.anm, i64 %i.anp
  br label %ZSTD_overlapCopy8.exit195

bb.fs:                                            ; preds = %bb.fq
  %.val251 = load i64, ptr %.0499, align 1
  store i64 %.val251, ptr %.0498, align 1
  br label %ZSTD_overlapCopy8.exit195

ZSTD_overlapCopy8.exit195:                        ; preds = %bb.fr, %bb.fs
  %.1500 = phi ptr [ %i.anq, %bb.fr ], [ %.0499, %bb.fs ]
  %i.anr = getelementptr inbounds nuw i8, ptr %.1500, i64 8 ; 4 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %.0498, i64 8 ; 3 uses
  %i.ant = icmp ugt i64 %.sroa.6190.0, 8
  br i1 %i.ant, label %bb.ft, label %.loopexit

bb.ft:                                            ; preds = %ZSTD_overlapCopy8.exit195
  %i.anu = ptrtoint ptr %i.ans to i64
  %i.anv = ptrtoint ptr %i.anr to i64
  %i.anw = sub i64 %i.anu, %i.anv
  %i.anx = getelementptr i8, ptr %.0498, i64 %.sroa.6190.0 ; 2 uses
  %i.any = icmp slt i64 %i.anw, 16
  br i1 %i.any, label %.preheader587, label %bb.fu

.preheader587:                                    ; preds = %bb.ft, %.preheader587
  %.029.i148 = phi ptr [ %i.aoa, %.preheader587 ], [ %i.anr, %bb.ft ] ; 2 uses
  %.0.i149 = phi ptr [ %i.anz, %.preheader587 ], [ %i.ans, %bb.ft ] ; 2 uses
  %.029.i148.val = load i64, ptr %.029.i148, align 1
  store i64 %.029.i148.val, ptr %.0.i149, align 1
  %i.anz = getelementptr inbounds nuw i8, ptr %.0.i149, i64 8 ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %.029.i148, i64 8
  %i.aob = icmp ult ptr %i.anz, %i.anx
  br i1 %i.aob, label %.preheader587, label %.loopexit, !llvm.loop !9

bb.fu:                                            ; preds = %bb.ft
  %.val214 = load <2 x i64>, ptr %i.anr, align 1, !tbaa !28
  store <2 x i64> %.val214, ptr %i.ans, align 1, !tbaa !28
  %i.aoc = icmp slt i64 %.sroa.6190.0, 25
  br i1 %i.aoc, label %.loopexit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aod = getelementptr inbounds nuw i8, ptr %.0498, i64 24
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fw, %bb.fv
  %.pn.i145 = phi ptr [ %i.anr, %bb.fv ], [ %i.aof, %bb.fw ] ; 2 uses
  %.1.i146 = phi ptr [ %i.aod, %bb.fv ], [ %i.aog, %bb.fw ] ; 3 uses
  %.130.i147 = getelementptr inbounds nuw i8, ptr %.pn.i145, i64 16
  %.130.i147.val = load <2 x i64>, ptr %.130.i147, align 1, !tbaa !28
  store <2 x i64> %.130.i147.val, ptr %.1.i146, align 1, !tbaa !28
  %i.aoe = getelementptr inbounds nuw i8, ptr %.1.i146, i64 16
  %i.aof = getelementptr inbounds nuw i8, ptr %.pn.i145, i64 32 ; 2 uses
  %.val213 = load <2 x i64>, ptr %i.aof, align 1, !tbaa !28
  store <2 x i64> %.val213, ptr %i.aoe, align 1, !tbaa !28
  %i.aog = getelementptr inbounds nuw i8, ptr %.1.i146, i64 32 ; 2 uses
  %i.aoh = icmp ult ptr %i.aog, %i.anx
  br i1 %i.aoh, label %bb.fw, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %bb.fw, %.preheader587, %bb.fp, %ZSTD_overlapCopy8.exit195, %bb.fk, %bb.fe, %bb.fn, %bb.fu
  %.0.i24 = phi i64 [ %i.alv, %bb.fe ], [ %i.aln, %bb.fp ], [ %i.aln, %bb.fk ], [ %i.aln, %ZSTD_overlapCopy8.exit195 ], [ %i.aln, %bb.fu ], [ %i.aln, %bb.fn ], [ %i.aln, %.preheader587 ], [ %i.aln, %bb.fw ] ; 3 uses
  %i.aoi = icmp ult i64 %.0.i24, -119
  %i.aoj = getelementptr inbounds nuw i8, ptr %.8238.i, i64 %.0.i24
  br i1 %i.aoi, label %bb.hl, label %.thread565

bb.fx:                                            ; preds = %bb.ev
  %i.aok = getelementptr inbounds i8, ptr %i.ajd, i64 -32 ; 2 uses
  %.sroa.0212.0.copyload = load i64, ptr %i.aiy, align 8 ; 6 uses
  %.sroa.5214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %.sroa.5214.0.copyload = load i64, ptr %.sroa.5214.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  %.sroa.10218.0.copyload = load i64, ptr %.sroa.10218.0..sroa_idx, align 8 ; 7 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %.7237.i653, i64 %.sroa.0212.0.copyload ; 6 uses
  %i.aom = add i64 %.sroa.5214.0.copyload, %.sroa.0212.0.copyload ; 8 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %.sroa.0212.0.copyload ; 2 uses
  %i.aoo = sub i64 0, %.sroa.10218.0.copyload
  %i.aop = getelementptr inbounds i8, ptr %i.aol, i64 %i.aoo ; 2 uses
  %i.aoq = icmp ugt ptr %i.aon, %.4223.i657
end_hunk_5
begin_hunk_6_@ZSTD_decompressSequencesSplitLitBuffer_bmi2:bb.a
  %i.op = getelementptr inbounds nuw i8, ptr %.0134.i289, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ob, i64 16 ; 2 uses
  %i.or = add i64 %.sroa.079.0, -16
  %.val17 = load <2 x i64>, ptr %i.oq, align 1, !tbaa !28
  store <2 x i64> %.val17, ptr %i.op, align 1, !tbaa !28
  %i.os = icmp slt i64 %i.or, 17
  br i1 %i.os, label %ZSTD_wildcopy.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ot = getelementptr inbounds nuw i8, ptr %.0134.i289, i64 32
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.pn.i.i = phi ptr [ %i.oq, %bb.bd ], [ %i.ov, %bb.be ] ; 2 uses
  %.1.i.i = phi ptr [ %i.ot, %bb.bd ], [ %i.ow, %bb.be ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.i.val = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !28
  store <2 x i64> %.130.i.i.val, ptr %.1.i.i, align 1, !tbaa !28
  %i.ou = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val16 = load <2 x i64>, ptr %i.ov, align 1, !tbaa !28
  store <2 x i64> %.val16, ptr %i.ou, align 1, !tbaa !28
  %i.ow = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.ox = icmp ult ptr %i.ow, %i.og
  br i1 %i.ox, label %bb.be, label %ZSTD_wildcopy.exit.i, !llvm.loop !8

ZSTD_wildcopy.exit.i:                             ; preds = %bb.be, %bb.bc, %.critedge.i198.i
  store ptr %i.oa, ptr %i.a, align 8, !tbaa !49
  %i.oy = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.oz = sub i64 %i.oy, %i.gu
  %i.pa = icmp ugt i64 %.sink, %i.oz
  br i1 %i.pa, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %ZSTD_wildcopy.exit.i
  %i.pb = sub i64 %i.oy, %i.gv
  %i.pc = icmp ugt i64 %.sink, %i.pb
  br i1 %i.pc, label %ZSTD_execSequenceSplitLitBuffer.exit.i.thread, label %bb.bg, !prof !58

ZSTD_execSequenceSplitLitBuffer.exit.i.thread:    ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread238

bb.bg:                                            ; preds = %bb.bf
  %i.pd = ptrtoint ptr %i.oj to i64
  %i.pe = sub i64 %i.pd, %i.gu                    ; 3 uses
  %i.pf = getelementptr inbounds i8, ptr %i.l, i64 %i.pe ; 2 uses
  %i.pg = add nsw i64 %i.pe, %.sroa.680.0         ; 3 uses
  %.not.i200.i = icmp sgt i64 %i.pg, 0
  br i1 %.not.i200.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pf, i64 %.sroa.680.0, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.bi:                                            ; preds = %bb.bg
  %gepdiff.i201.i = sub nsw i64 0, %i.pe          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pf, i64 %gepdiff.i201.i, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.og, i64 %gepdiff.i201.i
  store i64 %i.pg, ptr %.sroa.985.0..sroa_idx, align 8, !tbaa !89
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %ZSTD_wildcopy.exit.i
  %.0178 = phi ptr [ %i.ph, %bb.bi ], [ %i.og, %ZSTD_wildcopy.exit.i ] ; 12 uses
  %.0176 = phi ptr [ %i.h, %bb.bi ], [ %i.oj, %ZSTD_wildcopy.exit.i ] ; 9 uses
  %i.pi = phi i64 [ %i.pg, %bb.bi ], [ %.sroa.680.0, %ZSTD_wildcopy.exit.i ] ; 5 uses
  %i.pj = icmp ugt i64 %.sink, 15
  br i1 %i.pj, label %bb.bk, label %bb.bn, !prof !83

bb.bk:                                            ; preds = %bb.bj
  %i.pk = getelementptr inbounds i8, ptr %.0178, i64 %i.pi
  %.val19 = load <2 x i64>, ptr %.0176, align 1, !tbaa !28
  store <2 x i64> %.val19, ptr %.0178, align 1, !tbaa !28
  %i.pl = icmp slt i64 %i.pi, 17
  br i1 %i.pl, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pm = getelementptr inbounds nuw i8, ptr %.0178, i64 16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.pn.i233.i = phi ptr [ %.0176, %bb.bl ], [ %i.po, %bb.bm ] ; 2 uses
  %.1.i234.i = phi ptr [ %i.pm, %bb.bl ], [ %i.pp, %bb.bm ] ; 3 uses
  %.130.i235.i = getelementptr inbounds nuw i8, ptr %.pn.i233.i, i64 16
  %.130.i235.i.val = load <2 x i64>, ptr %.130.i235.i, align 1, !tbaa !28
  store <2 x i64> %.130.i235.i.val, ptr %.1.i234.i, align 1, !tbaa !28
  %i.pn = getelementptr inbounds nuw i8, ptr %.1.i234.i, i64 16
  %i.po = getelementptr inbounds nuw i8, ptr %.pn.i233.i, i64 32 ; 2 uses
  %.val18 = load <2 x i64>, ptr %i.po, align 1, !tbaa !28
  store <2 x i64> %.val18, ptr %i.pn, align 1, !tbaa !28
  %i.pp = getelementptr inbounds nuw i8, ptr %.1.i234.i, i64 32 ; 2 uses
  %i.pq = icmp ult ptr %i.pp, %i.pk
  br i1 %i.pq, label %bb.bm, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !8

bb.bn:                                            ; preds = %bb.bj
  %i.pr = icmp samesign ult i64 %.sink, 8
  br i1 %i.pr, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !43
  %i.pu = load i8, ptr %.0176, align 1, !tbaa !28
  store i8 %i.pu, ptr %.0178, align 1, !tbaa !28
  %i.pv = getelementptr inbounds nuw i8, ptr %.0176, i64 1
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !28
  %i.px = getelementptr inbounds nuw i8, ptr %.0178, i64 1
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !28
  %i.py = getelementptr inbounds nuw i8, ptr %.0176, i64 2
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !28
  %i.qa = getelementptr inbounds nuw i8, ptr %.0178, i64 2
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !28
  %i.qb = getelementptr inbounds nuw i8, ptr %.0176, i64 3
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !28
  %i.qd = getelementptr inbounds nuw i8, ptr %.0178, i64 3
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !28
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !43
  %i.qg = zext i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %.0176, i64 %i.qg ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.0178, i64 4
  %.val31 = load i32, ptr %i.qh, align 1
  store i32 %.val31, ptr %i.qi, align 1
  %i.qj = sext i32 %i.pt to i64
  %i.qk = sub nsw i64 0, %i.qj
  %i.ql = getelementptr inbounds i8, ptr %i.qh, i64 %i.qk
  br label %ZSTD_overlapCopy8.exit.i

bb.bp:                                            ; preds = %bb.bn
  %.val35 = load i64, ptr %.0176, align 1
  store i64 %.val35, ptr %.0178, align 1
  br label %ZSTD_overlapCopy8.exit.i

ZSTD_overlapCopy8.exit.i:                         ; preds = %bb.bp, %bb.bo
  %.1177 = phi ptr [ %i.ql, %bb.bo ], [ %.0176, %bb.bp ]
  %i.qm = getelementptr inbounds nuw i8, ptr %.1177, i64 8 ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.0178, i64 8 ; 3 uses
  %i.qo = icmp ugt i64 %i.pi, 8
  br i1 %i.qo, label %bb.bq, label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.bq:                                            ; preds = %ZSTD_overlapCopy8.exit.i
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = ptrtoint ptr %i.qm to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %i.qs = getelementptr i8, ptr %.0178, i64 %i.pi ; 2 uses
  %i.qt = icmp slt i64 %i.qr, 16
  br i1 %i.qt, label %.preheader268, label %bb.br

.preheader268:                                    ; preds = %bb.bq, %.preheader268
  %.029.i.i = phi ptr [ %i.qv, %.preheader268 ], [ %i.qm, %bb.bq ] ; 2 uses
  %.0.i242.i = phi ptr [ %i.qu, %.preheader268 ], [ %i.qn, %bb.bq ] ; 2 uses
  %.029.i.i.val = load i64, ptr %.029.i.i, align 1
  store i64 %.029.i.i.val, ptr %.0.i242.i, align 1
  %i.qu = getelementptr inbounds nuw i8, ptr %.0.i242.i, i64 8 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8
  %i.qw = icmp ult ptr %i.qu, %i.qs
  br i1 %i.qw, label %.preheader268, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !9

bb.br:                                            ; preds = %bb.bq
  %.val21 = load <2 x i64>, ptr %i.qm, align 1, !tbaa !28
  store <2 x i64> %.val21, ptr %i.qn, align 1, !tbaa !28
  %i.qx = icmp slt i64 %i.pi, 25
  br i1 %i.qx, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qy = getelementptr inbounds nuw i8, ptr %.0178, i64 24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %.pn.i239.i = phi ptr [ %i.qm, %bb.bs ], [ %i.ra, %bb.bt ] ; 2 uses
  %.1.i240.i = phi ptr [ %i.qy, %bb.bs ], [ %i.rb, %bb.bt ] ; 3 uses
  %.130.i241.i = getelementptr inbounds nuw i8, ptr %.pn.i239.i, i64 16
  %.130.i241.i.val = load <2 x i64>, ptr %.130.i241.i, align 1, !tbaa !28
  store <2 x i64> %.130.i241.i.val, ptr %.1.i240.i, align 1, !tbaa !28
  %i.qz = getelementptr inbounds nuw i8, ptr %.1.i240.i, i64 16
  %i.ra = getelementptr inbounds nuw i8, ptr %.pn.i239.i, i64 32 ; 2 uses
  %.val20 = load <2 x i64>, ptr %i.ra, align 1, !tbaa !28
  store <2 x i64> %.val20, ptr %i.qz, align 1, !tbaa !28
  %i.rb = getelementptr inbounds nuw i8, ptr %.1.i240.i, i64 32 ; 2 uses
  %i.rc = icmp ult ptr %i.rb, %i.qs
  br i1 %i.rc, label %bb.bt, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !8

ZSTD_execSequenceSplitLitBuffer.exit.i:           ; preds = %bb.bt, %.preheader268, %bb.bm, %bb.br, %bb.bk, %ZSTD_overlapCopy8.exit.i, %bb.bh, %bb.bb
  %.0.i199.i = phi i64 [ %i.oo, %bb.bb ], [ %i.oh, %.preheader268 ], [ %i.oh, %bb.bh ], [ %i.oh, %ZSTD_overlapCopy8.exit.i ], [ %i.oh, %bb.bk ], [ %i.oh, %bb.br ], [ %i.oh, %bb.bm ], [ %i.oh, %bb.bt ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rd = icmp ult i64 %.0.i199.i, -119
  br i1 %i.rd, label %bb.bu, label %.thread238

bb.bu:                                            ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i
  %i.re = getelementptr inbounds nuw i8, ptr %.0134.i289, i64 %.0.i199.i ; 2 uses
  %i.rf = add nsw i32 %.0157.i288, -1             ; 2 uses
  %.not169.i = icmp eq i32 %i.rf, 0
  br i1 %.not169.i, label %.thread234, label %bb.ac, !llvm.loop !12

bb.bv:                                            ; preds = %ZSTD_decodeSequence.exit189.i
  %i.rg = icmp sgt i32 %.0157.i288, 0
  br i1 %i.rg, label %.thread390, label %.thread238

.thread390:                                       ; preds = %ZSTD_decodeSequence.exit189.i.thread, %bb.bv
  %i.rh = phi ptr [ %i.nm, %bb.bv ], [ %i.lb, %ZSTD_decodeSequence.exit189.i.thread ] ; 2 uses
  %i.ri = phi i32 [ %i.nn, %bb.bv ], [ %i.ln, %ZSTD_decodeSequence.exit189.i.thread ] ; 2 uses
  %i.rj = phi i64 [ %i.no, %bb.bv ], [ %i.ld, %ZSTD_decodeSequence.exit189.i.thread ]
  %i.rk = phi i64 [ %i.mh, %bb.bv ], [ %i.he, %ZSTD_decodeSequence.exit189.i.thread ]
  %i.rl = phi i64 [ %i.mr, %bb.bv ], [ %i.hf, %ZSTD_decodeSequence.exit189.i.thread ]
  %i.rm = phi i64 [ %i.lx, %bb.bv ], [ %i.hg, %ZSTD_decodeSequence.exit189.i.thread ]
  %i.rn = phi ptr [ %i.np, %bb.bv ], [ %i.nt, %ZSTD_decodeSequence.exit189.i.thread ] ; 11 uses
  %i.ro = phi ptr [ %i.nr, %bb.bv ], [ %i.nv, %ZSTD_decodeSequence.exit189.i.thread ] ; 2 uses
  %i.rp = ptrtoint ptr %i.ro to i64               ; 2 uses
  %i.rq = ptrtoint ptr %i.rn to i64               ; 3 uses
  %i.rr = sub i64 %i.rp, %i.rq                    ; 9 uses
  %.not171.i = icmp eq ptr %i.ro, %i.rn
  br i1 %.not171.i, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %.thread390
  %i.rs = ptrtoint ptr %i.b to i64
  %i.rt = ptrtoint ptr %.0134.i289 to i64         ; 6 uses
  %i.ru = sub i64 %i.rs, %i.rt
  %i.rv = icmp ugt i64 %i.rr, %i.ru
  br i1 %i.rv, label %.thread238, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rw = sub i64 %i.rt, %i.rq                    ; 3 uses
  %i.rx = getelementptr inbounds i8, ptr %.0134.i289, i64 %i.rr ; 3 uses
  %i.ry = icmp slt i64 %i.rr, 8
  %i.rz = icmp sgt i64 %i.rw, -8
  %or.cond.i = or i1 %i.ry, %i.rz
  br i1 %or.cond.i, label %.preheader.i, label %bb.by

.preheader.i:                                     ; preds = %bb.bx
  %i.sa = icmp sgt i64 %i.rr, 0
  br i1 %i.sa, label %iter.check107, label %ZSTD_safecopyDstBeforeSrc.exit

iter.check107:                                    ; preds = %.preheader.i
  %i.sb = add i64 %i.rt, %i.rp
  %i.sc = sub i64 %i.sb, %i.rq
  %i.sd = add i64 %i.rt, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.sc, i64 %i.sd)
  %i.se = sub i64 %umax, %i.rt                    ; 7 uses
  %min.iters.check91 = icmp ult i64 %i.se, 8
  %i.sf = add i64 %i.rw, -1
  %diff.check93 = icmp ult i64 %i.sf, 31
  %or.cond124 = or i1 %min.iters.check91, %diff.check93
  br i1 %or.cond124, label %.lr.ph41.i.preheader, label %vector.main.loop.iter.check94

vector.main.loop.iter.check94:                    ; preds = %iter.check107
  %min.iters.check95 = icmp ult i64 %i.se, 32
  br i1 %min.iters.check95, label %vec.epilog.ph111, label %vector.ph96

vector.ph96:                                      ; preds = %vector.main.loop.iter.check94
  %i.sg = and i64 %i.se, 24
  %n.vec97 = and i64 %i.se, -32                   ; 5 uses
  %i.sh = getelementptr i8, ptr %.0134.i289, i64 %n.vec97
  %i.si = getelementptr i8, ptr %i.rn, i64 %n.vec97
  br label %vector.body98

vector.body98:                                    ; preds = %vector.ph96, %vector.body98
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next104, %vector.body98 ] ; 3 uses
  %next.gep100 = getelementptr i8, ptr %.0134.i289, i64 %index99 ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.rn, i64 %index99 ; 2 uses
  %i.sj = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load102 = load <16 x i8>, ptr %next.gep101, align 1, !tbaa !28
  %wide.load103 = load <16 x i8>, ptr %i.sj, align 1, !tbaa !28
  %i.sk = getelementptr i8, ptr %next.gep100, i64 16
  store <16 x i8> %wide.load102, ptr %next.gep100, align 1, !tbaa !28
  store <16 x i8> %wide.load103, ptr %i.sk, align 1, !tbaa !28
  %index.next104 = add nuw i64 %index99, 32       ; 2 uses
  %i.sl = icmp eq i64 %index.next104, %n.vec97
  br i1 %i.sl, label %middle.block105, label %vector.body98, !llvm.loop !188

middle.block105:                                  ; preds = %vector.body98
  %cmp.n106 = icmp eq i64 %i.se, %n.vec97
  br i1 %cmp.n106, label %ZSTD_safecopyDstBeforeSrc.exit, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block105
  %min.epilog.iters.check110 = icmp eq i64 %i.sg, 0
  br i1 %min.epilog.iters.check110, label %.lr.ph41.i.preheader, label %vec.epilog.ph111, !prof !86

vec.epilog.ph111:                                 ; preds = %vector.main.loop.iter.check94, %vec.epilog.iter.check108
  %vec.epilog.resume.val112 = phi i64 [ %n.vec97, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check94 ]
  %n.vec113 = and i64 %i.se, -8                   ; 4 uses
  %i.sm = getelementptr i8, ptr %.0134.i289, i64 %n.vec113
  %i.sn = getelementptr i8, ptr %i.rn, i64 %n.vec113
  br label %vec.epilog.vector.body114

vec.epilog.vector.body114:                        ; preds = %vec.epilog.vector.body114, %vec.epilog.ph111
  %index115 = phi i64 [ %vec.epilog.resume.val112, %vec.epilog.ph111 ], [ %index.next119, %vec.epilog.vector.body114 ] ; 3 uses
  %next.gep116 = getelementptr i8, ptr %.0134.i289, i64 %index115
  %next.gep117 = getelementptr i8, ptr %i.rn, i64 %index115
  %wide.load118 = load <8 x i8>, ptr %next.gep117, align 1, !tbaa !28
  store <8 x i8> %wide.load118, ptr %next.gep116, align 1, !tbaa !28
  %index.next119 = add nuw i64 %index115, 8       ; 2 uses
  %i.so = icmp eq i64 %index.next119, %n.vec113
  br i1 %i.so, label %vec.epilog.middle.block120, label %vec.epilog.vector.body114, !llvm.loop !189

vec.epilog.middle.block120:                       ; preds = %vec.epilog.vector.body114
  %cmp.n121 = icmp eq i64 %i.se, %n.vec113
  br i1 %cmp.n121, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check107, %vec.epilog.iter.check108, %vec.epilog.middle.block120
  %.040.i.ph = phi ptr [ %.0134.i289, %iter.check107 ], [ %i.sh, %vec.epilog.iter.check108 ], [ %i.sm, %vec.epilog.middle.block120 ]
  %.02939.i.ph = phi ptr [ %i.rn, %iter.check107 ], [ %i.si, %vec.epilog.iter.check108 ], [ %i.sn, %vec.epilog.middle.block120 ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.lr.ph41.i
  %.040.i = phi ptr [ %i.sr, %.lr.ph41.i ], [ %.040.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %.02939.i = phi ptr [ %i.sp, %.lr.ph41.i ], [ %.02939.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.02939.i, i64 1
  %i.sq = load i8, ptr %.02939.i, align 1, !tbaa !28
  %i.sr = getelementptr inbounds nuw i8, ptr %.040.i, i64 1 ; 2 uses
  store i8 %i.sq, ptr %.040.i, align 1, !tbaa !28
  %i.ss = icmp ult ptr %i.sr, %i.rx
  br i1 %i.ss, label %.lr.ph41.i, label %ZSTD_safecopyDstBeforeSrc.exit, !llvm.loop !190

bb.by:                                            ; preds = %bb.bx
  %i.st = icmp samesign ugt i64 %i.rr, 31
  %i.su = icmp samesign ult i64 %i.rw, -16
  %or.cond3.i = and i1 %i.st, %i.su
  br i1 %or.cond3.i, label %bb.bz, label %iter.check

bb.bz:                                            ; preds = %bb.by
  %i.sv = getelementptr inbounds i8, ptr %i.rx, i64 -32
  %i.sw = add nsw i64 %i.rr, -32                  ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.0134.i289, i64 %i.sw
  %.val35.i = load <2 x i64>, ptr %i.rn, align 1, !tbaa !28
  store <2 x i64> %.val35.i, ptr %.0134.i289, align 1, !tbaa !28
  %i.sy = icmp samesign ult i64 %i.rr, 49
  br i1 %i.sy, label %.thread.i68, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sz = getelementptr inbounds nuw i8, ptr %.0134.i289, i64 16
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %bb.ca
  %.pn.i.i64 = phi ptr [ %i.rn, %bb.ca ], [ %i.tb, %bb.cb ] ; 2 uses
  %.1.i.i65 = phi ptr [ %i.sz, %bb.ca ], [ %i.tc, %bb.cb ] ; 3 uses
  %.130.i.i66 = getelementptr inbounds nuw i8, ptr %.pn.i.i64, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i66, align 1, !tbaa !28
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i65, align 1, !tbaa !28
  %i.ta = getelementptr inbounds nuw i8, ptr %.1.i.i65, i64 16
  %i.tb = getelementptr inbounds nuw i8, ptr %.pn.i.i64, i64 32 ; 2 uses
  %.val.i67 = load <2 x i64>, ptr %i.tb, align 1, !tbaa !28
  store <2 x i64> %.val.i67, ptr %i.ta, align 1, !tbaa !28
  %i.tc = getelementptr inbounds nuw i8, ptr %.1.i.i65, i64 32 ; 2 uses
  %i.td = icmp ult ptr %i.tc, %i.sx
  br i1 %i.td, label %bb.cb, label %.thread.i68, !llvm.loop !8

.thread.i68:                                      ; preds = %bb.cb, %bb.bz
  %i.te = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.sw
  br label %iter.check

iter.check:                                       ; preds = %bb.by, %.thread.i68
  %.148.i = phi ptr [ %i.sv, %.thread.i68 ], [ %.0134.i289, %bb.by ] ; 7 uses
  %.13047.i = phi ptr [ %i.te, %.thread.i68 ], [ %i.rn, %bb.by ] ; 6 uses
  %.143.i = ptrtoaddr ptr %.148.i to i64          ; 2 uses
  %i.tf = add i64 %i.rr, %i.rt
  %i.tg = sub i64 %i.tf, %.143.i                  ; 8 uses
  %scevgep.i = getelementptr i8, ptr %.148.i, i64 %i.tg
  %min.iters.check = icmp ult i64 %i.tg, 8
  %.13047.i77 = ptrtoaddr ptr %.13047.i to i64
  %i.th = sub i64 %.13047.i77, %.143.i
  %diff.check = icmp ugt i64 %i.th, -32
  %or.cond125 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond125, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.tg, 32
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ti = and i64 %i.tg, 24
  %n.vec = and i64 %i.tg, -32                     ; 5 uses
  %i.tj = getelementptr i8, ptr %.148.i, i64 %n.vec
  %i.tk = getelementptr i8, ptr %.13047.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.148.i, i64 %index ; 2 uses
  %next.gep79 = getelementptr i8, ptr %.13047.i, i64 %index ; 2 uses
  %i.tl = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep79, align 1, !tbaa !28
  %wide.load80 = load <16 x i8>, ptr %i.tl, align 1, !tbaa !28
  %i.tm = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !28
  store <16 x i8> %wide.load80, ptr %i.tm, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.tn = icmp eq i64 %index.next, %n.vec
  br i1 %i.tn, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tg, %n.vec
  br i1 %cmp.n, label %ZSTD_safecopyDstBeforeSrc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ti, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec81 = and i64 %i.tg, -8                    ; 4 uses
  %i.to = getelementptr i8, ptr %.148.i, i64 %n.vec81
  %i.tp = getelementptr i8, ptr %.13047.i, i64 %n.vec81
end_hunk_6
begin_hunk_7_@ZSTD_decompressSequencesSplitLitBuffer_bmi2:bb.a
  %i.uf = getelementptr inbounds nuw i8, ptr %.2136.i, i64 %i.tz
  %i.ug = icmp ugt ptr %i.uf, %i.ue
  %or.cond.i191.i = select i1 %i.ud, i1 true, i1 %i.ug, !prof !87
  br i1 %or.cond.i191.i, label %bb.cd, label %.critedge.i192.i, !prof !87

.critedge.i192.i:                                 ; preds = %bb.cc
  %.val15 = load <2 x i64>, ptr %i.tv, align 4, !tbaa !28
  store <2 x i64> %.val15, ptr %.2136.i, align 1, !tbaa !28
  %i.uh = icmp samesign ugt i64 %.sroa.082.2, 16
  br i1 %i.uh, label %bb.ce, label %ZSTD_wildcopy.exit250.i, !prof !58

bb.cd:                                            ; preds = %bb.cc
  %i.ui = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.2136.i, ptr noundef %i.b, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.tw, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %.loopexit

bb.ce:                                            ; preds = %.critedge.i192.i
  %i.uj = getelementptr inbounds nuw i8, ptr %.2136.i, i64 16
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.val10 = load <2 x i64>, ptr %i.uk, align 4, !tbaa !28
  store <2 x i64> %.val10, ptr %i.uj, align 1, !tbaa !28
  %i.ul = icmp samesign ult i64 %.sroa.082.2, 33
  br i1 %i.ul, label %ZSTD_wildcopy.exit250.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.um = getelementptr inbounds nuw i8, ptr %.2136.i, i64 32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.pn.i245.i = phi ptr [ %i.uk, %bb.cf ], [ %i.uo, %bb.cg ] ; 2 uses
  %.1.i246.i = phi ptr [ %i.um, %bb.cf ], [ %i.up, %bb.cg ] ; 3 uses
  %.130.i247.i = getelementptr inbounds nuw i8, ptr %.pn.i245.i, i64 16
  %.130.i247.i.val = load <2 x i64>, ptr %.130.i247.i, align 1, !tbaa !28
  store <2 x i64> %.130.i247.i.val, ptr %.1.i246.i, align 1, !tbaa !28
  %i.un = getelementptr inbounds nuw i8, ptr %.1.i246.i, i64 16
  %i.uo = getelementptr inbounds nuw i8, ptr %.pn.i245.i, i64 32 ; 2 uses
  %.val9 = load <2 x i64>, ptr %i.uo, align 1, !tbaa !28
  store <2 x i64> %.val9, ptr %i.un, align 1, !tbaa !28
  %i.up = getelementptr inbounds nuw i8, ptr %.1.i246.i, i64 32 ; 2 uses
  %i.uq = icmp ult ptr %i.up, %i.ty
  br i1 %i.uq, label %bb.cg, label %ZSTD_wildcopy.exit250.i, !llvm.loop !8

ZSTD_wildcopy.exit250.i:                          ; preds = %bb.cg, %bb.ce, %.critedge.i192.i
  store ptr %i.ua, ptr %i.a, align 8, !tbaa !49
  %i.ur = ptrtoint ptr %i.ty to i64               ; 2 uses
  %i.us = sub i64 %i.ur, %i.gu
  %i.ut = icmp ugt i64 %.sink, %i.us
  br i1 %i.ut, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %ZSTD_wildcopy.exit250.i
  %i.uu = sub i64 %i.ur, %i.gv
  %i.uv = icmp ugt i64 %.sink, %i.uu
  br i1 %i.uv, label %.loopexit.thread, label %bb.ci, !prof !58

.loopexit.thread:                                 ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread238

bb.ci:                                            ; preds = %bb.ch
  %i.uw = ptrtoint ptr %i.uc to i64
  %i.ux = sub i64 %i.uw, %i.gu                    ; 3 uses
  %i.uy = getelementptr inbounds i8, ptr %i.l, i64 %i.ux ; 2 uses
  %i.uz = add nsw i64 %i.ux, %.sroa.680.0         ; 3 uses
  %.not.i194.i = icmp sgt i64 %i.uz, 0
  br i1 %.not.i194.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ty, ptr align 1 %i.uy, i64 %.sroa.680.0, i1 false)
  br label %.loopexit

bb.ck:                                            ; preds = %bb.ci
  %gepdiff.i195.i = sub nsw i64 0, %i.ux          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ty, ptr align 1 %i.uy, i64 %gepdiff.i195.i, i1 false)
  %i.va = getelementptr inbounds nuw i8, ptr %i.ty, i64 %gepdiff.i195.i
  store i64 %i.uz, ptr %.sroa.985.0..sroa_idx86, align 8, !tbaa !89
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %ZSTD_wildcopy.exit250.i
  %.0175 = phi ptr [ %i.va, %bb.ck ], [ %i.ty, %ZSTD_wildcopy.exit250.i ] ; 12 uses
  %.0173 = phi ptr [ %i.h, %bb.ck ], [ %i.uc, %ZSTD_wildcopy.exit250.i ] ; 9 uses
  %i.vb = phi i64 [ %i.uz, %bb.ck ], [ %.sroa.680.0, %ZSTD_wildcopy.exit250.i ] ; 5 uses
  %i.vc = icmp ugt i64 %.sink, 15
  br i1 %i.vc, label %bb.cm, label %bb.cp, !prof !83

bb.cm:                                            ; preds = %bb.cl
  %i.vd = getelementptr inbounds i8, ptr %.0175, i64 %i.vb
  %.val12 = load <2 x i64>, ptr %.0173, align 1, !tbaa !28
  store <2 x i64> %.val12, ptr %.0175, align 1, !tbaa !28
  %i.ve = icmp slt i64 %i.vb, 17
  br i1 %i.ve, label %.loopexit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vf = getelementptr inbounds nuw i8, ptr %.0175, i64 16
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.pn.i252.i = phi ptr [ %.0173, %bb.cn ], [ %i.vh, %bb.co ] ; 2 uses
  %.1.i253.i = phi ptr [ %i.vf, %bb.cn ], [ %i.vi, %bb.co ] ; 3 uses
  %.130.i254.i = getelementptr inbounds nuw i8, ptr %.pn.i252.i, i64 16
  %.130.i254.i.val = load <2 x i64>, ptr %.130.i254.i, align 1, !tbaa !28
  store <2 x i64> %.130.i254.i.val, ptr %.1.i253.i, align 1, !tbaa !28
  %i.vg = getelementptr inbounds nuw i8, ptr %.1.i253.i, i64 16
  %i.vh = getelementptr inbounds nuw i8, ptr %.pn.i252.i, i64 32 ; 2 uses
  %.val11 = load <2 x i64>, ptr %i.vh, align 1, !tbaa !28
  store <2 x i64> %.val11, ptr %i.vg, align 1, !tbaa !28
  %i.vi = getelementptr inbounds nuw i8, ptr %.1.i253.i, i64 32 ; 2 uses
  %i.vj = icmp ult ptr %i.vi, %i.vd
  br i1 %i.vj, label %bb.co, label %.loopexit, !llvm.loop !8

bb.cp:                                            ; preds = %bb.cl
  %i.vk = icmp samesign ult i64 %.sink, 8
  br i1 %i.vk, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !43
  %i.vn = load i8, ptr %.0173, align 1, !tbaa !28
  store i8 %i.vn, ptr %.0175, align 1, !tbaa !28
  %i.vo = getelementptr inbounds nuw i8, ptr %.0173, i64 1
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !28
  %i.vq = getelementptr inbounds nuw i8, ptr %.0175, i64 1
  store i8 %i.vp, ptr %i.vq, align 1, !tbaa !28
  %i.vr = getelementptr inbounds nuw i8, ptr %.0173, i64 2
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !28
  %i.vt = getelementptr inbounds nuw i8, ptr %.0175, i64 2
  store i8 %i.vs, ptr %i.vt, align 1, !tbaa !28
  %i.vu = getelementptr inbounds nuw i8, ptr %.0173, i64 3
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !28
  %i.vw = getelementptr inbounds nuw i8, ptr %.0175, i64 3
  store i8 %i.vv, ptr %i.vw, align 1, !tbaa !28
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !43
  %i.vz = zext i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw i8, ptr %.0173, i64 %i.vz ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.0175, i64 4
  %.val30 = load i32, ptr %i.wa, align 1
  store i32 %.val30, ptr %i.wb, align 1
  %i.wc = sext i32 %i.vm to i64
  %i.wd = sub nsw i64 0, %i.wc
  %i.we = getelementptr inbounds i8, ptr %i.wa, i64 %i.wd
  br label %ZSTD_overlapCopy8.exit286.i

bb.cr:                                            ; preds = %bb.cp
  %.val33 = load i64, ptr %.0173, align 1
  store i64 %.val33, ptr %.0175, align 1
  br label %ZSTD_overlapCopy8.exit286.i

ZSTD_overlapCopy8.exit286.i:                      ; preds = %bb.cr, %bb.cq
  %.1174 = phi ptr [ %i.we, %bb.cq ], [ %.0173, %bb.cr ]
  %i.wf = getelementptr inbounds nuw i8, ptr %.1174, i64 8 ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.0175, i64 8 ; 3 uses
  %i.wh = icmp ugt i64 %i.vb, 8
  br i1 %i.wh, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %ZSTD_overlapCopy8.exit286.i
  %i.wi = ptrtoint ptr %i.wg to i64
  %i.wj = ptrtoint ptr %i.wf to i64
  %i.wk = sub i64 %i.wi, %i.wj
  %i.wl = getelementptr i8, ptr %.0175, i64 %i.vb ; 2 uses
  %i.wm = icmp slt i64 %i.wk, 16
  br i1 %i.wm, label %.preheader264, label %bb.ct

.preheader264:                                    ; preds = %bb.cs, %.preheader264
  %.029.i262.i = phi ptr [ %i.wo, %.preheader264 ], [ %i.wf, %bb.cs ] ; 2 uses
  %.0.i263.i = phi ptr [ %i.wn, %.preheader264 ], [ %i.wg, %bb.cs ] ; 2 uses
  %.029.i262.i.val = load i64, ptr %.029.i262.i, align 1
  store i64 %.029.i262.i.val, ptr %.0.i263.i, align 1
  %i.wn = getelementptr inbounds nuw i8, ptr %.0.i263.i, i64 8 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.029.i262.i, i64 8
  %i.wp = icmp ult ptr %i.wn, %i.wl
  br i1 %i.wp, label %.preheader264, label %.loopexit, !llvm.loop !9

bb.ct:                                            ; preds = %bb.cs
  %.val14 = load <2 x i64>, ptr %i.wf, align 1, !tbaa !28
  store <2 x i64> %.val14, ptr %i.wg, align 1, !tbaa !28
  %i.wq = icmp slt i64 %i.vb, 25
  br i1 %i.wq, label %.loopexit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.wr = getelementptr inbounds nuw i8, ptr %.0175, i64 24
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %.pn.i259.i = phi ptr [ %i.wf, %bb.cu ], [ %i.wt, %bb.cv ] ; 2 uses
  %.1.i260.i = phi ptr [ %i.wr, %bb.cu ], [ %i.wu, %bb.cv ] ; 3 uses
  %.130.i261.i = getelementptr inbounds nuw i8, ptr %.pn.i259.i, i64 16
  %.130.i261.i.val = load <2 x i64>, ptr %.130.i261.i, align 1, !tbaa !28
  store <2 x i64> %.130.i261.i.val, ptr %.1.i260.i, align 1, !tbaa !28
  %i.ws = getelementptr inbounds nuw i8, ptr %.1.i260.i, i64 16
  %i.wt = getelementptr inbounds nuw i8, ptr %.pn.i259.i, i64 32 ; 2 uses
  %.val13 = load <2 x i64>, ptr %i.wt, align 1, !tbaa !28
  store <2 x i64> %.val13, ptr %i.ws, align 1, !tbaa !28
  %i.wu = getelementptr inbounds nuw i8, ptr %.1.i260.i, i64 32 ; 2 uses
  %i.wv = icmp ult ptr %i.wu, %i.wl
  br i1 %i.wv, label %bb.cv, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %bb.cv, %.preheader264, %bb.co, %bb.cd, %bb.cj, %ZSTD_overlapCopy8.exit286.i, %bb.cm, %bb.ct
  %.0.i193.i = phi i64 [ %i.ui, %bb.cd ], [ %i.tz, %bb.co ], [ %i.tz, %bb.cj ], [ %i.tz, %ZSTD_overlapCopy8.exit286.i ], [ %i.tz, %bb.cm ], [ %i.tz, %.preheader264 ], [ %i.tz, %bb.ct ], [ %i.tz, %bb.cv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ww = icmp ult i64 %.0.i193.i, -119
  %i.wx = getelementptr inbounds nuw i8, ptr %.2136.i, i64 %.0.i193.i ; 2 uses
  %i.wy = add nsw i32 %.0157.i288, -1             ; 2 uses
  br i1 %i.ww, label %bb.cw, label %.thread238

bb.cw:                                            ; preds = %.loopexit
  %.not255 = icmp eq i32 %i.wy, 0
  br i1 %.not255, label %.thread234, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !90
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !91
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !92
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !93
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !94
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.wz = ptrtoint ptr %3 to i64
  %i.xa = ptrtoint ptr %3 to i64
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.ep
  %i.xb = phi ptr [ %i.rh, %bb.cx ], [ %i.adp, %bb.ep ] ; 8 uses
  %i.xc = phi i32 [ %i.ri, %bb.cx ], [ %i.adq, %bb.ep ] ; 5 uses
  %i.xd = phi i64 [ %i.rj, %bb.cx ], [ %i.adr, %bb.ep ] ; 6 uses
  %i.xe = phi i64 [ %i.jv, %bb.cx ], [ %i.zy, %bb.ep ] ; 2 uses
  %i.xf = phi i64 [ %.sink469, %bb.cx ], [ %.sink471, %bb.ep ] ; 6 uses
  %i.xg = phi i64 [ %.sink, %bb.cx ], [ %.sink470, %bb.ep ] ; 6 uses
  %i.xh = phi i64 [ %i.rk, %bb.cx ], [ %i.ads, %bb.ep ] ; 2 uses
  %i.xi = phi i64 [ %i.rl, %bb.cx ], [ %i.adt, %bb.ep ] ; 2 uses
  %i.xj = phi i64 [ %i.rm, %bb.cx ], [ %i.adu, %bb.ep ] ; 2 uses
  %.7141.i292 = phi ptr [ %i.wx, %bb.cx ], [ %i.agv, %bb.ep ] ; 7 uses
  %.4161.i291 = phi i32 [ %i.wy, %bb.cx ], [ %i.agw, %bb.ep ] ; 2 uses
  %.not259 = icmp eq i32 %.4161.i291, 1
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.xj ; 4 uses
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.xh ; 4 uses
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.xi ; 4 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !53, !noalias !197
  %i.xp = zext i32 %i.xo to i64                   ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xk, i64 4
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !53, !noalias !197 ; 2 uses
  %i.xs = zext i32 %i.xr to i64                   ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xm, i64 4
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !53, !noalias !197 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xk, i64 2
  %i.xw = load i8, ptr %i.xv, align 2, !tbaa !61, !noalias !197 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xl, i64 2
  %i.xy = load i8, ptr %i.xx, align 2, !tbaa !61, !noalias !197 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xm, i64 2
  %i.ya = load i8, ptr %i.xz, align 2, !tbaa !61, !noalias !197 ; 4 uses
  %i.yb = zext i8 %i.xw to i32                    ; 2 uses
  %i.yc = zext i8 %i.xy to i32                    ; 2 uses
  %i.yd = add i8 %i.xy, %i.xw
  %i.ye = add i8 %i.yd, %i.ya
  %i.yf = load i16, ptr %i.xk, align 4, !tbaa !60, !noalias !197
  %i.yg = load i16, ptr %i.xl, align 4, !tbaa !60, !noalias !197
  %i.yh = load i16, ptr %i.xm, align 4, !tbaa !60, !noalias !197
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xk, i64 3
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !59, !noalias !197 ; 2 uses
  %i.yk = zext i8 %i.yj to i32
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xl, i64 3
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !59, !noalias !197 ; 2 uses
  %i.yn = zext i8 %i.ym to i32
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xm, i64 3
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !59, !noalias !197 ; 2 uses
  %i.yq = zext i8 %i.yp to i32
  %i.yr = icmp ugt i8 %i.ya, 1
  br i1 %i.yr, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ys = zext i8 %i.ya to i32                    ; 2 uses
  %i.yt = and i32 %i.xc, 63
  %i.yu = zext nneg i32 %i.yt to i64
  %i.yv = shl i64 %i.xd, %i.yu
  %i.yw = sub nsw i32 0, %i.ys
  %i.yx = and i32 %i.yw, 63
  %i.yy = zext nneg i32 %i.yx to i64
  %i.yz = lshr i64 %i.yv, %i.yy
  %i.za = add i32 %i.xc, %i.ys                    ; 2 uses
  store i32 %i.za, ptr %i.cn, align 8, !tbaa !80, !noalias !197
  %i.zb = zext i32 %i.xu to i64
  %i.zc = add i64 %i.yz, %i.zb
  store i64 %i.xf, ptr %i.gt, align 8, !tbaa !55, !noalias !197
  br label %bb.df

bb.da:                                            ; preds = %bb.cy
  %i.zd = icmp eq i32 %i.xr, 0                    ; 3 uses
  %i.ze = icmp eq i8 %i.ya, 0
  br i1 %i.ze, label %bb.db, label %bb.dc, !prof !83

bb.db:                                            ; preds = %bb.da
  %i.zf = select i1 %i.zd, i64 %i.xf, i64 %i.xg
  %i.zg = select i1 %i.zd, i64 %i.xg, i64 %i.xf
  br label %bb.df

bb.dc:                                            ; preds = %bb.da
  %i.zh = zext i1 %i.zd to i32
  %i.zi = add i32 %i.xu, %i.zh
  %i.zj = zext i32 %i.zi to i64
  %i.zk = and i32 %i.xc, 63
  %i.zl = zext nneg i32 %i.zk to i64
  %i.zm = shl i64 %i.xd, %i.zl
  %i.zn = lshr i64 %i.zm, 63
  %i.zo = add i32 %i.xc, 1                        ; 3 uses
  store i32 %i.zo, ptr %i.cn, align 8, !tbaa !80, !noalias !197
  %i.zp = add nuw nsw i64 %i.zn, %i.zj            ; 3 uses
  %i.zq = icmp eq i64 %i.zp, 3
  br i1 %i.zq, label %.thread217, label %bb.dd

.thread217:                                       ; preds = %bb.dc
  %i.zr = add i64 %i.xg, -1                       ; 2 uses
  %.not.i.i218 = icmp eq i64 %i.zr, 0
  %i.zs = select i1 %.not.i.i218, i64 -1, i64 %i.zr
  br label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.zp
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !55, !noalias !197 ; 2 uses
  %.not.i.i = icmp eq i64 %i.zu, 0
  %i.zv = select i1 %.not.i.i, i64 -1, i64 %i.zu  ; 2 uses
  %.not101.i.i = icmp eq i64 %i.zp, 1
  br i1 %.not101.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.thread217, %bb.dd
  %i.zw = phi i64 [ %i.zs, %.thread217 ], [ %i.zv, %bb.dd ]
  store i64 %i.xf, ptr %i.gt, align 8, !tbaa !55, !noalias !197
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de, %bb.db, %bb.cz
  %i.zx = phi i32 [ %i.za, %bb.cz ], [ %i.xc, %bb.db ], [ %i.zo, %bb.de ], [ %i.zo, %bb.dd ] ; 3 uses
  %.sink471 = phi i64 [ %i.xg, %bb.cz ], [ %i.zg, %bb.db ], [ %i.xg, %bb.de ], [ %i.xg, %bb.dd ] ; 3 uses
  %.sink470 = phi i64 [ %i.zc, %bb.cz ], [ %i.zf, %bb.db ], [ %i.zw, %bb.de ], [ %i.zv, %bb.dd ] ; 11 uses
  %i.zy = phi i64 [ %i.xf, %bb.cz ], [ %i.xe, %bb.db ], [ %i.xf, %bb.de ], [ %i.xe, %bb.dd ] ; 2 uses
  store i64 %.sink471, ptr %i.gs, align 8, !tbaa !55, !noalias !197
  store i64 %.sink470, ptr %i.o, align 8, !tbaa !55, !noalias !197
  %.not102.i.i = icmp eq i8 %i.xy, 0
  br i1 %.not102.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.zz = and i32 %i.zx, 63
  %i.aaa = zext nneg i32 %i.zz to i64
  %i.aab = shl i64 %i.xd, %i.aaa
  %i.aac = sub nsw i32 0, %i.yc
  %i.aad = and i32 %i.aac, 63
  %i.aae = zext nneg i32 %i.aad to i64
  %i.aaf = lshr i64 %i.aab, %i.aae
  %i.aag = add i32 %i.zx, %i.yc                   ; 2 uses
  store i32 %i.aag, ptr %i.cn, align 8, !tbaa !80, !noalias !197
  %i.aah = add i64 %i.aaf, %i.xp
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.aai = phi i32 [ %i.zx, %bb.df ], [ %i.aag, %bb.dg ] ; 8 uses
  %.sroa.6.0 = phi i64 [ %i.xp, %bb.df ], [ %i.aah, %bb.dg ] ; 5 uses
  %i.aaj = icmp ugt i8 %i.ye, 30
  br i1 %i.aaj, label %bb.di, label %BIT_reloadDStream.exit217.i, !prof !58

bb.di:                                            ; preds = %bb.dh
  %i.aak = icmp ugt i32 %i.aai, 64
  br i1 %i.aak, label %bb.dj, label %bb.dk, !prof !58

bb.dj:                                            ; preds = %bb.di
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.cx, align 8, !tbaa !75, !noalias !197
  br label %BIT_reloadDStream.exit217.i

bb.dk:                                            ; preds = %bb.di
  %.not.i211.i = icmp ult ptr %i.xb, %i.ab
  br i1 %.not.i211.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aal = lshr i32 %i.aai, 3
  %i.aam = zext nneg i32 %i.aal to i64
  %i.aan = sub nsw i64 0, %i.aam
  %i.aao = getelementptr inbounds i8, ptr %i.xb, i64 %i.aan ; 3 uses
  store ptr %i.aao, ptr %i.cx, align 8, !tbaa !75, !noalias !197
  %i.aap = and i32 %i.aai, 7                      ; 2 uses
  store i32 %i.aap, ptr %i.cn, align 8, !tbaa !80, !noalias !197
  %.val.i75 = load i64, ptr %i.aao, align 1, !tbaa !55, !noalias !197 ; 2 uses
  store i64 %.val.i75, ptr %9, align 8, !tbaa !76, !noalias !197
  br label %BIT_reloadDStream.exit217.i

bb.dm:                                            ; preds = %bb.dk
  %i.aaq = icmp eq ptr %i.xb, %3
  br i1 %i.aaq, label %BIT_reloadDStream.exit217.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aar = lshr i32 %i.aai, 3                     ; 2 uses
  %i.aas = zext nneg i32 %i.aar to i64
  %i.aat = sub nsw i64 0, %i.aas
  %i.aau = getelementptr inbounds i8, ptr %i.xb, i64 %i.aat
  %i.aav = icmp ult ptr %i.aau, %3
  %i.aaw = ptrtoint ptr %i.xb to i64
  %i.aax = sub i64 %i.aaw, %i.wz
  %i.aay = trunc i64 %i.aax to i32
  %.021.i213.i = select i1 %i.aav, i32 %i.aay, i32 %i.aar ; 2 uses
  %i.aaz = zext i32 %.021.i213.i to i64
  %i.aba = sub nsw i64 0, %i.aaz
  %i.abb = getelementptr inbounds i8, ptr %i.xb, i64 %i.aba ; 3 uses
  store ptr %i.abb, ptr %i.cx, align 8, !tbaa !75, !noalias !197
  %i.abc = shl i32 %.021.i213.i, 3
  %i.abd = sub i32 %i.aai, %i.abc                 ; 2 uses
  store i32 %i.abd, ptr %i.cn, align 8, !tbaa !80, !noalias !197
end_hunk_7
