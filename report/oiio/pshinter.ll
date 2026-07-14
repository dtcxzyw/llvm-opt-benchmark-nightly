inline.NumInlined: 100
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@psh_globals_set_scale:bb.a
bb.o:                                             ; preds = %bb.p, %.lr.ph112.1.i
  %.077110.1.i = phi i32 [ %i.jb, %.lr.ph112.1.i ], [ %i.mf, %bb.p ]
  %.079109.1.i = phi ptr [ %i.ls, %.lr.ph112.1.i ], [ %i.mg, %bb.p ] ; 4 uses
  %i.lv = load i32, ptr %.079109.1.i, align 8, !tbaa !76
  %i.lw = sub nsw i32 %i.lu, %i.lv
  %spec.select.1.i = tail call i32 @llvm.abs.i32(i32 %i.lw, i1 false)
  %i.lx = sext i32 %spec.select.1.i to i64
  %i.ly = mul nsw i64 %i.co, %i.lx                ; 2 uses
  %i.lz = ashr i64 %i.ly, 63
  %i.ma = add nsw i64 %i.ly, 32768
  %i.mb = add nsw i64 %i.ma, %i.lz
  %i.mc = lshr i64 %i.mb, 16
  %i.md = trunc i64 %i.mc to i32
  %i.me = icmp slt i32 %i.md, 64
  br i1 %i.me, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.mf = add i32 %.077110.1.i, -1                ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.079109.1.i, i64 48
  %.not90.1.i = icmp eq i32 %i.mf, 0
  br i1 %.not90.1.i, label %..loopexit_crit_edge.1.i, label %bb.o, !llvm.loop !158

bb.q:                                             ; preds = %bb.o
  %i.mh = getelementptr inbounds nuw i8, ptr %.079109.1.i, i64 32
  %i.mi = getelementptr inbounds nuw i8, ptr %.080114.1.i, i64 32
  %i.mj = load <2 x i64>, ptr %i.mh, align 8, !tbaa !60
  store <2 x i64> %i.mj, ptr %i.mi, align 8, !tbaa !60
  %i.mk = getelementptr inbounds nuw i8, ptr %.079109.1.i, i64 16
  %i.ml = getelementptr inbounds nuw i8, ptr %.080114.1.i, i64 16
  %i.mm = load <2 x i64>, ptr %i.mk, align 8, !tbaa !60
  store <2 x i64> %i.mm, ptr %i.ml, align 8, !tbaa !60
  br label %..loopexit_crit_edge.1.i

..loopexit_crit_edge.1.i:                         ; preds = %bb.p, %bb.q
  %i.mn = add i32 %.078115.1.i, -1                ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.080114.1.i, i64 48
  %.not.1.i = icmp eq i32 %i.mn, 0
  br i1 %.not.1.i, label %psh_blues_scale_zones.exit, label %.lr.ph112.1.i, !llvm.loop !159

