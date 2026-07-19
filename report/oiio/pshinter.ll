inline.NumInlined: 100
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@psh_glyph_interpolate_strong_points:bb.a
  %i.al = add nsw i64 %i.ak, %i.aj
  %i.am = shl i64 %i.al, 16
  %i.an = ashr i64 %i.am, 32
  %i.ao = add nsw i64 %i.ag, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.03751, i64 64
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !124
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !162 ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %.not45 = icmp slt i64 %i.ad, %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !160 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !161 ; 2 uses
  br i1 %.not45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = trunc i64 %i.ad to i32
  %i.ay = sub i32 %i.ax, %i.ar
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.j, %i.az                 ; 2 uses
  %i.bb = ashr i64 %i.ba, 63
  %i.bc = add nsw i64 %i.ba, 32768
  %i.bd = add nsw i64 %i.bc, %i.bb
  %i.be = shl i64 %i.bd, 16
  %i.bf = ashr i64 %i.be, 32
  %i.bg = add i64 %i.au, %i.bf
  %i.bh = add i64 %i.bg, %i.aw
  %i.bi = getelementptr inbounds nuw i8, ptr %.03751, i64 64
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !124
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bj = tail call i64 @FT_MulDiv(i64 noundef %i.ad, i64 noundef %i.aw, i64 noundef %i.as) #12
  %i.bk = add nsw i64 %i.bj, %i.au
  %i.bl = getelementptr inbounds nuw i8, ptr %.03751, i64 64
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !124
  %.pre = load i32, ptr %i.m, align 4, !tbaa !58
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.j, %bb.k, %bb.h, %bb.d
  %i.bm = phi i32 [ %i.n, %bb.f ], [ %i.n, %bb.j ], [ %.pre, %bb.k ], [ %i.n, %bb.h ], [ %i.n, %bb.d ]
  %i.bn = or i32 %i.bm, 32
  store i32 %i.bn, ptr %i.m, align 4, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  %i.bo = add i32 %.052, -1                       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.03751, i64 72
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !163

._crit_edge:                                      ; preds = %bb.m, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @psh_glyph_interpolate_normal_points(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x ptr], align 16              ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw [408 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 400
  %i.h = load i64, ptr %i.g, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 14 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx = mul nuw nsw i64 %i.n, 72                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 3 uses
  %.not151 = icmp eq i32 %i.m, 0
  br i1 %.not151, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.p = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.q = add i64 %.idx, %i.p
  %i.r = add i64 %i.p, 72
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.r)
  %i.t = sub i64 %i.s, %i.p                       ; 2 uses
  %i.u = icmp ne i64 %i.t, 72
  %i.v = zext i1 %i.u to i64                      ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = add i64 %i.w, -72
  %i.y = udiv i64 %i.x, 72
  %i.z = add nuw nsw i64 %i.y, %i.v               ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.z, 7
  br i1 %min.iters.check, label %.lr.ph.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.aa, 1152921504606846968     ; 3 uses
  %i.ab = mul i64 %n.vec, 72
  %i.ac = getelementptr i8, ptr %i.l, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bn, %vector.body ]
  %vec.phi177 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %i.ad = mul i64 %index, 72                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.ad
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.l, i64 %i.ad
  %i.ah = getelementptr i8, ptr %i.l, i64 %i.ad
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ad
  %i.aj = getelementptr i8, ptr %i.l, i64 %i.ad
  %i.ak = getelementptr i8, ptr %i.l, i64 %i.ad
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.am = getelementptr i8, ptr %i.ae, i64 100
  %i.an = getelementptr i8, ptr %i.af, i64 172
  %i.ao = getelementptr i8, ptr %i.ag, i64 244
  %i.ap = getelementptr i8, ptr %i.ah, i64 316
  %i.aq = getelementptr i8, ptr %i.ai, i64 388
  %i.ar = getelementptr i8, ptr %i.aj, i64 460
  %i.as = getelementptr i8, ptr %i.ak, i64 532
  %i.at = load i32, ptr %i.al, align 4, !tbaa !58
  %i.au = load i32, ptr %i.am, align 4, !tbaa !58
  %i.av = load i32, ptr %i.an, align 4, !tbaa !58
  %i.aw = load i32, ptr %i.ao, align 4, !tbaa !58
  %i.ax = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 1
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 2
  %i.ba = insertelement <4 x i32> %i.az, i32 %i.aw, i64 3
  %i.bb = load i32, ptr %i.ap, align 4, !tbaa !58
  %i.bc = load i32, ptr %i.aq, align 4, !tbaa !58
  %i.bd = load i32, ptr %i.ar, align 4, !tbaa !58
  %i.be = load i32, ptr %i.as, align 4, !tbaa !58
  %i.bf = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 1
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.bd, i64 2
  %i.bi = insertelement <4 x i32> %i.bh, i32 %i.be, i64 3
  %i.bj = lshr <4 x i32> %i.ba, splat (i32 4)
  %i.bk = lshr <4 x i32> %i.bi, splat (i32 4)
  %i.bl = and <4 x i32> %i.bj, splat (i32 1)
  %i.bm = and <4 x i32> %i.bk, splat (i32 1)
  %i.bn = add <4 x i32> %i.bl, %vec.phi           ; 2 uses
  %i.bo = add <4 x i32> %i.bm, %vec.phi177        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bo, %i.bn
  %i.bq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader187

