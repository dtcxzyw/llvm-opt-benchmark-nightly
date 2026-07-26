inline.NumInlined: 87
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ruby_strtod:bb.a

bb.au:                                            ; preds = %bb.at
  %i.gv = icmp samesign ult i32 %i.gh, 23
  br i1 %i.gv, label %bb.av, label %bb.aw

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
  br i1 %i.ij, label %.lr.ph1128, label %._crit_edge1129, !llvm.loop !41

._crit_edge1129:                                  ; preds = %bb.bh, %bb.bf
  %.0568.lcssa = phi i64 [ 0, %bb.bf ], [ %indvars.iv.next1268, %bb.bh ]
  %.sroa.067.3.lcssa = phi double [ %.sroa.067.1, %bb.bf ], [ %.sroa.067.4, %bb.bh ]
  %i.ik = bitcast double %.sroa.067.3.lcssa to i64 ; 2 uses
  %i.il = and i64 %i.ik, -4294967296
  %.sroa.067.4.insert.ext = add i64 %i.il, -238690780250636288
  %.sroa.067.4.insert.mask127 = and i64 %i.ik, 4294967295
  %.sroa.067.4.insert.insert128 = or disjoint i64 %.sroa.067.4.insert.ext, %.sroa.067.4.insert.mask127
  %i.im = bitcast i64 %.sroa.067.4.insert.insert128 to double
  %i.in = getelementptr [8 x i8], ptr @bigtens, i64 %.0568.lcssa
  %i.io = load double, ptr %i.in, align 8, !tbaa !39
  %i.ip = fmul double %i.io, %i.im
  %i.iq = bitcast double %i.ip to i64             ; 3 uses
  %.sroa.067.4.extract.shift130 = lshr i64 %i.iq, 32
  %.sroa.067.4.extract.trunc131 = trunc nuw i64 %.sroa.067.4.extract.shift130 to i32
  %i.ir = and i32 %.sroa.067.4.extract.trunc131, 2146435072 ; 2 uses
  %i.is = icmp samesign ugt i32 %i.ir, 2090860544
  br i1 %i.is, label %.thread819, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge1129
  %i.it = icmp samesign ugt i32 %i.ir, 2089811968
  br i1 %i.it, label %.thread826, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iu = and i64 %i.iq, -4294967296
  %.sroa.067.4.insert.shift140 = add i64 %i.iu, 238690780250636288
  %.sroa.067.4.insert.mask141 = and i64 %i.iq, 4294967295
  %.sroa.067.4.insert.insert142 = or disjoint i64 %.sroa.067.4.insert.shift140, %.sroa.067.4.insert.mask141
  %i.iv = bitcast i64 %.sroa.067.4.insert.insert142 to double
  br label %.thread826

bb.bk:                                            ; preds = %bb.ba
  %i.iw = icmp slt i32 %i.hs, 0
  br i1 %i.iw, label %bb.bl, label %.thread826

bb.bl:                                            ; preds = %bb.bk
  %i.ix = sub i32 0, %i.hs                        ; 3 uses
  %i.iy = and i32 %i.ix, 15                       ; 2 uses
  %.not649 = icmp eq i32 %i.iy, 0
  br i1 %.not649, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr [8 x i8], ptr @tens, i64 %i.iz
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !39
  %i.jc = fdiv double %.sroa.067.0818, %i.jb
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.067.5 = phi double [ %i.jc, %bb.bm ], [ %.sroa.067.0818, %bb.bl ] ; 3 uses
  %i.jd = ashr i32 %i.ix, 4                       ; 4 uses
  %.not650 = icmp eq i32 %i.jd, 0
  br i1 %.not650, label %.thread826, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.je = icmp sgt i32 %i.jd, 31
  br i1 %i.je, label %.thread829, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jf = and i32 %i.ix, 256
  %.not651 = icmp eq i32 %i.jf, 0                 ; 2 uses
  %spec.select710 = select i1 %.not651, i32 0, i32 106
  %i.jg = icmp sgt i32 %i.jd, 0
  br i1 %i.jg, label %.lr.ph1121, label %._crit_edge1122

