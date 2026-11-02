Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rotaryembed_x86_avx512?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.omp_outlined:bb.a
  %i.oi = mul i64 %i.og, %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.oi ; 2 uses
  %i.ok = load ptr, ptr %8, align 8, !tbaa !25
  %i.ol = load i32, ptr %i.t, align 4, !tbaa !20
  %i.om = sext i32 %i.ol to i64
  %i.on = mul nsw i64 %indvars.iv, %i.om
  %i.oo = load i64, ptr %i.u, align 8, !tbaa !19
  %i.op = mul i64 %i.on, %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.op ; 2 uses
  %i.or = mul i64 %i.as, %indvars.iv
  %i.os = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.or ; 3 uses
  %i.ot = getelementptr inbounds [2 x i8], ptr %i.os, i64 %i.ob ; 2 uses
  %i.ou = icmp sgt i32 %i.nz, 31
  br i1 %i.ou, label %.lr.ph475, label %.preheader412

.preheader412:                                    ; preds = %.lr.ph475, %bb.e
  %.pre-phi = phi i32 [ %i.oa, %bb.e ], [ %i.rj, %.lr.ph475 ] ; 2 uses
  %.0268.lcssa = phi ptr [ %i.aw, %bb.e ], [ %i.ra, %.lr.ph475 ] ; 2 uses
  %.0264.lcssa = phi ptr [ %i.oc, %bb.e ], [ %i.rb, %.lr.ph475 ] ; 2 uses
  %.0260.lcssa = phi ptr [ %i.oj, %bb.e ], [ %i.rc, %.lr.ph475 ] ; 2 uses
  %.0256.lcssa = phi ptr [ %i.oq, %bb.e ], [ %i.rd, %.lr.ph475 ] ; 2 uses
  %.0252.lcssa = phi ptr [ %i.os, %bb.e ], [ %i.re, %.lr.ph475 ] ; 2 uses
  %.0248.lcssa = phi ptr [ %i.ot, %bb.e ], [ %i.rf, %.lr.ph475 ] ; 2 uses
  %.0247.lcssa = phi i32 [ 0, %bb.e ], [ %i.rg, %.lr.ph475 ] ; 3 uses
  %i.ov = or disjoint i32 %.0247.lcssa, 7
  %i.ow = icmp slt i32 %i.ov, %.pre-phi
  br i1 %i.ow, label %.lr.ph490, label %.preheader411

