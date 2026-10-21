Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rgb2rgb?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@yuv422ptouyvy_c:bb.a
  %i.cr = or disjoint i32 %i.cq, %i.cn
  %i.cs = load i8, ptr %.043.i, align 1, !tbaa !12
  %i.ct = zext i8 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 16
  %i.cv = or disjoint i32 %i.cr, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.03041.i, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !12
  %i.cy = zext i8 %i.cx to i32
  %i.cz = shl nuw i32 %i.cy, 24
  %i.da = or disjoint i32 %i.cv, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %.03140.i, i64 4
  store i32 %i.da, ptr %.03140.i, align 4, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %.03041.i, i64 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.02942.i, i64 1
  %i.de = getelementptr inbounds nuw i8, ptr %.043.i, i64 1
  %i.df = load i8, ptr %i.dd, align 1, !tbaa !12
  %i.dg = zext i8 %i.df to i32
  %i.dh = load i8, ptr %i.dc, align 1, !tbaa !12
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 8
  %i.dk = or disjoint i32 %i.dj, %i.dg
  %i.dl = load i8, ptr %i.de, align 1, !tbaa !12
  %i.dm = zext i8 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 16
  %i.do = or disjoint i32 %i.dk, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %.03041.i, i64 3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !12
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl nuw i32 %i.dr, 24
  %i.dt = or disjoint i32 %i.do, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.03140.i, i64 8
  store i32 %i.dt, ptr %i.db, align 4, !tbaa !11
  %i.dv = getelementptr inbounds nuw i8, ptr %.03041.i, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.02942.i, i64 2
  %i.dx = getelementptr inbounds nuw i8, ptr %.043.i, i64 2
  %i.dy = add nuw nsw i32 %.03239.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.dy, %i.a
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !237

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.137.i = getelementptr inbounds i8, ptr %.03645.i, i64 %.137.idx.i
  %.1.i = getelementptr inbounds i8, ptr %.03546.i, i64 %.137.idx.i
  %i.dz = getelementptr inbounds i8, ptr %.03447.i, i64 %i.d
  %i.ea = getelementptr inbounds i8, ptr %.03844.i, i64 %i.e
  %i.eb = add nuw nsw i32 %.03348.i, 1            ; 2 uses
  %exitcond50.not.i = icmp eq i32 %i.eb, %5
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
  br i1 %min.iters.check, label %.lr.ph.preheader281, label %vector.memcheck

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
  br i1 %found.conflict, label %.lr.ph.preheader281, label %vector.ph

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
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader281

