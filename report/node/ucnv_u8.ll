inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.hw = sub nsw i64 %indvars.iv390.ph, %wide.trip.count393
  %i.hx = icmp ugt i64 %i.hw, -8
  br i1 %i.hx, label %._crit_edge331, label %vec.epilog.scalar.ph611

bb.ak:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.hy = zext nneg i8 %.1209 to i32
  %.neg253 = sub nsw i32 %i.hy, %.lcssa
  %i.hz = sext i32 %.neg253 to i64
  %i.ia = getelementptr inbounds i8, ptr %.2.lcssa, i64 %i.hz ; 2 uses
  %i.ib = icmp slt i8 %.1209, %.2221.lcssa
  br i1 %i.ib, label %iter.check576, label %._crit_edge326

iter.check576:                                    ; preds = %bb.aa, %bb.ad, %bb.ak
  %i.ic = phi ptr [ %i.ia, %bb.ak ], [ %.0194296, %bb.ad ], [ %.0194296, %bb.aa ] ; 7 uses
  %.1197425434450 = phi ptr [ %.1197, %bb.ak ], [ %.0196295, %bb.ad ], [ %.0196295, %bb.aa ] ; 4 uses
  %.1209423435448 = phi i8 [ %.1209, %bb.ak ], [ 0, %bb.ad ], [ 0, %bb.aa ]
  %.2221.lcssa436447 = phi i8 [ %.2221.lcssa, %bb.ak ], [ 1, %bb.ad ], [ 1, %bb.aa ] ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 7 uses
  %i.ie = zext i8 %.1209423435448 to i64          ; 8 uses
  %wide.trip.count388 = zext nneg i8 %.2221.lcssa436447 to i64 ; 4 uses
  %i.if = sub nsw i64 %wide.trip.count388, %i.ie  ; 7 uses
  %min.iters.check560 = icmp ult i64 %i.if, 8
  br i1 %min.iters.check560, label %vec.epilog.scalar.ph577.preheader, label %vector.memcheck558

vector.memcheck558:                               ; preds = %iter.check576
  %i.ig = ptrtoaddr ptr %i.ic to i64
  %i.ih = add i64 %i.c, %i.ie
  %i.ii = sub i64 %i.ih, %i.ig
  %i.ij = add i64 %i.ii, 64
  %diff.check559 = icmp ult i64 %i.ij, 31
  br i1 %diff.check559, label %vec.epilog.scalar.ph577.preheader, label %vector.main.loop.iter.check561

vector.main.loop.iter.check561:                   ; preds = %vector.memcheck558
  %min.iters.check562 = icmp ult i64 %i.if, 32
  br i1 %min.iters.check562, label %vec.epilog.ph580, label %vector.ph563

vector.ph563:                                     ; preds = %vector.main.loop.iter.check561
  %n.mod.vf564 = and i64 %i.if, 24
  %n.vec565 = and i64 %i.if, -32                  ; 5 uses
  %i.ik = add nsw i64 %n.vec565, %i.ie
  %i.il = getelementptr i8, ptr %i.ic, i64 %n.vec565 ; 2 uses
  %invariant.gep765 = getelementptr i8, ptr %i.id, i64 %i.ie
  br label %vector.body566

vector.body566:                                   ; preds = %vector.body566, %vector.ph563
  %index567 = phi i64 [ 0, %vector.ph563 ], [ %index.next571, %vector.body566 ] ; 3 uses
  %next.gep568 = getelementptr i8, ptr %i.ic, i64 %index567 ; 2 uses
  %i.im = getelementptr i8, ptr %next.gep568, i64 16
  %wide.load569 = load <16 x i8>, ptr %next.gep568, align 1
  %wide.load570 = load <16 x i8>, ptr %i.im, align 1
  %gep766 = getelementptr i8, ptr %invariant.gep765, i64 %index567 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %gep766, i64 16
  store <16 x i8> %wide.load569, ptr %gep766, align 1
  store <16 x i8> %wide.load570, ptr %i.in, align 1
  %index.next571 = add nuw i64 %index567, 32      ; 2 uses
  %i.io = icmp eq i64 %index.next571, %n.vec565
  br i1 %i.io, label %middle.block572, label %vector.body566, !llvm.loop !31

middle.block572:                                  ; preds = %vector.body566
  %cmp.n573 = icmp eq i64 %i.if, %n.vec565
  br i1 %cmp.n573, label %._crit_edge326, label %vec.epilog.iter.check578

vec.epilog.iter.check578:                         ; preds = %middle.block572
  %min.epilog.iters.check579 = icmp eq i64 %n.mod.vf564, 0
  br i1 %min.epilog.iters.check579, label %vec.epilog.scalar.ph577.preheader, label %vec.epilog.ph580, !prof !23

