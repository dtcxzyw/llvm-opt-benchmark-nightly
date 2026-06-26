inline.NumInlined: 87
inline.NumDeleted: 13
begin_hunk_0_@ruby_strtod:bb.a
  %i.fh = getelementptr i8, ptr %.241106, i64 1   ; 3 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !11  ; 2 uses
  %i.fj = icmp eq i8 %i.fi, 48
  br i1 %i.fj, label %.lr.ph1107, label %._crit_edge1108, !llvm.loop !37

._crit_edge1108:                                  ; preds = %.lr.ph1107, %.preheader
  %.7587.in.lcssa = phi i8 [ %.6586.in, %.preheader ], [ %i.fi, %.lr.ph1107 ] ; 2 uses
  %.24.lcssa = phi ptr [ %.23, %.preheader ], [ %i.fh, %.lr.ph1107 ] ; 3 uses
  %i.fk = add i8 %.7587.in.lcssa, -49
  %or.cond17 = icmp ult i8 %i.fk, 9
  br i1 %or.cond17, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge1108
  %narrow = add nsw i8 %.7587.in.lcssa, -48
  %i.fl = zext nneg i8 %narrow to i32             ; 2 uses
  %i.fm = getelementptr i8, ptr %.24.lcssa, i64 1 ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !11  ; 2 uses
  %i.fo = add i8 %i.fn, -48
  %i.fp = icmp ult i8 %i.fo, 10
  br i1 %i.fp, label %.lr.ph1113, label %._crit_edge1114

.lr.ph1113:                                       ; preds = %bb.an, %.lr.ph1113
  %i.fq = phi i8 [ %i.fx, %.lr.ph1113 ], [ %i.fn, %bb.an ]
  %i.fr = phi ptr [ %i.fw, %.lr.ph1113 ], [ %i.fm, %bb.an ]
  %.05121111 = phi i32 [ %i.fv, %.lr.ph1113 ], [ %i.fl, %bb.an ]
  %i.fs = zext nneg i8 %i.fq to i32
  %i.ft = mul i32 %.05121111, 10
  %i.fu = add i32 %i.ft, -48
  %i.fv = add i32 %i.fu, %i.fs                    ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fr, i64 1      ; 3 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !11  ; 2 uses
  %i.fy = add i8 %i.fx, -48
  %i.fz = icmp ult i8 %i.fy, 10
  br i1 %i.fz, label %.lr.ph1113, label %._crit_edge1114.loopexit, !llvm.loop !38

._crit_edge1114.loopexit:                         ; preds = %.lr.ph1113
  %i.ga = tail call i32 @llvm.smin.i32(i32 %i.fv, i32 19999)
  br label %._crit_edge1114

._crit_edge1114:                                  ; preds = %._crit_edge1114.loopexit, %bb.an
  %.0512.lcssa = phi i32 [ %i.fl, %bb.an ], [ %i.ga, %._crit_edge1114.loopexit ]
  %.lcssa1028 = phi ptr [ %i.fm, %bb.an ], [ %i.fw, %._crit_edge1114.loopexit ] ; 2 uses
  %i.gb = ptrtoint ptr %.lcssa1028 to i64
  %i.gc = ptrtoint ptr %.24.lcssa to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = icmp sgt i64 %i.gd, 8
  %..0512 = select i1 %i.ge, i32 19999, i32 %.0512.lcssa ; 2 uses
  %i.gf = sub i32 0, %..0512
  %spec.select717 = select i1 %.1574, i32 %..0512, i32 %i.gf
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge1114, %bb.am, %._crit_edge1108, %bb.ah
  %.1578 = phi i32 [ 0, %bb.am ], [ %spec.select717, %._crit_edge1114 ], [ 0, %bb.ah ], [ 0, %._crit_edge1108 ] ; 2 uses
  %.26 = phi ptr [ %.22, %bb.am ], [ %.lcssa1028, %._crit_edge1114 ], [ %.22, %bb.ah ], [ %.24.lcssa, %._crit_edge1108 ] ; 13 uses
  %.0 = phi ptr [ %.22, %bb.am ], [ %.22, %._crit_edge1114 ], [ %0, %bb.ah ], [ %.22, %._crit_edge1108 ]
  %.not645 = icmp eq i32 %.6565, 0
  br i1 %.not645, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gg = icmp ne i32 %.4547, 0
  %or.cond21 = or i1 %i.i, %i.gg                  ; 2 uses
  %spec.select718 = select i1 %or.cond21, i32 %.1540, i32 0
  %spec.select719 = select i1 %or.cond21, ptr %.26, ptr %.0
  br label %Bclear.exit750

