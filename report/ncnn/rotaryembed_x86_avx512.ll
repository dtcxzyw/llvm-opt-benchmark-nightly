Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rotaryembed_x86_avx512?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn22RotaryEmbed_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined:bb.a
  %i.dg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float> nofpclass(nan inf) %i.ct, <8 x float> nofpclass(nan inf) %i.cy, <8 x float> nofpclass(nan inf) %i.de)
  %i.dh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float> nofpclass(nan inf) %i.cv, <8 x float> nofpclass(nan inf) %i.cz, <8 x float> nofpclass(nan inf) %i.df)
  store <8 x float> %i.dg, ptr %.1266378, align 1, !tbaa !42
  %i.di = getelementptr inbounds nuw i8, ptr %.1266378, i64 32
  store <8 x float> %i.dh, ptr %i.di, align 1, !tbaa !42
  %i.dj = getelementptr inbounds nuw i8, ptr %.1381, i64 64 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.1266378, i64 64 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.1256380, i64 32 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.1261379, i64 32 ; 2 uses
  %i.dn = add nuw nsw i32 %.1271377, 8            ; 3 uses
  %i.do = or disjoint i32 %i.dn, 7
  %i.dp = load i32, ptr %9, align 4, !tbaa !21
  %i.dq = sdiv i32 %i.dp, 2                       ; 2 uses
  %i.dr = icmp slt i32 %i.do, %i.dq
  br i1 %i.dr, label %.lr.ph382, label %.preheader365, !llvm.loop !61

.preheader364:                                    ; preds = %.lr.ph393, %.preheader365
  %.pre-phi528 = phi i32 [ %.pre-phi527, %.preheader365 ], [ %i.er, %.lr.ph393 ] ; 2 uses
  %.2272.lcssa = phi i32 [ %.1271.lcssa, %.preheader365 ], [ %i.eo, %.lr.ph393 ] ; 3 uses
  %.2267.lcssa = phi ptr [ %.1266.lcssa, %.preheader365 ], [ %i.el, %.lr.ph393 ] ; 2 uses
  %.2262.lcssa = phi ptr [ %.1261.lcssa, %.preheader365 ], [ %i.en, %.lr.ph393 ] ; 2 uses
  %.2257.lcssa = phi ptr [ %.1256.lcssa, %.preheader365 ], [ %i.em, %.lr.ph393 ] ; 2 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader365 ], [ %i.ek, %.lr.ph393 ] ; 2 uses
  %i.ds = or disjoint i32 %.2272.lcssa, 1
  %i.dt = icmp slt i32 %i.ds, %.pre-phi528
  br i1 %i.dt, label %.lr.ph404, label %.preheader362

.lr.ph393:                                        ; preds = %.preheader365, %.lr.ph393
  %.2392 = phi ptr [ %i.ek, %.lr.ph393 ], [ %.1.lcssa, %.preheader365 ] ; 3 uses
  %.2257391 = phi ptr [ %i.em, %.lr.ph393 ], [ %.1256.lcssa, %.preheader365 ] ; 2 uses
  %.2262390 = phi ptr [ %i.en, %.lr.ph393 ], [ %.1261.lcssa, %.preheader365 ] ; 2 uses
  %.2267389 = phi ptr [ %i.el, %.lr.ph393 ], [ %.1266.lcssa, %.preheader365 ] ; 3 uses
  %.2272388 = phi i32 [ %i.eo, %.lr.ph393 ], [ %.1271.lcssa, %.preheader365 ]
  %i.du = load <4 x float>, ptr %.2392, align 1, !tbaa !42 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.2392, i64 16
  %i.dw = load <4 x float>, ptr %i.dv, align 1, !tbaa !42 ; 2 uses
  %i.dx = load <4 x float>, ptr %.2257391, align 1, !tbaa !42 ; 2 uses
  %i.dy = load <4 x float>, ptr %.2262390, align 1, !tbaa !42 ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ea = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.eb = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ec = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.ed = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ee = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ef = fmul fast <4 x float> %i.eb, %i.ed
  %i.eg = fmul fast <4 x float> %i.ec, %i.ee
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.du, <4 x float> nofpclass(nan inf) %i.dz, <4 x float> nofpclass(nan inf) %i.ef)
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.dw, <4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.eg)
  store <4 x float> %i.eh, ptr %.2267389, align 1, !tbaa !42
  %i.ej = getelementptr inbounds nuw i8, ptr %.2267389, i64 16
  store <4 x float> %i.ei, ptr %i.ej, align 1, !tbaa !42
  %i.ek = getelementptr inbounds nuw i8, ptr %.2392, i64 32 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.2267389, i64 32 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.2257391, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.2262390, i64 16 ; 2 uses
  %i.eo = add nuw nsw i32 %.2272388, 4            ; 3 uses
  %i.ep = or disjoint i32 %i.eo, 3
  %i.eq = load i32, ptr %9, align 4, !tbaa !21
  %i.er = sdiv i32 %i.eq, 2                       ; 2 uses
  %i.es = icmp slt i32 %i.ep, %i.er
  br i1 %i.es, label %.lr.ph393, label %.preheader364, !llvm.loop !62

