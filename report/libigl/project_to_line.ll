Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/project_to_line?download=true
inline.NumInlined: 4614
inline.NumDeleted: 2498
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_15project_to_lineIN5Eigen5BlockIKNS8_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENSA_IdLi1ELin1ELi1ELi1ELin1EEESE_NSA_IdLin1ELi1ELi0ELin1ELi1EEESF_EEvRKNS8_10MatrixBaseIT_EERKNSG_IT0_EERKNSG_IT1_EERNS8_15PlainObjectBaseIT2_EERNST_IT3_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS6_IiS10_EEbSH_S12_mEUlimE_S13_EEbSH_S12_RKSP_RKSU_mEUliimE_RiRKiRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_15project_to_lineIN5Eigen5BlockIKNS7_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS9_IdLi1ELin1ELi1ELi1ELin1EEESD_NS9_IdLin1ELi1ELi0ELin1ELi1EEESE_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EERNS7_15PlainObjectBaseIT2_EERNSS_IT3_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiSZ_EEbSG_S11_mEUlimE_S12_EEbSG_S11_RKSO_RKST_mEUliimE_iimEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !100
  store i64 %i.t, ptr %i.s, align 8, !tbaa !106
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i32, ptr %4, align 4, !tbaa !78
  store i32 %i.v, ptr %i.u, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.x = load i32, ptr %3, align 4, !tbaa !78
  store i32 %i.x, ptr %i.w, align 4, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load i64, ptr %2, align 8, !tbaa !41
  store i64 %i.z, ptr %i.y, align 8, !tbaa !41
  store ptr %i.r, ptr %6, align 8, !tbaa !112
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !112   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #21, !inline_history !9
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !112   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #21, !inline_history !9
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !100, !alias.scope !389
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !100, !alias.scope !388
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !100, !alias.scope !389
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.al, %.lr.ph.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.ap, %.lr.ph.i.i.i30 ], [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.ao, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.an = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !100, !alias.scope !391
  store i64 %i.an, ptr %.012.i.i.i31, align 8, !tbaa !100, !alias.scope !390
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !100, !alias.scope !391
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ap, %.lr.ph.i.i.i30 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #26
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !98
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !99
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !101
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #21 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #22
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aw

bb.k:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #24
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_15project_to_lineIN5Eigen5BlockIKNS3_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS5_IdLi1ELi2ELi1ELi1ELi2EEES9_NS5_IdLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS3_10MatrixBaseIT_EERKNSB_IT0_EERKNSB_IT1_EERNS3_15PlainObjectBaseIT2_EERNSO_IT3_EEEUliE_EEbSC_RKSG_mEUlmE_ZNS1_IiSV_EEbSC_SX_mEUlimE_SY_EEbSC_SX_RKSK_RKSP_m(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.214.i.i = alloca <2 x double>, align 16  ; 5 uses
  %.sroa.516.i.i = alloca <2 x double>, align 16  ; 5 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %class.anon.687, align 8            ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !78
  %i.e = icmp eq i32 %0, 0
  br i1 %i.e, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = sext i32 %0 to i64
  %i.i = icmp ule i64 %4, %i.h
  %i.j = icmp ugt i32 %i.f, 1
  %or.cond.not = and i1 %i.j, %i.i
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  %i.k = icmp sgt i32 %0, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57
  %i.l = load ptr, ptr %2, align 8, !tbaa !136, !nonnull !81, !align !82 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !138, !nonnull !81 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140, !noalias !401
  %.sroa.9.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !141, !nonnull !81 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !142, !nonnull !81, !align !143
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !144, !nonnull !81, !align !82
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !145, !nonnull !81, !align !82
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !146, !nonnull !81
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !147, !nonnull !81, !align !82
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !65
  %wide.trip.count = zext nneg i32 %0 to i64
  %.sroa.214.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.214.i.i, i64 8
  %.sroa.516.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.516.i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv ; 3 uses
  %.sroa.9.24.copyload.i.i = load ptr, ptr %.sroa.9.24..sroa_idx.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.9.24.copyload.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !149
  %i.af = load double, ptr %i.ac, align 8, !tbaa !30
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !30
  %i.ai = load <2 x double>, ptr %i.p, align 8, !tbaa !30
  %i.aj = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ah, i64 1
  %i.al = fsub <2 x double> %i.ai, %i.ak
  %i.am = load <2 x double>, ptr %i.r, align 16, !tbaa !42
  %i.an = fmul <2 x double> %i.am, %i.al
  %7 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.an)
  %i.ao = fneg double %7
  %i.ap = load double, ptr %i.t, align 8, !tbaa !30
  %i.aq = fdiv double %i.ao, %i.ap                ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  store double %i.aq, ptr %i.ar, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.214.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.i)
  %i.as = fsub double 1.000000e+00, %i.aq
  store double %i.as, ptr %.sroa.214.i.i, align 16, !tbaa !151, !alias.scope !402
  store ptr %i.p, ptr %.sroa.214.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !70, !alias.scope !402
  store double %i.aq, ptr %.sroa.516.i.i, align 16, !tbaa !151, !alias.scope !402
  store ptr %i.y, ptr %.sroa.516.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !70, !alias.scope !402
  %.sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.0..sroa.214.i.0..sroa.214.0..sroa.214.0..sroa.214.24..i.i = load <2 x double>, ptr %.sroa.214.i.i, align 16 ; 2 uses
  %bc.i.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.0..sroa.214.i.0..sroa.214.0..sroa.214.0..sroa.214.24..i.i to <2 x i64>
  %i.at = extractelement <2 x i64> %bc.i.i.i.i.i.i.i.i, i64 1
  %i.au = inttoptr i64 %i.at to ptr
  %.sroa.516.i.i.0..sroa.516.i.i.0..sroa.516.i.i.0..sroa.516.i.0..sroa.516.i.0..sroa.516.0..sroa.516.0..sroa.516.64..i.i = load <2 x double>, ptr %.sroa.516.i.i, align 16 ; 2 uses
  %bc16.i.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.516.i.i.0..sroa.516.i.i.0..sroa.516.i.i.0..sroa.516.i.0..sroa.516.i.0..sroa.516.0..sroa.516.0..sroa.516.64..i.i to <2 x i64>
  %i.av = extractelement <2 x i64> %bc16.i.i.i.i.i.i.i.i, i64 1
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = shufflevector <2 x double> %.sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.0..sroa.214.i.0..sroa.214.0..sroa.214.0..sroa.214.24..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = load <2 x double>, ptr %i.au, align 16, !tbaa !42
  %i.az = fmul <2 x double> %i.ax, %i.ay
  %i.ba = shufflevector <2 x double> %.sroa.516.i.i.0..sroa.516.i.i.0..sroa.516.i.i.0..sroa.516.i.0..sroa.516.i.0..sroa.516.0..sroa.516.0..sroa.516.64..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = load <2 x double>, ptr %i.aw, align 16, !tbaa !42
  %i.bc = fmul <2 x double> %i.ba, %i.bb
  %i.bd = fadd <2 x double> %i.az, %i.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.214.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.i.i)
  %i.be = load double, ptr %i.ac, align 8, !tbaa !30
  %i.bf = load double, ptr %i.ag, align 8, !tbaa !30
  %i.bg = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.bf, i64 1
  %i.bi = fsub <2 x double> %i.bh, %i.bd          ; 2 uses
  %i.bj = fmul <2 x double> %i.bi, %i.bi
  %i.bk = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bj)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  store double %i.bk, ptr %i.bl, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit58, label %bb.c, !llvm.loop !396

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.bm = add nsw i32 %0, 1
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = uitofp i32 %i.f to double
  %i.bp = fdiv double %i.bn, %i.bo
  %i.bq = tail call double @llvm.round.f64(double %i.bp)
  %i.br = fptosi double %i.bq to i32
  %.sroa.speculated51 = tail call i32 @llvm.smax.i32(i32 %i.br, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %2, ptr %5, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bu = shl nuw nsw i64 %i.g, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #25
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.bw = load ptr, ptr %6, align 8, !tbaa !98    ; 5 uses
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !99 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bv, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i ], [ %i.bw, %.noexc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.by = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !100, !alias.scope !404
  store i64 %i.by, ptr %.012.i.i.i.i, align 8, !tbaa !100, !alias.scope !403
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !100, !alias.scope !404
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bz, %i.bx
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.bw, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !101
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bw to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ce) #26
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.bv, ptr %6, align 8, !tbaa !98
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !99
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.g
  store ptr %i.cf, ptr %i.bs, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %.sroa.speculated47 = tail call i32 @llvm.smin.i32(i32 %0, i32 %.sroa.speculated51)
  store i32 %.sroa.speculated47, ptr %i.c, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i64 0, ptr %i.d, align 8, !tbaa !100
  %i.cg = icmp sgt i32 %0, 0
  br i1 %i.cg, label %.lr.ph61, label %._crit_edge.thread

