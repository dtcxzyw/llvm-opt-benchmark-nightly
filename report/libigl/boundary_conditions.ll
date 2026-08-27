Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/boundary_conditions?download=true
inline.NumInlined: 1764
inline.NumDeleted: 939
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3igl19boundary_conditionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES4_S4_S4_S5_S3_EEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERKNS6_IT3_EERKNS6_IT4_EERKNS6_IT5_EERNS1_15PlainObjectBaseIT6_EERNSZ_IT7_EE:bb.a

.lr.ph2441.split.preheader:                       ; preds = %.lr.ph2441
  %i.aor = add i64 %i.aon, -1                     ; 2 uses
  %i.aos = add i64 %i.aon, -2
  %xtraiter4993 = and i64 %i.aor, 3               ; 3 uses
  %i.aot = icmp ult i64 %i.aos, 3
  %unroll_iter = and i64 %i.aor, -4
  %lcmp.mod4994.not = icmp eq i64 %xtraiter4993, 0
  %lcmp.mod4996 = icmp ne i64 %xtraiter4993, 0
  %min.iters.check4430 = icmp ne i64 %i.aon, 1
  %ident.check4428.not = icmp eq i64 %i.aoj, 1
  %or.cond4450 = and i1 %min.iters.check4430, %ident.check4428.not
  %n.vec4432 = and i64 %i.aon, -2                 ; 3 uses
  %cmp.n4438 = icmp eq i64 %i.aon, %n.vec4432
  br label %.lr.ph2441.split

bb.fn:                                            ; preds = %.lr.ph2439, %bb.fo
  %indvars.iv3014 = phi i64 [ 0, %.lr.ph2439 ], [ %indvars.iv.next3015, %bb.fo ] ; 4 uses
  %i.aou = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0938.14.lcssa, i64 %indvars.iv3014
  %i.aov = load double, ptr %i.aou, align 8, !tbaa !31
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01002.20.lcssa, i64 %indvars.iv3014
  %i.aox = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.aow)
          to label %bb.fo unwind label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !20
  %i.aoz = sext i32 %i.aoy to i64
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0969.19.lcssa, i64 %indvars.iv3014
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !20
  %i.apc = sext i32 %i.apb to i64
  %i.apd = load ptr, ptr %8, align 8, !tbaa !21
  %i.ape = load i64, ptr %i.any, align 8, !tbaa !16 ; 2 uses
  %i.apf = mul nsw i64 %i.ape, %i.apc
  %i.apg = getelementptr [8 x i8], ptr %i.apd, i64 %i.aoz
  %i.aph = getelementptr [8 x i8], ptr %i.apg, i64 %i.apf
  store double %i.aov, ptr %i.aph, align 8, !tbaa !31
  %indvars.iv.next3015 = add nuw nsw i64 %indvars.iv3014, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next3015, %wide.trip.count
  br i1 %exitcond.not, label %.preheader1158, label %bb.fn, !llvm.loop !113

bb.fp:                                            ; preds = %bb.fn
  %i.api = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