.preheader362:                                    ; preds = %.lr.ph404, %.preheader364
  %.3273.lcssa = phi i32 [ %.2272.lcssa, %.preheader364 ], [ %i.hl, %.lr.ph404 ] ; 7 uses
  %.3268.lcssa = phi ptr [ %.2267.lcssa, %.preheader364 ], [ %i.hi, %.lr.ph404 ] ; 10 uses
  %.3263.lcssa = phi ptr [ %.2262.lcssa, %.preheader364 ], [ %i.hk, %.lr.ph404 ] ; 8 uses
  %.3258.lcssa = phi ptr [ %.2257.lcssa, %.preheader364 ], [ %i.hj, %.lr.ph404 ] ; 8 uses
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader364 ], [ %i.hh, %.lr.ph404 ] ; 8 uses
  %.lcssa = phi i32 [ %.pre-phi528, %.preheader364 ], [ %i.ho, %.lr.ph404 ] ; 6 uses
  %i.et = icmp slt i32 %.3273.lcssa, %.lcssa
  br i1 %i.et, label %iter.check738, label %.loopexit

iter.check738:                                    ; preds = %.preheader362
  %i.eu = xor i32 %.3273.lcssa, -1
  %i.ev = add i32 %.lcssa, %i.eu                  ; 3 uses
  %i.ew = zext i32 %i.ev to i64
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 5 uses
  %min.iters.check716 = icmp ult i32 %i.ev, 3
  br i1 %min.iters.check716, label %.lr.ph416.preheader, label %vector.memcheck700

vector.memcheck700:                               ; preds = %iter.check738
  %scevgep = getelementptr i8, ptr %.3268.lcssa, i64 8
  %i.ey = xor i32 %.3273.lcssa, -1
  %i.ez = add i32 %.lcssa, %i.ey
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  %i.fb = shl nuw nsw i64 %i.fa, 3                ; 2 uses
  %scevgep701 = getelementptr i8, ptr %scevgep, i64 %i.fb ; 3 uses
  %scevgep702 = getelementptr i8, ptr %.3.lcssa, i64 8
  %scevgep703 = getelementptr i8, ptr %scevgep702, i64 %i.fb
  %scevgep704 = getelementptr i8, ptr %.3258.lcssa, i64 4
  %i.fc = shl nuw nsw i64 %i.fa, 2                ; 2 uses
  %scevgep705 = getelementptr i8, ptr %scevgep704, i64 %i.fc
  %scevgep706 = getelementptr i8, ptr %.3263.lcssa, i64 4
  %scevgep707 = getelementptr i8, ptr %scevgep706, i64 %i.fc
  %bound0 = icmp ult ptr %.3268.lcssa, %scevgep703
  %bound1 = icmp ult ptr %.3.lcssa, %scevgep701
  %found.conflict = and i1 %bound0, %bound1
  %bound0708 = icmp ult ptr %.3268.lcssa, %scevgep705
  %bound1709 = icmp ult ptr %.3258.lcssa, %scevgep701
  %found.conflict710 = and i1 %bound0708, %bound1709
  %conflict.rdx711 = or i1 %found.conflict, %found.conflict710
  %bound0712 = icmp ult ptr %.3268.lcssa, %scevgep707
  %bound1713 = icmp ult ptr %.3263.lcssa, %scevgep701
  %found.conflict714 = and i1 %bound0712, %bound1713
  %conflict.rdx715 = or i1 %conflict.rdx711, %found.conflict714
  br i1 %conflict.rdx715, label %.lr.ph416.preheader, label %vector.main.loop.iter.check717

vector.main.loop.iter.check717:                   ; preds = %vector.memcheck700
  %min.iters.check718 = icmp ult i32 %i.ev, 15
  br i1 %min.iters.check718, label %vec.epilog.ph742, label %vector.ph719

vector.ph719:                                     ; preds = %vector.main.loop.iter.check717
  %i.fd = and i64 %i.ex, 12
  %n.vec720 = and i64 %i.ex, 8589934576           ; 6 uses
  %i.fe = shl nuw nsw i64 %n.vec720, 3            ; 2 uses
  %i.ff = getelementptr i8, ptr %.3.lcssa, i64 %i.fe
  %i.fg = shl nuw nsw i64 %n.vec720, 2            ; 2 uses
  %i.fh = getelementptr i8, ptr %.3258.lcssa, i64 %i.fg
  %i.fi = getelementptr i8, ptr %.3263.lcssa, i64 %i.fg
  %i.fj = getelementptr i8, ptr %.3268.lcssa, i64 %i.fe
  %i.fk = trunc i64 %n.vec720 to i32
  %i.fl = add i32 %.3273.lcssa, %i.fk
  br label %vector.body721

