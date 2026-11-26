Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/uniformly_sample_two_manifold?download=true
inline.NumInlined: 2506
inline.NumDeleted: 1290
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN3igl29uniformly_sample_two_manifoldERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEEidRS2_:bb.a
  %.01724.i.i.i.i478 = phi i64 [ %i.aow, %.lr.ph.i.i.i.i477 ], [ 1, %bb.dq ] ; 2 uses
  %.02223.i.i.i.i479 = phi double [ %i.aov, %.lr.ph.i.i.i.i477 ], [ %i.anu, %bb.dq ]
  %i.anw = mul nsw i64 %.01724.i.i.i.i478, %i.anc ; 6 uses
  %i.anx = getelementptr [8 x i8], ptr %i.amd, i64 %i.anw
  %i.any = load double, ptr %i.anx, align 8, !tbaa !45
  %i.anz = fmul double %.sroa.0942.0.copyload, %i.any
  %i.aoa = getelementptr [8 x i8], ptr %i.amh, i64 %i.anw
  %i.aob = load double, ptr %i.aoa, align 8, !tbaa !45
  %i.aoc = fmul double %.sroa.6944.0.copyload, %i.aob
  %i.aod = fadd double %i.anz, %i.aoc
  %i.aoe = getelementptr [8 x i8], ptr %i.amm, i64 %i.anw
  %i.aof = load double, ptr %i.aoe, align 8, !tbaa !45
  %i.aog = fmul double %.sroa.8946.0.copyload, %i.aof
  %i.aoh = fadd double %i.aod, %i.aog
  %i.aoi = getelementptr [8 x i8], ptr %i.amr, i64 %i.anw
  %i.aoj = load double, ptr %i.aoi, align 8, !tbaa !45
  %i.aok = fmul double %.sroa.0939.0.copyload, %i.aoj
  %i.aol = getelementptr [8 x i8], ptr %i.amv, i64 %i.anw
  %i.aom = load double, ptr %i.aol, align 8, !tbaa !45
  %i.aon = fmul double %.sroa.5940.0.copyload, %i.aom
  %i.aoo = fadd double %i.aok, %i.aon
  %i.aop = getelementptr [8 x i8], ptr %i.amz, i64 %i.anw
  %i.aoq = load double, ptr %i.aop, align 8, !tbaa !45
  %i.aor = fmul double %.sroa.6941.0.copyload, %i.aoq
  %i.aos = fadd double %i.aoo, %i.aor
  %i.aot = fsub double %i.aoh, %i.aos             ; 2 uses
  %i.aou = fmul double %i.aot, %i.aot
  %i.aov = fadd double %.02223.i.i.i.i479, %i.aou ; 2 uses
  %i.aow = add nuw nsw i64 %.01724.i.i.i.i478, 1  ; 2 uses
  %exitcond.not.i.i.i.i480 = icmp eq i64 %i.aow, %i.ana
  br i1 %exitcond.not.i.i.i.i480, label %.loopexit1533, label %.lr.ph.i.i.i.i477, !llvm.loop !114

.loopexit1533:                                    ; preds = %.lr.ph.i.i.i.i477, %bb.dq, %bb.dp
  %.0.i.i.i475 = phi double [ 0.000000e+00, %bb.dp ], [ %i.anu, %bb.dq ], [ %i.aov, %.lr.ph.i.i.i.i477 ]
  %.scalar.i.i476 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i475)
  br label %bb.dr

bb.dr:                                            ; preds = %.loopexit1533, %bb.do
  %.0183 = phi double [ %.scalar.i.i476, %.loopexit1533 ], [ 1.000000e+01, %bb.do ]
  %i.aox = mul nsw i64 %.pre1729, %indvars.iv1679
  %i.aoy = getelementptr [8 x i8], ptr %i.akg, i64 %i.aox
  store double %.0183, ptr %i.aoy, align 8, !tbaa !45
  %indvars.iv.next1680 = add nuw nsw i64 %indvars.iv1679, 1 ; 2 uses
  %exitcond1683.not = icmp eq i64 %indvars.iv.next1680, %wide.trip.count
  br i1 %exitcond1683.not, label %.preheader, label %bb.do, !llvm.loop !136

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %.loopexit1532, %.lr.ph1600.split.us.prol.loopexit, %.lr.ph1600.split.us, %middle.block1964, %.preheader
  %indvars.iv.next1693 = add nuw nsw i64 %indvars.iv1692, 1 ; 2 uses
  %exitcond1696.not = icmp eq i64 %indvars.iv.next1693, %wide.trip.count1695
  br i1 %exitcond1696.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge, label %.lr.ph1598, !llvm.loop !137

