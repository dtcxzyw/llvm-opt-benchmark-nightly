inline.NumInlined: 87
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ruby_strtod:bb.a
bb.av:                                            ; preds = %bb.au
  %i.gw = zext nneg i32 %i.gh to i64
  %i.gx = getelementptr [8 x i8], ptr @tens, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !39
  %i.gz = fmul double %.sroa.067.0817, %i.gy
  br label %Bclear.exit750

bb.aw:                                            ; preds = %bb.au
  %i.ha = sub i32 37, %.6565
  %.not648 = icmp sgt i32 %i.gh, %i.ha
  br i1 %.not648, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hb = sub i32 15, %.6565                      ; 2 uses
  %i.hc = sub i32 %i.gh, %i.hb
  %i.hd = sext i32 %i.hb to i64
  %i.he = getelementptr [8 x i8], ptr @tens, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !39
  %i.hg = fmul double %.sroa.067.0817, %i.hf
  %i.hh = sext i32 %i.hc to i64
  %i.hi = getelementptr [8 x i8], ptr @tens, i64 %i.hh
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !39
  %i.hk = fmul double %i.hg, %i.hj
  br label %Bclear.exit750

bb.ay:                                            ; preds = %bb.at
  %i.hl = icmp samesign ugt i32 %i.gh, -23
  br i1 %i.hl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hm = sub nsw i32 0, %i.gh
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr [8 x i8], ptr @tens, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !39
  %i.hq = fdiv double %.sroa.067.0817, %i.hp
  br label %Bclear.exit750

bb.ba:                                            ; preds = %bb.aw, %bb.ay, %.thread, %bb.ar
  %.sroa.067.0818 = phi double [ %.sroa.067.0817, %bb.aw ], [ %.sroa.067.0817, %bb.ay ], [ %.sroa.067.0817, %.thread ], [ %i.gq, %bb.ar ] ; 5 uses
  %i.hr = sub i32 %.6565, %i.gi
  %i.hs = add i32 %i.gh, %i.hr                    ; 7 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %bb.bb, label %bb.bk

bb.bb:                                            ; preds = %bb.ba
  %i.hu = and i32 %i.hs, 15                       ; 2 uses
  %.not656 = icmp eq i32 %i.hu, 0
  br i1 %.not656, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr [8 x i8], ptr @tens, i64 %i.hv
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !39
  %i.hy = fmul double %.sroa.067.0818, %i.hx
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.067.1 = phi double [ %i.hy, %bb.bc ], [ %.sroa.067.0818, %bb.bb ] ; 3 uses
  %i.hz = and i32 %i.hs, 2147483632               ; 2 uses
  %.not657 = icmp eq i32 %i.hz, 0
  br i1 %.not657, label %.thread826, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ia = icmp samesign ugt i32 %i.hz, 308
  br i1 %i.ia, label %.thread819, label %bb.bf

.thread819:                                       ; preds = %bb.be, %._crit_edge1129
  %i.ib = tail call ptr @rb_errno_ptr() #24
  store i32 34, ptr %i.ib, align 4, !tbaa !7
  br label %Bclear.exit750

bb.bf:                                            ; preds = %bb.be
  %i.ic = icmp samesign ugt i32 %i.hs, 31
  br i1 %i.ic, label %.lr.ph1128.preheader, label %._crit_edge1129

.lr.ph1128.preheader:                             ; preds = %bb.bf
  %i.id = lshr i32 %i.hs, 4
  br label %.lr.ph1128

