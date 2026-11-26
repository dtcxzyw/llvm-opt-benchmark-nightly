Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodyDynamicsWorld?download=true
inline.NumInlined: 901
inline.NumDeleted: 284
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfo:bb.a
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !177
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %indvars.iv.i430.prol
  store float %i.ahq, ptr %i.ahr, align 4, !tbaa !177
  %indvars.iv.next.i431.prol = add nuw nsw i64 %indvars.iv.i430.prol, 1 ; 2 uses
  %prol.iter1267.next = add i64 %prol.iter1267, 1 ; 2 uses
  %prol.iter1267.cmp.not = icmp eq i64 %prol.iter1267.next, %xtraiter1265
  br i1 %prol.iter1267.cmp.not, label %.lr.ph.i429.prol.loopexit, label %.lr.ph.i429.prol, !llvm.loop !311

.lr.ph.i429.prol.loopexit:                        ; preds = %.lr.ph.i429.prol, %.lr.ph.i429.preheader
  %indvars.iv.i430.unr = phi i64 [ %indvars.iv.i430.ph, %.lr.ph.i429.preheader ], [ %indvars.iv.next.i431.prol, %.lr.ph.i429.prol ]
  %i.ahs = icmp ult i64 %i.aho, 3
  br i1 %i.ahs, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433", label %.lr.ph.i429

.lr.ph.i429:                                      ; preds = %.lr.ph.i429.prol.loopexit, %.lr.ph.i429
  %indvars.iv.i430 = phi i64 [ %indvars.iv.next.i431.3, %.lr.ph.i429 ], [ %indvars.iv.i430.unr, %.lr.ph.i429.prol.loopexit ] ; 6 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i430
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !177
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %indvars.iv.i430
  store float %i.ahu, ptr %i.ahv, align 4, !tbaa !177
  %indvars.iv.next.i431 = add nuw nsw i64 %indvars.iv.i430, 1 ; 2 uses
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i431
  %i.ahx = load float, ptr %i.ahw, align 4, !tbaa !177
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %indvars.iv.next.i431
  store float %i.ahx, ptr %i.ahy, align 4, !tbaa !177
  %indvars.iv.next.i431.1 = add nuw nsw i64 %indvars.iv.i430, 2 ; 2 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i431.1
  %i.aia = load float, ptr %i.ahz, align 4, !tbaa !177
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %indvars.iv.next.i431.1
  store float %i.aia, ptr %i.aib, align 4, !tbaa !177
  %indvars.iv.next.i431.2 = add nuw nsw i64 %indvars.iv.i430, 3 ; 2 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i431.2
  %i.aid = load float, ptr %i.aic, align 4, !tbaa !177
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %indvars.iv.next.i431.2
  store float %i.aid, ptr %i.aie, align 4, !tbaa !177
  %indvars.iv.next.i431.3 = add nuw nsw i64 %indvars.iv.i430, 4 ; 2 uses
  %exitcond.not.i432.3 = icmp eq i64 %indvars.iv.next.i431.3, %wide.trip.count.i428
  br i1 %exitcond.not.i432.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433", label %.lr.ph.i429, !llvm.loop !312

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433": ; preds = %.lr.ph.i429.prol.loopexit, %.lr.ph.i429, %middle.block937, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425"
  %i.aif = load i8, ptr %i.hh, align 4, !tbaa !180, !range !30, !noundef !31
  %i.aig = trunc nuw i8 %i.aif to i1
  %i.aih = load i8, ptr %i.hi, align 1, !tbaa !181, !range !30, !noundef !31
  %i.aii = trunc nuw i8 %i.aih to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.hv, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gr, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, i1 noundef zeroext false, i1 noundef zeroext %i.aig, i1 noundef zeroext %i.aii)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433"
  %i.aij = load i32, ptr %i.mi, align 4, !tbaa !182
  %i.aik = load ptr, ptr %i.gu, align 8, !tbaa !144 ; 2 uses
  %i.ail = ptrtoaddr ptr %i.aik to i64
  %i.aim = sext i32 %i.aij to i64                 ; 2 uses
  %i.ain = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.aim ; 6 uses
  br i1 %i.oi, label %.lr.ph.preheader.i434, label %.loopexit552