bb.ds:                                            ; preds = %.lr.ph1600.split, %.loopexit1532
  %indvars.iv1684 = phi i64 [ 0, %.lr.ph1600.split ], [ %indvars.iv.next1685, %.loopexit1532 ] ; 3 uses
  %i.aoz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %indvars.iv1684 ; 2 uses
  %i.apa = load double, ptr %i.akm, align 8, !tbaa !45
  %i.apb = fmul double %.sroa.0942.0.copyload, %i.apa
  %i.apc = load double, ptr %i.akr, align 8, !tbaa !45
  %i.apd = fmul double %.sroa.6944.0.copyload, %i.apc
  %i.ape = fadd double %i.apb, %i.apd
  %i.apf = load double, ptr %i.akv, align 8, !tbaa !45
  %i.apg = fmul double %.sroa.8946.0.copyload, %i.apf
  %i.aph = fadd double %i.ape, %i.apg
  %i.api = load double, ptr %i.aoz, align 8, !tbaa !45
  %i.apj = fsub double %i.aph, %i.api             ; 2 uses
  %i.apk = fmul double %i.apj, %i.apj             ; 2 uses
  br i1 %i.ra, label %.lr.ph.i.i.i.i.i483, label %.loopexit1532

.lr.ph.i.i.i.i.i483:                              ; preds = %bb.ds, %.lr.ph.i.i.i.i.i483
  %.01724.i.i.i.i.i = phi i64 [ %i.aqd, %.lr.ph.i.i.i.i.i483 ], [ 1, %bb.ds ] ; 3 uses
  %.02223.i.i.i.i.i = phi double [ %i.aqc, %.lr.ph.i.i.i.i.i483 ], [ %i.apk, %bb.ds ]
  %i.apl = mul nsw i64 %.01724.i.i.i.i.i, %i.aln  ; 3 uses
  %i.apm = getelementptr [8 x i8], ptr %i.akm, i64 %i.apl
  %i.apn = load double, ptr %i.apm, align 8, !tbaa !45
  %i.apo = fmul double %.sroa.0942.0.copyload, %i.apn
  %i.app = getelementptr [8 x i8], ptr %i.akr, i64 %i.apl
  %i.apq = load double, ptr %i.app, align 8, !tbaa !45
  %i.apr = fmul double %.sroa.6944.0.copyload, %i.apq
  %i.aps = fadd double %i.apo, %i.apr
  %i.apt = getelementptr [8 x i8], ptr %i.akv, i64 %i.apl
  %i.apu = load double, ptr %i.apt, align 8, !tbaa !45
  %i.apv = fmul double %.sroa.8946.0.copyload, %i.apu
  %i.apw = fadd double %i.aps, %i.apv
  %i.apx = mul nuw nsw i64 %.01724.i.i.i.i.i, %i.pr
  %i.apy = getelementptr [8 x i8], ptr %i.aoz, i64 %i.apx
  %i.apz = load double, ptr %i.apy, align 8, !tbaa !45
  %i.aqa = fsub double %i.apw, %i.apz             ; 2 uses
  %i.aqb = fmul double %i.aqa, %i.aqa
  %i.aqc = fadd double %.02223.i.i.i.i.i, %i.aqb  ; 2 uses
  %i.aqd = add nuw nsw i64 %.01724.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.aqd, %i.pr
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit1532, label %.lr.ph.i.i.i.i.i483, !llvm.loop !138