.lr.ph1121:                                       ; preds = %bb.bp, %bb.br
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.br ], [ 0, %bb.bp ] ; 2 uses
  %.sroa.067.61119 = phi double [ %.sroa.067.7, %bb.br ], [ %.sroa.067.5, %bb.bp ] ; 2 uses
  %.15761117 = phi i32 [ %i.jl, %bb.br ], [ %i.jd, %bb.bp ] ; 2 uses
  %i.jh = and i32 %.15761117, 1
  %.not655 = icmp eq i32 %i.jh, 0
  br i1 %.not655, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph1121
  %i.ji = getelementptr [8 x i8], ptr @tinytens, i64 %indvars.iv
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !39
  %i.jk = fmul double %.sroa.067.61119, %i.jj
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph1121, %bb.bq
  %.sroa.067.7 = phi double [ %i.jk, %bb.bq ], [ %.sroa.067.61119, %.lr.ph1121 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.jl = lshr i32 %.15761117, 1                  ; 2 uses
  %.not1137 = icmp eq i32 %i.jl, 0
  br i1 %.not1137, label %._crit_edge1122, label %.lr.ph1121, !llvm.loop !42

._crit_edge1122:                                  ; preds = %bb.br, %bb.bp
  %.sroa.067.6.lcssa = phi double [ %.sroa.067.5, %bb.bp ], [ %.sroa.067.7, %bb.br ] ; 3 uses
  br i1 %.not651, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge1122
  %i.jm = bitcast double %.sroa.067.6.lcssa to i64 ; 4 uses
  %sum.shift = lshr i64 %i.jm, 52
  %i.jn = trunc nuw nsw i64 %sum.shift to i32
  %i.jo = and i32 %i.jn, 2047                     ; 5 uses
  %i.jp = sub nsw i32 107, %i.jo
  %i.jq = icmp samesign ult i32 %i.jo, 107
  br i1 %i.jq, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.jr = icmp samesign ult i32 %i.jo, 76
  br i1 %i.jr, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.js = icmp samesign ult i32 %i.jo, 55
  br i1 %i.js, label %.thread826, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jt = sub nuw nsw i32 75, %i.jo
  %i.ju = shl nsw i32 -1, %i.jt
  %i.jv = zext i32 %i.ju to i64
  %.sroa.067.4.insert.ext153653 = shl nuw i64 %i.jv, 32
  %.sroa.067.4.extract.shift150654 = and i64 %.sroa.067.4.insert.ext153653, %i.jm
  %i.jw = bitcast i64 %.sroa.067.4.extract.shift150654 to double
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bt
  %i.jx = shl nsw i32 -1, %i.jp
  %.sroa.067.0.extract.trunc = trunc i64 %i.jm to i32
  %i.jy = and i32 %i.jx, %.sroa.067.0.extract.trunc
  %.sroa.067.0.insert.ext = zext i32 %i.jy to i64
  %.sroa.067.0.insert.mask99 = and i64 %i.jm, -4294967296
  %.sroa.067.0.insert.insert100 = or disjoint i64 %.sroa.067.0.insert.mask99, %.sroa.067.0.insert.ext
  %i.jz = bitcast i64 %.sroa.067.0.insert.insert100 to double
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bs, %._crit_edge1122
  %.sroa.067.8 = phi double [ %.sroa.067.6.lcssa, %._crit_edge1122 ], [ %i.jw, %bb.bv ], [ %i.jz, %bb.bw ], [ %.sroa.067.6.lcssa, %bb.bs ] ; 2 uses
  %i.ka = fcmp une double %.sroa.067.8, 0.000000e+00
  br i1 %i.ka, label %.thread826, label %.thread829

.thread829:                                       ; preds = %bb.bo, %bb.bx
  %i.kb = tail call ptr @rb_errno_ptr() #24
  store i32 34, ptr %i.kb, align 4, !tbaa !7
  br label %Bclear.exit750

.thread826:                                       ; preds = %bb.bu, %bb.bi, %bb.bk, %bb.bx, %bb.bn, %bb.bd, %bb.bj
  %.1567 = phi i32 [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bd ], [ %spec.select710, %bb.bx ], [ 0, %bb.bn ], [ 0, %bb.bi ], [ 106, %bb.bu ] ; 4 uses
  %.sroa.067.9 = phi double [ %.sroa.067.0818, %bb.bk ], [ %i.iv, %bb.bj ], [ %.sroa.067.1, %bb.bd ], [ %.sroa.067.8, %bb.bx ], [ %.sroa.067.5, %bb.bn ], [ f0x7FEFFFFFFFFFFFFF, %bb.bi ], [ f0x0370000000000000, %bb.bu ] ; 5 uses
  %i.kc = add i32 %.6565, 8                       ; 2 uses
  %2 = sdiv i32 %i.kc, 9
  %i.kd = icmp sgt i32 %i.kc, 17
  br i1 %i.kd, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.thread826, %.lr.ph.i
  %.048.i = phi i32 [ %i.ke, %.lr.ph.i ], [ 1, %.thread826 ]
  %.02747.i = phi i32 [ %i.kf, %.lr.ph.i ], [ 0, %.thread826 ]
  %i.ke = shl i32 %.048.i, 1                      ; 2 uses
  %i.kf = add i32 %.02747.i, 1                    ; 2 uses
  %i.kg = icmp sgt i32 %2, %i.ke
  br i1 %i.kg, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread826
  %.027.lcssa.i = phi i32 [ 0, %.thread826 ], [ %i.kf, %.lr.ph.i ] ; 2 uses
  %i.kh = shl nuw i32 1, %.027.lcssa.i            ; 2 uses
  %i.ki = add i32 %i.kh, -1
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = shl nuw nsw i64 %i.kj, 2
  %i.kl = add nuw nsw i64 %i.kk, 32
  %i.km = tail call noalias ptr @malloc(i64 noundef %i.kl) #26 ; 8 uses
  %.not.i.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i, label %Bclear.exit750, label %bb.by

bb.by:                                            ; preds = %._crit_edge.i
  %i.kn = getelementptr i8, ptr %i.km, i64 8
  store i32 %.027.lcssa.i, ptr %i.kn, align 8, !tbaa !44
  %i.ko = getelementptr i8, ptr %i.km, i64 12
  store i32 %i.kh, ptr %i.ko, align 4, !tbaa !47
  %i.kp = getelementptr i8, ptr %i.km, i64 20
  %i.kq = getelementptr i8, ptr %i.km, i64 16
  store i32 0, ptr %i.kq, align 8, !tbaa !48
  %i.kr = getelementptr i8, ptr %i.km, i64 24
  store i32 %.8511, ptr %i.kr, align 8, !tbaa !7
  store i32 1, ptr %i.kp, align 4, !tbaa !49
  %i.ks = icmp sgt i32 %spec.select709, 9
  br i1 %i.ks, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.kt = getelementptr i8, ptr %.2529, i64 9
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %bb.bz
  %.032.i = phi ptr [ %i.kt, %bb.bz ], [ %i.ky, %bb.cb ] ; 3 uses
  %.029.i = phi ptr [ %i.km, %bb.bz ], [ %i.kx, %bb.cb ]
  %.028.i = phi i32 [ 9, %bb.bz ], [ %i.kz, %bb.cb ]
  %i.ku = load i8, ptr %.032.i, align 1, !tbaa !11
  %i.kv = sext i8 %i.ku to i32
  %i.kw = add nsw i32 %i.kv, -48
  %i.kx = tail call fastcc ptr @multadd(ptr noundef nonnull %.029.i, i32 noundef 10, i32 noundef %i.kw) ; 3 uses
  %.not41.i = icmp eq ptr %i.kx, null
  br i1 %.not41.i, label %Bclear.exit750, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ky = getelementptr i8, ptr %.032.i, i64 1
  %i.kz = add nuw nsw i32 %.028.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.kz, %spec.select709
  br i1 %exitcond.not.i, label %bb.cc, label %bb.ca, !llvm.loop !50

bb.cc:                                            ; preds = %bb.cb
  %i.la = getelementptr i8, ptr %.032.i, i64 2
  br label %bb.ce

bb.cd:                                            ; preds = %bb.by
  %i.lb = getelementptr i8, ptr %.2529, i64 10
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.133.i = phi ptr [ %i.la, %bb.cc ], [ %i.lb, %bb.cd ]
  %.130.i = phi ptr [ %i.kx, %bb.cc ], [ %i.km, %bb.cd ] ; 2 uses
  %.1.i = phi i32 [ %spec.select709, %bb.cc ], [ 9, %bb.cd ] ; 2 uses
  %i.lc = icmp slt i32 %.1.i, %.6565
  br i1 %i.lc, label %.lr.ph53.i, label %s2b.exit

.lr.ph53.i:                                       ; preds = %bb.ce, %bb.cf
  %.251.i = phi i32 [ %i.li, %bb.cf ], [ %.1.i, %bb.ce ]
  %.23150.i = phi ptr [ %i.lg, %bb.cf ], [ %.130.i, %bb.ce ]
  %.23449.i = phi ptr [ %i.lh, %bb.cf ], [ %.133.i, %bb.ce ] ; 2 uses
  %i.ld = load i8, ptr %.23449.i, align 1, !tbaa !11
  %i.le = sext i8 %i.ld to i32
  %i.lf = add nsw i32 %i.le, -48
  %i.lg = tail call fastcc ptr @multadd(ptr noundef nonnull %.23150.i, i32 noundef 10, i32 noundef %i.lf) ; 3 uses
  %.not42.i = icmp eq ptr %i.lg, null
  br i1 %.not42.i, label %Bclear.exit750, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph53.i
  %i.lh = getelementptr i8, ptr %.23449.i, i64 1
  %i.li = add nuw nsw i32 %.251.i, 1              ; 2 uses
  %exitcond61.not.i = icmp eq i32 %i.li, %.6565
  br i1 %exitcond61.not.i, label %s2b.exit, label %.lr.ph53.i, !llvm.loop !51

s2b.exit:                                         ; preds = %bb.cf, %bb.ce
  %.026.i = phi ptr [ %.130.i, %bb.ce ], [ %i.lg, %bb.cf ] ; 5 uses
  %i.lj = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !44 ; 2 uses
  %i.ll = shl nuw i32 1, %i.lk                    ; 2 uses
  %i.lm = add i32 %i.ll, -1
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = shl nuw nsw i64 %i.ln, 2
  %i.lp = add nuw nsw i64 %i.lo, 32
  %i.lq = tail call noalias ptr @malloc(i64 noundef %i.lp) #26 ; 2 uses
  %.not.i1133 = icmp eq ptr %i.lq, null
  br i1 %.not.i1133, label %Bclear.exit746.thread.thread, label %.lr.ph1135

.lr.ph1135:                                       ; preds = %s2b.exit
  %i.lr = getelementptr i8, ptr %.026.i, i64 20
  %i.ls = getelementptr i8, ptr %.026.i, i64 16
  %i.lt = icmp sgt i32 %i.gh, -1                  ; 2 uses
  %i.lu = sub i32 0, %i.gh
  %.0593 = select i1 %i.lt, i32 0, i32 %i.lu      ; 3 uses
  %.0589 = select i1 %i.lt, i32 %i.gh, i32 0      ; 3 uses
  %.1591 = add i32 %.1567, %.0589
  %i.lv = icmp sgt i32 %.0593, 0
  %i.lw = icmp sgt i32 %.0589, 0
  %i.lx = icmp ne i32 %.1567, 0
  %.not674 = icmp eq i32 %.1567, 0                ; 4 uses
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph1135, %Bclear.exit734
  %i.ly = phi ptr [ %i.lq, %.lr.ph1135 ], [ %i.wb, %Bclear.exit734 ] ; 11 uses
  %i.lz = phi i32 [ %i.ll, %.lr.ph1135 ], [ %i.vw, %Bclear.exit734 ]
  %i.ma = phi i32 [ %i.lk, %.lr.ph1135 ], [ %i.vv, %Bclear.exit734 ]
  %.sroa.067.101134 = phi double [ %.sroa.067.9, %.lr.ph1135 ], [ %.sroa.067.13, %Bclear.exit734 ] ; 27 uses
  %i.mb = getelementptr i8, ptr %i.ly, i64 8
  store i32 %i.ma, ptr %i.mb, align 8, !tbaa !44
  %i.mc = getelementptr i8, ptr %i.ly, i64 12
  store i32 %i.lz, ptr %i.mc, align 4, !tbaa !47
  %i.md = getelementptr i8, ptr %i.ly, i64 20
  store i32 0, ptr %i.md, align 4, !tbaa !49
  %i.me = getelementptr i8, ptr %i.ly, i64 16     ; 2 uses
  store i32 0, ptr %i.me, align 8, !tbaa !48
  %i.mf = load i32, ptr %i.lr, align 4, !tbaa !49
  %i.mg = sext i32 %i.mf to i64
  %i.mh = shl nsw i64 %i.mg, 2
  %i.mi = add nsw i64 %i.mh, 8                    ; 2 uses
  %.not.i720 = icmp eq i64 %i.mi, 0
  br i1 %.not.i720, label %ruby_nonempty_memcpy.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.me, ptr noundef nonnull readonly align 1 %i.ls, i64 noundef range(i64 1, 0) %i.mi, i1 noundef false) #24
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.cg, %bb.ch
  %i.mj = call fastcc ptr @d2b(double noundef %.sroa.067.101134, ptr noundef %i.a, ptr noundef %i.b) ; 6 uses
  %.not660 = icmp eq ptr %i.mj, null
  br i1 %.not660, label %Bclear.exit742.thread, label %bb.ci

