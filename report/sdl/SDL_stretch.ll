Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stretch?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@SDL_StretchSurfaceUncheckedNearest:bb.a
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gq
  %i.gt = load i8, ptr %i.gs, align 1
  store i8 %i.gt, ptr %.138.i86.prol, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.138.i86.prol, i64 1 ; 3 uses
  %prol.iter27.next = add i32 %prol.iter27, 1     ; 2 uses
  %prol.iter27.cmp.not = icmp eq i32 %prol.iter27.next, %xtraiter25
  br i1 %prol.iter27.cmp.not, label %.prol.loopexit24, label %.prol.preheader23, !llvm.loop !12

.prol.loopexit24:                                 ; preds = %.prol.preheader23, %.lr.ph.i82
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i82 ], [ %i.gu, %.prol.preheader23 ]
  %.138.i86.unr = phi ptr [ %.041.i83, %.lr.ph.i82 ], [ %i.gu, %.prol.preheader23 ]
  %.03137.i87.unr = phi i32 [ %i.f, %.lr.ph.i82 ], [ %i.gp, %.prol.preheader23 ]
  %.03236.i88.unr = phi i64 [ %i.gi, %.lr.ph.i82 ], [ %i.gr, %.prol.preheader23 ]
  br i1 %i.gl, label %._crit_edge.i90, label %.lr.ph.i82.new

.lr.ph.i82.new:                                   ; preds = %.prol.loopexit24, %.lr.ph.i82.new
  %.138.i86 = phi ptr [ %i.hp, %.lr.ph.i82.new ], [ %.138.i86.unr, %.prol.loopexit24 ] ; 5 uses
  %.03137.i87 = phi i32 [ %i.hk, %.lr.ph.i82.new ], [ %.03137.i87.unr, %.prol.loopexit24 ]
  %.03236.i88 = phi i64 [ %i.hm, %.lr.ph.i82.new ], [ %.03236.i88.unr, %.prol.loopexit24 ] ; 2 uses
  %i.gv = lshr i64 %.03236.i88, 16
  %i.gw = add i64 %.03236.i88, %i.at              ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gv
  %i.gy = load i8, ptr %i.gx, align 1
  store i8 %i.gy, ptr %.138.i86, align 1
  %i.gz = getelementptr inbounds nuw i8, ptr %.138.i86, i64 1
  %i.ha = lshr i64 %i.gw, 16
  %i.hb = add i64 %i.gw, %i.at                    ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1
  store i8 %i.hd, ptr %i.gz, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %.138.i86, i64 2
  %i.hf = lshr i64 %i.hb, 16
  %i.hg = add i64 %i.hb, %i.at                    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hf
  %i.hi = load i8, ptr %i.hh, align 1
  store i8 %i.hi, ptr %i.he, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.138.i86, i64 3
  %i.hk = add nsw i32 %.03137.i87, -4             ; 2 uses
  %i.hl = lshr i64 %i.hg, 16
  %i.hm = add i64 %i.hg, %i.at
  %i.hn = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hl
  %i.ho = load i8, ptr %i.hn, align 1
  store i8 %i.ho, ptr %i.hj, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.138.i86, i64 4 ; 2 uses
  %.not.i89.3 = icmp eq i32 %i.hk, 0
  br i1 %.not.i89.3, label %._crit_edge.i90, label %.lr.ph.i82.new, !llvm.loop !13

._crit_edge.i90:                                  ; preds = %.lr.ph.i82.new, %.prol.loopexit24
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit24 ], [ %i.hp, %.lr.ph.i82.new ]
  %i.hq = add i64 %.03340.i84, %i.ap
  %i.hr = getelementptr inbounds i8, ptr %.lcssa, i64 %i.gj
  %i.hs = add nuw nsw i32 %.03439.i85, 1          ; 2 uses
  %exitcond.not.i91 = icmp eq i32 %i.hs, %i.h
  br i1 %exitcond.not.i91, label %scale_mat_nearest_4.exit, label %.lr.ph.i82, !llvm.loop !14

