Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cdgraphics?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@cdg_tile_block:bb.a
  br i1 %.not34, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader35, %.preheader.us
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.preheader.us ], [ 0, %.preheader35 ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 6 uses
  %i.y = trunc i64 %indvars.iv45 to i32
  %i.z = add i32 %i.l, %i.y
  %i.aa = mul i32 %i.z, %i.c
  %i.ab = add i32 %i.aa, %i.t                     ; 6 uses
  %i.ac = load i8, ptr %i.x, align 1, !tbaa !32
  %i.ad = lshr i8 %i.ac, 5
  %.lobit54 = and i8 %i.ad, 1
  %.030.in.in.in.idx.us.us = zext nneg i8 %.lobit54 to i64
  %.030.in.in.in.us.us = getelementptr inbounds nuw i8, ptr %1, i64 %.030.in.in.in.idx.us.us
  %.030.in.in.us.us = load i8, ptr %.030.in.in.in.us.us, align 1, !tbaa !32
  %.030.in.us.us = and i8 %.030.in.in.us.us, 15
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds i8, ptr %i.d, i64 %i.ae
  store i8 %.030.in.us.us, ptr %i.af, align 1, !tbaa !32
  %i.ag = load i8, ptr %i.x, align 1, !tbaa !32
  %i.ah = lshr i8 %i.ag, 4
  %.lobit55 = and i8 %i.ah, 1
  %.030.in.in.in.idx.us.us.1 = zext nneg i8 %.lobit55 to i64
  %.030.in.in.in.us.us.1 = getelementptr inbounds nuw i8, ptr %1, i64 %.030.in.in.in.idx.us.us.1
  %.030.in.in.us.us.1 = load i8, ptr %.030.in.in.in.us.us.1, align 1, !tbaa !32
  %.030.in.us.us.1 = and i8 %.030.in.in.us.us.1, 15
  %i.ai = add i32 %i.ab, 1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.d, i64 %i.aj
  store i8 %.030.in.us.us.1, ptr %i.ak, align 1, !tbaa !32
  %i.al = load i8, ptr %i.x, align 1, !tbaa !32
  %i.am = lshr i8 %i.al, 3
  %.lobit56 = and i8 %i.am, 1
  %.030.in.in.in.idx.us.us.2 = zext nneg i8 %.lobit56 to i64
  %.030.in.in.in.us.us.2 = getelementptr inbounds nuw i8, ptr %1, i64 %.030.in.in.in.idx.us.us.2
  %.030.in.in.us.us.2 = load i8, ptr %.030.in.in.in.us.us.2, align 1, !tbaa !32
  %.030.in.us.us.2 = and i8 %.030.in.in.us.us.2, 15
  %i.an = add i32 %i.ab, 2
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.d, i64 %i.ao
  store i8 %.030.in.us.us.2, ptr %i.ap, align 1, !tbaa !32
  %i.aq = load i8, ptr %i.x, align 1, !tbaa !32
  %i.ar = lshr i8 %i.aq, 2
  %.lobit57 = and i8 %i.ar, 1
  %.030.in.in.in.idx.us.us.3 = zext nneg i8 %.lobit57 to i64
  %.030.in.in.in.us.us.3 = getelementptr inbounds nuw i8, ptr %1, i64 %.030.in.in.in.idx.us.us.3
  %.030.in.in.us.us.3 = load i8, ptr %.030.in.in.in.us.us.3, align 1, !tbaa !32
  %.030.in.us.us.3 = and i8 %.030.in.in.us.us.3, 15
  %i.as = add i32 %i.ab, 3
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.d, i64 %i.at
  store i8 %.030.in.us.us.3, ptr %i.au, align 1, !tbaa !32
  %i.av = load i8, ptr %i.x, align 1, !tbaa !32
  %i.aw = lshr i8 %i.av, 1
  %.lobit58 = and i8 %i.aw, 1
  %.030.in.in.in.idx.us.us.4 = zext nneg i8 %.lobit58 to i64
  %.030.in.in.in.us.us.4 = getelementptr inbounds nuw i8, ptr %1, i64 %.030.in.in.in.idx.us.us.4
  %.030.in.in.us.us.4 = load i8, ptr %.030.in.in.in.us.us.4, align 1, !tbaa !32
  %.030.in.us.us.4 = and i8 %.030.in.in.us.us.4, 15
  %i.ax = add i32 %i.ab, 4
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.d, i64 %i.ay
  store i8 %.030.in.us.us.4, ptr %i.az, align 1, !tbaa !32
  %i.ba = load i8, ptr %i.x, align 1, !tbaa !32
  %i.bb = and i8 %i.ba, 1
  %.030.in.in.in.idx.us.us.5 = zext nneg i8 %i.bb to i64
  %.030.in.in.in.us.us.5 = getelementptr inbounds nuw i8, ptr %1, i64 %.030.in.in.in.idx.us.us.5
  %.030.in.in.us.us.5 = load i8, ptr %.030.in.in.in.us.us.5, align 1, !tbaa !32
  %.030.in.us.us.5 = and i8 %.030.in.in.us.us.5, 15
  %i.bc = add i32 %i.ab, 5
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.d, i64 %i.bd
  store i8 %.030.in.us.us.5, ptr %i.be, align 1, !tbaa !32
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next46, 12
  br i1 %exitcond48.not, label %.loopexit, label %.preheader.us, !llvm.loop !55

.preheader:                                       ; preds = %.preheader35, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %.preheader35 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 6 uses
  %i.bh = trunc i64 %indvars.iv to i32
  %i.bi = add i32 %i.l, %i.bh
  %i.bj = mul i32 %i.bi, %i.c
  %i.bk = add i32 %i.bj, %i.t                     ; 6 uses
  %i.bl = load i8, ptr %i.bg, align 1, !tbaa !32
  %i.bm = lshr i8 %i.bl, 5
  %.lobit = and i8 %i.bm, 1
  %.030.in.in.in.idx = zext nneg i8 %.lobit to i64
  %.030.in.in.in = getelementptr inbounds nuw i8, ptr %1, i64 %.030.in.in.in.idx
  %.030.in.in = load i8, ptr %.030.in.in.in, align 1, !tbaa !32
  %.030.in = and i8 %.030.in.in, 15
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds i8, ptr %i.d, i64 %i.bn ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !32
  %i.bq = xor i8 %i.bp, %.030.in
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !32
  %i.br = load i8, ptr %i.bg, align 1, !tbaa !32
  %i.bs = lshr i8 %i.br, 4
  %.lobit50 = and i8 %i.bs, 1
  %.030.in.in.in.idx.1 = zext nneg i8 %.lobit50 to i64
  %.030.in.in.in.1 = getelementptr inbounds nuw i8, ptr %1, i64 %.030.in.in.in.idx.1
  %.030.in.in.1 = load i8, ptr %.030.in.in.in.1, align 1, !tbaa !32
  %.030.in.1 = and i8 %.030.in.in.1, 15
  %i.bt = add i32 %i.bk, 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.d, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !32
  %i.bx = xor i8 %i.bw, %.030.in.1
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !32
  %i.by = load i8, ptr %i.bg, align 1, !tbaa !32
  %i.bz = lshr i8 %i.by, 3
  %.lobit51 = and i8 %i.bz, 1
  %.030.in.in.in.idx.2 = zext nneg i8 %.lobit51 to i64
  %.030.in.in.in.2 = getelementptr inbounds nuw i8, ptr %1, i64 %.030.in.in.in.idx.2
  %.030.in.in.2 = load i8, ptr %.030.in.in.in.2, align 1, !tbaa !32
  %.030.in.2 = and i8 %.030.in.in.2, 15
  %i.ca = add i32 %i.bk, 2
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.d, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !32
  %i.ce = xor i8 %i.cd, %.030.in.2
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !32
  %i.cf = load i8, ptr %i.bg, align 1, !tbaa !32
  %i.cg = lshr i8 %i.cf, 2
  %.lobit52 = and i8 %i.cg, 1
  %.030.in.in.in.idx.3 = zext nneg i8 %.lobit52 to i64
  %.030.in.in.in.3 = getelementptr inbounds nuw i8, ptr %1, i64 %.030.in.in.in.idx.3
  %.030.in.in.3 = load i8, ptr %.030.in.in.in.3, align 1, !tbaa !32
  %.030.in.3 = and i8 %.030.in.in.3, 15
  %i.ch = add i32 %i.bk, 3
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.d, i64 %i.ci ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !32
  %i.cl = xor i8 %i.ck, %.030.in.3
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !32
  %i.cm = load i8, ptr %i.bg, align 1, !tbaa !32
  %i.cn = lshr i8 %i.cm, 1
  %.lobit53 = and i8 %i.cn, 1
  %.030.in.in.in.idx.4 = zext nneg i8 %.lobit53 to i64
  %.030.in.in.in.4 = getelementptr inbounds nuw i8, ptr %1, i64 %.030.in.in.in.idx.4
  %.030.in.in.4 = load i8, ptr %.030.in.in.in.4, align 1, !tbaa !32
  %.030.in.4 = and i8 %.030.in.in.4, 15
  %i.co = add i32 %i.bk, 4
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.d, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !32
  %i.cs = xor i8 %i.cr, %.030.in.4
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !32
  %i.ct = load i8, ptr %i.bg, align 1, !tbaa !32
  %i.cu = and i8 %i.ct, 1
  %.030.in.in.in.idx.5 = zext nneg i8 %i.cu to i64
  %.030.in.in.in.5 = getelementptr inbounds nuw i8, ptr %1, i64 %.030.in.in.in.idx.5
  %.030.in.in.5 = load i8, ptr %.030.in.in.in.5, align 1, !tbaa !32
  %.030.in.5 = and i8 %.030.in.in.5, 15
  %i.cv = add i32 %i.bk, 5
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %i.d, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !32
  %i.cz = xor i8 %i.cy, %.030.in.5
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 12
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !55

.loopexit:                                        ; preds = %.preheader, %.preheader.us, %bb.a
  %.031 = phi i32 [ -22, %bb.a ], [ 0, %.preheader.us ], [ 0, %.preheader ]
  ret i32 %.031
}

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @cdg_scroll(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !35   ; 5 uses
  %i.d = sext i32 %i.c to i64                     ; 59 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !34   ; 12 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !34     ; 38 uses
  %i.g = load i8, ptr %1, align 1, !tbaa !32
  %i.h = and i8 %i.g, 15                          ; 34 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !32
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = lshr i32 %i.k, 4
  %i.m = and i32 %i.l, 3                          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !32    ; 2 uses
  %i.p = lshr i8 %i.o, 4
  %i.q = and i8 %i.p, 3                           ; 2 uses
  %i.r = and i32 %i.k, 7
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.r, i32 5) ; 2 uses
  %i.s = and i8 %i.o, 15
  %narrow = tail call i8 @llvm.umin.i8(i8 %i.s, i8 11)
  %i.t = zext nneg i8 %narrow to i32              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !39
  %i.w = sub nsw i32 %spec.select, %i.v           ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38
  %i.z = sub nsw i32 %i.y, %i.t                   ; 2 uses
  store i32 %spec.select, ptr %i.u, align 8, !tbaa !39
  store i32 %i.t, ptr %i.x, align 4, !tbaa !38
  %i.aa = icmp eq i8 %i.q, 2
  %i.ab = add nsw i32 %i.z, -12
  %.092 = select i1 %i.aa, i32 %i.ab, i32 %i.z    ; 2 uses
  %i.ac = icmp eq i8 %i.q, 1
  %i.ad = add nsw i32 %.092, 12
  %.1 = select i1 %i.ac, i32 %i.ad, i32 %.092     ; 12 uses
  %i.ae = icmp eq i32 %i.m, 2
  %i.af = add nsw i32 %i.w, -6
  %.093 = select i1 %i.ae, i32 %i.af, i32 %i.w    ; 2 uses
  %i.ag = icmp eq i32 %i.m, 1
  %i.ah = add nsw i32 %.093, 6
  %.194 = select i1 %i.ag, i32 %i.ah, i32 %.093   ; 11 uses
  %i.ai = icmp ne i32 %.194, 0
  %i.aj = icmp ne i32 %.1, 0
  %or.cond = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.b, label %cdg_fill_wrapper.exit115

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.al, ptr noundef nonnull align 1 dereferenceable(64) %i.an, i64 64, i1 false)
  %i.ao = icmp slt i32 %.1, 0
  %i.ap = tail call i32 @llvm.smax.i32(i32 %.1, i32 0) ; 2 uses
  %i.aq = add nsw i32 %.1, 216                    ; 3 uses
  %i.ar = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 216) ; 2 uses
  %i.as = icmp slt i32 %i.ap, %i.ar
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.at = tail call i32 @llvm.smax.i32(i32 %.194, i32 0)
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.au
  %i.ax = sext i32 %.194 to i64
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %i.ay ; 3 uses
  %i.ba = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true)
  %i.bb = tail call i32 @llvm.abs.i32(i32 %.194, i1 true)
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = sub nsw i64 %i.ba, %i.bc                ; 3 uses
  %i.be = zext nneg i32 %i.ap to i64              ; 6 uses
  %i.bf = sext i32 %.1 to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ar to i64   ; 3 uses
  %i.bg = sub nsw i64 %wide.trip.count, %i.be
  %xtraiter = and i64 %i.bg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.bh = mul nsw i64 %i.be, %i.d
  %i.bi = getelementptr inbounds i8, ptr %i.av, i64 %i.bh
  %i.bj = sub nsw i64 %i.be, %i.bf
  %i.bk = mul nsw i64 %i.bj, %i.d
  %i.bl = getelementptr inbounds i8, ptr %i.az, i64 %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bl, i64 %i.bd, i1 false)
  %indvars.iv.next.prol = add nuw nsw i64 %i.be, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.be, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.bm = add nsw i64 %wide.trip.count, -1
  %i.bn = icmp eq i64 %i.bm, %i.be
  br i1 %i.bn, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.bo = mul nsw i64 %indvars.iv, %i.d
  %i.bp = getelementptr inbounds i8, ptr %i.av, i64 %i.bo
  %i.bq = sub nsw i64 %indvars.iv, %i.bf
  %i.br = mul nsw i64 %i.bq, %i.d
  %i.bs = getelementptr inbounds i8, ptr %i.az, i64 %i.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.bs, i64 %i.bd, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = mul nsw i64 %indvars.iv.next, %i.d
  %i.bu = getelementptr inbounds i8, ptr %i.av, i64 %i.bt
  %i.bv = sub nsw i64 %indvars.iv.next, %i.bf
  %i.bw = mul nsw i64 %i.bv, %i.d
  %i.bx = getelementptr inbounds i8, ptr %i.az, i64 %i.bw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.bx, i64 %i.bd, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !56

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %i.by = icmp sgt i32 %.1, 0
  br i1 %i.by, label %bb.c, label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.bz = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false) ; 2 uses
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %.lr.ph.i16.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.ca = sub nsw i32 216, %.1
  %i.cb = mul nsw i32 %i.ca, %i.c
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.e, i64 %i.cc ; 5 uses
  %i.ce = sext i32 %i.bz to i64                   ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %.1 to i64 ; 2 uses
  %xtraiter171 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.cf = icmp ult i32 %.1, 4
  br i1 %i.cf, label %.epil.preheader170, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter175 = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.d ] ; 5 uses
  %niter176 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter176.next.3, %bb.d ]
  %i.cg = mul nsw i64 %indvars.iv.i.i, %i.d       ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.f, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr readonly align 1 %i.ci, i64 %i.ce, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1
  %i.cj = mul nsw i64 %indvars.iv.next.i.i, %i.d  ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.f, i64 %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.cd, i64 %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr readonly align 1 %i.cl, i64 %i.ce, i1 false)
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2
  %i.cm = mul nsw i64 %indvars.iv.next.i.i.1, %i.d ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.f, i64 %i.cm
  %i.co = getelementptr inbounds i8, ptr %i.cd, i64 %i.cm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr readonly align 1 %i.co, i64 %i.ce, i1 false)
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3
  %i.cp = mul nsw i64 %indvars.iv.next.i.i.2, %i.d ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.f, i64 %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cd, i64 %i.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr readonly align 1 %i.cr, i64 %i.ce, i1 false)
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter176.next.3 = add i64 %niter176, 4         ; 2 uses
  %niter176.ncmp.3 = icmp eq i64 %niter176.next.3, %unroll_iter175
  br i1 %niter176.ncmp.3, label %cdg_fill_wrapper.exit.loopexit160.unr-lcssa, label %bb.d, !llvm.loop !57