.lr.ph475:                                        ; preds = %bb.e, %.lr.ph475
  %.0247474 = phi i32 [ %i.rg, %.lr.ph475 ], [ 0, %bb.e ]
  %.0248473 = phi ptr [ %i.rf, %.lr.ph475 ], [ %i.ot, %bb.e ] ; 2 uses
  %.0252472 = phi ptr [ %i.re, %.lr.ph475 ], [ %i.os, %bb.e ] ; 2 uses
  %.0256471 = phi ptr [ %i.rd, %.lr.ph475 ], [ %i.oq, %bb.e ] ; 2 uses
  %.0260470 = phi ptr [ %i.rc, %.lr.ph475 ], [ %i.oj, %bb.e ] ; 2 uses
  %.0264469 = phi ptr [ %i.rb, %.lr.ph475 ], [ %i.oc, %bb.e ] ; 2 uses
  %.0268468 = phi ptr [ %i.ra, %.lr.ph475 ], [ %i.aw, %bb.e ] ; 2 uses
  %i.ox = load <16 x i16>, ptr %.0268468, align 1, !tbaa !42 ; 2 uses
  %i.oy = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ox, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.oz = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ox, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pa = shufflevector <16 x i16> %i.oy, <16 x i16> %i.oz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pb = shufflevector <16 x i16> %i.oy, <16 x i16> %i.oz, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pc = bitcast <16 x i16> %i.pa to <8 x i32>
  %i.pd = bitcast <16 x i16> %i.pb to <8 x i32>
  %i.pe = shufflevector <8 x i32> %i.pc, <8 x i32> %i.pd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pf = bitcast <16 x i32> %i.pe to <16 x float> ; 2 uses
  %i.pg = load <16 x i16>, ptr %.0264469, align 1, !tbaa !42 ; 2 uses
  %i.ph = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.pg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.pi = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.pg, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pj = shufflevector <16 x i16> %i.ph, <16 x i16> %i.pi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pk = shufflevector <16 x i16> %i.ph, <16 x i16> %i.pi, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pl = bitcast <16 x i16> %i.pj to <8 x i32>
  %i.pm = bitcast <16 x i16> %i.pk to <8 x i32>
  %i.pn = shufflevector <8 x i32> %i.pl, <8 x i32> %i.pm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.po = bitcast <16 x i32> %i.pn to <16 x float> ; 2 uses
  %i.pp = load <16 x i16>, ptr %.0260470, align 1, !tbaa !42 ; 2 uses
  %i.pq = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.pp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.pr = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.pp, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ps = shufflevector <16 x i16> %i.pq, <16 x i16> %i.pr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pt = shufflevector <16 x i16> %i.pq, <16 x i16> %i.pr, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pu = bitcast <16 x i16> %i.ps to <8 x i32>
  %i.pv = bitcast <16 x i16> %i.pt to <8 x i32>
  %i.pw = shufflevector <8 x i32> %i.pu, <8 x i32> %i.pv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.px = bitcast <16 x i32> %i.pw to <16 x float> ; 2 uses
  %i.py = load <16 x i16>, ptr %.0256471, align 1, !tbaa !42 ; 2 uses
  %i.pz = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.py, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.qa = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.py, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.qb = shufflevector <16 x i16> %i.pz, <16 x i16> %i.qa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.qc = shufflevector <16 x i16> %i.pz, <16 x i16> %i.qa, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.qd = bitcast <16 x i16> %i.qb to <8 x i32>
  %i.qe = bitcast <16 x i16> %i.qc to <8 x i32>
  %i.qf = shufflevector <8 x i32> %i.qd, <8 x i32> %i.qe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qg = bitcast <16 x i32> %i.qf to <16 x float> ; 2 uses
  %i.qh = fmul fast <16 x float> %i.px, %i.pf
  %i.qi = fneg fast <16 x float> %i.po
  %i.qj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.qi, <16 x float> nofpclass(nan inf) %i.qg, <16 x float> nofpclass(nan inf) %i.qh)
  %i.qk = fmul fast <16 x float> %i.px, %i.po
  %i.ql = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pf, <16 x float> nofpclass(nan inf) %i.qg, <16 x float> nofpclass(nan inf) %i.qk)
  %i.qm = bitcast <16 x float> %i.qj to <16 x i32>
  %i.qn = lshr <16 x i32> %i.qm, splat (i32 16)   ; 2 uses
  %i.qo = shufflevector <16 x i32> %i.qn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qp = shufflevector <16 x i32> %i.qn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qq = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.qo, <8 x i32> %i.qp)
  %i.qr = bitcast <16 x i16> %i.qq to <4 x i64>
  %i.qs = shufflevector <4 x i64> %i.qr, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.qs, ptr %.0252472, align 1, !tbaa !42
  %i.qt = bitcast <16 x float> %i.ql to <16 x i32>
  %i.qu = lshr <16 x i32> %i.qt, splat (i32 16)   ; 2 uses
  %i.qv = shufflevector <16 x i32> %i.qu, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qw = shufflevector <16 x i32> %i.qu, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qx = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.qv, <8 x i32> %i.qw)
  %i.qy = bitcast <16 x i16> %i.qx to <4 x i64>
  %i.qz = shufflevector <4 x i64> %i.qy, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.qz, ptr %.0248473, align 1, !tbaa !42
  %i.ra = getelementptr inbounds nuw i8, ptr %.0268468, i64 32 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.0264469, i64 32 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.0260470, i64 32 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.0256471, i64 32 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.0252472, i64 32 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.0248473, i64 32 ; 2 uses
  %i.rg = add nuw nsw i32 %.0247474, 16           ; 3 uses
  %i.rh = or disjoint i32 %i.rg, 15
  %i.ri = load i32, ptr %9, align 4, !tbaa !21
  %i.rj = sdiv i32 %i.ri, 2                       ; 2 uses
  %i.rk = icmp slt i32 %i.rh, %i.rj
  br i1 %i.rk, label %.lr.ph475, label %.preheader412, !llvm.loop !106

.preheader411:                                    ; preds = %.lr.ph490, %.preheader412
  %.pre-phi577 = phi i32 [ %.pre-phi, %.preheader412 ], [ %i.tf, %.lr.ph490 ] ; 2 uses
  %.1269.lcssa = phi ptr [ %.0268.lcssa, %.preheader412 ], [ %i.sw, %.lr.ph490 ] ; 2 uses
  %.1265.lcssa = phi ptr [ %.0264.lcssa, %.preheader412 ], [ %i.sx, %.lr.ph490 ] ; 2 uses
  %.1261.lcssa = phi ptr [ %.0260.lcssa, %.preheader412 ], [ %i.sy, %.lr.ph490 ] ; 2 uses
  %.1257.lcssa = phi ptr [ %.0256.lcssa, %.preheader412 ], [ %i.sz, %.lr.ph490 ] ; 2 uses
  %.1253.lcssa = phi ptr [ %.0252.lcssa, %.preheader412 ], [ %i.ta, %.lr.ph490 ] ; 2 uses
  %.1249.lcssa = phi ptr [ %.0248.lcssa, %.preheader412 ], [ %i.tb, %.lr.ph490 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0247.lcssa, %.preheader412 ], [ %i.tc, %.lr.ph490 ] ; 3 uses
  %i.rl = or disjoint i32 %.1.lcssa, 3
  %i.rm = icmp slt i32 %i.rl, %.pre-phi577
  br i1 %i.rm, label %.lr.ph505, label %.preheader