.lr.ph.preheader281:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader281, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader281 ] ; 3 uses
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
  %i.bj = shl i32 %5, 1                           ; 2 uses
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
  %i.bu = add i64 %i.bo, %i.bs
  %i.bv = add i64 %i.bu, %i.bp                    ; 2 uses
  %i.bw = getelementptr i8, ptr %1, i64 %i.bv     ; 2 uses
  %scevgep165 = getelementptr i8, ptr %i.bw, i64 1
  %i.bx = getelementptr i8, ptr %1, i64 %i.bs     ; 2 uses
  %scevgep166 = getelementptr i8, ptr %i.bx, i64 1 ; 4 uses
  %scevgep167 = getelementptr i8, ptr %1, i64 %i.bv ; 5 uses
  %i.by = getelementptr i8, ptr %1, i64 %i.bb     ; 3 uses
  %i.bz = insertelement <2 x ptr> poison, ptr %0, i64 1 ; 2 uses
  %i.ca = insertelement <2 x ptr> %i.bz, ptr %i.bl, i64 0
  %i.cb = getelementptr i8, <2 x ptr> %i.ca, <2 x i64> <i64 1, i64 0>
  %scevgep = getelementptr i8, ptr %i.bl, i64 1   ; 4 uses
  %i.cc = insertelement <2 x ptr> %i.bz, ptr %i.bt, i64 0
  %i.cd = getelementptr i8, <2 x ptr> %i.cc, <2 x i64> <i64 2, i64 0>
  %scevgep164 = getelementptr i8, ptr %i.bt, i64 2
  %i.ce = insertelement <2 x ptr> poison, ptr %i.by, i64 0
  %i.cf = insertelement <2 x ptr> %i.ce, ptr %i.bx, i64 1
  %i.cg = getelementptr i8, <2 x ptr> %i.cf, <2 x i64> <i64 2, i64 1>
  %i.ch = insertelement <2 x ptr> poison, ptr %i.bt, i64 0
  %i.ci = insertelement <2 x ptr> %i.ch, ptr %i.by, i64 1
  %i.cj = getelementptr i8, <2 x ptr> %i.ci, i64 2 ; 2 uses
  %scevgep168 = getelementptr i8, ptr %i.by, i64 2 ; 3 uses
  %i.ck = getelementptr i8, ptr %1, i64 %i.bo
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.bp
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.bb  ; 2 uses
  %i.cn = insertelement <2 x ptr> poison, ptr %i.bw, i64 0 ; 2 uses
  %i.co = insertelement <2 x ptr> %i.cn, ptr %i.cm, i64 1
  %i.cp = getelementptr i8, <2 x ptr> %i.co, i64 1
  %scevgep169 = getelementptr i8, ptr %i.cm, i64 1 ; 4 uses
  %scevgep170 = getelementptr i8, ptr %0, i64 %i.be ; 3 uses
  %i.cq = add nuw nsw i64 %i.bn, 1
  %i.cr = mul i64 %i.cq, %i.be
  %i.cs = getelementptr i8, ptr %0, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 %wide.trip.count138
  %scevgep171 = getelementptr i8, ptr %i.ct, i64 1 ; 3 uses
  %i.cu = mul nsw i64 %i.be, %i.bn
  %i.cv = getelementptr i8, ptr %0, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 %wide.trip.count138 ; 2 uses
  %i.cx = insertelement <2 x ptr> %i.cn, ptr %i.cw, i64 1
  %i.cy = getelementptr i8, <2 x ptr> %i.cx, i64 1
  %scevgep172 = getelementptr i8, ptr %i.cw, i64 1 ; 2 uses
  %6 = insertelement <4 x ptr> poison, ptr %scevgep170, i64 0 ; 2 uses
  %i.cz = insertelement <4 x ptr> %6, ptr %scevgep, i64 1
  %i.da = insertelement <4 x ptr> %i.cz, ptr %scevgep166, i64 2
  %i.db = insertelement <4 x ptr> poison, ptr %scevgep171, i64 0 ; 2 uses
  %7 = insertelement <4 x ptr> %i.db, ptr %scevgep163, i64 1
  %8 = insertelement <4 x ptr> %7, ptr %scevgep167, i64 2
  %i.dc = shufflevector <2 x ptr> %i.cy, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dd = insertelement <4 x ptr> %i.dc, ptr %scevgep163, i64 0
  %i.de = shufflevector <2 x ptr> %i.cg, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.df = shufflevector <2 x ptr> %i.cd, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dg = shufflevector <2 x ptr> %i.cp, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.dh = shufflevector <4 x ptr> %i.dd, <4 x ptr> %i.dg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %9 = shufflevector <4 x ptr> %8, <4 x ptr> %i.dg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %10 = shufflevector <4 x ptr> %i.db, <4 x ptr> %i.dg, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.di = shufflevector <2 x ptr> %i.cj, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dj = shufflevector <2 x ptr> %i.cb, <2 x ptr> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dk = shufflevector <4 x ptr> %i.da, <4 x ptr> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dl = shufflevector <4 x ptr> %6, <4 x ptr> %i.di, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %min.iters.check229 = icmp ult i32 %2, 17
  %bound0173 = icmp ult ptr %scevgep, %scevgep165
  %bound1174 = icmp ult ptr %scevgep164, %scevgep163
  %found.conflict175 = and i1 %bound0173, %bound1174
  %stride.check = icmp slt i32 %i.bj, 0
  %bound0176 = icmp ult ptr %scevgep, %scevgep167
  %bound1177 = icmp ult ptr %scevgep166, %scevgep163
  %found.conflict178 = and i1 %bound0176, %bound1177
  %bound0179 = icmp ult ptr %scevgep, %scevgep169
  %bound1180 = icmp ult ptr %scevgep168, %scevgep163
  %found.conflict181 = and i1 %bound0179, %bound1180
  %i.dm = icmp ult <4 x ptr> %i.dj, %9
  %i.dn = icmp ult <4 x ptr> %i.dk, %i.dh
  %stride.check186 = icmp slt i32 %4, 0
  %i.do = and <4 x i1> %i.dn, %i.dm
  %11 = insertelement <4 x ptr> %i.df, ptr %scevgep166, i64 2
  %i.dp = insertelement <4 x ptr> %11, ptr %scevgep170, i64 3
  %i.dq = insertelement <4 x ptr> %10, ptr %scevgep169, i64 2
  %i.dr = insertelement <4 x ptr> %i.dq, ptr %scevgep167, i64 3
  %i.ds = icmp ult <4 x ptr> %i.dp, %i.dr
  %i.dt = shufflevector <4 x ptr> %i.dl, <4 x ptr> %i.de, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.du = insertelement <4 x ptr> %i.dc, ptr %scevgep167, i64 2
  %12 = insertelement <4 x ptr> %i.du, ptr %scevgep171, i64 3
  %i.dv = icmp ult <4 x ptr> %i.dt, %12
  %i.dw = and <4 x i1> %i.dv, %i.ds
  %bound0216 = icmp ult ptr %scevgep166, %scevgep172
  %bound1217 = icmp ult ptr %0, %scevgep167
  %found.conflict218 = and i1 %bound0216, %bound1217
  %bound0220 = icmp ult ptr %scevgep168, %scevgep171
  %bound1221 = icmp ult ptr %scevgep170, %scevgep169
  %found.conflict222 = and i1 %bound0220, %bound1221
  %bound0224 = icmp ult ptr %scevgep168, %scevgep172
  %bound1225 = icmp ult ptr %0, %scevgep169
  %found.conflict226 = and i1 %bound0224, %bound1225
  %rdx.op = or <4 x i1> %i.do, %i.dw
  %i.dx = bitcast <4 x i1> %rdx.op to i4
  %i.dy = icmp ne i4 %i.dx, 0
  %op.rdx = or i1 %i.dy, %found.conflict175
  %op.rdx270 = or i1 %found.conflict178, %found.conflict181
  %op.rdx271 = or i1 %found.conflict218, %found.conflict222
  %op.rdx272 = or i1 %found.conflict226, %stride.check
  %op.rdx273 = or i1 %op.rdx, %op.rdx270
  %op.rdx274 = or i1 %op.rdx271, %op.rdx272
  %op.rdx275 = or i1 %op.rdx273, %op.rdx274
  %op.rdx276 = or i1 %op.rdx275, %stride.check186
  %n.vec231 = and i64 %wide.trip.count138, 4294967288 ; 3 uses
  %cmp.n244 = icmp eq i64 %n.vec231, %wide.trip.count138
  br label %.lr.ph114.us

