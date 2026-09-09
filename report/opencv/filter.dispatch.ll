Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/filter.dispatch?download=true
inline.NumInlined: 4426
inline.NumDeleted: 1773
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 195
begin_hunk_0_@_ZN2cv12cpu_baseline18SymmRowSmallFilterIffNS0_17SymmRowSmallNoVecEEclEPKhPhii:bb.a
  %i.co = lshr i64 %i.cn, 1
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check663 = icmp ult i32 %i.cj, 22
  br i1 %min.iters.check663, label %scalar.ph662.preheader, label %vector.memcheck644

vector.memcheck644:                               ; preds = %.lr.ph344
  %i.cq = shl nuw nsw i64 %i.cn, 2
  %i.cr = and i64 %i.cq, 8589934584               ; 3 uses
  %i.cs = getelementptr i8, ptr %2, i64 %i.cr
  %scevgep645 = getelementptr i8, ptr %i.cs, i64 8 ; 3 uses
  %i.ct = shl nsw i64 %i.cm, 2                    ; 4 uses
  %i.cu = shl nsw i64 %i.l, 2                     ; 4 uses
  %i.cv = getelementptr i8, ptr %1, i64 %i.ct
  %scevgep646 = getelementptr i8, ptr %i.cv, i64 %i.cu
  %i.cw = getelementptr i8, ptr %1, i64 %i.cr
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.ct
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cu
  %scevgep647 = getelementptr i8, ptr %i.cy, i64 8
  %i.cz = add nsw i64 %i.cr, %i.cu
  %i.da = add nsw i64 %i.cz, 8                    ; 2 uses
  %scevgep648 = getelementptr i8, ptr %1, i64 %i.da
  %i.db = sub nsw i64 %i.cu, %i.ct
  %scevgep649 = getelementptr i8, ptr %1, i64 %i.db
  %i.dc = sub nsw i64 %i.da, %i.ct
  %scevgep650 = getelementptr i8, ptr %1, i64 %i.dc
  %bound0651 = icmp ult ptr %2, %scevgep647
  %bound1652 = icmp ult ptr %scevgep646, %scevgep645
  %found.conflict653 = and i1 %bound0651, %bound1652
  %bound0654 = icmp ult ptr %2, %scevgep648
  %bound1655 = icmp ult ptr %i.m, %scevgep645
  %found.conflict656 = and i1 %bound0654, %bound1655
  %conflict.rdx657 = or i1 %found.conflict653, %found.conflict656
  %bound0658 = icmp ult ptr %2, %scevgep650
  %bound1659 = icmp ult ptr %scevgep649, %scevgep645
  %found.conflict660 = and i1 %bound0658, %bound1659
  %conflict.rdx661 = or i1 %conflict.rdx657, %found.conflict660
  br i1 %conflict.rdx661, label %scalar.ph662.preheader, label %vector.ph664

vector.ph664:                                     ; preds = %vector.memcheck644
  %n.vec665 = and i64 %i.cp, 2147483644           ; 4 uses
  %i.dd = shl nuw nsw i64 %n.vec665, 1            ; 2 uses
  %i.de = shl nuw nsw i64 %n.vec665, 3
  %i.df = getelementptr i8, ptr %i.m, i64 %i.de   ; 2 uses
  br label %vector.body666

vector.body666:                                   ; preds = %vector.body666, %vector.ph664
  %index667 = phi i64 [ 0, %vector.ph664 ], [ %index.next679, %vector.body666 ] ; 3 uses
  %i.dg = shl i64 %index667, 3
  %next.gep668 = getelementptr i8, ptr %i.m, i64 %i.dg ; 3 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %next.gep668, i64 %i.cl
  %wide.vec669 = load <8 x float>, ptr %i.dh, align 4, !tbaa !240, !alias.scope !960
  %wide.vec672 = load <8 x float>, ptr %next.gep668, align 4, !tbaa !240, !alias.scope !961
  %i.di = getelementptr inbounds [4 x i8], ptr %next.gep668, i64 %i.cm
  %wide.vec675 = load <8 x float>, ptr %i.di, align 4, !tbaa !240, !alias.scope !962
  %.idx903 = shl nuw i64 %index667, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %.idx903
  %i.dk = fneg <8 x float> %wide.vec672
  %i.dl = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dk, <8 x float> splat (float 2.000000e+00), <8 x float> %wide.vec669)
  %interleaved.vec678 = fadd <8 x float> %i.dl, %wide.vec675
  store <8 x float> %interleaved.vec678, ptr %i.dj, align 4, !tbaa !240, !alias.scope !963, !noalias !964
  %index.next679 = add nuw i64 %index667, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next679, %n.vec665
  br i1 %i.dm, label %middle.block680, label %vector.body666, !llvm.loop !895

middle.block680:                                  ; preds = %vector.body666
  %cmp.n681 = icmp eq i64 %i.cp, %n.vec665
  br i1 %cmp.n681, label %.thread.loopexit404, label %scalar.ph662.preheader

scalar.ph662.preheader:                           ; preds = %vector.memcheck644, %.lr.ph344, %middle.block680
  %indvars.iv433.ph = phi i64 [ 0, %vector.memcheck644 ], [ 0, %.lr.ph344 ], [ %i.dd, %middle.block680 ]
  %.1287342.ph = phi ptr [ %i.m, %vector.memcheck644 ], [ %i.m, %.lr.ph344 ], [ %i.df, %middle.block680 ]
  br label %scalar.ph662

scalar.ph662:                                     ; preds = %scalar.ph662.preheader, %scalar.ph662
  %indvars.iv433 = phi i64 [ %indvars.iv.next434, %scalar.ph662 ], [ %indvars.iv433.ph, %scalar.ph662.preheader ] ; 2 uses
  %.1287342 = phi ptr [ %i.dw, %scalar.ph662 ], [ %.1287342.ph, %scalar.ph662.preheader ] ; 4 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %.1287342, i64 %i.cl
  %i.do = getelementptr inbounds [4 x i8], ptr %.1287342, i64 %i.cm
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv433
  %i.dq = load <2 x float>, ptr %i.dn, align 4, !tbaa !240
  %i.dr = load <2 x float>, ptr %.1287342, align 4, !tbaa !240
  %i.ds = fneg <2 x float> %i.dr
  %i.dt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> splat (float 2.000000e+00), <2 x float> %i.dq)
  %i.du = load <2 x float>, ptr %i.do, align 4, !tbaa !240
  %i.dv = fadd <2 x float> %i.dt, %i.du
  store <2 x float> %i.dv, ptr %i.dp, align 4, !tbaa !240
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 2 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1287342, i64 8 ; 2 uses
  %.not308 = icmp samesign ugt i64 %indvars.iv.next434, %i.cn
  br i1 %.not308, label %.thread.loopexit404, label %scalar.ph662, !llvm.loop !896