.lr.ph490:                                        ; preds = %.preheader412, %.lr.ph490
  %.1489 = phi i32 [ %i.tc, %.lr.ph490 ], [ %.0247.lcssa, %.preheader412 ]
  %.1249488 = phi ptr [ %i.tb, %.lr.ph490 ], [ %.0248.lcssa, %.preheader412 ] ; 2 uses
  %.1253487 = phi ptr [ %i.ta, %.lr.ph490 ], [ %.0252.lcssa, %.preheader412 ] ; 2 uses
  %.1257486 = phi ptr [ %i.sz, %.lr.ph490 ], [ %.0256.lcssa, %.preheader412 ] ; 2 uses
  %.1261485 = phi ptr [ %i.sy, %.lr.ph490 ], [ %.0260.lcssa, %.preheader412 ] ; 2 uses
  %.1265484 = phi ptr [ %i.sx, %.lr.ph490 ], [ %.0264.lcssa, %.preheader412 ] ; 2 uses
  %.1269483 = phi ptr [ %i.sw, %.lr.ph490 ], [ %.0268.lcssa, %.preheader412 ] ; 2 uses
  %i.rn = load <8 x i16>, ptr %.1269483, align 1, !tbaa !42 ; 2 uses
  %i.ro = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rq = shufflevector <8 x i16> %i.ro, <8 x i16> %i.rp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rr = bitcast <16 x i16> %i.rq to <8 x float> ; 2 uses
  %i.rs = load <8 x i16>, ptr %.1265484, align 1, !tbaa !42 ; 2 uses
  %i.rt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ru = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rv = shufflevector <8 x i16> %i.rt, <8 x i16> %i.ru, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rw = bitcast <16 x i16> %i.rv to <8 x float> ; 2 uses
  %i.rx = load <8 x i16>, ptr %.1261485, align 1, !tbaa !42 ; 2 uses
  %i.ry = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sa = shufflevector <8 x i16> %i.ry, <8 x i16> %i.rz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sb = bitcast <16 x i16> %i.sa to <8 x float> ; 2 uses
  %i.sc = load <8 x i16>, ptr %.1257486, align 1, !tbaa !42 ; 2 uses
  %i.sd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.se = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.sc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sf = shufflevector <8 x i16> %i.sd, <8 x i16> %i.se, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sg = bitcast <16 x i16> %i.sf to <8 x float> ; 2 uses
  %i.sh = fmul fast <8 x float> %i.sb, %i.rr
  %i.si = fneg fast <8 x float> %i.rw
  %i.sj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.si, <8 x float> nofpclass(nan inf) %i.sg, <8 x float> nofpclass(nan inf) %i.sh)
  %i.sk = fmul fast <8 x float> %i.sb, %i.rw
  %i.sl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rr, <8 x float> nofpclass(nan inf) %i.sg, <8 x float> nofpclass(nan inf) %i.sk)
  %i.sm = bitcast <8 x float> %i.sj to <8 x i32>
  %i.sn = lshr <8 x i32> %i.sm, splat (i32 16)    ; 2 uses
  %i.so = shufflevector <8 x i32> %i.sn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sp = shufflevector <8 x i32> %i.sn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.sq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.so, <4 x i32> %i.sp)
  store <8 x i16> %i.sq, ptr %.1253487, align 1, !tbaa !42
  %i.sr = bitcast <8 x float> %i.sl to <8 x i32>
  %i.ss = lshr <8 x i32> %i.sr, splat (i32 16)    ; 2 uses
  %i.st = shufflevector <8 x i32> %i.ss, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.su = shufflevector <8 x i32> %i.ss, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.sv = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.st, <4 x i32> %i.su)
  store <8 x i16> %i.sv, ptr %.1249488, align 1, !tbaa !42
  %i.sw = getelementptr inbounds nuw i8, ptr %.1269483, i64 16 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.1265484, i64 16 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.1261485, i64 16 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.1257486, i64 16 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.1253487, i64 16 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.1249488, i64 16 ; 2 uses
  %i.tc = add nuw nsw i32 %.1489, 8               ; 3 uses
  %i.td = or disjoint i32 %i.tc, 7
  %i.te = load i32, ptr %9, align 4, !tbaa !21
  %i.tf = sdiv i32 %i.te, 2                       ; 2 uses
  %i.tg = icmp slt i32 %i.td, %i.tf
  br i1 %i.tg, label %.lr.ph490, label %.preheader411, !llvm.loop !107

