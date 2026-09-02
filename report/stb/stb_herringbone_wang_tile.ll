Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_herringbone_wang_tile?download=true
inline.NumInlined: 76
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 43
begin_hunk_0_@stbhw_generate_image:bb.a
  %i.kv = or i32 %i.ku, %i.kq
  %or.cond12 = icmp sgt i32 %i.kv, -1
  br i1 %or.cond12, label %bb.bi, label %stbhw__draw_h_tile.exit399

bb.bi:                                            ; preds = %bb.bh
  %i.kw = load ptr, ptr %i.jr, align 8, !tbaa !95
  %i.kx = load i32, ptr %i.js, align 8, !tbaa !96
  %i.ky = sext i32 %i.kt to i64                   ; 3 uses
  %i.kz = getelementptr inbounds i8, ptr %i.kh, i64 %i.ky
  %i.la = add nsw i64 %indvars.iv534, 3           ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.kh, i64 %i.la
  %i.lc = getelementptr inbounds i8, ptr %i.ki, i64 %i.ky
  %i.ld = getelementptr i8, ptr %i.ki, i64 %indvars.iv534
  %i.le = getelementptr i8, ptr %i.ld, i64 4
  %i.lf = getelementptr inbounds i8, ptr %i.kk, i64 %i.ky
  %i.lg = getelementptr inbounds i8, ptr %i.kk, i64 %i.la
  %i.lh = tail call ptr @stbhw__choose_tile(ptr noundef %i.kw, i32 noundef %i.kx, ptr noundef nonnull %i.kz, ptr noundef nonnull %i.lb, ptr noundef nonnull %i.lc, ptr noundef %i.le, ptr noundef %i.lf, ptr noundef %i.lg, ptr noundef %1) ; 2 uses
  %.not300 = icmp eq ptr %i.lh, null
  br i1 %.not300, label %.critedge324, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.jt, label %.lr.ph33.split.us.preheader.i384, label %stbhw__draw_h_tile.exit399

.lr.ph33.split.us.preheader.i384:                 ; preds = %bb.bj
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 6
  br label %.lr.ph33.split.us.i387

.lr.ph33.split.us.i387:                           ; preds = %..loopexit_crit_edge.us.i390, %.lr.ph33.split.us.preheader.i384
  %indvars.iv36.i388 = phi i64 [ 0, %.lr.ph33.split.us.preheader.i384 ], [ %indvars.iv.next37.i391, %..loopexit_crit_edge.us.i390 ] ; 3 uses
  %i.lj = add nsw i64 %indvars.iv36.i388, %indvars.iv537 ; 2 uses
  %i.lk = icmp slt i64 %i.lj, %i.jv
  br i1 %i.lk, label %.preheader.us.i393, label %..loopexit_crit_edge.us.i390

bb.bk:                                            ; preds = %.preheader.us.i393, %bb.bm
  %indvars.iv.i395 = phi i64 [ 0, %.preheader.us.i393 ], [ %indvars.iv.next.i397, %bb.bm ] ; 3 uses
  %i.ll = add nsw i64 %indvars.iv.i395, %i.kr     ; 3 uses
  %i.lm = icmp sgt i64 %i.ll, -1
  %i.ln = icmp slt i64 %i.ll, %i.ju
  %or.cond29.us.i396 = and i1 %i.lm, %i.ln
  br i1 %or.cond29.us.i396, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.lo = add nsw i64 %indvars.iv.i395, %i.lw
  %i.lp = mul nsw i64 %i.lo, 3
  %i.lq = getelementptr inbounds i8, ptr %i.li, i64 %i.lp
  %i.lr = mul nuw nsw i64 %i.ll, 3
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ls, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.lq, i64 3, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %indvars.iv.next.i397 = add nuw nsw i64 %indvars.iv.i395, 1 ; 2 uses
  %exitcond.not.i398 = icmp eq i64 %indvars.iv.next.i397, %wide.trip.count.i386
  br i1 %exitcond.not.i398, label %..loopexit_crit_edge.us.i390, label %bb.bk, !llvm.loop !58

..loopexit_crit_edge.us.i390:                     ; preds = %bb.bm, %.lr.ph33.split.us.i387
  %indvars.iv.next37.i391 = add nuw nsw i64 %indvars.iv36.i388, 1 ; 2 uses
  %exitcond40.not.i392 = icmp eq i64 %indvars.iv.next37.i391, %wide.trip.count39.i385
  br i1 %exitcond40.not.i392, label %stbhw__draw_h_tile.exit399, label %.lr.ph33.split.us.i387, !llvm.loop !59

