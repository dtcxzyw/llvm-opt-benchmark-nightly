inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = load i32, ptr %i.k, align 8
  %i.ft = add nsw i32 %i.fs, %i.fr
  store i32 %i.ft, ptr %i.k, align 8
  %i.fu = icmp eq i32 %i.fl, 0
  br i1 %i.fu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.fv = sext i32 %i.fl to i64
  %i.fw = getelementptr inbounds i8, ptr %i.h, i64 %i.fv
  %.pre.i.i.i = load i8, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i: ; preds = %bb.at, %bb.as
  %i.fx = phi i8 [ 0, %bb.as ], [ %.pre.i.i.i, %bb.at ]
  %.sink.i.i.i.i = phi ptr [ %i.l, %bb.as ], [ %i.fw, %bb.at ] ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.i

_ZL10stbi__get8P13stbi__context.exit.i.i:         ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i, %bb.ap
  %i.fy = phi ptr [ %.pre7.i.i, %bb.ap ], [ %.sink.i.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ] ; 2 uses
  %i.fz = phi ptr [ %i.ff, %bb.ap ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ] ; 3 uses
  %.0.i.i.i = phi i8 [ %i.fg, %bb.ap ], [ %i.fx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ]
  %.not.i.i = icmp eq i8 %.0.i.i.i, -119
  br i1 %.not.i.i, label %bb.b, label %bb.bm

bb.au:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.7.i
  %i.ga = load <2 x ptr>, ptr %i.j, align 8
  store <2 x ptr> %i.ga, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %0, ptr %6, align 8
  %or.cond.i.i = icmp ugt i32 %4, 4
  br i1 %or.cond.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gb = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.gb, align 8
  br label %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.aw:                                            ; preds = %bb.au
  %i.gc = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %6, i32 noundef 0, i32 noundef %4)
  %.not.i.i11 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i11, label %._crit_edge.i, label %bb.ax

._crit_edge.i:                                    ; preds = %bb.aw
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.bl

bb.ax:                                            ; preds = %bb.aw
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ge = load i32, ptr %i.gd, align 8            ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 9                   ; 2 uses
  br i1 %i.gf, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gg = icmp eq i32 %i.ge, 16
  br i1 %i.gg, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gh = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.gh, align 8
  br label %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %storemerge.i.i = phi i32 [ 8, %bb.ax ], [ 16, %bb.ay ]
  store i32 %storemerge.i.i, ptr %5, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8            ; 24 uses
  store ptr null, ptr %i.gi, align 8
  %.not48.i.i = icmp eq i32 %4, 0
  %.pre118.i.i = load ptr, ptr %6, align 8        ; 6 uses
  br i1 %.not48.i.i, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gk = getelementptr inbounds nuw i8, ptr %.pre118.i.i, i64 12 ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 4            ; 11 uses
  %.not49.i.i = icmp eq i32 %4, %i.gl
  br i1 %.not49.i.i, label %bb.bj, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gm = load i32, ptr %.pre118.i.i, align 8     ; 50 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre118.i.i, i64 4
  %i.go = load i32, ptr %i.gn, align 4            ; 9 uses
  br i1 %i.gf, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %or.cond.not.i.i.i.i.i.i = icmp sgt i32 %i.gm, -1
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.be, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i

bb.be:                                            ; preds = %bb.bd
  %i.gp = icmp eq i32 %i.gm, 0                    ; 13 uses
  br i1 %i.gp, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i:      ; preds = %bb.be
  %i.gq = udiv i32 2147483647, %i.gm
  %.not23.i.i.i.i.i = icmp samesign ugt i32 %4, %i.gq
  br i1 %.not23.i.i.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i, %bb.be
  %i.gr = mul nuw nsw i32 %i.gm, %4               ; 3 uses
  %i.gs = or i32 %i.go, %i.gr
  %or.cond.not.i10.i.i.i.i.i = icmp sgt i32 %i.gs, -1
  br i1 %or.cond.not.i10.i.i.i.i.i, label %bb.bf, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i

bb.bf:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i
  %i.gt = icmp eq i32 %i.go, 0
  br i1 %i.gt, label %_ZL17stbi__malloc_mad3iiii.exit.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i:    ; preds = %bb.bf
  %i.gu = udiv i32 2147483647, %i.go
  %.not.i.i.i.i.i = icmp samesign ugt i32 %i.gr, %i.gu
  br i1 %.not.i.i.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.i.i.i

_ZL17stbi__malloc_mad3iiii.exit.i.i.i:            ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i, %bb.bf
  %i.gv = mul nsw i32 %i.gr, %i.go
  %i.gw = sext i32 %i.gv to i64
  %i.gx = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.gw) #50 ; 15 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %.preheader197.i.i.i

.preheader197.i.i.i:                              ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i.i.i
  %i.gz = icmp sgt i32 %i.go, 0
  br i1 %i.gz, label %.lr.ph258.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.i.i

.lr.ph258.i.i.i:                                  ; preds = %.preheader197.i.i.i
  %i.ha = shl nsw i32 %i.gl, 3
  %i.hb = or disjoint i32 %i.ha, %4               ; 2 uses
  %.11170198.i.i.i = add nsw i32 %i.gm, -1        ; 30 uses
  switch i32 %i.hb, label %_ZL20stbi__convert_formatPhiijj.exit.thread.sink.split.i.i [
    i32 10, label %.lr.ph258.split.i.i.i
    i32 11, label %.lr.ph258.split.i.i.i
    i32 12, label %.lr.ph258.split.i.i.i
    i32 17, label %.lr.ph258.split.i.i.i
    i32 19, label %.lr.ph258.split.i.i.i
    i32 20, label %.lr.ph258.split.i.i.i
    i32 28, label %.lr.ph258.split.i.i.i
    i32 25, label %.lr.ph258.split.i.i.i
    i32 26, label %.lr.ph258.split.i.i.i
    i32 33, label %.lr.ph258.split.i.i.i
    i32 34, label %.lr.ph258.split.i.i.i
    i32 35, label %.lr.ph258.split.i.i.i
  ]

.lr.ph258.split.i.i.i:                            ; preds = %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.go to i64
  %i.hc = add nsw i32 %i.gm, -2                   ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hc, i32 -1) ; 2 uses
  %i.hd = sub i32 %i.hc, %smin                    ; 14 uses
  %i.he = zext i32 %i.hd to i64                   ; 8 uses
  %i.hf = add nuw nsw i64 %i.he, 1                ; 25 uses
  %i.hg = mul i32 %i.gm, %4
  %scevgep87 = getelementptr i8, ptr %i.gx, i64 %i.hf
  %i.hh = mul i32 %i.gl, %i.gm
  %i.hi = shl nuw nsw i64 %i.he, 1
  %i.hj = getelementptr i8, ptr %i.gj, i64 %i.hi
  %scevgep90 = getelementptr i8, ptr %i.hj, i64 1
  %i.hk = mul i32 %i.gm, %4
  %scevgep152 = getelementptr i8, ptr %i.gx, i64 %i.hf
  %i.hl = mul i32 %i.gl, %i.gm
  %i.hm = mul nuw nsw i64 %i.he, 3
  %i.hn = getelementptr i8, ptr %i.gj, i64 %i.hm
  %scevgep155 = getelementptr i8, ptr %i.hn, i64 3
  %i.ho = mul i32 %i.gm, %4
  %i.hp = shl nuw nsw i64 %i.he, 1
  %i.hq = getelementptr i8, ptr %i.gx, i64 %i.hp
  %scevgep219 = getelementptr i8, ptr %i.hq, i64 2
  %i.hr = mul i32 %i.gl, %i.gm
  %i.hs = mul nuw nsw i64 %i.he, 3
  %i.ht = getelementptr i8, ptr %i.gj, i64 %i.hs
  %scevgep222 = getelementptr i8, ptr %i.ht, i64 3
  %i.hu = mul i32 %i.gm, %4
  %scevgep252 = getelementptr i8, ptr %i.gx, i64 %i.hf
  %i.hv = mul i32 %i.gl, %i.gm
  %i.hw = shl nuw nsw i64 %i.he, 2
  %i.hx = getelementptr i8, ptr %i.gj, i64 %i.hw
  %scevgep255 = getelementptr i8, ptr %i.hx, i64 3
  %i.hy = mul i32 %i.gm, %4
  %i.hz = shl nuw nsw i64 %i.he, 1
  %i.ia = getelementptr i8, ptr %i.gx, i64 %i.hz
  %scevgep313 = getelementptr i8, ptr %i.ia, i64 2
  %i.ib = mul i32 %i.gl, %i.gm
  %i.ic = shl nuw nsw i64 %i.he, 2
  %i.id = getelementptr i8, ptr %i.gj, i64 %i.ic
  %scevgep316.a = getelementptr i8, ptr %i.id, i64 4
  %i.ie = xor i32 %smin, -1
  %i.if = add nuw i32 %i.gm, %i.ie                ; 6 uses
  %min.iters.check322 = icmp ult i32 %i.hd, 7
  %n.vec325 = and i64 %i.hf, 8589934584           ; 5 uses
  %i.ig = trunc i64 %n.vec325 to i32
  %i.ih = sub i32 %.11170198.i.i.i, %i.ig
  %i.ii = shl nuw nsw i64 %n.vec325, 1
  %i.ij = shl nuw nsw i64 %n.vec325, 2
  %cmp.n340 = icmp eq i64 %i.hf, %n.vec325
  %min.iters.check261 = icmp ult i32 %i.hd, 4
  %min.iters.check263 = icmp ult i32 %i.hd, 16
  %n.mod.vf265 = and i64 %i.hf, 15                ; 2 uses
  %i.ik = icmp eq i64 %n.mod.vf265, 0
  %i.il = select i1 %i.ik, i64 16, i64 %n.mod.vf265 ; 2 uses
  %n.vec266 = sub nsw i64 %i.hf, %i.il            ; 5 uses
  %i.im = trunc i64 %n.vec266 to i32
  %i.in = sub i32 %.11170198.i.i.i, %i.im
  %i.io = shl nsw i64 %n.vec266, 2
  %min.epilog.iters.check295 = icmp samesign ult i64 %i.il, 5
  %n.mod.vf297 = and i64 %i.hf, 3                 ; 2 uses
  %i.ip = icmp eq i64 %n.mod.vf297, 0
  %i.iq = select i1 %i.ip, i64 4, i64 %n.mod.vf297
  %n.vec298 = sub nsw i64 %i.hf, %i.iq            ; 4 uses
  %i.ir = trunc i64 %n.vec298 to i32
  %i.is = sub i32 %.11170198.i.i.i, %i.ir
  %i.it = shl nsw i64 %n.vec298, 2
  %min.iters.check228 = icmp ult i32 %i.hd, 7
  %n.vec231 = and i64 %i.hf, 8589934584           ; 5 uses
  %i.iu = trunc i64 %n.vec231 to i32
  %i.iv = sub i32 %.11170198.i.i.i, %i.iu
  %i.iw = shl nuw nsw i64 %n.vec231, 1
  %i.ix = mul nuw nsw i64 %n.vec231, 3
  %cmp.n246 = icmp eq i64 %i.hf, %n.vec231
  %min.iters.check161 = icmp ult i32 %i.hd, 7
  %min.iters.check163 = icmp ult i32 %i.hd, 15
  %n.mod.vf165 = and i64 %i.hf, 8
  %n.vec166 = and i64 %i.hf, 8589934576           ; 6 uses
  %i.iy = trunc i64 %n.vec166 to i32
  %i.iz = sub i32 %.11170198.i.i.i, %i.iy
  %i.ja = mul nuw nsw i64 %n.vec166, 3
  %cmp.n188 = icmp eq i64 %i.hf, %n.vec166
  %min.epilog.iters.check196.not.not = icmp eq i64 %n.mod.vf165, 0
  %n.vec199 = and i64 %i.hf, 8589934584           ; 5 uses
  %i.jb = trunc i64 %n.vec199 to i32
  %i.jc = sub i32 %.11170198.i.i.i, %i.jb
  %i.jd = mul nuw nsw i64 %n.vec199, 3
  %cmp.n213 = icmp eq i64 %i.hf, %n.vec199
  %xtraiter395 = and i32 %i.if, 1
  %lcmp.mod396.not = icmp eq i32 %xtraiter395, 0
  %.6165.i.i.i.prol = add nsw i32 %i.gm, -2
  %i.je = icmp slt i32 %i.gm, 2
  %xtraiter398 = and i32 %i.if, 1
  %lcmp.mod399.not = icmp eq i32 %xtraiter398, 0
  %.5164.i.i.i.prol = add nsw i32 %i.gm, -2
  %i.jf = icmp slt i32 %i.gm, 2
  %xtraiter401 = and i32 %i.if, 3                 ; 2 uses
  %lcmp.mod402.not = icmp eq i32 %xtraiter401, 0
  %i.jg = icmp ult i32 %i.hd, 3
  %min.iters.check96 = icmp ult i32 %i.hd, 8
  %min.iters.check98 = icmp ult i32 %i.hd, 16
  %n.mod.vf100 = and i64 %i.hf, 15                ; 2 uses
  %i.jh = icmp eq i64 %n.mod.vf100, 0
  %i.ji = select i1 %i.jh, i64 16, i64 %n.mod.vf100 ; 2 uses
  %n.vec101 = sub nsw i64 %i.hf, %i.ji            ; 5 uses
  %i.jj = trunc i64 %n.vec101 to i32
  %i.jk = sub i32 %.11170198.i.i.i, %i.jj
  %i.jl = shl nsw i64 %n.vec101, 1
  %min.epilog.iters.check130 = icmp samesign ult i64 %i.ji, 9
  %n.mod.vf132 = and i64 %i.hf, 7                 ; 2 uses
  %i.jm = icmp eq i64 %n.mod.vf132, 0
  %i.jn = select i1 %i.jm, i64 8, i64 %n.mod.vf132
  %n.vec133 = sub nsw i64 %i.hf, %i.jn            ; 4 uses
  %i.jo = trunc i64 %n.vec133 to i32
  %i.jp = sub i32 %.11170198.i.i.i, %i.jo
  %i.jq = shl nsw i64 %n.vec133, 1
  %xtraiter404 = and i32 %i.if, 3                 ; 2 uses
  %lcmp.mod405.not = icmp eq i32 %xtraiter404, 0
  %i.jr = icmp ult i32 %i.hd, 3
  %xtraiter407 = and i32 %i.if, 3                 ; 2 uses
  %lcmp.mod408.not = icmp eq i32 %xtraiter407, 0
  %i.js = icmp ult i32 %i.hd, 3
  %min.iters.check53 = icmp ult i32 %i.hd, 3
  %min.iters.check54 = icmp ult i32 %i.hd, 15
  %n.mod.vf56 = and i64 %i.hf, 12
  %n.vec57 = and i64 %i.hf, 8589934576            ; 6 uses
  %i.jt = trunc i64 %n.vec57 to i32
  %i.ju = sub i32 %.11170198.i.i.i, %i.jt
  %i.jv = shl nuw nsw i64 %n.vec57, 1
  %cmp.n69 = icmp eq i64 %i.hf, %n.vec57
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf56, 0
  %n.vec74 = and i64 %i.hf, 8589934588            ; 5 uses
  %i.jw = trunc i64 %n.vec74 to i32
  %i.jx = sub i32 %.11170198.i.i.i, %i.jw
  %i.jy = shl nuw nsw i64 %n.vec74, 1
  %cmp.n81 = icmp eq i64 %i.hf, %n.vec74
  %xtraiter410 = and i32 %i.if, 1
  %lcmp.mod411.not = icmp eq i32 %xtraiter410, 0
  %.11170.i.i.i.prol = add nsw i32 %i.gm, -2
  %i.jz = icmp slt i32 %i.gm, 2
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.i.i.i, %.lr.ph258.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph258.split.i.i.i ], [ %indvars.iv.next.i.i.i, %.loopexit.i.i.i ] ; 12 uses
  %i.ka = trunc i64 %indvars.iv.i.i.i to i32
  %i.kb = mul i32 %i.hy, %i.ka
  %i.kc = zext i32 %i.kb to i64                   ; 2 uses
  %scevgep312 = getelementptr i8, ptr %i.gx, i64 %i.kc
  %scevgep314 = getelementptr i8, ptr %scevgep313, i64 %i.kc
  %i.kd = trunc i64 %indvars.iv.i.i.i to i32
  %i.ke = mul i32 %i.ib, %i.kd
  %i.kf = zext i32 %i.ke to i64                   ; 2 uses
  %scevgep315 = getelementptr i8, ptr %i.gj, i64 %i.kf
  %scevgep317 = getelementptr i8, ptr %scevgep316.a, i64 %i.kf
  %i.kg = trunc i64 %indvars.iv.i.i.i to i32
  %i.kh = mul i32 %i.hu, %i.kg
  %i.ki = zext i32 %i.kh to i64                   ; 2 uses
  %scevgep251 = getelementptr i8, ptr %i.gx, i64 %i.ki
  %scevgep253 = getelementptr i8, ptr %scevgep252, i64 %i.ki
  %i.kj = trunc i64 %indvars.iv.i.i.i to i32
  %i.kk = mul i32 %i.hv, %i.kj
  %i.kl = zext i32 %i.kk to i64                   ; 2 uses
  %scevgep254 = getelementptr i8, ptr %i.gj, i64 %i.kl
  %scevgep256 = getelementptr i8, ptr %scevgep255, i64 %i.kl
  %i.km = trunc i64 %indvars.iv.i.i.i to i32
  %i.kn = mul i32 %i.ho, %i.km
  %i.ko = zext i32 %i.kn to i64                   ; 2 uses
  %scevgep218 = getelementptr i8, ptr %i.gx, i64 %i.ko
  %scevgep220 = getelementptr i8, ptr %scevgep219, i64 %i.ko
  %i.kp = trunc i64 %indvars.iv.i.i.i to i32
  %i.kq = mul i32 %i.hr, %i.kp
  %i.kr = zext i32 %i.kq to i64                   ; 2 uses
  %scevgep221 = getelementptr i8, ptr %i.gj, i64 %i.kr
  %scevgep223 = getelementptr i8, ptr %scevgep222, i64 %i.kr
  %i.ks = trunc i64 %indvars.iv.i.i.i to i32
  %i.kt = mul i32 %i.hk, %i.ks
  %i.ku = zext i32 %i.kt to i64                   ; 2 uses
  %scevgep151 = getelementptr i8, ptr %i.gx, i64 %i.ku
  %scevgep153 = getelementptr i8, ptr %scevgep152, i64 %i.ku
  %i.kv = trunc i64 %indvars.iv.i.i.i to i32
  %i.kw = mul i32 %i.hl, %i.kv
  %i.kx = zext i32 %i.kw to i64                   ; 2 uses
  %scevgep154 = getelementptr i8, ptr %i.gj, i64 %i.kx
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.kx
  %i.ky = trunc i64 %indvars.iv.i.i.i to i32
  %i.kz = mul i32 %i.hg, %i.ky
  %i.la = zext i32 %i.kz to i64                   ; 2 uses
  %scevgep86 = getelementptr i8, ptr %i.gx, i64 %i.la
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.la
  %i.lb = trunc i64 %indvars.iv.i.i.i to i32
  %i.lc = mul i32 %i.hh, %i.lb
  %i.ld = zext i32 %i.lc to i64                   ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.gj, i64 %i.ld
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.ld
  %i.le = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.lf = mul i32 %i.gm, %i.le                    ; 2 uses
  %i.lg = mul i32 %i.lf, %i.gl
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.lh ; 127 uses
  %i.lj = mul i32 %i.lf, %4
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.lk ; 55 uses
  switch i32 %i.hb, label %.preheader195.i.i.i [
    i32 10, label %.preheader.i.i.i
    i32 11, label %.preheader175.i.i.i
    i32 12, label %.preheader177.i.i.i
    i32 17, label %.preheader179.i.i.i
    i32 19, label %.preheader181.i.i.i
    i32 20, label %.preheader183.i.i.i
    i32 28, label %.preheader185.i.i.i
    i32 25, label %.preheader187.i.i.i
    i32 26, label %.preheader189.i.i.i
    i32 33, label %.preheader191.i.i.i
    i32 34, label %.preheader193.i.i.i
  ]