.preheader:                                       ; preds = %.lr.ph505, %.preheader411
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %.preheader411 ], [ %i.xk, %.lr.ph505 ] ; 7 uses
  %.2266.lcssa = phi ptr [ %.1265.lcssa, %.preheader411 ], [ %i.xl, %.lr.ph505 ] ; 7 uses
  %.2262.lcssa = phi ptr [ %.1261.lcssa, %.preheader411 ], [ %i.xm, %.lr.ph505 ] ; 7 uses
  %.2258.lcssa = phi ptr [ %.1257.lcssa, %.preheader411 ], [ %i.xn, %.lr.ph505 ] ; 7 uses
  %.2254.lcssa = phi ptr [ %.1253.lcssa, %.preheader411 ], [ %i.xo, %.lr.ph505 ] ; 7 uses
  %.2250.lcssa = phi ptr [ %.1249.lcssa, %.preheader411 ], [ %i.xp, %.lr.ph505 ] ; 7 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader411 ], [ %i.xq, %.lr.ph505 ] ; 6 uses
  %.lcssa418 = phi i32 [ %.pre-phi577, %.preheader411 ], [ %i.xt, %.lr.ph505 ] ; 3 uses
  %.2258.lcssa715 = ptrtoaddr ptr %.2258.lcssa to i64 ; 2 uses
  %.2262.lcssa716 = ptrtoaddr ptr %.2262.lcssa to i64 ; 2 uses
  %.2270.lcssa717 = ptrtoaddr ptr %.2270.lcssa to i64 ; 2 uses
  %.2266.lcssa718 = ptrtoaddr ptr %.2266.lcssa to i64 ; 2 uses
  %.2254.lcssa719 = ptrtoaddr ptr %.2254.lcssa to i64 ; 2 uses
  %.2250.lcssa720 = ptrtoaddr ptr %.2250.lcssa to i64 ; 5 uses
  %i.th = icmp slt i32 %.2.lcssa, %.lcssa418
  br i1 %i.th, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ti = xor i32 %.2.lcssa, -1
  %i.tj = add i32 %.lcssa418, %i.ti               ; 3 uses
  %i.tk = zext i32 %i.tj to i64
  %i.tl = add nuw nsw i64 %i.tk, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.tj, 7
  br i1 %min.iters.check, label %.lr.ph521.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.tm = sub i64 %.2254.lcssa719, %.2250.lcssa720
  %i.tn = insertelement <8 x i64> poison, i64 %.2266.lcssa718, i64 0
  %i.to = insertelement <8 x i64> %i.tn, i64 %.2270.lcssa717, i64 1
  %i.tp = insertelement <8 x i64> %i.to, i64 %.2262.lcssa716, i64 2
  %i.tq = insertelement <8 x i64> %i.tp, i64 %.2258.lcssa715, i64 3
  %i.tr = insertelement <4 x i64> poison, i64 %.2254.lcssa719, i64 0
  %i.ts = sub i64 %.2266.lcssa718, %.2250.lcssa720
  %i.tt = sub i64 %.2270.lcssa717, %.2250.lcssa720
  %i.tu = sub i64 %.2262.lcssa716, %.2250.lcssa720
  %i.tv = insertelement <8 x i64> poison, i64 %i.tm, i64 0
  %i.tw = shufflevector <4 x i64> %i.tr, <4 x i64> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tx = sub <8 x i64> %i.tq, %i.tw
  %i.ty = shufflevector <8 x i64> %i.tv, <8 x i64> %i.tx, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.tz = insertelement <8 x i64> %i.ty, i64 %i.ts, i64 5
  %i.ua = insertelement <8 x i64> %i.tz, i64 %i.tt, i64 6
  %i.ub = insertelement <8 x i64> %i.ua, i64 %i.tu, i64 7
  %i.uc = icmp ugt <8 x i64> %i.ub, splat (i64 -64)
  %i.ud = sub i64 %.2258.lcssa715, %.2250.lcssa720
  %diff.check734 = icmp ugt i64 %i.ud, -64
  %i.ue = bitcast <8 x i1> %i.uc to i8
  %i.uf = icmp ne i8 %i.ue, 0
  %op.rdx = or i1 %i.uf, %diff.check734
  br i1 %op.rdx, label %.lr.ph521.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check736 = icmp ult i32 %i.tj, 31
  br i1 %min.iters.check736, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ug = and i64 %i.tl, 24
  %n.vec = and i64 %i.tl, 8589934560              ; 5 uses
  %i.uh = trunc i64 %n.vec to i32
  %i.ui = add i32 %.2.lcssa, %i.uh
  %i.uj = shl nuw nsw i64 %n.vec, 1               ; 6 uses
  %i.uk = getelementptr i8, ptr %.2250.lcssa, i64 %i.uj
  %i.ul = getelementptr i8, ptr %.2254.lcssa, i64 %i.uj
  %i.um = getelementptr i8, ptr %.2258.lcssa, i64 %i.uj
  %i.un = getelementptr i8, ptr %.2262.lcssa, i64 %i.uj
  %i.uo = getelementptr i8, ptr %.2266.lcssa, i64 %i.uj
  %i.up = getelementptr i8, ptr %.2270.lcssa, i64 %i.uj
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uq = shl i64 %index, 1                       ; 6 uses
  %next.gep = getelementptr i8, ptr %.2250.lcssa, i64 %i.uq
  %next.gep737 = getelementptr i8, ptr %.2254.lcssa, i64 %i.uq
  %next.gep738 = getelementptr i8, ptr %.2258.lcssa, i64 %i.uq
  %next.gep739 = getelementptr i8, ptr %.2262.lcssa, i64 %i.uq
  %next.gep740 = getelementptr i8, ptr %.2266.lcssa, i64 %i.uq
  %next.gep741 = getelementptr i8, ptr %.2270.lcssa, i64 %i.uq
  %wide.load = load <32 x i16>, ptr %next.gep741, align 2, !tbaa !116
  %i.ur = zext <32 x i16> %wide.load to <32 x i32>
  %i.us = shl nuw <32 x i32> %i.ur, splat (i32 16)
  %i.ut = bitcast <32 x i32> %i.us to <32 x float> ; 2 uses
  %wide.load742 = load <32 x i16>, ptr %next.gep740, align 2, !tbaa !116
  %i.uu = zext <32 x i16> %wide.load742 to <32 x i32>
  %i.uv = shl nuw <32 x i32> %i.uu, splat (i32 16)
  %i.uw = bitcast <32 x i32> %i.uv to <32 x float> ; 2 uses
  %wide.load743 = load <32 x i16>, ptr %next.gep739, align 2, !tbaa !116
  %i.ux = zext <32 x i16> %wide.load743 to <32 x i32>
  %i.uy = shl nuw <32 x i32> %i.ux, splat (i32 16)
  %i.uz = bitcast <32 x i32> %i.uy to <32 x float> ; 2 uses
  %wide.load744 = load <32 x i16>, ptr %next.gep738, align 2, !tbaa !116
  %i.va = zext <32 x i16> %wide.load744 to <32 x i32>
  %i.vb = shl nuw <32 x i32> %i.va, splat (i32 16)
  %i.vc = bitcast <32 x i32> %i.vb to <32 x float> ; 2 uses
  %i.vd = fmul fast <32 x float> %i.uz, %i.ut
  %i.ve = fmul fast <32 x float> %i.vc, %i.uw
  %i.vf = fsub fast <32 x float> %i.vd, %i.ve
  %i.vg = bitcast <32 x float> %i.vf to <32 x i32>
  %i.vh = lshr <32 x i32> %i.vg, splat (i32 16)
  %i.vi = trunc nuw <32 x i32> %i.vh to <32 x i16>
  store <32 x i16> %i.vi, ptr %next.gep737, align 2, !tbaa !116
  %i.vj = fmul fast <32 x float> %i.vc, %i.ut
  %i.vk = fmul fast <32 x float> %i.uz, %i.uw
  %i.vl = fadd fast <32 x float> %i.vj, %i.vk
  %i.vm = bitcast <32 x float> %i.vl to <32 x i32>
  %i.vn = lshr <32 x i32> %i.vm, splat (i32 16)
  %i.vo = trunc nuw <32 x i32> %i.vn to <32 x i16>
  store <32 x i16> %i.vo, ptr %next.gep, align 2, !tbaa !116
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.vp = icmp eq i64 %index.next, %n.vec
  br i1 %i.vp, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tl, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ug, 0
  br i1 %min.epilog.iters.check, label %.lr.ph521.preheader, label %vec.epilog.ph, !prof !122

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec745 = and i64 %i.tl, 8589934584           ; 4 uses
  %i.vq = trunc i64 %n.vec745 to i32
  %i.vr = add i32 %.2.lcssa, %i.vq
  %i.vs = shl nuw nsw i64 %n.vec745, 1            ; 6 uses
  %i.vt = getelementptr i8, ptr %.2250.lcssa, i64 %i.vs
  %i.vu = getelementptr i8, ptr %.2254.lcssa, i64 %i.vs
  %i.vv = getelementptr i8, ptr %.2258.lcssa, i64 %i.vs
  %i.vw = getelementptr i8, ptr %.2262.lcssa, i64 %i.vs
  %i.vx = getelementptr i8, ptr %.2266.lcssa, i64 %i.vs
  %i.vy = getelementptr i8, ptr %.2270.lcssa, i64 %i.vs
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index746 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next757, %vec.epilog.vector.body ] ; 2 uses
  %i.vz = shl i64 %index746, 1                    ; 6 uses
  %next.gep747 = getelementptr i8, ptr %.2250.lcssa, i64 %i.vz
  %next.gep748 = getelementptr i8, ptr %.2254.lcssa, i64 %i.vz
  %next.gep749 = getelementptr i8, ptr %.2258.lcssa, i64 %i.vz
  %next.gep750 = getelementptr i8, ptr %.2262.lcssa, i64 %i.vz
  %next.gep751 = getelementptr i8, ptr %.2266.lcssa, i64 %i.vz
  %next.gep752 = getelementptr i8, ptr %.2270.lcssa, i64 %i.vz
  %wide.load753 = load <8 x i16>, ptr %next.gep752, align 2, !tbaa !116
  %10 = zext <8 x i16> %wide.load753 to <8 x i32>
  %11 = shl nuw <8 x i32> %10, splat (i32 16)
  %12 = bitcast <8 x i32> %11 to <8 x float>      ; 2 uses
  %wide.load754 = load <8 x i16>, ptr %next.gep751, align 2, !tbaa !116
  %13 = zext <8 x i16> %wide.load754 to <8 x i32>
  %14 = shl nuw <8 x i32> %13, splat (i32 16)
  %15 = bitcast <8 x i32> %14 to <8 x float>      ; 2 uses
  %wide.load755 = load <8 x i16>, ptr %next.gep750, align 2, !tbaa !116
  %16 = zext <8 x i16> %wide.load755 to <8 x i32>
  %17 = shl nuw <8 x i32> %16, splat (i32 16)
  %18 = bitcast <8 x i32> %17 to <8 x float>      ; 2 uses
  %wide.load756 = load <8 x i16>, ptr %next.gep749, align 2, !tbaa !116
  %19 = zext <8 x i16> %wide.load756 to <8 x i32>
  %20 = shl nuw <8 x i32> %19, splat (i32 16)
  %21 = bitcast <8 x i32> %20 to <8 x float>      ; 2 uses
  %22 = fmul fast <8 x float> %18, %12
  %23 = fmul fast <8 x float> %21, %15
  %24 = fsub fast <8 x float> %22, %23
  %25 = bitcast <8 x float> %24 to <8 x i32>
  %26 = lshr <8 x i32> %25, splat (i32 16)
  %27 = trunc nuw <8 x i32> %26 to <8 x i16>
  store <8 x i16> %27, ptr %next.gep748, align 2, !tbaa !116
  %28 = fmul fast <8 x float> %21, %12
  %29 = fmul fast <8 x float> %18, %15
  %30 = fadd fast <8 x float> %28, %29
  %31 = bitcast <8 x float> %30 to <8 x i32>
  %32 = lshr <8 x i32> %31, splat (i32 16)
  %33 = trunc nuw <8 x i32> %32 to <8 x i16>
  store <8 x i16> %33, ptr %next.gep747, align 2, !tbaa !116
  %index.next757 = add nuw i64 %index746, 8       ; 2 uses
  %i.wa = icmp eq i64 %index.next757, %n.vec745
  br i1 %i.wa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !109

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n758 = icmp eq i64 %i.tl, %n.vec745
  br i1 %cmp.n758, label %.loopexit, label %.lr.ph521.preheader

