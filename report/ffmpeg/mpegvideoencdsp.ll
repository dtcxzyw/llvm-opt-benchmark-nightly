Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideoencdsp?download=true
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@add_8x8basis_c:vector.memcheck
  %i.r = sext <8 x i16> %wide.load.2 to <8 x i32>
  %i.s = mul nsw <8 x i32> %broadcast.splat, %i.r
  %i.t = add nsw <8 x i32> %i.s, splat (i32 512)
  %i.u = lshr <8 x i32> %i.t, splat (i32 10)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.load9.2 = load <8 x i16>, ptr %i.v, align 2, !tbaa !10, !alias.scope !27, !noalias !26
  %i.w = trunc <8 x i32> %i.u to <8 x i16>
  %i.x = add <8 x i16> %wide.load9.2, %i.w
  store <8 x i16> %i.x, ptr %i.v, align 2, !tbaa !10, !alias.scope !27, !noalias !26
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.3 = load <8 x i16>, ptr %i.y, align 2, !tbaa !10, !alias.scope !26
  %i.z = sext <8 x i16> %wide.load.3 to <8 x i32>
  %i.aa = mul nsw <8 x i32> %broadcast.splat, %i.z
  %i.ab = add nsw <8 x i32> %i.aa, splat (i32 512)
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 10)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load9.3 = load <8 x i16>, ptr %i.ad, align 2, !tbaa !10, !alias.scope !27, !noalias !26
  %i.ae = trunc <8 x i32> %i.ac to <8 x i16>
  %i.af = add <8 x i16> %wide.load9.3, %i.ae
  store <8 x i16> %i.af, ptr %i.ad, align 2, !tbaa !10, !alias.scope !27, !noalias !26
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.load.4 = load <8 x i16>, ptr %i.ag, align 2, !tbaa !10, !alias.scope !26
  %i.ah = sext <8 x i16> %wide.load.4 to <8 x i32>
  %i.ai = mul nsw <8 x i32> %broadcast.splat, %i.ah
  %i.aj = add nsw <8 x i32> %i.ai, splat (i32 512)
  %i.ak = lshr <8 x i32> %i.aj, splat (i32 10)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %wide.load9.4 = load <8 x i16>, ptr %i.al, align 2, !tbaa !10, !alias.scope !27, !noalias !26
  %i.am = trunc <8 x i32> %i.ak to <8 x i16>
  %i.an = add <8 x i16> %wide.load9.4, %i.am
  store <8 x i16> %i.an, ptr %i.al, align 2, !tbaa !10, !alias.scope !27, !noalias !26
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.5 = load <8 x i16>, ptr %i.ao, align 2, !tbaa !10, !alias.scope !26
  %i.ap = sext <8 x i16> %wide.load.5 to <8 x i32>
  %i.aq = mul nsw <8 x i32> %broadcast.splat, %i.ap
  %i.ar = add nsw <8 x i32> %i.aq, splat (i32 512)
  %i.as = lshr <8 x i32> %i.ar, splat (i32 10)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.load9.5 = load <8 x i16>, ptr %i.at, align 2, !tbaa !10, !alias.scope !27, !noalias !26
  %i.au = trunc <8 x i32> %i.as to <8 x i16>
  %i.av = add <8 x i16> %wide.load9.5, %i.au
  store <8 x i16> %i.av, ptr %i.at, align 2, !tbaa !10, !alias.scope !27, !noalias !26
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %wide.load.6 = load <8 x i16>, ptr %i.aw, align 2, !tbaa !10, !alias.scope !26
  %i.ax = sext <8 x i16> %wide.load.6 to <8 x i32>
  %i.ay = mul nsw <8 x i32> %broadcast.splat, %i.ax
  %i.az = add nsw <8 x i32> %i.ay, splat (i32 512)
  %i.ba = lshr <8 x i32> %i.az, splat (i32 10)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %wide.load9.6 = load <8 x i16>, ptr %i.bb, align 2, !tbaa !10, !alias.scope !27, !noalias !26
  %i.bc = trunc <8 x i32> %i.ba to <8 x i16>
  %i.bd = add <8 x i16> %wide.load9.6, %i.bc
  store <8 x i16> %i.bd, ptr %i.bb, align 2, !tbaa !10, !alias.scope !27, !noalias !26
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.7 = load <8 x i16>, ptr %i.be, align 2, !tbaa !10, !alias.scope !26
  %i.bf = sext <8 x i16> %wide.load.7 to <8 x i32>
  %i.bg = mul nsw <8 x i32> %broadcast.splat, %i.bf
  %i.bh = add nsw <8 x i32> %i.bg, splat (i32 512)
  %i.bi = lshr <8 x i32> %i.bh, splat (i32 10)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %wide.load9.7 = load <8 x i16>, ptr %i.bj, align 2, !tbaa !10, !alias.scope !27, !noalias !26
  %i.bk = trunc <8 x i32> %i.bi to <8 x i16>
  %i.bl = add <8 x i16> %wide.load9.7, %i.bk
  store <8 x i16> %i.bl, ptr %i.bj, align 2, !tbaa !10, !alias.scope !27, !noalias !26
  br label %middle.block

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !10
  %i.bo = sext i16 %i.bn to i32
  %i.bp = mul nsw i32 %2, %i.bo
  %i.bq = add nsw i32 %i.bp, 512
  %i.br = lshr i32 %i.bq, 10
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !10
  %i.bu = trunc i32 %i.br to i16
  %i.bv = add i16 %i.bt, %i.bu
  store i16 %i.bv, ptr %i.bs, align 2, !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !10
  %i.by = sext i16 %i.bx to i32
  %i.bz = mul nsw i32 %2, %i.by
  %i.ca = add nsw i32 %i.bz, 512
  %i.cb = lshr i32 %i.ca, 10
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !10
  %i.ce = trunc i32 %i.cb to i16
  %i.cf = add i16 %i.cd, %i.ce
  store i16 %i.cf, ptr %i.cc, align 2, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !25

