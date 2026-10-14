Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/auc?download=true
inline.NumInlined: 2442
inline.NumDeleted: 966
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7xgboost6common11ParallelForImZNS_6metric8MultiAUCIRFSt5tupleIJdddEEPKNS_7ContextENS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEENS0_15OptionalWeightsEEEEdS8_SB_RKNS_8MetaInfoEmiNS2_12MultiAUCTypeEOT_EUlSM_E_EEvSM_iNS0_5SchedEOT0_:bb.a
  %.04186 = phi i64 [ %i.ad, %bb.q ], [ 0, %.preheader77 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6metric8MultiAUCIRFSt5tupleIJdddEEPKNS2_7ContextENS2_6common4SpanIKfLm18446744073709551615EEENS2_6linalg10TensorViewISC_Li1EEENSA_15OptionalWeightsEEEEdS9_SD_RKNS2_8MetaInfoEmiNS3_12MultiAUCTypeEOT_EUlSO_E_JmEEEvSO_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.176) align 8 %4, i64 noundef %.04186)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.lr.ph87
  %i.ad = add nuw i64 %.04186, 1                  ; 2 uses
  %exitcond109.not = icmp eq i64 %i.ad, %0
  br i1 %exitcond109.not, label %thread-pre-split125, label %.lr.ph87, !llvm.loop !485

bb.r:                                             ; preds = %.lr.ph87
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph85:                                         ; preds = %.preheader79, %bb.s
  %.04084 = phi i64 [ %i.af, %bb.s ], [ 0, %.preheader79 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6metric8MultiAUCIRFSt5tupleIJdddEEPKNS2_7ContextENS2_6common4SpanIKfLm18446744073709551615EEENS2_6linalg10TensorViewISC_Li1EEENSA_15OptionalWeightsEEEEdS9_SD_RKNS2_8MetaInfoEmiNS3_12MultiAUCTypeEOT_EUlSO_E_JmEEEvSO_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.176) align 8 %4, i64 noundef %.04084)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.lr.ph85
  %i.af = add nuw i64 %.04084, 1                  ; 2 uses
  %exitcond108.not = icmp eq i64 %i.af, %0
  br i1 %exitcond108.not, label %thread-pre-split125, label %.lr.ph85, !llvm.loop !486

bb.t:                                             ; preds = %.lr.ph85
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.preheader81, %bb.u
  %.083 = phi i64 [ %i.ah, %bb.u ], [ 0, %.preheader81 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6metric8MultiAUCIRFSt5tupleIJdddEEPKNS2_7ContextENS2_6common4SpanIKfLm18446744073709551615EEENS2_6linalg10TensorViewISC_Li1EEENSA_15OptionalWeightsEEEEdS9_SD_RKNS2_8MetaInfoEmiNS3_12MultiAUCTypeEOT_EUlSO_E_JmEEEvSO_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.176) align 8 %4, i64 noundef %.083)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.083, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %0
  br i1 %exitcond.not, label %thread-pre-split125, label %.lr.ph, !llvm.loop !487

bb.v:                                             ; preds = %.lr.ph
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

thread-pre-split125:                              ; preds = %bb.u, %bb.s, %bb.q, %bb.n, %bb.l, %bb.i
  %.pr71.pr = load ptr, ptr %8, align 8, !tbaa !94
  br label %bb.w

bb.w:                                             ; preds = %thread-pre-split125, %.preheader72, %.preheader73, %.preheader75, %.preheader77, %.preheader79, %.preheader81
  %.pr71 = phi ptr [ %.pr71.pr, %thread-pre-split125 ], [ null, %.preheader72 ], [ null, %.preheader73 ], [ null, %.preheader75 ], [ null, %.preheader77 ], [ null, %.preheader79 ], [ null, %.preheader81 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i64 = icmp eq ptr %.pr71, null
  br i1 %.not.i64, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.w
  store ptr %.pr71, ptr %5, align 8, !tbaa !94
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %5) #33
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.y:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !94
  %.not.i2.i = icmp eq ptr %i.ak, null
  br i1 %.not.i2.i, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  br label %.body

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %.thread, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph95, %.preheader, %_ZN4dmlc12OMPExceptionD2Ev.exit
  ret void