.lr.ph.preheader.i434:                            ; preds = %bb.bl
  %wide.trip.count.i435 = zext i32 %i.mk to i64   ; 7 uses
  %min.iters.check911 = icmp ult i32 %i.mk, 16
  br i1 %min.iters.check911, label %.lr.ph.i436.preheader, label %vector.memcheck912

vector.memcheck912:                               ; preds = %.lr.ph.preheader.i434
  %i.aio = sext i32 %i.mj to i64
  %i.aip = mul nsw i64 %i.aio, 28
  %i.aiq = sext i32 %i.mm to i64
  %i.air = shl nsw i64 %i.aiq, 3
  %i.ais = shl nsw i64 %i.aim, 2
  %i.ait = add i64 %i.aip, %i.mv
  %i.aiu = add i64 %i.ait, %i.air
  %i.aiv = add i64 %i.ais, %i.ail
  %i.aiw = sub i64 %i.aiu, %i.aiv
  %i.aix = add i64 %i.aiw, 223
  %diff.check913 = icmp ult i64 %i.aix, 31
  br i1 %diff.check913, label %.lr.ph.i436.preheader, label %vector.ph914

vector.ph914:                                     ; preds = %vector.memcheck912
  %n.vec915 = and i64 %wide.trip.count.i435, 2147483640 ; 3 uses
  br label %vector.body916

vector.body916:                                   ; preds = %vector.body916, %vector.ph914
  %index917 = phi i64 [ 0, %vector.ph914 ], [ %index.next920, %vector.body916 ] ; 3 uses
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %index917 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  %wide.load918 = load <4 x float>, ptr %i.aiy, align 4, !tbaa !177
  %wide.load919 = load <4 x float>, ptr %i.aiz, align 4, !tbaa !177
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %index917 ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 16
  store <4 x float> %wide.load918, ptr %i.aja, align 4, !tbaa !177
  store <4 x float> %wide.load919, ptr %i.ajb, align 4, !tbaa !177
  %index.next920 = add nuw i64 %index917, 8       ; 2 uses
  %i.ajc = icmp eq i64 %index.next920, %n.vec915
  br i1 %i.ajc, label %middle.block921, label %vector.body916, !llvm.loop !313

middle.block921:                                  ; preds = %vector.body916
  %cmp.n922 = icmp eq i64 %n.vec915, %wide.trip.count.i435
  br i1 %cmp.n922, label %.loopexit1190, label %.lr.ph.i436.preheader

.lr.ph.i436.preheader:                            ; preds = %vector.memcheck912, %.lr.ph.preheader.i434, %middle.block921
  %indvars.iv.i437.ph = phi i64 [ 0, %vector.memcheck912 ], [ 0, %.lr.ph.preheader.i434 ], [ %n.vec915, %middle.block921 ] ; 3 uses
  %xtraiter1268 = and i64 %wide.trip.count.i435, 3 ; 2 uses
  %lcmp.mod1269.not = icmp eq i64 %xtraiter1268, 0
  br i1 %lcmp.mod1269.not, label %.lr.ph.i436.prol.loopexit, label %.lr.ph.i436.prol

.lr.ph.i436.prol:                                 ; preds = %.lr.ph.i436.preheader, %.lr.ph.i436.prol
  %indvars.iv.i437.prol = phi i64 [ %indvars.iv.next.i438.prol, %.lr.ph.i436.prol ], [ %indvars.iv.i437.ph, %.lr.ph.i436.preheader ] ; 3 uses
  %prol.iter1270 = phi i64 [ %prol.iter1270.next, %.lr.ph.i436.prol ], [ 0, %.lr.ph.i436.preheader ]
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %indvars.iv.i437.prol
  %i.aje = load float, ptr %i.ajd, align 4, !tbaa !177
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.i437.prol
  store float %i.aje, ptr %i.ajf, align 4, !tbaa !177
  %indvars.iv.next.i438.prol = add nuw nsw i64 %indvars.iv.i437.prol, 1 ; 2 uses
  %prol.iter1270.next = add i64 %prol.iter1270, 1 ; 2 uses
  %prol.iter1270.cmp.not = icmp eq i64 %prol.iter1270.next, %xtraiter1268
  br i1 %prol.iter1270.cmp.not, label %.lr.ph.i436.prol.loopexit, label %.lr.ph.i436.prol, !llvm.loop !314

