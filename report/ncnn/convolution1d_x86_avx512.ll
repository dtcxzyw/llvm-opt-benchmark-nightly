Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.aks = getelementptr inbounds nuw i8, ptr %.812481747.us.i, i64 192
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %.312231752.us.i, i64 %indvars.iv2248.i
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 12 ; 2 uses
  %i.akv = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.aku, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.akv, ptr %i.aks, align 32, !tbaa !45
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.kh
  %i.akx = getelementptr inbounds nuw i8, ptr %.812481747.us.i, i64 224
  %i.aky = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.akw, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.aky, ptr %i.akx, align 32, !tbaa !45
  %i.akz = getelementptr inbounds nuw i8, ptr %.812481747.us.i, i64 256 ; 3 uses
  %indvars.iv.next2249.i.3 = add nuw nsw i64 %indvars.iv2248.i, 4 ; 2 uses
  %niter609.next.3 = add i64 %niter609, 4         ; 2 uses
  %niter609.ncmp.3 = icmp eq i64 %niter609.next.3, %unroll_iter608
  br i1 %niter609.ncmp.3, label %._crit_edge1748.us.i.unr-lcssa, label %.preheader1575.us.i.new, !llvm.loop !97

._crit_edge1748.us.i.unr-lcssa:                   ; preds = %.preheader1575.us.i.new
  br i1 %lcmp.mod605.not, label %._crit_edge1748.us.i, label %.epil.preheader602

.epil.preheader602:                               ; preds = %._crit_edge1748.us.i.unr-lcssa, %.preheader1575.us.i
  %indvars.iv2248.i.epil.init = phi i64 [ 0, %.preheader1575.us.i ], [ %indvars.iv.next2249.i.3, %._crit_edge1748.us.i.unr-lcssa ]
  %.812481747.us.i.epil.init = phi ptr [ %.712471751.us.i, %.preheader1575.us.i ], [ %i.akz, %._crit_edge1748.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod607)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.epil.preheader602
  %indvars.iv2248.i.epil = phi i64 [ %indvars.iv2248.i.epil.init, %.epil.preheader602 ], [ %indvars.iv.next2249.i.epil, %bb.bg ] ; 2 uses
  %.812481747.us.i.epil = phi ptr [ %.812481747.us.i.epil.init, %.epil.preheader602 ], [ %i.alf, %bb.bg ] ; 3 uses
  %epil.iter604 = phi i64 [ 0, %.epil.preheader602 ], [ %epil.iter604.next, %bb.bg ]
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %.312231752.us.i, i64 %indvars.iv2248.i.epil ; 2 uses
  %i.alb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ala, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.alb, ptr %.812481747.us.i.epil, align 32, !tbaa !45
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.ala, i64 %i.kh
  %i.ald = getelementptr inbounds nuw i8, ptr %.812481747.us.i.epil, i64 32
  %i.ale = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.alc, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ale, ptr %i.ald, align 32, !tbaa !45
  %i.alf = getelementptr inbounds nuw i8, ptr %.812481747.us.i.epil, i64 64 ; 2 uses
  %indvars.iv.next2249.i.epil = add nuw nsw i64 %indvars.iv2248.i.epil, 1
  %epil.iter604.next = add i64 %epil.iter604, 1   ; 2 uses
  %epil.iter604.cmp.not = icmp eq i64 %epil.iter604.next, %xtraiter603
  br i1 %epil.iter604.cmp.not, label %._crit_edge1748.us.i, label %bb.bg, !llvm.loop !98

._crit_edge1748.us.i:                             ; preds = %bb.bg, %._crit_edge1748.us.i.unr-lcssa
  %.lcssa561 = phi ptr [ %i.akz, %._crit_edge1748.us.i.unr-lcssa ], [ %i.alf, %bb.bg ] ; 2 uses
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %.312231752.us.i, i64 %i.kl ; 2 uses
  %i.alh = add nuw nsw i32 %.312551750.us.i, 2    ; 3 uses
  %i.ali = or disjoint i32 %i.alh, 1
  %i.alj = icmp slt i32 %i.ali, %i.r
  br i1 %i.alj, label %.preheader1575.us.i, label %.preheader1579.i, !llvm.loop !99

.preheader1579.i:                                 ; preds = %._crit_edge1748.us.i, %.preheader1580.i
  %.31255.lcssa.i = phi i32 [ %.21254.lcssa.i, %.preheader1580.i ], [ %i.alh, %._crit_edge1748.us.i ] ; 2 uses
  %.71247.lcssa.i = phi ptr [ %.41244.lcssa.i, %.preheader1580.i ], [ %.lcssa561, %._crit_edge1748.us.i ]
  %.31223.lcssa.i = phi ptr [ %.21222.lcssa.i, %.preheader1580.i ], [ %i.alg, %._crit_edge1748.us.i ] ; 9 uses
  %i.alk = icmp sge i32 %.31255.lcssa.i, %i.r
  %brmerge1998.i = or i1 %i.km, %i.alk
  br i1 %brmerge1998.i, label %._crit_edge1765.split.i, label %.preheader1574.i

.preheader1574.i:                                 ; preds = %.preheader1579.i, %._crit_edge1761.i
  %.1012501764.i = phi ptr [ %.lcssa564, %._crit_edge1761.i ], [ %.71247.lcssa.i, %.preheader1579.i ] ; 2 uses
  %.412561763.i = phi i32 [ %i.alo, %._crit_edge1761.i ], [ %.31255.lcssa.i, %.preheader1579.i ]
  br i1 %i.lf, label %.epil.preheader610, label %.preheader1574.i.new

._crit_edge1761.i.unr-lcssa:                      ; preds = %.preheader1574.i.new
  br i1 %lcmp.mod613.not, label %._crit_edge1761.i, label %.epil.preheader610

.epil.preheader610:                               ; preds = %._crit_edge1761.i.unr-lcssa, %.preheader1574.i
  %indvars.iv2253.i.epil.init = phi i64 [ 0, %.preheader1574.i ], [ %indvars.iv.next2254.i.7, %._crit_edge1761.i.unr-lcssa ]
  %.1112511760.i.epil.init = phi ptr [ %.1012501764.i, %.preheader1574.i ], [ %i.amt, %._crit_edge1761.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod615)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader610
  %indvars.iv2253.i.epil = phi i64 [ %indvars.iv2253.i.epil.init, %.epil.preheader610 ], [ %indvars.iv.next2254.i.epil, %bb.bh ] ; 2 uses
  %.1112511760.i.epil = phi ptr [ %.1112511760.i.epil.init, %.epil.preheader610 ], [ %i.aln, %bb.bh ] ; 2 uses
  %epil.iter612 = phi i64 [ 0, %.epil.preheader610 ], [ %epil.iter612.next, %bb.bh ]
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2253.i.epil
  %i.alm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.all, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.alm, ptr %.1112511760.i.epil, align 32, !tbaa !45
  %i.aln = getelementptr inbounds nuw i8, ptr %.1112511760.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2254.i.epil = add nuw nsw i64 %indvars.iv2253.i.epil, 1
  %epil.iter612.next = add i64 %epil.iter612, 1   ; 2 uses
  %epil.iter612.cmp.not = icmp eq i64 %epil.iter612.next, %xtraiter611
  br i1 %epil.iter612.cmp.not, label %._crit_edge1761.i, label %bb.bh, !llvm.loop !100

._crit_edge1761.i:                                ; preds = %bb.bh, %._crit_edge1761.i.unr-lcssa
  %.lcssa564 = phi ptr [ %i.amt, %._crit_edge1761.i.unr-lcssa ], [ %i.aln, %bb.bh ]
  %i.alo = add nuw nsw i32 %.412561763.i, 1       ; 2 uses
  %exitcond2258.not.i = icmp eq i32 %i.alo, %i.r
  br i1 %exitcond2258.not.i, label %._crit_edge1765.split.i, label %.preheader1574.i, !llvm.loop !101