.lr.ph61:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.e
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_15project_to_lineIN5Eigen5BlockIKNS8_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENSA_IdLi1ELi2ELi1ELi1ELi2EEESE_NSA_IdLin1ELi1ELi0ELin1ELi1EEESF_EEvRKNS8_10MatrixBaseIT_EERKNSG_IT0_EERKNSG_IT1_EERNS8_15PlainObjectBaseIT2_EERNST_IT3_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS6_IiS10_EEbSH_S12_mEUlimE_S13_EEbSH_S12_RKSP_RKSU_mEUliimE_RiS1C_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %.loopexit  ; 0 uses

bb.e:                                             ; preds = %.lr.ph61
  %i.ci = load i32, ptr %i.c, align 4, !tbaa !78  ; 3 uses
  store i32 %i.ci, ptr %i.b, align 4, !tbaa !78
  %i.cj = add nsw i32 %i.ci, %.sroa.speculated51
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %0, i32 %i.cj)
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !78
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.d, align 8, !tbaa !100
  %i.cm = add i64 %i.ck, 2
  %i.cn = icmp ult i64 %i.cm, %i.g
  %i.co = icmp slt i32 %i.ci, %0                  ; 2 uses
  %i.cp = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %i.cp, label %.lr.ph61, label %._crit_edge, !llvm.loop !400

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit:                                        ; preds = %.lr.ph61
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.o

._crit_edge:                                      ; preds = %bb.e
  br i1 %i.co, label %bb.h, label %._crit_edge.thread

bb.h:                                             ; preds = %._crit_edge
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_15project_to_lineIN5Eigen5BlockIKNS8_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENSA_IdLi1ELi2ELi1ELi1ELi2EEESE_NSA_IdLin1ELi1ELi0ELin1ELi1EEESF_EEvRKNS8_10MatrixBaseIT_EERKNSG_IT0_EERKNSG_IT1_EERNS8_15PlainObjectBaseIT2_EERNST_IT3_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS6_IiS10_EEbSH_S12_mEUlimE_S13_EEbSH_S12_RKSP_RKSU_mEUliimE_RiRKiRmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._crit_edge.thread unwind label %.loopexit.split-lp ; 0 uses

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %i.cs = load ptr, ptr %6, align 8, !tbaa !102   ; 3 uses
  %i.ct = load ptr, ptr %i.bt, align 8, !tbaa !102 ; 2 uses
  %.not62 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not62, label %.preheader.thread, label %.lr.ph65

.preheader.thread:                                ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i

.preheader:                                       ; preds = %bb.k
  %.pre = load ptr, ptr %6, align 8, !tbaa !98    ; 4 uses
  %.pre68 = load ptr, ptr %i.bt, align 8, !tbaa !99 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre68
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