vector.body721:                                   ; preds = %vector.ph719, %vector.body721
  %index722 = phi i64 [ 0, %vector.ph719 ], [ %index.next730, %vector.body721 ] ; 3 uses
  %i.fm = shl i64 %index722, 3                    ; 2 uses
  %next.gep723 = getelementptr i8, ptr %.3.lcssa, i64 %i.fm
  %i.fn = shl i64 %index722, 2                    ; 2 uses
  %next.gep724 = getelementptr i8, ptr %.3258.lcssa, i64 %i.fn
  %next.gep725 = getelementptr i8, ptr %.3263.lcssa, i64 %i.fn
  %next.gep726 = getelementptr i8, ptr %.3268.lcssa, i64 %i.fm
  %wide.vec = load <32 x float>, ptr %next.gep723, align 4, !tbaa !82, !alias.scope !83 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %strided.vec727 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %wide.load728 = load <16 x float>, ptr %next.gep724, align 4, !tbaa !82, !alias.scope !84 ; 2 uses
  %wide.load729 = load <16 x float>, ptr %next.gep725, align 4, !tbaa !82, !alias.scope !85 ; 2 uses
  %i.fo = fmul fast <16 x float> %wide.load728, %strided.vec
  %i.fp = fmul fast <16 x float> %wide.load729, %strided.vec727
  %i.fq = fsub fast <16 x float> %i.fo, %i.fp
  %i.fr = fmul fast <16 x float> %wide.load729, %strided.vec
  %i.fs = fmul fast <16 x float> %wide.load728, %strided.vec727
  %i.ft = fadd fast <16 x float> %i.fr, %i.fs
  %interleaved.vec = shufflevector <16 x float> %i.fq, <16 x float> %i.ft, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep726, align 4, !tbaa !82, !alias.scope !86, !noalias !87
  %index.next730 = add nuw i64 %index722, 16      ; 2 uses
  %i.fu = icmp eq i64 %index.next730, %n.vec720
  br i1 %i.fu, label %middle.block731, label %vector.body721, !llvm.loop !68

middle.block731:                                  ; preds = %vector.body721
  %cmp.n732 = icmp eq i64 %i.ex, %n.vec720
  br i1 %cmp.n732, label %.loopexit, label %vec.epilog.iter.check740

vec.epilog.iter.check740:                         ; preds = %middle.block731
  %min.epilog.iters.check741 = icmp eq i64 %i.fd, 0
  br i1 %min.epilog.iters.check741, label %.lr.ph416.preheader, label %vec.epilog.ph742, !prof !88

vec.epilog.ph742:                                 ; preds = %vector.main.loop.iter.check717, %vec.epilog.iter.check740
  %vec.epilog.resume.val733 = phi i64 [ %n.vec720, %vec.epilog.iter.check740 ], [ 0, %vector.main.loop.iter.check717 ]
  %n.vec743 = and i64 %i.ex, 8589934588           ; 5 uses
  %i.fv = shl nuw nsw i64 %n.vec743, 3            ; 2 uses
  %i.fw = getelementptr i8, ptr %.3.lcssa, i64 %i.fv
  %i.fx = shl nuw nsw i64 %n.vec743, 2            ; 2 uses
  %i.fy = getelementptr i8, ptr %.3258.lcssa, i64 %i.fx
  %i.fz = getelementptr i8, ptr %.3263.lcssa, i64 %i.fx
  %i.ga = getelementptr i8, ptr %.3268.lcssa, i64 %i.fv
  %i.gb = trunc i64 %n.vec743 to i32
  %i.gc = add i32 %.3273.lcssa, %i.gb
  br label %vec.epilog.vector.body744

vec.epilog.vector.body744:                        ; preds = %vec.epilog.vector.body744, %vec.epilog.ph742
  %index745 = phi i64 [ %vec.epilog.resume.val733, %vec.epilog.ph742 ], [ %index.next756, %vec.epilog.vector.body744 ] ; 3 uses
  %i.gd = shl i64 %index745, 3                    ; 2 uses
  %next.gep746 = getelementptr i8, ptr %.3.lcssa, i64 %i.gd
  %i.ge = shl i64 %index745, 2                    ; 2 uses
  %next.gep747 = getelementptr i8, ptr %.3258.lcssa, i64 %i.ge
  %next.gep748 = getelementptr i8, ptr %.3263.lcssa, i64 %i.ge
  %next.gep749 = getelementptr i8, ptr %.3268.lcssa, i64 %i.gd
  %wide.vec750 = load <8 x float>, ptr %next.gep746, align 4, !tbaa !82, !alias.scope !83 ; 2 uses
  %strided.vec751 = shufflevector <8 x float> %wide.vec750, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec752 = shufflevector <8 x float> %wide.vec750, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %wide.load753 = load <4 x float>, ptr %next.gep747, align 4, !tbaa !82, !alias.scope !84 ; 2 uses
  %wide.load754 = load <4 x float>, ptr %next.gep748, align 4, !tbaa !82, !alias.scope !85 ; 2 uses
  %i.gf = fmul fast <4 x float> %wide.load753, %strided.vec751
  %i.gg = fmul fast <4 x float> %wide.load754, %strided.vec752
  %i.gh = fsub fast <4 x float> %i.gf, %i.gg
  %i.gi = fmul fast <4 x float> %wide.load754, %strided.vec751
  %i.gj = fmul fast <4 x float> %wide.load753, %strided.vec752
  %i.gk = fadd fast <4 x float> %i.gi, %i.gj
  %interleaved.vec755 = shufflevector <4 x float> %i.gh, <4 x float> %i.gk, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec755, ptr %next.gep749, align 4, !tbaa !82, !alias.scope !86, !noalias !87
  %index.next756 = add nuw i64 %index745, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next756, %n.vec743
  br i1 %i.gl, label %vec.epilog.middle.block757, label %vec.epilog.vector.body744, !llvm.loop !69