.preheader1574.i.new:                             ; preds = %.preheader1574.i, %.preheader1574.i.new
  %indvars.iv2253.i = phi i64 [ %indvars.iv.next2254.i.7, %.preheader1574.i.new ], [ 0, %.preheader1574.i ] ; 9 uses
  %.1112511760.i = phi ptr [ %i.amt, %.preheader1574.i.new ], [ %.1012501764.i, %.preheader1574.i ] ; 9 uses
  %niter617 = phi i64 [ %niter617.next.7, %.preheader1574.i.new ], [ 0, %.preheader1574.i ]
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2253.i
  %i.alq = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.alp, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.alq, ptr %.1112511760.i, align 32, !tbaa !45
  %i.alr = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 32
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2253.i
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 4
  %i.alu = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.alt, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.alu, ptr %i.alr, align 32, !tbaa !45
  %i.alv = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 64
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2253.i
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %i.aly = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.alx, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.aly, ptr %i.alv, align 32, !tbaa !45
  %i.alz = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 96
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2253.i
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 12
  %i.amc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amb, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amc, ptr %i.alz, align 32, !tbaa !45
  %i.amd = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 128
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2253.i
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 16
  %i.amg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amf, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amg, ptr %i.amd, align 32, !tbaa !45
  %i.amh = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 160
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2253.i
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 20
  %i.amk = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amj, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amk, ptr %i.amh, align 32, !tbaa !45
  %i.aml = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 192
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2253.i
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 24
  %i.amo = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amn, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amo, ptr %i.aml, align 32, !tbaa !45
  %i.amp = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 224
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2253.i
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 28
  %i.ams = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amr, <8 x i32> %i.kg, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ams, ptr %i.amp, align 32, !tbaa !45
  %i.amt = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 256 ; 3 uses
  %indvars.iv.next2254.i.7 = add nuw nsw i64 %indvars.iv2253.i, 8 ; 2 uses
  %niter617.next.7 = add i64 %niter617, 8         ; 2 uses
  %niter617.ncmp.7 = icmp eq i64 %niter617.next.7, %unroll_iter616
  br i1 %niter617.ncmp.7, label %._crit_edge1761.i.unr-lcssa, label %.preheader1574.i.new, !llvm.loop !102

._crit_edge1765.split.i:                          ; preds = %._crit_edge1761.i, %.preheader1579.i, %.preheader1575.lr.ph.i, %.preheader1576.lr.ph.i
  %indvars.iv.next2262.i = add nuw nsw i64 %indvars.iv2261.i, 8 ; 3 uses
  %i.amu = icmp slt i64 %indvars.iv.next2262.i, %invariant.op.i
  %indvars.iv.next2205.i = add i32 %indvars.iv2204.i, %i.kt
  %indvars.iv.next2260.i = add i32 %indvars.iv2259.i, 8
  br i1 %i.amu, label %_ZN4ncnn3MatD2Ev.exit1327.i, label %.preheader1573.loopexit.i, !llvm.loop !103

.preheader1564.loopexit.i:                        ; preds = %._crit_edge1851.split.i
  %i.amv = trunc nuw nsw i64 %indvars.iv.next2312.i to i32
  br label %.preheader1564.i

.preheader1564.i:                                 ; preds = %.preheader1564.loopexit.i, %.preheader1573.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1573.i ], [ %i.amv, %.preheader1564.loopexit.i ] ; 4 uses
  %i.amw = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.amx = icmp slt i32 %i.amw, %i.m
  br i1 %i.amx, label %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i, label %.preheader1554.i

_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i:                ; preds = %.preheader1564.i
  %i.amy = mul i32 %i.r, %i.j                     ; 5 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ana = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.anb = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.anc = shufflevector <4 x i32> %i.anb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.and = mul <4 x i32> %i.anc, <i32 0, i32 1, i32 2, i32 3> ; 10 uses
  %i.ane = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.anf = shufflevector <8 x i32> %i.ane, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ang = mul <8 x i32> %i.anf, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 10 uses
  %i.anh = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.ani = shufflevector <16 x i32> %i.anh, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.anj = mul <16 x i32> %i.ani, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 10 uses
  %i.ank = icmp sgt i32 %i.r, 15
  %i.anl = icmp sgt i32 %i.j, 0                   ; 4 uses
  %i.anm = shl i32 %i.j, 4
  %i.ann = sext i32 %i.anm to i64                 ; 3 uses
  %i.ano = shl i32 %i.j, 3
  %i.anp = sext i32 %i.ano to i64                 ; 3 uses
  %i.anq = shl i32 %i.j, 2
  %i.anr = sext i32 %i.anq to i64                 ; 2 uses
  %i.ans = sext i32 %i.j to i64                   ; 11 uses
  %i.ant = shl i32 %i.j, 1                        ; 2 uses
  %i.anu = sext i32 %i.ant to i64                 ; 3 uses
  %i.anv = icmp slt i32 %i.j, 1
  %i.anw = add i32 %i.r, -16                      ; 2 uses
  %i.anx = lshr i32 %i.anw, 2
  %i.any = and i32 %i.anx, 1073741820
  %narrow2433.i = add nuw nsw i32 %i.any, 4
  %i.anz = zext nneg i32 %narrow2433.i to i64
  %i.aoa = mul nsw i64 %i.anz, %i.ann
  %i.aob = mul i32 %i.amy, %.2.lcssa.i
  %i.aoc = shl i32 %i.amy, 1                      ; 2 uses
  %i.aod = mul i32 %i.amw, %i.amy
  %i.aoe = and i32 %i.anw, -16
  %i.aof = add nuw i32 %i.aoe, 16                 ; 4 uses
  %i.aog = add i32 %i.r, -8
  %i.aoh = sext i32 %.2.lcssa.i to i64
  %i.aoi = sext i32 %i.m to i64
  %i.aoj = or disjoint i32 %i.aof, 7
  %i.aok = icmp slt i32 %i.aoj, %i.r
  %wide.trip.count2324.i = zext i32 %i.j to i64   ; 26 uses
  %i.aol = shl nuw nsw i64 %wide.trip.count2324.i, 3
  %i.aom = shl nuw nsw i64 %wide.trip.count2324.i, 2 ; 5 uses
  %i.aon = shl nuw nsw i64 %wide.trip.count2324.i, 4
  %i.aoo = shl nuw nsw i64 %i.ans, 2              ; 3 uses
  %i.aop = add nuw nsw i64 %i.aoo, %i.aom         ; 2 uses
  %i.aoq = shl nsw i64 %i.anu, 2
  %i.aor = add i32 %i.r, -2
  %i.aos = add nsw i64 %wide.trip.count2324.i, -1 ; 3 uses
  %xtraiter635 = and i64 %wide.trip.count2324.i, 3 ; 3 uses
  %i.aot = icmp ult i64 %i.aos, 3
  %unroll_iter640 = and i64 %wide.trip.count2324.i, 2147483644
  %lcmp.mod637.not = icmp eq i64 %xtraiter635, 0
  %lcmp.mod639 = icmp ne i64 %xtraiter635, 0
  %xtraiter643 = and i64 %wide.trip.count2324.i, 3 ; 3 uses
  %i.aou = icmp ult i64 %i.aos, 3
  %unroll_iter648 = and i64 %wide.trip.count2324.i, 2147483644
  %lcmp.mod645.not = icmp eq i64 %xtraiter643, 0
  %lcmp.mod647 = icmp ne i64 %xtraiter643, 0
  %xtraiter651 = and i64 %wide.trip.count2324.i, 3 ; 3 uses
  %i.aov = icmp ult i64 %i.aos, 3
  %unroll_iter656 = and i64 %wide.trip.count2324.i, 2147483644
  %lcmp.mod653.not = icmp eq i64 %xtraiter651, 0
  %lcmp.mod655 = icmp ne i64 %xtraiter651, 0
  %min.iters.check369 = icmp ult i32 %i.j, 4
  %stride.check = icmp slt i32 %i.ant, 0
  %min.iters.check371 = icmp ult i32 %i.j, 16
  %i.aow = and i64 %wide.trip.count2324.i, 12
  %n.vec373 = and i64 %wide.trip.count2324.i, 2147483632 ; 5 uses
  %i.aox = shl nuw nsw i64 %n.vec373, 4
  %cmp.n384 = icmp eq i64 %n.vec373, %wide.trip.count2324.i
  %min.epilog.iters.check388 = icmp eq i64 %i.aow, 0
  %n.vec391 = and i64 %wide.trip.count2324.i, 2147483644 ; 4 uses
  %i.aoy = shl nuw nsw i64 %n.vec391, 4
  %cmp.n402 = icmp eq i64 %n.vec391, %wide.trip.count2324.i
  %xtraiter658 = and i64 %wide.trip.count2324.i, 1
  %lcmp.mod659.not = icmp eq i64 %xtraiter658, 0
  %i.aoz = add nsw i64 %wide.trip.count2324.i, -1
  %min.iters.check = icmp ult i32 %i.j, 4
  %min.iters.check331 = icmp ult i32 %i.j, 16
  %i.apa = and i64 %wide.trip.count2324.i, 12
  %n.vec = and i64 %wide.trip.count2324.i, 2147483632 ; 5 uses
  %i.apb = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2324.i
  %min.epilog.iters.check = icmp eq i64 %i.apa, 0
  %n.vec333 = and i64 %wide.trip.count2324.i, 2147483644 ; 4 uses
  %i.apc = shl nuw nsw i64 %n.vec333, 3
  %cmp.n340 = icmp eq i64 %n.vec333, %wide.trip.count2324.i
  %xtraiter660 = and i64 %wide.trip.count2324.i, 3 ; 2 uses
  %lcmp.mod661.not = icmp eq i64 %xtraiter660, 0
  br label %_ZN4ncnn3MatD2Ev.exit1325.i