.lr.ph65:                                         ; preds = %._crit_edge.thread, %bb.k
  %.sroa.042.063 = phi ptr [ %i.cv, %bb.k ], [ %i.cs, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.042.063, align 8, !tbaa !100
  %.not56 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not56, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph65
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.042.063)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %bb.i, %.lr.ph65
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.042.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cv, %i.ct
  br i1 %.not, label %.preheader, label %.lr.ph65

bb.l:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cw, %.pre68
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !1

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.preheader, %bb.l
  %.05.i.i.i = phi ptr [ %i.cw, %bb.l ], [ %.pre, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !100
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_15project_to_lineIN5Eigen5BlockIKNS8_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENSA_IdLi1ELi2ELi1ELi1ELi2EEESE_NSA_IdLin1ELi1ELi0ELin1ELi1EEESF_EEvRKNS8_10MatrixBaseIT_EERKNSG_IT0_EERKNSG_IT1_EERNS8_15PlainObjectBaseIT2_EERNST_IT3_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS6_IiS10_EEbSH_S12_mEUlimE_S13_EEbSH_S12_RKSP_RKSU_mEUliimE_RiS1C_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !104
  %i.r = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_15project_to_lineIN5Eigen5BlockIKNS7_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS9_IdLi1ELi2ELi1ELi1ELi2EEESD_NS9_IdLin1ELi1ELi0ELin1ELi1EEESE_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EERNS7_15PlainObjectBaseIT2_EERNSS_IT3_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiSZ_EEbSG_S11_mEUlimE_S12_EEbSG_S11_RKSO_RKST_mEUliimE_iimEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !100
  store i64 %i.t, ptr %i.s, align 8, !tbaa !106
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i32, ptr %4, align 4, !tbaa !78
  store i32 %i.v, ptr %i.u, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.x = load i32, ptr %3, align 4, !tbaa !78
  store i32 %i.x, ptr %i.w, align 4, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load i64, ptr %2, align 8, !tbaa !41
  store i64 %i.z, ptr %i.y, align 8, !tbaa !41
  store ptr %i.r, ptr %6, align 8, !tbaa !112
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !112   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #21, !inline_history !10
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !112   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #21, !inline_history !10
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !100, !alias.scope !412
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !100, !alias.scope !411
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !100, !alias.scope !412
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.al, %.lr.ph.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.ap, %.lr.ph.i.i.i30 ], [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.ao, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.an = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !100, !alias.scope !414
  store i64 %i.an, ptr %.012.i.i.i31, align 8, !tbaa !100, !alias.scope !413
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !100, !alias.scope !414
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ap, %.lr.ph.i.i.i30 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #26
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !98
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !99
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !101
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #21 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #22
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aw

bb.k:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #24
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_15project_to_lineIN5Eigen5BlockIKNS7_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS9_IdLi1ELi2ELi1ELi1ELi2EEESD_NS9_IdLin1ELi1ELi0ELin1ELi1EEESE_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EERNS7_15PlainObjectBaseIT2_EERNSS_IT3_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiSZ_EEbSG_S11_mEUlimE_S12_EEbSG_S11_RKSO_RKST_mEUliimE_iimEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_15project_to_lineIN5Eigen5BlockIKNS7_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS9_IdLi1ELi2ELi1ELi1ELi2EEESD_NS9_IdLin1ELi1ELi0ELin1ELi1EEESE_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EERNS7_15PlainObjectBaseIT2_EERNSS_IT3_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiSZ_EEbSG_S11_mEUlimE_S12_EEbSG_S11_RKSO_RKST_mEUliimE_iimEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.214.i.i.i.i.i.i.i = alloca <2 x double>, align 16 ; 5 uses
  %.sroa.516.i.i.i.i.i.i.i = alloca <2 x double>, align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.a, align 4, !tbaa !78   ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %i.e = icmp slt i32 %i.c, %i.d
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS2_12parallel_forIiZNS2_15project_to_lineIN5Eigen5BlockIKNS6_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS8_IdLi1ELi2ELi1ELi1ELi2EEESC_NS8_IdLin1ELi1ELi0ELin1ELi1EEESD_EEvRKNS6_10MatrixBaseIT_EERKNSE_IT0_EERKNSE_IT1_EERNS6_15PlainObjectBaseIT2_EERNSR_IT3_EEEUliE_EEbSF_RKSJ_mEUlmE_ZNS4_IiSY_EEbSF_S10_mEUlimE_S11_EEbSF_S10_RKSN_RKSS_mEUliimE_iimEEEclEv.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !421, !nonnull !81, !align !82
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !136, !nonnull !81, !align !82 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !138, !nonnull !81 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140, !noalias !422
  %.sroa.9.24..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !141, !nonnull !81 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !142, !nonnull !81, !align !143
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !144, !nonnull !81, !align !82
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !145, !nonnull !81, !align !82
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !146, !nonnull !81
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !147, !nonnull !81, !align !82
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65
  %i.y = sext i32 %i.c to i64
  %wide.trip.count.i.i.i.i.i = sext i32 %i.d to i64
  %.sroa.214.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.214.i.i.i.i.i.i.i, i64 8
  %.sroa.516.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.516.i.i.i.i.i.i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.b ] ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv.i.i.i.i.i ; 3 uses
  %.sroa.9.24.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.9.24..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.9.24.copyload.i.i.i.i.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !149
  %i.ac = load double, ptr %i.z, align 8, !tbaa !30
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !30
  %i.af = load <2 x double>, ptr %i.l, align 8, !tbaa !30
  %i.ag = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.ae, i64 1
  %i.ai = fsub <2 x double> %i.af, %i.ah
  %i.aj = load <2 x double>, ptr %i.n, align 16, !tbaa !42
  %i.ak = fmul <2 x double> %i.aj, %i.ai
  %1 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ak)
  %i.al = fneg double %1
  %i.am = load double, ptr %i.p, align 8, !tbaa !30
  %i.an = fdiv double %i.al, %i.am                ; 3 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i.i
  store double %i.an, ptr %i.ao, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.214.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.i.i.i.i.i.i)
  %i.ap = fsub double 1.000000e+00, %i.an
  store double %i.ap, ptr %.sroa.214.i.i.i.i.i.i.i, align 16, !tbaa !151, !alias.scope !423
  store ptr %i.l, ptr %.sroa.214.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !70, !alias.scope !423
  store double %i.an, ptr %.sroa.516.i.i.i.i.i.i.i, align 16, !tbaa !151, !alias.scope !423
  store ptr %i.u, ptr %.sroa.516.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !70, !alias.scope !423
  %.sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.0..sroa.214.i.i.i.i.i.0..sroa.214.i.i.i.i.0..sroa.214.i.i.i.i.0..sroa.214.i.i.i.0..sroa.214.i.i.i.0..sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.0..sroa.214.i.0..sroa.214.0..sroa.214.0..sroa.214.24..i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.214.i.i.i.i.i.i.i, align 16 ; 2 uses
  %bc.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.0..sroa.214.i.i.i.i.i.0..sroa.214.i.i.i.i.0..sroa.214.i.i.i.i.0..sroa.214.i.i.i.0..sroa.214.i.i.i.0..sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.0..sroa.214.i.0..sroa.214.0..sroa.214.0..sroa.214.24..i.i.i.i.i.i.i to <2 x i64>
  %i.aq = extractelement <2 x i64> %bc.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.ar = inttoptr i64 %i.aq to ptr
  %.sroa.516.i.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.0..sroa.516.i.i.i.i.i.0..sroa.516.i.i.i.i.0..sroa.516.i.i.i.i.0..sroa.516.i.i.i.0..sroa.516.i.i.i.0..sroa.516.i.i.0..sroa.516.i.i.0..sroa.516.i.0..sroa.516.i.0..sroa.516.0..sroa.516.0..sroa.516.64..i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.516.i.i.i.i.i.i.i, align 16 ; 2 uses
  %bc16.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.516.i.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.0..sroa.516.i.i.i.i.i.0..sroa.516.i.i.i.i.0..sroa.516.i.i.i.i.0..sroa.516.i.i.i.0..sroa.516.i.i.i.0..sroa.516.i.i.0..sroa.516.i.i.0..sroa.516.i.0..sroa.516.i.0..sroa.516.0..sroa.516.0..sroa.516.64..i.i.i.i.i.i.i to <2 x i64>
  %i.as = extractelement <2 x i64> %bc16.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = shufflevector <2 x double> %.sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.0..sroa.214.i.i.i.i.i.0..sroa.214.i.i.i.i.0..sroa.214.i.i.i.i.0..sroa.214.i.i.i.0..sroa.214.i.i.i.0..sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.0..sroa.214.i.0..sroa.214.0..sroa.214.0..sroa.214.24..i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = load <2 x double>, ptr %i.ar, align 16, !tbaa !42
  %i.aw = fmul <2 x double> %i.au, %i.av
  %i.ax = shufflevector <2 x double> %.sroa.516.i.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.i.0..sroa.516.i.i.i.i.i.0..sroa.516.i.i.i.i.i.0..sroa.516.i.i.i.i.0..sroa.516.i.i.i.i.0..sroa.516.i.i.i.0..sroa.516.i.i.i.0..sroa.516.i.i.0..sroa.516.i.i.0..sroa.516.i.0..sroa.516.i.0..sroa.516.0..sroa.516.0..sroa.516.64..i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = load <2 x double>, ptr %i.at, align 16, !tbaa !42
  %i.az = fmul <2 x double> %i.ax, %i.ay
  %i.ba = fadd <2 x double> %i.aw, %i.az
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.214.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.i.i.i.i.i.i.i)
  %i.bb = load double, ptr %i.z, align 8, !tbaa !30
  %i.bc = load double, ptr %i.ad, align 8, !tbaa !30
  %i.bd = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1
  %i.bf = fsub <2 x double> %i.be, %i.ba          ; 2 uses
  %i.bg = fmul <2 x double> %i.bf, %i.bf
  %i.bh = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bg)
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.i.i
  store double %i.bh, ptr %i.bi, align 8, !tbaa !30
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS2_12parallel_forIiZNS2_15project_to_lineIN5Eigen5BlockIKNS6_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS8_IdLi1ELi2ELi1ELi1ELi2EEESC_NS8_IdLin1ELi1ELi0ELin1ELi1EEESD_EEvRKNS6_10MatrixBaseIT_EERKNSE_IT0_EERKNSE_IT1_EERNS6_15PlainObjectBaseIT2_EERNSR_IT3_EEEUliE_EEbSF_RKSJ_mEUlmE_ZNS4_IiSY_EEbSF_S10_mEUlimE_S11_EEbSF_S10_RKSN_RKSS_mEUliimE_iimEEEclEv.exit, label %bb.b, !llvm.loop !419