.loopexit1532:                                    ; preds = %.lr.ph.i.i.i.i.i483, %bb.ds
  %.0.i.i.i482 = phi double [ %i.apk, %bb.ds ], [ %i.aqc, %.lr.ph.i.i.i.i.i483 ]
  %.scalar.i = call noundef double @llvm.sqrt.f64(double %.0.i.i.i482)
  %i.aqe = add nuw nsw i64 %indvars.iv1684, %wide.trip.count
  %i.aqf = mul nsw i64 %.pre1729, %i.aqe
  %i.aqg = getelementptr [8 x i8], ptr %i.akw, i64 %i.aqf
  %i.aqh = fdiv double %.scalar.i, %3
  store double %i.aqh, ptr %i.aqg, align 8, !tbaa !45
  %indvars.iv.next1685 = add nuw nsw i64 %indvars.iv1684, 1 ; 2 uses
  %exitcond1687.not = icmp eq i64 %indvars.iv.next1685, %i.aka
  br i1 %exitcond1687.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.ds, !llvm.loop !139

.loopexit.split-lp1540.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %.invoke1910, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit498._crit_edge.split, %bb.bv, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i495, %.noexc.i.i410
  %lpad.loopexit.split-lp2110 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit472

.split1620.us:                                    ; preds = %._crit_edge1609.us, %.preheader1544
  %i.aqi = fmul nnan double %.01921621, 9.000000e-01 ; 2 uses
  %i.aqj = fcmp ogt double %i.aqi, 1.000000e-05
  br i1 %i.aqj, label %.preheader1544, label %bb.dt, !llvm.loop !140

bb.dt:                                            ; preds = %.split1620.us
  %i.aqk = load i64, ptr %i.pq, align 8, !tbaa !42 ; 4 uses
  %i.aql = icmp eq i64 %i.aqk, 0
  %or.cond.i.i494 = or i1 %.not, %i.aql
  br i1 %or.cond.i.i494, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i495, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.aqm = sdiv i64 9223372036854775807, %i.aqk
  %i.aqn = icmp slt i64 %i.aqm, %i.pb
  br i1 %i.aqn, label %.invoke1910, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i495

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i495: ; preds = %bb.du, %bb.dt
  %i.aqo = mul nsw i64 %i.aqk, %i.pb
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.aqo, i64 noundef %i.pb, i64 noundef %i.aqk)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit498.preheader unwind label %.loopexit.split-lp1540.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit498.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i495
  br i1 %i.qo, label %.lr.ph1623, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit498._crit_edge.split

.lr.ph1623:                                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit498.preheader
  %i.aqp = load ptr, ptr %1, align 8, !tbaa !153
  %i.aqq = load ptr, ptr %0, align 8, !tbaa !38, !noalias !186 ; 4 uses
  %i.aqr = load i64, ptr %i.qp, align 8, !tbaa !155 ; 2 uses
  %.idx = shl i64 %i.aqr, 3
  %i.aqs = load ptr, ptr %4, align 8, !tbaa !38, !noalias !187 ; 2 uses
  %i.aqt = load i64, ptr %i.nj, align 8, !tbaa !42, !noalias !187 ; 7 uses
  %i.aqu = load i64, ptr %i.qz, align 8, !tbaa !39 ; 4 uses
  %i.aqv = load i64, ptr %i.nh, align 8, !tbaa !39 ; 4 uses
  %i.aqw = icmp sgt i64 %i.aqt, 0
  br i1 %i.aqw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit498._crit_edge.split