vec.epilog.ph580:                                 ; preds = %vector.main.loop.iter.check561, %vec.epilog.iter.check578
  %vec.epilog.resume.val574 = phi i64 [ %n.vec565, %vec.epilog.iter.check578 ], [ 0, %vector.main.loop.iter.check561 ]
  %n.vec582 = and i64 %i.if, -8                   ; 4 uses
  %i.ip = add nsw i64 %n.vec582, %i.ie
  %i.iq = getelementptr i8, ptr %i.ic, i64 %n.vec582 ; 2 uses
  %invariant.gep767 = getelementptr i8, ptr %i.id, i64 %i.ie
  br label %vec.epilog.vector.body583

vec.epilog.vector.body583:                        ; preds = %vec.epilog.vector.body583, %vec.epilog.ph580
  %index584 = phi i64 [ %vec.epilog.resume.val574, %vec.epilog.ph580 ], [ %index.next587, %vec.epilog.vector.body583 ] ; 3 uses
  %next.gep585 = getelementptr i8, ptr %i.ic, i64 %index584
  %wide.load586 = load <8 x i8>, ptr %next.gep585, align 1
  %gep768 = getelementptr i8, ptr %invariant.gep767, i64 %index584
  store <8 x i8> %wide.load586, ptr %gep768, align 1
  %index.next587 = add nuw i64 %index584, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next587, %n.vec582
  br i1 %i.ir, label %vec.epilog.middle.block588, label %vec.epilog.vector.body583, !llvm.loop !32

vec.epilog.middle.block588:                       ; preds = %vec.epilog.vector.body583
  %cmp.n589 = icmp eq i64 %i.if, %n.vec582
  br i1 %cmp.n589, label %._crit_edge326, label %vec.epilog.scalar.ph577.preheader

vec.epilog.scalar.ph577.preheader:                ; preds = %vector.memcheck558, %iter.check576, %vec.epilog.iter.check578, %vec.epilog.middle.block588
  %indvars.iv385.ph = phi i64 [ %i.ie, %iter.check576 ], [ %i.ie, %vector.memcheck558 ], [ %i.ik, %vec.epilog.iter.check578 ], [ %i.ip, %vec.epilog.middle.block588 ] ; 4 uses
  %.4323.ph = phi ptr [ %i.ic, %iter.check576 ], [ %i.ic, %vector.memcheck558 ], [ %i.il, %vec.epilog.iter.check578 ], [ %i.iq, %vec.epilog.middle.block588 ] ; 2 uses
  %i.is = sub nsw i64 %wide.trip.count388, %indvars.iv385.ph
  %xtraiter707 = and i64 %i.is, 3                 ; 2 uses
  %lcmp.mod708.not = icmp eq i64 %xtraiter707, 0
  br i1 %lcmp.mod708.not, label %vec.epilog.scalar.ph577.prol.loopexit, label %vec.epilog.scalar.ph577.prol

vec.epilog.scalar.ph577.prol:                     ; preds = %vec.epilog.scalar.ph577.preheader, %vec.epilog.scalar.ph577.prol
  %indvars.iv385.prol = phi i64 [ %indvars.iv.next386.prol, %vec.epilog.scalar.ph577.prol ], [ %indvars.iv385.ph, %vec.epilog.scalar.ph577.preheader ] ; 2 uses
  %.4323.prol = phi ptr [ %i.it, %vec.epilog.scalar.ph577.prol ], [ %.4323.ph, %vec.epilog.scalar.ph577.preheader ] ; 2 uses
  %prol.iter709 = phi i64 [ %prol.iter709.next, %vec.epilog.scalar.ph577.prol ], [ 0, %vec.epilog.scalar.ph577.preheader ]
  %i.it = getelementptr inbounds nuw i8, ptr %.4323.prol, i64 1 ; 3 uses
  %i.iu = load i8, ptr %.4323.prol, align 1
  %indvars.iv.next386.prol = add nuw nsw i64 %indvars.iv385.prol, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.id, i64 %indvars.iv385.prol
  store i8 %i.iu, ptr %i.iv, align 1
  %prol.iter709.next = add i64 %prol.iter709, 1   ; 2 uses
  %prol.iter709.cmp.not = icmp eq i64 %prol.iter709.next, %xtraiter707
  br i1 %prol.iter709.cmp.not, label %vec.epilog.scalar.ph577.prol.loopexit, label %vec.epilog.scalar.ph577.prol, !llvm.loop !33

vec.epilog.scalar.ph577.prol.loopexit:            ; preds = %vec.epilog.scalar.ph577.prol, %vec.epilog.scalar.ph577.preheader
  %.lcssa676.unr = phi ptr [ poison, %vec.epilog.scalar.ph577.preheader ], [ %i.it, %vec.epilog.scalar.ph577.prol ]
  %indvars.iv385.unr = phi i64 [ %indvars.iv385.ph, %vec.epilog.scalar.ph577.preheader ], [ %indvars.iv.next386.prol, %vec.epilog.scalar.ph577.prol ]
  %.4323.unr = phi ptr [ %.4323.ph, %vec.epilog.scalar.ph577.preheader ], [ %i.it, %vec.epilog.scalar.ph577.prol ]
  %i.iw = sub nsw i64 %indvars.iv385.ph, %wide.trip.count388
  %i.ix = icmp ugt i64 %i.iw, -4
  br i1 %i.ix, label %._crit_edge326, label %vec.epilog.scalar.ph577

