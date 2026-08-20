inline.NumInlined: 2235
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS_7ContextERKNS_3gbm13GBLinearModelERKSt6vectorINS_6detail20GradientPairInternalIfEESaISC_EEPNS_7DMatrixEffi:bb.a
  %i.ej = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ej, label %bb.aj, label %_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev.exit, !prof !182

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #19
  br label %_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev.exit

_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev.exit:      ; preds = %_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit59, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.ek = load ptr, ptr %i.k, align 8, !tbaa !176 ; 5 uses
  %i.el = load ptr, ptr %i.l, align 8, !tbaa !176 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ek, %i.el
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i62.preheader

.lr.ph.i.i.i.i62.preheader:                       ; preds = %_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev.exit
  %i.em = ptrtoaddr ptr %i.el to i64
  %i.en = ptrtoaddr ptr %i.ek to i64
  %i.eo = add i64 %i.em, -4
  %i.ep = sub i64 %i.eo, %i.en
  %i.eq = and i64 %i.ep, -4
  %i.er = add i64 %i.eq, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ek, i8 0, i64 %i.er, i1 false), !tbaa !109
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i62.preheader, %_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev.exit
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !386 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !386 ; 3 uses
  %.not5.i = icmp eq ptr %i.et, %i.ev
  br i1 %.not5.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  %i.ew = ptrtoaddr ptr %i.ev to i64
  %i.ex = ptrtoaddr ptr %i.et to i64
  %i.ey = add i64 %i.ew, -8
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  %i.fa = lshr i64 %i.ez, 3
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ez, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.fb, 4611686018427387900     ; 4 uses
  %i.fc = shl i64 %n.vec, 3
  %i.fd = getelementptr i8, ptr %i.et, i64 %i.fc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.fe = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.et, i64 %i.fe ; 2 uses
  %i.ff = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !47
  store <2 x i64> %step.add, ptr %i.ff, align 8, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fb, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader103

.lr.ph.i.preheader103:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.et, %.lr.ph.i.preheader ], [ %i.fd, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader103, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader103 ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.fh, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader103 ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.06.i, align 8, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.fh, %i.ev
  br i1 %.not.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !388

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  %i.fi = load i32, ptr %i.a, align 4, !tbaa !128
  %.not = icmp eq i32 %i.fi, 0
  br i1 %.not, label %._crit_edge73, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit
  %i.fj = fpext float %5 to double                ; 2 uses
  %i.fk = fpext float %6 to double                ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.preheader

bb.ak:                                            ; preds = %_ZN7xgboost8BatchSetINS_7CSCPageEE3endEv.exit, %_ZN7xgboost6common11ParallelForIjZNS_6linear22ThriftyFeatureSelector5SetupEPKNS_7ContextERKNS_3gbm13GBLinearModelERKSt6vectorINS_6detail20GradientPairInternalIfEESaISE_EEPNS_7DMatrixEffiEUlT_E_EEvSL_iOT0_.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.al:                                            ; preds = %bb.q
  %i.fo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7xgboost13BatchIteratorINS_7CSCPageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.am unwind label %bb.ap     ; 2 uses

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fp)
          to label %.noexc unwind label %bb.aq    ; 2 uses

.noexc:                                           ; preds = %bb.am
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !187, !noalias !389
  %i.ft = load ptr, ptr %i.fq, align 8, !tbaa !188, !noalias !389 ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = ashr exact i64 %i.fw, 3
  store i64 %i.fx, ptr %11, align 8, !alias.scope !389
  store ptr %i.ft, ptr %i.ce, align 8, !alias.scope !389
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fy)
          to label %bb.an unwind label %bb.aq     ; 2 uses

