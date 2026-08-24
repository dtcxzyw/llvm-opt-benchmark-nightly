Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sme_helper?download=true
inline.NumInlined: 2089
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 297
begin_hunk_0_@helper_sme2_sel_s:bb.a
  br i1 %cmp.n, label %.preheader183, label %.lr.ph196.preheader447

.lr.ph196.preheader447:                           ; preds = %.lr.ph196.preheader, %middle.block325
  %indvars.iv229.ph = phi i64 [ 0, %.lr.ph196.preheader ], [ %n.vec320, %middle.block325 ]
  br label %.lr.ph196

.preheader183:                                    ; preds = %.lr.ph196, %middle.block325
  %indvars.iv.next230.lcssa = phi i64 [ %n.vec320, %middle.block325 ], [ %indvars.iv.next230, %.lr.ph196 ] ; 2 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv.next230.lcssa to i32
  %i.fm = icmp samesign ugt i32 %i.l, %i.fl
  br i1 %i.fm, label %.lr.ph199.preheader, label %._crit_edge200

.lr.ph199.preheader:                              ; preds = %.lr.ph202, %.preheader183
  %.0154.lcssa289 = phi i64 [ %indvars.iv.next230.lcssa, %.preheader183 ], [ 0, %.lr.ph202 ] ; 9 uses
  %i.fn = add nuw nsw i64 %.0154.lcssa289, 2
  %i.fo = tail call i64 @llvm.umax.i64(i64 %i.er, i64 %i.fn)
  %i.fp = xor i64 %.0154.lcssa289, -1
  %i.fq = add i64 %i.fo, %i.fp                    ; 3 uses
  %i.fr = lshr i64 %i.fq, 1
  %i.fs = add nuw i64 %i.fr, 1
  %min.iters.check = icmp ult i64 %i.fq, 20
  br i1 %min.iters.check, label %.lr.ph199.preheader446, label %vector.memcheck

.lr.ph199.preheader446:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph199.preheader
  %indvars.iv232.ph = phi i64 [ %.0154.lcssa289, %vector.memcheck ], [ %.0154.lcssa289, %.lr.ph199.preheader ], [ %i.gc, %vector.body ]
  br label %.lr.ph199

vector.memcheck:                                  ; preds = %.lr.ph199.preheader
  %i.ft = shl nuw nsw i64 %.0154.lcssa289, 2      ; 4 uses
  %scevgep = getelementptr nuw i8, ptr %i.ex, i64 %i.ft ; 2 uses
  %i.fu = add nuw nsw i64 %.0154.lcssa289, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.er, i64 %i.fu)
  %i.fv = xor i64 %.0154.lcssa289, -1
  %i.fw = add i64 %umax, %i.fv
  %i.fx = shl i64 %i.fw, 2
  %i.fy = and i64 %i.fx, -8
  %i.fz = add i64 %i.fy, %i.ft                    ; 3 uses
  %scevgep303 = getelementptr i8, ptr %scevgep302, i64 %i.fz ; 2 uses
  %scevgep304 = getelementptr nuw i8, ptr %i.ey, i64 %i.ft
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.fz
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.ft
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.fz
  %bound0 = icmp ult ptr %scevgep, %scevgep306
  %bound1 = icmp ult ptr %scevgep304, %scevgep303
  %found.conflict = and i1 %bound0, %bound1
  %bound0311 = icmp ult ptr %scevgep, %scevgep310
  %bound1312 = icmp ult ptr %scevgep308, %scevgep303
  %found.conflict313 = and i1 %bound0311, %bound1312
  %conflict.rdx = or i1 %found.conflict, %found.conflict313
  br i1 %conflict.rdx, label %.lr.ph199.preheader446, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ga = and i64 %i.fq, 2
  %.not432 = icmp eq i64 %i.ga, 0
  %.neg = select i1 %.not432, i64 -1, i64 -2
  %n.vec = add i64 %.neg, %i.fs                   ; 2 uses
  %i.gb = shl i64 %n.vec, 1
  %i.gc = add i64 %.0154.lcssa289, %i.gb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gd = shl nuw i64 %index, 1
  %i.ge = add nuw i64 %.0154.lcssa289, %i.gd      ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ge
  %wide.vec = load <4 x i32>, ptr %i.gf, align 4, !alias.scope !1022
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ge
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ge
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %wide.vec314 = load <4 x i32>, ptr %i.gi, align 4, !alias.scope !1025
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> %wide.vec314, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec, ptr %i.gg, align 4, !alias.scope !1027, !noalias !1029
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %.lr.ph199.preheader446, label %vector.body, !llvm.loop !1030

