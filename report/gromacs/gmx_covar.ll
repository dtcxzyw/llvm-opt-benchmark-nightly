Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_covar?download=true
inline.NumInlined: 404
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z9gmx_covariPPc:bb.a

bb.dl:                                            ; preds = %.critedge
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %.0377)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dl
  %i.akc = load ptr, ptr @stderr, align 8, !tbaa !153
  %i.akd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.akc, ptr noundef nonnull @.str.67, i32 noundef %i.wy) #28 ; 0 uses
  %i.ake = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !127, !range !128, !noundef !129
  %i.akf = trunc nuw i8 %i.ake to i1
  %.pre1067 = load i32, ptr %i.l, align 4, !tbaa !10 ; 3 uses
  br i1 %i.akf, label %bb.dn, label %.loopexit861

bb.dn:                                            ; preds = %bb.dm
  %i.akg = sext i32 %.pre1067 to i64
  %i.akh = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.50, i32 noundef 435, i64 noundef range(i64 -2147483648, 2147483648) %i.akg, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.preheader: ; preds = %bb.dn
  %i.aki = load i32, ptr %i.l, align 4, !tbaa !10 ; 5 uses
  %i.akj = sext i32 %i.aki to i64                 ; 4 uses
  %i.akk = icmp sgt i32 %i.aki, 0
  br i1 %i.akk, label %.lr.ph924, label %.preheader858

.lr.ph924:                                        ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.preheader
  %i.akl = load ptr, ptr %i.h, align 8, !tbaa !157 ; 5 uses
  %i.akm = load ptr, ptr %i.x, align 8, !tbaa !131 ; 5 uses
  %xtraiter1677 = and i64 %i.akj, 3
  %i.akn = icmp ult i32 %i.aki, 4
  br i1 %i.akn, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader, label %.lr.ph924.new

.lr.ph924.new:                                    ; preds = %.lr.ph924
  %unroll_iter1681 = and i64 %i.akj, 2147483644
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582:    ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582, %.lr.ph924.new
  %.9407923 = phi i64 [ 0, %.lr.ph924.new ], [ %i.amn, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582 ] ; 6 uses
  %niter1682 = phi i64 [ 0, %.lr.ph924.new ], [ %niter1682.next.3, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582 ]
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.akm, i64 %.9407923
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !10
  %i.akq = sext i32 %i.akp to i64
  %i.akr = getelementptr inbounds [12 x i8], ptr %i.akl, i64 %i.akq ; 3 uses
  %i.aks = getelementptr inbounds nuw [12 x i8], ptr %i.akh, i64 %.9407923 ; 3 uses
  %i.akt = load float, ptr %i.akr, align 4, !tbaa !146
  store float %i.akt, ptr %i.aks, align 4, !tbaa !146
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akr, i64 4
  %i.akv = load float, ptr %i.aku, align 4, !tbaa !146
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aks, i64 4
  store float %i.akv, ptr %i.akw, align 4, !tbaa !146
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akr, i64 8
  %i.aky = load float, ptr %i.akx, align 4, !tbaa !146
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aks, i64 8
  store float %i.aky, ptr %i.akz, align 4, !tbaa !146
  %i.ala = or disjoint i64 %.9407923, 1           ; 2 uses
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.akm, i64 %i.ala
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !10
  %i.ald = sext i32 %i.alc to i64
  %i.ale = getelementptr inbounds [12 x i8], ptr %i.akl, i64 %i.ald ; 3 uses
  %i.alf = getelementptr inbounds nuw [12 x i8], ptr %i.akh, i64 %i.ala ; 3 uses
  %i.alg = load float, ptr %i.ale, align 4, !tbaa !146
  store float %i.alg, ptr %i.alf, align 4, !tbaa !146
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ale, i64 4
  %i.ali = load float, ptr %i.alh, align 4, !tbaa !146
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alf, i64 4
  store float %i.ali, ptr %i.alj, align 4, !tbaa !146
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  %i.all = load float, ptr %i.alk, align 4, !tbaa !146
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alf, i64 8
  store float %i.all, ptr %i.alm, align 4, !tbaa !146
  %i.aln = or disjoint i64 %.9407923, 2           ; 2 uses
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.akm, i64 %i.aln
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !10
  %i.alq = sext i32 %i.alp to i64
  %i.alr = getelementptr inbounds [12 x i8], ptr %i.akl, i64 %i.alq ; 3 uses
  %i.als = getelementptr inbounds nuw [12 x i8], ptr %i.akh, i64 %i.aln ; 3 uses
  %i.alt = load float, ptr %i.alr, align 4, !tbaa !146
  store float %i.alt, ptr %i.als, align 4, !tbaa !146
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alr, i64 4
  %i.alv = load float, ptr %i.alu, align 4, !tbaa !146
  %i.alw = getelementptr inbounds nuw i8, ptr %i.als, i64 4
  store float %i.alv, ptr %i.alw, align 4, !tbaa !146
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alr, i64 8
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !146
  %i.alz = getelementptr inbounds nuw i8, ptr %i.als, i64 8
  store float %i.aly, ptr %i.alz, align 4, !tbaa !146
  %i.ama = or disjoint i64 %.9407923, 3           ; 2 uses
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.akm, i64 %i.ama
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !10
  %i.amd = sext i32 %i.amc to i64
  %i.ame = getelementptr inbounds [12 x i8], ptr %i.akl, i64 %i.amd ; 3 uses
  %i.amf = getelementptr inbounds nuw [12 x i8], ptr %i.akh, i64 %i.ama ; 3 uses
  %i.amg = load float, ptr %i.ame, align 4, !tbaa !146
  store float %i.amg, ptr %i.amf, align 4, !tbaa !146
  %i.amh = getelementptr inbounds nuw i8, ptr %i.ame, i64 4
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !146
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amf, i64 4
  store float %i.ami, ptr %i.amj, align 4, !tbaa !146
  %i.amk = getelementptr inbounds nuw i8, ptr %i.ame, i64 8
  %i.aml = load float, ptr %i.amk, align 4, !tbaa !146
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amf, i64 8
  store float %i.aml, ptr %i.amm, align 4, !tbaa !146
  %i.amn = add nuw nsw i64 %.9407923, 4           ; 2 uses
  %niter1682.next.3 = add i64 %niter1682, 4       ; 2 uses
  %niter1682.ncmp.3 = icmp eq i64 %niter1682.next.3, %unroll_iter1681
  br i1 %niter1682.ncmp.3, label %.preheader860.preheader.loopexit.unr-lcssa, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582, !llvm.loop !68

.loopexit861:                                     ; preds = %bb.dm
  %.pre1069 = zext nneg i32 %.pre1067 to i64
  %i.amo = icmp sgt i32 %.pre1067, 0
  br i1 %i.amo, label %.preheader860.preheader, label %.preheader858