._crit_edge476:                                   ; preds = %bb.f
  br i1 %.not308341, label %.thread, label %.lr.ph338

.lr.ph338:                                        ; preds = %._crit_edge476
  %i.dx = add nsw i32 %i.n, -2                    ; 2 uses
  %i.dy = sub nsw i32 0, %4
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = sext i32 %4 to i64                      ; 3 uses
  %i.eb = zext nneg i32 %i.dx to i64              ; 3 uses
  %i.ec = lshr i64 %i.eb, 1
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check620 = icmp ult i32 %i.dx, 22
  br i1 %min.iters.check620, label %scalar.ph619.preheader, label %vector.memcheck601

vector.memcheck601:                               ; preds = %.lr.ph338
  %i.ee = shl nuw nsw i64 %i.eb, 2
  %i.ef = and i64 %i.ee, 8589934584               ; 3 uses
  %i.eg = getelementptr i8, ptr %2, i64 %i.ef
  %scevgep602 = getelementptr i8, ptr %i.eg, i64 8 ; 3 uses
  %i.eh = shl nsw i64 %i.ea, 2                    ; 4 uses
  %i.ei = shl nsw i64 %i.l, 2                     ; 4 uses
  %i.ej = getelementptr i8, ptr %1, i64 %i.eh
  %scevgep603 = getelementptr i8, ptr %i.ej, i64 %i.ei
  %i.ek = getelementptr i8, ptr %1, i64 %i.ef
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.eh
  %i.em = getelementptr i8, ptr %i.el, i64 %i.ei
  %scevgep604 = getelementptr i8, ptr %i.em, i64 8
  %i.en = sub nsw i64 %i.ei, %i.eh
  %scevgep605 = getelementptr i8, ptr %1, i64 %i.en
  %i.eo = add nsw i64 %i.ef, %i.ei
  %i.ep = add nsw i64 %i.eo, 8                    ; 2 uses
  %i.eq = sub nsw i64 %i.ep, %i.eh
  %scevgep606 = getelementptr i8, ptr %1, i64 %i.eq
  %scevgep607 = getelementptr i8, ptr %1, i64 %i.ep
  %bound0608 = icmp ult ptr %2, %scevgep604
  %bound1609 = icmp ult ptr %scevgep603, %scevgep602
  %found.conflict610 = and i1 %bound0608, %bound1609
  %bound0611 = icmp ult ptr %2, %scevgep606
  %bound1612 = icmp ult ptr %scevgep605, %scevgep602
  %found.conflict613 = and i1 %bound0611, %bound1612
  %conflict.rdx614 = or i1 %found.conflict610, %found.conflict613
  %bound0615 = icmp ult ptr %2, %scevgep607
  %bound1616 = icmp ult ptr %i.m, %scevgep602
  %found.conflict617 = and i1 %bound0615, %bound1616
  %conflict.rdx618 = or i1 %conflict.rdx614, %found.conflict617
  br i1 %conflict.rdx618, label %scalar.ph619.preheader, label %vector.ph621

vector.ph621:                                     ; preds = %vector.memcheck601
  %n.vec622 = and i64 %i.ed, 2147483644           ; 4 uses
  %i.er = shl nuw nsw i64 %n.vec622, 1            ; 2 uses
  %i.es = shl nuw nsw i64 %n.vec622, 3
  %i.et = getelementptr i8, ptr %i.m, i64 %i.es   ; 2 uses
  %broadcast.splatinsert623 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splatinsert625 = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.eu = shufflevector <4 x float> %broadcast.splatinsert625, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ev = shufflevector <4 x float> %broadcast.splatinsert623, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body627

vector.body627:                                   ; preds = %vector.body627, %vector.ph621
  %index628 = phi i64 [ 0, %vector.ph621 ], [ %index.next640, %vector.body627 ] ; 3 uses
  %i.ew = shl i64 %index628, 3
  %next.gep629 = getelementptr i8, ptr %i.m, i64 %i.ew ; 3 uses
  %wide.vec630 = load <8 x float>, ptr %next.gep629, align 4, !tbaa !240, !alias.scope !965
  %i.ex = getelementptr inbounds [4 x i8], ptr %next.gep629, i64 %i.dz
  %wide.vec633 = load <8 x float>, ptr %i.ex, align 4, !tbaa !240, !alias.scope !966
  %i.ey = getelementptr inbounds [4 x i8], ptr %next.gep629, i64 %i.ea
  %wide.vec636 = load <8 x float>, ptr %i.ey, align 4, !tbaa !240, !alias.scope !967
  %.idx902 = shl nuw i64 %index628, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %.idx902
  %i.fa = fadd <8 x float> %wide.vec633, %wide.vec636
  %i.fb = fmul <8 x float> %i.ev, %i.fa
  %interleaved.vec639 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.vec630, <8 x float> %i.eu, <8 x float> %i.fb)
  store <8 x float> %interleaved.vec639, ptr %i.ez, align 4, !tbaa !240, !alias.scope !968, !noalias !969
  %index.next640 = add nuw i64 %index628, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next640, %n.vec622
  br i1 %i.fc, label %middle.block641, label %vector.body627, !llvm.loop !902

middle.block641:                                  ; preds = %vector.body627
  %cmp.n = icmp eq i64 %i.ed, %n.vec622
  br i1 %cmp.n, label %.thread.loopexit405, label %scalar.ph619.preheader

scalar.ph619.preheader:                           ; preds = %vector.memcheck601, %.lr.ph338, %middle.block641
  %indvars.iv430.ph = phi i64 [ 0, %vector.memcheck601 ], [ 0, %.lr.ph338 ], [ %i.er, %middle.block641 ]
  %.2288336.ph = phi ptr [ %i.m, %vector.memcheck601 ], [ %i.m, %.lr.ph338 ], [ %i.et, %middle.block641 ]
  %i.fd = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph619