.lr.ph.i436.prol.loopexit:                        ; preds = %.lr.ph.i436.prol, %.lr.ph.i436.preheader
  %indvars.iv.i437.unr = phi i64 [ %indvars.iv.i437.ph, %.lr.ph.i436.preheader ], [ %indvars.iv.next.i438.prol, %.lr.ph.i436.prol ]
  %i.ajg = sub nsw i64 %indvars.iv.i437.ph, %wide.trip.count.i435
  %i.ajh = icmp ugt i64 %i.ajg, -4
  br i1 %i.ajh, label %.loopexit1190, label %.lr.ph.i436

.lr.ph.i436:                                      ; preds = %.lr.ph.i436.prol.loopexit, %.lr.ph.i436
  %indvars.iv.i437 = phi i64 [ %indvars.iv.next.i438.3, %.lr.ph.i436 ], [ %indvars.iv.i437.unr, %.lr.ph.i436.prol.loopexit ] ; 6 uses
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %indvars.iv.i437
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !177
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.i437
  store float %i.ajj, ptr %i.ajk, align 4, !tbaa !177
  %indvars.iv.next.i438 = add nuw nsw i64 %indvars.iv.i437, 1 ; 2 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %indvars.iv.next.i438
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !177
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.next.i438
  store float %i.ajm, ptr %i.ajn, align 4, !tbaa !177
  %indvars.iv.next.i438.1 = add nuw nsw i64 %indvars.iv.i437, 2 ; 2 uses
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %indvars.iv.next.i438.1
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !177
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.next.i438.1
  store float %i.ajp, ptr %i.ajq, align 4, !tbaa !177
  %indvars.iv.next.i438.2 = add nuw nsw i64 %indvars.iv.i437, 3 ; 2 uses
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %indvars.iv.next.i438.2
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !177
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.next.i438.2
  store float %i.ajs, ptr %i.ajt, align 4, !tbaa !177
  %indvars.iv.next.i438.3 = add nuw nsw i64 %indvars.iv.i437, 4 ; 2 uses
  %exitcond.not.i439.3 = icmp eq i64 %indvars.iv.next.i438.3, %wide.trip.count.i435
  br i1 %exitcond.not.i439.3, label %.loopexit1190, label %.lr.ph.i436, !llvm.loop !315

.loopexit1190:                                    ; preds = %.lr.ph.i436.prol.loopexit, %.lr.ph.i436, %middle.block921
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i8 1, ptr %i.hj, align 8, !tbaa !143
  store ptr null, ptr %i.hk, align 8, !tbaa !144
  store i32 0, ptr %i.hl, align 4, !tbaa !145
  store i32 0, ptr %i.hm, align 8, !tbaa !146
  %i.aju = shl nuw nsw i64 %i.mz, 2               ; 2 uses
  %i.ajv = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.aju, i32 noundef 16)
          to label %.lr.ph.i441 unwind label %bb.bn ; 7 uses

.lr.ph.i441:                                      ; preds = %.loopexit1190
  %i.ajw = ptrtoaddr ptr %i.ajv to i64            ; 9 uses
  store i8 1, ptr %i.hj, align 8, !tbaa !143
  store ptr %i.ajv, ptr %i.hk, align 8, !tbaa !144
  store i32 %i.mk, ptr %i.hm, align 8, !tbaa !146
  %i.ajx = sext i32 %i.mj to i64
  %i.ajy = shl nsw i64 %i.ajx, 2
  %i.ajz = add nsw i64 %i.ajy, 24                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ajv, i8 0, i64 %i.ajz, i1 false), !tbaa !177
  store i32 %i.mk, ptr %i.hl, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i8 1, ptr %i.hn, align 8, !tbaa !143
  store ptr null, ptr %i.ho, align 8, !tbaa !144
  store i32 0, ptr %i.hp, align 4, !tbaa !145
  store i32 0, ptr %i.hq, align 8, !tbaa !146
  %i.aka = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.aju, i32 noundef 16)
          to label %.lr.ph589 unwind label %.loopexit.split-lp.loopexit.split-lp ; 7 uses

