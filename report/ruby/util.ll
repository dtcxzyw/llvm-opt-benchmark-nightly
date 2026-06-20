inline.NumInlined: 87
inline.NumDeleted: 13
begin_hunk_0_@ruby_strtod:bb.a
  %i.hd = sext i32 %i.hb to i64
  %i.he = getelementptr [8 x i8], ptr @tens, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !39
  %i.hg = fmul double %.sroa.067.0815, %i.hf
  %i.hh = sext i32 %i.hc to i64
  %i.hi = getelementptr [8 x i8], ptr @tens, i64 %i.hh
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !39
  %i.hk = fmul double %i.hg, %i.hj
  br label %Bclear.exit748

bb.ay:                                            ; preds = %bb.at
  %i.hl = icmp samesign ugt i32 %i.gh, -23
  br i1 %i.hl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hm = sub nsw i32 0, %i.gh
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr [8 x i8], ptr @tens, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !39
  %i.hq = fdiv double %.sroa.067.0815, %i.hp
  br label %Bclear.exit748

bb.ba:                                            ; preds = %bb.aw, %bb.ay, %.thread, %bb.ar
  %.sroa.067.0816 = phi double [ %.sroa.067.0815, %bb.aw ], [ %.sroa.067.0815, %bb.ay ], [ %.sroa.067.0815, %.thread ], [ %i.gq, %bb.ar ] ; 5 uses
  %i.hr = sub i32 %.6565, %i.gi
  %i.hs = add i32 %i.gh, %i.hr                    ; 7 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %bb.bb, label %bb.bk

bb.bb:                                            ; preds = %bb.ba
  %i.hu = and i32 %i.hs, 15                       ; 2 uses
  %.not654 = icmp eq i32 %i.hu, 0
  br i1 %.not654, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr [8 x i8], ptr @tens, i64 %i.hv
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !39
  %i.hy = fmul double %.sroa.067.0816, %i.hx
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.067.1 = phi double [ %i.hy, %bb.bc ], [ %.sroa.067.0816, %bb.bb ] ; 3 uses
  %i.hz = and i32 %i.hs, 2147483632               ; 2 uses
  %.not655.a = icmp eq i32 %i.hz, 0
  br i1 %.not655.a, label %.thread824, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ia = icmp samesign ugt i32 %i.hz, 308
  br i1 %i.ia, label %.thread817, label %bb.bf

.thread817:                                       ; preds = %bb.be, %._crit_edge1127
  %i.ib = tail call ptr @rb_errno_ptr() #24
  store i32 34, ptr %i.ib, align 4, !tbaa !7
  br label %Bclear.exit748

bb.bf:                                            ; preds = %bb.be
  %i.ic = icmp samesign ugt i32 %i.hs, 31
  br i1 %i.ic, label %.lr.ph1126.preheader, label %._crit_edge1127

.lr.ph1126.preheader:                             ; preds = %bb.bf
  %i.id = lshr i32 %i.hs, 4
  br label %.lr.ph1126

.lr.ph1126:                                       ; preds = %.lr.ph1126.preheader, %bb.bh
  %indvars.iv1265 = phi i64 [ 0, %.lr.ph1126.preheader ], [ %indvars.iv.next1266, %bb.bh ] ; 2 uses
  %.sroa.067.31124 = phi double [ %.sroa.067.1, %.lr.ph1126.preheader ], [ %.sroa.067.4, %bb.bh ] ; 2 uses
  %.05751122 = phi i32 [ %i.id, %.lr.ph1126.preheader ], [ %i.ii, %bb.bh ] ; 3 uses
  %i.ie = and i32 %.05751122, 1
  %.not683 = icmp eq i32 %i.ie, 0
  br i1 %.not683, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph1126
  %i.if = getelementptr [8 x i8], ptr @bigtens, i64 %indvars.iv1265
  %i.ig = load double, ptr %i.if, align 8, !tbaa !39
  %i.ih = fmul double %.sroa.067.31124, %i.ig
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph1126, %bb.bg
  %.sroa.067.4 = phi double [ %i.ih, %bb.bg ], [ %.sroa.067.31124, %.lr.ph1126 ] ; 2 uses
  %indvars.iv.next1266 = add nuw nsw i64 %indvars.iv1265, 1 ; 2 uses
  %i.ii = lshr i32 %.05751122, 1
  %i.ij = icmp samesign ugt i32 %.05751122, 3
  br i1 %i.ij, label %.lr.ph1126, label %._crit_edge1127.loopexit, !llvm.loop !41