.preheader860.preheader.loopexit.unr-lcssa:       ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582
  %i.amp = and i32 %i.aki, 3
  %lcmp.mod1679.not = icmp eq i32 %i.amp, 0
  br i1 %lcmp.mod1679.not, label %.preheader860.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader: ; preds = %.preheader860.preheader.loopexit.unr-lcssa, %.lr.ph924
  %.9407923.epil.init = phi i64 [ 0, %.lr.ph924 ], [ %i.amn, %.preheader860.preheader.loopexit.unr-lcssa ]
  %i.amq = and i32 %i.aki, 3
  %lcmp.mod1680 = icmp ne i32 %i.amq, 0
  call void @llvm.assume(i1 %lcmp.mod1680)
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil: ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader
  %.9407923.epil = phi i64 [ %.9407923.epil.init, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader ], [ %i.and, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil ] ; 3 uses
  %epil.iter1678 = phi i64 [ 0, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader ], [ %epil.iter1678.next, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil ]
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.akm, i64 %.9407923.epil
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !10
  %i.amt = sext i32 %i.ams to i64
  %i.amu = getelementptr inbounds [12 x i8], ptr %i.akl, i64 %i.amt ; 3 uses
  %i.amv = getelementptr inbounds nuw [12 x i8], ptr %i.akh, i64 %.9407923.epil ; 3 uses
  %i.amw = load float, ptr %i.amu, align 4, !tbaa !146
  store float %i.amw, ptr %i.amv, align 4, !tbaa !146
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amu, i64 4
  %i.amy = load float, ptr %i.amx, align 4, !tbaa !146
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amv, i64 4
  store float %i.amy, ptr %i.amz, align 4, !tbaa !146
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amu, i64 8
  %i.anb = load float, ptr %i.ana, align 4, !tbaa !146
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  store float %i.anb, ptr %i.anc, align 4, !tbaa !146
  %i.and = add nuw nsw i64 %.9407923.epil, 1
  %epil.iter1678.next = add i64 %epil.iter1678, 1 ; 2 uses
  %epil.iter1678.cmp.not = icmp eq i64 %epil.iter1678.next, %xtraiter1677
  br i1 %epil.iter1678.cmp.not, label %.preheader860.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil, !llvm.loop !69

.preheader860.preheader:                          ; preds = %.preheader860.preheader.loopexit.unr-lcssa, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil, %.loopexit861
  %.01267 = phi ptr [ %i.ox, %.loopexit861 ], [ %i.akh, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil ], [ %i.akh, %.preheader860.preheader.loopexit.unr-lcssa ]
  %.pre-phi10701265 = phi i64 [ %.pre1069, %.loopexit861 ], [ %i.akj, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil ], [ %i.akj, %.preheader860.preheader.loopexit.unr-lcssa ] ; 19 uses
  %.pn1285 = uitofp nneg i32 %i.wy to double
  %.in = fdiv nnan double 1.000000e+00, %.pn1285
  %i.ane = fptrunc double %.in to float           ; 30 uses
  %i.anf = shl nsw i64 %.pre-phi10701265, 2
  %scevgep1436 = getelementptr i8, ptr %i.ih, i64 %i.anf
  %i.ang = mul nsw i64 %i.pa, 12                  ; 2 uses
  %i.anh = mul nsw i64 %.pre-phi10701265, 12
  %i.ani = shl nsw i64 %i.pa, 3                   ; 2 uses
  %i.anj = add nsw i64 %i.ang, 12
  %i.ank = shl nsw i64 %.pre-phi10701265, 2
  %scevgep1474 = getelementptr i8, ptr %i.ih, i64 %i.ank
  %i.anl = mul nsw i64 %i.pa, 12                  ; 2 uses
  %i.anm = mul nsw i64 %.pre-phi10701265, 12
  %i.ann = shl nsw i64 %i.pa, 2                   ; 2 uses
  %i.ano = add nsw i64 %i.anl, 12
  %i.anp = shl nsw i64 %.pre-phi10701265, 2
  %scevgep1513 = getelementptr i8, ptr %i.ih, i64 %i.anp
  %i.anq = mul nsw i64 %i.pa, 12                  ; 2 uses
  %i.anr = mul nsw i64 %.pre-phi10701265, 12
  %i.ans = add nsw i64 %i.anq, 12
  %i.ant = getelementptr i8, ptr %i.pf, i64 %i.anr
  %broadcast.splatinsert1525 = insertelement <8 x float> poison, float %i.ane, i64 0
  %broadcast.splat1526 = shufflevector <8 x float> %broadcast.splatinsert1525, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.anu = getelementptr i8, ptr %i.pf, i64 %i.ann
  %i.anv = getelementptr i8, ptr %i.pf, i64 %i.anm
  %i.anw = getelementptr i8, ptr %i.anv, i64 %i.ann
  %broadcast.splatinsert1486 = insertelement <8 x float> poison, float %i.ane, i64 0
  %broadcast.splat1487 = shufflevector <8 x float> %broadcast.splatinsert1486, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.anx = getelementptr i8, ptr %i.pf, i64 %i.ani
  %i.any = getelementptr i8, ptr %i.pf, i64 %i.anh
  %i.anz = getelementptr i8, ptr %i.any, i64 %i.ani
  %broadcast.splatinsert1447 = insertelement <8 x float> poison, float %i.ane, i64 0
  %broadcast.splat1448 = shufflevector <8 x float> %broadcast.splatinsert1447, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %.preheader860

.preheader860:                                    ; preds = %.preheader860.preheader, %._crit_edge928.2
  %.1393931 = phi i64 [ %i.azi, %._crit_edge928.2 ], [ 0, %.preheader860.preheader ] ; 24 uses
  %i.aoa = mul nuw nsw i64 %.1393931, 3           ; 3 uses
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.1393931 ; 33 uses
  %i.aoc = mul nsw i64 %i.aoa, %i.pa
  %i.aod = getelementptr [4 x i8], ptr %i.pf, i64 %i.aoc ; 4 uses
  %i.aoe = sub i64 %.pre-phi10701265, %.1393931   ; 3 uses
  %min.iters.check1515 = icmp ult i64 %i.aoe, 8
  br i1 %min.iters.check1515, label %scalar.ph1514.preheader, label %vector.memcheck1516

vector.memcheck1516:                              ; preds = %.preheader860
  %i.aof = mul i64 %.1393931, %i.ans
  %i.aog = getelementptr i8, ptr %i.pf, i64 %i.aof
  %i.aoh = mul i64 %.1393931, %i.anq
  %i.aoi = getelementptr i8, ptr %i.ant, i64 %i.aoh ; 2 uses
  %bound01517 = icmp ult ptr %i.aog, %scevgep1513
  %bound11518 = icmp ult ptr %i.ih, %i.aoi
  %bound11520 = icmp ult ptr %i.aob, %i.aoi
  %found.conflict15211604 = or i1 %bound11518, %bound11520
  %conflict.rdx1522 = and i1 %bound01517, %found.conflict15211604
  br i1 %conflict.rdx1522, label %scalar.ph1514.preheader, label %vector.ph1523

vector.ph1523:                                    ; preds = %vector.memcheck1516
  %n.vec1524 = and i64 %i.aoe, -8                 ; 3 uses
  %i.aoj = add i64 %.1393931, %n.vec1524
  %i.aok = load float, ptr %i.aob, align 4, !tbaa !146, !alias.scope !168
  %broadcast.splatinsert1534 = insertelement <8 x float> poison, float %i.aok, i64 0
  %broadcast.splat1535 = shufflevector <8 x float> %broadcast.splatinsert1534, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body1527

vector.body1527:                                  ; preds = %vector.body1527, %vector.ph1523
  %index1528 = phi i64 [ 0, %vector.ph1523 ], [ %index.next1537, %vector.body1527 ] ; 2 uses
  %i.aol = add nuw i64 %.1393931, %index1528      ; 2 uses
  %i.aom = mul nuw nsw i64 %i.aol, 12
  %i.aon = getelementptr i8, ptr %i.aod, i64 %i.aom ; 2 uses
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.aol
  %wide.vec1529 = load <24 x float>, ptr %i.aon, align 4, !tbaa !146, !alias.scope !169, !noalias !170 ; 3 uses
  %strided.vec1530 = shufflevector <24 x float> %wide.vec1529, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1531 = shufflevector <24 x float> %wide.vec1529, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1532 = shufflevector <24 x float> %wide.vec1529, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.aop = fmul <8 x float> %strided.vec1530, %broadcast.splat1526
  %wide.load1533 = load <8 x float>, ptr %i.aoo, align 4, !tbaa !146, !alias.scope !171 ; 3 uses
  %i.aoq = fmul <8 x float> %i.aop, %wide.load1533
  %i.aor = fmul <8 x float> %i.aoq, %broadcast.splat1535
  %i.aos = fmul <8 x float> %strided.vec1531, %broadcast.splat1526
  %i.aot = fmul <8 x float> %i.aos, %wide.load1533
  %i.aou = fmul <8 x float> %i.aot, %broadcast.splat1535
  %i.aov = fmul <8 x float> %strided.vec1532, %broadcast.splat1526
  %i.aow = fmul <8 x float> %i.aov, %wide.load1533
  %i.aox = fmul <8 x float> %i.aow, %broadcast.splat1535
  %i.aoy = shufflevector <8 x float> %i.aor, <8 x float> %i.aou, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aoz = shufflevector <8 x float> %i.aox, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1536 = shufflevector <16 x float> %i.aoy, <16 x float> %i.aoz, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1536, ptr %i.aon, align 4, !tbaa !146, !alias.scope !169, !noalias !170
  %index.next1537 = add nuw i64 %index1528, 8     ; 2 uses
  %i.apa = icmp eq i64 %index.next1537, %n.vec1524
  br i1 %i.apa, label %middle.block1538, label %vector.body1527, !llvm.loop !74