scalar.ph619:                                     ; preds = %scalar.ph619.preheader, %scalar.ph619
  %indvars.iv430 = phi i64 [ %indvars.iv.next431, %scalar.ph619 ], [ %indvars.iv430.ph, %scalar.ph619.preheader ] ; 2 uses
  %.2288336 = phi ptr [ %i.fq, %scalar.ph619 ], [ %.2288336.ph, %scalar.ph619.preheader ] ; 4 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %.2288336, i64 %i.dz
  %i.fi = getelementptr inbounds [4 x i8], ptr %.2288336, i64 %i.ea
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv430
  %i.fk = load <2 x float>, ptr %.2288336, align 4, !tbaa !240
  %i.fl = load <2 x float>, ptr %i.fh, align 4, !tbaa !240
  %i.fm = load <2 x float>, ptr %i.fi, align 4, !tbaa !240
  %i.fn = fadd <2 x float> %i.fl, %i.fm
  %i.fo = fmul <2 x float> %i.fe, %i.fn
  %i.fp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.fg, <2 x float> %i.fo)
  store <2 x float> %i.fp, ptr %i.fj, align 4, !tbaa !240
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 2 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.2288336, i64 8 ; 2 uses
  %.not307 = icmp samesign ugt i64 %indvars.iv.next431, %i.eb
  br i1 %.not307, label %.thread.loopexit405, label %scalar.ph619, !llvm.loop !903

bb.g:                                             ; preds = %bb.b
  %6 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fr = load float, ptr %6, align 4, !tbaa !240 ; 3 uses
  %7 = load <2 x float>, ptr %i.h, align 4, !tbaa !240 ; 5 uses
  %8 = fcmp oeq <2 x float> %7, <float -2.000000e+00, float 0.000000e+00> ; 2 uses
  %9 = extractelement <2 x i1> %8, i64 0
  %10 = extractelement <2 x i1> %8, i64 1
  %or.cond = select i1 %9, i1 %10, i1 false
  %i.fs = fcmp oeq float %i.fr, 1.000000e+00
  %or.cond3 = select i1 %or.cond, i1 %i.fs, i1 false
  %.not306329 = icmp slt i32 %i.n, 2              ; 2 uses
  br i1 %or.cond3, label %.preheader321, label %.preheader323