.lr.ph.preheader187:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0102128.ph = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.0104127.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader187, %.lr.ph
  %.0102128 = phi ptr [ %i.bv, %.lr.ph ], [ %.0102128.ph, %.lr.ph.preheader187 ] ; 2 uses
  %.0104127 = phi i32 [ %spec.select, %.lr.ph ], [ %.0104127.ph, %.lr.ph.preheader187 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0102128, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !58
  %i.bt = lshr i32 %i.bs, 4
  %i.bu = and i32 %i.bt, 1
  %spec.select = add i32 %i.bu, %.0104127         ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0102128, i64 72 ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.o
  br i1 %i.bw, label %.lr.ph, label %._crit_edge, !llvm.loop !165

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.bq, %middle.block ], [ %spec.select, %.lr.ph ] ; 3 uses
  %i.bx = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.bx, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.by = icmp ult i32 %spec.select.lcssa, 17
  br i1 %i.by, label %.lr.ph139.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bz = zext i32 %spec.select.lcssa to i64
  %i.ca = call ptr @ft_mem_qrealloc(ptr noundef %i.j, i64 noundef 8, i64 noundef 0, i64 noundef %i.bz, ptr noundef null, ptr noundef nonnull %i.b) #12
  %i.cb = load i32, ptr %i.b, align 4, !tbaa !3
  %.not = icmp eq i32 %i.cb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not, label %.lr.ph139.preheader, label %._crit_edge.thread

.lr.ph139.preheader:                              ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.ca, %bb.c ], [ %i.a, %bb.b ] ; 10 uses
  br label %.lr.ph139