_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS2_12parallel_forIiZNS2_15project_to_lineIN5Eigen5BlockIKNS6_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS8_IdLi1ELi2ELi1ELi1ELi2EEESC_NS8_IdLin1ELi1ELi0ELin1ELi1EEESD_EEvRKNS6_10MatrixBaseIT_EERKNSE_IT0_EERKNSE_IT1_EERNS6_15PlainObjectBaseIT2_EERNSR_IT3_EEEUliE_EEbSF_RKSJ_mEUlmE_ZNS4_IiSY_EEbSF_S10_mEUlimE_S11_EEbSF_S10_RKSN_RKSS_mEUliimE_iimEEEclEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_15project_to_lineIN5Eigen5BlockIKNS8_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENSA_IdLi1ELi2ELi1ELi1ELi2EEESE_NSA_IdLin1ELi1ELi0ELin1ELi1EEESF_EEvRKNS8_10MatrixBaseIT_EERKNSG_IT0_EERKNSG_IT1_EERNS8_15PlainObjectBaseIT2_EERNST_IT3_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS6_IiS10_EEbSH_S12_mEUlimE_S13_EEbSH_S12_RKSP_RKSU_mEUliimE_RiRKiRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !98     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !104
  %i.r = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_15project_to_lineIN5Eigen5BlockIKNS7_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS9_IdLi1ELi2ELi1ELi1ELi2EEESD_NS9_IdLin1ELi1ELi0ELin1ELi1EEESE_EEvRKNS7_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EERNS7_15PlainObjectBaseIT2_EERNSS_IT3_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS5_IiSZ_EEbSG_S11_mEUlimE_S12_EEbSG_S11_RKSO_RKST_mEUliimE_iimEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !100
  store i64 %i.t, ptr %i.s, align 8, !tbaa !106
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i32, ptr %4, align 4, !tbaa !78
  store i32 %i.v, ptr %i.u, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.x = load i32, ptr %3, align 4, !tbaa !78
  store i32 %i.x, ptr %i.w, align 4, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load i64, ptr %2, align 8, !tbaa !41
  store i64 %i.z, ptr %i.y, align 8, !tbaa !41
  store ptr %i.r, ptr %6, align 8, !tbaa !112
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !112   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #21, !inline_history !11
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !112   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #21, !inline_history !11
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !100, !alias.scope !431
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !100, !alias.scope !430
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !100, !alias.scope !431
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.al, %.lr.ph.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.ap, %.lr.ph.i.i.i30 ], [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.ao, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.an = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !100, !alias.scope !433
  store i64 %i.an, ptr %.012.i.i.i31, align 8, !tbaa !100, !alias.scope !432
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !100, !alias.scope !433
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ap, %.lr.ph.i.i.i30 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #26
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !98
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !99
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !101
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #21 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #22
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aw

bb.k:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #24
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEES5_S5_NS4_IdLi1ELi1ELi0ELi1ELi1EEES6_EEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS3_15PlainObjectBaseIT2_EERNSK_IT3_EEEUliE_EEbS8_RKSC_mEUlmE_ZNS1_IiSR_EEbS8_ST_mEUlimE_SU_EEbS8_ST_RKSG_RKSL_m(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.214.i.i = alloca <2 x double>, align 16  ; 5 uses
  %.sroa.515.i.i = alloca <2 x double>, align 16  ; 5 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %class.anon.834, align 8            ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !78
  %i.e = icmp eq i32 %0, 0
  br i1 %i.e, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = sext i32 %0 to i64
  %i.i = icmp ule i64 %4, %i.h
  %i.j = icmp ugt i32 %i.f, 1
  %or.cond.not = and i1 %i.j, %i.i
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  %i.k = icmp sgt i32 %0, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57
  %i.l = load ptr, ptr %2, align 8, !tbaa !153, !nonnull !81, !align !82 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !155, !nonnull !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !156, !nonnull !81 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !157, !nonnull !81, !align !143
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !158, !nonnull !81, !align !82
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !159, !nonnull !81, !align !82
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !160, !nonnull !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !161, !nonnull !81, !align !82
  %wide.trip.count = zext nneg i32 %0 to i64
  %.sroa.214.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.214.i.i, i64 8
  %.sroa.515.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.515.i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %indvars.iv, 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i ; 2 uses
  %i.aa = load <2 x double>, ptr %i.o, align 16, !tbaa !42
  %i.ab = load <2 x double>, ptr %i.z, align 16, !tbaa !42
  %i.ac = fsub <2 x double> %i.aa, %i.ab
  %i.ad = load <2 x double>, ptr %i.q, align 16, !tbaa !42
  %i.ae = fmul <2 x double> %i.ac, %i.ad
  %7 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ae)
  %i.af = fneg double %7
  %i.ag = load double, ptr %i.s, align 8, !tbaa !30
  %i.ah = fdiv double %i.af, %i.ag                ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store double %i.ah, ptr %i.ai, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.214.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.515.i.i)
  %i.aj = fsub double 1.000000e+00, %i.ah
  store double %i.aj, ptr %.sroa.214.i.i, align 16, !tbaa !151, !alias.scope !441
  store ptr %i.o, ptr %.sroa.214.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !70, !alias.scope !441
  store double %i.ah, ptr %.sroa.515.i.i, align 16, !tbaa !151, !alias.scope !441
  store ptr %i.w, ptr %.sroa.515.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !70, !alias.scope !441
  %.sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.0..sroa.214.i.0..sroa.214.0..sroa.214.0..sroa.214.24..i.i = load <2 x double>, ptr %.sroa.214.i.i, align 16 ; 2 uses
  %bc.i.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.0..sroa.214.i.0..sroa.214.0..sroa.214.0..sroa.214.24..i.i to <2 x i64>
  %i.ak = extractelement <2 x i64> %bc.i.i.i.i.i.i.i.i, i64 1
  %i.al = inttoptr i64 %i.ak to ptr
  %.sroa.515.i.i.0..sroa.515.i.i.0..sroa.515.i.i.0..sroa.515.i.0..sroa.515.i.0..sroa.515.0..sroa.515.0..sroa.515.64..i.i = load <2 x double>, ptr %.sroa.515.i.i, align 16 ; 2 uses
  %bc16.i.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.515.i.i.0..sroa.515.i.i.0..sroa.515.i.i.0..sroa.515.i.0..sroa.515.i.0..sroa.515.0..sroa.515.0..sroa.515.64..i.i to <2 x i64>
  %i.am = extractelement <2 x i64> %bc16.i.i.i.i.i.i.i.i, i64 1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = shufflevector <2 x double> %.sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.0..sroa.214.i.0..sroa.214.0..sroa.214.0..sroa.214.24..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = load <2 x double>, ptr %i.al, align 16, !tbaa !42
  %i.aq = fmul <2 x double> %i.ao, %i.ap
  %i.ar = shufflevector <2 x double> %.sroa.515.i.i.0..sroa.515.i.i.0..sroa.515.i.i.0..sroa.515.i.0..sroa.515.i.0..sroa.515.0..sroa.515.0..sroa.515.64..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = load <2 x double>, ptr %i.an, align 16, !tbaa !42
  %i.at = fmul <2 x double> %i.ar, %i.as
  %i.au = fadd <2 x double> %i.aq, %i.at
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.214.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515.i.i)
  %i.av = load <2 x double>, ptr %i.z, align 16, !tbaa !42
  %i.aw = fsub <2 x double> %i.av, %i.au          ; 2 uses
  %i.ax = fmul <2 x double> %i.aw, %i.aw
  %i.ay = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ax)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  store double %i.ay, ptr %i.az, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit58, label %bb.c, !llvm.loop !436

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.ba = add nsw i32 %0, 1
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = uitofp i32 %i.f to double
  %i.bd = fdiv double %i.bb, %i.bc
  %i.be = tail call double @llvm.round.f64(double %i.bd)
  %i.bf = fptosi double %i.be to i32
  %.sroa.speculated51 = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %2, ptr %5, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bi = shl nuw nsw i64 %i.g, 3
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #25
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.bk = load ptr, ptr %6, align 8, !tbaa !98    ; 5 uses
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !99 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i ], [ %i.bj, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i ], [ %i.bk, %.noexc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.bm = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !100, !alias.scope !443
  store i64 %i.bm, ptr %.012.i.i.i.i, align 8, !tbaa !100, !alias.scope !442
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !100, !alias.scope !443
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bn, %i.bl
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.bk, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !101
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bk to i64
  %i.bs = sub i64 %i.bq, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bs) #26
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.bj, ptr %6, align 8, !tbaa !98
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !99
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.g
  store ptr %i.bt, ptr %i.bg, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %.sroa.speculated47 = tail call i32 @llvm.smin.i32(i32 %0, i32 %.sroa.speculated51)
  store i32 %.sroa.speculated47, ptr %i.c, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i64 0, ptr %i.d, align 8, !tbaa !100
  %i.bu = icmp sgt i32 %0, 0
  br i1 %i.bu, label %.lr.ph61, label %._crit_edge.thread