middle.block1538:                                 ; preds = %vector.body1527
  %cmp.n1539 = icmp eq i64 %i.aoe, %n.vec1524
  br i1 %cmp.n1539, label %._crit_edge928, label %scalar.ph1514.preheader

scalar.ph1514.preheader:                          ; preds = %vector.memcheck1516, %.preheader860, %middle.block1538
  %.10408926.ph = phi i64 [ %.1393931, %vector.memcheck1516 ], [ %.1393931, %.preheader860 ], [ %i.aoj, %middle.block1538 ] ; 6 uses
  %i.apb = sub i64 %.pre-phi10701265, %.10408926.ph
  %.neg = add i64 %.10408926.ph, 1
  %xtraiter1683 = and i64 %i.apb, 1
  %lcmp.mod1684.not = icmp eq i64 %xtraiter1683, 0
  br i1 %lcmp.mod1684.not, label %scalar.ph1514.prol.loopexit, label %scalar.ph1514.prol

scalar.ph1514.prol:                               ; preds = %scalar.ph1514.preheader
  %.idx508.prol = mul nuw nsw i64 %.10408926.ph, 12
  %i.apc = getelementptr i8, ptr %i.aod, i64 %.idx508.prol ; 4 uses
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408926.ph ; 3 uses
  %i.ape = load float, ptr %i.apc, align 4, !tbaa !146
  %i.apf = fmul float %i.ape, %i.ane
  %i.apg = load float, ptr %i.apd, align 4, !tbaa !146
  %i.aph = fmul float %i.apf, %i.apg
  %i.api = load float, ptr %i.aob, align 4, !tbaa !146
  %i.apj = fmul float %i.aph, %i.api
  store float %i.apj, ptr %i.apc, align 4, !tbaa !146
  %i.apk = getelementptr i8, ptr %i.apc, i64 4    ; 2 uses
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !146
  %i.apm = fmul float %i.apl, %i.ane
  %i.apn = load float, ptr %i.apd, align 4, !tbaa !146
  %i.apo = fmul float %i.apm, %i.apn
  %i.app = load float, ptr %i.aob, align 4, !tbaa !146
  %i.apq = fmul float %i.apo, %i.app
  store float %i.apq, ptr %i.apk, align 4, !tbaa !146
  %i.apr = getelementptr i8, ptr %i.apc, i64 8    ; 2 uses
  %i.aps = load float, ptr %i.apr, align 4, !tbaa !146
  %i.apt = fmul float %i.aps, %i.ane
  %i.apu = load float, ptr %i.apd, align 4, !tbaa !146
  %i.apv = fmul float %i.apt, %i.apu
  %i.apw = load float, ptr %i.aob, align 4, !tbaa !146
  %i.apx = fmul float %i.apv, %i.apw
  store float %i.apx, ptr %i.apr, align 4, !tbaa !146
  %i.apy = add nuw nsw i64 %.10408926.ph, 1
  br label %scalar.ph1514.prol.loopexit

scalar.ph1514.prol.loopexit:                      ; preds = %scalar.ph1514.prol, %scalar.ph1514.preheader
  %.10408926.unr = phi i64 [ %.10408926.ph, %scalar.ph1514.preheader ], [ %i.apy, %scalar.ph1514.prol ]
  %i.apz = icmp eq i64 %.pre-phi10701265, %.neg
  br i1 %i.apz, label %._crit_edge928, label %scalar.ph1514

.preheader858:                                    ; preds = %._crit_edge928.2, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.preheader, %.loopexit861
  %.01266 = phi ptr [ %i.akh, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.preheader ], [ %i.ox, %.loopexit861 ], [ %.01267, %._crit_edge928.2 ]
  %i.aqa = icmp sgt i32 %i.oy, 0                  ; 8 uses
  br i1 %i.aqa, label %.preheader857.preheader, label %._crit_edge937

.preheader857.preheader:                          ; preds = %.preheader858
  %xtraiter1691 = and i64 %i.pa, 3
  %i.aqb = icmp ult i32 %i.oz, 4
  br i1 %i.aqb, label %.preheader857.epil.preheader, label %.preheader857.preheader.new

.preheader857.preheader.new:                      ; preds = %.preheader857.preheader
  %unroll_iter1695 = and i64 %i.pa, 2147483644
  br label %.preheader857

scalar.ph1514:                                    ; preds = %scalar.ph1514.prol.loopexit, %scalar.ph1514
  %.10408926 = phi i64 [ %i.arv, %scalar.ph1514 ], [ %.10408926.unr, %scalar.ph1514.prol.loopexit ] ; 4 uses
  %.idx508 = mul nuw nsw i64 %.10408926, 12
  %i.aqc = getelementptr i8, ptr %i.aod, i64 %.idx508 ; 4 uses
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408926 ; 3 uses
  %i.aqe = load float, ptr %i.aqc, align 4, !tbaa !146
  %i.aqf = fmul float %i.aqe, %i.ane
  %i.aqg = load float, ptr %i.aqd, align 4, !tbaa !146
  %i.aqh = fmul float %i.aqf, %i.aqg
  %i.aqi = load float, ptr %i.aob, align 4, !tbaa !146
  %i.aqj = fmul float %i.aqh, %i.aqi
  store float %i.aqj, ptr %i.aqc, align 4, !tbaa !146
  %i.aqk = getelementptr i8, ptr %i.aqc, i64 4    ; 2 uses
  %i.aql = load float, ptr %i.aqk, align 4, !tbaa !146
  %i.aqm = fmul float %i.aql, %i.ane
  %i.aqn = load float, ptr %i.aqd, align 4, !tbaa !146
  %i.aqo = fmul float %i.aqm, %i.aqn
  %i.aqp = load float, ptr %i.aob, align 4, !tbaa !146
  %i.aqq = fmul float %i.aqo, %i.aqp
  store float %i.aqq, ptr %i.aqk, align 4, !tbaa !146
  %i.aqr = getelementptr i8, ptr %i.aqc, i64 8    ; 2 uses
  %i.aqs = load float, ptr %i.aqr, align 4, !tbaa !146
  %i.aqt = fmul float %i.aqs, %i.ane
  %i.aqu = load float, ptr %i.aqd, align 4, !tbaa !146
  %i.aqv = fmul float %i.aqt, %i.aqu
  %i.aqw = load float, ptr %i.aob, align 4, !tbaa !146
  %i.aqx = fmul float %i.aqv, %i.aqw
  store float %i.aqx, ptr %i.aqr, align 4, !tbaa !146
  %i.aqy = add nuw nsw i64 %.10408926, 1          ; 2 uses
  %.idx508.11686 = mul nuw nsw i64 %i.aqy, 12
  %i.aqz = getelementptr i8, ptr %i.aod, i64 %.idx508.11686 ; 4 uses
  %i.ara = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.aqy ; 3 uses
  %i.arb = load float, ptr %i.aqz, align 4, !tbaa !146
  %i.arc = fmul float %i.arb, %i.ane
  %i.ard = load float, ptr %i.ara, align 4, !tbaa !146
  %i.are = fmul float %i.arc, %i.ard
  %i.arf = load float, ptr %i.aob, align 4, !tbaa !146
  %i.arg = fmul float %i.are, %i.arf
  store float %i.arg, ptr %i.aqz, align 4, !tbaa !146
  %i.arh = getelementptr i8, ptr %i.aqz, i64 4    ; 2 uses
  %i.ari = load float, ptr %i.arh, align 4, !tbaa !146
  %i.arj = fmul float %i.ari, %i.ane
  %i.ark = load float, ptr %i.ara, align 4, !tbaa !146
  %i.arl = fmul float %i.arj, %i.ark
  %i.arm = load float, ptr %i.aob, align 4, !tbaa !146
  %i.arn = fmul float %i.arl, %i.arm
  store float %i.arn, ptr %i.arh, align 4, !tbaa !146
  %i.aro = getelementptr i8, ptr %i.aqz, i64 8    ; 2 uses
  %i.arp = load float, ptr %i.aro, align 4, !tbaa !146
  %i.arq = fmul float %i.arp, %i.ane
  %i.arr = load float, ptr %i.ara, align 4, !tbaa !146
  %i.ars = fmul float %i.arq, %i.arr
  %i.art = load float, ptr %i.aob, align 4, !tbaa !146
  %i.aru = fmul float %i.ars, %i.art
  store float %i.aru, ptr %i.aro, align 4, !tbaa !146
  %i.arv = add nuw nsw i64 %.10408926, 2          ; 2 uses
  %exitcond1031.not.1 = icmp eq i64 %i.arv, %.pre-phi10701265
  br i1 %exitcond1031.not.1, label %._crit_edge928, label %scalar.ph1514, !llvm.loop !75

