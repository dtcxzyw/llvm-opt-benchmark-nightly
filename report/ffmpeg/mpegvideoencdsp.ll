Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideoencdsp?download=true
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@shrink22:bb.a
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
  %i.ba = add nsw i32 %4, -1
  %i.bb = icmp eq i32 %4, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.05168 = phi i32 [ %i.dm, %._crit_edge ], [ %5, %.preheader.preheader ] ; 2 uses
  %.05267 = phi ptr [ %i.dl, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.05366 = phi ptr [ %i.dk, %._crit_edge ], [ %2, %.preheader.preheader ] ; 6 uses
  %i.bc = getelementptr inbounds i8, ptr %.05366, i64 %3 ; 4 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader
  %i.bd = load i8, ptr %.05366, align 1, !tbaa !14
  %i.be = zext i8 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %.05366, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bh = zext i8 %i.bg to i16
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.bj = zext i8 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14
  %i.bm = zext i8 %i.bl to i16
  %i.bn = add nuw nsw i16 %i.be, 2
  %i.bo = add nuw nsw i16 %i.bn, %i.bh
  %i.bp = add nuw nsw i16 %i.bo, %i.bj
  %i.bq = add nuw nsw i16 %i.bp, %i.bm
  %i.br = lshr i16 %i.bq, 2
  %i.bs = trunc nuw i16 %i.br to i8
  store i8 %i.bs, ptr %.05267, align 1, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %.05366, i64 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.05267, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader
  %.164.unr = phi ptr [ %.05267, %.preheader ], [ %i.bv, %.prol.loopexit.unr-lcssa ]
  %.14663.unr = phi ptr [ %i.bc, %.preheader ], [ %i.bu, %.prol.loopexit.unr-lcssa ]
  %.14862.unr = phi ptr [ %.05366, %.preheader ], [ %i.bt, %.prol.loopexit.unr-lcssa ]
  %.15061.unr = phi i32 [ %4, %.preheader ], [ %i.ba, %.prol.loopexit.unr-lcssa ]
  br i1 %i.bb, label %._crit_edge, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %.164 = phi ptr [ %i.dh, %.preheader.new ], [ %.164.unr, %.prol.loopexit ] ; 3 uses
  %.14663 = phi ptr [ %i.dg, %.preheader.new ], [ %.14663.unr, %.prol.loopexit ] ; 5 uses
  %.14862 = phi ptr [ %i.df, %.preheader.new ], [ %.14862.unr, %.prol.loopexit ] ; 5 uses
  %.15061 = phi i32 [ %i.di, %.preheader.new ], [ %.15061.unr, %.prol.loopexit ] ; 2 uses
  %i.bw = load i8, ptr %.14862, align 1, !tbaa !14
  %i.bx = zext i8 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %.14862, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !14
  %i.ca = zext i8 %i.bz to i16
  %i.cb = load i8, ptr %.14663, align 1, !tbaa !14
  %i.cc = zext i8 %i.cb to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %.14663, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !14
  %i.cf = zext i8 %i.ce to i16
  %i.cg = add nuw nsw i16 %i.bx, 2
  %i.ch = add nuw nsw i16 %i.cg, %i.ca
  %i.ci = add nuw nsw i16 %i.ch, %i.cc
  %i.cj = add nuw nsw i16 %i.ci, %i.cf
  %i.ck = lshr i16 %i.cj, 2
  %i.cl = trunc nuw i16 %i.ck to i8
  store i8 %i.cl, ptr %.164, align 1, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %.14862, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %.14663, i64 2
  %i.co = getelementptr inbounds nuw i8, ptr %.164, i64 1
  %i.cp = load i8, ptr %i.cm, align 1, !tbaa !14
  %i.cq = zext i8 %i.cp to i16
  %i.cr = getelementptr inbounds nuw i8, ptr %.14862, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !14
  %i.ct = zext i8 %i.cs to i16
  %i.cu = load i8, ptr %i.cn, align 1, !tbaa !14
  %i.cv = zext i8 %i.cu to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %.14663, i64 3
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !14
  %i.cy = zext i8 %i.cx to i16
  %i.cz = add nuw nsw i16 %i.cq, 2
  %i.da = add nuw nsw i16 %i.cz, %i.ct
  %i.db = add nuw nsw i16 %i.da, %i.cv
  %i.dc = add nuw nsw i16 %i.db, %i.cy
  %i.dd = lshr i16 %i.dc, 2
  %i.de = trunc nuw i16 %i.dd to i8
  store i8 %i.de, ptr %i.co, align 1, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %.14862, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.14663, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.164, i64 2
  %i.di = add nsw i32 %.15061, -2
  %i.dj = icmp sgt i32 %.15061, 2
  br i1 %i.dj, label %.preheader.new, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %.preheader.new, %.prol.loopexit
  %i.dk = getelementptr inbounds i8, ptr %.05366, i64 %i.c
  %i.dl = getelementptr inbounds i8, ptr %.05267, i64 %1
  %i.dm = add nsw i32 %.05168, -1
  %i.dn = icmp sgt i32 %.05168, 1
  br i1 %i.dn, label %.preheader, label %._crit_edge71, !llvm.loop !30

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
  %rdx.op71 = add nuw nsw <4 x i16> %rdx.op, %i.n
  %i.p = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %rdx.op71)
  %op.rdx72 = add nuw nsw i16 %i.o, 8
  %op.rdx73 = add nuw nsw i16 %i.p, %op.rdx72
  %i.q = lshr i16 %op.rdx73, 4
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
  %.02943 = phi i32 [ %i.ak, %._crit_edge ], [ %5, %.preheader33.lr.ph ] ; 2 uses
  %.03042 = phi ptr [ %i.aj, %._crit_edge ], [ %0, %.preheader33.lr.ph ]
  %.03141 = phi ptr [ %i.ai, %._crit_edge ], [ %2, %.preheader33.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader33, %.preheader
  %.02839 = phi i32 [ %4, %.preheader33 ], [ %i.ag, %.preheader ] ; 2 uses
  %.138 = phi ptr [ %.03042, %.preheader33 ], [ %i.ae, %.preheader ] ; 2 uses
  %.13237 = phi ptr [ %.03141, %.preheader33 ], [ %i.af, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.13237, i64 %3 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %3 ; 2 uses
  %i.k = load <8 x i8>, ptr %.13237, align 1, !tbaa !14
  %i.l = load <8 x i8>, ptr %i.i, align 1, !tbaa !14
  %i.m = load <8 x i8>, ptr %i.j, align 1, !tbaa !14
  %6 = shufflevector <8 x i8> %i.m, <8 x i8> %i.k, <24 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = shufflevector <8 x i8> %i.l, <8 x i8> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <24 x i8> %6, <24 x i8> %7, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %9 = zext <24 x i8> %8 to <24 x i16>
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %3 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %3 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %3 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %3 ; 2 uses
  %i.r = load <8 x i8>, ptr %i.n, align 1, !tbaa !14
  %i.s = load <8 x i8>, ptr %i.o, align 1, !tbaa !14
  %i.t = load <8 x i8>, ptr %i.p, align 1, !tbaa !14
  %i.u = load <8 x i8>, ptr %i.q, align 1, !tbaa !14
  %i.v = shufflevector <8 x i8> %i.r, <8 x i8> %i.s, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.w = shufflevector <8 x i8> %i.t, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <32 x i8> %i.v, <32 x i8> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.y = shufflevector <8 x i8> %i.u, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.z = shufflevector <32 x i8> %i.x, <32 x i8> %i.y, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %i.aa = zext <32 x i8> %i.z to <32 x i16>       ; 2 uses
  %10 = getelementptr inbounds i8, ptr %i.q, i64 %3
  %11 = load <8 x i8>, ptr %10, align 1, !tbaa !14
  %12 = zext <8 x i8> %11 to <8 x i16>
  %13 = shufflevector <32 x i16> %i.aa, <32 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op = add nuw nsw <8 x i16> %13, %12
  %14 = shufflevector <8 x i16> %rdx.op, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <32 x i16> %14, <32 x i16> %i.aa, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %16 = tail call i16 @llvm.vector.reduce.add.v32i16(<32 x i16> %15)
  %i.ab = tail call i16 @llvm.vector.reduce.add.v24i16(<24 x i16> %9)
  %op.rdx75 = add nuw nsw i16 %i.ab, 32
  %op.rdx = add nuw nsw i16 %op.rdx75, %16
  %i.ac = lshr i16 %op.rdx, 6
  %i.ad = trunc nuw i16 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %.138, i64 1 ; 2 uses
  store i8 %i.ad, ptr %.138, align 1, !tbaa !14
  %i.af = getelementptr i8, ptr %.13237, i64 8    ; 2 uses
  %i.ag = add nsw i32 %.02839, -1
  %i.ah = icmp sgt i32 %.02839, 1
  br i1 %i.ah, label %.preheader, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %.preheader
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.f
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %i.h
  %i.ak = add nsw i32 %.02943, -1
  %i.al = icmp sgt i32 %.02943, 1
  br i1 %i.al, label %.preheader33, label %._crit_edge44.split, !llvm.loop !34

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
  %i.aj = getelementptr i8, ptr %i.af, i64 %1     ; 2 uses
  %i.ak = load <16 x i8>, ptr %i.aj, align 1, !tbaa !14
  %i.al = zext <16 x i8> %i.ak to <16 x i32>
  %i.am = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.al)
  %op.rdx.9 = add i32 %i.am, %op.rdx.8
  %i.an = getelementptr i8, ptr %i.aj, i64 %1     ; 2 uses
  %i.ao = load <16 x i8>, ptr %i.an, align 1, !tbaa !14
  %i.ap = zext <16 x i8> %i.ao to <16 x i32>
  %i.aq = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ap)
  %op.rdx.10 = add i32 %i.aq, %op.rdx.9
  %i.ar = getelementptr i8, ptr %i.an, i64 %1     ; 2 uses
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !tbaa !14
  %i.at = zext <16 x i8> %i.as to <16 x i32>
  %i.au = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.at)
  %op.rdx.11 = add i32 %i.au, %op.rdx.10
  %i.av = getelementptr i8, ptr %i.ar, i64 %1     ; 2 uses
  %i.aw = load <16 x i8>, ptr %i.av, align 1, !tbaa !14
  %i.ax = zext <16 x i8> %i.aw to <16 x i32>
  %i.ay = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ax)
  %op.rdx.12 = add i32 %i.ay, %op.rdx.11
  %i.az = getelementptr i8, ptr %i.av, i64 %1     ; 2 uses
  %i.ba = load <16 x i8>, ptr %i.az, align 1, !tbaa !14
  %i.bb = zext <16 x i8> %i.ba to <16 x i32>
  %i.bc = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.bb)
  %op.rdx.13 = add i32 %i.bc, %op.rdx.12
  %i.bd = getelementptr i8, ptr %i.az, i64 %1     ; 2 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 1, !tbaa !14
  %i.bf = zext <16 x i8> %i.be to <16 x i32>
  %i.bg = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.bf)
  %op.rdx.14 = add i32 %i.bg, %op.rdx.13
  %i.bh = getelementptr i8, ptr %i.bd, i64 %1
  %i.bi = load <16 x i8>, ptr %i.bh, align 1, !tbaa !14
  %i.bj = zext <16 x i8> %i.bi to <16 x i32>
  %i.bk = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.bj)
  %op.rdx.15 = add i32 %i.bk, %op.rdx.14
  ret i32 %op.rdx.15
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @pix_norm1_c(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #2 {
bb.a:
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.042 = phi ptr [ %0, %bb.a ], [ %i.cs, %.preheader ] ; 5 uses
  %.03441 = phi i32 [ 0, %bb.a ], [ %i.ct, %.preheader ]
  %.03540 = phi i32 [ 0, %bb.a ], [ %op.rdx, %.preheader ]
  %i.a = load i32, ptr %.042, align 4, !tbaa !11  ; 4 uses
  %i.b = and i32 %i.a, 255
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11
  %i.f = lshr i32 %i.a, 8
  %i.g = and i32 %i.f, 255
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11
  %i.k = lshr i32 %i.a, 16
  %i.l = and i32 %i.k, 255
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11
  %i.p = lshr i32 %i.a, 24
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %.042, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11   ; 4 uses
  %i.v = and i32 %i.u, 255
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !11
  %i.z = lshr i32 %i.u, 8
  %i.aa = and i32 %i.z, 255
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %i.ae = lshr i32 %i.u, 16
  %i.af = and i32 %i.ae, 255
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !11
  %i.aj = lshr i32 %i.u, 24
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11 ; 4 uses
  %i.ap = and i32 %i.ao, 255
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !11
  %i.at = lshr i32 %i.ao, 8
  %i.au = and i32 %i.at, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !11
  %i.ay = lshr i32 %i.ao, 16
  %i.az = and i32 %i.ay, 255
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !11
  %i.bd = lshr i32 %i.ao, 24
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %.042, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !11 ; 4 uses
  %i.bj = and i32 %i.bi, 255
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !11
  %i.bn = lshr i32 %i.bi, 8
  %i.bo = and i32 %i.bn, 255
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11
  %i.bs = lshr i32 %i.bi, 16
  %i.bt = and i32 %i.bs, 255
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !11
  %i.bx = lshr i32 %i.bi, 24
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !11
  %i.cb = insertelement <16 x i32> poison, i32 %i.e, i64 0
  %i.cc = insertelement <16 x i32> %i.cb, i32 %i.j, i64 1
  %i.cd = insertelement <16 x i32> %i.cc, i32 %i.o, i64 2
  %i.ce = insertelement <16 x i32> %i.cd, i32 %i.s, i64 3
  %i.cf = insertelement <16 x i32> %i.ce, i32 %i.y, i64 4
  %i.cg = insertelement <16 x i32> %i.cf, i32 %i.ad, i64 5
  %i.ch = insertelement <16 x i32> %i.cg, i32 %i.ai, i64 6
  %i.ci = insertelement <16 x i32> %i.ch, i32 %i.am, i64 7
end_hunk_0
begin_hunk_1_@draw_edges_8_c:bb.a
  %epil.iter98.cmp.not = icmp eq i32 %epil.iter98.next, %xtraiter97
  br i1 %epil.iter98.cmp.not, label %draw_edges_lr.exit48, label %bb.e, !llvm.loop !37

draw_edges_lr.exit48.loopexit86.unr-lcssa:        ; preds = %bb.b
  %lcmp.mod92.not = icmp eq i32 %xtraiter90, 0
  br i1 %lcmp.mod92.not, label %draw_edges_lr.exit48, label %.epil.preheader89

.epil.preheader89:                                ; preds = %draw_edges_lr.exit48.loopexit86.unr-lcssa, %.lr.ph60
  %.013.i4658.epil.init = phi ptr [ %0, %.lr.ph60 ], [ %i.ae, %draw_edges_lr.exit48.loopexit86.unr-lcssa ]
  %lcmp.mod93 = icmp ne i32 %xtraiter90, 0
  tail call void @llvm.assume(i1 %lcmp.mod93)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader89
  %.013.i4658.epil = phi ptr [ %.013.i4658.epil.init, %.epil.preheader89 ], [ %i.cm, %bb.f ] ; 4 uses
  %epil.iter91 = phi i32 [ 0, %.epil.preheader89 ], [ %epil.iter91.next, %bb.f ]
  %i.ch = getelementptr inbounds i8, ptr %.013.i4658.epil, i64 -16
  %i.ci = load i8, ptr %.013.i4658.epil, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ch, i8 %i.ci, i64 16, i1 false)
  %i.cj = getelementptr inbounds i8, ptr %.013.i4658.epil, i64 %i.d ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cj, i8 %i.cl, i64 16, i1 false)
  %i.cm = getelementptr inbounds i8, ptr %.013.i4658.epil, i64 %1
  %epil.iter91.next = add i32 %epil.iter91, 1     ; 2 uses
  %epil.iter91.cmp.not = icmp eq i32 %epil.iter91.next, %xtraiter90
  br i1 %epil.iter91.cmp.not, label %draw_edges_lr.exit48, label %bb.f, !llvm.loop !38