.lr.ph114.us:                                     ; preds = %.lr.ph114.us.preheader, %._crit_edge115.us
  %.0118.us = phi i32 [ %i.ie, %._crit_edge115.us ], [ 1, %.lr.ph114.us.preheader ]
  %.0108117.us = phi ptr [ %i.ec, %._crit_edge115.us ], [ %0, %.lr.ph114.us.preheader ] ; 10 uses
  %.0109116.us = phi ptr [ %i.id, %._crit_edge115.us ], [ %i.bc, %.lr.ph114.us.preheader ] ; 8 uses
  %i.dz = load i8, ptr %.0108117.us, align 1, !tbaa !12
  %i.ea = zext i8 %i.dz to i16
  %i.eb = mul nuw nsw i16 %i.ea, 3
  %i.ec = getelementptr inbounds i8, ptr %.0108117.us, i64 %i.be ; 4 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !12
  %i.ee = zext i8 %i.ed to i16
  %i.ef = add nuw nsw i16 %i.eb, %i.ee
  %i.eg = lshr i16 %i.ef, 2
  %i.eh = trunc nuw i16 %i.eg to i8
  store i8 %i.eh, ptr %.0109116.us, align 1, !tbaa !12
  %i.ei = load i8, ptr %.0108117.us, align 1, !tbaa !12
  %i.ej = zext i8 %i.ei to i16
  %i.ek = load i8, ptr %i.ec, align 1, !tbaa !12
  %i.el = zext i8 %i.ek to i16
  %i.em = mul nuw nsw i16 %i.el, 3
  %i.en = add nuw nsw i16 %i.em, %i.ej
  %i.eo = lshr i16 %i.en, 2
  %i.ep = trunc nuw i16 %i.eo to i8
  %i.eq = getelementptr inbounds i8, ptr %.0109116.us, i64 %i.bb
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !12
  %invariant.gep = getelementptr i8, ptr %.0108117.us, i64 %i.be ; 2 uses
  %invariant.gep154 = getelementptr i8, ptr %.0109116.us, i64 %i.bb ; 2 uses
  %brmerge = select i1 %min.iters.check229, i1 true, i1 %op.rdx276
  br i1 %brmerge, label %scalar.ph228.preheader, label %vector.body232