vec.epilog.scalar.ph577:                          ; preds = %vec.epilog.scalar.ph577.prol.loopexit, %vec.epilog.scalar.ph577
  %indvars.iv385 = phi i64 [ %indvars.iv.next386.3, %vec.epilog.scalar.ph577 ], [ %indvars.iv385.unr, %vec.epilog.scalar.ph577.prol.loopexit ] ; 5 uses
  %.4323 = phi ptr [ %i.jj, %vec.epilog.scalar.ph577 ], [ %.4323.unr, %vec.epilog.scalar.ph577.prol.loopexit ] ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.4323, i64 1
  %i.iz = load i8, ptr %.4323, align 1
  %i.ja = getelementptr inbounds nuw i8, ptr %i.id, i64 %indvars.iv385
  store i8 %i.iz, ptr %i.ja, align 1
  %i.jb = getelementptr inbounds nuw i8, ptr %.4323, i64 2
  %i.jc = load i8, ptr %i.iy, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %i.id, i64 %indvars.iv385
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  store i8 %i.jc, ptr %i.je, align 1
  %i.jf = getelementptr inbounds nuw i8, ptr %.4323, i64 3
  %i.jg = load i8, ptr %i.jb, align 1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.id, i64 %indvars.iv385
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  store i8 %i.jg, ptr %i.ji, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %.4323, i64 4 ; 2 uses
  %i.jk = load i8, ptr %i.jf, align 1
  %indvars.iv.next386.3 = add nuw nsw i64 %indvars.iv385, 4 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.id, i64 %indvars.iv385
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 3
  store i8 %i.jk, ptr %i.jm, align 1
  %exitcond389.not.3 = icmp eq i64 %indvars.iv.next386.3, %wide.trip.count388
  br i1 %exitcond389.not.3, label %._crit_edge326, label %vec.epilog.scalar.ph577, !llvm.loop !34

._crit_edge326:                                   ; preds = %vec.epilog.scalar.ph577.prol.loopexit, %vec.epilog.scalar.ph577, %middle.block572, %vec.epilog.middle.block588, %bb.ak
  %.1197425434449 = phi ptr [ %.1197, %bb.ak ], [ %.1197425434450, %middle.block572 ], [ %.1197425434450, %vec.epilog.middle.block588 ], [ %.1197425434450, %vec.epilog.scalar.ph577 ], [ %.1197425434450, %vec.epilog.scalar.ph577.prol.loopexit ]
  %.2221.lcssa436446 = phi i8 [ %.2221.lcssa, %bb.ak ], [ %.2221.lcssa436447, %middle.block572 ], [ %.2221.lcssa436447, %vec.epilog.middle.block588 ], [ %.2221.lcssa436447, %vec.epilog.scalar.ph577 ], [ %.2221.lcssa436447, %vec.epilog.scalar.ph577.prol.loopexit ]
  %.4.lcssa = phi ptr [ %i.ia, %bb.ak ], [ %i.il, %middle.block572 ], [ %i.iq, %vec.epilog.middle.block588 ], [ %.lcssa676.unr, %vec.epilog.scalar.ph577.prol.loopexit ], [ %i.jj, %vec.epilog.scalar.ph577 ]
  store i8 %.2221.lcssa436446, ptr %i.p, align 8
  store ptr %.4.lcssa, ptr %i.d, align 8
  store ptr %.1197425434449, ptr %i.h, align 8
  store i32 12, ptr %2, align 4
  br label %bb.bb