.lr.ph61:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.e
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEESA_SA_NS9_IdLi1ELi1ELi0ELi1ELi1EEESB_EEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERKNSC_IT1_EERNS8_15PlainObjectBaseIT2_EERNSP_IT3_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSW_EEbSD_SY_mEUlimE_SZ_EEbSD_SY_RKSL_RKSQ_mEUliimE_RiS18_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %.loopexit  ; 0 uses

bb.e:                                             ; preds = %.lr.ph61
  %i.bw = load i32, ptr %i.c, align 4, !tbaa !78  ; 3 uses
  store i32 %i.bw, ptr %i.b, align 4, !tbaa !78
  %i.bx = add nsw i32 %i.bw, %.sroa.speculated51
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %0, i32 %i.bx)
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !78
  %i.by = load i64, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.d, align 8, !tbaa !100
  %i.ca = add i64 %i.by, 2
  %i.cb = icmp ult i64 %i.ca, %i.g
  %i.cc = icmp slt i32 %i.bw, %0                  ; 2 uses
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %i.cd, label %.lr.ph61, label %._crit_edge, !llvm.loop !440

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit:                                        ; preds = %.lr.ph61
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.o

._crit_edge:                                      ; preds = %bb.e
  br i1 %i.cc, label %bb.h, label %._crit_edge.thread