.preheader.us.i393:                               ; preds = %.lr.ph33.split.us.i387
  %i.lt = trunc nuw nsw i64 %indvars.iv36.i388 to i32
  %factor.op.mul.reass.us.i394 = mul i32 %factor.op.mul31.i382, %i.lt
  %i.lu = mul nsw i64 %i.lj, %i.jw
  %i.lv = getelementptr inbounds i8, ptr %2, i64 %i.lu
  %i.lw = sext i32 %factor.op.mul.reass.us.i394 to i64
  br label %bb.bk

stbhw__draw_h_tile.exit399:                       ; preds = %..loopexit_crit_edge.us.i390, %bb.bj, %bb.bh
  %i.lx = add nsw i32 %i.ku, %i.b                 ; 2 uses
  %i.ly = icmp slt i32 %i.lx, %4
  br i1 %i.ly, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %stbhw__draw_h_tile.exit399
  %i.lz = load ptr, ptr %i.jx, align 8, !tbaa !97
  %i.ma = load i32, ptr %i.jy, align 8, !tbaa !98
  %i.mb = add nsw i64 %indvars.iv534, 5           ; 4 uses
  %i.mc = getelementptr inbounds i8, ptr %i.kh, i64 %i.mb
  %i.md = getelementptr inbounds i8, ptr %i.ki, i64 %i.mb
  %i.me = add nsw i64 %indvars.iv534, 6           ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %i.ki, i64 %i.me
  %i.mg = getelementptr inbounds i8, ptr %i.km, i64 %i.mb
  %i.mh = getelementptr inbounds i8, ptr %i.km, i64 %i.me
  %i.mi = getelementptr inbounds i8, ptr %i.kn, i64 %i.mb
  %i.mj = tail call ptr @stbhw__choose_tile(ptr noundef %i.lz, i32 noundef %i.ma, ptr noundef nonnull %i.mc, ptr noundef nonnull %i.md, ptr noundef nonnull %i.mf, ptr noundef %i.mg, ptr noundef %i.mh, ptr noundef %i.mi, ptr noundef %1) ; 2 uses
  %.not301 = icmp eq ptr %i.mj, null
  br i1 %.not301, label %.critedge324, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.jt, label %.lr.ph33.split.us.preheader.i401, label %.loopexit

.lr.ph33.split.us.preheader.i401:                 ; preds = %bb.bo
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 6
  %i.ml = sext i32 %i.lx to i64
  br label %.lr.ph33.split.us.i405

.lr.ph33.split.us.i405:                           ; preds = %..loopexit_crit_edge.us.i408, %.lr.ph33.split.us.preheader.i401
  %indvars.iv36.i406 = phi i64 [ 0, %.lr.ph33.split.us.preheader.i401 ], [ %indvars.iv.next37.i409, %..loopexit_crit_edge.us.i408 ] ; 3 uses
  %i.mm = add nsw i64 %indvars.iv36.i406, %indvars.iv537 ; 3 uses
  %i.mn = icmp sgt i64 %i.mm, -1
  %i.mo = icmp slt i64 %i.mm, %i.jv
  %or.cond.us.i407 = and i1 %i.mn, %i.mo
  br i1 %or.cond.us.i407, label %.preheader.us.i411, label %..loopexit_crit_edge.us.i408

bb.bp:                                            ; preds = %.preheader.us.i411, %bb.br
  %indvars.iv.i412 = phi i64 [ 0, %.preheader.us.i411 ], [ %indvars.iv.next.i414, %bb.br ] ; 3 uses
  %i.mp = add nsw i64 %indvars.iv.i412, %i.ml     ; 3 uses
  %i.mq = icmp sgt i64 %i.mp, -1
  %i.mr = icmp slt i64 %i.mp, %i.ju
  %or.cond29.us.i413 = and i1 %i.mq, %i.mr
  br i1 %or.cond29.us.i413, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ms = add nuw nsw i64 %indvars.iv.i412, %i.nb
  %i.mt = mul nuw nsw i64 %i.ms, 3
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mt
  %i.mv = mul nuw nsw i64 %i.mp, 3
  %i.mw = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.mw, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.mu, i64 3, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %indvars.iv.next.i414 = add nuw nsw i64 %indvars.iv.i412, 1 ; 2 uses
  %exitcond.not.i415 = icmp eq i64 %indvars.iv.next.i414, %wide.trip.count39.i385
  br i1 %exitcond.not.i415, label %..loopexit_crit_edge.us.i408, label %bb.bp, !llvm.loop !60

