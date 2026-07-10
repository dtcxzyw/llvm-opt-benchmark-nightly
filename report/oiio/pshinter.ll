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
  %i.p = ptrtoint ptr %i.l to i64                 ; 4 uses
  %i.q = add i64 %.idx, %i.p
  %i.r = add i64 %i.p, 72
  %umax = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.r)
  %i.s = add i64 %umax, -72                       ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.p
  %umin = zext i1 %i.t to i64                     ; 2 uses
  %i.u = add i64 %i.p, %umin
  %i.v = sub i64 %i.s, %i.u
  %i.w = udiv i64 %i.v, 72
  %i.x = add nuw nsw i64 %i.w, %umin              ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.x, 7
  br i1 %min.iters.check, label %.lr.ph.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.y, 1152921504606846968      ; 3 uses
  %i.z = mul i64 %n.vec, 72
  %i.aa = getelementptr i8, ptr %i.l, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi177 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bm, %vector.body ]
  %i.ab = mul i64 %index, 72                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ac = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ag = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ah = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.ak = getelementptr i8, ptr %i.ac, i64 100
  %i.al = getelementptr i8, ptr %i.ad, i64 172
  %i.am = getelementptr i8, ptr %i.ae, i64 244
  %i.an = getelementptr i8, ptr %i.af, i64 316
  %i.ao = getelementptr i8, ptr %i.ag, i64 388
  %i.ap = getelementptr i8, ptr %i.ah, i64 460
  %i.aq = getelementptr i8, ptr %i.ai, i64 532
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !58
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !58
  %i.at = load i32, ptr %i.al, align 4, !tbaa !58
  %i.au = load i32, ptr %i.am, align 4, !tbaa !58
  %i.av = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 1
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 2
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 3
  %i.az = load i32, ptr %i.an, align 4, !tbaa !58
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !58
  %i.bb = load i32, ptr %i.ap, align 4, !tbaa !58
  %i.bc = load i32, ptr %i.aq, align 4, !tbaa !58
  %i.bd = insertelement <4 x i32> poison, i32 %i.az, i64 0
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.ba, i64 1
  %i.bf = insertelement <4 x i32> %i.be, i32 %i.bb, i64 2
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 3
  %i.bh = lshr <4 x i32> %i.ay, splat (i32 4)
  %i.bi = lshr <4 x i32> %i.bg, splat (i32 4)
  %i.bj = and <4 x i32> %i.bh, splat (i32 1)
  %i.bk = and <4 x i32> %i.bi, splat (i32 1)
  %i.bl = add <4 x i32> %i.bj, %vec.phi           ; 2 uses
  %i.bm = add <4 x i32> %i.bk, %vec.phi177        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bm, %i.bl
  %i.bo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader187

.lr.ph.preheader187:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0102128.ph = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  %.0104127.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader187, %.lr.ph
  %.0102128 = phi ptr [ %i.bt, %.lr.ph ], [ %.0102128.ph, %.lr.ph.preheader187 ] ; 2 uses
  %.0104127 = phi i32 [ %spec.select, %.lr.ph ], [ %.0104127.ph, %.lr.ph.preheader187 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0102128, i64 28
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !58
  %i.br = lshr i32 %i.bq, 4
  %i.bs = and i32 %i.br, 1
  %spec.select = add i32 %i.bs, %.0104127         ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0102128, i64 72 ; 2 uses
  %i.bu = icmp ult ptr %i.bt, %i.o
  br i1 %i.bu, label %.lr.ph, label %._crit_edge, !llvm.loop !165

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.bo, %middle.block ], [ %spec.select, %.lr.ph ] ; 3 uses
  %i.bv = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.bv, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bw = icmp ult i32 %spec.select.lcssa, 17
  br i1 %i.bw, label %.lr.ph139.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bx = zext i32 %spec.select.lcssa to i64
  %i.by = call ptr @ft_mem_qrealloc(ptr noundef %i.j, i64 noundef 8, i64 noundef 0, i64 noundef %i.bx, ptr noundef null, ptr noundef nonnull %i.b) #12
  %i.bz = load i32, ptr %i.b, align 4, !tbaa !3
  %.not = icmp eq i32 %i.bz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not, label %.lr.ph139.preheader, label %._crit_edge.thread

.lr.ph139.preheader:                              ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.by, %bb.c ], [ %i.a, %bb.b ] ; 10 uses
  br label %.lr.ph139