._crit_edge928:                                   ; preds = %scalar.ph1514.prol.loopexit, %scalar.ph1514, %middle.block1538
  %i.arw = add nuw nsw i64 %i.aoa, 1
  %i.arx = mul nsw i64 %i.arw, %i.pa
  %i.ary = getelementptr [4 x i8], ptr %i.pf, i64 %i.arx ; 4 uses
  %i.arz = sub i64 %.pre-phi10701265, %.1393931   ; 3 uses
  %min.iters.check1476 = icmp ult i64 %i.arz, 8
  br i1 %min.iters.check1476, label %scalar.ph1475.preheader, label %vector.memcheck1477

vector.memcheck1477:                              ; preds = %._crit_edge928
  %i.asa = mul i64 %.1393931, %i.ano
  %i.asb = getelementptr i8, ptr %i.anu, i64 %i.asa
  %i.asc = mul i64 %.1393931, %i.anl
  %i.asd = getelementptr i8, ptr %i.anw, i64 %i.asc ; 2 uses
  %bound01478 = icmp ult ptr %i.asb, %scevgep1474
  %bound11479 = icmp ult ptr %i.ih, %i.asd
  %bound11481 = icmp ult ptr %i.aob, %i.asd
  %found.conflict14821605 = or i1 %bound11479, %bound11481
  %conflict.rdx1483 = and i1 %bound01478, %found.conflict14821605
  br i1 %conflict.rdx1483, label %scalar.ph1475.preheader, label %vector.ph1484

vector.ph1484:                                    ; preds = %vector.memcheck1477
  %n.vec1485 = and i64 %i.arz, -8                 ; 3 uses
  %i.ase = add i64 %.1393931, %n.vec1485
  %i.asf = load float, ptr %i.aob, align 4, !tbaa !146, !alias.scope !172
  %broadcast.splatinsert1495 = insertelement <8 x float> poison, float %i.asf, i64 0
  %broadcast.splat1496 = shufflevector <8 x float> %broadcast.splatinsert1495, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body1488

vector.body1488:                                  ; preds = %vector.body1488, %vector.ph1484
  %index1489 = phi i64 [ 0, %vector.ph1484 ], [ %index.next1498, %vector.body1488 ] ; 2 uses
  %i.asg = add nuw i64 %.1393931, %index1489      ; 2 uses
  %i.ash = mul nuw nsw i64 %i.asg, 12
  %i.asi = getelementptr i8, ptr %i.ary, i64 %i.ash ; 2 uses
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.asg
  %wide.vec1490 = load <24 x float>, ptr %i.asi, align 4, !tbaa !146, !alias.scope !173, !noalias !174 ; 3 uses
  %strided.vec1491 = shufflevector <24 x float> %wide.vec1490, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1492 = shufflevector <24 x float> %wide.vec1490, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1493 = shufflevector <24 x float> %wide.vec1490, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ask = fmul <8 x float> %strided.vec1491, %broadcast.splat1487
  %wide.load1494 = load <8 x float>, ptr %i.asj, align 4, !tbaa !146, !alias.scope !175 ; 3 uses
  %i.asl = fmul <8 x float> %i.ask, %wide.load1494
  %i.asm = fmul <8 x float> %i.asl, %broadcast.splat1496
  %i.asn = fmul <8 x float> %strided.vec1492, %broadcast.splat1487
  %i.aso = fmul <8 x float> %i.asn, %wide.load1494
  %i.asp = fmul <8 x float> %i.aso, %broadcast.splat1496
  %i.asq = fmul <8 x float> %strided.vec1493, %broadcast.splat1487
  %i.asr = fmul <8 x float> %i.asq, %wide.load1494
  %i.ass = fmul <8 x float> %i.asr, %broadcast.splat1496
  %i.ast = shufflevector <8 x float> %i.asm, <8 x float> %i.asp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.asu = shufflevector <8 x float> %i.ass, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1497 = shufflevector <16 x float> %i.ast, <16 x float> %i.asu, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1497, ptr %i.asi, align 4, !tbaa !146, !alias.scope !173, !noalias !174
  %index.next1498 = add nuw i64 %index1489, 8     ; 2 uses
  %i.asv = icmp eq i64 %index.next1498, %n.vec1485
  br i1 %i.asv, label %middle.block1499, label %vector.body1488, !llvm.loop !80

middle.block1499:                                 ; preds = %vector.body1488
  %cmp.n1500 = icmp eq i64 %i.arz, %n.vec1485
  br i1 %cmp.n1500, label %._crit_edge928.1, label %scalar.ph1475.preheader

scalar.ph1475.preheader:                          ; preds = %vector.memcheck1477, %._crit_edge928, %middle.block1499
  %.10408926.1.ph = phi i64 [ %.1393931, %vector.memcheck1477 ], [ %.1393931, %._crit_edge928 ], [ %i.ase, %middle.block1499 ] ; 6 uses
  %i.asw = sub i64 %.pre-phi10701265, %.10408926.1.ph
  %.neg1741 = add i64 %.10408926.1.ph, 1
  %xtraiter1687 = and i64 %i.asw, 1
  %lcmp.mod1688.not = icmp eq i64 %xtraiter1687, 0
  br i1 %lcmp.mod1688.not, label %scalar.ph1475.prol.loopexit, label %scalar.ph1475.prol