.lr.ph1128:                                       ; preds = %.lr.ph1128.preheader, %bb.bh
  %indvars.iv1267 = phi i64 [ 0, %.lr.ph1128.preheader ], [ %indvars.iv.next1268, %bb.bh ] ; 2 uses
  %.sroa.067.31126 = phi double [ %.sroa.067.1, %.lr.ph1128.preheader ], [ %.sroa.067.4, %bb.bh ] ; 2 uses
  %.05751124 = phi i32 [ %i.id, %.lr.ph1128.preheader ], [ %i.ii, %bb.bh ] ; 3 uses
  %i.ie = and i32 %.05751124, 1
  %.not685 = icmp eq i32 %i.ie, 0
  br i1 %.not685, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph1128
  %i.if = getelementptr [8 x i8], ptr @bigtens, i64 %indvars.iv1267
  %i.ig = load double, ptr %i.if, align 8, !tbaa !39
  %i.ih = fmul double %.sroa.067.31126, %i.ig
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph1128, %bb.bg
  %.sroa.067.4 = phi double [ %i.ih, %bb.bg ], [ %.sroa.067.31126, %.lr.ph1128 ] ; 2 uses
  %indvars.iv.next1268 = add nuw nsw i64 %indvars.iv1267, 1 ; 2 uses
  %i.ii = lshr i32 %.05751124, 1
  %i.ij = icmp samesign ugt i32 %.05751124, 3
  br i1 %i.ij, label %.lr.ph1128, label %._crit_edge1129.loopexit, !llvm.loop !41

._crit_edge1129.loopexit:                         ; preds = %bb.bh
  %sext = shl i64 %indvars.iv.next1268, 32
  %i.ik = ashr exact i64 %sext, 32
  br label %._crit_edge1129

._crit_edge1129:                                  ; preds = %._crit_edge1129.loopexit, %bb.bf
  %.0568.lcssa = phi i64 [ 0, %bb.bf ], [ %i.ik, %._crit_edge1129.loopexit ]
  %.sroa.067.3.lcssa = phi double [ %.sroa.067.1, %bb.bf ], [ %.sroa.067.4, %._crit_edge1129.loopexit ]
  %i.il = bitcast double %.sroa.067.3.lcssa to i64 ; 2 uses
  %i.im = and i64 %i.il, -4294967296
  %.sroa.067.4.insert.ext = add i64 %i.im, -238690780250636288
  %.sroa.067.4.insert.mask127 = and i64 %i.il, 4294967295
  %.sroa.067.4.insert.insert128 = or disjoint i64 %.sroa.067.4.insert.ext, %.sroa.067.4.insert.mask127
  %i.in = bitcast i64 %.sroa.067.4.insert.insert128 to double
  %i.io = getelementptr [8 x i8], ptr @bigtens, i64 %.0568.lcssa
  %i.ip = load double, ptr %i.io, align 8, !tbaa !39
  %i.iq = fmul double %i.ip, %i.in
  %i.ir = bitcast double %i.iq to i64             ; 3 uses
  %.sroa.067.4.extract.shift130 = lshr i64 %i.ir, 32
  %.sroa.067.4.extract.trunc131 = trunc nuw i64 %.sroa.067.4.extract.shift130 to i32
  %i.is = and i32 %.sroa.067.4.extract.trunc131, 2146435072 ; 2 uses
  %i.it = icmp samesign ugt i32 %i.is, 2090860544
  br i1 %i.it, label %.thread819, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge1129
  %i.iu = icmp samesign ugt i32 %i.is, 2089811968
  br i1 %i.iu, label %.thread826, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iv = and i64 %i.ir, -4294967296
  %.sroa.067.4.insert.shift140 = add i64 %i.iv, 238690780250636288
  %.sroa.067.4.insert.mask141 = and i64 %i.ir, 4294967295
  %.sroa.067.4.insert.insert142 = or disjoint i64 %.sroa.067.4.insert.shift140, %.sroa.067.4.insert.mask141
  %i.iw = bitcast i64 %.sroa.067.4.insert.insert142 to double
  br label %.thread826

bb.bk:                                            ; preds = %bb.ba
  %i.ix = icmp slt i32 %i.hs, 0
  br i1 %i.ix, label %bb.bl, label %.thread826