bb.an:                                            ; preds = %.noexc
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !189, !noalias !389
  %i.gc = load ptr, ptr %i.fz, align 8, !tbaa !192, !noalias !389 ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 3
  store i64 %i.gg, ptr %i.cf, align 8, !alias.scope !389
  store ptr %i.gc, ptr %i.cg, align 8, !alias.scope !389
  %i.gh = load i32, ptr %i.b, align 4, !tbaa !128
  %i.gi = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store ptr %11, ptr %12, align 8, !tbaa !203
  store ptr %i.a, ptr %i.ch, align 8, !tbaa !175
  store ptr %0, ptr %i.ci, align 8, !tbaa !392
  store ptr %i.b, ptr %i.cj, align 8, !tbaa !175
  store ptr %3, ptr %i.ck, align 8, !tbaa !148
  invoke void @_ZN7xgboost6common11ParallelForIjZNS_6linear22ThriftyFeatureSelector5SetupEPKNS_7ContextERKNS_3gbm13GBLinearModelERKSt6vectorINS_6detail20GradientPairInternalIfEESaISE_EEPNS_7DMatrixEffiEUlT_E_EEvSL_iNS0_5SchedEOT0_(i32 noundef %i.gh, i32 noundef %i.gi, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %_ZN7xgboost6common11ParallelForIjZNS_6linear22ThriftyFeatureSelector5SetupEPKNS_7ContextERKNS_3gbm13GBLinearModelERKSt6vectorINS_6detail20GradientPairInternalIfEESaISE_EEPNS_7DMatrixEffiEUlT_E_EEvSL_iOT0_.exit unwind label %bb.ar

_ZN7xgboost6common11ParallelForIjZNS_6linear22ThriftyFeatureSelector5SetupEPKNS_7ContextERKNS_3gbm13GBLinearModelERKSt6vectorINS_6detail20GradientPairInternalIfEESaISE_EEPNS_7DMatrixEffiEUlT_E_EEvSL_iOT0_.exit: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.gj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_7CSCPageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZN7xgboost8BatchSetINS_7CSCPageEE3endEv.exit unwind label %bb.ak ; 0 uses

bb.ap:                                            ; preds = %bb.al
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aq:                                            ; preds = %.noexc, %bb.am, %bb.an
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.gm, %bb.ar ], [ %i.gl, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.at

bb.at:                                            ; preds = %bb.ap, %bb.as, %bb.ak
  %.pn48 = phi { ptr, i32 } [ %i.fn, %bb.ak ], [ %.pn, %bb.as ], [ %i.gk, %bb.ap ]
  call void @_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #19
  br label %.body

.body:                                            ; preds = %bb.p, %bb.at
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %bb.at ], [ %i.cl, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  resume { ptr, i32 } %.pn48.pn

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS7_7ContextERKNS7_3gbm13GBLinearModelERKS3_INS7_6detail20GradientPairInternalIfEESaISJ_EEPNS7_7DMatrixEffiEUlmmE_EvT_SR_T0_.exit
  %indvars.iv76 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next77, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS7_7ContextERKNS7_3gbm13GBLinearModelERKS3_INS7_6detail20GradientPairInternalIfEESaISJ_EEPNS7_7DMatrixEffiEUlmmE_EvT_SR_T0_.exit ] ; 5 uses
  %i.gn = load i32, ptr %i.b, align 4, !tbaa !128 ; 5 uses
  %.not74 = icmp eq i32 %i.gn, 0
  br i1 %.not74, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS7_7ContextERKNS7_3gbm13GBLinearModelERKS3_INS7_6detail20GradientPairInternalIfEESaISJ_EEPNS7_7DMatrixEffiEUlmmE_EvT_SR_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.go = trunc nuw i64 %indvars.iv76 to i32
  %i.gp = mul i32 %i.gn, %i.go
  %i.gq = load ptr, ptr %i.bi, align 8, !tbaa !365
  %i.gr = load ptr, ptr %i.k, align 8, !tbaa !147
  %wide.trip.count = zext i32 %i.gn to i64
  br label %bb.au

._crit_edge73:                                    ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS7_7ContextERKNS7_3gbm13GBLinearModelERKS3_INS7_6detail20GradientPairInternalIfEESaISJ_EEPNS7_7DMatrixEffiEUlmmE_EvT_SR_T0_.exit, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

