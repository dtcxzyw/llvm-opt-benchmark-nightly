Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_decompress_block?download=true
inline.NumInlined: 585
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
  store ptr %.sink, ptr %i.hz, align 8, !tbaa !42
  %.sink37.i242.ph = getelementptr inbounds nuw i8, ptr %.sink, i64 %.0207
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 30360
  store ptr %.sink37.i242.ph, ptr %i.ia, align 8, !tbaa !43
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 %.sink35.i243.ph, ptr %i.ib, align 8, !tbaa !44
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sink, i8 %i.id, i64 %.0207, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !42
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 30120
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !47
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 30152
  store i64 %.0207, ptr %i.ih, align 8, !tbaa !48
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
  %i.k = load i16, ptr %i.j, align 2, !tbaa !24   ; 3 uses
  %i.l = icmp eq i16 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add i32 %.0123.i9.i, -1
  %i.n = zext i32 %.0123.i9.i to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.q, ptr %i.p, align 4, !tbaa !50
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
  store i16 %.sink.i, ptr %i.s, align 2, !tbaa !24
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !24   ; 3 uses
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
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i.1 = phi i16 [ 1, %bb.i ], [ %i.u, %bb.h ]
  %.1124.i.i.1 = phi i32 [ %i.x, %bb.i ], [ %.1124.i.i, %bb.h ] ; 3 uses
  %.sroa.0.2.i.i.1 = phi i32 [ %.sroa.0.2.i.i, %bb.i ], [ %spec.select.i.i.1, %bb.h ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.next.i
  store i16 %.sink.i.1, ptr %i.ac, align 2, !tbaa !24
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
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !24 ; 3 uses
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
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !50
  br label %._crit_edge.i.epilog-lcssa

._crit_edge.i.epilog-lcssa:                       ; preds = %bb.l, %bb.k
  %.sink.i.epil = phi i16 [ 1, %bb.l ], [ %i.ae, %bb.k ]
  %.1124.i.i.epil = phi i32 [ %i.ah, %bb.l ], [ %.0123.i9.i.epil.init, %bb.k ]
  %.sroa.0.2.i.i.epil = phi i32 [ %.sroa.0.0.i10.i.epil.init, %bb.l ], [ %spec.select.i.i.epil, %bb.k ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.i.epil.init
  store i16 %.sink.i.epil, ptr %i.am, align 2, !tbaa !24
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
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !24 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0121.i27.i ; 3 uses
  store i64 %.0120.i28.i, ptr %i.ay, align 1, !tbaa !52
  %i.az = icmp sgt i16 %i.ax, 8
  br i1 %i.az, label %.lr.ph25.preheader.i, label %._crit_edge26.i

.lr.ph25.preheader.i:                             ; preds = %.lr.ph31.i
  %i.ba = zext nneg i16 %i.ax to i64              ; 2 uses
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 16)
  %i.bc = add nsw i64 %i.bb, -9
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i16 %i.ax, 33
  br i1 %min.iters.check, label %.lr.ph25.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph25.preheader.i
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bf = shl nuw nsw i64 %n.vec, 3
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
  store <2 x i64> %broadcast.splat, ptr %i.bj, align 1, !tbaa !52
  store <2 x i64> %broadcast.splat, ptr %i.bk, align 1, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %._crit_edge26.i, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %.lr.ph25.preheader.i, %middle.block
  %indvars.iv46.i.ph = phi i64 [ 8, %.lr.ph25.preheader.i ], [ %i.bg, %middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %.lr.ph25.i ], [ %indvars.iv46.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv46.i
  store i64 %.0120.i28.i, ptr %i.bm, align 1, !tbaa !52
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 8 ; 2 uses
  %i.bn = icmp samesign ult i64 %indvars.iv.next47.i, %i.ba
  br i1 %i.bn, label %.lr.ph25.i, label %._crit_edge26.i, !llvm.loop !107

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
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !25
  %i.bu = zext i8 %i.bt to i32
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !50
  %i.bx = add nuw nsw i64 %.0117.i33.i, %i.at
  %i.by = and i64 %i.bx, %i.as
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !25
  %i.cb = zext i8 %i.ca to i32
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !50
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
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !24 ; 5 uses
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
  store i32 %i.cp, ptr %i.cu, align 4, !tbaa !50
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph16.i
  %.1.pn.i.i = phi i32 [ %.1.i13.i, %.lr.ph16.i ], [ %.2.i.i, %bb.o ]
  %.pn.i.i = add nuw i32 %i.cl, %.1.pn.i.i
  %.2.i.i = and i32 %.pn.i.i, %i.e                ; 4 uses
  %i.cv = icmp ugt i32 %.2.i.i, %.1124.i.i.lcssa
  br i1 %i.cv, label %bb.o, label %.lr.ph16.i.1, !prof !55, !llvm.loop !3

.lr.ph16.i.1:                                     ; preds = %bb.o
  %i.cw = zext nneg i32 %.2.i.i to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %i.cp, ptr %i.cy, align 4, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph16.i.1
  %.1.pn.i.i.1 = phi i32 [ %.2.i.i, %.lr.ph16.i.1 ], [ %.2.i.i.1, %bb.p ]
  %.pn.i.i.1 = add nuw i32 %i.cl, %.1.pn.i.i.1
  %.2.i.i.1 = and i32 %.pn.i.i.1, %i.e            ; 5 uses
  %i.cz = icmp ugt i32 %.2.i.i.1, %.1124.i.i.lcssa
  br i1 %i.cz, label %bb.p, label %bb.q, !prof !55, !llvm.loop !3

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
  store i32 %i.cp, ptr %i.dd, align 4, !tbaa !50
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph16.i.epil.preheader
  %.1.pn.i.i.epil = phi i32 [ %.1.i13.i.epil.init, %.lr.ph16.i.epil.preheader ], [ %.2.i.i.epil, %bb.r ]
  %.pn.i.i.epil = add nuw i32 %i.cl, %.1.pn.i.i.epil
  %.2.i.i.epil = and i32 %.pn.i.i.epil, %i.e      ; 3 uses
  %i.de = icmp ugt i32 %.2.i.i.epil, %.1124.i.i.lcssa
  br i1 %i.de, label %bb.r, label %._crit_edge17.i, !prof !55, !llvm.loop !3

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
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !50
  %i.di = zext i32 %i.dh to i64                   ; 3 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.di ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !24 ; 2 uses
  %i.dl = add i16 %i.dk, 1
  store i16 %i.dl, ptr %i.dj, align 2, !tbaa !24
  %i.dm = zext i16 %i.dk to i32                   ; 2 uses
  %i.dn = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.dm, i1 true)
  %i.do = xor i32 %i.dn, 31
  %i.dp = sub i32 %5, %i.do                       ; 2 uses
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 3
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !56
  %i.ds = and i32 %i.dp, 255
  %i.dt = shl i32 %i.dm, %i.ds
  %i.du = sub i32 %i.dt, %i.c
  %i.dv = trunc i32 %i.du to i16
  store i16 %i.dv, ptr %i.df, align 4, !tbaa !57
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 %i.di
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !25
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store i8 %i.dx, ptr %i.dy, align 2, !tbaa !58
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.di
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !40
  store i32 %i.ea, ptr %i.dg, align 4, !tbaa !50
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
  %i.o = load i16, ptr %i.n, align 2, !tbaa !24   ; 3 uses
  %i.p = icmp eq i16 %i.o, -1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = add i32 %.0123.i9, -1
  %i.r = zext i32 %.0123.i9 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = trunc nuw i64 %indvars.iv to i32
  store i32 %i.u, ptr %i.t, align 4, !tbaa !50
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
  store i16 %.sink, ptr %i.w, align 2, !tbaa !24
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.y = load i16, ptr %i.x, align 2, !tbaa !24   ; 3 uses
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
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.1 = phi i16 [ 1, %bb.g ], [ %i.y, %bb.f ]
  %.1124.i.1 = phi i32 [ %i.ab, %bb.g ], [ %.1124.i, %bb.f ] ; 3 uses
  %.sroa.0.2.i.1 = phi i32 [ %.sroa.0.2.i, %bb.g ], [ %spec.select.i.1, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.next
  store i16 %.sink.1, ptr %i.ag, align 2, !tbaa !24
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
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !24 ; 3 uses
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
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !50
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.j, %bb.i
  %.sink.epil = phi i16 [ 1, %bb.j ], [ %i.ai, %bb.i ]
  %.1124.i.epil = phi i32 [ %i.al, %bb.j ], [ %.0123.i9.epil.init, %bb.i ]
  %.sroa.0.2.i.epil = phi i32 [ %.sroa.0.0.i10.epil.init, %bb.j ], [ %spec.select.i.epil, %bb.i ]
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.epil.init
  store i16 %.sink.epil, ptr %i.aq, align 2, !tbaa !24
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
  %i.aw = zext nneg i32 %i.e to i64               ; 3 uses
  %i.ax = zext nneg i32 %.shrunk to i64           ; 2 uses
  %i.ay = zext i32 %i.c to i64
  %i.az = shl nuw nsw i64 %i.ax, 1
  br label %.preheader

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %._crit_edge26
  %indvars.iv49 = phi i64 [ 0, %.lr.ph31.preheader ], [ %indvars.iv.next50, %._crit_edge26 ] ; 2 uses
  %.0120.i28 = phi i64 [ 0, %.lr.ph31.preheader ], [ %i.bu, %._crit_edge26 ] ; 4 uses
  %.0121.i27 = phi i64 [ 0, %.lr.ph31.preheader ], [ %i.bt, %._crit_edge26 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv49
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !24 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0121.i27 ; 3 uses
  store i64 %.0120.i28, ptr %i.bc, align 1, !tbaa !52
  %i.bd = icmp sgt i16 %i.bb, 8
  br i1 %i.bd, label %.lr.ph25.preheader, label %._crit_edge26

.lr.ph25.preheader:                               ; preds = %.lr.ph31
  %i.be = zext nneg i16 %i.bb to i64              ; 2 uses
  %i.bf = tail call i64 @llvm.umax.i64(i64 %i.be, i64 16)
  %i.bg = add nsw i64 %i.bf, -9
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i16 %i.bb, 33
  br i1 %min.iters.check, label %.lr.ph25.preheader2, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph25.preheader
  %n.vec = and i64 %i.bi, 4611686018427387900     ; 3 uses
  %i.bj = shl nuw nsw i64 %n.vec, 3
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
  store <2 x i64> %broadcast.splat, ptr %i.bn, align 1, !tbaa !52
  store <2 x i64> %broadcast.splat, ptr %i.bo, align 1, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge26, label %.lr.ph25.preheader2

.lr.ph25.preheader2:                              ; preds = %.lr.ph25.preheader, %middle.block
  %indvars.iv46.ph = phi i64 [ 8, %.lr.ph25.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph25

.lr.ph25:                                         ; preds = %.lr.ph25.preheader2, %.lr.ph25
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.lr.ph25 ], [ %indvars.iv46.ph, %.lr.ph25.preheader2 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv46
  store i64 %.0120.i28, ptr %i.bq, align 1, !tbaa !52
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 8 ; 2 uses
  %i.br = icmp samesign ult i64 %indvars.iv.next47, %i.be
  br i1 %i.br, label %.lr.ph25, label %._crit_edge26, !llvm.loop !109

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
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !25
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !50
  %i.cb = add nuw nsw i64 %.0117.i33, %i.ax
  %i.cc = and i64 %i.cb, %i.aw
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !25
  %i.cf = zext i8 %i.ce to i32
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !50
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
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !24 ; 5 uses
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
  store i32 %i.ct, ptr %i.cy, align 4, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph16
  %.1.pn.i = phi i32 [ %.1.i13, %.lr.ph16 ], [ %.2.i, %bb.l ]
  %.pn.i = add nuw i32 %i.cp, %.1.pn.i
  %.2.i = and i32 %.pn.i, %i.e                    ; 4 uses
  %i.cz = icmp ugt i32 %.2.i, %.1124.i.lcssa
  br i1 %i.cz, label %bb.l, label %.lr.ph16.1, !prof !55, !llvm.loop !3

.lr.ph16.1:                                       ; preds = %bb.l
  %i.da = zext nneg i32 %.2.i to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %i.ct, ptr %i.dc, align 4, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph16.1
  %.1.pn.i.1 = phi i32 [ %.2.i, %.lr.ph16.1 ], [ %.2.i.1, %bb.m ]
  %.pn.i.1 = add nuw i32 %i.cp, %.1.pn.i.1
  %.2.i.1 = and i32 %.pn.i.1, %i.e                ; 5 uses
  %i.dd = icmp ugt i32 %.2.i.1, %.1124.i.lcssa
  br i1 %i.dd, label %bb.m, label %bb.n, !prof !55, !llvm.loop !3

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
  store i32 %i.ct, ptr %i.dh, align 4, !tbaa !50
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph16.epil.preheader
  %.1.pn.i.epil = phi i32 [ %.1.i13.epil.init, %.lr.ph16.epil.preheader ], [ %.2.i.epil, %bb.o ]
  %.pn.i.epil = add nuw i32 %i.cp, %.1.pn.i.epil
  %.2.i.epil = and i32 %.pn.i.epil, %i.e          ; 3 uses
  %i.di = icmp ugt i32 %.2.i.epil, %.1124.i.lcssa
  br i1 %i.di, label %bb.o, label %._crit_edge17, !prof !55, !llvm.loop !3

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
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !50
  %i.dm = zext i32 %i.dl to i64                   ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.dm ; 2 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !24 ; 2 uses
  %i.dp = add i16 %i.do, 1
  store i16 %i.dp, ptr %i.dn, align 2, !tbaa !24
  %i.dq = zext i16 %i.do to i32                   ; 2 uses
  %i.dr = tail call range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.dq, i1 true)
  %i.ds = xor i32 %i.dr, 31
  %i.dt = sub i32 %5, %i.ds                       ; 2 uses
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 3
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !56
  %i.dw = and i32 %i.dt, 255
  %i.dx = shl i32 %i.dq, %i.dw
  %i.dy = sub i32 %i.dx, %i.c
  %i.dz = trunc i32 %i.dy to i16
  store i16 %i.dz, ptr %i.dj, align 4, !tbaa !57
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 %i.dm
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !25
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i8 %i.eb, ptr %i.ec, align 2, !tbaa !58
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dm
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !40
  store i32 %i.ee, ptr %i.dk, align 4, !tbaa !50
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
  %i.gb = load i32, ptr %i.b, align 4, !tbaa !40  ; 2 uses
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
  %i.gd = load i32, ptr %i.a, align 4, !tbaa !40
  call void @ZSTD_buildFSETable(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.c, i32 noundef %i.gd, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, i32 noundef %i.gb, ptr noundef nonnull %i.ao, i64 poison, i32 noundef %.val102)
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i32, ptr %i.ak, align 4, !tbaa !59
  %.pre146 = load i32, ptr %i.am, align 4, !tbaa !45
  %.val101.pre = load i32, ptr %i.ap, align 4, !tbaa !41
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
  store i32 %3, ptr %i.a, align 4, !tbaa !40
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
  %i.d = load i8, ptr %5, align 1, !tbaa !25      ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = icmp samesign ult i32 %3, %i.e
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = zext i8 %i.d to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !61
  store i32 0, ptr %0, align 4, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 0, ptr %i.n, align 1, !tbaa !56
  store i16 0, ptr %i.l, align 4, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.k, ptr %i.o, align 2, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.i, ptr %i.p, align 4, !tbaa !50
  store ptr %0, ptr %1, align 8, !tbaa !63
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  store ptr %9, ptr %1, align 8, !tbaa !63
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
  %i.s = load ptr, ptr %1, align 8, !tbaa !63     ; 9 uses
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
  br i1 %niter.ncmp.7.not, label %.epil.preheader, label %bb.h, !llvm.loop !110

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.al = call i64 @FSE_readNCount(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5, i64 noundef %6) #17 ; 2 uses
  %i.am = icmp ult i64 %i.al, -119
  br i1 %i.am, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.b, align 4, !tbaa !40  ; 2 uses
  %i.ao = icmp ugt i32 %i.an, %4
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !40
  call void @ZSTD_buildFSETable(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.ap, ptr noundef %7, ptr noundef %8, i32 noundef %i.an, ptr noundef %13, i64 poison, i32 noundef %14)
  store ptr %0, ptr %1, align 8, !tbaa !63
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
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aq, i32 0, i32 2, i32 1)
  %i.ar = add nuw nsw i64 %.046.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.epil.preheader, !llvm.loop !111

.loopexit:                                        ; preds = %.epil.preheader, %bb.g, %bb.f, %bb.c, %bb.b, %bb.l, %bb.e, %bb.d
  %.1 = phi i64 [ %.041, %bb.l ], [ -72, %bb.b ], [ 1, %bb.d ], [ -20, %bb.c ], [ 0, %bb.e ], [ -20, %bb.f ], [ 0, %bb.g ], [ 0, %.epil.preheader ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 30176 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %ZSTD_blockSizeMax.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39
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
  %i.m = load i32, ptr %i.b, align 8, !tbaa !38
  %.not.i84 = icmp eq i32 %i.m, 0
  br i1 %.not.i84, label %ZSTD_blockSizeMax.exit85, label %ZSTD_blockSizeMax.exit85.thread

ZSTD_blockSizeMax.exit85:                         ; preds = %bb.d
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 131072)
  br label %ZSTD_blockSizeMax.exit87

ZSTD_blockSizeMax.exit85.thread:                  ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 29944
  %i.o = load i32, ptr %i.n, align 8, !tbaa !39
  %i.p = zext i32 %i.o to i64
  %spec.select96 = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.p)
  br label %ZSTD_blockSizeMax.exit87

ZSTD_blockSizeMax.exit87:                         ; preds = %ZSTD_blockSizeMax.exit85.thread, %ZSTD_blockSizeMax.exit85
  %i.q = phi i64 [ %spec.select96, %ZSTD_blockSizeMax.exit85.thread ], [ %spec.select, %ZSTD_blockSizeMax.exit85 ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 30204 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !45   ; 2 uses
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
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !61 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.024.i = phi i32 [ 0, %bb.g ], [ %i.av, %bb.h ] ; 2 uses
  %.sroa.0.023.i = phi i32 [ 0, %bb.g ], [ %.sroa.0.1.i, %bb.h ]
  %i.ap = zext i32 %.024.i to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !58
  %i.at = icmp ugt i8 %i.as, 22
  %i.au = zext i1 %i.at to i32
  %.sroa.0.1.i = add i32 %.sroa.0.023.i, %i.au    ; 2 uses
  %i.av = add i32 %.024.i, 1                      ; 2 uses
  %.0.highbits.i = lshr i32 %i.av, %i.ao
  %i.aw = icmp eq i32 %.0.highbits.i, 0
  br i1 %i.aw, label %bb.h, label %ZSTD_getOffsetInfo.exit, !llvm.loop !112

ZSTD_getOffsetInfo.exit:                          ; preds = %bb.h
  %i.ax = sub i32 8, %i.ao
  %i.ay = shl i32 %.sroa.0.1.i, %i.ax
  %i.az = icmp ugt i32 %i.ay, 6
  %i.ba = zext i1 %i.az to i32
  br label %bb.i

bb.i:                                             ; preds = %ZSTD_getOffsetInfo.exit, %bb.f
  %.173 = phi i32 [ %i.y, %bb.f ], [ %i.ba, %ZSTD_getOffsetInfo.exit ]
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %.not83 = icmp eq i32 %.173, 0
  br i1 %.not83, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = tail call fastcc i64 @ZSTD_decompressSequencesLong(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %i.ab, i64 noundef %i.ac, i32 noundef %i.af)
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 30368
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !44
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
  %.val = load i32, ptr %i.b, align 4, !tbaa !41
  %.not = icmp eq i32 %.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @ZSTD_decompressSequencesLong_bmi2(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5)
  br label %bb.hv

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30368 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30352
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.idx.i.i = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 30120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30360 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67   ; 16 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68   ; 15 uses
  %.not.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i, label %bb.hm, label %bb.g

end_hunk_1
begin_hunk_2_@ZSTD_decompressSequencesSplitLitBuffer:bb.a
  %i.on = call fastcc i64 @ZSTD_execSequenceEndSplitLitBuffer(ptr noundef %.0130.i290.i, ptr noundef %i.d, ptr noundef nonnull %i.oe, ptr noundef nonnull byval(%struct.seq_t) align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.be:                                            ; preds = %.critedge.i194.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %.0130.i290.i, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %i.oa, i64 16 ; 2 uses
  %.val17.i = load <2 x i64>, ptr %i.op, align 1, !tbaa !25
  store <2 x i64> %.val17.i, ptr %i.oo, align 1, !tbaa !25
  %i.oq = icmp ult i64 %.sroa.080.0.i, 33
  br i1 %i.oq, label %ZSTD_wildcopy.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.or = getelementptr inbounds nuw i8, ptr %.0130.i290.i, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.pn.i.i.i = phi ptr [ %i.op, %bb.bf ], [ %i.ot, %bb.bg ] ; 2 uses
  %.1.i.i.i = phi ptr [ %i.or, %bb.bf ], [ %i.ou, %bb.bg ] ; 3 uses
  %.130.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.130.i.i.val.i = load <2 x i64>, ptr %.130.i.i.i, align 1, !tbaa !25
  store <2 x i64> %.130.i.i.val.i, ptr %.1.i.i.i, align 1, !tbaa !25
  %i.os = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.ot = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val16.i = load <2 x i64>, ptr %i.ot, align 1, !tbaa !25
  store <2 x i64> %.val16.i, ptr %i.os, align 1, !tbaa !25
  %i.ou = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 32 ; 2 uses
  %i.ov = icmp ult ptr %i.ou, %i.of
  br i1 %i.ov, label %bb.bg, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !8

ZSTD_wildcopy.exit.i.i:                           ; preds = %bb.bg, %bb.be, %.critedge.i194.i.i
  store ptr %i.nz, ptr %i.a, align 8, !tbaa !46
  %i.ow = ptrtoint ptr %i.of to i64               ; 2 uses
  %i.ox = sub i64 %i.ow, %i.gu
  %i.oy = icmp ugt i64 %.sink.i, %i.ox
  br i1 %i.oy, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.oz = sub i64 %i.ow, %i.gv
  %i.pa = icmp ugt i64 %.sink.i, %i.oz
  br i1 %i.pa, label %ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i, label %bb.bi, !prof !55

ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i:  ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread239.i

bb.bi:                                            ; preds = %bb.bh
  %i.pb = ptrtoint ptr %i.oi to i64
  %i.pc = sub i64 %i.pb, %i.gu                    ; 3 uses
  %i.pd = getelementptr inbounds i8, ptr %i.n, i64 %i.pc ; 2 uses
  %i.pe = add nsw i64 %i.pc, %.sroa.681.0.i       ; 3 uses
  %.not.i196.i.i = icmp sgt i64 %i.pe, 0
  br i1 %.not.i196.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.of, ptr align 1 %i.pd, i64 %.sroa.681.0.i, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i197.i.i = sub nsw i64 0, %i.pc        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.of, ptr align 1 %i.pd, i64 %gepdiff.i197.i.i, i1 false)
  %i.pf = getelementptr inbounds nuw i8, ptr %i.of, i64 %gepdiff.i197.i.i
  store i64 %i.pe, ptr %.sroa.986.0..sroa_idx.i, align 8, !tbaa !86
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %ZSTD_wildcopy.exit.i.i
  %.0179.i = phi ptr [ %i.pf, %bb.bk ], [ %i.of, %ZSTD_wildcopy.exit.i.i ] ; 12 uses
  %.0177.i = phi ptr [ %i.j, %bb.bk ], [ %i.oi, %ZSTD_wildcopy.exit.i.i ] ; 9 uses
  %i.pg = phi i64 [ %i.pe, %bb.bk ], [ %.sroa.681.0.i, %ZSTD_wildcopy.exit.i.i ] ; 5 uses
  %i.ph = icmp ugt i64 %.sink.i, 15
  br i1 %i.ph, label %bb.bm, label %bb.bp, !prof !80

bb.bm:                                            ; preds = %bb.bl
  %i.pi = getelementptr inbounds nuw i8, ptr %.0179.i, i64 %i.pg
  %.val19.i = load <2 x i64>, ptr %.0177.i, align 1, !tbaa !25
  store <2 x i64> %.val19.i, ptr %.0179.i, align 1, !tbaa !25
  %i.pj = icmp ult i64 %i.pg, 17
  br i1 %i.pj, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pk = getelementptr inbounds nuw i8, ptr %.0179.i, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.pn.i229.i.i = phi ptr [ %.0177.i, %bb.bn ], [ %i.pm, %bb.bo ] ; 2 uses
  %.1.i230.i.i = phi ptr [ %i.pk, %bb.bn ], [ %i.pn, %bb.bo ] ; 3 uses
  %.130.i231.i.i = getelementptr inbounds nuw i8, ptr %.pn.i229.i.i, i64 16
  %.130.i231.i.val.i = load <2 x i64>, ptr %.130.i231.i.i, align 1, !tbaa !25
  store <2 x i64> %.130.i231.i.val.i, ptr %.1.i230.i.i, align 1, !tbaa !25
  %i.pl = getelementptr inbounds nuw i8, ptr %.1.i230.i.i, i64 16
  %i.pm = getelementptr inbounds nuw i8, ptr %.pn.i229.i.i, i64 32 ; 2 uses
  %.val18.i = load <2 x i64>, ptr %i.pm, align 1, !tbaa !25
  store <2 x i64> %.val18.i, ptr %i.pl, align 1, !tbaa !25
  %i.pn = getelementptr inbounds nuw i8, ptr %.1.i230.i.i, i64 32 ; 2 uses
  %i.po = icmp ult ptr %i.pn, %i.pi
  br i1 %i.po, label %bb.bo, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !8

bb.bp:                                            ; preds = %bb.bl
  %i.pp = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.pp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink.i
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !40
  %i.ps = load i8, ptr %.0177.i, align 1, !tbaa !25
  store i8 %i.ps, ptr %.0179.i, align 1, !tbaa !25
  %i.pt = getelementptr inbounds nuw i8, ptr %.0177.i, i64 1
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !25
  %i.pv = getelementptr inbounds nuw i8, ptr %.0179.i, i64 1
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !25
  %i.pw = getelementptr inbounds nuw i8, ptr %.0177.i, i64 2
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !25
  %i.py = getelementptr inbounds nuw i8, ptr %.0179.i, i64 2
  store i8 %i.px, ptr %i.py, align 1, !tbaa !25
  %i.pz = getelementptr inbounds nuw i8, ptr %.0177.i, i64 3
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !25
  %i.qb = getelementptr inbounds nuw i8, ptr %.0179.i, i64 3
  store i8 %i.qa, ptr %i.qb, align 1, !tbaa !25
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink.i
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !40
  %i.qe = zext i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw i8, ptr %.0177.i, i64 %i.qe ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.0179.i, i64 4
  %.val31.i = load i32, ptr %i.qf, align 1
  store i32 %.val31.i, ptr %i.qg, align 1
  %i.qh = sext i32 %i.pr to i64
  %i.qi = sub nsw i64 0, %i.qh
  %i.qj = getelementptr inbounds i8, ptr %i.qf, i64 %i.qi
  br label %ZSTD_overlapCopy8.exit.i.i

bb.br:                                            ; preds = %bb.bp
  %.val35.i = load i64, ptr %.0177.i, align 1
  store i64 %.val35.i, ptr %.0179.i, align 1
  br label %ZSTD_overlapCopy8.exit.i.i

ZSTD_overlapCopy8.exit.i.i:                       ; preds = %bb.br, %bb.bq
  %.1178.i = phi ptr [ %i.qj, %bb.bq ], [ %.0177.i, %bb.br ]
  %i.qk = getelementptr inbounds nuw i8, ptr %.1178.i, i64 8 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.0179.i, i64 8 ; 3 uses
  %i.qm = icmp ugt i64 %i.pg, 8
  br i1 %i.qm, label %bb.bs, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.bs:                                            ; preds = %ZSTD_overlapCopy8.exit.i.i
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = ptrtoint ptr %i.qk to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = getelementptr i8, ptr %.0179.i, i64 %i.pg ; 2 uses
  %i.qr = icmp slt i64 %i.qp, 16
  br i1 %i.qr, label %.preheader269.i, label %bb.bt

.preheader269.i:                                  ; preds = %bb.bs, %.preheader269.i
  %.029.i.i.i = phi ptr [ %i.qt, %.preheader269.i ], [ %i.qk, %bb.bs ] ; 2 uses
  %.0.i238.i.i = phi ptr [ %i.qs, %.preheader269.i ], [ %i.ql, %bb.bs ] ; 2 uses
  %.029.i.i.val.i = load i64, ptr %.029.i.i.i, align 1
  store i64 %.029.i.i.val.i, ptr %.0.i238.i.i, align 1
  %i.qs = getelementptr inbounds nuw i8, ptr %.0.i238.i.i, i64 8 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8
  %i.qu = icmp ult ptr %i.qs, %i.qq
  br i1 %i.qu, label %.preheader269.i, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !9

bb.bt:                                            ; preds = %bb.bs
  %.val21.i = load <2 x i64>, ptr %i.qk, align 1, !tbaa !25
  store <2 x i64> %.val21.i, ptr %i.ql, align 1, !tbaa !25
  %i.qv = icmp ult i64 %i.pg, 25
  br i1 %i.qv, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qw = getelementptr inbounds nuw i8, ptr %.0179.i, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.pn.i235.i.i = phi ptr [ %i.qk, %bb.bu ], [ %i.qy, %bb.bv ] ; 2 uses
  %.1.i236.i.i = phi ptr [ %i.qw, %bb.bu ], [ %i.qz, %bb.bv ] ; 3 uses
  %.130.i237.i.i = getelementptr inbounds nuw i8, ptr %.pn.i235.i.i, i64 16
  %.130.i237.i.val.i = load <2 x i64>, ptr %.130.i237.i.i, align 1, !tbaa !25
  store <2 x i64> %.130.i237.i.val.i, ptr %.1.i236.i.i, align 1, !tbaa !25
  %i.qx = getelementptr inbounds nuw i8, ptr %.1.i236.i.i, i64 16
  %i.qy = getelementptr inbounds nuw i8, ptr %.pn.i235.i.i, i64 32 ; 2 uses
  %.val20.i = load <2 x i64>, ptr %i.qy, align 1, !tbaa !25
  store <2 x i64> %.val20.i, ptr %i.qx, align 1, !tbaa !25
  %i.qz = getelementptr inbounds nuw i8, ptr %.1.i236.i.i, i64 32 ; 2 uses
  %i.ra = icmp ult ptr %i.qz, %i.qq
  br i1 %i.ra, label %bb.bv, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !8

ZSTD_execSequenceSplitLitBuffer.exit.i.i:         ; preds = %bb.bv, %.preheader269.i, %bb.bo, %bb.bt, %ZSTD_overlapCopy8.exit.i.i, %bb.bm, %bb.bj, %bb.bd
  %.0.i195.i.i = phi i64 [ %i.on, %bb.bd ], [ %i.og, %.preheader269.i ], [ %i.og, %bb.bj ], [ %i.og, %ZSTD_overlapCopy8.exit.i.i ], [ %i.og, %bb.bm ], [ %i.og, %bb.bt ], [ %i.og, %bb.bo ], [ %i.og, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rb = icmp ult i64 %.0.i195.i.i, -119
  br i1 %i.rb, label %bb.bw, label %.thread239.i

bb.bw:                                            ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i.i
  %i.rc = getelementptr inbounds nuw i8, ptr %.0130.i290.i, i64 %.0.i195.i.i ; 2 uses
  %i.rd = add nsw i32 %.0153.i289.i, -1           ; 2 uses
  %.not165.i.i = icmp eq i32 %i.rd, 0
  br i1 %.not165.i.i, label %.thread235.i, label %bb.ae, !llvm.loop !12

bb.bx:                                            ; preds = %ZSTD_decodeSequence.exit185.i.i
  %i.re = icmp sgt i32 %.0153.i289.i, 0
  br i1 %i.re, label %.thread391.i, label %.thread239.i

.thread391.i:                                     ; preds = %ZSTD_decodeSequence.exit185.i.thread.i, %bb.bx
  %.0153.i289.i191 = phi i32 [ %.0153.i289.i, %bb.bx ], [ 1, %ZSTD_decodeSequence.exit185.i.thread.i ]
  %i.rf = phi ptr [ %i.nl, %bb.bx ], [ %i.la, %ZSTD_decodeSequence.exit185.i.thread.i ] ; 2 uses
  %i.rg = phi i32 [ %i.nm, %bb.bx ], [ %i.lm, %ZSTD_decodeSequence.exit185.i.thread.i ] ; 2 uses
  %i.rh = phi i64 [ %i.nn, %bb.bx ], [ %i.lc, %ZSTD_decodeSequence.exit185.i.thread.i ]
  %i.ri = phi i64 [ %i.mg, %bb.bx ], [ %i.hd, %ZSTD_decodeSequence.exit185.i.thread.i ]
  %i.rj = phi i64 [ %i.mq, %bb.bx ], [ %i.he, %ZSTD_decodeSequence.exit185.i.thread.i ]
  %i.rk = phi i64 [ %i.lw, %bb.bx ], [ %i.hf, %ZSTD_decodeSequence.exit185.i.thread.i ]
  %i.rl = phi ptr [ %i.no, %bb.bx ], [ %i.ns, %ZSTD_decodeSequence.exit185.i.thread.i ] ; 11 uses
  %i.rm = phi ptr [ %i.nq, %bb.bx ], [ %i.nu, %ZSTD_decodeSequence.exit185.i.thread.i ] ; 2 uses
  %i.rn = ptrtoint ptr %i.rm to i64               ; 2 uses
  %i.ro = ptrtoint ptr %i.rl to i64               ; 3 uses
  %i.rp = sub i64 %i.rn, %i.ro                    ; 8 uses
  %.not167.i.i = icmp eq ptr %i.rm, %i.rl
  br i1 %.not167.i.i, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %.thread391.i
  %i.rq = ptrtoint ptr %i.d to i64
  %i.rr = ptrtoint ptr %.0130.i290.i to i64       ; 6 uses
  %i.rs = sub i64 %i.rq, %i.rr
  %i.rt = icmp ugt i64 %i.rp, %i.rs
  br i1 %i.rt, label %.thread239.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ru = sub i64 %i.rr, %i.ro                    ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.0130.i290.i, i64 %i.rp ; 3 uses
  %i.rw = icmp ult i64 %i.rp, 8
  %i.rx = icmp sgt i64 %i.ru, -8
  %or.cond.i.i = or i1 %i.rx, %i.rw
  br i1 %or.cond.i.i, label %iter.check137, label %bb.ca

iter.check137:                                    ; preds = %bb.bz
  %i.ry = add i64 %i.rr, %i.rn
  %i.rz = sub i64 %i.ry, %i.ro
  %i.sa = add i64 %i.rr, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.rz, i64 %i.sa)
  %i.sb = sub i64 %umax, %i.rr                    ; 7 uses
  %min.iters.check121 = icmp ult i64 %i.sb, 8
  %i.sc = add i64 %i.ru, -1
  %diff.check123 = icmp ult i64 %i.sc, 31
  %or.cond = or i1 %min.iters.check121, %diff.check123
  br i1 %or.cond, label %.lr.ph41.i.i.preheader, label %vector.main.loop.iter.check124

vector.main.loop.iter.check124:                   ; preds = %iter.check137
  %min.iters.check125 = icmp ult i64 %i.sb, 32
  br i1 %min.iters.check125, label %vec.epilog.ph141, label %vector.ph126

vector.ph126:                                     ; preds = %vector.main.loop.iter.check124
  %i.sd = and i64 %i.sb, 24
  %n.vec127 = and i64 %i.sb, -32                  ; 5 uses
  %i.se = getelementptr i8, ptr %.0130.i290.i, i64 %n.vec127
  %i.sf = getelementptr i8, ptr %i.rl, i64 %n.vec127
  br label %vector.body128

vector.body128:                                   ; preds = %vector.ph126, %vector.body128
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next134, %vector.body128 ] ; 3 uses
  %next.gep130 = getelementptr i8, ptr %.0130.i290.i, i64 %index129 ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.rl, i64 %index129 ; 2 uses
  %i.sg = getelementptr i8, ptr %next.gep131, i64 16
  %wide.load132 = load <16 x i8>, ptr %next.gep131, align 1, !tbaa !25
  %wide.load133 = load <16 x i8>, ptr %i.sg, align 1, !tbaa !25
  %i.sh = getelementptr i8, ptr %next.gep130, i64 16
  store <16 x i8> %wide.load132, ptr %next.gep130, align 1, !tbaa !25
  store <16 x i8> %wide.load133, ptr %i.sh, align 1, !tbaa !25
  %index.next134 = add nuw i64 %index129, 32      ; 2 uses
  %i.si = icmp eq i64 %index.next134, %n.vec127
  br i1 %i.si, label %middle.block135, label %vector.body128, !llvm.loop !133

middle.block135:                                  ; preds = %vector.body128
  %cmp.n136 = icmp eq i64 %i.sb, %n.vec127
  br i1 %cmp.n136, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %vec.epilog.iter.check138

vec.epilog.iter.check138:                         ; preds = %middle.block135
  %min.epilog.iters.check140 = icmp eq i64 %i.sd, 0
  br i1 %min.epilog.iters.check140, label %.lr.ph41.i.i.preheader, label %vec.epilog.ph141, !prof !83

vec.epilog.ph141:                                 ; preds = %vector.main.loop.iter.check124, %vec.epilog.iter.check138
  %vec.epilog.resume.val142 = phi i64 [ %n.vec127, %vec.epilog.iter.check138 ], [ 0, %vector.main.loop.iter.check124 ]
  %n.vec143 = and i64 %i.sb, -8                   ; 4 uses
  %i.sj = getelementptr i8, ptr %.0130.i290.i, i64 %n.vec143
  %i.sk = getelementptr i8, ptr %i.rl, i64 %n.vec143
  br label %vec.epilog.vector.body144

vec.epilog.vector.body144:                        ; preds = %vec.epilog.vector.body144, %vec.epilog.ph141
  %index145 = phi i64 [ %vec.epilog.resume.val142, %vec.epilog.ph141 ], [ %index.next149, %vec.epilog.vector.body144 ] ; 3 uses
  %next.gep146 = getelementptr i8, ptr %.0130.i290.i, i64 %index145
  %next.gep147 = getelementptr i8, ptr %i.rl, i64 %index145
  %wide.load148 = load <8 x i8>, ptr %next.gep147, align 1, !tbaa !25
  store <8 x i8> %wide.load148, ptr %next.gep146, align 1, !tbaa !25
  %index.next149 = add nuw i64 %index145, 8       ; 2 uses
  %i.sl = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.sl, label %vec.epilog.middle.block150, label %vec.epilog.vector.body144, !llvm.loop !134

vec.epilog.middle.block150:                       ; preds = %vec.epilog.vector.body144
  %cmp.n151 = icmp eq i64 %i.sb, %n.vec143
  br i1 %cmp.n151, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph41.i.i.preheader

.lr.ph41.i.i.preheader:                           ; preds = %iter.check137, %vec.epilog.iter.check138, %vec.epilog.middle.block150
  %.040.i.i.ph = phi ptr [ %.0130.i290.i, %iter.check137 ], [ %i.se, %vec.epilog.iter.check138 ], [ %i.sj, %vec.epilog.middle.block150 ]
  %.02939.i.i.ph = phi ptr [ %i.rl, %iter.check137 ], [ %i.sf, %vec.epilog.iter.check138 ], [ %i.sk, %vec.epilog.middle.block150 ]
  br label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.lr.ph41.i.i.preheader, %.lr.ph41.i.i
  %.040.i.i = phi ptr [ %i.so, %.lr.ph41.i.i ], [ %.040.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %.02939.i.i = phi ptr [ %i.sm, %.lr.ph41.i.i ], [ %.02939.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.02939.i.i, i64 1
  %i.sn = load i8, ptr %.02939.i.i, align 1, !tbaa !25
  %i.so = getelementptr inbounds nuw i8, ptr %.040.i.i, i64 1 ; 2 uses
  store i8 %i.sn, ptr %.040.i.i, align 1, !tbaa !25
  %i.sp = icmp ult ptr %i.so, %i.rv
  br i1 %i.sp, label %.lr.ph41.i.i, label %ZSTD_safecopyDstBeforeSrc.exit.i, !llvm.loop !135

bb.ca:                                            ; preds = %bb.bz
  %i.sq = icmp sgt i64 %i.rp, 31
  %i.sr = icmp samesign ult i64 %i.ru, -16
  %or.cond3.i.i = and i1 %i.sr, %i.sq
  br i1 %or.cond3.i.i, label %bb.cb, label %iter.check

bb.cb:                                            ; preds = %bb.ca
  %i.ss = getelementptr inbounds i8, ptr %i.rv, i64 -32
  %i.st = add nsw i64 %i.rp, -32                  ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.0130.i290.i, i64 %i.st
  %.val35.i.i = load <2 x i64>, ptr %i.rl, align 1, !tbaa !25
  store <2 x i64> %.val35.i.i, ptr %.0130.i290.i, align 1, !tbaa !25
  %i.sv = icmp samesign ult i64 %i.rp, 49
  br i1 %i.sv, label %.thread.i68.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sw = getelementptr inbounds nuw i8, ptr %.0130.i290.i, i64 16
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %bb.cc
  %.pn.i.i64.i = phi ptr [ %i.rl, %bb.cc ], [ %i.sy, %bb.cd ] ; 2 uses
  %.1.i.i65.i = phi ptr [ %i.sw, %bb.cc ], [ %i.sz, %bb.cd ] ; 3 uses
  %.130.i.i66.i = getelementptr inbounds nuw i8, ptr %.pn.i.i64.i, i64 16
  %.130.i.val.i.i = load <2 x i64>, ptr %.130.i.i66.i, align 1, !tbaa !25
  store <2 x i64> %.130.i.val.i.i, ptr %.1.i.i65.i, align 1, !tbaa !25
  %i.sx = getelementptr inbounds nuw i8, ptr %.1.i.i65.i, i64 16
  %i.sy = getelementptr inbounds nuw i8, ptr %.pn.i.i64.i, i64 32 ; 2 uses
  %.val.i67.i = load <2 x i64>, ptr %i.sy, align 1, !tbaa !25
  store <2 x i64> %.val.i67.i, ptr %i.sx, align 1, !tbaa !25
  %i.sz = getelementptr inbounds nuw i8, ptr %.1.i.i65.i, i64 32 ; 2 uses
  %i.ta = icmp ult ptr %i.sz, %i.su
  br i1 %i.ta, label %bb.cd, label %.thread.i68.i, !llvm.loop !8

.thread.i68.i:                                    ; preds = %bb.cd, %bb.cb
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.st
  br label %iter.check

iter.check:                                       ; preds = %.thread.i68.i, %bb.ca
  %.148.i.i = phi ptr [ %i.ss, %.thread.i68.i ], [ %.0130.i290.i, %bb.ca ] ; 7 uses
  %.13047.i.i = phi ptr [ %i.tb, %.thread.i68.i ], [ %i.rl, %bb.ca ] ; 6 uses
  %.143.i.i = ptrtoaddr ptr %.148.i.i to i64      ; 2 uses
  %i.tc = add i64 %i.rp, %i.rr
  %i.td = sub i64 %i.tc, %.143.i.i                ; 8 uses
  %scevgep.i.i = getelementptr i8, ptr %.148.i.i, i64 %i.td
  %min.iters.check = icmp ult i64 %i.td, 8
  %.13047.i.i107 = ptrtoaddr ptr %.13047.i.i to i64
  %i.te = sub i64 %.13047.i.i107, %.143.i.i
  %diff.check = icmp ugt i64 %i.te, -32
  %or.cond154 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond154, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp ult i64 %i.td, 32
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.tf = and i64 %i.td, 24
  %n.vec = and i64 %i.td, -32                     ; 5 uses
  %i.tg = getelementptr i8, ptr %.148.i.i, i64 %n.vec
  %i.th = getelementptr i8, ptr %.13047.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.148.i.i, i64 %index ; 2 uses
  %next.gep109 = getelementptr i8, ptr %.13047.i.i, i64 %index ; 2 uses
  %i.ti = getelementptr i8, ptr %next.gep109, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep109, align 1, !tbaa !25
  %wide.load110 = load <16 x i8>, ptr %i.ti, align 1, !tbaa !25
  %i.tj = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !25
  store <16 x i8> %wide.load110, ptr %i.tj, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.tk = icmp eq i64 %index.next, %n.vec
  br i1 %i.tk, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.td, %n.vec
  br i1 %cmp.n, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.tf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %i.td, -8                   ; 4 uses
  %i.tl = getelementptr i8, ptr %.148.i.i, i64 %n.vec111
  %i.tm = getelementptr i8, ptr %.13047.i.i, i64 %n.vec111
  br label %vec.epilog.vector.body
end_hunk_2
begin_hunk_3_@ZSTD_decompressSequencesSplitLitBuffer:bb.a
  %i.uc = getelementptr inbounds nuw i8, ptr %.2132.i.i, i64 %i.tw
  %i.ud = icmp ugt ptr %i.uc, %i.ub
  %or.cond.i187.i.i = select i1 %i.ua, i1 true, i1 %i.ud, !prof !84
  br i1 %or.cond.i187.i.i, label %bb.cf, label %.critedge.i188.i.i, !prof !84

.critedge.i188.i.i:                               ; preds = %bb.ce
  %.val15.i = load <2 x i64>, ptr %i.ts, align 4, !tbaa !25
  store <2 x i64> %.val15.i, ptr %.2132.i.i, align 1, !tbaa !25
  %i.ue = icmp samesign ugt i64 %.sroa.083.2.i, 16
  br i1 %i.ue, label %bb.cg, label %ZSTD_wildcopy.exit246.i.i, !prof !55

bb.cf:                                            ; preds = %bb.ce
  %i.uf = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.2132.i.i, ptr noundef %i.d, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.tt, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %.loopexit.i

bb.cg:                                            ; preds = %.critedge.i188.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %.2132.i.i, i64 16
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.val10.i = load <2 x i64>, ptr %i.uh, align 4, !tbaa !25
  store <2 x i64> %.val10.i, ptr %i.ug, align 1, !tbaa !25
  %i.ui = icmp samesign ult i64 %.sroa.083.2.i, 33
  br i1 %i.ui, label %ZSTD_wildcopy.exit246.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.uj = getelementptr inbounds nuw i8, ptr %.2132.i.i, i64 32
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.pn.i241.i.i = phi ptr [ %i.uh, %bb.ch ], [ %i.ul, %bb.ci ] ; 2 uses
  %.1.i242.i.i = phi ptr [ %i.uj, %bb.ch ], [ %i.um, %bb.ci ] ; 3 uses
  %.130.i243.i.i = getelementptr inbounds nuw i8, ptr %.pn.i241.i.i, i64 16
  %.130.i243.i.val.i = load <2 x i64>, ptr %.130.i243.i.i, align 1, !tbaa !25
  store <2 x i64> %.130.i243.i.val.i, ptr %.1.i242.i.i, align 1, !tbaa !25
  %i.uk = getelementptr inbounds nuw i8, ptr %.1.i242.i.i, i64 16
  %i.ul = getelementptr inbounds nuw i8, ptr %.pn.i241.i.i, i64 32 ; 2 uses
  %.val9.i = load <2 x i64>, ptr %i.ul, align 1, !tbaa !25
  store <2 x i64> %.val9.i, ptr %i.uk, align 1, !tbaa !25
  %i.um = getelementptr inbounds nuw i8, ptr %.1.i242.i.i, i64 32 ; 2 uses
  %i.un = icmp ult ptr %i.um, %i.tv
  br i1 %i.un, label %bb.ci, label %ZSTD_wildcopy.exit246.i.i, !llvm.loop !8

ZSTD_wildcopy.exit246.i.i:                        ; preds = %bb.ci, %bb.cg, %.critedge.i188.i.i
  store ptr %i.tx, ptr %i.a, align 8, !tbaa !46
  %i.uo = ptrtoint ptr %i.tv to i64               ; 2 uses
  %i.up = sub i64 %i.uo, %i.gu
  %i.uq = icmp ugt i64 %.sink.i, %i.up
  br i1 %i.uq, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %ZSTD_wildcopy.exit246.i.i
  %i.ur = sub i64 %i.uo, %i.gv
  %i.us = icmp ugt i64 %.sink.i, %i.ur
  br i1 %i.us, label %.loopexit.thread.i, label %bb.ck, !prof !55

.loopexit.thread.i:                               ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread239.i

bb.ck:                                            ; preds = %bb.cj
  %i.ut = ptrtoint ptr %i.tz to i64
  %i.uu = sub i64 %i.ut, %i.gu                    ; 3 uses
  %i.uv = getelementptr inbounds i8, ptr %i.n, i64 %i.uu ; 2 uses
  %i.uw = add nsw i64 %i.uu, %.sroa.681.0.i       ; 3 uses
  %.not.i190.i.i = icmp sgt i64 %i.uw, 0
  br i1 %.not.i190.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tv, ptr align 1 %i.uv, i64 %.sroa.681.0.i, i1 false)
  br label %.loopexit.i

bb.cm:                                            ; preds = %bb.ck
  %gepdiff.i191.i.i = sub nsw i64 0, %i.uu        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tv, ptr align 1 %i.uv, i64 %gepdiff.i191.i.i, i1 false)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tv, i64 %gepdiff.i191.i.i
  store i64 %i.uw, ptr %.sroa.986.0..sroa_idx87.i, align 8, !tbaa !86
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %ZSTD_wildcopy.exit246.i.i
  %.0176.i = phi ptr [ %i.ux, %bb.cm ], [ %i.tv, %ZSTD_wildcopy.exit246.i.i ] ; 12 uses
  %.0174.i = phi ptr [ %i.j, %bb.cm ], [ %i.tz, %ZSTD_wildcopy.exit246.i.i ] ; 9 uses
  %i.uy = phi i64 [ %i.uw, %bb.cm ], [ %.sroa.681.0.i, %ZSTD_wildcopy.exit246.i.i ] ; 5 uses
  %i.uz = icmp ugt i64 %.sink.i, 15
  br i1 %i.uz, label %bb.co, label %bb.cr, !prof !80

bb.co:                                            ; preds = %bb.cn
  %i.va = getelementptr inbounds nuw i8, ptr %.0176.i, i64 %i.uy
  %.val12.i = load <2 x i64>, ptr %.0174.i, align 1, !tbaa !25
  store <2 x i64> %.val12.i, ptr %.0176.i, align 1, !tbaa !25
  %i.vb = icmp ult i64 %i.uy, 17
  br i1 %i.vb, label %.loopexit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.vc = getelementptr inbounds nuw i8, ptr %.0176.i, i64 16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %bb.cp
  %.pn.i248.i.i = phi ptr [ %.0174.i, %bb.cp ], [ %i.ve, %bb.cq ] ; 2 uses
  %.1.i249.i.i = phi ptr [ %i.vc, %bb.cp ], [ %i.vf, %bb.cq ] ; 3 uses
  %.130.i250.i.i = getelementptr inbounds nuw i8, ptr %.pn.i248.i.i, i64 16
  %.130.i250.i.val.i = load <2 x i64>, ptr %.130.i250.i.i, align 1, !tbaa !25
  store <2 x i64> %.130.i250.i.val.i, ptr %.1.i249.i.i, align 1, !tbaa !25
  %i.vd = getelementptr inbounds nuw i8, ptr %.1.i249.i.i, i64 16
  %i.ve = getelementptr inbounds nuw i8, ptr %.pn.i248.i.i, i64 32 ; 2 uses
  %.val11.i = load <2 x i64>, ptr %i.ve, align 1, !tbaa !25
  store <2 x i64> %.val11.i, ptr %i.vd, align 1, !tbaa !25
  %i.vf = getelementptr inbounds nuw i8, ptr %.1.i249.i.i, i64 32 ; 2 uses
  %i.vg = icmp ult ptr %i.vf, %i.va
  br i1 %i.vg, label %bb.cq, label %.loopexit.i, !llvm.loop !8

bb.cr:                                            ; preds = %bb.cn
  %i.vh = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.vh, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink.i
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !40
  %i.vk = load i8, ptr %.0174.i, align 1, !tbaa !25
  store i8 %i.vk, ptr %.0176.i, align 1, !tbaa !25
  %i.vl = getelementptr inbounds nuw i8, ptr %.0174.i, i64 1
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !25
  %i.vn = getelementptr inbounds nuw i8, ptr %.0176.i, i64 1
  store i8 %i.vm, ptr %i.vn, align 1, !tbaa !25
  %i.vo = getelementptr inbounds nuw i8, ptr %.0174.i, i64 2
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !25
  %i.vq = getelementptr inbounds nuw i8, ptr %.0176.i, i64 2
  store i8 %i.vp, ptr %i.vq, align 1, !tbaa !25
  %i.vr = getelementptr inbounds nuw i8, ptr %.0174.i, i64 3
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !25
  %i.vt = getelementptr inbounds nuw i8, ptr %.0176.i, i64 3
  store i8 %i.vs, ptr %i.vt, align 1, !tbaa !25
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink.i
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !40
  %i.vw = zext i32 %i.vv to i64
  %i.vx = getelementptr inbounds nuw i8, ptr %.0174.i, i64 %i.vw ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.0176.i, i64 4
  %.val30.i = load i32, ptr %i.vx, align 1
  store i32 %.val30.i, ptr %i.vy, align 1
  %i.vz = sext i32 %i.vj to i64
  %i.wa = sub nsw i64 0, %i.vz
  %i.wb = getelementptr inbounds i8, ptr %i.vx, i64 %i.wa
  br label %ZSTD_overlapCopy8.exit282.i.i

bb.ct:                                            ; preds = %bb.cr
  %.val33.i = load i64, ptr %.0174.i, align 1
  store i64 %.val33.i, ptr %.0176.i, align 1
  br label %ZSTD_overlapCopy8.exit282.i.i

ZSTD_overlapCopy8.exit282.i.i:                    ; preds = %bb.ct, %bb.cs
  %.1175.i = phi ptr [ %i.wb, %bb.cs ], [ %.0174.i, %bb.ct ]
  %i.wc = getelementptr inbounds nuw i8, ptr %.1175.i, i64 8 ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.0176.i, i64 8 ; 3 uses
  %i.we = icmp ugt i64 %i.uy, 8
  br i1 %i.we, label %bb.cu, label %.loopexit.i

bb.cu:                                            ; preds = %ZSTD_overlapCopy8.exit282.i.i
  %i.wf = ptrtoint ptr %i.wd to i64
  %i.wg = ptrtoint ptr %i.wc to i64
  %i.wh = sub i64 %i.wf, %i.wg
  %i.wi = getelementptr i8, ptr %.0176.i, i64 %i.uy ; 2 uses
  %i.wj = icmp slt i64 %i.wh, 16
  br i1 %i.wj, label %.preheader265.i, label %bb.cv

.preheader265.i:                                  ; preds = %bb.cu, %.preheader265.i
  %.029.i258.i.i = phi ptr [ %i.wl, %.preheader265.i ], [ %i.wc, %bb.cu ] ; 2 uses
  %.0.i259.i.i = phi ptr [ %i.wk, %.preheader265.i ], [ %i.wd, %bb.cu ] ; 2 uses
  %.029.i258.i.val.i = load i64, ptr %.029.i258.i.i, align 1
  store i64 %.029.i258.i.val.i, ptr %.0.i259.i.i, align 1
  %i.wk = getelementptr inbounds nuw i8, ptr %.0.i259.i.i, i64 8 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.029.i258.i.i, i64 8
  %i.wm = icmp ult ptr %i.wk, %i.wi
  br i1 %i.wm, label %.preheader265.i, label %.loopexit.i, !llvm.loop !9

bb.cv:                                            ; preds = %bb.cu
  %.val14.i = load <2 x i64>, ptr %i.wc, align 1, !tbaa !25
  store <2 x i64> %.val14.i, ptr %i.wd, align 1, !tbaa !25
  %i.wn = icmp ult i64 %i.uy, 25
  br i1 %i.wn, label %.loopexit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.wo = getelementptr inbounds nuw i8, ptr %.0176.i, i64 24
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.pn.i255.i.i = phi ptr [ %i.wc, %bb.cw ], [ %i.wq, %bb.cx ] ; 2 uses
  %.1.i256.i.i = phi ptr [ %i.wo, %bb.cw ], [ %i.wr, %bb.cx ] ; 3 uses
  %.130.i257.i.i = getelementptr inbounds nuw i8, ptr %.pn.i255.i.i, i64 16
  %.130.i257.i.val.i = load <2 x i64>, ptr %.130.i257.i.i, align 1, !tbaa !25
  store <2 x i64> %.130.i257.i.val.i, ptr %.1.i256.i.i, align 1, !tbaa !25
  %i.wp = getelementptr inbounds nuw i8, ptr %.1.i256.i.i, i64 16
  %i.wq = getelementptr inbounds nuw i8, ptr %.pn.i255.i.i, i64 32 ; 2 uses
  %.val13.i = load <2 x i64>, ptr %i.wq, align 1, !tbaa !25
  store <2 x i64> %.val13.i, ptr %i.wp, align 1, !tbaa !25
  %i.wr = getelementptr inbounds nuw i8, ptr %.1.i256.i.i, i64 32 ; 2 uses
  %i.ws = icmp ult ptr %i.wr, %i.wi
  br i1 %i.ws, label %bb.cx, label %.loopexit.i, !llvm.loop !8

.loopexit.i:                                      ; preds = %bb.cx, %.preheader265.i, %bb.cq, %bb.cv, %ZSTD_overlapCopy8.exit282.i.i, %bb.co, %bb.cl, %bb.cf
  %.0.i189.i.i = phi i64 [ %i.uf, %bb.cf ], [ %i.tw, %bb.cq ], [ %i.tw, %bb.cl ], [ %i.tw, %ZSTD_overlapCopy8.exit282.i.i ], [ %i.tw, %bb.co ], [ %i.tw, %.preheader265.i ], [ %i.tw, %bb.cv ], [ %i.tw, %bb.cx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.wt = icmp ult i64 %.0.i189.i.i, -119
  %i.wu = getelementptr inbounds nuw i8, ptr %.2132.i.i, i64 %.0.i189.i.i ; 2 uses
  %i.wv = add nsw i32 %.0153.i289.i191, -1        ; 2 uses
  br i1 %i.wt, label %bb.cy, label %.thread239.i

bb.cy:                                            ; preds = %.loopexit.i
  %.not256.i = icmp eq i32 %i.wv, 0
  br i1 %.not256.i, label %.thread235.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !87
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !88
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !89
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !90
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !91
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.da

bb.da:                                            ; preds = %bb.er, %bb.cz
  %i.ww = phi ptr [ %i.rf, %bb.cz ], [ %i.adk, %bb.er ] ; 8 uses
  %i.wx = phi i32 [ %i.rg, %bb.cz ], [ %i.adl, %bb.er ] ; 5 uses
  %i.wy = phi i64 [ %i.rh, %bb.cz ], [ %i.adm, %bb.er ] ; 6 uses
  %i.wz = phi i64 [ %i.ju, %bb.cz ], [ %i.zt, %bb.er ] ; 2 uses
  %i.xa = phi i64 [ %.sink470.i, %bb.cz ], [ %.sink472.i, %bb.er ] ; 6 uses
  %i.xb = phi i64 [ %.sink.i, %bb.cz ], [ %.sink471.i, %bb.er ] ; 6 uses
  %i.xc = phi i64 [ %i.ri, %bb.cz ], [ %i.adn, %bb.er ] ; 2 uses
  %i.xd = phi i64 [ %i.rj, %bb.cz ], [ %i.ado, %bb.er ] ; 2 uses
  %i.xe = phi i64 [ %i.rk, %bb.cz ], [ %i.adp, %bb.er ] ; 2 uses
  %.7137.i293.i = phi ptr [ %i.wu, %bb.cz ], [ %i.agp, %bb.er ] ; 7 uses
  %.4157.i292.i = phi i32 [ %i.wv, %bb.cz ], [ %i.agq, %bb.er ] ; 2 uses
  %.not260.i = icmp eq i32 %.4157.i292.i, 1
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.xe ; 4 uses
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.xc ; 4 uses
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.xd ; 4 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xg, i64 4
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !50, !noalias !142
  %i.xk = zext i32 %i.xj to i64                   ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !50, !noalias !142 ; 2 uses
  %i.xn = zext i32 %i.xm to i64                   ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !50, !noalias !142 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xf, i64 2
  %i.xr = load i8, ptr %i.xq, align 2, !tbaa !58, !noalias !142 ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xg, i64 2
  %i.xt = load i8, ptr %i.xs, align 2, !tbaa !58, !noalias !142 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.xv = load i8, ptr %i.xu, align 2, !tbaa !58, !noalias !142 ; 4 uses
  %i.xw = zext i8 %i.xr to i32                    ; 2 uses
  %i.xx = zext i8 %i.xt to i32                    ; 2 uses
  %i.xy = add i8 %i.xt, %i.xr
  %i.xz = add i8 %i.xy, %i.xv
  %i.ya = load i16, ptr %i.xf, align 4, !tbaa !57, !noalias !142
  %i.yb = load i16, ptr %i.xg, align 4, !tbaa !57, !noalias !142
  %i.yc = load i16, ptr %i.xh, align 4, !tbaa !57, !noalias !142
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xf, i64 3
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !56, !noalias !142 ; 2 uses
  %i.yf = zext i8 %i.ye to i32
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xg, i64 3
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !56, !noalias !142 ; 2 uses
  %i.yi = zext i8 %i.yh to i32
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xh, i64 3
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !56, !noalias !142 ; 2 uses
  %i.yl = zext i8 %i.yk to i32
  %i.ym = icmp ugt i8 %i.xv, 1
  br i1 %i.ym, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.yn = zext i8 %i.xv to i32                    ; 2 uses
  %i.yo = and i32 %i.wx, 63
  %i.yp = zext nneg i32 %i.yo to i64
  %i.yq = shl i64 %i.wy, %i.yp
  %i.yr = sub nsw i32 0, %i.yn
  %i.ys = and i32 %i.yr, 63
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = lshr i64 %i.yq, %i.yt
  %i.yv = add i32 %i.wx, %i.yn                    ; 2 uses
  store i32 %i.yv, ptr %i.cp, align 8, !tbaa !77, !noalias !142
  %i.yw = zext i32 %i.xp to i64
  %i.yx = add i64 %i.yu, %i.yw
  store i64 %i.xa, ptr %i.aa, align 8, !tbaa !52, !noalias !142
  br label %bb.dh

bb.dc:                                            ; preds = %bb.da
  %i.yy = icmp eq i32 %i.xm, 0                    ; 3 uses
  %i.yz = icmp eq i8 %i.xv, 0
  br i1 %i.yz, label %bb.dd, label %bb.de, !prof !80

bb.dd:                                            ; preds = %bb.dc
  %i.za = select i1 %i.yy, i64 %i.xa, i64 %i.xb
  %i.zb = select i1 %i.yy, i64 %i.xb, i64 %i.xa
  br label %bb.dh

bb.de:                                            ; preds = %bb.dc
  %i.zc = zext i1 %i.yy to i32
  %i.zd = add i32 %i.xp, %i.zc
  %i.ze = zext i32 %i.zd to i64
  %i.zf = and i32 %i.wx, 63
  %i.zg = zext nneg i32 %i.zf to i64
  %i.zh = shl i64 %i.wy, %i.zg
  %i.zi = lshr i64 %i.zh, 63
  %i.zj = add i32 %i.wx, 1                        ; 3 uses
  store i32 %i.zj, ptr %i.cp, align 8, !tbaa !77, !noalias !142
  %i.zk = add nuw nsw i64 %i.zi, %i.ze            ; 3 uses
  %i.zl = icmp eq i64 %i.zk, 3
  br i1 %i.zl, label %.thread218.i, label %bb.df

.thread218.i:                                     ; preds = %bb.de
  %i.zm = add i64 %i.xb, -1                       ; 2 uses
  %.not.i.i219.i = icmp eq i64 %i.zm, 0
  %i.zn = select i1 %.not.i.i219.i, i64 -1, i64 %i.zm
  br label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.zk
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !52, !noalias !142 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.zp, 0
  %i.zq = select i1 %.not.i.i.i, i64 -1, i64 %i.zp ; 2 uses
  %.not101.i.i.i = icmp eq i64 %i.zk, 1
  br i1 %.not101.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.thread218.i
  %i.zr = phi i64 [ %i.zn, %.thread218.i ], [ %i.zq, %bb.df ]
  store i64 %i.xa, ptr %i.aa, align 8, !tbaa !52, !noalias !142
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.dd, %bb.db
  %i.zs = phi i32 [ %i.yv, %bb.db ], [ %i.wx, %bb.dd ], [ %i.zj, %bb.dg ], [ %i.zj, %bb.df ] ; 3 uses
  %.sink472.i = phi i64 [ %i.xb, %bb.db ], [ %i.zb, %bb.dd ], [ %i.xb, %bb.dg ], [ %i.xb, %bb.df ] ; 3 uses
  %.sink471.i = phi i64 [ %i.yx, %bb.db ], [ %i.za, %bb.dd ], [ %i.zr, %bb.dg ], [ %i.zq, %bb.df ] ; 11 uses
  %i.zt = phi i64 [ %i.xa, %bb.db ], [ %i.wz, %bb.dd ], [ %i.xa, %bb.dg ], [ %i.wz, %bb.df ] ; 2 uses
  store i64 %.sink472.i, ptr %i.w, align 8, !tbaa !52, !noalias !142
  store i64 %.sink471.i, ptr %i.q, align 8, !tbaa !52, !noalias !142
  %.not102.i.i.i = icmp eq i8 %i.xt, 0
  br i1 %.not102.i.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zu = and i32 %i.zs, 63
  %i.zv = zext nneg i32 %i.zu to i64
  %i.zw = shl i64 %i.wy, %i.zv
  %i.zx = sub nsw i32 0, %i.xx
  %i.zy = and i32 %i.zx, 63
  %i.zz = zext nneg i32 %i.zy to i64
  %i.aaa = lshr i64 %i.zw, %i.zz
  %i.aab = add i32 %i.zs, %i.xx                   ; 2 uses
  store i32 %i.aab, ptr %i.cp, align 8, !tbaa !77, !noalias !142
  %i.aac = add i64 %i.aaa, %i.xk
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.aad = phi i32 [ %i.zs, %bb.dh ], [ %i.aab, %bb.di ] ; 8 uses
  %.sroa.6.0.i = phi i64 [ %i.xk, %bb.dh ], [ %i.aac, %bb.di ] ; 5 uses
  %i.aae = icmp ugt i8 %i.xz, 30
  br i1 %i.aae, label %bb.dk, label %BIT_reloadDStream.exit213.i.i, !prof !55

bb.dk:                                            ; preds = %bb.dj
  %i.aaf = icmp ugt i32 %i.aad, 64
  br i1 %i.aaf, label %bb.dl, label %bb.dm, !prof !55

bb.dl:                                            ; preds = %bb.dk
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.cz, align 8, !tbaa !72, !noalias !142
  br label %BIT_reloadDStream.exit213.i.i

bb.dm:                                            ; preds = %bb.dk
  %.not.i207.i.i = icmp ult ptr %i.ww, %i.ad
  br i1 %.not.i207.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aag = lshr i32 %i.aad, 3
  %i.aah = zext nneg i32 %i.aag to i64
  %i.aai = sub nsw i64 0, %i.aah
  %i.aaj = getelementptr inbounds i8, ptr %i.ww, i64 %i.aai ; 3 uses
  store ptr %i.aaj, ptr %i.cz, align 8, !tbaa !72, !noalias !142
  %i.aak = and i32 %i.aad, 7                      ; 2 uses
  store i32 %i.aak, ptr %i.cp, align 8, !tbaa !77, !noalias !142
  %.val.i76.i = load i64, ptr %i.aaj, align 1, !tbaa !52, !noalias !142 ; 2 uses
  store i64 %.val.i76.i, ptr %9, align 8, !tbaa !73, !noalias !142
  br label %BIT_reloadDStream.exit213.i.i

bb.do:                                            ; preds = %bb.dm
  %i.aal = icmp eq ptr %i.ww, %3
  br i1 %i.aal, label %BIT_reloadDStream.exit213.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aam = lshr i32 %i.aad, 3                     ; 2 uses
  %i.aan = zext nneg i32 %i.aam to i64
  %i.aao = sub nsw i64 0, %i.aan
  %i.aap = getelementptr inbounds i8, ptr %i.ww, i64 %i.aao
  %i.aaq = icmp ult ptr %i.aap, %3
  %i.aar = ptrtoint ptr %i.ww to i64
  %i.aas = sub i64 %i.aar, %i.gw
  %i.aat = trunc i64 %i.aas to i32
  %.021.i209.i.i = select i1 %i.aaq, i32 %i.aat, i32 %i.aam ; 2 uses
  %i.aau = zext i32 %.021.i209.i.i to i64
  %i.aav = sub nsw i64 0, %i.aau
  %i.aaw = getelementptr inbounds i8, ptr %i.ww, i64 %i.aav ; 3 uses
  store ptr %i.aaw, ptr %i.cz, align 8, !tbaa !72, !noalias !142
  %i.aax = shl i32 %.021.i209.i.i, 3
  %i.aay = sub i32 %i.aad, %i.aax                 ; 2 uses
  store i32 %i.aay, ptr %i.cp, align 8, !tbaa !77, !noalias !142
  %.val7.i = load i64, ptr %i.aaw, align 1, !tbaa !52 ; 2 uses
  store i64 %.val7.i, ptr %9, align 8, !tbaa !73, !noalias !142
end_hunk_3
begin_hunk_4_@ZSTD_decompressSequencesLong_bmi2:bb.a
  %i.wy = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !25
  store <16 x i8> %wide.load30, ptr %i.wy, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.wz = icmp eq i64 %index.next, %n.vec
  br i1 %i.wz, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ws, %n.vec
  br i1 %cmp.n, label %ZSTD_safecopyDstBeforeSrc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.wu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.i.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %i.ws, -8                    ; 4 uses
  %i.xa = getelementptr i8, ptr %.0226.i645, i64 %n.vec31
  %i.xb = getelementptr i8, ptr %i.vx, i64 %n.vec31
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %next.gep33 = getelementptr i8, ptr %.0226.i645, i64 %index32
  %next.gep34 = getelementptr i8, ptr %i.vx, i64 %index32
  %wide.load35 = load <8 x i8>, ptr %next.gep34, align 1, !tbaa !25
  store <8 x i8> %wide.load35, ptr %next.gep33, align 1, !tbaa !25
  %index.next36 = add nuw i64 %index32, 8         ; 2 uses
  %i.xc = icmp eq i64 %index.next36, %n.vec31
  br i1 %i.xc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !151

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %i.ws, %n.vec31
  br i1 %cmp.n37, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.040.i.ph = phi ptr [ %.0226.i645, %iter.check ], [ %i.wv, %vec.epilog.iter.check ], [ %i.xa, %vec.epilog.middle.block ]
  %.02939.i.ph = phi ptr [ %i.vx, %iter.check ], [ %i.ww, %vec.epilog.iter.check ], [ %i.xb, %vec.epilog.middle.block ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.lr.ph41.i
  %.040.i = phi ptr [ %i.xf, %.lr.ph41.i ], [ %.040.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %.02939.i = phi ptr [ %i.xd, %.lr.ph41.i ], [ %.02939.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.02939.i, i64 1
  %i.xe = load i8, ptr %.02939.i, align 1, !tbaa !25
  %i.xf = getelementptr inbounds nuw i8, ptr %.040.i, i64 1 ; 2 uses
  store i8 %i.xe, ptr %.040.i, align 1, !tbaa !25
  %i.xg = icmp ult ptr %i.xf, %i.wm
  br i1 %i.xg, label %.lr.ph41.i, label %ZSTD_safecopyDstBeforeSrc.exit, !llvm.loop !152

bb.cf:                                            ; preds = %bb.ce
  %i.xh = icmp sgt i64 %i.wh, 31
  %i.xi = icmp samesign ult i64 %i.wl, -16
  %or.cond3.i = and i1 %i.xi, %i.xh
  br i1 %or.cond3.i, label %bb.cg, label %iter.check56

bb.cg:                                            ; preds = %bb.cf
  %i.xj = getelementptr inbounds i8, ptr %i.wm, i64 -32
  %i.xk = add nsw i64 %i.wh, -32                  ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.0226.i645, i64 %i.xk
  %.val35.i = load <2 x i64>, ptr %i.vx, align 1, !tbaa !25
  store <2 x i64> %.val35.i, ptr %.0226.i645, align 1, !tbaa !25
  %i.xm = icmp samesign ult i64 %i.wh, 49
  br i1 %i.xm, label %.thread.i292, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xn = getelementptr inbounds nuw i8, ptr %.0226.i645, i64 16
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.pn.i.i = phi ptr [ %i.vx, %bb.ch ], [ %i.xp, %bb.ci ] ; 2 uses
  %.1.i.i = phi ptr [ %i.xn, %bb.ch ], [ %i.xq, %bb.ci ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !25
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i, align 1, !tbaa !25
  %i.xo = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.xp = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i291 = load <2 x i64>, ptr %i.xp, align 1, !tbaa !25
  store <2 x i64> %.val.i291, ptr %i.xo, align 1, !tbaa !25
  %i.xq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.xr = icmp ult ptr %i.xq, %i.xl
  br i1 %i.xr, label %bb.ci, label %.thread.i292, !llvm.loop !8

.thread.i292:                                     ; preds = %bb.ci, %bb.cg
  %i.xs = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.xk
  br label %iter.check56

iter.check56:                                     ; preds = %bb.cf, %.thread.i292
  %.148.i = phi ptr [ %i.xj, %.thread.i292 ], [ %.0226.i645, %bb.cf ] ; 7 uses
  %.13047.i = phi ptr [ %i.xs, %.thread.i292 ], [ %i.vx, %bb.cf ] ; 6 uses
  %.143.i = ptrtoaddr ptr %.148.i to i64          ; 2 uses
  %i.xt = add i64 %i.wh, %i.wi
  %i.xu = sub i64 %i.xt, %.143.i                  ; 8 uses
  %scevgep.i = getelementptr i8, ptr %.148.i, i64 %i.xu
  %min.iters.check42 = icmp ult i64 %i.xu, 8
  %.13047.i40 = ptrtoaddr ptr %.13047.i to i64
  %i.xv = sub i64 %.13047.i40, %.143.i
  %diff.check41 = icmp ugt i64 %i.xv, -32
  %or.cond142 = select i1 %min.iters.check42, i1 true, i1 %diff.check41
  br i1 %or.cond142, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check43

vector.main.loop.iter.check43:                    ; preds = %iter.check56
  %min.iters.check44 = icmp ult i64 %i.xu, 32
  br i1 %min.iters.check44, label %vec.epilog.ph60, label %vector.ph45

vector.ph45:                                      ; preds = %vector.main.loop.iter.check43
  %i.xw = and i64 %i.xu, 24
  %n.vec46 = and i64 %i.xu, -32                   ; 5 uses
  %i.xx = getelementptr i8, ptr %.148.i, i64 %n.vec46
  %i.xy = getelementptr i8, ptr %.13047.i, i64 %n.vec46
  br label %vector.body47

vector.body47:                                    ; preds = %vector.ph45, %vector.body47
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next53, %vector.body47 ] ; 3 uses
  %next.gep49 = getelementptr i8, ptr %.148.i, i64 %index48 ; 2 uses
  %next.gep50 = getelementptr i8, ptr %.13047.i, i64 %index48 ; 2 uses
  %i.xz = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load51 = load <16 x i8>, ptr %next.gep50, align 1, !tbaa !25
  %wide.load52 = load <16 x i8>, ptr %i.xz, align 1, !tbaa !25
  %i.ya = getelementptr i8, ptr %next.gep49, i64 16
  store <16 x i8> %wide.load51, ptr %next.gep49, align 1, !tbaa !25
  store <16 x i8> %wide.load52, ptr %i.ya, align 1, !tbaa !25
  %index.next53 = add nuw i64 %index48, 32        ; 2 uses
  %i.yb = icmp eq i64 %index.next53, %n.vec46
  br i1 %i.yb, label %middle.block54, label %vector.body47, !llvm.loop !153

middle.block54:                                   ; preds = %vector.body47
  %cmp.n55 = icmp eq i64 %i.xu, %n.vec46
  br i1 %cmp.n55, label %ZSTD_safecopyDstBeforeSrc.exit, label %vec.epilog.iter.check57

vec.epilog.iter.check57:                          ; preds = %middle.block54
  %min.epilog.iters.check59 = icmp eq i64 %i.xw, 0
  br i1 %min.epilog.iters.check59, label %.lr.ph.i.preheader, label %vec.epilog.ph60, !prof !83

vec.epilog.ph60:                                  ; preds = %vector.main.loop.iter.check43, %vec.epilog.iter.check57
  %vec.epilog.resume.val61 = phi i64 [ %n.vec46, %vec.epilog.iter.check57 ], [ 0, %vector.main.loop.iter.check43 ]
  %n.vec62 = and i64 %i.xu, -8                    ; 4 uses
  %i.yc = getelementptr i8, ptr %.148.i, i64 %n.vec62
  %i.yd = getelementptr i8, ptr %.13047.i, i64 %n.vec62
  br label %vec.epilog.vector.body63

vec.epilog.vector.body63:                         ; preds = %vec.epilog.vector.body63, %vec.epilog.ph60
  %index64 = phi i64 [ %vec.epilog.resume.val61, %vec.epilog.ph60 ], [ %index.next68, %vec.epilog.vector.body63 ] ; 3 uses
  %next.gep65 = getelementptr i8, ptr %.148.i, i64 %index64
  %next.gep66 = getelementptr i8, ptr %.13047.i, i64 %index64
  %wide.load67 = load <8 x i8>, ptr %next.gep66, align 1, !tbaa !25
  store <8 x i8> %wide.load67, ptr %next.gep65, align 1, !tbaa !25
  %index.next68 = add nuw i64 %index64, 8         ; 2 uses
  %i.ye = icmp eq i64 %index.next68, %n.vec62
  br i1 %i.ye, label %vec.epilog.middle.block69, label %vec.epilog.vector.body63, !llvm.loop !154

vec.epilog.middle.block69:                        ; preds = %vec.epilog.vector.body63
  %cmp.n70 = icmp eq i64 %i.xu, %n.vec62
  br i1 %cmp.n70, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check56, %vec.epilog.iter.check57, %vec.epilog.middle.block69
  %.238.i.ph = phi ptr [ %.148.i, %iter.check56 ], [ %i.xx, %vec.epilog.iter.check57 ], [ %i.yc, %vec.epilog.middle.block69 ]
  %.23137.i.ph = phi ptr [ %.13047.i, %iter.check56 ], [ %i.xy, %vec.epilog.iter.check57 ], [ %i.yd, %vec.epilog.middle.block69 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.238.i = phi ptr [ %i.yh, %.lr.ph.i ], [ %.238.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.23137.i = phi ptr [ %i.yf, %.lr.ph.i ], [ %.23137.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.23137.i, i64 1
  %i.yg = load i8, ptr %.23137.i, align 1, !tbaa !25
  %i.yh = getelementptr inbounds nuw i8, ptr %.238.i, i64 1 ; 2 uses
  store i8 %i.yg, ptr %.238.i, align 1, !tbaa !25
  %exitcond.not.i = icmp eq ptr %i.yh, %scevgep.i
  br i1 %exitcond.not.i, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph.i, !llvm.loop !155

ZSTD_safecopyDstBeforeSrc.exit:                   ; preds = %.lr.ph.i, %.lr.ph41.i, %middle.block54, %vec.epilog.middle.block69, %middle.block, %vec.epilog.middle.block
  %i.yi = load i64, ptr %i.wa, align 8, !tbaa !82
  %i.yj = sub i64 %i.yi, %i.wh
  store i64 %i.yj, ptr %i.wa, align 8, !tbaa !82
  br label %bb.cj

bb.cj:                                            ; preds = %ZSTD_safecopyDstBeforeSrc.exit, %bb.cc
  %.1227.i = phi ptr [ %i.wm, %ZSTD_safecopyDstBeforeSrc.exit ], [ %.0226.i645, %bb.cc ] ; 8 uses
  store ptr %i.hw, ptr %i.a, align 8, !tbaa !46
  store i32 0, ptr %i.b, align 8, !tbaa !44
  %.sroa.0.0.copyload = load i64, ptr %i.wa, align 8 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 7 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.1227.i, i64 %.sroa.0.0.copyload ; 6 uses
  %i.yl = add i64 %.sroa.6.0.copyload, %.sroa.0.0.copyload ; 8 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.sroa.0.0.copyload
  %i.yn = sub i64 0, %.sroa.11.0.copyload
  %i.yo = getelementptr inbounds i8, ptr %i.yk, i64 %i.yn ; 2 uses
  %i.yp = icmp ugt i64 %.sroa.0.0.copyload, 65536
  %i.yq = getelementptr inbounds nuw i8, ptr %.1227.i, i64 %i.yl
  %i.yr = icmp ugt ptr %i.yq, %i.ht
  %or.cond.i = select i1 %i.yp, i1 true, i1 %i.yr, !prof !84
  br i1 %or.cond.i, label %bb.ck, label %.critedge.i, !prof !84

.critedge.i:                                      ; preds = %bb.cj
  %.val242 = load <2 x i64>, ptr %i.hw, align 4, !tbaa !25
  store <2 x i64> %.val242, ptr %.1227.i, align 1, !tbaa !25
  %i.ys = icmp samesign ugt i64 %.sroa.0.0.copyload, 16
  br i1 %i.ys, label %bb.cl, label %ZSTD_wildcopy.exit178, !prof !55

bb.ck:                                            ; preds = %bb.cj
  %i.yt = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.1227.i, ptr noundef %i.h, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.wa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hx, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %ZSTD_execSequence.exit

bb.cl:                                            ; preds = %.critedge.i
  %i.yu = getelementptr inbounds nuw i8, ptr %.1227.i, i64 16
  %i.yv = getelementptr i8, ptr %.1227.i, i64 %.sroa.0.0.copyload
  %.val206 = load <2 x i64>, ptr %i.hy, align 4, !tbaa !25
  store <2 x i64> %.val206, ptr %i.yu, align 1, !tbaa !25
  %i.yw = icmp samesign ult i64 %.sroa.0.0.copyload, 33
  br i1 %i.yw, label %ZSTD_wildcopy.exit178, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.yx = getelementptr inbounds nuw i8, ptr %.1227.i, i64 32
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %bb.cm
  %.pn.i173 = phi ptr [ %i.hy, %bb.cm ], [ %i.yz, %bb.cn ] ; 2 uses
  %.1.i174 = phi ptr [ %i.yx, %bb.cm ], [ %i.za, %bb.cn ] ; 3 uses
  %.130.i175 = getelementptr inbounds nuw i8, ptr %.pn.i173, i64 16
  %.130.i175.val = load <2 x i64>, ptr %.130.i175, align 1, !tbaa !25
  store <2 x i64> %.130.i175.val, ptr %.1.i174, align 1, !tbaa !25
  %i.yy = getelementptr inbounds nuw i8, ptr %.1.i174, i64 16
  %i.yz = getelementptr inbounds nuw i8, ptr %.pn.i173, i64 32 ; 2 uses
  %.val205 = load <2 x i64>, ptr %i.yz, align 1, !tbaa !25
  store <2 x i64> %.val205, ptr %i.yy, align 1, !tbaa !25
  %i.za = getelementptr inbounds nuw i8, ptr %.1.i174, i64 32 ; 2 uses
  %i.zb = icmp ult ptr %i.za, %i.yv
  br i1 %i.zb, label %bb.cn, label %ZSTD_wildcopy.exit178, !llvm.loop !8

ZSTD_wildcopy.exit178:                            ; preds = %bb.cn, %bb.cl, %.critedge.i
  store ptr %i.ym, ptr %i.a, align 8, !tbaa !46
  %i.zc = ptrtoint ptr %i.yk to i64               ; 2 uses
  %i.zd = sub i64 %i.zc, %i.ah
  %i.ze = icmp ugt i64 %.sroa.11.0.copyload, %i.zd
  br i1 %i.ze, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %ZSTD_wildcopy.exit178
  %i.zf = sub i64 %i.zc, %i.hu
  %i.zg = icmp ugt i64 %.sroa.11.0.copyload, %i.zf
  br i1 %i.zg, label %.thread568, label %bb.cp, !prof !55

bb.cp:                                            ; preds = %bb.co
  %i.zh = ptrtoint ptr %i.yo to i64
  %i.zi = sub i64 %i.zh, %i.ah                    ; 3 uses
  %i.zj = getelementptr inbounds i8, ptr %i.r, i64 %i.zi ; 2 uses
  %i.zk = add i64 %.sroa.6.0.copyload, %i.zi      ; 2 uses
  %.not.i15 = icmp sgt i64 %i.zk, 0
  br i1 %.not.i15, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yk, ptr align 1 %i.zj, i64 %.sroa.6.0.copyload, i1 false)
  br label %ZSTD_execSequence.exit

bb.cr:                                            ; preds = %bb.cp
  %gepdiff.i = sub nsw i64 0, %i.zi               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yk, ptr align 1 %i.zj, i64 %gepdiff.i, i1 false)
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yk, i64 %gepdiff.i
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %ZSTD_wildcopy.exit178
  %.sroa.6.0 = phi i64 [ %i.zk, %bb.cr ], [ %.sroa.6.0.copyload, %ZSTD_wildcopy.exit178 ] ; 5 uses
  %.0507 = phi ptr [ %i.zl, %bb.cr ], [ %i.yk, %ZSTD_wildcopy.exit178 ] ; 12 uses
  %.0505 = phi ptr [ %i.n, %bb.cr ], [ %i.yo, %ZSTD_wildcopy.exit178 ] ; 9 uses
  %i.zm = icmp ugt i64 %.sroa.11.0.copyload, 15
  br i1 %i.zm, label %bb.ct, label %bb.cw, !prof !80

bb.ct:                                            ; preds = %bb.cs
  %i.zn = getelementptr inbounds nuw i8, ptr %.0507, i64 %.sroa.6.0
  %.val204 = load <2 x i64>, ptr %.0505, align 1, !tbaa !25
  store <2 x i64> %.val204, ptr %.0507, align 1, !tbaa !25
  %i.zo = icmp ult i64 %.sroa.6.0, 17
  br i1 %i.zo, label %ZSTD_execSequence.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.zp = getelementptr inbounds nuw i8, ptr %.0507, i64 16
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %.pn.i180 = phi ptr [ %.0505, %bb.cu ], [ %i.zr, %bb.cv ] ; 2 uses
  %.1.i181 = phi ptr [ %i.zp, %bb.cu ], [ %i.zs, %bb.cv ] ; 3 uses
  %.130.i182 = getelementptr inbounds nuw i8, ptr %.pn.i180, i64 16
  %.130.i182.val = load <2 x i64>, ptr %.130.i182, align 1, !tbaa !25
  store <2 x i64> %.130.i182.val, ptr %.1.i181, align 1, !tbaa !25
  %i.zq = getelementptr inbounds nuw i8, ptr %.1.i181, i64 16
  %i.zr = getelementptr inbounds nuw i8, ptr %.pn.i180, i64 32 ; 2 uses
  %.val203 = load <2 x i64>, ptr %i.zr, align 1, !tbaa !25
  store <2 x i64> %.val203, ptr %i.zq, align 1, !tbaa !25
  %i.zs = getelementptr inbounds nuw i8, ptr %.1.i181, i64 32 ; 2 uses
  %i.zt = icmp ult ptr %i.zs, %i.zn
  br i1 %i.zt, label %bb.cv, label %ZSTD_execSequence.exit, !llvm.loop !8

bb.cw:                                            ; preds = %bb.cs
  %i.zu = icmp samesign ult i64 %.sroa.11.0.copyload, 8
  br i1 %i.zu, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.11.0.copyload
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !40
  %i.zx = load i8, ptr %.0505, align 1, !tbaa !25
  store i8 %i.zx, ptr %.0507, align 1, !tbaa !25
  %i.zy = getelementptr inbounds nuw i8, ptr %.0505, i64 1
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !25
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0507, i64 1
  store i8 %i.zz, ptr %i.aaa, align 1, !tbaa !25
  %i.aab = getelementptr inbounds nuw i8, ptr %.0505, i64 2
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !25
  %i.aad = getelementptr inbounds nuw i8, ptr %.0507, i64 2
  store i8 %i.aac, ptr %i.aad, align 1, !tbaa !25
  %i.aae = getelementptr inbounds nuw i8, ptr %.0505, i64 3
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !25
  %i.aag = getelementptr inbounds nuw i8, ptr %.0507, i64 3
  store i8 %i.aaf, ptr %i.aag, align 1, !tbaa !25
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.11.0.copyload
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !40
  %i.aaj = zext i32 %i.aai to i64
  %i.aak = getelementptr inbounds nuw i8, ptr %.0505, i64 %i.aaj ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.0507, i64 4
  %.val243 = load i32, ptr %i.aak, align 1
  store i32 %.val243, ptr %i.aal, align 1
  %i.aam = sext i32 %i.zw to i64
  %i.aan = sub nsw i64 0, %i.aam
  %i.aao = getelementptr inbounds i8, ptr %i.aak, i64 %i.aan
  br label %ZSTD_overlapCopy8.exit197

bb.cy:                                            ; preds = %bb.cw
  %.val249 = load i64, ptr %.0505, align 1
  store i64 %.val249, ptr %.0507, align 1
  br label %ZSTD_overlapCopy8.exit197

ZSTD_overlapCopy8.exit197:                        ; preds = %bb.cx, %bb.cy
  %.1506 = phi ptr [ %i.aao, %bb.cx ], [ %.0505, %bb.cy ]
  %i.aap = getelementptr inbounds nuw i8, ptr %.1506, i64 8 ; 4 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0507, i64 8 ; 3 uses
  %i.aar = icmp ugt i64 %.sroa.6.0, 8
  br i1 %i.aar, label %bb.cz, label %ZSTD_execSequence.exit

bb.cz:                                            ; preds = %ZSTD_overlapCopy8.exit197
  %i.aas = ptrtoint ptr %i.aaq to i64
  %i.aat = ptrtoint ptr %i.aap to i64
  %i.aau = sub i64 %i.aas, %i.aat
  %i.aav = getelementptr i8, ptr %.0507, i64 %.sroa.6.0 ; 2 uses
  %i.aaw = icmp slt i64 %i.aau, 16
  br i1 %i.aaw, label %.preheader600, label %bb.da

.preheader600:                                    ; preds = %bb.cz, %.preheader600
  %.029.i190 = phi ptr [ %i.aay, %.preheader600 ], [ %i.aap, %bb.cz ] ; 2 uses
  %.0.i191 = phi ptr [ %i.aax, %.preheader600 ], [ %i.aaq, %bb.cz ] ; 2 uses
  %.029.i190.val = load i64, ptr %.029.i190, align 1
  store i64 %.029.i190.val, ptr %.0.i191, align 1
  %i.aax = getelementptr inbounds nuw i8, ptr %.0.i191, i64 8 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.029.i190, i64 8
  %i.aaz = icmp ult ptr %i.aax, %i.aav
  br i1 %i.aaz, label %.preheader600, label %ZSTD_execSequence.exit, !llvm.loop !9

bb.da:                                            ; preds = %bb.cz
  %.val202 = load <2 x i64>, ptr %i.aap, align 1, !tbaa !25
  store <2 x i64> %.val202, ptr %i.aaq, align 1, !tbaa !25
  %i.aba = icmp ult i64 %.sroa.6.0, 25
  br i1 %i.aba, label %ZSTD_execSequence.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.abb = getelementptr inbounds nuw i8, ptr %.0507, i64 24
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %bb.db
  %.pn.i187 = phi ptr [ %i.aap, %bb.db ], [ %i.abd, %bb.dc ] ; 2 uses
  %.1.i188 = phi ptr [ %i.abb, %bb.db ], [ %i.abe, %bb.dc ] ; 3 uses
  %.130.i189 = getelementptr inbounds nuw i8, ptr %.pn.i187, i64 16
  %.130.i189.val = load <2 x i64>, ptr %.130.i189, align 1, !tbaa !25
  store <2 x i64> %.130.i189.val, ptr %.1.i188, align 1, !tbaa !25
  %i.abc = getelementptr inbounds nuw i8, ptr %.1.i188, i64 16
  %i.abd = getelementptr inbounds nuw i8, ptr %.pn.i187, i64 32 ; 2 uses
  %.val201 = load <2 x i64>, ptr %i.abd, align 1, !tbaa !25
  store <2 x i64> %.val201, ptr %i.abc, align 1, !tbaa !25
  %i.abe = getelementptr inbounds nuw i8, ptr %.1.i188, i64 32 ; 2 uses
  %i.abf = icmp ult ptr %i.abe, %i.aav
  br i1 %i.abf, label %bb.dc, label %ZSTD_execSequence.exit, !llvm.loop !8

ZSTD_execSequence.exit:                           ; preds = %bb.dc, %.preheader600, %bb.cv, %bb.da, %bb.ct, %bb.ck, %bb.cq, %ZSTD_overlapCopy8.exit197
  %.0.i14 = phi i64 [ %i.yt, %bb.ck ], [ %i.yl, %bb.cv ], [ %i.yl, %bb.cq ], [ %i.yl, %ZSTD_overlapCopy8.exit197 ], [ %i.yl, %bb.da ], [ %i.yl, %bb.ct ], [ %i.yl, %.preheader600 ], [ %i.yl, %bb.dc ] ; 3 uses
  %i.abg = icmp ult i64 %.0.i14, -119
  br i1 %i.abg, label %bb.dd, label %.thread568

bb.dd:                                            ; preds = %ZSTD_execSequence.exit
  %i.abh = add i64 %.sroa.0.0, %.1206.i651        ; 3 uses
  %i.abi = icmp ugt i64 %.sink828, %i.abh
  %i.abj = select i1 %i.abi, ptr %i.r, ptr %i.n
  %i.abk = getelementptr inbounds i8, ptr %i.abj, i64 %i.abh
  %i.abl = sub i64 0, %.sink828
  %i.abm = getelementptr inbounds i8, ptr %i.abk, i64 %i.abl ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.abm, i32 0, i32 3, i32 1)
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.abn, i32 0, i32 3, i32 1)
  store i64 %.sroa.0.0, ptr %i.wa, align 8, !tbaa !52
  %.sroa.9.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx322, align 8, !tbaa !52
  %.sroa.12.0..sroa_idx328 = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  store i64 %.sink828, ptr %.sroa.12.0..sroa_idx328, align 8, !tbaa !52
  %i.abo = getelementptr inbounds nuw i8, ptr %.1227.i, i64 %.0.i14
  br label %bb.es

bb.de:                                            ; preds = %bb.cb
  %i.abp = getelementptr inbounds i8, ptr %i.wc, i64 -32 ; 2 uses
  %.sroa.0204.0.copyload = load i64, ptr %i.wa, align 8 ; 6 uses
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %.sroa.5206.0.copyload = load i64, ptr %.sroa.5206.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %.sroa.10210.0.copyload = load i64, ptr %.sroa.10210.0..sroa_idx, align 8 ; 7 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.0226.i645, i64 %.sroa.0204.0.copyload ; 6 uses
end_hunk_4
begin_hunk_5_@ZSTD_decompressSequencesLong_bmi2:bb.a
  %i.ajw = getelementptr i8, ptr %next.gep83, i64 16
  store <16 x i8> %wide.load85, ptr %next.gep83, align 1, !tbaa !25
  store <16 x i8> %wide.load86, ptr %i.ajw, align 1, !tbaa !25
  %index.next87 = add nuw i64 %index82, 32        ; 2 uses
  %i.ajx = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.ajx, label %middle.block88, label %vector.body81, !llvm.loop !156

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %i.ajq, %n.vec80
  br i1 %cmp.n89, label %ZSTD_safecopyDstBeforeSrc.exit318, label %vec.epilog.iter.check91

vec.epilog.iter.check91:                          ; preds = %middle.block88
  %min.epilog.iters.check93 = icmp eq i64 %i.ajs, 0
  br i1 %min.epilog.iters.check93, label %.lr.ph41.i315.preheader, label %vec.epilog.ph94, !prof !83

vec.epilog.ph94:                                  ; preds = %vector.main.loop.iter.check77, %vec.epilog.iter.check91
  %vec.epilog.resume.val95 = phi i64 [ %n.vec80, %vec.epilog.iter.check91 ], [ 0, %vector.main.loop.iter.check77 ]
  %n.vec96 = and i64 %i.ajq, -8                   ; 4 uses
  %i.ajy = getelementptr i8, ptr %.7233.i656, i64 %n.vec96
  %i.ajz = getelementptr i8, ptr %i.aiy, i64 %n.vec96
  br label %vec.epilog.vector.body97

vec.epilog.vector.body97:                         ; preds = %vec.epilog.vector.body97, %vec.epilog.ph94
  %index98 = phi i64 [ %vec.epilog.resume.val95, %vec.epilog.ph94 ], [ %index.next102, %vec.epilog.vector.body97 ] ; 3 uses
  %next.gep99 = getelementptr i8, ptr %.7233.i656, i64 %index98
  %next.gep100 = getelementptr i8, ptr %i.aiy, i64 %index98
  %wide.load101 = load <8 x i8>, ptr %next.gep100, align 1, !tbaa !25
  store <8 x i8> %wide.load101, ptr %next.gep99, align 1, !tbaa !25
  %index.next102 = add nuw i64 %index98, 8        ; 2 uses
  %i.aka = icmp eq i64 %index.next102, %n.vec96
  br i1 %i.aka, label %vec.epilog.middle.block103, label %vec.epilog.vector.body97, !llvm.loop !157

vec.epilog.middle.block103:                       ; preds = %vec.epilog.vector.body97
  %cmp.n104 = icmp eq i64 %i.ajq, %n.vec96
  br i1 %cmp.n104, label %ZSTD_safecopyDstBeforeSrc.exit318, label %.lr.ph41.i315.preheader

.lr.ph41.i315.preheader:                          ; preds = %iter.check90, %vec.epilog.iter.check91, %vec.epilog.middle.block103
  %.040.i316.ph = phi ptr [ %.7233.i656, %iter.check90 ], [ %i.ajt, %vec.epilog.iter.check91 ], [ %i.ajy, %vec.epilog.middle.block103 ]
  %.02939.i317.ph = phi ptr [ %i.aiy, %iter.check90 ], [ %i.aju, %vec.epilog.iter.check91 ], [ %i.ajz, %vec.epilog.middle.block103 ]
  br label %.lr.ph41.i315

.lr.ph41.i315:                                    ; preds = %.lr.ph41.i315.preheader, %.lr.ph41.i315
  %.040.i316 = phi ptr [ %i.akd, %.lr.ph41.i315 ], [ %.040.i316.ph, %.lr.ph41.i315.preheader ] ; 2 uses
  %.02939.i317 = phi ptr [ %i.akb, %.lr.ph41.i315 ], [ %.02939.i317.ph, %.lr.ph41.i315.preheader ] ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %.02939.i317, i64 1
  %i.akc = load i8, ptr %.02939.i317, align 1, !tbaa !25
  %i.akd = getelementptr inbounds nuw i8, ptr %.040.i316, i64 1 ; 2 uses
  store i8 %i.akc, ptr %.040.i316, align 1, !tbaa !25
  %i.ake = icmp ult ptr %i.akd, %i.ajk
  br i1 %i.ake, label %.lr.ph41.i315, label %ZSTD_safecopyDstBeforeSrc.exit318, !llvm.loop !158

bb.ez:                                            ; preds = %bb.ey
  %i.akf = icmp sgt i64 %i.ajf, 31
  %i.akg = icmp samesign ult i64 %i.ajj, -16
  %or.cond3.i295 = and i1 %i.akg, %i.akf
  br i1 %or.cond3.i295, label %bb.fa, label %iter.check124

bb.fa:                                            ; preds = %bb.ez
  %i.akh = getelementptr inbounds i8, ptr %i.ajk, i64 -32
  %i.aki = add nsw i64 %i.ajf, -32                ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.7233.i656, i64 %i.aki
  %.val35.i306 = load <2 x i64>, ptr %i.aiy, align 1, !tbaa !25
  store <2 x i64> %.val35.i306, ptr %.7233.i656, align 1, !tbaa !25
  %i.akk = icmp samesign ult i64 %i.ajf, 49
  br i1 %i.akk, label %.thread.i312, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.akl = getelementptr inbounds nuw i8, ptr %.7233.i656, i64 16
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fc, %bb.fb
  %.pn.i.i307 = phi ptr [ %i.aiy, %bb.fb ], [ %i.akn, %bb.fc ] ; 2 uses
  %.1.i.i308 = phi ptr [ %i.akl, %bb.fb ], [ %i.ako, %bb.fc ] ; 3 uses
  %.130.i.i309 = getelementptr inbounds nuw i8, ptr %.pn.i.i307, i64 16
  %.130.i.val.i310 = load <2 x i64>, ptr %.130.i.i309, align 1, !tbaa !25
  store <2 x i64> %.130.i.val.i310, ptr %.1.i.i308, align 1, !tbaa !25
  %i.akm = getelementptr inbounds nuw i8, ptr %.1.i.i308, i64 16
  %i.akn = getelementptr inbounds nuw i8, ptr %.pn.i.i307, i64 32 ; 2 uses
  %.val.i311 = load <2 x i64>, ptr %i.akn, align 1, !tbaa !25
  store <2 x i64> %.val.i311, ptr %i.akm, align 1, !tbaa !25
  %i.ako = getelementptr inbounds nuw i8, ptr %.1.i.i308, i64 32 ; 2 uses
  %i.akp = icmp ult ptr %i.ako, %i.akj
  br i1 %i.akp, label %bb.fc, label %.thread.i312, !llvm.loop !8

.thread.i312:                                     ; preds = %bb.fc, %bb.fa
  %i.akq = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %i.aki
  br label %iter.check124

iter.check124:                                    ; preds = %bb.ez, %.thread.i312
  %.148.i298 = phi ptr [ %i.akh, %.thread.i312 ], [ %.7233.i656, %bb.ez ] ; 7 uses
  %.13047.i299 = phi ptr [ %i.akq, %.thread.i312 ], [ %i.aiy, %bb.ez ] ; 6 uses
  %.143.i300 = ptrtoaddr ptr %.148.i298 to i64    ; 2 uses
  %i.akr = add i64 %i.ajf, %i.ajg
  %i.aks = sub i64 %i.akr, %.143.i300             ; 8 uses
  %scevgep.i301 = getelementptr i8, ptr %.148.i298, i64 %i.aks
  %min.iters.check110 = icmp ult i64 %i.aks, 8
  %.13047.i299108 = ptrtoaddr ptr %.13047.i299 to i64
  %i.akt = sub i64 %.13047.i299108, %.143.i300
  %diff.check109 = icmp ugt i64 %i.akt, -32
  %or.cond144 = select i1 %min.iters.check110, i1 true, i1 %diff.check109
  br i1 %or.cond144, label %.lr.ph.i302.preheader, label %vector.main.loop.iter.check111

vector.main.loop.iter.check111:                   ; preds = %iter.check124
  %min.iters.check112 = icmp ult i64 %i.aks, 32
  br i1 %min.iters.check112, label %vec.epilog.ph128, label %vector.ph113

vector.ph113:                                     ; preds = %vector.main.loop.iter.check111
  %i.aku = and i64 %i.aks, 24
  %n.vec114 = and i64 %i.aks, -32                 ; 5 uses
  %i.akv = getelementptr i8, ptr %.148.i298, i64 %n.vec114
  %i.akw = getelementptr i8, ptr %.13047.i299, i64 %n.vec114
  br label %vector.body115

vector.body115:                                   ; preds = %vector.ph113, %vector.body115
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body115 ] ; 3 uses
  %next.gep117 = getelementptr i8, ptr %.148.i298, i64 %index116 ; 2 uses
  %next.gep118 = getelementptr i8, ptr %.13047.i299, i64 %index116 ; 2 uses
  %i.akx = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load119 = load <16 x i8>, ptr %next.gep118, align 1, !tbaa !25
  %wide.load120 = load <16 x i8>, ptr %i.akx, align 1, !tbaa !25
  %i.aky = getelementptr i8, ptr %next.gep117, i64 16
  store <16 x i8> %wide.load119, ptr %next.gep117, align 1, !tbaa !25
  store <16 x i8> %wide.load120, ptr %i.aky, align 1, !tbaa !25
  %index.next121 = add nuw i64 %index116, 32      ; 2 uses
  %i.akz = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.akz, label %middle.block122, label %vector.body115, !llvm.loop !159

middle.block122:                                  ; preds = %vector.body115
  %cmp.n123 = icmp eq i64 %i.aks, %n.vec114
  br i1 %cmp.n123, label %ZSTD_safecopyDstBeforeSrc.exit318, label %vec.epilog.iter.check125

vec.epilog.iter.check125:                         ; preds = %middle.block122
  %min.epilog.iters.check127 = icmp eq i64 %i.aku, 0
  br i1 %min.epilog.iters.check127, label %.lr.ph.i302.preheader, label %vec.epilog.ph128, !prof !83

vec.epilog.ph128:                                 ; preds = %vector.main.loop.iter.check111, %vec.epilog.iter.check125
  %vec.epilog.resume.val129 = phi i64 [ %n.vec114, %vec.epilog.iter.check125 ], [ 0, %vector.main.loop.iter.check111 ]
  %n.vec130 = and i64 %i.aks, -8                  ; 4 uses
  %i.ala = getelementptr i8, ptr %.148.i298, i64 %n.vec130
  %i.alb = getelementptr i8, ptr %.13047.i299, i64 %n.vec130
  br label %vec.epilog.vector.body131

vec.epilog.vector.body131:                        ; preds = %vec.epilog.vector.body131, %vec.epilog.ph128
  %index132 = phi i64 [ %vec.epilog.resume.val129, %vec.epilog.ph128 ], [ %index.next136, %vec.epilog.vector.body131 ] ; 3 uses
  %next.gep133 = getelementptr i8, ptr %.148.i298, i64 %index132
  %next.gep134 = getelementptr i8, ptr %.13047.i299, i64 %index132
  %wide.load135 = load <8 x i8>, ptr %next.gep134, align 1, !tbaa !25
  store <8 x i8> %wide.load135, ptr %next.gep133, align 1, !tbaa !25
  %index.next136 = add nuw i64 %index132, 8       ; 2 uses
  %i.alc = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.alc, label %vec.epilog.middle.block137, label %vec.epilog.vector.body131, !llvm.loop !160

vec.epilog.middle.block137:                       ; preds = %vec.epilog.vector.body131
  %cmp.n138 = icmp eq i64 %i.aks, %n.vec130
  br i1 %cmp.n138, label %ZSTD_safecopyDstBeforeSrc.exit318, label %.lr.ph.i302.preheader

.lr.ph.i302.preheader:                            ; preds = %iter.check124, %vec.epilog.iter.check125, %vec.epilog.middle.block137
  %.238.i303.ph = phi ptr [ %.148.i298, %iter.check124 ], [ %i.akv, %vec.epilog.iter.check125 ], [ %i.ala, %vec.epilog.middle.block137 ]
  %.23137.i304.ph = phi ptr [ %.13047.i299, %iter.check124 ], [ %i.akw, %vec.epilog.iter.check125 ], [ %i.alb, %vec.epilog.middle.block137 ]
  br label %.lr.ph.i302

.lr.ph.i302:                                      ; preds = %.lr.ph.i302.preheader, %.lr.ph.i302
  %.238.i303 = phi ptr [ %i.alf, %.lr.ph.i302 ], [ %.238.i303.ph, %.lr.ph.i302.preheader ] ; 2 uses
  %.23137.i304 = phi ptr [ %i.ald, %.lr.ph.i302 ], [ %.23137.i304.ph, %.lr.ph.i302.preheader ] ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.23137.i304, i64 1
  %i.ale = load i8, ptr %.23137.i304, align 1, !tbaa !25
  %i.alf = getelementptr inbounds nuw i8, ptr %.238.i303, i64 1 ; 2 uses
  store i8 %i.ale, ptr %.238.i303, align 1, !tbaa !25
  %exitcond.not.i305 = icmp eq ptr %i.alf, %scevgep.i301
  br i1 %exitcond.not.i305, label %ZSTD_safecopyDstBeforeSrc.exit318, label %.lr.ph.i302, !llvm.loop !161

ZSTD_safecopyDstBeforeSrc.exit318:                ; preds = %.lr.ph.i302, %.lr.ph41.i315, %middle.block122, %vec.epilog.middle.block137, %middle.block88, %vec.epilog.middle.block103
  %i.alg = load i64, ptr %i.aiv, align 8, !tbaa !82
  %i.alh = sub i64 %i.alg, %i.ajf
  store i64 %i.alh, ptr %i.aiv, align 8, !tbaa !82
  br label %bb.fd

bb.fd:                                            ; preds = %ZSTD_safecopyDstBeforeSrc.exit318, %bb.ew
  %.8234.i = phi ptr [ %i.ajk, %ZSTD_safecopyDstBeforeSrc.exit318 ], [ %.7233.i656, %bb.ew ] ; 8 uses
  store ptr %i.ain, ptr %i.a, align 8, !tbaa !46
  store i32 0, ptr %i.b, align 8, !tbaa !44
  %.sroa.0188.0.copyload = load i64, ptr %i.aiv, align 8 ; 7 uses
  %.sroa.6190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
  %.sroa.6190.0.copyload = load i64, ptr %.sroa.6190.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiv, i64 16
  %.sroa.11194.0.copyload = load i64, ptr %.sroa.11194.0..sroa_idx, align 8 ; 7 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.8234.i, i64 %.sroa.0188.0.copyload ; 6 uses
  %i.alj = add i64 %.sroa.6190.0.copyload, %.sroa.0188.0.copyload ; 8 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ain, i64 %.sroa.0188.0.copyload
  %i.all = sub i64 0, %.sroa.11194.0.copyload
  %i.alm = getelementptr inbounds i8, ptr %i.ali, i64 %i.all ; 2 uses
  %i.aln = icmp ugt i64 %.sroa.0188.0.copyload, 65536
  %i.alo = getelementptr inbounds nuw i8, ptr %.8234.i, i64 %i.alj
  %i.alp = icmp ugt ptr %i.alo, %i.aik
  %or.cond.i22 = select i1 %i.aln, i1 true, i1 %i.alp, !prof !84
  br i1 %or.cond.i22, label %bb.fe, label %.critedge.i23, !prof !84

.critedge.i23:                                    ; preds = %bb.fd
  %.val240 = load <2 x i64>, ptr %i.ain, align 4, !tbaa !25
  store <2 x i64> %.val240, ptr %.8234.i, align 1, !tbaa !25
  %i.alq = icmp samesign ugt i64 %.sroa.0188.0.copyload, 16
  br i1 %i.alq, label %bb.ff, label %ZSTD_wildcopy.exit136, !prof !55

bb.fe:                                            ; preds = %bb.fd
  %i.alr = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.8234.i, ptr noundef %i.h, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.aiv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aio, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %.loopexit

bb.ff:                                            ; preds = %.critedge.i23
  %i.als = getelementptr inbounds nuw i8, ptr %.8234.i, i64 16
  %i.alt = getelementptr i8, ptr %.8234.i, i64 %.sroa.0188.0.copyload
  %.val218 = load <2 x i64>, ptr %i.aip, align 4, !tbaa !25
  store <2 x i64> %.val218, ptr %i.als, align 1, !tbaa !25
  %i.alu = icmp samesign ult i64 %.sroa.0188.0.copyload, 33
  br i1 %i.alu, label %ZSTD_wildcopy.exit136, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.alv = getelementptr inbounds nuw i8, ptr %.8234.i, i64 32
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fh, %bb.fg
  %.pn.i131 = phi ptr [ %i.aip, %bb.fg ], [ %i.alx, %bb.fh ] ; 2 uses
  %.1.i132 = phi ptr [ %i.alv, %bb.fg ], [ %i.aly, %bb.fh ] ; 3 uses
  %.130.i133 = getelementptr inbounds nuw i8, ptr %.pn.i131, i64 16
  %.130.i133.val = load <2 x i64>, ptr %.130.i133, align 1, !tbaa !25
  store <2 x i64> %.130.i133.val, ptr %.1.i132, align 1, !tbaa !25
  %i.alw = getelementptr inbounds nuw i8, ptr %.1.i132, i64 16
  %i.alx = getelementptr inbounds nuw i8, ptr %.pn.i131, i64 32 ; 2 uses
  %.val217 = load <2 x i64>, ptr %i.alx, align 1, !tbaa !25
  store <2 x i64> %.val217, ptr %i.alw, align 1, !tbaa !25
  %i.aly = getelementptr inbounds nuw i8, ptr %.1.i132, i64 32 ; 2 uses
  %i.alz = icmp ult ptr %i.aly, %i.alt
  br i1 %i.alz, label %bb.fh, label %ZSTD_wildcopy.exit136, !llvm.loop !8

ZSTD_wildcopy.exit136:                            ; preds = %bb.fh, %bb.ff, %.critedge.i23
  store ptr %i.alk, ptr %i.a, align 8, !tbaa !46
  %i.ama = ptrtoint ptr %i.ali to i64             ; 2 uses
  %i.amb = sub i64 %i.ama, %i.ah
  %i.amc = icmp ugt i64 %.sroa.11194.0.copyload, %i.amb
  br i1 %i.amc, label %bb.fi, label %bb.fm

bb.fi:                                            ; preds = %ZSTD_wildcopy.exit136
  %i.amd = sub i64 %i.ama, %i.ail
  %i.ame = icmp ugt i64 %.sroa.11194.0.copyload, %i.amd
  br i1 %i.ame, label %.thread568, label %bb.fj, !prof !55

bb.fj:                                            ; preds = %bb.fi
  %i.amf = ptrtoint ptr %i.alm to i64
  %i.amg = sub i64 %i.amf, %i.ah                  ; 3 uses
  %i.amh = getelementptr inbounds i8, ptr %i.r, i64 %i.amg ; 2 uses
  %i.ami = add i64 %.sroa.6190.0.copyload, %i.amg ; 2 uses
  %.not.i25 = icmp sgt i64 %i.ami, 0
  br i1 %.not.i25, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ali, ptr align 1 %i.amh, i64 %.sroa.6190.0.copyload, i1 false)
  br label %.loopexit

bb.fl:                                            ; preds = %bb.fj
  %gepdiff.i26 = sub nsw i64 0, %i.amg            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ali, ptr align 1 %i.amh, i64 %gepdiff.i26, i1 false)
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ali, i64 %gepdiff.i26
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %ZSTD_wildcopy.exit136
  %.sroa.6190.0 = phi i64 [ %i.ami, %bb.fl ], [ %.sroa.6190.0.copyload, %ZSTD_wildcopy.exit136 ] ; 5 uses
  %.0502 = phi ptr [ %i.n, %bb.fl ], [ %i.alm, %ZSTD_wildcopy.exit136 ] ; 9 uses
  %.0501 = phi ptr [ %i.amj, %bb.fl ], [ %i.ali, %ZSTD_wildcopy.exit136 ] ; 12 uses
  %i.amk = icmp ugt i64 %.sroa.11194.0.copyload, 15
  br i1 %i.amk, label %bb.fn, label %bb.fq, !prof !80

bb.fn:                                            ; preds = %bb.fm
  %i.aml = getelementptr inbounds nuw i8, ptr %.0501, i64 %.sroa.6190.0
  %.val216 = load <2 x i64>, ptr %.0502, align 1, !tbaa !25
  store <2 x i64> %.val216, ptr %.0501, align 1, !tbaa !25
  %i.amm = icmp ult i64 %.sroa.6190.0, 17
  br i1 %i.amm, label %.loopexit, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.amn = getelementptr inbounds nuw i8, ptr %.0501, i64 16
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fp, %bb.fo
  %.pn.i138 = phi ptr [ %.0502, %bb.fo ], [ %i.amp, %bb.fp ] ; 2 uses
  %.1.i139 = phi ptr [ %i.amn, %bb.fo ], [ %i.amq, %bb.fp ] ; 3 uses
  %.130.i140 = getelementptr inbounds nuw i8, ptr %.pn.i138, i64 16
  %.130.i140.val = load <2 x i64>, ptr %.130.i140, align 1, !tbaa !25
  store <2 x i64> %.130.i140.val, ptr %.1.i139, align 1, !tbaa !25
  %i.amo = getelementptr inbounds nuw i8, ptr %.1.i139, i64 16
  %i.amp = getelementptr inbounds nuw i8, ptr %.pn.i138, i64 32 ; 2 uses
  %.val215 = load <2 x i64>, ptr %i.amp, align 1, !tbaa !25
  store <2 x i64> %.val215, ptr %i.amo, align 1, !tbaa !25
  %i.amq = getelementptr inbounds nuw i8, ptr %.1.i139, i64 32 ; 2 uses
  %i.amr = icmp ult ptr %i.amq, %i.aml
  br i1 %i.amr, label %bb.fp, label %.loopexit, !llvm.loop !8

bb.fq:                                            ; preds = %bb.fm
  %i.ams = icmp samesign ult i64 %.sroa.11194.0.copyload, 8
  br i1 %i.ams, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.11194.0.copyload
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !40
  %i.amv = load i8, ptr %.0502, align 1, !tbaa !25
  store i8 %i.amv, ptr %.0501, align 1, !tbaa !25
  %i.amw = getelementptr inbounds nuw i8, ptr %.0502, i64 1
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !25
  %i.amy = getelementptr inbounds nuw i8, ptr %.0501, i64 1
  store i8 %i.amx, ptr %i.amy, align 1, !tbaa !25
  %i.amz = getelementptr inbounds nuw i8, ptr %.0502, i64 2
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !25
  %i.anb = getelementptr inbounds nuw i8, ptr %.0501, i64 2
  store i8 %i.ana, ptr %i.anb, align 1, !tbaa !25
  %i.anc = getelementptr inbounds nuw i8, ptr %.0502, i64 3
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !25
  %i.ane = getelementptr inbounds nuw i8, ptr %.0501, i64 3
  store i8 %i.and, ptr %i.ane, align 1, !tbaa !25
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.11194.0.copyload
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !40
  %i.anh = zext i32 %i.ang to i64
  %i.ani = getelementptr inbounds nuw i8, ptr %.0502, i64 %i.anh ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %.0501, i64 4
  %.val245 = load i32, ptr %i.ani, align 1
  store i32 %.val245, ptr %i.anj, align 1
  %i.ank = sext i32 %i.amu to i64
  %i.anl = sub nsw i64 0, %i.ank
  %i.anm = getelementptr inbounds i8, ptr %i.ani, i64 %i.anl
  br label %ZSTD_overlapCopy8.exit195

bb.fs:                                            ; preds = %bb.fq
  %.val251 = load i64, ptr %.0502, align 1
  store i64 %.val251, ptr %.0501, align 1
  br label %ZSTD_overlapCopy8.exit195

ZSTD_overlapCopy8.exit195:                        ; preds = %bb.fr, %bb.fs
  %.1503 = phi ptr [ %i.anm, %bb.fr ], [ %.0502, %bb.fs ]
  %i.ann = getelementptr inbounds nuw i8, ptr %.1503, i64 8 ; 4 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %.0501, i64 8 ; 3 uses
  %i.anp = icmp ugt i64 %.sroa.6190.0, 8
  br i1 %i.anp, label %bb.ft, label %.loopexit

bb.ft:                                            ; preds = %ZSTD_overlapCopy8.exit195
  %i.anq = ptrtoint ptr %i.ano to i64
  %i.anr = ptrtoint ptr %i.ann to i64
  %i.ans = sub i64 %i.anq, %i.anr
  %i.ant = getelementptr i8, ptr %.0501, i64 %.sroa.6190.0 ; 2 uses
  %i.anu = icmp slt i64 %i.ans, 16
  br i1 %i.anu, label %.preheader590, label %bb.fu

.preheader590:                                    ; preds = %bb.ft, %.preheader590
  %.029.i148 = phi ptr [ %i.anw, %.preheader590 ], [ %i.ann, %bb.ft ] ; 2 uses
  %.0.i149 = phi ptr [ %i.anv, %.preheader590 ], [ %i.ano, %bb.ft ] ; 2 uses
  %.029.i148.val = load i64, ptr %.029.i148, align 1
  store i64 %.029.i148.val, ptr %.0.i149, align 1
  %i.anv = getelementptr inbounds nuw i8, ptr %.0.i149, i64 8 ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %.029.i148, i64 8
  %i.anx = icmp ult ptr %i.anv, %i.ant
  br i1 %i.anx, label %.preheader590, label %.loopexit, !llvm.loop !9

bb.fu:                                            ; preds = %bb.ft
  %.val214 = load <2 x i64>, ptr %i.ann, align 1, !tbaa !25
  store <2 x i64> %.val214, ptr %i.ano, align 1, !tbaa !25
  %i.any = icmp ult i64 %.sroa.6190.0, 25
  br i1 %i.any, label %.loopexit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.anz = getelementptr inbounds nuw i8, ptr %.0501, i64 24
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fw, %bb.fv
  %.pn.i145 = phi ptr [ %i.ann, %bb.fv ], [ %i.aob, %bb.fw ] ; 2 uses
  %.1.i146 = phi ptr [ %i.anz, %bb.fv ], [ %i.aoc, %bb.fw ] ; 3 uses
  %.130.i147 = getelementptr inbounds nuw i8, ptr %.pn.i145, i64 16
  %.130.i147.val = load <2 x i64>, ptr %.130.i147, align 1, !tbaa !25
  store <2 x i64> %.130.i147.val, ptr %.1.i146, align 1, !tbaa !25
  %i.aoa = getelementptr inbounds nuw i8, ptr %.1.i146, i64 16
  %i.aob = getelementptr inbounds nuw i8, ptr %.pn.i145, i64 32 ; 2 uses
  %.val213 = load <2 x i64>, ptr %i.aob, align 1, !tbaa !25
  store <2 x i64> %.val213, ptr %i.aoa, align 1, !tbaa !25
  %i.aoc = getelementptr inbounds nuw i8, ptr %.1.i146, i64 32 ; 2 uses
  %i.aod = icmp ult ptr %i.aoc, %i.ant
  br i1 %i.aod, label %bb.fw, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %bb.fw, %.preheader590, %bb.fp, %ZSTD_overlapCopy8.exit195, %bb.fk, %bb.fe, %bb.fn, %bb.fu
  %.0.i24 = phi i64 [ %i.alr, %bb.fe ], [ %i.alj, %bb.fp ], [ %i.alj, %bb.fk ], [ %i.alj, %ZSTD_overlapCopy8.exit195 ], [ %i.alj, %bb.fu ], [ %i.alj, %bb.fn ], [ %i.alj, %.preheader590 ], [ %i.alj, %bb.fw ] ; 3 uses
  %i.aoe = icmp ult i64 %.0.i24, -119
  %i.aof = getelementptr inbounds nuw i8, ptr %.8234.i, i64 %.0.i24
  br i1 %i.aoe, label %bb.hl, label %.thread568

bb.fx:                                            ; preds = %bb.ev
  %i.aog = getelementptr inbounds i8, ptr %i.aja, i64 -32 ; 2 uses
  %.sroa.0212.0.copyload = load i64, ptr %i.aiv, align 8 ; 6 uses
  %.sroa.5214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
  %.sroa.5214.0.copyload = load i64, ptr %.sroa.5214.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiv, i64 16
  %.sroa.10218.0.copyload = load i64, ptr %.sroa.10218.0..sroa_idx, align 8 ; 7 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %.7233.i656, i64 %.sroa.0212.0.copyload ; 6 uses
  %i.aoi = add i64 %.sroa.5214.0.copyload, %.sroa.0212.0.copyload ; 8 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %.sroa.0212.0.copyload ; 2 uses
  %i.aok = sub i64 0, %.sroa.10218.0.copyload
  %i.aol = getelementptr inbounds i8, ptr %i.aoh, i64 %i.aok ; 2 uses
  %i.aom = icmp ugt ptr %i.aoj, %.4219.i660
  %i.aon = getelementptr inbounds nuw i8, ptr %.7233.i656, i64 %i.aoi
  %i.aoo = icmp ugt ptr %i.aon, %i.aog
  %or.cond.i39 = select i1 %i.aom, i1 true, i1 %i.aoo, !prof !84
  br i1 %or.cond.i39, label %bb.fy, label %.critedge.i40, !prof !84

.critedge.i40:                                    ; preds = %bb.fx
  %.val237 = load <2 x i64>, ptr %i.aiy, align 1, !tbaa !25
  store <2 x i64> %.val237, ptr %.7233.i656, align 1, !tbaa !25
  %i.aop = icmp ugt i64 %.sroa.0212.0.copyload, 16
  br i1 %i.aop, label %bb.fz, label %ZSTD_wildcopy.exit, !prof !55

bb.fy:                                            ; preds = %bb.fx
end_hunk_5
begin_hunk_6_@ZSTD_decompressSequencesSplitLitBuffer_bmi2:bb.a
bb.bc:                                            ; preds = %.critedge.i194.i
  %i.op = getelementptr inbounds nuw i8, ptr %.0130.i290, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ob, i64 16 ; 2 uses
  %.val17 = load <2 x i64>, ptr %i.oq, align 1, !tbaa !25
  store <2 x i64> %.val17, ptr %i.op, align 1, !tbaa !25
  %i.or = icmp ult i64 %.sroa.080.0, 33
  br i1 %i.or, label %ZSTD_wildcopy.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.os = getelementptr inbounds nuw i8, ptr %.0130.i290, i64 32
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.pn.i.i = phi ptr [ %i.oq, %bb.bd ], [ %i.ou, %bb.be ] ; 2 uses
  %.1.i.i = phi ptr [ %i.os, %bb.bd ], [ %i.ov, %bb.be ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.i.val = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !25
  store <2 x i64> %.130.i.i.val, ptr %.1.i.i, align 1, !tbaa !25
  %i.ot = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.ou = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val16 = load <2 x i64>, ptr %i.ou, align 1, !tbaa !25
  store <2 x i64> %.val16, ptr %i.ot, align 1, !tbaa !25
  %i.ov = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.ow = icmp ult ptr %i.ov, %i.og
  br i1 %i.ow, label %bb.be, label %ZSTD_wildcopy.exit.i, !llvm.loop !8

ZSTD_wildcopy.exit.i:                             ; preds = %bb.be, %bb.bc, %.critedge.i194.i
  store ptr %i.oa, ptr %i.a, align 8, !tbaa !46
  %i.ox = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.oy = sub i64 %i.ox, %i.gu
  %i.oz = icmp ugt i64 %.sink, %i.oy
  br i1 %i.oz, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %ZSTD_wildcopy.exit.i
  %i.pa = sub i64 %i.ox, %i.gv
  %i.pb = icmp ugt i64 %.sink, %i.pa
  br i1 %i.pb, label %ZSTD_execSequenceSplitLitBuffer.exit.i.thread, label %bb.bg, !prof !55

ZSTD_execSequenceSplitLitBuffer.exit.i.thread:    ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread239

bb.bg:                                            ; preds = %bb.bf
  %i.pc = ptrtoint ptr %i.oj to i64
  %i.pd = sub i64 %i.pc, %i.gu                    ; 3 uses
  %i.pe = getelementptr inbounds i8, ptr %i.l, i64 %i.pd ; 2 uses
  %i.pf = add nsw i64 %i.pd, %.sroa.681.0         ; 3 uses
  %.not.i196.i = icmp sgt i64 %i.pf, 0
  br i1 %.not.i196.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pe, i64 %.sroa.681.0, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.bi:                                            ; preds = %bb.bg
  %gepdiff.i197.i = sub nsw i64 0, %i.pd          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pe, i64 %gepdiff.i197.i, i1 false)
  %i.pg = getelementptr inbounds nuw i8, ptr %i.og, i64 %gepdiff.i197.i
  store i64 %i.pf, ptr %.sroa.986.0..sroa_idx, align 8, !tbaa !86
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %ZSTD_wildcopy.exit.i
  %.0179 = phi ptr [ %i.pg, %bb.bi ], [ %i.og, %ZSTD_wildcopy.exit.i ] ; 12 uses
  %.0177 = phi ptr [ %i.h, %bb.bi ], [ %i.oj, %ZSTD_wildcopy.exit.i ] ; 9 uses
  %i.ph = phi i64 [ %i.pf, %bb.bi ], [ %.sroa.681.0, %ZSTD_wildcopy.exit.i ] ; 5 uses
  %i.pi = icmp ugt i64 %.sink, 15
  br i1 %i.pi, label %bb.bk, label %bb.bn, !prof !80

bb.bk:                                            ; preds = %bb.bj
  %i.pj = getelementptr inbounds nuw i8, ptr %.0179, i64 %i.ph
  %.val19 = load <2 x i64>, ptr %.0177, align 1, !tbaa !25
  store <2 x i64> %.val19, ptr %.0179, align 1, !tbaa !25
  %i.pk = icmp ult i64 %i.ph, 17
  br i1 %i.pk, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pl = getelementptr inbounds nuw i8, ptr %.0179, i64 16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.pn.i229.i = phi ptr [ %.0177, %bb.bl ], [ %i.pn, %bb.bm ] ; 2 uses
  %.1.i230.i = phi ptr [ %i.pl, %bb.bl ], [ %i.po, %bb.bm ] ; 3 uses
  %.130.i231.i = getelementptr inbounds nuw i8, ptr %.pn.i229.i, i64 16
  %.130.i231.i.val = load <2 x i64>, ptr %.130.i231.i, align 1, !tbaa !25
  store <2 x i64> %.130.i231.i.val, ptr %.1.i230.i, align 1, !tbaa !25
  %i.pm = getelementptr inbounds nuw i8, ptr %.1.i230.i, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %.pn.i229.i, i64 32 ; 2 uses
  %.val18 = load <2 x i64>, ptr %i.pn, align 1, !tbaa !25
  store <2 x i64> %.val18, ptr %i.pm, align 1, !tbaa !25
  %i.po = getelementptr inbounds nuw i8, ptr %.1.i230.i, i64 32 ; 2 uses
  %i.pp = icmp ult ptr %i.po, %i.pj
  br i1 %i.pp, label %bb.bm, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !8

bb.bn:                                            ; preds = %bb.bj
  %i.pq = icmp samesign ult i64 %.sink, 8
  br i1 %i.pq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !40
  %i.pt = load i8, ptr %.0177, align 1, !tbaa !25
  store i8 %i.pt, ptr %.0179, align 1, !tbaa !25
  %i.pu = getelementptr inbounds nuw i8, ptr %.0177, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !25
  %i.pw = getelementptr inbounds nuw i8, ptr %.0179, i64 1
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !25
  %i.px = getelementptr inbounds nuw i8, ptr %.0177, i64 2
  %i.py = load i8, ptr %i.px, align 1, !tbaa !25
  %i.pz = getelementptr inbounds nuw i8, ptr %.0179, i64 2
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !25
  %i.qa = getelementptr inbounds nuw i8, ptr %.0177, i64 3
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !25
  %i.qc = getelementptr inbounds nuw i8, ptr %.0179, i64 3
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !25
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !40
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %.0177, i64 %i.qf ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.0179, i64 4
  %.val31 = load i32, ptr %i.qg, align 1
  store i32 %.val31, ptr %i.qh, align 1
  %i.qi = sext i32 %i.ps to i64
  %i.qj = sub nsw i64 0, %i.qi
  %i.qk = getelementptr inbounds i8, ptr %i.qg, i64 %i.qj
  br label %ZSTD_overlapCopy8.exit.i

bb.bp:                                            ; preds = %bb.bn
  %.val35 = load i64, ptr %.0177, align 1
  store i64 %.val35, ptr %.0179, align 1
  br label %ZSTD_overlapCopy8.exit.i

ZSTD_overlapCopy8.exit.i:                         ; preds = %bb.bp, %bb.bo
  %.1178 = phi ptr [ %i.qk, %bb.bo ], [ %.0177, %bb.bp ]
  %i.ql = getelementptr inbounds nuw i8, ptr %.1178, i64 8 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.0179, i64 8 ; 3 uses
  %i.qn = icmp ugt i64 %i.ph, 8
  br i1 %i.qn, label %bb.bq, label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.bq:                                            ; preds = %ZSTD_overlapCopy8.exit.i
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.ql to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = getelementptr i8, ptr %.0179, i64 %i.ph ; 2 uses
  %i.qs = icmp slt i64 %i.qq, 16
  br i1 %i.qs, label %.preheader269, label %bb.br

.preheader269:                                    ; preds = %bb.bq, %.preheader269
  %.029.i.i = phi ptr [ %i.qu, %.preheader269 ], [ %i.ql, %bb.bq ] ; 2 uses
  %.0.i238.i = phi ptr [ %i.qt, %.preheader269 ], [ %i.qm, %bb.bq ] ; 2 uses
  %.029.i.i.val = load i64, ptr %.029.i.i, align 1
  store i64 %.029.i.i.val, ptr %.0.i238.i, align 1
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.i238.i, i64 8 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8
  %i.qv = icmp ult ptr %i.qt, %i.qr
  br i1 %i.qv, label %.preheader269, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !9

bb.br:                                            ; preds = %bb.bq
  %.val21 = load <2 x i64>, ptr %i.ql, align 1, !tbaa !25
  store <2 x i64> %.val21, ptr %i.qm, align 1, !tbaa !25
  %i.qw = icmp ult i64 %i.ph, 25
  br i1 %i.qw, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qx = getelementptr inbounds nuw i8, ptr %.0179, i64 24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %.pn.i235.i = phi ptr [ %i.ql, %bb.bs ], [ %i.qz, %bb.bt ] ; 2 uses
  %.1.i236.i = phi ptr [ %i.qx, %bb.bs ], [ %i.ra, %bb.bt ] ; 3 uses
  %.130.i237.i = getelementptr inbounds nuw i8, ptr %.pn.i235.i, i64 16
  %.130.i237.i.val = load <2 x i64>, ptr %.130.i237.i, align 1, !tbaa !25
  store <2 x i64> %.130.i237.i.val, ptr %.1.i236.i, align 1, !tbaa !25
  %i.qy = getelementptr inbounds nuw i8, ptr %.1.i236.i, i64 16
  %i.qz = getelementptr inbounds nuw i8, ptr %.pn.i235.i, i64 32 ; 2 uses
  %.val20 = load <2 x i64>, ptr %i.qz, align 1, !tbaa !25
  store <2 x i64> %.val20, ptr %i.qy, align 1, !tbaa !25
  %i.ra = getelementptr inbounds nuw i8, ptr %.1.i236.i, i64 32 ; 2 uses
  %i.rb = icmp ult ptr %i.ra, %i.qr
  br i1 %i.rb, label %bb.bt, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !8

ZSTD_execSequenceSplitLitBuffer.exit.i:           ; preds = %bb.bt, %.preheader269, %bb.bm, %bb.br, %bb.bk, %ZSTD_overlapCopy8.exit.i, %bb.bh, %bb.bb
  %.0.i195.i = phi i64 [ %i.oo, %bb.bb ], [ %i.oh, %.preheader269 ], [ %i.oh, %bb.bh ], [ %i.oh, %ZSTD_overlapCopy8.exit.i ], [ %i.oh, %bb.bk ], [ %i.oh, %bb.br ], [ %i.oh, %bb.bm ], [ %i.oh, %bb.bt ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rc = icmp ult i64 %.0.i195.i, -119
  br i1 %i.rc, label %bb.bu, label %.thread239

bb.bu:                                            ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i
  %i.rd = getelementptr inbounds nuw i8, ptr %.0130.i290, i64 %.0.i195.i ; 2 uses
  %i.re = add nsw i32 %.0153.i289, -1             ; 2 uses
  %.not165.i = icmp eq i32 %i.re, 0
  br i1 %.not165.i, label %.thread235, label %bb.ac, !llvm.loop !12

bb.bv:                                            ; preds = %ZSTD_decodeSequence.exit185.i
  %i.rf = icmp sgt i32 %.0153.i289, 0
  br i1 %i.rf, label %.thread391, label %.thread239

.thread391:                                       ; preds = %ZSTD_decodeSequence.exit185.i.thread, %bb.bv
  %i.rg = phi ptr [ %i.nm, %bb.bv ], [ %i.lb, %ZSTD_decodeSequence.exit185.i.thread ] ; 2 uses
  %i.rh = phi i32 [ %i.nn, %bb.bv ], [ %i.ln, %ZSTD_decodeSequence.exit185.i.thread ] ; 2 uses
  %i.ri = phi i64 [ %i.no, %bb.bv ], [ %i.ld, %ZSTD_decodeSequence.exit185.i.thread ]
  %.0153.i289153 = phi i32 [ %.0153.i289, %bb.bv ], [ 1, %ZSTD_decodeSequence.exit185.i.thread ]
  %i.rj = phi i64 [ %i.mh, %bb.bv ], [ %i.he, %ZSTD_decodeSequence.exit185.i.thread ]
  %i.rk = phi i64 [ %i.mr, %bb.bv ], [ %i.hf, %ZSTD_decodeSequence.exit185.i.thread ]
  %i.rl = phi i64 [ %i.lx, %bb.bv ], [ %i.hg, %ZSTD_decodeSequence.exit185.i.thread ]
  %i.rm = phi ptr [ %i.np, %bb.bv ], [ %i.nt, %ZSTD_decodeSequence.exit185.i.thread ] ; 11 uses
  %i.rn = phi ptr [ %i.nr, %bb.bv ], [ %i.nv, %ZSTD_decodeSequence.exit185.i.thread ] ; 2 uses
  %i.ro = ptrtoint ptr %i.rn to i64               ; 2 uses
  %i.rp = ptrtoint ptr %i.rm to i64               ; 3 uses
  %i.rq = sub i64 %i.ro, %i.rp                    ; 8 uses
  %.not167.i = icmp eq ptr %i.rn, %i.rm
  br i1 %.not167.i, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %.thread391
  %i.rr = ptrtoint ptr %i.b to i64
  %i.rs = ptrtoint ptr %.0130.i290 to i64         ; 6 uses
  %i.rt = sub i64 %i.rr, %i.rs
  %i.ru = icmp ugt i64 %i.rq, %i.rt
  br i1 %i.ru, label %.thread239, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rv = sub i64 %i.rs, %i.rp                    ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.0130.i290, i64 %i.rq ; 3 uses
  %i.rx = icmp ult i64 %i.rq, 8
  %i.ry = icmp sgt i64 %i.rv, -8
  %or.cond.i = or i1 %i.rx, %i.ry
  br i1 %or.cond.i, label %iter.check107, label %bb.by

iter.check107:                                    ; preds = %bb.bx
  %i.rz = add i64 %i.rs, %i.ro
  %i.sa = sub i64 %i.rz, %i.rp
  %i.sb = add i64 %i.rs, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.sa, i64 %i.sb)
  %i.sc = sub i64 %umax, %i.rs                    ; 7 uses
  %min.iters.check91 = icmp ult i64 %i.sc, 8
  %i.sd = add i64 %i.rv, -1
  %diff.check93 = icmp ult i64 %i.sd, 31
  %or.cond124 = or i1 %min.iters.check91, %diff.check93
  br i1 %or.cond124, label %.lr.ph41.i.preheader, label %vector.main.loop.iter.check94

vector.main.loop.iter.check94:                    ; preds = %iter.check107
  %min.iters.check95 = icmp ult i64 %i.sc, 32
  br i1 %min.iters.check95, label %vec.epilog.ph111, label %vector.ph96

vector.ph96:                                      ; preds = %vector.main.loop.iter.check94
  %i.se = and i64 %i.sc, 24
  %n.vec97 = and i64 %i.sc, -32                   ; 5 uses
  %i.sf = getelementptr i8, ptr %.0130.i290, i64 %n.vec97
  %i.sg = getelementptr i8, ptr %i.rm, i64 %n.vec97
  br label %vector.body98

vector.body98:                                    ; preds = %vector.ph96, %vector.body98
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next104, %vector.body98 ] ; 3 uses
  %next.gep100 = getelementptr i8, ptr %.0130.i290, i64 %index99 ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.rm, i64 %index99 ; 2 uses
  %i.sh = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load102 = load <16 x i8>, ptr %next.gep101, align 1, !tbaa !25
  %wide.load103 = load <16 x i8>, ptr %i.sh, align 1, !tbaa !25
  %i.si = getelementptr i8, ptr %next.gep100, i64 16
  store <16 x i8> %wide.load102, ptr %next.gep100, align 1, !tbaa !25
  store <16 x i8> %wide.load103, ptr %i.si, align 1, !tbaa !25
  %index.next104 = add nuw i64 %index99, 32       ; 2 uses
  %i.sj = icmp eq i64 %index.next104, %n.vec97
  br i1 %i.sj, label %middle.block105, label %vector.body98, !llvm.loop !185