bb.bl:                                            ; preds = %bb.bk
  %i.iy = sub i32 0, %i.hs                        ; 3 uses
  %i.iz = and i32 %i.iy, 15                       ; 2 uses
  %.not649 = icmp eq i32 %i.iz, 0
  br i1 %.not649, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr [8 x i8], ptr @tens, i64 %i.ja
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !39
  %i.jd = fdiv double %.sroa.067.0818, %i.jc
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.067.5 = phi double [ %i.jd, %bb.bm ], [ %.sroa.067.0818, %bb.bl ] ; 3 uses
  %i.je = ashr i32 %i.iy, 4                       ; 4 uses
  %.not650 = icmp eq i32 %i.je, 0
  br i1 %.not650, label %.thread826, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jf = icmp sgt i32 %i.je, 31
  br i1 %i.jf, label %.thread829, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jg = and i32 %i.iy, 256
  %.not651 = icmp eq i32 %i.jg, 0                 ; 2 uses
  %spec.select710 = select i1 %.not651, i32 0, i32 106
  %i.jh = icmp sgt i32 %i.je, 0
  br i1 %i.jh, label %.lr.ph1121, label %._crit_edge1122

.lr.ph1121:                                       ; preds = %bb.bp, %bb.br
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.br ], [ 0, %bb.bp ] ; 2 uses
  %.sroa.067.61119 = phi double [ %.sroa.067.7, %bb.br ], [ %.sroa.067.5, %bb.bp ] ; 2 uses
  %.15761117 = phi i32 [ %i.jm, %bb.br ], [ %i.je, %bb.bp ] ; 2 uses
  %i.ji = and i32 %.15761117, 1
  %.not655 = icmp eq i32 %i.ji, 0
  br i1 %.not655, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph1121
  %i.jj = getelementptr [8 x i8], ptr @tinytens, i64 %indvars.iv
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !39
  %i.jl = fmul double %.sroa.067.61119, %i.jk
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph1121, %bb.bq
  %.sroa.067.7 = phi double [ %i.jl, %bb.bq ], [ %.sroa.067.61119, %.lr.ph1121 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.jm = lshr i32 %.15761117, 1                  ; 2 uses
  %.not1137 = icmp eq i32 %i.jm, 0
  br i1 %.not1137, label %._crit_edge1122, label %.lr.ph1121, !llvm.loop !42

._crit_edge1122:                                  ; preds = %bb.br, %bb.bp
  %.sroa.067.6.lcssa = phi double [ %.sroa.067.5, %bb.bp ], [ %.sroa.067.7, %bb.br ] ; 3 uses
  br i1 %.not651, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge1122
  %i.jn = bitcast double %.sroa.067.6.lcssa to i64 ; 4 uses
  %sum.shift = lshr i64 %i.jn, 52
  %i.jo = trunc nuw nsw i64 %sum.shift to i32
  %i.jp = and i32 %i.jo, 2047                     ; 5 uses
  %i.jq = sub nuw nsw i32 107, %i.jp
  %i.jr = icmp samesign ult i32 %i.jp, 107
  br i1 %i.jr, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.js = icmp samesign ult i32 %i.jp, 76
  br i1 %i.js, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.jt = icmp samesign ult i32 %i.jp, 55
  br i1 %i.jt, label %.thread826, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ju = sub nuw nsw i32 75, %i.jp
  %i.jv = shl nsw i32 -1, %i.ju
  %i.jw = zext i32 %i.jv to i64
  %.sroa.067.4.insert.ext153653 = shl nuw i64 %i.jw, 32
  %.sroa.067.4.extract.shift150654 = and i64 %.sroa.067.4.insert.ext153653, %i.jn
  %i.jx = bitcast i64 %.sroa.067.4.extract.shift150654 to double
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bt
  %i.jy = shl nsw i32 -1, %i.jq
  %.sroa.067.0.extract.trunc = trunc i64 %i.jn to i32
  %i.jz = and i32 %i.jy, %.sroa.067.0.extract.trunc
  %.sroa.067.0.insert.ext = zext i32 %i.jz to i64
  %.sroa.067.0.insert.mask99 = and i64 %i.jn, -4294967296
  %.sroa.067.0.insert.insert100 = or disjoint i64 %.sroa.067.0.insert.mask99, %.sroa.067.0.insert.ext
  %i.ka = bitcast i64 %.sroa.067.0.insert.insert100 to double
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bs, %._crit_edge1122
  %.sroa.067.8 = phi double [ %.sroa.067.6.lcssa, %._crit_edge1122 ], [ %i.jx, %bb.bv ], [ %i.ka, %bb.bw ], [ %.sroa.067.6.lcssa, %bb.bs ] ; 2 uses
  %i.kb = fcmp une double %.sroa.067.8, 0.000000e+00
  br i1 %i.kb, label %.thread826, label %.thread829

.thread829:                                       ; preds = %bb.bo, %bb.bx
  %i.kc = tail call ptr @rb_errno_ptr() #24
  store i32 34, ptr %i.kc, align 4, !tbaa !7
  br label %Bclear.exit750

.thread826:                                       ; preds = %bb.bu, %bb.bi, %bb.bk, %bb.bx, %bb.bn, %bb.bd, %bb.bj
  %.1567 = phi i32 [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bd ], [ %spec.select710, %bb.bx ], [ 0, %bb.bn ], [ 0, %bb.bi ], [ 106, %bb.bu ] ; 4 uses
  %.sroa.067.9 = phi double [ %.sroa.067.0818, %bb.bk ], [ %i.iw, %bb.bj ], [ %.sroa.067.1, %bb.bd ], [ %.sroa.067.8, %bb.bx ], [ %.sroa.067.5, %bb.bn ], [ f0x7FEFFFFFFFFFFFFF, %bb.bi ], [ f0x0370000000000000, %bb.bu ] ; 5 uses
  %i.kd = add i32 %.6565, 8                       ; 2 uses
  %i.ke = sdiv i32 %i.kd, 9
  %i.kf = icmp sgt i32 %i.kd, 17
  br i1 %i.kf, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.thread826, %.lr.ph.i
  %.048.i = phi i32 [ %i.kg, %.lr.ph.i ], [ 1, %.thread826 ]
  %.02747.i = phi i32 [ %i.kh, %.lr.ph.i ], [ 0, %.thread826 ]
  %i.kg = shl i32 %.048.i, 1                      ; 2 uses
  %i.kh = add i32 %.02747.i, 1                    ; 2 uses
  %i.ki = icmp sgt i32 %i.ke, %i.kg
  br i1 %i.ki, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread826
  %.027.lcssa.i = phi i32 [ 0, %.thread826 ], [ %i.kh, %.lr.ph.i ] ; 2 uses
  %i.kj = shl nuw i32 1, %.027.lcssa.i            ; 2 uses
  %i.kk = add i32 %i.kj, -1
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = shl nuw nsw i64 %i.kl, 2
  %i.kn = add nuw nsw i64 %i.km, 32
  %i.ko = tail call noalias ptr @malloc(i64 noundef %i.kn) #26 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i, label %Bclear.exit750, label %bb.by

bb.by:                                            ; preds = %._crit_edge.i
  %i.kp = getelementptr i8, ptr %i.ko, i64 8
  store i32 %.027.lcssa.i, ptr %i.kp, align 8, !tbaa !44
  %i.kq = getelementptr i8, ptr %i.ko, i64 12
  store i32 %i.kj, ptr %i.kq, align 4, !tbaa !47
  %i.kr = getelementptr i8, ptr %i.ko, i64 20
  %i.ks = getelementptr i8, ptr %i.ko, i64 16
  store i32 0, ptr %i.ks, align 8, !tbaa !48
  %i.kt = getelementptr i8, ptr %i.ko, i64 24
  store i32 %.8511, ptr %i.kt, align 8, !tbaa !7
  store i32 1, ptr %i.kr, align 4, !tbaa !49
  %i.ku = icmp sgt i32 %spec.select709, 9
  br i1 %i.ku, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.kv = getelementptr i8, ptr %.2529, i64 9
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %bb.bz
  %.032.i = phi ptr [ %i.kv, %bb.bz ], [ %i.la, %bb.cb ] ; 3 uses
  %.029.i = phi ptr [ %i.ko, %bb.bz ], [ %i.kz, %bb.cb ]
  %.028.i = phi i32 [ 9, %bb.bz ], [ %i.lb, %bb.cb ]
  %i.kw = load i8, ptr %.032.i, align 1, !tbaa !11
  %i.kx = sext i8 %i.kw to i32
  %i.ky = add nsw i32 %i.kx, -48
  %i.kz = tail call fastcc ptr @multadd(ptr noundef nonnull %.029.i, i32 noundef 10, i32 noundef %i.ky) ; 3 uses
  %.not41.i = icmp eq ptr %i.kz, null
  br i1 %.not41.i, label %Bclear.exit750, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.la = getelementptr i8, ptr %.032.i, i64 1
  %i.lb = add nuw nsw i32 %.028.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.lb, %spec.select709
  br i1 %exitcond.not.i, label %bb.cc, label %bb.ca, !llvm.loop !50

bb.cc:                                            ; preds = %bb.cb
  %i.lc = getelementptr i8, ptr %.032.i, i64 2
  br label %bb.ce

bb.cd:                                            ; preds = %bb.by
  %i.ld = getelementptr i8, ptr %.2529, i64 10
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.133.i = phi ptr [ %i.lc, %bb.cc ], [ %i.ld, %bb.cd ]
  %.130.i = phi ptr [ %i.kz, %bb.cc ], [ %i.ko, %bb.cd ] ; 2 uses
  %.1.i = phi i32 [ %spec.select709, %bb.cc ], [ 9, %bb.cd ] ; 2 uses
  %i.le = icmp slt i32 %.1.i, %.6565
  br i1 %i.le, label %.lr.ph53.i, label %s2b.exit

.lr.ph53.i:                                       ; preds = %bb.ce, %bb.cf
  %.251.i = phi i32 [ %i.lk, %bb.cf ], [ %.1.i, %bb.ce ]
  %.23150.i = phi ptr [ %i.li, %bb.cf ], [ %.130.i, %bb.ce ]
  %.23449.i = phi ptr [ %i.lj, %bb.cf ], [ %.133.i, %bb.ce ] ; 2 uses
  %i.lf = load i8, ptr %.23449.i, align 1, !tbaa !11
  %i.lg = sext i8 %i.lf to i32
  %i.lh = add nsw i32 %i.lg, -48
  %i.li = tail call fastcc ptr @multadd(ptr noundef nonnull %.23150.i, i32 noundef 10, i32 noundef %i.lh) ; 3 uses
  %.not42.i = icmp eq ptr %i.li, null
  br i1 %.not42.i, label %Bclear.exit750, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph53.i
  %i.lj = getelementptr i8, ptr %.23449.i, i64 1
  %i.lk = add nuw nsw i32 %.251.i, 1              ; 2 uses
  %exitcond61.not.i = icmp eq i32 %i.lk, %.6565
  br i1 %exitcond61.not.i, label %s2b.exit, label %.lr.ph53.i, !llvm.loop !51

s2b.exit:                                         ; preds = %bb.cf, %bb.ce
  %.026.i = phi ptr [ %.130.i, %bb.ce ], [ %i.li, %bb.cf ] ; 5 uses
  %i.ll = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !44 ; 2 uses
  %i.ln = shl nuw i32 1, %i.lm                    ; 2 uses
  %i.lo = add i32 %i.ln, -1
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = shl nuw nsw i64 %i.lp, 2
  %i.lr = add nuw nsw i64 %i.lq, 32
  %i.ls = tail call noalias ptr @malloc(i64 noundef %i.lr) #26 ; 2 uses
  %.not.i1133 = icmp eq ptr %i.ls, null
  br i1 %.not.i1133, label %Bclear.exit746.thread.thread, label %.lr.ph1135

.lr.ph1135:                                       ; preds = %s2b.exit
  %i.lt = getelementptr i8, ptr %.026.i, i64 20
  %i.lu = getelementptr i8, ptr %.026.i, i64 16
  %i.lv = icmp sgt i32 %i.gh, -1                  ; 2 uses
  %i.lw = sub i32 0, %i.gh
  %.0593 = select i1 %i.lv, i32 0, i32 %i.lw      ; 3 uses
  %.0589 = select i1 %i.lv, i32 %i.gh, i32 0      ; 3 uses
  %.1591 = add i32 %.1567, %.0589
  %i.lx = icmp sgt i32 %.0593, 0
  %i.ly = icmp sgt i32 %.0589, 0
  %i.lz = icmp ne i32 %.1567, 0
  %.not674 = icmp eq i32 %.1567, 0                ; 4 uses
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph1135, %Bclear.exit734
  %i.ma = phi ptr [ %i.ls, %.lr.ph1135 ], [ %i.wd, %Bclear.exit734 ] ; 11 uses
  %i.mb = phi i32 [ %i.ln, %.lr.ph1135 ], [ %i.vy, %Bclear.exit734 ]
  %i.mc = phi i32 [ %i.lm, %.lr.ph1135 ], [ %i.vx, %Bclear.exit734 ]
  %.sroa.067.101134 = phi double [ %.sroa.067.9, %.lr.ph1135 ], [ %.sroa.067.13, %Bclear.exit734 ] ; 27 uses
  %i.md = getelementptr i8, ptr %i.ma, i64 8
  store i32 %i.mc, ptr %i.md, align 8, !tbaa !44
  %i.me = getelementptr i8, ptr %i.ma, i64 12
  store i32 %i.mb, ptr %i.me, align 4, !tbaa !47
  %i.mf = getelementptr i8, ptr %i.ma, i64 20
  store i32 0, ptr %i.mf, align 4, !tbaa !49
  %i.mg = getelementptr i8, ptr %i.ma, i64 16     ; 2 uses
  store i32 0, ptr %i.mg, align 8, !tbaa !48
  %i.mh = load i32, ptr %i.lt, align 4, !tbaa !49
  %i.mi = sext i32 %i.mh to i64
  %i.mj = shl nsw i64 %i.mi, 2
  %i.mk = add nsw i64 %i.mj, 8                    ; 2 uses
  %.not.i720 = icmp eq i64 %i.mk, 0
  br i1 %.not.i720, label %ruby_nonempty_memcpy.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.mg, ptr noundef nonnull readonly align 1 %i.lu, i64 noundef range(i64 1, 0) %i.mk, i1 noundef false) #24
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.cg, %bb.ch
  %i.ml = call fastcc ptr @d2b(double noundef %.sroa.067.101134, ptr noundef %i.a, ptr noundef %i.b) ; 6 uses
  %.not660 = icmp eq ptr %i.ml, null
  br i1 %.not660, label %Bclear.exit742.thread, label %bb.ci

bb.ci:                                            ; preds = %ruby_nonempty_memcpy.exit
  %i.mm = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 5 uses
  %.not.i.i721 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i721, label %Bclear.exit742.thread.sink.split, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mn = getelementptr i8, ptr %i.mm, i64 8
  %i.mo = getelementptr i8, ptr %i.mm, i64 24
  store i32 1, ptr %i.mo, align 8, !tbaa !7
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr %i.mn, align 8, !tbaa !7
end_hunk_0