draw_edges_lr.exit48.loopexit87.unr-lcssa:        ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %draw_edges_lr.exit48, label %.epil.preheader

.epil.preheader:                                  ; preds = %draw_edges_lr.exit48.loopexit87.unr-lcssa, %.lr.ph
  %.013.i4356.epil.init = phi ptr [ %0, %.lr.ph ], [ %i.bc, %draw_edges_lr.exit48.loopexit87.unr-lcssa ]
  %lcmp.mod88 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.013.i4356.epil = phi ptr [ %.013.i4356.epil.init, %.epil.preheader ], [ %i.cs, %bb.g ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.cn = getelementptr inbounds i8, ptr %.013.i4356.epil, i64 -8
  %i.co = load i8, ptr %.013.i4356.epil, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.cn, i8 %i.co, i64 8, i1 false)
  %i.cp = getelementptr inbounds i8, ptr %.013.i4356.epil, i64 %i.b ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 -1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.cp, i8 %i.cr, i64 8, i1 false)
  %i.cs = getelementptr inbounds i8, ptr %.013.i4356.epil, i64 %1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %draw_edges_lr.exit48, label %bb.g, !llvm.loop !39

draw_edges_lr.exit48:                             ; preds = %draw_edges_lr.exit48.loopexit87.unr-lcssa, %bb.g, %draw_edges_lr.exit48.loopexit86.unr-lcssa, %bb.f, %draw_edges_lr.exit48.loopexit.unr-lcssa, %bb.e, %.preheader54, %.preheader52, %.preheader51
  %i.ct = sext i32 %4 to i64
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds i8, ptr %0, i64 %i.cu ; 7 uses
  %i.cw = add nsw i32 %3, -1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul nsw i64 %1, %i.cx
  %i.cz = getelementptr inbounds i8, ptr %i.cv, i64 %i.cy ; 10 uses
  %.not = trunc i32 %6 to i1
  %i.da = icmp sgt i32 %5, 0                      ; 2 uses
  %or.cond = and i1 %i.da, %.not
  br i1 %or.cond, label %.lr.ph65, label %.loopexit50