.lr.ph2441.split:                                 ; preds = %.lr.ph2441.split.preheader, %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEdVERKd.exit
  %indvars.iv3017 = phi i64 [ %indvars.iv.next3018, %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEdVERKd.exit ], [ 0, %.lr.ph2441.split.preheader ] ; 2 uses
  %i.apj = getelementptr inbounds nuw [8 x i8], ptr %i.aol, i64 %indvars.iv3017 ; 12 uses
  %i.apk = load double, ptr %i.apj, align 8, !tbaa !31 ; 3 uses
  br i1 %i.aop, label %.lr.ph.i.i.i.preheader, label %.loopexit1157

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph2441.split
  br i1 %i.aot, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.01722.i.i.i = phi i64 [ %i.aqe, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.02021.i.i.i = phi double [ %i.aqd, %.lr.ph.i.i.i ], [ %i.apk, %.lr.ph.i.i.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.apl = mul nuw nsw i64 %.01722.i.i.i, %i.aoj
  %i.apm = getelementptr [8 x i8], ptr %i.apj, i64 %i.apl
  %i.apn = load double, ptr %i.apm, align 8, !tbaa !31
  %i.apo = fadd double %.02021.i.i.i, %i.apn
  %i.app = add nuw nsw i64 %.01722.i.i.i, 1
  %i.apq = mul nuw nsw i64 %i.app, %i.aoj
  %i.apr = getelementptr [8 x i8], ptr %i.apj, i64 %i.apq
  %i.aps = load double, ptr %i.apr, align 8, !tbaa !31
  %i.apt = fadd double %i.apo, %i.aps
  %i.apu = add nuw nsw i64 %.01722.i.i.i, 2
  %i.apv = mul nuw nsw i64 %i.apu, %i.aoj
  %i.apw = getelementptr [8 x i8], ptr %i.apj, i64 %i.apv
  %i.apx = load double, ptr %i.apw, align 8, !tbaa !31
  %i.apy = fadd double %i.apt, %i.apx
  %i.apz = add nuw nsw i64 %.01722.i.i.i, 3
  %i.aqa = mul nuw nsw i64 %i.apz, %i.aoj
  %i.aqb = getelementptr [8 x i8], ptr %i.apj, i64 %i.aqa
  %i.aqc = load double, ptr %i.aqb, align 8, !tbaa !31
  %i.aqd = fadd double %i.apy, %i.aqc             ; 3 uses
  %i.aqe = add nuw nsw i64 %.01722.i.i.i, 4       ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i.i.i.i.i.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !114

.loopexit1157:                                    ; preds = %.lr.ph2441.split
  br i1 %i.aoq, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEdVERKd.exit

.lr.ph.i.i.i.i.i.i.preheader.loopexit.unr-lcssa:  ; preds = %.lr.ph.i.i.i
  br i1 %lcmp.mod4994.not, label %.lr.ph.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.01722.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %i.aqe, %.lr.ph.i.i.i.i.i.i.preheader.loopexit.unr-lcssa ]
  %.02021.i.i.i.epil.init = phi double [ %i.apk, %.lr.ph.i.i.i.preheader ], [ %i.aqd, %.lr.ph.i.i.i.i.i.i.preheader.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4996)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.01722.i.i.i.epil = phi i64 [ %i.aqj, %.lr.ph.i.i.i.epil ], [ %.01722.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.02021.i.i.i.epil = phi double [ %i.aqi, %.lr.ph.i.i.i.epil ], [ %.02021.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.aqf = mul nuw nsw i64 %.01722.i.i.i.epil, %i.aoj
  %i.aqg = getelementptr [8 x i8], ptr %i.apj, i64 %i.aqf
  %i.aqh = load double, ptr %i.aqg, align 8, !tbaa !31
  %i.aqi = fadd double %.02021.i.i.i.epil, %i.aqh ; 2 uses
  %i.aqj = add nuw nsw i64 %.01722.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter4993
  br i1 %epil.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.epil, !llvm.loop !115

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %.loopexit1157
  %.0.i3156 = phi double [ %i.apk, %.loopexit1157 ], [ %i.aqd, %.lr.ph.i.i.i.i.i.i.preheader.loopexit.unr-lcssa ], [ %i.aqi, %.lr.ph.i.i.i.epil ] ; 6 uses
  br i1 %or.cond4450, label %vector.ph4431, label %.lr.ph.i.i.i.i.i.i.preheader4471

vector.ph4431:                                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0.i3156, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body4433

vector.body4433:                                  ; preds = %vector.body4433, %vector.ph4431
  %index4434 = phi i64 [ 0, %vector.ph4431 ], [ %index.next4436, %vector.body4433 ] ; 2 uses
  %i.aqk = getelementptr inbounds nuw [8 x i8], ptr %i.apj, i64 %index4434 ; 2 uses
  %wide.load4435 = load <2 x double>, ptr %i.aqk, align 8, !tbaa !31
  %i.aql = fdiv <2 x double> %wide.load4435, %broadcast.splat
  store <2 x double> %i.aql, ptr %i.aqk, align 8, !tbaa !31
  %index.next4436 = add nuw i64 %index4434, 2     ; 2 uses
  %i.aqm = icmp eq i64 %index.next4436, %n.vec4432
  br i1 %i.aqm, label %middle.block4437, label %vector.body4433, !llvm.loop !116

middle.block4437:                                 ; preds = %vector.body4433
  br i1 %cmp.n4438, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEdVERKd.exit, label %.lr.ph.i.i.i.i.i.i.preheader4471

.lr.ph.i.i.i.i.i.i.preheader4471:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block4437
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec4432, %middle.block4437 ] ; 4 uses
  %i.aqn = sub i64 %i.aon, %.05.i.i.i.i.i.i.ph
  %xtraiter4997 = and i64 %i.aqn, 3               ; 2 uses
  %lcmp.mod4998.not = icmp eq i64 %xtraiter4997, 0
  br i1 %lcmp.mod4998.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader4471, %.lr.ph.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.prol = phi i64 [ %i.aqs, %.lr.ph.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader4471 ] ; 2 uses
  %prol.iter4999 = phi i64 [ %prol.iter4999.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader4471 ]
  %i.aqo = mul nuw nsw i64 %.05.i.i.i.i.i.i.prol, %i.aoj
  %i.aqp = getelementptr inbounds nuw [8 x i8], ptr %i.apj, i64 %i.aqo ; 2 uses
  %i.aqq = load double, ptr %i.aqp, align 8, !tbaa !31
  %i.aqr = fdiv double %i.aqq, %.0.i3156
  store double %i.aqr, ptr %i.aqp, align 8, !tbaa !31
  %i.aqs = add nuw nsw i64 %.05.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter4999.next = add i64 %prol.iter4999, 1 ; 2 uses
  %prol.iter4999.cmp.not = icmp eq i64 %prol.iter4999.next, %xtraiter4997
  br i1 %prol.iter4999.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !117

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader4471
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader4471 ], [ %i.aqs, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.aqt = sub i64 %.05.i.i.i.i.i.i.ph, %i.aon
  %i.aqu = icmp ugt i64 %i.aqt, -4
  br i1 %i.aqu, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEdVERKd.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.aro, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.aqv = mul nuw nsw i64 %.05.i.i.i.i.i.i, %i.aoj
  %i.aqw = getelementptr inbounds nuw [8 x i8], ptr %i.apj, i64 %i.aqv ; 2 uses
  %i.aqx = load double, ptr %i.aqw, align 8, !tbaa !31
  %i.aqy = fdiv double %i.aqx, %.0.i3156
  store double %i.aqy, ptr %i.aqw, align 8, !tbaa !31
  %i.aqz = add nuw nsw i64 %.05.i.i.i.i.i.i, 1
  %i.ara = mul nuw nsw i64 %i.aqz, %i.aoj
  %i.arb = getelementptr inbounds nuw [8 x i8], ptr %i.apj, i64 %i.ara ; 2 uses
  %i.arc = load double, ptr %i.arb, align 8, !tbaa !31
  %i.ard = fdiv double %i.arc, %.0.i3156
  store double %i.ard, ptr %i.arb, align 8, !tbaa !31
  %i.are = add nuw nsw i64 %.05.i.i.i.i.i.i, 2
  %i.arf = mul nuw nsw i64 %i.are, %i.aoj
  %i.arg = getelementptr inbounds nuw [8 x i8], ptr %i.apj, i64 %i.arf ; 2 uses
  %i.arh = load double, ptr %i.arg, align 8, !tbaa !31
  %i.ari = fdiv double %i.arh, %.0.i3156
  store double %i.ari, ptr %i.arg, align 8, !tbaa !31
  %i.arj = add nuw nsw i64 %.05.i.i.i.i.i.i, 3
  %i.ark = mul nuw nsw i64 %i.arj, %i.aoj
  %i.arl = getelementptr inbounds nuw [8 x i8], ptr %i.apj, i64 %i.ark ; 2 uses
  %i.arm = load double, ptr %i.arl, align 8, !tbaa !31
  %i.arn = fdiv double %i.arm, %.0.i3156
  store double %i.arn, ptr %i.arl, align 8, !tbaa !31
  %i.aro = add nuw nsw i64 %.05.i.i.i.i.i.i, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.aro, %i.aon
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEdVERKd.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !118

_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEdVERKd.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block4437, %.loopexit1157
  %indvars.iv.next3018 = add nuw nsw i64 %indvars.iv3017, 1 ; 2 uses
  %exitcond3020.not = icmp eq i64 %indvars.iv.next3018, %i.aoj
  br i1 %exitcond3020.not, label %._crit_edge2442.split, label %.lr.ph2441.split, !llvm.loop !119

._crit_edge2442.split:                            ; preds = %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEdVERKd.exit, %.preheader1158.._crit_edge2442.split_crit_edge
  %i.arp = phi i64 [ %.pre3034, %.preheader1158.._crit_edge2442.split_crit_edge ], [ %i.aon, %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEdVERKd.exit ] ; 3 uses
  %i.arq = mul nsw i64 %i.arp, %i.aoj
  %i.arr = icmp eq i64 %i.arq, 0
  br i1 %i.arr, label %.critedge, label %bb.fq

bb.fq:                                            ; preds = %._crit_edge2442.split
  %or.cond2448 = icmp sgt i64 %i.arp, 1
  br i1 %or.cond2448, label %.lr.ph2445, label %.critedge

.lr.ph2445:                                       ; preds = %bb.fq
  %i.ars = load ptr, ptr %8, align 8, !tbaa !21, !noalias !120
  %i.art = sdiv i64 %i.aoj, 4
  %i.aru = shl nsw i64 %i.art, 2                  ; 3 uses
  %i.arv = sdiv i64 %i.aoj, 2
  %i.arw = shl nsw i64 %i.arv, 1                  ; 6 uses
  %.off.i.i.i.i514 = add i64 %i.aoj, 1
  %.not.i.i.i.i515 = icmp ult i64 %.off.i.i.i.i514, 3
  %i.arx = icmp sgt i64 %i.aoj, 3
  %i.ary = icmp samesign ugt i64 %i.aoj, 7
  %i.arz = icmp sgt i64 %i.arw, %i.aru
  %i.asa = icmp slt i64 %i.arw, %i.aoj
  %i.asb = icmp sgt i64 %i.aoj, 1
  %i.asc = add i64 %i.aoj, -1                     ; 3 uses
  %i.asd = add i64 %i.aoj, -2
  %xtraiter5000 = and i64 %i.aoj, 1
  %lcmp.mod5001.not = icmp eq i64 %xtraiter5000, 0
  %i.ase = or disjoint i64 %i.arw, 1
  %i.asf = icmp eq i64 %i.asc, %i.arw
  %xtraiter5010 = and i64 %i.asc, 3               ; 3 uses
  %i.asg = icmp ult i64 %i.asd, 3
  %unroll_iter5015 = and i64 %i.asc, -4
  %lcmp.mod5012.not = icmp eq i64 %xtraiter5010, 0
  %lcmp.mod5014 = icmp ne i64 %xtraiter5010, 0
  br label %bb.fr

bb.fr:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffEv.exit, %.lr.ph2445
  %indvars.iv3021 = phi i64 [ 0, %.lr.ph2445 ], [ %indvars.iv.next3022, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffEv.exit ] ; 2 uses
  %i.ash = mul nsw i64 %indvars.iv3021, %i.aoj
  %i.asi = getelementptr inbounds [8 x i8], ptr %i.ars, i64 %i.ash ; 25 uses
  br i1 %.not.i.i.i.i515, label %bb.fw, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.asj = load <2 x double>, ptr %i.asi, align 1 ; 2 uses
  %i.ask = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.asj) ; 3 uses
  %i.asl = extractelement <2 x double> %i.asj, i64 0 ; 3 uses
  br i1 %i.arx, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asi, i64 16
  %i.asn = load <2 x double>, ptr %i.asm, align 1, !tbaa !47
  %i.aso = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.asn) ; 2 uses
  br i1 %i.ary, label %.lr.ph.i.i.i.i524, label %._crit_edge.i.i.i.i521