_ZN4ncnn3MatD2Ev.exit1326.i:                      ; preds = %._crit_edge1851.split.i, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i
  %indvars.iv2311.i = phi i64 [ %i.aay, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i ], [ %indvars.iv.next2312.i, %._crit_edge1851.split.i ] ; 2 uses
  %i.apd = phi i32 [ %i.zg, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i ], [ %i.axi, %._crit_edge1851.split.i ]
  %i.ape = phi <4 x i32> [ %i.aau, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i ], [ %i.axh, %._crit_edge1851.split.i ] ; 2 uses
  %i.apf = sext <4 x i32> %i.ape to <4 x i64>
  %i.apg = shl nsw <4 x i64> %i.apf, splat (i64 2) ; 4 uses
  %i.aph = load ptr, ptr %i.s, align 8, !tbaa !19 ; 5 uses
  %i.api = trunc i64 %indvars.iv2311.i to i32     ; 6 uses
  %i.apj = mul i32 %i.aap, %i.api
  %i.apk = sext i32 %i.apj to i64
  %i.apl = getelementptr inbounds [4 x i8], ptr %i.aph, i64 %i.apk ; 2 uses
  %i.apm = add i32 %i.api, 1
  %i.apn = mul i32 %i.apm, %i.aap
  %i.apo = sext i32 %i.apn to i64
  %i.app = getelementptr inbounds [4 x i8], ptr %i.aph, i64 %i.apo ; 2 uses
  %i.apq = add i32 %i.api, 2
  %i.apr = mul i32 %i.apq, %i.aap
  %i.aps = sext i32 %i.apr to i64
  %i.apt = getelementptr inbounds [4 x i8], ptr %i.aph, i64 %i.aps ; 2 uses
  %i.apu = mul i32 %i.apd, %i.aap
  %i.apv = sext i32 %i.apu to i64
  %i.apw = getelementptr inbounds [4 x i8], ptr %i.aph, i64 %i.apv ; 2 uses
  %i.apx = lshr i32 %i.api, 4
  %i.apy = lshr i32 %i.api, 3
  %i.apz = and i32 %i.apy, 1
  %i.aqa = add nuw nsw i32 %i.apz, %i.apx
  %i.aqb = lshr i32 %i.api, 2
  %i.aqc = and i32 %i.aqb, 1
  %i.aqd = add nuw nsw i32 %i.aqa, %i.aqc
  %i.aqe = load ptr, ptr %i.t, align 8, !tbaa !19, !noalias !179
  %i.aqf = load i64, ptr %i.zl, align 8, !tbaa !20, !noalias !179
  %i.aqg = zext nneg i32 %i.aqd to i64
  %i.aqh = mul i64 %i.aqf, %i.aqg
  %i.aqi = load i64, ptr %i.zm, align 8, !tbaa !44, !noalias !179
  %i.aqj = mul i64 %i.aqh, %i.aqi
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqe, i64 %i.aqj ; 4 uses
  br i1 %i.zw, label %.preheader1569.lr.ph.i, label %.preheader1572.i

.preheader1569.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1326.i
  br i1 %i.zx, label %.preheader1569.us.i, label %.preheader1572.thread.i

.preheader1569.us.i:                              ; preds = %.preheader1569.lr.ph.i, %._crit_edge1770.us.i
  %.012581777.us.i = phi i32 [ %i.arn, %._crit_edge1770.us.i ], [ 0, %.preheader1569.lr.ph.i ]
  %.012631776.us.i = phi ptr [ %i.ari, %._crit_edge1770.us.i ], [ %i.aqk, %.preheader1569.lr.ph.i ]
  %.012741775.us.i = phi ptr [ %i.arm, %._crit_edge1770.us.i ], [ %i.apw, %.preheader1569.lr.ph.i ] ; 2 uses
  %.012771774.us.i = phi ptr [ %i.arl, %._crit_edge1770.us.i ], [ %i.apt, %.preheader1569.lr.ph.i ] ; 2 uses
  %.012801773.us.i = phi ptr [ %i.ark, %._crit_edge1770.us.i ], [ %i.app, %.preheader1569.lr.ph.i ] ; 2 uses
  %.012831772.us.i = phi ptr [ %i.arj, %._crit_edge1770.us.i ], [ %i.apl, %.preheader1569.lr.ph.i ] ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.preheader1569.us.i
  %indvars.iv2279.i = phi i64 [ 0, %.preheader1569.us.i ], [ %indvars.iv.next2280.i, %bb.bi ] ; 5 uses
  %.112641768.us.i = phi ptr [ %.012631776.us.i, %.preheader1569.us.i ], [ %i.ari, %bb.bi ] ; 5 uses
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %.012831772.us.i, i64 %indvars.iv2279.i
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %.012801773.us.i, i64 %indvars.iv2279.i
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %.012771774.us.i, i64 %indvars.iv2279.i
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %.012741775.us.i, i64 %indvars.iv2279.i
  %i.aqp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aql, <16 x i32> %i.zv, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqm, <16 x i32> %i.zv, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqn, <16 x i32> %i.zv, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqs = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqo, <16 x i32> %i.zv, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqt = shufflevector <16 x float> %i.aqp, <16 x float> %i.aqq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aqu = shufflevector <16 x float> %i.aqp, <16 x float> %i.aqq, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aqv = shufflevector <16 x float> %i.aqr, <16 x float> %i.aqs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aqw = shufflevector <16 x float> %i.aqr, <16 x float> %i.aqs, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aqx = shufflevector <16 x float> %i.aqt, <16 x float> %i.aqv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.aqy = shufflevector <16 x float> %i.aqu, <16 x float> %i.aqw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.aqz = shufflevector <16 x float> %i.aqt, <16 x float> %i.aqv, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ara = shufflevector <16 x float> %i.aqu, <16 x float> %i.aqw, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.arb = shufflevector <16 x float> %i.aqx, <16 x float> %i.aqy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.arc = shufflevector <16 x float> %i.aqz, <16 x float> %i.ara, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ard = shufflevector <16 x float> %i.aqx, <16 x float> %i.aqy, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.are = shufflevector <16 x float> %i.aqz, <16 x float> %i.ara, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %i.arb, ptr %.112641768.us.i, align 1, !tbaa !45
  %i.arf = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 64
  store <16 x float> %i.arc, ptr %i.arf, align 1, !tbaa !45
  %i.arg = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 128
  store <16 x float> %i.ard, ptr %i.arg, align 1, !tbaa !45
  %i.arh = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 192
  store <16 x float> %i.are, ptr %i.arh, align 1, !tbaa !45
  %i.ari = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 256 ; 3 uses
  %indvars.iv.next2280.i = add nuw nsw i64 %indvars.iv2279.i, 1 ; 2 uses
  %exitcond2283.not.i = icmp eq i64 %indvars.iv.next2280.i, %wide.trip.count2282.i
  br i1 %exitcond2283.not.i, label %._crit_edge1770.us.i, label %bb.bi, !llvm.loop !106