scalar.ph1475.prol:                               ; preds = %scalar.ph1475.preheader
  %.idx508.1.prol = mul nuw nsw i64 %.10408926.1.ph, 12
  %i.asx = getelementptr i8, ptr %i.ary, i64 %.idx508.1.prol ; 4 uses
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408926.1.ph ; 3 uses
  %i.asz = load float, ptr %i.asx, align 4, !tbaa !146
  %i.ata = fmul float %i.asz, %i.ane
  %i.atb = load float, ptr %i.asy, align 4, !tbaa !146
  %i.atc = fmul float %i.ata, %i.atb
  %i.atd = load float, ptr %i.aob, align 4, !tbaa !146
  %i.ate = fmul float %i.atc, %i.atd
  store float %i.ate, ptr %i.asx, align 4, !tbaa !146
  %i.atf = getelementptr i8, ptr %i.asx, i64 4    ; 2 uses
  %i.atg = load float, ptr %i.atf, align 4, !tbaa !146
  %i.ath = fmul float %i.atg, %i.ane
  %i.ati = load float, ptr %i.asy, align 4, !tbaa !146
  %i.atj = fmul float %i.ath, %i.ati
  %i.atk = load float, ptr %i.aob, align 4, !tbaa !146
  %i.atl = fmul float %i.atj, %i.atk
  store float %i.atl, ptr %i.atf, align 4, !tbaa !146
  %i.atm = getelementptr i8, ptr %i.asx, i64 8    ; 2 uses
  %i.atn = load float, ptr %i.atm, align 4, !tbaa !146
  %i.ato = fmul float %i.atn, %i.ane
  %i.atp = load float, ptr %i.asy, align 4, !tbaa !146
  %i.atq = fmul float %i.ato, %i.atp
  %i.atr = load float, ptr %i.aob, align 4, !tbaa !146
  %i.ats = fmul float %i.atq, %i.atr
  store float %i.ats, ptr %i.atm, align 4, !tbaa !146
  %i.att = add nuw nsw i64 %.10408926.1.ph, 1
  br label %scalar.ph1475.prol.loopexit

scalar.ph1475.prol.loopexit:                      ; preds = %scalar.ph1475.prol, %scalar.ph1475.preheader
  %.10408926.1.unr = phi i64 [ %.10408926.1.ph, %scalar.ph1475.preheader ], [ %i.att, %scalar.ph1475.prol ]
  %i.atu = icmp eq i64 %.pre-phi10701265, %.neg1741
  br i1 %i.atu, label %._crit_edge928.1, label %scalar.ph1475

scalar.ph1475:                                    ; preds = %scalar.ph1475.prol.loopexit, %scalar.ph1475
  %.10408926.1 = phi i64 [ %i.avo, %scalar.ph1475 ], [ %.10408926.1.unr, %scalar.ph1475.prol.loopexit ] ; 4 uses
  %.idx508.1 = mul nuw nsw i64 %.10408926.1, 12
  %i.atv = getelementptr i8, ptr %i.ary, i64 %.idx508.1 ; 4 uses
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408926.1 ; 3 uses
  %i.atx = load float, ptr %i.atv, align 4, !tbaa !146
  %i.aty = fmul float %i.atx, %i.ane
  %i.atz = load float, ptr %i.atw, align 4, !tbaa !146
  %i.aua = fmul float %i.aty, %i.atz
  %i.aub = load float, ptr %i.aob, align 4, !tbaa !146
  %i.auc = fmul float %i.aua, %i.aub
  store float %i.auc, ptr %i.atv, align 4, !tbaa !146
  %i.aud = getelementptr i8, ptr %i.atv, i64 4    ; 2 uses
  %i.aue = load float, ptr %i.aud, align 4, !tbaa !146
  %i.auf = fmul float %i.aue, %i.ane
  %i.aug = load float, ptr %i.atw, align 4, !tbaa !146
  %i.auh = fmul float %i.auf, %i.aug
  %i.aui = load float, ptr %i.aob, align 4, !tbaa !146
  %i.auj = fmul float %i.auh, %i.aui
  store float %i.auj, ptr %i.aud, align 4, !tbaa !146
  %i.auk = getelementptr i8, ptr %i.atv, i64 8    ; 2 uses
  %i.aul = load float, ptr %i.auk, align 4, !tbaa !146
  %i.aum = fmul float %i.aul, %i.ane
  %i.aun = load float, ptr %i.atw, align 4, !tbaa !146
  %i.auo = fmul float %i.aum, %i.aun
  %i.aup = load float, ptr %i.aob, align 4, !tbaa !146
  %i.auq = fmul float %i.auo, %i.aup
  store float %i.auq, ptr %i.auk, align 4, !tbaa !146
  %i.aur = add nuw nsw i64 %.10408926.1, 1        ; 2 uses
  %.idx508.1.1 = mul nuw nsw i64 %i.aur, 12
  %i.aus = getelementptr i8, ptr %i.ary, i64 %.idx508.1.1 ; 4 uses
  %i.aut = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.aur ; 3 uses
  %i.auu = load float, ptr %i.aus, align 4, !tbaa !146
  %i.auv = fmul float %i.auu, %i.ane
  %i.auw = load float, ptr %i.aut, align 4, !tbaa !146
  %i.aux = fmul float %i.auv, %i.auw
  %i.auy = load float, ptr %i.aob, align 4, !tbaa !146
  %i.auz = fmul float %i.aux, %i.auy
  store float %i.auz, ptr %i.aus, align 4, !tbaa !146
  %i.ava = getelementptr i8, ptr %i.aus, i64 4    ; 2 uses
  %i.avb = load float, ptr %i.ava, align 4, !tbaa !146
  %i.avc = fmul float %i.avb, %i.ane
  %i.avd = load float, ptr %i.aut, align 4, !tbaa !146
  %i.ave = fmul float %i.avc, %i.avd
  %i.avf = load float, ptr %i.aob, align 4, !tbaa !146
  %i.avg = fmul float %i.ave, %i.avf
  store float %i.avg, ptr %i.ava, align 4, !tbaa !146
  %i.avh = getelementptr i8, ptr %i.aus, i64 8    ; 2 uses
  %i.avi = load float, ptr %i.avh, align 4, !tbaa !146
  %i.avj = fmul float %i.avi, %i.ane
  %i.avk = load float, ptr %i.aut, align 4, !tbaa !146
  %i.avl = fmul float %i.avj, %i.avk
  %i.avm = load float, ptr %i.aob, align 4, !tbaa !146
  %i.avn = fmul float %i.avl, %i.avm
  store float %i.avn, ptr %i.avh, align 4, !tbaa !146
  %i.avo = add nuw nsw i64 %.10408926.1, 2        ; 2 uses
  %exitcond1031.1.not.1 = icmp eq i64 %i.avo, %.pre-phi10701265
  br i1 %exitcond1031.1.not.1, label %._crit_edge928.1, label %scalar.ph1475, !llvm.loop !81

._crit_edge928.1:                                 ; preds = %scalar.ph1475.prol.loopexit, %scalar.ph1475, %middle.block1499
  %i.avp = add nuw nsw i64 %i.aoa, 2
  %i.avq = mul nsw i64 %i.avp, %i.pa
  %i.avr = getelementptr [4 x i8], ptr %i.pf, i64 %i.avq ; 4 uses
  %i.avs = sub i64 %.pre-phi10701265, %.1393931   ; 3 uses
  %min.iters.check1438 = icmp ult i64 %i.avs, 8
  br i1 %min.iters.check1438, label %scalar.ph1437.preheader, label %vector.memcheck1439

vector.memcheck1439:                              ; preds = %._crit_edge928.1
  %i.avt = mul i64 %.1393931, %i.anj
  %i.avu = getelementptr i8, ptr %i.anx, i64 %i.avt
  %i.avv = mul i64 %.1393931, %i.ang
  %i.avw = getelementptr i8, ptr %i.anz, i64 %i.avv ; 2 uses
  %bound01440 = icmp ult ptr %i.avu, %scevgep1436
  %bound11441 = icmp ult ptr %i.ih, %i.avw
  %bound11443 = icmp ult ptr %i.aob, %i.avw
  %found.conflict14441606 = or i1 %bound11441, %bound11443
  %conflict.rdx = and i1 %bound01440, %found.conflict14441606
  br i1 %conflict.rdx, label %scalar.ph1437.preheader, label %vector.ph1445