.lr.ph65:                                         ; preds = %draw_edges_lr.exit48
  %reass.add42 = shl i32 %4, 1
  %i.db = add i32 %reass.add42, %2
  %i.dc = sext i32 %i.db to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 2 uses
  %xtraiter104 = and i64 %wide.trip.count, 1
  %i.dd = icmp eq i32 %5, 1
  br i1 %i.dd, label %.epil.preheader103, label %.lr.ph65.new

.lr.ph65.new:                                     ; preds = %.lr.ph65
  %unroll_iter108 = and i64 %wide.trip.count, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph65.new
  %indvars.iv = phi i64 [ 0, %.lr.ph65.new ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %niter109 = phi i64 [ 0, %.lr.ph65.new ], [ %niter109.next.1, %bb.h ]
  %indvars.iv.next.neg = xor i64 %indvars.iv, -1
  %.neg = mul i64 %1, %indvars.iv.next.neg
  %i.de = getelementptr inbounds i8, ptr %i.cv, i64 %.neg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr align 1 %i.cv, i64 %i.dc, i1 false)
  %indvars.iv.next.neg.1 = xor i64 %indvars.iv, -2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.neg.1 = mul i64 %1, %indvars.iv.next.neg.1
  %i.df = getelementptr inbounds i8, ptr %i.cv, i64 %.neg.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.cv, i64 %i.dc, i1 false)
  %niter109.next.1 = add i64 %niter109, 2         ; 2 uses
  %niter109.ncmp.1 = icmp eq i64 %niter109.next.1, %unroll_iter108
  br i1 %niter109.ncmp.1, label %.loopexit50.loopexit.unr-lcssa, label %bb.h, !llvm.loop !40

