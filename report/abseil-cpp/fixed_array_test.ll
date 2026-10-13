Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/fixed_array_test?download=true
inline.NumInlined: 9190
inline.NumDeleted: 3189
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN12_GLOBAL__N_158IteratorConstructorTest_FromCpp20ForwardIteratorRange_Test8TestBodyEv:.lr.ph.i.i

.noexc.i.2:                                       ; preds = %.noexc.i.1
  store ptr null, ptr %i.e, align 8, !tbaa !802
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 5, ptr %i.f, align 8, !tbaa !76
  store ptr %i.e, ptr %i.c, align 8, !tbaa !802
  %i.g = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %.noexc.i.3 unwind label %.lr.ph.i.i.i.preheader ; 4 uses

.noexc.i.3:                                       ; preds = %.noexc.i.2
  store ptr null, ptr %i.g, align 8, !tbaa !802
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 7, ptr %i.h, align 8, !tbaa !76
  store ptr %i.g, ptr %i.e, align 8, !tbaa !802
  %i.i = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %.noexc.i.4 unwind label %.lr.ph.i.i.i.preheader ; 4 uses

.noexc.i.4:                                       ; preds = %.noexc.i.3
  store ptr null, ptr %i.i, align 8, !tbaa !802
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 11, ptr %i.j, align 8, !tbaa !76
  store ptr %i.i, ptr %i.g, align 8, !tbaa !802
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %.noexc.i.5 unwind label %.lr.ph.i.i.i.preheader ; 4 uses

.noexc.i.5:                                       ; preds = %.noexc.i.4
  store ptr null, ptr %i.k, align 8, !tbaa !802
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 13, ptr %i.l, align 8, !tbaa !76
  store ptr %i.k, ptr %i.i, align 8, !tbaa !802
  %i.m = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %.lr.ph.i.i30.preheader unwind label %.lr.ph.i.i.i.preheader ; 3 uses

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc.i.5, %.noexc.i.4, %.noexc.i.3, %.noexc.i.2, %.noexc.i.1, %.lr.ph.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.a, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.n = load ptr, ptr %.013.i.i.i, align 8, !tbaa !802 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i, i64 noundef 16) #27
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit82, label %.lr.ph.i.i.i, !llvm.loop !787

.lr.ph.i.i30.preheader:                           ; preds = %.noexc.i.5
  store ptr null, ptr %i.m, align 8, !tbaa !802
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 17, ptr %i.o, align 8, !tbaa !76
  store ptr %i.m, ptr %i.k, align 8, !tbaa !802
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.088)
  store ptr null, ptr %.sroa.088, align 8, !tbaa !802
  br label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %.lr.ph.i.i30.preheader, %.noexc.i35
  %.012.i.i = phi ptr [ %i.p, %.noexc.i35 ], [ %.sroa.088, %.lr.ph.i.i30.preheader ]
  %.sroa.5.011.i.i = phi ptr [ %i.x, %.noexc.i35 ], [ %i.a, %.lr.ph.i.i30.preheader ] ; 2 uses
  %.sroa.04.010.i.i = phi ptr [ %i.w, %.noexc.i35 ], [ %i.a, %.lr.ph.i.i30.preheader ] ; 2 uses
  %i.p = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %.noexc.i35 unwind label %bb.a ; 5 uses

.noexc.i35:                                       ; preds = %.lr.ph.i.i30
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.5.011.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.010.i.i, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !802
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i32, ptr %i.r, align 4, !tbaa !76
  store i32 %i.t, ptr %i.s, align 8, !tbaa !804
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.v = load i32, ptr %i.q, align 4, !tbaa !76
  store i32 %i.v, ptr %i.u, align 4, !tbaa !805
  store ptr %i.p, ptr %.012.i.i, align 8, !tbaa !802
  %i.w = load ptr, ptr %.sroa.04.010.i.i, align 8, !tbaa !802 ; 2 uses
  %i.x = load ptr, ptr %.sroa.5.011.i.i, align 8, !tbaa !802 ; 2 uses
  %i.y = icmp ne ptr %i.w, null
  %i.z = icmp ne ptr %i.x, null
  %.not3.i.i.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %.not3.i.i.i, label %.lr.ph.i.i30, label %_ZNSt12forward_listISt4pairIiiESaIS1_EEC2IN4absl12lts_2026052613base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEvEET_SC_RKS2_.exit, !llvm.loop !788