._crit_edge1770.us.i:                             ; preds = %bb.bi
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %.012831772.us.i, i64 %i.zz ; 2 uses
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %.012801773.us.i, i64 %i.zz ; 2 uses
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %.012771774.us.i, i64 %i.zz ; 2 uses
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %.012741775.us.i, i64 %i.zz ; 2 uses
  %i.arn = add nuw nsw i32 %.012581777.us.i, 16   ; 2 uses
  %i.aro = or disjoint i32 %i.arn, 15
  %i.arp = icmp slt i32 %i.aro, %i.r
  br i1 %i.arp, label %.preheader1569.us.i, label %.preheader1572.i, !llvm.loop !107

.preheader1572.i:                                 ; preds = %._crit_edge1770.us.i, %_ZN4ncnn3MatD2Ev.exit1326.i
  %.01283.lcssa.i = phi ptr [ %i.apl, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.arj, %._crit_edge1770.us.i ] ; 3 uses
  %.01280.lcssa.i = phi ptr [ %i.app, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.ark, %._crit_edge1770.us.i ] ; 3 uses
  %.01277.lcssa.i = phi ptr [ %i.apt, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.arl, %._crit_edge1770.us.i ] ; 3 uses
  %.01274.lcssa.i = phi ptr [ %i.apw, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.arm, %._crit_edge1770.us.i ] ; 3 uses
  %.01263.lcssa.i = phi ptr [ %i.aqk, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.ari, %._crit_edge1770.us.i ] ; 3 uses
  %.01258.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.aaw, %._crit_edge1770.us.i ] ; 4 uses
  %i.arq = or disjoint i32 %.01258.lcssa.i, 7
  %i.arr = icmp slt i32 %i.arq, %i.r
  br i1 %i.arr, label %.preheader1568.lr.ph.i, label %.preheader1571.i

.preheader1572.thread.i:                          ; preds = %.preheader1569.lr.ph.i
  %scevgep2266.i = getelementptr i8, ptr %i.aph, i64 %i.aao ; 4 uses
  %i.ars = extractelement <4 x i64> %i.apg, i64 0
  %scevgep2269.i = getelementptr i8, ptr %scevgep2266.i, i64 %i.ars ; 2 uses
  %i.art = extractelement <4 x i64> %i.apg, i64 1
  %scevgep2272.i = getelementptr i8, ptr %scevgep2266.i, i64 %i.art ; 2 uses
  %i.aru = extractelement <4 x i64> %i.apg, i64 2
  %scevgep2275.i = getelementptr i8, ptr %scevgep2266.i, i64 %i.aru ; 2 uses
  %i.arv = extractelement <4 x i64> %i.apg, i64 3
  %scevgep2278.i = getelementptr i8, ptr %scevgep2266.i, i64 %i.arv ; 2 uses
  br i1 %i.abb, label %.preheader1568.preheader.i, label %.preheader1571.i

.preheader1568.lr.ph.i:                           ; preds = %.preheader1572.i
  br i1 %i.zx, label %.preheader1568.us.i, label %.preheader1568.preheader.i

.preheader1568.preheader.i:                       ; preds = %.preheader1568.lr.ph.i, %.preheader1572.thread.i
  %.01283.lcssa25202537.i = phi ptr [ %.01283.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2269.i, %.preheader1572.thread.i ]
  %.01280.lcssa25212536.i = phi ptr [ %.01280.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2272.i, %.preheader1572.thread.i ]
  %.01277.lcssa25222535.i = phi ptr [ %.01277.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2275.i, %.preheader1572.thread.i ]
  %.01274.lcssa25232534.i = phi ptr [ %.01274.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2278.i, %.preheader1572.thread.i ]
  %.01263.lcssa25242533.i = phi ptr [ %.01263.lcssa.i, %.preheader1568.lr.ph.i ], [ %i.aqk, %.preheader1572.thread.i ]
  %.01258.lcssa25252532.i = phi i32 [ %.01258.lcssa.i, %.preheader1568.lr.ph.i ], [ %i.aaw, %.preheader1572.thread.i ] ; 2 uses
  %i.arw = sub i32 %i.aax, %.01258.lcssa25252532.i ; 2 uses
  %i.arx = lshr i32 %i.arw, 1
  %i.ary = and i32 %i.arx, 2147483644
  %narrow2432.i = add nuw i32 %i.ary, 4
  %i.arz = zext i32 %narrow2432.i to i64
  %i.asa = mul nsw i64 %i.arz, %i.aab             ; 4 uses
  %scevgep2284.i = getelementptr i8, ptr %.01283.lcssa25202537.i, i64 %i.asa
  %scevgep2285.i = getelementptr i8, ptr %.01280.lcssa25212536.i, i64 %i.asa
  %scevgep2286.i = getelementptr i8, ptr %.01277.lcssa25222535.i, i64 %i.asa
  %scevgep2287.i = getelementptr i8, ptr %.01274.lcssa25232534.i, i64 %i.asa
  %i.asb = add i32 %.01258.lcssa25252532.i, 8
  %i.asc = and i32 %i.arw, -8
  %i.asd = add i32 %i.asb, %i.asc
  br label %.preheader1571.i