.loopexit552:                                     ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i8 1, ptr %i.hj, align 8, !tbaa !143
  store ptr null, ptr %i.hk, align 8, !tbaa !144
  store i32 0, ptr %i.hm, align 8, !tbaa !146
  store i32 %i.mk, ptr %i.hl, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i8 1, ptr %i.hn, align 8, !tbaa !143
  store ptr null, ptr %i.ho, align 8, !tbaa !144
  store i32 0, ptr %i.hq, align 8, !tbaa !146
  store i32 %i.mk, ptr %i.hp, align 4, !tbaa !145
  br label %._crit_edge590

.lr.ph589:                                        ; preds = %.lr.ph.i441
  store i8 1, ptr %i.hn, align 8, !tbaa !143
  store ptr %i.aka, ptr %i.ho, align 8, !tbaa !144
  store i32 %i.mk, ptr %i.hq, align 8, !tbaa !146
  call void @llvm.memset.p0.i64(ptr align 4 %i.aka, i8 0, i64 %i.ajz, i1 false), !tbaa !177
  store i32 %i.mk, ptr %i.hp, align 4, !tbaa !145
  %i.akb = fdiv float %i.re, 6.000000e+00         ; 3 uses
  %wide.trip.count638 = zext i32 %i.mk to i64
  %min.iters.check855 = icmp ult i32 %i.mk, 20
  br i1 %min.iters.check855, label %scalar.ph854.preheader, label %vector.memcheck856