.loopexit50.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod106.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod106.not, label %.loopexit50, label %.epil.preheader103

.epil.preheader103:                               ; preds = %.loopexit50.loopexit.unr-lcssa, %.lr.ph65
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next.1, %.loopexit50.loopexit.unr-lcssa ]
  %lcmp.mod107 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %indvars.iv.next.neg.epil = xor i64 %indvars.iv.epil.init, -1
  %.neg.epil = mul i64 %1, %indvars.iv.next.neg.epil
  %i.dg = getelementptr inbounds i8, ptr %i.cv, i64 %.neg.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.cv, i64 %i.dc, i1 false)
  br label %.loopexit50

.loopexit50:                                      ; preds = %.epil.preheader103, %.loopexit50.loopexit.unr-lcssa, %draw_edges_lr.exit48
  %i.dh = and i32 %6, 2
  %.not41 = icmp ne i32 %i.dh, 0
  %or.cond68 = and i1 %.not41, %i.da
  br i1 %or.cond68, label %.lr.ph67, label %.loopexit

.lr.ph67:                                         ; preds = %.loopexit50
  %reass.add = shl i32 %4, 1
  %i.di = add i32 %reass.add, %2
  %i.dj = sext i32 %i.di to i64                   ; 5 uses
  %wide.trip.count78 = zext nneg i32 %5 to i64    ; 2 uses
  %xtraiter111 = and i64 %wide.trip.count78, 3    ; 3 uses
  %i.dk = icmp ult i32 %5, 4
  br i1 %i.dk, label %.epil.preheader110, label %.lr.ph67.new