.preheader323:                                    ; preds = %bb.g
  br i1 %.not306329, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader323
  %i.ft = add nsw i32 %i.n, -2                    ; 2 uses
  %i.fu = sub i32 0, %4                           ; 2 uses
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = sext i32 %4 to i64                      ; 3 uses
  %i.fx = shl i32 %i.fu, 1
  %i.fy = sext i32 %i.fx to i64                   ; 3 uses
  %i.fz = shl nsw i32 %4, 1                       ; 2 uses
  %i.ga = sext i32 %i.fz to i64                   ; 3 uses
  %i.gb = sub nsw i32 1, %4
  %i.gc = sext i32 %i.gb to i64
  %i.gd = sub nsw i32 1, %i.fz
  %i.ge = sext i32 %i.gd to i64                   ; 2 uses
  %i.gf = zext i32 %i.ft to i64                   ; 3 uses
  %i.gg = lshr i64 %i.gf, 1
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ft, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.hp, %vector.body ]
  %.4290326.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph ], [ %i.hr, %vector.body ]
  %i.gi = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gj = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x float> poison, float %i.fr, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.gk = shl nuw nsw i64 %i.gf, 2
  %i.gl = and i64 %i.gk, 17179869176              ; 6 uses
  %i.gm = getelementptr i8, ptr %2, i64 %i.gl
  %scevgep = getelementptr i8, ptr %i.gm, i64 8   ; 6 uses
  %i.gn = shl nsw i64 %i.l, 2                     ; 10 uses
  %i.go = shl nsw i64 %i.ga, 2                    ; 4 uses
  %i.gp = getelementptr i8, ptr %1, i64 %i.gn
  %scevgep506 = getelementptr i8, ptr %i.gp, i64 %i.go
  %i.gq = getelementptr i8, ptr %1, i64 %i.gl
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.gn
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.go
  %scevgep507 = getelementptr i8, ptr %i.gs, i64 8
  %i.gt = add nsw i64 %i.gn, 4
  %i.gu = sub nsw i64 %i.gt, %i.go
  %scevgep508 = getelementptr i8, ptr %1, i64 %i.gu
  %i.gv = add nsw i64 %i.gl, %i.gn
  %i.gw = add nsw i64 %i.gv, 8
  %i.gx = sub nsw i64 %i.gw, %i.go
  %scevgep509 = getelementptr i8, ptr %1, i64 %i.gx
  %i.gy = shl nsw i64 %i.fw, 2                    ; 4 uses
  %i.gz = getelementptr i8, ptr %1, i64 %i.gy
  %scevgep510 = getelementptr i8, ptr %i.gz, i64 %i.gn
  %i.ha = getelementptr i8, ptr %1, i64 %i.gl
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gy
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.gn
  %scevgep511 = getelementptr i8, ptr %i.hc, i64 8
  %i.hd = sub nsw i64 %i.gn, %i.gy
  %scevgep512 = getelementptr i8, ptr %1, i64 %i.hd
  %i.he = add nsw i64 %i.gl, %i.gn
  %i.hf = add nsw i64 %i.he, 8                    ; 2 uses
  %i.hg = sub nsw i64 %i.hf, %i.gy
  %scevgep513 = getelementptr i8, ptr %1, i64 %i.hg
  %scevgep514 = getelementptr i8, ptr %1, i64 %i.hf
  %i.hh = shl nsw i64 %i.fy, 2                    ; 2 uses
  %i.hi = getelementptr i8, ptr %1, i64 %i.gn
  %scevgep515 = getelementptr i8, ptr %i.hi, i64 %i.hh
  %i.hj = getelementptr i8, ptr %1, i64 %i.gl
  %i.hk = getelementptr i8, ptr %i.hj, i64 %i.gn
  %i.hl = getelementptr i8, ptr %i.hk, i64 %i.hh
  %scevgep516 = getelementptr i8, ptr %i.hl, i64 4
  %bound0 = icmp ult ptr %2, %scevgep507
  %bound1 = icmp ult ptr %scevgep506, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0517 = icmp ult ptr %2, %scevgep509
  %bound1518 = icmp ult ptr %scevgep508, %scevgep
  %found.conflict519 = and i1 %bound0517, %bound1518
  %conflict.rdx = or i1 %found.conflict, %found.conflict519
  %bound0520 = icmp ult ptr %2, %scevgep511
  %bound1521 = icmp ult ptr %scevgep510, %scevgep
  %found.conflict522 = and i1 %bound0520, %bound1521
  %conflict.rdx523 = or i1 %conflict.rdx, %found.conflict522
  %bound0524 = icmp ult ptr %2, %scevgep513
  %bound1525 = icmp ult ptr %scevgep512, %scevgep
  %found.conflict526 = and i1 %bound0524, %bound1525
  %conflict.rdx527 = or i1 %conflict.rdx523, %found.conflict526
  %bound0528 = icmp ult ptr %2, %scevgep514
  %bound1529 = icmp ult ptr %i.m, %scevgep
  %found.conflict530 = and i1 %bound0528, %bound1529
  %conflict.rdx531 = or i1 %conflict.rdx527, %found.conflict530
  %bound0532 = icmp ult ptr %2, %scevgep516
  %bound1533 = icmp ult ptr %scevgep515, %scevgep
  %found.conflict534 = and i1 %bound0532, %bound1533
  %conflict.rdx535 = or i1 %conflict.rdx531, %found.conflict534
  br i1 %conflict.rdx535, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hm = and i64 %i.gh, 3                        ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 0
  %i.ho = select i1 %i.hn, i64 4, i64 %i.hm
  %n.vec = sub nsw i64 %i.gh, %i.ho               ; 3 uses
  %i.hp = shl nsw i64 %n.vec, 1
  %i.hq = shl nsw i64 %n.vec, 3
  %i.hr = getelementptr i8, ptr %i.m, i64 %i.hq
  %broadcast.splat = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat537 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert538 = insertelement <4 x float> poison, float %i.fr, i64 0
  %broadcast.splat539 = shufflevector <4 x float> %broadcast.splatinsert538, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hs = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.hs ; 6 uses
  %wide.vec = load <8 x float>, ptr %next.gep, align 4, !tbaa !240, !alias.scope !970 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec540 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ht = getelementptr inbounds [4 x i8], ptr %next.gep, i64 %i.fv
  %wide.vec541 = load <8 x float>, ptr %i.ht, align 4, !tbaa !240, !alias.scope !971 ; 2 uses
  %strided.vec542 = shufflevector <8 x float> %wide.vec541, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec543 = shufflevector <8 x float> %wide.vec541, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hu = getelementptr inbounds [4 x i8], ptr %next.gep, i64 %i.fw
  %wide.vec544 = load <8 x float>, ptr %i.hu, align 4, !tbaa !240, !alias.scope !972 ; 2 uses
  %strided.vec545 = shufflevector <8 x float> %wide.vec544, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec546 = shufflevector <8 x float> %wide.vec544, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hv = fadd <4 x float> %strided.vec542, %strided.vec545
  %i.hw = fmul <4 x float> %broadcast.splat, %i.hv
  %i.hx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %broadcast.splat537, <4 x float> %i.hw)
  %i.hy = getelementptr inbounds [4 x i8], ptr %next.gep, i64 %i.fy
  %wide.vec547 = load <8 x float>, ptr %i.hy, align 4, !tbaa !240, !alias.scope !973
  %strided.vec548 = shufflevector <8 x float> %wide.vec547, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hz = getelementptr inbounds [4 x i8], ptr %next.gep, i64 %i.ga
  %wide.vec549 = load <8 x float>, ptr %i.hz, align 4, !tbaa !240, !alias.scope !974 ; 2 uses
  %strided.vec550 = shufflevector <8 x float> %wide.vec549, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec551 = shufflevector <8 x float> %wide.vec549, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ia = fadd <4 x float> %strided.vec548, %strided.vec550
  %i.ib = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ia, <4 x float> %broadcast.splat539, <4 x float> %i.hx)
  %i.ic = fadd <4 x float> %strided.vec543, %strided.vec546
  %i.id = fmul <4 x float> %broadcast.splat, %i.ic
  %i.ie = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec540, <4 x float> %broadcast.splat537, <4 x float> %i.id)
  %i.if = getelementptr inbounds [4 x i8], ptr %next.gep, i64 %i.ge
  %wide.vec552 = load <8 x float>, ptr %i.if, align 4, !tbaa !240, !alias.scope !975
  %strided.vec553 = shufflevector <8 x float> %wide.vec552, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ig = fadd <4 x float> %strided.vec553, %strided.vec551
  %i.ih = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ig, <4 x float> %broadcast.splat539, <4 x float> %i.ie)
  %.idx = shl nuw i64 %index, 3
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %interleaved.vec = shufflevector <4 x float> %i.ib, <4 x float> %i.ih, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.ii, align 4, !tbaa !240, !alias.scope !976, !noalias !977
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %scalar.ph.preheader, label %vector.body, !llvm.loop !912

.preheader321:                                    ; preds = %bb.g
  br i1 %.not306329, label %.thread, label %.lr.ph332

.lr.ph332:                                        ; preds = %.preheader321
  %i.ik = add nsw i32 %i.n, -2                    ; 2 uses
  %.neg = mul i32 %4, -2
  %i.il = sext i32 %.neg to i64                   ; 3 uses
  %i.im = shl nsw i32 %4, 1                       ; 2 uses
  %i.in = sext i32 %i.im to i64                   ; 3 uses
  %i.io = sub nsw i32 1, %i.im
  %i.ip = sext i32 %i.io to i64                   ; 2 uses
  %i.iq = zext nneg i32 %i.ik to i64              ; 3 uses
  %i.ir = lshr i64 %i.iq, 1
  %i.is = add nuw nsw i64 %i.ir, 1                ; 2 uses
  %min.iters.check580 = icmp ult i32 %i.ik, 32
  br i1 %min.iters.check580, label %scalar.ph579.preheader, label %vector.memcheck555

