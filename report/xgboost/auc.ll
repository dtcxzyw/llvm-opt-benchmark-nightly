Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/auc?download=true
inline.NumInlined: 2442
inline.NumDeleted: 966
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7xgboost6common11ParallelForImZNS_6metric8MultiAUCIRFSt5tupleIJdddEEPKNS_7ContextENS0_4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEENS0_15OptionalWeightsEEEEdS8_SB_RKNS_8MetaInfoEmiNS2_12MultiAUCTypeEOT_EUlSM_E_EEvSM_iNS0_5SchedEOT0_:bb.a
bb.o:                                             ; preds = %.lr.ph89
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ac = icmp eq i64 %3, 0
  %.not98 = icmp eq i64 %0, 0                     ; 2 uses
  br i1 %i.ac, label %.preheader77, label %.preheader79

.preheader79:                                     ; preds = %bb.p
  br i1 %.not98, label %bb.w, label %.lr.ph85

.preheader77:                                     ; preds = %bb.p
  br i1 %.not98, label %bb.w, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader77, %bb.q
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
  %i.ag = ptrtoaddr ptr %i.af to i64              ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.af, i64 %i.ad ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !498, !nonnull !80
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !186
  %i.ak = icmp eq i8 %i.aj, 0
  %i.al = uitofp i64 %1 to float                  ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !499, !nonnull !80, !align !81 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !25 ; 8 uses
  br i1 %i.ak, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !180 ; 5 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %min.iters.check98 = icmp ult i64 %i.x, 20
  br i1 %min.iters.check98, label %scalar.ph97.preheader, label %vector.scevcheck84

vector.scevcheck84:                               ; preds = %.lr.ph.split.us
  %ident.check85 = icmp ne i64 %i.aa, 1
  %ident.check86 = icmp ne i64 %i.ao, 1
  %i.as = or i1 %ident.check85, %ident.check86
  br i1 %i.as, label %scalar.ph97.preheader, label %vector.memcheck87

vector.memcheck87:                                ; preds = %vector.scevcheck84
  %i.at = mul i64 %i.ac, %1
  %i.au = shl i64 %i.at, 2
  %i.av = add i64 %i.au, %i.ag
  %i.aw = sub i64 %i.av, %i.v
  %diff.check89 = icmp ugt i64 %i.aw, -16
  %i.ax = sub i64 %i.v, %i.ar
  %diff.check95 = icmp ugt i64 %i.ax, -16
  %conflict.rdx96 = or i1 %diff.check89, %diff.check95
  br i1 %conflict.rdx96, label %scalar.ph97.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck87
  %n.vec100 = and i64 %i.x, -4                    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.al, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next105, %vector.body101 ] ; 5 uses
  %i.ay = getelementptr [4 x i8], ptr %invariant.gep, i64 %index102
  %wide.load103 = load <4 x float>, ptr %i.ay, align 4, !tbaa !49
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %index102
  store <4 x float> %wide.load103, ptr %i.az, align 4, !tbaa !49
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index102
  %wide.load104 = load <4 x float>, ptr %i.ba, align 4, !tbaa !49
  %i.bb = fcmp oeq <4 x float> %wide.load104, %broadcast.splat
  %i.bc = uitofp <4 x i1> %i.bb to <4 x float>
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %index102
  store <4 x float> %i.bc, ptr %i.bd, align 4, !tbaa !49
  %index.next105 = add nuw i64 %index102, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next105, %n.vec100
  br i1 %i.be, label %middle.block106, label %vector.body101, !llvm.loop !489

middle.block106:                                  ; preds = %vector.body101
  %cmp.n107 = icmp eq i64 %i.x, %n.vec100
  br i1 %cmp.n107, label %._crit_edge.thread, label %scalar.ph97.preheader

