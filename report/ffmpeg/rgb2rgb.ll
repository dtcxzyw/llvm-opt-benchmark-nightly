Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rgb2rgb?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@yuv422ptouyvy_c:bb.a
  %i.cj = shl nuw i32 %i.ci, 24
  %i.ck = or disjoint i32 %i.cf, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.03140.i.ph, i64 4
  store i32 %i.ck, ptr %.03140.i.ph, align 4, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %.03041.i.ph, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %.02942.i.ph, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %.043.i.ph, i64 1
  %i.cp = add nuw nsw i32 %.03239.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.043.i.unr = phi ptr [ %.043.i.ph, %scalar.ph.preheader ], [ %i.co, %scalar.ph.prol ]
  %.02942.i.unr = phi ptr [ %.02942.i.ph, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %.03041.i.unr = phi ptr [ %.03041.i.ph, %scalar.ph.preheader ], [ %i.cm, %scalar.ph.prol ]
  %.03140.i.unr = phi ptr [ %.03140.i.ph, %scalar.ph.preheader ], [ %i.cl, %scalar.ph.prol ]
  %.03239.i.unr = phi i32 [ %.03239.i.ph, %scalar.ph.preheader ], [ %i.cp, %scalar.ph.prol ]
  %i.cq = icmp eq i32 %i.a, %.neg
  br i1 %i.cq, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.043.i = phi ptr [ %i.ec, %scalar.ph ], [ %.043.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.02942.i = phi ptr [ %i.eb, %scalar.ph ], [ %.02942.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.03041.i = phi ptr [ %i.ea, %scalar.ph ], [ %.03041.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.03140.i = phi ptr [ %i.dz, %scalar.ph ], [ %.03140.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.03239.i = phi i32 [ %i.ed, %scalar.ph ], [ %.03239.i.unr, %scalar.ph.prol.loopexit ]
  %i.cr = load i8, ptr %.02942.i, align 1, !tbaa !12
  %i.cs = zext i8 %i.cr to i32
  %i.ct = load i8, ptr %.03041.i, align 1, !tbaa !12
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 8
  %i.cw = or disjoint i32 %i.cv, %i.cs
  %i.cx = load i8, ptr %.043.i, align 1, !tbaa !12
  %i.cy = zext i8 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 16
  %i.da = or disjoint i32 %i.cw, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %.03041.i, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !12
  %i.dd = zext i8 %i.dc to i32
  %i.de = shl nuw i32 %i.dd, 24
  %i.df = or disjoint i32 %i.da, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.03140.i, i64 4
  store i32 %i.df, ptr %.03140.i, align 4, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %.03041.i, i64 2
  %i.di = getelementptr inbounds nuw i8, ptr %.02942.i, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.043.i, i64 1
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !12
  %i.dl = zext i8 %i.dk to i32
  %i.dm = load i8, ptr %i.dh, align 1, !tbaa !12
  %i.dn = zext i8 %i.dm to i32
  %i.do = shl nuw nsw i32 %i.dn, 8
  %i.dp = or disjoint i32 %i.do, %i.dl
  %i.dq = load i8, ptr %i.dj, align 1, !tbaa !12
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 16
  %i.dt = or disjoint i32 %i.dp, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.03041.i, i64 3
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !12
  %i.dw = zext i8 %i.dv to i32
  %i.dx = shl nuw i32 %i.dw, 24
  %i.dy = or disjoint i32 %i.dt, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %.03140.i, i64 8
  store i32 %i.dy, ptr %i.dg, align 4, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %.03041.i, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %.02942.i, i64 2
  %i.ec = getelementptr inbounds nuw i8, ptr %.043.i, i64 2
  %i.ed = add nuw nsw i32 %.03239.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.ed, %i.a
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !237

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.137.i = getelementptr inbounds i8, ptr %.03645.i, i64 %.137.idx.i
  %.1.i = getelementptr inbounds i8, ptr %.03546.i, i64 %.137.idx.i
  %i.ee = getelementptr inbounds i8, ptr %.03447.i, i64 %i.d
  %i.ef = getelementptr inbounds i8, ptr %.03844.i, i64 %i.e
  %i.eg = add nuw nsw i32 %.03348.i, 1            ; 2 uses
  %exitcond50.not.i = icmp eq i32 %i.eg, %5
  br i1 %exitcond50.not.i, label %yuvPlanartouyvy_c.exit, label %.preheader.i, !llvm.loop !1

yuvPlanartouyvy_c.exit:                           ; preds = %._crit_edge.i, %bb.a, %.preheader.lr.ph.i
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @planar2x_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !12
  store i8 %i.a, ptr %1, align 1, !tbaa !12
  %i.b = add i32 %2, -1                           ; 5 uses
  %i.c = icmp sgt i32 %2, 1                       ; 3 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 4 uses
  %min.iters.check = icmp ult i32 %2, 9
  br i1 %min.iters.check, label %.lr.ph.preheader324, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = getelementptr i8, ptr %1, i64 1
  %i.e = shl nuw nsw i64 %wide.trip.count, 1
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 1
  %i.h = zext nneg i32 %2 to i64
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %bound0 = icmp ult ptr %i.d, %i.i
  %bound1 = icmp ult ptr %0, %i.g
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader324, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <8 x i8>, ptr %i.j, align 1, !tbaa !12, !alias.scope !259
  %i.k = zext <8 x i8> %wide.load to <8 x i16>    ; 2 uses
  %i.l = mul nuw nsw <8 x i16> %i.k, splat (i16 3)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %wide.load161 = load <8 x i8>, ptr %i.n, align 1, !tbaa !12, !alias.scope !259
  %i.o = zext <8 x i8> %wide.load161 to <8 x i16> ; 2 uses
  %i.p = add nuw nsw <8 x i16> %i.l, %i.o
  %i.q = shl nuw nsw i64 %index, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = mul nuw nsw <8 x i16> %i.o, splat (i16 3)
  %i.u = add nuw nsw <8 x i16> %i.t, %i.k
  %i.v = shufflevector <8 x i16> %i.p, <8 x i16> %i.u, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.w = lshr <16 x i16> %i.v, splat (i16 2)
  %interleaved.vec = trunc nuw <16 x i16> %i.w to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %i.s, align 1, !tbaa !12, !alias.scope !260, !noalias !259
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader324

.lr.ph.preheader324:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader324, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader324 ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12
  %i.aa = zext i8 %i.z to i16
  %i.ab = mul nuw nsw i16 %i.aa, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12
  %i.ae = zext i8 %i.ad to i16
  %i.af = add nuw nsw i16 %i.ab, %i.ae
  %i.ag = lshr i16 %i.af, 2
  %i.ah = trunc nuw i16 %i.ag to i8
  %i.ai = shl nuw nsw i64 %indvars.iv, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %i.ah, ptr %i.ak, align 1, !tbaa !12
  %i.al = load i8, ptr %i.y, align 1, !tbaa !12
  %i.am = zext i8 %i.al to i16
  %i.an = load i8, ptr %i.ac, align 1, !tbaa !12
  %i.ao = zext i8 %i.an to i16
  %i.ap = mul nuw nsw i16 %i.ao, 3
  %i.aq = add nuw nsw i16 %i.ap, %i.am
  %i.ar = lshr i16 %i.aq, 2
  %i.as = trunc nuw i16 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.as, ptr %i.at, align 1, !tbaa !12
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !247

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.au = sext i32 %i.b to i64                    ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !12
  %i.ax = shl nsw i32 %2, 1
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  %i.az = sext i32 %i.ay to i64                   ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az
  store i8 %i.aw, ptr %i.ba, align 1, !tbaa !12
  %i.bb = sext i32 %5 to i64                      ; 9 uses
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %i.bb ; 3 uses
  %i.bd = icmp sgt i32 %3, 1
  br i1 %i.bd, label %.lr.ph120, label %._crit_edge121

.lr.ph120:                                        ; preds = %._crit_edge
  %i.be = sext i32 %4 to i64                      ; 6 uses
  %i.bf = add nsw i32 %4, %i.b
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = add nsw i32 %5, %i.ay
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = shl i32 %5, 1                           ; 6 uses
  %i.bk = sext i32 %i.bj to i64                   ; 3 uses
  br i1 %i.c, label %.lr.ph114.us.preheader, label %.lr.ph120.split

.lr.ph114.us.preheader:                           ; preds = %.lr.ph120
  %wide.trip.count138 = zext i32 %i.b to i64      ; 6 uses
  %i.bl = getelementptr i8, ptr %1, i64 %i.bb     ; 2 uses
  %i.bm = add nsw i32 %3, -2
  %i.bn = zext i32 %i.bm to i64                   ; 3 uses
  %i.bo = mul nsw i64 %i.bk, %i.bn                ; 3 uses
  %i.bp = shl nuw nsw i64 %wide.trip.count138, 1  ; 3 uses
  %i.bq = getelementptr i8, ptr %1, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %scevgep163 = getelementptr i8, ptr %i.br, i64 %i.bb ; 5 uses
  %i.bs = shl nsw i64 %i.bb, 1                    ; 3 uses
  %i.bt = getelementptr i8, ptr %1, i64 %i.bs     ; 3 uses
  %6 = add i64 %i.bo, %i.bs
  %7 = add i64 %6, %i.bp                          ; 2 uses
  %scevgep164.a = getelementptr i8, ptr %1, i64 %7 ; 2 uses
  %scevgep165 = getelementptr i8, ptr %scevgep164.a, i64 1
  %8 = getelementptr i8, ptr %1, i64 %i.bs        ; 2 uses
  %i.bu = getelementptr i8, ptr %8, i64 1         ; 4 uses
  %scevgep165.a = getelementptr i8, ptr %1, i64 %7 ; 5 uses
  %i.bv = getelementptr i8, ptr %1, i64 %i.bb     ; 3 uses
  %i.bw = insertelement <2 x ptr> poison, ptr %0, i64 1 ; 2 uses
  %i.bx = insertelement <2 x ptr> %i.bw, ptr %i.bl, i64 0
  %i.by = getelementptr i8, <2 x ptr> %i.bx, <2 x i64> <i64 1, i64 0>
  %scevgep166 = getelementptr i8, ptr %i.bl, i64 1 ; 4 uses
  %9 = insertelement <2 x ptr> %i.bw, ptr %i.bt, i64 0
  %10 = getelementptr i8, <2 x ptr> %9, <2 x i64> <i64 2, i64 0>
  %i.bz = getelementptr i8, ptr %i.bt, i64 2
  %i.ca = insertelement <2 x ptr> poison, ptr %i.bv, i64 0
  %i.cb = insertelement <2 x ptr> %i.ca, ptr %8, i64 1
  %i.cc = getelementptr i8, <2 x ptr> %i.cb, <2 x i64> <i64 2, i64 1>
  %i.cd = insertelement <2 x ptr> poison, ptr %i.bt, i64 0
  %i.ce = insertelement <2 x ptr> %i.cd, ptr %i.bv, i64 1
  %i.cf = getelementptr i8, <2 x ptr> %i.ce, i64 2 ; 3 uses
  %scevgep168 = getelementptr i8, ptr %i.bv, i64 2 ; 2 uses
  %i.cg = getelementptr i8, ptr %1, i64 %i.bo
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.bp
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.bb  ; 3 uses
  %i.cj = insertelement <2 x ptr> poison, ptr %scevgep164.a, i64 0 ; 2 uses
  %i.ck = insertelement <2 x ptr> %i.cj, ptr %i.ci, i64 1
  %i.cl = getelementptr i8, <2 x ptr> %i.ck, i64 1 ; 2 uses
  %scevgep169 = getelementptr i8, ptr %i.ci, i64 1 ; 2 uses
  %scevgep170 = getelementptr i8, ptr %0, i64 %i.be ; 3 uses
  %i.cm = add nuw nsw i64 %i.bn, 1
  %i.cn = mul i64 %i.cm, %i.be
  %i.co = getelementptr i8, ptr %0, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 %wide.trip.count138
  %i.cq = insertelement <2 x ptr> poison, ptr %i.cp, i64 0
  %i.cr = insertelement <2 x ptr> %i.cq, ptr %i.ci, i64 1
  %i.cs = getelementptr i8, <2 x ptr> %i.cr, i64 1 ; 4 uses
  %i.ct = mul nsw i64 %i.be, %i.bn
  %i.cu = getelementptr i8, ptr %0, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 %wide.trip.count138 ; 2 uses
  %i.cw = insertelement <2 x ptr> %i.cj, ptr %i.cv, i64 1
  %i.cx = getelementptr i8, <2 x ptr> %i.cw, i64 1
  %scevgep172 = getelementptr i8, ptr %i.cv, i64 1 ; 2 uses
  %i.cy = insertelement <2 x i32> poison, i32 %4, i64 0 ; 2 uses
  %i.cz = insertelement <2 x i32> poison, i32 %i.bj, i64 0 ; 2 uses
  %i.da = insertelement <4 x ptr> poison, ptr %scevgep170, i64 0 ; 2 uses
  %i.db = insertelement <4 x ptr> %i.da, ptr %scevgep166, i64 1
  %i.dc = insertelement <4 x ptr> %i.db, ptr %i.bu, i64 2
  %i.dd = shufflevector <2 x ptr> %i.cs, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.de = shufflevector <2 x ptr> %i.cs, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.df = shufflevector <2 x ptr> %i.cx, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dg = insertelement <4 x ptr> %i.df, ptr %scevgep163, i64 0
  %i.dh = shufflevector <2 x ptr> %i.cc, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.di = shufflevector <2 x ptr> %10, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = shufflevector <2 x ptr> %i.cl, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %12 = shufflevector <4 x ptr> %i.dg, <4 x ptr> %11, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %13 = shufflevector <2 x ptr> %i.cs, <2 x ptr> %i.cl, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.dj = shufflevector <2 x ptr> %i.cf, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %14 = shufflevector <2 x ptr> %i.by, <2 x ptr> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %15 = shufflevector <4 x ptr> %i.dc, <4 x ptr> %i.dj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dk = shufflevector <4 x ptr> %i.da, <4 x ptr> %i.dj, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dl = shufflevector <2 x ptr> %i.cf, <2 x ptr> poison, <2 x i32> <i32 1, i32 poison>
  %min.iters.check255 = icmp ult i32 %2, 25
  %bound0173 = icmp ult ptr %scevgep166, %scevgep165
  %bound1174 = icmp ult ptr %i.bz, %scevgep163
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0177 = icmp ult ptr %scevgep166, %scevgep165.a
  %bound1178 = icmp ult ptr %i.bu, %scevgep163
  %found.conflict179 = and i1 %bound0177, %bound1178
  %stride.check180 = icmp slt i32 %i.bj, 0
  %bound0182 = icmp ult ptr %scevgep166, %scevgep169
  %bound1183 = icmp ult ptr %scevgep168, %scevgep163
  %found.conflict184 = and i1 %bound0182, %bound1183
  %i.dm = insertelement <4 x ptr> %i.dd, ptr %scevgep163, i64 1
  %i.dn = insertelement <4 x ptr> %i.dm, ptr %scevgep165.a, i64 2
  %i.do = shufflevector <4 x ptr> %i.dn, <4 x ptr> %11, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dp = icmp ult <4 x ptr> %14, %i.do
  %i.dq = icmp ult <4 x ptr> %15, %12
  %i.dr = or i32 %4, %i.bj
  %i.ds = icmp slt i32 %i.dr, 0
  %i.dt = and <4 x i1> %i.dq, %i.dp
  %i.du = insertelement <4 x ptr> %i.di, ptr %i.bu, i64 2
  %i.dv = insertelement <4 x ptr> %i.du, ptr %scevgep170, i64 3
  %i.dw = insertelement <4 x ptr> %13, ptr %scevgep165.a, i64 3
  %i.dx = icmp ult <4 x ptr> %i.dv, %i.dw
  %i.dy = shufflevector <4 x ptr> %i.dk, <4 x ptr> %i.dh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dz = insertelement <4 x ptr> %i.df, ptr %scevgep165.a, i64 2
  %i.ea = shufflevector <4 x ptr> %i.dz, <4 x ptr> %i.de, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.eb = icmp ult <4 x ptr> %i.dy, %i.ea
  %i.ec = or i32 %4, %i.bj
  %i.ed = and <4 x i1> %i.eb, %i.dx
  %bound0236 = icmp ult ptr %i.bu, %scevgep172
  %bound1237 = icmp ult ptr %0, %scevgep165.a
  %found.conflict238 = and i1 %bound0236, %bound1237
  %i.ee = insertelement <2 x ptr> %i.dl, ptr %scevgep170, i64 1
  %i.ef = icmp uge <2 x ptr> %i.ee, %i.cs
  %i.eg = bitcast <2 x i1> %i.ef to i2
  %i.eh = icmp eq i2 %i.eg, 0
  %bound0248 = icmp ult ptr %scevgep168, %scevgep172
  %bound1249 = icmp ult ptr %0, %scevgep169
  %found.conflict250 = and i1 %bound0248, %bound1249
  %i.ei = insertelement <8 x i32> poison, i32 %i.ec, i64 2
  %i.ej = insertelement <8 x i32> %i.ei, i32 %i.bj, i64 3
  %i.ek = shufflevector <2 x i32> %i.cy, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <2 x i32> %i.cz, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.em = or <8 x i32> %i.ek, %i.el
  %i.en = shufflevector <8 x i32> %i.ej, <8 x i32> %i.em, <8 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.eo = shufflevector <2 x i32> %i.cy, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <2 x i32> %i.cz, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eq = or <8 x i32> %i.eo, %i.ep
  %i.er = shufflevector <8 x i32> %i.eq, <8 x i32> %i.en, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.es = icmp slt <8 x i32> %i.er, zeroinitializer
  %i.et = bitcast <8 x i1> %i.es to i8
  %i.eu = icmp ne i8 %i.et, 0
  %rdx.op = or <4 x i1> %i.dt, %i.ed
  %i.ev = bitcast <4 x i1> %rdx.op to i4
  %i.ew = icmp ne i4 %i.ev, 0
  %op.rdx311 = or i1 %i.ew, %found.conflict179
  %op.rdx312 = or i1 %found.conflict175, %found.conflict184
  %op.rdx313 = or i1 %found.conflict238, %i.eh
  %op.rdx314 = or i1 %found.conflict250, %stride.check180
  %op.rdx315 = or i1 %i.ds, %i.eu
  %op.rdx316 = or i1 %op.rdx311, %op.rdx312
  %op.rdx317 = or i1 %op.rdx313, %op.rdx314
  %op.rdx318 = or i1 %op.rdx316, %op.rdx317
  %op.rdx319 = or i1 %op.rdx318, %op.rdx315
  %n.vec257 = and i64 %wide.trip.count138, 4294967288 ; 3 uses
  %cmp.n270 = icmp eq i64 %n.vec257, %wide.trip.count138
  br label %.lr.ph114.us

.lr.ph114.us:                                     ; preds = %.lr.ph114.us.preheader, %._crit_edge115.us
  %.0118.us = phi i32 [ %i.jc, %._crit_edge115.us ], [ 1, %.lr.ph114.us.preheader ]
  %.0108117.us = phi ptr [ %i.fa, %._crit_edge115.us ], [ %0, %.lr.ph114.us.preheader ] ; 10 uses
  %.0109116.us = phi ptr [ %i.jb, %._crit_edge115.us ], [ %i.bc, %.lr.ph114.us.preheader ] ; 8 uses
  %i.ex = load i8, ptr %.0108117.us, align 1, !tbaa !12
  %i.ey = zext i8 %i.ex to i16
  %i.ez = mul nuw nsw i16 %i.ey, 3
  %i.fa = getelementptr inbounds i8, ptr %.0108117.us, i64 %i.be ; 4 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !12
  %i.fc = zext i8 %i.fb to i16
  %i.fd = add nuw nsw i16 %i.ez, %i.fc
  %i.fe = lshr i16 %i.fd, 2
  %i.ff = trunc nuw i16 %i.fe to i8
  store i8 %i.ff, ptr %.0109116.us, align 1, !tbaa !12
  %i.fg = load i8, ptr %.0108117.us, align 1, !tbaa !12
  %i.fh = zext i8 %i.fg to i16
  %i.fi = load i8, ptr %i.fa, align 1, !tbaa !12
  %i.fj = zext i8 %i.fi to i16
  %i.fk = mul nuw nsw i16 %i.fj, 3
  %i.fl = add nuw nsw i16 %i.fk, %i.fh
  %i.fm = lshr i16 %i.fl, 2
  %i.fn = trunc nuw i16 %i.fm to i8
  %i.fo = getelementptr inbounds i8, ptr %.0109116.us, i64 %i.bb
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !12
  %invariant.gep = getelementptr i8, ptr %.0108117.us, i64 %i.be ; 2 uses
  %invariant.gep154 = getelementptr i8, ptr %.0109116.us, i64 %i.bb ; 2 uses
  %brmerge = select i1 %min.iters.check255, i1 true, i1 %op.rdx319
  br i1 %brmerge, label %scalar.ph254.preheader, label %vector.body258

vector.body258:                                   ; preds = %.lr.ph114.us, %vector.body258
  %index259 = phi i64 [ %index.next268, %vector.body258 ], [ 0, %.lr.ph114.us ] ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0108117.us, i64 %index259
  %wide.load260 = load <8 x i8>, ptr %i.fp, align 1, !tbaa !12, !alias.scope !261
  %i.fq = zext <8 x i8> %wide.load260 to <8 x i16> ; 2 uses
  %i.fr = mul nuw nsw <8 x i16> %i.fq, splat (i16 3)
  %i.fs = getelementptr i8, ptr %invariant.gep, i64 %index259 ; 3 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 1
  %wide.load261 = load <8 x i8>, ptr %i.ft, align 1, !tbaa !12, !alias.scope !262
  %i.fu = zext <8 x i8> %wide.load261 to <8 x i16> ; 2 uses
  %i.fv = add nuw nsw <8 x i16> %i.fr, %i.fu
  %i.fw = shl nuw nsw i64 %index259, 1            ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0109116.us, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.fz = mul nuw nsw <8 x i16> %i.fu, splat (i16 3)
  %i.ga = add nuw nsw <8 x i16> %i.fz, %i.fq
  %i.gb = getelementptr i8, ptr %invariant.gep154, i64 %i.fw
  %i.gc = getelementptr inbounds nuw i8, ptr %.0108117.us, i64 %index259
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  %wide.load262 = load <8 x i8>, ptr %i.gd, align 1, !tbaa !12, !alias.scope !261
  %i.ge = zext <8 x i8> %wide.load262 to <8 x i16>
  %wide.load263 = load <8 x i8>, ptr %i.fs, align 1, !tbaa !12, !alias.scope !262
  %i.gf = zext <8 x i8> %wide.load263 to <8 x i16>
  %i.gg = mul nuw nsw <8 x i16> %i.gf, splat (i16 3)
  %i.gh = add nuw nsw <8 x i16> %i.gg, %i.ge
  %i.gi = getelementptr i8, ptr %i.gb, i64 1
  %i.gj = shufflevector <8 x i16> %i.gh, <8 x i16> %i.ga, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gk = lshr <16 x i16> %i.gj, splat (i16 2)
  %interleaved.vec264 = trunc nuw <16 x i16> %i.gk to <16 x i8>
  store <16 x i8> %interleaved.vec264, ptr %i.gi, align 1, !tbaa !12
  %wide.load265 = load <8 x i8>, ptr %i.gd, align 1, !tbaa !12, !alias.scope !261
  %i.gl = zext <8 x i8> %wide.load265 to <8 x i16>
  %i.gm = mul nuw nsw <8 x i16> %i.gl, splat (i16 3)
  %wide.load266 = load <8 x i8>, ptr %i.fs, align 1, !tbaa !12, !alias.scope !262
  %i.gn = zext <8 x i8> %wide.load266 to <8 x i16>
  %i.go = add nuw nsw <8 x i16> %i.gm, %i.gn
  %i.gp = shufflevector <8 x i16> %i.fv, <8 x i16> %i.go, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gq = lshr <16 x i16> %i.gp, splat (i16 2)
  %interleaved.vec267 = trunc nuw <16 x i16> %i.gq to <16 x i8>
  store <16 x i8> %interleaved.vec267, ptr %i.fy, align 1, !tbaa !12
  %index.next268 = add nuw i64 %index259, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next268, %n.vec257
  br i1 %i.gr, label %middle.block269, label %vector.body258, !llvm.loop !251

middle.block269:                                  ; preds = %vector.body258
  br i1 %cmp.n270, label %._crit_edge115.us, label %scalar.ph254.preheader

scalar.ph254.preheader:                           ; preds = %.lr.ph114.us, %middle.block269
  %indvars.iv135.ph = phi i64 [ %n.vec257, %middle.block269 ], [ 0, %.lr.ph114.us ]
  br label %scalar.ph254

scalar.ph254:                                     ; preds = %scalar.ph254.preheader, %scalar.ph254
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %scalar.ph254 ], [ %indvars.iv135.ph, %scalar.ph254.preheader ] ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0108117.us, i64 %indvars.iv135 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !12
  %i.gu = zext i8 %i.gt to i16
  %i.gv = mul nuw nsw i16 %i.gu, 3
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv135 ; 3 uses
  %i.gw = getelementptr i8, ptr %gep, i64 1       ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !12
  %i.gy = zext i8 %i.gx to i16
  %i.gz = add nuw nsw i16 %i.gv, %i.gy
  %i.ha = lshr i16 %i.gz, 2
  %i.hb = trunc nuw i16 %i.ha to i8
  %i.hc = shl nuw nsw i64 %indvars.iv135, 1       ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.0109116.us, i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  store i8 %i.hb, ptr %i.he, align 1, !tbaa !12
  %i.hf = load i8, ptr %i.gs, align 1, !tbaa !12
  %i.hg = zext i8 %i.hf to i16
  %i.hh = load i8, ptr %i.gw, align 1, !tbaa !12
  %i.hi = zext i8 %i.hh to i16
  %i.hj = mul nuw nsw i16 %i.hi, 3
  %i.hk = add nuw nsw i16 %i.hj, %i.hg
  %i.hl = lshr i16 %i.hk, 2
  %i.hm = trunc nuw i16 %i.hl to i8
  %gep155 = getelementptr i8, ptr %invariant.gep154, i64 %i.hc ; 2 uses
  %i.hn = getelementptr i8, ptr %gep155, i64 2
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !12
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0108117.us, i64 %indvars.iv.next136 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !12
  %i.hq = zext i8 %i.hp to i16
  %i.hr = load i8, ptr %gep, align 1, !tbaa !12
  %i.hs = zext i8 %i.hr to i16
  %i.ht = mul nuw nsw i16 %i.hs, 3
  %i.hu = add nuw nsw i16 %i.ht, %i.hq
  %i.hv = lshr i16 %i.hu, 2
  %i.hw = trunc nuw i16 %i.hv to i8
  %i.hx = getelementptr i8, ptr %gep155, i64 1
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !12
  %i.hy = load i8, ptr %i.ho, align 1, !tbaa !12
  %i.hz = zext i8 %i.hy to i16
  %i.ia = mul nuw nsw i16 %i.hz, 3
  %i.ib = load i8, ptr %gep, align 1, !tbaa !12
  %i.ic = zext i8 %i.ib to i16
  %i.id = add nuw nsw i16 %i.ia, %i.ic
  %i.ie = lshr i16 %i.id, 2
  %i.if = trunc nuw i16 %i.ie to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !12
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %._crit_edge115.us, label %scalar.ph254, !llvm.loop !252

._crit_edge115.us:                                ; preds = %scalar.ph254, %middle.block269
  %i.ih = getelementptr inbounds i8, ptr %.0108117.us, i64 %i.au ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !12
  %i.ij = zext i8 %i.ii to i16
  %i.ik = mul nuw nsw i16 %i.ij, 3
  %i.il = getelementptr inbounds i8, ptr %.0108117.us, i64 %i.bg ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !12
  %i.in = zext i8 %i.im to i16
  %i.io = add nuw nsw i16 %i.ik, %i.in
  %i.ip = lshr i16 %i.io, 2
  %i.iq = trunc nuw i16 %i.ip to i8
  %i.ir = getelementptr inbounds i8, ptr %.0109116.us, i64 %i.az
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !12
  %i.is = load i8, ptr %i.ih, align 1, !tbaa !12
  %i.it = zext i8 %i.is to i16
  %i.iu = load i8, ptr %i.il, align 1, !tbaa !12
  %i.iv = zext i8 %i.iu to i16
  %i.iw = mul nuw nsw i16 %i.iv, 3
  %i.ix = add nuw nsw i16 %i.iw, %i.it
  %i.iy = lshr i16 %i.ix, 2
  %i.iz = trunc nuw i16 %i.iy to i8
  %i.ja = getelementptr inbounds i8, ptr %.0109116.us, i64 %i.bi
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !12
  %i.jb = getelementptr inbounds i8, ptr %.0109116.us, i64 %i.bk ; 2 uses
  %i.jc = add nuw nsw i32 %.0118.us, 1            ; 2 uses
  %exitcond140.not = icmp eq i32 %i.jc, %3
  br i1 %exitcond140.not, label %._crit_edge121, label %.lr.ph114.us, !llvm.loop !253

.lr.ph120.split:                                  ; preds = %.lr.ph120, %.lr.ph120.split
  %.0118 = phi i32 [ %i.kq, %.lr.ph120.split ], [ 1, %.lr.ph120 ]
end_hunk_0