vector.memcheck856:                               ; preds = %.lr.ph589
  %i.akc = ptrtoaddr ptr %i.aka to i64            ; 9 uses
  %i.akd = sub i64 %i.ajw, %i.akc
  %diff.check857 = icmp ugt i64 %i.akd, -16
  %i.ake = sext i32 %i.mm to i64
  %i.akf = shl nsw i64 %i.ake, 3                  ; 16 uses
  %i.akg = add i64 %i.akf, %i.mv
  %i.akh = sub i64 %i.ajw, %i.akg
  %i.aki = add i64 %i.akh, -57
  %diff.check858 = icmp ult i64 %i.aki, 15
  %conflict.rdx859 = or i1 %diff.check857, %diff.check858
  %8 = sext i32 %i.mj to i64                      ; 7 uses
  %9 = shl nsw i64 %8, 2                          ; 2 uses
  %i.akj = add i64 %9, %i.mv
  %i.akk = add i64 %i.akj, %i.akf
  %i.akl = sub i64 %i.ajw, %i.akk
  %i.akm = add i64 %i.akl, -81
  %diff.check860 = icmp ult i64 %i.akm, 15
  %conflict.rdx861 = or i1 %conflict.rdx859, %diff.check860
  %10 = shl nsw i64 %8, 3                         ; 2 uses
  %i.akn = add i64 %10, %i.mv
  %i.ako = add i64 %i.akn, %i.akf
  %i.akp = sub i64 %i.ajw, %i.ako
  %i.akq = add i64 %i.akp, -105
  %diff.check862 = icmp ult i64 %i.akq, 15
  %conflict.rdx863 = or i1 %conflict.rdx861, %diff.check862
  %11 = mul nsw i64 %8, 12                        ; 2 uses
  %i.akr = add i64 %i.akf, %i.mv
  %i.aks = add i64 %i.akr, %11
  %i.akt = sub i64 %i.ajw, %i.aks
  %i.aku = add i64 %i.akt, -129
  %diff.check864 = icmp ult i64 %i.aku, 15
  %conflict.rdx865 = or i1 %conflict.rdx863, %diff.check864
  %12 = shl nsw i64 %8, 4                         ; 2 uses
  %i.akv = add i64 %12, %i.mv
  %i.akw = add i64 %i.akv, %i.akf
  %i.akx = sub i64 %i.akw, %i.ajw
  %i.aky = add i64 %i.akx, 151
  %diff.check866 = icmp ult i64 %i.aky, 15
  %conflict.rdx867 = or i1 %conflict.rdx865, %diff.check866
  %13 = mul nsw i64 %8, 20                        ; 2 uses
  %i.akz = add i64 %13, %i.mv
  %i.ala = add i64 %i.akz, %i.akf
  %i.alb = sub i64 %i.ala, %i.ajw
  %i.alc = add i64 %i.alb, 175
  %diff.check868 = icmp ult i64 %i.alc, 15
  %conflict.rdx869 = or i1 %conflict.rdx867, %diff.check868
  %14 = mul nsw i64 %8, 24                        ; 2 uses
  %i.ald = add i64 %14, %i.mv
  %i.ale = add i64 %i.ald, %i.akf
  %i.alf = sub i64 %i.ale, %i.ajw
  %i.alg = add i64 %i.alf, 199
  %diff.check870 = icmp ult i64 %i.alg, 15
  %conflict.rdx871 = or i1 %conflict.rdx869, %diff.check870
  %15 = mul nsw i64 %8, 28                        ; 2 uses
  %16 = add i64 %15, %i.mv
  %i.alh = add i64 %16, %i.akf
  %i.ali = sub i64 %i.alh, %i.ajw
  %i.alj = add i64 %i.ali, 223
  %diff.check872 = icmp ult i64 %i.alj, 15
  %conflict.rdx873 = or i1 %conflict.rdx871, %diff.check872
  %i.alk = add i64 %i.akf, %i.mv
  %i.all = sub i64 %i.akc, %i.alk
  %i.alm = add i64 %i.all, -57
  %diff.check874 = icmp ult i64 %i.alm, 15
  %conflict.rdx875 = or i1 %conflict.rdx873, %diff.check874
  %i.aln = add i64 %9, %i.mv
  %i.alo = add i64 %i.aln, %i.akf
  %i.alp = sub i64 %i.akc, %i.alo
  %i.alq = add i64 %i.alp, -81
  %diff.check876 = icmp ult i64 %i.alq, 15
  %conflict.rdx877 = or i1 %conflict.rdx875, %diff.check876
  %i.alr = add i64 %10, %i.mv
  %i.als = add i64 %i.alr, %i.akf
  %i.alt = sub i64 %i.akc, %i.als
  %i.alu = add i64 %i.alt, -105
  %diff.check878 = icmp ult i64 %i.alu, 15
  %conflict.rdx879 = or i1 %conflict.rdx877, %diff.check878
  %i.alv = add i64 %i.akf, %i.mv
  %i.alw = add i64 %i.alv, %11
  %i.alx = sub i64 %i.akc, %i.alw
  %i.aly = add i64 %i.alx, -129
  %diff.check880 = icmp ult i64 %i.aly, 15
  %conflict.rdx881 = or i1 %conflict.rdx879, %diff.check880
  %i.alz = add i64 %i.akf, %i.mv
  %i.ama = add i64 %i.alz, %12
  %i.amb = sub i64 %i.akc, %i.ama
  %i.amc = add i64 %i.amb, -153
  %diff.check882 = icmp ult i64 %i.amc, 15
  %conflict.rdx883 = or i1 %conflict.rdx881, %diff.check882
  %i.amd = add i64 %i.akf, %i.mv
  %i.ame = add i64 %i.amd, %13
  %i.amf = sub i64 %i.akc, %i.ame
  %i.amg = add i64 %i.amf, -177
  %diff.check884 = icmp ult i64 %i.amg, 15
  %conflict.rdx885 = or i1 %conflict.rdx883, %diff.check884
  %i.amh = add i64 %i.akf, %i.mv
  %i.ami = add i64 %i.amh, %14
  %i.amj = sub i64 %i.akc, %i.ami
  %i.amk = add i64 %i.amj, -201
  %diff.check886 = icmp ult i64 %i.amk, 15
  %conflict.rdx887 = or i1 %conflict.rdx885, %diff.check886
  %17 = add i64 %i.akf, %i.mv
  %i.aml = add i64 %17, %15
  %i.amm = sub i64 %i.akc, %i.aml
  %i.amn = add i64 %i.amm, -225
  %diff.check888 = icmp ult i64 %i.amn, 15
  %conflict.rdx889 = or i1 %conflict.rdx887, %diff.check888
  br i1 %conflict.rdx889, label %scalar.ph854.preheader, label %vector.ph890

vector.ph890:                                     ; preds = %vector.memcheck856
  %n.vec891 = and i64 %wide.trip.count.i435, 2147483644 ; 3 uses
  %broadcast.splatinsert892 = insertelement <4 x float> poison, float %i.akb, i64 0
  %broadcast.splat893 = shufflevector <4 x float> %broadcast.splatinsert892, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body894

