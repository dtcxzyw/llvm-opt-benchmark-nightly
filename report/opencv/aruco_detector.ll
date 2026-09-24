Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/aruco_detector?download=true
inline.NumInlined: 4513
inline.NumDeleted: 1557
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #31, !inline_history !488
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv12buildPyramidERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN2cv5aruco9_apriltagENS_3MatERKNS0_18DetectorParametersERSt6vectorIS5_INS_6Point_IfEESaIS7_EESaIS9_EERS5_IS5_INS6_IiEESaISD_EESaISF_EE(ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv5aruco13ArucoDetector17ArucoDetectorImpl16detectCandidatesERKNS_3MatERSt6vectorIS6_INS_6Point_IfEESaIS8_EESaISA_EERS6_IS6_INS7_IiEESaISE_EESaISG_EE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::vector.66", align 8   ; 13 uses
  %11 = alloca %"class.std::vector.71", align 8   ; 12 uses
  %12 = alloca %"class.cv::Range", align 4        ; 6 uses
  %13 = alloca %"class.std::function", align 8    ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !494  ; 3 uses
  %i.f = icmp sgt i32 %i.e, 2
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv5arucoL24_detectInitialCandidatesERKNS_3MatERSt6vectorIS4_INS_6Point_IfEESaIS6_EESaIS8_EERS4_IS4_INS5_IiEESaISC_EESaISE_EERKNS0_18DetectorParametersE, ptr noundef nonnull @.str.1, i32 noundef 273) #32
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !44     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.l = load i64, ptr %i.j, align 8, !tbaa !45
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.az

bb.h:                                             ; preds = %bb.b
  %.not.i = icmp samesign ult i32 %i.e, %i.b
  br i1 %.not.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv5arucoL24_detectInitialCandidatesERKNS_3MatERSt6vectorIS4_INS_6Point_IfEESaIS6_EESaIS8_EERS4_IS4_INS5_IiEESaISC_EESaISE_EERKNS0_18DetectorParametersE, ptr noundef nonnull @.str.1, i32 noundef 274) #32
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

bb.m:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %6, align 8, !tbaa !44     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i: ; preds = %bb.m
  %i.s = load i64, ptr %i.q, align 8, !tbaa !45
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i, %bb.l
  %.pn41.i = phi { ptr, i32 } [ %i.n, %bb.l ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i ], [ %i.o, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.az

bb.n:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !206  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv5arucoL24_detectInitialCandidatesERKNS_3MatERSt6vectorIS4_INS_6Point_IfEESaIS6_EESaIS8_EERS4_IS4_INS5_IiEESaISC_EESaISE_EERKNS0_18DetectorParametersE, ptr noundef nonnull @.str.1, i32 noundef 275) #32
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i

bb.s:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %8, align 8, !tbaa !44     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i: ; preds = %bb.s
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !45
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i, %bb.r
  %.pn43.i = phi { ptr, i32 } [ %i.x, %bb.r ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i ], [ %i.y, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.az

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.n
  %i.ae = sub nuw nsw i32 %i.e, %i.b
  %i.af = udiv i32 %i.ae, %i.v                    ; 2 uses
  %i.ag = add nuw nsw i32 %i.af, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.ah = zext nneg i32 %i.ag to i64              ; 3 uses
  %i.ai = mul nuw nsw i64 %i.ah, 24               ; 6 uses
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #34
          to label %.lr.ph.preheader.i.i.i.i.i61.i unwind label %bb.ah ; 4 uses

.lr.ph.preheader.i.i.i.i.i61.i:                   ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  store ptr %i.aj, ptr %10, align 8, !tbaa !208
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i8 0, i64 %i.ai, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.aj, i64 %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !495
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.al, align 8, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #34
          to label %bb.t unwind label %bb.ai      ; 4 uses

bb.t:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i61.i
  store ptr %i.an, ptr %11, align 8, !tbaa !210
  %14 = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, i8 0, i64 %i.ai, i1 false)
  %scevgep.i.i.i.i.i62.i = getelementptr i8, ptr %i.an, i64 %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %14, ptr %i.ap, align 8, !tbaa !497
  store ptr %scevgep.i.i.i.i.i62.i, ptr %i.ao, align 8, !tbaa !498
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  store i32 0, ptr %12, align 4, !tbaa !146
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.ag, ptr %i.aq, align 4, !tbaa !147
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34
          to label %bb.x unwind label %bb.u       ; 5 uses

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !155 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %.body.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %.body.i unwind label %bb.w    ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #35
  unreachable