vec.epilog.scalar.ph611:                          ; preds = %vec.epilog.scalar.ph611.prol.loopexit, %vec.epilog.scalar.ph611
  %indvars.iv390 = phi i64 [ %indvars.iv.next391.7, %vec.epilog.scalar.ph611 ], [ %indvars.iv390.unr, %vec.epilog.scalar.ph611.prol.loopexit ] ; 9 uses
  %.2198328 = phi ptr [ %i.kr, %vec.epilog.scalar.ph611 ], [ %.2198328.unr, %vec.epilog.scalar.ph611.prol.loopexit ] ; 9 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv390
  %i.jo = load i8, ptr %i.jn, align 1
  %i.jp = getelementptr inbounds nuw i8, ptr %.2198328, i64 1
  store i8 %i.jo, ptr %.2198328, align 1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv390
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 1
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = getelementptr inbounds nuw i8, ptr %.2198328, i64 2
  store i8 %i.js, ptr %i.jp, align 1
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv390
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 2
  %i.jw = load i8, ptr %i.jv, align 1
  %i.jx = getelementptr inbounds nuw i8, ptr %.2198328, i64 3
  store i8 %i.jw, ptr %i.jt, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv390
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 3
  %i.ka = load i8, ptr %i.jz, align 1
  %i.kb = getelementptr inbounds nuw i8, ptr %.2198328, i64 4
  store i8 %i.ka, ptr %i.jx, align 1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv390
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.ke = load i8, ptr %i.kd, align 1
  %i.kf = getelementptr inbounds nuw i8, ptr %.2198328, i64 5
  store i8 %i.ke, ptr %i.kb, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv390
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 5
  %i.ki = load i8, ptr %i.kh, align 1
  %i.kj = getelementptr inbounds nuw i8, ptr %.2198328, i64 6
  store i8 %i.ki, ptr %i.kf, align 1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv390
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 6
  %i.km = load i8, ptr %i.kl, align 1
  %i.kn = getelementptr inbounds nuw i8, ptr %.2198328, i64 7
  store i8 %i.km, ptr %i.kj, align 1
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv390
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 7
  %i.kq = load i8, ptr %i.kp, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %.2198328, i64 8 ; 2 uses
  store i8 %i.kq, ptr %i.kn, align 1
  %indvars.iv.next391.7 = add nuw nsw i64 %indvars.iv390, 8 ; 2 uses
  %exitcond394.not.7 = icmp eq i64 %indvars.iv.next391.7, %wide.trip.count393
  br i1 %exitcond394.not.7, label %._crit_edge331, label %vec.epilog.scalar.ph611, !llvm.loop !35

._crit_edge331:                                   ; preds = %vec.epilog.scalar.ph611.prol.loopexit, %vec.epilog.scalar.ph611, %middle.block607, %vec.epilog.middle.block622, %.preheader
  %.2198.lcssa = phi ptr [ %.1197, %.preheader ], [ %i.hp, %vec.epilog.middle.block622 ], [ %i.go, %middle.block607 ], [ %.lcssa675.unr, %vec.epilog.scalar.ph611.prol.loopexit ], [ %i.kr, %vec.epilog.scalar.ph611 ] ; 8 uses
  %.0.lcssa = phi i8 [ 0, %.preheader ], [ %.1209, %vec.epilog.middle.block622 ], [ %.1209, %middle.block607 ], [ %.1209, %vec.epilog.scalar.ph611 ], [ %.1209, %vec.epilog.scalar.ph611.prol.loopexit ] ; 5 uses
  %.2198.lcssa627 = ptrtoaddr ptr %.2198.lcssa to i64
  %i.ks = zext nneg i8 %.1209 to i32
  %.neg249 = sub nsw i32 %i.ks, %.1218
  %i.kt = sext i32 %.neg249 to i64
  %i.ku = getelementptr inbounds i8, ptr %.2.lcssa, i64 %i.kt ; 7 uses
  %i.kv = icmp slt i8 %.0.lcssa, %.2221.lcssa
  br i1 %i.kv, label %iter.check648, label %._crit_edge339

iter.check648:                                    ; preds = %._crit_edge331
  %i.kw = xor i8 %.1209, -1
  %i.kx = add i8 %.2221.lcssa, %i.kw              ; 3 uses
  %i.ky = zext i8 %i.kx to i64
  %i.kz = add nuw nsw i64 %i.ky, 1                ; 5 uses
  %min.iters.check630 = icmp ult i8 %i.kx, 3
  br i1 %min.iters.check630, label %.lr.ph338.preheader, label %vector.memcheck626

vector.memcheck626:                               ; preds = %iter.check648
  %i.la = sext i32 %.1218 to i64
  %i.lb = add i64 %.2198.lcssa627, %i.la
  %i.lc = zext nneg i8 %.1209 to i64
  %i.ld = add i64 %.2.lcssa628, %i.lc
  %i.le = sub i64 %i.ld, %i.lb
  %diff.check629 = icmp ugt i64 %i.le, -32
  br i1 %diff.check629, label %.lr.ph338.preheader, label %vector.main.loop.iter.check631

vector.main.loop.iter.check631:                   ; preds = %vector.memcheck626
  %min.iters.check632 = icmp ult i8 %i.kx, 31
  br i1 %min.iters.check632, label %vec.epilog.ph652, label %vector.ph633

vector.ph633:                                     ; preds = %vector.main.loop.iter.check631
  %n.mod.vf634 = and i64 %i.kz, 28
  %n.vec635 = and i64 %i.kz, 480                  ; 6 uses
  %i.lf = trunc i64 %n.vec635 to i8
  %i.lg = add i8 %.0.lcssa, %i.lf
  %i.lh = getelementptr i8, ptr %i.ku, i64 %n.vec635 ; 2 uses
  %i.li = getelementptr i8, ptr %.2198.lcssa, i64 %n.vec635 ; 2 uses
  br label %vector.body636