bb.a:                                             ; preds = %.lr.ph.i.i30
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.088.0..sroa.088.0..sroa.088.0..sroa.088.0. = load ptr, ptr %.sroa.088, align 8, !tbaa !802 ; 2 uses
  %.not12.i.i.i31 = icmp eq ptr %.sroa.088.0..sroa.088.0..sroa.088.0..sroa.088.0., null
  br i1 %.not12.i.i.i31, label %.lr.ph.i.i78.preheader, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %bb.a, %.lr.ph.i.i.i32
  %.013.i.i.i33 = phi ptr [ %i.ab, %.lr.ph.i.i.i32 ], [ %.sroa.088.0..sroa.088.0..sroa.088.0..sroa.088.0., %bb.a ] ; 2 uses
  %i.ab = load ptr, ptr %.013.i.i.i33, align 8, !tbaa !802 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i33, i64 noundef 16) #27
  %.not.i.i.i34 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i34, label %.lr.ph.i.i78.preheader, label %.lr.ph.i.i.i32, !llvm.loop !789

_ZNSt12forward_listISt4pairIiiESaIS1_EEC2IN4absl12lts_2026052613base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEvEET_SC_RKS2_.exit: ; preds = %.noexc.i35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %_ZNSt12forward_listISt4pairIiiESaIS1_EEC2IN4absl12lts_2026052613base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEvEET_SC_RKS2_.exit, %.lr.ph.i.i38
  %.08.i.i = phi i64 [ %i.ae, %.lr.ph.i.i38 ], [ 0, %_ZNSt12forward_listISt4pairIiiESaIS1_EEC2IN4absl12lts_2026052613base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEvEET_SC_RKS2_.exit ] ; 4 uses
  %.sroa.4.07.i.i = phi ptr [ %i.ad, %.lr.ph.i.i38 ], [ %i.a, %_ZNSt12forward_listISt4pairIiiESaIS1_EEC2IN4absl12lts_2026052613base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEvEET_SC_RKS2_.exit ]
  %.sroa.02.06.i.i = phi ptr [ %i.ac, %.lr.ph.i.i38 ], [ %i.a, %_ZNSt12forward_listISt4pairIiiESaIS1_EEC2IN4absl12lts_2026052613base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEvEET_SC_RKS2_.exit ]
  %i.ac = load ptr, ptr %.sroa.02.06.i.i, align 8, !tbaa !802 ; 2 uses
  %i.ad = load ptr, ptr %.sroa.4.07.i.i, align 8, !tbaa !802 ; 2 uses
  %i.ae = add nuw nsw i64 %.08.i.i, 1             ; 3 uses
  %i.af = icmp ne ptr %i.ac, null
  %i.ag = icmp ne ptr %i.ad, null
  %.not3.i.i.i39 = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %.not3.i.i.i39, label %.lr.ph.i.i38, label %_ZSt10__distanceIN4absl12lts_2026052613base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i, !llvm.loop !790

_ZSt10__distanceIN4absl12lts_2026052613base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i: ; preds = %.lr.ph.i.i38
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !806
  %i.ai = icmp samesign ult i64 %.08.i.i, 32
  br i1 %i.ai, label %.noexc41, label %bb.b

bb.b:                                             ; preds = %_ZSt10__distanceIN4absl12lts_2026052613base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i
  %i.aj = icmp samesign ugt i64 %.08.i.i, 1152921504606846974
  br i1 %i.aj, label %bb.c, label %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i, !prof !106

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp samesign ugt i64 %.08.i.i, 2305843009213693950
  br i1 %i.ak, label %.noexc.i.i, label %.noexc3.i.i

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

.noexc3.i.i:                                      ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc40 unwind label %bb.i

