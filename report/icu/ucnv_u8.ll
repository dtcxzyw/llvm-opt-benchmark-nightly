Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv_u8?download=true
inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.ih = sub nsw i64 %wide.trip.count394, %i.ig  ; 7 uses
  %min.iters.check564 = icmp ult i64 %i.ih, 8
  br i1 %min.iters.check564, label %vec.epilog.scalar.ph580.preheader, label %vector.memcheck562

vector.memcheck562:                               ; preds = %iter.check579
  %i.ii = ptrtoaddr ptr %i.ie to i64
  %i.ij = add i64 %i.c, %i.ig
  %i.ik = sub i64 %i.ij, %i.ii
  %i.il = add i64 %i.ik, 64
  %diff.check563 = icmp ult i64 %i.il, 31
  br i1 %diff.check563, label %vec.epilog.scalar.ph580.preheader, label %vector.main.loop.iter.check565

vector.main.loop.iter.check565:                   ; preds = %vector.memcheck562
  %min.iters.check566 = icmp ult i64 %i.ih, 32
  br i1 %min.iters.check566, label %vec.epilog.ph583, label %vector.ph567

vector.ph567:                                     ; preds = %vector.main.loop.iter.check565
  %i.im = and i64 %i.ih, 24
  %n.vec568 = and i64 %i.ih, -32                  ; 5 uses
  %i.in = add nsw i64 %n.vec568, %i.ig
  %i.io = getelementptr i8, ptr %i.ie, i64 %n.vec568 ; 2 uses
  %invariant.gep759 = getelementptr i8, ptr %i.if, i64 %i.ig
  br label %vector.body569

vector.body569:                                   ; preds = %vector.ph567, %vector.body569
  %index570 = phi i64 [ 0, %vector.ph567 ], [ %index.next574, %vector.body569 ] ; 3 uses
  %next.gep571 = getelementptr i8, ptr %i.ie, i64 %index570 ; 2 uses
  %i.ip = getelementptr i8, ptr %next.gep571, i64 16
  %wide.load572 = load <16 x i8>, ptr %next.gep571, align 1, !tbaa !27
  %wide.load573 = load <16 x i8>, ptr %i.ip, align 1, !tbaa !27
  %gep760 = getelementptr i8, ptr %invariant.gep759, i64 %index570 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %gep760, i64 16
  store <16 x i8> %wide.load572, ptr %gep760, align 1, !tbaa !27
  store <16 x i8> %wide.load573, ptr %i.iq, align 1, !tbaa !27
  %index.next574 = add nuw i64 %index570, 32      ; 2 uses
  %i.ir = icmp eq i64 %index.next574, %n.vec568
  br i1 %i.ir, label %middle.block575, label %vector.body569, !llvm.loop !67

middle.block575:                                  ; preds = %vector.body569
  %cmp.n576 = icmp eq i64 %i.ih, %n.vec568
  br i1 %cmp.n576, label %._crit_edge326, label %vec.epilog.iter.check581

vec.epilog.iter.check581:                         ; preds = %middle.block575
  %min.epilog.iters.check582 = icmp eq i64 %i.im, 0
  br i1 %min.epilog.iters.check582, label %vec.epilog.scalar.ph580.preheader, label %vec.epilog.ph583, !prof !76

vec.epilog.ph583:                                 ; preds = %vector.main.loop.iter.check565, %vec.epilog.iter.check581
  %vec.epilog.resume.val577 = phi i64 [ %n.vec568, %vec.epilog.iter.check581 ], [ 0, %vector.main.loop.iter.check565 ]
  %n.vec584 = and i64 %i.ih, -8                   ; 4 uses
  %i.is = add nsw i64 %n.vec584, %i.ig
  %i.it = getelementptr i8, ptr %i.ie, i64 %n.vec584 ; 2 uses
  %invariant.gep761 = getelementptr i8, ptr %i.if, i64 %i.ig
  br label %vec.epilog.vector.body585