vector.ph1445:                                    ; preds = %vector.memcheck1439
  %n.vec1446 = and i64 %i.avs, -8                 ; 3 uses
  %i.avx = add i64 %.1393931, %n.vec1446
  %i.avy = load float, ptr %i.aob, align 4, !tbaa !146, !alias.scope !176
  %broadcast.splatinsert1456 = insertelement <8 x float> poison, float %i.avy, i64 0
  %broadcast.splat1457 = shufflevector <8 x float> %broadcast.splatinsert1456, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body1449

vector.body1449:                                  ; preds = %vector.body1449, %vector.ph1445
  %index1450 = phi i64 [ 0, %vector.ph1445 ], [ %index.next1459, %vector.body1449 ] ; 2 uses
  %i.avz = add nuw i64 %.1393931, %index1450      ; 2 uses
  %i.awa = mul nuw nsw i64 %i.avz, 12
  %i.awb = getelementptr i8, ptr %i.avr, i64 %i.awa ; 2 uses
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.avz
  %wide.vec1451 = load <24 x float>, ptr %i.awb, align 4, !tbaa !146, !alias.scope !177, !noalias !178 ; 3 uses
  %strided.vec1452 = shufflevector <24 x float> %wide.vec1451, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1453 = shufflevector <24 x float> %wide.vec1451, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1454 = shufflevector <24 x float> %wide.vec1451, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.awd = fmul <8 x float> %strided.vec1452, %broadcast.splat1448
  %wide.load1455 = load <8 x float>, ptr %i.awc, align 4, !tbaa !146, !alias.scope !179 ; 3 uses
  %i.awe = fmul <8 x float> %i.awd, %wide.load1455
  %i.awf = fmul <8 x float> %i.awe, %broadcast.splat1457
  %i.awg = fmul <8 x float> %strided.vec1453, %broadcast.splat1448
  %i.awh = fmul <8 x float> %i.awg, %wide.load1455
  %i.awi = fmul <8 x float> %i.awh, %broadcast.splat1457
  %i.awj = fmul <8 x float> %strided.vec1454, %broadcast.splat1448
  %i.awk = fmul <8 x float> %i.awj, %wide.load1455
  %i.awl = fmul <8 x float> %i.awk, %broadcast.splat1457
  %i.awm = shufflevector <8 x float> %i.awf, <8 x float> %i.awi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awn = shufflevector <8 x float> %i.awl, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1458 = shufflevector <16 x float> %i.awm, <16 x float> %i.awn, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1458, ptr %i.awb, align 4, !tbaa !146, !alias.scope !177, !noalias !178
  %index.next1459 = add nuw i64 %index1450, 8     ; 2 uses
  %i.awo = icmp eq i64 %index.next1459, %n.vec1446
  br i1 %i.awo, label %middle.block1460, label %vector.body1449, !llvm.loop !86

middle.block1460:                                 ; preds = %vector.body1449
  %cmp.n1461 = icmp eq i64 %i.avs, %n.vec1446
  br i1 %cmp.n1461, label %._crit_edge928.2, label %scalar.ph1437.preheader

scalar.ph1437.preheader:                          ; preds = %vector.memcheck1439, %._crit_edge928.1, %middle.block1460
  %.10408926.2.ph = phi i64 [ %.1393931, %vector.memcheck1439 ], [ %.1393931, %._crit_edge928.1 ], [ %i.avx, %middle.block1460 ] ; 6 uses
  %i.awp = sub i64 %.pre-phi10701265, %.10408926.2.ph
  %.neg1742 = add i64 %.10408926.2.ph, 1
  %xtraiter1689 = and i64 %i.awp, 1
  %lcmp.mod1690.not = icmp eq i64 %xtraiter1689, 0
  br i1 %lcmp.mod1690.not, label %scalar.ph1437.prol.loopexit, label %scalar.ph1437.prol

scalar.ph1437.prol:                               ; preds = %scalar.ph1437.preheader
  %.idx508.2.prol = mul nuw nsw i64 %.10408926.2.ph, 12
  %i.awq = getelementptr i8, ptr %i.avr, i64 %.idx508.2.prol ; 4 uses
  %i.awr = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408926.2.ph ; 3 uses
  %i.aws = load float, ptr %i.awq, align 4, !tbaa !146
  %i.awt = fmul float %i.aws, %i.ane
  %i.awu = load float, ptr %i.awr, align 4, !tbaa !146
  %i.awv = fmul float %i.awt, %i.awu
  %i.aww = load float, ptr %i.aob, align 4, !tbaa !146
  %i.awx = fmul float %i.awv, %i.aww
  store float %i.awx, ptr %i.awq, align 4, !tbaa !146
  %i.awy = getelementptr i8, ptr %i.awq, i64 4    ; 2 uses
  %i.awz = load float, ptr %i.awy, align 4, !tbaa !146
  %i.axa = fmul float %i.awz, %i.ane
  %i.axb = load float, ptr %i.awr, align 4, !tbaa !146
  %i.axc = fmul float %i.axa, %i.axb
  %i.axd = load float, ptr %i.aob, align 4, !tbaa !146
  %i.axe = fmul float %i.axc, %i.axd
  store float %i.axe, ptr %i.awy, align 4, !tbaa !146
  %i.axf = getelementptr i8, ptr %i.awq, i64 8    ; 2 uses
  %i.axg = load float, ptr %i.axf, align 4, !tbaa !146
  %i.axh = fmul float %i.axg, %i.ane
  %i.axi = load float, ptr %i.awr, align 4, !tbaa !146
  %i.axj = fmul float %i.axh, %i.axi
  %i.axk = load float, ptr %i.aob, align 4, !tbaa !146
  %i.axl = fmul float %i.axj, %i.axk
  store float %i.axl, ptr %i.axf, align 4, !tbaa !146
  %i.axm = add nuw nsw i64 %.10408926.2.ph, 1
  br label %scalar.ph1437.prol.loopexit

scalar.ph1437.prol.loopexit:                      ; preds = %scalar.ph1437.prol, %scalar.ph1437.preheader
  %.10408926.2.unr = phi i64 [ %.10408926.2.ph, %scalar.ph1437.preheader ], [ %i.axm, %scalar.ph1437.prol ]
  %i.axn = icmp eq i64 %.pre-phi10701265, %.neg1742
  br i1 %i.axn, label %._crit_edge928.2, label %scalar.ph1437