.noexc40:                                         ; preds = %.noexc3.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.al = shl nuw nsw i64 %i.ae, 3
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #28
          to label %.noexc41 unwind label %bb.i

.noexc41:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i, %_ZSt10__distanceIN4absl12lts_2026052613base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i
  %.0.i.i.i = phi ptr [ %1, %_ZSt10__distanceIN4absl12lts_2026052613base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i ], [ %i.am, %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %.0.i.i.i, ptr %i.an, align 8, !tbaa !202
  br label %.lr.ph.i12.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.noexc41
  %.021.i.i = phi ptr [ %i.at, %.lr.ph.i12.i ], [ %.0.i.i.i, %.noexc41 ] ; 3 uses
  %.sroa.515.020.i.i = phi ptr [ %i.av, %.lr.ph.i12.i ], [ %i.a, %.noexc41 ] ; 2 uses
  %.sroa.012.019.i.i = phi ptr [ %i.au, %.lr.ph.i12.i ], [ %i.a, %.noexc41 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.515.020.i.i, i64 8
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !76
  store i32 %i.aq, ptr %.021.i.i, align 4, !tbaa !804
  %i.ar = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !76
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !805
  %i.at = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 8
  %i.au = load ptr, ptr %.sroa.012.019.i.i, align 8, !tbaa !802 ; 2 uses
  %i.av = load ptr, ptr %.sroa.515.020.i.i, align 8, !tbaa !802 ; 2 uses
  %i.aw = icmp ne ptr %i.au, null
  %i.ax = icmp ne ptr %i.av, null
  %.not3.i.i13.i = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %.not3.i.i13.i, label %.lr.ph.i12.i, label %_ZN4absl12lts_2026052610FixedArrayISt4pairIiiELm18446744073709551615ESaIS3_EEC2INS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEETnPNSt9enable_ifIXsr13base_internal22IsAtLeastInputIteratorIT_EE5valueEvE4typeELPv0EEESD_SD_RKS4_.exit, !llvm.loop !791

_ZN4absl12lts_2026052610FixedArrayISt4pairIiiELm18446744073709551615ESaIS3_EEC2INS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEETnPNSt9enable_ifIXsr13base_internal22IsAtLeastInputIteratorIT_EE5valueEvE4typeELPv0EEESD_SD_RKS4_.exit: ; preds = %.lr.ph.i12.i
  %.sroa.088.0..sroa.088.0..sroa.088.0..sroa.088.0.89.pre = load ptr, ptr %.sroa.088, align 8, !tbaa !809, !noalias !810 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.not4.i.i.i.i.i.i = icmp eq ptr %.sroa.088.0..sroa.088.0..sroa.088.0..sroa.088.0.89.pre, null ; 2 uses
  br i1 %.not4.i.i.i.i.i.i, label %.loopexit.i.thread, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4absl12lts_2026052610FixedArrayISt4pairIiiELm18446744073709551615ESaIS3_EEC2INS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEETnPNSt9enable_ifIXsr13base_internal22IsAtLeastInputIteratorIT_EE5valueEvE4typeELPv0EEESD_SD_RKS4_.exit, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ 0, %_ZN4absl12lts_2026052610FixedArrayISt4pairIiiELm18446744073709551615ESaIS3_EEC2INS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEETnPNSt9enable_ifIXsr13base_internal22IsAtLeastInputIteratorIT_EE5valueEvE4typeELPv0EEESD_SD_RKS4_.exit ] ; 2 uses
  %.sroa.02.05.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.088.0..sroa.088.0..sroa.088.0..sroa.088.0.89.pre, %_ZN4absl12lts_2026052610FixedArrayISt4pairIiiELm18446744073709551615ESaIS3_EEC2INS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEETnPNSt9enable_ifIXsr13base_internal22IsAtLeastInputIteratorIT_EE5valueEvE4typeELPv0EEESD_SD_RKS4_.exit ]
  %i.ay = load ptr, ptr %.sroa.02.05.i.i.i.i.i.i, align 8, !tbaa !802, !noalias !811 ; 2 uses
  %i.az = add nuw nsw i64 %.06.i.i.i.i.i.i, 1     ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt10__distanceISt24_Fwd_list_const_iteratorISt4pairIiiEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !796