vec.epilog.middle.block757:                       ; preds = %vec.epilog.vector.body744
  %cmp.n758 = icmp eq i64 %i.ex, %n.vec743
  br i1 %cmp.n758, label %.loopexit, label %.lr.ph416.preheader

.lr.ph416.preheader:                              ; preds = %iter.check738, %vector.memcheck700, %vec.epilog.iter.check740, %vec.epilog.middle.block757
  %.4415.ph = phi ptr [ %.3.lcssa, %iter.check738 ], [ %.3.lcssa, %vector.memcheck700 ], [ %i.ff, %vec.epilog.iter.check740 ], [ %i.fw, %vec.epilog.middle.block757 ] ; 3 uses
  %.4259414.ph = phi ptr [ %.3258.lcssa, %iter.check738 ], [ %.3258.lcssa, %vector.memcheck700 ], [ %i.fh, %vec.epilog.iter.check740 ], [ %i.fy, %vec.epilog.middle.block757 ] ; 3 uses
  %.4264413.ph = phi ptr [ %.3263.lcssa, %iter.check738 ], [ %.3263.lcssa, %vector.memcheck700 ], [ %i.fi, %vec.epilog.iter.check740 ], [ %i.fz, %vec.epilog.middle.block757 ] ; 3 uses
  %.4269412.ph = phi ptr [ %.3268.lcssa, %iter.check738 ], [ %.3268.lcssa, %vector.memcheck700 ], [ %i.fj, %vec.epilog.iter.check740 ], [ %i.ga, %vec.epilog.middle.block757 ] ; 3 uses
  %.4274411.ph = phi i32 [ %.3273.lcssa, %iter.check738 ], [ %.3273.lcssa, %vector.memcheck700 ], [ %i.fl, %vec.epilog.iter.check740 ], [ %i.gc, %vec.epilog.middle.block757 ] ; 4 uses
  %i.gm = sub i32 %.lcssa, %.4274411.ph
  %.neg = add i32 %.4274411.ph, 1
  %xtraiter = and i32 %i.gm, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph416.prol.loopexit, label %.lr.ph416.prol

.lr.ph416.prol:                                   ; preds = %.lr.ph416.preheader
  %i.gn = getelementptr inbounds nuw i8, ptr %.4259414.ph, i64 4
  %i.go = load float, ptr %.4259414.ph, align 4, !tbaa !82
  %i.gp = getelementptr inbounds nuw i8, ptr %.4264413.ph, i64 4
  %i.gq = load float, ptr %.4264413.ph, align 4, !tbaa !82
  %10 = load <2 x float>, ptr %.4415.ph, align 4, !tbaa !82 ; 2 uses
  %11 = insertelement <2 x float> poison, float %i.gq, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %14 = fmul fast <2 x float> %12, %13            ; 2 uses
  %15 = insertelement <2 x float> poison, float %i.go, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fmul fast <2 x float> %16, %10            ; 2 uses
  %18 = fsub fast <2 x float> %17, %14
  %19 = fadd fast <2 x float> %17, %14
  %20 = shufflevector <2 x float> %18, <2 x float> %19, <2 x i32> <i32 0, i32 3>
  store <2 x float> %20, ptr %.4269412.ph, align 4, !tbaa !82
  %i.gr = getelementptr inbounds nuw i8, ptr %.4415.ph, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %.4269412.ph, i64 8
  %i.gt = add nuw nsw i32 %.4274411.ph, 1
  br label %.lr.ph416.prol.loopexit

.lr.ph416.prol.loopexit:                          ; preds = %.lr.ph416.prol, %.lr.ph416.preheader
  %.4415.unr = phi ptr [ %.4415.ph, %.lr.ph416.preheader ], [ %i.gr, %.lr.ph416.prol ]
  %.4259414.unr = phi ptr [ %.4259414.ph, %.lr.ph416.preheader ], [ %i.gn, %.lr.ph416.prol ]
  %.4264413.unr = phi ptr [ %.4264413.ph, %.lr.ph416.preheader ], [ %i.gp, %.lr.ph416.prol ]
  %.4269412.unr = phi ptr [ %.4269412.ph, %.lr.ph416.preheader ], [ %i.gs, %.lr.ph416.prol ]
  %.4274411.unr = phi i32 [ %.4274411.ph, %.lr.ph416.preheader ], [ %i.gt, %.lr.ph416.prol ]
  %i.gu = icmp eq i32 %.lcssa, %.neg
  br i1 %i.gu, label %.loopexit, label %.lr.ph416