vector.memcheck555:                               ; preds = %.lr.ph332
  %i.it = shl nuw nsw i64 %i.iq, 2
  %i.iu = and i64 %i.it, 8589934584               ; 4 uses
  %i.iv = getelementptr i8, ptr %2, i64 %i.iu
  %scevgep556 = getelementptr i8, ptr %i.iv, i64 8 ; 4 uses
  %i.iw = shl nsw i64 %i.l, 2                     ; 6 uses
  %i.ix = shl nsw i64 %i.in, 2                    ; 4 uses
  %i.iy = getelementptr i8, ptr %1, i64 %i.iw
  %scevgep557 = getelementptr i8, ptr %i.iy, i64 %i.ix
  %i.iz = getelementptr i8, ptr %1, i64 %i.iu
  %i.ja = getelementptr i8, ptr %i.iz, i64 %i.iw
  %i.jb = getelementptr i8, ptr %i.ja, i64 %i.ix
  %scevgep558 = getelementptr i8, ptr %i.jb, i64 8
  %i.jc = add nsw i64 %i.iw, 4
  %i.jd = sub nsw i64 %i.jc, %i.ix
  %scevgep559 = getelementptr i8, ptr %1, i64 %i.jd
  %i.je = add nsw i64 %i.iu, %i.iw
  %i.jf = add nsw i64 %i.je, 8                    ; 2 uses
  %i.jg = sub nsw i64 %i.jf, %i.ix
  %scevgep560 = getelementptr i8, ptr %1, i64 %i.jg
  %scevgep561 = getelementptr i8, ptr %1, i64 %i.jf
  %i.jh = shl nsw i64 %i.il, 2                    ; 2 uses
  %i.ji = getelementptr i8, ptr %1, i64 %i.iw
  %scevgep562 = getelementptr i8, ptr %i.ji, i64 %i.jh
  %i.jj = getelementptr i8, ptr %1, i64 %i.iu
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.iw
  %i.jl = getelementptr i8, ptr %i.jk, i64 %i.jh
  %scevgep563 = getelementptr i8, ptr %i.jl, i64 4
  %bound0564 = icmp ult ptr %2, %scevgep558
  %bound1565 = icmp ult ptr %scevgep557, %scevgep556
  %found.conflict566 = and i1 %bound0564, %bound1565
  %bound0567 = icmp ult ptr %2, %scevgep560
  %bound1568 = icmp ult ptr %scevgep559, %scevgep556
  %found.conflict569 = and i1 %bound0567, %bound1568
  %conflict.rdx570 = or i1 %found.conflict566, %found.conflict569
  %bound0571 = icmp ult ptr %2, %scevgep561
  %bound1572 = icmp ult ptr %i.m, %scevgep556
  %found.conflict573 = and i1 %bound0571, %bound1572
  %conflict.rdx574 = or i1 %conflict.rdx570, %found.conflict573
  %bound0575 = icmp ult ptr %2, %scevgep563
  %bound1576 = icmp ult ptr %scevgep562, %scevgep556
  %found.conflict577 = and i1 %bound0575, %bound1576
  %conflict.rdx578 = or i1 %conflict.rdx574, %found.conflict577
  br i1 %conflict.rdx578, label %scalar.ph579.preheader, label %vector.ph581

vector.ph581:                                     ; preds = %vector.memcheck555
  %i.jm = and i64 %i.is, 3                        ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 0
  %i.jo = select i1 %i.jn, i64 4, i64 %i.jm
  %n.vec582 = sub nsw i64 %i.is, %i.jo            ; 3 uses
  %i.jp = shl nsw i64 %n.vec582, 1
  %i.jq = shl nsw i64 %n.vec582, 3
  %i.jr = getelementptr i8, ptr %i.m, i64 %i.jq
  br label %vector.body583

vector.body583:                                   ; preds = %vector.body583, %vector.ph581
  %index584 = phi i64 [ 0, %vector.ph581 ], [ %index.next597, %vector.body583 ] ; 3 uses
  %i.js = shl i64 %index584, 3
  %next.gep585 = getelementptr i8, ptr %i.m, i64 %i.js ; 4 uses
  %wide.vec586 = load <8 x float>, ptr %next.gep585, align 4, !tbaa !240, !alias.scope !978 ; 2 uses
  %strided.vec587 = shufflevector <8 x float> %wide.vec586, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec588 = shufflevector <8 x float> %wide.vec586, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.jt = getelementptr inbounds [4 x i8], ptr %next.gep585, i64 %i.il
  %wide.vec589 = load <8 x float>, ptr %i.jt, align 4, !tbaa !240, !alias.scope !979
  %strided.vec590 = shufflevector <8 x float> %wide.vec589, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ju = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec587, <4 x float> splat (float -2.000000e+00), <4 x float> %strided.vec590)
  %i.jv = getelementptr inbounds [4 x i8], ptr %next.gep585, i64 %i.in
  %wide.vec591 = load <8 x float>, ptr %i.jv, align 4, !tbaa !240, !alias.scope !980 ; 2 uses
  %strided.vec592 = shufflevector <8 x float> %wide.vec591, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec593 = shufflevector <8 x float> %wide.vec591, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.jw = fadd <4 x float> %i.ju, %strided.vec592
  %i.jx = getelementptr inbounds [4 x i8], ptr %next.gep585, i64 %i.ip
  %wide.vec594 = load <8 x float>, ptr %i.jx, align 4, !tbaa !240, !alias.scope !981
  %strided.vec595 = shufflevector <8 x float> %wide.vec594, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.jy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec588, <4 x float> splat (float -2.000000e+00), <4 x float> %strided.vec595)
  %i.jz = fadd <4 x float> %i.jy, %strided.vec593
  %.idx901 = shl nuw i64 %index584, 3
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 %.idx901
  %interleaved.vec596 = shufflevector <4 x float> %i.jw, <4 x float> %i.jz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec596, ptr %i.ka, align 4, !tbaa !240, !alias.scope !982, !noalias !983
  %index.next597 = add nuw i64 %index584, 4       ; 2 uses
  %i.kb = icmp eq i64 %index.next597, %n.vec582
  br i1 %i.kb, label %scalar.ph579.preheader, label %vector.body583, !llvm.loop !919