scalar.ph1437:                                    ; preds = %scalar.ph1437.prol.loopexit, %scalar.ph1437
  %.10408926.2 = phi i64 [ %i.azh, %scalar.ph1437 ], [ %.10408926.2.unr, %scalar.ph1437.prol.loopexit ] ; 4 uses
  %.idx508.2 = mul nuw nsw i64 %.10408926.2, 12
  %i.axo = getelementptr i8, ptr %i.avr, i64 %.idx508.2 ; 4 uses
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408926.2 ; 3 uses
  %i.axq = load float, ptr %i.axo, align 4, !tbaa !146
  %i.axr = fmul float %i.axq, %i.ane
  %i.axs = load float, ptr %i.axp, align 4, !tbaa !146
  %i.axt = fmul float %i.axr, %i.axs
  %i.axu = load float, ptr %i.aob, align 4, !tbaa !146
  %i.axv = fmul float %i.axt, %i.axu
  store float %i.axv, ptr %i.axo, align 4, !tbaa !146
  %i.axw = getelementptr i8, ptr %i.axo, i64 4    ; 2 uses
  %i.axx = load float, ptr %i.axw, align 4, !tbaa !146
  %i.axy = fmul float %i.axx, %i.ane
  %i.axz = load float, ptr %i.axp, align 4, !tbaa !146
  %i.aya = fmul float %i.axy, %i.axz
  %i.ayb = load float, ptr %i.aob, align 4, !tbaa !146
  %i.ayc = fmul float %i.aya, %i.ayb
  store float %i.ayc, ptr %i.axw, align 4, !tbaa !146
  %i.ayd = getelementptr i8, ptr %i.axo, i64 8    ; 2 uses
  %i.aye = load float, ptr %i.ayd, align 4, !tbaa !146
  %i.ayf = fmul float %i.aye, %i.ane
  %i.ayg = load float, ptr %i.axp, align 4, !tbaa !146
  %i.ayh = fmul float %i.ayf, %i.ayg
  %i.ayi = load float, ptr %i.aob, align 4, !tbaa !146
  %i.ayj = fmul float %i.ayh, %i.ayi
  store float %i.ayj, ptr %i.ayd, align 4, !tbaa !146
  %i.ayk = add nuw nsw i64 %.10408926.2, 1        ; 2 uses
  %.idx508.2.1 = mul nuw nsw i64 %i.ayk, 12
  %i.ayl = getelementptr i8, ptr %i.avr, i64 %.idx508.2.1 ; 4 uses
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ayk ; 3 uses
  %i.ayn = load float, ptr %i.ayl, align 4, !tbaa !146
  %i.ayo = fmul float %i.ayn, %i.ane
  %i.ayp = load float, ptr %i.aym, align 4, !tbaa !146
  %i.ayq = fmul float %i.ayo, %i.ayp
  %i.ayr = load float, ptr %i.aob, align 4, !tbaa !146
  %i.ays = fmul float %i.ayq, %i.ayr
  store float %i.ays, ptr %i.ayl, align 4, !tbaa !146
  %i.ayt = getelementptr i8, ptr %i.ayl, i64 4    ; 2 uses
  %i.ayu = load float, ptr %i.ayt, align 4, !tbaa !146
  %i.ayv = fmul float %i.ayu, %i.ane
  %i.ayw = load float, ptr %i.aym, align 4, !tbaa !146
  %i.ayx = fmul float %i.ayv, %i.ayw
  %i.ayy = load float, ptr %i.aob, align 4, !tbaa !146
  %i.ayz = fmul float %i.ayx, %i.ayy
  store float %i.ayz, ptr %i.ayt, align 4, !tbaa !146
  %i.aza = getelementptr i8, ptr %i.ayl, i64 8    ; 2 uses
  %i.azb = load float, ptr %i.aza, align 4, !tbaa !146
  %i.azc = fmul float %i.azb, %i.ane
  %i.azd = load float, ptr %i.aym, align 4, !tbaa !146
  %i.aze = fmul float %i.azc, %i.azd
  %i.azf = load float, ptr %i.aob, align 4, !tbaa !146
  %i.azg = fmul float %i.aze, %i.azf
  store float %i.azg, ptr %i.aza, align 4, !tbaa !146
  %i.azh = add nuw nsw i64 %.10408926.2, 2        ; 2 uses
  %exitcond1031.2.not.1 = icmp eq i64 %i.azh, %.pre-phi10701265
  br i1 %exitcond1031.2.not.1, label %._crit_edge928.2, label %scalar.ph1437, !llvm.loop !87

._crit_edge928.2:                                 ; preds = %scalar.ph1437.prol.loopexit, %scalar.ph1437, %middle.block1460
  %i.azi = add nuw nsw i64 %.1393931, 1           ; 2 uses
  %exitcond1034.not = icmp eq i64 %i.azi, %.pre-phi10701265
  br i1 %exitcond1034.not, label %.preheader858, label %.preheader860, !llvm.loop !88

.preheader857:                                    ; preds = %bb.du, %.preheader857.preheader.new
  %.2394933 = phi i64 [ 0, %.preheader857.preheader.new ], [ %i.baz, %bb.du ] ; 7 uses
  %niter1696 = phi i64 [ 0, %.preheader857.preheader.new ], [ %niter1696.next.3, %bb.du ]
  %invariant.gep = getelementptr [4 x i8], ptr %i.pf, i64 %.2394933
  %i.azj = mul nuw nsw i64 %.2394933, %i.pa
  %i.azk = getelementptr [4 x i8], ptr %i.pf, i64 %i.azj
  br label %bb.dq

.lr.ph936.unr-lcssa:                              ; preds = %bb.du
  %i.azl = and i32 %i.oz, 3
  %lcmp.mod1693.not = icmp eq i32 %i.azl, 0
  br i1 %lcmp.mod1693.not, label %.lr.ph936, label %.preheader857.epil.preheader

.preheader857.epil.preheader:                     ; preds = %.lr.ph936.unr-lcssa, %.preheader857.preheader
  %.2394933.epil.init = phi i64 [ 0, %.preheader857.preheader ], [ %i.baz, %.lr.ph936.unr-lcssa ]
  %i.azm = and i32 %i.oz, 3
  %lcmp.mod1694 = icmp ne i32 %i.azm, 0
  call void @llvm.assume(i1 %lcmp.mod1694)
  br label %.preheader857.epil

.preheader857.epil:                               ; preds = %bb.dp, %.preheader857.epil.preheader
  %.2394933.epil = phi i64 [ %i.azu, %bb.dp ], [ %.2394933.epil.init, %.preheader857.epil.preheader ] ; 4 uses
  %epil.iter1692 = phi i64 [ %epil.iter1692.next, %bb.dp ], [ 0, %.preheader857.epil.preheader ]
  %invariant.gep.epil = getelementptr [4 x i8], ptr %i.pf, i64 %.2394933.epil
  %i.azn = mul nuw nsw i64 %.2394933.epil, %i.pa
  %i.azo = getelementptr [4 x i8], ptr %i.pf, i64 %i.azn
  br label %bb.do

bb.do:                                            ; preds = %bb.do, %.preheader857.epil
  %.11409932.epil = phi i64 [ %.2394933.epil, %.preheader857.epil ], [ %i.azs, %bb.do ] ; 3 uses
  %i.azp = getelementptr [4 x i8], ptr %i.azo, i64 %.11409932.epil
  %i.azq = load float, ptr %i.azp, align 4, !tbaa !146
  %i.azr = mul nuw nsw i64 %.11409932.epil, %i.pa
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep.epil, i64 %i.azr
  store float %i.azq, ptr %gep.epil, align 4, !tbaa !146
  %i.azs = add nuw nsw i64 %.11409932.epil, 1     ; 2 uses
  %i.azt = icmp slt i64 %i.azs, %i.pa
  br i1 %i.azt, label %bb.do, label %bb.dp, !llvm.loop !89

bb.dp:                                            ; preds = %bb.do
  %i.azu = add nuw nsw i64 %.2394933.epil, 1
  %epil.iter1692.next = add i64 %epil.iter1692, 1 ; 2 uses
  %epil.iter1692.cmp.not = icmp eq i64 %epil.iter1692.next, %xtraiter1691
  br i1 %epil.iter1692.cmp.not, label %.lr.ph936, label %.preheader857.epil, !llvm.loop !90