.lr.ph521.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3520.ph = phi i32 [ %.2.lcssa, %iter.check ], [ %.2.lcssa, %vector.memcheck ], [ %i.ui, %vec.epilog.iter.check ], [ %i.vr, %vec.epilog.middle.block ]
  %.3251519.ph = phi ptr [ %.2250.lcssa, %iter.check ], [ %.2250.lcssa, %vector.memcheck ], [ %i.uk, %vec.epilog.iter.check ], [ %i.vt, %vec.epilog.middle.block ]
  %.3255518.ph = phi ptr [ %.2254.lcssa, %iter.check ], [ %.2254.lcssa, %vector.memcheck ], [ %i.ul, %vec.epilog.iter.check ], [ %i.vu, %vec.epilog.middle.block ]
  %.3259517.ph = phi ptr [ %.2258.lcssa, %iter.check ], [ %.2258.lcssa, %vector.memcheck ], [ %i.um, %vec.epilog.iter.check ], [ %i.vv, %vec.epilog.middle.block ]
  %.3263516.ph = phi ptr [ %.2262.lcssa, %iter.check ], [ %.2262.lcssa, %vector.memcheck ], [ %i.un, %vec.epilog.iter.check ], [ %i.vw, %vec.epilog.middle.block ]
  %.3267515.ph = phi ptr [ %.2266.lcssa, %iter.check ], [ %.2266.lcssa, %vector.memcheck ], [ %i.uo, %vec.epilog.iter.check ], [ %i.vx, %vec.epilog.middle.block ]
  %.3271514.ph = phi ptr [ %.2270.lcssa, %iter.check ], [ %.2270.lcssa, %vector.memcheck ], [ %i.up, %vec.epilog.iter.check ], [ %i.vy, %vec.epilog.middle.block ]
  br label %.lr.ph521