.preheader1568.us.i:                              ; preds = %.preheader1568.lr.ph.i, %._crit_edge1792.us.i
  %.112591799.us.i = phi i32 [ %i.atc, %._crit_edge1792.us.i ], [ %.01258.lcssa.i, %.preheader1568.lr.ph.i ]
  %.212651798.us.i = phi ptr [ %i.asx, %._crit_edge1792.us.i ], [ %.01263.lcssa.i, %.preheader1568.lr.ph.i ]
  %.112751797.us.i = phi ptr [ %i.atb, %._crit_edge1792.us.i ], [ %.01274.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  %.112781796.us.i = phi ptr [ %i.ata, %._crit_edge1792.us.i ], [ %.01277.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  %.112811795.us.i = phi ptr [ %i.asz, %._crit_edge1792.us.i ], [ %.01280.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  %.112841794.us.i = phi ptr [ %i.asy, %._crit_edge1792.us.i ], [ %.01283.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.preheader1568.us.i
  %indvars.iv2288.i = phi i64 [ 0, %.preheader1568.us.i ], [ %indvars.iv.next2289.i, %bb.bj ] ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.ava = getelementptr inbounds nuw [4 x i8], ptr %i.auy, i64 %i.aag
  %i.avb = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 80
  %i.avc = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.ava, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avc, ptr %i.avb, align 16, !tbaa !45
  %i.avd = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 96
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %indvars.iv2300.i
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 12 ; 2 uses
  %i.avg = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.avf, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avg, ptr %i.avd, align 16, !tbaa !45
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.aag
  %i.avi = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 112
  %i.avj = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.avh, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avj, ptr %i.avi, align 16, !tbaa !45
  %i.avk = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 128 ; 3 uses
  %indvars.iv.next2301.i.3 = add nuw nsw i64 %indvars.iv2300.i, 4 ; 2 uses
  %niter625.next.3 = add i64 %niter625, 4         ; 2 uses
  %niter625.ncmp.3 = icmp eq i64 %niter625.next.3, %unroll_iter624
  br i1 %niter625.ncmp.3, label %._crit_edge1834.us.i.unr-lcssa, label %.preheader1566.us.i.new, !llvm.loop !112

._crit_edge1834.us.i.unr-lcssa:                   ; preds = %.preheader1566.us.i.new
  br i1 %lcmp.mod621.not, label %._crit_edge1834.us.i, label %.epil.preheader618

.epil.preheader618:                               ; preds = %._crit_edge1834.us.i.unr-lcssa, %.preheader1566.us.i
  %indvars.iv2300.i.epil.init = phi i64 [ 0, %.preheader1566.us.i ], [ %indvars.iv.next2301.i.3, %._crit_edge1834.us.i.unr-lcssa ]
  %.712701832.us.i.epil.init = phi ptr [ %.612691837.us.i, %.preheader1566.us.i ], [ %i.avk, %._crit_edge1834.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod623)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.epil.preheader618
  %indvars.iv2300.i.epil = phi i64 [ %indvars.iv2300.i.epil.init, %.epil.preheader618 ], [ %indvars.iv.next2301.i.epil, %bb.bl ] ; 2 uses
  %.712701832.us.i.epil = phi ptr [ %.712701832.us.i.epil.init, %.epil.preheader618 ], [ %i.avq, %bb.bl ] ; 3 uses
  %epil.iter620 = phi i64 [ 0, %.epil.preheader618 ], [ %epil.iter620.next, %bb.bl ]
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %indvars.iv2300.i.epil ; 2 uses
  %i.avm = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avl, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avm, ptr %.712701832.us.i.epil, align 16, !tbaa !45
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.avl, i64 %i.aag
  %i.avo = getelementptr inbounds nuw i8, ptr %.712701832.us.i.epil, i64 16
  %i.avp = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avn, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avp, ptr %i.avo, align 16, !tbaa !45
  %i.avq = getelementptr inbounds nuw i8, ptr %.712701832.us.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2301.i.epil = add nuw nsw i64 %indvars.iv2300.i.epil, 1
  %epil.iter620.next = add i64 %epil.iter620, 1   ; 2 uses
  %epil.iter620.cmp.not = icmp eq i64 %epil.iter620.next, %xtraiter619
  br i1 %epil.iter620.cmp.not, label %._crit_edge1834.us.i, label %bb.bl, !llvm.loop !113

._crit_edge1834.us.i:                             ; preds = %bb.bl, %._crit_edge1834.us.i.unr-lcssa
  %.lcssa542 = phi ptr [ %i.avk, %._crit_edge1834.us.i.unr-lcssa ], [ %i.avq, %bb.bl ] ; 2 uses
  %i.avr = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %i.aai ; 2 uses
  %i.avs = add nuw nsw i32 %.312611838.us.i, 2    ; 3 uses
  %i.avt = or disjoint i32 %i.avs, 1
  %i.avu = icmp slt i32 %i.avt, %i.r
  br i1 %i.avu, label %.preheader1566.us.i, label %.preheader1570.i, !llvm.loop !114

.preheader1570.i:                                 ; preds = %._crit_edge1834.us.i, %._crit_edge1822.i
  %.31286.lcssa.i = phi ptr [ %.21285.lcssa.i, %._crit_edge1822.i ], [ %i.avr, %._crit_edge1834.us.i ] ; 9 uses
  %.61269.lcssa.i = phi ptr [ %.41267.lcssa.i, %._crit_edge1822.i ], [ %.lcssa542, %._crit_edge1834.us.i ]
  %.31261.lcssa.i = phi i32 [ %.21260.lcssa.i, %._crit_edge1822.i ], [ %i.avs, %._crit_edge1834.us.i ] ; 2 uses
  %i.avv = icmp sge i32 %.31261.lcssa.i, %i.r
  %brmerge2001.i = or i1 %i.aaj, %i.avv
  br i1 %brmerge2001.i, label %._crit_edge1851.split.i, label %.preheader1565.i

.preheader1565.i:                                 ; preds = %.preheader1570.i, %._crit_edge1847.i
  %.412621850.i = phi i32 [ %i.avz, %._crit_edge1847.i ], [ %.31261.lcssa.i, %.preheader1570.i ]
  %.912721849.i = phi ptr [ %.lcssa545, %._crit_edge1847.i ], [ %.61269.lcssa.i, %.preheader1570.i ] ; 2 uses
  br i1 %i.abg, label %.epil.preheader626, label %.preheader1565.i.new

._crit_edge1847.i.unr-lcssa:                      ; preds = %.preheader1565.i.new
  br i1 %lcmp.mod629.not, label %._crit_edge1847.i, label %.epil.preheader626

.epil.preheader626:                               ; preds = %._crit_edge1847.i.unr-lcssa, %.preheader1565.i
  %indvars.iv2305.i.epil.init = phi i64 [ 0, %.preheader1565.i ], [ %indvars.iv.next2306.i.7, %._crit_edge1847.i.unr-lcssa ]
  %.1012731845.i.epil.init = phi ptr [ %.912721849.i, %.preheader1565.i ], [ %i.axe, %._crit_edge1847.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod631)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.epil.preheader626
  %indvars.iv2305.i.epil = phi i64 [ %indvars.iv2305.i.epil.init, %.epil.preheader626 ], [ %indvars.iv.next2306.i.epil, %bb.bm ] ; 2 uses
  %.1012731845.i.epil = phi ptr [ %.1012731845.i.epil.init, %.epil.preheader626 ], [ %i.avy, %bb.bm ] ; 2 uses
  %epil.iter628 = phi i64 [ 0, %.epil.preheader626 ], [ %epil.iter628.next, %bb.bm ]
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2305.i.epil
  %i.avx = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avw, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avx, ptr %.1012731845.i.epil, align 16, !tbaa !45
  %i.avy = getelementptr inbounds nuw i8, ptr %.1012731845.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2306.i.epil = add nuw nsw i64 %indvars.iv2305.i.epil, 1
  %epil.iter628.next = add i64 %epil.iter628, 1   ; 2 uses
  %epil.iter628.cmp.not = icmp eq i64 %epil.iter628.next, %xtraiter627
  br i1 %epil.iter628.cmp.not, label %._crit_edge1847.i, label %bb.bm, !llvm.loop !115

._crit_edge1847.i:                                ; preds = %bb.bm, %._crit_edge1847.i.unr-lcssa
  %.lcssa545 = phi ptr [ %i.axe, %._crit_edge1847.i.unr-lcssa ], [ %i.avy, %bb.bm ]
  %i.avz = add nuw nsw i32 %.412621850.i, 1       ; 2 uses
  %exitcond2310.not.i = icmp eq i32 %i.avz, %i.r
  br i1 %exitcond2310.not.i, label %._crit_edge1851.split.i, label %.preheader1565.i, !llvm.loop !116

.preheader1565.i.new:                             ; preds = %.preheader1565.i, %.preheader1565.i.new
  %indvars.iv2305.i = phi i64 [ %indvars.iv.next2306.i.7, %.preheader1565.i.new ], [ 0, %.preheader1565.i ] ; 9 uses
  %.1012731845.i = phi ptr [ %i.axe, %.preheader1565.i.new ], [ %.912721849.i, %.preheader1565.i ] ; 9 uses
  %niter633 = phi i64 [ %niter633.next.7, %.preheader1565.i.new ], [ 0, %.preheader1565.i ]
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2305.i
  %i.awb = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.awa, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awb, ptr %.1012731845.i, align 16, !tbaa !45
  %i.awc = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 16
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2305.i
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 4
  %i.awf = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awe, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awf, ptr %i.awc, align 16, !tbaa !45
  %i.awg = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 32
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2305.i
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 8
  %i.awj = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awi, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awj, ptr %i.awg, align 16, !tbaa !45
  %i.awk = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 48
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2305.i
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 12
  %i.awn = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awm, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awn, ptr %i.awk, align 16, !tbaa !45
  %i.awo = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 64
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2305.i
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awp, i64 16
  %i.awr = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awq, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awr, ptr %i.awo, align 16, !tbaa !45
  %i.aws = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 80
  %i.awt = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2305.i
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 20
  %i.awv = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awu, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awv, ptr %i.aws, align 16, !tbaa !45
  %i.aww = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 96
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2305.i
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 24
  %i.awz = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awy, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awz, ptr %i.aww, align 16, !tbaa !45
  %i.axa = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 112
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2305.i
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 28
  %i.axd = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.axc, <4 x i32> %i.aaf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.axd, ptr %i.axa, align 16, !tbaa !45
  %i.axe = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 128 ; 3 uses
  %indvars.iv.next2306.i.7 = add nuw nsw i64 %indvars.iv2305.i, 8 ; 2 uses
  %niter633.next.7 = add i64 %niter633, 8         ; 2 uses
  %niter633.ncmp.7 = icmp eq i64 %niter633.next.7, %unroll_iter632
  br i1 %niter633.ncmp.7, label %._crit_edge1847.i.unr-lcssa, label %.preheader1565.i.new, !llvm.loop !117

._crit_edge1851.split.i:                          ; preds = %._crit_edge1847.i, %.preheader1570.i, %.preheader1566.lr.ph.i, %.preheader1567.lr.ph.i
  %indvars.iv.next2312.i = add nuw nsw i64 %indvars.iv2311.i, 4 ; 3 uses
  %i.axf = or disjoint i64 %indvars.iv.next2312.i, 3 ; 2 uses
  %i.axg = icmp slt i64 %i.axf, %i.aaz
  %i.axh = add <4 x i32> %i.ape, %i.abd
  %i.axi = trunc nuw nsw i64 %i.axf to i32
  br i1 %i.axg, label %_ZN4ncnn3MatD2Ev.exit1326.i, label %.preheader1564.loopexit.i, !llvm.loop !118

.preheader1554.loopexit.i:                        ; preds = %._crit_edge1928.split.i
  %i.axj = trunc nsw i64 %indvars.iv.next2354.i to i32
  br label %.preheader1554.i

.preheader1554.i:                                 ; preds = %.preheader1554.loopexit.i, %.preheader1564.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader1564.i ], [ %i.axj, %.preheader1554.loopexit.i ] ; 3 uses
  %i.axk = icmp slt i32 %.3.lcssa.i, %i.m
  br i1 %i.axk, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1554.i
  %i.axl = mul i32 %i.r, %i.j                     ; 3 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.axn = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.axo = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.axp = shufflevector <4 x i32> %i.axo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.axq = mul <4 x i32> %i.axp, <i32 0, i32 1, i32 2, i32 3> ; 9 uses
  %i.axr = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.axs = shufflevector <8 x i32> %i.axr, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.axt = mul <8 x i32> %i.axs, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 9 uses
  %i.axu = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.axv = shufflevector <16 x i32> %i.axu, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.axw = mul <16 x i32> %i.axv, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 9 uses
  %i.axx = icmp sgt i32 %i.r, 15
  %i.axy = icmp sgt i32 %i.j, 0                   ; 4 uses
  %i.axz = shl i32 %i.j, 4
  %i.aya = sext i32 %i.axz to i64                 ; 2 uses
  %i.ayb = shl i32 %i.j, 3
  %i.ayc = sext i32 %i.ayb to i64                 ; 2 uses
  %i.ayd = shl i32 %i.j, 2
  %i.aye = sext i32 %i.ayd to i64
  %i.ayf = sext i32 %i.j to i64                   ; 8 uses
  %i.ayg = shl i32 %i.j, 1                        ; 2 uses
  %i.ayh = sext i32 %i.ayg to i64                 ; 2 uses
  %i.ayi = icmp slt i32 %i.j, 1
  %i.ayj = add i32 %i.r, -16                      ; 2 uses
  %i.ayk = lshr i32 %i.ayj, 2
  %i.ayl = and i32 %i.ayk, 1073741820
  %narrow2435.i = add nuw nsw i32 %i.ayl, 4
  %i.aym = zext nneg i32 %narrow2435.i to i64
  %i.ayn = mul nsw i64 %i.aym, %i.aya
  %i.ayo = mul i32 %i.axl, %.3.lcssa.i
  %i.ayp = and i32 %i.ayj, -16
  %i.ayq = add nuw i32 %i.ayp, 16                 ; 4 uses
  %i.ayr = add i32 %i.r, -8
  %i.ays = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2392.i = sext i32 %i.m to i64
  %i.ayt = or disjoint i32 %i.ayq, 7
  %i.ayu = icmp slt i32 %i.ayt, %i.r
  %wide.trip.count2363.i = zext i32 %i.j to i64   ; 25 uses
  %i.ayv = shl nuw nsw i64 %wide.trip.count2363.i, 3
  %i.ayw = shl nuw nsw i64 %i.ayf, 2              ; 2 uses
  %i.ayx = shl nuw nsw i64 %wide.trip.count2363.i, 2 ; 2 uses
  %i.ayy = shl nsw i64 %i.ayh, 2
  %i.ayz = add i32 %i.r, -2
  %i.aza = add nsw i64 %wide.trip.count2363.i, -1 ; 3 uses
  %xtraiter663 = and i64 %wide.trip.count2363.i, 7 ; 3 uses
  %i.azb = icmp ult i64 %i.aza, 7
  %unroll_iter668 = and i64 %wide.trip.count2363.i, 2147483640
  %lcmp.mod665.not = icmp eq i64 %xtraiter663, 0
  %lcmp.mod667 = icmp ne i64 %xtraiter663, 0
  %xtraiter671 = and i64 %wide.trip.count2363.i, 7 ; 3 uses
  %i.azc = icmp ult i64 %i.aza, 7
  %unroll_iter676 = and i64 %wide.trip.count2363.i, 2147483640
  %lcmp.mod673.not = icmp eq i64 %xtraiter671, 0
  %lcmp.mod675 = icmp ne i64 %xtraiter671, 0
  %xtraiter679 = and i64 %wide.trip.count2363.i, 7 ; 3 uses
  %i.azd = icmp ult i64 %i.aza, 7
  %unroll_iter684 = and i64 %wide.trip.count2363.i, 2147483640
  %lcmp.mod681.not = icmp eq i64 %xtraiter679, 0
  %lcmp.mod683 = icmp ne i64 %xtraiter679, 0
  %min.iters.check454 = icmp ult i32 %i.j, 8
  %stride.check449 = icmp slt i32 %i.ayg, 0
  %min.iters.check456 = icmp ult i32 %i.j, 32
  %i.aze = and i64 %wide.trip.count2363.i, 24
  %n.vec458 = and i64 %wide.trip.count2363.i, 2147483616 ; 5 uses
  %i.azf = shl nuw nsw i64 %n.vec458, 3
  %cmp.n471 = icmp eq i64 %n.vec458, %wide.trip.count2363.i
  %min.epilog.iters.check475 = icmp eq i64 %i.aze, 0
  %n.vec478 = and i64 %wide.trip.count2363.i, 2147483640 ; 4 uses
  %i.azg = shl nuw nsw i64 %n.vec478, 3
  %cmp.n487 = icmp eq i64 %n.vec478, %wide.trip.count2363.i
  %xtraiter686 = and i64 %wide.trip.count2363.i, 3 ; 2 uses
  %lcmp.mod687.not = icmp eq i64 %xtraiter686, 0
  %min.iters.check408 = icmp ult i32 %i.j, 8
  %min.iters.check410 = icmp ult i32 %i.j, 64
  %i.azh = and i64 %wide.trip.count2363.i, 56
  %n.vec412 = and i64 %wide.trip.count2363.i, 2147483584 ; 5 uses
  %i.azi = shl nuw nsw i64 %n.vec412, 2
  %cmp.n422 = icmp eq i64 %n.vec412, %wide.trip.count2363.i
  %min.epilog.iters.check426 = icmp eq i64 %i.azh, 0
  %n.vec429 = and i64 %wide.trip.count2363.i, 2147483640 ; 4 uses
  %i.azj = shl nuw nsw i64 %n.vec429, 2
  %cmp.n436 = icmp eq i64 %n.vec429, %wide.trip.count2363.i
  %xtraiter689 = and i64 %wide.trip.count2363.i, 7 ; 2 uses
  %lcmp.mod690.not = icmp eq i64 %xtraiter689, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1325.i:                      ; preds = %._crit_edge1928.split.i, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i
  %indvars.iv2353.i = phi i64 [ %i.aoh, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %indvars.iv.next2354.i, %._crit_edge1928.split.i ] ; 2 uses
  %indvars.iv2318.i = phi i32 [ %i.aod, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %indvars.iv.next2319.i, %._crit_edge1928.split.i ] ; 2 uses
  %indvars.iv2315.i = phi i32 [ %i.aob, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %indvars.iv.next2316.i, %._crit_edge1928.split.i ] ; 2 uses
  %i.azk = phi i32 [ %i.amw, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %i.bjv, %._crit_edge1928.split.i ]
  %i.azl = sext i32 %indvars.iv2315.i to i64
  %i.azm = shl nsw i64 %i.azl, 2
  %i.azn = sext i32 %indvars.iv2318.i to i64
  %i.azo = shl nsw i64 %i.azn, 2
  %i.azp = load ptr, ptr %i.s, align 8, !tbaa !19 ; 3 uses
  %i.azq = trunc nsw i64 %indvars.iv2353.i to i32 ; 2 uses
  %i.azr = mul i32 %i.amy, %i.azq
  %i.azs = sext i32 %i.azr to i64
  %i.azt = getelementptr inbounds [4 x i8], ptr %i.azp, i64 %i.azs ; 2 uses
  %i.azu = mul i32 %i.azk, %i.amy
  %i.azv = sext i32 %i.azu to i64
  %i.azw = getelementptr inbounds [4 x i8], ptr %i.azp, i64 %i.azv ; 2 uses
  %i.azx = insertelement <4 x i32> poison, i32 %i.azq, i64 0
  %i.azy = shufflevector <4 x i32> %i.azx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.azz = lshr <4 x i32> %i.azy, <i32 3, i32 2, i32 1, i32 4>
  %i.baa = and <4 x i32> %i.azz, <i32 1, i32 1, i32 1, i32 -1>
  %i.bab = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.baa)
  %i.bac = load ptr, ptr %i.t, align 8, !tbaa !19, !noalias !180
  %i.bad = load i64, ptr %i.amz, align 8, !tbaa !20, !noalias !180
  %i.bae = zext nneg i32 %i.bab to i64
  %i.baf = mul i64 %i.bad, %i.bae
  %i.bag = load i64, ptr %i.ana, align 8, !tbaa !44, !noalias !180
  %i.bah = mul i64 %i.baf, %i.bag
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bac, i64 %i.bah ; 4 uses
  br i1 %i.ank, label %.preheader1559.lr.ph.i, label %.preheader1563.i

.preheader1559.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1325.i
  br i1 %i.anl, label %.preheader1559.us.i, label %.preheader1563.thread.i

.preheader1559.us.i:                              ; preds = %.preheader1559.lr.ph.i, %._crit_edge1856.us.i
  %.011821861.us.i = phi i32 [ %i.bbp, %._crit_edge1856.us.i ], [ 0, %.preheader1559.lr.ph.i ]
  %.011871860.us.i = phi ptr [ %.lcssa512, %._crit_edge1856.us.i ], [ %i.bai, %.preheader1559.lr.ph.i ] ; 2 uses
  %.011981859.us.i = phi ptr [ %i.bbo, %._crit_edge1856.us.i ], [ %i.azw, %.preheader1559.lr.ph.i ] ; 6 uses
  %.012021858.us.i = phi ptr [ %i.bbn, %._crit_edge1856.us.i ], [ %i.azt, %.preheader1559.lr.ph.i ] ; 6 uses
  br i1 %i.aot, label %.epil.preheader634, label %.preheader1559.us.i.new

.preheader1559.us.i.new:                          ; preds = %.preheader1559.us.i, %.preheader1559.us.i.new
  %indvars.iv2321.i = phi i64 [ %indvars.iv.next2322.i.3, %.preheader1559.us.i.new ], [ 0, %.preheader1559.us.i ] ; 6 uses
  %.111881854.us.i = phi ptr [ %i.bbg, %.preheader1559.us.i.new ], [ %.011871860.us.i, %.preheader1559.us.i ] ; 9 uses
  %niter641 = phi i64 [ %niter641.next.3, %.preheader1559.us.i.new ], [ 0, %.preheader1559.us.i ]
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv2321.i
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv2321.i
  %i.bal = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.baj, <16 x i32> %i.anj, <16 x i1> splat (i1 true), i32 4)
  %i.bam = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bak, <16 x i32> %i.anj, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bal, ptr %.111881854.us.i, align 1, !tbaa !45
  %i.ban = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 64
  store <16 x float> %i.bam, ptr %i.ban, align 1, !tbaa !45
  %i.bao = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 128
  %indvars.iv.next2322.i = or disjoint i64 %indvars.iv2321.i, 1 ; 2 uses
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv.next2322.i
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv.next2322.i
  %i.bar = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bap, <16 x i32> %i.anj, <16 x i1> splat (i1 true), i32 4)
  %i.bas = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.baq, <16 x i32> %i.anj, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bar, ptr %i.bao, align 1, !tbaa !45
  %i.bat = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 192
  store <16 x float> %i.bas, ptr %i.bat, align 1, !tbaa !45
  %i.bau = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 256
  %indvars.iv.next2322.i.1 = or disjoint i64 %indvars.iv2321.i, 2 ; 2 uses
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv.next2322.i.1
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv.next2322.i.1
  %i.bax = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bav, <16 x i32> %i.anj, <16 x i1> splat (i1 true), i32 4)
  %i.bay = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.baw, <16 x i32> %i.anj, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bax, ptr %i.bau, align 1, !tbaa !45
  %i.baz = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 320
  store <16 x float> %i.bay, ptr %i.baz, align 1, !tbaa !45
  %i.bba = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 384
  %indvars.iv.next2322.i.2 = or disjoint i64 %indvars.iv2321.i, 3 ; 2 uses
  %i.bbb = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv.next2322.i.2
  %i.bbc = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv.next2322.i.2
  %i.bbd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbb, <16 x i32> %i.anj, <16 x i1> splat (i1 true), i32 4)
  %i.bbe = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbc, <16 x i32> %i.anj, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bbd, ptr %i.bba, align 1, !tbaa !45
  %i.bbf = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 448
  store <16 x float> %i.bbe, ptr %i.bbf, align 1, !tbaa !45
  %i.bbg = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 512 ; 3 uses
  %indvars.iv.next2322.i.3 = add nuw nsw i64 %indvars.iv2321.i, 4 ; 2 uses
  %niter641.next.3 = add i64 %niter641, 4         ; 2 uses
  %niter641.ncmp.3 = icmp eq i64 %niter641.next.3, %unroll_iter640
  br i1 %niter641.ncmp.3, label %._crit_edge1856.us.i.unr-lcssa, label %.preheader1559.us.i.new, !llvm.loop !121