vector.body232:                                   ; preds = %.lr.ph114.us, %vector.body232
  %index233 = phi i64 [ %index.next242, %vector.body232 ], [ 0, %.lr.ph114.us ] ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0108117.us, i64 %index233
  %wide.load234 = load <8 x i8>, ptr %i.er, align 1, !tbaa !12, !alias.scope !261
  %i.es = zext <8 x i8> %wide.load234 to <8 x i16> ; 2 uses
  %i.et = mul nuw nsw <8 x i16> %i.es, splat (i16 3)
  %i.eu = getelementptr i8, ptr %invariant.gep, i64 %index233 ; 3 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 1
  %wide.load235 = load <8 x i8>, ptr %i.ev, align 1, !tbaa !12, !alias.scope !262
  %i.ew = zext <8 x i8> %wide.load235 to <8 x i16> ; 2 uses
  %i.ex = add nuw nsw <8 x i16> %i.et, %i.ew
  %i.ey = shl nuw nsw i64 %index233, 1            ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0109116.us, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fb = mul nuw nsw <8 x i16> %i.ew, splat (i16 3)
  %i.fc = add nuw nsw <8 x i16> %i.fb, %i.es
  %i.fd = getelementptr i8, ptr %invariant.gep154, i64 %i.ey
  %i.fe = getelementptr inbounds nuw i8, ptr %.0108117.us, i64 %index233
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 2 uses
  %wide.load236 = load <8 x i8>, ptr %i.ff, align 1, !tbaa !12, !alias.scope !261
  %i.fg = zext <8 x i8> %wide.load236 to <8 x i16>
  %wide.load237 = load <8 x i8>, ptr %i.eu, align 1, !tbaa !12, !alias.scope !262
  %i.fh = zext <8 x i8> %wide.load237 to <8 x i16>
  %i.fi = mul nuw nsw <8 x i16> %i.fh, splat (i16 3)
  %i.fj = add nuw nsw <8 x i16> %i.fi, %i.fg
  %i.fk = getelementptr i8, ptr %i.fd, i64 1
  %i.fl = shufflevector <8 x i16> %i.fj, <8 x i16> %i.fc, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fm = lshr <16 x i16> %i.fl, splat (i16 2)
  %interleaved.vec238 = trunc nuw <16 x i16> %i.fm to <16 x i8>
  store <16 x i8> %interleaved.vec238, ptr %i.fk, align 1, !tbaa !12
  %wide.load239 = load <8 x i8>, ptr %i.ff, align 1, !tbaa !12, !alias.scope !261
  %i.fn = zext <8 x i8> %wide.load239 to <8 x i16>
  %i.fo = mul nuw nsw <8 x i16> %i.fn, splat (i16 3)
  %wide.load240 = load <8 x i8>, ptr %i.eu, align 1, !tbaa !12, !alias.scope !262
  %i.fp = zext <8 x i8> %wide.load240 to <8 x i16>
  %i.fq = add nuw nsw <8 x i16> %i.fo, %i.fp
  %i.fr = shufflevector <8 x i16> %i.ex, <8 x i16> %i.fq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fs = lshr <16 x i16> %i.fr, splat (i16 2)
  %interleaved.vec241 = trunc nuw <16 x i16> %i.fs to <16 x i8>
  store <16 x i8> %interleaved.vec241, ptr %i.fa, align 1, !tbaa !12
  %index.next242 = add nuw i64 %index233, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next242, %n.vec231
  br i1 %i.ft, label %middle.block243, label %vector.body232, !llvm.loop !251