._crit_edge:                                      ; preds = %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit
  %i.gs = zext i32 %i.gn to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.gs, 3
  %i.gt = load ptr, ptr %i.es, align 8, !tbaa !386
  %i.gu = trunc nuw i64 %indvars.iv76 to i32
  %i.gv = mul i32 %i.gn, %i.gu
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gw ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.idx ; 2 uses
  %i.gz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gs, i1 true)
  %i.ha = shl nuw nsw i64 %i.gz, 1
  %i.hb = xor i64 %i.ha, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_T1_(ptr %i.gx, ptr nonnull %i.gy, i64 noundef %i.hb, ptr nonnull %i.ek)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS9_7ContextERKNS9_3gbm13GBLinearModelERKS3_INS9_6detail20GradientPairInternalIfEESaISL_EEPNS9_7DMatrixEffiEUlmmE_EEEvT_SU_T0_(ptr %i.gx, ptr nonnull %i.gy, ptr nonnull %i.ek)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS7_7ContextERKNS7_3gbm13GBLinearModelERKS3_INS7_6detail20GradientPairInternalIfEESaISJ_EEPNS7_7DMatrixEffiEUlmmE_EvT_SR_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7xgboost6linear22ThriftyFeatureSelector5SetupEPKNS7_7ContextERKNS7_3gbm13GBLinearModelERKS3_INS7_6detail20GradientPairInternalIfEESaISJ_EEPNS7_7DMatrixEffiEUlmmE_EvT_SR_T0_.exit: ; preds = %.preheader, %._crit_edge
  %i.hc = load ptr, ptr %i.fm, align 8, !tbaa !346
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv76
  store i32 0, ptr %i.hd, align 4, !tbaa !128
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.he = load i32, ptr %i.a, align 4, !tbaa !128
  %i.hf = zext i32 %i.he to i64
  %i.hg = icmp samesign ult i64 %indvars.iv.next77, %i.hf
  br i1 %i.hg, label %.preheader, label %._crit_edge73, !llvm.loop !395

bb.au:                                            ; preds = %.lr.ph, %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit ] ; 3 uses
  %13 = trunc nuw i64 %indvars.iv to i32
  %14 = add i32 %i.gp, %13
  %15 = zext i32 %14 to i64                       ; 2 uses
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %15 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !396 ; 2 uses
  %i.hk = fcmp olt double %i.hj, f0x3EE4F8B580000000
  br i1 %i.hk, label %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hl = load ptr, ptr %i.fl, align 8, !tbaa !147
  %i.hm = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 28
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !119
  %i.hp = zext i32 %i.ho to i64
  %i.hq = mul nuw i64 %indvars.iv, %i.hp
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hq
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv76
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !109
  %i.hu = fpext float %i.ht to double             ; 3 uses
  %i.hv = load double, ptr %i.hh, align 8, !tbaa !398
  %i.hw = call double @llvm.fmuladd.f64(double %i.fk, double %i.hu, double %i.hv) ; 3 uses
  %i.hx = fadd double %i.hj, %i.fk                ; 3 uses
  %i.hy = fdiv double %i.hw, %i.hx
  %i.hz = fsub double %i.hu, %i.hy
  %i.ia = fcmp ult double %i.hz, 0.000000e+00
  %i.ib = fneg double %i.hu                       ; 4 uses
  br i1 %i.ia, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ic = fadd double %i.hw, %i.fj
  %i.id = fneg double %i.ic
  %i.ie = fdiv double %i.id, %i.hx                ; 2 uses
  %i.if = fcmp olt double %i.ie, %i.ib
  %.sroa.speculated22.i = select i1 %i.if, double %i.ib, double %i.ie
  br label %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit

bb.ax:                                            ; preds = %bb.av
  %i.ig = fsub double %i.hw, %i.fj
  %i.ih = fneg double %i.ig
  %i.ii = fdiv double %i.ih, %i.hx                ; 2 uses
  %i.ij = fcmp ogt double %i.ii, %i.ib
  %.sroa.speculated.i = select i1 %i.ij, double %i.ib, double %i.ii
  br label %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit

_ZN7xgboost6linear15CoordinateDeltaEddddd.exit:   ; preds = %bb.au, %bb.aw, %bb.ax
  %.1.i = phi double [ 0.000000e+00, %bb.au ], [ %.sroa.speculated22.i, %bb.aw ], [ %.sroa.speculated.i, %bb.ax ]
  %i.ik = fptrunc double %.1.i to float
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %15
  store float %i.ik, ptr %i.il, align 4, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.au, !llvm.loop !399
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN7xgboost6linear22ThriftyFeatureSelector11NextFeatureEPKNS_7ContextEiRKNS_3gbm13GBLinearModelEiRKSt6vectorINS_6detail20GradientPairInternalIfEESaISC_EEPNS_7DMatrixEff(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, float noundef %7, float noundef %8) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = sext i32 %4 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !346
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !128  ; 3 uses
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !400
  %.not = icmp ult i32 %i.e, %i.h
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !146  ; 2 uses
  %i.m = icmp eq i32 %i.f, %i.l
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = mul i32 %i.l, %4                         ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = zext i32 %i.e to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !188
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.o
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  %i.u = load i64, ptr %i.t, align 8, !tbaa !47
  %i.v = trunc i64 %i.u to i32
  %i.w = sub i32 %i.v, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.w, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7xgboost13BatchIteratorINS_7CSCPageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !406    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e, !prof !182

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.b = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.b, ptr noundef nonnull @.str.39, i32 noundef 475)
  %i.c = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.40, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %.pre = load ptr, ptr %0, align 8, !tbaa !406
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %bb.a
  %i.g = phi ptr [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef nonnull align 8 dereferenceable(32) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  ret ptr %i.k

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #34
  unreachable
}

declare noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_7CSCPageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !406    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e, !prof !182

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.b = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.b, ptr noundef nonnull @.str.39, i32 noundef 469)
  %i.c = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.40, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %.pre = load ptr, ptr %0, align 8, !tbaa !406
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %bb.a
  %i.g = phi ptr [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 0 uses
  ret ptr %0

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #34
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_7CSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !178
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !180
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !409
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !409
  br label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_7CSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !128
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
end_hunk_0
begin_hunk_1_@_ZN7xgboost6linear21GreedyFeatureSelector11NextFeatureEPKNS_7ContextEiRKNS_3gbm13GBLinearModelEiRKSt6vectorINS_6detail20GradientPairInternalIfEESaISC_EEPNS_7DMatrixEff:bb.a
  br label %_ZN7xgboost8BatchSetINS_7CSCPageEE5beginEv.exit

bb.f:                                             ; preds = %bb.d
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4, !noalias !476 ; 0 uses
  br label %_ZN7xgboost8BatchSetINS_7CSCPageEE5beginEv.exit

_ZN7xgboost8BatchSetINS_7CSCPageEE5beginEv.exit:  ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !alias.scope !479
  invoke void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_7CSCPageEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef null)
          to label %_ZN7xgboost8BatchSetINS_7CSCPageEE3endEv.exit.preheader unwind label %bb.g

_ZN7xgboost8BatchSetINS_7CSCPageEE3endEv.exit.preheader: ; preds = %_ZN7xgboost8BatchSetINS_7CSCPageEE5beginEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 40
  br label %_ZN7xgboost8BatchSetINS_7CSCPageEE3endEv.exit

bb.g:                                             ; preds = %_ZN7xgboost8BatchSetINS_7CSCPageEE5beginEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_7CSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #19
  br label %.body