.lr.ph149:                                        ; preds = %bb.g
  %.not156 = icmp eq i32 %.3, 0
  %sext122 = shl i64 %i.h, 32
  %i.ca = ashr exact i64 %sext122, 32             ; 2 uses
  %i.cb = zext i32 %.3 to i64
  %i.cc = add i32 %.3, -1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.cd
  br label %bb.h

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %bb.g
  %.1103137 = phi ptr [ %i.cs, %bb.g ], [ %i.l, %.lr.ph139.preheader ] ; 4 uses
  %.2106136 = phi i32 [ %.3, %bb.g ], [ 0, %.lr.ph139.preheader ] ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1103137, i64 28
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !58
  %i.ch = and i32 %i.cg, 16
  %.not119 = icmp eq i32 %i.ch, 0
  br i1 %.not119, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph139
  %i.ci = zext i32 %.2106136 to i64
  %.idx153 = shl nuw nsw i64 %i.ci, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx153 ; 2 uses
  %.not154 = icmp eq i32 %.2106136, 0
  br i1 %.not154, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %.1103137, i64 48
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !63
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph131, %bb.f
  %.0100129 = phi ptr [ %i.cj, %.lr.ph131 ], [ %i.cm, %bb.f ] ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %.0100129, i64 -8 ; 4 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !166 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !63
  %.not120 = icmp sgt i64 %i.cp, %i.cl
  br i1 %.not120, label %bb.f, label %._crit_edge132

bb.f:                                             ; preds = %bb.e
  store ptr %i.cn, ptr %.0100129, align 8, !tbaa !166
  %i.cq = icmp ugt ptr %i.cm, %.0
  br i1 %i.cq, label %bb.e, label %._crit_edge132, !llvm.loop !167

._crit_edge132:                                   ; preds = %bb.f, %bb.e, %bb.d
  %.0100.lcssa = phi ptr [ %i.cj, %bb.d ], [ %.0100129, %bb.e ], [ %i.cm, %bb.f ]
  store ptr %.1103137, ptr %.0100.lcssa, align 8, !tbaa !166
  %i.cr = add i32 %.2106136, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph139, %._crit_edge132
  %.3 = phi i32 [ %i.cr, %._crit_edge132 ], [ %.2106136, %.lr.ph139 ] ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.1103137, i64 72 ; 2 uses
  %i.ct = icmp ult ptr %i.cs, %i.o
  br i1 %i.ct, label %.lr.ph139, label %.lr.ph149, !llvm.loop !168

bb.h:                                             ; preds = %.lr.ph149, %bb.z
  %.2148 = phi ptr [ %i.l, %.lr.ph149 ], [ %i.gn, %bb.z ] ; 13 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.2148, i64 28 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !58 ; 6 uses
  %i.cw = and i32 %i.cv, 16
  %.not113 = icmp eq i32 %i.cw, 0
  br i1 %.not113, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %.2148, i64 24 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !49 ; 3 uses
  %i.cz = and i32 %i.cy, 2
  %.not114 = icmp eq i32 %i.cz, 0
  br i1 %.not114, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %.2148, i64 32
  %i.db = load i32, ptr %i.da, align 8, !tbaa !55 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %.2148, i64 36
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !56
  %.not115 = icmp eq i32 %i.db, %i.de
  br i1 %.not115, label %bb.l, label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.df = and i32 %i.cv, 64
  %i.dg = and i32 %i.cy, 4
  %i.dh = or disjoint i32 %i.dg, %i.df
  %or.cond = icmp eq i32 %i.dh, 0
  br i1 %or.cond, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.di = and i32 %i.cy, -3
  store i32 %i.di, ptr %i.cx, align 8, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  br i1 %.not156, label %._crit_edge144.thread, label %.lr.ph143

.lr.ph143:                                        ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %.2148, i64 48
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !63
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph143, %bb.p
  %.099141 = phi i32 [ 0, %.lr.ph143 ], [ %3, %bb.p ] ; 4 uses
  %2 = zext i32 %.099141 to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %2
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !166
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !63
  %i.dp = icmp sgt i64 %i.do, %i.dk
  br i1 %i.dp, label %._crit_edge144, label %bb.p

bb.p:                                             ; preds = %bb.o
  %3 = add nuw i32 %.099141, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %3, %.3
  br i1 %exitcond.not, label %._crit_edge144.thread168, label %bb.o, !llvm.loop !169

._crit_edge144:                                   ; preds = %bb.o
  %i.dq = icmp eq i32 %.099141, 0
  br i1 %i.dq, label %._crit_edge144.thread, label %._crit_edge144.thread168

._crit_edge144.thread:                            ; preds = %bb.n, %._crit_edge144
  %i.dr = load ptr, ptr %.0, align 8, !tbaa !166  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !124
  %i.du = getelementptr inbounds nuw i8, ptr %.2148, i64 48
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !63
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !63
  %i.dy = sub nsw i64 %i.dv, %i.dx
  %sext124 = shl i64 %i.dy, 32
  %i.dz = ashr exact i64 %sext124, 32
  %i.ea = mul nsw i64 %i.dz, %i.ca                ; 2 uses
  %i.eb = ashr i64 %i.ea, 63
  %i.ec = add nsw i64 %i.ea, 32768
  %i.ed = add nsw i64 %i.ec, %i.eb
  %i.ee = shl i64 %i.ed, 16
  %i.ef = ashr i64 %i.ee, 32
  %i.eg = add nsw i64 %i.ef, %i.dt
  %i.eh = getelementptr inbounds nuw i8, ptr %.2148, i64 64
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !124
  br label %bb.y