.lr.ph505:                                        ; preds = %.preheader411, %.lr.ph505
  %.2504 = phi i32 [ %i.xq, %.lr.ph505 ], [ %.1.lcssa, %.preheader411 ]
  %.2250503 = phi ptr [ %i.xp, %.lr.ph505 ], [ %.1249.lcssa, %.preheader411 ] ; 2 uses
  %.2254502 = phi ptr [ %i.xo, %.lr.ph505 ], [ %.1253.lcssa, %.preheader411 ] ; 2 uses
  %.2258501 = phi ptr [ %i.xn, %.lr.ph505 ], [ %.1257.lcssa, %.preheader411 ] ; 2 uses
  %.2262500 = phi ptr [ %i.xm, %.lr.ph505 ], [ %.1261.lcssa, %.preheader411 ] ; 2 uses
  %.2266499 = phi ptr [ %i.xl, %.lr.ph505 ], [ %.1265.lcssa, %.preheader411 ] ; 2 uses
  %.2270498 = phi ptr [ %i.xk, %.lr.ph505 ], [ %.1269.lcssa, %.preheader411 ] ; 2 uses
  %i.wb = load i64, ptr %.2270498, align 1, !tbaa !42
  %i.wc = insertelement <2 x i64> poison, i64 %i.wb, i64 0
  %i.wd = bitcast <2 x i64> %i.wc to <8 x i16>
  %i.we = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wf = bitcast <8 x i16> %i.we to <4 x float>  ; 2 uses
  %i.wg = load i64, ptr %.2266499, align 1, !tbaa !42
  %i.wh = insertelement <2 x i64> poison, i64 %i.wg, i64 0
  %i.wi = bitcast <2 x i64> %i.wh to <8 x i16>
  %i.wj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wk = bitcast <8 x i16> %i.wj to <4 x float>  ; 2 uses
  %i.wl = load i64, ptr %.2262500, align 1, !tbaa !42
  %i.wm = insertelement <2 x i64> poison, i64 %i.wl, i64 0
  %i.wn = bitcast <2 x i64> %i.wm to <8 x i16>
  %i.wo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wp = bitcast <8 x i16> %i.wo to <4 x float>  ; 2 uses
  %i.wq = load i64, ptr %.2258501, align 1, !tbaa !42
  %i.wr = insertelement <2 x i64> poison, i64 %i.wq, i64 0
  %i.ws = bitcast <2 x i64> %i.wr to <8 x i16>
  %i.wt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ws, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wu = bitcast <8 x i16> %i.wt to <4 x float>  ; 2 uses
  %i.wv = fmul fast <4 x float> %i.wp, %i.wf
  %i.ww = fneg fast <4 x float> %i.wk
  %i.wx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ww, <4 x float> nofpclass(nan inf) %i.wu, <4 x float> nofpclass(nan inf) %i.wv)
  %i.wy = fmul fast <4 x float> %i.wp, %i.wk
  %i.wz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wf, <4 x float> nofpclass(nan inf) %i.wu, <4 x float> nofpclass(nan inf) %i.wy)
  %i.xa = bitcast <4 x float> %i.wx to <4 x i32>
  %i.xb = lshr <4 x i32> %i.xa, splat (i32 16)
  %i.xc = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.xb, <4 x i32> poison)
  %i.xd = bitcast <8 x i16> %i.xc to <2 x i64>
  %i.xe = extractelement <2 x i64> %i.xd, i64 0
  store i64 %i.xe, ptr %.2254502, align 1, !tbaa !42
  %i.xf = bitcast <4 x float> %i.wz to <4 x i32>
  %i.xg = lshr <4 x i32> %i.xf, splat (i32 16)
  %i.xh = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.xg, <4 x i32> poison)
  %i.xi = bitcast <8 x i16> %i.xh to <2 x i64>
  %i.xj = extractelement <2 x i64> %i.xi, i64 0
  store i64 %i.xj, ptr %.2250503, align 1, !tbaa !42
  %i.xk = getelementptr inbounds nuw i8, ptr %.2270498, i64 8 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.2266499, i64 8 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.2262500, i64 8 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.2258501, i64 8 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.2254502, i64 8 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.2250503, i64 8 ; 2 uses
  %i.xq = add nuw nsw i32 %.2504, 4               ; 3 uses
  %i.xr = or disjoint i32 %i.xq, 3
  %i.xs = load i32, ptr %9, align 4, !tbaa !21
  %i.xt = sdiv i32 %i.xs, 2                       ; 2 uses
  %i.xu = icmp slt i32 %i.xr, %i.xt
  br i1 %i.xu, label %.lr.ph505, label %.preheader, !llvm.loop !110