._crit_edge1856.us.i.unr-lcssa:                   ; preds = %.preheader1559.us.i.new
  br i1 %lcmp.mod637.not, label %._crit_edge1856.us.i, label %.epil.preheader634

.epil.preheader634:                               ; preds = %._crit_edge1856.us.i.unr-lcssa, %.preheader1559.us.i
  %indvars.iv2321.i.epil.init = phi i64 [ 0, %.preheader1559.us.i ], [ %indvars.iv.next2322.i.3, %._crit_edge1856.us.i.unr-lcssa ]
  %.111881854.us.i.epil.init = phi ptr [ %.011871860.us.i, %.preheader1559.us.i ], [ %i.bbg, %._crit_edge1856.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod639)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.epil.preheader634
  %indvars.iv2321.i.epil = phi i64 [ %indvars.iv2321.i.epil.init, %.epil.preheader634 ], [ %indvars.iv.next2322.i.epil, %bb.bn ] ; 3 uses
  %.111881854.us.i.epil = phi ptr [ %.111881854.us.i.epil.init, %.epil.preheader634 ], [ %i.bbm, %bb.bn ] ; 3 uses
  %epil.iter636 = phi i64 [ 0, %.epil.preheader634 ], [ %epil.iter636.next, %bb.bn ]
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv2321.i.epil
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv2321.i.epil
  %i.bbj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbh, <16 x i32> %i.anj, <16 x i1> splat (i1 true), i32 4)
  %i.bbk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbi, <16 x i32> %i.anj, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bbj, ptr %.111881854.us.i.epil, align 1, !tbaa !45
  %i.bbl = getelementptr inbounds nuw i8, ptr %.111881854.us.i.epil, i64 64
  store <16 x float> %i.bbk, ptr %i.bbl, align 1, !tbaa !45
  %i.bbm = getelementptr inbounds nuw i8, ptr %.111881854.us.i.epil, i64 128 ; 2 uses
  %indvars.iv.next2322.i.epil = add nuw nsw i64 %indvars.iv2321.i.epil, 1
  %epil.iter636.next = add i64 %epil.iter636, 1   ; 2 uses
  %epil.iter636.cmp.not = icmp eq i64 %epil.iter636.next, %xtraiter635
  br i1 %epil.iter636.cmp.not, label %._crit_edge1856.us.i, label %bb.bn, !llvm.loop !122