scale_mat_nearest_4.exit:                         ; preds = %._crit_edge.i77, %._crit_edge.i64, %._crit_edge.i, %._crit_edge.i90, %.lr.ph43.i79, %bb.h, %.lr.ph43.i66, %bb.g, %.lr.ph47.i, %bb.f, %.lr.ph43.i, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @SDL_StretchSurfaceUncheckedLinear(i32 %.16.val, ptr nofree readonly captures(none) %.24.val, ptr nofree noundef nonnull readonly captures(none) %0, i32 %.16.val1, ptr nofree writeonly captures(none) %.24.val3, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 9 uses
  %i.i = load i32, ptr %1, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = load i32, ptr %0, align 4
  %i.m = shl i32 %i.l, 2
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr i8, ptr %.24.val, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = mul i32 %i.q, %.16.val
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4              ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call fastcc void @get_scaler_datas(i32 noundef %i.z, i32 noundef %i.v, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  call fastcc void @get_scaler_datas(i32 noundef %i.ab, i32 noundef %i.x, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h)
  %i.ac = load i64, ptr %i.e, align 8
  %i.ad = load i32, ptr %i.g, align 4             ; 9 uses
  %i.ae = load i32, ptr %i.f, align 4             ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.ad
  %i.ag = sext i32 %i.af to i64
  %i.ah = add nsw i64 %i.ac, %i.ag
  %i.ai = load i32, ptr %i.h, align 4             ; 2 uses
  %i.aj = add i32 %i.ad, %i.ai
  %i.ak = sub i32 %i.x, %i.aj                     ; 2 uses
  %i.al = icmp sgt i32 %i.v, 0
  br i1 %i.al, label %.lr.ph85.i, label %scale_mat.exit

.lr.ph85.i:                                       ; preds = %bb.a
  %i.am = shl nsw i32 %i.i, 2
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %.24.val3, i64 %i.an
  %i.ap = mul nsw i32 %i.k, %.16.val1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %i.aq
  %i.as = shl nsw i32 %i.x, 2
  %i.at = sub nsw i32 %.16.val1, %i.as
  %i.au = add nsw i32 %i.z, -1
  %i.av = sext i32 %.16.val to i64                ; 2 uses
  %.not70.i = icmp eq i32 %i.ad, 0
  %.not6573.i = icmp eq i32 %i.ak, 0
  %i.aw = sext i32 %i.ae to i64
  %i.ax = shl i32 %i.ab, 2
  %i.ay = add i32 %i.ax, -8
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = sext i32 %i.at to i64
  %i.bb = getelementptr i8, ptr %.24.val, i64 %i.s
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.bc, i64 4   ; 2 uses
  %i.bd = add i32 %i.ad, -1
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = zext i32 %i.ad to i64                   ; 2 uses
  %min.iters.check = icmp eq i32 %i.ad, 1
  %n.vec = and i64 %i.bg, 4294967294              ; 4 uses
  %i.bh = trunc nuw i64 %n.vec to i32
  %i.bi = sub i32 %i.ad, %i.bh
  %i.bj = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.bg
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph85.i
  %.083.i = phi ptr [ %i.ar, %.lr.ph85.i ], [ %i.hh, %._crit_edge.i ] ; 8 uses
  %.06282.i = phi i32 [ 0, %.lr.ph85.i ], [ %i.hi, %._crit_edge.i ] ; 3 uses
  %i.bk = load i32, ptr %i.c, align 4
  %i.bl = icmp sge i32 %.06282.i, %i.bk           ; 2 uses
  %i.bm = load i32, ptr %i.d, align 4
  %i.bn = xor i32 %i.bm, -1
  %i.bo = add i32 %i.v, %i.bn
  %i.bp = icmp sle i32 %.06282.i, %i.bo
  %i.bq = select i1 %i.bl, i1 %i.bp, i1 false
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bs = trunc i64 %i.br to i32                  ; 2 uses
  %i.bt = lshr i32 %i.bs, 9
  %i.bu = and i32 %i.bt, 127
  %i.bv = lshr i32 %i.bs, 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bw = select i1 %i.bl, i32 %i.au, i32 0
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bx = phi i64 [ %i.br, %bb.c ], [ %.pre.i, %bb.d ]
  %i.by = phi i64 [ %i.av, %bb.c ], [ 0, %bb.d ]  ; 2 uses
  %i.bz = phi i32 [ %i.bu, %bb.c ], [ 0, %bb.d ]  ; 5 uses
  %i.ca = phi i32 [ %i.bv, %bb.c ], [ %i.bw, %bb.d ]
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, %i.av                ; 3 uses
  %i.cd = getelementptr i8, ptr %i.t, i64 %i.cc   ; 9 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.by  ; 8 uses
  %i.cf = load i32, ptr %i.b, align 4
  %i.cg = sext i32 %i.cf to i64
  %i.ch = add nsw i64 %i.bx, %i.cg
  store i64 %i.ch, ptr %i.a, align 8
  %i.ci = sub nuw nsw i32 128, %i.bz              ; 4 uses
  store i64 %i.ah, ptr %i.e, align 8
  store i32 %i.ai, ptr %i.h, align 4
  br i1 %.not70.i, label %.preheader69.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.cp = getelementptr i8, ptr %.083.i, i64 %i.bf
  %i.cq = getelementptr i8, ptr %i.cp, i64 4      ; 2 uses
  %i.cr = getelementptr i8, ptr %scevgep, i64 %i.cc
  %i.cs = getelementptr i8, ptr %scevgep, i64 %i.by
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cc
  %bound0 = icmp ult ptr %.083.i, %i.cr
  %bound1 = icmp ult ptr %i.cd, %i.cq
  %found.conflict = and i1 %bound0, %bound1
  %bound010 = icmp ult ptr %.083.i, %i.ct
  %bound111 = icmp ult ptr %i.ce, %i.cq
  %found.conflict12 = and i1 %bound010, %bound111
  %conflict.rdx = or i1 %found.conflict, %found.conflict12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert13 = insertelement <2 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat14 = shufflevector <2 x i32> %broadcast.splatinsert13, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cu = getelementptr i8, ptr %.083.i, i64 %i.bj ; 2 uses
  %i.cv = load i8, ptr %i.cd, align 1, !alias.scope !25
  %broadcast.splatinsert15 = insertelement <2 x i8> poison, i8 %i.cv, i64 0
  %broadcast.splat16 = shufflevector <2 x i8> %broadcast.splatinsert15, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cw = zext <2 x i8> %broadcast.splat16 to <2 x i32>
  %i.cx = mul nuw nsw <2 x i32> %broadcast.splat14, %i.cw
  %i.cy = load i8, ptr %i.ce, align 1, !alias.scope !26
  %broadcast.splatinsert17 = insertelement <2 x i8> poison, i8 %i.cy, i64 0
  %broadcast.splat18 = shufflevector <2 x i8> %broadcast.splatinsert17, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cz = zext <2 x i8> %broadcast.splat18 to <2 x i32>
  %i.da = mul nuw nsw <2 x i32> %broadcast.splat, %i.cz
  %i.db = add nuw nsw <2 x i32> %i.da, %i.cx
  %i.dc = load i8, ptr %i.cj, align 1, !alias.scope !25
  %broadcast.splatinsert19 = insertelement <2 x i8> poison, i8 %i.dc, i64 0
  %broadcast.splat20 = shufflevector <2 x i8> %broadcast.splatinsert19, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.dd = zext <2 x i8> %broadcast.splat20 to <2 x i32>
  %i.de = mul nuw nsw <2 x i32> %broadcast.splat14, %i.dd
  %i.df = load i8, ptr %i.ck, align 1, !alias.scope !26
  %broadcast.splatinsert21 = insertelement <2 x i8> poison, i8 %i.df, i64 0
  %broadcast.splat22 = shufflevector <2 x i8> %broadcast.splatinsert21, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.dg = zext <2 x i8> %broadcast.splat22 to <2 x i32>
  %i.dh = mul nuw nsw <2 x i32> %broadcast.splat, %i.dg
  %i.di = add nuw nsw <2 x i32> %i.dh, %i.de
  %i.dj = load i8, ptr %i.cl, align 1, !alias.scope !25
  %broadcast.splatinsert23 = insertelement <2 x i8> poison, i8 %i.dj, i64 0
  %broadcast.splat24 = shufflevector <2 x i8> %broadcast.splatinsert23, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.dk = zext <2 x i8> %broadcast.splat24 to <2 x i32>
  %i.dl = mul nuw nsw <2 x i32> %broadcast.splat14, %i.dk
  %i.dm = load i8, ptr %i.cm, align 1, !alias.scope !26
  %broadcast.splatinsert25 = insertelement <2 x i8> poison, i8 %i.dm, i64 0
  %broadcast.splat26 = shufflevector <2 x i8> %broadcast.splatinsert25, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.dn = zext <2 x i8> %broadcast.splat26 to <2 x i32>
  %i.do = mul nuw nsw <2 x i32> %broadcast.splat, %i.dn
  %i.dp = add nuw nsw <2 x i32> %i.do, %i.dl
  %i.dq = load i8, ptr %i.cn, align 1, !alias.scope !25
  %broadcast.splatinsert27 = insertelement <2 x i8> poison, i8 %i.dq, i64 0
  %broadcast.splat28 = shufflevector <2 x i8> %broadcast.splatinsert27, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.dr = zext <2 x i8> %broadcast.splat28 to <2 x i32>
  %i.ds = mul nuw nsw <2 x i32> %broadcast.splat14, %i.dr
  %i.dt = load i8, ptr %i.co, align 1, !alias.scope !26
  %broadcast.splatinsert29 = insertelement <2 x i8> poison, i8 %i.dt, i64 0
  %broadcast.splat30 = shufflevector <2 x i8> %broadcast.splatinsert29, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.du = zext <2 x i8> %broadcast.splat30 to <2 x i32>
  %i.dv = mul nuw nsw <2 x i32> %broadcast.splat, %i.du
  %i.dw = add nuw nsw <2 x i32> %i.dv, %i.ds
  %i.dx = shufflevector <2 x i32> %i.db, <2 x i32> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dy = shufflevector <2 x i32> %i.dp, <2 x i32> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dz = shufflevector <4 x i32> %i.dx, <4 x i32> %i.dy, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.ea = lshr <8 x i32> %i.dz, splat (i32 7)
  %interleaved.vec = trunc nuw <8 x i32> %i.ea to <8 x i8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.083.i, i64 %i.eb
  store <8 x i8> %interleaved.vec, ptr %next.gep, align 1, !alias.scope !27, !noalias !28
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader69.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.in.i.ph = phi i32 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i ], [ %i.bi, %middle.block ]
  %.171.i.ph = phi ptr [ %.083.i, %vector.memcheck ], [ %.083.i, %.lr.ph.i ], [ %i.cu, %middle.block ]
  %i.ed = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %i.ee = shufflevector <4 x i32> %i.ed, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ef = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %i.eg = shufflevector <4 x i32> %i.ef, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

.preheader69.i:                                   ; preds = %scalar.ph, %middle.block, %bb.e
  %.1.lcssa.i = phi ptr [ %.083.i, %bb.e ], [ %i.cu, %middle.block ], [ %i.ev, %scalar.ph ] ; 2 uses
  br i1 %.not6573.i, label %.preheader.i, label %.lr.ph76.i.preheader

.lr.ph76.i.preheader:                             ; preds = %.preheader69.i
  %i.eh = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %i.ei = shufflevector <4 x i32> %i.eh, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ej = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %i.ek = shufflevector <4 x i32> %i.ej, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph76.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.in.i = phi i32 [ %i.el, %scalar.ph ], [ %.in.i.ph, %scalar.ph.preheader ]
  %.171.i = phi ptr [ %i.ev, %scalar.ph ], [ %.171.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.el = add nsw i32 %.in.i, -1                  ; 2 uses
  %i.em = load <4 x i8>, ptr %i.cd, align 1
  %i.en = zext <4 x i8> %i.em to <4 x i32>
  %i.eo = mul nuw nsw <4 x i32> %i.ee, %i.en
  %i.ep = load <4 x i8>, ptr %i.ce, align 1
  %i.eq = zext <4 x i8> %i.ep to <4 x i32>
  %i.er = mul nuw nsw <4 x i32> %i.eg, %i.eq
  %i.es = add nuw nsw <4 x i32> %i.er, %i.eo
  %i.et = lshr <4 x i32> %i.es, splat (i32 7)
  %i.eu = trunc nuw <4 x i32> %i.et to <4 x i8>
  store <4 x i8> %i.eu, ptr %.171.i, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %.171.i, i64 4 ; 2 uses
  %.not.i = icmp eq i32 %i.el, 0
  br i1 %.not.i, label %.preheader69.i, label %scalar.ph, !llvm.loop !21

.preheader.i:                                     ; preds = %.lr.ph76.i, %.preheader69.i
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %.preheader69.i ], [ %i.gu, %.lr.ph76.i ] ; 2 uses
  %i.ew = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ex = add nsw i32 %i.ew, -1
  store i32 %i.ex, ptr %i.h, align 4
  %.not6678.i = icmp eq i32 %i.ew, 0
  br i1 %.not6678.i, label %._crit_edge.i, label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %.preheader.i
  %i.ey = getelementptr inbounds i8, ptr %i.cd, i64 %i.az
  %i.ez = getelementptr inbounds i8, ptr %i.ce, i64 %i.az
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fc = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %i.fd = shufflevector <4 x i32> %i.fc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fe = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %i.ff = shufflevector <4 x i32> %i.fe, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.f

.lr.ph76.i:                                       ; preds = %.lr.ph76.i.preheader, %.lr.ph76.i
  %.275.i = phi ptr [ %i.gu, %.lr.ph76.i ], [ %.1.lcssa.i, %.lr.ph76.i.preheader ] ; 2 uses
  %.06374.i = phi i32 [ %i.fg, %.lr.ph76.i ], [ %i.ak, %.lr.ph76.i.preheader ]
  %i.fg = add nsw i32 %.06374.i, -1               ; 2 uses
  %i.fh = load i64, ptr %i.e, align 8             ; 3 uses
  %i.fi = lshr i64 %i.fh, 14
  %i.fj = and i64 %i.fi, 262140                   ; 2 uses
  %i.fk = trunc i64 %i.fh to i32
  %i.fl = lshr i32 %i.fk, 9
  %i.fm = and i32 %i.fl, 127                      ; 2 uses
  %i.fn = add nsw i64 %i.fh, %i.aw
  store i64 %i.fn, ptr %i.e, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fj ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.fj ; 2 uses
  %i.fq = sub nuw nsw i32 128, %i.fm
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.ft = load <4 x i8>, ptr %i.fo, align 1
  %i.fu = zext <4 x i8> %i.ft to <4 x i32>
  %i.fv = mul nuw nsw <4 x i32> %i.ei, %i.fu
  %i.fw = load <4 x i8>, ptr %i.fp, align 1
  %i.fx = zext <4 x i8> %i.fw to <4 x i32>
  %i.fy = mul nuw nsw <4 x i32> %i.ek, %i.fx
  %i.fz = add nuw nsw <4 x i32> %i.fy, %i.fv
  %i.ga = lshr <4 x i32> %i.fz, splat (i32 7)
  %i.gb = load <4 x i8>, ptr %i.fr, align 1
  %i.gc = zext <4 x i8> %i.gb to <4 x i32>
  %i.gd = mul nuw nsw <4 x i32> %i.ei, %i.gc
  %i.ge = load <4 x i8>, ptr %i.fs, align 1
  %i.gf = zext <4 x i8> %i.ge to <4 x i32>
  %i.gg = mul nuw nsw <4 x i32> %i.ek, %i.gf
  %i.gh = add nuw nsw <4 x i32> %i.gg, %i.gd
  %i.gi = lshr <4 x i32> %i.gh, splat (i32 7)
  %i.gj = and <4 x i32> %i.ga, splat (i32 255)
  %i.gk = insertelement <4 x i32> poison, i32 %i.fq, i64 0
  %i.gl = shufflevector <4 x i32> %i.gk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gm = mul nuw nsw <4 x i32> %i.gj, %i.gl
  %i.gn = and <4 x i32> %i.gi, splat (i32 255)
  %i.go = insertelement <4 x i32> poison, i32 %i.fm, i64 0
  %i.gp = shufflevector <4 x i32> %i.go, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gq = mul nuw nsw <4 x i32> %i.gn, %i.gp
  %i.gr = add nuw nsw <4 x i32> %i.gq, %i.gm
  %i.gs = lshr <4 x i32> %i.gr, splat (i32 7)
  %i.gt = trunc nuw <4 x i32> %i.gs to <4 x i8>
  store <4 x i8> %i.gt, ptr %.275.i, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.275.i, i64 4 ; 2 uses
  %.not65.i = icmp eq i32 %i.fg, 0
  br i1 %.not65.i, label %.preheader.i, label %.lr.ph76.i, !llvm.loop !22

bb.f:                                             ; preds = %bb.f, %.lr.ph80.i
  %.379.i = phi ptr [ %.2.lcssa.i, %.lr.ph80.i ], [ %i.he, %bb.f ] ; 2 uses
  %i.gv = load <4 x i8>, ptr %i.fa, align 1
  %i.gw = zext <4 x i8> %i.gv to <4 x i32>
  %i.gx = mul nuw nsw <4 x i32> %i.ff, %i.gw
  %i.gy = load <4 x i8>, ptr %i.fb, align 1
  %i.gz = zext <4 x i8> %i.gy to <4 x i32>
  %i.ha = mul nuw nsw <4 x i32> %i.fd, %i.gz
  %i.hb = add nuw nsw <4 x i32> %i.ha, %i.gx
  %i.hc = lshr <4 x i32> %i.hb, splat (i32 7)
  %i.hd = trunc nuw <4 x i32> %i.hc to <4 x i8>
  store <4 x i8> %i.hd, ptr %.379.i, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %.379.i, i64 4 ; 2 uses
  %i.hf = load i32, ptr %i.h, align 4             ; 2 uses
  %i.hg = add nsw i32 %i.hf, -1
  store i32 %i.hg, ptr %i.h, align 4
  %.not66.i = icmp eq i32 %i.hf, 0
  br i1 %.not66.i, label %._crit_edge.i, label %bb.f, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader.i ], [ %i.he, %bb.f ]
  %i.hh = getelementptr inbounds i8, ptr %.3.lcssa.i, i64 %i.ba
  %i.hi = add nuw nsw i32 %.06282.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hi, %i.v
  br i1 %exitcond.not.i, label %scale_mat.exit, label %bb.b, !llvm.loop !24