.lr.ph521:                                        ; preds = %.lr.ph521.preheader, %.lr.ph521
  %.3520 = phi i32 [ %i.zd, %.lr.ph521 ], [ %.3520.ph, %.lr.ph521.preheader ]
  %.3251519 = phi ptr [ %i.zc, %.lr.ph521 ], [ %.3251519.ph, %.lr.ph521.preheader ] ; 2 uses
  %.3255518 = phi ptr [ %i.yv, %.lr.ph521 ], [ %.3255518.ph, %.lr.ph521.preheader ] ; 2 uses
  %.3259517 = phi ptr [ %i.yk, %.lr.ph521 ], [ %.3259517.ph, %.lr.ph521.preheader ] ; 2 uses
  %.3263516 = phi ptr [ %i.yf, %.lr.ph521 ], [ %.3263516.ph, %.lr.ph521.preheader ] ; 2 uses
  %.3267515 = phi ptr [ %i.ya, %.lr.ph521 ], [ %.3267515.ph, %.lr.ph521.preheader ] ; 2 uses
  %.3271514 = phi ptr [ %i.xv, %.lr.ph521 ], [ %.3271514.ph, %.lr.ph521.preheader ] ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.3271514, i64 2
  %i.xw = load i16, ptr %.3271514, align 2, !tbaa !116
  %i.xx = zext i16 %i.xw to i32
  %i.xy = shl nuw i32 %i.xx, 16
  %i.xz = bitcast i32 %i.xy to float              ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.3267515, i64 2
  %i.yb = load i16, ptr %.3267515, align 2, !tbaa !116
  %i.yc = zext i16 %i.yb to i32
  %i.yd = shl nuw i32 %i.yc, 16
  %i.ye = bitcast i32 %i.yd to float              ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.3263516, i64 2
  %i.yg = load i16, ptr %.3263516, align 2, !tbaa !116
  %i.yh = zext i16 %i.yg to i32
  %i.yi = shl nuw i32 %i.yh, 16
  %i.yj = bitcast i32 %i.yi to float              ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.3259517, i64 2
  %i.yl = load i16, ptr %.3259517, align 2, !tbaa !116
  %i.ym = zext i16 %i.yl to i32
  %i.yn = shl nuw i32 %i.ym, 16
  %i.yo = bitcast i32 %i.yn to float              ; 2 uses
  %i.yp = fmul fast float %i.yj, %i.xz
  %i.yq = fmul fast float %i.yo, %i.ye
  %i.yr = fsub fast float %i.yp, %i.yq
  %i.ys = bitcast float %i.yr to i32
  %i.yt = lshr i32 %i.ys, 16
  %i.yu = trunc nuw i32 %i.yt to i16
  %i.yv = getelementptr inbounds nuw i8, ptr %.3255518, i64 2
  store i16 %i.yu, ptr %.3255518, align 2, !tbaa !116
  %i.yw = fmul fast float %i.yo, %i.xz
  %i.yx = fmul fast float %i.yj, %i.ye
  %i.yy = fadd fast float %i.yw, %i.yx
  %i.yz = bitcast float %i.yy to i32
  %i.za = lshr i32 %i.yz, 16
  %i.zb = trunc nuw i32 %i.za to i16
  %i.zc = getelementptr inbounds nuw i8, ptr %.3251519, i64 2
  store i16 %i.zb, ptr %.3251519, align 2, !tbaa !116
  %i.zd = add nuw nsw i32 %.3520, 1               ; 2 uses
  %exitcond571.not = icmp eq i32 %i.zd, %.lcssa418
  br i1 %exitcond571.not, label %.loopexit, label %.lr.ph521, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph467, %.lr.ph521, %middle.block805, %vec.epilog.middle.block827, %middle.block, %vec.epilog.middle.block, %.preheader413, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ze = load i32, ptr %5, align 4, !tbaa !21    ; 2 uses
  %i.zf = sext i32 %i.ze to i64
  %i.zg = icmp slt i64 %indvars.iv.next, %i.zf
  br i1 %i.zg, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !112

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!12 = !{!"_ZTSN4ncnn6OptionE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !6, i64 4, !11, i64 8, !11, i64 16, !6, i64 24, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !6, i64 40, !9, i64 44, !9, i64 45, !9, i64 46, !9, i64 47, !5, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !9, i64 60, !9, i64 61, !9, i64 62, !9, i64 63}
!13 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !13, i64 0}
!16 = !{!"p1 int", !10, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !16, i64 8, !17, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !17, i64 64}
!19 = !{!18, !17, i64 16}
!20 = !{!18, !6, i64 44}
!21 = !{!6, !6, i64 0}
!22 = !{!18, !6, i64 48}
!23 = !{!18, !6, i64 56}
!24 = !{!12, !11, i64 8}
!25 = !{!18, !10, i64 0}
!26 = !{!18, !17, i64 64}
!27 = !{!12, !6, i64 4}
!28 = !{!"p1 omnipotent char", !10, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !17, i64 8, !5, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIiSaIiEE", !33, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !14, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!37 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !36, i64 0}
!38 = !{!"_ZTSN4ncnn5LayerE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !6, i64 28, !10, i64 32, !6, i64 40, !30, i64 48, !30, i64 80, !34, i64 112, !34, i64 136, !37, i64 160, !37, i64 184}
!39 = !{!"_ZTSN4ncnn11RotaryEmbedE", !38, i64 0, !6, i64 208}
!40 = !{!39, !6, i64 208}
!41 = !{!"llvm.loop.unswitch.partial.disable"}
!42 = !{!5, !5, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{i64 2, i64 -1, i64 -1, i1 true}
!47 = !{!46}
!48 = !{!12, !9, i64 32}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!18, !6, i64 24}
!52 = !{!"vtable pointer", !4, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!38, !9, i64 12}
!55 = distinct !{!55, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!56 = distinct !{!56, !55, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!57 = distinct !{!57, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!58 = distinct !{!58, !57, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!59 = distinct !{!59, !41}
!60 = distinct !{!60, !43}
!61 = distinct !{!61, !43}
!62 = distinct !{!62, !43}
!63 = distinct !{!63, i1 false, !"LVerDomain"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !63}
!67 = distinct !{!67, !63}
!68 = distinct !{!68, !43, !44, !45}
!69 = distinct !{!69, !43, !44, !45}
!70 = distinct !{!70, !43}
!71 = distinct !{!71, !43, !44}
!72 = distinct !{!72, !43}
!73 = distinct !{!73, !43}
!74 = distinct !{!74, !43, !44, !45}
!75 = distinct !{!75, !43, !44, !45}
!76 = distinct !{!76, !43}
!77 = distinct !{!77, !43, !44}
!78 = distinct !{!78, !43}
!79 = !{!56}
!80 = !{!58}
!81 = !{!"float", !5, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!64}
!84 = !{!65}
!85 = !{!66}
!86 = !{!67}
!87 = !{!64, !65, !66}
!88 = !{!"branch_weights", i32 4, i32 12}
!89 = distinct !{!89, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!90 = distinct !{!90, !89, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!91 = distinct !{!91, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!92 = distinct !{!92, !91, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!93 = distinct !{!93, !41}
!94 = distinct !{!94, !43}
!95 = distinct !{!95, !43}
!96 = distinct !{!96, !43}
!97 = distinct !{!97, i1 false, !"LVerDomain"}
!98 = distinct !{!98, !97}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !97}
!101 = distinct !{!101, !97}
!102 = distinct !{!102, !43, !44, !45}
!103 = distinct !{!103, !43, !44, !45}
!104 = distinct !{!104, !43}
!105 = distinct !{!105, !43, !44}
!106 = distinct !{!106, !43}
!107 = distinct !{!107, !43}
!108 = distinct !{!108, !43, !44, !45}
!109 = distinct !{!109, !43, !44, !45}
!110 = distinct !{!110, !43}
!111 = distinct !{!111, !43, !44}
!112 = distinct !{!112, !43}
!113 = !{!90}
!114 = !{!92}
!115 = !{!"short", !5, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!98}
!118 = !{!99}
!119 = !{!100}
!120 = !{!101}
!121 = !{!98, !99, !100}
!122 = !{!"branch_weights", i32 8, i32 24}
end_hunk_0