._crit_edge1856.us.i:                             ; preds = %bb.bn, %._crit_edge1856.us.i.unr-lcssa
  %.lcssa512 = phi ptr [ %i.bbg, %._crit_edge1856.us.i.unr-lcssa ], [ %i.bbm, %bb.bn ] ; 2 uses
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %i.ann ; 2 uses
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %i.ann ; 2 uses
  %i.bbp = add nuw nsw i32 %.011821861.us.i, 16   ; 2 uses
  %i.bbq = or disjoint i32 %i.bbp, 15
  %i.bbr = icmp slt i32 %i.bbq, %i.r
  br i1 %i.bbr, label %.preheader1559.us.i, label %.preheader1563.i, !llvm.loop !123

.preheader1563.i:                                 ; preds = %._crit_edge1856.us.i, %_ZN4ncnn3MatD2Ev.exit1325.i
  %.01202.lcssa.i = phi ptr [ %i.azt, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %i.bbn, %._crit_edge1856.us.i ] ; 3 uses
  %.01198.lcssa.i = phi ptr [ %i.azw, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %i.bbo, %._crit_edge1856.us.i ] ; 3 uses
  %.01187.lcssa.i = phi ptr [ %i.bai, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %.lcssa512, %._crit_edge1856.us.i ] ; 3 uses
  %.01182.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %i.aof, %._crit_edge1856.us.i ] ; 4 uses
  %i.bbs = or disjoint i32 %.01182.lcssa.i, 7
  %i.bbt = icmp slt i32 %i.bbs, %i.r
  br i1 %i.bbt, label %.preheader1558.lr.ph.i, label %.preheader1562.i