.lr.ph196:                                        ; preds = %.lr.ph196.preheader447, %.lr.ph196
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %.lr.ph196 ], [ %indvars.iv229.ph, %.lr.ph196.preheader447 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv229
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv229
  store i32 %i.gl, ptr %i.gm, align 4
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 3 uses
  %i.gn = icmp samesign ult i64 %indvars.iv.next230, %i.ff
  br i1 %i.gn, label %.lr.ph196, label %.preheader183, !llvm.loop !1031

.lr.ph199:                                        ; preds = %.lr.ph199.preheader446, %.lr.ph199
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %.lr.ph199 ], [ %indvars.iv232.ph, %.lr.ph199.preheader446 ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv232
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv232
  store i32 %i.gp, ptr %i.gq, align 4
  %i.gr = add nuw nsw i64 %indvars.iv232, 1       ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.gr
  store i32 %i.gt, ptr %i.gu, align 4
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 2 ; 2 uses
  %i.gv = icmp samesign ult i64 %indvars.iv.next233, %i.er
  br i1 %i.gv, label %.lr.ph199, label %._crit_edge200, !llvm.loop !1032

._crit_edge200:                                   ; preds = %.lr.ph199, %.preheader183
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %.loopexit177, label %.lr.ph202, !llvm.loop !1033

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %._crit_edge
  %indvars.iv224 = phi i64 [ 0, %.lr.ph193.preheader ], [ %indvars.iv.next225, %._crit_edge ] ; 5 uses
  %i.gw = shl nuw nsw i64 %indvars.iv224, 8       ; 2 uses
  %i.gx = or disjoint i64 %i.gw, 8                ; 2 uses
  %scevgep342 = getelementptr i8, ptr %0, i64 %i.gx
  %i.gy = trunc i64 %indvars.iv224 to i32
  %i.gz = mul i32 %i.l, %i.gy
  %i.ha = sub i32 %i.ai, %i.gz
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ha, i32 %i.l)
  %i.hb = tail call i32 @llvm.umax.i32(i32 %smin, i32 2)
  %umax343 = zext i32 %i.hb to i64
  %i.hc = shl nuw nsw i64 %umax343, 2
  %i.hd = add nsw i64 %i.hc, -4
  %i.he = and i64 %i.hd, -8                       ; 3 uses
  %scevgep344 = getelementptr i8, ptr %scevgep342, i64 %i.he ; 2 uses
  %i.hf = or disjoint i64 %i.gw, 4                ; 2 uses
  %scevgep345 = getelementptr i8, ptr %1, i64 %i.hf
  %scevgep346 = getelementptr i8, ptr %scevgep345, i64 %i.he
  %scevgep347 = getelementptr i8, ptr %2, i64 %i.hf
  %scevgep348 = getelementptr i8, ptr %2, i64 %i.gx
  %scevgep349 = getelementptr i8, ptr %scevgep348, i64 %i.he
  %i.hg = shl nuw nsw i64 %indvars.iv224, 8       ; 3 uses
  %i.hh = getelementptr i8, ptr %0, i64 %i.hg     ; 12 uses
  %i.hi = getelementptr i8, ptr %1, i64 %i.hg     ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 %i.hg ; 9 uses
  %i.hk = trunc i64 %indvars.iv224 to i32
  %i.hl = mul i32 %i.l, %i.hk
  %i.hm = sub i32 %i.ai, %i.hl                    ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph.preheader, label %.lr.ph191.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph193
  %i.ho = tail call i32 @llvm.smin.i32(i32 %i.hm, i32 %i.l) ; 2 uses
  %i.hp = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.hq = tail call i64 @llvm.umax.i64(i64 %i.hp, i64 2)
  %i.hr = add nsw i64 %i.hq, -1
  %i.hs = lshr i64 %i.hr, 1
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check358 = icmp ult i32 %i.ho, 13
  br i1 %min.iters.check358, label %.lr.ph.preheader444, label %vector.memcheck341