._crit_edge1127.loopexit:                         ; preds = %bb.bh
  %sext = shl i64 %indvars.iv.next1266, 32
  %i.ik = ashr exact i64 %sext, 32
  br label %._crit_edge1127

._crit_edge1127:                                  ; preds = %._crit_edge1127.loopexit, %bb.bf
  %.0568.lcssa = phi i64 [ 0, %bb.bf ], [ %i.ik, %._crit_edge1127.loopexit ]
  %.sroa.067.3.lcssa = phi double [ %.sroa.067.1, %bb.bf ], [ %.sroa.067.4, %._crit_edge1127.loopexit ]
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
  br i1 %i.it, label %.thread817, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge1127
  %i.iu = icmp samesign ugt i32 %i.is, 2089811968
  br i1 %i.iu, label %.thread824, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iv = and i64 %i.ir, -4294967296
  %.sroa.067.4.insert.shift140 = add i64 %i.iv, 238690780250636288
  %.sroa.067.4.insert.mask141 = and i64 %i.ir, 4294967295
  %.sroa.067.4.insert.insert142 = or disjoint i64 %.sroa.067.4.insert.shift140, %.sroa.067.4.insert.mask141
  %i.iw = bitcast i64 %.sroa.067.4.insert.insert142 to double
  br label %.thread824

bb.bk:                                            ; preds = %bb.ba
  %i.ix = icmp slt i32 %i.hs, 0
  br i1 %i.ix, label %bb.bl, label %.thread824

bb.bl:                                            ; preds = %bb.bk
  %i.iy = sub i32 0, %i.hs                        ; 3 uses
  %i.iz = and i32 %i.iy, 15                       ; 2 uses
  %.not649 = icmp eq i32 %i.iz, 0
  br i1 %.not649, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr [8 x i8], ptr @tens, i64 %i.ja
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !39
  %i.jd = fdiv double %.sroa.067.0816, %i.jc
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.067.5 = phi double [ %i.jd, %bb.bm ], [ %.sroa.067.0816, %bb.bl ] ; 3 uses
  %i.je = ashr i32 %i.iy, 4                       ; 4 uses
  %.not650 = icmp eq i32 %i.je, 0
  br i1 %.not650, label %.thread824, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jf = icmp sgt i32 %i.je, 31
  br i1 %i.jf, label %.thread827, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jg = and i32 %i.iy, 256
  %.not651 = icmp eq i32 %i.jg, 0                 ; 2 uses
  %spec.select708 = select i1 %.not651, i32 0, i32 106
  %i.jh = icmp sgt i32 %i.je, 0
  br i1 %i.jh, label %.lr.ph1119, label %._crit_edge1120