..loopexit_crit_edge.us.i408:                     ; preds = %bb.br, %.lr.ph33.split.us.i405
  %indvars.iv.next37.i409 = add nuw nsw i64 %indvars.iv36.i406, 1 ; 2 uses
  %exitcond40.not.i410 = icmp eq i64 %indvars.iv.next37.i409, %wide.trip.count39.i403
  br i1 %exitcond40.not.i410, label %.loopexit, label %.lr.ph33.split.us.i405, !llvm.loop !61

.preheader.us.i411:                               ; preds = %.lr.ph33.split.us.i405
  %i.mx = mul nsw i64 %i.mm, %i.jw
  %i.my = getelementptr inbounds i8, ptr %2, i64 %i.mx
  %i.mz = trunc i64 %indvars.iv36.i406 to i32
  %i.na = mul i32 %i.b, %i.mz
  %i.nb = zext i32 %i.na to i64
  br label %bb.bp

.loopexit:                                        ; preds = %..loopexit_crit_edge.us.i408, %stbhw__draw_h_tile.exit399, %bb.bo
  %indvars.iv.next535 = add nsw i64 %indvars.iv534, 4 ; 2 uses
  %i.nc = mul nsw i64 %indvars.iv.next535, %i.jz  ; 2 uses
  %.not299 = icmp slt i64 %i.nc, %i.ju
  br i1 %.not299, label %bb.bh, label %._crit_edge479

._crit_edge479:                                   ; preds = %.loopexit, %bb.bg
  %indvars.iv.next538 = add nsw i64 %indvars.iv537, %i.jz ; 2 uses
  %indvars.iv.next540 = add nsw i64 %indvars.iv539, 1
  %.not302 = icmp slt i64 %indvars.iv.next538, %i.jv
  br i1 %.not302, label %bb.bg, label %.critedge324, !llvm.loop !100

.critedge324:                                     ; preds = %._crit_edge469, %bb.ba, %bb.av, %._crit_edge479, %bb.bn, %bb.bi, %._crit_edge465.split, %bb.bf, %bb.b
  %.16 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge479 ], [ 1, %bb.bf ], [ 0, %bb.ba ], [ 1, %._crit_edge465.split ], [ 0, %bb.bn ], [ 0, %bb.bi ], [ 0, %bb.av ], [ 1, %._crit_edge469 ]
  ret i32 %.16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define void @stbhw__parse_h_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 5 uses
  %i.e = mul nsw i32 %i.d, 6                      ; 2 uses
  %i.f = mul nsw i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.g, 6
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #17 ; 8 uses
  %i.j = trunc i32 %3 to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !64
  %i.k = trunc i32 %4 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !66
  %i.m = trunc i32 %5 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !67
  %i.o = trunc i32 %6 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !68
  %i.q = trunc i32 %7 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 %i.q, ptr %i.r, align 1, !tbaa !69
  %i.s = trunc i32 %8 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %i.s, ptr %i.t, align 1, !tbaa !70
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.preheader.lr.ph.split, label %._crit_edge39.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.v = add nsw i32 %2, 1
  %i.w = add nsw i32 %1, 1
  %i.x = shl nuw i32 %i.d, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !102
  %i.ad = sext i32 %i.w to i64                    ; 2 uses
  %i.ae = zext nneg i32 %i.e to i64
  %i.af = sext i32 %i.v to i64
  %i.ag = sext i32 %i.ac to i64
  %wide.trip.count44 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext i32 %i.x to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv41 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next42, %._crit_edge ] ; 3 uses
  %i.ah = mul nuw nsw i64 %indvars.iv41, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah ; 2 uses
  %i.aj = add nsw i64 %indvars.iv41, %i.af
  %i.ak = mul nsw i64 %i.aj, %i.ag
  %i.al = getelementptr inbounds i8, ptr %i.ab, i64 %i.ak ; 2 uses
  br label %.preheader.new

.preheader.new:                                   ; preds = %.preheader.new, %.preheader
  %niter = phi i64 [ 0, %.preheader ], [ %niter.next.1, %.preheader.new ] ; 4 uses
  %i.am = mul nuw nsw i64 %niter, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  %i.ao = add nsw i64 %niter, %i.ad
  %i.ap = mul nsw i64 %i.ao, 3
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.an, ptr noundef nonnull align 1 dereferenceable(3) %i.aq, i64 3, i1 false)
  %indvars.iv.next = or disjoint i64 %niter, 1    ; 2 uses
  %i.ar = mul nuw nsw i64 %indvars.iv.next, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %i.at = add nsw i64 %indvars.iv.next, %i.ad
  %i.au = mul nsw i64 %i.at, 3
  %i.av = getelementptr inbounds i8, ptr %i.al, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.as, ptr noundef nonnull align 1 dereferenceable(3) %i.av, i64 3, i1 false)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %wide.trip.count
  br i1 %niter.ncmp.1, label %._crit_edge, label %.preheader.new, !llvm.loop !103