vector.body894:                                   ; preds = %vector.body894, %vector.ph890
  %index895 = phi i64 [ 0, %vector.ph890 ], [ %index.next904, %vector.body894 ] ; 11 uses
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %index895
  %wide.load896 = load <4 x float>, ptr %i.amo, align 4, !tbaa !177
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %index895
  %wide.load897 = load <4 x float>, ptr %i.amp, align 4, !tbaa !177
  %i.amq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load897, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load896)
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %index895
  %wide.load898 = load <4 x float>, ptr %i.amr, align 4, !tbaa !177
  %i.ams = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load898, <4 x float> splat (float 2.000000e+00), <4 x float> %i.amq)
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %index895
  %wide.load899 = load <4 x float>, ptr %i.amt, align 4, !tbaa !177
  %i.amu = fadd <4 x float> %i.ams, %wide.load899
  %i.amv = fmul <4 x float> %broadcast.splat893, %i.amu
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %index895
  store <4 x float> %i.amv, ptr %i.amw, align 4, !tbaa !177
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %index895
  %wide.load900 = load <4 x float>, ptr %i.amx, align 4, !tbaa !177
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %index895
  %wide.load901 = load <4 x float>, ptr %i.amy, align 4, !tbaa !177
  %i.amz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load901, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load900)
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %index895
  %wide.load902 = load <4 x float>, ptr %i.ana, align 4, !tbaa !177
  %i.anb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load902, <4 x float> splat (float 2.000000e+00), <4 x float> %i.amz)
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %index895
  %wide.load903 = load <4 x float>, ptr %i.anc, align 4, !tbaa !177
  %i.and = fadd <4 x float> %i.anb, %wide.load903
  %i.ane = fmul <4 x float> %broadcast.splat893, %i.and
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %index895
  store <4 x float> %i.ane, ptr %i.anf, align 4, !tbaa !177
  %index.next904 = add nuw i64 %index895, 4       ; 2 uses
  %i.ang = icmp eq i64 %index.next904, %n.vec891
  br i1 %i.ang, label %middle.block905, label %vector.body894, !llvm.loop !316

middle.block905:                                  ; preds = %vector.body894
  %cmp.n906 = icmp eq i64 %n.vec891, %wide.trip.count.i435
  br i1 %cmp.n906, label %._crit_edge590, label %scalar.ph854.preheader

scalar.ph854.preheader:                           ; preds = %vector.memcheck856, %.lr.ph589, %middle.block905
  %indvars.iv635.ph = phi i64 [ 0, %vector.memcheck856 ], [ 0, %.lr.ph589 ], [ %n.vec891, %middle.block905 ]
  br label %scalar.ph854

._crit_edge590:                                   ; preds = %scalar.ph854, %middle.block905, %.loopexit552
  %i.anh = phi ptr [ null, %.loopexit552 ], [ %i.ajv, %middle.block905 ], [ %i.ajv, %scalar.ph854 ] ; 9 uses
  %i.ani = phi ptr [ null, %.loopexit552 ], [ %i.aka, %middle.block905 ], [ %i.aka, %scalar.ph854 ] ; 6 uses
  %i.anj = ptrtoaddr ptr %i.anh to i64
  %i.ank = load ptr, ptr %i.vt, align 8, !tbaa !144 ; 16 uses
  %i.anl = ptrtoaddr ptr %i.ank to i64            ; 2 uses
  %i.anm = load i32, ptr %i.mi, align 4, !tbaa !182 ; 5 uses
  %i.ann = icmp sgt i32 %i.anm, -6
  br i1 %i.ann, label %.lr.ph.preheader.i485, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit

.lr.ph.preheader.i485:                            ; preds = %._crit_edge590
  %i.ano = add i32 %i.anm, 5                      ; 3 uses
  %smax.i486 = call i32 @llvm.smax.i32(i32 %i.ano, i32 0) ; 3 uses
  %i.anp = add nuw i32 %smax.i486, 1
  %wide.trip.count.i487 = zext i32 %i.anp to i64  ; 6 uses
  %min.iters.check807 = icmp slt i32 %i.ano, 7
  br i1 %min.iters.check807, label %.lr.ph.i488.preheader, label %vector.memcheck808

vector.memcheck808:                               ; preds = %.lr.ph.preheader.i485
  %i.anq = sext i32 %i.mm to i64
  %i.anr = shl nsw i64 %i.anq, 3
  %i.ans = add i64 %i.anr, %i.mv
  %i.ant = sub i64 %i.anl, %i.ans
  %i.anu = add i64 %i.ant, -57
  %diff.check809 = icmp ult i64 %i.anu, 31
  br i1 %diff.check809, label %.lr.ph.i488.preheader, label %vector.ph810