.lr.ph404:                                        ; preds = %.preheader364, %.lr.ph404
  %.3403 = phi ptr [ %i.hh, %.lr.ph404 ], [ %.2.lcssa, %.preheader364 ] ; 2 uses
  %.3258402 = phi ptr [ %i.hj, %.lr.ph404 ], [ %.2257.lcssa, %.preheader364 ] ; 2 uses
  %.3263401 = phi ptr [ %i.hk, %.lr.ph404 ], [ %.2262.lcssa, %.preheader364 ] ; 2 uses
  %.3268400 = phi ptr [ %i.hi, %.lr.ph404 ], [ %.2267.lcssa, %.preheader364 ] ; 2 uses
  %.3273399 = phi i32 [ %i.hl, %.lr.ph404 ], [ %.2272.lcssa, %.preheader364 ]
  %i.gv = load <4 x float>, ptr %.3403, align 1, !tbaa !42 ; 2 uses
  %i.gw = load i64, ptr %.3258402, align 1, !tbaa !42
  %i.gx = insertelement <2 x i64> poison, i64 %i.gw, i64 0
  %i.gy = bitcast <2 x i64> %i.gx to <4 x float>
  %i.gz = load i64, ptr %.3263401, align 1, !tbaa !42
  %i.ha = insertelement <2 x i64> poison, i64 %i.gz, i64 0
  %i.hb = bitcast <2 x i64> %i.ha to <4 x float>
  %i.hc = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hd = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.he = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.hf = fmul fast <4 x float> %i.hd, %i.he
  %i.hg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.gv, <4 x float> nofpclass(nan inf) %i.hc, <4 x float> nofpclass(nan inf) %i.hf)
  store <4 x float> %i.hg, ptr %.3268400, align 1, !tbaa !42
  %i.hh = getelementptr inbounds nuw i8, ptr %.3403, i64 16 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.3268400, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.3258402, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.3263401, i64 8 ; 2 uses
  %i.hl = add nuw nsw i32 %.3273399, 2            ; 3 uses
  %i.hm = or disjoint i32 %i.hl, 1
  %i.hn = load i32, ptr %9, align 4, !tbaa !21
  %i.ho = sdiv i32 %i.hn, 2                       ; 2 uses
  %i.hp = icmp slt i32 %i.hm, %i.ho
  br i1 %i.hp, label %.lr.ph404, label %.preheader362, !llvm.loop !70