middle.block105:                                  ; preds = %vector.body98
  %cmp.n106 = icmp eq i64 %i.sc, %n.vec97
  br i1 %cmp.n106, label %ZSTD_safecopyDstBeforeSrc.exit, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block105
  %min.epilog.iters.check110 = icmp eq i64 %i.se, 0
  br i1 %min.epilog.iters.check110, label %.lr.ph41.i.preheader, label %vec.epilog.ph111, !prof !83

vec.epilog.ph111:                                 ; preds = %vector.main.loop.iter.check94, %vec.epilog.iter.check108
  %vec.epilog.resume.val112 = phi i64 [ %n.vec97, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check94 ]
  %n.vec113 = and i64 %i.sc, -8                   ; 4 uses
  %i.sk = getelementptr i8, ptr %.0130.i290, i64 %n.vec113
  %i.sl = getelementptr i8, ptr %i.rm, i64 %n.vec113
  br label %vec.epilog.vector.body114

vec.epilog.vector.body114:                        ; preds = %vec.epilog.vector.body114, %vec.epilog.ph111
  %index115 = phi i64 [ %vec.epilog.resume.val112, %vec.epilog.ph111 ], [ %index.next119, %vec.epilog.vector.body114 ] ; 3 uses
  %next.gep116 = getelementptr i8, ptr %.0130.i290, i64 %index115
  %next.gep117 = getelementptr i8, ptr %i.rm, i64 %index115
  %wide.load118 = load <8 x i8>, ptr %next.gep117, align 1, !tbaa !25
  store <8 x i8> %wide.load118, ptr %next.gep116, align 1, !tbaa !25
  %index.next119 = add nuw i64 %index115, 8       ; 2 uses
  %i.sm = icmp eq i64 %index.next119, %n.vec113
  br i1 %i.sm, label %vec.epilog.middle.block120, label %vec.epilog.vector.body114, !llvm.loop !186