bb.x:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.a, ptr %i.as, align 16, !tbaa !212
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !213
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %10, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !215
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %11, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !217
  store ptr %i.as, ptr %13, align 8, !tbaa !218
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_5arucoL24_detectInitialCandidatesERKNS0_3MatERSt6vectorIS9_INS0_6Point_IfEESaISB_EESaISD_EERS9_IS9_INSA_IiEESaISH_EESaISJ_EERKNS5_18DetectorParametersEE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.ay, align 8, !tbaa !154
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_5arucoL24_detectInitialCandidatesERKNS0_3MatERSt6vectorIS9_INS0_6Point_IfEESaISB_EESaISD_EERS9_IS9_INSA_IiEESaISH_EESaISJ_EERKNS5_18DetectorParametersEE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation", ptr %i.ar, align 8, !tbaa !155
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef align 8 %13)
          to label %bb.y unwind label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !155 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = invoke noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %.preheader.lr.ph.i unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #35
  unreachable

.preheader.lr.ph.i:                               ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = zext nneg i32 %i.af to i64
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !208
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %i.bi = phi ptr [ %.pre.i, %.preheader.lr.ph.i ], [ %i.dq, %._crit_edge.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 5 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %indvars.iv.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !102
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !101 ; 2 uses
  %.not107.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not107.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge106.i:                                 ; preds = %._crit_edge.i
  %i.bn = load ptr, ptr %11, align 8, !tbaa !210  ; 3 uses
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !498 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge106.i, %_ZSt8_DestroyISt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cf, %_ZSt8_DestroyISt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EEEvPT_.exit.i.i.i.i ], [ %i.bn, %._crit_edge106.i ] ; 5 uses
  %i.bp = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !109 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !110 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.bs = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !113 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !114
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #33
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, %i.br
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bz = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EEEvPT_.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !131
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #33
  br label %_ZSt8_DestroyISt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EEEvPT_.exit.i.i.i.i: ; preds = %bb.ac, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cf, %i.bo
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !489

_ZSt8_DestroyIPSt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %11, align 8, !tbaa !210
  br label %_ZSt8_DestroyIPSt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge106.i
  %i.cg = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bn, %._crit_edge106.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIS_IS_IN2cv6Point_IiEESaIS2_EESaIS4_EESaIS6_EED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.ch = load ptr, ptr %i.ap, align 8, !tbaa !497
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #33
  br label %_ZNSt6vectorIS_IS_IN2cv6Point_IiEESaIS2_EESaIS4_EESaIS6_EED2Ev.exit.i

_ZNSt6vectorIS_IS_IN2cv6Point_IiEESaIS2_EESaIS4_EESaIS6_EED2Ev.exit.i: ; preds = %bb.ad, %_ZSt8_DestroyIPSt6vectorIS0_IN2cv6Point_IiEESaIS3_EESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.cl = load ptr, ptr %10, align 8, !tbaa !208  ; 3 uses
  %i.cm = load ptr, ptr %i.al, align 8, !tbaa !496 ; 2 uses
  %.not4.i.i.i67.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not4.i.i.i67.i, label %_ZSt8_DestroyIPSt6vectorIS0_IN2cv6Point_IfEESaIS3_EESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i68.i

.lr.ph.i.i.i68.i:                                 ; preds = %_ZNSt6vectorIS_IS_IN2cv6Point_IiEESaIS2_EESaIS4_EESaIS6_EED2Ev.exit.i, %_ZSt8_DestroyISt6vectorIS0_IN2cv6Point_IfEESaIS3_EESaIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i69.i = phi ptr [ %i.dd, %_ZSt8_DestroyISt6vectorIS0_IN2cv6Point_IfEESaIS3_EESaIS5_EEEvPT_.exit.i.i.i.i ], [ %i.cl, %_ZNSt6vectorIS_IS_IN2cv6Point_IiEESaIS2_EESaIS4_EESaIS6_EED2Ev.exit.i ] ; 5 uses
  %i.cn = load ptr, ptr %.05.i.i.i69.i, align 8, !tbaa !101 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i69.i, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !102 ; 2 uses
  %.not4.i.i.i.i.i.i.i70.i = icmp eq ptr %i.cn, %i.cp
  br i1 %.not4.i.i.i.i.i.i.i70.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i71.i

.lr.ph.i.i.i.i.i.i.i71.i:                         ; preds = %.lr.ph.i.i.i68.i, %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i72.i = phi ptr [ %i.cw, %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.cn, %.lr.ph.i.i.i68.i ] ; 3 uses
  %i.cq = load ptr, ptr %.05.i.i.i.i.i.i.i72.i, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i73.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i73.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i71.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i72.i, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !106
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #33
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i.i71.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i72.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i74.i = icmp eq ptr %i.cw, %i.cp
  br i1 %.not.i.i.i.i.i.i.i74.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i71.i, !llvm.loop !3

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i75.i = load ptr, ptr %.05.i.i.i69.i, align 8, !tbaa !101
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i68.i
  %i.cx = phi ptr [ %.pr.i.i.i.i.i75.i, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.cn, %.lr.ph.i.i.i68.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i76.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i.i.i.i.i76.i, label %_ZSt8_DestroyISt6vectorIS0_IN2cv6Point_IfEESaIS3_EESaIS5_EEEvPT_.exit.i.i.i.i, label %bb.af

end_hunk_0