.lr.ph67.new:                                     ; preds = %.lr.ph67
  %unroll_iter115 = and i64 %wide.trip.count78, 2147483644
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph67.new
  %indvars.iv75 = phi i64 [ 0, %.lr.ph67.new ], [ %indvars.iv.next76.3, %bb.i ] ; 4 uses
  %niter116 = phi i64 [ 0, %.lr.ph67.new ], [ %niter116.next.3, %bb.i ]
  %indvars.iv.next76 = or disjoint i64 %indvars.iv75, 1
  %i.dl = mul nsw i64 %1, %indvars.iv.next76
  %i.dm = getelementptr inbounds i8, ptr %i.cz, i64 %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.cz, i64 %i.dj, i1 false)
  %indvars.iv.next76.1 = or disjoint i64 %indvars.iv75, 2
  %i.dn = mul nsw i64 %1, %indvars.iv.next76.1
  %i.do = getelementptr inbounds i8, ptr %i.cz, i64 %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.cz, i64 %i.dj, i1 false)
  %indvars.iv.next76.2 = or disjoint i64 %indvars.iv75, 3
  %i.dp = mul nsw i64 %1, %indvars.iv.next76.2
  %i.dq = getelementptr inbounds i8, ptr %i.cz, i64 %i.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr align 1 %i.cz, i64 %i.dj, i1 false)
  %indvars.iv.next76.3 = add nuw nsw i64 %indvars.iv75, 4 ; 3 uses
  %i.dr = mul nsw i64 %1, %indvars.iv.next76.3
  %i.ds = getelementptr inbounds i8, ptr %i.cz, i64 %i.dr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr align 1 %i.cz, i64 %i.dj, i1 false)
  %niter116.next.3 = add i64 %niter116, 4         ; 2 uses
  %niter116.ncmp.3 = icmp eq i64 %niter116.next.3, %unroll_iter115
  br i1 %niter116.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !41

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %.loopexit, label %.epil.preheader110