_ZSt10__distanceISt24_Fwd_list_const_iteratorISt4pairIiiEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ba = icmp samesign ugt i64 %.06.i.i.i.i.i.i, 1152921504606846974
  br i1 %i.ba, label %.noexc.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_ZSt10__distanceISt24_Fwd_list_const_iteratorISt4pairIiiEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit.i.i.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #29
          to label %.noexc42 unwind label %bb.j

.noexc42:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %_ZSt10__distanceISt24_Fwd_list_const_iteratorISt4pairIiiEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit.i.i.i.i.i
  %i.bb = shl nuw nsw i64 %i.az, 3
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #28
          to label %.lr.ph.i.i.i.i.i.i.i.i.i unwind label %bb.j ; 7 uses

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 8, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i.i.i.i ] ; 4 uses
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bc, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.088.0..sroa.088.0..sroa.088.0..sroa.088.0.89.pre, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i.i.i.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 8
  %i.be = load i64, ptr %i.bd, align 4, !noalias !811
  store i64 %i.be, ptr %.09.i.i.i.i.i.i.i.i.i, align 4, !noalias !811
  %i.bf = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, align 8, !tbaa !802, !noalias !811 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  %indvars.iv.next = add i64 %indvars.iv, 8
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !797

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.az ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bc to i64               ; 5 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 5 uses
  %i.bl = icmp ugt i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %.noexc.i.i.i.i46, label %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !106

.noexc.i.i.i.i46:                                 ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc47 unwind label %bb.k

.noexc47:                                         ; preds = %.noexc.i.i.i.i46
  unreachable

_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #28
          to label %.noexc48 unwind label %bb.k   ; 4 uses

.noexc48:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i.i.i
  %6 = ptrtoaddr ptr %.09.i.i.i.i.i.i.i.i.i to i64
  %reass.sub = sub i64 %6, %i.bj
  %7 = add i64 %reass.sub, 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr nonnull align 4 %i.bc, i64 %7, i1 false), !noalias !812
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !812
  %i.bn = icmp ugt i64 %indvars.iv, 9223372036854775800
  br i1 %i.bn, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !106

.loopexit.i.thread:                               ; preds = %_ZN4absl12lts_2026052610FixedArrayISt4pairIiiELm18446744073709551615ESaIS3_EEC2INS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEETnPNSt9enable_ifIXsr13base_internal22IsAtLeastInputIteratorIT_EE5valueEvE4typeELPv0EEESD_SD_RKS4_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherISt4pairIiiEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_.exit

.noexc.i.i.i.i.i:                                 ; preds = %.noexc48
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc.i45 unwind label %_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit4.i, !noalias !812

.noexc.i45:                                       ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %.noexc48
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %indvars.iv) #28
          to label %bb.e unwind label %_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit4.i, !noalias !812 ; 4 uses

bb.e:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.bo, ptr %3, align 8, !tbaa !814, !alias.scope !812
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !815, !alias.scope !812
  %i.bs = and i64 %i.bk, 9223372036854775800      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr nonnull align 4 %i.bm, i64 %i.bs, i1 false), !noalias !812
  %scevgep.i = getelementptr i8, ptr %i.bo, i64 %i.bs
  store ptr %scevgep.i, ptr %i.bp, align 8, !tbaa !816, !alias.scope !812
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bk) #27, !noalias !812
  br label %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherISt4pairIiiEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_.exit

_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit4.i: ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bk) #27, !noalias !812
  br label %.body49.thread