.lr.ph1119:                                       ; preds = %bb.bp, %bb.br
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.br ], [ 0, %bb.bp ] ; 2 uses
  %.sroa.067.61117 = phi double [ %.sroa.067.7, %bb.br ], [ %.sroa.067.5, %bb.bp ] ; 2 uses
  %.15761115 = phi i32 [ %i.jm, %bb.br ], [ %i.je, %bb.bp ] ; 2 uses
  %i.ji = and i32 %.15761115, 1
  %.not653 = icmp eq i32 %i.ji, 0
  br i1 %.not653, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph1119
  %i.jj = getelementptr [8 x i8], ptr @tinytens, i64 %indvars.iv
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !39
  %i.jl = fmul double %.sroa.067.61117, %i.jk
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph1119, %bb.bq
  %.sroa.067.7 = phi double [ %i.jl, %bb.bq ], [ %.sroa.067.61117, %.lr.ph1119 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.jm = lshr i32 %.15761115, 1                  ; 2 uses
  %.not1135 = icmp eq i32 %i.jm, 0
  br i1 %.not1135, label %._crit_edge1120, label %.lr.ph1119, !llvm.loop !42

._crit_edge1120:                                  ; preds = %bb.br, %bb.bp
  %.sroa.067.6.lcssa = phi double [ %.sroa.067.5, %bb.bp ], [ %.sroa.067.7, %bb.br ] ; 3 uses
  br i1 %.not651, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge1120
  %i.jn = bitcast double %.sroa.067.6.lcssa to i64 ; 4 uses
  %sum.shift = lshr i64 %i.jn, 52
  %i.jo = trunc nuw nsw i64 %sum.shift to i32
  %i.jp = and i32 %i.jo, 2047                     ; 5 uses
  %i.jq = sub nsw i32 107, %i.jp
  %i.jr = icmp samesign ult i32 %i.jp, 107
  br i1 %i.jr, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.js = icmp samesign ult i32 %i.jp, 76
  br i1 %i.js, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.jt = icmp samesign ult i32 %i.jp, 55
  br i1 %i.jt, label %.thread824, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ju = sub nuw nsw i32 75, %i.jp
  %i.jv = shl nsw i32 -1, %i.ju
  %.sroa.067.4.extract.shift150 = lshr i64 %i.jn, 32
  %.sroa.067.4.extract.trunc151 = trunc nuw i64 %.sroa.067.4.extract.shift150 to i32
  %2 = and i32 %i.jv, %.sroa.067.4.extract.trunc151
  %.sroa.067.4.insert.ext153 = zext i32 %2 to i64
  %.sroa.067.4.insert.shift154 = shl nuw i64 %.sroa.067.4.insert.ext153, 32
  %i.jw = bitcast i64 %.sroa.067.4.insert.shift154 to double
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bt
  %i.jx = shl nsw i32 -1, %i.jq
  %.sroa.067.0.extract.trunc = trunc i64 %i.jn to i32
  %i.jy = and i32 %i.jx, %.sroa.067.0.extract.trunc
  %.sroa.067.0.insert.ext = zext i32 %i.jy to i64
  %.sroa.067.0.insert.mask99 = and i64 %i.jn, -4294967296
  %.sroa.067.0.insert.insert100 = or disjoint i64 %.sroa.067.0.insert.mask99, %.sroa.067.0.insert.ext
  %i.jz = bitcast i64 %.sroa.067.0.insert.insert100 to double
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bs, %._crit_edge1120
  %.sroa.067.8 = phi double [ %.sroa.067.6.lcssa, %._crit_edge1120 ], [ %i.jw, %bb.bv ], [ %i.jz, %bb.bw ], [ %.sroa.067.6.lcssa, %bb.bs ] ; 2 uses
  %i.ka = fcmp une double %.sroa.067.8, 0.000000e+00
  br i1 %i.ka, label %.thread824, label %.thread827

.thread827:                                       ; preds = %bb.bo, %bb.bx
  %i.kb = tail call ptr @rb_errno_ptr() #24
  store i32 34, ptr %i.kb, align 4, !tbaa !7
  br label %Bclear.exit748

.thread824:                                       ; preds = %bb.bu, %bb.bi, %bb.bk, %bb.bx, %bb.bn, %bb.bd, %bb.bj
  %.1567 = phi i32 [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bd ], [ %spec.select708, %bb.bx ], [ 0, %bb.bn ], [ 0, %bb.bi ], [ 106, %bb.bu ] ; 4 uses
  %.sroa.067.9 = phi double [ %.sroa.067.0816, %bb.bk ], [ %i.iw, %bb.bj ], [ %.sroa.067.1, %bb.bd ], [ %.sroa.067.8, %bb.bx ], [ %.sroa.067.5, %bb.bn ], [ f0x7FEFFFFFFFFFFFFF, %bb.bi ], [ f0x0370000000000000, %bb.bu ] ; 5 uses
  %i.kc = add i32 %.6565, 8                       ; 2 uses
  %i.kd = sdiv i32 %i.kc, 9
  %i.ke = icmp sgt i32 %i.kc, 17
  br i1 %i.ke, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.thread824, %.lr.ph.i
  %.048.i = phi i32 [ %i.kf, %.lr.ph.i ], [ 1, %.thread824 ]
  %.02747.i = phi i32 [ %i.kg, %.lr.ph.i ], [ 0, %.thread824 ]
  %i.kf = shl i32 %.048.i, 1                      ; 2 uses
  %i.kg = add i32 %.02747.i, 1                    ; 2 uses
  %i.kh = icmp sgt i32 %i.kd, %i.kf
  br i1 %i.kh, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread824
  %.027.lcssa.i = phi i32 [ 0, %.thread824 ], [ %i.kg, %.lr.ph.i ] ; 2 uses
  %i.ki = shl nuw i32 1, %.027.lcssa.i            ; 2 uses
  %i.kj = add i32 %i.ki, -1
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = shl nuw nsw i64 %i.kk, 2
  %i.km = add nuw nsw i64 %i.kl, 32
  %i.kn = tail call noalias ptr @malloc(i64 noundef %i.km) #26 ; 8 uses
  %.not.i.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i, label %Bclear.exit748, label %bb.by

bb.by:                                            ; preds = %._crit_edge.i
  %i.ko = getelementptr i8, ptr %i.kn, i64 8
  store i32 %.027.lcssa.i, ptr %i.ko, align 8, !tbaa !44
  %i.kp = getelementptr i8, ptr %i.kn, i64 12
  store i32 %i.ki, ptr %i.kp, align 4, !tbaa !47
  %i.kq = getelementptr i8, ptr %i.kn, i64 20
  %i.kr = getelementptr i8, ptr %i.kn, i64 16
  store i32 0, ptr %i.kr, align 8, !tbaa !48
  %i.ks = getelementptr i8, ptr %i.kn, i64 24
  store i32 %.8511, ptr %i.ks, align 8, !tbaa !7
  store i32 1, ptr %i.kq, align 4, !tbaa !49
  %i.kt = icmp sgt i32 %spec.select707, 9
  br i1 %i.kt, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.ku = getelementptr i8, ptr %.2529, i64 9
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %bb.bz
  %.032.i = phi ptr [ %i.ku, %bb.bz ], [ %i.kz, %bb.cb ] ; 3 uses
  %.029.i = phi ptr [ %i.kn, %bb.bz ], [ %i.ky, %bb.cb ]
  %.028.i = phi i32 [ 9, %bb.bz ], [ %i.la, %bb.cb ]
  %i.kv = load i8, ptr %.032.i, align 1, !tbaa !11
  %i.kw = sext i8 %i.kv to i32
  %i.kx = add nsw i32 %i.kw, -48
  %i.ky = tail call fastcc ptr @multadd(ptr noundef nonnull %.029.i, i32 noundef 10, i32 noundef %i.kx) ; 3 uses
  %.not41.i = icmp eq ptr %i.ky, null
  br i1 %.not41.i, label %Bclear.exit748, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kz = getelementptr i8, ptr %.032.i, i64 1
  %i.la = add nuw nsw i32 %.028.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.la, %spec.select707
  br i1 %exitcond.not.i, label %bb.cc, label %bb.ca, !llvm.loop !50

bb.cc:                                            ; preds = %bb.cb
  %i.lb = getelementptr i8, ptr %.032.i, i64 2
  br label %bb.ce

bb.cd:                                            ; preds = %bb.by
  %i.lc = getelementptr i8, ptr %.2529, i64 10
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.133.i = phi ptr [ %i.lb, %bb.cc ], [ %i.lc, %bb.cd ]
  %.130.i = phi ptr [ %i.ky, %bb.cc ], [ %i.kn, %bb.cd ] ; 2 uses
  %.1.i = phi i32 [ %spec.select707, %bb.cc ], [ 9, %bb.cd ] ; 2 uses
  %i.ld = icmp slt i32 %.1.i, %.6565
  br i1 %i.ld, label %.lr.ph53.i, label %s2b.exit

.lr.ph53.i:                                       ; preds = %bb.ce, %bb.cf
  %.251.i = phi i32 [ %i.lj, %bb.cf ], [ %.1.i, %bb.ce ]
  %.23150.i = phi ptr [ %i.lh, %bb.cf ], [ %.130.i, %bb.ce ]
  %.23449.i = phi ptr [ %i.li, %bb.cf ], [ %.133.i, %bb.ce ] ; 2 uses
  %i.le = load i8, ptr %.23449.i, align 1, !tbaa !11
  %i.lf = sext i8 %i.le to i32
  %i.lg = add nsw i32 %i.lf, -48
  %i.lh = tail call fastcc ptr @multadd(ptr noundef nonnull %.23150.i, i32 noundef 10, i32 noundef %i.lg) ; 3 uses
  %.not42.i = icmp eq ptr %i.lh, null
  br i1 %.not42.i, label %Bclear.exit748, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph53.i
  %i.li = getelementptr i8, ptr %.23449.i, i64 1
  %i.lj = add nuw nsw i32 %.251.i, 1              ; 2 uses
  %exitcond61.not.i = icmp eq i32 %i.lj, %.6565
  br i1 %exitcond61.not.i, label %s2b.exit, label %.lr.ph53.i, !llvm.loop !51

s2b.exit:                                         ; preds = %bb.cf, %bb.ce
  %.026.i = phi ptr [ %.130.i, %bb.ce ], [ %i.lh, %bb.cf ] ; 5 uses
  %i.lk = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !44 ; 2 uses
  %i.lm = shl nuw i32 1, %i.ll                    ; 2 uses
  %i.ln = add i32 %i.lm, -1
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = shl nuw nsw i64 %i.lo, 2
  %i.lq = add nuw nsw i64 %i.lp, 32
  %i.lr = tail call noalias ptr @malloc(i64 noundef %i.lq) #26 ; 2 uses
  %.not.i1131 = icmp eq ptr %i.lr, null
  br i1 %.not.i1131, label %Bclear.exit744.thread.thread, label %.lr.ph1133

.lr.ph1133:                                       ; preds = %s2b.exit
  %i.ls = getelementptr i8, ptr %.026.i, i64 20
  %i.lt = getelementptr i8, ptr %.026.i, i64 16
  %i.lu = icmp sgt i32 %i.gh, -1                  ; 2 uses
  %i.lv = sub i32 0, %i.gh
  %.0593 = select i1 %i.lu, i32 0, i32 %i.lv      ; 3 uses
  %.0589 = select i1 %i.lu, i32 %i.gh, i32 0      ; 3 uses
  %.1591 = add i32 %.1567, %.0589
  %i.lw = icmp sgt i32 %.0593, 0
  %i.lx = icmp sgt i32 %.0589, 0
  %i.ly = icmp ne i32 %.1567, 0
  %.not672 = icmp eq i32 %.1567, 0                ; 4 uses
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph1133, %Bclear.exit732
  %i.lz = phi ptr [ %i.lr, %.lr.ph1133 ], [ %i.wc, %Bclear.exit732 ] ; 11 uses
  %i.ma = phi i32 [ %i.lm, %.lr.ph1133 ], [ %i.vx, %Bclear.exit732 ]
  %i.mb = phi i32 [ %i.ll, %.lr.ph1133 ], [ %i.vw, %Bclear.exit732 ]
  %.sroa.067.101132 = phi double [ %.sroa.067.9, %.lr.ph1133 ], [ %.sroa.067.13, %Bclear.exit732 ] ; 27 uses
  %i.mc = getelementptr i8, ptr %i.lz, i64 8
  store i32 %i.mb, ptr %i.mc, align 8, !tbaa !44
  %i.md = getelementptr i8, ptr %i.lz, i64 12
  store i32 %i.ma, ptr %i.md, align 4, !tbaa !47
  %i.me = getelementptr i8, ptr %i.lz, i64 20
  store i32 0, ptr %i.me, align 4, !tbaa !49
  %i.mf = getelementptr i8, ptr %i.lz, i64 16     ; 2 uses
  store i32 0, ptr %i.mf, align 8, !tbaa !48
  %i.mg = load i32, ptr %i.ls, align 4, !tbaa !49
  %i.mh = sext i32 %i.mg to i64
  %i.mi = shl nsw i64 %i.mh, 2
  %i.mj = add nsw i64 %i.mi, 8                    ; 2 uses
  %.not.i718 = icmp eq i64 %i.mj, 0
  br i1 %.not.i718, label %ruby_nonempty_memcpy.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.mf, ptr noundef nonnull readonly align 1 %i.lt, i64 noundef range(i64 1, 0) %i.mj, i1 noundef false) #24
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.cg, %bb.ch
  %i.mk = call fastcc ptr @d2b(double noundef %.sroa.067.101132, ptr noundef %i.a, ptr noundef %i.b) ; 6 uses
  %.not658 = icmp eq ptr %i.mk, null
  br i1 %.not658, label %Bclear.exit740.thread, label %bb.ci