scalar.ph97.preheader:                            ; preds = %vector.memcheck87, %vector.scevcheck84, %.lr.ph.split.us, %middle.block106
  %storemerge57.us.ph = phi i64 [ 0, %vector.memcheck87 ], [ 0, %vector.scevcheck84 ], [ 0, %.lr.ph.split.us ], [ %n.vec100, %middle.block106 ] ; 7 uses
  %.neg112 = or disjoint i64 %storemerge57.us.ph, 1
  %i.bf = and i64 %i.w, 4
  %lcmp.mod111.not = icmp eq i64 %i.bf, 0
  br i1 %lcmp.mod111.not, label %scalar.ph97.prol.loopexit, label %scalar.ph97.prol

scalar.ph97.prol:                                 ; preds = %scalar.ph97.preheader
  %i.bg = mul i64 %i.aa, %storemerge57.us.ph
  %gep.us.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bg
  %i.bh = load float, ptr %gep.us.prol, align 4, !tbaa !49
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %storemerge57.us.ph
  store float %i.bh, ptr %i.bi, align 4, !tbaa !49
  %i.bj = mul i64 %i.ao, %storemerge57.us.ph
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !49
  %i.bm = fcmp oeq float %i.bl, %i.al
  %i.bn = uitofp i1 %i.bm to float
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %storemerge57.us.ph
  store float %i.bn, ptr %i.bo, align 4, !tbaa !49
  %i.bp = or disjoint i64 %storemerge57.us.ph, 1
  br label %scalar.ph97.prol.loopexit

scalar.ph97.prol.loopexit:                        ; preds = %scalar.ph97.prol, %scalar.ph97.preheader
  %storemerge57.us.unr = phi i64 [ %storemerge57.us.ph, %scalar.ph97.preheader ], [ %i.bp, %scalar.ph97.prol ]
  %i.bq = icmp eq i64 %i.x, %.neg112
  br i1 %i.bq, label %._crit_edge.thread, label %scalar.ph97