scale_mat.exit:                                   ; preds = %._crit_edge.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @get_scaler_datas(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %4, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %5) unnamed_addr #4 {
bb.a:
  %i.a = shl i32 %0, 16
  %i.b = udiv i32 %i.a, %1                        ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = shl nsw i64 %i.c, 31
  %sext = add nsw i64 %i.d, -140735340871680
  %i.e = ashr i64 %sext, 32                       ; 3 uses
  store i64 %i.e, ptr %2, align 8
  store i32 %i.b, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = add nsw i32 %0, -2                       ; 3 uses
  %xtraiter = and i32 %1, 1
  %i.h = icmp eq i32 %1, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %1, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %.02425 = phi i64 [ %i.e, %.lr.ph.new ], [ %i.v, %bb.f ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.i = icmp slt i64 %.02425, 0
  br i1 %i.i, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %.02425 to i32
  %i.k = lshr i32 %i.j, 16
  %i.l = icmp sgt i32 %i.k, %i.g
  br i1 %i.l, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %4, %bb.b ], [ %5, %bb.c ]   ; 2 uses
  %i.m = load i32, ptr %.sink, align 4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %.sink, align 4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %i.o = add nsw i64 %.02425, %i.c                ; 3 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %.sink.split.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = trunc i64 %i.o to i32
  %i.r = lshr i32 %i.q, 16
  %i.s = icmp sgt i32 %i.r, %i.g
  br i1 %i.s, label %.sink.split.1, label %bb.f