_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherISt4pairIiiEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_.exit: ; preds = %bb.e, %.loopexit.i.thread
  %i.bu = phi i64 [ 0, %.loopexit.i.thread ], [ %i.bj, %bb.e ] ; 2 uses
  %.sroa.9.0109118127 = phi ptr [ null, %.loopexit.i.thread ], [ %i.bh, %bb.e ] ; 2 uses
  %.sroa.0.0106120126 = phi ptr [ null, %.loopexit.i.thread ], [ %i.bc, %bb.e ] ; 4 uses
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherISt4pairIiiEEEEclIN4absl12lts_2026052610FixedArrayIS4_Lm18446744073709551615ESaIS4_EEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @.str.193, ptr noundef nonnull align 8 dereferenceable(272) %1)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherISt4pairIiiEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_.exit
  %i.bv = load ptr, ptr %3, align 8, !tbaa !814   ; 3 uses
  %.not.i.i.i.i.i51 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i51, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherISt4pairIiiEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !815
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #27
  br label %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherISt4pairIiiEEEED2Ev.exit

_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherISt4pairIiiEEEED2Ev.exit: ; preds = %bb.f, %bb.g
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0106120126, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherISt4pairIiiEEEED2Ev.exit
  %i.cb = ptrtoint ptr %.sroa.9.0109118127 to i64
  %i.cc = sub i64 %i.cb, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0106120126, i64 noundef %i.cc) #27
  br label %_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit

_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherISt4pairIiiEEEED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.cd = load i8, ptr %2, align 8, !tbaa !90, !range !91, !noundef !92
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.w, label %bb.n

bb.i:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i, %.noexc3.i.i, %.noexc.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052610FixedArrayISt4pairIiiELm18446744073709551615ESaIS3_EED2Ev.exit70

bb.j:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i.i.i.i, %.noexc.i.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit55

bb.k:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i46
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body49.thread

bb.l:                                             ; preds = %_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherISt4pairIiiEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %3, align 8, !tbaa !814   ; 3 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i52, label %.body49, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !815
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #27
  br label %.body49

.body49:                                          ; preds = %bb.m, %bb.l
  %.not.i.i.i.i54 = icmp eq ptr %.sroa.0.0106120126, null
  br i1 %.not.i.i.i.i54, label %_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit55, label %.body49.thread

.body49.thread:                                   ; preds = %bb.k, %_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit4.i, %.body49
  %.pn134 = phi { ptr, i32 } [ %i.ci, %.body49 ], [ %i.ch, %bb.k ], [ %i.bt, %_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit4.i ]
  %.sroa.0.0107133 = phi ptr [ %.sroa.0.0106120126, %.body49 ], [ %i.bc, %bb.k ], [ %i.bc, %_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit4.i ]
  %.sroa.9.0110132 = phi ptr [ %.sroa.9.0109118127, %.body49 ], [ %i.bh, %bb.k ], [ %i.bh, %_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit4.i ]
  %i.cp = phi i64 [ %i.bu, %.body49 ], [ %i.bj, %bb.k ], [ %i.bj, %_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit4.i ]
  %i.cq = ptrtoint ptr %.sroa.9.0110132 to i64
  %i.cr = sub i64 %i.cq, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0107133, i64 noundef %i.cr) #27
  br label %_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit55

_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit55: ; preds = %.body49.thread, %.body49, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.j ], [ %i.ci, %.body49 ], [ %.pn134, %.body49.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.z

bb.n:                                             ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherISt4pairIiiEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !93 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i56, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !97
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.p, %bb.o
  %i.cv = phi ptr [ %i.cu, %bb.p ], [ @.str.130, %bb.o ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 426, ptr noundef %i.cv)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.cw = load ptr, ptr %4, align 8, !tbaa !99    ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i57, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !56
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.r, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.w

bb.s:                                             ; preds = %bb.n
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit60

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn23 = phi { ptr, i32 } [ %i.dc, %bb.u ], [ %i.db, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dd = load ptr, ptr %4, align 8, !tbaa !99    ; 3 uses
  %.not.i.i58 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i58, label %_ZN7testing7MessageD2Ev.exit60, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59: ; preds = %bb.v
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !56
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(128) %i.dd) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit60

_ZN7testing7MessageD2Ev.exit60:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59, %bb.v, %bb.s
  %.pn23.pn = phi { ptr, i32 } [ %i.da, %bb.s ], [ %.pn23, %bb.v ], [ %.pn23, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59 ]
end_hunk_0