scalar.ph579.preheader:                           ; preds = %vector.body583, %vector.memcheck555, %.lr.ph332
  %indvars.iv427.ph = phi i64 [ 0, %vector.memcheck555 ], [ 0, %.lr.ph332 ], [ %i.jp, %vector.body583 ]
  %.3289330.ph = phi ptr [ %i.m, %vector.memcheck555 ], [ %i.m, %.lr.ph332 ], [ %i.jr, %vector.body583 ]
  br label %scalar.ph579

scalar.ph579:                                     ; preds = %scalar.ph579.preheader, %scalar.ph579
  %indvars.iv427 = phi i64 [ %indvars.iv.next428, %scalar.ph579 ], [ %indvars.iv427.ph, %scalar.ph579.preheader ] ; 2 uses
  %.3289330 = phi ptr [ %i.ko, %scalar.ph579 ], [ %.3289330.ph, %scalar.ph579.preheader ] ; 5 uses
  %i.kc = getelementptr inbounds [4 x i8], ptr %.3289330, i64 %i.il
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !240
  %i.ke = getelementptr inbounds [4 x i8], ptr %.3289330, i64 %i.in
  %i.kf = getelementptr inbounds [4 x i8], ptr %.3289330, i64 %i.ip
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !240
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv427
  %i.ki = load <2 x float>, ptr %.3289330, align 4, !tbaa !240
  %i.kj = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.kk = insertelement <2 x float> %i.kj, float %i.kg, i64 1
  %i.kl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ki, <2 x float> splat (float -2.000000e+00), <2 x float> %i.kk)
  %i.km = load <2 x float>, ptr %i.ke, align 4, !tbaa !240
  %i.kn = fadd <2 x float> %i.kl, %i.km
  store <2 x float> %i.kn, ptr %i.kh, align 4, !tbaa !240
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 2 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.3289330, i64 8 ; 2 uses
  %.not306 = icmp samesign ugt i64 %indvars.iv.next428, %i.iq
  br i1 %.not306, label %.thread.loopexit406, label %scalar.ph579, !llvm.loop !920

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.4290326 = phi ptr [ %i.lm, %scalar.ph ], [ %.4290326.ph, %scalar.ph.preheader ] ; 8 uses
  %i.kp = getelementptr inbounds [4 x i8], ptr %.4290326, i64 %i.fv
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !240
  %i.kr = getelementptr inbounds [4 x i8], ptr %.4290326, i64 %i.fw
  %i.ks = getelementptr inbounds [4 x i8], ptr %.4290326, i64 %i.fy
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !240
  %i.ku = getelementptr inbounds [4 x i8], ptr %.4290326, i64 %i.ga
  %i.kv = getelementptr inbounds [4 x i8], ptr %.4290326, i64 %i.gc
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !240
  %i.kx = getelementptr inbounds [4 x i8], ptr %.4290326, i64 %i.ge
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !240
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.la = load <2 x float>, ptr %.4290326, align 4, !tbaa !240
  %i.lb = load <2 x float>, ptr %i.kr, align 4, !tbaa !240
  %i.lc = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.ld = insertelement <2 x float> %i.lc, float %i.kw, i64 1
  %i.le = fadd <2 x float> %i.ld, %i.lb
  %i.lf = fmul <2 x float> %i.gi, %i.le
  %i.lg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.la, <2 x float> %i.gj, <2 x float> %i.lf)
  %i.lh = load <2 x float>, ptr %i.ku, align 4, !tbaa !240
  %i.li = insertelement <2 x float> poison, float %i.kt, i64 0
  %i.lj = insertelement <2 x float> %i.li, float %i.ky, i64 1
  %i.lk = fadd <2 x float> %i.lj, %i.lh
  %i.ll = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lk, <2 x float> %12, <2 x float> %i.lg)
  store <2 x float> %i.ll, ptr %i.kz, align 4, !tbaa !240
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.4290326, i64 8 ; 2 uses
  %.not305 = icmp samesign ugt i64 %indvars.iv.next, %i.gf
  br i1 %.not305, label %.thread.loopexit407, label %scalar.ph, !llvm.loop !921

.thread.loopexit:                                 ; preds = %scalar.ph702, %middle.block720
  %indvars.iv.next437.lcssa = phi i64 [ %i.bn, %middle.block720 ], [ %indvars.iv.next437, %scalar.ph702 ]
  %.lcssa501 = phi ptr [ %i.bp, %middle.block720 ], [ %i.ce, %scalar.ph702 ]
  %i.ln = trunc nuw nsw i64 %indvars.iv.next437.lcssa to i32
  br label %.thread

.thread.loopexit404:                              ; preds = %scalar.ph662, %middle.block680
  %indvars.iv.next434.lcssa = phi i64 [ %i.dd, %middle.block680 ], [ %indvars.iv.next434, %scalar.ph662 ]
  %.lcssa502 = phi ptr [ %i.df, %middle.block680 ], [ %i.dw, %scalar.ph662 ]
  %i.lo = trunc nuw nsw i64 %indvars.iv.next434.lcssa to i32
  br label %.thread

.thread.loopexit405:                              ; preds = %scalar.ph619, %middle.block641
  %indvars.iv.next431.lcssa = phi i64 [ %i.er, %middle.block641 ], [ %indvars.iv.next431, %scalar.ph619 ]
  %.lcssa503 = phi ptr [ %i.et, %middle.block641 ], [ %i.fq, %scalar.ph619 ]
  %i.lp = trunc nuw nsw i64 %indvars.iv.next431.lcssa to i32
  br label %.thread

.thread.loopexit406:                              ; preds = %scalar.ph579
  %i.lq = trunc nuw nsw i64 %indvars.iv.next428 to i32
  br label %.thread