_ZN7xgboost8BatchSetINS_7CSCPageEE3endEv.exit:    ; preds = %_ZN7xgboost8BatchSetINS_7CSCPageEE3endEv.exit.preheader, %_ZN7xgboost6common11ParallelForIjZNS_6linear21GreedyFeatureSelector11NextFeatureEPKNS_7ContextEiRKNS_3gbm13GBLinearModelEiRKSt6vectorINS_6detail20GradientPairInternalIfEESaISE_EEPNS_7DMatrixEffEUljE_EEvT_iOT0_.exit
  %i.ax = invoke noundef zeroext i1 @_ZNK7xgboost13BatchIteratorINS_7CSCPageEE5AtEndEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.h unwind label %bb.ab

bb.h:                                             ; preds = %_ZN7xgboost8BatchSetINS_7CSCPageEE3endEv.exit
  br i1 %i.ax, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !139 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ba, align 8, !tbaa !178
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !180
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #19, !inline_history !181
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #19, !inline_history !181
  br label %_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i46 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !128
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi i32 [ %i.bd, %bb.m ], [ %i.bn, %bb.n ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.o, label %_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit, !prof !182

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #19
  br label %_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.bp = load ptr, ptr %i.af, align 8, !tbaa !139 ; 8 uses
  %.not.i.i.i47 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i47, label %_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit51, label %bb.p

bb.p:                                             ; preds = %_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bq, align 8, !tbaa !178
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !180
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !52
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #19, !inline_history !181
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #19, !inline_history !181
  br label %_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit51

bb.r:                                             ; preds = %bb.p
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i48 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i48, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !128
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49

bb.t:                                             ; preds = %bb.r
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i50 = phi i32 [ %i.bt, %bb.s ], [ %i.cd, %bb.t ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i50, 1
  br i1 %i.ce, label %bb.u, label %_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit51, !prof !182

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #19
  br label %_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit51

_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit51: ; preds = %_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.cf = load ptr, ptr %i.ag, align 8, !tbaa !139 ; 8 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i52, label %_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit51
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4294967297
  %i.cj = trunc i64 %i.ch to i32                  ; 2 uses
  br i1 %i.ci, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cg, align 8, !tbaa !178
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !180
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !52
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #19, !inline_history !183
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !52
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #19, !inline_history !183
  br label %_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i53 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i.i.i53, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 8, !tbaa !128
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.cj, %bb.y ], [ %i.ct, %bb.z ]
  %i.cu = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cu, label %bb.aa, label %_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev.exit, !prof !182

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #19
  br label %_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev.exit

_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev.exit:      ; preds = %_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev.exit51, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.cv = load i32, ptr %i.c, align 4, !tbaa !128 ; 3 uses
  %.not60 = icmp eq i32 %i.cv, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev.exit
  %i.cw = load i32, ptr %i.a, align 4, !tbaa !128 ; 2 uses
  %i.cx = mul i32 %i.cw, %i.cv
  %i.cy = load ptr, ptr %i.s, align 8, !tbaa !365
  %i.cz = fpext float %7 to double                ; 2 uses
  %i.da = fpext float %8 to double                ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dc = sext i32 %i.cw to i64
  %wide.trip.count = zext i32 %i.cv to i64
  br label %bb.al

bb.ab:                                            ; preds = %_ZN7xgboost8BatchSetINS_7CSCPageEE3endEv.exit, %_ZN7xgboost6common11ParallelForIjZNS_6linear21GreedyFeatureSelector11NextFeatureEPKNS_7ContextEiRKNS_3gbm13GBLinearModelEiRKSt6vectorINS_6detail20GradientPairInternalIfEESaISE_EEPNS_7DMatrixEffEUljE_EEvT_iOT0_.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ac:                                            ; preds = %bb.h
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7xgboost13BatchIteratorINS_7CSCPageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ad unwind label %bb.ag     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %.noexc unwind label %bb.ah    ; 2 uses

.noexc:                                           ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !187, !noalias !482
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !188, !noalias !482 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3
  store i64 %i.dn, ptr %12, align 8, !alias.scope !482
  store ptr %i.dj, ptr %i.ao, align 8, !alias.scope !482
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %bb.ae unwind label %bb.ah     ; 2 uses

bb.ae:                                            ; preds = %.noexc
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !189, !noalias !482
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !192, !noalias !482 ; 2 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 3
  store i64 %i.dw, ptr %i.ap, align 8, !alias.scope !482
  store ptr %i.ds, ptr %i.aq, align 8, !alias.scope !482
  %i.dx = load i32, ptr %i.c, align 4, !tbaa !128
  %i.dy = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %1)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store ptr %12, ptr %13, align 8, !tbaa !203
  store ptr %0, ptr %i.ar, align 8, !tbaa !485
  store ptr %i.a, ptr %i.as, align 8, !tbaa !175
  store ptr %i.c, ptr %i.at, align 8, !tbaa !175
  store ptr %5, ptr %i.au, align 8, !tbaa !148
  store ptr %i.b, ptr %i.av, align 8, !tbaa !175
  invoke void @_ZN7xgboost6common11ParallelForIjZNS_6linear21GreedyFeatureSelector11NextFeatureEPKNS_7ContextEiRKNS_3gbm13GBLinearModelEiRKSt6vectorINS_6detail20GradientPairInternalIfEESaISE_EEPNS_7DMatrixEffEUljE_EEvT_iNS0_5SchedEOT0_(i32 noundef %i.dx, i32 noundef %i.dy, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(48) %13)
          to label %_ZN7xgboost6common11ParallelForIjZNS_6linear21GreedyFeatureSelector11NextFeatureEPKNS_7ContextEiRKNS_3gbm13GBLinearModelEiRKSt6vectorINS_6detail20GradientPairInternalIfEESaISE_EEPNS_7DMatrixEffEUljE_EEvT_iOT0_.exit unwind label %bb.ai