vector.body636:                                   ; preds = %vector.body636, %vector.ph633
  %index637 = phi i64 [ 0, %vector.ph633 ], [ %index.next642, %vector.body636 ] ; 3 uses
  %next.gep638 = getelementptr i8, ptr %i.ku, i64 %index637 ; 2 uses
  %next.gep639 = getelementptr i8, ptr %.2198.lcssa, i64 %index637 ; 2 uses
  %i.lj = getelementptr i8, ptr %next.gep638, i64 16
  %wide.load640.a = load <16 x i8>, ptr %next.gep638, align 1
  %wide.load641.a = load <16 x i8>, ptr %i.lj, align 1
  %i.lk = getelementptr i8, ptr %next.gep639, i64 16
  store <16 x i8> %wide.load640.a, ptr %next.gep639, align 1
  store <16 x i8> %wide.load641.a, ptr %i.lk, align 1
  %index.next642 = add nuw i64 %index637, 32      ; 2 uses
  %i.ll = icmp eq i64 %index.next642, %n.vec635
  br i1 %i.ll, label %middle.block643, label %vector.body636, !llvm.loop !36

middle.block643:                                  ; preds = %vector.body636
  %cmp.n644 = icmp eq i64 %i.kz, %n.vec635
  br i1 %cmp.n644, label %._crit_edge339, label %vec.epilog.iter.check650

vec.epilog.iter.check650:                         ; preds = %middle.block643
  %min.epilog.iters.check651 = icmp eq i64 %n.mod.vf634, 0
  br i1 %min.epilog.iters.check651, label %.lr.ph338.preheader, label %vec.epilog.ph652, !prof !17

vec.epilog.ph652:                                 ; preds = %vector.main.loop.iter.check631, %vec.epilog.iter.check650
  %vec.epilog.resume.val645 = phi i64 [ %n.vec635, %vec.epilog.iter.check650 ], [ 0, %vector.main.loop.iter.check631 ]
  %n.vec654 = and i64 %i.kz, 508                  ; 5 uses
  %i.lm = trunc i64 %n.vec654 to i8
  %i.ln = add i8 %.0.lcssa, %i.lm
  %i.lo = getelementptr i8, ptr %i.ku, i64 %n.vec654 ; 2 uses
  %i.lp = getelementptr i8, ptr %.2198.lcssa, i64 %n.vec654 ; 2 uses
  br label %vec.epilog.vector.body655

vec.epilog.vector.body655:                        ; preds = %vec.epilog.vector.body655, %vec.epilog.ph652
  %index656 = phi i64 [ %vec.epilog.resume.val645, %vec.epilog.ph652 ], [ %index.next660, %vec.epilog.vector.body655 ] ; 3 uses
  %next.gep657 = getelementptr i8, ptr %i.ku, i64 %index656
  %next.gep658 = getelementptr i8, ptr %.2198.lcssa, i64 %index656
  %wide.load659 = load <4 x i8>, ptr %next.gep657, align 1
  store <4 x i8> %wide.load659, ptr %next.gep658, align 1
  %index.next660 = add nuw i64 %index656, 4       ; 2 uses
  %i.lq = icmp eq i64 %index.next660, %n.vec654
  br i1 %i.lq, label %vec.epilog.middle.block661, label %vec.epilog.vector.body655, !llvm.loop !37

vec.epilog.middle.block661:                       ; preds = %vec.epilog.vector.body655
  %cmp.n662 = icmp eq i64 %i.kz, %n.vec654
  br i1 %cmp.n662, label %._crit_edge339, label %.lr.ph338.preheader

.lr.ph338.preheader:                              ; preds = %vector.memcheck626, %iter.check648, %vec.epilog.iter.check650, %vec.epilog.middle.block661
  %.1336.ph = phi i8 [ %.0.lcssa, %iter.check648 ], [ %.0.lcssa, %vector.memcheck626 ], [ %i.lg, %vec.epilog.iter.check650 ], [ %i.ln, %vec.epilog.middle.block661 ] ; 4 uses
  %.5335.ph = phi ptr [ %i.ku, %iter.check648 ], [ %i.ku, %vector.memcheck626 ], [ %i.lh, %vec.epilog.iter.check650 ], [ %i.lo, %vec.epilog.middle.block661 ] ; 2 uses
  %.3199334.ph = phi ptr [ %.2198.lcssa, %iter.check648 ], [ %.2198.lcssa, %vector.memcheck626 ], [ %i.li, %vec.epilog.iter.check650 ], [ %i.lp, %vec.epilog.middle.block661 ] ; 2 uses
  %i.lr = sub i8 %.2221.lcssa, %.1336.ph
  %xtraiter713 = and i8 %i.lr, 7                  ; 2 uses
  %lcmp.mod714.not = icmp eq i8 %xtraiter713, 0
  br i1 %lcmp.mod714.not, label %.lr.ph338.prol.loopexit, label %.lr.ph338.prol