.lr.ph.preheader444:                              ; preds = %vector.body361, %vector.memcheck341, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck341 ], [ 0, %.lr.ph.preheader ], [ %i.hx, %vector.body361 ]
  br label %.lr.ph

vector.memcheck341:                               ; preds = %.lr.ph.preheader
  %bound0350 = icmp ult ptr %i.hh, %scevgep346
  %bound1351 = icmp ult ptr %i.hi, %scevgep344
  %found.conflict352 = and i1 %bound0350, %bound1351
  %bound0353 = icmp ult ptr %i.hh, %scevgep349
  %bound1354 = icmp ult ptr %scevgep347, %scevgep344
  %found.conflict355 = and i1 %bound0353, %bound1354
  %conflict.rdx356 = or i1 %found.conflict352, %found.conflict355
  br i1 %conflict.rdx356, label %.lr.ph.preheader444, label %vector.ph359

vector.ph359:                                     ; preds = %vector.memcheck341
  %i.hu = and i64 %i.ht, 3                        ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 0
  %i.hw = select i1 %i.hv, i64 4, i64 %i.hu
  %n.vec360 = sub nsw i64 %i.ht, %i.hw            ; 2 uses
  %i.hx = shl i64 %n.vec360, 1
  br label %vector.body361

vector.body361:                                   ; preds = %vector.body361, %vector.ph359
  %index362 = phi i64 [ 0, %vector.ph359 ], [ %index.next373, %vector.body361 ] ; 2 uses
  %i.hy = shl nuw i64 %index362, 1                ; 5 uses
  %i.hz = or disjoint i64 %i.hy, 4                ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hy
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hz
  %wide.vec363 = load <4 x i32>, ptr %i.ia, align 4, !alias.scope !1034
  %wide.vec365 = load <4 x i32>, ptr %i.ib, align 4, !alias.scope !1034
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hy
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hz
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hy
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hy
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 20
  %wide.vec367 = load <4 x i32>, ptr %i.if, align 4, !alias.scope !1037
  %wide.vec369 = load <4 x i32>, ptr %i.ih, align 4, !alias.scope !1037
  %interleaved.vec371 = shufflevector <4 x i32> %wide.vec363, <4 x i32> %wide.vec367, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec371, ptr %i.ic, align 4, !alias.scope !1039, !noalias !1041
  %interleaved.vec372 = shufflevector <4 x i32> %wide.vec365, <4 x i32> %wide.vec369, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec372, ptr %i.id, align 4, !alias.scope !1039, !noalias !1041
  %index.next373 = add nuw i64 %index362, 4       ; 2 uses
  %i.ii = icmp eq i64 %index.next373, %n.vec360
  br i1 %i.ii, label %.lr.ph.preheader444, label %vector.body361, !llvm.loop !1042

.preheader186:                                    ; preds = %.lr.ph
  %i.ij = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ik = icmp sgt i32 %i.l, %i.ij
  br i1 %i.ik, label %.lr.ph191.preheader, label %._crit_edge