.lr.ph149:                                        ; preds = %bb.g
  %.not156 = icmp eq i32 %.3, 0
  %sext122 = shl i64 %i.h, 32
  %i.cc = ashr exact i64 %sext122, 32             ; 2 uses
  %i.cd = zext i32 %.3 to i64
  %i.ce = add i32 %.3, -1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.cf
  br label %bb.h

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %bb.g
  %.1103137 = phi ptr [ %i.cu, %bb.g ], [ %i.l, %.lr.ph139.preheader ] ; 4 uses
  %.2106136 = phi i32 [ %.3, %bb.g ], [ 0, %.lr.ph139.preheader ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1103137, i64 28
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !58
  %i.cj = and i32 %i.ci, 16
  %.not119 = icmp eq i32 %i.cj, 0
  br i1 %.not119, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph139
  %i.ck = zext i32 %.2106136 to i64
  %.idx153 = shl nuw nsw i64 %i.ck, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx153 ; 2 uses
  %.not154 = icmp eq i32 %.2106136, 0
  br i1 %.not154, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %bb.d
  %i.cm = getelementptr inbounds nuw i8, ptr %.1103137, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !63
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph131, %bb.f
  %.0100129 = phi ptr [ %i.cl, %.lr.ph131 ], [ %i.co, %bb.f ] ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %.0100129, i64 -8 ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !166 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !63
  %.not120 = icmp sgt i64 %i.cr, %i.cn
  br i1 %.not120, label %bb.f, label %._crit_edge132

bb.f:                                             ; preds = %bb.e
  store ptr %i.cp, ptr %.0100129, align 8, !tbaa !166
  %i.cs = icmp ugt ptr %i.co, %.0
  br i1 %i.cs, label %bb.e, label %._crit_edge132, !llvm.loop !167

._crit_edge132:                                   ; preds = %bb.f, %bb.e, %bb.d
  %.0100.lcssa = phi ptr [ %i.cl, %bb.d ], [ %.0100129, %bb.e ], [ %i.co, %bb.f ]
  store ptr %.1103137, ptr %.0100.lcssa, align 8, !tbaa !166
  %i.ct = add i32 %.2106136, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph139, %._crit_edge132
  %.3 = phi i32 [ %i.ct, %._crit_edge132 ], [ %.2106136, %.lr.ph139 ] ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1103137, i64 72 ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %i.o
  br i1 %i.cv, label %.lr.ph139, label %.lr.ph149, !llvm.loop !168

bb.h:                                             ; preds = %.lr.ph149, %bb.z
  %.2148 = phi ptr [ %i.l, %.lr.ph149 ], [ %i.gp, %bb.z ] ; 13 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2148, i64 28 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !58 ; 6 uses
  %i.cy = and i32 %i.cx, 16
  %.not113 = icmp eq i32 %i.cy, 0
  br i1 %.not113, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.cz = getelementptr inbounds nuw i8, ptr %.2148, i64 24 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !49 ; 3 uses
  %i.db = and i32 %i.da, 2
  %.not114 = icmp eq i32 %i.db, 0
  br i1 %.not114, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.2148, i64 32
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !55 ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %.2148, i64 36
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !56
  %.not115 = icmp eq i32 %i.dd, %i.dg
  br i1 %.not115, label %bb.l, label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.dh = and i32 %i.cx, 64
  %i.di = and i32 %i.da, 4
  %i.dj = or disjoint i32 %i.di, %i.dh
  %or.cond = icmp eq i32 %i.dj, 0
  br i1 %or.cond, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dk = and i32 %i.da, -3
  store i32 %i.dk, ptr %i.cz, align 8, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  br i1 %.not156, label %._crit_edge144.thread, label %.lr.ph143

.lr.ph143:                                        ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %.2148, i64 48
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !63
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph143, %bb.p
  %.099141 = phi i32 [ 0, %.lr.ph143 ], [ %3, %bb.p ] ; 4 uses
  %2 = zext i32 %.099141 to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %2
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !166
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !63
  %i.dr = icmp sgt i64 %i.dq, %i.dm
  br i1 %i.dr, label %._crit_edge144, label %bb.p

bb.p:                                             ; preds = %bb.o
  %3 = add nuw i32 %.099141, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %3, %.3
  br i1 %exitcond.not, label %._crit_edge144.thread168, label %bb.o, !llvm.loop !169

._crit_edge144:                                   ; preds = %bb.o
  %i.ds = icmp eq i32 %.099141, 0
  br i1 %i.ds, label %._crit_edge144.thread, label %._crit_edge144.thread168

._crit_edge144.thread:                            ; preds = %bb.n, %._crit_edge144
  %i.dt = load ptr, ptr %.0, align 8, !tbaa !166  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !124
  %i.dw = getelementptr inbounds nuw i8, ptr %.2148, i64 48
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !63
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !63
  %i.ea = sub nsw i64 %i.dx, %i.dz
  %sext124 = shl i64 %i.ea, 32
  %i.eb = ashr exact i64 %sext124, 32
  %i.ec = mul nsw i64 %i.eb, %i.cc                ; 2 uses
  %i.ed = ashr i64 %i.ec, 63
  %i.ee = add nsw i64 %i.ec, 32768
  %i.ef = add nsw i64 %i.ee, %i.ed
  %i.eg = shl i64 %i.ef, 16
  %i.eh = ashr i64 %i.eg, 32
  %i.ei = add nsw i64 %i.eh, %i.dv
  %i.ej = getelementptr inbounds nuw i8, ptr %.2148, i64 64
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !124
  br label %bb.y

._crit_edge144.thread168:                         ; preds = %bb.p, %._crit_edge144
  %.099.lcssa170 = phi i32 [ %.099141, %._crit_edge144 ], [ %.3, %bb.p ]
  %i.ek = add i32 %.099.lcssa170, -1
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !166 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.2148, i64 48 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !63
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %.not118 = icmp eq i64 %i.eq, 0
  br i1 %.not118, label %.split.loop.exit172, label %bb.r, !llvm.loop !170

bb.r:                                             ; preds = %._crit_edge144.thread168, %bb.q
  %indvars.iv176 = phi i64 [ %i.cd, %._crit_edge144.thread168 ], [ %i.eq, %bb.q ] ; 2 uses
  %i.eq = add nsw i64 %indvars.iv176, -1          ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !166
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !63
  %i.ev = icmp slt i64 %i.eu, %i.ep
  br i1 %i.ev, label %.split.loop.exit, label %bb.q, !llvm.loop !170

.split.loop.exit:                                 ; preds = %bb.r
  %i.ew = trunc nuw i64 %indvars.iv176 to i32
  br label %.split.loop.exit172

.split.loop.exit172:                              ; preds = %bb.q, %.split.loop.exit
  %.1.lcssa = phi i32 [ %i.ew, %.split.loop.exit ], [ 0, %bb.q ] ; 2 uses
  %i.ex = icmp eq i32 %.1.lcssa, %.3
  %i.ey = load i64, ptr %i.eo, align 8, !tbaa !63 ; 4 uses
  br i1 %i.ex, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.split.loop.exit172
  %i.ez = load ptr, ptr %i.cg, align 8, !tbaa !166 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !124
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !63
  %i.fe = sub nsw i64 %i.ey, %i.fd
  %sext = shl i64 %i.fe, 32
  %i.ff = ashr exact i64 %sext, 32
  %i.fg = mul nsw i64 %i.ff, %i.cc                ; 2 uses
  %i.fh = ashr i64 %i.fg, 63
  %i.fi = add nsw i64 %i.fg, 32768
  %i.fj = add nsw i64 %i.fi, %i.fh
  %i.fk = shl i64 %i.fj, 16
  %i.fl = ashr i64 %i.fk, 32
  %i.fm = add nsw i64 %i.fl, %i.fb
  %i.fn = getelementptr inbounds nuw i8, ptr %.2148, i64 64
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !124
  br label %bb.y

bb.t:                                             ; preds = %.split.loop.exit172
  %i.fo = zext i32 %.1.lcssa to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !166 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !63 ; 3 uses
  %i.ft = icmp eq i64 %i.ey, %i.fs
  br i1 %i.ft, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fu = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !124
  %i.fw = getelementptr inbounds nuw i8, ptr %.2148, i64 64
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !124
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !63 ; 2 uses
  %i.fz = icmp eq i64 %i.ey, %i.fy
  br i1 %i.fz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !124
  %i.gc = getelementptr inbounds nuw i8, ptr %.2148, i64 64
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !124
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.gd = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !124 ; 2 uses
  %i.gf = sub nsw i64 %i.ey, %i.fs
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !124
  %i.gi = sub nsw i64 %i.gh, %i.ge
  %i.gj = sub nsw i64 %i.fy, %i.fs
  %i.gk = call i64 @FT_MulDiv(i64 noundef %i.gf, i64 noundef %i.gi, i64 noundef %i.gj) #12
  %i.gl = add nsw i64 %i.gk, %i.ge
  %i.gm = getelementptr inbounds nuw i8, ptr %.2148, i64 64
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !124
  %.pre = load i32, ptr %i.cw, align 4, !tbaa !58
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x, %bb.w, %bb.s, %._crit_edge144.thread
  %i.gn = phi i32 [ %i.cx, %bb.u ], [ %.pre, %bb.x ], [ %i.cx, %bb.w ], [ %i.cx, %bb.s ], [ %i.cx, %._crit_edge144.thread ]
  %i.go = or i32 %i.gn, 32
  store i32 %i.go, ptr %i.cw, align 4, !tbaa !58
  br label %bb.z

bb.z:                                             ; preds = %bb.l, %bb.j, %bb.k, %bb.h, %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %.2148, i64 72 ; 2 uses
  %i.gq = icmp ult ptr %i.gp, %i.o
  br i1 %i.gq, label %bb.h, label %._crit_edge150, !llvm.loop !171

._crit_edge150:                                   ; preds = %bb.z
  %.not112 = icmp eq ptr %.0, %i.a
  br i1 %.not112, label %._crit_edge.thread, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge150
  call void @ft_mem_free(ptr noundef %i.j, ptr noundef %.0) #12
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge150, %bb.aa, %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @psh_glyph_interpolate_other_points(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not150 = icmp eq i32 %i.b, 0
  br i1 %.not150, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = zext nneg i32 %1 to i64
  %i.i = getelementptr inbounds nuw [408 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 400
  %i.k = load i64, ptr %i.j, align 8, !tbaa !141
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 392
  %i.m = load i64, ptr %i.l, align 8, !tbaa !72
  %sext122 = shl i64 %i.m, 32
  %i.n = ashr exact i64 %sext122, 32              ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph155, %.loopexit
  %.086153 = phi i64 [ %i.k, %.lr.ph155 ], [ %.2, %.loopexit ] ; 4 uses
  %.087152 = phi ptr [ %i.d, %.lr.ph155 ], [ %i.dg, %.loopexit ] ; 3 uses
  %.0101151 = phi i32 [ %i.b, %.lr.ph155 ], [ %i.df, %.loopexit ]
  %i.o = load ptr, ptr %.087152, align 8, !tbaa !33 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.087152, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !35   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx = mul nuw nsw i64 %i.r, 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 2 uses
  %.not157 = icmp eq i32 %i.q, 0
  br i1 %.not157, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.092145 = phi i32 [ %.193, %.lr.ph ], [ 0, %bb.b ]
  %.094144 = phi ptr [ %i.y, %.lr.ph ], [ %i.o, %bb.b ] ; 3 uses
  %.098143 = phi ptr [ %.2100, %.lr.ph ], [ null, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.094144, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  %i.v = and i32 %i.u, 32                         ; 2 uses
  %.not120 = icmp eq i32 %i.v, 0
  %.not121 = icmp ne ptr %.098143, null
  %i.w = select i1 %.not120, i1 true, i1 %.not121
  %.2100 = select i1 %i.w, ptr %.098143, ptr %.094144 ; 7 uses
  %i.x = lshr exact i32 %i.v, 5
  %.193 = add i32 %i.x, %.092145                  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.094144, i64 72 ; 2 uses
  %i.z = icmp ult ptr %i.y, %i.s
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !172

._crit_edge:                                      ; preds = %.lr.ph
  %i.aa = icmp ult i32 %.193, 2
  br i1 %i.aa, label %bb.c, label %.preheader137

bb.c:                                             ; preds = %._crit_edge
  %i.ab = icmp eq i32 %.193, 1
  br i1 %i.ab, label %bb.d, label %.lr.ph149.preheader

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.2100, i64 64
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !124
  %i.ae = getelementptr inbounds nuw i8, ptr %.2100, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !63
  %sext130 = shl i64 %i.af, 32
  %i.ag = ashr exact i64 %sext130, 32
  %i.ah = mul nsw i64 %i.ag, %i.n                 ; 2 uses
  %i.ai = ashr i64 %i.ah, 63
  %i.aj = add nsw i64 %i.ah, 32768
  %i.ak = add nsw i64 %i.aj, %i.ai
  %i.al = shl i64 %i.ak, 16
  %i.am = ashr i64 %i.al, 32
  %i.an = sub nsw i64 %i.ad, %i.am
  br label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %bb.d, %bb.c
  %.1.ph = phi i64 [ %.086153, %bb.c ], [ %i.an, %bb.d ] ; 2 uses
  br label %.lr.ph149
end_hunk_0