.lr.ph338.prol:                                   ; preds = %.lr.ph338.preheader, %.lr.ph338.prol
  %.1336.prol = phi i8 [ %i.lv, %.lr.ph338.prol ], [ %.1336.ph, %.lr.ph338.preheader ]
  %.5335.prol = phi ptr [ %i.ls, %.lr.ph338.prol ], [ %.5335.ph, %.lr.ph338.preheader ] ; 2 uses
  %.3199334.prol = phi ptr [ %i.lu, %.lr.ph338.prol ], [ %.3199334.ph, %.lr.ph338.preheader ] ; 2 uses
  %prol.iter715 = phi i8 [ %prol.iter715.next, %.lr.ph338.prol ], [ 0, %.lr.ph338.preheader ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.5335.prol, i64 1 ; 3 uses
  %i.lt = load i8, ptr %.5335.prol, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %.3199334.prol, i64 1 ; 3 uses
  store i8 %i.lt, ptr %.3199334.prol, align 1
  %i.lv = add nuw nsw i8 %.1336.prol, 1           ; 2 uses
  %prol.iter715.next = add i8 %prol.iter715, 1    ; 2 uses
  %prol.iter715.cmp.not = icmp eq i8 %prol.iter715.next, %xtraiter713
  br i1 %prol.iter715.cmp.not, label %.lr.ph338.prol.loopexit, label %.lr.ph338.prol, !llvm.loop !38

.lr.ph338.prol.loopexit:                          ; preds = %.lr.ph338.prol, %.lr.ph338.preheader
  %.lcssa674.unr = phi ptr [ poison, %.lr.ph338.preheader ], [ %i.ls, %.lr.ph338.prol ]
  %.lcssa673.unr = phi ptr [ poison, %.lr.ph338.preheader ], [ %i.lu, %.lr.ph338.prol ]
  %.1336.unr = phi i8 [ %.1336.ph, %.lr.ph338.preheader ], [ %i.lv, %.lr.ph338.prol ]
  %.5335.unr = phi ptr [ %.5335.ph, %.lr.ph338.preheader ], [ %i.ls, %.lr.ph338.prol ]
  %.3199334.unr = phi ptr [ %.3199334.ph, %.lr.ph338.preheader ], [ %i.lu, %.lr.ph338.prol ]
  %i.lw = sub i8 %.1336.ph, %.2221.lcssa
  %i.lx = icmp ugt i8 %i.lw, -8
  br i1 %i.lx, label %._crit_edge339, label %.lr.ph338

.lr.ph338:                                        ; preds = %.lr.ph338.prol.loopexit, %.lr.ph338
  %.1336 = phi i8 [ %i.mw, %.lr.ph338 ], [ %.1336.unr, %.lr.ph338.prol.loopexit ]
  %.5335 = phi ptr [ %i.mt, %.lr.ph338 ], [ %.5335.unr, %.lr.ph338.prol.loopexit ] ; 9 uses
  %.3199334 = phi ptr [ %i.mv, %.lr.ph338 ], [ %.3199334.unr, %.lr.ph338.prol.loopexit ] ; 9 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.5335, i64 1
  %i.lz = load i8, ptr %.5335, align 1
  %i.ma = getelementptr inbounds nuw i8, ptr %.3199334, i64 1
  store i8 %i.lz, ptr %.3199334, align 1
  %i.mb = getelementptr inbounds nuw i8, ptr %.5335, i64 2
  %i.mc = load i8, ptr %i.ly, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %.3199334, i64 2
  store i8 %i.mc, ptr %i.ma, align 1
  %i.me = getelementptr inbounds nuw i8, ptr %.5335, i64 3
  %i.mf = load i8, ptr %i.mb, align 1
  %i.mg = getelementptr inbounds nuw i8, ptr %.3199334, i64 3
  store i8 %i.mf, ptr %i.md, align 1
  %i.mh = getelementptr inbounds nuw i8, ptr %.5335, i64 4
  %i.mi = load i8, ptr %i.me, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %.3199334, i64 4
  store i8 %i.mi, ptr %i.mg, align 1
  %i.mk = getelementptr inbounds nuw i8, ptr %.5335, i64 5
  %i.ml = load i8, ptr %i.mh, align 1
  %i.mm = getelementptr inbounds nuw i8, ptr %.3199334, i64 5
  store i8 %i.ml, ptr %i.mj, align 1
  %i.mn = getelementptr inbounds nuw i8, ptr %.5335, i64 6
  %i.mo = load i8, ptr %i.mk, align 1
  %i.mp = getelementptr inbounds nuw i8, ptr %.3199334, i64 6
  store i8 %i.mo, ptr %i.mm, align 1
  %i.mq = getelementptr inbounds nuw i8, ptr %.5335, i64 7
  %i.mr = load i8, ptr %i.mn, align 1
  %i.ms = getelementptr inbounds nuw i8, ptr %.3199334, i64 7
  store i8 %i.mr, ptr %i.mp, align 1
  %i.mt = getelementptr inbounds nuw i8, ptr %.5335, i64 8 ; 2 uses
  %i.mu = load i8, ptr %i.mq, align 1
  %i.mv = getelementptr inbounds nuw i8, ptr %.3199334, i64 8 ; 2 uses
  store i8 %i.mu, ptr %i.ms, align 1
  %i.mw = add nuw nsw i8 %.1336, 8                ; 2 uses
  %exitcond395.not.7 = icmp eq i8 %i.mw, %.2221.lcssa
  br i1 %exitcond395.not.7, label %._crit_edge339, label %.lr.ph338, !llvm.loop !39

._crit_edge339:                                   ; preds = %.lr.ph338.prol.loopexit, %.lr.ph338, %middle.block643, %vec.epilog.middle.block661, %._crit_edge331
  %.3199.lcssa = phi ptr [ %.2198.lcssa, %._crit_edge331 ], [ %i.lp, %vec.epilog.middle.block661 ], [ %i.li, %middle.block643 ], [ %.lcssa673.unr, %.lr.ph338.prol.loopexit ], [ %i.mv, %.lr.ph338 ]
  %.5.lcssa = phi ptr [ %i.ku, %._crit_edge331 ], [ %i.lo, %vec.epilog.middle.block661 ], [ %i.lh, %middle.block643 ], [ %.lcssa674.unr, %.lr.ph338.prol.loopexit ], [ %i.mt, %.lr.ph338 ]
  %i.mx = sub nsw i32 %.3203, %.1218
  br label %.preheader261, !llvm.loop !20

._crit_edge:                                      ; preds = %.backedge, %.preheader261
  %.0196.lcssa = phi ptr [ %.0196.ph, %.preheader261 ], [ %.0196.be, %.backedge ] ; 2 uses
  %.0194.lcssa = phi ptr [ %.0194.ph, %.preheader261 ], [ %.0194.be, %.backedge ] ; 7 uses
  %i.my = load i32, ptr %2, align 4
  %i.mz = icmp slt i32 %i.my, 1
  %i.na = icmp ult ptr %.0194.lcssa, %i.g
  %or.cond256 = select i1 %i.mz, i1 %i.na, i1 false
  br i1 %or.cond256, label %bb.al, label %bb.ba

bb.al:                                            ; preds = %._crit_edge
  %i.nb = load ptr, ptr %i.j, align 8
  %i.nc = icmp eq ptr %.0196.lcssa, %i.nb
  br i1 %i.nc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 15, ptr %2, align 4
  br label %bb.ba

bb.an:                                            ; preds = %bb.al
  %i.nd = load i8, ptr %.0194.lcssa, align 1      ; 6 uses
  %i.ne = icmp sgt i8 %i.nd, -1
  br i1 %i.ne, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nf = add nsw i8 %i.nd, 62
  %i.ng = icmp ult i8 %i.nf, 51
  br i1 %i.ng, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.nh = icmp samesign ugt i8 %i.nd, -33
  %i.ni = zext i1 %i.nh to i8
  %i.nj = icmp samesign ugt i8 %i.nd, -17
  %i.nk = select i1 %i.nj, i8 3, i8 2
  %i.nl = add nuw nsw i8 %i.nk, %i.ni
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.nm = phi i8 [ 1, %bb.an ], [ %i.nl, %bb.ap ], [ 0, %bb.ao ] ; 4 uses
  %i.nn = zext nneg i8 %i.nm to i64
  %i.no = ptrtoint ptr %.0194.lcssa to i64
  %i.np = sub i64 %i.x, %i.no
  %i.nq = icmp slt i64 %i.np, %i.nn
  br i1 %i.nq, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %bb.aq
  %i.nr = zext i8 %i.nd to i32                    ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  store i8 %i.nd, ptr %i.ns, align 1
  %i.nt = getelementptr inbounds nuw i8, ptr %.0194.lcssa, i64 1 ; 3 uses
  %i.nu = icmp eq ptr %i.nt, %i.g
  br i1 %i.nu, label %._crit_edge301, label %.lr.ph300

.lr.ph300:                                        ; preds = %bb.ar
  %i.nv = icmp samesign ult i8 %i.nm, 3
  %i.nw = icmp eq i8 %i.nm, 3
  br label %bb.as

._crit_edge301:                                   ; preds = %bb.ay, %bb.ar
  %.3216.lcssa = phi i32 [ %i.nr, %bb.ar ], [ %i.ox, %bb.ay ]
  %.lcssa268 = phi i8 [ 1, %bb.ar ], [ %i.oy, %bb.ay ]
  %.lcssa266 = phi ptr [ %i.nt, %bb.ar ], [ %i.pb, %bb.ay ]
  %i.nx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %.3216.lcssa, ptr %i.nx, align 8
  store i8 %.lcssa268, ptr %i.p, align 8
  %i.ny = zext nneg i8 %i.nm to i32
  %i.nz = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.ny, ptr %i.nz, align 4
  br label %bb.ba

bb.as:                                            ; preds = %.lr.ph300, %bb.ay
  %i.oa = phi ptr [ %i.nt, %.lr.ph300 ], [ %i.pb, %bb.ay ] ; 3 uses
  %i.ob = phi i8 [ 1, %.lr.ph300 ], [ %i.oy, %bb.ay ] ; 4 uses
  %.3216298 = phi i32 [ %i.nr, %.lr.ph300 ], [ %i.ox, %bb.ay ] ; 3 uses
  %i.oc = load i8, ptr %i.oa, align 1             ; 5 uses
  %i.od = icmp sgt i8 %i.ob, 1
  %or.cond.i257 = or i1 %i.nv, %i.od
  br i1 %or.cond.i257, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.oe = icmp slt i8 %i.oc, -64
  %i.of = zext i1 %i.oe to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit259

bb.au:                                            ; preds = %bb.as
  br i1 %i.nw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.og = and i32 %.3216298, 15
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr @.str, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1
  %i.ok = lshr i8 %i.oc, 5
  %i.ol = shl nuw i8 1, %i.ok
  %i.om = and i8 %i.oj, %i.ol
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit259

bb.aw:                                            ; preds = %bb.au
  %i.on = lshr i8 %i.oc, 4
  %i.oo = zext nneg i8 %i.on to i64
  %i.op = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1
  %i.or = and i32 %.3216298, 7
  %i.os = shl nuw nsw i32 1, %i.or
  %i.ot = trunc nuw i32 %i.os to i8
  %i.ou = and i8 %i.oq, %i.ot
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit259

_ZN6icu_784UTF812isValidTrailEihii.exit259:       ; preds = %bb.at, %bb.av, %bb.aw
  %.0.i258 = phi i8 [ %i.of, %bb.at ], [ %i.om, %bb.av ], [ %i.ou, %bb.aw ]
  %.not251 = icmp eq i8 %.0.i258, 0
  br i1 %.not251, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit259
  store i8 %i.ob, ptr %i.p, align 8
  store i32 12, ptr %2, align 4
  br label %bb.ba

bb.ay:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit259
  %i.ov = shl i32 %.3216298, 6
  %i.ow = zext i8 %i.oc to i32
  %i.ox = add nsw i32 %i.ov, %i.ow                ; 2 uses
  %i.oy = add i8 %i.ob, 1                         ; 2 uses
  %i.oz = sext i8 %i.ob to i64
  %i.pa = getelementptr inbounds i8, ptr %i.ns, i64 %i.oz
  store i8 %i.oc, ptr %i.pa, align 1
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oa, i64 1 ; 3 uses
  %i.pc = icmp eq ptr %i.pb, %i.g
  br i1 %i.pc, label %._crit_edge301, label %bb.as, !llvm.loop !40

bb.az:                                            ; preds = %bb.aq
  store i32 -127, ptr %2, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.am, %._crit_edge301, %bb.ax, %bb.az, %._crit_edge
  %.7 = phi ptr [ %.0194.lcssa, %bb.am ], [ %.lcssa266, %._crit_edge301 ], [ %i.oa, %bb.ax ], [ %.0194.lcssa, %bb.az ], [ %.0194.lcssa, %._crit_edge ]
  store ptr %.7, ptr %i.d, align 8
  store ptr %.0196.lcssa, ptr %i.h, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge326, %._crit_edge320, %bb.e
  ret void
}

declare void @ucnv_getCompleteUnicodeSet_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"branch_weights", i32 4, i32 28}
!18 = distinct !{!18, !6, !15, !16}
!19 = distinct !{!19, !6, !15}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6, !15, !16}
!23 = !{!"branch_weights", i32 8, i32 24}
!24 = distinct !{!24, !6, !15, !16}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !6, !15}
!28 = !{!"branch_weights", i32 4, i32 12}
!29 = distinct !{!29, !6, !15, !16}
!30 = distinct !{!30, !26}
!31 = distinct !{!31, !6, !15, !16}
!32 = distinct !{!32, !6, !15, !16}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !6, !15}
!35 = distinct !{!35, !6, !15}
!36 = distinct !{!36, !6, !15, !16}
!37 = distinct !{!37, !6, !15, !16}
!38 = distinct !{!38, !26}
!39 = distinct !{!39, !6, !15}
!40 = distinct !{!40, !6}
end_hunk_0