.sink.split.1:                                    ; preds = %bb.e, %bb.d
  %.sink.1 = phi ptr [ %4, %bb.d ], [ %5, %bb.e ] ; 2 uses
  %i.t = load i32, ptr %.sink.1, align 4
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %.sink.1, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.1, %bb.e
  %i.v = add nsw i64 %i.o, %i.c                   ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !31

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.02425.epil.init = phi i64 [ %i.e, %.lr.ph ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.w = icmp slt i64 %.02425.epil.init, 0
  br i1 %i.w, label %.sink.split.epil, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.x = trunc i64 %.02425.epil.init to i32
  %i.y = lshr i32 %i.x, 16
  %i.z = icmp sgt i32 %i.y, %i.g
  br i1 %i.z, label %.sink.split.epil, label %._crit_edge

.sink.split.epil:                                 ; preds = %bb.g, %.epil.preheader
  %.sink.epil = phi ptr [ %4, %.epil.preheader ], [ %5, %bb.g ] ; 2 uses
  %i.aa = load i32, ptr %.sink.epil, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %.sink.epil, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.sink.split.epil, %bb.g, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !15}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !15}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !15}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, !3}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, i1 false, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !3, !29, !30}
!21 = distinct !{!21, !3, !29}
!22 = distinct !{!22, !3}
!23 = distinct !{!23, !3}
!24 = distinct !{!24, !3}
!25 = !{!17}
!26 = !{!18}
!27 = !{!19}
!28 = !{!17, !18}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !3}
end_hunk_0