.lr.ph191.preheader:                              ; preds = %.lr.ph193, %.preheader186
  %.0.lcssa291 = phi i64 [ %indvars.iv.next, %.preheader186 ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.il = sub nsw i64 %i.ep, %.0.lcssa291         ; 3 uses
  %min.iters.check330 = icmp ult i64 %i.il, 8
  %or.cond437 = or i1 %min.iters.check330, %diff.check328
  br i1 %or.cond437, label %.lr.ph191.preheader443, label %vector.ph331

vector.ph331:                                     ; preds = %.lr.ph191.preheader
  %n.vec332 = and i64 %i.il, -8                   ; 3 uses
  %i.im = add i64 %.0.lcssa291, %n.vec332
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next337, %vector.body333 ] ; 2 uses
  %i.in = add nuw i64 %.0.lcssa291, %index334     ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %wide.load335 = load <4 x i32>, ptr %i.io, align 4
  %wide.load336 = load <4 x i32>, ptr %i.ip, align 4
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.in ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <4 x i32> %wide.load335, ptr %i.iq, align 4
  store <4 x i32> %wide.load336, ptr %i.ir, align 4
  %index.next337 = add nuw i64 %index334, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next337, %n.vec332
  br i1 %i.is, label %middle.block338, label %vector.body333, !llvm.loop !1043

middle.block338:                                  ; preds = %vector.body333
  %cmp.n339 = icmp eq i64 %i.il, %n.vec332
  br i1 %cmp.n339, label %._crit_edge, label %.lr.ph191.preheader443

.lr.ph191.preheader443:                           ; preds = %.lr.ph191.preheader, %middle.block338
  %indvars.iv221.ph = phi i64 [ %.0.lcssa291, %.lr.ph191.preheader ], [ %i.im, %middle.block338 ] ; 4 uses
  %i.it = sub i64 %i.ep, %indvars.iv221.ph
  %xtraiter = and i64 %i.it, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol

.lr.ph191.prol:                                   ; preds = %.lr.ph191.preheader443, %.lr.ph191.prol
  %indvars.iv221.prol = phi i64 [ %indvars.iv.next222.prol, %.lr.ph191.prol ], [ %indvars.iv221.ph, %.lr.ph191.preheader443 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph191.prol ], [ 0, %.lr.ph191.preheader443 ]
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv221.prol
  %i.iv = load i32, ptr %i.iu, align 4
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv221.prol
  store i32 %i.iv, ptr %i.iw, align 4
  %indvars.iv.next222.prol = add nuw nsw i64 %indvars.iv221.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol, !llvm.loop !1044

.lr.ph191.prol.loopexit:                          ; preds = %.lr.ph191.prol, %.lr.ph191.preheader443
  %indvars.iv221.unr = phi i64 [ %indvars.iv221.ph, %.lr.ph191.preheader443 ], [ %indvars.iv.next222.prol, %.lr.ph191.prol ]
  %i.ix = sub i64 %indvars.iv221.ph, %i.ep
  %i.iy = icmp ugt i64 %i.ix, -4
  br i1 %i.iy, label %._crit_edge, label %.lr.ph191

.lr.ph:                                           ; preds = %.lr.ph.preheader444, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader444 ] ; 4 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv
  %i.ja = load i32, ptr %i.iz, align 4
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv
  store i32 %i.ja, ptr %i.jb, align 4
  %i.jc = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.jc
  store i32 %i.je, ptr %i.jf, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.jg = icmp samesign ult i64 %indvars.iv.next, %i.hp
  br i1 %i.jg, label %.lr.ph, label %.preheader186, !llvm.loop !1045

.lr.ph191:                                        ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191
  %indvars.iv221 = phi i64 [ %indvars.iv.next222.3, %.lr.ph191 ], [ %indvars.iv221.unr, %.lr.ph191.prol.loopexit ] ; 6 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv221
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv221
  store i32 %i.ji, ptr %i.jj, align 4
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next222
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next222
  store i32 %i.jl, ptr %i.jm, align 4
  %indvars.iv.next222.1 = add nuw nsw i64 %indvars.iv221, 2 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next222.1
  %i.jo = load i32, ptr %i.jn, align 4
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next222.1
  store i32 %i.jo, ptr %i.jp, align 4
  %indvars.iv.next222.2 = add nuw nsw i64 %indvars.iv221, 3 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next222.2
  %i.jr = load i32, ptr %i.jq, align 4
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next222.2
  store i32 %i.jr, ptr %i.js, align 4
  %indvars.iv.next222.3 = add nuw nsw i64 %indvars.iv221, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next222.3, %i.ep
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph191, !llvm.loop !1046