.epil.preheader110:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph67
  %indvars.iv75.epil.init = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next76.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i64 %xtraiter111, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader110
  %indvars.iv75.epil = phi i64 [ %indvars.iv75.epil.init, %.epil.preheader110 ], [ %indvars.iv.next76.epil, %bb.j ]
  %epil.iter112 = phi i64 [ 0, %.epil.preheader110 ], [ %epil.iter112.next, %bb.j ]
  %indvars.iv.next76.epil = add nuw nsw i64 %indvars.iv75.epil, 1 ; 2 uses
  %i.dt = mul nsw i64 %1, %indvars.iv.next76.epil
  %i.du = getelementptr inbounds i8, ptr %i.cz, i64 %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr align 1 %i.cz, i64 %i.dj, i1 false)
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %.loopexit, label %bb.j, !llvm.loop !42

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.loopexit50
  ret void
}

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v32i16(<32 x i16>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v24i16(<24 x i16>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

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
!9 = !{!"short", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!5, !5, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"MpegvideoEncDSPContext", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !5, i64 40, !15, i64 72}
!18 = !{!17, !15, i64 72}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12, !13, !21}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !12, !13}
!26 = !{!23}
!27 = !{!24}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !43}
!38 = distinct !{!38, !43}
!39 = distinct !{!39, !43}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