.lr.ph936:                                        ; preds = %bb.dp, %.lr.ph936.unr-lcssa
  %.12410507 = add nuw nsw i64 %i.pa, 1           ; 9 uses
  %xtraiter1698 = and i64 %i.pa, 7
  %i.azv = icmp ult i32 %i.oz, 8
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v24f32
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { cold noreturn }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { cold }
attributes #28 = { cold nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !25}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!12, !12, i64 0}
!17 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !11, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !13, i64 8, !6, i64 16}
!21 = !{!20, !12, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!19, !12, i64 0}
!24 = !{!20, !13, i64 8}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!13, !13, i64 0}
!27 = !{!15, !14, i64 0}
!28 = !{!15, !14, i64 8}
!29 = !{!15, !14, i64 16}
!30 = !{!"vtable pointer", !5, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!33 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0}
!34 = !{!33, !32, i64 0}
!35 = distinct !{!35, !25, !147}
!36 = distinct !{!36, !148}
!37 = distinct !{!37, !25, !149, !150}
!38 = distinct !{!38, !25, !149, !150}
!39 = distinct !{!39, !25, !147}
!40 = distinct !{!40, !25, !150, !149}
!41 = distinct !{!41, !148}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25, !149, !150}
!44 = distinct !{!44, !25, !149, !150}
!45 = distinct !{!45, !25, !150, !149}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, i1 false, !"LVerDomain"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !25, !149, !150}
!55 = distinct !{!55, !25, !149}
!56 = distinct !{!56, i1 false, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !25, !149, !150}
!60 = distinct !{!60, !25, !149}
!61 = distinct !{!61, i1 false, !"LVerDomain"}
!62 = distinct !{!62, !61}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !25, !149, !150}
!65 = distinct !{!65, !25, !149}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !148}
!70 = distinct !{!70, i1 false, !"LVerDomain"}
!71 = distinct !{!71, !70}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !70}
!74 = distinct !{!74, !25, !149, !150}
!75 = distinct !{!75, !25, !149}
!76 = distinct !{!76, i1 false, !"LVerDomain"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !76}
!80 = distinct !{!80, !25, !149, !150}
!81 = distinct !{!81, !25, !149}
!82 = distinct !{!82, i1 false, !"LVerDomain"}
!83 = distinct !{!83, !82}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !82}
!86 = distinct !{!86, !25, !149, !150}
!87 = distinct !{!87, !25, !149}
!88 = distinct !{!88, !25}
!89 = distinct !{!89, !25}
!90 = distinct !{!90, !148}
!91 = distinct !{!91, !25}
!92 = distinct !{!92, !25}
!93 = distinct !{!93, !148}
!94 = distinct !{!94, !25}
!95 = distinct !{!95, !25}
!96 = distinct !{!96, !25}
!97 = distinct !{!97, !148}
!98 = distinct !{!98, !25}
!99 = distinct !{!99, !25, !149, !150}
!100 = distinct !{!100, !25, !149, !150}
!101 = distinct !{!101, !25, !150, !149}
!102 = distinct !{!102, !25}
!103 = distinct !{!103, !25}
!104 = distinct !{!104, !25}
!105 = distinct !{!105, !25, !149, !150}
!106 = distinct !{!106, !25, !149, !150}
!107 = distinct !{!107, !25, !150, !149}
!108 = distinct !{!108, !25}
!109 = distinct !{!109, !25}
!110 = distinct !{!110, !148}
!111 = distinct !{!111, !25}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !148}
!114 = distinct !{!114, i1 true, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!115 = distinct !{!115, !114, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!116 = distinct !{!116, i1 true, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!117 = distinct !{!117, !116, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!118 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !15, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !118, i64 0}
!120 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !119, i64 0}
!121 = !{!"_ZTS8t_filenm", !7, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !120, i64 32}
!122 = !{!121, !7, i64 0}
!123 = !{!121, !12, i64 8}
!124 = !{!121, !12, i64 16}
!125 = !{!121, !13, i64 24}
!126 = !{!"bool", !6, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{i8 0, i8 2}
!129 = !{}
!130 = !{!"p1 int", !11, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{!"p1 _ZTS6t_atom", !11, i64 0}
!133 = !{!"any p2 pointer", !11, i64 0}
!134 = !{!"any p3 pointer", !133, i64 0}
!135 = !{!"p3 omnipotent char", !134, i64 0}
!136 = !{!"p1 _ZTS9t_resinfo", !11, i64 0}
!137 = !{!"p1 _ZTS9t_pdbinfo", !11, i64 0}
!138 = !{!"_ZTS7t_atoms", !7, i64 0, !132, i64 8, !135, i64 16, !135, i64 24, !135, i64 32, !7, i64 40, !136, i64 48, !137, i64 56, !126, i64 64, !126, i64 65, !126, i64 66, !126, i64 67, !126, i64 68}
!139 = !{!138, !7, i64 0}
!140 = !{!138, !132, i64 8}
!141 = !{!"float", !6, i64 0}
!142 = !{!"short", !6, i64 0}
!143 = !{!"_ZTS12ParticleType", !6, i64 0}
!144 = !{!"_ZTS6t_atom", !141, i64 0, !141, i64 4, !141, i64 8, !141, i64 12, !142, i64 16, !142, i64 18, !143, i64 20, !7, i64 24, !7, i64 28, !6, i64 32}
!145 = !{!144, !141, i64 0}
!146 = !{!141, !141, i64 0}
!147 = !{!"llvm.loop.peeled.count", i32 1}
!148 = !{!"llvm.loop.unroll.disable"}
!149 = !{!"llvm.loop.isvectorized", i32 1}
!150 = !{!"llvm.loop.unroll.runtime.disable"}
!151 = !{!"branch_weights", i32 4, i32 28}
!152 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!153 = !{!152, !152, i64 0}
!154 = !{!"_ZTS7PbcType", !6, i64 0}
!155 = !{!154, !154, i64 0}
!156 = !{!"p1 float", !11, i64 0}
!157 = !{!156, !156, i64 0}
!158 = !{!"p1 _ZTS16gmx_output_env_t", !11, i64 0}
!159 = !{!158, !158, i64 0}
!160 = !{!"p1 _ZTS11t_trxstatus", !11, i64 0}
!161 = !{!160, !160, i64 0}
!162 = !{!52}
!163 = !{!53}
!164 = !{!57}
!165 = !{!58}
!166 = !{!62}
!167 = !{!63}
!168 = !{!71}
!169 = !{!72}
!170 = !{!71, !73}
!171 = !{!73}
!172 = !{!77}
!173 = !{!78}
!174 = !{!77, !79}
!175 = !{!79}
!176 = !{!83}
!177 = !{!84}
!178 = !{!83, !85}
!179 = !{!85}
!180 = !{!"double", !6, i64 0}
!181 = !{!180, !180, i64 0}
!182 = !{!115}
!183 = !{!117}
!184 = !{!117, !115}
!185 = distinct !{!185, !25}
!186 = distinct !{null, null, null}
!187 = !{i64 0, i64 8, !16, i64 8, i64 8, !16, i64 16, i64 4, !10}
!188 = !{!"p1 _ZTSN3gmx8internal14IExceptionInfoE", !11, i64 0}
!189 = !{!188, !188, i64 0}
!190 = !{!"p1 _ZTSSt9type_info", !11, i64 0}
!191 = !{!"_ZTSSt10type_index", !190, i64 0}
!192 = !{!191, !190, i64 0}
!193 = !{!11, !11, i64 0}
!194 = !{!"p1 _ZTSN3gmx8internal13ExceptionDataE", !11, i64 0}
!195 = !{!"_ZTSSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EE", !194, i64 0, !33, i64 8}
!196 = !{!195, !194, i64 0}
!197 = distinct !{!197, !25}
!198 = distinct !{!198, !25}
!199 = distinct !{null, null, null}
!200 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!201 = !{!200, !7, i64 8}
!202 = !{!200, !7, i64 12}
!203 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!204 = distinct !{!204, !25}
!205 = !{!"p1 _ZTSNSt15__exception_ptr13exception_ptrE", !11, i64 0}
!206 = !{!"_ZTSNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE17_Vector_impl_dataE", !205, i64 0, !205, i64 8, !205, i64 16}
!207 = !{!206, !205, i64 0}
!208 = !{!206, !205, i64 8}
!209 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !11, i64 0}
!210 = !{!209, !11, i64 0}
!211 = !{!206, !205, i64 16}
!212 = distinct !{null}
end_hunk_1