psh_blues_scale_zones.exit:                       ; preds = %..loopexit_crit_edge.1.i, %.lr.ph117.1.i, %._crit_edge118.i, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @psh_glyph_interpolate_strong_points(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not50 = icmp eq i32 %i.a, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [408 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.i = load i64, ptr %i.h, align 8, !tbaa !72
  %sext = shl i64 %i.i, 32
  %i.j = ashr exact i64 %sext, 32                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.052 = phi i32 [ %i.a, %.lr.ph ], [ %i.bo, %bb.m ]
  %.03751 = phi ptr [ %i.c, %.lr.ph ], [ %i.bp, %bb.m ] ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03751, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59   ; 9 uses
  %.not42 = icmp eq ptr %i.l, null
  br i1 %.not42, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.03751, i64 28 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !58   ; 6 uses
  %i.o = and i32 %i.n, 512
  %.not43 = icmp eq i32 %i.o, 0
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !160
  %i.r = getelementptr inbounds nuw i8, ptr %.03751, i64 64
  store i64 %i.q, ptr %i.r, align 8, !tbaa !124
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.s = and i32 %i.n, 1024
  %.not44 = icmp eq i32 %i.s, 0
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !160
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !161
  %i.x = add nsw i64 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %.03751, i64 64
  store i64 %i.x, ptr %i.y, align 8, !tbaa !124
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.03751, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !63
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !118
  %i.ac = sext i32 %i.ab to i64
  %i.ad = sub nsw i64 %i.aa, %i.ac                ; 5 uses
  %i.ae = icmp slt i64 %i.ad, 1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !160
  %sext47 = shl i64 %i.ad, 32
  %i.ah = ashr exact i64 %sext47, 32
  %i.ai = mul nsw i64 %i.ah, %i.j                 ; 2 uses
  %i.aj = ashr i64 %i.ai, 63
  %i.ak = add nsw i64 %i.ai, 32768
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
  %2 = add i64 %umax, -72                         ; 2 uses
  %i.s = icmp ne i64 %2, %i.p
  %umin = zext i1 %i.s to i64                     ; 2 uses
  %3 = add i64 %i.p, %umin
  %4 = sub i64 %2, %3
  %i.t = udiv i64 %4, 72
  %i.u = add nuw nsw i64 %i.t, %umin              ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.u, 7
  br i1 %min.iters.check, label %.lr.ph.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.v, 1152921504606846968      ; 3 uses
  %i.w = mul i64 %n.vec, 72
  %i.x = getelementptr i8, ptr %i.l, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi177 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.y = mul i64 %index, 72                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.y
  %i.z = getelementptr i8, ptr %i.l, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.l, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.y
  %i.ac = getelementptr i8, ptr %i.l, i64 %i.y
  %i.ad = getelementptr i8, ptr %i.l, i64 %i.y
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.y
  %i.af = getelementptr i8, ptr %i.l, i64 %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.ah = getelementptr i8, ptr %i.z, i64 100
  %i.ai = getelementptr i8, ptr %i.aa, i64 172
  %i.aj = getelementptr i8, ptr %i.ab, i64 244
  %i.ak = getelementptr i8, ptr %i.ac, i64 316
  %i.al = getelementptr i8, ptr %i.ad, i64 388
  %i.am = getelementptr i8, ptr %i.ae, i64 460
  %i.an = getelementptr i8, ptr %i.af, i64 532
  %i.ao = load i32, ptr %i.ag, align 4, !tbaa !58
  %i.ap = load i32, ptr %i.ah, align 4, !tbaa !58
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !58
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !58
  %i.as = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 1
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 2
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 3
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !58
  %i.ax = load i32, ptr %i.al, align 4, !tbaa !58
  %i.ay = load i32, ptr %i.am, align 4, !tbaa !58
  %i.az = load i32, ptr %i.an, align 4, !tbaa !58
  %i.ba = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %i.bb = insertelement <4 x i32> %i.ba, i32 %i.ax, i64 1
  %i.bc = insertelement <4 x i32> %i.bb, i32 %i.ay, i64 2
  %i.bd = insertelement <4 x i32> %i.bc, i32 %i.az, i64 3
  %i.be = lshr <4 x i32> %i.av, splat (i32 4)
  %i.bf = lshr <4 x i32> %i.bd, splat (i32 4)
  %i.bg = and <4 x i32> %i.be, splat (i32 1)
  %i.bh = and <4 x i32> %i.bf, splat (i32 1)
  %i.bi = add <4 x i32> %i.bg, %vec.phi           ; 2 uses
  %i.bj = add <4 x i32> %i.bh, %vec.phi177        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bj, %i.bi
  %i.bl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader187

.lr.ph.preheader187:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0102128.ph = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.x, %middle.block ]
  %.0104127.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader187, %.lr.ph
  %.0102128 = phi ptr [ %i.bq, %.lr.ph ], [ %.0102128.ph, %.lr.ph.preheader187 ] ; 2 uses
  %.0104127 = phi i32 [ %spec.select, %.lr.ph ], [ %.0104127.ph, %.lr.ph.preheader187 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0102128, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !58
  %i.bo = lshr i32 %i.bn, 4
  %i.bp = and i32 %i.bo, 1
  %spec.select = add i32 %i.bp, %.0104127         ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0102128, i64 72 ; 2 uses
  %i.br = icmp ult ptr %i.bq, %i.o
  br i1 %i.br, label %.lr.ph, label %._crit_edge, !llvm.loop !165

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.bl, %middle.block ], [ %spec.select, %.lr.ph ] ; 3 uses
  %i.bs = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.bs, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bt = icmp ult i32 %spec.select.lcssa, 17
  br i1 %i.bt, label %.lr.ph139.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bu = zext i32 %spec.select.lcssa to i64
  %i.bv = call ptr @ft_mem_qrealloc(ptr noundef %i.j, i64 noundef 8, i64 noundef 0, i64 noundef %i.bu, ptr noundef null, ptr noundef nonnull %i.b) #12
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !3
  %.not = icmp eq i32 %i.bw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not, label %.lr.ph139.preheader, label %._crit_edge.thread

.lr.ph139.preheader:                              ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.bv, %bb.c ], [ %i.a, %bb.b ] ; 10 uses
  br label %.lr.ph139