bb.h:                                             ; preds = %._crit_edge
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEESA_SA_NS9_IdLi1ELi1ELi0ELi1ELi1EEESB_EEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERKNSC_IT1_EERNS8_15PlainObjectBaseIT2_EERNSP_IT3_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSW_EEbSD_SY_mEUlimE_SZ_EEbSD_SY_RKSL_RKSQ_mEUliimE_RiRKiRmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._crit_edge.thread unwind label %.loopexit.split-lp ; 0 uses

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %i.cg = load ptr, ptr %6, align 8, !tbaa !102   ; 3 uses
  %i.ch = load ptr, ptr %i.bh, align 8, !tbaa !102 ; 2 uses
  %.not62 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not62, label %.preheader.thread, label %.lr.ph65

.preheader.thread:                                ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i

.preheader:                                       ; preds = %bb.k
  %.pre = load ptr, ptr %6, align 8, !tbaa !98    ; 4 uses
  %.pre68 = load ptr, ptr %i.bh, align 8, !tbaa !99 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre68
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

.lr.ph65:                                         ; preds = %._crit_edge.thread, %bb.k
  %.sroa.042.063 = phi ptr [ %i.cj, %bb.k ], [ %i.cg, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.042.063, align 8, !tbaa !100
  %.not56 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not56, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph65
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.042.063)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %bb.i, %.lr.ph65
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.042.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cj, %i.ch
  br i1 %.not, label %.preheader, label %.lr.ph65