middle.block:                                     ; preds = %scalar.ph, %vector.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_plane_wrapper(ptr noalias noundef %0, i64 noundef %1, ptr noalias noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #3 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = trunc i64 %3 to i32
  tail call void @av_image_copy_plane(ptr noundef %0, i32 noundef %i.a, ptr noundef %2, i32 noundef %i.b, i32 noundef %4, i32 noundef %5) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @shrink22(ptr noalias nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 3
  %i.c = shl nsw i64 %3, 1                        ; 2 uses
  br i1 %i.b, label %.lr.ph.us, label %.lr.ph70.split

.lr.ph.us:                                        ; preds = %.lr.ph70, %._crit_edge.us
  %.05168.us = phi i32 [ %i.aw, %._crit_edge.us ], [ %5, %.lr.ph70 ] ; 2 uses
  %.05267.us = phi ptr [ %i.av, %._crit_edge.us ], [ %0, %.lr.ph70 ] ; 2 uses
  %.05366.us = phi ptr [ %i.au, %._crit_edge.us ], [ %2, %.lr.ph70 ] ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %.05366.us, i64 %3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %.057.us = phi ptr [ %.05267.us, %.lr.ph.us ], [ %i.w, %bb.b ] ; 2 uses
  %.04556.us = phi ptr [ %i.d, %.lr.ph.us ], [ %i.v, %bb.b ] ; 2 uses
  %.04755.us = phi ptr [ %.05366.us, %.lr.ph.us ], [ %i.u, %bb.b ] ; 2 uses
  %.04954.us = phi i32 [ %4, %.lr.ph.us ], [ %i.x, %bb.b ] ; 3 uses
  %i.e = load <8 x i8>, ptr %.04755.us, align 1, !tbaa !14
  %i.f = freeze <8 x i8> %i.e
  %i.g = bitcast <8 x i8> %i.f to <4 x i16>       ; 2 uses
  %i.h = and <4 x i16> %i.g, splat (i16 255)
  %i.i = lshr <4 x i16> %i.g, splat (i16 8)
  %i.j = load <8 x i8>, ptr %.04556.us, align 1, !tbaa !14
  %i.k = freeze <8 x i8> %i.j
  %i.l = bitcast <8 x i8> %i.k to <4 x i16>       ; 2 uses
  %i.m = and <4 x i16> %i.l, splat (i16 255)
  %i.n = lshr <4 x i16> %i.l, splat (i16 8)
  %i.o = add nuw nsw <4 x i16> %i.h, splat (i16 2)
  %i.p = add nuw nsw <4 x i16> %i.o, %i.i
  %i.q = add nuw nsw <4 x i16> %i.p, %i.m
  %i.r = add nuw nsw <4 x i16> %i.q, %i.n
  %i.s = lshr <4 x i16> %i.r, splat (i16 2)
  %i.t = trunc <4 x i16> %i.s to <4 x i8>
  store <4 x i8> %i.t, ptr %.057.us, align 1, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %.04755.us, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04556.us, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.057.us, i64 4 ; 2 uses
  %i.x = add nsw i32 %.04954.us, -4               ; 2 uses
  %i.y = icmp sgt i32 %.04954.us, 7
  br i1 %i.y, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !28

.lr.ph65.us:                                      ; preds = %..preheader_crit_edge.us, %.lr.ph65.us
  %.164.us = phi ptr [ %i.ar, %.lr.ph65.us ], [ %i.w, %..preheader_crit_edge.us ] ; 2 uses
  %.14663.us = phi ptr [ %i.aq, %.lr.ph65.us ], [ %i.v, %..preheader_crit_edge.us ] ; 3 uses
  %.14862.us = phi ptr [ %i.ap, %.lr.ph65.us ], [ %i.u, %..preheader_crit_edge.us ] ; 3 uses
  %.15061.us = phi i32 [ %i.as, %.lr.ph65.us ], [ %i.x, %..preheader_crit_edge.us ] ; 2 uses
  %i.z = load i8, ptr %.14862.us, align 1, !tbaa !14
  %i.aa = zext i8 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %.14862.us, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = zext i8 %i.ac to i16
  %i.ae = load i8, ptr %.14663.us, align 1, !tbaa !14
  %i.af = zext i8 %i.ae to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %.14663.us, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = zext i8 %i.ah to i16
  %i.aj = add nuw nsw i16 %i.aa, 2
  %i.ak = add nuw nsw i16 %i.aj, %i.ad
  %i.al = add nuw nsw i16 %i.ak, %i.af
  %i.am = add nuw nsw i16 %i.al, %i.ai
  %i.an = lshr i16 %i.am, 2
  %i.ao = trunc nuw i16 %i.an to i8
  store i8 %i.ao, ptr %.164.us, align 1, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %.14862.us, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.14663.us, i64 2
  %i.ar = getelementptr inbounds nuw i8, ptr %.164.us, i64 1
  %i.as = add nsw i32 %.15061.us, -1
  %i.at = icmp samesign ugt i32 %.15061.us, 1
  br i1 %i.at, label %.lr.ph65.us, label %._crit_edge.us, !llvm.loop !29

._crit_edge.us:                                   ; preds = %.lr.ph65.us, %..preheader_crit_edge.us
  %i.au = getelementptr inbounds i8, ptr %.05366.us, i64 %i.c
  %i.av = getelementptr inbounds i8, ptr %.05267.us, i64 %1
  %i.aw = add nsw i32 %.05168.us, -1
  %i.ax = icmp sgt i32 %.05168.us, 1
  br i1 %i.ax, label %.lr.ph.us, label %._crit_edge71, !llvm.loop !30

..preheader_crit_edge.us:                         ; preds = %bb.b
  %i.ay = icmp sgt i32 %.04954.us, 4
  br i1 %i.ay, label %.lr.ph65.us, label %._crit_edge.us

.lr.ph70.split:                                   ; preds = %.lr.ph70
  %i.az = icmp sgt i32 %4, 0
  br i1 %i.az, label %.preheader.preheader, label %._crit_edge71

.preheader.preheader:                             ; preds = %.lr.ph70.split
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %6 = add nsw i32 %4, -1
  %i.ba = icmp eq i32 %4, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.05168 = phi i32 [ %i.cn, %._crit_edge ], [ %5, %.preheader.preheader ] ; 2 uses
  %.05267 = phi ptr [ %i.cm, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.05366 = phi ptr [ %i.cl, %._crit_edge ], [ %2, %.preheader.preheader ] ; 6 uses
  %i.bb = getelementptr inbounds i8, ptr %.05366, i64 %3 ; 4 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader
  %i.bc = load i8, ptr %.05366, align 1, !tbaa !14
  %i.bd = zext i8 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %.05366, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bg = zext i8 %i.bf to i16
  %i.bh = load i8, ptr %i.bb, align 1, !tbaa !14
  %i.bi = zext i8 %i.bh to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = zext i8 %i.bk to i16
  %i.bm = add nuw nsw i16 %i.bd, 2
  %i.bn = add nuw nsw i16 %i.bm, %i.bg
  %i.bo = add nuw nsw i16 %i.bn, %i.bi
  %i.bp = add nuw nsw i16 %i.bo, %i.bl
  %i.bq = lshr i16 %i.bp, 2
  %i.br = trunc nuw i16 %i.bq to i8
  store i8 %i.br, ptr %.05267, align 1, !tbaa !14
  %7 = getelementptr inbounds nuw i8, ptr %.05366, i64 2
  %8 = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %9 = getelementptr inbounds nuw i8, ptr %.05267, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader
  %.164.unr = phi ptr [ %.05267, %.preheader ], [ %9, %.prol.loopexit.unr-lcssa ]
  %.14663.unr = phi ptr [ %i.bb, %.preheader ], [ %8, %.prol.loopexit.unr-lcssa ]
  %.14862.unr = phi ptr [ %.05366, %.preheader ], [ %7, %.prol.loopexit.unr-lcssa ]
  %.15061.unr = phi i32 [ %4, %.preheader ], [ %6, %.prol.loopexit.unr-lcssa ]
  br i1 %i.ba, label %._crit_edge, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %.164 = phi ptr [ %28, %.preheader.new ], [ %.164.unr, %.prol.loopexit ] ; 3 uses
  %.14663 = phi ptr [ %27, %.preheader.new ], [ %.14663.unr, %.prol.loopexit ] ; 5 uses
  %.14862 = phi ptr [ %26, %.preheader.new ], [ %.14862.unr, %.prol.loopexit ] ; 5 uses
  %.15061 = phi i32 [ %29, %.preheader.new ], [ %.15061.unr, %.prol.loopexit ] ; 2 uses
  %10 = load i8, ptr %.14862, align 1, !tbaa !14
  %11 = zext i8 %10 to i16
  %12 = getelementptr inbounds nuw i8, ptr %.14862, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !14
  %14 = zext i8 %13 to i16
  %15 = load i8, ptr %.14663, align 1, !tbaa !14
  %16 = zext i8 %15 to i16
  %17 = getelementptr inbounds nuw i8, ptr %.14663, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !14
  %19 = zext i8 %18 to i16
  %20 = add nuw nsw i16 %11, 2
  %21 = add nuw nsw i16 %20, %14
  %22 = add nuw nsw i16 %21, %16
  %23 = add nuw nsw i16 %22, %19
  %24 = lshr i16 %23, 2
  %25 = trunc nuw i16 %24 to i8
  store i8 %25, ptr %.164, align 1, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %.14862, i64 2
  %i.bt = getelementptr inbounds nuw i8, ptr %.14663, i64 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.164, i64 1
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !14
  %i.bw = zext i8 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %.14862, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = zext i8 %i.by to i16
  %i.ca = load i8, ptr %i.bt, align 1, !tbaa !14
  %i.cb = zext i8 %i.ca to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %.14663, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !14
  %i.ce = zext i8 %i.cd to i16
  %i.cf = add nuw nsw i16 %i.bw, 2
  %i.cg = add nuw nsw i16 %i.cf, %i.bz
  %i.ch = add nuw nsw i16 %i.cg, %i.cb
  %i.ci = add nuw nsw i16 %i.ch, %i.ce
  %i.cj = lshr i16 %i.ci, 2
  %i.ck = trunc nuw i16 %i.cj to i8
  store i8 %i.ck, ptr %i.bu, align 1, !tbaa !14
  %26 = getelementptr inbounds nuw i8, ptr %.14862, i64 4
  %27 = getelementptr inbounds nuw i8, ptr %.14663, i64 4
  %28 = getelementptr inbounds nuw i8, ptr %.164, i64 2
  %29 = add nsw i32 %.15061, -2
  %30 = icmp sgt i32 %.15061, 2
  br i1 %30, label %.preheader.new, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %.preheader.new, %.prol.loopexit
  %i.cl = getelementptr inbounds i8, ptr %.05366, i64 %i.c
  %i.cm = getelementptr inbounds i8, ptr %.05267, i64 %1
  %i.cn = add nsw i32 %.05168, -1
  %i.co = icmp sgt i32 %.05168, 1
  br i1 %i.co, label %.preheader, label %._crit_edge71, !llvm.loop !30

._crit_edge71:                                    ; preds = %._crit_edge, %._crit_edge.us, %.lr.ph70.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @shrink44(ptr noalias nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph56, label %._crit_edge57.split

.lr.ph56:                                         ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  %i.c = shl nsw i64 %3, 2
  br i1 %i.b, label %.lr.ph, label %._crit_edge57.split

.lr.ph:                                           ; preds = %.lr.ph56, %._crit_edge
  %.04354 = phi i32 [ %i.ab, %._crit_edge ], [ %5, %.lr.ph56 ] ; 2 uses
  %.04453 = phi ptr [ %i.aa, %._crit_edge ], [ %0, %.lr.ph56 ] ; 2 uses
  %.04552 = phi ptr [ %i.z, %._crit_edge ], [ %2, %.lr.ph56 ] ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %.04552, i64 %3 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %3 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.051 = phi ptr [ %.04453, %.lr.ph ], [ %i.w, %bb.b ] ; 2 uses
  %.03850 = phi ptr [ %i.f, %.lr.ph ], [ %i.v, %bb.b ] ; 2 uses
  %.03949 = phi ptr [ %i.e, %.lr.ph ], [ %i.u, %bb.b ] ; 2 uses
  %.04048 = phi ptr [ %i.d, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.04147 = phi ptr [ %.04552, %.lr.ph ], [ %i.s, %bb.b ] ; 2 uses
  %.04246 = phi i32 [ %4, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %i.g = load <4 x i8>, ptr %.04147, align 1, !tbaa !14
  %i.h = zext <4 x i8> %i.g to <4 x i16>
  %i.i = load <4 x i8>, ptr %.04048, align 1, !tbaa !14
  %i.j = zext <4 x i8> %i.i to <4 x i16>
  %i.k = load <4 x i8>, ptr %.03949, align 1, !tbaa !14
  %i.l = zext <4 x i8> %i.k to <4 x i16>
  %i.m = load <4 x i8>, ptr %.03850, align 1, !tbaa !14
  %i.n = zext <4 x i8> %i.m to <4 x i16>
  %i.o = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.l)
  %rdx.op = add nuw nsw <4 x i16> %i.h, %i.j
  %i.p = add nuw nsw <4 x i16> %rdx.op, %i.n
  %op.rdx = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.p)
  %op.rdx81 = add nuw nsw i16 %i.o, 8
  %op.rdx82 = add nuw nsw i16 %op.rdx, %op.rdx81
  %i.q = lshr i16 %op.rdx82, 4
  %i.r = trunc nuw i16 %i.q to i8
  store i8 %i.r, ptr %.051, align 1, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %.04147, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %.04048, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %.03949, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %.03850, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.051, i64 1
  %i.x = add nsw i32 %.04246, -1
  %i.y = icmp sgt i32 %.04246, 1
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %.04552, i64 %i.c
  %i.aa = getelementptr inbounds i8, ptr %.04453, i64 %1
  %i.ab = add nsw i32 %.04354, -1
  %i.ac = icmp sgt i32 %.04354, 1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge57.split, !llvm.loop !32

._crit_edge57.split:                              ; preds = %._crit_edge, %.lr.ph56, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @shrink88(ptr noalias nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.preheader33.lr.ph, label %._crit_edge44.split

.preheader33.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  %i.c = shl i64 %3, 3
  %i.d = shl nsw i32 %4, 3
  %i.e = sext i32 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e
  %i.g = sext i32 %4 to i64
  %i.h = sub nsw i64 %1, %i.g
  br i1 %i.b, label %.preheader33, label %._crit_edge44.split

.preheader33:                                     ; preds = %.preheader33.lr.ph, %._crit_edge
  %.02943 = phi i32 [ %i.av, %._crit_edge ], [ %5, %.preheader33.lr.ph ] ; 2 uses
  %.03042 = phi ptr [ %i.au, %._crit_edge ], [ %0, %.preheader33.lr.ph ]
  %.03141 = phi ptr [ %i.at, %._crit_edge ], [ %2, %.preheader33.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader33, %.preheader
  %.02839 = phi i32 [ %4, %.preheader33 ], [ %i.ar, %.preheader ] ; 2 uses
  %.138 = phi ptr [ %.03042, %.preheader33 ], [ %i.ap, %.preheader ] ; 2 uses
  %.13237 = phi ptr [ %.03141, %.preheader33 ], [ %i.aq, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.13237, i64 %3 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %3 ; 2 uses
  %i.k = load <8 x i8>, ptr %.13237, align 1, !tbaa !14
  %i.l = load <8 x i8>, ptr %i.i, align 1, !tbaa !14
  %i.m = load <8 x i8>, ptr %i.j, align 1, !tbaa !14
  %i.n = shufflevector <8 x i8> %i.m, <8 x i8> %i.k, <24 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.o = shufflevector <8 x i8> %i.l, <8 x i8> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.p = shufflevector <24 x i8> %i.n, <24 x i8> %i.o, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.q = zext <24 x i8> %i.p to <24 x i16>
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %3 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %3 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %3 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %3 ; 2 uses
  %i.v = load <8 x i8>, ptr %i.r, align 1, !tbaa !14
  %i.w = load <8 x i8>, ptr %i.s, align 1, !tbaa !14
  %i.x = load <8 x i8>, ptr %i.t, align 1, !tbaa !14
  %i.y = load <8 x i8>, ptr %i.u, align 1, !tbaa !14
  %i.z = shufflevector <8 x i8> %i.v, <8 x i8> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aa = shufflevector <8 x i8> %i.x, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ab = shufflevector <32 x i8> %i.z, <32 x i8> %i.aa, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ac = shufflevector <8 x i8> %i.y, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ad = shufflevector <32 x i8> %i.ab, <32 x i8> %i.ac, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %i.ae = zext <32 x i8> %i.ad to <32 x i16>      ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.u, i64 %3
  %i.ag = load <8 x i8>, ptr %i.af, align 1, !tbaa !14
  %i.ah = zext <8 x i8> %i.ag to <8 x i16>
  %i.ai = shufflevector <32 x i16> %i.ae, <32 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op = add nuw nsw <8 x i16> %i.ai, %i.ah
  %i.aj = shufflevector <8 x i16> %rdx.op, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <32 x i16> %i.aj, <32 x i16> %i.ae, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.al = tail call i16 @llvm.vector.reduce.add.v32i16(<32 x i16> %i.ak)
  %i.am = tail call i16 @llvm.vector.reduce.add.v24i16(<24 x i16> %i.q)
  %op.rdx75 = add nuw nsw i16 %i.am, 32
  %op.rdx76 = add nuw nsw i16 %op.rdx75, %i.al
  %i.an = lshr i16 %op.rdx76, 6
  %i.ao = trunc nuw i16 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %.138, i64 1 ; 2 uses
  store i8 %i.ao, ptr %.138, align 1, !tbaa !14
  %i.aq = getelementptr i8, ptr %.13237, i64 8    ; 2 uses
  %i.ar = add nsw i32 %.02839, -1
  %i.as = icmp sgt i32 %.02839, 1
  br i1 %i.as, label %.preheader, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %.preheader
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.f
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %i.h
  %i.av = add nsw i32 %.02943, -1
  %i.aw = icmp sgt i32 %.02943, 1
  br i1 %i.aw, label %.preheader33, label %._crit_edge44.split, !llvm.loop !34

._crit_edge44.split:                              ; preds = %._crit_edge, %.preheader33.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @pix_sum_c(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #2 {
.preheader:
  %i.a = load <16 x i8>, ptr %0, align 1, !tbaa !14
  %i.b = zext <16 x i8> %i.a to <16 x i32>
  %i.c = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.b)
  %i.d = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.e = load <16 x i8>, ptr %i.d, align 1, !tbaa !14
  %i.f = zext <16 x i8> %i.e to <16 x i32>
  %i.g = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.f)
  %op.rdx.1 = add nuw nsw i32 %i.g, %i.c
  %i.h = getelementptr i8, ptr %i.d, i64 %1       ; 2 uses
  %i.i = load <16 x i8>, ptr %i.h, align 1, !tbaa !14
  %i.j = zext <16 x i8> %i.i to <16 x i32>
  %i.k = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.j)
  %op.rdx.2 = add nuw nsw i32 %i.k, %op.rdx.1
  %i.l = getelementptr i8, ptr %i.h, i64 %1       ; 2 uses
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !14
  %i.n = zext <16 x i8> %i.m to <16 x i32>
  %i.o = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.n)
  %op.rdx.3 = add nuw nsw i32 %i.o, %op.rdx.2
  %i.p = getelementptr i8, ptr %i.l, i64 %1       ; 2 uses
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !14
  %i.r = zext <16 x i8> %i.q to <16 x i32>
  %i.s = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.r)
  %op.rdx.4 = add nuw nsw i32 %i.s, %op.rdx.3
  %i.t = getelementptr i8, ptr %i.p, i64 %1       ; 2 uses
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !14
  %i.v = zext <16 x i8> %i.u to <16 x i32>
  %i.w = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.v)
  %op.rdx.5 = add nuw nsw i32 %i.w, %op.rdx.4
  %i.x = getelementptr i8, ptr %i.t, i64 %1       ; 2 uses
  %i.y = load <16 x i8>, ptr %i.x, align 1, !tbaa !14
  %i.z = zext <16 x i8> %i.y to <16 x i32>
  %i.aa = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.z)
  %op.rdx.6 = add i32 %i.aa, %op.rdx.5
  %i.ab = getelementptr i8, ptr %i.x, i64 %1      ; 2 uses
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !14
  %i.ad = zext <16 x i8> %i.ac to <16 x i32>
  %i.ae = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ad)
  %op.rdx.7 = add i32 %i.ae, %op.rdx.6
  %i.af = getelementptr i8, ptr %i.ab, i64 %1     ; 2 uses
  %i.ag = load <16 x i8>, ptr %i.af, align 1, !tbaa !14
  %i.ah = zext <16 x i8> %i.ag to <16 x i32>
  %i.ai = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ah)
  %op.rdx.8 = add i32 %i.ai, %op.rdx.7
end_hunk_0