._crit_edge.i.i.i.i521:                           ; preds = %.lr.ph.i.i.i.i524, %bb.ft
  %.075.lcssa.i.i.i.i522 = phi <2 x double> [ %i.aso, %bb.ft ], [ %i.asy, %.lr.ph.i.i.i.i524 ]
  %.072.lcssa.i.i.i.i523 = phi <2 x double> [ %i.ask, %bb.ft ], [ %i.ast, %.lr.ph.i.i.i.i524 ]
  %i.asp = call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.072.lcssa.i.i.i.i523, <2 x double> %.075.lcssa.i.i.i.i522) #25, !srcloc !123 ; 2 uses
  br i1 %i.arz, label %bb.fu, label %bb.fv

.lr.ph.i.i.i.i524:                                ; preds = %bb.ft, %.lr.ph.i.i.i.i524
  %.05480.i.i.i.i525 = phi i64 [ %.054.i.i.i.i529, %.lr.ph.i.i.i.i524 ], [ 4, %bb.ft ] ; 3 uses
  %.054.in79.i.i.i.i526 = phi i64 [ %.05480.i.i.i.i525, %.lr.ph.i.i.i.i524 ], [ 0, %bb.ft ]
  %.07278.i.i.i.i527 = phi <2 x double> [ %i.ast, %.lr.ph.i.i.i.i524 ], [ %i.ask, %bb.ft ]
  %.07577.i.i.i.i528 = phi <2 x double> [ %i.asy, %.lr.ph.i.i.i.i524 ], [ %i.aso, %bb.ft ]
  %i.asq = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.05480.i.i.i.i525
  %i.asr = load <2 x double>, ptr %i.asq, align 1, !tbaa !47
  %i.ass = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.asr)
  %i.ast = call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07278.i.i.i.i527, <2 x double> %i.ass) #25, !srcloc !123 ; 2 uses
  %i.asu = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.054.in79.i.i.i.i526
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 48
  %i.asw = load <2 x double>, ptr %i.asv, align 1, !tbaa !47
  %i.asx = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.asw)
  %i.asy = call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07577.i.i.i.i528, <2 x double> %i.asx) #25, !srcloc !123 ; 2 uses
  %.054.i.i.i.i529 = add nuw nsw i64 %.05480.i.i.i.i525, 4 ; 2 uses
  %i.asz = icmp slt i64 %.054.i.i.i.i529, %i.aru
  br i1 %i.asz, label %.lr.ph.i.i.i.i524, label %._crit_edge.i.i.i.i521, !llvm.loop !124