vector.ph810:                                     ; preds = %vector.memcheck808
  %n.vec811 = and i64 %wide.trip.count.i487, 4294967288 ; 3 uses
  br label %vector.body812

vector.body812:                                   ; preds = %vector.body812, %vector.ph810
  %index813 = phi i64 [ 0, %vector.ph810 ], [ %index.next816, %vector.body812 ] ; 3 uses
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %index813 ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 16
  %wide.load814 = load <4 x float>, ptr %i.anv, align 4, !tbaa !177
  %wide.load815 = load <4 x float>, ptr %i.anw, align 4, !tbaa !177
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %index813 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 16
  store <4 x float> %wide.load814, ptr %i.anx, align 4, !tbaa !177
  store <4 x float> %wide.load815, ptr %i.any, align 4, !tbaa !177
  %index.next816 = add nuw i64 %index813, 8       ; 2 uses
  %i.anz = icmp eq i64 %index.next816, %n.vec811
  br i1 %i.anz, label %middle.block817, label %vector.body812, !llvm.loop !317

middle.block817:                                  ; preds = %vector.body812
  %cmp.n818 = icmp eq i64 %n.vec811, %wide.trip.count.i487
  br i1 %cmp.n818, label %.lr.ph.i493, label %.lr.ph.i488.preheader

.lr.ph.i488.preheader:                            ; preds = %vector.memcheck808, %.lr.ph.preheader.i485, %middle.block817
  %indvars.iv.i489.ph = phi i64 [ 0, %vector.memcheck808 ], [ 0, %.lr.ph.preheader.i485 ], [ %n.vec811, %middle.block817 ] ; 3 uses
  %i.aoa = zext nneg i32 %smax.i486 to i64        ; 2 uses
  %i.aob = add nuw nsw i64 %i.aoa, 1
  %i.aoc = sub nsw i64 %i.aoa, %indvars.iv.i489.ph
  %xtraiter1271 = and i64 %i.aob, 3               ; 2 uses
  %lcmp.mod1272.not = icmp eq i64 %xtraiter1271, 0
  br i1 %lcmp.mod1272.not, label %.lr.ph.i488.prol.loopexit, label %.lr.ph.i488.prol

.lr.ph.i488.prol:                                 ; preds = %.lr.ph.i488.preheader, %.lr.ph.i488.prol
  %indvars.iv.i489.prol = phi i64 [ %indvars.iv.next.i490.prol, %.lr.ph.i488.prol ], [ %indvars.iv.i489.ph, %.lr.ph.i488.preheader ] ; 3 uses
  %prol.iter1273 = phi i64 [ %prol.iter1273.next, %.lr.ph.i488.prol ], [ 0, %.lr.ph.i488.preheader ]
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i489.prol
  %i.aoe = load float, ptr %i.aod, align 4, !tbaa !177
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv.i489.prol
  store float %i.aoe, ptr %i.aof, align 4, !tbaa !177
  %indvars.iv.next.i490.prol = add nuw nsw i64 %indvars.iv.i489.prol, 1 ; 2 uses
  %prol.iter1273.next = add i64 %prol.iter1273, 1 ; 2 uses
  %prol.iter1273.cmp.not = icmp eq i64 %prol.iter1273.next, %xtraiter1271
  br i1 %prol.iter1273.cmp.not, label %.lr.ph.i488.prol.loopexit, label %.lr.ph.i488.prol, !llvm.loop !318

.lr.ph.i488.prol.loopexit:                        ; preds = %.lr.ph.i488.prol, %.lr.ph.i488.preheader
  %indvars.iv.i489.unr = phi i64 [ %indvars.iv.i489.ph, %.lr.ph.i488.preheader ], [ %indvars.iv.next.i490.prol, %.lr.ph.i488.prol ]
  %i.aog = icmp ult i64 %i.aoc, 3
  br i1 %i.aog, label %.lr.ph.i493, label %.lr.ph.i488

