Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@getmetrics:bb.a
  %i.rb = fptosi double %sqrt1102.us to i32       ; 2 uses
  %gep1879 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1878, i64 %indvars.iv1554
  store i32 %i.rb, ptr %gep1879, align 4, !tbaa !57
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %.39151235.us, i32 %i.rb) ; 2 uses
  %exitcond1558.not = icmp eq i64 %indvars.iv.next1555, %wide.trip.count1562
  br i1 %exitcond1558.not, label %._crit_edge1238.us, label %scalar.ph, !llvm.loop !135

._crit_edge1238.us:                               ; preds = %scalar.ph, %middle.block
  %spec.select.us.lcssa = phi i32 [ %i.px, %middle.block ], [ %spec.select.us, %scalar.ph ] ; 3 uses
  %exitcond1563.not = icmp eq i64 %indvars.iv.next1560, %wide.trip.count1562
  br i1 %exitcond1563.not, label %._crit_edge1242, label %.preheader1141.us

bb.ar:                                            ; preds = %.preheader1143, %labdiff.exit
  %indvars.iv1544 = phi i64 [ 0, %.preheader1143 ], [ %indvars.iv.next1545, %labdiff.exit ] ; 2 uses
  %i.rc = add nuw nsw i64 %indvars.iv1544, %i.ol  ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !57 ; 3 uses
  %i.rf = lshr i32 %i.re, 16
  %i.rg = and i32 %i.rf, 255
  %i.rh = lshr i32 %i.re, 8
  %i.ri = uitofp nneg i32 %i.rg to double
  %i.rj = and i32 %i.re, 255
  %i.rk = and i32 %i.rh, 255
  %i.rl = uitofp nneg i32 %i.rj to double
  %i.rm = uitofp nneg i32 %i.rk to double
  %i.rn = fdiv double %i.ri, 2.550000e+02         ; 3 uses
  %i.ro = insertelement <2 x double> poison, double %i.rm, i64 0
  %i.rp = insertelement <2 x double> %i.ro, double %i.rl, i64 1
  %i.rq = fdiv <2 x double> %i.rp, splat (double 2.550000e+02) ; 2 uses
  %i.rr = fcmp ogt double %i.rn, f0x3FA4B5DCC0000000
  br i1 %i.rr, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.rs = fadd double %i.rn, f0x3FAC28F5C0000000
  %i.rt = fdiv double %i.rs, f0x3FF0E147A0000000
  %i.ru = tail call double @pow(double noundef %i.rt, double noundef f0x4003333340000000) #13
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.rv = fdiv nnan double %i.rn, f0x4029D70A40000000
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.046.i.i = phi double [ %i.ru, %bb.as ], [ %i.rv, %bb.at ]
  %i.rw = extractelement <2 x double> %i.rq, i64 0 ; 3 uses
  %i.rx = fcmp ogt double %i.rw, f0x3FA4B5DCC0000000
  br i1 %i.rx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ry = fadd double %i.rw, f0x3FAC28F5C0000000
  %i.rz = fdiv double %i.ry, f0x3FF0E147A0000000
  %i.sa = tail call double @pow(double noundef %i.rz, double noundef f0x4003333340000000) #13
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.sb = fdiv nnan double %i.rw, f0x4029D70A40000000
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.047.i.i = phi double [ %i.sa, %bb.av ], [ %i.sb, %bb.aw ]
  %i.sc = extractelement <2 x double> %i.rq, i64 1 ; 3 uses
  %i.sd = fcmp ogt double %i.sc, f0x3FA4B5DCC0000000
  br i1 %i.sd, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.se = fadd double %i.sc, f0x3FAC28F5C0000000
  %i.sf = fdiv double %i.se, f0x3FF0E147A0000000
  %i.sg = tail call double @pow(double noundef %i.sf, double noundef f0x4003333340000000) #13
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.sh = fdiv nnan double %i.sc, f0x4029D70A40000000
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.048.i.i = phi double [ %i.sg, %bb.ay ], [ %i.sh, %bb.az ]
  %i.si = fmul double %.046.i.i, 1.000000e+02     ; 2 uses
  %i.sj = fmul double %.047.i.i, 1.000000e+02     ; 2 uses
  %i.sk = fmul double %.048.i.i, 1.000000e+02     ; 2 uses
  %i.sl = fmul double %i.sj, f0x3FBE83E420000000
  %i.sm = tail call double @llvm.fmuladd.f64(double %i.si, double f0x3F93C36120000000, double %i.sl)
  %i.sn = tail call double @llvm.fmuladd.f64(double %i.sk, double f0x3FEE6A7F00000000, double %i.sm)
  %i.so = insertelement <2 x double> poison, double %i.sj, i64 0
  %i.sp = shufflevector <2 x double> %i.so, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sq = fmul <2 x double> %i.sp, <double f0x3FD6E2EB20000000, double f0x3FE6E2EB20000000>
  %i.sr = insertelement <2 x double> poison, double %i.si, i64 0
  %i.ss = shufflevector <2 x double> %i.sr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.st = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ss, <2 x double> <double f0x3FDA64C300000000, double f0x3FCB367A00000000>, <2 x double> %i.sq)
  %i.su = insertelement <2 x double> poison, double %i.sk, i64 0
  %i.sv = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sv, <2 x double> <double f0x3FC71A9FC0000000, double f0x3FB27BB300000000>, <2 x double> %i.st)
  %i.sx = fdiv <2 x double> %i.sw, <double f0x4057C30200000000, double 1.000000e+02> ; 2 uses
  %i.sy = fdiv double %i.sn, f0x405B388320000000  ; 3 uses
  %i.sz = extractelement <2 x double> %i.sx, i64 0 ; 3 uses
  %i.ta = fcmp ogt double %i.sz, f0x3F82231840000000
  br i1 %i.ta, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.tb = tail call double @pow(double noundef %i.sz, double noundef f0x3FD5555560000000) #13
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.tc = tail call double @llvm.fmuladd.f64(double %i.sz, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.045.i.i = phi double [ %i.tb, %bb.bb ], [ %i.tc, %bb.bc ]
  %i.td = extractelement <2 x double> %i.sx, i64 1 ; 3 uses
  %i.te = fcmp ogt double %i.td, f0x3F82231840000000
  br i1 %i.te, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.tf = tail call double @pow(double noundef %i.td, double noundef f0x3FD5555560000000) #13
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.tg = tail call double @llvm.fmuladd.f64(double %i.td, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.044.i.i = phi double [ %i.tf, %bb.be ], [ %i.tg, %bb.bf ] ; 3 uses
  %i.th = fcmp ogt double %i.sy, f0x3F82231840000000
  br i1 %i.th, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ti = tail call double @pow(double noundef %i.sy, double noundef f0x3FD5555560000000) #13
  br label %labdiff.exit

bb.bi:                                            ; preds = %bb.bg
  %i.tj = tail call double @llvm.fmuladd.f64(double %i.sy, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %labdiff.exit

labdiff.exit:                                     ; preds = %bb.bh, %bb.bi
  %.0.i.i = phi double [ %i.ti, %bb.bh ], [ %i.tj, %bb.bi ]
  %i.tk = tail call double @llvm.fmuladd.f64(double %.044.i.i, double 1.160000e+02, double -1.600000e+01)
  %i.tl = fsub double %.045.i.i, %.044.i.i
  %i.tm = fmul double %i.tl, 5.000000e+02
  %i.tn = fsub double %.044.i.i, %.0.i.i
  %i.to = fmul double %i.tn, 2.000000e+02
  %i.tp = fsub double f0x404A98AD00000000, %i.tk
  %i.tq = tail call double @pow(double noundef %i.tp, double noundef 2.000000e+00) #13
  %i.tr = fsub double f0x3F69BD7300000000, %i.tm
  %i.ts = tail call double @pow(double noundef %i.tr, double noundef 2.000000e+00) #13
  %i.tt = fadd double %i.tq, %i.ts
  %i.tu = fsub double f0xBF796D20A0000000, %i.to
  %i.tv = tail call double @pow(double noundef %i.tu, double noundef 2.000000e+00) #13
  %i.tw = fadd double %i.tt, %i.tv
  %i.tx = tail call double @sqrt(double noundef %i.tw) #13
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.rc
  store double %i.tx, ptr %i.ty, align 8, !tbaa !132
  %indvars.iv.next1545 = add nuw nsw i64 %indvars.iv1544, 1 ; 2 uses
  %exitcond1548.not = icmp eq i64 %indvars.iv.next1545, %i.i
  br i1 %exitcond1548.not, label %bb.bj, label %bb.ar

bb.bj:                                            ; preds = %labdiff.exit
  %indvars.iv.next1550 = add nuw nsw i64 %indvars.iv1549, 1 ; 2 uses
  %exitcond1553.not = icmp eq i64 %indvars.iv.next1550, %i.i
  br i1 %exitcond1553.not, label %.preheader1141.us.preheader, label %.preheader1143

._crit_edge1242:                                  ; preds = %._crit_edge1238.us
  tail call void @free(ptr noundef nonnull %i.oi) #13
  %.not966.not = icmp eq i32 %spec.select.us.lcssa, 0
  br i1 %.not966.not, label %.loopexit1140, label %.preheader1138.preheader

.preheader1138.preheader:                         ; preds = %._crit_edge1242
  %wide.trip.count1572 = zext nneg i32 %i.om to i64 ; 2 uses
  br label %.preheader1138

.preheader1138:                                   ; preds = %.preheader1138.preheader, %._crit_edge1248
  %indvars.iv1569 = phi i64 [ 1, %.preheader1138.preheader ], [ %indvars.iv.next1570, %._crit_edge1248 ] ; 2 uses
  %i.tz = mul nuw nsw i64 %indvars.iv1569, %i.i
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader1138, %bb.bk
  %indvars.iv1564 = phi i64 [ 1, %.preheader1138 ], [ %indvars.iv.next1565, %bb.bk ] ; 2 uses
  %i.ua = add nuw nsw i64 %indvars.iv1564, %i.tz  ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ua
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !57
  %i.ud = mul i32 %i.uc, 255
  %i.ue = udiv i32 %i.ud, %spec.select.us.lcssa   ; 3 uses
  %i.uf = shl i32 %i.ue, 8
  %i.ug = shl i32 %i.ue, 16
  %i.uh = or i32 %i.ug, %i.uf
  %i.ui = or i32 %i.uh, %i.ue
  %i.uj = or i32 %i.ui, -16777216
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ua
  store i32 %i.uj, ptr %i.uk, align 4, !tbaa !57
  %indvars.iv.next1565 = add nuw nsw i64 %indvars.iv1564, 1 ; 2 uses
  %exitcond1568.not = icmp eq i64 %indvars.iv.next1565, %wide.trip.count1572
  br i1 %exitcond1568.not, label %._crit_edge1248, label %bb.bk

._crit_edge1248:                                  ; preds = %bb.bk
  %indvars.iv.next1570 = add nuw nsw i64 %indvars.iv1569, 1 ; 2 uses
  %exitcond1573.not = icmp eq i64 %indvars.iv.next1570, %wide.trip.count1572
  br i1 %exitcond1573.not, label %.loopexit1140, label %.preheader1138

.loopexit1140:                                    ; preds = %._crit_edge1248, %._crit_edge1242
  %i.ul = mul nuw nsw i32 %i.om, %0
  %i.um = zext nneg i32 %i.ul to i64
  %invariant.gep1880 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.um ; 2 uses
  %n.vec31 = and i64 %i.i, 508                    ; 3 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %.loopexit1140
  %index33 = phi i64 [ 0, %.loopexit1140 ], [ %index.next34, %vector.body32 ] ; 3 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index33
  store <4 x i32> splat (i32 -16777216), ptr %i.un, align 4, !tbaa !57
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1880, i64 %index33
  store <4 x i32> splat (i32 -16777216), ptr %i.uo, align 4, !tbaa !57
  %index.next34 = add nuw i64 %index33, 4         ; 2 uses
  %i.up = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.up, label %middle.block35, label %vector.body32, !llvm.loop !136

middle.block35:                                   ; preds = %vector.body32
  %cmp.n36 = icmp eq i64 %n.vec31, %i.i
  br i1 %cmp.n36, label %.preheader1137.preheader, label %scalar.ph29

scalar.ph29:                                      ; preds = %middle.block35, %scalar.ph29
  %indvars.iv1574 = phi i64 [ %indvars.iv.next1575, %scalar.ph29 ], [ %n.vec31, %middle.block35 ] ; 3 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1574
  store i32 -16777216, ptr %i.uq, align 4, !tbaa !57
  %gep1881 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1880, i64 %indvars.iv1574
  store i32 -16777216, ptr %gep1881, align 4, !tbaa !57
  %indvars.iv.next1575 = add nuw nsw i64 %indvars.iv1574, 1 ; 2 uses
  %exitcond1578.not = icmp eq i64 %indvars.iv.next1575, %i.i
  br i1 %exitcond1578.not, label %.preheader1137.preheader, label %scalar.ph29, !llvm.loop !137

.preheader1137.preheader:                         ; preds = %scalar.ph29, %middle.block35
  %invariant.gep1882 = getelementptr [4 x i8], ptr %1, i64 %i.i ; 5 uses
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %unroll_iter = and i64 %i.i, 508
  br label %.preheader1137

.preheader1137:                                   ; preds = %.preheader1137, %.preheader1137.preheader
  %indvars.iv1579 = phi i64 [ 0, %.preheader1137.preheader ], [ %indvars.iv.next1580.3, %.preheader1137 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader1137.preheader ], [ %niter.next.3, %.preheader1137 ]
  %i.ur = mul nuw nsw i64 %indvars.iv1579, %i.i   ; 2 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ur
  store i32 -16777216, ptr %i.us, align 4, !tbaa !57
  %gep1883 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.ur
  %i.ut = getelementptr i8, ptr %gep1883, i64 -4
  store i32 -16777216, ptr %i.ut, align 4, !tbaa !57
  %indvars.iv.next1580 = or disjoint i64 %indvars.iv1579, 1
  %i.uu = mul nuw nsw i64 %indvars.iv.next1580, %i.i ; 2 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uu
  store i32 -16777216, ptr %i.uv, align 4, !tbaa !57
  %gep1883.1 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.uu
  %i.uw = getelementptr i8, ptr %gep1883.1, i64 -4
  store i32 -16777216, ptr %i.uw, align 4, !tbaa !57
  %indvars.iv.next1580.1 = or disjoint i64 %indvars.iv1579, 2
  %i.ux = mul nuw nsw i64 %indvars.iv.next1580.1, %i.i ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ux
  store i32 -16777216, ptr %i.uy, align 4, !tbaa !57
  %gep1883.2 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.ux
  %i.uz = getelementptr i8, ptr %gep1883.2, i64 -4
  store i32 -16777216, ptr %i.uz, align 4, !tbaa !57
  %indvars.iv.next1580.2 = or disjoint i64 %indvars.iv1579, 3
  %i.va = mul nuw nsw i64 %indvars.iv.next1580.2, %i.i ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.va
  store i32 -16777216, ptr %i.vb, align 4, !tbaa !57
  %gep1883.3 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.va
  %i.vc = getelementptr i8, ptr %gep1883.3, i64 -4
  store i32 -16777216, ptr %i.vc, align 4, !tbaa !57
  %indvars.iv.next1580.3 = add nuw nsw i64 %indvars.iv1579, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader1136.preheader.unr-lcssa, label %.preheader1137

.preheader1136.preheader.unr-lcssa:               ; preds = %.preheader1137
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader1136.preheader, label %.preheader1137.epil.preheader

.preheader1137.epil.preheader:                    ; preds = %.preheader1136.preheader.unr-lcssa
  %lcmp.mod108 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.preheader1137.epil

.preheader1137.epil:                              ; preds = %.preheader1137.epil, %.preheader1137.epil.preheader
  %indvars.iv1579.epil = phi i64 [ %indvars.iv.next1580.3, %.preheader1137.epil.preheader ], [ %indvars.iv.next1580.epil, %.preheader1137.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader1137.epil.preheader ], [ %epil.iter.next, %.preheader1137.epil ]
  %i.vd = mul nuw nsw i64 %indvars.iv1579.epil, %i.i ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vd
  store i32 -16777216, ptr %i.ve, align 4, !tbaa !57
  %gep1883.epil = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.vd
  %i.vf = getelementptr i8, ptr %gep1883.epil, i64 -4
  store i32 -16777216, ptr %i.vf, align 4, !tbaa !57
  %indvars.iv.next1580.epil = add nuw nsw i64 %indvars.iv1579.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader1136.preheader, label %.preheader1137.epil, !llvm.loop !138

.preheader1136.preheader:                         ; preds = %.preheader1137.epil, %.preheader1136.preheader.unr-lcssa
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.37, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %i.vg = zext nneg i32 %0 to i64
  %wide.trip.count1596 = zext nneg i32 %i.om to i64 ; 2 uses
  %i.vh = shl nuw nsw i64 %i.i, 2
  %i.vi = shl nuw nsw i64 %i.i, 2
  %i.vj = getelementptr i8, ptr %1, i64 %i.vh
  br label %.preheader1136

.preheader1136:                                   ; preds = %.preheader1136.preheader, %._crit_edge1256
  %indvar = phi i64 [ 0, %.preheader1136.preheader ], [ %indvar.next, %._crit_edge1256 ] ; 2 uses
  %indvars.iv1593 = phi i64 [ 1, %.preheader1136.preheader ], [ %indvars.iv.next1594, %._crit_edge1256 ] ; 2 uses
  %i.vk = mul i64 %i.vi, %indvar
  %scevgep = getelementptr i8, ptr %i.vj, i64 %i.vk
  %i.vl = mul nuw nsw i64 %indvars.iv1593, %i.vg
  %load_initial = load i32, ptr %scevgep, align 4
  %i.vm = and i32 %load_initial, 255
  br label %.preheader1135

.preheader1133.preheader:                         ; preds = %._crit_edge1256
  %i.vn = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count1610 = zext nneg i32 %i.om to i64 ; 2 uses
  %n.vec39 = and i64 %i.oo, -4                    ; 3 uses
  %i.vo = or disjoint i64 %n.vec39, 1
  %cmp.n47 = icmp eq i64 %i.oo, %n.vec39
  br label %.preheader1133

.preheader1135:                                   ; preds = %.preheader1136, %.preheader1135
  %store_forwarded = phi i32 [ %i.vm, %.preheader1136 ], [ %i.vs, %.preheader1135 ]
  %indvars.iv1588 = phi i64 [ 1, %.preheader1136 ], [ %indvars.iv.next1589, %.preheader1135 ] ; 2 uses
  %i.vp = add nuw nsw i64 %indvars.iv1588, %i.vl  ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vp ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !57
  %i.vs = and i32 %i.vr, 255                      ; 3 uses
  %i.vt = shl nuw nsw i32 %i.vs, 1
  %i.vu = add nuw nsw i32 %i.vt, %store_forwarded
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vp
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !57
  %i.vy = and i32 %i.vx, 255
  %i.vz = add nuw nsw i32 %i.vy, %i.vu
  %i.wa = shl nuw nsw i32 %i.vz, 6
  %i.wb = and i32 %i.wa, 130816
  %i.wc = or disjoint i32 %i.vs, %i.wb
  store i32 %i.wc, ptr %i.vq, align 4, !tbaa !57
  %indvars.iv.next1589 = add nuw nsw i64 %indvars.iv1588, 1 ; 2 uses
  %exitcond1592.not = icmp eq i64 %indvars.iv.next1589, %wide.trip.count1596
  br i1 %exitcond1592.not, label %._crit_edge1256, label %.preheader1135

._crit_edge1256:                                  ; preds = %.preheader1135
  %indvars.iv.next1594 = add nuw nsw i64 %indvars.iv1593, 1 ; 2 uses
  %exitcond1597.not = icmp eq i64 %indvars.iv.next1594, %wide.trip.count1596
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1597.not, label %.preheader1133.preheader, label %.preheader1136

.preheader1133:                                   ; preds = %.preheader1133.preheader, %._crit_edge1263
  %indvars.iv1607 = phi i64 [ 1, %.preheader1133.preheader ], [ %i.wi, %._crit_edge1263 ] ; 3 uses
  %i.wd = mul nuw nsw i64 %indvars.iv1607, %i.vn
  %i.we = add nsw i64 %indvars.iv1607, -1
  %i.wf = mul nuw nsw i64 %i.we, %i.vn
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wf ; 2 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wd ; 2 uses
  %i.wi = add nuw nsw i64 %indvars.iv1607, 1      ; 3 uses
  %i.wj = mul nuw nsw i64 %i.wi, %i.vn
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wj ; 2 uses
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %.preheader1133
  %index41 = phi i64 [ 0, %.preheader1133 ], [ %index.next45, %vector.body40 ] ; 2 uses
  %i.wl = or disjoint i64 %index41, 1             ; 3 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %i.wl
  %wide.load42 = load <4 x i32>, ptr %i.wm, align 4, !tbaa !57
  %i.wn = lshr <4 x i32> %wide.load42, splat (i32 8)
  %i.wo = and <4 x i32> %i.wn, splat (i32 255)
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %i.wl ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %i.wp, align 4, !tbaa !57
  %i.wq = lshr <4 x i32> %wide.load43, splat (i32 7)
  %i.wr = and <4 x i32> %i.wq, splat (i32 510)
  %i.ws = add nuw nsw <4 x i32> %i.wr, %i.wo
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.wl
  %wide.load44 = load <4 x i32>, ptr %i.wt, align 4, !tbaa !57
  %i.wu = lshr <4 x i32> %wide.load44, splat (i32 8)
  %i.wv = and <4 x i32> %i.wu, splat (i32 255)
  %i.ww = add nuw nsw <4 x i32> %i.wv, %i.ws
  %i.wx = lshr <4 x i32> %i.ww, splat (i32 2)     ; 3 uses
  %i.wy = shl nuw nsw <4 x i32> %i.wx, splat (i32 8)
  %i.wz = shl nuw nsw <4 x i32> %i.wx, splat (i32 16)
  %i.xa = or <4 x i32> %i.wz, %i.wy
  %i.xb = or <4 x i32> %i.xa, %i.wx
  %i.xc = or <4 x i32> %i.xb, splat (i32 -16777216)
  store <4 x i32> %i.xc, ptr %i.wp, align 4, !tbaa !57
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.xd = icmp eq i64 %index.next45, %n.vec39
  br i1 %i.xd, label %middle.block46, label %vector.body40, !llvm.loop !140

middle.block46:                                   ; preds = %vector.body40
  br i1 %cmp.n47, label %._crit_edge1263, label %.preheader1132

.preheader1132:                                   ; preds = %middle.block46, %.preheader1132
  %indvars.iv1602 = phi i64 [ %indvars.iv.next1603, %.preheader1132 ], [ %i.vo, %middle.block46 ] ; 4 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %indvars.iv1602
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !57
  %i.xg = lshr i32 %i.xf, 8
  %i.xh = and i32 %i.xg, 255
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv1602 ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !57
  %i.xk = lshr i32 %i.xj, 7
  %i.xl = and i32 %i.xk, 510
  %i.xm = add nuw nsw i32 %i.xl, %i.xh
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv1602
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !57
  %i.xp = lshr i32 %i.xo, 8
  %i.xq = and i32 %i.xp, 255
  %i.xr = add nuw nsw i32 %i.xq, %i.xm
  %i.xs = lshr i32 %i.xr, 2                       ; 3 uses
  %i.xt = shl nuw nsw i32 %i.xs, 8
  %i.xu = shl nuw nsw i32 %i.xs, 16
  %i.xv = or i32 %i.xu, %i.xt
  %i.xw = or i32 %i.xv, %i.xs
end_hunk_0