.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader.preheader: ; preds = %.lr.ph1623
  %i.aqx = ptrtoaddr ptr %i.aqs to i64
  %i.aqy = ptrtoaddr ptr %i.aqq to i64
  %i.aqz = sub i64 %i.aqx, %i.aqy
  %min.iters.check1974 = icmp ult i64 %i.aqt, 8
  %ident.check1968 = icmp ne i64 %i.aqv, 1
  %ident.check1969 = icmp ne i64 %i.aqu, 1
  %i.ara = or i1 %ident.check1968, %ident.check1969
  %n.vec1979 = and i64 %i.aqt, 9223372036854775804 ; 3 uses
  %cmp.n1995 = icmp eq i64 %i.aqt, %n.vec1979
  %xtraiter2133 = and i64 %i.aqt, 1
  %lcmp.mod2134.not = icmp eq i64 %xtraiter2133, 0
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit498._crit_edge.split: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, %.lr.ph1623, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit498.preheader
  %i.arb = invoke noundef double @_ZN3igl11get_secondsEv()
          to label %bb.dv unwind label %.loopexit.split-lp1540.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit
  %indvars.iv1712 = phi i64 [ %indvars.iv.next1713, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader.preheader ] ; 6 uses
  %i.arc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01135.1124612731357, i64 %indvars.iv1712
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01094.11395, i64 %indvars.iv1712
  %i.are = load i32, ptr %i.ard, align 4, !tbaa !22
  %i.arf = sext i32 %i.are to i64                 ; 2 uses
  %i.arg = load ptr, ptr %i.arc, align 8, !tbaa !163
  %i.arh = getelementptr inbounds nuw [4 x i8], ptr %i.arg, i64 %i.arf
  %i.ari = load i32, ptr %i.arh, align 4, !tbaa !22
  %i.arj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01115.113371347, i64 %indvars.iv1712
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !171
  %i.arl = getelementptr inbounds nuw [24 x i8], ptr %i.ark, i64 %i.arf ; 3 uses
  %.sroa.0778.0.copyload = load double, ptr %i.arl, align 8, !tbaa !20 ; 4 uses
  %.sroa.5779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arl, i64 8
  %.sroa.5779.0.copyload = load double, ptr %.sroa.5779.0..sroa_idx, align 8, !tbaa !20 ; 4 uses
  %.sroa.6780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arl, i64 16
  %.sroa.6780.0.copyload = load double, ptr %.sroa.6780.0..sroa_idx, align 8, !tbaa !20 ; 4 uses
  %i.arm = sext i32 %i.ari to i64
  %i.arn = getelementptr [4 x i8], ptr %i.aqp, i64 %i.arm ; 3 uses
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !22
  %i.arp = sext i32 %i.aro to i64                 ; 2 uses
  %i.arq = getelementptr inbounds [8 x i8], ptr %i.aqq, i64 %i.arp ; 4 uses
  %i.arr = getelementptr [4 x i8], ptr %i.arn, i64 %i.aqr
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !22
  %i.art = sext i32 %i.ars to i64                 ; 2 uses
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.aqq, i64 %i.art ; 4 uses
  %i.arv = getelementptr i8, ptr %i.arn, i64 %.idx
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !22
  %i.arx = sext i32 %i.arw to i64                 ; 2 uses
  %i.ary = getelementptr inbounds [8 x i8], ptr %i.aqq, i64 %i.arx ; 4 uses
  %i.arz = getelementptr inbounds nuw [8 x i8], ptr %i.aqs, i64 %indvars.iv1712 ; 4 uses
  %brmerge2210 = select i1 %min.iters.check1974, i1 true, i1 %i.ara
  br i1 %brmerge2210, label %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader2074, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader
  %i.asa = shl nuw nsw i64 %indvars.iv1712, 3
  %i.asb = add i64 %i.aqz, %i.asa                 ; 3 uses
  %i.asc = shl nsw i64 %i.arx, 3
  %i.asd = sub i64 %i.asc, %i.asb
  %diff.check = icmp ugt i64 %i.asd, -32
  %i.ase = shl nsw i64 %i.art, 3
  %i.asf = sub i64 %i.ase, %i.asb
  %diff.check1975 = icmp ugt i64 %i.asf, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1975
  %i.asg = shl nsw i64 %i.arp, 3
  %i.ash = sub i64 %i.asg, %i.asb
  %diff.check1976 = icmp ugt i64 %i.ash, -32
  %conflict.rdx1977 = or i1 %conflict.rdx, %diff.check1976
  br i1 %conflict.rdx1977, label %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader2074, label %vector.ph1978

vector.ph1978:                                    ; preds = %vector.memcheck
  %broadcast.splatinsert1980 = insertelement <2 x double> poison, double %.sroa.0778.0.copyload, i64 0
  %broadcast.splat1981 = shufflevector <2 x double> %broadcast.splatinsert1980, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1982 = insertelement <2 x double> poison, double %.sroa.5779.0.copyload, i64 0
  %broadcast.splat1983 = shufflevector <2 x double> %broadcast.splatinsert1982, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1984 = insertelement <2 x double> poison, double %.sroa.6780.0.copyload, i64 0
  %broadcast.splat1985 = shufflevector <2 x double> %broadcast.splatinsert1984, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1986