.thread.loopexit407:                              ; preds = %scalar.ph
  %i.lr = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit407, %.thread.loopexit406, %.thread.loopexit405, %.thread.loopexit404, %.thread.loopexit, %.preheader323, %.preheader321, %._crit_edge476, %.preheader318, %.preheader317, %bb.b, %bb.c, %._crit_edge
  %.6292 = phi ptr [ %i.an, %._crit_edge ], [ %i.m, %bb.c ], [ %.lcssa503, %.thread.loopexit405 ], [ %i.m, %bb.b ], [ %i.ko, %.thread.loopexit406 ], [ %.lcssa501, %.thread.loopexit ], [ %.lcssa502, %.thread.loopexit404 ], [ %i.m, %.preheader317 ], [ %i.m, %.preheader318 ], [ %i.m, %._crit_edge476 ], [ %i.m, %.preheader321 ], [ %i.m, %.preheader323 ], [ %i.lm, %.thread.loopexit407 ] ; 7 uses
  %.7 = phi i32 [ %.0281.lcssa, %._crit_edge ], [ 0, %bb.c ], [ %i.lp, %.thread.loopexit405 ], [ 0, %bb.b ], [ %i.lq, %.thread.loopexit406 ], [ %i.ln, %.thread.loopexit ], [ %i.lo, %.thread.loopexit404 ], [ 0, %.preheader317 ], [ 0, %.preheader318 ], [ 0, %._crit_edge476 ], [ 0, %.preheader321 ], [ 0, %.preheader323 ], [ %i.lr, %.thread.loopexit407 ] ; 5 uses
  %i.ls = icmp slt i32 %.7, %i.n
  br i1 %i.ls, label %.lr.ph367, label %.loopexit

.lr.ph367:                                        ; preds = %.thread
  %.not311357 = icmp slt i32 %i.b, 2
  br i1 %.not311357, label %.lr.ph367.split.us.preheader, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %.lr.ph367
  %i.lt = sext i32 %4 to i64                      ; 4 uses
  %i.lu = zext nneg i32 %.7 to i64
  %i.lv = zext nneg i32 %i.c to i64               ; 2 uses
  %xtraiter = and i64 %i.lv, 1
  %i.lw = and i32 %i.b, 2147483646
  %i.lx = icmp eq i32 %i.lw, 2
  %unroll_iter = and i64 %i.lv, 1073741822
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod928 = trunc i32 %i.c to i1
  br label %.lr.ph362

.lr.ph367.split.us.preheader:                     ; preds = %.lr.ph367
  %i.ly = zext i32 %.7 to i64                     ; 5 uses
  %i.lz = xor i32 %.7, -1
  %i.ma = add i32 %i.n, %i.lz                     ; 2 uses
  %i.mb = zext i32 %i.ma to i64
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  %min.iters.check761 = icmp ult i32 %i.ma, 23
  br i1 %min.iters.check761, label %.lr.ph367.split.us.preheader913, label %vector.memcheck748

vector.memcheck748:                               ; preds = %.lr.ph367.split.us.preheader
  %i.md = shl nuw nsw i64 %i.ly, 2                ; 2 uses
  %scevgep749 = getelementptr i8, ptr %2, i64 %i.md ; 2 uses
  %i.me = xor i32 %.7, -1
  %i.mf = add i32 %i.n, %i.me
  %i.mg = zext i32 %i.mf to i64
  %i.mh = shl nuw nsw i64 %i.mg, 2                ; 2 uses
  %i.mi = getelementptr i8, ptr %2, i64 %i.md
  %i.mj = getelementptr i8, ptr %i.mi, i64 %i.mh
  %scevgep750 = getelementptr i8, ptr %i.mj, i64 4 ; 2 uses
  %i.mk = shl nsw i64 %i.g, 2
  %i.ml = getelementptr i8, ptr %i.f, i64 %i.mk
  %scevgep751 = getelementptr i8, ptr %i.ml, i64 4
  %i.mm = getelementptr i8, ptr %.6292, i64 %i.mh
  %scevgep752 = getelementptr i8, ptr %i.mm, i64 4
  %bound0753 = icmp ult ptr %scevgep749, %scevgep751
  %bound1754 = icmp ult ptr %i.h, %scevgep750
  %found.conflict755 = and i1 %bound0753, %bound1754
  %bound0756 = icmp ult ptr %scevgep749, %scevgep752
  %bound1757 = icmp ult ptr %.6292, %scevgep750
  %found.conflict758 = and i1 %bound0756, %bound1757
  %conflict.rdx759 = or i1 %found.conflict755, %found.conflict758
  br i1 %conflict.rdx759, label %.lr.ph367.split.us.preheader913, label %vector.ph762

vector.ph762:                                     ; preds = %vector.memcheck748
  %n.vec763 = and i64 %i.mc, 8589934584           ; 4 uses
  %i.mn = add nuw nsw i64 %n.vec763, %i.ly
  %i.mo = shl nuw nsw i64 %n.vec763, 2
  %i.mp = getelementptr i8, ptr %.6292, i64 %i.mo
  %i.mq = load float, ptr %i.h, align 4, !tbaa !240, !alias.scope !984
  %broadcast.splatinsert768 = insertelement <4 x float> poison, float %i.mq, i64 0
  %broadcast.splat769 = shufflevector <4 x float> %broadcast.splatinsert768, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.ly
  br label %vector.body764

vector.body764:                                   ; preds = %vector.body764, %vector.ph762
  %index765 = phi i64 [ 0, %vector.ph762 ], [ %index.next770, %vector.body764 ] ; 3 uses
  %i.mr = shl i64 %index765, 2
  %next.gep766 = getelementptr i8, ptr %.6292, i64 %i.mr ; 2 uses
  %i.ms = getelementptr i8, ptr %next.gep766, i64 16
  %wide.load = load <4 x float>, ptr %next.gep766, align 4, !tbaa !240, !alias.scope !985
  %wide.load767 = load <4 x float>, ptr %i.ms, align 4, !tbaa !240, !alias.scope !985
  %i.mt = fmul <4 x float> %broadcast.splat769, %wide.load
  %i.mu = fmul <4 x float> %broadcast.splat769, %wide.load767
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index765 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x float> %i.mt, ptr %gep, align 4, !tbaa !240, !alias.scope !986, !noalias !987
  store <4 x float> %i.mu, ptr %i.mv, align 4, !tbaa !240, !alias.scope !986, !noalias !987
  %index.next770 = add nuw i64 %index765, 8       ; 2 uses
  %i.mw = icmp eq i64 %index.next770, %n.vec763
  br i1 %i.mw, label %middle.block771, label %vector.body764, !llvm.loop !926