._crit_edge144.thread168:                         ; preds = %bb.p, %._crit_edge144
  %.099.lcssa170 = phi i32 [ %.099141, %._crit_edge144 ], [ %.3, %bb.p ]
  %i.ei = add i32 %.099.lcssa170, -1
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !166 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.2148, i64 48 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !63
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %.not118 = icmp eq i64 %i.eo, 0
  br i1 %.not118, label %.split.loop.exit172, label %bb.r, !llvm.loop !170

bb.r:                                             ; preds = %._crit_edge144.thread168, %bb.q
  %indvars.iv176 = phi i64 [ %i.cb, %._crit_edge144.thread168 ], [ %i.eo, %bb.q ] ; 2 uses
  %i.eo = add nsw i64 %indvars.iv176, -1          ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !166
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.es = load i64, ptr %i.er, align 8, !tbaa !63
  %i.et = icmp slt i64 %i.es, %i.en
  br i1 %i.et, label %.split.loop.exit, label %bb.q, !llvm.loop !170

.split.loop.exit:                                 ; preds = %bb.r
  %i.eu = trunc nuw i64 %indvars.iv176 to i32
  br label %.split.loop.exit172

.split.loop.exit172:                              ; preds = %bb.q, %.split.loop.exit
  %.1.lcssa = phi i32 [ %i.eu, %.split.loop.exit ], [ 0, %bb.q ] ; 2 uses
  %i.ev = icmp eq i32 %.1.lcssa, %.3
  %i.ew = load i64, ptr %i.em, align 8, !tbaa !63 ; 4 uses
  br i1 %i.ev, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.split.loop.exit172
  %i.ex = load ptr, ptr %i.ce, align 8, !tbaa !166 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !124
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !63
  %i.fc = sub nsw i64 %i.ew, %i.fb
  %sext = shl i64 %i.fc, 32
  %i.fd = ashr exact i64 %sext, 32
  %i.fe = mul nsw i64 %i.fd, %i.ca                ; 2 uses
  %i.ff = ashr i64 %i.fe, 63
  %i.fg = add nsw i64 %i.fe, 32768
  %i.fh = add nsw i64 %i.fg, %i.ff
  %i.fi = shl i64 %i.fh, 16
  %i.fj = ashr i64 %i.fi, 32
  %i.fk = add nsw i64 %i.fj, %i.ez
  %i.fl = getelementptr inbounds nuw i8, ptr %.2148, i64 64
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !124
  br label %bb.y

bb.t:                                             ; preds = %.split.loop.exit172
  %i.fm = zext i32 %.1.lcssa to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !166 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !63 ; 3 uses
  %i.fr = icmp eq i64 %i.ew, %i.fq
  br i1 %i.fr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fs = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !124
  %i.fu = getelementptr inbounds nuw i8, ptr %.2148, i64 64
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !124
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !63 ; 2 uses
  %i.fx = icmp eq i64 %i.ew, %i.fw
  br i1 %i.fx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !124
  %i.ga = getelementptr inbounds nuw i8, ptr %.2148, i64 64
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !124
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !124 ; 2 uses
  %i.gd = sub nsw i64 %i.ew, %i.fq
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !124
  %i.gg = sub nsw i64 %i.gf, %i.gc
  %i.gh = sub nsw i64 %i.fw, %i.fq
  %i.gi = call i64 @FT_MulDiv(i64 noundef %i.gd, i64 noundef %i.gg, i64 noundef %i.gh) #12
  %i.gj = add nsw i64 %i.gi, %i.gc
  %i.gk = getelementptr inbounds nuw i8, ptr %.2148, i64 64
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !124
  %.pre = load i32, ptr %i.cu, align 4, !tbaa !58
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x, %bb.w, %bb.s, %._crit_edge144.thread
  %i.gl = phi i32 [ %i.cv, %bb.u ], [ %.pre, %bb.x ], [ %i.cv, %bb.w ], [ %i.cv, %bb.s ], [ %i.cv, %._crit_edge144.thread ]
  %i.gm = or i32 %i.gl, 32
  store i32 %i.gm, ptr %i.cu, align 4, !tbaa !58
  br label %bb.z

bb.z:                                             ; preds = %bb.l, %bb.j, %bb.k, %bb.h, %bb.y
  %i.gn = getelementptr inbounds nuw i8, ptr %.2148, i64 72 ; 2 uses
  %i.go = icmp ult ptr %i.gn, %i.o
  br i1 %i.go, label %bb.h, label %._crit_edge150, !llvm.loop !171

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