vector.body1986:                                  ; preds = %vector.body1986, %vector.ph1978
  %index1987 = phi i64 [ 0, %vector.ph1978 ], [ %index.next1993, %vector.body1986 ] ; 5 uses
  %i.asi = getelementptr inbounds [8 x i8], ptr %i.arz, i64 %index1987 ; 2 uses
  %i.asj = getelementptr inbounds [8 x i8], ptr %i.arq, i64 %index1987 ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 16
  %wide.load = load <2 x double>, ptr %i.asj, align 8, !tbaa !45
  %wide.load1988 = load <2 x double>, ptr %i.ask, align 8, !tbaa !45
  %i.asl = fmul <2 x double> %broadcast.splat1981, %wide.load
  %i.asm = fmul <2 x double> %broadcast.splat1981, %wide.load1988
  %i.asn = getelementptr inbounds [8 x i8], ptr %i.aru, i64 %index1987 ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 16
  %wide.load1989 = load <2 x double>, ptr %i.asn, align 8, !tbaa !45
  %wide.load1990 = load <2 x double>, ptr %i.aso, align 8, !tbaa !45
  %i.asp = fmul <2 x double> %broadcast.splat1983, %wide.load1989
  %i.asq = fmul <2 x double> %broadcast.splat1983, %wide.load1990
  %i.asr = fadd <2 x double> %i.asl, %i.asp
  %i.ass = fadd <2 x double> %i.asm, %i.asq
  %i.ast = getelementptr inbounds [8 x i8], ptr %i.ary, i64 %index1987 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 16
  %wide.load1991 = load <2 x double>, ptr %i.ast, align 8, !tbaa !45
  %wide.load1992 = load <2 x double>, ptr %i.asu, align 8, !tbaa !45
  %i.asv = fmul <2 x double> %broadcast.splat1985, %wide.load1991
  %i.asw = fmul <2 x double> %broadcast.splat1985, %wide.load1992
  %i.asx = fadd <2 x double> %i.asr, %i.asv
  %i.asy = fadd <2 x double> %i.ass, %i.asw
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asi, i64 16
  store <2 x double> %i.asx, ptr %i.asi, align 8, !tbaa !45
  store <2 x double> %i.asy, ptr %i.asz, align 8, !tbaa !45
  %index.next1993 = add nuw i64 %index1987, 4     ; 2 uses
  %i.ata = icmp eq i64 %index.next1993, %n.vec1979
  br i1 %i.ata, label %middle.block1994, label %vector.body1986, !llvm.loop !145

middle.block1994:                                 ; preds = %vector.body1986
  br i1 %cmp.n1995, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader2074

.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader2074:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader, %vector.memcheck, %middle.block1994
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec1979, %middle.block1994 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod2134.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i499.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i499.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i499.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader2074
  %i.atb = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.aqv
  %i.atc = getelementptr inbounds [8 x i8], ptr %i.arz, i64 %i.atb
  %i.atd = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.aqu ; 3 uses
  %i.ate = getelementptr inbounds [8 x i8], ptr %i.arq, i64 %i.atd
  %i.atf = load double, ptr %i.ate, align 8, !tbaa !45
  %i.atg = fmul double %.sroa.0778.0.copyload, %i.atf
  %i.ath = getelementptr inbounds [8 x i8], ptr %i.aru, i64 %i.atd
  %i.ati = load double, ptr %i.ath, align 8, !tbaa !45
  %i.atj = fmul double %.sroa.5779.0.copyload, %i.ati
  %i.atk = fadd double %i.atg, %i.atj
  %i.atl = getelementptr inbounds [8 x i8], ptr %i.ary, i64 %i.atd
  %i.atm = load double, ptr %i.atl, align 8, !tbaa !45
  %i.atn = fmul double %.sroa.6780.0.copyload, %i.atm
  %i.ato = fadd double %i.atk, %i.atn
  store double %i.ato, ptr %i.atc, align 8, !tbaa !45
  %i.atp = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i499.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i499.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i499.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader2074
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader2074 ], [ %i.atp, %.lr.ph.i.i.i.i.i.i.i.i.i.i499.prol ]
  %i.atq = icmp eq i64 %i.aqt, %.neg
  br i1 %i.atq, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i499