.preheader1563.thread.i:                          ; preds = %.preheader1559.lr.ph.i
  %scevgep2314.i = getelementptr i8, ptr %i.azp, i64 %i.aoa ; 2 uses
  %scevgep2317.i = getelementptr i8, ptr %scevgep2314.i, i64 %i.azm ; 2 uses
  %scevgep2320.i = getelementptr i8, ptr %scevgep2314.i, i64 %i.azo ; 2 uses
  br i1 %i.aok, label %.preheader1558.preheader.i, label %.preheader1562.i

.preheader1558.lr.ph.i:                           ; preds = %.preheader1563.i
  br i1 %i.anl, label %.preheader1558.us.i, label %.preheader1558.preheader.i

.preheader1558.preheader.i:                       ; preds = %.preheader1558.lr.ph.i, %.preheader1563.thread.i
  %.01202.lcssa25582569.i = phi ptr [ %.01202.lcssa.i, %.preheader1558.lr.ph.i ], [ %scevgep2317.i, %.preheader1563.thread.i ]
  %.01198.lcssa25592568.i = phi ptr [ %.01198.lcssa.i, %.preheader1558.lr.ph.i ], [ %scevgep2320.i, %.preheader1563.thread.i ]
  %.01187.lcssa25602567.i = phi ptr [ %.01187.lcssa.i, %.preheader1558.lr.ph.i ], [ %i.bai, %.preheader1563.thread.i ]
  %.01182.lcssa25612566.i = phi i32 [ %.01182.lcssa.i, %.preheader1558.lr.ph.i ], [ %i.aof, %.preheader1563.thread.i ] ; 2 uses
  %i.bbu = sub i32 %i.aog, %.01182.lcssa25612566.i ; 2 uses
  %i.bbv = lshr i32 %i.bbu, 1
  %i.bbw = and i32 %i.bbv, 2147483644
  %narrow2434.i = add nuw i32 %i.bbw, 4
  %i.bbx = zext i32 %narrow2434.i to i64
  %i.bby = mul nsw i64 %i.bbx, %i.anp             ; 2 uses
  %scevgep2326.i = getelementptr i8, ptr %.01202.lcssa25582569.i, i64 %i.bby
  %scevgep2327.i = getelementptr i8, ptr %.01198.lcssa25592568.i, i64 %i.bby
  %i.bbz = add i32 %.01182.lcssa25612566.i, 8
  %i.bca = and i32 %i.bbu, -8
  %i.bcb = add i32 %i.bbz, %i.bca
end_hunk_1