_ZN7xgboost6common11ParallelForIjZNS_6linear21GreedyFeatureSelector11NextFeatureEPKNS_7ContextEiRKNS_3gbm13GBLinearModelEiRKSt6vectorINS_6detail20GradientPairInternalIfEESaISE_EEPNS_7DMatrixEffEUljE_EEvT_iOT0_.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.dz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_7CSCPageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN7xgboost8BatchSetINS_7CSCPageEE3endEv.exit unwind label %bb.ab ; 0 uses

bb.ag:                                            ; preds = %bb.ac
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ah:                                            ; preds = %.noexc, %bb.ad, %bb.ae
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.ec, %bb.ai ], [ %i.eb, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %bb.aj, %bb.ab
  %.pn43 = phi { ptr, i32 } [ %i.dd, %bb.ab ], [ %.pn, %bb.aj ], [ %i.ea, %bb.ag ]
  call void @_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #19
  br label %.body

.body:                                            ; preds = %bb.g, %bb.ak
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.ak ], [ %i.aw, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @_ZN7xgboost13BatchIteratorINS_7CSCPageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  resume { ptr, i32 } %.pn43.pn

._crit_edge:                                      ; preds = %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit, %_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev.exit
  %.030.lcssa = phi i32 [ 0, %_ZN7xgboost8BatchSetINS_7CSCPageEED2Ev.exit ], [ %.131, %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ap

bb.al:                                            ; preds = %.lr.ph, %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit ] ; 3 uses
  %.02958 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit ] ; 2 uses
  %.03057 = phi i32 [ 0, %.lr.ph ], [ %.131, %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit ]
  %14 = trunc nuw i64 %indvars.iv to i32          ; 2 uses
  %15 = add i32 %i.cx, %14
  %16 = zext i32 %15 to i64
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !396 ; 2 uses
  %i.eg = fcmp olt double %i.ef, f0x3EE4F8B580000000
  br i1 %i.eg, label %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eh = load ptr, ptr %i.db, align 8, !tbaa !147
  %i.ei = load ptr, ptr %i.l, align 8, !tbaa !110
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !119
  %i.el = zext i32 %i.ek to i64
  %i.em = mul nuw i64 %indvars.iv, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.em
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.dc
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !109
  %i.eq = fpext float %i.ep to double             ; 3 uses
  %i.er = load double, ptr %i.ed, align 8, !tbaa !398
  %i.es = call double @llvm.fmuladd.f64(double %i.da, double %i.eq, double %i.er) ; 3 uses
  %i.et = fadd double %i.ef, %i.da                ; 3 uses
  %i.eu = fdiv double %i.es, %i.et
  %i.ev = fsub double %i.eq, %i.eu
  %i.ew = fcmp ult double %i.ev, 0.000000e+00
  %i.ex = fneg double %i.eq                       ; 4 uses
  br i1 %i.ew, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = fadd double %i.es, %i.cz
  %i.ez = fneg double %i.ey
  %i.fa = fdiv double %i.ez, %i.et                ; 2 uses
  %i.fb = fcmp olt double %i.fa, %i.ex
  %.sroa.speculated22.i = select i1 %i.fb, double %i.ex, double %i.fa
  br label %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit

bb.ao:                                            ; preds = %bb.am
  %i.fc = fsub double %i.es, %i.cz
  %i.fd = fneg double %i.fc
  %i.fe = fdiv double %i.fd, %i.et                ; 2 uses
  %i.ff = fcmp ogt double %i.fe, %i.ex
  %.sroa.speculated.i = select i1 %i.ff, double %i.ex, double %i.fe
  br label %_ZN7xgboost6linear15CoordinateDeltaEddddd.exit

_ZN7xgboost6linear15CoordinateDeltaEddddd.exit:   ; preds = %bb.al, %bb.an, %bb.ao
  %.1.i = phi double [ 0.000000e+00, %bb.al ], [ %.sroa.speculated22.i, %bb.an ], [ %.sroa.speculated.i, %bb.ao ]
  %i.fg = fptrunc double %.1.i to float
  %i.fh = call noundef float @llvm.fabs.f32(float %i.fg)
  %i.fi = fpext float %i.fh to double             ; 2 uses
  %i.fj = fcmp olt double %.02958, %i.fi          ; 2 uses
  %.131 = select i1 %i.fj, i32 %14, i32 %.03057   ; 2 uses
  %.1 = select i1 %i.fj, double %i.fi, double %.02958
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.al, !llvm.loop !488

bb.ap:                                            ; preds = %bb.a, %bb.b, %._crit_edge
  %.038 = phi i32 [ %.030.lcssa, %._crit_edge ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.038
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForIjZNS_6linear21GreedyFeatureSelector11NextFeatureEPKNS_7ContextEiRKNS_3gbm13GBLinearModelEiRKSt6vectorINS_6detail20GradientPairInternalIfEESaISE_EEPNS_7DMatrixEffEUljE_EEvT_iNS0_5SchedEOT0_(i32 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.165", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.a
  %.not214 = icmp eq i32 %0, 0
  br i1 %.not214, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph207

.lr.ph207:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !489, !nonnull !80, !align !422 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !423
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !425  ; 2 uses
  %i.i = icmp ne ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !80, !align !427
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !80, !align !427
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %wide.trip.count251 = zext i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph207, %_ZZN7xgboost6linear21GreedyFeatureSelector11NextFeatureEPKNS_7ContextEiRKNS_3gbm13GBLinearModelEiRKSt6vectorINS_6detail20GradientPairInternalIfEESaISC_EEPNS_7DMatrixEffENKUljE_clEj.exit
  %indvars.iv248 = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next249, %_ZZN7xgboost6linear21GreedyFeatureSelector11NextFeatureEPKNS_7ContextEiRKNS_3gbm13GBLinearModelEiRKSt6vectorINS_6detail20GradientPairInternalIfEESaISC_EEPNS_7DMatrixEffENKUljE_clEj.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv248 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !47   ; 2 uses
  %i.v = load i64, ptr %i.s, align 8, !tbaa !47   ; 3 uses
  %i.w = icmp eq i64 %i.u, %i.v
  %i.x = or i1 %i.w, %i.i
  br i1 %i.x, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.i, label %bb.c, !prof !428

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #34
  unreachable

_ZNK7xgboost18HostSparsePageViewixEm.exit.i:      ; preds = %bb.b
  %i.y = sub i64 %i.u, %i.v                       ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.aa = load i32, ptr %i.n, align 4, !tbaa !128 ; 2 uses
  %i.ab = load i32, ptr %i.p, align 4, !tbaa !128
  %i.ac = mul i32 %i.ab, %i.aa
  %i.ad = trunc nuw i64 %indvars.iv248 to i32
  %i.ae = add i32 %i.ac, %i.ad
  %i.af = zext i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !365
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.af ; 2 uses
  %i.ai = and i64 %i.y, 4294967295                ; 2 uses
  %.not.i55 = icmp eq i64 %i.ai, 0
  br i1 %.not.i55, label %_ZZN7xgboost6linear21GreedyFeatureSelector11NextFeatureEPKNS_7ContextEiRKNS_3gbm13GBLinearModelEiRKSt6vectorINS_6detail20GradientPairInternalIfEESaISC_EEPNS_7DMatrixEffENKUljE_clEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit.i, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %_ZNK7xgboost18HostSparsePageViewixEm.exit.i ] ; 3 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.i, %i.y
  br i1 %exitcond247.not, label %bb.d, label %_ZNK7xgboost6common4SpanIKNS_5EntryELm18446744073709551615EEixEm.exit15.i, !prof !182

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @_ZSt9terminatev() #34
  unreachable

_ZNK7xgboost6common4SpanIKNS_5EntryELm18446744073709551615EEixEm.exit15.i: ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i ; 2 uses
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !490, !nonnull !80, !align !422
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !431
  %i.am = load ptr, ptr %i.r, align 8, !tbaa !491, !nonnull !80, !align !427
  %i.an = load i32, ptr %i.am, align 4, !tbaa !128
  %i.ao = mul i32 %i.an, %i.al
  %i.ap = add i32 %i.ao, %i.aa
  %i.aq = zext i32 %i.ap to i64
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !433
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !436 ; 2 uses
  %i.av = fcmp olt float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_5EntryELm18446744073709551615EEixEm.exit15.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !438 ; 2 uses
  %i.ay = load float, ptr %i.as, align 4, !tbaa !439
  %i.az = fmul float %i.au, %i.ax
  %i.ba = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.az, i64 1
  %i.be = fmul <2 x float> %i.bb, %i.bd
  %i.bf = fpext <2 x float> %i.be to <2 x double>
  %i.bg = load <2 x double>, ptr %i.ah, align 8, !tbaa !375
  %i.bh = fadd <2 x double> %i.bg, %i.bf
  store <2 x double> %i.bh, ptr %i.ah, align 8, !tbaa !375
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK7xgboost6common4SpanIKNS_5EntryELm18446744073709551615EEixEm.exit15.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ai
  br i1 %exitcond.not.i, label %_ZZN7xgboost6linear21GreedyFeatureSelector11NextFeatureEPKNS_7ContextEiRKNS_3gbm13GBLinearModelEiRKSt6vectorINS_6detail20GradientPairInternalIfEESaISC_EEPNS_7DMatrixEffENKUljE_clEj.exit, label %.lr.ph.i, !llvm.loop !492

_ZZN7xgboost6linear21GreedyFeatureSelector11NextFeatureEPKNS_7ContextEiRKNS_3gbm13GBLinearModelEiRKSt6vectorINS_6detail20GradientPairInternalIfEESaISC_EEPNS_7DMatrixEffENKUljE_clEj.exit: ; preds = %bb.f, %_ZNK7xgboost18HostSparsePageViewixEm.exit.i
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond252.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count251
  br i1 %exitcond252.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !493

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !128, !noalias !494
  store i32 1, ptr %i.b, align 4, !tbaa !128, !noalias !494
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.g
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.165") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bi = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bi, ptr noundef nonnull @.str.41, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.i

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.bj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.j ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.43, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bm = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !15
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bn, i64 noundef %i.bp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %bb.at

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.i ], [ %i.bt, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn

end_hunk_1