.lr.ph.i.i.i.i.i.i.i.i.i.i499:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i499.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i499
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.auu, %.lr.ph.i.i.i.i.i.i.i.i.i.i499 ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i499.prol.loopexit ] ; 4 uses
  %i.atr = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.aqv
  %i.ats = getelementptr inbounds [8 x i8], ptr %i.arz, i64 %i.atr
  %i.att = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.aqu ; 3 uses
  %i.atu = getelementptr inbounds [8 x i8], ptr %i.arq, i64 %i.att
  %i.atv = load double, ptr %i.atu, align 8, !tbaa !45
  %i.atw = fmul double %.sroa.0778.0.copyload, %i.atv
  %i.atx = getelementptr inbounds [8 x i8], ptr %i.aru, i64 %i.att
  %i.aty = load double, ptr %i.atx, align 8, !tbaa !45
  %i.atz = fmul double %.sroa.5779.0.copyload, %i.aty
  %i.aua = fadd double %i.atw, %i.atz
  %i.aub = getelementptr inbounds [8 x i8], ptr %i.ary, i64 %i.att
  %i.auc = load double, ptr %i.aub, align 8, !tbaa !45
  %i.aud = fmul double %.sroa.6780.0.copyload, %i.auc
  %i.aue = fadd double %i.aua, %i.aud
  store double %i.aue, ptr %i.ats, align 8, !tbaa !45
  %i.auf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aug = mul nsw i64 %i.auf, %i.aqv
  %i.auh = getelementptr inbounds [8 x i8], ptr %i.arz, i64 %i.aug
  %i.aui = mul nsw i64 %i.auf, %i.aqu             ; 3 uses
  %i.auj = getelementptr inbounds [8 x i8], ptr %i.arq, i64 %i.aui
  %i.auk = load double, ptr %i.auj, align 8, !tbaa !45
  %i.aul = fmul double %.sroa.0778.0.copyload, %i.auk
  %i.aum = getelementptr inbounds [8 x i8], ptr %i.aru, i64 %i.aui
  %i.aun = load double, ptr %i.aum, align 8, !tbaa !45
  %i.auo = fmul double %.sroa.5779.0.copyload, %i.aun
  %i.aup = fadd double %i.aul, %i.auo
  %i.auq = getelementptr inbounds [8 x i8], ptr %i.ary, i64 %i.aui
  %i.aur = load double, ptr %i.auq, align 8, !tbaa !45
  %i.aus = fmul double %.sroa.6780.0.copyload, %i.aur
  %i.aut = fadd double %i.aup, %i.aus
  store double %i.aut, ptr %i.auh, align 8, !tbaa !45
  %i.auu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i500.1 = icmp eq i64 %i.auu, %i.aqt
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i500.1, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i499, !llvm.loop !146

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS0_IKS2_Li1ELin1ELb0EEEEESM_EESM_EEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i499.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i499, %middle.block1994
  %indvars.iv.next1713 = add nuw nsw i64 %indvars.iv1712, 1 ; 2 uses
  %exitcond1716.not = icmp eq i64 %indvars.iv.next1713, %wide.trip.count
  br i1 %exitcond1716.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit498._crit_edge.split, label %.lr.ph.i.i.i.i.i.i.i.i.i.i499.preheader, !llvm.loop !147

bb.dv:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit498._crit_edge.split
  call void @free(ptr noundef %.sroa.0.0) #17
  %.not4.i.i.i = icmp eq ptr %.sroa.01078.1, %.sroa.221090.1
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dv, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.auw, %.lr.ph.i.i.i ], [ %.sroa.01078.1, %bb.dv ] ; 2 uses
  %i.auv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !38
  call void @free(ptr noundef %i.auv) #17
  %i.auw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i501 = icmp eq ptr %i.auw, %.sroa.221090.1
  br i1 %.not.i.i.i501, label %_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !148