bb.fu:                                            ; preds = %._crit_edge.i.i.i.i521
  %i.ata = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.aru
  %i.atb = load <2 x double>, ptr %i.ata, align 1, !tbaa !47
  %i.atc = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.atb)
  %i.atd = call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.asp, <2 x double> %i.atc) #25, !srcloc !123
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %._crit_edge.i.i.i.i521, %bb.fs
  %.274.i.i.i.i516 = phi <2 x double> [ %i.ask, %bb.fs ], [ %i.atd, %bb.fu ], [ %i.asp, %._crit_edge.i.i.i.i521 ] ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i516, i64 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i516, i64 0 ; 2 uses
  %i.ate = fcmp olt double %.sroa.0.8.vec.extract.i.i.i.i.i.i, %.sroa.0.0.vec.extract.i.i.i.i.i.i
  %i.atf = select i1 %i.ate, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i ; 4 uses
  br i1 %i.asa, label %.lr.ph85.i.i.i.i517.preheader, label %.loopexit

.lr.ph85.i.i.i.i517.preheader:                    ; preds = %bb.fv
  br i1 %lcmp.mod5001.not, label %.lr.ph85.i.i.i.i517.prol.loopexit, label %.lr.ph85.i.i.i.i517.prol

.lr.ph85.i.i.i.i517.prol:                         ; preds = %.lr.ph85.i.i.i.i517.preheader
  %i.atg = getelementptr inbounds [8 x i8], ptr %i.asi, i64 %i.arw
  %i.ath = load double, ptr %i.atg, align 8, !tbaa !31
  %i.ati = call noundef double @llvm.fabs.f64(double %i.ath) ; 2 uses
  %i.atj = fcmp olt double %i.ati, %i.atf
  %i.atk = select i1 %i.atj, double %i.ati, double %i.atf ; 2 uses
  br label %.lr.ph85.i.i.i.i517.prol.loopexit