.lr.ph.i16.i:                                     ; preds = %bb.c
  %i.cs = sext i32 %i.bz to i64                   ; 9 uses
  %i.ct = zext nneg i32 %.1 to i64                ; 2 uses
  %xtraiter178 = and i64 %i.ct, 7                 ; 3 uses
  %i.cu = icmp ult i32 %.1, 8
  br i1 %i.cu, label %.epil.preheader177, label %.lr.ph.i16.i.new

.lr.ph.i16.i.new:                                 ; preds = %.lr.ph.i16.i
  %unroll_iter182 = and i64 %i.ct, 2147483640
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i16.i.new
  %indvars.iv.i17.i = phi i64 [ 0, %.lr.ph.i16.i.new ], [ %indvars.iv.next.i18.i.7, %bb.e ] ; 9 uses
  %niter183 = phi i64 [ 0, %.lr.ph.i16.i.new ], [ %niter183.next.7, %bb.e ]
  %i.cv = mul nsw i64 %indvars.iv.i17.i, %i.d
  %i.cw = getelementptr inbounds i8, ptr %i.f, i64 %i.cv
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cw, i8 %i.h, i64 %i.cs, i1 false)
  %indvars.iv.next.i18.i = or disjoint i64 %indvars.iv.i17.i, 1
  %i.cx = mul nsw i64 %indvars.iv.next.i18.i, %i.d
  %i.cy = getelementptr inbounds i8, ptr %i.f, i64 %i.cx
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cy, i8 %i.h, i64 %i.cs, i1 false)
  %indvars.iv.next.i18.i.1 = or disjoint i64 %indvars.iv.i17.i, 2
  %i.cz = mul nsw i64 %indvars.iv.next.i18.i.1, %i.d
  %i.da = getelementptr inbounds i8, ptr %i.f, i64 %i.cz
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.da, i8 %i.h, i64 %i.cs, i1 false)
  %indvars.iv.next.i18.i.2 = or disjoint i64 %indvars.iv.i17.i, 3
  %i.db = mul nsw i64 %indvars.iv.next.i18.i.2, %i.d
  %i.dc = getelementptr inbounds i8, ptr %i.f, i64 %i.db
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dc, i8 %i.h, i64 %i.cs, i1 false)
  %indvars.iv.next.i18.i.3 = or disjoint i64 %indvars.iv.i17.i, 4
  %i.dd = mul nsw i64 %indvars.iv.next.i18.i.3, %i.d
  %i.de = getelementptr inbounds i8, ptr %i.f, i64 %i.dd
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.de, i8 %i.h, i64 %i.cs, i1 false)
  %indvars.iv.next.i18.i.4 = or disjoint i64 %indvars.iv.i17.i, 5
  %i.df = mul nsw i64 %indvars.iv.next.i18.i.4, %i.d
  %i.dg = getelementptr inbounds i8, ptr %i.f, i64 %i.df
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dg, i8 %i.h, i64 %i.cs, i1 false)
  %indvars.iv.next.i18.i.5 = or disjoint i64 %indvars.iv.i17.i, 6
  %i.dh = mul nsw i64 %indvars.iv.next.i18.i.5, %i.d
  %i.di = getelementptr inbounds i8, ptr %i.f, i64 %i.dh
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.di, i8 %i.h, i64 %i.cs, i1 false)
  %indvars.iv.next.i18.i.6 = or disjoint i64 %indvars.iv.i17.i, 7
  %i.dj = mul nsw i64 %indvars.iv.next.i18.i.6, %i.d
  %i.dk = getelementptr inbounds i8, ptr %i.f, i64 %i.dj
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dk, i8 %i.h, i64 %i.cs, i1 false)
  %indvars.iv.next.i18.i.7 = add nuw nsw i64 %indvars.iv.i17.i, 8 ; 2 uses
  %niter183.next.7 = add i64 %niter183, 8         ; 2 uses
  %niter183.ncmp.7 = icmp eq i64 %niter183.next.7, %unroll_iter182
  br i1 %niter183.ncmp.7, label %cdg_fill_wrapper.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !58