vec.epilog.middle.block120:                       ; preds = %vec.epilog.vector.body114
  %cmp.n121 = icmp eq i64 %i.sc, %n.vec113
  br i1 %cmp.n121, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check107, %vec.epilog.iter.check108, %vec.epilog.middle.block120
  %.040.i.ph = phi ptr [ %.0130.i290, %iter.check107 ], [ %i.sf, %vec.epilog.iter.check108 ], [ %i.sk, %vec.epilog.middle.block120 ]
  %.02939.i.ph = phi ptr [ %i.rm, %iter.check107 ], [ %i.sg, %vec.epilog.iter.check108 ], [ %i.sl, %vec.epilog.middle.block120 ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.lr.ph41.i
  %.040.i = phi ptr [ %i.sp, %.lr.ph41.i ], [ %.040.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %.02939.i = phi ptr [ %i.sn, %.lr.ph41.i ], [ %.02939.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.02939.i, i64 1
  %i.so = load i8, ptr %.02939.i, align 1, !tbaa !25
  %i.sp = getelementptr inbounds nuw i8, ptr %.040.i, i64 1 ; 2 uses
  store i8 %i.so, ptr %.040.i, align 1, !tbaa !25
  %i.sq = icmp ult ptr %i.sp, %i.rw
  br i1 %i.sq, label %.lr.ph41.i, label %ZSTD_safecopyDstBeforeSrc.exit, !llvm.loop !187

bb.by:                                            ; preds = %bb.bx
  %i.sr = icmp sgt i64 %i.rq, 31
  %i.ss = icmp samesign ult i64 %i.rv, -16
  %or.cond3.i = and i1 %i.sr, %i.ss
  br i1 %or.cond3.i, label %bb.bz, label %iter.check

bb.bz:                                            ; preds = %bb.by
  %i.st = getelementptr inbounds i8, ptr %i.rw, i64 -32
  %i.su = add nsw i64 %i.rq, -32                  ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.0130.i290, i64 %i.su
  %.val35.i = load <2 x i64>, ptr %i.rm, align 1, !tbaa !25
  store <2 x i64> %.val35.i, ptr %.0130.i290, align 1, !tbaa !25
  %i.sw = icmp samesign ult i64 %i.rq, 49
  br i1 %i.sw, label %.thread.i68, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sx = getelementptr inbounds nuw i8, ptr %.0130.i290, i64 16
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %bb.ca
  %.pn.i.i64 = phi ptr [ %i.rm, %bb.ca ], [ %i.sz, %bb.cb ] ; 2 uses
  %.1.i.i65 = phi ptr [ %i.sx, %bb.ca ], [ %i.ta, %bb.cb ] ; 3 uses
  %.130.i.i66 = getelementptr inbounds nuw i8, ptr %.pn.i.i64, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i66, align 1, !tbaa !25
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i65, align 1, !tbaa !25
  %i.sy = getelementptr inbounds nuw i8, ptr %.1.i.i65, i64 16
  %i.sz = getelementptr inbounds nuw i8, ptr %.pn.i.i64, i64 32 ; 2 uses
  %.val.i67 = load <2 x i64>, ptr %i.sz, align 1, !tbaa !25
  store <2 x i64> %.val.i67, ptr %i.sy, align 1, !tbaa !25
  %i.ta = getelementptr inbounds nuw i8, ptr %.1.i.i65, i64 32 ; 2 uses
  %i.tb = icmp ult ptr %i.ta, %i.sv
  br i1 %i.tb, label %bb.cb, label %.thread.i68, !llvm.loop !8

.thread.i68:                                      ; preds = %bb.cb, %bb.bz
  %i.tc = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.su
  br label %iter.check

iter.check:                                       ; preds = %bb.by, %.thread.i68
  %.148.i = phi ptr [ %i.st, %.thread.i68 ], [ %.0130.i290, %bb.by ] ; 7 uses
  %.13047.i = phi ptr [ %i.tc, %.thread.i68 ], [ %i.rm, %bb.by ] ; 6 uses
  %.143.i = ptrtoaddr ptr %.148.i to i64          ; 2 uses
  %i.td = add i64 %i.rq, %i.rs
  %i.te = sub i64 %i.td, %.143.i                  ; 8 uses
  %scevgep.i = getelementptr i8, ptr %.148.i, i64 %i.te
  %min.iters.check = icmp ult i64 %i.te, 8
  %.13047.i77 = ptrtoaddr ptr %.13047.i to i64
  %i.tf = sub i64 %.13047.i77, %.143.i
  %diff.check = icmp ugt i64 %i.tf, -32
  %or.cond125 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond125, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.te, 32
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.tg = and i64 %i.te, 24
  %n.vec = and i64 %i.te, -32                     ; 5 uses
  %i.th = getelementptr i8, ptr %.148.i, i64 %n.vec
  %i.ti = getelementptr i8, ptr %.13047.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.148.i, i64 %index ; 2 uses
  %next.gep79 = getelementptr i8, ptr %.13047.i, i64 %index ; 2 uses
  %i.tj = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep79, align 1, !tbaa !25
  %wide.load80 = load <16 x i8>, ptr %i.tj, align 1, !tbaa !25
  %i.tk = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !25
  store <16 x i8> %wide.load80, ptr %i.tk, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.tl = icmp eq i64 %index.next, %n.vec
  br i1 %i.tl, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.te, %n.vec
  br i1 %cmp.n, label %ZSTD_safecopyDstBeforeSrc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.tg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec81 = and i64 %i.te, -8                    ; 4 uses
  %i.tm = getelementptr i8, ptr %.148.i, i64 %n.vec81
  %i.tn = getelementptr i8, ptr %.13047.i, i64 %n.vec81
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 3 uses
  %next.gep83 = getelementptr i8, ptr %.148.i, i64 %index82
  %next.gep84 = getelementptr i8, ptr %.13047.i, i64 %index82
  %wide.load85 = load <8 x i8>, ptr %next.gep84, align 1, !tbaa !25
  store <8 x i8> %wide.load85, ptr %next.gep83, align 1, !tbaa !25
  %index.next86 = add nuw i64 %index82, 8         ; 2 uses
  %i.to = icmp eq i64 %index.next86, %n.vec81
  br i1 %i.to, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !189

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n87 = icmp eq i64 %i.te, %n.vec81
  br i1 %cmp.n87, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.238.i.ph = phi ptr [ %.148.i, %iter.check ], [ %i.th, %vec.epilog.iter.check ], [ %i.tm, %vec.epilog.middle.block ]
  %.23137.i.ph = phi ptr [ %.13047.i, %iter.check ], [ %i.ti, %vec.epilog.iter.check ], [ %i.tn, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.238.i = phi ptr [ %i.tr, %.lr.ph.i ], [ %.238.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.23137.i = phi ptr [ %i.tp, %.lr.ph.i ], [ %.23137.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.23137.i, i64 1
  %i.tq = load i8, ptr %.23137.i, align 1, !tbaa !25
  %i.tr = getelementptr inbounds nuw i8, ptr %.238.i, i64 1 ; 2 uses
  store i8 %i.tq, ptr %.238.i, align 1, !tbaa !25
  %exitcond.not.i = icmp eq ptr %i.tr, %scevgep.i
  br i1 %exitcond.not.i, label %ZSTD_safecopyDstBeforeSrc.exit, label %.lr.ph.i, !llvm.loop !190

ZSTD_safecopyDstBeforeSrc.exit:                   ; preds = %.lr.ph.i, %.lr.ph41.i, %middle.block, %vec.epilog.middle.block, %middle.block105, %vec.epilog.middle.block120
  %i.ts = sub i64 %.sroa.080.0, %i.rq
  br label %bb.cc

bb.cc:                                            ; preds = %ZSTD_safecopyDstBeforeSrc.exit, %.thread391
  %.sroa.083.2 = phi i64 [ %.sroa.080.0, %.thread391 ], [ %i.ts, %ZSTD_safecopyDstBeforeSrc.exit ] ; 7 uses
  %.2132.i = phi ptr [ %.0130.i290, %.thread391 ], [ %i.rw, %ZSTD_safecopyDstBeforeSrc.exit ] ; 7 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  store ptr %i.tt, ptr %i.a, align 8, !tbaa !46
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 5 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %i.tv, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.083.2, ptr %7, align 8
  %.sroa.986.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.681.0, ptr %.sroa.986.0..sroa_idx87, align 8
  %.sroa.10.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sink, ptr %.sroa.10.0..sroa_idx89, align 8
  %i.tw = getelementptr i8, ptr %.2132.i, i64 %.sroa.083.2 ; 7 uses
  %i.tx = add i64 %.sroa.083.2, %.sroa.681.0      ; 8 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tt, i64 %.sroa.083.2
  %i.tz = sub i64 0, %.sink
  %i.ua = getelementptr inbounds i8, ptr %i.tw, i64 %i.tz ; 2 uses
  %i.ub = icmp ugt i64 %.sroa.083.2, 65536
  %i.uc = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.2132.i, i64 %i.tx
  %i.ue = icmp ugt ptr %i.ud, %i.uc
  %or.cond.i187.i = select i1 %i.ub, i1 true, i1 %i.ue, !prof !84
  br i1 %or.cond.i187.i, label %bb.cd, label %.critedge.i188.i, !prof !84

.critedge.i188.i:                                 ; preds = %bb.cc
  %.val15 = load <2 x i64>, ptr %i.tt, align 4, !tbaa !25
  store <2 x i64> %.val15, ptr %.2132.i, align 1, !tbaa !25
  %i.uf = icmp samesign ugt i64 %.sroa.083.2, 16
  br i1 %i.uf, label %bb.ce, label %ZSTD_wildcopy.exit246.i, !prof !55

bb.cd:                                            ; preds = %bb.cc
  %i.ug = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.2132.i, ptr noundef %i.b, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.tu, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %.loopexit

bb.ce:                                            ; preds = %.critedge.i188.i
  %i.uh = getelementptr inbounds nuw i8, ptr %.2132.i, i64 16
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.val10 = load <2 x i64>, ptr %i.ui, align 4, !tbaa !25
  store <2 x i64> %.val10, ptr %i.uh, align 1, !tbaa !25
  %10 = icmp samesign ult i64 %.sroa.083.2, 33
  br i1 %10, label %ZSTD_wildcopy.exit246.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.uj = getelementptr inbounds nuw i8, ptr %.2132.i, i64 32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.pn.i241.i = phi ptr [ %i.ui, %bb.cf ], [ %i.ul, %bb.cg ] ; 2 uses
  %.1.i242.i = phi ptr [ %i.uj, %bb.cf ], [ %i.um, %bb.cg ] ; 3 uses
  %.130.i243.i = getelementptr inbounds nuw i8, ptr %.pn.i241.i, i64 16
  %.130.i243.i.val = load <2 x i64>, ptr %.130.i243.i, align 1, !tbaa !25
  store <2 x i64> %.130.i243.i.val, ptr %.1.i242.i, align 1, !tbaa !25
  %i.uk = getelementptr inbounds nuw i8, ptr %.1.i242.i, i64 16
  %i.ul = getelementptr inbounds nuw i8, ptr %.pn.i241.i, i64 32 ; 2 uses
  %.val9 = load <2 x i64>, ptr %i.ul, align 1, !tbaa !25
  store <2 x i64> %.val9, ptr %i.uk, align 1, !tbaa !25
  %i.um = getelementptr inbounds nuw i8, ptr %.1.i242.i, i64 32 ; 2 uses
  %i.un = icmp ult ptr %i.um, %i.tw
  br i1 %i.un, label %bb.cg, label %ZSTD_wildcopy.exit246.i, !llvm.loop !8

ZSTD_wildcopy.exit246.i:                          ; preds = %bb.cg, %bb.ce, %.critedge.i188.i
  store ptr %i.ty, ptr %i.a, align 8, !tbaa !46
  %i.uo = ptrtoint ptr %i.tw to i64               ; 2 uses
  %i.up = sub i64 %i.uo, %i.gu
  %i.uq = icmp ugt i64 %.sink, %i.up
  br i1 %i.uq, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %ZSTD_wildcopy.exit246.i
  %i.ur = sub i64 %i.uo, %i.gv
  %i.us = icmp ugt i64 %.sink, %i.ur
  br i1 %i.us, label %.loopexit.thread, label %bb.ci, !prof !55

.loopexit.thread:                                 ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread239

bb.ci:                                            ; preds = %bb.ch
  %i.ut = ptrtoint ptr %i.ua to i64
  %i.uu = sub i64 %i.ut, %i.gu                    ; 3 uses
  %i.uv = getelementptr inbounds i8, ptr %i.l, i64 %i.uu ; 2 uses
  %i.uw = add nsw i64 %i.uu, %.sroa.681.0         ; 3 uses
  %.not.i190.i = icmp sgt i64 %i.uw, 0
  br i1 %.not.i190.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tw, ptr align 1 %i.uv, i64 %.sroa.681.0, i1 false)
  br label %.loopexit

bb.ck:                                            ; preds = %bb.ci
  %gepdiff.i191.i = sub nsw i64 0, %i.uu          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tw, ptr align 1 %i.uv, i64 %gepdiff.i191.i, i1 false)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tw, i64 %gepdiff.i191.i
  store i64 %i.uw, ptr %.sroa.986.0..sroa_idx87, align 8, !tbaa !86
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %ZSTD_wildcopy.exit246.i
  %.0176 = phi ptr [ %i.ux, %bb.ck ], [ %i.tw, %ZSTD_wildcopy.exit246.i ] ; 12 uses
  %.0174 = phi ptr [ %i.h, %bb.ck ], [ %i.ua, %ZSTD_wildcopy.exit246.i ] ; 9 uses
  %i.uy = phi i64 [ %i.uw, %bb.ck ], [ %.sroa.681.0, %ZSTD_wildcopy.exit246.i ] ; 5 uses
  %i.uz = icmp ugt i64 %.sink, 15
  br i1 %i.uz, label %bb.cm, label %bb.cp, !prof !80

bb.cm:                                            ; preds = %bb.cl
  %i.va = getelementptr inbounds nuw i8, ptr %.0176, i64 %i.uy
  %.val12 = load <2 x i64>, ptr %.0174, align 1, !tbaa !25
  store <2 x i64> %.val12, ptr %.0176, align 1, !tbaa !25
  %i.vb = icmp ult i64 %i.uy, 17
  br i1 %i.vb, label %.loopexit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vc = getelementptr inbounds nuw i8, ptr %.0176, i64 16
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.pn.i248.i = phi ptr [ %.0174, %bb.cn ], [ %i.ve, %bb.co ] ; 2 uses
  %.1.i249.i = phi ptr [ %i.vc, %bb.cn ], [ %i.vf, %bb.co ] ; 3 uses
  %.130.i250.i = getelementptr inbounds nuw i8, ptr %.pn.i248.i, i64 16
  %.130.i250.i.val = load <2 x i64>, ptr %.130.i250.i, align 1, !tbaa !25
  store <2 x i64> %.130.i250.i.val, ptr %.1.i249.i, align 1, !tbaa !25
  %i.vd = getelementptr inbounds nuw i8, ptr %.1.i249.i, i64 16
  %i.ve = getelementptr inbounds nuw i8, ptr %.pn.i248.i, i64 32 ; 2 uses
  %.val11 = load <2 x i64>, ptr %i.ve, align 1, !tbaa !25
  store <2 x i64> %.val11, ptr %i.vd, align 1, !tbaa !25
  %i.vf = getelementptr inbounds nuw i8, ptr %.1.i249.i, i64 32 ; 2 uses
  %i.vg = icmp ult ptr %i.vf, %i.va
  br i1 %i.vg, label %bb.co, label %.loopexit, !llvm.loop !8

bb.cp:                                            ; preds = %bb.cl
  %i.vh = icmp samesign ult i64 %.sink, 8
  br i1 %i.vh, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !40
  %i.vk = load i8, ptr %.0174, align 1, !tbaa !25
  store i8 %i.vk, ptr %.0176, align 1, !tbaa !25
  %i.vl = getelementptr inbounds nuw i8, ptr %.0174, i64 1
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !25
  %i.vn = getelementptr inbounds nuw i8, ptr %.0176, i64 1
  store i8 %i.vm, ptr %i.vn, align 1, !tbaa !25
  %i.vo = getelementptr inbounds nuw i8, ptr %.0174, i64 2
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !25
  %i.vq = getelementptr inbounds nuw i8, ptr %.0176, i64 2
  store i8 %i.vp, ptr %i.vq, align 1, !tbaa !25
  %i.vr = getelementptr inbounds nuw i8, ptr %.0174, i64 3
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !25
  %i.vt = getelementptr inbounds nuw i8, ptr %.0176, i64 3
  store i8 %i.vs, ptr %i.vt, align 1, !tbaa !25
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !40
  %i.vw = zext i32 %i.vv to i64
  %i.vx = getelementptr inbounds nuw i8, ptr %.0174, i64 %i.vw ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.0176, i64 4
  %.val30 = load i32, ptr %i.vx, align 1
  store i32 %.val30, ptr %i.vy, align 1
  %i.vz = sext i32 %i.vj to i64
  %i.wa = sub nsw i64 0, %i.vz
  %i.wb = getelementptr inbounds i8, ptr %i.vx, i64 %i.wa
  br label %ZSTD_overlapCopy8.exit282.i

bb.cr:                                            ; preds = %bb.cp
  %.val33 = load i64, ptr %.0174, align 1
  store i64 %.val33, ptr %.0176, align 1
  br label %ZSTD_overlapCopy8.exit282.i

ZSTD_overlapCopy8.exit282.i:                      ; preds = %bb.cr, %bb.cq
  %.1175 = phi ptr [ %i.wb, %bb.cq ], [ %.0174, %bb.cr ]
  %i.wc = getelementptr inbounds nuw i8, ptr %.1175, i64 8 ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.0176, i64 8 ; 3 uses
  %i.we = icmp ugt i64 %i.uy, 8
  br i1 %i.we, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %ZSTD_overlapCopy8.exit282.i
  %i.wf = ptrtoint ptr %i.wd to i64
  %i.wg = ptrtoint ptr %i.wc to i64
  %i.wh = sub i64 %i.wf, %i.wg
  %i.wi = getelementptr i8, ptr %.0176, i64 %i.uy ; 2 uses
  %i.wj = icmp slt i64 %i.wh, 16
  br i1 %i.wj, label %.preheader265, label %bb.ct

.preheader265:                                    ; preds = %bb.cs, %.preheader265
  %.029.i258.i = phi ptr [ %i.wl, %.preheader265 ], [ %i.wc, %bb.cs ] ; 2 uses
  %.0.i259.i = phi ptr [ %i.wk, %.preheader265 ], [ %i.wd, %bb.cs ] ; 2 uses
  %.029.i258.i.val = load i64, ptr %.029.i258.i, align 1
  store i64 %.029.i258.i.val, ptr %.0.i259.i, align 1
  %i.wk = getelementptr inbounds nuw i8, ptr %.0.i259.i, i64 8 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.029.i258.i, i64 8
  %i.wm = icmp ult ptr %i.wk, %i.wi
  br i1 %i.wm, label %.preheader265, label %.loopexit, !llvm.loop !9

bb.ct:                                            ; preds = %bb.cs
  %.val14 = load <2 x i64>, ptr %i.wc, align 1, !tbaa !25
  store <2 x i64> %.val14, ptr %i.wd, align 1, !tbaa !25
  %i.wn = icmp ult i64 %i.uy, 25
  br i1 %i.wn, label %.loopexit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.wo = getelementptr inbounds nuw i8, ptr %.0176, i64 24
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %.pn.i255.i = phi ptr [ %i.wc, %bb.cu ], [ %i.wq, %bb.cv ] ; 2 uses
  %.1.i256.i = phi ptr [ %i.wo, %bb.cu ], [ %i.wr, %bb.cv ] ; 3 uses
  %.130.i257.i = getelementptr inbounds nuw i8, ptr %.pn.i255.i, i64 16
  %.130.i257.i.val = load <2 x i64>, ptr %.130.i257.i, align 1, !tbaa !25
  store <2 x i64> %.130.i257.i.val, ptr %.1.i256.i, align 1, !tbaa !25
  %i.wp = getelementptr inbounds nuw i8, ptr %.1.i256.i, i64 16
  %i.wq = getelementptr inbounds nuw i8, ptr %.pn.i255.i, i64 32 ; 2 uses
  %.val13 = load <2 x i64>, ptr %i.wq, align 1, !tbaa !25
  store <2 x i64> %.val13, ptr %i.wp, align 1, !tbaa !25
  %i.wr = getelementptr inbounds nuw i8, ptr %.1.i256.i, i64 32 ; 2 uses
  %i.ws = icmp ult ptr %i.wr, %i.wi
  br i1 %i.ws, label %bb.cv, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %bb.cv, %.preheader265, %bb.co, %bb.cd, %bb.cj, %ZSTD_overlapCopy8.exit282.i, %bb.cm, %bb.ct
  %.0.i189.i = phi i64 [ %i.ug, %bb.cd ], [ %i.tx, %bb.co ], [ %i.tx, %bb.cj ], [ %i.tx, %ZSTD_overlapCopy8.exit282.i ], [ %i.tx, %bb.cm ], [ %i.tx, %.preheader265 ], [ %i.tx, %bb.ct ], [ %i.tx, %bb.cv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.wt = icmp ult i64 %.0.i189.i, -119
  %i.wu = getelementptr inbounds nuw i8, ptr %.2132.i, i64 %.0.i189.i ; 2 uses
  %i.wv = add nsw i32 %.0153.i289153, -1          ; 2 uses
  br i1 %i.wt, label %bb.cw, label %.thread239

bb.cw:                                            ; preds = %.loopexit
  %.not256 = icmp eq i32 %i.wv, 0
  br i1 %.not256, label %.thread235, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !87
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !88
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !89
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !90
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !91
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ww = ptrtoint ptr %3 to i64
  %i.wx = ptrtoint ptr %3 to i64
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.ep
  %i.wy = phi ptr [ %i.rg, %bb.cx ], [ %i.adm, %bb.ep ] ; 8 uses
  %i.wz = phi i32 [ %i.rh, %bb.cx ], [ %i.adn, %bb.ep ] ; 5 uses
  %i.xa = phi i64 [ %i.ri, %bb.cx ], [ %i.ado, %bb.ep ] ; 6 uses
  %i.xb = phi i64 [ %i.jv, %bb.cx ], [ %i.zv, %bb.ep ] ; 2 uses
  %i.xc = phi i64 [ %.sink470, %bb.cx ], [ %.sink472, %bb.ep ] ; 6 uses
  %i.xd = phi i64 [ %.sink, %bb.cx ], [ %.sink471, %bb.ep ] ; 6 uses
  %i.xe = phi i64 [ %i.rj, %bb.cx ], [ %i.adp, %bb.ep ] ; 2 uses
  %i.xf = phi i64 [ %i.rk, %bb.cx ], [ %i.adq, %bb.ep ] ; 2 uses
  %i.xg = phi i64 [ %i.rl, %bb.cx ], [ %i.adr, %bb.ep ] ; 2 uses
  %.7137.i293 = phi ptr [ %i.wu, %bb.cx ], [ %i.agr, %bb.ep ] ; 7 uses
  %.4157.i292 = phi i32 [ %i.wv, %bb.cx ], [ %i.ags, %bb.ep ] ; 2 uses
  %.not260 = icmp eq i32 %.4157.i292, 1
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.xg ; 4 uses
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.xe ; 4 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.xf ; 4 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 4
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !50, !noalias !194
  %i.xm = zext i32 %i.xl to i64                   ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !50, !noalias !194 ; 2 uses
  %i.xp = zext i32 %i.xo to i64                   ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xj, i64 4
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !50, !noalias !194 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.xt = load i8, ptr %i.xs, align 2, !tbaa !58, !noalias !194 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xi, i64 2
  %i.xv = load i8, ptr %i.xu, align 2, !tbaa !58, !noalias !194 ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xj, i64 2
  %i.xx = load i8, ptr %i.xw, align 2, !tbaa !58, !noalias !194 ; 4 uses
  %i.xy = zext i8 %i.xt to i32                    ; 2 uses
  %i.xz = zext i8 %i.xv to i32                    ; 2 uses
  %i.ya = add i8 %i.xv, %i.xt
  %i.yb = add i8 %i.ya, %i.xx
  %i.yc = load i16, ptr %i.xh, align 4, !tbaa !57, !noalias !194
  %i.yd = load i16, ptr %i.xi, align 4, !tbaa !57, !noalias !194
  %i.ye = load i16, ptr %i.xj, align 4, !tbaa !57, !noalias !194
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xh, i64 3
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !56, !noalias !194 ; 2 uses
  %i.yh = zext i8 %i.yg to i32
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xi, i64 3
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !56, !noalias !194 ; 2 uses
  %i.yk = zext i8 %i.yj to i32
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xj, i64 3
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !56, !noalias !194 ; 2 uses
  %i.yn = zext i8 %i.ym to i32
  %i.yo = icmp ugt i8 %i.xx, 1
  br i1 %i.yo, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.yp = zext i8 %i.xx to i32                    ; 2 uses
  %i.yq = and i32 %i.wz, 63
  %i.yr = zext nneg i32 %i.yq to i64
  %i.ys = shl i64 %i.xa, %i.yr
  %i.yt = sub nsw i32 0, %i.yp
  %i.yu = and i32 %i.yt, 63
  %i.yv = zext nneg i32 %i.yu to i64
  %i.yw = lshr i64 %i.ys, %i.yv
  %i.yx = add i32 %i.wz, %i.yp                    ; 2 uses
  store i32 %i.yx, ptr %i.cn, align 8, !tbaa !77, !noalias !194
  %i.yy = zext i32 %i.xr to i64
  %i.yz = add i64 %i.yw, %i.yy
  store i64 %i.xc, ptr %i.gt, align 8, !tbaa !52, !noalias !194
  br label %bb.df

bb.da:                                            ; preds = %bb.cy
  %i.za = icmp eq i32 %i.xo, 0                    ; 3 uses
  %i.zb = icmp eq i8 %i.xx, 0
  br i1 %i.zb, label %bb.db, label %bb.dc, !prof !80

bb.db:                                            ; preds = %bb.da
  %i.zc = select i1 %i.za, i64 %i.xc, i64 %i.xd
  %i.zd = select i1 %i.za, i64 %i.xd, i64 %i.xc
  br label %bb.df

bb.dc:                                            ; preds = %bb.da
  %i.ze = zext i1 %i.za to i32
  %i.zf = add i32 %i.xr, %i.ze
  %i.zg = zext i32 %i.zf to i64
  %i.zh = and i32 %i.wz, 63
  %i.zi = zext nneg i32 %i.zh to i64
  %i.zj = shl i64 %i.xa, %i.zi
  %i.zk = lshr i64 %i.zj, 63
  %i.zl = add i32 %i.wz, 1                        ; 3 uses
  store i32 %i.zl, ptr %i.cn, align 8, !tbaa !77, !noalias !194
  %i.zm = add nuw nsw i64 %i.zk, %i.zg            ; 3 uses
  %i.zn = icmp eq i64 %i.zm, 3
  br i1 %i.zn, label %.thread218, label %bb.dd

.thread218:                                       ; preds = %bb.dc
  %i.zo = add i64 %i.xd, -1                       ; 2 uses
  %.not.i.i219 = icmp eq i64 %i.zo, 0
  %i.zp = select i1 %.not.i.i219, i64 -1, i64 %i.zo
  br label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.zm
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !52, !noalias !194 ; 2 uses
  %.not.i.i = icmp eq i64 %i.zr, 0
  %i.zs = select i1 %.not.i.i, i64 -1, i64 %i.zr  ; 2 uses
  %.not101.i.i = icmp eq i64 %i.zm, 1
  br i1 %.not101.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.thread218, %bb.dd
  %i.zt = phi i64 [ %i.zp, %.thread218 ], [ %i.zs, %bb.dd ]
  store i64 %i.xc, ptr %i.gt, align 8, !tbaa !52, !noalias !194
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de, %bb.db, %bb.cz
  %i.zu = phi i32 [ %i.yx, %bb.cz ], [ %i.wz, %bb.db ], [ %i.zl, %bb.de ], [ %i.zl, %bb.dd ] ; 3 uses
  %.sink472 = phi i64 [ %i.xd, %bb.cz ], [ %i.zd, %bb.db ], [ %i.xd, %bb.de ], [ %i.xd, %bb.dd ] ; 3 uses
  %.sink471 = phi i64 [ %i.yz, %bb.cz ], [ %i.zc, %bb.db ], [ %i.zt, %bb.de ], [ %i.zs, %bb.dd ] ; 11 uses
  %i.zv = phi i64 [ %i.xc, %bb.cz ], [ %i.xb, %bb.db ], [ %i.xc, %bb.de ], [ %i.xb, %bb.dd ] ; 2 uses
  store i64 %.sink472, ptr %i.gs, align 8, !tbaa !52, !noalias !194
  store i64 %.sink471, ptr %i.o, align 8, !tbaa !52, !noalias !194
  %.not102.i.i = icmp eq i8 %i.xv, 0
  br i1 %.not102.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.zw = and i32 %i.zu, 63
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = shl i64 %i.xa, %i.zx
  %i.zz = sub nsw i32 0, %i.xz
  %i.aaa = and i32 %i.zz, 63
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = lshr i64 %i.zy, %i.aab
  %i.aad = add i32 %i.zu, %i.xz                   ; 2 uses
  store i32 %i.aad, ptr %i.cn, align 8, !tbaa !77, !noalias !194
  %i.aae = add i64 %i.aac, %i.xm
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.aaf = phi i32 [ %i.zu, %bb.df ], [ %i.aad, %bb.dg ] ; 8 uses
  %.sroa.6.0 = phi i64 [ %i.xm, %bb.df ], [ %i.aae, %bb.dg ] ; 5 uses
  %i.aag = icmp ugt i8 %i.yb, 30
  br i1 %i.aag, label %bb.di, label %BIT_reloadDStream.exit213.i, !prof !55

bb.di:                                            ; preds = %bb.dh
  %i.aah = icmp ugt i32 %i.aaf, 64
  br i1 %i.aah, label %bb.dj, label %bb.dk, !prof !55

bb.dj:                                            ; preds = %bb.di
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.cx, align 8, !tbaa !72, !noalias !194
  br label %BIT_reloadDStream.exit213.i

bb.dk:                                            ; preds = %bb.di
  %.not.i207.i = icmp ult ptr %i.wy, %i.ab
  br i1 %.not.i207.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aai = lshr i32 %i.aaf, 3
  %i.aaj = zext nneg i32 %i.aai to i64
  %i.aak = sub nsw i64 0, %i.aaj
  %i.aal = getelementptr inbounds i8, ptr %i.wy, i64 %i.aak ; 3 uses
  store ptr %i.aal, ptr %i.cx, align 8, !tbaa !72, !noalias !194
  %i.aam = and i32 %i.aaf, 7                      ; 2 uses
  store i32 %i.aam, ptr %i.cn, align 8, !tbaa !77, !noalias !194
  %.val.i76 = load i64, ptr %i.aal, align 1, !tbaa !52, !noalias !194 ; 2 uses
  store i64 %.val.i76, ptr %9, align 8, !tbaa !73, !noalias !194
  br label %BIT_reloadDStream.exit213.i

bb.dm:                                            ; preds = %bb.dk
  %i.aan = icmp eq ptr %i.wy, %3
  br i1 %i.aan, label %BIT_reloadDStream.exit213.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aao = lshr i32 %i.aaf, 3                     ; 2 uses
  %i.aap = zext nneg i32 %i.aao to i64
  %i.aaq = sub nsw i64 0, %i.aap
  %i.aar = getelementptr inbounds i8, ptr %i.wy, i64 %i.aaq
  %i.aas = icmp ult ptr %i.aar, %3
  %i.aat = ptrtoint ptr %i.wy to i64
  %i.aau = sub i64 %i.aat, %i.ww
  %i.aav = trunc i64 %i.aau to i32
  %.021.i209.i = select i1 %i.aas, i32 %i.aav, i32 %i.aao ; 2 uses
  %i.aaw = zext i32 %.021.i209.i to i64
  %i.aax = sub nsw i64 0, %i.aaw
  %i.aay = getelementptr inbounds i8, ptr %i.wy, i64 %i.aax ; 3 uses
  store ptr %i.aay, ptr %i.cx, align 8, !tbaa !72, !noalias !194
  %i.aaz = shl i32 %.021.i209.i, 3
  %i.aba = sub i32 %i.aaf, %i.aaz                 ; 2 uses
  store i32 %i.aba, ptr %i.cn, align 8, !tbaa !77, !noalias !194
end_hunk_6