middle.block771:                                  ; preds = %vector.body764
  %cmp.n772 = icmp eq i64 %i.mc, %n.vec763
  br i1 %cmp.n772, label %.loopexit, label %.lr.ph367.split.us.preheader913

.lr.ph367.split.us.preheader913:                  ; preds = %vector.memcheck748, %.lr.ph367.split.us.preheader, %middle.block771
  %indvars.iv452.ph = phi i64 [ %i.ly, %vector.memcheck748 ], [ %i.ly, %.lr.ph367.split.us.preheader ], [ %i.mn, %middle.block771 ]
  %.7293365.us.ph = phi ptr [ %.6292, %vector.memcheck748 ], [ %.6292, %.lr.ph367.split.us.preheader ], [ %i.mp, %middle.block771 ]
  br label %.lr.ph367.split.us

.lr.ph367.split.us:                               ; preds = %.lr.ph367.split.us.preheader913, %.lr.ph367.split.us
  %indvars.iv452 = phi i64 [ %indvars.iv.next453, %.lr.ph367.split.us ], [ %indvars.iv452.ph, %.lr.ph367.split.us.preheader913 ] ; 2 uses
  %.7293365.us = phi ptr [ %i.nb, %.lr.ph367.split.us ], [ %.7293365.us.ph, %.lr.ph367.split.us.preheader913 ] ; 2 uses
  %i.mx = load float, ptr %i.h, align 4, !tbaa !240
  %i.my = load float, ptr %.7293365.us, align 4, !tbaa !240
  %i.mz = fmul float %i.mx, %i.my
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv452
  store float %i.mz, ptr %i.na, align 4, !tbaa !240
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.7293365.us, i64 4
  %i.nc = trunc nuw i64 %indvars.iv.next453 to i32
  %i.nd = icmp sgt i32 %i.n, %i.nc
  br i1 %i.nd, label %.lr.ph367.split.us, label %.loopexit, !llvm.loop !927

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %._crit_edge363
  %indvars.iv449 = phi i64 [ %i.lu, %.lr.ph362.preheader ], [ %indvars.iv.next450, %._crit_edge363 ] ; 2 uses
  %.7293365 = phi ptr [ %.6292, %.lr.ph362.preheader ], [ %i.ok, %._crit_edge363 ] ; 8 uses
  %i.ne = load float, ptr %i.h, align 4, !tbaa !240
  %i.nf = load float, ptr %.7293365, align 4, !tbaa !240
  %i.ng = fmul float %i.ne, %i.nf                 ; 2 uses
  br i1 %i.lx, label %.epil.preheader, label %.lr.ph362.new

.lr.ph362.new:                                    ; preds = %.lr.ph362, %.lr.ph362.new
  %indvars.iv444 = phi i64 [ %indvars.iv.next445.1, %.lr.ph362.new ], [ 1, %.lr.ph362 ] ; 3 uses
  %indvars.iv442 = phi i64 [ %indvars.iv.next443.1, %.lr.ph362.new ], [ %i.lt, %.lr.ph362 ] ; 3 uses
  %.0280360 = phi float [ %i.nz, %.lr.ph362.new ], [ %i.ng, %.lr.ph362 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph362.new ], [ 0, %.lr.ph362 ]
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv444
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !240
  %i.nj = getelementptr inbounds [4 x i8], ptr %.7293365, i64 %indvars.iv442
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !240
  %i.nl = sub nsw i64 0, %indvars.iv442
  %i.nm = getelementptr inbounds [4 x i8], ptr %.7293365, i64 %i.nl
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !240
  %i.no = fadd float %i.nk, %i.nn
  %i.np = call float @llvm.fmuladd.f32(float %i.ni, float %i.no, float %.0280360)
  %indvars.iv.next443 = add nsw i64 %indvars.iv442, %i.lt ; 3 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv444
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !240
  %i.nt = getelementptr inbounds [4 x i8], ptr %.7293365, i64 %indvars.iv.next443
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !240
  %i.nv = sub nsw i64 0, %indvars.iv.next443
  %i.nw = getelementptr inbounds [4 x i8], ptr %.7293365, i64 %i.nv
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !240
  %i.ny = fadd float %i.nu, %i.nx
  %i.nz = call float @llvm.fmuladd.f32(float %i.ns, float %i.ny, float %i.np) ; 3 uses
  %indvars.iv.next445.1 = add nuw nsw i64 %indvars.iv444, 2 ; 2 uses
  %indvars.iv.next443.1 = add nsw i64 %indvars.iv.next443, %i.lt ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge363.unr-lcssa, label %.lr.ph362.new, !llvm.loop !928

._crit_edge363.unr-lcssa:                         ; preds = %.lr.ph362.new
  br i1 %lcmp.mod.not, label %._crit_edge363, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge363.unr-lcssa, %.lr.ph362
  %indvars.iv444.epil.init = phi i64 [ 1, %.lr.ph362 ], [ %indvars.iv.next445.1, %._crit_edge363.unr-lcssa ]
  %indvars.iv442.epil.init = phi i64 [ %i.lt, %.lr.ph362 ], [ %indvars.iv.next443.1, %._crit_edge363.unr-lcssa ] ; 2 uses
  %.0280360.epil.init = phi float [ %i.ng, %.lr.ph362 ], [ %i.nz, %._crit_edge363.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod928)
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv444.epil.init
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !240
  %i.oc = getelementptr inbounds [4 x i8], ptr %.7293365, i64 %indvars.iv442.epil.init
  %i.od = load float, ptr %i.oc, align 4, !tbaa !240
  %i.oe = sub nsw i64 0, %indvars.iv442.epil.init
  %i.of = getelementptr inbounds [4 x i8], ptr %.7293365, i64 %i.oe
  %i.og = load float, ptr %i.of, align 4, !tbaa !240
  %i.oh = fadd float %i.od, %i.og
  %i.oi = call float @llvm.fmuladd.f32(float %i.ob, float %i.oh, float %.0280360.epil.init)
  br label %._crit_edge363

._crit_edge363:                                   ; preds = %._crit_edge363.unr-lcssa, %.epil.preheader
  %.lcssa916 = phi float [ %i.nz, %._crit_edge363.unr-lcssa ], [ %i.oi, %.epil.preheader ]
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv449
  store float %.lcssa916, ptr %i.oj, align 4, !tbaa !240
end_hunk_0