.lr.ph149:                                        ; preds = %bb.g
  %.not156 = icmp eq i32 %.3, 0
  %sext122 = shl i64 %i.h, 32
  %i.bx = ashr exact i64 %sext122, 32             ; 2 uses
  %i.by = zext i32 %.3 to i64
  %i.bz = add i32 %.3, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.ca
  br label %bb.h

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %bb.g
  %.1103137 = phi ptr [ %i.cp, %bb.g ], [ %i.l, %.lr.ph139.preheader ] ; 4 uses
  %.2106136 = phi i32 [ %.3, %bb.g ], [ 0, %.lr.ph139.preheader ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1103137, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !58
  %i.ce = and i32 %i.cd, 16
  %.not119 = icmp eq i32 %i.ce, 0
  br i1 %.not119, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph139
  %i.cf = zext i32 %.2106136 to i64
  %.idx153 = shl nuw nsw i64 %i.cf, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx153 ; 2 uses
  %.not154 = icmp eq i32 %.2106136, 0
  br i1 %.not154, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %.1103137, i64 48
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !63
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph131, %bb.f
  %.0100129 = phi ptr [ %i.cg, %.lr.ph131 ], [ %i.cj, %bb.f ] ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %.0100129, i64 -8 ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !166 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !63
  %.not120 = icmp sgt i64 %i.cm, %i.ci
  br i1 %.not120, label %bb.f, label %._crit_edge132

bb.f:                                             ; preds = %bb.e
  store ptr %i.ck, ptr %.0100129, align 8, !tbaa !166
  %i.cn = icmp ugt ptr %i.cj, %.0
  br i1 %i.cn, label %bb.e, label %._crit_edge132, !llvm.loop !167

._crit_edge132:                                   ; preds = %bb.f, %bb.e, %bb.d
  %.0100.lcssa = phi ptr [ %i.cg, %bb.d ], [ %.0100129, %bb.e ], [ %i.cj, %bb.f ]
  store ptr %.1103137, ptr %.0100.lcssa, align 8, !tbaa !166
  %i.co = add i32 %.2106136, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph139, %._crit_edge132
  %.3 = phi i32 [ %i.co, %._crit_edge132 ], [ %.2106136, %.lr.ph139 ] ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1103137, i64 72 ; 2 uses
  %i.cq = icmp ult ptr %i.cp, %i.o
  br i1 %i.cq, label %.lr.ph139, label %.lr.ph149, !llvm.loop !168

bb.h:                                             ; preds = %.lr.ph149, %bb.z
  %.2148 = phi ptr [ %i.l, %.lr.ph149 ], [ %i.gm, %bb.z ] ; 13 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.2148, i64 28 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !58 ; 6 uses
  %i.ct = and i32 %i.cs, 16
  %.not113 = icmp eq i32 %i.ct, 0
  br i1 %.not113, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.cu = getelementptr inbounds nuw i8, ptr %.2148, i64 24 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !49 ; 3 uses
  %i.cw = and i32 %i.cv, 2
  %.not114 = icmp eq i32 %i.cw, 0
  br i1 %.not114, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.2148, i64 32
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !55 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %.2148, i64 36
  %i.db = load i32, ptr %i.da, align 4, !tbaa !56
  %.not115 = icmp eq i32 %i.cy, %i.db
  br i1 %.not115, label %bb.l, label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.dc = and i32 %i.cs, 64
  %i.dd = and i32 %i.cv, 4
  %i.de = or disjoint i32 %i.dd, %i.dc
  %or.cond = icmp eq i32 %i.de, 0
  br i1 %or.cond, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.df = and i32 %i.cv, -3
  store i32 %i.df, ptr %i.cu, align 8, !tbaa !49
  br label %bb.n

end_hunk_0