bb.f:                                             ; preds = %._crit_edge
  br i1 %i.ao, label %bb.g, label %cdg_fill_wrapper.exit

bb.g:                                             ; preds = %bb.f
  %i.dl = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false) ; 2 uses
  %.not.i97 = icmp eq i32 %3, 0
  br i1 %.not.i97, label %.lr.ph.i16.i103, label %.lr.ph.i.i98

.lr.ph.i.i98:                                     ; preds = %bb.g
  %i.dm = sub nsw i32 0, %.1                      ; 2 uses
  %i.dn = mul nsw i32 %i.aq, %i.c
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr %i.f, i64 %i.do ; 5 uses
  %i.dq = sext i32 %i.dl to i64                   ; 5 uses
  %wide.trip.count.i.i99 = zext nneg i32 %i.dm to i64 ; 2 uses
  %xtraiter163 = and i64 %wide.trip.count.i.i99, 3 ; 3 uses
  %i.dr = icmp ult i32 %i.dm, 4
  br i1 %i.dr, label %.epil.preheader, label %.lr.ph.i.i98.new

.lr.ph.i.i98.new:                                 ; preds = %.lr.ph.i.i98
  %unroll_iter = and i64 %wide.trip.count.i.i99, 2147483644
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i98.new
  %indvars.iv.i.i100 = phi i64 [ 0, %.lr.ph.i.i98.new ], [ %indvars.iv.next.i.i101.3, %bb.h ] ; 5 uses
end_hunk_0