.body:                                            ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.r, %bb.o, %bb.m, %bb.j
  %.pn52 = phi { ptr, i32 } [ %i.ai, %bb.v ], [ %i.w, %bb.j ], [ %i.z, %bb.m ], [ %i.ab, %bb.o ], [ %i.ae, %bb.r ], [ %i.ag, %bb.t ], [ %i.aj, %bb.y ], [ %i.aj, %bb.z ]
  %i.al = load ptr, ptr %8, align 8, !tbaa !94
  %.not.i.i66 = icmp eq ptr %i.al, null
  br i1 %.not.i.i66, label %_ZN4dmlc12OMPExceptionD2Ev.exit68, label %bb.aa

bb.aa:                                            ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #11
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit68

_ZN4dmlc12OMPExceptionD2Ev.exit68:                ; preds = %.body, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit68, %bb.f
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZN4dmlc12OMPExceptionD2Ev.exit68 ], [ %.pn, %bb.f ]
  resume { ptr, i32 } %.pn52.pn

bb.ac:                                            ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6metric8MultiAUCIRFSt5tupleIJdddEEPKNS_7ContextENS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewIS9_Li1EEENS7_15OptionalWeightsEEEEdS6_SA_RKNS_8MetaInfoEmiNS0_12MultiAUCTypeEOT_ENKUlSL_E_clImEEDaSL_(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 8 uses
  %3 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !496, !nonnull !80, !align !81
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #33
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %.noexc8

.noexc8:                                          ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 2
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #34 ; 5 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !49
  %i.g = getelementptr i8, ptr %i.e, i64 4        ; 3 uses
  %i.h = add nsw i64 %i.b, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc8, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.1447.0 = phi ptr [ %i.f, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.f, %.noexc8 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.040.0 = phi ptr [ %i.e, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.e, %.noexc8 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 16 uses
  %.0.i.i.i.i.i = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.g, %.noexc8 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !496, !nonnull !80, !align !81
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25   ; 5 uses
  %i.m = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i9

bb.b:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #33
          to label %.noexc15 unwind label %bb.e

.noexc15:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i9: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i.i10 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i10, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit17, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i9
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #34
          to label %.noexc16 unwind label %bb.e   ; 5 uses

.noexc16:                                         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l ; 2 uses
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !49
  %i.q = getelementptr i8, ptr %i.o, i64 4        ; 3 uses
  %i.r = add nsw i64 %i.l, -1                     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit17, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i11

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i11: ; preds = %.noexc16
  %.idx.i.i.i.i.i.i.i12 = shl nuw nsw i64 %i.r, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i12, i1 false), !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i12
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit17

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit17:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i11, %.noexc16, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i9
  %.sroa.13.0 = phi ptr [ %i.p, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i11 ], [ %i.p, %.noexc16 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i9 ] ; 2 uses
  %.sroa.032.0 = phi ptr [ %i.o, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i11 ], [ %i.o, %.noexc16 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i9 ] ; 14 uses
  %.0.i.i.i.i.i13 = phi ptr [ %i.t, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i11 ], [ %i.q, %.noexc16 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i9 ] ; 2 uses
  %i.u = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.v = ptrtoint ptr %.sroa.040.0 to i64         ; 6 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = ashr exact i64 %i.w, 2                   ; 11 uses
  %.not = icmp eq ptr %.0.i.i.i.i.i, %.sroa.040.0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit17
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !497, !nonnull !80, !align !81 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !25  ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !25 ; 3 uses
  %i.ad = mul i64 %i.ac, %1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !180 ; 2 uses
  %4 = ptrtoaddr ptr %i.af to i64                 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.af, i64 %i.ad ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !498, !nonnull !80
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186
  %i.aj = icmp eq i8 %i.ai, 0
  %i.ak = uitofp i64 %1 to float                  ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !499, !nonnull !80, !align !81 ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !25 ; 8 uses
  br i1 %i.aj, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !180 ; 5 uses
  %5 = ptrtoaddr ptr %i.ap to i64
  %min.iters.check85 = icmp ult i64 %i.x, 20
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.scevcheck77

vector.scevcheck77:                               ; preds = %.lr.ph.split.us
  %ident.check78 = icmp ne i64 %i.aa, 1
  %ident.check79 = icmp ne i64 %i.an, 1
  %i.aq = or i1 %ident.check78, %ident.check79
  br i1 %i.aq, label %scalar.ph84.preheader, label %vector.memcheck80

vector.memcheck80:                                ; preds = %vector.scevcheck77
  %i.ar = mul i64 %i.ac, %1
  %i.as = shl i64 %i.ar, 2
  %i.at = add i64 %i.as, %4
  %i.au = sub i64 %i.at, %i.v
  %diff.check81 = icmp ugt i64 %i.au, -16
  %i.av = sub i64 %i.v, %5
  %diff.check82 = icmp ugt i64 %i.av, -16
  %conflict.rdx83 = or i1 %diff.check81, %diff.check82
  br i1 %conflict.rdx83, label %scalar.ph84.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck80
  %n.vec87 = and i64 %i.x, -4                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ak, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next92, %vector.body88 ] ; 5 uses
  %i.aw = getelementptr [4 x i8], ptr %invariant.gep, i64 %index89
  %wide.load90 = load <4 x float>, ptr %i.aw, align 4, !tbaa !49
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %index89
  store <4 x float> %wide.load90, ptr %i.ax, align 4, !tbaa !49
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index89
  %wide.load91 = load <4 x float>, ptr %i.ay, align 4, !tbaa !49
  %i.az = fcmp oeq <4 x float> %wide.load91, %broadcast.splat
  %i.ba = uitofp <4 x i1> %i.az to <4 x float>
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %index89
  store <4 x float> %i.ba, ptr %i.bb, align 4, !tbaa !49
  %index.next92 = add nuw i64 %index89, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.bc, label %middle.block93, label %vector.body88, !llvm.loop !489

middle.block93:                                   ; preds = %vector.body88
  %cmp.n94 = icmp eq i64 %i.x, %n.vec87
  br i1 %cmp.n94, label %._crit_edge.thread, label %scalar.ph84.preheader

scalar.ph84.preheader:                            ; preds = %vector.memcheck80, %vector.scevcheck77, %.lr.ph.split.us, %middle.block93
  %storemerge57.us.ph = phi i64 [ 0, %vector.memcheck80 ], [ 0, %vector.scevcheck77 ], [ 0, %.lr.ph.split.us ], [ %n.vec87, %middle.block93 ] ; 7 uses
  %.neg99 = or disjoint i64 %storemerge57.us.ph, 1
  %i.bd = and i64 %i.w, 4
  %lcmp.mod98.not = icmp eq i64 %i.bd, 0
  br i1 %lcmp.mod98.not, label %scalar.ph84.prol.loopexit, label %scalar.ph84.prol

scalar.ph84.prol:                                 ; preds = %scalar.ph84.preheader
  %i.be = mul i64 %i.aa, %storemerge57.us.ph
  %gep.us.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.be
  %i.bf = load float, ptr %gep.us.prol, align 4, !tbaa !49
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %storemerge57.us.ph
  store float %i.bf, ptr %i.bg, align 4, !tbaa !49
  %i.bh = mul i64 %i.an, %storemerge57.us.ph
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !49
  %i.bk = fcmp oeq float %i.bj, %i.ak
  %i.bl = uitofp i1 %i.bk to float
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %storemerge57.us.ph
  store float %i.bl, ptr %i.bm, align 4, !tbaa !49
  %i.bn = or disjoint i64 %storemerge57.us.ph, 1
  br label %scalar.ph84.prol.loopexit

scalar.ph84.prol.loopexit:                        ; preds = %scalar.ph84.prol, %scalar.ph84.preheader
  %storemerge57.us.unr = phi i64 [ %storemerge57.us.ph, %scalar.ph84.preheader ], [ %i.bn, %scalar.ph84.prol ]
  %i.bo = icmp eq i64 %i.x, %.neg99
  br i1 %i.bo, label %._crit_edge.thread, label %scalar.ph84

scalar.ph84:                                      ; preds = %scalar.ph84.prol.loopexit, %scalar.ph84
  %storemerge57.us = phi i64 [ %i.ci, %scalar.ph84 ], [ %storemerge57.us.unr, %scalar.ph84.prol.loopexit ] ; 6 uses
  %i.bp = mul i64 %i.aa, %storemerge57.us
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bp
  %i.bq = load float, ptr %gep.us, align 4, !tbaa !49
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %storemerge57.us
  store float %i.bq, ptr %i.br, align 4, !tbaa !49
  %i.bs = mul i64 %i.an, %storemerge57.us
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !49
  %i.bv = fcmp oeq float %i.bu, %i.ak
  %i.bw = uitofp i1 %i.bv to float
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %storemerge57.us
  store float %i.bw, ptr %i.bx, align 4, !tbaa !49
  %i.by = add nuw i64 %storemerge57.us, 1         ; 4 uses
  %i.bz = mul i64 %i.aa, %i.by
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bz
  %i.ca = load float, ptr %gep.us.1, align 4, !tbaa !49
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %i.by
  store float %i.ca, ptr %i.cb, align 4, !tbaa !49
  %i.cc = mul i64 %i.an, %i.by
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !49
  %i.cf = fcmp oeq float %i.ce, %i.ak
  %i.cg = uitofp i1 %i.cf to float
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %i.by
  store float %i.cg, ptr %i.ch, align 4, !tbaa !49
  %i.ci = add nuw i64 %storemerge57.us, 2         ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.ci, %i.x
  br i1 %exitcond64.not.1, label %._crit_edge.thread, label %scalar.ph84, !llvm.loop !490

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cj = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !25 ; 2 uses
  %i.cl = mul i64 %i.ck, %1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !180 ; 2 uses
  %6 = ptrtoaddr ptr %i.cn to i64
  %invariant.gep60 = getelementptr [4 x i8], ptr %i.cn, i64 %i.cl ; 4 uses
  %min.iters.check = icmp ult i64 %i.x, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split
  %ident.check = icmp ne i64 %i.aa, 1
  %ident.check72 = icmp ne i64 %i.an, 1
  %i.co = or i1 %ident.check, %ident.check72
  br i1 %i.co, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cp = mul i64 %i.ac, %1
  %i.cq = shl i64 %i.cp, 2
  %i.cr = add i64 %i.cq, %4
  %i.cs = sub i64 %i.cr, %i.v
  %diff.check = icmp ugt i64 %i.cs, -32
  %i.ct = mul i64 %i.ck, %1
  %i.cu = shl i64 %i.ct, 2
  %i.cv = add i64 %i.cu, %6
  %i.cw = sub i64 %i.v, %i.cv
  %diff.check73 = icmp ugt i64 %i.cw, -32
  %conflict.rdx = or i1 %diff.check, %diff.check73
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.cx = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %wide.load = load <4 x float>, ptr %i.cx, align 4, !tbaa !49
  %wide.load74 = load <4 x float>, ptr %i.cy, align 4, !tbaa !49
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x float> %wide.load, ptr %i.cz, align 4, !tbaa !49
  store <4 x float> %wide.load74, ptr %i.da, align 4, !tbaa !49
  %i.db = getelementptr [4 x i8], ptr %invariant.gep60, i64 %index ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %wide.load75 = load <4 x float>, ptr %i.db, align 4, !tbaa !49
  %wide.load76 = load <4 x float>, ptr %i.dc, align 4, !tbaa !49
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <4 x float> %wide.load75, ptr %i.dd, align 4, !tbaa !49
  store <4 x float> %wide.load76, ptr %i.de, align 4, !tbaa !49
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !491

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split, %middle.block
  %storemerge57.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg = or disjoint i64 %storemerge57.ph, 1
  %i.dg = and i64 %i.w, 4
  %lcmp.mod.not = icmp eq i64 %i.dg, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dh = mul i64 %i.aa, %storemerge57.ph
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dh
  %i.di = load float, ptr %gep.prol, align 4, !tbaa !49
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %storemerge57.ph
  store float %i.di, ptr %i.dj, align 4, !tbaa !49
  %i.dk = mul i64 %i.an, %storemerge57.ph
  %gep61.prol = getelementptr [4 x i8], ptr %invariant.gep60, i64 %i.dk
  %i.dl = load float, ptr %gep61.prol, align 4, !tbaa !49
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %storemerge57.ph
  store float %i.dl, ptr %i.dm, align 4, !tbaa !49
  %i.dn = or disjoint i64 %storemerge57.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %storemerge57.unr = phi i64 [ %storemerge57.ph, %scalar.ph.preheader ], [ %i.dn, %scalar.ph.prol ]
  %i.do = icmp eq i64 %i.x, %.neg
  br i1 %i.do, label %._crit_edge.thread, label %scalar.ph

._crit_edge.thread:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph84.prol.loopexit, %scalar.ph84, %middle.block, %middle.block93
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.dp = icmp ne ptr %.sroa.032.0, null          ; 2 uses
  %i.dq = icmp eq ptr %.0.i.i.i.i.i13, null
  %i.dr = or i1 %i.dp, %i.dq
  br i1 %i.dr, label %bb.f, label %bb.d, !prof !500

bb.d:                                             ; preds = %._crit_edge
  tail call void @_ZSt9terminatev() #35, !noalias !501
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit21

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %storemerge57 = phi i64 [ %i.eg, %scalar.ph ], [ %storemerge57.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dt = mul i64 %i.aa, %storemerge57
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dt
  %i.du = load float, ptr %gep, align 4, !tbaa !49
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %storemerge57
  store float %i.du, ptr %i.dv, align 4, !tbaa !49
  %i.dw = mul i64 %i.an, %storemerge57
  %gep61 = getelementptr [4 x i8], ptr %invariant.gep60, i64 %i.dw
  %i.dx = load float, ptr %gep61, align 4, !tbaa !49
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %storemerge57
  store float %i.dx, ptr %i.dy, align 4, !tbaa !49
  %i.dz = add nuw i64 %storemerge57, 1            ; 4 uses
  %i.ea = mul i64 %i.aa, %i.dz
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ea
  %i.eb = load float, ptr %gep.1, align 4, !tbaa !49
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %i.dz
  store float %i.eb, ptr %i.ec, align 4, !tbaa !49
  %i.ed = mul i64 %i.an, %i.dz
  %gep61.1 = getelementptr [4 x i8], ptr %invariant.gep60, i64 %i.ed
  %i.ee = load float, ptr %gep61.1, align 4, !tbaa !49
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %i.dz
  store float %i.ee, ptr %i.ef, align 4, !tbaa !49
  %i.eg = add nuw i64 %storemerge57, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.eg, %i.x
  br i1 %exitcond.not.1, label %._crit_edge.thread, label %scalar.ph, !llvm.loop !494

bb.f:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.eh = phi i1 [ true, %._crit_edge.thread ], [ %i.dp, %._crit_edge ] ; 2 uses
  %i.ei = ptrtoint ptr %.sroa.032.0 to i64        ; 3 uses
  %i.ej = ptrtoint ptr %.0.i.i.i.i.i13 to i64
  %i.ek = sub i64 %i.ej, %i.ei
  %i.el = ashr exact i64 %i.ek, 2                 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !502, !nonnull !80, !align !81
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !160 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !503, !nonnull !80
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.el, ptr %i.et, align 8, !tbaa !50
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sroa.032.0, ptr %i.eu, align 8, !tbaa !52
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.sroa.032.0, ptr %i.ev, align 8, !tbaa !47
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.el, ptr %i.ew, align 8, !tbaa !38
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %.sroa.0.0.copyload.i, ptr %i.ex, align 8
  store i64 1, ptr %3, align 8, !tbaa !25
  store i64 %i.el, ptr %i.es, align 8, !tbaa !25
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !504, !nonnull !80, !align !81
  invoke void %i.er(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %2, ptr noundef nonnull %i.eo, i64 %i.x, ptr %.sroa.040.0, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.ez)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !505, !nonnull !80, !align !81 ; 3 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !25
  %i.fd = mul i64 %i.fc, %1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !191 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !506, !nonnull !80, !align !81 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !25
  %i.fk = mul i64 %i.fj, %1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !191
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !59
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !59
  store double %i.fr, ptr %i.fg, align 8, !tbaa !59
  %i.fs = load double, ptr %2, align 8, !tbaa !59
  store double %i.fs, ptr %i.fn, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.ft = load i64, ptr %i.fb, align 8, !tbaa !25
  %i.fu = mul i64 %i.ft, %1
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fu
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !59
  %i.fx = fmul double %i.fp, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !507, !nonnull !80, !align !81 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !25
  %i.gb = mul i64 %i.ga, %1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !191
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gb
  store double %i.fx, ptr %i.ge, align 8, !tbaa !59
  br i1 %i.eh, label %bb.h, label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.gf = ptrtoint ptr %.sroa.13.0 to i64
  %i.gg = sub i64 %i.gf, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.0, i64 noundef %i.gg) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  %.not.i.i.i18 = icmp eq ptr %.sroa.040.0, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIfSaIfEED2Ev.exit19, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.gh = ptrtoint ptr %.sroa.1447.0 to i64
  %i.gi = sub i64 %i.gh, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0, i64 noundef %i.gi) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit19

_ZNSt6vectorIfSaIfEED2Ev.exit19:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.i
  ret void

bb.j:                                             ; preds = %bb.f
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
end_hunk_0