_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %bb.dv
  %.not.i.i1.i = icmp eq ptr %.sroa.01078.1, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i
  %i.aux = ptrtoint ptr %.sroa.221090.1 to i64
  %i.auy = ptrtoint ptr %.sroa.01078.1 to i64
  %i.auz = sub i64 %i.aux, %i.auy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01078.1, i64 noundef %i.auz) #21
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i, %bb.dw
  %.not.i.i.i502 = icmp eq ptr %.sroa.01094.11395, null
  br i1 %.not.i.i.i502, label %_ZNSt6vectorIiSaIiEED2Ev.exit503, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EED2Ev.exit
  %i.ava = ptrtoint ptr %.sroa.251111.11376 to i64
  %i.avb = ptrtoint ptr %.sroa.01094.11395 to i64
  %i.avc = sub i64 %i.ava, %i.avb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01094.11395, i64 noundef %i.avc) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit503

_ZNSt6vectorIiSaIiEED2Ev.exit503:                 ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EED2Ev.exit, %bb.dx
  %.not4.i.i.i504 = icmp eq ptr %.sroa.01115.113371347, %.sroa.261131.112971351
  br i1 %.not4.i.i.i504, label %_ZSt8_DestroyIPSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i505

.lr.ph.i.i.i505:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit503, %_ZSt8_DestroyISt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i506 = phi ptr [ %i.avj, %_ZSt8_DestroyISt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS3_EEEvPT_.exit.i.i.i ], [ %.sroa.01115.113371347, %_ZNSt6vectorIiSaIiEED2Ev.exit503 ] ; 3 uses
  %i.avd = load ptr, ptr %.05.i.i.i506, align 8, !tbaa !171 ; 3 uses
  %.not.i.i.i.i.i.i.i507 = icmp eq ptr %i.avd, null
  br i1 %.not.i.i.i.i.i.i.i507, label %_ZSt8_DestroyISt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS3_EEEvPT_.exit.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.i.i.i505
  %i.ave = getelementptr inbounds nuw i8, ptr %.05.i.i.i506, i64 16
  %i.avf = load ptr, ptr %i.ave, align 8, !tbaa !169
  %i.avg = ptrtoint ptr %i.avf to i64
  %i.avh = ptrtoint ptr %i.avd to i64
  %i.avi = sub i64 %i.avg, %i.avh
  call void @_ZdlPvm(ptr noundef nonnull %i.avd, i64 noundef %i.avi) #21
  br label %_ZSt8_DestroyISt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.dy, %.lr.ph.i.i.i505
  %i.avj = getelementptr inbounds nuw i8, ptr %.05.i.i.i506, i64 24 ; 2 uses
  %.not.i.i.i508 = icmp eq ptr %i.avj, %.sroa.261131.112971351
  br i1 %.not.i.i.i508, label %_ZSt8_DestroyIPSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i505, !llvm.loop !149

_ZSt8_DestroyIPSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS3_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit503
  %.not.i.i1.i510 = icmp eq ptr %.sroa.01115.113371347, null
  br i1 %.not.i.i1.i510, label %_ZNSt6vectorIS_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EESaIS4_EED2Ev.exit, label %bb.dz

bb.dz:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.avk = ptrtoint ptr %.sroa.261131.112971351 to i64
  %i.avl = ptrtoint ptr %.sroa.01115.113371347 to i64
  %i.avm = sub i64 %i.avk, %i.avl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01115.113371347, i64 noundef %i.avm) #21
  br label %_ZNSt6vectorIS_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.dz
  %.not4.i.i.i511 = icmp eq ptr %.sroa.01135.1124612731357, %.sroa.221150.1124412751355
  br i1 %.not4.i.i.i511, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i512

.lr.ph.i.i.i512:                                  ; preds = %_ZNSt6vectorIS_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EESaIS4_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i513 = phi ptr [ %i.avt, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %.sroa.01135.1124612731357, %_ZNSt6vectorIS_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EESaIS4_EED2Ev.exit ] ; 3 uses
  %i.avn = load ptr, ptr %.05.i.i.i513, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i.i514 = icmp eq ptr %i.avn, null
  br i1 %.not.i.i.i.i.i.i.i514, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.ea

end_hunk_0