.lr.ph85.i.i.i.i517.prol.loopexit:                ; preds = %.lr.ph85.i.i.i.i517.prol, %.lr.ph85.i.i.i.i517.preheader
  %.lcssa4465.unr = phi double [ poison, %.lr.ph85.i.i.i.i517.preheader ], [ %i.atk, %.lr.ph85.i.i.i.i517.prol ]
  %.05283.i.i.i.i518.unr = phi i64 [ %i.arw, %.lr.ph85.i.i.i.i517.preheader ], [ %i.ase, %.lr.ph85.i.i.i.i517.prol ]
  %.182.i.i.i.i519.unr = phi double [ %i.atf, %.lr.ph85.i.i.i.i517.preheader ], [ %i.atk, %.lr.ph85.i.i.i.i517.prol ]
  br i1 %i.asf, label %.loopexit, label %.lr.ph85.i.i.i.i517

.lr.ph85.i.i.i.i517:                              ; preds = %.lr.ph85.i.i.i.i517.prol.loopexit, %.lr.ph85.i.i.i.i517
  %.05283.i.i.i.i518 = phi i64 [ %i.atw, %.lr.ph85.i.i.i.i517 ], [ %.05283.i.i.i.i518.unr, %.lr.ph85.i.i.i.i517.prol.loopexit ] ; 3 uses
  %.182.i.i.i.i519 = phi double [ %i.atv, %.lr.ph85.i.i.i.i517 ], [ %.182.i.i.i.i519.unr, %.lr.ph85.i.i.i.i517.prol.loopexit ] ; 2 uses
  %i.atl = getelementptr inbounds [8 x i8], ptr %i.asi, i64 %.05283.i.i.i.i518
  %i.atm = load double, ptr %i.atl, align 8, !tbaa !31
  %i.atn = call noundef double @llvm.fabs.f64(double %i.atm) ; 2 uses
  %i.ato = fcmp olt double %i.atn, %.182.i.i.i.i519
  %i.atp = select i1 %i.ato, double %i.atn, double %.182.i.i.i.i519 ; 2 uses
  %i.atq = getelementptr [8 x i8], ptr %i.asi, i64 %.05283.i.i.i.i518
  %i.atr = getelementptr i8, ptr %i.atq, i64 8
  %i.ats = load double, ptr %i.atr, align 8, !tbaa !31
  %i.att = call noundef double @llvm.fabs.f64(double %i.ats) ; 2 uses
  %i.atu = fcmp olt double %i.att, %i.atp
  %i.atv = select i1 %i.atu, double %i.att, double %i.atp ; 2 uses
  %i.atw = add nsw i64 %.05283.i.i.i.i518, 2      ; 2 uses
  %exitcond.not.i.i.i.i520.1 = icmp eq i64 %i.atw, %i.aoj
  br i1 %exitcond.not.i.i.i.i520.1, label %.loopexit, label %.lr.ph85.i.i.i.i517, !llvm.loop !125

bb.fw:                                            ; preds = %bb.fr
  %i.atx = load double, ptr %i.asi, align 8, !tbaa !31 ; 2 uses
  %i.aty = call noundef double @llvm.fabs.f64(double %i.atx)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph85.i.i.i.i517.prol.loopexit, %.lr.ph85.i.i.i.i517, %bb.fv, %bb.fw
  %i.atz = phi double [ %i.asl, %bb.fv ], [ %i.atx, %bb.fw ], [ %i.asl, %.lr.ph85.i.i.i.i517 ], [ %i.asl, %.lr.ph85.i.i.i.i517.prol.loopexit ] ; 3 uses
  %.3.i.i.i.i = phi double [ %i.atf, %bb.fv ], [ %i.aty, %bb.fw ], [ %.lcssa4465.unr, %.lr.ph85.i.i.i.i517.prol.loopexit ], [ %i.atv, %.lr.ph85.i.i.i.i517 ]
  %12 = ptrtoint ptr %i.asi to i64                ; 2 uses
  %13 = and i64 %12, 7
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %13, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.fx, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.fx:                                            ; preds = %.loopexit
  %i.aua = lshr exact i64 %12, 3
  %i.aub = and i64 %i.aua, 1
  %i.auc = call i64 @llvm.smin.i64(i64 %i.aub, i64 %i.aoj)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.fx, %.loopexit
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.auc, %bb.fx ], [ %i.aoj, %.loopexit ] ; 10 uses
  %i.aud = sub nsw i64 %i.aoj, %.0.i.i.i.i.i.i.i.i ; 5 uses
  %i.aue = sdiv i64 %i.aud, 4
  %i.auf = shl nsw i64 %i.aue, 2                  ; 2 uses
  %i.aug = sdiv i64 %i.aud, 2
  %i.auh = shl nsw i64 %i.aug, 1                  ; 2 uses
  %i.aui = add nsw i64 %i.auf, %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.auj = add nsw i64 %i.auh, %.0.i.i.i.i.i.i.i.i ; 2 uses
  %.off.i.i.i.i530 = add i64 %i.aud, 1
  %.not.i.i.i.i531 = icmp ult i64 %.off.i.i.i.i530, 3
  br i1 %.not.i.i.i.i531, label %bb.gc, label %bb.fy

bb.fy:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.auk = getelementptr [8 x i8], ptr %i.asi, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.aul = load <2 x double>, ptr %i.auk, align 1, !tbaa !47 ; 3 uses
  %i.aum = icmp sgt i64 %i.aud, 3
  br i1 %i.aum, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  %i.aun = getelementptr i8, ptr %i.auk, i64 16
  %i.auo = load <2 x double>, ptr %i.aun, align 1, !tbaa !47 ; 2 uses
  %i.aup = icmp samesign ugt i64 %i.aud, 7
  br i1 %i.aup, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i536

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.fz
  %.05475.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 4
  br label %.lr.ph.i.i.i.i537