bb.ci:                                            ; preds = %ruby_nonempty_memcpy.exit
  %i.ml = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 5 uses
  %.not.i.i719 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i719, label %Bclear.exit740.thread.sink.split, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mm = getelementptr i8, ptr %i.ml, i64 8
  %i.mn = getelementptr i8, ptr %i.ml, i64 24
  store i32 1, ptr %i.mn, align 8, !tbaa !7
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr %i.mm, align 8, !tbaa !7
  %i.mo = load i32, ptr %i.a, align 4, !tbaa !7   ; 4 uses
  %i.mp = icmp sgt i32 %i.mo, -1                  ; 2 uses
  %i.mq = select i1 %i.mp, i32 %i.mo, i32 0
  %.1595 = add nuw i32 %i.mq, %.0593              ; 3 uses
  %i.mr = select i1 %i.mp, i32 0, i32 %i.mo
  %i.ms = sub i32 %i.mo, %.1567                   ; 2 uses
  %i.mt = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %i.mu = add i32 %i.mt, -1
  %i.mv = add i32 %i.mu, %i.ms
  %i.mw = icmp slt i32 %i.mv, -1022
  %i.mx = add i32 %i.ms, 1075
  %i.my = sub i32 54, %i.mt
  %.2570 = select i1 %i.mw, i32 %i.mx, i32 %i.my  ; 2 uses
  %i.mz = add i32 %.2570, %.1595                  ; 2 uses
  %i.na = sub i32 %.1591, %i.mr
  %i.nb = add i32 %i.na, %.2570                   ; 2 uses
  %i.nc = tail call i32 @llvm.smin.i32(i32 %i.mz, i32 %i.nb)
  %.1572 = tail call i32 @llvm.smin.i32(i32 %i.nc, i32 %.1595)
end_hunk_0