.lr.ph416:                                        ; preds = %.lr.ph416.prol.loopexit, %.lr.ph416
  %.4415 = phi ptr [ %i.hz, %.lr.ph416 ], [ %.4415.unr, %.lr.ph416.prol.loopexit ] ; 3 uses
  %.4259414 = phi ptr [ %i.hv, %.lr.ph416 ], [ %.4259414.unr, %.lr.ph416.prol.loopexit ] ; 3 uses
  %.4264413 = phi ptr [ %i.hx, %.lr.ph416 ], [ %.4264413.unr, %.lr.ph416.prol.loopexit ] ; 3 uses
  %.4269412 = phi ptr [ %i.ia, %.lr.ph416 ], [ %.4269412.unr, %.lr.ph416.prol.loopexit ] ; 3 uses
  %.4274411 = phi i32 [ %i.ib, %.lr.ph416 ], [ %.4274411.unr, %.lr.ph416.prol.loopexit ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.4259414, i64 4
  %i.hr = load float, ptr %.4259414, align 4, !tbaa !82
  %i.hs = getelementptr inbounds nuw i8, ptr %.4264413, i64 4
  %i.ht = load float, ptr %.4264413, align 4, !tbaa !82
  %21 = load <2 x float>, ptr %.4415, align 4, !tbaa !82 ; 2 uses
  %22 = insertelement <2 x float> poison, float %i.ht, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %25 = fmul fast <2 x float> %23, %24            ; 2 uses
  %26 = insertelement <2 x float> poison, float %i.hr, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = fmul fast <2 x float> %27, %21            ; 2 uses
  %29 = fsub fast <2 x float> %28, %25
  %30 = fadd fast <2 x float> %28, %25
  %31 = shufflevector <2 x float> %29, <2 x float> %30, <2 x i32> <i32 0, i32 3>
  store <2 x float> %31, ptr %.4269412, align 4, !tbaa !82
  %i.hu = getelementptr inbounds nuw i8, ptr %.4415, i64 8
  %32 = getelementptr inbounds nuw i8, ptr %.4269412, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %.4259414, i64 8
  %i.hw = load float, ptr %i.hq, align 4, !tbaa !82
  %i.hx = getelementptr inbounds nuw i8, ptr %.4264413, i64 8
  %i.hy = load float, ptr %i.hs, align 4, !tbaa !82
  %33 = load <2 x float>, ptr %i.hu, align 4, !tbaa !82 ; 2 uses
  %34 = insertelement <2 x float> poison, float %i.hy, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %36 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %37 = fmul fast <2 x float> %35, %36            ; 2 uses
  %38 = insertelement <2 x float> poison, float %i.hw, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = fmul fast <2 x float> %39, %33            ; 2 uses
  %41 = fsub fast <2 x float> %40, %37
  %42 = fadd fast <2 x float> %40, %37
  %43 = shufflevector <2 x float> %41, <2 x float> %42, <2 x i32> <i32 0, i32 3>
  store <2 x float> %43, ptr %32, align 4, !tbaa !82
  %i.hz = getelementptr inbounds nuw i8, ptr %.4415, i64 16
  %i.ia = getelementptr inbounds nuw i8, ptr %.4269412, i64 16
  %i.ib = add nuw nsw i32 %.4274411, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ib, %.lcssa
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph416, !llvm.loop !71

bb.e:                                             ; preds = %bb.c
  %i.ic = load i32, ptr %9, align 4, !tbaa !21    ; 2 uses
  %i.id = sdiv i32 %i.ic, 2                       ; 2 uses
  %i.ie = sext i32 %i.id to i64                   ; 2 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ie ; 2 uses
  %i.ig = load ptr, ptr %7, align 8, !tbaa !25
  %i.ih = load i32, ptr %i.s, align 4, !tbaa !20
  %i.ii = sext i32 %i.ih to i64
  %i.ij = mul nsw i64 %indvars.iv, %i.ii
  %i.ik = load i64, ptr %i.t, align 8, !tbaa !19
  %i.il = mul i64 %i.ij, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.il ; 2 uses
  %i.in = load ptr, ptr %8, align 8, !tbaa !25
  %i.io = load i32, ptr %i.u, align 4, !tbaa !20
  %i.ip = sext i32 %i.io to i64
  %i.iq = mul nsw i64 %indvars.iv, %i.ip
  %i.ir = load i64, ptr %i.v, align 8, !tbaa !19
  %i.is = mul i64 %i.iq, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.is ; 2 uses
  %i.iu = mul i64 %i.at, %indvars.iv
  %i.iv = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.iu ; 3 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.ie ; 2 uses
  %i.ix = icmp sgt i32 %i.ic, 31
  br i1 %i.ix, label %.lr.ph424, label %.preheader361

.preheader361:                                    ; preds = %.lr.ph424, %bb.e
  %.pre-phi = phi i32 [ %i.id, %bb.e ], [ %i.js, %.lr.ph424 ] ; 2 uses
  %.0299.lcssa = phi ptr [ %i.ax, %bb.e ], [ %i.jj, %.lr.ph424 ] ; 2 uses
  %.0295.lcssa = phi ptr [ %i.if, %bb.e ], [ %i.jk, %.lr.ph424 ] ; 2 uses
  %.0291.lcssa = phi ptr [ %i.im, %bb.e ], [ %i.jl, %.lr.ph424 ] ; 2 uses
  %.0287.lcssa = phi ptr [ %i.it, %bb.e ], [ %i.jm, %.lr.ph424 ] ; 2 uses
  %.0283.lcssa = phi ptr [ %i.iv, %bb.e ], [ %i.jn, %.lr.ph424 ] ; 2 uses
  %.0279.lcssa = phi ptr [ %i.iw, %bb.e ], [ %i.jo, %.lr.ph424 ] ; 2 uses
  %.0275.lcssa = phi i32 [ 0, %bb.e ], [ %i.jp, %.lr.ph424 ] ; 3 uses
  %i.iy = or disjoint i32 %.0275.lcssa, 7
  %i.iz = icmp slt i32 %i.iy, %.pre-phi
  br i1 %i.iz, label %.lr.ph439, label %.preheader360

.lr.ph424:                                        ; preds = %bb.e, %.lr.ph424
  %.0275423 = phi i32 [ %i.jp, %.lr.ph424 ], [ 0, %bb.e ]
  %.0279422 = phi ptr [ %i.jo, %.lr.ph424 ], [ %i.iw, %bb.e ] ; 2 uses
  %.0283421 = phi ptr [ %i.jn, %.lr.ph424 ], [ %i.iv, %bb.e ] ; 2 uses
  %.0287420 = phi ptr [ %i.jm, %.lr.ph424 ], [ %i.it, %bb.e ] ; 2 uses
  %.0291419 = phi ptr [ %i.jl, %.lr.ph424 ], [ %i.im, %bb.e ] ; 2 uses
  %.0295418 = phi ptr [ %i.jk, %.lr.ph424 ], [ %i.if, %bb.e ] ; 2 uses
  %.0299417 = phi ptr [ %i.jj, %.lr.ph424 ], [ %i.ax, %bb.e ] ; 2 uses
  %i.ja = load <16 x float>, ptr %.0299417, align 1, !tbaa !42 ; 2 uses
  %i.jb = load <16 x float>, ptr %.0295418, align 1, !tbaa !42 ; 2 uses
  %i.jc = load <16 x float>, ptr %.0291419, align 1, !tbaa !42 ; 2 uses
  %i.jd = load <16 x float>, ptr %.0287420, align 1, !tbaa !42 ; 2 uses
  %i.je = fmul fast <16 x float> %i.jc, %i.ja
  %i.jf = fneg fast <16 x float> %i.jb
  %i.jg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.jf, <16 x float> nofpclass(nan inf) %i.jd, <16 x float> nofpclass(nan inf) %i.je)
  %i.jh = fmul fast <16 x float> %i.jc, %i.jb
  %i.ji = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ja, <16 x float> nofpclass(nan inf) %i.jd, <16 x float> nofpclass(nan inf) %i.jh)
  store <16 x float> %i.jg, ptr %.0283421, align 1, !tbaa !42
  store <16 x float> %i.ji, ptr %.0279422, align 1, !tbaa !42
  %i.jj = getelementptr inbounds nuw i8, ptr %.0299417, i64 64 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.0295418, i64 64 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.0291419, i64 64 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0287420, i64 64 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.0283421, i64 64 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.0279422, i64 64 ; 2 uses
  %i.jp = add nuw nsw i32 %.0275423, 16           ; 3 uses
  %i.jq = or disjoint i32 %i.jp, 15
  %i.jr = load i32, ptr %9, align 4, !tbaa !21
  %i.js = sdiv i32 %i.jr, 2                       ; 2 uses
  %i.jt = icmp slt i32 %i.jq, %i.js
  br i1 %i.jt, label %.lr.ph424, label %.preheader361, !llvm.loop !72