.preheader195.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader195.i.i.i
  br i1 %lcmp.mod411.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.lm = load i8, ptr %i.li, align 1
  store i8 %i.lm, ptr %i.ll, align 1
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 1
  %i.lo = load i8, ptr %i.ln, align 1
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 1
  store i8 %i.lo, ptr %i.lp, align 1
  %i.lq = getelementptr inbounds nuw i8, ptr %i.li, i64 2
  %i.lr = load i8, ptr %i.lq, align 1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ll, i64 2
  store i8 %i.lr, ptr %i.ls, align 1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ll, i64 3
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.11170201.i.i.i.unr = phi i32 [ %.11170198.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.11170.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.11200.i.i.i.unr = phi ptr [ %i.ll, %.lr.ph.i.i.i.preheader ], [ %i.lu, %.lr.ph.i.i.i.prol ]
  %.11153199.i.i.i.unr = phi ptr [ %i.li, %.lr.ph.i.i.i.preheader ], [ %i.lt, %.lr.ph.i.i.i.prol ]
  br i1 %i.jz, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.preheader193.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph206.i.i.i.preheader

.lr.ph206.i.i.i.preheader:                        ; preds = %.preheader193.i.i.i
  br i1 %min.iters.check322, label %.lr.ph206.i.i.i.preheader355, label %vector.memcheck311

vector.memcheck311:                               ; preds = %.lr.ph206.i.i.i.preheader
  %bound0318 = icmp ult ptr %scevgep312, %scevgep317
  %bound1319 = icmp ult ptr %scevgep315, %scevgep314
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %.lr.ph206.i.i.i.preheader355, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck311
  %i.lv = getelementptr i8, ptr %i.ll, i64 %i.ii
  %i.lw = getelementptr i8, ptr %i.li, i64 %i.ij
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph323
  %index327 = phi i64 [ 0, %vector.ph323 ], [ %index.next338, %vector.body326 ] ; 3 uses
  %i.lx = shl i64 %index327, 1
  %next.gep328 = getelementptr i8, ptr %i.ll, i64 %i.lx
  %i.ly = shl i64 %index327, 2                    ; 8 uses
  %next.gep329 = getelementptr i8, ptr %i.li, i64 %i.ly ; 4 uses
  %i.lz = getelementptr i8, ptr %i.li, i64 %i.ly  ; 4 uses
  %next.gep330 = getelementptr i8, ptr %i.lz, i64 4
  %i.ma = getelementptr i8, ptr %i.li, i64 %i.ly  ; 4 uses
  %next.gep331 = getelementptr i8, ptr %i.ma, i64 8
  %i.mb = getelementptr i8, ptr %i.li, i64 %i.ly  ; 4 uses
  %next.gep332 = getelementptr i8, ptr %i.mb, i64 12
  %i.mc = getelementptr i8, ptr %i.li, i64 %i.ly  ; 4 uses
  %next.gep333 = getelementptr i8, ptr %i.mc, i64 16
  %i.md = getelementptr i8, ptr %i.li, i64 %i.ly  ; 4 uses
  %next.gep334 = getelementptr i8, ptr %i.md, i64 20
  %i.me = getelementptr i8, ptr %i.li, i64 %i.ly  ; 4 uses
  %next.gep335 = getelementptr i8, ptr %i.me, i64 24
  %i.mf = getelementptr i8, ptr %i.li, i64 %i.ly  ; 4 uses
  %next.gep336 = getelementptr i8, ptr %i.mf, i64 28
  %i.mg = load i8, ptr %next.gep329, align 1, !alias.scope !82
  %i.mh = load i8, ptr %next.gep330, align 1, !alias.scope !82
  %i.mi = load i8, ptr %next.gep331, align 1, !alias.scope !82
  %i.mj = load i8, ptr %next.gep332, align 1, !alias.scope !82
  %i.mk = load i8, ptr %next.gep333, align 1, !alias.scope !82
  %i.ml = load i8, ptr %next.gep334, align 1, !alias.scope !82
  %i.mm = load i8, ptr %next.gep335, align 1, !alias.scope !82
  %i.mn = load i8, ptr %next.gep336, align 1, !alias.scope !82
  %i.mo = insertelement <8 x i8> poison, i8 %i.mg, i64 0
  %i.mp = insertelement <8 x i8> %i.mo, i8 %i.mh, i64 1
  %i.mq = insertelement <8 x i8> %i.mp, i8 %i.mi, i64 2
  %i.mr = insertelement <8 x i8> %i.mq, i8 %i.mj, i64 3
  %i.ms = insertelement <8 x i8> %i.mr, i8 %i.mk, i64 4
  %i.mt = insertelement <8 x i8> %i.ms, i8 %i.ml, i64 5
  %i.mu = insertelement <8 x i8> %i.mt, i8 %i.mm, i64 6
  %i.mv = insertelement <8 x i8> %i.mu, i8 %i.mn, i64 7
  %i.mw = zext <8 x i8> %i.mv to <8 x i16>
  %i.mx = getelementptr inbounds nuw i8, ptr %next.gep329, i64 1
  %i.my = getelementptr i8, ptr %i.lz, i64 5
  %i.mz = getelementptr i8, ptr %i.ma, i64 9
  %i.na = getelementptr i8, ptr %i.mb, i64 13
  %i.nb = getelementptr i8, ptr %i.mc, i64 17
  %i.nc = getelementptr i8, ptr %i.md, i64 21
  %i.nd = getelementptr i8, ptr %i.me, i64 25
  %i.ne = getelementptr i8, ptr %i.mf, i64 29
  %i.nf = load i8, ptr %i.mx, align 1, !alias.scope !82
  %i.ng = load i8, ptr %i.my, align 1, !alias.scope !82
  %i.nh = load i8, ptr %i.mz, align 1, !alias.scope !82
  %i.ni = load i8, ptr %i.na, align 1, !alias.scope !82
  %i.nj = load i8, ptr %i.nb, align 1, !alias.scope !82
  %i.nk = load i8, ptr %i.nc, align 1, !alias.scope !82
  %i.nl = load i8, ptr %i.nd, align 1, !alias.scope !82
  %i.nm = load i8, ptr %i.ne, align 1, !alias.scope !82
  %i.nn = insertelement <8 x i8> poison, i8 %i.nf, i64 0
  %i.no = insertelement <8 x i8> %i.nn, i8 %i.ng, i64 1
  %i.np = insertelement <8 x i8> %i.no, i8 %i.nh, i64 2
  %i.nq = insertelement <8 x i8> %i.np, i8 %i.ni, i64 3
  %i.nr = insertelement <8 x i8> %i.nq, i8 %i.nj, i64 4
  %i.ns = insertelement <8 x i8> %i.nr, i8 %i.nk, i64 5
  %i.nt = insertelement <8 x i8> %i.ns, i8 %i.nl, i64 6
  %i.nu = insertelement <8 x i8> %i.nt, i8 %i.nm, i64 7
  %i.nv = zext <8 x i8> %i.nu to <8 x i16>
  %i.nw = getelementptr inbounds nuw i8, ptr %next.gep329, i64 2
  %i.nx = getelementptr i8, ptr %i.lz, i64 6
  %i.ny = getelementptr i8, ptr %i.ma, i64 10
  %i.nz = getelementptr i8, ptr %i.mb, i64 14
  %i.oa = getelementptr i8, ptr %i.mc, i64 18
  %i.ob = getelementptr i8, ptr %i.md, i64 22
  %i.oc = getelementptr i8, ptr %i.me, i64 26
  %i.od = getelementptr i8, ptr %i.mf, i64 30
  %i.oe = load i8, ptr %i.nw, align 1, !alias.scope !82
  %i.of = load i8, ptr %i.nx, align 1, !alias.scope !82
  %i.og = load i8, ptr %i.ny, align 1, !alias.scope !82
  %i.oh = load i8, ptr %i.nz, align 1, !alias.scope !82
  %i.oi = load i8, ptr %i.oa, align 1, !alias.scope !82
  %i.oj = load i8, ptr %i.ob, align 1, !alias.scope !82
  %i.ok = load i8, ptr %i.oc, align 1, !alias.scope !82
  %i.ol = load i8, ptr %i.od, align 1, !alias.scope !82
  %i.om = insertelement <8 x i8> poison, i8 %i.oe, i64 0
  %i.on = insertelement <8 x i8> %i.om, i8 %i.of, i64 1
  %i.oo = insertelement <8 x i8> %i.on, i8 %i.og, i64 2
  %i.op = insertelement <8 x i8> %i.oo, i8 %i.oh, i64 3
  %i.oq = insertelement <8 x i8> %i.op, i8 %i.oi, i64 4
  %i.or = insertelement <8 x i8> %i.oq, i8 %i.oj, i64 5
  %i.os = insertelement <8 x i8> %i.or, i8 %i.ok, i64 6
  %i.ot = insertelement <8 x i8> %i.os, i8 %i.ol, i64 7
  %i.ou = zext <8 x i8> %i.ot to <8 x i16>
  %i.ov = mul nuw nsw <8 x i16> %i.mw, splat (i16 77)
  %i.ow = mul nuw <8 x i16> %i.nv, splat (i16 150)
  %i.ox = add nuw <8 x i16> %i.ow, %i.ov
  %i.oy = mul nuw nsw <8 x i16> %i.ou, splat (i16 29)
  %i.oz = add nuw <8 x i16> %i.ox, %i.oy
  %i.pa = lshr <8 x i16> %i.oz, splat (i16 8)
  %i.pb = trunc nuw <8 x i16> %i.pa to <8 x i8>
  %i.pc = getelementptr inbounds nuw i8, ptr %next.gep329, i64 3
  %i.pd = getelementptr i8, ptr %i.lz, i64 7
  %i.pe = getelementptr i8, ptr %i.ma, i64 11
  %i.pf = getelementptr i8, ptr %i.mb, i64 15
  %i.pg = getelementptr i8, ptr %i.mc, i64 19
  %i.ph = getelementptr i8, ptr %i.md, i64 23
  %i.pi = getelementptr i8, ptr %i.me, i64 27
  %i.pj = getelementptr i8, ptr %i.mf, i64 31
  %i.pk = load i8, ptr %i.pc, align 1, !alias.scope !82
  %i.pl = load i8, ptr %i.pd, align 1, !alias.scope !82
  %i.pm = load i8, ptr %i.pe, align 1, !alias.scope !82
  %i.pn = load i8, ptr %i.pf, align 1, !alias.scope !82
  %i.po = load i8, ptr %i.pg, align 1, !alias.scope !82
  %i.pp = load i8, ptr %i.ph, align 1, !alias.scope !82
  %i.pq = load i8, ptr %i.pi, align 1, !alias.scope !82
  %i.pr = load i8, ptr %i.pj, align 1, !alias.scope !82
  %i.ps = insertelement <8 x i8> poison, i8 %i.pk, i64 0
  %i.pt = insertelement <8 x i8> %i.ps, i8 %i.pl, i64 1
  %i.pu = insertelement <8 x i8> %i.pt, i8 %i.pm, i64 2
  %i.pv = insertelement <8 x i8> %i.pu, i8 %i.pn, i64 3
  %i.pw = insertelement <8 x i8> %i.pv, i8 %i.po, i64 4
  %i.px = insertelement <8 x i8> %i.pw, i8 %i.pp, i64 5
  %i.py = insertelement <8 x i8> %i.px, i8 %i.pq, i64 6
  %i.pz = insertelement <8 x i8> %i.py, i8 %i.pr, i64 7
  %interleaved.vec337 = shufflevector <8 x i8> %i.pb, <8 x i8> %i.pz, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec337, ptr %next.gep328, align 1, !alias.scope !85, !noalias !82
  %index.next338 = add nuw i64 %index327, 8       ; 2 uses
  %i.qa = icmp eq i64 %index.next338, %n.vec325
  br i1 %i.qa, label %middle.block339, label %vector.body326, !llvm.loop !87

middle.block339:                                  ; preds = %vector.body326
  br i1 %cmp.n340, label %.loopexit.i.i.i, label %.lr.ph206.i.i.i.preheader355

.lr.ph206.i.i.i.preheader355:                     ; preds = %vector.memcheck311, %.lr.ph206.i.i.i.preheader, %middle.block339
  %.10169205.i.i.i.ph = phi i32 [ %.11170198.i.i.i, %vector.memcheck311 ], [ %.11170198.i.i.i, %.lr.ph206.i.i.i.preheader ], [ %i.ih, %middle.block339 ]
  %.10204.i.i.i.ph = phi ptr [ %i.ll, %vector.memcheck311 ], [ %i.ll, %.lr.ph206.i.i.i.preheader ], [ %i.lv, %middle.block339 ]
  %.10152203.i.i.i.ph = phi ptr [ %i.li, %vector.memcheck311 ], [ %i.li, %.lr.ph206.i.i.i.preheader ], [ %i.lw, %middle.block339 ]
  br label %.lr.ph206.i.i.i

.preheader191.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %iter.check292

iter.check292:                                    ; preds = %.preheader191.i.i.i
  br i1 %min.iters.check261, label %.lr.ph211.i.i.i.preheader, label %vector.memcheck250

vector.memcheck250:                               ; preds = %iter.check292
  %bound0257 = icmp ult ptr %scevgep251, %scevgep256
  %bound1258 = icmp ult ptr %scevgep254, %scevgep253
  %found.conflict259 = and i1 %bound0257, %bound1258
  br i1 %found.conflict259, label %.lr.ph211.i.i.i.preheader, label %vector.main.loop.iter.check262

vector.main.loop.iter.check262:                   ; preds = %vector.memcheck250
  br i1 %min.iters.check263, label %vec.epilog.ph296, label %vector.ph264

vector.ph264:                                     ; preds = %vector.main.loop.iter.check262
  %i.qb = getelementptr i8, ptr %i.ll, i64 %n.vec266
  %i.qc = getelementptr i8, ptr %i.li, i64 %i.io
  br label %vector.body267

vector.body267:                                   ; preds = %vector.body267, %vector.ph264
  %index268 = phi i64 [ 0, %vector.ph264 ], [ %index.next286, %vector.body267 ] ; 3 uses
  %next.gep269 = getelementptr i8, ptr %i.ll, i64 %index268
  %i.qd = shl i64 %index268, 2                    ; 16 uses
  %next.gep270 = getelementptr i8, ptr %i.li, i64 %i.qd ; 3 uses
  %i.qe = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep271 = getelementptr i8, ptr %i.qe, i64 4
  %i.qf = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep272 = getelementptr i8, ptr %i.qf, i64 8
  %i.qg = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep273 = getelementptr i8, ptr %i.qg, i64 12
  %i.qh = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep274 = getelementptr i8, ptr %i.qh, i64 16
  %i.qi = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep275 = getelementptr i8, ptr %i.qi, i64 20
  %i.qj = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep276 = getelementptr i8, ptr %i.qj, i64 24
  %i.qk = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep277 = getelementptr i8, ptr %i.qk, i64 28
  %i.ql = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep278 = getelementptr i8, ptr %i.ql, i64 32
  %i.qm = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep279 = getelementptr i8, ptr %i.qm, i64 36
  %i.qn = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep280 = getelementptr i8, ptr %i.qn, i64 40
  %i.qo = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep281 = getelementptr i8, ptr %i.qo, i64 44
  %i.qp = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep282 = getelementptr i8, ptr %i.qp, i64 48
  %i.qq = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep283 = getelementptr i8, ptr %i.qq, i64 52
  %i.qr = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep284 = getelementptr i8, ptr %i.qr, i64 56
  %i.qs = getelementptr i8, ptr %i.li, i64 %i.qd  ; 3 uses
  %next.gep285 = getelementptr i8, ptr %i.qs, i64 60
  %i.qt = load i8, ptr %next.gep270, align 1, !alias.scope !88
  %i.qu = load i8, ptr %next.gep271, align 1, !alias.scope !88
  %i.qv = load i8, ptr %next.gep272, align 1, !alias.scope !88
  %i.qw = load i8, ptr %next.gep273, align 1, !alias.scope !88
  %i.qx = load i8, ptr %next.gep274, align 1, !alias.scope !88
  %i.qy = load i8, ptr %next.gep275, align 1, !alias.scope !88
  %i.qz = load i8, ptr %next.gep276, align 1, !alias.scope !88
  %i.ra = load i8, ptr %next.gep277, align 1, !alias.scope !88
  %i.rb = load i8, ptr %next.gep278, align 1, !alias.scope !88
  %i.rc = load i8, ptr %next.gep279, align 1, !alias.scope !88
  %i.rd = load i8, ptr %next.gep280, align 1, !alias.scope !88
  %i.re = load i8, ptr %next.gep281, align 1, !alias.scope !88
  %i.rf = load i8, ptr %next.gep282, align 1, !alias.scope !88
  %i.rg = load i8, ptr %next.gep283, align 1, !alias.scope !88
  %i.rh = load i8, ptr %next.gep284, align 1, !alias.scope !88
  %i.ri = load i8, ptr %next.gep285, align 1, !alias.scope !88
  %i.rj = insertelement <16 x i8> poison, i8 %i.qt, i64 0
  %i.rk = insertelement <16 x i8> %i.rj, i8 %i.qu, i64 1
  %i.rl = insertelement <16 x i8> %i.rk, i8 %i.qv, i64 2
  %i.rm = insertelement <16 x i8> %i.rl, i8 %i.qw, i64 3
  %i.rn = insertelement <16 x i8> %i.rm, i8 %i.qx, i64 4
  %i.ro = insertelement <16 x i8> %i.rn, i8 %i.qy, i64 5
  %i.rp = insertelement <16 x i8> %i.ro, i8 %i.qz, i64 6
  %i.rq = insertelement <16 x i8> %i.rp, i8 %i.ra, i64 7
  %i.rr = insertelement <16 x i8> %i.rq, i8 %i.rb, i64 8
  %i.rs = insertelement <16 x i8> %i.rr, i8 %i.rc, i64 9
  %i.rt = insertelement <16 x i8> %i.rs, i8 %i.rd, i64 10
  %i.ru = insertelement <16 x i8> %i.rt, i8 %i.re, i64 11
  %i.rv = insertelement <16 x i8> %i.ru, i8 %i.rf, i64 12
  %i.rw = insertelement <16 x i8> %i.rv, i8 %i.rg, i64 13
  %i.rx = insertelement <16 x i8> %i.rw, i8 %i.rh, i64 14
  %i.ry = insertelement <16 x i8> %i.rx, i8 %i.ri, i64 15
  %i.rz = zext <16 x i8> %i.ry to <16 x i16>
  %i.sa = getelementptr inbounds nuw i8, ptr %next.gep270, i64 1
  %i.sb = getelementptr i8, ptr %i.qe, i64 5
  %i.sc = getelementptr i8, ptr %i.qf, i64 9
  %i.sd = getelementptr i8, ptr %i.qg, i64 13
  %i.se = getelementptr i8, ptr %i.qh, i64 17
  %i.sf = getelementptr i8, ptr %i.qi, i64 21
  %i.sg = getelementptr i8, ptr %i.qj, i64 25
  %i.sh = getelementptr i8, ptr %i.qk, i64 29
  %i.si = getelementptr i8, ptr %i.ql, i64 33
  %i.sj = getelementptr i8, ptr %i.qm, i64 37
  %i.sk = getelementptr i8, ptr %i.qn, i64 41
  %i.sl = getelementptr i8, ptr %i.qo, i64 45
  %i.sm = getelementptr i8, ptr %i.qp, i64 49
  %i.sn = getelementptr i8, ptr %i.qq, i64 53
  %i.so = getelementptr i8, ptr %i.qr, i64 57
  %i.sp = getelementptr i8, ptr %i.qs, i64 61
  %i.sq = load i8, ptr %i.sa, align 1, !alias.scope !88
  %i.sr = load i8, ptr %i.sb, align 1, !alias.scope !88
  %i.ss = load i8, ptr %i.sc, align 1, !alias.scope !88
  %i.st = load i8, ptr %i.sd, align 1, !alias.scope !88
  %i.su = load i8, ptr %i.se, align 1, !alias.scope !88
  %i.sv = load i8, ptr %i.sf, align 1, !alias.scope !88
  %i.sw = load i8, ptr %i.sg, align 1, !alias.scope !88
  %i.sx = load i8, ptr %i.sh, align 1, !alias.scope !88
  %i.sy = load i8, ptr %i.si, align 1, !alias.scope !88
  %i.sz = load i8, ptr %i.sj, align 1, !alias.scope !88
  %i.ta = load i8, ptr %i.sk, align 1, !alias.scope !88
  %i.tb = load i8, ptr %i.sl, align 1, !alias.scope !88
  %i.tc = load i8, ptr %i.sm, align 1, !alias.scope !88
  %i.td = load i8, ptr %i.sn, align 1, !alias.scope !88
  %i.te = load i8, ptr %i.so, align 1, !alias.scope !88
  %i.tf = load i8, ptr %i.sp, align 1, !alias.scope !88
  %i.tg = insertelement <16 x i8> poison, i8 %i.sq, i64 0
  %i.th = insertelement <16 x i8> %i.tg, i8 %i.sr, i64 1
  %i.ti = insertelement <16 x i8> %i.th, i8 %i.ss, i64 2
  %i.tj = insertelement <16 x i8> %i.ti, i8 %i.st, i64 3
  %i.tk = insertelement <16 x i8> %i.tj, i8 %i.su, i64 4
  %i.tl = insertelement <16 x i8> %i.tk, i8 %i.sv, i64 5
  %i.tm = insertelement <16 x i8> %i.tl, i8 %i.sw, i64 6
  %i.tn = insertelement <16 x i8> %i.tm, i8 %i.sx, i64 7
  %i.to = insertelement <16 x i8> %i.tn, i8 %i.sy, i64 8
  %i.tp = insertelement <16 x i8> %i.to, i8 %i.sz, i64 9
  %i.tq = insertelement <16 x i8> %i.tp, i8 %i.ta, i64 10
  %i.tr = insertelement <16 x i8> %i.tq, i8 %i.tb, i64 11
  %i.ts = insertelement <16 x i8> %i.tr, i8 %i.tc, i64 12
  %i.tt = insertelement <16 x i8> %i.ts, i8 %i.td, i64 13
  %i.tu = insertelement <16 x i8> %i.tt, i8 %i.te, i64 14
  %i.tv = insertelement <16 x i8> %i.tu, i8 %i.tf, i64 15
  %i.tw = zext <16 x i8> %i.tv to <16 x i16>
  %i.tx = getelementptr inbounds nuw i8, ptr %next.gep270, i64 2
  %i.ty = getelementptr i8, ptr %i.qe, i64 6
  %i.tz = getelementptr i8, ptr %i.qf, i64 10
  %i.ua = getelementptr i8, ptr %i.qg, i64 14
  %i.ub = getelementptr i8, ptr %i.qh, i64 18
  %i.uc = getelementptr i8, ptr %i.qi, i64 22
  %i.ud = getelementptr i8, ptr %i.qj, i64 26
  %i.ue = getelementptr i8, ptr %i.qk, i64 30
  %i.uf = getelementptr i8, ptr %i.ql, i64 34
  %i.ug = getelementptr i8, ptr %i.qm, i64 38
  %i.uh = getelementptr i8, ptr %i.qn, i64 42
  %i.ui = getelementptr i8, ptr %i.qo, i64 46
  %i.uj = getelementptr i8, ptr %i.qp, i64 50
  %i.uk = getelementptr i8, ptr %i.qq, i64 54
  %i.ul = getelementptr i8, ptr %i.qr, i64 58
  %i.um = getelementptr i8, ptr %i.qs, i64 62
  %i.un = load i8, ptr %i.tx, align 1, !alias.scope !88
  %i.uo = load i8, ptr %i.ty, align 1, !alias.scope !88
  %i.up = load i8, ptr %i.tz, align 1, !alias.scope !88
  %i.uq = load i8, ptr %i.ua, align 1, !alias.scope !88
  %i.ur = load i8, ptr %i.ub, align 1, !alias.scope !88
  %i.us = load i8, ptr %i.uc, align 1, !alias.scope !88
  %i.ut = load i8, ptr %i.ud, align 1, !alias.scope !88
  %i.uu = load i8, ptr %i.ue, align 1, !alias.scope !88
  %i.uv = load i8, ptr %i.uf, align 1, !alias.scope !88
  %i.uw = load i8, ptr %i.ug, align 1, !alias.scope !88
  %i.ux = load i8, ptr %i.uh, align 1, !alias.scope !88
  %i.uy = load i8, ptr %i.ui, align 1, !alias.scope !88
  %i.uz = load i8, ptr %i.uj, align 1, !alias.scope !88
  %i.va = load i8, ptr %i.uk, align 1, !alias.scope !88
  %i.vb = load i8, ptr %i.ul, align 1, !alias.scope !88
  %i.vc = load i8, ptr %i.um, align 1, !alias.scope !88
  %i.vd = insertelement <16 x i8> poison, i8 %i.un, i64 0
  %i.ve = insertelement <16 x i8> %i.vd, i8 %i.uo, i64 1
  %i.vf = insertelement <16 x i8> %i.ve, i8 %i.up, i64 2
  %i.vg = insertelement <16 x i8> %i.vf, i8 %i.uq, i64 3
  %i.vh = insertelement <16 x i8> %i.vg, i8 %i.ur, i64 4
  %i.vi = insertelement <16 x i8> %i.vh, i8 %i.us, i64 5
  %i.vj = insertelement <16 x i8> %i.vi, i8 %i.ut, i64 6
  %i.vk = insertelement <16 x i8> %i.vj, i8 %i.uu, i64 7
  %i.vl = insertelement <16 x i8> %i.vk, i8 %i.uv, i64 8
  %i.vm = insertelement <16 x i8> %i.vl, i8 %i.uw, i64 9
  %i.vn = insertelement <16 x i8> %i.vm, i8 %i.ux, i64 10
  %i.vo = insertelement <16 x i8> %i.vn, i8 %i.uy, i64 11
  %i.vp = insertelement <16 x i8> %i.vo, i8 %i.uz, i64 12
  %i.vq = insertelement <16 x i8> %i.vp, i8 %i.va, i64 13
  %i.vr = insertelement <16 x i8> %i.vq, i8 %i.vb, i64 14
  %i.vs = insertelement <16 x i8> %i.vr, i8 %i.vc, i64 15
  %i.vt = zext <16 x i8> %i.vs to <16 x i16>
  %i.vu = mul nuw nsw <16 x i16> %i.rz, splat (i16 77)
  %i.vv = mul nuw <16 x i16> %i.tw, splat (i16 150)
  %i.vw = add nuw <16 x i16> %i.vv, %i.vu
  %i.vx = mul nuw nsw <16 x i16> %i.vt, splat (i16 29)
  %i.vy = add nuw <16 x i16> %i.vw, %i.vx
  %i.vz = lshr <16 x i16> %i.vy, splat (i16 8)
  %i.wa = trunc nuw <16 x i16> %i.vz to <16 x i8>
  store <16 x i8> %i.wa, ptr %next.gep269, align 1, !alias.scope !91, !noalias !88
  %index.next286 = add nuw i64 %index268, 16      ; 2 uses
  %i.wb = icmp eq i64 %index.next286, %n.vec266
  br i1 %i.wb, label %vec.epilog.iter.check294, label %vector.body267, !llvm.loop !93

vec.epilog.iter.check294:                         ; preds = %vector.body267
  br i1 %min.epilog.iters.check295, label %.lr.ph211.i.i.i.preheader, label %vec.epilog.ph296, !prof !30

.lr.ph211.i.i.i.preheader:                        ; preds = %vec.epilog.vector.body299, %vector.memcheck250, %iter.check292, %vec.epilog.iter.check294
  %.9168210.i.i.i.ph = phi i32 [ %.11170198.i.i.i, %iter.check292 ], [ %.11170198.i.i.i, %vector.memcheck250 ], [ %i.in, %vec.epilog.iter.check294 ], [ %i.is, %vec.epilog.vector.body299 ]
  %.9209.i.i.i.ph = phi ptr [ %i.ll, %iter.check292 ], [ %i.ll, %vector.memcheck250 ], [ %i.qb, %vec.epilog.iter.check294 ], [ %i.wc, %vec.epilog.vector.body299 ]
  %.9151208.i.i.i.ph = phi ptr [ %i.li, %iter.check292 ], [ %i.li, %vector.memcheck250 ], [ %i.qc, %vec.epilog.iter.check294 ], [ %i.wd, %vec.epilog.vector.body299 ]
  br label %.lr.ph211.i.i.i

vec.epilog.ph296:                                 ; preds = %vector.main.loop.iter.check262, %vec.epilog.iter.check294
  %vec.epilog.resume.val288 = phi i64 [ %n.vec266, %vec.epilog.iter.check294 ], [ 0, %vector.main.loop.iter.check262 ]
  %i.wc = getelementptr i8, ptr %i.ll, i64 %n.vec298
  %i.wd = getelementptr i8, ptr %i.li, i64 %i.it
  br label %vec.epilog.vector.body299

vec.epilog.vector.body299:                        ; preds = %vec.epilog.vector.body299, %vec.epilog.ph296
  %index300 = phi i64 [ %vec.epilog.resume.val288, %vec.epilog.ph296 ], [ %index.next306, %vec.epilog.vector.body299 ] ; 3 uses
  %next.gep301 = getelementptr i8, ptr %i.ll, i64 %index300
  %i.we = shl i64 %index300, 2                    ; 4 uses
  %next.gep302.a = getelementptr i8, ptr %i.li, i64 %i.we ; 3 uses
  %i.wf = getelementptr i8, ptr %i.li, i64 %i.we  ; 3 uses
  %next.gep303.a = getelementptr i8, ptr %i.wf, i64 4
  %i.wg = getelementptr i8, ptr %i.li, i64 %i.we  ; 3 uses
  %next.gep304.a = getelementptr i8, ptr %i.wg, i64 8
  %i.wh = getelementptr i8, ptr %i.li, i64 %i.we  ; 3 uses
  %next.gep305.a = getelementptr i8, ptr %i.wh, i64 12
  %i.wi = load i8, ptr %next.gep302.a, align 1, !alias.scope !88
  %i.wj = load i8, ptr %next.gep303.a, align 1, !alias.scope !88
  %i.wk = load i8, ptr %next.gep304.a, align 1, !alias.scope !88
  %i.wl = load i8, ptr %next.gep305.a, align 1, !alias.scope !88
  %7 = insertelement <4 x i8> poison, i8 %i.wi, i64 0
  %8 = insertelement <4 x i8> %7, i8 %i.wj, i64 1
  %9 = insertelement <4 x i8> %8, i8 %i.wk, i64 2
  %10 = insertelement <4 x i8> %9, i8 %i.wl, i64 3
  %11 = zext <4 x i8> %10 to <4 x i16>
  %i.wm = getelementptr inbounds nuw i8, ptr %next.gep302.a, i64 1
  %i.wn = getelementptr i8, ptr %i.wf, i64 5
  %i.wo = getelementptr i8, ptr %i.wg, i64 9
  %i.wp = getelementptr i8, ptr %i.wh, i64 13
  %i.wq = load i8, ptr %i.wm, align 1, !alias.scope !88
  %i.wr = load i8, ptr %i.wn, align 1, !alias.scope !88
  %i.ws = load i8, ptr %i.wo, align 1, !alias.scope !88
  %i.wt = load i8, ptr %i.wp, align 1, !alias.scope !88
  %12 = insertelement <4 x i8> poison, i8 %i.wq, i64 0
  %13 = insertelement <4 x i8> %12, i8 %i.wr, i64 1
  %14 = insertelement <4 x i8> %13, i8 %i.ws, i64 2
  %15 = insertelement <4 x i8> %14, i8 %i.wt, i64 3
  %16 = zext <4 x i8> %15 to <4 x i16>
  %i.wu = getelementptr inbounds nuw i8, ptr %next.gep302.a, i64 2
  %i.wv = getelementptr i8, ptr %i.wf, i64 6
  %i.ww = getelementptr i8, ptr %i.wg, i64 10
  %i.wx = getelementptr i8, ptr %i.wh, i64 14
  %i.wy = load i8, ptr %i.wu, align 1, !alias.scope !88
  %i.wz = load i8, ptr %i.wv, align 1, !alias.scope !88
  %i.xa = load i8, ptr %i.ww, align 1, !alias.scope !88
  %i.xb = load i8, ptr %i.wx, align 1, !alias.scope !88
  %17 = insertelement <4 x i8> poison, i8 %i.wy, i64 0
  %18 = insertelement <4 x i8> %17, i8 %i.wz, i64 1
  %19 = insertelement <4 x i8> %18, i8 %i.xa, i64 2
  %20 = insertelement <4 x i8> %19, i8 %i.xb, i64 3
  %21 = zext <4 x i8> %20 to <4 x i16>
  %22 = mul nuw nsw <4 x i16> %11, splat (i16 77)
  %23 = mul nuw <4 x i16> %16, splat (i16 150)
  %24 = add nuw <4 x i16> %23, %22
  %25 = mul nuw nsw <4 x i16> %21, splat (i16 29)
  %26 = add nuw <4 x i16> %24, %25
  %27 = lshr <4 x i16> %26, splat (i16 8)
  %28 = trunc nuw <4 x i16> %27 to <4 x i8>
  store <4 x i8> %28, ptr %next.gep301, align 1, !alias.scope !91, !noalias !88
  %index.next306 = add nuw i64 %index300, 4       ; 2 uses
  %i.xc = icmp eq i64 %index.next306, %n.vec298
  br i1 %i.xc, label %.lr.ph211.i.i.i.preheader, label %vec.epilog.vector.body299, !llvm.loop !94

.preheader189.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph216.i.i.i.preheader

.lr.ph216.i.i.i.preheader:                        ; preds = %.preheader189.i.i.i
  br i1 %min.iters.check228, label %.lr.ph216.i.i.i.preheader352, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.lr.ph216.i.i.i.preheader
  %bound0224 = icmp ult ptr %scevgep218, %scevgep223
  %bound1225 = icmp ult ptr %scevgep221, %scevgep220
  %found.conflict226 = and i1 %bound0224, %bound1225
  br i1 %found.conflict226, label %.lr.ph216.i.i.i.preheader352, label %vector.ph229

vector.ph229:                                     ; preds = %vector.memcheck217
  %i.xd = getelementptr i8, ptr %i.ll, i64 %i.iw
  %i.xe = getelementptr i8, ptr %i.li, i64 %i.ix
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph229
  %index233 = phi i64 [ 0, %vector.ph229 ], [ %index.next244, %vector.body232 ] ; 3 uses
  %i.xf = shl i64 %index233, 1
  %next.gep234 = getelementptr i8, ptr %i.ll, i64 %i.xf
  %i.xg = mul i64 %index233, 3                    ; 8 uses
  %next.gep235 = getelementptr i8, ptr %i.li, i64 %i.xg ; 3 uses
  %i.xh = getelementptr i8, ptr %i.li, i64 %i.xg  ; 3 uses
  %next.gep236 = getelementptr i8, ptr %i.xh, i64 3
  %i.xi = getelementptr i8, ptr %i.li, i64 %i.xg  ; 3 uses
  %next.gep237 = getelementptr i8, ptr %i.xi, i64 6
  %i.xj = getelementptr i8, ptr %i.li, i64 %i.xg  ; 3 uses
  %next.gep238 = getelementptr i8, ptr %i.xj, i64 9
  %i.xk = getelementptr i8, ptr %i.li, i64 %i.xg  ; 3 uses
  %next.gep239 = getelementptr i8, ptr %i.xk, i64 12
  %i.xl = getelementptr i8, ptr %i.li, i64 %i.xg  ; 3 uses
  %next.gep240 = getelementptr i8, ptr %i.xl, i64 15
  %i.xm = getelementptr i8, ptr %i.li, i64 %i.xg  ; 3 uses
  %next.gep241 = getelementptr i8, ptr %i.xm, i64 18
  %i.xn = getelementptr i8, ptr %i.li, i64 %i.xg  ; 3 uses
  %next.gep242 = getelementptr i8, ptr %i.xn, i64 21
  %i.xo = load i8, ptr %next.gep235, align 1, !alias.scope !95
  %i.xp = load i8, ptr %next.gep236, align 1, !alias.scope !95
  %i.xq = load i8, ptr %next.gep237, align 1, !alias.scope !95
  %i.xr = load i8, ptr %next.gep238, align 1, !alias.scope !95
  %i.xs = load i8, ptr %next.gep239, align 1, !alias.scope !95
  %i.xt = load i8, ptr %next.gep240, align 1, !alias.scope !95
  %i.xu = load i8, ptr %next.gep241, align 1, !alias.scope !95
  %i.xv = load i8, ptr %next.gep242, align 1, !alias.scope !95
  %i.xw = insertelement <8 x i8> poison, i8 %i.xo, i64 0
  %i.xx = insertelement <8 x i8> %i.xw, i8 %i.xp, i64 1
  %i.xy = insertelement <8 x i8> %i.xx, i8 %i.xq, i64 2
  %i.xz = insertelement <8 x i8> %i.xy, i8 %i.xr, i64 3
  %i.ya = insertelement <8 x i8> %i.xz, i8 %i.xs, i64 4
  %i.yb = insertelement <8 x i8> %i.ya, i8 %i.xt, i64 5
  %i.yc = insertelement <8 x i8> %i.yb, i8 %i.xu, i64 6
  %i.yd = insertelement <8 x i8> %i.yc, i8 %i.xv, i64 7
  %i.ye = zext <8 x i8> %i.yd to <8 x i16>
  %i.yf = getelementptr inbounds nuw i8, ptr %next.gep235, i64 1
  %i.yg = getelementptr i8, ptr %i.xh, i64 4
  %i.yh = getelementptr i8, ptr %i.xi, i64 7
  %i.yi = getelementptr i8, ptr %i.xj, i64 10
  %i.yj = getelementptr i8, ptr %i.xk, i64 13
  %i.yk = getelementptr i8, ptr %i.xl, i64 16
  %i.yl = getelementptr i8, ptr %i.xm, i64 19
  %i.ym = getelementptr i8, ptr %i.xn, i64 22
  %i.yn = load i8, ptr %i.yf, align 1, !alias.scope !95
  %i.yo = load i8, ptr %i.yg, align 1, !alias.scope !95
  %i.yp = load i8, ptr %i.yh, align 1, !alias.scope !95
  %i.yq = load i8, ptr %i.yi, align 1, !alias.scope !95
  %i.yr = load i8, ptr %i.yj, align 1, !alias.scope !95
  %i.ys = load i8, ptr %i.yk, align 1, !alias.scope !95
  %i.yt = load i8, ptr %i.yl, align 1, !alias.scope !95
  %i.yu = load i8, ptr %i.ym, align 1, !alias.scope !95
  %i.yv = insertelement <8 x i8> poison, i8 %i.yn, i64 0
  %i.yw = insertelement <8 x i8> %i.yv, i8 %i.yo, i64 1
  %i.yx = insertelement <8 x i8> %i.yw, i8 %i.yp, i64 2
  %i.yy = insertelement <8 x i8> %i.yx, i8 %i.yq, i64 3
  %i.yz = insertelement <8 x i8> %i.yy, i8 %i.yr, i64 4
  %i.za = insertelement <8 x i8> %i.yz, i8 %i.ys, i64 5
  %i.zb = insertelement <8 x i8> %i.za, i8 %i.yt, i64 6
  %i.zc = insertelement <8 x i8> %i.zb, i8 %i.yu, i64 7
  %i.zd = zext <8 x i8> %i.zc to <8 x i16>
  %i.ze = getelementptr inbounds nuw i8, ptr %next.gep235, i64 2
  %i.zf = getelementptr i8, ptr %i.xh, i64 5
  %i.zg = getelementptr i8, ptr %i.xi, i64 8
  %i.zh = getelementptr i8, ptr %i.xj, i64 11
  %i.zi = getelementptr i8, ptr %i.xk, i64 14
  %i.zj = getelementptr i8, ptr %i.xl, i64 17
  %i.zk = getelementptr i8, ptr %i.xm, i64 20
  %i.zl = getelementptr i8, ptr %i.xn, i64 23
  %i.zm = load i8, ptr %i.ze, align 1, !alias.scope !95
  %i.zn = load i8, ptr %i.zf, align 1, !alias.scope !95
  %i.zo = load i8, ptr %i.zg, align 1, !alias.scope !95
  %i.zp = load i8, ptr %i.zh, align 1, !alias.scope !95
  %i.zq = load i8, ptr %i.zi, align 1, !alias.scope !95
  %i.zr = load i8, ptr %i.zj, align 1, !alias.scope !95
  %i.zs = load i8, ptr %i.zk, align 1, !alias.scope !95
  %i.zt = load i8, ptr %i.zl, align 1, !alias.scope !95
  %i.zu = insertelement <8 x i8> poison, i8 %i.zm, i64 0
  %i.zv = insertelement <8 x i8> %i.zu, i8 %i.zn, i64 1
  %i.zw = insertelement <8 x i8> %i.zv, i8 %i.zo, i64 2
  %i.zx = insertelement <8 x i8> %i.zw, i8 %i.zp, i64 3
  %i.zy = insertelement <8 x i8> %i.zx, i8 %i.zq, i64 4
  %i.zz = insertelement <8 x i8> %i.zy, i8 %i.zr, i64 5
  %i.aaa = insertelement <8 x i8> %i.zz, i8 %i.zs, i64 6
  %i.aab = insertelement <8 x i8> %i.aaa, i8 %i.zt, i64 7
  %i.aac = zext <8 x i8> %i.aab to <8 x i16>
  %i.aad = mul nuw nsw <8 x i16> %i.ye, splat (i16 77)
  %i.aae = mul nuw <8 x i16> %i.zd, splat (i16 150)
  %i.aaf = add nuw <8 x i16> %i.aae, %i.aad
  %i.aag = mul nuw nsw <8 x i16> %i.aac, splat (i16 29)
  %i.aah = add nuw <8 x i16> %i.aaf, %i.aag
  %i.aai = lshr <8 x i16> %i.aah, splat (i16 8)
  %i.aaj = trunc nuw <8 x i16> %i.aai to <8 x i8>
  %interleaved.vec243 = shufflevector <8 x i8> %i.aaj, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec243, ptr %next.gep234, align 1, !alias.scope !98, !noalias !95
  %index.next244 = add nuw i64 %index233, 8       ; 2 uses
  %i.aak = icmp eq i64 %index.next244, %n.vec231
  br i1 %i.aak, label %middle.block245, label %vector.body232, !llvm.loop !100

middle.block245:                                  ; preds = %vector.body232
  br i1 %cmp.n246, label %.loopexit.i.i.i, label %.lr.ph216.i.i.i.preheader352

.lr.ph216.i.i.i.preheader352:                     ; preds = %vector.memcheck217, %.lr.ph216.i.i.i.preheader, %middle.block245
  %.8167215.i.i.i.ph = phi i32 [ %.11170198.i.i.i, %vector.memcheck217 ], [ %.11170198.i.i.i, %.lr.ph216.i.i.i.preheader ], [ %i.iv, %middle.block245 ]
  %.8214.i.i.i.ph = phi ptr [ %i.ll, %vector.memcheck217 ], [ %i.ll, %.lr.ph216.i.i.i.preheader ], [ %i.xd, %middle.block245 ]
  %.8150213.i.i.i.ph = phi ptr [ %i.li, %vector.memcheck217 ], [ %i.li, %.lr.ph216.i.i.i.preheader ], [ %i.xe, %middle.block245 ]
  br label %.lr.ph216.i.i.i

.preheader187.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %iter.check193

iter.check193:                                    ; preds = %.preheader187.i.i.i
  br i1 %min.iters.check161, label %.lr.ph221.i.i.i.preheader, label %vector.memcheck150

vector.memcheck150:                               ; preds = %iter.check193
  %bound0157 = icmp ult ptr %scevgep151, %scevgep156
  %bound1158 = icmp ult ptr %scevgep154, %scevgep153
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph221.i.i.i.preheader, label %vector.main.loop.iter.check162

vector.main.loop.iter.check162:                   ; preds = %vector.memcheck150
  br i1 %min.iters.check163, label %vec.epilog.ph197, label %vector.ph164

vector.ph164:                                     ; preds = %vector.main.loop.iter.check162
  %i.aal = getelementptr i8, ptr %i.ll, i64 %n.vec166
  %i.aam = getelementptr i8, ptr %i.li, i64 %i.ja
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph164
  %index168 = phi i64 [ 0, %vector.ph164 ], [ %index.next186, %vector.body167 ] ; 3 uses
  %next.gep169 = getelementptr i8, ptr %i.ll, i64 %index168
  %i.aan = mul i64 %index168, 3                   ; 16 uses
  %next.gep170 = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %i.aao = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep171 = getelementptr i8, ptr %i.aao, i64 3
  %i.aap = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep172 = getelementptr i8, ptr %i.aap, i64 6
  %i.aaq = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep173 = getelementptr i8, ptr %i.aaq, i64 9
  %i.aar = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep174 = getelementptr i8, ptr %i.aar, i64 12
  %i.aas = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep175 = getelementptr i8, ptr %i.aas, i64 15
  %i.aat = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep176 = getelementptr i8, ptr %i.aat, i64 18
  %i.aau = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep177 = getelementptr i8, ptr %i.aau, i64 21
  %i.aav = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep178 = getelementptr i8, ptr %i.aav, i64 24
  %i.aaw = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep179 = getelementptr i8, ptr %i.aaw, i64 27
  %i.aax = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep180 = getelementptr i8, ptr %i.aax, i64 30
  %i.aay = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep181 = getelementptr i8, ptr %i.aay, i64 33
  %i.aaz = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep182 = getelementptr i8, ptr %i.aaz, i64 36
  %i.aba = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep183 = getelementptr i8, ptr %i.aba, i64 39
  %i.abb = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep184 = getelementptr i8, ptr %i.abb, i64 42
  %i.abc = getelementptr i8, ptr %i.li, i64 %i.aan ; 3 uses
  %next.gep185 = getelementptr i8, ptr %i.abc, i64 45
  %i.abd = load i8, ptr %next.gep170, align 1, !alias.scope !101
  %i.abe = load i8, ptr %next.gep171, align 1, !alias.scope !101
  %i.abf = load i8, ptr %next.gep172, align 1, !alias.scope !101
  %i.abg = load i8, ptr %next.gep173, align 1, !alias.scope !101
  %i.abh = load i8, ptr %next.gep174, align 1, !alias.scope !101
  %i.abi = load i8, ptr %next.gep175, align 1, !alias.scope !101
  %i.abj = load i8, ptr %next.gep176, align 1, !alias.scope !101
  %i.abk = load i8, ptr %next.gep177, align 1, !alias.scope !101
  %i.abl = load i8, ptr %next.gep178, align 1, !alias.scope !101
  %i.abm = load i8, ptr %next.gep179, align 1, !alias.scope !101
  %i.abn = load i8, ptr %next.gep180, align 1, !alias.scope !101
  %i.abo = load i8, ptr %next.gep181, align 1, !alias.scope !101
  %i.abp = load i8, ptr %next.gep182, align 1, !alias.scope !101
  %i.abq = load i8, ptr %next.gep183, align 1, !alias.scope !101
  %i.abr = load i8, ptr %next.gep184, align 1, !alias.scope !101
  %i.abs = load i8, ptr %next.gep185, align 1, !alias.scope !101
  %i.abt = insertelement <16 x i8> poison, i8 %i.abd, i64 0
  %i.abu = insertelement <16 x i8> %i.abt, i8 %i.abe, i64 1
  %i.abv = insertelement <16 x i8> %i.abu, i8 %i.abf, i64 2
  %i.abw = insertelement <16 x i8> %i.abv, i8 %i.abg, i64 3
  %i.abx = insertelement <16 x i8> %i.abw, i8 %i.abh, i64 4
  %i.aby = insertelement <16 x i8> %i.abx, i8 %i.abi, i64 5
  %i.abz = insertelement <16 x i8> %i.aby, i8 %i.abj, i64 6
  %i.aca = insertelement <16 x i8> %i.abz, i8 %i.abk, i64 7
  %i.acb = insertelement <16 x i8> %i.aca, i8 %i.abl, i64 8
  %i.acc = insertelement <16 x i8> %i.acb, i8 %i.abm, i64 9
  %i.acd = insertelement <16 x i8> %i.acc, i8 %i.abn, i64 10
  %i.ace = insertelement <16 x i8> %i.acd, i8 %i.abo, i64 11
  %i.acf = insertelement <16 x i8> %i.ace, i8 %i.abp, i64 12
  %i.acg = insertelement <16 x i8> %i.acf, i8 %i.abq, i64 13
  %i.ach = insertelement <16 x i8> %i.acg, i8 %i.abr, i64 14
  %i.aci = insertelement <16 x i8> %i.ach, i8 %i.abs, i64 15
  %i.acj = zext <16 x i8> %i.aci to <16 x i16>
  %i.ack = getelementptr inbounds nuw i8, ptr %next.gep170, i64 1
  %i.acl = getelementptr i8, ptr %i.aao, i64 4
  %i.acm = getelementptr i8, ptr %i.aap, i64 7
  %i.acn = getelementptr i8, ptr %i.aaq, i64 10
  %i.aco = getelementptr i8, ptr %i.aar, i64 13
  %i.acp = getelementptr i8, ptr %i.aas, i64 16
  %i.acq = getelementptr i8, ptr %i.aat, i64 19
  %i.acr = getelementptr i8, ptr %i.aau, i64 22
  %i.acs = getelementptr i8, ptr %i.aav, i64 25
  %i.act = getelementptr i8, ptr %i.aaw, i64 28
  %i.acu = getelementptr i8, ptr %i.aax, i64 31
  %i.acv = getelementptr i8, ptr %i.aay, i64 34
  %i.acw = getelementptr i8, ptr %i.aaz, i64 37
  %i.acx = getelementptr i8, ptr %i.aba, i64 40
  %i.acy = getelementptr i8, ptr %i.abb, i64 43
  %i.acz = getelementptr i8, ptr %i.abc, i64 46
  %i.ada = load i8, ptr %i.ack, align 1, !alias.scope !101
  %i.adb = load i8, ptr %i.acl, align 1, !alias.scope !101
  %i.adc = load i8, ptr %i.acm, align 1, !alias.scope !101
  %i.add = load i8, ptr %i.acn, align 1, !alias.scope !101
  %i.ade = load i8, ptr %i.aco, align 1, !alias.scope !101
  %i.adf = load i8, ptr %i.acp, align 1, !alias.scope !101
  %i.adg = load i8, ptr %i.acq, align 1, !alias.scope !101
  %i.adh = load i8, ptr %i.acr, align 1, !alias.scope !101
  %i.adi = load i8, ptr %i.acs, align 1, !alias.scope !101
  %i.adj = load i8, ptr %i.act, align 1, !alias.scope !101
  %i.adk = load i8, ptr %i.acu, align 1, !alias.scope !101
  %i.adl = load i8, ptr %i.acv, align 1, !alias.scope !101
  %i.adm = load i8, ptr %i.acw, align 1, !alias.scope !101
  %i.adn = load i8, ptr %i.acx, align 1, !alias.scope !101
  %i.ado = load i8, ptr %i.acy, align 1, !alias.scope !101
  %i.adp = load i8, ptr %i.acz, align 1, !alias.scope !101
  %i.adq = insertelement <16 x i8> poison, i8 %i.ada, i64 0
  %i.adr = insertelement <16 x i8> %i.adq, i8 %i.adb, i64 1
  %i.ads = insertelement <16 x i8> %i.adr, i8 %i.adc, i64 2
  %i.adt = insertelement <16 x i8> %i.ads, i8 %i.add, i64 3
  %i.adu = insertelement <16 x i8> %i.adt, i8 %i.ade, i64 4
  %i.adv = insertelement <16 x i8> %i.adu, i8 %i.adf, i64 5
  %i.adw = insertelement <16 x i8> %i.adv, i8 %i.adg, i64 6
  %i.adx = insertelement <16 x i8> %i.adw, i8 %i.adh, i64 7
  %i.ady = insertelement <16 x i8> %i.adx, i8 %i.adi, i64 8
  %i.adz = insertelement <16 x i8> %i.ady, i8 %i.adj, i64 9
  %i.aea = insertelement <16 x i8> %i.adz, i8 %i.adk, i64 10
  %i.aeb = insertelement <16 x i8> %i.aea, i8 %i.adl, i64 11
  %i.aec = insertelement <16 x i8> %i.aeb, i8 %i.adm, i64 12
  %i.aed = insertelement <16 x i8> %i.aec, i8 %i.adn, i64 13
  %i.aee = insertelement <16 x i8> %i.aed, i8 %i.ado, i64 14
  %i.aef = insertelement <16 x i8> %i.aee, i8 %i.adp, i64 15
  %i.aeg = zext <16 x i8> %i.aef to <16 x i16>
  %i.aeh = getelementptr inbounds nuw i8, ptr %next.gep170, i64 2
  %i.aei = getelementptr i8, ptr %i.aao, i64 5
  %i.aej = getelementptr i8, ptr %i.aap, i64 8
  %i.aek = getelementptr i8, ptr %i.aaq, i64 11
  %i.ael = getelementptr i8, ptr %i.aar, i64 14
  %i.aem = getelementptr i8, ptr %i.aas, i64 17
  %i.aen = getelementptr i8, ptr %i.aat, i64 20
  %i.aeo = getelementptr i8, ptr %i.aau, i64 23
  %i.aep = getelementptr i8, ptr %i.aav, i64 26
  %i.aeq = getelementptr i8, ptr %i.aaw, i64 29
  %i.aer = getelementptr i8, ptr %i.aax, i64 32
  %i.aes = getelementptr i8, ptr %i.aay, i64 35
  %i.aet = getelementptr i8, ptr %i.aaz, i64 38
  %i.aeu = getelementptr i8, ptr %i.aba, i64 41
  %i.aev = getelementptr i8, ptr %i.abb, i64 44
  %i.aew = getelementptr i8, ptr %i.abc, i64 47
  %i.aex = load i8, ptr %i.aeh, align 1, !alias.scope !101
  %i.aey = load i8, ptr %i.aei, align 1, !alias.scope !101
  %i.aez = load i8, ptr %i.aej, align 1, !alias.scope !101
  %i.afa = load i8, ptr %i.aek, align 1, !alias.scope !101
  %i.afb = load i8, ptr %i.ael, align 1, !alias.scope !101
  %i.afc = load i8, ptr %i.aem, align 1, !alias.scope !101
  %i.afd = load i8, ptr %i.aen, align 1, !alias.scope !101
  %i.afe = load i8, ptr %i.aeo, align 1, !alias.scope !101
  %i.aff = load i8, ptr %i.aep, align 1, !alias.scope !101
  %i.afg = load i8, ptr %i.aeq, align 1, !alias.scope !101
  %i.afh = load i8, ptr %i.aer, align 1, !alias.scope !101
  %i.afi = load i8, ptr %i.aes, align 1, !alias.scope !101
  %i.afj = load i8, ptr %i.aet, align 1, !alias.scope !101
  %i.afk = load i8, ptr %i.aeu, align 1, !alias.scope !101
  %i.afl = load i8, ptr %i.aev, align 1, !alias.scope !101
  %i.afm = load i8, ptr %i.aew, align 1, !alias.scope !101
  %i.afn = insertelement <16 x i8> poison, i8 %i.aex, i64 0
  %i.afo = insertelement <16 x i8> %i.afn, i8 %i.aey, i64 1
  %i.afp = insertelement <16 x i8> %i.afo, i8 %i.aez, i64 2
  %i.afq = insertelement <16 x i8> %i.afp, i8 %i.afa, i64 3
  %i.afr = insertelement <16 x i8> %i.afq, i8 %i.afb, i64 4
  %i.afs = insertelement <16 x i8> %i.afr, i8 %i.afc, i64 5
  %i.aft = insertelement <16 x i8> %i.afs, i8 %i.afd, i64 6
  %i.afu = insertelement <16 x i8> %i.aft, i8 %i.afe, i64 7
  %i.afv = insertelement <16 x i8> %i.afu, i8 %i.aff, i64 8
  %i.afw = insertelement <16 x i8> %i.afv, i8 %i.afg, i64 9
  %i.afx = insertelement <16 x i8> %i.afw, i8 %i.afh, i64 10
  %i.afy = insertelement <16 x i8> %i.afx, i8 %i.afi, i64 11
  %i.afz = insertelement <16 x i8> %i.afy, i8 %i.afj, i64 12
  %i.aga = insertelement <16 x i8> %i.afz, i8 %i.afk, i64 13
  %i.agb = insertelement <16 x i8> %i.aga, i8 %i.afl, i64 14
  %i.agc = insertelement <16 x i8> %i.agb, i8 %i.afm, i64 15
  %i.agd = zext <16 x i8> %i.agc to <16 x i16>
  %i.age = mul nuw nsw <16 x i16> %i.acj, splat (i16 77)
  %i.agf = mul nuw <16 x i16> %i.aeg, splat (i16 150)
  %i.agg = add nuw <16 x i16> %i.agf, %i.age
  %i.agh = mul nuw nsw <16 x i16> %i.agd, splat (i16 29)
  %i.agi = add nuw <16 x i16> %i.agg, %i.agh
  %i.agj = lshr <16 x i16> %i.agi, splat (i16 8)
  %i.agk = trunc nuw <16 x i16> %i.agj to <16 x i8>
  store <16 x i8> %i.agk, ptr %next.gep169, align 1, !alias.scope !104, !noalias !101
  %index.next186 = add nuw i64 %index168, 16      ; 2 uses
  %i.agl = icmp eq i64 %index.next186, %n.vec166
  br i1 %i.agl, label %middle.block187, label %vector.body167, !llvm.loop !106

middle.block187:                                  ; preds = %vector.body167
  br i1 %cmp.n188, label %.loopexit.i.i.i, label %vec.epilog.iter.check195

vec.epilog.iter.check195:                         ; preds = %middle.block187
  br i1 %min.epilog.iters.check196.not.not, label %.lr.ph221.i.i.i.preheader, label %vec.epilog.ph197, !prof !107

vec.epilog.ph197:                                 ; preds = %vector.main.loop.iter.check162, %vec.epilog.iter.check195
  %vec.epilog.resume.val189 = phi i64 [ %n.vec166, %vec.epilog.iter.check195 ], [ 0, %vector.main.loop.iter.check162 ]
  %i.agm = getelementptr i8, ptr %i.ll, i64 %n.vec199
  %i.agn = getelementptr i8, ptr %i.li, i64 %i.jd
  br label %vec.epilog.vector.body200

vec.epilog.vector.body200:                        ; preds = %vec.epilog.vector.body200, %vec.epilog.ph197
  %index201 = phi i64 [ %vec.epilog.resume.val189, %vec.epilog.ph197 ], [ %index.next211, %vec.epilog.vector.body200 ] ; 3 uses
  %next.gep202 = getelementptr i8, ptr %i.ll, i64 %index201
  %i.ago = mul i64 %index201, 3                   ; 8 uses
  %next.gep203 = getelementptr i8, ptr %i.li, i64 %i.ago ; 3 uses
  %i.agp = getelementptr i8, ptr %i.li, i64 %i.ago ; 3 uses
  %next.gep204 = getelementptr i8, ptr %i.agp, i64 3
  %i.agq = getelementptr i8, ptr %i.li, i64 %i.ago ; 3 uses
  %next.gep205 = getelementptr i8, ptr %i.agq, i64 6
  %i.agr = getelementptr i8, ptr %i.li, i64 %i.ago ; 3 uses
  %next.gep206 = getelementptr i8, ptr %i.agr, i64 9
  %i.ags = getelementptr i8, ptr %i.li, i64 %i.ago ; 3 uses
  %next.gep207 = getelementptr i8, ptr %i.ags, i64 12
  %i.agt = getelementptr i8, ptr %i.li, i64 %i.ago ; 3 uses
  %next.gep208 = getelementptr i8, ptr %i.agt, i64 15
  %i.agu = getelementptr i8, ptr %i.li, i64 %i.ago ; 3 uses
  %next.gep209 = getelementptr i8, ptr %i.agu, i64 18
  %i.agv = getelementptr i8, ptr %i.li, i64 %i.ago ; 3 uses
  %next.gep210 = getelementptr i8, ptr %i.agv, i64 21
  %i.agw = load i8, ptr %next.gep203, align 1, !alias.scope !101
  %i.agx = load i8, ptr %next.gep204, align 1, !alias.scope !101
  %i.agy = load i8, ptr %next.gep205, align 1, !alias.scope !101
  %i.agz = load i8, ptr %next.gep206, align 1, !alias.scope !101
  %i.aha = load i8, ptr %next.gep207, align 1, !alias.scope !101
  %i.ahb = load i8, ptr %next.gep208, align 1, !alias.scope !101
  %i.ahc = load i8, ptr %next.gep209, align 1, !alias.scope !101
  %i.ahd = load i8, ptr %next.gep210, align 1, !alias.scope !101
  %i.ahe = insertelement <8 x i8> poison, i8 %i.agw, i64 0
  %i.ahf = insertelement <8 x i8> %i.ahe, i8 %i.agx, i64 1
  %i.ahg = insertelement <8 x i8> %i.ahf, i8 %i.agy, i64 2
  %i.ahh = insertelement <8 x i8> %i.ahg, i8 %i.agz, i64 3
  %i.ahi = insertelement <8 x i8> %i.ahh, i8 %i.aha, i64 4
  %i.ahj = insertelement <8 x i8> %i.ahi, i8 %i.ahb, i64 5
  %i.ahk = insertelement <8 x i8> %i.ahj, i8 %i.ahc, i64 6
  %i.ahl = insertelement <8 x i8> %i.ahk, i8 %i.ahd, i64 7
  %i.ahm = zext <8 x i8> %i.ahl to <8 x i16>
  %i.ahn = getelementptr inbounds nuw i8, ptr %next.gep203, i64 1
  %i.aho = getelementptr i8, ptr %i.agp, i64 4
  %i.ahp = getelementptr i8, ptr %i.agq, i64 7
  %i.ahq = getelementptr i8, ptr %i.agr, i64 10
  %i.ahr = getelementptr i8, ptr %i.ags, i64 13
  %i.ahs = getelementptr i8, ptr %i.agt, i64 16
  %i.aht = getelementptr i8, ptr %i.agu, i64 19
  %i.ahu = getelementptr i8, ptr %i.agv, i64 22
  %i.ahv = load i8, ptr %i.ahn, align 1, !alias.scope !101
  %i.ahw = load i8, ptr %i.aho, align 1, !alias.scope !101
  %i.ahx = load i8, ptr %i.ahp, align 1, !alias.scope !101
  %i.ahy = load i8, ptr %i.ahq, align 1, !alias.scope !101
  %i.ahz = load i8, ptr %i.ahr, align 1, !alias.scope !101
  %i.aia = load i8, ptr %i.ahs, align 1, !alias.scope !101
  %i.aib = load i8, ptr %i.aht, align 1, !alias.scope !101
  %i.aic = load i8, ptr %i.ahu, align 1, !alias.scope !101
  %i.aid = insertelement <8 x i8> poison, i8 %i.ahv, i64 0
  %i.aie = insertelement <8 x i8> %i.aid, i8 %i.ahw, i64 1
  %i.aif = insertelement <8 x i8> %i.aie, i8 %i.ahx, i64 2
  %i.aig = insertelement <8 x i8> %i.aif, i8 %i.ahy, i64 3
  %i.aih = insertelement <8 x i8> %i.aig, i8 %i.ahz, i64 4
  %i.aii = insertelement <8 x i8> %i.aih, i8 %i.aia, i64 5
  %i.aij = insertelement <8 x i8> %i.aii, i8 %i.aib, i64 6
  %i.aik = insertelement <8 x i8> %i.aij, i8 %i.aic, i64 7
  %i.ail = zext <8 x i8> %i.aik to <8 x i16>
  %i.aim = getelementptr inbounds nuw i8, ptr %next.gep203, i64 2
  %i.ain = getelementptr i8, ptr %i.agp, i64 5
  %i.aio = getelementptr i8, ptr %i.agq, i64 8
  %i.aip = getelementptr i8, ptr %i.agr, i64 11
  %i.aiq = getelementptr i8, ptr %i.ags, i64 14
  %i.air = getelementptr i8, ptr %i.agt, i64 17
  %i.ais = getelementptr i8, ptr %i.agu, i64 20
  %i.ait = getelementptr i8, ptr %i.agv, i64 23
  %i.aiu = load i8, ptr %i.aim, align 1, !alias.scope !101
  %i.aiv = load i8, ptr %i.ain, align 1, !alias.scope !101
  %i.aiw = load i8, ptr %i.aio, align 1, !alias.scope !101
  %i.aix = load i8, ptr %i.aip, align 1, !alias.scope !101
  %i.aiy = load i8, ptr %i.aiq, align 1, !alias.scope !101
  %i.aiz = load i8, ptr %i.air, align 1, !alias.scope !101
  %i.aja = load i8, ptr %i.ais, align 1, !alias.scope !101
  %i.ajb = load i8, ptr %i.ait, align 1, !alias.scope !101
  %i.ajc = insertelement <8 x i8> poison, i8 %i.aiu, i64 0
  %i.ajd = insertelement <8 x i8> %i.ajc, i8 %i.aiv, i64 1
  %i.aje = insertelement <8 x i8> %i.ajd, i8 %i.aiw, i64 2
  %i.ajf = insertelement <8 x i8> %i.aje, i8 %i.aix, i64 3
  %i.ajg = insertelement <8 x i8> %i.ajf, i8 %i.aiy, i64 4
  %i.ajh = insertelement <8 x i8> %i.ajg, i8 %i.aiz, i64 5
  %i.aji = insertelement <8 x i8> %i.ajh, i8 %i.aja, i64 6
  %i.ajj = insertelement <8 x i8> %i.aji, i8 %i.ajb, i64 7
  %i.ajk = zext <8 x i8> %i.ajj to <8 x i16>
  %i.ajl = mul nuw nsw <8 x i16> %i.ahm, splat (i16 77)
  %i.ajm = mul nuw <8 x i16> %i.ail, splat (i16 150)
  %i.ajn = add nuw <8 x i16> %i.ajm, %i.ajl
  %i.ajo = mul nuw nsw <8 x i16> %i.ajk, splat (i16 29)
  %i.ajp = add nuw <8 x i16> %i.ajn, %i.ajo
  %i.ajq = lshr <8 x i16> %i.ajp, splat (i16 8)
  %i.ajr = trunc nuw <8 x i16> %i.ajq to <8 x i8>
  store <8 x i8> %i.ajr, ptr %next.gep202, align 1, !alias.scope !104, !noalias !101
  %index.next211 = add nuw i64 %index201, 8       ; 2 uses
  %i.ajs = icmp eq i64 %index.next211, %n.vec199
  br i1 %i.ajs, label %vec.epilog.middle.block212, label %vec.epilog.vector.body200, !llvm.loop !108

vec.epilog.middle.block212:                       ; preds = %vec.epilog.vector.body200
  br i1 %cmp.n213, label %.loopexit.i.i.i, label %.lr.ph221.i.i.i.preheader

.lr.ph221.i.i.i.preheader:                        ; preds = %vector.memcheck150, %iter.check193, %vec.epilog.iter.check195, %vec.epilog.middle.block212
  %.7166220.i.i.i.ph = phi i32 [ %.11170198.i.i.i, %iter.check193 ], [ %.11170198.i.i.i, %vector.memcheck150 ], [ %i.iz, %vec.epilog.iter.check195 ], [ %i.jc, %vec.epilog.middle.block212 ]
  %.7219.i.i.i.ph = phi ptr [ %i.ll, %iter.check193 ], [ %i.ll, %vector.memcheck150 ], [ %i.aal, %vec.epilog.iter.check195 ], [ %i.agm, %vec.epilog.middle.block212 ]
  %.7149218.i.i.i.ph = phi ptr [ %i.li, %iter.check193 ], [ %i.li, %vector.memcheck150 ], [ %i.aam, %vec.epilog.iter.check195 ], [ %i.agn, %vec.epilog.middle.block212 ]
  br label %.lr.ph221.i.i.i

.preheader185.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph226.i.i.i.preheader

.lr.ph226.i.i.i.preheader:                        ; preds = %.preheader185.i.i.i
  br i1 %lcmp.mod396.not, label %.lr.ph226.i.i.i.prol.loopexit, label %.lr.ph226.i.i.i.prol

.lr.ph226.i.i.i.prol:                             ; preds = %.lr.ph226.i.i.i.preheader
  %i.ajt = load i8, ptr %i.li, align 1
  store i8 %i.ajt, ptr %i.ll, align 1
  %i.aju = getelementptr inbounds nuw i8, ptr %i.li, i64 1
  %i.ajv = load i8, ptr %i.aju, align 1
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ll, i64 1
  store i8 %i.ajv, ptr %i.ajw, align 1
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.li, i64 2
  %i.ajy = load i8, ptr %i.ajx, align 1
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ll, i64 2
  store i8 %i.ajy, ptr %i.ajz, align 1
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ll, i64 3
  store i8 -1, ptr %i.aka, align 1
  %i.akb = getelementptr inbounds nuw i8, ptr %i.li, i64 3
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  br label %.lr.ph226.i.i.i.prol.loopexit

.lr.ph226.i.i.i.prol.loopexit:                    ; preds = %.lr.ph226.i.i.i.prol, %.lr.ph226.i.i.i.preheader
  %.6165225.i.i.i.unr = phi i32 [ %.11170198.i.i.i, %.lr.ph226.i.i.i.preheader ], [ %.6165.i.i.i.prol, %.lr.ph226.i.i.i.prol ]
  %.6224.i.i.i.unr = phi ptr [ %i.ll, %.lr.ph226.i.i.i.preheader ], [ %i.akc, %.lr.ph226.i.i.i.prol ]
  %.6148223.i.i.i.unr = phi ptr [ %i.li, %.lr.ph226.i.i.i.preheader ], [ %i.akb, %.lr.ph226.i.i.i.prol ]
  br i1 %i.je, label %.loopexit.i.i.i, label %.lr.ph226.i.i.i

.preheader183.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph231.i.i.i.preheader

.lr.ph231.i.i.i.preheader:                        ; preds = %.preheader183.i.i.i
  br i1 %lcmp.mod399.not, label %.lr.ph231.i.i.i.prol.loopexit, label %.lr.ph231.i.i.i.prol

.lr.ph231.i.i.i.prol:                             ; preds = %.lr.ph231.i.i.i.preheader
  %i.akd = load i8, ptr %i.li, align 1            ; 3 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ll, i64 2
  store i8 %i.akd, ptr %i.ake, align 1
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ll, i64 1
  store i8 %i.akd, ptr %i.akf, align 1
  store i8 %i.akd, ptr %i.ll, align 1
  %i.akg = getelementptr inbounds nuw i8, ptr %i.li, i64 1
  %i.akh = load i8, ptr %i.akg, align 1
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ll, i64 3
  store i8 %i.akh, ptr %i.aki, align 1
  %i.akj = getelementptr inbounds nuw i8, ptr %i.li, i64 2
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  br label %.lr.ph231.i.i.i.prol.loopexit

.lr.ph231.i.i.i.prol.loopexit:                    ; preds = %.lr.ph231.i.i.i.prol, %.lr.ph231.i.i.i.preheader
  %.5164230.i.i.i.unr = phi i32 [ %.11170198.i.i.i, %.lr.ph231.i.i.i.preheader ], [ %.5164.i.i.i.prol, %.lr.ph231.i.i.i.prol ]
  %.5229.i.i.i.unr = phi ptr [ %i.ll, %.lr.ph231.i.i.i.preheader ], [ %i.akk, %.lr.ph231.i.i.i.prol ]
  %.5147228.i.i.i.unr = phi ptr [ %i.li, %.lr.ph231.i.i.i.preheader ], [ %i.akj, %.lr.ph231.i.i.i.prol ]
  br i1 %i.jf, label %.loopexit.i.i.i, label %.lr.ph231.i.i.i

.preheader181.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph236.i.i.i.preheader

.lr.ph236.i.i.i.preheader:                        ; preds = %.preheader181.i.i.i
  br i1 %lcmp.mod402.not, label %.lr.ph236.i.i.i.prol.loopexit, label %.lr.ph236.i.i.i.prol

.lr.ph236.i.i.i.prol:                             ; preds = %.lr.ph236.i.i.i.preheader, %.lr.ph236.i.i.i.prol
  %.4163235.i.i.i.prol = phi i32 [ %.4163.i.i.i.prol, %.lr.ph236.i.i.i.prol ], [ %.11170198.i.i.i, %.lr.ph236.i.i.i.preheader ]
  %.4234.i.i.i.prol = phi ptr [ %i.akp, %.lr.ph236.i.i.i.prol ], [ %i.ll, %.lr.ph236.i.i.i.preheader ] ; 4 uses
  %.4146233.i.i.i.prol = phi ptr [ %i.ako, %.lr.ph236.i.i.i.prol ], [ %i.li, %.lr.ph236.i.i.i.preheader ] ; 2 uses
  %prol.iter403 = phi i32 [ %prol.iter403.next, %.lr.ph236.i.i.i.prol ], [ 0, %.lr.ph236.i.i.i.preheader ]
  %i.akl = load i8, ptr %.4146233.i.i.i.prol, align 1 ; 3 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %.4234.i.i.i.prol, i64 2
  store i8 %i.akl, ptr %i.akm, align 1
  %i.akn = getelementptr inbounds nuw i8, ptr %.4234.i.i.i.prol, i64 1
  store i8 %i.akl, ptr %i.akn, align 1
  store i8 %i.akl, ptr %.4234.i.i.i.prol, align 1
  %i.ako = getelementptr inbounds nuw i8, ptr %.4146233.i.i.i.prol, i64 2 ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %.4234.i.i.i.prol, i64 3 ; 2 uses
  %.4163.i.i.i.prol = add i32 %.4163235.i.i.i.prol, -1 ; 2 uses
  %prol.iter403.next = add i32 %prol.iter403, 1   ; 2 uses
  %prol.iter403.cmp.not = icmp eq i32 %prol.iter403.next, %xtraiter401
  br i1 %prol.iter403.cmp.not, label %.lr.ph236.i.i.i.prol.loopexit, label %.lr.ph236.i.i.i.prol, !llvm.loop !109

.lr.ph236.i.i.i.prol.loopexit:                    ; preds = %.lr.ph236.i.i.i.prol, %.lr.ph236.i.i.i.preheader
  %.4163235.i.i.i.unr = phi i32 [ %.11170198.i.i.i, %.lr.ph236.i.i.i.preheader ], [ %.4163.i.i.i.prol, %.lr.ph236.i.i.i.prol ]
  %.4234.i.i.i.unr = phi ptr [ %i.ll, %.lr.ph236.i.i.i.preheader ], [ %i.akp, %.lr.ph236.i.i.i.prol ]
  %.4146233.i.i.i.unr = phi ptr [ %i.li, %.lr.ph236.i.i.i.preheader ], [ %i.ako, %.lr.ph236.i.i.i.prol ]
  br i1 %i.jg, label %.loopexit.i.i.i, label %.lr.ph236.i.i.i

.preheader179.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %iter.check127

iter.check127:                                    ; preds = %.preheader179.i.i.i
  br i1 %min.iters.check96, label %.lr.ph241.i.i.i.preheader, label %vector.memcheck85

vector.memcheck85:                                ; preds = %iter.check127
  %bound092 = icmp ult ptr %scevgep86, %scevgep91
  %bound193 = icmp ult ptr %scevgep89, %scevgep88
  %found.conflict94 = and i1 %bound092, %bound193
  br i1 %found.conflict94, label %.lr.ph241.i.i.i.preheader, label %vector.main.loop.iter.check97

vector.main.loop.iter.check97:                    ; preds = %vector.memcheck85
  br i1 %min.iters.check98, label %vec.epilog.ph131, label %vector.ph99

vector.ph99:                                      ; preds = %vector.main.loop.iter.check97
  %i.akq = getelementptr i8, ptr %i.ll, i64 %n.vec101
  %i.akr = getelementptr i8, ptr %i.li, i64 %i.jl
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph99
  %index103 = phi i64 [ 0, %vector.ph99 ], [ %index.next121, %vector.body102 ] ; 3 uses
  %next.gep104 = getelementptr i8, ptr %i.ll, i64 %index103
  %i.aks = shl i64 %index103, 1                   ; 16 uses
  %next.gep105 = getelementptr i8, ptr %i.li, i64 %i.aks
  %i.akt = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep106 = getelementptr i8, ptr %i.akt, i64 2
  %i.aku = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep107 = getelementptr i8, ptr %i.aku, i64 4
  %i.akv = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep108 = getelementptr i8, ptr %i.akv, i64 6
  %i.akw = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep109 = getelementptr i8, ptr %i.akw, i64 8
  %i.akx = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep110 = getelementptr i8, ptr %i.akx, i64 10
  %i.aky = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep111 = getelementptr i8, ptr %i.aky, i64 12
  %i.akz = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep112 = getelementptr i8, ptr %i.akz, i64 14
  %i.ala = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep113 = getelementptr i8, ptr %i.ala, i64 16
  %i.alb = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep114 = getelementptr i8, ptr %i.alb, i64 18
  %i.alc = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep115 = getelementptr i8, ptr %i.alc, i64 20
  %i.ald = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep116 = getelementptr i8, ptr %i.ald, i64 22
  %i.ale = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep117 = getelementptr i8, ptr %i.ale, i64 24
  %i.alf = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep118 = getelementptr i8, ptr %i.alf, i64 26
  %i.alg = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep119 = getelementptr i8, ptr %i.alg, i64 28
  %i.alh = getelementptr i8, ptr %i.li, i64 %i.aks
  %next.gep120 = getelementptr i8, ptr %i.alh, i64 30
  %i.ali = load i8, ptr %next.gep105, align 1, !alias.scope !110
  %i.alj = load i8, ptr %next.gep106, align 1, !alias.scope !110
  %i.alk = load i8, ptr %next.gep107, align 1, !alias.scope !110
  %i.all = load i8, ptr %next.gep108, align 1, !alias.scope !110
  %i.alm = load i8, ptr %next.gep109, align 1, !alias.scope !110
  %i.aln = load i8, ptr %next.gep110, align 1, !alias.scope !110
  %i.alo = load i8, ptr %next.gep111, align 1, !alias.scope !110
  %i.alp = load i8, ptr %next.gep112, align 1, !alias.scope !110
  %i.alq = load i8, ptr %next.gep113, align 1, !alias.scope !110
  %i.alr = load i8, ptr %next.gep114, align 1, !alias.scope !110
  %i.als = load i8, ptr %next.gep115, align 1, !alias.scope !110
  %i.alt = load i8, ptr %next.gep116, align 1, !alias.scope !110
  %i.alu = load i8, ptr %next.gep117, align 1, !alias.scope !110
  %i.alv = load i8, ptr %next.gep118, align 1, !alias.scope !110
  %i.alw = load i8, ptr %next.gep119, align 1, !alias.scope !110
  %i.alx = load i8, ptr %next.gep120, align 1, !alias.scope !110
  %i.aly = insertelement <16 x i8> poison, i8 %i.ali, i64 0
  %i.alz = insertelement <16 x i8> %i.aly, i8 %i.alj, i64 1
  %i.ama = insertelement <16 x i8> %i.alz, i8 %i.alk, i64 2
  %i.amb = insertelement <16 x i8> %i.ama, i8 %i.all, i64 3
  %i.amc = insertelement <16 x i8> %i.amb, i8 %i.alm, i64 4
  %i.amd = insertelement <16 x i8> %i.amc, i8 %i.aln, i64 5
  %i.ame = insertelement <16 x i8> %i.amd, i8 %i.alo, i64 6
  %i.amf = insertelement <16 x i8> %i.ame, i8 %i.alp, i64 7
  %i.amg = insertelement <16 x i8> %i.amf, i8 %i.alq, i64 8
  %i.amh = insertelement <16 x i8> %i.amg, i8 %i.alr, i64 9
  %i.ami = insertelement <16 x i8> %i.amh, i8 %i.als, i64 10
  %i.amj = insertelement <16 x i8> %i.ami, i8 %i.alt, i64 11
  %i.amk = insertelement <16 x i8> %i.amj, i8 %i.alu, i64 12
  %i.aml = insertelement <16 x i8> %i.amk, i8 %i.alv, i64 13
  %i.amm = insertelement <16 x i8> %i.aml, i8 %i.alw, i64 14
  %i.amn = insertelement <16 x i8> %i.amm, i8 %i.alx, i64 15
  store <16 x i8> %i.amn, ptr %next.gep104, align 1, !alias.scope !113, !noalias !110
  %index.next121 = add nuw i64 %index103, 16      ; 2 uses
  %i.amo = icmp eq i64 %index.next121, %n.vec101
  br i1 %i.amo, label %vec.epilog.iter.check129, label %vector.body102, !llvm.loop !115

vec.epilog.iter.check129:                         ; preds = %vector.body102
  br i1 %min.epilog.iters.check130, label %.lr.ph241.i.i.i.preheader, label %vec.epilog.ph131, !prof !107

.lr.ph241.i.i.i.preheader:                        ; preds = %vec.epilog.vector.body134, %vector.memcheck85, %iter.check127, %vec.epilog.iter.check129
  %.3162240.i.i.i.ph = phi i32 [ %.11170198.i.i.i, %iter.check127 ], [ %.11170198.i.i.i, %vector.memcheck85 ], [ %i.jk, %vec.epilog.iter.check129 ], [ %i.jp, %vec.epilog.vector.body134 ]
  %.3239.i.i.i.ph = phi ptr [ %i.ll, %iter.check127 ], [ %i.ll, %vector.memcheck85 ], [ %i.akq, %vec.epilog.iter.check129 ], [ %i.amp, %vec.epilog.vector.body134 ]
  %.3145238.i.i.i.ph = phi ptr [ %i.li, %iter.check127 ], [ %i.li, %vector.memcheck85 ], [ %i.akr, %vec.epilog.iter.check129 ], [ %i.amq, %vec.epilog.vector.body134 ]
  br label %.lr.ph241.i.i.i

vec.epilog.ph131:                                 ; preds = %vector.main.loop.iter.check97, %vec.epilog.iter.check129
  %vec.epilog.resume.val123 = phi i64 [ %n.vec101, %vec.epilog.iter.check129 ], [ 0, %vector.main.loop.iter.check97 ]
  %i.amp = getelementptr i8, ptr %i.ll, i64 %n.vec133
  %i.amq = getelementptr i8, ptr %i.li, i64 %i.jq
  br label %vec.epilog.vector.body134

vec.epilog.vector.body134:                        ; preds = %vec.epilog.vector.body134, %vec.epilog.ph131
  %index135 = phi i64 [ %vec.epilog.resume.val123, %vec.epilog.ph131 ], [ %index.next145, %vec.epilog.vector.body134 ] ; 3 uses
  %next.gep136 = getelementptr i8, ptr %i.ll, i64 %index135
  %i.amr = shl i64 %index135, 1                   ; 8 uses
  %next.gep137 = getelementptr i8, ptr %i.li, i64 %i.amr
  %i.ams = getelementptr i8, ptr %i.li, i64 %i.amr
  %next.gep138 = getelementptr i8, ptr %i.ams, i64 2
  %i.amt = getelementptr i8, ptr %i.li, i64 %i.amr
  %next.gep139 = getelementptr i8, ptr %i.amt, i64 4
  %i.amu = getelementptr i8, ptr %i.li, i64 %i.amr
  %next.gep140 = getelementptr i8, ptr %i.amu, i64 6
  %i.amv = getelementptr i8, ptr %i.li, i64 %i.amr
  %next.gep141 = getelementptr i8, ptr %i.amv, i64 8
  %i.amw = getelementptr i8, ptr %i.li, i64 %i.amr
  %next.gep142 = getelementptr i8, ptr %i.amw, i64 10
  %i.amx = getelementptr i8, ptr %i.li, i64 %i.amr
  %next.gep143 = getelementptr i8, ptr %i.amx, i64 12
  %i.amy = getelementptr i8, ptr %i.li, i64 %i.amr
  %next.gep144 = getelementptr i8, ptr %i.amy, i64 14
  %i.amz = load i8, ptr %next.gep137, align 1, !alias.scope !110
  %i.ana = load i8, ptr %next.gep138, align 1, !alias.scope !110
  %i.anb = load i8, ptr %next.gep139, align 1, !alias.scope !110
  %i.anc = load i8, ptr %next.gep140, align 1, !alias.scope !110
  %i.and = load i8, ptr %next.gep141, align 1, !alias.scope !110
  %i.ane = load i8, ptr %next.gep142, align 1, !alias.scope !110
  %i.anf = load i8, ptr %next.gep143, align 1, !alias.scope !110
  %i.ang = load i8, ptr %next.gep144, align 1, !alias.scope !110
  %i.anh = insertelement <8 x i8> poison, i8 %i.amz, i64 0
  %i.ani = insertelement <8 x i8> %i.anh, i8 %i.ana, i64 1
  %i.anj = insertelement <8 x i8> %i.ani, i8 %i.anb, i64 2
  %i.ank = insertelement <8 x i8> %i.anj, i8 %i.anc, i64 3
  %i.anl = insertelement <8 x i8> %i.ank, i8 %i.and, i64 4
  %i.anm = insertelement <8 x i8> %i.anl, i8 %i.ane, i64 5
  %i.ann = insertelement <8 x i8> %i.anm, i8 %i.anf, i64 6
  %i.ano = insertelement <8 x i8> %i.ann, i8 %i.ang, i64 7
  store <8 x i8> %i.ano, ptr %next.gep136, align 1, !alias.scope !113, !noalias !110
  %index.next145 = add nuw i64 %index135, 8       ; 2 uses
  %i.anp = icmp eq i64 %index.next145, %n.vec133
  br i1 %i.anp, label %.lr.ph241.i.i.i.preheader, label %vec.epilog.vector.body134, !llvm.loop !116

.preheader177.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph246.i.i.i.preheader

.lr.ph246.i.i.i.preheader:                        ; preds = %.preheader177.i.i.i
  br i1 %lcmp.mod405.not, label %.lr.ph246.i.i.i.prol.loopexit, label %.lr.ph246.i.i.i.prol

.lr.ph246.i.i.i.prol:                             ; preds = %.lr.ph246.i.i.i.preheader, %.lr.ph246.i.i.i.prol
  %.2161245.i.i.i.prol = phi i32 [ %.2161.i.i.i.prol, %.lr.ph246.i.i.i.prol ], [ %.11170198.i.i.i, %.lr.ph246.i.i.i.preheader ]
  %.2244.i.i.i.prol = phi ptr [ %i.anv, %.lr.ph246.i.i.i.prol ], [ %i.ll, %.lr.ph246.i.i.i.preheader ] ; 5 uses
  %.2144243.i.i.i.prol = phi ptr [ %i.anu, %.lr.ph246.i.i.i.prol ], [ %i.li, %.lr.ph246.i.i.i.preheader ] ; 2 uses
  %prol.iter406 = phi i32 [ %prol.iter406.next, %.lr.ph246.i.i.i.prol ], [ 0, %.lr.ph246.i.i.i.preheader ]
  %i.anq = load i8, ptr %.2144243.i.i.i.prol, align 1 ; 3 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %.2244.i.i.i.prol, i64 2
  store i8 %i.anq, ptr %i.anr, align 1
  %i.ans = getelementptr inbounds nuw i8, ptr %.2244.i.i.i.prol, i64 1
  store i8 %i.anq, ptr %i.ans, align 1
  store i8 %i.anq, ptr %.2244.i.i.i.prol, align 1
  %i.ant = getelementptr inbounds nuw i8, ptr %.2244.i.i.i.prol, i64 3
  store i8 -1, ptr %i.ant, align 1
  %i.anu = getelementptr inbounds nuw i8, ptr %.2144243.i.i.i.prol, i64 1 ; 2 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %.2244.i.i.i.prol, i64 4 ; 2 uses
  %.2161.i.i.i.prol = add i32 %.2161245.i.i.i.prol, -1 ; 2 uses
  %prol.iter406.next = add i32 %prol.iter406, 1   ; 2 uses
  %prol.iter406.cmp.not = icmp eq i32 %prol.iter406.next, %xtraiter404
  br i1 %prol.iter406.cmp.not, label %.lr.ph246.i.i.i.prol.loopexit, label %.lr.ph246.i.i.i.prol, !llvm.loop !117

.lr.ph246.i.i.i.prol.loopexit:                    ; preds = %.lr.ph246.i.i.i.prol, %.lr.ph246.i.i.i.preheader
  %.2161245.i.i.i.unr = phi i32 [ %.11170198.i.i.i, %.lr.ph246.i.i.i.preheader ], [ %.2161.i.i.i.prol, %.lr.ph246.i.i.i.prol ]
  %.2244.i.i.i.unr = phi ptr [ %i.ll, %.lr.ph246.i.i.i.preheader ], [ %i.anv, %.lr.ph246.i.i.i.prol ]
  %.2144243.i.i.i.unr = phi ptr [ %i.li, %.lr.ph246.i.i.i.preheader ], [ %i.anu, %.lr.ph246.i.i.i.prol ]
  br i1 %i.jr, label %.loopexit.i.i.i, label %.lr.ph246.i.i.i

.preheader175.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph251.i.i.i.preheader

.lr.ph251.i.i.i.preheader:                        ; preds = %.preheader175.i.i.i
  br i1 %lcmp.mod408.not, label %.lr.ph251.i.i.i.prol.loopexit, label %.lr.ph251.i.i.i.prol

.lr.ph251.i.i.i.prol:                             ; preds = %.lr.ph251.i.i.i.preheader, %.lr.ph251.i.i.i.prol
  %.1160250.i.i.i.prol = phi i32 [ %.1160.i.i.i.prol, %.lr.ph251.i.i.i.prol ], [ %.11170198.i.i.i, %.lr.ph251.i.i.i.preheader ]
  %.1249.i.i.i.prol = phi ptr [ %i.aoa, %.lr.ph251.i.i.i.prol ], [ %i.ll, %.lr.ph251.i.i.i.preheader ] ; 4 uses
  %.1143248.i.i.i.prol = phi ptr [ %i.anz, %.lr.ph251.i.i.i.prol ], [ %i.li, %.lr.ph251.i.i.i.preheader ] ; 2 uses
  %prol.iter409 = phi i32 [ %prol.iter409.next, %.lr.ph251.i.i.i.prol ], [ 0, %.lr.ph251.i.i.i.preheader ]
  %i.anw = load i8, ptr %.1143248.i.i.i.prol, align 1 ; 3 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %.1249.i.i.i.prol, i64 2
  store i8 %i.anw, ptr %i.anx, align 1
  %i.any = getelementptr inbounds nuw i8, ptr %.1249.i.i.i.prol, i64 1
  store i8 %i.anw, ptr %i.any, align 1
  store i8 %i.anw, ptr %.1249.i.i.i.prol, align 1
  %i.anz = getelementptr inbounds nuw i8, ptr %.1143248.i.i.i.prol, i64 1 ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %.1249.i.i.i.prol, i64 3 ; 2 uses
  %.1160.i.i.i.prol = add i32 %.1160250.i.i.i.prol, -1 ; 2 uses
  %prol.iter409.next = add i32 %prol.iter409, 1   ; 2 uses
  %prol.iter409.cmp.not = icmp eq i32 %prol.iter409.next, %xtraiter407
  br i1 %prol.iter409.cmp.not, label %.lr.ph251.i.i.i.prol.loopexit, label %.lr.ph251.i.i.i.prol, !llvm.loop !118

.lr.ph251.i.i.i.prol.loopexit:                    ; preds = %.lr.ph251.i.i.i.prol, %.lr.ph251.i.i.i.preheader
  %.1160250.i.i.i.unr = phi i32 [ %.11170198.i.i.i, %.lr.ph251.i.i.i.preheader ], [ %.1160.i.i.i.prol, %.lr.ph251.i.i.i.prol ]
  %.1249.i.i.i.unr = phi ptr [ %i.ll, %.lr.ph251.i.i.i.preheader ], [ %i.aoa, %.lr.ph251.i.i.i.prol ]
  %.1143248.i.i.i.unr = phi ptr [ %i.li, %.lr.ph251.i.i.i.preheader ], [ %i.anz, %.lr.ph251.i.i.i.prol ]
  br i1 %i.js, label %.loopexit.i.i.i, label %.lr.ph251.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i.i.i
  br i1 %min.iters.check53, label %.lr.ph256.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.ph55

vector.ph55:                                      ; preds = %vector.main.loop.iter.check
  %i.aob = getelementptr i8, ptr %i.ll, i64 %i.jv
  %i.aoc = getelementptr i8, ptr %i.li, i64 %n.vec57
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph55
  %index59 = phi i64 [ 0, %vector.ph55 ], [ %index.next67, %vector.body58 ] ; 3 uses
  %i.aod = shl i64 %index59, 1                    ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.ll, i64 %i.aod
  %i.aoe = getelementptr i8, ptr %i.ll, i64 %i.aod
  %next.gep61 = getelementptr i8, ptr %i.aoe, i64 16
  %next.gep62 = getelementptr i8, ptr %i.li, i64 %index59 ; 2 uses
  %i.aof = getelementptr i8, ptr %next.gep62, i64 8
  %wide.load63 = load <8 x i8>, ptr %next.gep62, align 1
  %wide.load64 = load <8 x i8>, ptr %i.aof, align 1
  %interleaved.vec65 = shufflevector <8 x i8> %wide.load63, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec65, ptr %next.gep60, align 1
  %interleaved.vec66 = shufflevector <8 x i8> %wide.load64, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec66, ptr %next.gep61, align 1
  %index.next67 = add nuw i64 %index59, 16        ; 2 uses
  %i.aog = icmp eq i64 %index.next67, %n.vec57
  br i1 %i.aog, label %middle.block68, label %vector.body58, !llvm.loop !119

middle.block68:                                   ; preds = %vector.body58
  br i1 %cmp.n69, label %.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block68
  br i1 %min.epilog.iters.check, label %.lr.ph256.i.i.i.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec57, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.aoh = getelementptr i8, ptr %i.ll, i64 %i.jy
  %i.aoi = getelementptr i8, ptr %i.li, i64 %n.vec74
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index75 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next80, %vec.epilog.vector.body ] ; 3 uses
  %i.aoj = shl i64 %index75, 1
  %next.gep76 = getelementptr i8, ptr %i.ll, i64 %i.aoj
  %next.gep77 = getelementptr i8, ptr %i.li, i64 %index75
  %wide.load78 = load <4 x i8>, ptr %next.gep77, align 1
  %interleaved.vec79 = shufflevector <4 x i8> %wide.load78, <4 x i8> splat (i8 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec79, ptr %next.gep76, align 1
  %index.next80 = add nuw i64 %index75, 4         ; 2 uses
  %i.aok = icmp eq i64 %index.next80, %n.vec74
  br i1 %i.aok, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n81, label %.loopexit.i.i.i, label %.lr.ph256.i.i.i.preheader

.lr.ph256.i.i.i.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0159255.i.i.i.ph = phi i32 [ %.11170198.i.i.i, %iter.check ], [ %i.ju, %vec.epilog.iter.check ], [ %i.jx, %vec.epilog.middle.block ]
  %.0254.i.i.i.ph = phi ptr [ %i.ll, %iter.check ], [ %i.aob, %vec.epilog.iter.check ], [ %i.aoh, %vec.epilog.middle.block ]
  %.0142253.i.i.i.ph = phi ptr [ %i.li, %iter.check ], [ %i.aoc, %vec.epilog.iter.check ], [ %i.aoi, %vec.epilog.middle.block ]
  br label %.lr.ph256.i.i.i

.lr.ph256.i.i.i:                                  ; preds = %.lr.ph256.i.i.i.preheader, %.lr.ph256.i.i.i
  %.0159255.i.i.i = phi i32 [ %.0159.i.i.i, %.lr.ph256.i.i.i ], [ %.0159255.i.i.i.ph, %.lr.ph256.i.i.i.preheader ]
  %.0254.i.i.i = phi ptr [ %i.aoo, %.lr.ph256.i.i.i ], [ %.0254.i.i.i.ph, %.lr.ph256.i.i.i.preheader ] ; 3 uses
  %.0142253.i.i.i = phi ptr [ %i.aon, %.lr.ph256.i.i.i ], [ %.0142253.i.i.i.ph, %.lr.ph256.i.i.i.preheader ] ; 2 uses
  %i.aol = load i8, ptr %.0142253.i.i.i, align 1
  store i8 %i.aol, ptr %.0254.i.i.i, align 1
  %i.aom = getelementptr inbounds nuw i8, ptr %.0254.i.i.i, i64 1
  store i8 -1, ptr %i.aom, align 1
  %i.aon = getelementptr inbounds nuw i8, ptr %.0142253.i.i.i, i64 1
  %i.aoo = getelementptr inbounds nuw i8, ptr %.0254.i.i.i, i64 2
  %.0159.i.i.i = add i32 %.0159255.i.i.i, -1      ; 2 uses
  %i.aop = icmp sgt i32 %.0159.i.i.i, -1
  br i1 %i.aop, label %.lr.ph256.i.i.i, label %.loopexit.i.i.i, !llvm.loop !121

.lr.ph251.i.i.i:                                  ; preds = %.lr.ph251.i.i.i.prol.loopexit, %.lr.ph251.i.i.i
  %.1160250.i.i.i = phi i32 [ %.1160.i.i.i.3, %.lr.ph251.i.i.i ], [ %.1160250.i.i.i.unr, %.lr.ph251.i.i.i.prol.loopexit ]
  %.1249.i.i.i = phi ptr [ %i.apj, %.lr.ph251.i.i.i ], [ %.1249.i.i.i.unr, %.lr.ph251.i.i.i.prol.loopexit ] ; 13 uses
  %.1143248.i.i.i = phi ptr [ %i.api, %.lr.ph251.i.i.i ], [ %.1143248.i.i.i.unr, %.lr.ph251.i.i.i.prol.loopexit ] ; 5 uses
  %i.aoq = load i8, ptr %.1143248.i.i.i, align 1  ; 3 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %.1249.i.i.i, i64 2
end_hunk_0
begin_hunk_1_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
  %i.acr = icmp sgt i32 %i.gt, %i.acq
  br i1 %i.acr, label %bb.gl, label %.thread.i361

bb.gl:                                            ; preds = %bb.gk
  store ptr %i.acl, ptr %i.h, align 8
  %i.acs = load ptr, ptr %i.gp, align 8
  %i.act = load ptr, ptr %i.l, align 8
  %i.acu = sub nsw i32 %i.gt, %i.acq
  tail call void %i.acs(ptr noundef %i.act, i32 noundef %i.acu), !inline_history !160
  br label %.loopexit

.thread.i361:                                     ; preds = %bb.gk, %..thread_crit_edge.i362
  %i.acv = phi ptr [ %.pre.i364, %..thread_crit_edge.i362 ], [ %i.acm, %bb.gk ]
  %i.acw = zext nneg i32 %i.gt to i64
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acv, i64 %i.acw
  store ptr %i.acx, ptr %i.h, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL10stbi__get8P13stbi__context.exit339, %.lr.ph740, %.lr.ph742, %_ZL10stbi__get8P13stbi__context.exit333, %.preheader416, %.preheader414, %.preheader412, %.preheader, %_ZL10stbi__getnP13stbi__contextPhi.exit, %bb.ax, %bb.az, %bb.bc, %.thread.i, %bb.cm, %bb.co, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386, %bb.gg, %bb.gi, %bb.gl, %.thread.i361
  %.2243 = phi i32 [ %.0241, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0241, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0241, %.thread.i ], [ %.0241, %.thread.i361 ], [ %.0241, %.preheader412 ], [ %.0241, %.preheader414 ], [ %.0241, %.preheader ], [ %.0241, %bb.ax ], [ %.0241, %bb.az ], [ %.0241, %bb.bc ], [ %i.kq, %bb.co ], [ %i.kq, %bb.cm ], [ %.0241, %bb.gg ], [ %.0241, %bb.gi ], [ %.0241, %bb.gl ], [ %.0241, %.preheader416 ], [ %.0241, %.lr.ph740 ], [ %.0241, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0241, %.lr.ph742 ], [ %.0241, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.2239 = phi i32 [ %.0237, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0237, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0237, %.thread.i ], [ %.0237, %.thread.i361 ], [ %.0237, %.preheader412 ], [ %.0237, %.preheader414 ], [ %.0237, %.preheader ], [ %.0237, %bb.ax ], [ %.0237, %bb.az ], [ %.0237, %bb.bc ], [ %i.kk, %bb.co ], [ %i.kk, %bb.cm ], [ %.0237, %bb.gg ], [ %.0237, %bb.gi ], [ %.0237, %bb.gl ], [ %.0237, %.preheader416 ], [ %.0237, %.lr.ph740 ], [ %.0237, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0237, %.lr.ph742 ], [ %.0237, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1235 = phi i32 [ %.0234, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0234, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ 1, %.thread.i ], [ %.0234, %.thread.i361 ], [ %.0234, %.preheader412 ], [ %.0234, %.preheader414 ], [ %.0234, %.preheader ], [ 1, %bb.ax ], [ 1, %bb.az ], [ 1, %bb.bc ], [ %.0234, %bb.co ], [ %.0234, %bb.cm ], [ %.0234, %bb.gg ], [ %.0234, %bb.gi ], [ %.0234, %bb.gl ], [ %.0234, %.preheader416 ], [ %.0234, %.lr.ph740 ], [ %.0234, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0234, %.lr.ph742 ], [ %.0234, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.2232 = phi i32 [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0230, %.thread.i ], [ 0, %.thread.i361 ], [ 0, %.preheader412 ], [ 0, %.preheader414 ], [ 0, %.preheader ], [ %.0230, %bb.ax ], [ %.0230, %bb.az ], [ %.0230, %bb.bc ], [ 0, %bb.co ], [ 0, %bb.cm ], [ 0, %bb.gg ], [ 0, %bb.gi ], [ 0, %bb.gl ], [ 0, %.preheader416 ], [ 0, %.lr.ph740 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit333 ], [ 0, %.lr.ph742 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1224 = phi i32 [ %.0223, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0223, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0223, %.thread.i ], [ %.0223, %.thread.i361 ], [ %.0223, %.preheader412 ], [ %.0223, %.preheader414 ], [ %.zext, %.preheader ], [ %.0223, %bb.ax ], [ %.0223, %bb.az ], [ %.0223, %bb.bc ], [ %.0223, %bb.co ], [ %.0223, %bb.cm ], [ %.0223, %bb.gg ], [ %.0223, %bb.gi ], [ %.0223, %bb.gl ], [ %.0223, %.preheader416 ], [ %.0223, %.lr.ph740 ], [ %.zext, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0223, %.lr.ph742 ], [ %.0223, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.4219 = phi i32 [ %.3218, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.3218, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0215, %.thread.i ], [ %.0215, %.thread.i361 ], [ %.0215, %.preheader412 ], [ %.0215, %.preheader414 ], [ %.0215, %.preheader ], [ %.0215, %bb.ax ], [ %.0215, %bb.az ], [ %.0215, %bb.bc ], [ %.0215, %bb.co ], [ %.0215, %bb.cm ], [ %.0215, %bb.gg ], [ %.0215, %bb.gi ], [ %.0215, %bb.gl ], [ %.0215, %.preheader416 ], [ %.0215, %.lr.ph740 ], [ %.0215, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0215, %.lr.ph742 ], [ %.0215, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1213 = phi i32 [ %i.rd, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %i.rd, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0212, %.thread.i ], [ %.0212, %.thread.i361 ], [ %.0212, %.preheader412 ], [ %.0212, %.preheader414 ], [ %.0212, %.preheader ], [ %.0212, %bb.ax ], [ %.0212, %bb.az ], [ %.0212, %bb.bc ], [ %.0212, %bb.co ], [ %.0212, %bb.cm ], [ %.0212, %bb.gg ], [ %.0212, %bb.gi ], [ %.0212, %bb.gl ], [ %.0212, %.preheader416 ], [ %.0212, %.lr.ph740 ], [ %.0212, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0212, %.lr.ph742 ], [ %.0212, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1210 = phi i8 [ %.0209, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0209, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0209, %.thread.i ], [ %.0209, %.thread.i361 ], [ 1, %.preheader412 ], [ 1, %.preheader414 ], [ %.0209, %.preheader ], [ %.0209, %bb.ax ], [ %.0209, %bb.az ], [ %.0209, %bb.bc ], [ %.0209, %bb.co ], [ %.0209, %bb.cm ], [ %.0209, %bb.gg ], [ %.0209, %bb.gi ], [ %.0209, %bb.gl ], [ %.0209, %.preheader416 ], [ 1, %.lr.ph740 ], [ %.0209, %_ZL10stbi__get8P13stbi__context.exit333 ], [ 1, %.lr.ph742 ], [ %.0209, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.3207 = phi i8 [ %.0204, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0204, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0204, %.thread.i ], [ %.0204, %.thread.i361 ], [ 0, %.preheader412 ], [ 0, %.preheader414 ], [ %.0204, %.preheader ], [ %.0204, %bb.ax ], [ %.0204, %bb.az ], [ %.0204, %bb.bc ], [ %.1205, %bb.co ], [ 0, %bb.cm ], [ %.0204, %bb.gg ], [ %.0204, %bb.gi ], [ %.0204, %bb.gl ], [ 4, %.preheader416 ], [ 0, %.lr.ph740 ], [ %.0204, %_ZL10stbi__get8P13stbi__context.exit333 ], [ 0, %.lr.ph742 ], [ 4, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %i.acy = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 0 uses
  %i.acz = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 0 uses
  br label %bb.aw, !llvm.loop !174

.thread399:                                       ; preds = %bb.er, %.thread.i353, %_ZL17stbi__malloc_mad3iiii.exit.thread.i, %bb.cc, %bb.ck, %bb.cn, %bb.be, %bb.cp, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.by, %bb.br, %bb.bk, %bb.bi, %bb.bg, %bb.fa, %bb.fd, %bb.gb, %bb.fb, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, %bb.eo, %bb.el, %.thread382, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, %bb.en, %bb.eq, %bb.ej, %bb.ec, %bb.eg, %bb.ee, %bb.dv, %bb.dt, %bb.dr, %bb.do, %bb.dm, %bb.cv, %bb.ct, %bb.cr, %bb.gf, %bb.gd, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, %_ZL22stbi__check_png_headerP13stbi__context.exit
  %.7 = phi i32 [ 0, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread ], [ 1, %_ZL22stbi__check_png_headerP13stbi__context.exit ], [ 0, %bb.cc ], [ 0, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread ], [ 0, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread ], [ 0, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit ], [ 1, %bb.gb ], [ 1, %bb.fb ], [ 0, %bb.fd ], [ 0, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit ], [ 0, %bb.fa ], [ 1, %bb.eo ], [ 0, %bb.el ], [ 0, %.thread382 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread ], [ 1, %bb.en ], [ 0, %bb.eq ], [ 0, %.thread.i353 ], [ 0, %bb.ej ], [ 0, %bb.ec ], [ 1, %bb.eg ], [ 0, %bb.ee ], [ 0, %bb.dv ], [ 0, %bb.dt ], [ 1, %bb.dr ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %bb.cr ], [ 0, %bb.gd ], [ 0, %bb.gf ], [ 0, %bb.bg ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.br ], [ 0, %bb.by ], [ 0, %bb.cb ], [ 0, %bb.cd ], [ 0, %bb.cf ], [ 0, %bb.ch ], [ 0, %bb.cp ], [ 0, %bb.be ], [ 0, %bb.cn ], [ 0, %bb.ck ], [ 0, %_ZL17stbi__malloc_mad3iiii.exit.thread.i ], [ 0, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  ret i32 %.7
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 65536) i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !161 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.b, %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = load i8, ptr %i.ai, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit7

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %.not.i2 = icmp eq i32 %i.an, 0
  br i1 %.not.i2, label %_ZL10stbi__get8P13stbi__context.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call noundef i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au), !inline_history !161 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i3 = load i8, ptr %i.as, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

_ZL19stbi__refill_bufferP13stbi__context.exit.i4: ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i3, %bb.k ]
  %.sink.i.i5 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i5, ptr %i.c, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit7

_ZL10stbi__get8P13stbi__context.exit7:            ; preds = %bb.g, %bb.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4
  %.0.i6 = phi i8 [ %i.al, %bb.g ], [ %i.bk, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4 ], [ 0, %bb.h ]
  %i.bm = zext i8 %.0.i to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = zext i8 %.0.i6 to i32
  %i.bp = or disjoint i32 %i.bn, %i.bo
  ret i32 %i.bp
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL28stbi__compute_transparency16P9stbi__pngPti(i32 %.0.val.0.val, i32 %.0.val.4.val, ptr nofree captures(none) %.24.val, ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #34 {
bb.a:
  %i.a = mul i32 %.0.val.4.val, %.0.val.0.val     ; 8 uses
  %i.b = icmp eq i32 %1, 2
  %.not8 = icmp eq i32 %i.a, 0                    ; 2 uses
  br i1 %i.b, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %.preheader
  %i.e = zext i32 %i.a to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 13
  br i1 %min.iters.check, label %.lr.ph7.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph7.preheader
  %i.f = add i32 %i.a, -1
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = getelementptr i8, ptr %.24.val, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.i, i64 4
  %scevgep2 = getelementptr i8, ptr %0, i64 2
  %bound0 = icmp ult ptr %.24.val, %scevgep2
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph7.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.e, 3                     ; 2 uses
  %i.j = icmp eq i64 %n.mod.vf, 0
  %i.k = select i1 %i.j, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.e, %i.k                 ; 3 uses
  %i.l = shl nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %.24.val, i64 %i.l
  %i.n = trunc i64 %n.vec to i32
  %i.o = load i16, ptr %0, align 2, !alias.scope !175
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.o, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2                        ; 4 uses
  %next.gep = getelementptr i8, ptr %.24.val, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %.24.val, i64 %i.p
  %i.r = getelementptr i8, ptr %.24.val, i64 %i.p
  %i.s = getelementptr i8, ptr %.24.val, i64 %i.p
  %wide.vec = load <8 x i16>, ptr %next.gep, align 2, !alias.scope !178, !noalias !175
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.t = icmp ne <4 x i16> %strided.vec, %broadcast.splat
  %i.u = sext <4 x i1> %i.t to <4 x i16>          ; 4 uses
  %i.v = extractelement <4 x i16> %i.u, i64 0
  %i.w = extractelement <4 x i16> %i.u, i64 1
  %i.x = extractelement <4 x i16> %i.u, i64 2
  %i.y = extractelement <4 x i16> %i.u, i64 3
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.aa = getelementptr i8, ptr %i.q, i64 6
  %i.ab = getelementptr i8, ptr %i.r, i64 10
  %i.ac = getelementptr i8, ptr %i.s, i64 14
  store i16 %i.v, ptr %i.z, align 2, !alias.scope !178, !noalias !175
  store i16 %i.w, ptr %i.aa, align 2, !alias.scope !178, !noalias !175
  store i16 %i.x, ptr %i.ab, align 2, !alias.scope !178, !noalias !175
  store i16 %i.y, ptr %i.ac, align 2, !alias.scope !178, !noalias !175
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %.lr.ph7.preheader7, label %vector.body, !llvm.loop !180

.lr.ph7.preheader7:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph7.preheader
  %.06.ph = phi ptr [ %.24.val, %vector.memcheck ], [ %.24.val, %.lr.ph7.preheader ], [ %i.m, %vector.body ] ; 2 uses
  %.0225.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph7.preheader ], [ %i.n, %vector.body ] ; 4 uses
  %i.ae = sub i32 %i.a, %.0225.ph
  %xtraiter = and i32 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph7.prol.loopexit, label %.lr.ph7.prol

.lr.ph7.prol:                                     ; preds = %.lr.ph7.preheader7, %.lr.ph7.prol
  %.06.prol = phi ptr [ %i.ak, %.lr.ph7.prol ], [ %.06.ph, %.lr.ph7.preheader7 ] ; 3 uses
  %.0225.prol = phi i32 [ %i.al, %.lr.ph7.prol ], [ %.0225.ph, %.lr.ph7.preheader7 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph7.prol ], [ 0, %.lr.ph7.preheader7 ]
  %i.af = load i16, ptr %.06.prol, align 2
  %i.ag = load i16, ptr %0, align 2
  %i.ah = icmp ne i16 %i.af, %i.ag
  %i.ai = sext i1 %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.prol, i64 2
  store i16 %i.ai, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.prol, i64 4 ; 2 uses
  %i.al = add nuw i32 %.0225.prol, 1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph7.prol.loopexit, label %.lr.ph7.prol, !llvm.loop !181

.lr.ph7.prol.loopexit:                            ; preds = %.lr.ph7.prol, %.lr.ph7.preheader7
  %.06.unr = phi ptr [ %.06.ph, %.lr.ph7.preheader7 ], [ %i.ak, %.lr.ph7.prol ]
  %.0225.unr = phi i32 [ %.0225.ph, %.lr.ph7.preheader7 ], [ %i.al, %.lr.ph7.prol ]
  %i.am = sub i32 %.0225.ph, %i.a
  %i.an = icmp ugt i32 %i.am, -4
  br i1 %i.an, label %.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.prol.loopexit, %.lr.ph7
  %.06 = phi ptr [ %i.bl, %.lr.ph7 ], [ %.06.unr, %.lr.ph7.prol.loopexit ] ; 9 uses
  %.0225 = phi i32 [ %i.bm, %.lr.ph7 ], [ %.0225.unr, %.lr.ph7.prol.loopexit ]
  %i.ao = load i16, ptr %.06, align 2
  %i.ap = load i16, ptr %0, align 2
  %i.aq = icmp ne i16 %i.ao, %i.ap
  %i.ar = sext i1 %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %.06, i64 2
  store i16 %i.ar, ptr %i.as, align 2
  %i.at = getelementptr inbounds nuw i8, ptr %.06, i64 4
  %i.au = load i16, ptr %i.at, align 2
  %i.av = load i16, ptr %0, align 2
  %i.aw = icmp ne i16 %i.au, %i.av
  %i.ax = sext i1 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %.06, i64 6
  store i16 %i.ax, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %.06, i64 8
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = load i16, ptr %0, align 2
  %i.bc = icmp ne i16 %i.ba, %i.bb
  %i.bd = sext i1 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %.06, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.06, i64 12
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = load i16, ptr %0, align 2
  %i.bi = icmp ne i16 %i.bg, %i.bh
  %i.bj = sext i1 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %.06, i64 14
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.06, i64 16
  %i.bm = add nuw i32 %.0225, 4                   ; 2 uses
  %exitcond10.not.3 = icmp eq i32 %i.bm, %i.a
  br i1 %exitcond10.not.3, label %.loopexit, label %.lr.ph7, !llvm.loop !182

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.14 = phi ptr [ %.24.val, %.lr.ph ], [ %i.bz, %bb.f ] ; 5 uses
  %.1233 = phi i32 [ 0, %.lr.ph ], [ %i.ca, %bb.f ]
  %i.bn = load i16, ptr %.14, align 2
  %i.bo = load i16, ptr %0, align 2
  %i.bp = icmp eq i16 %i.bn, %i.bo
  br i1 %i.bp, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %.14, i64 2
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = load i16, ptr %i.c, align 2
  %i.bt = icmp eq i16 %i.br, %i.bs
  br i1 %i.bt, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %.14, i64 4
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = load i16, ptr %i.d, align 2
  %i.bx = icmp eq i16 %i.bv, %i.bw
  br i1 %i.bx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %.14, i64 6
  store i16 0, ptr %i.by, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %.14, i64 8
  %i.ca = add nuw i32 %.1233, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.a
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !183

.loopexit:                                        ; preds = %bb.f, %.lr.ph7.prol.loopexit, %.lr.ph7, %.preheader1, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL26stbi__compute_transparencyP9stbi__pngPhi(i32 %.0.val.0.val, i32 %.0.val.4.val, ptr nofree captures(none) %.24.val, ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #34 {
bb.a:
  %i.a = mul i32 %.0.val.4.val, %.0.val.0.val     ; 5 uses
  %i.b = icmp eq i32 %1, 2
  %.not8 = icmp eq i32 %i.a, 0                    ; 2 uses
  br i1 %i.b, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %.preheader
  %xtraiter = and i32 %i.a, 3                     ; 3 uses
  %i.e = icmp ult i32 %i.a, 4
  br i1 %i.e, label %.lr.ph7.epil.preheader, label %.lr.ph7.preheader.new

.lr.ph7.preheader.new:                            ; preds = %.lr.ph7.preheader
  %unroll_iter = and i32 %i.a, -4
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7, %.lr.ph7.preheader.new
  %.06 = phi ptr [ %.24.val, %.lr.ph7.preheader.new ], [ %i.ac, %.lr.ph7 ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph7.preheader.new ], [ %niter.next.3, %.lr.ph7 ]
  %i.f = load i8, ptr %.06, align 1
  %i.g = load i8, ptr %0, align 1
  %i.h = icmp ne i8 %i.f, %i.g
  %i.i = sext i1 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.06, i64 1
  store i8 %i.i, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.06, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = load i8, ptr %0, align 1
  %i.n = icmp ne i8 %i.l, %i.m
  %i.o = sext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.06, i64 3
end_hunk_1
begin_hunk_2_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !190

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.bw, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.ce, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.cb = load i8, ptr %.24813.epil, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1
  store i8 %i.cd, ptr %.24813.epil, align 1
  store i8 %i.cb, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !191

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #30 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread, %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.v, align 8
  br label %bb.al

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not23.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 18 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.g:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit.thread:       ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %bb.e, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.af, align 8
  br label %bb.al

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.g, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 13 uses
  %or.cond.not.i.i298 = icmp sgt i32 %5, -1
  br i1 %or.cond.not.i.i298, label %bb.h, label %_ZL21stbi__mad2sizes_validiii.exit.thread

bb.h:                                             ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  br i1 %i.k, label %_ZL21stbi__mad2sizes_validiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i299

_ZL21stbi__mul2sizes_validii.exit.i299:           ; preds = %bb.h
  %i.ai = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not10.i, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %_ZL21stbi__mad2sizes_validiii.exit

_ZL21stbi__mad2sizes_validiii.exit:               ; preds = %bb.h, %_ZL21stbi__mul2sizes_validii.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp samesign ugt i32 %i.aj, %i.ak
  br i1 %.not330, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %bb.i

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, %_ZL21stbi__mul2sizes_validii.exit.i299, %_ZL21stbi__mad2sizes_validiii.exit
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.al, align 8
  br label %bb.al

bb.i:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ap, align 8
  br label %bb.al

bb.k:                                             ; preds = %bb.i
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #50 ; 5 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.at, align 8
  br label %bb.al

bb.m:                                             ; preds = %bb.k
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.m
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 14 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %i.av = zext nneg i32 %i.ah to i64
  %i.aw = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.ax = sext i32 %spec.select to i64            ; 36 uses
  %i.ay = icmp slt i32 %spec.select, %i.aw        ; 4 uses
  %i.az = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.ba = icmp sgt i32 %i.aw, 0
  %i.bb = sext i32 %i.aw to i64                   ; 13 uses
  %i.bc = icmp eq i32 %6, 8
  %i.bd = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.be = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.bf = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bg = zext i32 %.030.i305 to i64              ; 17 uses
  %i.bh = zext i32 %i.z to i64
  %i.bi = icmp eq i32 %7, 0
  %i.bj = sext i32 %6 to i64
  %i.bk = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %i.bj
  %wide.trip.count460 = zext nneg i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434.a = zext nneg i32 %spec.select to i64
  %wide.trip.count444.a = zext i32 %i.aw to i64   ; 8 uses
  %i.bl = zext i32 %i.z to i64                    ; 2 uses
  %i.bm = sub nsw i64 %i.bb, %i.ax                ; 28 uses
  %8 = add nuw nsw i64 %i.bg, 1
  %9 = add i32 %i.z, -1                           ; 3 uses
  %min.iters.check732 = icmp ult i64 %i.bm, 8
  %diff.check730 = icmp ult i32 %spec.select, 32
  %or.cond768 = select i1 %min.iters.check732, i1 true, i1 %diff.check730
  %min.iters.check734 = icmp ult i64 %i.bm, 32
  %n.mod.vf736 = and i64 %i.bm, 24
  %n.vec737 = and i64 %i.bm, -32                  ; 4 uses
  %i.bn = add nsw i64 %n.vec737, %i.ax
  %cmp.n746 = icmp eq i64 %i.bm, %n.vec737
  %min.epilog.iters.check752 = icmp eq i64 %n.mod.vf736, 0
  %n.vec755 = and i64 %i.bm, -8                   ; 3 uses
  %i.bo = add nsw i64 %n.vec755, %i.ax
  %cmp.n762 = icmp eq i64 %i.bm, %n.vec755
  %i.bp = add nsw i64 %i.bb, -1
  %min.iters.check698 = icmp ult i32 %spec.select, 4
  %min.iters.check700 = icmp ult i32 %spec.select, 32
  %n.mod.vf702 = and i64 %wide.trip.count424, 28
  %n.vec703 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n712 = icmp eq i64 %n.vec703, %wide.trip.count424
  %min.epilog.iters.check717 = icmp eq i64 %n.mod.vf702, 0
  %n.vec720 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n727 = icmp eq i64 %n.vec720, %wide.trip.count424
  %xtraiter783 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod784.not = icmp eq i64 %xtraiter783, 0
  %min.iters.check661 = icmp ult i64 %i.bm, 4
  %diff.check655 = icmp ult i32 %spec.select, 16
  %min.iters.check663 = icmp ult i64 %i.bm, 16
  %n.mod.vf665 = and i64 %i.bm, 12
  %n.vec666 = and i64 %i.bm, -16                  ; 4 uses
  %i.bq = add nsw i64 %n.vec666, %i.ax
  %cmp.n675 = icmp eq i64 %i.bm, %n.vec666
  %min.epilog.iters.check681 = icmp eq i64 %n.mod.vf665, 0
  %n.vec684 = and i64 %i.bm, -4                   ; 3 uses
  %i.br = add nsw i64 %n.vec684, %i.ax
  %cmp.n693 = icmp eq i64 %i.bm, %n.vec684
  %min.iters.check623 = icmp ult i32 %spec.select, 4
  %min.iters.check625 = icmp ult i32 %spec.select, 32
  %n.mod.vf627 = and i64 %wide.trip.count424, 28
  %n.vec628 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n637 = icmp eq i64 %n.vec628, %wide.trip.count424
  %min.epilog.iters.check642 = icmp eq i64 %n.mod.vf627, 0
  %n.vec645 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n652 = icmp eq i64 %n.vec645, %wide.trip.count424
  %xtraiter785 = and i64 %wide.trip.count424, 1
  %lcmp.mod786.not = icmp eq i64 %xtraiter785, 0
  %i.bs = add nsw i64 %wide.trip.count424, -1
  %min.iters.check588 = icmp ult i64 %i.bm, 4
  %diff.check586 = icmp ult i32 %spec.select, 16
  %min.iters.check590 = icmp ult i64 %i.bm, 16
  %n.mod.vf592 = and i64 %i.bm, 12
  %n.vec593 = and i64 %i.bm, -16                  ; 4 uses
  %i.bt = add nsw i64 %n.vec593, %i.ax
  %cmp.n601 = icmp eq i64 %i.bm, %n.vec593
  %min.epilog.iters.check607 = icmp eq i64 %n.mod.vf592, 0
  %n.vec610 = and i64 %i.bm, -4                   ; 3 uses
  %i.bu = add nsw i64 %n.vec610, %i.ax
  %cmp.n618 = icmp eq i64 %i.bm, %n.vec610
  %i.bv = add nsw i64 %i.bb, -1
  %min.iters.check553 = icmp ult i32 %i.aw, 4
  %min.iters.check555 = icmp ult i32 %i.aw, 32
  %n.mod.vf557 = and i64 %wide.trip.count444.a, 28
  %n.vec558 = and i64 %wide.trip.count444.a, 2147483616 ; 4 uses
  %cmp.n567 = icmp eq i64 %n.vec558, %wide.trip.count444.a
  %min.epilog.iters.check572 = icmp eq i64 %n.mod.vf557, 0
  %n.vec575 = and i64 %wide.trip.count444.a, 2147483644 ; 3 uses
  %cmp.n582 = icmp eq i64 %n.vec575, %wide.trip.count444.a
  %xtraiter791 = and i64 %wide.trip.count444.a, 3 ; 2 uses
  %lcmp.mod792.not = icmp eq i64 %xtraiter791, 0
  %min.iters.check527 = icmp ult i64 %i.bm, 8
  %diff.check = icmp ult i32 %spec.select, 32
  %or.cond767 = select i1 %min.iters.check527, i1 true, i1 %diff.check
  %min.iters.check528 = icmp ult i64 %i.bm, 32
  %n.mod.vf530 = and i64 %i.bm, 24
  %n.vec531 = and i64 %i.bm, -32                  ; 4 uses
  %i.bw = add nsw i64 %n.vec531, %i.ax
  %cmp.n540 = icmp eq i64 %i.bm, %n.vec531
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf530, 0
  %n.vec543 = and i64 %i.bm, -8                   ; 3 uses
  %i.bx = add nsw i64 %n.vec543, %i.ax
  %cmp.n548 = icmp eq i64 %i.bm, %n.vec543
  %i.by = add nsw i64 %i.bb, -1
  %xtraiter797 = and i32 %4, 1
  %i.bz = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod798.not = icmp eq i32 %xtraiter797, 0
  %lcmp.mod799 = trunc i32 %4 to i1
  %min.iters.check506 = icmp ult i32 %i.z, 8
  %n.vec509 = and i64 %i.bl, 4294967288           ; 4 uses
  %10 = shl nuw nsw i64 %n.vec509, 1              ; 2 uses
  %11 = trunc nuw i64 %n.vec509 to i32
  %cmp.n522 = icmp eq i64 %n.vec509, %i.bl
  %i.ca = and i64 %i.bg, 1
  %lcmp.mod801.not.not = icmp eq i64 %i.ca, 0
  %i.cb = shl nuw nsw i64 %i.bg, 2
  %i.cc = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bg, -1
  %i.cd = icmp eq i32 %.030.i305, 0
  %i.ce = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %i.ce, 4294967288              ; 3 uses
  %i.cf = sub nsw i64 %i.bg, %n.vec
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  %xtraiter803 = and i32 %i.z, 1
  %i.cg = icmp eq i32 %9, 0
  %unroll_iter806 = and i32 %i.z, -2
  %lcmp.mod804.not = icmp eq i32 %xtraiter803, 0
  %lcmp.mod805 = trunc i32 %i.z to i1
  %xtraiter808 = and i32 %i.z, 1
  %i.ch = icmp eq i32 %9, 0
  %unroll_iter811 = and i32 %i.z, -2
  %lcmp.mod809.not = icmp eq i32 %xtraiter808, 0
  %lcmp.mod810 = trunc i32 %i.z to i1
  %xtraiter813 = and i32 %i.z, 1
  %i.ci = icmp eq i32 %9, 0
  %unroll_iter816 = and i32 %i.z, -2
  %lcmp.mod814.not = icmp eq i32 %xtraiter813, 0
  %lcmp.mod815 = trunc i32 %i.z to i1
  %i.cj = and i64 %i.bg, 1
  %lcmp.mod819.not.not = icmp eq i64 %i.cj, 0
  %i.ck = shl nuw nsw i64 %i.bg, 2
  %i.cl = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bg, -1
  %i.cm = icmp eq i32 %.030.i305, 0
  %xtraiter821 = and i64 %8, 3                    ; 2 uses
  %lcmp.mod822.not = icmp eq i64 %xtraiter821, 0
  %i.cn = icmp ult i32 %.030.i305, 3
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 9 uses
  %.0237399 = phi ptr [ %1, %.lr.ph400 ], [ %i.qw, %.loopexit ] ; 2 uses
  %i.co = trunc i64 %indvars.iv457 to i32
  %i.cp = and i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 1
  %i.cr = mul nuw nsw i32 %i.ah, %i.cq
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = trunc i64 %indvars.iv457 to i32
  %i.cu = and i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 1
  %i.cw = mul nuw nsw i32 %i.ah, %i.cv
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = trunc i64 %indvars.iv457 to i32
  %i.cz = and i32 %i.cy, 1
  %i.da = xor i32 %i.cz, 1
  %i.db = mul nuw nsw i32 %i.ah, %i.da
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = trunc i64 %indvars.iv457 to i32
  %i.de = and i32 %i.dd, 1
  %i.df = xor i32 %i.de, 1
  %i.dg = mul nuw nsw i32 %i.ah, %i.df
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = trunc i64 %indvars.iv457 to i32
  %i.dj = and i32 %i.di, 1
  %i.dk = xor i32 %i.dj, 1
  %i.dl = mul nuw nsw i32 %i.ah, %i.dk
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = trunc nuw i64 %indvars.iv457 to i32     ; 2 uses
  %i.do = trunc i64 %indvars.iv457 to i1
  %i.dp = select i1 %i.do, i64 %i.av, i64 0       ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dp ; 83 uses
  %i.dr = and i32 %i.dn, 1
  %i.ds = xor i32 %i.dr, 1
  %i.dt = mul nuw nsw i32 %i.ds, %i.ah
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.du ; 30 uses
  %i.dw = load ptr, ptr %i.u, align 8
  %i.dx = mul i32 %i.e, %i.dn
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy ; 34 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0237399, i64 1 ; 41 uses
  %i.eb = load i8, ptr %.0237399, align 1         ; 3 uses
  %i.ec = icmp ugt i8 %i.eb, 4
  br i1 %i.ec, label %bb.ak, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ed = icmp eq i64 %indvars.iv457, 0
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ee = zext nneg i8 %i.eb to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0257.in = phi i8 [ %i.eg, %bb.p ], [ %i.eb, %bb.o ]
  switch i8 %.0257.in, label %.loopexit348 [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.t
  ]

.preheader356:                                    ; preds = %bb.q
  br i1 %i.az, label %iter.check714, label %.preheader354

iter.check714:                                    ; preds = %.preheader356
  %i.eh = sub nsw i64 %i.dp, %i.cs
  %diff.check696 = icmp ult i64 %i.eh, 32
  %or.cond764 = select i1 %min.iters.check698, i1 true, i1 %diff.check696
  br i1 %or.cond764, label %.lr.ph360.preheader, label %vector.main.loop.iter.check699

vector.main.loop.iter.check699:                   ; preds = %iter.check714
  br i1 %min.iters.check700, label %vec.epilog.ph718, label %vector.body704

vector.body704:                                   ; preds = %vector.main.loop.iter.check699, %vector.body704
  %index705 = phi i64 [ %index.next710, %vector.body704 ], [ 0, %vector.main.loop.iter.check699 ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 %index705 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load706 = load <16 x i8>, ptr %i.ei, align 1
  %wide.load707 = load <16 x i8>, ptr %i.ej, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 %index705 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load708 = load <16 x i8>, ptr %i.ek, align 1
  %wide.load709 = load <16 x i8>, ptr %i.el, align 1
  %i.em = add <16 x i8> %wide.load708, %wide.load706
  %i.en = add <16 x i8> %wide.load709, %wide.load707
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index705 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <16 x i8> %i.em, ptr %i.eo, align 1
  store <16 x i8> %i.en, ptr %i.ep, align 1
  %index.next710 = add nuw i64 %index705, 32      ; 2 uses
  %i.eq = icmp eq i64 %index.next710, %n.vec703
  br i1 %i.eq, label %middle.block711, label %vector.body704, !llvm.loop !192

middle.block711:                                  ; preds = %vector.body704
  br i1 %cmp.n712, label %.preheader354, label %vec.epilog.iter.check716

vec.epilog.iter.check716:                         ; preds = %middle.block711
  br i1 %min.epilog.iters.check717, label %.lr.ph360.preheader, label %vec.epilog.ph718, !prof !54

vec.epilog.ph718:                                 ; preds = %vector.main.loop.iter.check699, %vec.epilog.iter.check716
  %vec.epilog.resume.val713 = phi i64 [ %n.vec703, %vec.epilog.iter.check716 ], [ 0, %vector.main.loop.iter.check699 ]
  br label %vec.epilog.vector.body721

vec.epilog.vector.body721:                        ; preds = %vec.epilog.vector.body721, %vec.epilog.ph718
  %index722 = phi i64 [ %vec.epilog.resume.val713, %vec.epilog.ph718 ], [ %index.next725, %vec.epilog.vector.body721 ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 %index722
  %wide.load723 = load <4 x i8>, ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 %index722
  %wide.load724 = load <4 x i8>, ptr %i.es, align 1
  %i.et = add <4 x i8> %wide.load724, %wide.load723
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index722
  store <4 x i8> %i.et, ptr %i.eu, align 1
  %index.next725 = add nuw i64 %index722, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next725, %n.vec720
  br i1 %i.ev, label %vec.epilog.middle.block726, label %vec.epilog.vector.body721, !llvm.loop !193

vec.epilog.middle.block726:                       ; preds = %vec.epilog.vector.body721
  br i1 %cmp.n727, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check714, %vec.epilog.iter.check716, %vec.epilog.middle.block726
  %indvars.iv421.ph = phi i64 [ 0, %iter.check714 ], [ %n.vec703, %vec.epilog.iter.check716 ], [ %n.vec720, %vec.epilog.middle.block726 ] ; 3 uses
  br i1 %lcmp.mod784.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv421.prol
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv421.prol
  %i.ez = load i8, ptr %i.ey, align 1
  %.narrow286.prol = add i8 %i.ez, %i.ex
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.fa, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter783
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !194

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.fb = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.fc = icmp ugt i64 %i.fb, -4
  br i1 %i.fc, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.q
  br i1 %i.az, label %iter.check639, label %.preheader351

iter.check639:                                    ; preds = %.preheader353
  %i.fd = sub nsw i64 %i.dp, %i.dc
  %diff.check621 = icmp ult i64 %i.fd, 32
  %or.cond765 = select i1 %min.iters.check623, i1 true, i1 %diff.check621
  br i1 %or.cond765, label %.lr.ph364.preheader, label %vector.main.loop.iter.check624

vector.main.loop.iter.check624:                   ; preds = %iter.check639
  br i1 %min.iters.check625, label %vec.epilog.ph643, label %vector.body629

vector.body629:                                   ; preds = %vector.main.loop.iter.check624, %vector.body629
  %index630 = phi i64 [ %index.next635, %vector.body629 ], [ 0, %vector.main.loop.iter.check624 ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ea, i64 %index630 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load631 = load <16 x i8>, ptr %i.fe, align 1
  %wide.load632 = load <16 x i8>, ptr %i.ff, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %index630 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %wide.load633 = load <16 x i8>, ptr %i.fg, align 1
  %wide.load634 = load <16 x i8>, ptr %i.fh, align 1
  %i.fi = lshr <16 x i8> %wide.load633, splat (i8 1)
  %i.fj = lshr <16 x i8> %wide.load634, splat (i8 1)
  %i.fk = add <16 x i8> %i.fi, %wide.load631
  %i.fl = add <16 x i8> %i.fj, %wide.load632
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index630 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <16 x i8> %i.fk, ptr %i.fm, align 1
  store <16 x i8> %i.fl, ptr %i.fn, align 1
  %index.next635 = add nuw i64 %index630, 32      ; 2 uses
  %i.fo = icmp eq i64 %index.next635, %n.vec628
  br i1 %i.fo, label %middle.block636, label %vector.body629, !llvm.loop !195

middle.block636:                                  ; preds = %vector.body629
  br i1 %cmp.n637, label %.preheader351, label %vec.epilog.iter.check641

vec.epilog.iter.check641:                         ; preds = %middle.block636
  br i1 %min.epilog.iters.check642, label %.lr.ph364.preheader, label %vec.epilog.ph643, !prof !54

vec.epilog.ph643:                                 ; preds = %vector.main.loop.iter.check624, %vec.epilog.iter.check641
  %vec.epilog.resume.val638 = phi i64 [ %n.vec628, %vec.epilog.iter.check641 ], [ 0, %vector.main.loop.iter.check624 ]
  br label %vec.epilog.vector.body646

vec.epilog.vector.body646:                        ; preds = %vec.epilog.vector.body646, %vec.epilog.ph643
  %index647.a = phi i64 [ %vec.epilog.resume.val638, %vec.epilog.ph643 ], [ %index.next650, %vec.epilog.vector.body646 ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 %index647.a
  %wide.load648.a = load <4 x i8>, ptr %i.fp, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %index647.a
  %wide.load649.a = load <4 x i8>, ptr %i.fq, align 1
  %i.fr = lshr <4 x i8> %wide.load649.a, splat (i8 1)
  %i.fs = add <4 x i8> %i.fr, %wide.load648.a
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index647.a
  store <4 x i8> %i.fs, ptr %i.ft, align 1
  %index.next650 = add nuw i64 %index647.a, 4     ; 2 uses
  %i.fu = icmp eq i64 %index.next650, %n.vec645
  br i1 %i.fu, label %vec.epilog.middle.block651, label %vec.epilog.vector.body646, !llvm.loop !196

vec.epilog.middle.block651:                       ; preds = %vec.epilog.vector.body646
  br i1 %cmp.n652, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check639, %vec.epilog.iter.check641, %vec.epilog.middle.block651
  %indvars.iv431.ph = phi i64 [ 0, %iter.check639 ], [ %n.vec628, %vec.epilog.iter.check641 ], [ %n.vec645, %vec.epilog.middle.block651 ] ; 6 uses
  br i1 %lcmp.mod786.not, label %.lr.ph364.prol.loopexit, label %.lr.ph364.prol

.lr.ph364.prol:                                   ; preds = %.lr.ph364.preheader
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv431.ph
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv431.ph
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = lshr i8 %i.fy, 1
  %.narrow290.prol = add i8 %i.fz, %i.fw
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv431.ph
  store i8 %.narrow290.prol, ptr %i.ga, align 1
  %indvars.iv.next432.prol = or disjoint i64 %indvars.iv431.ph, 1
  br label %.lr.ph364.prol.loopexit

.lr.ph364.prol.loopexit:                          ; preds = %.lr.ph364.prol, %.lr.ph364.preheader
  %indvars.iv431.unr = phi i64 [ %indvars.iv431.ph, %.lr.ph364.preheader ], [ %indvars.iv.next432.prol, %.lr.ph364.prol ]
  %i.gb = icmp eq i64 %indvars.iv431.ph, %i.bs
  br i1 %i.gb, label %.preheader351, label %.lr.ph364

.preheader349:                                    ; preds = %bb.q
  br i1 %i.ba, label %iter.check569, label %.loopexit348

iter.check569:                                    ; preds = %.preheader349
  %i.gc = sub nsw i64 %i.dp, %i.dm
  %diff.check551 = icmp ult i64 %i.gc, 32
  %or.cond766 = select i1 %min.iters.check553, i1 true, i1 %diff.check551
  br i1 %or.cond766, label %.lr.ph368.preheader, label %vector.main.loop.iter.check554

vector.main.loop.iter.check554:                   ; preds = %iter.check569
  br i1 %min.iters.check555, label %vec.epilog.ph573, label %vector.body559

vector.body559:                                   ; preds = %vector.main.loop.iter.check554, %vector.body559
  %index560 = phi i64 [ %index.next565, %vector.body559 ], [ 0, %vector.main.loop.iter.check554 ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ea, i64 %index560 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load561 = load <16 x i8>, ptr %i.gd, align 1
  %wide.load562 = load <16 x i8>, ptr %i.ge, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dv, i64 %index560 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load563 = load <16 x i8>, ptr %i.gf, align 1
  %wide.load564 = load <16 x i8>, ptr %i.gg, align 1
  %i.gh = add <16 x i8> %wide.load563, %wide.load561
  %i.gi = add <16 x i8> %wide.load564, %wide.load562
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index560 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store <16 x i8> %i.gh, ptr %i.gj, align 1
  store <16 x i8> %i.gi, ptr %i.gk, align 1
  %index.next565 = add nuw i64 %index560, 32      ; 2 uses
  %i.gl = icmp eq i64 %index.next565, %n.vec558
  br i1 %i.gl, label %middle.block566, label %vector.body559, !llvm.loop !197

middle.block566:                                  ; preds = %vector.body559
  br i1 %cmp.n567, label %.loopexit348, label %vec.epilog.iter.check571

vec.epilog.iter.check571:                         ; preds = %middle.block566
  br i1 %min.epilog.iters.check572, label %.lr.ph368.preheader, label %vec.epilog.ph573, !prof !54

vec.epilog.ph573:                                 ; preds = %vector.main.loop.iter.check554, %vec.epilog.iter.check571
  %vec.epilog.resume.val568 = phi i64 [ %n.vec558, %vec.epilog.iter.check571 ], [ 0, %vector.main.loop.iter.check554 ]
  br label %vec.epilog.vector.body576

vec.epilog.vector.body576:                        ; preds = %vec.epilog.vector.body576, %vec.epilog.ph573
  %index577 = phi i64 [ %vec.epilog.resume.val568, %vec.epilog.ph573 ], [ %index.next580, %vec.epilog.vector.body576 ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ea, i64 %index577
  %wide.load578 = load <4 x i8>, ptr %i.gm, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dv, i64 %index577
  %wide.load579 = load <4 x i8>, ptr %i.gn, align 1
  %i.go = add <4 x i8> %wide.load579, %wide.load578
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index577
  store <4 x i8> %i.go, ptr %i.gp, align 1
  %index.next580 = add nuw i64 %index577, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next580, %n.vec575
  br i1 %i.gq, label %vec.epilog.middle.block581, label %vec.epilog.vector.body576, !llvm.loop !198

vec.epilog.middle.block581:                       ; preds = %vec.epilog.vector.body576
  br i1 %cmp.n582, label %.loopexit348, label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %iter.check569, %vec.epilog.iter.check571, %vec.epilog.middle.block581
  %indvars.iv441.ph = phi i64 [ 0, %iter.check569 ], [ %n.vec558, %vec.epilog.iter.check571 ], [ %n.vec575, %vec.epilog.middle.block581 ] ; 3 uses
  br i1 %lcmp.mod792.not, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol

.lr.ph368.prol:                                   ; preds = %.lr.ph368.preheader, %.lr.ph368.prol
  %indvars.iv441.prol = phi i64 [ %indvars.iv.next442.prol, %.lr.ph368.prol ], [ %indvars.iv441.ph, %.lr.ph368.preheader ] ; 4 uses
  %prol.iter793 = phi i64 [ %prol.iter793.next, %.lr.ph368.prol ], [ 0, %.lr.ph368.preheader ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv441.prol
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv441.prol
  %i.gu = load i8, ptr %i.gt, align 1
  %.narrow292.prol = add i8 %i.gu, %i.gs
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv441.prol
  store i8 %.narrow292.prol, ptr %i.gv, align 1
  %indvars.iv.next442.prol = add nuw nsw i64 %indvars.iv441.prol, 1 ; 2 uses
  %prol.iter793.next = add i64 %prol.iter793, 1   ; 2 uses
  %prol.iter793.cmp.not = icmp eq i64 %prol.iter793.next, %xtraiter791
  br i1 %prol.iter793.cmp.not, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol, !llvm.loop !199

.lr.ph368.prol.loopexit:                          ; preds = %.lr.ph368.prol, %.lr.ph368.preheader
  %indvars.iv441.unr = phi i64 [ %indvars.iv441.ph, %.lr.ph368.preheader ], [ %indvars.iv.next442.prol, %.lr.ph368.prol ]
  %i.gw = sub nsw i64 %indvars.iv441.ph, %wide.trip.count444.a
  %i.gx = icmp ugt i64 %i.gw, -4
  br i1 %i.gx, label %.loopexit348, label %.lr.ph368

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull align 1 %i.ea, i64 %i.bb, i1 false)
  br label %.loopexit348

bb.s:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull align 1 %i.ea, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check, label %.loopexit348

iter.check:                                       ; preds = %bb.s
  br i1 %or.cond767, label %.lr.ph370.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check528, label %vec.epilog.ph, label %vector.body532

vector.body532:                                   ; preds = %vector.main.loop.iter.check, %vector.body532
  %index533 = phi i64 [ %index.next538, %vector.body532 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.gy = add i64 %index533, %i.ax                ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.ea, i64 %i.gy ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load534 = load <16 x i8>, ptr %i.gz, align 1
  %wide.load535 = load <16 x i8>, ptr %i.ha, align 1
  %i.hb = getelementptr inbounds i8, ptr %i.dq, i64 %index533 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load536 = load <16 x i8>, ptr %i.hb, align 1
  %wide.load537 = load <16 x i8>, ptr %i.hc, align 1
  %i.hd = add <16 x i8> %wide.load536, %wide.load534
  %i.he = add <16 x i8> %wide.load537, %wide.load535
  %i.hf = getelementptr inbounds i8, ptr %i.dq, i64 %i.gy ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store <16 x i8> %i.hd, ptr %i.hf, align 1
  store <16 x i8> %i.he, ptr %i.hg, align 1
  %index.next538 = add nuw i64 %index533, 32      ; 2 uses
  %i.hh = icmp eq i64 %index.next538, %n.vec531
  br i1 %i.hh, label %middle.block539, label %vector.body532, !llvm.loop !200

middle.block539:                                  ; preds = %vector.body532
  br i1 %cmp.n540, label %.loopexit348, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block539
  br i1 %min.epilog.iters.check, label %.lr.ph370.preheader, label %vec.epilog.ph, !prof !201

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec531, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index544 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next547, %vec.epilog.vector.body ] ; 3 uses
  %i.hi = add i64 %index544, %i.ax                ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %i.ea, i64 %i.hi
  %wide.load545 = load <8 x i8>, ptr %i.hj, align 1
  %i.hk = getelementptr inbounds i8, ptr %i.dq, i64 %index544
  %wide.load546 = load <8 x i8>, ptr %i.hk, align 1
  %i.hl = add <8 x i8> %wide.load546, %wide.load545
  %i.hm = getelementptr inbounds i8, ptr %i.dq, i64 %i.hi
  store <8 x i8> %i.hl, ptr %i.hm, align 1
  %index.next547 = add nuw i64 %index544, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next547, %n.vec543
  br i1 %i.hn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !202

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n548, label %.loopexit348, label %.lr.ph370.preheader

.lr.ph370.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv446.ph = phi i64 [ %i.ax, %iter.check ], [ %i.bw, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ] ; 7 uses
  %i.ho = sub nsw i64 %i.bb, %indvars.iv446.ph
  %xtraiter794 = and i64 %i.ho, 1
  %lcmp.mod795.not = icmp eq i64 %xtraiter794, 0
  br i1 %lcmp.mod795.not, label %.lr.ph370.prol.loopexit, label %.lr.ph370.prol

.lr.ph370.prol:                                   ; preds = %.lr.ph370.preheader
  %i.hp = getelementptr inbounds i8, ptr %i.ea, i64 %indvars.iv446.ph
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = sub nsw i64 %indvars.iv446.ph, %i.ax
  %i.hs = getelementptr inbounds i8, ptr %i.dq, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1
  %.narrow294.prol = add i8 %i.ht, %i.hq
  %i.hu = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv446.ph
  store i8 %.narrow294.prol, ptr %i.hu, align 1
  %indvars.iv.next447.prol = add nsw i64 %indvars.iv446.ph, 1
  br label %.lr.ph370.prol.loopexit

.lr.ph370.prol.loopexit:                          ; preds = %.lr.ph370.prol, %.lr.ph370.preheader
  %indvars.iv446.unr = phi i64 [ %indvars.iv446.ph, %.lr.ph370.preheader ], [ %indvars.iv.next447.prol, %.lr.ph370.prol ]
  %i.hv = icmp eq i64 %indvars.iv446.ph, %i.by
  br i1 %i.hv, label %.loopexit348, label %.lr.ph370

.lr.ph370:                                        ; preds = %.lr.ph370.prol.loopexit, %.lr.ph370
  %indvars.iv446 = phi i64 [ %indvars.iv.next447.1, %.lr.ph370 ], [ %indvars.iv446.unr, %.lr.ph370.prol.loopexit ] ; 5 uses
  %i.hw = getelementptr inbounds i8, ptr %i.ea, i64 %indvars.iv446
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = sub nsw i64 %indvars.iv446, %i.ax
  %i.hz = getelementptr inbounds i8, ptr %i.dq, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1
  %.narrow294 = add i8 %i.ia, %i.hx
  %i.ib = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv446
  store i8 %.narrow294, ptr %i.ib, align 1
  %indvars.iv.next447 = add nsw i64 %indvars.iv446, 1 ; 3 uses
  %i.ic = getelementptr inbounds i8, ptr %i.ea, i64 %indvars.iv.next447
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = sub nsw i64 %indvars.iv.next447, %i.ax
  %i.if = getelementptr inbounds i8, ptr %i.dq, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1
  %.narrow294.1 = add i8 %i.ig, %i.id
  %i.ih = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv.next447
  store i8 %.narrow294.1, ptr %i.ih, align 1
  %indvars.iv.next447.1 = add nsw i64 %indvars.iv446, 2 ; 2 uses
  %exitcond450.not.1 = icmp eq i64 %indvars.iv.next447.1, %i.bb
  br i1 %exitcond450.not.1, label %.loopexit348, label %.lr.ph370, !llvm.loop !203

.lr.ph368:                                        ; preds = %.lr.ph368.prol.loopexit, %.lr.ph368
  %indvars.iv441 = phi i64 [ %indvars.iv.next442.3, %.lr.ph368 ], [ %indvars.iv441.unr, %.lr.ph368.prol.loopexit ] ; 7 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv441
  %i.ij = load i8, ptr %i.ii, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv441
  %i.il = load i8, ptr %i.ik, align 1
  %.narrow292 = add i8 %i.il, %i.ij
  %i.im = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv441
  store i8 %.narrow292, ptr %i.im, align 1
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv.next442
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next442
  %i.iq = load i8, ptr %i.ip, align 1
  %.narrow292.1 = add i8 %i.iq, %i.io
  %i.ir = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next442
  store i8 %.narrow292.1, ptr %i.ir, align 1
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv.next442.1
  %i.it = load i8, ptr %i.is, align 1
  %i.iu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next442.1
  %i.iv = load i8, ptr %i.iu, align 1
  %.narrow292.2 = add i8 %i.iv, %i.it
  %i.iw = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next442.1
  store i8 %.narrow292.2, ptr %i.iw, align 1
  %indvars.iv.next442.2 = add nuw nsw i64 %indvars.iv441, 3 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv.next442.2
  %i.iy = load i8, ptr %i.ix, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next442.2
  %i.ja = load i8, ptr %i.iz, align 1
  %.narrow292.3 = add i8 %i.ja, %i.iy
  %i.jb = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next442.2
  store i8 %.narrow292.3, ptr %i.jb, align 1
  %indvars.iv.next442.3 = add nuw nsw i64 %indvars.iv441, 4 ; 2 uses
  %exitcond445.not.3 = icmp eq i64 %indvars.iv.next442.3, %wide.trip.count444.a
  br i1 %exitcond445.not.3, label %.loopexit348, label %.lr.ph368, !llvm.loop !204

.preheader351:                                    ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364, %middle.block636, %vec.epilog.middle.block651, %.preheader353
  br i1 %i.ay, label %iter.check604, label %.loopexit348

iter.check604:                                    ; preds = %.preheader351
  br i1 %min.iters.check588, label %.lr.ph366.preheader, label %vector.memcheck584

vector.memcheck584:                               ; preds = %iter.check604
  %i.jc = sub nsw i64 %i.dp, %i.dh
  %diff.check585 = icmp ult i64 %i.jc, 16
  %conflict.rdx = or i1 %diff.check585, %diff.check586
  br i1 %conflict.rdx, label %.lr.ph366.preheader, label %vector.main.loop.iter.check589

vector.main.loop.iter.check589:                   ; preds = %vector.memcheck584
  br i1 %min.iters.check590, label %vec.epilog.ph608, label %vector.body594

vector.body594:                                   ; preds = %vector.main.loop.iter.check589, %vector.body594
  %index595 = phi i64 [ %index.next599, %vector.body594 ], [ 0, %vector.main.loop.iter.check589 ] ; 3 uses
  %i.jd = add i64 %index595, %i.ax                ; 3 uses
  %i.je = getelementptr inbounds i8, ptr %i.ea, i64 %i.jd
  %wide.load596 = load <16 x i8>, ptr %i.je, align 1
  %i.jf = getelementptr inbounds i8, ptr %i.dv, i64 %i.jd
  %wide.load597 = load <16 x i8>, ptr %i.jf, align 1
  %i.jg = zext <16 x i8> %wide.load597 to <16 x i16>
  %i.jh = getelementptr inbounds i8, ptr %i.dq, i64 %index595
  %wide.load598 = load <16 x i8>, ptr %i.jh, align 1
  %i.ji = zext <16 x i8> %wide.load598 to <16 x i16>
  %i.jj = add nuw nsw <16 x i16> %i.ji, %i.jg
  %i.jk = lshr <16 x i16> %i.jj, splat (i16 1)
  %i.jl = trunc nuw <16 x i16> %i.jk to <16 x i8>
  %i.jm = add <16 x i8> %wide.load596, %i.jl
  %i.jn = getelementptr inbounds i8, ptr %i.dq, i64 %i.jd
  store <16 x i8> %i.jm, ptr %i.jn, align 1
  %index.next599 = add nuw i64 %index595, 16      ; 2 uses
  %i.jo = icmp eq i64 %index.next599, %n.vec593
  br i1 %i.jo, label %middle.block600, label %vector.body594, !llvm.loop !205

middle.block600:                                  ; preds = %vector.body594
  br i1 %cmp.n601, label %.loopexit348, label %vec.epilog.iter.check606

vec.epilog.iter.check606:                         ; preds = %middle.block600
  br i1 %min.epilog.iters.check607, label %.lr.ph366.preheader, label %vec.epilog.ph608, !prof !30

vec.epilog.ph608:                                 ; preds = %vector.main.loop.iter.check589, %vec.epilog.iter.check606
  %vec.epilog.resume.val602 = phi i64 [ %n.vec593, %vec.epilog.iter.check606 ], [ 0, %vector.main.loop.iter.check589 ]
  br label %vec.epilog.vector.body611

vec.epilog.vector.body611:                        ; preds = %vec.epilog.vector.body611, %vec.epilog.ph608
  %index612 = phi i64 [ %vec.epilog.resume.val602, %vec.epilog.ph608 ], [ %index.next616, %vec.epilog.vector.body611 ] ; 3 uses
  %i.jp = add i64 %index612, %i.ax                ; 3 uses
  %i.jq = getelementptr inbounds i8, ptr %i.ea, i64 %i.jp
  %wide.load613 = load <4 x i8>, ptr %i.jq, align 1
  %i.jr = getelementptr inbounds i8, ptr %i.dv, i64 %i.jp
  %wide.load614 = load <4 x i8>, ptr %i.jr, align 1
  %i.js = zext <4 x i8> %wide.load614 to <4 x i16>
  %i.jt = getelementptr inbounds i8, ptr %i.dq, i64 %index612
  %wide.load615 = load <4 x i8>, ptr %i.jt, align 1
  %i.ju = zext <4 x i8> %wide.load615 to <4 x i16>
  %i.jv = add nuw nsw <4 x i16> %i.ju, %i.js
  %i.jw = lshr <4 x i16> %i.jv, splat (i16 1)
  %i.jx = trunc nuw <4 x i16> %i.jw to <4 x i8>
  %i.jy = add <4 x i8> %wide.load613, %i.jx
  %i.jz = getelementptr inbounds i8, ptr %i.dq, i64 %i.jp
  store <4 x i8> %i.jy, ptr %i.jz, align 1
  %index.next616 = add nuw i64 %index612, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next616, %n.vec610
  br i1 %i.ka, label %vec.epilog.middle.block617, label %vec.epilog.vector.body611, !llvm.loop !206

vec.epilog.middle.block617:                       ; preds = %vec.epilog.vector.body611
  br i1 %cmp.n618, label %.loopexit348, label %.lr.ph366.preheader

.lr.ph366.preheader:                              ; preds = %vector.memcheck584, %iter.check604, %vec.epilog.iter.check606, %vec.epilog.middle.block617
  %indvars.iv436.ph = phi i64 [ %i.ax, %iter.check604 ], [ %i.ax, %vector.memcheck584 ], [ %i.bt, %vec.epilog.iter.check606 ], [ %i.bu, %vec.epilog.middle.block617 ] ; 8 uses
  %i.kb = sub nsw i64 %i.bb, %indvars.iv436.ph
  %xtraiter788 = and i64 %i.kb, 1
  %lcmp.mod789.not = icmp eq i64 %xtraiter788, 0
  br i1 %lcmp.mod789.not, label %.lr.ph366.prol.loopexit, label %.lr.ph366.prol

.lr.ph366.prol:                                   ; preds = %.lr.ph366.preheader
  %i.kc = getelementptr inbounds i8, ptr %i.ea, i64 %indvars.iv436.ph
  %i.kd = load i8, ptr %i.kc, align 1
  %i.ke = getelementptr inbounds i8, ptr %i.dv, i64 %indvars.iv436.ph
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i16
  %i.kh = sub nsw i64 %indvars.iv436.ph, %i.ax
  %i.ki = getelementptr inbounds i8, ptr %i.dq, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1
  %i.kk = zext i8 %i.kj to i16
  %i.kl = add nuw nsw i16 %i.kk, %i.kg
  %i.km = lshr i16 %i.kl, 1
  %.tr287.prol = trunc nuw i16 %i.km to i8
  %.narrow288.prol = add i8 %i.kd, %.tr287.prol
  %i.kn = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv436.ph
  store i8 %.narrow288.prol, ptr %i.kn, align 1
  %indvars.iv.next437.prol = add nsw i64 %indvars.iv436.ph, 1
  br label %.lr.ph366.prol.loopexit

.lr.ph366.prol.loopexit:                          ; preds = %.lr.ph366.prol, %.lr.ph366.preheader
  %indvars.iv436.unr = phi i64 [ %indvars.iv436.ph, %.lr.ph366.preheader ], [ %indvars.iv.next437.prol, %.lr.ph366.prol ]
  %i.ko = icmp eq i64 %indvars.iv436.ph, %i.bv
  br i1 %i.ko, label %.loopexit348, label %.lr.ph366

.lr.ph364:                                        ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364
  %indvars.iv431 = phi i64 [ %indvars.iv.next432.1, %.lr.ph364 ], [ %indvars.iv431.unr, %.lr.ph364.prol.loopexit ] ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv431
  %i.kq = load i8, ptr %i.kp, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv431
  %i.ks = load i8, ptr %i.kr, align 1
  %i.kt = lshr i8 %i.ks, 1
  %.narrow290 = add i8 %i.kt, %i.kq
  %i.ku = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv431
  store i8 %.narrow290, ptr %i.ku, align 1
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv.next432
  %i.kw = load i8, ptr %i.kv, align 1
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next432
  %i.ky = load i8, ptr %i.kx, align 1
  %i.kz = lshr i8 %i.ky, 1
  %.narrow290.1 = add i8 %i.kz, %i.kw
  %i.la = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next432
  store i8 %.narrow290.1, ptr %i.la, align 1
  %indvars.iv.next432.1 = add nuw nsw i64 %indvars.iv431, 2 ; 2 uses
  %exitcond435.not.1 = icmp eq i64 %indvars.iv.next432.1, %wide.trip.count434.a
  br i1 %exitcond435.not.1, label %.preheader351, label %.lr.ph364, !llvm.loop !207

.lr.ph366:                                        ; preds = %.lr.ph366.prol.loopexit, %.lr.ph366
  %indvars.iv436 = phi i64 [ %indvars.iv.next437.1, %.lr.ph366 ], [ %indvars.iv436.unr, %.lr.ph366.prol.loopexit ] ; 6 uses
  %i.lb = getelementptr inbounds i8, ptr %i.ea, i64 %indvars.iv436
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = getelementptr inbounds i8, ptr %i.dv, i64 %indvars.iv436
  %i.le = load i8, ptr %i.ld, align 1
  %i.lf = zext i8 %i.le to i16
  %i.lg = sub nsw i64 %indvars.iv436, %i.ax
  %i.lh = getelementptr inbounds i8, ptr %i.dq, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1
  %i.lj = zext i8 %i.li to i16
  %i.lk = add nuw nsw i16 %i.lj, %i.lf
  %i.ll = lshr i16 %i.lk, 1
  %.tr287 = trunc nuw i16 %i.ll to i8
  %.narrow288 = add i8 %i.lc, %.tr287
  %i.lm = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv436
  store i8 %.narrow288, ptr %i.lm, align 1
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1 ; 4 uses
  %i.ln = getelementptr inbounds i8, ptr %i.ea, i64 %indvars.iv.next437
  %i.lo = load i8, ptr %i.ln, align 1
  %i.lp = getelementptr inbounds i8, ptr %i.dv, i64 %indvars.iv.next437
  %i.lq = load i8, ptr %i.lp, align 1
  %i.lr = zext i8 %i.lq to i16
  %i.ls = sub nsw i64 %indvars.iv.next437, %i.ax
  %i.lt = getelementptr inbounds i8, ptr %i.dq, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1
  %i.lv = zext i8 %i.lu to i16
  %i.lw = add nuw nsw i16 %i.lv, %i.lr
  %i.lx = lshr i16 %i.lw, 1
  %.tr287.1 = trunc nuw i16 %i.lx to i8
  %.narrow288.1 = add i8 %i.lo, %.tr287.1
  %i.ly = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv.next437
  store i8 %.narrow288.1, ptr %i.ly, align 1
  %indvars.iv.next437.1 = add nsw i64 %indvars.iv436, 2 ; 2 uses
  %exitcond440.not.1 = icmp eq i64 %indvars.iv.next437.1, %i.bb
  br i1 %exitcond440.not.1, label %.loopexit348, label %.lr.ph366, !llvm.loop !208

.preheader354:                                    ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360, %middle.block711, %vec.epilog.middle.block726, %.preheader356
  br i1 %i.ay, label %iter.check678, label %.loopexit348

iter.check678:                                    ; preds = %.preheader354
  br i1 %min.iters.check661, label %.lr.ph362.preheader, label %vector.memcheck654

vector.memcheck654:                               ; preds = %iter.check678
  %i.lz = sub nsw i64 %i.dp, %i.cx
  %diff.check656 = icmp ult i64 %i.lz, 16
  %conflict.rdx657 = or i1 %diff.check655, %diff.check656
  %i.ma = add nsw i64 %i.dp, %i.ax
  %i.mb = sub nsw i64 %i.ma, %i.cx
  %diff.check658 = icmp ult i64 %i.mb, 16
  %conflict.rdx659 = or i1 %conflict.rdx657, %diff.check658
  br i1 %conflict.rdx659, label %.lr.ph362.preheader, label %vector.main.loop.iter.check662

vector.main.loop.iter.check662:                   ; preds = %vector.memcheck654
  br i1 %min.iters.check663, label %vec.epilog.ph682, label %vector.body667

vector.body667:                                   ; preds = %vector.main.loop.iter.check662, %vector.body667
  %index668 = phi i64 [ %index.next673, %vector.body667 ], [ 0, %vector.main.loop.iter.check662 ] ; 4 uses
  %i.mc = add i64 %index668, %i.ax                ; 3 uses
  %i.md = getelementptr inbounds i8, ptr %i.ea, i64 %i.mc
  %wide.load669.a = load <16 x i8>, ptr %i.md, align 1
  %i.me = getelementptr inbounds i8, ptr %i.dq, i64 %index668
  %wide.load670 = load <16 x i8>, ptr %i.me, align 1
  %i.mf = zext <16 x i8> %wide.load670 to <16 x i32> ; 3 uses
  %i.mg = getelementptr inbounds i8, ptr %i.dv, i64 %i.mc
  %wide.load671 = load <16 x i8>, ptr %i.mg, align 1
  %i.mh = zext <16 x i8> %wide.load671 to <16 x i32> ; 3 uses
  %i.mi = getelementptr inbounds i8, ptr %i.dv, i64 %index668
  %wide.load672 = load <16 x i8>, ptr %i.mi, align 1
  %i.mj = zext <16 x i8> %wide.load672 to <16 x i32> ; 2 uses
  %i.mk = mul nuw nsw <16 x i32> %i.mj, splat (i32 3)
  %i.ml = add nuw nsw <16 x i32> %i.mh, %i.mf
  %i.mm = sub nsw <16 x i32> %i.mk, %i.ml         ; 2 uses
  %i.mn = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.mf, <16 x i32> %i.mh) ; 2 uses
  %i.mo = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.mf, <16 x i32> %i.mh) ; 2 uses
  %i.mp = icmp sgt <16 x i32> %i.mo, %i.mm
  %i.mq = select <16 x i1> %i.mp, <16 x i32> %i.mj, <16 x i32> %i.mn
  %i.mr = icmp sgt <16 x i32> %i.mm, %i.mn
  %i.ms = select <16 x i1> %i.mr, <16 x i32> %i.mq, <16 x i32> %i.mo
  %i.mt = trunc nuw <16 x i32> %i.ms to <16 x i8>
  %i.mu = add <16 x i8> %wide.load669.a, %i.mt
  %i.mv = getelementptr inbounds i8, ptr %i.dq, i64 %i.mc
  store <16 x i8> %i.mu, ptr %i.mv, align 1
  %index.next673 = add nuw i64 %index668, 16      ; 2 uses
  %i.mw = icmp eq i64 %index.next673, %n.vec666
  br i1 %i.mw, label %middle.block674, label %vector.body667, !llvm.loop !209

middle.block674:                                  ; preds = %vector.body667
  br i1 %cmp.n675, label %.loopexit348, label %vec.epilog.iter.check680

vec.epilog.iter.check680:                         ; preds = %middle.block674
  br i1 %min.epilog.iters.check681, label %.lr.ph362.preheader, label %vec.epilog.ph682, !prof !30

vec.epilog.ph682:                                 ; preds = %vector.main.loop.iter.check662, %vec.epilog.iter.check680
  %vec.epilog.resume.val676 = phi i64 [ %n.vec666, %vec.epilog.iter.check680 ], [ 0, %vector.main.loop.iter.check662 ]
  br label %vec.epilog.vector.body685

vec.epilog.vector.body685:                        ; preds = %vec.epilog.vector.body685, %vec.epilog.ph682
  %index686 = phi i64 [ %vec.epilog.resume.val676, %vec.epilog.ph682 ], [ %index.next691, %vec.epilog.vector.body685 ] ; 4 uses
  %i.mx = add i64 %index686, %i.ax                ; 3 uses
  %i.my = getelementptr inbounds i8, ptr %i.ea, i64 %i.mx
  %wide.load687 = load <4 x i8>, ptr %i.my, align 1
  %i.mz = getelementptr inbounds i8, ptr %i.dq, i64 %index686
  %wide.load688 = load <4 x i8>, ptr %i.mz, align 1
  %i.na = zext <4 x i8> %wide.load688 to <4 x i32> ; 3 uses
  %i.nb = getelementptr inbounds i8, ptr %i.dv, i64 %i.mx
  %wide.load689 = load <4 x i8>, ptr %i.nb, align 1
  %i.nc = zext <4 x i8> %wide.load689 to <4 x i32> ; 3 uses
  %i.nd = getelementptr inbounds i8, ptr %i.dv, i64 %index686
  %wide.load690 = load <4 x i8>, ptr %i.nd, align 1
  %i.ne = zext <4 x i8> %wide.load690 to <4 x i32> ; 2 uses
  %i.nf = mul nuw nsw <4 x i32> %i.ne, splat (i32 3)
  %i.ng = add nuw nsw <4 x i32> %i.nc, %i.na
  %i.nh = sub nsw <4 x i32> %i.nf, %i.ng          ; 2 uses
  %i.ni = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.na, <4 x i32> %i.nc) ; 2 uses
  %i.nj = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.na, <4 x i32> %i.nc) ; 2 uses
  %i.nk = icmp sgt <4 x i32> %i.nj, %i.nh
  %i.nl = select <4 x i1> %i.nk, <4 x i32> %i.ne, <4 x i32> %i.ni
  %i.nm = icmp sgt <4 x i32> %i.nh, %i.ni
  %i.nn = select <4 x i1> %i.nm, <4 x i32> %i.nl, <4 x i32> %i.nj
  %i.no = trunc nuw <4 x i32> %i.nn to <4 x i8>
  %i.np = add <4 x i8> %wide.load687, %i.no
  %i.nq = getelementptr inbounds i8, ptr %i.dq, i64 %i.mx
  store <4 x i8> %i.np, ptr %i.nq, align 1
  %index.next691 = add nuw i64 %index686, 4       ; 2 uses
  %i.nr = icmp eq i64 %index.next691, %n.vec684
  br i1 %i.nr, label %vec.epilog.middle.block692, label %vec.epilog.vector.body685, !llvm.loop !210

vec.epilog.middle.block692:                       ; preds = %vec.epilog.vector.body685
  br i1 %cmp.n693, label %.loopexit348, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %vector.memcheck654, %iter.check678, %vec.epilog.iter.check680, %vec.epilog.middle.block692
  %indvars.iv426.ph = phi i64 [ %i.ax, %iter.check678 ], [ %i.ax, %vector.memcheck654 ], [ %i.bq, %vec.epilog.iter.check680 ], [ %i.br, %vec.epilog.middle.block692 ]
  br label %.lr.ph362

.lr.ph360:                                        ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.3, %.lr.ph360 ], [ %indvars.iv421.unr, %.lr.ph360.prol.loopexit ] ; 7 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv421
  %i.nt = load i8, ptr %i.ns, align 1
  %i.nu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv421
  %i.nv = load i8, ptr %i.nu, align 1
  %.narrow286 = add i8 %i.nv, %i.nt
  %i.nw = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv421
  store i8 %.narrow286, ptr %i.nw, align 1
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv.next422
  %i.ny = load i8, ptr %i.nx, align 1
  %i.nz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next422
  %i.oa = load i8, ptr %i.nz, align 1
  %.narrow286.1 = add i8 %i.oa, %i.ny
  %i.ob = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next422
  store i8 %.narrow286.1, ptr %i.ob, align 1
  %indvars.iv.next422.1 = add nuw nsw i64 %indvars.iv421, 2 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv.next422.1
  %i.od = load i8, ptr %i.oc, align 1
  %i.oe = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next422.1
  %i.of = load i8, ptr %i.oe, align 1
  %.narrow286.2 = add i8 %i.of, %i.od
  %i.og = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next422.1
  store i8 %.narrow286.2, ptr %i.og, align 1
  %indvars.iv.next422.2 = add nuw nsw i64 %indvars.iv421, 3 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv.next422.2
  %i.oi = load i8, ptr %i.oh, align 1
  %i.oj = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.next422.2
  %i.ok = load i8, ptr %i.oj, align 1
  %.narrow286.3 = add i8 %i.ok, %i.oi
  %i.ol = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next422.2
  store i8 %.narrow286.3, ptr %i.ol, align 1
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %exitcond425.not.3 = icmp eq i64 %indvars.iv.next422.3, %wide.trip.count424
  br i1 %exitcond425.not.3, label %.preheader354, label %.lr.ph360, !llvm.loop !211

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %.lr.ph362 ], [ %indvars.iv426.ph, %.lr.ph362.preheader ] ; 5 uses
  %i.om = getelementptr inbounds i8, ptr %i.ea, i64 %indvars.iv426
  %i.on = load i8, ptr %i.om, align 1
  %i.oo = sub nsw i64 %indvars.iv426, %i.ax       ; 2 uses
  %i.op = getelementptr inbounds i8, ptr %i.dq, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1
  %i.or = zext i8 %i.oq to i32                    ; 3 uses
  %i.os = getelementptr inbounds i8, ptr %i.dv, i64 %indvars.iv426
  %i.ot = load i8, ptr %i.os, align 1
  %i.ou = zext i8 %i.ot to i32                    ; 3 uses
  %i.ov = getelementptr inbounds i8, ptr %i.dv, i64 %i.oo
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = zext i8 %i.ow to i32                    ; 2 uses
  %i.oy = mul nuw nsw i32 %i.ox, 3
  %i.oz = add nuw nsw i32 %i.ou, %i.or
  %i.pa = sub nsw i32 %i.oy, %i.oz                ; 2 uses
  %i.pb = tail call i32 @llvm.umin.i32(i32 range(i32 0, 256) %i.or, i32 range(i32 0, 256) %i.ou) ; 2 uses
  %i.pc = tail call i32 @llvm.umax.i32(i32 range(i32 0, 256) %i.or, i32 range(i32 0, 256) %i.ou) ; 2 uses
  %.not.i303 = icmp sgt i32 %i.pc, %i.pa
  %i.pd = select i1 %.not.i303, i32 %i.ox, i32 %i.pb
  %.not20.i = icmp sgt i32 %i.pa, %i.pb
  %i.pe = select i1 %.not20.i, i32 %i.pd, i32 %i.pc
  %.tr = trunc nuw i32 %i.pe to i8
  %.narrow284 = add i8 %i.on, %.tr
  %i.pf = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv426
  store i8 %.narrow284, ptr %i.pf, align 1
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %i.bb
  br i1 %exitcond430.not, label %.loopexit348, label %.lr.ph362, !llvm.loop !212

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull align 1 %i.ea, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check749, label %.loopexit348

iter.check749:                                    ; preds = %bb.t
  br i1 %or.cond768, label %.lr.ph.preheader, label %vector.main.loop.iter.check733

vector.main.loop.iter.check733:                   ; preds = %iter.check749
  br i1 %min.iters.check734, label %vec.epilog.ph753, label %vector.body738

vector.body738:                                   ; preds = %vector.main.loop.iter.check733, %vector.body738
  %index739 = phi i64 [ %index.next744, %vector.body738 ], [ 0, %vector.main.loop.iter.check733 ] ; 3 uses
  %i.pg = add i64 %index739, %i.ax                ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %i.ea, i64 %i.pg ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %wide.load740 = load <16 x i8>, ptr %i.ph, align 1
  %wide.load741 = load <16 x i8>, ptr %i.pi, align 1
  %i.pj = getelementptr inbounds i8, ptr %i.dq, i64 %index739 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %wide.load742 = load <16 x i8>, ptr %i.pj, align 1
  %wide.load743 = load <16 x i8>, ptr %i.pk, align 1
  %i.pl = lshr <16 x i8> %wide.load742, splat (i8 1)
  %i.pm = lshr <16 x i8> %wide.load743, splat (i8 1)
  %i.pn = add <16 x i8> %i.pl, %wide.load740
  %i.po = add <16 x i8> %i.pm, %wide.load741
  %i.pp = getelementptr inbounds i8, ptr %i.dq, i64 %i.pg ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  store <16 x i8> %i.pn, ptr %i.pp, align 1
  store <16 x i8> %i.po, ptr %i.pq, align 1
  %index.next744 = add nuw i64 %index739, 32      ; 2 uses
  %i.pr = icmp eq i64 %index.next744, %n.vec737
  br i1 %i.pr, label %middle.block745, label %vector.body738, !llvm.loop !213

middle.block745:                                  ; preds = %vector.body738
  br i1 %cmp.n746, label %.loopexit348, label %vec.epilog.iter.check751

vec.epilog.iter.check751:                         ; preds = %middle.block745
  br i1 %min.epilog.iters.check752, label %.lr.ph.preheader, label %vec.epilog.ph753, !prof !201

vec.epilog.ph753:                                 ; preds = %vector.main.loop.iter.check733, %vec.epilog.iter.check751
  %vec.epilog.resume.val747 = phi i64 [ %n.vec737, %vec.epilog.iter.check751 ], [ 0, %vector.main.loop.iter.check733 ]
  br label %vec.epilog.vector.body756

vec.epilog.vector.body756:                        ; preds = %vec.epilog.vector.body756, %vec.epilog.ph753
  %index757 = phi i64 [ %vec.epilog.resume.val747, %vec.epilog.ph753 ], [ %index.next760, %vec.epilog.vector.body756 ] ; 3 uses
  %i.ps = add i64 %index757, %i.ax                ; 2 uses
  %i.pt = getelementptr inbounds i8, ptr %i.ea, i64 %i.ps
  %wide.load758 = load <8 x i8>, ptr %i.pt, align 1
  %i.pu = getelementptr inbounds i8, ptr %i.dq, i64 %index757
  %wide.load759 = load <8 x i8>, ptr %i.pu, align 1
  %i.pv = lshr <8 x i8> %wide.load759, splat (i8 1)
  %i.pw = add <8 x i8> %i.pv, %wide.load758
  %i.px = getelementptr inbounds i8, ptr %i.dq, i64 %i.ps
  store <8 x i8> %i.pw, ptr %i.px, align 1
  %index.next760 = add nuw i64 %index757, 8       ; 2 uses
  %i.py = icmp eq i64 %index.next760, %n.vec755
  br i1 %i.py, label %vec.epilog.middle.block761, label %vec.epilog.vector.body756, !llvm.loop !214

vec.epilog.middle.block761:                       ; preds = %vec.epilog.vector.body756
  br i1 %cmp.n762, label %.loopexit348, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check749, %vec.epilog.iter.check751, %vec.epilog.middle.block761
  %indvars.iv.ph = phi i64 [ %i.ax, %iter.check749 ], [ %i.bn, %vec.epilog.iter.check751 ], [ %i.bo, %vec.epilog.middle.block761 ] ; 7 uses
  %i.pz = sub nsw i64 %i.bb, %indvars.iv.ph
  %xtraiter = and i64 %i.pz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.qa = getelementptr inbounds i8, ptr %i.ea, i64 %indvars.iv.ph
  %i.qb = load i8, ptr %i.qa, align 1
  %i.qc = sub nsw i64 %indvars.iv.ph, %i.ax
  %i.qd = getelementptr inbounds i8, ptr %i.dq, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1
  %i.qf = lshr i8 %i.qe, 1
  %.narrow.prol = add i8 %i.qf, %i.qb
  %i.qg = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv.ph
  store i8 %.narrow.prol, ptr %i.qg, align 1
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.qh = icmp eq i64 %indvars.iv.ph, %i.bp
  br i1 %i.qh, label %.loopexit348, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.qi = getelementptr inbounds i8, ptr %i.ea, i64 %indvars.iv
  %i.qj = load i8, ptr %i.qi, align 1
  %i.qk = sub nsw i64 %indvars.iv, %i.ax
  %i.ql = getelementptr inbounds i8, ptr %i.dq, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1
  %i.qn = lshr i8 %i.qm, 1
  %.narrow = add i8 %i.qn, %i.qj
  %i.qo = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv
  store i8 %.narrow, ptr %i.qo, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.qp = getelementptr inbounds i8, ptr %i.ea, i64 %indvars.iv.next
  %i.qq = load i8, ptr %i.qp, align 1
  %i.qr = sub nsw i64 %indvars.iv.next, %i.ax
  %i.qs = getelementptr inbounds i8, ptr %i.dq, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1
  %i.qu = lshr i8 %i.qt, 1
  %.narrow.1 = add i8 %i.qu, %i.qq
  %i.qv = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv.next
  store i8 %.narrow.1, ptr %i.qv, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.bb
  br i1 %exitcond.not.1, label %.loopexit348, label %.lr.ph, !llvm.loop !215

.loopexit348:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph362, %.lr.ph366.prol.loopexit, %.lr.ph366, %.lr.ph368.prol.loopexit, %.lr.ph368, %.lr.ph370.prol.loopexit, %.lr.ph370, %middle.block745, %vec.epilog.middle.block761, %middle.block674, %vec.epilog.middle.block692, %middle.block600, %vec.epilog.middle.block617, %middle.block566, %vec.epilog.middle.block581, %middle.block539, %vec.epilog.middle.block, %bb.t, %.preheader354, %.preheader351, %.preheader349, %bb.s, %bb.r, %bb.q
  %i.qw = getelementptr inbounds i8, ptr %i.ea, i64 %i.bb
  br i1 %i.au, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %.loopexit348
  br i1 %i.bi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.qx = load i8, ptr %i.bk, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.qy = phi i8 [ %i.qx, %bb.v ], [ 1, %bb.u ]   ; 9 uses
  switch i32 %6, label %.preheader [
    i32 4, label %.preheader336
    i32 2, label %.preheader338
  ]

.preheader338:                                    ; preds = %bb.w
  br i1 %.not404, label %.loopexit335, label %.lr.ph387.preheader

.lr.ph387.preheader:                              ; preds = %.preheader338
  br i1 %i.cg, label %.lr.ph387.epil.preheader, label %.lr.ph387

.preheader336:                                    ; preds = %bb.w
  br i1 %.not404, label %.loopexit335, label %.lr.ph392.preheader

.lr.ph392.preheader:                              ; preds = %.preheader336
  br i1 %i.ch, label %.lr.ph392.epil.preheader, label %.lr.ph392

.preheader:                                       ; preds = %bb.w
  br i1 %.not404, label %.loopexit335, label %.lr.ph397.preheader

.lr.ph397.preheader:                              ; preds = %.preheader
  br i1 %i.ci, label %.lr.ph397.epil.preheader, label %.lr.ph397

.lr.ph392:                                        ; preds = %.lr.ph392.preheader, %.lr.ph392
  %.0242390 = phi ptr [ %i.rg, %.lr.ph392 ], [ %i.dz, %.lr.ph392.preheader ] ; 3 uses
  %.0245389 = phi ptr [ %i.qz, %.lr.ph392 ], [ %i.dq, %.lr.ph392.preheader ] ; 2 uses
  %.0251388 = phi i32 [ %i.rh, %.lr.ph392 ], [ 0, %.lr.ph392.preheader ]
  %niter812 = phi i32 [ %niter812.next.1, %.lr.ph392 ], [ 0, %.lr.ph392.preheader ]
  %i.qz = getelementptr inbounds nuw i8, ptr %.0245389, i64 1 ; 2 uses
  %i.ra = load i8, ptr %.0245389, align 1         ; 2 uses
  %i.rb = lshr i8 %i.ra, 4
  %i.rc = mul i8 %i.rb, %i.qy
  %i.rd = getelementptr inbounds nuw i8, ptr %.0242390, i64 1
  store i8 %i.rc, ptr %.0242390, align 1
  %i.re = and i8 %i.ra, 15
  %i.rf = mul i8 %i.re, %i.qy
  %i.rg = getelementptr inbounds nuw i8, ptr %.0242390, i64 2 ; 2 uses
  store i8 %i.rf, ptr %i.rd, align 1
  %i.rh = add nuw i32 %.0251388, 2                ; 2 uses
  %niter812.next.1 = add i32 %niter812, 2         ; 2 uses
  %niter812.ncmp.1 = icmp eq i32 %niter812.next.1, %unroll_iter811
  br i1 %niter812.ncmp.1, label %.loopexit335.loopexit770.unr-lcssa, label %.lr.ph392, !llvm.loop !216

end_hunk_2
begin_hunk_3_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
  %i.tl = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv35.i
  %i.tm = load i8, ptr %i.tl, align 1
  store i8 %i.tm, ptr %i.tj, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1 ; 2 uses
  %i.tn = shl nuw nsw i64 %indvars.iv.next36.i, 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.tn ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 1
  store i8 -1, ptr %i.tp, align 1
  %i.tq = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv.next36.i
  %i.tr = load i8, ptr %i.tq, align 1
  store i8 %i.tr, ptr %i.to, align 1
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %i.ts = shl nuw nsw i64 %indvars.iv.next36.i.1, 1
  %i.tt = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ts ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 1
  store i8 -1, ptr %i.tu, align 1
  %i.tv = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv.next36.i.1
  %i.tw = load i8, ptr %i.tv, align 1
  store i8 %i.tw, ptr %i.tt, align 1
  %indvars.iv.next36.i.2 = add nsw i64 %indvars.iv35.i, -3 ; 3 uses
  %i.tx = shl nuw nsw i64 %indvars.iv.next36.i.2, 1
  %i.ty = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.tx ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 1
  store i8 -1, ptr %i.tz, align 1
  %i.ua = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv.next36.i.2
  %i.ub = load i8, ptr %i.ua, align 1
  store i8 %i.ub, ptr %i.ty, align 1
  %indvars.iv.next36.i.3 = add nsw i64 %indvars.iv35.i, -4
  %.not39.i.3 = icmp eq i64 %indvars.iv.next36.i.2, 0
  br i1 %.not39.i.3, label %.loopexit, label %.lr.ph32.i, !llvm.loop !220

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.uc = shl nsw i64 %indvars.iv.i, 2
  %i.ud = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.uc ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 3
  store i8 -1, ptr %i.ue, align 1
  %i.uf = mul nuw nsw i64 %indvars.iv.i, 3
  %i.ug = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.uf ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 2
  %i.ui = load i8, ptr %i.uh, align 1
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ud, i64 2
  store i8 %i.ui, ptr %i.uj, align 1
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 1
  %i.ul = load i8, ptr %i.uk, align 1
  %i.um = getelementptr inbounds nuw i8, ptr %i.ud, i64 1
  store i8 %i.ul, ptr %i.um, align 1
  %i.un = load i8, ptr %i.ug, align 1
  store i8 %i.un, ptr %i.ud, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.uo = shl nsw i64 %indvars.iv.next.i, 2
  %i.up = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.uo ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 3
  store i8 -1, ptr %i.uq, align 1
  %i.ur = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.us = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ur ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 2
  %i.uu = load i8, ptr %i.ut, align 1
  %i.uv = getelementptr inbounds nuw i8, ptr %i.up, i64 2
  store i8 %i.uu, ptr %i.uv, align 1
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 1
  %i.ux = load i8, ptr %i.uw, align 1
  %i.uy = getelementptr inbounds nuw i8, ptr %i.up, i64 1
  store i8 %i.ux, ptr %i.uy, align 1
  %i.uz = load i8, ptr %i.us, align 1
  store i8 %i.uz, ptr %i.up, align 1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.i304.1 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i304.1, label %.loopexit, label %.lr.ph.i, !llvm.loop !221

bb.ad:                                            ; preds = %.loopexit348
  br i1 %i.bc, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.bd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr nonnull align 1 %i.dq, i64 %i.bh, i1 false)
  br label %.loopexit

bb.ag:                                            ; preds = %bb.ae
  br i1 %i.be, label %.preheader.i312, label %.preheader26.i306

.preheader26.i306:                                ; preds = %bb.ag
  br i1 %i.bf, label %.lr.ph.i308.preheader, label %.loopexit

.lr.ph.i308.preheader:                            ; preds = %.preheader26.i306
  br i1 %lcmp.mod801.not.not, label %.lr.ph.i308.prol, label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol:                                 ; preds = %.lr.ph.i308.preheader
  %i.va = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.cb ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 3
  store i8 -1, ptr %i.vb, align 1
  %i.vc = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.cc ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 2
  %i.ve = load i8, ptr %i.vd, align 1
  %i.vf = getelementptr inbounds nuw i8, ptr %i.va, i64 2
  store i8 %i.ve, ptr %i.vf, align 1
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vc, i64 1
  %i.vh = load i8, ptr %i.vg, align 1
  %i.vi = getelementptr inbounds nuw i8, ptr %i.va, i64 1
  store i8 %i.vh, ptr %i.vi, align 1
  %i.vj = load i8, ptr %i.vc, align 1
  store i8 %i.vj, ptr %i.va, align 1
  br label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol.loopexit:                        ; preds = %.lr.ph.i308.prol, %.lr.ph.i308.preheader
  %indvars.iv.i309.unr = phi i64 [ %i.bg, %.lr.ph.i308.preheader ], [ %indvars.iv.next.i310.prol, %.lr.ph.i308.prol ]
  br i1 %i.cd, label %.loopexit, label %.lr.ph.i308

.preheader.i312:                                  ; preds = %bb.ag
  br i1 %i.bf, label %.lr.ph32.i314.preheader, label %.loopexit

.lr.ph32.i314.preheader:                          ; preds = %.preheader.i312
  br i1 %min.iters.check, label %.lr.ph32.i314.preheader772, label %vector.body

vector.body:                                      ; preds = %.lr.ph32.i314.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph32.i314.preheader ] ; 2 uses
  %i.vk = sub i64 %i.bg, %index                   ; 2 uses
  %i.vl = shl nuw nsw i64 %i.vk, 1
  %i.vm = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.vk
  %i.vo = getelementptr inbounds i8, ptr %i.vn, i64 -7
  %wide.load = load <8 x i8>, ptr %i.vo, align 1
  %i.vp = getelementptr inbounds i8, ptr %i.vm, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.vp, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vq = icmp eq i64 %index.next, %n.vec
  br i1 %i.vq, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.i314.preheader772

.lr.ph32.i314.preheader772:                       ; preds = %.lr.ph32.i314.preheader, %middle.block
  %indvars.iv35.i315.ph = phi i64 [ %i.bg, %.lr.ph32.i314.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph32.i314

.lr.ph32.i314:                                    ; preds = %.lr.ph32.i314.preheader772, %.lr.ph32.i314
  %indvars.iv35.i315 = phi i64 [ %indvars.iv.next36.i316, %.lr.ph32.i314 ], [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader772 ] ; 4 uses
  %i.vr = shl nuw nsw i64 %indvars.iv35.i315, 1
  %i.vs = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.vr ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 1
  store i8 -1, ptr %i.vt, align 1
  %i.vu = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv35.i315
  %i.vv = load i8, ptr %i.vu, align 1
  store i8 %i.vv, ptr %i.vs, align 1
  %indvars.iv.next36.i316 = add nsw i64 %indvars.iv35.i315, -1
  %.not39.i317 = icmp eq i64 %indvars.iv35.i315, 0
  br i1 %.not39.i317, label %.loopexit, label %.lr.ph32.i314, !llvm.loop !223

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.prol.loopexit, %.lr.ph.i308
  %indvars.iv.i309 = phi i64 [ %indvars.iv.next.i310.1, %.lr.ph.i308 ], [ %indvars.iv.i309.unr, %.lr.ph.i308.prol.loopexit ] ; 4 uses
  %i.vw = shl nsw i64 %indvars.iv.i309, 2
  %i.vx = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.vw ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 3
  store i8 -1, ptr %i.vy, align 1
  %i.vz = mul nuw nsw i64 %indvars.iv.i309, 3
  %i.wa = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.vz ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 2
  %i.wc = load i8, ptr %i.wb, align 1
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vx, i64 2
  store i8 %i.wc, ptr %i.wd, align 1
  %i.we = getelementptr inbounds nuw i8, ptr %i.wa, i64 1
  %i.wf = load i8, ptr %i.we, align 1
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vx, i64 1
  store i8 %i.wf, ptr %i.wg, align 1
  %i.wh = load i8, ptr %i.wa, align 1
  store i8 %i.wh, ptr %i.vx, align 1
  %indvars.iv.next.i310 = add nsw i64 %indvars.iv.i309, -1 ; 3 uses
  %i.wi = shl nsw i64 %indvars.iv.next.i310, 2
  %i.wj = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.wi ; 4 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 3
  store i8 -1, ptr %i.wk, align 1
  %i.wl = mul nuw nsw i64 %indvars.iv.next.i310, 3
  %i.wm = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.wl ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 2
  %i.wo = load i8, ptr %i.wn, align 1
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wj, i64 2
  store i8 %i.wo, ptr %i.wp, align 1
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 1
  %i.wr = load i8, ptr %i.wq, align 1
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wj, i64 1
  store i8 %i.wr, ptr %i.ws, align 1
  %i.wt = load i8, ptr %i.wm, align 1
  store i8 %i.wt, ptr %i.wj, align 1
  %indvars.iv.next.i310.1 = add nsw i64 %indvars.iv.i309, -2
  %.not.i311.1 = icmp eq i64 %indvars.iv.next.i310, 0
  br i1 %.not.i311.1, label %.loopexit, label %.lr.ph.i308, !llvm.loop !221

bb.ah:                                            ; preds = %bb.ad
  br i1 %i.a, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.bd, label %.preheader342, label %bb.aj

.preheader342:                                    ; preds = %bb.ai
  br i1 %.not404, label %.loopexit, label %.lr.ph382.preheader

.lr.ph382.preheader:                              ; preds = %.preheader342
  br i1 %min.iters.check506, label %.lr.ph382.preheader775, label %vector.ph507

vector.ph507:                                     ; preds = %.lr.ph382.preheader
  %12 = getelementptr i8, ptr %i.dz, i64 %10
  %13 = getelementptr i8, ptr %i.dq, i64 %10
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %vector.ph507
  %index511 = phi i64 [ 0, %vector.ph507 ], [ %index.next520, %vector.body510 ] ; 2 uses
  %14 = shl i64 %index511, 1                      ; 9 uses
  %next.gep = getelementptr i8, ptr %i.dz, i64 %14
  %next.gep512 = getelementptr i8, ptr %i.dq, i64 %14 ; 2 uses
  %15 = getelementptr i8, ptr %i.dq, i64 %14      ; 2 uses
  %next.gep513 = getelementptr i8, ptr %15, i64 2
  %16 = getelementptr i8, ptr %i.dq, i64 %14      ; 2 uses
  %next.gep514 = getelementptr i8, ptr %16, i64 4
  %17 = getelementptr i8, ptr %i.dq, i64 %14      ; 2 uses
  %next.gep515 = getelementptr i8, ptr %17, i64 6
  %18 = getelementptr i8, ptr %i.dq, i64 %14      ; 2 uses
  %next.gep516 = getelementptr i8, ptr %18, i64 8
  %i.wu = getelementptr i8, ptr %i.dq, i64 %14    ; 2 uses
  %next.gep517 = getelementptr i8, ptr %i.wu, i64 10
  %19 = getelementptr i8, ptr %i.dq, i64 %14      ; 2 uses
  %next.gep518 = getelementptr i8, ptr %19, i64 12
  %20 = getelementptr i8, ptr %i.dq, i64 %14      ; 2 uses
  %next.gep519 = getelementptr i8, ptr %20, i64 14
  %21 = load i8, ptr %next.gep512, align 1
  %i.wv = load i8, ptr %next.gep513, align 1
  %22 = load i8, ptr %next.gep514, align 1
  %23 = load i8, ptr %next.gep515, align 1
  %24 = load i8, ptr %next.gep516, align 1
  %25 = load i8, ptr %next.gep517, align 1
  %26 = load i8, ptr %next.gep518, align 1
  %i.ww = load i8, ptr %next.gep519, align 1
  %27 = insertelement <8 x i8> poison, i8 %21, i64 0
  %28 = insertelement <8 x i8> %27, i8 %i.wv, i64 1
  %29 = insertelement <8 x i8> %28, i8 %22, i64 2
  %30 = insertelement <8 x i8> %29, i8 %23, i64 3
  %31 = insertelement <8 x i8> %30, i8 %24, i64 4
  %32 = insertelement <8 x i8> %31, i8 %25, i64 5
  %33 = insertelement <8 x i8> %32, i8 %26, i64 6
  %34 = insertelement <8 x i8> %33, i8 %i.ww, i64 7
  %35 = zext <8 x i8> %34 to <8 x i16>
  %36 = shl nuw <8 x i16> %35, splat (i16 8)
  %37 = getelementptr inbounds nuw i8, ptr %next.gep512, i64 1
  %i.wx = getelementptr i8, ptr %15, i64 3
  %38 = getelementptr i8, ptr %16, i64 5
  %39 = getelementptr i8, ptr %17, i64 7
  %40 = getelementptr i8, ptr %18, i64 9
  %41 = getelementptr i8, ptr %i.wu, i64 11
  %i.wy = getelementptr i8, ptr %19, i64 13
  %i.wz = getelementptr i8, ptr %20, i64 15
  %42 = load i8, ptr %37, align 1
  %43 = load i8, ptr %i.wx, align 1
  %44 = load i8, ptr %38, align 1
  %i.xa = load i8, ptr %39, align 1
  %45 = load i8, ptr %40, align 1
  %46 = load i8, ptr %41, align 1
  %47 = load i8, ptr %i.wy, align 1
  %i.xb = load i8, ptr %i.wz, align 1
  %48 = insertelement <8 x i8> poison, i8 %42, i64 0
  %49 = insertelement <8 x i8> %48, i8 %43, i64 1
  %50 = insertelement <8 x i8> %49, i8 %44, i64 2
  %51 = insertelement <8 x i8> %50, i8 %i.xa, i64 3
  %52 = insertelement <8 x i8> %51, i8 %45, i64 4
  %53 = insertelement <8 x i8> %52, i8 %46, i64 5
  %54 = insertelement <8 x i8> %53, i8 %47, i64 6
  %55 = insertelement <8 x i8> %54, i8 %i.xb, i64 7
  %56 = zext <8 x i8> %55 to <8 x i16>
  %57 = or disjoint <8 x i16> %36, %56
  store <8 x i16> %57, ptr %next.gep, align 2
  %index.next520 = add nuw i64 %index511, 8       ; 2 uses
  %i.xc = icmp eq i64 %index.next520, %n.vec509
  br i1 %i.xc, label %middle.block521, label %vector.body510, !llvm.loop !224

middle.block521:                                  ; preds = %vector.body510
  br i1 %cmp.n522, label %.loopexit, label %.lr.ph382.preheader775

.lr.ph382.preheader775:                           ; preds = %.lr.ph382.preheader, %middle.block521
  %.0236381.ph = phi ptr [ %i.dz, %.lr.ph382.preheader ], [ %12, %middle.block521 ]
  %.3254380.ph = phi i32 [ 0, %.lr.ph382.preheader ], [ %11, %middle.block521 ]
  %.0268379.ph = phi ptr [ %i.dq, %.lr.ph382.preheader ], [ %13, %middle.block521 ]
  br label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.preheader775, %.lr.ph382
  %.0236381 = phi ptr [ %66, %.lr.ph382 ], [ %.0236381.ph, %.lr.ph382.preheader775 ] ; 2 uses
  %.3254380 = phi i32 [ %65, %.lr.ph382 ], [ %.3254380.ph, %.lr.ph382.preheader775 ]
  %.0268379 = phi ptr [ %67, %.lr.ph382 ], [ %.0268379.ph, %.lr.ph382.preheader775 ] ; 3 uses
  %58 = load i8, ptr %.0268379, align 1
  %59 = zext i8 %58 to i16
  %60 = shl nuw i16 %59, 8
  %61 = getelementptr inbounds nuw i8, ptr %.0268379, i64 1
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i16
  %64 = or disjoint i16 %60, %63
  store i16 %64, ptr %.0236381, align 2
  %65 = add nuw i32 %.3254380, 1                  ; 2 uses
  %66 = getelementptr inbounds nuw i8, ptr %.0236381, i64 2
  %67 = getelementptr inbounds nuw i8, ptr %.0268379, i64 2
  %exitcond453.not = icmp eq i32 %65, %i.z
  br i1 %exitcond453.not, label %.loopexit, label %.lr.ph382, !llvm.loop !225

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.be, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.aj
  br i1 %i.x, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.aj
  br i1 %i.x, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.bz, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.xv, %.lr.ph378 ], [ %i.dz, %.lr.ph378.preheader ] ; 5 uses
  %.1269375 = phi ptr [ %i.xw, %.lr.ph378 ], [ %i.dq, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.xd = load i8, ptr %.1269375, align 1
  %i.xe = zext i8 %i.xd to i16
  %i.xf = shl nuw i16 %i.xe, 8
  %i.xg = getelementptr inbounds nuw i8, ptr %.1269375, i64 1
  %i.xh = load i8, ptr %i.xg, align 1
  %i.xi = zext i8 %i.xh to i16
  %i.xj = or disjoint i16 %i.xf, %i.xi
  store i16 %i.xj, ptr %.1377, align 2
  %i.xk = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.xk, align 2
  %i.xl = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.xm = getelementptr inbounds nuw i8, ptr %.1269375, i64 2
  %i.xn = load i8, ptr %i.xm, align 1
  %i.xo = zext i8 %i.xn to i16
  %i.xp = shl nuw i16 %i.xo, 8
  %i.xq = getelementptr inbounds nuw i8, ptr %.1269375, i64 3
  %i.xr = load i8, ptr %i.xq, align 1
  %i.xs = zext i8 %i.xr to i16
  %i.xt = or disjoint i16 %i.xp, %i.xs
  store i16 %i.xt, ptr %i.xl, align 2
  %i.xu = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.xu, align 2
  %i.xv = getelementptr inbounds nuw i8, ptr %.1377, i64 8 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.1269375, i64 4 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit777.unr-lcssa, label %.lr.ph378, !llvm.loop !226

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.yy, %.lr.ph374 ], [ %i.dz, %.preheader346 ] ; 5 uses
  %.5256372 = phi i32 [ %i.yx, %.lr.ph374 ], [ 0, %.preheader346 ]
  %.2270371 = phi ptr [ %i.yz, %.lr.ph374 ], [ %i.dq, %.preheader346 ] ; 7 uses
  %i.xx = load i8, ptr %.2270371, align 1
  %i.xy = zext i8 %i.xx to i16
  %i.xz = shl nuw i16 %i.xy, 8
  %i.ya = getelementptr inbounds nuw i8, ptr %.2270371, i64 1
  %i.yb = load i8, ptr %i.ya, align 1
  %i.yc = zext i8 %i.yb to i16
  %i.yd = or disjoint i16 %i.xz, %i.yc
  store i16 %i.yd, ptr %.2373, align 2
  %i.ye = getelementptr inbounds nuw i8, ptr %.2270371, i64 2
  %i.yf = load i8, ptr %i.ye, align 1
  %i.yg = zext i8 %i.yf to i16
  %i.yh = shl nuw i16 %i.yg, 8
  %i.yi = getelementptr inbounds nuw i8, ptr %.2270371, i64 3
  %i.yj = load i8, ptr %i.yi, align 1
  %i.yk = zext i8 %i.yj to i16
  %i.yl = or disjoint i16 %i.yh, %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.yl, ptr %i.ym, align 2
  %i.yn = getelementptr inbounds nuw i8, ptr %.2270371, i64 4
  %i.yo = load i8, ptr %i.yn, align 1
  %i.yp = zext i8 %i.yo to i16
  %i.yq = shl nuw i16 %i.yp, 8
  %i.yr = getelementptr inbounds nuw i8, ptr %.2270371, i64 5
  %i.ys = load i8, ptr %i.yr, align 1
  %i.yt = zext i8 %i.ys to i16
  %i.yu = or disjoint i16 %i.yq, %i.yt
  %i.yv = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.yu, ptr %i.yv, align 2
  %i.yw = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.yw, align 2
  %i.yx = add nuw i32 %.5256372, 1                ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.yz = getelementptr inbounds nuw i8, ptr %.2270371, i64 6
  %exitcond451.not = icmp eq i32 %i.yx, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374, !llvm.loop !227

.loopexit.loopexit777.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod798.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit777.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.dz, %.lr.ph378.preheader ], [ %i.xv, %.loopexit.loopexit777.unr-lcssa ] ; 2 uses
  %.1269375.epil.init = phi ptr [ %i.dq, %.lr.ph378.preheader ], [ %i.xw, %.loopexit.loopexit777.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod799)
  %i.za = load i8, ptr %.1269375.epil.init, align 1
  %i.zb = zext i8 %i.za to i16
  %i.zc = shl nuw i16 %i.zb, 8
  %i.zd = getelementptr inbounds nuw i8, ptr %.1269375.epil.init, i64 1
  %i.ze = load i8, ptr %i.zd, align 1
  %i.zf = zext i8 %i.ze to i16
  %i.zg = or disjoint i16 %i.zc, %i.zf
  store i16 %i.zg, ptr %.1377.epil.init, align 2
  %i.zh = getelementptr inbounds nuw i8, ptr %.1377.epil.init, i64 2
  store i16 -1, ptr %i.zh, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph374, %.lr.ph378.epil.preheader, %.loopexit.loopexit777.unr-lcssa, %.lr.ph382, %.lr.ph.i308.prol.loopexit, %.lr.ph.i308, %.lr.ph32.i314, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %middle.block521, %middle.block, %.preheader346, %.preheader344, %.preheader342, %.loopexit335, %bb.ah, %bb.af, %.preheader26.i, %.preheader.i, %.preheader26.i306, %.preheader.i312
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge, label %bb.n, !llvm.loop !228

._crit_edge:                                      ; preds = %.loopexit, %bb.m
  tail call void @free(ptr noundef %i.as) #47
  br label %bb.al

bb.ak:                                            ; preds = %bb.n
  %i.zi = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.30, ptr %i.zi, align 8
  tail call void @free(ptr noundef %i.as) #47
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge, %bb.l, %bb.j, %_ZL21stbi__mad2sizes_validiii.exit.thread, %_ZL21stbi__mad3sizes_validiiii.exit.thread, %bb.d
  %.0 = phi i32 [ 0, %bb.j ], [ 0, %bb.d ], [ 0, %_ZL21stbi__mad3sizes_validiiii.exit.thread ], [ 0, %bb.l ], [ 0, %_ZL21stbi__mad2sizes_validiii.exit.thread ], [ 0, %bb.ak ], [ 1, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #38 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !229

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !230

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.al = icmp sgt i32 %.pre, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 4
  %or.cond103 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond103, label %.loopexit70.sink.split, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.old101 = load i32, ptr %.old, align 8
  %.old102 = icmp sgt i32 %.old101, 4
  br i1 %.old102, label %.loopexit70.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aq = load <8 x i32>, ptr %i.ap, align 4
  %.fr = freeze <8 x i32> %i.aq
  %i.ar = icmp sgt <8 x i32> %.fr, <i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024> ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.at = load <4 x i32>, ptr %i.as, align 4
  %.fr163 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr163, <i32 2048, i32 4096, i32 8192, i32 16384>
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp sgt i32 %i.aw, 32768
  %i.ay = shufflevector <8 x i1> %i.ar, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.ay, %i.au
  %i.az = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <8 x i1> %i.az, <8 x i1> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bb = bitcast <8 x i1> %i.ba to i8
  %i.bc = icmp ne i8 %i.bb, 0
  %op.rdx = select i1 %i.bc, i1 true, i1 %i.ax
  br i1 %op.rdx, label %.loopexit70.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv87 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next88, %bb.d ] ; 8 uses
  %.06474 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.d ] ; 2 uses
  %.06573 = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.d ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87
  store i32 %.06573, ptr %i.bg, align 4
  %i.bh = trunc i32 %.06573 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv87
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = trunc i32 %.06474 to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv87
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.bm = load i32, ptr %i.bl, align 4            ; 3 uses
  %i.bn = add nsw i32 %i.bm, %.06573              ; 3 uses
  %.not68 = icmp ne i32 %i.bm, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %.not69.not = icmp sgt i32 %i.bn, %i.bp
  %or.cond = select i1 %.not68, i1 %.not69.not, i1 false
  br i1 %or.cond, label %.loopexit70.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = trunc i64 %indvars.iv87 to i32
  %i.br = sub i32 16, %i.bq
  %i.bs = shl i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv87
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = shl i32 %i.bn, 1
  %i.bv = add nsw i32 %i.bm, %.06474
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 16
  br i1 %exitcond90.not, label %bb.e, label %bb.c, !llvm.loop !231

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.bw, align 4
  br i1 %i.c, label %.lr.ph81, label %.loopexit70

.lr.ph81:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %bb.i
end_hunk_3
begin_hunk_4_@_GLOBAL__sub_I_Assimp.cpp:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #40

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #40

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind memory(none) }
attributes #32 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #41 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #44 = { noreturn nounwind }
attributes #45 = { builtin nounwind }
attributes #46 = { builtin allocsize(0) }
attributes #47 = { nounwind }
attributes #48 = { noreturn }
attributes #49 = { nounwind willreturn memory(read) }
attributes #50 = { nounwind allocsize(0) }
attributes #51 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZNK12aiMatrix3x3tIfEmlERKS0_: argument 0"}
!14 = distinct !{!14, !"_ZNK12aiMatrix3x3tIfEmlERKS0_"}
!15 = distinct !{!15, !4}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!18 = distinct !{!18, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!21 = distinct !{!21, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNK12aiMatrix4x4tIfEplERKS0_: argument 0"}
!24 = distinct !{!24, !"_ZNK12aiMatrix4x4tIfEplERKS0_"}
!25 = distinct !{ptr @assimp_stbi_load_from_file, null, null, null}
!26 = distinct !{null, null, null}
!27 = distinct !{!27, !4, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!"branch_weights", i32 4, i32 12}
!31 = distinct !{!31, !4, !28, !29}
!32 = distinct !{!32, !4, !29, !28}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !4}
!35 = distinct !{!35, !4, !28, !29}
!36 = distinct !{!36, !4, !28, !29}
!37 = distinct !{!37, !4, !29, !28}
!38 = distinct !{ptr @assimp_stbi_load_from_file_16, null, null, null}
!39 = distinct !{null, null}
!40 = distinct !{!40, !4}
!41 = distinct !{!41, !4}
!42 = distinct !{!42, !4, !28}
!43 = distinct !{ptr @assimp_stbi_loadf_from_file, null, null, null}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !4}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4, !28, !29}
!54 = !{!"branch_weights", i32 4, i32 28}
!55 = distinct !{!55, !4, !28, !29}
!56 = distinct !{!56, !47}
!57 = distinct !{!57, !4, !28}
!58 = distinct !{!58, !4}
!59 = distinct !{!59, !4}
!60 = distinct !{!60, !4}
!61 = distinct !{!61, !4}
!62 = distinct !{!62, !4}
!63 = !{}
!64 = !{i64 8}
!65 = distinct !{!65, !4}
!66 = distinct !{!66, !4}
!67 = distinct !{!67, !4}
!68 = distinct !{!68, !4}
!69 = distinct !{!69, !4}
!70 = distinct !{!70, !4}
!71 = distinct !{!71, !4}
!72 = distinct !{!72, !4}
!73 = distinct !{!73, !4}
!74 = distinct !{!74, !4}
!75 = distinct !{!75, !4}
!76 = distinct !{!76, !4}
!77 = distinct !{!77, !4}
!78 = !{ptr @_ZN23LogToCallbackRedirectorD2Ev}
!79 = distinct !{null}
!80 = distinct !{!80, !4}
!81 = distinct !{null, null, ptr @_ZL10stbi__get8P13stbi__context, null}
!82 = !{!83}
!83 = distinct !{!83, !84}
!84 = distinct !{!84, !"LVerDomain"}
!85 = !{!86}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !4, !28, !29}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
!91 = !{!92}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !4, !28, !29}
!94 = distinct !{!94, !4, !28, !29}
!95 = !{!96}
!96 = distinct !{!96, !97}
!97 = distinct !{!97, !"LVerDomain"}
!98 = !{!99}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !4, !28, !29}
!101 = !{!102}
!102 = distinct !{!102, !103}
!103 = distinct !{!103, !"LVerDomain"}
!104 = !{!105}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !4, !28, !29}
!107 = !{!"branch_weights", i32 8, i32 8}
!108 = distinct !{!108, !4, !28, !29}
!109 = distinct !{!109, !47}
!110 = !{!111}
!111 = distinct !{!111, !112}
!112 = distinct !{!112, !"LVerDomain"}
!113 = !{!114}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !4, !28, !29}
!116 = distinct !{!116, !4, !28, !29}
!117 = distinct !{!117, !47}
!118 = distinct !{!118, !47}
!119 = distinct !{!119, !4, !28, !29}
!120 = distinct !{!120, !4, !28, !29}
!121 = distinct !{!121, !4, !29, !28}
!122 = distinct !{!122, !4}
!123 = distinct !{!123, !4}
!124 = distinct !{!124, !4, !28}
!125 = distinct !{!125, !4}
!126 = distinct !{!126, !4}
!127 = distinct !{!127, !4}
!128 = distinct !{!128, !4, !28}
!129 = distinct !{!129, !4, !28}
!130 = distinct !{!130, !4, !28}
!131 = distinct !{!131, !4, !28}
!132 = distinct !{!132, !4}
!133 = distinct !{!133, !4}
!134 = distinct !{!134, !47}
!135 = distinct !{!135, !47}
!136 = !{!137}
!137 = distinct !{!137, !138}
!138 = distinct !{!138, !"LVerDomain"}
!139 = !{!140}
!140 = distinct !{!140, !138}
!141 = distinct !{!141, !4, !28, !29}
!142 = distinct !{!142, !47}
!143 = distinct !{!143, !47}
!144 = distinct !{!144, !4, !28, !29}
!145 = distinct !{!145, !4, !29, !28}
!146 = distinct !{!146, !4}
!147 = distinct !{!147, !4}
!148 = distinct !{!148, !4, !28}
!149 = distinct !{!149, !4}
!150 = distinct !{!150, !4}
!151 = distinct !{!151, !4}
!152 = distinct !{!152, !4}
!153 = distinct !{!153, !4}
!154 = distinct !{!154, !4}
!155 = distinct !{!155, !4}
!156 = distinct !{!156, !4}
!157 = distinct !{!157, !4}
!158 = distinct !{null}
!159 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!160 = distinct !{null}
!161 = distinct !{ptr @_ZL10stbi__get8P13stbi__context, null}
!162 = distinct !{!162, !4}
!163 = distinct !{!163, !4}
!164 = distinct !{!164, !4}
!165 = distinct !{!165, !4}
!166 = distinct !{!166, !4}
!167 = distinct !{null}
!168 = distinct !{!168, !4}
!169 = distinct !{!169, !4}
!170 = distinct !{!170, !4}
!171 = distinct !{!171, !4}
!172 = distinct !{!172, !4}
!173 = distinct !{!173, !47}
!174 = distinct !{!174, !4}
!175 = !{!176}
!176 = distinct !{!176, !177}
!177 = distinct !{!177, !"LVerDomain"}
!178 = !{!179}
!179 = distinct !{!179, !177}
!180 = distinct !{!180, !4, !28, !29}
!181 = distinct !{!181, !47}
!182 = distinct !{!182, !4, !28}
!183 = distinct !{!183, !4}
!184 = distinct !{!184, !4}
!185 = distinct !{!185, !4}
!186 = distinct !{!186, !47}
!187 = distinct !{!187, !4}
!188 = distinct !{!188, !4}
!189 = distinct !{!189, !4}
!190 = distinct !{!190, !47}
!191 = distinct !{!191, !47}
!192 = distinct !{!192, !4, !28, !29}
!193 = distinct !{!193, !4, !28, !29}
!194 = distinct !{!194, !47}
!195 = distinct !{!195, !4, !28, !29}
!196 = distinct !{!196, !4, !28, !29}
!197 = distinct !{!197, !4, !28, !29}
!198 = distinct !{!198, !4, !28, !29}
!199 = distinct !{!199, !47}
!200 = distinct !{!200, !4, !28, !29}
!201 = !{!"branch_weights", i32 8, i32 24}
!202 = distinct !{!202, !4, !28, !29}
!203 = distinct !{!203, !4, !28}
!204 = distinct !{!204, !4, !28}
!205 = distinct !{!205, !4, !28, !29}
!206 = distinct !{!206, !4, !28, !29}
!207 = distinct !{!207, !4, !28}
!208 = distinct !{!208, !4, !28}
!209 = distinct !{!209, !4, !28, !29}
!210 = distinct !{!210, !4, !28, !29}
!211 = distinct !{!211, !4, !28}
!212 = distinct !{!212, !4, !28}
!213 = distinct !{!213, !4, !28, !29}
!214 = distinct !{!214, !4, !28, !29}
!215 = distinct !{!215, !4, !28}
!216 = distinct !{!216, !4}
!217 = distinct !{!217, !4}
!218 = distinct !{!218, !4}
!219 = distinct !{!219, !47}
!220 = distinct !{!220, !4}
!221 = distinct !{!221, !4}
!222 = distinct !{!222, !4, !28, !29}
!223 = distinct !{!223, !4, !29, !28}
!224 = distinct !{!224, !4, !28, !29}
!225 = distinct !{!225, !4, !29, !28}
!226 = distinct !{!226, !4}
!227 = distinct !{!227, !4}
!228 = distinct !{!228, !4}
!229 = distinct !{!229, !4}
!230 = distinct !{!230, !47}
!231 = distinct !{!231, !4}
!232 = distinct !{!232, !4, !28}
!233 = distinct !{!233, !4}
!234 = distinct !{!234, !4}
!235 = distinct !{!235, !4}
!236 = distinct !{!236, !4}
!237 = distinct !{!237, !4}
!238 = distinct !{!238, !4}
end_hunk_4