.lr.ph.i488:                                      ; preds = %.lr.ph.i488.prol.loopexit, %.lr.ph.i488
  %indvars.iv.i489 = phi i64 [ %indvars.iv.next.i490.3, %.lr.ph.i488 ], [ %indvars.iv.i489.unr, %.lr.ph.i488.prol.loopexit ] ; 6 uses
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i489
  %i.aoi = load float, ptr %i.aoh, align 4, !tbaa !177
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv.i489
  store float %i.aoi, ptr %i.aoj, align 4, !tbaa !177
  %indvars.iv.next.i490 = add nuw nsw i64 %indvars.iv.i489, 1 ; 2 uses
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.next.i490
  %i.aol = load float, ptr %i.aok, align 4, !tbaa !177
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv.next.i490
  store float %i.aol, ptr %i.aom, align 4, !tbaa !177
  %indvars.iv.next.i490.1 = add nuw nsw i64 %indvars.iv.i489, 2 ; 2 uses
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.next.i490.1
  %i.aoo = load float, ptr %i.aon, align 4, !tbaa !177
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv.next.i490.1
  store float %i.aoo, ptr %i.aop, align 4, !tbaa !177
  %indvars.iv.next.i490.2 = add nuw nsw i64 %indvars.iv.i489, 3 ; 2 uses
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.next.i490.2
  %i.aor = load float, ptr %i.aoq, align 4, !tbaa !177
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv.next.i490.2
  store float %i.aor, ptr %i.aos, align 4, !tbaa !177
  %indvars.iv.next.i490.3 = add nuw nsw i64 %indvars.iv.i489, 4 ; 2 uses
  %exitcond.not.i491.3 = icmp eq i64 %indvars.iv.next.i490.3, %wide.trip.count.i487
  br i1 %exitcond.not.i491.3, label %.lr.ph.i493, label %.lr.ph.i488, !llvm.loop !319

bb.bm:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit", %._crit_edge586
  %i.aot = landingpad { ptr, i32 }
          cleanup
  br label %.thread536

bb.bn:                                            ; preds = %.loopexit1190
  %i.aou = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

scalar.ph854:                                     ; preds = %scalar.ph854.preheader, %scalar.ph854
  %indvars.iv635 = phi i64 [ %indvars.iv.next636, %scalar.ph854 ], [ %indvars.iv635.ph, %scalar.ph854.preheader ] ; 11 uses
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv635
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !177
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv635
  %i.aoy = load float, ptr %i.aox, align 4, !tbaa !177
  %i.aoz = call float @llvm.fmuladd.f32(float %i.aoy, float 2.000000e+00, float %i.aow)
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv635
  %i.apb = load float, ptr %i.apa, align 4, !tbaa !177
  %i.apc = call float @llvm.fmuladd.f32(float %i.apb, float 2.000000e+00, float %i.aoz)
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv635
  %i.ape = load float, ptr %i.apd, align 4, !tbaa !177
  %i.apf = fadd float %i.apc, %i.ape
  %i.apg = fmul float %i.akb, %i.apf
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %indvars.iv635
  store float %i.apg, ptr %i.aph, align 4, !tbaa !177
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv635
  %i.apj = load float, ptr %i.api, align 4, !tbaa !177
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv635
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !177
  %i.apm = call float @llvm.fmuladd.f32(float %i.apl, float 2.000000e+00, float %i.apj)
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv635
  %i.apo = load float, ptr %i.apn, align 4, !tbaa !177
  %i.app = call float @llvm.fmuladd.f32(float %i.apo, float 2.000000e+00, float %i.apm)
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv635
  %i.apr = load float, ptr %i.apq, align 4, !tbaa !177
  %i.aps = fadd float %i.app, %i.apr
  %i.apt = fmul float %i.akb, %i.aps
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %indvars.iv635
  store float %i.apt, ptr %i.apu, align 4, !tbaa !177
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1 ; 2 uses
  %exitcond639.not = icmp eq i64 %indvars.iv.next636, %wide.trip.count638
  br i1 %exitcond639.not, label %._crit_edge590, label %scalar.ph854, !llvm.loop !320

.lr.ph.i493:                                      ; preds = %.lr.ph.i488.prol.loopexit, %.lr.ph.i488, %middle.block817
  %i.apv = getelementptr inbounds nuw i8, ptr %i.hv, i64 620 ; 3 uses
  %min.iters.check783 = icmp slt i32 %i.ano, 3
  br i1 %min.iters.check783, label %scalar.ph782.preheader, label %vector.memcheck784
end_hunk_0