bb.ci:                                            ; preds = %ruby_nonempty_memcpy.exit
  %i.mk = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 5 uses
  %.not.i.i721 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i721, label %Bclear.exit742.thread.sink.split, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ml = getelementptr i8, ptr %i.mk, i64 8
  %i.mm = getelementptr i8, ptr %i.mk, i64 24
  store i32 1, ptr %i.mm, align 8, !tbaa !7
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr %i.ml, align 8, !tbaa !7
  %i.mn = load i32, ptr %i.a, align 4, !tbaa !7   ; 4 uses
  %i.mo = icmp sgt i32 %i.mn, -1                  ; 2 uses
  %i.mp = select i1 %i.mo, i32 %i.mn, i32 0
  %.1595 = add nuw i32 %i.mp, %.0593              ; 3 uses
  %i.mq = select i1 %i.mo, i32 0, i32 %i.mn
  %i.mr = sub i32 %i.mn, %.1567                   ; 2 uses
  %i.ms = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %i.mt = add i32 %i.ms, -1
  %i.mu = add i32 %i.mt, %i.mr
  %i.mv = icmp slt i32 %i.mu, -1022
  %i.mw = add i32 %i.mr, 1075
  %i.mx = sub i32 54, %i.ms
  %.2570 = select i1 %i.mv, i32 %i.mw, i32 %i.mx  ; 2 uses
  %i.my = add i32 %.2570, %.1595                  ; 2 uses
  %i.mz = sub i32 %.1591, %i.mq
  %i.na = add i32 %i.mz, %.2570                   ; 2 uses
  %i.nb = tail call i32 @llvm.smin.i32(i32 %i.my, i32 %i.na)
  %.1572 = tail call i32 @llvm.smin.i32(i32 %i.nb, i32 %.1595)
  %i.nc = tail call i32 @llvm.smax.i32(i32 %.1572, i32 0) ; 3 uses
  %.2596 = sub i32 %i.my, %i.nc                   ; 2 uses
  %.2592 = sub i32 %i.na, %i.nc                   ; 2 uses
  %.0588 = sub i32 %.1595, %i.nc                  ; 2 uses
  br i1 %i.lv, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.nd = tail call fastcc ptr @pow5mult(ptr noundef nonnull %i.mk, i32 noundef %.0593) ; 4 uses
  %.not662 = icmp eq ptr %i.nd, null
  br i1 %.not662, label %Bclear.exit742.thread.sink.split, label %Bclear.exit

Bclear.exit:                                      ; preds = %bb.ck
  %i.ne = tail call fastcc ptr @mult(ptr noundef nonnull %i.nd, ptr noundef nonnull %i.mj) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.mj) #24
  %.not663 = icmp eq ptr %i.ne, null
  br i1 %.not663, label %Bclear.exit742.thread, label %bb.cl

bb.cl:                                            ; preds = %Bclear.exit, %bb.cj
  %.3801 = phi ptr [ %i.ne, %Bclear.exit ], [ %i.mj, %bb.cj ] ; 2 uses
  %.3787 = phi ptr [ %i.nd, %Bclear.exit ], [ %i.mk, %bb.cj ] ; 4 uses
  %i.nf = icmp sgt i32 %.2596, 0
  br i1 %i.nf, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ng = tail call fastcc ptr @lshift(ptr noundef nonnull %.3801, i32 noundef %.2596) ; 2 uses
  %.not664 = icmp eq ptr %i.ng, null
  br i1 %.not664, label %Bclear.exit742.thread, label %bb.cn
end_hunk_0