bb.aq:                                            ; preds = %bb.ao
  %i.gh = sub i32 %.1578, %.3551                  ; 11 uses
  %.not646 = icmp eq i32 %.1560.lcssa, 0
  %spec.select709 = select i1 %.not646, i32 %.6565, i32 %.1560.lcssa ; 3 uses
  %i.gi = tail call i32 @llvm.smin.i32(i32 %.6565, i32 17) ; 2 uses
  %i.gj = uitofp i32 %.8511 to double             ; 2 uses
  %i.gk = icmp sgt i32 %.6565, 9
  br i1 %i.gk, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.gl = zext nneg i32 %i.gi to i64
  %i.gm = getelementptr [8 x i8], ptr @tens, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 -72
  %i.go = load double, ptr %i.gn, align 8, !tbaa !39
  %i.gp = uitofp i32 %.8 to double
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.go, double %i.gj, double %i.gp) ; 2 uses
  %i.gr = icmp samesign ult i32 %.6565, 16
  br i1 %i.gr, label %.thread, label %bb.ba

.thread:                                          ; preds = %bb.aq, %bb.ar
  %.sroa.067.0817 = phi double [ %i.gq, %bb.ar ], [ %i.gj, %bb.aq ] ; 7 uses
  %i.gs = tail call i32 @llvm.get.rounding()
  %i.gt = icmp eq i32 %i.gs, 1
  br i1 %i.gt, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %.thread
  %.not647 = icmp eq i32 %.1578, %.3551
  br i1 %.not647, label %Bclear.exit750, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gu = icmp sgt i32 %i.gh, 0
  br i1 %i.gu, label %bb.au, label %bb.ay

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
  %i.kd = sdiv i32 %i.kc, 9
  %i.ke = icmp sgt i32 %i.kc, 17
  br i1 %i.ke, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.thread826, %.lr.ph.i
  %.048.i = phi i32 [ %i.kf, %.lr.ph.i ], [ 1, %.thread826 ]
  %.02747.i = phi i32 [ %i.kg, %.lr.ph.i ], [ 0, %.thread826 ]
  %i.kf = shl i32 %.048.i, 1                      ; 2 uses
  %i.kg = add i32 %.02747.i, 1                    ; 2 uses
  %i.kh = icmp sgt i32 %i.kd, %i.kf
  br i1 %i.kh, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread826
  %.027.lcssa.i = phi i32 [ 0, %.thread826 ], [ %i.kg, %.lr.ph.i ] ; 2 uses
  %i.ki = shl nuw i32 1, %.027.lcssa.i            ; 2 uses
  %i.kj = add i32 %i.ki, -1
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = shl nuw nsw i64 %i.kk, 2
  %i.km = add nuw nsw i64 %i.kl, 32
  %i.kn = tail call noalias ptr @malloc(i64 noundef %i.km) #26 ; 8 uses
  %.not.i.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i, label %Bclear.exit750, label %bb.by

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
  %i.kt = icmp sgt i32 %spec.select709, 9
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
  br i1 %.not41.i, label %Bclear.exit750, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kz = getelementptr i8, ptr %.032.i, i64 1
  %i.la = add nuw nsw i32 %.028.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.la, %spec.select709
  br i1 %exitcond.not.i, label %bb.cc, label %bb.ca, !llvm.loop !50

bb.cc:                                            ; preds = %bb.cb
  %i.lb = getelementptr i8, ptr %.032.i, i64 2
  br label %bb.ce

bb.cd:                                            ; preds = %bb.by
end_hunk_0