._crit_edge.i.i.i.i536:                           ; preds = %.lr.ph.i.i.i.i537, %bb.fz
  %.073.lcssa.i.i.i.i = phi <2 x double> [ %i.auo, %bb.fz ], [ %i.auy, %.lr.ph.i.i.i.i537 ]
  %.070.lcssa.i.i.i.i = phi <2 x double> [ %i.aul, %bb.fz ], [ %i.auu, %.lr.ph.i.i.i.i537 ]
  %i.auq = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.070.lcssa.i.i.i.i, <2 x double> %.073.lcssa.i.i.i.i) #25, !srcloc !126 ; 2 uses
  %i.aur = icmp sgt i64 %i.auh, %i.auf
  br i1 %i.aur, label %bb.ga, label %bb.gb

.lr.ph.i.i.i.i537:                                ; preds = %.lr.ph.i.i.i.i537, %.lr.ph.preheader.i.i.i.i
  %.05479.i.i.i.i = phi i64 [ %.054.i.i.i.i538, %.lr.ph.i.i.i.i537 ], [ %.05475.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.054.in78.i.i.i.i = phi i64 [ %.05479.i.i.i.i, %.lr.ph.i.i.i.i537 ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.07077.i.i.i.i = phi <2 x double> [ %i.auu, %.lr.ph.i.i.i.i537 ], [ %i.aul, %.lr.ph.preheader.i.i.i.i ]
  %.07376.i.i.i.i = phi <2 x double> [ %i.auy, %.lr.ph.i.i.i.i537 ], [ %i.auo, %.lr.ph.preheader.i.i.i.i ]
  %i.aus = getelementptr inbounds [8 x i8], ptr %i.asi, i64 %.05479.i.i.i.i
  %i.aut = load <2 x double>, ptr %i.aus, align 1, !tbaa !47
  %i.auu = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07077.i.i.i.i, <2 x double> %i.aut) #25, !srcloc !126 ; 2 uses
  %i.auv = getelementptr [8 x i8], ptr %i.asi, i64 %.054.in78.i.i.i.i
  %i.auw = getelementptr i8, ptr %i.auv, i64 48
  %i.aux = load <2 x double>, ptr %i.auw, align 1, !tbaa !47
  %i.auy = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07376.i.i.i.i, <2 x double> %i.aux) #25, !srcloc !126 ; 2 uses
  %.054.i.i.i.i538 = add nsw i64 %.05479.i.i.i.i, 4 ; 2 uses
  %i.auz = icmp slt i64 %.054.i.i.i.i538, %i.aui
  br i1 %i.auz, label %.lr.ph.i.i.i.i537, label %._crit_edge.i.i.i.i536, !llvm.loop !127