scalar.ph97:                                      ; preds = %scalar.ph97.prol.loopexit, %scalar.ph97
  %storemerge57.us = phi i64 [ %i.ck, %scalar.ph97 ], [ %storemerge57.us.unr, %scalar.ph97.prol.loopexit ] ; 6 uses
  %i.br = mul i64 %i.aa, %storemerge57.us
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.br
  %i.bs = load float, ptr %gep.us, align 4, !tbaa !49
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %storemerge57.us
  store float %i.bs, ptr %i.bt, align 4, !tbaa !49
  %i.bu = mul i64 %i.ao, %storemerge57.us
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !49
  %i.bx = fcmp oeq float %i.bw, %i.al
  %i.by = uitofp i1 %i.bx to float
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %storemerge57.us
  store float %i.by, ptr %i.bz, align 4, !tbaa !49
  %i.ca = add nuw i64 %storemerge57.us, 1         ; 4 uses
  %i.cb = mul i64 %i.aa, %i.ca
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cb
  %i.cc = load float, ptr %gep.us.1, align 4, !tbaa !49
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %i.ca
  store float %i.cc, ptr %i.cd, align 4, !tbaa !49
  %i.ce = mul i64 %i.ao, %i.ca
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !49
  %i.ch = fcmp oeq float %i.cg, %i.al
  %i.ci = uitofp i1 %i.ch to float
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %i.ca
  store float %i.ci, ptr %i.cj, align 4, !tbaa !49
  %i.ck = add nuw i64 %storemerge57.us, 2         ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.ck, %i.x
  br i1 %exitcond64.not.1, label %._crit_edge.thread, label %scalar.ph97, !llvm.loop !490

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !25 ; 2 uses
  %i.cn = mul i64 %i.cm, %1
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !180 ; 2 uses
  %i.cq = ptrtoaddr ptr %i.cp to i64
  %invariant.gep60 = getelementptr [4 x i8], ptr %i.cp, i64 %i.cn ; 4 uses
  %min.iters.check = icmp ult i64 %i.x, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split
  %ident.check = icmp ne i64 %i.aa, 1
  %ident.check72 = icmp ne i64 %i.ao, 1
  %i.cr = or i1 %ident.check, %ident.check72
  br i1 %i.cr, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cs = mul i64 %i.ac, %1
  %i.ct = shl i64 %i.cs, 2
  %i.cu = add i64 %i.ct, %i.ag
  %i.cv = sub i64 %i.cu, %i.v
  %diff.check74 = icmp ugt i64 %i.cv, -32
  %i.cw = mul i64 %i.cm, %1
  %i.cx = shl i64 %i.cw, 2
  %i.cy = add i64 %i.cx, %i.cq
  %i.cz = sub i64 %i.v, %i.cy
  %diff.check79 = icmp ugt i64 %i.cz, -32
  %conflict.rdx80 = or i1 %diff.check74, %diff.check79
  br i1 %conflict.rdx80, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.da = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load = load <4 x float>, ptr %i.da, align 4, !tbaa !49
  %wide.load81 = load <4 x float>, ptr %i.db, align 4, !tbaa !49
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <4 x float> %wide.load, ptr %i.dc, align 4, !tbaa !49
  store <4 x float> %wide.load81, ptr %i.dd, align 4, !tbaa !49
  %i.de = getelementptr [4 x i8], ptr %invariant.gep60, i64 %index ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %wide.load82 = load <4 x float>, ptr %i.de, align 4, !tbaa !49
  %wide.load83 = load <4 x float>, ptr %i.df, align 4, !tbaa !49
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <4 x float> %wide.load82, ptr %i.dg, align 4, !tbaa !49
  store <4 x float> %wide.load83, ptr %i.dh, align 4, !tbaa !49
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !491

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split, %middle.block
  %storemerge57.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg = or disjoint i64 %storemerge57.ph, 1
  %i.dj = and i64 %i.w, 4
  %lcmp.mod.not = icmp eq i64 %i.dj, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dk = mul i64 %i.aa, %storemerge57.ph
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dk
  %i.dl = load float, ptr %gep.prol, align 4, !tbaa !49
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %storemerge57.ph
  store float %i.dl, ptr %i.dm, align 4, !tbaa !49
  %i.dn = mul i64 %i.ao, %storemerge57.ph
  %gep61.prol = getelementptr [4 x i8], ptr %invariant.gep60, i64 %i.dn
  %i.do = load float, ptr %gep61.prol, align 4, !tbaa !49
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %storemerge57.ph
  store float %i.do, ptr %i.dp, align 4, !tbaa !49
  %i.dq = or disjoint i64 %storemerge57.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %storemerge57.unr = phi i64 [ %storemerge57.ph, %scalar.ph.preheader ], [ %i.dq, %scalar.ph.prol ]
  %i.dr = icmp eq i64 %i.x, %.neg
  br i1 %i.dr, label %._crit_edge.thread, label %scalar.ph

._crit_edge.thread:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph97.prol.loopexit, %scalar.ph97, %middle.block, %middle.block106
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.ds = icmp ne ptr %.sroa.032.0, null          ; 2 uses
  %i.dt = icmp eq ptr %.0.i.i.i.i.i13, null
  %i.du = or i1 %i.ds, %i.dt
  br i1 %i.du, label %bb.f, label %bb.d, !prof !500