bb.l:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ck, %.pre68
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !1

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.preheader, %bb.l
  %.05.i.i.i = phi ptr [ %i.ck, %bb.l ], [ %.pre, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !100
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.m

end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEESA_SA_NS9_IdLi1ELi1ELi0ELi1ELi1EEESB_EEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERKNSC_IT1_EERNS8_15PlainObjectBaseIT2_EERNSP_IT3_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSW_EEbSD_SY_mEUlimE_SZ_EEbSD_SY_RKSL_RKSQ_mEUliimE_RiS18_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !104
  %i.r = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEES9_S9_NS8_IdLi1ELi1ELi0ELi1ELi1EEESA_EEvRKNS7_10MatrixBaseIT_EERKNSB_IT0_EERKNSB_IT1_EERNS7_15PlainObjectBaseIT2_EERNSO_IT3_EEEUliE_EEbSC_RKSG_mEUlmE_ZNS5_IiSV_EEbSC_SX_mEUlimE_SY_EEbSC_SX_RKSK_RKSP_mEUliimE_iimEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !100
  store i64 %i.t, ptr %i.s, align 8, !tbaa !106
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i32, ptr %4, align 4, !tbaa !78
  store i32 %i.v, ptr %i.u, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.x = load i32, ptr %3, align 4, !tbaa !78
  store i32 %i.x, ptr %i.w, align 4, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load i64, ptr %2, align 8, !tbaa !41
  store i64 %i.z, ptr %i.y, align 8, !tbaa !41
  store ptr %i.r, ptr %6, align 8, !tbaa !112
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !112   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #21, !inline_history !12
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !112   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #21, !inline_history !12
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !100, !alias.scope !451
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !100, !alias.scope !450
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !100, !alias.scope !451
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.al, %.lr.ph.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.ap, %.lr.ph.i.i.i30 ], [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.ao, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.an = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !100, !alias.scope !453
  store i64 %i.an, ptr %.012.i.i.i31, align 8, !tbaa !100, !alias.scope !452
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !100, !alias.scope !453
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ap, %.lr.ph.i.i.i30 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #26
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !98
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !99
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !101
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #21 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #22
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aw

bb.k:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #24
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEES9_S9_NS8_IdLi1ELi1ELi0ELi1ELi1EEESA_EEvRKNS7_10MatrixBaseIT_EERKNSB_IT0_EERKNSB_IT1_EERNS7_15PlainObjectBaseIT2_EERNSO_IT3_EEEUliE_EEbSC_RKSG_mEUlmE_ZNS5_IiSV_EEbSC_SX_mEUlimE_SY_EEbSC_SX_RKSK_RKSP_mEUliimE_iimEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEES9_S9_NS8_IdLi1ELi1ELi0ELi1ELi1EEESA_EEvRKNS7_10MatrixBaseIT_EERKNSB_IT0_EERKNSB_IT1_EERNS7_15PlainObjectBaseIT2_EERNSO_IT3_EEEUliE_EEbSC_RKSG_mEUlmE_ZNS5_IiSV_EEbSC_SX_mEUlimE_SY_EEbSC_SX_RKSK_RKSP_mEUliimE_iimEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.214.i.i.i.i.i.i.i = alloca <2 x double>, align 16 ; 5 uses
  %.sroa.515.i.i.i.i.i.i.i = alloca <2 x double>, align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.a, align 4, !tbaa !78   ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %i.e = icmp slt i32 %i.c, %i.d
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS2_12parallel_forIiZNS2_15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEES8_S8_NS7_IdLi1ELi1ELi0ELi1ELi1EEES9_EEvRKNS6_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERNS6_15PlainObjectBaseIT2_EERNSN_IT3_EEEUliE_EEbSB_RKSF_mEUlmE_ZNS4_IiSU_EEbSB_SW_mEUlimE_SX_EEbSB_SW_RKSJ_RKSO_mEUliimE_iimEEEclEv.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !458, !nonnull !81, !align !82
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !153, !nonnull !81, !align !82 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155, !nonnull !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156, !nonnull !81 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !157, !nonnull !81, !align !143
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !158, !nonnull !81, !align !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !159, !nonnull !81, !align !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !160, !nonnull !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !161, !nonnull !81, !align !82
  %i.v = sext i32 %i.c to i64
  %wide.trip.count.i.i.i.i.i = sext i32 %i.d to i64
  %.sroa.214.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.214.i.i.i.i.i.i.i, i64 8
  %.sroa.515.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.515.i.i.i.i.i.i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.b ] ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %indvars.iv.i.i.i.i.i, 4
  %i.w = getelementptr inbounds i8, ptr %i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.x = load <2 x double>, ptr %i.k, align 16, !tbaa !42
  %i.y = load <2 x double>, ptr %i.w, align 16, !tbaa !42
  %i.z = fsub <2 x double> %i.x, %i.y
  %i.aa = load <2 x double>, ptr %i.m, align 16, !tbaa !42
  %i.ab = fmul <2 x double> %i.z, %i.aa
  %1 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ab)
  %i.ac = fneg double %1
  %i.ad = load double, ptr %i.o, align 8, !tbaa !30
  %i.ae = fdiv double %i.ac, %i.ad                ; 3 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i.i
  store double %i.ae, ptr %i.af, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.214.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.515.i.i.i.i.i.i.i)
  %i.ag = fsub double 1.000000e+00, %i.ae
  store double %i.ag, ptr %.sroa.214.i.i.i.i.i.i.i, align 16, !tbaa !151, !alias.scope !459
  store ptr %i.k, ptr %.sroa.214.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !70, !alias.scope !459
  store double %i.ae, ptr %.sroa.515.i.i.i.i.i.i.i, align 16, !tbaa !151, !alias.scope !459
  store ptr %i.s, ptr %.sroa.515.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !70, !alias.scope !459
  %.sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.0..sroa.214.i.i.i.i.i.0..sroa.214.i.i.i.i.0..sroa.214.i.i.i.i.0..sroa.214.i.i.i.0..sroa.214.i.i.i.0..sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.0..sroa.214.i.0..sroa.214.0..sroa.214.0..sroa.214.24..i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.214.i.i.i.i.i.i.i, align 16 ; 2 uses
  %bc.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.0..sroa.214.i.i.i.i.i.0..sroa.214.i.i.i.i.0..sroa.214.i.i.i.i.0..sroa.214.i.i.i.0..sroa.214.i.i.i.0..sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.0..sroa.214.i.0..sroa.214.0..sroa.214.0..sroa.214.24..i.i.i.i.i.i.i to <2 x i64>
  %i.ah = extractelement <2 x i64> %bc.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.ai = inttoptr i64 %i.ah to ptr
  %.sroa.515.i.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.0..sroa.515.i.i.i.i.i.0..sroa.515.i.i.i.i.0..sroa.515.i.i.i.i.0..sroa.515.i.i.i.0..sroa.515.i.i.i.0..sroa.515.i.i.0..sroa.515.i.i.0..sroa.515.i.0..sroa.515.i.0..sroa.515.0..sroa.515.0..sroa.515.64..i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.515.i.i.i.i.i.i.i, align 16 ; 2 uses
  %bc16.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.515.i.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.0..sroa.515.i.i.i.i.i.0..sroa.515.i.i.i.i.0..sroa.515.i.i.i.i.0..sroa.515.i.i.i.0..sroa.515.i.i.i.0..sroa.515.i.i.0..sroa.515.i.i.0..sroa.515.i.0..sroa.515.i.0..sroa.515.0..sroa.515.0..sroa.515.64..i.i.i.i.i.i.i to <2 x i64>
  %i.aj = extractelement <2 x i64> %bc16.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = shufflevector <2 x double> %.sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.i.0..sroa.214.i.i.i.i.i.0..sroa.214.i.i.i.i.i.0..sroa.214.i.i.i.i.0..sroa.214.i.i.i.i.0..sroa.214.i.i.i.0..sroa.214.i.i.i.0..sroa.214.i.i.0..sroa.214.i.i.0..sroa.214.i.0..sroa.214.i.0..sroa.214.0..sroa.214.0..sroa.214.24..i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = load <2 x double>, ptr %i.ai, align 16, !tbaa !42
  %i.an = fmul <2 x double> %i.al, %i.am
  %i.ao = shufflevector <2 x double> %.sroa.515.i.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.i.0..sroa.515.i.i.i.i.i.0..sroa.515.i.i.i.i.i.0..sroa.515.i.i.i.i.0..sroa.515.i.i.i.i.0..sroa.515.i.i.i.0..sroa.515.i.i.i.0..sroa.515.i.i.0..sroa.515.i.i.0..sroa.515.i.0..sroa.515.i.0..sroa.515.0..sroa.515.0..sroa.515.64..i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = load <2 x double>, ptr %i.ak, align 16, !tbaa !42
  %i.aq = fmul <2 x double> %i.ao, %i.ap
  %i.ar = fadd <2 x double> %i.an, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.214.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515.i.i.i.i.i.i.i)
  %i.as = load <2 x double>, ptr %i.w, align 16, !tbaa !42
  %i.at = fsub <2 x double> %i.as, %i.ar          ; 2 uses
  %i.au = fmul <2 x double> %i.at, %i.at
  %i.av = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.au)
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.i.i
  store double %i.av, ptr %i.aw, align 8, !tbaa !30
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS2_12parallel_forIiZNS2_15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEES8_S8_NS7_IdLi1ELi1ELi0ELi1ELi1EEES9_EEvRKNS6_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERNS6_15PlainObjectBaseIT2_EERNSN_IT3_EEEUliE_EEbSB_RKSF_mEUlmE_ZNS4_IiSU_EEbSB_SW_mEUlimE_SX_EEbSB_SW_RKSJ_RKSO_mEUliimE_iimEEEclEv.exit, label %bb.b, !llvm.loop !456