middle.block243:                                  ; preds = %vector.body232
  br i1 %cmp.n244, label %._crit_edge115.us, label %scalar.ph228.preheader

scalar.ph228.preheader:                           ; preds = %.lr.ph114.us, %middle.block243
  %indvars.iv135.ph = phi i64 [ %n.vec231, %middle.block243 ], [ 0, %.lr.ph114.us ]
  br label %scalar.ph228

scalar.ph228:                                     ; preds = %scalar.ph228.preheader, %scalar.ph228
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %scalar.ph228 ], [ %indvars.iv135.ph, %scalar.ph228.preheader ] ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0108117.us, i64 %indvars.iv135 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !12
  %i.fw = zext i8 %i.fv to i16
  %i.fx = mul nuw nsw i16 %i.fw, 3
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv135 ; 3 uses
  %i.fy = getelementptr i8, ptr %gep, i64 1       ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !12
  %i.ga = zext i8 %i.fz to i16
  %i.gb = add nuw nsw i16 %i.fx, %i.ga
  %i.gc = lshr i16 %i.gb, 2
  %i.gd = trunc nuw i16 %i.gc to i8
  %i.ge = shl nuw nsw i64 %indvars.iv135, 1       ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0109116.us, i64 %i.ge ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  store i8 %i.gd, ptr %i.gg, align 1, !tbaa !12
  %i.gh = load i8, ptr %i.fu, align 1, !tbaa !12
  %i.gi = zext i8 %i.gh to i16
  %i.gj = load i8, ptr %i.fy, align 1, !tbaa !12
  %i.gk = zext i8 %i.gj to i16
  %i.gl = mul nuw nsw i16 %i.gk, 3
  %i.gm = add nuw nsw i16 %i.gl, %i.gi
  %i.gn = lshr i16 %i.gm, 2
  %i.go = trunc nuw i16 %i.gn to i8
  %gep155 = getelementptr i8, ptr %invariant.gep154, i64 %i.ge ; 2 uses
  %i.gp = getelementptr i8, ptr %gep155, i64 2
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !12
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0108117.us, i64 %indvars.iv.next136 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !12
  %i.gs = zext i8 %i.gr to i16
  %i.gt = load i8, ptr %gep, align 1, !tbaa !12
  %i.gu = zext i8 %i.gt to i16
  %i.gv = mul nuw nsw i16 %i.gu, 3
  %i.gw = add nuw nsw i16 %i.gv, %i.gs
  %i.gx = lshr i16 %i.gw, 2
  %i.gy = trunc nuw i16 %i.gx to i8
  %i.gz = getelementptr i8, ptr %gep155, i64 1
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !12
  %i.ha = load i8, ptr %i.gq, align 1, !tbaa !12
  %i.hb = zext i8 %i.ha to i16
  %i.hc = mul nuw nsw i16 %i.hb, 3
  %i.hd = load i8, ptr %gep, align 1, !tbaa !12
  %i.he = zext i8 %i.hd to i16
  %i.hf = add nuw nsw i16 %i.hc, %i.he
  %i.hg = lshr i16 %i.hf, 2
  %i.hh = trunc nuw i16 %i.hg to i8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !12
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %._crit_edge115.us, label %scalar.ph228, !llvm.loop !252