bb.d:                                             ; preds = %._crit_edge
  tail call void @_ZSt9terminatev() #35, !noalias !501
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit21

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %storemerge57 = phi i64 [ %i.ej, %scalar.ph ], [ %storemerge57.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dw = mul i64 %i.aa, %storemerge57
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dw
  %i.dx = load float, ptr %gep, align 4, !tbaa !49
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %storemerge57
  store float %i.dx, ptr %i.dy, align 4, !tbaa !49
  %i.dz = mul i64 %i.ao, %storemerge57
  %gep61 = getelementptr [4 x i8], ptr %invariant.gep60, i64 %i.dz
  %i.ea = load float, ptr %gep61, align 4, !tbaa !49
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %storemerge57
  store float %i.ea, ptr %i.eb, align 4, !tbaa !49
  %i.ec = add nuw i64 %storemerge57, 1            ; 4 uses
  %i.ed = mul i64 %i.aa, %i.ec
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ed
  %i.ee = load float, ptr %gep.1, align 4, !tbaa !49
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.sroa.040.0, i64 %i.ec
  store float %i.ee, ptr %i.ef, align 4, !tbaa !49
  %i.eg = mul i64 %i.ao, %i.ec
  %gep61.1 = getelementptr [4 x i8], ptr %invariant.gep60, i64 %i.eg
  %i.eh = load float, ptr %gep61.1, align 4, !tbaa !49
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.032.0, i64 %i.ec
  store float %i.eh, ptr %i.ei, align 4, !tbaa !49
  %i.ej = add nuw i64 %storemerge57, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ej, %i.x
  br i1 %exitcond.not.1, label %._crit_edge.thread, label %scalar.ph, !llvm.loop !494

bb.f:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ek = phi i1 [ true, %._crit_edge.thread ], [ %i.ds, %._crit_edge ] ; 2 uses
  %i.el = ptrtoint ptr %.sroa.032.0 to i64        ; 3 uses
  %i.em = ptrtoint ptr %.0.i.i.i.i.i13 to i64
  %i.en = sub i64 %i.em, %i.el
  %i.eo = ashr exact i64 %i.en, 2                 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !502, !nonnull !80, !align !81
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !160 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !503, !nonnull !80
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.eo, ptr %i.ew, align 8, !tbaa !50
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sroa.032.0, ptr %i.ex, align 8, !tbaa !52
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.sroa.032.0, ptr %i.ey, align 8, !tbaa !47
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.eo, ptr %i.ez, align 8, !tbaa !38
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %.sroa.0.0.copyload.i, ptr %i.fa, align 8
  store i64 1, ptr %3, align 8, !tbaa !25
  store i64 %i.eo, ptr %i.ev, align 8, !tbaa !25
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !504, !nonnull !80, !align !81
  invoke void %i.eu(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %2, ptr noundef nonnull %i.er, i64 %i.x, ptr %.sroa.040.0, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %3, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.fc)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !505, !nonnull !80, !align !81 ; 3 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !25
  %i.fg = mul i64 %i.ff, %1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !191 ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fg
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !506, !nonnull !80, !align !81 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !25
  %i.fn = mul i64 %i.fm, %1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !191
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fn
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !59
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !59
  store double %i.fu, ptr %i.fj, align 8, !tbaa !59
  %i.fv = load double, ptr %2, align 8, !tbaa !59
  store double %i.fv, ptr %i.fq, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.fw = load i64, ptr %i.fe, align 8, !tbaa !25
  %i.fx = mul i64 %i.fw, %1
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !59
  %i.ga = fmul double %i.fs, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !507, !nonnull !80, !align !81 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !25
  %i.ge = mul i64 %i.gd, %1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !191
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.ge
  store double %i.ga, ptr %i.gh, align 8, !tbaa !59
  br i1 %i.ek, label %bb.h, label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.gi = ptrtoint ptr %.sroa.13.0 to i64
  %i.gj = sub i64 %i.gi, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.0, i64 noundef %i.gj) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  %.not.i.i.i18 = icmp eq ptr %.sroa.040.0, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIfSaIfEED2Ev.exit19, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.gk = ptrtoint ptr %.sroa.1447.0 to i64
  %i.gl = sub i64 %i.gk, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0, i64 noundef %i.gl) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit19

_ZNSt6vectorIfSaIfEED2Ev.exit19:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.i
  ret void

bb.j:                                             ; preds = %bb.f
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br i1 %i.ek, label %bb.k, label %_ZNSt6vectorIfSaIfEED2Ev.exit21

bb.k:                                             ; preds = %bb.j
end_hunk_0
