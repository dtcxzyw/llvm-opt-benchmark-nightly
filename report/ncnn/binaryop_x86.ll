Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/binaryop_x86?download=true
inline.NumInlined: 420
inline.NumDeleted: 278
loop-unroll.NumRuntimeUnrolled: 168
loop-unroll.NumUnrolled: 168
begin_hunk_0_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
.lr.ph.i62.i:                                     ; preds = %.lr.ph.i62.i, %bb.gu
  %.071.i.i620 = phi ptr [ %i.epv, %.lr.ph.i62.i ], [ %1, %bb.gu ] ; 2 uses
  %.0970.i.i621 = phi i32 [ %i.epx, %.lr.ph.i62.i ], [ 0, %bb.gu ]
  %.01069.i.i622 = phi ptr [ %i.epw, %.lr.ph.i62.i ], [ %2, %bb.gu ] ; 2 uses
  %i.enf = load float, ptr %.071.i.i620, align 4, !tbaa !59
  %i.eng = insertelement <4 x float> poison, float %i.enf, i64 0
  %i.enh = shufflevector <4 x float> %i.eng, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eni = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.enh, <4 x float> splat (float f0x00800000))
  %i.enj = bitcast <4 x float> %i.eni to <4 x i32> ; 2 uses
  %i.enk = lshr <4 x i32> %i.enj, splat (i32 23)
  %i.enl = and <4 x i32> %i.enj, splat (i32 -2139095041)
  %i.enm = or disjoint <4 x i32> %i.enl, splat (i32 1056964608)
  %i.enn = bitcast <4 x i32> %i.enm to <4 x float> ; 3 uses
  %i.eno = add nsw <4 x i32> %i.enk, splat (i32 -127)
  %i.enp = sitofp fast <4 x i32> %i.eno to <4 x float> ; 2 uses
  %i.enq = fadd fast <4 x float> %i.enp, splat (float 1.000000e+00)
  %i.enr = fcmp fast olt <4 x float> %i.enn, splat (float f0x3F3504F3) ; 2 uses
  %i.ens = select <4 x i1> %i.enr, <4 x float> %i.enn, <4 x float> zeroinitializer
  %i.ent = fadd fast <4 x float> %i.enn, splat (float -1.000000e+00)
  %i.enu = select fast <4 x i1> %i.enr, <4 x float> %i.enp, <4 x float> %i.enq
  %i.env = fadd fast <4 x float> %i.ent, %i.ens   ; 12 uses
  %i.enw = fmul fast <4 x float> %i.env, %i.env
  %i.enx = fmul fast <4 x float> %i.env, splat (float f0x3D9021BB)
  %i.eny = fadd fast <4 x float> %i.enx, splat (float f0xBDEBD1B8)
  %i.enz = fmul fast <4 x float> %i.eny, %i.env
  %i.eoa = fadd fast <4 x float> %i.enz, splat (float f0x3DEF251A)
  %i.eob = fmul fast <4 x float> %i.eoa, %i.env
  %i.eoc = fadd fast <4 x float> %i.eob, splat (float f0xBDFE5D4F)
  %i.eod = fmul fast <4 x float> %i.eoc, %i.env
  %i.eoe = fadd fast <4 x float> %i.eod, splat (float f0x3E11E9BF)
  %i.eof = fmul fast <4 x float> %i.eoe, %i.env
  %i.eog = fadd fast <4 x float> %i.eof, splat (float f0xBE2AAE50)
  %i.eoh = fmul fast <4 x float> %i.eog, %i.env
  %i.eoi = fadd fast <4 x float> %i.eoh, splat (float f0x3E4CCEAC)
  %i.eoj = fmul fast <4 x float> %i.eoi, %i.env
  %i.eok = fadd fast <4 x float> %i.eoj, splat (float f0xBE7FFFFC)
  %i.eol = fmul fast <4 x float> %i.eok, %i.env
  %i.eom = fadd fast <4 x float> %i.eol, splat (float f0x3EAAAAAA)
  %i.eon = fmul fast <4 x float> %i.eom, %i.env
  %reass.mul.i63.i = fmul fast <4 x float> %i.enu, splat (float f0x3F317218)
  %reass.add67.i.i623 = fadd fast <4 x float> %i.eon, splat (float -5.000000e-01)
  %reass.mul68.i.i624 = fmul fast <4 x float> %i.enw, %reass.add67.i.i623
  %i.eoo = fadd fast <4 x float> %reass.mul.i63.i, %i.env
  %i.eop = fadd fast <4 x float> %reass.mul68.i.i624, %i.eoo
  %i.eoq = fmul fast <4 x float> %i.eop, %i.ene
  %i.eor = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eoq, <4 x float> splat (float f0x42B0C0A5))
  %i.eos = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eor, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eot = fmul fast <4 x float> %i.eos, splat (float f0x3FB8AA3B)
  %i.eou = fadd fast <4 x float> %i.eot, splat (float 5.000000e-01) ; 2 uses
  %i.eov = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eou)
  %i.eow = sitofp fast <4 x i32> %i.eov to <4 x float> ; 2 uses
  %i.eox = fcmp fast olt <4 x float> %i.eou, %i.eow
  %i.eoy = select <4 x i1> %i.eox, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eoz = fsub fast <4 x float> %i.eow, %i.eoy   ; 2 uses
  %i.epa = fmul fast <4 x float> %i.eoz, splat (float f0x3F317218)
  %i.epb = fsub fast <4 x float> %i.eos, %i.epa   ; 8 uses
  %i.epc = fmul fast <4 x float> %i.epb, %i.epb
  %i.epd = fmul fast <4 x float> %i.epb, splat (float f0x39506967)
  %i.epe = fadd fast <4 x float> %i.epd, splat (float f0x3AB743CE)
  %i.epf = fmul fast <4 x float> %i.epe, %i.epb
  %i.epg = fadd fast <4 x float> %i.epf, splat (float f0x3C088908)
  %i.eph = fmul fast <4 x float> %i.epg, %i.epb
  %i.epi = fadd fast <4 x float> %i.eph, splat (float f0x3D2AA9C1)
  %i.epj = fmul fast <4 x float> %i.epi, %i.epb
  %i.epk = fadd fast <4 x float> %i.epj, splat (float f0x3E2AAAAA)
  %i.epl = fmul fast <4 x float> %i.epk, %i.epb
  %i.epm = fadd fast <4 x float> %i.epl, splat (float 5.000000e-01)
  %i.epn = fmul fast <4 x float> %i.epc, %i.epm
  %i.epo = fadd fast <4 x float> %i.epb, %i.epn
  %i.epp = fadd fast <4 x float> %i.epo, splat (float 1.000000e+00)
  %i.epq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eoz)
  %i.epr = shl <4 x i32> %i.epq, splat (i32 23)
  %i.eps = add <4 x i32> %i.epr, splat (i32 1065353216)
  %i.ept = bitcast <4 x i32> %i.eps to <4 x float>
  %i.epu = fmul fast <4 x float> %i.epp, %i.ept
  store <4 x float> %i.epu, ptr %.01069.i.i622, align 1, !tbaa !60
  %i.epv = getelementptr inbounds nuw i8, ptr %.071.i.i620, i64 4
  %i.epw = getelementptr inbounds nuw i8, ptr %.01069.i.i622, i64 16
  %i.epx = add nuw nsw i32 %.0970.i.i621, 1       ; 2 uses
  %exitcond.not.i64.i = icmp eq i32 %i.epx, %.sroa.speculated75.i
  br i1 %exitcond.not.i64.i, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph.i62.i, !llvm.loop !236

bb.gv:                                            ; preds = %bb.a
  %.sroa.speculated74.i.a = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i691 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.epy = mul i32 %.sroa.speculated.i691, %.sroa.speculated74.i.a ; 26 uses
  %i.epz = icmp eq i32 %5, %6
  br i1 %i.epz, label %bb.gw, label %bb.hk

bb.gw:                                            ; preds = %bb.gv
  %i.eqa = icmp eq i32 %3, %4
  br i1 %i.eqa, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.eqb = icmp sgt i32 %i.epy, 3
  br i1 %i.eqb, label %.lr.ph.i.i716, label %.preheader.i.i710

.preheader.loopexit.i.i717:                       ; preds = %.lr.ph.i.i716
  %i.eqc = and i32 %i.epy, 2147483644
  br label %.preheader.i.i710

.preheader.i.i710:                                ; preds = %.preheader.loopexit.i.i717, %bb.gx
  %.022.lcssa.i.i711 = phi ptr [ %2, %bb.gx ], [ %i.etc, %.preheader.loopexit.i.i717 ] ; 5 uses
  %.020.lcssa.i.i712 = phi ptr [ %1, %bb.gx ], [ %i.etb, %.preheader.loopexit.i.i717 ] ; 5 uses
  %.018.lcssa.i.i713 = phi i32 [ 0, %bb.gx ], [ %i.eqc, %.preheader.loopexit.i.i717 ] ; 5 uses
  %.0.lcssa.i.i714 = phi ptr [ %0, %bb.gx ], [ %i.eta, %.preheader.loopexit.i.i717 ] ; 5 uses
  %.022.lcssa.i.i7112663 = ptrtoaddr ptr %.022.lcssa.i.i711 to i64 ; 2 uses
  %.0.lcssa.i.i7142664 = ptrtoaddr ptr %.0.lcssa.i.i714 to i64
  %.020.lcssa.i.i7122666 = ptrtoaddr ptr %.020.lcssa.i.i712 to i64
  %i.eqd = icmp slt i32 %.018.lcssa.i.i713, %i.epy
  br i1 %i.eqd, label %.lr.ph70.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph70.i.i.preheader:                           ; preds = %.preheader.i.i710
  %i.eqe = xor i32 %.018.lcssa.i.i713, -1
  %i.eqf = add i32 %i.epy, %i.eqe                 ; 2 uses
  %i.eqg = zext i32 %i.eqf to i64
  %i.eqh = add nuw nsw i64 %i.eqg, 1              ; 2 uses
  %min.iters.check2670 = icmp ult i32 %i.eqf, 11
  br i1 %min.iters.check2670, label %.lr.ph70.i.i.preheader3562, label %vector.memcheck2662

vector.memcheck2662:                              ; preds = %.lr.ph70.i.i.preheader
  %i.eqi = sub i64 %.0.lcssa.i.i7142664, %.022.lcssa.i.i7112663
  %diff.check2665 = icmp ugt i64 %i.eqi, -16
  %i.eqj = sub i64 %.020.lcssa.i.i7122666, %.022.lcssa.i.i7112663
  %diff.check2667 = icmp ugt i64 %i.eqj, -16
  %conflict.rdx2668 = or i1 %diff.check2665, %diff.check2667
  br i1 %conflict.rdx2668, label %.lr.ph70.i.i.preheader3562, label %vector.ph2671

vector.ph2671:                                    ; preds = %vector.memcheck2662
  %n.vec2672 = and i64 %i.eqh, 8589934588         ; 4 uses
  %i.eqk = shl nuw nsw i64 %n.vec2672, 2          ; 3 uses
  %i.eql = getelementptr i8, ptr %.0.lcssa.i.i714, i64 %i.eqk
  %i.eqm = trunc i64 %n.vec2672 to i32
  %i.eqn = add i32 %.018.lcssa.i.i713, %i.eqm
  %i.eqo = getelementptr i8, ptr %.020.lcssa.i.i712, i64 %i.eqk
  %i.eqp = getelementptr i8, ptr %.022.lcssa.i.i711, i64 %i.eqk
  br label %vector.body2673

vector.body2673:                                  ; preds = %vector.body2673, %vector.ph2671
  %index2674 = phi i64 [ 0, %vector.ph2671 ], [ %index.next2680, %vector.body2673 ] ; 2 uses
  %i.eqq = shl i64 %index2674, 2                  ; 3 uses
  %next.gep2675 = getelementptr i8, ptr %.0.lcssa.i.i714, i64 %i.eqq
  %next.gep2676 = getelementptr i8, ptr %.020.lcssa.i.i712, i64 %i.eqq
  %next.gep2677 = getelementptr i8, ptr %.022.lcssa.i.i711, i64 %i.eqq
  %wide.load2678 = load <4 x float>, ptr %next.gep2675, align 4, !tbaa !59
  %wide.load2679 = load <4 x float>, ptr %next.gep2676, align 4, !tbaa !59
  %i.eqr = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %wide.load2678, <4 x float> %wide.load2679)
  store <4 x float> %i.eqr, ptr %next.gep2677, align 4, !tbaa !59
  %index.next2680 = add nuw i64 %index2674, 4     ; 2 uses
  %i.eqs = icmp eq i64 %index.next2680, %n.vec2672
  br i1 %i.eqs, label %middle.block2681, label %vector.body2673, !llvm.loop !237

middle.block2681:                                 ; preds = %vector.body2673
  %cmp.n2682 = icmp eq i64 %i.eqh, %n.vec2672
  br i1 %cmp.n2682, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph70.i.i.preheader3562

.lr.ph70.i.i.preheader3562:                       ; preds = %vector.memcheck2662, %.lr.ph70.i.i.preheader, %middle.block2681
  %.169.i.i.ph = phi ptr [ %.0.lcssa.i.i714, %vector.memcheck2662 ], [ %.0.lcssa.i.i714, %.lr.ph70.i.i.preheader ], [ %i.eql, %middle.block2681 ] ; 2 uses
  %.11968.i.i.ph = phi i32 [ %.018.lcssa.i.i713, %vector.memcheck2662 ], [ %.018.lcssa.i.i713, %.lr.ph70.i.i.preheader ], [ %i.eqn, %middle.block2681 ] ; 4 uses
  %.12167.i.i.ph = phi ptr [ %.020.lcssa.i.i712, %vector.memcheck2662 ], [ %.020.lcssa.i.i712, %.lr.ph70.i.i.preheader ], [ %i.eqo, %middle.block2681 ] ; 2 uses
  %.12366.i.i.ph = phi ptr [ %.022.lcssa.i.i711, %vector.memcheck2662 ], [ %.022.lcssa.i.i711, %.lr.ph70.i.i.preheader ], [ %i.eqp, %middle.block2681 ] ; 2 uses
  %i.eqt = sub i32 %i.epy, %.11968.i.i.ph
  %xtraiter3818 = and i32 %i.eqt, 3               ; 2 uses
  %lcmp.mod3819.not = icmp eq i32 %xtraiter3818, 0
  br i1 %lcmp.mod3819.not, label %.lr.ph70.i.i.prol.loopexit, label %.lr.ph70.i.i.prol

.lr.ph70.i.i.prol:                                ; preds = %.lr.ph70.i.i.preheader3562, %.lr.ph70.i.i.prol
  %.169.i.i.prol = phi ptr [ %i.eqx, %.lr.ph70.i.i.prol ], [ %.169.i.i.ph, %.lr.ph70.i.i.preheader3562 ] ; 2 uses
  %.11968.i.i.prol = phi i32 [ %i.era, %.lr.ph70.i.i.prol ], [ %.11968.i.i.ph, %.lr.ph70.i.i.preheader3562 ]
  %.12167.i.i.prol = phi ptr [ %i.eqy, %.lr.ph70.i.i.prol ], [ %.12167.i.i.ph, %.lr.ph70.i.i.preheader3562 ] ; 2 uses
  %.12366.i.i.prol = phi ptr [ %i.eqz, %.lr.ph70.i.i.prol ], [ %.12366.i.i.ph, %.lr.ph70.i.i.preheader3562 ] ; 2 uses
  %prol.iter3820 = phi i32 [ %prol.iter3820.next, %.lr.ph70.i.i.prol ], [ 0, %.lr.ph70.i.i.preheader3562 ]
  %i.equ = load float, ptr %.169.i.i.prol, align 4, !tbaa !59
  %i.eqv = load float, ptr %.12167.i.i.prol, align 4, !tbaa !59
  %i.eqw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.equ, float %i.eqv)
  store float %i.eqw, ptr %.12366.i.i.prol, align 4, !tbaa !59
  %i.eqx = getelementptr inbounds nuw i8, ptr %.169.i.i.prol, i64 4 ; 2 uses
  %i.eqy = getelementptr inbounds nuw i8, ptr %.12167.i.i.prol, i64 4 ; 2 uses
  %i.eqz = getelementptr inbounds nuw i8, ptr %.12366.i.i.prol, i64 4 ; 2 uses
  %i.era = add nuw nsw i32 %.11968.i.i.prol, 1    ; 2 uses
  %prol.iter3820.next = add i32 %prol.iter3820, 1 ; 2 uses
  %prol.iter3820.cmp.not = icmp eq i32 %prol.iter3820.next, %xtraiter3818
  br i1 %prol.iter3820.cmp.not, label %.lr.ph70.i.i.prol.loopexit, label %.lr.ph70.i.i.prol, !llvm.loop !238

.lr.ph70.i.i.prol.loopexit:                       ; preds = %.lr.ph70.i.i.prol, %.lr.ph70.i.i.preheader3562
  %.169.i.i.unr = phi ptr [ %.169.i.i.ph, %.lr.ph70.i.i.preheader3562 ], [ %i.eqx, %.lr.ph70.i.i.prol ]
  %.11968.i.i.unr = phi i32 [ %.11968.i.i.ph, %.lr.ph70.i.i.preheader3562 ], [ %i.era, %.lr.ph70.i.i.prol ]
  %.12167.i.i.unr = phi ptr [ %.12167.i.i.ph, %.lr.ph70.i.i.preheader3562 ], [ %i.eqy, %.lr.ph70.i.i.prol ]
  %.12366.i.i.unr = phi ptr [ %.12366.i.i.ph, %.lr.ph70.i.i.preheader3562 ], [ %i.eqz, %.lr.ph70.i.i.prol ]
  %i.erb = sub i32 %.11968.i.i.ph, %i.epy
  %i.erc = icmp ugt i32 %i.erb, -4
  br i1 %i.erc, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph70.i.i

.lr.ph.i.i716:                                    ; preds = %bb.gx, %.lr.ph.i.i716
  %.062.i.i = phi ptr [ %i.eta, %.lr.ph.i.i716 ], [ %0, %bb.gx ] ; 2 uses
  %.01861.i.i = phi i32 [ %i.etd, %.lr.ph.i.i716 ], [ 0, %bb.gx ]
  %.02060.i.i = phi ptr [ %i.etb, %.lr.ph.i.i716 ], [ %1, %bb.gx ] ; 2 uses
  %.02259.i.i = phi ptr [ %i.etc, %.lr.ph.i.i716 ], [ %2, %bb.gx ] ; 2 uses
  %i.erd = load <4 x float>, ptr %.062.i.i, align 1, !tbaa !60 ; 4 uses
  %i.ere = load <4 x float>, ptr %.02060.i.i, align 1, !tbaa !60 ; 4 uses
  %i.erf = fcmp fast oeq <4 x float> %i.ere, zeroinitializer ; 2 uses
  %i.erg = fcmp fast oeq <4 x float> %i.erd, zeroinitializer ; 2 uses
  %.not58.i.i = or <4 x i1> %i.erg, %i.erf
  %i.erh = bitcast <4 x float> %i.erd to <4 x i32>
  %i.eri = and <4 x i32> %i.erh, splat (i32 -2147483648)
  %i.erj = fcmp fast olt <4 x float> %i.ere, zeroinitializer
  %i.erk = fcmp fast olt <4 x float> %i.erd, zeroinitializer
  %i.erl = select <4 x i1> %i.erk, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.erm = select <4 x i1> %i.erj, <4 x float> %i.erl, <4 x float> zeroinitializer
  %i.ern = fdiv fast <4 x float> %i.erd, %i.ere   ; 2 uses
  %i.ero = bitcast <4 x float> %i.ern to <4 x i32>
  %i.erp = and <4 x i32> %i.ero, splat (i32 -2147483648)
  %i.erq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ern) ; 3 uses
  %i.err = fcmp fast ogt <4 x float> %i.erq, splat (float 1.000000e+00) ; 2 uses
  %i.ers = select <4 x i1> %i.err, <4 x float> splat (float -1.000000e+00), <4 x float> %i.erq
  %i.ert = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.erq, <4 x float> splat (float 1.000000e+00))
  %i.eru = fdiv fast <4 x float> %i.ers, %i.ert   ; 3 uses
  %i.erv = fmul fast <4 x float> %i.eru, %i.eru   ; 3 uses
  %i.erw = fmul fast <4 x float> %i.erv, %i.erv   ; 7 uses
  %i.erx = fmul fast <4 x float> %i.erw, splat (float f0x3C83A25C)
  %i.ery = fsub fast <4 x float> splat (float f0xBD99B01E), %i.erx
  %i.erz = fmul fast <4 x float> %i.ery, %i.erw
  %i.esa = fadd fast <4 x float> %i.erz, splat (float f0xBE117200)
  %i.esb = fmul fast <4 x float> %i.esa, %i.erw
  %i.esc = fadd fast <4 x float> %i.esb, splat (float f0xBEAAAA53)
  %i.esd = fmul fast <4 x float> %i.erw, splat (float f0x3B3AC537)
  %i.ese = fadd fast <4 x float> %i.esd, splat (float f0x3D2EDD4E)
  %i.esf = fmul fast <4 x float> %i.ese, %i.erw
  %i.esg = fadd fast <4 x float> %i.esf, splat (float f0x3DD9ED24)
  %i.esh = fmul fast <4 x float> %i.esg, %i.erw
  %i.esi = fadd fast <4 x float> %i.esh, splat (float f0x3E4CB974)
  %i.esj = fmul fast <4 x float> %i.esi, %i.erw
  %i.esk = fadd fast <4 x float> %i.esj, splat (float 1.000000e+00)
  %i.esl = fmul fast <4 x float> %i.esc, %i.erv
  %i.esm = fadd fast <4 x float> %i.esk, %i.esl
  %i.esn = fmul fast <4 x float> %i.esm, %i.eru
  %i.eso = select <4 x i1> %i.err, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.esp = fadd fast <4 x float> %i.esn, %i.eso
  %i.esq = bitcast <4 x float> %i.esp to <4 x i32>
  %i.esr = or <4 x i32> %i.erp, %i.esq
  %i.ess = bitcast <4 x i32> %i.esr to <4 x float>
  %i.est = fadd fast <4 x float> %i.erm, %i.ess
  %i.esu = bitcast <4 x float> %i.ere to <4 x i32>
  %i.esv = or disjoint <4 x i32> %i.eri, splat (i32 1070141403)
  %isneg.inv.i.i = icmp slt <4 x i32> %i.esu, zeroinitializer
  %i.esw = select <4 x i1> %isneg.inv.i.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.esx = bitcast <4 x float> %i.est to <4 x i32>
  %8 = select <4 x i1> %.not58.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.esx
  %i.esy = select <4 x i1> %i.erf, <4 x i32> %i.esv, <4 x i32> zeroinitializer
  %i.esz = select <4 x i1> %i.erg, <4 x i32> %i.esw, <4 x i32> %i.esy
  %9 = or <4 x i32> %8, %i.esz
  store <4 x i32> %9, ptr %.02259.i.i, align 1, !tbaa !60
  %i.eta = getelementptr inbounds nuw i8, ptr %.062.i.i, i64 16 ; 2 uses
  %i.etb = getelementptr inbounds nuw i8, ptr %.02060.i.i, i64 16 ; 2 uses
  %i.etc = getelementptr inbounds nuw i8, ptr %.02259.i.i, i64 16 ; 2 uses
  %i.etd = add nuw nsw i32 %.01861.i.i, 4         ; 2 uses
  %i.ete = or disjoint i32 %i.etd, 3
  %i.etf = icmp slt i32 %i.ete, %i.epy
  br i1 %i.etf, label %.lr.ph.i.i716, label %.preheader.loopexit.i.i717, !llvm.loop !239

.lr.ph70.i.i:                                     ; preds = %.lr.ph70.i.i.prol.loopexit, %.lr.ph70.i.i
  %.169.i.i = phi ptr [ %i.eub, %.lr.ph70.i.i ], [ %.169.i.i.unr, %.lr.ph70.i.i.prol.loopexit ] ; 5 uses
  %.11968.i.i = phi i32 [ %i.eue, %.lr.ph70.i.i ], [ %.11968.i.i.unr, %.lr.ph70.i.i.prol.loopexit ]
  %.12167.i.i = phi ptr [ %i.euc, %.lr.ph70.i.i ], [ %.12167.i.i.unr, %.lr.ph70.i.i.prol.loopexit ] ; 5 uses
  %.12366.i.i = phi ptr [ %i.eud, %.lr.ph70.i.i ], [ %.12366.i.i.unr, %.lr.ph70.i.i.prol.loopexit ] ; 5 uses
  %i.etg = load float, ptr %.169.i.i, align 4, !tbaa !59
  %i.eth = load float, ptr %.12167.i.i, align 4, !tbaa !59
  %i.eti = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.etg, float %i.eth)
  store float %i.eti, ptr %.12366.i.i, align 4, !tbaa !59
  %i.etj = getelementptr inbounds nuw i8, ptr %.169.i.i, i64 4
  %i.etk = getelementptr inbounds nuw i8, ptr %.12167.i.i, i64 4
  %i.etl = getelementptr inbounds nuw i8, ptr %.12366.i.i, i64 4
  %i.etm = load float, ptr %i.etj, align 4, !tbaa !59
  %i.etn = load float, ptr %i.etk, align 4, !tbaa !59
  %i.eto = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.etm, float %i.etn)
  store float %i.eto, ptr %i.etl, align 4, !tbaa !59
  %i.etp = getelementptr inbounds nuw i8, ptr %.169.i.i, i64 8
  %i.etq = getelementptr inbounds nuw i8, ptr %.12167.i.i, i64 8
  %i.etr = getelementptr inbounds nuw i8, ptr %.12366.i.i, i64 8
  %i.ets = load float, ptr %i.etp, align 4, !tbaa !59
  %i.ett = load float, ptr %i.etq, align 4, !tbaa !59
  %i.etu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ets, float %i.ett)
  store float %i.etu, ptr %i.etr, align 4, !tbaa !59
  %i.etv = getelementptr inbounds nuw i8, ptr %.169.i.i, i64 12
  %i.etw = getelementptr inbounds nuw i8, ptr %.12167.i.i, i64 12
  %i.etx = getelementptr inbounds nuw i8, ptr %.12366.i.i, i64 12
  %i.ety = load float, ptr %i.etv, align 4, !tbaa !59
  %i.etz = load float, ptr %i.etw, align 4, !tbaa !59
  %i.eua = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ety, float %i.etz)
  store float %i.eua, ptr %i.etx, align 4, !tbaa !59
  %i.eub = getelementptr inbounds nuw i8, ptr %.169.i.i, i64 16
  %i.euc = getelementptr inbounds nuw i8, ptr %.12167.i.i, i64 16
  %i.eud = getelementptr inbounds nuw i8, ptr %.12366.i.i, i64 16
  %i.eue = add nuw nsw i32 %.11968.i.i, 4         ; 2 uses
  %exitcond.not.i.i715.3 = icmp eq i32 %i.eue, %i.epy
  br i1 %exitcond.not.i.i715.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph70.i.i, !llvm.loop !240

bb.gy:                                            ; preds = %bb.gw
  %i.euf = icmp eq i32 %4, 1
  br i1 %i.euf, label %bb.gz, label %bb.he

bb.gz:                                            ; preds = %bb.gy
  %i.eug = load float, ptr %1, align 4, !tbaa !59 ; 7 uses
  %i.euh = icmp eq i32 %.sroa.speculated.i691, 4
  br i1 %i.euh, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.eui = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gz
  %i.euj = insertelement <4 x float> poison, float %i.eug, i64 0
  %i.euk = shufflevector <4 x float> %i.euj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.eul = phi fast <4 x float> [ %i.eui, %bb.ha ], [ %i.euk, %bb.hb ] ; 4 uses
  %i.eum = icmp sgt i32 %i.epy, 3
  br i1 %i.eum, label %.lr.ph.i37.i708, label %.preheader.i34.i703

.lr.ph.i37.i708:                                  ; preds = %bb.hc
  %i.eun = fcmp fast oeq <4 x float> %i.eul, zeroinitializer ; 2 uses
  %i.euo = fcmp fast olt <4 x float> %i.eul, zeroinitializer
  %i.eup = bitcast <4 x float> %i.eul to <4 x i32>
  %isneg.inv.i38.i = icmp slt <4 x i32> %i.eup, zeroinitializer
  %i.euq = select <4 x i1> %isneg.inv.i38.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.eur = fdiv fast <4 x float> splat (float 1.000000e+00), %i.eul
  br label %bb.hd

.preheader.loopexit.i39.i709:                     ; preds = %bb.hd
  %i.eus = and i32 %i.epy, 2147483644
  br label %.preheader.i34.i703

.preheader.i34.i703:                              ; preds = %.preheader.loopexit.i39.i709, %bb.hc
  %.019.lcssa.i.i704 = phi ptr [ %2, %bb.hc ], [ %i.exk, %.preheader.loopexit.i39.i709 ] ; 4 uses
  %.017.lcssa.i.i705 = phi i32 [ 0, %bb.hc ], [ %i.eus, %.preheader.loopexit.i39.i709 ] ; 4 uses
  %.0.lcssa.i35.i706 = phi ptr [ %0, %bb.hc ], [ %i.exj, %.preheader.loopexit.i39.i709 ] ; 4 uses
  %i.eut = icmp slt i32 %.017.lcssa.i.i705, %i.epy
  br i1 %i.eut, label %.lr.ph65.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph65.i.i.preheader:                           ; preds = %.preheader.i34.i703
  %.0.lcssa.i35.i7062645 = ptrtoaddr ptr %.0.lcssa.i35.i706 to i64
  %.019.lcssa.i.i7042644 = ptrtoaddr ptr %.019.lcssa.i.i704 to i64
  %i.euu = xor i32 %.017.lcssa.i.i705, -1
  %i.euv = add i32 %i.epy, %i.euu                 ; 2 uses
  %i.euw = zext i32 %i.euv to i64
  %i.eux = add nuw nsw i64 %i.euw, 1              ; 2 uses
  %min.iters.check2648 = icmp ult i32 %i.euv, 3
  %i.euy = sub i64 %.0.lcssa.i35.i7062645, %.019.lcssa.i.i7042644
  %diff.check2646 = icmp ugt i64 %i.euy, -16
  %or.cond3392.a = select i1 %min.iters.check2648, i1 true, i1 %diff.check2646
  br i1 %or.cond3392.a, label %.lr.ph65.i.i.preheader3567, label %vector.ph2649

vector.ph2649:                                    ; preds = %.lr.ph65.i.i.preheader
  %n.vec2650 = and i64 %i.eux, 8589934588         ; 4 uses
  %i.euz = shl nuw nsw i64 %n.vec2650, 2          ; 2 uses
  %i.eva = getelementptr i8, ptr %.0.lcssa.i35.i706, i64 %i.euz
  %i.evb = trunc i64 %n.vec2650 to i32
  %i.evc = add i32 %.017.lcssa.i.i705, %i.evb
  %i.evd = getelementptr i8, ptr %.019.lcssa.i.i704, i64 %i.euz
  %i.eve = insertelement <2 x float> poison, float %i.eug, i64 0
  %i.evf = shufflevector <2 x float> %i.eve, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2651

vector.body2651:                                  ; preds = %vector.body2651, %vector.ph2649
  %index2652 = phi i64 [ 0, %vector.ph2649 ], [ %index.next2656, %vector.body2651 ] ; 2 uses
  %i.evg = shl i64 %index2652, 2                  ; 2 uses
  %next.gep2653 = getelementptr i8, ptr %.0.lcssa.i35.i706, i64 %i.evg
  %next.gep2654 = getelementptr i8, ptr %.019.lcssa.i.i704, i64 %i.evg
  %wide.load2655 = load <4 x float>, ptr %next.gep2653, align 4, !tbaa !59
  %i.evh = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %wide.load2655, <4 x float> %i.evf)
  store <4 x float> %i.evh, ptr %next.gep2654, align 4, !tbaa !59
  %index.next2656 = add nuw i64 %index2652, 4     ; 2 uses
  %i.evi = icmp eq i64 %index.next2656, %n.vec2650
  br i1 %i.evi, label %middle.block2657, label %vector.body2651, !llvm.loop !241

middle.block2657:                                 ; preds = %vector.body2651
  %cmp.n2658 = icmp eq i64 %i.eux, %n.vec2650
  br i1 %cmp.n2658, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph65.i.i.preheader3567

.lr.ph65.i.i.preheader3567:                       ; preds = %.lr.ph65.i.i.preheader, %middle.block2657
  %.164.i.i.ph = phi ptr [ %.0.lcssa.i35.i706, %.lr.ph65.i.i.preheader ], [ %i.eva, %middle.block2657 ] ; 2 uses
  %.11863.i.i.ph = phi i32 [ %.017.lcssa.i.i705, %.lr.ph65.i.i.preheader ], [ %i.evc, %middle.block2657 ] ; 4 uses
  %.12062.i.i.ph = phi ptr [ %.019.lcssa.i.i704, %.lr.ph65.i.i.preheader ], [ %i.evd, %middle.block2657 ] ; 2 uses
  %i.evj = sub i32 %i.epy, %.11863.i.i.ph
  %xtraiter3815 = and i32 %i.evj, 3               ; 2 uses
  %lcmp.mod3816.not = icmp eq i32 %xtraiter3815, 0
  br i1 %lcmp.mod3816.not, label %.lr.ph65.i.i.prol.loopexit, label %.lr.ph65.i.i.prol

.lr.ph65.i.i.prol:                                ; preds = %.lr.ph65.i.i.preheader3567, %.lr.ph65.i.i.prol
  %.164.i.i.prol = phi ptr [ %i.evm, %.lr.ph65.i.i.prol ], [ %.164.i.i.ph, %.lr.ph65.i.i.preheader3567 ] ; 2 uses
  %.11863.i.i.prol = phi i32 [ %i.evo, %.lr.ph65.i.i.prol ], [ %.11863.i.i.ph, %.lr.ph65.i.i.preheader3567 ]
  %.12062.i.i.prol = phi ptr [ %i.evn, %.lr.ph65.i.i.prol ], [ %.12062.i.i.ph, %.lr.ph65.i.i.preheader3567 ] ; 2 uses
  %prol.iter3817 = phi i32 [ %prol.iter3817.next, %.lr.ph65.i.i.prol ], [ 0, %.lr.ph65.i.i.preheader3567 ]
  %i.evk = load float, ptr %.164.i.i.prol, align 4, !tbaa !59
  %i.evl = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.evk, float %i.eug)
  store float %i.evl, ptr %.12062.i.i.prol, align 4, !tbaa !59
  %i.evm = getelementptr inbounds nuw i8, ptr %.164.i.i.prol, i64 4 ; 2 uses
  %i.evn = getelementptr inbounds nuw i8, ptr %.12062.i.i.prol, i64 4 ; 2 uses
  %i.evo = add nuw nsw i32 %.11863.i.i.prol, 1    ; 2 uses
  %prol.iter3817.next = add i32 %prol.iter3817, 1 ; 2 uses
  %prol.iter3817.cmp.not = icmp eq i32 %prol.iter3817.next, %xtraiter3815
  br i1 %prol.iter3817.cmp.not, label %.lr.ph65.i.i.prol.loopexit, label %.lr.ph65.i.i.prol, !llvm.loop !242

.lr.ph65.i.i.prol.loopexit:                       ; preds = %.lr.ph65.i.i.prol, %.lr.ph65.i.i.preheader3567
  %.164.i.i.unr = phi ptr [ %.164.i.i.ph, %.lr.ph65.i.i.preheader3567 ], [ %i.evm, %.lr.ph65.i.i.prol ]
  %.11863.i.i.unr = phi i32 [ %.11863.i.i.ph, %.lr.ph65.i.i.preheader3567 ], [ %i.evo, %.lr.ph65.i.i.prol ]
  %.12062.i.i.unr = phi ptr [ %.12062.i.i.ph, %.lr.ph65.i.i.preheader3567 ], [ %i.evn, %.lr.ph65.i.i.prol ]
  %i.evp = sub i32 %.11863.i.i.ph, %i.epy
  %i.evq = icmp ugt i32 %i.evp, -4
  br i1 %i.evq, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph65.i.i

bb.hd:                                            ; preds = %bb.hd, %.lr.ph.i37.i708
  %.059.i.i = phi ptr [ %0, %.lr.ph.i37.i708 ], [ %i.exj, %bb.hd ] ; 2 uses
  %.01758.i.i = phi i32 [ 0, %.lr.ph.i37.i708 ], [ %i.exl, %bb.hd ]
  %.01957.i.i = phi ptr [ %2, %.lr.ph.i37.i708 ], [ %i.exk, %bb.hd ] ; 2 uses
  %i.evr = load <4 x float>, ptr %.059.i.i, align 1, !tbaa !60 ; 4 uses
  %i.evs = fcmp fast oeq <4 x float> %i.evr, zeroinitializer ; 2 uses
  %.not56.i.i = or <4 x i1> %i.eun, %i.evs
  %i.evt = bitcast <4 x float> %i.evr to <4 x i32>
  %i.evu = and <4 x i32> %i.evt, splat (i32 -2147483648)
  %i.evv = fcmp fast olt <4 x float> %i.evr, zeroinitializer
  %i.evw = select <4 x i1> %i.evv, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.evx = select <4 x i1> %i.euo, <4 x float> %i.evw, <4 x float> zeroinitializer
  %i.evy = fmul fast <4 x float> %i.evr, %i.eur   ; 2 uses
  %i.evz = bitcast <4 x float> %i.evy to <4 x i32>
  %i.ewa = and <4 x i32> %i.evz, splat (i32 -2147483648)
  %i.ewb = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.evy) ; 3 uses
  %i.ewc = fcmp fast ogt <4 x float> %i.ewb, splat (float 1.000000e+00) ; 2 uses
  %i.ewd = select <4 x i1> %i.ewc, <4 x float> splat (float -1.000000e+00), <4 x float> %i.ewb
  %i.ewe = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ewb, <4 x float> splat (float 1.000000e+00))
  %i.ewf = fdiv fast <4 x float> %i.ewd, %i.ewe   ; 3 uses
  %i.ewg = fmul fast <4 x float> %i.ewf, %i.ewf   ; 3 uses
  %i.ewh = fmul fast <4 x float> %i.ewg, %i.ewg   ; 7 uses
  %i.ewi = fmul fast <4 x float> %i.ewh, splat (float f0x3C83A25C)
  %i.ewj = fsub fast <4 x float> splat (float f0xBD99B01E), %i.ewi
  %i.ewk = fmul fast <4 x float> %i.ewj, %i.ewh
  %i.ewl = fadd fast <4 x float> %i.ewk, splat (float f0xBE117200)
  %i.ewm = fmul fast <4 x float> %i.ewl, %i.ewh
  %i.ewn = fadd fast <4 x float> %i.ewm, splat (float f0xBEAAAA53)
  %i.ewo = fmul fast <4 x float> %i.ewh, splat (float f0x3B3AC537)
  %i.ewp = fadd fast <4 x float> %i.ewo, splat (float f0x3D2EDD4E)
  %i.ewq = fmul fast <4 x float> %i.ewp, %i.ewh
  %i.ewr = fadd fast <4 x float> %i.ewq, splat (float f0x3DD9ED24)
  %i.ews = fmul fast <4 x float> %i.ewr, %i.ewh
  %i.ewt = fadd fast <4 x float> %i.ews, splat (float f0x3E4CB974)
  %i.ewu = fmul fast <4 x float> %i.ewt, %i.ewh
  %i.ewv = fadd fast <4 x float> %i.ewu, splat (float 1.000000e+00)
  %i.eww = fmul fast <4 x float> %i.ewn, %i.ewg
  %i.ewx = fadd fast <4 x float> %i.ewv, %i.eww
  %i.ewy = fmul fast <4 x float> %i.ewx, %i.ewf
  %i.ewz = select <4 x i1> %i.ewc, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.exa = fadd fast <4 x float> %i.ewy, %i.ewz
  %i.exb = bitcast <4 x float> %i.exa to <4 x i32>
  %i.exc = or <4 x i32> %i.ewa, %i.exb
  %i.exd = bitcast <4 x i32> %i.exc to <4 x float>
  %i.exe = fadd fast <4 x float> %i.evx, %i.exd
  %i.exf = or disjoint <4 x i32> %i.evu, splat (i32 1070141403)
  %i.exg = bitcast <4 x float> %i.exe to <4 x i32>
  %10 = select <4 x i1> %.not56.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.exg
  %i.exh = select <4 x i1> %i.eun, <4 x i32> %i.exf, <4 x i32> zeroinitializer
  %i.exi = select <4 x i1> %i.evs, <4 x i32> %i.euq, <4 x i32> %i.exh
  %11 = or <4 x i32> %10, %i.exi
  store <4 x i32> %11, ptr %.01957.i.i, align 1, !tbaa !60
  %i.exj = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 16 ; 2 uses
  %i.exk = getelementptr inbounds nuw i8, ptr %.01957.i.i, i64 16 ; 2 uses
  %i.exl = add nuw nsw i32 %.01758.i.i, 4         ; 2 uses
  %i.exm = or disjoint i32 %i.exl, 3
  %i.exn = icmp slt i32 %i.exm, %i.epy
  br i1 %i.exn, label %bb.hd, label %.preheader.loopexit.i39.i709, !llvm.loop !243

.lr.ph65.i.i:                                     ; preds = %.lr.ph65.i.i.prol.loopexit, %.lr.ph65.i.i
  %.164.i.i = phi ptr [ %i.eyc, %.lr.ph65.i.i ], [ %.164.i.i.unr, %.lr.ph65.i.i.prol.loopexit ] ; 5 uses
  %.11863.i.i = phi i32 [ %i.eye, %.lr.ph65.i.i ], [ %.11863.i.i.unr, %.lr.ph65.i.i.prol.loopexit ]
  %.12062.i.i = phi ptr [ %i.eyd, %.lr.ph65.i.i ], [ %.12062.i.i.unr, %.lr.ph65.i.i.prol.loopexit ] ; 5 uses
  %i.exo = load float, ptr %.164.i.i, align 4, !tbaa !59
  %i.exp = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.exo, float %i.eug)
  store float %i.exp, ptr %.12062.i.i, align 4, !tbaa !59
  %i.exq = getelementptr inbounds nuw i8, ptr %.164.i.i, i64 4
  %i.exr = getelementptr inbounds nuw i8, ptr %.12062.i.i, i64 4
  %i.exs = load float, ptr %i.exq, align 4, !tbaa !59
  %i.ext = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.exs, float %i.eug)
  store float %i.ext, ptr %i.exr, align 4, !tbaa !59
  %i.exu = getelementptr inbounds nuw i8, ptr %.164.i.i, i64 8
  %i.exv = getelementptr inbounds nuw i8, ptr %.12062.i.i, i64 8
  %i.exw = load float, ptr %i.exu, align 4, !tbaa !59
  %i.exx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.exw, float %i.eug)
  store float %i.exx, ptr %i.exv, align 4, !tbaa !59
  %i.exy = getelementptr inbounds nuw i8, ptr %.164.i.i, i64 12
  %i.exz = getelementptr inbounds nuw i8, ptr %.12062.i.i, i64 12
  %i.eya = load float, ptr %i.exy, align 4, !tbaa !59
  %i.eyb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.eya, float %i.eug)
  store float %i.eyb, ptr %i.exz, align 4, !tbaa !59
  %i.eyc = getelementptr inbounds nuw i8, ptr %.164.i.i, i64 16
  %i.eyd = getelementptr inbounds nuw i8, ptr %.12062.i.i, i64 16
  %i.eye = add nuw nsw i32 %.11863.i.i, 4         ; 2 uses
  %exitcond.not.i36.i707.3 = icmp eq i32 %i.eye, %i.epy
  br i1 %exitcond.not.i36.i707.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph65.i.i, !llvm.loop !244

bb.he:                                            ; preds = %bb.gy
  %i.eyf = icmp eq i32 %3, 1
  br i1 %i.eyf, label %bb.hf, label %bb.hk

bb.hf:                                            ; preds = %bb.he
  %i.eyg = load float, ptr %0, align 4, !tbaa !59 ; 7 uses
  %i.eyh = icmp eq i32 %.sroa.speculated.i691, 4
  br i1 %i.eyh, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.eyi = load <4 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.hi

bb.hh:                                            ; preds = %bb.hf
  %i.eyj = insertelement <4 x float> poison, float %i.eyg, i64 0
  %i.eyk = shufflevector <4 x float> %i.eyj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.eyl = phi fast <4 x float> [ %i.eyi, %bb.hg ], [ %i.eyk, %bb.hh ] ; 4 uses
  %i.eym = icmp sgt i32 %i.epy, 3
  br i1 %i.eym, label %.lr.ph.i49.i702, label %.preheader.i40.i697

.lr.ph.i49.i702:                                  ; preds = %bb.hi
  %i.eyn = fcmp fast oeq <4 x float> %i.eyl, zeroinitializer ; 2 uses
  %i.eyo = bitcast <4 x float> %i.eyl to <4 x i32>
  %i.eyp = and <4 x i32> %i.eyo, splat (i32 -2147483648)
  %i.eyq = fcmp fast olt <4 x float> %i.eyl, zeroinitializer
  %i.eyr = select <4 x i1> %i.eyq, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.eys = or disjoint <4 x i32> %i.eyp, splat (i32 1070141403)
  br label %bb.hj

.preheader.loopexit.i55.i:                        ; preds = %bb.hj
  %i.eyt = and i32 %i.epy, 2147483644
  br label %.preheader.i40.i697

.preheader.i40.i697:                              ; preds = %.preheader.loopexit.i55.i, %bb.hi
  %.019.lcssa.i41.i698 = phi ptr [ %2, %bb.hi ], [ %i.fbj, %.preheader.loopexit.i55.i ] ; 4 uses
  %.017.lcssa.i42.i699 = phi i32 [ 0, %bb.hi ], [ %i.eyt, %.preheader.loopexit.i55.i ] ; 4 uses
  %.0.lcssa.i43.i700 = phi ptr [ %1, %bb.hi ], [ %i.fbi, %.preheader.loopexit.i55.i ] ; 4 uses
  %i.eyu = icmp slt i32 %.017.lcssa.i42.i699, %i.epy
  br i1 %i.eyu, label %.lr.ph65.i44.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph65.i44.i.preheader:                         ; preds = %.preheader.i40.i697
  %.0.lcssa.i43.i7002626 = ptrtoaddr ptr %.0.lcssa.i43.i700 to i64
  %.019.lcssa.i41.i6982625 = ptrtoaddr ptr %.019.lcssa.i41.i698 to i64
  %i.eyv = xor i32 %.017.lcssa.i42.i699, -1
  %i.eyw = add i32 %i.epy, %i.eyv                 ; 2 uses
  %i.eyx = zext i32 %i.eyw to i64
  %i.eyy = add nuw nsw i64 %i.eyx, 1              ; 2 uses
  %min.iters.check2629 = icmp ult i32 %i.eyw, 3
  %i.eyz = sub i64 %.0.lcssa.i43.i7002626, %.019.lcssa.i41.i6982625
  %diff.check2627 = icmp ugt i64 %i.eyz, -16
  %or.cond3393.a = select i1 %min.iters.check2629, i1 true, i1 %diff.check2627
  br i1 %or.cond3393.a, label %.lr.ph65.i44.i.preheader3571, label %vector.ph2630

vector.ph2630:                                    ; preds = %.lr.ph65.i44.i.preheader
  %n.vec2631 = and i64 %i.eyy, 8589934588         ; 4 uses
  %i.eza = shl nuw nsw i64 %n.vec2631, 2          ; 2 uses
  %i.ezb = getelementptr i8, ptr %.0.lcssa.i43.i700, i64 %i.eza
  %i.ezc = trunc i64 %n.vec2631 to i32
  %i.ezd = add i32 %.017.lcssa.i42.i699, %i.ezc
  %i.eze = getelementptr i8, ptr %.019.lcssa.i41.i698, i64 %i.eza
  %i.ezf = insertelement <2 x float> poison, float %i.eyg, i64 0
  %i.ezg = shufflevector <2 x float> %i.ezf, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2632

vector.body2632:                                  ; preds = %vector.body2632, %vector.ph2630
  %index2633 = phi i64 [ 0, %vector.ph2630 ], [ %index.next2637, %vector.body2632 ] ; 2 uses
  %i.ezh = shl i64 %index2633, 2                  ; 2 uses
  %next.gep2634 = getelementptr i8, ptr %.0.lcssa.i43.i700, i64 %i.ezh
  %next.gep2635 = getelementptr i8, ptr %.019.lcssa.i41.i698, i64 %i.ezh
  %wide.load2636 = load <4 x float>, ptr %next.gep2634, align 4, !tbaa !59
  %i.ezi = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.ezg, <4 x float> %wide.load2636)
  store <4 x float> %i.ezi, ptr %next.gep2635, align 4, !tbaa !59
  %index.next2637 = add nuw i64 %index2633, 4     ; 2 uses
  %i.ezj = icmp eq i64 %index.next2637, %n.vec2631
  br i1 %i.ezj, label %middle.block2638, label %vector.body2632, !llvm.loop !245

middle.block2638:                                 ; preds = %vector.body2632
  %cmp.n2639 = icmp eq i64 %i.eyy, %n.vec2631
  br i1 %cmp.n2639, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph65.i44.i.preheader3571

.lr.ph65.i44.i.preheader3571:                     ; preds = %.lr.ph65.i44.i.preheader, %middle.block2638
  %.164.i45.i.ph = phi ptr [ %.0.lcssa.i43.i700, %.lr.ph65.i44.i.preheader ], [ %i.ezb, %middle.block2638 ] ; 2 uses
  %.11863.i46.i.ph = phi i32 [ %.017.lcssa.i42.i699, %.lr.ph65.i44.i.preheader ], [ %i.ezd, %middle.block2638 ] ; 4 uses
  %.12062.i47.i.ph = phi ptr [ %.019.lcssa.i41.i698, %.lr.ph65.i44.i.preheader ], [ %i.eze, %middle.block2638 ] ; 2 uses
  %i.ezk = sub i32 %i.epy, %.11863.i46.i.ph
  %xtraiter3812 = and i32 %i.ezk, 3               ; 2 uses
  %lcmp.mod3813.not = icmp eq i32 %xtraiter3812, 0
  br i1 %lcmp.mod3813.not, label %.lr.ph65.i44.i.prol.loopexit, label %.lr.ph65.i44.i.prol

.lr.ph65.i44.i.prol:                              ; preds = %.lr.ph65.i44.i.preheader3571, %.lr.ph65.i44.i.prol
  %.164.i45.i.prol = phi ptr [ %i.ezn, %.lr.ph65.i44.i.prol ], [ %.164.i45.i.ph, %.lr.ph65.i44.i.preheader3571 ] ; 2 uses
  %.11863.i46.i.prol = phi i32 [ %i.ezp, %.lr.ph65.i44.i.prol ], [ %.11863.i46.i.ph, %.lr.ph65.i44.i.preheader3571 ]
  %.12062.i47.i.prol = phi ptr [ %i.ezo, %.lr.ph65.i44.i.prol ], [ %.12062.i47.i.ph, %.lr.ph65.i44.i.preheader3571 ] ; 2 uses
  %prol.iter3814 = phi i32 [ %prol.iter3814.next, %.lr.ph65.i44.i.prol ], [ 0, %.lr.ph65.i44.i.preheader3571 ]
  %i.ezl = load float, ptr %.164.i45.i.prol, align 4, !tbaa !59
  %i.ezm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.eyg, float %i.ezl)
  store float %i.ezm, ptr %.12062.i47.i.prol, align 4, !tbaa !59
  %i.ezn = getelementptr inbounds nuw i8, ptr %.164.i45.i.prol, i64 4 ; 2 uses
  %i.ezo = getelementptr inbounds nuw i8, ptr %.12062.i47.i.prol, i64 4 ; 2 uses
  %i.ezp = add nuw nsw i32 %.11863.i46.i.prol, 1  ; 2 uses
  %prol.iter3814.next = add i32 %prol.iter3814, 1 ; 2 uses
  %prol.iter3814.cmp.not = icmp eq i32 %prol.iter3814.next, %xtraiter3812
  br i1 %prol.iter3814.cmp.not, label %.lr.ph65.i44.i.prol.loopexit, label %.lr.ph65.i44.i.prol, !llvm.loop !246

.lr.ph65.i44.i.prol.loopexit:                     ; preds = %.lr.ph65.i44.i.prol, %.lr.ph65.i44.i.preheader3571
  %.164.i45.i.unr = phi ptr [ %.164.i45.i.ph, %.lr.ph65.i44.i.preheader3571 ], [ %i.ezn, %.lr.ph65.i44.i.prol ]
  %.11863.i46.i.unr = phi i32 [ %.11863.i46.i.ph, %.lr.ph65.i44.i.preheader3571 ], [ %i.ezp, %.lr.ph65.i44.i.prol ]
  %.12062.i47.i.unr = phi ptr [ %.12062.i47.i.ph, %.lr.ph65.i44.i.preheader3571 ], [ %i.ezo, %.lr.ph65.i44.i.prol ]
  %i.ezq = sub i32 %.11863.i46.i.ph, %i.epy
  %i.ezr = icmp ugt i32 %i.ezq, -4
  br i1 %i.ezr, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph65.i44.i

bb.hj:                                            ; preds = %bb.hj, %.lr.ph.i49.i702
  %.059.i50.i = phi ptr [ %1, %.lr.ph.i49.i702 ], [ %i.fbi, %bb.hj ] ; 2 uses
  %.01758.i51.i = phi i32 [ 0, %.lr.ph.i49.i702 ], [ %i.fbk, %bb.hj ]
  %.01957.i52.i = phi ptr [ %2, %.lr.ph.i49.i702 ], [ %i.fbj, %bb.hj ] ; 2 uses
  %i.ezs = load <4 x float>, ptr %.059.i50.i, align 1, !tbaa !60 ; 4 uses
  %i.ezt = fcmp fast oeq <4 x float> %i.ezs, zeroinitializer ; 2 uses
  %.not56.i53.i = or <4 x i1> %i.eyn, %i.ezt
  %i.ezu = fcmp fast olt <4 x float> %i.ezs, zeroinitializer
  %i.ezv = select <4 x i1> %i.ezu, <4 x float> %i.eyr, <4 x float> zeroinitializer
  %i.ezw = fdiv fast <4 x float> %i.eyl, %i.ezs   ; 2 uses
  %i.ezx = bitcast <4 x float> %i.ezw to <4 x i32>
  %i.ezy = and <4 x i32> %i.ezx, splat (i32 -2147483648)
  %i.ezz = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ezw) ; 3 uses
  %i.faa = fcmp fast ogt <4 x float> %i.ezz, splat (float 1.000000e+00) ; 2 uses
  %i.fab = select <4 x i1> %i.faa, <4 x float> splat (float -1.000000e+00), <4 x float> %i.ezz
  %i.fac = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ezz, <4 x float> splat (float 1.000000e+00))
  %i.fad = fdiv fast <4 x float> %i.fab, %i.fac   ; 3 uses
  %i.fae = fmul fast <4 x float> %i.fad, %i.fad   ; 3 uses
  %i.faf = fmul fast <4 x float> %i.fae, %i.fae   ; 7 uses
  %i.fag = fmul fast <4 x float> %i.faf, splat (float f0x3C83A25C)
  %i.fah = fsub fast <4 x float> splat (float f0xBD99B01E), %i.fag
  %i.fai = fmul fast <4 x float> %i.fah, %i.faf
  %i.faj = fadd fast <4 x float> %i.fai, splat (float f0xBE117200)
  %i.fak = fmul fast <4 x float> %i.faj, %i.faf
  %i.fal = fadd fast <4 x float> %i.fak, splat (float f0xBEAAAA53)
  %i.fam = fmul fast <4 x float> %i.faf, splat (float f0x3B3AC537)
  %i.fan = fadd fast <4 x float> %i.fam, splat (float f0x3D2EDD4E)
  %i.fao = fmul fast <4 x float> %i.fan, %i.faf
  %i.fap = fadd fast <4 x float> %i.fao, splat (float f0x3DD9ED24)
  %i.faq = fmul fast <4 x float> %i.fap, %i.faf
  %i.far = fadd fast <4 x float> %i.faq, splat (float f0x3E4CB974)
  %i.fas = fmul fast <4 x float> %i.far, %i.faf
  %i.fat = fadd fast <4 x float> %i.fas, splat (float 1.000000e+00)
  %i.fau = fmul fast <4 x float> %i.fal, %i.fae
  %i.fav = fadd fast <4 x float> %i.fat, %i.fau
  %i.faw = fmul fast <4 x float> %i.fav, %i.fad
  %i.fax = select <4 x i1> %i.faa, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.fay = fadd fast <4 x float> %i.faw, %i.fax
  %i.faz = bitcast <4 x float> %i.fay to <4 x i32>
  %i.fba = or <4 x i32> %i.ezy, %i.faz
  %i.fbb = bitcast <4 x i32> %i.fba to <4 x float>
  %i.fbc = fadd fast <4 x float> %i.ezv, %i.fbb
  %i.fbd = bitcast <4 x float> %i.ezs to <4 x i32>
  %isneg.inv.i54.i = icmp slt <4 x i32> %i.fbd, zeroinitializer
  %i.fbe = select <4 x i1> %isneg.inv.i54.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.fbf = bitcast <4 x float> %i.fbc to <4 x i32>
  %12 = select <4 x i1> %.not56.i53.i, <4 x i32> zeroinitializer, <4 x i32> %i.fbf
  %i.fbg = select <4 x i1> %i.ezt, <4 x i32> %i.eys, <4 x i32> zeroinitializer
  %i.fbh = select <4 x i1> %i.eyn, <4 x i32> %i.fbe, <4 x i32> %i.fbg
  %13 = or <4 x i32> %12, %i.fbh
  store <4 x i32> %13, ptr %.01957.i52.i, align 1, !tbaa !60
  %i.fbi = getelementptr inbounds nuw i8, ptr %.059.i50.i, i64 16 ; 2 uses
  %i.fbj = getelementptr inbounds nuw i8, ptr %.01957.i52.i, i64 16 ; 2 uses
  %i.fbk = add nuw nsw i32 %.01758.i51.i, 4       ; 2 uses
  %i.fbl = or disjoint i32 %i.fbk, 3
  %i.fbm = icmp slt i32 %i.fbl, %i.epy
  br i1 %i.fbm, label %bb.hj, label %.preheader.loopexit.i55.i, !llvm.loop !247

.lr.ph65.i44.i:                                   ; preds = %.lr.ph65.i44.i.prol.loopexit, %.lr.ph65.i44.i
  %.164.i45.i = phi ptr [ %i.fcb, %.lr.ph65.i44.i ], [ %.164.i45.i.unr, %.lr.ph65.i44.i.prol.loopexit ] ; 5 uses
  %.11863.i46.i = phi i32 [ %i.fcd, %.lr.ph65.i44.i ], [ %.11863.i46.i.unr, %.lr.ph65.i44.i.prol.loopexit ]
  %.12062.i47.i = phi ptr [ %i.fcc, %.lr.ph65.i44.i ], [ %.12062.i47.i.unr, %.lr.ph65.i44.i.prol.loopexit ] ; 5 uses
  %i.fbn = load float, ptr %.164.i45.i, align 4, !tbaa !59
  %i.fbo = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.eyg, float %i.fbn)
  store float %i.fbo, ptr %.12062.i47.i, align 4, !tbaa !59
  %i.fbp = getelementptr inbounds nuw i8, ptr %.164.i45.i, i64 4
  %i.fbq = getelementptr inbounds nuw i8, ptr %.12062.i47.i, i64 4
  %i.fbr = load float, ptr %i.fbp, align 4, !tbaa !59
  %i.fbs = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.eyg, float %i.fbr)
  store float %i.fbs, ptr %i.fbq, align 4, !tbaa !59
  %i.fbt = getelementptr inbounds nuw i8, ptr %.164.i45.i, i64 8
  %i.fbu = getelementptr inbounds nuw i8, ptr %.12062.i47.i, i64 8
  %i.fbv = load float, ptr %i.fbt, align 4, !tbaa !59
  %i.fbw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.eyg, float %i.fbv)
  store float %i.fbw, ptr %i.fbu, align 4, !tbaa !59
  %i.fbx = getelementptr inbounds nuw i8, ptr %.164.i45.i, i64 12
  %i.fby = getelementptr inbounds nuw i8, ptr %.12062.i47.i, i64 12
  %i.fbz = load float, ptr %i.fbx, align 4, !tbaa !59
  %i.fca = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.eyg, float %i.fbz)
  store float %i.fca, ptr %i.fby, align 4, !tbaa !59
  %i.fcb = getelementptr inbounds nuw i8, ptr %.164.i45.i, i64 16
  %i.fcc = getelementptr inbounds nuw i8, ptr %.12062.i47.i, i64 16
  %i.fcd = add nuw nsw i32 %.11863.i46.i, 4       ; 2 uses
  %exitcond.not.i48.i701.3 = icmp eq i32 %i.fcd, %i.epy
  br i1 %exitcond.not.i48.i701.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph65.i44.i, !llvm.loop !248

bb.hk:                                            ; preds = %bb.he, %bb.gv
  %i.fce = icmp eq i32 %6, 1
  br i1 %i.fce, label %bb.hl, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.hl:                                            ; preds = %bb.hk
  %i.fcf = icmp eq i32 %3, %4
  br i1 %i.fcf, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.fcg = icmp eq i32 %.sroa.speculated.i691, 4
  %i.fch = icmp sgt i32 %.sroa.speculated74.i.a, 0
  %or.cond.i.i694 = and i1 %i.fch, %i.fcg
  br i1 %or.cond.i.i694, label %.lr.ph.i56.i695, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i56.i695:                                  ; preds = %bb.hm, %.lr.ph.i56.i695
  %.051.i.i = phi ptr [ %i.feh, %.lr.ph.i56.i695 ], [ %0, %bb.hm ] ; 2 uses
  %.01050.i.i = phi i32 [ %i.fek, %.lr.ph.i56.i695 ], [ 0, %bb.hm ]
  %.01149.i.i = phi ptr [ %i.fei, %.lr.ph.i56.i695 ], [ %1, %bb.hm ] ; 2 uses
  %.01248.i.i = phi ptr [ %i.fej, %.lr.ph.i56.i695 ], [ %2, %bb.hm ] ; 2 uses
  %i.fci = load <4 x float>, ptr %.051.i.i, align 1, !tbaa !60 ; 4 uses
  %i.fcj = load float, ptr %.01149.i.i, align 4, !tbaa !59
  %i.fck = insertelement <4 x float> poison, float %i.fcj, i64 0
  %i.fcl = shufflevector <4 x float> %i.fck, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.fcm = fcmp fast oeq <4 x float> %i.fcl, zeroinitializer ; 2 uses
  %i.fcn = fcmp fast oeq <4 x float> %i.fci, zeroinitializer ; 2 uses
  %.not47.i.i = or <4 x i1> %i.fcn, %i.fcm
  %i.fco = bitcast <4 x float> %i.fci to <4 x i32>
  %i.fcp = and <4 x i32> %i.fco, splat (i32 -2147483648)
  %i.fcq = fcmp fast olt <4 x float> %i.fcl, zeroinitializer
  %i.fcr = fcmp fast olt <4 x float> %i.fci, zeroinitializer
  %i.fcs = select <4 x i1> %i.fcr, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.fct = select <4 x i1> %i.fcq, <4 x float> %i.fcs, <4 x float> zeroinitializer
  %i.fcu = fdiv fast <4 x float> %i.fci, %i.fcl   ; 2 uses
  %i.fcv = bitcast <4 x float> %i.fcu to <4 x i32>
  %i.fcw = and <4 x i32> %i.fcv, splat (i32 -2147483648)
  %i.fcx = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fcu) ; 3 uses
  %i.fcy = fcmp fast ogt <4 x float> %i.fcx, splat (float 1.000000e+00) ; 2 uses
  %i.fcz = select <4 x i1> %i.fcy, <4 x float> splat (float -1.000000e+00), <4 x float> %i.fcx
  %i.fda = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.fcx, <4 x float> splat (float 1.000000e+00))
  %i.fdb = fdiv fast <4 x float> %i.fcz, %i.fda   ; 3 uses
  %i.fdc = fmul fast <4 x float> %i.fdb, %i.fdb   ; 3 uses
  %i.fdd = fmul fast <4 x float> %i.fdc, %i.fdc   ; 7 uses
  %i.fde = fmul fast <4 x float> %i.fdd, splat (float f0x3C83A25C)
  %i.fdf = fsub fast <4 x float> splat (float f0xBD99B01E), %i.fde
  %i.fdg = fmul fast <4 x float> %i.fdf, %i.fdd
  %i.fdh = fadd fast <4 x float> %i.fdg, splat (float f0xBE117200)
  %i.fdi = fmul fast <4 x float> %i.fdh, %i.fdd
  %i.fdj = fadd fast <4 x float> %i.fdi, splat (float f0xBEAAAA53)
  %i.fdk = fmul fast <4 x float> %i.fdd, splat (float f0x3B3AC537)
  %i.fdl = fadd fast <4 x float> %i.fdk, splat (float f0x3D2EDD4E)
  %i.fdm = fmul fast <4 x float> %i.fdl, %i.fdd
  %i.fdn = fadd fast <4 x float> %i.fdm, splat (float f0x3DD9ED24)
  %i.fdo = fmul fast <4 x float> %i.fdn, %i.fdd
  %i.fdp = fadd fast <4 x float> %i.fdo, splat (float f0x3E4CB974)
  %i.fdq = fmul fast <4 x float> %i.fdp, %i.fdd
  %i.fdr = fadd fast <4 x float> %i.fdq, splat (float 1.000000e+00)
  %i.fds = fmul fast <4 x float> %i.fdj, %i.fdc
  %i.fdt = fadd fast <4 x float> %i.fdr, %i.fds
  %i.fdu = fmul fast <4 x float> %i.fdt, %i.fdb
  %i.fdv = select <4 x i1> %i.fcy, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.fdw = fadd fast <4 x float> %i.fdu, %i.fdv
  %i.fdx = bitcast <4 x float> %i.fdw to <4 x i32>
  %i.fdy = or <4 x i32> %i.fcw, %i.fdx
  %i.fdz = bitcast <4 x i32> %i.fdy to <4 x float>
  %i.fea = fadd fast <4 x float> %i.fct, %i.fdz
  %i.feb = bitcast <4 x float> %i.fcl to <4 x i32>
  %i.fec = or disjoint <4 x i32> %i.fcp, splat (i32 1070141403)
  %isneg.inv.i57.i = icmp slt <4 x i32> %i.feb, zeroinitializer
  %i.fed = select <4 x i1> %isneg.inv.i57.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.fee = bitcast <4 x float> %i.fea to <4 x i32>
  %14 = select <4 x i1> %.not47.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.fee
  %i.fef = select <4 x i1> %i.fcm, <4 x i32> %i.fec, <4 x i32> zeroinitializer
  %i.feg = select <4 x i1> %i.fcn, <4 x i32> %i.fed, <4 x i32> %i.fef
  %15 = or <4 x i32> %14, %i.feg
  store <4 x i32> %15, ptr %.01248.i.i, align 1, !tbaa !60
  %i.feh = getelementptr inbounds nuw i8, ptr %.051.i.i, i64 16
  %i.fei = getelementptr inbounds nuw i8, ptr %.01149.i.i, i64 4
  %i.fej = getelementptr inbounds nuw i8, ptr %.01248.i.i, i64 16
  %i.fek = add nuw nsw i32 %.01050.i.i, 1         ; 2 uses
  %exitcond.not.i58.i696 = icmp eq i32 %i.fek, %.sroa.speculated74.i.a
  br i1 %exitcond.not.i58.i696, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph.i56.i695, !llvm.loop !249

bb.hn:                                            ; preds = %bb.hl
  %i.fel = icmp eq i32 %4, 1
  br i1 %i.fel, label %bb.ho, label %bb.hq

bb.ho:                                            ; preds = %bb.hn
  %i.fem = icmp sgt i32 %i.epy, 3
  br i1 %i.fem, label %.lr.ph.i59.i.a, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i59.i.a:                                   ; preds = %bb.ho
  %.val.i693 = load float, ptr %1, align 4, !tbaa !59
  %i.fen = insertelement <4 x float> poison, float %.val.i693, i64 0
  %i.feo = shufflevector <4 x float> %i.fen, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.fep = fcmp fast oeq <4 x float> %i.feo, zeroinitializer ; 2 uses
  %i.feq = fcmp fast olt <4 x float> %i.feo, zeroinitializer
  %i.fer = bitcast <4 x float> %i.feo to <4 x i32>
  %isneg.inv.i60.i = icmp slt <4 x i32> %i.fer, zeroinitializer
  %i.fes = select <4 x i1> %isneg.inv.i60.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.fet = fdiv fast <4 x float> splat (float 1.000000e+00), %i.feo
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hp, %.lr.ph.i59.i.a
  %.038.i.i = phi ptr [ %0, %.lr.ph.i59.i.a ], [ %i.fgm, %bb.hp ] ; 2 uses
  %.01037.i.i = phi i32 [ 0, %.lr.ph.i59.i.a ], [ %i.fgo, %bb.hp ]
  %.01136.i.i = phi ptr [ %2, %.lr.ph.i59.i.a ], [ %i.fgn, %bb.hp ] ; 2 uses
  %i.feu = load <4 x float>, ptr %.038.i.i, align 1, !tbaa !60 ; 4 uses
  %i.fev = fcmp fast oeq <4 x float> %i.feu, zeroinitializer ; 2 uses
  %.not35.i.i = or <4 x i1> %i.fep, %i.fev
  %i.few = bitcast <4 x float> %i.feu to <4 x i32>
  %i.fex = and <4 x i32> %i.few, splat (i32 -2147483648)
  %i.fey = fcmp fast olt <4 x float> %i.feu, zeroinitializer
  %i.fez = select <4 x i1> %i.fey, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.ffa = select <4 x i1> %i.feq, <4 x float> %i.fez, <4 x float> zeroinitializer
  %i.ffb = fmul fast <4 x float> %i.feu, %i.fet   ; 2 uses
  %i.ffc = bitcast <4 x float> %i.ffb to <4 x i32>
  %i.ffd = and <4 x i32> %i.ffc, splat (i32 -2147483648)
  %i.ffe = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ffb) ; 3 uses
  %i.fff = fcmp fast ogt <4 x float> %i.ffe, splat (float 1.000000e+00) ; 2 uses
  %i.ffg = select <4 x i1> %i.fff, <4 x float> splat (float -1.000000e+00), <4 x float> %i.ffe
  %i.ffh = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ffe, <4 x float> splat (float 1.000000e+00))
  %i.ffi = fdiv fast <4 x float> %i.ffg, %i.ffh   ; 3 uses
  %i.ffj = fmul fast <4 x float> %i.ffi, %i.ffi   ; 3 uses
  %i.ffk = fmul fast <4 x float> %i.ffj, %i.ffj   ; 7 uses
  %i.ffl = fmul fast <4 x float> %i.ffk, splat (float f0x3C83A25C)
  %i.ffm = fsub fast <4 x float> splat (float f0xBD99B01E), %i.ffl
  %i.ffn = fmul fast <4 x float> %i.ffm, %i.ffk
  %i.ffo = fadd fast <4 x float> %i.ffn, splat (float f0xBE117200)
  %i.ffp = fmul fast <4 x float> %i.ffo, %i.ffk
  %i.ffq = fadd fast <4 x float> %i.ffp, splat (float f0xBEAAAA53)
  %i.ffr = fmul fast <4 x float> %i.ffk, splat (float f0x3B3AC537)
  %i.ffs = fadd fast <4 x float> %i.ffr, splat (float f0x3D2EDD4E)
  %i.fft = fmul fast <4 x float> %i.ffs, %i.ffk
  %i.ffu = fadd fast <4 x float> %i.fft, splat (float f0x3DD9ED24)
  %i.ffv = fmul fast <4 x float> %i.ffu, %i.ffk
  %i.ffw = fadd fast <4 x float> %i.ffv, splat (float f0x3E4CB974)
  %i.ffx = fmul fast <4 x float> %i.ffw, %i.ffk
  %i.ffy = fadd fast <4 x float> %i.ffx, splat (float 1.000000e+00)
  %i.ffz = fmul fast <4 x float> %i.ffq, %i.ffj
  %i.fga = fadd fast <4 x float> %i.ffy, %i.ffz
  %i.fgb = fmul fast <4 x float> %i.fga, %i.ffi
  %i.fgc = select <4 x i1> %i.fff, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.fgd = fadd fast <4 x float> %i.fgb, %i.fgc
  %i.fge = bitcast <4 x float> %i.fgd to <4 x i32>
  %i.fgf = or <4 x i32> %i.ffd, %i.fge
  %i.fgg = bitcast <4 x i32> %i.fgf to <4 x float>
  %i.fgh = fadd fast <4 x float> %i.ffa, %i.fgg
  %i.fgi = or disjoint <4 x i32> %i.fex, splat (i32 1070141403)
  %i.fgj = bitcast <4 x float> %i.fgh to <4 x i32>
  %16 = select <4 x i1> %.not35.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.fgj
  %i.fgk = select <4 x i1> %i.fep, <4 x i32> %i.fgi, <4 x i32> zeroinitializer
  %i.fgl = select <4 x i1> %i.fev, <4 x i32> %i.fes, <4 x i32> %i.fgk
  %17 = or <4 x i32> %16, %i.fgl
  store <4 x i32> %17, ptr %.01136.i.i, align 1, !tbaa !60
  %i.fgm = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 16
  %i.fgn = getelementptr inbounds nuw i8, ptr %.01136.i.i, i64 16
  %i.fgo = add nuw nsw i32 %.01037.i.i, 4         ; 2 uses
  %i.fgp = or disjoint i32 %i.fgo, 3
  %i.fgq = icmp slt i32 %i.fgp, %i.epy
  br i1 %i.fgq, label %bb.hp, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, !llvm.loop !250

bb.hq:                                            ; preds = %bb.hn
  %i.fgr = icmp eq i32 %3, 1
  %i.fgs = icmp eq i32 %.sroa.speculated.i691, 4
  %or.cond.i692 = and i1 %i.fgr, %i.fgs
  br i1 %or.cond.i692, label %.lr.ph.i61.i.a, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i61.i.a:                                   ; preds = %bb.hq
  %i.fgt = load <4 x float>, ptr %0, align 1, !tbaa !60 ; 4 uses
  %i.fgu = fcmp fast oeq <4 x float> %i.fgt, zeroinitializer ; 2 uses
  %i.fgv = bitcast <4 x float> %i.fgt to <4 x i32>
  %i.fgw = and <4 x i32> %i.fgv, splat (i32 -2147483648)
  %i.fgx = fcmp fast olt <4 x float> %i.fgt, zeroinitializer
  %i.fgy = select <4 x i1> %i.fgx, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.fgz = or disjoint <4 x i32> %i.fgw, splat (i32 1070141403)
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hr, %.lr.ph.i61.i.a
  %.048.i.i = phi ptr [ %1, %.lr.ph.i61.i.a ], [ %i.fis, %bb.hr ] ; 2 uses
  %.0947.i.i = phi i32 [ 0, %.lr.ph.i61.i.a ], [ %i.fiu, %bb.hr ]
  %.01046.i.i = phi ptr [ %2, %.lr.ph.i61.i.a ], [ %i.fit, %bb.hr ] ; 2 uses
  %i.fha = load float, ptr %.048.i.i, align 4, !tbaa !59
  %i.fhb = insertelement <4 x float> poison, float %i.fha, i64 0
  %i.fhc = shufflevector <4 x float> %i.fhb, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.fhd = fcmp fast oeq <4 x float> %i.fhc, zeroinitializer ; 2 uses
  %.not45.i.i = or <4 x i1> %i.fgu, %i.fhd
  %i.fhe = fcmp fast olt <4 x float> %i.fhc, zeroinitializer
  %i.fhf = select <4 x i1> %i.fhe, <4 x float> %i.fgy, <4 x float> zeroinitializer
  %i.fhg = fdiv fast <4 x float> %i.fgt, %i.fhc   ; 2 uses
  %i.fhh = bitcast <4 x float> %i.fhg to <4 x i32>
  %i.fhi = and <4 x i32> %i.fhh, splat (i32 -2147483648)
  %i.fhj = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fhg) ; 3 uses
  %i.fhk = fcmp fast ogt <4 x float> %i.fhj, splat (float 1.000000e+00) ; 2 uses
  %i.fhl = select <4 x i1> %i.fhk, <4 x float> splat (float -1.000000e+00), <4 x float> %i.fhj
  %i.fhm = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.fhj, <4 x float> splat (float 1.000000e+00))
  %i.fhn = fdiv fast <4 x float> %i.fhl, %i.fhm   ; 3 uses
  %i.fho = fmul fast <4 x float> %i.fhn, %i.fhn   ; 3 uses
  %i.fhp = fmul fast <4 x float> %i.fho, %i.fho   ; 7 uses
  %i.fhq = fmul fast <4 x float> %i.fhp, splat (float f0x3C83A25C)
  %i.fhr = fsub fast <4 x float> splat (float f0xBD99B01E), %i.fhq
  %i.fhs = fmul fast <4 x float> %i.fhr, %i.fhp
  %i.fht = fadd fast <4 x float> %i.fhs, splat (float f0xBE117200)
  %i.fhu = fmul fast <4 x float> %i.fht, %i.fhp
  %i.fhv = fadd fast <4 x float> %i.fhu, splat (float f0xBEAAAA53)
  %i.fhw = fmul fast <4 x float> %i.fhp, splat (float f0x3B3AC537)
  %i.fhx = fadd fast <4 x float> %i.fhw, splat (float f0x3D2EDD4E)
  %i.fhy = fmul fast <4 x float> %i.fhx, %i.fhp
  %i.fhz = fadd fast <4 x float> %i.fhy, splat (float f0x3DD9ED24)
  %i.fia = fmul fast <4 x float> %i.fhz, %i.fhp
  %i.fib = fadd fast <4 x float> %i.fia, splat (float f0x3E4CB974)
  %i.fic = fmul fast <4 x float> %i.fib, %i.fhp
  %i.fid = fadd fast <4 x float> %i.fic, splat (float 1.000000e+00)
  %i.fie = fmul fast <4 x float> %i.fhv, %i.fho
  %i.fif = fadd fast <4 x float> %i.fid, %i.fie
  %i.fig = fmul fast <4 x float> %i.fif, %i.fhn
  %i.fih = select <4 x i1> %i.fhk, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.fii = fadd fast <4 x float> %i.fig, %i.fih
  %i.fij = bitcast <4 x float> %i.fii to <4 x i32>
  %i.fik = or <4 x i32> %i.fhi, %i.fij
  %i.fil = bitcast <4 x i32> %i.fik to <4 x float>
  %i.fim = fadd fast <4 x float> %i.fhf, %i.fil
  %i.fin = bitcast <4 x float> %i.fhc to <4 x i32>
  %isneg.inv.i62.i = icmp slt <4 x i32> %i.fin, zeroinitializer
  %i.fio = select <4 x i1> %isneg.inv.i62.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.fip = bitcast <4 x float> %i.fim to <4 x i32>
  %18 = select <4 x i1> %.not45.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.fip
  %i.fiq = select <4 x i1> %i.fhd, <4 x i32> %i.fgz, <4 x i32> zeroinitializer
  %i.fir = select <4 x i1> %i.fgu, <4 x i32> %i.fio, <4 x i32> %i.fiq
  %19 = or <4 x i32> %18, %i.fir
  store <4 x i32> %19, ptr %.01046.i.i, align 1, !tbaa !60
  %i.fis = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 4
  %i.fit = getelementptr inbounds nuw i8, ptr %.01046.i.i, i64 16
  %i.fiu = add nuw nsw i32 %.0947.i.i, 1          ; 2 uses
  %exitcond.not.i63.i.a = icmp eq i32 %i.fiu, %.sroa.speculated74.i.a
  br i1 %exitcond.not.i63.i.a, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %bb.hr, !llvm.loop !251

bb.hs:                                            ; preds = %bb.a
  %.sroa.speculated74.i718 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i719 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.fiv = mul i32 %.sroa.speculated.i719, %.sroa.speculated74.i718 ; 26 uses
  %i.fiw = icmp eq i32 %5, %6
  br i1 %i.fiw, label %bb.ht, label %bb.ih

bb.ht:                                            ; preds = %bb.hs
  %i.fix = icmp eq i32 %3, %4
  br i1 %i.fix, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.fiy = icmp sgt i32 %i.fiv, 3
  br i1 %i.fiy, label %.lr.ph.i.i782, label %.preheader.i.i771

.preheader.loopexit.i.i789:                       ; preds = %.lr.ph.i.i782
  %i.fiz = and i32 %i.fiv, 2147483644
  br label %.preheader.i.i771

.preheader.i.i771:                                ; preds = %.preheader.loopexit.i.i789, %bb.hu
  %.022.lcssa.i.i772 = phi ptr [ %2, %bb.hu ], [ %i.flz, %.preheader.loopexit.i.i789 ] ; 5 uses
  %.020.lcssa.i.i773 = phi ptr [ %1, %bb.hu ], [ %i.fly, %.preheader.loopexit.i.i789 ] ; 5 uses
  %.018.lcssa.i.i774 = phi i32 [ 0, %bb.hu ], [ %i.fiz, %.preheader.loopexit.i.i789 ] ; 5 uses
  %.0.lcssa.i.i775 = phi ptr [ %0, %bb.hu ], [ %i.flx, %.preheader.loopexit.i.i789 ] ; 5 uses
  %.022.lcssa.i.i7722600 = ptrtoaddr ptr %.022.lcssa.i.i772 to i64 ; 2 uses
  %.020.lcssa.i.i7732601 = ptrtoaddr ptr %.020.lcssa.i.i773 to i64
  %.0.lcssa.i.i7752603 = ptrtoaddr ptr %.0.lcssa.i.i775 to i64
  %i.fja = icmp slt i32 %.018.lcssa.i.i774, %i.fiv
  br i1 %i.fja, label %.lr.ph70.i.i776.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph70.i.i776.preheader:                        ; preds = %.preheader.i.i771
  %i.fjb = xor i32 %.018.lcssa.i.i774, -1
  %i.fjc = add i32 %i.fiv, %i.fjb                 ; 2 uses
  %i.fjd = zext i32 %i.fjc to i64
  %i.fje = add nuw nsw i64 %i.fjd, 1              ; 2 uses
  %min.iters.check2607 = icmp ult i32 %i.fjc, 11
  br i1 %min.iters.check2607, label %.lr.ph70.i.i776.preheader3578, label %vector.memcheck2599

vector.memcheck2599:                              ; preds = %.lr.ph70.i.i776.preheader
  %i.fjf = sub i64 %.020.lcssa.i.i7732601, %.022.lcssa.i.i7722600
  %diff.check2602 = icmp ugt i64 %i.fjf, -16
  %i.fjg = sub i64 %.0.lcssa.i.i7752603, %.022.lcssa.i.i7722600
  %diff.check2604 = icmp ugt i64 %i.fjg, -16
  %conflict.rdx2605 = or i1 %diff.check2602, %diff.check2604
  br i1 %conflict.rdx2605, label %.lr.ph70.i.i776.preheader3578, label %vector.ph2608

vector.ph2608:                                    ; preds = %vector.memcheck2599
  %n.vec2609 = and i64 %i.fje, 8589934588         ; 4 uses
  %i.fjh = shl nuw nsw i64 %n.vec2609, 2          ; 3 uses
  %i.fji = getelementptr i8, ptr %.0.lcssa.i.i775, i64 %i.fjh
  %i.fjj = trunc i64 %n.vec2609 to i32
  %i.fjk = add i32 %.018.lcssa.i.i774, %i.fjj
  %i.fjl = getelementptr i8, ptr %.020.lcssa.i.i773, i64 %i.fjh
  %i.fjm = getelementptr i8, ptr %.022.lcssa.i.i772, i64 %i.fjh
  br label %vector.body2610

vector.body2610:                                  ; preds = %vector.body2610, %vector.ph2608
  %index2611 = phi i64 [ 0, %vector.ph2608 ], [ %index.next2617, %vector.body2610 ] ; 2 uses
  %i.fjn = shl i64 %index2611, 2                  ; 3 uses
  %next.gep2612 = getelementptr i8, ptr %.0.lcssa.i.i775, i64 %i.fjn
  %next.gep2613 = getelementptr i8, ptr %.020.lcssa.i.i773, i64 %i.fjn
  %next.gep2614 = getelementptr i8, ptr %.022.lcssa.i.i772, i64 %i.fjn
  %wide.load2615 = load <4 x float>, ptr %next.gep2613, align 4, !tbaa !59
  %wide.load2616 = load <4 x float>, ptr %next.gep2612, align 4, !tbaa !59
  %i.fjo = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %wide.load2615, <4 x float> %wide.load2616)
  store <4 x float> %i.fjo, ptr %next.gep2614, align 4, !tbaa !59
  %index.next2617 = add nuw i64 %index2611, 4     ; 2 uses
  %i.fjp = icmp eq i64 %index.next2617, %n.vec2609
  br i1 %i.fjp, label %middle.block2618, label %vector.body2610, !llvm.loop !252

middle.block2618:                                 ; preds = %vector.body2610
  %cmp.n2619 = icmp eq i64 %i.fje, %n.vec2609
  br i1 %cmp.n2619, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph70.i.i776.preheader3578

.lr.ph70.i.i776.preheader3578:                    ; preds = %vector.memcheck2599, %.lr.ph70.i.i776.preheader, %middle.block2618
  %.169.i.i777.ph = phi ptr [ %.0.lcssa.i.i775, %vector.memcheck2599 ], [ %.0.lcssa.i.i775, %.lr.ph70.i.i776.preheader ], [ %i.fji, %middle.block2618 ] ; 2 uses
  %.11968.i.i778.ph = phi i32 [ %.018.lcssa.i.i774, %vector.memcheck2599 ], [ %.018.lcssa.i.i774, %.lr.ph70.i.i776.preheader ], [ %i.fjk, %middle.block2618 ] ; 4 uses
  %.12167.i.i779.ph = phi ptr [ %.020.lcssa.i.i773, %vector.memcheck2599 ], [ %.020.lcssa.i.i773, %.lr.ph70.i.i776.preheader ], [ %i.fjl, %middle.block2618 ] ; 2 uses
  %.12366.i.i780.ph = phi ptr [ %.022.lcssa.i.i772, %vector.memcheck2599 ], [ %.022.lcssa.i.i772, %.lr.ph70.i.i776.preheader ], [ %i.fjm, %middle.block2618 ] ; 2 uses
  %i.fjq = sub i32 %i.fiv, %.11968.i.i778.ph
  %xtraiter3809 = and i32 %i.fjq, 3               ; 2 uses
  %lcmp.mod3810.not = icmp eq i32 %xtraiter3809, 0
  br i1 %lcmp.mod3810.not, label %.lr.ph70.i.i776.prol.loopexit, label %.lr.ph70.i.i776.prol

.lr.ph70.i.i776.prol:                             ; preds = %.lr.ph70.i.i776.preheader3578, %.lr.ph70.i.i776.prol
  %.169.i.i777.prol = phi ptr [ %i.fju, %.lr.ph70.i.i776.prol ], [ %.169.i.i777.ph, %.lr.ph70.i.i776.preheader3578 ] ; 2 uses
  %.11968.i.i778.prol = phi i32 [ %i.fjx, %.lr.ph70.i.i776.prol ], [ %.11968.i.i778.ph, %.lr.ph70.i.i776.preheader3578 ]
  %.12167.i.i779.prol = phi ptr [ %i.fjv, %.lr.ph70.i.i776.prol ], [ %.12167.i.i779.ph, %.lr.ph70.i.i776.preheader3578 ] ; 2 uses
  %.12366.i.i780.prol = phi ptr [ %i.fjw, %.lr.ph70.i.i776.prol ], [ %.12366.i.i780.ph, %.lr.ph70.i.i776.preheader3578 ] ; 2 uses
  %prol.iter3811 = phi i32 [ %prol.iter3811.next, %.lr.ph70.i.i776.prol ], [ 0, %.lr.ph70.i.i776.preheader3578 ]
  %i.fjr = load float, ptr %.12167.i.i779.prol, align 4, !tbaa !59
  %i.fjs = load float, ptr %.169.i.i777.prol, align 4, !tbaa !59
  %i.fjt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fjr, float %i.fjs)
  store float %i.fjt, ptr %.12366.i.i780.prol, align 4, !tbaa !59
  %i.fju = getelementptr inbounds nuw i8, ptr %.169.i.i777.prol, i64 4 ; 2 uses
  %i.fjv = getelementptr inbounds nuw i8, ptr %.12167.i.i779.prol, i64 4 ; 2 uses
  %i.fjw = getelementptr inbounds nuw i8, ptr %.12366.i.i780.prol, i64 4 ; 2 uses
  %i.fjx = add nuw nsw i32 %.11968.i.i778.prol, 1 ; 2 uses
  %prol.iter3811.next = add i32 %prol.iter3811, 1 ; 2 uses
  %prol.iter3811.cmp.not = icmp eq i32 %prol.iter3811.next, %xtraiter3809
  br i1 %prol.iter3811.cmp.not, label %.lr.ph70.i.i776.prol.loopexit, label %.lr.ph70.i.i776.prol, !llvm.loop !253

.lr.ph70.i.i776.prol.loopexit:                    ; preds = %.lr.ph70.i.i776.prol, %.lr.ph70.i.i776.preheader3578
  %.169.i.i777.unr = phi ptr [ %.169.i.i777.ph, %.lr.ph70.i.i776.preheader3578 ], [ %i.fju, %.lr.ph70.i.i776.prol ]
  %.11968.i.i778.unr = phi i32 [ %.11968.i.i778.ph, %.lr.ph70.i.i776.preheader3578 ], [ %i.fjx, %.lr.ph70.i.i776.prol ]
  %.12167.i.i779.unr = phi ptr [ %.12167.i.i779.ph, %.lr.ph70.i.i776.preheader3578 ], [ %i.fjv, %.lr.ph70.i.i776.prol ]
  %.12366.i.i780.unr = phi ptr [ %.12366.i.i780.ph, %.lr.ph70.i.i776.preheader3578 ], [ %i.fjw, %.lr.ph70.i.i776.prol ]
  %i.fjy = sub i32 %.11968.i.i778.ph, %i.fiv
  %i.fjz = icmp ugt i32 %i.fjy, -4
  br i1 %i.fjz, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph70.i.i776

.lr.ph.i.i782:                                    ; preds = %bb.hu, %.lr.ph.i.i782
  %.062.i.i783 = phi ptr [ %i.flx, %.lr.ph.i.i782 ], [ %0, %bb.hu ] ; 2 uses
  %.01861.i.i784 = phi i32 [ %i.fma, %.lr.ph.i.i782 ], [ 0, %bb.hu ]
  %.02060.i.i785 = phi ptr [ %i.fly, %.lr.ph.i.i782 ], [ %1, %bb.hu ] ; 2 uses
  %.02259.i.i786 = phi ptr [ %i.flz, %.lr.ph.i.i782 ], [ %2, %bb.hu ] ; 2 uses
  %i.fka = load <4 x float>, ptr %.062.i.i783, align 1, !tbaa !60 ; 4 uses
  %i.fkb = load <4 x float>, ptr %.02060.i.i785, align 1, !tbaa !60 ; 4 uses
  %i.fkc = fcmp fast oeq <4 x float> %i.fka, zeroinitializer ; 2 uses
  %i.fkd = fcmp fast oeq <4 x float> %i.fkb, zeroinitializer ; 2 uses
  %.not58.i.i787 = or <4 x i1> %i.fkc, %i.fkd
  %i.fke = bitcast <4 x float> %i.fkb to <4 x i32>
  %i.fkf = and <4 x i32> %i.fke, splat (i32 -2147483648)
  %i.fkg = fcmp fast olt <4 x float> %i.fka, zeroinitializer
  %i.fkh = fcmp fast olt <4 x float> %i.fkb, zeroinitializer
  %i.fki = select <4 x i1> %i.fkh, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.fkj = select <4 x i1> %i.fkg, <4 x float> %i.fki, <4 x float> zeroinitializer
  %i.fkk = fdiv fast <4 x float> %i.fkb, %i.fka   ; 2 uses
  %i.fkl = bitcast <4 x float> %i.fkk to <4 x i32>
  %i.fkm = and <4 x i32> %i.fkl, splat (i32 -2147483648)
  %i.fkn = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fkk) ; 3 uses
  %i.fko = fcmp fast ogt <4 x float> %i.fkn, splat (float 1.000000e+00) ; 2 uses
  %i.fkp = select <4 x i1> %i.fko, <4 x float> splat (float -1.000000e+00), <4 x float> %i.fkn
  %i.fkq = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.fkn, <4 x float> splat (float 1.000000e+00))
  %i.fkr = fdiv fast <4 x float> %i.fkp, %i.fkq   ; 3 uses
  %i.fks = fmul fast <4 x float> %i.fkr, %i.fkr   ; 3 uses
  %i.fkt = fmul fast <4 x float> %i.fks, %i.fks   ; 7 uses
  %i.fku = fmul fast <4 x float> %i.fkt, splat (float f0x3C83A25C)
  %i.fkv = fsub fast <4 x float> splat (float f0xBD99B01E), %i.fku
  %i.fkw = fmul fast <4 x float> %i.fkv, %i.fkt
  %i.fkx = fadd fast <4 x float> %i.fkw, splat (float f0xBE117200)
  %i.fky = fmul fast <4 x float> %i.fkx, %i.fkt
  %i.fkz = fadd fast <4 x float> %i.fky, splat (float f0xBEAAAA53)
  %i.fla = fmul fast <4 x float> %i.fkt, splat (float f0x3B3AC537)
  %i.flb = fadd fast <4 x float> %i.fla, splat (float f0x3D2EDD4E)
  %i.flc = fmul fast <4 x float> %i.flb, %i.fkt
  %i.fld = fadd fast <4 x float> %i.flc, splat (float f0x3DD9ED24)
  %i.fle = fmul fast <4 x float> %i.fld, %i.fkt
  %i.flf = fadd fast <4 x float> %i.fle, splat (float f0x3E4CB974)
  %i.flg = fmul fast <4 x float> %i.flf, %i.fkt
  %i.flh = fadd fast <4 x float> %i.flg, splat (float 1.000000e+00)
  %i.fli = fmul fast <4 x float> %i.fkz, %i.fks
  %i.flj = fadd fast <4 x float> %i.flh, %i.fli
  %i.flk = fmul fast <4 x float> %i.flj, %i.fkr
  %i.fll = select <4 x i1> %i.fko, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.flm = fadd fast <4 x float> %i.flk, %i.fll
  %i.fln = bitcast <4 x float> %i.flm to <4 x i32>
  %i.flo = or <4 x i32> %i.fkm, %i.fln
  %i.flp = bitcast <4 x i32> %i.flo to <4 x float>
  %i.flq = fadd fast <4 x float> %i.fkj, %i.flp
  %i.flr = bitcast <4 x float> %i.fka to <4 x i32>
  %i.fls = or disjoint <4 x i32> %i.fkf, splat (i32 1070141403)
  %isneg.inv.i.i788 = icmp slt <4 x i32> %i.flr, zeroinitializer
  %i.flt = select <4 x i1> %isneg.inv.i.i788, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.flu = bitcast <4 x float> %i.flq to <4 x i32>
  %20 = select <4 x i1> %.not58.i.i787, <4 x i32> zeroinitializer, <4 x i32> %i.flu
  %i.flv = select <4 x i1> %i.fkc, <4 x i32> %i.fls, <4 x i32> zeroinitializer
  %i.flw = select <4 x i1> %i.fkd, <4 x i32> %i.flt, <4 x i32> %i.flv
  %21 = or <4 x i32> %20, %i.flw
  store <4 x i32> %21, ptr %.02259.i.i786, align 1, !tbaa !60
  %i.flx = getelementptr inbounds nuw i8, ptr %.062.i.i783, i64 16 ; 2 uses
  %i.fly = getelementptr inbounds nuw i8, ptr %.02060.i.i785, i64 16 ; 2 uses
  %i.flz = getelementptr inbounds nuw i8, ptr %.02259.i.i786, i64 16 ; 2 uses
  %i.fma = add nuw nsw i32 %.01861.i.i784, 4      ; 2 uses
  %i.fmb = or disjoint i32 %i.fma, 3
  %i.fmc = icmp slt i32 %i.fmb, %i.fiv
  br i1 %i.fmc, label %.lr.ph.i.i782, label %.preheader.loopexit.i.i789, !llvm.loop !254

.lr.ph70.i.i776:                                  ; preds = %.lr.ph70.i.i776.prol.loopexit, %.lr.ph70.i.i776
  %.169.i.i777 = phi ptr [ %i.fmy, %.lr.ph70.i.i776 ], [ %.169.i.i777.unr, %.lr.ph70.i.i776.prol.loopexit ] ; 5 uses
  %.11968.i.i778 = phi i32 [ %i.fnb, %.lr.ph70.i.i776 ], [ %.11968.i.i778.unr, %.lr.ph70.i.i776.prol.loopexit ]
  %.12167.i.i779 = phi ptr [ %i.fmz, %.lr.ph70.i.i776 ], [ %.12167.i.i779.unr, %.lr.ph70.i.i776.prol.loopexit ] ; 5 uses
  %.12366.i.i780 = phi ptr [ %i.fna, %.lr.ph70.i.i776 ], [ %.12366.i.i780.unr, %.lr.ph70.i.i776.prol.loopexit ] ; 5 uses
  %i.fmd = load float, ptr %.12167.i.i779, align 4, !tbaa !59
  %i.fme = load float, ptr %.169.i.i777, align 4, !tbaa !59
  %i.fmf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fmd, float %i.fme)
  store float %i.fmf, ptr %.12366.i.i780, align 4, !tbaa !59
  %i.fmg = getelementptr inbounds nuw i8, ptr %.169.i.i777, i64 4
  %i.fmh = getelementptr inbounds nuw i8, ptr %.12167.i.i779, i64 4
  %i.fmi = getelementptr inbounds nuw i8, ptr %.12366.i.i780, i64 4
  %i.fmj = load float, ptr %i.fmh, align 4, !tbaa !59
  %i.fmk = load float, ptr %i.fmg, align 4, !tbaa !59
  %i.fml = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fmj, float %i.fmk)
  store float %i.fml, ptr %i.fmi, align 4, !tbaa !59
  %i.fmm = getelementptr inbounds nuw i8, ptr %.169.i.i777, i64 8
  %i.fmn = getelementptr inbounds nuw i8, ptr %.12167.i.i779, i64 8
  %i.fmo = getelementptr inbounds nuw i8, ptr %.12366.i.i780, i64 8
  %i.fmp = load float, ptr %i.fmn, align 4, !tbaa !59
  %i.fmq = load float, ptr %i.fmm, align 4, !tbaa !59
  %i.fmr = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fmp, float %i.fmq)
  store float %i.fmr, ptr %i.fmo, align 4, !tbaa !59
  %i.fms = getelementptr inbounds nuw i8, ptr %.169.i.i777, i64 12
  %i.fmt = getelementptr inbounds nuw i8, ptr %.12167.i.i779, i64 12
  %i.fmu = getelementptr inbounds nuw i8, ptr %.12366.i.i780, i64 12
  %i.fmv = load float, ptr %i.fmt, align 4, !tbaa !59
  %i.fmw = load float, ptr %i.fms, align 4, !tbaa !59
  %i.fmx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fmv, float %i.fmw)
  store float %i.fmx, ptr %i.fmu, align 4, !tbaa !59
  %i.fmy = getelementptr inbounds nuw i8, ptr %.169.i.i777, i64 16
  %i.fmz = getelementptr inbounds nuw i8, ptr %.12167.i.i779, i64 16
  %i.fna = getelementptr inbounds nuw i8, ptr %.12366.i.i780, i64 16
  %i.fnb = add nuw nsw i32 %.11968.i.i778, 4      ; 2 uses
  %exitcond.not.i.i781.3 = icmp eq i32 %i.fnb, %i.fiv
  br i1 %exitcond.not.i.i781.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph70.i.i776, !llvm.loop !255

bb.hv:                                            ; preds = %bb.ht
  %i.fnc = icmp eq i32 %4, 1
  br i1 %i.fnc, label %bb.hw, label %bb.ib

bb.hw:                                            ; preds = %bb.hv
  %i.fnd = load float, ptr %1, align 4, !tbaa !59 ; 7 uses
  %i.fne = icmp eq i32 %.sroa.speculated.i719, 4
  br i1 %i.fne, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.fnf = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.hz

bb.hy:                                            ; preds = %bb.hw
  %i.fng = insertelement <4 x float> poison, float %i.fnd, i64 0
  %i.fnh = shufflevector <4 x float> %i.fng, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %i.fni = phi fast <4 x float> [ %i.fnf, %bb.hx ], [ %i.fnh, %bb.hy ] ; 4 uses
  %i.fnj = icmp sgt i32 %i.fiv, 3
  br i1 %i.fnj, label %.lr.ph.i37.i764, label %.preheader.i34.i755

.lr.ph.i37.i764:                                  ; preds = %bb.hz
  %i.fnk = fcmp fast oeq <4 x float> %i.fni, zeroinitializer ; 2 uses
  %i.fnl = bitcast <4 x float> %i.fni to <4 x i32>
  %i.fnm = and <4 x i32> %i.fnl, splat (i32 -2147483648)
  %i.fnn = fcmp fast olt <4 x float> %i.fni, zeroinitializer
  %i.fno = select <4 x i1> %i.fnn, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.fnp = or disjoint <4 x i32> %i.fnm, splat (i32 1070141403)
  br label %bb.ia

.preheader.loopexit.i39.i770:                     ; preds = %bb.ia
  %i.fnq = and i32 %i.fiv, 2147483644
  br label %.preheader.i34.i755

.preheader.i34.i755:                              ; preds = %.preheader.loopexit.i39.i770, %bb.hz
  %.019.lcssa.i.i756 = phi ptr [ %2, %bb.hz ], [ %i.fqg, %.preheader.loopexit.i39.i770 ] ; 4 uses
  %.017.lcssa.i.i757 = phi i32 [ 0, %bb.hz ], [ %i.fnq, %.preheader.loopexit.i39.i770 ] ; 4 uses
  %.0.lcssa.i35.i758 = phi ptr [ %0, %bb.hz ], [ %i.fqf, %.preheader.loopexit.i39.i770 ] ; 4 uses
  %i.fnr = icmp slt i32 %.017.lcssa.i.i757, %i.fiv
  br i1 %i.fnr, label %.lr.ph65.i.i759.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph65.i.i759.preheader:                        ; preds = %.preheader.i34.i755
  %.0.lcssa.i35.i7582582 = ptrtoaddr ptr %.0.lcssa.i35.i758 to i64
  %.019.lcssa.i.i7562581 = ptrtoaddr ptr %.019.lcssa.i.i756 to i64
  %i.fns = xor i32 %.017.lcssa.i.i757, -1
  %i.fnt = add i32 %i.fiv, %i.fns                 ; 2 uses
  %i.fnu = zext i32 %i.fnt to i64
  %i.fnv = add nuw nsw i64 %i.fnu, 1              ; 2 uses
  %min.iters.check2585 = icmp ult i32 %i.fnt, 3
  %i.fnw = sub i64 %.0.lcssa.i35.i7582582, %.019.lcssa.i.i7562581
  %diff.check2583 = icmp ugt i64 %i.fnw, -16
  %or.cond3394.a = select i1 %min.iters.check2585, i1 true, i1 %diff.check2583
  br i1 %or.cond3394.a, label %.lr.ph65.i.i759.preheader3583, label %vector.ph2586

vector.ph2586:                                    ; preds = %.lr.ph65.i.i759.preheader
  %n.vec2587 = and i64 %i.fnv, 8589934588         ; 4 uses
  %i.fnx = shl nuw nsw i64 %n.vec2587, 2          ; 2 uses
  %i.fny = getelementptr i8, ptr %.0.lcssa.i35.i758, i64 %i.fnx
  %i.fnz = trunc i64 %n.vec2587 to i32
  %i.foa = add i32 %.017.lcssa.i.i757, %i.fnz
  %i.fob = getelementptr i8, ptr %.019.lcssa.i.i756, i64 %i.fnx
  %i.foc = insertelement <2 x float> poison, float %i.fnd, i64 0
  %i.fod = shufflevector <2 x float> %i.foc, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2588

vector.body2588:                                  ; preds = %vector.body2588, %vector.ph2586
  %index2589 = phi i64 [ 0, %vector.ph2586 ], [ %index.next2593, %vector.body2588 ] ; 2 uses
  %i.foe = shl i64 %index2589, 2                  ; 2 uses
  %next.gep2590 = getelementptr i8, ptr %.0.lcssa.i35.i758, i64 %i.foe
  %next.gep2591 = getelementptr i8, ptr %.019.lcssa.i.i756, i64 %i.foe
  %wide.load2592 = load <4 x float>, ptr %next.gep2590, align 4, !tbaa !59
  %i.fof = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.fod, <4 x float> %wide.load2592)
  store <4 x float> %i.fof, ptr %next.gep2591, align 4, !tbaa !59
  %index.next2593 = add nuw i64 %index2589, 4     ; 2 uses
  %i.fog = icmp eq i64 %index.next2593, %n.vec2587
  br i1 %i.fog, label %middle.block2594, label %vector.body2588, !llvm.loop !256

middle.block2594:                                 ; preds = %vector.body2588
  %cmp.n2595 = icmp eq i64 %i.fnv, %n.vec2587
  br i1 %cmp.n2595, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph65.i.i759.preheader3583

.lr.ph65.i.i759.preheader3583:                    ; preds = %.lr.ph65.i.i759.preheader, %middle.block2594
  %.164.i.i760.ph = phi ptr [ %.0.lcssa.i35.i758, %.lr.ph65.i.i759.preheader ], [ %i.fny, %middle.block2594 ] ; 2 uses
  %.11863.i.i761.ph = phi i32 [ %.017.lcssa.i.i757, %.lr.ph65.i.i759.preheader ], [ %i.foa, %middle.block2594 ] ; 4 uses
  %.12062.i.i762.ph = phi ptr [ %.019.lcssa.i.i756, %.lr.ph65.i.i759.preheader ], [ %i.fob, %middle.block2594 ] ; 2 uses
  %i.foh = sub i32 %i.fiv, %.11863.i.i761.ph
  %xtraiter3806 = and i32 %i.foh, 3               ; 2 uses
  %lcmp.mod3807.not = icmp eq i32 %xtraiter3806, 0
  br i1 %lcmp.mod3807.not, label %.lr.ph65.i.i759.prol.loopexit, label %.lr.ph65.i.i759.prol

.lr.ph65.i.i759.prol:                             ; preds = %.lr.ph65.i.i759.preheader3583, %.lr.ph65.i.i759.prol
  %.164.i.i760.prol = phi ptr [ %i.fok, %.lr.ph65.i.i759.prol ], [ %.164.i.i760.ph, %.lr.ph65.i.i759.preheader3583 ] ; 2 uses
  %.11863.i.i761.prol = phi i32 [ %i.fom, %.lr.ph65.i.i759.prol ], [ %.11863.i.i761.ph, %.lr.ph65.i.i759.preheader3583 ]
  %.12062.i.i762.prol = phi ptr [ %i.fol, %.lr.ph65.i.i759.prol ], [ %.12062.i.i762.ph, %.lr.ph65.i.i759.preheader3583 ] ; 2 uses
  %prol.iter3808 = phi i32 [ %prol.iter3808.next, %.lr.ph65.i.i759.prol ], [ 0, %.lr.ph65.i.i759.preheader3583 ]
  %i.foi = load float, ptr %.164.i.i760.prol, align 4, !tbaa !59
  %i.foj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fnd, float %i.foi)
  store float %i.foj, ptr %.12062.i.i762.prol, align 4, !tbaa !59
  %i.fok = getelementptr inbounds nuw i8, ptr %.164.i.i760.prol, i64 4 ; 2 uses
  %i.fol = getelementptr inbounds nuw i8, ptr %.12062.i.i762.prol, i64 4 ; 2 uses
  %i.fom = add nuw nsw i32 %.11863.i.i761.prol, 1 ; 2 uses
  %prol.iter3808.next = add i32 %prol.iter3808, 1 ; 2 uses
  %prol.iter3808.cmp.not = icmp eq i32 %prol.iter3808.next, %xtraiter3806
  br i1 %prol.iter3808.cmp.not, label %.lr.ph65.i.i759.prol.loopexit, label %.lr.ph65.i.i759.prol, !llvm.loop !257

.lr.ph65.i.i759.prol.loopexit:                    ; preds = %.lr.ph65.i.i759.prol, %.lr.ph65.i.i759.preheader3583
  %.164.i.i760.unr = phi ptr [ %.164.i.i760.ph, %.lr.ph65.i.i759.preheader3583 ], [ %i.fok, %.lr.ph65.i.i759.prol ]
  %.11863.i.i761.unr = phi i32 [ %.11863.i.i761.ph, %.lr.ph65.i.i759.preheader3583 ], [ %i.fom, %.lr.ph65.i.i759.prol ]
  %.12062.i.i762.unr = phi ptr [ %.12062.i.i762.ph, %.lr.ph65.i.i759.preheader3583 ], [ %i.fol, %.lr.ph65.i.i759.prol ]
  %i.fon = sub i32 %.11863.i.i761.ph, %i.fiv
  %i.foo = icmp ugt i32 %i.fon, -4
  br i1 %i.foo, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph65.i.i759

bb.ia:                                            ; preds = %bb.ia, %.lr.ph.i37.i764
  %.059.i.i765 = phi ptr [ %0, %.lr.ph.i37.i764 ], [ %i.fqf, %bb.ia ] ; 2 uses
  %.01758.i.i766 = phi i32 [ 0, %.lr.ph.i37.i764 ], [ %i.fqh, %bb.ia ]
  %.01957.i.i767 = phi ptr [ %2, %.lr.ph.i37.i764 ], [ %i.fqg, %bb.ia ] ; 2 uses
  %i.fop = load <4 x float>, ptr %.059.i.i765, align 1, !tbaa !60 ; 4 uses
  %i.foq = fcmp fast oeq <4 x float> %i.fop, zeroinitializer ; 2 uses
  %.not56.i.i768 = or <4 x i1> %i.fnk, %i.foq
  %i.for = fcmp fast olt <4 x float> %i.fop, zeroinitializer
  %i.fos = select <4 x i1> %i.for, <4 x float> %i.fno, <4 x float> zeroinitializer
  %i.fot = fdiv fast <4 x float> %i.fni, %i.fop   ; 2 uses
  %i.fou = bitcast <4 x float> %i.fot to <4 x i32>
  %i.fov = and <4 x i32> %i.fou, splat (i32 -2147483648)
  %i.fow = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fot) ; 3 uses
  %i.fox = fcmp fast ogt <4 x float> %i.fow, splat (float 1.000000e+00) ; 2 uses
  %i.foy = select <4 x i1> %i.fox, <4 x float> splat (float -1.000000e+00), <4 x float> %i.fow
  %i.foz = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.fow, <4 x float> splat (float 1.000000e+00))
  %i.fpa = fdiv fast <4 x float> %i.foy, %i.foz   ; 3 uses
  %i.fpb = fmul fast <4 x float> %i.fpa, %i.fpa   ; 3 uses
  %i.fpc = fmul fast <4 x float> %i.fpb, %i.fpb   ; 7 uses
  %i.fpd = fmul fast <4 x float> %i.fpc, splat (float f0x3C83A25C)
  %i.fpe = fsub fast <4 x float> splat (float f0xBD99B01E), %i.fpd
  %i.fpf = fmul fast <4 x float> %i.fpe, %i.fpc
  %i.fpg = fadd fast <4 x float> %i.fpf, splat (float f0xBE117200)
  %i.fph = fmul fast <4 x float> %i.fpg, %i.fpc
  %i.fpi = fadd fast <4 x float> %i.fph, splat (float f0xBEAAAA53)
  %i.fpj = fmul fast <4 x float> %i.fpc, splat (float f0x3B3AC537)
  %i.fpk = fadd fast <4 x float> %i.fpj, splat (float f0x3D2EDD4E)
  %i.fpl = fmul fast <4 x float> %i.fpk, %i.fpc
  %i.fpm = fadd fast <4 x float> %i.fpl, splat (float f0x3DD9ED24)
  %i.fpn = fmul fast <4 x float> %i.fpm, %i.fpc
  %i.fpo = fadd fast <4 x float> %i.fpn, splat (float f0x3E4CB974)
  %i.fpp = fmul fast <4 x float> %i.fpo, %i.fpc
  %i.fpq = fadd fast <4 x float> %i.fpp, splat (float 1.000000e+00)
  %i.fpr = fmul fast <4 x float> %i.fpi, %i.fpb
  %i.fps = fadd fast <4 x float> %i.fpq, %i.fpr
  %i.fpt = fmul fast <4 x float> %i.fps, %i.fpa
  %i.fpu = select <4 x i1> %i.fox, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.fpv = fadd fast <4 x float> %i.fpt, %i.fpu
  %i.fpw = bitcast <4 x float> %i.fpv to <4 x i32>
  %i.fpx = or <4 x i32> %i.fov, %i.fpw
  %i.fpy = bitcast <4 x i32> %i.fpx to <4 x float>
  %i.fpz = fadd fast <4 x float> %i.fos, %i.fpy
  %i.fqa = bitcast <4 x float> %i.fop to <4 x i32>
  %isneg.inv.i38.i769 = icmp slt <4 x i32> %i.fqa, zeroinitializer
  %i.fqb = select <4 x i1> %isneg.inv.i38.i769, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.fqc = bitcast <4 x float> %i.fpz to <4 x i32>
  %22 = select <4 x i1> %.not56.i.i768, <4 x i32> zeroinitializer, <4 x i32> %i.fqc
  %i.fqd = select <4 x i1> %i.foq, <4 x i32> %i.fnp, <4 x i32> zeroinitializer
  %i.fqe = select <4 x i1> %i.fnk, <4 x i32> %i.fqb, <4 x i32> %i.fqd
  %23 = or <4 x i32> %22, %i.fqe
  store <4 x i32> %23, ptr %.01957.i.i767, align 1, !tbaa !60
  %i.fqf = getelementptr inbounds nuw i8, ptr %.059.i.i765, i64 16 ; 2 uses
  %i.fqg = getelementptr inbounds nuw i8, ptr %.01957.i.i767, i64 16 ; 2 uses
  %i.fqh = add nuw nsw i32 %.01758.i.i766, 4      ; 2 uses
  %i.fqi = or disjoint i32 %i.fqh, 3
  %i.fqj = icmp slt i32 %i.fqi, %i.fiv
  br i1 %i.fqj, label %bb.ia, label %.preheader.loopexit.i39.i770, !llvm.loop !258

.lr.ph65.i.i759:                                  ; preds = %.lr.ph65.i.i759.prol.loopexit, %.lr.ph65.i.i759
  %.164.i.i760 = phi ptr [ %i.fqy, %.lr.ph65.i.i759 ], [ %.164.i.i760.unr, %.lr.ph65.i.i759.prol.loopexit ] ; 5 uses
  %.11863.i.i761 = phi i32 [ %i.fra, %.lr.ph65.i.i759 ], [ %.11863.i.i761.unr, %.lr.ph65.i.i759.prol.loopexit ]
  %.12062.i.i762 = phi ptr [ %i.fqz, %.lr.ph65.i.i759 ], [ %.12062.i.i762.unr, %.lr.ph65.i.i759.prol.loopexit ] ; 5 uses
  %i.fqk = load float, ptr %.164.i.i760, align 4, !tbaa !59
  %i.fql = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fnd, float %i.fqk)
  store float %i.fql, ptr %.12062.i.i762, align 4, !tbaa !59
  %i.fqm = getelementptr inbounds nuw i8, ptr %.164.i.i760, i64 4
  %i.fqn = getelementptr inbounds nuw i8, ptr %.12062.i.i762, i64 4
  %i.fqo = load float, ptr %i.fqm, align 4, !tbaa !59
  %i.fqp = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fnd, float %i.fqo)
  store float %i.fqp, ptr %i.fqn, align 4, !tbaa !59
  %i.fqq = getelementptr inbounds nuw i8, ptr %.164.i.i760, i64 8
  %i.fqr = getelementptr inbounds nuw i8, ptr %.12062.i.i762, i64 8
  %i.fqs = load float, ptr %i.fqq, align 4, !tbaa !59
  %i.fqt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fnd, float %i.fqs)
  store float %i.fqt, ptr %i.fqr, align 4, !tbaa !59
  %i.fqu = getelementptr inbounds nuw i8, ptr %.164.i.i760, i64 12
  %i.fqv = getelementptr inbounds nuw i8, ptr %.12062.i.i762, i64 12
  %i.fqw = load float, ptr %i.fqu, align 4, !tbaa !59
  %i.fqx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fnd, float %i.fqw)
  store float %i.fqx, ptr %i.fqv, align 4, !tbaa !59
  %i.fqy = getelementptr inbounds nuw i8, ptr %.164.i.i760, i64 16
  %i.fqz = getelementptr inbounds nuw i8, ptr %.12062.i.i762, i64 16
  %i.fra = add nuw nsw i32 %.11863.i.i761, 4      ; 2 uses
  %exitcond.not.i36.i763.3 = icmp eq i32 %i.fra, %i.fiv
  br i1 %exitcond.not.i36.i763.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph65.i.i759, !llvm.loop !259

bb.ib:                                            ; preds = %bb.hv
  %i.frb = icmp eq i32 %3, 1
  br i1 %i.frb, label %bb.ic, label %bb.ih

bb.ic:                                            ; preds = %bb.ib
  %i.frc = load float, ptr %0, align 4, !tbaa !59 ; 7 uses
  %i.frd = icmp eq i32 %.sroa.speculated.i719, 4
  br i1 %i.frd, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.fre = load <4 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.if

bb.ie:                                            ; preds = %bb.ic
  %i.frf = insertelement <4 x float> poison, float %i.frc, i64 0
  %i.frg = shufflevector <4 x float> %i.frf, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %i.frh = phi fast <4 x float> [ %i.fre, %bb.id ], [ %i.frg, %bb.ie ] ; 4 uses
  %i.fri = icmp sgt i32 %i.fiv, 3
  br i1 %i.fri, label %.lr.ph.i49.i753, label %.preheader.i40.i744

.lr.ph.i49.i753:                                  ; preds = %bb.if
  %i.frj = fcmp fast oeq <4 x float> %i.frh, zeroinitializer ; 2 uses
  %i.frk = fcmp fast olt <4 x float> %i.frh, zeroinitializer
  %i.frl = bitcast <4 x float> %i.frh to <4 x i32>
  %isneg.inv.i50.i = icmp slt <4 x i32> %i.frl, zeroinitializer
  %i.frm = select <4 x i1> %isneg.inv.i50.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.frn = fdiv fast <4 x float> splat (float 1.000000e+00), %i.frh
  br label %bb.ig

.preheader.loopexit.i55.i754:                     ; preds = %bb.ig
  %i.fro = and i32 %i.fiv, 2147483644
  br label %.preheader.i40.i744

.preheader.i40.i744:                              ; preds = %.preheader.loopexit.i55.i754, %bb.if
  %.019.lcssa.i41.i745 = phi ptr [ %2, %bb.if ], [ %i.fug, %.preheader.loopexit.i55.i754 ] ; 4 uses
  %.017.lcssa.i42.i746 = phi i32 [ 0, %bb.if ], [ %i.fro, %.preheader.loopexit.i55.i754 ] ; 4 uses
  %.0.lcssa.i43.i747 = phi ptr [ %1, %bb.if ], [ %i.fuf, %.preheader.loopexit.i55.i754 ] ; 4 uses
  %i.frp = icmp slt i32 %.017.lcssa.i42.i746, %i.fiv
  br i1 %i.frp, label %.lr.ph65.i44.i748.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph65.i44.i748.preheader:                      ; preds = %.preheader.i40.i744
  %.0.lcssa.i43.i7472563 = ptrtoaddr ptr %.0.lcssa.i43.i747 to i64
  %.019.lcssa.i41.i7452562 = ptrtoaddr ptr %.019.lcssa.i41.i745 to i64
  %i.frq = xor i32 %.017.lcssa.i42.i746, -1
  %i.frr = add i32 %i.fiv, %i.frq                 ; 2 uses
  %i.frs = zext i32 %i.frr to i64
  %i.frt = add nuw nsw i64 %i.frs, 1              ; 2 uses
  %min.iters.check2566 = icmp ult i32 %i.frr, 3
  %i.fru = sub i64 %.0.lcssa.i43.i7472563, %.019.lcssa.i41.i7452562
  %diff.check2564 = icmp ugt i64 %i.fru, -16
  %or.cond3395.a = select i1 %min.iters.check2566, i1 true, i1 %diff.check2564
  br i1 %or.cond3395.a, label %.lr.ph65.i44.i748.preheader3587, label %vector.ph2567

vector.ph2567:                                    ; preds = %.lr.ph65.i44.i748.preheader
  %n.vec2568 = and i64 %i.frt, 8589934588         ; 4 uses
  %i.frv = shl nuw nsw i64 %n.vec2568, 2          ; 2 uses
  %i.frw = getelementptr i8, ptr %.0.lcssa.i43.i747, i64 %i.frv
  %i.frx = trunc i64 %n.vec2568 to i32
  %i.fry = add i32 %.017.lcssa.i42.i746, %i.frx
  %i.frz = getelementptr i8, ptr %.019.lcssa.i41.i745, i64 %i.frv
  %i.fsa = insertelement <2 x float> poison, float %i.frc, i64 0
  %i.fsb = shufflevector <2 x float> %i.fsa, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2569

vector.body2569:                                  ; preds = %vector.body2569, %vector.ph2567
  %index2570 = phi i64 [ 0, %vector.ph2567 ], [ %index.next2574, %vector.body2569 ] ; 2 uses
  %i.fsc = shl i64 %index2570, 2                  ; 2 uses
  %next.gep2571 = getelementptr i8, ptr %.0.lcssa.i43.i747, i64 %i.fsc
  %next.gep2572 = getelementptr i8, ptr %.019.lcssa.i41.i745, i64 %i.fsc
  %wide.load2573 = load <4 x float>, ptr %next.gep2571, align 4, !tbaa !59
  %i.fsd = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %wide.load2573, <4 x float> %i.fsb)
  store <4 x float> %i.fsd, ptr %next.gep2572, align 4, !tbaa !59
  %index.next2574 = add nuw i64 %index2570, 4     ; 2 uses
  %i.fse = icmp eq i64 %index.next2574, %n.vec2568
  br i1 %i.fse, label %middle.block2575, label %vector.body2569, !llvm.loop !260

middle.block2575:                                 ; preds = %vector.body2569
  %cmp.n2576 = icmp eq i64 %i.frt, %n.vec2568
  br i1 %cmp.n2576, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph65.i44.i748.preheader3587

.lr.ph65.i44.i748.preheader3587:                  ; preds = %.lr.ph65.i44.i748.preheader, %middle.block2575
  %.164.i45.i749.ph = phi ptr [ %.0.lcssa.i43.i747, %.lr.ph65.i44.i748.preheader ], [ %i.frw, %middle.block2575 ] ; 2 uses
  %.11863.i46.i750.ph = phi i32 [ %.017.lcssa.i42.i746, %.lr.ph65.i44.i748.preheader ], [ %i.fry, %middle.block2575 ] ; 4 uses
  %.12062.i47.i751.ph = phi ptr [ %.019.lcssa.i41.i745, %.lr.ph65.i44.i748.preheader ], [ %i.frz, %middle.block2575 ] ; 2 uses
  %i.fsf = sub i32 %i.fiv, %.11863.i46.i750.ph
  %xtraiter3803 = and i32 %i.fsf, 3               ; 2 uses
  %lcmp.mod3804.not = icmp eq i32 %xtraiter3803, 0
  br i1 %lcmp.mod3804.not, label %.lr.ph65.i44.i748.prol.loopexit, label %.lr.ph65.i44.i748.prol

.lr.ph65.i44.i748.prol:                           ; preds = %.lr.ph65.i44.i748.preheader3587, %.lr.ph65.i44.i748.prol
  %.164.i45.i749.prol = phi ptr [ %i.fsi, %.lr.ph65.i44.i748.prol ], [ %.164.i45.i749.ph, %.lr.ph65.i44.i748.preheader3587 ] ; 2 uses
  %.11863.i46.i750.prol = phi i32 [ %i.fsk, %.lr.ph65.i44.i748.prol ], [ %.11863.i46.i750.ph, %.lr.ph65.i44.i748.preheader3587 ]
  %.12062.i47.i751.prol = phi ptr [ %i.fsj, %.lr.ph65.i44.i748.prol ], [ %.12062.i47.i751.ph, %.lr.ph65.i44.i748.preheader3587 ] ; 2 uses
  %prol.iter3805 = phi i32 [ %prol.iter3805.next, %.lr.ph65.i44.i748.prol ], [ 0, %.lr.ph65.i44.i748.preheader3587 ]
  %i.fsg = load float, ptr %.164.i45.i749.prol, align 4, !tbaa !59
  %i.fsh = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fsg, float %i.frc)
  store float %i.fsh, ptr %.12062.i47.i751.prol, align 4, !tbaa !59
  %i.fsi = getelementptr inbounds nuw i8, ptr %.164.i45.i749.prol, i64 4 ; 2 uses
  %i.fsj = getelementptr inbounds nuw i8, ptr %.12062.i47.i751.prol, i64 4 ; 2 uses
  %i.fsk = add nuw nsw i32 %.11863.i46.i750.prol, 1 ; 2 uses
  %prol.iter3805.next = add i32 %prol.iter3805, 1 ; 2 uses
  %prol.iter3805.cmp.not = icmp eq i32 %prol.iter3805.next, %xtraiter3803
  br i1 %prol.iter3805.cmp.not, label %.lr.ph65.i44.i748.prol.loopexit, label %.lr.ph65.i44.i748.prol, !llvm.loop !261

.lr.ph65.i44.i748.prol.loopexit:                  ; preds = %.lr.ph65.i44.i748.prol, %.lr.ph65.i44.i748.preheader3587
  %.164.i45.i749.unr = phi ptr [ %.164.i45.i749.ph, %.lr.ph65.i44.i748.preheader3587 ], [ %i.fsi, %.lr.ph65.i44.i748.prol ]
  %.11863.i46.i750.unr = phi i32 [ %.11863.i46.i750.ph, %.lr.ph65.i44.i748.preheader3587 ], [ %i.fsk, %.lr.ph65.i44.i748.prol ]
  %.12062.i47.i751.unr = phi ptr [ %.12062.i47.i751.ph, %.lr.ph65.i44.i748.preheader3587 ], [ %i.fsj, %.lr.ph65.i44.i748.prol ]
  %i.fsl = sub i32 %.11863.i46.i750.ph, %i.fiv
  %i.fsm = icmp ugt i32 %i.fsl, -4
  br i1 %i.fsm, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph65.i44.i748

bb.ig:                                            ; preds = %bb.ig, %.lr.ph.i49.i753
  %.059.i51.i = phi ptr [ %1, %.lr.ph.i49.i753 ], [ %i.fuf, %bb.ig ] ; 2 uses
  %.01758.i52.i = phi i32 [ 0, %.lr.ph.i49.i753 ], [ %i.fuh, %bb.ig ]
  %.01957.i53.i = phi ptr [ %2, %.lr.ph.i49.i753 ], [ %i.fug, %bb.ig ] ; 2 uses
  %i.fsn = load <4 x float>, ptr %.059.i51.i, align 1, !tbaa !60 ; 4 uses
  %i.fso = fcmp fast oeq <4 x float> %i.fsn, zeroinitializer ; 2 uses
  %.not56.i54.i = or <4 x i1> %i.frj, %i.fso
  %i.fsp = bitcast <4 x float> %i.fsn to <4 x i32>
  %i.fsq = and <4 x i32> %i.fsp, splat (i32 -2147483648)
  %i.fsr = fcmp fast olt <4 x float> %i.fsn, zeroinitializer
  %i.fss = select <4 x i1> %i.fsr, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.fst = select <4 x i1> %i.frk, <4 x float> %i.fss, <4 x float> zeroinitializer
  %i.fsu = fmul fast <4 x float> %i.fsn, %i.frn   ; 2 uses
  %i.fsv = bitcast <4 x float> %i.fsu to <4 x i32>
  %i.fsw = and <4 x i32> %i.fsv, splat (i32 -2147483648)
  %i.fsx = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fsu) ; 3 uses
  %i.fsy = fcmp fast ogt <4 x float> %i.fsx, splat (float 1.000000e+00) ; 2 uses
  %i.fsz = select <4 x i1> %i.fsy, <4 x float> splat (float -1.000000e+00), <4 x float> %i.fsx
  %i.fta = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.fsx, <4 x float> splat (float 1.000000e+00))
  %i.ftb = fdiv fast <4 x float> %i.fsz, %i.fta   ; 3 uses
  %i.ftc = fmul fast <4 x float> %i.ftb, %i.ftb   ; 3 uses
  %i.ftd = fmul fast <4 x float> %i.ftc, %i.ftc   ; 7 uses
  %i.fte = fmul fast <4 x float> %i.ftd, splat (float f0x3C83A25C)
  %i.ftf = fsub fast <4 x float> splat (float f0xBD99B01E), %i.fte
  %i.ftg = fmul fast <4 x float> %i.ftf, %i.ftd
  %i.fth = fadd fast <4 x float> %i.ftg, splat (float f0xBE117200)
  %i.fti = fmul fast <4 x float> %i.fth, %i.ftd
  %i.ftj = fadd fast <4 x float> %i.fti, splat (float f0xBEAAAA53)
  %i.ftk = fmul fast <4 x float> %i.ftd, splat (float f0x3B3AC537)
  %i.ftl = fadd fast <4 x float> %i.ftk, splat (float f0x3D2EDD4E)
  %i.ftm = fmul fast <4 x float> %i.ftl, %i.ftd
  %i.ftn = fadd fast <4 x float> %i.ftm, splat (float f0x3DD9ED24)
  %i.fto = fmul fast <4 x float> %i.ftn, %i.ftd
  %i.ftp = fadd fast <4 x float> %i.fto, splat (float f0x3E4CB974)
  %i.ftq = fmul fast <4 x float> %i.ftp, %i.ftd
  %i.ftr = fadd fast <4 x float> %i.ftq, splat (float 1.000000e+00)
  %i.fts = fmul fast <4 x float> %i.ftj, %i.ftc
  %i.ftt = fadd fast <4 x float> %i.ftr, %i.fts
  %i.ftu = fmul fast <4 x float> %i.ftt, %i.ftb
  %i.ftv = select <4 x i1> %i.fsy, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.ftw = fadd fast <4 x float> %i.ftu, %i.ftv
  %i.ftx = bitcast <4 x float> %i.ftw to <4 x i32>
  %i.fty = or <4 x i32> %i.fsw, %i.ftx
  %i.ftz = bitcast <4 x i32> %i.fty to <4 x float>
  %i.fua = fadd fast <4 x float> %i.fst, %i.ftz
  %i.fub = or disjoint <4 x i32> %i.fsq, splat (i32 1070141403)
  %i.fuc = bitcast <4 x float> %i.fua to <4 x i32>
  %24 = select <4 x i1> %.not56.i54.i, <4 x i32> zeroinitializer, <4 x i32> %i.fuc
  %i.fud = select <4 x i1> %i.frj, <4 x i32> %i.fub, <4 x i32> zeroinitializer
  %i.fue = select <4 x i1> %i.fso, <4 x i32> %i.frm, <4 x i32> %i.fud
  %25 = or <4 x i32> %24, %i.fue
  store <4 x i32> %25, ptr %.01957.i53.i, align 1, !tbaa !60
  %i.fuf = getelementptr inbounds nuw i8, ptr %.059.i51.i, i64 16 ; 2 uses
  %i.fug = getelementptr inbounds nuw i8, ptr %.01957.i53.i, i64 16 ; 2 uses
  %i.fuh = add nuw nsw i32 %.01758.i52.i, 4       ; 2 uses
  %i.fui = or disjoint i32 %i.fuh, 3
  %i.fuj = icmp slt i32 %i.fui, %i.fiv
  br i1 %i.fuj, label %bb.ig, label %.preheader.loopexit.i55.i754, !llvm.loop !262

.lr.ph65.i44.i748:                                ; preds = %.lr.ph65.i44.i748.prol.loopexit, %.lr.ph65.i44.i748
  %.164.i45.i749 = phi ptr [ %i.fuy, %.lr.ph65.i44.i748 ], [ %.164.i45.i749.unr, %.lr.ph65.i44.i748.prol.loopexit ] ; 5 uses
  %.11863.i46.i750 = phi i32 [ %i.fva, %.lr.ph65.i44.i748 ], [ %.11863.i46.i750.unr, %.lr.ph65.i44.i748.prol.loopexit ]
  %.12062.i47.i751 = phi ptr [ %i.fuz, %.lr.ph65.i44.i748 ], [ %.12062.i47.i751.unr, %.lr.ph65.i44.i748.prol.loopexit ] ; 5 uses
  %i.fuk = load float, ptr %.164.i45.i749, align 4, !tbaa !59
  %i.ful = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fuk, float %i.frc)
  store float %i.ful, ptr %.12062.i47.i751, align 4, !tbaa !59
  %i.fum = getelementptr inbounds nuw i8, ptr %.164.i45.i749, i64 4
  %i.fun = getelementptr inbounds nuw i8, ptr %.12062.i47.i751, i64 4
  %i.fuo = load float, ptr %i.fum, align 4, !tbaa !59
  %i.fup = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fuo, float %i.frc)
  store float %i.fup, ptr %i.fun, align 4, !tbaa !59
  %i.fuq = getelementptr inbounds nuw i8, ptr %.164.i45.i749, i64 8
  %i.fur = getelementptr inbounds nuw i8, ptr %.12062.i47.i751, i64 8
  %i.fus = load float, ptr %i.fuq, align 4, !tbaa !59
  %i.fut = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fus, float %i.frc)
  store float %i.fut, ptr %i.fur, align 4, !tbaa !59
  %i.fuu = getelementptr inbounds nuw i8, ptr %.164.i45.i749, i64 12
  %i.fuv = getelementptr inbounds nuw i8, ptr %.12062.i47.i751, i64 12
  %i.fuw = load float, ptr %i.fuu, align 4, !tbaa !59
  %i.fux = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.fuw, float %i.frc)
  store float %i.fux, ptr %i.fuv, align 4, !tbaa !59
  %i.fuy = getelementptr inbounds nuw i8, ptr %.164.i45.i749, i64 16
  %i.fuz = getelementptr inbounds nuw i8, ptr %.12062.i47.i751, i64 16
  %i.fva = add nuw nsw i32 %.11863.i46.i750, 4    ; 2 uses
  %exitcond.not.i48.i752.3 = icmp eq i32 %i.fva, %i.fiv
  br i1 %exitcond.not.i48.i752.3, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph65.i44.i748, !llvm.loop !263

bb.ih:                                            ; preds = %bb.ib, %bb.hs
  %i.fvb = icmp eq i32 %6, 1
  br i1 %i.fvb, label %bb.ii, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.ii:                                            ; preds = %bb.ih
  %i.fvc = icmp eq i32 %3, %4
  br i1 %i.fvc, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.fvd = icmp eq i32 %.sroa.speculated.i719, 4
  %i.fve = icmp sgt i32 %.sroa.speculated74.i718, 0
  %or.cond.i.i735 = and i1 %i.fve, %i.fvd
  br i1 %or.cond.i.i735, label %.lr.ph.i56.i736, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i56.i736:                                  ; preds = %bb.ij, %.lr.ph.i56.i736
  %.051.i.i737 = phi ptr [ %i.fxe, %.lr.ph.i56.i736 ], [ %0, %bb.ij ] ; 2 uses
  %.01050.i.i738 = phi i32 [ %i.fxh, %.lr.ph.i56.i736 ], [ 0, %bb.ij ]
  %.01149.i.i739 = phi ptr [ %i.fxf, %.lr.ph.i56.i736 ], [ %1, %bb.ij ] ; 2 uses
  %.01248.i.i740 = phi ptr [ %i.fxg, %.lr.ph.i56.i736 ], [ %2, %bb.ij ] ; 2 uses
  %i.fvf = load <4 x float>, ptr %.051.i.i737, align 1, !tbaa !60 ; 4 uses
  %i.fvg = load float, ptr %.01149.i.i739, align 4, !tbaa !59
  %i.fvh = insertelement <4 x float> poison, float %i.fvg, i64 0
  %i.fvi = shufflevector <4 x float> %i.fvh, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.fvj = fcmp fast oeq <4 x float> %i.fvf, zeroinitializer ; 2 uses
  %i.fvk = fcmp fast oeq <4 x float> %i.fvi, zeroinitializer ; 2 uses
  %.not47.i.i741 = or <4 x i1> %i.fvj, %i.fvk
  %i.fvl = bitcast <4 x float> %i.fvi to <4 x i32>
  %i.fvm = and <4 x i32> %i.fvl, splat (i32 -2147483648)
  %i.fvn = fcmp fast olt <4 x float> %i.fvf, zeroinitializer
  %i.fvo = fcmp fast olt <4 x float> %i.fvi, zeroinitializer
  %i.fvp = select <4 x i1> %i.fvo, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.fvq = select <4 x i1> %i.fvn, <4 x float> %i.fvp, <4 x float> zeroinitializer
  %i.fvr = fdiv fast <4 x float> %i.fvi, %i.fvf   ; 2 uses
  %i.fvs = bitcast <4 x float> %i.fvr to <4 x i32>
  %i.fvt = and <4 x i32> %i.fvs, splat (i32 -2147483648)
  %i.fvu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fvr) ; 3 uses
  %i.fvv = fcmp fast ogt <4 x float> %i.fvu, splat (float 1.000000e+00) ; 2 uses
  %i.fvw = select <4 x i1> %i.fvv, <4 x float> splat (float -1.000000e+00), <4 x float> %i.fvu
  %i.fvx = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.fvu, <4 x float> splat (float 1.000000e+00))
  %i.fvy = fdiv fast <4 x float> %i.fvw, %i.fvx   ; 3 uses
  %i.fvz = fmul fast <4 x float> %i.fvy, %i.fvy   ; 3 uses
  %i.fwa = fmul fast <4 x float> %i.fvz, %i.fvz   ; 7 uses
  %i.fwb = fmul fast <4 x float> %i.fwa, splat (float f0x3C83A25C)
  %i.fwc = fsub fast <4 x float> splat (float f0xBD99B01E), %i.fwb
  %i.fwd = fmul fast <4 x float> %i.fwc, %i.fwa
  %i.fwe = fadd fast <4 x float> %i.fwd, splat (float f0xBE117200)
  %i.fwf = fmul fast <4 x float> %i.fwe, %i.fwa
  %i.fwg = fadd fast <4 x float> %i.fwf, splat (float f0xBEAAAA53)
  %i.fwh = fmul fast <4 x float> %i.fwa, splat (float f0x3B3AC537)
  %i.fwi = fadd fast <4 x float> %i.fwh, splat (float f0x3D2EDD4E)
  %i.fwj = fmul fast <4 x float> %i.fwi, %i.fwa
  %i.fwk = fadd fast <4 x float> %i.fwj, splat (float f0x3DD9ED24)
  %i.fwl = fmul fast <4 x float> %i.fwk, %i.fwa
  %i.fwm = fadd fast <4 x float> %i.fwl, splat (float f0x3E4CB974)
  %i.fwn = fmul fast <4 x float> %i.fwm, %i.fwa
  %i.fwo = fadd fast <4 x float> %i.fwn, splat (float 1.000000e+00)
  %i.fwp = fmul fast <4 x float> %i.fwg, %i.fvz
  %i.fwq = fadd fast <4 x float> %i.fwo, %i.fwp
  %i.fwr = fmul fast <4 x float> %i.fwq, %i.fvy
  %i.fws = select <4 x i1> %i.fvv, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.fwt = fadd fast <4 x float> %i.fwr, %i.fws
  %i.fwu = bitcast <4 x float> %i.fwt to <4 x i32>
  %i.fwv = or <4 x i32> %i.fvt, %i.fwu
  %i.fww = bitcast <4 x i32> %i.fwv to <4 x float>
  %i.fwx = fadd fast <4 x float> %i.fvq, %i.fww
  %i.fwy = bitcast <4 x float> %i.fvf to <4 x i32>
  %i.fwz = or disjoint <4 x i32> %i.fvm, splat (i32 1070141403)
  %isneg.inv.i57.i742 = icmp slt <4 x i32> %i.fwy, zeroinitializer
  %i.fxa = select <4 x i1> %isneg.inv.i57.i742, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.fxb = bitcast <4 x float> %i.fwx to <4 x i32>
  %26 = select <4 x i1> %.not47.i.i741, <4 x i32> zeroinitializer, <4 x i32> %i.fxb
  %i.fxc = select <4 x i1> %i.fvj, <4 x i32> %i.fwz, <4 x i32> zeroinitializer
  %i.fxd = select <4 x i1> %i.fvk, <4 x i32> %i.fxa, <4 x i32> %i.fxc
  %27 = or <4 x i32> %26, %i.fxd
  store <4 x i32> %27, ptr %.01248.i.i740, align 1, !tbaa !60
  %i.fxe = getelementptr inbounds nuw i8, ptr %.051.i.i737, i64 16
  %i.fxf = getelementptr inbounds nuw i8, ptr %.01149.i.i739, i64 4
  %i.fxg = getelementptr inbounds nuw i8, ptr %.01248.i.i740, i64 16
  %i.fxh = add nuw nsw i32 %.01050.i.i738, 1      ; 2 uses
  %exitcond.not.i58.i743 = icmp eq i32 %i.fxh, %.sroa.speculated74.i718
  br i1 %exitcond.not.i58.i743, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph.i56.i736, !llvm.loop !264

bb.ik:                                            ; preds = %bb.ii
  %i.fxi = icmp eq i32 %4, 1
  br i1 %i.fxi, label %bb.il, label %bb.in

bb.il:                                            ; preds = %bb.ik
  %.val.i728 = load float, ptr %1, align 4, !tbaa !59
  %i.fxj = insertelement <4 x float> poison, float %.val.i728, i64 0
  %i.fxk = shufflevector <4 x float> %i.fxj, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.fxl = icmp sgt i32 %i.fiv, 3
  br i1 %i.fxl, label %.lr.ph.i59.i729, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i59.i729:                                  ; preds = %bb.il
  %i.fxm = fcmp fast oeq <4 x float> %i.fxk, zeroinitializer ; 2 uses
  %i.fxn = bitcast <4 x float> %i.fxk to <4 x i32>
  %i.fxo = and <4 x i32> %i.fxn, splat (i32 -2147483648)
  %i.fxp = fcmp fast olt <4 x float> %i.fxk, zeroinitializer
  %i.fxq = select <4 x i1> %i.fxp, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.fxr = or disjoint <4 x i32> %i.fxo, splat (i32 1070141403)
  br label %bb.im

bb.im:                                            ; preds = %bb.im, %.lr.ph.i59.i729
  %.038.i.i730 = phi ptr [ %0, %.lr.ph.i59.i729 ], [ %i.fzi, %bb.im ] ; 2 uses
  %.01037.i.i731 = phi i32 [ 0, %.lr.ph.i59.i729 ], [ %i.fzk, %bb.im ]
  %.01136.i.i732 = phi ptr [ %2, %.lr.ph.i59.i729 ], [ %i.fzj, %bb.im ] ; 2 uses
  %i.fxs = load <4 x float>, ptr %.038.i.i730, align 1, !tbaa !60 ; 4 uses
  %i.fxt = fcmp fast oeq <4 x float> %i.fxs, zeroinitializer ; 2 uses
  %.not35.i.i733 = or <4 x i1> %i.fxm, %i.fxt
  %i.fxu = fcmp fast olt <4 x float> %i.fxs, zeroinitializer
  %i.fxv = select <4 x i1> %i.fxu, <4 x float> %i.fxq, <4 x float> zeroinitializer
  %i.fxw = fdiv fast <4 x float> %i.fxk, %i.fxs   ; 2 uses
  %i.fxx = bitcast <4 x float> %i.fxw to <4 x i32>
  %i.fxy = and <4 x i32> %i.fxx, splat (i32 -2147483648)
  %i.fxz = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fxw) ; 3 uses
  %i.fya = fcmp fast ogt <4 x float> %i.fxz, splat (float 1.000000e+00) ; 2 uses
  %i.fyb = select <4 x i1> %i.fya, <4 x float> splat (float -1.000000e+00), <4 x float> %i.fxz
  %i.fyc = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.fxz, <4 x float> splat (float 1.000000e+00))
  %i.fyd = fdiv fast <4 x float> %i.fyb, %i.fyc   ; 3 uses
  %i.fye = fmul fast <4 x float> %i.fyd, %i.fyd   ; 3 uses
  %i.fyf = fmul fast <4 x float> %i.fye, %i.fye   ; 7 uses
  %i.fyg = fmul fast <4 x float> %i.fyf, splat (float f0x3C83A25C)
  %i.fyh = fsub fast <4 x float> splat (float f0xBD99B01E), %i.fyg
  %i.fyi = fmul fast <4 x float> %i.fyh, %i.fyf
  %i.fyj = fadd fast <4 x float> %i.fyi, splat (float f0xBE117200)
  %i.fyk = fmul fast <4 x float> %i.fyj, %i.fyf
  %i.fyl = fadd fast <4 x float> %i.fyk, splat (float f0xBEAAAA53)
  %i.fym = fmul fast <4 x float> %i.fyf, splat (float f0x3B3AC537)
  %i.fyn = fadd fast <4 x float> %i.fym, splat (float f0x3D2EDD4E)
  %i.fyo = fmul fast <4 x float> %i.fyn, %i.fyf
  %i.fyp = fadd fast <4 x float> %i.fyo, splat (float f0x3DD9ED24)
  %i.fyq = fmul fast <4 x float> %i.fyp, %i.fyf
  %i.fyr = fadd fast <4 x float> %i.fyq, splat (float f0x3E4CB974)
  %i.fys = fmul fast <4 x float> %i.fyr, %i.fyf
  %i.fyt = fadd fast <4 x float> %i.fys, splat (float 1.000000e+00)
  %i.fyu = fmul fast <4 x float> %i.fyl, %i.fye
  %i.fyv = fadd fast <4 x float> %i.fyt, %i.fyu
  %i.fyw = fmul fast <4 x float> %i.fyv, %i.fyd
  %i.fyx = select <4 x i1> %i.fya, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.fyy = fadd fast <4 x float> %i.fyw, %i.fyx
  %i.fyz = bitcast <4 x float> %i.fyy to <4 x i32>
  %i.fza = or <4 x i32> %i.fxy, %i.fyz
  %i.fzb = bitcast <4 x i32> %i.fza to <4 x float>
  %i.fzc = fadd fast <4 x float> %i.fxv, %i.fzb
  %i.fzd = bitcast <4 x float> %i.fxs to <4 x i32>
  %isneg.inv.i60.i734 = icmp slt <4 x i32> %i.fzd, zeroinitializer
  %i.fze = select <4 x i1> %isneg.inv.i60.i734, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.fzf = bitcast <4 x float> %i.fzc to <4 x i32>
  %28 = select <4 x i1> %.not35.i.i733, <4 x i32> zeroinitializer, <4 x i32> %i.fzf
  %i.fzg = select <4 x i1> %i.fxt, <4 x i32> %i.fxr, <4 x i32> zeroinitializer
  %i.fzh = select <4 x i1> %i.fxm, <4 x i32> %i.fze, <4 x i32> %i.fzg
  %29 = or <4 x i32> %28, %i.fzh
  store <4 x i32> %29, ptr %.01136.i.i732, align 1, !tbaa !60
  %i.fzi = getelementptr inbounds nuw i8, ptr %.038.i.i730, i64 16
  %i.fzj = getelementptr inbounds nuw i8, ptr %.01136.i.i732, i64 16
  %i.fzk = add nuw nsw i32 %.01037.i.i731, 4      ; 2 uses
  %i.fzl = or disjoint i32 %i.fzk, 3
  %i.fzm = icmp slt i32 %i.fzl, %i.fiv
  br i1 %i.fzm, label %bb.im, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, !llvm.loop !265

bb.in:                                            ; preds = %bb.ik
  %i.fzn = icmp eq i32 %3, 1
  %i.fzo = icmp eq i32 %.sroa.speculated.i719, 4
  %or.cond.i720 = and i1 %i.fzn, %i.fzo
  br i1 %or.cond.i720, label %.lr.ph.i61.i721, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph.i61.i721:                                  ; preds = %bb.in
  %i.fzp = load <4 x float>, ptr %0, align 1, !tbaa !60 ; 4 uses
  %i.fzq = fcmp fast oeq <4 x float> %i.fzp, zeroinitializer ; 2 uses
  %i.fzr = fcmp fast olt <4 x float> %i.fzp, zeroinitializer
  %i.fzs = bitcast <4 x float> %i.fzp to <4 x i32>
  %isneg.inv.i62.i722 = icmp slt <4 x i32> %i.fzs, zeroinitializer
  %i.fzt = select <4 x i1> %isneg.inv.i62.i722, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.fzu = fdiv fast <4 x float> splat (float 1.000000e+00), %i.fzp
  br label %bb.io

bb.io:                                            ; preds = %bb.io, %.lr.ph.i61.i721
  %.048.i.i723 = phi ptr [ %1, %.lr.ph.i61.i721 ], [ %i.gbp, %bb.io ] ; 2 uses
  %.0947.i.i724 = phi i32 [ 0, %.lr.ph.i61.i721 ], [ %i.gbr, %bb.io ]
  %.01046.i.i725 = phi ptr [ %2, %.lr.ph.i61.i721 ], [ %i.gbq, %bb.io ] ; 2 uses
  %i.fzv = load float, ptr %.048.i.i723, align 4, !tbaa !59
  %i.fzw = insertelement <4 x float> poison, float %i.fzv, i64 0
  %i.fzx = shufflevector <4 x float> %i.fzw, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.fzy = fcmp fast oeq <4 x float> %i.fzx, zeroinitializer ; 2 uses
  %.not45.i.i726 = or <4 x i1> %i.fzq, %i.fzy
  %i.fzz = bitcast <4 x float> %i.fzx to <4 x i32>
  %i.gaa = and <4 x i32> %i.fzz, splat (i32 -2147483648)
  %i.gab = fcmp fast olt <4 x float> %i.fzx, zeroinitializer
  %i.gac = select <4 x i1> %i.gab, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.gad = select <4 x i1> %i.fzr, <4 x float> %i.gac, <4 x float> zeroinitializer
  %i.gae = fmul fast <4 x float> %i.fzx, %i.fzu   ; 2 uses
  %i.gaf = bitcast <4 x float> %i.gae to <4 x i32>
  %i.gag = and <4 x i32> %i.gaf, splat (i32 -2147483648)
  %i.gah = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gae) ; 3 uses
  %i.gai = fcmp fast ogt <4 x float> %i.gah, splat (float 1.000000e+00) ; 2 uses
  %i.gaj = select <4 x i1> %i.gai, <4 x float> splat (float -1.000000e+00), <4 x float> %i.gah
  %i.gak = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.gah, <4 x float> splat (float 1.000000e+00))
  %i.gal = fdiv fast <4 x float> %i.gaj, %i.gak   ; 3 uses
  %i.gam = fmul fast <4 x float> %i.gal, %i.gal   ; 3 uses
  %i.gan = fmul fast <4 x float> %i.gam, %i.gam   ; 7 uses
  %i.gao = fmul fast <4 x float> %i.gan, splat (float f0x3C83A25C)
  %i.gap = fsub fast <4 x float> splat (float f0xBD99B01E), %i.gao
  %i.gaq = fmul fast <4 x float> %i.gap, %i.gan
  %i.gar = fadd fast <4 x float> %i.gaq, splat (float f0xBE117200)
  %i.gas = fmul fast <4 x float> %i.gar, %i.gan
  %i.gat = fadd fast <4 x float> %i.gas, splat (float f0xBEAAAA53)
  %i.gau = fmul fast <4 x float> %i.gan, splat (float f0x3B3AC537)
  %i.gav = fadd fast <4 x float> %i.gau, splat (float f0x3D2EDD4E)
  %i.gaw = fmul fast <4 x float> %i.gav, %i.gan
  %i.gax = fadd fast <4 x float> %i.gaw, splat (float f0x3DD9ED24)
  %i.gay = fmul fast <4 x float> %i.gax, %i.gan
  %i.gaz = fadd fast <4 x float> %i.gay, splat (float f0x3E4CB974)
  %i.gba = fmul fast <4 x float> %i.gaz, %i.gan
  %i.gbb = fadd fast <4 x float> %i.gba, splat (float 1.000000e+00)
  %i.gbc = fmul fast <4 x float> %i.gat, %i.gam
  %i.gbd = fadd fast <4 x float> %i.gbb, %i.gbc
  %i.gbe = fmul fast <4 x float> %i.gbd, %i.gal
  %i.gbf = select <4 x i1> %i.gai, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.gbg = fadd fast <4 x float> %i.gbe, %i.gbf
  %i.gbh = bitcast <4 x float> %i.gbg to <4 x i32>
  %i.gbi = or <4 x i32> %i.gag, %i.gbh
  %i.gbj = bitcast <4 x i32> %i.gbi to <4 x float>
  %i.gbk = fadd fast <4 x float> %i.gad, %i.gbj
  %i.gbl = or disjoint <4 x i32> %i.gaa, splat (i32 1070141403)
  %i.gbm = bitcast <4 x float> %i.gbk to <4 x i32>
  %30 = select <4 x i1> %.not45.i.i726, <4 x i32> zeroinitializer, <4 x i32> %i.gbm
  %i.gbn = select <4 x i1> %i.fzq, <4 x i32> %i.gbl, <4 x i32> zeroinitializer
  %i.gbo = select <4 x i1> %i.fzy, <4 x i32> %i.fzt, <4 x i32> %i.gbn
  %31 = or <4 x i32> %30, %i.gbo
  store <4 x i32> %31, ptr %.01046.i.i725, align 1, !tbaa !60
  %i.gbp = getelementptr inbounds nuw i8, ptr %.048.i.i723, i64 4
  %i.gbq = getelementptr inbounds nuw i8, ptr %.01046.i.i725, i64 16
  %i.gbr = add nuw nsw i32 %.0947.i.i724, 1       ; 2 uses
  %exitcond.not.i63.i727 = icmp eq i32 %i.gbr, %.sroa.speculated74.i718
  br i1 %exitcond.not.i63.i727, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %bb.io, !llvm.loop !266

bb.ip:                                            ; preds = %bb.a
  %.sroa.speculated69.i790 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 9 uses
  %.sroa.speculated.i791 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.gbs = mul i32 %.sroa.speculated.i791, %.sroa.speculated69.i790 ; 26 uses
  %i.gbt = icmp eq i32 %5, %6
  br i1 %i.gbt, label %bb.iq, label %bb.jc

bb.iq:                                            ; preds = %bb.ip
  %i.gbu = icmp eq i32 %3, %4
  br i1 %i.gbu, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.gbv = icmp sgt i32 %i.gbs, 3
  br i1 %i.gbv, label %.lr.ph.i.i823.preheader, label %.preheader.i.i817

.lr.ph.i.i823.preheader:                          ; preds = %bb.ir
  %i.gbw = add nsw i32 %i.gbs, -4                 ; 2 uses
  %i.gbx = lshr i32 %i.gbw, 2                     ; 2 uses
  %i.gby = add nuw nsw i32 %i.gbx, 1              ; 2 uses
  %i.gbz = icmp eq i32 %i.gbx, 0
  br i1 %i.gbz, label %.lr.ph.i.i823.epil.preheader, label %.lr.ph.i.i823.preheader.new

.lr.ph.i.i823.preheader.new:                      ; preds = %.lr.ph.i.i823.preheader
  %unroll_iter3798 = and i32 %i.gby, 2147483646
  br label %.lr.ph.i.i823

.preheader.loopexit.i.i824.unr-lcssa:             ; preds = %.lr.ph.i.i823
  %i.gca = and i32 %i.gbw, 4
  %lcmp.mod3793.not.not = icmp eq i32 %i.gca, 0
  br i1 %lcmp.mod3793.not.not, label %.lr.ph.i.i823.epil.preheader, label %.preheader.loopexit.i.i824

.lr.ph.i.i823.epil.preheader:                     ; preds = %.preheader.loopexit.i.i824.unr-lcssa, %.lr.ph.i.i823.preheader
  %.031.i.i.epil.init = phi ptr [ %0, %.lr.ph.i.i823.preheader ], [ %i.gec, %.preheader.loopexit.i.i824.unr-lcssa ] ; 2 uses
  %.02029.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i823.preheader ], [ %i.ged, %.preheader.loopexit.i.i824.unr-lcssa ] ; 2 uses
  %.02228.i.i.epil.init = phi ptr [ %2, %.lr.ph.i.i823.preheader ], [ %i.gee, %.preheader.loopexit.i.i824.unr-lcssa ] ; 2 uses
  %lcmp.mod3797 = trunc i32 %i.gby to i1
  tail call void @llvm.assume(i1 %lcmp.mod3797)
  %i.gcb = load <4 x float>, ptr %.031.i.i.epil.init, align 1, !tbaa !60 ; 2 uses
  %i.gcc = load <4 x float>, ptr %.02029.i.i.epil.init, align 1, !tbaa !60 ; 2 uses
  %i.gcd = fdiv fast <4 x float> %i.gcb, %i.gcc
  %i.gce = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gcd)
  %i.gcf = sitofp fast <4 x i32> %i.gce to <4 x float>
  %i.gcg = fmul fast <4 x float> %i.gcc, %i.gcf
  %i.gch = fsub fast <4 x float> %i.gcb, %i.gcg
  store <4 x float> %i.gch, ptr %.02228.i.i.epil.init, align 1, !tbaa !60
  %i.gci = getelementptr inbounds nuw i8, ptr %.031.i.i.epil.init, i64 16
  %i.gcj = getelementptr inbounds nuw i8, ptr %.02029.i.i.epil.init, i64 16
  %i.gck = getelementptr inbounds nuw i8, ptr %.02228.i.i.epil.init, i64 16
  br label %.preheader.loopexit.i.i824

.preheader.loopexit.i.i824:                       ; preds = %.preheader.loopexit.i.i824.unr-lcssa, %.lr.ph.i.i823.epil.preheader
  %.lcssa3598.a = phi ptr [ %i.gec, %.preheader.loopexit.i.i824.unr-lcssa ], [ %i.gci, %.lr.ph.i.i823.epil.preheader ]
  %.lcssa3597.a = phi ptr [ %i.ged, %.preheader.loopexit.i.i824.unr-lcssa ], [ %i.gcj, %.lr.ph.i.i823.epil.preheader ]
  %.lcssa3596 = phi ptr [ %i.gee, %.preheader.loopexit.i.i824.unr-lcssa ], [ %i.gck, %.lr.ph.i.i823.epil.preheader ]
  %i.gcl = and i32 %i.gbs, 2147483644
  br label %.preheader.i.i817

.preheader.i.i817:                                ; preds = %.preheader.loopexit.i.i824, %bb.ir
  %.022.lcssa.i.i818 = phi ptr [ %2, %bb.ir ], [ %.lcssa3596, %.preheader.loopexit.i.i824 ] ; 5 uses
  %.020.lcssa.i.i819 = phi ptr [ %1, %bb.ir ], [ %.lcssa3597.a, %.preheader.loopexit.i.i824 ] ; 5 uses
  %.018.lcssa.i.i820 = phi i32 [ 0, %bb.ir ], [ %i.gcl, %.preheader.loopexit.i.i824 ] ; 5 uses
  %.0.lcssa.i.i821 = phi ptr [ %0, %bb.ir ], [ %.lcssa3598.a, %.preheader.loopexit.i.i824 ] ; 5 uses
  %.022.lcssa.i.i8182537 = ptrtoaddr ptr %.022.lcssa.i.i818 to i64 ; 2 uses
  %.0.lcssa.i.i8212538 = ptrtoaddr ptr %.0.lcssa.i.i821 to i64
  %.020.lcssa.i.i8192540 = ptrtoaddr ptr %.020.lcssa.i.i819 to i64
  %i.gcm = icmp slt i32 %.018.lcssa.i.i820, %i.gbs
  br i1 %i.gcm, label %.lr.ph39.i.i.preheader, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

.lr.ph39.i.i.preheader:                           ; preds = %.preheader.i.i817
  %i.gcn = xor i32 %.018.lcssa.i.i820, -1
  %i.gco = add i32 %i.gbs, %i.gcn                 ; 2 uses
  %i.gcp = zext i32 %i.gco to i64
  %i.gcq = add nuw nsw i64 %i.gcp, 1              ; 2 uses
  %min.iters.check2544 = icmp ult i32 %i.gco, 11
  br i1 %min.iters.check2544, label %.lr.ph39.i.i.preheader3594, label %vector.memcheck2536

vector.memcheck2536:                              ; preds = %.lr.ph39.i.i.preheader
  %i.gcr = sub i64 %.0.lcssa.i.i8212538, %.022.lcssa.i.i8182537
  %diff.check2539 = icmp ugt i64 %i.gcr, -16
  %i.gcs = sub i64 %.020.lcssa.i.i8192540, %.022.lcssa.i.i8182537
  %diff.check2541 = icmp ugt i64 %i.gcs, -16
  %conflict.rdx2542 = or i1 %diff.check2539, %diff.check2541
  br i1 %conflict.rdx2542, label %.lr.ph39.i.i.preheader3594, label %vector.ph2545

vector.ph2545:                                    ; preds = %vector.memcheck2536
  %n.vec2546 = and i64 %i.gcq, 8589934588         ; 4 uses
  %i.gct = shl nuw nsw i64 %n.vec2546, 2          ; 3 uses
  %i.gcu = getelementptr i8, ptr %.0.lcssa.i.i821, i64 %i.gct
  %i.gcv = trunc i64 %n.vec2546 to i32
  %i.gcw = add i32 %.018.lcssa.i.i820, %i.gcv
  %i.gcx = getelementptr i8, ptr %.020.lcssa.i.i819, i64 %i.gct
  %i.gcy = getelementptr i8, ptr %.022.lcssa.i.i818, i64 %i.gct
  br label %vector.body2547

vector.body2547:                                  ; preds = %vector.body2547, %vector.ph2545
  %index2548 = phi i64 [ 0, %vector.ph2545 ], [ %index.next2554, %vector.body2547 ] ; 2 uses
  %i.gcz = shl i64 %index2548, 2                  ; 3 uses
  %next.gep2549 = getelementptr i8, ptr %.0.lcssa.i.i821, i64 %i.gcz
  %next.gep2550 = getelementptr i8, ptr %.020.lcssa.i.i819, i64 %i.gcz
  %next.gep2551 = getelementptr i8, ptr %.022.lcssa.i.i818, i64 %i.gcz
  %wide.load2552 = load <4 x float>, ptr %next.gep2549, align 4, !tbaa !59
  %wide.load2553 = load <4 x float>, ptr %next.gep2550, align 4, !tbaa !59
  %i.gda = frem fast <4 x float> %wide.load2552, %wide.load2553
  store <4 x float> %i.gda, ptr %next.gep2551, align 4, !tbaa !59
  %index.next2554 = add nuw i64 %index2548, 4     ; 2 uses
  %i.gdb = icmp eq i64 %index.next2554, %n.vec2546
  br i1 %i.gdb, label %middle.block2555, label %vector.body2547, !llvm.loop !267

middle.block2555:                                 ; preds = %vector.body2547
  %cmp.n2556 = icmp eq i64 %i.gcq, %n.vec2546
  br i1 %cmp.n2556, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph39.i.i.preheader3594

.lr.ph39.i.i.preheader3594:                       ; preds = %vector.memcheck2536, %.lr.ph39.i.i.preheader, %middle.block2555
  %.138.i.i.ph = phi ptr [ %.0.lcssa.i.i821, %vector.memcheck2536 ], [ %.0.lcssa.i.i821, %.lr.ph39.i.i.preheader ], [ %i.gcu, %middle.block2555 ] ; 3 uses
  %.11937.i.i.ph = phi i32 [ %.018.lcssa.i.i820, %vector.memcheck2536 ], [ %.018.lcssa.i.i820, %.lr.ph39.i.i.preheader ], [ %i.gcw, %middle.block2555 ] ; 4 uses
  %.12136.i.i.ph = phi ptr [ %.020.lcssa.i.i819, %vector.memcheck2536 ], [ %.020.lcssa.i.i819, %.lr.ph39.i.i.preheader ], [ %i.gcx, %middle.block2555 ] ; 3 uses
  %.12335.i.i.ph = phi ptr [ %.022.lcssa.i.i818, %vector.memcheck2536 ], [ %.022.lcssa.i.i818, %.lr.ph39.i.i.preheader ], [ %i.gcy, %middle.block2555 ] ; 3 uses
  %i.gdc = sub i32 %i.gbs, %.11937.i.i.ph
  %.neg4266 = add i32 %.11937.i.i.ph, 1
  %xtraiter3800 = and i32 %i.gdc, 1
  %lcmp.mod3801.not = icmp eq i32 %xtraiter3800, 0
  br i1 %lcmp.mod3801.not, label %.lr.ph39.i.i.prol.loopexit, label %.lr.ph39.i.i.prol

.lr.ph39.i.i.prol:                                ; preds = %.lr.ph39.i.i.preheader3594
  %i.gdd = load float, ptr %.138.i.i.ph, align 4, !tbaa !59
  %i.gde = load float, ptr %.12136.i.i.ph, align 4, !tbaa !59
  %i.gdf = frem fast float %i.gdd, %i.gde
  store float %i.gdf, ptr %.12335.i.i.ph, align 4, !tbaa !59
  %i.gdg = getelementptr inbounds nuw i8, ptr %.138.i.i.ph, i64 4
  %i.gdh = getelementptr inbounds nuw i8, ptr %.12136.i.i.ph, i64 4
  %i.gdi = getelementptr inbounds nuw i8, ptr %.12335.i.i.ph, i64 4
  %i.gdj = add nuw nsw i32 %.11937.i.i.ph, 1
  br label %.lr.ph39.i.i.prol.loopexit

.lr.ph39.i.i.prol.loopexit:                       ; preds = %.lr.ph39.i.i.prol, %.lr.ph39.i.i.preheader3594
  %.138.i.i.unr = phi ptr [ %.138.i.i.ph, %.lr.ph39.i.i.preheader3594 ], [ %i.gdg, %.lr.ph39.i.i.prol ]
  %.11937.i.i.unr = phi i32 [ %.11937.i.i.ph, %.lr.ph39.i.i.preheader3594 ], [ %i.gdj, %.lr.ph39.i.i.prol ]
  %.12136.i.i.unr = phi ptr [ %.12136.i.i.ph, %.lr.ph39.i.i.preheader3594 ], [ %i.gdh, %.lr.ph39.i.i.prol ]
  %.12335.i.i.unr = phi ptr [ %.12335.i.i.ph, %.lr.ph39.i.i.preheader3594 ], [ %i.gdi, %.lr.ph39.i.i.prol ]
  %i.gdk = icmp eq i32 %i.gbs, %.neg4266
  br i1 %i.gdk, label %_ZN4ncnnL16binary_op_vectorINS_20BinaryOp_x86_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph39.i.i

.lr.ph.i.i823:                                    ; preds = %.lr.ph.i.i823, %.lr.ph.i.i823.preheader.new
  %.031.i.i = phi ptr [ %0, %.lr.ph.i.i823.preheader.new ], [ %i.gec, %.lr.ph.i.i823 ] ; 3 uses
  %.02029.i.i = phi ptr [ %1, %.lr.ph.i.i823.preheader.new ], [ %i.ged, %.lr.ph.i.i823 ] ; 3 uses
  %.02228.i.i = phi ptr [ %2, %.lr.ph.i.i823.preheader.new ], [ %i.gee, %.lr.ph.i.i823 ] ; 3 uses
  %niter3799 = phi i32 [ 0, %.lr.ph.i.i823.preheader.new ], [ %niter3799.next.1, %.lr.ph.i.i823 ]
  %i.gdl = load <4 x float>, ptr %.031.i.i, align 1, !tbaa !60 ; 2 uses
  %i.gdm = load <4 x float>, ptr %.02029.i.i, align 1, !tbaa !60 ; 2 uses
  %i.gdn = fdiv fast <4 x float> %i.gdl, %i.gdm
  %i.gdo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gdn)
  %i.gdp = sitofp fast <4 x i32> %i.gdo to <4 x float>
  %i.gdq = fmul fast <4 x float> %i.gdm, %i.gdp
  %i.gdr = fsub fast <4 x float> %i.gdl, %i.gdq
  store <4 x float> %i.gdr, ptr %.02228.i.i, align 1, !tbaa !60
  %i.gds = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 16
  %i.gdt = getelementptr inbounds nuw i8, ptr %.02029.i.i, i64 16
  %i.gdu = getelementptr inbounds nuw i8, ptr %.02228.i.i, i64 16
  %i.gdv = load <4 x float>, ptr %i.gds, align 1, !tbaa !60 ; 2 uses
  %i.gdw = load <4 x float>, ptr %i.gdt, align 1, !tbaa !60 ; 2 uses
  %i.gdx = fdiv fast <4 x float> %i.gdv, %i.gdw
  %i.gdy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gdx)
  %i.gdz = sitofp fast <4 x i32> %i.gdy to <4 x float>
  %i.gea = fmul fast <4 x float> %i.gdw, %i.gdz
  %i.geb = fsub fast <4 x float> %i.gdv, %i.gea
  store <4 x float> %i.geb, ptr %i.gdu, align 1, !tbaa !60
  %i.gec = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 32 ; 3 uses
  %i.ged = getelementptr inbounds nuw i8, ptr %.02029.i.i, i64 32 ; 3 uses
  %i.gee = getelementptr inbounds nuw i8, ptr %.02228.i.i, i64 32 ; 3 uses
  %niter3799.next.1 = add i32 %niter3799, 2       ; 2 uses
  %niter3799.ncmp.1.not = icmp eq i32 %niter3799.next.1, %unroll_iter3798
  br i1 %niter3799.ncmp.1.not, label %.preheader.loopexit.i.i824.unr-lcssa, label %.lr.ph.i.i823, !llvm.loop !268

.lr.ph39.i.i:                                     ; preds = %.lr.ph39.i.i.prol.loopexit, %.lr.ph39.i.i
  %.138.i.i = phi ptr [ %i.geo, %.lr.ph39.i.i ], [ %.138.i.i.unr, %.lr.ph39.i.i.prol.loopexit ] ; 3 uses
  %.11937.i.i = phi i32 [ %i.ger, %.lr.ph39.i.i ], [ %.11937.i.i.unr, %.lr.ph39.i.i.prol.loopexit ]
  %.12136.i.i = phi ptr [ %i.gep, %.lr.ph39.i.i ], [ %.12136.i.i.unr, %.lr.ph39.i.i.prol.loopexit ] ; 3 uses
  %.12335.i.i = phi ptr [ %i.geq, %.lr.ph39.i.i ], [ %.12335.i.i.unr, %.lr.ph39.i.i.prol.loopexit ] ; 3 uses
  %i.gef = load float, ptr %.138.i.i, align 4, !tbaa !59
  %i.geg = load float, ptr %.12136.i.i, align 4, !tbaa !59
  %i.geh = frem fast float %i.gef, %i.geg
  store float %i.geh, ptr %.12335.i.i, align 4, !tbaa !59
  %i.gei = getelementptr inbounds nuw i8, ptr %.138.i.i, i64 4
  %i.gej = getelementptr inbounds nuw i8, ptr %.12136.i.i, i64 4
  %i.gek = getelementptr inbounds nuw i8, ptr %.12335.i.i, i64 4
  %i.gel = load float, ptr %i.gei, align 4, !tbaa !59
  %i.gem = load float, ptr %i.gej, align 4, !tbaa !59
  %i.gen = frem fast float %i.gel, %i.gem
  store float %i.gen, ptr %i.gek, align 4, !tbaa !59
  %i.geo = getelementptr inbounds nuw i8, ptr %.138.i.i, i64 8
  %i.gep = getelementptr inbounds nuw i8, ptr %.12136.i.i, i64 8
  %i.geq = getelementptr inbounds nuw i8, ptr %.12335.i.i, i64 8
  %i.ger = add nuw nsw i32 %.11937.i.i, 2         ; 2 uses
  %exitcond.not.i.i822.1 = icmp eq i32 %i.ger, %i.gbs
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.fzq = fadd fast <4 x float> %i.fzp, splat (float f0x3DEF251A)
  %i.fzr = fmul fast <4 x float> %i.fzq, %i.fzl
  %i.fzs = fadd fast <4 x float> %i.fzr, splat (float f0xBDFE5D4F)
  %i.fzt = fmul fast <4 x float> %i.fzs, %i.fzl
  %i.fzu = fadd fast <4 x float> %i.fzt, splat (float f0x3E11E9BF)
  %i.fzv = fmul fast <4 x float> %i.fzu, %i.fzl
  %i.fzw = fadd fast <4 x float> %i.fzv, splat (float f0xBE2AAE50)
  %i.fzx = fmul fast <4 x float> %i.fzw, %i.fzl
  %i.fzy = fadd fast <4 x float> %i.fzx, splat (float f0x3E4CCEAC)
  %i.fzz = fmul fast <4 x float> %i.fzy, %i.fzl
  %i.gaa = fadd fast <4 x float> %i.fzz, splat (float f0xBE7FFFFC)
  %i.gab = fmul fast <4 x float> %i.gaa, %i.fzl
  %i.gac = fadd fast <4 x float> %i.gab, splat (float f0x3EAAAAAA)
  %i.gad = fmul fast <4 x float> %i.gac, %i.fzl
  %reass.mul.i69.i = fmul fast <4 x float> %i.fzk, splat (float f0x3F317218)
  %reass.add69.i.i657 = fadd fast <4 x float> %i.gad, splat (float -5.000000e-01)
  %reass.mul70.i.i658 = fmul fast <4 x float> %i.fzm, %reass.add69.i.i657
  %i.gae = fadd fast <4 x float> %reass.mul.i69.i, %i.fzl
  %i.gaf = fadd fast <4 x float> %reass.mul70.i.i658, %i.gae
  %i.gag = fmul fast <4 x float> %i.gaf, %i.fyr
  %i.gah = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gag, <4 x float> splat (float f0x42B0C0A5))
  %i.gai = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gah, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gaj = fmul fast <4 x float> %i.gai, splat (float f0x3FB8AA3B)
  %i.gak = fadd fast <4 x float> %i.gaj, splat (float 5.000000e-01) ; 2 uses
  %i.gal = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gak)
  %i.gam = sitofp fast <4 x i32> %i.gal to <4 x float> ; 2 uses
  %i.gan = fcmp fast olt <4 x float> %i.gak, %i.gam
  %i.gao = select <4 x i1> %i.gan, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gap = fsub fast <4 x float> %i.gam, %i.gao   ; 2 uses
  %i.gaq = fmul fast <4 x float> %i.gap, splat (float f0x3F317218)
  %i.gar = fsub fast <4 x float> %i.gai, %i.gaq   ; 8 uses
  %i.gas = fmul fast <4 x float> %i.gar, %i.gar
  %i.gat = fmul fast <4 x float> %i.gar, splat (float f0x39506967)
  %i.gau = fadd fast <4 x float> %i.gat, splat (float f0x3AB743CE)
  %i.gav = fmul fast <4 x float> %i.gau, %i.gar
  %i.gaw = fadd fast <4 x float> %i.gav, splat (float f0x3C088908)
  %i.gax = fmul fast <4 x float> %i.gaw, %i.gar
  %i.gay = fadd fast <4 x float> %i.gax, splat (float f0x3D2AA9C1)
  %i.gaz = fmul fast <4 x float> %i.gay, %i.gar
  %i.gba = fadd fast <4 x float> %i.gaz, splat (float f0x3E2AAAAA)
  %i.gbb = fmul fast <4 x float> %i.gba, %i.gar
  %i.gbc = fadd fast <4 x float> %i.gbb, splat (float 5.000000e-01)
  %i.gbd = fmul fast <4 x float> %i.gas, %i.gbc
  %i.gbe = fadd fast <4 x float> %i.gar, %i.gbd
  %i.gbf = fadd fast <4 x float> %i.gbe, splat (float 1.000000e+00)
  %i.gbg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gap)
  %i.gbh = shl <4 x i32> %i.gbg, splat (i32 23)
  %i.gbi = add <4 x i32> %i.gbh, splat (i32 1065353216)
  %i.gbj = bitcast <4 x i32> %i.gbi to <4 x float>
  %i.gbk = fmul fast <4 x float> %i.gbf, %i.gbj
  %i.gbl = bitcast <4 x float> %i.gbk to <8 x i16>
  %i.gbm = shufflevector <8 x i16> %i.gbl, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.gbn = bitcast <8 x i16> %i.gbm to <4 x float>
  %i.gbo = shufflevector <4 x float> %i.gbn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gbp = bitcast <4 x float> %i.gbo to <2 x i64>
  %i.gbq = extractelement <2 x i64> %i.gbp, i64 0
  store i64 %i.gbq, ptr %.0971.i.i656, align 1, !tbaa !60
  %i.gbr = getelementptr inbounds nuw i8, ptr %.0872.i.i655, i64 2
  %i.gbs = getelementptr inbounds nuw i8, ptr %.0971.i.i656, i64 8
  %i.gbt = add nuw nsw i32 %.073.i.i654, 1        ; 2 uses
  %exitcond.not.i70.i = icmp eq i32 %i.gbt, %.sroa.speculated81.i
  br i1 %exitcond.not.i70.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i68.i, !llvm.loop !560

bb.gv:                                            ; preds = %bb.a
  %.sroa.speculated70.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i735 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.gbu = mul i32 %.sroa.speculated.i735, %.sroa.speculated70.i ; 32 uses
  %i.gbv = icmp eq i32 %5, %6
  br i1 %i.gbv, label %bb.gw, label %bb.hk

bb.gw:                                            ; preds = %bb.gv
  %i.gbw = icmp eq i32 %3, %4
  br i1 %i.gbw, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.gbx = icmp sgt i32 %i.gbu, 3
  br i1 %i.gbx, label %.lr.ph.i.i760, label %.preheader.i.i754

.preheader.loopexit.i.i761:                       ; preds = %.lr.ph.i.i760
  %i.gby = and i32 %i.gbu, 2147483644
  br label %.preheader.i.i754

.preheader.i.i754:                                ; preds = %.preheader.loopexit.i.i761, %bb.gx
  %.018.lcssa.i.i755 = phi ptr [ %1, %bb.gx ], [ %i.ggg, %.preheader.loopexit.i.i761 ] ; 5 uses
  %.016.lcssa.i.i756 = phi ptr [ %2, %bb.gx ], [ %i.ggh, %.preheader.loopexit.i.i761 ] ; 5 uses
  %.014.lcssa.i.i757 = phi ptr [ %0, %bb.gx ], [ %i.ggf, %.preheader.loopexit.i.i761 ] ; 5 uses
  %.0.lcssa.i.i758 = phi i32 [ 0, %bb.gx ], [ %i.gby, %.preheader.loopexit.i.i761 ] ; 5 uses
  %.016.lcssa.i.i7563027 = ptrtoaddr ptr %.016.lcssa.i.i756 to i64 ; 2 uses
  %.014.lcssa.i.i7573028 = ptrtoaddr ptr %.014.lcssa.i.i757 to i64
  %.018.lcssa.i.i7553030 = ptrtoaddr ptr %.018.lcssa.i.i755 to i64
  %i.gbz = icmp slt i32 %.0.lcssa.i.i758, %i.gbu
  br i1 %i.gbz, label %.lr.ph72.i.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph72.i.i.preheader:                           ; preds = %.preheader.i.i754
  %i.gca = xor i32 %.0.lcssa.i.i758, -1
  %i.gcb = add i32 %i.gbu, %i.gca                 ; 2 uses
  %i.gcc = zext i32 %i.gcb to i64
  %i.gcd = add nuw nsw i64 %i.gcc, 1              ; 2 uses
  %min.iters.check3034 = icmp ult i32 %i.gcb, 7
  br i1 %min.iters.check3034, label %.lr.ph72.i.i.preheader4181, label %vector.memcheck3026

vector.memcheck3026:                              ; preds = %.lr.ph72.i.i.preheader
  %i.gce = sub i64 %.014.lcssa.i.i7573028, %.016.lcssa.i.i7563027
  %diff.check3029 = icmp ugt i64 %i.gce, -16
  %i.gcf = sub i64 %.018.lcssa.i.i7553030, %.016.lcssa.i.i7563027
  %diff.check3031 = icmp ugt i64 %i.gcf, -16
  %conflict.rdx3032 = or i1 %diff.check3029, %diff.check3031
  br i1 %conflict.rdx3032, label %.lr.ph72.i.i.preheader4181, label %vector.ph3035

vector.ph3035:                                    ; preds = %vector.memcheck3026
  %n.vec3036 = and i64 %i.gcd, 8589934584         ; 4 uses
  %i.gcg = trunc i64 %n.vec3036 to i32
  %i.gch = add i32 %.0.lcssa.i.i758, %i.gcg
  %i.gci = shl nuw nsw i64 %n.vec3036, 1          ; 3 uses
  %i.gcj = getelementptr i8, ptr %.014.lcssa.i.i757, i64 %i.gci
  %i.gck = getelementptr i8, ptr %.016.lcssa.i.i756, i64 %i.gci
  %i.gcl = getelementptr i8, ptr %.018.lcssa.i.i755, i64 %i.gci
  br label %vector.body3037

vector.body3037:                                  ; preds = %vector.body3037, %vector.ph3035
  %index3038 = phi i64 [ 0, %vector.ph3035 ], [ %index.next3044, %vector.body3037 ] ; 2 uses
  %i.gcm = shl i64 %index3038, 1                  ; 3 uses
  %next.gep3039 = getelementptr i8, ptr %.014.lcssa.i.i757, i64 %i.gcm
  %next.gep3040 = getelementptr i8, ptr %.016.lcssa.i.i756, i64 %i.gcm
  %next.gep3041 = getelementptr i8, ptr %.018.lcssa.i.i755, i64 %i.gcm
  %wide.load3042 = load <8 x i16>, ptr %next.gep3039, align 2, !tbaa !57
  %i.gcn = zext <8 x i16> %wide.load3042 to <8 x i32>
  %i.gco = shl nuw <8 x i32> %i.gcn, splat (i32 16)
  %i.gcp = bitcast <8 x i32> %i.gco to <8 x float>
  %wide.load3043 = load <8 x i16>, ptr %next.gep3041, align 2, !tbaa !57
  %i.gcq = zext <8 x i16> %wide.load3043 to <8 x i32>
  %i.gcr = shl nuw <8 x i32> %i.gcq, splat (i32 16)
  %i.gcs = bitcast <8 x i32> %i.gcr to <8 x float>
  %i.gct = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.gcp, <8 x float> %i.gcs)
  %i.gcu = bitcast <8 x float> %i.gct to <8 x i32>
  %i.gcv = lshr <8 x i32> %i.gcu, splat (i32 16)
  %i.gcw = trunc nuw <8 x i32> %i.gcv to <8 x i16>
  store <8 x i16> %i.gcw, ptr %next.gep3040, align 2, !tbaa !57
  %index.next3044 = add nuw i64 %index3038, 8     ; 2 uses
  %i.gcx = icmp eq i64 %index.next3044, %n.vec3036
  br i1 %i.gcx, label %middle.block3045, label %vector.body3037, !llvm.loop !561

middle.block3045:                                 ; preds = %vector.body3037
  %cmp.n3046 = icmp eq i64 %i.gcd, %n.vec3036
  br i1 %cmp.n3046, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph72.i.i.preheader4181

.lr.ph72.i.i.preheader4181:                       ; preds = %vector.memcheck3026, %.lr.ph72.i.i.preheader, %middle.block3045
  %.171.i.i.ph = phi i32 [ %.0.lcssa.i.i758, %vector.memcheck3026 ], [ %.0.lcssa.i.i758, %.lr.ph72.i.i.preheader ], [ %i.gch, %middle.block3045 ] ; 4 uses
  %.11570.i.i.ph = phi ptr [ %.014.lcssa.i.i757, %vector.memcheck3026 ], [ %.014.lcssa.i.i757, %.lr.ph72.i.i.preheader ], [ %i.gcj, %middle.block3045 ] ; 3 uses
  %.11769.i.i.ph = phi ptr [ %.016.lcssa.i.i756, %vector.memcheck3026 ], [ %.016.lcssa.i.i756, %.lr.ph72.i.i.preheader ], [ %i.gck, %middle.block3045 ] ; 3 uses
  %.11968.i.i.ph = phi ptr [ %.018.lcssa.i.i755, %vector.memcheck3026 ], [ %.018.lcssa.i.i755, %.lr.ph72.i.i.preheader ], [ %i.gcl, %middle.block3045 ] ; 3 uses
  %i.gcy = sub i32 %i.gbu, %.171.i.i.ph
  %.neg4478 = add i32 %.171.i.i.ph, 1
  %xtraiter4380 = and i32 %i.gcy, 1
  %lcmp.mod4381.not = icmp eq i32 %xtraiter4380, 0
  br i1 %lcmp.mod4381.not, label %.lr.ph72.i.i.prol.loopexit, label %.lr.ph72.i.i.prol

.lr.ph72.i.i.prol:                                ; preds = %.lr.ph72.i.i.preheader4181
  %i.gcz = getelementptr inbounds nuw i8, ptr %.11570.i.i.ph, i64 2
  %i.gda = load i16, ptr %.11570.i.i.ph, align 2, !tbaa !57
  %i.gdb = zext i16 %i.gda to i32
  %i.gdc = shl nuw i32 %i.gdb, 16
  %i.gdd = bitcast i32 %i.gdc to float
  %i.gde = getelementptr inbounds nuw i8, ptr %.11968.i.i.ph, i64 2
  %i.gdf = load i16, ptr %.11968.i.i.ph, align 2, !tbaa !57
  %i.gdg = zext i16 %i.gdf to i32
  %i.gdh = shl nuw i32 %i.gdg, 16
  %i.gdi = bitcast i32 %i.gdh to float
  %i.gdj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.gdd, float %i.gdi)
  %i.gdk = bitcast float %i.gdj to i32
  %i.gdl = lshr i32 %i.gdk, 16
  %i.gdm = trunc nuw i32 %i.gdl to i16
  %i.gdn = getelementptr inbounds nuw i8, ptr %.11769.i.i.ph, i64 2
  store i16 %i.gdm, ptr %.11769.i.i.ph, align 2, !tbaa !57
  %i.gdo = add nuw nsw i32 %.171.i.i.ph, 1
  br label %.lr.ph72.i.i.prol.loopexit

.lr.ph72.i.i.prol.loopexit:                       ; preds = %.lr.ph72.i.i.prol, %.lr.ph72.i.i.preheader4181
  %.171.i.i.unr = phi i32 [ %.171.i.i.ph, %.lr.ph72.i.i.preheader4181 ], [ %i.gdo, %.lr.ph72.i.i.prol ]
  %.11570.i.i.unr = phi ptr [ %.11570.i.i.ph, %.lr.ph72.i.i.preheader4181 ], [ %i.gcz, %.lr.ph72.i.i.prol ]
  %.11769.i.i.unr = phi ptr [ %.11769.i.i.ph, %.lr.ph72.i.i.preheader4181 ], [ %i.gdn, %.lr.ph72.i.i.prol ]
  %.11968.i.i.unr = phi ptr [ %.11968.i.i.ph, %.lr.ph72.i.i.preheader4181 ], [ %i.gde, %.lr.ph72.i.i.prol ]
  %i.gdp = icmp eq i32 %i.gbu, %.neg4478
  br i1 %i.gdp, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph72.i.i

.lr.ph.i.i760:                                    ; preds = %bb.gx, %.lr.ph.i.i760
  %.064.i.i = phi i32 [ %i.ggi, %.lr.ph.i.i760 ], [ 0, %bb.gx ]
  %.01463.i.i = phi ptr [ %i.ggf, %.lr.ph.i.i760 ], [ %0, %bb.gx ] ; 2 uses
  %.01662.i.i = phi ptr [ %i.ggh, %.lr.ph.i.i760 ], [ %2, %bb.gx ] ; 2 uses
  %.01861.i.i = phi ptr [ %i.ggg, %.lr.ph.i.i760 ], [ %1, %bb.gx ] ; 2 uses
  %i.gdq = load i64, ptr %.01463.i.i, align 1, !tbaa !60
  %i.gdr = insertelement <2 x i64> poison, i64 %i.gdq, i64 0
  %i.gds = bitcast <2 x i64> %i.gdr to <8 x i16>
  %i.gdt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gds, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.gdu = bitcast <8 x i16> %i.gdt to <4 x float> ; 3 uses
  %i.gdv = load i64, ptr %.01861.i.i, align 1, !tbaa !60
  %i.gdw = insertelement <2 x i64> poison, i64 %i.gdv, i64 0
  %i.gdx = bitcast <2 x i64> %i.gdw to <8 x i16>
  %i.gdy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gdx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.gdz = bitcast <8 x i16> %i.gdy to <4 x float> ; 3 uses
  %i.gea = fcmp fast oeq <4 x float> %i.gdz, zeroinitializer ; 2 uses
  %i.geb = fcmp fast oeq <4 x float> %i.gdu, zeroinitializer ; 2 uses
  %.not60.i.i = or <4 x i1> %i.geb, %i.gea
  %i.gec = fcmp fast olt <4 x float> %i.gdz, zeroinitializer
  %i.ged = fcmp fast olt <4 x float> %i.gdu, zeroinitializer
  %i.gee = select <4 x i1> %i.ged, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.gef = select <4 x i1> %i.gec, <4 x float> %i.gee, <4 x float> zeroinitializer
  %i.geg = fdiv fast <4 x float> %i.gdu, %i.gdz   ; 2 uses
  %i.geh = bitcast <4 x float> %i.geg to <4 x i32>
  %i.gei = and <4 x i32> %i.geh, splat (i32 -2147483648)
  %i.gej = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.geg) ; 3 uses
  %i.gek = fcmp fast ogt <4 x float> %i.gej, splat (float 1.000000e+00) ; 2 uses
  %i.gel = select <4 x i1> %i.gek, <4 x float> splat (float -1.000000e+00), <4 x float> %i.gej
  %i.gem = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.gej, <4 x float> splat (float 1.000000e+00))
  %i.gen = fdiv fast <4 x float> %i.gel, %i.gem   ; 3 uses
  %i.geo = fmul fast <4 x float> %i.gen, %i.gen   ; 3 uses
  %i.gep = fmul fast <4 x float> %i.geo, %i.geo   ; 7 uses
  %i.geq = fmul fast <4 x float> %i.gep, splat (float f0x3C83A25C)
  %i.ger = fsub fast <4 x float> splat (float f0xBD99B01E), %i.geq
  %i.ges = fmul fast <4 x float> %i.ger, %i.gep
  %i.get = fadd fast <4 x float> %i.ges, splat (float f0xBE117200)
  %i.geu = fmul fast <4 x float> %i.get, %i.gep
  %i.gev = fadd fast <4 x float> %i.geu, splat (float f0xBEAAAA53)
  %i.gew = fmul fast <4 x float> %i.gep, splat (float f0x3B3AC537)
  %i.gex = fadd fast <4 x float> %i.gew, splat (float f0x3D2EDD4E)
  %i.gey = fmul fast <4 x float> %i.gex, %i.gep
  %i.gez = fadd fast <4 x float> %i.gey, splat (float f0x3DD9ED24)
  %i.gfa = fmul fast <4 x float> %i.gez, %i.gep
  %i.gfb = fadd fast <4 x float> %i.gfa, splat (float f0x3E4CB974)
  %i.gfc = fmul fast <4 x float> %i.gfb, %i.gep
  %i.gfd = fadd fast <4 x float> %i.gfc, splat (float 1.000000e+00)
  %i.gfe = fmul fast <4 x float> %i.gev, %i.geo
  %i.gff = fadd fast <4 x float> %i.gfd, %i.gfe
  %i.gfg = fmul fast <4 x float> %i.gff, %i.gen
  %i.gfh = select <4 x i1> %i.gek, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.gfi = fadd fast <4 x float> %i.gfg, %i.gfh
  %i.gfj = bitcast <4 x float> %i.gfi to <4 x i32>
  %i.gfk = or <4 x i32> %i.gei, %i.gfj
  %i.gfl = bitcast <4 x i32> %i.gfk to <4 x float>
  %i.gfm = fadd fast <4 x float> %i.gef, %i.gfl
  %i.gfn = bitcast <8 x i16> %i.gdy to <4 x i32>
  %i.gfo = and <4 x i32> %i.gfn, splat (i32 -2147483648)
  %i.gfp = or disjoint <4 x i32> %i.gfo, splat (i32 1078530011)
  %i.gfq = bitcast <4 x i32> %i.gfp to <4 x float>
  %i.gfr = fcmp fast uge <4 x float> %i.gfq, zeroinitializer
  %i.gfs = bitcast <8 x i16> %i.gdt to <4 x i32>
  %i.gft = and <4 x i32> %i.gfs, splat (i32 -2147483648)
  %i.gfu = or disjoint <4 x i32> %i.gft, splat (i32 1070141403)
  %i.gfv = select <4 x i1> %i.gfr, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.gfw = bitcast <4 x float> %i.gfm to <4 x i32>
  %8 = select <4 x i1> %.not60.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.gfw
  %i.gfx = select <4 x i1> %i.gea, <4 x i32> %i.gfu, <4 x i32> zeroinitializer
  %i.gfy = select <4 x i1> %i.geb, <4 x i32> %i.gfv, <4 x i32> %i.gfx
  %9 = or <4 x i32> %8, %i.gfy
  %i.gfz = bitcast <4 x i32> %9 to <8 x i16>
  %i.gga = shufflevector <8 x i16> %i.gfz, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ggb = bitcast <8 x i16> %i.gga to <4 x float>
  %i.ggc = shufflevector <4 x float> %i.ggb, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ggd = bitcast <4 x float> %i.ggc to <2 x i64>
  %i.gge = extractelement <2 x i64> %i.ggd, i64 0
  store i64 %i.gge, ptr %.01662.i.i, align 1, !tbaa !60
  %i.ggf = getelementptr inbounds nuw i8, ptr %.01463.i.i, i64 8 ; 2 uses
  %i.ggg = getelementptr inbounds nuw i8, ptr %.01861.i.i, i64 8 ; 2 uses
  %i.ggh = getelementptr inbounds nuw i8, ptr %.01662.i.i, i64 8 ; 2 uses
  %i.ggi = add nuw nsw i32 %.064.i.i, 4           ; 2 uses
  %i.ggj = or disjoint i32 %i.ggi, 3
  %i.ggk = icmp slt i32 %i.ggj, %i.gbu
  br i1 %i.ggk, label %.lr.ph.i.i760, label %.preheader.loopexit.i.i761, !llvm.loop !562

.lr.ph72.i.i:                                     ; preds = %.lr.ph72.i.i.prol.loopexit, %.lr.ph72.i.i
  %.171.i.i = phi i32 [ %i.ghp, %.lr.ph72.i.i ], [ %.171.i.i.unr, %.lr.ph72.i.i.prol.loopexit ]
  %.11570.i.i = phi ptr [ %i.gha, %.lr.ph72.i.i ], [ %.11570.i.i.unr, %.lr.ph72.i.i.prol.loopexit ] ; 3 uses
  %.11769.i.i = phi ptr [ %i.gho, %.lr.ph72.i.i ], [ %.11769.i.i.unr, %.lr.ph72.i.i.prol.loopexit ] ; 3 uses
  %.11968.i.i = phi ptr [ %i.ghf, %.lr.ph72.i.i ], [ %.11968.i.i.unr, %.lr.ph72.i.i.prol.loopexit ] ; 3 uses
  %i.ggl = getelementptr inbounds nuw i8, ptr %.11570.i.i, i64 2
  %i.ggm = load i16, ptr %.11570.i.i, align 2, !tbaa !57
  %i.ggn = zext i16 %i.ggm to i32
  %i.ggo = shl nuw i32 %i.ggn, 16
  %i.ggp = bitcast i32 %i.ggo to float
  %i.ggq = getelementptr inbounds nuw i8, ptr %.11968.i.i, i64 2
  %i.ggr = load i16, ptr %.11968.i.i, align 2, !tbaa !57
  %i.ggs = zext i16 %i.ggr to i32
  %i.ggt = shl nuw i32 %i.ggs, 16
  %i.ggu = bitcast i32 %i.ggt to float
  %i.ggv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ggp, float %i.ggu)
  %i.ggw = bitcast float %i.ggv to i32
  %i.ggx = lshr i32 %i.ggw, 16
  %i.ggy = trunc nuw i32 %i.ggx to i16
  %i.ggz = getelementptr inbounds nuw i8, ptr %.11769.i.i, i64 2
  store i16 %i.ggy, ptr %.11769.i.i, align 2, !tbaa !57
  %i.gha = getelementptr inbounds nuw i8, ptr %.11570.i.i, i64 4
  %i.ghb = load i16, ptr %i.ggl, align 2, !tbaa !57
  %i.ghc = zext i16 %i.ghb to i32
  %i.ghd = shl nuw i32 %i.ghc, 16
  %i.ghe = bitcast i32 %i.ghd to float
  %i.ghf = getelementptr inbounds nuw i8, ptr %.11968.i.i, i64 4
  %i.ghg = load i16, ptr %i.ggq, align 2, !tbaa !57
  %i.ghh = zext i16 %i.ghg to i32
  %i.ghi = shl nuw i32 %i.ghh, 16
  %i.ghj = bitcast i32 %i.ghi to float
  %i.ghk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ghe, float %i.ghj)
  %i.ghl = bitcast float %i.ghk to i32
  %i.ghm = lshr i32 %i.ghl, 16
  %i.ghn = trunc nuw i32 %i.ghm to i16
  %i.gho = getelementptr inbounds nuw i8, ptr %.11769.i.i, i64 4
  store i16 %i.ghn, ptr %i.ggz, align 2, !tbaa !57
  %i.ghp = add nuw nsw i32 %.171.i.i, 2           ; 2 uses
  %exitcond.not.i.i759.1 = icmp eq i32 %i.ghp, %i.gbu
  br i1 %exitcond.not.i.i759.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph72.i.i, !llvm.loop !563

bb.gy:                                            ; preds = %bb.gw
  %i.ghq = icmp eq i32 %4, 1
  br i1 %i.ghq, label %bb.gz, label %bb.he

bb.gz:                                            ; preds = %bb.gy
  %i.ghr = load i16, ptr %1, align 2, !tbaa !57
  %i.ghs = zext i16 %i.ghr to i32
  %i.ght = shl nuw i32 %i.ghs, 16
  %i.ghu = bitcast i32 %i.ght to float            ; 6 uses
  %i.ghv = icmp eq i32 %.sroa.speculated.i735, 4
  br i1 %i.ghv, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.ghw = load i64, ptr %1, align 2, !tbaa !60
  %i.ghx = insertelement <2 x i64> poison, i64 %i.ghw, i64 0
  %i.ghy = bitcast <2 x i64> %i.ghx to <8 x i16>
  %i.ghz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ghy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gia = bitcast <8 x i16> %i.ghz to <4 x float>
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gz
  %i.gib = insertelement <4 x float> poison, float %i.ghu, i64 0
  %i.gic = shufflevector <4 x float> %i.gib, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.gid = phi fast <4 x float> [ %i.gia, %bb.ha ], [ %i.gic, %bb.hb ] ; 4 uses
  %i.gie = icmp sgt i32 %i.gbu, 3
  br i1 %i.gie, label %.lr.ph.i37.i752, label %.preheader.i34.i747

.lr.ph.i37.i752:                                  ; preds = %bb.hc
  %i.gif = fcmp fast oeq <4 x float> %i.gid, zeroinitializer ; 2 uses
  %i.gig = fcmp fast olt <4 x float> %i.gid, zeroinitializer
  %i.gih = bitcast <4 x float> %i.gid to <4 x i32>
  %isneg.inv.i.i = icmp slt <4 x i32> %i.gih, zeroinitializer
  %i.gii = select <4 x i1> %isneg.inv.i.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.gij = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gid
  br label %bb.hd

.preheader.loopexit.i38.i753:                     ; preds = %bb.hd
  %i.gik = and i32 %i.gbu, 2147483644
  br label %.preheader.i34.i747

.preheader.i34.i747:                              ; preds = %.preheader.loopexit.i38.i753, %bb.hc
  %.017.lcssa.i.i748 = phi ptr [ %2, %bb.hc ], [ %i.gmd, %.preheader.loopexit.i38.i753 ] ; 4 uses
  %.015.lcssa.i.i749 = phi ptr [ %0, %bb.hc ], [ %i.gmc, %.preheader.loopexit.i38.i753 ] ; 4 uses
  %.0.lcssa.i35.i750 = phi i32 [ 0, %bb.hc ], [ %i.gik, %.preheader.loopexit.i38.i753 ] ; 4 uses
  %i.gil = icmp slt i32 %.0.lcssa.i35.i750, %i.gbu
  br i1 %i.gil, label %.lr.ph67.i.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph67.i.i.preheader:                           ; preds = %.preheader.i34.i747
  %.015.lcssa.i.i7493009 = ptrtoaddr ptr %.015.lcssa.i.i749 to i64
  %.017.lcssa.i.i7483008 = ptrtoaddr ptr %.017.lcssa.i.i748 to i64
  %i.gim = xor i32 %.0.lcssa.i35.i750, -1
  %i.gin = add i32 %i.gbu, %i.gim                 ; 2 uses
  %i.gio = zext i32 %i.gin to i64
  %i.gip = add nuw nsw i64 %i.gio, 1              ; 2 uses
  %min.iters.check3012 = icmp ult i32 %i.gin, 7
  %i.giq = sub i64 %.015.lcssa.i.i7493009, %.017.lcssa.i.i7483008
  %diff.check3010 = icmp ugt i64 %i.giq, -16
  %or.cond3948.a = select i1 %min.iters.check3012, i1 true, i1 %diff.check3010
  br i1 %or.cond3948.a, label %.lr.ph67.i.i.preheader4186, label %vector.ph3013

vector.ph3013:                                    ; preds = %.lr.ph67.i.i.preheader
  %n.vec3014 = and i64 %i.gip, 8589934584         ; 4 uses
  %i.gir = trunc i64 %n.vec3014 to i32
  %i.gis = add i32 %.0.lcssa.i35.i750, %i.gir
  %i.git = shl nuw nsw i64 %n.vec3014, 1          ; 2 uses
  %i.giu = getelementptr i8, ptr %.015.lcssa.i.i749, i64 %i.git
  %i.giv = getelementptr i8, ptr %.017.lcssa.i.i748, i64 %i.git
  %i.giw = insertelement <4 x float> poison, float %i.ghu, i64 0
  %i.gix = shufflevector <4 x float> %i.giw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.giy = insertelement <2 x float> poison, float %i.ghu, i64 0
  %i.giz = shufflevector <2 x float> %i.giy, <2 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body3015

vector.body3015:                                  ; preds = %vector.body3015, %vector.ph3013
  %index3016 = phi i64 [ 0, %vector.ph3013 ], [ %index.next3020, %vector.body3015 ] ; 2 uses
  %i.gja = shl i64 %index3016, 1                  ; 2 uses
  %next.gep3017 = getelementptr i8, ptr %.015.lcssa.i.i749, i64 %i.gja
  %next.gep3018 = getelementptr i8, ptr %.017.lcssa.i.i748, i64 %i.gja
  %wide.load3019 = load <8 x i16>, ptr %next.gep3017, align 2, !tbaa !57
  %i.gjb = zext <8 x i16> %wide.load3019 to <8 x i32>
  %i.gjc = shl nuw <8 x i32> %i.gjb, splat (i32 16)
  %i.gjd = bitcast <8 x i32> %i.gjc to <8 x float> ; 2 uses
  %i.gje = shufflevector <8 x float> %i.gjd, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gjf = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.gje, <4 x float> %i.gix)
  %i.gjg = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.gjd, <8 x float> %i.giz)
  %i.gjh = shufflevector <4 x float> %i.gjf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gji = shufflevector <8 x float> %i.gjg, <8 x float> %i.gjh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gjj = bitcast <8 x float> %i.gji to <8 x i32>
  %i.gjk = lshr <8 x i32> %i.gjj, splat (i32 16)
  %i.gjl = trunc nuw <8 x i32> %i.gjk to <8 x i16>
  store <8 x i16> %i.gjl, ptr %next.gep3018, align 2, !tbaa !57
  %index.next3020 = add nuw i64 %index3016, 8     ; 2 uses
  %i.gjm = icmp eq i64 %index.next3020, %n.vec3014
  br i1 %i.gjm, label %middle.block3021, label %vector.body3015, !llvm.loop !564

middle.block3021:                                 ; preds = %vector.body3015
  %cmp.n3022 = icmp eq i64 %i.gip, %n.vec3014
  br i1 %cmp.n3022, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i.preheader4186

.lr.ph67.i.i.preheader4186:                       ; preds = %.lr.ph67.i.i.preheader, %middle.block3021
  %.166.i.i.ph = phi i32 [ %.0.lcssa.i35.i750, %.lr.ph67.i.i.preheader ], [ %i.gis, %middle.block3021 ] ; 4 uses
  %.11665.i.i.ph = phi ptr [ %.015.lcssa.i.i749, %.lr.ph67.i.i.preheader ], [ %i.giu, %middle.block3021 ] ; 3 uses
  %.11864.i.i.ph = phi ptr [ %.017.lcssa.i.i748, %.lr.ph67.i.i.preheader ], [ %i.giv, %middle.block3021 ] ; 3 uses
  %i.gjn = sub i32 %i.gbu, %.166.i.i.ph
  %.neg4477 = add i32 %.166.i.i.ph, 1
  %xtraiter4378 = and i32 %i.gjn, 1
  %lcmp.mod4379.not = icmp eq i32 %xtraiter4378, 0
  br i1 %lcmp.mod4379.not, label %.lr.ph67.i.i.prol.loopexit, label %.lr.ph67.i.i.prol

.lr.ph67.i.i.prol:                                ; preds = %.lr.ph67.i.i.preheader4186
  %i.gjo = getelementptr inbounds nuw i8, ptr %.11665.i.i.ph, i64 2
  %i.gjp = load i16, ptr %.11665.i.i.ph, align 2, !tbaa !57
  %i.gjq = zext i16 %i.gjp to i32
  %i.gjr = shl nuw i32 %i.gjq, 16
  %i.gjs = bitcast i32 %i.gjr to float
  %i.gjt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.gjs, float %i.ghu)
  %i.gju = bitcast float %i.gjt to i32
  %i.gjv = lshr i32 %i.gju, 16
  %i.gjw = trunc nuw i32 %i.gjv to i16
  %i.gjx = getelementptr inbounds nuw i8, ptr %.11864.i.i.ph, i64 2
  store i16 %i.gjw, ptr %.11864.i.i.ph, align 2, !tbaa !57
  %i.gjy = add nuw nsw i32 %.166.i.i.ph, 1
  br label %.lr.ph67.i.i.prol.loopexit

.lr.ph67.i.i.prol.loopexit:                       ; preds = %.lr.ph67.i.i.prol, %.lr.ph67.i.i.preheader4186
  %.166.i.i.unr = phi i32 [ %.166.i.i.ph, %.lr.ph67.i.i.preheader4186 ], [ %i.gjy, %.lr.ph67.i.i.prol ]
  %.11665.i.i.unr = phi ptr [ %.11665.i.i.ph, %.lr.ph67.i.i.preheader4186 ], [ %i.gjo, %.lr.ph67.i.i.prol ]
  %.11864.i.i.unr = phi ptr [ %.11864.i.i.ph, %.lr.ph67.i.i.preheader4186 ], [ %i.gjx, %.lr.ph67.i.i.prol ]
  %i.gjz = icmp eq i32 %i.gbu, %.neg4477
  br i1 %i.gjz, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i

bb.hd:                                            ; preds = %bb.hd, %.lr.ph.i37.i752
  %.061.i.i = phi i32 [ 0, %.lr.ph.i37.i752 ], [ %i.gme, %bb.hd ]
  %.01560.i.i = phi ptr [ %0, %.lr.ph.i37.i752 ], [ %i.gmc, %bb.hd ] ; 2 uses
  %.01759.i.i = phi ptr [ %2, %.lr.ph.i37.i752 ], [ %i.gmd, %bb.hd ] ; 2 uses
  %i.gka = load i64, ptr %.01560.i.i, align 1, !tbaa !60
  %i.gkb = insertelement <2 x i64> poison, i64 %i.gka, i64 0
  %i.gkc = bitcast <2 x i64> %i.gkb to <8 x i16>
  %i.gkd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gkc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.gke = bitcast <8 x i16> %i.gkd to <4 x float> ; 3 uses
  %i.gkf = fcmp fast oeq <4 x float> %i.gke, zeroinitializer ; 2 uses
  %.not58.i.i = or <4 x i1> %i.gif, %i.gkf
  %i.gkg = fcmp fast olt <4 x float> %i.gke, zeroinitializer
  %i.gkh = select <4 x i1> %i.gkg, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.gki = select <4 x i1> %i.gig, <4 x float> %i.gkh, <4 x float> zeroinitializer
  %i.gkj = fmul fast <4 x float> %i.gke, %i.gij   ; 2 uses
  %i.gkk = bitcast <4 x float> %i.gkj to <4 x i32>
  %i.gkl = and <4 x i32> %i.gkk, splat (i32 -2147483648)
  %i.gkm = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gkj) ; 3 uses
  %i.gkn = fcmp fast ogt <4 x float> %i.gkm, splat (float 1.000000e+00) ; 2 uses
  %i.gko = select <4 x i1> %i.gkn, <4 x float> splat (float -1.000000e+00), <4 x float> %i.gkm
  %i.gkp = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.gkm, <4 x float> splat (float 1.000000e+00))
  %i.gkq = fdiv fast <4 x float> %i.gko, %i.gkp   ; 3 uses
  %i.gkr = fmul fast <4 x float> %i.gkq, %i.gkq   ; 3 uses
  %i.gks = fmul fast <4 x float> %i.gkr, %i.gkr   ; 7 uses
  %i.gkt = fmul fast <4 x float> %i.gks, splat (float f0x3C83A25C)
  %i.gku = fsub fast <4 x float> splat (float f0xBD99B01E), %i.gkt
  %i.gkv = fmul fast <4 x float> %i.gku, %i.gks
  %i.gkw = fadd fast <4 x float> %i.gkv, splat (float f0xBE117200)
  %i.gkx = fmul fast <4 x float> %i.gkw, %i.gks
  %i.gky = fadd fast <4 x float> %i.gkx, splat (float f0xBEAAAA53)
  %i.gkz = fmul fast <4 x float> %i.gks, splat (float f0x3B3AC537)
  %i.gla = fadd fast <4 x float> %i.gkz, splat (float f0x3D2EDD4E)
  %i.glb = fmul fast <4 x float> %i.gla, %i.gks
  %i.glc = fadd fast <4 x float> %i.glb, splat (float f0x3DD9ED24)
  %i.gld = fmul fast <4 x float> %i.glc, %i.gks
  %i.gle = fadd fast <4 x float> %i.gld, splat (float f0x3E4CB974)
  %i.glf = fmul fast <4 x float> %i.gle, %i.gks
  %i.glg = fadd fast <4 x float> %i.glf, splat (float 1.000000e+00)
  %i.glh = fmul fast <4 x float> %i.gky, %i.gkr
  %i.gli = fadd fast <4 x float> %i.glg, %i.glh
  %i.glj = fmul fast <4 x float> %i.gli, %i.gkq
  %i.glk = select <4 x i1> %i.gkn, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.gll = fadd fast <4 x float> %i.glj, %i.glk
  %i.glm = bitcast <4 x float> %i.gll to <4 x i32>
  %i.gln = or <4 x i32> %i.gkl, %i.glm
  %i.glo = bitcast <4 x i32> %i.gln to <4 x float>
  %i.glp = fadd fast <4 x float> %i.gki, %i.glo
  %i.glq = bitcast <8 x i16> %i.gkd to <4 x i32>
  %i.glr = and <4 x i32> %i.glq, splat (i32 -2147483648)
  %i.gls = or disjoint <4 x i32> %i.glr, splat (i32 1070141403)
  %i.glt = bitcast <4 x float> %i.glp to <4 x i32>
  %10 = select <4 x i1> %.not58.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.glt
  %i.glu = select <4 x i1> %i.gif, <4 x i32> %i.gls, <4 x i32> zeroinitializer
  %i.glv = select <4 x i1> %i.gkf, <4 x i32> %i.gii, <4 x i32> %i.glu
  %11 = or <4 x i32> %10, %i.glv
  %i.glw = bitcast <4 x i32> %11 to <8 x i16>
  %i.glx = shufflevector <8 x i16> %i.glw, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.gly = bitcast <8 x i16> %i.glx to <4 x float>
  %i.glz = shufflevector <4 x float> %i.gly, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gma = bitcast <4 x float> %i.glz to <2 x i64>
  %i.gmb = extractelement <2 x i64> %i.gma, i64 0
  store i64 %i.gmb, ptr %.01759.i.i, align 1, !tbaa !60
  %i.gmc = getelementptr inbounds nuw i8, ptr %.01560.i.i, i64 8 ; 2 uses
  %i.gmd = getelementptr inbounds nuw i8, ptr %.01759.i.i, i64 8 ; 2 uses
  %i.gme = add nuw nsw i32 %.061.i.i, 4           ; 2 uses
  %i.gmf = or disjoint i32 %i.gme, 3
  %i.gmg = icmp slt i32 %i.gmf, %i.gbu
  br i1 %i.gmg, label %bb.hd, label %.preheader.loopexit.i38.i753, !llvm.loop !565

.lr.ph67.i.i:                                     ; preds = %.lr.ph67.i.i.prol.loopexit, %.lr.ph67.i.i
  %.166.i.i = phi i32 [ %i.gnb, %.lr.ph67.i.i ], [ %.166.i.i.unr, %.lr.ph67.i.i.prol.loopexit ]
  %.11665.i.i = phi ptr [ %i.gmr, %.lr.ph67.i.i ], [ %.11665.i.i.unr, %.lr.ph67.i.i.prol.loopexit ] ; 3 uses
  %.11864.i.i = phi ptr [ %i.gna, %.lr.ph67.i.i ], [ %.11864.i.i.unr, %.lr.ph67.i.i.prol.loopexit ] ; 3 uses
  %i.gmh = getelementptr inbounds nuw i8, ptr %.11665.i.i, i64 2
  %i.gmi = load i16, ptr %.11665.i.i, align 2, !tbaa !57
  %i.gmj = zext i16 %i.gmi to i32
  %i.gmk = shl nuw i32 %i.gmj, 16
  %i.gml = bitcast i32 %i.gmk to float
  %i.gmm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.gml, float %i.ghu)
  %i.gmn = bitcast float %i.gmm to i32
  %i.gmo = lshr i32 %i.gmn, 16
  %i.gmp = trunc nuw i32 %i.gmo to i16
  %i.gmq = getelementptr inbounds nuw i8, ptr %.11864.i.i, i64 2
  store i16 %i.gmp, ptr %.11864.i.i, align 2, !tbaa !57
  %i.gmr = getelementptr inbounds nuw i8, ptr %.11665.i.i, i64 4
  %i.gms = load i16, ptr %i.gmh, align 2, !tbaa !57
  %i.gmt = zext i16 %i.gms to i32
  %i.gmu = shl nuw i32 %i.gmt, 16
  %i.gmv = bitcast i32 %i.gmu to float
  %i.gmw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.gmv, float %i.ghu)
  %i.gmx = bitcast float %i.gmw to i32
  %i.gmy = lshr i32 %i.gmx, 16
  %i.gmz = trunc nuw i32 %i.gmy to i16
  %i.gna = getelementptr inbounds nuw i8, ptr %.11864.i.i, i64 4
  store i16 %i.gmz, ptr %i.gmq, align 2, !tbaa !57
  %i.gnb = add nuw nsw i32 %.166.i.i, 2           ; 2 uses
  %exitcond.not.i36.i751.1 = icmp eq i32 %i.gnb, %i.gbu
  br i1 %exitcond.not.i36.i751.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i, !llvm.loop !566

bb.he:                                            ; preds = %bb.gy
  %i.gnc = icmp eq i32 %3, 1
  br i1 %i.gnc, label %bb.hf, label %bb.hk

bb.hf:                                            ; preds = %bb.he
  %i.gnd = load i16, ptr %0, align 2, !tbaa !57
  %i.gne = zext i16 %i.gnd to i32
  %i.gnf = shl nuw i32 %i.gne, 16
  %i.gng = bitcast i32 %i.gnf to float            ; 6 uses
  %i.gnh = icmp eq i32 %.sroa.speculated.i735, 4
  br i1 %i.gnh, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.gni = load i64, ptr %0, align 2, !tbaa !60
  %i.gnj = insertelement <2 x i64> poison, i64 %i.gni, i64 0
  %i.gnk = bitcast <2 x i64> %i.gnj to <8 x i16>
  %i.gnl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gnk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gnm = bitcast <8 x i16> %i.gnl to <4 x float>
  br label %bb.hi

bb.hh:                                            ; preds = %bb.hf
  %i.gnn = insertelement <4 x float> poison, float %i.gng, i64 0
  %i.gno = shufflevector <4 x float> %i.gnn, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.gnp = phi fast <4 x float> [ %i.gnm, %bb.hg ], [ %i.gno, %bb.hh ] ; 4 uses
  %i.gnq = icmp sgt i32 %i.gbu, 3
  br i1 %i.gnq, label %.lr.ph.i44.i, label %.preheader.i39.i743

.lr.ph.i44.i:                                     ; preds = %bb.hi
  %i.gnr = fcmp fast oeq <4 x float> %i.gnp, zeroinitializer ; 2 uses
  %i.gns = bitcast <4 x float> %i.gnp to <4 x i32>
  %i.gnt = and <4 x i32> %i.gns, splat (i32 -2147483648)
  %i.gnu = fcmp fast olt <4 x float> %i.gnp, zeroinitializer
  %i.gnv = select <4 x i1> %i.gnu, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.gnw = or disjoint <4 x i32> %i.gnt, splat (i32 1070141403)
  br label %bb.hj

.preheader.loopexit.i45.i:                        ; preds = %bb.hj
  %i.gnx = and i32 %i.gbu, 2147483644
  br label %.preheader.i39.i743

.preheader.i39.i743:                              ; preds = %.preheader.loopexit.i45.i, %bb.hi
  %.017.lcssa.i40.i744 = phi ptr [ %2, %bb.hi ], [ %i.grs, %.preheader.loopexit.i45.i ] ; 4 uses
  %.015.lcssa.i41.i745 = phi ptr [ %1, %bb.hi ], [ %i.grr, %.preheader.loopexit.i45.i ] ; 4 uses
  %.0.lcssa.i42.i746 = phi i32 [ 0, %bb.hi ], [ %i.gnx, %.preheader.loopexit.i45.i ] ; 4 uses
  %i.gny = icmp slt i32 %.0.lcssa.i42.i746, %i.gbu
  br i1 %i.gny, label %.lr.ph68.i.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph68.i.i.preheader:                           ; preds = %.preheader.i39.i743
  %.015.lcssa.i41.i7452990 = ptrtoaddr ptr %.015.lcssa.i41.i745 to i64
  %.017.lcssa.i40.i7442989 = ptrtoaddr ptr %.017.lcssa.i40.i744 to i64
  %i.gnz = xor i32 %.0.lcssa.i42.i746, -1
  %i.goa = add i32 %i.gbu, %i.gnz                 ; 2 uses
  %i.gob = zext i32 %i.goa to i64
  %i.goc = add nuw nsw i64 %i.gob, 1              ; 2 uses
  %min.iters.check2993 = icmp ult i32 %i.goa, 7
  %i.god = sub i64 %.015.lcssa.i41.i7452990, %.017.lcssa.i40.i7442989
  %diff.check2991 = icmp ugt i64 %i.god, -16
  %or.cond3949.a = select i1 %min.iters.check2993, i1 true, i1 %diff.check2991
  br i1 %or.cond3949.a, label %.lr.ph68.i.i.preheader4190, label %vector.ph2994

vector.ph2994:                                    ; preds = %.lr.ph68.i.i.preheader
  %n.vec2995 = and i64 %i.goc, 8589934584         ; 4 uses
  %i.goe = trunc i64 %n.vec2995 to i32
  %i.gof = add i32 %.0.lcssa.i42.i746, %i.goe
  %i.gog = shl nuw nsw i64 %n.vec2995, 1          ; 2 uses
  %i.goh = getelementptr i8, ptr %.015.lcssa.i41.i745, i64 %i.gog
  %i.goi = getelementptr i8, ptr %.017.lcssa.i40.i744, i64 %i.gog
  %i.goj = insertelement <4 x float> poison, float %i.gng, i64 0
  %i.gok = shufflevector <4 x float> %i.goj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gol = insertelement <2 x float> poison, float %i.gng, i64 0
  %i.gom = shufflevector <2 x float> %i.gol, <2 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body2996

vector.body2996:                                  ; preds = %vector.body2996, %vector.ph2994
  %index2997 = phi i64 [ 0, %vector.ph2994 ], [ %index.next3001, %vector.body2996 ] ; 2 uses
  %i.gon = shl i64 %index2997, 1                  ; 2 uses
  %next.gep2998 = getelementptr i8, ptr %.015.lcssa.i41.i745, i64 %i.gon
  %next.gep2999 = getelementptr i8, ptr %.017.lcssa.i40.i744, i64 %i.gon
  %wide.load3000 = load <8 x i16>, ptr %next.gep2998, align 2, !tbaa !57
  %i.goo = zext <8 x i16> %wide.load3000 to <8 x i32>
  %i.gop = shl nuw <8 x i32> %i.goo, splat (i32 16)
  %i.goq = bitcast <8 x i32> %i.gop to <8 x float> ; 2 uses
  %i.gor = shufflevector <8 x float> %i.goq, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gos = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.gok, <4 x float> %i.gor)
  %i.got = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.gom, <8 x float> %i.goq)
  %i.gou = shufflevector <4 x float> %i.gos, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gov = shufflevector <8 x float> %i.got, <8 x float> %i.gou, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gow = bitcast <8 x float> %i.gov to <8 x i32>
  %i.gox = lshr <8 x i32> %i.gow, splat (i32 16)
  %i.goy = trunc nuw <8 x i32> %i.gox to <8 x i16>
  store <8 x i16> %i.goy, ptr %next.gep2999, align 2, !tbaa !57
  %index.next3001 = add nuw i64 %index2997, 8     ; 2 uses
  %i.goz = icmp eq i64 %index.next3001, %n.vec2995
  br i1 %i.goz, label %middle.block3002, label %vector.body2996, !llvm.loop !567

middle.block3002:                                 ; preds = %vector.body2996
  %cmp.n3003 = icmp eq i64 %i.goc, %n.vec2995
  br i1 %cmp.n3003, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph68.i.i.preheader4190

.lr.ph68.i.i.preheader4190:                       ; preds = %.lr.ph68.i.i.preheader, %middle.block3002
  %.167.i.i.ph = phi i32 [ %.0.lcssa.i42.i746, %.lr.ph68.i.i.preheader ], [ %i.gof, %middle.block3002 ] ; 4 uses
  %.11666.i.i.ph = phi ptr [ %.015.lcssa.i41.i745, %.lr.ph68.i.i.preheader ], [ %i.goh, %middle.block3002 ] ; 3 uses
  %.11865.i.i.ph = phi ptr [ %.017.lcssa.i40.i744, %.lr.ph68.i.i.preheader ], [ %i.goi, %middle.block3002 ] ; 3 uses
  %i.gpa = sub i32 %i.gbu, %.167.i.i.ph
  %.neg4476 = add i32 %.167.i.i.ph, 1
  %xtraiter4376 = and i32 %i.gpa, 1
  %lcmp.mod4377.not = icmp eq i32 %xtraiter4376, 0
  br i1 %lcmp.mod4377.not, label %.lr.ph68.i.i.prol.loopexit, label %.lr.ph68.i.i.prol

.lr.ph68.i.i.prol:                                ; preds = %.lr.ph68.i.i.preheader4190
  %i.gpb = getelementptr inbounds nuw i8, ptr %.11666.i.i.ph, i64 2
  %i.gpc = load i16, ptr %.11666.i.i.ph, align 2, !tbaa !57
  %i.gpd = zext i16 %i.gpc to i32
  %i.gpe = shl nuw i32 %i.gpd, 16
  %i.gpf = bitcast i32 %i.gpe to float
  %i.gpg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.gng, float %i.gpf)
  %i.gph = bitcast float %i.gpg to i32
  %i.gpi = lshr i32 %i.gph, 16
  %i.gpj = trunc nuw i32 %i.gpi to i16
  %i.gpk = getelementptr inbounds nuw i8, ptr %.11865.i.i.ph, i64 2
  store i16 %i.gpj, ptr %.11865.i.i.ph, align 2, !tbaa !57
  %i.gpl = add nuw nsw i32 %.167.i.i.ph, 1
  br label %.lr.ph68.i.i.prol.loopexit

.lr.ph68.i.i.prol.loopexit:                       ; preds = %.lr.ph68.i.i.prol, %.lr.ph68.i.i.preheader4190
  %.167.i.i.unr = phi i32 [ %.167.i.i.ph, %.lr.ph68.i.i.preheader4190 ], [ %i.gpl, %.lr.ph68.i.i.prol ]
  %.11666.i.i.unr = phi ptr [ %.11666.i.i.ph, %.lr.ph68.i.i.preheader4190 ], [ %i.gpb, %.lr.ph68.i.i.prol ]
  %.11865.i.i.unr = phi ptr [ %.11865.i.i.ph, %.lr.ph68.i.i.preheader4190 ], [ %i.gpk, %.lr.ph68.i.i.prol ]
  %i.gpm = icmp eq i32 %i.gbu, %.neg4476
  br i1 %i.gpm, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph68.i.i

bb.hj:                                            ; preds = %bb.hj, %.lr.ph.i44.i
  %.062.i.i = phi i32 [ 0, %.lr.ph.i44.i ], [ %i.grt, %bb.hj ]
  %.01561.i.i = phi ptr [ %1, %.lr.ph.i44.i ], [ %i.grr, %bb.hj ] ; 2 uses
  %.01760.i.i = phi ptr [ %2, %.lr.ph.i44.i ], [ %i.grs, %bb.hj ] ; 2 uses
  %i.gpn = load i64, ptr %.01561.i.i, align 1, !tbaa !60
  %i.gpo = insertelement <2 x i64> poison, i64 %i.gpn, i64 0
  %i.gpp = bitcast <2 x i64> %i.gpo to <8 x i16>
  %i.gpq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gpp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.gpr = bitcast <8 x i16> %i.gpq to <4 x float> ; 3 uses
  %i.gps = fcmp fast oeq <4 x float> %i.gpr, zeroinitializer ; 2 uses
  %.not59.i.i = or <4 x i1> %i.gnr, %i.gps
  %i.gpt = fcmp fast olt <4 x float> %i.gpr, zeroinitializer
  %i.gpu = select <4 x i1> %i.gpt, <4 x float> %i.gnv, <4 x float> zeroinitializer
  %i.gpv = fdiv fast <4 x float> %i.gnp, %i.gpr   ; 2 uses
  %i.gpw = bitcast <4 x float> %i.gpv to <4 x i32>
  %i.gpx = and <4 x i32> %i.gpw, splat (i32 -2147483648)
  %i.gpy = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gpv) ; 3 uses
  %i.gpz = fcmp fast ogt <4 x float> %i.gpy, splat (float 1.000000e+00) ; 2 uses
  %i.gqa = select <4 x i1> %i.gpz, <4 x float> splat (float -1.000000e+00), <4 x float> %i.gpy
  %i.gqb = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.gpy, <4 x float> splat (float 1.000000e+00))
  %i.gqc = fdiv fast <4 x float> %i.gqa, %i.gqb   ; 3 uses
  %i.gqd = fmul fast <4 x float> %i.gqc, %i.gqc   ; 3 uses
  %i.gqe = fmul fast <4 x float> %i.gqd, %i.gqd   ; 7 uses
  %i.gqf = fmul fast <4 x float> %i.gqe, splat (float f0x3C83A25C)
  %i.gqg = fsub fast <4 x float> splat (float f0xBD99B01E), %i.gqf
  %i.gqh = fmul fast <4 x float> %i.gqg, %i.gqe
  %i.gqi = fadd fast <4 x float> %i.gqh, splat (float f0xBE117200)
  %i.gqj = fmul fast <4 x float> %i.gqi, %i.gqe
  %i.gqk = fadd fast <4 x float> %i.gqj, splat (float f0xBEAAAA53)
  %i.gql = fmul fast <4 x float> %i.gqe, splat (float f0x3B3AC537)
  %i.gqm = fadd fast <4 x float> %i.gql, splat (float f0x3D2EDD4E)
  %i.gqn = fmul fast <4 x float> %i.gqm, %i.gqe
  %i.gqo = fadd fast <4 x float> %i.gqn, splat (float f0x3DD9ED24)
  %i.gqp = fmul fast <4 x float> %i.gqo, %i.gqe
  %i.gqq = fadd fast <4 x float> %i.gqp, splat (float f0x3E4CB974)
  %i.gqr = fmul fast <4 x float> %i.gqq, %i.gqe
  %i.gqs = fadd fast <4 x float> %i.gqr, splat (float 1.000000e+00)
  %i.gqt = fmul fast <4 x float> %i.gqk, %i.gqd
  %i.gqu = fadd fast <4 x float> %i.gqs, %i.gqt
  %i.gqv = fmul fast <4 x float> %i.gqu, %i.gqc
  %i.gqw = select <4 x i1> %i.gpz, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.gqx = fadd fast <4 x float> %i.gqv, %i.gqw
  %i.gqy = bitcast <4 x float> %i.gqx to <4 x i32>
  %i.gqz = or <4 x i32> %i.gpx, %i.gqy
  %i.gra = bitcast <4 x i32> %i.gqz to <4 x float>
  %i.grb = fadd fast <4 x float> %i.gpu, %i.gra
  %i.grc = bitcast <8 x i16> %i.gpq to <4 x i32>
  %i.grd = and <4 x i32> %i.grc, splat (i32 -2147483648)
  %i.gre = or disjoint <4 x i32> %i.grd, splat (i32 1078530011)
  %i.grf = bitcast <4 x i32> %i.gre to <4 x float>
  %i.grg = fcmp fast uge <4 x float> %i.grf, zeroinitializer
  %i.grh = select <4 x i1> %i.grg, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.gri = bitcast <4 x float> %i.grb to <4 x i32>
  %12 = select <4 x i1> %.not59.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.gri
  %i.grj = select <4 x i1> %i.gps, <4 x i32> %i.gnw, <4 x i32> zeroinitializer
  %i.grk = select <4 x i1> %i.gnr, <4 x i32> %i.grh, <4 x i32> %i.grj
  %13 = or <4 x i32> %12, %i.grk
  %i.grl = bitcast <4 x i32> %13 to <8 x i16>
  %i.grm = shufflevector <8 x i16> %i.grl, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.grn = bitcast <8 x i16> %i.grm to <4 x float>
  %i.gro = shufflevector <4 x float> %i.grn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.grp = bitcast <4 x float> %i.gro to <2 x i64>
  %i.grq = extractelement <2 x i64> %i.grp, i64 0
  store i64 %i.grq, ptr %.01760.i.i, align 1, !tbaa !60
  %i.grr = getelementptr inbounds nuw i8, ptr %.01561.i.i, i64 8 ; 2 uses
  %i.grs = getelementptr inbounds nuw i8, ptr %.01760.i.i, i64 8 ; 2 uses
  %i.grt = add nuw nsw i32 %.062.i.i, 4           ; 2 uses
  %i.gru = or disjoint i32 %i.grt, 3
  %i.grv = icmp slt i32 %i.gru, %i.gbu
  br i1 %i.grv, label %bb.hj, label %.preheader.loopexit.i45.i, !llvm.loop !568

.lr.ph68.i.i:                                     ; preds = %.lr.ph68.i.i.prol.loopexit, %.lr.ph68.i.i
  %.167.i.i = phi i32 [ %i.gsq, %.lr.ph68.i.i ], [ %.167.i.i.unr, %.lr.ph68.i.i.prol.loopexit ]
  %.11666.i.i = phi ptr [ %i.gsg, %.lr.ph68.i.i ], [ %.11666.i.i.unr, %.lr.ph68.i.i.prol.loopexit ] ; 3 uses
  %.11865.i.i = phi ptr [ %i.gsp, %.lr.ph68.i.i ], [ %.11865.i.i.unr, %.lr.ph68.i.i.prol.loopexit ] ; 3 uses
  %i.grw = getelementptr inbounds nuw i8, ptr %.11666.i.i, i64 2
  %i.grx = load i16, ptr %.11666.i.i, align 2, !tbaa !57
  %i.gry = zext i16 %i.grx to i32
  %i.grz = shl nuw i32 %i.gry, 16
  %i.gsa = bitcast i32 %i.grz to float
  %i.gsb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.gng, float %i.gsa)
  %i.gsc = bitcast float %i.gsb to i32
  %i.gsd = lshr i32 %i.gsc, 16
  %i.gse = trunc nuw i32 %i.gsd to i16
  %i.gsf = getelementptr inbounds nuw i8, ptr %.11865.i.i, i64 2
  store i16 %i.gse, ptr %.11865.i.i, align 2, !tbaa !57
  %i.gsg = getelementptr inbounds nuw i8, ptr %.11666.i.i, i64 4
  %i.gsh = load i16, ptr %i.grw, align 2, !tbaa !57
  %i.gsi = zext i16 %i.gsh to i32
  %i.gsj = shl nuw i32 %i.gsi, 16
  %i.gsk = bitcast i32 %i.gsj to float
  %i.gsl = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.gng, float %i.gsk)
  %i.gsm = bitcast float %i.gsl to i32
  %i.gsn = lshr i32 %i.gsm, 16
  %i.gso = trunc nuw i32 %i.gsn to i16
  %i.gsp = getelementptr inbounds nuw i8, ptr %.11865.i.i, i64 4
  store i16 %i.gso, ptr %i.gsf, align 2, !tbaa !57
  %i.gsq = add nuw nsw i32 %.167.i.i, 2           ; 2 uses
  %exitcond.not.i43.i.1 = icmp eq i32 %i.gsq, %i.gbu
  br i1 %exitcond.not.i43.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph68.i.i, !llvm.loop !569

bb.hk:                                            ; preds = %bb.he, %bb.gv
  %i.gsr = icmp eq i32 %6, 1
  br i1 %i.gsr, label %bb.hl, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.hl:                                            ; preds = %bb.hk
  %i.gss = icmp eq i32 %3, %4
  br i1 %i.gss, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.gst = icmp eq i32 %.sroa.speculated.i735, 4
  %i.gsu = icmp sgt i32 %.sroa.speculated70.i, 0
  %or.cond.i.i741 = and i1 %i.gsu, %i.gst
  br i1 %or.cond.i.i741, label %.lr.ph.i46.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph.i46.i:                                     ; preds = %bb.hm, %.lr.ph.i46.i
  %.053.i.i = phi i32 [ %i.gvk, %.lr.ph.i46.i ], [ 0, %bb.hm ]
  %.0952.i.i = phi ptr [ %i.gvh, %.lr.ph.i46.i ], [ %0, %bb.hm ] ; 2 uses
  %.01051.i.i = phi ptr [ %i.gvi, %.lr.ph.i46.i ], [ %1, %bb.hm ] ; 2 uses
  %.01150.i.i = phi ptr [ %i.gvj, %.lr.ph.i46.i ], [ %2, %bb.hm ] ; 2 uses
  %i.gsv = load i64, ptr %.0952.i.i, align 1, !tbaa !60
  %i.gsw = insertelement <2 x i64> poison, i64 %i.gsv, i64 0
  %i.gsx = bitcast <2 x i64> %i.gsw to <8 x i16>
  %i.gsy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gsx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.gsz = bitcast <8 x i16> %i.gsy to <4 x float> ; 3 uses
  %i.gta = load i16, ptr %.01051.i.i, align 2, !tbaa !57
  %i.gtb = zext i16 %i.gta to i32
  %i.gtc = shl nuw i32 %i.gtb, 16
  %i.gtd = insertelement <4 x i32> poison, i32 %i.gtc, i64 0
  %i.gte = bitcast <4 x i32> %i.gtd to <4 x float>
  %i.gtf = shufflevector <4 x float> %i.gte, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.gtg = fcmp fast oeq <4 x float> %i.gtf, zeroinitializer ; 2 uses
  %i.gth = fcmp fast oeq <4 x float> %i.gsz, zeroinitializer ; 2 uses
  %.not49.i.i = or <4 x i1> %i.gth, %i.gtg
  %i.gti = fcmp fast olt <4 x float> %i.gtf, zeroinitializer
  %i.gtj = fcmp fast olt <4 x float> %i.gsz, zeroinitializer
  %i.gtk = select <4 x i1> %i.gtj, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.gtl = select <4 x i1> %i.gti, <4 x float> %i.gtk, <4 x float> zeroinitializer
  %i.gtm = fdiv fast <4 x float> %i.gsz, %i.gtf   ; 2 uses
  %i.gtn = bitcast <4 x float> %i.gtm to <4 x i32>
  %i.gto = and <4 x i32> %i.gtn, splat (i32 -2147483648)
  %i.gtp = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gtm) ; 3 uses
  %i.gtq = fcmp fast ogt <4 x float> %i.gtp, splat (float 1.000000e+00) ; 2 uses
  %i.gtr = select <4 x i1> %i.gtq, <4 x float> splat (float -1.000000e+00), <4 x float> %i.gtp
  %i.gts = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.gtp, <4 x float> splat (float 1.000000e+00))
  %i.gtt = fdiv fast <4 x float> %i.gtr, %i.gts   ; 3 uses
  %i.gtu = fmul fast <4 x float> %i.gtt, %i.gtt   ; 3 uses
  %i.gtv = fmul fast <4 x float> %i.gtu, %i.gtu   ; 7 uses
  %i.gtw = fmul fast <4 x float> %i.gtv, splat (float f0x3C83A25C)
  %i.gtx = fsub fast <4 x float> splat (float f0xBD99B01E), %i.gtw
  %i.gty = fmul fast <4 x float> %i.gtx, %i.gtv
  %i.gtz = fadd fast <4 x float> %i.gty, splat (float f0xBE117200)
  %i.gua = fmul fast <4 x float> %i.gtz, %i.gtv
  %i.gub = fadd fast <4 x float> %i.gua, splat (float f0xBEAAAA53)
  %i.guc = fmul fast <4 x float> %i.gtv, splat (float f0x3B3AC537)
  %i.gud = fadd fast <4 x float> %i.guc, splat (float f0x3D2EDD4E)
  %i.gue = fmul fast <4 x float> %i.gud, %i.gtv
  %i.guf = fadd fast <4 x float> %i.gue, splat (float f0x3DD9ED24)
  %i.gug = fmul fast <4 x float> %i.guf, %i.gtv
  %i.guh = fadd fast <4 x float> %i.gug, splat (float f0x3E4CB974)
  %i.gui = fmul fast <4 x float> %i.guh, %i.gtv
  %i.guj = fadd fast <4 x float> %i.gui, splat (float 1.000000e+00)
  %i.guk = fmul fast <4 x float> %i.gub, %i.gtu
  %i.gul = fadd fast <4 x float> %i.guj, %i.guk
  %i.gum = fmul fast <4 x float> %i.gul, %i.gtt
  %i.gun = select <4 x i1> %i.gtq, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.guo = fadd fast <4 x float> %i.gum, %i.gun
  %i.gup = bitcast <4 x float> %i.guo to <4 x i32>
  %i.guq = or <4 x i32> %i.gto, %i.gup
  %i.gur = bitcast <4 x i32> %i.guq to <4 x float>
  %i.gus = fadd fast <4 x float> %i.gtl, %i.gur
  %i.gut = bitcast <4 x float> %i.gtf to <4 x i32>
  %i.guu = bitcast <8 x i16> %i.gsy to <4 x i32>
  %i.guv = and <4 x i32> %i.guu, splat (i32 -2147483648)
  %i.guw = or disjoint <4 x i32> %i.guv, splat (i32 1070141403)
  %isneg.inv.i47.i = icmp slt <4 x i32> %i.gut, zeroinitializer
  %i.gux = select <4 x i1> %isneg.inv.i47.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.guy = bitcast <4 x float> %i.gus to <4 x i32>
  %14 = select <4 x i1> %.not49.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.guy
  %i.guz = select <4 x i1> %i.gtg, <4 x i32> %i.guw, <4 x i32> zeroinitializer
  %i.gva = select <4 x i1> %i.gth, <4 x i32> %i.gux, <4 x i32> %i.guz
  %15 = or <4 x i32> %14, %i.gva
  %i.gvb = bitcast <4 x i32> %15 to <8 x i16>
  %i.gvc = shufflevector <8 x i16> %i.gvb, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.gvd = bitcast <8 x i16> %i.gvc to <4 x float>
  %i.gve = shufflevector <4 x float> %i.gvd, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gvf = bitcast <4 x float> %i.gve to <2 x i64>
  %i.gvg = extractelement <2 x i64> %i.gvf, i64 0
  store i64 %i.gvg, ptr %.01150.i.i, align 1, !tbaa !60
  %i.gvh = getelementptr inbounds nuw i8, ptr %.0952.i.i, i64 8
  %i.gvi = getelementptr inbounds nuw i8, ptr %.01051.i.i, i64 2
  %i.gvj = getelementptr inbounds nuw i8, ptr %.01150.i.i, i64 8
  %i.gvk = add nuw nsw i32 %.053.i.i, 1           ; 2 uses
  %exitcond.not.i48.i742 = icmp eq i32 %i.gvk, %.sroa.speculated70.i
  br i1 %exitcond.not.i48.i742, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i46.i, !llvm.loop !570

bb.hn:                                            ; preds = %bb.hl
  %i.gvl = icmp eq i32 %4, 1
  br i1 %i.gvl, label %bb.ho, label %bb.hq

bb.ho:                                            ; preds = %bb.hn
  %.val.i739 = load i16, ptr %1, align 2, !tbaa !57
  %i.gvm = zext i16 %.val.i739 to i32
  %i.gvn = shl nuw i32 %i.gvm, 16
  %i.gvo = bitcast i32 %i.gvn to float            ; 6 uses
  %i.gvp = icmp sgt i32 %i.gbu, 3
  br i1 %i.gvp, label %.lr.ph.i54.i, label %.preheader.i49.i

.lr.ph.i54.i:                                     ; preds = %bb.ho
  %i.gvq = insertelement <4 x float> poison, float %i.gvo, i64 0
  %i.gvr = shufflevector <4 x float> %i.gvq, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.gvs = fcmp fast oeq <4 x float> %i.gvr, zeroinitializer ; 2 uses
  %i.gvt = fcmp fast olt <4 x float> %i.gvr, zeroinitializer
  %i.gvu = bitcast <4 x float> %i.gvr to <4 x i32>
  %isneg.inv.i55.i = icmp slt <4 x i32> %i.gvu, zeroinitializer
  %i.gvv = select <4 x i1> %isneg.inv.i55.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.gvw = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gvr
  br label %bb.hp

.preheader.loopexit.i56.i740:                     ; preds = %bb.hp
  %i.gvx = and i32 %i.gbu, 2147483644
  br label %.preheader.i49.i

.preheader.i49.i:                                 ; preds = %.preheader.loopexit.i56.i740, %bb.ho
  %.016.lcssa.i50.i = phi ptr [ %2, %bb.ho ], [ %i.gzq, %.preheader.loopexit.i56.i740 ] ; 4 uses
  %.014.lcssa.i51.i = phi ptr [ %0, %bb.ho ], [ %i.gzp, %.preheader.loopexit.i56.i740 ] ; 4 uses
  %.0.lcssa.i52.i = phi i32 [ 0, %bb.ho ], [ %i.gvx, %.preheader.loopexit.i56.i740 ] ; 4 uses
  %i.gvy = icmp slt i32 %.0.lcssa.i52.i, %i.gbu
  br i1 %i.gvy, label %.lr.ph48.i.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph48.i.i.preheader:                           ; preds = %.preheader.i49.i
  %.014.lcssa.i51.i2971 = ptrtoaddr ptr %.014.lcssa.i51.i to i64
  %.016.lcssa.i50.i2970 = ptrtoaddr ptr %.016.lcssa.i50.i to i64
  %i.gvz = xor i32 %.0.lcssa.i52.i, -1
  %i.gwa = add i32 %i.gbu, %i.gvz                 ; 2 uses
  %i.gwb = zext i32 %i.gwa to i64
  %i.gwc = add nuw nsw i64 %i.gwb, 1              ; 2 uses
  %min.iters.check2974 = icmp ult i32 %i.gwa, 7
  %i.gwd = sub i64 %.014.lcssa.i51.i2971, %.016.lcssa.i50.i2970
  %diff.check2972 = icmp ugt i64 %i.gwd, -16
  %or.cond3950.a = select i1 %min.iters.check2974, i1 true, i1 %diff.check2972
  br i1 %or.cond3950.a, label %.lr.ph48.i.i.preheader4195, label %vector.ph2975

vector.ph2975:                                    ; preds = %.lr.ph48.i.i.preheader
  %n.vec2976 = and i64 %i.gwc, 8589934584         ; 4 uses
  %i.gwe = trunc i64 %n.vec2976 to i32
  %i.gwf = add i32 %.0.lcssa.i52.i, %i.gwe
  %i.gwg = shl nuw nsw i64 %n.vec2976, 1          ; 2 uses
  %i.gwh = getelementptr i8, ptr %.014.lcssa.i51.i, i64 %i.gwg
  %i.gwi = getelementptr i8, ptr %.016.lcssa.i50.i, i64 %i.gwg
  %i.gwj = insertelement <4 x float> poison, float %i.gvo, i64 0
  %i.gwk = shufflevector <4 x float> %i.gwj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gwl = insertelement <2 x float> poison, float %i.gvo, i64 0
  %i.gwm = shufflevector <2 x float> %i.gwl, <2 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body2977

vector.body2977:                                  ; preds = %vector.body2977, %vector.ph2975
  %index2978 = phi i64 [ 0, %vector.ph2975 ], [ %index.next2982, %vector.body2977 ] ; 2 uses
  %i.gwn = shl i64 %index2978, 1                  ; 2 uses
  %next.gep2979 = getelementptr i8, ptr %.014.lcssa.i51.i, i64 %i.gwn
  %next.gep2980 = getelementptr i8, ptr %.016.lcssa.i50.i, i64 %i.gwn
  %wide.load2981 = load <8 x i16>, ptr %next.gep2979, align 2, !tbaa !57
  %i.gwo = zext <8 x i16> %wide.load2981 to <8 x i32>
  %i.gwp = shl nuw <8 x i32> %i.gwo, splat (i32 16)
  %i.gwq = bitcast <8 x i32> %i.gwp to <8 x float> ; 2 uses
  %i.gwr = shufflevector <8 x float> %i.gwq, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gws = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.gwr, <4 x float> %i.gwk)
  %i.gwt = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.gwq, <8 x float> %i.gwm)
  %i.gwu = shufflevector <4 x float> %i.gws, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gwv = shufflevector <8 x float> %i.gwt, <8 x float> %i.gwu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gww = bitcast <8 x float> %i.gwv to <8 x i32>
  %i.gwx = lshr <8 x i32> %i.gww, splat (i32 16)
  %i.gwy = trunc nuw <8 x i32> %i.gwx to <8 x i16>
  store <8 x i16> %i.gwy, ptr %next.gep2980, align 2, !tbaa !57
  %index.next2982 = add nuw i64 %index2978, 8     ; 2 uses
  %i.gwz = icmp eq i64 %index.next2982, %n.vec2976
  br i1 %i.gwz, label %middle.block2983, label %vector.body2977, !llvm.loop !571

middle.block2983:                                 ; preds = %vector.body2977
  %cmp.n2984 = icmp eq i64 %i.gwc, %n.vec2976
  br i1 %cmp.n2984, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph48.i.i.preheader4195

.lr.ph48.i.i.preheader4195:                       ; preds = %.lr.ph48.i.i.preheader, %middle.block2983
  %.147.i.i.ph = phi i32 [ %.0.lcssa.i52.i, %.lr.ph48.i.i.preheader ], [ %i.gwf, %middle.block2983 ] ; 4 uses
  %.11546.i.i.ph = phi ptr [ %.014.lcssa.i51.i, %.lr.ph48.i.i.preheader ], [ %i.gwh, %middle.block2983 ] ; 3 uses
  %.11745.i.i.ph = phi ptr [ %.016.lcssa.i50.i, %.lr.ph48.i.i.preheader ], [ %i.gwi, %middle.block2983 ] ; 3 uses
  %i.gxa = sub i32 %i.gbu, %.147.i.i.ph
  %.neg4475 = add i32 %.147.i.i.ph, 1
  %xtraiter4374 = and i32 %i.gxa, 1
  %lcmp.mod4375.not = icmp eq i32 %xtraiter4374, 0
  br i1 %lcmp.mod4375.not, label %.lr.ph48.i.i.prol.loopexit, label %.lr.ph48.i.i.prol

.lr.ph48.i.i.prol:                                ; preds = %.lr.ph48.i.i.preheader4195
  %i.gxb = getelementptr inbounds nuw i8, ptr %.11546.i.i.ph, i64 2
  %i.gxc = load i16, ptr %.11546.i.i.ph, align 2, !tbaa !57
  %i.gxd = zext i16 %i.gxc to i32
  %i.gxe = shl nuw i32 %i.gxd, 16
  %i.gxf = bitcast i32 %i.gxe to float
  %i.gxg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.gxf, float %i.gvo)
  %i.gxh = bitcast float %i.gxg to i32
  %i.gxi = lshr i32 %i.gxh, 16
  %i.gxj = trunc nuw i32 %i.gxi to i16
  %i.gxk = getelementptr inbounds nuw i8, ptr %.11745.i.i.ph, i64 2
  store i16 %i.gxj, ptr %.11745.i.i.ph, align 2, !tbaa !57
  %i.gxl = add nuw nsw i32 %.147.i.i.ph, 1
  br label %.lr.ph48.i.i.prol.loopexit

.lr.ph48.i.i.prol.loopexit:                       ; preds = %.lr.ph48.i.i.prol, %.lr.ph48.i.i.preheader4195
  %.147.i.i.unr = phi i32 [ %.147.i.i.ph, %.lr.ph48.i.i.preheader4195 ], [ %i.gxl, %.lr.ph48.i.i.prol ]
  %.11546.i.i.unr = phi ptr [ %.11546.i.i.ph, %.lr.ph48.i.i.preheader4195 ], [ %i.gxb, %.lr.ph48.i.i.prol ]
  %.11745.i.i.unr = phi ptr [ %.11745.i.i.ph, %.lr.ph48.i.i.preheader4195 ], [ %i.gxk, %.lr.ph48.i.i.prol ]
  %i.gxm = icmp eq i32 %i.gbu, %.neg4475
  br i1 %i.gxm, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph48.i.i

bb.hp:                                            ; preds = %bb.hp, %.lr.ph.i54.i
  %.042.i.i = phi i32 [ 0, %.lr.ph.i54.i ], [ %i.gzr, %bb.hp ]
  %.01441.i.i = phi ptr [ %0, %.lr.ph.i54.i ], [ %i.gzp, %bb.hp ] ; 2 uses
  %.01640.i.i = phi ptr [ %2, %.lr.ph.i54.i ], [ %i.gzq, %bb.hp ] ; 2 uses
  %i.gxn = load i64, ptr %.01441.i.i, align 1, !tbaa !60
  %i.gxo = insertelement <2 x i64> poison, i64 %i.gxn, i64 0
  %i.gxp = bitcast <2 x i64> %i.gxo to <8 x i16>
  %i.gxq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gxp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.gxr = bitcast <8 x i16> %i.gxq to <4 x float> ; 3 uses
  %i.gxs = fcmp fast oeq <4 x float> %i.gxr, zeroinitializer ; 2 uses
  %.not39.i.i = or <4 x i1> %i.gvs, %i.gxs
  %i.gxt = fcmp fast olt <4 x float> %i.gxr, zeroinitializer
  %i.gxu = select <4 x i1> %i.gxt, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.gxv = select <4 x i1> %i.gvt, <4 x float> %i.gxu, <4 x float> zeroinitializer
  %i.gxw = fmul fast <4 x float> %i.gxr, %i.gvw   ; 2 uses
  %i.gxx = bitcast <4 x float> %i.gxw to <4 x i32>
  %i.gxy = and <4 x i32> %i.gxx, splat (i32 -2147483648)
  %i.gxz = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gxw) ; 3 uses
  %i.gya = fcmp fast ogt <4 x float> %i.gxz, splat (float 1.000000e+00) ; 2 uses
  %i.gyb = select <4 x i1> %i.gya, <4 x float> splat (float -1.000000e+00), <4 x float> %i.gxz
  %i.gyc = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.gxz, <4 x float> splat (float 1.000000e+00))
  %i.gyd = fdiv fast <4 x float> %i.gyb, %i.gyc   ; 3 uses
  %i.gye = fmul fast <4 x float> %i.gyd, %i.gyd   ; 3 uses
  %i.gyf = fmul fast <4 x float> %i.gye, %i.gye   ; 7 uses
  %i.gyg = fmul fast <4 x float> %i.gyf, splat (float f0x3C83A25C)
  %i.gyh = fsub fast <4 x float> splat (float f0xBD99B01E), %i.gyg
  %i.gyi = fmul fast <4 x float> %i.gyh, %i.gyf
  %i.gyj = fadd fast <4 x float> %i.gyi, splat (float f0xBE117200)
  %i.gyk = fmul fast <4 x float> %i.gyj, %i.gyf
  %i.gyl = fadd fast <4 x float> %i.gyk, splat (float f0xBEAAAA53)
  %i.gym = fmul fast <4 x float> %i.gyf, splat (float f0x3B3AC537)
  %i.gyn = fadd fast <4 x float> %i.gym, splat (float f0x3D2EDD4E)
  %i.gyo = fmul fast <4 x float> %i.gyn, %i.gyf
  %i.gyp = fadd fast <4 x float> %i.gyo, splat (float f0x3DD9ED24)
  %i.gyq = fmul fast <4 x float> %i.gyp, %i.gyf
  %i.gyr = fadd fast <4 x float> %i.gyq, splat (float f0x3E4CB974)
  %i.gys = fmul fast <4 x float> %i.gyr, %i.gyf
  %i.gyt = fadd fast <4 x float> %i.gys, splat (float 1.000000e+00)
  %i.gyu = fmul fast <4 x float> %i.gyl, %i.gye
  %i.gyv = fadd fast <4 x float> %i.gyt, %i.gyu
  %i.gyw = fmul fast <4 x float> %i.gyv, %i.gyd
  %i.gyx = select <4 x i1> %i.gya, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.gyy = fadd fast <4 x float> %i.gyw, %i.gyx
  %i.gyz = bitcast <4 x float> %i.gyy to <4 x i32>
  %i.gza = or <4 x i32> %i.gxy, %i.gyz
  %i.gzb = bitcast <4 x i32> %i.gza to <4 x float>
  %i.gzc = fadd fast <4 x float> %i.gxv, %i.gzb
  %i.gzd = bitcast <8 x i16> %i.gxq to <4 x i32>
  %i.gze = and <4 x i32> %i.gzd, splat (i32 -2147483648)
  %i.gzf = or disjoint <4 x i32> %i.gze, splat (i32 1070141403)
  %i.gzg = bitcast <4 x float> %i.gzc to <4 x i32>
  %16 = select <4 x i1> %.not39.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.gzg
  %i.gzh = select <4 x i1> %i.gvs, <4 x i32> %i.gzf, <4 x i32> zeroinitializer
  %i.gzi = select <4 x i1> %i.gxs, <4 x i32> %i.gvv, <4 x i32> %i.gzh
  %17 = or <4 x i32> %16, %i.gzi
  %i.gzj = bitcast <4 x i32> %17 to <8 x i16>
  %i.gzk = shufflevector <8 x i16> %i.gzj, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.gzl = bitcast <8 x i16> %i.gzk to <4 x float>
  %i.gzm = shufflevector <4 x float> %i.gzl, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gzn = bitcast <4 x float> %i.gzm to <2 x i64>
  %i.gzo = extractelement <2 x i64> %i.gzn, i64 0
  store i64 %i.gzo, ptr %.01640.i.i, align 1, !tbaa !60
  %i.gzp = getelementptr inbounds nuw i8, ptr %.01441.i.i, i64 8 ; 2 uses
  %i.gzq = getelementptr inbounds nuw i8, ptr %.01640.i.i, i64 8 ; 2 uses
  %i.gzr = add nuw nsw i32 %.042.i.i, 4           ; 2 uses
  %i.gzs = or disjoint i32 %i.gzr, 3
  %i.gzt = icmp slt i32 %i.gzs, %i.gbu
  br i1 %i.gzt, label %bb.hp, label %.preheader.loopexit.i56.i740, !llvm.loop !572

.lr.ph48.i.i:                                     ; preds = %.lr.ph48.i.i.prol.loopexit, %.lr.ph48.i.i
  %.147.i.i = phi i32 [ %i.hao, %.lr.ph48.i.i ], [ %.147.i.i.unr, %.lr.ph48.i.i.prol.loopexit ]
  %.11546.i.i = phi ptr [ %i.hae, %.lr.ph48.i.i ], [ %.11546.i.i.unr, %.lr.ph48.i.i.prol.loopexit ] ; 3 uses
  %.11745.i.i = phi ptr [ %i.han, %.lr.ph48.i.i ], [ %.11745.i.i.unr, %.lr.ph48.i.i.prol.loopexit ] ; 3 uses
  %i.gzu = getelementptr inbounds nuw i8, ptr %.11546.i.i, i64 2
  %i.gzv = load i16, ptr %.11546.i.i, align 2, !tbaa !57
  %i.gzw = zext i16 %i.gzv to i32
  %i.gzx = shl nuw i32 %i.gzw, 16
  %i.gzy = bitcast i32 %i.gzx to float
  %i.gzz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.gzy, float %i.gvo)
  %i.haa = bitcast float %i.gzz to i32
  %i.hab = lshr i32 %i.haa, 16
  %i.hac = trunc nuw i32 %i.hab to i16
  %i.had = getelementptr inbounds nuw i8, ptr %.11745.i.i, i64 2
  store i16 %i.hac, ptr %.11745.i.i, align 2, !tbaa !57
  %i.hae = getelementptr inbounds nuw i8, ptr %.11546.i.i, i64 4
  %i.haf = load i16, ptr %i.gzu, align 2, !tbaa !57
  %i.hag = zext i16 %i.haf to i32
  %i.hah = shl nuw i32 %i.hag, 16
  %i.hai = bitcast i32 %i.hah to float
  %i.haj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.hai, float %i.gvo)
  %i.hak = bitcast float %i.haj to i32
  %i.hal = lshr i32 %i.hak, 16
  %i.ham = trunc nuw i32 %i.hal to i16
  %i.han = getelementptr inbounds nuw i8, ptr %.11745.i.i, i64 4
  store i16 %i.ham, ptr %i.had, align 2, !tbaa !57
  %i.hao = add nuw nsw i32 %.147.i.i, 2           ; 2 uses
  %exitcond.not.i53.i.1 = icmp eq i32 %i.hao, %i.gbu
  br i1 %exitcond.not.i53.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph48.i.i, !llvm.loop !573

bb.hq:                                            ; preds = %bb.hn
  %i.hap = icmp eq i32 %3, 1
  %i.haq = icmp eq i32 %.sroa.speculated.i735, 4
  %or.cond.i736 = and i1 %i.hap, %i.haq
  br i1 %or.cond.i736, label %.lr.ph.i57.i737, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph.i57.i737:                                  ; preds = %bb.hq
  %i.har = load i64, ptr %0, align 1, !tbaa !60
  %i.has = insertelement <2 x i64> poison, i64 %i.har, i64 0
  %i.hat = bitcast <2 x i64> %i.has to <8 x i16>
  %i.hau = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hat, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.hav = bitcast <8 x i16> %i.hau to <4 x float> ; 3 uses
  %i.haw = fcmp fast oeq <4 x float> %i.hav, zeroinitializer ; 2 uses
  %i.hax = fcmp fast olt <4 x float> %i.hav, zeroinitializer
  %i.hay = select <4 x i1> %i.hax, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.haz = bitcast <8 x i16> %i.hau to <4 x i32>
  %i.hba = and <4 x i32> %i.haz, splat (i32 -2147483648)
  %i.hbb = or disjoint <4 x i32> %i.hba, splat (i32 1070141403)
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hr, %.lr.ph.i57.i737
  %.050.i.i = phi i32 [ 0, %.lr.ph.i57.i737 ], [ %i.hdf, %bb.hr ]
  %.0849.i.i = phi ptr [ %1, %.lr.ph.i57.i737 ], [ %i.hdd, %bb.hr ] ; 2 uses
  %.0948.i.i = phi ptr [ %2, %.lr.ph.i57.i737 ], [ %i.hde, %bb.hr ] ; 2 uses
  %i.hbc = load i16, ptr %.0849.i.i, align 2, !tbaa !57
  %i.hbd = zext i16 %i.hbc to i32
  %i.hbe = shl nuw i32 %i.hbd, 16
  %i.hbf = insertelement <4 x i32> poison, i32 %i.hbe, i64 0
  %i.hbg = bitcast <4 x i32> %i.hbf to <4 x float>
  %i.hbh = shufflevector <4 x float> %i.hbg, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hbi = fcmp fast oeq <4 x float> %i.hbh, zeroinitializer ; 2 uses
  %.not47.i.i = or <4 x i1> %i.haw, %i.hbi
  %i.hbj = fcmp fast olt <4 x float> %i.hbh, zeroinitializer
  %i.hbk = select <4 x i1> %i.hbj, <4 x float> %i.hay, <4 x float> zeroinitializer
  %i.hbl = fdiv fast <4 x float> %i.hav, %i.hbh   ; 2 uses
  %i.hbm = bitcast <4 x float> %i.hbl to <4 x i32>
  %i.hbn = and <4 x i32> %i.hbm, splat (i32 -2147483648)
  %i.hbo = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.hbl) ; 3 uses
  %i.hbp = fcmp fast ogt <4 x float> %i.hbo, splat (float 1.000000e+00) ; 2 uses
  %i.hbq = select <4 x i1> %i.hbp, <4 x float> splat (float -1.000000e+00), <4 x float> %i.hbo
  %i.hbr = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.hbo, <4 x float> splat (float 1.000000e+00))
  %i.hbs = fdiv fast <4 x float> %i.hbq, %i.hbr   ; 3 uses
  %i.hbt = fmul fast <4 x float> %i.hbs, %i.hbs   ; 3 uses
  %i.hbu = fmul fast <4 x float> %i.hbt, %i.hbt   ; 7 uses
  %i.hbv = fmul fast <4 x float> %i.hbu, splat (float f0x3C83A25C)
  %i.hbw = fsub fast <4 x float> splat (float f0xBD99B01E), %i.hbv
  %i.hbx = fmul fast <4 x float> %i.hbw, %i.hbu
  %i.hby = fadd fast <4 x float> %i.hbx, splat (float f0xBE117200)
  %i.hbz = fmul fast <4 x float> %i.hby, %i.hbu
  %i.hca = fadd fast <4 x float> %i.hbz, splat (float f0xBEAAAA53)
  %i.hcb = fmul fast <4 x float> %i.hbu, splat (float f0x3B3AC537)
  %i.hcc = fadd fast <4 x float> %i.hcb, splat (float f0x3D2EDD4E)
  %i.hcd = fmul fast <4 x float> %i.hcc, %i.hbu
  %i.hce = fadd fast <4 x float> %i.hcd, splat (float f0x3DD9ED24)
  %i.hcf = fmul fast <4 x float> %i.hce, %i.hbu
  %i.hcg = fadd fast <4 x float> %i.hcf, splat (float f0x3E4CB974)
  %i.hch = fmul fast <4 x float> %i.hcg, %i.hbu
  %i.hci = fadd fast <4 x float> %i.hch, splat (float 1.000000e+00)
  %i.hcj = fmul fast <4 x float> %i.hca, %i.hbt
  %i.hck = fadd fast <4 x float> %i.hci, %i.hcj
  %i.hcl = fmul fast <4 x float> %i.hck, %i.hbs
  %i.hcm = select <4 x i1> %i.hbp, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.hcn = fadd fast <4 x float> %i.hcl, %i.hcm
  %i.hco = bitcast <4 x float> %i.hcn to <4 x i32>
  %i.hcp = or <4 x i32> %i.hbn, %i.hco
  %i.hcq = bitcast <4 x i32> %i.hcp to <4 x float>
  %i.hcr = fadd fast <4 x float> %i.hbk, %i.hcq
  %i.hcs = bitcast <4 x float> %i.hbh to <4 x i32>
  %isneg.inv.i58.i = icmp slt <4 x i32> %i.hcs, zeroinitializer
  %i.hct = select <4 x i1> %isneg.inv.i58.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.hcu = bitcast <4 x float> %i.hcr to <4 x i32>
  %18 = select <4 x i1> %.not47.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.hcu
  %i.hcv = select <4 x i1> %i.hbi, <4 x i32> %i.hbb, <4 x i32> zeroinitializer
  %i.hcw = select <4 x i1> %i.haw, <4 x i32> %i.hct, <4 x i32> %i.hcv
  %19 = or <4 x i32> %18, %i.hcw
  %i.hcx = bitcast <4 x i32> %19 to <8 x i16>
  %i.hcy = shufflevector <8 x i16> %i.hcx, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.hcz = bitcast <8 x i16> %i.hcy to <4 x float>
  %i.hda = shufflevector <4 x float> %i.hcz, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hdb = bitcast <4 x float> %i.hda to <2 x i64>
  %i.hdc = extractelement <2 x i64> %i.hdb, i64 0
  store i64 %i.hdc, ptr %.0948.i.i, align 1, !tbaa !60
  %i.hdd = getelementptr inbounds nuw i8, ptr %.0849.i.i, i64 2
  %i.hde = getelementptr inbounds nuw i8, ptr %.0948.i.i, i64 8
  %i.hdf = add nuw nsw i32 %.050.i.i, 1           ; 2 uses
  %exitcond.not.i59.i738 = icmp eq i32 %i.hdf, %.sroa.speculated70.i
  br i1 %exitcond.not.i59.i738, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.hr, !llvm.loop !574

bb.hs:                                            ; preds = %bb.a
  %.sroa.speculated67.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i762 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.hdg = mul i32 %.sroa.speculated.i762, %.sroa.speculated67.i ; 32 uses
  %i.hdh = icmp eq i32 %5, %6
  br i1 %i.hdh, label %bb.ht, label %bb.ih

bb.ht:                                            ; preds = %bb.hs
  %i.hdi = icmp eq i32 %3, %4
  br i1 %i.hdi, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.hdj = icmp sgt i32 %i.hdg, 3
  br i1 %i.hdj, label %.lr.ph.i.i814, label %.preheader.i.i803

.preheader.loopexit.i.i820:                       ; preds = %.lr.ph.i.i814
  %i.hdk = and i32 %i.hdg, 2147483644
  br label %.preheader.i.i803

.preheader.i.i803:                                ; preds = %.preheader.loopexit.i.i820, %bb.hu
  %.018.lcssa.i.i804 = phi ptr [ %1, %bb.hu ], [ %i.hhs, %.preheader.loopexit.i.i820 ] ; 5 uses
  %.016.lcssa.i.i805 = phi ptr [ %2, %bb.hu ], [ %i.hht, %.preheader.loopexit.i.i820 ] ; 5 uses
  %.014.lcssa.i.i806 = phi ptr [ %0, %bb.hu ], [ %i.hhr, %.preheader.loopexit.i.i820 ] ; 5 uses
  %.0.lcssa.i.i807 = phi i32 [ 0, %bb.hu ], [ %i.hdk, %.preheader.loopexit.i.i820 ] ; 5 uses
  %.016.lcssa.i.i8052945 = ptrtoaddr ptr %.016.lcssa.i.i805 to i64 ; 2 uses
  %.014.lcssa.i.i8062946 = ptrtoaddr ptr %.014.lcssa.i.i806 to i64
  %.018.lcssa.i.i8042948 = ptrtoaddr ptr %.018.lcssa.i.i804 to i64
  %i.hdl = icmp slt i32 %.0.lcssa.i.i807, %i.hdg
  br i1 %i.hdl, label %.lr.ph72.i.i808.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph72.i.i808.preheader:                        ; preds = %.preheader.i.i803
  %i.hdm = xor i32 %.0.lcssa.i.i807, -1
  %i.hdn = add i32 %i.hdg, %i.hdm                 ; 2 uses
  %i.hdo = zext i32 %i.hdn to i64
  %i.hdp = add nuw nsw i64 %i.hdo, 1              ; 2 uses
  %min.iters.check2952 = icmp ult i32 %i.hdn, 7
  br i1 %min.iters.check2952, label %.lr.ph72.i.i808.preheader4200, label %vector.memcheck2944

vector.memcheck2944:                              ; preds = %.lr.ph72.i.i808.preheader
  %i.hdq = sub i64 %.014.lcssa.i.i8062946, %.016.lcssa.i.i8052945
  %diff.check2947 = icmp ugt i64 %i.hdq, -16
  %i.hdr = sub i64 %.018.lcssa.i.i8042948, %.016.lcssa.i.i8052945
  %diff.check2949 = icmp ugt i64 %i.hdr, -16
  %conflict.rdx2950 = or i1 %diff.check2947, %diff.check2949
  br i1 %conflict.rdx2950, label %.lr.ph72.i.i808.preheader4200, label %vector.ph2953

vector.ph2953:                                    ; preds = %vector.memcheck2944
  %n.vec2954 = and i64 %i.hdp, 8589934584         ; 4 uses
  %i.hds = trunc i64 %n.vec2954 to i32
  %i.hdt = add i32 %.0.lcssa.i.i807, %i.hds
  %i.hdu = shl nuw nsw i64 %n.vec2954, 1          ; 3 uses
  %i.hdv = getelementptr i8, ptr %.014.lcssa.i.i806, i64 %i.hdu
  %i.hdw = getelementptr i8, ptr %.016.lcssa.i.i805, i64 %i.hdu
  %i.hdx = getelementptr i8, ptr %.018.lcssa.i.i804, i64 %i.hdu
  br label %vector.body2955

vector.body2955:                                  ; preds = %vector.body2955, %vector.ph2953
  %index2956 = phi i64 [ 0, %vector.ph2953 ], [ %index.next2962, %vector.body2955 ] ; 2 uses
  %i.hdy = shl i64 %index2956, 1                  ; 3 uses
  %next.gep2957 = getelementptr i8, ptr %.014.lcssa.i.i806, i64 %i.hdy
  %next.gep2958 = getelementptr i8, ptr %.016.lcssa.i.i805, i64 %i.hdy
  %next.gep2959 = getelementptr i8, ptr %.018.lcssa.i.i804, i64 %i.hdy
  %wide.load2960 = load <8 x i16>, ptr %next.gep2957, align 2, !tbaa !57
  %i.hdz = zext <8 x i16> %wide.load2960 to <8 x i32>
  %i.hea = shl nuw <8 x i32> %i.hdz, splat (i32 16)
  %i.heb = bitcast <8 x i32> %i.hea to <8 x float>
  %wide.load2961 = load <8 x i16>, ptr %next.gep2959, align 2, !tbaa !57
  %i.hec = zext <8 x i16> %wide.load2961 to <8 x i32>
  %i.hed = shl nuw <8 x i32> %i.hec, splat (i32 16)
  %i.hee = bitcast <8 x i32> %i.hed to <8 x float>
  %i.hef = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.hee, <8 x float> %i.heb)
  %i.heg = bitcast <8 x float> %i.hef to <8 x i32>
  %i.heh = lshr <8 x i32> %i.heg, splat (i32 16)
  %i.hei = trunc nuw <8 x i32> %i.heh to <8 x i16>
  store <8 x i16> %i.hei, ptr %next.gep2958, align 2, !tbaa !57
  %index.next2962 = add nuw i64 %index2956, 8     ; 2 uses
  %i.hej = icmp eq i64 %index.next2962, %n.vec2954
  br i1 %i.hej, label %middle.block2963, label %vector.body2955, !llvm.loop !575

middle.block2963:                                 ; preds = %vector.body2955
  %cmp.n2964 = icmp eq i64 %i.hdp, %n.vec2954
  br i1 %cmp.n2964, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph72.i.i808.preheader4200

.lr.ph72.i.i808.preheader4200:                    ; preds = %vector.memcheck2944, %.lr.ph72.i.i808.preheader, %middle.block2963
  %.171.i.i809.ph = phi i32 [ %.0.lcssa.i.i807, %vector.memcheck2944 ], [ %.0.lcssa.i.i807, %.lr.ph72.i.i808.preheader ], [ %i.hdt, %middle.block2963 ] ; 4 uses
  %.11570.i.i810.ph = phi ptr [ %.014.lcssa.i.i806, %vector.memcheck2944 ], [ %.014.lcssa.i.i806, %.lr.ph72.i.i808.preheader ], [ %i.hdv, %middle.block2963 ] ; 3 uses
  %.11769.i.i811.ph = phi ptr [ %.016.lcssa.i.i805, %vector.memcheck2944 ], [ %.016.lcssa.i.i805, %.lr.ph72.i.i808.preheader ], [ %i.hdw, %middle.block2963 ] ; 3 uses
  %.11968.i.i812.ph = phi ptr [ %.018.lcssa.i.i804, %vector.memcheck2944 ], [ %.018.lcssa.i.i804, %.lr.ph72.i.i808.preheader ], [ %i.hdx, %middle.block2963 ] ; 3 uses
  %i.hek = sub i32 %i.hdg, %.171.i.i809.ph
  %.neg4474 = add i32 %.171.i.i809.ph, 1
  %xtraiter4372 = and i32 %i.hek, 1
  %lcmp.mod4373.not = icmp eq i32 %xtraiter4372, 0
  br i1 %lcmp.mod4373.not, label %.lr.ph72.i.i808.prol.loopexit, label %.lr.ph72.i.i808.prol

.lr.ph72.i.i808.prol:                             ; preds = %.lr.ph72.i.i808.preheader4200
  %i.hel = getelementptr inbounds nuw i8, ptr %.11570.i.i810.ph, i64 2
  %i.hem = load i16, ptr %.11570.i.i810.ph, align 2, !tbaa !57
  %i.hen = zext i16 %i.hem to i32
  %i.heo = shl nuw i32 %i.hen, 16
  %i.hep = bitcast i32 %i.heo to float
  %i.heq = getelementptr inbounds nuw i8, ptr %.11968.i.i812.ph, i64 2
  %i.her = load i16, ptr %.11968.i.i812.ph, align 2, !tbaa !57
  %i.hes = zext i16 %i.her to i32
  %i.het = shl nuw i32 %i.hes, 16
  %i.heu = bitcast i32 %i.het to float
  %i.hev = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.heu, float %i.hep)
  %i.hew = bitcast float %i.hev to i32
  %i.hex = lshr i32 %i.hew, 16
  %i.hey = trunc nuw i32 %i.hex to i16
  %i.hez = getelementptr inbounds nuw i8, ptr %.11769.i.i811.ph, i64 2
  store i16 %i.hey, ptr %.11769.i.i811.ph, align 2, !tbaa !57
  %i.hfa = add nuw nsw i32 %.171.i.i809.ph, 1
  br label %.lr.ph72.i.i808.prol.loopexit

.lr.ph72.i.i808.prol.loopexit:                    ; preds = %.lr.ph72.i.i808.prol, %.lr.ph72.i.i808.preheader4200
  %.171.i.i809.unr = phi i32 [ %.171.i.i809.ph, %.lr.ph72.i.i808.preheader4200 ], [ %i.hfa, %.lr.ph72.i.i808.prol ]
  %.11570.i.i810.unr = phi ptr [ %.11570.i.i810.ph, %.lr.ph72.i.i808.preheader4200 ], [ %i.hel, %.lr.ph72.i.i808.prol ]
  %.11769.i.i811.unr = phi ptr [ %.11769.i.i811.ph, %.lr.ph72.i.i808.preheader4200 ], [ %i.hez, %.lr.ph72.i.i808.prol ]
  %.11968.i.i812.unr = phi ptr [ %.11968.i.i812.ph, %.lr.ph72.i.i808.preheader4200 ], [ %i.heq, %.lr.ph72.i.i808.prol ]
  %i.hfb = icmp eq i32 %i.hdg, %.neg4474
  br i1 %i.hfb, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph72.i.i808

.lr.ph.i.i814:                                    ; preds = %bb.hu, %.lr.ph.i.i814
  %.064.i.i815 = phi i32 [ %i.hhu, %.lr.ph.i.i814 ], [ 0, %bb.hu ]
  %.01463.i.i816 = phi ptr [ %i.hhr, %.lr.ph.i.i814 ], [ %0, %bb.hu ] ; 2 uses
  %.01662.i.i817 = phi ptr [ %i.hht, %.lr.ph.i.i814 ], [ %2, %bb.hu ] ; 2 uses
  %.01861.i.i818 = phi ptr [ %i.hhs, %.lr.ph.i.i814 ], [ %1, %bb.hu ] ; 2 uses
  %i.hfc = load i64, ptr %.01463.i.i816, align 1, !tbaa !60
  %i.hfd = insertelement <2 x i64> poison, i64 %i.hfc, i64 0
  %i.hfe = bitcast <2 x i64> %i.hfd to <8 x i16>
  %i.hff = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hfe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.hfg = bitcast <8 x i16> %i.hff to <4 x float> ; 3 uses
  %i.hfh = load i64, ptr %.01861.i.i818, align 1, !tbaa !60
  %i.hfi = insertelement <2 x i64> poison, i64 %i.hfh, i64 0
  %i.hfj = bitcast <2 x i64> %i.hfi to <8 x i16>
  %i.hfk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hfj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.hfl = bitcast <8 x i16> %i.hfk to <4 x float> ; 3 uses
  %i.hfm = fcmp fast oeq <4 x float> %i.hfg, zeroinitializer ; 2 uses
  %i.hfn = fcmp fast oeq <4 x float> %i.hfl, zeroinitializer ; 2 uses
  %.not60.i.i819 = or <4 x i1> %i.hfm, %i.hfn
  %i.hfo = fcmp fast olt <4 x float> %i.hfg, zeroinitializer
  %i.hfp = fcmp fast olt <4 x float> %i.hfl, zeroinitializer
  %i.hfq = select <4 x i1> %i.hfp, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.hfr = select <4 x i1> %i.hfo, <4 x float> %i.hfq, <4 x float> zeroinitializer
  %i.hfs = fdiv fast <4 x float> %i.hfl, %i.hfg   ; 2 uses
  %i.hft = bitcast <4 x float> %i.hfs to <4 x i32>
  %i.hfu = and <4 x i32> %i.hft, splat (i32 -2147483648)
  %i.hfv = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.hfs) ; 3 uses
  %i.hfw = fcmp fast ogt <4 x float> %i.hfv, splat (float 1.000000e+00) ; 2 uses
  %i.hfx = select <4 x i1> %i.hfw, <4 x float> splat (float -1.000000e+00), <4 x float> %i.hfv
  %i.hfy = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.hfv, <4 x float> splat (float 1.000000e+00))
  %i.hfz = fdiv fast <4 x float> %i.hfx, %i.hfy   ; 3 uses
  %i.hga = fmul fast <4 x float> %i.hfz, %i.hfz   ; 3 uses
  %i.hgb = fmul fast <4 x float> %i.hga, %i.hga   ; 7 uses
  %i.hgc = fmul fast <4 x float> %i.hgb, splat (float f0x3C83A25C)
  %i.hgd = fsub fast <4 x float> splat (float f0xBD99B01E), %i.hgc
  %i.hge = fmul fast <4 x float> %i.hgd, %i.hgb
  %i.hgf = fadd fast <4 x float> %i.hge, splat (float f0xBE117200)
  %i.hgg = fmul fast <4 x float> %i.hgf, %i.hgb
  %i.hgh = fadd fast <4 x float> %i.hgg, splat (float f0xBEAAAA53)
  %i.hgi = fmul fast <4 x float> %i.hgb, splat (float f0x3B3AC537)
  %i.hgj = fadd fast <4 x float> %i.hgi, splat (float f0x3D2EDD4E)
  %i.hgk = fmul fast <4 x float> %i.hgj, %i.hgb
  %i.hgl = fadd fast <4 x float> %i.hgk, splat (float f0x3DD9ED24)
  %i.hgm = fmul fast <4 x float> %i.hgl, %i.hgb
  %i.hgn = fadd fast <4 x float> %i.hgm, splat (float f0x3E4CB974)
  %i.hgo = fmul fast <4 x float> %i.hgn, %i.hgb
  %i.hgp = fadd fast <4 x float> %i.hgo, splat (float 1.000000e+00)
  %i.hgq = fmul fast <4 x float> %i.hgh, %i.hga
  %i.hgr = fadd fast <4 x float> %i.hgp, %i.hgq
  %i.hgs = fmul fast <4 x float> %i.hgr, %i.hfz
  %i.hgt = select <4 x i1> %i.hfw, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.hgu = fadd fast <4 x float> %i.hgs, %i.hgt
  %i.hgv = bitcast <4 x float> %i.hgu to <4 x i32>
  %i.hgw = or <4 x i32> %i.hfu, %i.hgv
  %i.hgx = bitcast <4 x i32> %i.hgw to <4 x float>
  %i.hgy = fadd fast <4 x float> %i.hfr, %i.hgx
  %i.hgz = bitcast <8 x i16> %i.hff to <4 x i32>
  %i.hha = and <4 x i32> %i.hgz, splat (i32 -2147483648)
  %i.hhb = or disjoint <4 x i32> %i.hha, splat (i32 1078530011)
  %i.hhc = bitcast <4 x i32> %i.hhb to <4 x float>
  %i.hhd = fcmp fast uge <4 x float> %i.hhc, zeroinitializer
  %i.hhe = bitcast <8 x i16> %i.hfk to <4 x i32>
  %i.hhf = and <4 x i32> %i.hhe, splat (i32 -2147483648)
  %i.hhg = or disjoint <4 x i32> %i.hhf, splat (i32 1070141403)
  %i.hhh = select <4 x i1> %i.hhd, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.hhi = bitcast <4 x float> %i.hgy to <4 x i32>
  %20 = select <4 x i1> %.not60.i.i819, <4 x i32> zeroinitializer, <4 x i32> %i.hhi
  %i.hhj = select <4 x i1> %i.hfm, <4 x i32> %i.hhg, <4 x i32> zeroinitializer
  %i.hhk = select <4 x i1> %i.hfn, <4 x i32> %i.hhh, <4 x i32> %i.hhj
  %21 = or <4 x i32> %20, %i.hhk
  %i.hhl = bitcast <4 x i32> %21 to <8 x i16>
  %i.hhm = shufflevector <8 x i16> %i.hhl, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.hhn = bitcast <8 x i16> %i.hhm to <4 x float>
  %i.hho = shufflevector <4 x float> %i.hhn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hhp = bitcast <4 x float> %i.hho to <2 x i64>
  %i.hhq = extractelement <2 x i64> %i.hhp, i64 0
  store i64 %i.hhq, ptr %.01662.i.i817, align 1, !tbaa !60
  %i.hhr = getelementptr inbounds nuw i8, ptr %.01463.i.i816, i64 8 ; 2 uses
  %i.hhs = getelementptr inbounds nuw i8, ptr %.01861.i.i818, i64 8 ; 2 uses
  %i.hht = getelementptr inbounds nuw i8, ptr %.01662.i.i817, i64 8 ; 2 uses
  %i.hhu = add nuw nsw i32 %.064.i.i815, 4        ; 2 uses
  %i.hhv = or disjoint i32 %i.hhu, 3
  %i.hhw = icmp slt i32 %i.hhv, %i.hdg
  br i1 %i.hhw, label %.lr.ph.i.i814, label %.preheader.loopexit.i.i820, !llvm.loop !576

.lr.ph72.i.i808:                                  ; preds = %.lr.ph72.i.i808.prol.loopexit, %.lr.ph72.i.i808
  %.171.i.i809 = phi i32 [ %i.hjb, %.lr.ph72.i.i808 ], [ %.171.i.i809.unr, %.lr.ph72.i.i808.prol.loopexit ]
  %.11570.i.i810 = phi ptr [ %i.him, %.lr.ph72.i.i808 ], [ %.11570.i.i810.unr, %.lr.ph72.i.i808.prol.loopexit ] ; 3 uses
  %.11769.i.i811 = phi ptr [ %i.hja, %.lr.ph72.i.i808 ], [ %.11769.i.i811.unr, %.lr.ph72.i.i808.prol.loopexit ] ; 3 uses
  %.11968.i.i812 = phi ptr [ %i.hir, %.lr.ph72.i.i808 ], [ %.11968.i.i812.unr, %.lr.ph72.i.i808.prol.loopexit ] ; 3 uses
  %i.hhx = getelementptr inbounds nuw i8, ptr %.11570.i.i810, i64 2
  %i.hhy = load i16, ptr %.11570.i.i810, align 2, !tbaa !57
  %i.hhz = zext i16 %i.hhy to i32
  %i.hia = shl nuw i32 %i.hhz, 16
  %i.hib = bitcast i32 %i.hia to float
  %i.hic = getelementptr inbounds nuw i8, ptr %.11968.i.i812, i64 2
  %i.hid = load i16, ptr %.11968.i.i812, align 2, !tbaa !57
  %i.hie = zext i16 %i.hid to i32
  %i.hif = shl nuw i32 %i.hie, 16
  %i.hig = bitcast i32 %i.hif to float
  %i.hih = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.hig, float %i.hib)
  %i.hii = bitcast float %i.hih to i32
  %i.hij = lshr i32 %i.hii, 16
  %i.hik = trunc nuw i32 %i.hij to i16
  %i.hil = getelementptr inbounds nuw i8, ptr %.11769.i.i811, i64 2
  store i16 %i.hik, ptr %.11769.i.i811, align 2, !tbaa !57
  %i.him = getelementptr inbounds nuw i8, ptr %.11570.i.i810, i64 4
  %i.hin = load i16, ptr %i.hhx, align 2, !tbaa !57
  %i.hio = zext i16 %i.hin to i32
  %i.hip = shl nuw i32 %i.hio, 16
  %i.hiq = bitcast i32 %i.hip to float
  %i.hir = getelementptr inbounds nuw i8, ptr %.11968.i.i812, i64 4
  %i.his = load i16, ptr %i.hic, align 2, !tbaa !57
  %i.hit = zext i16 %i.his to i32
  %i.hiu = shl nuw i32 %i.hit, 16
  %i.hiv = bitcast i32 %i.hiu to float
  %i.hiw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.hiv, float %i.hiq)
  %i.hix = bitcast float %i.hiw to i32
  %i.hiy = lshr i32 %i.hix, 16
  %i.hiz = trunc nuw i32 %i.hiy to i16
  %i.hja = getelementptr inbounds nuw i8, ptr %.11769.i.i811, i64 4
  store i16 %i.hiz, ptr %i.hil, align 2, !tbaa !57
  %i.hjb = add nuw nsw i32 %.171.i.i809, 2        ; 2 uses
  %exitcond.not.i.i813.1 = icmp eq i32 %i.hjb, %i.hdg
  br i1 %exitcond.not.i.i813.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph72.i.i808, !llvm.loop !577

bb.hv:                                            ; preds = %bb.ht
  %i.hjc = icmp eq i32 %4, 1
  br i1 %i.hjc, label %bb.hw, label %bb.ib

bb.hw:                                            ; preds = %bb.hv
  %i.hjd = load i16, ptr %1, align 2, !tbaa !57
  %i.hje = zext i16 %i.hjd to i32
  %i.hjf = shl nuw i32 %i.hje, 16
  %i.hjg = bitcast i32 %i.hjf to float            ; 6 uses
  %i.hjh = icmp eq i32 %.sroa.speculated.i762, 4
  br i1 %i.hjh, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.hji = load i64, ptr %1, align 2, !tbaa !60
  %i.hjj = insertelement <2 x i64> poison, i64 %i.hji, i64 0
  %i.hjk = bitcast <2 x i64> %i.hjj to <8 x i16>
  %i.hjl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hjk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hjm = bitcast <8 x i16> %i.hjl to <4 x float>
  br label %bb.hz

bb.hy:                                            ; preds = %bb.hw
  %i.hjn = insertelement <4 x float> poison, float %i.hjg, i64 0
  %i.hjo = shufflevector <4 x float> %i.hjn, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %i.hjp = phi fast <4 x float> [ %i.hjm, %bb.hx ], [ %i.hjo, %bb.hy ] ; 4 uses
  %i.hjq = icmp sgt i32 %i.hdg, 3
  br i1 %i.hjq, label %.lr.ph.i37.i797, label %.preheader.i34.i788

.lr.ph.i37.i797:                                  ; preds = %bb.hz
  %i.hjr = fcmp fast oeq <4 x float> %i.hjp, zeroinitializer ; 2 uses
  %i.hjs = bitcast <4 x float> %i.hjp to <4 x i32>
  %i.hjt = and <4 x i32> %i.hjs, splat (i32 -2147483648)
  %i.hju = fcmp fast olt <4 x float> %i.hjp, zeroinitializer
  %i.hjv = select <4 x i1> %i.hju, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.hjw = or disjoint <4 x i32> %i.hjt, splat (i32 1070141403)
  br label %bb.ia

.preheader.loopexit.i38.i802:                     ; preds = %bb.ia
  %i.hjx = and i32 %i.hdg, 2147483644
  br label %.preheader.i34.i788

.preheader.i34.i788:                              ; preds = %.preheader.loopexit.i38.i802, %bb.hz
  %.017.lcssa.i.i789 = phi ptr [ %2, %bb.hz ], [ %i.hns, %.preheader.loopexit.i38.i802 ] ; 4 uses
  %.015.lcssa.i.i790 = phi ptr [ %0, %bb.hz ], [ %i.hnr, %.preheader.loopexit.i38.i802 ] ; 4 uses
  %.0.lcssa.i35.i791 = phi i32 [ 0, %bb.hz ], [ %i.hjx, %.preheader.loopexit.i38.i802 ] ; 4 uses
  %i.hjy = icmp slt i32 %.0.lcssa.i35.i791, %i.hdg
  br i1 %i.hjy, label %.lr.ph68.i.i792.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph68.i.i792.preheader:                        ; preds = %.preheader.i34.i788
  %.015.lcssa.i.i7902927 = ptrtoaddr ptr %.015.lcssa.i.i790 to i64
  %.017.lcssa.i.i7892926 = ptrtoaddr ptr %.017.lcssa.i.i789 to i64
  %i.hjz = xor i32 %.0.lcssa.i35.i791, -1
  %i.hka = add i32 %i.hdg, %i.hjz                 ; 2 uses
  %i.hkb = zext i32 %i.hka to i64
  %i.hkc = add nuw nsw i64 %i.hkb, 1              ; 2 uses
  %min.iters.check2930 = icmp ult i32 %i.hka, 7
  %i.hkd = sub i64 %.015.lcssa.i.i7902927, %.017.lcssa.i.i7892926
  %diff.check2928 = icmp ugt i64 %i.hkd, -16
  %or.cond3951.a = select i1 %min.iters.check2930, i1 true, i1 %diff.check2928
  br i1 %or.cond3951.a, label %.lr.ph68.i.i792.preheader4205, label %vector.ph2931

vector.ph2931:                                    ; preds = %.lr.ph68.i.i792.preheader
  %n.vec2932 = and i64 %i.hkc, 8589934584         ; 4 uses
  %i.hke = trunc i64 %n.vec2932 to i32
  %i.hkf = add i32 %.0.lcssa.i35.i791, %i.hke
  %i.hkg = shl nuw nsw i64 %n.vec2932, 1          ; 2 uses
  %i.hkh = getelementptr i8, ptr %.015.lcssa.i.i790, i64 %i.hkg
  %i.hki = getelementptr i8, ptr %.017.lcssa.i.i789, i64 %i.hkg
  %i.hkj = insertelement <4 x float> poison, float %i.hjg, i64 0
  %i.hkk = shufflevector <4 x float> %i.hkj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hkl = insertelement <2 x float> poison, float %i.hjg, i64 0
  %i.hkm = shufflevector <2 x float> %i.hkl, <2 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body2933

vector.body2933:                                  ; preds = %vector.body2933, %vector.ph2931
  %index2934 = phi i64 [ 0, %vector.ph2931 ], [ %index.next2938, %vector.body2933 ] ; 2 uses
  %i.hkn = shl i64 %index2934, 1                  ; 2 uses
  %next.gep2935 = getelementptr i8, ptr %.015.lcssa.i.i790, i64 %i.hkn
  %next.gep2936 = getelementptr i8, ptr %.017.lcssa.i.i789, i64 %i.hkn
  %wide.load2937 = load <8 x i16>, ptr %next.gep2935, align 2, !tbaa !57
  %i.hko = zext <8 x i16> %wide.load2937 to <8 x i32>
  %i.hkp = shl nuw <8 x i32> %i.hko, splat (i32 16)
  %i.hkq = bitcast <8 x i32> %i.hkp to <8 x float> ; 2 uses
  %i.hkr = shufflevector <8 x float> %i.hkq, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hks = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.hkk, <4 x float> %i.hkr)
  %i.hkt = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.hkm, <8 x float> %i.hkq)
  %i.hku = shufflevector <4 x float> %i.hks, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hkv = shufflevector <8 x float> %i.hkt, <8 x float> %i.hku, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hkw = bitcast <8 x float> %i.hkv to <8 x i32>
  %i.hkx = lshr <8 x i32> %i.hkw, splat (i32 16)
  %i.hky = trunc nuw <8 x i32> %i.hkx to <8 x i16>
  store <8 x i16> %i.hky, ptr %next.gep2936, align 2, !tbaa !57
  %index.next2938 = add nuw i64 %index2934, 8     ; 2 uses
  %i.hkz = icmp eq i64 %index.next2938, %n.vec2932
  br i1 %i.hkz, label %middle.block2939, label %vector.body2933, !llvm.loop !578

middle.block2939:                                 ; preds = %vector.body2933
  %cmp.n2940 = icmp eq i64 %i.hkc, %n.vec2932
  br i1 %cmp.n2940, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph68.i.i792.preheader4205

.lr.ph68.i.i792.preheader4205:                    ; preds = %.lr.ph68.i.i792.preheader, %middle.block2939
  %.167.i.i793.ph = phi i32 [ %.0.lcssa.i35.i791, %.lr.ph68.i.i792.preheader ], [ %i.hkf, %middle.block2939 ] ; 4 uses
  %.11666.i.i794.ph = phi ptr [ %.015.lcssa.i.i790, %.lr.ph68.i.i792.preheader ], [ %i.hkh, %middle.block2939 ] ; 3 uses
  %.11865.i.i795.ph = phi ptr [ %.017.lcssa.i.i789, %.lr.ph68.i.i792.preheader ], [ %i.hki, %middle.block2939 ] ; 3 uses
  %i.hla = sub i32 %i.hdg, %.167.i.i793.ph
  %.neg4473 = add i32 %.167.i.i793.ph, 1
  %xtraiter4370 = and i32 %i.hla, 1
  %lcmp.mod4371.not = icmp eq i32 %xtraiter4370, 0
  br i1 %lcmp.mod4371.not, label %.lr.ph68.i.i792.prol.loopexit, label %.lr.ph68.i.i792.prol

.lr.ph68.i.i792.prol:                             ; preds = %.lr.ph68.i.i792.preheader4205
  %i.hlb = getelementptr inbounds nuw i8, ptr %.11666.i.i794.ph, i64 2
  %i.hlc = load i16, ptr %.11666.i.i794.ph, align 2, !tbaa !57
  %i.hld = zext i16 %i.hlc to i32
  %i.hle = shl nuw i32 %i.hld, 16
  %i.hlf = bitcast i32 %i.hle to float
  %i.hlg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.hjg, float %i.hlf)
  %i.hlh = bitcast float %i.hlg to i32
  %i.hli = lshr i32 %i.hlh, 16
  %i.hlj = trunc nuw i32 %i.hli to i16
  %i.hlk = getelementptr inbounds nuw i8, ptr %.11865.i.i795.ph, i64 2
  store i16 %i.hlj, ptr %.11865.i.i795.ph, align 2, !tbaa !57
  %i.hll = add nuw nsw i32 %.167.i.i793.ph, 1
  br label %.lr.ph68.i.i792.prol.loopexit

.lr.ph68.i.i792.prol.loopexit:                    ; preds = %.lr.ph68.i.i792.prol, %.lr.ph68.i.i792.preheader4205
  %.167.i.i793.unr = phi i32 [ %.167.i.i793.ph, %.lr.ph68.i.i792.preheader4205 ], [ %i.hll, %.lr.ph68.i.i792.prol ]
  %.11666.i.i794.unr = phi ptr [ %.11666.i.i794.ph, %.lr.ph68.i.i792.preheader4205 ], [ %i.hlb, %.lr.ph68.i.i792.prol ]
  %.11865.i.i795.unr = phi ptr [ %.11865.i.i795.ph, %.lr.ph68.i.i792.preheader4205 ], [ %i.hlk, %.lr.ph68.i.i792.prol ]
  %i.hlm = icmp eq i32 %i.hdg, %.neg4473
  br i1 %i.hlm, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph68.i.i792

bb.ia:                                            ; preds = %bb.ia, %.lr.ph.i37.i797
  %.062.i.i798 = phi i32 [ 0, %.lr.ph.i37.i797 ], [ %i.hnt, %bb.ia ]
  %.01561.i.i799 = phi ptr [ %0, %.lr.ph.i37.i797 ], [ %i.hnr, %bb.ia ] ; 2 uses
  %.01760.i.i800 = phi ptr [ %2, %.lr.ph.i37.i797 ], [ %i.hns, %bb.ia ] ; 2 uses
  %i.hln = load i64, ptr %.01561.i.i799, align 1, !tbaa !60
  %i.hlo = insertelement <2 x i64> poison, i64 %i.hln, i64 0
  %i.hlp = bitcast <2 x i64> %i.hlo to <8 x i16>
  %i.hlq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hlp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.hlr = bitcast <8 x i16> %i.hlq to <4 x float> ; 3 uses
  %i.hls = fcmp fast oeq <4 x float> %i.hlr, zeroinitializer ; 2 uses
  %.not59.i.i801 = or <4 x i1> %i.hjr, %i.hls
  %i.hlt = fcmp fast olt <4 x float> %i.hlr, zeroinitializer
  %i.hlu = select <4 x i1> %i.hlt, <4 x float> %i.hjv, <4 x float> zeroinitializer
  %i.hlv = fdiv fast <4 x float> %i.hjp, %i.hlr   ; 2 uses
  %i.hlw = bitcast <4 x float> %i.hlv to <4 x i32>
  %i.hlx = and <4 x i32> %i.hlw, splat (i32 -2147483648)
  %i.hly = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.hlv) ; 3 uses
  %i.hlz = fcmp fast ogt <4 x float> %i.hly, splat (float 1.000000e+00) ; 2 uses
  %i.hma = select <4 x i1> %i.hlz, <4 x float> splat (float -1.000000e+00), <4 x float> %i.hly
  %i.hmb = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.hly, <4 x float> splat (float 1.000000e+00))
  %i.hmc = fdiv fast <4 x float> %i.hma, %i.hmb   ; 3 uses
  %i.hmd = fmul fast <4 x float> %i.hmc, %i.hmc   ; 3 uses
  %i.hme = fmul fast <4 x float> %i.hmd, %i.hmd   ; 7 uses
  %i.hmf = fmul fast <4 x float> %i.hme, splat (float f0x3C83A25C)
  %i.hmg = fsub fast <4 x float> splat (float f0xBD99B01E), %i.hmf
  %i.hmh = fmul fast <4 x float> %i.hmg, %i.hme
  %i.hmi = fadd fast <4 x float> %i.hmh, splat (float f0xBE117200)
  %i.hmj = fmul fast <4 x float> %i.hmi, %i.hme
  %i.hmk = fadd fast <4 x float> %i.hmj, splat (float f0xBEAAAA53)
  %i.hml = fmul fast <4 x float> %i.hme, splat (float f0x3B3AC537)
  %i.hmm = fadd fast <4 x float> %i.hml, splat (float f0x3D2EDD4E)
  %i.hmn = fmul fast <4 x float> %i.hmm, %i.hme
  %i.hmo = fadd fast <4 x float> %i.hmn, splat (float f0x3DD9ED24)
  %i.hmp = fmul fast <4 x float> %i.hmo, %i.hme
  %i.hmq = fadd fast <4 x float> %i.hmp, splat (float f0x3E4CB974)
  %i.hmr = fmul fast <4 x float> %i.hmq, %i.hme
  %i.hms = fadd fast <4 x float> %i.hmr, splat (float 1.000000e+00)
  %i.hmt = fmul fast <4 x float> %i.hmk, %i.hmd
  %i.hmu = fadd fast <4 x float> %i.hms, %i.hmt
  %i.hmv = fmul fast <4 x float> %i.hmu, %i.hmc
  %i.hmw = select <4 x i1> %i.hlz, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.hmx = fadd fast <4 x float> %i.hmv, %i.hmw
  %i.hmy = bitcast <4 x float> %i.hmx to <4 x i32>
  %i.hmz = or <4 x i32> %i.hlx, %i.hmy
  %i.hna = bitcast <4 x i32> %i.hmz to <4 x float>
  %i.hnb = fadd fast <4 x float> %i.hlu, %i.hna
  %i.hnc = bitcast <8 x i16> %i.hlq to <4 x i32>
  %i.hnd = and <4 x i32> %i.hnc, splat (i32 -2147483648)
  %i.hne = or disjoint <4 x i32> %i.hnd, splat (i32 1078530011)
  %i.hnf = bitcast <4 x i32> %i.hne to <4 x float>
  %i.hng = fcmp fast uge <4 x float> %i.hnf, zeroinitializer
  %i.hnh = select <4 x i1> %i.hng, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.hni = bitcast <4 x float> %i.hnb to <4 x i32>
  %22 = select <4 x i1> %.not59.i.i801, <4 x i32> zeroinitializer, <4 x i32> %i.hni
  %i.hnj = select <4 x i1> %i.hls, <4 x i32> %i.hjw, <4 x i32> zeroinitializer
  %i.hnk = select <4 x i1> %i.hjr, <4 x i32> %i.hnh, <4 x i32> %i.hnj
  %23 = or <4 x i32> %22, %i.hnk
  %i.hnl = bitcast <4 x i32> %23 to <8 x i16>
  %i.hnm = shufflevector <8 x i16> %i.hnl, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.hnn = bitcast <8 x i16> %i.hnm to <4 x float>
  %i.hno = shufflevector <4 x float> %i.hnn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hnp = bitcast <4 x float> %i.hno to <2 x i64>
  %i.hnq = extractelement <2 x i64> %i.hnp, i64 0
  store i64 %i.hnq, ptr %.01760.i.i800, align 1, !tbaa !60
  %i.hnr = getelementptr inbounds nuw i8, ptr %.01561.i.i799, i64 8 ; 2 uses
  %i.hns = getelementptr inbounds nuw i8, ptr %.01760.i.i800, i64 8 ; 2 uses
  %i.hnt = add nuw nsw i32 %.062.i.i798, 4        ; 2 uses
  %i.hnu = or disjoint i32 %i.hnt, 3
  %i.hnv = icmp slt i32 %i.hnu, %i.hdg
  br i1 %i.hnv, label %bb.ia, label %.preheader.loopexit.i38.i802, !llvm.loop !579

.lr.ph68.i.i792:                                  ; preds = %.lr.ph68.i.i792.prol.loopexit, %.lr.ph68.i.i792
  %.167.i.i793 = phi i32 [ %i.hoq, %.lr.ph68.i.i792 ], [ %.167.i.i793.unr, %.lr.ph68.i.i792.prol.loopexit ]
  %.11666.i.i794 = phi ptr [ %i.hog, %.lr.ph68.i.i792 ], [ %.11666.i.i794.unr, %.lr.ph68.i.i792.prol.loopexit ] ; 3 uses
  %.11865.i.i795 = phi ptr [ %i.hop, %.lr.ph68.i.i792 ], [ %.11865.i.i795.unr, %.lr.ph68.i.i792.prol.loopexit ] ; 3 uses
  %i.hnw = getelementptr inbounds nuw i8, ptr %.11666.i.i794, i64 2
  %i.hnx = load i16, ptr %.11666.i.i794, align 2, !tbaa !57
  %i.hny = zext i16 %i.hnx to i32
  %i.hnz = shl nuw i32 %i.hny, 16
  %i.hoa = bitcast i32 %i.hnz to float
  %i.hob = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.hjg, float %i.hoa)
  %i.hoc = bitcast float %i.hob to i32
  %i.hod = lshr i32 %i.hoc, 16
  %i.hoe = trunc nuw i32 %i.hod to i16
  %i.hof = getelementptr inbounds nuw i8, ptr %.11865.i.i795, i64 2
  store i16 %i.hoe, ptr %.11865.i.i795, align 2, !tbaa !57
  %i.hog = getelementptr inbounds nuw i8, ptr %.11666.i.i794, i64 4
  %i.hoh = load i16, ptr %i.hnw, align 2, !tbaa !57
  %i.hoi = zext i16 %i.hoh to i32
  %i.hoj = shl nuw i32 %i.hoi, 16
  %i.hok = bitcast i32 %i.hoj to float
  %i.hol = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.hjg, float %i.hok)
  %i.hom = bitcast float %i.hol to i32
  %i.hon = lshr i32 %i.hom, 16
  %i.hoo = trunc nuw i32 %i.hon to i16
  %i.hop = getelementptr inbounds nuw i8, ptr %.11865.i.i795, i64 4
  store i16 %i.hoo, ptr %i.hof, align 2, !tbaa !57
  %i.hoq = add nuw nsw i32 %.167.i.i793, 2        ; 2 uses
  %exitcond.not.i36.i796.1 = icmp eq i32 %i.hoq, %i.hdg
  br i1 %exitcond.not.i36.i796.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph68.i.i792, !llvm.loop !580

bb.ib:                                            ; preds = %bb.hv
  %i.hor = icmp eq i32 %3, 1
  br i1 %i.hor, label %bb.ic, label %bb.ih

bb.ic:                                            ; preds = %bb.ib
  %i.hos = load i16, ptr %0, align 2, !tbaa !57
  %i.hot = zext i16 %i.hos to i32
  %i.hou = shl nuw i32 %i.hot, 16
  %i.hov = bitcast i32 %i.hou to float            ; 6 uses
  %i.how = icmp eq i32 %.sroa.speculated.i762, 4
  br i1 %i.how, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.hox = load i64, ptr %0, align 2, !tbaa !60
  %i.hoy = insertelement <2 x i64> poison, i64 %i.hox, i64 0
  %i.hoz = bitcast <2 x i64> %i.hoy to <8 x i16>
  %i.hpa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hoz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hpb = bitcast <8 x i16> %i.hpa to <4 x float>
  br label %bb.if

bb.ie:                                            ; preds = %bb.ic
  %i.hpc = insertelement <4 x float> poison, float %i.hov, i64 0
  %i.hpd = shufflevector <4 x float> %i.hpc, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %i.hpe = phi fast <4 x float> [ %i.hpb, %bb.id ], [ %i.hpd, %bb.ie ] ; 4 uses
  %i.hpf = icmp sgt i32 %i.hdg, 3
  br i1 %i.hpf, label %.lr.ph.i44.i781, label %.preheader.i39.i772

.lr.ph.i44.i781:                                  ; preds = %bb.if
  %i.hpg = fcmp fast oeq <4 x float> %i.hpe, zeroinitializer ; 2 uses
  %i.hph = fcmp fast olt <4 x float> %i.hpe, zeroinitializer
  %i.hpi = bitcast <4 x float> %i.hpe to <4 x i32>
  %isneg.inv.i.i782 = icmp slt <4 x i32> %i.hpi, zeroinitializer
  %i.hpj = select <4 x i1> %isneg.inv.i.i782, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.hpk = fdiv fast <4 x float> splat (float 1.000000e+00), %i.hpe
  br label %bb.ig

.preheader.loopexit.i45.i787:                     ; preds = %bb.ig
  %i.hpl = and i32 %i.hdg, 2147483644
  br label %.preheader.i39.i772

.preheader.i39.i772:                              ; preds = %.preheader.loopexit.i45.i787, %bb.if
  %.017.lcssa.i40.i773 = phi ptr [ %2, %bb.if ], [ %i.hte, %.preheader.loopexit.i45.i787 ] ; 4 uses
  %.015.lcssa.i41.i774 = phi ptr [ %1, %bb.if ], [ %i.htd, %.preheader.loopexit.i45.i787 ] ; 4 uses
  %.0.lcssa.i42.i775 = phi i32 [ 0, %bb.if ], [ %i.hpl, %.preheader.loopexit.i45.i787 ] ; 4 uses
  %i.hpm = icmp slt i32 %.0.lcssa.i42.i775, %i.hdg
  br i1 %i.hpm, label %.lr.ph67.i.i776.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph67.i.i776.preheader:                        ; preds = %.preheader.i39.i772
  %.015.lcssa.i41.i7742908 = ptrtoaddr ptr %.015.lcssa.i41.i774 to i64
  %.017.lcssa.i40.i7732907 = ptrtoaddr ptr %.017.lcssa.i40.i773 to i64
  %i.hpn = xor i32 %.0.lcssa.i42.i775, -1
  %i.hpo = add i32 %i.hdg, %i.hpn                 ; 2 uses
  %i.hpp = zext i32 %i.hpo to i64
  %i.hpq = add nuw nsw i64 %i.hpp, 1              ; 2 uses
  %min.iters.check2911 = icmp ult i32 %i.hpo, 7
  %i.hpr = sub i64 %.015.lcssa.i41.i7742908, %.017.lcssa.i40.i7732907
  %diff.check2909 = icmp ugt i64 %i.hpr, -16
  %or.cond3952.a = select i1 %min.iters.check2911, i1 true, i1 %diff.check2909
  br i1 %or.cond3952.a, label %.lr.ph67.i.i776.preheader4209, label %vector.ph2912

vector.ph2912:                                    ; preds = %.lr.ph67.i.i776.preheader
  %n.vec2913 = and i64 %i.hpq, 8589934584         ; 4 uses
  %i.hps = trunc i64 %n.vec2913 to i32
  %i.hpt = add i32 %.0.lcssa.i42.i775, %i.hps
  %i.hpu = shl nuw nsw i64 %n.vec2913, 1          ; 2 uses
  %i.hpv = getelementptr i8, ptr %.015.lcssa.i41.i774, i64 %i.hpu
  %i.hpw = getelementptr i8, ptr %.017.lcssa.i40.i773, i64 %i.hpu
  %i.hpx = insertelement <4 x float> poison, float %i.hov, i64 0
  %i.hpy = shufflevector <4 x float> %i.hpx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hpz = insertelement <2 x float> poison, float %i.hov, i64 0
  %i.hqa = shufflevector <2 x float> %i.hpz, <2 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body2914

vector.body2914:                                  ; preds = %vector.body2914, %vector.ph2912
  %index2915 = phi i64 [ 0, %vector.ph2912 ], [ %index.next2919, %vector.body2914 ] ; 2 uses
  %i.hqb = shl i64 %index2915, 1                  ; 2 uses
  %next.gep2916 = getelementptr i8, ptr %.015.lcssa.i41.i774, i64 %i.hqb
  %next.gep2917 = getelementptr i8, ptr %.017.lcssa.i40.i773, i64 %i.hqb
  %wide.load2918 = load <8 x i16>, ptr %next.gep2916, align 2, !tbaa !57
  %i.hqc = zext <8 x i16> %wide.load2918 to <8 x i32>
  %i.hqd = shl nuw <8 x i32> %i.hqc, splat (i32 16)
  %i.hqe = bitcast <8 x i32> %i.hqd to <8 x float> ; 2 uses
  %i.hqf = shufflevector <8 x float> %i.hqe, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hqg = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.hqf, <4 x float> %i.hpy)
  %i.hqh = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.hqe, <8 x float> %i.hqa)
  %i.hqi = shufflevector <4 x float> %i.hqg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hqj = shufflevector <8 x float> %i.hqh, <8 x float> %i.hqi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hqk = bitcast <8 x float> %i.hqj to <8 x i32>
  %i.hql = lshr <8 x i32> %i.hqk, splat (i32 16)
  %i.hqm = trunc nuw <8 x i32> %i.hql to <8 x i16>
  store <8 x i16> %i.hqm, ptr %next.gep2917, align 2, !tbaa !57
  %index.next2919 = add nuw i64 %index2915, 8     ; 2 uses
  %i.hqn = icmp eq i64 %index.next2919, %n.vec2913
  br i1 %i.hqn, label %middle.block2920, label %vector.body2914, !llvm.loop !581

middle.block2920:                                 ; preds = %vector.body2914
  %cmp.n2921 = icmp eq i64 %i.hpq, %n.vec2913
  br i1 %cmp.n2921, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i776.preheader4209

.lr.ph67.i.i776.preheader4209:                    ; preds = %.lr.ph67.i.i776.preheader, %middle.block2920
  %.166.i.i777.ph = phi i32 [ %.0.lcssa.i42.i775, %.lr.ph67.i.i776.preheader ], [ %i.hpt, %middle.block2920 ] ; 4 uses
  %.11665.i.i778.ph = phi ptr [ %.015.lcssa.i41.i774, %.lr.ph67.i.i776.preheader ], [ %i.hpv, %middle.block2920 ] ; 3 uses
  %.11864.i.i779.ph = phi ptr [ %.017.lcssa.i40.i773, %.lr.ph67.i.i776.preheader ], [ %i.hpw, %middle.block2920 ] ; 3 uses
  %i.hqo = sub i32 %i.hdg, %.166.i.i777.ph
  %.neg4472 = add i32 %.166.i.i777.ph, 1
  %xtraiter4368 = and i32 %i.hqo, 1
  %lcmp.mod4369.not = icmp eq i32 %xtraiter4368, 0
  br i1 %lcmp.mod4369.not, label %.lr.ph67.i.i776.prol.loopexit, label %.lr.ph67.i.i776.prol

.lr.ph67.i.i776.prol:                             ; preds = %.lr.ph67.i.i776.preheader4209
  %i.hqp = getelementptr inbounds nuw i8, ptr %.11665.i.i778.ph, i64 2
  %i.hqq = load i16, ptr %.11665.i.i778.ph, align 2, !tbaa !57
  %i.hqr = zext i16 %i.hqq to i32
  %i.hqs = shl nuw i32 %i.hqr, 16
  %i.hqt = bitcast i32 %i.hqs to float
  %i.hqu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.hqt, float %i.hov)
  %i.hqv = bitcast float %i.hqu to i32
  %i.hqw = lshr i32 %i.hqv, 16
  %i.hqx = trunc nuw i32 %i.hqw to i16
  %i.hqy = getelementptr inbounds nuw i8, ptr %.11864.i.i779.ph, i64 2
  store i16 %i.hqx, ptr %.11864.i.i779.ph, align 2, !tbaa !57
  %i.hqz = add nuw nsw i32 %.166.i.i777.ph, 1
  br label %.lr.ph67.i.i776.prol.loopexit

.lr.ph67.i.i776.prol.loopexit:                    ; preds = %.lr.ph67.i.i776.prol, %.lr.ph67.i.i776.preheader4209
  %.166.i.i777.unr = phi i32 [ %.166.i.i777.ph, %.lr.ph67.i.i776.preheader4209 ], [ %i.hqz, %.lr.ph67.i.i776.prol ]
  %.11665.i.i778.unr = phi ptr [ %.11665.i.i778.ph, %.lr.ph67.i.i776.preheader4209 ], [ %i.hqp, %.lr.ph67.i.i776.prol ]
  %.11864.i.i779.unr = phi ptr [ %.11864.i.i779.ph, %.lr.ph67.i.i776.preheader4209 ], [ %i.hqy, %.lr.ph67.i.i776.prol ]
  %i.hra = icmp eq i32 %i.hdg, %.neg4472
  br i1 %i.hra, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i776

bb.ig:                                            ; preds = %bb.ig, %.lr.ph.i44.i781
  %.061.i.i783 = phi i32 [ 0, %.lr.ph.i44.i781 ], [ %i.htf, %bb.ig ]
  %.01560.i.i784 = phi ptr [ %1, %.lr.ph.i44.i781 ], [ %i.htd, %bb.ig ] ; 2 uses
  %.01759.i.i785 = phi ptr [ %2, %.lr.ph.i44.i781 ], [ %i.hte, %bb.ig ] ; 2 uses
  %i.hrb = load i64, ptr %.01560.i.i784, align 1, !tbaa !60
  %i.hrc = insertelement <2 x i64> poison, i64 %i.hrb, i64 0
  %i.hrd = bitcast <2 x i64> %i.hrc to <8 x i16>
  %i.hre = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hrd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.hrf = bitcast <8 x i16> %i.hre to <4 x float> ; 3 uses
  %i.hrg = fcmp fast oeq <4 x float> %i.hrf, zeroinitializer ; 2 uses
  %.not58.i.i786 = or <4 x i1> %i.hpg, %i.hrg
  %i.hrh = fcmp fast olt <4 x float> %i.hrf, zeroinitializer
  %i.hri = select <4 x i1> %i.hrh, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.hrj = select <4 x i1> %i.hph, <4 x float> %i.hri, <4 x float> zeroinitializer
  %i.hrk = fmul fast <4 x float> %i.hrf, %i.hpk   ; 2 uses
  %i.hrl = bitcast <4 x float> %i.hrk to <4 x i32>
  %i.hrm = and <4 x i32> %i.hrl, splat (i32 -2147483648)
  %i.hrn = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.hrk) ; 3 uses
  %i.hro = fcmp fast ogt <4 x float> %i.hrn, splat (float 1.000000e+00) ; 2 uses
  %i.hrp = select <4 x i1> %i.hro, <4 x float> splat (float -1.000000e+00), <4 x float> %i.hrn
  %i.hrq = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.hrn, <4 x float> splat (float 1.000000e+00))
  %i.hrr = fdiv fast <4 x float> %i.hrp, %i.hrq   ; 3 uses
  %i.hrs = fmul fast <4 x float> %i.hrr, %i.hrr   ; 3 uses
  %i.hrt = fmul fast <4 x float> %i.hrs, %i.hrs   ; 7 uses
  %i.hru = fmul fast <4 x float> %i.hrt, splat (float f0x3C83A25C)
  %i.hrv = fsub fast <4 x float> splat (float f0xBD99B01E), %i.hru
  %i.hrw = fmul fast <4 x float> %i.hrv, %i.hrt
  %i.hrx = fadd fast <4 x float> %i.hrw, splat (float f0xBE117200)
  %i.hry = fmul fast <4 x float> %i.hrx, %i.hrt
  %i.hrz = fadd fast <4 x float> %i.hry, splat (float f0xBEAAAA53)
  %i.hsa = fmul fast <4 x float> %i.hrt, splat (float f0x3B3AC537)
  %i.hsb = fadd fast <4 x float> %i.hsa, splat (float f0x3D2EDD4E)
  %i.hsc = fmul fast <4 x float> %i.hsb, %i.hrt
  %i.hsd = fadd fast <4 x float> %i.hsc, splat (float f0x3DD9ED24)
  %i.hse = fmul fast <4 x float> %i.hsd, %i.hrt
  %i.hsf = fadd fast <4 x float> %i.hse, splat (float f0x3E4CB974)
  %i.hsg = fmul fast <4 x float> %i.hsf, %i.hrt
  %i.hsh = fadd fast <4 x float> %i.hsg, splat (float 1.000000e+00)
  %i.hsi = fmul fast <4 x float> %i.hrz, %i.hrs
  %i.hsj = fadd fast <4 x float> %i.hsh, %i.hsi
  %i.hsk = fmul fast <4 x float> %i.hsj, %i.hrr
  %i.hsl = select <4 x i1> %i.hro, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.hsm = fadd fast <4 x float> %i.hsk, %i.hsl
  %i.hsn = bitcast <4 x float> %i.hsm to <4 x i32>
  %i.hso = or <4 x i32> %i.hrm, %i.hsn
  %i.hsp = bitcast <4 x i32> %i.hso to <4 x float>
  %i.hsq = fadd fast <4 x float> %i.hrj, %i.hsp
  %i.hsr = bitcast <8 x i16> %i.hre to <4 x i32>
  %i.hss = and <4 x i32> %i.hsr, splat (i32 -2147483648)
  %i.hst = or disjoint <4 x i32> %i.hss, splat (i32 1070141403)
  %i.hsu = bitcast <4 x float> %i.hsq to <4 x i32>
  %24 = select <4 x i1> %.not58.i.i786, <4 x i32> zeroinitializer, <4 x i32> %i.hsu
  %i.hsv = select <4 x i1> %i.hpg, <4 x i32> %i.hst, <4 x i32> zeroinitializer
  %i.hsw = select <4 x i1> %i.hrg, <4 x i32> %i.hpj, <4 x i32> %i.hsv
  %25 = or <4 x i32> %24, %i.hsw
  %i.hsx = bitcast <4 x i32> %25 to <8 x i16>
  %i.hsy = shufflevector <8 x i16> %i.hsx, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.hsz = bitcast <8 x i16> %i.hsy to <4 x float>
  %i.hta = shufflevector <4 x float> %i.hsz, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.htb = bitcast <4 x float> %i.hta to <2 x i64>
  %i.htc = extractelement <2 x i64> %i.htb, i64 0
  store i64 %i.htc, ptr %.01759.i.i785, align 1, !tbaa !60
  %i.htd = getelementptr inbounds nuw i8, ptr %.01560.i.i784, i64 8 ; 2 uses
  %i.hte = getelementptr inbounds nuw i8, ptr %.01759.i.i785, i64 8 ; 2 uses
  %i.htf = add nuw nsw i32 %.061.i.i783, 4        ; 2 uses
  %i.htg = or disjoint i32 %i.htf, 3
  %i.hth = icmp slt i32 %i.htg, %i.hdg
  br i1 %i.hth, label %bb.ig, label %.preheader.loopexit.i45.i787, !llvm.loop !582

.lr.ph67.i.i776:                                  ; preds = %.lr.ph67.i.i776.prol.loopexit, %.lr.ph67.i.i776
  %.166.i.i777 = phi i32 [ %i.huc, %.lr.ph67.i.i776 ], [ %.166.i.i777.unr, %.lr.ph67.i.i776.prol.loopexit ]
  %.11665.i.i778 = phi ptr [ %i.hts, %.lr.ph67.i.i776 ], [ %.11665.i.i778.unr, %.lr.ph67.i.i776.prol.loopexit ] ; 3 uses
  %.11864.i.i779 = phi ptr [ %i.hub, %.lr.ph67.i.i776 ], [ %.11864.i.i779.unr, %.lr.ph67.i.i776.prol.loopexit ] ; 3 uses
  %i.hti = getelementptr inbounds nuw i8, ptr %.11665.i.i778, i64 2
  %i.htj = load i16, ptr %.11665.i.i778, align 2, !tbaa !57
  %i.htk = zext i16 %i.htj to i32
  %i.htl = shl nuw i32 %i.htk, 16
  %i.htm = bitcast i32 %i.htl to float
  %i.htn = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.htm, float %i.hov)
  %i.hto = bitcast float %i.htn to i32
  %i.htp = lshr i32 %i.hto, 16
  %i.htq = trunc nuw i32 %i.htp to i16
  %i.htr = getelementptr inbounds nuw i8, ptr %.11864.i.i779, i64 2
  store i16 %i.htq, ptr %.11864.i.i779, align 2, !tbaa !57
  %i.hts = getelementptr inbounds nuw i8, ptr %.11665.i.i778, i64 4
  %i.htt = load i16, ptr %i.hti, align 2, !tbaa !57
  %i.htu = zext i16 %i.htt to i32
  %i.htv = shl nuw i32 %i.htu, 16
  %i.htw = bitcast i32 %i.htv to float
  %i.htx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.htw, float %i.hov)
  %i.hty = bitcast float %i.htx to i32
  %i.htz = lshr i32 %i.hty, 16
  %i.hua = trunc nuw i32 %i.htz to i16
  %i.hub = getelementptr inbounds nuw i8, ptr %.11864.i.i779, i64 4
  store i16 %i.hua, ptr %i.htr, align 2, !tbaa !57
  %i.huc = add nuw nsw i32 %.166.i.i777, 2        ; 2 uses
  %exitcond.not.i43.i780.1 = icmp eq i32 %i.huc, %i.hdg
  br i1 %exitcond.not.i43.i780.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i776, !llvm.loop !583

bb.ih:                                            ; preds = %bb.ib, %bb.hs
  %i.hud = icmp eq i32 %6, 1
  br i1 %i.hud, label %bb.ii, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.ii:                                            ; preds = %bb.ih
  %i.hue = icmp eq i32 %3, %4
  br i1 %i.hue, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.huf = icmp eq i32 %.sroa.speculated.i762, 4
  %i.hug = icmp sgt i32 %.sroa.speculated67.i, 0
  %or.cond.i.i769 = and i1 %i.hug, %i.huf
  br i1 %or.cond.i.i769, label %.lr.ph.i46.i770, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph.i46.i770:                                  ; preds = %bb.ij, %.lr.ph.i46.i770
  %.054.i.i = phi i32 [ %i.hxa, %.lr.ph.i46.i770 ], [ 0, %bb.ij ]
  %.0953.i.i = phi ptr [ %i.hwx, %.lr.ph.i46.i770 ], [ %0, %bb.ij ] ; 2 uses
  %.01052.i.i = phi ptr [ %i.hwy, %.lr.ph.i46.i770 ], [ %1, %bb.ij ] ; 2 uses
  %.01151.i.i = phi ptr [ %i.hwz, %.lr.ph.i46.i770 ], [ %2, %bb.ij ] ; 2 uses
  %i.huh = load i64, ptr %.0953.i.i, align 1, !tbaa !60
  %i.hui = insertelement <2 x i64> poison, i64 %i.huh, i64 0
  %i.huj = bitcast <2 x i64> %i.hui to <8 x i16>
  %i.huk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.huj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.hul = bitcast <8 x i16> %i.huk to <4 x float> ; 3 uses
  %i.hum = load i16, ptr %.01052.i.i, align 2, !tbaa !57
  %i.hun = zext i16 %i.hum to i32
  %i.huo = shl nuw i32 %i.hun, 16
  %i.hup = insertelement <4 x i32> poison, i32 %i.huo, i64 0
  %i.huq = bitcast <4 x i32> %i.hup to <4 x float>
  %i.hur = shufflevector <4 x float> %i.huq, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hus = fcmp fast oeq <4 x float> %i.hul, zeroinitializer ; 2 uses
  %i.hut = fcmp fast oeq <4 x float> %i.hur, zeroinitializer ; 2 uses
  %.not50.i.i = or <4 x i1> %i.hus, %i.hut
  %i.huu = bitcast <4 x float> %i.hur to <4 x i32>
  %i.huv = and <4 x i32> %i.huu, splat (i32 -2147483648)
  %i.huw = fcmp fast olt <4 x float> %i.hul, zeroinitializer
  %i.hux = fcmp fast olt <4 x float> %i.hur, zeroinitializer
  %i.huy = select <4 x i1> %i.hux, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.huz = select <4 x i1> %i.huw, <4 x float> %i.huy, <4 x float> zeroinitializer
  %i.hva = fdiv fast <4 x float> %i.hur, %i.hul   ; 2 uses
  %i.hvb = bitcast <4 x float> %i.hva to <4 x i32>
  %i.hvc = and <4 x i32> %i.hvb, splat (i32 -2147483648)
  %i.hvd = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.hva) ; 3 uses
  %i.hve = fcmp fast ogt <4 x float> %i.hvd, splat (float 1.000000e+00) ; 2 uses
  %i.hvf = select <4 x i1> %i.hve, <4 x float> splat (float -1.000000e+00), <4 x float> %i.hvd
  %i.hvg = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.hvd, <4 x float> splat (float 1.000000e+00))
  %i.hvh = fdiv fast <4 x float> %i.hvf, %i.hvg   ; 3 uses
  %i.hvi = fmul fast <4 x float> %i.hvh, %i.hvh   ; 3 uses
  %i.hvj = fmul fast <4 x float> %i.hvi, %i.hvi   ; 7 uses
  %i.hvk = fmul fast <4 x float> %i.hvj, splat (float f0x3C83A25C)
  %i.hvl = fsub fast <4 x float> splat (float f0xBD99B01E), %i.hvk
  %i.hvm = fmul fast <4 x float> %i.hvl, %i.hvj
  %i.hvn = fadd fast <4 x float> %i.hvm, splat (float f0xBE117200)
  %i.hvo = fmul fast <4 x float> %i.hvn, %i.hvj
  %i.hvp = fadd fast <4 x float> %i.hvo, splat (float f0xBEAAAA53)
  %i.hvq = fmul fast <4 x float> %i.hvj, splat (float f0x3B3AC537)
  %i.hvr = fadd fast <4 x float> %i.hvq, splat (float f0x3D2EDD4E)
  %i.hvs = fmul fast <4 x float> %i.hvr, %i.hvj
  %i.hvt = fadd fast <4 x float> %i.hvs, splat (float f0x3DD9ED24)
  %i.hvu = fmul fast <4 x float> %i.hvt, %i.hvj
  %i.hvv = fadd fast <4 x float> %i.hvu, splat (float f0x3E4CB974)
  %i.hvw = fmul fast <4 x float> %i.hvv, %i.hvj
  %i.hvx = fadd fast <4 x float> %i.hvw, splat (float 1.000000e+00)
  %i.hvy = fmul fast <4 x float> %i.hvp, %i.hvi
  %i.hvz = fadd fast <4 x float> %i.hvx, %i.hvy
  %i.hwa = fmul fast <4 x float> %i.hvz, %i.hvh
  %i.hwb = select <4 x i1> %i.hve, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.hwc = fadd fast <4 x float> %i.hwa, %i.hwb
  %i.hwd = bitcast <4 x float> %i.hwc to <4 x i32>
  %i.hwe = or <4 x i32> %i.hvc, %i.hwd
  %i.hwf = bitcast <4 x i32> %i.hwe to <4 x float>
  %i.hwg = fadd fast <4 x float> %i.huz, %i.hwf
  %i.hwh = bitcast <8 x i16> %i.huk to <4 x i32>
  %i.hwi = and <4 x i32> %i.hwh, splat (i32 -2147483648)
  %i.hwj = or disjoint <4 x i32> %i.hwi, splat (i32 1078530011)
  %i.hwk = bitcast <4 x i32> %i.hwj to <4 x float>
  %i.hwl = fcmp fast uge <4 x float> %i.hwk, zeroinitializer
  %i.hwm = or disjoint <4 x i32> %i.huv, splat (i32 1070141403)
  %i.hwn = select <4 x i1> %i.hwl, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.hwo = bitcast <4 x float> %i.hwg to <4 x i32>
  %26 = select <4 x i1> %.not50.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.hwo
  %i.hwp = select <4 x i1> %i.hus, <4 x i32> %i.hwm, <4 x i32> zeroinitializer
  %i.hwq = select <4 x i1> %i.hut, <4 x i32> %i.hwn, <4 x i32> %i.hwp
  %27 = or <4 x i32> %26, %i.hwq
  %i.hwr = bitcast <4 x i32> %27 to <8 x i16>
  %i.hws = shufflevector <8 x i16> %i.hwr, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.hwt = bitcast <8 x i16> %i.hws to <4 x float>
  %i.hwu = shufflevector <4 x float> %i.hwt, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hwv = bitcast <4 x float> %i.hwu to <2 x i64>
  %i.hww = extractelement <2 x i64> %i.hwv, i64 0
  store i64 %i.hww, ptr %.01151.i.i, align 1, !tbaa !60
  %i.hwx = getelementptr inbounds nuw i8, ptr %.0953.i.i, i64 8
  %i.hwy = getelementptr inbounds nuw i8, ptr %.01052.i.i, i64 2
  %i.hwz = getelementptr inbounds nuw i8, ptr %.01151.i.i, i64 8
  %i.hxa = add nuw nsw i32 %.054.i.i, 1           ; 2 uses
  %exitcond.not.i47.i771 = icmp eq i32 %i.hxa, %.sroa.speculated67.i
  br i1 %exitcond.not.i47.i771, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i46.i770, !llvm.loop !584

bb.ik:                                            ; preds = %bb.ii
  %i.hxb = icmp eq i32 %4, 1
  br i1 %i.hxb, label %bb.il, label %bb.in

bb.il:                                            ; preds = %bb.ik
  %.val.i766 = load i16, ptr %1, align 2, !tbaa !57
  %i.hxc = zext i16 %.val.i766 to i32
  %i.hxd = shl nuw i32 %i.hxc, 16
  %i.hxe = bitcast i32 %i.hxd to float            ; 6 uses
  %i.hxf = insertelement <4 x float> poison, float %i.hxe, i64 0
  %i.hxg = shufflevector <4 x float> %i.hxf, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hxh = icmp sgt i32 %i.hdg, 3
  br i1 %i.hxh, label %.lr.ph.i53.i767, label %.preheader.i48.i

.lr.ph.i53.i767:                                  ; preds = %bb.il
  %i.hxi = fcmp fast oeq <4 x float> %i.hxg, zeroinitializer ; 2 uses
  %i.hxj = bitcast <4 x float> %i.hxg to <4 x i32>
  %i.hxk = and <4 x i32> %i.hxj, splat (i32 -2147483648)
  %i.hxl = fcmp fast olt <4 x float> %i.hxg, zeroinitializer
  %i.hxm = select <4 x i1> %i.hxl, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.hxn = or disjoint <4 x i32> %i.hxk, splat (i32 1070141403)
  br label %bb.im

.preheader.loopexit.i54.i768:                     ; preds = %bb.im
  %i.hxo = and i32 %i.hdg, 2147483644
  br label %.preheader.i48.i

.preheader.i48.i:                                 ; preds = %.preheader.loopexit.i54.i768, %bb.il
  %.016.lcssa.i49.i = phi ptr [ %2, %bb.il ], [ %i.ibj, %.preheader.loopexit.i54.i768 ] ; 4 uses
  %.014.lcssa.i50.i = phi ptr [ %0, %bb.il ], [ %i.ibi, %.preheader.loopexit.i54.i768 ] ; 4 uses
  %.0.lcssa.i51.i = phi i32 [ 0, %bb.il ], [ %i.hxo, %.preheader.loopexit.i54.i768 ] ; 4 uses
  %i.hxp = icmp slt i32 %.0.lcssa.i51.i, %i.hdg
  br i1 %i.hxp, label %.lr.ph49.i.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph49.i.i.preheader:                           ; preds = %.preheader.i48.i
  %.014.lcssa.i50.i2889 = ptrtoaddr ptr %.014.lcssa.i50.i to i64
  %.016.lcssa.i49.i2888 = ptrtoaddr ptr %.016.lcssa.i49.i to i64
  %i.hxq = xor i32 %.0.lcssa.i51.i, -1
  %i.hxr = add i32 %i.hdg, %i.hxq                 ; 2 uses
  %i.hxs = zext i32 %i.hxr to i64
  %i.hxt = add nuw nsw i64 %i.hxs, 1              ; 2 uses
  %min.iters.check2892 = icmp ult i32 %i.hxr, 7
  %i.hxu = sub i64 %.014.lcssa.i50.i2889, %.016.lcssa.i49.i2888
  %diff.check2890 = icmp ugt i64 %i.hxu, -16
  %or.cond3953.a = select i1 %min.iters.check2892, i1 true, i1 %diff.check2890
  br i1 %or.cond3953.a, label %.lr.ph49.i.i.preheader4214, label %vector.ph2893

vector.ph2893:                                    ; preds = %.lr.ph49.i.i.preheader
  %n.vec2894 = and i64 %i.hxt, 8589934584         ; 4 uses
  %i.hxv = trunc i64 %n.vec2894 to i32
  %i.hxw = add i32 %.0.lcssa.i51.i, %i.hxv
  %i.hxx = shl nuw nsw i64 %n.vec2894, 1          ; 2 uses
  %i.hxy = getelementptr i8, ptr %.014.lcssa.i50.i, i64 %i.hxx
  %i.hxz = getelementptr i8, ptr %.016.lcssa.i49.i, i64 %i.hxx
  %i.hya = insertelement <4 x float> poison, float %i.hxe, i64 0
  %i.hyb = shufflevector <4 x float> %i.hya, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hyc = insertelement <2 x float> poison, float %i.hxe, i64 0
  %i.hyd = shufflevector <2 x float> %i.hyc, <2 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body2895

vector.body2895:                                  ; preds = %vector.body2895, %vector.ph2893
  %index2896 = phi i64 [ 0, %vector.ph2893 ], [ %index.next2900, %vector.body2895 ] ; 2 uses
  %i.hye = shl i64 %index2896, 1                  ; 2 uses
  %next.gep2897 = getelementptr i8, ptr %.014.lcssa.i50.i, i64 %i.hye
  %next.gep2898 = getelementptr i8, ptr %.016.lcssa.i49.i, i64 %i.hye
  %wide.load2899 = load <8 x i16>, ptr %next.gep2897, align 2, !tbaa !57
  %i.hyf = zext <8 x i16> %wide.load2899 to <8 x i32>
  %i.hyg = shl nuw <8 x i32> %i.hyf, splat (i32 16)
  %i.hyh = bitcast <8 x i32> %i.hyg to <8 x float> ; 2 uses
  %i.hyi = shufflevector <8 x float> %i.hyh, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hyj = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.hyb, <4 x float> %i.hyi)
  %i.hyk = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.hyd, <8 x float> %i.hyh)
  %i.hyl = shufflevector <4 x float> %i.hyj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hym = shufflevector <8 x float> %i.hyk, <8 x float> %i.hyl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hyn = bitcast <8 x float> %i.hym to <8 x i32>
  %i.hyo = lshr <8 x i32> %i.hyn, splat (i32 16)
  %i.hyp = trunc nuw <8 x i32> %i.hyo to <8 x i16>
  store <8 x i16> %i.hyp, ptr %next.gep2898, align 2, !tbaa !57
  %index.next2900 = add nuw i64 %index2896, 8     ; 2 uses
  %i.hyq = icmp eq i64 %index.next2900, %n.vec2894
  br i1 %i.hyq, label %middle.block2901, label %vector.body2895, !llvm.loop !585

middle.block2901:                                 ; preds = %vector.body2895
  %cmp.n2902 = icmp eq i64 %i.hxt, %n.vec2894
  br i1 %cmp.n2902, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph49.i.i.preheader4214

.lr.ph49.i.i.preheader4214:                       ; preds = %.lr.ph49.i.i.preheader, %middle.block2901
  %.148.i.i.ph = phi i32 [ %.0.lcssa.i51.i, %.lr.ph49.i.i.preheader ], [ %i.hxw, %middle.block2901 ] ; 4 uses
  %.11547.i.i.ph = phi ptr [ %.014.lcssa.i50.i, %.lr.ph49.i.i.preheader ], [ %i.hxy, %middle.block2901 ] ; 3 uses
  %.11746.i.i.ph = phi ptr [ %.016.lcssa.i49.i, %.lr.ph49.i.i.preheader ], [ %i.hxz, %middle.block2901 ] ; 3 uses
  %i.hyr = sub i32 %i.hdg, %.148.i.i.ph
  %.neg4471 = add i32 %.148.i.i.ph, 1
  %xtraiter4366 = and i32 %i.hyr, 1
  %lcmp.mod4367.not = icmp eq i32 %xtraiter4366, 0
  br i1 %lcmp.mod4367.not, label %.lr.ph49.i.i.prol.loopexit, label %.lr.ph49.i.i.prol

.lr.ph49.i.i.prol:                                ; preds = %.lr.ph49.i.i.preheader4214
  %i.hys = getelementptr inbounds nuw i8, ptr %.11547.i.i.ph, i64 2
  %i.hyt = load i16, ptr %.11547.i.i.ph, align 2, !tbaa !57
  %i.hyu = zext i16 %i.hyt to i32
  %i.hyv = shl nuw i32 %i.hyu, 16
  %i.hyw = bitcast i32 %i.hyv to float
  %i.hyx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.hxe, float %i.hyw)
  %i.hyy = bitcast float %i.hyx to i32
  %i.hyz = lshr i32 %i.hyy, 16
  %i.hza = trunc nuw i32 %i.hyz to i16
  %i.hzb = getelementptr inbounds nuw i8, ptr %.11746.i.i.ph, i64 2
  store i16 %i.hza, ptr %.11746.i.i.ph, align 2, !tbaa !57
  %i.hzc = add nuw nsw i32 %.148.i.i.ph, 1
  br label %.lr.ph49.i.i.prol.loopexit

.lr.ph49.i.i.prol.loopexit:                       ; preds = %.lr.ph49.i.i.prol, %.lr.ph49.i.i.preheader4214
  %.148.i.i.unr = phi i32 [ %.148.i.i.ph, %.lr.ph49.i.i.preheader4214 ], [ %i.hzc, %.lr.ph49.i.i.prol ]
  %.11547.i.i.unr = phi ptr [ %.11547.i.i.ph, %.lr.ph49.i.i.preheader4214 ], [ %i.hys, %.lr.ph49.i.i.prol ]
  %.11746.i.i.unr = phi ptr [ %.11746.i.i.ph, %.lr.ph49.i.i.preheader4214 ], [ %i.hzb, %.lr.ph49.i.i.prol ]
  %i.hzd = icmp eq i32 %i.hdg, %.neg4471
  br i1 %i.hzd, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph49.i.i

bb.im:                                            ; preds = %bb.im, %.lr.ph.i53.i767
  %.043.i.i = phi i32 [ 0, %.lr.ph.i53.i767 ], [ %i.ibk, %bb.im ]
  %.01442.i.i = phi ptr [ %0, %.lr.ph.i53.i767 ], [ %i.ibi, %bb.im ] ; 2 uses
  %.01641.i.i = phi ptr [ %2, %.lr.ph.i53.i767 ], [ %i.ibj, %bb.im ] ; 2 uses
  %i.hze = load i64, ptr %.01442.i.i, align 1, !tbaa !60
  %i.hzf = insertelement <2 x i64> poison, i64 %i.hze, i64 0
  %i.hzg = bitcast <2 x i64> %i.hzf to <8 x i16>
  %i.hzh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hzg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.hzi = bitcast <8 x i16> %i.hzh to <4 x float> ; 3 uses
  %i.hzj = fcmp fast oeq <4 x float> %i.hzi, zeroinitializer ; 2 uses
  %.not40.i.i = or <4 x i1> %i.hxi, %i.hzj
  %i.hzk = fcmp fast olt <4 x float> %i.hzi, zeroinitializer
  %i.hzl = select <4 x i1> %i.hzk, <4 x float> %i.hxm, <4 x float> zeroinitializer
  %i.hzm = fdiv fast <4 x float> %i.hxg, %i.hzi   ; 2 uses
  %i.hzn = bitcast <4 x float> %i.hzm to <4 x i32>
  %i.hzo = and <4 x i32> %i.hzn, splat (i32 -2147483648)
  %i.hzp = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.hzm) ; 3 uses
  %i.hzq = fcmp fast ogt <4 x float> %i.hzp, splat (float 1.000000e+00) ; 2 uses
  %i.hzr = select <4 x i1> %i.hzq, <4 x float> splat (float -1.000000e+00), <4 x float> %i.hzp
  %i.hzs = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.hzp, <4 x float> splat (float 1.000000e+00))
  %i.hzt = fdiv fast <4 x float> %i.hzr, %i.hzs   ; 3 uses
  %i.hzu = fmul fast <4 x float> %i.hzt, %i.hzt   ; 3 uses
  %i.hzv = fmul fast <4 x float> %i.hzu, %i.hzu   ; 7 uses
  %i.hzw = fmul fast <4 x float> %i.hzv, splat (float f0x3C83A25C)
  %i.hzx = fsub fast <4 x float> splat (float f0xBD99B01E), %i.hzw
  %i.hzy = fmul fast <4 x float> %i.hzx, %i.hzv
  %i.hzz = fadd fast <4 x float> %i.hzy, splat (float f0xBE117200)
  %i.iaa = fmul fast <4 x float> %i.hzz, %i.hzv
  %i.iab = fadd fast <4 x float> %i.iaa, splat (float f0xBEAAAA53)
  %i.iac = fmul fast <4 x float> %i.hzv, splat (float f0x3B3AC537)
  %i.iad = fadd fast <4 x float> %i.iac, splat (float f0x3D2EDD4E)
  %i.iae = fmul fast <4 x float> %i.iad, %i.hzv
  %i.iaf = fadd fast <4 x float> %i.iae, splat (float f0x3DD9ED24)
  %i.iag = fmul fast <4 x float> %i.iaf, %i.hzv
  %i.iah = fadd fast <4 x float> %i.iag, splat (float f0x3E4CB974)
  %i.iai = fmul fast <4 x float> %i.iah, %i.hzv
  %i.iaj = fadd fast <4 x float> %i.iai, splat (float 1.000000e+00)
  %i.iak = fmul fast <4 x float> %i.iab, %i.hzu
  %i.ial = fadd fast <4 x float> %i.iaj, %i.iak
  %i.iam = fmul fast <4 x float> %i.ial, %i.hzt
  %i.ian = select <4 x i1> %i.hzq, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.iao = fadd fast <4 x float> %i.iam, %i.ian
  %i.iap = bitcast <4 x float> %i.iao to <4 x i32>
  %i.iaq = or <4 x i32> %i.hzo, %i.iap
  %i.iar = bitcast <4 x i32> %i.iaq to <4 x float>
  %i.ias = fadd fast <4 x float> %i.hzl, %i.iar
  %i.iat = bitcast <8 x i16> %i.hzh to <4 x i32>
  %i.iau = and <4 x i32> %i.iat, splat (i32 -2147483648)
  %i.iav = or disjoint <4 x i32> %i.iau, splat (i32 1078530011)
  %i.iaw = bitcast <4 x i32> %i.iav to <4 x float>
  %i.iax = fcmp fast uge <4 x float> %i.iaw, zeroinitializer
  %i.iay = select <4 x i1> %i.iax, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.iaz = bitcast <4 x float> %i.ias to <4 x i32>
  %28 = select <4 x i1> %.not40.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.iaz
  %i.iba = select <4 x i1> %i.hzj, <4 x i32> %i.hxn, <4 x i32> zeroinitializer
  %i.ibb = select <4 x i1> %i.hxi, <4 x i32> %i.iay, <4 x i32> %i.iba
  %29 = or <4 x i32> %28, %i.ibb
  %i.ibc = bitcast <4 x i32> %29 to <8 x i16>
  %i.ibd = shufflevector <8 x i16> %i.ibc, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ibe = bitcast <8 x i16> %i.ibd to <4 x float>
  %i.ibf = shufflevector <4 x float> %i.ibe, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ibg = bitcast <4 x float> %i.ibf to <2 x i64>
  %i.ibh = extractelement <2 x i64> %i.ibg, i64 0
  store i64 %i.ibh, ptr %.01641.i.i, align 1, !tbaa !60
  %i.ibi = getelementptr inbounds nuw i8, ptr %.01442.i.i, i64 8 ; 2 uses
  %i.ibj = getelementptr inbounds nuw i8, ptr %.01641.i.i, i64 8 ; 2 uses
  %i.ibk = add nuw nsw i32 %.043.i.i, 4           ; 2 uses
  %i.ibl = or disjoint i32 %i.ibk, 3
  %i.ibm = icmp slt i32 %i.ibl, %i.hdg
  br i1 %i.ibm, label %bb.im, label %.preheader.loopexit.i54.i768, !llvm.loop !586

.lr.ph49.i.i:                                     ; preds = %.lr.ph49.i.i.prol.loopexit, %.lr.ph49.i.i
  %.148.i.i = phi i32 [ %i.ich, %.lr.ph49.i.i ], [ %.148.i.i.unr, %.lr.ph49.i.i.prol.loopexit ]
  %.11547.i.i = phi ptr [ %i.ibx, %.lr.ph49.i.i ], [ %.11547.i.i.unr, %.lr.ph49.i.i.prol.loopexit ] ; 3 uses
  %.11746.i.i = phi ptr [ %i.icg, %.lr.ph49.i.i ], [ %.11746.i.i.unr, %.lr.ph49.i.i.prol.loopexit ] ; 3 uses
  %i.ibn = getelementptr inbounds nuw i8, ptr %.11547.i.i, i64 2
  %i.ibo = load i16, ptr %.11547.i.i, align 2, !tbaa !57
  %i.ibp = zext i16 %i.ibo to i32
  %i.ibq = shl nuw i32 %i.ibp, 16
  %i.ibr = bitcast i32 %i.ibq to float
  %i.ibs = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.hxe, float %i.ibr)
  %i.ibt = bitcast float %i.ibs to i32
  %i.ibu = lshr i32 %i.ibt, 16
  %i.ibv = trunc nuw i32 %i.ibu to i16
  %i.ibw = getelementptr inbounds nuw i8, ptr %.11746.i.i, i64 2
  store i16 %i.ibv, ptr %.11746.i.i, align 2, !tbaa !57
  %i.ibx = getelementptr inbounds nuw i8, ptr %.11547.i.i, i64 4
  %i.iby = load i16, ptr %i.ibn, align 2, !tbaa !57
  %i.ibz = zext i16 %i.iby to i32
  %i.ica = shl nuw i32 %i.ibz, 16
  %i.icb = bitcast i32 %i.ica to float
  %i.icc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.hxe, float %i.icb)
  %i.icd = bitcast float %i.icc to i32
  %i.ice = lshr i32 %i.icd, 16
  %i.icf = trunc nuw i32 %i.ice to i16
  %i.icg = getelementptr inbounds nuw i8, ptr %.11746.i.i, i64 4
  store i16 %i.icf, ptr %i.ibw, align 2, !tbaa !57
  %i.ich = add nuw nsw i32 %.148.i.i, 2           ; 2 uses
  %exitcond.not.i52.i.1 = icmp eq i32 %i.ich, %i.hdg
  br i1 %exitcond.not.i52.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph49.i.i, !llvm.loop !587

bb.in:                                            ; preds = %bb.ik
  %i.ici = icmp eq i32 %3, 1
  %i.icj = icmp eq i32 %.sroa.speculated.i762, 4
  %or.cond.i763 = and i1 %i.ici, %i.icj
  br i1 %or.cond.i763, label %.lr.ph.i55.i764, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph.i55.i764:                                  ; preds = %bb.in
  %i.ick = load i64, ptr %0, align 1, !tbaa !60
  %i.icl = insertelement <2 x i64> poison, i64 %i.ick, i64 0
  %i.icm = bitcast <2 x i64> %i.icl to <8 x i16>
  %i.icn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.icm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ico = bitcast <8 x i16> %i.icn to <4 x float> ; 3 uses
  %i.icp = fcmp fast oeq <4 x float> %i.ico, zeroinitializer ; 2 uses
  %i.icq = fcmp fast olt <4 x float> %i.ico, zeroinitializer
  %i.icr = bitcast <8 x i16> %i.icn to <4 x i32>
  %i.ics = and <4 x i32> %i.icr, splat (i32 -2147483648)
  %i.ict = or disjoint <4 x i32> %i.ics, splat (i32 1078530011)
  %i.icu = bitcast <4 x i32> %i.ict to <4 x float>
  %i.icv = fcmp fast uge <4 x float> %i.icu, zeroinitializer
  %i.icw = select <4 x i1> %i.icv, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.icx = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ico
  br label %bb.io

bb.io:                                            ; preds = %bb.io, %.lr.ph.i55.i764
  %.051.i.i = phi i32 [ 0, %.lr.ph.i55.i764 ], [ %i.ifd, %bb.io ]
  %.0850.i.i = phi ptr [ %1, %.lr.ph.i55.i764 ], [ %i.ifb, %bb.io ] ; 2 uses
  %.0949.i.i = phi ptr [ %2, %.lr.ph.i55.i764 ], [ %i.ifc, %bb.io ] ; 2 uses
  %i.icy = load i16, ptr %.0850.i.i, align 2, !tbaa !57
  %i.icz = zext i16 %i.icy to i32
  %i.ida = shl nuw i32 %i.icz, 16
  %i.idb = insertelement <4 x i32> poison, i32 %i.ida, i64 0
  %i.idc = bitcast <4 x i32> %i.idb to <4 x float>
  %i.idd = shufflevector <4 x float> %i.idc, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ide = fcmp fast oeq <4 x float> %i.idd, zeroinitializer ; 2 uses
  %.not48.i.i = or <4 x i1> %i.icp, %i.ide
  %i.idf = bitcast <4 x float> %i.idd to <4 x i32>
  %i.idg = and <4 x i32> %i.idf, splat (i32 -2147483648)
  %i.idh = fcmp fast olt <4 x float> %i.idd, zeroinitializer
  %i.idi = select <4 x i1> %i.idh, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.idj = select <4 x i1> %i.icq, <4 x float> %i.idi, <4 x float> zeroinitializer
  %i.idk = fmul fast <4 x float> %i.idd, %i.icx   ; 2 uses
  %i.idl = bitcast <4 x float> %i.idk to <4 x i32>
  %i.idm = and <4 x i32> %i.idl, splat (i32 -2147483648)
  %i.idn = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.idk) ; 3 uses
  %i.ido = fcmp fast ogt <4 x float> %i.idn, splat (float 1.000000e+00) ; 2 uses
  %i.idp = select <4 x i1> %i.ido, <4 x float> splat (float -1.000000e+00), <4 x float> %i.idn
  %i.idq = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.idn, <4 x float> splat (float 1.000000e+00))
  %i.idr = fdiv fast <4 x float> %i.idp, %i.idq   ; 3 uses
  %i.ids = fmul fast <4 x float> %i.idr, %i.idr   ; 3 uses
  %i.idt = fmul fast <4 x float> %i.ids, %i.ids   ; 7 uses
  %i.idu = fmul fast <4 x float> %i.idt, splat (float f0x3C83A25C)
  %i.idv = fsub fast <4 x float> splat (float f0xBD99B01E), %i.idu
  %i.idw = fmul fast <4 x float> %i.idv, %i.idt
  %i.idx = fadd fast <4 x float> %i.idw, splat (float f0xBE117200)
  %i.idy = fmul fast <4 x float> %i.idx, %i.idt
  %i.idz = fadd fast <4 x float> %i.idy, splat (float f0xBEAAAA53)
  %i.iea = fmul fast <4 x float> %i.idt, splat (float f0x3B3AC537)
  %i.ieb = fadd fast <4 x float> %i.iea, splat (float f0x3D2EDD4E)
  %i.iec = fmul fast <4 x float> %i.ieb, %i.idt
  %i.ied = fadd fast <4 x float> %i.iec, splat (float f0x3DD9ED24)
  %i.iee = fmul fast <4 x float> %i.ied, %i.idt
  %i.ief = fadd fast <4 x float> %i.iee, splat (float f0x3E4CB974)
  %i.ieg = fmul fast <4 x float> %i.ief, %i.idt
  %i.ieh = fadd fast <4 x float> %i.ieg, splat (float 1.000000e+00)
  %i.iei = fmul fast <4 x float> %i.idz, %i.ids
  %i.iej = fadd fast <4 x float> %i.ieh, %i.iei
  %i.iek = fmul fast <4 x float> %i.iej, %i.idr
  %i.iel = select <4 x i1> %i.ido, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.iem = fadd fast <4 x float> %i.iek, %i.iel
  %i.ien = bitcast <4 x float> %i.iem to <4 x i32>
  %i.ieo = or <4 x i32> %i.idm, %i.ien
  %i.iep = bitcast <4 x i32> %i.ieo to <4 x float>
  %i.ieq = fadd fast <4 x float> %i.idj, %i.iep
  %i.ier = or disjoint <4 x i32> %i.idg, splat (i32 1070141403)
  %i.ies = bitcast <4 x float> %i.ieq to <4 x i32>
  %30 = select <4 x i1> %.not48.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.ies
  %i.iet = select <4 x i1> %i.icp, <4 x i32> %i.ier, <4 x i32> zeroinitializer
  %i.ieu = select <4 x i1> %i.ide, <4 x i32> %i.icw, <4 x i32> %i.iet
  %31 = or <4 x i32> %30, %i.ieu
  %i.iev = bitcast <4 x i32> %31 to <8 x i16>
  %i.iew = shufflevector <8 x i16> %i.iev, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.iex = bitcast <8 x i16> %i.iew to <4 x float>
  %i.iey = shufflevector <4 x float> %i.iex, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.iez = bitcast <4 x float> %i.iey to <2 x i64>
  %i.ifa = extractelement <2 x i64> %i.iez, i64 0
  store i64 %i.ifa, ptr %.0949.i.i, align 1, !tbaa !60
  %i.ifb = getelementptr inbounds nuw i8, ptr %.0850.i.i, i64 2
  %i.ifc = getelementptr inbounds nuw i8, ptr %.0949.i.i, i64 8
  %i.ifd = add nuw nsw i32 %.051.i.i, 1           ; 2 uses
  %exitcond.not.i56.i765 = icmp eq i32 %i.ifd, %.sroa.speculated67.i
  br i1 %exitcond.not.i56.i765, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.io, !llvm.loop !588

bb.ip:                                            ; preds = %bb.a
  %.sroa.speculated75.i821 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 4 uses
  %.sroa.speculated.i822 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 5 uses
  %i.ife = mul i32 %.sroa.speculated.i822, %.sroa.speculated75.i821 ; 30 uses
  %i.iff = icmp eq i32 %5, %6
  br i1 %i.iff, label %bb.iq, label %bb.jc

bb.iq:                                            ; preds = %bb.ip
  %i.ifg = icmp eq i32 %3, %4
  br i1 %i.ifg, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.ifh = icmp sgt i32 %i.ife, 3
  br i1 %i.ifh, label %.lr.ph.i.i859, label %.preheader.i.i853

.preheader.loopexit.i.i860:                       ; preds = %.lr.ph.i.i859
  %i.ifi = and i32 %i.ife, 2147483644
  br label %.preheader.i.i853

.preheader.i.i853:                                ; preds = %.preheader.loopexit.i.i860, %bb.ir
  %.018.lcssa.i.i854 = phi ptr [ %1, %bb.ir ], [ %i.ihe, %.preheader.loopexit.i.i860 ] ; 5 uses
  %.016.lcssa.i.i855 = phi ptr [ %2, %bb.ir ], [ %i.ihf, %.preheader.loopexit.i.i860 ] ; 5 uses
  %.014.lcssa.i.i856 = phi ptr [ %0, %bb.ir ], [ %i.ihd, %.preheader.loopexit.i.i860 ] ; 5 uses
  %.0.lcssa.i.i857 = phi i32 [ 0, %bb.ir ], [ %i.ifi, %.preheader.loopexit.i.i860 ] ; 5 uses
  %.016.lcssa.i.i8552863 = ptrtoaddr ptr %.016.lcssa.i.i855 to i64 ; 2 uses
  %.014.lcssa.i.i8562864 = ptrtoaddr ptr %.014.lcssa.i.i856 to i64
  %.018.lcssa.i.i8542866 = ptrtoaddr ptr %.018.lcssa.i.i854 to i64
  %i.ifj = icmp slt i32 %.0.lcssa.i.i857, %i.ife
  br i1 %i.ifj, label %.lr.ph40.i.i.preheader, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph40.i.i.preheader:                           ; preds = %.preheader.i.i853
  %i.ifk = xor i32 %.0.lcssa.i.i857, -1
  %i.ifl = add i32 %i.ife, %i.ifk                 ; 2 uses
  %i.ifm = zext i32 %i.ifl to i64
  %i.ifn = add nuw nsw i64 %i.ifm, 1              ; 2 uses
  %min.iters.check2870 = icmp ult i32 %i.ifl, 7
  br i1 %min.iters.check2870, label %.lr.ph40.i.i.preheader4219, label %vector.memcheck2862

vector.memcheck2862:                              ; preds = %.lr.ph40.i.i.preheader
  %i.ifo = sub i64 %.014.lcssa.i.i8562864, %.016.lcssa.i.i8552863
  %diff.check2865 = icmp ugt i64 %i.ifo, -16
  %i.ifp = sub i64 %.018.lcssa.i.i8542866, %.016.lcssa.i.i8552863
  %diff.check2867 = icmp ugt i64 %i.ifp, -16
  %conflict.rdx2868 = or i1 %diff.check2865, %diff.check2867
  br i1 %conflict.rdx2868, label %.lr.ph40.i.i.preheader4219, label %vector.ph2871

vector.ph2871:                                    ; preds = %vector.memcheck2862
  %n.vec2872 = and i64 %i.ifn, 8589934584         ; 4 uses
  %i.ifq = trunc i64 %n.vec2872 to i32
  %i.ifr = add i32 %.0.lcssa.i.i857, %i.ifq
  %i.ifs = shl nuw nsw i64 %n.vec2872, 1          ; 3 uses
  %i.ift = getelementptr i8, ptr %.014.lcssa.i.i856, i64 %i.ifs
  %i.ifu = getelementptr i8, ptr %.016.lcssa.i.i855, i64 %i.ifs
  %i.ifv = getelementptr i8, ptr %.018.lcssa.i.i854, i64 %i.ifs
  br label %vector.body2873

vector.body2873:                                  ; preds = %vector.body2873, %vector.ph2871
  %index2874 = phi i64 [ 0, %vector.ph2871 ], [ %index.next2880, %vector.body2873 ] ; 2 uses
  %i.ifw = shl i64 %index2874, 1                  ; 3 uses
  %next.gep2875 = getelementptr i8, ptr %.014.lcssa.i.i856, i64 %i.ifw
  %next.gep2876 = getelementptr i8, ptr %.016.lcssa.i.i855, i64 %i.ifw
  %next.gep2877 = getelementptr i8, ptr %.018.lcssa.i.i854, i64 %i.ifw
  %wide.load2878 = load <8 x i16>, ptr %next.gep2875, align 2, !tbaa !57
  %i.ifx = zext <8 x i16> %wide.load2878 to <8 x i32>
  %i.ify = shl nuw <8 x i32> %i.ifx, splat (i32 16)
  %i.ifz = bitcast <8 x i32> %i.ify to <8 x float>
  %wide.load2879 = load <8 x i16>, ptr %next.gep2877, align 2, !tbaa !57
  %i.iga = zext <8 x i16> %wide.load2879 to <8 x i32>
  %i.igb = shl nuw <8 x i32> %i.iga, splat (i32 16)
  %i.igc = bitcast <8 x i32> %i.igb to <8 x float>
  %i.igd = frem fast <8 x float> %i.ifz, %i.igc
  %i.ige = bitcast <8 x float> %i.igd to <8 x i32>
  %i.igf = lshr <8 x i32> %i.ige, splat (i32 16)
  %i.igg = trunc nuw <8 x i32> %i.igf to <8 x i16>
  store <8 x i16> %i.igg, ptr %next.gep2876, align 2, !tbaa !57
  %index.next2880 = add nuw i64 %index2874, 8     ; 2 uses
  %i.igh = icmp eq i64 %index.next2880, %n.vec2872
  br i1 %i.igh, label %middle.block2881, label %vector.body2873, !llvm.loop !589

middle.block2881:                                 ; preds = %vector.body2873
  %cmp.n2882 = icmp eq i64 %i.ifn, %n.vec2872
  br i1 %cmp.n2882, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph40.i.i.preheader4219

.lr.ph40.i.i.preheader4219:                       ; preds = %vector.memcheck2862, %.lr.ph40.i.i.preheader, %middle.block2881
  %.139.i.i.ph = phi i32 [ %.0.lcssa.i.i857, %vector.memcheck2862 ], [ %.0.lcssa.i.i857, %.lr.ph40.i.i.preheader ], [ %i.ifr, %middle.block2881 ]
  %.11538.i.i.ph = phi ptr [ %.014.lcssa.i.i856, %vector.memcheck2862 ], [ %.014.lcssa.i.i856, %.lr.ph40.i.i.preheader ], [ %i.ift, %middle.block2881 ]
  %.11737.i.i.ph = phi ptr [ %.016.lcssa.i.i855, %vector.memcheck2862 ], [ %.016.lcssa.i.i855, %.lr.ph40.i.i.preheader ], [ %i.ifu, %middle.block2881 ]
  %.11936.i.i.ph = phi ptr [ %.018.lcssa.i.i854, %vector.memcheck2862 ], [ %.018.lcssa.i.i854, %.lr.ph40.i.i.preheader ], [ %i.ifv, %middle.block2881 ]
  br label %.lr.ph40.i.i

.lr.ph.i.i859:                                    ; preds = %bb.ir, %.lr.ph.i.i859
  %.032.i.i = phi i32 [ %i.ihg, %.lr.ph.i.i859 ], [ 0, %bb.ir ]
  %.01431.i.i = phi ptr [ %i.ihd, %.lr.ph.i.i859 ], [ %0, %bb.ir ] ; 2 uses
  %.01630.i.i = phi ptr [ %i.ihf, %.lr.ph.i.i859 ], [ %2, %bb.ir ] ; 2 uses
  %.01829.i.i = phi ptr [ %i.ihe, %.lr.ph.i.i859 ], [ %1, %bb.ir ] ; 2 uses
  %i.igi = load i64, ptr %.01431.i.i, align 1, !tbaa !60
  %i.igj = insertelement <2 x i64> poison, i64 %i.igi, i64 0
  %i.igk = bitcast <2 x i64> %i.igj to <8 x i16>
  %i.igl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.igk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.igm = bitcast <8 x i16> %i.igl to <4 x float> ; 2 uses
  %i.ign = load i64, ptr %.01829.i.i, align 1, !tbaa !60
  %i.igo = insertelement <2 x i64> poison, i64 %i.ign, i64 0
  %i.igp = bitcast <2 x i64> %i.igo to <8 x i16>
  %i.igq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.igp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.igr = bitcast <8 x i16> %i.igq to <4 x float> ; 2 uses
  %i.igs = fdiv fast <4 x float> %i.igm, %i.igr
  %i.igt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.igs)
  %i.igu = sitofp fast <4 x i32> %i.igt to <4 x float>
  %i.igv = fmul fast <4 x float> %i.igr, %i.igu
  %i.igw = fsub fast <4 x float> %i.igm, %i.igv
  %i.igx = bitcast <4 x float> %i.igw to <8 x i16>
  %i.igy = shufflevector <8 x i16> %i.igx, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.igz = bitcast <8 x i16> %i.igy to <4 x float>
  %i.iha = shufflevector <4 x float> %i.igz, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ihb = bitcast <4 x float> %i.iha to <2 x i64>
  %i.ihc = extractelement <2 x i64> %i.ihb, i64 0
  store i64 %i.ihc, ptr %.01630.i.i, align 1, !tbaa !60
  %i.ihd = getelementptr inbounds nuw i8, ptr %.01431.i.i, i64 8 ; 2 uses
  %i.ihe = getelementptr inbounds nuw i8, ptr %.01829.i.i, i64 8 ; 2 uses
  %i.ihf = getelementptr inbounds nuw i8, ptr %.01630.i.i, i64 8 ; 2 uses
  %i.ihg = add nuw nsw i32 %.032.i.i, 4           ; 2 uses
  %i.ihh = or disjoint i32 %i.ihg, 3
  %i.ihi = icmp slt i32 %i.ihh, %i.ife
  br i1 %i.ihi, label %.lr.ph.i.i859, label %.preheader.loopexit.i.i860, !llvm.loop !590

.lr.ph40.i.i:                                     ; preds = %.lr.ph40.i.i.preheader4219, %.lr.ph40.i.i
  %.139.i.i = phi i32 [ %i.ihy, %.lr.ph40.i.i ], [ %.139.i.i.ph, %.lr.ph40.i.i.preheader4219 ]
  %.11538.i.i = phi ptr [ %i.ihj, %.lr.ph40.i.i ], [ %.11538.i.i.ph, %.lr.ph40.i.i.preheader4219 ] ; 2 uses
  %.11737.i.i = phi ptr [ %i.ihx, %.lr.ph40.i.i ], [ %.11737.i.i.ph, %.lr.ph40.i.i.preheader4219 ] ; 2 uses
  %.11936.i.i = phi ptr [ %i.iho, %.lr.ph40.i.i ], [ %.11936.i.i.ph, %.lr.ph40.i.i.preheader4219 ] ; 2 uses
  %i.ihj = getelementptr inbounds nuw i8, ptr %.11538.i.i, i64 2
  %i.ihk = load i16, ptr %.11538.i.i, align 2, !tbaa !57
  %i.ihl = zext i16 %i.ihk to i32
  %i.ihm = shl nuw i32 %i.ihl, 16
  %i.ihn = bitcast i32 %i.ihm to float
  %i.iho = getelementptr inbounds nuw i8, ptr %.11936.i.i, i64 2
  %i.ihp = load i16, ptr %.11936.i.i, align 2, !tbaa !57
  %i.ihq = zext i16 %i.ihp to i32
  %i.ihr = shl nuw i32 %i.ihq, 16
  %i.ihs = bitcast i32 %i.ihr to float
  %i.iht = frem fast float %i.ihn, %i.ihs
  %i.ihu = bitcast float %i.iht to i32
  %i.ihv = lshr i32 %i.ihu, 16
  %i.ihw = trunc nuw i32 %i.ihv to i16
  %i.ihx = getelementptr inbounds nuw i8, ptr %.11737.i.i, i64 2
  store i16 %i.ihw, ptr %.11737.i.i, align 2, !tbaa !57
  %i.ihy = add nuw nsw i32 %.139.i.i, 1           ; 2 uses
  %exitcond.not.i.i858 = icmp eq i32 %i.ihy, %i.ife
  br i1 %exitcond.not.i.i858, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph40.i.i, !llvm.loop !591

bb.is:                                            ; preds = %bb.iq
  %i.ihz = icmp eq i32 %4, 1
  br i1 %i.ihz, label %bb.it, label %bb.ix

bb.it:                                            ; preds = %bb.is
  %i.iia = load i16, ptr %1, align 2, !tbaa !57
  %i.iib = zext i16 %i.iia to i32
  %i.iic = shl nuw i32 %i.iib, 16
  %i.iid = bitcast i32 %i.iic to float            ; 5 uses
  %i.iie = icmp eq i32 %.sroa.speculated.i822, 4
  br i1 %i.iie, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.iif = load i64, ptr %1, align 2, !tbaa !60
  %i.iig = insertelement <2 x i64> poison, i64 %i.iif, i64 0
  %i.iih = bitcast <2 x i64> %i.iig to <8 x i16>
  %i.iii = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.iih, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iij = bitcast <8 x i16> %i.iii to <4 x float>
  br label %bb.iw

bb.iv:                                            ; preds = %bb.it
  %i.iik = insertelement <4 x float> poison, float %i.iid, i64 0
  %i.iil = shufflevector <4 x float> %i.iik, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %i.iim = phi fast <4 x float> [ %i.iij, %bb.iu ], [ %i.iil, %bb.iv ] ; 2 uses
  %i.iin = icmp sgt i32 %i.ife, 3
  br i1 %i.iin, label %.lr.ph.i37.i851.preheader, label %.preheader.i34.i843

.lr.ph.i37.i851.preheader:                        ; preds = %bb.iw
  %i.iio = fdiv fast <4 x float> splat (float 1.000000e+00), %i.iim
  br label %.lr.ph.i37.i851

.preheader.loopexit.i38.i852:                     ; preds = %.lr.ph.i37.i851
  %i.iip = and i32 %i.ife, 2147483644
  br label %.preheader.i34.i843

end_hunk_1