_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS2_12parallel_forIiZNS2_15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEES8_S8_NS7_IdLi1ELi1ELi0ELi1ELi1EEES9_EEvRKNS6_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERNS6_15PlainObjectBaseIT2_EERNSN_IT3_EEEUliE_EEbSB_RKSF_mEUlmE_ZNS4_IiSU_EEbSB_SW_mEUlimE_SX_EEbSB_SW_RKSJ_RKSO_mEUliimE_iimEEEclEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEESA_SA_NS9_IdLi1ELi1ELi0ELi1ELi1EEESB_EEvRKNS8_10MatrixBaseIT_EERKNSC_IT0_EERKNSC_IT1_EERNS8_15PlainObjectBaseIT2_EERNSP_IT3_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS6_IiSW_EEbSD_SY_mEUlimE_SZ_EEbSD_SY_RKSL_RKSQ_mEUliimE_RiRKiRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !98     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !104
  %i.r = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEES9_S9_NS8_IdLi1ELi1ELi0ELi1ELi1EEESA_EEvRKNS7_10MatrixBaseIT_EERKNSB_IT0_EERKNSB_IT1_EERNS7_15PlainObjectBaseIT2_EERNSO_IT3_EEEUliE_EEbSC_RKSG_mEUlmE_ZNS5_IiSV_EEbSC_SX_mEUlimE_SY_EEbSC_SX_RKSK_RKSP_mEUliimE_iimEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !100
  store i64 %i.t, ptr %i.s, align 8, !tbaa !106
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i32, ptr %4, align 4, !tbaa !78
  store i32 %i.v, ptr %i.u, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.x = load i32, ptr %3, align 4, !tbaa !78
  store i32 %i.x, ptr %i.w, align 4, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load i64, ptr %2, align 8, !tbaa !41
  store i64 %i.z, ptr %i.y, align 8, !tbaa !41
  store ptr %i.r, ptr %6, align 8, !tbaa !112
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !112   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #21, !inline_history !13
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !112   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #21, !inline_history !13
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !100, !alias.scope !467
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !100, !alias.scope !466
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !100, !alias.scope !467
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.al, %.lr.ph.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.ap, %.lr.ph.i.i.i30 ], [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.ao, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.an = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !100, !alias.scope !469
  store i64 %i.an, ptr %.012.i.i.i31, align 8, !tbaa !100, !alias.scope !468
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !100, !alias.scope !469
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ap, %.lr.ph.i.i.i30 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #26
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !98
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !99
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !101
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #21 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #22
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
end_hunk_2