vec.epilog.vector.body585:                        ; preds = %vec.epilog.vector.body585, %vec.epilog.ph583
  %index586 = phi i64 [ %vec.epilog.resume.val577, %vec.epilog.ph583 ], [ %index.next589, %vec.epilog.vector.body585 ] ; 3 uses
  %next.gep587 = getelementptr i8, ptr %i.ie, i64 %index586
  %wide.load588 = load <8 x i8>, ptr %next.gep587, align 1, !tbaa !27
  %gep762 = getelementptr i8, ptr %invariant.gep761, i64 %index586
  store <8 x i8> %wide.load588, ptr %gep762, align 1, !tbaa !27
  %index.next589 = add nuw i64 %index586, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next589, %n.vec584
  br i1 %i.iu, label %vec.epilog.middle.block590, label %vec.epilog.vector.body585, !llvm.loop !68

vec.epilog.middle.block590:                       ; preds = %vec.epilog.vector.body585
  %cmp.n591 = icmp eq i64 %i.ih, %n.vec584
  br i1 %cmp.n591, label %._crit_edge326, label %vec.epilog.scalar.ph580.preheader

vec.epilog.scalar.ph580.preheader:                ; preds = %iter.check579, %vector.memcheck562, %vec.epilog.iter.check581, %vec.epilog.middle.block590
  %indvars.iv390.ph = phi i64 [ %i.ig, %iter.check579 ], [ %i.ig, %vector.memcheck562 ], [ %i.in, %vec.epilog.iter.check581 ], [ %i.is, %vec.epilog.middle.block590 ] ; 4 uses
  %.4322.ph = phi ptr [ %i.ie, %iter.check579 ], [ %i.ie, %vector.memcheck562 ], [ %i.io, %vec.epilog.iter.check581 ], [ %i.it, %vec.epilog.middle.block590 ] ; 2 uses
  %i.iv = sub nsw i64 %wide.trip.count394, %indvars.iv390.ph
  %xtraiter703 = and i64 %i.iv, 3                 ; 2 uses
  %lcmp.mod704.not = icmp eq i64 %xtraiter703, 0
  br i1 %lcmp.mod704.not, label %vec.epilog.scalar.ph580.prol.loopexit, label %vec.epilog.scalar.ph580.prol