._crit_edge115.us:                                ; preds = %scalar.ph228, %middle.block243
  %i.hj = getelementptr inbounds i8, ptr %.0108117.us, i64 %i.au ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !12
  %i.hl = zext i8 %i.hk to i16
  %i.hm = mul nuw nsw i16 %i.hl, 3
  %i.hn = getelementptr inbounds i8, ptr %.0108117.us, i64 %i.bg ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !12
  %i.hp = zext i8 %i.ho to i16
  %i.hq = add nuw nsw i16 %i.hm, %i.hp
  %i.hr = lshr i16 %i.hq, 2
  %i.hs = trunc nuw i16 %i.hr to i8
  %i.ht = getelementptr inbounds i8, ptr %.0109116.us, i64 %i.az
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !12
  %i.hu = load i8, ptr %i.hj, align 1, !tbaa !12
  %i.hv = zext i8 %i.hu to i16
  %i.hw = load i8, ptr %i.hn, align 1, !tbaa !12
  %i.hx = zext i8 %i.hw to i16
  %i.hy = mul nuw nsw i16 %i.hx, 3
  %i.hz = add nuw nsw i16 %i.hy, %i.hv
  %i.ia = lshr i16 %i.hz, 2
  %i.ib = trunc nuw i16 %i.ia to i8
  %i.ic = getelementptr inbounds i8, ptr %.0109116.us, i64 %i.bi
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !12
  %i.id = getelementptr inbounds i8, ptr %.0109116.us, i64 %i.bk ; 2 uses
  %i.ie = add nuw nsw i32 %.0118.us, 1            ; 2 uses
  %exitcond140.not = icmp eq i32 %i.ie, %3
  br i1 %exitcond140.not, label %._crit_edge121, label %.lr.ph114.us, !llvm.loop !253

.lr.ph120.split:                                  ; preds = %.lr.ph120, %.lr.ph120.split
  %.0118 = phi i32 [ %i.js, %.lr.ph120.split ], [ 1, %.lr.ph120 ]
  %.0108117 = phi ptr [ %i.ii, %.lr.ph120.split ], [ %0, %.lr.ph120 ] ; 5 uses
  %.0109116 = phi ptr [ %i.jr, %.lr.ph120.split ], [ %i.bc, %.lr.ph120 ] ; 5 uses
  %i.if = load i8, ptr %.0108117, align 1, !tbaa !12
  %i.ig = zext i8 %i.if to i16
  %i.ih = mul nuw nsw i16 %i.ig, 3
  %i.ii = getelementptr inbounds i8, ptr %.0108117, i64 %i.be ; 5 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !12
  %i.ik = zext i8 %i.ij to i16
  %i.il = add nuw nsw i16 %i.ih, %i.ik
  %i.im = lshr i16 %i.il, 2
  %i.in = trunc nuw i16 %i.im to i8
  store i8 %i.in, ptr %.0109116, align 1, !tbaa !12
  %i.io = load i8, ptr %.0108117, align 1, !tbaa !12
  %i.ip = zext i8 %i.io to i16
  %i.iq = load i8, ptr %i.ii, align 1, !tbaa !12
  %i.ir = zext i8 %i.iq to i16
  %i.is = mul nuw nsw i16 %i.ir, 3
  %i.it = add nuw nsw i16 %i.is, %i.ip
  %i.iu = lshr i16 %i.it, 2
  %i.iv = trunc nuw i16 %i.iu to i8
  %i.iw = getelementptr inbounds i8, ptr %.0109116, i64 %i.bb
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !12
  %i.ix = getelementptr inbounds i8, ptr %.0108117, i64 %i.au ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !12
  %i.iz = zext i8 %i.iy to i16
  %i.ja = mul nuw nsw i16 %i.iz, 3
  %i.jb = getelementptr inbounds i8, ptr %.0108117, i64 %i.bg ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !12
end_hunk_0