._crit_edge:                                      ; preds = %.preheader.new
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge39.split, label %.preheader, !llvm.loop !104

._crit_edge39.split:                              ; preds = %._crit_edge, %bb.a
  %i.aw = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !95
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !96 ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !96
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bc
  store ptr %i.i, ptr %i.bd, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define void @stbhw__parse_v_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 8 uses
  %i.e = mul nsw i32 %i.d, 6
  %i.f = mul nsw i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.g, 6
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #17 ; 8 uses
  %i.j = trunc i32 %3 to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !64
  %i.k = trunc i32 %4 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !66
  %i.m = trunc i32 %5 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !67
  %i.o = trunc i32 %6 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !68
  %i.q = trunc i32 %7 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 %i.q, ptr %i.r, align 1, !tbaa !69
  %i.s = trunc i32 %8 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %i.s, ptr %i.t, align 1, !tbaa !70
  %factor.op.mul38 = mul i32 %i.d, 3
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.preheader.lr.ph.split, label %._crit_edge40.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.v = add nsw i32 %2, 1
  %i.w = add nsw i32 %1, 1
  %i.x = shl nuw i32 %i.d, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !102
  %i.ad = sext i32 %i.w to i64                    ; 3 uses
  %i.ae = sext i32 %i.v to i64
  %i.af = sext i32 %i.ac to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %wide.trip.count45 = zext nneg i32 %smax to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ag = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod47 = trunc i32 %i.d to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv42 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next43, %._crit_edge ] ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv42 to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul38, %i.ah
  %i.ai = sext i32 %factor.op.mul.reass to i64
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 %i.ai ; 3 uses
  %i.ak = add nsw i64 %indvars.iv42, %i.ae
  %i.al = mul nsw i64 %i.ak, %i.af
  %i.am = getelementptr inbounds i8, ptr %i.ab, i64 %i.al ; 3 uses
  br i1 %i.ag, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  %i.ap = add nsw i64 %indvars.iv, %i.ad
  %i.aq = mul nsw i64 %i.ap, 3
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, ptr noundef nonnull align 1 dereferenceable(3) %i.ar, i64 3, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = mul nuw nsw i64 %indvars.iv.next, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as
  %i.au = add nsw i64 %indvars.iv.next, %i.ad
  %i.av = mul nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds i8, ptr %i.am, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.at, ptr noundef nonnull align 1 dereferenceable(3) %i.aw, i64 3, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !106

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.ax = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ax
  %i.az = add nsw i64 %indvars.iv.epil.init, %i.ad
  %i.ba = mul nsw i64 %i.az, 3
  %i.bb = getelementptr inbounds i8, ptr %i.am, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) %i.bb, i64 3, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %._crit_edge40.split, label %.preheader, !llvm.loop !107

._crit_edge40.split:                              ; preds = %._crit_edge, %bb.a
  %i.bc = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !97
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !98 ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !98
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bi
  store ptr %i.i, ptr %i.bj, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbhw_build_tileset_from_image(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbhw_config, align 4       ; 23 uses
  %6 = alloca %struct.stbhw__process, align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %5, i8 0, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %i.a, align 8
  %i.b = mul nsw i32 %3, 3                        ; 9 uses
  %i.c = add i32 %i.b, -1
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !62    ; 2 uses
  %i.g = add i32 %i.b, -2
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !62
  %i.k = xor i8 %i.j, 55                          ; 2 uses
  %i.l = add i32 %i.b, -3
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !62
  %i.p = xor i8 %i.o, 110                         ; 2 uses
  %i.q = add i32 %i.b, -4
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !62
  %i.u = xor i8 %i.t, -91                         ; 2 uses
  %i.v = add i32 %i.b, -5
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !62
  %i.z = xor i8 %i.y, -36                         ; 2 uses
  %i.aa = add i32 %i.b, -6
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !62
  %i.ae = xor i8 %i.ad, 19                        ; 2 uses
  %i.af = add i32 %i.b, -7
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !62
  %i.aj = xor i8 %i.ai, 74                        ; 2 uses
  %i.ak = add i32 %i.b, -8
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !62  ; 2 uses
  %.not = icmp eq i8 %i.an, 65                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %5, align 4, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = zext i8 %i.f to i32                     ; 2 uses
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !34
  %i.aq = zext i8 %i.k to i32                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 12
end_hunk_0
