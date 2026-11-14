Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/binaryop_x86_avx512bf16?download=true
inline.NumInlined: 199
inline.NumDeleted: 137
loop-unroll.NumRuntimeUnrolled: 194
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.gjh = bitcast i32 %i.gjg to float            ; 2 uses
  %i.gji = fcmp fast olt float %i.gdt, %i.gjh
  %.sroa.speculated.i86.i762 = select i1 %i.gji, float %i.gdt, float %i.gjh
  %i.gjj = bitcast float %.sroa.speculated.i86.i762 to i32
  %i.gjk = lshr i32 %i.gjj, 16
  %i.gjl = trunc nuw i32 %i.gjk to i16
  %i.gjm = getelementptr inbounds nuw i8, ptr %.33338.i.i760, i64 2
  store i16 %i.gjl, ptr %.33338.i.i760, align 2, !tbaa !558
  %i.gjn = getelementptr inbounds nuw i8, ptr %.339.i.i759, i64 4
  %i.gjo = load i16, ptr %i.gjd, align 2, !tbaa !558
  %i.gjp = zext i16 %i.gjo to i32
  %i.gjq = shl nuw i32 %i.gjp, 16
  %i.gjr = bitcast i32 %i.gjq to float            ; 2 uses
  %i.gjs = fcmp fast olt float %i.gdt, %i.gjr
  %.sroa.speculated.i86.i762.1 = select i1 %i.gjs, float %i.gdt, float %i.gjr
  %i.gjt = bitcast float %.sroa.speculated.i86.i762.1 to i32
  %i.gju = lshr i32 %i.gjt, 16
  %i.gjv = trunc nuw i32 %i.gju to i16
  %i.gjw = getelementptr inbounds nuw i8, ptr %.33338.i.i760, i64 4
  store i16 %i.gjv, ptr %i.gjm, align 2, !tbaa !558
  %i.gjx = add nuw nsw i32 %.33737.i.i761, 2      ; 2 uses
  %exitcond.not.i87.i763.1 = icmp eq i32 %i.gjx, %i.ffg
  br i1 %exitcond.not.i87.i763.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph40.i.i758, !llvm.loop !185

bb.fc:                                            ; preds = %bb.fa
  %i.gjy = icmp eq i32 %3, 1
  br i1 %i.gjy, label %bb.fd, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.fd:                                            ; preds = %bb.fc
  switch i32 %.sroa.speculated.i729, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %bb.fe
    i32 8, label %bb.ff
    i32 4, label %bb.fg
  ]

bb.fe:                                            ; preds = %bb.fd
  %i.gjz = load <16 x bfloat>, ptr %0, align 1, !tbaa !555
  %i.gka = fpext fast <16 x bfloat> %i.gjz to <16 x float> ; 3 uses
  %xtraiter10643 = and i32 %.sroa.speculated101.i728, 1
  %i.gkb = icmp eq i32 %.sroa.speculated101.i728, 1
  br i1 %i.gkb, label %.lr.ph59.i.i740.epil.preheader, label %.new10642

.new10642:                                        ; preds = %bb.fe
  %unroll_iter10646 = and i32 %.sroa.speculated101.i728, 2147483646
  br label %.lr.ph59.i.i740

.lr.ph59.i.i740:                                  ; preds = %.lr.ph59.i.i740, %.new10642
  %.02858.i.i741 = phi ptr [ %1, %.new10642 ], [ %i.gku, %.lr.ph59.i.i740 ] ; 3 uses
  %.03057.i.i742 = phi ptr [ %2, %.new10642 ], [ %i.gkv, %.lr.ph59.i.i740 ] ; 3 uses
  %niter10647 = phi i32 [ 0, %.new10642 ], [ %niter10647.next.1, %.lr.ph59.i.i740 ]
  %i.gkc = load i16, ptr %.02858.i.i741, align 2, !tbaa !558
  %i.gkd = zext i16 %i.gkc to i32
  %i.gke = shl nuw i32 %i.gkd, 16
  %i.gkf = insertelement <16 x i32> poison, i32 %i.gke, i64 0
  %i.gkg = bitcast <16 x i32> %i.gkf to <16 x float>
  %i.gkh = shufflevector <16 x float> %i.gkg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gki = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.gka, <16 x float> nofpclass(nan inf) %i.gkh, i32 4)
  %i.gkj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.gki)
  store <16 x bfloat> %i.gkj, ptr %.03057.i.i742, align 1, !tbaa !555
  %i.gkk = getelementptr inbounds nuw i8, ptr %.02858.i.i741, i64 2
  %i.gkl = getelementptr inbounds nuw i8, ptr %.03057.i.i742, i64 32
  %i.gkm = load i16, ptr %i.gkk, align 2, !tbaa !558
  %i.gkn = zext i16 %i.gkm to i32
  %i.gko = shl nuw i32 %i.gkn, 16
  %i.gkp = insertelement <16 x i32> poison, i32 %i.gko, i64 0
  %i.gkq = bitcast <16 x i32> %i.gkp to <16 x float>
  %i.gkr = shufflevector <16 x float> %i.gkq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gks = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.gka, <16 x float> nofpclass(nan inf) %i.gkr, i32 4)
  %i.gkt = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.gks)
  store <16 x bfloat> %i.gkt, ptr %i.gkl, align 1, !tbaa !555
  %i.gku = getelementptr inbounds nuw i8, ptr %.02858.i.i741, i64 4 ; 2 uses
  %i.gkv = getelementptr inbounds nuw i8, ptr %.03057.i.i742, i64 64 ; 2 uses
  %niter10647.next.1 = add i32 %niter10647, 2     ; 2 uses
  %niter10647.ncmp.1 = icmp eq i32 %niter10647.next.1, %unroll_iter10646
  br i1 %niter10647.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9523.unr-lcssa, label %.lr.ph59.i.i740, !llvm.loop !186

bb.ff:                                            ; preds = %bb.fd
  %i.gkw = load <8 x bfloat>, ptr %0, align 1, !tbaa !555
  %i.gkx = fpext fast <8 x bfloat> %i.gkw to <8 x float> ; 3 uses
  %xtraiter10637 = and i32 %.sroa.speculated101.i728, 1
  %i.gky = icmp eq i32 %.sroa.speculated101.i728, 1
  br i1 %i.gky, label %.lr.ph55.i.i735.epil.preheader, label %.new10636

.new10636:                                        ; preds = %bb.ff
  %unroll_iter10640 = and i32 %.sroa.speculated101.i728, 2147483646
  br label %.lr.ph55.i.i735

.lr.ph55.i.i735:                                  ; preds = %.lr.ph55.i.i735, %.new10636
  %.154.i.i736 = phi ptr [ %1, %.new10636 ], [ %i.glr, %.lr.ph55.i.i735 ] ; 3 uses
  %.13152.i.i738 = phi ptr [ %2, %.new10636 ], [ %i.gls, %.lr.ph55.i.i735 ] ; 3 uses
  %niter10641 = phi i32 [ 0, %.new10636 ], [ %niter10641.next.1, %.lr.ph55.i.i735 ]
  %i.gkz = load i16, ptr %.154.i.i736, align 2, !tbaa !558
  %i.gla = zext i16 %i.gkz to i32
  %i.glb = shl nuw i32 %i.gla, 16
  %i.glc = insertelement <8 x i32> poison, i32 %i.glb, i64 0
  %i.gld = bitcast <8 x i32> %i.glc to <8 x float>
  %i.gle = shufflevector <8 x float> %i.gld, <8 x float> poison, <8 x i32> zeroinitializer
  %i.glf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gkx, <8 x float> nofpclass(nan inf) %i.gle)
  %i.glg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.glf)
  store <8 x bfloat> %i.glg, ptr %.13152.i.i738, align 1, !tbaa !555
  %i.glh = getelementptr inbounds nuw i8, ptr %.154.i.i736, i64 2
  %i.gli = getelementptr inbounds nuw i8, ptr %.13152.i.i738, i64 16
  %i.glj = load i16, ptr %i.glh, align 2, !tbaa !558
  %i.glk = zext i16 %i.glj to i32
  %i.gll = shl nuw i32 %i.glk, 16
  %i.glm = insertelement <8 x i32> poison, i32 %i.gll, i64 0
  %i.gln = bitcast <8 x i32> %i.glm to <8 x float>
  %i.glo = shufflevector <8 x float> %i.gln, <8 x float> poison, <8 x i32> zeroinitializer
  %i.glp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gkx, <8 x float> nofpclass(nan inf) %i.glo)
  %i.glq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.glp)
  store <8 x bfloat> %i.glq, ptr %i.gli, align 1, !tbaa !555
  %i.glr = getelementptr inbounds nuw i8, ptr %.154.i.i736, i64 4 ; 2 uses
  %i.gls = getelementptr inbounds nuw i8, ptr %.13152.i.i738, i64 32 ; 2 uses
  %niter10641.next.1 = add i32 %niter10641, 2     ; 2 uses
  %niter10641.ncmp.1 = icmp eq i32 %niter10641.next.1, %unroll_iter10640
  br i1 %niter10641.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9524.unr-lcssa, label %.lr.ph55.i.i735, !llvm.loop !187

bb.fg:                                            ; preds = %bb.fd
  %i.glt = load i64, ptr %0, align 1, !tbaa !555
  %i.glu = insertelement <2 x i64> poison, i64 %i.glt, i64 0
  %i.glv = bitcast <2 x i64> %i.glu to <8 x i16>
  %i.glw = shufflevector <8 x i16> %i.glv, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.glx = bitcast <8 x i16> %i.glw to <4 x float> ; 3 uses
  %xtraiter10631 = and i32 %.sroa.speculated101.i728, 1
  %i.gly = icmp eq i32 %.sroa.speculated101.i728, 1
  br i1 %i.gly, label %.lr.ph.i89.i730.epil.preheader, label %.new10630

.new10630:                                        ; preds = %bb.fg
  %unroll_iter10634 = and i32 %.sroa.speculated101.i728, 2147483646
  br label %.lr.ph.i89.i730

.lr.ph.i89.i730:                                  ; preds = %.lr.ph.i89.i730, %.new10630
  %.250.i.i732 = phi ptr [ %1, %.new10630 ], [ %i.gmx, %.lr.ph.i89.i730 ] ; 3 uses
  %.23249.i.i733 = phi ptr [ %2, %.new10630 ], [ %i.gmy, %.lr.ph.i89.i730 ] ; 3 uses
  %niter10635 = phi i32 [ 0, %.new10630 ], [ %niter10635.next.1, %.lr.ph.i89.i730 ]
  %i.glz = load i16, ptr %.250.i.i732, align 2, !tbaa !558
  %i.gma = zext i16 %i.glz to i32
  %i.gmb = shl nuw i32 %i.gma, 16
  %i.gmc = insertelement <4 x i32> poison, i32 %i.gmb, i64 0
  %i.gmd = bitcast <4 x i32> %i.gmc to <4 x float>
  %i.gme = shufflevector <4 x float> %i.gmd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gmf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.glx, <4 x float> nofpclass(nan inf) %i.gme)
  %i.gmg = shufflevector <4 x float> %i.gmf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gmh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.gmg)
  %i.gmi = bitcast <8 x bfloat> %i.gmh to <2 x i64>
  %i.gmj = extractelement <2 x i64> %i.gmi, i64 0
  store i64 %i.gmj, ptr %.23249.i.i733, align 1, !tbaa !555
  %i.gmk = getelementptr inbounds nuw i8, ptr %.250.i.i732, i64 2
  %i.gml = getelementptr inbounds nuw i8, ptr %.23249.i.i733, i64 8
  %i.gmm = load i16, ptr %i.gmk, align 2, !tbaa !558
  %i.gmn = zext i16 %i.gmm to i32
  %i.gmo = shl nuw i32 %i.gmn, 16
  %i.gmp = insertelement <4 x i32> poison, i32 %i.gmo, i64 0
  %i.gmq = bitcast <4 x i32> %i.gmp to <4 x float>
  %i.gmr = shufflevector <4 x float> %i.gmq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gms = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.glx, <4 x float> nofpclass(nan inf) %i.gmr)
  %i.gmt = shufflevector <4 x float> %i.gms, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gmu = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.gmt)
  %i.gmv = bitcast <8 x bfloat> %i.gmu to <2 x i64>
  %i.gmw = extractelement <2 x i64> %i.gmv, i64 0
  store i64 %i.gmw, ptr %i.gml, align 1, !tbaa !555
  %i.gmx = getelementptr inbounds nuw i8, ptr %.250.i.i732, i64 4 ; 2 uses
  %i.gmy = getelementptr inbounds nuw i8, ptr %.23249.i.i733, i64 16 ; 2 uses
  %niter10635.next.1 = add i32 %niter10635, 2     ; 2 uses
  %niter10635.ncmp.1 = icmp eq i32 %niter10635.next.1, %unroll_iter10634
  br i1 %niter10635.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9525.unr-lcssa, label %.lr.ph.i89.i730, !llvm.loop !188

bb.fh:                                            ; preds = %bb.a
  %.sroa.speculated98.i902 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 10 uses
  %.sroa.speculated.i903 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.gmz = mul i32 %.sroa.speculated.i903, %.sroa.speculated98.i902 ; 48 uses
  %i.gna = icmp eq i32 %5, %6
  br i1 %i.gna, label %bb.fi, label %bb.gb

bb.fi:                                            ; preds = %bb.fh
  %i.gnb = icmp eq i32 %3, %4
  br i1 %i.gnb, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.gnc = icmp sgt i32 %i.gmz, 15
  br i1 %i.gnc, label %.lr.ph.i.i962, label %.preheader177.i.i

.preheader177.loopexit.i.i:                       ; preds = %.lr.ph.i.i962
  %i.gnd = and i32 %i.gmz, 2147483632
  br label %.preheader177.i.i

.preheader177.i.i:                                ; preds = %.preheader177.loopexit.i.i, %bb.fj
  %.042.lcssa.i.i948 = phi ptr [ %2, %bb.fj ], [ %i.gpp, %.preheader177.loopexit.i.i ] ; 2 uses
  %.038.lcssa.i.i949 = phi i32 [ 0, %bb.fj ], [ %i.gnd, %.preheader177.loopexit.i.i ] ; 3 uses
  %.034.lcssa.i.i950 = phi ptr [ %1, %bb.fj ], [ %i.gpo, %.preheader177.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i951 = phi ptr [ %0, %bb.fj ], [ %i.gpn, %.preheader177.loopexit.i.i ] ; 2 uses
  %i.gne = or disjoint i32 %.038.lcssa.i.i949, 7
  %i.gnf = icmp slt i32 %i.gne, %i.gmz
  br i1 %i.gnf, label %.lr.ph189.i.i, label %.preheader176.i.i

.lr.ph.i.i962:                                    ; preds = %bb.fj, %.lr.ph.i.i962
  %.0181.i.i = phi ptr [ %i.gpn, %.lr.ph.i.i962 ], [ %0, %bb.fj ] ; 2 uses
  %.034180.i.i = phi ptr [ %i.gpo, %.lr.ph.i.i962 ], [ %1, %bb.fj ] ; 2 uses
  %.038179.i.i = phi i32 [ %i.gpq, %.lr.ph.i.i962 ], [ 0, %bb.fj ]
  %.042178.i.i = phi ptr [ %i.gpp, %.lr.ph.i.i962 ], [ %2, %bb.fj ] ; 2 uses
  %i.gng = load <16 x bfloat>, ptr %.0181.i.i, align 1, !tbaa !555
  %i.gnh = fpext fast <16 x bfloat> %i.gng to <16 x float>
  %i.gni = load <16 x bfloat>, ptr %.034180.i.i, align 1, !tbaa !555
  %i.gnj = fpext fast <16 x bfloat> %i.gni to <16 x float>
  %i.gnk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.gnh, <16 x float> splat (float f0x00800000), i32 4)
  %i.gnl = bitcast <16 x float> %i.gnk to <16 x i32> ; 2 uses
  %i.gnm = lshr <16 x i32> %i.gnl, splat (i32 23)
  %i.gnn = and <16 x i32> %i.gnl, splat (i32 -2139095041)
  %i.gno = or disjoint <16 x i32> %i.gnn, splat (i32 1056964608)
  %i.gnp = bitcast <16 x i32> %i.gno to <16 x float> ; 3 uses
  %i.gnq = add nsw <16 x i32> %i.gnm, splat (i32 -127)
  %i.gnr = sitofp fast <16 x i32> %i.gnq to <16 x float> ; 2 uses
  %i.gns = fadd fast <16 x float> %i.gnr, splat (float 1.000000e+00)
  %i.gnt = fcmp fast olt <16 x float> %i.gnp, splat (float f0x3F3504F3) ; 2 uses
  %i.gnu = fadd fast <16 x float> %i.gnp, splat (float -1.000000e+00)
  %i.gnv = select fast <16 x i1> %i.gnt, <16 x float> %i.gnr, <16 x float> %i.gns ; 2 uses
  %i.gnw = select fast <16 x i1> %i.gnt, <16 x float> %i.gnp, <16 x float> zeroinitializer
  %i.gnx = fadd fast <16 x float> %i.gnu, %i.gnw  ; 12 uses
  %i.gny = fmul fast <16 x float> %i.gnx, %i.gnx  ; 2 uses
  %i.gnz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gnx, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.goa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gnz, <16 x float> nofpclass(nan inf) %i.gnx, <16 x float> splat (float f0x3DEF251A))
  %i.gob = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.goa, <16 x float> nofpclass(nan inf) %i.gnx, <16 x float> splat (float f0xBDFE5D4F))
  %i.goc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gob, <16 x float> nofpclass(nan inf) %i.gnx, <16 x float> splat (float f0x3E11E9BF))
  %i.god = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.goc, <16 x float> nofpclass(nan inf) %i.gnx, <16 x float> splat (float f0xBE2AAE50))
  %i.goe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.god, <16 x float> nofpclass(nan inf) %i.gnx, <16 x float> splat (float f0x3E4CCEAC))
  %i.gof = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.goe, <16 x float> nofpclass(nan inf) %i.gnx, <16 x float> splat (float f0xBE7FFFFC))
  %i.gog = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gof, <16 x float> nofpclass(nan inf) %i.gnx, <16 x float> splat (float f0x3EAAAAAA))
  %i.goh = fmul fast <16 x float> %i.gny, %i.gnx
  %i.goi = fmul fast <16 x float> %i.goh, %i.gog
  %i.goj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gnv, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.goi)
  %i.gok = fneg fast <16 x float> %i.gny
  %i.gol = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gok, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.goj)
  %i.gom = fadd fast <16 x float> %i.gol, %i.gnx
  %i.gon = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gnv, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.gom)
  %i.goo = fmul fast <16 x float> %i.gon, %i.gnj
  %i.gop = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.goo, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.goq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.gop, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.gor = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.goq, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.gos = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.gor, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.got = fcmp fast ogt <16 x float> %i.gos, %i.gor
  %i.gou = fadd fast <16 x float> %i.gos, splat (float -1.000000e+00)
  %i.gov = select fast <16 x i1> %i.got, <16 x float> %i.gou, <16 x float> %i.gos ; 2 uses
  %i.gow = fneg fast <16 x float> %i.gov          ; 2 uses
  %i.gox = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gow, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.goq)
  %i.goy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gow, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.gox) ; 8 uses
  %i.goz = fmul fast <16 x float> %i.goy, %i.goy
  %i.gpa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.goy, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.gpb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gpa, <16 x float> nofpclass(nan inf) %i.goy, <16 x float> splat (float f0x3C088908))
  %i.gpc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gpb, <16 x float> nofpclass(nan inf) %i.goy, <16 x float> splat (float f0x3D2AA9C1))
  %i.gpd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gpc, <16 x float> nofpclass(nan inf) %i.goy, <16 x float> splat (float f0x3E2AAAAA))
  %i.gpe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gpd, <16 x float> nofpclass(nan inf) %i.goy, <16 x float> splat (float 5.000000e-01))
  %i.gpf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gpe, <16 x float> nofpclass(nan inf) %i.goz, <16 x float> nofpclass(nan inf) %i.goy)
  %i.gpg = fadd fast <16 x float> %i.gpf, splat (float 1.000000e+00)
  %i.gph = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gov, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gpi = shl <16 x i32> %i.gph, splat (i32 23)
  %i.gpj = add <16 x i32> %i.gpi, splat (i32 1065353216)
  %i.gpk = bitcast <16 x i32> %i.gpj to <16 x float>
  %i.gpl = fmul fast <16 x float> %i.gpg, %i.gpk
  %i.gpm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.gpl)
  store <16 x bfloat> %i.gpm, ptr %.042178.i.i, align 1, !tbaa !555
  %i.gpn = getelementptr inbounds nuw i8, ptr %.0181.i.i, i64 32 ; 2 uses
  %i.gpo = getelementptr inbounds nuw i8, ptr %.034180.i.i, i64 32 ; 2 uses
  %i.gpp = getelementptr inbounds nuw i8, ptr %.042178.i.i, i64 32 ; 2 uses
  %i.gpq = add nuw nsw i32 %.038179.i.i, 16       ; 2 uses
  %i.gpr = or disjoint i32 %i.gpq, 15
  %i.gps = icmp slt i32 %i.gpr, %i.gmz
  br i1 %i.gps, label %.lr.ph.i.i962, label %.preheader177.loopexit.i.i, !llvm.loop !189

.preheader176.i.i:                                ; preds = %.lr.ph189.i.i, %.preheader177.i.i
  %.143.lcssa.i.i952 = phi ptr [ %.042.lcssa.i.i948, %.preheader177.i.i ], [ %i.gse, %.lr.ph189.i.i ] ; 2 uses
  %.139.lcssa.i.i953 = phi i32 [ %.038.lcssa.i.i949, %.preheader177.i.i ], [ %i.gsf, %.lr.ph189.i.i ] ; 3 uses
  %.135.lcssa.i.i954 = phi ptr [ %.034.lcssa.i.i950, %.preheader177.i.i ], [ %i.gsd, %.lr.ph189.i.i ] ; 2 uses
  %.1.lcssa.i.i955 = phi ptr [ %.0.lcssa.i.i951, %.preheader177.i.i ], [ %i.gsc, %.lr.ph189.i.i ] ; 2 uses
  %i.gpt = or disjoint i32 %.139.lcssa.i.i953, 3
  %i.gpu = icmp slt i32 %i.gpt, %i.gmz
  br i1 %i.gpu, label %.lr.ph198.i.i, label %.preheader.i.i956

.lr.ph189.i.i:                                    ; preds = %.preheader177.i.i, %.lr.ph189.i.i
  %.1188.i.i = phi ptr [ %i.gsc, %.lr.ph189.i.i ], [ %.0.lcssa.i.i951, %.preheader177.i.i ] ; 2 uses
  %.135187.i.i = phi ptr [ %i.gsd, %.lr.ph189.i.i ], [ %.034.lcssa.i.i950, %.preheader177.i.i ] ; 2 uses
  %.139186.i.i = phi i32 [ %i.gsf, %.lr.ph189.i.i ], [ %.038.lcssa.i.i949, %.preheader177.i.i ]
  %.143185.i.i = phi ptr [ %i.gse, %.lr.ph189.i.i ], [ %.042.lcssa.i.i948, %.preheader177.i.i ] ; 2 uses
  %i.gpv = load <8 x bfloat>, ptr %.1188.i.i, align 1, !tbaa !555
  %i.gpw = fpext fast <8 x bfloat> %i.gpv to <8 x float>
  %i.gpx = load <8 x bfloat>, ptr %.135187.i.i, align 1, !tbaa !555
  %i.gpy = fpext fast <8 x bfloat> %i.gpx to <8 x float>
  %i.gpz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gpw, <8 x float> splat (float f0x00800000))
  %i.gqa = bitcast <8 x float> %i.gpz to <8 x i32> ; 2 uses
  %i.gqb = lshr <8 x i32> %i.gqa, splat (i32 23)
  %i.gqc = and <8 x i32> %i.gqa, splat (i32 -2139095041)
  %i.gqd = or disjoint <8 x i32> %i.gqc, splat (i32 1056964608)
  %i.gqe = bitcast <8 x i32> %i.gqd to <8 x float> ; 3 uses
  %i.gqf = add nsw <8 x i32> %i.gqb, splat (i32 -127)
  %i.gqg = sitofp fast <8 x i32> %i.gqf to <8 x float> ; 2 uses
  %i.gqh = fadd fast <8 x float> %i.gqg, splat (float 1.000000e+00)
  %i.gqi = fcmp fast olt <8 x float> %i.gqe, splat (float f0x3F3504F3) ; 2 uses
  %i.gqj = select <8 x i1> %i.gqi, <8 x float> %i.gqe, <8 x float> zeroinitializer
  %i.gqk = fadd fast <8 x float> %i.gqe, splat (float -1.000000e+00)
  %i.gql = select fast <8 x i1> %i.gqi, <8 x float> %i.gqg, <8 x float> %i.gqh ; 2 uses
  %i.gqm = fadd fast <8 x float> %i.gqk, %i.gqj   ; 12 uses
  %i.gqn = fmul fast <8 x float> %i.gqm, %i.gqm   ; 2 uses
  %i.gqo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gqm, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.gqp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gqo, <8 x float> nofpclass(nan inf) %i.gqm, <8 x float> splat (float f0x3DEF251A))
  %i.gqq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gqp, <8 x float> nofpclass(nan inf) %i.gqm, <8 x float> splat (float f0xBDFE5D4F))
  %i.gqr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gqq, <8 x float> nofpclass(nan inf) %i.gqm, <8 x float> splat (float f0x3E11E9BF))
  %i.gqs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gqr, <8 x float> nofpclass(nan inf) %i.gqm, <8 x float> splat (float f0xBE2AAE50))
  %i.gqt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gqs, <8 x float> nofpclass(nan inf) %i.gqm, <8 x float> splat (float f0x3E4CCEAC))
  %i.gqu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gqt, <8 x float> nofpclass(nan inf) %i.gqm, <8 x float> splat (float f0xBE7FFFFC))
  %i.gqv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gqu, <8 x float> nofpclass(nan inf) %i.gqm, <8 x float> splat (float f0x3EAAAAAA))
  %i.gqw = fmul fast <8 x float> %i.gqn, %i.gqm
  %i.gqx = fmul fast <8 x float> %i.gqw, %i.gqv
  %i.gqy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gql, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.gqx)
  %i.gqz = fneg fast <8 x float> %i.gqn
  %i.gra = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gqz, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.gqy)
  %i.grb = fadd fast <8 x float> %i.gra, %i.gqm
  %i.grc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gql, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.grb)
  %i.grd = fmul fast <8 x float> %i.grc, %i.gpy
  %i.gre = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.grd, <8 x float> splat (float f0x42B0C0A5))
  %i.grf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gre, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.grg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.grf, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.grh = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.grg, i32 1) ; 2 uses
  %i.gri = fcmp fast ogt <8 x float> %i.grh, %i.grg
  %i.grj = select <8 x i1> %i.gri, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.grk = fsub fast <8 x float> %i.grh, %i.grj   ; 2 uses
  %i.grl = fneg fast <8 x float> %i.grk           ; 2 uses
  %i.grm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.grl, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.grf)
  %i.grn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.grl, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.grm) ; 8 uses
  %i.gro = fmul fast <8 x float> %i.grn, %i.grn
  %i.grp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.grn, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.grq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.grp, <8 x float> nofpclass(nan inf) %i.grn, <8 x float> splat (float f0x3C088908))
  %i.grr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.grq, <8 x float> nofpclass(nan inf) %i.grn, <8 x float> splat (float f0x3D2AA9C1))
  %i.grs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.grr, <8 x float> nofpclass(nan inf) %i.grn, <8 x float> splat (float f0x3E2AAAAA))
  %i.grt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.grs, <8 x float> nofpclass(nan inf) %i.grn, <8 x float> splat (float 5.000000e-01))
  %i.gru = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.grt, <8 x float> nofpclass(nan inf) %i.gro, <8 x float> nofpclass(nan inf) %i.grn)
  %i.grv = fadd fast <8 x float> %i.gru, splat (float 1.000000e+00)
  %i.grw = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.grk)
  %i.grx = shl <8 x i32> %i.grw, splat (i32 23)
  %i.gry = add <8 x i32> %i.grx, splat (i32 1065353216)
  %i.grz = bitcast <8 x i32> %i.gry to <8 x float>
  %i.gsa = fmul fast <8 x float> %i.grv, %i.grz
  %i.gsb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.gsa)
  store <8 x bfloat> %i.gsb, ptr %.143185.i.i, align 1, !tbaa !555
  %i.gsc = getelementptr inbounds nuw i8, ptr %.1188.i.i, i64 16 ; 2 uses
  %i.gsd = getelementptr inbounds nuw i8, ptr %.135187.i.i, i64 16 ; 2 uses
  %i.gse = getelementptr inbounds nuw i8, ptr %.143185.i.i, i64 16 ; 2 uses
  %i.gsf = add nuw nsw i32 %.139186.i.i, 8        ; 3 uses
  %i.gsg = or disjoint i32 %i.gsf, 7
  %i.gsh = icmp slt i32 %i.gsg, %i.gmz
  br i1 %i.gsh, label %.lr.ph189.i.i, label %.preheader176.i.i, !llvm.loop !190

.preheader.i.i956:                                ; preds = %.lr.ph198.i.i, %.preheader176.i.i
  %.244.lcssa.i.i957 = phi ptr [ %.143.lcssa.i.i952, %.preheader176.i.i ], [ %i.gxm, %.lr.ph198.i.i ] ; 7 uses
  %.240.lcssa.i.i958 = phi i32 [ %.139.lcssa.i.i953, %.preheader176.i.i ], [ %i.gxn, %.lr.ph198.i.i ] ; 6 uses
  %.236.lcssa.i.i959 = phi ptr [ %.135.lcssa.i.i954, %.preheader176.i.i ], [ %i.gxl, %.lr.ph198.i.i ] ; 7 uses
  %.2.lcssa.i.i960 = phi ptr [ %.1.lcssa.i.i955, %.preheader176.i.i ], [ %i.gxk, %.lr.ph198.i.i ] ; 7 uses
  %.236.lcssa.i.i9598016 = ptrtoaddr ptr %.236.lcssa.i.i959 to i64
  %.2.lcssa.i.i9608017 = ptrtoaddr ptr %.2.lcssa.i.i960 to i64
  %.244.lcssa.i.i9578018 = ptrtoaddr ptr %.244.lcssa.i.i957 to i64 ; 2 uses
  %i.gsi = icmp slt i32 %.240.lcssa.i.i958, %i.gmz
  br i1 %i.gsi, label %iter.check8038, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check8038:                                   ; preds = %.preheader.i.i956
  %i.gsj = xor i32 %.240.lcssa.i.i958, -1
  %i.gsk = add i32 %i.gmz, %i.gsj                 ; 3 uses
  %i.gsl = zext i32 %i.gsk to i64
  %i.gsm = add nuw nsw i64 %i.gsl, 1              ; 5 uses
  %min.iters.check8019 = icmp ult i32 %i.gsk, 7
  br i1 %min.iters.check8019, label %.lr.ph207.i.i.preheader, label %vector.memcheck8020

vector.memcheck8020:                              ; preds = %iter.check8038
  %i.gsn = sub i64 %.2.lcssa.i.i9608017, %.244.lcssa.i.i9578018
  %diff.check8021 = icmp ugt i64 %i.gsn, -64
  %i.gso = sub i64 %.236.lcssa.i.i9598016, %.244.lcssa.i.i9578018
  %diff.check8022 = icmp ugt i64 %i.gso, -64
  %conflict.rdx8023 = or i1 %diff.check8021, %diff.check8022
  br i1 %conflict.rdx8023, label %.lr.ph207.i.i.preheader, label %vector.main.loop.iter.check8024

vector.main.loop.iter.check8024:                  ; preds = %vector.memcheck8020
  %min.iters.check8025 = icmp ult i32 %i.gsk, 31
  br i1 %min.iters.check8025, label %vec.epilog.ph8042, label %vector.ph8026

vector.ph8026:                                    ; preds = %vector.main.loop.iter.check8024
  %i.gsp = and i64 %i.gsm, 24
  %n.vec8027 = and i64 %i.gsm, 8589934560         ; 5 uses
  %i.gsq = shl nuw nsw i64 %n.vec8027, 1          ; 3 uses
  %i.gsr = getelementptr i8, ptr %.2.lcssa.i.i960, i64 %i.gsq
  %i.gss = getelementptr i8, ptr %.236.lcssa.i.i959, i64 %i.gsq
  %i.gst = trunc i64 %n.vec8027 to i32
  %i.gsu = add i32 %.240.lcssa.i.i958, %i.gst
  %i.gsv = getelementptr i8, ptr %.244.lcssa.i.i957, i64 %i.gsq
  br label %vector.body8028

vector.body8028:                                  ; preds = %vector.ph8026, %vector.body8028
  %index8029 = phi i64 [ 0, %vector.ph8026 ], [ %index.next8035, %vector.body8028 ] ; 2 uses
  %i.gsw = shl i64 %index8029, 1                  ; 3 uses
  %next.gep8030 = getelementptr i8, ptr %.2.lcssa.i.i960, i64 %i.gsw
  %next.gep8031 = getelementptr i8, ptr %.236.lcssa.i.i959, i64 %i.gsw
  %next.gep8032 = getelementptr i8, ptr %.244.lcssa.i.i957, i64 %i.gsw
  %wide.load8033 = load <32 x i16>, ptr %next.gep8030, align 2, !tbaa !558
  %i.gsx = zext <32 x i16> %wide.load8033 to <32 x i32>
  %i.gsy = shl nuw <32 x i32> %i.gsx, splat (i32 16)
  %i.gsz = bitcast <32 x i32> %i.gsy to <32 x float>
  %wide.load8034 = load <32 x i16>, ptr %next.gep8031, align 2, !tbaa !558
  %i.gta = zext <32 x i16> %wide.load8034 to <32 x i32>
  %i.gtb = shl nuw <32 x i32> %i.gta, splat (i32 16)
  %i.gtc = bitcast <32 x i32> %i.gtb to <32 x float>
  %i.gtd = tail call fast <32 x float> @llvm.pow.v32f32(<32 x float> %i.gsz, <32 x float> %i.gtc)
  %i.gte = bitcast <32 x float> %i.gtd to <32 x i32>
  %i.gtf = lshr <32 x i32> %i.gte, splat (i32 16)
  %i.gtg = trunc nuw <32 x i32> %i.gtf to <32 x i16>
  store <32 x i16> %i.gtg, ptr %next.gep8032, align 2, !tbaa !558
  %index.next8035 = add nuw i64 %index8029, 32    ; 2 uses
  %i.gth = icmp eq i64 %index.next8035, %n.vec8027
  br i1 %i.gth, label %middle.block8036, label %vector.body8028, !llvm.loop !191

middle.block8036:                                 ; preds = %vector.body8028
  %cmp.n8037 = icmp eq i64 %i.gsm, %n.vec8027
  br i1 %cmp.n8037, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check8039

vec.epilog.iter.check8039:                        ; preds = %middle.block8036
  %min.epilog.iters.check8041 = icmp eq i64 %i.gsp, 0
  br i1 %min.epilog.iters.check8041, label %.lr.ph207.i.i.preheader, label %vec.epilog.ph8042, !prof !561

vec.epilog.ph8042:                                ; preds = %vector.main.loop.iter.check8024, %vec.epilog.iter.check8039
  %vec.epilog.resume.val8043 = phi i64 [ %n.vec8027, %vec.epilog.iter.check8039 ], [ 0, %vector.main.loop.iter.check8024 ]
  %n.vec8044 = and i64 %i.gsm, 8589934584         ; 4 uses
  %i.gti = shl nuw nsw i64 %n.vec8044, 1          ; 3 uses
  %i.gtj = getelementptr i8, ptr %.2.lcssa.i.i960, i64 %i.gti
  %i.gtk = getelementptr i8, ptr %.236.lcssa.i.i959, i64 %i.gti
  %i.gtl = trunc i64 %n.vec8044 to i32
  %i.gtm = add i32 %.240.lcssa.i.i958, %i.gtl
  %i.gtn = getelementptr i8, ptr %.244.lcssa.i.i957, i64 %i.gti
  br label %vec.epilog.vector.body8045

vec.epilog.vector.body8045:                       ; preds = %vec.epilog.vector.body8045, %vec.epilog.ph8042
  %index8046 = phi i64 [ %vec.epilog.resume.val8043, %vec.epilog.ph8042 ], [ %index.next8052, %vec.epilog.vector.body8045 ] ; 2 uses
  %i.gto = shl i64 %index8046, 1                  ; 3 uses
  %next.gep8047 = getelementptr i8, ptr %.2.lcssa.i.i960, i64 %i.gto
  %next.gep8048 = getelementptr i8, ptr %.236.lcssa.i.i959, i64 %i.gto
  %next.gep8049 = getelementptr i8, ptr %.244.lcssa.i.i957, i64 %i.gto
  %wide.load8050 = load <8 x i16>, ptr %next.gep8047, align 2, !tbaa !558
  %i.gtp = zext <8 x i16> %wide.load8050 to <8 x i32>
  %i.gtq = shl nuw <8 x i32> %i.gtp, splat (i32 16)
  %i.gtr = bitcast <8 x i32> %i.gtq to <8 x float>
  %wide.load8051 = load <8 x i16>, ptr %next.gep8048, align 2, !tbaa !558
  %i.gts = zext <8 x i16> %wide.load8051 to <8 x i32>
  %i.gtt = shl nuw <8 x i32> %i.gts, splat (i32 16)
  %i.gtu = bitcast <8 x i32> %i.gtt to <8 x float>
  %i.gtv = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.gtr, <8 x float> %i.gtu)
  %i.gtw = bitcast <8 x float> %i.gtv to <8 x i32>
  %i.gtx = lshr <8 x i32> %i.gtw, splat (i32 16)
  %i.gty = trunc nuw <8 x i32> %i.gtx to <8 x i16>
  store <8 x i16> %i.gty, ptr %next.gep8049, align 2, !tbaa !558
  %index.next8052 = add nuw i64 %index8046, 8     ; 2 uses
  %i.gtz = icmp eq i64 %index.next8052, %n.vec8044
  br i1 %i.gtz, label %vec.epilog.middle.block8053, label %vec.epilog.vector.body8045, !llvm.loop !192

vec.epilog.middle.block8053:                      ; preds = %vec.epilog.vector.body8045
  %cmp.n8054 = icmp eq i64 %i.gsm, %n.vec8044
  br i1 %cmp.n8054, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph207.i.i.preheader

.lr.ph207.i.i.preheader:                          ; preds = %iter.check8038, %vector.memcheck8020, %vec.epilog.iter.check8039, %vec.epilog.middle.block8053
  %.3206.i.i.ph = phi ptr [ %.2.lcssa.i.i960, %iter.check8038 ], [ %.2.lcssa.i.i960, %vector.memcheck8020 ], [ %i.gsr, %vec.epilog.iter.check8039 ], [ %i.gtj, %vec.epilog.middle.block8053 ] ; 3 uses
  %.337205.i.i.ph = phi ptr [ %.236.lcssa.i.i959, %iter.check8038 ], [ %.236.lcssa.i.i959, %vector.memcheck8020 ], [ %i.gss, %vec.epilog.iter.check8039 ], [ %i.gtk, %vec.epilog.middle.block8053 ] ; 3 uses
  %.341204.i.i.ph = phi i32 [ %.240.lcssa.i.i958, %iter.check8038 ], [ %.240.lcssa.i.i958, %vector.memcheck8020 ], [ %i.gsu, %vec.epilog.iter.check8039 ], [ %i.gtm, %vec.epilog.middle.block8053 ] ; 4 uses
  %.345203.i.i.ph = phi ptr [ %.244.lcssa.i.i957, %iter.check8038 ], [ %.244.lcssa.i.i957, %vector.memcheck8020 ], [ %i.gsv, %vec.epilog.iter.check8039 ], [ %i.gtn, %vec.epilog.middle.block8053 ] ; 3 uses
  %i.gua = sub i32 %i.gmz, %.341204.i.i.ph
  %.neg11086 = add i32 %.341204.i.i.ph, 1
  %xtraiter10628 = and i32 %i.gua, 1
  %lcmp.mod10629.not = icmp eq i32 %xtraiter10628, 0
  br i1 %lcmp.mod10629.not, label %.lr.ph207.i.i.prol.loopexit, label %.lr.ph207.i.i.prol

.lr.ph207.i.i.prol:                               ; preds = %.lr.ph207.i.i.preheader
  %i.gub = getelementptr inbounds nuw i8, ptr %.3206.i.i.ph, i64 2
  %i.guc = load i16, ptr %.3206.i.i.ph, align 2, !tbaa !558
  %i.gud = zext i16 %i.guc to i32
  %i.gue = shl nuw i32 %i.gud, 16
  %i.guf = bitcast i32 %i.gue to float
  %i.gug = getelementptr inbounds nuw i8, ptr %.337205.i.i.ph, i64 2
  %i.guh = load i16, ptr %.337205.i.i.ph, align 2, !tbaa !558
  %i.gui = zext i16 %i.guh to i32
  %i.guj = shl nuw i32 %i.gui, 16
  %i.guk = bitcast i32 %i.guj to float
  %i.gul = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.guf, float %i.guk)
  %i.gum = bitcast float %i.gul to i32
  %i.gun = lshr i32 %i.gum, 16
  %i.guo = trunc nuw i32 %i.gun to i16
  %i.gup = getelementptr inbounds nuw i8, ptr %.345203.i.i.ph, i64 2
  store i16 %i.guo, ptr %.345203.i.i.ph, align 2, !tbaa !558
  %i.guq = add nuw nsw i32 %.341204.i.i.ph, 1
  br label %.lr.ph207.i.i.prol.loopexit

.lr.ph207.i.i.prol.loopexit:                      ; preds = %.lr.ph207.i.i.prol, %.lr.ph207.i.i.preheader
  %.3206.i.i.unr = phi ptr [ %.3206.i.i.ph, %.lr.ph207.i.i.preheader ], [ %i.gub, %.lr.ph207.i.i.prol ]
  %.337205.i.i.unr = phi ptr [ %.337205.i.i.ph, %.lr.ph207.i.i.preheader ], [ %i.gug, %.lr.ph207.i.i.prol ]
  %.341204.i.i.unr = phi i32 [ %.341204.i.i.ph, %.lr.ph207.i.i.preheader ], [ %i.guq, %.lr.ph207.i.i.prol ]
  %.345203.i.i.unr = phi ptr [ %.345203.i.i.ph, %.lr.ph207.i.i.preheader ], [ %i.gup, %.lr.ph207.i.i.prol ]
  %i.gur = icmp eq i32 %i.gmz, %.neg11086
  br i1 %i.gur, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph207.i.i

.lr.ph198.i.i:                                    ; preds = %.preheader176.i.i, %.lr.ph198.i.i
  %.2197.i.i = phi ptr [ %i.gxk, %.lr.ph198.i.i ], [ %.1.lcssa.i.i955, %.preheader176.i.i ] ; 2 uses
  %.236196.i.i = phi ptr [ %i.gxl, %.lr.ph198.i.i ], [ %.135.lcssa.i.i954, %.preheader176.i.i ] ; 2 uses
  %.240195.i.i = phi i32 [ %i.gxn, %.lr.ph198.i.i ], [ %.139.lcssa.i.i953, %.preheader176.i.i ]
  %.244194.i.i = phi ptr [ %i.gxm, %.lr.ph198.i.i ], [ %.143.lcssa.i.i952, %.preheader176.i.i ] ; 2 uses
  %i.gus = load i64, ptr %.2197.i.i, align 1, !tbaa !555
  %i.gut = insertelement <2 x i64> poison, i64 %i.gus, i64 0
  %i.guu = bitcast <2 x i64> %i.gut to <8 x i16>
  %i.guv = shufflevector <8 x i16> %i.guu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.guw = bitcast <8 x i16> %i.guv to <4 x float>
  %i.gux = load i64, ptr %.236196.i.i, align 1, !tbaa !555
  %i.guy = insertelement <2 x i64> poison, i64 %i.gux, i64 0
  %i.guz = bitcast <2 x i64> %i.guy to <8 x i16>
  %i.gva = shufflevector <8 x i16> %i.guz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.gvb = bitcast <8 x i16> %i.gva to <4 x float>
  %i.gvc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.guw, <4 x float> splat (float f0x00800000))
  %i.gvd = bitcast <4 x float> %i.gvc to <4 x i32> ; 2 uses
  %i.gve = lshr <4 x i32> %i.gvd, splat (i32 23)
  %i.gvf = and <4 x i32> %i.gvd, splat (i32 -2139095041)
  %i.gvg = or disjoint <4 x i32> %i.gvf, splat (i32 1056964608)
  %i.gvh = bitcast <4 x i32> %i.gvg to <4 x float> ; 3 uses
  %i.gvi = add nsw <4 x i32> %i.gve, splat (i32 -127)
  %i.gvj = sitofp fast <4 x i32> %i.gvi to <4 x float> ; 2 uses
  %i.gvk = fadd fast <4 x float> %i.gvj, splat (float 1.000000e+00)
  %i.gvl = fcmp fast olt <4 x float> %i.gvh, splat (float f0x3F3504F3) ; 2 uses
  %i.gvm = select <4 x i1> %i.gvl, <4 x float> %i.gvh, <4 x float> zeroinitializer
  %i.gvn = fadd fast <4 x float> %i.gvh, splat (float -1.000000e+00)
  %i.gvo = select fast <4 x i1> %i.gvl, <4 x float> %i.gvj, <4 x float> %i.gvk ; 2 uses
  %i.gvp = fadd fast <4 x float> %i.gvn, %i.gvm   ; 12 uses
  %i.gvq = fmul fast <4 x float> %i.gvp, %i.gvp   ; 2 uses
  %i.gvr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gvp, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.gvs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gvr, <4 x float> nofpclass(nan inf) %i.gvp, <4 x float> splat (float f0x3DEF251A))
  %i.gvt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gvs, <4 x float> nofpclass(nan inf) %i.gvp, <4 x float> splat (float f0xBDFE5D4F))
  %i.gvu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gvt, <4 x float> nofpclass(nan inf) %i.gvp, <4 x float> splat (float f0x3E11E9BF))
  %i.gvv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gvu, <4 x float> nofpclass(nan inf) %i.gvp, <4 x float> splat (float f0xBE2AAE50))
  %i.gvw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gvv, <4 x float> nofpclass(nan inf) %i.gvp, <4 x float> splat (float f0x3E4CCEAC))
  %i.gvx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gvw, <4 x float> nofpclass(nan inf) %i.gvp, <4 x float> splat (float f0xBE7FFFFC))
  %i.gvy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gvx, <4 x float> nofpclass(nan inf) %i.gvp, <4 x float> splat (float f0x3EAAAAAA))
  %i.gvz = fmul fast <4 x float> %i.gvq, %i.gvp
  %i.gwa = fmul fast <4 x float> %i.gvz, %i.gvy
  %i.gwb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gvo, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gwa)
  %i.gwc = fneg fast <4 x float> %i.gvq
  %i.gwd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gwc, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.gwb)
  %i.gwe = fadd fast <4 x float> %i.gwd, %i.gvp
  %i.gwf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gvo, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gwe)
  %i.gwg = fmul fast <4 x float> %i.gwf, %i.gvb
  %i.gwh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gwg, <4 x float> splat (float f0x42B0C0A5))
  %i.gwi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gwh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gwj = fmul fast <4 x float> %i.gwi, splat (float f0x3FB8AA3B)
  %i.gwk = fadd fast <4 x float> %i.gwj, splat (float 5.000000e-01) ; 2 uses
  %i.gwl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gwk)
  %i.gwm = sitofp fast <4 x i32> %i.gwl to <4 x float> ; 2 uses
  %i.gwn = fcmp fast olt <4 x float> %i.gwk, %i.gwm
  %i.gwo = select <4 x i1> %i.gwn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gwp = fsub fast <4 x float> %i.gwm, %i.gwo   ; 2 uses
  %i.gwq = fneg fast <4 x float> %i.gwp           ; 2 uses
  %i.gwr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gwq, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gwi)
  %i.gws = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gwq, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gwr) ; 8 uses
  %i.gwt = fmul fast <4 x float> %i.gws, %i.gws
  %i.gwu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gws, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.gwv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gwu, <4 x float> nofpclass(nan inf) %i.gws, <4 x float> splat (float f0x3C088908))
  %i.gww = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gwv, <4 x float> nofpclass(nan inf) %i.gws, <4 x float> splat (float f0x3D2AA9C1))
  %i.gwx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gww, <4 x float> nofpclass(nan inf) %i.gws, <4 x float> splat (float f0x3E2AAAAA))
  %i.gwy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gwx, <4 x float> nofpclass(nan inf) %i.gws, <4 x float> splat (float 5.000000e-01))
  %i.gwz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gwy, <4 x float> nofpclass(nan inf) %i.gwt, <4 x float> nofpclass(nan inf) %i.gws)
  %i.gxa = fadd fast <4 x float> %i.gwz, splat (float 1.000000e+00)
  %i.gxb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gwp)
  %i.gxc = shl <4 x i32> %i.gxb, splat (i32 23)
  %i.gxd = add <4 x i32> %i.gxc, splat (i32 1065353216)
  %i.gxe = bitcast <4 x i32> %i.gxd to <4 x float>
  %i.gxf = fmul fast <4 x float> %i.gxa, %i.gxe
  %i.gxg = shufflevector <4 x float> %i.gxf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gxh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.gxg)
  %i.gxi = bitcast <8 x bfloat> %i.gxh to <2 x i64>
  %i.gxj = extractelement <2 x i64> %i.gxi, i64 0
  store i64 %i.gxj, ptr %.244194.i.i, align 1, !tbaa !555
  %i.gxk = getelementptr inbounds nuw i8, ptr %.2197.i.i, i64 8 ; 2 uses
  %i.gxl = getelementptr inbounds nuw i8, ptr %.236196.i.i, i64 8 ; 2 uses
  %i.gxm = getelementptr inbounds nuw i8, ptr %.244194.i.i, i64 8 ; 2 uses
  %i.gxn = add nuw nsw i32 %.240195.i.i, 4        ; 3 uses
  %i.gxo = or disjoint i32 %i.gxn, 3
  %i.gxp = icmp slt i32 %i.gxo, %i.gmz
  br i1 %i.gxp, label %.lr.ph198.i.i, label %.preheader.i.i956, !llvm.loop !193

.lr.ph207.i.i:                                    ; preds = %.lr.ph207.i.i.prol.loopexit, %.lr.ph207.i.i
  %.3206.i.i = phi ptr [ %i.gyf, %.lr.ph207.i.i ], [ %.3206.i.i.unr, %.lr.ph207.i.i.prol.loopexit ] ; 3 uses
  %.337205.i.i = phi ptr [ %i.gyk, %.lr.ph207.i.i ], [ %.337205.i.i.unr, %.lr.ph207.i.i.prol.loopexit ] ; 3 uses
  %.341204.i.i = phi i32 [ %i.gyu, %.lr.ph207.i.i ], [ %.341204.i.i.unr, %.lr.ph207.i.i.prol.loopexit ]
  %.345203.i.i = phi ptr [ %i.gyt, %.lr.ph207.i.i ], [ %.345203.i.i.unr, %.lr.ph207.i.i.prol.loopexit ] ; 3 uses
  %i.gxq = getelementptr inbounds nuw i8, ptr %.3206.i.i, i64 2
  %i.gxr = load i16, ptr %.3206.i.i, align 2, !tbaa !558
  %i.gxs = zext i16 %i.gxr to i32
  %i.gxt = shl nuw i32 %i.gxs, 16
  %i.gxu = bitcast i32 %i.gxt to float
  %i.gxv = getelementptr inbounds nuw i8, ptr %.337205.i.i, i64 2
  %i.gxw = load i16, ptr %.337205.i.i, align 2, !tbaa !558
  %i.gxx = zext i16 %i.gxw to i32
  %i.gxy = shl nuw i32 %i.gxx, 16
  %i.gxz = bitcast i32 %i.gxy to float
  %i.gya = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gxu, float %i.gxz)
  %i.gyb = bitcast float %i.gya to i32
  %i.gyc = lshr i32 %i.gyb, 16
  %i.gyd = trunc nuw i32 %i.gyc to i16
  %i.gye = getelementptr inbounds nuw i8, ptr %.345203.i.i, i64 2
  store i16 %i.gyd, ptr %.345203.i.i, align 2, !tbaa !558
  %i.gyf = getelementptr inbounds nuw i8, ptr %.3206.i.i, i64 4
  %i.gyg = load i16, ptr %i.gxq, align 2, !tbaa !558
  %i.gyh = zext i16 %i.gyg to i32
  %i.gyi = shl nuw i32 %i.gyh, 16
  %i.gyj = bitcast i32 %i.gyi to float
  %i.gyk = getelementptr inbounds nuw i8, ptr %.337205.i.i, i64 4
  %i.gyl = load i16, ptr %i.gxv, align 2, !tbaa !558
  %i.gym = zext i16 %i.gyl to i32
  %i.gyn = shl nuw i32 %i.gym, 16
  %i.gyo = bitcast i32 %i.gyn to float
  %i.gyp = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gyj, float %i.gyo)
  %i.gyq = bitcast float %i.gyp to i32
  %i.gyr = lshr i32 %i.gyq, 16
  %i.gys = trunc nuw i32 %i.gyr to i16
  %i.gyt = getelementptr inbounds nuw i8, ptr %.345203.i.i, i64 4
  store i16 %i.gys, ptr %i.gye, align 2, !tbaa !558
  %i.gyu = add nuw nsw i32 %.341204.i.i, 2        ; 2 uses
  %exitcond.not.i.i961.1 = icmp eq i32 %i.gyu, %i.gmz
  br i1 %exitcond.not.i.i961.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph207.i.i, !llvm.loop !194

bb.fk:                                            ; preds = %bb.fi
  %i.gyv = icmp eq i32 %4, 1
  br i1 %i.gyv, label %bb.fl, label %bb.fr

bb.fl:                                            ; preds = %bb.fk
  %i.gyw = load i16, ptr %1, align 2, !tbaa !558
  %i.gyx = zext i16 %i.gyw to i32
  %i.gyy = shl nuw i32 %i.gyx, 16
  %i.gyz = bitcast i32 %i.gyy to float            ; 15 uses
  %i.gza = icmp eq i32 %.sroa.speculated.i903, 4
  br i1 %i.gza, label %.thread178.i.i, label %bb.fm

.thread178.i.i:                                   ; preds = %bb.fl
  %i.gzb = load i64, ptr %1, align 2, !tbaa !555
  %i.gzc = insertelement <2 x i64> poison, i64 %i.gzb, i64 0
  %i.gzd = bitcast <2 x i64> %i.gzc to <8 x i16>
  %i.gze = shufflevector <8 x i16> %i.gzd, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.gzf = bitcast <8 x i16> %i.gze to <4 x float> ; 2 uses
  %i.gzg = shufflevector <4 x float> %i.gzf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.fp

bb.fm:                                            ; preds = %bb.fl
  %i.gzh = insertelement <4 x float> poison, float %i.gyz, i64 0 ; 2 uses
  %i.gzi = shufflevector <4 x float> %i.gzh, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.gzj = icmp eq i32 %.sroa.speculated.i903, 8
  br i1 %i.gzj, label %.thread177.i.i, label %bb.fn

.thread177.i.i:                                   ; preds = %bb.fm
  %i.gzk = load <8 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.gzl = fpext fast <8 x bfloat> %i.gzk to <8 x float>
  br label %bb.fp

bb.fn:                                            ; preds = %bb.fm
  %i.gzm = shufflevector <4 x float> %i.gzh, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gzn = icmp eq i32 %.sroa.speculated.i903, 16
  br i1 %i.gzn, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.gzo = load <16 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.gzp = fpext fast <16 x bfloat> %i.gzo to <16 x float>
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn, %.thread177.i.i, %.thread178.i.i
  %i.gzq = phi <8 x float> [ %i.gzl, %.thread177.i.i ], [ %i.gzm, %bb.fn ], [ %i.gzg, %.thread178.i.i ] ; 2 uses
  %i.gzr = phi <4 x float> [ %i.gzi, %.thread177.i.i ], [ %i.gzi, %bb.fn ], [ %i.gzf, %.thread178.i.i ]
  %i.gzs = shufflevector <8 x float> %i.gzq, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.gzt = phi <8 x float> [ %i.gzm, %bb.fo ], [ %i.gzq, %bb.fp ]
  %i.gzu = phi <4 x float> [ %i.gzi, %bb.fo ], [ %i.gzr, %bb.fp ]
  %i.gzv = phi fast <16 x float> [ %i.gzp, %bb.fo ], [ %i.gzs, %bb.fp ]
  %i.gzw = icmp sgt i32 %i.gmz, 15
  br i1 %i.gzw, label %.lr.ph.i41.i947, label %.preheader180.i.i

.preheader180.loopexit.i.i:                       ; preds = %.lr.ph.i41.i947
  %i.gzx = and i32 %i.gmz, 2147483632
  br label %.preheader180.i.i

.preheader180.i.i:                                ; preds = %.preheader180.loopexit.i.i, %bb.fq
  %.039.lcssa.i.i936 = phi i32 [ 0, %bb.fq ], [ %i.gzx, %.preheader180.loopexit.i.i ] ; 3 uses
  %.035.lcssa.i.i937 = phi ptr [ %2, %bb.fq ], [ %i.hcg, %.preheader180.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i34.i938 = phi ptr [ %0, %bb.fq ], [ %i.hcf, %.preheader180.loopexit.i.i ] ; 2 uses
  %i.gzy = or disjoint i32 %.039.lcssa.i.i936, 7
  %i.gzz = icmp slt i32 %i.gzy, %i.gmz
  br i1 %i.gzz, label %.lr.ph189.i39.i, label %.preheader179.i.i

.lr.ph.i41.i947:                                  ; preds = %bb.fq, %.lr.ph.i41.i947
  %.0183.i.i = phi ptr [ %i.hcf, %.lr.ph.i41.i947 ], [ %0, %bb.fq ] ; 2 uses
  %.035182.i.i = phi ptr [ %i.hcg, %.lr.ph.i41.i947 ], [ %2, %bb.fq ] ; 2 uses
  %.039181.i.i = phi i32 [ %i.hch, %.lr.ph.i41.i947 ], [ 0, %bb.fq ]
  %i.haa = load <16 x bfloat>, ptr %.0183.i.i, align 1, !tbaa !555
  %i.hab = fpext fast <16 x bfloat> %i.haa to <16 x float>
  %i.hac = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.hab, <16 x float> splat (float f0x00800000), i32 4)
  %i.had = bitcast <16 x float> %i.hac to <16 x i32> ; 2 uses
  %i.hae = lshr <16 x i32> %i.had, splat (i32 23)
  %i.haf = and <16 x i32> %i.had, splat (i32 -2139095041)
  %i.hag = or disjoint <16 x i32> %i.haf, splat (i32 1056964608)
  %i.hah = bitcast <16 x i32> %i.hag to <16 x float> ; 3 uses
  %i.hai = add nsw <16 x i32> %i.hae, splat (i32 -127)
  %i.haj = sitofp fast <16 x i32> %i.hai to <16 x float> ; 2 uses
  %i.hak = fadd fast <16 x float> %i.haj, splat (float 1.000000e+00)
  %i.hal = fcmp fast olt <16 x float> %i.hah, splat (float f0x3F3504F3) ; 2 uses
  %i.ham = fadd fast <16 x float> %i.hah, splat (float -1.000000e+00)
  %i.han = select fast <16 x i1> %i.hal, <16 x float> %i.haj, <16 x float> %i.hak ; 2 uses
  %i.hao = select fast <16 x i1> %i.hal, <16 x float> %i.hah, <16 x float> zeroinitializer
  %i.hap = fadd fast <16 x float> %i.ham, %i.hao  ; 12 uses
  %i.haq = fmul fast <16 x float> %i.hap, %i.hap  ; 2 uses
  %i.har = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hap, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.has = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.har, <16 x float> nofpclass(nan inf) %i.hap, <16 x float> splat (float f0x3DEF251A))
  %i.hat = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.has, <16 x float> nofpclass(nan inf) %i.hap, <16 x float> splat (float f0xBDFE5D4F))
  %i.hau = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hat, <16 x float> nofpclass(nan inf) %i.hap, <16 x float> splat (float f0x3E11E9BF))
  %i.hav = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hau, <16 x float> nofpclass(nan inf) %i.hap, <16 x float> splat (float f0xBE2AAE50))
  %i.haw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hav, <16 x float> nofpclass(nan inf) %i.hap, <16 x float> splat (float f0x3E4CCEAC))
  %i.hax = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.haw, <16 x float> nofpclass(nan inf) %i.hap, <16 x float> splat (float f0xBE7FFFFC))
  %i.hay = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hax, <16 x float> nofpclass(nan inf) %i.hap, <16 x float> splat (float f0x3EAAAAAA))
  %i.haz = fmul fast <16 x float> %i.haq, %i.hap
  %i.hba = fmul fast <16 x float> %i.haz, %i.hay
  %i.hbb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.han, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.hba)
  %i.hbc = fneg fast <16 x float> %i.haq
  %i.hbd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.hbc, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.hbb)
  %i.hbe = fadd fast <16 x float> %i.hbd, %i.hap
  %i.hbf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.han, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.hbe)
  %i.hbg = fmul fast <16 x float> %i.hbf, %i.gzv
  %i.hbh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.hbg, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.hbi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.hbh, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.hbj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hbi, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hbk = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.hbj, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.hbl = fcmp fast ogt <16 x float> %i.hbk, %i.hbj
  %i.hbm = fadd fast <16 x float> %i.hbk, splat (float -1.000000e+00)
  %i.hbn = select fast <16 x i1> %i.hbl, <16 x float> %i.hbm, <16 x float> %i.hbk ; 2 uses
  %i.hbo = fneg fast <16 x float> %i.hbn          ; 2 uses
  %i.hbp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.hbo, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.hbi)
  %i.hbq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.hbo, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.hbp) ; 8 uses
  %i.hbr = fmul fast <16 x float> %i.hbq, %i.hbq
  %i.hbs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hbq, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.hbt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hbs, <16 x float> nofpclass(nan inf) %i.hbq, <16 x float> splat (float f0x3C088908))
  %i.hbu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hbt, <16 x float> nofpclass(nan inf) %i.hbq, <16 x float> splat (float f0x3D2AA9C1))
  %i.hbv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hbu, <16 x float> nofpclass(nan inf) %i.hbq, <16 x float> splat (float f0x3E2AAAAA))
  %i.hbw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hbv, <16 x float> nofpclass(nan inf) %i.hbq, <16 x float> splat (float 5.000000e-01))
  %i.hbx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hbw, <16 x float> nofpclass(nan inf) %i.hbr, <16 x float> nofpclass(nan inf) %i.hbq)
  %i.hby = fadd fast <16 x float> %i.hbx, splat (float 1.000000e+00)
  %i.hbz = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hbn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hca = shl <16 x i32> %i.hbz, splat (i32 23)
  %i.hcb = add <16 x i32> %i.hca, splat (i32 1065353216)
  %i.hcc = bitcast <16 x i32> %i.hcb to <16 x float>
  %i.hcd = fmul fast <16 x float> %i.hby, %i.hcc
  %i.hce = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hcd)
  store <16 x bfloat> %i.hce, ptr %.035182.i.i, align 1, !tbaa !555
  %i.hcf = getelementptr inbounds nuw i8, ptr %.0183.i.i, i64 32 ; 2 uses
  %i.hcg = getelementptr inbounds nuw i8, ptr %.035182.i.i, i64 32 ; 2 uses
  %i.hch = add nuw nsw i32 %.039181.i.i, 16       ; 2 uses
  %i.hci = or disjoint i32 %i.hch, 15
  %i.hcj = icmp slt i32 %i.hci, %i.gmz
  br i1 %i.hcj, label %.lr.ph.i41.i947, label %.preheader180.loopexit.i.i, !llvm.loop !195

.preheader179.i.i:                                ; preds = %.lr.ph189.i39.i, %.preheader180.i.i
  %.140.lcssa.i.i939 = phi i32 [ %.039.lcssa.i.i936, %.preheader180.i.i ], [ %i.het, %.lr.ph189.i39.i ] ; 3 uses
  %.136.lcssa.i.i940 = phi ptr [ %.035.lcssa.i.i937, %.preheader180.i.i ], [ %i.hes, %.lr.ph189.i39.i ] ; 2 uses
  %.1.lcssa.i35.i941 = phi ptr [ %.0.lcssa.i34.i938, %.preheader180.i.i ], [ %i.her, %.lr.ph189.i39.i ] ; 2 uses
  %i.hck = or disjoint i32 %.140.lcssa.i.i939, 3
  %i.hcl = icmp slt i32 %i.hck, %i.gmz
  br i1 %i.hcl, label %.lr.ph196.i.i, label %.preheader.i36.i942

.lr.ph189.i39.i:                                  ; preds = %.preheader180.i.i, %.lr.ph189.i39.i
  %.1188.i40.i = phi ptr [ %i.her, %.lr.ph189.i39.i ], [ %.0.lcssa.i34.i938, %.preheader180.i.i ] ; 2 uses
  %.136187.i.i = phi ptr [ %i.hes, %.lr.ph189.i39.i ], [ %.035.lcssa.i.i937, %.preheader180.i.i ] ; 2 uses
  %.140186.i.i = phi i32 [ %i.het, %.lr.ph189.i39.i ], [ %.039.lcssa.i.i936, %.preheader180.i.i ]
  %i.hcm = load <8 x bfloat>, ptr %.1188.i40.i, align 1, !tbaa !555
  %i.hcn = fpext fast <8 x bfloat> %i.hcm to <8 x float>
  %i.hco = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hcn, <8 x float> splat (float f0x00800000))
  %i.hcp = bitcast <8 x float> %i.hco to <8 x i32> ; 2 uses
  %i.hcq = lshr <8 x i32> %i.hcp, splat (i32 23)
  %i.hcr = and <8 x i32> %i.hcp, splat (i32 -2139095041)
  %i.hcs = or disjoint <8 x i32> %i.hcr, splat (i32 1056964608)
  %i.hct = bitcast <8 x i32> %i.hcs to <8 x float> ; 3 uses
  %i.hcu = add nsw <8 x i32> %i.hcq, splat (i32 -127)
  %i.hcv = sitofp fast <8 x i32> %i.hcu to <8 x float> ; 2 uses
  %i.hcw = fadd fast <8 x float> %i.hcv, splat (float 1.000000e+00)
  %i.hcx = fcmp fast olt <8 x float> %i.hct, splat (float f0x3F3504F3) ; 2 uses
  %i.hcy = select <8 x i1> %i.hcx, <8 x float> %i.hct, <8 x float> zeroinitializer
  %i.hcz = fadd fast <8 x float> %i.hct, splat (float -1.000000e+00)
  %i.hda = select fast <8 x i1> %i.hcx, <8 x float> %i.hcv, <8 x float> %i.hcw ; 2 uses
  %i.hdb = fadd fast <8 x float> %i.hcz, %i.hcy   ; 12 uses
  %i.hdc = fmul fast <8 x float> %i.hdb, %i.hdb   ; 2 uses
  %i.hdd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hdb, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.hde = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hdd, <8 x float> nofpclass(nan inf) %i.hdb, <8 x float> splat (float f0x3DEF251A))
  %i.hdf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hde, <8 x float> nofpclass(nan inf) %i.hdb, <8 x float> splat (float f0xBDFE5D4F))
  %i.hdg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hdf, <8 x float> nofpclass(nan inf) %i.hdb, <8 x float> splat (float f0x3E11E9BF))
  %i.hdh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hdg, <8 x float> nofpclass(nan inf) %i.hdb, <8 x float> splat (float f0xBE2AAE50))
  %i.hdi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hdh, <8 x float> nofpclass(nan inf) %i.hdb, <8 x float> splat (float f0x3E4CCEAC))
  %i.hdj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hdi, <8 x float> nofpclass(nan inf) %i.hdb, <8 x float> splat (float f0xBE7FFFFC))
  %i.hdk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hdj, <8 x float> nofpclass(nan inf) %i.hdb, <8 x float> splat (float f0x3EAAAAAA))
  %i.hdl = fmul fast <8 x float> %i.hdc, %i.hdb
  %i.hdm = fmul fast <8 x float> %i.hdl, %i.hdk
  %i.hdn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hda, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hdm)
  %i.hdo = fneg fast <8 x float> %i.hdc
  %i.hdp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hdo, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.hdn)
  %i.hdq = fadd fast <8 x float> %i.hdp, %i.hdb
  %i.hdr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hda, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hdq)
  %i.hds = fmul fast <8 x float> %i.hdr, %i.gzt
  %i.hdt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hds, <8 x float> splat (float f0x42B0C0A5))
  %i.hdu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hdt, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hdv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hdu, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hdw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hdv, i32 1) ; 2 uses
  %i.hdx = fcmp fast ogt <8 x float> %i.hdw, %i.hdv
  %i.hdy = select <8 x i1> %i.hdx, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hdz = fsub fast <8 x float> %i.hdw, %i.hdy   ; 2 uses
  %i.hea = fneg fast <8 x float> %i.hdz           ; 2 uses
  %i.heb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hea, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hdu)
  %i.hec = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hea, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.heb) ; 8 uses
  %i.hed = fmul fast <8 x float> %i.hec, %i.hec
  %i.hee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hec, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.hef = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hee, <8 x float> nofpclass(nan inf) %i.hec, <8 x float> splat (float f0x3C088908))
  %i.heg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hef, <8 x float> nofpclass(nan inf) %i.hec, <8 x float> splat (float f0x3D2AA9C1))
  %i.heh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.heg, <8 x float> nofpclass(nan inf) %i.hec, <8 x float> splat (float f0x3E2AAAAA))
  %i.hei = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.heh, <8 x float> nofpclass(nan inf) %i.hec, <8 x float> splat (float 5.000000e-01))
  %i.hej = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hei, <8 x float> nofpclass(nan inf) %i.hed, <8 x float> nofpclass(nan inf) %i.hec)
  %i.hek = fadd fast <8 x float> %i.hej, splat (float 1.000000e+00)
  %i.hel = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hdz)
  %i.hem = shl <8 x i32> %i.hel, splat (i32 23)
  %i.hen = add <8 x i32> %i.hem, splat (i32 1065353216)
  %i.heo = bitcast <8 x i32> %i.hen to <8 x float>
  %i.hep = fmul fast <8 x float> %i.hek, %i.heo
  %i.heq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.hep)
  store <8 x bfloat> %i.heq, ptr %.136187.i.i, align 1, !tbaa !555
  %i.her = getelementptr inbounds nuw i8, ptr %.1188.i40.i, i64 16 ; 2 uses
  %i.hes = getelementptr inbounds nuw i8, ptr %.136187.i.i, i64 16 ; 2 uses
  %i.het = add nuw nsw i32 %.140186.i.i, 8        ; 3 uses
  %i.heu = or disjoint i32 %i.het, 7
  %i.hev = icmp slt i32 %i.heu, %i.gmz
  br i1 %i.hev, label %.lr.ph189.i39.i, label %.preheader179.i.i, !llvm.loop !196

.preheader.i36.i942:                              ; preds = %.lr.ph196.i.i, %.preheader179.i.i
  %.241.lcssa.i.i943 = phi i32 [ %.140.lcssa.i.i939, %.preheader179.i.i ], [ %i.hlb, %.lr.ph196.i.i ] ; 5 uses
  %.237.lcssa.i.i944 = phi ptr [ %.136.lcssa.i.i940, %.preheader179.i.i ], [ %i.hla, %.lr.ph196.i.i ] ; 6 uses
  %.2.lcssa.i37.i945 = phi ptr [ %.1.lcssa.i35.i941, %.preheader179.i.i ], [ %i.hkz, %.lr.ph196.i.i ] ; 6 uses
  %i.hew = icmp slt i32 %.241.lcssa.i.i943, %i.gmz
  br i1 %i.hew, label %iter.check7991, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7991:                                   ; preds = %.preheader.i36.i942
  %.237.lcssa.i.i9447975 = ptrtoaddr ptr %.237.lcssa.i.i944 to i64
  %.2.lcssa.i37.i9457974 = ptrtoaddr ptr %.2.lcssa.i37.i945 to i64
  %i.hex = xor i32 %.241.lcssa.i.i943, -1
  %i.hey = add i32 %i.gmz, %i.hex                 ; 3 uses
  %i.hez = zext i32 %i.hey to i64
  %i.hfa = add nuw nsw i64 %i.hez, 1              ; 5 uses
  %min.iters.check7976 = icmp ult i32 %i.hey, 7
  %i.hfb = sub i64 %.2.lcssa.i37.i9457974, %.237.lcssa.i.i9447975
  %diff.check7978 = icmp ugt i64 %i.hfb, -64
  %or.cond9201 = select i1 %min.iters.check7976, i1 true, i1 %diff.check7978
  br i1 %or.cond9201, label %.lr.ph203.i.i.preheader, label %vector.main.loop.iter.check7979

vector.main.loop.iter.check7979:                  ; preds = %iter.check7991
  %min.iters.check7980 = icmp ult i32 %i.hey, 31
  br i1 %min.iters.check7980, label %vec.epilog.ph7995, label %vector.ph7981

vector.ph7981:                                    ; preds = %vector.main.loop.iter.check7979
  %i.hfc = and i64 %i.hfa, 24
  %n.vec7982 = and i64 %i.hfa, 8589934560         ; 5 uses
  %i.hfd = shl nuw nsw i64 %n.vec7982, 1          ; 2 uses
  %i.hfe = getelementptr i8, ptr %.2.lcssa.i37.i945, i64 %i.hfd
  %i.hff = getelementptr i8, ptr %.237.lcssa.i.i944, i64 %i.hfd
  %i.hfg = trunc i64 %n.vec7982 to i32
  %i.hfh = add i32 %.241.lcssa.i.i943, %i.hfg
  %i.hfi = insertelement <16 x float> poison, float %i.gyz, i64 0
  %i.hfj = shufflevector <16 x float> %i.hfi, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hfk = insertelement <8 x float> poison, float %i.gyz, i64 0
  %i.hfl = shufflevector <8 x float> %i.hfk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hfm = insertelement <4 x float> poison, float %i.gyz, i64 0
  %i.hfn = shufflevector <4 x float> %i.hfm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hfo = insertelement <2 x float> poison, float %i.gyz, i64 0
  %i.hfp = shufflevector <2 x float> %i.hfo, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7983

vector.body7983:                                  ; preds = %vector.ph7981, %vector.body7983
  %index7984 = phi i64 [ 0, %vector.ph7981 ], [ %index.next7988, %vector.body7983 ] ; 2 uses
  %i.hfq = shl i64 %index7984, 1                  ; 2 uses
  %next.gep7985 = getelementptr i8, ptr %.2.lcssa.i37.i945, i64 %i.hfq
  %next.gep7986 = getelementptr i8, ptr %.237.lcssa.i.i944, i64 %i.hfq
  %wide.load7987 = load <32 x i16>, ptr %next.gep7985, align 2, !tbaa !558
  %i.hfr = zext <32 x i16> %wide.load7987 to <32 x i32>
  %i.hfs = shl nuw <32 x i32> %i.hfr, splat (i32 16)
  %i.hft = bitcast <32 x i32> %i.hfs to <32 x float> ; 6 uses
  %i.hfu = extractelement <32 x float> %i.hft, i64 0
  %i.hfv = tail call fast float @llvm.pow.f32(float %i.hfu, float %i.gyz)
  %i.hfw = shufflevector <32 x float> %i.hft, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.hfx = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.hfw, <16 x float> %i.hfj)
  %i.hfy = shufflevector <32 x float> %i.hft, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.hfz = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.hfy, <8 x float> %i.hfl)
  %i.hga = shufflevector <32 x float> %i.hft, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.hgb = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.hga, <4 x float> %i.hfn)
  %i.hgc = extractelement <32 x float> %i.hft, i64 29
  %i.hgd = tail call fast float @llvm.pow.f32(float %i.hgc, float %i.gyz)
  %i.hge = shufflevector <32 x float> %i.hft, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.hgf = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.hge, <2 x float> %i.hfp)
  %i.hgg = insertelement <32 x float> poison, float %i.hfv, i64 0
  %i.hgh = shufflevector <16 x float> %i.hfx, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hgi = shufflevector <32 x float> %i.hgg, <32 x float> %i.hgh, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hgj = shufflevector <8 x float> %i.hfz, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hgk = shufflevector <32 x float> %i.hgi, <32 x float> %i.hgj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hgl = shufflevector <4 x float> %i.hgb, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hgm = shufflevector <32 x float> %i.hgk, <32 x float> %i.hgl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.hgn = insertelement <32 x float> %i.hgm, float %i.hgd, i64 29
  %i.hgo = shufflevector <2 x float> %i.hgf, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hgp = shufflevector <32 x float> %i.hgn, <32 x float> %i.hgo, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.hgq = bitcast <32 x float> %i.hgp to <32 x i32>
  %i.hgr = lshr <32 x i32> %i.hgq, splat (i32 16)
  %i.hgs = trunc nuw <32 x i32> %i.hgr to <32 x i16>
  store <32 x i16> %i.hgs, ptr %next.gep7986, align 2, !tbaa !558
  %index.next7988 = add nuw i64 %index7984, 32    ; 2 uses
  %i.hgt = icmp eq i64 %index.next7988, %n.vec7982
  br i1 %i.hgt, label %middle.block7989, label %vector.body7983, !llvm.loop !197

middle.block7989:                                 ; preds = %vector.body7983
  %cmp.n7990 = icmp eq i64 %i.hfa, %n.vec7982
  br i1 %cmp.n7990, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7992

vec.epilog.iter.check7992:                        ; preds = %middle.block7989
  %min.epilog.iters.check7994 = icmp eq i64 %i.hfc, 0
  br i1 %min.epilog.iters.check7994, label %.lr.ph203.i.i.preheader, label %vec.epilog.ph7995, !prof !561

vec.epilog.ph7995:                                ; preds = %vector.main.loop.iter.check7979, %vec.epilog.iter.check7992
  %vec.epilog.resume.val7996 = phi i64 [ %n.vec7982, %vec.epilog.iter.check7992 ], [ 0, %vector.main.loop.iter.check7979 ]
  %n.vec7997 = and i64 %i.hfa, 8589934584         ; 4 uses
  %i.hgu = shl nuw nsw i64 %n.vec7997, 1          ; 2 uses
  %i.hgv = getelementptr i8, ptr %.2.lcssa.i37.i945, i64 %i.hgu
  %i.hgw = getelementptr i8, ptr %.237.lcssa.i.i944, i64 %i.hgu
  %i.hgx = trunc i64 %n.vec7997 to i32
  %i.hgy = add i32 %.241.lcssa.i.i943, %i.hgx
  %i.hgz = insertelement <4 x float> poison, float %i.gyz, i64 0
  %i.hha = shufflevector <4 x float> %i.hgz, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7998

vec.epilog.vector.body7998:                       ; preds = %vec.epilog.vector.body7998, %vec.epilog.ph7995
  %index7999 = phi i64 [ %vec.epilog.resume.val7996, %vec.epilog.ph7995 ], [ %index.next8003, %vec.epilog.vector.body7998 ] ; 2 uses
  %i.hhb = shl i64 %index7999, 1                  ; 2 uses
  %next.gep8000 = getelementptr i8, ptr %.2.lcssa.i37.i945, i64 %i.hhb
  %next.gep8001 = getelementptr i8, ptr %.237.lcssa.i.i944, i64 %i.hhb
  %wide.load8002 = load <8 x i16>, ptr %next.gep8000, align 2, !tbaa !558
  %i.hhc = zext <8 x i16> %wide.load8002 to <8 x i32>
  %i.hhd = shl nuw <8 x i32> %i.hhc, splat (i32 16)
  %i.hhe = bitcast <8 x i32> %i.hhd to <8 x float> ; 5 uses
  %i.hhf = extractelement <8 x float> %i.hhe, i64 0
  %i.hhg = tail call fast float @llvm.pow.f32(float %i.hhf, float %i.gyz)
  %i.hhh = extractelement <8 x float> %i.hhe, i64 1
  %i.hhi = tail call fast float @llvm.pow.f32(float %i.hhh, float %i.gyz)
  %i.hhj = extractelement <8 x float> %i.hhe, i64 2
  %i.hhk = tail call fast float @llvm.pow.f32(float %i.hhj, float %i.gyz)
  %i.hhl = shufflevector <8 x float> %i.hhe, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hhm = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.hhl, <4 x float> %i.hha)
  %i.hhn = extractelement <8 x float> %i.hhe, i64 7
  %i.hho = tail call fast float @llvm.pow.f32(float %i.hhn, float %i.gyz)
  %i.hhp = insertelement <8 x float> poison, float %i.hhg, i64 0
  %i.hhq = insertelement <8 x float> %i.hhp, float %i.hhi, i64 1
  %i.hhr = insertelement <8 x float> %i.hhq, float %i.hhk, i64 2
  %i.hhs = shufflevector <4 x float> %i.hhm, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hht = shufflevector <8 x float> %i.hhr, <8 x float> %i.hhs, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.hhu = insertelement <8 x float> %i.hht, float %i.hho, i64 7
  %i.hhv = bitcast <8 x float> %i.hhu to <8 x i32>
  %i.hhw = lshr <8 x i32> %i.hhv, splat (i32 16)
  %i.hhx = trunc nuw <8 x i32> %i.hhw to <8 x i16>
  store <8 x i16> %i.hhx, ptr %next.gep8001, align 2, !tbaa !558
  %index.next8003 = add nuw i64 %index7999, 8     ; 2 uses
  %i.hhy = icmp eq i64 %index.next8003, %n.vec7997
  br i1 %i.hhy, label %vec.epilog.middle.block8004, label %vec.epilog.vector.body7998, !llvm.loop !198

vec.epilog.middle.block8004:                      ; preds = %vec.epilog.vector.body7998
  %cmp.n8005 = icmp eq i64 %i.hfa, %n.vec7997
  br i1 %cmp.n8005, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i.i.preheader

.lr.ph203.i.i.preheader:                          ; preds = %iter.check7991, %vec.epilog.iter.check7992, %vec.epilog.middle.block8004
  %.3202.i.i.ph = phi ptr [ %.2.lcssa.i37.i945, %iter.check7991 ], [ %i.hfe, %vec.epilog.iter.check7992 ], [ %i.hgv, %vec.epilog.middle.block8004 ] ; 3 uses
  %.338201.i.i.ph = phi ptr [ %.237.lcssa.i.i944, %iter.check7991 ], [ %i.hff, %vec.epilog.iter.check7992 ], [ %i.hgw, %vec.epilog.middle.block8004 ] ; 3 uses
  %.342200.i.i.ph = phi i32 [ %.241.lcssa.i.i943, %iter.check7991 ], [ %i.hfh, %vec.epilog.iter.check7992 ], [ %i.hgy, %vec.epilog.middle.block8004 ] ; 4 uses
  %i.hhz = sub i32 %i.gmz, %.342200.i.i.ph
  %.neg11085 = add i32 %.342200.i.i.ph, 1
  %xtraiter10626 = and i32 %i.hhz, 1
  %lcmp.mod10627.not = icmp eq i32 %xtraiter10626, 0
  br i1 %lcmp.mod10627.not, label %.lr.ph203.i.i.prol.loopexit, label %.lr.ph203.i.i.prol

.lr.ph203.i.i.prol:                               ; preds = %.lr.ph203.i.i.preheader
  %i.hia = getelementptr inbounds nuw i8, ptr %.3202.i.i.ph, i64 2
  %i.hib = load i16, ptr %.3202.i.i.ph, align 2, !tbaa !558
  %i.hic = zext i16 %i.hib to i32
  %i.hid = shl nuw i32 %i.hic, 16
  %i.hie = bitcast i32 %i.hid to float
  %i.hif = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hie, float %i.gyz)
  %i.hig = bitcast float %i.hif to i32
  %i.hih = lshr i32 %i.hig, 16
  %i.hii = trunc nuw i32 %i.hih to i16
  %i.hij = getelementptr inbounds nuw i8, ptr %.338201.i.i.ph, i64 2
  store i16 %i.hii, ptr %.338201.i.i.ph, align 2, !tbaa !558
  %i.hik = add nuw nsw i32 %.342200.i.i.ph, 1
  br label %.lr.ph203.i.i.prol.loopexit

.lr.ph203.i.i.prol.loopexit:                      ; preds = %.lr.ph203.i.i.prol, %.lr.ph203.i.i.preheader
  %.3202.i.i.unr = phi ptr [ %.3202.i.i.ph, %.lr.ph203.i.i.preheader ], [ %i.hia, %.lr.ph203.i.i.prol ]
  %.338201.i.i.unr = phi ptr [ %.338201.i.i.ph, %.lr.ph203.i.i.preheader ], [ %i.hij, %.lr.ph203.i.i.prol ]
  %.342200.i.i.unr = phi i32 [ %.342200.i.i.ph, %.lr.ph203.i.i.preheader ], [ %i.hik, %.lr.ph203.i.i.prol ]
  %i.hil = icmp eq i32 %i.gmz, %.neg11085
  br i1 %i.hil, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i.i

.lr.ph196.i.i:                                    ; preds = %.preheader179.i.i, %.lr.ph196.i.i
  %.2195.i.i = phi ptr [ %i.hkz, %.lr.ph196.i.i ], [ %.1.lcssa.i35.i941, %.preheader179.i.i ] ; 2 uses
  %.237194.i.i = phi ptr [ %i.hla, %.lr.ph196.i.i ], [ %.136.lcssa.i.i940, %.preheader179.i.i ] ; 2 uses
  %.241193.i.i = phi i32 [ %i.hlb, %.lr.ph196.i.i ], [ %.140.lcssa.i.i939, %.preheader179.i.i ]
  %i.him = load i64, ptr %.2195.i.i, align 1, !tbaa !555
  %i.hin = insertelement <2 x i64> poison, i64 %i.him, i64 0
  %i.hio = bitcast <2 x i64> %i.hin to <8 x i16>
  %i.hip = shufflevector <8 x i16> %i.hio, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.hiq = bitcast <8 x i16> %i.hip to <4 x float>
  %i.hir = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hiq, <4 x float> splat (float f0x00800000))
  %i.his = bitcast <4 x float> %i.hir to <4 x i32> ; 2 uses
  %i.hit = lshr <4 x i32> %i.his, splat (i32 23)
  %i.hiu = and <4 x i32> %i.his, splat (i32 -2139095041)
  %i.hiv = or disjoint <4 x i32> %i.hiu, splat (i32 1056964608)
  %i.hiw = bitcast <4 x i32> %i.hiv to <4 x float> ; 3 uses
  %i.hix = add nsw <4 x i32> %i.hit, splat (i32 -127)
  %i.hiy = sitofp fast <4 x i32> %i.hix to <4 x float> ; 2 uses
  %i.hiz = fadd fast <4 x float> %i.hiy, splat (float 1.000000e+00)
  %i.hja = fcmp fast olt <4 x float> %i.hiw, splat (float f0x3F3504F3) ; 2 uses
  %i.hjb = select <4 x i1> %i.hja, <4 x float> %i.hiw, <4 x float> zeroinitializer
  %i.hjc = fadd fast <4 x float> %i.hiw, splat (float -1.000000e+00)
  %i.hjd = select fast <4 x i1> %i.hja, <4 x float> %i.hiy, <4 x float> %i.hiz ; 2 uses
  %i.hje = fadd fast <4 x float> %i.hjc, %i.hjb   ; 12 uses
  %i.hjf = fmul fast <4 x float> %i.hje, %i.hje   ; 2 uses
  %i.hjg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hje, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.hjh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjg, <4 x float> nofpclass(nan inf) %i.hje, <4 x float> splat (float f0x3DEF251A))
  %i.hji = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjh, <4 x float> nofpclass(nan inf) %i.hje, <4 x float> splat (float f0xBDFE5D4F))
  %i.hjj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hji, <4 x float> nofpclass(nan inf) %i.hje, <4 x float> splat (float f0x3E11E9BF))
  %i.hjk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjj, <4 x float> nofpclass(nan inf) %i.hje, <4 x float> splat (float f0xBE2AAE50))
  %i.hjl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjk, <4 x float> nofpclass(nan inf) %i.hje, <4 x float> splat (float f0x3E4CCEAC))
  %i.hjm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjl, <4 x float> nofpclass(nan inf) %i.hje, <4 x float> splat (float f0xBE7FFFFC))
  %i.hjn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjm, <4 x float> nofpclass(nan inf) %i.hje, <4 x float> splat (float f0x3EAAAAAA))
  %i.hjo = fmul fast <4 x float> %i.hjf, %i.hje
  %i.hjp = fmul fast <4 x float> %i.hjo, %i.hjn
  %i.hjq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjd, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hjp)
  %i.hjr = fneg fast <4 x float> %i.hjf
  %i.hjs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hjr, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.hjq)
  %i.hjt = fadd fast <4 x float> %i.hjs, %i.hje
  %i.hju = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjd, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hjt)
  %i.hjv = fmul fast <4 x float> %i.hju, %i.gzu
  %i.hjw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hjv, <4 x float> splat (float f0x42B0C0A5))
  %i.hjx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hjw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hjy = fmul fast <4 x float> %i.hjx, splat (float f0x3FB8AA3B)
  %i.hjz = fadd fast <4 x float> %i.hjy, splat (float 5.000000e-01) ; 2 uses
  %i.hka = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hjz)
  %i.hkb = sitofp fast <4 x i32> %i.hka to <4 x float> ; 2 uses
  %i.hkc = fcmp fast olt <4 x float> %i.hjz, %i.hkb
  %i.hkd = select <4 x i1> %i.hkc, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hke = fsub fast <4 x float> %i.hkb, %i.hkd   ; 2 uses
  %i.hkf = fneg fast <4 x float> %i.hke           ; 2 uses
  %i.hkg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hkf, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hjx)
  %i.hkh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hkf, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hkg) ; 8 uses
  %i.hki = fmul fast <4 x float> %i.hkh, %i.hkh
  %i.hkj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hkh, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.hkk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hkj, <4 x float> nofpclass(nan inf) %i.hkh, <4 x float> splat (float f0x3C088908))
  %i.hkl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hkk, <4 x float> nofpclass(nan inf) %i.hkh, <4 x float> splat (float f0x3D2AA9C1))
  %i.hkm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hkl, <4 x float> nofpclass(nan inf) %i.hkh, <4 x float> splat (float f0x3E2AAAAA))
  %i.hkn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hkm, <4 x float> nofpclass(nan inf) %i.hkh, <4 x float> splat (float 5.000000e-01))
  %i.hko = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hkn, <4 x float> nofpclass(nan inf) %i.hki, <4 x float> nofpclass(nan inf) %i.hkh)
  %i.hkp = fadd fast <4 x float> %i.hko, splat (float 1.000000e+00)
  %i.hkq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hke)
  %i.hkr = shl <4 x i32> %i.hkq, splat (i32 23)
  %i.hks = add <4 x i32> %i.hkr, splat (i32 1065353216)
  %i.hkt = bitcast <4 x i32> %i.hks to <4 x float>
  %i.hku = fmul fast <4 x float> %i.hkp, %i.hkt
  %i.hkv = shufflevector <4 x float> %i.hku, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.hkw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.hkv)
  %i.hkx = bitcast <8 x bfloat> %i.hkw to <2 x i64>
  %i.hky = extractelement <2 x i64> %i.hkx, i64 0
  store i64 %i.hky, ptr %.237194.i.i, align 1, !tbaa !555
  %i.hkz = getelementptr inbounds nuw i8, ptr %.2195.i.i, i64 8 ; 2 uses
  %i.hla = getelementptr inbounds nuw i8, ptr %.237194.i.i, i64 8 ; 2 uses
  %i.hlb = add nuw nsw i32 %.241193.i.i, 4        ; 3 uses
  %i.hlc = or disjoint i32 %i.hlb, 3
  %i.hld = icmp slt i32 %i.hlc, %i.gmz
  br i1 %i.hld, label %.lr.ph196.i.i, label %.preheader.i36.i942, !llvm.loop !199

.lr.ph203.i.i:                                    ; preds = %.lr.ph203.i.i.prol.loopexit, %.lr.ph203.i.i
  %.3202.i.i = phi ptr [ %i.hlo, %.lr.ph203.i.i ], [ %.3202.i.i.unr, %.lr.ph203.i.i.prol.loopexit ] ; 3 uses
  %.338201.i.i = phi ptr [ %i.hlx, %.lr.ph203.i.i ], [ %.338201.i.i.unr, %.lr.ph203.i.i.prol.loopexit ] ; 3 uses
  %.342200.i.i = phi i32 [ %i.hly, %.lr.ph203.i.i ], [ %.342200.i.i.unr, %.lr.ph203.i.i.prol.loopexit ]
  %i.hle = getelementptr inbounds nuw i8, ptr %.3202.i.i, i64 2
  %i.hlf = load i16, ptr %.3202.i.i, align 2, !tbaa !558
  %i.hlg = zext i16 %i.hlf to i32
  %i.hlh = shl nuw i32 %i.hlg, 16
  %i.hli = bitcast i32 %i.hlh to float
  %i.hlj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hli, float %i.gyz)
  %i.hlk = bitcast float %i.hlj to i32
  %i.hll = lshr i32 %i.hlk, 16
  %i.hlm = trunc nuw i32 %i.hll to i16
  %i.hln = getelementptr inbounds nuw i8, ptr %.338201.i.i, i64 2
  store i16 %i.hlm, ptr %.338201.i.i, align 2, !tbaa !558
  %i.hlo = getelementptr inbounds nuw i8, ptr %.3202.i.i, i64 4
  %i.hlp = load i16, ptr %i.hle, align 2, !tbaa !558
  %i.hlq = zext i16 %i.hlp to i32
  %i.hlr = shl nuw i32 %i.hlq, 16
  %i.hls = bitcast i32 %i.hlr to float
  %i.hlt = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hls, float %i.gyz)
  %i.hlu = bitcast float %i.hlt to i32
  %i.hlv = lshr i32 %i.hlu, 16
  %i.hlw = trunc nuw i32 %i.hlv to i16
  %i.hlx = getelementptr inbounds nuw i8, ptr %.338201.i.i, i64 4
  store i16 %i.hlw, ptr %i.hln, align 2, !tbaa !558
  %i.hly = add nuw nsw i32 %.342200.i.i, 2        ; 2 uses
  %exitcond.not.i38.i946.1 = icmp eq i32 %i.hly, %i.gmz
  br i1 %exitcond.not.i38.i946.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i.i, !llvm.loop !200

bb.fr:                                            ; preds = %bb.fk
  %i.hlz = icmp eq i32 %3, 1
  br i1 %i.hlz, label %bb.fs, label %bb.gb

bb.fs:                                            ; preds = %bb.fr
  %i.hma = load i16, ptr %0, align 2, !tbaa !558
  %i.hmb = zext i16 %i.hma to i32
  %i.hmc = shl nuw i32 %i.hmb, 16
  %i.hmd = bitcast i32 %i.hmc to float            ; 15 uses
  %i.hme = icmp eq i32 %.sroa.speculated.i903, 4
  br i1 %i.hme, label %.thread178.i73.i, label %bb.ft

.thread178.i73.i:                                 ; preds = %bb.fs
  %i.hmf = load i64, ptr %0, align 2, !tbaa !555
  %i.hmg = insertelement <2 x i64> poison, i64 %i.hmf, i64 0
  %i.hmh = bitcast <2 x i64> %i.hmg to <8 x i16>
  %i.hmi = shufflevector <8 x i16> %i.hmh, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.hmj = bitcast <8 x i16> %i.hmi to <4 x float> ; 2 uses
  %i.hmk = shufflevector <4 x float> %i.hmj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.fw

bb.ft:                                            ; preds = %bb.fs
  %i.hml = insertelement <4 x float> poison, float %i.hmd, i64 0 ; 2 uses
  %i.hmm = shufflevector <4 x float> %i.hml, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.hmn = icmp eq i32 %.sroa.speculated.i903, 8
  br i1 %i.hmn, label %.thread177.i72.i, label %bb.fu

.thread177.i72.i:                                 ; preds = %bb.ft
  %i.hmo = load <8 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.hmp = fpext fast <8 x bfloat> %i.hmo to <8 x float>
  br label %bb.fw

bb.fu:                                            ; preds = %bb.ft
  %i.hmq = shufflevector <4 x float> %i.hml, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.hmr = icmp eq i32 %.sroa.speculated.i903, 16
  br i1 %i.hmr, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.hms = load <16 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.hmt = fpext fast <16 x bfloat> %i.hms to <16 x float>
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fu, %.thread177.i72.i, %.thread178.i73.i
  %i.hmu = phi <8 x float> [ %i.hmp, %.thread177.i72.i ], [ %i.hmq, %bb.fu ], [ %i.hmk, %.thread178.i73.i ] ; 2 uses
  %i.hmv = phi <4 x float> [ %i.hmm, %.thread177.i72.i ], [ %i.hmm, %bb.fu ], [ %i.hmj, %.thread178.i73.i ]
  %i.hmw = shufflevector <8 x float> %i.hmu, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.hmx = phi <8 x float> [ %i.hmq, %bb.fv ], [ %i.hmu, %bb.fw ]
  %i.hmy = phi <4 x float> [ %i.hmm, %bb.fv ], [ %i.hmv, %bb.fw ]
  %i.hmz = phi fast <16 x float> [ %i.hmt, %bb.fv ], [ %i.hmw, %bb.fw ]
  %i.hna = icmp sgt i32 %i.gmz, 15
  br i1 %i.hna, label %.lr.ph.i67.i935, label %.preheader180.i42.i

.lr.ph.i67.i935:                                  ; preds = %bb.fx
  %i.hnb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.hmz, <16 x float> splat (float f0x00800000), i32 4)
  %i.hnc = bitcast <16 x float> %i.hnb to <16 x i32> ; 2 uses
  %i.hnd = lshr <16 x i32> %i.hnc, splat (i32 23)
  %i.hne = and <16 x i32> %i.hnc, splat (i32 -2139095041)
  %i.hnf = or disjoint <16 x i32> %i.hne, splat (i32 1056964608)
  %i.hng = bitcast <16 x i32> %i.hnf to <16 x float> ; 3 uses
  %i.hnh = add nsw <16 x i32> %i.hnd, splat (i32 -127)
  %i.hni = sitofp fast <16 x i32> %i.hnh to <16 x float> ; 2 uses
  %i.hnj = fadd fast <16 x float> %i.hni, splat (float 1.000000e+00)
  %i.hnk = fcmp fast olt <16 x float> %i.hng, splat (float f0x3F3504F3) ; 2 uses
  %i.hnl = fadd fast <16 x float> %i.hng, splat (float -1.000000e+00)
  %i.hnm = select fast <16 x i1> %i.hnk, <16 x float> %i.hni, <16 x float> %i.hnj ; 2 uses
  %i.hnn = select fast <16 x i1> %i.hnk, <16 x float> %i.hng, <16 x float> zeroinitializer
  %i.hno = fadd fast <16 x float> %i.hnl, %i.hnn  ; 12 uses
  %i.hnp = fmul fast <16 x float> %i.hno, %i.hno  ; 2 uses
  %i.hnq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hno, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.hnr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hnq, <16 x float> nofpclass(nan inf) %i.hno, <16 x float> splat (float f0x3DEF251A))
  %i.hns = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hnr, <16 x float> nofpclass(nan inf) %i.hno, <16 x float> splat (float f0xBDFE5D4F))
  %i.hnt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hns, <16 x float> nofpclass(nan inf) %i.hno, <16 x float> splat (float f0x3E11E9BF))
  %i.hnu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hnt, <16 x float> nofpclass(nan inf) %i.hno, <16 x float> splat (float f0xBE2AAE50))
  %i.hnv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hnu, <16 x float> nofpclass(nan inf) %i.hno, <16 x float> splat (float f0x3E4CCEAC))
  %i.hnw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hnv, <16 x float> nofpclass(nan inf) %i.hno, <16 x float> splat (float f0xBE7FFFFC))
  %i.hnx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hnw, <16 x float> nofpclass(nan inf) %i.hno, <16 x float> splat (float f0x3EAAAAAA))
  %i.hny = fmul fast <16 x float> %i.hnp, %i.hno
  %i.hnz = fmul fast <16 x float> %i.hny, %i.hnx
  %i.hoa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hnm, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.hnz)
  %i.hob = fneg fast <16 x float> %i.hnp
  %i.hoc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.hob, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.hoa)
  %i.hod = fadd fast <16 x float> %i.hoc, %i.hno
  %i.hoe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hnm, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.hod)
  br label %bb.fy

.preheader180.loopexit.i71.i:                     ; preds = %bb.fy
  %i.hof = and i32 %i.gmz, 2147483632
  br label %.preheader180.i42.i

.preheader180.i42.i:                              ; preds = %.preheader180.loopexit.i71.i, %bb.fx
  %.039.lcssa.i43.i924 = phi i32 [ 0, %bb.fx ], [ %i.hof, %.preheader180.loopexit.i71.i ] ; 3 uses
  %.035.lcssa.i44.i925 = phi ptr [ %2, %bb.fx ], [ %i.hqo, %.preheader180.loopexit.i71.i ] ; 2 uses
  %.0.lcssa.i45.i926 = phi ptr [ %1, %bb.fx ], [ %i.hqn, %.preheader180.loopexit.i71.i ] ; 2 uses
  %i.hog = or disjoint i32 %.039.lcssa.i43.i924, 7
  %i.hoh = icmp slt i32 %i.hog, %i.gmz
  br i1 %i.hoh, label %.lr.ph189.i63.i, label %.preheader179.i46.i

.lr.ph189.i63.i:                                  ; preds = %.preheader180.i42.i
  %i.hoi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hmx, <8 x float> splat (float f0x00800000))
  %i.hoj = bitcast <8 x float> %i.hoi to <8 x i32> ; 2 uses
  %i.hok = lshr <8 x i32> %i.hoj, splat (i32 23)
  %i.hol = and <8 x i32> %i.hoj, splat (i32 -2139095041)
  %i.hom = or disjoint <8 x i32> %i.hol, splat (i32 1056964608)
  %i.hon = bitcast <8 x i32> %i.hom to <8 x float> ; 3 uses
  %i.hoo = add nsw <8 x i32> %i.hok, splat (i32 -127)
  %i.hop = sitofp fast <8 x i32> %i.hoo to <8 x float> ; 2 uses
  %i.hoq = fadd fast <8 x float> %i.hop, splat (float 1.000000e+00)
  %i.hor = fcmp fast olt <8 x float> %i.hon, splat (float f0x3F3504F3) ; 2 uses
  %i.hos = select <8 x i1> %i.hor, <8 x float> %i.hon, <8 x float> zeroinitializer
  %i.hot = fadd fast <8 x float> %i.hon, splat (float -1.000000e+00)
  %i.hou = select fast <8 x i1> %i.hor, <8 x float> %i.hop, <8 x float> %i.hoq ; 2 uses
  %i.hov = fadd fast <8 x float> %i.hot, %i.hos   ; 12 uses
  %i.how = fmul fast <8 x float> %i.hov, %i.hov   ; 2 uses
  %i.hox = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hov, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.hoy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hox, <8 x float> nofpclass(nan inf) %i.hov, <8 x float> splat (float f0x3DEF251A))
  %i.hoz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hoy, <8 x float> nofpclass(nan inf) %i.hov, <8 x float> splat (float f0xBDFE5D4F))
  %i.hpa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hoz, <8 x float> nofpclass(nan inf) %i.hov, <8 x float> splat (float f0x3E11E9BF))
  %i.hpb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hpa, <8 x float> nofpclass(nan inf) %i.hov, <8 x float> splat (float f0xBE2AAE50))
  %i.hpc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hpb, <8 x float> nofpclass(nan inf) %i.hov, <8 x float> splat (float f0x3E4CCEAC))
  %i.hpd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hpc, <8 x float> nofpclass(nan inf) %i.hov, <8 x float> splat (float f0xBE7FFFFC))
  %i.hpe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hpd, <8 x float> nofpclass(nan inf) %i.hov, <8 x float> splat (float f0x3EAAAAAA))
  %i.hpf = fmul fast <8 x float> %i.how, %i.hov
  %i.hpg = fmul fast <8 x float> %i.hpf, %i.hpe
  %i.hph = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hou, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hpg)
  %i.hpi = fneg fast <8 x float> %i.how
  %i.hpj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hpi, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.hph)
  %i.hpk = fadd fast <8 x float> %i.hpj, %i.hov
  %i.hpl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hou, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hpk)
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fy, %.lr.ph.i67.i935
  %.0183.i68.i = phi ptr [ %1, %.lr.ph.i67.i935 ], [ %i.hqn, %bb.fy ] ; 2 uses
  %.035182.i69.i = phi ptr [ %2, %.lr.ph.i67.i935 ], [ %i.hqo, %bb.fy ] ; 2 uses
  %.039181.i70.i = phi i32 [ 0, %.lr.ph.i67.i935 ], [ %i.hqp, %bb.fy ]
  %i.hpm = load <16 x bfloat>, ptr %.0183.i68.i, align 1, !tbaa !555
  %i.hpn = fpext fast <16 x bfloat> %i.hpm to <16 x float>
  %i.hpo = fmul fast <16 x float> %i.hoe, %i.hpn
  %i.hpp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.hpo, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.hpq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.hpp, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.hpr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hpq, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hps = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.hpr, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.hpt = fcmp fast ogt <16 x float> %i.hps, %i.hpr
  %i.hpu = fadd fast <16 x float> %i.hps, splat (float -1.000000e+00)
  %i.hpv = select fast <16 x i1> %i.hpt, <16 x float> %i.hpu, <16 x float> %i.hps ; 2 uses
  %i.hpw = fneg fast <16 x float> %i.hpv          ; 2 uses
  %i.hpx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.hpw, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.hpq)
  %i.hpy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.hpw, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.hpx) ; 8 uses
  %i.hpz = fmul fast <16 x float> %i.hpy, %i.hpy
  %i.hqa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hpy, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.hqb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hqa, <16 x float> nofpclass(nan inf) %i.hpy, <16 x float> splat (float f0x3C088908))
  %i.hqc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hqb, <16 x float> nofpclass(nan inf) %i.hpy, <16 x float> splat (float f0x3D2AA9C1))
  %i.hqd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hqc, <16 x float> nofpclass(nan inf) %i.hpy, <16 x float> splat (float f0x3E2AAAAA))
  %i.hqe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hqd, <16 x float> nofpclass(nan inf) %i.hpy, <16 x float> splat (float 5.000000e-01))
  %i.hqf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hqe, <16 x float> nofpclass(nan inf) %i.hpz, <16 x float> nofpclass(nan inf) %i.hpy)
  %i.hqg = fadd fast <16 x float> %i.hqf, splat (float 1.000000e+00)
  %i.hqh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hpv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hqi = shl <16 x i32> %i.hqh, splat (i32 23)
  %i.hqj = add <16 x i32> %i.hqi, splat (i32 1065353216)
  %i.hqk = bitcast <16 x i32> %i.hqj to <16 x float>
  %i.hql = fmul fast <16 x float> %i.hqg, %i.hqk
  %i.hqm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hql)
  store <16 x bfloat> %i.hqm, ptr %.035182.i69.i, align 1, !tbaa !555
  %i.hqn = getelementptr inbounds nuw i8, ptr %.0183.i68.i, i64 32 ; 2 uses
  %i.hqo = getelementptr inbounds nuw i8, ptr %.035182.i69.i, i64 32 ; 2 uses
  %i.hqp = add nuw nsw i32 %.039181.i70.i, 16     ; 2 uses
  %i.hqq = or disjoint i32 %i.hqp, 15
  %i.hqr = icmp slt i32 %i.hqq, %i.gmz
  br i1 %i.hqr, label %bb.fy, label %.preheader180.loopexit.i71.i, !llvm.loop !201

.preheader179.i46.i:                              ; preds = %bb.fz, %.preheader180.i42.i
  %.140.lcssa.i47.i927 = phi i32 [ %.039.lcssa.i43.i924, %.preheader180.i42.i ], [ %i.htb, %bb.fz ] ; 3 uses
  %.136.lcssa.i48.i928 = phi ptr [ %.035.lcssa.i44.i925, %.preheader180.i42.i ], [ %i.hta, %bb.fz ] ; 2 uses
  %.1.lcssa.i49.i929 = phi ptr [ %.0.lcssa.i45.i926, %.preheader180.i42.i ], [ %i.hsz, %bb.fz ] ; 2 uses
  %i.hqs = or disjoint i32 %.140.lcssa.i47.i927, 3
  %i.hqt = icmp slt i32 %i.hqs, %i.gmz
  br i1 %i.hqt, label %.lr.ph196.i59.i, label %.preheader.i50.i930

.lr.ph196.i59.i:                                  ; preds = %.preheader179.i46.i
  %i.hqu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hmy, <4 x float> splat (float f0x00800000))
  %i.hqv = bitcast <4 x float> %i.hqu to <4 x i32> ; 2 uses
  %i.hqw = lshr <4 x i32> %i.hqv, splat (i32 23)
  %i.hqx = and <4 x i32> %i.hqv, splat (i32 -2139095041)
  %i.hqy = or disjoint <4 x i32> %i.hqx, splat (i32 1056964608)
  %i.hqz = bitcast <4 x i32> %i.hqy to <4 x float> ; 3 uses
  %i.hra = add nsw <4 x i32> %i.hqw, splat (i32 -127)
  %i.hrb = sitofp fast <4 x i32> %i.hra to <4 x float> ; 2 uses
  %i.hrc = fadd fast <4 x float> %i.hrb, splat (float 1.000000e+00)
  %i.hrd = fcmp fast olt <4 x float> %i.hqz, splat (float f0x3F3504F3) ; 2 uses
  %i.hre = select <4 x i1> %i.hrd, <4 x float> %i.hqz, <4 x float> zeroinitializer
  %i.hrf = fadd fast <4 x float> %i.hqz, splat (float -1.000000e+00)
  %i.hrg = select fast <4 x i1> %i.hrd, <4 x float> %i.hrb, <4 x float> %i.hrc ; 2 uses
  %i.hrh = fadd fast <4 x float> %i.hrf, %i.hre   ; 12 uses
  %i.hri = fmul fast <4 x float> %i.hrh, %i.hrh   ; 2 uses
  %i.hrj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hrh, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.hrk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hrj, <4 x float> nofpclass(nan inf) %i.hrh, <4 x float> splat (float f0x3DEF251A))
  %i.hrl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hrk, <4 x float> nofpclass(nan inf) %i.hrh, <4 x float> splat (float f0xBDFE5D4F))
  %i.hrm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hrl, <4 x float> nofpclass(nan inf) %i.hrh, <4 x float> splat (float f0x3E11E9BF))
  %i.hrn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hrm, <4 x float> nofpclass(nan inf) %i.hrh, <4 x float> splat (float f0xBE2AAE50))
  %i.hro = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hrn, <4 x float> nofpclass(nan inf) %i.hrh, <4 x float> splat (float f0x3E4CCEAC))
  %i.hrp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hro, <4 x float> nofpclass(nan inf) %i.hrh, <4 x float> splat (float f0xBE7FFFFC))
  %i.hrq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hrp, <4 x float> nofpclass(nan inf) %i.hrh, <4 x float> splat (float f0x3EAAAAAA))
  %i.hrr = fmul fast <4 x float> %i.hri, %i.hrh
  %i.hrs = fmul fast <4 x float> %i.hrr, %i.hrq
  %i.hrt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hrg, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hrs)
  %i.hru = fneg fast <4 x float> %i.hri
  %i.hrv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hru, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.hrt)
  %i.hrw = fadd fast <4 x float> %i.hrv, %i.hrh
  %i.hrx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hrg, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hrw)
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fz, %.lr.ph189.i63.i
  %.1188.i64.i = phi ptr [ %.0.lcssa.i45.i926, %.lr.ph189.i63.i ], [ %i.hsz, %bb.fz ] ; 2 uses
  %.136187.i65.i = phi ptr [ %.035.lcssa.i44.i925, %.lr.ph189.i63.i ], [ %i.hta, %bb.fz ] ; 2 uses
  %.140186.i66.i = phi i32 [ %.039.lcssa.i43.i924, %.lr.ph189.i63.i ], [ %i.htb, %bb.fz ]
  %i.hry = load <8 x bfloat>, ptr %.1188.i64.i, align 1, !tbaa !555
  %i.hrz = fpext fast <8 x bfloat> %i.hry to <8 x float>
  %i.hsa = fmul fast <8 x float> %i.hpl, %i.hrz
  %i.hsb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hsa, <8 x float> splat (float f0x42B0C0A5))
  %i.hsc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hsb, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hsd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hsc, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hse = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hsd, i32 1) ; 2 uses
  %i.hsf = fcmp fast ogt <8 x float> %i.hse, %i.hsd
  %i.hsg = select <8 x i1> %i.hsf, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hsh = fsub fast <8 x float> %i.hse, %i.hsg   ; 2 uses
  %i.hsi = fneg fast <8 x float> %i.hsh           ; 2 uses
  %i.hsj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hsi, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hsc)
  %i.hsk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hsi, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hsj) ; 8 uses
  %i.hsl = fmul fast <8 x float> %i.hsk, %i.hsk
  %i.hsm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hsk, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.hsn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hsm, <8 x float> nofpclass(nan inf) %i.hsk, <8 x float> splat (float f0x3C088908))
  %i.hso = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hsn, <8 x float> nofpclass(nan inf) %i.hsk, <8 x float> splat (float f0x3D2AA9C1))
  %i.hsp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hso, <8 x float> nofpclass(nan inf) %i.hsk, <8 x float> splat (float f0x3E2AAAAA))
  %i.hsq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hsp, <8 x float> nofpclass(nan inf) %i.hsk, <8 x float> splat (float 5.000000e-01))
  %i.hsr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hsq, <8 x float> nofpclass(nan inf) %i.hsl, <8 x float> nofpclass(nan inf) %i.hsk)
  %i.hss = fadd fast <8 x float> %i.hsr, splat (float 1.000000e+00)
  %i.hst = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hsh)
  %i.hsu = shl <8 x i32> %i.hst, splat (i32 23)
  %i.hsv = add <8 x i32> %i.hsu, splat (i32 1065353216)
  %i.hsw = bitcast <8 x i32> %i.hsv to <8 x float>
  %i.hsx = fmul fast <8 x float> %i.hss, %i.hsw
  %i.hsy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.hsx)
  store <8 x bfloat> %i.hsy, ptr %.136187.i65.i, align 1, !tbaa !555
  %i.hsz = getelementptr inbounds nuw i8, ptr %.1188.i64.i, i64 16 ; 2 uses
  %i.hta = getelementptr inbounds nuw i8, ptr %.136187.i65.i, i64 16 ; 2 uses
  %i.htb = add nuw nsw i32 %.140186.i66.i, 8      ; 3 uses
  %i.htc = or disjoint i32 %i.htb, 7
  %i.htd = icmp slt i32 %i.htc, %i.gmz
  br i1 %i.htd, label %bb.fz, label %.preheader179.i46.i, !llvm.loop !202

.preheader.i50.i930:                              ; preds = %bb.ga, %.preheader179.i46.i
  %.241.lcssa.i51.i931 = phi i32 [ %.140.lcssa.i47.i927, %.preheader179.i46.i ], [ %i.hyf, %bb.ga ] ; 5 uses
  %.237.lcssa.i52.i932 = phi ptr [ %.136.lcssa.i48.i928, %.preheader179.i46.i ], [ %i.hye, %bb.ga ] ; 6 uses
  %.2.lcssa.i53.i933 = phi ptr [ %.1.lcssa.i49.i929, %.preheader179.i46.i ], [ %i.hyd, %bb.ga ] ; 6 uses
  %i.hte = icmp slt i32 %.241.lcssa.i51.i931, %i.gmz
  br i1 %i.hte, label %iter.check7952, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7952:                                   ; preds = %.preheader.i50.i930
  %.237.lcssa.i52.i9327936 = ptrtoaddr ptr %.237.lcssa.i52.i932 to i64
  %.2.lcssa.i53.i9337935 = ptrtoaddr ptr %.2.lcssa.i53.i933 to i64
  %i.htf = xor i32 %.241.lcssa.i51.i931, -1
  %i.htg = add i32 %i.gmz, %i.htf                 ; 3 uses
  %i.hth = zext i32 %i.htg to i64
  %i.hti = add nuw nsw i64 %i.hth, 1              ; 5 uses
  %min.iters.check7937 = icmp ult i32 %i.htg, 7
  %i.htj = sub i64 %.2.lcssa.i53.i9337935, %.237.lcssa.i52.i9327936
  %diff.check7939 = icmp ugt i64 %i.htj, -64
  %or.cond9202 = select i1 %min.iters.check7937, i1 true, i1 %diff.check7939
  br i1 %or.cond9202, label %.lr.ph203.i54.i.preheader, label %vector.main.loop.iter.check7940

vector.main.loop.iter.check7940:                  ; preds = %iter.check7952
  %min.iters.check7941 = icmp ult i32 %i.htg, 31
  br i1 %min.iters.check7941, label %vec.epilog.ph7956, label %vector.ph7942

vector.ph7942:                                    ; preds = %vector.main.loop.iter.check7940
  %i.htk = and i64 %i.hti, 24
  %n.vec7943 = and i64 %i.hti, 8589934560         ; 5 uses
  %i.htl = shl nuw nsw i64 %n.vec7943, 1          ; 2 uses
  %i.htm = getelementptr i8, ptr %.2.lcssa.i53.i933, i64 %i.htl
  %i.htn = getelementptr i8, ptr %.237.lcssa.i52.i932, i64 %i.htl
  %i.hto = trunc i64 %n.vec7943 to i32
  %i.htp = add i32 %.241.lcssa.i51.i931, %i.hto
  %i.htq = insertelement <16 x float> poison, float %i.hmd, i64 0
  %i.htr = shufflevector <16 x float> %i.htq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hts = insertelement <8 x float> poison, float %i.hmd, i64 0
  %i.htt = shufflevector <8 x float> %i.hts, <8 x float> poison, <8 x i32> zeroinitializer
  %i.htu = insertelement <4 x float> poison, float %i.hmd, i64 0
  %i.htv = shufflevector <4 x float> %i.htu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.htw = insertelement <2 x float> poison, float %i.hmd, i64 0
  %i.htx = shufflevector <2 x float> %i.htw, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7944

vector.body7944:                                  ; preds = %vector.ph7942, %vector.body7944
  %index7945 = phi i64 [ 0, %vector.ph7942 ], [ %index.next7949, %vector.body7944 ] ; 2 uses
  %i.hty = shl i64 %index7945, 1                  ; 2 uses
  %next.gep7946 = getelementptr i8, ptr %.2.lcssa.i53.i933, i64 %i.hty
  %next.gep7947 = getelementptr i8, ptr %.237.lcssa.i52.i932, i64 %i.hty
  %wide.load7948 = load <32 x i16>, ptr %next.gep7946, align 2, !tbaa !558
  %i.htz = zext <32 x i16> %wide.load7948 to <32 x i32>
  %i.hua = shl nuw <32 x i32> %i.htz, splat (i32 16)
  %i.hub = bitcast <32 x i32> %i.hua to <32 x float> ; 6 uses
  %i.huc = extractelement <32 x float> %i.hub, i64 0
  %i.hud = tail call fast float @llvm.pow.f32(float %i.hmd, float %i.huc)
  %i.hue = shufflevector <32 x float> %i.hub, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.huf = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.htr, <16 x float> %i.hue)
  %i.hug = shufflevector <32 x float> %i.hub, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.huh = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.htt, <8 x float> %i.hug)
  %i.hui = shufflevector <32 x float> %i.hub, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.huj = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.htv, <4 x float> %i.hui)
  %i.huk = extractelement <32 x float> %i.hub, i64 29
  %i.hul = tail call fast float @llvm.pow.f32(float %i.hmd, float %i.huk)
  %i.hum = shufflevector <32 x float> %i.hub, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.hun = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.htx, <2 x float> %i.hum)
  %i.huo = insertelement <32 x float> poison, float %i.hud, i64 0
  %i.hup = shufflevector <16 x float> %i.huf, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.huq = shufflevector <32 x float> %i.huo, <32 x float> %i.hup, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hur = shufflevector <8 x float> %i.huh, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hus = shufflevector <32 x float> %i.huq, <32 x float> %i.hur, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hut = shufflevector <4 x float> %i.huj, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.huu = shufflevector <32 x float> %i.hus, <32 x float> %i.hut, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.huv = insertelement <32 x float> %i.huu, float %i.hul, i64 29
  %i.huw = shufflevector <2 x float> %i.hun, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hux = shufflevector <32 x float> %i.huv, <32 x float> %i.huw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.huy = bitcast <32 x float> %i.hux to <32 x i32>
  %i.huz = lshr <32 x i32> %i.huy, splat (i32 16)
  %i.hva = trunc nuw <32 x i32> %i.huz to <32 x i16>
  store <32 x i16> %i.hva, ptr %next.gep7947, align 2, !tbaa !558
  %index.next7949 = add nuw i64 %index7945, 32    ; 2 uses
  %i.hvb = icmp eq i64 %index.next7949, %n.vec7943
  br i1 %i.hvb, label %middle.block7950, label %vector.body7944, !llvm.loop !203

middle.block7950:                                 ; preds = %vector.body7944
  %cmp.n7951 = icmp eq i64 %i.hti, %n.vec7943
  br i1 %cmp.n7951, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7953

vec.epilog.iter.check7953:                        ; preds = %middle.block7950
  %min.epilog.iters.check7955 = icmp eq i64 %i.htk, 0
  br i1 %min.epilog.iters.check7955, label %.lr.ph203.i54.i.preheader, label %vec.epilog.ph7956, !prof !561

vec.epilog.ph7956:                                ; preds = %vector.main.loop.iter.check7940, %vec.epilog.iter.check7953
  %vec.epilog.resume.val7957 = phi i64 [ %n.vec7943, %vec.epilog.iter.check7953 ], [ 0, %vector.main.loop.iter.check7940 ]
  %n.vec7958 = and i64 %i.hti, 8589934584         ; 4 uses
  %i.hvc = shl nuw nsw i64 %n.vec7958, 1          ; 2 uses
  %i.hvd = getelementptr i8, ptr %.2.lcssa.i53.i933, i64 %i.hvc
  %i.hve = getelementptr i8, ptr %.237.lcssa.i52.i932, i64 %i.hvc
  %i.hvf = trunc i64 %n.vec7958 to i32
  %i.hvg = add i32 %.241.lcssa.i51.i931, %i.hvf
  %i.hvh = insertelement <4 x float> poison, float %i.hmd, i64 0
  %i.hvi = shufflevector <4 x float> %i.hvh, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7959

vec.epilog.vector.body7959:                       ; preds = %vec.epilog.vector.body7959, %vec.epilog.ph7956
  %index7960 = phi i64 [ %vec.epilog.resume.val7957, %vec.epilog.ph7956 ], [ %index.next7964, %vec.epilog.vector.body7959 ] ; 2 uses
  %i.hvj = shl i64 %index7960, 1                  ; 2 uses
  %next.gep7961 = getelementptr i8, ptr %.2.lcssa.i53.i933, i64 %i.hvj
  %next.gep7962 = getelementptr i8, ptr %.237.lcssa.i52.i932, i64 %i.hvj
  %wide.load7963 = load <8 x i16>, ptr %next.gep7961, align 2, !tbaa !558
  %i.hvk = zext <8 x i16> %wide.load7963 to <8 x i32>
  %i.hvl = shl nuw <8 x i32> %i.hvk, splat (i32 16)
  %i.hvm = bitcast <8 x i32> %i.hvl to <8 x float> ; 5 uses
  %i.hvn = extractelement <8 x float> %i.hvm, i64 0
  %i.hvo = tail call fast float @llvm.pow.f32(float %i.hmd, float %i.hvn)
  %i.hvp = extractelement <8 x float> %i.hvm, i64 1
  %i.hvq = tail call fast float @llvm.pow.f32(float %i.hmd, float %i.hvp)
  %i.hvr = extractelement <8 x float> %i.hvm, i64 2
  %i.hvs = tail call fast float @llvm.pow.f32(float %i.hmd, float %i.hvr)
  %i.hvt = shufflevector <8 x float> %i.hvm, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hvu = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.hvi, <4 x float> %i.hvt)
  %i.hvv = extractelement <8 x float> %i.hvm, i64 7
  %i.hvw = tail call fast float @llvm.pow.f32(float %i.hmd, float %i.hvv)
  %i.hvx = insertelement <8 x float> poison, float %i.hvo, i64 0
  %i.hvy = insertelement <8 x float> %i.hvx, float %i.hvq, i64 1
  %i.hvz = insertelement <8 x float> %i.hvy, float %i.hvs, i64 2
  %i.hwa = shufflevector <4 x float> %i.hvu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hwb = shufflevector <8 x float> %i.hvz, <8 x float> %i.hwa, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.hwc = insertelement <8 x float> %i.hwb, float %i.hvw, i64 7
  %i.hwd = bitcast <8 x float> %i.hwc to <8 x i32>
  %i.hwe = lshr <8 x i32> %i.hwd, splat (i32 16)
  %i.hwf = trunc nuw <8 x i32> %i.hwe to <8 x i16>
  store <8 x i16> %i.hwf, ptr %next.gep7962, align 2, !tbaa !558
  %index.next7964 = add nuw i64 %index7960, 8     ; 2 uses
  %i.hwg = icmp eq i64 %index.next7964, %n.vec7958
  br i1 %i.hwg, label %vec.epilog.middle.block7965, label %vec.epilog.vector.body7959, !llvm.loop !204

vec.epilog.middle.block7965:                      ; preds = %vec.epilog.vector.body7959
  %cmp.n7966 = icmp eq i64 %i.hti, %n.vec7958
  br i1 %cmp.n7966, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i54.i.preheader

.lr.ph203.i54.i.preheader:                        ; preds = %iter.check7952, %vec.epilog.iter.check7953, %vec.epilog.middle.block7965
  %.3202.i55.i.ph = phi ptr [ %.2.lcssa.i53.i933, %iter.check7952 ], [ %i.htm, %vec.epilog.iter.check7953 ], [ %i.hvd, %vec.epilog.middle.block7965 ] ; 3 uses
  %.338201.i56.i.ph = phi ptr [ %.237.lcssa.i52.i932, %iter.check7952 ], [ %i.htn, %vec.epilog.iter.check7953 ], [ %i.hve, %vec.epilog.middle.block7965 ] ; 3 uses
  %.342200.i57.i.ph = phi i32 [ %.241.lcssa.i51.i931, %iter.check7952 ], [ %i.htp, %vec.epilog.iter.check7953 ], [ %i.hvg, %vec.epilog.middle.block7965 ] ; 4 uses
  %i.hwh = sub i32 %i.gmz, %.342200.i57.i.ph
  %.neg11084 = add i32 %.342200.i57.i.ph, 1
  %xtraiter10624 = and i32 %i.hwh, 1
  %lcmp.mod10625.not = icmp eq i32 %xtraiter10624, 0
  br i1 %lcmp.mod10625.not, label %.lr.ph203.i54.i.prol.loopexit, label %.lr.ph203.i54.i.prol

.lr.ph203.i54.i.prol:                             ; preds = %.lr.ph203.i54.i.preheader
  %i.hwi = getelementptr inbounds nuw i8, ptr %.3202.i55.i.ph, i64 2
  %i.hwj = load i16, ptr %.3202.i55.i.ph, align 2, !tbaa !558
  %i.hwk = zext i16 %i.hwj to i32
  %i.hwl = shl nuw i32 %i.hwk, 16
  %i.hwm = bitcast i32 %i.hwl to float
  %i.hwn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hmd, float %i.hwm)
  %i.hwo = bitcast float %i.hwn to i32
  %i.hwp = lshr i32 %i.hwo, 16
  %i.hwq = trunc nuw i32 %i.hwp to i16
  %i.hwr = getelementptr inbounds nuw i8, ptr %.338201.i56.i.ph, i64 2
  store i16 %i.hwq, ptr %.338201.i56.i.ph, align 2, !tbaa !558
  %i.hws = add nuw nsw i32 %.342200.i57.i.ph, 1
  br label %.lr.ph203.i54.i.prol.loopexit

.lr.ph203.i54.i.prol.loopexit:                    ; preds = %.lr.ph203.i54.i.prol, %.lr.ph203.i54.i.preheader
  %.3202.i55.i.unr = phi ptr [ %.3202.i55.i.ph, %.lr.ph203.i54.i.preheader ], [ %i.hwi, %.lr.ph203.i54.i.prol ]
  %.338201.i56.i.unr = phi ptr [ %.338201.i56.i.ph, %.lr.ph203.i54.i.preheader ], [ %i.hwr, %.lr.ph203.i54.i.prol ]
  %.342200.i57.i.unr = phi i32 [ %.342200.i57.i.ph, %.lr.ph203.i54.i.preheader ], [ %i.hws, %.lr.ph203.i54.i.prol ]
  %i.hwt = icmp eq i32 %i.gmz, %.neg11084
  br i1 %i.hwt, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i54.i

bb.ga:                                            ; preds = %bb.ga, %.lr.ph196.i59.i
  %.2195.i60.i = phi ptr [ %.1.lcssa.i49.i929, %.lr.ph196.i59.i ], [ %i.hyd, %bb.ga ] ; 2 uses
  %.237194.i61.i = phi ptr [ %.136.lcssa.i48.i928, %.lr.ph196.i59.i ], [ %i.hye, %bb.ga ] ; 2 uses
  %.241193.i62.i = phi i32 [ %.140.lcssa.i47.i927, %.lr.ph196.i59.i ], [ %i.hyf, %bb.ga ]
  %i.hwu = load i64, ptr %.2195.i60.i, align 1, !tbaa !555
  %i.hwv = insertelement <2 x i64> poison, i64 %i.hwu, i64 0
  %i.hww = bitcast <2 x i64> %i.hwv to <8 x i16>
  %i.hwx = shufflevector <8 x i16> %i.hww, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.hwy = bitcast <8 x i16> %i.hwx to <4 x float>
  %i.hwz = fmul fast <4 x float> %i.hrx, %i.hwy
  %i.hxa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hwz, <4 x float> splat (float f0x42B0C0A5))
  %i.hxb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hxa, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hxc = fmul fast <4 x float> %i.hxb, splat (float f0x3FB8AA3B)
  %i.hxd = fadd fast <4 x float> %i.hxc, splat (float 5.000000e-01) ; 2 uses
  %i.hxe = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hxd)
  %i.hxf = sitofp fast <4 x i32> %i.hxe to <4 x float> ; 2 uses
  %i.hxg = fcmp fast olt <4 x float> %i.hxd, %i.hxf
  %i.hxh = select <4 x i1> %i.hxg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hxi = fsub fast <4 x float> %i.hxf, %i.hxh   ; 2 uses
  %i.hxj = fneg fast <4 x float> %i.hxi           ; 2 uses
  %i.hxk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hxj, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hxb)
  %i.hxl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hxj, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hxk) ; 8 uses
  %i.hxm = fmul fast <4 x float> %i.hxl, %i.hxl
  %i.hxn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hxl, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.hxo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hxn, <4 x float> nofpclass(nan inf) %i.hxl, <4 x float> splat (float f0x3C088908))
  %i.hxp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hxo, <4 x float> nofpclass(nan inf) %i.hxl, <4 x float> splat (float f0x3D2AA9C1))
  %i.hxq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hxp, <4 x float> nofpclass(nan inf) %i.hxl, <4 x float> splat (float f0x3E2AAAAA))
  %i.hxr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hxq, <4 x float> nofpclass(nan inf) %i.hxl, <4 x float> splat (float 5.000000e-01))
  %i.hxs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hxr, <4 x float> nofpclass(nan inf) %i.hxm, <4 x float> nofpclass(nan inf) %i.hxl)
  %i.hxt = fadd fast <4 x float> %i.hxs, splat (float 1.000000e+00)
  %i.hxu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hxi)
  %i.hxv = shl <4 x i32> %i.hxu, splat (i32 23)
  %i.hxw = add <4 x i32> %i.hxv, splat (i32 1065353216)
  %i.hxx = bitcast <4 x i32> %i.hxw to <4 x float>
  %i.hxy = fmul fast <4 x float> %i.hxt, %i.hxx
  %i.hxz = shufflevector <4 x float> %i.hxy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.hya = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.hxz)
  %i.hyb = bitcast <8 x bfloat> %i.hya to <2 x i64>
  %i.hyc = extractelement <2 x i64> %i.hyb, i64 0
  store i64 %i.hyc, ptr %.237194.i61.i, align 1, !tbaa !555
  %i.hyd = getelementptr inbounds nuw i8, ptr %.2195.i60.i, i64 8 ; 2 uses
  %i.hye = getelementptr inbounds nuw i8, ptr %.237194.i61.i, i64 8 ; 2 uses
  %i.hyf = add nuw nsw i32 %.241193.i62.i, 4      ; 3 uses
  %i.hyg = or disjoint i32 %i.hyf, 3
  %i.hyh = icmp slt i32 %i.hyg, %i.gmz
  br i1 %i.hyh, label %bb.ga, label %.preheader.i50.i930, !llvm.loop !205

.lr.ph203.i54.i:                                  ; preds = %.lr.ph203.i54.i.prol.loopexit, %.lr.ph203.i54.i
  %.3202.i55.i = phi ptr [ %i.hys, %.lr.ph203.i54.i ], [ %.3202.i55.i.unr, %.lr.ph203.i54.i.prol.loopexit ] ; 3 uses
  %.338201.i56.i = phi ptr [ %i.hzb, %.lr.ph203.i54.i ], [ %.338201.i56.i.unr, %.lr.ph203.i54.i.prol.loopexit ] ; 3 uses
  %.342200.i57.i = phi i32 [ %i.hzc, %.lr.ph203.i54.i ], [ %.342200.i57.i.unr, %.lr.ph203.i54.i.prol.loopexit ]
  %i.hyi = getelementptr inbounds nuw i8, ptr %.3202.i55.i, i64 2
  %i.hyj = load i16, ptr %.3202.i55.i, align 2, !tbaa !558
  %i.hyk = zext i16 %i.hyj to i32
  %i.hyl = shl nuw i32 %i.hyk, 16
  %i.hym = bitcast i32 %i.hyl to float
  %i.hyn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hmd, float %i.hym)
  %i.hyo = bitcast float %i.hyn to i32
  %i.hyp = lshr i32 %i.hyo, 16
  %i.hyq = trunc nuw i32 %i.hyp to i16
  %i.hyr = getelementptr inbounds nuw i8, ptr %.338201.i56.i, i64 2
  store i16 %i.hyq, ptr %.338201.i56.i, align 2, !tbaa !558
  %i.hys = getelementptr inbounds nuw i8, ptr %.3202.i55.i, i64 4
  %i.hyt = load i16, ptr %i.hyi, align 2, !tbaa !558
  %i.hyu = zext i16 %i.hyt to i32
  %i.hyv = shl nuw i32 %i.hyu, 16
  %i.hyw = bitcast i32 %i.hyv to float
  %i.hyx = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hmd, float %i.hyw)
  %i.hyy = bitcast float %i.hyx to i32
  %i.hyz = lshr i32 %i.hyy, 16
  %i.hza = trunc nuw i32 %i.hyz to i16
  %i.hzb = getelementptr inbounds nuw i8, ptr %.338201.i56.i, i64 4
  store i16 %i.hza, ptr %i.hyr, align 2, !tbaa !558
  %i.hzc = add nuw nsw i32 %.342200.i57.i, 2      ; 2 uses
  %exitcond.not.i58.i934.1 = icmp eq i32 %i.hzc, %i.gmz
  br i1 %exitcond.not.i58.i934.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i54.i, !llvm.loop !206

bb.gb:                                            ; preds = %bb.fr, %bb.fh
  %i.hzd = icmp eq i32 %6, 1
  br i1 %i.hzd, label %bb.gc, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.gc:                                            ; preds = %bb.gb
  %i.hze = icmp eq i32 %3, %4
  br i1 %i.hze, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  switch i32 %.sroa.speculated.i903, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.preheader.i76.i923
    i32 8, label %.preheader167.i.i
    i32 4, label %.preheader169.i.i
  ]

.preheader169.i.i:                                ; preds = %bb.gd
  %i.hzf = icmp sgt i32 %.sroa.speculated98.i902, 0
  br i1 %i.hzf, label %.lr.ph.i74.i921, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader167.i.i:                                ; preds = %bb.gd
  %i.hzg = icmp sgt i32 %.sroa.speculated98.i902, 0
  br i1 %i.hzg, label %.lr.ph179.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i76.i923:                              ; preds = %bb.gd
  %i.hzh = icmp sgt i32 %.sroa.speculated98.i902, 0
  br i1 %i.hzh, label %.lr.ph184.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph184.i.i:                                    ; preds = %.preheader.i76.i923, %.lr.ph184.i.i
  %.031183.i.i = phi ptr [ %i.ibt, %.lr.ph184.i.i ], [ %0, %.preheader.i76.i923 ] ; 2 uses
  %.033182.i.i = phi ptr [ %i.ibu, %.lr.ph184.i.i ], [ %1, %.preheader.i76.i923 ] ; 2 uses
  %.036181.i.i = phi i32 [ %i.ibw, %.lr.ph184.i.i ], [ 0, %.preheader.i76.i923 ]
  %.037180.i.i = phi ptr [ %i.ibv, %.lr.ph184.i.i ], [ %2, %.preheader.i76.i923 ] ; 2 uses
  %i.hzi = load <16 x bfloat>, ptr %.031183.i.i, align 1, !tbaa !555
  %i.hzj = fpext fast <16 x bfloat> %i.hzi to <16 x float>
  %i.hzk = load i16, ptr %.033182.i.i, align 2, !tbaa !558
  %i.hzl = zext i16 %i.hzk to i32
  %i.hzm = shl nuw i32 %i.hzl, 16
  %i.hzn = insertelement <16 x i32> poison, i32 %i.hzm, i64 0
  %i.hzo = bitcast <16 x i32> %i.hzn to <16 x float>
  %i.hzp = shufflevector <16 x float> %i.hzo, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hzq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.hzj, <16 x float> splat (float f0x00800000), i32 4)
  %i.hzr = bitcast <16 x float> %i.hzq to <16 x i32> ; 2 uses
  %i.hzs = lshr <16 x i32> %i.hzr, splat (i32 23)
  %i.hzt = and <16 x i32> %i.hzr, splat (i32 -2139095041)
  %i.hzu = or disjoint <16 x i32> %i.hzt, splat (i32 1056964608)
  %i.hzv = bitcast <16 x i32> %i.hzu to <16 x float> ; 3 uses
  %i.hzw = add nsw <16 x i32> %i.hzs, splat (i32 -127)
  %i.hzx = sitofp fast <16 x i32> %i.hzw to <16 x float> ; 2 uses
  %i.hzy = fadd fast <16 x float> %i.hzx, splat (float 1.000000e+00)
  %i.hzz = fcmp fast olt <16 x float> %i.hzv, splat (float f0x3F3504F3) ; 2 uses
  %i.iaa = fadd fast <16 x float> %i.hzv, splat (float -1.000000e+00)
  %i.iab = select fast <16 x i1> %i.hzz, <16 x float> %i.hzx, <16 x float> %i.hzy ; 2 uses
  %i.iac = select fast <16 x i1> %i.hzz, <16 x float> %i.hzv, <16 x float> zeroinitializer
  %i.iad = fadd fast <16 x float> %i.iaa, %i.iac  ; 12 uses
  %i.iae = fmul fast <16 x float> %i.iad, %i.iad  ; 2 uses
  %i.iaf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iad, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.iag = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iaf, <16 x float> nofpclass(nan inf) %i.iad, <16 x float> splat (float f0x3DEF251A))
  %i.iah = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iag, <16 x float> nofpclass(nan inf) %i.iad, <16 x float> splat (float f0xBDFE5D4F))
  %i.iai = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iah, <16 x float> nofpclass(nan inf) %i.iad, <16 x float> splat (float f0x3E11E9BF))
  %i.iaj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iai, <16 x float> nofpclass(nan inf) %i.iad, <16 x float> splat (float f0xBE2AAE50))
  %i.iak = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iaj, <16 x float> nofpclass(nan inf) %i.iad, <16 x float> splat (float f0x3E4CCEAC))
  %i.ial = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iak, <16 x float> nofpclass(nan inf) %i.iad, <16 x float> splat (float f0xBE7FFFFC))
  %i.iam = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ial, <16 x float> nofpclass(nan inf) %i.iad, <16 x float> splat (float f0x3EAAAAAA))
  %i.ian = fmul fast <16 x float> %i.iae, %i.iad
  %i.iao = fmul fast <16 x float> %i.ian, %i.iam
  %i.iap = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iab, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.iao)
  %i.iaq = fneg fast <16 x float> %i.iae
  %i.iar = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.iaq, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.iap)
  %i.ias = fadd fast <16 x float> %i.iar, %i.iad
  %i.iat = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iab, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ias)
  %i.iau = fmul fast <16 x float> %i.iat, %i.hzp
  %i.iav = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.iau, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.iaw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.iav, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.iax = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iaw, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.iay = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.iax, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.iaz = fcmp fast ogt <16 x float> %i.iay, %i.iax
  %i.iba = fadd fast <16 x float> %i.iay, splat (float -1.000000e+00)
  %i.ibb = select fast <16 x i1> %i.iaz, <16 x float> %i.iba, <16 x float> %i.iay ; 2 uses
  %i.ibc = fneg fast <16 x float> %i.ibb          ; 2 uses
  %i.ibd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ibc, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.iaw)
  %i.ibe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ibc, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ibd) ; 8 uses
  %i.ibf = fmul fast <16 x float> %i.ibe, %i.ibe
  %i.ibg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ibe, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ibh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ibg, <16 x float> nofpclass(nan inf) %i.ibe, <16 x float> splat (float f0x3C088908))
  %i.ibi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ibh, <16 x float> nofpclass(nan inf) %i.ibe, <16 x float> splat (float f0x3D2AA9C1))
  %i.ibj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ibi, <16 x float> nofpclass(nan inf) %i.ibe, <16 x float> splat (float f0x3E2AAAAA))
  %i.ibk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ibj, <16 x float> nofpclass(nan inf) %i.ibe, <16 x float> splat (float 5.000000e-01))
  %i.ibl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ibk, <16 x float> nofpclass(nan inf) %i.ibf, <16 x float> nofpclass(nan inf) %i.ibe)
  %i.ibm = fadd fast <16 x float> %i.ibl, splat (float 1.000000e+00)
  %i.ibn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ibb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ibo = shl <16 x i32> %i.ibn, splat (i32 23)
  %i.ibp = add <16 x i32> %i.ibo, splat (i32 1065353216)
  %i.ibq = bitcast <16 x i32> %i.ibp to <16 x float>
  %i.ibr = fmul fast <16 x float> %i.ibm, %i.ibq
  %i.ibs = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ibr)
  store <16 x bfloat> %i.ibs, ptr %.037180.i.i, align 1, !tbaa !555
  %i.ibt = getelementptr inbounds nuw i8, ptr %.031183.i.i, i64 32
  %i.ibu = getelementptr inbounds nuw i8, ptr %.033182.i.i, i64 2
  %i.ibv = getelementptr inbounds nuw i8, ptr %.037180.i.i, i64 32
  %i.ibw = add nuw nsw i32 %.036181.i.i, 1        ; 2 uses
  %exitcond188.not.i.i = icmp eq i32 %i.ibw, %.sroa.speculated98.i902
  br i1 %exitcond188.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph184.i.i, !llvm.loop !207

.lr.ph179.i.i:                                    ; preds = %.preheader167.i.i, %.lr.ph179.i.i
  %.1178.i.i = phi ptr [ %i.iei, %.lr.ph179.i.i ], [ %0, %.preheader167.i.i ] ; 2 uses
  %.032177.i.i = phi i32 [ %i.iel, %.lr.ph179.i.i ], [ 0, %.preheader167.i.i ]
  %.134176.i.i = phi ptr [ %i.iej, %.lr.ph179.i.i ], [ %1, %.preheader167.i.i ] ; 2 uses
  %.138175.i.i = phi ptr [ %i.iek, %.lr.ph179.i.i ], [ %2, %.preheader167.i.i ] ; 2 uses
  %i.ibx = load <8 x bfloat>, ptr %.1178.i.i, align 1, !tbaa !555
  %i.iby = fpext fast <8 x bfloat> %i.ibx to <8 x float>
  %i.ibz = load i16, ptr %.134176.i.i, align 2, !tbaa !558
  %i.ica = zext i16 %i.ibz to i32
  %i.icb = shl nuw i32 %i.ica, 16
  %i.icc = insertelement <8 x i32> poison, i32 %i.icb, i64 0
  %i.icd = bitcast <8 x i32> %i.icc to <8 x float>
  %i.ice = shufflevector <8 x float> %i.icd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.icf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.iby, <8 x float> splat (float f0x00800000))
  %i.icg = bitcast <8 x float> %i.icf to <8 x i32> ; 2 uses
  %i.ich = lshr <8 x i32> %i.icg, splat (i32 23)
  %i.ici = and <8 x i32> %i.icg, splat (i32 -2139095041)
  %i.icj = or disjoint <8 x i32> %i.ici, splat (i32 1056964608)
  %i.ick = bitcast <8 x i32> %i.icj to <8 x float> ; 3 uses
  %i.icl = add nsw <8 x i32> %i.ich, splat (i32 -127)
  %i.icm = sitofp fast <8 x i32> %i.icl to <8 x float> ; 2 uses
  %i.icn = fadd fast <8 x float> %i.icm, splat (float 1.000000e+00)
  %i.ico = fcmp fast olt <8 x float> %i.ick, splat (float f0x3F3504F3) ; 2 uses
  %i.icp = select <8 x i1> %i.ico, <8 x float> %i.ick, <8 x float> zeroinitializer
  %i.icq = fadd fast <8 x float> %i.ick, splat (float -1.000000e+00)
  %i.icr = select fast <8 x i1> %i.ico, <8 x float> %i.icm, <8 x float> %i.icn ; 2 uses
  %i.ics = fadd fast <8 x float> %i.icq, %i.icp   ; 12 uses
  %i.ict = fmul fast <8 x float> %i.ics, %i.ics   ; 2 uses
  %i.icu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ics, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.icv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.icu, <8 x float> nofpclass(nan inf) %i.ics, <8 x float> splat (float f0x3DEF251A))
  %i.icw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.icv, <8 x float> nofpclass(nan inf) %i.ics, <8 x float> splat (float f0xBDFE5D4F))
  %i.icx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.icw, <8 x float> nofpclass(nan inf) %i.ics, <8 x float> splat (float f0x3E11E9BF))
  %i.icy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.icx, <8 x float> nofpclass(nan inf) %i.ics, <8 x float> splat (float f0xBE2AAE50))
  %i.icz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.icy, <8 x float> nofpclass(nan inf) %i.ics, <8 x float> splat (float f0x3E4CCEAC))
  %i.ida = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.icz, <8 x float> nofpclass(nan inf) %i.ics, <8 x float> splat (float f0xBE7FFFFC))
  %i.idb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ida, <8 x float> nofpclass(nan inf) %i.ics, <8 x float> splat (float f0x3EAAAAAA))
  %i.idc = fmul fast <8 x float> %i.ict, %i.ics
  %i.idd = fmul fast <8 x float> %i.idc, %i.idb
  %i.ide = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.icr, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.idd)
  %i.idf = fneg fast <8 x float> %i.ict
  %i.idg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.idf, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ide)
  %i.idh = fadd fast <8 x float> %i.idg, %i.ics
  %i.idi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.icr, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.idh)
  %i.idj = fmul fast <8 x float> %i.idi, %i.ice
  %i.idk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.idj, <8 x float> splat (float f0x42B0C0A5))
  %i.idl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.idk, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.idm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idl, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.idn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.idm, i32 1) ; 2 uses
  %i.ido = fcmp fast ogt <8 x float> %i.idn, %i.idm
  %i.idp = select <8 x i1> %i.ido, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.idq = fsub fast <8 x float> %i.idn, %i.idp   ; 2 uses
  %i.idr = fneg fast <8 x float> %i.idq           ; 2 uses
  %i.ids = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.idr, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.idl)
  %i.idt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.idr, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ids) ; 8 uses
  %i.idu = fmul fast <8 x float> %i.idt, %i.idt
  %i.idv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idt, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.idw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idv, <8 x float> nofpclass(nan inf) %i.idt, <8 x float> splat (float f0x3C088908))
  %i.idx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idw, <8 x float> nofpclass(nan inf) %i.idt, <8 x float> splat (float f0x3D2AA9C1))
  %i.idy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idx, <8 x float> nofpclass(nan inf) %i.idt, <8 x float> splat (float f0x3E2AAAAA))
  %i.idz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idy, <8 x float> nofpclass(nan inf) %i.idt, <8 x float> splat (float 5.000000e-01))
  %i.iea = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idz, <8 x float> nofpclass(nan inf) %i.idu, <8 x float> nofpclass(nan inf) %i.idt)
  %i.ieb = fadd fast <8 x float> %i.iea, splat (float 1.000000e+00)
  %i.iec = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.idq)
  %i.ied = shl <8 x i32> %i.iec, splat (i32 23)
  %i.iee = add <8 x i32> %i.ied, splat (i32 1065353216)
  %i.ief = bitcast <8 x i32> %i.iee to <8 x float>
  %i.ieg = fmul fast <8 x float> %i.ieb, %i.ief
  %i.ieh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ieg)
  store <8 x bfloat> %i.ieh, ptr %.138175.i.i, align 1, !tbaa !555
  %i.iei = getelementptr inbounds nuw i8, ptr %.1178.i.i, i64 16
  %i.iej = getelementptr inbounds nuw i8, ptr %.134176.i.i, i64 2
  %i.iek = getelementptr inbounds nuw i8, ptr %.138175.i.i, i64 16
  %i.iel = add nuw nsw i32 %.032177.i.i, 1        ; 2 uses
  %exitcond187.not.i.i = icmp eq i32 %i.iel, %.sroa.speculated98.i902
  br i1 %exitcond187.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph179.i.i, !llvm.loop !208

.lr.ph.i74.i921:                                  ; preds = %.preheader169.i.i, %.lr.ph.i74.i921
  %.0174.i.i = phi i32 [ %i.ihi, %.lr.ph.i74.i921 ], [ 0, %.preheader169.i.i ]
  %.2173.i.i = phi ptr [ %i.ihf, %.lr.ph.i74.i921 ], [ %0, %.preheader169.i.i ] ; 2 uses
  %.235172.i.i = phi ptr [ %i.ihg, %.lr.ph.i74.i921 ], [ %1, %.preheader169.i.i ] ; 2 uses
  %.239171.i.i = phi ptr [ %i.ihh, %.lr.ph.i74.i921 ], [ %2, %.preheader169.i.i ] ; 2 uses
  %i.iem = load i64, ptr %.2173.i.i, align 1, !tbaa !555
  %i.ien = insertelement <2 x i64> poison, i64 %i.iem, i64 0
  %i.ieo = bitcast <2 x i64> %i.ien to <8 x i16>
  %i.iep = shufflevector <8 x i16> %i.ieo, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ieq = bitcast <8 x i16> %i.iep to <4 x float>
  %i.ier = load i16, ptr %.235172.i.i, align 2, !tbaa !558
  %i.ies = zext i16 %i.ier to i32
  %i.iet = shl nuw i32 %i.ies, 16
  %i.ieu = insertelement <4 x i32> poison, i32 %i.iet, i64 0
  %i.iev = bitcast <4 x i32> %i.ieu to <4 x float>
  %i.iew = shufflevector <4 x float> %i.iev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iex = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ieq, <4 x float> splat (float f0x00800000))
  %i.iey = bitcast <4 x float> %i.iex to <4 x i32> ; 2 uses
  %i.iez = lshr <4 x i32> %i.iey, splat (i32 23)
  %i.ifa = and <4 x i32> %i.iey, splat (i32 -2139095041)
  %i.ifb = or disjoint <4 x i32> %i.ifa, splat (i32 1056964608)
  %i.ifc = bitcast <4 x i32> %i.ifb to <4 x float> ; 3 uses
  %i.ifd = add nsw <4 x i32> %i.iez, splat (i32 -127)
  %i.ife = sitofp fast <4 x i32> %i.ifd to <4 x float> ; 2 uses
  %i.iff = fadd fast <4 x float> %i.ife, splat (float 1.000000e+00)
  %i.ifg = fcmp fast olt <4 x float> %i.ifc, splat (float f0x3F3504F3) ; 2 uses
  %i.ifh = select <4 x i1> %i.ifg, <4 x float> %i.ifc, <4 x float> zeroinitializer
  %i.ifi = fadd fast <4 x float> %i.ifc, splat (float -1.000000e+00)
  %i.ifj = select fast <4 x i1> %i.ifg, <4 x float> %i.ife, <4 x float> %i.iff ; 2 uses
  %i.ifk = fadd fast <4 x float> %i.ifi, %i.ifh   ; 12 uses
  %i.ifl = fmul fast <4 x float> %i.ifk, %i.ifk   ; 2 uses
  %i.ifm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ifk, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ifn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ifm, <4 x float> nofpclass(nan inf) %i.ifk, <4 x float> splat (float f0x3DEF251A))
  %i.ifo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ifn, <4 x float> nofpclass(nan inf) %i.ifk, <4 x float> splat (float f0xBDFE5D4F))
  %i.ifp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ifo, <4 x float> nofpclass(nan inf) %i.ifk, <4 x float> splat (float f0x3E11E9BF))
  %i.ifq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ifp, <4 x float> nofpclass(nan inf) %i.ifk, <4 x float> splat (float f0xBE2AAE50))
  %i.ifr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ifq, <4 x float> nofpclass(nan inf) %i.ifk, <4 x float> splat (float f0x3E4CCEAC))
  %i.ifs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ifr, <4 x float> nofpclass(nan inf) %i.ifk, <4 x float> splat (float f0xBE7FFFFC))
  %i.ift = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ifs, <4 x float> nofpclass(nan inf) %i.ifk, <4 x float> splat (float f0x3EAAAAAA))
  %i.ifu = fmul fast <4 x float> %i.ifl, %i.ifk
  %i.ifv = fmul fast <4 x float> %i.ifu, %i.ift
  %i.ifw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ifj, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ifv)
  %i.ifx = fneg fast <4 x float> %i.ifl
  %i.ify = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ifx, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.ifw)
  %i.ifz = fadd fast <4 x float> %i.ify, %i.ifk
  %i.iga = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ifj, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ifz)
  %i.igb = fmul fast <4 x float> %i.iga, %i.iew
  %i.igc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.igb, <4 x float> splat (float f0x42B0C0A5))
  %i.igd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.igc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ige = fmul fast <4 x float> %i.igd, splat (float f0x3FB8AA3B)
  %i.igf = fadd fast <4 x float> %i.ige, splat (float 5.000000e-01) ; 2 uses
  %i.igg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.igf)
  %i.igh = sitofp fast <4 x i32> %i.igg to <4 x float> ; 2 uses
  %i.igi = fcmp fast olt <4 x float> %i.igf, %i.igh
  %i.igj = select <4 x i1> %i.igi, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.igk = fsub fast <4 x float> %i.igh, %i.igj   ; 2 uses
  %i.igl = fneg fast <4 x float> %i.igk           ; 2 uses
  %i.igm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.igl, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.igd)
  %i.ign = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.igl, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.igm) ; 8 uses
  %i.igo = fmul fast <4 x float> %i.ign, %i.ign
  %i.igp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ign, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.igq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.igp, <4 x float> nofpclass(nan inf) %i.ign, <4 x float> splat (float f0x3C088908))
  %i.igr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.igq, <4 x float> nofpclass(nan inf) %i.ign, <4 x float> splat (float f0x3D2AA9C1))
  %i.igs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.igr, <4 x float> nofpclass(nan inf) %i.ign, <4 x float> splat (float f0x3E2AAAAA))
  %i.igt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.igs, <4 x float> nofpclass(nan inf) %i.ign, <4 x float> splat (float 5.000000e-01))
  %i.igu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.igt, <4 x float> nofpclass(nan inf) %i.igo, <4 x float> nofpclass(nan inf) %i.ign)
  %i.igv = fadd fast <4 x float> %i.igu, splat (float 1.000000e+00)
  %i.igw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.igk)
  %i.igx = shl <4 x i32> %i.igw, splat (i32 23)
  %i.igy = add <4 x i32> %i.igx, splat (i32 1065353216)
  %i.igz = bitcast <4 x i32> %i.igy to <4 x float>
  %i.iha = fmul fast <4 x float> %i.igv, %i.igz
  %i.ihb = shufflevector <4 x float> %i.iha, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ihc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ihb)
  %i.ihd = bitcast <8 x bfloat> %i.ihc to <2 x i64>
  %i.ihe = extractelement <2 x i64> %i.ihd, i64 0
  store i64 %i.ihe, ptr %.239171.i.i, align 1, !tbaa !555
  %i.ihf = getelementptr inbounds nuw i8, ptr %.2173.i.i, i64 8
  %i.ihg = getelementptr inbounds nuw i8, ptr %.235172.i.i, i64 2
  %i.ihh = getelementptr inbounds nuw i8, ptr %.239171.i.i, i64 8
  %i.ihi = add nuw nsw i32 %.0174.i.i, 1          ; 2 uses
  %exitcond.not.i75.i922 = icmp eq i32 %i.ihi, %.sroa.speculated98.i902
  br i1 %exitcond.not.i75.i922, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i74.i921, !llvm.loop !209

bb.ge:                                            ; preds = %bb.gc
  %i.ihj = icmp eq i32 %4, 1
  br i1 %i.ihj, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %.val.i906 = load i16, ptr %1, align 2, !tbaa !558
  %i.ihk = zext i16 %.val.i906 to i32
  %i.ihl = shl nuw i32 %i.ihk, 16
  %i.ihm = bitcast i32 %i.ihl to float            ; 17 uses
  %i.ihn = insertelement <16 x float> poison, float %i.ihm, i64 0
  %i.iho = shufflevector <16 x float> %i.ihn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ihp = icmp sgt i32 %i.gmz, 15
  br i1 %i.ihp, label %.lr.ph.i85.i919, label %._crit_edge.i.i907

.lr.ph.i85.i919:                                  ; preds = %bb.gf, %.lr.ph.i85.i919
  %.0132.i.i = phi ptr [ %i.ijv, %.lr.ph.i85.i919 ], [ %0, %bb.gf ] ; 2 uses
  %.030131.i.i = phi ptr [ %i.ijw, %.lr.ph.i85.i919 ], [ %2, %bb.gf ] ; 2 uses
  %.034130.i.i = phi i32 [ %i.ijx, %.lr.ph.i85.i919 ], [ 0, %bb.gf ]
  %i.ihq = load <16 x bfloat>, ptr %.0132.i.i, align 1, !tbaa !555
  %i.ihr = fpext fast <16 x bfloat> %i.ihq to <16 x float>
  %i.ihs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ihr, <16 x float> splat (float f0x00800000), i32 4)
  %i.iht = bitcast <16 x float> %i.ihs to <16 x i32> ; 2 uses
  %i.ihu = lshr <16 x i32> %i.iht, splat (i32 23)
  %i.ihv = and <16 x i32> %i.iht, splat (i32 -2139095041)
  %i.ihw = or disjoint <16 x i32> %i.ihv, splat (i32 1056964608)
  %i.ihx = bitcast <16 x i32> %i.ihw to <16 x float> ; 3 uses
  %i.ihy = add nsw <16 x i32> %i.ihu, splat (i32 -127)
  %i.ihz = sitofp fast <16 x i32> %i.ihy to <16 x float> ; 2 uses
  %i.iia = fadd fast <16 x float> %i.ihz, splat (float 1.000000e+00)
  %i.iib = fcmp fast olt <16 x float> %i.ihx, splat (float f0x3F3504F3) ; 2 uses
  %i.iic = fadd fast <16 x float> %i.ihx, splat (float -1.000000e+00)
  %i.iid = select fast <16 x i1> %i.iib, <16 x float> %i.ihz, <16 x float> %i.iia ; 2 uses
  %i.iie = select fast <16 x i1> %i.iib, <16 x float> %i.ihx, <16 x float> zeroinitializer
  %i.iif = fadd fast <16 x float> %i.iic, %i.iie  ; 12 uses
  %i.iig = fmul fast <16 x float> %i.iif, %i.iif  ; 2 uses
  %i.iih = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iif, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.iii = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iih, <16 x float> nofpclass(nan inf) %i.iif, <16 x float> splat (float f0x3DEF251A))
  %i.iij = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iii, <16 x float> nofpclass(nan inf) %i.iif, <16 x float> splat (float f0xBDFE5D4F))
  %i.iik = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iij, <16 x float> nofpclass(nan inf) %i.iif, <16 x float> splat (float f0x3E11E9BF))
  %i.iil = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iik, <16 x float> nofpclass(nan inf) %i.iif, <16 x float> splat (float f0xBE2AAE50))
  %i.iim = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iil, <16 x float> nofpclass(nan inf) %i.iif, <16 x float> splat (float f0x3E4CCEAC))
  %i.iin = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iim, <16 x float> nofpclass(nan inf) %i.iif, <16 x float> splat (float f0xBE7FFFFC))
  %i.iio = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iin, <16 x float> nofpclass(nan inf) %i.iif, <16 x float> splat (float f0x3EAAAAAA))
  %i.iip = fmul fast <16 x float> %i.iig, %i.iif
  %i.iiq = fmul fast <16 x float> %i.iip, %i.iio
  %i.iir = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iid, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.iiq)
  %i.iis = fneg fast <16 x float> %i.iig
  %i.iit = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.iis, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.iir)
  %i.iiu = fadd fast <16 x float> %i.iit, %i.iif
  %i.iiv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iid, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.iiu)
  %i.iiw = fmul fast <16 x float> %i.iiv, %i.iho
  %i.iix = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.iiw, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.iiy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.iix, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.iiz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iiy, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ija = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.iiz, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ijb = fcmp fast ogt <16 x float> %i.ija, %i.iiz
  %i.ijc = fadd fast <16 x float> %i.ija, splat (float -1.000000e+00)
  %i.ijd = select fast <16 x i1> %i.ijb, <16 x float> %i.ijc, <16 x float> %i.ija ; 2 uses
  %i.ije = fneg fast <16 x float> %i.ijd          ; 2 uses
  %i.ijf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ije, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.iiy)
  %i.ijg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ije, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ijf) ; 8 uses
  %i.ijh = fmul fast <16 x float> %i.ijg, %i.ijg
  %i.iji = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ijg, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ijj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iji, <16 x float> nofpclass(nan inf) %i.ijg, <16 x float> splat (float f0x3C088908))
  %i.ijk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ijj, <16 x float> nofpclass(nan inf) %i.ijg, <16 x float> splat (float f0x3D2AA9C1))
  %i.ijl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ijk, <16 x float> nofpclass(nan inf) %i.ijg, <16 x float> splat (float f0x3E2AAAAA))
  %i.ijm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ijl, <16 x float> nofpclass(nan inf) %i.ijg, <16 x float> splat (float 5.000000e-01))
  %i.ijn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ijm, <16 x float> nofpclass(nan inf) %i.ijh, <16 x float> nofpclass(nan inf) %i.ijg)
  %i.ijo = fadd fast <16 x float> %i.ijn, splat (float 1.000000e+00)
  %i.ijp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ijd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ijq = shl <16 x i32> %i.ijp, splat (i32 23)
  %i.ijr = add <16 x i32> %i.ijq, splat (i32 1065353216)
  %i.ijs = bitcast <16 x i32> %i.ijr to <16 x float>
  %i.ijt = fmul fast <16 x float> %i.ijo, %i.ijs
  %i.iju = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ijt)
  store <16 x bfloat> %i.iju, ptr %.030131.i.i, align 1, !tbaa !555
  %i.ijv = getelementptr inbounds nuw i8, ptr %.0132.i.i, i64 32 ; 2 uses
  %i.ijw = getelementptr inbounds nuw i8, ptr %.030131.i.i, i64 32 ; 2 uses
  %i.ijx = add nuw nsw i32 %.034130.i.i, 16       ; 2 uses
  %i.ijy = or disjoint i32 %i.ijx, 15
  %i.ijz = icmp slt i32 %i.ijy, %i.gmz
  br i1 %i.ijz, label %.lr.ph.i85.i919, label %._crit_edge.loopexit.i.i920, !llvm.loop !210

._crit_edge.loopexit.i.i920:                      ; preds = %.lr.ph.i85.i919
  %i.ika = and i32 %i.gmz, 2147483632
  br label %._crit_edge.i.i907

._crit_edge.i.i907:                               ; preds = %._crit_edge.loopexit.i.i920, %bb.gf
  %.034.lcssa.i77.i908 = phi i32 [ 0, %bb.gf ], [ %i.ika, %._crit_edge.loopexit.i.i920 ] ; 3 uses
  %.030.lcssa.i.i909 = phi ptr [ %2, %bb.gf ], [ %i.ijw, %._crit_edge.loopexit.i.i920 ] ; 2 uses
  %.0.lcssa.i78.i910 = phi ptr [ %0, %bb.gf ], [ %i.ijv, %._crit_edge.loopexit.i.i920 ] ; 2 uses
  %i.ikb = insertelement <8 x float> poison, float %i.ihm, i64 0
  %i.ikc = shufflevector <8 x float> %i.ikb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ikd = or disjoint i32 %.034.lcssa.i77.i908, 7
  %i.ike = icmp slt i32 %i.ikd, %i.gmz
  br i1 %i.ike, label %.lr.ph139.i.i, label %._crit_edge140.i.i

.lr.ph139.i.i:                                    ; preds = %._crit_edge.i.i907, %.lr.ph139.i.i
  %.1137.i.i = phi ptr [ %i.imk, %.lr.ph139.i.i ], [ %.0.lcssa.i78.i910, %._crit_edge.i.i907 ] ; 2 uses
  %.131136.i.i = phi ptr [ %i.iml, %.lr.ph139.i.i ], [ %.030.lcssa.i.i909, %._crit_edge.i.i907 ] ; 2 uses
  %.135135.i.i = phi i32 [ %i.imm, %.lr.ph139.i.i ], [ %.034.lcssa.i77.i908, %._crit_edge.i.i907 ]
  %i.ikf = load <8 x bfloat>, ptr %.1137.i.i, align 1, !tbaa !555
  %i.ikg = fpext fast <8 x bfloat> %i.ikf to <8 x float>
  %i.ikh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ikg, <8 x float> splat (float f0x00800000))
  %i.iki = bitcast <8 x float> %i.ikh to <8 x i32> ; 2 uses
  %i.ikj = lshr <8 x i32> %i.iki, splat (i32 23)
  %i.ikk = and <8 x i32> %i.iki, splat (i32 -2139095041)
  %i.ikl = or disjoint <8 x i32> %i.ikk, splat (i32 1056964608)
  %i.ikm = bitcast <8 x i32> %i.ikl to <8 x float> ; 3 uses
  %i.ikn = add nsw <8 x i32> %i.ikj, splat (i32 -127)
  %i.iko = sitofp fast <8 x i32> %i.ikn to <8 x float> ; 2 uses
  %i.ikp = fadd fast <8 x float> %i.iko, splat (float 1.000000e+00)
  %i.ikq = fcmp fast olt <8 x float> %i.ikm, splat (float f0x3F3504F3) ; 2 uses
  %i.ikr = select <8 x i1> %i.ikq, <8 x float> %i.ikm, <8 x float> zeroinitializer
  %i.iks = fadd fast <8 x float> %i.ikm, splat (float -1.000000e+00)
  %i.ikt = select fast <8 x i1> %i.ikq, <8 x float> %i.iko, <8 x float> %i.ikp ; 2 uses
  %i.iku = fadd fast <8 x float> %i.iks, %i.ikr   ; 12 uses
  %i.ikv = fmul fast <8 x float> %i.iku, %i.iku   ; 2 uses
  %i.ikw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iku, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.ikx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ikw, <8 x float> nofpclass(nan inf) %i.iku, <8 x float> splat (float f0x3DEF251A))
  %i.iky = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ikx, <8 x float> nofpclass(nan inf) %i.iku, <8 x float> splat (float f0xBDFE5D4F))
  %i.ikz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iky, <8 x float> nofpclass(nan inf) %i.iku, <8 x float> splat (float f0x3E11E9BF))
  %i.ila = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ikz, <8 x float> nofpclass(nan inf) %i.iku, <8 x float> splat (float f0xBE2AAE50))
  %i.ilb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ila, <8 x float> nofpclass(nan inf) %i.iku, <8 x float> splat (float f0x3E4CCEAC))
  %i.ilc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ilb, <8 x float> nofpclass(nan inf) %i.iku, <8 x float> splat (float f0xBE7FFFFC))
  %i.ild = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ilc, <8 x float> nofpclass(nan inf) %i.iku, <8 x float> splat (float f0x3EAAAAAA))
  %i.ile = fmul fast <8 x float> %i.ikv, %i.iku
  %i.ilf = fmul fast <8 x float> %i.ile, %i.ild
  %i.ilg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ikt, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ilf)
  %i.ilh = fneg fast <8 x float> %i.ikv
  %i.ili = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ilh, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ilg)
  %i.ilj = fadd fast <8 x float> %i.ili, %i.iku
  %i.ilk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ikt, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ilj)
  %i.ill = fmul fast <8 x float> %i.ilk, %i.ikc
  %i.ilm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ill, <8 x float> splat (float f0x42B0C0A5))
  %i.iln = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ilm, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ilo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iln, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ilp = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ilo, i32 1) ; 2 uses
  %i.ilq = fcmp fast ogt <8 x float> %i.ilp, %i.ilo
  %i.ilr = select <8 x i1> %i.ilq, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ils = fsub fast <8 x float> %i.ilp, %i.ilr   ; 2 uses
  %i.ilt = fneg fast <8 x float> %i.ils           ; 2 uses
  %i.ilu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ilt, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.iln)
  %i.ilv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ilt, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ilu) ; 8 uses
  %i.ilw = fmul fast <8 x float> %i.ilv, %i.ilv
  %i.ilx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ilv, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ily = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ilx, <8 x float> nofpclass(nan inf) %i.ilv, <8 x float> splat (float f0x3C088908))
  %i.ilz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ily, <8 x float> nofpclass(nan inf) %i.ilv, <8 x float> splat (float f0x3D2AA9C1))
  %i.ima = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ilz, <8 x float> nofpclass(nan inf) %i.ilv, <8 x float> splat (float f0x3E2AAAAA))
  %i.imb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ima, <8 x float> nofpclass(nan inf) %i.ilv, <8 x float> splat (float 5.000000e-01))
  %i.imc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.imb, <8 x float> nofpclass(nan inf) %i.ilw, <8 x float> nofpclass(nan inf) %i.ilv)
  %i.imd = fadd fast <8 x float> %i.imc, splat (float 1.000000e+00)
  %i.ime = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ils)
  %i.imf = shl <8 x i32> %i.ime, splat (i32 23)
  %i.img = add <8 x i32> %i.imf, splat (i32 1065353216)
  %i.imh = bitcast <8 x i32> %i.img to <8 x float>
  %i.imi = fmul fast <8 x float> %i.imd, %i.imh
  %i.imj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.imi)
  store <8 x bfloat> %i.imj, ptr %.131136.i.i, align 1, !tbaa !555
  %i.imk = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 16 ; 2 uses
  %i.iml = getelementptr inbounds nuw i8, ptr %.131136.i.i, i64 16 ; 2 uses
  %i.imm = add nuw nsw i32 %.135135.i.i, 8        ; 3 uses
  %i.imn = or disjoint i32 %i.imm, 7
  %i.imo = icmp slt i32 %i.imn, %i.gmz
  br i1 %i.imo, label %.lr.ph139.i.i, label %._crit_edge140.i.i, !llvm.loop !211

._crit_edge140.i.i:                               ; preds = %.lr.ph139.i.i, %._crit_edge.i.i907
  %.135.lcssa.i79.i911 = phi i32 [ %.034.lcssa.i77.i908, %._crit_edge.i.i907 ], [ %i.imm, %.lr.ph139.i.i ] ; 3 uses
  %.131.lcssa.i.i912 = phi ptr [ %.030.lcssa.i.i909, %._crit_edge.i.i907 ], [ %i.iml, %.lr.ph139.i.i ] ; 2 uses
  %.1.lcssa.i80.i913 = phi ptr [ %.0.lcssa.i78.i910, %._crit_edge.i.i907 ], [ %i.imk, %.lr.ph139.i.i ] ; 2 uses
  %i.imp = insertelement <4 x float> poison, float %i.ihm, i64 0
  %i.imq = shufflevector <4 x float> %i.imp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.imr = or disjoint i32 %.135.lcssa.i79.i911, 3
  %i.ims = icmp slt i32 %i.imr, %i.gmz
  br i1 %i.ims, label %.lr.ph148.i.i, label %.preheader.i81.i914

.preheader.i81.i914:                              ; preds = %.lr.ph148.i.i, %._crit_edge140.i.i
  %.236.lcssa.i82.i915 = phi i32 [ %.135.lcssa.i79.i911, %._crit_edge140.i.i ], [ %i.isy, %.lr.ph148.i.i ] ; 5 uses
  %.232.lcssa.i.i916 = phi ptr [ %.131.lcssa.i.i912, %._crit_edge140.i.i ], [ %i.isx, %.lr.ph148.i.i ] ; 6 uses
  %.2.lcssa.i83.i917 = phi ptr [ %.1.lcssa.i80.i913, %._crit_edge140.i.i ], [ %i.isw, %.lr.ph148.i.i ] ; 6 uses
  %i.imt = icmp slt i32 %.236.lcssa.i82.i915, %i.gmz
  br i1 %i.imt, label %iter.check7913, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7913:                                   ; preds = %.preheader.i81.i914
  %.232.lcssa.i.i9167897 = ptrtoaddr ptr %.232.lcssa.i.i916 to i64
  %.2.lcssa.i83.i9177896 = ptrtoaddr ptr %.2.lcssa.i83.i917 to i64
  %i.imu = xor i32 %.236.lcssa.i82.i915, -1
  %i.imv = add i32 %i.gmz, %i.imu                 ; 3 uses
  %i.imw = zext i32 %i.imv to i64
  %i.imx = add nuw nsw i64 %i.imw, 1              ; 5 uses
  %min.iters.check7898 = icmp ult i32 %i.imv, 7
  %i.imy = sub i64 %.2.lcssa.i83.i9177896, %.232.lcssa.i.i9167897
  %diff.check7900 = icmp ugt i64 %i.imy, -64
  %or.cond9203 = select i1 %min.iters.check7898, i1 true, i1 %diff.check7900
  br i1 %or.cond9203, label %.lr.ph155.i.i.preheader, label %vector.main.loop.iter.check7901

vector.main.loop.iter.check7901:                  ; preds = %iter.check7913
  %min.iters.check7902 = icmp ult i32 %i.imv, 31
  br i1 %min.iters.check7902, label %vec.epilog.ph7917, label %vector.ph7903

vector.ph7903:                                    ; preds = %vector.main.loop.iter.check7901
  %i.imz = and i64 %i.imx, 24
  %n.vec7904 = and i64 %i.imx, 8589934560         ; 5 uses
  %i.ina = shl nuw nsw i64 %n.vec7904, 1          ; 2 uses
  %i.inb = getelementptr i8, ptr %.2.lcssa.i83.i917, i64 %i.ina
  %i.inc = getelementptr i8, ptr %.232.lcssa.i.i916, i64 %i.ina
  %i.ind = trunc i64 %n.vec7904 to i32
  %i.ine = add i32 %.236.lcssa.i82.i915, %i.ind
  %i.inf = insertelement <16 x float> poison, float %i.ihm, i64 0
  %i.ing = shufflevector <16 x float> %i.inf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.inh = insertelement <8 x float> poison, float %i.ihm, i64 0
  %i.ini = shufflevector <8 x float> %i.inh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.inj = insertelement <4 x float> poison, float %i.ihm, i64 0
  %i.ink = shufflevector <4 x float> %i.inj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.inl = insertelement <2 x float> poison, float %i.ihm, i64 0
  %i.inm = shufflevector <2 x float> %i.inl, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7905

vector.body7905:                                  ; preds = %vector.ph7903, %vector.body7905
  %index7906 = phi i64 [ 0, %vector.ph7903 ], [ %index.next7910, %vector.body7905 ] ; 2 uses
  %i.inn = shl i64 %index7906, 1                  ; 2 uses
  %next.gep7907 = getelementptr i8, ptr %.2.lcssa.i83.i917, i64 %i.inn
  %next.gep7908 = getelementptr i8, ptr %.232.lcssa.i.i916, i64 %i.inn
  %wide.load7909 = load <32 x i16>, ptr %next.gep7907, align 2, !tbaa !558
  %i.ino = zext <32 x i16> %wide.load7909 to <32 x i32>
  %i.inp = shl nuw <32 x i32> %i.ino, splat (i32 16)
  %i.inq = bitcast <32 x i32> %i.inp to <32 x float> ; 6 uses
  %i.inr = extractelement <32 x float> %i.inq, i64 0
  %i.ins = tail call fast float @llvm.pow.f32(float %i.inr, float %i.ihm)
  %i.int = shufflevector <32 x float> %i.inq, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.inu = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.int, <16 x float> %i.ing)
  %i.inv = shufflevector <32 x float> %i.inq, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.inw = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.inv, <8 x float> %i.ini)
  %i.inx = shufflevector <32 x float> %i.inq, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.iny = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.inx, <4 x float> %i.ink)
  %i.inz = extractelement <32 x float> %i.inq, i64 29
  %i.ioa = tail call fast float @llvm.pow.f32(float %i.inz, float %i.ihm)
  %i.iob = shufflevector <32 x float> %i.inq, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.ioc = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.iob, <2 x float> %i.inm)
  %i.iod = insertelement <32 x float> poison, float %i.ins, i64 0
  %i.ioe = shufflevector <16 x float> %i.inu, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iof = shufflevector <32 x float> %i.iod, <32 x float> %i.ioe, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iog = shufflevector <8 x float> %i.inw, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ioh = shufflevector <32 x float> %i.iof, <32 x float> %i.iog, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ioi = shufflevector <4 x float> %i.iny, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ioj = shufflevector <32 x float> %i.ioh, <32 x float> %i.ioi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.iok = insertelement <32 x float> %i.ioj, float %i.ioa, i64 29
  %i.iol = shufflevector <2 x float> %i.ioc, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iom = shufflevector <32 x float> %i.iok, <32 x float> %i.iol, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.ion = bitcast <32 x float> %i.iom to <32 x i32>
  %i.ioo = lshr <32 x i32> %i.ion, splat (i32 16)
  %i.iop = trunc nuw <32 x i32> %i.ioo to <32 x i16>
  store <32 x i16> %i.iop, ptr %next.gep7908, align 2, !tbaa !558
  %index.next7910 = add nuw i64 %index7906, 32    ; 2 uses
  %i.ioq = icmp eq i64 %index.next7910, %n.vec7904
  br i1 %i.ioq, label %middle.block7911, label %vector.body7905, !llvm.loop !212

middle.block7911:                                 ; preds = %vector.body7905
  %cmp.n7912 = icmp eq i64 %i.imx, %n.vec7904
  br i1 %cmp.n7912, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7914

vec.epilog.iter.check7914:                        ; preds = %middle.block7911
  %min.epilog.iters.check7916 = icmp eq i64 %i.imz, 0
  br i1 %min.epilog.iters.check7916, label %.lr.ph155.i.i.preheader, label %vec.epilog.ph7917, !prof !561

vec.epilog.ph7917:                                ; preds = %vector.main.loop.iter.check7901, %vec.epilog.iter.check7914
  %vec.epilog.resume.val7918 = phi i64 [ %n.vec7904, %vec.epilog.iter.check7914 ], [ 0, %vector.main.loop.iter.check7901 ]
  %n.vec7919 = and i64 %i.imx, 8589934584         ; 4 uses
  %i.ior = shl nuw nsw i64 %n.vec7919, 1          ; 2 uses
  %i.ios = getelementptr i8, ptr %.2.lcssa.i83.i917, i64 %i.ior
  %i.iot = getelementptr i8, ptr %.232.lcssa.i.i916, i64 %i.ior
  %i.iou = trunc i64 %n.vec7919 to i32
  %i.iov = add i32 %.236.lcssa.i82.i915, %i.iou
  %i.iow = insertelement <4 x float> poison, float %i.ihm, i64 0
  %i.iox = shufflevector <4 x float> %i.iow, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7920

vec.epilog.vector.body7920:                       ; preds = %vec.epilog.vector.body7920, %vec.epilog.ph7917
  %index7921 = phi i64 [ %vec.epilog.resume.val7918, %vec.epilog.ph7917 ], [ %index.next7925, %vec.epilog.vector.body7920 ] ; 2 uses
  %i.ioy = shl i64 %index7921, 1                  ; 2 uses
  %next.gep7922 = getelementptr i8, ptr %.2.lcssa.i83.i917, i64 %i.ioy
  %next.gep7923 = getelementptr i8, ptr %.232.lcssa.i.i916, i64 %i.ioy
  %wide.load7924 = load <8 x i16>, ptr %next.gep7922, align 2, !tbaa !558
  %i.ioz = zext <8 x i16> %wide.load7924 to <8 x i32>
  %i.ipa = shl nuw <8 x i32> %i.ioz, splat (i32 16)
  %i.ipb = bitcast <8 x i32> %i.ipa to <8 x float> ; 5 uses
  %i.ipc = extractelement <8 x float> %i.ipb, i64 0
  %i.ipd = tail call fast float @llvm.pow.f32(float %i.ipc, float %i.ihm)
  %i.ipe = extractelement <8 x float> %i.ipb, i64 1
  %i.ipf = tail call fast float @llvm.pow.f32(float %i.ipe, float %i.ihm)
  %i.ipg = extractelement <8 x float> %i.ipb, i64 2
  %i.iph = tail call fast float @llvm.pow.f32(float %i.ipg, float %i.ihm)
  %i.ipi = shufflevector <8 x float> %i.ipb, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ipj = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.ipi, <4 x float> %i.iox)
  %i.ipk = extractelement <8 x float> %i.ipb, i64 7
  %i.ipl = tail call fast float @llvm.pow.f32(float %i.ipk, float %i.ihm)
  %i.ipm = insertelement <8 x float> poison, float %i.ipd, i64 0
  %i.ipn = insertelement <8 x float> %i.ipm, float %i.ipf, i64 1
  %i.ipo = insertelement <8 x float> %i.ipn, float %i.iph, i64 2
  %i.ipp = shufflevector <4 x float> %i.ipj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ipq = shufflevector <8 x float> %i.ipo, <8 x float> %i.ipp, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.ipr = insertelement <8 x float> %i.ipq, float %i.ipl, i64 7
  %i.ips = bitcast <8 x float> %i.ipr to <8 x i32>
  %i.ipt = lshr <8 x i32> %i.ips, splat (i32 16)
  %i.ipu = trunc nuw <8 x i32> %i.ipt to <8 x i16>
  store <8 x i16> %i.ipu, ptr %next.gep7923, align 2, !tbaa !558
  %index.next7925 = add nuw i64 %index7921, 8     ; 2 uses
  %i.ipv = icmp eq i64 %index.next7925, %n.vec7919
  br i1 %i.ipv, label %vec.epilog.middle.block7926, label %vec.epilog.vector.body7920, !llvm.loop !213

vec.epilog.middle.block7926:                      ; preds = %vec.epilog.vector.body7920
  %cmp.n7927 = icmp eq i64 %i.imx, %n.vec7919
  br i1 %cmp.n7927, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph155.i.i.preheader

.lr.ph155.i.i.preheader:                          ; preds = %iter.check7913, %vec.epilog.iter.check7914, %vec.epilog.middle.block7926
  %.3154.i.i.ph = phi ptr [ %.2.lcssa.i83.i917, %iter.check7913 ], [ %i.inb, %vec.epilog.iter.check7914 ], [ %i.ios, %vec.epilog.middle.block7926 ] ; 3 uses
  %.333153.i.i.ph = phi ptr [ %.232.lcssa.i.i916, %iter.check7913 ], [ %i.inc, %vec.epilog.iter.check7914 ], [ %i.iot, %vec.epilog.middle.block7926 ] ; 3 uses
  %.337152.i.i.ph = phi i32 [ %.236.lcssa.i82.i915, %iter.check7913 ], [ %i.ine, %vec.epilog.iter.check7914 ], [ %i.iov, %vec.epilog.middle.block7926 ] ; 4 uses
  %i.ipw = sub i32 %i.gmz, %.337152.i.i.ph
  %.neg11083 = add i32 %.337152.i.i.ph, 1
  %xtraiter10622 = and i32 %i.ipw, 1
  %lcmp.mod10623.not = icmp eq i32 %xtraiter10622, 0
  br i1 %lcmp.mod10623.not, label %.lr.ph155.i.i.prol.loopexit, label %.lr.ph155.i.i.prol

.lr.ph155.i.i.prol:                               ; preds = %.lr.ph155.i.i.preheader
  %i.ipx = getelementptr inbounds nuw i8, ptr %.3154.i.i.ph, i64 2
  %i.ipy = load i16, ptr %.3154.i.i.ph, align 2, !tbaa !558
  %i.ipz = zext i16 %i.ipy to i32
  %i.iqa = shl nuw i32 %i.ipz, 16
  %i.iqb = bitcast i32 %i.iqa to float
  %i.iqc = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.iqb, float %i.ihm)
  %i.iqd = bitcast float %i.iqc to i32
  %i.iqe = lshr i32 %i.iqd, 16
  %i.iqf = trunc nuw i32 %i.iqe to i16
  %i.iqg = getelementptr inbounds nuw i8, ptr %.333153.i.i.ph, i64 2
  store i16 %i.iqf, ptr %.333153.i.i.ph, align 2, !tbaa !558
  %i.iqh = add nuw nsw i32 %.337152.i.i.ph, 1
  br label %.lr.ph155.i.i.prol.loopexit

.lr.ph155.i.i.prol.loopexit:                      ; preds = %.lr.ph155.i.i.prol, %.lr.ph155.i.i.preheader
  %.3154.i.i.unr = phi ptr [ %.3154.i.i.ph, %.lr.ph155.i.i.preheader ], [ %i.ipx, %.lr.ph155.i.i.prol ]
  %.333153.i.i.unr = phi ptr [ %.333153.i.i.ph, %.lr.ph155.i.i.preheader ], [ %i.iqg, %.lr.ph155.i.i.prol ]
  %.337152.i.i.unr = phi i32 [ %.337152.i.i.ph, %.lr.ph155.i.i.preheader ], [ %i.iqh, %.lr.ph155.i.i.prol ]
  %i.iqi = icmp eq i32 %i.gmz, %.neg11083
  br i1 %i.iqi, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph155.i.i

.lr.ph148.i.i:                                    ; preds = %._crit_edge140.i.i, %.lr.ph148.i.i
  %.2146.i.i = phi ptr [ %i.isw, %.lr.ph148.i.i ], [ %.1.lcssa.i80.i913, %._crit_edge140.i.i ] ; 2 uses
  %.232145.i.i = phi ptr [ %i.isx, %.lr.ph148.i.i ], [ %.131.lcssa.i.i912, %._crit_edge140.i.i ] ; 2 uses
  %.236144.i.i = phi i32 [ %i.isy, %.lr.ph148.i.i ], [ %.135.lcssa.i79.i911, %._crit_edge140.i.i ]
  %i.iqj = load i64, ptr %.2146.i.i, align 1, !tbaa !555
  %i.iqk = insertelement <2 x i64> poison, i64 %i.iqj, i64 0
  %i.iql = bitcast <2 x i64> %i.iqk to <8 x i16>
  %i.iqm = shufflevector <8 x i16> %i.iql, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.iqn = bitcast <8 x i16> %i.iqm to <4 x float>
  %i.iqo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iqn, <4 x float> splat (float f0x00800000))
  %i.iqp = bitcast <4 x float> %i.iqo to <4 x i32> ; 2 uses
  %i.iqq = lshr <4 x i32> %i.iqp, splat (i32 23)
  %i.iqr = and <4 x i32> %i.iqp, splat (i32 -2139095041)
  %i.iqs = or disjoint <4 x i32> %i.iqr, splat (i32 1056964608)
  %i.iqt = bitcast <4 x i32> %i.iqs to <4 x float> ; 3 uses
  %i.iqu = add nsw <4 x i32> %i.iqq, splat (i32 -127)
  %i.iqv = sitofp fast <4 x i32> %i.iqu to <4 x float> ; 2 uses
  %i.iqw = fadd fast <4 x float> %i.iqv, splat (float 1.000000e+00)
  %i.iqx = fcmp fast olt <4 x float> %i.iqt, splat (float f0x3F3504F3) ; 2 uses
  %i.iqy = select <4 x i1> %i.iqx, <4 x float> %i.iqt, <4 x float> zeroinitializer
  %i.iqz = fadd fast <4 x float> %i.iqt, splat (float -1.000000e+00)
  %i.ira = select fast <4 x i1> %i.iqx, <4 x float> %i.iqv, <4 x float> %i.iqw ; 2 uses
  %i.irb = fadd fast <4 x float> %i.iqz, %i.iqy   ; 12 uses
  %i.irc = fmul fast <4 x float> %i.irb, %i.irb   ; 2 uses
  %i.ird = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.irb, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ire = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ird, <4 x float> nofpclass(nan inf) %i.irb, <4 x float> splat (float f0x3DEF251A))
  %i.irf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ire, <4 x float> nofpclass(nan inf) %i.irb, <4 x float> splat (float f0xBDFE5D4F))
  %i.irg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.irf, <4 x float> nofpclass(nan inf) %i.irb, <4 x float> splat (float f0x3E11E9BF))
  %i.irh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.irg, <4 x float> nofpclass(nan inf) %i.irb, <4 x float> splat (float f0xBE2AAE50))
  %i.iri = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.irh, <4 x float> nofpclass(nan inf) %i.irb, <4 x float> splat (float f0x3E4CCEAC))
  %i.irj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iri, <4 x float> nofpclass(nan inf) %i.irb, <4 x float> splat (float f0xBE7FFFFC))
  %i.irk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.irj, <4 x float> nofpclass(nan inf) %i.irb, <4 x float> splat (float f0x3EAAAAAA))
  %i.irl = fmul fast <4 x float> %i.irc, %i.irb
  %i.irm = fmul fast <4 x float> %i.irl, %i.irk
  %i.irn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ira, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.irm)
  %i.iro = fneg fast <4 x float> %i.irc
  %i.irp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.iro, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.irn)
  %i.irq = fadd fast <4 x float> %i.irp, %i.irb
  %i.irr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ira, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.irq)
  %i.irs = fmul fast <4 x float> %i.irr, %i.imq
  %i.irt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.irs, <4 x float> splat (float f0x42B0C0A5))
  %i.iru = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.irt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.irv = fmul fast <4 x float> %i.iru, splat (float f0x3FB8AA3B)
  %i.irw = fadd fast <4 x float> %i.irv, splat (float 5.000000e-01) ; 2 uses
  %i.irx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.irw)
  %i.iry = sitofp fast <4 x i32> %i.irx to <4 x float> ; 2 uses
  %i.irz = fcmp fast olt <4 x float> %i.irw, %i.iry
  %i.isa = select <4 x i1> %i.irz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.isb = fsub fast <4 x float> %i.iry, %i.isa   ; 2 uses
  %i.isc = fneg fast <4 x float> %i.isb           ; 2 uses
  %i.isd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.isc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.iru)
  %i.ise = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.isc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.isd) ; 8 uses
  %i.isf = fmul fast <4 x float> %i.ise, %i.ise
  %i.isg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ise, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ish = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.isg, <4 x float> nofpclass(nan inf) %i.ise, <4 x float> splat (float f0x3C088908))
  %i.isi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ish, <4 x float> nofpclass(nan inf) %i.ise, <4 x float> splat (float f0x3D2AA9C1))
  %i.isj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.isi, <4 x float> nofpclass(nan inf) %i.ise, <4 x float> splat (float f0x3E2AAAAA))
  %i.isk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.isj, <4 x float> nofpclass(nan inf) %i.ise, <4 x float> splat (float 5.000000e-01))
  %i.isl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.isk, <4 x float> nofpclass(nan inf) %i.isf, <4 x float> nofpclass(nan inf) %i.ise)
  %i.ism = fadd fast <4 x float> %i.isl, splat (float 1.000000e+00)
  %i.isn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.isb)
  %i.iso = shl <4 x i32> %i.isn, splat (i32 23)
  %i.isp = add <4 x i32> %i.iso, splat (i32 1065353216)
  %i.isq = bitcast <4 x i32> %i.isp to <4 x float>
  %i.isr = fmul fast <4 x float> %i.ism, %i.isq
  %i.iss = shufflevector <4 x float> %i.isr, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ist = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.iss)
  %i.isu = bitcast <8 x bfloat> %i.ist to <2 x i64>
  %i.isv = extractelement <2 x i64> %i.isu, i64 0
  store i64 %i.isv, ptr %.232145.i.i, align 1, !tbaa !555
  %i.isw = getelementptr inbounds nuw i8, ptr %.2146.i.i, i64 8 ; 2 uses
  %i.isx = getelementptr inbounds nuw i8, ptr %.232145.i.i, i64 8 ; 2 uses
  %i.isy = add nuw nsw i32 %.236144.i.i, 4        ; 3 uses
  %i.isz = or disjoint i32 %i.isy, 3
  %i.ita = icmp slt i32 %i.isz, %i.gmz
  br i1 %i.ita, label %.lr.ph148.i.i, label %.preheader.i81.i914, !llvm.loop !214

.lr.ph155.i.i:                                    ; preds = %.lr.ph155.i.i.prol.loopexit, %.lr.ph155.i.i
  %.3154.i.i = phi ptr [ %i.itl, %.lr.ph155.i.i ], [ %.3154.i.i.unr, %.lr.ph155.i.i.prol.loopexit ] ; 3 uses
  %.333153.i.i = phi ptr [ %i.itu, %.lr.ph155.i.i ], [ %.333153.i.i.unr, %.lr.ph155.i.i.prol.loopexit ] ; 3 uses
  %.337152.i.i = phi i32 [ %i.itv, %.lr.ph155.i.i ], [ %.337152.i.i.unr, %.lr.ph155.i.i.prol.loopexit ]
  %i.itb = getelementptr inbounds nuw i8, ptr %.3154.i.i, i64 2
  %i.itc = load i16, ptr %.3154.i.i, align 2, !tbaa !558
  %i.itd = zext i16 %i.itc to i32
  %i.ite = shl nuw i32 %i.itd, 16
  %i.itf = bitcast i32 %i.ite to float
  %i.itg = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.itf, float %i.ihm)
  %i.ith = bitcast float %i.itg to i32
  %i.iti = lshr i32 %i.ith, 16
  %i.itj = trunc nuw i32 %i.iti to i16
  %i.itk = getelementptr inbounds nuw i8, ptr %.333153.i.i, i64 2
  store i16 %i.itj, ptr %.333153.i.i, align 2, !tbaa !558
  %i.itl = getelementptr inbounds nuw i8, ptr %.3154.i.i, i64 4
  %i.itm = load i16, ptr %i.itb, align 2, !tbaa !558
  %i.itn = zext i16 %i.itm to i32
  %i.ito = shl nuw i32 %i.itn, 16
  %i.itp = bitcast i32 %i.ito to float
  %i.itq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.itp, float %i.ihm)
  %i.itr = bitcast float %i.itq to i32
  %i.its = lshr i32 %i.itr, 16
  %i.itt = trunc nuw i32 %i.its to i16
  %i.itu = getelementptr inbounds nuw i8, ptr %.333153.i.i, i64 4
  store i16 %i.itt, ptr %i.itk, align 2, !tbaa !558
  %i.itv = add nuw nsw i32 %.337152.i.i, 2        ; 2 uses
  %exitcond.not.i84.i918.1 = icmp eq i32 %i.itv, %i.gmz
  br i1 %exitcond.not.i84.i918.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph155.i.i, !llvm.loop !215

bb.gg:                                            ; preds = %bb.ge
  %i.itw = icmp eq i32 %3, 1
  br i1 %i.itw, label %bb.gh, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.gh:                                            ; preds = %bb.gg
  switch i32 %.sroa.speculated.i903, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.lr.ph173.i.i
    i32 8, label %.lr.ph169.i.i
    i32 4, label %.lr.ph.i86.i904
  ]

.lr.ph173.i.i:                                    ; preds = %bb.gh
  %i.itx = load <16 x bfloat>, ptr %0, align 1, !tbaa !555
  %i.ity = fpext fast <16 x bfloat> %i.itx to <16 x float>
  %i.itz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ity, <16 x float> splat (float f0x00800000), i32 4)
  %i.iua = bitcast <16 x float> %i.itz to <16 x i32> ; 2 uses
  %i.iub = lshr <16 x i32> %i.iua, splat (i32 23)
  %i.iuc = and <16 x i32> %i.iua, splat (i32 -2139095041)
  %i.iud = or disjoint <16 x i32> %i.iuc, splat (i32 1056964608)
  %i.iue = bitcast <16 x i32> %i.iud to <16 x float> ; 3 uses
  %i.iuf = add nsw <16 x i32> %i.iub, splat (i32 -127)
  %i.iug = sitofp fast <16 x i32> %i.iuf to <16 x float> ; 2 uses
  %i.iuh = fadd fast <16 x float> %i.iug, splat (float 1.000000e+00)
  %i.iui = fcmp fast olt <16 x float> %i.iue, splat (float f0x3F3504F3) ; 2 uses
  %i.iuj = fadd fast <16 x float> %i.iue, splat (float -1.000000e+00)
  %i.iuk = select fast <16 x i1> %i.iui, <16 x float> %i.iug, <16 x float> %i.iuh ; 2 uses
  %i.iul = select fast <16 x i1> %i.iui, <16 x float> %i.iue, <16 x float> zeroinitializer
  %i.ium = fadd fast <16 x float> %i.iuj, %i.iul  ; 12 uses
  %i.iun = fmul fast <16 x float> %i.ium, %i.ium  ; 2 uses
  %i.iuo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ium, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.iup = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iuo, <16 x float> nofpclass(nan inf) %i.ium, <16 x float> splat (float f0x3DEF251A))
  %i.iuq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iup, <16 x float> nofpclass(nan inf) %i.ium, <16 x float> splat (float f0xBDFE5D4F))
  %i.iur = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iuq, <16 x float> nofpclass(nan inf) %i.ium, <16 x float> splat (float f0x3E11E9BF))
  %i.ius = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iur, <16 x float> nofpclass(nan inf) %i.ium, <16 x float> splat (float f0xBE2AAE50))
  %i.iut = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ius, <16 x float> nofpclass(nan inf) %i.ium, <16 x float> splat (float f0x3E4CCEAC))
  %i.iuu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iut, <16 x float> nofpclass(nan inf) %i.ium, <16 x float> splat (float f0xBE7FFFFC))
  %i.iuv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iuu, <16 x float> nofpclass(nan inf) %i.ium, <16 x float> splat (float f0x3EAAAAAA))
  %i.iuw = fmul fast <16 x float> %i.iun, %i.ium
  %i.iux = fmul fast <16 x float> %i.iuw, %i.iuv
  %i.iuy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iuk, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.iux)
  %i.iuz = fneg fast <16 x float> %i.iun
  %i.iva = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.iuz, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.iuy)
  %i.ivb = fadd fast <16 x float> %i.iva, %i.ium
  %i.ivc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iuk, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ivb)
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gi, %.lr.ph173.i.i
  %.028172.i.i = phi ptr [ %1, %.lr.ph173.i.i ], [ %i.iwi, %bb.gi ] ; 2 uses
  %.030171.i.i = phi ptr [ %2, %.lr.ph173.i.i ], [ %i.iwj, %bb.gi ] ; 2 uses
  %.033170.i.i = phi i32 [ 0, %.lr.ph173.i.i ], [ %i.iwk, %bb.gi ]
  %i.ivd = load i16, ptr %.028172.i.i, align 2, !tbaa !558
  %i.ive = zext i16 %i.ivd to i32
  %i.ivf = shl nuw i32 %i.ive, 16
  %i.ivg = insertelement <16 x i32> poison, i32 %i.ivf, i64 0
  %i.ivh = bitcast <16 x i32> %i.ivg to <16 x float>
  %i.ivi = shufflevector <16 x float> %i.ivh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ivj = fmul fast <16 x float> %i.ivi, %i.ivc
  %i.ivk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ivj, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ivl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ivk, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ivm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ivl, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ivn = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ivm, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ivo = fcmp fast ogt <16 x float> %i.ivn, %i.ivm
  %i.ivp = fadd fast <16 x float> %i.ivn, splat (float -1.000000e+00)
  %i.ivq = select fast <16 x i1> %i.ivo, <16 x float> %i.ivp, <16 x float> %i.ivn ; 2 uses
  %i.ivr = fneg fast <16 x float> %i.ivq          ; 2 uses
  %i.ivs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ivr, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ivl)
  %i.ivt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ivr, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ivs) ; 8 uses
  %i.ivu = fmul fast <16 x float> %i.ivt, %i.ivt
  %i.ivv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ivt, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ivw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ivv, <16 x float> nofpclass(nan inf) %i.ivt, <16 x float> splat (float f0x3C088908))
  %i.ivx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ivw, <16 x float> nofpclass(nan inf) %i.ivt, <16 x float> splat (float f0x3D2AA9C1))
  %i.ivy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ivx, <16 x float> nofpclass(nan inf) %i.ivt, <16 x float> splat (float f0x3E2AAAAA))
  %i.ivz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ivy, <16 x float> nofpclass(nan inf) %i.ivt, <16 x float> splat (float 5.000000e-01))
  %i.iwa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ivz, <16 x float> nofpclass(nan inf) %i.ivu, <16 x float> nofpclass(nan inf) %i.ivt)
  %i.iwb = fadd fast <16 x float> %i.iwa, splat (float 1.000000e+00)
  %i.iwc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ivq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.iwd = shl <16 x i32> %i.iwc, splat (i32 23)
  %i.iwe = add <16 x i32> %i.iwd, splat (i32 1065353216)
  %i.iwf = bitcast <16 x i32> %i.iwe to <16 x float>
  %i.iwg = fmul fast <16 x float> %i.iwb, %i.iwf
  %i.iwh = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.iwg)
  store <16 x bfloat> %i.iwh, ptr %.030171.i.i, align 1, !tbaa !555
  %i.iwi = getelementptr inbounds nuw i8, ptr %.028172.i.i, i64 2
  %i.iwj = getelementptr inbounds nuw i8, ptr %.030171.i.i, i64 32
  %i.iwk = add nuw nsw i32 %.033170.i.i, 1        ; 2 uses
  %exitcond177.not.i.i = icmp eq i32 %i.iwk, %.sroa.speculated98.i902
  br i1 %exitcond177.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.gi, !llvm.loop !216

.lr.ph169.i.i:                                    ; preds = %bb.gh
  %i.iwl = load <8 x bfloat>, ptr %0, align 1, !tbaa !555
  %i.iwm = fpext fast <8 x bfloat> %i.iwl to <8 x float>
  %i.iwn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.iwm, <8 x float> splat (float f0x00800000))
  %i.iwo = bitcast <8 x float> %i.iwn to <8 x i32> ; 2 uses
  %i.iwp = lshr <8 x i32> %i.iwo, splat (i32 23)
  %i.iwq = and <8 x i32> %i.iwo, splat (i32 -2139095041)
  %i.iwr = or disjoint <8 x i32> %i.iwq, splat (i32 1056964608)
  %i.iws = bitcast <8 x i32> %i.iwr to <8 x float> ; 3 uses
  %i.iwt = add nsw <8 x i32> %i.iwp, splat (i32 -127)
  %i.iwu = sitofp fast <8 x i32> %i.iwt to <8 x float> ; 2 uses
  %i.iwv = fadd fast <8 x float> %i.iwu, splat (float 1.000000e+00)
  %i.iww = fcmp fast olt <8 x float> %i.iws, splat (float f0x3F3504F3) ; 2 uses
  %i.iwx = select <8 x i1> %i.iww, <8 x float> %i.iws, <8 x float> zeroinitializer
  %i.iwy = fadd fast <8 x float> %i.iws, splat (float -1.000000e+00)
  %i.iwz = select fast <8 x i1> %i.iww, <8 x float> %i.iwu, <8 x float> %i.iwv ; 2 uses
  %i.ixa = fadd fast <8 x float> %i.iwy, %i.iwx   ; 12 uses
  %i.ixb = fmul fast <8 x float> %i.ixa, %i.ixa   ; 2 uses
  %i.ixc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ixa, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.ixd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ixc, <8 x float> nofpclass(nan inf) %i.ixa, <8 x float> splat (float f0x3DEF251A))
  %i.ixe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ixd, <8 x float> nofpclass(nan inf) %i.ixa, <8 x float> splat (float f0xBDFE5D4F))
  %i.ixf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ixe, <8 x float> nofpclass(nan inf) %i.ixa, <8 x float> splat (float f0x3E11E9BF))
  %i.ixg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ixf, <8 x float> nofpclass(nan inf) %i.ixa, <8 x float> splat (float f0xBE2AAE50))
  %i.ixh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ixg, <8 x float> nofpclass(nan inf) %i.ixa, <8 x float> splat (float f0x3E4CCEAC))
  %i.ixi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ixh, <8 x float> nofpclass(nan inf) %i.ixa, <8 x float> splat (float f0xBE7FFFFC))
  %i.ixj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ixi, <8 x float> nofpclass(nan inf) %i.ixa, <8 x float> splat (float f0x3EAAAAAA))
  %i.ixk = fmul fast <8 x float> %i.ixb, %i.ixa
  %i.ixl = fmul fast <8 x float> %i.ixk, %i.ixj
  %i.ixm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iwz, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ixl)
  %i.ixn = fneg fast <8 x float> %i.ixb
  %i.ixo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ixn, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ixm)
  %i.ixp = fadd fast <8 x float> %i.ixo, %i.ixa
  %i.ixq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iwz, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ixp)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %.lr.ph169.i.i
  %.1168.i.i = phi ptr [ %1, %.lr.ph169.i.i ], [ %i.iyw, %bb.gj ] ; 2 uses
  %.029167.i.i = phi i32 [ 0, %.lr.ph169.i.i ], [ %i.iyy, %bb.gj ]
  %.131166.i.i = phi ptr [ %2, %.lr.ph169.i.i ], [ %i.iyx, %bb.gj ] ; 2 uses
  %i.ixr = load i16, ptr %.1168.i.i, align 2, !tbaa !558
  %i.ixs = zext i16 %i.ixr to i32
  %i.ixt = shl nuw i32 %i.ixs, 16
  %i.ixu = insertelement <8 x i32> poison, i32 %i.ixt, i64 0
  %i.ixv = bitcast <8 x i32> %i.ixu to <8 x float>
  %i.ixw = shufflevector <8 x float> %i.ixv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ixx = fmul fast <8 x float> %i.ixw, %i.ixq
  %i.ixy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ixx, <8 x float> splat (float f0x42B0C0A5))
  %i.ixz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ixy, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.iya = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ixz, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.iyb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.iya, i32 1) ; 2 uses
  %i.iyc = fcmp fast ogt <8 x float> %i.iyb, %i.iya
  %i.iyd = select <8 x i1> %i.iyc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.iye = fsub fast <8 x float> %i.iyb, %i.iyd   ; 2 uses
  %i.iyf = fneg fast <8 x float> %i.iye           ; 2 uses
  %i.iyg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.iyf, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ixz)
  %i.iyh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.iyf, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.iyg) ; 8 uses
  %i.iyi = fmul fast <8 x float> %i.iyh, %i.iyh
  %i.iyj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iyh, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.iyk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iyj, <8 x float> nofpclass(nan inf) %i.iyh, <8 x float> splat (float f0x3C088908))
  %i.iyl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iyk, <8 x float> nofpclass(nan inf) %i.iyh, <8 x float> splat (float f0x3D2AA9C1))
  %i.iym = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iyl, <8 x float> nofpclass(nan inf) %i.iyh, <8 x float> splat (float f0x3E2AAAAA))
  %i.iyn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iym, <8 x float> nofpclass(nan inf) %i.iyh, <8 x float> splat (float 5.000000e-01))
  %i.iyo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iyn, <8 x float> nofpclass(nan inf) %i.iyi, <8 x float> nofpclass(nan inf) %i.iyh)
  %i.iyp = fadd fast <8 x float> %i.iyo, splat (float 1.000000e+00)
  %i.iyq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.iye)
  %i.iyr = shl <8 x i32> %i.iyq, splat (i32 23)
  %i.iys = add <8 x i32> %i.iyr, splat (i32 1065353216)
  %i.iyt = bitcast <8 x i32> %i.iys to <8 x float>
  %i.iyu = fmul fast <8 x float> %i.iyp, %i.iyt
  %i.iyv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.iyu)
  store <8 x bfloat> %i.iyv, ptr %.131166.i.i, align 1, !tbaa !555
  %i.iyw = getelementptr inbounds nuw i8, ptr %.1168.i.i, i64 2
  %i.iyx = getelementptr inbounds nuw i8, ptr %.131166.i.i, i64 16
  %i.iyy = add nuw nsw i32 %.029167.i.i, 1        ; 2 uses
  %exitcond176.not.i.i = icmp eq i32 %i.iyy, %.sroa.speculated98.i902
  br i1 %exitcond176.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.gj, !llvm.loop !217

.lr.ph.i86.i904:                                  ; preds = %bb.gh
  %i.iyz = load i64, ptr %0, align 1, !tbaa !555
  %i.iza = insertelement <2 x i64> poison, i64 %i.iyz, i64 0
  %i.izb = bitcast <2 x i64> %i.iza to <8 x i16>
  %i.izc = shufflevector <8 x i16> %i.izb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.izd = bitcast <8 x i16> %i.izc to <4 x float>
  %i.ize = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.izd, <4 x float> splat (float f0x00800000))
  %i.izf = bitcast <4 x float> %i.ize to <4 x i32> ; 2 uses
  %i.izg = lshr <4 x i32> %i.izf, splat (i32 23)
  %i.izh = and <4 x i32> %i.izf, splat (i32 -2139095041)
  %i.izi = or disjoint <4 x i32> %i.izh, splat (i32 1056964608)
  %i.izj = bitcast <4 x i32> %i.izi to <4 x float> ; 3 uses
  %i.izk = add nsw <4 x i32> %i.izg, splat (i32 -127)
  %i.izl = sitofp fast <4 x i32> %i.izk to <4 x float> ; 2 uses
  %i.izm = fadd fast <4 x float> %i.izl, splat (float 1.000000e+00)
  %i.izn = fcmp fast olt <4 x float> %i.izj, splat (float f0x3F3504F3) ; 2 uses
  %i.izo = select <4 x i1> %i.izn, <4 x float> %i.izj, <4 x float> zeroinitializer
  %i.izp = fadd fast <4 x float> %i.izj, splat (float -1.000000e+00)
  %i.izq = select fast <4 x i1> %i.izn, <4 x float> %i.izl, <4 x float> %i.izm ; 2 uses
  %i.izr = fadd fast <4 x float> %i.izp, %i.izo   ; 12 uses
  %i.izs = fmul fast <4 x float> %i.izr, %i.izr   ; 2 uses
  %i.izt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.izr, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.izu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.izt, <4 x float> nofpclass(nan inf) %i.izr, <4 x float> splat (float f0x3DEF251A))
  %i.izv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.izu, <4 x float> nofpclass(nan inf) %i.izr, <4 x float> splat (float f0xBDFE5D4F))
  %i.izw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.izv, <4 x float> nofpclass(nan inf) %i.izr, <4 x float> splat (float f0x3E11E9BF))
  %i.izx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.izw, <4 x float> nofpclass(nan inf) %i.izr, <4 x float> splat (float f0xBE2AAE50))
  %i.izy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.izx, <4 x float> nofpclass(nan inf) %i.izr, <4 x float> splat (float f0x3E4CCEAC))
  %i.izz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.izy, <4 x float> nofpclass(nan inf) %i.izr, <4 x float> splat (float f0xBE7FFFFC))
  %i.jaa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.izz, <4 x float> nofpclass(nan inf) %i.izr, <4 x float> splat (float f0x3EAAAAAA))
  %i.jab = fmul fast <4 x float> %i.izs, %i.izr
  %i.jac = fmul fast <4 x float> %i.jab, %i.jaa
  %i.jad = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.izq, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.jac)
  %i.jae = fneg fast <4 x float> %i.izs
  %i.jaf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jae, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.jad)
  %i.jag = fadd fast <4 x float> %i.jaf, %i.izr
  %i.jah = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.izq, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.jag)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %.lr.ph.i86.i904
  %.0165.i.i = phi i32 [ 0, %.lr.ph.i86.i904 ], [ %i.jbu, %bb.gk ]
  %.2164.i.i = phi ptr [ %1, %.lr.ph.i86.i904 ], [ %i.jbs, %bb.gk ] ; 2 uses
  %.232163.i.i = phi ptr [ %2, %.lr.ph.i86.i904 ], [ %i.jbt, %bb.gk ] ; 2 uses
  %i.jai = load i16, ptr %.2164.i.i, align 2, !tbaa !558
  %i.jaj = zext i16 %i.jai to i32
  %i.jak = shl nuw i32 %i.jaj, 16
  %i.jal = insertelement <4 x i32> poison, i32 %i.jak, i64 0
  %i.jam = bitcast <4 x i32> %i.jal to <4 x float>
  %i.jan = shufflevector <4 x float> %i.jam, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jao = fmul fast <4 x float> %i.jan, %i.jah
  %i.jap = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jao, <4 x float> splat (float f0x42B0C0A5))
  %i.jaq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jap, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jar = fmul fast <4 x float> %i.jaq, splat (float f0x3FB8AA3B)
  %i.jas = fadd fast <4 x float> %i.jar, splat (float 5.000000e-01) ; 2 uses
  %i.jat = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jas)
  %i.jau = sitofp fast <4 x i32> %i.jat to <4 x float> ; 2 uses
  %i.jav = fcmp fast olt <4 x float> %i.jas, %i.jau
  %i.jaw = select <4 x i1> %i.jav, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jax = fsub fast <4 x float> %i.jau, %i.jaw   ; 2 uses
  %i.jay = fneg fast <4 x float> %i.jax           ; 2 uses
  %i.jaz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jay, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.jaq)
  %i.jba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jay, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.jaz) ; 8 uses
  %i.jbb = fmul fast <4 x float> %i.jba, %i.jba
  %i.jbc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jba, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.jbd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jbc, <4 x float> nofpclass(nan inf) %i.jba, <4 x float> splat (float f0x3C088908))
  %i.jbe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jbd, <4 x float> nofpclass(nan inf) %i.jba, <4 x float> splat (float f0x3D2AA9C1))
  %i.jbf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jbe, <4 x float> nofpclass(nan inf) %i.jba, <4 x float> splat (float f0x3E2AAAAA))
  %i.jbg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jbf, <4 x float> nofpclass(nan inf) %i.jba, <4 x float> splat (float 5.000000e-01))
  %i.jbh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jbg, <4 x float> nofpclass(nan inf) %i.jbb, <4 x float> nofpclass(nan inf) %i.jba)
  %i.jbi = fadd fast <4 x float> %i.jbh, splat (float 1.000000e+00)
  %i.jbj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jax)
  %i.jbk = shl <4 x i32> %i.jbj, splat (i32 23)
  %i.jbl = add <4 x i32> %i.jbk, splat (i32 1065353216)
  %i.jbm = bitcast <4 x i32> %i.jbl to <4 x float>
  %i.jbn = fmul fast <4 x float> %i.jbi, %i.jbm
  %i.jbo = shufflevector <4 x float> %i.jbn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.jbp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jbo)
  %i.jbq = bitcast <8 x bfloat> %i.jbp to <2 x i64>
  %i.jbr = extractelement <2 x i64> %i.jbq, i64 0
  store i64 %i.jbr, ptr %.232163.i.i, align 1, !tbaa !555
  %i.jbs = getelementptr inbounds nuw i8, ptr %.2164.i.i, i64 2
  %i.jbt = getelementptr inbounds nuw i8, ptr %.232163.i.i, i64 8
  %i.jbu = add nuw nsw i32 %.0165.i.i, 1          ; 2 uses
  %exitcond.not.i87.i905 = icmp eq i32 %i.jbu, %.sroa.speculated98.i902
  br i1 %exitcond.not.i87.i905, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.gk, !llvm.loop !218

bb.gl:                                            ; preds = %bb.a
  %.sroa.speculated98.i963 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 28 uses
  %.sroa.speculated.i964 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.jbv = mul i32 %.sroa.speculated.i964, %.sroa.speculated98.i963 ; 48 uses
  %i.jbw = icmp eq i32 %5, %6
  br i1 %i.jbw, label %bb.gm, label %bb.hc

bb.gm:                                            ; preds = %bb.gl
  %i.jbx = icmp eq i32 %3, %4
  br i1 %i.jbx, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.jby = icmp sgt i32 %i.jbv, 15
  br i1 %i.jby, label %.lr.ph.i.i1127.preheader, label %.preheader63.i.i1096

.lr.ph.i.i1127.preheader:                         ; preds = %bb.gn
  %i.jbz = add nsw i32 %i.jbv, -16                ; 2 uses
  %i.jca = lshr i32 %i.jbz, 4                     ; 2 uses
  %i.jcb = add nuw nsw i32 %i.jca, 1              ; 2 uses
  %i.jcc = icmp eq i32 %i.jca, 0
  br i1 %i.jcc, label %.lr.ph.i.i1127.epil.preheader, label %.lr.ph.i.i1127.preheader.new

.lr.ph.i.i1127.preheader.new:                     ; preds = %.lr.ph.i.i1127.preheader
  %unroll_iter10618 = and i32 %i.jcb, 536870910
  br label %.lr.ph.i.i1127

.preheader63.loopexit.i.i1132.unr-lcssa:          ; preds = %.lr.ph.i.i1127
  %i.jcd = and i32 %i.jbz, 16
  %lcmp.mod10613.not.not = icmp eq i32 %i.jcd, 0
  br i1 %lcmp.mod10613.not.not, label %.lr.ph.i.i1127.epil.preheader, label %.preheader63.loopexit.i.i1132

.lr.ph.i.i1127.epil.preheader:                    ; preds = %.preheader63.loopexit.i.i1132.unr-lcssa, %.lr.ph.i.i1127.preheader
  %.067.i.i1128.epil.init = phi ptr [ %0, %.lr.ph.i.i1127.preheader ], [ %i.jdf, %.preheader63.loopexit.i.i1132.unr-lcssa ] ; 2 uses
  %.03466.i.i1129.epil.init = phi ptr [ %1, %.lr.ph.i.i1127.preheader ], [ %i.jdg, %.preheader63.loopexit.i.i1132.unr-lcssa ] ; 2 uses
  %.04264.i.i1131.epil.init = phi ptr [ %2, %.lr.ph.i.i1127.preheader ], [ %i.jdh, %.preheader63.loopexit.i.i1132.unr-lcssa ] ; 2 uses
  %lcmp.mod10617 = trunc i32 %i.jcb to i1
  tail call void @llvm.assume(i1 %lcmp.mod10617)
  %i.jce = load <16 x bfloat>, ptr %.067.i.i1128.epil.init, align 1, !tbaa !555
  %i.jcf = fpext fast <16 x bfloat> %i.jce to <16 x float>
  %i.jcg = load <16 x bfloat>, ptr %.03466.i.i1129.epil.init, align 1, !tbaa !555
  %i.jch = fpext fast <16 x bfloat> %i.jcg to <16 x float>
  %i.jci = fsub fast <16 x float> %i.jch, %i.jcf
  %i.jcj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.jci)
  store <16 x bfloat> %i.jcj, ptr %.04264.i.i1131.epil.init, align 1, !tbaa !555
  %i.jck = getelementptr inbounds nuw i8, ptr %.067.i.i1128.epil.init, i64 32
  %i.jcl = getelementptr inbounds nuw i8, ptr %.03466.i.i1129.epil.init, i64 32
  %i.jcm = getelementptr inbounds nuw i8, ptr %.04264.i.i1131.epil.init, i64 32
  br label %.preheader63.loopexit.i.i1132

.preheader63.loopexit.i.i1132:                    ; preds = %.preheader63.loopexit.i.i1132.unr-lcssa, %.lr.ph.i.i1127.epil.preheader
  %.lcssa9582 = phi ptr [ %i.jdf, %.preheader63.loopexit.i.i1132.unr-lcssa ], [ %i.jck, %.lr.ph.i.i1127.epil.preheader ]
  %.lcssa9581 = phi ptr [ %i.jdg, %.preheader63.loopexit.i.i1132.unr-lcssa ], [ %i.jcl, %.lr.ph.i.i1127.epil.preheader ]
  %.lcssa9580 = phi ptr [ %i.jdh, %.preheader63.loopexit.i.i1132.unr-lcssa ], [ %i.jcm, %.lr.ph.i.i1127.epil.preheader ]
  %i.jcn = and i32 %i.jbv, 2147483632
  br label %.preheader63.i.i1096

.preheader63.i.i1096:                             ; preds = %.preheader63.loopexit.i.i1132, %bb.gn
  %.042.lcssa.i.i1097 = phi ptr [ %2, %bb.gn ], [ %.lcssa9580, %.preheader63.loopexit.i.i1132 ] ; 2 uses
  %.038.lcssa.i.i1098 = phi i32 [ 0, %bb.gn ], [ %i.jcn, %.preheader63.loopexit.i.i1132 ] ; 3 uses
  %.034.lcssa.i.i1099 = phi ptr [ %1, %bb.gn ], [ %.lcssa9581, %.preheader63.loopexit.i.i1132 ] ; 2 uses
  %.0.lcssa.i.i1100 = phi ptr [ %0, %bb.gn ], [ %.lcssa9582, %.preheader63.loopexit.i.i1132 ] ; 2 uses
  %i.jco = or disjoint i32 %.038.lcssa.i.i1098, 7
  %i.jcp = icmp slt i32 %i.jco, %i.jbv
  br i1 %i.jcp, label %.lr.ph75.i.i1122, label %.preheader62.i.i1101

.lr.ph.i.i1127:                                   ; preds = %.lr.ph.i.i1127, %.lr.ph.i.i1127.preheader.new
  %.067.i.i1128 = phi ptr [ %0, %.lr.ph.i.i1127.preheader.new ], [ %i.jdf, %.lr.ph.i.i1127 ] ; 3 uses
  %.03466.i.i1129 = phi ptr [ %1, %.lr.ph.i.i1127.preheader.new ], [ %i.jdg, %.lr.ph.i.i1127 ] ; 3 uses
  %.04264.i.i1131 = phi ptr [ %2, %.lr.ph.i.i1127.preheader.new ], [ %i.jdh, %.lr.ph.i.i1127 ] ; 3 uses
  %niter10619 = phi i32 [ 0, %.lr.ph.i.i1127.preheader.new ], [ %niter10619.next.1, %.lr.ph.i.i1127 ]
  %i.jcq = load <16 x bfloat>, ptr %.067.i.i1128, align 1, !tbaa !555
  %i.jcr = fpext fast <16 x bfloat> %i.jcq to <16 x float>
  %i.jcs = load <16 x bfloat>, ptr %.03466.i.i1129, align 1, !tbaa !555
  %i.jct = fpext fast <16 x bfloat> %i.jcs to <16 x float>
  %i.jcu = fsub fast <16 x float> %i.jct, %i.jcr
  %i.jcv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.jcu)
  store <16 x bfloat> %i.jcv, ptr %.04264.i.i1131, align 1, !tbaa !555
  %i.jcw = getelementptr inbounds nuw i8, ptr %.067.i.i1128, i64 32
  %i.jcx = getelementptr inbounds nuw i8, ptr %.03466.i.i1129, i64 32
  %i.jcy = getelementptr inbounds nuw i8, ptr %.04264.i.i1131, i64 32
  %i.jcz = load <16 x bfloat>, ptr %i.jcw, align 1, !tbaa !555
  %i.jda = fpext fast <16 x bfloat> %i.jcz to <16 x float>
  %i.jdb = load <16 x bfloat>, ptr %i.jcx, align 1, !tbaa !555
  %i.jdc = fpext fast <16 x bfloat> %i.jdb to <16 x float>
  %i.jdd = fsub fast <16 x float> %i.jdc, %i.jda
  %i.jde = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.jdd)
  store <16 x bfloat> %i.jde, ptr %i.jcy, align 1, !tbaa !555
  %i.jdf = getelementptr inbounds nuw i8, ptr %.067.i.i1128, i64 64 ; 3 uses
  %i.jdg = getelementptr inbounds nuw i8, ptr %.03466.i.i1129, i64 64 ; 3 uses
  %i.jdh = getelementptr inbounds nuw i8, ptr %.04264.i.i1131, i64 64 ; 3 uses
  %niter10619.next.1 = add i32 %niter10619, 2     ; 2 uses
  %niter10619.ncmp.1.not = icmp eq i32 %niter10619.next.1, %unroll_iter10618
  br i1 %niter10619.ncmp.1.not, label %.preheader63.loopexit.i.i1132.unr-lcssa, label %.lr.ph.i.i1127, !llvm.loop !219

.preheader62.i.i1101:                             ; preds = %.lr.ph75.i.i1122, %.preheader63.i.i1096
  %.143.lcssa.i.i1102 = phi ptr [ %.042.lcssa.i.i1097, %.preheader63.i.i1096 ], [ %i.jds, %.lr.ph75.i.i1122 ] ; 2 uses
  %.139.lcssa.i.i1103 = phi i32 [ %.038.lcssa.i.i1098, %.preheader63.i.i1096 ], [ %i.jdt, %.lr.ph75.i.i1122 ] ; 3 uses
  %.135.lcssa.i.i1104 = phi ptr [ %.034.lcssa.i.i1099, %.preheader63.i.i1096 ], [ %i.jdr, %.lr.ph75.i.i1122 ] ; 2 uses
  %.1.lcssa.i.i1105 = phi ptr [ %.0.lcssa.i.i1100, %.preheader63.i.i1096 ], [ %i.jdq, %.lr.ph75.i.i1122 ] ; 2 uses
  %i.jdi = or disjoint i32 %.139.lcssa.i.i1103, 3
  %i.jdj = icmp slt i32 %i.jdi, %i.jbv
  br i1 %i.jdj, label %.lr.ph84.i.i1117, label %.preheader.i.i1106

.lr.ph75.i.i1122:                                 ; preds = %.preheader63.i.i1096, %.lr.ph75.i.i1122
  %.174.i.i1123 = phi ptr [ %i.jdq, %.lr.ph75.i.i1122 ], [ %.0.lcssa.i.i1100, %.preheader63.i.i1096 ] ; 2 uses
  %.13573.i.i1124 = phi ptr [ %i.jdr, %.lr.ph75.i.i1122 ], [ %.034.lcssa.i.i1099, %.preheader63.i.i1096 ] ; 2 uses
  %.13972.i.i1125 = phi i32 [ %i.jdt, %.lr.ph75.i.i1122 ], [ %.038.lcssa.i.i1098, %.preheader63.i.i1096 ]
  %.14371.i.i1126 = phi ptr [ %i.jds, %.lr.ph75.i.i1122 ], [ %.042.lcssa.i.i1097, %.preheader63.i.i1096 ] ; 2 uses
  %i.jdk = load <8 x bfloat>, ptr %.174.i.i1123, align 1, !tbaa !555
  %i.jdl = fpext fast <8 x bfloat> %i.jdk to <8 x float>
  %i.jdm = load <8 x bfloat>, ptr %.13573.i.i1124, align 1, !tbaa !555
  %i.jdn = fpext fast <8 x bfloat> %i.jdm to <8 x float>
  %i.jdo = fsub fast <8 x float> %i.jdn, %i.jdl
  %i.jdp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jdo)
  store <8 x bfloat> %i.jdp, ptr %.14371.i.i1126, align 1, !tbaa !555
  %i.jdq = getelementptr inbounds nuw i8, ptr %.174.i.i1123, i64 16 ; 2 uses
  %i.jdr = getelementptr inbounds nuw i8, ptr %.13573.i.i1124, i64 16 ; 2 uses
  %i.jds = getelementptr inbounds nuw i8, ptr %.14371.i.i1126, i64 16 ; 2 uses
  %i.jdt = add nuw nsw i32 %.13972.i.i1125, 8     ; 3 uses
  %i.jdu = or disjoint i32 %i.jdt, 7
  %i.jdv = icmp slt i32 %i.jdu, %i.jbv
  br i1 %i.jdv, label %.lr.ph75.i.i1122, label %.preheader62.i.i1101, !llvm.loop !220

.preheader.i.i1106:                               ; preds = %.lr.ph84.i.i1117, %.preheader62.i.i1101
  %.244.lcssa.i.i1107 = phi ptr [ %.143.lcssa.i.i1102, %.preheader62.i.i1101 ], [ %i.jgx, %.lr.ph84.i.i1117 ] ; 7 uses
  %.240.lcssa.i.i1108 = phi i32 [ %.139.lcssa.i.i1103, %.preheader62.i.i1101 ], [ %i.jgy, %.lr.ph84.i.i1117 ] ; 6 uses
  %.236.lcssa.i.i1109 = phi ptr [ %.135.lcssa.i.i1104, %.preheader62.i.i1101 ], [ %i.jgw, %.lr.ph84.i.i1117 ] ; 7 uses
  %.2.lcssa.i.i1110 = phi ptr [ %.1.lcssa.i.i1105, %.preheader62.i.i1101 ], [ %i.jgv, %.lr.ph84.i.i1117 ] ; 7 uses
  %.236.lcssa.i.i11097849 = ptrtoaddr ptr %.236.lcssa.i.i1109 to i64
  %.2.lcssa.i.i11107850 = ptrtoaddr ptr %.2.lcssa.i.i1110 to i64
  %.244.lcssa.i.i11077851 = ptrtoaddr ptr %.244.lcssa.i.i1107 to i64 ; 2 uses
  %i.jdw = icmp slt i32 %.240.lcssa.i.i1108, %i.jbv
  br i1 %i.jdw, label %iter.check7871, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7871:                                   ; preds = %.preheader.i.i1106
  %i.jdx = xor i32 %.240.lcssa.i.i1108, -1
  %i.jdy = add i32 %i.jbv, %i.jdx                 ; 3 uses
  %i.jdz = zext i32 %i.jdy to i64
  %i.jea = add nuw nsw i64 %i.jdz, 1              ; 5 uses
  %min.iters.check7852 = icmp ult i32 %i.jdy, 7
  br i1 %min.iters.check7852, label %.lr.ph93.i.i1111.preheader, label %vector.memcheck7853

vector.memcheck7853:                              ; preds = %iter.check7871
  %i.jeb = sub i64 %.2.lcssa.i.i11107850, %.244.lcssa.i.i11077851
  %diff.check7854 = icmp ugt i64 %i.jeb, -64
  %i.jec = sub i64 %.236.lcssa.i.i11097849, %.244.lcssa.i.i11077851
  %diff.check7855 = icmp ugt i64 %i.jec, -64
  %conflict.rdx7856 = or i1 %diff.check7854, %diff.check7855
  br i1 %conflict.rdx7856, label %.lr.ph93.i.i1111.preheader, label %vector.main.loop.iter.check7857

vector.main.loop.iter.check7857:                  ; preds = %vector.memcheck7853
  %min.iters.check7858 = icmp ult i32 %i.jdy, 31
  br i1 %min.iters.check7858, label %vec.epilog.ph7875, label %vector.ph7859

vector.ph7859:                                    ; preds = %vector.main.loop.iter.check7857
  %i.jed = and i64 %i.jea, 24
  %n.vec7860 = and i64 %i.jea, 8589934560         ; 5 uses
  %i.jee = shl nuw nsw i64 %n.vec7860, 1          ; 3 uses
  %i.jef = getelementptr i8, ptr %.2.lcssa.i.i1110, i64 %i.jee
  %i.jeg = getelementptr i8, ptr %.236.lcssa.i.i1109, i64 %i.jee
  %i.jeh = trunc i64 %n.vec7860 to i32
  %i.jei = add i32 %.240.lcssa.i.i1108, %i.jeh
  %i.jej = getelementptr i8, ptr %.244.lcssa.i.i1107, i64 %i.jee
  br label %vector.body7861
end_hunk_0
begin_hunk_1_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  store i16 %i.ljd, ptr %.33340.i.i1162, align 2, !tbaa !558
  %i.ljf = getelementptr inbounds nuw i8, ptr %.341.i.i1161, i64 4
  %i.ljg = load i16, ptr %i.liv, align 2, !tbaa !558
  %i.ljh = zext i16 %i.ljg to i32
  %i.lji = shl nuw i32 %i.ljh, 16
  %i.ljj = bitcast i32 %i.lji to float
  %i.ljk = fdiv fast float %i.ler, %i.ljj
  %i.ljl = bitcast float %i.ljk to i32
  %i.ljm = lshr i32 %i.ljl, 16
  %i.ljn = trunc nuw i32 %i.ljm to i16
  %i.ljo = getelementptr inbounds nuw i8, ptr %.33340.i.i1162, i64 4
  store i16 %i.ljn, ptr %i.lje, align 2, !tbaa !558
  %i.ljp = add nuw nsw i32 %.33739.i.i1163, 2     ; 2 uses
  %exitcond.not.i84.i1164.1 = icmp eq i32 %i.ljp, %i.kip
  br i1 %exitcond.not.i84.i1164.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph42.i.i1160, !llvm.loop !275

bb.ii:                                            ; preds = %bb.ig
  %i.ljq = icmp eq i32 %3, 1
  br i1 %i.ljq, label %bb.ij, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.ij:                                            ; preds = %bb.ii
  switch i32 %.sroa.speculated.i1133, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.lr.ph59.preheader.i.i
    i32 8, label %.lr.ph55.preheader.i.i
    i32 4, label %.lr.ph.preheader.i86.i
  ]

.lr.ph59.preheader.i.i:                           ; preds = %bb.ij
  %i.ljr = load <16 x bfloat>, ptr %0, align 1, !tbaa !555
  %i.ljs = fpext fast <16 x bfloat> %i.ljr to <16 x float> ; 3 uses
  %xtraiter10495 = and i32 %.sroa.speculated99.i, 1
  %i.ljt = icmp eq i32 %.sroa.speculated99.i, 1
  br i1 %i.ljt, label %.lr.ph59.i.i1142.epil.preheader, label %.lr.ph59.preheader.i.i.new

.lr.ph59.preheader.i.i.new:                       ; preds = %.lr.ph59.preheader.i.i
  %unroll_iter10498 = and i32 %.sroa.speculated99.i, 2147483646
  %i.lju = fdiv fast <16 x float> splat (float 1.000000e+00), %i.ljs
  %i.ljv = fdiv fast <16 x float> splat (float 1.000000e+00), %i.ljs
  br label %.lr.ph59.i.i1142

.lr.ph59.i.i1142:                                 ; preds = %.lr.ph59.i.i1142, %.lr.ph59.preheader.i.i.new
  %.02858.i.i1143 = phi ptr [ %1, %.lr.ph59.preheader.i.i.new ], [ %i.lko, %.lr.ph59.i.i1142 ] ; 3 uses
  %.03057.i.i1144 = phi ptr [ %2, %.lr.ph59.preheader.i.i.new ], [ %i.lkp, %.lr.ph59.i.i1142 ] ; 3 uses
  %niter10499 = phi i32 [ 0, %.lr.ph59.preheader.i.i.new ], [ %niter10499.next.1, %.lr.ph59.i.i1142 ]
  %i.ljw = load i16, ptr %.02858.i.i1143, align 2, !tbaa !558
  %i.ljx = zext i16 %i.ljw to i32
  %i.ljy = shl nuw i32 %i.ljx, 16
  %i.ljz = insertelement <16 x i32> poison, i32 %i.ljy, i64 0
  %i.lka = bitcast <16 x i32> %i.ljz to <16 x float>
  %i.lkb = shufflevector <16 x float> %i.lka, <16 x float> poison, <16 x i32> zeroinitializer
  %i.lkc = fmul fast <16 x float> %i.lkb, %i.lju
  %i.lkd = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.lkc)
  store <16 x bfloat> %i.lkd, ptr %.03057.i.i1144, align 1, !tbaa !555
  %i.lke = getelementptr inbounds nuw i8, ptr %.02858.i.i1143, i64 2
  %i.lkf = getelementptr inbounds nuw i8, ptr %.03057.i.i1144, i64 32
  %i.lkg = load i16, ptr %i.lke, align 2, !tbaa !558
  %i.lkh = zext i16 %i.lkg to i32
  %i.lki = shl nuw i32 %i.lkh, 16
  %i.lkj = insertelement <16 x i32> poison, i32 %i.lki, i64 0
  %i.lkk = bitcast <16 x i32> %i.lkj to <16 x float>
  %i.lkl = shufflevector <16 x float> %i.lkk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.lkm = fmul fast <16 x float> %i.lkl, %i.ljv
  %i.lkn = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.lkm)
  store <16 x bfloat> %i.lkn, ptr %i.lkf, align 1, !tbaa !555
  %i.lko = getelementptr inbounds nuw i8, ptr %.02858.i.i1143, i64 4 ; 2 uses
  %i.lkp = getelementptr inbounds nuw i8, ptr %.03057.i.i1144, i64 64 ; 2 uses
  %niter10499.next.1 = add i32 %niter10499, 2     ; 2 uses
  %niter10499.ncmp.1 = icmp eq i32 %niter10499.next.1, %unroll_iter10498
  br i1 %niter10499.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9658.unr-lcssa, label %.lr.ph59.i.i1142, !llvm.loop !276

.lr.ph55.preheader.i.i:                           ; preds = %bb.ij
  %i.lkq = load <8 x bfloat>, ptr %0, align 1, !tbaa !555
  %i.lkr = fpext fast <8 x bfloat> %i.lkq to <8 x float> ; 3 uses
  %xtraiter10490 = and i32 %.sroa.speculated99.i, 1
  %i.lks = icmp eq i32 %.sroa.speculated99.i, 1
  br i1 %i.lks, label %.lr.ph55.i.i1137.epil.preheader, label %.lr.ph55.preheader.i.i.new

.lr.ph55.preheader.i.i.new:                       ; preds = %.lr.ph55.preheader.i.i
  %unroll_iter10493 = and i32 %.sroa.speculated99.i, 2147483646
  %i.lkt = fdiv fast <8 x float> splat (float 1.000000e+00), %i.lkr
  %i.lku = fdiv fast <8 x float> splat (float 1.000000e+00), %i.lkr
  br label %.lr.ph55.i.i1137

.lr.ph55.i.i1137:                                 ; preds = %.lr.ph55.i.i1137, %.lr.ph55.preheader.i.i.new
  %.154.i.i1138 = phi ptr [ %1, %.lr.ph55.preheader.i.i.new ], [ %i.lln, %.lr.ph55.i.i1137 ] ; 3 uses
  %.13152.i.i1140 = phi ptr [ %2, %.lr.ph55.preheader.i.i.new ], [ %i.llo, %.lr.ph55.i.i1137 ] ; 3 uses
  %niter10494 = phi i32 [ 0, %.lr.ph55.preheader.i.i.new ], [ %niter10494.next.1, %.lr.ph55.i.i1137 ]
  %i.lkv = load i16, ptr %.154.i.i1138, align 2, !tbaa !558
  %i.lkw = zext i16 %i.lkv to i32
  %i.lkx = shl nuw i32 %i.lkw, 16
  %i.lky = insertelement <8 x i32> poison, i32 %i.lkx, i64 0
  %i.lkz = bitcast <8 x i32> %i.lky to <8 x float>
  %i.lla = shufflevector <8 x float> %i.lkz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.llb = fmul fast <8 x float> %i.lla, %i.lkt
  %i.llc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.llb)
  store <8 x bfloat> %i.llc, ptr %.13152.i.i1140, align 1, !tbaa !555
  %i.lld = getelementptr inbounds nuw i8, ptr %.154.i.i1138, i64 2
  %i.lle = getelementptr inbounds nuw i8, ptr %.13152.i.i1140, i64 16
  %i.llf = load i16, ptr %i.lld, align 2, !tbaa !558
  %i.llg = zext i16 %i.llf to i32
  %i.llh = shl nuw i32 %i.llg, 16
  %i.lli = insertelement <8 x i32> poison, i32 %i.llh, i64 0
  %i.llj = bitcast <8 x i32> %i.lli to <8 x float>
  %i.llk = shufflevector <8 x float> %i.llj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lll = fmul fast <8 x float> %i.llk, %i.lku
  %i.llm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lll)
  store <8 x bfloat> %i.llm, ptr %i.lle, align 1, !tbaa !555
  %i.lln = getelementptr inbounds nuw i8, ptr %.154.i.i1138, i64 4 ; 2 uses
  %i.llo = getelementptr inbounds nuw i8, ptr %.13152.i.i1140, i64 32 ; 2 uses
  %niter10494.next.1 = add i32 %niter10494, 2     ; 2 uses
  %niter10494.ncmp.1 = icmp eq i32 %niter10494.next.1, %unroll_iter10493
  br i1 %niter10494.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9659.unr-lcssa, label %.lr.ph55.i.i1137, !llvm.loop !277

.lr.ph.preheader.i86.i:                           ; preds = %bb.ij
  %i.llp = load i64, ptr %0, align 1, !tbaa !555
  %i.llq = insertelement <2 x i64> poison, i64 %i.llp, i64 0
  %i.llr = bitcast <2 x i64> %i.llq to <8 x i16>
  %i.lls = shufflevector <8 x i16> %i.llr, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.llt = bitcast <8 x i16> %i.lls to <4 x float> ; 3 uses
  %xtraiter10485 = and i32 %.sroa.speculated99.i, 1
  %i.llu = icmp eq i32 %.sroa.speculated99.i, 1
  br i1 %i.llu, label %.lr.ph.i87.i.epil.preheader, label %.lr.ph.preheader.i86.i.new

.lr.ph.preheader.i86.i.new:                       ; preds = %.lr.ph.preheader.i86.i
  %unroll_iter10488 = and i32 %.sroa.speculated99.i, 2147483646
  %i.llv = fdiv fast <4 x float> splat (float 1.000000e+00), %i.llt
  %i.llw = fdiv fast <4 x float> splat (float 1.000000e+00), %i.llt
  br label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %.lr.ph.i87.i, %.lr.ph.preheader.i86.i.new
  %.250.i.i1135 = phi ptr [ %1, %.lr.ph.preheader.i86.i.new ], [ %i.lmv, %.lr.ph.i87.i ] ; 3 uses
  %.23249.i.i1136 = phi ptr [ %2, %.lr.ph.preheader.i86.i.new ], [ %i.lmw, %.lr.ph.i87.i ] ; 3 uses
  %niter10489 = phi i32 [ 0, %.lr.ph.preheader.i86.i.new ], [ %niter10489.next.1, %.lr.ph.i87.i ]
  %i.llx = load i16, ptr %.250.i.i1135, align 2, !tbaa !558
  %i.lly = zext i16 %i.llx to i32
  %i.llz = shl nuw i32 %i.lly, 16
  %i.lma = insertelement <4 x i32> poison, i32 %i.llz, i64 0
  %i.lmb = bitcast <4 x i32> %i.lma to <4 x float>
  %i.lmc = shufflevector <4 x float> %i.lmb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lmd = fmul fast <4 x float> %i.lmc, %i.llv
  %i.lme = shufflevector <4 x float> %i.lmd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.lmf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lme)
  %i.lmg = bitcast <8 x bfloat> %i.lmf to <2 x i64>
  %i.lmh = extractelement <2 x i64> %i.lmg, i64 0
  store i64 %i.lmh, ptr %.23249.i.i1136, align 1, !tbaa !555
  %i.lmi = getelementptr inbounds nuw i8, ptr %.250.i.i1135, i64 2
  %i.lmj = getelementptr inbounds nuw i8, ptr %.23249.i.i1136, i64 8
  %i.lmk = load i16, ptr %i.lmi, align 2, !tbaa !558
  %i.lml = zext i16 %i.lmk to i32
  %i.lmm = shl nuw i32 %i.lml, 16
  %i.lmn = insertelement <4 x i32> poison, i32 %i.lmm, i64 0
  %i.lmo = bitcast <4 x i32> %i.lmn to <4 x float>
  %i.lmp = shufflevector <4 x float> %i.lmo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lmq = fmul fast <4 x float> %i.lmp, %i.llw
  %i.lmr = shufflevector <4 x float> %i.lmq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.lms = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lmr)
  %i.lmt = bitcast <8 x bfloat> %i.lms to <2 x i64>
  %i.lmu = extractelement <2 x i64> %i.lmt, i64 0
  store i64 %i.lmu, ptr %i.lmj, align 1, !tbaa !555
  %i.lmv = getelementptr inbounds nuw i8, ptr %.250.i.i1135, i64 4 ; 2 uses
  %i.lmw = getelementptr inbounds nuw i8, ptr %.23249.i.i1136, i64 16 ; 2 uses
  %niter10489.next.1 = add i32 %niter10489, 2     ; 2 uses
  %niter10489.ncmp.1 = icmp eq i32 %niter10489.next.1, %unroll_iter10488
  br i1 %niter10489.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9660.unr-lcssa, label %.lr.ph.i87.i, !llvm.loop !278

bb.ik:                                            ; preds = %bb.a
  %.sroa.speculated98.i1300 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 10 uses
  %.sroa.speculated.i1301 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.lmx = mul i32 %.sroa.speculated.i1301, %.sroa.speculated98.i1300 ; 48 uses
  %i.lmy = icmp eq i32 %5, %6
  br i1 %i.lmy, label %bb.il, label %bb.je

bb.il:                                            ; preds = %bb.ik
  %i.lmz = icmp eq i32 %3, %4
  br i1 %i.lmz, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.lna = icmp sgt i32 %i.lmx, 15
  br i1 %i.lna, label %.lr.ph.i.i1464, label %.preheader177.i.i1433

.preheader177.loopexit.i.i1469:                   ; preds = %.lr.ph.i.i1464
  %i.lnb = and i32 %i.lmx, 2147483632
  br label %.preheader177.i.i1433

.preheader177.i.i1433:                            ; preds = %.preheader177.loopexit.i.i1469, %bb.im
  %.042.lcssa.i.i1434 = phi ptr [ %2, %bb.im ], [ %i.lpn, %.preheader177.loopexit.i.i1469 ] ; 2 uses
  %.038.lcssa.i.i1435 = phi i32 [ 0, %bb.im ], [ %i.lnb, %.preheader177.loopexit.i.i1469 ] ; 3 uses
  %.034.lcssa.i.i1436 = phi ptr [ %1, %bb.im ], [ %i.lpm, %.preheader177.loopexit.i.i1469 ] ; 2 uses
  %.0.lcssa.i.i1437 = phi ptr [ %0, %bb.im ], [ %i.lpl, %.preheader177.loopexit.i.i1469 ] ; 2 uses
  %i.lnc = or disjoint i32 %.038.lcssa.i.i1435, 7
  %i.lnd = icmp slt i32 %i.lnc, %i.lmx
  br i1 %i.lnd, label %.lr.ph189.i.i1459, label %.preheader176.i.i1438

.lr.ph.i.i1464:                                   ; preds = %bb.im, %.lr.ph.i.i1464
  %.0181.i.i1465 = phi ptr [ %i.lpl, %.lr.ph.i.i1464 ], [ %0, %bb.im ] ; 2 uses
  %.034180.i.i1466 = phi ptr [ %i.lpm, %.lr.ph.i.i1464 ], [ %1, %bb.im ] ; 2 uses
  %.038179.i.i1467 = phi i32 [ %i.lpo, %.lr.ph.i.i1464 ], [ 0, %bb.im ]
  %.042178.i.i1468 = phi ptr [ %i.lpn, %.lr.ph.i.i1464 ], [ %2, %bb.im ] ; 2 uses
  %i.lne = load <16 x bfloat>, ptr %.0181.i.i1465, align 1, !tbaa !555
  %i.lnf = fpext fast <16 x bfloat> %i.lne to <16 x float>
  %i.lng = load <16 x bfloat>, ptr %.034180.i.i1466, align 1, !tbaa !555
  %i.lnh = fpext fast <16 x bfloat> %i.lng to <16 x float>
  %i.lni = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.lnh, <16 x float> splat (float f0x00800000), i32 4)
  %i.lnj = bitcast <16 x float> %i.lni to <16 x i32> ; 2 uses
  %i.lnk = lshr <16 x i32> %i.lnj, splat (i32 23)
  %i.lnl = and <16 x i32> %i.lnj, splat (i32 -2139095041)
  %i.lnm = or disjoint <16 x i32> %i.lnl, splat (i32 1056964608)
  %i.lnn = bitcast <16 x i32> %i.lnm to <16 x float> ; 3 uses
  %i.lno = add nsw <16 x i32> %i.lnk, splat (i32 -127)
  %i.lnp = sitofp fast <16 x i32> %i.lno to <16 x float> ; 2 uses
  %i.lnq = fadd fast <16 x float> %i.lnp, splat (float 1.000000e+00)
  %i.lnr = fcmp fast olt <16 x float> %i.lnn, splat (float f0x3F3504F3) ; 2 uses
  %i.lns = fadd fast <16 x float> %i.lnn, splat (float -1.000000e+00)
  %i.lnt = select fast <16 x i1> %i.lnr, <16 x float> %i.lnp, <16 x float> %i.lnq ; 2 uses
  %i.lnu = select fast <16 x i1> %i.lnr, <16 x float> %i.lnn, <16 x float> zeroinitializer
  %i.lnv = fadd fast <16 x float> %i.lns, %i.lnu  ; 12 uses
  %i.lnw = fmul fast <16 x float> %i.lnv, %i.lnv  ; 2 uses
  %i.lnx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lnv, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.lny = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lnx, <16 x float> nofpclass(nan inf) %i.lnv, <16 x float> splat (float f0x3DEF251A))
  %i.lnz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lny, <16 x float> nofpclass(nan inf) %i.lnv, <16 x float> splat (float f0xBDFE5D4F))
  %i.loa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lnz, <16 x float> nofpclass(nan inf) %i.lnv, <16 x float> splat (float f0x3E11E9BF))
  %i.lob = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.loa, <16 x float> nofpclass(nan inf) %i.lnv, <16 x float> splat (float f0xBE2AAE50))
  %i.loc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lob, <16 x float> nofpclass(nan inf) %i.lnv, <16 x float> splat (float f0x3E4CCEAC))
  %i.lod = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.loc, <16 x float> nofpclass(nan inf) %i.lnv, <16 x float> splat (float f0xBE7FFFFC))
  %i.loe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lod, <16 x float> nofpclass(nan inf) %i.lnv, <16 x float> splat (float f0x3EAAAAAA))
  %i.lof = fmul fast <16 x float> %i.lnw, %i.lnv
  %i.log = fmul fast <16 x float> %i.lof, %i.loe
  %i.loh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lnt, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.log)
  %i.loi = fneg fast <16 x float> %i.lnw
  %i.loj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.loi, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.loh)
  %i.lok = fadd fast <16 x float> %i.loj, %i.lnv
  %i.lol = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lnt, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.lok)
  %i.lom = fmul fast <16 x float> %i.lol, %i.lnf
  %i.lon = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.lom, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.loo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.lon, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.lop = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.loo, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.loq = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.lop, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.lor = fcmp fast ogt <16 x float> %i.loq, %i.lop
  %i.los = fadd fast <16 x float> %i.loq, splat (float -1.000000e+00)
  %i.lot = select fast <16 x i1> %i.lor, <16 x float> %i.los, <16 x float> %i.loq ; 2 uses
  %i.lou = fneg fast <16 x float> %i.lot          ; 2 uses
  %i.lov = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.lou, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.loo)
  %i.low = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.lou, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.lov) ; 8 uses
  %i.lox = fmul fast <16 x float> %i.low, %i.low
  %i.loy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.low, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.loz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.loy, <16 x float> nofpclass(nan inf) %i.low, <16 x float> splat (float f0x3C088908))
  %i.lpa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.loz, <16 x float> nofpclass(nan inf) %i.low, <16 x float> splat (float f0x3D2AA9C1))
  %i.lpb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lpa, <16 x float> nofpclass(nan inf) %i.low, <16 x float> splat (float f0x3E2AAAAA))
  %i.lpc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lpb, <16 x float> nofpclass(nan inf) %i.low, <16 x float> splat (float 5.000000e-01))
  %i.lpd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lpc, <16 x float> nofpclass(nan inf) %i.lox, <16 x float> nofpclass(nan inf) %i.low)
  %i.lpe = fadd fast <16 x float> %i.lpd, splat (float 1.000000e+00)
  %i.lpf = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.lot, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.lpg = shl <16 x i32> %i.lpf, splat (i32 23)
  %i.lph = add <16 x i32> %i.lpg, splat (i32 1065353216)
  %i.lpi = bitcast <16 x i32> %i.lph to <16 x float>
  %i.lpj = fmul fast <16 x float> %i.lpe, %i.lpi
  %i.lpk = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.lpj)
  store <16 x bfloat> %i.lpk, ptr %.042178.i.i1468, align 1, !tbaa !555
  %i.lpl = getelementptr inbounds nuw i8, ptr %.0181.i.i1465, i64 32 ; 2 uses
  %i.lpm = getelementptr inbounds nuw i8, ptr %.034180.i.i1466, i64 32 ; 2 uses
  %i.lpn = getelementptr inbounds nuw i8, ptr %.042178.i.i1468, i64 32 ; 2 uses
  %i.lpo = add nuw nsw i32 %.038179.i.i1467, 16   ; 2 uses
  %i.lpp = or disjoint i32 %i.lpo, 15
  %i.lpq = icmp slt i32 %i.lpp, %i.lmx
  br i1 %i.lpq, label %.lr.ph.i.i1464, label %.preheader177.loopexit.i.i1469, !llvm.loop !279

.preheader176.i.i1438:                            ; preds = %.lr.ph189.i.i1459, %.preheader177.i.i1433
  %.143.lcssa.i.i1439 = phi ptr [ %.042.lcssa.i.i1434, %.preheader177.i.i1433 ], [ %i.lsc, %.lr.ph189.i.i1459 ] ; 2 uses
  %.139.lcssa.i.i1440 = phi i32 [ %.038.lcssa.i.i1435, %.preheader177.i.i1433 ], [ %i.lsd, %.lr.ph189.i.i1459 ] ; 3 uses
  %.135.lcssa.i.i1441 = phi ptr [ %.034.lcssa.i.i1436, %.preheader177.i.i1433 ], [ %i.lsb, %.lr.ph189.i.i1459 ] ; 2 uses
  %.1.lcssa.i.i1442 = phi ptr [ %.0.lcssa.i.i1437, %.preheader177.i.i1433 ], [ %i.lsa, %.lr.ph189.i.i1459 ] ; 2 uses
  %i.lpr = or disjoint i32 %.139.lcssa.i.i1440, 3
  %i.lps = icmp slt i32 %i.lpr, %i.lmx
  br i1 %i.lps, label %.lr.ph198.i.i1454, label %.preheader.i.i1443

.lr.ph189.i.i1459:                                ; preds = %.preheader177.i.i1433, %.lr.ph189.i.i1459
  %.1188.i.i1460 = phi ptr [ %i.lsa, %.lr.ph189.i.i1459 ], [ %.0.lcssa.i.i1437, %.preheader177.i.i1433 ] ; 2 uses
  %.135187.i.i1461 = phi ptr [ %i.lsb, %.lr.ph189.i.i1459 ], [ %.034.lcssa.i.i1436, %.preheader177.i.i1433 ] ; 2 uses
  %.139186.i.i1462 = phi i32 [ %i.lsd, %.lr.ph189.i.i1459 ], [ %.038.lcssa.i.i1435, %.preheader177.i.i1433 ]
  %.143185.i.i1463 = phi ptr [ %i.lsc, %.lr.ph189.i.i1459 ], [ %.042.lcssa.i.i1434, %.preheader177.i.i1433 ] ; 2 uses
  %i.lpt = load <8 x bfloat>, ptr %.1188.i.i1460, align 1, !tbaa !555
  %i.lpu = fpext fast <8 x bfloat> %i.lpt to <8 x float>
  %i.lpv = load <8 x bfloat>, ptr %.135187.i.i1461, align 1, !tbaa !555
  %i.lpw = fpext fast <8 x bfloat> %i.lpv to <8 x float>
  %i.lpx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lpw, <8 x float> splat (float f0x00800000))
  %i.lpy = bitcast <8 x float> %i.lpx to <8 x i32> ; 2 uses
  %i.lpz = lshr <8 x i32> %i.lpy, splat (i32 23)
  %i.lqa = and <8 x i32> %i.lpy, splat (i32 -2139095041)
  %i.lqb = or disjoint <8 x i32> %i.lqa, splat (i32 1056964608)
  %i.lqc = bitcast <8 x i32> %i.lqb to <8 x float> ; 3 uses
  %i.lqd = add nsw <8 x i32> %i.lpz, splat (i32 -127)
  %i.lqe = sitofp fast <8 x i32> %i.lqd to <8 x float> ; 2 uses
  %i.lqf = fadd fast <8 x float> %i.lqe, splat (float 1.000000e+00)
  %i.lqg = fcmp fast olt <8 x float> %i.lqc, splat (float f0x3F3504F3) ; 2 uses
  %i.lqh = select <8 x i1> %i.lqg, <8 x float> %i.lqc, <8 x float> zeroinitializer
  %i.lqi = fadd fast <8 x float> %i.lqc, splat (float -1.000000e+00)
  %i.lqj = select fast <8 x i1> %i.lqg, <8 x float> %i.lqe, <8 x float> %i.lqf ; 2 uses
  %i.lqk = fadd fast <8 x float> %i.lqi, %i.lqh   ; 12 uses
  %i.lql = fmul fast <8 x float> %i.lqk, %i.lqk   ; 2 uses
  %i.lqm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lqk, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.lqn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lqm, <8 x float> nofpclass(nan inf) %i.lqk, <8 x float> splat (float f0x3DEF251A))
  %i.lqo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lqn, <8 x float> nofpclass(nan inf) %i.lqk, <8 x float> splat (float f0xBDFE5D4F))
  %i.lqp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lqo, <8 x float> nofpclass(nan inf) %i.lqk, <8 x float> splat (float f0x3E11E9BF))
  %i.lqq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lqp, <8 x float> nofpclass(nan inf) %i.lqk, <8 x float> splat (float f0xBE2AAE50))
  %i.lqr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lqq, <8 x float> nofpclass(nan inf) %i.lqk, <8 x float> splat (float f0x3E4CCEAC))
  %i.lqs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lqr, <8 x float> nofpclass(nan inf) %i.lqk, <8 x float> splat (float f0xBE7FFFFC))
  %i.lqt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lqs, <8 x float> nofpclass(nan inf) %i.lqk, <8 x float> splat (float f0x3EAAAAAA))
  %i.lqu = fmul fast <8 x float> %i.lql, %i.lqk
  %i.lqv = fmul fast <8 x float> %i.lqu, %i.lqt
  %i.lqw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lqj, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.lqv)
  %i.lqx = fneg fast <8 x float> %i.lql
  %i.lqy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lqx, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.lqw)
  %i.lqz = fadd fast <8 x float> %i.lqy, %i.lqk
  %i.lra = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lqj, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.lqz)
  %i.lrb = fmul fast <8 x float> %i.lra, %i.lpu
  %i.lrc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lrb, <8 x float> splat (float f0x42B0C0A5))
  %i.lrd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lrc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lre = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lrd, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.lrf = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.lre, i32 1) ; 2 uses
  %i.lrg = fcmp fast ogt <8 x float> %i.lrf, %i.lre
  %i.lrh = select <8 x i1> %i.lrg, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.lri = fsub fast <8 x float> %i.lrf, %i.lrh   ; 2 uses
  %i.lrj = fneg fast <8 x float> %i.lri           ; 2 uses
  %i.lrk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lrj, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.lrd)
  %i.lrl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lrj, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.lrk) ; 8 uses
  %i.lrm = fmul fast <8 x float> %i.lrl, %i.lrl
  %i.lrn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lrl, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.lro = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lrn, <8 x float> nofpclass(nan inf) %i.lrl, <8 x float> splat (float f0x3C088908))
  %i.lrp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lro, <8 x float> nofpclass(nan inf) %i.lrl, <8 x float> splat (float f0x3D2AA9C1))
  %i.lrq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lrp, <8 x float> nofpclass(nan inf) %i.lrl, <8 x float> splat (float f0x3E2AAAAA))
  %i.lrr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lrq, <8 x float> nofpclass(nan inf) %i.lrl, <8 x float> splat (float 5.000000e-01))
  %i.lrs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lrr, <8 x float> nofpclass(nan inf) %i.lrm, <8 x float> nofpclass(nan inf) %i.lrl)
  %i.lrt = fadd fast <8 x float> %i.lrs, splat (float 1.000000e+00)
  %i.lru = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lri)
  %i.lrv = shl <8 x i32> %i.lru, splat (i32 23)
  %i.lrw = add <8 x i32> %i.lrv, splat (i32 1065353216)
  %i.lrx = bitcast <8 x i32> %i.lrw to <8 x float>
  %i.lry = fmul fast <8 x float> %i.lrt, %i.lrx
  %i.lrz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lry)
  store <8 x bfloat> %i.lrz, ptr %.143185.i.i1463, align 1, !tbaa !555
  %i.lsa = getelementptr inbounds nuw i8, ptr %.1188.i.i1460, i64 16 ; 2 uses
  %i.lsb = getelementptr inbounds nuw i8, ptr %.135187.i.i1461, i64 16 ; 2 uses
  %i.lsc = getelementptr inbounds nuw i8, ptr %.143185.i.i1463, i64 16 ; 2 uses
  %i.lsd = add nuw nsw i32 %.139186.i.i1462, 8    ; 3 uses
  %i.lse = or disjoint i32 %i.lsd, 7
  %i.lsf = icmp slt i32 %i.lse, %i.lmx
  br i1 %i.lsf, label %.lr.ph189.i.i1459, label %.preheader176.i.i1438, !llvm.loop !280

.preheader.i.i1443:                               ; preds = %.lr.ph198.i.i1454, %.preheader176.i.i1438
  %.244.lcssa.i.i1444 = phi ptr [ %.143.lcssa.i.i1439, %.preheader176.i.i1438 ], [ %i.lxk, %.lr.ph198.i.i1454 ] ; 7 uses
  %.240.lcssa.i.i1445 = phi i32 [ %.139.lcssa.i.i1440, %.preheader176.i.i1438 ], [ %i.lxl, %.lr.ph198.i.i1454 ] ; 6 uses
  %.236.lcssa.i.i1446 = phi ptr [ %.135.lcssa.i.i1441, %.preheader176.i.i1438 ], [ %i.lxj, %.lr.ph198.i.i1454 ] ; 7 uses
  %.2.lcssa.i.i1447 = phi ptr [ %.1.lcssa.i.i1442, %.preheader176.i.i1438 ], [ %i.lxi, %.lr.ph198.i.i1454 ] ; 7 uses
  %.236.lcssa.i.i14467482 = ptrtoaddr ptr %.236.lcssa.i.i1446 to i64
  %.2.lcssa.i.i14477483 = ptrtoaddr ptr %.2.lcssa.i.i1447 to i64
  %.244.lcssa.i.i14447484 = ptrtoaddr ptr %.244.lcssa.i.i1444 to i64 ; 2 uses
  %i.lsg = icmp slt i32 %.240.lcssa.i.i1445, %i.lmx
  br i1 %i.lsg, label %iter.check7504, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7504:                                   ; preds = %.preheader.i.i1443
  %i.lsh = xor i32 %.240.lcssa.i.i1445, -1
  %i.lsi = add i32 %i.lmx, %i.lsh                 ; 3 uses
  %i.lsj = zext i32 %i.lsi to i64
  %i.lsk = add nuw nsw i64 %i.lsj, 1              ; 5 uses
  %min.iters.check7485 = icmp ult i32 %i.lsi, 7
  br i1 %min.iters.check7485, label %.lr.ph207.i.i1448.preheader, label %vector.memcheck7486

vector.memcheck7486:                              ; preds = %iter.check7504
  %i.lsl = sub i64 %.2.lcssa.i.i14477483, %.244.lcssa.i.i14447484
  %diff.check7487 = icmp ugt i64 %i.lsl, -64
  %i.lsm = sub i64 %.236.lcssa.i.i14467482, %.244.lcssa.i.i14447484
  %diff.check7488 = icmp ugt i64 %i.lsm, -64
  %conflict.rdx7489 = or i1 %diff.check7487, %diff.check7488
  br i1 %conflict.rdx7489, label %.lr.ph207.i.i1448.preheader, label %vector.main.loop.iter.check7490

vector.main.loop.iter.check7490:                  ; preds = %vector.memcheck7486
  %min.iters.check7491 = icmp ult i32 %i.lsi, 31
  br i1 %min.iters.check7491, label %vec.epilog.ph7508, label %vector.ph7492

vector.ph7492:                                    ; preds = %vector.main.loop.iter.check7490
  %i.lsn = and i64 %i.lsk, 24
  %n.vec7493 = and i64 %i.lsk, 8589934560         ; 5 uses
  %i.lso = shl nuw nsw i64 %n.vec7493, 1          ; 3 uses
  %i.lsp = getelementptr i8, ptr %.2.lcssa.i.i1447, i64 %i.lso
  %i.lsq = getelementptr i8, ptr %.236.lcssa.i.i1446, i64 %i.lso
  %i.lsr = trunc i64 %n.vec7493 to i32
  %i.lss = add i32 %.240.lcssa.i.i1445, %i.lsr
  %i.lst = getelementptr i8, ptr %.244.lcssa.i.i1444, i64 %i.lso
  br label %vector.body7494

vector.body7494:                                  ; preds = %vector.ph7492, %vector.body7494
  %index7495 = phi i64 [ 0, %vector.ph7492 ], [ %index.next7501, %vector.body7494 ] ; 2 uses
  %i.lsu = shl i64 %index7495, 1                  ; 3 uses
  %next.gep7496 = getelementptr i8, ptr %.2.lcssa.i.i1447, i64 %i.lsu
  %next.gep7497 = getelementptr i8, ptr %.236.lcssa.i.i1446, i64 %i.lsu
  %next.gep7498 = getelementptr i8, ptr %.244.lcssa.i.i1444, i64 %i.lsu
  %wide.load7499 = load <32 x i16>, ptr %next.gep7496, align 2, !tbaa !558
  %i.lsv = zext <32 x i16> %wide.load7499 to <32 x i32>
  %i.lsw = shl nuw <32 x i32> %i.lsv, splat (i32 16)
  %i.lsx = bitcast <32 x i32> %i.lsw to <32 x float>
  %wide.load7500 = load <32 x i16>, ptr %next.gep7497, align 2, !tbaa !558
  %i.lsy = zext <32 x i16> %wide.load7500 to <32 x i32>
  %i.lsz = shl nuw <32 x i32> %i.lsy, splat (i32 16)
  %i.lta = bitcast <32 x i32> %i.lsz to <32 x float>
  %i.ltb = tail call fast <32 x float> @llvm.pow.v32f32(<32 x float> %i.lta, <32 x float> %i.lsx)
  %i.ltc = bitcast <32 x float> %i.ltb to <32 x i32>
  %i.ltd = lshr <32 x i32> %i.ltc, splat (i32 16)
  %i.lte = trunc nuw <32 x i32> %i.ltd to <32 x i16>
  store <32 x i16> %i.lte, ptr %next.gep7498, align 2, !tbaa !558
  %index.next7501 = add nuw i64 %index7495, 32    ; 2 uses
  %i.ltf = icmp eq i64 %index.next7501, %n.vec7493
  br i1 %i.ltf, label %middle.block7502, label %vector.body7494, !llvm.loop !281

middle.block7502:                                 ; preds = %vector.body7494
  %cmp.n7503 = icmp eq i64 %i.lsk, %n.vec7493
  br i1 %cmp.n7503, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7505

vec.epilog.iter.check7505:                        ; preds = %middle.block7502
  %min.epilog.iters.check7507 = icmp eq i64 %i.lsn, 0
  br i1 %min.epilog.iters.check7507, label %.lr.ph207.i.i1448.preheader, label %vec.epilog.ph7508, !prof !561

vec.epilog.ph7508:                                ; preds = %vector.main.loop.iter.check7490, %vec.epilog.iter.check7505
  %vec.epilog.resume.val7509 = phi i64 [ %n.vec7493, %vec.epilog.iter.check7505 ], [ 0, %vector.main.loop.iter.check7490 ]
  %n.vec7510 = and i64 %i.lsk, 8589934584         ; 4 uses
  %i.ltg = shl nuw nsw i64 %n.vec7510, 1          ; 3 uses
  %i.lth = getelementptr i8, ptr %.2.lcssa.i.i1447, i64 %i.ltg
  %i.lti = getelementptr i8, ptr %.236.lcssa.i.i1446, i64 %i.ltg
  %i.ltj = trunc i64 %n.vec7510 to i32
  %i.ltk = add i32 %.240.lcssa.i.i1445, %i.ltj
  %i.ltl = getelementptr i8, ptr %.244.lcssa.i.i1444, i64 %i.ltg
  br label %vec.epilog.vector.body7511

vec.epilog.vector.body7511:                       ; preds = %vec.epilog.vector.body7511, %vec.epilog.ph7508
  %index7512 = phi i64 [ %vec.epilog.resume.val7509, %vec.epilog.ph7508 ], [ %index.next7518, %vec.epilog.vector.body7511 ] ; 2 uses
  %i.ltm = shl i64 %index7512, 1                  ; 3 uses
  %next.gep7513 = getelementptr i8, ptr %.2.lcssa.i.i1447, i64 %i.ltm
  %next.gep7514 = getelementptr i8, ptr %.236.lcssa.i.i1446, i64 %i.ltm
  %next.gep7515 = getelementptr i8, ptr %.244.lcssa.i.i1444, i64 %i.ltm
  %wide.load7516 = load <8 x i16>, ptr %next.gep7513, align 2, !tbaa !558
  %i.ltn = zext <8 x i16> %wide.load7516 to <8 x i32>
  %i.lto = shl nuw <8 x i32> %i.ltn, splat (i32 16)
  %i.ltp = bitcast <8 x i32> %i.lto to <8 x float>
  %wide.load7517 = load <8 x i16>, ptr %next.gep7514, align 2, !tbaa !558
  %i.ltq = zext <8 x i16> %wide.load7517 to <8 x i32>
  %i.ltr = shl nuw <8 x i32> %i.ltq, splat (i32 16)
  %i.lts = bitcast <8 x i32> %i.ltr to <8 x float>
  %i.ltt = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.lts, <8 x float> %i.ltp)
  %i.ltu = bitcast <8 x float> %i.ltt to <8 x i32>
  %i.ltv = lshr <8 x i32> %i.ltu, splat (i32 16)
  %i.ltw = trunc nuw <8 x i32> %i.ltv to <8 x i16>
  store <8 x i16> %i.ltw, ptr %next.gep7515, align 2, !tbaa !558
  %index.next7518 = add nuw i64 %index7512, 8     ; 2 uses
  %i.ltx = icmp eq i64 %index.next7518, %n.vec7510
  br i1 %i.ltx, label %vec.epilog.middle.block7519, label %vec.epilog.vector.body7511, !llvm.loop !282

vec.epilog.middle.block7519:                      ; preds = %vec.epilog.vector.body7511
  %cmp.n7520 = icmp eq i64 %i.lsk, %n.vec7510
  br i1 %cmp.n7520, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph207.i.i1448.preheader

.lr.ph207.i.i1448.preheader:                      ; preds = %iter.check7504, %vector.memcheck7486, %vec.epilog.iter.check7505, %vec.epilog.middle.block7519
  %.3206.i.i1449.ph = phi ptr [ %.2.lcssa.i.i1447, %iter.check7504 ], [ %.2.lcssa.i.i1447, %vector.memcheck7486 ], [ %i.lsp, %vec.epilog.iter.check7505 ], [ %i.lth, %vec.epilog.middle.block7519 ] ; 3 uses
  %.337205.i.i1450.ph = phi ptr [ %.236.lcssa.i.i1446, %iter.check7504 ], [ %.236.lcssa.i.i1446, %vector.memcheck7486 ], [ %i.lsq, %vec.epilog.iter.check7505 ], [ %i.lti, %vec.epilog.middle.block7519 ] ; 3 uses
  %.341204.i.i1451.ph = phi i32 [ %.240.lcssa.i.i1445, %iter.check7504 ], [ %.240.lcssa.i.i1445, %vector.memcheck7486 ], [ %i.lss, %vec.epilog.iter.check7505 ], [ %i.ltk, %vec.epilog.middle.block7519 ] ; 4 uses
  %.345203.i.i1452.ph = phi ptr [ %.244.lcssa.i.i1444, %iter.check7504 ], [ %.244.lcssa.i.i1444, %vector.memcheck7486 ], [ %i.lst, %vec.epilog.iter.check7505 ], [ %i.ltl, %vec.epilog.middle.block7519 ] ; 3 uses
  %i.lty = sub i32 %i.lmx, %.341204.i.i1451.ph
  %.neg11074 = add i32 %.341204.i.i1451.ph, 1
  %xtraiter10483 = and i32 %i.lty, 1
  %lcmp.mod10484.not = icmp eq i32 %xtraiter10483, 0
  br i1 %lcmp.mod10484.not, label %.lr.ph207.i.i1448.prol.loopexit, label %.lr.ph207.i.i1448.prol

.lr.ph207.i.i1448.prol:                           ; preds = %.lr.ph207.i.i1448.preheader
  %i.ltz = getelementptr inbounds nuw i8, ptr %.3206.i.i1449.ph, i64 2
  %i.lua = load i16, ptr %.3206.i.i1449.ph, align 2, !tbaa !558
  %i.lub = zext i16 %i.lua to i32
  %i.luc = shl nuw i32 %i.lub, 16
  %i.lud = bitcast i32 %i.luc to float
  %i.lue = getelementptr inbounds nuw i8, ptr %.337205.i.i1450.ph, i64 2
  %i.luf = load i16, ptr %.337205.i.i1450.ph, align 2, !tbaa !558
  %i.lug = zext i16 %i.luf to i32
  %i.luh = shl nuw i32 %i.lug, 16
  %i.lui = bitcast i32 %i.luh to float
  %i.luj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lui, float %i.lud)
  %i.luk = bitcast float %i.luj to i32
  %i.lul = lshr i32 %i.luk, 16
  %i.lum = trunc nuw i32 %i.lul to i16
  %i.lun = getelementptr inbounds nuw i8, ptr %.345203.i.i1452.ph, i64 2
  store i16 %i.lum, ptr %.345203.i.i1452.ph, align 2, !tbaa !558
  %i.luo = add nuw nsw i32 %.341204.i.i1451.ph, 1
  br label %.lr.ph207.i.i1448.prol.loopexit

.lr.ph207.i.i1448.prol.loopexit:                  ; preds = %.lr.ph207.i.i1448.prol, %.lr.ph207.i.i1448.preheader
  %.3206.i.i1449.unr = phi ptr [ %.3206.i.i1449.ph, %.lr.ph207.i.i1448.preheader ], [ %i.ltz, %.lr.ph207.i.i1448.prol ]
  %.337205.i.i1450.unr = phi ptr [ %.337205.i.i1450.ph, %.lr.ph207.i.i1448.preheader ], [ %i.lue, %.lr.ph207.i.i1448.prol ]
  %.341204.i.i1451.unr = phi i32 [ %.341204.i.i1451.ph, %.lr.ph207.i.i1448.preheader ], [ %i.luo, %.lr.ph207.i.i1448.prol ]
  %.345203.i.i1452.unr = phi ptr [ %.345203.i.i1452.ph, %.lr.ph207.i.i1448.preheader ], [ %i.lun, %.lr.ph207.i.i1448.prol ]
  %i.lup = icmp eq i32 %i.lmx, %.neg11074
  br i1 %i.lup, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph207.i.i1448

.lr.ph198.i.i1454:                                ; preds = %.preheader176.i.i1438, %.lr.ph198.i.i1454
  %.2197.i.i1455 = phi ptr [ %i.lxi, %.lr.ph198.i.i1454 ], [ %.1.lcssa.i.i1442, %.preheader176.i.i1438 ] ; 2 uses
  %.236196.i.i1456 = phi ptr [ %i.lxj, %.lr.ph198.i.i1454 ], [ %.135.lcssa.i.i1441, %.preheader176.i.i1438 ] ; 2 uses
  %.240195.i.i1457 = phi i32 [ %i.lxl, %.lr.ph198.i.i1454 ], [ %.139.lcssa.i.i1440, %.preheader176.i.i1438 ]
  %.244194.i.i1458 = phi ptr [ %i.lxk, %.lr.ph198.i.i1454 ], [ %.143.lcssa.i.i1439, %.preheader176.i.i1438 ] ; 2 uses
  %i.luq = load i64, ptr %.2197.i.i1455, align 1, !tbaa !555
  %i.lur = insertelement <2 x i64> poison, i64 %i.luq, i64 0
  %i.lus = bitcast <2 x i64> %i.lur to <8 x i16>
  %i.lut = shufflevector <8 x i16> %i.lus, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.luu = bitcast <8 x i16> %i.lut to <4 x float>
  %i.luv = load i64, ptr %.236196.i.i1456, align 1, !tbaa !555
  %i.luw = insertelement <2 x i64> poison, i64 %i.luv, i64 0
  %i.lux = bitcast <2 x i64> %i.luw to <8 x i16>
  %i.luy = shufflevector <8 x i16> %i.lux, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.luz = bitcast <8 x i16> %i.luy to <4 x float>
  %i.lva = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.luz, <4 x float> splat (float f0x00800000))
  %i.lvb = bitcast <4 x float> %i.lva to <4 x i32> ; 2 uses
  %i.lvc = lshr <4 x i32> %i.lvb, splat (i32 23)
  %i.lvd = and <4 x i32> %i.lvb, splat (i32 -2139095041)
  %i.lve = or disjoint <4 x i32> %i.lvd, splat (i32 1056964608)
  %i.lvf = bitcast <4 x i32> %i.lve to <4 x float> ; 3 uses
  %i.lvg = add nsw <4 x i32> %i.lvc, splat (i32 -127)
  %i.lvh = sitofp fast <4 x i32> %i.lvg to <4 x float> ; 2 uses
  %i.lvi = fadd fast <4 x float> %i.lvh, splat (float 1.000000e+00)
  %i.lvj = fcmp fast olt <4 x float> %i.lvf, splat (float f0x3F3504F3) ; 2 uses
  %i.lvk = select <4 x i1> %i.lvj, <4 x float> %i.lvf, <4 x float> zeroinitializer
  %i.lvl = fadd fast <4 x float> %i.lvf, splat (float -1.000000e+00)
  %i.lvm = select fast <4 x i1> %i.lvj, <4 x float> %i.lvh, <4 x float> %i.lvi ; 2 uses
  %i.lvn = fadd fast <4 x float> %i.lvl, %i.lvk   ; 12 uses
  %i.lvo = fmul fast <4 x float> %i.lvn, %i.lvn   ; 2 uses
  %i.lvp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lvn, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.lvq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lvp, <4 x float> nofpclass(nan inf) %i.lvn, <4 x float> splat (float f0x3DEF251A))
  %i.lvr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lvq, <4 x float> nofpclass(nan inf) %i.lvn, <4 x float> splat (float f0xBDFE5D4F))
  %i.lvs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lvr, <4 x float> nofpclass(nan inf) %i.lvn, <4 x float> splat (float f0x3E11E9BF))
  %i.lvt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lvs, <4 x float> nofpclass(nan inf) %i.lvn, <4 x float> splat (float f0xBE2AAE50))
  %i.lvu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lvt, <4 x float> nofpclass(nan inf) %i.lvn, <4 x float> splat (float f0x3E4CCEAC))
  %i.lvv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lvu, <4 x float> nofpclass(nan inf) %i.lvn, <4 x float> splat (float f0xBE7FFFFC))
  %i.lvw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lvv, <4 x float> nofpclass(nan inf) %i.lvn, <4 x float> splat (float f0x3EAAAAAA))
  %i.lvx = fmul fast <4 x float> %i.lvo, %i.lvn
  %i.lvy = fmul fast <4 x float> %i.lvx, %i.lvw
  %i.lvz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lvm, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.lvy)
  %i.lwa = fneg fast <4 x float> %i.lvo
  %i.lwb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.lwa, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.lvz)
  %i.lwc = fadd fast <4 x float> %i.lwb, %i.lvn
  %i.lwd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lvm, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.lwc)
  %i.lwe = fmul fast <4 x float> %i.lwd, %i.luu
  %i.lwf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lwe, <4 x float> splat (float f0x42B0C0A5))
  %i.lwg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lwf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lwh = fmul fast <4 x float> %i.lwg, splat (float f0x3FB8AA3B)
  %i.lwi = fadd fast <4 x float> %i.lwh, splat (float 5.000000e-01) ; 2 uses
  %i.lwj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lwi)
  %i.lwk = sitofp fast <4 x i32> %i.lwj to <4 x float> ; 2 uses
  %i.lwl = fcmp fast olt <4 x float> %i.lwi, %i.lwk
  %i.lwm = select <4 x i1> %i.lwl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.lwn = fsub fast <4 x float> %i.lwk, %i.lwm   ; 2 uses
  %i.lwo = fneg fast <4 x float> %i.lwn           ; 2 uses
  %i.lwp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.lwo, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.lwg)
  %i.lwq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.lwo, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.lwp) ; 8 uses
  %i.lwr = fmul fast <4 x float> %i.lwq, %i.lwq
  %i.lws = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwq, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.lwt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lws, <4 x float> nofpclass(nan inf) %i.lwq, <4 x float> splat (float f0x3C088908))
  %i.lwu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwt, <4 x float> nofpclass(nan inf) %i.lwq, <4 x float> splat (float f0x3D2AA9C1))
  %i.lwv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwu, <4 x float> nofpclass(nan inf) %i.lwq, <4 x float> splat (float f0x3E2AAAAA))
  %i.lww = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwv, <4 x float> nofpclass(nan inf) %i.lwq, <4 x float> splat (float 5.000000e-01))
  %i.lwx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lww, <4 x float> nofpclass(nan inf) %i.lwr, <4 x float> nofpclass(nan inf) %i.lwq)
  %i.lwy = fadd fast <4 x float> %i.lwx, splat (float 1.000000e+00)
  %i.lwz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lwn)
  %i.lxa = shl <4 x i32> %i.lwz, splat (i32 23)
  %i.lxb = add <4 x i32> %i.lxa, splat (i32 1065353216)
  %i.lxc = bitcast <4 x i32> %i.lxb to <4 x float>
  %i.lxd = fmul fast <4 x float> %i.lwy, %i.lxc
  %i.lxe = shufflevector <4 x float> %i.lxd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.lxf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lxe)
  %i.lxg = bitcast <8 x bfloat> %i.lxf to <2 x i64>
  %i.lxh = extractelement <2 x i64> %i.lxg, i64 0
  store i64 %i.lxh, ptr %.244194.i.i1458, align 1, !tbaa !555
  %i.lxi = getelementptr inbounds nuw i8, ptr %.2197.i.i1455, i64 8 ; 2 uses
  %i.lxj = getelementptr inbounds nuw i8, ptr %.236196.i.i1456, i64 8 ; 2 uses
  %i.lxk = getelementptr inbounds nuw i8, ptr %.244194.i.i1458, i64 8 ; 2 uses
  %i.lxl = add nuw nsw i32 %.240195.i.i1457, 4    ; 3 uses
  %i.lxm = or disjoint i32 %i.lxl, 3
  %i.lxn = icmp slt i32 %i.lxm, %i.lmx
  br i1 %i.lxn, label %.lr.ph198.i.i1454, label %.preheader.i.i1443, !llvm.loop !283

.lr.ph207.i.i1448:                                ; preds = %.lr.ph207.i.i1448.prol.loopexit, %.lr.ph207.i.i1448
  %.3206.i.i1449 = phi ptr [ %i.lyd, %.lr.ph207.i.i1448 ], [ %.3206.i.i1449.unr, %.lr.ph207.i.i1448.prol.loopexit ] ; 3 uses
  %.337205.i.i1450 = phi ptr [ %i.lyi, %.lr.ph207.i.i1448 ], [ %.337205.i.i1450.unr, %.lr.ph207.i.i1448.prol.loopexit ] ; 3 uses
  %.341204.i.i1451 = phi i32 [ %i.lys, %.lr.ph207.i.i1448 ], [ %.341204.i.i1451.unr, %.lr.ph207.i.i1448.prol.loopexit ]
  %.345203.i.i1452 = phi ptr [ %i.lyr, %.lr.ph207.i.i1448 ], [ %.345203.i.i1452.unr, %.lr.ph207.i.i1448.prol.loopexit ] ; 3 uses
  %i.lxo = getelementptr inbounds nuw i8, ptr %.3206.i.i1449, i64 2
  %i.lxp = load i16, ptr %.3206.i.i1449, align 2, !tbaa !558
  %i.lxq = zext i16 %i.lxp to i32
  %i.lxr = shl nuw i32 %i.lxq, 16
  %i.lxs = bitcast i32 %i.lxr to float
  %i.lxt = getelementptr inbounds nuw i8, ptr %.337205.i.i1450, i64 2
  %i.lxu = load i16, ptr %.337205.i.i1450, align 2, !tbaa !558
  %i.lxv = zext i16 %i.lxu to i32
  %i.lxw = shl nuw i32 %i.lxv, 16
  %i.lxx = bitcast i32 %i.lxw to float
  %i.lxy = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lxx, float %i.lxs)
  %i.lxz = bitcast float %i.lxy to i32
  %i.lya = lshr i32 %i.lxz, 16
  %i.lyb = trunc nuw i32 %i.lya to i16
  %i.lyc = getelementptr inbounds nuw i8, ptr %.345203.i.i1452, i64 2
  store i16 %i.lyb, ptr %.345203.i.i1452, align 2, !tbaa !558
  %i.lyd = getelementptr inbounds nuw i8, ptr %.3206.i.i1449, i64 4
  %i.lye = load i16, ptr %i.lxo, align 2, !tbaa !558
  %i.lyf = zext i16 %i.lye to i32
  %i.lyg = shl nuw i32 %i.lyf, 16
  %i.lyh = bitcast i32 %i.lyg to float
  %i.lyi = getelementptr inbounds nuw i8, ptr %.337205.i.i1450, i64 4
  %i.lyj = load i16, ptr %i.lxt, align 2, !tbaa !558
  %i.lyk = zext i16 %i.lyj to i32
  %i.lyl = shl nuw i32 %i.lyk, 16
  %i.lym = bitcast i32 %i.lyl to float
  %i.lyn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lym, float %i.lyh)
  %i.lyo = bitcast float %i.lyn to i32
  %i.lyp = lshr i32 %i.lyo, 16
  %i.lyq = trunc nuw i32 %i.lyp to i16
  %i.lyr = getelementptr inbounds nuw i8, ptr %.345203.i.i1452, i64 4
  store i16 %i.lyq, ptr %i.lyc, align 2, !tbaa !558
  %i.lys = add nuw nsw i32 %.341204.i.i1451, 2    ; 2 uses
  %exitcond.not.i.i1453.1 = icmp eq i32 %i.lys, %i.lmx
  br i1 %exitcond.not.i.i1453.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph207.i.i1448, !llvm.loop !284

bb.in:                                            ; preds = %bb.il
  %i.lyt = icmp eq i32 %4, 1
  br i1 %i.lyt, label %bb.io, label %bb.ix

bb.io:                                            ; preds = %bb.in
  %i.lyu = load i16, ptr %1, align 2, !tbaa !558
  %i.lyv = zext i16 %i.lyu to i32
  %i.lyw = shl nuw i32 %i.lyv, 16
  %i.lyx = bitcast i32 %i.lyw to float            ; 15 uses
  %i.lyy = icmp eq i32 %.sroa.speculated.i1301, 4
  br i1 %i.lyy, label %.thread178.i.i1432, label %bb.ip

.thread178.i.i1432:                               ; preds = %bb.io
  %i.lyz = load i64, ptr %1, align 2, !tbaa !555
  %i.lza = insertelement <2 x i64> poison, i64 %i.lyz, i64 0
  %i.lzb = bitcast <2 x i64> %i.lza to <8 x i16>
  %i.lzc = shufflevector <8 x i16> %i.lzb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.lzd = bitcast <8 x i16> %i.lzc to <4 x float> ; 2 uses
  %i.lze = shufflevector <4 x float> %i.lzd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.is

bb.ip:                                            ; preds = %bb.io
  %i.lzf = insertelement <4 x float> poison, float %i.lyx, i64 0 ; 2 uses
  %i.lzg = shufflevector <4 x float> %i.lzf, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.lzh = icmp eq i32 %.sroa.speculated.i1301, 8
  br i1 %i.lzh, label %.thread177.i.i1431, label %bb.iq

.thread177.i.i1431:                               ; preds = %bb.ip
  %i.lzi = load <8 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.lzj = fpext fast <8 x bfloat> %i.lzi to <8 x float>
  br label %bb.is

bb.iq:                                            ; preds = %bb.ip
  %i.lzk = shufflevector <4 x float> %i.lzf, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lzl = icmp eq i32 %.sroa.speculated.i1301, 16
  br i1 %i.lzl, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.lzm = load <16 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.lzn = fpext fast <16 x bfloat> %i.lzm to <16 x float>
  br label %bb.it

bb.is:                                            ; preds = %bb.iq, %.thread177.i.i1431, %.thread178.i.i1432
  %i.lzo = phi <8 x float> [ %i.lzj, %.thread177.i.i1431 ], [ %i.lzk, %bb.iq ], [ %i.lze, %.thread178.i.i1432 ] ; 2 uses
  %i.lzp = phi <4 x float> [ %i.lzg, %.thread177.i.i1431 ], [ %i.lzg, %bb.iq ], [ %i.lzd, %.thread178.i.i1432 ]
  %i.lzq = shufflevector <8 x float> %i.lzo, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %i.lzr = phi <8 x float> [ %i.lzk, %bb.ir ], [ %i.lzo, %bb.is ]
  %i.lzs = phi <4 x float> [ %i.lzg, %bb.ir ], [ %i.lzp, %bb.is ]
  %i.lzt = phi fast <16 x float> [ %i.lzn, %bb.ir ], [ %i.lzq, %bb.is ]
  %i.lzu = icmp sgt i32 %i.lmx, 15
  br i1 %i.lzu, label %.lr.ph.i41.i1426, label %.preheader180.i.i1401

.lr.ph.i41.i1426:                                 ; preds = %bb.it
  %i.lzv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.lzt, <16 x float> splat (float f0x00800000), i32 4)
  %i.lzw = bitcast <16 x float> %i.lzv to <16 x i32> ; 2 uses
  %i.lzx = lshr <16 x i32> %i.lzw, splat (i32 23)
  %i.lzy = and <16 x i32> %i.lzw, splat (i32 -2139095041)
  %i.lzz = or disjoint <16 x i32> %i.lzy, splat (i32 1056964608)
  %i.maa = bitcast <16 x i32> %i.lzz to <16 x float> ; 3 uses
  %i.mab = add nsw <16 x i32> %i.lzx, splat (i32 -127)
  %i.mac = sitofp fast <16 x i32> %i.mab to <16 x float> ; 2 uses
  %i.mad = fadd fast <16 x float> %i.mac, splat (float 1.000000e+00)
  %i.mae = fcmp fast olt <16 x float> %i.maa, splat (float f0x3F3504F3) ; 2 uses
  %i.maf = fadd fast <16 x float> %i.maa, splat (float -1.000000e+00)
  %i.mag = select fast <16 x i1> %i.mae, <16 x float> %i.mac, <16 x float> %i.mad ; 2 uses
  %i.mah = select fast <16 x i1> %i.mae, <16 x float> %i.maa, <16 x float> zeroinitializer
  %i.mai = fadd fast <16 x float> %i.maf, %i.mah  ; 12 uses
  %i.maj = fmul fast <16 x float> %i.mai, %i.mai  ; 2 uses
  %i.mak = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mai, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.mal = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mak, <16 x float> nofpclass(nan inf) %i.mai, <16 x float> splat (float f0x3DEF251A))
  %i.mam = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mal, <16 x float> nofpclass(nan inf) %i.mai, <16 x float> splat (float f0xBDFE5D4F))
  %i.man = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mam, <16 x float> nofpclass(nan inf) %i.mai, <16 x float> splat (float f0x3E11E9BF))
  %i.mao = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.man, <16 x float> nofpclass(nan inf) %i.mai, <16 x float> splat (float f0xBE2AAE50))
  %i.map = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mao, <16 x float> nofpclass(nan inf) %i.mai, <16 x float> splat (float f0x3E4CCEAC))
  %i.maq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.map, <16 x float> nofpclass(nan inf) %i.mai, <16 x float> splat (float f0xBE7FFFFC))
  %i.mar = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.maq, <16 x float> nofpclass(nan inf) %i.mai, <16 x float> splat (float f0x3EAAAAAA))
  %i.mas = fmul fast <16 x float> %i.maj, %i.mai
  %i.mat = fmul fast <16 x float> %i.mas, %i.mar
  %i.mau = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mag, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.mat)
  %i.mav = fneg fast <16 x float> %i.maj
  %i.maw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.mav, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.mau)
  %i.max = fadd fast <16 x float> %i.maw, %i.mai
  %i.may = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mag, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.max)
  br label %bb.iu

.preheader180.loopexit.i.i1430:                   ; preds = %bb.iu
  %i.maz = and i32 %i.lmx, 2147483632
  br label %.preheader180.i.i1401

.preheader180.i.i1401:                            ; preds = %.preheader180.loopexit.i.i1430, %bb.it
  %.039.lcssa.i.i1402 = phi i32 [ 0, %bb.it ], [ %i.maz, %.preheader180.loopexit.i.i1430 ] ; 3 uses
  %.035.lcssa.i.i1403 = phi ptr [ %2, %bb.it ], [ %i.mdi, %.preheader180.loopexit.i.i1430 ] ; 2 uses
  %.0.lcssa.i34.i1404 = phi ptr [ %0, %bb.it ], [ %i.mdh, %.preheader180.loopexit.i.i1430 ] ; 2 uses
  %i.mba = or disjoint i32 %.039.lcssa.i.i1402, 7
  %i.mbb = icmp slt i32 %i.mba, %i.lmx
  br i1 %i.mbb, label %.lr.ph189.i39.i1422, label %.preheader179.i.i1405

.lr.ph189.i39.i1422:                              ; preds = %.preheader180.i.i1401
  %i.mbc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lzr, <8 x float> splat (float f0x00800000))
  %i.mbd = bitcast <8 x float> %i.mbc to <8 x i32> ; 2 uses
  %i.mbe = lshr <8 x i32> %i.mbd, splat (i32 23)
  %i.mbf = and <8 x i32> %i.mbd, splat (i32 -2139095041)
  %i.mbg = or disjoint <8 x i32> %i.mbf, splat (i32 1056964608)
  %i.mbh = bitcast <8 x i32> %i.mbg to <8 x float> ; 3 uses
  %i.mbi = add nsw <8 x i32> %i.mbe, splat (i32 -127)
  %i.mbj = sitofp fast <8 x i32> %i.mbi to <8 x float> ; 2 uses
  %i.mbk = fadd fast <8 x float> %i.mbj, splat (float 1.000000e+00)
  %i.mbl = fcmp fast olt <8 x float> %i.mbh, splat (float f0x3F3504F3) ; 2 uses
  %i.mbm = select <8 x i1> %i.mbl, <8 x float> %i.mbh, <8 x float> zeroinitializer
  %i.mbn = fadd fast <8 x float> %i.mbh, splat (float -1.000000e+00)
  %i.mbo = select fast <8 x i1> %i.mbl, <8 x float> %i.mbj, <8 x float> %i.mbk ; 2 uses
  %i.mbp = fadd fast <8 x float> %i.mbn, %i.mbm   ; 12 uses
  %i.mbq = fmul fast <8 x float> %i.mbp, %i.mbp   ; 2 uses
  %i.mbr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mbp, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.mbs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mbr, <8 x float> nofpclass(nan inf) %i.mbp, <8 x float> splat (float f0x3DEF251A))
  %i.mbt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mbs, <8 x float> nofpclass(nan inf) %i.mbp, <8 x float> splat (float f0xBDFE5D4F))
  %i.mbu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mbt, <8 x float> nofpclass(nan inf) %i.mbp, <8 x float> splat (float f0x3E11E9BF))
  %i.mbv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mbu, <8 x float> nofpclass(nan inf) %i.mbp, <8 x float> splat (float f0xBE2AAE50))
  %i.mbw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mbv, <8 x float> nofpclass(nan inf) %i.mbp, <8 x float> splat (float f0x3E4CCEAC))
  %i.mbx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mbw, <8 x float> nofpclass(nan inf) %i.mbp, <8 x float> splat (float f0xBE7FFFFC))
  %i.mby = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mbx, <8 x float> nofpclass(nan inf) %i.mbp, <8 x float> splat (float f0x3EAAAAAA))
  %i.mbz = fmul fast <8 x float> %i.mbq, %i.mbp
  %i.mca = fmul fast <8 x float> %i.mbz, %i.mby
  %i.mcb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mbo, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.mca)
  %i.mcc = fneg fast <8 x float> %i.mbq
  %i.mcd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.mcc, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.mcb)
  %i.mce = fadd fast <8 x float> %i.mcd, %i.mbp
  %i.mcf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mbo, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.mce)
  br label %bb.iv

bb.iu:                                            ; preds = %bb.iu, %.lr.ph.i41.i1426
  %.0183.i.i1427 = phi ptr [ %0, %.lr.ph.i41.i1426 ], [ %i.mdh, %bb.iu ] ; 2 uses
  %.035182.i.i1428 = phi ptr [ %2, %.lr.ph.i41.i1426 ], [ %i.mdi, %bb.iu ] ; 2 uses
  %.039181.i.i1429 = phi i32 [ 0, %.lr.ph.i41.i1426 ], [ %i.mdj, %bb.iu ]
  %i.mcg = load <16 x bfloat>, ptr %.0183.i.i1427, align 1, !tbaa !555
  %i.mch = fpext fast <16 x bfloat> %i.mcg to <16 x float>
  %i.mci = fmul fast <16 x float> %i.may, %i.mch
  %i.mcj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.mci, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.mck = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.mcj, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.mcl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mck, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.mcm = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.mcl, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.mcn = fcmp fast ogt <16 x float> %i.mcm, %i.mcl
  %i.mco = fadd fast <16 x float> %i.mcm, splat (float -1.000000e+00)
  %i.mcp = select fast <16 x i1> %i.mcn, <16 x float> %i.mco, <16 x float> %i.mcm ; 2 uses
  %i.mcq = fneg fast <16 x float> %i.mcp          ; 2 uses
  %i.mcr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.mcq, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.mck)
  %i.mcs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.mcq, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.mcr) ; 8 uses
  %i.mct = fmul fast <16 x float> %i.mcs, %i.mcs
  %i.mcu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mcs, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.mcv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mcu, <16 x float> nofpclass(nan inf) %i.mcs, <16 x float> splat (float f0x3C088908))
  %i.mcw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mcv, <16 x float> nofpclass(nan inf) %i.mcs, <16 x float> splat (float f0x3D2AA9C1))
  %i.mcx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mcw, <16 x float> nofpclass(nan inf) %i.mcs, <16 x float> splat (float f0x3E2AAAAA))
  %i.mcy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mcx, <16 x float> nofpclass(nan inf) %i.mcs, <16 x float> splat (float 5.000000e-01))
  %i.mcz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mcy, <16 x float> nofpclass(nan inf) %i.mct, <16 x float> nofpclass(nan inf) %i.mcs)
  %i.mda = fadd fast <16 x float> %i.mcz, splat (float 1.000000e+00)
  %i.mdb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.mcp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.mdc = shl <16 x i32> %i.mdb, splat (i32 23)
  %i.mdd = add <16 x i32> %i.mdc, splat (i32 1065353216)
  %i.mde = bitcast <16 x i32> %i.mdd to <16 x float>
  %i.mdf = fmul fast <16 x float> %i.mda, %i.mde
  %i.mdg = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.mdf)
  store <16 x bfloat> %i.mdg, ptr %.035182.i.i1428, align 1, !tbaa !555
  %i.mdh = getelementptr inbounds nuw i8, ptr %.0183.i.i1427, i64 32 ; 2 uses
  %i.mdi = getelementptr inbounds nuw i8, ptr %.035182.i.i1428, i64 32 ; 2 uses
  %i.mdj = add nuw nsw i32 %.039181.i.i1429, 16   ; 2 uses
  %i.mdk = or disjoint i32 %i.mdj, 15
  %i.mdl = icmp slt i32 %i.mdk, %i.lmx
  br i1 %i.mdl, label %bb.iu, label %.preheader180.loopexit.i.i1430, !llvm.loop !285

.preheader179.i.i1405:                            ; preds = %bb.iv, %.preheader180.i.i1401
  %.140.lcssa.i.i1406 = phi i32 [ %.039.lcssa.i.i1402, %.preheader180.i.i1401 ], [ %i.mfv, %bb.iv ] ; 3 uses
  %.136.lcssa.i.i1407 = phi ptr [ %.035.lcssa.i.i1403, %.preheader180.i.i1401 ], [ %i.mfu, %bb.iv ] ; 2 uses
  %.1.lcssa.i35.i1408 = phi ptr [ %.0.lcssa.i34.i1404, %.preheader180.i.i1401 ], [ %i.mft, %bb.iv ] ; 2 uses
  %i.mdm = or disjoint i32 %.140.lcssa.i.i1406, 3
  %i.mdn = icmp slt i32 %i.mdm, %i.lmx
  br i1 %i.mdn, label %.lr.ph196.i.i1418, label %.preheader.i36.i1409

.lr.ph196.i.i1418:                                ; preds = %.preheader179.i.i1405
  %i.mdo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lzs, <4 x float> splat (float f0x00800000))
  %i.mdp = bitcast <4 x float> %i.mdo to <4 x i32> ; 2 uses
  %i.mdq = lshr <4 x i32> %i.mdp, splat (i32 23)
  %i.mdr = and <4 x i32> %i.mdp, splat (i32 -2139095041)
  %i.mds = or disjoint <4 x i32> %i.mdr, splat (i32 1056964608)
  %i.mdt = bitcast <4 x i32> %i.mds to <4 x float> ; 3 uses
  %i.mdu = add nsw <4 x i32> %i.mdq, splat (i32 -127)
  %i.mdv = sitofp fast <4 x i32> %i.mdu to <4 x float> ; 2 uses
  %i.mdw = fadd fast <4 x float> %i.mdv, splat (float 1.000000e+00)
  %i.mdx = fcmp fast olt <4 x float> %i.mdt, splat (float f0x3F3504F3) ; 2 uses
  %i.mdy = select <4 x i1> %i.mdx, <4 x float> %i.mdt, <4 x float> zeroinitializer
  %i.mdz = fadd fast <4 x float> %i.mdt, splat (float -1.000000e+00)
  %i.mea = select fast <4 x i1> %i.mdx, <4 x float> %i.mdv, <4 x float> %i.mdw ; 2 uses
  %i.meb = fadd fast <4 x float> %i.mdz, %i.mdy   ; 12 uses
  %i.mec = fmul fast <4 x float> %i.meb, %i.meb   ; 2 uses
  %i.med = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.meb, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.mee = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.med, <4 x float> nofpclass(nan inf) %i.meb, <4 x float> splat (float f0x3DEF251A))
  %i.mef = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mee, <4 x float> nofpclass(nan inf) %i.meb, <4 x float> splat (float f0xBDFE5D4F))
  %i.meg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mef, <4 x float> nofpclass(nan inf) %i.meb, <4 x float> splat (float f0x3E11E9BF))
  %i.meh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.meg, <4 x float> nofpclass(nan inf) %i.meb, <4 x float> splat (float f0xBE2AAE50))
  %i.mei = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.meh, <4 x float> nofpclass(nan inf) %i.meb, <4 x float> splat (float f0x3E4CCEAC))
  %i.mej = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mei, <4 x float> nofpclass(nan inf) %i.meb, <4 x float> splat (float f0xBE7FFFFC))
  %i.mek = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mej, <4 x float> nofpclass(nan inf) %i.meb, <4 x float> splat (float f0x3EAAAAAA))
  %i.mel = fmul fast <4 x float> %i.mec, %i.meb
  %i.mem = fmul fast <4 x float> %i.mel, %i.mek
  %i.men = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mea, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mem)
  %i.meo = fneg fast <4 x float> %i.mec
  %i.mep = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.meo, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.men)
  %i.meq = fadd fast <4 x float> %i.mep, %i.meb
  %i.mer = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mea, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.meq)
  br label %bb.iw

bb.iv:                                            ; preds = %bb.iv, %.lr.ph189.i39.i1422
  %.1188.i40.i1423 = phi ptr [ %.0.lcssa.i34.i1404, %.lr.ph189.i39.i1422 ], [ %i.mft, %bb.iv ] ; 2 uses
  %.136187.i.i1424 = phi ptr [ %.035.lcssa.i.i1403, %.lr.ph189.i39.i1422 ], [ %i.mfu, %bb.iv ] ; 2 uses
  %.140186.i.i1425 = phi i32 [ %.039.lcssa.i.i1402, %.lr.ph189.i39.i1422 ], [ %i.mfv, %bb.iv ]
  %i.mes = load <8 x bfloat>, ptr %.1188.i40.i1423, align 1, !tbaa !555
  %i.met = fpext fast <8 x bfloat> %i.mes to <8 x float>
  %i.meu = fmul fast <8 x float> %i.mcf, %i.met
  %i.mev = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.meu, <8 x float> splat (float f0x42B0C0A5))
  %i.mew = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.mev, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mew, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.mey = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.mex, i32 1) ; 2 uses
  %i.mez = fcmp fast ogt <8 x float> %i.mey, %i.mex
  %i.mfa = select <8 x i1> %i.mez, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.mfb = fsub fast <8 x float> %i.mey, %i.mfa   ; 2 uses
  %i.mfc = fneg fast <8 x float> %i.mfb           ; 2 uses
  %i.mfd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.mfc, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.mew)
  %i.mfe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.mfc, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.mfd) ; 8 uses
  %i.mff = fmul fast <8 x float> %i.mfe, %i.mfe
  %i.mfg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mfe, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.mfh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mfg, <8 x float> nofpclass(nan inf) %i.mfe, <8 x float> splat (float f0x3C088908))
  %i.mfi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mfh, <8 x float> nofpclass(nan inf) %i.mfe, <8 x float> splat (float f0x3D2AA9C1))
  %i.mfj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mfi, <8 x float> nofpclass(nan inf) %i.mfe, <8 x float> splat (float f0x3E2AAAAA))
  %i.mfk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mfj, <8 x float> nofpclass(nan inf) %i.mfe, <8 x float> splat (float 5.000000e-01))
  %i.mfl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mfk, <8 x float> nofpclass(nan inf) %i.mff, <8 x float> nofpclass(nan inf) %i.mfe)
  %i.mfm = fadd fast <8 x float> %i.mfl, splat (float 1.000000e+00)
  %i.mfn = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mfb)
  %i.mfo = shl <8 x i32> %i.mfn, splat (i32 23)
  %i.mfp = add <8 x i32> %i.mfo, splat (i32 1065353216)
  %i.mfq = bitcast <8 x i32> %i.mfp to <8 x float>
  %i.mfr = fmul fast <8 x float> %i.mfm, %i.mfq
  %i.mfs = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mfr)
  store <8 x bfloat> %i.mfs, ptr %.136187.i.i1424, align 1, !tbaa !555
  %i.mft = getelementptr inbounds nuw i8, ptr %.1188.i40.i1423, i64 16 ; 2 uses
  %i.mfu = getelementptr inbounds nuw i8, ptr %.136187.i.i1424, i64 16 ; 2 uses
  %i.mfv = add nuw nsw i32 %.140186.i.i1425, 8    ; 3 uses
  %i.mfw = or disjoint i32 %i.mfv, 7
  %i.mfx = icmp slt i32 %i.mfw, %i.lmx
  br i1 %i.mfx, label %bb.iv, label %.preheader179.i.i1405, !llvm.loop !286

.preheader.i36.i1409:                             ; preds = %bb.iw, %.preheader179.i.i1405
  %.241.lcssa.i.i1410 = phi i32 [ %.140.lcssa.i.i1406, %.preheader179.i.i1405 ], [ %i.mkz, %bb.iw ] ; 5 uses
  %.237.lcssa.i.i1411 = phi ptr [ %.136.lcssa.i.i1407, %.preheader179.i.i1405 ], [ %i.mky, %bb.iw ] ; 6 uses
  %.2.lcssa.i37.i1412 = phi ptr [ %.1.lcssa.i35.i1408, %.preheader179.i.i1405 ], [ %i.mkx, %bb.iw ] ; 6 uses
  %i.mfy = icmp slt i32 %.241.lcssa.i.i1410, %i.lmx
  br i1 %i.mfy, label %iter.check7457, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7457:                                   ; preds = %.preheader.i36.i1409
  %.237.lcssa.i.i14117441 = ptrtoaddr ptr %.237.lcssa.i.i1411 to i64
  %.2.lcssa.i37.i14127440 = ptrtoaddr ptr %.2.lcssa.i37.i1412 to i64
  %i.mfz = xor i32 %.241.lcssa.i.i1410, -1
  %i.mga = add i32 %i.lmx, %i.mfz                 ; 3 uses
  %i.mgb = zext i32 %i.mga to i64
  %i.mgc = add nuw nsw i64 %i.mgb, 1              ; 5 uses
  %min.iters.check7442 = icmp ult i32 %i.mga, 7
  %i.mgd = sub i64 %.2.lcssa.i37.i14127440, %.237.lcssa.i.i14117441
  %diff.check7444 = icmp ugt i64 %i.mgd, -64
  %or.cond9210 = select i1 %min.iters.check7442, i1 true, i1 %diff.check7444
  br i1 %or.cond9210, label %.lr.ph203.i.i1413.preheader, label %vector.main.loop.iter.check7445

vector.main.loop.iter.check7445:                  ; preds = %iter.check7457
  %min.iters.check7446 = icmp ult i32 %i.mga, 31
  br i1 %min.iters.check7446, label %vec.epilog.ph7461, label %vector.ph7447

vector.ph7447:                                    ; preds = %vector.main.loop.iter.check7445
  %i.mge = and i64 %i.mgc, 24
  %n.vec7448 = and i64 %i.mgc, 8589934560         ; 5 uses
  %i.mgf = shl nuw nsw i64 %n.vec7448, 1          ; 2 uses
  %i.mgg = getelementptr i8, ptr %.2.lcssa.i37.i1412, i64 %i.mgf
  %i.mgh = getelementptr i8, ptr %.237.lcssa.i.i1411, i64 %i.mgf
  %i.mgi = trunc i64 %n.vec7448 to i32
  %i.mgj = add i32 %.241.lcssa.i.i1410, %i.mgi
  %i.mgk = insertelement <16 x float> poison, float %i.lyx, i64 0
  %i.mgl = shufflevector <16 x float> %i.mgk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.mgm = insertelement <8 x float> poison, float %i.lyx, i64 0
  %i.mgn = shufflevector <8 x float> %i.mgm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mgo = insertelement <4 x float> poison, float %i.lyx, i64 0
  %i.mgp = shufflevector <4 x float> %i.mgo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mgq = insertelement <2 x float> poison, float %i.lyx, i64 0
  %i.mgr = shufflevector <2 x float> %i.mgq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7449

vector.body7449:                                  ; preds = %vector.ph7447, %vector.body7449
  %index7450 = phi i64 [ 0, %vector.ph7447 ], [ %index.next7454, %vector.body7449 ] ; 2 uses
  %i.mgs = shl i64 %index7450, 1                  ; 2 uses
  %next.gep7451 = getelementptr i8, ptr %.2.lcssa.i37.i1412, i64 %i.mgs
  %next.gep7452 = getelementptr i8, ptr %.237.lcssa.i.i1411, i64 %i.mgs
  %wide.load7453 = load <32 x i16>, ptr %next.gep7451, align 2, !tbaa !558
  %i.mgt = zext <32 x i16> %wide.load7453 to <32 x i32>
  %i.mgu = shl nuw <32 x i32> %i.mgt, splat (i32 16)
  %i.mgv = bitcast <32 x i32> %i.mgu to <32 x float> ; 6 uses
  %i.mgw = extractelement <32 x float> %i.mgv, i64 0
  %i.mgx = tail call fast float @llvm.pow.f32(float %i.lyx, float %i.mgw)
  %i.mgy = shufflevector <32 x float> %i.mgv, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.mgz = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.mgl, <16 x float> %i.mgy)
  %i.mha = shufflevector <32 x float> %i.mgv, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.mhb = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.mgn, <8 x float> %i.mha)
  %i.mhc = shufflevector <32 x float> %i.mgv, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.mhd = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.mgp, <4 x float> %i.mhc)
  %i.mhe = extractelement <32 x float> %i.mgv, i64 29
  %i.mhf = tail call fast float @llvm.pow.f32(float %i.lyx, float %i.mhe)
  %i.mhg = shufflevector <32 x float> %i.mgv, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.mhh = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.mgr, <2 x float> %i.mhg)
  %i.mhi = insertelement <32 x float> poison, float %i.mgx, i64 0
  %i.mhj = shufflevector <16 x float> %i.mgz, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mhk = shufflevector <32 x float> %i.mhi, <32 x float> %i.mhj, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mhl = shufflevector <8 x float> %i.mhb, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mhm = shufflevector <32 x float> %i.mhk, <32 x float> %i.mhl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mhn = shufflevector <4 x float> %i.mhd, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mho = shufflevector <32 x float> %i.mhm, <32 x float> %i.mhn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.mhp = insertelement <32 x float> %i.mho, float %i.mhf, i64 29
  %i.mhq = shufflevector <2 x float> %i.mhh, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mhr = shufflevector <32 x float> %i.mhp, <32 x float> %i.mhq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.mhs = bitcast <32 x float> %i.mhr to <32 x i32>
  %i.mht = lshr <32 x i32> %i.mhs, splat (i32 16)
  %i.mhu = trunc nuw <32 x i32> %i.mht to <32 x i16>
  store <32 x i16> %i.mhu, ptr %next.gep7452, align 2, !tbaa !558
  %index.next7454 = add nuw i64 %index7450, 32    ; 2 uses
  %i.mhv = icmp eq i64 %index.next7454, %n.vec7448
  br i1 %i.mhv, label %middle.block7455, label %vector.body7449, !llvm.loop !287

middle.block7455:                                 ; preds = %vector.body7449
  %cmp.n7456 = icmp eq i64 %i.mgc, %n.vec7448
  br i1 %cmp.n7456, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7458

vec.epilog.iter.check7458:                        ; preds = %middle.block7455
  %min.epilog.iters.check7460 = icmp eq i64 %i.mge, 0
  br i1 %min.epilog.iters.check7460, label %.lr.ph203.i.i1413.preheader, label %vec.epilog.ph7461, !prof !561

vec.epilog.ph7461:                                ; preds = %vector.main.loop.iter.check7445, %vec.epilog.iter.check7458
  %vec.epilog.resume.val7462 = phi i64 [ %n.vec7448, %vec.epilog.iter.check7458 ], [ 0, %vector.main.loop.iter.check7445 ]
  %n.vec7463 = and i64 %i.mgc, 8589934584         ; 4 uses
  %i.mhw = shl nuw nsw i64 %n.vec7463, 1          ; 2 uses
  %i.mhx = getelementptr i8, ptr %.2.lcssa.i37.i1412, i64 %i.mhw
  %i.mhy = getelementptr i8, ptr %.237.lcssa.i.i1411, i64 %i.mhw
  %i.mhz = trunc i64 %n.vec7463 to i32
  %i.mia = add i32 %.241.lcssa.i.i1410, %i.mhz
  %i.mib = insertelement <4 x float> poison, float %i.lyx, i64 0
  %i.mic = shufflevector <4 x float> %i.mib, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7464

vec.epilog.vector.body7464:                       ; preds = %vec.epilog.vector.body7464, %vec.epilog.ph7461
  %index7465 = phi i64 [ %vec.epilog.resume.val7462, %vec.epilog.ph7461 ], [ %index.next7469, %vec.epilog.vector.body7464 ] ; 2 uses
  %i.mid = shl i64 %index7465, 1                  ; 2 uses
  %next.gep7466 = getelementptr i8, ptr %.2.lcssa.i37.i1412, i64 %i.mid
  %next.gep7467 = getelementptr i8, ptr %.237.lcssa.i.i1411, i64 %i.mid
  %wide.load7468 = load <8 x i16>, ptr %next.gep7466, align 2, !tbaa !558
  %i.mie = zext <8 x i16> %wide.load7468 to <8 x i32>
  %i.mif = shl nuw <8 x i32> %i.mie, splat (i32 16)
  %i.mig = bitcast <8 x i32> %i.mif to <8 x float> ; 5 uses
  %i.mih = extractelement <8 x float> %i.mig, i64 0
  %i.mii = tail call fast float @llvm.pow.f32(float %i.lyx, float %i.mih)
  %i.mij = extractelement <8 x float> %i.mig, i64 1
  %i.mik = tail call fast float @llvm.pow.f32(float %i.lyx, float %i.mij)
  %i.mil = extractelement <8 x float> %i.mig, i64 2
  %i.mim = tail call fast float @llvm.pow.f32(float %i.lyx, float %i.mil)
  %i.min = shufflevector <8 x float> %i.mig, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.mio = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.mic, <4 x float> %i.min)
  %i.mip = extractelement <8 x float> %i.mig, i64 7
  %i.miq = tail call fast float @llvm.pow.f32(float %i.lyx, float %i.mip)
  %i.mir = insertelement <8 x float> poison, float %i.mii, i64 0
  %i.mis = insertelement <8 x float> %i.mir, float %i.mik, i64 1
  %i.mit = insertelement <8 x float> %i.mis, float %i.mim, i64 2
  %i.miu = shufflevector <4 x float> %i.mio, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.miv = shufflevector <8 x float> %i.mit, <8 x float> %i.miu, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.miw = insertelement <8 x float> %i.miv, float %i.miq, i64 7
  %i.mix = bitcast <8 x float> %i.miw to <8 x i32>
  %i.miy = lshr <8 x i32> %i.mix, splat (i32 16)
  %i.miz = trunc nuw <8 x i32> %i.miy to <8 x i16>
  store <8 x i16> %i.miz, ptr %next.gep7467, align 2, !tbaa !558
  %index.next7469 = add nuw i64 %index7465, 8     ; 2 uses
  %i.mja = icmp eq i64 %index.next7469, %n.vec7463
  br i1 %i.mja, label %vec.epilog.middle.block7470, label %vec.epilog.vector.body7464, !llvm.loop !288

vec.epilog.middle.block7470:                      ; preds = %vec.epilog.vector.body7464
  %cmp.n7471 = icmp eq i64 %i.mgc, %n.vec7463
  br i1 %cmp.n7471, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i.i1413.preheader

.lr.ph203.i.i1413.preheader:                      ; preds = %iter.check7457, %vec.epilog.iter.check7458, %vec.epilog.middle.block7470
  %.3202.i.i1414.ph = phi ptr [ %.2.lcssa.i37.i1412, %iter.check7457 ], [ %i.mgg, %vec.epilog.iter.check7458 ], [ %i.mhx, %vec.epilog.middle.block7470 ] ; 3 uses
  %.338201.i.i1415.ph = phi ptr [ %.237.lcssa.i.i1411, %iter.check7457 ], [ %i.mgh, %vec.epilog.iter.check7458 ], [ %i.mhy, %vec.epilog.middle.block7470 ] ; 3 uses
  %.342200.i.i1416.ph = phi i32 [ %.241.lcssa.i.i1410, %iter.check7457 ], [ %i.mgj, %vec.epilog.iter.check7458 ], [ %i.mia, %vec.epilog.middle.block7470 ] ; 4 uses
  %i.mjb = sub i32 %i.lmx, %.342200.i.i1416.ph
  %.neg11073 = add i32 %.342200.i.i1416.ph, 1
  %xtraiter10481 = and i32 %i.mjb, 1
  %lcmp.mod10482.not = icmp eq i32 %xtraiter10481, 0
  br i1 %lcmp.mod10482.not, label %.lr.ph203.i.i1413.prol.loopexit, label %.lr.ph203.i.i1413.prol

.lr.ph203.i.i1413.prol:                           ; preds = %.lr.ph203.i.i1413.preheader
  %i.mjc = getelementptr inbounds nuw i8, ptr %.3202.i.i1414.ph, i64 2
  %i.mjd = load i16, ptr %.3202.i.i1414.ph, align 2, !tbaa !558
  %i.mje = zext i16 %i.mjd to i32
  %i.mjf = shl nuw i32 %i.mje, 16
  %i.mjg = bitcast i32 %i.mjf to float
  %i.mjh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lyx, float %i.mjg)
  %i.mji = bitcast float %i.mjh to i32
  %i.mjj = lshr i32 %i.mji, 16
  %i.mjk = trunc nuw i32 %i.mjj to i16
  %i.mjl = getelementptr inbounds nuw i8, ptr %.338201.i.i1415.ph, i64 2
  store i16 %i.mjk, ptr %.338201.i.i1415.ph, align 2, !tbaa !558
  %i.mjm = add nuw nsw i32 %.342200.i.i1416.ph, 1
  br label %.lr.ph203.i.i1413.prol.loopexit

.lr.ph203.i.i1413.prol.loopexit:                  ; preds = %.lr.ph203.i.i1413.prol, %.lr.ph203.i.i1413.preheader
  %.3202.i.i1414.unr = phi ptr [ %.3202.i.i1414.ph, %.lr.ph203.i.i1413.preheader ], [ %i.mjc, %.lr.ph203.i.i1413.prol ]
  %.338201.i.i1415.unr = phi ptr [ %.338201.i.i1415.ph, %.lr.ph203.i.i1413.preheader ], [ %i.mjl, %.lr.ph203.i.i1413.prol ]
  %.342200.i.i1416.unr = phi i32 [ %.342200.i.i1416.ph, %.lr.ph203.i.i1413.preheader ], [ %i.mjm, %.lr.ph203.i.i1413.prol ]
  %i.mjn = icmp eq i32 %i.lmx, %.neg11073
  br i1 %i.mjn, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i.i1413

bb.iw:                                            ; preds = %bb.iw, %.lr.ph196.i.i1418
  %.2195.i.i1419 = phi ptr [ %.1.lcssa.i35.i1408, %.lr.ph196.i.i1418 ], [ %i.mkx, %bb.iw ] ; 2 uses
  %.237194.i.i1420 = phi ptr [ %.136.lcssa.i.i1407, %.lr.ph196.i.i1418 ], [ %i.mky, %bb.iw ] ; 2 uses
  %.241193.i.i1421 = phi i32 [ %.140.lcssa.i.i1406, %.lr.ph196.i.i1418 ], [ %i.mkz, %bb.iw ]
  %i.mjo = load i64, ptr %.2195.i.i1419, align 1, !tbaa !555
  %i.mjp = insertelement <2 x i64> poison, i64 %i.mjo, i64 0
  %i.mjq = bitcast <2 x i64> %i.mjp to <8 x i16>
  %i.mjr = shufflevector <8 x i16> %i.mjq, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.mjs = bitcast <8 x i16> %i.mjr to <4 x float>
  %i.mjt = fmul fast <4 x float> %i.mer, %i.mjs
  %i.mju = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mjt, <4 x float> splat (float f0x42B0C0A5))
  %i.mjv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mju, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mjw = fmul fast <4 x float> %i.mjv, splat (float f0x3FB8AA3B)
  %i.mjx = fadd fast <4 x float> %i.mjw, splat (float 5.000000e-01) ; 2 uses
  %i.mjy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mjx)
  %i.mjz = sitofp fast <4 x i32> %i.mjy to <4 x float> ; 2 uses
  %i.mka = fcmp fast olt <4 x float> %i.mjx, %i.mjz
  %i.mkb = select <4 x i1> %i.mka, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mkc = fsub fast <4 x float> %i.mjz, %i.mkb   ; 2 uses
  %i.mkd = fneg fast <4 x float> %i.mkc           ; 2 uses
  %i.mke = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mkd, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mjv)
  %i.mkf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mkd, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mke) ; 8 uses
  %i.mkg = fmul fast <4 x float> %i.mkf, %i.mkf
  %i.mkh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mkf, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.mki = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mkh, <4 x float> nofpclass(nan inf) %i.mkf, <4 x float> splat (float f0x3C088908))
  %i.mkj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mki, <4 x float> nofpclass(nan inf) %i.mkf, <4 x float> splat (float f0x3D2AA9C1))
  %i.mkk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mkj, <4 x float> nofpclass(nan inf) %i.mkf, <4 x float> splat (float f0x3E2AAAAA))
  %i.mkl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mkk, <4 x float> nofpclass(nan inf) %i.mkf, <4 x float> splat (float 5.000000e-01))
  %i.mkm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mkl, <4 x float> nofpclass(nan inf) %i.mkg, <4 x float> nofpclass(nan inf) %i.mkf)
  %i.mkn = fadd fast <4 x float> %i.mkm, splat (float 1.000000e+00)
  %i.mko = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mkc)
  %i.mkp = shl <4 x i32> %i.mko, splat (i32 23)
  %i.mkq = add <4 x i32> %i.mkp, splat (i32 1065353216)
  %i.mkr = bitcast <4 x i32> %i.mkq to <4 x float>
  %i.mks = fmul fast <4 x float> %i.mkn, %i.mkr
  %i.mkt = shufflevector <4 x float> %i.mks, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.mku = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mkt)
  %i.mkv = bitcast <8 x bfloat> %i.mku to <2 x i64>
  %i.mkw = extractelement <2 x i64> %i.mkv, i64 0
  store i64 %i.mkw, ptr %.237194.i.i1420, align 1, !tbaa !555
  %i.mkx = getelementptr inbounds nuw i8, ptr %.2195.i.i1419, i64 8 ; 2 uses
  %i.mky = getelementptr inbounds nuw i8, ptr %.237194.i.i1420, i64 8 ; 2 uses
  %i.mkz = add nuw nsw i32 %.241193.i.i1421, 4    ; 3 uses
  %i.mla = or disjoint i32 %i.mkz, 3
  %i.mlb = icmp slt i32 %i.mla, %i.lmx
  br i1 %i.mlb, label %bb.iw, label %.preheader.i36.i1409, !llvm.loop !289

.lr.ph203.i.i1413:                                ; preds = %.lr.ph203.i.i1413.prol.loopexit, %.lr.ph203.i.i1413
  %.3202.i.i1414 = phi ptr [ %i.mlm, %.lr.ph203.i.i1413 ], [ %.3202.i.i1414.unr, %.lr.ph203.i.i1413.prol.loopexit ] ; 3 uses
  %.338201.i.i1415 = phi ptr [ %i.mlv, %.lr.ph203.i.i1413 ], [ %.338201.i.i1415.unr, %.lr.ph203.i.i1413.prol.loopexit ] ; 3 uses
  %.342200.i.i1416 = phi i32 [ %i.mlw, %.lr.ph203.i.i1413 ], [ %.342200.i.i1416.unr, %.lr.ph203.i.i1413.prol.loopexit ]
  %i.mlc = getelementptr inbounds nuw i8, ptr %.3202.i.i1414, i64 2
  %i.mld = load i16, ptr %.3202.i.i1414, align 2, !tbaa !558
  %i.mle = zext i16 %i.mld to i32
  %i.mlf = shl nuw i32 %i.mle, 16
  %i.mlg = bitcast i32 %i.mlf to float
  %i.mlh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lyx, float %i.mlg)
  %i.mli = bitcast float %i.mlh to i32
  %i.mlj = lshr i32 %i.mli, 16
  %i.mlk = trunc nuw i32 %i.mlj to i16
  %i.mll = getelementptr inbounds nuw i8, ptr %.338201.i.i1415, i64 2
  store i16 %i.mlk, ptr %.338201.i.i1415, align 2, !tbaa !558
  %i.mlm = getelementptr inbounds nuw i8, ptr %.3202.i.i1414, i64 4
  %i.mln = load i16, ptr %i.mlc, align 2, !tbaa !558
  %i.mlo = zext i16 %i.mln to i32
  %i.mlp = shl nuw i32 %i.mlo, 16
  %i.mlq = bitcast i32 %i.mlp to float
  %i.mlr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lyx, float %i.mlq)
  %i.mls = bitcast float %i.mlr to i32
  %i.mlt = lshr i32 %i.mls, 16
  %i.mlu = trunc nuw i32 %i.mlt to i16
  %i.mlv = getelementptr inbounds nuw i8, ptr %.338201.i.i1415, i64 4
  store i16 %i.mlu, ptr %i.mll, align 2, !tbaa !558
  %i.mlw = add nuw nsw i32 %.342200.i.i1416, 2    ; 2 uses
  %exitcond.not.i38.i1417.1 = icmp eq i32 %i.mlw, %i.lmx
  br i1 %exitcond.not.i38.i1417.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i.i1413, !llvm.loop !290

bb.ix:                                            ; preds = %bb.in
  %i.mlx = icmp eq i32 %3, 1
  br i1 %i.mlx, label %bb.iy, label %bb.je

bb.iy:                                            ; preds = %bb.ix
  %i.mly = load i16, ptr %0, align 2, !tbaa !558
  %i.mlz = zext i16 %i.mly to i32
  %i.mma = shl nuw i32 %i.mlz, 16
  %i.mmb = bitcast i32 %i.mma to float            ; 15 uses
  %i.mmc = icmp eq i32 %.sroa.speculated.i1301, 4
  br i1 %i.mmc, label %.thread178.i73.i1400, label %bb.iz

.thread178.i73.i1400:                             ; preds = %bb.iy
  %i.mmd = load i64, ptr %0, align 2, !tbaa !555
  %i.mme = insertelement <2 x i64> poison, i64 %i.mmd, i64 0
  %i.mmf = bitcast <2 x i64> %i.mme to <8 x i16>
  %i.mmg = shufflevector <8 x i16> %i.mmf, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.mmh = bitcast <8 x i16> %i.mmg to <4 x float> ; 2 uses
  %i.mmi = shufflevector <4 x float> %i.mmh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.jc

bb.iz:                                            ; preds = %bb.iy
  %i.mmj = insertelement <4 x float> poison, float %i.mmb, i64 0 ; 2 uses
  %i.mmk = shufflevector <4 x float> %i.mmj, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.mml = icmp eq i32 %.sroa.speculated.i1301, 8
  br i1 %i.mml, label %.thread177.i72.i1399, label %bb.ja

.thread177.i72.i1399:                             ; preds = %bb.iz
  %i.mmm = load <8 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.mmn = fpext fast <8 x bfloat> %i.mmm to <8 x float>
  br label %bb.jc

bb.ja:                                            ; preds = %bb.iz
  %i.mmo = shufflevector <4 x float> %i.mmj, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.mmp = icmp eq i32 %.sroa.speculated.i1301, 16
  br i1 %i.mmp, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.mmq = load <16 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.mmr = fpext fast <16 x bfloat> %i.mmq to <16 x float>
  br label %bb.jd

bb.jc:                                            ; preds = %bb.ja, %.thread177.i72.i1399, %.thread178.i73.i1400
  %i.mms = phi <8 x float> [ %i.mmn, %.thread177.i72.i1399 ], [ %i.mmo, %bb.ja ], [ %i.mmi, %.thread178.i73.i1400 ] ; 2 uses
  %i.mmt = phi <4 x float> [ %i.mmk, %.thread177.i72.i1399 ], [ %i.mmk, %bb.ja ], [ %i.mmh, %.thread178.i73.i1400 ]
  %i.mmu = shufflevector <8 x float> %i.mms, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %i.mmv = phi <8 x float> [ %i.mmo, %bb.jb ], [ %i.mms, %bb.jc ]
  %i.mmw = phi <4 x float> [ %i.mmk, %bb.jb ], [ %i.mmt, %bb.jc ]
  %i.mmx = phi fast <16 x float> [ %i.mmr, %bb.jb ], [ %i.mmu, %bb.jc ]
  %i.mmy = icmp sgt i32 %i.lmx, 15
  br i1 %i.mmy, label %.lr.ph.i67.i1394, label %.preheader180.i42.i1369

.preheader180.loopexit.i71.i1398:                 ; preds = %.lr.ph.i67.i1394
  %i.mmz = and i32 %i.lmx, 2147483632
  br label %.preheader180.i42.i1369

.preheader180.i42.i1369:                          ; preds = %.preheader180.loopexit.i71.i1398, %bb.jd
  %.039.lcssa.i43.i1370 = phi i32 [ 0, %bb.jd ], [ %i.mmz, %.preheader180.loopexit.i71.i1398 ] ; 3 uses
  %.035.lcssa.i44.i1371 = phi ptr [ %2, %bb.jd ], [ %i.mpi, %.preheader180.loopexit.i71.i1398 ] ; 2 uses
  %.0.lcssa.i45.i1372 = phi ptr [ %1, %bb.jd ], [ %i.mph, %.preheader180.loopexit.i71.i1398 ] ; 2 uses
  %i.mna = or disjoint i32 %.039.lcssa.i43.i1370, 7
  %i.mnb = icmp slt i32 %i.mna, %i.lmx
  br i1 %i.mnb, label %.lr.ph189.i63.i1390, label %.preheader179.i46.i1373

.lr.ph.i67.i1394:                                 ; preds = %bb.jd, %.lr.ph.i67.i1394
  %.0183.i68.i1395 = phi ptr [ %i.mph, %.lr.ph.i67.i1394 ], [ %1, %bb.jd ] ; 2 uses
  %.035182.i69.i1396 = phi ptr [ %i.mpi, %.lr.ph.i67.i1394 ], [ %2, %bb.jd ] ; 2 uses
  %.039181.i70.i1397 = phi i32 [ %i.mpj, %.lr.ph.i67.i1394 ], [ 0, %bb.jd ]
  %i.mnc = load <16 x bfloat>, ptr %.0183.i68.i1395, align 1, !tbaa !555
  %i.mnd = fpext fast <16 x bfloat> %i.mnc to <16 x float>
  %i.mne = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.mnd, <16 x float> splat (float f0x00800000), i32 4)
  %i.mnf = bitcast <16 x float> %i.mne to <16 x i32> ; 2 uses
  %i.mng = lshr <16 x i32> %i.mnf, splat (i32 23)
  %i.mnh = and <16 x i32> %i.mnf, splat (i32 -2139095041)
  %i.mni = or disjoint <16 x i32> %i.mnh, splat (i32 1056964608)
  %i.mnj = bitcast <16 x i32> %i.mni to <16 x float> ; 3 uses
  %i.mnk = add nsw <16 x i32> %i.mng, splat (i32 -127)
  %i.mnl = sitofp fast <16 x i32> %i.mnk to <16 x float> ; 2 uses
  %i.mnm = fadd fast <16 x float> %i.mnl, splat (float 1.000000e+00)
  %i.mnn = fcmp fast olt <16 x float> %i.mnj, splat (float f0x3F3504F3) ; 2 uses
  %i.mno = fadd fast <16 x float> %i.mnj, splat (float -1.000000e+00)
  %i.mnp = select fast <16 x i1> %i.mnn, <16 x float> %i.mnl, <16 x float> %i.mnm ; 2 uses
  %i.mnq = select fast <16 x i1> %i.mnn, <16 x float> %i.mnj, <16 x float> zeroinitializer
  %i.mnr = fadd fast <16 x float> %i.mno, %i.mnq  ; 12 uses
  %i.mns = fmul fast <16 x float> %i.mnr, %i.mnr  ; 2 uses
  %i.mnt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mnr, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.mnu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mnt, <16 x float> nofpclass(nan inf) %i.mnr, <16 x float> splat (float f0x3DEF251A))
  %i.mnv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mnu, <16 x float> nofpclass(nan inf) %i.mnr, <16 x float> splat (float f0xBDFE5D4F))
  %i.mnw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mnv, <16 x float> nofpclass(nan inf) %i.mnr, <16 x float> splat (float f0x3E11E9BF))
  %i.mnx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mnw, <16 x float> nofpclass(nan inf) %i.mnr, <16 x float> splat (float f0xBE2AAE50))
  %i.mny = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mnx, <16 x float> nofpclass(nan inf) %i.mnr, <16 x float> splat (float f0x3E4CCEAC))
  %i.mnz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mny, <16 x float> nofpclass(nan inf) %i.mnr, <16 x float> splat (float f0xBE7FFFFC))
  %i.moa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mnz, <16 x float> nofpclass(nan inf) %i.mnr, <16 x float> splat (float f0x3EAAAAAA))
  %i.mob = fmul fast <16 x float> %i.mns, %i.mnr
  %i.moc = fmul fast <16 x float> %i.mob, %i.moa
  %i.mod = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mnp, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.moc)
  %i.moe = fneg fast <16 x float> %i.mns
  %i.mof = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.moe, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.mod)
  %i.mog = fadd fast <16 x float> %i.mof, %i.mnr
  %i.moh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mnp, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.mog)
  %i.moi = fmul fast <16 x float> %i.moh, %i.mmx
  %i.moj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.moi, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.mok = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.moj, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.mol = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mok, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.mom = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.mol, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.mon = fcmp fast ogt <16 x float> %i.mom, %i.mol
  %i.moo = fadd fast <16 x float> %i.mom, splat (float -1.000000e+00)
  %i.mop = select fast <16 x i1> %i.mon, <16 x float> %i.moo, <16 x float> %i.mom ; 2 uses
  %i.moq = fneg fast <16 x float> %i.mop          ; 2 uses
  %i.mor = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.moq, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.mok)
  %i.mos = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.moq, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.mor) ; 8 uses
  %i.mot = fmul fast <16 x float> %i.mos, %i.mos
  %i.mou = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mos, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.mov = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mou, <16 x float> nofpclass(nan inf) %i.mos, <16 x float> splat (float f0x3C088908))
  %i.mow = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mov, <16 x float> nofpclass(nan inf) %i.mos, <16 x float> splat (float f0x3D2AA9C1))
  %i.mox = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mow, <16 x float> nofpclass(nan inf) %i.mos, <16 x float> splat (float f0x3E2AAAAA))
  %i.moy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mox, <16 x float> nofpclass(nan inf) %i.mos, <16 x float> splat (float 5.000000e-01))
  %i.moz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.moy, <16 x float> nofpclass(nan inf) %i.mot, <16 x float> nofpclass(nan inf) %i.mos)
  %i.mpa = fadd fast <16 x float> %i.moz, splat (float 1.000000e+00)
  %i.mpb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.mop, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.mpc = shl <16 x i32> %i.mpb, splat (i32 23)
  %i.mpd = add <16 x i32> %i.mpc, splat (i32 1065353216)
  %i.mpe = bitcast <16 x i32> %i.mpd to <16 x float>
  %i.mpf = fmul fast <16 x float> %i.mpa, %i.mpe
  %i.mpg = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.mpf)
  store <16 x bfloat> %i.mpg, ptr %.035182.i69.i1396, align 1, !tbaa !555
  %i.mph = getelementptr inbounds nuw i8, ptr %.0183.i68.i1395, i64 32 ; 2 uses
  %i.mpi = getelementptr inbounds nuw i8, ptr %.035182.i69.i1396, i64 32 ; 2 uses
  %i.mpj = add nuw nsw i32 %.039181.i70.i1397, 16 ; 2 uses
  %i.mpk = or disjoint i32 %i.mpj, 15
  %i.mpl = icmp slt i32 %i.mpk, %i.lmx
  br i1 %i.mpl, label %.lr.ph.i67.i1394, label %.preheader180.loopexit.i71.i1398, !llvm.loop !291

.preheader179.i46.i1373:                          ; preds = %.lr.ph189.i63.i1390, %.preheader180.i42.i1369
  %.140.lcssa.i47.i1374 = phi i32 [ %.039.lcssa.i43.i1370, %.preheader180.i42.i1369 ], [ %i.mrv, %.lr.ph189.i63.i1390 ] ; 3 uses
  %.136.lcssa.i48.i1375 = phi ptr [ %.035.lcssa.i44.i1371, %.preheader180.i42.i1369 ], [ %i.mru, %.lr.ph189.i63.i1390 ] ; 2 uses
  %.1.lcssa.i49.i1376 = phi ptr [ %.0.lcssa.i45.i1372, %.preheader180.i42.i1369 ], [ %i.mrt, %.lr.ph189.i63.i1390 ] ; 2 uses
  %i.mpm = or disjoint i32 %.140.lcssa.i47.i1374, 3
  %i.mpn = icmp slt i32 %i.mpm, %i.lmx
  br i1 %i.mpn, label %.lr.ph196.i59.i1386, label %.preheader.i50.i1377

.lr.ph189.i63.i1390:                              ; preds = %.preheader180.i42.i1369, %.lr.ph189.i63.i1390
  %.1188.i64.i1391 = phi ptr [ %i.mrt, %.lr.ph189.i63.i1390 ], [ %.0.lcssa.i45.i1372, %.preheader180.i42.i1369 ] ; 2 uses
  %.136187.i65.i1392 = phi ptr [ %i.mru, %.lr.ph189.i63.i1390 ], [ %.035.lcssa.i44.i1371, %.preheader180.i42.i1369 ] ; 2 uses
  %.140186.i66.i1393 = phi i32 [ %i.mrv, %.lr.ph189.i63.i1390 ], [ %.039.lcssa.i43.i1370, %.preheader180.i42.i1369 ]
  %i.mpo = load <8 x bfloat>, ptr %.1188.i64.i1391, align 1, !tbaa !555
  %i.mpp = fpext fast <8 x bfloat> %i.mpo to <8 x float>
  %i.mpq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.mpp, <8 x float> splat (float f0x00800000))
  %i.mpr = bitcast <8 x float> %i.mpq to <8 x i32> ; 2 uses
  %i.mps = lshr <8 x i32> %i.mpr, splat (i32 23)
  %i.mpt = and <8 x i32> %i.mpr, splat (i32 -2139095041)
  %i.mpu = or disjoint <8 x i32> %i.mpt, splat (i32 1056964608)
  %i.mpv = bitcast <8 x i32> %i.mpu to <8 x float> ; 3 uses
  %i.mpw = add nsw <8 x i32> %i.mps, splat (i32 -127)
  %i.mpx = sitofp fast <8 x i32> %i.mpw to <8 x float> ; 2 uses
  %i.mpy = fadd fast <8 x float> %i.mpx, splat (float 1.000000e+00)
  %i.mpz = fcmp fast olt <8 x float> %i.mpv, splat (float f0x3F3504F3) ; 2 uses
  %i.mqa = select <8 x i1> %i.mpz, <8 x float> %i.mpv, <8 x float> zeroinitializer
  %i.mqb = fadd fast <8 x float> %i.mpv, splat (float -1.000000e+00)
  %i.mqc = select fast <8 x i1> %i.mpz, <8 x float> %i.mpx, <8 x float> %i.mpy ; 2 uses
  %i.mqd = fadd fast <8 x float> %i.mqb, %i.mqa   ; 12 uses
  %i.mqe = fmul fast <8 x float> %i.mqd, %i.mqd   ; 2 uses
  %i.mqf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mqd, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.mqg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mqf, <8 x float> nofpclass(nan inf) %i.mqd, <8 x float> splat (float f0x3DEF251A))
  %i.mqh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mqg, <8 x float> nofpclass(nan inf) %i.mqd, <8 x float> splat (float f0xBDFE5D4F))
  %i.mqi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mqh, <8 x float> nofpclass(nan inf) %i.mqd, <8 x float> splat (float f0x3E11E9BF))
  %i.mqj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mqi, <8 x float> nofpclass(nan inf) %i.mqd, <8 x float> splat (float f0xBE2AAE50))
  %i.mqk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mqj, <8 x float> nofpclass(nan inf) %i.mqd, <8 x float> splat (float f0x3E4CCEAC))
  %i.mql = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mqk, <8 x float> nofpclass(nan inf) %i.mqd, <8 x float> splat (float f0xBE7FFFFC))
  %i.mqm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mql, <8 x float> nofpclass(nan inf) %i.mqd, <8 x float> splat (float f0x3EAAAAAA))
  %i.mqn = fmul fast <8 x float> %i.mqe, %i.mqd
  %i.mqo = fmul fast <8 x float> %i.mqn, %i.mqm
  %i.mqp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mqc, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.mqo)
  %i.mqq = fneg fast <8 x float> %i.mqe
  %i.mqr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.mqq, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.mqp)
  %i.mqs = fadd fast <8 x float> %i.mqr, %i.mqd
  %i.mqt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mqc, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.mqs)
  %i.mqu = fmul fast <8 x float> %i.mqt, %i.mmv
  %i.mqv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.mqu, <8 x float> splat (float f0x42B0C0A5))
  %i.mqw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.mqv, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mqx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mqw, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.mqy = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.mqx, i32 1) ; 2 uses
  %i.mqz = fcmp fast ogt <8 x float> %i.mqy, %i.mqx
  %i.mra = select <8 x i1> %i.mqz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.mrb = fsub fast <8 x float> %i.mqy, %i.mra   ; 2 uses
  %i.mrc = fneg fast <8 x float> %i.mrb           ; 2 uses
  %i.mrd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.mrc, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.mqw)
  %i.mre = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.mrc, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.mrd) ; 8 uses
  %i.mrf = fmul fast <8 x float> %i.mre, %i.mre
  %i.mrg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mre, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.mrh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mrg, <8 x float> nofpclass(nan inf) %i.mre, <8 x float> splat (float f0x3C088908))
  %i.mri = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mrh, <8 x float> nofpclass(nan inf) %i.mre, <8 x float> splat (float f0x3D2AA9C1))
  %i.mrj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mri, <8 x float> nofpclass(nan inf) %i.mre, <8 x float> splat (float f0x3E2AAAAA))
  %i.mrk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mrj, <8 x float> nofpclass(nan inf) %i.mre, <8 x float> splat (float 5.000000e-01))
  %i.mrl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mrk, <8 x float> nofpclass(nan inf) %i.mrf, <8 x float> nofpclass(nan inf) %i.mre)
  %i.mrm = fadd fast <8 x float> %i.mrl, splat (float 1.000000e+00)
  %i.mrn = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mrb)
  %i.mro = shl <8 x i32> %i.mrn, splat (i32 23)
  %i.mrp = add <8 x i32> %i.mro, splat (i32 1065353216)
  %i.mrq = bitcast <8 x i32> %i.mrp to <8 x float>
  %i.mrr = fmul fast <8 x float> %i.mrm, %i.mrq
  %i.mrs = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mrr)
  store <8 x bfloat> %i.mrs, ptr %.136187.i65.i1392, align 1, !tbaa !555
  %i.mrt = getelementptr inbounds nuw i8, ptr %.1188.i64.i1391, i64 16 ; 2 uses
  %i.mru = getelementptr inbounds nuw i8, ptr %.136187.i65.i1392, i64 16 ; 2 uses
  %i.mrv = add nuw nsw i32 %.140186.i66.i1393, 8  ; 3 uses
  %i.mrw = or disjoint i32 %i.mrv, 7
  %i.mrx = icmp slt i32 %i.mrw, %i.lmx
  br i1 %i.mrx, label %.lr.ph189.i63.i1390, label %.preheader179.i46.i1373, !llvm.loop !292

.preheader.i50.i1377:                             ; preds = %.lr.ph196.i59.i1386, %.preheader179.i46.i1373
  %.241.lcssa.i51.i1378 = phi i32 [ %.140.lcssa.i47.i1374, %.preheader179.i46.i1373 ], [ %i.myd, %.lr.ph196.i59.i1386 ] ; 5 uses
  %.237.lcssa.i52.i1379 = phi ptr [ %.136.lcssa.i48.i1375, %.preheader179.i46.i1373 ], [ %i.myc, %.lr.ph196.i59.i1386 ] ; 6 uses
  %.2.lcssa.i53.i1380 = phi ptr [ %.1.lcssa.i49.i1376, %.preheader179.i46.i1373 ], [ %i.myb, %.lr.ph196.i59.i1386 ] ; 6 uses
  %i.mry = icmp slt i32 %.241.lcssa.i51.i1378, %i.lmx
  br i1 %i.mry, label %iter.check7418, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7418:                                   ; preds = %.preheader.i50.i1377
  %.237.lcssa.i52.i13797402 = ptrtoaddr ptr %.237.lcssa.i52.i1379 to i64
  %.2.lcssa.i53.i13807401 = ptrtoaddr ptr %.2.lcssa.i53.i1380 to i64
  %i.mrz = xor i32 %.241.lcssa.i51.i1378, -1
  %i.msa = add i32 %i.lmx, %i.mrz                 ; 3 uses
  %i.msb = zext i32 %i.msa to i64
  %i.msc = add nuw nsw i64 %i.msb, 1              ; 5 uses
  %min.iters.check7403 = icmp ult i32 %i.msa, 7
  %i.msd = sub i64 %.2.lcssa.i53.i13807401, %.237.lcssa.i52.i13797402
  %diff.check7405 = icmp ugt i64 %i.msd, -64
  %or.cond9211 = select i1 %min.iters.check7403, i1 true, i1 %diff.check7405
  br i1 %or.cond9211, label %.lr.ph203.i54.i1381.preheader, label %vector.main.loop.iter.check7406

vector.main.loop.iter.check7406:                  ; preds = %iter.check7418
  %min.iters.check7407 = icmp ult i32 %i.msa, 31
  br i1 %min.iters.check7407, label %vec.epilog.ph7422, label %vector.ph7408

vector.ph7408:                                    ; preds = %vector.main.loop.iter.check7406
  %i.mse = and i64 %i.msc, 24
  %n.vec7409 = and i64 %i.msc, 8589934560         ; 5 uses
  %i.msf = shl nuw nsw i64 %n.vec7409, 1          ; 2 uses
  %i.msg = getelementptr i8, ptr %.2.lcssa.i53.i1380, i64 %i.msf
  %i.msh = getelementptr i8, ptr %.237.lcssa.i52.i1379, i64 %i.msf
  %i.msi = trunc i64 %n.vec7409 to i32
  %i.msj = add i32 %.241.lcssa.i51.i1378, %i.msi
  %i.msk = insertelement <16 x float> poison, float %i.mmb, i64 0
  %i.msl = shufflevector <16 x float> %i.msk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.msm = insertelement <8 x float> poison, float %i.mmb, i64 0
  %i.msn = shufflevector <8 x float> %i.msm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mso = insertelement <4 x float> poison, float %i.mmb, i64 0
  %i.msp = shufflevector <4 x float> %i.mso, <4 x float> poison, <4 x i32> zeroinitializer
  %i.msq = insertelement <2 x float> poison, float %i.mmb, i64 0
  %i.msr = shufflevector <2 x float> %i.msq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7410

vector.body7410:                                  ; preds = %vector.ph7408, %vector.body7410
  %index7411 = phi i64 [ 0, %vector.ph7408 ], [ %index.next7415, %vector.body7410 ] ; 2 uses
  %i.mss = shl i64 %index7411, 1                  ; 2 uses
  %next.gep7412 = getelementptr i8, ptr %.2.lcssa.i53.i1380, i64 %i.mss
  %next.gep7413 = getelementptr i8, ptr %.237.lcssa.i52.i1379, i64 %i.mss
  %wide.load7414 = load <32 x i16>, ptr %next.gep7412, align 2, !tbaa !558
  %i.mst = zext <32 x i16> %wide.load7414 to <32 x i32>
  %i.msu = shl nuw <32 x i32> %i.mst, splat (i32 16)
  %i.msv = bitcast <32 x i32> %i.msu to <32 x float> ; 6 uses
  %i.msw = extractelement <32 x float> %i.msv, i64 0
  %i.msx = tail call fast float @llvm.pow.f32(float %i.msw, float %i.mmb)
  %i.msy = shufflevector <32 x float> %i.msv, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.msz = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.msy, <16 x float> %i.msl)
  %i.mta = shufflevector <32 x float> %i.msv, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.mtb = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.mta, <8 x float> %i.msn)
  %i.mtc = shufflevector <32 x float> %i.msv, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.mtd = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.mtc, <4 x float> %i.msp)
  %i.mte = extractelement <32 x float> %i.msv, i64 29
  %i.mtf = tail call fast float @llvm.pow.f32(float %i.mte, float %i.mmb)
  %i.mtg = shufflevector <32 x float> %i.msv, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.mth = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.mtg, <2 x float> %i.msr)
  %i.mti = insertelement <32 x float> poison, float %i.msx, i64 0
  %i.mtj = shufflevector <16 x float> %i.msz, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mtk = shufflevector <32 x float> %i.mti, <32 x float> %i.mtj, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mtl = shufflevector <8 x float> %i.mtb, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mtm = shufflevector <32 x float> %i.mtk, <32 x float> %i.mtl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mtn = shufflevector <4 x float> %i.mtd, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mto = shufflevector <32 x float> %i.mtm, <32 x float> %i.mtn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.mtp = insertelement <32 x float> %i.mto, float %i.mtf, i64 29
  %i.mtq = shufflevector <2 x float> %i.mth, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mtr = shufflevector <32 x float> %i.mtp, <32 x float> %i.mtq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.mts = bitcast <32 x float> %i.mtr to <32 x i32>
  %i.mtt = lshr <32 x i32> %i.mts, splat (i32 16)
  %i.mtu = trunc nuw <32 x i32> %i.mtt to <32 x i16>
  store <32 x i16> %i.mtu, ptr %next.gep7413, align 2, !tbaa !558
  %index.next7415 = add nuw i64 %index7411, 32    ; 2 uses
  %i.mtv = icmp eq i64 %index.next7415, %n.vec7409
  br i1 %i.mtv, label %middle.block7416, label %vector.body7410, !llvm.loop !293

middle.block7416:                                 ; preds = %vector.body7410
  %cmp.n7417 = icmp eq i64 %i.msc, %n.vec7409
  br i1 %cmp.n7417, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7419

vec.epilog.iter.check7419:                        ; preds = %middle.block7416
  %min.epilog.iters.check7421 = icmp eq i64 %i.mse, 0
  br i1 %min.epilog.iters.check7421, label %.lr.ph203.i54.i1381.preheader, label %vec.epilog.ph7422, !prof !561

vec.epilog.ph7422:                                ; preds = %vector.main.loop.iter.check7406, %vec.epilog.iter.check7419
  %vec.epilog.resume.val7423 = phi i64 [ %n.vec7409, %vec.epilog.iter.check7419 ], [ 0, %vector.main.loop.iter.check7406 ]
  %n.vec7424 = and i64 %i.msc, 8589934584         ; 4 uses
  %i.mtw = shl nuw nsw i64 %n.vec7424, 1          ; 2 uses
  %i.mtx = getelementptr i8, ptr %.2.lcssa.i53.i1380, i64 %i.mtw
  %i.mty = getelementptr i8, ptr %.237.lcssa.i52.i1379, i64 %i.mtw
  %i.mtz = trunc i64 %n.vec7424 to i32
  %i.mua = add i32 %.241.lcssa.i51.i1378, %i.mtz
  %i.mub = insertelement <4 x float> poison, float %i.mmb, i64 0
  %i.muc = shufflevector <4 x float> %i.mub, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7425

vec.epilog.vector.body7425:                       ; preds = %vec.epilog.vector.body7425, %vec.epilog.ph7422
  %index7426 = phi i64 [ %vec.epilog.resume.val7423, %vec.epilog.ph7422 ], [ %index.next7430, %vec.epilog.vector.body7425 ] ; 2 uses
  %i.mud = shl i64 %index7426, 1                  ; 2 uses
  %next.gep7427 = getelementptr i8, ptr %.2.lcssa.i53.i1380, i64 %i.mud
  %next.gep7428 = getelementptr i8, ptr %.237.lcssa.i52.i1379, i64 %i.mud
  %wide.load7429 = load <8 x i16>, ptr %next.gep7427, align 2, !tbaa !558
  %i.mue = zext <8 x i16> %wide.load7429 to <8 x i32>
  %i.muf = shl nuw <8 x i32> %i.mue, splat (i32 16)
  %i.mug = bitcast <8 x i32> %i.muf to <8 x float> ; 5 uses
  %i.muh = extractelement <8 x float> %i.mug, i64 0
  %i.mui = tail call fast float @llvm.pow.f32(float %i.muh, float %i.mmb)
  %i.muj = extractelement <8 x float> %i.mug, i64 1
  %i.muk = tail call fast float @llvm.pow.f32(float %i.muj, float %i.mmb)
  %i.mul = extractelement <8 x float> %i.mug, i64 2
  %i.mum = tail call fast float @llvm.pow.f32(float %i.mul, float %i.mmb)
  %i.mun = shufflevector <8 x float> %i.mug, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.muo = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.mun, <4 x float> %i.muc)
  %i.mup = extractelement <8 x float> %i.mug, i64 7
  %i.muq = tail call fast float @llvm.pow.f32(float %i.mup, float %i.mmb)
  %i.mur = insertelement <8 x float> poison, float %i.mui, i64 0
  %i.mus = insertelement <8 x float> %i.mur, float %i.muk, i64 1
  %i.mut = insertelement <8 x float> %i.mus, float %i.mum, i64 2
  %i.muu = shufflevector <4 x float> %i.muo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.muv = shufflevector <8 x float> %i.mut, <8 x float> %i.muu, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.muw = insertelement <8 x float> %i.muv, float %i.muq, i64 7
  %i.mux = bitcast <8 x float> %i.muw to <8 x i32>
  %i.muy = lshr <8 x i32> %i.mux, splat (i32 16)
  %i.muz = trunc nuw <8 x i32> %i.muy to <8 x i16>
  store <8 x i16> %i.muz, ptr %next.gep7428, align 2, !tbaa !558
  %index.next7430 = add nuw i64 %index7426, 8     ; 2 uses
  %i.mva = icmp eq i64 %index.next7430, %n.vec7424
  br i1 %i.mva, label %vec.epilog.middle.block7431, label %vec.epilog.vector.body7425, !llvm.loop !294

vec.epilog.middle.block7431:                      ; preds = %vec.epilog.vector.body7425
  %cmp.n7432 = icmp eq i64 %i.msc, %n.vec7424
  br i1 %cmp.n7432, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i54.i1381.preheader

.lr.ph203.i54.i1381.preheader:                    ; preds = %iter.check7418, %vec.epilog.iter.check7419, %vec.epilog.middle.block7431
  %.3202.i55.i1382.ph = phi ptr [ %.2.lcssa.i53.i1380, %iter.check7418 ], [ %i.msg, %vec.epilog.iter.check7419 ], [ %i.mtx, %vec.epilog.middle.block7431 ] ; 3 uses
  %.338201.i56.i1383.ph = phi ptr [ %.237.lcssa.i52.i1379, %iter.check7418 ], [ %i.msh, %vec.epilog.iter.check7419 ], [ %i.mty, %vec.epilog.middle.block7431 ] ; 3 uses
  %.342200.i57.i1384.ph = phi i32 [ %.241.lcssa.i51.i1378, %iter.check7418 ], [ %i.msj, %vec.epilog.iter.check7419 ], [ %i.mua, %vec.epilog.middle.block7431 ] ; 4 uses
  %i.mvb = sub i32 %i.lmx, %.342200.i57.i1384.ph
  %.neg11072 = add i32 %.342200.i57.i1384.ph, 1
  %xtraiter10479 = and i32 %i.mvb, 1
  %lcmp.mod10480.not = icmp eq i32 %xtraiter10479, 0
  br i1 %lcmp.mod10480.not, label %.lr.ph203.i54.i1381.prol.loopexit, label %.lr.ph203.i54.i1381.prol

.lr.ph203.i54.i1381.prol:                         ; preds = %.lr.ph203.i54.i1381.preheader
  %i.mvc = getelementptr inbounds nuw i8, ptr %.3202.i55.i1382.ph, i64 2
  %i.mvd = load i16, ptr %.3202.i55.i1382.ph, align 2, !tbaa !558
  %i.mve = zext i16 %i.mvd to i32
  %i.mvf = shl nuw i32 %i.mve, 16
  %i.mvg = bitcast i32 %i.mvf to float
  %i.mvh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mvg, float %i.mmb)
  %i.mvi = bitcast float %i.mvh to i32
  %i.mvj = lshr i32 %i.mvi, 16
  %i.mvk = trunc nuw i32 %i.mvj to i16
  %i.mvl = getelementptr inbounds nuw i8, ptr %.338201.i56.i1383.ph, i64 2
  store i16 %i.mvk, ptr %.338201.i56.i1383.ph, align 2, !tbaa !558
  %i.mvm = add nuw nsw i32 %.342200.i57.i1384.ph, 1
  br label %.lr.ph203.i54.i1381.prol.loopexit

.lr.ph203.i54.i1381.prol.loopexit:                ; preds = %.lr.ph203.i54.i1381.prol, %.lr.ph203.i54.i1381.preheader
  %.3202.i55.i1382.unr = phi ptr [ %.3202.i55.i1382.ph, %.lr.ph203.i54.i1381.preheader ], [ %i.mvc, %.lr.ph203.i54.i1381.prol ]
  %.338201.i56.i1383.unr = phi ptr [ %.338201.i56.i1383.ph, %.lr.ph203.i54.i1381.preheader ], [ %i.mvl, %.lr.ph203.i54.i1381.prol ]
  %.342200.i57.i1384.unr = phi i32 [ %.342200.i57.i1384.ph, %.lr.ph203.i54.i1381.preheader ], [ %i.mvm, %.lr.ph203.i54.i1381.prol ]
  %i.mvn = icmp eq i32 %i.lmx, %.neg11072
  br i1 %i.mvn, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i54.i1381

.lr.ph196.i59.i1386:                              ; preds = %.preheader179.i46.i1373, %.lr.ph196.i59.i1386
  %.2195.i60.i1387 = phi ptr [ %i.myb, %.lr.ph196.i59.i1386 ], [ %.1.lcssa.i49.i1376, %.preheader179.i46.i1373 ] ; 2 uses
  %.237194.i61.i1388 = phi ptr [ %i.myc, %.lr.ph196.i59.i1386 ], [ %.136.lcssa.i48.i1375, %.preheader179.i46.i1373 ] ; 2 uses
  %.241193.i62.i1389 = phi i32 [ %i.myd, %.lr.ph196.i59.i1386 ], [ %.140.lcssa.i47.i1374, %.preheader179.i46.i1373 ]
  %i.mvo = load i64, ptr %.2195.i60.i1387, align 1, !tbaa !555
  %i.mvp = insertelement <2 x i64> poison, i64 %i.mvo, i64 0
  %i.mvq = bitcast <2 x i64> %i.mvp to <8 x i16>
  %i.mvr = shufflevector <8 x i16> %i.mvq, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.mvs = bitcast <8 x i16> %i.mvr to <4 x float>
  %i.mvt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mvs, <4 x float> splat (float f0x00800000))
  %i.mvu = bitcast <4 x float> %i.mvt to <4 x i32> ; 2 uses
  %i.mvv = lshr <4 x i32> %i.mvu, splat (i32 23)
  %i.mvw = and <4 x i32> %i.mvu, splat (i32 -2139095041)
  %i.mvx = or disjoint <4 x i32> %i.mvw, splat (i32 1056964608)
  %i.mvy = bitcast <4 x i32> %i.mvx to <4 x float> ; 3 uses
  %i.mvz = add nsw <4 x i32> %i.mvv, splat (i32 -127)
  %i.mwa = sitofp fast <4 x i32> %i.mvz to <4 x float> ; 2 uses
  %i.mwb = fadd fast <4 x float> %i.mwa, splat (float 1.000000e+00)
  %i.mwc = fcmp fast olt <4 x float> %i.mvy, splat (float f0x3F3504F3) ; 2 uses
  %i.mwd = select <4 x i1> %i.mwc, <4 x float> %i.mvy, <4 x float> zeroinitializer
  %i.mwe = fadd fast <4 x float> %i.mvy, splat (float -1.000000e+00)
  %i.mwf = select fast <4 x i1> %i.mwc, <4 x float> %i.mwa, <4 x float> %i.mwb ; 2 uses
  %i.mwg = fadd fast <4 x float> %i.mwe, %i.mwd   ; 12 uses
  %i.mwh = fmul fast <4 x float> %i.mwg, %i.mwg   ; 2 uses
  %i.mwi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mwg, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.mwj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mwi, <4 x float> nofpclass(nan inf) %i.mwg, <4 x float> splat (float f0x3DEF251A))
  %i.mwk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mwj, <4 x float> nofpclass(nan inf) %i.mwg, <4 x float> splat (float f0xBDFE5D4F))
  %i.mwl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mwk, <4 x float> nofpclass(nan inf) %i.mwg, <4 x float> splat (float f0x3E11E9BF))
  %i.mwm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mwl, <4 x float> nofpclass(nan inf) %i.mwg, <4 x float> splat (float f0xBE2AAE50))
  %i.mwn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mwm, <4 x float> nofpclass(nan inf) %i.mwg, <4 x float> splat (float f0x3E4CCEAC))
  %i.mwo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mwn, <4 x float> nofpclass(nan inf) %i.mwg, <4 x float> splat (float f0xBE7FFFFC))
  %i.mwp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mwo, <4 x float> nofpclass(nan inf) %i.mwg, <4 x float> splat (float f0x3EAAAAAA))
  %i.mwq = fmul fast <4 x float> %i.mwh, %i.mwg
  %i.mwr = fmul fast <4 x float> %i.mwq, %i.mwp
  %i.mws = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mwf, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mwr)
  %i.mwt = fneg fast <4 x float> %i.mwh
  %i.mwu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mwt, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.mws)
  %i.mwv = fadd fast <4 x float> %i.mwu, %i.mwg
  %i.mww = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mwf, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mwv)
  %i.mwx = fmul fast <4 x float> %i.mww, %i.mmw
  %i.mwy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mwx, <4 x float> splat (float f0x42B0C0A5))
  %i.mwz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mwy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mxa = fmul fast <4 x float> %i.mwz, splat (float f0x3FB8AA3B)
  %i.mxb = fadd fast <4 x float> %i.mxa, splat (float 5.000000e-01) ; 2 uses
  %i.mxc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mxb)
  %i.mxd = sitofp fast <4 x i32> %i.mxc to <4 x float> ; 2 uses
  %i.mxe = fcmp fast olt <4 x float> %i.mxb, %i.mxd
  %i.mxf = select <4 x i1> %i.mxe, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mxg = fsub fast <4 x float> %i.mxd, %i.mxf   ; 2 uses
  %i.mxh = fneg fast <4 x float> %i.mxg           ; 2 uses
  %i.mxi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mxh, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mwz)
  %i.mxj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mxh, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mxi) ; 8 uses
  %i.mxk = fmul fast <4 x float> %i.mxj, %i.mxj
  %i.mxl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mxj, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.mxm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mxl, <4 x float> nofpclass(nan inf) %i.mxj, <4 x float> splat (float f0x3C088908))
  %i.mxn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mxm, <4 x float> nofpclass(nan inf) %i.mxj, <4 x float> splat (float f0x3D2AA9C1))
  %i.mxo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mxn, <4 x float> nofpclass(nan inf) %i.mxj, <4 x float> splat (float f0x3E2AAAAA))
  %i.mxp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mxo, <4 x float> nofpclass(nan inf) %i.mxj, <4 x float> splat (float 5.000000e-01))
  %i.mxq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mxp, <4 x float> nofpclass(nan inf) %i.mxk, <4 x float> nofpclass(nan inf) %i.mxj)
  %i.mxr = fadd fast <4 x float> %i.mxq, splat (float 1.000000e+00)
  %i.mxs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mxg)
  %i.mxt = shl <4 x i32> %i.mxs, splat (i32 23)
  %i.mxu = add <4 x i32> %i.mxt, splat (i32 1065353216)
  %i.mxv = bitcast <4 x i32> %i.mxu to <4 x float>
  %i.mxw = fmul fast <4 x float> %i.mxr, %i.mxv
  %i.mxx = shufflevector <4 x float> %i.mxw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.mxy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mxx)
  %i.mxz = bitcast <8 x bfloat> %i.mxy to <2 x i64>
  %i.mya = extractelement <2 x i64> %i.mxz, i64 0
  store i64 %i.mya, ptr %.237194.i61.i1388, align 1, !tbaa !555
  %i.myb = getelementptr inbounds nuw i8, ptr %.2195.i60.i1387, i64 8 ; 2 uses
  %i.myc = getelementptr inbounds nuw i8, ptr %.237194.i61.i1388, i64 8 ; 2 uses
  %i.myd = add nuw nsw i32 %.241193.i62.i1389, 4  ; 3 uses
  %i.mye = or disjoint i32 %i.myd, 3
  %i.myf = icmp slt i32 %i.mye, %i.lmx
  br i1 %i.myf, label %.lr.ph196.i59.i1386, label %.preheader.i50.i1377, !llvm.loop !295

.lr.ph203.i54.i1381:                              ; preds = %.lr.ph203.i54.i1381.prol.loopexit, %.lr.ph203.i54.i1381
  %.3202.i55.i1382 = phi ptr [ %i.myq, %.lr.ph203.i54.i1381 ], [ %.3202.i55.i1382.unr, %.lr.ph203.i54.i1381.prol.loopexit ] ; 3 uses
  %.338201.i56.i1383 = phi ptr [ %i.myz, %.lr.ph203.i54.i1381 ], [ %.338201.i56.i1383.unr, %.lr.ph203.i54.i1381.prol.loopexit ] ; 3 uses
  %.342200.i57.i1384 = phi i32 [ %i.mza, %.lr.ph203.i54.i1381 ], [ %.342200.i57.i1384.unr, %.lr.ph203.i54.i1381.prol.loopexit ]
  %i.myg = getelementptr inbounds nuw i8, ptr %.3202.i55.i1382, i64 2
  %i.myh = load i16, ptr %.3202.i55.i1382, align 2, !tbaa !558
  %i.myi = zext i16 %i.myh to i32
  %i.myj = shl nuw i32 %i.myi, 16
  %i.myk = bitcast i32 %i.myj to float
  %i.myl = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.myk, float %i.mmb)
  %i.mym = bitcast float %i.myl to i32
  %i.myn = lshr i32 %i.mym, 16
  %i.myo = trunc nuw i32 %i.myn to i16
  %i.myp = getelementptr inbounds nuw i8, ptr %.338201.i56.i1383, i64 2
  store i16 %i.myo, ptr %.338201.i56.i1383, align 2, !tbaa !558
  %i.myq = getelementptr inbounds nuw i8, ptr %.3202.i55.i1382, i64 4
  %i.myr = load i16, ptr %i.myg, align 2, !tbaa !558
  %i.mys = zext i16 %i.myr to i32
  %i.myt = shl nuw i32 %i.mys, 16
  %i.myu = bitcast i32 %i.myt to float
  %i.myv = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.myu, float %i.mmb)
  %i.myw = bitcast float %i.myv to i32
  %i.myx = lshr i32 %i.myw, 16
  %i.myy = trunc nuw i32 %i.myx to i16
  %i.myz = getelementptr inbounds nuw i8, ptr %.338201.i56.i1383, i64 4
  store i16 %i.myy, ptr %i.myp, align 2, !tbaa !558
  %i.mza = add nuw nsw i32 %.342200.i57.i1384, 2  ; 2 uses
  %exitcond.not.i58.i1385.1 = icmp eq i32 %i.mza, %i.lmx
  br i1 %exitcond.not.i58.i1385.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i54.i1381, !llvm.loop !296

bb.je:                                            ; preds = %bb.ix, %bb.ik
  %i.mzb = icmp eq i32 %6, 1
  br i1 %i.mzb, label %bb.jf, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.jf:                                            ; preds = %bb.je
  %i.mzc = icmp eq i32 %3, %4
  br i1 %i.mzc, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  switch i32 %.sroa.speculated.i1301, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.preheader.i76.i1362
    i32 8, label %.preheader167.i.i1355
    i32 4, label %.preheader169.i.i1348
  ]

.preheader169.i.i1348:                            ; preds = %bb.jg
  %i.mzd = icmp sgt i32 %.sroa.speculated98.i1300, 0
  br i1 %i.mzd, label %.lr.ph.i74.i1349, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader167.i.i1355:                            ; preds = %bb.jg
  %i.mze = icmp sgt i32 %.sroa.speculated98.i1300, 0
  br i1 %i.mze, label %.lr.ph179.i.i1356, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i76.i1362:                             ; preds = %bb.jg
  %i.mzf = icmp sgt i32 %.sroa.speculated98.i1300, 0
  br i1 %i.mzf, label %.lr.ph184.i.i1363, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph184.i.i1363:                                ; preds = %.preheader.i76.i1362, %.lr.ph184.i.i1363
  %.031183.i.i1364 = phi ptr [ %i.nbr, %.lr.ph184.i.i1363 ], [ %0, %.preheader.i76.i1362 ] ; 2 uses
  %.033182.i.i1365 = phi ptr [ %i.nbs, %.lr.ph184.i.i1363 ], [ %1, %.preheader.i76.i1362 ] ; 2 uses
  %.036181.i.i1366 = phi i32 [ %i.nbu, %.lr.ph184.i.i1363 ], [ 0, %.preheader.i76.i1362 ]
  %.037180.i.i1367 = phi ptr [ %i.nbt, %.lr.ph184.i.i1363 ], [ %2, %.preheader.i76.i1362 ] ; 2 uses
  %i.mzg = load <16 x bfloat>, ptr %.031183.i.i1364, align 1, !tbaa !555
  %i.mzh = fpext fast <16 x bfloat> %i.mzg to <16 x float>
  %i.mzi = load i16, ptr %.033182.i.i1365, align 2, !tbaa !558
  %i.mzj = zext i16 %i.mzi to i32
  %i.mzk = shl nuw i32 %i.mzj, 16
  %i.mzl = insertelement <16 x i32> poison, i32 %i.mzk, i64 0
  %i.mzm = bitcast <16 x i32> %i.mzl to <16 x float>
  %i.mzn = shufflevector <16 x float> %i.mzm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.mzo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.mzn, <16 x float> splat (float f0x00800000), i32 4)
  %i.mzp = bitcast <16 x float> %i.mzo to <16 x i32> ; 2 uses
  %i.mzq = lshr <16 x i32> %i.mzp, splat (i32 23)
  %i.mzr = and <16 x i32> %i.mzp, splat (i32 -2139095041)
  %i.mzs = or disjoint <16 x i32> %i.mzr, splat (i32 1056964608)
  %i.mzt = bitcast <16 x i32> %i.mzs to <16 x float> ; 3 uses
  %i.mzu = add nsw <16 x i32> %i.mzq, splat (i32 -127)
  %i.mzv = sitofp fast <16 x i32> %i.mzu to <16 x float> ; 2 uses
  %i.mzw = fadd fast <16 x float> %i.mzv, splat (float 1.000000e+00)
  %i.mzx = fcmp fast olt <16 x float> %i.mzt, splat (float f0x3F3504F3) ; 2 uses
  %i.mzy = fadd fast <16 x float> %i.mzt, splat (float -1.000000e+00)
  %i.mzz = select fast <16 x i1> %i.mzx, <16 x float> %i.mzv, <16 x float> %i.mzw ; 2 uses
  %i.naa = select fast <16 x i1> %i.mzx, <16 x float> %i.mzt, <16 x float> zeroinitializer
  %i.nab = fadd fast <16 x float> %i.mzy, %i.naa  ; 12 uses
  %i.nac = fmul fast <16 x float> %i.nab, %i.nab  ; 2 uses
  %i.nad = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nab, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.nae = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nad, <16 x float> nofpclass(nan inf) %i.nab, <16 x float> splat (float f0x3DEF251A))
  %i.naf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nae, <16 x float> nofpclass(nan inf) %i.nab, <16 x float> splat (float f0xBDFE5D4F))
  %i.nag = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.naf, <16 x float> nofpclass(nan inf) %i.nab, <16 x float> splat (float f0x3E11E9BF))
  %i.nah = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nag, <16 x float> nofpclass(nan inf) %i.nab, <16 x float> splat (float f0xBE2AAE50))
  %i.nai = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nah, <16 x float> nofpclass(nan inf) %i.nab, <16 x float> splat (float f0x3E4CCEAC))
  %i.naj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nai, <16 x float> nofpclass(nan inf) %i.nab, <16 x float> splat (float f0xBE7FFFFC))
  %i.nak = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.naj, <16 x float> nofpclass(nan inf) %i.nab, <16 x float> splat (float f0x3EAAAAAA))
  %i.nal = fmul fast <16 x float> %i.nac, %i.nab
  %i.nam = fmul fast <16 x float> %i.nal, %i.nak
  %i.nan = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mzz, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.nam)
  %i.nao = fneg fast <16 x float> %i.nac
  %i.nap = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.nao, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.nan)
  %i.naq = fadd fast <16 x float> %i.nap, %i.nab
  %i.nar = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mzz, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.naq)
  %i.nas = fmul fast <16 x float> %i.nar, %i.mzh
  %i.nat = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.nas, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.nau = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.nat, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.nav = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nau, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.naw = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.nav, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.nax = fcmp fast ogt <16 x float> %i.naw, %i.nav
  %i.nay = fadd fast <16 x float> %i.naw, splat (float -1.000000e+00)
  %i.naz = select fast <16 x i1> %i.nax, <16 x float> %i.nay, <16 x float> %i.naw ; 2 uses
  %i.nba = fneg fast <16 x float> %i.naz          ; 2 uses
  %i.nbb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.nba, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.nau)
  %i.nbc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.nba, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.nbb) ; 8 uses
  %i.nbd = fmul fast <16 x float> %i.nbc, %i.nbc
  %i.nbe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbc, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.nbf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbe, <16 x float> nofpclass(nan inf) %i.nbc, <16 x float> splat (float f0x3C088908))
  %i.nbg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbf, <16 x float> nofpclass(nan inf) %i.nbc, <16 x float> splat (float f0x3D2AA9C1))
  %i.nbh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbg, <16 x float> nofpclass(nan inf) %i.nbc, <16 x float> splat (float f0x3E2AAAAA))
  %i.nbi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbh, <16 x float> nofpclass(nan inf) %i.nbc, <16 x float> splat (float 5.000000e-01))
  %i.nbj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbi, <16 x float> nofpclass(nan inf) %i.nbd, <16 x float> nofpclass(nan inf) %i.nbc)
  %i.nbk = fadd fast <16 x float> %i.nbj, splat (float 1.000000e+00)
  %i.nbl = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.naz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.nbm = shl <16 x i32> %i.nbl, splat (i32 23)
  %i.nbn = add <16 x i32> %i.nbm, splat (i32 1065353216)
  %i.nbo = bitcast <16 x i32> %i.nbn to <16 x float>
  %i.nbp = fmul fast <16 x float> %i.nbk, %i.nbo
  %i.nbq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.nbp)
  store <16 x bfloat> %i.nbq, ptr %.037180.i.i1367, align 1, !tbaa !555
  %i.nbr = getelementptr inbounds nuw i8, ptr %.031183.i.i1364, i64 32
  %i.nbs = getelementptr inbounds nuw i8, ptr %.033182.i.i1365, i64 2
  %i.nbt = getelementptr inbounds nuw i8, ptr %.037180.i.i1367, i64 32
  %i.nbu = add nuw nsw i32 %.036181.i.i1366, 1    ; 2 uses
  %exitcond188.not.i.i1368 = icmp eq i32 %i.nbu, %.sroa.speculated98.i1300
  br i1 %exitcond188.not.i.i1368, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph184.i.i1363, !llvm.loop !297

.lr.ph179.i.i1356:                                ; preds = %.preheader167.i.i1355, %.lr.ph179.i.i1356
  %.1178.i.i1357 = phi ptr [ %i.neg, %.lr.ph179.i.i1356 ], [ %0, %.preheader167.i.i1355 ] ; 2 uses
  %.032177.i.i1358 = phi i32 [ %i.nej, %.lr.ph179.i.i1356 ], [ 0, %.preheader167.i.i1355 ]
  %.134176.i.i1359 = phi ptr [ %i.neh, %.lr.ph179.i.i1356 ], [ %1, %.preheader167.i.i1355 ] ; 2 uses
  %.138175.i.i1360 = phi ptr [ %i.nei, %.lr.ph179.i.i1356 ], [ %2, %.preheader167.i.i1355 ] ; 2 uses
  %i.nbv = load <8 x bfloat>, ptr %.1178.i.i1357, align 1, !tbaa !555
  %i.nbw = fpext fast <8 x bfloat> %i.nbv to <8 x float>
  %i.nbx = load i16, ptr %.134176.i.i1359, align 2, !tbaa !558
  %i.nby = zext i16 %i.nbx to i32
  %i.nbz = shl nuw i32 %i.nby, 16
  %i.nca = insertelement <8 x i32> poison, i32 %i.nbz, i64 0
  %i.ncb = bitcast <8 x i32> %i.nca to <8 x float>
  %i.ncc = shufflevector <8 x float> %i.ncb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ncd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ncc, <8 x float> splat (float f0x00800000))
  %i.nce = bitcast <8 x float> %i.ncd to <8 x i32> ; 2 uses
  %i.ncf = lshr <8 x i32> %i.nce, splat (i32 23)
  %i.ncg = and <8 x i32> %i.nce, splat (i32 -2139095041)
  %i.nch = or disjoint <8 x i32> %i.ncg, splat (i32 1056964608)
  %i.nci = bitcast <8 x i32> %i.nch to <8 x float> ; 3 uses
  %i.ncj = add nsw <8 x i32> %i.ncf, splat (i32 -127)
  %i.nck = sitofp fast <8 x i32> %i.ncj to <8 x float> ; 2 uses
  %i.ncl = fadd fast <8 x float> %i.nck, splat (float 1.000000e+00)
  %i.ncm = fcmp fast olt <8 x float> %i.nci, splat (float f0x3F3504F3) ; 2 uses
  %i.ncn = select <8 x i1> %i.ncm, <8 x float> %i.nci, <8 x float> zeroinitializer
  %i.nco = fadd fast <8 x float> %i.nci, splat (float -1.000000e+00)
  %i.ncp = select fast <8 x i1> %i.ncm, <8 x float> %i.nck, <8 x float> %i.ncl ; 2 uses
  %i.ncq = fadd fast <8 x float> %i.nco, %i.ncn   ; 12 uses
  %i.ncr = fmul fast <8 x float> %i.ncq, %i.ncq   ; 2 uses
  %i.ncs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncq, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.nct = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncs, <8 x float> nofpclass(nan inf) %i.ncq, <8 x float> splat (float f0x3DEF251A))
  %i.ncu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nct, <8 x float> nofpclass(nan inf) %i.ncq, <8 x float> splat (float f0xBDFE5D4F))
  %i.ncv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncu, <8 x float> nofpclass(nan inf) %i.ncq, <8 x float> splat (float f0x3E11E9BF))
  %i.ncw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncv, <8 x float> nofpclass(nan inf) %i.ncq, <8 x float> splat (float f0xBE2AAE50))
  %i.ncx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncw, <8 x float> nofpclass(nan inf) %i.ncq, <8 x float> splat (float f0x3E4CCEAC))
  %i.ncy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncx, <8 x float> nofpclass(nan inf) %i.ncq, <8 x float> splat (float f0xBE7FFFFC))
  %i.ncz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncy, <8 x float> nofpclass(nan inf) %i.ncq, <8 x float> splat (float f0x3EAAAAAA))
  %i.nda = fmul fast <8 x float> %i.ncr, %i.ncq
  %i.ndb = fmul fast <8 x float> %i.nda, %i.ncz
  %i.ndc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ndb)
  %i.ndd = fneg fast <8 x float> %i.ncr
  %i.nde = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ndd, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ndc)
  %i.ndf = fadd fast <8 x float> %i.nde, %i.ncq
  %i.ndg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ndf)
  %i.ndh = fmul fast <8 x float> %i.ndg, %i.nbw
  %i.ndi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ndh, <8 x float> splat (float f0x42B0C0A5))
  %i.ndj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ndi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ndk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ndj, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ndl = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ndk, i32 1) ; 2 uses
  %i.ndm = fcmp fast ogt <8 x float> %i.ndl, %i.ndk
  %i.ndn = select <8 x i1> %i.ndm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ndo = fsub fast <8 x float> %i.ndl, %i.ndn   ; 2 uses
  %i.ndp = fneg fast <8 x float> %i.ndo           ; 2 uses
  %i.ndq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ndp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ndj)
  %i.ndr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ndp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ndq) ; 8 uses
  %i.nds = fmul fast <8 x float> %i.ndr, %i.ndr
  %i.ndt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ndr, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ndu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ndt, <8 x float> nofpclass(nan inf) %i.ndr, <8 x float> splat (float f0x3C088908))
  %i.ndv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ndu, <8 x float> nofpclass(nan inf) %i.ndr, <8 x float> splat (float f0x3D2AA9C1))
  %i.ndw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ndv, <8 x float> nofpclass(nan inf) %i.ndr, <8 x float> splat (float f0x3E2AAAAA))
  %i.ndx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ndw, <8 x float> nofpclass(nan inf) %i.ndr, <8 x float> splat (float 5.000000e-01))
  %i.ndy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ndx, <8 x float> nofpclass(nan inf) %i.nds, <8 x float> nofpclass(nan inf) %i.ndr)
  %i.ndz = fadd fast <8 x float> %i.ndy, splat (float 1.000000e+00)
  %i.nea = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ndo)
  %i.neb = shl <8 x i32> %i.nea, splat (i32 23)
  %i.nec = add <8 x i32> %i.neb, splat (i32 1065353216)
  %i.ned = bitcast <8 x i32> %i.nec to <8 x float>
  %i.nee = fmul fast <8 x float> %i.ndz, %i.ned
  %i.nef = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nee)
  store <8 x bfloat> %i.nef, ptr %.138175.i.i1360, align 1, !tbaa !555
  %i.neg = getelementptr inbounds nuw i8, ptr %.1178.i.i1357, i64 16
  %i.neh = getelementptr inbounds nuw i8, ptr %.134176.i.i1359, i64 2
  %i.nei = getelementptr inbounds nuw i8, ptr %.138175.i.i1360, i64 16
  %i.nej = add nuw nsw i32 %.032177.i.i1358, 1    ; 2 uses
  %exitcond187.not.i.i1361 = icmp eq i32 %i.nej, %.sroa.speculated98.i1300
  br i1 %exitcond187.not.i.i1361, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph179.i.i1356, !llvm.loop !298

.lr.ph.i74.i1349:                                 ; preds = %.preheader169.i.i1348, %.lr.ph.i74.i1349
  %.0174.i.i1350 = phi i32 [ %i.nhg, %.lr.ph.i74.i1349 ], [ 0, %.preheader169.i.i1348 ]
  %.2173.i.i1351 = phi ptr [ %i.nhd, %.lr.ph.i74.i1349 ], [ %0, %.preheader169.i.i1348 ] ; 2 uses
  %.235172.i.i1352 = phi ptr [ %i.nhe, %.lr.ph.i74.i1349 ], [ %1, %.preheader169.i.i1348 ] ; 2 uses
  %.239171.i.i1353 = phi ptr [ %i.nhf, %.lr.ph.i74.i1349 ], [ %2, %.preheader169.i.i1348 ] ; 2 uses
  %i.nek = load i64, ptr %.2173.i.i1351, align 1, !tbaa !555
  %i.nel = insertelement <2 x i64> poison, i64 %i.nek, i64 0
  %i.nem = bitcast <2 x i64> %i.nel to <8 x i16>
  %i.nen = shufflevector <8 x i16> %i.nem, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.neo = bitcast <8 x i16> %i.nen to <4 x float>
  %i.nep = load i16, ptr %.235172.i.i1352, align 2, !tbaa !558
  %i.neq = zext i16 %i.nep to i32
  %i.ner = shl nuw i32 %i.neq, 16
  %i.nes = insertelement <4 x i32> poison, i32 %i.ner, i64 0
  %i.net = bitcast <4 x i32> %i.nes to <4 x float>
  %i.neu = shufflevector <4 x float> %i.net, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nev = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.neu, <4 x float> splat (float f0x00800000))
  %i.new = bitcast <4 x float> %i.nev to <4 x i32> ; 2 uses
  %i.nex = lshr <4 x i32> %i.new, splat (i32 23)
  %i.ney = and <4 x i32> %i.new, splat (i32 -2139095041)
  %i.nez = or disjoint <4 x i32> %i.ney, splat (i32 1056964608)
  %i.nfa = bitcast <4 x i32> %i.nez to <4 x float> ; 3 uses
  %i.nfb = add nsw <4 x i32> %i.nex, splat (i32 -127)
  %i.nfc = sitofp fast <4 x i32> %i.nfb to <4 x float> ; 2 uses
  %i.nfd = fadd fast <4 x float> %i.nfc, splat (float 1.000000e+00)
  %i.nfe = fcmp fast olt <4 x float> %i.nfa, splat (float f0x3F3504F3) ; 2 uses
  %i.nff = select <4 x i1> %i.nfe, <4 x float> %i.nfa, <4 x float> zeroinitializer
  %i.nfg = fadd fast <4 x float> %i.nfa, splat (float -1.000000e+00)
  %i.nfh = select fast <4 x i1> %i.nfe, <4 x float> %i.nfc, <4 x float> %i.nfd ; 2 uses
  %i.nfi = fadd fast <4 x float> %i.nfg, %i.nff   ; 12 uses
  %i.nfj = fmul fast <4 x float> %i.nfi, %i.nfi   ; 2 uses
  %i.nfk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfi, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.nfl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfk, <4 x float> nofpclass(nan inf) %i.nfi, <4 x float> splat (float f0x3DEF251A))
  %i.nfm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfl, <4 x float> nofpclass(nan inf) %i.nfi, <4 x float> splat (float f0xBDFE5D4F))
  %i.nfn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfm, <4 x float> nofpclass(nan inf) %i.nfi, <4 x float> splat (float f0x3E11E9BF))
  %i.nfo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfn, <4 x float> nofpclass(nan inf) %i.nfi, <4 x float> splat (float f0xBE2AAE50))
  %i.nfp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfo, <4 x float> nofpclass(nan inf) %i.nfi, <4 x float> splat (float f0x3E4CCEAC))
  %i.nfq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfp, <4 x float> nofpclass(nan inf) %i.nfi, <4 x float> splat (float f0xBE7FFFFC))
  %i.nfr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfq, <4 x float> nofpclass(nan inf) %i.nfi, <4 x float> splat (float f0x3EAAAAAA))
  %i.nfs = fmul fast <4 x float> %i.nfj, %i.nfi
  %i.nft = fmul fast <4 x float> %i.nfs, %i.nfr
  %i.nfu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfh, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.nft)
  %i.nfv = fneg fast <4 x float> %i.nfj
  %i.nfw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nfv, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.nfu)
  %i.nfx = fadd fast <4 x float> %i.nfw, %i.nfi
  %i.nfy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfh, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.nfx)
  %i.nfz = fmul fast <4 x float> %i.nfy, %i.neo
  %i.nga = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nfz, <4 x float> splat (float f0x42B0C0A5))
  %i.ngb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nga, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ngc = fmul fast <4 x float> %i.ngb, splat (float f0x3FB8AA3B)
  %i.ngd = fadd fast <4 x float> %i.ngc, splat (float 5.000000e-01) ; 2 uses
  %i.nge = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ngd)
  %i.ngf = sitofp fast <4 x i32> %i.nge to <4 x float> ; 2 uses
  %i.ngg = fcmp fast olt <4 x float> %i.ngd, %i.ngf
  %i.ngh = select <4 x i1> %i.ngg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ngi = fsub fast <4 x float> %i.ngf, %i.ngh   ; 2 uses
  %i.ngj = fneg fast <4 x float> %i.ngi           ; 2 uses
  %i.ngk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ngj, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ngb)
  %i.ngl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ngj, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ngk) ; 8 uses
  %i.ngm = fmul fast <4 x float> %i.ngl, %i.ngl
  %i.ngn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ngl, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ngo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ngn, <4 x float> nofpclass(nan inf) %i.ngl, <4 x float> splat (float f0x3C088908))
  %i.ngp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ngo, <4 x float> nofpclass(nan inf) %i.ngl, <4 x float> splat (float f0x3D2AA9C1))
  %i.ngq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ngp, <4 x float> nofpclass(nan inf) %i.ngl, <4 x float> splat (float f0x3E2AAAAA))
  %i.ngr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ngq, <4 x float> nofpclass(nan inf) %i.ngl, <4 x float> splat (float 5.000000e-01))
  %i.ngs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ngr, <4 x float> nofpclass(nan inf) %i.ngm, <4 x float> nofpclass(nan inf) %i.ngl)
  %i.ngt = fadd fast <4 x float> %i.ngs, splat (float 1.000000e+00)
  %i.ngu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ngi)
  %i.ngv = shl <4 x i32> %i.ngu, splat (i32 23)
  %i.ngw = add <4 x i32> %i.ngv, splat (i32 1065353216)
  %i.ngx = bitcast <4 x i32> %i.ngw to <4 x float>
  %i.ngy = fmul fast <4 x float> %i.ngt, %i.ngx
  %i.ngz = shufflevector <4 x float> %i.ngy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.nha = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ngz)
  %i.nhb = bitcast <8 x bfloat> %i.nha to <2 x i64>
  %i.nhc = extractelement <2 x i64> %i.nhb, i64 0
  store i64 %i.nhc, ptr %.239171.i.i1353, align 1, !tbaa !555
  %i.nhd = getelementptr inbounds nuw i8, ptr %.2173.i.i1351, i64 8
  %i.nhe = getelementptr inbounds nuw i8, ptr %.235172.i.i1352, i64 2
  %i.nhf = getelementptr inbounds nuw i8, ptr %.239171.i.i1353, i64 8
  %i.nhg = add nuw nsw i32 %.0174.i.i1350, 1      ; 2 uses
  %exitcond.not.i75.i1354 = icmp eq i32 %i.nhg, %.sroa.speculated98.i1300
  br i1 %exitcond.not.i75.i1354, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i74.i1349, !llvm.loop !299

bb.jh:                                            ; preds = %bb.jf
  %i.nhh = icmp eq i32 %4, 1
  br i1 %i.nhh, label %bb.ji, label %bb.jm

bb.ji:                                            ; preds = %bb.jh
  %.val.i1317 = load i16, ptr %1, align 2, !tbaa !558
  %i.nhi = zext i16 %.val.i1317 to i32
  %i.nhj = shl nuw i32 %i.nhi, 16
  %i.nhk = bitcast i32 %i.nhj to float            ; 17 uses
  %i.nhl = icmp sgt i32 %i.lmx, 15
  br i1 %i.nhl, label %.lr.ph.i85.i1343, label %._crit_edge.i.i1318

.lr.ph.i85.i1343:                                 ; preds = %bb.ji
  %i.nhm = insertelement <16 x float> poison, float %i.nhk, i64 0
  %i.nhn = shufflevector <16 x float> %i.nhm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.nho = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.nhn, <16 x float> splat (float f0x00800000), i32 4)
  %i.nhp = bitcast <16 x float> %i.nho to <16 x i32> ; 2 uses
  %i.nhq = lshr <16 x i32> %i.nhp, splat (i32 23)
  %i.nhr = and <16 x i32> %i.nhp, splat (i32 -2139095041)
  %i.nhs = or disjoint <16 x i32> %i.nhr, splat (i32 1056964608)
  %i.nht = bitcast <16 x i32> %i.nhs to <16 x float> ; 3 uses
  %i.nhu = add nsw <16 x i32> %i.nhq, splat (i32 -127)
  %i.nhv = sitofp fast <16 x i32> %i.nhu to <16 x float> ; 2 uses
  %i.nhw = fadd fast <16 x float> %i.nhv, splat (float 1.000000e+00)
  %i.nhx = fcmp fast olt <16 x float> %i.nht, splat (float f0x3F3504F3) ; 2 uses
  %i.nhy = fadd fast <16 x float> %i.nht, splat (float -1.000000e+00)
  %i.nhz = select fast <16 x i1> %i.nhx, <16 x float> %i.nhv, <16 x float> %i.nhw ; 2 uses
  %i.nia = select fast <16 x i1> %i.nhx, <16 x float> %i.nht, <16 x float> zeroinitializer
  %i.nib = fadd fast <16 x float> %i.nhy, %i.nia  ; 12 uses
  %i.nic = fmul fast <16 x float> %i.nib, %i.nib  ; 2 uses
  %i.nid = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nib, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.nie = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nid, <16 x float> nofpclass(nan inf) %i.nib, <16 x float> splat (float f0x3DEF251A))
  %i.nif = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nie, <16 x float> nofpclass(nan inf) %i.nib, <16 x float> splat (float f0xBDFE5D4F))
  %i.nig = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nif, <16 x float> nofpclass(nan inf) %i.nib, <16 x float> splat (float f0x3E11E9BF))
  %i.nih = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nig, <16 x float> nofpclass(nan inf) %i.nib, <16 x float> splat (float f0xBE2AAE50))
  %i.nii = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nih, <16 x float> nofpclass(nan inf) %i.nib, <16 x float> splat (float f0x3E4CCEAC))
  %i.nij = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nii, <16 x float> nofpclass(nan inf) %i.nib, <16 x float> splat (float f0xBE7FFFFC))
  %i.nik = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nij, <16 x float> nofpclass(nan inf) %i.nib, <16 x float> splat (float f0x3EAAAAAA))
  %i.nil = fmul fast <16 x float> %i.nic, %i.nib
  %i.nim = fmul fast <16 x float> %i.nil, %i.nik
  %i.nin = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nhz, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.nim)
  %i.nio = fneg fast <16 x float> %i.nic
  %i.nip = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.nio, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.nin)
  %i.niq = fadd fast <16 x float> %i.nip, %i.nib
  %i.nir = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nhz, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.niq)
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jj, %.lr.ph.i85.i1343
  %.0132.i.i1344 = phi ptr [ %0, %.lr.ph.i85.i1343 ], [ %i.njt, %bb.jj ] ; 2 uses
  %.030131.i.i1345 = phi ptr [ %2, %.lr.ph.i85.i1343 ], [ %i.nju, %bb.jj ] ; 2 uses
  %.034130.i.i1346 = phi i32 [ 0, %.lr.ph.i85.i1343 ], [ %i.njv, %bb.jj ]
  %i.nis = load <16 x bfloat>, ptr %.0132.i.i1344, align 1, !tbaa !555
  %i.nit = fpext fast <16 x bfloat> %i.nis to <16 x float>
  %i.niu = fmul fast <16 x float> %i.nir, %i.nit
  %i.niv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.niu, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.niw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.niv, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.nix = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.niw, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.niy = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.nix, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.niz = fcmp fast ogt <16 x float> %i.niy, %i.nix
  %i.nja = fadd fast <16 x float> %i.niy, splat (float -1.000000e+00)
  %i.njb = select fast <16 x i1> %i.niz, <16 x float> %i.nja, <16 x float> %i.niy ; 2 uses
  %i.njc = fneg fast <16 x float> %i.njb          ; 2 uses
  %i.njd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.njc, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.niw)
  %i.nje = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.njc, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.njd) ; 8 uses
  %i.njf = fmul fast <16 x float> %i.nje, %i.nje
  %i.njg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nje, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.njh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.njg, <16 x float> nofpclass(nan inf) %i.nje, <16 x float> splat (float f0x3C088908))
  %i.nji = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.njh, <16 x float> nofpclass(nan inf) %i.nje, <16 x float> splat (float f0x3D2AA9C1))
  %i.njj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nji, <16 x float> nofpclass(nan inf) %i.nje, <16 x float> splat (float f0x3E2AAAAA))
  %i.njk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.njj, <16 x float> nofpclass(nan inf) %i.nje, <16 x float> splat (float 5.000000e-01))
  %i.njl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.njk, <16 x float> nofpclass(nan inf) %i.njf, <16 x float> nofpclass(nan inf) %i.nje)
  %i.njm = fadd fast <16 x float> %i.njl, splat (float 1.000000e+00)
  %i.njn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.njb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.njo = shl <16 x i32> %i.njn, splat (i32 23)
  %i.njp = add <16 x i32> %i.njo, splat (i32 1065353216)
  %i.njq = bitcast <16 x i32> %i.njp to <16 x float>
  %i.njr = fmul fast <16 x float> %i.njm, %i.njq
  %i.njs = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.njr)
  store <16 x bfloat> %i.njs, ptr %.030131.i.i1345, align 1, !tbaa !555
  %i.njt = getelementptr inbounds nuw i8, ptr %.0132.i.i1344, i64 32 ; 2 uses
  %i.nju = getelementptr inbounds nuw i8, ptr %.030131.i.i1345, i64 32 ; 2 uses
  %i.njv = add nuw nsw i32 %.034130.i.i1346, 16   ; 2 uses
  %i.njw = or disjoint i32 %i.njv, 15
  %i.njx = icmp slt i32 %i.njw, %i.lmx
  br i1 %i.njx, label %bb.jj, label %._crit_edge.loopexit.i.i1347, !llvm.loop !300

._crit_edge.loopexit.i.i1347:                     ; preds = %bb.jj
  %i.njy = and i32 %i.lmx, 2147483632
  br label %._crit_edge.i.i1318

._crit_edge.i.i1318:                              ; preds = %._crit_edge.loopexit.i.i1347, %bb.ji
  %.034.lcssa.i77.i1319 = phi i32 [ 0, %bb.ji ], [ %i.njy, %._crit_edge.loopexit.i.i1347 ] ; 3 uses
  %.030.lcssa.i.i1320 = phi ptr [ %2, %bb.ji ], [ %i.nju, %._crit_edge.loopexit.i.i1347 ] ; 2 uses
  %.0.lcssa.i78.i1321 = phi ptr [ %0, %bb.ji ], [ %i.njt, %._crit_edge.loopexit.i.i1347 ] ; 2 uses
  %i.njz = or disjoint i32 %.034.lcssa.i77.i1319, 7
  %i.nka = icmp slt i32 %i.njz, %i.lmx
  br i1 %i.nka, label %.lr.ph139.i.i1339, label %._crit_edge140.i.i1322

.lr.ph139.i.i1339:                                ; preds = %._crit_edge.i.i1318
  %i.nkb = insertelement <8 x float> poison, float %i.nhk, i64 0
  %i.nkc = shufflevector <8 x float> %i.nkb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nkd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nkc, <8 x float> splat (float f0x00800000))
  %i.nke = bitcast <8 x float> %i.nkd to <8 x i32> ; 2 uses
  %i.nkf = lshr <8 x i32> %i.nke, splat (i32 23)
  %i.nkg = and <8 x i32> %i.nke, splat (i32 -2139095041)
  %i.nkh = or disjoint <8 x i32> %i.nkg, splat (i32 1056964608)
  %i.nki = bitcast <8 x i32> %i.nkh to <8 x float> ; 3 uses
  %i.nkj = add nsw <8 x i32> %i.nkf, splat (i32 -127)
  %i.nkk = sitofp fast <8 x i32> %i.nkj to <8 x float> ; 2 uses
  %i.nkl = fadd fast <8 x float> %i.nkk, splat (float 1.000000e+00)
  %i.nkm = fcmp fast olt <8 x float> %i.nki, splat (float f0x3F3504F3) ; 2 uses
  %i.nkn = select <8 x i1> %i.nkm, <8 x float> %i.nki, <8 x float> zeroinitializer
  %i.nko = fadd fast <8 x float> %i.nki, splat (float -1.000000e+00)
  %i.nkp = select fast <8 x i1> %i.nkm, <8 x float> %i.nkk, <8 x float> %i.nkl ; 2 uses
  %i.nkq = fadd fast <8 x float> %i.nko, %i.nkn   ; 12 uses
  %i.nkr = fmul fast <8 x float> %i.nkq, %i.nkq   ; 2 uses
  %i.nks = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nkq, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.nkt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nks, <8 x float> nofpclass(nan inf) %i.nkq, <8 x float> splat (float f0x3DEF251A))
  %i.nku = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nkt, <8 x float> nofpclass(nan inf) %i.nkq, <8 x float> splat (float f0xBDFE5D4F))
  %i.nkv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nku, <8 x float> nofpclass(nan inf) %i.nkq, <8 x float> splat (float f0x3E11E9BF))
  %i.nkw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nkv, <8 x float> nofpclass(nan inf) %i.nkq, <8 x float> splat (float f0xBE2AAE50))
  %i.nkx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nkw, <8 x float> nofpclass(nan inf) %i.nkq, <8 x float> splat (float f0x3E4CCEAC))
  %i.nky = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nkx, <8 x float> nofpclass(nan inf) %i.nkq, <8 x float> splat (float f0xBE7FFFFC))
  %i.nkz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nky, <8 x float> nofpclass(nan inf) %i.nkq, <8 x float> splat (float f0x3EAAAAAA))
  %i.nla = fmul fast <8 x float> %i.nkr, %i.nkq
  %i.nlb = fmul fast <8 x float> %i.nla, %i.nkz
  %i.nlc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nkp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.nlb)
  %i.nld = fneg fast <8 x float> %i.nkr
  %i.nle = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nld, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.nlc)
  %i.nlf = fadd fast <8 x float> %i.nle, %i.nkq
  %i.nlg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nkp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.nlf)
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jk, %.lr.ph139.i.i1339
  %.1137.i.i1340 = phi ptr [ %.0.lcssa.i78.i1321, %.lr.ph139.i.i1339 ], [ %i.nmi, %bb.jk ] ; 2 uses
  %.131136.i.i1341 = phi ptr [ %.030.lcssa.i.i1320, %.lr.ph139.i.i1339 ], [ %i.nmj, %bb.jk ] ; 2 uses
  %.135135.i.i1342 = phi i32 [ %.034.lcssa.i77.i1319, %.lr.ph139.i.i1339 ], [ %i.nmk, %bb.jk ]
  %i.nlh = load <8 x bfloat>, ptr %.1137.i.i1340, align 1, !tbaa !555
  %i.nli = fpext fast <8 x bfloat> %i.nlh to <8 x float>
  %i.nlj = fmul fast <8 x float> %i.nlg, %i.nli
  %i.nlk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.nlj, <8 x float> splat (float f0x42B0C0A5))
  %i.nll = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nlk, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nlm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nll, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.nln = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nlm, i32 1) ; 2 uses
  %i.nlo = fcmp fast ogt <8 x float> %i.nln, %i.nlm
  %i.nlp = select <8 x i1> %i.nlo, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.nlq = fsub fast <8 x float> %i.nln, %i.nlp   ; 2 uses
  %i.nlr = fneg fast <8 x float> %i.nlq           ; 2 uses
  %i.nls = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nlr, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.nll)
  %i.nlt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nlr, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.nls) ; 8 uses
  %i.nlu = fmul fast <8 x float> %i.nlt, %i.nlt
  %i.nlv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nlt, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.nlw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nlv, <8 x float> nofpclass(nan inf) %i.nlt, <8 x float> splat (float f0x3C088908))
  %i.nlx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nlw, <8 x float> nofpclass(nan inf) %i.nlt, <8 x float> splat (float f0x3D2AA9C1))
  %i.nly = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nlx, <8 x float> nofpclass(nan inf) %i.nlt, <8 x float> splat (float f0x3E2AAAAA))
  %i.nlz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nly, <8 x float> nofpclass(nan inf) %i.nlt, <8 x float> splat (float 5.000000e-01))
  %i.nma = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nlz, <8 x float> nofpclass(nan inf) %i.nlu, <8 x float> nofpclass(nan inf) %i.nlt)
  %i.nmb = fadd fast <8 x float> %i.nma, splat (float 1.000000e+00)
  %i.nmc = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nlq)
  %i.nmd = shl <8 x i32> %i.nmc, splat (i32 23)
  %i.nme = add <8 x i32> %i.nmd, splat (i32 1065353216)
  %i.nmf = bitcast <8 x i32> %i.nme to <8 x float>
  %i.nmg = fmul fast <8 x float> %i.nmb, %i.nmf
  %i.nmh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nmg)
  store <8 x bfloat> %i.nmh, ptr %.131136.i.i1341, align 1, !tbaa !555
  %i.nmi = getelementptr inbounds nuw i8, ptr %.1137.i.i1340, i64 16 ; 2 uses
  %i.nmj = getelementptr inbounds nuw i8, ptr %.131136.i.i1341, i64 16 ; 2 uses
  %i.nmk = add nuw nsw i32 %.135135.i.i1342, 8    ; 3 uses
  %i.nml = or disjoint i32 %i.nmk, 7
  %i.nmm = icmp slt i32 %i.nml, %i.lmx
  br i1 %i.nmm, label %bb.jk, label %._crit_edge140.i.i1322, !llvm.loop !301

._crit_edge140.i.i1322:                           ; preds = %bb.jk, %._crit_edge.i.i1318
  %.135.lcssa.i79.i1323 = phi i32 [ %.034.lcssa.i77.i1319, %._crit_edge.i.i1318 ], [ %i.nmk, %bb.jk ] ; 3 uses
  %.131.lcssa.i.i1324 = phi ptr [ %.030.lcssa.i.i1320, %._crit_edge.i.i1318 ], [ %i.nmj, %bb.jk ] ; 2 uses
  %.1.lcssa.i80.i1325 = phi ptr [ %.0.lcssa.i78.i1321, %._crit_edge.i.i1318 ], [ %i.nmi, %bb.jk ] ; 2 uses
  %i.nmn = or disjoint i32 %.135.lcssa.i79.i1323, 3
  %i.nmo = icmp slt i32 %i.nmn, %i.lmx
  br i1 %i.nmo, label %.lr.ph148.i.i1335, label %.preheader.i81.i1326

.lr.ph148.i.i1335:                                ; preds = %._crit_edge140.i.i1322
  %i.nmp = insertelement <4 x float> poison, float %i.nhk, i64 0
  %i.nmq = shufflevector <4 x float> %i.nmp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nmr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nmq, <4 x float> splat (float f0x00800000))
  %i.nms = bitcast <4 x float> %i.nmr to <4 x i32> ; 2 uses
  %i.nmt = lshr <4 x i32> %i.nms, splat (i32 23)
  %i.nmu = and <4 x i32> %i.nms, splat (i32 -2139095041)
  %i.nmv = or disjoint <4 x i32> %i.nmu, splat (i32 1056964608)
  %i.nmw = bitcast <4 x i32> %i.nmv to <4 x float> ; 3 uses
  %i.nmx = add nsw <4 x i32> %i.nmt, splat (i32 -127)
  %i.nmy = sitofp fast <4 x i32> %i.nmx to <4 x float> ; 2 uses
  %i.nmz = fadd fast <4 x float> %i.nmy, splat (float 1.000000e+00)
  %i.nna = fcmp fast olt <4 x float> %i.nmw, splat (float f0x3F3504F3) ; 2 uses
  %i.nnb = select <4 x i1> %i.nna, <4 x float> %i.nmw, <4 x float> zeroinitializer
  %i.nnc = fadd fast <4 x float> %i.nmw, splat (float -1.000000e+00)
  %i.nnd = select fast <4 x i1> %i.nna, <4 x float> %i.nmy, <4 x float> %i.nmz ; 2 uses
  %i.nne = fadd fast <4 x float> %i.nnc, %i.nnb   ; 12 uses
  %i.nnf = fmul fast <4 x float> %i.nne, %i.nne   ; 2 uses
  %i.nng = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nne, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.nnh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nng, <4 x float> nofpclass(nan inf) %i.nne, <4 x float> splat (float f0x3DEF251A))
  %i.nni = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnh, <4 x float> nofpclass(nan inf) %i.nne, <4 x float> splat (float f0xBDFE5D4F))
  %i.nnj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nni, <4 x float> nofpclass(nan inf) %i.nne, <4 x float> splat (float f0x3E11E9BF))
  %i.nnk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnj, <4 x float> nofpclass(nan inf) %i.nne, <4 x float> splat (float f0xBE2AAE50))
  %i.nnl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnk, <4 x float> nofpclass(nan inf) %i.nne, <4 x float> splat (float f0x3E4CCEAC))
  %i.nnm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnl, <4 x float> nofpclass(nan inf) %i.nne, <4 x float> splat (float f0xBE7FFFFC))
  %i.nnn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnm, <4 x float> nofpclass(nan inf) %i.nne, <4 x float> splat (float f0x3EAAAAAA))
  %i.nno = fmul fast <4 x float> %i.nnf, %i.nne
  %i.nnp = fmul fast <4 x float> %i.nno, %i.nnn
  %i.nnq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnd, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.nnp)
  %i.nnr = fneg fast <4 x float> %i.nnf
  %i.nns = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nnr, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.nnq)
  %i.nnt = fadd fast <4 x float> %i.nns, %i.nne
  %i.nnu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nnd, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.nnt)
  br label %bb.jl

.preheader.i81.i1326:                             ; preds = %bb.jl, %._crit_edge140.i.i1322
  %.236.lcssa.i82.i1327 = phi i32 [ %.135.lcssa.i79.i1323, %._crit_edge140.i.i1322 ], [ %i.nsw, %bb.jl ] ; 5 uses
  %.232.lcssa.i.i1328 = phi ptr [ %.131.lcssa.i.i1324, %._crit_edge140.i.i1322 ], [ %i.nsv, %bb.jl ] ; 6 uses
  %.2.lcssa.i83.i1329 = phi ptr [ %.1.lcssa.i80.i1325, %._crit_edge140.i.i1322 ], [ %i.nsu, %bb.jl ] ; 6 uses
  %i.nnv = icmp slt i32 %.236.lcssa.i82.i1327, %i.lmx
  br i1 %i.nnv, label %iter.check7379, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7379:                                   ; preds = %.preheader.i81.i1326
  %.232.lcssa.i.i13287363 = ptrtoaddr ptr %.232.lcssa.i.i1328 to i64
  %.2.lcssa.i83.i13297362 = ptrtoaddr ptr %.2.lcssa.i83.i1329 to i64
  %i.nnw = xor i32 %.236.lcssa.i82.i1327, -1
  %i.nnx = add i32 %i.lmx, %i.nnw                 ; 3 uses
  %i.nny = zext i32 %i.nnx to i64
  %i.nnz = add nuw nsw i64 %i.nny, 1              ; 5 uses
  %min.iters.check7364 = icmp ult i32 %i.nnx, 7
  %i.noa = sub i64 %.2.lcssa.i83.i13297362, %.232.lcssa.i.i13287363
  %diff.check7366 = icmp ugt i64 %i.noa, -64
  %or.cond9212 = select i1 %min.iters.check7364, i1 true, i1 %diff.check7366
  br i1 %or.cond9212, label %.lr.ph155.i.i1330.preheader, label %vector.main.loop.iter.check7367

vector.main.loop.iter.check7367:                  ; preds = %iter.check7379
  %min.iters.check7368 = icmp ult i32 %i.nnx, 31
  br i1 %min.iters.check7368, label %vec.epilog.ph7383, label %vector.ph7369

vector.ph7369:                                    ; preds = %vector.main.loop.iter.check7367
  %i.nob = and i64 %i.nnz, 24
  %n.vec7370 = and i64 %i.nnz, 8589934560         ; 5 uses
  %i.noc = shl nuw nsw i64 %n.vec7370, 1          ; 2 uses
  %i.nod = getelementptr i8, ptr %.2.lcssa.i83.i1329, i64 %i.noc
  %i.noe = getelementptr i8, ptr %.232.lcssa.i.i1328, i64 %i.noc
  %i.nof = trunc i64 %n.vec7370 to i32
  %i.nog = add i32 %.236.lcssa.i82.i1327, %i.nof
  %i.noh = insertelement <16 x float> poison, float %i.nhk, i64 0
  %i.noi = shufflevector <16 x float> %i.noh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.noj = insertelement <8 x float> poison, float %i.nhk, i64 0
  %i.nok = shufflevector <8 x float> %i.noj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nol = insertelement <4 x float> poison, float %i.nhk, i64 0
  %i.nom = shufflevector <4 x float> %i.nol, <4 x float> poison, <4 x i32> zeroinitializer
  %i.non = insertelement <2 x float> poison, float %i.nhk, i64 0
  %i.noo = shufflevector <2 x float> %i.non, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7371

vector.body7371:                                  ; preds = %vector.ph7369, %vector.body7371
  %index7372 = phi i64 [ 0, %vector.ph7369 ], [ %index.next7376, %vector.body7371 ] ; 2 uses
  %i.nop = shl i64 %index7372, 1                  ; 2 uses
  %next.gep7373 = getelementptr i8, ptr %.2.lcssa.i83.i1329, i64 %i.nop
  %next.gep7374 = getelementptr i8, ptr %.232.lcssa.i.i1328, i64 %i.nop
  %wide.load7375 = load <32 x i16>, ptr %next.gep7373, align 2, !tbaa !558
  %i.noq = zext <32 x i16> %wide.load7375 to <32 x i32>
  %i.nor = shl nuw <32 x i32> %i.noq, splat (i32 16)
  %i.nos = bitcast <32 x i32> %i.nor to <32 x float> ; 6 uses
  %i.not = extractelement <32 x float> %i.nos, i64 0
  %i.nou = tail call fast float @llvm.pow.f32(float %i.nhk, float %i.not)
  %i.nov = shufflevector <32 x float> %i.nos, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.now = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.noi, <16 x float> %i.nov)
  %i.nox = shufflevector <32 x float> %i.nos, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.noy = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.nok, <8 x float> %i.nox)
  %i.noz = shufflevector <32 x float> %i.nos, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.npa = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.nom, <4 x float> %i.noz)
  %i.npb = extractelement <32 x float> %i.nos, i64 29
  %i.npc = tail call fast float @llvm.pow.f32(float %i.nhk, float %i.npb)
  %i.npd = shufflevector <32 x float> %i.nos, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.npe = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.noo, <2 x float> %i.npd)
  %i.npf = insertelement <32 x float> poison, float %i.nou, i64 0
  %i.npg = shufflevector <16 x float> %i.now, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nph = shufflevector <32 x float> %i.npf, <32 x float> %i.npg, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.npi = shufflevector <8 x float> %i.noy, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.npj = shufflevector <32 x float> %i.nph, <32 x float> %i.npi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.npk = shufflevector <4 x float> %i.npa, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.npl = shufflevector <32 x float> %i.npj, <32 x float> %i.npk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.npm = insertelement <32 x float> %i.npl, float %i.npc, i64 29
  %i.npn = shufflevector <2 x float> %i.npe, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.npo = shufflevector <32 x float> %i.npm, <32 x float> %i.npn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.npp = bitcast <32 x float> %i.npo to <32 x i32>
  %i.npq = lshr <32 x i32> %i.npp, splat (i32 16)
  %i.npr = trunc nuw <32 x i32> %i.npq to <32 x i16>
  store <32 x i16> %i.npr, ptr %next.gep7374, align 2, !tbaa !558
  %index.next7376 = add nuw i64 %index7372, 32    ; 2 uses
  %i.nps = icmp eq i64 %index.next7376, %n.vec7370
  br i1 %i.nps, label %middle.block7377, label %vector.body7371, !llvm.loop !302

middle.block7377:                                 ; preds = %vector.body7371
  %cmp.n7378 = icmp eq i64 %i.nnz, %n.vec7370
  br i1 %cmp.n7378, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7380

vec.epilog.iter.check7380:                        ; preds = %middle.block7377
  %min.epilog.iters.check7382 = icmp eq i64 %i.nob, 0
  br i1 %min.epilog.iters.check7382, label %.lr.ph155.i.i1330.preheader, label %vec.epilog.ph7383, !prof !561

vec.epilog.ph7383:                                ; preds = %vector.main.loop.iter.check7367, %vec.epilog.iter.check7380
  %vec.epilog.resume.val7384 = phi i64 [ %n.vec7370, %vec.epilog.iter.check7380 ], [ 0, %vector.main.loop.iter.check7367 ]
  %n.vec7385 = and i64 %i.nnz, 8589934584         ; 4 uses
  %i.npt = shl nuw nsw i64 %n.vec7385, 1          ; 2 uses
  %i.npu = getelementptr i8, ptr %.2.lcssa.i83.i1329, i64 %i.npt
  %i.npv = getelementptr i8, ptr %.232.lcssa.i.i1328, i64 %i.npt
  %i.npw = trunc i64 %n.vec7385 to i32
  %i.npx = add i32 %.236.lcssa.i82.i1327, %i.npw
  %i.npy = insertelement <4 x float> poison, float %i.nhk, i64 0
  %i.npz = shufflevector <4 x float> %i.npy, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7386

vec.epilog.vector.body7386:                       ; preds = %vec.epilog.vector.body7386, %vec.epilog.ph7383
  %index7387 = phi i64 [ %vec.epilog.resume.val7384, %vec.epilog.ph7383 ], [ %index.next7391, %vec.epilog.vector.body7386 ] ; 2 uses
  %i.nqa = shl i64 %index7387, 1                  ; 2 uses
  %next.gep7388 = getelementptr i8, ptr %.2.lcssa.i83.i1329, i64 %i.nqa
  %next.gep7389 = getelementptr i8, ptr %.232.lcssa.i.i1328, i64 %i.nqa
  %wide.load7390 = load <8 x i16>, ptr %next.gep7388, align 2, !tbaa !558
  %i.nqb = zext <8 x i16> %wide.load7390 to <8 x i32>
  %i.nqc = shl nuw <8 x i32> %i.nqb, splat (i32 16)
  %i.nqd = bitcast <8 x i32> %i.nqc to <8 x float> ; 5 uses
  %i.nqe = extractelement <8 x float> %i.nqd, i64 0
  %i.nqf = tail call fast float @llvm.pow.f32(float %i.nhk, float %i.nqe)
  %i.nqg = extractelement <8 x float> %i.nqd, i64 1
  %i.nqh = tail call fast float @llvm.pow.f32(float %i.nhk, float %i.nqg)
  %i.nqi = extractelement <8 x float> %i.nqd, i64 2
  %i.nqj = tail call fast float @llvm.pow.f32(float %i.nhk, float %i.nqi)
  %i.nqk = shufflevector <8 x float> %i.nqd, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.nql = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.npz, <4 x float> %i.nqk)
  %i.nqm = extractelement <8 x float> %i.nqd, i64 7
  %i.nqn = tail call fast float @llvm.pow.f32(float %i.nhk, float %i.nqm)
  %i.nqo = insertelement <8 x float> poison, float %i.nqf, i64 0
  %i.nqp = insertelement <8 x float> %i.nqo, float %i.nqh, i64 1
  %i.nqq = insertelement <8 x float> %i.nqp, float %i.nqj, i64 2
  %i.nqr = shufflevector <4 x float> %i.nql, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nqs = shufflevector <8 x float> %i.nqq, <8 x float> %i.nqr, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.nqt = insertelement <8 x float> %i.nqs, float %i.nqn, i64 7
  %i.nqu = bitcast <8 x float> %i.nqt to <8 x i32>
  %i.nqv = lshr <8 x i32> %i.nqu, splat (i32 16)
  %i.nqw = trunc nuw <8 x i32> %i.nqv to <8 x i16>
  store <8 x i16> %i.nqw, ptr %next.gep7389, align 2, !tbaa !558
  %index.next7391 = add nuw i64 %index7387, 8     ; 2 uses
  %i.nqx = icmp eq i64 %index.next7391, %n.vec7385
  br i1 %i.nqx, label %vec.epilog.middle.block7392, label %vec.epilog.vector.body7386, !llvm.loop !303

vec.epilog.middle.block7392:                      ; preds = %vec.epilog.vector.body7386
  %cmp.n7393 = icmp eq i64 %i.nnz, %n.vec7385
  br i1 %cmp.n7393, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph155.i.i1330.preheader

.lr.ph155.i.i1330.preheader:                      ; preds = %iter.check7379, %vec.epilog.iter.check7380, %vec.epilog.middle.block7392
  %.3154.i.i1331.ph = phi ptr [ %.2.lcssa.i83.i1329, %iter.check7379 ], [ %i.nod, %vec.epilog.iter.check7380 ], [ %i.npu, %vec.epilog.middle.block7392 ] ; 3 uses
  %.333153.i.i1332.ph = phi ptr [ %.232.lcssa.i.i1328, %iter.check7379 ], [ %i.noe, %vec.epilog.iter.check7380 ], [ %i.npv, %vec.epilog.middle.block7392 ] ; 3 uses
  %.337152.i.i1333.ph = phi i32 [ %.236.lcssa.i82.i1327, %iter.check7379 ], [ %i.nog, %vec.epilog.iter.check7380 ], [ %i.npx, %vec.epilog.middle.block7392 ] ; 4 uses
  %i.nqy = sub i32 %i.lmx, %.337152.i.i1333.ph
  %.neg11071 = add i32 %.337152.i.i1333.ph, 1
  %xtraiter10477 = and i32 %i.nqy, 1
  %lcmp.mod10478.not = icmp eq i32 %xtraiter10477, 0
  br i1 %lcmp.mod10478.not, label %.lr.ph155.i.i1330.prol.loopexit, label %.lr.ph155.i.i1330.prol

.lr.ph155.i.i1330.prol:                           ; preds = %.lr.ph155.i.i1330.preheader
  %i.nqz = getelementptr inbounds nuw i8, ptr %.3154.i.i1331.ph, i64 2
  %i.nra = load i16, ptr %.3154.i.i1331.ph, align 2, !tbaa !558
  %i.nrb = zext i16 %i.nra to i32
  %i.nrc = shl nuw i32 %i.nrb, 16
  %i.nrd = bitcast i32 %i.nrc to float
  %i.nre = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.nhk, float %i.nrd)
  %i.nrf = bitcast float %i.nre to i32
  %i.nrg = lshr i32 %i.nrf, 16
  %i.nrh = trunc nuw i32 %i.nrg to i16
  %i.nri = getelementptr inbounds nuw i8, ptr %.333153.i.i1332.ph, i64 2
  store i16 %i.nrh, ptr %.333153.i.i1332.ph, align 2, !tbaa !558
  %i.nrj = add nuw nsw i32 %.337152.i.i1333.ph, 1
  br label %.lr.ph155.i.i1330.prol.loopexit

.lr.ph155.i.i1330.prol.loopexit:                  ; preds = %.lr.ph155.i.i1330.prol, %.lr.ph155.i.i1330.preheader
  %.3154.i.i1331.unr = phi ptr [ %.3154.i.i1331.ph, %.lr.ph155.i.i1330.preheader ], [ %i.nqz, %.lr.ph155.i.i1330.prol ]
  %.333153.i.i1332.unr = phi ptr [ %.333153.i.i1332.ph, %.lr.ph155.i.i1330.preheader ], [ %i.nri, %.lr.ph155.i.i1330.prol ]
  %.337152.i.i1333.unr = phi i32 [ %.337152.i.i1333.ph, %.lr.ph155.i.i1330.preheader ], [ %i.nrj, %.lr.ph155.i.i1330.prol ]
  %i.nrk = icmp eq i32 %i.lmx, %.neg11071
  br i1 %i.nrk, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph155.i.i1330

bb.jl:                                            ; preds = %bb.jl, %.lr.ph148.i.i1335
  %.2146.i.i1336 = phi ptr [ %.1.lcssa.i80.i1325, %.lr.ph148.i.i1335 ], [ %i.nsu, %bb.jl ] ; 2 uses
  %.232145.i.i1337 = phi ptr [ %.131.lcssa.i.i1324, %.lr.ph148.i.i1335 ], [ %i.nsv, %bb.jl ] ; 2 uses
  %.236144.i.i1338 = phi i32 [ %.135.lcssa.i79.i1323, %.lr.ph148.i.i1335 ], [ %i.nsw, %bb.jl ]
  %i.nrl = load i64, ptr %.2146.i.i1336, align 1, !tbaa !555
  %i.nrm = insertelement <2 x i64> poison, i64 %i.nrl, i64 0
  %i.nrn = bitcast <2 x i64> %i.nrm to <8 x i16>
  %i.nro = shufflevector <8 x i16> %i.nrn, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.nrp = bitcast <8 x i16> %i.nro to <4 x float>
  %i.nrq = fmul fast <4 x float> %i.nnu, %i.nrp
  %i.nrr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nrq, <4 x float> splat (float f0x42B0C0A5))
  %i.nrs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nrr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nrt = fmul fast <4 x float> %i.nrs, splat (float f0x3FB8AA3B)
  %i.nru = fadd fast <4 x float> %i.nrt, splat (float 5.000000e-01) ; 2 uses
  %i.nrv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nru)
  %i.nrw = sitofp fast <4 x i32> %i.nrv to <4 x float> ; 2 uses
  %i.nrx = fcmp fast olt <4 x float> %i.nru, %i.nrw
  %i.nry = select <4 x i1> %i.nrx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nrz = fsub fast <4 x float> %i.nrw, %i.nry   ; 2 uses
  %i.nsa = fneg fast <4 x float> %i.nrz           ; 2 uses
  %i.nsb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nsa, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.nrs)
  %i.nsc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nsa, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.nsb) ; 8 uses
  %i.nsd = fmul fast <4 x float> %i.nsc, %i.nsc
  %i.nse = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsc, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.nsf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nse, <4 x float> nofpclass(nan inf) %i.nsc, <4 x float> splat (float f0x3C088908))
  %i.nsg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsf, <4 x float> nofpclass(nan inf) %i.nsc, <4 x float> splat (float f0x3D2AA9C1))
  %i.nsh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsg, <4 x float> nofpclass(nan inf) %i.nsc, <4 x float> splat (float f0x3E2AAAAA))
  %i.nsi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsh, <4 x float> nofpclass(nan inf) %i.nsc, <4 x float> splat (float 5.000000e-01))
  %i.nsj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsi, <4 x float> nofpclass(nan inf) %i.nsd, <4 x float> nofpclass(nan inf) %i.nsc)
  %i.nsk = fadd fast <4 x float> %i.nsj, splat (float 1.000000e+00)
  %i.nsl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nrz)
  %i.nsm = shl <4 x i32> %i.nsl, splat (i32 23)
  %i.nsn = add <4 x i32> %i.nsm, splat (i32 1065353216)
  %i.nso = bitcast <4 x i32> %i.nsn to <4 x float>
  %i.nsp = fmul fast <4 x float> %i.nsk, %i.nso
  %i.nsq = shufflevector <4 x float> %i.nsp, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.nsr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nsq)
  %i.nss = bitcast <8 x bfloat> %i.nsr to <2 x i64>
  %i.nst = extractelement <2 x i64> %i.nss, i64 0
  store i64 %i.nst, ptr %.232145.i.i1337, align 1, !tbaa !555
  %i.nsu = getelementptr inbounds nuw i8, ptr %.2146.i.i1336, i64 8 ; 2 uses
  %i.nsv = getelementptr inbounds nuw i8, ptr %.232145.i.i1337, i64 8 ; 2 uses
  %i.nsw = add nuw nsw i32 %.236144.i.i1338, 4    ; 3 uses
  %i.nsx = or disjoint i32 %i.nsw, 3
  %i.nsy = icmp slt i32 %i.nsx, %i.lmx
  br i1 %i.nsy, label %bb.jl, label %.preheader.i81.i1326, !llvm.loop !304

.lr.ph155.i.i1330:                                ; preds = %.lr.ph155.i.i1330.prol.loopexit, %.lr.ph155.i.i1330
  %.3154.i.i1331 = phi ptr [ %i.ntj, %.lr.ph155.i.i1330 ], [ %.3154.i.i1331.unr, %.lr.ph155.i.i1330.prol.loopexit ] ; 3 uses
  %.333153.i.i1332 = phi ptr [ %i.nts, %.lr.ph155.i.i1330 ], [ %.333153.i.i1332.unr, %.lr.ph155.i.i1330.prol.loopexit ] ; 3 uses
  %.337152.i.i1333 = phi i32 [ %i.ntt, %.lr.ph155.i.i1330 ], [ %.337152.i.i1333.unr, %.lr.ph155.i.i1330.prol.loopexit ]
  %i.nsz = getelementptr inbounds nuw i8, ptr %.3154.i.i1331, i64 2
  %i.nta = load i16, ptr %.3154.i.i1331, align 2, !tbaa !558
  %i.ntb = zext i16 %i.nta to i32
  %i.ntc = shl nuw i32 %i.ntb, 16
  %i.ntd = bitcast i32 %i.ntc to float
  %i.nte = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.nhk, float %i.ntd)
  %i.ntf = bitcast float %i.nte to i32
  %i.ntg = lshr i32 %i.ntf, 16
  %i.nth = trunc nuw i32 %i.ntg to i16
  %i.nti = getelementptr inbounds nuw i8, ptr %.333153.i.i1332, i64 2
  store i16 %i.nth, ptr %.333153.i.i1332, align 2, !tbaa !558
  %i.ntj = getelementptr inbounds nuw i8, ptr %.3154.i.i1331, i64 4
  %i.ntk = load i16, ptr %i.nsz, align 2, !tbaa !558
  %i.ntl = zext i16 %i.ntk to i32
  %i.ntm = shl nuw i32 %i.ntl, 16
  %i.ntn = bitcast i32 %i.ntm to float
  %i.nto = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.nhk, float %i.ntn)
  %i.ntp = bitcast float %i.nto to i32
  %i.ntq = lshr i32 %i.ntp, 16
  %i.ntr = trunc nuw i32 %i.ntq to i16
  %i.nts = getelementptr inbounds nuw i8, ptr %.333153.i.i1332, i64 4
  store i16 %i.ntr, ptr %i.nti, align 2, !tbaa !558
  %i.ntt = add nuw nsw i32 %.337152.i.i1333, 2    ; 2 uses
  %exitcond.not.i84.i1334.1 = icmp eq i32 %i.ntt, %i.lmx
  br i1 %exitcond.not.i84.i1334.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph155.i.i1330, !llvm.loop !305

bb.jm:                                            ; preds = %bb.jh
  %i.ntu = icmp eq i32 %3, 1
  br i1 %i.ntu, label %bb.jn, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.jn:                                            ; preds = %bb.jm
  switch i32 %.sroa.speculated.i1301, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %bb.jo
    i32 8, label %bb.jp
    i32 4, label %bb.jq
  ]

bb.jo:                                            ; preds = %bb.jn
  %i.ntv = load <16 x bfloat>, ptr %0, align 1, !tbaa !555
  %i.ntw = fpext fast <16 x bfloat> %i.ntv to <16 x float>
  br label %.lr.ph173.i.i1312

.lr.ph173.i.i1312:                                ; preds = %.lr.ph173.i.i1312, %bb.jo
  %.028172.i.i1313 = phi ptr [ %i.nwg, %.lr.ph173.i.i1312 ], [ %1, %bb.jo ] ; 2 uses
  %.030171.i.i1314 = phi ptr [ %i.nwh, %.lr.ph173.i.i1312 ], [ %2, %bb.jo ] ; 2 uses
  %.033170.i.i1315 = phi i32 [ %i.nwi, %.lr.ph173.i.i1312 ], [ 0, %bb.jo ]
  %i.ntx = load i16, ptr %.028172.i.i1313, align 2, !tbaa !558
  %i.nty = zext i16 %i.ntx to i32
  %i.ntz = shl nuw i32 %i.nty, 16
  %i.nua = insertelement <16 x i32> poison, i32 %i.ntz, i64 0
  %i.nub = bitcast <16 x i32> %i.nua to <16 x float>
  %i.nuc = shufflevector <16 x float> %i.nub, <16 x float> poison, <16 x i32> zeroinitializer
  %i.nud = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.nuc, <16 x float> splat (float f0x00800000), i32 4)
  %i.nue = bitcast <16 x float> %i.nud to <16 x i32> ; 2 uses
  %i.nuf = lshr <16 x i32> %i.nue, splat (i32 23)
  %i.nug = and <16 x i32> %i.nue, splat (i32 -2139095041)
  %i.nuh = or disjoint <16 x i32> %i.nug, splat (i32 1056964608)
  %i.nui = bitcast <16 x i32> %i.nuh to <16 x float> ; 3 uses
  %i.nuj = add nsw <16 x i32> %i.nuf, splat (i32 -127)
  %i.nuk = sitofp fast <16 x i32> %i.nuj to <16 x float> ; 2 uses
  %i.nul = fadd fast <16 x float> %i.nuk, splat (float 1.000000e+00)
  %i.num = fcmp fast olt <16 x float> %i.nui, splat (float f0x3F3504F3) ; 2 uses
  %i.nun = fadd fast <16 x float> %i.nui, splat (float -1.000000e+00)
  %i.nuo = select fast <16 x i1> %i.num, <16 x float> %i.nuk, <16 x float> %i.nul ; 2 uses
  %i.nup = select fast <16 x i1> %i.num, <16 x float> %i.nui, <16 x float> zeroinitializer
  %i.nuq = fadd fast <16 x float> %i.nun, %i.nup  ; 12 uses
  %i.nur = fmul fast <16 x float> %i.nuq, %i.nuq  ; 2 uses
  %i.nus = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuq, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.nut = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nus, <16 x float> nofpclass(nan inf) %i.nuq, <16 x float> splat (float f0x3DEF251A))
  %i.nuu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nut, <16 x float> nofpclass(nan inf) %i.nuq, <16 x float> splat (float f0xBDFE5D4F))
  %i.nuv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuu, <16 x float> nofpclass(nan inf) %i.nuq, <16 x float> splat (float f0x3E11E9BF))
  %i.nuw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuv, <16 x float> nofpclass(nan inf) %i.nuq, <16 x float> splat (float f0xBE2AAE50))
  %i.nux = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuw, <16 x float> nofpclass(nan inf) %i.nuq, <16 x float> splat (float f0x3E4CCEAC))
  %i.nuy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nux, <16 x float> nofpclass(nan inf) %i.nuq, <16 x float> splat (float f0xBE7FFFFC))
  %i.nuz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuy, <16 x float> nofpclass(nan inf) %i.nuq, <16 x float> splat (float f0x3EAAAAAA))
  %i.nva = fmul fast <16 x float> %i.nur, %i.nuq
  %i.nvb = fmul fast <16 x float> %i.nva, %i.nuz
  %i.nvc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuo, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.nvb)
  %i.nvd = fneg fast <16 x float> %i.nur
  %i.nve = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.nvd, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.nvc)
  %i.nvf = fadd fast <16 x float> %i.nve, %i.nuq
  %i.nvg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuo, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.nvf)
  %i.nvh = fmul fast <16 x float> %i.nvg, %i.ntw
  %i.nvi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.nvh, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.nvj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.nvi, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.nvk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nvj, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.nvl = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.nvk, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.nvm = fcmp fast ogt <16 x float> %i.nvl, %i.nvk
  %i.nvn = fadd fast <16 x float> %i.nvl, splat (float -1.000000e+00)
  %i.nvo = select fast <16 x i1> %i.nvm, <16 x float> %i.nvn, <16 x float> %i.nvl ; 2 uses
  %i.nvp = fneg fast <16 x float> %i.nvo          ; 2 uses
  %i.nvq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.nvp, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.nvj)
  %i.nvr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.nvp, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.nvq) ; 8 uses
  %i.nvs = fmul fast <16 x float> %i.nvr, %i.nvr
  %i.nvt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nvr, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.nvu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nvt, <16 x float> nofpclass(nan inf) %i.nvr, <16 x float> splat (float f0x3C088908))
  %i.nvv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nvu, <16 x float> nofpclass(nan inf) %i.nvr, <16 x float> splat (float f0x3D2AA9C1))
  %i.nvw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nvv, <16 x float> nofpclass(nan inf) %i.nvr, <16 x float> splat (float f0x3E2AAAAA))
  %i.nvx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nvw, <16 x float> nofpclass(nan inf) %i.nvr, <16 x float> splat (float 5.000000e-01))
  %i.nvy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nvx, <16 x float> nofpclass(nan inf) %i.nvs, <16 x float> nofpclass(nan inf) %i.nvr)
  %i.nvz = fadd fast <16 x float> %i.nvy, splat (float 1.000000e+00)
  %i.nwa = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.nvo, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.nwb = shl <16 x i32> %i.nwa, splat (i32 23)
  %i.nwc = add <16 x i32> %i.nwb, splat (i32 1065353216)
  %i.nwd = bitcast <16 x i32> %i.nwc to <16 x float>
  %i.nwe = fmul fast <16 x float> %i.nvz, %i.nwd
  %i.nwf = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.nwe)
  store <16 x bfloat> %i.nwf, ptr %.030171.i.i1314, align 1, !tbaa !555
  %i.nwg = getelementptr inbounds nuw i8, ptr %.028172.i.i1313, i64 2
  %i.nwh = getelementptr inbounds nuw i8, ptr %.030171.i.i1314, i64 32
  %i.nwi = add nuw nsw i32 %.033170.i.i1315, 1    ; 2 uses
  %exitcond177.not.i.i1316 = icmp eq i32 %i.nwi, %.sroa.speculated98.i1300
  br i1 %exitcond177.not.i.i1316, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph173.i.i1312, !llvm.loop !306

bb.jp:                                            ; preds = %bb.jn
  %i.nwj = load <8 x bfloat>, ptr %0, align 1, !tbaa !555
  %i.nwk = fpext fast <8 x bfloat> %i.nwj to <8 x float>
  br label %.lr.ph169.i.i1307

.lr.ph169.i.i1307:                                ; preds = %.lr.ph169.i.i1307, %bb.jp
  %.1168.i.i1308 = phi ptr [ %i.nyu, %.lr.ph169.i.i1307 ], [ %1, %bb.jp ] ; 2 uses
  %.029167.i.i1309 = phi i32 [ %i.nyw, %.lr.ph169.i.i1307 ], [ 0, %bb.jp ]
  %.131166.i.i1310 = phi ptr [ %i.nyv, %.lr.ph169.i.i1307 ], [ %2, %bb.jp ] ; 2 uses
  %i.nwl = load i16, ptr %.1168.i.i1308, align 2, !tbaa !558
  %i.nwm = zext i16 %i.nwl to i32
  %i.nwn = shl nuw i32 %i.nwm, 16
  %i.nwo = insertelement <8 x i32> poison, i32 %i.nwn, i64 0
  %i.nwp = bitcast <8 x i32> %i.nwo to <8 x float>
  %i.nwq = shufflevector <8 x float> %i.nwp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nwr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nwq, <8 x float> splat (float f0x00800000))
  %i.nws = bitcast <8 x float> %i.nwr to <8 x i32> ; 2 uses
  %i.nwt = lshr <8 x i32> %i.nws, splat (i32 23)
  %i.nwu = and <8 x i32> %i.nws, splat (i32 -2139095041)
  %i.nwv = or disjoint <8 x i32> %i.nwu, splat (i32 1056964608)
  %i.nww = bitcast <8 x i32> %i.nwv to <8 x float> ; 3 uses
  %i.nwx = add nsw <8 x i32> %i.nwt, splat (i32 -127)
  %i.nwy = sitofp fast <8 x i32> %i.nwx to <8 x float> ; 2 uses
  %i.nwz = fadd fast <8 x float> %i.nwy, splat (float 1.000000e+00)
  %i.nxa = fcmp fast olt <8 x float> %i.nww, splat (float f0x3F3504F3) ; 2 uses
  %i.nxb = select <8 x i1> %i.nxa, <8 x float> %i.nww, <8 x float> zeroinitializer
  %i.nxc = fadd fast <8 x float> %i.nww, splat (float -1.000000e+00)
  %i.nxd = select fast <8 x i1> %i.nxa, <8 x float> %i.nwy, <8 x float> %i.nwz ; 2 uses
  %i.nxe = fadd fast <8 x float> %i.nxc, %i.nxb   ; 12 uses
  %i.nxf = fmul fast <8 x float> %i.nxe, %i.nxe   ; 2 uses
  %i.nxg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nxe, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.nxh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nxg, <8 x float> nofpclass(nan inf) %i.nxe, <8 x float> splat (float f0x3DEF251A))
  %i.nxi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nxh, <8 x float> nofpclass(nan inf) %i.nxe, <8 x float> splat (float f0xBDFE5D4F))
  %i.nxj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nxi, <8 x float> nofpclass(nan inf) %i.nxe, <8 x float> splat (float f0x3E11E9BF))
  %i.nxk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nxj, <8 x float> nofpclass(nan inf) %i.nxe, <8 x float> splat (float f0xBE2AAE50))
  %i.nxl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nxk, <8 x float> nofpclass(nan inf) %i.nxe, <8 x float> splat (float f0x3E4CCEAC))
  %i.nxm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nxl, <8 x float> nofpclass(nan inf) %i.nxe, <8 x float> splat (float f0xBE7FFFFC))
  %i.nxn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nxm, <8 x float> nofpclass(nan inf) %i.nxe, <8 x float> splat (float f0x3EAAAAAA))
  %i.nxo = fmul fast <8 x float> %i.nxf, %i.nxe
  %i.nxp = fmul fast <8 x float> %i.nxo, %i.nxn
  %i.nxq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nxd, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.nxp)
  %i.nxr = fneg fast <8 x float> %i.nxf
  %i.nxs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nxr, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.nxq)
  %i.nxt = fadd fast <8 x float> %i.nxs, %i.nxe
  %i.nxu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nxd, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.nxt)
  %i.nxv = fmul fast <8 x float> %i.nxu, %i.nwk
  %i.nxw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.nxv, <8 x float> splat (float f0x42B0C0A5))
  %i.nxx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nxw, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nxy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nxx, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.nxz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nxy, i32 1) ; 2 uses
  %i.nya = fcmp fast ogt <8 x float> %i.nxz, %i.nxy
  %i.nyb = select <8 x i1> %i.nya, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.nyc = fsub fast <8 x float> %i.nxz, %i.nyb   ; 2 uses
  %i.nyd = fneg fast <8 x float> %i.nyc           ; 2 uses
  %i.nye = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nyd, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.nxx)
  %i.nyf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nyd, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.nye) ; 8 uses
  %i.nyg = fmul fast <8 x float> %i.nyf, %i.nyf
  %i.nyh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nyf, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.nyi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nyh, <8 x float> nofpclass(nan inf) %i.nyf, <8 x float> splat (float f0x3C088908))
  %i.nyj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nyi, <8 x float> nofpclass(nan inf) %i.nyf, <8 x float> splat (float f0x3D2AA9C1))
  %i.nyk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nyj, <8 x float> nofpclass(nan inf) %i.nyf, <8 x float> splat (float f0x3E2AAAAA))
  %i.nyl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nyk, <8 x float> nofpclass(nan inf) %i.nyf, <8 x float> splat (float 5.000000e-01))
  %i.nym = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nyl, <8 x float> nofpclass(nan inf) %i.nyg, <8 x float> nofpclass(nan inf) %i.nyf)
  %i.nyn = fadd fast <8 x float> %i.nym, splat (float 1.000000e+00)
  %i.nyo = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nyc)
  %i.nyp = shl <8 x i32> %i.nyo, splat (i32 23)
  %i.nyq = add <8 x i32> %i.nyp, splat (i32 1065353216)
  %i.nyr = bitcast <8 x i32> %i.nyq to <8 x float>
  %i.nys = fmul fast <8 x float> %i.nyn, %i.nyr
  %i.nyt = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nys)
  store <8 x bfloat> %i.nyt, ptr %.131166.i.i1310, align 1, !tbaa !555
  %i.nyu = getelementptr inbounds nuw i8, ptr %.1168.i.i1308, i64 2
  %i.nyv = getelementptr inbounds nuw i8, ptr %.131166.i.i1310, i64 16
  %i.nyw = add nuw nsw i32 %.029167.i.i1309, 1    ; 2 uses
  %exitcond176.not.i.i1311 = icmp eq i32 %i.nyw, %.sroa.speculated98.i1300
  br i1 %exitcond176.not.i.i1311, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph169.i.i1307, !llvm.loop !307

bb.jq:                                            ; preds = %bb.jn
  %i.nyx = load i64, ptr %0, align 1, !tbaa !555
  %i.nyy = insertelement <2 x i64> poison, i64 %i.nyx, i64 0
  %i.nyz = bitcast <2 x i64> %i.nyy to <8 x i16>
  %i.nza = shufflevector <8 x i16> %i.nyz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.nzb = bitcast <8 x i16> %i.nza to <4 x float>
  br label %.lr.ph.i86.i1302

.lr.ph.i86.i1302:                                 ; preds = %.lr.ph.i86.i1302, %bb.jq
  %.0165.i.i1303 = phi i32 [ %i.obs, %.lr.ph.i86.i1302 ], [ 0, %bb.jq ]
  %.2164.i.i1304 = phi ptr [ %i.obq, %.lr.ph.i86.i1302 ], [ %1, %bb.jq ] ; 2 uses
  %.232163.i.i1305 = phi ptr [ %i.obr, %.lr.ph.i86.i1302 ], [ %2, %bb.jq ] ; 2 uses
  %i.nzc = load i16, ptr %.2164.i.i1304, align 2, !tbaa !558
  %i.nzd = zext i16 %i.nzc to i32
  %i.nze = shl nuw i32 %i.nzd, 16
  %i.nzf = insertelement <4 x i32> poison, i32 %i.nze, i64 0
  %i.nzg = bitcast <4 x i32> %i.nzf to <4 x float>
  %i.nzh = shufflevector <4 x float> %i.nzg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nzi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nzh, <4 x float> splat (float f0x00800000))
  %i.nzj = bitcast <4 x float> %i.nzi to <4 x i32> ; 2 uses
  %i.nzk = lshr <4 x i32> %i.nzj, splat (i32 23)
  %i.nzl = and <4 x i32> %i.nzj, splat (i32 -2139095041)
  %i.nzm = or disjoint <4 x i32> %i.nzl, splat (i32 1056964608)
  %i.nzn = bitcast <4 x i32> %i.nzm to <4 x float> ; 3 uses
  %i.nzo = add nsw <4 x i32> %i.nzk, splat (i32 -127)
  %i.nzp = sitofp fast <4 x i32> %i.nzo to <4 x float> ; 2 uses
  %i.nzq = fadd fast <4 x float> %i.nzp, splat (float 1.000000e+00)
  %i.nzr = fcmp fast olt <4 x float> %i.nzn, splat (float f0x3F3504F3) ; 2 uses
  %i.nzs = select <4 x i1> %i.nzr, <4 x float> %i.nzn, <4 x float> zeroinitializer
  %i.nzt = fadd fast <4 x float> %i.nzn, splat (float -1.000000e+00)
  %i.nzu = select fast <4 x i1> %i.nzr, <4 x float> %i.nzp, <4 x float> %i.nzq ; 2 uses
  %i.nzv = fadd fast <4 x float> %i.nzt, %i.nzs   ; 12 uses
  %i.nzw = fmul fast <4 x float> %i.nzv, %i.nzv   ; 2 uses
  %i.nzx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nzv, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.nzy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nzx, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0x3DEF251A))
  %i.nzz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nzy, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0xBDFE5D4F))
  %i.oaa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nzz, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0x3E11E9BF))
  %i.oab = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oaa, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0xBE2AAE50))
  %i.oac = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oab, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0x3E4CCEAC))
  %i.oad = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oac, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0xBE7FFFFC))
  %i.oae = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oad, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0x3EAAAAAA))
  %i.oaf = fmul fast <4 x float> %i.nzw, %i.nzv
  %i.oag = fmul fast <4 x float> %i.oaf, %i.oae
  %i.oah = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nzu, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.oag)
  %i.oai = fneg fast <4 x float> %i.nzw
  %i.oaj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.oai, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.oah)
  %i.oak = fadd fast <4 x float> %i.oaj, %i.nzv
  %i.oal = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nzu, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.oak)
  %i.oam = fmul fast <4 x float> %i.oal, %i.nzb
  %i.oan = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.oam, <4 x float> splat (float f0x42B0C0A5))
  %i.oao = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oan, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.oap = fmul fast <4 x float> %i.oao, splat (float f0x3FB8AA3B)
  %i.oaq = fadd fast <4 x float> %i.oap, splat (float 5.000000e-01) ; 2 uses
  %i.oar = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oaq)
  %i.oas = sitofp fast <4 x i32> %i.oar to <4 x float> ; 2 uses
  %i.oat = fcmp fast olt <4 x float> %i.oaq, %i.oas
  %i.oau = select <4 x i1> %i.oat, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.oav = fsub fast <4 x float> %i.oas, %i.oau   ; 2 uses
  %i.oaw = fneg fast <4 x float> %i.oav           ; 2 uses
  %i.oax = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.oaw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.oao)
  %i.oay = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.oaw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.oax) ; 8 uses
  %i.oaz = fmul fast <4 x float> %i.oay, %i.oay
  %i.oba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oay, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.obb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oba, <4 x float> nofpclass(nan inf) %i.oay, <4 x float> splat (float f0x3C088908))
  %i.obc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obb, <4 x float> nofpclass(nan inf) %i.oay, <4 x float> splat (float f0x3D2AA9C1))
  %i.obd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obc, <4 x float> nofpclass(nan inf) %i.oay, <4 x float> splat (float f0x3E2AAAAA))
  %i.obe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obd, <4 x float> nofpclass(nan inf) %i.oay, <4 x float> splat (float 5.000000e-01))
  %i.obf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obe, <4 x float> nofpclass(nan inf) %i.oaz, <4 x float> nofpclass(nan inf) %i.oay)
  %i.obg = fadd fast <4 x float> %i.obf, splat (float 1.000000e+00)
  %i.obh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oav)
  %i.obi = shl <4 x i32> %i.obh, splat (i32 23)
  %i.obj = add <4 x i32> %i.obi, splat (i32 1065353216)
  %i.obk = bitcast <4 x i32> %i.obj to <4 x float>
  %i.obl = fmul fast <4 x float> %i.obg, %i.obk
  %i.obm = shufflevector <4 x float> %i.obl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.obn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.obm)
  %i.obo = bitcast <8 x bfloat> %i.obn to <2 x i64>
  %i.obp = extractelement <2 x i64> %i.obo, i64 0
  store i64 %i.obp, ptr %.232163.i.i1305, align 1, !tbaa !555
  %i.obq = getelementptr inbounds nuw i8, ptr %.2164.i.i1304, i64 2
  %i.obr = getelementptr inbounds nuw i8, ptr %.232163.i.i1305, i64 8
  %i.obs = add nuw nsw i32 %.0165.i.i1303, 1      ; 2 uses
  %exitcond.not.i87.i1306 = icmp eq i32 %i.obs, %.sroa.speculated98.i1300
  br i1 %exitcond.not.i87.i1306, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i86.i1302, !llvm.loop !308

bb.jr:                                            ; preds = %bb.a
  %.sroa.speculated102.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 10 uses
  %.sroa.speculated.i1470 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.obt = mul i32 %.sroa.speculated.i1470, %.sroa.speculated102.i ; 48 uses
  %i.obu = icmp eq i32 %5, %6
  br i1 %i.obu, label %bb.js, label %bb.ko

bb.js:                                            ; preds = %bb.jr
  %i.obv = icmp eq i32 %3, %4
  br i1 %i.obv, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.obw = icmp sgt i32 %i.obt, 15
  br i1 %i.obw, label %.lr.ph.i.i1525, label %.preheader133.i.i

.preheader133.loopexit.i.i:                       ; preds = %.lr.ph.i.i1525
  %i.obx = and i32 %i.obt, 2147483632
  br label %.preheader133.i.i

.preheader133.i.i:                                ; preds = %.preheader133.loopexit.i.i, %bb.jt
  %.042.lcssa.i.i1511 = phi ptr [ %2, %bb.jt ], [ %i.ods, %.preheader133.loopexit.i.i ] ; 2 uses
  %.038.lcssa.i.i1512 = phi i32 [ 0, %bb.jt ], [ %i.obx, %.preheader133.loopexit.i.i ] ; 3 uses
  %.034.lcssa.i.i1513 = phi ptr [ %1, %bb.jt ], [ %i.odr, %.preheader133.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i1514 = phi ptr [ %0, %bb.jt ], [ %i.odq, %.preheader133.loopexit.i.i ] ; 2 uses
  %i.oby = or disjoint i32 %.038.lcssa.i.i1512, 7
  %i.obz = icmp slt i32 %i.oby, %i.obt
  br i1 %i.obz, label %.lr.ph145.i.i, label %.preheader132.i.i

.lr.ph.i.i1525:                                   ; preds = %bb.jt, %.lr.ph.i.i1525
  %.0137.i.i = phi ptr [ %i.odq, %.lr.ph.i.i1525 ], [ %0, %bb.jt ] ; 2 uses
  %.034136.i.i = phi ptr [ %i.odr, %.lr.ph.i.i1525 ], [ %1, %bb.jt ] ; 2 uses
  %.038135.i.i = phi i32 [ %i.odt, %.lr.ph.i.i1525 ], [ 0, %bb.jt ]
  %.042134.i.i = phi ptr [ %i.ods, %.lr.ph.i.i1525 ], [ %2, %bb.jt ] ; 2 uses
  %i.oca = load <16 x bfloat>, ptr %.0137.i.i, align 1, !tbaa !555 ; 3 uses
  %i.ocb = fpext fast <16 x bfloat> %i.oca to <16 x float> ; 2 uses
  %i.occ = load <16 x bfloat>, ptr %.034136.i.i, align 1, !tbaa !555 ; 4 uses
  %i.ocd = fpext fast <16 x bfloat> %i.occ to <16 x float>
  %i.oce = fcmp fast one <16 x bfloat> %i.occ, zeroinitializer
  %i.ocf = fcmp fast one <16 x bfloat> %i.oca, zeroinitializer
  %i.ocg = fcmp fast olt <16 x bfloat> %i.occ, zeroinitializer
  %i.och = fcmp fast olt <16 x bfloat> %i.oca, zeroinitializer
  %i.oci = select fast <16 x i1> %i.och, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.ocj = select fast <16 x i1> %i.ocg, <16 x float> %i.oci, <16 x float> zeroinitializer
  %i.ock = fdiv fast <16 x float> %i.ocb, %i.ocd  ; 2 uses
  %i.ocl = bitcast <16 x float> %i.ock to <16 x i32>
  %i.ocm = and <16 x i32> %i.ocl, splat (i32 -2147483648)
  %i.ocn = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.ock) ; 3 uses
  %i.oco = fcmp fast ogt <16 x float> %i.ocn, splat (float 1.000000e+00) ; 2 uses
  %i.ocp = select fast <16 x i1> %i.oco, <16 x float> splat (float -1.000000e+00), <16 x float> %i.ocn
  %i.ocq = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ocn, <16 x float> splat (float 1.000000e+00))
  %i.ocr = fdiv fast <16 x float> %i.ocp, %i.ocq  ; 3 uses
  %i.ocs = fmul fast <16 x float> %i.ocr, %i.ocr  ; 3 uses
  %i.oct = fmul fast <16 x float> %i.ocs, %i.ocs  ; 7 uses
  %i.ocu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.ocv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> nofpclass(nan inf) %i.ocu, <16 x float> splat (float f0xBE117200))
  %i.ocw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> nofpclass(nan inf) %i.ocv, <16 x float> splat (float f0xBEAAAA53))
  %i.ocx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.ocy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> nofpclass(nan inf) %i.ocx, <16 x float> splat (float f0x3DD9ED24))
  %i.ocz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> nofpclass(nan inf) %i.ocy, <16 x float> splat (float f0x3E4CB974))
  %i.oda = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> nofpclass(nan inf) %i.ocz, <16 x float> splat (float 1.000000e+00))
  %i.odb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ocs, <16 x float> nofpclass(nan inf) %i.ocw, <16 x float> nofpclass(nan inf) %i.oda)
  %i.odc = fmul fast <16 x float> %i.odb, %i.ocr
  %i.odd = select fast <16 x i1> %i.oco, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.ode = fadd fast <16 x float> %i.odc, %i.odd
  %i.odf = bitcast <16 x float> %i.ode to <16 x i32>
  %i.odg = or <16 x i32> %i.ocm, %i.odf
  %i.odh = bitcast <16 x i32> %i.odg to <16 x float>
  %i.odi = fadd fast <16 x float> %i.ocj, %i.odh
  %i.odj = bitcast <16 x bfloat> %i.occ to <16 x i16>
  %i.odk = icmp slt <16 x i16> %i.odj, zeroinitializer
  %i.odl = select fast <16 x i1> %i.odk, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.odm = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.ocb)
  %i.odn = select <16 x i1> %i.oce, <16 x float> %i.odi, <16 x float> %i.odm
  %i.odo = select <16 x i1> %i.ocf, <16 x float> %i.odn, <16 x float> %i.odl
  %i.odp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.odo)
  store <16 x bfloat> %i.odp, ptr %.042134.i.i, align 1, !tbaa !555
  %i.odq = getelementptr inbounds nuw i8, ptr %.0137.i.i, i64 32 ; 2 uses
  %i.odr = getelementptr inbounds nuw i8, ptr %.034136.i.i, i64 32 ; 2 uses
  %i.ods = getelementptr inbounds nuw i8, ptr %.042134.i.i, i64 32 ; 2 uses
  %i.odt = add nuw nsw i32 %.038135.i.i, 16       ; 2 uses
  %i.odu = or disjoint i32 %i.odt, 15
  %i.odv = icmp slt i32 %i.odu, %i.obt
  br i1 %i.odv, label %.lr.ph.i.i1525, label %.preheader133.loopexit.i.i, !llvm.loop !309

.preheader132.i.i:                                ; preds = %.lr.ph145.i.i, %.preheader133.i.i
  %.143.lcssa.i.i1515 = phi ptr [ %.042.lcssa.i.i1511, %.preheader133.i.i ], [ %i.oft, %.lr.ph145.i.i ] ; 2 uses
  %.139.lcssa.i.i1516 = phi i32 [ %.038.lcssa.i.i1512, %.preheader133.i.i ], [ %i.ofu, %.lr.ph145.i.i ] ; 3 uses
  %.135.lcssa.i.i1517 = phi ptr [ %.034.lcssa.i.i1513, %.preheader133.i.i ], [ %i.ofs, %.lr.ph145.i.i ] ; 2 uses
  %.1.lcssa.i.i1518 = phi ptr [ %.0.lcssa.i.i1514, %.preheader133.i.i ], [ %i.ofr, %.lr.ph145.i.i ] ; 2 uses
  %i.odw = or disjoint i32 %.139.lcssa.i.i1516, 3
  %i.odx = icmp slt i32 %i.odw, %i.obt
  br i1 %i.odx, label %.lr.ph154.i.i, label %.preheader.i.i1519

.lr.ph145.i.i:                                    ; preds = %.preheader133.i.i, %.lr.ph145.i.i
  %.1144.i.i = phi ptr [ %i.ofr, %.lr.ph145.i.i ], [ %.0.lcssa.i.i1514, %.preheader133.i.i ] ; 2 uses
  %.135143.i.i = phi ptr [ %i.ofs, %.lr.ph145.i.i ], [ %.034.lcssa.i.i1513, %.preheader133.i.i ] ; 2 uses
  %.139142.i.i = phi i32 [ %i.ofu, %.lr.ph145.i.i ], [ %.038.lcssa.i.i1512, %.preheader133.i.i ]
  %.143141.i.i = phi ptr [ %i.oft, %.lr.ph145.i.i ], [ %.042.lcssa.i.i1511, %.preheader133.i.i ] ; 2 uses
  %i.ody = load <8 x bfloat>, ptr %.1144.i.i, align 1, !tbaa !555 ; 3 uses
  %i.odz = fpext fast <8 x bfloat> %i.ody to <8 x float> ; 2 uses
  %i.oea = load <8 x bfloat>, ptr %.135143.i.i, align 1, !tbaa !555 ; 4 uses
  %i.oeb = fpext fast <8 x bfloat> %i.oea to <8 x float>
  %i.oec = fcmp fast ueq <8 x bfloat> %i.oea, zeroinitializer
  %i.oed = fcmp fast ueq <8 x bfloat> %i.ody, zeroinitializer
  %i.oee = bitcast <8 x float> %i.odz to <8 x i32>
  %i.oef = and <8 x i32> %i.oee, splat (i32 -2147483648)
  %i.oeg = fcmp fast olt <8 x bfloat> %i.oea, zeroinitializer
  %i.oeh = fcmp fast olt <8 x bfloat> %i.ody, zeroinitializer
  %i.oei = select <8 x i1> %i.oeh, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.oej = select <8 x i1> %i.oeg, <8 x float> %i.oei, <8 x float> zeroinitializer
  %i.oek = fdiv fast <8 x float> %i.odz, %i.oeb   ; 2 uses
  %i.oel = bitcast <8 x float> %i.oek to <8 x i32>
  %i.oem = and <8 x i32> %i.oel, splat (i32 -2147483648)
  %i.oen = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.oek) ; 3 uses
  %i.oeo = fcmp fast ogt <8 x float> %i.oen, splat (float 1.000000e+00) ; 2 uses
  %i.oep = select <8 x i1> %i.oeo, <8 x float> splat (float -1.000000e+00), <8 x float> %i.oen
  %i.oeq = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.oen, <8 x float> splat (float 1.000000e+00))
  %i.oer = fdiv fast <8 x float> %i.oep, %i.oeq   ; 3 uses
  %i.oes = fmul fast <8 x float> %i.oer, %i.oer   ; 3 uses
  %i.oet = fmul fast <8 x float> %i.oes, %i.oes   ; 7 uses
  %i.oeu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.oev = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) %i.oeu, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.oew = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) %i.oev, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.oex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.oey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) %i.oex, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.oez = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) %i.oey, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.ofa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) %i.oez, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ofb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oes, <8 x float> nofpclass(nan inf) %i.oew, <8 x float> nofpclass(nan inf) %i.ofa)
  %i.ofc = fmul fast <8 x float> %i.ofb, %i.oer
  %i.ofd = select <8 x i1> %i.oeo, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.ofe = fadd fast <8 x float> %i.ofc, %i.ofd
  %i.off = bitcast <8 x float> %i.ofe to <8 x i32>
  %i.ofg = or <8 x i32> %i.oem, %i.off
  %i.ofh = bitcast <8 x i32> %i.ofg to <8 x float>
  %i.ofi = fadd fast <8 x float> %i.oej, %i.ofh
  %i.ofj = bitcast <8 x bfloat> %i.oea to <8 x i16>
  %i.ofk = or disjoint <8 x i32> %i.oef, splat (i32 1070141403)
  %isneg.i.i = icmp sgt <8 x i16> %i.ofj, splat (i16 -1)
  %i.ofl = select <8 x i1> %isneg.i.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.ofm = bitcast <8 x float> %i.ofi to <8 x i32>
  %i.ofn = select <8 x i1> %i.oec, <8 x i32> %i.ofk, <8 x i32> %i.ofm
  %i.ofo = select <8 x i1> %i.oed, <8 x i32> %i.ofl, <8 x i32> %i.ofn
  %i.ofp = bitcast <8 x i32> %i.ofo to <8 x float>
  %i.ofq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ofp)
  store <8 x bfloat> %i.ofq, ptr %.143141.i.i, align 1, !tbaa !555
  %i.ofr = getelementptr inbounds nuw i8, ptr %.1144.i.i, i64 16 ; 2 uses
  %i.ofs = getelementptr inbounds nuw i8, ptr %.135143.i.i, i64 16 ; 2 uses
  %i.oft = getelementptr inbounds nuw i8, ptr %.143141.i.i, i64 16 ; 2 uses
  %i.ofu = add nuw nsw i32 %.139142.i.i, 8        ; 3 uses
  %i.ofv = or disjoint i32 %i.ofu, 7
  %i.ofw = icmp slt i32 %i.ofv, %i.obt
  br i1 %i.ofw, label %.lr.ph145.i.i, label %.preheader132.i.i, !llvm.loop !310

.preheader.i.i1519:                               ; preds = %.lr.ph154.i.i, %.preheader132.i.i
  %.244.lcssa.i.i1520 = phi ptr [ %.143.lcssa.i.i1515, %.preheader132.i.i ], [ %i.okp, %.lr.ph154.i.i ] ; 7 uses
  %.240.lcssa.i.i1521 = phi i32 [ %.139.lcssa.i.i1516, %.preheader132.i.i ], [ %i.okq, %.lr.ph154.i.i ] ; 6 uses
  %.236.lcssa.i.i1522 = phi ptr [ %.135.lcssa.i.i1517, %.preheader132.i.i ], [ %i.oko, %.lr.ph154.i.i ] ; 7 uses
  %.2.lcssa.i.i1523 = phi ptr [ %.1.lcssa.i.i1518, %.preheader132.i.i ], [ %i.okn, %.lr.ph154.i.i ] ; 7 uses
  %.236.lcssa.i.i15227315 = ptrtoaddr ptr %.236.lcssa.i.i1522 to i64
  %.2.lcssa.i.i15237316 = ptrtoaddr ptr %.2.lcssa.i.i1523 to i64
  %.244.lcssa.i.i15207317 = ptrtoaddr ptr %.244.lcssa.i.i1520 to i64 ; 2 uses
  %i.ofx = icmp slt i32 %.240.lcssa.i.i1521, %i.obt
  br i1 %i.ofx, label %iter.check7337, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

end_hunk_1