.preheader360:                                    ; preds = %.lr.ph439, %.preheader361
  %.pre-phi526 = phi i32 [ %.pre-phi, %.preheader361 ], [ %i.ko, %.lr.ph439 ] ; 2 uses
  %.1300.lcssa = phi ptr [ %.0299.lcssa, %.preheader361 ], [ %i.kf, %.lr.ph439 ] ; 2 uses
  %.1296.lcssa = phi ptr [ %.0295.lcssa, %.preheader361 ], [ %i.kg, %.lr.ph439 ] ; 2 uses
  %.1292.lcssa = phi ptr [ %.0291.lcssa, %.preheader361 ], [ %i.kh, %.lr.ph439 ] ; 2 uses
  %.1288.lcssa = phi ptr [ %.0287.lcssa, %.preheader361 ], [ %i.ki, %.lr.ph439 ] ; 2 uses
  %.1284.lcssa = phi ptr [ %.0283.lcssa, %.preheader361 ], [ %i.kj, %.lr.ph439 ] ; 2 uses
  %.1280.lcssa = phi ptr [ %.0279.lcssa, %.preheader361 ], [ %i.kk, %.lr.ph439 ] ; 2 uses
  %.1276.lcssa = phi i32 [ %.0275.lcssa, %.preheader361 ], [ %i.kl, %.lr.ph439 ] ; 3 uses
  %i.ju = or disjoint i32 %.1276.lcssa, 3
  %i.jv = icmp slt i32 %i.ju, %.pre-phi526
  br i1 %i.jv, label %.lr.ph454, label %.preheader

.lr.ph439:                                        ; preds = %.preheader361, %.lr.ph439
  %.1276438 = phi i32 [ %i.kl, %.lr.ph439 ], [ %.0275.lcssa, %.preheader361 ]
  %.1280437 = phi ptr [ %i.kk, %.lr.ph439 ], [ %.0279.lcssa, %.preheader361 ] ; 2 uses
  %.1284436 = phi ptr [ %i.kj, %.lr.ph439 ], [ %.0283.lcssa, %.preheader361 ] ; 2 uses
  %.1288435 = phi ptr [ %i.ki, %.lr.ph439 ], [ %.0287.lcssa, %.preheader361 ] ; 2 uses
  %.1292434 = phi ptr [ %i.kh, %.lr.ph439 ], [ %.0291.lcssa, %.preheader361 ] ; 2 uses
  %.1296433 = phi ptr [ %i.kg, %.lr.ph439 ], [ %.0295.lcssa, %.preheader361 ] ; 2 uses
  %.1300432 = phi ptr [ %i.kf, %.lr.ph439 ], [ %.0299.lcssa, %.preheader361 ] ; 2 uses
  %i.jw = load <8 x float>, ptr %.1300432, align 1, !tbaa !42 ; 2 uses
  %i.jx = load <8 x float>, ptr %.1296433, align 1, !tbaa !42 ; 2 uses
  %i.jy = load <8 x float>, ptr %.1292434, align 1, !tbaa !42 ; 2 uses
  %i.jz = load <8 x float>, ptr %.1288435, align 1, !tbaa !42 ; 2 uses
  %i.ka = fmul fast <8 x float> %i.jy, %i.jw
  %i.kb = fneg fast <8 x float> %i.jx
  %i.kc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kb, <8 x float> nofpclass(nan inf) %i.jz, <8 x float> nofpclass(nan inf) %i.ka)
  %i.kd = fmul fast <8 x float> %i.jy, %i.jx
  %i.ke = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jw, <8 x float> nofpclass(nan inf) %i.jz, <8 x float> nofpclass(nan inf) %i.kd)
  store <8 x float> %i.kc, ptr %.1284436, align 1, !tbaa !42
  store <8 x float> %i.ke, ptr %.1280437, align 1, !tbaa !42
  %i.kf = getelementptr inbounds nuw i8, ptr %.1300432, i64 32 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.1296433, i64 32 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.1292434, i64 32 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.1288435, i64 32 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.1284436, i64 32 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.1280437, i64 32 ; 2 uses
  %i.kl = add nuw nsw i32 %.1276438, 8            ; 3 uses
  %i.km = or disjoint i32 %i.kl, 7
  %i.kn = load i32, ptr %9, align 4, !tbaa !21
  %i.ko = sdiv i32 %i.kn, 2                       ; 2 uses
  %i.kp = icmp slt i32 %i.km, %i.ko
  br i1 %i.kp, label %.lr.ph439, label %.preheader360, !llvm.loop !73