._crit_edge:                                      ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191, %middle.block338, %.preheader186
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %.loopexit177, label %.lr.ph193, !llvm.loop !1047

.loopexit177:                                     ; preds = %._crit_edge200, %._crit_edge, %.loopexit, %.loopexit179, %.preheader187, %.preheader184, %.preheader181, %.preheader176
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_sel_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = ashr i32 %4, 10                          ; 4 uses
  %i.i = lshr exact i32 %.v.i, 3                  ; 6 uses
  %i.j = and i32 %3, 15
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.preheader70, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.k = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 5 uses
  %i.l = add nsw i64 %i.g, -1
  %i.m = tail call range(i64 53, 65) i64 @llvm.ctlz.i64(i64 range(i64 7, 2048) %i.l, i1 true)
  %i.n = add nuw nsw i64 %i.m, 4294967295
  %i.o = and i64 %i.n, 4294967295
  %i.p = lshr exact i64 -9223372036854775808, %i.o
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 3
  %i.s = add nsw i32 %i.r, -1
  %i.t = and i32 %i.s, %3                         ; 2 uses
  %i.u = add nuw nsw i32 %i.k, 1
  %i.v = lshr i32 %i.t, %i.u                      ; 4 uses
  %i.w = and i32 %3, 32768
  %.not93 = icmp eq i32 %i.w, 0                   ; 3 uses
  %.not29.i = icmp eq i32 %i.k, 3
  br i1 %.not29.i, label %decode_counter.exit, label %bb.c, !prof !62

bb.c:                                             ; preds = %bb.b
  %i.x = icmp samesign ult i32 %i.k, 3
  br i1 %i.x, label %.split91, label %.split

.split91:                                         ; preds = %bb.c
  %i.y = sub nuw nsw i32 3, %i.k
  %i.z = lshr i32 %i.t, 4                         ; 2 uses
  %i.aa = shl nuw nsw i32 %i.z, %i.y
  %i.ab = icmp ne i32 %i.v, %i.aa
  %i.ac = zext i1 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.z, %i.ac             ; 2 uses
  br i1 %.not93, label %.preheader70, label %.preheader

.split:                                           ; preds = %bb.c
  %i.ae = add nsw i32 %i.k, -3
  %i.af = shl i32 %i.v, %i.ae                     ; 2 uses
  br i1 %.not93, label %.preheader70, label %.preheader

decode_counter.exit:                              ; preds = %bb.b
  br i1 %.not93, label %.preheader70, label %.preheader

.preheader70:                                     ; preds = %bb.a, %.split91, %.split, %decode_counter.exit
  %.sroa.020.sroa.0.0.insert.insert.i89 = phi i32 [ %i.ad, %.split91 ], [ %i.v, %decode_counter.exit ], [ %i.af, %.split ], [ 0, %bb.a ]
  %i.ag = icmp sgt i32 %i.h, 0
  br i1 %i.ag, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader70
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.split91, %.split, %decode_counter.exit
  %.sroa.020.sroa.0.0.insert.insert.i90 = phi i32 [ %i.af, %.split ], [ %i.v, %decode_counter.exit ], [ %i.ad, %.split91 ]
  %i.ah = icmp sgt i32 %i.h, 0
  br i1 %i.ah, label %.lr.ph74.preheader, label %.loopexit

.lr.ph74.preheader:                               ; preds = %.preheader
  %wide.trip.count80 = zext nneg i32 %i.h to i64
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.h
  %indvars.iv77 = phi i64 [ 0, %.lr.ph74.preheader ], [ %indvars.iv.next78, %bb.h ] ; 3 uses
  %i.ai = shl nuw nsw i64 %indvars.iv77, 8        ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai ; 2 uses
  %i.am = trunc i64 %indvars.iv77 to i32
  %i.an = mul i32 %i.i, %i.am
  %i.ao = sub i32 %.sroa.020.sroa.0.0.insert.insert.i90, %i.an ; 4 uses
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %i.ak, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph74
  %.not69 = icmp slt i32 %i.ao, %i.i
  br i1 %.not69, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %i.al, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.h
end_hunk_0