bb.ga:                                            ; preds = %._crit_edge.i.i.i.i536
  %i.ava = getelementptr inbounds [8 x i8], ptr %i.asi, i64 %i.aui
  %i.avb = load <2 x double>, ptr %i.ava, align 1, !tbaa !47
  %i.avc = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.auq, <2 x double> %i.avb) #25, !srcloc !126
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %._crit_edge.i.i.i.i536, %bb.fy
  %.272.i.i.i.i = phi <2 x double> [ %i.aul, %bb.fy ], [ %i.avc, %bb.ga ], [ %i.auq, %._crit_edge.i.i.i.i536 ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i532 = extractelement <2 x double> %.272.i.i.i.i, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i533 = extractelement <2 x double> %.272.i.i.i.i, i64 1 ; 2 uses
  %i.avd = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i532, %.sroa.0.8.vec.extract.i.i.i.i.i.i533
  %i.ave = select i1 %i.avd, double %.sroa.0.8.vec.extract.i.i.i.i.i.i533, double %.sroa.0.0.vec.extract.i.i.i.i.i.i532 ; 3 uses
  %i.avf = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.avf, label %.lr.ph84.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.gb
  %xtraiter5003 = and i64 %.0.i.i.i.i.i.i.i.i, 3  ; 3 uses
  %i.avg = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 4
  br i1 %i.avg, label %.lr.ph84.i.i.i.i.epil.preheader, label %.lr.ph84.i.i.i.i.preheader.new

.lr.ph84.i.i.i.i.preheader.new:                   ; preds = %.lr.ph84.i.i.i.i.preheader
  %unroll_iter5008 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775804
  br label %.lr.ph84.i.i.i.i

.preheader.i.i.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph84.i.i.i.i
  %lcmp.mod5005.not = icmp eq i64 %xtraiter5003, 0
  br i1 %lcmp.mod5005.not, label %.preheader.i.i.i.i, label %.lr.ph84.i.i.i.i.epil.preheader

.lr.ph84.i.i.i.i.epil.preheader:                  ; preds = %.preheader.i.i.i.i.loopexit.unr-lcssa, %.lr.ph84.i.i.i.i.preheader
  %.05382.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph84.i.i.i.i.preheader ], [ %i.awg, %.preheader.i.i.i.i.loopexit.unr-lcssa ]
  %.06981.i.i.i.i.epil.init = phi double [ %i.ave, %.lr.ph84.i.i.i.i.preheader ], [ %i.awf, %.preheader.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod5007 = icmp ne i64 %xtraiter5003, 0
  call void @llvm.assume(i1 %lcmp.mod5007)
  br label %.lr.ph84.i.i.i.i.epil

.lr.ph84.i.i.i.i.epil:                            ; preds = %.lr.ph84.i.i.i.i.epil, %.lr.ph84.i.i.i.i.epil.preheader
  %.05382.i.i.i.i.epil = phi i64 [ %i.avl, %.lr.ph84.i.i.i.i.epil ], [ %.05382.i.i.i.i.epil.init, %.lr.ph84.i.i.i.i.epil.preheader ] ; 2 uses
  %.06981.i.i.i.i.epil = phi double [ %i.avk, %.lr.ph84.i.i.i.i.epil ], [ %.06981.i.i.i.i.epil.init, %.lr.ph84.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter5004 = phi i64 [ %epil.iter5004.next, %.lr.ph84.i.i.i.i.epil ], [ 0, %.lr.ph84.i.i.i.i.epil.preheader ]
  %i.avh = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.05382.i.i.i.i.epil
  %i.avi = load double, ptr %i.avh, align 8, !tbaa !31 ; 2 uses
  %i.avj = fcmp olt double %.06981.i.i.i.i.epil, %i.avi
  %i.avk = select i1 %i.avj, double %i.avi, double %.06981.i.i.i.i.epil ; 2 uses
  %i.avl = add nuw nsw i64 %.05382.i.i.i.i.epil, 1
  %epil.iter5004.next = add i64 %epil.iter5004, 1 ; 2 uses
  %epil.iter5004.cmp.not = icmp eq i64 %epil.iter5004.next, %xtraiter5003
  br i1 %epil.iter5004.cmp.not, label %.preheader.i.i.i.i, label %.lr.ph84.i.i.i.i.epil, !llvm.loop !128

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.loopexit.unr-lcssa, %.lr.ph84.i.i.i.i.epil, %bb.gb
  %.069.lcssa.i.i.i.i = phi double [ %i.ave, %bb.gb ], [ %i.awf, %.preheader.i.i.i.i.loopexit.unr-lcssa ], [ %i.avk, %.lr.ph84.i.i.i.i.epil ] ; 2 uses
  %i.avm = icmp slt i64 %i.auj, %i.aoj
  br i1 %i.avm, label %.lr.ph88.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i, %.lr.ph84.i.i.i.i.preheader.new
  %.05382.i.i.i.i = phi i64 [ 0, %.lr.ph84.i.i.i.i.preheader.new ], [ %i.awg, %.lr.ph84.i.i.i.i ] ; 5 uses
  %.06981.i.i.i.i = phi double [ %i.ave, %.lr.ph84.i.i.i.i.preheader.new ], [ %i.awf, %.lr.ph84.i.i.i.i ] ; 2 uses
  %niter5009 = phi i64 [ 0, %.lr.ph84.i.i.i.i.preheader.new ], [ %niter5009.next.3, %.lr.ph84.i.i.i.i ]
  %i.avn = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.05382.i.i.i.i
  %i.avo = load double, ptr %i.avn, align 8, !tbaa !31 ; 2 uses
  %i.avp = fcmp olt double %.06981.i.i.i.i, %i.avo
  %i.avq = select i1 %i.avp, double %i.avo, double %.06981.i.i.i.i ; 2 uses
  %i.avr = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.05382.i.i.i.i
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 8
  %i.avt = load double, ptr %i.avs, align 8, !tbaa !31 ; 2 uses
  %i.avu = fcmp olt double %i.avq, %i.avt
  %i.avv = select i1 %i.avu, double %i.avt, double %i.avq ; 2 uses
  %i.avw = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.05382.i.i.i.i
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 16
  %i.avy = load double, ptr %i.avx, align 8, !tbaa !31 ; 2 uses
  %i.avz = fcmp olt double %i.avv, %i.avy
  %i.awa = select i1 %i.avz, double %i.avy, double %i.avv ; 2 uses
  %i.awb = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.05382.i.i.i.i
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awb, i64 24
  %i.awd = load double, ptr %i.awc, align 8, !tbaa !31 ; 2 uses
  %i.awe = fcmp olt double %i.awa, %i.awd
  %i.awf = select i1 %i.awe, double %i.awd, double %i.awa ; 3 uses
  %i.awg = add nuw nsw i64 %.05382.i.i.i.i, 4     ; 2 uses
  %niter5009.next.3 = add nuw nsw i64 %niter5009, 4 ; 2 uses
  %niter5009.ncmp.3 = icmp eq i64 %niter5009.next.3, %unroll_iter5008
  br i1 %niter5009.ncmp.3, label %.preheader.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph84.i.i.i.i, !llvm.loop !129

.lr.ph88.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph88.i.i.i.i
  %.05287.i.i.i.i = phi i64 [ %i.awl, %.lr.ph88.i.i.i.i ], [ %i.auj, %.preheader.i.i.i.i ] ; 2 uses
  %.186.i.i.i.i = phi double [ %i.awk, %.lr.ph88.i.i.i.i ], [ %.069.lcssa.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.awh = getelementptr inbounds [8 x i8], ptr %i.asi, i64 %.05287.i.i.i.i
  %i.awi = load double, ptr %i.awh, align 8, !tbaa !31 ; 2 uses
  %i.awj = fcmp olt double %.186.i.i.i.i, %i.awi
  %i.awk = select i1 %i.awj, double %i.awi, double %.186.i.i.i.i ; 2 uses
  %i.awl = add nsw i64 %.05287.i.i.i.i, 1         ; 2 uses
  %i.awm = icmp slt i64 %i.awl, %i.aoj
  br i1 %i.awm, label %.lr.ph88.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffEv.exit, !llvm.loop !130

bb.gc:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  br i1 %i.asb, label %.lr.ph93.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffEv.exit

.lr.ph93.i.i.i.i.preheader:                       ; preds = %bb.gc
  br i1 %i.asg, label %.lr.ph93.i.i.i.i.epil.preheader, label %.lr.ph93.i.i.i.i

.lr.ph93.i.i.i.i:                                 ; preds = %.lr.ph93.i.i.i.i.preheader, %.lr.ph93.i.i.i.i
  %.091.i.i.i.i = phi i64 [ %i.axg, %.lr.ph93.i.i.i.i ], [ 1, %.lr.ph93.i.i.i.i.preheader ] ; 5 uses
  %.290.i.i.i.i = phi double [ %i.axf, %.lr.ph93.i.i.i.i ], [ %i.atz, %.lr.ph93.i.i.i.i.preheader ] ; 2 uses
  %niter5016 = phi i64 [ %niter5016.next.3, %.lr.ph93.i.i.i.i ], [ 0, %.lr.ph93.i.i.i.i.preheader ]
  %i.awn = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.091.i.i.i.i
  %i.awo = load double, ptr %i.awn, align 8, !tbaa !31 ; 2 uses
  %i.awp = fcmp olt double %.290.i.i.i.i, %i.awo
  %i.awq = select i1 %i.awp, double %i.awo, double %.290.i.i.i.i ; 2 uses
  %i.awr = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.091.i.i.i.i
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 8
  %i.awt = load double, ptr %i.aws, align 8, !tbaa !31 ; 2 uses
  %i.awu = fcmp olt double %i.awq, %i.awt
  %i.awv = select i1 %i.awu, double %i.awt, double %i.awq ; 2 uses
  %i.aww = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.091.i.i.i.i
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 16
  %i.awy = load double, ptr %i.awx, align 8, !tbaa !31 ; 2 uses
  %i.awz = fcmp olt double %i.awv, %i.awy
  %i.axa = select i1 %i.awz, double %i.awy, double %i.awv ; 2 uses
  %i.axb = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.091.i.i.i.i
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 24
  %i.axd = load double, ptr %i.axc, align 8, !tbaa !31 ; 2 uses
  %i.axe = fcmp olt double %i.axa, %i.axd
  %i.axf = select i1 %i.axe, double %i.axd, double %i.axa ; 3 uses
  %i.axg = add nuw nsw i64 %.091.i.i.i.i, 4       ; 2 uses
  %niter5016.next.3 = add nuw i64 %niter5016, 4   ; 2 uses
  %niter5016.ncmp.3 = icmp eq i64 %niter5016.next.3, %unroll_iter5015
  br i1 %niter5016.ncmp.3, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, label %.lr.ph93.i.i.i.i, !llvm.loop !131

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph93.i.i.i.i
  br i1 %lcmp.mod5012.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffEv.exit, label %.lr.ph93.i.i.i.i.epil.preheader

.lr.ph93.i.i.i.i.epil.preheader:                  ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, %.lr.ph93.i.i.i.i.preheader
  %.091.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph93.i.i.i.i.preheader ], [ %i.axg, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ]
  %.290.i.i.i.i.epil.init = phi double [ %i.atz, %.lr.ph93.i.i.i.i.preheader ], [ %i.axf, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod5014)
  br label %.lr.ph93.i.i.i.i.epil

.lr.ph93.i.i.i.i.epil:                            ; preds = %.lr.ph93.i.i.i.i.epil, %.lr.ph93.i.i.i.i.epil.preheader
  %.091.i.i.i.i.epil = phi i64 [ %i.axl, %.lr.ph93.i.i.i.i.epil ], [ %.091.i.i.i.i.epil.init, %.lr.ph93.i.i.i.i.epil.preheader ] ; 2 uses
  %.290.i.i.i.i.epil = phi double [ %i.axk, %.lr.ph93.i.i.i.i.epil ], [ %.290.i.i.i.i.epil.init, %.lr.ph93.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter5011 = phi i64 [ %epil.iter5011.next, %.lr.ph93.i.i.i.i.epil ], [ 0, %.lr.ph93.i.i.i.i.epil.preheader ]
  %i.axh = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %.091.i.i.i.i.epil
  %i.axi = load double, ptr %i.axh, align 8, !tbaa !31 ; 2 uses
  %i.axj = fcmp olt double %.290.i.i.i.i.epil, %i.axi
  %i.axk = select i1 %i.axj, double %i.axi, double %.290.i.i.i.i.epil ; 2 uses
  %i.axl = add nuw nsw i64 %.091.i.i.i.i.epil, 1
end_hunk_0