.preheader:                                       ; preds = %.lr.ph454, %.preheader360
  %.2301.lcssa = phi ptr [ %.1300.lcssa, %.preheader360 ], [ %i.oa, %.lr.ph454 ] ; 7 uses
  %.2297.lcssa = phi ptr [ %.1296.lcssa, %.preheader360 ], [ %i.ob, %.lr.ph454 ] ; 7 uses
  %.2293.lcssa = phi ptr [ %.1292.lcssa, %.preheader360 ], [ %i.oc, %.lr.ph454 ] ; 7 uses
  %.2289.lcssa = phi ptr [ %.1288.lcssa, %.preheader360 ], [ %i.od, %.lr.ph454 ] ; 7 uses
  %.2285.lcssa = phi ptr [ %.1284.lcssa, %.preheader360 ], [ %i.oe, %.lr.ph454 ] ; 7 uses
  %.2281.lcssa = phi ptr [ %.1280.lcssa, %.preheader360 ], [ %i.of, %.lr.ph454 ] ; 7 uses
  %.2277.lcssa = phi i32 [ %.1276.lcssa, %.preheader360 ], [ %i.og, %.lr.ph454 ] ; 6 uses
  %.lcssa367 = phi i32 [ %.pre-phi526, %.preheader360 ], [ %i.oj, %.lr.ph454 ] ; 5 uses
  %.2281.lcssa643 = ptrtoaddr ptr %.2281.lcssa to i64 ; 5 uses
  %.2285.lcssa644 = ptrtoaddr ptr %.2285.lcssa to i64 ; 2 uses
  %.2297.lcssa645 = ptrtoaddr ptr %.2297.lcssa to i64 ; 2 uses
  %.2301.lcssa647 = ptrtoaddr ptr %.2301.lcssa to i64 ; 2 uses
  %.2293.lcssa650 = ptrtoaddr ptr %.2293.lcssa to i64 ; 2 uses
  %.2289.lcssa653 = ptrtoaddr ptr %.2289.lcssa to i64 ; 2 uses
  %i.kq = icmp slt i32 %.2277.lcssa, %.lcssa367
  br i1 %i.kq, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.kr = xor i32 %.2277.lcssa, -1
  %i.ks = add i32 %.lcssa367, %i.kr               ; 3 uses
  %i.kt = zext i32 %i.ks to i64
  %i.ku = add nuw nsw i64 %i.kt, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ks, 3
  br i1 %min.iters.check, label %.lr.ph470.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kv = sub i64 %.2285.lcssa644, %.2281.lcssa643
  %i.kw = insertelement <8 x i64> poison, i64 %.2297.lcssa645, i64 0
  %i.kx = insertelement <8 x i64> %i.kw, i64 %.2301.lcssa647, i64 1
  %i.ky = insertelement <8 x i64> %i.kx, i64 %.2293.lcssa650, i64 2
  %i.kz = insertelement <8 x i64> %i.ky, i64 %.2289.lcssa653, i64 3
  %i.la = insertelement <4 x i64> poison, i64 %.2285.lcssa644, i64 0
  %i.lb = sub i64 %.2297.lcssa645, %.2281.lcssa643
  %i.lc = sub i64 %.2301.lcssa647, %.2281.lcssa643
  %i.ld = sub i64 %.2293.lcssa650, %.2281.lcssa643
  %i.le = insertelement <8 x i64> poison, i64 %i.kv, i64 0
  %i.lf = shufflevector <4 x i64> %i.la, <4 x i64> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lg = sub <8 x i64> %i.kz, %i.lf
  %i.lh = shufflevector <8 x i64> %i.le, <8 x i64> %i.lg, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.li = insertelement <8 x i64> %i.lh, i64 %i.lb, i64 5
  %i.lj = insertelement <8 x i64> %i.li, i64 %i.lc, i64 6
  %i.lk = insertelement <8 x i64> %i.lj, i64 %i.ld, i64 7
  %i.ll = icmp ugt <8 x i64> %i.lk, splat (i64 -64)
  %i.lm = sub i64 %.2289.lcssa653, %.2281.lcssa643
  %diff.check662 = icmp ugt i64 %i.lm, -64
  %i.ln = bitcast <8 x i1> %i.ll to i8
  %i.lo = icmp ne i8 %i.ln, 0
  %op.rdx = or i1 %i.lo, %diff.check662
  br i1 %op.rdx, label %.lr.ph470.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check664 = icmp ult i32 %i.ks, 15
  br i1 %min.iters.check664, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lp = and i64 %i.ku, 12
  %n.vec = and i64 %i.ku, 8589934576              ; 5 uses
  %i.lq = trunc i64 %n.vec to i32
  %i.lr = add i32 %.2277.lcssa, %i.lq
  %i.ls = shl nuw nsw i64 %n.vec, 2               ; 6 uses
  %i.lt = getelementptr i8, ptr %.2281.lcssa, i64 %i.ls
  %i.lu = getelementptr i8, ptr %.2285.lcssa, i64 %i.ls
  %i.lv = getelementptr i8, ptr %.2289.lcssa, i64 %i.ls
  %i.lw = getelementptr i8, ptr %.2293.lcssa, i64 %i.ls
  %i.lx = getelementptr i8, ptr %.2297.lcssa, i64 %i.ls
  %i.ly = getelementptr i8, ptr %.2301.lcssa, i64 %i.ls
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lz = shl i64 %index, 2                       ; 6 uses
  %next.gep = getelementptr i8, ptr %.2281.lcssa, i64 %i.lz
  %next.gep665 = getelementptr i8, ptr %.2285.lcssa, i64 %i.lz
  %next.gep666 = getelementptr i8, ptr %.2289.lcssa, i64 %i.lz
  %next.gep667 = getelementptr i8, ptr %.2293.lcssa, i64 %i.lz
  %next.gep668 = getelementptr i8, ptr %.2297.lcssa, i64 %i.lz
  %next.gep669 = getelementptr i8, ptr %.2301.lcssa, i64 %i.lz
  %wide.load = load <16 x float>, ptr %next.gep669, align 4, !tbaa !82 ; 2 uses
end_hunk_0
