Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.ald = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.alc, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ald, ptr %i.ala, align 32, !tbaa !50
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.ko
  %i.alf = getelementptr inbounds nuw i8, ptr %.812481747.us.i, i64 224
  %i.alg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ale, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.alg, ptr %i.alf, align 32, !tbaa !50
  %i.alh = getelementptr inbounds nuw i8, ptr %.812481747.us.i, i64 256 ; 3 uses
  %indvars.iv.next2252.i.3 = add nuw nsw i64 %indvars.iv2251.i, 4 ; 2 uses
  %niter614.next.3 = add i64 %niter614, 4         ; 2 uses
  %niter614.ncmp.3 = icmp eq i64 %niter614.next.3, %unroll_iter613
  br i1 %niter614.ncmp.3, label %._crit_edge1748.us.i.unr-lcssa, label %.preheader1575.us.i.new, !llvm.loop !75

._crit_edge1748.us.i.unr-lcssa:                   ; preds = %.preheader1575.us.i.new
  br i1 %lcmp.mod610.not, label %._crit_edge1748.us.i, label %.epil.preheader607

.epil.preheader607:                               ; preds = %._crit_edge1748.us.i.unr-lcssa, %.preheader1575.us.i
  %indvars.iv2251.i.epil.init = phi i64 [ 0, %.preheader1575.us.i ], [ %indvars.iv.next2252.i.3, %._crit_edge1748.us.i.unr-lcssa ]
  %.812481747.us.i.epil.init = phi ptr [ %.712471751.us.i, %.preheader1575.us.i ], [ %i.alh, %._crit_edge1748.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod612)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.epil.preheader607
  %indvars.iv2251.i.epil = phi i64 [ %indvars.iv2251.i.epil.init, %.epil.preheader607 ], [ %indvars.iv.next2252.i.epil, %bb.bg ] ; 2 uses
  %.812481747.us.i.epil = phi ptr [ %.812481747.us.i.epil.init, %.epil.preheader607 ], [ %i.aln, %bb.bg ] ; 3 uses
  %epil.iter609 = phi i64 [ 0, %.epil.preheader607 ], [ %epil.iter609.next, %bb.bg ]
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %.312231752.us.i, i64 %indvars.iv2251.i.epil ; 2 uses
  %i.alj = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ali, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.alj, ptr %.812481747.us.i.epil, align 32, !tbaa !50
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %i.ko
  %i.all = getelementptr inbounds nuw i8, ptr %.812481747.us.i.epil, i64 32
  %i.alm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.alk, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.alm, ptr %i.all, align 32, !tbaa !50
  %i.aln = getelementptr inbounds nuw i8, ptr %.812481747.us.i.epil, i64 64 ; 2 uses
  %indvars.iv.next2252.i.epil = add nuw nsw i64 %indvars.iv2251.i.epil, 1
  %epil.iter609.next = add i64 %epil.iter609, 1   ; 2 uses
  %epil.iter609.cmp.not = icmp eq i64 %epil.iter609.next, %xtraiter608
  br i1 %epil.iter609.cmp.not, label %._crit_edge1748.us.i, label %bb.bg, !llvm.loop !76

._crit_edge1748.us.i:                             ; preds = %bb.bg, %._crit_edge1748.us.i.unr-lcssa
  %.lcssa566 = phi ptr [ %i.alh, %._crit_edge1748.us.i.unr-lcssa ], [ %i.aln, %bb.bg ] ; 2 uses
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %.312231752.us.i, i64 %i.ks ; 2 uses
  %i.alp = add nuw nsw i32 %.312551750.us.i, 2    ; 3 uses
  %i.alq = or disjoint i32 %i.alp, 1
  %i.alr = icmp slt i32 %i.alq, %i.n
  br i1 %i.alr, label %.preheader1575.us.i, label %.preheader1579.i, !llvm.loop !77

.preheader1579.i:                                 ; preds = %._crit_edge1748.us.i, %.preheader1580.i
  %.31255.lcssa.i = phi i32 [ %.21254.lcssa.i, %.preheader1580.i ], [ %i.alp, %._crit_edge1748.us.i ] ; 2 uses
  %.71247.lcssa.i = phi ptr [ %.41244.lcssa.i, %.preheader1580.i ], [ %.lcssa566, %._crit_edge1748.us.i ]
  %.31223.lcssa.i = phi ptr [ %.21222.lcssa.i, %.preheader1580.i ], [ %i.alo, %._crit_edge1748.us.i ] ; 9 uses
  %i.als = icmp sge i32 %.31255.lcssa.i, %i.n
  %brmerge1998.i = or i1 %i.kt, %i.als
  br i1 %brmerge1998.i, label %._crit_edge1765.split.i, label %.preheader1574.i

.preheader1574.i:                                 ; preds = %.preheader1579.i, %._crit_edge1761.i
  %.1012501764.i = phi ptr [ %.lcssa569, %._crit_edge1761.i ], [ %.71247.lcssa.i, %.preheader1579.i ] ; 2 uses
  %.412561763.i = phi i32 [ %i.alw, %._crit_edge1761.i ], [ %.31255.lcssa.i, %.preheader1579.i ]
  br i1 %i.lm, label %.epil.preheader615, label %.preheader1574.i.new

._crit_edge1761.i.unr-lcssa:                      ; preds = %.preheader1574.i.new
  br i1 %lcmp.mod618.not, label %._crit_edge1761.i, label %.epil.preheader615

.epil.preheader615:                               ; preds = %._crit_edge1761.i.unr-lcssa, %.preheader1574.i
  %indvars.iv2256.i.epil.init = phi i64 [ 0, %.preheader1574.i ], [ %indvars.iv.next2257.i.7, %._crit_edge1761.i.unr-lcssa ]
  %.1112511760.i.epil.init = phi ptr [ %.1012501764.i, %.preheader1574.i ], [ %i.anb, %._crit_edge1761.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod620)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader615
  %indvars.iv2256.i.epil = phi i64 [ %indvars.iv2256.i.epil.init, %.epil.preheader615 ], [ %indvars.iv.next2257.i.epil, %bb.bh ] ; 2 uses
  %.1112511760.i.epil = phi ptr [ %.1112511760.i.epil.init, %.epil.preheader615 ], [ %i.alv, %bb.bh ] ; 2 uses
  %epil.iter617 = phi i64 [ 0, %.epil.preheader615 ], [ %epil.iter617.next, %bb.bh ]
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i.epil
  %i.alu = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.alt, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.alu, ptr %.1112511760.i.epil, align 32, !tbaa !50
  %i.alv = getelementptr inbounds nuw i8, ptr %.1112511760.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2257.i.epil = add nuw nsw i64 %indvars.iv2256.i.epil, 1
  %epil.iter617.next = add i64 %epil.iter617, 1   ; 2 uses
  %epil.iter617.cmp.not = icmp eq i64 %epil.iter617.next, %xtraiter616
  br i1 %epil.iter617.cmp.not, label %._crit_edge1761.i, label %bb.bh, !llvm.loop !78

._crit_edge1761.i:                                ; preds = %bb.bh, %._crit_edge1761.i.unr-lcssa
  %.lcssa569 = phi ptr [ %i.anb, %._crit_edge1761.i.unr-lcssa ], [ %i.alv, %bb.bh ]
  %i.alw = add nuw nsw i32 %.412561763.i, 1       ; 2 uses
  %exitcond2261.not.i = icmp eq i32 %i.alw, %i.n
  br i1 %exitcond2261.not.i, label %._crit_edge1765.split.i, label %.preheader1574.i, !llvm.loop !79

.preheader1574.i.new:                             ; preds = %.preheader1574.i, %.preheader1574.i.new
  %indvars.iv2256.i = phi i64 [ %indvars.iv.next2257.i.7, %.preheader1574.i.new ], [ 0, %.preheader1574.i ] ; 9 uses
  %.1112511760.i = phi ptr [ %i.anb, %.preheader1574.i.new ], [ %.1012501764.i, %.preheader1574.i ] ; 9 uses
  %niter622 = phi i64 [ %niter622.next.7, %.preheader1574.i.new ], [ 0, %.preheader1574.i ]
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.aly = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.alx, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.aly, ptr %.1112511760.i, align 32, !tbaa !50
  %i.alz = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 32
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 4
  %i.amc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amb, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amc, ptr %i.alz, align 32, !tbaa !50
  %i.amd = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 64
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 8
  %i.amg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amf, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amg, ptr %i.amd, align 32, !tbaa !50
  %i.amh = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 96
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 12
  %i.amk = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amj, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amk, ptr %i.amh, align 32, !tbaa !50
  %i.aml = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 128
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 16
  %i.amo = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amn, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amo, ptr %i.aml, align 32, !tbaa !50
  %i.amp = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 160
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 20
  %i.ams = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amr, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ams, ptr %i.amp, align 32, !tbaa !50
  %i.amt = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 192
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 24
  %i.amw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amv, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amw, ptr %i.amt, align 32, !tbaa !50
  %i.amx = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 224
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 28
  %i.ana = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amz, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ana, ptr %i.amx, align 32, !tbaa !50
  %i.anb = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 256 ; 3 uses
  %indvars.iv.next2257.i.7 = add nuw nsw i64 %indvars.iv2256.i, 8 ; 2 uses
  %niter622.next.7 = add i64 %niter622, 8         ; 2 uses
  %niter622.ncmp.7 = icmp eq i64 %niter622.next.7, %unroll_iter621
  br i1 %niter622.ncmp.7, label %._crit_edge1761.i.unr-lcssa, label %.preheader1574.i.new, !llvm.loop !80

._crit_edge1765.split.i:                          ; preds = %._crit_edge1761.i, %.preheader1579.i, %.preheader1575.lr.ph.i, %.preheader1576.lr.ph.i
  %indvars.iv.next2265.i = add nuw nsw i64 %indvars.iv2264.i, 8 ; 3 uses
  %i.anc = icmp slt i64 %indvars.iv.next2265.i, %invariant.op.i
  %indvars.iv.next2206.i = add i32 %indvars.iv2205.i, %i.la
  %indvars.iv.next2263.i = add i32 %indvars.iv2262.i, 8
  br i1 %i.anc, label %_ZN4ncnn3MatD2Ev.exit1327.i, label %.preheader1573.loopexit.i, !llvm.loop !81

.preheader1564.loopexit.i:                        ; preds = %._crit_edge1851.split.i
  %i.and = trunc nsw i64 %indvars.iv.next2317.i to i32
  br label %.preheader1564.i

.preheader1564.i:                                 ; preds = %.preheader1564.loopexit.i, %.preheader1573.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1573.i ], [ %i.and, %.preheader1564.loopexit.i ] ; 4 uses
  %i.ane = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.anf = icmp slt i32 %i.ane, %i.m
  br i1 %i.anf, label %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i, label %.preheader1554.i

_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i:                ; preds = %.preheader1564.i
  %i.ang = mul i32 %i.n, %i.j                     ; 5 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.anj = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.ank = shufflevector <4 x i32> %i.anj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anl = mul <4 x i32> %i.ank, <i32 0, i32 1, i32 2, i32 3> ; 10 uses
  %i.anm = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.ann = shufflevector <8 x i32> %i.anm, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ano = mul <8 x i32> %i.ann, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 10 uses
  %i.anp = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.anq = shufflevector <16 x i32> %i.anp, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.anr = mul <16 x i32> %i.anq, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 10 uses
  %i.ans = icmp sgt i32 %i.n, 15
  %i.ant = icmp sgt i32 %i.j, 0                   ; 4 uses
  %i.anu = shl i32 %i.j, 4
  %i.anv = sext i32 %i.anu to i64                 ; 3 uses
  %i.anw = shl i32 %i.j, 3
  %i.anx = sext i32 %i.anw to i64                 ; 3 uses
  %i.any = shl i32 %i.j, 2
  %i.anz = sext i32 %i.any to i64                 ; 2 uses
  %i.aoa = sext i32 %i.j to i64                   ; 11 uses
  %i.aob = shl i32 %i.j, 1                        ; 2 uses
  %i.aoc = sext i32 %i.aob to i64                 ; 3 uses
  %i.aod = icmp slt i32 %i.j, 1
  %i.aoe = add i32 %i.n, -16                      ; 2 uses
  %i.aof = lshr i32 %i.aoe, 2
  %i.aog = and i32 %i.aof, 1073741820
  %narrow2442.i = add nuw nsw i32 %i.aog, 4
  %i.aoh = zext nneg i32 %narrow2442.i to i64
  %i.aoi = mul nsw i64 %i.aoh, %i.anv
  %i.aoj = mul i32 %i.ang, %.2.lcssa.i
  %i.aok = shl i32 %i.ang, 1                      ; 2 uses
  %i.aol = mul i32 %i.ane, %i.ang
  %i.aom = and i32 %i.aoe, -16
  %i.aon = add i32 %i.aom, 16                     ; 4 uses
  %i.aoo = add i32 %i.n, -8
  %i.aop = sext i32 %.2.lcssa.i to i64
  %i.aoq = sext i32 %i.m to i64
  %i.aor = or disjoint i32 %i.aon, 7
  %i.aos = icmp slt i32 %i.aor, %i.n
  %wide.trip.count2329.i = zext i32 %i.j to i64   ; 26 uses
  %i.aot = shl nuw nsw i64 %wide.trip.count2329.i, 3
  %i.aou = shl nuw nsw i64 %wide.trip.count2329.i, 2 ; 5 uses
  %i.aov = shl nuw nsw i64 %wide.trip.count2329.i, 4
  %i.aow = shl nuw nsw i64 %i.aoa, 2              ; 3 uses
  %i.aox = add nuw nsw i64 %i.aow, %i.aou         ; 2 uses
  %i.aoy = shl nsw i64 %i.aoc, 2
  %2 = add i32 %i.n, -2
  %i.aoz = add nsw i64 %wide.trip.count2329.i, -1 ; 3 uses
  %xtraiter640 = and i64 %wide.trip.count2329.i, 3 ; 3 uses
  %i.apa = icmp ult i64 %i.aoz, 3
  %unroll_iter645 = and i64 %wide.trip.count2329.i, 2147483644
  %lcmp.mod642.not = icmp eq i64 %xtraiter640, 0
  %lcmp.mod644 = icmp ne i64 %xtraiter640, 0
  %xtraiter648 = and i64 %wide.trip.count2329.i, 3 ; 3 uses
  %i.apb = icmp ult i64 %i.aoz, 3
  %unroll_iter653 = and i64 %wide.trip.count2329.i, 2147483644
  %lcmp.mod650.not = icmp eq i64 %xtraiter648, 0
  %lcmp.mod652 = icmp ne i64 %xtraiter648, 0
  %xtraiter656 = and i64 %wide.trip.count2329.i, 3 ; 3 uses
  %i.apc = icmp ult i64 %i.aoz, 3
  %unroll_iter661 = and i64 %wide.trip.count2329.i, 2147483644
  %lcmp.mod658.not = icmp eq i64 %xtraiter656, 0
  %lcmp.mod660 = icmp ne i64 %xtraiter656, 0
  %min.iters.check373 = icmp ult i32 %i.j, 4
  %stride.check361 = icmp slt i32 %i.aob, 0
  %min.iters.check375 = icmp ult i32 %i.j, 16
  %i.apd = and i64 %wide.trip.count2329.i, 12
  %n.vec377 = and i64 %wide.trip.count2329.i, 2147483632 ; 5 uses
  %i.ape = shl nuw nsw i64 %n.vec377, 4
  %cmp.n388 = icmp eq i64 %n.vec377, %wide.trip.count2329.i
  %min.epilog.iters.check393 = icmp eq i64 %i.apd, 0
  %n.vec395 = and i64 %wide.trip.count2329.i, 2147483644 ; 4 uses
  %i.apf = shl nuw nsw i64 %n.vec395, 4
  %cmp.n406 = icmp eq i64 %n.vec395, %wide.trip.count2329.i
  %xtraiter663 = and i64 %wide.trip.count2329.i, 1
  %lcmp.mod664.not = icmp eq i64 %xtraiter663, 0
  %i.apg = add nsw i64 %wide.trip.count2329.i, -1
  %min.iters.check = icmp ult i32 %i.j, 4
  %min.iters.check331 = icmp ult i32 %i.j, 16
  %i.aph = and i64 %wide.trip.count2329.i, 12
  %n.vec = and i64 %wide.trip.count2329.i, 2147483632 ; 5 uses
  %i.api = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2329.i
  %min.epilog.iters.check = icmp eq i64 %i.aph, 0
  %n.vec333 = and i64 %wide.trip.count2329.i, 2147483644 ; 4 uses
  %i.apj = shl nuw nsw i64 %n.vec333, 3
  %cmp.n340 = icmp eq i64 %n.vec333, %wide.trip.count2329.i
  %xtraiter665 = and i64 %wide.trip.count2329.i, 3 ; 2 uses
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  br label %_ZN4ncnn3MatD2Ev.exit1325.i

_ZN4ncnn3MatD2Ev.exit1326.i:                      ; preds = %._crit_edge1851.split.i, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i
  %indvars.iv2316.i = phi i64 [ %i.abg, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i ], [ %indvars.iv.next2317.i, %._crit_edge1851.split.i ] ; 2 uses
  %i.apk = phi i32 [ %i.zn, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i ], [ %i.axp, %._crit_edge1851.split.i ]
  %i.apl = phi <4 x i32> [ %i.abc, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i ], [ %i.axo, %._crit_edge1851.split.i ] ; 2 uses
  %i.apm = sext <4 x i32> %i.apl to <4 x i64>
  %i.apn = shl nsw <4 x i64> %i.apm, splat (i64 2) ; 4 uses
  %i.apo = load ptr, ptr %i.o, align 8, !tbaa !18 ; 5 uses
  %i.app = trunc i64 %indvars.iv2316.i to i32     ; 6 uses
  %i.apq = mul i32 %i.zs, %i.app
  %i.apr = sext i32 %i.apq to i64
  %i.aps = getelementptr inbounds [4 x i8], ptr %i.apo, i64 %i.apr ; 2 uses
  %i.apt = add i32 %i.app, 1
  %i.apu = mul i32 %i.apt, %i.zs
  %i.apv = sext i32 %i.apu to i64
  %i.apw = getelementptr inbounds [4 x i8], ptr %i.apo, i64 %i.apv ; 2 uses
  %i.apx = add i32 %i.app, 2
  %i.apy = mul i32 %i.apx, %i.zs
  %i.apz = sext i32 %i.apy to i64
  %i.aqa = getelementptr inbounds [4 x i8], ptr %i.apo, i64 %i.apz ; 2 uses
  %i.aqb = mul i32 %i.apk, %i.zs
  %i.aqc = sext i32 %i.aqb to i64
  %i.aqd = getelementptr inbounds [4 x i8], ptr %i.apo, i64 %i.aqc ; 2 uses
  %i.aqe = lshr i32 %i.app, 4
  %i.aqf = lshr i32 %i.app, 3
  %i.aqg = and i32 %i.aqf, 1
  %i.aqh = add nuw nsw i32 %i.aqg, %i.aqe
  %i.aqi = lshr i32 %i.app, 2
  %i.aqj = and i32 %i.aqi, 1
  %i.aqk = add nuw nsw i32 %i.aqh, %i.aqj
  %i.aql = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !82
  %i.aqm = load i64, ptr %i.zt, align 8, !tbaa !20, !noalias !82
  %i.aqn = zext nneg i32 %i.aqk to i64
  %i.aqo = mul i64 %i.aqm, %i.aqn
  %i.aqp = load i64, ptr %i.zu, align 8, !tbaa !49, !noalias !82
  %i.aqq = mul i64 %i.aqo, %i.aqp
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aql, i64 %i.aqq ; 4 uses
  br i1 %i.aae, label %.preheader1569.lr.ph.i, label %.preheader1572.i

.preheader1569.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1326.i
  br i1 %i.aaf, label %.preheader1569.us.i, label %.preheader1572.thread.i

.preheader1569.us.i:                              ; preds = %.preheader1569.lr.ph.i, %._crit_edge1770.us.i
  %.012581777.us.i = phi i32 [ %i.aru, %._crit_edge1770.us.i ], [ 0, %.preheader1569.lr.ph.i ]
  %.012631776.us.i = phi ptr [ %i.arp, %._crit_edge1770.us.i ], [ %i.aqr, %.preheader1569.lr.ph.i ]
  %.012741775.us.i = phi ptr [ %i.art, %._crit_edge1770.us.i ], [ %i.aqd, %.preheader1569.lr.ph.i ] ; 2 uses
  %.012771774.us.i = phi ptr [ %i.ars, %._crit_edge1770.us.i ], [ %i.aqa, %.preheader1569.lr.ph.i ] ; 2 uses
  %.012801773.us.i = phi ptr [ %i.arr, %._crit_edge1770.us.i ], [ %i.apw, %.preheader1569.lr.ph.i ] ; 2 uses
  %.012831772.us.i = phi ptr [ %i.arq, %._crit_edge1770.us.i ], [ %i.aps, %.preheader1569.lr.ph.i ] ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.preheader1569.us.i
  %indvars.iv2282.i = phi i64 [ 0, %.preheader1569.us.i ], [ %indvars.iv.next2283.i, %bb.bi ] ; 5 uses
  %.112641768.us.i = phi ptr [ %.012631776.us.i, %.preheader1569.us.i ], [ %i.arp, %bb.bi ] ; 5 uses
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %.012831772.us.i, i64 %indvars.iv2282.i
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %.012801773.us.i, i64 %indvars.iv2282.i
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %.012771774.us.i, i64 %indvars.iv2282.i
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %.012741775.us.i, i64 %indvars.iv2282.i
  %i.aqw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqs, <16 x i32> %i.aad, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqt, <16 x i32> %i.aad, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqu, <16 x i32> %i.aad, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqv, <16 x i32> %i.aad, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ara = shufflevector <16 x float> %i.aqw, <16 x float> %i.aqx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.arb = shufflevector <16 x float> %i.aqw, <16 x float> %i.aqx, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.arc = shufflevector <16 x float> %i.aqy, <16 x float> %i.aqz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ard = shufflevector <16 x float> %i.aqy, <16 x float> %i.aqz, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.are = shufflevector <16 x float> %i.ara, <16 x float> %i.arc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.arf = shufflevector <16 x float> %i.arb, <16 x float> %i.ard, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.arg = shufflevector <16 x float> %i.ara, <16 x float> %i.arc, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.arh = shufflevector <16 x float> %i.arb, <16 x float> %i.ard, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ari = shufflevector <16 x float> %i.are, <16 x float> %i.arf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.arj = shufflevector <16 x float> %i.arg, <16 x float> %i.arh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ark = shufflevector <16 x float> %i.are, <16 x float> %i.arf, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.arl = shufflevector <16 x float> %i.arg, <16 x float> %i.arh, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %i.ari, ptr %.112641768.us.i, align 1, !tbaa !50
  %i.arm = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 64
  store <16 x float> %i.arj, ptr %i.arm, align 1, !tbaa !50
  %i.arn = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 128
  store <16 x float> %i.ark, ptr %i.arn, align 1, !tbaa !50
  %i.aro = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 192
  store <16 x float> %i.arl, ptr %i.aro, align 1, !tbaa !50
  %i.arp = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 256 ; 3 uses
  %indvars.iv.next2283.i = add nuw nsw i64 %indvars.iv2282.i, 1 ; 2 uses
  %exitcond2286.not.i = icmp eq i64 %indvars.iv.next2283.i, %wide.trip.count2285.i
  br i1 %exitcond2286.not.i, label %._crit_edge1770.us.i, label %bb.bi, !llvm.loop !85

._crit_edge1770.us.i:                             ; preds = %bb.bi
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %.012831772.us.i, i64 %i.aah ; 2 uses
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %.012801773.us.i, i64 %i.aah ; 2 uses
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %.012771774.us.i, i64 %i.aah ; 2 uses
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %.012741775.us.i, i64 %i.aah ; 2 uses
  %i.aru = add nuw nsw i32 %.012581777.us.i, 16   ; 2 uses
  %i.arv = or disjoint i32 %i.aru, 15
  %i.arw = icmp slt i32 %i.arv, %i.n
  br i1 %i.arw, label %.preheader1569.us.i, label %.preheader1572.i, !llvm.loop !86

.preheader1572.i:                                 ; preds = %._crit_edge1770.us.i, %_ZN4ncnn3MatD2Ev.exit1326.i
  %.01283.lcssa.i = phi ptr [ %i.aps, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.arq, %._crit_edge1770.us.i ] ; 3 uses
  %.01280.lcssa.i = phi ptr [ %i.apw, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.arr, %._crit_edge1770.us.i ] ; 3 uses
  %.01277.lcssa.i = phi ptr [ %i.aqa, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.ars, %._crit_edge1770.us.i ] ; 3 uses
  %.01274.lcssa.i = phi ptr [ %i.aqd, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.art, %._crit_edge1770.us.i ] ; 3 uses
  %.01263.lcssa.i = phi ptr [ %i.aqr, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.arp, %._crit_edge1770.us.i ] ; 3 uses
  %.01258.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.abe, %._crit_edge1770.us.i ] ; 4 uses
  %i.arx = or disjoint i32 %.01258.lcssa.i, 7
  %i.ary = icmp slt i32 %i.arx, %i.n
  br i1 %i.ary, label %.preheader1568.lr.ph.i, label %.preheader1571.i

.preheader1572.thread.i:                          ; preds = %.preheader1569.lr.ph.i
  %scevgep2269.i.a = getelementptr i8, ptr %i.apo, i64 %i.aax ; 4 uses
  %i.arz = extractelement <4 x i64> %i.apn, i64 0
  %scevgep2272.i.a = getelementptr i8, ptr %scevgep2269.i.a, i64 %i.arz ; 2 uses
  %i.asa = extractelement <4 x i64> %i.apn, i64 1
  %scevgep2275.i.a = getelementptr i8, ptr %scevgep2269.i.a, i64 %i.asa ; 2 uses
  %i.asb = extractelement <4 x i64> %i.apn, i64 2
  %scevgep2278.i.a = getelementptr i8, ptr %scevgep2269.i.a, i64 %i.asb ; 2 uses
  %i.asc = extractelement <4 x i64> %i.apn, i64 3
  %scevgep2281.i = getelementptr i8, ptr %scevgep2269.i.a, i64 %i.asc ; 2 uses
  br i1 %i.abj, label %.preheader1568.preheader.i, label %.preheader1571.i

.preheader1568.lr.ph.i:                           ; preds = %.preheader1572.i
  br i1 %i.aaf, label %.preheader1568.us.i, label %.preheader1568.preheader.i

.preheader1568.preheader.i:                       ; preds = %.preheader1568.lr.ph.i, %.preheader1572.thread.i
  %.01283.lcssa25292546.i = phi ptr [ %.01283.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2272.i.a, %.preheader1572.thread.i ]
  %.01280.lcssa25302545.i = phi ptr [ %.01280.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2275.i.a, %.preheader1572.thread.i ]
  %.01277.lcssa25312544.i = phi ptr [ %.01277.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2278.i.a, %.preheader1572.thread.i ]
  %.01274.lcssa25322543.i = phi ptr [ %.01274.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2281.i, %.preheader1572.thread.i ]
  %.01263.lcssa25332542.i = phi ptr [ %.01263.lcssa.i, %.preheader1568.lr.ph.i ], [ %i.aqr, %.preheader1572.thread.i ]
  %.01258.lcssa25342541.i = phi i32 [ %.01258.lcssa.i, %.preheader1568.lr.ph.i ], [ %i.abe, %.preheader1572.thread.i ] ; 2 uses
  %i.asd = sub i32 %i.abf, %.01258.lcssa25342541.i ; 2 uses
  %i.ase = lshr i32 %i.asd, 1
  %i.asf = and i32 %i.ase, 2147483644
  %narrow2441.i = add nuw i32 %i.asf, 4
  %i.asg = zext i32 %narrow2441.i to i64
  %i.ash = mul nsw i64 %i.asg, %i.aaj             ; 4 uses
  %scevgep2287.i.a = getelementptr i8, ptr %.01283.lcssa25292546.i, i64 %i.ash
  %scevgep2288.i = getelementptr i8, ptr %.01280.lcssa25302545.i, i64 %i.ash
  %scevgep2289.i = getelementptr i8, ptr %.01277.lcssa25312544.i, i64 %i.ash
  %scevgep2290.i = getelementptr i8, ptr %.01274.lcssa25322543.i, i64 %i.ash
  %i.asi = add i32 %.01258.lcssa25342541.i, 8
  %i.asj = and i32 %i.asd, -8
  %i.ask = add i32 %i.asi, %i.asj
  br label %.preheader1571.i

.preheader1568.us.i:                              ; preds = %.preheader1568.lr.ph.i, %._crit_edge1792.us.i
  %.112591799.us.i = phi i32 [ %i.atj, %._crit_edge1792.us.i ], [ %.01258.lcssa.i, %.preheader1568.lr.ph.i ]
  %.212651798.us.i = phi ptr [ %i.ate, %._crit_edge1792.us.i ], [ %.01263.lcssa.i, %.preheader1568.lr.ph.i ]
  %.112751797.us.i = phi ptr [ %i.ati, %._crit_edge1792.us.i ], [ %.01274.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  %.112781796.us.i = phi ptr [ %i.ath, %._crit_edge1792.us.i ], [ %.01277.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  %.112811795.us.i = phi ptr [ %i.atg, %._crit_edge1792.us.i ], [ %.01280.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  %.112841794.us.i = phi ptr [ %i.atf, %._crit_edge1792.us.i ], [ %.01283.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.preheader1568.us.i
  %indvars.iv2291.i = phi i64 [ 0, %.preheader1568.us.i ], [ %indvars.iv.next2292.i, %bb.bj ] ; 5 uses
  %.312661790.us.i = phi ptr [ %.212651798.us.i, %.preheader1568.us.i ], [ %i.ate, %bb.bj ] ; 5 uses
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %.112841794.us.i, i64 %indvars.iv2291.i
end_hunk_0
begin_hunk_1_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  store <4 x float> %i.avj, ptr %i.avi, align 16, !tbaa !50
  %i.avk = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 96
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %indvars.iv2305.i.a
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 12 ; 2 uses
  %i.avn = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.avm, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avn, ptr %i.avk, align 16, !tbaa !50
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.avm, i64 %i.aap
  %i.avp = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 112
  %i.avq = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.avo, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avq, ptr %i.avp, align 16, !tbaa !50
  %i.avr = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 128 ; 3 uses
  %indvars.iv.next2306.i.3 = add nuw nsw i64 %indvars.iv2305.i.a, 4 ; 2 uses
  %niter630.next.3 = add i64 %niter630, 4         ; 2 uses
  %niter630.ncmp.3 = icmp eq i64 %niter630.next.3, %unroll_iter629
  br i1 %niter630.ncmp.3, label %._crit_edge1834.us.i.unr-lcssa, label %.preheader1566.us.i.new, !llvm.loop !91

._crit_edge1834.us.i.unr-lcssa:                   ; preds = %.preheader1566.us.i.new
  br i1 %lcmp.mod626.not, label %._crit_edge1834.us.i, label %.epil.preheader623

.epil.preheader623:                               ; preds = %._crit_edge1834.us.i.unr-lcssa, %.preheader1566.us.i
  %indvars.iv2305.i.epil.init.a = phi i64 [ 0, %.preheader1566.us.i ], [ %indvars.iv.next2306.i.3, %._crit_edge1834.us.i.unr-lcssa ]
  %.712701832.us.i.epil.init = phi ptr [ %.612691837.us.i, %.preheader1566.us.i ], [ %i.avr, %._crit_edge1834.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod628)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.epil.preheader623
  %indvars.iv2305.i.epil.a = phi i64 [ %indvars.iv2305.i.epil.init.a, %.epil.preheader623 ], [ %indvars.iv.next2306.i.epil.a, %bb.bl ] ; 2 uses
  %.712701832.us.i.epil = phi ptr [ %.712701832.us.i.epil.init, %.epil.preheader623 ], [ %i.avx, %bb.bl ] ; 3 uses
  %epil.iter625 = phi i64 [ 0, %.epil.preheader623 ], [ %epil.iter625.next, %bb.bl ]
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %indvars.iv2305.i.epil.a ; 2 uses
  %i.avt = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avs, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avt, ptr %.712701832.us.i.epil, align 16, !tbaa !50
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.avs, i64 %i.aap
  %i.avv = getelementptr inbounds nuw i8, ptr %.712701832.us.i.epil, i64 16
  %i.avw = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avu, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avw, ptr %i.avv, align 16, !tbaa !50
  %i.avx = getelementptr inbounds nuw i8, ptr %.712701832.us.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2306.i.epil.a = add nuw nsw i64 %indvars.iv2305.i.epil.a, 1
  %epil.iter625.next = add i64 %epil.iter625, 1   ; 2 uses
  %epil.iter625.cmp.not = icmp eq i64 %epil.iter625.next, %xtraiter624
  br i1 %epil.iter625.cmp.not, label %._crit_edge1834.us.i, label %bb.bl, !llvm.loop !92

._crit_edge1834.us.i:                             ; preds = %bb.bl, %._crit_edge1834.us.i.unr-lcssa
  %.lcssa547 = phi ptr [ %i.avr, %._crit_edge1834.us.i.unr-lcssa ], [ %i.avx, %bb.bl ] ; 2 uses
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %i.aar ; 2 uses
  %i.avz = add nuw nsw i32 %.312611838.us.i, 2    ; 3 uses
  %i.awa = or disjoint i32 %i.avz, 1
  %i.awb = icmp slt i32 %i.awa, %i.n
  br i1 %i.awb, label %.preheader1566.us.i, label %.preheader1570.i, !llvm.loop !93

.preheader1570.i:                                 ; preds = %._crit_edge1834.us.i, %._crit_edge1822.i
  %.31286.lcssa.i = phi ptr [ %.21285.lcssa.i, %._crit_edge1822.i ], [ %i.avy, %._crit_edge1834.us.i ] ; 9 uses
  %.61269.lcssa.i = phi ptr [ %.41267.lcssa.i, %._crit_edge1822.i ], [ %.lcssa547, %._crit_edge1834.us.i ]
  %.31261.lcssa.i = phi i32 [ %.21260.lcssa.i, %._crit_edge1822.i ], [ %i.avz, %._crit_edge1834.us.i ] ; 2 uses
  %i.awc = icmp sge i32 %.31261.lcssa.i, %i.n
  %brmerge2001.i = or i1 %i.aas, %i.awc
  br i1 %brmerge2001.i, label %._crit_edge1851.split.i, label %.preheader1565.i

.preheader1565.i:                                 ; preds = %.preheader1570.i, %._crit_edge1847.i
  %.412621850.i = phi i32 [ %i.awg, %._crit_edge1847.i ], [ %.31261.lcssa.i, %.preheader1570.i ]
  %.912721849.i = phi ptr [ %.lcssa550, %._crit_edge1847.i ], [ %.61269.lcssa.i, %.preheader1570.i ] ; 2 uses
  br i1 %i.abo, label %.epil.preheader631, label %.preheader1565.i.new

._crit_edge1847.i.unr-lcssa:                      ; preds = %.preheader1565.i.new
  br i1 %lcmp.mod634.not, label %._crit_edge1847.i, label %.epil.preheader631

.epil.preheader631:                               ; preds = %._crit_edge1847.i.unr-lcssa, %.preheader1565.i
  %indvars.iv2310.i.epil.init = phi i64 [ 0, %.preheader1565.i ], [ %indvars.iv.next2311.i.7, %._crit_edge1847.i.unr-lcssa ]
  %.1012731845.i.epil.init = phi ptr [ %.912721849.i, %.preheader1565.i ], [ %i.axl, %._crit_edge1847.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod636)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.epil.preheader631
  %indvars.iv2310.i.epil = phi i64 [ %indvars.iv2310.i.epil.init, %.epil.preheader631 ], [ %indvars.iv.next2311.i.epil, %bb.bm ] ; 2 uses
  %.1012731845.i.epil = phi ptr [ %.1012731845.i.epil.init, %.epil.preheader631 ], [ %i.awf, %bb.bm ] ; 2 uses
  %epil.iter633 = phi i64 [ 0, %.epil.preheader631 ], [ %epil.iter633.next, %bb.bm ]
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i.epil
  %i.awe = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.awd, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awe, ptr %.1012731845.i.epil, align 16, !tbaa !50
  %i.awf = getelementptr inbounds nuw i8, ptr %.1012731845.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2311.i.epil = add nuw nsw i64 %indvars.iv2310.i.epil, 1
  %epil.iter633.next = add i64 %epil.iter633, 1   ; 2 uses
  %epil.iter633.cmp.not = icmp eq i64 %epil.iter633.next, %xtraiter632
  br i1 %epil.iter633.cmp.not, label %._crit_edge1847.i, label %bb.bm, !llvm.loop !94

._crit_edge1847.i:                                ; preds = %bb.bm, %._crit_edge1847.i.unr-lcssa
  %.lcssa550 = phi ptr [ %i.axl, %._crit_edge1847.i.unr-lcssa ], [ %i.awf, %bb.bm ]
  %i.awg = add nuw nsw i32 %.412621850.i, 1       ; 2 uses
  %exitcond2315.not.i = icmp eq i32 %i.awg, %i.n
  br i1 %exitcond2315.not.i, label %._crit_edge1851.split.i, label %.preheader1565.i, !llvm.loop !95

.preheader1565.i.new:                             ; preds = %.preheader1565.i, %.preheader1565.i.new
  %indvars.iv2310.i = phi i64 [ %indvars.iv.next2311.i.7, %.preheader1565.i.new ], [ 0, %.preheader1565.i ] ; 9 uses
  %.1012731845.i = phi ptr [ %i.axl, %.preheader1565.i.new ], [ %.912721849.i, %.preheader1565.i ] ; 9 uses
  %niter638 = phi i64 [ %niter638.next.7, %.preheader1565.i.new ], [ 0, %.preheader1565.i ]
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.awi = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.awh, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awi, ptr %.1012731845.i, align 16, !tbaa !50
  %i.awj = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 16
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 4
  %i.awm = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awl, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awm, ptr %i.awj, align 16, !tbaa !50
  %i.awn = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 32
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 8
  %i.awq = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awp, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awq, ptr %i.awn, align 16, !tbaa !50
  %i.awr = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 48
  %i.aws = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 12
  %i.awu = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awt, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awu, ptr %i.awr, align 16, !tbaa !50
  %i.awv = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 64
  %i.aww = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 16
  %i.awy = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awx, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awy, ptr %i.awv, align 16, !tbaa !50
  %i.awz = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 80
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 20
  %i.axc = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.axb, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.axc, ptr %i.awz, align 16, !tbaa !50
  %i.axd = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 96
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 24
  %i.axg = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.axf, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.axg, ptr %i.axd, align 16, !tbaa !50
  %i.axh = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 112
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 28
  %i.axk = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.axj, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.axk, ptr %i.axh, align 16, !tbaa !50
  %i.axl = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 128 ; 3 uses
  %indvars.iv.next2311.i.7 = add nuw nsw i64 %indvars.iv2310.i, 8 ; 2 uses
  %niter638.next.7 = add i64 %niter638, 8         ; 2 uses
  %niter638.ncmp.7 = icmp eq i64 %niter638.next.7, %unroll_iter637
  br i1 %niter638.ncmp.7, label %._crit_edge1847.i.unr-lcssa, label %.preheader1565.i.new, !llvm.loop !96

._crit_edge1851.split.i:                          ; preds = %._crit_edge1847.i, %.preheader1570.i, %.preheader1566.lr.ph.i, %.preheader1567.lr.ph.i
  %indvars.iv.next2317.i = add nuw nsw i64 %indvars.iv2316.i, 4 ; 3 uses
  %i.axm = or disjoint i64 %indvars.iv.next2317.i, 3 ; 2 uses
  %i.axn = icmp slt i64 %i.axm, %i.abh
  %i.axo = add <4 x i32> %i.apl, %i.abl
  %i.axp = trunc nsw i64 %i.axm to i32
  br i1 %i.axn, label %_ZN4ncnn3MatD2Ev.exit1326.i, label %.preheader1564.loopexit.i, !llvm.loop !97

.preheader1554.loopexit.i:                        ; preds = %._crit_edge1928.split.i
  %i.axq = trunc nsw i64 %indvars.iv.next2361.i to i32
  br label %.preheader1554.i

.preheader1554.i:                                 ; preds = %.preheader1554.loopexit.i, %.preheader1564.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader1564.i ], [ %i.axq, %.preheader1554.loopexit.i ] ; 3 uses
  %i.axr = icmp slt i32 %.3.lcssa.i, %i.m
  br i1 %i.axr, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1554.i
  %i.axs = mul i32 %i.n, %i.j                     ; 3 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.axu = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.axv = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.axw = shufflevector <4 x i32> %i.axv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.axx = mul <4 x i32> %i.axw, <i32 0, i32 1, i32 2, i32 3> ; 9 uses
  %i.axy = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.axz = shufflevector <8 x i32> %i.axy, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aya = mul <8 x i32> %i.axz, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 9 uses
  %i.ayb = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.ayc = shufflevector <16 x i32> %i.ayb, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ayd = mul <16 x i32> %i.ayc, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 9 uses
  %i.aye = icmp sgt i32 %i.n, 15
  %i.ayf = icmp sgt i32 %i.j, 0                   ; 4 uses
  %i.ayg = shl i32 %i.j, 4
  %i.ayh = sext i32 %i.ayg to i64                 ; 2 uses
  %i.ayi = shl i32 %i.j, 3
  %i.ayj = sext i32 %i.ayi to i64                 ; 2 uses
  %i.ayk = shl i32 %i.j, 2
  %i.ayl = sext i32 %i.ayk to i64
  %i.aym = sext i32 %i.j to i64                   ; 8 uses
  %i.ayn = shl i32 %i.j, 1                        ; 2 uses
  %i.ayo = sext i32 %i.ayn to i64                 ; 2 uses
  %i.ayp = icmp slt i32 %i.j, 1
  %i.ayq = add i32 %i.n, -16                      ; 2 uses
  %i.ayr = lshr i32 %i.ayq, 2
  %i.ays = and i32 %i.ayr, 1073741820
  %narrow2444.i = add nuw nsw i32 %i.ays, 4
  %i.ayt = zext nneg i32 %narrow2444.i to i64
  %i.ayu = mul nsw i64 %i.ayt, %i.ayh
  %i.ayv = mul i32 %i.axs, %.3.lcssa.i
  %i.ayw = and i32 %i.ayq, -16
  %i.ayx = add i32 %i.ayw, 16                     ; 4 uses
  %i.ayy = add i32 %i.n, -8
  %i.ayz = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2401.i = sext i32 %i.m to i64
  %i.aza = or disjoint i32 %i.ayx, 7
  %i.azb = icmp slt i32 %i.aza, %i.n
  %wide.trip.count2370.i = zext i32 %i.j to i64   ; 25 uses
  %i.azc = shl nuw nsw i64 %wide.trip.count2370.i, 3
  %i.azd = shl nuw nsw i64 %i.aym, 2              ; 2 uses
  %i.aze = shl nuw nsw i64 %wide.trip.count2370.i, 2 ; 2 uses
  %i.azf = shl nsw i64 %i.ayo, 2
  %3 = add i32 %i.n, -2
  %i.azg = add nsw i64 %wide.trip.count2370.i, -1 ; 3 uses
  %xtraiter668 = and i64 %wide.trip.count2370.i, 7 ; 3 uses
  %i.azh = icmp ult i64 %i.azg, 7
  %unroll_iter673 = and i64 %wide.trip.count2370.i, 2147483640
  %lcmp.mod670.not = icmp eq i64 %xtraiter668, 0
  %lcmp.mod672 = icmp ne i64 %xtraiter668, 0
  %xtraiter676 = and i64 %wide.trip.count2370.i, 7 ; 3 uses
  %i.azi = icmp ult i64 %i.azg, 7
  %unroll_iter681 = and i64 %wide.trip.count2370.i, 2147483640
  %lcmp.mod678.not = icmp eq i64 %xtraiter676, 0
  %lcmp.mod680 = icmp ne i64 %xtraiter676, 0
  %xtraiter684 = and i64 %wide.trip.count2370.i, 7 ; 3 uses
  %i.azj = icmp ult i64 %i.azg, 7
  %unroll_iter689 = and i64 %wide.trip.count2370.i, 2147483640
  %lcmp.mod686.not = icmp eq i64 %xtraiter684, 0
  %lcmp.mod688 = icmp ne i64 %xtraiter684, 0
  %min.iters.check460 = icmp ult i32 %i.j, 8
  %stride.check458 = icmp slt i32 %i.ayn, 0
  %min.iters.check462 = icmp ult i32 %i.j, 32
  %i.azk = and i64 %wide.trip.count2370.i, 24
  %n.vec464 = and i64 %wide.trip.count2370.i, 2147483616 ; 5 uses
  %i.azl = shl nuw nsw i64 %n.vec464, 3
  %cmp.n477 = icmp eq i64 %n.vec464, %wide.trip.count2370.i
  %min.epilog.iters.check482 = icmp eq i64 %i.azk, 0
  %n.vec484 = and i64 %wide.trip.count2370.i, 2147483640 ; 4 uses
  %i.azm = shl nuw nsw i64 %n.vec484, 3
  %cmp.n493 = icmp eq i64 %n.vec484, %wide.trip.count2370.i
  %xtraiter691 = and i64 %wide.trip.count2370.i, 3 ; 2 uses
  %lcmp.mod692.not = icmp eq i64 %xtraiter691, 0
  %min.iters.check412 = icmp ult i32 %i.j, 8
  %min.iters.check414 = icmp ult i32 %i.j, 64
  %i.azn = and i64 %wide.trip.count2370.i, 56
  %n.vec416 = and i64 %wide.trip.count2370.i, 2147483584 ; 5 uses
  %i.azo = shl nuw nsw i64 %n.vec416, 2
  %cmp.n426 = icmp eq i64 %n.vec416, %wide.trip.count2370.i
  %min.epilog.iters.check431 = icmp eq i64 %i.azn, 0
  %n.vec433 = and i64 %wide.trip.count2370.i, 2147483640 ; 4 uses
  %i.azp = shl nuw nsw i64 %n.vec433, 2
  %cmp.n440 = icmp eq i64 %n.vec433, %wide.trip.count2370.i
  %xtraiter694 = and i64 %wide.trip.count2370.i, 7 ; 2 uses
  %lcmp.mod695.not = icmp eq i64 %xtraiter694, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1325.i:                      ; preds = %._crit_edge1928.split.i, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i
  %indvars.iv2360.i.a = phi i64 [ %i.aop, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %indvars.iv.next2361.i, %._crit_edge1928.split.i ] ; 2 uses
  %indvars.iv2323.i = phi i32 [ %i.aol, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %indvars.iv.next2324.i, %._crit_edge1928.split.i ] ; 2 uses
  %indvars.iv2320.i = phi i32 [ %i.aoj, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %indvars.iv.next2321.i, %._crit_edge1928.split.i ] ; 2 uses
  %i.azq = phi i32 [ %i.ane, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %i.bjl, %._crit_edge1928.split.i ]
  %i.azr = sext i32 %indvars.iv2320.i to i64
  %i.azs = shl nsw i64 %i.azr, 2
  %i.azt = sext i32 %indvars.iv2323.i to i64
  %i.azu = shl nsw i64 %i.azt, 2
  %i.azv = load ptr, ptr %i.o, align 8, !tbaa !18 ; 3 uses
  %i.azw = trunc nsw i64 %indvars.iv2360.i.a to i32 ; 2 uses
  %i.azx = mul i32 %i.ang, %i.azw
  %i.azy = sext i32 %i.azx to i64
  %i.azz = getelementptr inbounds [4 x i8], ptr %i.azv, i64 %i.azy ; 2 uses
  %i.baa = mul i32 %i.azq, %i.ang
  %i.bab = sext i32 %i.baa to i64
  %i.bac = getelementptr inbounds [4 x i8], ptr %i.azv, i64 %i.bab ; 2 uses
  %i.bad = insertelement <4 x i32> poison, i32 %i.azw, i64 0
  %i.bae = shufflevector <4 x i32> %i.bad, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.baf = lshr <4 x i32> %i.bae, <i32 3, i32 2, i32 1, i32 4>
  %i.bag = and <4 x i32> %i.baf, <i32 1, i32 1, i32 1, i32 -1>
  %i.bah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bag)
  %i.bai = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !98
  %i.baj = load i64, ptr %i.anh, align 8, !tbaa !20, !noalias !98
  %i.bak = zext nneg i32 %i.bah to i64
  %i.bal = mul i64 %i.baj, %i.bak
  %i.bam = load i64, ptr %i.ani, align 8, !tbaa !49, !noalias !98
  %i.ban = mul i64 %i.bal, %i.bam
  %i.bao = getelementptr inbounds nuw i8, ptr %i.bai, i64 %i.ban ; 4 uses
  br i1 %i.ans, label %.preheader1559.lr.ph.i, label %.preheader1563.i

.preheader1559.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1325.i
  br i1 %i.ant, label %.preheader1559.us.i, label %.preheader1563.thread.i

.preheader1559.us.i:                              ; preds = %.preheader1559.lr.ph.i, %._crit_edge1856.us.i
  %.011821861.us.i = phi i32 [ %i.bbv, %._crit_edge1856.us.i ], [ 0, %.preheader1559.lr.ph.i ]
  %.011871860.us.i = phi ptr [ %.lcssa517, %._crit_edge1856.us.i ], [ %i.bao, %.preheader1559.lr.ph.i ] ; 2 uses
  %.011981859.us.i = phi ptr [ %i.bbu, %._crit_edge1856.us.i ], [ %i.bac, %.preheader1559.lr.ph.i ] ; 6 uses
  %.012021858.us.i = phi ptr [ %i.bbt, %._crit_edge1856.us.i ], [ %i.azz, %.preheader1559.lr.ph.i ] ; 6 uses
  br i1 %i.apa, label %.epil.preheader639, label %.preheader1559.us.i.new

.preheader1559.us.i.new:                          ; preds = %.preheader1559.us.i, %.preheader1559.us.i.new
  %indvars.iv2326.i = phi i64 [ %indvars.iv.next2327.i.3, %.preheader1559.us.i.new ], [ 0, %.preheader1559.us.i ] ; 6 uses
  %.111881854.us.i = phi ptr [ %i.bbm, %.preheader1559.us.i.new ], [ %.011871860.us.i, %.preheader1559.us.i ] ; 9 uses
  %niter646 = phi i64 [ %niter646.next.3, %.preheader1559.us.i.new ], [ 0, %.preheader1559.us.i ]
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv2326.i
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv2326.i
  %i.bar = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bap, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  %i.bas = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.baq, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bar, ptr %.111881854.us.i, align 1, !tbaa !50
  %i.bat = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 64
  store <16 x float> %i.bas, ptr %i.bat, align 1, !tbaa !50
  %i.bau = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 128
  %indvars.iv.next2327.i = or disjoint i64 %indvars.iv2326.i, 1 ; 2 uses
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv.next2327.i
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv.next2327.i
  %i.bax = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bav, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  %i.bay = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.baw, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bax, ptr %i.bau, align 1, !tbaa !50
  %i.baz = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 192
  store <16 x float> %i.bay, ptr %i.baz, align 1, !tbaa !50
  %i.bba = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 256
  %indvars.iv.next2327.i.1 = or disjoint i64 %indvars.iv2326.i, 2 ; 2 uses
  %i.bbb = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv.next2327.i.1
  %i.bbc = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv.next2327.i.1
  %i.bbd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbb, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  %i.bbe = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbc, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bbd, ptr %i.bba, align 1, !tbaa !50
  %i.bbf = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 320
  store <16 x float> %i.bbe, ptr %i.bbf, align 1, !tbaa !50
  %i.bbg = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 384
  %indvars.iv.next2327.i.2 = or disjoint i64 %indvars.iv2326.i, 3 ; 2 uses
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv.next2327.i.2
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv.next2327.i.2
  %i.bbj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbh, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  %i.bbk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbi, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bbj, ptr %i.bbg, align 1, !tbaa !50
  %i.bbl = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 448
  store <16 x float> %i.bbk, ptr %i.bbl, align 1, !tbaa !50
  %i.bbm = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 512 ; 3 uses
  %indvars.iv.next2327.i.3 = add nuw nsw i64 %indvars.iv2326.i, 4 ; 2 uses
  %niter646.next.3 = add i64 %niter646, 4         ; 2 uses
  %niter646.ncmp.3 = icmp eq i64 %niter646.next.3, %unroll_iter645
  br i1 %niter646.ncmp.3, label %._crit_edge1856.us.i.unr-lcssa, label %.preheader1559.us.i.new, !llvm.loop !101

._crit_edge1856.us.i.unr-lcssa:                   ; preds = %.preheader1559.us.i.new
  br i1 %lcmp.mod642.not, label %._crit_edge1856.us.i, label %.epil.preheader639

.epil.preheader639:                               ; preds = %._crit_edge1856.us.i.unr-lcssa, %.preheader1559.us.i
  %indvars.iv2326.i.epil.init = phi i64 [ 0, %.preheader1559.us.i ], [ %indvars.iv.next2327.i.3, %._crit_edge1856.us.i.unr-lcssa ]
  %.111881854.us.i.epil.init = phi ptr [ %.011871860.us.i, %.preheader1559.us.i ], [ %i.bbm, %._crit_edge1856.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod644)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.epil.preheader639
  %indvars.iv2326.i.epil = phi i64 [ %indvars.iv2326.i.epil.init, %.epil.preheader639 ], [ %indvars.iv.next2327.i.epil, %bb.bn ] ; 3 uses
  %.111881854.us.i.epil = phi ptr [ %.111881854.us.i.epil.init, %.epil.preheader639 ], [ %i.bbs, %bb.bn ] ; 3 uses
  %epil.iter641 = phi i64 [ 0, %.epil.preheader639 ], [ %epil.iter641.next, %bb.bn ]
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv2326.i.epil
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv2326.i.epil
  %i.bbp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbn, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  %i.bbq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbo, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bbp, ptr %.111881854.us.i.epil, align 1, !tbaa !50
  %i.bbr = getelementptr inbounds nuw i8, ptr %.111881854.us.i.epil, i64 64
  store <16 x float> %i.bbq, ptr %i.bbr, align 1, !tbaa !50
  %i.bbs = getelementptr inbounds nuw i8, ptr %.111881854.us.i.epil, i64 128 ; 2 uses
  %indvars.iv.next2327.i.epil = add nuw nsw i64 %indvars.iv2326.i.epil, 1
  %epil.iter641.next = add i64 %epil.iter641, 1   ; 2 uses
  %epil.iter641.cmp.not = icmp eq i64 %epil.iter641.next, %xtraiter640
  br i1 %epil.iter641.cmp.not, label %._crit_edge1856.us.i, label %bb.bn, !llvm.loop !102

._crit_edge1856.us.i:                             ; preds = %bb.bn, %._crit_edge1856.us.i.unr-lcssa
  %.lcssa517 = phi ptr [ %i.bbm, %._crit_edge1856.us.i.unr-lcssa ], [ %i.bbs, %bb.bn ] ; 2 uses
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %i.anv ; 2 uses
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %i.anv ; 2 uses
  %i.bbv = add nuw nsw i32 %.011821861.us.i, 16   ; 2 uses
  %i.bbw = or disjoint i32 %i.bbv, 15
  %i.bbx = icmp slt i32 %i.bbw, %i.n
  br i1 %i.bbx, label %.preheader1559.us.i, label %.preheader1563.i, !llvm.loop !103

.preheader1563.i:                                 ; preds = %._crit_edge1856.us.i, %_ZN4ncnn3MatD2Ev.exit1325.i
  %.01202.lcssa.i = phi ptr [ %i.azz, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %i.bbt, %._crit_edge1856.us.i ] ; 3 uses
  %.01198.lcssa.i = phi ptr [ %i.bac, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %i.bbu, %._crit_edge1856.us.i ] ; 3 uses
  %.01187.lcssa.i = phi ptr [ %i.bao, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %.lcssa517, %._crit_edge1856.us.i ] ; 3 uses
  %.01182.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %i.aon, %._crit_edge1856.us.i ] ; 4 uses
  %i.bby = or disjoint i32 %.01182.lcssa.i, 7
  %i.bbz = icmp slt i32 %i.bby, %i.n
  br i1 %i.bbz, label %.preheader1558.lr.ph.i, label %.preheader1562.i

.preheader1563.thread.i:                          ; preds = %.preheader1559.lr.ph.i
  %scevgep2319.i = getelementptr i8, ptr %i.azv, i64 %i.aoi ; 2 uses
  %scevgep2322.i = getelementptr i8, ptr %scevgep2319.i, i64 %i.azs ; 2 uses
  %scevgep2325.i = getelementptr i8, ptr %scevgep2319.i, i64 %i.azu ; 2 uses
  br i1 %i.aos, label %.preheader1558.preheader.i, label %.preheader1562.i

.preheader1558.lr.ph.i:                           ; preds = %.preheader1563.i
  br i1 %i.ant, label %.preheader1558.us.i, label %.preheader1558.preheader.i

.preheader1558.preheader.i:                       ; preds = %.preheader1558.lr.ph.i, %.preheader1563.thread.i
  %.01202.lcssa25672578.i = phi ptr [ %.01202.lcssa.i, %.preheader1558.lr.ph.i ], [ %scevgep2322.i, %.preheader1563.thread.i ]
  %.01198.lcssa25682577.i = phi ptr [ %.01198.lcssa.i, %.preheader1558.lr.ph.i ], [ %scevgep2325.i, %.preheader1563.thread.i ]
  %.01187.lcssa25692576.i = phi ptr [ %.01187.lcssa.i, %.preheader1558.lr.ph.i ], [ %i.bao, %.preheader1563.thread.i ]
  %.01182.lcssa25702575.i = phi i32 [ %.01182.lcssa.i, %.preheader1558.lr.ph.i ], [ %i.aon, %.preheader1563.thread.i ] ; 2 uses
  %i.bca = sub i32 %i.aoo, %.01182.lcssa25702575.i ; 2 uses
  %i.bcb = lshr i32 %i.bca, 1
  %i.bcc = and i32 %i.bcb, 2147483644
  %narrow2443.i = add nuw i32 %i.bcc, 4
  %i.bcd = zext i32 %narrow2443.i to i64
  %i.bce = mul nsw i64 %i.bcd, %i.anx             ; 2 uses
  %scevgep2331.i = getelementptr i8, ptr %.01202.lcssa25672578.i, i64 %i.bce
  %scevgep2332.i = getelementptr i8, ptr %.01198.lcssa25682577.i, i64 %i.bce
  %i.bcf = add i32 %.01182.lcssa25702575.i, 8
  %i.bcg = and i32 %i.bca, -8
  %i.bch = add i32 %i.bcf, %i.bcg
  br label %.preheader1562.i

.preheader1558.us.i:                              ; preds = %.preheader1558.lr.ph.i, %._crit_edge1872.us.i
  %.111831877.us.i = phi i32 [ %i.bdo, %._crit_edge1872.us.i ], [ %.01182.lcssa.i, %.preheader1558.lr.ph.i ]
  %.211891876.us.i = phi ptr [ %.lcssa520, %._crit_edge1872.us.i ], [ %.01187.lcssa.i, %.preheader1558.lr.ph.i ] ; 2 uses
  %.111991875.us.i = phi ptr [ %i.bdn, %._crit_edge1872.us.i ], [ %.01198.lcssa.i, %.preheader1558.lr.ph.i ] ; 6 uses
  %.112031874.us.i = phi ptr [ %i.bdm, %._crit_edge1872.us.i ], [ %.01202.lcssa.i, %.preheader1558.lr.ph.i ] ; 6 uses
  br i1 %i.apb, label %.epil.preheader647, label %.preheader1558.us.i.new

.preheader1558.us.i.new:                          ; preds = %.preheader1558.us.i, %.preheader1558.us.i.new
  %indvars.iv2333.i = phi i64 [ %indvars.iv.next2334.i.3, %.preheader1558.us.i.new ], [ 0, %.preheader1558.us.i ] ; 6 uses
  %.311901870.us.i = phi ptr [ %i.bdf, %.preheader1558.us.i.new ], [ %.211891876.us.i, %.preheader1558.us.i ] ; 9 uses
  %niter654 = phi i64 [ %niter654.next.3, %.preheader1558.us.i.new ], [ 0, %.preheader1558.us.i ]
  %i.bci = getelementptr inbounds nuw [4 x i8], ptr %.112031874.us.i, i64 %indvars.iv2333.i
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %.111991875.us.i, i64 %indvars.iv2333.i
  %i.bck = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bci, <8 x i32> %i.ano, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bcl = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bcj, <8 x i32> %i.ano, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bck, ptr %.311901870.us.i, align 1, !tbaa !50
  %i.bcm = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 32
  store <8 x float> %i.bcl, ptr %i.bcm, align 1, !tbaa !50
  %i.bcn = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 64
  %indvars.iv.next2334.i = or disjoint i64 %indvars.iv2333.i, 1 ; 2 uses
  %i.bco = getelementptr inbounds nuw [4 x i8], ptr %.112031874.us.i, i64 %indvars.iv.next2334.i
  %i.bcp = getelementptr inbounds nuw [4 x i8], ptr %.111991875.us.i, i64 %indvars.iv.next2334.i
  %i.bcq = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bco, <8 x i32> %i.ano, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bcr = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bcp, <8 x i32> %i.ano, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bcq, ptr %i.bcn, align 1, !tbaa !50
  %i.bcs = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 96
  store <8 x float> %i.bcr, ptr %i.bcs, align 1, !tbaa !50
  %i.bct = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 128
  %indvars.iv.next2334.i.1 = or disjoint i64 %indvars.iv2333.i, 2 ; 2 uses
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %.112031874.us.i, i64 %indvars.iv.next2334.i.1
  %i.bcv = getelementptr inbounds nuw [4 x i8], ptr %.111991875.us.i, i64 %indvars.iv.next2334.i.1
  %i.bcw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bcu, <8 x i32> %i.ano, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bcx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bcv, <8 x i32> %i.ano, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bcw, ptr %i.bct, align 1, !tbaa !50
  %i.bcy = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 160
  store <8 x float> %i.bcx, ptr %i.bcy, align 1, !tbaa !50
  %i.bcz = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 192
  %indvars.iv.next2334.i.2 = or disjoint i64 %indvars.iv2333.i, 3 ; 2 uses
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %.112031874.us.i, i64 %indvars.iv.next2334.i.2
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %.111991875.us.i, i64 %indvars.iv.next2334.i.2
  %i.bdc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bda, <8 x i32> %i.ano, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdd = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bdb, <8 x i32> %i.ano, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bdc, ptr %i.bcz, align 1, !tbaa !50
  %i.bde = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 224
  store <8 x float> %i.bdd, ptr %i.bde, align 1, !tbaa !50
  %i.bdf = getelementptr inbounds nuw i8, ptr %.311901870.us.i, i64 256 ; 3 uses
  %indvars.iv.next2334.i.3 = add nuw nsw i64 %indvars.iv2333.i, 4 ; 2 uses
  %niter654.next.3 = add i64 %niter654, 4         ; 2 uses
  %niter654.ncmp.3 = icmp eq i64 %niter654.next.3, %unroll_iter653
  br i1 %niter654.ncmp.3, label %._crit_edge1872.us.i.unr-lcssa, label %.preheader1558.us.i.new, !llvm.loop !104

._crit_edge1872.us.i.unr-lcssa:                   ; preds = %.preheader1558.us.i.new
  br i1 %lcmp.mod650.not, label %._crit_edge1872.us.i, label %.epil.preheader647

.epil.preheader647:                               ; preds = %._crit_edge1872.us.i.unr-lcssa, %.preheader1558.us.i
  %indvars.iv2333.i.epil.init = phi i64 [ 0, %.preheader1558.us.i ], [ %indvars.iv.next2334.i.3, %._crit_edge1872.us.i.unr-lcssa ]
  %.311901870.us.i.epil.init = phi ptr [ %.211891876.us.i, %.preheader1558.us.i ], [ %i.bdf, %._crit_edge1872.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod652)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.epil.preheader647
  %indvars.iv2333.i.epil = phi i64 [ %indvars.iv2333.i.epil.init, %.epil.preheader647 ], [ %indvars.iv.next2334.i.epil, %bb.bo ] ; 3 uses
  %.311901870.us.i.epil = phi ptr [ %.311901870.us.i.epil.init, %.epil.preheader647 ], [ %i.bdl, %bb.bo ] ; 3 uses
  %epil.iter649 = phi i64 [ 0, %.epil.preheader647 ], [ %epil.iter649.next, %bb.bo ]
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %.112031874.us.i, i64 %indvars.iv2333.i.epil
  %i.bdh = getelementptr inbounds nuw [4 x i8], ptr %.111991875.us.i, i64 %indvars.iv2333.i.epil
  %i.bdi = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bdg, <8 x i32> %i.ano, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdj = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bdh, <8 x i32> %i.ano, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bdi, ptr %.311901870.us.i.epil, align 1, !tbaa !50
  %i.bdk = getelementptr inbounds nuw i8, ptr %.311901870.us.i.epil, i64 32
  store <8 x float> %i.bdj, ptr %i.bdk, align 1, !tbaa !50
  %i.bdl = getelementptr inbounds nuw i8, ptr %.311901870.us.i.epil, i64 64 ; 2 uses
  %indvars.iv.next2334.i.epil = add nuw nsw i64 %indvars.iv2333.i.epil, 1
  %epil.iter649.next = add i64 %epil.iter649, 1   ; 2 uses
  %epil.iter649.cmp.not = icmp eq i64 %epil.iter649.next, %xtraiter648
  br i1 %epil.iter649.cmp.not, label %._crit_edge1872.us.i, label %bb.bo, !llvm.loop !105

._crit_edge1872.us.i:                             ; preds = %bb.bo, %._crit_edge1872.us.i.unr-lcssa
  %.lcssa520 = phi ptr [ %i.bdf, %._crit_edge1872.us.i.unr-lcssa ], [ %i.bdl, %bb.bo ] ; 2 uses
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %.112031874.us.i, i64 %i.anx ; 2 uses
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %.111991875.us.i, i64 %i.anx ; 2 uses
  %i.bdo = add nuw nsw i32 %.111831877.us.i, 8    ; 3 uses
  %i.bdp = or disjoint i32 %i.bdo, 7
  %i.bdq = icmp slt i32 %i.bdp, %i.n
  br i1 %i.bdq, label %.preheader1558.us.i, label %.preheader1562.i, !llvm.loop !106

.preheader1562.i:                                 ; preds = %._crit_edge1872.us.i, %.preheader1558.preheader.i, %.preheader1563.thread.i, %.preheader1563.i
  %.11203.lcssa.i = phi ptr [ %.01202.lcssa.i, %.preheader1563.i ], [ %scevgep2322.i, %.preheader1563.thread.i ], [ %scevgep2331.i, %.preheader1558.preheader.i ], [ %i.bdm, %._crit_edge1872.us.i ] ; 2 uses
  %.11199.lcssa.i = phi ptr [ %.01198.lcssa.i, %.preheader1563.i ], [ %scevgep2325.i, %.preheader1563.thread.i ], [ %scevgep2332.i, %.preheader1558.preheader.i ], [ %i.bdn, %._crit_edge1872.us.i ] ; 2 uses
  %.21189.lcssa.i = phi ptr [ %.01187.lcssa.i, %.preheader1563.i ], [ %i.bao, %.preheader1563.thread.i ], [ %.01187.lcssa25692576.i, %.preheader1558.preheader.i ], [ %.lcssa520, %._crit_edge1872.us.i ] ; 2 uses
  %.11183.lcssa.i = phi i32 [ %.01182.lcssa.i, %.preheader1563.i ], [ %i.aon, %.preheader1563.thread.i ], [ %i.bch, %.preheader1558.preheader.i ], [ %i.bdo, %._crit_edge1872.us.i ] ; 3 uses
  %i.bdr = or disjoint i32 %.11183.lcssa.i, 3
  %i.bds = icmp slt i32 %i.bdr, %i.n
  br i1 %i.bds, label %.preheader1557.lr.ph.i, label %.preheader1561.i

.preheader1557.lr.ph.i:                           ; preds = %.preheader1562.i
  br i1 %i.ant, label %.preheader1557.us.i, label %._crit_edge1928.split.i

.preheader1557.us.i:                              ; preds = %.preheader1557.lr.ph.i, %._crit_edge1888.us.i
  %.211841893.us.i = phi i32 [ %i.bez, %._crit_edge1888.us.i ], [ %.11183.lcssa.i, %.preheader1557.lr.ph.i ]
  %.411911892.us.i = phi ptr [ %.lcssa524, %._crit_edge1888.us.i ], [ %.21189.lcssa.i, %.preheader1557.lr.ph.i ] ; 2 uses
  %.212001891.us.i = phi ptr [ %i.bey, %._crit_edge1888.us.i ], [ %.11199.lcssa.i, %.preheader1557.lr.ph.i ] ; 6 uses
  %.212041890.us.i = phi ptr [ %i.bex, %._crit_edge1888.us.i ], [ %.11203.lcssa.i, %.preheader1557.lr.ph.i ] ; 6 uses
  br i1 %i.apc, label %.epil.preheader655, label %.preheader1557.us.i.new

.preheader1557.us.i.new:                          ; preds = %.preheader1557.us.i, %.preheader1557.us.i.new
  %indvars.iv2341.i = phi i64 [ %indvars.iv.next2342.i.3, %.preheader1557.us.i.new ], [ 0, %.preheader1557.us.i ] ; 6 uses
  %.511921886.us.i = phi ptr [ %i.beq, %.preheader1557.us.i.new ], [ %.411911892.us.i, %.preheader1557.us.i ] ; 9 uses
  %niter662 = phi i64 [ %niter662.next.3, %.preheader1557.us.i.new ], [ 0, %.preheader1557.us.i ]
  %i.bdt = getelementptr inbounds nuw [4 x i8], ptr %.212041890.us.i, i64 %indvars.iv2341.i
  %i.bdu = getelementptr inbounds nuw [4 x i8], ptr %.212001891.us.i, i64 %indvars.iv2341.i
  %i.bdv = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bdt, <4 x i32> %i.anl, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bdw = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bdu, <4 x i32> %i.anl, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bdv, ptr %.511921886.us.i, align 1, !tbaa !50
  %i.bdx = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 16
  store <4 x float> %i.bdw, ptr %i.bdx, align 1, !tbaa !50
  %i.bdy = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 32
  %indvars.iv.next2342.i = or disjoint i64 %indvars.iv2341.i, 1 ; 2 uses
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %.212041890.us.i, i64 %indvars.iv.next2342.i
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %.212001891.us.i, i64 %indvars.iv.next2342.i
  %i.beb = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bdz, <4 x i32> %i.anl, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bec = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bea, <4 x i32> %i.anl, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.beb, ptr %i.bdy, align 1, !tbaa !50
  %i.bed = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 48
  store <4 x float> %i.bec, ptr %i.bed, align 1, !tbaa !50
  %i.bee = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 64
  %indvars.iv.next2342.i.1 = or disjoint i64 %indvars.iv2341.i, 2 ; 2 uses
  %i.bef = getelementptr inbounds nuw [4 x i8], ptr %.212041890.us.i, i64 %indvars.iv.next2342.i.1
  %i.beg = getelementptr inbounds nuw [4 x i8], ptr %.212001891.us.i, i64 %indvars.iv.next2342.i.1
  %i.beh = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bef, <4 x i32> %i.anl, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bei = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.beg, <4 x i32> %i.anl, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.beh, ptr %i.bee, align 1, !tbaa !50
  %i.bej = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 80
  store <4 x float> %i.bei, ptr %i.bej, align 1, !tbaa !50
  %i.bek = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 96
  %indvars.iv.next2342.i.2 = or disjoint i64 %indvars.iv2341.i, 3 ; 2 uses
  %i.bel = getelementptr inbounds nuw [4 x i8], ptr %.212041890.us.i, i64 %indvars.iv.next2342.i.2
  %i.bem = getelementptr inbounds nuw [4 x i8], ptr %.212001891.us.i, i64 %indvars.iv.next2342.i.2
  %i.ben = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bel, <4 x i32> %i.anl, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.beo = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bem, <4 x i32> %i.anl, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.ben, ptr %i.bek, align 1, !tbaa !50
  %i.bep = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 112
  store <4 x float> %i.beo, ptr %i.bep, align 1, !tbaa !50
  %i.beq = getelementptr inbounds nuw i8, ptr %.511921886.us.i, i64 128 ; 3 uses
  %indvars.iv.next2342.i.3 = add nuw nsw i64 %indvars.iv2341.i, 4 ; 2 uses
  %niter662.next.3 = add i64 %niter662, 4         ; 2 uses
  %niter662.ncmp.3 = icmp eq i64 %niter662.next.3, %unroll_iter661
  br i1 %niter662.ncmp.3, label %._crit_edge1888.us.i.unr-lcssa, label %.preheader1557.us.i.new, !llvm.loop !107

._crit_edge1888.us.i.unr-lcssa:                   ; preds = %.preheader1557.us.i.new
  br i1 %lcmp.mod658.not, label %._crit_edge1888.us.i, label %.epil.preheader655

.epil.preheader655:                               ; preds = %._crit_edge1888.us.i.unr-lcssa, %.preheader1557.us.i
  %indvars.iv2341.i.epil.init = phi i64 [ 0, %.preheader1557.us.i ], [ %indvars.iv.next2342.i.3, %._crit_edge1888.us.i.unr-lcssa ]
  %.511921886.us.i.epil.init = phi ptr [ %.411911892.us.i, %.preheader1557.us.i ], [ %i.beq, %._crit_edge1888.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod660)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.epil.preheader655
  %indvars.iv2341.i.epil = phi i64 [ %indvars.iv2341.i.epil.init, %.epil.preheader655 ], [ %indvars.iv.next2342.i.epil, %bb.bp ] ; 3 uses
  %.511921886.us.i.epil = phi ptr [ %.511921886.us.i.epil.init, %.epil.preheader655 ], [ %i.bew, %bb.bp ] ; 3 uses
  %epil.iter657 = phi i64 [ 0, %.epil.preheader655 ], [ %epil.iter657.next, %bb.bp ]
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %.212041890.us.i, i64 %indvars.iv2341.i.epil
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %.212001891.us.i, i64 %indvars.iv2341.i.epil
  %i.bet = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.ber, <4 x i32> %i.anl, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.beu = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bes, <4 x i32> %i.anl, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bet, ptr %.511921886.us.i.epil, align 1, !tbaa !50
  %i.bev = getelementptr inbounds nuw i8, ptr %.511921886.us.i.epil, i64 16
  store <4 x float> %i.beu, ptr %i.bev, align 1, !tbaa !50
  %i.bew = getelementptr inbounds nuw i8, ptr %.511921886.us.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2342.i.epil = add nuw nsw i64 %indvars.iv2341.i.epil, 1
  %epil.iter657.next = add i64 %epil.iter657, 1   ; 2 uses
  %epil.iter657.cmp.not = icmp eq i64 %epil.iter657.next, %xtraiter656
  br i1 %epil.iter657.cmp.not, label %._crit_edge1888.us.i, label %bb.bp, !llvm.loop !108

._crit_edge1888.us.i:                             ; preds = %bb.bp, %._crit_edge1888.us.i.unr-lcssa
  %.lcssa524 = phi ptr [ %i.beq, %._crit_edge1888.us.i.unr-lcssa ], [ %i.bew, %bb.bp ] ; 2 uses
  %i.bex = getelementptr inbounds nuw [4 x i8], ptr %.212041890.us.i, i64 %i.anz ; 2 uses
  %i.bey = getelementptr inbounds nuw [4 x i8], ptr %.212001891.us.i, i64 %i.anz ; 2 uses
  %i.bez = add nuw nsw i32 %.211841893.us.i, 4    ; 3 uses
  %i.bfa = or disjoint i32 %i.bez, 3
  %i.bfb = icmp slt i32 %i.bfa, %i.n
  br i1 %i.bfb, label %.preheader1557.us.i, label %.preheader1561.i, !llvm.loop !109

.preheader1561.i:                                 ; preds = %._crit_edge1888.us.i, %.preheader1562.i
  %.21204.lcssa.i = phi ptr [ %.11203.lcssa.i, %.preheader1562.i ], [ %i.bex, %._crit_edge1888.us.i ] ; 6 uses
  %.21200.lcssa.i = phi ptr [ %.11199.lcssa.i, %.preheader1562.i ], [ %i.bey, %._crit_edge1888.us.i ] ; 6 uses
  %.41191.lcssa.i = phi ptr [ %.21189.lcssa.i, %.preheader1562.i ], [ %.lcssa524, %._crit_edge1888.us.i ] ; 2 uses
  %.21184.lcssa.i = phi i32 [ %.11183.lcssa.i, %.preheader1562.i ], [ %i.bez, %._crit_edge1888.us.i ] ; 4 uses
  %i.bfc = or disjoint i32 %.21184.lcssa.i, 1
  %i.bfd = icmp slt i32 %i.bfc, %i.n
  br i1 %i.bfd, label %.preheader1556.lr.ph.i, label %.preheader1560.i

.preheader1556.lr.ph.i:                           ; preds = %.preheader1561.i
  br i1 %i.ant, label %.preheader1556.us.i.preheader, label %._crit_edge1928.split.i

.preheader1556.us.i.preheader:                    ; preds = %.preheader1556.lr.ph.i
  %scevgep345 = getelementptr i8, ptr %.21200.lcssa.i, i64 %i.aow
  %scevgep346 = getelementptr i8, ptr %.21200.lcssa.i, i64 %i.aox
  %i.bfe = sub i32 %2, %.21184.lcssa.i
  %i.bff = lshr i32 %i.bfe, 1
  %i.bfg = zext nneg i32 %i.bff to i64
  %i.bfh = mul i64 %i.aoy, %i.bfg                 ; 4 uses
  %scevgep347 = getelementptr i8, ptr %scevgep346, i64 %i.bfh
  %scevgep348 = getelementptr i8, ptr %.21204.lcssa.i, i64 %i.aow
  %scevgep349 = getelementptr i8, ptr %.21204.lcssa.i, i64 %i.aox
  %scevgep350 = getelementptr i8, ptr %scevgep349, i64 %i.bfh
  %scevgep351 = getelementptr i8, ptr %.21200.lcssa.i, i64 %i.aou
  %scevgep352 = getelementptr i8, ptr %scevgep351, i64 %i.bfh
  %scevgep353 = getelementptr i8, ptr %.21204.lcssa.i, i64 %i.aou
  %scevgep354 = getelementptr i8, ptr %scevgep353, i64 %i.bfh
  br label %iter.check390

iter.check390:                                    ; preds = %.preheader1556.us.i.preheader, %._crit_edge1908.us.i
  %.311851913.us.i = phi i32 [ %i.bho, %._crit_edge1908.us.i ], [ %.21184.lcssa.i, %.preheader1556.us.i.preheader ]
  %.611931912.us.i = phi ptr [ %.lcssa272, %._crit_edge1908.us.i ], [ %.41191.lcssa.i, %.preheader1556.us.i.preheader ] ; 11 uses
  %.312011911.us.i = phi ptr [ %i.bhn, %._crit_edge1908.us.i ], [ %.21200.lcssa.i, %.preheader1556.us.i.preheader ] ; 6 uses
  %.312051910.us.i = phi ptr [ %i.bhm, %._crit_edge1908.us.i ], [ %.21204.lcssa.i, %.preheader1556.us.i.preheader ] ; 6 uses
  br i1 %min.iters.check373, label %vec.epilog.scalar.ph391.preheader, label %vector.memcheck343

vector.memcheck343:                               ; preds = %iter.check390
  %scevgep344 = getelementptr i8, ptr %.611931912.us.i, i64 %i.aov ; 4 uses
  %bound0355 = icmp ult ptr %.611931912.us.i, %scevgep347
  %bound1356 = icmp ult ptr %scevgep345, %scevgep344
  %found.conflict357 = and i1 %bound0355, %bound1356
  %bound0358 = icmp ult ptr %.611931912.us.i, %scevgep350
  %bound1359 = icmp ult ptr %scevgep348, %scevgep344
  %found.conflict360 = and i1 %bound0358, %bound1359
  %i.bfi = or i1 %found.conflict360, %stride.check361
  %conflict.rdx362 = or i1 %found.conflict357, %i.bfi
  %bound0363 = icmp ult ptr %.611931912.us.i, %scevgep352
  %bound1364 = icmp ult ptr %.21200.lcssa.i, %scevgep344
  %found.conflict365 = and i1 %bound0363, %bound1364
  %conflict.rdx367 = or i1 %found.conflict365, %conflict.rdx362
  %bound0368 = icmp ult ptr %.611931912.us.i, %scevgep354
  %bound1369 = icmp ult ptr %.21204.lcssa.i, %scevgep344
  %found.conflict370 = and i1 %bound0368, %bound1369
  %conflict.rdx372 = or i1 %found.conflict370, %conflict.rdx367
  br i1 %conflict.rdx372, label %vec.epilog.scalar.ph391.preheader, label %vector.main.loop.iter.check374

vector.main.loop.iter.check374:                   ; preds = %vector.memcheck343
  br i1 %min.iters.check375, label %vec.epilog.ph394, label %vector.ph376

vector.ph376:                                     ; preds = %vector.main.loop.iter.check374
  %i.bfj = getelementptr i8, ptr %.611931912.us.i, i64 %i.ape ; 2 uses
  br label %vector.body378

vector.body378:                                   ; preds = %vector.body378, %vector.ph376
  %index379 = phi i64 [ 0, %vector.ph376 ], [ %index.next386, %vector.body378 ] ; 4 uses
  %i.bfk = shl i64 %index379, 4
  %next.gep380 = getelementptr i8, ptr %.611931912.us.i, i64 %i.bfk
  %i.bfl = getelementptr inbounds nuw [4 x i8], ptr %.312051910.us.i, i64 %index379 ; 2 uses
  %i.bfm = getelementptr inbounds nuw [4 x i8], ptr %.312011911.us.i, i64 %index379 ; 2 uses
  %wide.load381 = load <16 x float>, ptr %i.bfl, align 4, !tbaa !110, !alias.scope !111
  %wide.load382 = load <16 x float>, ptr %i.bfm, align 4, !tbaa !110, !alias.scope !114
  %i.bfn = getelementptr inbounds nuw [4 x i8], ptr %i.bfl, i64 %i.aoa
  %i.bfo = getelementptr inbounds nuw [4 x i8], ptr %i.bfm, i64 %i.aoa
  %wide.load383 = load <16 x float>, ptr %i.bfn, align 4, !tbaa !110, !alias.scope !116
  %wide.load384 = load <16 x float>, ptr %i.bfo, align 4, !tbaa !110, !alias.scope !118
  %i.bfp = shufflevector <16 x float> %wide.load381, <16 x float> %wide.load382, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bfq = shufflevector <16 x float> %wide.load383, <16 x float> %wide.load384, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec385 = shufflevector <32 x float> %i.bfp, <32 x float> %i.bfq, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec385, ptr %next.gep380, align 4, !tbaa !110, !alias.scope !120, !noalias !122
  %index.next386 = add nuw i64 %index379, 16      ; 2 uses
  %i.bfr = icmp eq i64 %index.next386, %n.vec377
  br i1 %i.bfr, label %middle.block387, label %vector.body378, !llvm.loop !123

middle.block387:                                  ; preds = %vector.body378
  br i1 %cmp.n388, label %._crit_edge1908.us.i, label %vec.epilog.iter.check392

vec.epilog.iter.check392:                         ; preds = %middle.block387
  br i1 %min.epilog.iters.check393, label %vec.epilog.scalar.ph391.preheader, label %vec.epilog.ph394, !prof !126

vec.epilog.ph394:                                 ; preds = %vector.main.loop.iter.check374, %vec.epilog.iter.check392
  %vec.epilog.resume.val389 = phi i64 [ %n.vec377, %vec.epilog.iter.check392 ], [ 0, %vector.main.loop.iter.check374 ]
  %i.bfs = getelementptr i8, ptr %.611931912.us.i, i64 %i.apf ; 2 uses
  br label %vec.epilog.vector.body396

vec.epilog.vector.body396:                        ; preds = %vec.epilog.vector.body396, %vec.epilog.ph394
  %index397 = phi i64 [ %vec.epilog.resume.val389, %vec.epilog.ph394 ], [ %index.next404, %vec.epilog.vector.body396 ] ; 4 uses
  %i.bft = shl i64 %index397, 4
  %next.gep398 = getelementptr i8, ptr %.611931912.us.i, i64 %i.bft
  %i.bfu = getelementptr inbounds nuw [4 x i8], ptr %.312051910.us.i, i64 %index397 ; 2 uses
  %i.bfv = getelementptr inbounds nuw [4 x i8], ptr %.312011911.us.i, i64 %index397 ; 2 uses
  %wide.load399 = load <4 x float>, ptr %i.bfu, align 4, !tbaa !110, !alias.scope !111
  %wide.load400 = load <4 x float>, ptr %i.bfv, align 4, !tbaa !110, !alias.scope !114
  %i.bfw = getelementptr inbounds nuw [4 x i8], ptr %i.bfu, i64 %i.aoa
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %i.bfv, i64 %i.aoa
  %wide.load401 = load <4 x float>, ptr %i.bfw, align 4, !tbaa !110, !alias.scope !116
  %wide.load402 = load <4 x float>, ptr %i.bfx, align 4, !tbaa !110, !alias.scope !118
  %i.bfy = shufflevector <4 x float> %wide.load399, <4 x float> %wide.load400, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bfz = shufflevector <4 x float> %wide.load401, <4 x float> %wide.load402, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec403 = shufflevector <8 x float> %i.bfy, <8 x float> %i.bfz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec403, ptr %next.gep398, align 4, !tbaa !110, !alias.scope !120, !noalias !122
  %index.next404 = add nuw i64 %index397, 4       ; 2 uses
  %i.bga = icmp eq i64 %index.next404, %n.vec395
  br i1 %i.bga, label %vec.epilog.middle.block405, label %vec.epilog.vector.body396, !llvm.loop !127

vec.epilog.middle.block405:                       ; preds = %vec.epilog.vector.body396
  br i1 %cmp.n406, label %._crit_edge1908.us.i, label %vec.epilog.scalar.ph391.preheader

vec.epilog.scalar.ph391.preheader:                ; preds = %vector.memcheck343, %iter.check390, %vec.epilog.iter.check392, %vec.epilog.middle.block405
  %indvars.iv2349.i.ph = phi i64 [ 0, %iter.check390 ], [ 0, %vector.memcheck343 ], [ %n.vec377, %vec.epilog.iter.check392 ], [ %n.vec395, %vec.epilog.middle.block405 ] ; 5 uses
  %.711941906.us.i.ph = phi ptr [ %.611931912.us.i, %iter.check390 ], [ %.611931912.us.i, %vector.memcheck343 ], [ %i.bfj, %vec.epilog.iter.check392 ], [ %i.bfs, %vec.epilog.middle.block405 ] ; 6 uses
  br i1 %lcmp.mod664.not, label %vec.epilog.scalar.ph391.prol.loopexit, label %vec.epilog.scalar.ph391.prol

vec.epilog.scalar.ph391.prol:                     ; preds = %vec.epilog.scalar.ph391.preheader
  %i.bgb = getelementptr inbounds nuw [4 x i8], ptr %.312051910.us.i, i64 %indvars.iv2349.i.ph ; 2 uses
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %.312011911.us.i, i64 %indvars.iv2349.i.ph ; 2 uses
  %i.bgd = load float, ptr %i.bgb, align 4, !tbaa !110
  store float %i.bgd, ptr %.711941906.us.i.ph, align 4, !tbaa !110
  %i.bge = load float, ptr %i.bgc, align 4, !tbaa !110
  %i.bgf = getelementptr inbounds nuw i8, ptr %.711941906.us.i.ph, i64 4
  store float %i.bge, ptr %i.bgf, align 4, !tbaa !110
  %i.bgg = getelementptr inbounds nuw [4 x i8], ptr %i.bgb, i64 %i.aoa
  %i.bgh = getelementptr inbounds nuw [4 x i8], ptr %i.bgc, i64 %i.aoa
  %i.bgi = getelementptr inbounds nuw i8, ptr %.711941906.us.i.ph, i64 8
  %i.bgj = load float, ptr %i.bgg, align 4, !tbaa !110
  store float %i.bgj, ptr %i.bgi, align 4, !tbaa !110
  %i.bgk = load float, ptr %i.bgh, align 4, !tbaa !110
  %i.bgl = getelementptr inbounds nuw i8, ptr %.711941906.us.i.ph, i64 12
  store float %i.bgk, ptr %i.bgl, align 4, !tbaa !110
  %i.bgm = getelementptr inbounds nuw i8, ptr %.711941906.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next2350.i.prol = or disjoint i64 %indvars.iv2349.i.ph, 1
  br label %vec.epilog.scalar.ph391.prol.loopexit

vec.epilog.scalar.ph391.prol.loopexit:            ; preds = %vec.epilog.scalar.ph391.prol, %vec.epilog.scalar.ph391.preheader
  %.lcssa528.unr = phi ptr [ poison, %vec.epilog.scalar.ph391.preheader ], [ %i.bgm, %vec.epilog.scalar.ph391.prol ]
  %indvars.iv2349.i.unr = phi i64 [ %indvars.iv2349.i.ph, %vec.epilog.scalar.ph391.preheader ], [ %indvars.iv.next2350.i.prol, %vec.epilog.scalar.ph391.prol ]
  %.711941906.us.i.unr = phi ptr [ %.711941906.us.i.ph, %vec.epilog.scalar.ph391.preheader ], [ %i.bgm, %vec.epilog.scalar.ph391.prol ]
  %i.bgn = icmp eq i64 %indvars.iv2349.i.ph, %i.apg
  br i1 %i.bgn, label %._crit_edge1908.us.i, label %vec.epilog.scalar.ph391

vec.epilog.scalar.ph391:                          ; preds = %vec.epilog.scalar.ph391.prol.loopexit, %vec.epilog.scalar.ph391
  %indvars.iv2349.i = phi i64 [ %indvars.iv.next2350.i.1, %vec.epilog.scalar.ph391 ], [ %indvars.iv2349.i.unr, %vec.epilog.scalar.ph391.prol.loopexit ] ; 4 uses
  %.711941906.us.i = phi ptr [ %i.bhl, %vec.epilog.scalar.ph391 ], [ %.711941906.us.i.unr, %vec.epilog.scalar.ph391.prol.loopexit ] ; 9 uses
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %.312051910.us.i, i64 %indvars.iv2349.i ; 2 uses
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %.312011911.us.i, i64 %indvars.iv2349.i ; 2 uses
  %i.bgq = load float, ptr %i.bgo, align 4, !tbaa !110
  store float %i.bgq, ptr %.711941906.us.i, align 4, !tbaa !110
  %i.bgr = load float, ptr %i.bgp, align 4, !tbaa !110
  %i.bgs = getelementptr inbounds nuw i8, ptr %.711941906.us.i, i64 4
  store float %i.bgr, ptr %i.bgs, align 4, !tbaa !110
  %i.bgt = getelementptr inbounds nuw [4 x i8], ptr %i.bgo, i64 %i.aoa
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %i.bgp, i64 %i.aoa
  %i.bgv = getelementptr inbounds nuw i8, ptr %.711941906.us.i, i64 8
  %i.bgw = load float, ptr %i.bgt, align 4, !tbaa !110
  store float %i.bgw, ptr %i.bgv, align 4, !tbaa !110
  %i.bgx = load float, ptr %i.bgu, align 4, !tbaa !110
  %i.bgy = getelementptr inbounds nuw i8, ptr %.711941906.us.i, i64 12
  store float %i.bgx, ptr %i.bgy, align 4, !tbaa !110
  %i.bgz = getelementptr inbounds nuw i8, ptr %.711941906.us.i, i64 16
  %indvars.iv.next2350.i = add nuw nsw i64 %indvars.iv2349.i, 1 ; 2 uses
  %i.bha = getelementptr inbounds nuw [4 x i8], ptr %.312051910.us.i, i64 %indvars.iv.next2350.i ; 2 uses
  %i.bhb = getelementptr inbounds nuw [4 x i8], ptr %.312011911.us.i, i64 %indvars.iv.next2350.i ; 2 uses
  %i.bhc = load float, ptr %i.bha, align 4, !tbaa !110
  store float %i.bhc, ptr %i.bgz, align 4, !tbaa !110
  %i.bhd = load float, ptr %i.bhb, align 4, !tbaa !110
  %i.bhe = getelementptr inbounds nuw i8, ptr %.711941906.us.i, i64 20
  store float %i.bhd, ptr %i.bhe, align 4, !tbaa !110
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr %i.bha, i64 %i.aoa
  %i.bhg = getelementptr inbounds nuw [4 x i8], ptr %i.bhb, i64 %i.aoa
  %i.bhh = getelementptr inbounds nuw i8, ptr %.711941906.us.i, i64 24
  %i.bhi = load float, ptr %i.bhf, align 4, !tbaa !110
  store float %i.bhi, ptr %i.bhh, align 4, !tbaa !110
  %i.bhj = load float, ptr %i.bhg, align 4, !tbaa !110
  %i.bhk = getelementptr inbounds nuw i8, ptr %.711941906.us.i, i64 28
  store float %i.bhj, ptr %i.bhk, align 4, !tbaa !110
  %i.bhl = getelementptr inbounds nuw i8, ptr %.711941906.us.i, i64 32 ; 2 uses
  %indvars.iv.next2350.i.1 = add nuw nsw i64 %indvars.iv2349.i, 2 ; 2 uses
  %exitcond2353.not.i.1 = icmp eq i64 %indvars.iv.next2350.i.1, %wide.trip.count2329.i
  br i1 %exitcond2353.not.i.1, label %._crit_edge1908.us.i, label %vec.epilog.scalar.ph391, !llvm.loop !128

._crit_edge1908.us.i:                             ; preds = %vec.epilog.scalar.ph391.prol.loopexit, %vec.epilog.scalar.ph391, %vec.epilog.middle.block405, %middle.block387
  %.lcssa272 = phi ptr [ %i.bfs, %vec.epilog.middle.block405 ], [ %i.bfj, %middle.block387 ], [ %.lcssa528.unr, %vec.epilog.scalar.ph391.prol.loopexit ], [ %i.bhl, %vec.epilog.scalar.ph391 ] ; 2 uses
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %.312051910.us.i, i64 %i.aoc ; 2 uses
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %.312011911.us.i, i64 %i.aoc ; 2 uses
  %i.bho = add nuw nsw i32 %.311851913.us.i, 2    ; 3 uses
  %i.bhp = or disjoint i32 %i.bho, 1
  %i.bhq = icmp slt i32 %i.bhp, %i.n
  br i1 %i.bhq, label %iter.check390, label %.preheader1560.i, !llvm.loop !129

.preheader1560.i:                                 ; preds = %._crit_edge1908.us.i, %.preheader1561.i
  %.31205.lcssa.i = phi ptr [ %.21204.lcssa.i, %.preheader1561.i ], [ %i.bhm, %._crit_edge1908.us.i ] ; 9 uses
  %.31201.lcssa.i = phi ptr [ %.21200.lcssa.i, %.preheader1561.i ], [ %i.bhn, %._crit_edge1908.us.i ] ; 9 uses
  %.61193.lcssa.i = phi ptr [ %.41191.lcssa.i, %.preheader1561.i ], [ %.lcssa272, %._crit_edge1908.us.i ]
  %.31185.lcssa.i = phi i32 [ %.21184.lcssa.i, %.preheader1561.i ], [ %i.bho, %._crit_edge1908.us.i ] ; 2 uses
  %i.bhr = icmp sge i32 %.31185.lcssa.i, %i.n
  %brmerge2004.i = or i1 %i.aod, %i.bhr
  br i1 %brmerge2004.i, label %._crit_edge1928.split.i, label %.preheader1555.i.preheader

.preheader1555.i.preheader:                       ; preds = %.preheader1560.i
  %scevgep326 = getelementptr i8, ptr %.31201.lcssa.i, i64 %i.aou
  %scevgep327 = getelementptr i8, ptr %.31205.lcssa.i, i64 %i.aou
  br label %iter.check

iter.check:                                       ; preds = %.preheader1555.i.preheader, %._crit_edge1924.i
  %.411861927.i = phi i32 [ %i.bik, %._crit_edge1924.i ], [ %.31185.lcssa.i, %.preheader1555.i.preheader ]
  %.911961926.i = phi ptr [ %.lcssa276, %._crit_edge1924.i ], [ %.61193.lcssa.i, %.preheader1555.i.preheader ] ; 9 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck
end_hunk_1
begin_hunk_2_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  br i1 %i.ayf, label %.preheader1548.us.i, label %.preheader1548.preheader.i

.preheader1548.preheader.i:                       ; preds = %.preheader1548.lr.ph.i, %.preheader1553.thread.i
  %.01143.lcssa26032611.i = phi ptr [ %.01143.lcssa.i, %.preheader1548.lr.ph.i ], [ %scevgep2366.i, %.preheader1553.thread.i ]
  %.01138.lcssa26042610.i = phi ptr [ %.01138.lcssa.i, %.preheader1548.lr.ph.i ], [ %i.bkf, %.preheader1553.thread.i ]
  %.01133.lcssa26052609.i = phi i32 [ %.01133.lcssa.i, %.preheader1548.lr.ph.i ], [ %i.ayx, %.preheader1553.thread.i ] ; 2 uses
  %i.blu = sub i32 %i.ayy, %.01133.lcssa26052609.i ; 2 uses
  %i.blv = lshr i32 %i.blu, 1
  %i.blw = and i32 %i.blv, 2147483644
  %narrow2445.i = add nuw i32 %i.blw, 4
  %i.blx = zext i32 %narrow2445.i to i64
  %i.bly = mul nsw i64 %i.blx, %i.ayj
  %scevgep2372.i = getelementptr i8, ptr %.01143.lcssa26032611.i, i64 %i.bly
  %i.blz = add i32 %.01133.lcssa26052609.i, 8
  %i.bma = and i32 %i.blu, -8
  %i.bmb = add i32 %i.blz, %i.bma
  br label %.preheader1552.i

.preheader1548.us.i:                              ; preds = %.preheader1548.lr.ph.i, %._crit_edge1946.us.i
  %.111341950.us.i = phi i32 [ %i.bnl, %._crit_edge1946.us.i ], [ %.01133.lcssa.i, %.preheader1548.lr.ph.i ]
  %.211401949.us.i = phi ptr [ %.lcssa507, %._crit_edge1946.us.i ], [ %.01138.lcssa.i, %.preheader1548.lr.ph.i ] ; 2 uses
  %.111441948.us.i = phi ptr [ %i.bnk, %._crit_edge1946.us.i ], [ %.01143.lcssa.i, %.preheader1548.lr.ph.i ] ; 10 uses
  br i1 %i.azi, label %.epil.preheader675, label %.preheader1548.us.i.new

.preheader1548.us.i.new:                          ; preds = %.preheader1548.us.i, %.preheader1548.us.i.new
  %indvars.iv2373.i = phi i64 [ %indvars.iv.next2374.i.7, %.preheader1548.us.i.new ], [ 0, %.preheader1548.us.i ] ; 9 uses
  %.311411944.us.i = phi ptr [ %i.bng, %.preheader1548.us.i.new ], [ %.211401949.us.i, %.preheader1548.us.i ] ; 9 uses
  %niter682 = phi i64 [ %niter682.next.7, %.preheader1548.us.i.new ], [ 0, %.preheader1548.us.i ]
  %i.bmc = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2373.i
  %i.bmd = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bmc, <8 x i32> %i.aya, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bmd, ptr %.311411944.us.i, align 1, !tbaa !50
  %i.bme = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 32
  %i.bmf = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2373.i
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmf, i64 4
  %i.bmh = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bmg, <8 x i32> %i.aya, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bmh, ptr %i.bme, align 1, !tbaa !50
  %i.bmi = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 64
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2373.i
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmj, i64 8
  %i.bml = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bmk, <8 x i32> %i.aya, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bml, ptr %i.bmi, align 1, !tbaa !50
  %i.bmm = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 96
  %i.bmn = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2373.i
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmn, i64 12
  %i.bmp = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bmo, <8 x i32> %i.aya, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bmp, ptr %i.bmm, align 1, !tbaa !50
  %i.bmq = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 128
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2373.i
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 16
  %i.bmt = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bms, <8 x i32> %i.aya, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bmt, ptr %i.bmq, align 1, !tbaa !50
  %i.bmu = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 160
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2373.i
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 20
  %i.bmx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bmw, <8 x i32> %i.aya, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bmx, ptr %i.bmu, align 1, !tbaa !50
  %i.bmy = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 192
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2373.i
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmz, i64 24
  %i.bnb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bna, <8 x i32> %i.aya, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bnb, ptr %i.bmy, align 1, !tbaa !50
  %i.bnc = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 224
  %i.bnd = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2373.i
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 28
  %i.bnf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bne, <8 x i32> %i.aya, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bnf, ptr %i.bnc, align 1, !tbaa !50
  %i.bng = getelementptr inbounds nuw i8, ptr %.311411944.us.i, i64 256 ; 3 uses
  %indvars.iv.next2374.i.7 = add nuw nsw i64 %indvars.iv2373.i, 8 ; 2 uses
  %niter682.next.7 = add i64 %niter682, 8         ; 2 uses
  %niter682.ncmp.7 = icmp eq i64 %niter682.next.7, %unroll_iter681
  br i1 %niter682.ncmp.7, label %._crit_edge1946.us.i.unr-lcssa, label %.preheader1548.us.i.new, !llvm.loop !150

._crit_edge1946.us.i.unr-lcssa:                   ; preds = %.preheader1548.us.i.new
  br i1 %lcmp.mod678.not, label %._crit_edge1946.us.i, label %.epil.preheader675

.epil.preheader675:                               ; preds = %._crit_edge1946.us.i.unr-lcssa, %.preheader1548.us.i
  %indvars.iv2373.i.epil.init = phi i64 [ 0, %.preheader1548.us.i ], [ %indvars.iv.next2374.i.7, %._crit_edge1946.us.i.unr-lcssa ]
  %.311411944.us.i.epil.init = phi ptr [ %.211401949.us.i, %.preheader1548.us.i ], [ %i.bng, %._crit_edge1946.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod680)
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.epil.preheader675
  %indvars.iv2373.i.epil = phi i64 [ %indvars.iv2373.i.epil.init, %.epil.preheader675 ], [ %indvars.iv.next2374.i.epil, %bb.br ] ; 2 uses
  %.311411944.us.i.epil = phi ptr [ %.311411944.us.i.epil.init, %.epil.preheader675 ], [ %i.bnj, %bb.br ] ; 2 uses
  %epil.iter677 = phi i64 [ 0, %.epil.preheader675 ], [ %epil.iter677.next, %bb.br ]
  %i.bnh = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %indvars.iv2373.i.epil
  %i.bni = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bnh, <8 x i32> %i.aya, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bni, ptr %.311411944.us.i.epil, align 1, !tbaa !50
  %i.bnj = getelementptr inbounds nuw i8, ptr %.311411944.us.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2374.i.epil = add nuw nsw i64 %indvars.iv2373.i.epil, 1
  %epil.iter677.next = add i64 %epil.iter677, 1   ; 2 uses
  %epil.iter677.cmp.not = icmp eq i64 %epil.iter677.next, %xtraiter676
  br i1 %epil.iter677.cmp.not, label %._crit_edge1946.us.i, label %bb.br, !llvm.loop !151

._crit_edge1946.us.i:                             ; preds = %bb.br, %._crit_edge1946.us.i.unr-lcssa
  %.lcssa507 = phi ptr [ %i.bng, %._crit_edge1946.us.i.unr-lcssa ], [ %i.bnj, %bb.br ] ; 2 uses
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %.111441948.us.i, i64 %i.ayj ; 2 uses
  %i.bnl = add nuw nsw i32 %.111341950.us.i, 8    ; 3 uses
  %i.bnm = or disjoint i32 %i.bnl, 7
  %i.bnn = icmp slt i32 %i.bnm, %i.n
  br i1 %i.bnn, label %.preheader1548.us.i, label %.preheader1552.i, !llvm.loop !152

.preheader1552.i:                                 ; preds = %._crit_edge1946.us.i, %.preheader1548.preheader.i, %.preheader1553.thread.i, %.preheader1553.i
  %.11144.lcssa.i = phi ptr [ %.01143.lcssa.i, %.preheader1553.i ], [ %scevgep2366.i, %.preheader1553.thread.i ], [ %scevgep2372.i, %.preheader1548.preheader.i ], [ %i.bnk, %._crit_edge1946.us.i ] ; 2 uses
  %.21140.lcssa.i = phi ptr [ %.01138.lcssa.i, %.preheader1553.i ], [ %i.bkf, %.preheader1553.thread.i ], [ %.01138.lcssa26042610.i, %.preheader1548.preheader.i ], [ %.lcssa507, %._crit_edge1946.us.i ] ; 2 uses
  %.11134.lcssa.i = phi i32 [ %.01133.lcssa.i, %.preheader1553.i ], [ %i.ayx, %.preheader1553.thread.i ], [ %i.bmb, %.preheader1548.preheader.i ], [ %i.bnl, %._crit_edge1946.us.i ] ; 3 uses
  %i.bno = or disjoint i32 %.11134.lcssa.i, 3
  %i.bnp = icmp slt i32 %i.bno, %i.n
  br i1 %i.bnp, label %.preheader1547.lr.ph.i, label %.preheader1551.i

.preheader1547.lr.ph.i:                           ; preds = %.preheader1552.i
  br i1 %i.ayf, label %.preheader1547.us.i, label %._crit_edge1992.split.i

.preheader1547.us.i:                              ; preds = %.preheader1547.lr.ph.i, %._crit_edge1959.us.i
  %.211351963.us.i = phi i32 [ %i.boz, %._crit_edge1959.us.i ], [ %.11134.lcssa.i, %.preheader1547.lr.ph.i ]
  %.411421962.us.i = phi ptr [ %.lcssa510, %._crit_edge1959.us.i ], [ %.21140.lcssa.i, %.preheader1547.lr.ph.i ] ; 2 uses
  %.211451961.us.i = phi ptr [ %i.boy, %._crit_edge1959.us.i ], [ %.11144.lcssa.i, %.preheader1547.lr.ph.i ] ; 10 uses
  br i1 %i.azj, label %.epil.preheader683, label %.preheader1547.us.i.new

.preheader1547.us.i.new:                          ; preds = %.preheader1547.us.i, %.preheader1547.us.i.new
  %indvars.iv2380.i = phi i64 [ %indvars.iv.next2381.i.7, %.preheader1547.us.i.new ], [ 0, %.preheader1547.us.i ] ; 9 uses
  %.51957.us.i = phi ptr [ %i.bou, %.preheader1547.us.i.new ], [ %.411421962.us.i, %.preheader1547.us.i ] ; 9 uses
  %niter690 = phi i64 [ %niter690.next.7, %.preheader1547.us.i.new ], [ 0, %.preheader1547.us.i ]
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2380.i
  %i.bnr = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bnq, <4 x i32> %i.axx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bnr, ptr %.51957.us.i, align 1, !tbaa !50
  %i.bns = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 16
  %i.bnt = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2380.i
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnt, i64 4
  %i.bnv = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bnu, <4 x i32> %i.axx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bnv, ptr %i.bns, align 1, !tbaa !50
  %i.bnw = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 32
  %i.bnx = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2380.i
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnx, i64 8
  %i.bnz = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bny, <4 x i32> %i.axx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bnz, ptr %i.bnw, align 1, !tbaa !50
  %i.boa = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 48
  %i.bob = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2380.i
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bob, i64 12
  %i.bod = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.boc, <4 x i32> %i.axx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bod, ptr %i.boa, align 1, !tbaa !50
  %i.boe = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 64
  %i.bof = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2380.i
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 16
  %i.boh = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bog, <4 x i32> %i.axx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.boh, ptr %i.boe, align 1, !tbaa !50
  %i.boi = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 80
  %i.boj = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2380.i
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boj, i64 20
  %i.bol = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bok, <4 x i32> %i.axx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bol, ptr %i.boi, align 1, !tbaa !50
  %i.bom = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 96
  %i.bon = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2380.i
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 24
  %i.bop = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.boo, <4 x i32> %i.axx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bop, ptr %i.bom, align 1, !tbaa !50
  %i.boq = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 112
  %i.bor = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2380.i
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 28
  %i.bot = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bos, <4 x i32> %i.axx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bot, ptr %i.boq, align 1, !tbaa !50
  %i.bou = getelementptr inbounds nuw i8, ptr %.51957.us.i, i64 128 ; 3 uses
  %indvars.iv.next2381.i.7 = add nuw nsw i64 %indvars.iv2380.i, 8 ; 2 uses
  %niter690.next.7 = add i64 %niter690, 8         ; 2 uses
  %niter690.ncmp.7 = icmp eq i64 %niter690.next.7, %unroll_iter689
  br i1 %niter690.ncmp.7, label %._crit_edge1959.us.i.unr-lcssa, label %.preheader1547.us.i.new, !llvm.loop !153

._crit_edge1959.us.i.unr-lcssa:                   ; preds = %.preheader1547.us.i.new
  br i1 %lcmp.mod686.not, label %._crit_edge1959.us.i, label %.epil.preheader683

.epil.preheader683:                               ; preds = %._crit_edge1959.us.i.unr-lcssa, %.preheader1547.us.i
  %indvars.iv2380.i.epil.init = phi i64 [ 0, %.preheader1547.us.i ], [ %indvars.iv.next2381.i.7, %._crit_edge1959.us.i.unr-lcssa ]
  %.51957.us.i.epil.init = phi ptr [ %.411421962.us.i, %.preheader1547.us.i ], [ %i.bou, %._crit_edge1959.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod688)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader683
  %indvars.iv2380.i.epil = phi i64 [ %indvars.iv2380.i.epil.init, %.epil.preheader683 ], [ %indvars.iv.next2381.i.epil, %bb.bs ] ; 2 uses
  %.51957.us.i.epil = phi ptr [ %.51957.us.i.epil.init, %.epil.preheader683 ], [ %i.box, %bb.bs ] ; 2 uses
  %epil.iter685 = phi i64 [ 0, %.epil.preheader683 ], [ %epil.iter685.next, %bb.bs ]
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %indvars.iv2380.i.epil
  %i.bow = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bov, <4 x i32> %i.axx, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.bow, ptr %.51957.us.i.epil, align 1, !tbaa !50
  %i.box = getelementptr inbounds nuw i8, ptr %.51957.us.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2381.i.epil = add nuw nsw i64 %indvars.iv2380.i.epil, 1
  %epil.iter685.next = add i64 %epil.iter685, 1   ; 2 uses
  %epil.iter685.cmp.not = icmp eq i64 %epil.iter685.next, %xtraiter684
  br i1 %epil.iter685.cmp.not, label %._crit_edge1959.us.i, label %bb.bs, !llvm.loop !154

._crit_edge1959.us.i:                             ; preds = %bb.bs, %._crit_edge1959.us.i.unr-lcssa
  %.lcssa510 = phi ptr [ %i.bou, %._crit_edge1959.us.i.unr-lcssa ], [ %i.box, %bb.bs ] ; 2 uses
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %.211451961.us.i, i64 %i.ayl ; 2 uses
  %i.boz = add nuw nsw i32 %.211351963.us.i, 4    ; 3 uses
  %i.bpa = or disjoint i32 %i.boz, 3
  %i.bpb = icmp slt i32 %i.bpa, %i.n
  br i1 %i.bpb, label %.preheader1547.us.i, label %.preheader1551.i, !llvm.loop !155

.preheader1551.i:                                 ; preds = %._crit_edge1959.us.i, %.preheader1552.i
  %.21145.lcssa.i = phi ptr [ %.11144.lcssa.i, %.preheader1552.i ], [ %i.boy, %._crit_edge1959.us.i ] ; 6 uses
  %.41142.lcssa.i = phi ptr [ %.21140.lcssa.i, %.preheader1552.i ], [ %.lcssa510, %._crit_edge1959.us.i ] ; 2 uses
  %.21135.lcssa.i = phi i32 [ %.11134.lcssa.i, %.preheader1552.i ], [ %i.boz, %._crit_edge1959.us.i ] ; 4 uses
  %i.bpc = or disjoint i32 %.21135.lcssa.i, 1
  %i.bpd = icmp slt i32 %i.bpc, %i.n
  br i1 %i.bpd, label %.preheader1546.lr.ph.i, label %.preheader1550.i

.preheader1546.lr.ph.i:                           ; preds = %.preheader1551.i
  br i1 %i.ayf, label %.preheader1546.us.i.preheader, label %._crit_edge1992.split.i

.preheader1546.us.i.preheader:                    ; preds = %.preheader1546.lr.ph.i
  %scevgep445 = getelementptr i8, ptr %.21145.lcssa.i, i64 %i.azd
  %i.bpe = getelementptr i8, ptr %.21145.lcssa.i, i64 %i.azd
  %scevgep446 = getelementptr i8, ptr %i.bpe, i64 %i.aze
  %i.bpf = sub i32 %3, %.21135.lcssa.i
  %i.bpg = lshr i32 %i.bpf, 1
  %i.bph = zext nneg i32 %i.bpg to i64
  %i.bpi = mul i64 %i.azf, %i.bph                 ; 2 uses
  %scevgep448.a = getelementptr i8, ptr %scevgep446, i64 %i.bpi
  %scevgep449.a = getelementptr i8, ptr %.21145.lcssa.i, i64 %i.aze
  %scevgep450 = getelementptr i8, ptr %scevgep449.a, i64 %i.bpi
  br label %iter.check479

iter.check479:                                    ; preds = %.preheader1546.us.i.preheader, %._crit_edge1975.us.i
  %.311361979.us.i = phi i32 [ %i.brh, %._crit_edge1975.us.i ], [ %.21135.lcssa.i, %.preheader1546.us.i.preheader ]
  %.61978.us.i = phi ptr [ %.lcssa257, %._crit_edge1975.us.i ], [ %.41142.lcssa.i, %.preheader1546.us.i.preheader ] ; 10 uses
  %.311461977.us.i = phi ptr [ %i.brg, %._crit_edge1975.us.i ], [ %.21145.lcssa.i, %.preheader1546.us.i.preheader ] ; 8 uses
  br i1 %min.iters.check460, label %vec.epilog.scalar.ph480.preheader, label %vector.memcheck443

vector.memcheck443:                               ; preds = %iter.check479
  %scevgep444 = getelementptr i8, ptr %.61978.us.i, i64 %i.azc ; 2 uses
  %bound0451 = icmp ult ptr %.61978.us.i, %scevgep448.a
  %bound1452 = icmp ult ptr %scevgep445, %scevgep444
  %found.conflict453 = and i1 %bound0451, %bound1452
  %bound0455 = icmp ult ptr %.61978.us.i, %scevgep450
  %bound1456 = icmp ult ptr %.21145.lcssa.i, %scevgep444
  %found.conflict457 = and i1 %bound0455, %bound1456
  %i.bpj = or i1 %found.conflict457, %stride.check458
  %conflict.rdx459 = or i1 %found.conflict453, %i.bpj
  br i1 %conflict.rdx459, label %vec.epilog.scalar.ph480.preheader, label %vector.main.loop.iter.check461

vector.main.loop.iter.check461:                   ; preds = %vector.memcheck443
  br i1 %min.iters.check462, label %vec.epilog.ph483, label %vector.ph463

vector.ph463:                                     ; preds = %vector.main.loop.iter.check461
  %i.bpk = getelementptr i8, ptr %.61978.us.i, i64 %i.azl ; 2 uses
  br label %vector.body465

vector.body465:                                   ; preds = %vector.body465, %vector.ph463
  %index466 = phi i64 [ 0, %vector.ph463 ], [ %index.next475, %vector.body465 ] ; 3 uses
  %i.bpl = shl i64 %index466, 3                   ; 2 uses
  %next.gep467.a = getelementptr i8, ptr %.61978.us.i, i64 %i.bpl
  %i.bpm = getelementptr i8, ptr %.61978.us.i, i64 %i.bpl
  %next.gep468 = getelementptr i8, ptr %i.bpm, i64 128
  %i.bpn = getelementptr inbounds nuw [4 x i8], ptr %.311461977.us.i, i64 %index466 ; 3 uses
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpn, i64 64
  %wide.load469.a = load <16 x float>, ptr %i.bpn, align 4, !tbaa !110, !alias.scope !156
  %wide.load470.a = load <16 x float>, ptr %i.bpo, align 4, !tbaa !110, !alias.scope !156
  %i.bpp = getelementptr inbounds nuw [4 x i8], ptr %i.bpn, i64 %i.aym ; 2 uses
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 64
  %wide.load471.a = load <16 x float>, ptr %i.bpp, align 4, !tbaa !110, !alias.scope !159
  %wide.load472 = load <16 x float>, ptr %i.bpq, align 4, !tbaa !110, !alias.scope !159
  %interleaved.vec473.a = shufflevector <16 x float> %wide.load469.a, <16 x float> %wide.load471.a, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x float> %interleaved.vec473.a, ptr %next.gep467.a, align 4, !tbaa !110, !alias.scope !161, !noalias !163
  %interleaved.vec474 = shufflevector <16 x float> %wide.load470.a, <16 x float> %wide.load472, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x float> %interleaved.vec474, ptr %next.gep468, align 4, !tbaa !110, !alias.scope !161, !noalias !163
  %index.next475 = add nuw i64 %index466, 32      ; 2 uses
  %i.bpr = icmp eq i64 %index.next475, %n.vec464
  br i1 %i.bpr, label %middle.block476, label %vector.body465, !llvm.loop !164

middle.block476:                                  ; preds = %vector.body465
  br i1 %cmp.n477, label %._crit_edge1975.us.i, label %vec.epilog.iter.check481

vec.epilog.iter.check481:                         ; preds = %middle.block476
  br i1 %min.epilog.iters.check482, label %vec.epilog.scalar.ph480.preheader, label %vec.epilog.ph483, !prof !165

vec.epilog.ph483:                                 ; preds = %vector.main.loop.iter.check461, %vec.epilog.iter.check481
  %vec.epilog.resume.val478 = phi i64 [ %n.vec464, %vec.epilog.iter.check481 ], [ 0, %vector.main.loop.iter.check461 ]
  %i.bps = getelementptr i8, ptr %.61978.us.i, i64 %i.azm ; 2 uses
  br label %vec.epilog.vector.body485

vec.epilog.vector.body485:                        ; preds = %vec.epilog.vector.body485, %vec.epilog.ph483
  %index486 = phi i64 [ %vec.epilog.resume.val478, %vec.epilog.ph483 ], [ %index.next491, %vec.epilog.vector.body485 ] ; 3 uses
  %i.bpt = shl i64 %index486, 3
  %next.gep487 = getelementptr i8, ptr %.61978.us.i, i64 %i.bpt
  %i.bpu = getelementptr inbounds nuw [4 x i8], ptr %.311461977.us.i, i64 %index486 ; 2 uses
  %wide.load488.a = load <8 x float>, ptr %i.bpu, align 4, !tbaa !110, !alias.scope !156
  %i.bpv = getelementptr inbounds nuw [4 x i8], ptr %i.bpu, i64 %i.aym
  %wide.load489 = load <8 x float>, ptr %i.bpv, align 4, !tbaa !110, !alias.scope !159
  %interleaved.vec490 = shufflevector <8 x float> %wide.load488.a, <8 x float> %wide.load489, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec490, ptr %next.gep487, align 4, !tbaa !110, !alias.scope !161, !noalias !163
  %index.next491 = add nuw i64 %index486, 8       ; 2 uses
  %i.bpw = icmp eq i64 %index.next491, %n.vec484
  br i1 %i.bpw, label %vec.epilog.middle.block492, label %vec.epilog.vector.body485, !llvm.loop !166

vec.epilog.middle.block492:                       ; preds = %vec.epilog.vector.body485
  br i1 %cmp.n493, label %._crit_edge1975.us.i, label %vec.epilog.scalar.ph480.preheader

vec.epilog.scalar.ph480.preheader:                ; preds = %vector.memcheck443, %iter.check479, %vec.epilog.iter.check481, %vec.epilog.middle.block492
  %indvars.iv2387.i.ph = phi i64 [ 0, %iter.check479 ], [ 0, %vector.memcheck443 ], [ %n.vec464, %vec.epilog.iter.check481 ], [ %n.vec484, %vec.epilog.middle.block492 ] ; 3 uses
  %.71973.us.i.ph = phi ptr [ %.61978.us.i, %iter.check479 ], [ %.61978.us.i, %vector.memcheck443 ], [ %i.bpk, %vec.epilog.iter.check481 ], [ %i.bps, %vec.epilog.middle.block492 ] ; 2 uses
  br i1 %lcmp.mod692.not, label %vec.epilog.scalar.ph480.prol.loopexit, label %vec.epilog.scalar.ph480.prol

vec.epilog.scalar.ph480.prol:                     ; preds = %vec.epilog.scalar.ph480.preheader, %vec.epilog.scalar.ph480.prol
  %indvars.iv2387.i.prol = phi i64 [ %indvars.iv.next2388.i.prol, %vec.epilog.scalar.ph480.prol ], [ %indvars.iv2387.i.ph, %vec.epilog.scalar.ph480.preheader ] ; 2 uses
  %.71973.us.i.prol = phi ptr [ %i.bqc, %vec.epilog.scalar.ph480.prol ], [ %.71973.us.i.ph, %vec.epilog.scalar.ph480.preheader ] ; 3 uses
  %prol.iter693 = phi i64 [ %prol.iter693.next, %vec.epilog.scalar.ph480.prol ], [ 0, %vec.epilog.scalar.ph480.preheader ]
  %i.bpx = getelementptr inbounds nuw [4 x i8], ptr %.311461977.us.i, i64 %indvars.iv2387.i.prol ; 2 uses
  %i.bpy = load float, ptr %i.bpx, align 4, !tbaa !110
  store float %i.bpy, ptr %.71973.us.i.prol, align 4, !tbaa !110
  %i.bpz = getelementptr inbounds nuw [4 x i8], ptr %i.bpx, i64 %i.aym
  %i.bqa = getelementptr inbounds nuw i8, ptr %.71973.us.i.prol, i64 4
  %i.bqb = load float, ptr %i.bpz, align 4, !tbaa !110
  store float %i.bqb, ptr %i.bqa, align 4, !tbaa !110
  %i.bqc = getelementptr inbounds nuw i8, ptr %.71973.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next2388.i.prol = add nuw nsw i64 %indvars.iv2387.i.prol, 1 ; 2 uses
  %prol.iter693.next = add i64 %prol.iter693, 1   ; 2 uses
  %prol.iter693.cmp.not = icmp eq i64 %prol.iter693.next, %xtraiter691
  br i1 %prol.iter693.cmp.not, label %vec.epilog.scalar.ph480.prol.loopexit, label %vec.epilog.scalar.ph480.prol, !llvm.loop !167

vec.epilog.scalar.ph480.prol.loopexit:            ; preds = %vec.epilog.scalar.ph480.prol, %vec.epilog.scalar.ph480.preheader
  %.lcssa513.unr = phi ptr [ poison, %vec.epilog.scalar.ph480.preheader ], [ %i.bqc, %vec.epilog.scalar.ph480.prol ]
  %indvars.iv2387.i.unr = phi i64 [ %indvars.iv2387.i.ph, %vec.epilog.scalar.ph480.preheader ], [ %indvars.iv.next2388.i.prol, %vec.epilog.scalar.ph480.prol ]
  %.71973.us.i.unr = phi ptr [ %.71973.us.i.ph, %vec.epilog.scalar.ph480.preheader ], [ %i.bqc, %vec.epilog.scalar.ph480.prol ]
  %i.bqd = sub nsw i64 %indvars.iv2387.i.ph, %wide.trip.count2370.i
  %i.bqe = icmp ugt i64 %i.bqd, -4
  br i1 %i.bqe, label %._crit_edge1975.us.i, label %vec.epilog.scalar.ph480

vec.epilog.scalar.ph480:                          ; preds = %vec.epilog.scalar.ph480.prol.loopexit, %vec.epilog.scalar.ph480
  %indvars.iv2387.i = phi i64 [ %indvars.iv.next2388.i.3, %vec.epilog.scalar.ph480 ], [ %indvars.iv2387.i.unr, %vec.epilog.scalar.ph480.prol.loopexit ] ; 5 uses
  %.71973.us.i = phi ptr [ %i.brf, %vec.epilog.scalar.ph480 ], [ %.71973.us.i.unr, %vec.epilog.scalar.ph480.prol.loopexit ] ; 9 uses
  %i.bqf = getelementptr inbounds nuw [4 x i8], ptr %.311461977.us.i, i64 %indvars.iv2387.i ; 2 uses
  %i.bqg = load float, ptr %i.bqf, align 4, !tbaa !110
  store float %i.bqg, ptr %.71973.us.i, align 4, !tbaa !110
  %i.bqh = getelementptr inbounds nuw [4 x i8], ptr %i.bqf, i64 %i.aym
  %i.bqi = getelementptr inbounds nuw i8, ptr %.71973.us.i, i64 4
  %i.bqj = load float, ptr %i.bqh, align 4, !tbaa !110
  store float %i.bqj, ptr %i.bqi, align 4, !tbaa !110
  %i.bqk = getelementptr inbounds nuw i8, ptr %.71973.us.i, i64 8
  %i.bql = getelementptr inbounds nuw [4 x i8], ptr %.311461977.us.i, i64 %indvars.iv2387.i
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 4 ; 2 uses
  %i.bqn = load float, ptr %i.bqm, align 4, !tbaa !110
  store float %i.bqn, ptr %i.bqk, align 4, !tbaa !110
  %i.bqo = getelementptr inbounds nuw [4 x i8], ptr %i.bqm, i64 %i.aym
  %i.bqp = getelementptr inbounds nuw i8, ptr %.71973.us.i, i64 12
  %i.bqq = load float, ptr %i.bqo, align 4, !tbaa !110
  store float %i.bqq, ptr %i.bqp, align 4, !tbaa !110
  %i.bqr = getelementptr inbounds nuw i8, ptr %.71973.us.i, i64 16
  %i.bqs = getelementptr inbounds nuw [4 x i8], ptr %.311461977.us.i, i64 %indvars.iv2387.i
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 8 ; 2 uses
  %i.bqu = load float, ptr %i.bqt, align 4, !tbaa !110
  store float %i.bqu, ptr %i.bqr, align 4, !tbaa !110
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %i.bqt, i64 %i.aym
  %i.bqw = getelementptr inbounds nuw i8, ptr %.71973.us.i, i64 20
  %i.bqx = load float, ptr %i.bqv, align 4, !tbaa !110
  store float %i.bqx, ptr %i.bqw, align 4, !tbaa !110
  %i.bqy = getelementptr inbounds nuw i8, ptr %.71973.us.i, i64 24
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %.311461977.us.i, i64 %indvars.iv2387.i
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 12 ; 2 uses
  %i.brb = load float, ptr %i.bra, align 4, !tbaa !110
  store float %i.brb, ptr %i.bqy, align 4, !tbaa !110
  %i.brc = getelementptr inbounds nuw [4 x i8], ptr %i.bra, i64 %i.aym
  %i.brd = getelementptr inbounds nuw i8, ptr %.71973.us.i, i64 28
  %i.bre = load float, ptr %i.brc, align 4, !tbaa !110
  store float %i.bre, ptr %i.brd, align 4, !tbaa !110
  %i.brf = getelementptr inbounds nuw i8, ptr %.71973.us.i, i64 32 ; 2 uses
  %indvars.iv.next2388.i.3 = add nuw nsw i64 %indvars.iv2387.i, 4 ; 2 uses
  %exitcond2391.not.i.3 = icmp eq i64 %indvars.iv.next2388.i.3, %wide.trip.count2370.i
  br i1 %exitcond2391.not.i.3, label %._crit_edge1975.us.i, label %vec.epilog.scalar.ph480, !llvm.loop !168

._crit_edge1975.us.i:                             ; preds = %vec.epilog.scalar.ph480.prol.loopexit, %vec.epilog.scalar.ph480, %vec.epilog.middle.block492, %middle.block476
  %.lcssa257 = phi ptr [ %i.bps, %vec.epilog.middle.block492 ], [ %i.bpk, %middle.block476 ], [ %.lcssa513.unr, %vec.epilog.scalar.ph480.prol.loopexit ], [ %i.brf, %vec.epilog.scalar.ph480 ] ; 2 uses
  %i.brg = getelementptr inbounds nuw [4 x i8], ptr %.311461977.us.i, i64 %i.ayo ; 2 uses
  %i.brh = add nuw nsw i32 %.311361979.us.i, 2    ; 3 uses
  %i.bri = or disjoint i32 %i.brh, 1
  %i.brj = icmp slt i32 %i.bri, %i.n
  br i1 %i.brj, label %iter.check479, label %.preheader1550.i, !llvm.loop !169

.preheader1550.i:                                 ; preds = %._crit_edge1975.us.i, %.preheader1551.i
  %.31146.lcssa.i = phi ptr [ %.21145.lcssa.i, %.preheader1551.i ], [ %i.brg, %._crit_edge1975.us.i ] ; 12 uses
  %.6.lcssa.i = phi ptr [ %.41142.lcssa.i, %.preheader1551.i ], [ %.lcssa257, %._crit_edge1975.us.i ]
  %.31136.lcssa.i = phi i32 [ %.21135.lcssa.i, %.preheader1551.i ], [ %i.brh, %._crit_edge1975.us.i ] ; 2 uses
  %i.brk = icmp sge i32 %.31136.lcssa.i, %i.n
  %brmerge2007.i = or i1 %i.ayp, %i.brk
  br i1 %brmerge2007.i, label %._crit_edge1992.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader1550.i
  %.31146.lcssa.i410 = ptrtoaddr ptr %.31146.lcssa.i to i64
  br label %iter.check428

iter.check428:                                    ; preds = %.preheader.i.preheader, %._crit_edge1988.i
  %.411371991.i = phi i32 [ %i.bsf, %._crit_edge1988.i ], [ %.31136.lcssa.i, %.preheader.i.preheader ]
  %.91990.i = phi ptr [ %.lcssa260, %._crit_edge1988.i ], [ %.6.lcssa.i, %.preheader.i.preheader ] ; 6 uses
  %.91990.i411 = ptrtoaddr ptr %.91990.i to i64
  %i.brl = sub i64 %.31146.lcssa.i410, %.91990.i411
  %diff.check = icmp ugt i64 %i.brl, -256
  %or.cond = select i1 %min.iters.check412, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph429.preheader, label %vector.main.loop.iter.check413

vector.main.loop.iter.check413:                   ; preds = %iter.check428
  br i1 %min.iters.check414, label %vec.epilog.ph432, label %vector.ph415

vector.ph415:                                     ; preds = %vector.main.loop.iter.check413
  %i.brm = getelementptr i8, ptr %.91990.i, i64 %i.azo ; 2 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph415
  %index418 = phi i64 [ 0, %vector.ph415 ], [ %index.next424, %vector.body417 ] ; 3 uses
  %i.brn = shl i64 %index418, 2
  %next.gep419 = getelementptr i8, ptr %.91990.i, i64 %i.brn ; 4 uses
  %i.bro = getelementptr inbounds nuw [4 x i8], ptr %.31146.lcssa.i, i64 %index418 ; 4 uses
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 64
  %i.brq = getelementptr inbounds nuw i8, ptr %i.bro, i64 128
  %i.brr = getelementptr inbounds nuw i8, ptr %i.bro, i64 192
  %wide.load420 = load <16 x float>, ptr %i.bro, align 4, !tbaa !110
end_hunk_2
begin_hunk_3_@_ZNK4ncnn24Convolution1D_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  br i1 %i.az, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = and i32 %i.ax, 7
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = and i32 %i.ax, 3
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = select i1 %i.bd, i32 4, i32 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0 = phi i32 [ 8, %bb.h ], [ 16, %bb.g ], [ %i.be, %bb.i ], [ 1, %bb.f ] ; 3 uses
  %i.bf = sext i32 %i.t to i64
  %i.bg = udiv i64 %i.v, %i.bf
  %i.bh = zext nneg i32 %.0 to i64
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = add i32 %i.as, %.neg
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !187
  %i.bm = sdiv i32 %i.bj, %i.bl
  %i.bn = add nsw i32 %i.bm, 1
  %i.bo = sdiv i32 %i.ax, %.0
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !193
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bn, i32 noundef %i.bo, i64 noundef %i.bi, i32 noundef %.0, ptr noundef %i.bq)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.br = load ptr, ptr %2, align 8, !tbaa !18
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !180
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bu, %i.bx
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.l:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cd = load i32, ptr %i.y, align 4, !tbaa !44
  %i.ce = load i32, ptr %i.w, align 8, !tbaa !186
  %i.cf = load i32, ptr %i.bk, align 4, !tbaa !187
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !191
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cj = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %i.cd, ptr %i.a, align 4, !tbaa !184
  store i32 %i.ce, ptr %i.b, align 4, !tbaa !184
  store i32 %i.cf, ptr %i.c, align 4, !tbaa !184
  store i32 %i.ch, ptr %i.d, align 4, !tbaa !184
  %i.ck = load i32, ptr %i.ae, align 8, !tbaa !181 ; 12 uses
  %i.cl = load i32, ptr %i.ah, align 8, !tbaa !194
  %i.cm = mul i32 %i.cl, %i.ck                    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.cn = load i32, ptr %i.ag, align 4, !tbaa !179
  %i.co = mul nsw i32 %i.cn, %i.ck
  store i32 %i.co, ptr %i.e, align 4, !tbaa !184
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 7 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !179 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !181 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !194
  %i.cv = mul i32 %i.cu, %i.cs                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.cw = mul nsw i32 %i.cs, %i.cq
  store i32 %i.cw, ptr %i.f, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.cx = load ptr, ptr %i.cc, align 8, !tbaa !18
  store ptr %i.cx, ptr %i.g, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.cy = sdiv i32 %i.cv, 16
  store i32 %i.cy, ptr %i.h, align 4, !tbaa !184
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !197
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cj, i32 %i.da)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %i.cb, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %i.ci, ptr nonnull %i.f)
  %i.db = load i32, ptr %i.h, align 4, !tbaa !184
  %i.dc = shl nsw i32 %i.db, 4                    ; 3 uses
  %i.dd = sub nsw i32 %i.cv, %i.dc                ; 2 uses
  %i.de = sdiv i32 %i.dd, 8                       ; 3 uses
  store i32 %i.de, ptr %i.h, align 4, !tbaa !184
  %i.df = icmp sgt i32 %i.dd, 7
  br i1 %i.df, label %.lr.ph2873.i, label %._crit_edge2874.i

.lr.ph2873.i:                                     ; preds = %bb.l
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dh = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not1505.i = icmp eq ptr %i.dh, null
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dk = load i32, ptr %i.d, align 4
  %i.dl = load i32, ptr %i.cp, align 4, !tbaa !179 ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph2873.split.preheader.i, label %._crit_edge2874.i

.lr.ph2873.split.preheader.i:                     ; preds = %.lr.ph2873.i
  %i.dn = sext i32 %i.dc to i64
  %wide.trip.count3790.i = zext nneg i32 %i.de to i64
  br label %.lr.ph2873.split.i

._crit_edge2874.i:                                ; preds = %._crit_edge.i, %.lr.ph2873.i, %bb.l
  %i.do = shl nsw i32 %i.de, 3
  %i.dp = add nsw i32 %i.do, %i.dc                ; 3 uses
  %i.dq = sub nsw i32 %i.cv, %i.dp                ; 2 uses
  %i.dr = sdiv i32 %i.dq, 4                       ; 3 uses
  store i32 %i.dr, ptr %i.h, align 4, !tbaa !184
  %i.ds = icmp sgt i32 %i.dq, 3
  br i1 %i.ds, label %.lr.ph3120.i, label %._crit_edge3121.i

.lr.ph3120.i:                                     ; preds = %._crit_edge2874.i
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.du = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not1504.i = icmp eq ptr %i.du, null
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dx = load i32, ptr %i.d, align 4
  %i.dy = load i32, ptr %i.cp, align 4, !tbaa !179 ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph3120.split.preheader.i, label %._crit_edge3121.i

.lr.ph3120.split.preheader.i:                     ; preds = %.lr.ph3120.i
  %i.ea = sext i32 %i.dp to i64
  %wide.trip.count3840.i = zext nneg i32 %i.dr to i64
  br label %.lr.ph3120.split.i

.lr.ph2873.splitthread-pre-split.i:               ; preds = %._crit_edge.i
  %.pr.i = load i32, ptr %i.cp, align 4, !tbaa !179
  br label %.lr.ph2873.split.i

.lr.ph2873.split.i:                               ; preds = %.lr.ph2873.splitthread-pre-split.i, %.lr.ph2873.split.preheader.i
  %i.eb = phi i32 [ %.pr.i, %.lr.ph2873.splitthread-pre-split.i ], [ %i.dl, %.lr.ph2873.split.preheader.i ] ; 2 uses
  %indvars.iv3787.i = phi i64 [ %indvars.iv.next3788.i, %.lr.ph2873.splitthread-pre-split.i ], [ 0, %.lr.ph2873.split.preheader.i ] ; 2 uses
  %i.ec = load i32, ptr %i.ae, align 8, !tbaa !181 ; 9 uses
  %i.ed = load i32, ptr %i.ah, align 8, !tbaa !194
  %i.ee = mul i32 %i.ed, %i.ec                    ; 12 uses
  %i.ef = load i32, ptr %i.cr, align 8, !tbaa !181 ; 2 uses
  %i.eg = icmp sgt i32 %i.eb, 0
  br i1 %i.eg, label %.lr.ph2864.i, label %._crit_edge.i

.lr.ph2864.i:                                     ; preds = %.lr.ph2873.split.i
  %i.eh = load ptr, ptr %2, align 8, !tbaa !18
  %i.ei = shl nuw nsw i64 %indvars.iv3787.i, 3
  %i.ej = add nsw i64 %i.ei, %i.dn                ; 2 uses
  %i.ek = trunc nsw i64 %i.ej to i32              ; 3 uses
  %i.el = sdiv i32 %i.ek, %i.ef
  %i.em = sext i32 %i.el to i64
  %i.en = zext nneg i32 %i.eb to i64              ; 2 uses
  %i.eo = mul nsw i64 %i.em, %i.en
  %i.ep = load i64, ptr %i.dg, align 8, !tbaa !49
  %i.eq = mul i64 %i.eo, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eq
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.ej
  %i.et = sdiv i32 %i.ek, 16
  %i.eu = srem i32 %i.ek, 16
  %i.ev = ashr exact i32 %i.eu, 3
  %i.ew = add nsw i32 %i.ev, %i.et
  %i.ex = sext i32 %i.ew to i64
  %i.ey = icmp sgt i32 %i.ee, 15
  %i.ez = load i32, ptr %i.c, align 4             ; 2 uses
  %factor.op.mul2865.i = mul i32 %i.ez, %i.ec     ; 3 uses
  %i.fa = icmp eq i32 %i.ec, 16
  %i.fb = icmp eq i32 %i.ec, 8                    ; 2 uses
  %i.fc = icmp eq i32 %i.ec, 4                    ; 3 uses
  %i.fd = icmp eq i32 %i.ec, 1                    ; 3 uses
  %i.fe = load i32, ptr %i.a, align 4             ; 8 uses
  %i.ff = icmp sgt i32 %i.fe, 0                   ; 2 uses
  %i.fg = load i32, ptr %i.f, align 4             ; 7 uses
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = shl nsw i32 %i.fg, 1
  %i.fj = sext i32 %i.fi to i64
  %i.fk = mul nsw i32 %i.fg, 3
  %i.fl = sext i32 %i.fk to i64
  %i.fm = shl nsw i32 %i.fg, 2
  %i.fn = sext i32 %i.fm to i64
  %i.fo = mul nsw i32 %i.fg, 5
  %i.fp = sext i32 %i.fo to i64
  %i.fq = mul nsw i32 %i.fg, 6
  %i.fr = sext i32 %i.fq to i64
  %i.fs = mul nsw i32 %i.fg, 7
  %i.ft = sext i32 %i.fs to i64
  %i.fu = and i32 %i.ee, -16
  %5 = add i32 %i.ee, -2
  %i.fv = add i32 %i.fe, -1                       ; 2 uses
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = shl nuw nsw i64 %i.fw, 6
  %i.fy = shl nuw nsw i64 %i.fw, 5
  %i.fz = sext i32 %i.ez to i64                   ; 2 uses
  %xtraiter = and i32 %i.fe, 1
  %i.ga = icmp eq i32 %i.fv, 0
  %unroll_iter = and i32 %i.fe, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod766 = trunc i32 %i.fe to i1
  %xtraiter768 = and i32 %i.fe, 3                 ; 3 uses
  %i.gb = icmp ult i32 %i.fe, 4
  %unroll_iter772 = and i32 %i.fe, 2147483644
  %lcmp.mod769.not = icmp eq i32 %xtraiter768, 0
  %lcmp.mod771 = icmp ne i32 %xtraiter768, 0
  br label %bb.m

._crit_edge.i:                                    ; preds = %.thread2540.i, %.lr.ph2873.split.i
  %indvars.iv.next3788.i = add nuw nsw i64 %indvars.iv3787.i, 1 ; 2 uses
  %exitcond3791.not.i = icmp eq i64 %indvars.iv.next3788.i, %wide.trip.count3790.i
  br i1 %exitcond3791.not.i, label %._crit_edge2874.i, label %.lr.ph2873.splitthread-pre-split.i, !llvm.loop !198

bb.m:                                             ; preds = %.thread2540.i, %.lr.ph2864.i
  %indvars.iv3783.i = phi i64 [ 0, %.lr.ph2864.i ], [ %indvars.iv.next3784.i, %.thread2540.i ] ; 6 uses
  %.013002863.i = phi ptr [ %i.er, %.lr.ph2864.i ], [ %.31303.i, %.thread2540.i ] ; 15 uses
  br i1 %.not1505.i, label %_ZN4ncnn3MatD2Ev.exit1508.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gc = load <8 x float>, ptr %i.es, align 1, !tbaa !50
  br label %_ZN4ncnn3MatD2Ev.exit1508.i

_ZN4ncnn3MatD2Ev.exit1508.i:                      ; preds = %bb.n, %bb.m
  %.02295.i = phi nsz <8 x float> [ zeroinitializer, %bb.m ], [ %i.gc, %bb.n ] ; 2 uses
  %i.gd = load ptr, ptr %i.cb, align 8, !tbaa !18, !noalias !200
  %i.ge = load i64, ptr %i.di, align 8, !tbaa !20, !noalias !200
  %i.gf = mul i64 %i.ge, %i.ex
  %i.gg = load i64, ptr %i.dj, align 8, !tbaa !49, !noalias !200
  %i.gh = mul i64 %i.gf, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gh ; 2 uses
  br i1 %i.ey, label %.lr.ph2708.i, label %.preheader2642.i

.lr.ph2708.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit1508.i
  %i.gj = load ptr, ptr %4, align 8, !tbaa !18
  %i.gk = load i32, ptr %i.ag, align 4, !tbaa !179
  %i.gl = sext i32 %i.gk to i64
  %i.gm = load i64, ptr %i.ad, align 8, !tbaa !49
  %factor.op.mul.i = mul i64 %i.gm, %i.gl
  %i.gn = trunc nuw nsw i64 %indvars.iv3783.i to i32
  %.reass2866.i = mul i32 %factor.op.mul2865.i, %i.gn
  %i.go = sext i32 %.reass2866.i to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.gj, i64 %i.go
  %i.gp = load i32, ptr %i.a, align 4             ; 6 uses
  %i.gq = icmp sgt i32 %i.gp, 0                   ; 4 uses
  %i.gr = load i32, ptr %i.b, align 4             ; 4 uses
  %i.gs = shl nsw i32 %i.gr, 4
  %i.gt = sext i32 %i.gs to i64
  %i.gu = load i32, ptr %i.e, align 4             ; 15 uses
  %i.gv = sext i32 %i.gu to i64                   ; 3 uses
  %i.gw = shl nsw i32 %i.gr, 3
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = shl nsw i32 %i.gu, 1
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %i.ha = mul nsw i32 %i.gu, 3
  %i.hb = sext i32 %i.ha to i64                   ; 2 uses
  %i.hc = shl nsw i32 %i.gr, 2
  %i.hd = sext i32 %i.hc to i64                   ; 4 uses
  %i.he = shl nsw i32 %i.gu, 2
  %i.hf = sext i32 %i.he to i64
  %i.hg = mul nsw i32 %i.gu, 5
  %i.hh = sext i32 %i.hg to i64
  %i.hi = mul nsw i32 %i.gu, 6
  %i.hj = sext i32 %i.hi to i64
  %i.hk = mul nsw i32 %i.gu, 7
  %i.hl = sext i32 %i.hk to i64
  %i.hm = shl nsw i32 %i.gu, 3
  %i.hn = sext i32 %i.hm to i64
  %i.ho = mul nsw i32 %i.gu, 9
  %i.hp = sext i32 %i.ho to i64
  %i.hq = mul nsw i32 %i.gu, 10
  %i.hr = sext i32 %i.hq to i64
  %i.hs = mul nsw i32 %i.gu, 11
  %i.ht = sext i32 %i.hs to i64
  %i.hu = mul nsw i32 %i.gu, 12
  %i.hv = sext i32 %i.hu to i64
  %i.hw = mul nsw i32 %i.gu, 13
  %i.hx = sext i32 %i.hw to i64
  %i.hy = mul nsw i32 %i.gu, 14
  %i.hz = sext i32 %i.hy to i64
  %i.ia = mul nsw i32 %i.gu, 15
  %i.ib = sext i32 %i.ia to i64
  %i.ic = sext i32 %i.gr to i64
  %i.id = add i32 %i.gp, -1
  %i.ie = zext i32 %i.id to i64
  %i.if = shl nuw nsw i64 %i.ie, 9                ; 4 uses
  br label %bb.o

.preheader2642.i:                                 ; preds = %.loopexit2634.i, %_ZN4ncnn3MatD2Ev.exit1508.i
  %.02369.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1508.i ], [ %.82377.i, %.loopexit2634.i ] ; 2 uses
  %.02348.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1508.i ], [ %.82356.i, %.loopexit2634.i ] ; 2 uses
  %.02325.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1508.i ], [ %.82333.i, %.loopexit2634.i ] ; 2 uses
  %.12296.lcssa.i = phi <8 x float> [ %.02295.i, %_ZN4ncnn3MatD2Ev.exit1508.i ], [ %.92304.i, %.loopexit2634.i ] ; 2 uses
  %.01334.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1508.i ], [ %i.fu, %.loopexit2634.i ] ; 3 uses
  %.01305.lcssa.i = phi ptr [ %i.gi, %_ZN4ncnn3MatD2Ev.exit1508.i ], [ %.81313.i, %.loopexit2634.i ] ; 2 uses
  %i.ig = or disjoint i32 %.01334.lcssa.i, 7
  %i.ih = icmp slt i32 %i.ig, %i.ee
  br i1 %i.ih, label %.lr.ph2763.i, label %.preheader2641.i

.lr.ph2763.i:                                     ; preds = %.preheader2642.i
  %i.ii = load ptr, ptr %4, align 8, !tbaa !18
  %i.ij = load i32, ptr %i.ag, align 4, !tbaa !179
  %i.ik = sext i32 %i.ij to i64
  %i.il = load i64, ptr %i.ad, align 8, !tbaa !49
  %factor.op.mul2770.i = mul i64 %i.il, %i.ik
  %i.im = trunc nuw nsw i64 %indvars.iv3783.i to i32
  %.reass2868.i = mul i32 %factor.op.mul2865.i, %i.im
  %i.in = sext i32 %.reass2868.i to i64
  %invariant.gep2772.i = getelementptr [4 x i8], ptr %i.ii, i64 %i.in
  %i.io = load i32, ptr %i.a, align 4             ; 5 uses
  %i.ip = icmp sgt i32 %i.io, 0                   ; 3 uses
  %i.iq = load i32, ptr %i.b, align 4             ; 3 uses
  %i.ir = shl nsw i32 %i.iq, 3
  %i.is = sext i32 %i.ir to i64
  %i.it = load i32, ptr %i.e, align 4             ; 7 uses
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  %i.iv = shl nsw i32 %i.iq, 2
  %i.iw = sext i32 %i.iv to i64                   ; 2 uses
  %i.ix = shl nsw i32 %i.it, 1
  %i.iy = sext i32 %i.ix to i64
  %i.iz = mul nsw i32 %i.it, 3
  %i.ja = sext i32 %i.iz to i64
  %i.jb = shl nsw i32 %i.it, 2
  %i.jc = sext i32 %i.jb to i64
  %i.jd = mul nsw i32 %i.it, 5
  %i.je = sext i32 %i.jd to i64
  %i.jf = mul nsw i32 %i.it, 6
  %i.jg = sext i32 %i.jf to i64
  %i.jh = mul nsw i32 %i.it, 7
  %i.ji = sext i32 %i.jh to i64
  %i.jj = sext i32 %i.iq to i64
  %i.jk = add i32 %i.io, -1
  %i.jl = zext i32 %i.jk to i64
  %i.jm = shl nuw nsw i64 %i.jl, 8                ; 3 uses
  br label %bb.r

bb.o:                                             ; preds = %.loopexit2634.i, %.lr.ph2708.i
  %.013052707.i = phi ptr [ %i.gi, %.lr.ph2708.i ], [ %.81313.i, %.loopexit2634.i ] ; 13 uses
  %.013342706.i = phi i32 [ 0, %.lr.ph2708.i ], [ %i.abd, %.loopexit2634.i ] ; 2 uses
  %.122962705.i = phi <8 x float> [ %.02295.i, %.lr.ph2708.i ], [ %.92304.i, %.loopexit2634.i ] ; 9 uses
  %.023252704.i = phi <8 x float> [ zeroinitializer, %.lr.ph2708.i ], [ %.82333.i, %.loopexit2634.i ] ; 9 uses
  %.023482703.i = phi <8 x float> [ zeroinitializer, %.lr.ph2708.i ], [ %.82356.i, %.loopexit2634.i ] ; 9 uses
  %.023692702.i = phi <8 x float> [ zeroinitializer, %.lr.ph2708.i ], [ %.82377.i, %.loopexit2634.i ] ; 9 uses
  %i.jn = sdiv i32 %.013342706.i, %i.ec
  %i.jo = sext i32 %i.jn to i64
  %.reass.i = mul i64 %factor.op.mul.i, %i.jo
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i ; 8 uses
  br i1 %i.fa, label %.preheader2637.i, label %.loopexit2638.i

.preheader2637.i:                                 ; preds = %bb.o
  br i1 %i.gq, label %.lr.ph.i, label %.loopexit2634.i

.lr.ph.i:                                         ; preds = %.preheader2637.i, %.lr.ph.i
  %.113062651.i = phi ptr [ %i.nw, %.lr.ph.i ], [ %.013052707.i, %.preheader2637.i ] ; 17 uses
  %.013392650.i = phi ptr [ %i.nv, %.lr.ph.i ], [ %gep.i, %.preheader2637.i ] ; 17 uses
  %.013462649.i = phi i32 [ %i.nx, %.lr.ph.i ], [ 0, %.preheader2637.i ]
  %.222972648.i = phi <8 x float> [ %i.nf, %.lr.ph.i ], [ %.122962705.i, %.preheader2637.i ]
  %.123262647.i = phi <8 x float> [ %i.nk, %.lr.ph.i ], [ %.023252704.i, %.preheader2637.i ]
  %.123492646.i = phi <8 x float> [ %i.np, %.lr.ph.i ], [ %.023482703.i, %.preheader2637.i ]
  %.123702645.i = phi <8 x float> [ %i.nu, %.lr.ph.i ], [ %.023692702.i, %.preheader2637.i ]
  %i.jp = load <8 x float>, ptr %.113062651.i, align 32, !tbaa !50
  %i.jq = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 32
  %i.jr = load <8 x float>, ptr %i.jq, align 32, !tbaa !50
  %i.js = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 64
  %i.jt = load <8 x float>, ptr %i.js, align 32, !tbaa !50
  %i.ju = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 96
  %i.jv = load <8 x float>, ptr %i.ju, align 32, !tbaa !50
  %i.jw = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 128
  %i.jx = load <8 x float>, ptr %i.jw, align 32, !tbaa !50
  %i.jy = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 160
  %i.jz = load <8 x float>, ptr %i.jy, align 32, !tbaa !50
  %i.ka = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 192
  %i.kb = load <8 x float>, ptr %i.ka, align 32, !tbaa !50
  %i.kc = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 224
  %i.kd = load <8 x float>, ptr %i.kc, align 32, !tbaa !50
  %i.ke = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 256
  %i.kf = load <8 x float>, ptr %i.ke, align 32, !tbaa !50
  %i.kg = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 288
  %i.kh = load <8 x float>, ptr %i.kg, align 32, !tbaa !50
  %i.ki = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 320
  %i.kj = load <8 x float>, ptr %i.ki, align 32, !tbaa !50
  %i.kk = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 352
  %i.kl = load <8 x float>, ptr %i.kk, align 32, !tbaa !50
  %i.km = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 384
  %i.kn = load <8 x float>, ptr %i.km, align 32, !tbaa !50
  %i.ko = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 416
  %i.kp = load <8 x float>, ptr %i.ko, align 32, !tbaa !50
  %i.kq = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 448
  %i.kr = load <8 x float>, ptr %i.kq, align 32, !tbaa !50
  %i.ks = getelementptr inbounds nuw i8, ptr %.113062651.i, i64 480
  %i.kt = load <8 x float>, ptr %i.ks, align 32, !tbaa !50
  %i.ku = load float, ptr %.013392650.i, align 4, !tbaa !110
end_hunk_3
begin_hunk_4_@_ZNK4ncnn24Convolution1D_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.adx = getelementptr inbounds nuw i8, ptr %.014262720.i, i64 24
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !110
  %i.adz = insertelement <8 x float> poison, float %i.ady, i64 0
  %i.aea = shufflevector <8 x float> %i.adz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aeb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acr, <8 x float> nofpclass(nan inf) %i.aea, <8 x float> nofpclass(nan inf) %i.adh) ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %.014262720.i, i64 28
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !110
  %i.aee = insertelement <8 x float> poison, float %i.aed, i64 0
  %i.aef = shufflevector <8 x float> %i.aee, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aeg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.act, <8 x float> nofpclass(nan inf) %i.aef, <8 x float> nofpclass(nan inf) %i.adm) ; 2 uses
  %i.aeh = getelementptr inbounds [4 x i8], ptr %.014262720.i, i64 %i.is
  %i.aei = getelementptr inbounds nuw i8, ptr %.1013152721.i, i64 256
  %i.aej = add nuw nsw i32 %.014312719.i, 1       ; 2 uses
  %exitcond3760.not.i = icmp eq i32 %i.aej, %i.io
  br i1 %exitcond3760.not.i, label %.loopexit2632.loopexit.i, label %.lr.ph2722.i, !llvm.loop !208

.loopexit2632.loopexit.i:                         ; preds = %.lr.ph2722.i
  %scevgep3758.i = getelementptr i8, ptr %.913142762.i, i64 256
  %scevgep3759.i = getelementptr i8, ptr %scevgep3758.i, i64 %i.jm
  br label %.loopexit2629.i

.loopexit2632.i:                                  ; preds = %bb.r
  br i1 %i.fc, label %bb.s, label %.loopexit2630.i

bb.s:                                             ; preds = %.loopexit2632.i
  br i1 %i.ip, label %.lr.ph2737.preheader.i, label %.loopexit2629.i

.lr.ph2737.preheader.i:                           ; preds = %bb.s
  %i.aek = getelementptr inbounds [4 x i8], ptr %gep2773.i, i64 %i.iu
  br label %.lr.ph2737.i

.lr.ph2737.i:                                     ; preds = %.lr.ph2737.i, %.lr.ph2737.preheader.i
  %.1213172736.i = phi ptr [ %i.ago, %.lr.ph2737.i ], [ %.913142762.i, %.lr.ph2737.preheader.i ] ; 9 uses
  %.214282735.i = phi ptr [ %i.agm, %.lr.ph2737.i ], [ %gep2773.i, %.lr.ph2737.preheader.i ] ; 5 uses
  %.014322734.i = phi ptr [ %i.agn, %.lr.ph2737.i ], [ %i.aek, %.lr.ph2737.preheader.i ] ; 5 uses
  %.014332733.i = phi i32 [ %i.agp, %.lr.ph2737.i ], [ 0, %.lr.ph2737.preheader.i ]
  %.1323082732.i = phi <8 x float> [ %i.afw, %.lr.ph2737.i ], [ %.1023052760.i, %.lr.ph2737.preheader.i ]
  %.1223372731.i = phi <8 x float> [ %i.agb, %.lr.ph2737.i ], [ %.923342759.i, %.lr.ph2737.preheader.i ]
  %.1223602730.i = phi <8 x float> [ %i.agg, %.lr.ph2737.i ], [ %.923572758.i, %.lr.ph2737.preheader.i ]
  %.1223812729.i = phi <8 x float> [ %i.agl, %.lr.ph2737.i ], [ %.923782757.i, %.lr.ph2737.preheader.i ]
  %i.ael = load <8 x float>, ptr %.1213172736.i, align 32, !tbaa !50
  %i.aem = getelementptr inbounds nuw i8, ptr %.1213172736.i, i64 32
  %i.aen = load <8 x float>, ptr %i.aem, align 32, !tbaa !50
  %i.aeo = getelementptr inbounds nuw i8, ptr %.1213172736.i, i64 64
  %i.aep = load <8 x float>, ptr %i.aeo, align 32, !tbaa !50
  %i.aeq = getelementptr inbounds nuw i8, ptr %.1213172736.i, i64 96
  %i.aer = load <8 x float>, ptr %i.aeq, align 32, !tbaa !50
  %i.aes = getelementptr inbounds nuw i8, ptr %.1213172736.i, i64 128
  %i.aet = load <8 x float>, ptr %i.aes, align 32, !tbaa !50
  %i.aeu = getelementptr inbounds nuw i8, ptr %.1213172736.i, i64 160
  %i.aev = load <8 x float>, ptr %i.aeu, align 32, !tbaa !50
  %i.aew = getelementptr inbounds nuw i8, ptr %.1213172736.i, i64 192
  %i.aex = load <8 x float>, ptr %i.aew, align 32, !tbaa !50
  %i.aey = getelementptr inbounds nuw i8, ptr %.1213172736.i, i64 224
  %i.aez = load <8 x float>, ptr %i.aey, align 32, !tbaa !50
  %i.afa = load float, ptr %.214282735.i, align 4, !tbaa !110
  %i.afb = insertelement <8 x float> poison, float %i.afa, i64 0
  %i.afc = shufflevector <8 x float> %i.afb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ael, <8 x float> nofpclass(nan inf) %i.afc, <8 x float> nofpclass(nan inf) %.1323082732.i)
  %i.afe = getelementptr inbounds nuw i8, ptr %.214282735.i, i64 4
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !110
  %i.afg = insertelement <8 x float> poison, float %i.aff, i64 0
  %i.afh = shufflevector <8 x float> %i.afg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aen, <8 x float> nofpclass(nan inf) %i.afh, <8 x float> nofpclass(nan inf) %.1223372731.i)
  %i.afj = getelementptr inbounds nuw i8, ptr %.214282735.i, i64 8
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !110
  %i.afl = insertelement <8 x float> poison, float %i.afk, i64 0
  %i.afm = shufflevector <8 x float> %i.afl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aep, <8 x float> nofpclass(nan inf) %i.afm, <8 x float> nofpclass(nan inf) %.1223602730.i)
  %i.afo = getelementptr inbounds nuw i8, ptr %.214282735.i, i64 12
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !110
  %i.afq = insertelement <8 x float> poison, float %i.afp, i64 0
  %i.afr = shufflevector <8 x float> %i.afq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aer, <8 x float> nofpclass(nan inf) %i.afr, <8 x float> nofpclass(nan inf) %.1223812729.i)
  %i.aft = load float, ptr %.014322734.i, align 4, !tbaa !110
  %i.afu = insertelement <8 x float> poison, float %i.aft, i64 0
  %i.afv = shufflevector <8 x float> %i.afu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aet, <8 x float> nofpclass(nan inf) %i.afv, <8 x float> nofpclass(nan inf) %i.afd) ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.014322734.i, i64 4
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !110
  %i.afz = insertelement <8 x float> poison, float %i.afy, i64 0
  %i.aga = shufflevector <8 x float> %i.afz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aev, <8 x float> nofpclass(nan inf) %i.aga, <8 x float> nofpclass(nan inf) %i.afi) ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.014322734.i, i64 8
  %i.agd = load float, ptr %i.agc, align 4, !tbaa !110
  %i.age = insertelement <8 x float> poison, float %i.agd, i64 0
  %i.agf = shufflevector <8 x float> %i.age, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aex, <8 x float> nofpclass(nan inf) %i.agf, <8 x float> nofpclass(nan inf) %i.afn) ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.014322734.i, i64 12
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !110
  %i.agj = insertelement <8 x float> poison, float %i.agi, i64 0
  %i.agk = shufflevector <8 x float> %i.agj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aez, <8 x float> nofpclass(nan inf) %i.agk, <8 x float> nofpclass(nan inf) %i.afs) ; 2 uses
  %i.agm = getelementptr inbounds [4 x i8], ptr %.214282735.i, i64 %i.iw
  %i.agn = getelementptr inbounds [4 x i8], ptr %.014322734.i, i64 %i.iw
  %i.ago = getelementptr inbounds nuw i8, ptr %.1213172736.i, i64 256
  %i.agp = add nuw nsw i32 %.014332733.i, 1       ; 2 uses
  %exitcond3763.not.i = icmp eq i32 %i.agp, %i.io
  br i1 %exitcond3763.not.i, label %.loopexit2630.loopexit.i, label %.lr.ph2737.i, !llvm.loop !209

.loopexit2630.loopexit.i:                         ; preds = %.lr.ph2737.i
  %scevgep3761.i = getelementptr i8, ptr %.913142762.i, i64 256
  %scevgep3762.i = getelementptr i8, ptr %scevgep3761.i, i64 %i.jm
  br label %.loopexit2629.i

.loopexit2630.i:                                  ; preds = %.loopexit2632.i
  br i1 %i.fd, label %.preheader2628.i, label %.loopexit2629.i

.preheader2628.i:                                 ; preds = %.loopexit2630.i
  br i1 %i.ip, label %.lr.ph2751.i, label %.loopexit2629.i

.lr.ph2751.i:                                     ; preds = %.preheader2628.i, %.lr.ph2751.i
  %.1413192750.i = phi ptr [ %i.ait, %.lr.ph2751.i ], [ %.913142762.i, %.preheader2628.i ] ; 9 uses
  %.414302749.i = phi ptr [ %i.ais, %.lr.ph2751.i ], [ %gep2773.i, %.preheader2628.i ] ; 9 uses
  %.014342748.i = phi i32 [ %i.aiu, %.lr.ph2751.i ], [ 0, %.preheader2628.i ]
  %.1523102747.i = phi <8 x float> [ %i.aic, %.lr.ph2751.i ], [ %.1023052760.i, %.preheader2628.i ]
  %.1423392746.i = phi <8 x float> [ %i.aih, %.lr.ph2751.i ], [ %.923342759.i, %.preheader2628.i ]
  %.1423622745.i = phi <8 x float> [ %i.aim, %.lr.ph2751.i ], [ %.923572758.i, %.preheader2628.i ]
  %.1423832744.i = phi <8 x float> [ %i.air, %.lr.ph2751.i ], [ %.923782757.i, %.preheader2628.i ]
  %i.agq = load <8 x float>, ptr %.1413192750.i, align 32, !tbaa !50
  %i.agr = getelementptr inbounds nuw i8, ptr %.1413192750.i, i64 32
  %i.ags = load <8 x float>, ptr %i.agr, align 32, !tbaa !50
  %i.agt = getelementptr inbounds nuw i8, ptr %.1413192750.i, i64 64
  %i.agu = load <8 x float>, ptr %i.agt, align 32, !tbaa !50
  %i.agv = getelementptr inbounds nuw i8, ptr %.1413192750.i, i64 96
  %i.agw = load <8 x float>, ptr %i.agv, align 32, !tbaa !50
  %i.agx = getelementptr inbounds nuw i8, ptr %.1413192750.i, i64 128
  %i.agy = load <8 x float>, ptr %i.agx, align 32, !tbaa !50
  %i.agz = getelementptr inbounds nuw i8, ptr %.1413192750.i, i64 160
  %i.aha = load <8 x float>, ptr %i.agz, align 32, !tbaa !50
  %i.ahb = getelementptr inbounds nuw i8, ptr %.1413192750.i, i64 192
  %i.ahc = load <8 x float>, ptr %i.ahb, align 32, !tbaa !50
  %i.ahd = getelementptr inbounds nuw i8, ptr %.1413192750.i, i64 224
  %i.ahe = load <8 x float>, ptr %i.ahd, align 32, !tbaa !50
  %i.ahf = load float, ptr %.414302749.i, align 4, !tbaa !110
  %i.ahg = insertelement <8 x float> poison, float %i.ahf, i64 0
  %i.ahh = shufflevector <8 x float> %i.ahg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agq, <8 x float> nofpclass(nan inf) %i.ahh, <8 x float> nofpclass(nan inf) %.1523102747.i)
  %i.ahj = getelementptr inbounds [4 x i8], ptr %.414302749.i, i64 %i.iu
  %i.ahk = load float, ptr %i.ahj, align 4, !tbaa !110
  %i.ahl = insertelement <8 x float> poison, float %i.ahk, i64 0
  %i.ahm = shufflevector <8 x float> %i.ahl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ags, <8 x float> nofpclass(nan inf) %i.ahm, <8 x float> nofpclass(nan inf) %.1423392746.i)
  %i.aho = getelementptr inbounds [4 x i8], ptr %.414302749.i, i64 %i.iy
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !110
  %i.ahq = insertelement <8 x float> poison, float %i.ahp, i64 0
  %i.ahr = shufflevector <8 x float> %i.ahq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agu, <8 x float> nofpclass(nan inf) %i.ahr, <8 x float> nofpclass(nan inf) %.1423622745.i)
  %i.aht = getelementptr inbounds [4 x i8], ptr %.414302749.i, i64 %i.ja
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !110
  %i.ahv = insertelement <8 x float> poison, float %i.ahu, i64 0
  %i.ahw = shufflevector <8 x float> %i.ahv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agw, <8 x float> nofpclass(nan inf) %i.ahw, <8 x float> nofpclass(nan inf) %.1423832744.i)
  %i.ahy = getelementptr inbounds [4 x i8], ptr %.414302749.i, i64 %i.jc
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !110
  %i.aia = insertelement <8 x float> poison, float %i.ahz, i64 0
  %i.aib = shufflevector <8 x float> %i.aia, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aic = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agy, <8 x float> nofpclass(nan inf) %i.aib, <8 x float> nofpclass(nan inf) %i.ahi) ; 2 uses
  %i.aid = getelementptr inbounds [4 x i8], ptr %.414302749.i, i64 %i.je
  %i.aie = load float, ptr %i.aid, align 4, !tbaa !110
  %i.aif = insertelement <8 x float> poison, float %i.aie, i64 0
  %i.aig = shufflevector <8 x float> %i.aif, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aih = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aha, <8 x float> nofpclass(nan inf) %i.aig, <8 x float> nofpclass(nan inf) %i.ahn) ; 2 uses
  %i.aii = getelementptr inbounds [4 x i8], ptr %.414302749.i, i64 %i.jg
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !110
  %i.aik = insertelement <8 x float> poison, float %i.aij, i64 0
  %i.ail = shufflevector <8 x float> %i.aik, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aim = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ahc, <8 x float> nofpclass(nan inf) %i.ail, <8 x float> nofpclass(nan inf) %i.ahs) ; 2 uses
  %i.ain = getelementptr inbounds [4 x i8], ptr %.414302749.i, i64 %i.ji
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !110
  %i.aip = insertelement <8 x float> poison, float %i.aio, i64 0
  %i.aiq = shufflevector <8 x float> %i.aip, <8 x float> poison, <8 x i32> zeroinitializer
  %i.air = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ahe, <8 x float> nofpclass(nan inf) %i.aiq, <8 x float> nofpclass(nan inf) %i.ahx) ; 2 uses
  %i.ais = getelementptr inbounds [4 x i8], ptr %.414302749.i, i64 %i.jj
  %i.ait = getelementptr inbounds nuw i8, ptr %.1413192750.i, i64 256
  %i.aiu = add nuw nsw i32 %.014342748.i, 1       ; 2 uses
  %exitcond3766.not.i = icmp eq i32 %i.aiu, %i.io
  br i1 %exitcond3766.not.i, label %.loopexit2629.loopexit.i, label %.lr.ph2751.i, !llvm.loop !210

.loopexit2629.loopexit.i:                         ; preds = %.lr.ph2751.i
  %scevgep3764.i = getelementptr i8, ptr %.913142762.i, i64 256
  %scevgep3765.i = getelementptr i8, ptr %scevgep3764.i, i64 %i.jm
  br label %.loopexit2629.i

.loopexit2629.i:                                  ; preds = %.loopexit2629.loopexit.i, %.preheader2628.i, %.loopexit2630.i, %.loopexit2630.loopexit.i, %bb.s, %.loopexit2632.loopexit.i, %.preheader2631.i
  %.152384.i = phi nsz <8 x float> [ %.923782757.i, %.loopexit2630.i ], [ %.923782757.i, %.preheader2628.i ], [ %i.air, %.loopexit2629.loopexit.i ], [ %.923782757.i, %bb.s ], [ %i.agl, %.loopexit2630.loopexit.i ], [ %i.aeg, %.loopexit2632.loopexit.i ], [ %.923782757.i, %.preheader2631.i ] ; 2 uses
  %.152363.i = phi nsz <8 x float> [ %.923572758.i, %.loopexit2630.i ], [ %.923572758.i, %.preheader2628.i ], [ %i.aim, %.loopexit2629.loopexit.i ], [ %.923572758.i, %bb.s ], [ %i.agg, %.loopexit2630.loopexit.i ], [ %i.aeb, %.loopexit2632.loopexit.i ], [ %.923572758.i, %.preheader2631.i ] ; 2 uses
  %.152340.i = phi nsz <8 x float> [ %.923342759.i, %.loopexit2630.i ], [ %.923342759.i, %.preheader2628.i ], [ %i.aih, %.loopexit2629.loopexit.i ], [ %.923342759.i, %bb.s ], [ %i.agb, %.loopexit2630.loopexit.i ], [ %i.adw, %.loopexit2632.loopexit.i ], [ %.923342759.i, %.preheader2631.i ] ; 2 uses
  %.162311.i = phi nsz <8 x float> [ %.1023052760.i, %.loopexit2630.i ], [ %.1023052760.i, %.preheader2628.i ], [ %i.aic, %.loopexit2629.loopexit.i ], [ %.1023052760.i, %bb.s ], [ %i.afw, %.loopexit2630.loopexit.i ], [ %i.adr, %.loopexit2632.loopexit.i ], [ %.1023052760.i, %.preheader2631.i ] ; 2 uses
  %.151320.i = phi ptr [ %.913142762.i, %.loopexit2630.i ], [ %.913142762.i, %.preheader2628.i ], [ %scevgep3765.i, %.loopexit2629.loopexit.i ], [ %.913142762.i, %bb.s ], [ %scevgep3762.i, %.loopexit2630.loopexit.i ], [ %scevgep3759.i, %.loopexit2632.loopexit.i ], [ %.913142762.i, %.preheader2631.i ] ; 2 uses
  %i.aiv = add nuw nsw i32 %.113352761.i, 8       ; 3 uses
  %i.aiw = or disjoint i32 %i.aiv, 7
  %i.aix = icmp slt i32 %i.aiw, %i.ee
  br i1 %i.aix, label %bb.r, label %.preheader2641.i, !llvm.loop !211

.preheader2640.i:                                 ; preds = %.loopexit2625.i, %.preheader2641.i
  %.162385.lcssa.i = phi <8 x float> [ %.92378.lcssa.i, %.preheader2641.i ], [ %.202389.i, %.loopexit2625.i ]
  %.162364.lcssa.i = phi <8 x float> [ %.92357.lcssa.i, %.preheader2641.i ], [ %.202368.i, %.loopexit2625.i ]
  %.162341.lcssa.i = phi <8 x float> [ %.92334.lcssa.i, %.preheader2641.i ], [ %.202345.i, %.loopexit2625.i ] ; 3 uses
  %.172312.lcssa.i = phi <8 x float> [ %.102305.lcssa.i, %.preheader2641.i ], [ %.212316.i, %.loopexit2625.i ] ; 3 uses
  %.21336.lcssa.i = phi i32 [ %.11335.lcssa.i, %.preheader2641.i ], [ %i.anm, %.loopexit2625.i ] ; 5 uses
  %.161321.lcssa.i = phi ptr [ %.91314.lcssa.i, %.preheader2641.i ], [ %.201325.i, %.loopexit2625.i ] ; 3 uses
  %i.aiy = or disjoint i32 %.21336.lcssa.i, 1
  %i.aiz = icmp slt i32 %i.aiy, %i.ee
  br i1 %i.aiz, label %.lr.ph2831.i, label %.preheader2639.i

.lr.ph2831.i:                                     ; preds = %.preheader2640.i
  %i.aja = load ptr, ptr %4, align 8, !tbaa !18
  %i.ajb = load i32, ptr %i.ag, align 4, !tbaa !179
  %i.ajc = sext i32 %i.ajb to i64
  %i.ajd = load i64, ptr %i.ad, align 8, !tbaa !49
  %factor.op.mul2836.i = mul i64 %i.ajd, %i.ajc
  %i.aje = mul nsw i64 %indvars.iv3783.i, %i.fz
  %invariant.gep2838.i = getelementptr [4 x i8], ptr %i.aja, i64 %i.aje
  %i.ajf = load i32, ptr %i.e, align 4
  %i.ajg = sext i32 %i.ajf to i64                 ; 3 uses
  %i.ajh = load i32, ptr %i.b, align 4
  %i.aji = sext i32 %i.ajh to i64                 ; 2 uses
  br i1 %i.ff, label %.lr.ph2823.us.preheader.i, label %.lr.ph2831.split.preheader.i

.lr.ph2831.split.preheader.i:                     ; preds = %.lr.ph2831.i
  %i.ajj = add i32 %.21336.lcssa.i, 2
  %reass.sub = sub i32 %5, %.21336.lcssa.i
  %i.ajk = and i32 %reass.sub, -2
  %i.ajl = add i32 %i.ajj, %i.ajk
  br label %.preheader2639.i

.lr.ph2823.us.preheader.i:                        ; preds = %.lr.ph2831.i
  %i.ajm = zext i32 %.21336.lcssa.i to i64
  br label %.lr.ph2823.us.i

.lr.ph2823.us.i:                                  ; preds = %._crit_edge.us.i, %.lr.ph2823.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.ajm, %.lr.ph2823.us.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.us.i ] ; 2 uses
  %.2113262830.us.i = phi ptr [ %.161321.lcssa.i, %.lr.ph2823.us.preheader.i ], [ %scevgep3774.i, %._crit_edge.us.i ] ; 3 uses
  %.2223172828.us.i = phi <8 x float> [ %.172312.lcssa.i, %.lr.ph2823.us.preheader.i ], [ %.lcssa761, %._crit_edge.us.i ] ; 2 uses
  %.2123462827.us.i = phi <8 x float> [ %.162341.lcssa.i, %.lr.ph2823.us.preheader.i ], [ %.lcssa760.a, %._crit_edge.us.i ] ; 2 uses
  %.reass2837.us.i = mul i64 %factor.op.mul2836.i, %indvars.iv.i
  %gep2839.us.i = getelementptr i8, ptr %invariant.gep2838.i, i64 %.reass2837.us.i ; 2 uses
  br i1 %i.ga, label %.epil.preheader, label %.lr.ph2823.us.i.new

.lr.ph2823.us.i.new:                              ; preds = %.lr.ph2823.us.i, %.lr.ph2823.us.i.new
  %.2213272822.us.i = phi ptr [ %i.ako, %.lr.ph2823.us.i.new ], [ %.2113262830.us.i, %.lr.ph2823.us.i ] ; 5 uses
  %.014402821.us.i = phi ptr [ %i.akn, %.lr.ph2823.us.i.new ], [ %gep2839.us.i, %.lr.ph2823.us.i ] ; 3 uses
  %.2323182819.us.i = phi <8 x float> [ %i.akh, %.lr.ph2823.us.i.new ], [ %.2223172828.us.i, %.lr.ph2823.us.i ]
  %.2223472818.us.i = phi <8 x float> [ %i.akm, %.lr.ph2823.us.i.new ], [ %.2123462827.us.i, %.lr.ph2823.us.i ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph2823.us.i.new ], [ 0, %.lr.ph2823.us.i ]
  %i.ajn = load <8 x float>, ptr %.2213272822.us.i, align 32, !tbaa !50
  %i.ajo = getelementptr inbounds nuw i8, ptr %.2213272822.us.i, i64 32
  %i.ajp = load <8 x float>, ptr %i.ajo, align 32, !tbaa !50
  %i.ajq = load float, ptr %.014402821.us.i, align 4, !tbaa !110
  %i.ajr = insertelement <8 x float> poison, float %i.ajq, i64 0
  %i.ajs = shufflevector <8 x float> %i.ajr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ajn, <8 x float> nofpclass(nan inf) %i.ajs, <8 x float> nofpclass(nan inf) %.2323182819.us.i)
  %i.aju = getelementptr inbounds [4 x i8], ptr %.014402821.us.i, i64 %i.ajg
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !110
  %i.ajw = insertelement <8 x float> poison, float %i.ajv, i64 0
  %i.ajx = shufflevector <8 x float> %i.ajw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ajp, <8 x float> nofpclass(nan inf) %i.ajx, <8 x float> nofpclass(nan inf) %.2223472818.us.i)
  %i.ajz = getelementptr inbounds [4 x i8], ptr %.014402821.us.i, i64 %i.aji ; 3 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %.2213272822.us.i, i64 64
  %i.akb = load <8 x float>, ptr %i.aka, align 32, !tbaa !50
  %i.akc = getelementptr inbounds nuw i8, ptr %.2213272822.us.i, i64 96
  %i.akd = load <8 x float>, ptr %i.akc, align 32, !tbaa !50
  %i.ake = load float, ptr %i.ajz, align 4, !tbaa !110
  %i.akf = insertelement <8 x float> poison, float %i.ake, i64 0
  %i.akg = shufflevector <8 x float> %i.akf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.akh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akb, <8 x float> nofpclass(nan inf) %i.akg, <8 x float> nofpclass(nan inf) %i.ajt) ; 3 uses
  %i.aki = getelementptr inbounds [4 x i8], ptr %i.ajz, i64 %i.ajg
  %i.akj = load float, ptr %i.aki, align 4, !tbaa !110
  %i.akk = insertelement <8 x float> poison, float %i.akj, i64 0
  %i.akl = shufflevector <8 x float> %i.akk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.akm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akd, <8 x float> nofpclass(nan inf) %i.akl, <8 x float> nofpclass(nan inf) %i.ajy) ; 3 uses
  %i.akn = getelementptr inbounds [4 x i8], ptr %i.ajz, i64 %i.aji ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %.2213272822.us.i, i64 128 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph2823.us.i.new, !llvm.loop !212

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph2823.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph2823.us.i
  %.2213272822.us.i.epil.init = phi ptr [ %.2113262830.us.i, %.lr.ph2823.us.i ], [ %i.ako, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.014402821.us.i.epil.init = phi ptr [ %gep2839.us.i, %.lr.ph2823.us.i ], [ %i.akn, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.2323182819.us.i.epil.init = phi <8 x float> [ %.2223172828.us.i, %.lr.ph2823.us.i ], [ %i.akh, %._crit_edge.us.i.unr-lcssa ]
  %.2223472818.us.i.epil.init = phi <8 x float> [ %.2123462827.us.i, %.lr.ph2823.us.i ], [ %i.akm, %._crit_edge.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod766)
  %i.akp = load <8 x float>, ptr %.2213272822.us.i.epil.init, align 32, !tbaa !50
  %i.akq = getelementptr inbounds nuw i8, ptr %.2213272822.us.i.epil.init, i64 32
  %i.akr = load <8 x float>, ptr %i.akq, align 32, !tbaa !50
  %i.aks = load float, ptr %.014402821.us.i.epil.init, align 4, !tbaa !110
  %i.akt = insertelement <8 x float> poison, float %i.aks, i64 0
  %i.aku = shufflevector <8 x float> %i.akt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.akv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akp, <8 x float> nofpclass(nan inf) %i.aku, <8 x float> nofpclass(nan inf) %.2323182819.us.i.epil.init)
  %i.akw = getelementptr inbounds [4 x i8], ptr %.014402821.us.i.epil.init, i64 %i.ajg
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !110
  %i.aky = insertelement <8 x float> poison, float %i.akx, i64 0
  %i.akz = shufflevector <8 x float> %i.aky, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ala = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akr, <8 x float> nofpclass(nan inf) %i.akz, <8 x float> nofpclass(nan inf) %.2223472818.us.i.epil.init)
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa761 = phi <8 x float> [ %i.akh, %._crit_edge.us.i.unr-lcssa ], [ %i.akv, %.epil.preheader ] ; 2 uses
  %.lcssa760.a = phi <8 x float> [ %i.akm, %._crit_edge.us.i.unr-lcssa ], [ %i.ala, %.epil.preheader ] ; 2 uses
  %scevgep3773.i = getelementptr i8, ptr %.2113262830.us.i, i64 64
  %scevgep3774.i = getelementptr i8, ptr %scevgep3773.i, i64 %i.fx ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.alb = trunc i64 %indvars.iv.next.i to i32    ; 2 uses
  %i.alc = or i32 %i.alb, 1
  %i.ald = icmp slt i32 %i.alc, %i.ee
  br i1 %i.ald, label %.lr.ph2823.us.i, label %.preheader2639.i, !llvm.loop !213

bb.t:                                             ; preds = %.loopexit2625.i, %.lr.ph2807.i
  %.1613212806.i = phi ptr [ %.91314.lcssa.i, %.lr.ph2807.i ], [ %.201325.i, %.loopexit2625.i ] ; 7 uses
  %.213362805.i = phi i32 [ %.11335.lcssa.i, %.lr.ph2807.i ], [ %i.anm, %.loopexit2625.i ] ; 2 uses
  %.1723122804.i = phi <8 x float> [ %.102305.lcssa.i, %.lr.ph2807.i ], [ %.212316.i, %.loopexit2625.i ] ; 5 uses
  %.1623412803.i = phi <8 x float> [ %.92334.lcssa.i, %.lr.ph2807.i ], [ %.202345.i, %.loopexit2625.i ] ; 5 uses
  %.1623642802.i = phi <8 x float> [ %.92357.lcssa.i, %.lr.ph2807.i ], [ %.202368.i, %.loopexit2625.i ] ; 5 uses
  %.1623852801.i = phi <8 x float> [ %.92378.lcssa.i, %.lr.ph2807.i ], [ %.202389.i, %.loopexit2625.i ] ; 5 uses
  %i.ale = sdiv i32 %.213362805.i, %i.ec
  %i.alf = sext i32 %i.ale to i64
  %.reass2815.i = mul i64 %factor.op.mul2814.i, %i.alf
  %gep2817.i = getelementptr i8, ptr %invariant.gep2816.i, i64 %.reass2815.i ; 2 uses
  br i1 %i.fc, label %.preheader2626.i, label %.loopexit2627.i

.preheader2626.i:                                 ; preds = %bb.t
  br i1 %i.abp, label %.lr.ph2781.i, label %.loopexit2625.i

.lr.ph2781.i:                                     ; preds = %.preheader2626.i, %.lr.ph2781.i
  %.1713222780.i = phi ptr [ %i.amh, %.lr.ph2781.i ], [ %.1613212806.i, %.preheader2626.i ] ; 5 uses
  %.014352779.i = phi ptr [ %i.amg, %.lr.ph2781.i ], [ %gep2817.i, %.preheader2626.i ] ; 5 uses
  %.014382778.i = phi i32 [ %i.ami, %.lr.ph2781.i ], [ 0, %.preheader2626.i ]
  %.1823132777.i = phi <8 x float> [ %i.alq, %.lr.ph2781.i ], [ %.1723122804.i, %.preheader2626.i ]
  %.1723422776.i = phi <8 x float> [ %i.alv, %.lr.ph2781.i ], [ %.1623412803.i, %.preheader2626.i ]
  %.1723652775.i = phi <8 x float> [ %i.ama, %.lr.ph2781.i ], [ %.1623642802.i, %.preheader2626.i ]
  %.1723862774.i = phi <8 x float> [ %i.amf, %.lr.ph2781.i ], [ %.1623852801.i, %.preheader2626.i ]
  %i.alg = load <8 x float>, ptr %.1713222780.i, align 32, !tbaa !50
  %i.alh = getelementptr inbounds nuw i8, ptr %.1713222780.i, i64 32
  %i.ali = load <8 x float>, ptr %i.alh, align 32, !tbaa !50
  %i.alj = getelementptr inbounds nuw i8, ptr %.1713222780.i, i64 64
  %i.alk = load <8 x float>, ptr %i.alj, align 32, !tbaa !50
  %i.all = getelementptr inbounds nuw i8, ptr %.1713222780.i, i64 96
  %i.alm = load <8 x float>, ptr %i.all, align 32, !tbaa !50
  %i.aln = load float, ptr %.014352779.i, align 4, !tbaa !110
  %i.alo = insertelement <8 x float> poison, float %i.aln, i64 0
  %i.alp = shufflevector <8 x float> %i.alo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.alq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alg, <8 x float> nofpclass(nan inf) %i.alp, <8 x float> nofpclass(nan inf) %.1823132777.i) ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %.014352779.i, i64 4
  %i.als = load float, ptr %i.alr, align 4, !tbaa !110
  %i.alt = insertelement <8 x float> poison, float %i.als, i64 0
  %i.alu = shufflevector <8 x float> %i.alt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.alv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ali, <8 x float> nofpclass(nan inf) %i.alu, <8 x float> nofpclass(nan inf) %.1723422776.i) ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %.014352779.i, i64 8
  %i.alx = load float, ptr %i.alw, align 4, !tbaa !110
  %i.aly = insertelement <8 x float> poison, float %i.alx, i64 0
  %i.alz = shufflevector <8 x float> %i.aly, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ama = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alk, <8 x float> nofpclass(nan inf) %i.alz, <8 x float> nofpclass(nan inf) %.1723652775.i) ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %.014352779.i, i64 12
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !110
  %i.amd = insertelement <8 x float> poison, float %i.amc, i64 0
  %i.ame = shufflevector <8 x float> %i.amd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alm, <8 x float> nofpclass(nan inf) %i.ame, <8 x float> nofpclass(nan inf) %.1723862774.i) ; 2 uses
  %i.amg = getelementptr inbounds [4 x i8], ptr %.014352779.i, i64 %i.abs
  %i.amh = getelementptr inbounds nuw i8, ptr %.1713222780.i, i64 128
  %i.ami = add nuw nsw i32 %.014382778.i, 1       ; 2 uses
  %exitcond3769.not.i = icmp eq i32 %i.ami, %i.abo
  br i1 %exitcond3769.not.i, label %.loopexit2627.loopexit.i, label %.lr.ph2781.i, !llvm.loop !214

.loopexit2627.loopexit.i:                         ; preds = %.lr.ph2781.i
  %scevgep3767.i = getelementptr i8, ptr %.1613212806.i, i64 128
  %scevgep3768.i = getelementptr i8, ptr %scevgep3767.i, i64 %i.acc
  br label %.loopexit2625.i

.loopexit2627.i:                                  ; preds = %bb.t
  br i1 %i.fd, label %.preheader2624.i, label %.loopexit2625.i

.preheader2624.i:                                 ; preds = %.loopexit2627.i
  br i1 %i.abp, label %.lr.ph2795.i, label %.loopexit2625.i

.lr.ph2795.i:                                     ; preds = %.preheader2624.i, %.lr.ph2795.i
  %.1913242794.i = phi ptr [ %i.ank, %.lr.ph2795.i ], [ %.1613212806.i, %.preheader2624.i ] ; 5 uses
  %.214372793.i = phi ptr [ %i.anj, %.lr.ph2795.i ], [ %gep2817.i, %.preheader2624.i ] ; 5 uses
  %.014392792.i = phi i32 [ %i.anl, %.lr.ph2795.i ], [ 0, %.preheader2624.i ]
  %.2023152791.i = phi <8 x float> [ %i.amt, %.lr.ph2795.i ], [ %.1723122804.i, %.preheader2624.i ]
  %.1923442790.i = phi <8 x float> [ %i.amy, %.lr.ph2795.i ], [ %.1623412803.i, %.preheader2624.i ]
  %.1923672789.i = phi <8 x float> [ %i.and, %.lr.ph2795.i ], [ %.1623642802.i, %.preheader2624.i ]
  %.1923882788.i = phi <8 x float> [ %i.ani, %.lr.ph2795.i ], [ %.1623852801.i, %.preheader2624.i ]
  %i.amj = load <8 x float>, ptr %.1913242794.i, align 32, !tbaa !50
  %i.amk = getelementptr inbounds nuw i8, ptr %.1913242794.i, i64 32
  %i.aml = load <8 x float>, ptr %i.amk, align 32, !tbaa !50
  %i.amm = getelementptr inbounds nuw i8, ptr %.1913242794.i, i64 64
  %i.amn = load <8 x float>, ptr %i.amm, align 32, !tbaa !50
  %i.amo = getelementptr inbounds nuw i8, ptr %.1913242794.i, i64 96
  %i.amp = load <8 x float>, ptr %i.amo, align 32, !tbaa !50
  %i.amq = load float, ptr %.214372793.i, align 4, !tbaa !110
  %i.amr = insertelement <8 x float> poison, float %i.amq, i64 0
  %i.ams = shufflevector <8 x float> %i.amr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amj, <8 x float> nofpclass(nan inf) %i.ams, <8 x float> nofpclass(nan inf) %.2023152791.i) ; 2 uses
  %i.amu = getelementptr inbounds [4 x i8], ptr %.214372793.i, i64 %i.abu
  %i.amv = load float, ptr %i.amu, align 4, !tbaa !110
  %i.amw = insertelement <8 x float> poison, float %i.amv, i64 0
  %i.amx = shufflevector <8 x float> %i.amw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aml, <8 x float> nofpclass(nan inf) %i.amx, <8 x float> nofpclass(nan inf) %.1923442790.i) ; 2 uses
  %i.amz = getelementptr inbounds [4 x i8], ptr %.214372793.i, i64 %i.abw
  %i.ana = load float, ptr %i.amz, align 4, !tbaa !110
  %i.anb = insertelement <8 x float> poison, float %i.ana, i64 0
  %i.anc = shufflevector <8 x float> %i.anb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.and = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amn, <8 x float> nofpclass(nan inf) %i.anc, <8 x float> nofpclass(nan inf) %.1923672789.i) ; 2 uses
  %i.ane = getelementptr inbounds [4 x i8], ptr %.214372793.i, i64 %i.aby
  %i.anf = load float, ptr %i.ane, align 4, !tbaa !110
  %i.ang = insertelement <8 x float> poison, float %i.anf, i64 0
  %i.anh = shufflevector <8 x float> %i.ang, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ani = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amp, <8 x float> nofpclass(nan inf) %i.anh, <8 x float> nofpclass(nan inf) %.1923882788.i) ; 2 uses
  %i.anj = getelementptr inbounds [4 x i8], ptr %.214372793.i, i64 %i.abz
  %i.ank = getelementptr inbounds nuw i8, ptr %.1913242794.i, i64 128
  %i.anl = add nuw nsw i32 %.014392792.i, 1       ; 2 uses
  %exitcond3772.not.i = icmp eq i32 %i.anl, %i.abo
  br i1 %exitcond3772.not.i, label %.loopexit2625.loopexit.i, label %.lr.ph2795.i, !llvm.loop !215

.loopexit2625.loopexit.i:                         ; preds = %.lr.ph2795.i
  %scevgep3770.i = getelementptr i8, ptr %.1613212806.i, i64 128
  %scevgep3771.i = getelementptr i8, ptr %scevgep3770.i, i64 %i.acc
  br label %.loopexit2625.i

.loopexit2625.i:                                  ; preds = %.loopexit2625.loopexit.i, %.preheader2624.i, %.loopexit2627.i, %.loopexit2627.loopexit.i, %.preheader2626.i
end_hunk_4
begin_hunk_5_@_ZNK4ncnn24Convolution1D_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.neg2574.i = fmul fast <8 x float> %i.ath, splat (float -2.000000e+00)
  %i.ati = select fast <8 x i1> %i.asd, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg2574.i
  %i.atj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ati, <8 x float> splat (float f0x42B0C0A5))
  %i.atk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.atj, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.atl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atk, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.atm = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.atl, i32 1) ; 2 uses
  %i.atn = fcmp fast ogt <8 x float> %i.atm, %i.atl
  %i.ato = select <8 x i1> %i.atn, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.atp = fsub fast <8 x float> %i.atm, %i.ato   ; 2 uses
  %i.atq = fneg fast <8 x float> %i.atp           ; 2 uses
  %i.atr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.atq, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.atk)
  %i.ats = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.atq, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.atr) ; 8 uses
  %i.att = fmul fast <8 x float> %i.ats, %i.ats
  %i.atu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ats, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.atv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atu, <8 x float> nofpclass(nan inf) %i.ats, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.atw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atv, <8 x float> nofpclass(nan inf) %i.ats, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.atx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atw, <8 x float> nofpclass(nan inf) %i.ats, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.aty = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atx, <8 x float> nofpclass(nan inf) %i.ats, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.atz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aty, <8 x float> nofpclass(nan inf) %i.att, <8 x float> nofpclass(nan inf) %i.ats)
  %i.aua = fadd fast <8 x float> %i.atz, splat (float 1.000000e+00)
  %i.aub = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.atp)
  %i.auc = shl <8 x i32> %i.aub, splat (i32 23)
  %i.aud = add <8 x i32> %i.auc, splat (i32 1065353216)
  %i.aue = bitcast <8 x i32> %i.aud to <8 x float>
  %i.auf = fmul fast <8 x float> %i.aua, %i.aue
  %i.aug = fadd fast <8 x float> %i.auf, splat (float 1.000000e+00)
  %i.auh = fdiv fast <8 x float> splat (float 1.000000e+00), %i.aug
  %i.aui = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auh, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.auj = fmul fast <8 x float> %i.aui, %i.apl
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.i

bb.aa:                                            ; preds = %._crit_edge2854.i
  %i.auk = load ptr, ptr %i.ci, align 8, !tbaa !18 ; 2 uses
  %i.aul = load float, ptr %i.auk, align 4, !tbaa !110
  %i.aum = insertelement <8 x float> poison, float %i.aul, i64 0
  %i.aun = shufflevector <8 x float> %i.aum, <8 x float> poison, <8 x i32> zeroinitializer
  %i.auo = getelementptr inbounds nuw i8, ptr %i.auk, i64 4
  %i.aup = load float, ptr %i.auo, align 4, !tbaa !110
  %i.auq = insertelement <8 x float> poison, float %i.aup, i64 0
  %i.aur = shufflevector <8 x float> %i.auq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aus = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apl, <8 x float> nofpclass(nan inf) %i.aun, <8 x float> nofpclass(nan inf) %i.aur)
  %i.aut = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aus, <8 x float> zeroinitializer)
  %i.auu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aut, <8 x float> splat (float 1.000000e+00))
  %i.auv = fmul fast <8 x float> %i.auu, %i.apl
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.i

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.i:    ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %._crit_edge2854.i
  %.0.i.i = phi nsz <8 x float> [ %i.auv, %bb.aa ], [ %i.apm, %bb.v ], [ %i.apu, %bb.w ], [ %i.aqe, %bb.x ], [ %i.are, %bb.y ], [ %i.auj, %bb.z ], [ %i.apl, %._crit_edge2854.i ] ; 11 uses
  switch i32 %i.ef, label %.thread2540.i [
    i32 8, label %.thread.i
    i32 4, label %bb.ab
    i32 1, label %bb.ac
  ]

.thread.i:                                        ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.i
  store <8 x float> %.0.i.i, ptr %.013002863.i, align 32, !tbaa !50
  %i.auw = getelementptr inbounds nuw i8, ptr %.013002863.i, i64 32
  br label %.thread2540.i

bb.ab:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.i
  %i.aux = shufflevector <8 x float> %.0.i.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.aux, ptr %.013002863.i, align 16, !tbaa !50
  %i.auy = getelementptr inbounds [4 x i8], ptr %.013002863.i, i64 %i.fh
  %i.auz = shufflevector <8 x float> %.0.i.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.auz, ptr %i.auy, align 16, !tbaa !50
  %i.ava = getelementptr inbounds nuw i8, ptr %.013002863.i, i64 16
  br label %.thread2540.i

bb.ac:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.i
  %.sroa.01836.0.vec.extract.i = extractelement <8 x float> %.0.i.i, i64 0
  store float %.sroa.01836.0.vec.extract.i, ptr %.013002863.i, align 4, !tbaa !110
  %.sroa.01836.4.vec.extract.i = extractelement <8 x float> %.0.i.i, i64 1
  %i.avb = getelementptr inbounds [4 x i8], ptr %.013002863.i, i64 %i.fh
  store float %.sroa.01836.4.vec.extract.i, ptr %i.avb, align 4, !tbaa !110
  %.sroa.01836.8.vec.extract.i = extractelement <8 x float> %.0.i.i, i64 2
  %i.avc = getelementptr inbounds [4 x i8], ptr %.013002863.i, i64 %i.fj
  store float %.sroa.01836.8.vec.extract.i, ptr %i.avc, align 4, !tbaa !110
  %.sroa.01836.12.vec.extract.i = extractelement <8 x float> %.0.i.i, i64 3
  %i.avd = getelementptr inbounds [4 x i8], ptr %.013002863.i, i64 %i.fl
  store float %.sroa.01836.12.vec.extract.i, ptr %i.avd, align 4, !tbaa !110
  %.sroa.01836.16.vec.extract.i = extractelement <8 x float> %.0.i.i, i64 4
  %i.ave = getelementptr inbounds [4 x i8], ptr %.013002863.i, i64 %i.fn
  store float %.sroa.01836.16.vec.extract.i, ptr %i.ave, align 4, !tbaa !110
  %.sroa.01836.20.vec.extract.i = extractelement <8 x float> %.0.i.i, i64 5
  %i.avf = getelementptr inbounds [4 x i8], ptr %.013002863.i, i64 %i.fp
  store float %.sroa.01836.20.vec.extract.i, ptr %i.avf, align 4, !tbaa !110
  %.sroa.01836.24.vec.extract.i = extractelement <8 x float> %.0.i.i, i64 6
  %i.avg = getelementptr inbounds [4 x i8], ptr %.013002863.i, i64 %i.fr
  store float %.sroa.01836.24.vec.extract.i, ptr %i.avg, align 4, !tbaa !110
  %.sroa.01836.28.vec.extract.i = extractelement <8 x float> %.0.i.i, i64 7
  %i.avh = getelementptr inbounds [4 x i8], ptr %.013002863.i, i64 %i.ft
  store float %.sroa.01836.28.vec.extract.i, ptr %i.avh, align 4, !tbaa !110
  %i.avi = getelementptr inbounds nuw i8, ptr %.013002863.i, i64 4
  br label %.thread2540.i

.thread2540.i:                                    ; preds = %bb.ac, %bb.ab, %.thread.i, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.i
  %.31303.i = phi ptr [ %i.avi, %bb.ac ], [ %.013002863.i, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit.i ], [ %i.auw, %.thread.i ], [ %i.ava, %bb.ab ]
  %indvars.iv.next3784.i = add nuw nsw i64 %indvars.iv3783.i, 1 ; 2 uses
  %exitcond3786.not.i = icmp eq i64 %indvars.iv.next3784.i, %i.en
  br i1 %exitcond3786.not.i, label %._crit_edge.i, label %bb.m, !llvm.loop !220

._crit_edge3121.i:                                ; preds = %._crit_edge3111.i, %.lr.ph3120.i, %._crit_edge2874.i
  %i.avj = shl nsw i32 %i.dr, 2
  %i.avk = add nsw i32 %i.avj, %i.dp              ; 3 uses
  %i.avl = sub nsw i32 %i.cv, %i.avk              ; 2 uses
  %i.avm = sdiv i32 %i.avl, 2                     ; 3 uses
  store i32 %i.avm, ptr %i.h, align 4, !tbaa !184
  %i.avn = icmp sgt i32 %i.avl, 1
  br i1 %i.avn, label %.lr.ph3331.i, label %._crit_edge3332.split.i

.lr.ph3331.i:                                     ; preds = %._crit_edge3121.i
  %i.avo = load i32, ptr %i.ae, align 8, !tbaa !181 ; 9 uses
  %i.avp = load i32, ptr %i.ah, align 8, !tbaa !194
  %i.avq = mul i32 %i.avp, %i.avo                 ; 11 uses
  %i.avr = load i32, ptr %i.cp, align 4, !tbaa !179 ; 3 uses
  %i.avs = load ptr, ptr %2, align 8, !tbaa !18   ; 2 uses
  %i.avt = sext i32 %i.avr to i64
  %i.avu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.avv = load i64, ptr %i.avu, align 8, !tbaa !49
  %i.avw = mul i64 %i.avv, %i.avt                 ; 2 uses
  %i.avx = icmp sgt i32 %i.avr, 0
  %i.avy = load ptr, ptr %i.g, align 8            ; 2 uses
  %.not1503.i = icmp eq ptr %i.avy, null
  %i.avz = icmp sgt i32 %i.avq, 15
  %i.awa = icmp eq i32 %i.avo, 16
  %i.awb = icmp eq i32 %i.avo, 8                  ; 2 uses
  %i.awc = icmp eq i32 %i.avo, 4                  ; 3 uses
  %i.awd = icmp ne i32 %i.avo, 1                  ; 3 uses
  %i.awe = load i32, ptr %i.d, align 4
  br i1 %i.avx, label %.lr.ph3331.split.i, label %._crit_edge3332.split.i

.lr.ph3331.split.i:                               ; preds = %.lr.ph3331.i
  %i.awf = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.awg = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.awh = load ptr, ptr %i.cb, align 8, !tbaa !18, !noalias !221
  %i.awi = load i64, ptr %i.awg, align 8, !tbaa !20, !noalias !221
  %i.awj = load i64, ptr %i.awf, align 8, !tbaa !49, !noalias !221
  %factor.op.mul3334.i = mul i64 %i.awj, %i.awi
  %i.awk = and i32 %i.avq, -16
  %i.awl = sext i32 %i.avk to i64
  %wide.trip.count3890.i = zext nneg i32 %i.avm to i64
  %wide.trip.count3885.i = zext nneg i32 %i.avr to i64
  br label %.lr.ph3321.i

.lr.ph3120.splitthread-pre-split.i:               ; preds = %._crit_edge3111.i
  %.pr4050.i = load i32, ptr %i.cp, align 4, !tbaa !179
  br label %.lr.ph3120.split.i

.lr.ph3120.split.i:                               ; preds = %.lr.ph3120.splitthread-pre-split.i, %.lr.ph3120.split.preheader.i
  %i.awm = phi i32 [ %.pr4050.i, %.lr.ph3120.splitthread-pre-split.i ], [ %i.dy, %.lr.ph3120.split.preheader.i ] ; 2 uses
  %indvars.iv3837.i = phi i64 [ %indvars.iv.next3838.i, %.lr.ph3120.splitthread-pre-split.i ], [ 0, %.lr.ph3120.split.preheader.i ] ; 2 uses
  %i.awn = load i32, ptr %i.ae, align 8, !tbaa !181 ; 9 uses
  %i.awo = load i32, ptr %i.ah, align 8, !tbaa !194
  %i.awp = mul i32 %i.awo, %i.awn                 ; 12 uses
  %i.awq = load i32, ptr %i.cr, align 8, !tbaa !181 ; 2 uses
  %i.awr = icmp sgt i32 %i.awm, 0
  br i1 %i.awr, label %.lr.ph3110.i, label %._crit_edge3111.i

.lr.ph3110.i:                                     ; preds = %.lr.ph3120.split.i
  %i.aws = load ptr, ptr %2, align 8, !tbaa !18
  %i.awt = shl nuw nsw i64 %indvars.iv3837.i, 2
  %i.awu = add nsw i64 %i.awt, %i.ea              ; 2 uses
  %i.awv = trunc nsw i64 %i.awu to i32            ; 3 uses
  %i.aww = sdiv i32 %i.awv, %i.awq
  %i.awx = sext i32 %i.aww to i64
  %i.awy = zext nneg i32 %i.awm to i64            ; 2 uses
  %i.awz = mul nsw i64 %i.awx, %i.awy
  %i.axa = load i64, ptr %i.dt, align 8, !tbaa !49
  %i.axb = mul i64 %i.awz, %i.axa
  %i.axc = getelementptr inbounds nuw i8, ptr %i.aws, i64 %i.axb
  %i.axd = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.awu
  %i.axe = sdiv i32 %i.awv, 16
  %i.axf = insertelement <2 x i32> poison, i32 %i.awv, i64 0
  %i.axg = shufflevector <2 x i32> %i.axf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.axh = srem <2 x i32> %i.axg, <i32 16, i32 8> ; 2 uses
  %i.axi = bitcast <2 x i32> %i.axh to <8 x i8>
  %.lhs.trunc.i = extractelement <8 x i8> %i.axi, i64 0
  %i.axj = sdiv i8 %.lhs.trunc.i, 8
  %.sext.i = sext i8 %i.axj to i32
  %i.axk = extractelement <2 x i32> %i.axh, i64 1
  %i.axl = ashr exact i32 %i.axk, 2
  %i.axm = add nsw i32 %i.axl, %i.axe
  %i.axn = add nsw i32 %i.axm, %.sext.i
  %i.axo = sext i32 %i.axn to i64
  %i.axp = icmp sgt i32 %i.awp, 15
  %i.axq = load i32, ptr %i.c, align 4            ; 2 uses
  %factor.op.mul3112.i = mul i32 %i.axq, %i.awn   ; 3 uses
  %i.axr = icmp eq i32 %i.awn, 16
  %i.axs = icmp eq i32 %i.awn, 8                  ; 2 uses
  %i.axt = icmp eq i32 %i.awn, 4                  ; 3 uses
  %i.axu = icmp eq i32 %i.awn, 1                  ; 3 uses
  %i.axv = load i32, ptr %i.a, align 4            ; 8 uses
  %i.axw = icmp sgt i32 %i.axv, 0                 ; 2 uses
  %i.axx = load i32, ptr %i.f, align 4            ; 3 uses
  %i.axy = sext i32 %i.axx to i64
  %i.axz = shl nsw i32 %i.axx, 1
  %i.aya = sext i32 %i.axz to i64
  %i.ayb = mul nsw i32 %i.axx, 3
  %i.ayc = sext i32 %i.ayb to i64
  %i.ayd = and i32 %i.awp, -16
  %6 = add i32 %i.awp, -2
  %i.aye = add i32 %i.axv, -1                     ; 2 uses
  %i.ayf = zext i32 %i.aye to i64                 ; 2 uses
  %i.ayg = shl nuw nsw i64 %i.ayf, 5
  %i.ayh = shl nuw nsw i64 %i.ayf, 4
  %i.ayi = sext i32 %i.axq to i64                 ; 2 uses
  %xtraiter775 = and i32 %i.axv, 1
  %i.ayj = icmp eq i32 %i.aye, 0
  %unroll_iter781 = and i32 %i.axv, 2147483646
  %lcmp.mod777.not = icmp eq i32 %xtraiter775, 0
  %lcmp.mod780 = trunc i32 %i.axv to i1
  %xtraiter784 = and i32 %i.axv, 3                ; 3 uses
  %i.ayk = icmp ult i32 %i.axv, 4
  %unroll_iter789 = and i32 %i.axv, 2147483644
  %lcmp.mod786.not = icmp eq i32 %xtraiter784, 0
  %lcmp.mod788 = icmp ne i32 %xtraiter784, 0
  br label %bb.ad

._crit_edge3111.i:                                ; preds = %bb.at, %.lr.ph3120.split.i
  %indvars.iv.next3838.i = add nuw nsw i64 %indvars.iv3837.i, 1 ; 2 uses
  %exitcond3841.not.i = icmp eq i64 %indvars.iv.next3838.i, %wide.trip.count3840.i
  br i1 %exitcond3841.not.i, label %._crit_edge3121.i, label %.lr.ph3120.splitthread-pre-split.i, !llvm.loop !224

bb.ad:                                            ; preds = %bb.at, %.lr.ph3110.i
  %indvars.iv3832.i = phi i64 [ 0, %.lr.ph3110.i ], [ %indvars.iv.next3833.i, %bb.at ] ; 6 uses
  %.014463108.i = phi ptr [ %i.axc, %.lr.ph3110.i ], [ %.21448.i, %bb.at ] ; 8 uses
  br i1 %.not1504.i, label %_ZN4ncnn3MatD2Ev.exit1507.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ayl = load <4 x float>, ptr %i.axd, align 1, !tbaa !50
  br label %_ZN4ncnn3MatD2Ev.exit1507.i

_ZN4ncnn3MatD2Ev.exit1507.i:                      ; preds = %bb.ae, %bb.ad
  %.02406.i = phi nsz <4 x float> [ zeroinitializer, %bb.ad ], [ %i.ayl, %bb.ae ] ; 2 uses
  %i.aym = load ptr, ptr %i.cb, align 8, !tbaa !18, !noalias !225
  %i.ayn = load i64, ptr %i.dv, align 8, !tbaa !20, !noalias !225
  %i.ayo = mul i64 %i.ayn, %i.axo
  %i.ayp = load i64, ptr %i.dw, align 8, !tbaa !49, !noalias !225
  %i.ayq = mul i64 %i.ayo, %i.ayp
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.aym, i64 %i.ayq ; 2 uses
  br i1 %i.axp, label %.lr.ph2944.i, label %.preheader2623.i

.lr.ph2944.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit1507.i
  %i.ays = load ptr, ptr %4, align 8, !tbaa !18
  %i.ayt = load i32, ptr %i.ag, align 4, !tbaa !179
  %i.ayu = sext i32 %i.ayt to i64
  %i.ayv = load i64, ptr %i.ad, align 8, !tbaa !49
  %factor.op.mul2951.i = mul i64 %i.ayv, %i.ayu
  %i.ayw = trunc nuw nsw i64 %indvars.iv3832.i to i32
  %.reass3113.i = mul i32 %factor.op.mul3112.i, %i.ayw
  %i.ayx = sext i32 %.reass3113.i to i64
  %invariant.gep2953.i = getelementptr [4 x i8], ptr %i.ays, i64 %i.ayx
  %i.ayy = load i32, ptr %i.a, align 4            ; 6 uses
  %i.ayz = icmp sgt i32 %i.ayy, 0                 ; 4 uses
  %i.aza = load i32, ptr %i.b, align 4            ; 4 uses
  %i.azb = shl nsw i32 %i.aza, 4
  %i.azc = sext i32 %i.azb to i64
  %i.azd = load i32, ptr %i.e, align 4            ; 15 uses
  %i.aze = sext i32 %i.azd to i64                 ; 3 uses
  %i.azf = shl nsw i32 %i.aza, 3
  %i.azg = sext i32 %i.azf to i64                 ; 2 uses
  %i.azh = shl nsw i32 %i.azd, 1
  %i.azi = sext i32 %i.azh to i64                 ; 2 uses
  %i.azj = mul nsw i32 %i.azd, 3
  %i.azk = sext i32 %i.azj to i64                 ; 2 uses
  %i.azl = shl nsw i32 %i.aza, 2
  %i.azm = sext i32 %i.azl to i64                 ; 4 uses
  %i.azn = shl nsw i32 %i.azd, 2
  %i.azo = sext i32 %i.azn to i64
  %i.azp = mul nsw i32 %i.azd, 5
  %i.azq = sext i32 %i.azp to i64
  %i.azr = mul nsw i32 %i.azd, 6
  %i.azs = sext i32 %i.azr to i64
  %i.azt = mul nsw i32 %i.azd, 7
  %i.azu = sext i32 %i.azt to i64
  %i.azv = shl nsw i32 %i.azd, 3
  %i.azw = sext i32 %i.azv to i64
  %i.azx = mul nsw i32 %i.azd, 9
  %i.azy = sext i32 %i.azx to i64
  %i.azz = mul nsw i32 %i.azd, 10
  %i.baa = sext i32 %i.azz to i64
  %i.bab = mul nsw i32 %i.azd, 11
  %i.bac = sext i32 %i.bab to i64
  %i.bad = mul nsw i32 %i.azd, 12
  %i.bae = sext i32 %i.bad to i64
  %i.baf = mul nsw i32 %i.azd, 13
  %i.bag = sext i32 %i.baf to i64
  %i.bah = mul nsw i32 %i.azd, 14
  %i.bai = sext i32 %i.bah to i64
  %i.baj = mul nsw i32 %i.azd, 15
  %i.bak = sext i32 %i.baj to i64
  %i.bal = sext i32 %i.aza to i64
  %i.bam = add i32 %i.ayy, -1
  %i.ban = zext i32 %i.bam to i64
  %i.bao = shl nuw nsw i64 %i.ban, 8              ; 4 uses
  br label %bb.af

.preheader2623.i:                                 ; preds = %.loopexit2615.i, %_ZN4ncnn3MatD2Ev.exit1507.i
  %.02476.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1507.i ], [ %.82484.i, %.loopexit2615.i ] ; 2 uses
  %.02455.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1507.i ], [ %.82463.i, %.loopexit2615.i ] ; 2 uses
  %.02432.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1507.i ], [ %.82440.i, %.loopexit2615.i ] ; 2 uses
  %.12407.lcssa.i = phi <4 x float> [ %.02406.i, %_ZN4ncnn3MatD2Ev.exit1507.i ], [ %.92415.i, %.loopexit2615.i ] ; 2 uses
  %.01475.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1507.i ], [ %i.ayd, %.loopexit2615.i ] ; 3 uses
  %.01450.lcssa.i = phi ptr [ %i.ayr, %_ZN4ncnn3MatD2Ev.exit1507.i ], [ %.81458.i, %.loopexit2615.i ] ; 2 uses
  %i.bap = or disjoint i32 %.01475.lcssa.i, 7
  %i.baq = icmp slt i32 %i.bap, %i.awp
  br i1 %i.baq, label %.lr.ph3004.i, label %.preheader2622.i

.lr.ph3004.i:                                     ; preds = %.preheader2623.i
  %i.bar = load ptr, ptr %4, align 8, !tbaa !18
  %i.bas = load i32, ptr %i.ag, align 4, !tbaa !179
  %i.bat = sext i32 %i.bas to i64
  %i.bau = load i64, ptr %i.ad, align 8, !tbaa !49
  %factor.op.mul3011.i = mul i64 %i.bau, %i.bat
  %i.bav = trunc nuw nsw i64 %indvars.iv3832.i to i32
  %.reass3115.i = mul i32 %factor.op.mul3112.i, %i.bav
  %i.baw = sext i32 %.reass3115.i to i64
  %invariant.gep3013.i = getelementptr [4 x i8], ptr %i.bar, i64 %i.baw
  %i.bax = load i32, ptr %i.a, align 4            ; 5 uses
  %i.bay = icmp sgt i32 %i.bax, 0                 ; 3 uses
  %i.baz = load i32, ptr %i.b, align 4            ; 3 uses
  %i.bba = shl nsw i32 %i.baz, 3
  %i.bbb = sext i32 %i.bba to i64
  %i.bbc = load i32, ptr %i.e, align 4            ; 7 uses
  %i.bbd = sext i32 %i.bbc to i64                 ; 2 uses
  %i.bbe = shl nsw i32 %i.baz, 2
  %i.bbf = sext i32 %i.bbe to i64                 ; 2 uses
  %i.bbg = shl nsw i32 %i.bbc, 1
  %i.bbh = sext i32 %i.bbg to i64
  %i.bbi = mul nsw i32 %i.bbc, 3
  %i.bbj = sext i32 %i.bbi to i64
  %i.bbk = shl nsw i32 %i.bbc, 2
  %i.bbl = sext i32 %i.bbk to i64
  %i.bbm = mul nsw i32 %i.bbc, 5
  %i.bbn = sext i32 %i.bbm to i64
  %i.bbo = mul nsw i32 %i.bbc, 6
  %i.bbp = sext i32 %i.bbo to i64
  %i.bbq = mul nsw i32 %i.bbc, 7
  %i.bbr = sext i32 %i.bbq to i64
  %i.bbs = sext i32 %i.baz to i64
  %i.bbt = add i32 %i.bax, -1
  %i.bbu = zext i32 %i.bbt to i64
  %i.bbv = shl nuw nsw i64 %i.bbu, 7              ; 3 uses
  br label %bb.ai

bb.af:                                            ; preds = %.loopexit2615.i, %.lr.ph2944.i
  %.014502943.i = phi ptr [ %i.ayr, %.lr.ph2944.i ], [ %.81458.i, %.loopexit2615.i ] ; 13 uses
  %.014752942.i = phi i32 [ 0, %.lr.ph2944.i ], [ %i.btm, %.loopexit2615.i ] ; 2 uses
  %.124072941.i = phi <4 x float> [ %.02406.i, %.lr.ph2944.i ], [ %.92415.i, %.loopexit2615.i ] ; 9 uses
  %.024322940.i = phi <4 x float> [ zeroinitializer, %.lr.ph2944.i ], [ %.82440.i, %.loopexit2615.i ] ; 9 uses
  %.024552939.i = phi <4 x float> [ zeroinitializer, %.lr.ph2944.i ], [ %.82463.i, %.loopexit2615.i ] ; 9 uses
  %.024762938.i = phi <4 x float> [ zeroinitializer, %.lr.ph2944.i ], [ %.82484.i, %.loopexit2615.i ] ; 9 uses
  %i.bbw = sdiv i32 %.014752942.i, %i.awn
  %i.bbx = sext i32 %i.bbw to i64
  %.reass2952.i = mul i64 %factor.op.mul2951.i, %i.bbx
  %gep2954.i = getelementptr i8, ptr %invariant.gep2953.i, i64 %.reass2952.i ; 8 uses
  br i1 %i.axr, label %.preheader2618.i, label %.loopexit2619.i

.preheader2618.i:                                 ; preds = %bb.af
  br i1 %i.ayz, label %.lr.ph2884.i, label %.loopexit2615.i

.lr.ph2884.i:                                     ; preds = %.preheader2618.i, %.lr.ph2884.i
  %.114512883.i = phi ptr [ %i.bgf, %.lr.ph2884.i ], [ %.014502943.i, %.preheader2618.i ] ; 17 uses
  %.014802882.i = phi ptr [ %i.bge, %.lr.ph2884.i ], [ %gep2954.i, %.preheader2618.i ] ; 17 uses
  %.014872881.i = phi i32 [ %i.bgg, %.lr.ph2884.i ], [ 0, %.preheader2618.i ]
  %.224082880.i = phi <4 x float> [ %i.bfo, %.lr.ph2884.i ], [ %.124072941.i, %.preheader2618.i ]
  %.124332879.i = phi <4 x float> [ %i.bft, %.lr.ph2884.i ], [ %.024322940.i, %.preheader2618.i ]
  %.124562878.i = phi <4 x float> [ %i.bfy, %.lr.ph2884.i ], [ %.024552939.i, %.preheader2618.i ]
  %.124772877.i = phi <4 x float> [ %i.bgd, %.lr.ph2884.i ], [ %.024762938.i, %.preheader2618.i ]
  %i.bby = load <4 x float>, ptr %.114512883.i, align 16, !tbaa !50
  %i.bbz = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 16
  %i.bca = load <4 x float>, ptr %i.bbz, align 16, !tbaa !50
  %i.bcb = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 32
  %i.bcc = load <4 x float>, ptr %i.bcb, align 16, !tbaa !50
  %i.bcd = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 48
  %i.bce = load <4 x float>, ptr %i.bcd, align 16, !tbaa !50
  %i.bcf = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 64
  %i.bcg = load <4 x float>, ptr %i.bcf, align 16, !tbaa !50
  %i.bch = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 80
  %i.bci = load <4 x float>, ptr %i.bch, align 16, !tbaa !50
  %i.bcj = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 96
  %i.bck = load <4 x float>, ptr %i.bcj, align 16, !tbaa !50
  %i.bcl = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 112
  %i.bcm = load <4 x float>, ptr %i.bcl, align 16, !tbaa !50
  %i.bcn = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 128
  %i.bco = load <4 x float>, ptr %i.bcn, align 16, !tbaa !50
  %i.bcp = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 144
  %i.bcq = load <4 x float>, ptr %i.bcp, align 16, !tbaa !50
  %i.bcr = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 160
  %i.bcs = load <4 x float>, ptr %i.bcr, align 16, !tbaa !50
  %i.bct = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 176
  %i.bcu = load <4 x float>, ptr %i.bct, align 16, !tbaa !50
  %i.bcv = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 192
  %i.bcw = load <4 x float>, ptr %i.bcv, align 16, !tbaa !50
  %i.bcx = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 208
  %i.bcy = load <4 x float>, ptr %i.bcx, align 16, !tbaa !50
  %i.bcz = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 224
  %i.bda = load <4 x float>, ptr %i.bcz, align 16, !tbaa !50
  %i.bdb = getelementptr inbounds nuw i8, ptr %.114512883.i, i64 240
  %i.bdc = load <4 x float>, ptr %i.bdb, align 16, !tbaa !50
  %i.bdd = load float, ptr %.014802882.i, align 4, !tbaa !110
end_hunk_5
begin_hunk_6_@_ZNK4ncnn24Convolution1D_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.bwg = getelementptr inbounds nuw i8, ptr %.014172960.i, i64 24
  %i.bwh = load float, ptr %i.bwg, align 4, !tbaa !110
  %i.bwi = insertelement <4 x float> poison, float %i.bwh, i64 0
  %i.bwj = shufflevector <4 x float> %i.bwi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bwk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bva, <4 x float> nofpclass(nan inf) %i.bwj, <4 x float> nofpclass(nan inf) %i.bvq) ; 2 uses
  %i.bwl = getelementptr inbounds nuw i8, ptr %.014172960.i, i64 28
  %i.bwm = load float, ptr %i.bwl, align 4, !tbaa !110
  %i.bwn = insertelement <4 x float> poison, float %i.bwm, i64 0
  %i.bwo = shufflevector <4 x float> %i.bwn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bwp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bvc, <4 x float> nofpclass(nan inf) %i.bwo, <4 x float> nofpclass(nan inf) %i.bvv) ; 2 uses
  %i.bwq = getelementptr inbounds [4 x i8], ptr %.014172960.i, i64 %i.bbb
  %i.bwr = getelementptr inbounds nuw i8, ptr %.1014602959.i, i64 128
  %i.bws = add nuw nsw i32 %.014162961.i, 1       ; 2 uses
  %exitcond3806.not.i = icmp eq i32 %i.bws, %i.bax
  br i1 %exitcond3806.not.i, label %.loopexit2613.loopexit.i, label %.lr.ph2962.i, !llvm.loop !233

.loopexit2613.loopexit.i:                         ; preds = %.lr.ph2962.i
  %scevgep3804.i = getelementptr i8, ptr %.914593003.i, i64 128
  %scevgep3805.i = getelementptr i8, ptr %scevgep3804.i, i64 %i.bbv
  br label %.loopexit2610.i

.loopexit2613.i:                                  ; preds = %bb.ai
  br i1 %i.axt, label %bb.aj, label %.loopexit2611.i

bb.aj:                                            ; preds = %.loopexit2613.i
  br i1 %i.bay, label %.lr.ph2978.preheader.i, label %.loopexit2610.i

.lr.ph2978.preheader.i:                           ; preds = %bb.aj
  %i.bwt = getelementptr inbounds [4 x i8], ptr %gep3014.i, i64 %i.bbd
  br label %.lr.ph2978.i

.lr.ph2978.i:                                     ; preds = %.lr.ph2978.i, %.lr.ph2978.preheader.i
  %.014142976.i = phi i32 [ %i.byy, %.lr.ph2978.i ], [ 0, %.lr.ph2978.preheader.i ]
  %.014152975.i = phi ptr [ %i.byw, %.lr.ph2978.i ], [ %i.bwt, %.lr.ph2978.preheader.i ] ; 5 uses
  %.214192974.i = phi ptr [ %i.byv, %.lr.ph2978.i ], [ %gep3014.i, %.lr.ph2978.preheader.i ] ; 5 uses
  %.1214622973.i = phi ptr [ %i.byx, %.lr.ph2978.i ], [ %.914593003.i, %.lr.ph2978.preheader.i ] ; 9 uses
  %.1324192972.i = phi <4 x float> [ %i.byf, %.lr.ph2978.i ], [ %.1024163001.i, %.lr.ph2978.preheader.i ]
  %.1224442971.i = phi <4 x float> [ %i.byk, %.lr.ph2978.i ], [ %.924413000.i, %.lr.ph2978.preheader.i ]
  %.1224672970.i = phi <4 x float> [ %i.byp, %.lr.ph2978.i ], [ %.924642999.i, %.lr.ph2978.preheader.i ]
  %.1224882969.i = phi <4 x float> [ %i.byu, %.lr.ph2978.i ], [ %.924852998.i, %.lr.ph2978.preheader.i ]
  %i.bwu = load <4 x float>, ptr %.1214622973.i, align 16, !tbaa !50
  %i.bwv = getelementptr inbounds nuw i8, ptr %.1214622973.i, i64 16
  %i.bww = load <4 x float>, ptr %i.bwv, align 16, !tbaa !50
  %i.bwx = getelementptr inbounds nuw i8, ptr %.1214622973.i, i64 32
  %i.bwy = load <4 x float>, ptr %i.bwx, align 16, !tbaa !50
  %i.bwz = getelementptr inbounds nuw i8, ptr %.1214622973.i, i64 48
  %i.bxa = load <4 x float>, ptr %i.bwz, align 16, !tbaa !50
  %i.bxb = getelementptr inbounds nuw i8, ptr %.1214622973.i, i64 64
  %i.bxc = load <4 x float>, ptr %i.bxb, align 16, !tbaa !50
  %i.bxd = getelementptr inbounds nuw i8, ptr %.1214622973.i, i64 80
  %i.bxe = load <4 x float>, ptr %i.bxd, align 16, !tbaa !50
  %i.bxf = getelementptr inbounds nuw i8, ptr %.1214622973.i, i64 96
  %i.bxg = load <4 x float>, ptr %i.bxf, align 16, !tbaa !50
  %i.bxh = getelementptr inbounds nuw i8, ptr %.1214622973.i, i64 112
  %i.bxi = load <4 x float>, ptr %i.bxh, align 16, !tbaa !50
  %i.bxj = load float, ptr %.214192974.i, align 4, !tbaa !110
  %i.bxk = insertelement <4 x float> poison, float %i.bxj, i64 0
  %i.bxl = shufflevector <4 x float> %i.bxk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bxm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bwu, <4 x float> nofpclass(nan inf) %i.bxl, <4 x float> nofpclass(nan inf) %.1324192972.i)
  %i.bxn = getelementptr inbounds nuw i8, ptr %.214192974.i, i64 4
  %i.bxo = load float, ptr %i.bxn, align 4, !tbaa !110
  %i.bxp = insertelement <4 x float> poison, float %i.bxo, i64 0
  %i.bxq = shufflevector <4 x float> %i.bxp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bxr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bww, <4 x float> nofpclass(nan inf) %i.bxq, <4 x float> nofpclass(nan inf) %.1224442971.i)
  %i.bxs = getelementptr inbounds nuw i8, ptr %.214192974.i, i64 8
  %i.bxt = load float, ptr %i.bxs, align 4, !tbaa !110
  %i.bxu = insertelement <4 x float> poison, float %i.bxt, i64 0
  %i.bxv = shufflevector <4 x float> %i.bxu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bxw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bwy, <4 x float> nofpclass(nan inf) %i.bxv, <4 x float> nofpclass(nan inf) %.1224672970.i)
  %i.bxx = getelementptr inbounds nuw i8, ptr %.214192974.i, i64 12
  %i.bxy = load float, ptr %i.bxx, align 4, !tbaa !110
  %i.bxz = insertelement <4 x float> poison, float %i.bxy, i64 0
  %i.bya = shufflevector <4 x float> %i.bxz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxa, <4 x float> nofpclass(nan inf) %i.bya, <4 x float> nofpclass(nan inf) %.1224882969.i)
  %i.byc = load float, ptr %.014152975.i, align 4, !tbaa !110
  %i.byd = insertelement <4 x float> poison, float %i.byc, i64 0
  %i.bye = shufflevector <4 x float> %i.byd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxc, <4 x float> nofpclass(nan inf) %i.bye, <4 x float> nofpclass(nan inf) %i.bxm) ; 2 uses
  %i.byg = getelementptr inbounds nuw i8, ptr %.014152975.i, i64 4
  %i.byh = load float, ptr %i.byg, align 4, !tbaa !110
  %i.byi = insertelement <4 x float> poison, float %i.byh, i64 0
  %i.byj = shufflevector <4 x float> %i.byi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxe, <4 x float> nofpclass(nan inf) %i.byj, <4 x float> nofpclass(nan inf) %i.bxr) ; 2 uses
  %i.byl = getelementptr inbounds nuw i8, ptr %.014152975.i, i64 8
  %i.bym = load float, ptr %i.byl, align 4, !tbaa !110
  %i.byn = insertelement <4 x float> poison, float %i.bym, i64 0
  %i.byo = shufflevector <4 x float> %i.byn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxg, <4 x float> nofpclass(nan inf) %i.byo, <4 x float> nofpclass(nan inf) %i.bxw) ; 2 uses
  %i.byq = getelementptr inbounds nuw i8, ptr %.014152975.i, i64 12
  %i.byr = load float, ptr %i.byq, align 4, !tbaa !110
  %i.bys = insertelement <4 x float> poison, float %i.byr, i64 0
  %i.byt = shufflevector <4 x float> %i.bys, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxi, <4 x float> nofpclass(nan inf) %i.byt, <4 x float> nofpclass(nan inf) %i.byb) ; 2 uses
  %i.byv = getelementptr inbounds [4 x i8], ptr %.214192974.i, i64 %i.bbf
  %i.byw = getelementptr inbounds [4 x i8], ptr %.014152975.i, i64 %i.bbf
  %i.byx = getelementptr inbounds nuw i8, ptr %.1214622973.i, i64 128
  %i.byy = add nuw nsw i32 %.014142976.i, 1       ; 2 uses
  %exitcond3809.not.i = icmp eq i32 %i.byy, %i.bax
  br i1 %exitcond3809.not.i, label %.loopexit2611.loopexit.i, label %.lr.ph2978.i, !llvm.loop !234

.loopexit2611.loopexit.i:                         ; preds = %.lr.ph2978.i
  %scevgep3807.i = getelementptr i8, ptr %.914593003.i, i64 128
  %scevgep3808.i = getelementptr i8, ptr %scevgep3807.i, i64 %i.bbv
  br label %.loopexit2610.i

.loopexit2611.i:                                  ; preds = %.loopexit2613.i
  br i1 %i.axu, label %.preheader2609.i, label %.loopexit2610.i

.preheader2609.i:                                 ; preds = %.loopexit2611.i
  br i1 %i.bay, label %.lr.ph2992.i, label %.loopexit2610.i

.lr.ph2992.i:                                     ; preds = %.preheader2609.i, %.lr.ph2992.i
  %.014132991.i = phi i32 [ %i.cbd, %.lr.ph2992.i ], [ 0, %.preheader2609.i ]
  %.414212990.i = phi ptr [ %i.cbb, %.lr.ph2992.i ], [ %gep3014.i, %.preheader2609.i ] ; 9 uses
  %.1414642989.i = phi ptr [ %i.cbc, %.lr.ph2992.i ], [ %.914593003.i, %.preheader2609.i ] ; 9 uses
  %.1524212988.i = phi <4 x float> [ %i.cal, %.lr.ph2992.i ], [ %.1024163001.i, %.preheader2609.i ]
  %.1424462987.i = phi <4 x float> [ %i.caq, %.lr.ph2992.i ], [ %.924413000.i, %.preheader2609.i ]
  %.1424692986.i = phi <4 x float> [ %i.cav, %.lr.ph2992.i ], [ %.924642999.i, %.preheader2609.i ]
  %.1424902985.i = phi <4 x float> [ %i.cba, %.lr.ph2992.i ], [ %.924852998.i, %.preheader2609.i ]
  %i.byz = load <4 x float>, ptr %.1414642989.i, align 16, !tbaa !50
  %i.bza = getelementptr inbounds nuw i8, ptr %.1414642989.i, i64 16
  %i.bzb = load <4 x float>, ptr %i.bza, align 16, !tbaa !50
  %i.bzc = getelementptr inbounds nuw i8, ptr %.1414642989.i, i64 32
  %i.bzd = load <4 x float>, ptr %i.bzc, align 16, !tbaa !50
  %i.bze = getelementptr inbounds nuw i8, ptr %.1414642989.i, i64 48
  %i.bzf = load <4 x float>, ptr %i.bze, align 16, !tbaa !50
  %i.bzg = getelementptr inbounds nuw i8, ptr %.1414642989.i, i64 64
  %i.bzh = load <4 x float>, ptr %i.bzg, align 16, !tbaa !50
  %i.bzi = getelementptr inbounds nuw i8, ptr %.1414642989.i, i64 80
  %i.bzj = load <4 x float>, ptr %i.bzi, align 16, !tbaa !50
  %i.bzk = getelementptr inbounds nuw i8, ptr %.1414642989.i, i64 96
  %i.bzl = load <4 x float>, ptr %i.bzk, align 16, !tbaa !50
  %i.bzm = getelementptr inbounds nuw i8, ptr %.1414642989.i, i64 112
  %i.bzn = load <4 x float>, ptr %i.bzm, align 16, !tbaa !50
  %i.bzo = load float, ptr %.414212990.i, align 4, !tbaa !110
  %i.bzp = insertelement <4 x float> poison, float %i.bzo, i64 0
  %i.bzq = shufflevector <4 x float> %i.bzp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bzr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.byz, <4 x float> nofpclass(nan inf) %i.bzq, <4 x float> nofpclass(nan inf) %.1524212988.i)
  %i.bzs = getelementptr inbounds [4 x i8], ptr %.414212990.i, i64 %i.bbd
  %i.bzt = load float, ptr %i.bzs, align 4, !tbaa !110
  %i.bzu = insertelement <4 x float> poison, float %i.bzt, i64 0
  %i.bzv = shufflevector <4 x float> %i.bzu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bzw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzb, <4 x float> nofpclass(nan inf) %i.bzv, <4 x float> nofpclass(nan inf) %.1424462987.i)
  %i.bzx = getelementptr inbounds [4 x i8], ptr %.414212990.i, i64 %i.bbh
  %i.bzy = load float, ptr %i.bzx, align 4, !tbaa !110
  %i.bzz = insertelement <4 x float> poison, float %i.bzy, i64 0
  %i.caa = shufflevector <4 x float> %i.bzz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cab = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzd, <4 x float> nofpclass(nan inf) %i.caa, <4 x float> nofpclass(nan inf) %.1424692986.i)
  %i.cac = getelementptr inbounds [4 x i8], ptr %.414212990.i, i64 %i.bbj
  %i.cad = load float, ptr %i.cac, align 4, !tbaa !110
  %i.cae = insertelement <4 x float> poison, float %i.cad, i64 0
  %i.caf = shufflevector <4 x float> %i.cae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cag = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzf, <4 x float> nofpclass(nan inf) %i.caf, <4 x float> nofpclass(nan inf) %.1424902985.i)
  %i.cah = getelementptr inbounds [4 x i8], ptr %.414212990.i, i64 %i.bbl
  %i.cai = load float, ptr %i.cah, align 4, !tbaa !110
  %i.caj = insertelement <4 x float> poison, float %i.cai, i64 0
  %i.cak = shufflevector <4 x float> %i.caj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cal = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzh, <4 x float> nofpclass(nan inf) %i.cak, <4 x float> nofpclass(nan inf) %i.bzr) ; 2 uses
  %i.cam = getelementptr inbounds [4 x i8], ptr %.414212990.i, i64 %i.bbn
  %i.can = load float, ptr %i.cam, align 4, !tbaa !110
  %i.cao = insertelement <4 x float> poison, float %i.can, i64 0
  %i.cap = shufflevector <4 x float> %i.cao, <4 x float> poison, <4 x i32> zeroinitializer
  %i.caq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzj, <4 x float> nofpclass(nan inf) %i.cap, <4 x float> nofpclass(nan inf) %i.bzw) ; 2 uses
  %i.car = getelementptr inbounds [4 x i8], ptr %.414212990.i, i64 %i.bbp
  %i.cas = load float, ptr %i.car, align 4, !tbaa !110
  %i.cat = insertelement <4 x float> poison, float %i.cas, i64 0
  %i.cau = shufflevector <4 x float> %i.cat, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cav = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzl, <4 x float> nofpclass(nan inf) %i.cau, <4 x float> nofpclass(nan inf) %i.cab) ; 2 uses
  %i.caw = getelementptr inbounds [4 x i8], ptr %.414212990.i, i64 %i.bbr
  %i.cax = load float, ptr %i.caw, align 4, !tbaa !110
  %i.cay = insertelement <4 x float> poison, float %i.cax, i64 0
  %i.caz = shufflevector <4 x float> %i.cay, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cba = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzn, <4 x float> nofpclass(nan inf) %i.caz, <4 x float> nofpclass(nan inf) %i.cag) ; 2 uses
  %i.cbb = getelementptr inbounds [4 x i8], ptr %.414212990.i, i64 %i.bbs
  %i.cbc = getelementptr inbounds nuw i8, ptr %.1414642989.i, i64 128
  %i.cbd = add nuw nsw i32 %.014132991.i, 1       ; 2 uses
  %exitcond3812.not.i = icmp eq i32 %i.cbd, %i.bax
  br i1 %exitcond3812.not.i, label %.loopexit2610.loopexit.i, label %.lr.ph2992.i, !llvm.loop !235

.loopexit2610.loopexit.i:                         ; preds = %.lr.ph2992.i
  %scevgep3810.i = getelementptr i8, ptr %.914593003.i, i64 128
  %scevgep3811.i = getelementptr i8, ptr %scevgep3810.i, i64 %i.bbv
  br label %.loopexit2610.i

.loopexit2610.i:                                  ; preds = %.loopexit2610.loopexit.i, %.preheader2609.i, %.loopexit2611.i, %.loopexit2611.loopexit.i, %bb.aj, %.loopexit2613.loopexit.i, %.preheader2612.i
  %.152491.i = phi nsz <4 x float> [ %.924852998.i, %.loopexit2611.i ], [ %.924852998.i, %.preheader2609.i ], [ %i.cba, %.loopexit2610.loopexit.i ], [ %.924852998.i, %bb.aj ], [ %i.byu, %.loopexit2611.loopexit.i ], [ %i.bwp, %.loopexit2613.loopexit.i ], [ %.924852998.i, %.preheader2612.i ] ; 2 uses
  %.152470.i = phi nsz <4 x float> [ %.924642999.i, %.loopexit2611.i ], [ %.924642999.i, %.preheader2609.i ], [ %i.cav, %.loopexit2610.loopexit.i ], [ %.924642999.i, %bb.aj ], [ %i.byp, %.loopexit2611.loopexit.i ], [ %i.bwk, %.loopexit2613.loopexit.i ], [ %.924642999.i, %.preheader2612.i ] ; 2 uses
  %.152447.i = phi nsz <4 x float> [ %.924413000.i, %.loopexit2611.i ], [ %.924413000.i, %.preheader2609.i ], [ %i.caq, %.loopexit2610.loopexit.i ], [ %.924413000.i, %bb.aj ], [ %i.byk, %.loopexit2611.loopexit.i ], [ %i.bwf, %.loopexit2613.loopexit.i ], [ %.924413000.i, %.preheader2612.i ] ; 2 uses
  %.162422.i = phi nsz <4 x float> [ %.1024163001.i, %.loopexit2611.i ], [ %.1024163001.i, %.preheader2609.i ], [ %i.cal, %.loopexit2610.loopexit.i ], [ %.1024163001.i, %bb.aj ], [ %i.byf, %.loopexit2611.loopexit.i ], [ %i.bwa, %.loopexit2613.loopexit.i ], [ %.1024163001.i, %.preheader2612.i ] ; 2 uses
  %.151465.i = phi ptr [ %.914593003.i, %.loopexit2611.i ], [ %.914593003.i, %.preheader2609.i ], [ %scevgep3811.i, %.loopexit2610.loopexit.i ], [ %.914593003.i, %bb.aj ], [ %scevgep3808.i, %.loopexit2611.loopexit.i ], [ %scevgep3805.i, %.loopexit2613.loopexit.i ], [ %.914593003.i, %.preheader2612.i ] ; 2 uses
  %i.cbe = add nuw nsw i32 %.114763002.i, 8       ; 3 uses
  %i.cbf = or disjoint i32 %i.cbe, 7
  %i.cbg = icmp slt i32 %i.cbf, %i.awp
  br i1 %i.cbg, label %bb.ai, label %.preheader2622.i, !llvm.loop !236

.preheader2621.i:                                 ; preds = %.loopexit2606.i, %.preheader2622.i
  %.162492.lcssa.i = phi <4 x float> [ %.92485.lcssa.i, %.preheader2622.i ], [ %.202496.i, %.loopexit2606.i ]
  %.162471.lcssa.i = phi <4 x float> [ %.92464.lcssa.i, %.preheader2622.i ], [ %.202475.i, %.loopexit2606.i ]
  %.162448.lcssa.i = phi <4 x float> [ %.92441.lcssa.i, %.preheader2622.i ], [ %.202452.i, %.loopexit2606.i ] ; 3 uses
  %.172423.lcssa.i = phi <4 x float> [ %.102416.lcssa.i, %.preheader2622.i ], [ %.212427.i, %.loopexit2606.i ] ; 3 uses
  %.21477.lcssa.i = phi i32 [ %.11476.lcssa.i, %.preheader2622.i ], [ %i.cfv, %.loopexit2606.i ] ; 5 uses
  %.161466.lcssa.i = phi ptr [ %.91459.lcssa.i, %.preheader2622.i ], [ %.201470.i, %.loopexit2606.i ] ; 3 uses
  %i.cbh = or disjoint i32 %.21477.lcssa.i, 1
  %i.cbi = icmp slt i32 %i.cbh, %i.awp
  br i1 %i.cbi, label %.lr.ph3074.i, label %.preheader2620.i

.lr.ph3074.i:                                     ; preds = %.preheader2621.i
  %i.cbj = load ptr, ptr %4, align 8, !tbaa !18
  %i.cbk = load i32, ptr %i.ag, align 4, !tbaa !179
  %i.cbl = sext i32 %i.cbk to i64
  %i.cbm = load i64, ptr %i.ad, align 8, !tbaa !49
  %factor.op.mul3079.i = mul i64 %i.cbm, %i.cbl
  %i.cbn = mul nsw i64 %indvars.iv3832.i, %i.ayi
  %invariant.gep3081.i = getelementptr [4 x i8], ptr %i.cbj, i64 %i.cbn
  %i.cbo = load i32, ptr %i.e, align 4
  %i.cbp = sext i32 %i.cbo to i64                 ; 3 uses
  %i.cbq = load i32, ptr %i.b, align 4
  %i.cbr = sext i32 %i.cbq to i64                 ; 2 uses
  br i1 %i.axw, label %.lr.ph3065.us.preheader.i, label %.lr.ph3074.split.preheader.i

.lr.ph3074.split.preheader.i:                     ; preds = %.lr.ph3074.i
  %i.cbs = add i32 %.21477.lcssa.i, 2
  %reass.sub166 = sub i32 %6, %.21477.lcssa.i
  %i.cbt = and i32 %reass.sub166, -2
  %i.cbu = add i32 %i.cbs, %i.cbt
  br label %.preheader2620.i

.lr.ph3065.us.preheader.i:                        ; preds = %.lr.ph3074.i
  %i.cbv = zext i32 %.21477.lcssa.i to i64
  br label %.lr.ph3065.us.i

.lr.ph3065.us.i:                                  ; preds = %._crit_edge3066.us.i, %.lr.ph3065.us.preheader.i
  %indvars.iv3823.i = phi i64 [ %i.cbv, %.lr.ph3065.us.preheader.i ], [ %indvars.iv.next3824.i, %._crit_edge3066.us.i ] ; 2 uses
  %.2114713073.us.i = phi ptr [ %.161466.lcssa.i, %.lr.ph3065.us.preheader.i ], [ %scevgep3821.i, %._crit_edge3066.us.i ] ; 3 uses
  %.2224283071.us.i = phi <4 x float> [ %.172423.lcssa.i, %.lr.ph3065.us.preheader.i ], [ %.lcssa719, %._crit_edge3066.us.i ] ; 2 uses
  %.2124533070.us.i = phi <4 x float> [ %.162448.lcssa.i, %.lr.ph3065.us.preheader.i ], [ %.lcssa718.a, %._crit_edge3066.us.i ] ; 2 uses
  %.reass3080.us.i = mul i64 %factor.op.mul3079.i, %indvars.iv3823.i
  %gep3082.us.i = getelementptr i8, ptr %invariant.gep3081.i, i64 %.reass3080.us.i ; 2 uses
  br i1 %i.ayj, label %.epil.preheader774, label %.lr.ph3065.us.i.new

.lr.ph3065.us.i.new:                              ; preds = %.lr.ph3065.us.i, %.lr.ph3065.us.i.new
  %.014073062.us.i = phi ptr [ %i.ccw, %.lr.ph3065.us.i.new ], [ %gep3082.us.i, %.lr.ph3065.us.i ] ; 3 uses
  %.2214723061.us.i = phi ptr [ %i.ccx, %.lr.ph3065.us.i.new ], [ %.2114713073.us.i, %.lr.ph3065.us.i ] ; 5 uses
  %.2324293060.us.i = phi <4 x float> [ %i.ccq, %.lr.ph3065.us.i.new ], [ %.2224283071.us.i, %.lr.ph3065.us.i ]
  %.2224543059.us.i = phi <4 x float> [ %i.ccv, %.lr.ph3065.us.i.new ], [ %.2124533070.us.i, %.lr.ph3065.us.i ]
  %niter782 = phi i32 [ %niter782.next.1, %.lr.ph3065.us.i.new ], [ 0, %.lr.ph3065.us.i ]
  %i.cbw = load <4 x float>, ptr %.2214723061.us.i, align 16, !tbaa !50
  %i.cbx = getelementptr inbounds nuw i8, ptr %.2214723061.us.i, i64 16
  %i.cby = load <4 x float>, ptr %i.cbx, align 16, !tbaa !50
  %i.cbz = load float, ptr %.014073062.us.i, align 4, !tbaa !110
  %i.cca = insertelement <4 x float> poison, float %i.cbz, i64 0
  %i.ccb = shufflevector <4 x float> %i.cca, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ccc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cbw, <4 x float> nofpclass(nan inf) %i.ccb, <4 x float> nofpclass(nan inf) %.2324293060.us.i)
  %i.ccd = getelementptr inbounds [4 x i8], ptr %.014073062.us.i, i64 %i.cbp
  %i.cce = load float, ptr %i.ccd, align 4, !tbaa !110
  %i.ccf = insertelement <4 x float> poison, float %i.cce, i64 0
  %i.ccg = shufflevector <4 x float> %i.ccf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cch = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cby, <4 x float> nofpclass(nan inf) %i.ccg, <4 x float> nofpclass(nan inf) %.2224543059.us.i)
  %i.cci = getelementptr inbounds [4 x i8], ptr %.014073062.us.i, i64 %i.cbr ; 3 uses
  %i.ccj = getelementptr inbounds nuw i8, ptr %.2214723061.us.i, i64 32
  %i.cck = load <4 x float>, ptr %i.ccj, align 16, !tbaa !50
  %i.ccl = getelementptr inbounds nuw i8, ptr %.2214723061.us.i, i64 48
  %i.ccm = load <4 x float>, ptr %i.ccl, align 16, !tbaa !50
  %i.ccn = load float, ptr %i.cci, align 4, !tbaa !110
  %i.cco = insertelement <4 x float> poison, float %i.ccn, i64 0
  %i.ccp = shufflevector <4 x float> %i.cco, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ccq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cck, <4 x float> nofpclass(nan inf) %i.ccp, <4 x float> nofpclass(nan inf) %i.ccc) ; 3 uses
  %i.ccr = getelementptr inbounds [4 x i8], ptr %i.cci, i64 %i.cbp
  %i.ccs = load float, ptr %i.ccr, align 4, !tbaa !110
  %i.cct = insertelement <4 x float> poison, float %i.ccs, i64 0
  %i.ccu = shufflevector <4 x float> %i.cct, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ccv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ccm, <4 x float> nofpclass(nan inf) %i.ccu, <4 x float> nofpclass(nan inf) %i.cch) ; 3 uses
  %i.ccw = getelementptr inbounds [4 x i8], ptr %i.cci, i64 %i.cbr ; 2 uses
  %i.ccx = getelementptr inbounds nuw i8, ptr %.2214723061.us.i, i64 64 ; 2 uses
  %niter782.next.1 = add nuw nsw i32 %niter782, 2 ; 2 uses
  %niter782.ncmp.1 = icmp eq i32 %niter782.next.1, %unroll_iter781
  br i1 %niter782.ncmp.1, label %._crit_edge3066.us.i.unr-lcssa, label %.lr.ph3065.us.i.new, !llvm.loop !237

._crit_edge3066.us.i.unr-lcssa:                   ; preds = %.lr.ph3065.us.i.new
  br i1 %lcmp.mod777.not, label %._crit_edge3066.us.i, label %.epil.preheader774

.epil.preheader774:                               ; preds = %._crit_edge3066.us.i.unr-lcssa, %.lr.ph3065.us.i
  %.014073062.us.i.epil.init = phi ptr [ %gep3082.us.i, %.lr.ph3065.us.i ], [ %i.ccw, %._crit_edge3066.us.i.unr-lcssa ] ; 2 uses
  %.2214723061.us.i.epil.init = phi ptr [ %.2114713073.us.i, %.lr.ph3065.us.i ], [ %i.ccx, %._crit_edge3066.us.i.unr-lcssa ] ; 2 uses
  %.2324293060.us.i.epil.init = phi <4 x float> [ %.2224283071.us.i, %.lr.ph3065.us.i ], [ %i.ccq, %._crit_edge3066.us.i.unr-lcssa ]
  %.2224543059.us.i.epil.init = phi <4 x float> [ %.2124533070.us.i, %.lr.ph3065.us.i ], [ %i.ccv, %._crit_edge3066.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod780)
  %i.ccy = load <4 x float>, ptr %.2214723061.us.i.epil.init, align 16, !tbaa !50
  %i.ccz = getelementptr inbounds nuw i8, ptr %.2214723061.us.i.epil.init, i64 16
  %i.cda = load <4 x float>, ptr %i.ccz, align 16, !tbaa !50
  %i.cdb = load float, ptr %.014073062.us.i.epil.init, align 4, !tbaa !110
  %i.cdc = insertelement <4 x float> poison, float %i.cdb, i64 0
  %i.cdd = shufflevector <4 x float> %i.cdc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cde = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ccy, <4 x float> nofpclass(nan inf) %i.cdd, <4 x float> nofpclass(nan inf) %.2324293060.us.i.epil.init)
  %i.cdf = getelementptr inbounds [4 x i8], ptr %.014073062.us.i.epil.init, i64 %i.cbp
  %i.cdg = load float, ptr %i.cdf, align 4, !tbaa !110
  %i.cdh = insertelement <4 x float> poison, float %i.cdg, i64 0
  %i.cdi = shufflevector <4 x float> %i.cdh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cdj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cda, <4 x float> nofpclass(nan inf) %i.cdi, <4 x float> nofpclass(nan inf) %.2224543059.us.i.epil.init)
  br label %._crit_edge3066.us.i

._crit_edge3066.us.i:                             ; preds = %._crit_edge3066.us.i.unr-lcssa, %.epil.preheader774
  %.lcssa719 = phi <4 x float> [ %i.ccq, %._crit_edge3066.us.i.unr-lcssa ], [ %i.cde, %.epil.preheader774 ] ; 2 uses
  %.lcssa718.a = phi <4 x float> [ %i.ccv, %._crit_edge3066.us.i.unr-lcssa ], [ %i.cdj, %.epil.preheader774 ] ; 2 uses
  %scevgep3820.i.a = getelementptr i8, ptr %.2114713073.us.i, i64 32
  %scevgep3821.i = getelementptr i8, ptr %scevgep3820.i.a, i64 %i.ayg ; 2 uses
  %indvars.iv.next3824.i = add nuw nsw i64 %indvars.iv3823.i, 2 ; 2 uses
  %i.cdk = trunc i64 %indvars.iv.next3824.i to i32 ; 2 uses
  %i.cdl = or i32 %i.cdk, 1
  %i.cdm = icmp slt i32 %i.cdl, %i.awp
  br i1 %i.cdm, label %.lr.ph3065.us.i, label %.preheader2620.i, !llvm.loop !238

bb.ak:                                            ; preds = %.loopexit2606.i, %.lr.ph3048.i
  %.1614663047.i = phi ptr [ %.91459.lcssa.i, %.lr.ph3048.i ], [ %.201470.i, %.loopexit2606.i ] ; 7 uses
  %.214773046.i = phi i32 [ %.11476.lcssa.i, %.lr.ph3048.i ], [ %i.cfv, %.loopexit2606.i ] ; 2 uses
  %.1724233045.i = phi <4 x float> [ %.102416.lcssa.i, %.lr.ph3048.i ], [ %.212427.i, %.loopexit2606.i ] ; 5 uses
  %.1624483044.i = phi <4 x float> [ %.92441.lcssa.i, %.lr.ph3048.i ], [ %.202452.i, %.loopexit2606.i ] ; 5 uses
  %.1624713043.i = phi <4 x float> [ %.92464.lcssa.i, %.lr.ph3048.i ], [ %.202475.i, %.loopexit2606.i ] ; 5 uses
  %.1624923042.i = phi <4 x float> [ %.92485.lcssa.i, %.lr.ph3048.i ], [ %.202496.i, %.loopexit2606.i ] ; 5 uses
  %i.cdn = sdiv i32 %.214773046.i, %i.awn
  %i.cdo = sext i32 %i.cdn to i64
  %.reass3056.i = mul i64 %factor.op.mul3055.i, %i.cdo
  %gep3058.i = getelementptr i8, ptr %invariant.gep3057.i, i64 %.reass3056.i ; 2 uses
  br i1 %i.axt, label %.preheader2607.i, label %.loopexit2608.i

.preheader2607.i:                                 ; preds = %bb.ak
  br i1 %i.bty, label %.lr.ph3022.i, label %.loopexit2606.i

.lr.ph3022.i:                                     ; preds = %.preheader2607.i, %.lr.ph3022.i
  %.014093021.i = phi i32 [ %i.cer, %.lr.ph3022.i ], [ 0, %.preheader2607.i ]
  %.014103020.i = phi ptr [ %i.cep, %.lr.ph3022.i ], [ %gep3058.i, %.preheader2607.i ] ; 5 uses
  %.1714673019.i = phi ptr [ %i.ceq, %.lr.ph3022.i ], [ %.1614663047.i, %.preheader2607.i ] ; 5 uses
  %.1824243018.i = phi <4 x float> [ %i.cdz, %.lr.ph3022.i ], [ %.1724233045.i, %.preheader2607.i ]
  %.1724493017.i = phi <4 x float> [ %i.cee, %.lr.ph3022.i ], [ %.1624483044.i, %.preheader2607.i ]
  %.1724723016.i = phi <4 x float> [ %i.cej, %.lr.ph3022.i ], [ %.1624713043.i, %.preheader2607.i ]
  %.1724933015.i = phi <4 x float> [ %i.ceo, %.lr.ph3022.i ], [ %.1624923042.i, %.preheader2607.i ]
  %i.cdp = load <4 x float>, ptr %.1714673019.i, align 16, !tbaa !50
  %i.cdq = getelementptr inbounds nuw i8, ptr %.1714673019.i, i64 16
  %i.cdr = load <4 x float>, ptr %i.cdq, align 16, !tbaa !50
  %i.cds = getelementptr inbounds nuw i8, ptr %.1714673019.i, i64 32
  %i.cdt = load <4 x float>, ptr %i.cds, align 16, !tbaa !50
  %i.cdu = getelementptr inbounds nuw i8, ptr %.1714673019.i, i64 48
  %i.cdv = load <4 x float>, ptr %i.cdu, align 16, !tbaa !50
  %i.cdw = load float, ptr %.014103020.i, align 4, !tbaa !110
  %i.cdx = insertelement <4 x float> poison, float %i.cdw, i64 0
  %i.cdy = shufflevector <4 x float> %i.cdx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cdz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cdp, <4 x float> nofpclass(nan inf) %i.cdy, <4 x float> nofpclass(nan inf) %.1824243018.i) ; 2 uses
  %i.cea = getelementptr inbounds nuw i8, ptr %.014103020.i, i64 4
  %i.ceb = load float, ptr %i.cea, align 4, !tbaa !110
  %i.cec = insertelement <4 x float> poison, float %i.ceb, i64 0
  %i.ced = shufflevector <4 x float> %i.cec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cee = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cdr, <4 x float> nofpclass(nan inf) %i.ced, <4 x float> nofpclass(nan inf) %.1724493017.i) ; 2 uses
  %i.cef = getelementptr inbounds nuw i8, ptr %.014103020.i, i64 8
  %i.ceg = load float, ptr %i.cef, align 4, !tbaa !110
  %i.ceh = insertelement <4 x float> poison, float %i.ceg, i64 0
  %i.cei = shufflevector <4 x float> %i.ceh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cdt, <4 x float> nofpclass(nan inf) %i.cei, <4 x float> nofpclass(nan inf) %.1724723016.i) ; 2 uses
  %i.cek = getelementptr inbounds nuw i8, ptr %.014103020.i, i64 12
  %i.cel = load float, ptr %i.cek, align 4, !tbaa !110
  %i.cem = insertelement <4 x float> poison, float %i.cel, i64 0
  %i.cen = shufflevector <4 x float> %i.cem, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ceo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cdv, <4 x float> nofpclass(nan inf) %i.cen, <4 x float> nofpclass(nan inf) %.1724933015.i) ; 2 uses
  %i.cep = getelementptr inbounds [4 x i8], ptr %.014103020.i, i64 %i.bub
  %i.ceq = getelementptr inbounds nuw i8, ptr %.1714673019.i, i64 64
  %i.cer = add nuw nsw i32 %.014093021.i, 1       ; 2 uses
  %exitcond3815.not.i = icmp eq i32 %i.cer, %i.btx
  br i1 %exitcond3815.not.i, label %.loopexit2608.loopexit.i, label %.lr.ph3022.i, !llvm.loop !239

.loopexit2608.loopexit.i:                         ; preds = %.lr.ph3022.i
  %scevgep3813.i = getelementptr i8, ptr %.1614663047.i, i64 64
  %scevgep3814.i = getelementptr i8, ptr %scevgep3813.i, i64 %i.bul
  br label %.loopexit2606.i

.loopexit2608.i:                                  ; preds = %bb.ak
  br i1 %i.axu, label %.preheader2605.i, label %.loopexit2606.i

.preheader2605.i:                                 ; preds = %.loopexit2608.i
  br i1 %i.bty, label %.lr.ph3036.i, label %.loopexit2606.i

.lr.ph3036.i:                                     ; preds = %.preheader2605.i, %.lr.ph3036.i
  %.014083035.i = phi i32 [ %i.cfu, %.lr.ph3036.i ], [ 0, %.preheader2605.i ]
  %.214123034.i = phi ptr [ %i.cfs, %.lr.ph3036.i ], [ %gep3058.i, %.preheader2605.i ] ; 5 uses
  %.1914693033.i = phi ptr [ %i.cft, %.lr.ph3036.i ], [ %.1614663047.i, %.preheader2605.i ] ; 5 uses
  %.2024263032.i = phi <4 x float> [ %i.cfc, %.lr.ph3036.i ], [ %.1724233045.i, %.preheader2605.i ]
  %.1924513031.i = phi <4 x float> [ %i.cfh, %.lr.ph3036.i ], [ %.1624483044.i, %.preheader2605.i ]
  %.1924743030.i = phi <4 x float> [ %i.cfm, %.lr.ph3036.i ], [ %.1624713043.i, %.preheader2605.i ]
  %.1924953029.i = phi <4 x float> [ %i.cfr, %.lr.ph3036.i ], [ %.1624923042.i, %.preheader2605.i ]
  %i.ces = load <4 x float>, ptr %.1914693033.i, align 16, !tbaa !50
  %i.cet = getelementptr inbounds nuw i8, ptr %.1914693033.i, i64 16
  %i.ceu = load <4 x float>, ptr %i.cet, align 16, !tbaa !50
  %i.cev = getelementptr inbounds nuw i8, ptr %.1914693033.i, i64 32
  %i.cew = load <4 x float>, ptr %i.cev, align 16, !tbaa !50
  %i.cex = getelementptr inbounds nuw i8, ptr %.1914693033.i, i64 48
  %i.cey = load <4 x float>, ptr %i.cex, align 16, !tbaa !50
  %i.cez = load float, ptr %.214123034.i, align 4, !tbaa !110
  %i.cfa = insertelement <4 x float> poison, float %i.cez, i64 0
  %i.cfb = shufflevector <4 x float> %i.cfa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cfc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ces, <4 x float> nofpclass(nan inf) %i.cfb, <4 x float> nofpclass(nan inf) %.2024263032.i) ; 2 uses
  %i.cfd = getelementptr inbounds [4 x i8], ptr %.214123034.i, i64 %i.bud
  %i.cfe = load float, ptr %i.cfd, align 4, !tbaa !110
  %i.cff = insertelement <4 x float> poison, float %i.cfe, i64 0
  %i.cfg = shufflevector <4 x float> %i.cff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cfh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ceu, <4 x float> nofpclass(nan inf) %i.cfg, <4 x float> nofpclass(nan inf) %.1924513031.i) ; 2 uses
  %i.cfi = getelementptr inbounds [4 x i8], ptr %.214123034.i, i64 %i.buf
  %i.cfj = load float, ptr %i.cfi, align 4, !tbaa !110
  %i.cfk = insertelement <4 x float> poison, float %i.cfj, i64 0
  %i.cfl = shufflevector <4 x float> %i.cfk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cfm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cew, <4 x float> nofpclass(nan inf) %i.cfl, <4 x float> nofpclass(nan inf) %.1924743030.i) ; 2 uses
  %i.cfn = getelementptr inbounds [4 x i8], ptr %.214123034.i, i64 %i.buh
  %i.cfo = load float, ptr %i.cfn, align 4, !tbaa !110
  %i.cfp = insertelement <4 x float> poison, float %i.cfo, i64 0
  %i.cfq = shufflevector <4 x float> %i.cfp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cfr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cey, <4 x float> nofpclass(nan inf) %i.cfq, <4 x float> nofpclass(nan inf) %.1924953029.i) ; 2 uses
  %i.cfs = getelementptr inbounds [4 x i8], ptr %.214123034.i, i64 %i.bui
  %i.cft = getelementptr inbounds nuw i8, ptr %.1914693033.i, i64 64
  %i.cfu = add nuw nsw i32 %.014083035.i, 1       ; 2 uses
  %exitcond3818.not.i = icmp eq i32 %i.cfu, %i.btx
  br i1 %exitcond3818.not.i, label %.loopexit2606.loopexit.i, label %.lr.ph3036.i, !llvm.loop !240

.loopexit2606.loopexit.i:                         ; preds = %.lr.ph3036.i
  %scevgep3816.i = getelementptr i8, ptr %.1614663047.i, i64 64
  %scevgep3817.i = getelementptr i8, ptr %scevgep3816.i, i64 %i.bul
  br label %.loopexit2606.i

.loopexit2606.i:                                  ; preds = %.loopexit2606.loopexit.i, %.preheader2605.i, %.loopexit2608.i, %.loopexit2608.loopexit.i, %.preheader2607.i
end_hunk_6
begin_hunk_7_@_ZNK4ncnn24Convolution1D_x86_avx51213forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.at = load i64, ptr %i.as, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.av = load i32, ptr %i.au, align 8, !tbaa !180
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.at, %i.aw
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZNK4ncnn3Mat5emptyEv.exit32.thread, label %bb.j

bb.i:                                             ; preds = %bb.j, %._crit_edge
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !44
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !186
  %i.be = load i32, ptr %i.aj, align 4, !tbaa !187
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !191
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke fastcc void @_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ba, ptr noundef nonnull align 8 dereferenceable(72) %i.bb, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(72) %i.bh, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZNK4ncnn3Mat5emptyEv.exit32.thread unwind label %bb.i

_ZNK4ncnn3Mat5emptyEv.exit32.thread:              ; preds = %bb.h, %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.j, %_ZNK4ncnn3Mat5emptyEv.exit32
  %.1 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit32 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %bb.j ], [ -100, %bb.b ], [ -100, %bb.h ]
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit24, label %bb.k

bb.k:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit32.thread
  %i.bj = atomicrmw add ptr %i.bi, i32 -1 acq_rel, align 4
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit24

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !17  ; 3 uses
  %.not3.i = icmp eq ptr %i.bl, null
  %i.bm = load ptr, ptr %4, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef %i.bm)
          to label %_ZN4ncnn3MatD2Ev.exit24 unwind label %bb.p, !inline_history !19

bb.n:                                             ; preds = %bb.l
  %.not.i30 = icmp eq ptr %i.bm, null
  br i1 %.not.i30, label %_ZN4ncnn3MatD2Ev.exit24, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.bm) #12
  br label %_ZN4ncnn3MatD2Ev.exit24

bb.p:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit24:                          ; preds = %bb.k, %_ZNK4ncnn3Mat5emptyEv.exit32.thread, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.1

bb.q:                                             ; preds = %bb.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.s, %bb.c ]
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %.not.i25 = icmp eq ptr %i.bs, null
  br i1 %.not.i25, label %_ZN4ncnn3MatD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = atomicrmw add ptr %i.bs, i32 -1 acq_rel, align 4
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.s, label %_ZN4ncnn3MatD2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !17  ; 3 uses
  %.not3.i26 = icmp eq ptr %i.bv, null
  %i.bw = load ptr, ptr %4, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i26, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef %i.bw)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.w, !inline_history !19

bb.u:                                             ; preds = %bb.s
  %.not.i29 = icmp eq ptr %i.bw, null
  br i1 %.not.i29, label %_ZN4ncnn3MatD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.bw) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.w:                                             ; preds = %bb.t
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.r, %bb.q, %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn
}

declare void @_ZNK4ncnn13Convolution1D12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !184    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !184
  %i.h = load i32, ptr %0, align 4, !tbaa !184    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !184
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !184
  %i.k = load i32, ptr %i.a, align 4, !tbaa !184  ; 2 uses
  %.not982 = icmp sgt i32 %i.k, %i.j
  br i1 %.not982, label %._crit_edge986, label %.lr.ph985

.lr.ph985:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.u = load i32, ptr %i.n, align 4, !tbaa !179  ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph985.split.preheader, label %._crit_edge986

.lr.ph985.split.preheader:                        ; preds = %.lr.ph985
  %i.w = sext i32 %i.k to i64
  %i.x = add nsw i32 %i.j, 1
  br label %.lr.ph985.split

.lr.ph985.splitthread-pre-split:                  ; preds = %._crit_edge
  %.pr = load i32, ptr %i.n, align 4, !tbaa !179
  br label %.lr.ph985.split

.lr.ph985.split:                                  ; preds = %.lr.ph985.splitthread-pre-split, %.lr.ph985.split.preheader
  %i.y = phi i32 [ %.pr, %.lr.ph985.splitthread-pre-split ], [ %i.u, %.lr.ph985.split.preheader ] ; 3 uses
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %.lr.ph985.splitthread-pre-split ], [ %i.w, %.lr.ph985.split.preheader ] ; 3 uses
  %i.z = load i32, ptr %i.l, align 8, !tbaa !181  ; 11 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !194
  %i.ab = mul i32 %i.aa, %i.z                     ; 12 uses
  %i.ac = icmp sgt i32 %i.y, 0
  br i1 %i.ac, label %.lr.ph981, label %._crit_edge

.lr.ph981:                                        ; preds = %.lr.ph985.split
  %i.ad = load ptr, ptr %4, align 8, !tbaa !18
  %i.ae = shl nsw i64 %indvars.iv1086, 4          ; 2 uses
  %i.af = load i32, ptr %i.o, align 8, !tbaa !181 ; 3 uses
  %i.ag = trunc nsw i64 %i.ae to i32
  %i.ah = sdiv i32 %i.ag, %i.af
  %i.ai = sext i32 %i.ah to i64
  %i.aj = zext nneg i32 %i.y to i64
  %i.ak = mul nsw i64 %i.ai, %i.aj
  %i.al = load i64, ptr %i.p, align 8, !tbaa !49
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.am
  %i.ao = icmp sgt i32 %i.ab, 15
  %i.ap = icmp eq i32 %i.z, 16
  %i.aq = icmp eq i32 %i.z, 8                     ; 2 uses
  %i.ar = icmp eq i32 %i.z, 4                     ; 3 uses
  %i.as = icmp eq i32 %i.z, 1                     ; 3 uses
  %i.at = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.af)
  %i.au = icmp eq i32 %i.at, 1
  %i.av = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.af, i1 true)
  %i.aw = and i32 %i.ab, -16
  %14 = add i32 %i.ab, -2
  br label %bb.c

._crit_edge:                                      ; preds = %.thread743, %.lr.ph985.split
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1087 to i32
  %exitcond1089.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond1089.not, label %._crit_edge986, label %.lr.ph985.splitthread-pre-split, !llvm.loop !381

bb.c:                                             ; preds = %.lr.ph981, %.thread743
  %.0584980 = phi ptr [ %i.an, %.lr.ph981 ], [ %.4, %.thread743 ] ; 29 uses
  %.0585979 = phi i32 [ 0, %.lr.ph981 ], [ %i.avc, %.thread743 ] ; 6 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !195   ; 2 uses
  %.not715 = icmp eq ptr %i.ax, null
  br i1 %.not715, label %_ZN4ncnn3MatD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ae
  %i.az = load <16 x float>, ptr %i.ay, align 1, !tbaa !50
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %.0590 = phi nsz <16 x float> [ %i.az, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !18, !noalias !382
  %i.bb = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !382
  %i.bc = mul i64 %i.bb, %indvars.iv1086
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !49, !noalias !382
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 2 uses
  br i1 %i.ao, label %.lr.ph825, label %.preheader761

.lr.ph825:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.bg = load ptr, ptr %3, align 8, !tbaa !18
  %i.bh = load i32, ptr %i.s, align 4, !tbaa !179
  %i.bi = sext i32 %i.bh to i64
  %i.bj = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul = mul i64 %i.bj, %i.bi
  %i.bk = load i32, ptr %7, align 4, !tbaa !184
  %i.bl = mul i32 %.0585979, %i.z
  %i.bm = mul i32 %i.bl, %i.bk
  %i.bn = sext i32 %i.bm to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bg, i64 %i.bn
  br label %bb.e

.preheader761:                                    ; preds = %.loopexit753, %_ZN4ncnn3MatD2Ev.exit
  %.0685.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit ], [ %i.aw, %.loopexit753 ] ; 3 uses
  %.0660.lcssa = phi ptr [ %i.bf, %_ZN4ncnn3MatD2Ev.exit ], [ %.8668, %.loopexit753 ] ; 2 uses
  %.0639.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.8647, %.loopexit753 ] ; 2 uses
  %.0618.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.8626, %.loopexit753 ] ; 2 uses
  %.0595.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.8603, %.loopexit753 ] ; 2 uses
  %.1591.lcssa = phi <16 x float> [ %.0590, %_ZN4ncnn3MatD2Ev.exit ], [ %.9, %.loopexit753 ] ; 2 uses
  %i.bo = or disjoint i32 %.0685.lcssa, 7
  %i.bp = icmp slt i32 %i.bo, %i.ab
  br i1 %i.bp, label %.lr.ph880, label %.preheader760

.lr.ph880:                                        ; preds = %.preheader761
  %i.bq = load ptr, ptr %3, align 8, !tbaa !18
  %i.br = load i32, ptr %i.s, align 4, !tbaa !179
  %i.bs = sext i32 %i.br to i64
  %i.bt = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul887 = mul i64 %i.bt, %i.bs
  %i.bu = load i32, ptr %7, align 4, !tbaa !184
  %i.bv = mul i32 %.0585979, %i.z
  %i.bw = mul i32 %i.bv, %i.bu
  %i.bx = sext i32 %i.bw to i64
  %invariant.gep889 = getelementptr [4 x i8], ptr %i.bq, i64 %i.bx
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph825, %.loopexit753
  %.1591824 = phi <16 x float> [ %.0590, %.lr.ph825 ], [ %.9, %.loopexit753 ] ; 9 uses
  %.0595823 = phi <16 x float> [ zeroinitializer, %.lr.ph825 ], [ %.8603, %.loopexit753 ] ; 9 uses
  %.0618822 = phi <16 x float> [ zeroinitializer, %.lr.ph825 ], [ %.8626, %.loopexit753 ] ; 9 uses
  %.0639821 = phi <16 x float> [ zeroinitializer, %.lr.ph825 ], [ %.8647, %.loopexit753 ] ; 9 uses
  %.0660820 = phi ptr [ %i.bf, %.lr.ph825 ], [ %.8668, %.loopexit753 ] ; 13 uses
  %.0685819 = phi i32 [ 0, %.lr.ph825 ], [ %i.wf, %.loopexit753 ] ; 2 uses
  %i.by = sdiv i32 %.0685819, %i.z
  %i.bz = sext i32 %i.by to i64
  %.reass = mul i64 %factor.op.mul, %i.bz
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass ; 8 uses
  br i1 %i.ap, label %.preheader756, label %.loopexit757

.preheader756:                                    ; preds = %bb.e
  %i.ca = load i32, ptr %8, align 4, !tbaa !184   ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph, label %.loopexit753

.lr.ph:                                           ; preds = %.preheader756
  %i.cc = load i32, ptr %9, align 4, !tbaa !184
  %i.cd = shl nsw i32 %i.cc, 4
  %i.ce = sext i32 %i.cd to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.2592768 = phi <16 x float> [ %.1591824, %.lr.ph ], [ %i.fv, %bb.f ]
  %.1596767 = phi <16 x float> [ %.0595823, %.lr.ph ], [ %i.ga, %bb.f ]
  %.1619766 = phi <16 x float> [ %.0618822, %.lr.ph ], [ %i.gf, %bb.f ]
  %.1640765 = phi <16 x float> [ %.0639821, %.lr.ph ], [ %i.gk, %bb.f ]
  %.1661764 = phi ptr [ %.0660820, %.lr.ph ], [ %i.gm, %bb.f ] ; 17 uses
  %.0690763 = phi ptr [ %gep, %.lr.ph ], [ %i.gl, %bb.f ] ; 17 uses
  %.0697762 = phi i32 [ 0, %.lr.ph ], [ %i.gn, %bb.f ]
  %i.cf = load <16 x float>, ptr %.1661764, align 64, !tbaa !50
  %i.cg = getelementptr inbounds nuw i8, ptr %.1661764, i64 64
  %i.ch = load <16 x float>, ptr %i.cg, align 64, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %.1661764, i64 128
  %i.cj = load <16 x float>, ptr %i.ci, align 64, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %.1661764, i64 192
  %i.cl = load <16 x float>, ptr %i.ck, align 64, !tbaa !50
  %i.cm = getelementptr inbounds nuw i8, ptr %.1661764, i64 256
  %i.cn = load <16 x float>, ptr %i.cm, align 64, !tbaa !50
  %i.co = getelementptr inbounds nuw i8, ptr %.1661764, i64 320
  %i.cp = load <16 x float>, ptr %i.co, align 64, !tbaa !50
  %i.cq = getelementptr inbounds nuw i8, ptr %.1661764, i64 384
  %i.cr = load <16 x float>, ptr %i.cq, align 64, !tbaa !50
  %i.cs = getelementptr inbounds nuw i8, ptr %.1661764, i64 448
  %i.ct = load <16 x float>, ptr %i.cs, align 64, !tbaa !50
  %i.cu = getelementptr inbounds nuw i8, ptr %.1661764, i64 512
  %i.cv = load <16 x float>, ptr %i.cu, align 64, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %.1661764, i64 576
  %i.cx = load <16 x float>, ptr %i.cw, align 64, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %.1661764, i64 640
  %i.cz = load <16 x float>, ptr %i.cy, align 64, !tbaa !50
  %i.da = getelementptr inbounds nuw i8, ptr %.1661764, i64 704
  %i.db = load <16 x float>, ptr %i.da, align 64, !tbaa !50
  %i.dc = getelementptr inbounds nuw i8, ptr %.1661764, i64 768
  %i.dd = load <16 x float>, ptr %i.dc, align 64, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %.1661764, i64 832
  %i.df = load <16 x float>, ptr %i.de, align 64, !tbaa !50
  %i.dg = getelementptr inbounds nuw i8, ptr %.1661764, i64 896
  %i.dh = load <16 x float>, ptr %i.dg, align 64, !tbaa !50
  %i.di = getelementptr inbounds nuw i8, ptr %.1661764, i64 960
  %i.dj = load <16 x float>, ptr %i.di, align 64, !tbaa !50
  %i.dk = load float, ptr %.0690763, align 4, !tbaa !110
  %i.dl = insertelement <16 x float> poison, float %i.dk, i64 0
  %i.dm = shufflevector <16 x float> %i.dl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> nofpclass(nan inf) %i.dm, <16 x float> nofpclass(nan inf) %.2592768)
  %i.do = getelementptr inbounds nuw i8, ptr %.0690763, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !110
  %i.dq = insertelement <16 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <16 x float> %i.dq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ds = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> nofpclass(nan inf) %i.dr, <16 x float> nofpclass(nan inf) %.1596767)
  %i.dt = getelementptr inbounds nuw i8, ptr %.0690763, i64 8
  %i.du = load float, ptr %i.dt, align 4, !tbaa !110
  %i.dv = insertelement <16 x float> poison, float %i.du, i64 0
  %i.dw = shufflevector <16 x float> %i.dv, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cj, <16 x float> nofpclass(nan inf) %i.dw, <16 x float> nofpclass(nan inf) %.1619766)
  %i.dy = getelementptr inbounds nuw i8, ptr %.0690763, i64 12
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !110
  %i.ea = insertelement <16 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <16 x float> %i.ea, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ec = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cl, <16 x float> nofpclass(nan inf) %i.eb, <16 x float> nofpclass(nan inf) %.1640765)
  %i.ed = getelementptr inbounds nuw i8, ptr %.0690763, i64 16
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !110
  %i.ef = insertelement <16 x float> poison, float %i.ee, i64 0
  %i.eg = shufflevector <16 x float> %i.ef, <16 x float> poison, <16 x i32> zeroinitializer
  %i.eh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cn, <16 x float> nofpclass(nan inf) %i.eg, <16 x float> nofpclass(nan inf) %i.dn)
  %i.ei = getelementptr inbounds nuw i8, ptr %.0690763, i64 20
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !110
  %i.ek = insertelement <16 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <16 x float> %i.ek, <16 x float> poison, <16 x i32> zeroinitializer
  %i.em = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cp, <16 x float> nofpclass(nan inf) %i.el, <16 x float> nofpclass(nan inf) %i.ds)
  %i.en = getelementptr inbounds nuw i8, ptr %.0690763, i64 24
  %i.eo = load float, ptr %i.en, align 4, !tbaa !110
  %i.ep = insertelement <16 x float> poison, float %i.eo, i64 0
  %i.eq = shufflevector <16 x float> %i.ep, <16 x float> poison, <16 x i32> zeroinitializer
  %i.er = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cr, <16 x float> nofpclass(nan inf) %i.eq, <16 x float> nofpclass(nan inf) %i.dx)
  %i.es = getelementptr inbounds nuw i8, ptr %.0690763, i64 28
  %i.et = load float, ptr %i.es, align 4, !tbaa !110
  %i.eu = insertelement <16 x float> poison, float %i.et, i64 0
  %i.ev = shufflevector <16 x float> %i.eu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ew = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ct, <16 x float> nofpclass(nan inf) %i.ev, <16 x float> nofpclass(nan inf) %i.ec)
  %i.ex = getelementptr inbounds nuw i8, ptr %.0690763, i64 32
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !110
  %i.ez = insertelement <16 x float> poison, float %i.ey, i64 0
  %i.fa = shufflevector <16 x float> %i.ez, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cv, <16 x float> nofpclass(nan inf) %i.fa, <16 x float> nofpclass(nan inf) %i.eh)
  %i.fc = getelementptr inbounds nuw i8, ptr %.0690763, i64 36
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !110
  %i.fe = insertelement <16 x float> poison, float %i.fd, i64 0
  %i.ff = shufflevector <16 x float> %i.fe, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cx, <16 x float> nofpclass(nan inf) %i.ff, <16 x float> nofpclass(nan inf) %i.em)
  %i.fh = getelementptr inbounds nuw i8, ptr %.0690763, i64 40
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !110
  %i.fj = insertelement <16 x float> poison, float %i.fi, i64 0
  %i.fk = shufflevector <16 x float> %i.fj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cz, <16 x float> nofpclass(nan inf) %i.fk, <16 x float> nofpclass(nan inf) %i.er)
  %i.fm = getelementptr inbounds nuw i8, ptr %.0690763, i64 44
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !110
  %i.fo = insertelement <16 x float> poison, float %i.fn, i64 0
  %i.fp = shufflevector <16 x float> %i.fo, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.db, <16 x float> nofpclass(nan inf) %i.fp, <16 x float> nofpclass(nan inf) %i.ew)
  %i.fr = getelementptr inbounds nuw i8, ptr %.0690763, i64 48
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !110
  %i.ft = insertelement <16 x float> poison, float %i.fs, i64 0
  %i.fu = shufflevector <16 x float> %i.ft, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> nofpclass(nan inf) %i.fu, <16 x float> nofpclass(nan inf) %i.fb) ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0690763, i64 52
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !110
  %i.fy = insertelement <16 x float> poison, float %i.fx, i64 0
  %i.fz = shufflevector <16 x float> %i.fy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ga = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.df, <16 x float> nofpclass(nan inf) %i.fz, <16 x float> nofpclass(nan inf) %i.fg) ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0690763, i64 56
end_hunk_7
begin_hunk_8_@_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.zj = load i32, ptr %10, align 4, !tbaa !184
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr inbounds [4 x i8], ptr %gep890, i64 %i.zk
  %i.zm = load i32, ptr %9, align 4, !tbaa !184
  %i.zn = shl nsw i32 %i.zm, 2
  %i.zo = sext i32 %i.zn to i64                   ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph854, %bb.o
  %.13853 = phi <16 x float> [ %.10879, %.lr.ph854 ], [ %i.aba, %bb.o ]
  %.12607852 = phi <16 x float> [ %.9604878, %.lr.ph854 ], [ %i.abf, %bb.o ]
  %.12630851 = phi <16 x float> [ %.9627877, %.lr.ph854 ], [ %i.abk, %bb.o ]
  %.12651850 = phi <16 x float> [ %.9648876, %.lr.ph854 ], [ %i.abp, %bb.o ]
  %.12672849 = phi ptr [ %.9669875, %.lr.ph854 ], [ %i.abs, %bb.o ] ; 9 uses
  %.2708848 = phi ptr [ %gep890, %.lr.ph854 ], [ %i.abq, %bb.o ] ; 5 uses
  %.0711847 = phi i32 [ 0, %.lr.ph854 ], [ %i.abt, %bb.o ]
  %.0712846 = phi ptr [ %i.zl, %.lr.ph854 ], [ %i.abr, %bb.o ] ; 5 uses
  %i.zp = load <16 x float>, ptr %.12672849, align 64, !tbaa !50
  %i.zq = getelementptr inbounds nuw i8, ptr %.12672849, i64 64
  %i.zr = load <16 x float>, ptr %i.zq, align 64, !tbaa !50
  %i.zs = getelementptr inbounds nuw i8, ptr %.12672849, i64 128
  %i.zt = load <16 x float>, ptr %i.zs, align 64, !tbaa !50
  %i.zu = getelementptr inbounds nuw i8, ptr %.12672849, i64 192
  %i.zv = load <16 x float>, ptr %i.zu, align 64, !tbaa !50
  %i.zw = getelementptr inbounds nuw i8, ptr %.12672849, i64 256
  %i.zx = load <16 x float>, ptr %i.zw, align 64, !tbaa !50
  %i.zy = getelementptr inbounds nuw i8, ptr %.12672849, i64 320
  %i.zz = load <16 x float>, ptr %i.zy, align 64, !tbaa !50
  %i.aaa = getelementptr inbounds nuw i8, ptr %.12672849, i64 384
  %i.aab = load <16 x float>, ptr %i.aaa, align 64, !tbaa !50
  %i.aac = getelementptr inbounds nuw i8, ptr %.12672849, i64 448
  %i.aad = load <16 x float>, ptr %i.aac, align 64, !tbaa !50
  %i.aae = load float, ptr %.2708848, align 4, !tbaa !110
  %i.aaf = insertelement <16 x float> poison, float %i.aae, i64 0
  %i.aag = shufflevector <16 x float> %i.aaf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zp, <16 x float> nofpclass(nan inf) %i.aag, <16 x float> nofpclass(nan inf) %.13853)
  %i.aai = getelementptr inbounds nuw i8, ptr %.2708848, i64 4
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !110
  %i.aak = insertelement <16 x float> poison, float %i.aaj, i64 0
  %i.aal = shufflevector <16 x float> %i.aak, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aam = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zr, <16 x float> nofpclass(nan inf) %i.aal, <16 x float> nofpclass(nan inf) %.12607852)
  %i.aan = getelementptr inbounds nuw i8, ptr %.2708848, i64 8
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !110
  %i.aap = insertelement <16 x float> poison, float %i.aao, i64 0
  %i.aaq = shufflevector <16 x float> %i.aap, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zt, <16 x float> nofpclass(nan inf) %i.aaq, <16 x float> nofpclass(nan inf) %.12630851)
  %i.aas = getelementptr inbounds nuw i8, ptr %.2708848, i64 12
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !110
  %i.aau = insertelement <16 x float> poison, float %i.aat, i64 0
  %i.aav = shufflevector <16 x float> %i.aau, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aaw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zv, <16 x float> nofpclass(nan inf) %i.aav, <16 x float> nofpclass(nan inf) %.12651850)
  %i.aax = load float, ptr %.0712846, align 4, !tbaa !110
  %i.aay = insertelement <16 x float> poison, float %i.aax, i64 0
  %i.aaz = shufflevector <16 x float> %i.aay, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aba = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zx, <16 x float> nofpclass(nan inf) %i.aaz, <16 x float> nofpclass(nan inf) %i.aah) ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.0712846, i64 4
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !110
  %i.abd = insertelement <16 x float> poison, float %i.abc, i64 0
  %i.abe = shufflevector <16 x float> %i.abd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.abf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zz, <16 x float> nofpclass(nan inf) %i.abe, <16 x float> nofpclass(nan inf) %i.aam) ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.0712846, i64 8
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !110
  %i.abi = insertelement <16 x float> poison, float %i.abh, i64 0
  %i.abj = shufflevector <16 x float> %i.abi, <16 x float> poison, <16 x i32> zeroinitializer
  %i.abk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aab, <16 x float> nofpclass(nan inf) %i.abj, <16 x float> nofpclass(nan inf) %i.aar) ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %.0712846, i64 12
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !110
  %i.abn = insertelement <16 x float> poison, float %i.abm, i64 0
  %i.abo = shufflevector <16 x float> %i.abn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.abp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aad, <16 x float> nofpclass(nan inf) %i.abo, <16 x float> nofpclass(nan inf) %i.aaw) ; 2 uses
  %i.abq = getelementptr inbounds [4 x i8], ptr %.2708848, i64 %i.zo
  %i.abr = getelementptr inbounds [4 x i8], ptr %.0712846, i64 %i.zo
  %i.abs = getelementptr inbounds nuw i8, ptr %.12672849, i64 512
  %i.abt = add nuw nsw i32 %.0711847, 1           ; 2 uses
  %exitcond1065.not = icmp eq i32 %i.abt, %i.zh
  br i1 %exitcond1065.not, label %.loopexit749.loopexit, label %bb.o, !llvm.loop !391

.loopexit749.loopexit:                            ; preds = %bb.o
  %scevgep1063 = getelementptr i8, ptr %.9669875, i64 512
  %i.abu = add nsw i32 %i.zh, -1
  %i.abv = zext nneg i32 %i.abu to i64
  %i.abw = shl nuw nsw i64 %i.abv, 9
  %scevgep1064 = getelementptr i8, ptr %scevgep1063, i64 %i.abw
  br label %.loopexit748

.loopexit749:                                     ; preds = %.loopexit751
  br i1 %i.as, label %.preheader747, label %.loopexit748

.preheader747:                                    ; preds = %.loopexit749
  %i.abx = load i32, ptr %8, align 4, !tbaa !184  ; 3 uses
  %i.aby = icmp sgt i32 %i.abx, 0
  br i1 %i.aby, label %.lr.ph868, label %.loopexit748

.lr.ph868:                                        ; preds = %.preheader747
  %i.abz = load i32, ptr %10, align 4, !tbaa !184 ; 7 uses
  %i.aca = sext i32 %i.abz to i64
  %i.acb = shl nsw i32 %i.abz, 1
  %i.acc = sext i32 %i.acb to i64
  %i.acd = mul nsw i32 %i.abz, 3
  %i.ace = sext i32 %i.acd to i64
  %i.acf = shl nsw i32 %i.abz, 2
  %i.acg = sext i32 %i.acf to i64
  %i.ach = mul nsw i32 %i.abz, 5
  %i.aci = sext i32 %i.ach to i64
  %i.acj = mul nsw i32 %i.abz, 6
  %i.ack = sext i32 %i.acj to i64
  %i.acl = mul nsw i32 %i.abz, 7
  %i.acm = sext i32 %i.acl to i64
  %i.acn = load i32, ptr %9, align 4, !tbaa !184
  %i.aco = sext i32 %i.acn to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph868, %bb.p
  %.15867 = phi <16 x float> [ %.10879, %.lr.ph868 ], [ %i.aeb, %bb.p ]
  %.14609866 = phi <16 x float> [ %.9604878, %.lr.ph868 ], [ %i.aeg, %bb.p ]
  %.14632865 = phi <16 x float> [ %.9627877, %.lr.ph868 ], [ %i.ael, %bb.p ]
  %.14653864 = phi <16 x float> [ %.9648876, %.lr.ph868 ], [ %i.aeq, %bb.p ]
  %.14674863 = phi ptr [ %.9669875, %.lr.ph868 ], [ %i.aes, %bb.p ] ; 9 uses
  %.0698862 = phi i32 [ 0, %.lr.ph868 ], [ %i.aet, %bb.p ]
  %.4710861 = phi ptr [ %gep890, %.lr.ph868 ], [ %i.aer, %bb.p ] ; 9 uses
  %i.acp = load <16 x float>, ptr %.14674863, align 64, !tbaa !50
  %i.acq = getelementptr inbounds nuw i8, ptr %.14674863, i64 64
  %i.acr = load <16 x float>, ptr %i.acq, align 64, !tbaa !50
  %i.acs = getelementptr inbounds nuw i8, ptr %.14674863, i64 128
  %i.act = load <16 x float>, ptr %i.acs, align 64, !tbaa !50
  %i.acu = getelementptr inbounds nuw i8, ptr %.14674863, i64 192
  %i.acv = load <16 x float>, ptr %i.acu, align 64, !tbaa !50
  %i.acw = getelementptr inbounds nuw i8, ptr %.14674863, i64 256
  %i.acx = load <16 x float>, ptr %i.acw, align 64, !tbaa !50
  %i.acy = getelementptr inbounds nuw i8, ptr %.14674863, i64 320
  %i.acz = load <16 x float>, ptr %i.acy, align 64, !tbaa !50
  %i.ada = getelementptr inbounds nuw i8, ptr %.14674863, i64 384
  %i.adb = load <16 x float>, ptr %i.ada, align 64, !tbaa !50
  %i.adc = getelementptr inbounds nuw i8, ptr %.14674863, i64 448
  %i.add = load <16 x float>, ptr %i.adc, align 64, !tbaa !50
  %i.ade = load float, ptr %.4710861, align 4, !tbaa !110
  %i.adf = insertelement <16 x float> poison, float %i.ade, i64 0
  %i.adg = shufflevector <16 x float> %i.adf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.adh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acp, <16 x float> nofpclass(nan inf) %i.adg, <16 x float> nofpclass(nan inf) %.15867)
  %i.adi = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.aca
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !110
  %i.adk = insertelement <16 x float> poison, float %i.adj, i64 0
  %i.adl = shufflevector <16 x float> %i.adk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.adm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acr, <16 x float> nofpclass(nan inf) %i.adl, <16 x float> nofpclass(nan inf) %.14609866)
  %i.adn = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.acc
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !110
  %i.adp = insertelement <16 x float> poison, float %i.ado, i64 0
  %i.adq = shufflevector <16 x float> %i.adp, <16 x float> poison, <16 x i32> zeroinitializer
  %i.adr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.act, <16 x float> nofpclass(nan inf) %i.adq, <16 x float> nofpclass(nan inf) %.14632865)
  %i.ads = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.ace
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !110
  %i.adu = insertelement <16 x float> poison, float %i.adt, i64 0
  %i.adv = shufflevector <16 x float> %i.adu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.adw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acv, <16 x float> nofpclass(nan inf) %i.adv, <16 x float> nofpclass(nan inf) %.14653864)
  %i.adx = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.acg
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !110
  %i.adz = insertelement <16 x float> poison, float %i.ady, i64 0
  %i.aea = shufflevector <16 x float> %i.adz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aeb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acx, <16 x float> nofpclass(nan inf) %i.aea, <16 x float> nofpclass(nan inf) %i.adh) ; 2 uses
  %i.aec = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.aci
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !110
  %i.aee = insertelement <16 x float> poison, float %i.aed, i64 0
  %i.aef = shufflevector <16 x float> %i.aee, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aeg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acz, <16 x float> nofpclass(nan inf) %i.aef, <16 x float> nofpclass(nan inf) %i.adm) ; 2 uses
  %i.aeh = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.ack
  %i.aei = load float, ptr %i.aeh, align 4, !tbaa !110
  %i.aej = insertelement <16 x float> poison, float %i.aei, i64 0
  %i.aek = shufflevector <16 x float> %i.aej, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ael = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.adb, <16 x float> nofpclass(nan inf) %i.aek, <16 x float> nofpclass(nan inf) %i.adr) ; 2 uses
  %i.aem = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.acm
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !110
  %i.aeo = insertelement <16 x float> poison, float %i.aen, i64 0
  %i.aep = shufflevector <16 x float> %i.aeo, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aeq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.add, <16 x float> nofpclass(nan inf) %i.aep, <16 x float> nofpclass(nan inf) %i.adw) ; 2 uses
  %i.aer = getelementptr inbounds [4 x i8], ptr %.4710861, i64 %i.aco
  %i.aes = getelementptr inbounds nuw i8, ptr %.14674863, i64 512
  %i.aet = add nuw nsw i32 %.0698862, 1           ; 2 uses
  %exitcond1068.not = icmp eq i32 %i.aet, %i.abx
  br i1 %exitcond1068.not, label %.loopexit748.loopexit, label %bb.p, !llvm.loop !392

.loopexit748.loopexit:                            ; preds = %bb.p
  %scevgep1066 = getelementptr i8, ptr %.9669875, i64 512
  %i.aeu = add nsw i32 %i.abx, -1
  %i.aev = zext nneg i32 %i.aeu to i64
  %i.aew = shl nuw nsw i64 %i.aev, 9
  %scevgep1067 = getelementptr i8, ptr %scevgep1066, i64 %i.aew
  br label %.loopexit748

.loopexit748:                                     ; preds = %.preheader750, %.loopexit751.loopexit, %bb.n, %.loopexit749.loopexit, %.loopexit748.loopexit, %.preheader747, %.loopexit749
  %.15675 = phi ptr [ %.9669875, %.loopexit749 ], [ %.9669875, %.preheader747 ], [ %scevgep1067, %.loopexit748.loopexit ], [ %.9669875, %bb.n ], [ %scevgep1064, %.loopexit749.loopexit ], [ %scevgep1061, %.loopexit751.loopexit ], [ %.9669875, %.preheader750 ] ; 2 uses
  %.15654 = phi nsz <16 x float> [ %.9648876, %.loopexit749 ], [ %.9648876, %.preheader747 ], [ %i.aeq, %.loopexit748.loopexit ], [ %.9648876, %bb.n ], [ %i.abp, %.loopexit749.loopexit ], [ %i.za, %.loopexit751.loopexit ], [ %.9648876, %.preheader750 ] ; 2 uses
  %.15633 = phi nsz <16 x float> [ %.9627877, %.loopexit749 ], [ %.9627877, %.preheader747 ], [ %i.ael, %.loopexit748.loopexit ], [ %.9627877, %bb.n ], [ %i.abk, %.loopexit749.loopexit ], [ %i.yv, %.loopexit751.loopexit ], [ %.9627877, %.preheader750 ] ; 2 uses
  %.15610 = phi nsz <16 x float> [ %.9604878, %.loopexit749 ], [ %.9604878, %.preheader747 ], [ %i.aeg, %.loopexit748.loopexit ], [ %.9604878, %bb.n ], [ %i.abf, %.loopexit749.loopexit ], [ %i.yq, %.loopexit751.loopexit ], [ %.9604878, %.preheader750 ] ; 2 uses
  %.16 = phi nsz <16 x float> [ %.10879, %.loopexit749 ], [ %.10879, %.preheader747 ], [ %i.aeb, %.loopexit748.loopexit ], [ %.10879, %bb.n ], [ %i.aba, %.loopexit749.loopexit ], [ %i.yl, %.loopexit751.loopexit ], [ %.10879, %.preheader750 ] ; 2 uses
  %i.aex = add nuw nsw i32 %.1686874, 8           ; 3 uses
  %i.aey = or disjoint i32 %i.aex, 7
  %i.aez = icmp slt i32 %i.aey, %i.ab
  br i1 %i.aez, label %bb.l, label %.preheader760, !llvm.loop !393

.preheader759:                                    ; preds = %.loopexit, %.preheader760
  %.2687.lcssa = phi i32 [ %.1686.lcssa, %.preheader760 ], [ %i.aks, %.loopexit ] ; 5 uses
  %.16676.lcssa = phi ptr [ %.9669.lcssa, %.preheader760 ], [ %.20680, %.loopexit ] ; 3 uses
  %.16655.lcssa = phi <16 x float> [ %.9648.lcssa, %.preheader760 ], [ %.20659, %.loopexit ]
  %.16634.lcssa = phi <16 x float> [ %.9627.lcssa, %.preheader760 ], [ %.20638, %.loopexit ]
  %.16611.lcssa = phi <16 x float> [ %.9604.lcssa, %.preheader760 ], [ %.20615, %.loopexit ] ; 3 uses
  %.17.lcssa = phi <16 x float> [ %.10.lcssa, %.preheader760 ], [ %.21, %.loopexit ] ; 3 uses
  %i.afa = or disjoint i32 %.2687.lcssa, 1
  %i.afb = icmp slt i32 %i.afa, %i.ab
  br i1 %i.afb, label %.lr.ph948, label %.preheader758

.lr.ph948:                                        ; preds = %.preheader759
  %i.afc = load ptr, ptr %3, align 8, !tbaa !18
  %i.afd = load i32, ptr %i.s, align 4, !tbaa !179
  %i.afe = sext i32 %i.afd to i64
  %i.aff = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul953 = mul i64 %i.aff, %i.afe
  %i.afg = load i32, ptr %7, align 4, !tbaa !184
  %i.afh = mul nsw i32 %i.afg, %.0585979
  %i.afi = sext i32 %i.afh to i64
  %invariant.gep955 = getelementptr [4 x i8], ptr %i.afc, i64 %i.afi
  %i.afj = load i32, ptr %8, align 4, !tbaa !184  ; 6 uses
  %i.afk = icmp sgt i32 %i.afj, 0
  br i1 %i.afk, label %.lr.ph948.split.us, label %.lr.ph948.split.preheader

.lr.ph948.split.preheader:                        ; preds = %.lr.ph948
  %i.afl = add i32 %.2687.lcssa, 2
  %i.afm = sub i32 %14, %.2687.lcssa
  %i.afn = and i32 %i.afm, -2
  %i.afo = add i32 %i.afl, %i.afn
  br label %.preheader758

.lr.ph948.split.us:                               ; preds = %.lr.ph948
  %i.afp = load i32, ptr %10, align 4, !tbaa !184
  %i.afq = sext i32 %i.afp to i64                 ; 3 uses
  %i.afr = load i32, ptr %9, align 4, !tbaa !184
  %i.afs = sext i32 %i.afr to i64                 ; 2 uses
  %i.aft = add nsw i32 %i.afj, -1
  %i.afu = zext nneg i32 %i.aft to i64
  %i.afv = shl nuw nsw i64 %i.afu, 7
  %i.afw = zext i32 %.2687.lcssa to i64
  %xtraiter = and i32 %i.afj, 1
  %i.afx = icmp eq i32 %i.afj, 1
  %unroll_iter = and i32 %i.afj, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1266 = trunc i32 %i.afj to i1
  br label %.lr.ph940.us

.lr.ph940.us:                                     ; preds = %._crit_edge.us, %.lr.ph948.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ %i.afw, %.lr.ph948.split.us ] ; 2 uses
  %.22947.us = phi <16 x float> [ %.lcssa1262, %._crit_edge.us ], [ %.17.lcssa, %.lr.ph948.split.us ] ; 2 uses
  %.21616946.us = phi <16 x float> [ %.lcssa1261, %._crit_edge.us ], [ %.16611.lcssa, %.lr.ph948.split.us ] ; 2 uses
  %.21681945.us = phi ptr [ %scevgep1076, %._crit_edge.us ], [ %.16676.lcssa, %.lr.ph948.split.us ] ; 3 uses
  %.reass954.us = mul i64 %factor.op.mul953, %indvars.iv
  %gep956.us = getelementptr i8, ptr %invariant.gep955, i64 %.reass954.us ; 2 uses
  br i1 %i.afx, label %.epil.preheader, label %.lr.ph940.us.new

.lr.ph940.us.new:                                 ; preds = %.lr.ph940.us, %.lr.ph940.us.new
  %.0582938.us = phi ptr [ %i.agy, %.lr.ph940.us.new ], [ %gep956.us, %.lr.ph940.us ] ; 3 uses
  %.23937.us = phi <16 x float> [ %i.ags, %.lr.ph940.us.new ], [ %.22947.us, %.lr.ph940.us ]
  %.22617936.us = phi <16 x float> [ %i.agx, %.lr.ph940.us.new ], [ %.21616946.us, %.lr.ph940.us ]
  %.22682935.us = phi ptr [ %i.agz, %.lr.ph940.us.new ], [ %.21681945.us, %.lr.ph940.us ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph940.us.new ], [ 0, %.lr.ph940.us ]
  %i.afy = load <16 x float>, ptr %.22682935.us, align 64, !tbaa !50
  %i.afz = getelementptr inbounds nuw i8, ptr %.22682935.us, i64 64
  %i.aga = load <16 x float>, ptr %i.afz, align 64, !tbaa !50
  %i.agb = load float, ptr %.0582938.us, align 4, !tbaa !110
  %i.agc = insertelement <16 x float> poison, float %i.agb, i64 0
  %i.agd = shufflevector <16 x float> %i.agc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.age = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.afy, <16 x float> nofpclass(nan inf) %i.agd, <16 x float> nofpclass(nan inf) %.23937.us)
  %i.agf = getelementptr inbounds [4 x i8], ptr %.0582938.us, i64 %i.afq
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !110
  %i.agh = insertelement <16 x float> poison, float %i.agg, i64 0
  %i.agi = shufflevector <16 x float> %i.agh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aga, <16 x float> nofpclass(nan inf) %i.agi, <16 x float> nofpclass(nan inf) %.22617936.us)
  %i.agk = getelementptr inbounds [4 x i8], ptr %.0582938.us, i64 %i.afs ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %.22682935.us, i64 128
  %i.agm = load <16 x float>, ptr %i.agl, align 64, !tbaa !50
  %i.agn = getelementptr inbounds nuw i8, ptr %.22682935.us, i64 192
  %i.ago = load <16 x float>, ptr %i.agn, align 64, !tbaa !50
  %i.agp = load float, ptr %i.agk, align 4, !tbaa !110
  %i.agq = insertelement <16 x float> poison, float %i.agp, i64 0
  %i.agr = shufflevector <16 x float> %i.agq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ags = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.agm, <16 x float> nofpclass(nan inf) %i.agr, <16 x float> nofpclass(nan inf) %i.age) ; 3 uses
  %i.agt = getelementptr inbounds [4 x i8], ptr %i.agk, i64 %i.afq
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !110
  %i.agv = insertelement <16 x float> poison, float %i.agu, i64 0
  %i.agw = shufflevector <16 x float> %i.agv, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ago, <16 x float> nofpclass(nan inf) %i.agw, <16 x float> nofpclass(nan inf) %i.agj) ; 3 uses
  %i.agy = getelementptr inbounds [4 x i8], ptr %i.agk, i64 %i.afs ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %.22682935.us, i64 256 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph940.us.new, !llvm.loop !394

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph940.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph940.us
  %.0582938.us.epil.init = phi ptr [ %gep956.us, %.lr.ph940.us ], [ %i.agy, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.23937.us.epil.init = phi <16 x float> [ %.22947.us, %.lr.ph940.us ], [ %i.ags, %._crit_edge.us.unr-lcssa ]
  %.22617936.us.epil.init = phi <16 x float> [ %.21616946.us, %.lr.ph940.us ], [ %i.agx, %._crit_edge.us.unr-lcssa ]
  %.22682935.us.epil.init = phi ptr [ %.21681945.us, %.lr.ph940.us ], [ %i.agz, %._crit_edge.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1266)
  %i.aha = load <16 x float>, ptr %.22682935.us.epil.init, align 64, !tbaa !50
  %i.ahb = getelementptr inbounds nuw i8, ptr %.22682935.us.epil.init, i64 64
  %i.ahc = load <16 x float>, ptr %i.ahb, align 64, !tbaa !50
  %i.ahd = load float, ptr %.0582938.us.epil.init, align 4, !tbaa !110
  %i.ahe = insertelement <16 x float> poison, float %i.ahd, i64 0
  %i.ahf = shufflevector <16 x float> %i.ahe, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ahg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aha, <16 x float> nofpclass(nan inf) %i.ahf, <16 x float> nofpclass(nan inf) %.23937.us.epil.init)
  %i.ahh = getelementptr inbounds [4 x i8], ptr %.0582938.us.epil.init, i64 %i.afq
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !110
  %i.ahj = insertelement <16 x float> poison, float %i.ahi, i64 0
  %i.ahk = shufflevector <16 x float> %i.ahj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ahl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ahc, <16 x float> nofpclass(nan inf) %i.ahk, <16 x float> nofpclass(nan inf) %.22617936.us.epil.init)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa1262 = phi <16 x float> [ %i.ags, %._crit_edge.us.unr-lcssa ], [ %i.ahg, %.epil.preheader ] ; 2 uses
  %.lcssa1261 = phi <16 x float> [ %i.agx, %._crit_edge.us.unr-lcssa ], [ %i.ahl, %.epil.preheader ] ; 2 uses
  %scevgep1075 = getelementptr i8, ptr %.21681945.us, i64 128
  %scevgep1076 = getelementptr i8, ptr %scevgep1075, i64 %i.afv ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ahm = trunc i64 %indvars.iv.next to i32
  %i.ahn = or i32 %i.ahm, 1
  %i.aho = icmp slt i32 %i.ahn, %i.ab
  br i1 %i.aho, label %.lr.ph940.us, label %.preheader758.loopexit, !llvm.loop !395

bb.q:                                             ; preds = %.lr.ph924, %.loopexit
  %.17923 = phi <16 x float> [ %.10.lcssa, %.lr.ph924 ], [ %.21, %.loopexit ] ; 5 uses
  %.16611922 = phi <16 x float> [ %.9604.lcssa, %.lr.ph924 ], [ %.20615, %.loopexit ] ; 5 uses
  %.16634921 = phi <16 x float> [ %.9627.lcssa, %.lr.ph924 ], [ %.20638, %.loopexit ] ; 5 uses
  %.16655920 = phi <16 x float> [ %.9648.lcssa, %.lr.ph924 ], [ %.20659, %.loopexit ] ; 5 uses
  %.16676919 = phi ptr [ %.9669.lcssa, %.lr.ph924 ], [ %.20680, %.loopexit ] ; 7 uses
  %.2687918 = phi i32 [ %.1686.lcssa, %.lr.ph924 ], [ %i.aks, %.loopexit ] ; 2 uses
  %i.ahp = sdiv i32 %.2687918, %i.z
  %i.ahq = sext i32 %i.ahp to i64
  %.reass932 = mul i64 %factor.op.mul931, %i.ahq
  %gep934 = getelementptr i8, ptr %invariant.gep933, i64 %.reass932 ; 2 uses
  br i1 %i.ar, label %.preheader745, label %.loopexit746

.preheader745:                                    ; preds = %bb.q
  %i.ahr = load i32, ptr %8, align 4, !tbaa !184  ; 3 uses
  %i.ahs = icmp sgt i32 %i.ahr, 0
  br i1 %i.ahs, label %.lr.ph898, label %.loopexit

.lr.ph898:                                        ; preds = %.preheader745
  %i.aht = load i32, ptr %9, align 4, !tbaa !184
  %i.ahu = shl nsw i32 %i.aht, 2
  %i.ahv = sext i32 %i.ahu to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph898, %bb.r
  %.0586897 = phi i32 [ 0, %.lr.ph898 ], [ %i.aiy, %bb.r ]
  %.0587896 = phi ptr [ %gep934, %.lr.ph898 ], [ %i.aiw, %bb.r ] ; 5 uses
  %.18895 = phi <16 x float> [ %.17923, %.lr.ph898 ], [ %i.aig, %bb.r ]
  %.17612894 = phi <16 x float> [ %.16611922, %.lr.ph898 ], [ %i.ail, %bb.r ]
  %.17635893 = phi <16 x float> [ %.16634921, %.lr.ph898 ], [ %i.aiq, %bb.r ]
  %.17656892 = phi <16 x float> [ %.16655920, %.lr.ph898 ], [ %i.aiv, %bb.r ]
  %.17677891 = phi ptr [ %.16676919, %.lr.ph898 ], [ %i.aix, %bb.r ] ; 5 uses
  %i.ahw = load <16 x float>, ptr %.17677891, align 64, !tbaa !50
  %i.ahx = getelementptr inbounds nuw i8, ptr %.17677891, i64 64
  %i.ahy = load <16 x float>, ptr %i.ahx, align 64, !tbaa !50
  %i.ahz = getelementptr inbounds nuw i8, ptr %.17677891, i64 128
  %i.aia = load <16 x float>, ptr %i.ahz, align 64, !tbaa !50
  %i.aib = getelementptr inbounds nuw i8, ptr %.17677891, i64 192
  %i.aic = load <16 x float>, ptr %i.aib, align 64, !tbaa !50
  %i.aid = load float, ptr %.0587896, align 4, !tbaa !110
  %i.aie = insertelement <16 x float> poison, float %i.aid, i64 0
  %i.aif = shufflevector <16 x float> %i.aie, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aig = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ahw, <16 x float> nofpclass(nan inf) %i.aif, <16 x float> nofpclass(nan inf) %.18895) ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.0587896, i64 4
  %i.aii = load float, ptr %i.aih, align 4, !tbaa !110
  %i.aij = insertelement <16 x float> poison, float %i.aii, i64 0
  %i.aik = shufflevector <16 x float> %i.aij, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ail = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ahy, <16 x float> nofpclass(nan inf) %i.aik, <16 x float> nofpclass(nan inf) %.17612894) ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.0587896, i64 8
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !110
  %i.aio = insertelement <16 x float> poison, float %i.ain, i64 0
  %i.aip = shufflevector <16 x float> %i.aio, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aiq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aia, <16 x float> nofpclass(nan inf) %i.aip, <16 x float> nofpclass(nan inf) %.17635893) ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %.0587896, i64 12
  %i.ais = load float, ptr %i.air, align 4, !tbaa !110
  %i.ait = insertelement <16 x float> poison, float %i.ais, i64 0
  %i.aiu = shufflevector <16 x float> %i.ait, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aiv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aic, <16 x float> nofpclass(nan inf) %i.aiu, <16 x float> nofpclass(nan inf) %.17656892) ; 2 uses
  %i.aiw = getelementptr inbounds [4 x i8], ptr %.0587896, i64 %i.ahv
  %i.aix = getelementptr inbounds nuw i8, ptr %.17677891, i64 256
  %i.aiy = add nuw nsw i32 %.0586897, 1           ; 2 uses
  %exitcond1071.not = icmp eq i32 %i.aiy, %i.ahr
  br i1 %exitcond1071.not, label %.loopexit746.loopexit, label %bb.r, !llvm.loop !396

.loopexit746.loopexit:                            ; preds = %bb.r
  %scevgep1069 = getelementptr i8, ptr %.16676919, i64 256
  %i.aiz = add nsw i32 %i.ahr, -1
  %i.aja = zext nneg i32 %i.aiz to i64
  %i.ajb = shl nuw nsw i64 %i.aja, 8
  %scevgep1070 = getelementptr i8, ptr %scevgep1069, i64 %i.ajb
  br label %.loopexit

.loopexit746:                                     ; preds = %bb.q
  br i1 %i.as, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit746
  %i.ajc = load i32, ptr %8, align 4, !tbaa !184  ; 3 uses
  %i.ajd = icmp sgt i32 %i.ajc, 0
  br i1 %i.ajd, label %.lr.ph912, label %.loopexit

.lr.ph912:                                        ; preds = %.preheader
  %i.aje = load i32, ptr %10, align 4, !tbaa !184 ; 3 uses
  %i.ajf = sext i32 %i.aje to i64
  %i.ajg = shl nsw i32 %i.aje, 1
  %i.ajh = sext i32 %i.ajg to i64
  %i.aji = mul nsw i32 %i.aje, 3
  %i.ajj = sext i32 %i.aji to i64
  %i.ajk = load i32, ptr %9, align 4, !tbaa !184
  %i.ajl = sext i32 %i.ajk to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph912, %bb.s
  %.0583911 = phi i32 [ 0, %.lr.ph912 ], [ %i.ako, %bb.s ]
  %.2589910 = phi ptr [ %gep934, %.lr.ph912 ], [ %i.akm, %bb.s ] ; 5 uses
  %.20909 = phi <16 x float> [ %.17923, %.lr.ph912 ], [ %i.ajw, %bb.s ]
  %.19614908 = phi <16 x float> [ %.16611922, %.lr.ph912 ], [ %i.akb, %bb.s ]
  %.19637907 = phi <16 x float> [ %.16634921, %.lr.ph912 ], [ %i.akg, %bb.s ]
  %.19658906 = phi <16 x float> [ %.16655920, %.lr.ph912 ], [ %i.akl, %bb.s ]
  %.19679905 = phi ptr [ %.16676919, %.lr.ph912 ], [ %i.akn, %bb.s ] ; 5 uses
end_hunk_8
begin_hunk_9_@llvm.maxnum.f32
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #15

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #1

declare void @_ZN4ncnn54convolution1d_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #14

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(64) %9) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 18 uses
  %i.b = alloca i32, align 4                      ; 22 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 20 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %4, ptr %i.a, align 4, !tbaa !184
  store i32 %5, ptr %i.b, align 4, !tbaa !184
  store i32 %6, ptr %i.c, align 4, !tbaa !184
  store i32 %7, ptr %i.d, align 4, !tbaa !184
  %i.j = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn37convolution1d_packed_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(64) %9)
  br label %bb.bs

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !181  ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !194
  %i.o = mul i32 %i.n, %i.l                       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 21 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !179
  %i.r = mul nsw i32 %i.q, %i.l
  store i32 %i.r, ptr %i.e, align 4, !tbaa !184
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 7 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !179  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !181  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !194
  %i.y = mul i32 %i.x, %i.v                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.z = mul nsw i32 %i.v, %i.t
  store i32 %i.z, ptr %i.f, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.aa = load ptr, ptr %3, align 8, !tbaa !18
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.ab = sdiv i32 %i.y, 16
  store i32 %i.ab, ptr %i.h, align 4, !tbaa !184
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !197
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.ad)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.g, ptr nonnull %2, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %8, ptr nonnull %i.f)
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !184
  %i.af = shl nsw i32 %i.ae, 4                    ; 3 uses
  %i.ag = sub nsw i32 %i.y, %i.af                 ; 2 uses
  %i.ah = sdiv i32 %i.ag, 8                       ; 3 uses
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !184
  %i.ai = icmp sgt i32 %i.ag, 7
  br i1 %i.ai, label %.lr.ph3265, label %._crit_edge3266

.lr.ph3265:                                       ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.an = load i32, ptr %i.d, align 4
  %i.ao = load i32, ptr %i.s, align 4, !tbaa !179 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph3265.split.preheader, label %._crit_edge3266

.lr.ph3265.split.preheader:                       ; preds = %.lr.ph3265
  %i.aq = sext i32 %i.af to i64
  %wide.trip.count4182 = zext nneg i32 %i.ah to i64
  br label %.lr.ph3265.split

._crit_edge3266:                                  ; preds = %._crit_edge, %.lr.ph3265, %bb.c
  %i.ar = shl nsw i32 %i.ah, 3
  %i.as = add nsw i32 %i.ar, %i.af                ; 3 uses
  %i.at = sub nsw i32 %i.y, %i.as                 ; 2 uses
  %i.au = sdiv i32 %i.at, 4                       ; 3 uses
  store i32 %i.au, ptr %i.h, align 4, !tbaa !184
  %i.av = icmp sgt i32 %i.at, 3
  br i1 %i.av, label %.lr.ph3512, label %._crit_edge3513

.lr.ph3512:                                       ; preds = %._crit_edge3266
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ba = load i32, ptr %i.d, align 4
  %i.bb = load i32, ptr %i.s, align 4, !tbaa !179 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph3512.split.preheader, label %._crit_edge3513

.lr.ph3512.split.preheader:                       ; preds = %.lr.ph3512
  %i.bd = sext i32 %i.as to i64
  %wide.trip.count4232 = zext nneg i32 %i.au to i64
  br label %.lr.ph3512.split

.lr.ph3265.splitthread-pre-split:                 ; preds = %._crit_edge
  %.pr = load i32, ptr %i.s, align 4, !tbaa !179
  br label %.lr.ph3265.split

.lr.ph3265.split:                                 ; preds = %.lr.ph3265.splitthread-pre-split, %.lr.ph3265.split.preheader
  %i.be = phi i32 [ %.pr, %.lr.ph3265.splitthread-pre-split ], [ %i.ao, %.lr.ph3265.split.preheader ] ; 3 uses
  %indvars.iv4179 = phi i64 [ %indvars.iv.next4180, %.lr.ph3265.splitthread-pre-split ], [ 0, %.lr.ph3265.split.preheader ] ; 2 uses
  %i.bf = load i32, ptr %i.k, align 8, !tbaa !181 ; 9 uses
  %i.bg = load i32, ptr %i.m, align 8, !tbaa !194
  %i.bh = mul i32 %i.bg, %i.bf                    ; 12 uses
  %i.bi = load i32, ptr %i.u, align 8, !tbaa !181 ; 2 uses
  %i.bj = icmp sgt i32 %i.be, 0
  br i1 %i.bj, label %.lr.ph3256, label %._crit_edge

.lr.ph3256:                                       ; preds = %.lr.ph3265.split
  %i.bk = load ptr, ptr %1, align 8, !tbaa !18
  %i.bl = shl nuw nsw i64 %indvars.iv4179, 3
  %i.bm = add nsw i64 %i.bl, %i.aq                ; 2 uses
  %i.bn = trunc nsw i64 %i.bm to i32              ; 3 uses
  %i.bo = sdiv i32 %i.bn, %i.bi
  %i.bp = sext i32 %i.bo to i64
  %i.bq = zext nneg i32 %i.be to i64
  %i.br = mul nsw i64 %i.bp, %i.bq
  %i.bs = load i64, ptr %i.aj, align 8, !tbaa !49
  %i.bt = mul i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bt
  %i.bv = sdiv i32 %i.bn, 16
  %i.bw = srem i32 %i.bn, 16
  %i.bx = ashr exact i32 %i.bw, 3
  %i.by = add nsw i32 %i.bx, %i.bv
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp sgt i32 %i.bh, 15
  %i.cb = load i32, ptr %i.c, align 4             ; 2 uses
  %factor.op.mul3257 = mul i32 %i.bf, %i.cb       ; 3 uses
  %i.cc = icmp eq i32 %i.bf, 16
  %i.cd = icmp eq i32 %i.bf, 8                    ; 2 uses
  %i.ce = icmp eq i32 %i.bf, 4                    ; 3 uses
  %i.cf = icmp eq i32 %i.bf, 1                    ; 3 uses
  %i.cg = load i32, ptr %i.a, align 4             ; 6 uses
  %i.ch = icmp sgt i32 %i.cg, 0                   ; 2 uses
  %i.ci = load i32, ptr %i.f, align 4             ; 7 uses
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = shl nsw i32 %i.ci, 1
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i32 %i.ci, 3
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i32 %i.ci, 2
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i32 %i.ci, 5
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i32 %i.ci, 6
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i32 %i.ci, 7
  %i.cv = sext i32 %i.cu to i64
  %i.cw = and i32 %i.bh, -16
  %10 = add i32 %i.bh, -2
  %i.cx = add i32 %i.cg, -1                       ; 2 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = shl nuw nsw i64 %i.cy, 5
  %i.da = shl nuw nsw i64 %i.cy, 4
  %i.db = sext i32 %i.cb to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.be to i64
  %xtraiter = and i32 %i.cg, 1
  %i.dc = icmp eq i32 %i.cx, 0
  %unroll_iter = and i32 %i.cg, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod4884 = trunc i32 %i.cg to i1
  br label %bb.d

._crit_edge:                                      ; preds = %.thread2931, %.lr.ph3265.split
  %indvars.iv.next4180 = add nuw nsw i64 %indvars.iv4179, 1 ; 2 uses
  %exitcond4183.not = icmp eq i64 %indvars.iv.next4180, %wide.trip.count4182
  br i1 %exitcond4183.not, label %._crit_edge3266, label %.lr.ph3265.splitthread-pre-split, !llvm.loop !405

bb.d:                                             ; preds = %.lr.ph3256, %.thread2931
  %indvars.iv4175 = phi i64 [ 0, %.lr.ph3256 ], [ %indvars.iv.next4176, %.thread2931 ] ; 6 uses
  %.013063255 = phi ptr [ %i.bu, %.lr.ph3256 ], [ %.31309, %.thread2931 ] ; 15 uses
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !195 ; 2 uses
  %.not1512 = icmp eq ptr %i.dd, null
  br i1 %.not1512, label %_ZN4ncnn3MatD2Ev.exit1515, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.bm
  %i.df = load <8 x float>, ptr %i.de, align 1, !tbaa !50
  br label %_ZN4ncnn3MatD2Ev.exit1515

_ZN4ncnn3MatD2Ev.exit1515:                        ; preds = %bb.e, %bb.d
  %.02686 = phi nsz <8 x float> [ zeroinitializer, %bb.d ], [ %i.df, %bb.e ] ; 2 uses
  %i.dg = load ptr, ptr %2, align 8, !tbaa !18, !noalias !406
  %i.dh = load i64, ptr %i.ak, align 8, !tbaa !20, !noalias !406
  %i.di = mul i64 %i.dh, %i.bz
  %i.dj = load i64, ptr %i.al, align 8, !tbaa !49, !noalias !406
  %i.dk = mul i64 %i.di, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dk ; 2 uses
  br i1 %i.ca, label %.lr.ph3100, label %.preheader3034

.lr.ph3100:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit1515
  %i.dm = load ptr, ptr %0, align 8, !tbaa !18
  %i.dn = load i32, ptr %i.p, align 4, !tbaa !179
  %i.do = sext i32 %i.dn to i64
  %i.dp = load i64, ptr %i.am, align 8, !tbaa !49
  %factor.op.mul = mul i64 %i.dp, %i.do
  %i.dq = trunc nuw nsw i64 %indvars.iv4175 to i32
  %.reass3258 = mul i32 %factor.op.mul3257, %i.dq
  %i.dr = sext i32 %.reass3258 to i64
  %invariant.gep = getelementptr [2 x i8], ptr %i.dm, i64 %i.dr
  %i.ds = load i32, ptr %i.a, align 4             ; 6 uses
  %i.dt = icmp sgt i32 %i.ds, 0                   ; 4 uses
  %i.du = load i32, ptr %i.b, align 4             ; 4 uses
  %i.dv = shl nsw i32 %i.du, 4
  %i.dw = sext i32 %i.dv to i64
  %i.dx = load i32, ptr %i.e, align 4             ; 15 uses
  %i.dy = sext i32 %i.dx to i64                   ; 3 uses
  %i.dz = shl nsw i32 %i.du, 3
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = shl nsw i32 %i.dx, 1
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = mul nsw i32 %i.dx, 3
  %i.ee = sext i32 %i.ed to i64                   ; 2 uses
  %i.ef = shl nsw i32 %i.du, 2
  %i.eg = sext i32 %i.ef to i64                   ; 4 uses
  %i.eh = shl nsw i32 %i.dx, 2
  %i.ei = sext i32 %i.eh to i64
  %i.ej = mul nsw i32 %i.dx, 5
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul nsw i32 %i.dx, 6
  %i.em = sext i32 %i.el to i64
  %i.en = mul nsw i32 %i.dx, 7
  %i.eo = sext i32 %i.en to i64
  %i.ep = shl nsw i32 %i.dx, 3
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul nsw i32 %i.dx, 9
  %i.es = sext i32 %i.er to i64
  %i.et = mul nsw i32 %i.dx, 10
  %i.eu = sext i32 %i.et to i64
  %i.ev = mul nsw i32 %i.dx, 11
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul nsw i32 %i.dx, 12
  %i.ey = sext i32 %i.ex to i64
  %i.ez = mul nsw i32 %i.dx, 13
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul nsw i32 %i.dx, 14
  %i.fc = sext i32 %i.fb to i64
  %i.fd = mul nsw i32 %i.dx, 15
  %i.fe = sext i32 %i.fd to i64
  %i.ff = sext i32 %i.du to i64
  %i.fg = add i32 %i.ds, -1
  %i.fh = zext i32 %i.fg to i64
  %i.fi = shl nuw nsw i64 %i.fh, 8                ; 4 uses
  br label %bb.f

.preheader3034:                                   ; preds = %.loopexit3026, %_ZN4ncnn3MatD2Ev.exit1515
  %.02755.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1515 ], [ %.82763, %.loopexit3026 ] ; 2 uses
  %.02734.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1515 ], [ %.82742, %.loopexit3026 ] ; 2 uses
  %.02711.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1515 ], [ %.82719, %.loopexit3026 ] ; 2 uses
  %.12687.lcssa = phi <8 x float> [ %.02686, %_ZN4ncnn3MatD2Ev.exit1515 ], [ %.92695, %.loopexit3026 ] ; 2 uses
  %.01340.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1515 ], [ %i.cw, %.loopexit3026 ] ; 3 uses
  %.01311.lcssa = phi ptr [ %i.dl, %_ZN4ncnn3MatD2Ev.exit1515 ], [ %.81319, %.loopexit3026 ] ; 2 uses
  %i.fj = or disjoint i32 %.01340.lcssa, 7
  %i.fk = icmp slt i32 %i.fj, %i.bh
  br i1 %i.fk, label %.lr.ph3155, label %.preheader3033

.lr.ph3155:                                       ; preds = %.preheader3034
  %i.fl = load ptr, ptr %0, align 8, !tbaa !18
  %i.fm = load i32, ptr %i.p, align 4, !tbaa !179
  %i.fn = sext i32 %i.fm to i64
  %i.fo = load i64, ptr %i.am, align 8, !tbaa !49
  %factor.op.mul3162 = mul i64 %i.fo, %i.fn
  %i.fp = trunc nuw nsw i64 %indvars.iv4175 to i32
  %.reass3260 = mul i32 %factor.op.mul3257, %i.fp
  %i.fq = sext i32 %.reass3260 to i64
  %invariant.gep3164 = getelementptr [2 x i8], ptr %i.fl, i64 %i.fq
  %i.fr = load i32, ptr %i.a, align 4             ; 5 uses
  %i.fs = icmp sgt i32 %i.fr, 0                   ; 3 uses
  %i.ft = load i32, ptr %i.b, align 4             ; 3 uses
  %i.fu = shl nsw i32 %i.ft, 3
  %i.fv = sext i32 %i.fu to i64
  %i.fw = load i32, ptr %i.e, align 4             ; 7 uses
  %i.fx = sext i32 %i.fw to i64                   ; 2 uses
  %i.fy = shl nsw i32 %i.ft, 2
  %i.fz = sext i32 %i.fy to i64                   ; 2 uses
  %i.ga = shl nsw i32 %i.fw, 1
  %i.gb = sext i32 %i.ga to i64
  %i.gc = mul nsw i32 %i.fw, 3
  %i.gd = sext i32 %i.gc to i64
  %i.ge = shl nsw i32 %i.fw, 2
  %i.gf = sext i32 %i.ge to i64
  %i.gg = mul nsw i32 %i.fw, 5
  %i.gh = sext i32 %i.gg to i64
  %i.gi = mul nsw i32 %i.fw, 6
  %i.gj = sext i32 %i.gi to i64
  %i.gk = mul nsw i32 %i.fw, 7
  %i.gl = sext i32 %i.gk to i64
  %i.gm = sext i32 %i.ft to i64
  %i.gn = add i32 %i.fr, -1
  %i.go = zext i32 %i.gn to i64
  %i.gp = shl nuw nsw i64 %i.go, 7                ; 3 uses
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph3100, %.loopexit3026
  %.013113099 = phi ptr [ %i.dl, %.lr.ph3100 ], [ %.81319, %.loopexit3026 ] ; 13 uses
  %.013403098 = phi i32 [ 0, %.lr.ph3100 ], [ %i.ahg, %.loopexit3026 ] ; 2 uses
  %.126873097 = phi <8 x float> [ %.02686, %.lr.ph3100 ], [ %.92695, %.loopexit3026 ] ; 9 uses
  %.027113096 = phi <8 x float> [ zeroinitializer, %.lr.ph3100 ], [ %.82719, %.loopexit3026 ] ; 9 uses
  %.027343095 = phi <8 x float> [ zeroinitializer, %.lr.ph3100 ], [ %.82742, %.loopexit3026 ] ; 9 uses
  %.027553094 = phi <8 x float> [ zeroinitializer, %.lr.ph3100 ], [ %.82763, %.loopexit3026 ] ; 9 uses
  %i.gq = sdiv i32 %.013403098, %i.bf
  %i.gr = sext i32 %i.gq to i64
  %.reass = mul i64 %factor.op.mul, %i.gr
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass ; 8 uses
  br i1 %i.cc, label %.preheader3029, label %.loopexit3030

.preheader3029:                                   ; preds = %bb.f
  br i1 %i.dt, label %.lr.ph, label %.loopexit3026

.lr.ph:                                           ; preds = %.preheader3029, %.lr.ph
  %.113123043 = phi ptr [ %i.mj, %.lr.ph ], [ %.013113099, %.preheader3029 ] ; 17 uses
  %.013453042 = phi ptr [ %i.mi, %.lr.ph ], [ %gep, %.preheader3029 ] ; 2 uses
  %.013523041 = phi i32 [ %i.mk, %.lr.ph ], [ 0, %.preheader3029 ]
  %.226883040 = phi <8 x float> [ %i.ly, %.lr.ph ], [ %.126873097, %.preheader3029 ]
  %.127123039 = phi <8 x float> [ %i.mb, %.lr.ph ], [ %.027113096, %.preheader3029 ]
  %.127353038 = phi <8 x float> [ %i.me, %.lr.ph ], [ %.027343095, %.preheader3029 ]
  %.127563037 = phi <8 x float> [ %i.mh, %.lr.ph ], [ %.027553094, %.preheader3029 ]
  %i.gs = load <8 x i16>, ptr %.113123043, align 16, !tbaa !50 ; 2 uses
  %i.gt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.gs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gv = shufflevector <8 x i16> %i.gt, <8 x i16> %i.gu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gw = bitcast <16 x i16> %i.gv to <8 x float>
  %i.gx = getelementptr inbounds nuw i8, ptr %.113123043, i64 16
  %i.gy = load <8 x i16>, ptr %i.gx, align 16, !tbaa !50 ; 2 uses
  %i.gz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ha = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.gy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.hb = shufflevector <8 x i16> %i.gz, <8 x i16> %i.ha, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hc = bitcast <16 x i16> %i.hb to <8 x float>
  %i.hd = getelementptr inbounds nuw i8, ptr %.113123043, i64 32
  %i.he = load <8 x i16>, ptr %i.hd, align 16, !tbaa !50 ; 2 uses
  %i.hf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.he, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.he, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.hh = shufflevector <8 x i16> %i.hf, <8 x i16> %i.hg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hi = bitcast <16 x i16> %i.hh to <8 x float>
  %i.hj = getelementptr inbounds nuw i8, ptr %.113123043, i64 48
  %i.hk = load <8 x i16>, ptr %i.hj, align 16, !tbaa !50 ; 2 uses
  %i.hl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.hk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.hn = shufflevector <8 x i16> %i.hl, <8 x i16> %i.hm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ho = bitcast <16 x i16> %i.hn to <8 x float>
  %i.hp = getelementptr inbounds nuw i8, ptr %.113123043, i64 64
  %i.hq = load <8 x i16>, ptr %i.hp, align 16, !tbaa !50 ; 2 uses
  %i.hr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hs = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.hq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ht = shufflevector <8 x i16> %i.hr, <8 x i16> %i.hs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hu = bitcast <16 x i16> %i.ht to <8 x float>
  %i.hv = getelementptr inbounds nuw i8, ptr %.113123043, i64 80
  %i.hw = load <8 x i16>, ptr %i.hv, align 16, !tbaa !50 ; 2 uses
  %i.hx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hy = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.hw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
end_hunk_9
begin_hunk_10_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.amv = shufflevector <8 x i16> %i.amt, <8 x i16> %i.amu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amw = bitcast <16 x i16> %i.amv to <8 x float>
  %i.amx = getelementptr inbounds nuw i8, ptr %.1213233128, i64 112
  %i.amy = load <8 x i16>, ptr %i.amx, align 16, !tbaa !50 ; 2 uses
  %i.amz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.amy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ana = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.amy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.anb = shufflevector <8 x i16> %i.amz, <8 x i16> %i.ana, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anc = bitcast <16 x i16> %i.anb to <8 x float>
  %i.and = load <4 x i16>, ptr %.214343127, align 2, !tbaa !350
  %i.ane = load <4 x i16>, ptr %.014383126, align 2, !tbaa !350
  %i.anf = shufflevector <4 x i16> %i.and, <4 x i16> %i.ane, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ang = zext <8 x i16> %i.anf to <8 x i32>
  %i.anh = shl nuw <8 x i32> %i.ang, splat (i32 16) ; 8 uses
  %i.ani = bitcast <8 x i32> %i.anh to <8 x float>
  %i.anj = shufflevector <8 x float> %i.ani, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ank = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alm, <8 x float> nofpclass(nan inf) %i.anj, <8 x float> nofpclass(nan inf) %.1326993124)
  %i.anl = bitcast <8 x i32> %i.anh to <8 x float>
  %i.anm = shufflevector <8 x float> %i.anl, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ann = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.als, <8 x float> nofpclass(nan inf) %i.anm, <8 x float> nofpclass(nan inf) %.1227233123)
  %i.ano = bitcast <8 x i32> %i.anh to <8 x float>
  %i.anp = shufflevector <8 x float> %i.ano, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.anq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aly, <8 x float> nofpclass(nan inf) %i.anp, <8 x float> nofpclass(nan inf) %.1227463122)
  %i.anr = bitcast <8 x i32> %i.anh to <8 x float>
  %i.ans = shufflevector <8 x float> %i.anr, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ant = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ame, <8 x float> nofpclass(nan inf) %i.ans, <8 x float> nofpclass(nan inf) %.1227673121)
  %i.anu = bitcast <8 x i32> %i.anh to <8 x float>
  %i.anv = shufflevector <8 x float> %i.anu, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.anw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amk, <8 x float> nofpclass(nan inf) %i.anv, <8 x float> nofpclass(nan inf) %i.ank) ; 2 uses
  %i.anx = bitcast <8 x i32> %i.anh to <8 x float>
  %i.any = shufflevector <8 x float> %i.anx, <8 x float> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.anz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amq, <8 x float> nofpclass(nan inf) %i.any, <8 x float> nofpclass(nan inf) %i.ann) ; 2 uses
  %i.aoa = bitcast <8 x i32> %i.anh to <8 x float>
  %i.aob = shufflevector <8 x float> %i.aoa, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.aoc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.amw, <8 x float> nofpclass(nan inf) %i.aob, <8 x float> nofpclass(nan inf) %i.anq) ; 2 uses
  %i.aod = bitcast <8 x i32> %i.anh to <8 x float>
  %i.aoe = shufflevector <8 x float> %i.aod, <8 x float> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.aof = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.anc, <8 x float> nofpclass(nan inf) %i.aoe, <8 x float> nofpclass(nan inf) %i.ant) ; 2 uses
  %i.aog = getelementptr inbounds [2 x i8], ptr %.214343127, i64 %i.fz
  %i.aoh = getelementptr inbounds [2 x i8], ptr %.014383126, i64 %i.fz
  %i.aoi = getelementptr inbounds nuw i8, ptr %.1213233128, i64 128
  %i.aoj = add nuw nsw i32 %.014393125, 1         ; 2 uses
  %exitcond4155.not = icmp eq i32 %i.aoj, %i.fr
  br i1 %exitcond4155.not, label %.loopexit3022.loopexit, label %.lr.ph3129, !llvm.loop !415

.loopexit3022.loopexit:                           ; preds = %.lr.ph3129
  %scevgep4153 = getelementptr i8, ptr %.913203154, i64 128
  %scevgep4154 = getelementptr i8, ptr %scevgep4153, i64 %i.gp
  br label %.loopexit3021

.loopexit3022:                                    ; preds = %.loopexit3024
  br i1 %i.cf, label %.preheader3020, label %.loopexit3021

.preheader3020:                                   ; preds = %.loopexit3022
  br i1 %i.fs, label %.lr.ph3143, label %.loopexit3021

.lr.ph3143:                                       ; preds = %.preheader3020, %.lr.ph3143
  %.1413253142 = phi ptr [ %i.asr, %.lr.ph3143 ], [ %.913203154, %.preheader3020 ] ; 9 uses
  %.414363141 = phi ptr [ %i.asq, %.lr.ph3143 ], [ %gep3165, %.preheader3020 ] ; 9 uses
  %.014403140 = phi i32 [ %i.ass, %.lr.ph3143 ], [ 0, %.preheader3020 ]
  %.1527013139 = phi <8 x float> [ %i.arr, %.lr.ph3143 ], [ %.1026963152, %.preheader3020 ]
  %.1427253138 = phi <8 x float> [ %i.arz, %.lr.ph3143 ], [ %.927203151, %.preheader3020 ]
  %.1427483137 = phi <8 x float> [ %i.ash, %.lr.ph3143 ], [ %.927433150, %.preheader3020 ]
  %.1427693136 = phi <8 x float> [ %i.asp, %.lr.ph3143 ], [ %.927643149, %.preheader3020 ]
  %i.aok = load <8 x i16>, ptr %.1413253142, align 16, !tbaa !50 ; 2 uses
  %i.aol = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aok, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aom = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aok, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aon = shufflevector <8 x i16> %i.aol, <8 x i16> %i.aom, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aoo = bitcast <16 x i16> %i.aon to <8 x float>
  %i.aop = getelementptr inbounds nuw i8, ptr %.1413253142, i64 16
  %i.aoq = load <8 x i16>, ptr %i.aop, align 16, !tbaa !50 ; 2 uses
  %i.aor = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aoq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aos = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aoq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aot = shufflevector <8 x i16> %i.aor, <8 x i16> %i.aos, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aou = bitcast <16 x i16> %i.aot to <8 x float>
  %i.aov = getelementptr inbounds nuw i8, ptr %.1413253142, i64 32
  %i.aow = load <8 x i16>, ptr %i.aov, align 16, !tbaa !50 ; 2 uses
  %i.aox = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aow, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aoy = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aow, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aoz = shufflevector <8 x i16> %i.aox, <8 x i16> %i.aoy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apa = bitcast <16 x i16> %i.aoz to <8 x float>
  %i.apb = getelementptr inbounds nuw i8, ptr %.1413253142, i64 48
  %i.apc = load <8 x i16>, ptr %i.apb, align 16, !tbaa !50 ; 2 uses
  %i.apd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.apc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ape = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.apc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.apf = shufflevector <8 x i16> %i.apd, <8 x i16> %i.ape, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apg = bitcast <16 x i16> %i.apf to <8 x float>
  %i.aph = getelementptr inbounds nuw i8, ptr %.1413253142, i64 64
  %i.api = load <8 x i16>, ptr %i.aph, align 16, !tbaa !50 ; 2 uses
  %i.apj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.api, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.api, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.apl = shufflevector <8 x i16> %i.apj, <8 x i16> %i.apk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apm = bitcast <16 x i16> %i.apl to <8 x float>
  %i.apn = getelementptr inbounds nuw i8, ptr %.1413253142, i64 80
  %i.apo = load <8 x i16>, ptr %i.apn, align 16, !tbaa !50 ; 2 uses
  %i.app = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.apo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.apo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.apr = shufflevector <8 x i16> %i.app, <8 x i16> %i.apq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aps = bitcast <16 x i16> %i.apr to <8 x float>
  %i.apt = getelementptr inbounds nuw i8, ptr %.1413253142, i64 96
  %i.apu = load <8 x i16>, ptr %i.apt, align 16, !tbaa !50 ; 2 uses
  %i.apv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.apu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.apu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.apx = shufflevector <8 x i16> %i.apv, <8 x i16> %i.apw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apy = bitcast <16 x i16> %i.apx to <8 x float>
  %i.apz = getelementptr inbounds nuw i8, ptr %.1413253142, i64 112
  %i.aqa = load <8 x i16>, ptr %i.apz, align 16, !tbaa !50 ; 2 uses
  %i.aqb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aqa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aqc = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aqa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aqd = shufflevector <8 x i16> %i.aqb, <8 x i16> %i.aqc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqe = bitcast <16 x i16> %i.aqd to <8 x float>
  %i.aqf = load i16, ptr %.414363141, align 2, !tbaa !350
  %i.aqg = zext i16 %i.aqf to i32
  %i.aqh = shl nuw i32 %i.aqg, 16
  %i.aqi = insertelement <8 x i32> poison, i32 %i.aqh, i64 0
  %i.aqj = bitcast <8 x i32> %i.aqi to <8 x float>
  %i.aqk = shufflevector <8 x float> %i.aqj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aql = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aoo, <8 x float> nofpclass(nan inf) %i.aqk, <8 x float> nofpclass(nan inf) %.1527013139)
  %i.aqm = getelementptr inbounds [2 x i8], ptr %.414363141, i64 %i.fx
  %i.aqn = load i16, ptr %i.aqm, align 2, !tbaa !350
  %i.aqo = zext i16 %i.aqn to i32
  %i.aqp = shl nuw i32 %i.aqo, 16
  %i.aqq = insertelement <8 x i32> poison, i32 %i.aqp, i64 0
  %i.aqr = bitcast <8 x i32> %i.aqq to <8 x float>
  %i.aqs = shufflevector <8 x float> %i.aqr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aou, <8 x float> nofpclass(nan inf) %i.aqs, <8 x float> nofpclass(nan inf) %.1427253138)
  %i.aqu = getelementptr inbounds [2 x i8], ptr %.414363141, i64 %i.gb
  %i.aqv = load i16, ptr %i.aqu, align 2, !tbaa !350
  %i.aqw = zext i16 %i.aqv to i32
  %i.aqx = shl nuw i32 %i.aqw, 16
  %i.aqy = insertelement <8 x i32> poison, i32 %i.aqx, i64 0
  %i.aqz = bitcast <8 x i32> %i.aqy to <8 x float>
  %i.ara = shufflevector <8 x float> %i.aqz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.arb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apa, <8 x float> nofpclass(nan inf) %i.ara, <8 x float> nofpclass(nan inf) %.1427483137)
  %i.arc = getelementptr inbounds [2 x i8], ptr %.414363141, i64 %i.gd
  %i.ard = load i16, ptr %i.arc, align 2, !tbaa !350
  %i.are = zext i16 %i.ard to i32
  %i.arf = shl nuw i32 %i.are, 16
  %i.arg = insertelement <8 x i32> poison, i32 %i.arf, i64 0
  %i.arh = bitcast <8 x i32> %i.arg to <8 x float>
  %i.ari = shufflevector <8 x float> %i.arh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.arj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apg, <8 x float> nofpclass(nan inf) %i.ari, <8 x float> nofpclass(nan inf) %.1427693136)
  %i.ark = getelementptr inbounds [2 x i8], ptr %.414363141, i64 %i.gf
  %i.arl = load i16, ptr %i.ark, align 2, !tbaa !350
  %i.arm = zext i16 %i.arl to i32
  %i.arn = shl nuw i32 %i.arm, 16
  %i.aro = insertelement <8 x i32> poison, i32 %i.arn, i64 0
  %i.arp = bitcast <8 x i32> %i.aro to <8 x float>
  %i.arq = shufflevector <8 x float> %i.arp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.arr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apm, <8 x float> nofpclass(nan inf) %i.arq, <8 x float> nofpclass(nan inf) %i.aql) ; 2 uses
  %i.ars = getelementptr inbounds [2 x i8], ptr %.414363141, i64 %i.gh
  %i.art = load i16, ptr %i.ars, align 2, !tbaa !350
  %i.aru = zext i16 %i.art to i32
  %i.arv = shl nuw i32 %i.aru, 16
  %i.arw = insertelement <8 x i32> poison, i32 %i.arv, i64 0
  %i.arx = bitcast <8 x i32> %i.arw to <8 x float>
  %i.ary = shufflevector <8 x float> %i.arx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.arz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aps, <8 x float> nofpclass(nan inf) %i.ary, <8 x float> nofpclass(nan inf) %i.aqt) ; 2 uses
  %i.asa = getelementptr inbounds [2 x i8], ptr %.414363141, i64 %i.gj
  %i.asb = load i16, ptr %i.asa, align 2, !tbaa !350
  %i.asc = zext i16 %i.asb to i32
  %i.asd = shl nuw i32 %i.asc, 16
  %i.ase = insertelement <8 x i32> poison, i32 %i.asd, i64 0
  %i.asf = bitcast <8 x i32> %i.ase to <8 x float>
  %i.asg = shufflevector <8 x float> %i.asf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ash = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apy, <8 x float> nofpclass(nan inf) %i.asg, <8 x float> nofpclass(nan inf) %i.arb) ; 2 uses
  %i.asi = getelementptr inbounds [2 x i8], ptr %.414363141, i64 %i.gl
  %i.asj = load i16, ptr %i.asi, align 2, !tbaa !350
  %i.ask = zext i16 %i.asj to i32
  %i.asl = shl nuw i32 %i.ask, 16
  %i.asm = insertelement <8 x i32> poison, i32 %i.asl, i64 0
  %i.asn = bitcast <8 x i32> %i.asm to <8 x float>
  %i.aso = shufflevector <8 x float> %i.asn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.asp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aqe, <8 x float> nofpclass(nan inf) %i.aso, <8 x float> nofpclass(nan inf) %i.arj) ; 2 uses
  %i.asq = getelementptr inbounds [2 x i8], ptr %.414363141, i64 %i.gm
  %i.asr = getelementptr inbounds nuw i8, ptr %.1413253142, i64 128
  %i.ass = add nuw nsw i32 %.014403140, 1         ; 2 uses
  %exitcond4158.not = icmp eq i32 %i.ass, %i.fr
  br i1 %exitcond4158.not, label %.loopexit3021.loopexit, label %.lr.ph3143, !llvm.loop !416

.loopexit3021.loopexit:                           ; preds = %.lr.ph3143
  %scevgep4156 = getelementptr i8, ptr %.913203154, i64 128
  %scevgep4157 = getelementptr i8, ptr %scevgep4156, i64 %i.gp
  br label %.loopexit3021

.loopexit3021:                                    ; preds = %.preheader3023, %.loopexit3024.loopexit, %bb.j, %.loopexit3022.loopexit, %.loopexit3021.loopexit, %.preheader3020, %.loopexit3022
  %.152770 = phi nsz <8 x float> [ %.927643149, %.loopexit3022 ], [ %.927643149, %.preheader3020 ], [ %i.asp, %.loopexit3021.loopexit ], [ %.927643149, %bb.j ], [ %i.aof, %.loopexit3022.loopexit ], [ %i.ald, %.loopexit3024.loopexit ], [ %.927643149, %.preheader3023 ] ; 2 uses
  %.152749 = phi nsz <8 x float> [ %.927433150, %.loopexit3022 ], [ %.927433150, %.preheader3020 ], [ %i.ash, %.loopexit3021.loopexit ], [ %.927433150, %bb.j ], [ %i.aoc, %.loopexit3022.loopexit ], [ %i.ala, %.loopexit3024.loopexit ], [ %.927433150, %.preheader3023 ] ; 2 uses
  %.152726 = phi nsz <8 x float> [ %.927203151, %.loopexit3022 ], [ %.927203151, %.preheader3020 ], [ %i.arz, %.loopexit3021.loopexit ], [ %.927203151, %bb.j ], [ %i.anz, %.loopexit3022.loopexit ], [ %i.akx, %.loopexit3024.loopexit ], [ %.927203151, %.preheader3023 ] ; 2 uses
  %.162702 = phi nsz <8 x float> [ %.1026963152, %.loopexit3022 ], [ %.1026963152, %.preheader3020 ], [ %i.arr, %.loopexit3021.loopexit ], [ %.1026963152, %bb.j ], [ %i.anw, %.loopexit3022.loopexit ], [ %i.aku, %.loopexit3024.loopexit ], [ %.1026963152, %.preheader3023 ] ; 2 uses
  %.151326 = phi ptr [ %.913203154, %.loopexit3022 ], [ %.913203154, %.preheader3020 ], [ %scevgep4157, %.loopexit3021.loopexit ], [ %.913203154, %bb.j ], [ %scevgep4154, %.loopexit3022.loopexit ], [ %scevgep4151, %.loopexit3024.loopexit ], [ %.913203154, %.preheader3023 ] ; 2 uses
  %i.ast = add nuw nsw i32 %.113413153, 8         ; 3 uses
  %i.asu = or disjoint i32 %i.ast, 7
  %i.asv = icmp slt i32 %i.asu, %i.bh
  br i1 %i.asv, label %bb.i, label %.preheader3033, !llvm.loop !417

.preheader3032:                                   ; preds = %.loopexit3017, %.preheader3033
  %.162771.lcssa = phi <8 x float> [ %.92764.lcssa, %.preheader3033 ], [ %.202775, %.loopexit3017 ]
  %.162750.lcssa = phi <8 x float> [ %.92743.lcssa, %.preheader3033 ], [ %.202754, %.loopexit3017 ]
  %.162727.lcssa = phi <8 x float> [ %.92720.lcssa, %.preheader3033 ], [ %.202731, %.loopexit3017 ] ; 3 uses
  %.172703.lcssa = phi <8 x float> [ %.102696.lcssa, %.preheader3033 ], [ %.212707, %.loopexit3017 ] ; 3 uses
  %.21342.lcssa = phi i32 [ %.11341.lcssa, %.preheader3033 ], [ %i.ayo, %.loopexit3017 ] ; 5 uses
  %.161327.lcssa = phi ptr [ %.91320.lcssa, %.preheader3033 ], [ %.201331, %.loopexit3017 ] ; 3 uses
  %i.asw = or disjoint i32 %.21342.lcssa, 1
  %i.asx = icmp slt i32 %i.asw, %i.bh
  br i1 %i.asx, label %.lr.ph3223, label %.preheader3031

.lr.ph3223:                                       ; preds = %.preheader3032
  %i.asy = load ptr, ptr %0, align 8, !tbaa !18
  %i.asz = load i32, ptr %i.p, align 4, !tbaa !179
  %i.ata = sext i32 %i.asz to i64
  %i.atb = load i64, ptr %i.am, align 8, !tbaa !49
  %factor.op.mul3228 = mul i64 %i.atb, %i.ata
  %i.atc = mul nsw i64 %indvars.iv4175, %i.db
  %invariant.gep3230 = getelementptr [2 x i8], ptr %i.asy, i64 %i.atc
  %i.atd = load i32, ptr %i.e, align 4
  %i.ate = sext i32 %i.atd to i64
  %i.atf = load i32, ptr %i.b, align 4
  %i.atg = sext i32 %i.atf to i64
  br i1 %i.ch, label %.lr.ph3215.us.preheader, label %.lr.ph3223.split.preheader

.lr.ph3223.split.preheader:                       ; preds = %.lr.ph3223
  %i.ath = add i32 %.21342.lcssa, 2
  %i.ati = sub i32 %10, %.21342.lcssa
  %i.atj = and i32 %i.ati, -2
  %i.atk = add i32 %i.ath, %i.atj
  br label %.preheader3031

.lr.ph3215.us.preheader:                          ; preds = %.lr.ph3223
  %i.atl = zext i32 %.21342.lcssa to i64
  br label %.lr.ph3215.us

.lr.ph3215.us:                                    ; preds = %.lr.ph3215.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.atl, %.lr.ph3215.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.2113323222.us = phi ptr [ %.161327.lcssa, %.lr.ph3215.us.preheader ], [ %scevgep4166, %._crit_edge.us ] ; 2 uses
  %.2227083220.us = phi <8 x float> [ %.172703.lcssa, %.lr.ph3215.us.preheader ], [ %i.aud, %._crit_edge.us ]
  %.2127323219.us = phi <8 x float> [ %.162727.lcssa, %.lr.ph3215.us.preheader ], [ %i.aul, %._crit_edge.us ]
  %.reass3229.us = mul i64 %factor.op.mul3228, %indvars.iv
  %gep3231.us = getelementptr i8, ptr %invariant.gep3230, i64 %.reass3229.us
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph3215.us, %bb.k
  %.2213333214.us = phi ptr [ %.2113323222.us, %.lr.ph3215.us ], [ %i.aun, %bb.k ] ; 3 uses
  %.014463213.us = phi ptr [ %gep3231.us, %.lr.ph3215.us ], [ %i.aum, %bb.k ] ; 3 uses
  %.014473212.us = phi i32 [ 0, %.lr.ph3215.us ], [ %i.auo, %bb.k ]
  %.2327093211.us = phi <8 x float> [ %.2227083220.us, %.lr.ph3215.us ], [ %i.aud, %bb.k ]
  %.2227333210.us = phi <8 x float> [ %.2127323219.us, %.lr.ph3215.us ], [ %i.aul, %bb.k ]
  %i.atm = load <8 x i16>, ptr %.2213333214.us, align 16, !tbaa !50 ; 2 uses
  %i.atn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.atm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ato = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.atm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.atp = shufflevector <8 x i16> %i.atn, <8 x i16> %i.ato, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.atq = bitcast <16 x i16> %i.atp to <8 x float>
  %i.atr = getelementptr inbounds nuw i8, ptr %.2213333214.us, i64 16
  %i.ats = load <8 x i16>, ptr %i.atr, align 16, !tbaa !50 ; 2 uses
  %i.att = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ats, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.atu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ats, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.atv = shufflevector <8 x i16> %i.att, <8 x i16> %i.atu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.atw = bitcast <16 x i16> %i.atv to <8 x float>
  %i.atx = load i16, ptr %.014463213.us, align 2, !tbaa !350
  %i.aty = zext i16 %i.atx to i32
  %i.atz = shl nuw i32 %i.aty, 16
  %i.aua = insertelement <8 x i32> poison, i32 %i.atz, i64 0
  %i.aub = bitcast <8 x i32> %i.aua to <8 x float>
  %i.auc = shufflevector <8 x float> %i.aub, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aud = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atq, <8 x float> nofpclass(nan inf) %i.auc, <8 x float> nofpclass(nan inf) %.2327093211.us) ; 3 uses
  %i.aue = getelementptr inbounds [2 x i8], ptr %.014463213.us, i64 %i.ate
  %i.auf = load i16, ptr %i.aue, align 2, !tbaa !350
  %i.aug = zext i16 %i.auf to i32
  %i.auh = shl nuw i32 %i.aug, 16
  %i.aui = insertelement <8 x i32> poison, i32 %i.auh, i64 0
  %i.auj = bitcast <8 x i32> %i.aui to <8 x float>
  %i.auk = shufflevector <8 x float> %i.auj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aul = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atw, <8 x float> nofpclass(nan inf) %i.auk, <8 x float> nofpclass(nan inf) %.2227333210.us) ; 3 uses
  %i.aum = getelementptr inbounds [2 x i8], ptr %.014463213.us, i64 %i.atg
  %i.aun = getelementptr inbounds nuw i8, ptr %.2213333214.us, i64 32
  %i.auo = add nuw nsw i32 %.014473212.us, 1      ; 2 uses
  %exitcond4167.not = icmp eq i32 %i.auo, %i.cg
  br i1 %exitcond4167.not, label %._crit_edge.us, label %bb.k, !llvm.loop !418

._crit_edge.us:                                   ; preds = %bb.k
  %scevgep4165 = getelementptr i8, ptr %.2113323222.us, i64 32
  %scevgep4166 = getelementptr i8, ptr %scevgep4165, i64 %i.cz ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.aup = trunc i64 %indvars.iv.next to i32
  %i.auq = or i32 %i.aup, 1
  %i.aur = icmp slt i32 %i.auq, %i.bh
  br i1 %i.aur, label %.lr.ph3215.us, label %.preheader3031.loopexit, !llvm.loop !419

bb.l:                                             ; preds = %.lr.ph3199, %.loopexit3017
  %.1613273198 = phi ptr [ %.91320.lcssa, %.lr.ph3199 ], [ %.201331, %.loopexit3017 ] ; 7 uses
  %.213423197 = phi i32 [ %.11341.lcssa, %.lr.ph3199 ], [ %i.ayo, %.loopexit3017 ] ; 2 uses
  %.1727033196 = phi <8 x float> [ %.102696.lcssa, %.lr.ph3199 ], [ %.212707, %.loopexit3017 ] ; 5 uses
  %.1627273195 = phi <8 x float> [ %.92720.lcssa, %.lr.ph3199 ], [ %.202731, %.loopexit3017 ] ; 5 uses
  %.1627503194 = phi <8 x float> [ %.92743.lcssa, %.lr.ph3199 ], [ %.202754, %.loopexit3017 ] ; 5 uses
  %.1627713193 = phi <8 x float> [ %.92764.lcssa, %.lr.ph3199 ], [ %.202775, %.loopexit3017 ] ; 5 uses
  %i.aus = sdiv i32 %.213423197, %i.bf
  %i.aut = sext i32 %i.aus to i64
  %.reass3207 = mul i64 %factor.op.mul3206, %i.aut
  %gep3209 = getelementptr i8, ptr %invariant.gep3208, i64 %.reass3207 ; 2 uses
  br i1 %i.ce, label %.preheader3018, label %.loopexit3019

.preheader3018:                                   ; preds = %bb.l
  br i1 %i.ahs, label %.lr.ph3173, label %.loopexit3017

.lr.ph3173:                                       ; preds = %.preheader3018, %.lr.ph3173
  %.1713283172 = phi ptr [ %i.awh, %.lr.ph3173 ], [ %.1613273198, %.preheader3018 ] ; 5 uses
  %.014413171 = phi ptr [ %i.awg, %.lr.ph3173 ], [ %gep3209, %.preheader3018 ] ; 2 uses
  %.014443170 = phi i32 [ %i.awi, %.lr.ph3173 ], [ 0, %.preheader3018 ]
  %.1827043169 = phi <8 x float> [ %i.avw, %.lr.ph3173 ], [ %.1727033196, %.preheader3018 ]
  %.1727283168 = phi <8 x float> [ %i.avz, %.lr.ph3173 ], [ %.1627273195, %.preheader3018 ]
  %.1727513167 = phi <8 x float> [ %i.awc, %.lr.ph3173 ], [ %.1627503194, %.preheader3018 ]
  %.1727723166 = phi <8 x float> [ %i.awf, %.lr.ph3173 ], [ %.1627713193, %.preheader3018 ]
  %i.auu = load <8 x i16>, ptr %.1713283172, align 16, !tbaa !50 ; 2 uses
  %i.auv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.auu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.auw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.auu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aux = shufflevector <8 x i16> %i.auv, <8 x i16> %i.auw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.auy = bitcast <16 x i16> %i.aux to <8 x float>
  %i.auz = getelementptr inbounds nuw i8, ptr %.1713283172, i64 16
  %i.ava = load <8 x i16>, ptr %i.auz, align 16, !tbaa !50 ; 2 uses
  %i.avb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ava, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avc = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ava, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.avd = shufflevector <8 x i16> %i.avb, <8 x i16> %i.avc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ave = bitcast <16 x i16> %i.avd to <8 x float>
  %i.avf = getelementptr inbounds nuw i8, ptr %.1713283172, i64 32
  %i.avg = load <8 x i16>, ptr %i.avf, align 16, !tbaa !50 ; 2 uses
  %i.avh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.avg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avi = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.avg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.avj = shufflevector <8 x i16> %i.avh, <8 x i16> %i.avi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avk = bitcast <16 x i16> %i.avj to <8 x float>
  %i.avl = getelementptr inbounds nuw i8, ptr %.1713283172, i64 48
  %i.avm = load <8 x i16>, ptr %i.avl, align 16, !tbaa !50 ; 2 uses
  %i.avn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.avm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avo = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.avm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.avp = shufflevector <8 x i16> %i.avn, <8 x i16> %i.avo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avq = bitcast <16 x i16> %i.avp to <8 x float>
  %i.avr = load <4 x i16>, ptr %.014413171, align 2, !tbaa !350
  %i.avs = zext <4 x i16> %i.avr to <4 x i32>
  %i.avt = shl nuw <4 x i32> %i.avs, splat (i32 16) ; 4 uses
  %i.avu = bitcast <4 x i32> %i.avt to <4 x float>
  %i.avv = shufflevector <4 x float> %i.avu, <4 x float> poison, <8 x i32> zeroinitializer
  %i.avw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auy, <8 x float> nofpclass(nan inf) %i.avv, <8 x float> nofpclass(nan inf) %.1827043169) ; 2 uses
  %i.avx = bitcast <4 x i32> %i.avt to <4 x float>
  %i.avy = shufflevector <4 x float> %i.avx, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.avz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ave, <8 x float> nofpclass(nan inf) %i.avy, <8 x float> nofpclass(nan inf) %.1727283168) ; 2 uses
  %i.awa = bitcast <4 x i32> %i.avt to <4 x float>
  %i.awb = shufflevector <4 x float> %i.awa, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.awc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avk, <8 x float> nofpclass(nan inf) %i.awb, <8 x float> nofpclass(nan inf) %.1727513167) ; 2 uses
  %i.awd = bitcast <4 x i32> %i.avt to <4 x float>
  %i.awe = shufflevector <4 x float> %i.awd, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.awf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avq, <8 x float> nofpclass(nan inf) %i.awe, <8 x float> nofpclass(nan inf) %.1727723166) ; 2 uses
  %i.awg = getelementptr inbounds [2 x i8], ptr %.014413171, i64 %i.ahv
  %i.awh = getelementptr inbounds nuw i8, ptr %.1713283172, i64 64
  %i.awi = add nuw nsw i32 %.014443170, 1         ; 2 uses
  %exitcond4161.not = icmp eq i32 %i.awi, %i.ahr
  br i1 %exitcond4161.not, label %.loopexit3019.loopexit, label %.lr.ph3173, !llvm.loop !420

.loopexit3019.loopexit:                           ; preds = %.lr.ph3173
  %scevgep4159 = getelementptr i8, ptr %.1613273198, i64 64
  %scevgep4160 = getelementptr i8, ptr %scevgep4159, i64 %i.aif
  br label %.loopexit3017

.loopexit3019:                                    ; preds = %bb.l
  br i1 %i.cf, label %.preheader3016, label %.loopexit3017

.preheader3016:                                   ; preds = %.loopexit3019
  br i1 %i.ahs, label %.lr.ph3187, label %.loopexit3017

.lr.ph3187:                                       ; preds = %.preheader3016, %.lr.ph3187
  %.1913303186 = phi ptr [ %i.aym, %.lr.ph3187 ], [ %.1613273198, %.preheader3016 ] ; 5 uses
  %.214433185 = phi ptr [ %i.ayl, %.lr.ph3187 ], [ %gep3209, %.preheader3016 ] ; 5 uses
  %.014453184 = phi i32 [ %i.ayn, %.lr.ph3187 ], [ 0, %.preheader3016 ]
  %.2027063183 = phi <8 x float> [ %i.axm, %.lr.ph3187 ], [ %.1727033196, %.preheader3016 ]
  %.1927303182 = phi <8 x float> [ %i.axu, %.lr.ph3187 ], [ %.1627273195, %.preheader3016 ]
  %.1927533181 = phi <8 x float> [ %i.ayc, %.lr.ph3187 ], [ %.1627503194, %.preheader3016 ]
  %.1927743180 = phi <8 x float> [ %i.ayk, %.lr.ph3187 ], [ %.1627713193, %.preheader3016 ]
  %i.awj = load <8 x i16>, ptr %.1913303186, align 16, !tbaa !50 ; 2 uses
  %i.awk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.awj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.awl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.awj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.awm = shufflevector <8 x i16> %i.awk, <8 x i16> %i.awl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awn = bitcast <16 x i16> %i.awm to <8 x float>
  %i.awo = getelementptr inbounds nuw i8, ptr %.1913303186, i64 16
  %i.awp = load <8 x i16>, ptr %i.awo, align 16, !tbaa !50 ; 2 uses
  %i.awq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.awp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.awr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.awp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aws = shufflevector <8 x i16> %i.awq, <8 x i16> %i.awr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awt = bitcast <16 x i16> %i.aws to <8 x float>
  %i.awu = getelementptr inbounds nuw i8, ptr %.1913303186, i64 32
  %i.awv = load <8 x i16>, ptr %i.awu, align 16, !tbaa !50 ; 2 uses
  %i.aww = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.awv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.awx = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.awv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.awy = shufflevector <8 x i16> %i.aww, <8 x i16> %i.awx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awz = bitcast <16 x i16> %i.awy to <8 x float>
  %i.axa = getelementptr inbounds nuw i8, ptr %.1913303186, i64 48
  %i.axb = load <8 x i16>, ptr %i.axa, align 16, !tbaa !50 ; 2 uses
  %i.axc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.axb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.axd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.axb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.axe = shufflevector <8 x i16> %i.axc, <8 x i16> %i.axd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.axf = bitcast <16 x i16> %i.axe to <8 x float>
  %i.axg = load i16, ptr %.214433185, align 2, !tbaa !350
  %i.axh = zext i16 %i.axg to i32
  %i.axi = shl nuw i32 %i.axh, 16
  %i.axj = insertelement <8 x i32> poison, i32 %i.axi, i64 0
  %i.axk = bitcast <8 x i32> %i.axj to <8 x float>
  %i.axl = shufflevector <8 x float> %i.axk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.axm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.awn, <8 x float> nofpclass(nan inf) %i.axl, <8 x float> nofpclass(nan inf) %.2027063183) ; 2 uses
  %i.axn = getelementptr inbounds [2 x i8], ptr %.214433185, i64 %i.ahx
  %i.axo = load i16, ptr %i.axn, align 2, !tbaa !350
  %i.axp = zext i16 %i.axo to i32
  %i.axq = shl nuw i32 %i.axp, 16
  %i.axr = insertelement <8 x i32> poison, i32 %i.axq, i64 0
  %i.axs = bitcast <8 x i32> %i.axr to <8 x float>
  %i.axt = shufflevector <8 x float> %i.axs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.axu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.awt, <8 x float> nofpclass(nan inf) %i.axt, <8 x float> nofpclass(nan inf) %.1927303182) ; 2 uses
  %i.axv = getelementptr inbounds [2 x i8], ptr %.214433185, i64 %i.ahz
  %i.axw = load i16, ptr %i.axv, align 2, !tbaa !350
  %i.axx = zext i16 %i.axw to i32
  %i.axy = shl nuw i32 %i.axx, 16
  %i.axz = insertelement <8 x i32> poison, i32 %i.axy, i64 0
  %i.aya = bitcast <8 x i32> %i.axz to <8 x float>
  %i.ayb = shufflevector <8 x float> %i.aya, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ayc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.awz, <8 x float> nofpclass(nan inf) %i.ayb, <8 x float> nofpclass(nan inf) %.1927533181) ; 2 uses
  %i.ayd = getelementptr inbounds [2 x i8], ptr %.214433185, i64 %i.aib
  %i.aye = load i16, ptr %i.ayd, align 2, !tbaa !350
  %i.ayf = zext i16 %i.aye to i32
end_hunk_10
begin_hunk_11_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.bcw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bcu, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bcv) ; 8 uses
  %i.bcx = fmul fast <8 x float> %i.bcw, %i.bcw
  %i.bcy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcw, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.bcz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcy, <8 x float> nofpclass(nan inf) %i.bcw, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.bda = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcz, <8 x float> nofpclass(nan inf) %i.bcw, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.bdb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bda, <8 x float> nofpclass(nan inf) %i.bcw, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.bdc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bdb, <8 x float> nofpclass(nan inf) %i.bcw, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.bdd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bdc, <8 x float> nofpclass(nan inf) %i.bcx, <8 x float> nofpclass(nan inf) %i.bcw)
  %i.bde = fadd fast <8 x float> %i.bdd, splat (float 1.000000e+00)
  %i.bdf = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bct)
  %i.bdg = shl <8 x i32> %i.bdf, splat (i32 23)
  %i.bdh = add <8 x i32> %i.bdg, splat (i32 1065353216)
  %i.bdi = bitcast <8 x i32> %i.bdh to <8 x float>
  %i.bdj = fmul fast <8 x float> %i.bde, %i.bdi
  %i.bdk = fadd fast <8 x float> %i.bdj, splat (float 1.000000e+00) ; 2 uses
  %i.bdl = fcmp fast ole <8 x float> %i.bdk, zeroinitializer
  %i.bdm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bdk, <8 x float> splat (float f0x00800000))
  %i.bdn = bitcast <8 x float> %i.bdm to <8 x i32> ; 2 uses
  %i.bdo = lshr <8 x i32> %i.bdn, splat (i32 23)
  %i.bdp = and <8 x i32> %i.bdn, splat (i32 -2139095041)
  %i.bdq = or disjoint <8 x i32> %i.bdp, splat (i32 1056964608)
  %i.bdr = bitcast <8 x i32> %i.bdq to <8 x float> ; 3 uses
  %i.bds = add nsw <8 x i32> %i.bdo, splat (i32 -127)
  %i.bdt = sitofp fast <8 x i32> %i.bds to <8 x float> ; 2 uses
  %i.bdu = fadd fast <8 x float> %i.bdt, splat (float 1.000000e+00)
  %i.bdv = fcmp fast olt <8 x float> %i.bdr, splat (float f0x3F3504F3) ; 2 uses
  %i.bdw = select <8 x i1> %i.bdv, <8 x float> %i.bdr, <8 x float> zeroinitializer
  %i.bdx = fadd fast <8 x float> %i.bdr, splat (float -1.000000e+00)
  %i.bdy = select fast <8 x i1> %i.bdv, <8 x float> %i.bdt, <8 x float> %i.bdu ; 2 uses
  %i.bdz = fadd fast <8 x float> %i.bdx, %i.bdw   ; 12 uses
  %i.bea = fmul fast <8 x float> %i.bdz, %i.bdz   ; 2 uses
  %i.beb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bdz, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.bec = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.beb, <8 x float> nofpclass(nan inf) %i.bdz, <8 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.bed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bec, <8 x float> nofpclass(nan inf) %i.bdz, <8 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.bee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bed, <8 x float> nofpclass(nan inf) %i.bdz, <8 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.bef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bee, <8 x float> nofpclass(nan inf) %i.bdz, <8 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.beg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bef, <8 x float> nofpclass(nan inf) %i.bdz, <8 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.beh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.beg, <8 x float> nofpclass(nan inf) %i.bdz, <8 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.bei = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.beh, <8 x float> nofpclass(nan inf) %i.bdz, <8 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.bej = fmul fast <8 x float> %i.bea, %i.bdz
  %i.bek = fmul fast <8 x float> %i.bej, %i.bei
  %i.bel = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bdy, <8 x float> nofpclass(nan inf) splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bek)
  %i.bem = fneg fast <8 x float> %i.bea
  %i.ben = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bem, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.bel)
  %i.beo = fadd fast <8 x float> %i.ben, %i.bdz
  %i.bep = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bdy, <8 x float> nofpclass(nan inf) splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.beo)
  %.neg2966 = fmul fast <8 x float> %i.bep, splat (float -2.000000e+00)
  %i.beq = select fast <8 x i1> %i.bdl, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg2966
  %i.ber = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.beq, <8 x float> splat (float f0x42B0C0A5))
  %i.bes = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ber, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bet = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bes, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.beu = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bet, i32 1) ; 2 uses
  %i.bev = fcmp fast ogt <8 x float> %i.beu, %i.bet
  %i.bew = select <8 x i1> %i.bev, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bex = fsub fast <8 x float> %i.beu, %i.bew   ; 2 uses
  %i.bey = fneg fast <8 x float> %i.bex           ; 2 uses
  %i.bez = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bey, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bes)
  %i.bfa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bey, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bez) ; 8 uses
  %i.bfb = fmul fast <8 x float> %i.bfa, %i.bfa
  %i.bfc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bfa, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.bfd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bfc, <8 x float> nofpclass(nan inf) %i.bfa, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.bfe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bfd, <8 x float> nofpclass(nan inf) %i.bfa, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.bff = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bfe, <8 x float> nofpclass(nan inf) %i.bfa, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.bfg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bff, <8 x float> nofpclass(nan inf) %i.bfa, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.bfh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bfg, <8 x float> nofpclass(nan inf) %i.bfb, <8 x float> nofpclass(nan inf) %i.bfa)
  %i.bfi = fadd fast <8 x float> %i.bfh, splat (float 1.000000e+00)
  %i.bfj = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bex)
  %i.bfk = shl <8 x i32> %i.bfj, splat (i32 23)
  %i.bfl = add <8 x i32> %i.bfk, splat (i32 1065353216)
  %i.bfm = bitcast <8 x i32> %i.bfl to <8 x float>
  %i.bfn = fmul fast <8 x float> %i.bfi, %i.bfm
  %i.bfo = fadd fast <8 x float> %i.bfn, splat (float 1.000000e+00)
  %i.bfp = fdiv fast <8 x float> splat (float 1.000000e+00), %i.bfo
  %i.bfq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bfp, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.bfr = fmul fast <8 x float> %i.bfq, %i.bat
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.r:                                             ; preds = %._crit_edge3246
  %i.bfs = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.bft = load float, ptr %i.bfs, align 4, !tbaa !110
  %i.bfu = insertelement <8 x float> poison, float %i.bft, i64 0
  %i.bfv = shufflevector <8 x float> %i.bfu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfs, i64 4
  %i.bfx = load float, ptr %i.bfw, align 4, !tbaa !110
  %i.bfy = insertelement <8 x float> poison, float %i.bfx, i64 0
  %i.bfz = shufflevector <8 x float> %i.bfy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bga = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bat, <8 x float> nofpclass(nan inf) %i.bfv, <8 x float> nofpclass(nan inf) %i.bfz)
  %i.bgb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bga, <8 x float> zeroinitializer)
  %i.bgc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bgb, <8 x float> splat (float 1.000000e+00))
  %i.bgd = fmul fast <8 x float> %i.bgc, %i.bat
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %._crit_edge3246, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i = phi nsz <8 x float> [ %i.bgd, %bb.r ], [ %i.bau, %bb.m ], [ %i.bbc, %bb.n ], [ %i.bbm, %bb.o ], [ %i.bcm, %bb.p ], [ %i.bfr, %bb.q ], [ %i.bat, %._crit_edge3246 ] ; 4 uses
  switch i32 %i.bi, label %.thread2931 [
    i32 8, label %.thread
    i32 4, label %bb.s
    i32 1, label %bb.t
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.bge = bitcast <8 x float> %.0.i to <8 x i32>
  %i.bgf = lshr <8 x i32> %i.bge, splat (i32 16)  ; 2 uses
  %i.bgg = shufflevector <8 x i32> %i.bgf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgh = shufflevector <8 x i32> %i.bgf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bgi = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bgg, <4 x i32> %i.bgh)
  store <8 x i16> %i.bgi, ptr %.013063255, align 16, !tbaa !50
  %i.bgj = getelementptr inbounds nuw i8, ptr %.013063255, i64 16
  br label %.thread2931

bb.s:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.bgk = bitcast <8 x float> %.0.i to <8 x i32>
  %i.bgl = shufflevector <8 x i32> %i.bgk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgm = lshr <4 x i32> %i.bgl, splat (i32 16)
  %i.bgn = bitcast <8 x float> %.0.i to <8 x i32>
  %i.bgo = shufflevector <8 x i32> %i.bgn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bgp = lshr <4 x i32> %i.bgo, splat (i32 16)
  %i.bgq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bgm, <4 x i32> %i.bgp)
  %i.bgr = bitcast <8 x i16> %i.bgq to <2 x i64>  ; 2 uses
  %i.bgs = extractelement <2 x i64> %i.bgr, i64 0
  store i64 %i.bgs, ptr %.013063255, align 1, !tbaa !50
  %i.bgt = getelementptr inbounds [2 x i8], ptr %.013063255, i64 %i.cj
  %i.bgu = extractelement <2 x i64> %i.bgr, i64 1
  store i64 %i.bgu, ptr %i.bgt, align 1, !tbaa !50
  %i.bgv = getelementptr inbounds nuw i8, ptr %.013063255, i64 8
  br label %.thread2931

bb.t:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.bgw = bitcast <8 x float> %.0.i to <16 x i16> ; 8 uses
  %i.bgx = extractelement <16 x i16> %i.bgw, i64 1
  store i16 %i.bgx, ptr %.013063255, align 2, !tbaa !350
  %i.bgy = extractelement <16 x i16> %i.bgw, i64 3
  %i.bgz = getelementptr inbounds [2 x i8], ptr %.013063255, i64 %i.cj
  store i16 %i.bgy, ptr %i.bgz, align 2, !tbaa !350
  %i.bha = extractelement <16 x i16> %i.bgw, i64 5
  %i.bhb = getelementptr inbounds [2 x i8], ptr %.013063255, i64 %i.cl
  store i16 %i.bha, ptr %i.bhb, align 2, !tbaa !350
  %i.bhc = extractelement <16 x i16> %i.bgw, i64 7
  %i.bhd = getelementptr inbounds [2 x i8], ptr %.013063255, i64 %i.cn
  store i16 %i.bhc, ptr %i.bhd, align 2, !tbaa !350
  %i.bhe = extractelement <16 x i16> %i.bgw, i64 9
  %i.bhf = getelementptr inbounds [2 x i8], ptr %.013063255, i64 %i.cp
  store i16 %i.bhe, ptr %i.bhf, align 2, !tbaa !350
  %i.bhg = extractelement <16 x i16> %i.bgw, i64 11
  %i.bhh = getelementptr inbounds [2 x i8], ptr %.013063255, i64 %i.cr
  store i16 %i.bhg, ptr %i.bhh, align 2, !tbaa !350
  %i.bhi = extractelement <16 x i16> %i.bgw, i64 13
  %i.bhj = getelementptr inbounds [2 x i8], ptr %.013063255, i64 %i.ct
  store i16 %i.bhi, ptr %i.bhj, align 2, !tbaa !350
  %i.bhk = extractelement <16 x i16> %i.bgw, i64 15
  %i.bhl = getelementptr inbounds [2 x i8], ptr %.013063255, i64 %i.cv
  store i16 %i.bhk, ptr %i.bhl, align 2, !tbaa !350
  %i.bhm = getelementptr inbounds nuw i8, ptr %.013063255, i64 2
  br label %.thread2931

.thread2931:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.s, %.thread, %bb.t
  %.31309 = phi ptr [ %i.bhm, %bb.t ], [ %.013063255, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.bgj, %.thread ], [ %i.bgv, %bb.s ]
  %indvars.iv.next4176 = add nuw nsw i64 %indvars.iv4175, 1 ; 2 uses
  %exitcond4178.not = icmp eq i64 %indvars.iv.next4176, %wide.trip.count
  br i1 %exitcond4178.not, label %._crit_edge, label %bb.d, !llvm.loop !425

._crit_edge3513:                                  ; preds = %._crit_edge3503, %.lr.ph3512, %._crit_edge3266
  %i.bhn = shl nsw i32 %i.au, 2
  %i.bho = add nsw i32 %i.bhn, %i.as              ; 3 uses
  %i.bhp = sub nsw i32 %i.y, %i.bho               ; 2 uses
  %i.bhq = sdiv i32 %i.bhp, 2                     ; 3 uses
  store i32 %i.bhq, ptr %i.h, align 4, !tbaa !184
  %i.bhr = icmp sgt i32 %i.bhp, 1
  br i1 %i.bhr, label %.lr.ph3723, label %._crit_edge3724.split

.lr.ph3723:                                       ; preds = %._crit_edge3513
  %i.bhs = load i32, ptr %i.k, align 8, !tbaa !181 ; 9 uses
  %i.bht = load i32, ptr %i.m, align 8, !tbaa !194
  %i.bhu = mul i32 %i.bht, %i.bhs                 ; 12 uses
  %i.bhv = load i32, ptr %i.s, align 4, !tbaa !179 ; 3 uses
  %i.bhw = load ptr, ptr %1, align 8, !tbaa !18   ; 2 uses
  %i.bhx = sext i32 %i.bhv to i64
  %i.bhy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bhz = load i64, ptr %i.bhy, align 8, !tbaa !49
  %i.bia = mul i64 %i.bhz, %i.bhx                 ; 2 uses
  %i.bib = icmp sgt i32 %i.bhv, 0
  %i.bic = load ptr, ptr %i.g, align 8            ; 2 uses
  %.not1510 = icmp eq ptr %i.bic, null
  %i.bid = icmp sgt i32 %i.bhu, 15
  %i.bie = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.bif = icmp eq i32 %i.bhs, 16
  %i.big = icmp eq i32 %i.bhs, 8                  ; 2 uses
  %i.bih = icmp eq i32 %i.bhs, 4                  ; 3 uses
  %i.bii = icmp ne i32 %i.bhs, 1                  ; 3 uses
  %i.bij = load i32, ptr %i.d, align 4
  br i1 %i.bib, label %.lr.ph3723.split, label %._crit_edge3724.split

.lr.ph3723.split:                                 ; preds = %.lr.ph3723
  %i.bik = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bil = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bim = load ptr, ptr %2, align 8, !tbaa !18, !noalias !426
  %i.bin = load i64, ptr %i.bil, align 8, !tbaa !20, !noalias !426
  %i.bio = load i64, ptr %i.bik, align 8, !tbaa !49, !noalias !426
  %factor.op.mul3726 = mul i64 %i.bin, %i.bio
  %i.bip = and i32 %i.bhu, -16
  %11 = add i32 %i.bhu, -2
  %i.biq = sext i32 %i.bho to i64
  %wide.trip.count4282 = zext nneg i32 %i.bhq to i64
  %wide.trip.count4277 = zext nneg i32 %i.bhv to i64
  br label %.lr.ph3713

.lr.ph3512.splitthread-pre-split:                 ; preds = %._crit_edge3503
  %.pr4444 = load i32, ptr %i.s, align 4, !tbaa !179
  br label %.lr.ph3512.split

.lr.ph3512.split:                                 ; preds = %.lr.ph3512.splitthread-pre-split, %.lr.ph3512.split.preheader
  %i.bir = phi i32 [ %.pr4444, %.lr.ph3512.splitthread-pre-split ], [ %i.bb, %.lr.ph3512.split.preheader ] ; 3 uses
  %indvars.iv4229 = phi i64 [ %indvars.iv.next4230, %.lr.ph3512.splitthread-pre-split ], [ 0, %.lr.ph3512.split.preheader ] ; 2 uses
  %i.bis = load i32, ptr %i.k, align 8, !tbaa !181 ; 9 uses
  %i.bit = load i32, ptr %i.m, align 8, !tbaa !194
  %i.biu = mul i32 %i.bit, %i.bis                 ; 12 uses
  %i.biv = load i32, ptr %i.u, align 8, !tbaa !181 ; 2 uses
  %i.biw = icmp sgt i32 %i.bir, 0
  br i1 %i.biw, label %.lr.ph3502, label %._crit_edge3503

.lr.ph3502:                                       ; preds = %.lr.ph3512.split
  %i.bix = load ptr, ptr %1, align 8, !tbaa !18
  %i.biy = shl nuw nsw i64 %indvars.iv4229, 2
  %i.biz = add nsw i64 %i.biy, %i.bd              ; 2 uses
  %i.bja = trunc nsw i64 %i.biz to i32            ; 3 uses
  %i.bjb = sdiv i32 %i.bja, %i.biv
  %i.bjc = sext i32 %i.bjb to i64
  %i.bjd = zext nneg i32 %i.bir to i64
  %i.bje = mul nsw i64 %i.bjc, %i.bjd
  %i.bjf = load i64, ptr %i.aw, align 8, !tbaa !49
  %i.bjg = mul i64 %i.bje, %i.bjf
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bix, i64 %i.bjg
  %i.bji = sdiv i32 %i.bja, 16
  %i.bjj = insertelement <2 x i32> poison, i32 %i.bja, i64 0
  %i.bjk = shufflevector <2 x i32> %i.bjj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bjl = srem <2 x i32> %i.bjk, <i32 16, i32 8> ; 2 uses
  %i.bjm = bitcast <2 x i32> %i.bjl to <8 x i8>
  %.lhs.trunc = extractelement <8 x i8> %i.bjm, i64 0
  %i.bjn = sdiv i8 %.lhs.trunc, 8
  %.sext = sext i8 %i.bjn to i32
  %i.bjo = extractelement <2 x i32> %i.bjl, i64 1
  %i.bjp = ashr exact i32 %i.bjo, 2
  %i.bjq = add nsw i32 %i.bjp, %i.bji
  %i.bjr = add nsw i32 %i.bjq, %.sext
  %i.bjs = sext i32 %i.bjr to i64
  %i.bjt = icmp sgt i32 %i.biu, 15
  %i.bju = load i32, ptr %i.c, align 4            ; 2 uses
  %factor.op.mul3504 = mul i32 %i.bis, %i.bju     ; 3 uses
  %i.bjv = icmp eq i32 %i.bis, 16
  %i.bjw = icmp eq i32 %i.bis, 8                  ; 2 uses
  %i.bjx = icmp eq i32 %i.bis, 4                  ; 3 uses
  %i.bjy = icmp eq i32 %i.bis, 1                  ; 3 uses
  %i.bjz = load i32, ptr %i.a, align 4            ; 6 uses
  %i.bka = icmp sgt i32 %i.bjz, 0                 ; 2 uses
  %i.bkb = load i32, ptr %i.f, align 4            ; 3 uses
  %i.bkc = sext i32 %i.bkb to i64
  %i.bkd = shl nsw i32 %i.bkb, 1
  %i.bke = sext i32 %i.bkd to i64
  %i.bkf = mul nsw i32 %i.bkb, 3
  %i.bkg = sext i32 %i.bkf to i64
  %i.bkh = and i32 %i.biu, -16
  %12 = add i32 %i.biu, -2
  %i.bki = add i32 %i.bjz, -1                     ; 2 uses
  %i.bkj = zext i32 %i.bki to i64                 ; 2 uses
  %i.bkk = shl nuw nsw i64 %i.bkj, 4
  %i.bkl = shl nuw nsw i64 %i.bkj, 3
  %i.bkm = sext i32 %i.bju to i64                 ; 2 uses
  %wide.trip.count4227 = zext nneg i32 %i.bir to i64
  %xtraiter4886 = and i32 %i.bjz, 1
  %i.bkn = icmp eq i32 %i.bki, 0
  %unroll_iter4890 = and i32 %i.bjz, 2147483646
  %lcmp.mod4887.not = icmp eq i32 %xtraiter4886, 0
  %lcmp.mod4889 = trunc i32 %i.bjz to i1
  br label %bb.u

._crit_edge3503:                                  ; preds = %bb.ak, %.lr.ph3512.split
  %indvars.iv.next4230 = add nuw nsw i64 %indvars.iv4229, 1 ; 2 uses
  %exitcond4233.not = icmp eq i64 %indvars.iv.next4230, %wide.trip.count4232
  br i1 %exitcond4233.not, label %._crit_edge3513, label %.lr.ph3512.splitthread-pre-split, !llvm.loop !429

bb.u:                                             ; preds = %.lr.ph3502, %bb.ak
  %indvars.iv4224 = phi i64 [ 0, %.lr.ph3502 ], [ %indvars.iv.next4225, %bb.ak ] ; 6 uses
  %.014523500 = phi ptr [ %i.bjh, %.lr.ph3502 ], [ %.21454, %bb.ak ] ; 8 uses
  %i.bko = load ptr, ptr %i.g, align 8, !tbaa !195 ; 2 uses
  %.not1511 = icmp eq ptr %i.bko, null
  br i1 %.not1511, label %_ZN4ncnn3MatD2Ev.exit1514, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bkp = getelementptr inbounds [4 x i8], ptr %i.bko, i64 %i.biz
  %i.bkq = load <4 x float>, ptr %i.bkp, align 1, !tbaa !50
  br label %_ZN4ncnn3MatD2Ev.exit1514

_ZN4ncnn3MatD2Ev.exit1514:                        ; preds = %bb.v, %bb.u
  %.02781 = phi nsz <4 x float> [ zeroinitializer, %bb.u ], [ %i.bkq, %bb.v ] ; 2 uses
  %i.bkr = load ptr, ptr %2, align 8, !tbaa !18, !noalias !430
  %i.bks = load i64, ptr %i.ax, align 8, !tbaa !20, !noalias !430
  %i.bkt = mul i64 %i.bks, %i.bjs
  %i.bku = load i64, ptr %i.ay, align 8, !tbaa !49, !noalias !430
  %i.bkv = mul i64 %i.bkt, %i.bku
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkr, i64 %i.bkv ; 2 uses
  br i1 %i.bjt, label %.lr.ph3336, label %.preheader3015

.lr.ph3336:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit1514
  %i.bkx = load ptr, ptr %0, align 8, !tbaa !18
  %i.bky = load i32, ptr %i.p, align 4, !tbaa !179
  %i.bkz = sext i32 %i.bky to i64
  %i.bla = load i64, ptr %i.az, align 8, !tbaa !49
  %factor.op.mul3343 = mul i64 %i.bla, %i.bkz
  %i.blb = trunc nuw nsw i64 %indvars.iv4224 to i32
  %.reass3505 = mul i32 %factor.op.mul3504, %i.blb
  %i.blc = sext i32 %.reass3505 to i64
  %invariant.gep3345 = getelementptr [2 x i8], ptr %i.bkx, i64 %i.blc
  %i.bld = load i32, ptr %i.a, align 4            ; 6 uses
  %i.ble = icmp sgt i32 %i.bld, 0                 ; 4 uses
  %i.blf = load i32, ptr %i.b, align 4            ; 4 uses
  %i.blg = shl nsw i32 %i.blf, 4
  %i.blh = sext i32 %i.blg to i64
  %i.bli = load i32, ptr %i.e, align 4            ; 15 uses
  %i.blj = sext i32 %i.bli to i64                 ; 3 uses
  %i.blk = shl nsw i32 %i.blf, 3
  %i.bll = sext i32 %i.blk to i64                 ; 2 uses
  %i.blm = shl nsw i32 %i.bli, 1
  %i.bln = sext i32 %i.blm to i64                 ; 2 uses
  %i.blo = mul nsw i32 %i.bli, 3
  %i.blp = sext i32 %i.blo to i64                 ; 2 uses
  %i.blq = shl nsw i32 %i.blf, 2
  %i.blr = sext i32 %i.blq to i64                 ; 4 uses
  %i.bls = shl nsw i32 %i.bli, 2
  %i.blt = sext i32 %i.bls to i64
  %i.blu = mul nsw i32 %i.bli, 5
  %i.blv = sext i32 %i.blu to i64
  %i.blw = mul nsw i32 %i.bli, 6
  %i.blx = sext i32 %i.blw to i64
  %i.bly = mul nsw i32 %i.bli, 7
  %i.blz = sext i32 %i.bly to i64
  %i.bma = shl nsw i32 %i.bli, 3
  %i.bmb = sext i32 %i.bma to i64
  %i.bmc = mul nsw i32 %i.bli, 9
  %i.bmd = sext i32 %i.bmc to i64
  %i.bme = mul nsw i32 %i.bli, 10
  %i.bmf = sext i32 %i.bme to i64
  %i.bmg = mul nsw i32 %i.bli, 11
  %i.bmh = sext i32 %i.bmg to i64
  %i.bmi = mul nsw i32 %i.bli, 12
  %i.bmj = sext i32 %i.bmi to i64
  %i.bmk = mul nsw i32 %i.bli, 13
  %i.bml = sext i32 %i.bmk to i64
  %i.bmm = mul nsw i32 %i.bli, 14
  %i.bmn = sext i32 %i.bmm to i64
  %i.bmo = mul nsw i32 %i.bli, 15
  %i.bmp = sext i32 %i.bmo to i64
  %i.bmq = sext i32 %i.blf to i64
  %i.bmr = add i32 %i.bld, -1
  %i.bms = zext i32 %i.bmr to i64
  %i.bmt = shl nuw nsw i64 %i.bms, 7              ; 4 uses
  br label %bb.w

.preheader3015:                                   ; preds = %.loopexit3007, %_ZN4ncnn3MatD2Ev.exit1514
  %.02858.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1514 ], [ %.82866, %.loopexit3007 ] ; 2 uses
  %.02830.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1514 ], [ %.82838, %.loopexit3007 ] ; 2 uses
  %.02807.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1514 ], [ %.82815, %.loopexit3007 ] ; 2 uses
  %.12782.lcssa = phi <4 x float> [ %.02781, %_ZN4ncnn3MatD2Ev.exit1514 ], [ %.92790, %.loopexit3007 ] ; 2 uses
  %.01481.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1514 ], [ %i.bkh, %.loopexit3007 ] ; 3 uses
  %.01456.lcssa = phi ptr [ %i.bkw, %_ZN4ncnn3MatD2Ev.exit1514 ], [ %.81464, %.loopexit3007 ] ; 2 uses
  %i.bmu = or disjoint i32 %.01481.lcssa, 7
  %i.bmv = icmp slt i32 %i.bmu, %i.biu
  br i1 %i.bmv, label %.lr.ph3396, label %.preheader3014

.lr.ph3396:                                       ; preds = %.preheader3015
  %i.bmw = load ptr, ptr %0, align 8, !tbaa !18
  %i.bmx = load i32, ptr %i.p, align 4, !tbaa !179
  %i.bmy = sext i32 %i.bmx to i64
  %i.bmz = load i64, ptr %i.az, align 8, !tbaa !49
  %factor.op.mul3403 = mul i64 %i.bmz, %i.bmy
  %i.bna = trunc nuw nsw i64 %indvars.iv4224 to i32
  %.reass3507 = mul i32 %factor.op.mul3504, %i.bna
  %i.bnb = sext i32 %.reass3507 to i64
  %invariant.gep3405 = getelementptr [2 x i8], ptr %i.bmw, i64 %i.bnb
  %i.bnc = load i32, ptr %i.a, align 4            ; 5 uses
  %i.bnd = icmp sgt i32 %i.bnc, 0                 ; 3 uses
  %i.bne = load i32, ptr %i.b, align 4            ; 3 uses
  %i.bnf = shl nsw i32 %i.bne, 3
  %i.bng = sext i32 %i.bnf to i64
  %i.bnh = load i32, ptr %i.e, align 4            ; 7 uses
  %i.bni = sext i32 %i.bnh to i64                 ; 2 uses
  %i.bnj = shl nsw i32 %i.bne, 2
  %i.bnk = sext i32 %i.bnj to i64                 ; 2 uses
  %i.bnl = shl nsw i32 %i.bnh, 1
  %i.bnm = sext i32 %i.bnl to i64
  %i.bnn = mul nsw i32 %i.bnh, 3
  %i.bno = sext i32 %i.bnn to i64
  %i.bnp = shl nsw i32 %i.bnh, 2
  %i.bnq = sext i32 %i.bnp to i64
  %i.bnr = mul nsw i32 %i.bnh, 5
  %i.bns = sext i32 %i.bnr to i64
  %i.bnt = mul nsw i32 %i.bnh, 6
  %i.bnu = sext i32 %i.bnt to i64
  %i.bnv = mul nsw i32 %i.bnh, 7
  %i.bnw = sext i32 %i.bnv to i64
  %i.bnx = sext i32 %i.bne to i64
  %i.bny = add i32 %i.bnc, -1
  %i.bnz = zext i32 %i.bny to i64
  %i.boa = shl nuw nsw i64 %i.bnz, 6              ; 3 uses
  br label %bb.z

bb.w:                                             ; preds = %.lr.ph3336, %.loopexit3007
  %.014563335 = phi ptr [ %i.bkw, %.lr.ph3336 ], [ %.81464, %.loopexit3007 ] ; 13 uses
  %.014813334 = phi i32 [ 0, %.lr.ph3336 ], [ %i.cor, %.loopexit3007 ] ; 2 uses
  %.127823333 = phi <4 x float> [ %.02781, %.lr.ph3336 ], [ %.92790, %.loopexit3007 ] ; 9 uses
  %.028073332 = phi <4 x float> [ zeroinitializer, %.lr.ph3336 ], [ %.82815, %.loopexit3007 ] ; 9 uses
  %.028303331 = phi <4 x float> [ zeroinitializer, %.lr.ph3336 ], [ %.82838, %.loopexit3007 ] ; 9 uses
  %.028583330 = phi <4 x float> [ zeroinitializer, %.lr.ph3336 ], [ %.82866, %.loopexit3007 ] ; 9 uses
  %i.bob = sdiv i32 %.014813334, %i.bis
  %i.boc = sext i32 %i.bob to i64
  %.reass3344 = mul i64 %factor.op.mul3343, %i.boc
  %gep3346 = getelementptr i8, ptr %invariant.gep3345, i64 %.reass3344 ; 8 uses
  br i1 %i.bjv, label %.preheader3010, label %.loopexit3011

.preheader3010:                                   ; preds = %bb.w
  br i1 %i.ble, label %.lr.ph3276, label %.loopexit3007

.lr.ph3276:                                       ; preds = %.preheader3010, %.lr.ph3276
  %.114573275 = phi ptr [ %i.btu, %.lr.ph3276 ], [ %.014563335, %.preheader3010 ] ; 17 uses
  %.014863274 = phi ptr [ %i.btt, %.lr.ph3276 ], [ %gep3346, %.preheader3010 ] ; 2 uses
  %.014933273 = phi i32 [ %i.btv, %.lr.ph3276 ], [ 0, %.preheader3010 ]
  %.227833272 = phi <4 x float> [ %i.btj, %.lr.ph3276 ], [ %.127823333, %.preheader3010 ]
  %.128083271 = phi <4 x float> [ %i.btm, %.lr.ph3276 ], [ %.028073332, %.preheader3010 ]
  %.128313270 = phi <4 x float> [ %i.btp, %.lr.ph3276 ], [ %.028303331, %.preheader3010 ]
  %.128593269 = phi <4 x float> [ %i.bts, %.lr.ph3276 ], [ %.028583330, %.preheader3010 ]
  %i.bod = load i64, ptr %.114573275, align 1, !tbaa !50
  %i.boe = insertelement <2 x i64> poison, i64 %i.bod, i64 0
  %i.bof = bitcast <2 x i64> %i.boe to <8 x i16>
  %i.bog = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bof, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.boh = bitcast <8 x i16> %i.bog to <4 x float>
  %i.boi = getelementptr inbounds nuw i8, ptr %.114573275, i64 8
  %i.boj = load i64, ptr %i.boi, align 1, !tbaa !50
  %i.bok = insertelement <2 x i64> poison, i64 %i.boj, i64 0
  %i.bol = bitcast <2 x i64> %i.bok to <8 x i16>
  %i.bom = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bol, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bon = bitcast <8 x i16> %i.bom to <4 x float>
  %i.boo = getelementptr inbounds nuw i8, ptr %.114573275, i64 16
  %i.bop = load i64, ptr %i.boo, align 1, !tbaa !50
  %i.boq = insertelement <2 x i64> poison, i64 %i.bop, i64 0
  %i.bor = bitcast <2 x i64> %i.boq to <8 x i16>
  %i.bos = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bor, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bot = bitcast <8 x i16> %i.bos to <4 x float>
  %i.bou = getelementptr inbounds nuw i8, ptr %.114573275, i64 24
  %i.bov = load i64, ptr %i.bou, align 1, !tbaa !50
  %i.bow = insertelement <2 x i64> poison, i64 %i.bov, i64 0
  %i.box = bitcast <2 x i64> %i.bow to <8 x i16>
  %i.boy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.box, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.boz = bitcast <8 x i16> %i.boy to <4 x float>
  %i.bpa = getelementptr inbounds nuw i8, ptr %.114573275, i64 32
  %i.bpb = load i64, ptr %i.bpa, align 1, !tbaa !50
  %i.bpc = insertelement <2 x i64> poison, i64 %i.bpb, i64 0
  %i.bpd = bitcast <2 x i64> %i.bpc to <8 x i16>
  %i.bpe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bpd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bpf = bitcast <8 x i16> %i.bpe to <4 x float>
  %i.bpg = getelementptr inbounds nuw i8, ptr %.114573275, i64 40
  %i.bph = load i64, ptr %i.bpg, align 1, !tbaa !50
  %i.bpi = insertelement <2 x i64> poison, i64 %i.bph, i64 0
  %i.bpj = bitcast <2 x i64> %i.bpi to <8 x i16>
end_hunk_11
begin_hunk_12_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.cug = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cuf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cuh = bitcast <8 x i16> %i.cug to <4 x float>
  %i.cui = getelementptr inbounds nuw i8, ptr %.1214683365, i64 56
  %i.cuj = load i64, ptr %i.cui, align 1, !tbaa !50
  %i.cuk = insertelement <2 x i64> poison, i64 %i.cuj, i64 0
  %i.cul = bitcast <2 x i64> %i.cuk to <8 x i16>
  %i.cum = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cul, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cun = bitcast <8 x i16> %i.cum to <4 x float>
  %i.cuo = load <4 x i16>, ptr %.214253366, align 2, !tbaa !350
  %i.cup = load <4 x i16>, ptr %.014213367, align 2, !tbaa !350
  %i.cuq = shufflevector <4 x i16> %i.cuo, <4 x i16> %i.cup, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cur = zext <8 x i16> %i.cuq to <8 x i32>
  %i.cus = shl nuw <8 x i32> %i.cur, splat (i32 16) ; 8 uses
  %i.cut = bitcast <8 x i32> %i.cus to <8 x float>
  %i.cuu = shufflevector <8 x float> %i.cut, <8 x float> poison, <4 x i32> zeroinitializer
  %i.cuv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csx, <4 x float> nofpclass(nan inf) %i.cuu, <4 x float> nofpclass(nan inf) %.1327943364)
  %i.cuw = bitcast <8 x i32> %i.cus to <8 x float>
  %i.cux = shufflevector <8 x float> %i.cuw, <8 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cuy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ctd, <4 x float> nofpclass(nan inf) %i.cux, <4 x float> nofpclass(nan inf) %.1228193363)
  %i.cuz = bitcast <8 x i32> %i.cus to <8 x float>
  %i.cva = shufflevector <8 x float> %i.cuz, <8 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cvb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ctj, <4 x float> nofpclass(nan inf) %i.cva, <4 x float> nofpclass(nan inf) %.1228423362)
  %i.cvc = bitcast <8 x i32> %i.cus to <8 x float>
  %i.cvd = shufflevector <8 x float> %i.cvc, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cve = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ctp, <4 x float> nofpclass(nan inf) %i.cvd, <4 x float> nofpclass(nan inf) %.1228703361)
  %i.cvf = bitcast <8 x i32> %i.cus to <8 x float>
  %i.cvg = shufflevector <8 x float> %i.cvf, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.cvh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ctv, <4 x float> nofpclass(nan inf) %i.cvg, <4 x float> nofpclass(nan inf) %i.cuv) ; 2 uses
  %i.cvi = bitcast <8 x i32> %i.cus to <8 x float>
  %i.cvj = shufflevector <8 x float> %i.cvi, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.cvk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cub, <4 x float> nofpclass(nan inf) %i.cvj, <4 x float> nofpclass(nan inf) %i.cuy) ; 2 uses
  %i.cvl = bitcast <8 x i32> %i.cus to <8 x float>
  %i.cvm = shufflevector <8 x float> %i.cvl, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.cvn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cuh, <4 x float> nofpclass(nan inf) %i.cvm, <4 x float> nofpclass(nan inf) %i.cvb) ; 2 uses
  %i.cvo = bitcast <8 x i32> %i.cus to <8 x float>
  %i.cvp = shufflevector <8 x float> %i.cvo, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.cvq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cun, <4 x float> nofpclass(nan inf) %i.cvp, <4 x float> nofpclass(nan inf) %i.cve) ; 2 uses
  %i.cvr = getelementptr inbounds [2 x i8], ptr %.214253366, i64 %i.bnk
  %i.cvs = getelementptr inbounds [2 x i8], ptr %.014213367, i64 %i.bnk
  %i.cvt = getelementptr inbounds nuw i8, ptr %.1214683365, i64 64
  %i.cvu = add nuw nsw i32 %.014203368, 1         ; 2 uses
  %exitcond4201.not = icmp eq i32 %i.cvu, %i.bnc
  br i1 %exitcond4201.not, label %.loopexit3003.loopexit, label %.lr.ph3370, !llvm.loop !439

.loopexit3003.loopexit:                           ; preds = %.lr.ph3370
  %scevgep4199 = getelementptr i8, ptr %.914653395, i64 64
  %scevgep4200 = getelementptr i8, ptr %scevgep4199, i64 %i.boa
  br label %.loopexit3002

.loopexit3003:                                    ; preds = %.loopexit3005
  br i1 %i.bjy, label %.preheader3001, label %.loopexit3002

.preheader3001:                                   ; preds = %.loopexit3003
  br i1 %i.bnd, label %.lr.ph3384, label %.loopexit3002

.lr.ph3384:                                       ; preds = %.preheader3001, %.lr.ph3384
  %.014193383 = phi i32 [ %i.dad, %.lr.ph3384 ], [ 0, %.preheader3001 ]
  %.414273382 = phi ptr [ %i.dab, %.lr.ph3384 ], [ %gep3406, %.preheader3001 ] ; 9 uses
  %.1414703381 = phi ptr [ %i.dac, %.lr.ph3384 ], [ %.914653395, %.preheader3001 ] ; 9 uses
  %.1527963380 = phi <4 x float> [ %i.czc, %.lr.ph3384 ], [ %.1027913393, %.preheader3001 ]
  %.1428213379 = phi <4 x float> [ %i.czk, %.lr.ph3384 ], [ %.928163392, %.preheader3001 ]
  %.1428443378 = phi <4 x float> [ %i.czs, %.lr.ph3384 ], [ %.928393391, %.preheader3001 ]
  %.1428723377 = phi <4 x float> [ %i.daa, %.lr.ph3384 ], [ %.928673390, %.preheader3001 ]
  %i.cvv = load i64, ptr %.1414703381, align 1, !tbaa !50
  %i.cvw = insertelement <2 x i64> poison, i64 %i.cvv, i64 0
  %i.cvx = bitcast <2 x i64> %i.cvw to <8 x i16>
  %i.cvy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cvx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cvz = bitcast <8 x i16> %i.cvy to <4 x float>
  %i.cwa = getelementptr inbounds nuw i8, ptr %.1414703381, i64 8
  %i.cwb = load i64, ptr %i.cwa, align 1, !tbaa !50
  %i.cwc = insertelement <2 x i64> poison, i64 %i.cwb, i64 0
  %i.cwd = bitcast <2 x i64> %i.cwc to <8 x i16>
  %i.cwe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cwd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cwf = bitcast <8 x i16> %i.cwe to <4 x float>
  %i.cwg = getelementptr inbounds nuw i8, ptr %.1414703381, i64 16
  %i.cwh = load i64, ptr %i.cwg, align 1, !tbaa !50
  %i.cwi = insertelement <2 x i64> poison, i64 %i.cwh, i64 0
  %i.cwj = bitcast <2 x i64> %i.cwi to <8 x i16>
  %i.cwk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cwj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cwl = bitcast <8 x i16> %i.cwk to <4 x float>
  %i.cwm = getelementptr inbounds nuw i8, ptr %.1414703381, i64 24
  %i.cwn = load i64, ptr %i.cwm, align 1, !tbaa !50
  %i.cwo = insertelement <2 x i64> poison, i64 %i.cwn, i64 0
  %i.cwp = bitcast <2 x i64> %i.cwo to <8 x i16>
  %i.cwq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cwp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cwr = bitcast <8 x i16> %i.cwq to <4 x float>
  %i.cws = getelementptr inbounds nuw i8, ptr %.1414703381, i64 32
  %i.cwt = load i64, ptr %i.cws, align 1, !tbaa !50
  %i.cwu = insertelement <2 x i64> poison, i64 %i.cwt, i64 0
  %i.cwv = bitcast <2 x i64> %i.cwu to <8 x i16>
  %i.cww = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cwv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cwx = bitcast <8 x i16> %i.cww to <4 x float>
  %i.cwy = getelementptr inbounds nuw i8, ptr %.1414703381, i64 40
  %i.cwz = load i64, ptr %i.cwy, align 1, !tbaa !50
  %i.cxa = insertelement <2 x i64> poison, i64 %i.cwz, i64 0
  %i.cxb = bitcast <2 x i64> %i.cxa to <8 x i16>
  %i.cxc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cxb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cxd = bitcast <8 x i16> %i.cxc to <4 x float>
  %i.cxe = getelementptr inbounds nuw i8, ptr %.1414703381, i64 48
  %i.cxf = load i64, ptr %i.cxe, align 1, !tbaa !50
  %i.cxg = insertelement <2 x i64> poison, i64 %i.cxf, i64 0
  %i.cxh = bitcast <2 x i64> %i.cxg to <8 x i16>
  %i.cxi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cxh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cxj = bitcast <8 x i16> %i.cxi to <4 x float>
  %i.cxk = getelementptr inbounds nuw i8, ptr %.1414703381, i64 56
  %i.cxl = load i64, ptr %i.cxk, align 1, !tbaa !50
  %i.cxm = insertelement <2 x i64> poison, i64 %i.cxl, i64 0
  %i.cxn = bitcast <2 x i64> %i.cxm to <8 x i16>
  %i.cxo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cxn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cxp = bitcast <8 x i16> %i.cxo to <4 x float>
  %i.cxq = load i16, ptr %.414273382, align 2, !tbaa !350
  %i.cxr = zext i16 %i.cxq to i32
  %i.cxs = shl nuw i32 %i.cxr, 16
  %i.cxt = insertelement <4 x i32> poison, i32 %i.cxs, i64 0
  %i.cxu = bitcast <4 x i32> %i.cxt to <4 x float>
  %i.cxv = shufflevector <4 x float> %i.cxu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cxw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cvz, <4 x float> nofpclass(nan inf) %i.cxv, <4 x float> nofpclass(nan inf) %.1527963380)
  %i.cxx = getelementptr inbounds [2 x i8], ptr %.414273382, i64 %i.bni
  %i.cxy = load i16, ptr %i.cxx, align 2, !tbaa !350
  %i.cxz = zext i16 %i.cxy to i32
  %i.cya = shl nuw i32 %i.cxz, 16
  %i.cyb = insertelement <4 x i32> poison, i32 %i.cya, i64 0
  %i.cyc = bitcast <4 x i32> %i.cyb to <4 x float>
  %i.cyd = shufflevector <4 x float> %i.cyc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cye = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cwf, <4 x float> nofpclass(nan inf) %i.cyd, <4 x float> nofpclass(nan inf) %.1428213379)
  %i.cyf = getelementptr inbounds [2 x i8], ptr %.414273382, i64 %i.bnm
  %i.cyg = load i16, ptr %i.cyf, align 2, !tbaa !350
  %i.cyh = zext i16 %i.cyg to i32
  %i.cyi = shl nuw i32 %i.cyh, 16
  %i.cyj = insertelement <4 x i32> poison, i32 %i.cyi, i64 0
  %i.cyk = bitcast <4 x i32> %i.cyj to <4 x float>
  %i.cyl = shufflevector <4 x float> %i.cyk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cym = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cwl, <4 x float> nofpclass(nan inf) %i.cyl, <4 x float> nofpclass(nan inf) %.1428443378)
  %i.cyn = getelementptr inbounds [2 x i8], ptr %.414273382, i64 %i.bno
  %i.cyo = load i16, ptr %i.cyn, align 2, !tbaa !350
  %i.cyp = zext i16 %i.cyo to i32
  %i.cyq = shl nuw i32 %i.cyp, 16
  %i.cyr = insertelement <4 x i32> poison, i32 %i.cyq, i64 0
  %i.cys = bitcast <4 x i32> %i.cyr to <4 x float>
  %i.cyt = shufflevector <4 x float> %i.cys, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cyu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cwr, <4 x float> nofpclass(nan inf) %i.cyt, <4 x float> nofpclass(nan inf) %.1428723377)
  %i.cyv = getelementptr inbounds [2 x i8], ptr %.414273382, i64 %i.bnq
  %i.cyw = load i16, ptr %i.cyv, align 2, !tbaa !350
  %i.cyx = zext i16 %i.cyw to i32
  %i.cyy = shl nuw i32 %i.cyx, 16
  %i.cyz = insertelement <4 x i32> poison, i32 %i.cyy, i64 0
  %i.cza = bitcast <4 x i32> %i.cyz to <4 x float>
  %i.czb = shufflevector <4 x float> %i.cza, <4 x float> poison, <4 x i32> zeroinitializer
  %i.czc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cwx, <4 x float> nofpclass(nan inf) %i.czb, <4 x float> nofpclass(nan inf) %i.cxw) ; 2 uses
  %i.czd = getelementptr inbounds [2 x i8], ptr %.414273382, i64 %i.bns
  %i.cze = load i16, ptr %i.czd, align 2, !tbaa !350
  %i.czf = zext i16 %i.cze to i32
  %i.czg = shl nuw i32 %i.czf, 16
  %i.czh = insertelement <4 x i32> poison, i32 %i.czg, i64 0
  %i.czi = bitcast <4 x i32> %i.czh to <4 x float>
  %i.czj = shufflevector <4 x float> %i.czi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.czk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxd, <4 x float> nofpclass(nan inf) %i.czj, <4 x float> nofpclass(nan inf) %i.cye) ; 2 uses
  %i.czl = getelementptr inbounds [2 x i8], ptr %.414273382, i64 %i.bnu
  %i.czm = load i16, ptr %i.czl, align 2, !tbaa !350
  %i.czn = zext i16 %i.czm to i32
  %i.czo = shl nuw i32 %i.czn, 16
  %i.czp = insertelement <4 x i32> poison, i32 %i.czo, i64 0
  %i.czq = bitcast <4 x i32> %i.czp to <4 x float>
  %i.czr = shufflevector <4 x float> %i.czq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.czs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxj, <4 x float> nofpclass(nan inf) %i.czr, <4 x float> nofpclass(nan inf) %i.cym) ; 2 uses
  %i.czt = getelementptr inbounds [2 x i8], ptr %.414273382, i64 %i.bnw
  %i.czu = load i16, ptr %i.czt, align 2, !tbaa !350
  %i.czv = zext i16 %i.czu to i32
  %i.czw = shl nuw i32 %i.czv, 16
  %i.czx = insertelement <4 x i32> poison, i32 %i.czw, i64 0
  %i.czy = bitcast <4 x i32> %i.czx to <4 x float>
  %i.czz = shufflevector <4 x float> %i.czy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.daa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxp, <4 x float> nofpclass(nan inf) %i.czz, <4 x float> nofpclass(nan inf) %i.cyu) ; 2 uses
  %i.dab = getelementptr inbounds [2 x i8], ptr %.414273382, i64 %i.bnx
  %i.dac = getelementptr inbounds nuw i8, ptr %.1414703381, i64 64
  %i.dad = add nuw nsw i32 %.014193383, 1         ; 2 uses
  %exitcond4204.not = icmp eq i32 %i.dad, %i.bnc
  br i1 %exitcond4204.not, label %.loopexit3002.loopexit, label %.lr.ph3384, !llvm.loop !440

.loopexit3002.loopexit:                           ; preds = %.lr.ph3384
  %scevgep4202 = getelementptr i8, ptr %.914653395, i64 64
  %scevgep4203 = getelementptr i8, ptr %scevgep4202, i64 %i.boa
  br label %.loopexit3002

.loopexit3002:                                    ; preds = %.preheader3004, %.loopexit3005.loopexit, %bb.aa, %.loopexit3003.loopexit, %.loopexit3002.loopexit, %.preheader3001, %.loopexit3003
  %.152873 = phi nsz <4 x float> [ %.928673390, %.loopexit3003 ], [ %.928673390, %.preheader3001 ], [ %i.daa, %.loopexit3002.loopexit ], [ %.928673390, %bb.aa ], [ %i.cvq, %.loopexit3003.loopexit ], [ %i.cso, %.loopexit3005.loopexit ], [ %.928673390, %.preheader3004 ] ; 2 uses
  %.152845 = phi nsz <4 x float> [ %.928393391, %.loopexit3003 ], [ %.928393391, %.preheader3001 ], [ %i.czs, %.loopexit3002.loopexit ], [ %.928393391, %bb.aa ], [ %i.cvn, %.loopexit3003.loopexit ], [ %i.csl, %.loopexit3005.loopexit ], [ %.928393391, %.preheader3004 ] ; 2 uses
  %.152822 = phi nsz <4 x float> [ %.928163392, %.loopexit3003 ], [ %.928163392, %.preheader3001 ], [ %i.czk, %.loopexit3002.loopexit ], [ %.928163392, %bb.aa ], [ %i.cvk, %.loopexit3003.loopexit ], [ %i.csi, %.loopexit3005.loopexit ], [ %.928163392, %.preheader3004 ] ; 2 uses
  %.162797 = phi nsz <4 x float> [ %.1027913393, %.loopexit3003 ], [ %.1027913393, %.preheader3001 ], [ %i.czc, %.loopexit3002.loopexit ], [ %.1027913393, %bb.aa ], [ %i.cvh, %.loopexit3003.loopexit ], [ %i.csf, %.loopexit3005.loopexit ], [ %.1027913393, %.preheader3004 ] ; 2 uses
  %.151471 = phi ptr [ %.914653395, %.loopexit3003 ], [ %.914653395, %.preheader3001 ], [ %scevgep4203, %.loopexit3002.loopexit ], [ %.914653395, %bb.aa ], [ %scevgep4200, %.loopexit3003.loopexit ], [ %scevgep4197, %.loopexit3005.loopexit ], [ %.914653395, %.preheader3004 ] ; 2 uses
  %i.dae = add nuw nsw i32 %.114823394, 8         ; 3 uses
  %i.daf = or disjoint i32 %i.dae, 7
  %i.dag = icmp slt i32 %i.daf, %i.biu
  br i1 %i.dag, label %bb.z, label %.preheader3014, !llvm.loop !441

.preheader3013:                                   ; preds = %.loopexit2998, %.preheader3014
  %.162874.lcssa = phi <4 x float> [ %.92867.lcssa, %.preheader3014 ], [ %.202878, %.loopexit2998 ]
  %.162846.lcssa = phi <4 x float> [ %.92839.lcssa, %.preheader3014 ], [ %.202850, %.loopexit2998 ]
  %.162823.lcssa = phi <4 x float> [ %.92816.lcssa, %.preheader3014 ], [ %.202827, %.loopexit2998 ] ; 3 uses
  %.172798.lcssa = phi <4 x float> [ %.102791.lcssa, %.preheader3014 ], [ %.212802, %.loopexit2998 ] ; 3 uses
  %.21483.lcssa = phi i32 [ %.11482.lcssa, %.preheader3014 ], [ %i.dfz, %.loopexit2998 ] ; 5 uses
  %.161472.lcssa = phi ptr [ %.91465.lcssa, %.preheader3014 ], [ %.201476, %.loopexit2998 ] ; 3 uses
  %i.dah = or disjoint i32 %.21483.lcssa, 1
  %i.dai = icmp slt i32 %i.dah, %i.biu
  br i1 %i.dai, label %.lr.ph3466, label %.preheader3012

.lr.ph3466:                                       ; preds = %.preheader3013
  %i.daj = load ptr, ptr %0, align 8, !tbaa !18
  %i.dak = load i32, ptr %i.p, align 4, !tbaa !179
  %i.dal = sext i32 %i.dak to i64
  %i.dam = load i64, ptr %i.az, align 8, !tbaa !49
  %factor.op.mul3471 = mul i64 %i.dam, %i.dal
  %i.dan = mul nsw i64 %indvars.iv4224, %i.bkm
  %invariant.gep3473 = getelementptr [2 x i8], ptr %i.daj, i64 %i.dan
  %i.dao = load i32, ptr %i.e, align 4
  %i.dap = sext i32 %i.dao to i64
  %i.daq = load i32, ptr %i.b, align 4
  %i.dar = sext i32 %i.daq to i64
  br i1 %i.bka, label %.lr.ph3457.us.preheader, label %.lr.ph3466.split.preheader

.lr.ph3466.split.preheader:                       ; preds = %.lr.ph3466
  %i.das = add i32 %.21483.lcssa, 2
  %i.dat = sub i32 %12, %.21483.lcssa
  %i.dau = and i32 %i.dat, -2
  %i.dav = add i32 %i.das, %i.dau
  br label %.preheader3012

.lr.ph3457.us.preheader:                          ; preds = %.lr.ph3466
  %i.daw = zext i32 %.21483.lcssa to i64
  br label %.lr.ph3457.us

.lr.ph3457.us:                                    ; preds = %.lr.ph3457.us.preheader, %._crit_edge3458.us
  %indvars.iv4215 = phi i64 [ %i.daw, %.lr.ph3457.us.preheader ], [ %indvars.iv.next4216, %._crit_edge3458.us ] ; 2 uses
  %.2114773465.us = phi ptr [ %.161472.lcssa, %.lr.ph3457.us.preheader ], [ %scevgep4213, %._crit_edge3458.us ] ; 2 uses
  %.2228033463.us = phi <4 x float> [ %.172798.lcssa, %.lr.ph3457.us.preheader ], [ %i.dbo, %._crit_edge3458.us ]
  %.2128283462.us = phi <4 x float> [ %.162823.lcssa, %.lr.ph3457.us.preheader ], [ %i.dbw, %._crit_edge3458.us ]
  %.reass3472.us = mul i64 %factor.op.mul3471, %indvars.iv4215
  %gep3474.us = getelementptr i8, ptr %invariant.gep3473, i64 %.reass3472.us
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph3457.us, %bb.ab
  %.014123455.us = phi i32 [ 0, %.lr.ph3457.us ], [ %i.dbz, %bb.ab ]
  %.014133454.us = phi ptr [ %gep3474.us, %.lr.ph3457.us ], [ %i.dbx, %bb.ab ] ; 3 uses
  %.2214783453.us = phi ptr [ %.2114773465.us, %.lr.ph3457.us ], [ %i.dby, %bb.ab ] ; 3 uses
  %.2328043452.us = phi <4 x float> [ %.2228033463.us, %.lr.ph3457.us ], [ %i.dbo, %bb.ab ]
  %.2228293451.us = phi <4 x float> [ %.2128283462.us, %.lr.ph3457.us ], [ %i.dbw, %bb.ab ]
  %i.dax = load i64, ptr %.2214783453.us, align 1, !tbaa !50
  %i.day = insertelement <2 x i64> poison, i64 %i.dax, i64 0
  %i.daz = bitcast <2 x i64> %i.day to <8 x i16>
  %i.dba = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.daz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dbb = bitcast <8 x i16> %i.dba to <4 x float>
  %i.dbc = getelementptr inbounds nuw i8, ptr %.2214783453.us, i64 8
  %i.dbd = load i64, ptr %i.dbc, align 1, !tbaa !50
  %i.dbe = insertelement <2 x i64> poison, i64 %i.dbd, i64 0
  %i.dbf = bitcast <2 x i64> %i.dbe to <8 x i16>
  %i.dbg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dbf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dbh = bitcast <8 x i16> %i.dbg to <4 x float>
  %i.dbi = load i16, ptr %.014133454.us, align 2, !tbaa !350
  %i.dbj = zext i16 %i.dbi to i32
  %i.dbk = shl nuw i32 %i.dbj, 16
  %i.dbl = insertelement <4 x i32> poison, i32 %i.dbk, i64 0
  %i.dbm = bitcast <4 x i32> %i.dbl to <4 x float>
  %i.dbn = shufflevector <4 x float> %i.dbm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dbo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dbb, <4 x float> nofpclass(nan inf) %i.dbn, <4 x float> nofpclass(nan inf) %.2328043452.us) ; 3 uses
  %i.dbp = getelementptr inbounds [2 x i8], ptr %.014133454.us, i64 %i.dap
  %i.dbq = load i16, ptr %i.dbp, align 2, !tbaa !350
  %i.dbr = zext i16 %i.dbq to i32
  %i.dbs = shl nuw i32 %i.dbr, 16
  %i.dbt = insertelement <4 x i32> poison, i32 %i.dbs, i64 0
  %i.dbu = bitcast <4 x i32> %i.dbt to <4 x float>
  %i.dbv = shufflevector <4 x float> %i.dbu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dbw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dbh, <4 x float> nofpclass(nan inf) %i.dbv, <4 x float> nofpclass(nan inf) %.2228293451.us) ; 3 uses
  %i.dbx = getelementptr inbounds [2 x i8], ptr %.014133454.us, i64 %i.dar
  %i.dby = getelementptr inbounds nuw i8, ptr %.2214783453.us, i64 16
  %i.dbz = add nuw nsw i32 %.014123455.us, 1      ; 2 uses
  %exitcond4214.not = icmp eq i32 %i.dbz, %i.bjz
  br i1 %exitcond4214.not, label %._crit_edge3458.us, label %bb.ab, !llvm.loop !442

._crit_edge3458.us:                               ; preds = %bb.ab
  %scevgep4212.a = getelementptr i8, ptr %.2114773465.us, i64 16
  %scevgep4213 = getelementptr i8, ptr %scevgep4212.a, i64 %i.bkk ; 2 uses
  %indvars.iv.next4216 = add nuw nsw i64 %indvars.iv4215, 2 ; 3 uses
  %i.dca = trunc i64 %indvars.iv.next4216 to i32
  %i.dcb = or i32 %i.dca, 1
  %i.dcc = icmp slt i32 %i.dcb, %i.biu
  br i1 %i.dcc, label %.lr.ph3457.us, label %.preheader3012.loopexit, !llvm.loop !443

bb.ac:                                            ; preds = %.lr.ph3440, %.loopexit2998
  %.1614723439 = phi ptr [ %.91465.lcssa, %.lr.ph3440 ], [ %.201476, %.loopexit2998 ] ; 7 uses
  %.214833438 = phi i32 [ %.11482.lcssa, %.lr.ph3440 ], [ %i.dfz, %.loopexit2998 ] ; 2 uses
  %.1727983437 = phi <4 x float> [ %.102791.lcssa, %.lr.ph3440 ], [ %.212802, %.loopexit2998 ] ; 5 uses
  %.1628233436 = phi <4 x float> [ %.92816.lcssa, %.lr.ph3440 ], [ %.202827, %.loopexit2998 ] ; 5 uses
  %.1628463435 = phi <4 x float> [ %.92839.lcssa, %.lr.ph3440 ], [ %.202850, %.loopexit2998 ] ; 5 uses
  %.1628743434 = phi <4 x float> [ %.92867.lcssa, %.lr.ph3440 ], [ %.202878, %.loopexit2998 ] ; 5 uses
  %i.dcd = sdiv i32 %.214833438, %i.bis
  %i.dce = sext i32 %i.dcd to i64
  %.reass3448 = mul i64 %factor.op.mul3447, %i.dce
  %gep3450 = getelementptr i8, ptr %invariant.gep3449, i64 %.reass3448 ; 2 uses
  br i1 %i.bjx, label %.preheader2999, label %.loopexit3000

.preheader2999:                                   ; preds = %bb.ac
  br i1 %i.cpd, label %.lr.ph3414, label %.loopexit2998

.lr.ph3414:                                       ; preds = %.preheader2999, %.lr.ph3414
  %.014153413 = phi i32 [ %i.ddt, %.lr.ph3414 ], [ 0, %.preheader2999 ]
  %.014163412 = phi ptr [ %i.ddr, %.lr.ph3414 ], [ %gep3450, %.preheader2999 ] ; 2 uses
  %.1714733411 = phi ptr [ %i.dds, %.lr.ph3414 ], [ %.1614723439, %.preheader2999 ] ; 5 uses
  %.1827993410 = phi <4 x float> [ %i.ddh, %.lr.ph3414 ], [ %.1727983437, %.preheader2999 ]
  %.1728243409 = phi <4 x float> [ %i.ddk, %.lr.ph3414 ], [ %.1628233436, %.preheader2999 ]
  %.1728473408 = phi <4 x float> [ %i.ddn, %.lr.ph3414 ], [ %.1628463435, %.preheader2999 ]
  %.1728753407 = phi <4 x float> [ %i.ddq, %.lr.ph3414 ], [ %.1628743434, %.preheader2999 ]
  %i.dcf = load i64, ptr %.1714733411, align 1, !tbaa !50
  %i.dcg = insertelement <2 x i64> poison, i64 %i.dcf, i64 0
  %i.dch = bitcast <2 x i64> %i.dcg to <8 x i16>
  %i.dci = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcj = bitcast <8 x i16> %i.dci to <4 x float>
  %i.dck = getelementptr inbounds nuw i8, ptr %.1714733411, i64 8
  %i.dcl = load i64, ptr %i.dck, align 1, !tbaa !50
  %i.dcm = insertelement <2 x i64> poison, i64 %i.dcl, i64 0
  %i.dcn = bitcast <2 x i64> %i.dcm to <8 x i16>
  %i.dco = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dcn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcp = bitcast <8 x i16> %i.dco to <4 x float>
  %i.dcq = getelementptr inbounds nuw i8, ptr %.1714733411, i64 16
  %i.dcr = load i64, ptr %i.dcq, align 1, !tbaa !50
  %i.dcs = insertelement <2 x i64> poison, i64 %i.dcr, i64 0
  %i.dct = bitcast <2 x i64> %i.dcs to <8 x i16>
  %i.dcu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dct, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcv = bitcast <8 x i16> %i.dcu to <4 x float>
  %i.dcw = getelementptr inbounds nuw i8, ptr %.1714733411, i64 24
  %i.dcx = load i64, ptr %i.dcw, align 1, !tbaa !50
  %i.dcy = insertelement <2 x i64> poison, i64 %i.dcx, i64 0
  %i.dcz = bitcast <2 x i64> %i.dcy to <8 x i16>
  %i.dda = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dcz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ddb = bitcast <8 x i16> %i.dda to <4 x float>
  %i.ddc = load <4 x i16>, ptr %.014163412, align 2, !tbaa !350
  %i.ddd = zext <4 x i16> %i.ddc to <4 x i32>
  %i.dde = shl nuw <4 x i32> %i.ddd, splat (i32 16) ; 4 uses
  %i.ddf = bitcast <4 x i32> %i.dde to <4 x float>
  %i.ddg = shufflevector <4 x float> %i.ddf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ddh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dcj, <4 x float> nofpclass(nan inf) %i.ddg, <4 x float> nofpclass(nan inf) %.1827993410) ; 2 uses
  %i.ddi = bitcast <4 x i32> %i.dde to <4 x float>
  %i.ddj = shufflevector <4 x float> %i.ddi, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ddk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dcp, <4 x float> nofpclass(nan inf) %i.ddj, <4 x float> nofpclass(nan inf) %.1728243409) ; 2 uses
  %i.ddl = bitcast <4 x i32> %i.dde to <4 x float>
  %i.ddm = shufflevector <4 x float> %i.ddl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ddn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dcv, <4 x float> nofpclass(nan inf) %i.ddm, <4 x float> nofpclass(nan inf) %.1728473408) ; 2 uses
  %i.ddo = bitcast <4 x i32> %i.dde to <4 x float>
  %i.ddp = shufflevector <4 x float> %i.ddo, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ddq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ddb, <4 x float> nofpclass(nan inf) %i.ddp, <4 x float> nofpclass(nan inf) %.1728753407) ; 2 uses
  %i.ddr = getelementptr inbounds [2 x i8], ptr %.014163412, i64 %i.cpg
  %i.dds = getelementptr inbounds nuw i8, ptr %.1714733411, i64 32
  %i.ddt = add nuw nsw i32 %.014153413, 1         ; 2 uses
  %exitcond4207.not = icmp eq i32 %i.ddt, %i.cpc
  br i1 %exitcond4207.not, label %.loopexit3000.loopexit, label %.lr.ph3414, !llvm.loop !444

.loopexit3000.loopexit:                           ; preds = %.lr.ph3414
  %scevgep4205 = getelementptr i8, ptr %.1614723439, i64 32
  %scevgep4206 = getelementptr i8, ptr %scevgep4205, i64 %i.cpq
  br label %.loopexit2998

.loopexit3000:                                    ; preds = %bb.ac
  br i1 %i.bjy, label %.preheader2997, label %.loopexit2998

.preheader2997:                                   ; preds = %.loopexit3000
  br i1 %i.cpd, label %.lr.ph3428, label %.loopexit2998

.lr.ph3428:                                       ; preds = %.preheader2997, %.lr.ph3428
  %.014143427 = phi i32 [ %i.dfy, %.lr.ph3428 ], [ 0, %.preheader2997 ]
  %.214183426 = phi ptr [ %i.dfw, %.lr.ph3428 ], [ %gep3450, %.preheader2997 ] ; 5 uses
  %.1914753425 = phi ptr [ %i.dfx, %.lr.ph3428 ], [ %.1614723439, %.preheader2997 ] ; 5 uses
  %.2028013424 = phi <4 x float> [ %i.dex, %.lr.ph3428 ], [ %.1727983437, %.preheader2997 ]
  %.1928263423 = phi <4 x float> [ %i.dff, %.lr.ph3428 ], [ %.1628233436, %.preheader2997 ]
  %.1928493422 = phi <4 x float> [ %i.dfn, %.lr.ph3428 ], [ %.1628463435, %.preheader2997 ]
  %.1928773421 = phi <4 x float> [ %i.dfv, %.lr.ph3428 ], [ %.1628743434, %.preheader2997 ]
  %i.ddu = load i64, ptr %.1914753425, align 1, !tbaa !50
  %i.ddv = insertelement <2 x i64> poison, i64 %i.ddu, i64 0
  %i.ddw = bitcast <2 x i64> %i.ddv to <8 x i16>
  %i.ddx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ddw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ddy = bitcast <8 x i16> %i.ddx to <4 x float>
  %i.ddz = getelementptr inbounds nuw i8, ptr %.1914753425, i64 8
  %i.dea = load i64, ptr %i.ddz, align 1, !tbaa !50
  %i.deb = insertelement <2 x i64> poison, i64 %i.dea, i64 0
  %i.dec = bitcast <2 x i64> %i.deb to <8 x i16>
  %i.ded = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dec, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dee = bitcast <8 x i16> %i.ded to <4 x float>
  %i.def = getelementptr inbounds nuw i8, ptr %.1914753425, i64 16
  %i.deg = load i64, ptr %i.def, align 1, !tbaa !50
  %i.deh = insertelement <2 x i64> poison, i64 %i.deg, i64 0
  %i.dei = bitcast <2 x i64> %i.deh to <8 x i16>
  %i.dej = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dei, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dek = bitcast <8 x i16> %i.dej to <4 x float>
  %i.del = getelementptr inbounds nuw i8, ptr %.1914753425, i64 24
  %i.dem = load i64, ptr %i.del, align 1, !tbaa !50
  %i.den = insertelement <2 x i64> poison, i64 %i.dem, i64 0
  %i.deo = bitcast <2 x i64> %i.den to <8 x i16>
  %i.dep = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.deo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.deq = bitcast <8 x i16> %i.dep to <4 x float>
  %i.der = load i16, ptr %.214183426, align 2, !tbaa !350
  %i.des = zext i16 %i.der to i32
  %i.det = shl nuw i32 %i.des, 16
  %i.deu = insertelement <4 x i32> poison, i32 %i.det, i64 0
  %i.dev = bitcast <4 x i32> %i.deu to <4 x float>
  %i.dew = shufflevector <4 x float> %i.dev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dex = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ddy, <4 x float> nofpclass(nan inf) %i.dew, <4 x float> nofpclass(nan inf) %.2028013424) ; 2 uses
  %i.dey = getelementptr inbounds [2 x i8], ptr %.214183426, i64 %i.cpi
  %i.dez = load i16, ptr %i.dey, align 2, !tbaa !350
  %i.dfa = zext i16 %i.dez to i32
  %i.dfb = shl nuw i32 %i.dfa, 16
  %i.dfc = insertelement <4 x i32> poison, i32 %i.dfb, i64 0
  %i.dfd = bitcast <4 x i32> %i.dfc to <4 x float>
  %i.dfe = shufflevector <4 x float> %i.dfd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dee, <4 x float> nofpclass(nan inf) %i.dfe, <4 x float> nofpclass(nan inf) %.1928263423) ; 2 uses
  %i.dfg = getelementptr inbounds [2 x i8], ptr %.214183426, i64 %i.cpk
  %i.dfh = load i16, ptr %i.dfg, align 2, !tbaa !350
  %i.dfi = zext i16 %i.dfh to i32
  %i.dfj = shl nuw i32 %i.dfi, 16
  %i.dfk = insertelement <4 x i32> poison, i32 %i.dfj, i64 0
  %i.dfl = bitcast <4 x i32> %i.dfk to <4 x float>
  %i.dfm = shufflevector <4 x float> %i.dfl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dfn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dek, <4 x float> nofpclass(nan inf) %i.dfm, <4 x float> nofpclass(nan inf) %.1928493422) ; 2 uses
  %i.dfo = getelementptr inbounds [2 x i8], ptr %.214183426, i64 %i.cpm
  %i.dfp = load i16, ptr %i.dfo, align 2, !tbaa !350
  %i.dfq = zext i16 %i.dfp to i32
end_hunk_12
begin_hunk_13_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.djj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dji, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dja)
  %i.djk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dji, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.djj) ; 8 uses
  %i.djl = fmul fast <4 x float> %i.djk, %i.djk
  %i.djm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.djk, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.djn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.djm, <4 x float> nofpclass(nan inf) %i.djk, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.djo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.djn, <4 x float> nofpclass(nan inf) %i.djk, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.djp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.djo, <4 x float> nofpclass(nan inf) %i.djk, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.djq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.djp, <4 x float> nofpclass(nan inf) %i.djk, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.djr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.djq, <4 x float> nofpclass(nan inf) %i.djl, <4 x float> nofpclass(nan inf) %i.djk)
  %i.djs = fadd fast <4 x float> %i.djr, splat (float 1.000000e+00)
  %i.djt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.djh)
  %i.dju = shl <4 x i32> %i.djt, splat (i32 23)
  %i.djv = add <4 x i32> %i.dju, splat (i32 1065353216)
  %i.djw = bitcast <4 x i32> %i.djv to <4 x float>
  %i.djx = fmul fast <4 x float> %i.djs, %i.djw
  %i.djy = fadd fast <4 x float> %i.djx, splat (float 1.000000e+00)
  %i.djz = fdiv fast <4 x float> splat (float 1.000000e+00), %i.djy
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ah:                                            ; preds = %._crit_edge3492
  %i.dka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.die, <4 x float> splat (float f0x42B0C0A5))
  %i.dkb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dka, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dkc = fmul fast <4 x float> %i.dkb, splat (float f0x3FB8AA3B)
  %i.dkd = fadd fast <4 x float> %i.dkc, splat (float 5.000000e-01) ; 2 uses
  %i.dke = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dkd)
  %i.dkf = sitofp fast <4 x i32> %i.dke to <4 x float> ; 2 uses
  %i.dkg = fcmp fast olt <4 x float> %i.dkd, %i.dkf
  %i.dkh = select <4 x i1> %i.dkg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dki = fsub fast <4 x float> %i.dkf, %i.dkh   ; 2 uses
  %i.dkj = fneg fast <4 x float> %i.dki           ; 2 uses
  %i.dkk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dkj, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dkb)
  %i.dkl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dkj, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.dkk) ; 8 uses
  %i.dkm = fmul fast <4 x float> %i.dkl, %i.dkl
  %i.dkn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dkl, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.dko = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dkn, <4 x float> nofpclass(nan inf) %i.dkl, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.dkp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dko, <4 x float> nofpclass(nan inf) %i.dkl, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.dkq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dkp, <4 x float> nofpclass(nan inf) %i.dkl, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.dkr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dkq, <4 x float> nofpclass(nan inf) %i.dkl, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.dks = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dkr, <4 x float> nofpclass(nan inf) %i.dkm, <4 x float> nofpclass(nan inf) %i.dkl)
  %i.dkt = fadd fast <4 x float> %i.dks, splat (float 1.000000e+00)
  %i.dku = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dki)
  %i.dkv = shl <4 x i32> %i.dku, splat (i32 23)
  %i.dkw = add <4 x i32> %i.dkv, splat (i32 1065353216)
  %i.dkx = bitcast <4 x i32> %i.dkw to <4 x float>
  %i.dky = fmul fast <4 x float> %i.dkt, %i.dkx
  %i.dkz = fadd fast <4 x float> %i.dky, splat (float 1.000000e+00) ; 2 uses
  %i.dla = fcmp fast ole <4 x float> %i.dkz, zeroinitializer
  %i.dlb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dkz, <4 x float> splat (float f0x00800000))
  %i.dlc = bitcast <4 x float> %i.dlb to <4 x i32> ; 2 uses
  %i.dld = lshr <4 x i32> %i.dlc, splat (i32 23)
  %i.dle = and <4 x i32> %i.dlc, splat (i32 -2139095041)
  %i.dlf = or disjoint <4 x i32> %i.dle, splat (i32 1056964608)
  %i.dlg = bitcast <4 x i32> %i.dlf to <4 x float> ; 3 uses
  %i.dlh = add nsw <4 x i32> %i.dld, splat (i32 -127)
  %i.dli = sitofp fast <4 x i32> %i.dlh to <4 x float> ; 2 uses
  %i.dlj = fadd fast <4 x float> %i.dli, splat (float 1.000000e+00)
  %i.dlk = fcmp fast olt <4 x float> %i.dlg, splat (float f0x3F3504F3) ; 2 uses
  %i.dll = select <4 x i1> %i.dlk, <4 x float> %i.dlg, <4 x float> zeroinitializer
  %i.dlm = fadd fast <4 x float> %i.dlg, splat (float -1.000000e+00)
  %i.dln = select fast <4 x i1> %i.dlk, <4 x float> %i.dli, <4 x float> %i.dlj ; 2 uses
  %i.dlo = fadd fast <4 x float> %i.dlm, %i.dll   ; 12 uses
  %i.dlp = fmul fast <4 x float> %i.dlo, %i.dlo   ; 2 uses
  %i.dlq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dlo, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.dlr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dlq, <4 x float> nofpclass(nan inf) %i.dlo, <4 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.dls = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dlr, <4 x float> nofpclass(nan inf) %i.dlo, <4 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.dlt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dls, <4 x float> nofpclass(nan inf) %i.dlo, <4 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.dlu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dlt, <4 x float> nofpclass(nan inf) %i.dlo, <4 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.dlv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dlu, <4 x float> nofpclass(nan inf) %i.dlo, <4 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.dlw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dlv, <4 x float> nofpclass(nan inf) %i.dlo, <4 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.dlx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dlw, <4 x float> nofpclass(nan inf) %i.dlo, <4 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.dly = fmul fast <4 x float> %i.dlp, %i.dlo
  %i.dlz = fmul fast <4 x float> %i.dly, %i.dlx
  %i.dma = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dln, <4 x float> nofpclass(nan inf) splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.dlz)
  %i.dmb = fneg fast <4 x float> %i.dlp
  %i.dmc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dmb, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.dma)
  %i.dmd = fadd fast <4 x float> %i.dmc, %i.dlo
  %i.dme = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dln, <4 x float> nofpclass(nan inf) splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dmd)
  %.neg = fmul fast <4 x float> %i.dme, splat (float -2.000000e+00)
  %i.dmf = select fast <4 x i1> %i.dla, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.dmg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dmf, <4 x float> splat (float f0x42B0C0A5))
  %i.dmh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dmg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dmi = fmul fast <4 x float> %i.dmh, splat (float f0x3FB8AA3B)
  %i.dmj = fadd fast <4 x float> %i.dmi, splat (float 5.000000e-01) ; 2 uses
  %i.dmk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dmj)
  %i.dml = sitofp fast <4 x i32> %i.dmk to <4 x float> ; 2 uses
  %i.dmm = fcmp fast olt <4 x float> %i.dmj, %i.dml
  %i.dmn = select <4 x i1> %i.dmm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dmo = fsub fast <4 x float> %i.dml, %i.dmn   ; 2 uses
  %i.dmp = fneg fast <4 x float> %i.dmo           ; 2 uses
  %i.dmq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dmp, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dmh)
  %i.dmr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dmp, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.dmq) ; 8 uses
  %i.dms = fmul fast <4 x float> %i.dmr, %i.dmr
  %i.dmt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dmr, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.dmu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dmt, <4 x float> nofpclass(nan inf) %i.dmr, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.dmv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dmu, <4 x float> nofpclass(nan inf) %i.dmr, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.dmw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dmv, <4 x float> nofpclass(nan inf) %i.dmr, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.dmx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dmw, <4 x float> nofpclass(nan inf) %i.dmr, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.dmy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dmx, <4 x float> nofpclass(nan inf) %i.dms, <4 x float> nofpclass(nan inf) %i.dmr)
  %i.dmz = fadd fast <4 x float> %i.dmy, splat (float 1.000000e+00)
  %i.dna = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dmo)
  %i.dnb = shl <4 x i32> %i.dna, splat (i32 23)
  %i.dnc = add <4 x i32> %i.dnb, splat (i32 1065353216)
  %i.dnd = bitcast <4 x i32> %i.dnc to <4 x float>
  %i.dne = fmul fast <4 x float> %i.dmz, %i.dnd
  %i.dnf = fadd fast <4 x float> %i.dne, splat (float 1.000000e+00)
  %i.dng = fdiv fast <4 x float> splat (float 2.000000e+00), %i.dnf
  %i.dnh = fadd fast <4 x float> %i.dng, splat (float -1.000000e+00)
  %i.dni = fmul fast <4 x float> %i.dnh, %i.die
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ai:                                            ; preds = %._crit_edge3492
  %i.dnj = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.dnk = load float, ptr %i.dnj, align 4, !tbaa !110
  %i.dnl = insertelement <4 x float> poison, float %i.dnk, i64 0
  %i.dnm = shufflevector <4 x float> %i.dnl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dnn = getelementptr inbounds nuw i8, ptr %i.dnj, i64 4
  %i.dno = load float, ptr %i.dnn, align 4, !tbaa !110
  %i.dnp = insertelement <4 x float> poison, float %i.dno, i64 0
  %i.dnq = shufflevector <4 x float> %i.dnp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dnr = fmul fast <4 x float> %i.dnm, %i.die
  %i.dns = fadd fast <4 x float> %i.dnr, %i.dnq
  %i.dnt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dns, <4 x float> zeroinitializer)
  %i.dnu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dnt, <4 x float> splat (float 1.000000e+00))
  %i.dnv = fmul fast <4 x float> %i.dnu, %i.die
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %._crit_edge3492, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.0.i1538 = phi nsz <4 x float> [ %i.dnv, %bb.ai ], [ %i.dif, %bb.ad ], [ %i.din, %bb.ae ], [ %i.dix, %bb.af ], [ %i.djz, %bb.ag ], [ %i.dni, %bb.ah ], [ %i.die, %._crit_edge3492 ] ; 2 uses
  switch i32 %i.biv, label %bb.ak [
    i32 4, label %.thread2933
    i32 1, label %bb.aj
  ]

.thread2933:                                      ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.dnw = bitcast <4 x float> %.0.i1538 to <4 x i32>
  %i.dnx = lshr <4 x i32> %i.dnw, splat (i32 16)
  %i.dny = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dnx, <4 x i32> poison)
  %i.dnz = bitcast <8 x i16> %i.dny to <2 x i64>
  %i.doa = extractelement <2 x i64> %i.dnz, i64 0
  store i64 %i.doa, ptr %.014523500, align 1, !tbaa !50
  %i.dob = getelementptr inbounds nuw i8, ptr %.014523500, i64 8
  br label %bb.ak

bb.aj:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.doc = bitcast <4 x float> %.0.i1538 to <8 x i16> ; 4 uses
  %i.dod = extractelement <8 x i16> %i.doc, i64 1
  store i16 %i.dod, ptr %.014523500, align 2, !tbaa !350
  %i.doe = extractelement <8 x i16> %i.doc, i64 3
  %i.dof = getelementptr inbounds [2 x i8], ptr %.014523500, i64 %i.bkc
  store i16 %i.doe, ptr %i.dof, align 2, !tbaa !350
  %i.dog = extractelement <8 x i16> %i.doc, i64 5
  %i.doh = getelementptr inbounds [2 x i8], ptr %.014523500, i64 %i.bke
  store i16 %i.dog, ptr %i.doh, align 2, !tbaa !350
  %i.doi = extractelement <8 x i16> %i.doc, i64 7
  %i.doj = getelementptr inbounds [2 x i8], ptr %.014523500, i64 %i.bkg
  store i16 %i.doi, ptr %i.doj, align 2, !tbaa !350
  %i.dok = getelementptr inbounds nuw i8, ptr %.014523500, i64 2
  br label %bb.ak

bb.ak:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread2933, %bb.aj
  %.21454 = phi ptr [ %i.dok, %bb.aj ], [ %.014523500, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.dob, %.thread2933 ]
  %indvars.iv.next4225 = add nuw nsw i64 %indvars.iv4224, 1 ; 2 uses
  %exitcond4228.not = icmp eq i64 %indvars.iv.next4225, %wide.trip.count4227
  br i1 %exitcond4228.not, label %._crit_edge3503, label %bb.u, !llvm.loop !449

._crit_edge3724.split:                            ; preds = %._crit_edge3714, %.lr.ph3723, %._crit_edge3513
  %i.dol = shl nsw i32 %i.bhq, 1
  %i.dom = add nsw i32 %i.dol, %i.bho             ; 2 uses
  %i.don = icmp slt i32 %i.dom, %i.y
  br i1 %i.don, label %.lr.ph3900, label %._crit_edge3901.split

.lr.ph3900:                                       ; preds = %._crit_edge3724.split
  %i.doo = load ptr, ptr %1, align 8, !tbaa !18
  %i.dop = load i32, ptr %i.s, align 4, !tbaa !179
  %i.doq = sext i32 %i.dop to i64
  %i.dor = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dos = load i64, ptr %i.dor, align 8, !tbaa !49
  %factor.op.mul3902 = mul i64 %i.dos, %i.doq
  %i.dot = icmp sgt i32 %i.t, 0
  %i.dou = load ptr, ptr %i.g, align 8            ; 2 uses
  %.not1509 = icmp eq ptr %i.dou, null
  %i.dov = icmp sgt i32 %i.o, 15
  %i.dow = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.dox = icmp ne i32 %i.l, 16
  %i.doy = icmp eq i32 %i.l, 8
  %i.doz = icmp eq i32 %i.l, 4                    ; 2 uses
  %i.dpa = icmp ne i32 %i.l, 1                    ; 3 uses
  %i.dpb = icmp ne i32 %i.l, 8
  %i.dpc = icmp ne i32 %i.l, 4
  %i.dpd = load i32, ptr %i.d, align 4
  br i1 %i.dot, label %.lr.ph3900.split, label %._crit_edge3901.split

.lr.ph3900.split:                                 ; preds = %.lr.ph3900
  %i.dpe = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dpf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dpg = load ptr, ptr %2, align 8, !tbaa !18, !noalias !450
  %i.dph = load i64, ptr %i.dpf, align 8, !tbaa !20, !noalias !450
  %i.dpi = load i64, ptr %i.dpe, align 8, !tbaa !49, !noalias !450
  %factor.op.mul3904 = mul i64 %i.dph, %i.dpi
  %i.dpj = and i32 %i.o, -16
  %13 = add i32 %i.o, -2
  %i.dpk = sext i32 %i.dom to i64
  %wide.trip.count4332 = sext i32 %i.y to i64
  %wide.trip.count4327 = zext nneg i32 %i.t to i64
  br label %.lr.ph3890

.lr.ph3713:                                       ; preds = %.lr.ph3723.split, %._crit_edge3714
  %indvars.iv4279 = phi i64 [ 0, %.lr.ph3723.split ], [ %indvars.iv.next4280, %._crit_edge3714 ] ; 2 uses
  %i.dpl = shl nuw nsw i64 %indvars.iv4279, 1
  %i.dpm = add nsw i64 %i.dpl, %i.biq             ; 4 uses
  %i.dpn = mul i64 %i.bia, %i.dpm
  %i.dpo = getelementptr inbounds nuw i8, ptr %i.bhw, i64 %i.dpn
  %i.dpp = or disjoint i64 %i.dpm, 1
  %i.dpq = mul i64 %i.bia, %i.dpp
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.bhw, i64 %i.dpq
  %i.dps = getelementptr inbounds [4 x i8], ptr %i.bic, i64 %i.dpm
  %i.dpt = trunc nsw i64 %i.dpm to i32            ; 3 uses
  %i.dpu = sdiv i32 %i.dpt, 16
  %i.dpv = srem i32 %i.dpt, 16
  %.lhs.trunc2955 = trunc nsw i32 %i.dpv to i8
  %i.dpw = sdiv i8 %.lhs.trunc2955, 8
  %.sext2956 = sext i8 %i.dpw to i32
  %i.dpx = insertelement <2 x i32> poison, i32 %i.dpt, i64 0
  %i.dpy = shufflevector <2 x i32> %i.dpx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dpz = srem <2 x i32> %i.dpy, <i32 8, i32 4>  ; 2 uses
  %i.dqa = bitcast <2 x i32> %i.dpz to <8 x i8>
  %.lhs.trunc2957 = extractelement <8 x i8> %i.dqa, i64 0
  %i.dqb = sdiv i8 %.lhs.trunc2957, 4
  %.sext2958 = sext i8 %i.dqb to i32
  %i.dqc = extractelement <2 x i32> %i.dpz, i64 1
  %i.dqd = ashr exact i32 %i.dqc, 1
  %i.dqe = add nsw i32 %i.dqd, %i.dpu
  %i.dqf = add nsw i32 %i.dqe, %.sext2956
  %i.dqg = add nsw i32 %i.dqf, %.sext2958
  %i.dqh = sext i32 %i.dqg to i64
  %.reass3727 = mul i64 %factor.op.mul3726, %i.dqh
  %i.dqi = getelementptr inbounds nuw i8, ptr %i.bim, i64 %.reass3727 ; 2 uses
  %i.dqj = load i32, ptr %i.c, align 4            ; 2 uses
  %factor.op.mul3715 = mul i32 %i.bhs, %i.dqj     ; 3 uses
  %i.dqk = load i32, ptr %i.a, align 4            ; 6 uses
  %i.dql = icmp sgt i32 %i.dqk, 0                 ; 2 uses
  %i.dqm = add i32 %i.dqk, -1                     ; 2 uses
  %i.dqn = zext i32 %i.dqm to i64                 ; 2 uses
  %i.dqo = shl nuw nsw i64 %i.dqn, 3
  %i.dqp = shl nuw nsw i64 %i.dqn, 2
  %i.dqq = sext i32 %i.dqj to i64                 ; 2 uses
  %xtraiter4900 = and i32 %i.dqk, 1
  %i.dqr = icmp eq i32 %i.dqm, 0
  %unroll_iter4904 = and i32 %i.dqk, 2147483646
  %lcmp.mod4901.not = icmp eq i32 %xtraiter4900, 0
  %lcmp.mod4903 = trunc i32 %i.dqk to i1
  br label %bb.al

._crit_edge3714:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539
  %indvars.iv.next4280 = add nuw nsw i64 %indvars.iv4279, 1 ; 2 uses
  %exitcond4283.not = icmp eq i64 %indvars.iv.next4280, %wide.trip.count4282
  br i1 %exitcond4283.not, label %._crit_edge3724.split, label %.lr.ph3713, !llvm.loop !453

bb.al:                                            ; preds = %.lr.ph3713, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539
  %indvars.iv4274 = phi i64 [ 0, %.lr.ph3713 ], [ %indvars.iv.next4275, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539 ] ; 6 uses
  %.014073710 = phi ptr [ %i.dpr, %.lr.ph3713 ], [ %i.ese, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539 ] ; 2 uses
  %.014083709 = phi ptr [ %i.dpo, %.lr.ph3713 ], [ %i.esd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539 ] ; 2 uses
  br i1 %.not1510, label %_ZN4ncnn3MatD2Ev.exit1513, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dqs = load <2 x float>, ptr %i.dps, align 4, !tbaa !110
  br label %_ZN4ncnn3MatD2Ev.exit1513

_ZN4ncnn3MatD2Ev.exit1513:                        ; preds = %bb.am, %bb.al
  %i.dqt = phi <2 x float> [ %i.dqs, %bb.am ], [ zeroinitializer, %bb.al ]
  br i1 %i.bid, label %.lr.ph3565, label %._crit_edge3566

.lr.ph3565:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit1513
  %i.dqu = load ptr, ptr %0, align 8, !tbaa !18
  %i.dqv = load i32, ptr %i.p, align 4, !tbaa !179
  %i.dqw = sext i32 %i.dqv to i64
  %i.dqx = load i64, ptr %i.bie, align 8, !tbaa !49
  %factor.op.mul3571 = mul i64 %i.dqx, %i.dqw
  %i.dqy = trunc nuw nsw i64 %indvars.iv4274 to i32
  %.reass3716 = mul i32 %factor.op.mul3715, %i.dqy
  %i.dqz = sext i32 %.reass3716 to i64
  %invariant.gep3573 = getelementptr [2 x i8], ptr %i.dqu, i64 %i.dqz
  %i.dra = load i32, ptr %i.a, align 4            ; 7 uses
  %i.drb = icmp sgt i32 %i.dra, 0                 ; 3 uses
  %i.drc = load i32, ptr %i.b, align 4            ; 4 uses
  %i.drd = shl nsw i32 %i.drc, 4
  %i.dre = sext i32 %i.drd to i64
  %i.drf = load i32, ptr %i.e, align 4            ; 15 uses
  %i.drg = sext i32 %i.drf to i64                 ; 3 uses
  %i.drh = shl nsw i32 %i.drc, 3
  %i.dri = sext i32 %i.drh to i64                 ; 2 uses
  %i.drj = shl nsw i32 %i.drf, 1
  %i.drk = sext i32 %i.drj to i64                 ; 2 uses
  %i.drl = mul nsw i32 %i.drf, 3
  %i.drm = sext i32 %i.drl to i64                 ; 2 uses
  %i.drn = shl nsw i32 %i.drc, 2
  %i.dro = sext i32 %i.drn to i64                 ; 4 uses
  %i.drp = icmp slt i32 %i.dra, 1
  %i.drq = mul nsw i32 %i.drf, 15
  %i.drr = sext i32 %i.drq to i64
  %i.drs = mul nsw i32 %i.drf, 14
  %i.drt = sext i32 %i.drs to i64
  %i.dru = mul nsw i32 %i.drf, 13
  %i.drv = sext i32 %i.dru to i64
  %i.drw = mul nsw i32 %i.drf, 12
  %i.drx = sext i32 %i.drw to i64
  %i.dry = mul nsw i32 %i.drf, 11
  %i.drz = sext i32 %i.dry to i64
  %i.dsa = mul nsw i32 %i.drf, 10
  %i.dsb = sext i32 %i.dsa to i64
  %i.dsc = mul nsw i32 %i.drf, 9
  %i.dsd = sext i32 %i.dsc to i64
  %i.dse = shl nsw i32 %i.drf, 3
  %i.dsf = sext i32 %i.dse to i64
  %i.dsg = mul nsw i32 %i.drf, 7
  %i.dsh = sext i32 %i.dsg to i64
  %i.dsi = mul nsw i32 %i.drf, 6
  %i.dsj = sext i32 %i.dsi to i64
  %i.dsk = mul nsw i32 %i.drf, 5
  %i.dsl = sext i32 %i.dsk to i64
  %i.dsm = shl nsw i32 %i.drf, 2
  %i.dsn = sext i32 %i.dsm to i64
  %i.dso = sext i32 %i.drc to i64
  %i.dsp = add i32 %i.dra, -1
  %i.dsq = zext i32 %i.dsp to i64
  %i.dsr = shl nuw nsw i64 %i.dsq, 6              ; 4 uses
  %brmerge = select i1 %i.bii, i1 true, i1 %i.drp
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph3565, %.loopexit2991
  %.013663564 = phi i32 [ 0, %.lr.ph3565 ], [ %i.eai, %.loopexit2991 ] ; 2 uses
  %.013713563 = phi ptr [ %i.dqi, %.lr.ph3565 ], [ %.81379, %.loopexit2991 ] ; 12 uses
  %.028883562 = phi <16 x float> [ zeroinitializer, %.lr.ph3565 ], [ %.82896, %.loopexit2991 ] ; 8 uses
  %.028973561 = phi <16 x float> [ zeroinitializer, %.lr.ph3565 ], [ %.82905, %.loopexit2991 ] ; 8 uses
  %i.dss = sdiv i32 %.013663564, %i.bhs
  %i.dst = sext i32 %i.dss to i64
  %.reass3572 = mul i64 %factor.op.mul3571, %i.dst
  %gep3574 = getelementptr i8, ptr %invariant.gep3573, i64 %.reass3572 ; 8 uses
  br i1 %i.bif, label %.preheader2994, label %.loopexit2995

.preheader2994:                                   ; preds = %bb.an
  br i1 %i.drb, label %.lr.ph3521, label %.loopexit2991

.lr.ph3521:                                       ; preds = %.preheader2994, %.lr.ph3521
  %.013583520 = phi i32 [ %i.dua, %.lr.ph3521 ], [ 0, %.preheader2994 ]
  %.013593519 = phi ptr [ %i.dty, %.lr.ph3521 ], [ %gep3574, %.preheader2994 ] ; 2 uses
  %.113723518 = phi ptr [ %i.dtz, %.lr.ph3521 ], [ %.013713563, %.preheader2994 ] ; 3 uses
  %.128893517 = phi <16 x float> [ %i.dtw, %.lr.ph3521 ], [ %.028883562, %.preheader2994 ]
  %.128983516 = phi <16 x float> [ %i.dtx, %.lr.ph3521 ], [ %.028973561, %.preheader2994 ]
  %i.dsu = load <16 x i16>, ptr %.013593519, align 32, !tbaa !50 ; 2 uses
  %i.dsv = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.dsu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.dsw = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.dsu, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dsx = shufflevector <16 x i16> %i.dsv, <16 x i16> %i.dsw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dsy = shufflevector <16 x i16> %i.dsv, <16 x i16> %i.dsw, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dsz = bitcast <16 x i16> %i.dsx to <8 x i32>
  %i.dta = bitcast <16 x i16> %i.dsy to <8 x i32>
  %i.dtb = shufflevector <8 x i32> %i.dsz, <8 x i32> %i.dta, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dtc = bitcast <16 x i32> %i.dtb to <16 x float> ; 2 uses
  %i.dtd = load <16 x i16>, ptr %.113723518, align 32, !tbaa !50 ; 2 uses
  %i.dte = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.dtd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.dtf = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.dtd, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dtg = shufflevector <16 x i16> %i.dte, <16 x i16> %i.dtf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dth = shufflevector <16 x i16> %i.dte, <16 x i16> %i.dtf, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dti = bitcast <16 x i16> %i.dtg to <8 x i32>
  %i.dtj = bitcast <16 x i16> %i.dth to <8 x i32>
  %i.dtk = shufflevector <8 x i32> %i.dti, <8 x i32> %i.dtj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dtl = bitcast <16 x i32> %i.dtk to <16 x float>
  %i.dtm = getelementptr inbounds nuw i8, ptr %.113723518, i64 32
  %i.dtn = load <16 x i16>, ptr %i.dtm, align 32, !tbaa !50 ; 2 uses
  %i.dto = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.dtn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.dtp = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.dtn, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dtq = shufflevector <16 x i16> %i.dto, <16 x i16> %i.dtp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dtr = shufflevector <16 x i16> %i.dto, <16 x i16> %i.dtp, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dts = bitcast <16 x i16> %i.dtq to <8 x i32>
  %i.dtt = bitcast <16 x i16> %i.dtr to <8 x i32>
  %i.dtu = shufflevector <8 x i32> %i.dts, <8 x i32> %i.dtt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dtv = bitcast <16 x i32> %i.dtu to <16 x float>
  %i.dtw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dtc, <16 x float> nofpclass(nan inf) %i.dtl, <16 x float> nofpclass(nan inf) %.128893517) ; 2 uses
  %i.dtx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dtc, <16 x float> nofpclass(nan inf) %i.dtv, <16 x float> nofpclass(nan inf) %.128983516) ; 2 uses
  %i.dty = getelementptr inbounds [2 x i8], ptr %.013593519, i64 %i.dre
  %i.dtz = getelementptr inbounds nuw i8, ptr %.113723518, i64 64
  %i.dua = add nuw nsw i32 %.013583520, 1         ; 2 uses
  %exitcond4236.not = icmp eq i32 %i.dua, %i.dra
  br i1 %exitcond4236.not, label %.loopexit2995.loopexit, label %.lr.ph3521, !llvm.loop !454

.loopexit2995.loopexit:                           ; preds = %.lr.ph3521
  %scevgep4234.a = getelementptr i8, ptr %.013713563, i64 64
  %scevgep4235 = getelementptr i8, ptr %scevgep4234.a, i64 %i.dsr
  br label %.loopexit2991

.loopexit2995:                                    ; preds = %bb.an
  br i1 %i.big, label %bb.ao, label %.loopexit2993

bb.ao:                                            ; preds = %.loopexit2995
  br i1 %i.drb, label %.lr.ph3533.preheader, label %.loopexit2991

.lr.ph3533.preheader:                             ; preds = %bb.ao
  %i.dub = getelementptr inbounds [2 x i8], ptr %gep3574, i64 %i.drg
  br label %.lr.ph3533

.lr.ph3533:                                       ; preds = %.lr.ph3533.preheader, %.lr.ph3533
end_hunk_13
begin_hunk_14_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
.lr.ph3645:                                       ; preds = %._crit_edge3612
  %i.egf = load ptr, ptr %0, align 8, !tbaa !18
  %i.egg = load i32, ptr %i.p, align 4, !tbaa !179
  %i.egh = sext i32 %i.egg to i64
  %i.egi = load i64, ptr %i.bie, align 8, !tbaa !49
  %factor.op.mul3651 = mul i64 %i.egi, %i.egh
  %i.egj = trunc nuw nsw i64 %indvars.iv4274 to i32
  %.reass3720 = mul i32 %factor.op.mul3715, %i.egj
  %i.egk = sext i32 %.reass3720 to i64
  %invariant.gep3653 = getelementptr [2 x i8], ptr %i.egf, i64 %i.egk
  %i.egl = load i32, ptr %i.a, align 4            ; 7 uses
  %i.egm = icmp sgt i32 %i.egl, 0
  %i.egn = load i32, ptr %i.b, align 4            ; 2 uses
  %i.ego = shl nsw i32 %i.egn, 2
  %i.egp = sext i32 %i.ego to i64                 ; 2 uses
  %i.egq = icmp slt i32 %i.egl, 1
  %i.egr = load i32, ptr %i.e, align 4            ; 3 uses
  %i.egs = mul nsw i32 %i.egr, 3
  %i.egt = sext i32 %i.egs to i64
  %i.egu = shl nsw i32 %i.egr, 1
  %i.egv = sext i32 %i.egu to i64
  %i.egw = sext i32 %i.egr to i64
  %i.egx = sext i32 %i.egn to i64
  %i.egy = add i32 %i.egl, -1                     ; 2 uses
  %i.egz = zext i32 %i.egy to i64
  %i.eha = shl nuw nsw i64 %i.egz, 4              ; 2 uses
  %brmerge3913 = select i1 %i.bii, i1 true, i1 %i.egq
  %xtraiter4892 = and i32 %i.egl, 1
  %i.ehb = icmp eq i32 %i.egy, 0
  %unroll_iter4897 = and i32 %i.egl, 2147483646
  %lcmp.mod4893.not = icmp eq i32 %xtraiter4892, 0
  %lcmp.mod4896 = trunc i32 %i.egl to i1
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph3645, %.loopexit2982
  %.213683643 = phi i32 [ %.11367.lcssa, %.lr.ph3645 ], [ %i.ekr, %.loopexit2982 ] ; 2 uses
  %.1613873642 = phi ptr [ %.91380.lcssa, %.lr.ph3645 ], [ %.201391, %.loopexit2982 ] ; 7 uses
  %.029203641 = phi <4 x float> [ zeroinitializer, %.lr.ph3645 ], [ %.42924, %.loopexit2982 ] ; 5 uses
  %.029253640 = phi <4 x float> [ zeroinitializer, %.lr.ph3645 ], [ %.42929, %.loopexit2982 ] ; 5 uses
  %i.ehc = sdiv i32 %.213683643, %i.bhs
  %i.ehd = sext i32 %i.ehc to i64
  %.reass3652 = mul i64 %factor.op.mul3651, %i.ehd
  %gep3654 = getelementptr i8, ptr %invariant.gep3653, i64 %.reass3652 ; 3 uses
  br i1 %i.bih, label %.preheader2983, label %.loopexit2984

.preheader2983:                                   ; preds = %bb.as
  br i1 %i.egm, label %.lr.ph3626.preheader, label %.loopexit2982

.lr.ph3626.preheader:                             ; preds = %.preheader2983
  br i1 %i.ehb, label %.lr.ph3626.epil.preheader, label %.lr.ph3626

.lr.ph3626:                                       ; preds = %.lr.ph3626.preheader, %.lr.ph3626
  %.012933624 = phi ptr [ %i.eiq, %.lr.ph3626 ], [ %gep3654, %.lr.ph3626.preheader ] ; 2 uses
  %.1713883623 = phi ptr [ %i.eir, %.lr.ph3626 ], [ %.1613873642, %.lr.ph3626.preheader ] ; 5 uses
  %.129213622 = phi <4 x float> [ %i.eio, %.lr.ph3626 ], [ %.029203641, %.lr.ph3626.preheader ]
  %.129263621 = phi <4 x float> [ %i.eip, %.lr.ph3626 ], [ %.029253640, %.lr.ph3626.preheader ]
  %niter4898 = phi i32 [ %niter4898.next.1, %.lr.ph3626 ], [ 0, %.lr.ph3626.preheader ]
  %i.ehe = load i64, ptr %.012933624, align 1, !tbaa !50
  %i.ehf = insertelement <2 x i64> poison, i64 %i.ehe, i64 0
  %i.ehg = bitcast <2 x i64> %i.ehf to <8 x i16>
  %i.ehh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ehg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ehi = bitcast <8 x i16> %i.ehh to <4 x float> ; 2 uses
  %i.ehj = load i64, ptr %.1713883623, align 1, !tbaa !50
  %i.ehk = insertelement <2 x i64> poison, i64 %i.ehj, i64 0
  %i.ehl = bitcast <2 x i64> %i.ehk to <8 x i16>
  %i.ehm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ehl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ehn = bitcast <8 x i16> %i.ehm to <4 x float>
  %i.eho = getelementptr inbounds nuw i8, ptr %.1713883623, i64 8
  %i.ehp = load i64, ptr %i.eho, align 1, !tbaa !50
  %i.ehq = insertelement <2 x i64> poison, i64 %i.ehp, i64 0
  %i.ehr = bitcast <2 x i64> %i.ehq to <8 x i16>
  %i.ehs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ehr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eht = bitcast <8 x i16> %i.ehs to <4 x float>
  %i.ehu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehi, <4 x float> nofpclass(nan inf) %i.ehn, <4 x float> nofpclass(nan inf) %.129213622)
  %i.ehv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehi, <4 x float> nofpclass(nan inf) %i.eht, <4 x float> nofpclass(nan inf) %.129263621)
  %i.ehw = getelementptr inbounds [2 x i8], ptr %.012933624, i64 %i.egp ; 2 uses
  %i.ehx = getelementptr inbounds nuw i8, ptr %.1713883623, i64 16
  %i.ehy = load i64, ptr %i.ehw, align 1, !tbaa !50
  %i.ehz = insertelement <2 x i64> poison, i64 %i.ehy, i64 0
  %i.eia = bitcast <2 x i64> %i.ehz to <8 x i16>
  %i.eib = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eia, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eic = bitcast <8 x i16> %i.eib to <4 x float> ; 2 uses
  %i.eid = load i64, ptr %i.ehx, align 1, !tbaa !50
  %i.eie = insertelement <2 x i64> poison, i64 %i.eid, i64 0
  %i.eif = bitcast <2 x i64> %i.eie to <8 x i16>
  %i.eig = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eif, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eih = bitcast <8 x i16> %i.eig to <4 x float>
  %i.eii = getelementptr inbounds nuw i8, ptr %.1713883623, i64 24
  %i.eij = load i64, ptr %i.eii, align 1, !tbaa !50
  %i.eik = insertelement <2 x i64> poison, i64 %i.eij, i64 0
  %i.eil = bitcast <2 x i64> %i.eik to <8 x i16>
  %i.eim = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eil, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ein = bitcast <8 x i16> %i.eim to <4 x float>
  %i.eio = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eic, <4 x float> nofpclass(nan inf) %i.eih, <4 x float> nofpclass(nan inf) %i.ehu) ; 3 uses
  %i.eip = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eic, <4 x float> nofpclass(nan inf) %i.ein, <4 x float> nofpclass(nan inf) %i.ehv) ; 3 uses
  %i.eiq = getelementptr inbounds [2 x i8], ptr %i.ehw, i64 %i.egp ; 2 uses
  %i.eir = getelementptr inbounds nuw i8, ptr %.1713883623, i64 32 ; 2 uses
  %niter4898.next.1 = add nuw nsw i32 %niter4898, 2 ; 2 uses
  %niter4898.ncmp.1 = icmp eq i32 %niter4898.next.1, %unroll_iter4897
  br i1 %niter4898.ncmp.1, label %.loopexit2984.loopexit.unr-lcssa, label %.lr.ph3626, !llvm.loop !463

.loopexit2984.loopexit.unr-lcssa:                 ; preds = %.lr.ph3626
  br i1 %lcmp.mod4893.not, label %.loopexit2984.loopexit, label %.lr.ph3626.epil.preheader

.lr.ph3626.epil.preheader:                        ; preds = %.loopexit2984.loopexit.unr-lcssa, %.lr.ph3626.preheader
  %.012933624.epil.init = phi ptr [ %gep3654, %.lr.ph3626.preheader ], [ %i.eiq, %.loopexit2984.loopexit.unr-lcssa ]
  %.1713883623.epil.init = phi ptr [ %.1613873642, %.lr.ph3626.preheader ], [ %i.eir, %.loopexit2984.loopexit.unr-lcssa ] ; 2 uses
  %.129213622.epil.init = phi <4 x float> [ %.029203641, %.lr.ph3626.preheader ], [ %i.eio, %.loopexit2984.loopexit.unr-lcssa ]
  %.129263621.epil.init = phi <4 x float> [ %.029253640, %.lr.ph3626.preheader ], [ %i.eip, %.loopexit2984.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4896)
  %i.eis = load i64, ptr %.012933624.epil.init, align 1, !tbaa !50
  %i.eit = insertelement <2 x i64> poison, i64 %i.eis, i64 0
  %i.eiu = bitcast <2 x i64> %i.eit to <8 x i16>
  %i.eiv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eiu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eiw = bitcast <8 x i16> %i.eiv to <4 x float> ; 2 uses
  %i.eix = load i64, ptr %.1713883623.epil.init, align 1, !tbaa !50
  %i.eiy = insertelement <2 x i64> poison, i64 %i.eix, i64 0
  %i.eiz = bitcast <2 x i64> %i.eiy to <8 x i16>
  %i.eja = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eiz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ejb = bitcast <8 x i16> %i.eja to <4 x float>
  %i.ejc = getelementptr inbounds nuw i8, ptr %.1713883623.epil.init, i64 8
  %i.ejd = load i64, ptr %i.ejc, align 1, !tbaa !50
  %i.eje = insertelement <2 x i64> poison, i64 %i.ejd, i64 0
  %i.ejf = bitcast <2 x i64> %i.eje to <8 x i16>
  %i.ejg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ejf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ejh = bitcast <8 x i16> %i.ejg to <4 x float>
  %i.eji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eiw, <4 x float> nofpclass(nan inf) %i.ejb, <4 x float> nofpclass(nan inf) %.129213622.epil.init)
  %i.ejj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eiw, <4 x float> nofpclass(nan inf) %i.ejh, <4 x float> nofpclass(nan inf) %.129263621.epil.init)
  br label %.loopexit2984.loopexit

.loopexit2984.loopexit:                           ; preds = %.loopexit2984.loopexit.unr-lcssa, %.lr.ph3626.epil.preheader
  %.lcssa4797.a = phi <4 x float> [ %i.eio, %.loopexit2984.loopexit.unr-lcssa ], [ %i.eji, %.lr.ph3626.epil.preheader ]
  %.lcssa4796 = phi <4 x float> [ %i.eip, %.loopexit2984.loopexit.unr-lcssa ], [ %i.ejj, %.lr.ph3626.epil.preheader ]
  %scevgep4255.a = getelementptr i8, ptr %.1613873642, i64 16
  %scevgep4256 = getelementptr i8, ptr %scevgep4255.a, i64 %i.eha
  br label %.loopexit2982

.loopexit2984:                                    ; preds = %bb.as
  br i1 %brmerge3913, label %.loopexit2982, label %.lr.ph3636

.lr.ph3636:                                       ; preds = %.loopexit2984, %.lr.ph3636
  %.012913635 = phi i32 [ %i.ekq, %.lr.ph3636 ], [ 0, %.loopexit2984 ]
  %.212953634 = phi ptr [ %i.eko, %.lr.ph3636 ], [ %gep3654, %.loopexit2984 ] ; 5 uses
  %.1913903633 = phi ptr [ %i.ekp, %.lr.ph3636 ], [ %.1613873642, %.loopexit2984 ] ; 3 uses
  %.329233632 = phi <4 x float> [ %i.ekm, %.lr.ph3636 ], [ %.029203641, %.loopexit2984 ]
  %.329283631 = phi <4 x float> [ %i.ekn, %.lr.ph3636 ], [ %.029253640, %.loopexit2984 ]
  %i.ejk = getelementptr inbounds [2 x i8], ptr %.212953634, i64 %i.egt
  %i.ejl = load i16, ptr %i.ejk, align 2, !tbaa !350
  %i.ejm = getelementptr inbounds [2 x i8], ptr %.212953634, i64 %i.egv
  %i.ejn = load i16, ptr %i.ejm, align 2, !tbaa !350
  %i.ejo = getelementptr inbounds [2 x i8], ptr %.212953634, i64 %i.egw
  %i.ejp = load i16, ptr %i.ejo, align 2, !tbaa !350
  %i.ejq = load i16, ptr %.212953634, align 2, !tbaa !350
  %i.ejr = zext i16 %i.ejl to i32
  %i.ejs = zext i16 %i.ejn to i32
  %i.ejt = zext i16 %i.ejp to i32
  %i.eju = zext i16 %i.ejq to i32
  %i.ejv = insertelement <4 x i32> poison, i32 %i.eju, i64 0
  %i.ejw = insertelement <4 x i32> %i.ejv, i32 %i.ejt, i64 1
  %i.ejx = insertelement <4 x i32> %i.ejw, i32 %i.ejs, i64 2
  %i.ejy = insertelement <4 x i32> %i.ejx, i32 %i.ejr, i64 3
  %i.ejz = shl nuw <4 x i32> %i.ejy, splat (i32 16)
  %i.eka = bitcast <4 x i32> %i.ejz to <4 x float> ; 2 uses
  %i.ekb = load i64, ptr %.1913903633, align 1, !tbaa !50
  %i.ekc = insertelement <2 x i64> poison, i64 %i.ekb, i64 0
  %i.ekd = bitcast <2 x i64> %i.ekc to <8 x i16>
  %i.eke = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ekd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ekf = bitcast <8 x i16> %i.eke to <4 x float>
  %i.ekg = getelementptr inbounds nuw i8, ptr %.1913903633, i64 8
  %i.ekh = load i64, ptr %i.ekg, align 1, !tbaa !50
  %i.eki = insertelement <2 x i64> poison, i64 %i.ekh, i64 0
  %i.ekj = bitcast <2 x i64> %i.eki to <8 x i16>
  %i.ekk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ekj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ekl = bitcast <8 x i16> %i.ekk to <4 x float>
  %i.ekm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eka, <4 x float> nofpclass(nan inf) %i.ekf, <4 x float> nofpclass(nan inf) %.329233632) ; 2 uses
  %i.ekn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eka, <4 x float> nofpclass(nan inf) %i.ekl, <4 x float> nofpclass(nan inf) %.329283631) ; 2 uses
  %i.eko = getelementptr inbounds [2 x i8], ptr %.212953634, i64 %i.egx
  %i.ekp = getelementptr inbounds nuw i8, ptr %.1913903633, i64 16
  %i.ekq = add nuw nsw i32 %.012913635, 1         ; 2 uses
  %exitcond4260.not = icmp eq i32 %i.ekq, %i.egl
  br i1 %exitcond4260.not, label %.loopexit2982.loopexit, label %.lr.ph3636, !llvm.loop !464

.loopexit2982.loopexit:                           ; preds = %.lr.ph3636
  %scevgep4258.a = getelementptr i8, ptr %.1613873642, i64 16
  %scevgep4259 = getelementptr i8, ptr %scevgep4258.a, i64 %i.eha
  br label %.loopexit2982

.loopexit2982:                                    ; preds = %.preheader2983, %.loopexit2984.loopexit, %.loopexit2982.loopexit, %.loopexit2984
  %.42929 = phi nsz <4 x float> [ %.029253640, %.loopexit2984 ], [ %i.ekn, %.loopexit2982.loopexit ], [ %.lcssa4796, %.loopexit2984.loopexit ], [ %.029253640, %.preheader2983 ] ; 2 uses
  %.42924 = phi nsz <4 x float> [ %.029203641, %.loopexit2984 ], [ %i.ekm, %.loopexit2982.loopexit ], [ %.lcssa4797.a, %.loopexit2984.loopexit ], [ %.029203641, %.preheader2983 ] ; 2 uses
  %.201391 = phi ptr [ %.1613873642, %.loopexit2984 ], [ %scevgep4259, %.loopexit2982.loopexit ], [ %scevgep4256, %.loopexit2984.loopexit ], [ %.1613873642, %.preheader2983 ] ; 2 uses
  %i.ekr = add nuw nsw i32 %.213683643, 4         ; 3 uses
  %i.eks = or disjoint i32 %i.ekr, 3
  %i.ekt = icmp slt i32 %i.eks, %i.bhu
  br i1 %i.ekt, label %bb.as, label %._crit_edge3646, !llvm.loop !465

._crit_edge3646:                                  ; preds = %.loopexit2982, %._crit_edge3612
  %.02925.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3612 ], [ %.42929, %.loopexit2982 ] ; 4 uses
  %.02920.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3612 ], [ %.42924, %.loopexit2982 ] ; 4 uses
  %.161387.lcssa = phi ptr [ %.91380.lcssa, %._crit_edge3612 ], [ %.201391, %.loopexit2982 ] ; 3 uses
  %.21368.lcssa = phi i32 [ %.11367.lcssa, %._crit_edge3612 ], [ %i.ekr, %.loopexit2982 ] ; 5 uses
  %i.eku = shufflevector <4 x float> %i.eaq, <4 x float> %i.eaw, <2 x i32> <i32 3, i32 7>
  %i.ekv = shufflevector <4 x float> %i.eaq, <4 x float> %i.eaw, <2 x i32> <i32 1, i32 5>
  %i.ekw = fadd fast <2 x float> %i.eku, %i.ekv
  %i.ekx = fadd fast <2 x float> %i.ekw, %i.dqt
  %i.eky = shufflevector <4 x float> %i.eaq, <4 x float> %i.eaw, <2 x i32> <i32 2, i32 6>
  %i.ekz = shufflevector <4 x float> %i.eaq, <4 x float> %i.eaw, <2 x i32> <i32 0, i32 4>
  %i.ela = fadd fast <2 x float> %i.eky, %i.ekz
  %i.elb = fadd fast <2 x float> %i.ekx, %i.ela
  %i.elc = shufflevector <4 x float> %i.efz, <4 x float> %i.egc, <2 x i32> <i32 3, i32 7>
  %i.eld = shufflevector <4 x float> %i.efz, <4 x float> %i.egc, <2 x i32> <i32 1, i32 5>
  %i.ele = fadd fast <2 x float> %i.elc, %i.eld
  %i.elf = fadd fast <2 x float> %i.elb, %i.ele
  %i.elg = shufflevector <4 x float> %i.efz, <4 x float> %i.egc, <2 x i32> <i32 2, i32 6>
  %i.elh = shufflevector <4 x float> %i.efz, <4 x float> %i.egc, <2 x i32> <i32 0, i32 4>
  %i.eli = fadd fast <2 x float> %i.elg, %i.elh
  %i.elj = fadd fast <2 x float> %i.elf, %i.eli
  %i.elk = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 3, i32 7>
  %i.ell = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 1, i32 5>
  %i.elm = fadd fast <2 x float> %i.elk, %i.ell
  %i.eln = fadd fast <2 x float> %i.elj, %i.elm
  %i.elo = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 2, i32 6>
  %i.elp = shufflevector <4 x float> %.02920.lcssa, <4 x float> %.02925.lcssa, <2 x i32> <i32 0, i32 4>
  %i.elq = fadd fast <2 x float> %i.elo, %i.elp
  %i.elr = fadd fast <2 x float> %i.eln, %i.elq   ; 3 uses
  %i.els = or disjoint i32 %.21368.lcssa, 1
  %i.elt = icmp slt i32 %i.els, %i.bhu
  br i1 %i.elt, label %.lr.ph3671, label %.preheader2996

.lr.ph3671:                                       ; preds = %._crit_edge3646
  %i.elu = load ptr, ptr %0, align 8, !tbaa !18
  %i.elv = load i32, ptr %i.p, align 4, !tbaa !179
  %i.elw = sext i32 %i.elv to i64
  %i.elx = load i64, ptr %i.bie, align 8, !tbaa !49
  %factor.op.mul3676 = mul i64 %i.elx, %i.elw
  %i.ely = mul nsw i64 %indvars.iv4274, %i.dqq
  %invariant.gep3678 = getelementptr [2 x i8], ptr %i.elu, i64 %i.ely
  %i.elz = load i32, ptr %i.e, align 4
  %i.ema = sext i32 %i.elz to i64
  %i.emb = load i32, ptr %i.b, align 4
  %i.emc = sext i32 %i.emb to i64
  br i1 %i.dql, label %.lr.ph3661.us.preheader, label %.lr.ph3671.split.preheader

.lr.ph3671.split.preheader:                       ; preds = %.lr.ph3671
  %i.emd = add i32 %.21368.lcssa, 2
  %i.eme = sub i32 %11, %.21368.lcssa
  %i.emf = and i32 %i.eme, -2
  %i.emg = add i32 %i.emd, %i.emf
  br label %.preheader2996

.lr.ph3661.us.preheader:                          ; preds = %.lr.ph3671
  %i.emh = zext i32 %.21368.lcssa to i64
  br label %.lr.ph3661.us

.lr.ph3661.us:                                    ; preds = %.lr.ph3661.us.preheader, %._crit_edge3662.us
  %indvars.iv4265 = phi i64 [ %i.emh, %.lr.ph3661.us.preheader ], [ %indvars.iv.next4266, %._crit_edge3662.us ] ; 2 uses
  %.2113923668.us = phi ptr [ %.161387.lcssa, %.lr.ph3661.us.preheader ], [ %scevgep4263, %._crit_edge3662.us ] ; 2 uses
  %i.emi = phi <2 x float> [ %i.elr, %.lr.ph3661.us.preheader ], [ %i.enj, %._crit_edge3662.us ]
  %.reass3677.us = mul i64 %factor.op.mul3676, %indvars.iv4265
  %gep3679.us = getelementptr i8, ptr %invariant.gep3678, i64 %.reass3677.us
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph3661.us, %bb.at
  %.012893659.us = phi i32 [ 0, %.lr.ph3661.us ], [ %i.enm, %bb.at ]
  %.012903658.us = phi ptr [ %gep3679.us, %.lr.ph3661.us ], [ %i.enk, %bb.at ] ; 3 uses
  %.2213933657.us = phi ptr [ %.2113923668.us, %.lr.ph3661.us ], [ %i.enl, %bb.at ] ; 3 uses
  %i.emj = phi <2 x float> [ %i.emi, %.lr.ph3661.us ], [ %i.enj, %bb.at ]
  %i.emk = load i16, ptr %.012903658.us, align 2, !tbaa !350
  %i.eml = zext i16 %i.emk to i32
  %i.emm = shl nuw i32 %i.eml, 16
  %i.emn = getelementptr inbounds [2 x i8], ptr %.012903658.us, i64 %i.ema
  %i.emo = load i16, ptr %i.emn, align 2, !tbaa !350
  %i.emp = zext i16 %i.emo to i32
  %i.emq = shl nuw i32 %i.emp, 16
  %i.emr = getelementptr inbounds nuw i8, ptr %.2213933657.us, i64 4
  %i.ems = load <2 x i16>, ptr %.2213933657.us, align 2, !tbaa !350
  %i.emt = zext <2 x i16> %i.ems to <2 x i32>
  %i.emu = shl nuw <2 x i32> %i.emt, splat (i32 16)
  %i.emv = bitcast <2 x i32> %i.emu to <2 x float>
  %i.emw = insertelement <2 x i32> poison, i32 %i.emm, i64 0
  %i.emx = bitcast <2 x i32> %i.emw to <2 x float>
  %i.emy = shufflevector <2 x float> %i.emx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.emz = fmul fast <2 x float> %i.emy, %i.emv
  %i.ena = fadd fast <2 x float> %i.emj, %i.emz
  %i.enb = load <2 x i16>, ptr %i.emr, align 2, !tbaa !350
  %i.enc = zext <2 x i16> %i.enb to <2 x i32>
  %i.end = shl nuw <2 x i32> %i.enc, splat (i32 16)
  %i.ene = bitcast <2 x i32> %i.end to <2 x float>
  %i.enf = insertelement <2 x i32> poison, i32 %i.emq, i64 0
  %i.eng = bitcast <2 x i32> %i.enf to <2 x float>
  %i.enh = shufflevector <2 x float> %i.eng, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eni = fmul fast <2 x float> %i.enh, %i.ene
  %i.enj = fadd fast <2 x float> %i.eni, %i.ena   ; 3 uses
  %i.enk = getelementptr inbounds [2 x i8], ptr %.012903658.us, i64 %i.emc
  %i.enl = getelementptr inbounds nuw i8, ptr %.2213933657.us, i64 8
  %i.enm = add nuw nsw i32 %.012893659.us, 1      ; 2 uses
  %exitcond4264.not = icmp eq i32 %i.enm, %i.dqk
  br i1 %exitcond4264.not, label %._crit_edge3662.us, label %bb.at, !llvm.loop !466

._crit_edge3662.us:                               ; preds = %bb.at
  %scevgep4262 = getelementptr i8, ptr %.2113923668.us, i64 8
  %scevgep4263 = getelementptr i8, ptr %scevgep4262, i64 %i.dqo ; 2 uses
  %indvars.iv.next4266 = add nuw nsw i64 %indvars.iv4265, 2 ; 3 uses
  %i.enn = trunc i64 %indvars.iv.next4266 to i32
  %i.eno = or i32 %i.enn, 1
  %i.enp = icmp slt i32 %i.eno, %i.bhu
  br i1 %i.enp, label %.lr.ph3661.us, label %.preheader2996.loopexit, !llvm.loop !467

.preheader2996.loopexit:                          ; preds = %._crit_edge3662.us
  %i.enq = trunc nuw i64 %indvars.iv.next4266 to i32
  br label %.preheader2996

.preheader2996:                                   ; preds = %.lr.ph3671.split.preheader, %.preheader2996.loopexit, %._crit_edge3646
  %.211392.lcssa = phi ptr [ %.161387.lcssa, %._crit_edge3646 ], [ %scevgep4263, %.preheader2996.loopexit ], [ %.161387.lcssa, %.lr.ph3671.split.preheader ]
  %.31369.lcssa = phi i32 [ %.21368.lcssa, %._crit_edge3646 ], [ %i.enq, %.preheader2996.loopexit ], [ %i.emg, %.lr.ph3671.split.preheader ] ; 2 uses
  %i.enr = phi <2 x float> [ %i.elr, %._crit_edge3646 ], [ %i.enj, %.preheader2996.loopexit ], [ %i.elr, %.lr.ph3671.split.preheader ] ; 3 uses
  %i.ens = icmp slt i32 %.31369.lcssa, %i.bhu
  br i1 %i.ens, label %.lr.ph3699, label %._crit_edge3700

.lr.ph3699:                                       ; preds = %.preheader2996
  %i.ent = load ptr, ptr %0, align 8, !tbaa !18
  %i.enu = load i32, ptr %i.p, align 4, !tbaa !179
  %i.env = sext i32 %i.enu to i64
  %i.enw = load i64, ptr %i.bie, align 8, !tbaa !49
  %factor.op.mul3703 = mul i64 %i.enw, %i.env
  %i.enx = mul nsw i64 %indvars.iv4274, %i.dqq
  %invariant.gep3705 = getelementptr [2 x i8], ptr %i.ent, i64 %i.enx
  %i.eny = load i32, ptr %i.b, align 4
  %i.enz = sext i32 %i.eny to i64                 ; 2 uses
  br i1 %i.dql, label %.lr.ph3690.us.preheader, label %._crit_edge3700

.lr.ph3690.us.preheader:                          ; preds = %.lr.ph3699
  %i.eoa = zext i32 %.31369.lcssa to i64
  br label %.lr.ph3690.us

.lr.ph3690.us:                                    ; preds = %.lr.ph3690.us.preheader, %._crit_edge3691.us
  %indvars.iv4271 = phi i64 [ %i.eoa, %.lr.ph3690.us.preheader ], [ %indvars.iv.next4272, %._crit_edge3691.us ] ; 2 uses
  %.2313943697.us = phi ptr [ %.211392.lcssa, %.lr.ph3690.us.preheader ], [ %scevgep4269, %._crit_edge3691.us ] ; 3 uses
  %i.eob = phi <2 x float> [ %i.enr, %.lr.ph3690.us.preheader ], [ %.lcssa4800, %._crit_edge3691.us ] ; 2 uses
  %.reass3704.us = mul i64 %factor.op.mul3703, %indvars.iv4271
  %gep3706.us = getelementptr i8, ptr %invariant.gep3705, i64 %.reass3704.us ; 2 uses
  br i1 %i.dqr, label %.epil.preheader4899, label %.lr.ph3690.us.new

.lr.ph3690.us.new:                                ; preds = %.lr.ph3690.us, %.lr.ph3690.us.new
  %.012883687.us = phi ptr [ %i.epd, %.lr.ph3690.us.new ], [ %gep3706.us, %.lr.ph3690.us ] ; 2 uses
  %.2413953686.us = phi ptr [ %i.epe, %.lr.ph3690.us.new ], [ %.2313943697.us, %.lr.ph3690.us ] ; 3 uses
  %i.eoc = phi <2 x float> [ %i.epc, %.lr.ph3690.us.new ], [ %i.eob, %.lr.ph3690.us ]
  %niter4905 = phi i32 [ %niter4905.next.1, %.lr.ph3690.us.new ], [ 0, %.lr.ph3690.us ]
  %i.eod = load i16, ptr %.012883687.us, align 2, !tbaa !350
  %i.eoe = zext i16 %i.eod to i32
  %i.eof = shl nuw i32 %i.eoe, 16
  %i.eog = load <2 x i16>, ptr %.2413953686.us, align 2, !tbaa !350
  %i.eoh = zext <2 x i16> %i.eog to <2 x i32>
  %i.eoi = shl nuw <2 x i32> %i.eoh, splat (i32 16)
  %i.eoj = bitcast <2 x i32> %i.eoi to <2 x float>
  %i.eok = insertelement <2 x i32> poison, i32 %i.eof, i64 0
  %i.eol = bitcast <2 x i32> %i.eok to <2 x float>
  %i.eom = shufflevector <2 x float> %i.eol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eon = fmul fast <2 x float> %i.eom, %i.eoj
  %i.eoo = fadd fast <2 x float> %i.eon, %i.eoc
  %i.eop = getelementptr inbounds [2 x i8], ptr %.012883687.us, i64 %i.enz ; 2 uses
  %i.eoq = getelementptr inbounds nuw i8, ptr %.2413953686.us, i64 4
  %i.eor = load i16, ptr %i.eop, align 2, !tbaa !350
  %i.eos = zext i16 %i.eor to i32
  %i.eot = shl nuw i32 %i.eos, 16
  %i.eou = load <2 x i16>, ptr %i.eoq, align 2, !tbaa !350
  %i.eov = zext <2 x i16> %i.eou to <2 x i32>
  %i.eow = shl nuw <2 x i32> %i.eov, splat (i32 16)
  %i.eox = bitcast <2 x i32> %i.eow to <2 x float>
  %i.eoy = insertelement <2 x i32> poison, i32 %i.eot, i64 0
  %i.eoz = bitcast <2 x i32> %i.eoy to <2 x float>
  %i.epa = shufflevector <2 x float> %i.eoz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.epb = fmul fast <2 x float> %i.epa, %i.eox
  %i.epc = fadd fast <2 x float> %i.epb, %i.eoo   ; 3 uses
  %i.epd = getelementptr inbounds [2 x i8], ptr %i.eop, i64 %i.enz ; 2 uses
  %i.epe = getelementptr inbounds nuw i8, ptr %.2413953686.us, i64 8 ; 2 uses
  %niter4905.next.1 = add nuw nsw i32 %niter4905, 2 ; 2 uses
  %niter4905.ncmp.1 = icmp eq i32 %niter4905.next.1, %unroll_iter4904
  br i1 %niter4905.ncmp.1, label %._crit_edge3691.us.unr-lcssa, label %.lr.ph3690.us.new, !llvm.loop !468

._crit_edge3691.us.unr-lcssa:                     ; preds = %.lr.ph3690.us.new
  br i1 %lcmp.mod4901.not, label %._crit_edge3691.us, label %.epil.preheader4899

.epil.preheader4899:                              ; preds = %._crit_edge3691.us.unr-lcssa, %.lr.ph3690.us
  %.012883687.us.epil.init = phi ptr [ %gep3706.us, %.lr.ph3690.us ], [ %i.epd, %._crit_edge3691.us.unr-lcssa ]
  %.2413953686.us.epil.init = phi ptr [ %.2313943697.us, %.lr.ph3690.us ], [ %i.epe, %._crit_edge3691.us.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.eob, %.lr.ph3690.us ], [ %i.epc, %._crit_edge3691.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4903)
  %i.epf = load i16, ptr %.012883687.us.epil.init, align 2, !tbaa !350
  %i.epg = zext i16 %i.epf to i32
  %i.eph = shl nuw i32 %i.epg, 16
  %i.epi = load <2 x i16>, ptr %.2413953686.us.epil.init, align 2, !tbaa !350
  %i.epj = zext <2 x i16> %i.epi to <2 x i32>
  %i.epk = shl nuw <2 x i32> %i.epj, splat (i32 16)
  %i.epl = bitcast <2 x i32> %i.epk to <2 x float>
  %i.epm = insertelement <2 x i32> poison, i32 %i.eph, i64 0
  %i.epn = bitcast <2 x i32> %i.epm to <2 x float>
  %i.epo = shufflevector <2 x float> %i.epn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.epp = fmul fast <2 x float> %i.epo, %i.epl
  %i.epq = fadd fast <2 x float> %i.epp, %.epil.init
  br label %._crit_edge3691.us

._crit_edge3691.us:                               ; preds = %._crit_edge3691.us.unr-lcssa, %.epil.preheader4899
  %.lcssa4800 = phi <2 x float> [ %i.epc, %._crit_edge3691.us.unr-lcssa ], [ %i.epq, %.epil.preheader4899 ] ; 2 uses
  %scevgep4268 = getelementptr i8, ptr %.2313943697.us, i64 4
  %scevgep4269 = getelementptr i8, ptr %scevgep4268, i64 %i.dqp
  %indvars.iv.next4272 = add nuw nsw i64 %indvars.iv4271, 1 ; 2 uses
  %i.epr = trunc nuw i64 %indvars.iv.next4272 to i32
  %i.eps = icmp sgt i32 %i.bhu, %i.epr
  br i1 %i.eps, label %.lr.ph3690.us, label %._crit_edge3700, !llvm.loop !469

._crit_edge3700:                                  ; preds = %._crit_edge3691.us, %.lr.ph3699, %.preheader2996
  %i.ept = phi <2 x float> [ %i.enr, %.preheader2996 ], [ %i.enr, %.lr.ph3699 ], [ %.lcssa4800, %._crit_edge3691.us ] ; 12 uses
  switch i32 %i.bij, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2943
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2946
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2940
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2949
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2952
    i32 6, label %bb.au
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2943: ; preds = %._crit_edge3700
  %i.epu = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ept, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2946: ; preds = %._crit_edge3700
  %i.epv = load ptr, ptr %8, align 8, !tbaa !18
  %i.epw = load float, ptr %i.epv, align 4, !tbaa !110
  %i.epx = fcmp fast ogt <2 x float> %i.ept, zeroinitializer
  %i.epy = insertelement <2 x float> poison, float %i.epw, i64 0
  %i.epz = shufflevector <2 x float> %i.epy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eqa = select <2 x i1> %i.epx, <2 x float> splat (float 1.000000e+00), <2 x float> %i.epz
  %i.eqb = fmul fast <2 x float> %i.eqa, %i.ept
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1539

_ZL13activation_ssfiRKN4ncnn3MatE.exit1540.thread2940: ; preds = %._crit_edge3700
  %i.eqc = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.eqd = load float, ptr %i.eqc, align 4, !tbaa !110 ; 2 uses
  %i.eqe = getelementptr inbounds nuw i8, ptr %i.eqc, i64 4
  %i.eqf = load float, ptr %i.eqe, align 4, !tbaa !110 ; 4 uses
  %i.eqg = extractelement <2 x float> %i.ept, i64 0
  %.02680 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.eqg, float %i.eqd) ; 2 uses
  %i.eqh = fcmp fast ogt float %.02680, %i.eqf
  %.126812942 = select i1 %i.eqh, float %i.eqf, float %.02680
  %i.eqi = extractelement <2 x float> %i.ept, i64 1
end_hunk_14
begin_hunk_15_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.ffj = shl nuw <8 x i32> %i.ffi, splat (i32 16)
  %i.ffk = bitcast <8 x i32> %i.ffj to <8 x float>
  %i.ffl = load <8 x i16>, ptr %.143796, align 16, !tbaa !50 ; 2 uses
  %i.ffm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ffl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ffn = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ffl, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ffo = shufflevector <8 x i16> %i.ffm, <8 x i16> %i.ffn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ffp = bitcast <16 x i16> %i.ffo to <8 x float>
  %i.ffq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ffk, <8 x float> nofpclass(nan inf) %i.ffp, <8 x float> nofpclass(nan inf) %.528563795) ; 2 uses
  %i.ffr = getelementptr inbounds [2 x i8], ptr %.43797, i64 %i.fcw
  %i.ffs = getelementptr inbounds nuw i8, ptr %.143796, i64 16
  %i.fft = add nuw nsw i32 %.012463798, 1         ; 2 uses
  %exitcond4304.not = icmp eq i32 %i.fft, %i.fca
  br i1 %exitcond4304.not, label %.loopexit2970.loopexit, label %.lr.ph3799, !llvm.loop !479

.loopexit2970.loopexit:                           ; preds = %.lr.ph3799
  %scevgep4302 = getelementptr i8, ptr %.93803, i64 16
  %scevgep4303.a = getelementptr i8, ptr %scevgep4302, i64 %i.fcz
  br label %.loopexit2970

.loopexit2970:                                    ; preds = %bb.bg, %.loopexit2971.loopexit, %.loopexit2973.thread, %.loopexit2970.loopexit, %.loopexit2971
  %.62857 = phi nsz <8 x float> [ %.028513802, %.loopexit2971 ], [ %i.ffq, %.loopexit2970.loopexit ], [ %i.fdm, %.loopexit2973.thread ], [ %i.feg, %.loopexit2971.loopexit ], [ %.028513802, %bb.bg ] ; 2 uses
  %.15 = phi ptr [ %.93803, %.loopexit2971 ], [ %scevgep4303.a, %.loopexit2970.loopexit ], [ %scevgep4297.a, %.loopexit2973.thread ], [ %scevgep4300.a, %.loopexit2971.loopexit ], [ %.93803, %bb.bg ] ; 2 uses
  %i.ffu = add nuw nsw i32 %.112683804, 8         ; 3 uses
  %i.ffv = or disjoint i32 %i.ffu, 7
  %i.ffw = icmp slt i32 %i.ffv, %i.o
  br i1 %i.ffw, label %bb.bf, label %._crit_edge3807, !llvm.loop !480

._crit_edge3807:                                  ; preds = %.loopexit2970, %._crit_edge3769
  %.02851.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge3769 ], [ %.62857, %.loopexit2970 ] ; 2 uses
  %.9.lcssa = phi ptr [ %.01272.lcssa, %._crit_edge3769 ], [ %.15, %.loopexit2970 ] ; 2 uses
  %.11268.lcssa = phi i32 [ %.01267.lcssa, %._crit_edge3769 ], [ %i.ffu, %.loopexit2970 ] ; 3 uses
  %i.ffx = shufflevector <8 x float> %.02851.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ffy = shufflevector <8 x float> %.02851.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ffz = fadd fast <4 x float> %i.ffx, %i.ffy   ; 2 uses
  %i.fga = or disjoint i32 %.11268.lcssa, 3
  %i.fgb = icmp slt i32 %i.fga, %i.o
  br i1 %i.fgb, label %.lr.ph3834, label %._crit_edge3835

.lr.ph3834:                                       ; preds = %._crit_edge3807
  %i.fgc = load ptr, ptr %0, align 8, !tbaa !18
  %i.fgd = load i32, ptr %i.p, align 4, !tbaa !179
  %i.fge = sext i32 %i.fgd to i64
  %i.fgf = load i64, ptr %i.dow, align 8, !tbaa !49
  %factor.op.mul3839 = mul i64 %i.fgf, %i.fge
  %i.fgg = trunc nuw nsw i64 %indvars.iv4324 to i32
  %.reass3897 = mul i32 %factor.op.mul3892, %i.fgg
  %i.fgh = sext i32 %.reass3897 to i64
  %invariant.gep3841 = getelementptr [2 x i8], ptr %i.fgc, i64 %i.fgh
  %i.fgi = load i32, ptr %i.a, align 4            ; 6 uses
  %i.fgj = icmp slt i32 %i.fgi, 1                 ; 2 uses
  %i.fgk = load i32, ptr %i.b, align 4            ; 2 uses
  %i.fgl = shl nsw i32 %i.fgk, 2
  %i.fgm = sext i32 %i.fgl to i64                 ; 2 uses
  %i.fgn = load i32, ptr %i.e, align 4            ; 3 uses
  %i.fgo = mul nsw i32 %i.fgn, 3
  %i.fgp = sext i32 %i.fgo to i64
  %i.fgq = shl nsw i32 %i.fgn, 1
  %i.fgr = sext i32 %i.fgq to i64
  %i.fgs = sext i32 %i.fgn to i64
  %i.fgt = sext i32 %i.fgk to i64
  %i.fgu = add i32 %i.fgi, -1                     ; 2 uses
  %i.fgv = zext i32 %i.fgu to i64
  %i.fgw = shl nuw nsw i64 %i.fgv, 3              ; 2 uses
  %brmerge3928 = select i1 %i.dpc, i1 true, i1 %i.fgj
  %brmerge3931 = select i1 %i.dpa, i1 true, i1 %i.fgj
  %xtraiter4906 = and i32 %i.fgi, 1
  %i.fgx = icmp eq i32 %i.fgu, 0
  %unroll_iter4910 = and i32 %i.fgi, 2147483646
  %lcmp.mod4907.not = icmp eq i32 %xtraiter4906, 0
  %lcmp.mod4909 = trunc i32 %i.fgi to i1
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph3834, %.loopexit
  %.212693832 = phi i32 [ %.11268.lcssa, %.lr.ph3834 ], [ %i.fjl, %.loopexit ] ; 2 uses
  %.163831 = phi ptr [ %.9.lcssa, %.lr.ph3834 ], [ %.20, %.loopexit ] ; 6 uses
  %.027763830 = phi <4 x float> [ zeroinitializer, %.lr.ph3834 ], [ %.42780, %.loopexit ] ; 4 uses
  %i.fgy = sdiv i32 %.212693832, %i.l
  %i.fgz = sext i32 %i.fgy to i64
  %.reass3840 = mul i64 %factor.op.mul3839, %i.fgz
  %gep3842 = getelementptr i8, ptr %invariant.gep3841, i64 %.reass3840 ; 3 uses
  br i1 %brmerge3928, label %.loopexit2968, label %.lr.ph3819.preheader

.lr.ph3819.preheader:                             ; preds = %bb.bh
  br i1 %i.fgx, label %.lr.ph3819.epil.preheader, label %.lr.ph3819

.lr.ph3819:                                       ; preds = %.lr.ph3819.preheader, %.lr.ph3819
  %.012453817 = phi ptr [ %i.fhy, %.lr.ph3819 ], [ %gep3842, %.lr.ph3819.preheader ] ; 2 uses
  %.173816 = phi ptr [ %i.fhz, %.lr.ph3819 ], [ %.163831, %.lr.ph3819.preheader ] ; 3 uses
  %.127773815 = phi <4 x float> [ %i.fhx, %.lr.ph3819 ], [ %.027763830, %.lr.ph3819.preheader ]
  %niter4911 = phi i32 [ %niter4911.next.1, %.lr.ph3819 ], [ 0, %.lr.ph3819.preheader ]
  %i.fha = load i64, ptr %.012453817, align 1, !tbaa !50
  %i.fhb = insertelement <2 x i64> poison, i64 %i.fha, i64 0
  %i.fhc = bitcast <2 x i64> %i.fhb to <8 x i16>
  %i.fhd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhe = bitcast <8 x i16> %i.fhd to <4 x float>
  %i.fhf = load i64, ptr %.173816, align 1, !tbaa !50
  %i.fhg = insertelement <2 x i64> poison, i64 %i.fhf, i64 0
  %i.fhh = bitcast <2 x i64> %i.fhg to <8 x i16>
  %i.fhi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhj = bitcast <8 x i16> %i.fhi to <4 x float>
  %i.fhk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhe, <4 x float> nofpclass(nan inf) %i.fhj, <4 x float> nofpclass(nan inf) %.127773815)
  %i.fhl = getelementptr inbounds [2 x i8], ptr %.012453817, i64 %i.fgm ; 2 uses
  %i.fhm = getelementptr inbounds nuw i8, ptr %.173816, i64 8
  %i.fhn = load i64, ptr %i.fhl, align 1, !tbaa !50
  %i.fho = insertelement <2 x i64> poison, i64 %i.fhn, i64 0
  %i.fhp = bitcast <2 x i64> %i.fho to <8 x i16>
  %i.fhq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhr = bitcast <8 x i16> %i.fhq to <4 x float>
  %i.fhs = load i64, ptr %i.fhm, align 1, !tbaa !50
  %i.fht = insertelement <2 x i64> poison, i64 %i.fhs, i64 0
  %i.fhu = bitcast <2 x i64> %i.fht to <8 x i16>
  %i.fhv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhw = bitcast <8 x i16> %i.fhv to <4 x float>
  %i.fhx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fhr, <4 x float> nofpclass(nan inf) %i.fhw, <4 x float> nofpclass(nan inf) %i.fhk) ; 3 uses
  %i.fhy = getelementptr inbounds [2 x i8], ptr %i.fhl, i64 %i.fgm ; 2 uses
  %i.fhz = getelementptr inbounds nuw i8, ptr %.173816, i64 16 ; 2 uses
  %niter4911.next.1 = add nuw nsw i32 %niter4911, 2 ; 2 uses
  %niter4911.ncmp.1 = icmp eq i32 %niter4911.next.1, %unroll_iter4910
  br i1 %niter4911.ncmp.1, label %.loopexit2968.thread.unr-lcssa, label %.lr.ph3819, !llvm.loop !481

.loopexit2968.thread.unr-lcssa:                   ; preds = %.lr.ph3819
  br i1 %lcmp.mod4907.not, label %.loopexit2968.thread, label %.lr.ph3819.epil.preheader

.lr.ph3819.epil.preheader:                        ; preds = %.loopexit2968.thread.unr-lcssa, %.lr.ph3819.preheader
  %.012453817.epil.init = phi ptr [ %gep3842, %.lr.ph3819.preheader ], [ %i.fhy, %.loopexit2968.thread.unr-lcssa ]
  %.173816.epil.init = phi ptr [ %.163831, %.lr.ph3819.preheader ], [ %i.fhz, %.loopexit2968.thread.unr-lcssa ]
  %.127773815.epil.init = phi <4 x float> [ %.027763830, %.lr.ph3819.preheader ], [ %i.fhx, %.loopexit2968.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4909)
  %i.fia = load i64, ptr %.012453817.epil.init, align 1, !tbaa !50
  %i.fib = insertelement <2 x i64> poison, i64 %i.fia, i64 0
  %i.fic = bitcast <2 x i64> %i.fib to <8 x i16>
  %i.fid = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fic, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fie = bitcast <8 x i16> %i.fid to <4 x float>
  %i.fif = load i64, ptr %.173816.epil.init, align 1, !tbaa !50
  %i.fig = insertelement <2 x i64> poison, i64 %i.fif, i64 0
  %i.fih = bitcast <2 x i64> %i.fig to <8 x i16>
  %i.fii = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fih, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fij = bitcast <8 x i16> %i.fii to <4 x float>
  %i.fik = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fie, <4 x float> nofpclass(nan inf) %i.fij, <4 x float> nofpclass(nan inf) %.127773815.epil.init)
  br label %.loopexit2968.thread

.loopexit2968.thread:                             ; preds = %.loopexit2968.thread.unr-lcssa, %.lr.ph3819.epil.preheader
  %.lcssa4774 = phi <4 x float> [ %i.fhx, %.loopexit2968.thread.unr-lcssa ], [ %i.fik, %.lr.ph3819.epil.preheader ]
  %scevgep4305 = getelementptr i8, ptr %.163831, i64 8
  %scevgep4306.a = getelementptr i8, ptr %scevgep4305, i64 %i.fgw
  br label %.loopexit

.loopexit2968:                                    ; preds = %bb.bh
  br i1 %brmerge3931, label %.loopexit, label %.lr.ph3827

.lr.ph3827:                                       ; preds = %.loopexit2968, %.lr.ph3827
  %.012433826 = phi i32 [ %i.fjk, %.lr.ph3827 ], [ 0, %.loopexit2968 ]
  %.23825 = phi ptr [ %i.fji, %.lr.ph3827 ], [ %gep3842, %.loopexit2968 ] ; 5 uses
  %.193824 = phi ptr [ %i.fjj, %.lr.ph3827 ], [ %.163831, %.loopexit2968 ] ; 2 uses
  %.327793823 = phi <4 x float> [ %i.fjh, %.lr.ph3827 ], [ %.027763830, %.loopexit2968 ]
  %i.fil = getelementptr inbounds [2 x i8], ptr %.23825, i64 %i.fgp
  %i.fim = load i16, ptr %i.fil, align 2, !tbaa !350
  %i.fin = getelementptr inbounds [2 x i8], ptr %.23825, i64 %i.fgr
  %i.fio = load i16, ptr %i.fin, align 2, !tbaa !350
  %i.fip = getelementptr inbounds [2 x i8], ptr %.23825, i64 %i.fgs
  %i.fiq = load i16, ptr %i.fip, align 2, !tbaa !350
  %i.fir = load i16, ptr %.23825, align 2, !tbaa !350
  %i.fis = zext i16 %i.fim to i32
  %i.fit = zext i16 %i.fio to i32
  %i.fiu = zext i16 %i.fiq to i32
  %i.fiv = zext i16 %i.fir to i32
  %i.fiw = insertelement <4 x i32> poison, i32 %i.fiv, i64 0
  %i.fix = insertelement <4 x i32> %i.fiw, i32 %i.fiu, i64 1
  %i.fiy = insertelement <4 x i32> %i.fix, i32 %i.fit, i64 2
  %i.fiz = insertelement <4 x i32> %i.fiy, i32 %i.fis, i64 3
  %i.fja = shl nuw <4 x i32> %i.fiz, splat (i32 16)
  %i.fjb = bitcast <4 x i32> %i.fja to <4 x float>
  %i.fjc = load i64, ptr %.193824, align 1, !tbaa !50
  %i.fjd = insertelement <2 x i64> poison, i64 %i.fjc, i64 0
  %i.fje = bitcast <2 x i64> %i.fjd to <8 x i16>
  %i.fjf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fje, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fjg = bitcast <8 x i16> %i.fjf to <4 x float>
  %i.fjh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fjb, <4 x float> nofpclass(nan inf) %i.fjg, <4 x float> nofpclass(nan inf) %.327793823) ; 2 uses
  %i.fji = getelementptr inbounds [2 x i8], ptr %.23825, i64 %i.fgt
  %i.fjj = getelementptr inbounds nuw i8, ptr %.193824, i64 8
  %i.fjk = add nuw nsw i32 %.012433826, 1         ; 2 uses
  %exitcond4310.not = icmp eq i32 %i.fjk, %i.fgi
  br i1 %exitcond4310.not, label %.loopexit.loopexit, label %.lr.ph3827, !llvm.loop !482

.loopexit.loopexit:                               ; preds = %.lr.ph3827
  %scevgep4308 = getelementptr i8, ptr %.163831, i64 8
  %scevgep4309.a = getelementptr i8, ptr %scevgep4308, i64 %i.fgw
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit2968.thread, %.loopexit.loopexit, %.loopexit2968
  %.42780 = phi nsz <4 x float> [ %.027763830, %.loopexit2968 ], [ %i.fjh, %.loopexit.loopexit ], [ %.lcssa4774, %.loopexit2968.thread ] ; 2 uses
  %.20 = phi ptr [ %.163831, %.loopexit2968 ], [ %scevgep4309.a, %.loopexit.loopexit ], [ %scevgep4306.a, %.loopexit2968.thread ] ; 2 uses
  %i.fjl = add nuw nsw i32 %.212693832, 4         ; 3 uses
  %i.fjm = or disjoint i32 %i.fjl, 3
  %i.fjn = icmp slt i32 %i.fjm, %i.o
  br i1 %i.fjn, label %bb.bh, label %._crit_edge3835, !llvm.loop !483

._crit_edge3835:                                  ; preds = %.loopexit, %._crit_edge3807
  %.02776.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3807 ], [ %.42780, %.loopexit ] ; 2 uses
  %.16.lcssa = phi ptr [ %.9.lcssa, %._crit_edge3807 ], [ %.20, %.loopexit ] ; 3 uses
  %.21269.lcssa = phi i32 [ %.11268.lcssa, %._crit_edge3807 ], [ %i.fjl, %.loopexit ] ; 5 uses
  %i.fjo = shufflevector <4 x float> %.02776.lcssa, <4 x float> %i.ffz, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.fjp = shufflevector <4 x float> %.02776.lcssa, <4 x float> %i.ffz, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.fjq = fadd fast <4 x float> %i.fjo, %i.fjp
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.fbq, <4 x float> %i.fjq)
  %op.rdx4765 = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01279, <8 x float> %i.fbr)
  %op.rdx4766 = fadd fast float %op.rdx, %op.rdx4765 ; 3 uses
  %i.fjr = or disjoint i32 %.21269.lcssa, 1
  %i.fjs = icmp slt i32 %i.fjr, %i.o
  br i1 %i.fjs, label %.lr.ph3856, label %.preheader2980

.lr.ph3856:                                       ; preds = %._crit_edge3835
  %i.fjt = load ptr, ptr %0, align 8, !tbaa !18
  %i.fju = load i32, ptr %i.p, align 4, !tbaa !179
  %i.fjv = sext i32 %i.fju to i64
  %i.fjw = load i64, ptr %i.dow, align 8, !tbaa !49
  %factor.op.mul3860 = mul i64 %i.fjw, %i.fjv
  %i.fjx = mul nsw i64 %indvars.iv4324, %i.etg
  %invariant.gep3862 = getelementptr [2 x i8], ptr %i.fjt, i64 %i.fjx
  %i.fjy = load i32, ptr %i.e, align 4
  %i.fjz = sext i32 %i.fjy to i64
  %i.fka = load i32, ptr %i.b, align 4
  %i.fkb = sext i32 %i.fka to i64
  br i1 %i.etb, label %.lr.ph3848.us.preheader, label %.lr.ph3856.split.preheader

.lr.ph3856.split.preheader:                       ; preds = %.lr.ph3856
  %i.fkc = add i32 %.21269.lcssa, 2
  %i.fkd = sub i32 %13, %.21269.lcssa
  %i.fke = and i32 %i.fkd, -2
  %i.fkf = add i32 %i.fkc, %i.fke
  br label %.preheader2980

.lr.ph3848.us.preheader:                          ; preds = %.lr.ph3856
  %i.fkg = zext i32 %.21269.lcssa to i64
  br label %.lr.ph3848.us

.lr.ph3848.us:                                    ; preds = %.lr.ph3848.us.preheader, %._crit_edge3849.us
  %indvars.iv4315 = phi i64 [ %i.fkg, %.lr.ph3848.us.preheader ], [ %indvars.iv.next4316, %._crit_edge3849.us ] ; 2 uses
  %.213853.us = phi ptr [ %.16.lcssa, %.lr.ph3848.us.preheader ], [ %scevgep4313, %._crit_edge3849.us ] ; 2 uses
  %.112803852.us = phi float [ %op.rdx4766, %.lr.ph3848.us.preheader ], [ %i.flc, %._crit_edge3849.us ]
  %.reass3861.us = mul i64 %factor.op.mul3860, %indvars.iv4315
  %gep3863.us = getelementptr i8, ptr %invariant.gep3862, i64 %.reass3861.us
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph3848.us, %bb.bi
  %.012413846.us = phi i32 [ 0, %.lr.ph3848.us ], [ %i.flf, %bb.bi ]
  %.012423845.us = phi ptr [ %gep3863.us, %.lr.ph3848.us ], [ %i.fld, %bb.bi ] ; 3 uses
  %.223844.us = phi ptr [ %.213853.us, %.lr.ph3848.us ], [ %i.fle, %bb.bi ] ; 3 uses
  %.212813843.us = phi float [ %.112803852.us, %.lr.ph3848.us ], [ %i.flc, %bb.bi ]
  %i.fkh = load i16, ptr %.012423845.us, align 2, !tbaa !350
  %i.fki = zext i16 %i.fkh to i32
  %i.fkj = shl nuw i32 %i.fki, 16
  %i.fkk = bitcast i32 %i.fkj to float
  %i.fkl = load i16, ptr %.223844.us, align 2, !tbaa !350
  %i.fkm = zext i16 %i.fkl to i32
  %i.fkn = shl nuw i32 %i.fkm, 16
  %i.fko = bitcast i32 %i.fkn to float
  %i.fkp = fmul fast float %i.fko, %i.fkk
  %i.fkq = fadd fast float %.212813843.us, %i.fkp
  %i.fkr = getelementptr inbounds [2 x i8], ptr %.012423845.us, i64 %i.fjz
  %i.fks = load i16, ptr %i.fkr, align 2, !tbaa !350
  %i.fkt = zext i16 %i.fks to i32
  %i.fku = shl nuw i32 %i.fkt, 16
  %i.fkv = bitcast i32 %i.fku to float
  %i.fkw = getelementptr inbounds nuw i8, ptr %.223844.us, i64 2
  %i.fkx = load i16, ptr %i.fkw, align 2, !tbaa !350
  %i.fky = zext i16 %i.fkx to i32
  %i.fkz = shl nuw i32 %i.fky, 16
  %i.fla = bitcast i32 %i.fkz to float
  %i.flb = fmul fast float %i.fla, %i.fkv
  %i.flc = fadd fast float %i.flb, %i.fkq         ; 3 uses
  %i.fld = getelementptr inbounds [2 x i8], ptr %.012423845.us, i64 %i.fkb
  %i.fle = getelementptr inbounds nuw i8, ptr %.223844.us, i64 4
  %i.flf = add nuw nsw i32 %.012413846.us, 1      ; 2 uses
  %exitcond4314.not = icmp eq i32 %i.flf, %i.eta
  br i1 %exitcond4314.not, label %._crit_edge3849.us, label %bb.bi, !llvm.loop !484

._crit_edge3849.us:                               ; preds = %bb.bi
  %scevgep4312 = getelementptr i8, ptr %.213853.us, i64 4
  %scevgep4313 = getelementptr i8, ptr %scevgep4312, i64 %i.ete ; 2 uses
  %indvars.iv.next4316 = add nuw nsw i64 %indvars.iv4315, 2 ; 3 uses
  %i.flg = trunc i64 %indvars.iv.next4316 to i32
  %i.flh = or i32 %i.flg, 1
  %i.fli = icmp slt i32 %i.flh, %i.o
  br i1 %i.fli, label %.lr.ph3848.us, label %.preheader2980.loopexit, !llvm.loop !485

.preheader2980.loopexit:                          ; preds = %._crit_edge3849.us
  %i.flj = trunc nuw i64 %indvars.iv.next4316 to i32
  br label %.preheader2980

.preheader2980:                                   ; preds = %.lr.ph3856.split.preheader, %.preheader2980.loopexit, %._crit_edge3835
  %.11280.lcssa = phi float [ %op.rdx4766, %._crit_edge3835 ], [ %i.flc, %.preheader2980.loopexit ], [ %op.rdx4766, %.lr.ph3856.split.preheader ] ; 3 uses
  %.21.lcssa = phi ptr [ %.16.lcssa, %._crit_edge3835 ], [ %scevgep4313, %.preheader2980.loopexit ], [ %.16.lcssa, %.lr.ph3856.split.preheader ]
  %.31270.lcssa = phi i32 [ %.21269.lcssa, %._crit_edge3835 ], [ %i.flj, %.preheader2980.loopexit ], [ %i.fkf, %.lr.ph3856.split.preheader ] ; 2 uses
  %i.flk = icmp slt i32 %.31270.lcssa, %i.o
  br i1 %i.flk, label %.lr.ph3879, label %._crit_edge3880

.lr.ph3879:                                       ; preds = %.preheader2980
  %i.fll = load ptr, ptr %0, align 8, !tbaa !18
  %i.flm = load i32, ptr %i.p, align 4, !tbaa !179
  %i.fln = sext i32 %i.flm to i64
  %i.flo = load i64, ptr %i.dow, align 8, !tbaa !49
  %factor.op.mul3882 = mul i64 %i.flo, %i.fln
  %i.flp = mul nsw i64 %indvars.iv4324, %i.etg
  %invariant.gep3884 = getelementptr [2 x i8], ptr %i.fll, i64 %i.flp
  %i.flq = load i32, ptr %i.b, align 4
  %i.flr = sext i32 %i.flq to i64                 ; 2 uses
  br i1 %i.etb, label %.lr.ph3872.us.preheader, label %._crit_edge3880

.lr.ph3872.us.preheader:                          ; preds = %.lr.ph3879
  %i.fls = zext i32 %.31270.lcssa to i64
  br label %.lr.ph3872.us

.lr.ph3872.us:                                    ; preds = %.lr.ph3872.us.preheader, %._crit_edge3873.us
  %indvars.iv4321 = phi i64 [ %i.fls, %.lr.ph3872.us.preheader ], [ %indvars.iv.next4322.a, %._crit_edge3873.us ] ; 2 uses
  %.233877.us = phi ptr [ %.21.lcssa, %.lr.ph3872.us.preheader ], [ %scevgep4319, %._crit_edge3873.us ] ; 3 uses
  %.312823876.us = phi float [ %.11280.lcssa, %.lr.ph3872.us.preheader ], [ %.lcssa4778, %._crit_edge3873.us ] ; 2 uses
  %.reass3883.us = mul i64 %factor.op.mul3882, %indvars.iv4321
  %gep3885.us = getelementptr i8, ptr %invariant.gep3884, i64 %.reass3883.us ; 2 uses
  br i1 %i.eth, label %.epil.preheader4912, label %.lr.ph3872.us.new

.lr.ph3872.us.new:                                ; preds = %.lr.ph3872.us, %.lr.ph3872.us.new
  %.012403869.us = phi ptr [ %i.fmp, %.lr.ph3872.us.new ], [ %gep3885.us, %.lr.ph3872.us ] ; 2 uses
  %.243868.us = phi ptr [ %i.fmq, %.lr.ph3872.us.new ], [ %.233877.us, %.lr.ph3872.us ] ; 3 uses
  %.412833867.us = phi float [ %i.fmo, %.lr.ph3872.us.new ], [ %.312823876.us, %.lr.ph3872.us ]
  %niter4918 = phi i32 [ %niter4918.next.1, %.lr.ph3872.us.new ], [ 0, %.lr.ph3872.us ]
  %i.flt = load i16, ptr %.012403869.us, align 2, !tbaa !350
  %i.flu = zext i16 %i.flt to i32
  %i.flv = shl nuw i32 %i.flu, 16
  %i.flw = bitcast i32 %i.flv to float
  %i.flx = load i16, ptr %.243868.us, align 2, !tbaa !350
  %i.fly = zext i16 %i.flx to i32
  %i.flz = shl nuw i32 %i.fly, 16
  %i.fma = bitcast i32 %i.flz to float
  %i.fmb = fmul fast float %i.fma, %i.flw
  %i.fmc = fadd fast float %i.fmb, %.412833867.us
  %i.fmd = getelementptr inbounds [2 x i8], ptr %.012403869.us, i64 %i.flr ; 2 uses
  %i.fme = getelementptr inbounds nuw i8, ptr %.243868.us, i64 2
  %i.fmf = load i16, ptr %i.fmd, align 2, !tbaa !350
  %i.fmg = zext i16 %i.fmf to i32
  %i.fmh = shl nuw i32 %i.fmg, 16
  %i.fmi = bitcast i32 %i.fmh to float
  %i.fmj = load i16, ptr %i.fme, align 2, !tbaa !350
  %i.fmk = zext i16 %i.fmj to i32
  %i.fml = shl nuw i32 %i.fmk, 16
  %i.fmm = bitcast i32 %i.fml to float
  %i.fmn = fmul fast float %i.fmm, %i.fmi
  %i.fmo = fadd fast float %i.fmn, %i.fmc         ; 3 uses
  %i.fmp = getelementptr inbounds [2 x i8], ptr %i.fmd, i64 %i.flr ; 2 uses
  %i.fmq = getelementptr inbounds nuw i8, ptr %.243868.us, i64 4 ; 2 uses
  %niter4918.next.1 = add nuw nsw i32 %niter4918, 2 ; 2 uses
  %niter4918.ncmp.1 = icmp eq i32 %niter4918.next.1, %unroll_iter4917
  br i1 %niter4918.ncmp.1, label %._crit_edge3873.us.unr-lcssa, label %.lr.ph3872.us.new, !llvm.loop !486

._crit_edge3873.us.unr-lcssa:                     ; preds = %.lr.ph3872.us.new
  br i1 %lcmp.mod4914.not, label %._crit_edge3873.us, label %.epil.preheader4912

.epil.preheader4912:                              ; preds = %._crit_edge3873.us.unr-lcssa, %.lr.ph3872.us
  %.012403869.us.epil.init = phi ptr [ %gep3885.us, %.lr.ph3872.us ], [ %i.fmp, %._crit_edge3873.us.unr-lcssa ]
  %.243868.us.epil.init = phi ptr [ %.233877.us, %.lr.ph3872.us ], [ %i.fmq, %._crit_edge3873.us.unr-lcssa ]
  %.412833867.us.epil.init = phi float [ %.312823876.us, %.lr.ph3872.us ], [ %i.fmo, %._crit_edge3873.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4916)
  %i.fmr = load i16, ptr %.012403869.us.epil.init, align 2, !tbaa !350
  %i.fms = zext i16 %i.fmr to i32
  %i.fmt = shl nuw i32 %i.fms, 16
  %i.fmu = bitcast i32 %i.fmt to float
  %i.fmv = load i16, ptr %.243868.us.epil.init, align 2, !tbaa !350
  %i.fmw = zext i16 %i.fmv to i32
  %i.fmx = shl nuw i32 %i.fmw, 16
  %i.fmy = bitcast i32 %i.fmx to float
  %i.fmz = fmul fast float %i.fmy, %i.fmu
  %i.fna = fadd fast float %i.fmz, %.412833867.us.epil.init
  br label %._crit_edge3873.us

._crit_edge3873.us:                               ; preds = %._crit_edge3873.us.unr-lcssa, %.epil.preheader4912
  %.lcssa4778 = phi float [ %i.fmo, %._crit_edge3873.us.unr-lcssa ], [ %i.fna, %.epil.preheader4912 ] ; 2 uses
  %scevgep4318 = getelementptr i8, ptr %.233877.us, i64 2
  %scevgep4319 = getelementptr i8, ptr %scevgep4318, i64 %i.etf
  %indvars.iv.next4322.a = add nuw nsw i64 %indvars.iv4321, 1 ; 2 uses
  %i.fnb = trunc nuw i64 %indvars.iv.next4322.a to i32
  %i.fnc = icmp sgt i32 %i.o, %i.fnb
  br i1 %i.fnc, label %.lr.ph3872.us, label %._crit_edge3880, !llvm.loop !487

._crit_edge3880:                                  ; preds = %._crit_edge3873.us, %.lr.ph3879, %.preheader2980
  %.31282.lcssa = phi float [ %.11280.lcssa, %.preheader2980 ], [ %.11280.lcssa, %.lr.ph3879 ], [ %.lcssa4778, %._crit_edge3873.us ] ; 13 uses
  switch i32 %i.dpd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.bj
    i32 2, label %bb.bk
    i32 3, label %bb.bl
    i32 4, label %bb.bn
    i32 5, label %bb.bo
    i32 6, label %bb.bp
  ]

bb.bj:                                            ; preds = %._crit_edge3880
  %i.fnd = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.31282.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bk:                                            ; preds = %._crit_edge3880
  %i.fne = load ptr, ptr %8, align 8, !tbaa !18
  %i.fnf = load float, ptr %i.fne, align 4, !tbaa !110
  %i.fng = fcmp fast ogt float %.31282.lcssa, 0.000000e+00
  %i.fnh = select fast i1 %i.fng, float 1.000000e+00, float %i.fnf
  %i.fni = fmul fast float %i.fnh, %.31282.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bl:                                            ; preds = %._crit_edge3880
  %i.fnj = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.fnk = load float, ptr %i.fnj, align 4, !tbaa !110
  %i.fnl = getelementptr inbounds nuw i8, ptr %i.fnj, i64 4
  %i.fnm = load float, ptr %i.fnl, align 4, !tbaa !110 ; 2 uses
  %.02684 = call nnan ninf nsz float @llvm.maxnum.f32(float %.31282.lcssa, float %i.fnk) ; 2 uses
  %i.fnn = fcmp fast ogt float %.02684, %i.fnm
  br i1 %i.fnn, label %bb.bm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bm:                                            ; preds = %bb.bl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bn:                                            ; preds = %._crit_edge3880
  %.sroa.speculated2426 = call nnan ninf nsz float @llvm.minnum.f32(float %.31282.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2426, float f0xC2B0C0A5)
  %i.fno = fneg fast float %.sroa.speculated
  %i.fnp = call fast float @llvm.exp.f32(float %i.fno)
  %i.fnq = fadd fast float %i.fnp, 1.000000e+00
  %i.fnr = fdiv fast float 1.000000e+00, %i.fnq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bo:                                            ; preds = %._crit_edge3880
  %i.fns = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.31282.lcssa)
  %i.fnt = fadd fast float %i.fns, 1.000000e+00
  %i.fnu = call fast float @llvm.log.f32(float %i.fnt)
  %i.fnv = call fast float @llvm.tanh.f32(float %i.fnu)
  %i.fnw = fmul fast float %i.fnv, %.31282.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bp:                                            ; preds = %._crit_edge3880
  %i.fnx = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.fny = load float, ptr %i.fnx, align 4, !tbaa !110 ; 3 uses
  %i.fnz = getelementptr inbounds nuw i8, ptr %i.fnx, i64 4
  %i.foa = load float, ptr %i.fnz, align 4, !tbaa !110 ; 2 uses
  %i.fob = fneg fast float %i.foa
  %i.foc = fdiv fast float %i.fob, %i.fny         ; 2 uses
  %i.fod = fcmp fast olt float %.31282.lcssa, %i.foc
  br i1 %i.fod, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.foe = fdiv fast float 1.000000e+00, %i.fny
  %i.fof = fadd fast float %i.foc, %i.foe
  %i.fog = fcmp fast ogt float %.31282.lcssa, %i.fof
  br i1 %i.fog, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.foh = fmul fast float %i.fny, %.31282.lcssa
  %i.foi = fadd fast float %i.foh, %i.foa
  %i.foj = fmul fast float %i.foi, %.31282.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.bp, %._crit_edge3880, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bq, %bb.br
  %.12685 = phi nsz float [ %.31282.lcssa, %._crit_edge3880 ], [ %i.fnd, %bb.bj ], [ %i.fni, %bb.bk ], [ %i.fnm, %bb.bm ], [ %.02684, %bb.bl ], [ %i.fnr, %bb.bn ], [ %i.fnw, %bb.bo ], [ %i.foj, %bb.br ], [ %.31282.lcssa, %bb.bq ], [ 0.000000e+00, %bb.bp ]
  %i.fok = bitcast float %.12685 to i32
  %i.fol = lshr i32 %i.fok, 16
  %i.fom = trunc nuw i32 %i.fol to i16
  store i16 %i.fom, ptr %.012853887, align 2, !tbaa !350
  %i.fon = getelementptr inbounds nuw i8, ptr %.012853887, i64 2
  %indvars.iv.next4325 = add nuw nsw i64 %indvars.iv4324, 1 ; 2 uses
  %exitcond4328.not = icmp eq i64 %indvars.iv.next4325, %wide.trip.count4327
  br i1 %exitcond4328.not, label %._crit_edge3891, label %bb.ba, !llvm.loop !488

bb.bs:                                            ; preds = %._crit_edge3901.split, %bb.b
  ret void
}

declare void @_ZN4ncnn37convolution1d_packed_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !184    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !184
  %i.h = load i32, ptr %0, align 4, !tbaa !184    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !184
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !184
  %i.k = load i32, ptr %i.a, align 4, !tbaa !184  ; 2 uses
  %.not1201 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1201, label %._crit_edge1205, label %.lr.ph1204

.lr.ph1204:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.u = load i32, ptr %i.n, align 4, !tbaa !179  ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph1204.split.preheader, label %._crit_edge1205

.lr.ph1204.split.preheader:                       ; preds = %.lr.ph1204
  %i.w = sext i32 %i.k to i64
  %i.x = add nsw i32 %i.j, 1
  br label %.lr.ph1204.split

.lr.ph1204.splitthread-pre-split:                 ; preds = %._crit_edge
  %.pr = load i32, ptr %i.n, align 4, !tbaa !179
  br label %.lr.ph1204.split

.lr.ph1204.split:                                 ; preds = %.lr.ph1204.splitthread-pre-split, %.lr.ph1204.split.preheader
  %i.y = phi i32 [ %.pr, %.lr.ph1204.splitthread-pre-split ], [ %i.u, %.lr.ph1204.split.preheader ] ; 3 uses
  %indvars.iv1305 = phi i64 [ %indvars.iv.next1306, %.lr.ph1204.splitthread-pre-split ], [ %i.w, %.lr.ph1204.split.preheader ] ; 3 uses
  %i.z = load i32, ptr %i.l, align 8, !tbaa !181  ; 11 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !194
  %i.ab = mul i32 %i.aa, %i.z                     ; 12 uses
  %i.ac = icmp sgt i32 %i.y, 0
  br i1 %i.ac, label %.lr.ph1200, label %._crit_edge

.lr.ph1200:                                       ; preds = %.lr.ph1204.split
  %i.ad = load ptr, ptr %4, align 8, !tbaa !18
  %i.ae = shl nsw i64 %indvars.iv1305, 4          ; 2 uses
  %i.af = load i32, ptr %i.o, align 8, !tbaa !181 ; 3 uses
  %i.ag = trunc nsw i64 %i.ae to i32
  %i.ah = sdiv i32 %i.ag, %i.af
  %i.ai = sext i32 %i.ah to i64
  %i.aj = zext nneg i32 %i.y to i64
  %i.ak = mul nsw i64 %i.ai, %i.aj
  %i.al = load i64, ptr %i.p, align 8, !tbaa !49
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.am
  %i.ao = icmp sgt i32 %i.ab, 15
  %i.ap = icmp eq i32 %i.z, 16
  %i.aq = icmp eq i32 %i.z, 8                     ; 2 uses
  %i.ar = icmp eq i32 %i.z, 4                     ; 3 uses
  %i.as = icmp eq i32 %i.z, 1                     ; 3 uses
  %i.at = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.af)
  %i.au = icmp eq i32 %i.at, 1
  %i.av = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.af, i1 true)
  %i.aw = and i32 %i.ab, -16
  %14 = add i32 %i.ab, -2
  br label %bb.c

._crit_edge:                                      ; preds = %.thread962, %.lr.ph1204.split
  %indvars.iv.next1306 = add nsw i64 %indvars.iv1305, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1306 to i32
  %exitcond1308.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond1308.not, label %._crit_edge1205, label %.lr.ph1204.splitthread-pre-split, !llvm.loop !489

bb.c:                                             ; preds = %.lr.ph1200, %.thread962
  %.06451199 = phi i32 [ 0, %.lr.ph1200 ], [ %i.bzi, %.thread962 ] ; 6 uses
  %.06461198 = phi ptr [ %i.an, %.lr.ph1200 ], [ %.4650, %.thread962 ] ; 29 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !195   ; 2 uses
  %.not653 = icmp eq ptr %i.ax, null
  br i1 %.not653, label %_ZN4ncnn3MatD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ae
  %i.az = load <16 x float>, ptr %i.ay, align 1, !tbaa !50
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %.0933 = phi nsz <16 x float> [ zeroinitializer, %bb.c ], [ %i.az, %bb.d ] ; 2 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !18, !noalias !490
  %i.bb = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !490
  %i.bc = mul i64 %i.bb, %indvars.iv1305
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !49, !noalias !490
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 2 uses
  br i1 %i.ao, label %.lr.ph1044, label %.preheader980

.lr.ph1044:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.bg = load ptr, ptr %3, align 8, !tbaa !18
  %i.bh = load i32, ptr %i.s, align 4, !tbaa !179
  %i.bi = sext i32 %i.bh to i64
  %i.bj = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul = mul i64 %i.bj, %i.bi
  %i.bk = load i32, ptr %7, align 4, !tbaa !184
  %i.bl = mul i32 %.06451199, %i.z
  %i.bm = mul i32 %i.bl, %i.bk
  %i.bn = sext i32 %i.bm to i64
  %invariant.gep = getelementptr [2 x i8], ptr %i.bg, i64 %i.bn
  br label %bb.e

.preheader980:                                    ; preds = %.loopexit972, %_ZN4ncnn3MatD2Ev.exit
  %.1934.lcssa = phi <16 x float> [ %.0933, %_ZN4ncnn3MatD2Ev.exit ], [ %.9942, %.loopexit972 ] ; 2 uses
  %.0622.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.8630, %.loopexit972 ] ; 2 uses
  %.0601.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.8609, %.loopexit972 ] ; 2 uses
  %.0580.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit ], [ %.8588, %.loopexit972 ] ; 2 uses
  %.0573.lcssa = phi ptr [ %i.bf, %_ZN4ncnn3MatD2Ev.exit ], [ %.8, %.loopexit972 ] ; 2 uses
  %.0568.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit ], [ %i.aw, %.loopexit972 ] ; 3 uses
  %i.bo = or disjoint i32 %.0568.lcssa, 7
  %i.bp = icmp slt i32 %i.bo, %i.ab
  br i1 %i.bp, label %.lr.ph1099, label %.preheader979

.lr.ph1099:                                       ; preds = %.preheader980
  %i.bq = load ptr, ptr %3, align 8, !tbaa !18
  %i.br = load i32, ptr %i.s, align 4, !tbaa !179
  %i.bs = sext i32 %i.br to i64
  %i.bt = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul1106 = mul i64 %i.bt, %i.bs
  %i.bu = load i32, ptr %7, align 4, !tbaa !184
  %i.bv = mul i32 %.06451199, %i.z
  %i.bw = mul i32 %i.bv, %i.bu
  %i.bx = sext i32 %i.bw to i64
  %invariant.gep1108 = getelementptr [2 x i8], ptr %i.bq, i64 %i.bx
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph1044, %.loopexit972
  %.05681043 = phi i32 [ 0, %.lr.ph1044 ], [ %i.apb, %.loopexit972 ] ; 2 uses
  %.05731042 = phi ptr [ %i.bf, %.lr.ph1044 ], [ %.8, %.loopexit972 ] ; 13 uses
  %.05801041 = phi <16 x float> [ zeroinitializer, %.lr.ph1044 ], [ %.8588, %.loopexit972 ] ; 9 uses
  %.06011040 = phi <16 x float> [ zeroinitializer, %.lr.ph1044 ], [ %.8609, %.loopexit972 ] ; 9 uses
  %.06221039 = phi <16 x float> [ zeroinitializer, %.lr.ph1044 ], [ %.8630, %.loopexit972 ] ; 9 uses
  %.19341038 = phi <16 x float> [ %.0933, %.lr.ph1044 ], [ %.9942, %.loopexit972 ] ; 9 uses
  %i.by = sdiv i32 %.05681043, %i.z
  %i.bz = sext i32 %i.by to i64
  %.reass = mul i64 %factor.op.mul, %i.bz
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass ; 8 uses
  br i1 %i.ap, label %.preheader975, label %.loopexit976

.preheader975:                                    ; preds = %bb.e
  %i.ca = load i32, ptr %8, align 4, !tbaa !184   ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph, label %.loopexit972

.lr.ph:                                           ; preds = %.preheader975
  %i.cc = load i32, ptr %9, align 4, !tbaa !184
  %i.cd = shl nsw i32 %i.cc, 4
  %i.ce = sext i32 %i.cd to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.0562987 = phi i32 [ 0, %.lr.ph ], [ %i.kj, %bb.f ]
  %.0563986 = phi ptr [ %gep, %.lr.ph ], [ %i.kh, %bb.f ] ; 2 uses
  %.1574985 = phi ptr [ %.05731042, %.lr.ph ], [ %i.ki, %bb.f ] ; 17 uses
  %.1581984 = phi <16 x float> [ %.05801041, %.lr.ph ], [ %i.kg, %bb.f ]
  %.1602983 = phi <16 x float> [ %.06011040, %.lr.ph ], [ %i.kd, %bb.f ]
  %.1623982 = phi <16 x float> [ %.06221039, %.lr.ph ], [ %i.ka, %bb.f ]
  %.2935981 = phi <16 x float> [ %.19341038, %.lr.ph ], [ %i.jx, %bb.f ]
  %i.cf = load <16 x i16>, ptr %.1574985, align 32, !tbaa !50 ; 2 uses
  %i.cg = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ch = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cf, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ci = shufflevector <16 x i16> %i.cg, <16 x i16> %i.ch, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cj = shufflevector <16 x i16> %i.cg, <16 x i16> %i.ch, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ck = bitcast <16 x i16> %i.ci to <8 x i32>
  %i.cl = bitcast <16 x i16> %i.cj to <8 x i32>
  %i.cm = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cn = bitcast <16 x i32> %i.cm to <16 x float>
  %i.co = getelementptr inbounds nuw i8, ptr %.1574985, i64 32
  %i.cp = load <16 x i16>, ptr %i.co, align 32, !tbaa !50 ; 2 uses
  %i.cq = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.cr = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cp, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cs = shufflevector <16 x i16> %i.cq, <16 x i16> %i.cr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ct = shufflevector <16 x i16> %i.cq, <16 x i16> %i.cr, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cu = bitcast <16 x i16> %i.cs to <8 x i32>
  %i.cv = bitcast <16 x i16> %i.ct to <8 x i32>
  %i.cw = shufflevector <8 x i32> %i.cu, <8 x i32> %i.cv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cx = bitcast <16 x i32> %i.cw to <16 x float>
  %i.cy = getelementptr inbounds nuw i8, ptr %.1574985, i64 64
  %i.cz = load <16 x i16>, ptr %i.cy, align 32, !tbaa !50 ; 2 uses
  %i.da = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.db = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cz, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dc = shufflevector <16 x i16> %i.da, <16 x i16> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dd = shufflevector <16 x i16> %i.da, <16 x i16> %i.db, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.de = bitcast <16 x i16> %i.dc to <8 x i32>
  %i.df = bitcast <16 x i16> %i.dd to <8 x i32>
  %i.dg = shufflevector <8 x i32> %i.de, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dh = bitcast <16 x i32> %i.dg to <16 x float>
  %i.di = getelementptr inbounds nuw i8, ptr %.1574985, i64 96
  %i.dj = load <16 x i16>, ptr %i.di, align 32, !tbaa !50 ; 2 uses
  %i.dk = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.dj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.dl = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.dj, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dm = shufflevector <16 x i16> %i.dk, <16 x i16> %i.dl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dn = shufflevector <16 x i16> %i.dk, <16 x i16> %i.dl, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.do = bitcast <16 x i16> %i.dm to <8 x i32>
  %i.dp = bitcast <16 x i16> %i.dn to <8 x i32>
  %i.dq = shufflevector <8 x i32> %i.do, <8 x i32> %i.dp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dr = bitcast <16 x i32> %i.dq to <16 x float>
  %i.ds = getelementptr inbounds nuw i8, ptr %.1574985, i64 128
  %i.dt = load <16 x i16>, ptr %i.ds, align 32, !tbaa !50 ; 2 uses
  %i.du = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.dt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.dv = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.dt, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dw = shufflevector <16 x i16> %i.du, <16 x i16> %i.dv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dx = shufflevector <16 x i16> %i.du, <16 x i16> %i.dv, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dy = bitcast <16 x i16> %i.dw to <8 x i32>
  %i.dz = bitcast <16 x i16> %i.dx to <8 x i32>
  %i.ea = shufflevector <8 x i32> %i.dy, <8 x i32> %i.dz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eb = bitcast <16 x i32> %i.ea to <16 x float>
  %i.ec = getelementptr inbounds nuw i8, ptr %.1574985, i64 160
  %i.ed = load <16 x i16>, ptr %i.ec, align 32, !tbaa !50 ; 2 uses
  %i.ee = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ed, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ef = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ed, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.eg = shufflevector <16 x i16> %i.ee, <16 x i16> %i.ef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.eh = shufflevector <16 x i16> %i.ee, <16 x i16> %i.ef, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ei = bitcast <16 x i16> %i.eg to <8 x i32>
  %i.ej = bitcast <16 x i16> %i.eh to <8 x i32>
  %i.ek = shufflevector <8 x i32> %i.ei, <8 x i32> %i.ej, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.el = bitcast <16 x i32> %i.ek to <16 x float>
  %i.em = getelementptr inbounds nuw i8, ptr %.1574985, i64 192
  %i.en = load <16 x i16>, ptr %i.em, align 32, !tbaa !50 ; 2 uses
  %i.eo = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.en, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ep = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.en, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.eq = shufflevector <16 x i16> %i.eo, <16 x i16> %i.ep, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.er = shufflevector <16 x i16> %i.eo, <16 x i16> %i.ep, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.es = bitcast <16 x i16> %i.eq to <8 x i32>
  %i.et = bitcast <16 x i16> %i.er to <8 x i32>
  %i.eu = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ev = bitcast <16 x i32> %i.eu to <16 x float>
  %i.ew = getelementptr inbounds nuw i8, ptr %.1574985, i64 224
  %i.ex = load <16 x i16>, ptr %i.ew, align 32, !tbaa !50 ; 2 uses
  %i.ey = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ex, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ez = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ex, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.fa = shufflevector <16 x i16> %i.ey, <16 x i16> %i.ez, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fb = shufflevector <16 x i16> %i.ey, <16 x i16> %i.ez, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fc = bitcast <16 x i16> %i.fa to <8 x i32>
  %i.fd = bitcast <16 x i16> %i.fb to <8 x i32>
  %i.fe = shufflevector <8 x i32> %i.fc, <8 x i32> %i.fd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ff = bitcast <16 x i32> %i.fe to <16 x float>
  %i.fg = getelementptr inbounds nuw i8, ptr %.1574985, i64 256
  %i.fh = load <16 x i16>, ptr %i.fg, align 32, !tbaa !50 ; 2 uses
  %i.fi = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.fh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.fj = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.fh, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.fk = shufflevector <16 x i16> %i.fi, <16 x i16> %i.fj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fl = shufflevector <16 x i16> %i.fi, <16 x i16> %i.fj, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fm = bitcast <16 x i16> %i.fk to <8 x i32>
  %i.fn = bitcast <16 x i16> %i.fl to <8 x i32>
  %i.fo = shufflevector <8 x i32> %i.fm, <8 x i32> %i.fn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fp = bitcast <16 x i32> %i.fo to <16 x float>
  %i.fq = getelementptr inbounds nuw i8, ptr %.1574985, i64 288
  %i.fr = load <16 x i16>, ptr %i.fq, align 32, !tbaa !50 ; 2 uses
  %i.fs = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.fr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ft = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.fr, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.fu = shufflevector <16 x i16> %i.fs, <16 x i16> %i.ft, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fv = shufflevector <16 x i16> %i.fs, <16 x i16> %i.ft, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fw = bitcast <16 x i16> %i.fu to <8 x i32>
  %i.fx = bitcast <16 x i16> %i.fv to <8 x i32>
  %i.fy = shufflevector <8 x i32> %i.fw, <8 x i32> %i.fx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fz = bitcast <16 x i32> %i.fy to <16 x float>
  %i.ga = getelementptr inbounds nuw i8, ptr %.1574985, i64 320
  %i.gb = load <16 x i16>, ptr %i.ga, align 32, !tbaa !50 ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
.lr.ph1087:                                       ; preds = %.preheader966
  %i.ayy = load i32, ptr %10, align 4, !tbaa !184 ; 7 uses
  %i.ayz = sext i32 %i.ayy to i64
  %i.aza = shl nsw i32 %i.ayy, 1
  %i.azb = sext i32 %i.aza to i64
  %i.azc = mul nsw i32 %i.ayy, 3
  %i.azd = sext i32 %i.azc to i64
  %i.aze = shl nsw i32 %i.ayy, 2
  %i.azf = sext i32 %i.aze to i64
  %i.azg = mul nsw i32 %i.ayy, 5
  %i.azh = sext i32 %i.azg to i64
  %i.azi = mul nsw i32 %i.ayy, 6
  %i.azj = sext i32 %i.azi to i64
  %i.azk = mul nsw i32 %i.ayy, 7
  %i.azl = sext i32 %i.azk to i64
  %i.azm = load i32, ptr %9, align 4, !tbaa !184
  %i.azn = sext i32 %i.azm to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph1087, %bb.p
  %.05481086 = phi i32 [ 0, %.lr.ph1087 ], [ %i.bfc, %bb.p ]
  %.41085 = phi ptr [ %gep1109, %.lr.ph1087 ], [ %i.bfa, %bb.p ] ; 9 uses
  %.141084 = phi ptr [ %.91097, %.lr.ph1087 ], [ %i.bfb, %bb.p ] ; 9 uses
  %.145941083 = phi <16 x float> [ %.95891096, %.lr.ph1087 ], [ %i.bez, %bb.p ]
  %.146151082 = phi <16 x float> [ %.96101095, %.lr.ph1087 ], [ %i.ber, %bb.p ]
  %.146361081 = phi <16 x float> [ %.96311094, %.lr.ph1087 ], [ %i.bej, %bb.p ]
  %.159481080 = phi <16 x float> [ %.109431093, %.lr.ph1087 ], [ %i.beb, %bb.p ]
  %i.azo = load <16 x i16>, ptr %.141084, align 32, !tbaa !50 ; 2 uses
  %i.azp = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.azo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.azq = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.azo, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.azr = shufflevector <16 x i16> %i.azp, <16 x i16> %i.azq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.azs = shufflevector <16 x i16> %i.azp, <16 x i16> %i.azq, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azt = bitcast <16 x i16> %i.azr to <8 x i32>
  %i.azu = bitcast <16 x i16> %i.azs to <8 x i32>
  %i.azv = shufflevector <8 x i32> %i.azt, <8 x i32> %i.azu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azw = bitcast <16 x i32> %i.azv to <16 x float>
  %i.azx = getelementptr inbounds nuw i8, ptr %.141084, i64 32
  %i.azy = load <16 x i16>, ptr %i.azx, align 32, !tbaa !50 ; 2 uses
  %i.azz = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.azy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.baa = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.azy, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bab = shufflevector <16 x i16> %i.azz, <16 x i16> %i.baa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bac = shufflevector <16 x i16> %i.azz, <16 x i16> %i.baa, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bad = bitcast <16 x i16> %i.bab to <8 x i32>
  %i.bae = bitcast <16 x i16> %i.bac to <8 x i32>
  %i.baf = shufflevector <8 x i32> %i.bad, <8 x i32> %i.bae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bag = bitcast <16 x i32> %i.baf to <16 x float>
  %i.bah = getelementptr inbounds nuw i8, ptr %.141084, i64 64
  %i.bai = load <16 x i16>, ptr %i.bah, align 32, !tbaa !50 ; 2 uses
  %i.baj = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bai, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bak = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bai, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bal = shufflevector <16 x i16> %i.baj, <16 x i16> %i.bak, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bam = shufflevector <16 x i16> %i.baj, <16 x i16> %i.bak, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ban = bitcast <16 x i16> %i.bal to <8 x i32>
  %i.bao = bitcast <16 x i16> %i.bam to <8 x i32>
  %i.bap = shufflevector <8 x i32> %i.ban, <8 x i32> %i.bao, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.baq = bitcast <16 x i32> %i.bap to <16 x float>
  %i.bar = getelementptr inbounds nuw i8, ptr %.141084, i64 96
  %i.bas = load <16 x i16>, ptr %i.bar, align 32, !tbaa !50 ; 2 uses
  %i.bat = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bas, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bau = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bas, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bav = shufflevector <16 x i16> %i.bat, <16 x i16> %i.bau, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.baw = shufflevector <16 x i16> %i.bat, <16 x i16> %i.bau, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bax = bitcast <16 x i16> %i.bav to <8 x i32>
  %i.bay = bitcast <16 x i16> %i.baw to <8 x i32>
  %i.baz = shufflevector <8 x i32> %i.bax, <8 x i32> %i.bay, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bba = bitcast <16 x i32> %i.baz to <16 x float>
  %i.bbb = getelementptr inbounds nuw i8, ptr %.141084, i64 128
  %i.bbc = load <16 x i16>, ptr %i.bbb, align 32, !tbaa !50 ; 2 uses
  %i.bbd = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bbc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bbe = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bbc, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bbf = shufflevector <16 x i16> %i.bbd, <16 x i16> %i.bbe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bbg = shufflevector <16 x i16> %i.bbd, <16 x i16> %i.bbe, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bbh = bitcast <16 x i16> %i.bbf to <8 x i32>
  %i.bbi = bitcast <16 x i16> %i.bbg to <8 x i32>
  %i.bbj = shufflevector <8 x i32> %i.bbh, <8 x i32> %i.bbi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bbk = bitcast <16 x i32> %i.bbj to <16 x float>
  %i.bbl = getelementptr inbounds nuw i8, ptr %.141084, i64 160
  %i.bbm = load <16 x i16>, ptr %i.bbl, align 32, !tbaa !50 ; 2 uses
  %i.bbn = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bbm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bbo = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bbm, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bbp = shufflevector <16 x i16> %i.bbn, <16 x i16> %i.bbo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bbq = shufflevector <16 x i16> %i.bbn, <16 x i16> %i.bbo, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bbr = bitcast <16 x i16> %i.bbp to <8 x i32>
  %i.bbs = bitcast <16 x i16> %i.bbq to <8 x i32>
  %i.bbt = shufflevector <8 x i32> %i.bbr, <8 x i32> %i.bbs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bbu = bitcast <16 x i32> %i.bbt to <16 x float>
  %i.bbv = getelementptr inbounds nuw i8, ptr %.141084, i64 192
  %i.bbw = load <16 x i16>, ptr %i.bbv, align 32, !tbaa !50 ; 2 uses
  %i.bbx = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bbw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bby = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bbw, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bbz = shufflevector <16 x i16> %i.bbx, <16 x i16> %i.bby, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bca = shufflevector <16 x i16> %i.bbx, <16 x i16> %i.bby, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bcb = bitcast <16 x i16> %i.bbz to <8 x i32>
  %i.bcc = bitcast <16 x i16> %i.bca to <8 x i32>
  %i.bcd = shufflevector <8 x i32> %i.bcb, <8 x i32> %i.bcc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bce = bitcast <16 x i32> %i.bcd to <16 x float>
  %i.bcf = getelementptr inbounds nuw i8, ptr %.141084, i64 224
  %i.bcg = load <16 x i16>, ptr %i.bcf, align 32, !tbaa !50 ; 2 uses
  %i.bch = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bcg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bci = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bcg, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bcj = shufflevector <16 x i16> %i.bch, <16 x i16> %i.bci, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bck = shufflevector <16 x i16> %i.bch, <16 x i16> %i.bci, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bcl = bitcast <16 x i16> %i.bcj to <8 x i32>
  %i.bcm = bitcast <16 x i16> %i.bck to <8 x i32>
  %i.bcn = shufflevector <8 x i32> %i.bcl, <8 x i32> %i.bcm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bco = bitcast <16 x i32> %i.bcn to <16 x float>
  %i.bcp = load i16, ptr %.41085, align 2, !tbaa !350
  %i.bcq = zext i16 %i.bcp to i32
  %i.bcr = shl nuw i32 %i.bcq, 16
  %i.bcs = insertelement <16 x i32> poison, i32 %i.bcr, i64 0
  %i.bct = bitcast <16 x i32> %i.bcs to <16 x float>
  %i.bcu = shufflevector <16 x float> %i.bct, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bcv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.azw, <16 x float> nofpclass(nan inf) %i.bcu, <16 x float> nofpclass(nan inf) %.159481080)
  %i.bcw = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.ayz
  %i.bcx = load i16, ptr %i.bcw, align 2, !tbaa !350
  %i.bcy = zext i16 %i.bcx to i32
  %i.bcz = shl nuw i32 %i.bcy, 16
  %i.bda = insertelement <16 x i32> poison, i32 %i.bcz, i64 0
  %i.bdb = bitcast <16 x i32> %i.bda to <16 x float>
  %i.bdc = shufflevector <16 x float> %i.bdb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bdd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bag, <16 x float> nofpclass(nan inf) %i.bdc, <16 x float> nofpclass(nan inf) %.146361081)
  %i.bde = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.azb
  %i.bdf = load i16, ptr %i.bde, align 2, !tbaa !350
  %i.bdg = zext i16 %i.bdf to i32
  %i.bdh = shl nuw i32 %i.bdg, 16
  %i.bdi = insertelement <16 x i32> poison, i32 %i.bdh, i64 0
  %i.bdj = bitcast <16 x i32> %i.bdi to <16 x float>
  %i.bdk = shufflevector <16 x float> %i.bdj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bdl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.baq, <16 x float> nofpclass(nan inf) %i.bdk, <16 x float> nofpclass(nan inf) %.146151082)
  %i.bdm = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.azd
  %i.bdn = load i16, ptr %i.bdm, align 2, !tbaa !350
  %i.bdo = zext i16 %i.bdn to i32
  %i.bdp = shl nuw i32 %i.bdo, 16
  %i.bdq = insertelement <16 x i32> poison, i32 %i.bdp, i64 0
  %i.bdr = bitcast <16 x i32> %i.bdq to <16 x float>
  %i.bds = shufflevector <16 x float> %i.bdr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bdt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bba, <16 x float> nofpclass(nan inf) %i.bds, <16 x float> nofpclass(nan inf) %.145941083)
  %i.bdu = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.azf
  %i.bdv = load i16, ptr %i.bdu, align 2, !tbaa !350
  %i.bdw = zext i16 %i.bdv to i32
  %i.bdx = shl nuw i32 %i.bdw, 16
  %i.bdy = insertelement <16 x i32> poison, i32 %i.bdx, i64 0
  %i.bdz = bitcast <16 x i32> %i.bdy to <16 x float>
  %i.bea = shufflevector <16 x float> %i.bdz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.beb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bbk, <16 x float> nofpclass(nan inf) %i.bea, <16 x float> nofpclass(nan inf) %i.bcv) ; 2 uses
  %i.bec = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.azh
  %i.bed = load i16, ptr %i.bec, align 2, !tbaa !350
  %i.bee = zext i16 %i.bed to i32
  %i.bef = shl nuw i32 %i.bee, 16
  %i.beg = insertelement <16 x i32> poison, i32 %i.bef, i64 0
  %i.beh = bitcast <16 x i32> %i.beg to <16 x float>
  %i.bei = shufflevector <16 x float> %i.beh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bej = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bbu, <16 x float> nofpclass(nan inf) %i.bei, <16 x float> nofpclass(nan inf) %i.bdd) ; 2 uses
  %i.bek = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.azj
  %i.bel = load i16, ptr %i.bek, align 2, !tbaa !350
  %i.bem = zext i16 %i.bel to i32
  %i.ben = shl nuw i32 %i.bem, 16
  %i.beo = insertelement <16 x i32> poison, i32 %i.ben, i64 0
  %i.bep = bitcast <16 x i32> %i.beo to <16 x float>
  %i.beq = shufflevector <16 x float> %i.bep, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ber = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bce, <16 x float> nofpclass(nan inf) %i.beq, <16 x float> nofpclass(nan inf) %i.bdl) ; 2 uses
  %i.bes = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.azl
  %i.bet = load i16, ptr %i.bes, align 2, !tbaa !350
  %i.beu = zext i16 %i.bet to i32
  %i.bev = shl nuw i32 %i.beu, 16
  %i.bew = insertelement <16 x i32> poison, i32 %i.bev, i64 0
  %i.bex = bitcast <16 x i32> %i.bew to <16 x float>
  %i.bey = shufflevector <16 x float> %i.bex, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bez = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bco, <16 x float> nofpclass(nan inf) %i.bey, <16 x float> nofpclass(nan inf) %i.bdt) ; 2 uses
  %i.bfa = getelementptr inbounds [2 x i8], ptr %.41085, i64 %i.azn
  %i.bfb = getelementptr inbounds nuw i8, ptr %.141084, i64 256
  %i.bfc = add nuw nsw i32 %.05481086, 1          ; 2 uses
  %exitcond1287.not = icmp eq i32 %i.bfc, %i.ayw
  br i1 %exitcond1287.not, label %.loopexit967.loopexit, label %bb.p, !llvm.loop !500

.loopexit967.loopexit:                            ; preds = %bb.p
  %scevgep1285 = getelementptr i8, ptr %.91097, i64 256
  %i.bfd = add nsw i32 %i.ayw, -1
  %i.bfe = zext nneg i32 %i.bfd to i64
  %i.bff = shl nuw nsw i64 %i.bfe, 8
  %scevgep1286 = getelementptr i8, ptr %scevgep1285, i64 %i.bff
  br label %.loopexit967

.loopexit967:                                     ; preds = %.preheader969, %.loopexit970.loopexit, %bb.n, %.loopexit968.loopexit, %.loopexit967.loopexit, %.preheader966, %.loopexit968
  %.16949 = phi nsz <16 x float> [ %.109431093, %.loopexit968 ], [ %.109431093, %.preheader966 ], [ %i.beb, %.loopexit967.loopexit ], [ %.109431093, %bb.n ], [ %i.ayf, %.loopexit968.loopexit ], [ %i.atn, %.loopexit970.loopexit ], [ %.109431093, %.preheader969 ] ; 2 uses
  %.15637 = phi nsz <16 x float> [ %.96311094, %.loopexit968 ], [ %.96311094, %.preheader966 ], [ %i.bej, %.loopexit967.loopexit ], [ %.96311094, %bb.n ], [ %i.ayi, %.loopexit968.loopexit ], [ %i.atq, %.loopexit970.loopexit ], [ %.96311094, %.preheader969 ] ; 2 uses
  %.15616 = phi nsz <16 x float> [ %.96101095, %.loopexit968 ], [ %.96101095, %.preheader966 ], [ %i.ber, %.loopexit967.loopexit ], [ %.96101095, %bb.n ], [ %i.ayl, %.loopexit968.loopexit ], [ %i.att, %.loopexit970.loopexit ], [ %.96101095, %.preheader969 ] ; 2 uses
  %.15595 = phi nsz <16 x float> [ %.95891096, %.loopexit968 ], [ %.95891096, %.preheader966 ], [ %i.bez, %.loopexit967.loopexit ], [ %.95891096, %bb.n ], [ %i.ayo, %.loopexit968.loopexit ], [ %i.atw, %.loopexit970.loopexit ], [ %.95891096, %.preheader969 ] ; 2 uses
  %.15 = phi ptr [ %.91097, %.loopexit968 ], [ %.91097, %.preheader966 ], [ %scevgep1286, %.loopexit967.loopexit ], [ %.91097, %bb.n ], [ %scevgep1283, %.loopexit968.loopexit ], [ %scevgep1280, %.loopexit970.loopexit ], [ %.91097, %.preheader969 ] ; 2 uses
  %i.bfg = add nuw nsw i32 %.15691098, 8          ; 3 uses
  %i.bfh = or disjoint i32 %i.bfg, 7
  %i.bfi = icmp slt i32 %i.bfh, %i.ab
  br i1 %i.bfi, label %bb.l, label %.preheader979, !llvm.loop !501

.preheader978:                                    ; preds = %.loopexit, %.preheader979
  %.17950.lcssa = phi <16 x float> [ %.10943.lcssa, %.preheader979 ], [ %.21954, %.loopexit ] ; 3 uses
  %.16638.lcssa = phi <16 x float> [ %.9631.lcssa, %.preheader979 ], [ %.20642, %.loopexit ] ; 3 uses
  %.16617.lcssa = phi <16 x float> [ %.9610.lcssa, %.preheader979 ], [ %.20621, %.loopexit ]
  %.16596.lcssa = phi <16 x float> [ %.9589.lcssa, %.preheader979 ], [ %.20600, %.loopexit ]
  %.16.lcssa = phi ptr [ %.9.lcssa, %.preheader979 ], [ %.20, %.loopexit ] ; 3 uses
  %.2570.lcssa = phi i32 [ %.1569.lcssa, %.preheader979 ], [ %i.bnr, %.loopexit ] ; 5 uses
  %i.bfj = or disjoint i32 %.2570.lcssa, 1
  %i.bfk = icmp slt i32 %i.bfj, %i.ab
  br i1 %i.bfk, label %.lr.ph1167, label %.preheader977

.lr.ph1167:                                       ; preds = %.preheader978
  %i.bfl = load ptr, ptr %3, align 8, !tbaa !18
  %i.bfm = load i32, ptr %i.s, align 4, !tbaa !179
  %i.bfn = sext i32 %i.bfm to i64
  %i.bfo = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul1172 = mul i64 %i.bfo, %i.bfn
  %i.bfp = load i32, ptr %7, align 4, !tbaa !184
  %i.bfq = mul nsw i32 %i.bfp, %.06451199
  %i.bfr = sext i32 %i.bfq to i64
  %invariant.gep1174 = getelementptr [2 x i8], ptr %i.bfl, i64 %i.bfr
  %i.bfs = load i32, ptr %8, align 4, !tbaa !184  ; 3 uses
  %i.bft = icmp sgt i32 %i.bfs, 0
  br i1 %i.bft, label %.lr.ph1167.split.us, label %.lr.ph1167.split.preheader

.lr.ph1167.split.preheader:                       ; preds = %.lr.ph1167
  %i.bfu = add i32 %.2570.lcssa, 2
  %i.bfv = sub i32 %14, %.2570.lcssa
  %i.bfw = and i32 %i.bfv, -2
  %i.bfx = add i32 %i.bfu, %i.bfw
  br label %.preheader977

.lr.ph1167.split.us:                              ; preds = %.lr.ph1167
  %i.bfy = load i32, ptr %10, align 4, !tbaa !184
  %i.bfz = sext i32 %i.bfy to i64
  %i.bga = load i32, ptr %9, align 4, !tbaa !184
  %i.bgb = sext i32 %i.bga to i64
  %i.bgc = add nsw i32 %i.bfs, -1
  %i.bgd = zext nneg i32 %i.bgc to i64
  %i.bge = shl nuw nsw i64 %i.bgd, 6
  %i.bgf = zext i32 %.2570.lcssa to i64
  br label %.lr.ph1159.us

.lr.ph1159.us:                                    ; preds = %._crit_edge.us, %.lr.ph1167.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ %i.bgf, %.lr.ph1167.split.us ] ; 2 uses
  %.211165.us = phi ptr [ %scevgep1295, %._crit_edge.us ], [ %.16.lcssa, %.lr.ph1167.split.us ] ; 2 uses
  %.216431164.us = phi <16 x float> [ %i.bhn, %._crit_edge.us ], [ %.16638.lcssa, %.lr.ph1167.split.us ]
  %.229551163.us = phi <16 x float> [ %i.bhf, %._crit_edge.us ], [ %.17950.lcssa, %.lr.ph1167.split.us ]
  %.reass1173.us = mul i64 %factor.op.mul1172, %indvars.iv
  %gep1175.us = getelementptr i8, ptr %invariant.gep1174, i64 %.reass1173.us
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1159.us, %bb.q
  %.05431158.us = phi i32 [ 0, %.lr.ph1159.us ], [ %i.bhq, %bb.q ]
  %.05441157.us = phi ptr [ %gep1175.us, %.lr.ph1159.us ], [ %i.bho, %bb.q ] ; 3 uses
  %.221156.us = phi ptr [ %.211165.us, %.lr.ph1159.us ], [ %i.bhp, %bb.q ] ; 3 uses
  %.226441155.us = phi <16 x float> [ %.216431164.us, %.lr.ph1159.us ], [ %i.bhn, %bb.q ]
  %.239561154.us = phi <16 x float> [ %.229551163.us, %.lr.ph1159.us ], [ %i.bhf, %bb.q ]
  %i.bgg = load <16 x i16>, ptr %.221156.us, align 32, !tbaa !50 ; 2 uses
  %i.bgh = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bgg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bgi = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bgg, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bgj = shufflevector <16 x i16> %i.bgh, <16 x i16> %i.bgi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bgk = shufflevector <16 x i16> %i.bgh, <16 x i16> %i.bgi, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bgl = bitcast <16 x i16> %i.bgj to <8 x i32>
  %i.bgm = bitcast <16 x i16> %i.bgk to <8 x i32>
  %i.bgn = shufflevector <8 x i32> %i.bgl, <8 x i32> %i.bgm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgo = bitcast <16 x i32> %i.bgn to <16 x float>
  %i.bgp = getelementptr inbounds nuw i8, ptr %.221156.us, i64 32
  %i.bgq = load <16 x i16>, ptr %i.bgp, align 32, !tbaa !50 ; 2 uses
  %i.bgr = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bgq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bgs = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bgq, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bgt = shufflevector <16 x i16> %i.bgr, <16 x i16> %i.bgs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bgu = shufflevector <16 x i16> %i.bgr, <16 x i16> %i.bgs, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bgv = bitcast <16 x i16> %i.bgt to <8 x i32>
  %i.bgw = bitcast <16 x i16> %i.bgu to <8 x i32>
  %i.bgx = shufflevector <8 x i32> %i.bgv, <8 x i32> %i.bgw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgy = bitcast <16 x i32> %i.bgx to <16 x float>
  %i.bgz = load i16, ptr %.05441157.us, align 2, !tbaa !350
  %i.bha = zext i16 %i.bgz to i32
  %i.bhb = shl nuw i32 %i.bha, 16
  %i.bhc = insertelement <16 x i32> poison, i32 %i.bhb, i64 0
  %i.bhd = bitcast <16 x i32> %i.bhc to <16 x float>
  %i.bhe = shufflevector <16 x float> %i.bhd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bhf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bgo, <16 x float> nofpclass(nan inf) %i.bhe, <16 x float> nofpclass(nan inf) %.239561154.us) ; 3 uses
  %i.bhg = getelementptr inbounds [2 x i8], ptr %.05441157.us, i64 %i.bfz
  %i.bhh = load i16, ptr %i.bhg, align 2, !tbaa !350
  %i.bhi = zext i16 %i.bhh to i32
  %i.bhj = shl nuw i32 %i.bhi, 16
  %i.bhk = insertelement <16 x i32> poison, i32 %i.bhj, i64 0
  %i.bhl = bitcast <16 x i32> %i.bhk to <16 x float>
  %i.bhm = shufflevector <16 x float> %i.bhl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bhn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bgy, <16 x float> nofpclass(nan inf) %i.bhm, <16 x float> nofpclass(nan inf) %.226441155.us) ; 3 uses
  %i.bho = getelementptr inbounds [2 x i8], ptr %.05441157.us, i64 %i.bgb
  %i.bhp = getelementptr inbounds nuw i8, ptr %.221156.us, i64 64
  %i.bhq = add nuw nsw i32 %.05431158.us, 1       ; 2 uses
  %exitcond1296.not = icmp eq i32 %i.bhq, %i.bfs
  br i1 %exitcond1296.not, label %._crit_edge.us, label %bb.q, !llvm.loop !502

._crit_edge.us:                                   ; preds = %bb.q
  %scevgep1294 = getelementptr i8, ptr %.211165.us, i64 64
  %scevgep1295 = getelementptr i8, ptr %scevgep1294, i64 %i.bge ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bhr = trunc i64 %indvars.iv.next to i32
  %i.bhs = or i32 %i.bhr, 1
  %i.bht = icmp slt i32 %i.bhs, %i.ab
  br i1 %i.bht, label %.lr.ph1159.us, label %.preheader977.loopexit, !llvm.loop !503

bb.r:                                             ; preds = %.lr.ph1143, %.loopexit
  %.25701142 = phi i32 [ %.1569.lcssa, %.lr.ph1143 ], [ %i.bnr, %.loopexit ] ; 2 uses
  %.161141 = phi ptr [ %.9.lcssa, %.lr.ph1143 ], [ %.20, %.loopexit ] ; 7 uses
  %.165961140 = phi <16 x float> [ %.9589.lcssa, %.lr.ph1143 ], [ %.20600, %.loopexit ] ; 5 uses
  %.166171139 = phi <16 x float> [ %.9610.lcssa, %.lr.ph1143 ], [ %.20621, %.loopexit ] ; 5 uses
  %.166381138 = phi <16 x float> [ %.9631.lcssa, %.lr.ph1143 ], [ %.20642, %.loopexit ] ; 5 uses
  %.179501137 = phi <16 x float> [ %.10943.lcssa, %.lr.ph1143 ], [ %.21954, %.loopexit ] ; 5 uses
  %i.bhu = sdiv i32 %.25701142, %i.z
  %i.bhv = sext i32 %i.bhu to i64
  %.reass1151 = mul i64 %factor.op.mul1150, %i.bhv
  %gep1153 = getelementptr i8, ptr %invariant.gep1152, i64 %.reass1151 ; 2 uses
  br i1 %i.ar, label %.preheader964, label %.loopexit965

.preheader964:                                    ; preds = %bb.r
  %i.bhw = load i32, ptr %8, align 4, !tbaa !184  ; 3 uses
  %i.bhx = icmp sgt i32 %i.bhw, 0
  br i1 %i.bhx, label %.lr.ph1117, label %.loopexit

.lr.ph1117:                                       ; preds = %.preheader964
  %i.bhy = load i32, ptr %9, align 4, !tbaa !184
  %i.bhz = shl nsw i32 %i.bhy, 2
  %i.bia = sext i32 %i.bhz to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph1117, %bb.s
  %.05461116 = phi i32 [ 0, %.lr.ph1117 ], [ %i.bkf, %bb.s ]
  %.05471115 = phi ptr [ %gep1153, %.lr.ph1117 ], [ %i.bkd, %bb.s ] ; 2 uses
  %.171114 = phi ptr [ %.161141, %.lr.ph1117 ], [ %i.bke, %bb.s ] ; 5 uses
  %.175971113 = phi <16 x float> [ %.165961140, %.lr.ph1117 ], [ %i.bkc, %bb.s ]
  %.176181112 = phi <16 x float> [ %.166171139, %.lr.ph1117 ], [ %i.bjz, %bb.s ]
  %.176391111 = phi <16 x float> [ %.166381138, %.lr.ph1117 ], [ %i.bjw, %bb.s ]
  %.189511110 = phi <16 x float> [ %.179501137, %.lr.ph1117 ], [ %i.bjt, %bb.s ]
  %i.bib = load <16 x i16>, ptr %.171114, align 32, !tbaa !50 ; 2 uses
  %i.bic = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bib, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bid = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bib, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bie = shufflevector <16 x i16> %i.bic, <16 x i16> %i.bid, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bif = shufflevector <16 x i16> %i.bic, <16 x i16> %i.bid, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.big = bitcast <16 x i16> %i.bie to <8 x i32>
  %i.bih = bitcast <16 x i16> %i.bif to <8 x i32>
  %i.bii = shufflevector <8 x i32> %i.big, <8 x i32> %i.bih, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bij = bitcast <16 x i32> %i.bii to <16 x float>
  %i.bik = getelementptr inbounds nuw i8, ptr %.171114, i64 32
  %i.bil = load <16 x i16>, ptr %i.bik, align 32, !tbaa !50 ; 2 uses
  %i.bim = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bil, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bin = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bil, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bio = shufflevector <16 x i16> %i.bim, <16 x i16> %i.bin, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bip = shufflevector <16 x i16> %i.bim, <16 x i16> %i.bin, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.biq = bitcast <16 x i16> %i.bio to <8 x i32>
  %i.bir = bitcast <16 x i16> %i.bip to <8 x i32>
  %i.bis = shufflevector <8 x i32> %i.biq, <8 x i32> %i.bir, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bit = bitcast <16 x i32> %i.bis to <16 x float>
  %i.biu = getelementptr inbounds nuw i8, ptr %.171114, i64 64
  %i.biv = load <16 x i16>, ptr %i.biu, align 32, !tbaa !50 ; 2 uses
  %i.biw = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.biv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bix = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.biv, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.biy = shufflevector <16 x i16> %i.biw, <16 x i16> %i.bix, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.biz = shufflevector <16 x i16> %i.biw, <16 x i16> %i.bix, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bja = bitcast <16 x i16> %i.biy to <8 x i32>
  %i.bjb = bitcast <16 x i16> %i.biz to <8 x i32>
  %i.bjc = shufflevector <8 x i32> %i.bja, <8 x i32> %i.bjb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bjd = bitcast <16 x i32> %i.bjc to <16 x float>
  %i.bje = getelementptr inbounds nuw i8, ptr %.171114, i64 96
  %i.bjf = load <16 x i16>, ptr %i.bje, align 32, !tbaa !50 ; 2 uses
  %i.bjg = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bjf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bjh = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bjf, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bji = shufflevector <16 x i16> %i.bjg, <16 x i16> %i.bjh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bjj = shufflevector <16 x i16> %i.bjg, <16 x i16> %i.bjh, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bjk = bitcast <16 x i16> %i.bji to <8 x i32>
  %i.bjl = bitcast <16 x i16> %i.bjj to <8 x i32>
  %i.bjm = shufflevector <8 x i32> %i.bjk, <8 x i32> %i.bjl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bjn = bitcast <16 x i32> %i.bjm to <16 x float>
  %i.bjo = load <4 x i16>, ptr %.05471115, align 2, !tbaa !350
  %i.bjp = zext <4 x i16> %i.bjo to <4 x i32>
  %i.bjq = shl nuw <4 x i32> %i.bjp, splat (i32 16) ; 4 uses
  %i.bjr = bitcast <4 x i32> %i.bjq to <4 x float>
  %i.bjs = shufflevector <4 x float> %i.bjr, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bjt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bij, <16 x float> nofpclass(nan inf) %i.bjs, <16 x float> nofpclass(nan inf) %.189511110) ; 2 uses
  %i.bju = bitcast <4 x i32> %i.bjq to <4 x float>
  %i.bjv = shufflevector <4 x float> %i.bju, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bjw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bit, <16 x float> nofpclass(nan inf) %i.bjv, <16 x float> nofpclass(nan inf) %.176391111) ; 2 uses
  %i.bjx = bitcast <4 x i32> %i.bjq to <4 x float>
  %i.bjy = shufflevector <4 x float> %i.bjx, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.bjz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bjd, <16 x float> nofpclass(nan inf) %i.bjy, <16 x float> nofpclass(nan inf) %.176181112) ; 2 uses
  %i.bka = bitcast <4 x i32> %i.bjq to <4 x float>
  %i.bkb = shufflevector <4 x float> %i.bka, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.bkc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bjn, <16 x float> nofpclass(nan inf) %i.bkb, <16 x float> nofpclass(nan inf) %.175971113) ; 2 uses
  %i.bkd = getelementptr inbounds [2 x i8], ptr %.05471115, i64 %i.bia
  %i.bke = getelementptr inbounds nuw i8, ptr %.171114, i64 128
  %i.bkf = add nuw nsw i32 %.05461116, 1          ; 2 uses
  %exitcond1290.not = icmp eq i32 %i.bkf, %i.bhw
  br i1 %exitcond1290.not, label %.loopexit965.loopexit, label %bb.s, !llvm.loop !504

.loopexit965.loopexit:                            ; preds = %bb.s
  %scevgep1288 = getelementptr i8, ptr %.161141, i64 128
  %i.bkg = add nsw i32 %i.bhw, -1
  %i.bkh = zext nneg i32 %i.bkg to i64
  %i.bki = shl nuw nsw i64 %i.bkh, 7
  %scevgep1289 = getelementptr i8, ptr %scevgep1288, i64 %i.bki
  br label %.loopexit

.loopexit965:                                     ; preds = %bb.r
  br i1 %i.as, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit965
  %i.bkj = load i32, ptr %8, align 4, !tbaa !184  ; 3 uses
  %i.bkk = icmp sgt i32 %i.bkj, 0
  br i1 %i.bkk, label %.lr.ph1131, label %.loopexit

.lr.ph1131:                                       ; preds = %.preheader
  %i.bkl = load i32, ptr %10, align 4, !tbaa !184 ; 3 uses
  %i.bkm = sext i32 %i.bkl to i64
  %i.bkn = shl nsw i32 %i.bkl, 1
  %i.bko = sext i32 %i.bkn to i64
  %i.bkp = mul nsw i32 %i.bkl, 3
  %i.bkq = sext i32 %i.bkp to i64
  %i.bkr = load i32, ptr %9, align 4, !tbaa !184
  %i.bks = sext i32 %i.bkr to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph1131, %bb.t
  %.05451130 = phi i32 [ 0, %.lr.ph1131 ], [ %i.bnn, %bb.t ]
end_hunk_16
begin_hunk_17_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit:  ; preds = %bb.x, %.noexc657, %.noexc656, %bb.w, %.noexc655, %bb.v, %._crit_edge1190
  %.0.i = phi nsz <16 x float> [ %i.bus, %bb.x ], [ %i.bpk, %bb.v ], [ %i.bpr, %.noexc655 ], [ %i.bqb, %bb.w ], [ %i.brb, %.noexc656 ], [ %i.bug, %.noexc657 ], [ %i.bpi, %._crit_edge1190 ] ; 8 uses
  br i1 %i.au, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split, label %.thread962

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split: ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit
  switch i32 %i.av, label %.thread962 [
    i32 4, label %.thread
    i32 3, label %bb.y
    i32 2, label %bb.z
    i32 0, label %bb.aa
  ]

.thread:                                          ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %i.but = bitcast <16 x float> %.0.i to <16 x i32>
  %i.buu = lshr <16 x i32> %i.but, splat (i32 16) ; 2 uses
  %i.buv = shufflevector <16 x i32> %i.buu, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.buw = shufflevector <16 x i32> %i.buu, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bux = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.buv, <8 x i32> %i.buw)
  %i.buy = bitcast <16 x i16> %i.bux to <4 x i64>
  %i.buz = shufflevector <4 x i64> %i.buy, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.buz, ptr %.06461198, align 32, !tbaa !50
  %i.bva = getelementptr inbounds nuw i8, ptr %.06461198, i64 32
  br label %.thread962

bb.y:                                             ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %i.bvb = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bvc = shufflevector <16 x i32> %i.bvb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bvd = lshr <8 x i32> %i.bvc, splat (i32 16)  ; 2 uses
  %i.bve = shufflevector <8 x i32> %i.bvd, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bvf = shufflevector <8 x i32> %i.bvd, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bvg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bve, <4 x i32> %i.bvf)
  store <8 x i16> %i.bvg, ptr %.06461198, align 16, !tbaa !50
  %i.bvh = load i32, ptr %13, align 4, !tbaa !184
  %i.bvi = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bvj = shufflevector <16 x i32> %i.bvi, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bvk = lshr <8 x i32> %i.bvj, splat (i32 16)  ; 2 uses
  %i.bvl = shufflevector <8 x i32> %i.bvk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bvm = shufflevector <8 x i32> %i.bvk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bvn = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bvl, <4 x i32> %i.bvm)
  %i.bvo = sext i32 %i.bvh to i64
  %i.bvp = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.bvo
  store <8 x i16> %i.bvn, ptr %i.bvp, align 16, !tbaa !50
  %i.bvq = getelementptr inbounds nuw i8, ptr %.06461198, i64 16
  br label %.thread962

bb.z:                                             ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %i.bvr = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bvs = shufflevector <16 x i32> %i.bvr, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bvt = lshr <4 x i32> %i.bvs, splat (i32 16)
  %i.bvu = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bvv = shufflevector <16 x i32> %i.bvu, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bvw = lshr <4 x i32> %i.bvv, splat (i32 16)
  %i.bvx = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bvt, <4 x i32> %i.bvw)
  %i.bvy = bitcast <8 x i16> %i.bvx to <2 x i64>  ; 2 uses
  %i.bvz = extractelement <2 x i64> %i.bvy, i64 0
  store i64 %i.bvz, ptr %.06461198, align 1, !tbaa !50
  %i.bwa = load i32, ptr %13, align 4, !tbaa !184
  %i.bwb = sext i32 %i.bwa to i64
  %i.bwc = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.bwb
  %i.bwd = extractelement <2 x i64> %i.bvy, i64 1
  store i64 %i.bwd, ptr %i.bwc, align 1, !tbaa !50
  %i.bwe = load i32, ptr %13, align 4, !tbaa !184
  %i.bwf = shl nsw i32 %i.bwe, 1
  %i.bwg = sext i32 %i.bwf to i64
  %i.bwh = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.bwg
  %i.bwi = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bwj = shufflevector <16 x i32> %i.bwi, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bwk = lshr <4 x i32> %i.bwj, splat (i32 16)
  %i.bwl = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bwm = shufflevector <16 x i32> %i.bwl, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bwn = lshr <4 x i32> %i.bwm, splat (i32 16)
  %i.bwo = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bwk, <4 x i32> %i.bwn)
  %i.bwp = bitcast <8 x i16> %i.bwo to <2 x i64>  ; 2 uses
  %i.bwq = extractelement <2 x i64> %i.bwp, i64 0
  store i64 %i.bwq, ptr %i.bwh, align 1, !tbaa !50
  %i.bwr = load i32, ptr %13, align 4, !tbaa !184
  %i.bws = mul nsw i32 %i.bwr, 3
  %i.bwt = sext i32 %i.bws to i64
  %i.bwu = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.bwt
  %i.bwv = extractelement <2 x i64> %i.bwp, i64 1
  store i64 %i.bwv, ptr %i.bwu, align 1, !tbaa !50
  %i.bww = getelementptr inbounds nuw i8, ptr %.06461198, i64 8
  br label %.thread962

bb.aa:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %i.bwx = bitcast <16 x float> %.0.i to <32 x i16> ; 16 uses
  %i.bwy = extractelement <32 x i16> %i.bwx, i64 1
  store i16 %i.bwy, ptr %.06461198, align 2, !tbaa !350
  %i.bwz = extractelement <32 x i16> %i.bwx, i64 3
  %i.bxa = load i32, ptr %13, align 4, !tbaa !184 ; 15 uses
  %i.bxb = sext i32 %i.bxa to i64
  %i.bxc = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.bxb
  store i16 %i.bwz, ptr %i.bxc, align 2, !tbaa !350
  %i.bxd = extractelement <32 x i16> %i.bwx, i64 5
  %i.bxe = shl nsw i32 %i.bxa, 1
  %i.bxf = sext i32 %i.bxe to i64
  %i.bxg = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.bxf
  store i16 %i.bxd, ptr %i.bxg, align 2, !tbaa !350
  %i.bxh = extractelement <32 x i16> %i.bwx, i64 7
  %i.bxi = mul nsw i32 %i.bxa, 3
  %i.bxj = sext i32 %i.bxi to i64
  %i.bxk = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.bxj
  store i16 %i.bxh, ptr %i.bxk, align 2, !tbaa !350
  %i.bxl = extractelement <32 x i16> %i.bwx, i64 9
  %i.bxm = shl nsw i32 %i.bxa, 2
  %i.bxn = sext i32 %i.bxm to i64
  %i.bxo = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.bxn
  store i16 %i.bxl, ptr %i.bxo, align 2, !tbaa !350
  %i.bxp = extractelement <32 x i16> %i.bwx, i64 11
  %i.bxq = mul nsw i32 %i.bxa, 5
  %i.bxr = sext i32 %i.bxq to i64
  %i.bxs = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.bxr
  store i16 %i.bxp, ptr %i.bxs, align 2, !tbaa !350
  %i.bxt = extractelement <32 x i16> %i.bwx, i64 13
  %i.bxu = mul nsw i32 %i.bxa, 6
  %i.bxv = sext i32 %i.bxu to i64
  %i.bxw = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.bxv
  store i16 %i.bxt, ptr %i.bxw, align 2, !tbaa !350
  %i.bxx = extractelement <32 x i16> %i.bwx, i64 15
  %i.bxy = mul nsw i32 %i.bxa, 7
  %i.bxz = sext i32 %i.bxy to i64
  %i.bya = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.bxz
  store i16 %i.bxx, ptr %i.bya, align 2, !tbaa !350
  %i.byb = extractelement <32 x i16> %i.bwx, i64 17
  %i.byc = shl nsw i32 %i.bxa, 3
  %i.byd = sext i32 %i.byc to i64
  %i.bye = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.byd
  store i16 %i.byb, ptr %i.bye, align 2, !tbaa !350
  %i.byf = extractelement <32 x i16> %i.bwx, i64 19
  %i.byg = mul nsw i32 %i.bxa, 9
  %i.byh = sext i32 %i.byg to i64
  %i.byi = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.byh
  store i16 %i.byf, ptr %i.byi, align 2, !tbaa !350
  %i.byj = extractelement <32 x i16> %i.bwx, i64 21
  %i.byk = mul nsw i32 %i.bxa, 10
  %i.byl = sext i32 %i.byk to i64
  %i.bym = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.byl
  store i16 %i.byj, ptr %i.bym, align 2, !tbaa !350
  %i.byn = extractelement <32 x i16> %i.bwx, i64 23
  %i.byo = mul nsw i32 %i.bxa, 11
  %i.byp = sext i32 %i.byo to i64
  %i.byq = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.byp
  store i16 %i.byn, ptr %i.byq, align 2, !tbaa !350
  %i.byr = extractelement <32 x i16> %i.bwx, i64 25
  %i.bys = mul nsw i32 %i.bxa, 12
  %i.byt = sext i32 %i.bys to i64
  %i.byu = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.byt
  store i16 %i.byr, ptr %i.byu, align 2, !tbaa !350
  %i.byv = extractelement <32 x i16> %i.bwx, i64 27
  %i.byw = mul nsw i32 %i.bxa, 13
  %i.byx = sext i32 %i.byw to i64
  %i.byy = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.byx
  store i16 %i.byv, ptr %i.byy, align 2, !tbaa !350
  %i.byz = extractelement <32 x i16> %i.bwx, i64 29
  %i.bza = mul nsw i32 %i.bxa, 14
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.bzb
  store i16 %i.byz, ptr %i.bzc, align 2, !tbaa !350
  %i.bzd = extractelement <32 x i16> %i.bwx, i64 31
  %i.bze = mul nsw i32 %i.bxa, 15
  %i.bzf = sext i32 %i.bze to i64
  %i.bzg = getelementptr inbounds [2 x i8], ptr %.06461198, i64 %i.bzf
  store i16 %i.bzd, ptr %i.bzg, align 2, !tbaa !350
  %i.bzh = getelementptr inbounds nuw i8, ptr %.06461198, i64 2
  br label %.thread962

.thread962:                                       ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split, %bb.y, %.thread, %bb.z, %bb.aa
  %.4650 = phi ptr [ %i.bzh, %bb.aa ], [ %.06461198, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split ], [ %i.bww, %bb.z ], [ %i.bva, %.thread ], [ %i.bvq, %bb.y ], [ %.06461198, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit ]
  %i.bzi = add nuw nsw i32 %.06451199, 1          ; 2 uses
  %exitcond1304.not = icmp eq i32 %i.bzi, %i.y
  br i1 %exitcond1304.not, label %._crit_edge, label %bb.c, !llvm.loop !509

._crit_edge1205:                                  ; preds = %._crit_edge, %.lr.ph1204, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge1205, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #13

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{ptr @_ZN4ncnn24Convolution1D_x86_avx512D2Ev}
!22 = !{!23, !6, i64 320}
!23 = !{!"_ZTSN4ncnn13Convolution1DE", !24, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !38, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !12, i64 248, !6, i64 320, !12, i64 328, !12, i64 400}
!24 = !{!"_ZTSN4ncnn5LayerE", !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !25, i64 15, !25, i64 16, !25, i64 17, !25, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !25, i64 22, !25, i64 23, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !26, i64 48, !26, i64 80, !29, i64 112, !29, i64 136, !33, i64 160, !33, i64 184}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !15, i64 8, !7, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!38 = !{!"float", !7, i64 0}
!39 = !{!40, !25, i64 32}
!40 = !{!"_ZTSN4ncnn6OptionE", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !25, i64 28, !25, i64 29, !25, i64 30, !25, i64 31, !25, i64 32, !25, i64 33, !25, i64 34, !25, i64 35, !25, i64 36, !25, i64 37, !25, i64 38, !25, i64 39, !6, i64 40, !25, i64 44, !25, i64 45, !25, i64 46, !25, i64 47, !7, i64 48, !25, i64 49, !25, i64 50, !25, i64 51, !25, i64 52, !25, i64 53, !25, i64 54, !25, i64 55, !25, i64 56, !25, i64 57, !25, i64 58, !25, i64 59, !25, i64 60, !25, i64 61, !25, i64 62, !25, i64 63}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!23, !6, i64 240}
!44 = !{!23, !6, i64 212}
!45 = !{!23, !6, i64 208}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!48 = distinct !{!48, !"_ZN4ncnn3Mat7channelEi"}
!49 = !{!12, !15, i64 16}
!50 = !{!7, !7, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = distinct !{!53, !52}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !52}
!56 = distinct !{!56, !52}
!57 = distinct !{!57, !52}
!58 = distinct !{!58, !52}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !52}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !52}
!64 = distinct !{!64, !52}
!65 = distinct !{!65, !52}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!68 = distinct !{!68, !"_ZN4ncnn3Mat7channelEi"}
!69 = distinct !{!69, !52}
!70 = distinct !{!70, !52}
!71 = distinct !{!71, !52}
!72 = distinct !{!72, !52}
!73 = distinct !{!73, !52}
!74 = distinct !{!74, !52}
!75 = distinct !{!75, !52}
!76 = distinct !{!76, !60}
!77 = distinct !{!77, !52}
!78 = distinct !{!78, !60}
!79 = distinct !{!79, !52}
!80 = distinct !{!80, !52}
!81 = distinct !{!81, !52}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!84 = distinct !{!84, !"_ZN4ncnn3Mat7channelEi"}
!85 = distinct !{!85, !52}
!86 = distinct !{!86, !52}
!87 = distinct !{!87, !52}
!88 = distinct !{!88, !52}
!89 = distinct !{!89, !52}
!90 = distinct !{!90, !52}
!91 = distinct !{!91, !52}
!92 = distinct !{!92, !60}
!93 = distinct !{!93, !52}
!94 = distinct !{!94, !60}
!95 = distinct !{!95, !52}
!96 = distinct !{!96, !52}
!97 = distinct !{!97, !52}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!100 = distinct !{!100, !"_ZN4ncnn3Mat7channelEi"}
!101 = distinct !{!101, !52}
!102 = distinct !{!102, !60}
!103 = distinct !{!103, !52}
!104 = distinct !{!104, !52}
!105 = distinct !{!105, !60}
!106 = distinct !{!106, !52}
!107 = distinct !{!107, !52}
!108 = distinct !{!108, !60}
!109 = distinct !{!109, !52}
!110 = !{!38, !38, i64 0}
!111 = !{!112}
!112 = distinct !{!112, !113}
!113 = distinct !{!113, !"LVerDomain"}
!114 = !{!115}
!115 = distinct !{!115, !113}
!116 = !{!117}
!117 = distinct !{!117, !113}
!118 = !{!119}
!119 = distinct !{!119, !113}
!120 = !{!121}
!121 = distinct !{!121, !113}
!122 = !{!119, !117, !115, !112}
!123 = distinct !{!123, !52, !124, !125}
!124 = !{!"llvm.loop.isvectorized", i32 1}
!125 = !{!"llvm.loop.unroll.runtime.disable"}
!126 = !{!"branch_weights", i32 4, i32 12}
!127 = distinct !{!127, !52, !124, !125}
!128 = distinct !{!128, !52, !124}
!129 = distinct !{!129, !52}
!130 = !{!131}
!131 = distinct !{!131, !132}
!132 = distinct !{!132, !"LVerDomain"}
!133 = !{!134}
!134 = distinct !{!134, !132}
!135 = !{!136}
!136 = distinct !{!136, !132}
!137 = !{!134, !131}
!138 = distinct !{!138, !52, !124, !125}
end_hunk_17