vec.epilog.scalar.ph580.prol:                     ; preds = %vec.epilog.scalar.ph580.preheader, %vec.epilog.scalar.ph580.prol
  %indvars.iv390.prol = phi i64 [ %indvars.iv.next391.prol, %vec.epilog.scalar.ph580.prol ], [ %indvars.iv390.ph, %vec.epilog.scalar.ph580.preheader ] ; 2 uses
  %.4322.prol = phi ptr [ %i.iw, %vec.epilog.scalar.ph580.prol ], [ %.4322.ph, %vec.epilog.scalar.ph580.preheader ] ; 2 uses
  %prol.iter705 = phi i64 [ %prol.iter705.next, %vec.epilog.scalar.ph580.prol ], [ 0, %vec.epilog.scalar.ph580.preheader ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.4322.prol, i64 1 ; 3 uses
  %i.ix = load i8, ptr %.4322.prol, align 1, !tbaa !27
  %indvars.iv.next391.prol = add nuw nsw i64 %indvars.iv390.prol, 1 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.if, i64 %indvars.iv390.prol
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !27
  %prol.iter705.next = add i64 %prol.iter705, 1   ; 2 uses
  %prol.iter705.cmp.not = icmp eq i64 %prol.iter705.next, %xtraiter703
  br i1 %prol.iter705.cmp.not, label %vec.epilog.scalar.ph580.prol.loopexit, label %vec.epilog.scalar.ph580.prol, !llvm.loop !69

vec.epilog.scalar.ph580.prol.loopexit:            ; preds = %vec.epilog.scalar.ph580.prol, %vec.epilog.scalar.ph580.preheader
  %.lcssa674.unr = phi ptr [ poison, %vec.epilog.scalar.ph580.preheader ], [ %i.iw, %vec.epilog.scalar.ph580.prol ]
  %indvars.iv390.unr = phi i64 [ %indvars.iv390.ph, %vec.epilog.scalar.ph580.preheader ], [ %indvars.iv.next391.prol, %vec.epilog.scalar.ph580.prol ]
  %.4322.unr = phi ptr [ %.4322.ph, %vec.epilog.scalar.ph580.preheader ], [ %i.iw, %vec.epilog.scalar.ph580.prol ]
  %i.iz = sub nsw i64 %indvars.iv390.ph, %wide.trip.count394
  %i.ja = icmp ugt i64 %i.iz, -4
  br i1 %i.ja, label %._crit_edge326, label %vec.epilog.scalar.ph580

vec.epilog.scalar.ph580:                          ; preds = %vec.epilog.scalar.ph580.prol.loopexit, %vec.epilog.scalar.ph580
  %indvars.iv390 = phi i64 [ %indvars.iv.next391.3, %vec.epilog.scalar.ph580 ], [ %indvars.iv390.unr, %vec.epilog.scalar.ph580.prol.loopexit ] ; 5 uses
  %.4322 = phi ptr [ %i.jm, %vec.epilog.scalar.ph580 ], [ %.4322.unr, %vec.epilog.scalar.ph580.prol.loopexit ] ; 5 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.4322, i64 1
  %i.jc = load i8, ptr %.4322, align 1, !tbaa !27
  %i.jd = getelementptr inbounds nuw i8, ptr %i.if, i64 %indvars.iv390
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !27
  %i.je = getelementptr inbounds nuw i8, ptr %.4322, i64 2
  %i.jf = load i8, ptr %i.jb, align 1, !tbaa !27
  %i.jg = getelementptr inbounds nuw i8, ptr %i.if, i64 %indvars.iv390
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 1
  store i8 %i.jf, ptr %i.jh, align 1, !tbaa !27
  %i.ji = getelementptr inbounds nuw i8, ptr %.4322, i64 3
  %i.jj = load i8, ptr %i.je, align 1, !tbaa !27
  %i.jk = getelementptr inbounds nuw i8, ptr %i.if, i64 %indvars.iv390
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  store i8 %i.jj, ptr %i.jl, align 1, !tbaa !27
  %i.jm = getelementptr inbounds nuw i8, ptr %.4322, i64 4 ; 2 uses
  %i.jn = load i8, ptr %i.ji, align 1, !tbaa !27
  %indvars.iv.next391.3 = add nuw nsw i64 %indvars.iv390, 4 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.if, i64 %indvars.iv390
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 3
  store i8 %i.jn, ptr %i.jp, align 1, !tbaa !27
  %exitcond395.not.3 = icmp eq i64 %indvars.iv.next391.3, %wide.trip.count394
  br i1 %exitcond395.not.3, label %._crit_edge326, label %vec.epilog.scalar.ph580, !llvm.loop !70

._crit_edge326:                                   ; preds = %vec.epilog.scalar.ph580.prol.loopexit, %vec.epilog.scalar.ph580, %middle.block575, %vec.epilog.middle.block590, %bb.ak
  %.1216428441454 = phi ptr [ %.1216, %bb.ak ], [ %.1216428441455, %middle.block575 ], [ %.1216428441455, %vec.epilog.middle.block590 ], [ %.1216428441455, %vec.epilog.scalar.ph580 ], [ %.1216428441455, %vec.epilog.scalar.ph580.prol.loopexit ]
  %.2205.lcssa443452 = phi i8 [ %.2205.lcssa, %bb.ak ], [ %.2205.lcssa443453, %middle.block575 ], [ %.2205.lcssa443453, %vec.epilog.middle.block590 ], [ %.2205.lcssa443453, %vec.epilog.scalar.ph580 ], [ %.2205.lcssa443453, %vec.epilog.scalar.ph580.prol.loopexit ]
  %.4.lcssa = phi ptr [ %i.ic, %bb.ak ], [ %i.io, %middle.block575 ], [ %i.it, %vec.epilog.middle.block590 ], [ %.lcssa674.unr, %vec.epilog.scalar.ph580.prol.loopexit ], [ %i.jm, %vec.epilog.scalar.ph580 ]
  store i8 %.2205.lcssa443452, ptr %i.p, align 8, !tbaa !39
  store ptr %.4.lcssa, ptr %i.d, align 8, !tbaa !35
  store ptr %.1216428441454, ptr %i.h, align 8, !tbaa !18
  store i32 12, ptr %2, align 4, !tbaa !30
  br label %bb.bb

vec.epilog.scalar.ph612:                          ; preds = %vec.epilog.scalar.ph612.prol.loopexit, %vec.epilog.scalar.ph612
  %indvars.iv396 = phi i64 [ %indvars.iv.next397.7, %vec.epilog.scalar.ph612 ], [ %indvars.iv396.unr, %vec.epilog.scalar.ph612.prol.loopexit ] ; 9 uses
  %.2217328 = phi ptr [ %i.ku, %vec.epilog.scalar.ph612 ], [ %.2217328.unr, %vec.epilog.scalar.ph612.prol.loopexit ] ; 9 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv396
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !27
  %i.js = getelementptr inbounds nuw i8, ptr %.2217328, i64 1
  store i8 %i.jr, ptr %.2217328, align 1, !tbaa !27
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv396
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !27
  %i.jw = getelementptr inbounds nuw i8, ptr %.2217328, i64 2
  store i8 %i.jv, ptr %i.js, align 1, !tbaa !27
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv396
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !27
  %i.ka = getelementptr inbounds nuw i8, ptr %.2217328, i64 3
  store i8 %i.jz, ptr %i.jw, align 1, !tbaa !27
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv396
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 3
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !27
  %i.ke = getelementptr inbounds nuw i8, ptr %.2217328, i64 4
  store i8 %i.kd, ptr %i.ka, align 1, !tbaa !27
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv396
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !27
  %i.ki = getelementptr inbounds nuw i8, ptr %.2217328, i64 5
  store i8 %i.kh, ptr %i.ke, align 1, !tbaa !27
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv396
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 5
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !27
  %i.km = getelementptr inbounds nuw i8, ptr %.2217328, i64 6
  store i8 %i.kl, ptr %i.ki, align 1, !tbaa !27
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv396
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 6
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !27
  %i.kq = getelementptr inbounds nuw i8, ptr %.2217328, i64 7
  store i8 %i.kp, ptr %i.km, align 1, !tbaa !27
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv396
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 7
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !27
  %i.ku = getelementptr inbounds nuw i8, ptr %.2217328, i64 8 ; 2 uses
  store i8 %i.kt, ptr %i.kq, align 1, !tbaa !27
  %indvars.iv.next397.7 = add nuw nsw i64 %indvars.iv396, 8 ; 2 uses
  %exitcond401.not.7 = icmp eq i64 %indvars.iv.next397.7, %wide.trip.count400
  br i1 %exitcond401.not.7, label %._crit_edge331, label %vec.epilog.scalar.ph612, !llvm.loop !71

._crit_edge331:                                   ; preds = %vec.epilog.scalar.ph612.prol.loopexit, %vec.epilog.scalar.ph612, %middle.block608, %vec.epilog.middle.block622, %.preheader
  %.2217.lcssa = phi ptr [ %.1216, %.preheader ], [ %i.hr, %vec.epilog.middle.block622 ], [ %i.gq, %middle.block608 ], [ %.lcssa673.unr, %vec.epilog.scalar.ph612.prol.loopexit ], [ %i.ku, %vec.epilog.scalar.ph612 ] ; 23 uses
  %.0.lcssa = phi i8 [ 0, %.preheader ], [ %.1208, %vec.epilog.middle.block622 ], [ %.1208, %middle.block608 ], [ %.1208, %vec.epilog.scalar.ph612 ], [ %.1208, %vec.epilog.scalar.ph612.prol.loopexit ] ; 5 uses
  %.2217.lcssa627 = ptrtoaddr ptr %.2217.lcssa to i64
  %i.kv = zext nneg i8 %.1208 to i32
  %.neg249 = sub nsw i32 %i.kv, %.1202
  %i.kw = sext i32 %.neg249 to i64
  %i.kx = getelementptr inbounds i8, ptr %.2221.lcssa, i64 %i.kw ; 22 uses
  %i.ky = icmp slt i8 %.0.lcssa, %.2205.lcssa
  br i1 %i.ky, label %iter.check647, label %._crit_edge339

iter.check647:                                    ; preds = %._crit_edge331
  %i.kz = xor i8 %.1208, -1
  %i.la = add i8 %.2205.lcssa, %i.kz              ; 3 uses
  %i.lb = zext i8 %i.la to i64
  %i.lc = add nuw nsw i64 %i.lb, 1                ; 5 uses
  %min.iters.check630 = icmp ult i8 %i.la, 3
  br i1 %min.iters.check630, label %.lr.ph338.preheader, label %vector.memcheck626

vector.memcheck626:                               ; preds = %iter.check647
  %i.ld = sext i32 %.1202 to i64
  %3 = add i64 %.2217.lcssa627, %i.ld
  %4 = zext nneg i8 %.1208 to i64
  %i.le = add i64 %.2221.lcssa628, %4
  %i.lf = sub i64 %i.le, %3
  %diff.check629 = icmp ugt i64 %i.lf, -32
  br i1 %diff.check629, label %.lr.ph338.preheader, label %vector.main.loop.iter.check631

vector.main.loop.iter.check631:                   ; preds = %vector.memcheck626
  %min.iters.check632 = icmp ult i8 %i.la, 31
  br i1 %min.iters.check632, label %vec.epilog.ph651, label %vector.ph633

vector.ph633:                                     ; preds = %vector.main.loop.iter.check631
  %i.lg = and i64 %i.lc, 28
  %n.vec634 = and i64 %i.lc, 480                  ; 12 uses
  %i.lh = trunc i64 %n.vec634 to i8
  %i.li = add i8 %.0.lcssa, %i.lh
  %i.lj = getelementptr i8, ptr %.2217.lcssa, i64 %n.vec634 ; 2 uses
  %i.lk = getelementptr i8, ptr %i.kx, i64 %n.vec634 ; 2 uses
  %i.ll = getelementptr i8, ptr %i.kx, i64 16
  %wide.load639 = load <16 x i8>, ptr %i.kx, align 1, !tbaa !27
  %wide.load640 = load <16 x i8>, ptr %i.ll, align 1, !tbaa !27
  %i.lm = getelementptr i8, ptr %.2217.lcssa, i64 16
  store <16 x i8> %wide.load639, ptr %.2217.lcssa, align 1, !tbaa !27
  store <16 x i8> %wide.load640, ptr %i.lm, align 1, !tbaa !27
  %i.ln = icmp eq i64 %n.vec634, 32
  br i1 %i.ln, label %middle.block642, label %vector.body635.1

vector.body635.1:                                 ; preds = %vector.ph633
  %next.gep637.1 = getelementptr i8, ptr %.2217.lcssa, i64 32
  %next.gep638.1 = getelementptr i8, ptr %i.kx, i64 32
  %i.lo = getelementptr i8, ptr %i.kx, i64 48
  %wide.load639.1 = load <16 x i8>, ptr %next.gep638.1, align 1, !tbaa !27
  %wide.load640.1 = load <16 x i8>, ptr %i.lo, align 1, !tbaa !27
  %i.lp = getelementptr i8, ptr %.2217.lcssa, i64 48
  store <16 x i8> %wide.load639.1, ptr %next.gep637.1, align 1, !tbaa !27
  store <16 x i8> %wide.load640.1, ptr %i.lp, align 1, !tbaa !27
  %i.lq = icmp eq i64 %n.vec634, 64
  br i1 %i.lq, label %middle.block642, label %vector.body635.2

vector.body635.2:                                 ; preds = %vector.body635.1
  %next.gep637.2 = getelementptr i8, ptr %.2217.lcssa, i64 64
  %next.gep638.2 = getelementptr i8, ptr %i.kx, i64 64
  %i.lr = getelementptr i8, ptr %i.kx, i64 80
  %wide.load639.2 = load <16 x i8>, ptr %next.gep638.2, align 1, !tbaa !27
  %wide.load640.2 = load <16 x i8>, ptr %i.lr, align 1, !tbaa !27
  %i.ls = getelementptr i8, ptr %.2217.lcssa, i64 80
  store <16 x i8> %wide.load639.2, ptr %next.gep637.2, align 1, !tbaa !27
  store <16 x i8> %wide.load640.2, ptr %i.ls, align 1, !tbaa !27
  %i.lt = icmp eq i64 %n.vec634, 96
  br i1 %i.lt, label %middle.block642, label %vector.body635.3

vector.body635.3:                                 ; preds = %vector.body635.2
  %next.gep637.3 = getelementptr i8, ptr %.2217.lcssa, i64 96
  %next.gep638.3 = getelementptr i8, ptr %i.kx, i64 96
  %i.lu = getelementptr i8, ptr %i.kx, i64 112
  %wide.load639.3 = load <16 x i8>, ptr %next.gep638.3, align 1, !tbaa !27
  %wide.load640.3 = load <16 x i8>, ptr %i.lu, align 1, !tbaa !27
  %i.lv = getelementptr i8, ptr %.2217.lcssa, i64 112
  store <16 x i8> %wide.load639.3, ptr %next.gep637.3, align 1, !tbaa !27
  store <16 x i8> %wide.load640.3, ptr %i.lv, align 1, !tbaa !27
  %i.lw = icmp eq i64 %n.vec634, 128
  br i1 %i.lw, label %middle.block642, label %vector.body635.4

vector.body635.4:                                 ; preds = %vector.body635.3
  %next.gep637.4 = getelementptr i8, ptr %.2217.lcssa, i64 128
  %next.gep638.4 = getelementptr i8, ptr %i.kx, i64 128
  %i.lx = getelementptr i8, ptr %i.kx, i64 144
  %wide.load639.4 = load <16 x i8>, ptr %next.gep638.4, align 1, !tbaa !27
  %wide.load640.4 = load <16 x i8>, ptr %i.lx, align 1, !tbaa !27
  %i.ly = getelementptr i8, ptr %.2217.lcssa, i64 144
  store <16 x i8> %wide.load639.4, ptr %next.gep637.4, align 1, !tbaa !27
  store <16 x i8> %wide.load640.4, ptr %i.ly, align 1, !tbaa !27
  %i.lz = icmp eq i64 %n.vec634, 160
  br i1 %i.lz, label %middle.block642, label %vector.body635.5

vector.body635.5:                                 ; preds = %vector.body635.4
  %next.gep637.5 = getelementptr i8, ptr %.2217.lcssa, i64 160
  %next.gep638.5 = getelementptr i8, ptr %i.kx, i64 160
  %i.ma = getelementptr i8, ptr %i.kx, i64 176
  %wide.load639.5 = load <16 x i8>, ptr %next.gep638.5, align 1, !tbaa !27
  %wide.load640.5 = load <16 x i8>, ptr %i.ma, align 1, !tbaa !27
  %i.mb = getelementptr i8, ptr %.2217.lcssa, i64 176
  store <16 x i8> %wide.load639.5, ptr %next.gep637.5, align 1, !tbaa !27
  store <16 x i8> %wide.load640.5, ptr %i.mb, align 1, !tbaa !27
  %i.mc = icmp eq i64 %n.vec634, 192
  br i1 %i.mc, label %middle.block642, label %vector.body635.6

vector.body635.6:                                 ; preds = %vector.body635.5
  %next.gep637.6 = getelementptr i8, ptr %.2217.lcssa, i64 192
  %next.gep638.6 = getelementptr i8, ptr %i.kx, i64 192
  %i.md = getelementptr i8, ptr %i.kx, i64 208
  %wide.load639.6 = load <16 x i8>, ptr %next.gep638.6, align 1, !tbaa !27
  %wide.load640.6 = load <16 x i8>, ptr %i.md, align 1, !tbaa !27
  %i.me = getelementptr i8, ptr %.2217.lcssa, i64 208
  store <16 x i8> %wide.load639.6, ptr %next.gep637.6, align 1, !tbaa !27
  store <16 x i8> %wide.load640.6, ptr %i.me, align 1, !tbaa !27
  %i.mf = icmp eq i64 %n.vec634, 224
  br i1 %i.mf, label %middle.block642, label %vector.body635.7

vector.body635.7:                                 ; preds = %vector.body635.6
  %next.gep637.7 = getelementptr i8, ptr %.2217.lcssa, i64 224
  %next.gep638.7 = getelementptr i8, ptr %i.kx, i64 224
  %i.mg = getelementptr i8, ptr %i.kx, i64 240
  %wide.load639.7 = load <16 x i8>, ptr %next.gep638.7, align 1, !tbaa !27
  %wide.load640.7 = load <16 x i8>, ptr %i.mg, align 1, !tbaa !27
  %i.mh = getelementptr i8, ptr %.2217.lcssa, i64 240
  store <16 x i8> %wide.load639.7, ptr %next.gep637.7, align 1, !tbaa !27
  store <16 x i8> %wide.load640.7, ptr %i.mh, align 1, !tbaa !27
  br label %middle.block642

middle.block642:                                  ; preds = %vector.body635.7, %vector.body635.6, %vector.body635.5, %vector.body635.4, %vector.body635.3, %vector.body635.2, %vector.body635.1, %vector.ph633
  %cmp.n643 = icmp eq i64 %i.lc, %n.vec634
  br i1 %cmp.n643, label %._crit_edge339, label %vec.epilog.iter.check649

vec.epilog.iter.check649:                         ; preds = %middle.block642
  %min.epilog.iters.check650 = icmp eq i64 %i.lg, 0
  br i1 %min.epilog.iters.check650, label %.lr.ph338.preheader, label %vec.epilog.ph651, !prof !45

vec.epilog.ph651:                                 ; preds = %vector.main.loop.iter.check631, %vec.epilog.iter.check649
  %vec.epilog.resume.val644 = phi i64 [ %n.vec634, %vec.epilog.iter.check649 ], [ 0, %vector.main.loop.iter.check631 ]
  %n.vec652 = and i64 %i.lc, 508                  ; 5 uses
  %i.mi = trunc i64 %n.vec652 to i8
  %i.mj = add i8 %.0.lcssa, %i.mi
  %i.mk = getelementptr i8, ptr %.2217.lcssa, i64 %n.vec652 ; 2 uses
  %i.ml = getelementptr i8, ptr %i.kx, i64 %n.vec652 ; 2 uses
  br label %vec.epilog.vector.body653

vec.epilog.vector.body653:                        ; preds = %vec.epilog.vector.body653, %vec.epilog.ph651
  %index654 = phi i64 [ %vec.epilog.resume.val644, %vec.epilog.ph651 ], [ %index.next658, %vec.epilog.vector.body653 ] ; 3 uses
  %next.gep655 = getelementptr i8, ptr %.2217.lcssa, i64 %index654
  %next.gep656 = getelementptr i8, ptr %i.kx, i64 %index654
  %wide.load657 = load <4 x i8>, ptr %next.gep656, align 1, !tbaa !27
  store <4 x i8> %wide.load657, ptr %next.gep655, align 1, !tbaa !27
  %index.next658 = add nuw i64 %index654, 4       ; 2 uses
  %i.mm = icmp eq i64 %index.next658, %n.vec652
  br i1 %i.mm, label %vec.epilog.middle.block659, label %vec.epilog.vector.body653, !llvm.loop !72

vec.epilog.middle.block659:                       ; preds = %vec.epilog.vector.body653
  %cmp.n660 = icmp eq i64 %i.lc, %n.vec652
  br i1 %cmp.n660, label %._crit_edge339, label %.lr.ph338.preheader

.lr.ph338.preheader:                              ; preds = %iter.check647, %vector.memcheck626, %vec.epilog.iter.check649, %vec.epilog.middle.block659
  %.1336.ph = phi i8 [ %.0.lcssa, %iter.check647 ], [ %.0.lcssa, %vector.memcheck626 ], [ %i.li, %vec.epilog.iter.check649 ], [ %i.mj, %vec.epilog.middle.block659 ] ; 4 uses
  %.3218335.ph = phi ptr [ %.2217.lcssa, %iter.check647 ], [ %.2217.lcssa, %vector.memcheck626 ], [ %i.lj, %vec.epilog.iter.check649 ], [ %i.mk, %vec.epilog.middle.block659 ] ; 2 uses
  %.5334.ph = phi ptr [ %i.kx, %iter.check647 ], [ %i.kx, %vector.memcheck626 ], [ %i.lk, %vec.epilog.iter.check649 ], [ %i.ml, %vec.epilog.middle.block659 ] ; 2 uses
  %i.mn = sub i8 %.2205.lcssa, %.1336.ph
  %xtraiter709 = and i8 %i.mn, 7                  ; 2 uses
  %lcmp.mod710.not = icmp eq i8 %xtraiter709, 0
  br i1 %lcmp.mod710.not, label %.lr.ph338.prol.loopexit, label %.lr.ph338.prol

.lr.ph338.prol:                                   ; preds = %.lr.ph338.preheader, %.lr.ph338.prol
  %.1336.prol = phi i8 [ %i.mr, %.lr.ph338.prol ], [ %.1336.ph, %.lr.ph338.preheader ]
  %.3218335.prol = phi ptr [ %i.mq, %.lr.ph338.prol ], [ %.3218335.ph, %.lr.ph338.preheader ] ; 2 uses
  %.5334.prol = phi ptr [ %i.mo, %.lr.ph338.prol ], [ %.5334.ph, %.lr.ph338.preheader ] ; 2 uses
  %prol.iter711 = phi i8 [ %prol.iter711.next, %.lr.ph338.prol ], [ 0, %.lr.ph338.preheader ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.5334.prol, i64 1 ; 3 uses
  %i.mp = load i8, ptr %.5334.prol, align 1, !tbaa !27
  %i.mq = getelementptr inbounds nuw i8, ptr %.3218335.prol, i64 1 ; 3 uses
  store i8 %i.mp, ptr %.3218335.prol, align 1, !tbaa !27
  %i.mr = add nuw nsw i8 %.1336.prol, 1           ; 2 uses
  %prol.iter711.next = add i8 %prol.iter711, 1    ; 2 uses
  %prol.iter711.cmp.not = icmp eq i8 %prol.iter711.next, %xtraiter709
  br i1 %prol.iter711.cmp.not, label %.lr.ph338.prol.loopexit, label %.lr.ph338.prol, !llvm.loop !73

.lr.ph338.prol.loopexit:                          ; preds = %.lr.ph338.prol, %.lr.ph338.preheader
  %.lcssa672.unr = phi ptr [ poison, %.lr.ph338.preheader ], [ %i.mo, %.lr.ph338.prol ]
  %.lcssa671.unr = phi ptr [ poison, %.lr.ph338.preheader ], [ %i.mq, %.lr.ph338.prol ]
  %.1336.unr = phi i8 [ %.1336.ph, %.lr.ph338.preheader ], [ %i.mr, %.lr.ph338.prol ]
  %.3218335.unr = phi ptr [ %.3218335.ph, %.lr.ph338.preheader ], [ %i.mq, %.lr.ph338.prol ]
  %.5334.unr = phi ptr [ %.5334.ph, %.lr.ph338.preheader ], [ %i.mo, %.lr.ph338.prol ]
  %i.ms = sub i8 %.1336.ph, %.2205.lcssa
  %i.mt = icmp ugt i8 %i.ms, -8
  br i1 %i.mt, label %._crit_edge339, label %.lr.ph338

.lr.ph338:                                        ; preds = %.lr.ph338.prol.loopexit, %.lr.ph338
  %.1336 = phi i8 [ %i.ns, %.lr.ph338 ], [ %.1336.unr, %.lr.ph338.prol.loopexit ]
  %.3218335 = phi ptr [ %i.nr, %.lr.ph338 ], [ %.3218335.unr, %.lr.ph338.prol.loopexit ] ; 9 uses
  %.5334 = phi ptr [ %i.np, %.lr.ph338 ], [ %.5334.unr, %.lr.ph338.prol.loopexit ] ; 9 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.5334, i64 1
  %i.mv = load i8, ptr %.5334, align 1, !tbaa !27
  %i.mw = getelementptr inbounds nuw i8, ptr %.3218335, i64 1
  store i8 %i.mv, ptr %.3218335, align 1, !tbaa !27
  %i.mx = getelementptr inbounds nuw i8, ptr %.5334, i64 2
  %i.my = load i8, ptr %i.mu, align 1, !tbaa !27
  %i.mz = getelementptr inbounds nuw i8, ptr %.3218335, i64 2
  store i8 %i.my, ptr %i.mw, align 1, !tbaa !27
  %i.na = getelementptr inbounds nuw i8, ptr %.5334, i64 3
  %i.nb = load i8, ptr %i.mx, align 1, !tbaa !27
  %i.nc = getelementptr inbounds nuw i8, ptr %.3218335, i64 3
  store i8 %i.nb, ptr %i.mz, align 1, !tbaa !27
  %i.nd = getelementptr inbounds nuw i8, ptr %.5334, i64 4
  %i.ne = load i8, ptr %i.na, align 1, !tbaa !27
  %i.nf = getelementptr inbounds nuw i8, ptr %.3218335, i64 4
  store i8 %i.ne, ptr %i.nc, align 1, !tbaa !27
  %i.ng = getelementptr inbounds nuw i8, ptr %.5334, i64 5
  %i.nh = load i8, ptr %i.nd, align 1, !tbaa !27
  %i.ni = getelementptr inbounds nuw i8, ptr %.3218335, i64 5
  store i8 %i.nh, ptr %i.nf, align 1, !tbaa !27
  %i.nj = getelementptr inbounds nuw i8, ptr %.5334, i64 6
  %i.nk = load i8, ptr %i.ng, align 1, !tbaa !27
  %i.nl = getelementptr inbounds nuw i8, ptr %.3218335, i64 6
  store i8 %i.nk, ptr %i.ni, align 1, !tbaa !27
  %i.nm = getelementptr inbounds nuw i8, ptr %.5334, i64 7
  %i.nn = load i8, ptr %i.nj, align 1, !tbaa !27
end_hunk_0
