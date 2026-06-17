inline.NumInlined: 1643
inline.NumDeleted: 798
begin_hunk_0_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_SF_T0_":bb.a

bb.g:                                             ; preds = %bb.e
  %i.ak = icmp eq i64 %i.ae, 8
  br i1 %i.ak, label %bb.h, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.pn26, i64 8
  store i64 %i.e, ptr %i.al, align 8, !tbaa !59
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %.preheader67, %bb.l
  %.sroa.06.0.i = phi ptr [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.027, %.preheader67 ] ; 4 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.06.0.i, i64 -8 ; 2 uses
  %i.am = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !59 ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %.val.val, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !55 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.n, %i.au
  br i1 %.not.i.i.i, label %.preheader.i.i.i.preheader, label %bb.j

.preheader.i.i.i.preheader:                       ; preds = %bb.i
  br i1 %.not27.i.i.i62, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclImNS_17__normal_iteratorIPmS6_EEEEbRT_T0_.exit.i", label %.lr.ph65

bb.j:                                             ; preds = %bb.i
  %i.av = icmp ult i64 %i.n, %i.au
  br i1 %i.av, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

.preheader.i.i.i:                                 ; preds = %.lr.ph65
  %.not27.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not27.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclImNS_17__normal_iteratorIPmS6_EEEEbRT_T0_.exit.i", label %.lr.ph65, !llvm.loop !84

.lr.ph65:                                         ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.024.i.i.i63 = phi i64 [ %i.aw, %.preheader.i.i.i ], [ %i.n, %.preheader.i.i.i.preheader ]
  %i.aw = add i64 %.024.i.i.i63, -1               ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !59 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.aw
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !59 ; 2 uses
  %.not28.i.i.i = icmp eq i64 %i.ay, %i.ba
  br i1 %.not28.i.i.i, label %.preheader.i.i.i, label %bb.k, !llvm.loop !84

bb.k:                                             ; preds = %.lr.ph65
  %i.bb = icmp ult i64 %i.ay, %i.ba
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclImNS_17__normal_iteratorIPmS6_EEEEbRT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclImNS_17__normal_iteratorIPmS6_EEEEbRT_T0_.exit.i": ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader, %bb.k
  %.not27.i.i.i55 = phi i1 [ false, %bb.k ], [ true, %.preheader.i.i.i.preheader ], [ true, %.preheader.i.i.i ]
  %.2.i.i.i = phi i1 [ %i.bb, %bb.k ], [ undef, %.preheader.i.i.i.preheader ], [ undef, %.preheader.i.i.i ]
  %i.bc = icmp ult i64 %i.d, %i.am
  %spec.select.i.i.i = select i1 %.not27.i.i.i55, i1 %i.bc, i1 %.2.i.i.i
  br i1 %spec.select.i.i.i, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclImNS_17__normal_iteratorIPmS6_EEEEbRT_T0_.exit.i", %bb.j
  store i64 %i.am, ptr %.sroa.06.0.i, align 8, !tbaa !59
  br label %bb.i, !llvm.loop !85

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclImNS_17__normal_iteratorIPmS6_EEEEbRT_T0_.exit.i", %bb.j, %bb.h, %bb.g, %bb.f
  %.sink = phi ptr [ %0, %bb.h ], [ %0, %bb.f ], [ %0, %bb.g ], [ %.sroa.06.0.i, %bb.j ], [ %.sroa.06.0.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclImNS_17__normal_iteratorIPmS6_EEEEbRT_T0_.exit.i" ]
  store i64 %i.d, ptr %.sink, align 8, !tbaa !59
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 8 ; 2 uses
  %i.bd = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.bd, label %.loopexit, label %bb.b, !llvm.loop !100

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !59
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !60
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #36
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #37 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !59
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !59
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #38
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !58
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"struct.folly::CacheLocality") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.28", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.28", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.36", align 16 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca [64 x i8], align 64               ; 6 uses
  %i.c = alloca [64 x i8], align 64               ; 6 uses
  %i.d = alloca [20 x i8], align 16               ; 7 uses
  %9 = alloca %"struct.fmt::v11::detail::concat.30", align 8 ; 4 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.std::vector.0", align 8    ; 12 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 11 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %18 = alloca %"class.std::vector", align 8      ; 13 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %24 = alloca %"class.std::vector.0", align 8    ; 7 uses
  store i64 %1, ptr %11, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %2, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 2)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA23_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 1 dereferenceable(23) @.str.3, i8 noundef zeroext 2)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt10filesystem7__cxx114pathC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %15)
          to label %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #35
  br label %.body60

_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !101  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.l) #35
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.e, %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit
  %i.m = load ptr, ptr %15, align 8, !tbaa !48    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !42
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #38
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !101  ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i62, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i63, label %bb.f

bb.f:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.s) #35
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i63

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i63: ; preds = %bb.f, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.t = load ptr, ptr %14, align 8, !tbaa !48    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i63
  %i.w = load i64, ptr %i.u, align 8, !tbaa !42
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #38
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit66

_ZNSt10filesystem7__cxx114pathD2Ev.exit66:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  %i.y = load ptr, ptr %13, align 8, !tbaa !48
  %i.z = invoke i32 (ptr, i32, ...) @open(ptr noundef %i.y, i32 noundef 589824, i32 noundef 0)
          to label %bb.g unwind label %bb.p       ; 4 uses

bb.g:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit66
  store i32 %i.z, ptr %i.e, align 4, !tbaa !7
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 15 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 11 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  br label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.as = tail call ptr @__errno_location() #40
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.av = call ptr @strerror(i32 noundef %i.at) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35, !noalias !103
  store ptr %i.av, ptr %10, align 16, !tbaa !42, !noalias !103
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.4, i64 24, i64 12, ptr nonnull %10)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35, !noalias !103
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
          to label %bb.em unwind label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body60

.body60:                                          ; preds = %bb.d, %bb.m
  %eh.lpad-body61 = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.j, %bb.d ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #35
  br label %bb.n

bb.n:                                             ; preds = %.body60, %bb.l
  %.pn = phi { ptr, i32 } [ %eh.lpad-body61, %.body60 ], [ %i.ax, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #35
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.aw, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  br label %bb.el

bb.p:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit66
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %bb.r

bb.q:                                             ; preds = %bb.j, %bb.i
  %.025 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bc = load ptr, ptr %16, align 8, !tbaa !48   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !42
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br i1 %.025, label %bb.r, label %bb.ek

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br i1 %.025, label %bb.r, label %bb.ek

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn45334 = phi { ptr, i32 } [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.au) #35
  br label %bb.ek

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %.preheader
  %.0331 = phi i64 [ %.sroa.speculated, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ 0, %.preheader ] ; 5 uses
  %storemerge = phi i64 [ %i.ns, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ 0, %.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  store ptr %i.ab, ptr %17, align 8, !tbaa !44
  store i64 0, ptr %i.ac, align 8, !tbaa !50
  store i8 0, ptr %i.ab, align 8, !tbaa !42
  %i.bh = invoke ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_T0_SE_SD_(ptr noundef nonnull @.str.10, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 3), ptr nonnull %17)
          to label %.noexc67 unwind label %bb.v

.noexc67:                                         ; preds = %bb.s
  %i.bi = or i64 %storemerge, 1
  %i.bj = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = xor i64 %i.bj, 63
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10.const, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !42  ; 2 uses
  %i.bn = zext i8 %i.bm to i32
  %i.bo = zext i8 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10.const, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !59
  %i.br = icmp ult i64 %storemerge, %i.bq
  %.neg.i.i.i.i.i.i = sext i1 %i.br to i32
  %i.bs = add nsw i32 %.neg.i.i.i.i.i.i, %i.bn    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  %i.bt = icmp ugt i64 %storemerge, 99
  br i1 %i.bt, label %.lr.ph.i16.i.i.i.i.i, label %._crit_edge.i12.i.i.i.i.i

.lr.ph.i16.i.i.i.i.i:                             ; preds = %.noexc67, %.lr.ph.i16.i.i.i.i.i
  %.020.i17.i.i.i.i.i = phi i32 [ %i.bu, %.lr.ph.i16.i.i.i.i.i ], [ %i.bs, %.noexc67 ]
  %.01819.i18.i.i.i.i.i = phi i64 [ %i.cb, %.lr.ph.i16.i.i.i.i.i ], [ %storemerge, %.noexc67 ] ; 3 uses
  %i.bu = add i32 %.020.i17.i.i.i.i.i, -2         ; 3 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bv
  %i.bx = urem i64 %.01819.i18.i.i.i.i.i, 100
  %i.by = shl nuw nsw i64 %i.bx, 1
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2
  store i16 %i.ca, ptr %i.bw, align 1
  %i.cb = udiv i64 %.01819.i18.i.i.i.i.i, 100     ; 2 uses
  %i.cc = icmp ugt i64 %.01819.i18.i.i.i.i.i, 9999
  br i1 %i.cc, label %.lr.ph.i16.i.i.i.i.i, label %._crit_edge.i12.i.i.i.i.i, !llvm.loop !106

._crit_edge.i12.i.i.i.i.i:                        ; preds = %.lr.ph.i16.i.i.i.i.i, %.noexc67
  %.018.lcssa.i13.i.i.i.i.i = phi i64 [ %storemerge, %.noexc67 ], [ %i.cb, %.lr.ph.i16.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i14.i.i.i.i.i = phi i32 [ %i.bs, %.noexc67 ], [ %i.bu, %.lr.ph.i16.i.i.i.i.i ] ; 2 uses
  %i.cd = icmp samesign ugt i64 %.018.lcssa.i13.i.i.i.i.i, 9
  br i1 %i.cd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i12.i.i.i.i.i
  %i.ce = add i32 %.0.lcssa.i14.i.i.i.i.i, -2
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cf
  %i.ch = shl nuw nsw i64 %.018.lcssa.i13.i.i.i.i.i, 1
  %i.ci = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2
  store i16 %i.cj, ptr %i.cg, align 1
  br label %_ZNK3fmt3v116detail6concatINS1_5fieldIcmLi0EEENS1_4textIcEEE6formatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJmEEET_SH_DpRKT0_.exit.i

bb.u:                                             ; preds = %._crit_edge.i12.i.i.i.i.i
  %i.ck = trunc nuw nsw i64 %.018.lcssa.i13.i.i.i.i.i to i8
  %i.cl = or disjoint i8 %i.ck, 48
  %i.cm = add i32 %.0.lcssa.i14.i.i.i.i.i, -1
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cn
  store i8 %i.cl, ptr %i.co, align 1, !tbaa !42
  br label %_ZNK3fmt3v116detail6concatINS1_5fieldIcmLi0EEENS1_4textIcEEE6formatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJmEEET_SH_DpRKT0_.exit.i

_ZNK3fmt3v116detail6concatINS1_5fieldIcmLi0EEENS1_4textIcEEE6formatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJmEEET_SH_DpRKT0_.exit.i: ; preds = %bb.u, %bb.t
  %i.cp = sext i32 %i.bs to i64
  %i.cq = getelementptr inbounds i8, ptr %i.d, i64 %i.cp
  %i.cr = invoke ptr @_ZN3fmt3v116detail13copy_noinlineIcPcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_T0_SD_SC_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.cq, ptr %i.bh)
          to label %.noexc68 unwind label %bb.v

.noexc68:                                         ; preds = %_ZNK3fmt3v116detail6concatINS1_5fieldIcmLi0EEENS1_4textIcEEE6formatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJmEEET_SH_DpRKT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  %i.cs = invoke ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_T0_SE_SD_(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 5), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 11), ptr %i.cr)
          to label %"_ZN3fmt3v116formatIZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvE18FMT_COMPILE_STRINGJRmETnNSt9enable_ifIXsr18is_compiled_stringIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringINSC_9char_typeES5_ISH_ESaISH_EEERKSC_DpOT0_.exit" unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %.noexc68, %_ZNK3fmt3v116detail6concatINS1_5fieldIcmLi0EEENS1_4textIcEEE6formatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJmEEET_SH_DpRKT0_.exit.i, %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %17, align 8, !tbaa !48   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ab
  br i1 %i.cv, label %.body, label %.body.sink.split

"_ZN3fmt3v116formatIZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvE18FMT_COMPILE_STRINGJRmETnNSt9enable_ifIXsr18is_compiled_stringIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringINSC_9char_typeES5_ISH_ESaISH_EEERKSC_DpOT0_.exit": ; preds = %.noexc68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  %i.cw = load ptr, ptr %17, align 8, !tbaa !48
  %i.cx = invoke i32 (i32, ptr, i32, ...) @openat(i32 noundef %i.z, ptr noundef %i.cw, i32 noundef 589824, i32 noundef 0)
          to label %bb.w unwind label %.loopexit354 ; 5 uses

bb.w:                                             ; preds = %"_ZN3fmt3v116formatIZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvE18FMT_COMPILE_STRINGJRmETnNSt9enable_ifIXsr18is_compiled_stringIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringINSC_9char_typeES5_ISH_ESaISH_EEERKSC_DpOT0_.exit"
  store i32 %i.cx, ptr %i.f, align 4, !tbaa !7
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cz = load ptr, ptr %17, align 8, !tbaa !48
  %i.da = load i64, ptr %i.ac, align 8, !tbaa !50
  invoke fastcc void @"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_5clES4_"(i64 %i.da, ptr %i.cz)
          to label %.critedge unwind label %.loopexit.split-lp355

.loopexit354:                                     ; preds = %"_ZN3fmt3v116formatIZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvE18FMT_COMPILE_STRINGJRmETnNSt9enable_ifIXsr18is_compiled_stringIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringINSC_9char_typeES5_ISH_ESaISH_EEERKSC_DpOT0_.exit"
  %lpad.loopexit356 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

.loopexit.split-lp355:                            ; preds = %bb.x
end_hunk_0
begin_hunk_1_@_ZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.fc, label %.body177, label %.body177.sink.split

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit, %bb.al
  %i.fd = phi ptr [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit ], [ %.pre, %bb.al ]
  store i64 %i.eh, ptr %i.aj, align 8, !tbaa !50, !alias.scope !113
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.eh
  store i8 0, ptr %i.fe, align 1, !tbaa !42
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.ff = load ptr, ptr %21, align 8, !tbaa !48, !noalias !116
  %i.fg = invoke i32 (i32, ptr, i32, ...) @openat(i32 noundef %i.cx, ptr noundef %i.ff, i32 noundef 524288, i32 noundef 0)
          to label %.noexc86 unwind label %bb.bn  ; 4 uses

.noexc86:                                         ; preds = %bb.ar
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %.noexc86
  %i.fi = tail call ptr @__errno_location() #40
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !7  ; 2 uses
  %.not.i180 = icmp eq i32 %i.fj, 2
  br i1 %.not.i180, label %.noexc87, label %.noexc.i181

.noexc.i181:                                      ; preds = %bb.as
  %i.fk = load i64, ptr %i.aj, align 8, !tbaa !50, !noalias !116
  %i.fl = load ptr, ptr %21, align 8, !tbaa !48, !noalias !116
  %i.fm = call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.fn = call ptr @strerror(i32 noundef %i.fj) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35, !noalias !119
  store ptr %i.fl, ptr %5, align 16, !tbaa !42
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fk, ptr %i.fo, align 8, !tbaa !42
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.fn, ptr %i.fp, align 16, !tbaa !42, !noalias !119
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.16, i64 37, i64 205, ptr nonnull %5)
          to label %bb.at unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i182

bb.at:                                            ; preds = %.noexc.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !119
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @__cxa_throw(ptr nonnull %i.fm, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
          to label %bb.ax unwind label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i182: ; preds = %.noexc.i181
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0.i183 = phi i1 [ false, %bb.au ], [ true, %bb.at ] ; 2 uses
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fs = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184: ; preds = %bb.av
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !42
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br i1 %.0.i183, label %bb.aw, label %.body88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br i1 %.0.i183, label %bb.aw, label %.body88

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i182
  %.pn5.i = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i182 ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184 ]
  call void @__cxa_free_exception(ptr %i.fm) #35
  br label %.body88

bb.ax:                                            ; preds = %bb.au
  unreachable

.noexc87:                                         ; preds = %bb.as
  store ptr %i.ak, ptr %20, align 8, !tbaa !44, !alias.scope !116
  store i64 0, ptr %i.al, align 8, !tbaa !50, !alias.scope !116
  store i8 0, ptr %i.ak, align 8, !tbaa !42, !alias.scope !116
  br label %"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE.exit"

bb.ay:                                            ; preds = %.noexc86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35, !noalias !116
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %bb.ay
  %i.fx = invoke i64 @pread(i32 noundef %i.fg, ptr noundef nonnull %i.c, i64 noundef 64, i64 noundef 0)
          to label %bb.ba unwind label %bb.bd, !noalias !116 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.fy = and i64 %i.fx, 2147483648
  %.not.i85 = icmp eq i64 %i.fy, 0
  br i1 %.not.i85, label %.critedge.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fz = tail call ptr @__errno_location() #40
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !7, !noalias !116
  %i.gb = icmp eq i32 %i.ga, 4
  br i1 %i.gb, label %bb.az, label %bb.bc, !llvm.loop !122

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.ak, ptr %20, align 8, !tbaa !44, !alias.scope !116
  store i64 0, ptr %i.al, align 8, !tbaa !50, !alias.scope !116
  store i8 0, ptr %i.ak, align 8, !tbaa !42, !alias.scope !116
  br label %bb.bj

bb.bd:                                            ; preds = %bb.az
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.critedge.i:                                      ; preds = %bb.ba
  %i.gd = and i64 %i.fx, 2147483647               ; 7 uses
  store ptr %i.ak, ptr %20, align 8, !tbaa !44, !alias.scope !116
  %i.ge = icmp samesign ugt i64 %i.gd, 15
  br i1 %i.ge, label %bb.be, label %._crit_edge.i.i.i

bb.be:                                            ; preds = %.critedge.i
  %i.gf = add nuw nsw i64 %i.gd, 1
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #37
          to label %.noexc.i unwind label %bb.bi  ; 2 uses

.noexc.i:                                         ; preds = %bb.be
  store ptr %i.gg, ptr %20, align 8, !tbaa !48, !alias.scope !116
  store i64 %i.gd, ptr %i.ak, align 8, !tbaa !42, !alias.scope !116
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %.critedge.i
  %i.gh = phi ptr [ %i.gg, %.noexc.i ], [ %i.ak, %.critedge.i ] ; 3 uses
  switch i64 %i.gd, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %bb.bh
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i.i
  %i.gi = load i8, ptr %i.c, align 64, !tbaa !42, !noalias !116
  store i8 %i.gi, ptr %i.gh, align 1, !tbaa !42
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gh, ptr nonnull align 64 %i.c, i64 %i.gd, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i.i
  store i64 %i.gd, ptr %i.al, align 8, !tbaa !50, !alias.scope !116
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gd
  store i8 0, ptr %i.gj, align 1, !tbaa !42
  br label %bb.bj

bb.bi:                                            ; preds = %bb.be
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35, !noalias !116
  %i.gl = invoke i32 @close(i32 noundef %i.fg)
          to label %"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE.exit" unwind label %bb.bk ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #39
  unreachable

bb.bl:                                            ; preds = %bb.bi, %bb.bd
  %.pn.i = phi { ptr, i32 } [ %i.gk, %bb.bi ], [ %i.gc, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35, !noalias !116
  %i.go = invoke i32 @close(i32 noundef %i.fg)
          to label %.body88 unwind label %bb.bm   ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #39
  unreachable

"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE.exit": ; preds = %bb.bj, %.noexc87
  %i.gr = load ptr, ptr %21, align 8, !tbaa !48   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.ai
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE.exit"
  %i.gt = load i64, ptr %i.ai, align 8, !tbaa !42
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE.exit", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  %i.gv = load i64, ptr %i.al, align 8, !tbaa !50
  %i.gw = icmp eq i64 %i.gv, 0
  %.pre686 = load ptr, ptr %20, align 8, !tbaa !48 ; 3 uses
  br i1 %i.gw, label %bb.dm, label %bb.bo

.loopexit359:                                     ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i, %bb.dp
  %lpad.loopexit361 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.loopexit.split-lp360:                            ; preds = %bb.z
  %lpad.loopexit.split-lp362 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.bn:                                            ; preds = %bb.ar
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body88

.body88:                                          ; preds = %bb.bn, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184, %bb.bl
  %eh.lpad-body89 = phi { ptr, i32 } [ %.pn.i, %bb.bl ], [ %i.gx, %bb.bn ], [ %.pn5.i, %bb.aw ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184 ] ; 2 uses
  %i.gy = load ptr, ptr %21, align 8, !tbaa !48   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.ai
  br i1 %i.gz, label %.body177, label %.body177.sink.split

.body177.sink.split:                              ; preds = %.body88, %bb.aq
  %.sink = phi ptr [ %i.fb, %bb.aq ], [ %i.gy, %.body88 ]
  %.pn30.ph = phi { ptr, i32 } [ %lpad.phi, %bb.aq ], [ %eh.lpad-body89, %.body88 ]
  %i.ha = load i64, ptr %i.ai, align 8, !tbaa !42
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.hb) #38
  br label %.body177

.body177:                                         ; preds = %.body177.sink.split, %.body88, %bb.aq
  %.pn30 = phi { ptr, i32 } [ %lpad.phi, %bb.aq ], [ %eh.lpad-body89, %.body88 ], [ %.pn30.ph, %.body177.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.hc = load i8, ptr %.pre686, align 1, !tbaa !42
  %i.hd = icmp eq i8 %i.hc, 73
  br i1 %i.hd, label %bb.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i288: ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #35
  %i.he = load ptr, ptr %19, align 8, !tbaa !48, !noalias !123 ; 5 uses
  %i.hf = load i64, ptr %i.ag, align 8, !tbaa !50, !noalias !123 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  store ptr %i.am, ptr %23, align 8, !tbaa !44, !alias.scope !126
  store i64 0, ptr %i.an, align 8, !tbaa !50, !alias.scope !126
  store i8 0, ptr %i.am, align 8, !tbaa !42, !alias.scope !126
  %i.hg = add i64 %i.hf, 15                       ; 3 uses
  %.not.i289 = icmp ugt i64 %i.hg, 15
  br i1 %.not.i289, label %bb.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit300

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i288
  %i.hh = icmp slt i64 %i.hg, 0
  br i1 %i.hh, label %.invoke.i201.invoke, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.0.i291 = call i64 @llvm.umax.i64(i64 %i.hg, i64 30) ; 5 uses
  %i.hi = add nuw i64 %.0.i291, 1                 ; 2 uses
  %i.hj = icmp slt i64 %i.hi, 0
  br i1 %i.hj, label %.invoke840, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i292, !prof !47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i292: ; preds = %bb.bq
  %i.hk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hi) #37
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192.thread unwind label %.loopexit344 ; 9 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit300: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i288
  %i.hl = icmp slt i64 %i.hf, 0
  br i1 %i.hl, label %.invoke.i201.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192.thread800

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i292
  store i8 0, ptr %i.hk, align 1, !tbaa !42
  store ptr %i.hk, ptr %23, align 8, !tbaa !48
  store i64 %.0.i291, ptr %i.am, align 8, !tbaa !42
  %.not.i.i.i193338 = icmp ugt i64 %i.hf, %.0.i291
  br i1 %.not.i.i.i193338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i270, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192.thread
  switch i64 %i.hf, label %bb.bs [
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192.thread800
    i64 1, label %bb.br
  ]

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192
  %i.hm = load i8, ptr %i.he, align 1, !tbaa !42, !noalias !126
  store i8 %i.hm, ptr %i.hk, align 1, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192.thread800

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hk, ptr align 1 %i.he, i64 %i.hf, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192.thread800

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i270: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192.thread
  %i.hn = shl nuw i64 %.0.i291, 1                 ; 2 uses
  %i.ho = icmp ult i64 %i.hf, %i.hn
  %spec.store.select.i.i283 = call i64 @llvm.umin.i64(i64 %i.hn, i64 9223372036854775807)
  %.0.i271 = select i1 %i.ho, i64 %spec.store.select.i.i283, i64 %i.hf ; 2 uses
  %i.hp = add nuw i64 %.0.i271, 1                 ; 2 uses
  %i.hq = icmp slt i64 %i.hp, 0
  br i1 %i.hq, label %.invoke840, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i272, !prof !47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i272: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i270
  %i.hr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #37
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i273 unwind label %.loopexit344 ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i273: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i272
  %.not873 = icmp eq ptr %i.he, null
  br i1 %.not873, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit287, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i273
  %cond.i282 = icmp eq i64 %i.hf, 1
  br i1 %cond.i282, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.hs = load i8, ptr %i.he, align 1, !tbaa !42
  store i8 %i.hs, ptr %i.hr, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit287

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hr, ptr nonnull align 1 %i.he, i64 %i.hf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i273, %bb.bu, %bb.bv
  %i.ht = add nuw nsw i64 %.0.i291, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.ht) #38
  store ptr %i.hr, ptr %23, align 8, !tbaa !48
  store i64 %.0.i271, ptr %i.am, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192.thread800

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192.thread800: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit287, %bb.bs, %bb.br
  %i.hu = phi ptr [ %i.hr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit287 ], [ %i.hk, %bb.bs ], [ %i.hk, %bb.br ], [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit300 ]
  store i64 %i.hf, ptr %i.an, align 8, !tbaa !50, !alias.scope !126
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hf
  store i8 0, ptr %i.hv, align 1, !tbaa !42
  %i.hw = load i64, ptr %i.an, align 8, !tbaa !50, !alias.scope !126 ; 10 uses
  %i.hx = icmp sgt i64 %i.hw, 9223372036854775792
  br i1 %i.hx, label %.invoke.i201.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i196

.invoke.i201.invoke:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192.thread800, %bb.bp
  %i.hy = phi ptr [ @.str.8, %bb.bp ], [ @.str.20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit300 ], [ @.str.20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192.thread800 ], [ @.str.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i252 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.hy) #36
          to label %.invoke.i201.cont unwind label %.loopexit.split-lp345

.invoke.i201.cont:                                ; preds = %.invoke.i201.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i196: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i192.thread800
  %i.hz = add nsw i64 %i.hw, 15                   ; 5 uses
  %i.ia = load ptr, ptr %23, align 8, !tbaa !48, !alias.scope !126 ; 6 uses
  %i.ib = icmp eq ptr %i.ia, %i.am                ; 2 uses
  br i1 %i.ib, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11.i197.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11.i197: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i196
  %i.ic = icmp ult i64 %i.hw, 16
  call void @llvm.assume(i1 %i.ic)
  %.not.i.i12.i198.not = icmp eq i64 %i.hw, 0
  br i1 %.not.i.i12.i198.not, label %bb.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i252.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11.i197.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i196
  %i.id = load i64, ptr %i.am, align 8, !alias.scope !126 ; 3 uses
  %.not.i.i12.i198341 = icmp ugt i64 %i.hz, %i.id
  br i1 %.not.i.i12.i198341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i252, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11.i197.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11.i197
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ie, ptr noundef nonnull align 1 dereferenceable(15) @.str.6, i64 15, i1 false)
  %.pre683 = load ptr, ptr %23, align 8, !tbaa !48, !alias.scope !126
  br label %bb.cb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i252.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11.i197
  %i.if = load i64, ptr %i.am, align 8, !alias.scope !126
  br label %bb.bx

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i252: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11.i197.thread
  %i.ig = icmp slt i64 %i.hw, -15
  br i1 %i.ig, label %.invoke.i201.invoke, label %bb.bx

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i252.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i252
  %i.ih = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i252.thread ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i252 ]
  %i.ii = phi i64 [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i252.thread ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i252 ]
  %i.ij = shl nuw i64 %i.ih, 1                    ; 2 uses
  %i.ik = icmp ult i64 %i.hz, %i.ij
  %spec.store.select.i.i265 = call i64 @llvm.umin.i64(i64 %i.ij, i64 9223372036854775807)
  %.0.i253 = select i1 %i.ik, i64 %spec.store.select.i.i265, i64 %i.hz ; 2 uses
  %i.il = add nuw i64 %.0.i253, 1                 ; 2 uses
  %i.im = icmp slt i64 %i.il, 0
  br i1 %i.im, label %.invoke840, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i254, !prof !47

.invoke840:                                       ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i270, %bb.bq
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.cont841 unwind label %.loopexit.split-lp345

.cont841:                                         ; preds = %.invoke840
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i254: ; preds = %bb.bx
  %i.in = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.il) #37
          to label %.noexc268 unwind label %.loopexit344 ; 5 uses

.noexc268:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i254
  switch i64 %i.hw, label %bb.bz [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i255
    i64 1, label %bb.by
  ]

bb.by:                                            ; preds = %.noexc268
  %i.io = load i8, ptr %i.ia, align 1, !tbaa !42
  store i8 %i.io, ptr %i.in, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i255

bb.bz:                                            ; preds = %.noexc268
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.in, ptr align 1 %i.ia, i64 %i.hw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i255: ; preds = %bb.bz, %bb.by, %.noexc268
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ip, ptr noundef nonnull align 1 dereferenceable(15) @.str.6, i64 15, i1 false)
  br i1 %i.ib, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i255
  %i.iq = icmp ult i64 %i.hw, 16
  call void @llvm.assume(i1 %i.iq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i255
  %i.ir = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ir) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit269: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  store ptr %i.in, ptr %23, align 8, !tbaa !48
  store i64 %.0.i253, ptr %i.am, align 8, !tbaa !42
  br label %bb.cb

.loopexit344:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i292
  %i.is = phi ptr [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i254 ], [ %i.hk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i272 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i292 ]
  %lpad.loopexit346 = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.iu = icmp eq ptr %i.it, %i.am
  br i1 %i.iu, label %.body203, label %.body203.sink.split

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit269, %bb.bw
  %i.iv = phi ptr [ %i.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit269 ], [ %.pre683, %bb.bw ]
  store i64 %i.hz, ptr %i.an, align 8, !tbaa !50, !alias.scope !126
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.hz
  store i8 0, ptr %i.iw, align 1, !tbaa !42
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.ix = load ptr, ptr %23, align 8, !tbaa !48, !noalias !129
  %i.iy = invoke i32 (i32, ptr, i32, ...) @openat(i32 noundef %i.cx, ptr noundef %i.ix, i32 noundef 524288, i32 noundef 0)
          to label %.noexc103 unwind label %bb.cx ; 4 uses

.noexc103:                                        ; preds = %bb.cb
  %i.iz = icmp slt i32 %i.iy, 0
  br i1 %i.iz, label %bb.cc, label %bb.ci

bb.cc:                                            ; preds = %.noexc103
  %i.ja = tail call ptr @__errno_location() #40
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !7  ; 2 uses
  %.not.i208 = icmp eq i32 %i.jb, 2
  br i1 %.not.i208, label %.noexc104, label %.noexc.i209

.noexc.i209:                                      ; preds = %bb.cc
  %i.jc = load i64, ptr %i.an, align 8, !tbaa !50, !noalias !129
  %i.jd = load ptr, ptr %23, align 8, !tbaa !48, !noalias !129
  %i.je = call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.jf = call ptr @strerror(i32 noundef %i.jb) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35, !noalias !132
  store ptr %i.jd, ptr %3, align 16, !tbaa !42
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.jc, ptr %i.jg, align 8, !tbaa !42
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.jf, ptr %i.jh, align 16, !tbaa !42, !noalias !132
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.16, i64 37, i64 205, ptr nonnull %3)
          to label %bb.cd unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i210

bb.cd:                                            ; preds = %.noexc.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35, !noalias !132
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.je, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  invoke void @__cxa_throw(ptr nonnull %i.je, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
          to label %bb.ch unwind label %bb.cf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i210: ; preds = %.noexc.i209
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0.i213 = phi i1 [ false, %bb.ce ], [ true, %bb.cd ] ; 2 uses
  %i.jj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jk = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214: ; preds = %bb.cf
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !42
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br i1 %.0.i213, label %bb.cg, label %.body105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br i1 %.0.i213, label %bb.cg, label %.body105

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i210
  %.pn5.i211 = phi { ptr, i32 } [ %i.ji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i210 ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215 ], [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214 ]
  call void @__cxa_free_exception(ptr %i.je) #35
  br label %.body105

bb.ch:                                            ; preds = %bb.ce
  unreachable

.noexc104:                                        ; preds = %bb.cc
  store ptr %i.ao, ptr %22, align 8, !tbaa !44, !alias.scope !129
  store i64 0, ptr %i.ap, align 8, !tbaa !50, !alias.scope !129
  store i8 0, ptr %i.ao, align 8, !tbaa !42, !alias.scope !129
  br label %"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE.exit107"

bb.ci:                                            ; preds = %.noexc103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35, !noalias !129
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %bb.ci
  %i.jp = invoke i64 @pread(i32 noundef %i.iy, ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 0)
          to label %bb.ck unwind label %bb.cn, !noalias !129 ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %i.jq = and i64 %i.jp, 2147483648
  %.not.i99 = icmp eq i64 %i.jq, 0
  br i1 %.not.i99, label %.critedge.i100, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jr = tail call ptr @__errno_location() #40
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !7, !noalias !129
  %i.jt = icmp eq i32 %i.js, 4
  br i1 %i.jt, label %bb.cj, label %bb.cm, !llvm.loop !122

bb.cm:                                            ; preds = %bb.cl
  store ptr %i.ao, ptr %22, align 8, !tbaa !44, !alias.scope !129
  store i64 0, ptr %i.ap, align 8, !tbaa !50, !alias.scope !129
  store i8 0, ptr %i.ao, align 8, !tbaa !42, !alias.scope !129
  br label %bb.ct

bb.cn:                                            ; preds = %bb.cj
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.critedge.i100:                                   ; preds = %bb.ck
  %i.jv = and i64 %i.jp, 2147483647               ; 7 uses
  store ptr %i.ao, ptr %22, align 8, !tbaa !44, !alias.scope !129
  %i.jw = icmp samesign ugt i64 %i.jv, 15
  br i1 %i.jw, label %bb.co, label %._crit_edge.i.i.i101

bb.co:                                            ; preds = %.critedge.i100
  %i.jx = add nuw nsw i64 %i.jv, 1
  %i.jy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jx) #37
          to label %.noexc.i102 unwind label %bb.cs ; 2 uses

.noexc.i102:                                      ; preds = %bb.co
  store ptr %i.jy, ptr %22, align 8, !tbaa !48, !alias.scope !129
  store i64 %i.jv, ptr %i.ao, align 8, !tbaa !42, !alias.scope !129
  br label %._crit_edge.i.i.i101

._crit_edge.i.i.i101:                             ; preds = %.noexc.i102, %.critedge.i100
  %i.jz = phi ptr [ %i.jy, %.noexc.i102 ], [ %i.ao, %.critedge.i100 ] ; 3 uses
  switch i64 %i.jv, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %bb.cr
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i.i101
  %i.ka = load i8, ptr %i.b, align 64, !tbaa !42, !noalias !129
  store i8 %i.ka, ptr %i.jz, align 1, !tbaa !42
  br label %bb.cr

bb.cq:                                            ; preds = %._crit_edge.i.i.i101
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jz, ptr nonnull align 64 %i.b, i64 %i.jv, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i.i101
  store i64 %i.jv, ptr %i.ap, align 8, !tbaa !50, !alias.scope !129
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jv
  store i8 0, ptr %i.kb, align 1, !tbaa !42
  br label %bb.ct

bb.cs:                                            ; preds = %bb.co
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.ct:                                            ; preds = %bb.cr, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35, !noalias !129
  %i.kd = invoke i32 @close(i32 noundef %i.iy)
          to label %"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE.exit107" unwind label %bb.cu ; 0 uses

bb.cu:                                            ; preds = %bb.ct
  %i.ke = landingpad { ptr, i32 }
          catch ptr null
  %i.kf = extractvalue { ptr, i32 } %i.ke, 0
  call void @__clang_call_terminate(ptr %i.kf) #39
  unreachable

bb.cv:                                            ; preds = %bb.cs, %bb.cn
  %.pn.i98 = phi { ptr, i32 } [ %i.kc, %bb.cs ], [ %i.ju, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35, !noalias !129
  %i.kg = invoke i32 @close(i32 noundef %i.iy)
          to label %.body105 unwind label %bb.cw  ; 0 uses

bb.cw:                                            ; preds = %bb.cv
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #39
  unreachable

"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE.exit107": ; preds = %bb.ct, %.noexc104
  %i.kj = load ptr, ptr %23, align 8, !tbaa !48   ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.am
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE.exit107"
  %i.kl = load i64, ptr %i.am, align 8, !tbaa !42
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE.exit107", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  %i.kn = load i64, ptr %i.ap, align 8, !tbaa !50
  %i.ko = icmp eq i64 %i.kn, 0
  br i1 %i.ko, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.cy

bb.cx:                                            ; preds = %bb.cb
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %.body105

.body105:                                         ; preds = %bb.cx, %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214, %bb.cv
  %eh.lpad-body106 = phi { ptr, i32 } [ %.pn.i98, %bb.cv ], [ %i.kp, %bb.cx ], [ %.pn5.i211, %bb.cg ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215 ], [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214 ] ; 2 uses
  %i.kq = load ptr, ptr %23, align 8, !tbaa !48   ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.am
  br i1 %i.kr, label %.body203, label %.body203.sink.split

.body203.sink.split:                              ; preds = %.body105, %bb.ca
  %.sink876 = phi ptr [ %i.it, %bb.ca ], [ %i.kq, %.body105 ]
  %.pn32.ph = phi { ptr, i32 } [ %lpad.phi348, %bb.ca ], [ %eh.lpad-body106, %.body105 ]
  %i.ks = load i64, ptr %i.am, align 8, !tbaa !42
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %.sink876, i64 noundef %i.kt) #38
  br label %.body203

.body203:                                         ; preds = %.body203.sink.split, %.body105, %bb.ca
  %.pn32 = phi { ptr, i32 } [ %lpad.phi348, %bb.ca ], [ %eh.lpad-body106, %.body105 ], [ %.pn32.ph, %.body203.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.cy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %25 = load ptr, ptr %22, align 8, !tbaa !48     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.ku = call i64 @__isoc23_strtoul(ptr noundef %25, ptr noundef nonnull %i.a, i32 noundef 10) #35 ; 2 uses
  %i.kv = load ptr, ptr %i.a, align 8, !tbaa !135 ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %25
  br i1 %i.kw, label %.noexc.i114, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kx = load i8, ptr %i.kv, align 1, !tbaa !42
  switch i8 %i.kx, label %.noexc.i114 [
    i8 44, label %bb.dg
    i8 45, label %bb.dg
    i8 10, label %bb.dg
    i8 0, label %bb.dg
  ]

.noexc.i114:                                      ; preds = %bb.cz, %bb.cy
  %i.ky = call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !136
  %i.kz = load ptr, ptr %22, align 8, !tbaa !48
  %i.la = load i64, ptr %i.ap, align 8, !tbaa !50
  store ptr %i.kz, ptr %7, align 16, !tbaa !42
  %i.lb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.la, ptr %i.lb, align 8, !tbaa !42
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.21, i64 23, i64 13, ptr nonnull %7)
          to label %bb.da unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.da:                                            ; preds = %.noexc.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !136
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ky, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  invoke void @__cxa_throw(ptr nonnull %i.ky, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
          to label %bb.df unwind label %bb.dc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.noexc.i114
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.dd

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.0.i = phi i1 [ false, %bb.db ], [ true, %bb.da ] ; 2 uses
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.le = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115: ; preds = %bb.dc
  %i.lh = load i64, ptr %i.lf, align 8, !tbaa !42
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.li) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br i1 %.0.i, label %bb.dd, label %bb.de

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br i1 %.0.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn19.i = phi { ptr, i32 } [ %i.lc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ld, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ld, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115 ]
  call void @__cxa_free_exception(ptr %i.ky) #35
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115
  %.pn18.i = phi { ptr, i32 } [ %.pn19.i, %bb.dd ], [ %i.ld, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ld, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %.body116

bb.df:                                            ; preds = %bb.db
  unreachable

bb.dg:                                            ; preds = %bb.cz, %bb.cz, %bb.cz, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.lj = load ptr, ptr %i.ad, align 8, !tbaa !60 ; 4 uses
  %i.lk = load ptr, ptr %i.ae, align 8, !tbaa !58
  %.not.i118 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not.i118, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store i64 %i.ku, ptr %i.lj, align 8, !tbaa !59
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store ptr %i.ll, ptr %i.ad, align 8, !tbaa !60
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.di:                                            ; preds = %bb.dg
  %i.lm = load ptr, ptr %18, align 8, !tbaa !55   ; 4 uses
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 6 uses
  %i.lq = icmp eq i64 %i.lp, 9223372036854775800
  br i1 %i.lq, label %bb.dj, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #36
          to label %.noexc120 unwind label %.loopexit.split-lp350

.noexc120:                                        ; preds = %bb.dj
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.di
  %i.lr = ashr exact i64 %i.lp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.lr, i64 1)
  %i.ls = add nsw i64 %.sroa.speculated.i.i.i, %i.lr ; 2 uses
  %i.lt = icmp ult i64 %i.ls, %i.lr
  %i.lu = call i64 @llvm.umin.i64(i64 %i.ls, i64 1152921504606846975)
  %i.lv = select i1 %i.lt, i64 1152921504606846975, i64 %i.lu ; 3 uses
  %.not.i.i.i119 = icmp ne i64 %i.lv, 0
  call void @llvm.assume(i1 %.not.i.i.i119)
  %i.lw = shl nuw nsw i64 %i.lv, 3
  %i.lx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lw) #37
          to label %.noexc121 unwind label %.loopexit349 ; 4 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 %i.lp ; 2 uses
  store i64 %i.ku, ptr %i.ly, align 8, !tbaa !59
  %i.lz = icmp sgt i64 %i.lp, 0
  br i1 %i.lz, label %bb.dk, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.dk:                                            ; preds = %.noexc121
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lx, ptr align 8 %i.lm, i64 %i.lp, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.dk, %.noexc121
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %.not.i17.i.i = icmp eq ptr %i.lm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.lp) #38
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.dl, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.lx, ptr %18, align 8, !tbaa !55
  store ptr %i.ma, ptr %i.ad, align 8, !tbaa !60
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.lv
  store ptr %i.mb, ptr %i.ae, align 8, !tbaa !58
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.dh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %.0 = phi i32 [ 5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ 0, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ 0, %bb.dh ]
  %i.mc = load ptr, ptr %22, align 8, !tbaa !48   ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.ao
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.me = load i64, ptr %i.ao, align 8, !tbaa !42
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  %.pre685 = load ptr, ptr %20, align 8, !tbaa !48
  br label %bb.dm

bb.dm:                                            ; preds = %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %26 = phi ptr [ %.pre685, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %.pre686, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.pre686, %bb.bo ] ; 2 uses
  %.1 = phi i32 [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ 5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ 7, %bb.bo ]
  %27 = icmp eq ptr %26, %i.ak
  br i1 %27, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.dm
  %i.mg = load i64, ptr %i.ak, align 8, !tbaa !42
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %26, i64 noundef %i.mh) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  %i.mi = load ptr, ptr %19, align 8, !tbaa !48   ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.af
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.mk = load i64, ptr %i.af, align 8, !tbaa !42
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  switch i32 %.1, label %28 [
    i32 0, label %bb.dn
    i32 7, label %bb.dn
  ]

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.mm = load i64, ptr %i.g, align 8, !tbaa !59
  %i.mn = add i64 %i.mm, 1
  br label %bb.ab, !llvm.loop !139

.loopexit349:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit351 = landingpad { ptr, i32 }
          cleanup
  br label %.body116

.loopexit.split-lp350:                            ; preds = %bb.dj
  %lpad.loopexit.split-lp352 = landingpad { ptr, i32 }
          cleanup
  br label %.body116

.body116:                                         ; preds = %.loopexit349, %.loopexit.split-lp350, %bb.de
  %eh.lpad-body117 = phi { ptr, i32 } [ %.pn18.i, %bb.de ], [ %lpad.loopexit351, %.loopexit349 ], [ %lpad.loopexit.split-lp352, %.loopexit.split-lp350 ] ; 2 uses
  %i.mo = load ptr, ptr %22, align 8, !tbaa !48   ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.ao
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %.body116
  %i.mq = load i64, ptr %i.ao, align 8, !tbaa !42
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %.body116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %.body203
  %.pn34 = phi { ptr, i32 } [ %.pn32, %.body203 ], [ %eh.lpad-body117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %eh.lpad-body117, %.body116 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  %i.ms = load ptr, ptr %20, align 8, !tbaa !48   ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.ak
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.mu = load i64, ptr %i.ak, align 8, !tbaa !42
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134, %.body177
  %.pn34.pn = phi { ptr, i32 } [ %.pn30, %.body177 ], [ %.pn34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  %i.mw = load ptr, ptr %19, align 8, !tbaa !48   ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.af
  br i1 %i.mx, label %.body49, label %.body49.sink.split

.body49.sink.split:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %bb.ac
  %.sink879 = phi ptr [ %i.di, %bb.ac ], [ %i.mw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ]
  %.pn34.pn.pn.ph = phi { ptr, i32 } [ %i.dh, %bb.ac ], [ %.pn34.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ]
  %i.my = load i64, ptr %i.af, align 8, !tbaa !42
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %.sink879, i64 noundef %i.mz) #38
  br label %.body49

.body49:                                          ; preds = %.body49.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %bb.ac
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.ac ], [ %.pn34.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %.pn34.pn.pn.ph, %.body49.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #35
  br label %bb.dt

28:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #35
  %29 = load ptr, ptr %i.ad, align 8, !tbaa !60   ; 3 uses
  %30 = load ptr, ptr %18, align 8, !tbaa !55     ; 4 uses
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 3
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.0331, i64 %34)
  %.not = icmp eq ptr %30, %29                    ; 2 uses
  br i1 %.not, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, label %bb.do

bb.do:                                            ; preds = %28
  %i.na = load ptr, ptr %i.aq, align 8, !tbaa !64 ; 6 uses
  %i.nb = load ptr, ptr %i.ar, align 8, !tbaa !65
  %.not.i140 = icmp eq ptr %i.na, %i.nb
  br i1 %.not.i140, label %bb.dp, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread

_ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread: ; preds = %bb.do
  store ptr %30, ptr %i.na, align 8, !tbaa !55
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store ptr %29, ptr %i.nc, align 8, !tbaa !60
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.ne = load ptr, ptr %i.ae, align 8, !tbaa !58
  store ptr %i.ne, ptr %i.nd, align 8, !tbaa !58
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  store ptr %i.nf, ptr %i.aq, align 8, !tbaa !64
  br label %bb.dr

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.na, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %._ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exitthread-pre-split_crit_edge unwind label %.loopexit359

._ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exitthread-pre-split_crit_edge: ; preds = %bb.dp
  %.pr343.pre = load ptr, ptr %18, align 8, !tbaa !55
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %28, %._ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exitthread-pre-split_crit_edge
  %i.ng = phi ptr [ %30, %28 ], [ %.pr343.pre, %._ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exitthread-pre-split_crit_edge ] ; 3 uses
  %.not.i.i.i142 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i142, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.nh = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = ptrtoint ptr %i.ng to i64
  %i.nk = sub i64 %i.ni, %i.nj
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.nk) #38
  br label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread, %bb.dq, %_ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  %i.nl = invoke i32 @close(i32 noundef %i.cx)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEE3$_4Lb1EED2Ev.exit" unwind label %bb.ds ; 0 uses

bb.ds:                                            ; preds = %bb.dr
  %i.nm = landingpad { ptr, i32 }
          catch ptr null
  %i.nn = extractvalue { ptr, i32 } %i.nm, 0
  call void @__clang_call_terminate(ptr %i.nn) #39
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS_13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEE3$_4Lb1EED2Ev.exit": ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  %i.no = load ptr, ptr %17, align 8, !tbaa !48   ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.ab
  br i1 %i.np, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %"_ZN5folly6detail14ScopeGuardImplIZNS_13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEE3$_4Lb1EED2Ev.exit"
  %i.nq = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.nr) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %"_ZN5folly6detail14ScopeGuardImplIZNS_13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEE3$_4Lb1EED2Ev.exit", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  %i.ns = add i64 %storemerge, 1
  br i1 %.not, label %.loopexit364, label %bb.s, !llvm.loop !140

bb.dt:                                            ; preds = %.loopexit359, %.loopexit.split-lp360, %.body49
  %.pn38 = phi { ptr, i32 } [ %.pn34.pn.pn, %.body49 ], [ %lpad.loopexit361, %.loopexit359 ], [ %lpad.loopexit.split-lp362, %.loopexit.split-lp360 ]
  %i.nt = load ptr, ptr %18, align 8, !tbaa !55   ; 3 uses
  %.not.i.i.i146 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i.i146, label %_ZNSt6vectorImSaImEED2Ev.exit147, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.nu = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.nv = ptrtoint ptr %i.nu to i64
  %i.nw = ptrtoint ptr %i.nt to i64
  %i.nx = sub i64 %i.nv, %i.nw
  call void @_ZdlPvm(ptr noundef nonnull %i.nt, i64 noundef %i.nx) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit147

_ZNSt6vectorImSaImEED2Ev.exit147:                 ; preds = %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  call fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEE3$_4Lb1EED2Ev"(i8 0, ptr nonnull %i.f) #35
  br label %bb.dv

bb.dv:                                            ; preds = %.loopexit354, %.loopexit.split-lp355, %_ZNSt6vectorImSaImEED2Ev.exit147
  %.pn40 = phi { ptr, i32 } [ %.pn38, %_ZNSt6vectorImSaImEED2Ev.exit147 ], [ %lpad.loopexit356, %.loopexit354 ], [ %lpad.loopexit.split-lp357, %.loopexit.split-lp355 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  %i.ny = load ptr, ptr %17, align 8, !tbaa !48   ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.ab
  br i1 %i.nz, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.dv, %bb.v
  %.sink882 = phi ptr [ %i.cu, %bb.v ], [ %i.ny, %bb.dv ]
  %.pn40.pn.ph = phi { ptr, i32 } [ %i.ct, %bb.v ], [ %.pn40, %bb.dv ]
  %i.oa = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %.sink882, i64 noundef %i.ob) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.dv, %bb.v
  %.pn40.pn = phi { ptr, i32 } [ %i.ct, %bb.v ], [ %.pn40, %bb.dv ], [ %.pn40.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  br label %bb.ej

.critedge:                                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  %i.oc = load ptr, ptr %17, align 8, !tbaa !48   ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.ab
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %.critedge
  %i.oe = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.of) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  br label %.loopexit364

.loopexit364:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.og = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.oh = load ptr, ptr %i.aq, align 8, !tbaa !89 ; 2 uses
  %i.oi = icmp eq ptr %i.og, %i.oh
  br i1 %i.oi, label %bb.dw, label %bb.ea

bb.dw:                                            ; preds = %.loopexit364
  %i.oj = call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.oj, ptr noundef nonnull @.str.7)
          to label %bb.dx unwind label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  invoke void @__cxa_throw(ptr nonnull %i.oj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
          to label %bb.em unwind label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.oj) #35
  br label %bb.ej

bb.dz:                                            ; preds = %bb.dx
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.ea:                                            ; preds = %.loopexit364
  store ptr %i.og, ptr %24, align 8, !tbaa !61
  %i.om = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store ptr %i.oh, ptr %i.om, align 8, !tbaa !64
  %i.on = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.oo = load ptr, ptr %i.ar, align 8, !tbaa !65
  store ptr %i.oo, ptr %i.on, align 8, !tbaa !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN5folly13CacheLocalityC1ESt6vectorIS1_ImSaImEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %24)
          to label %bb.eb unwind label %bb.ei

bb.eb:                                            ; preds = %bb.ea
  %i.op = load ptr, ptr %24, align 8, !tbaa !61   ; 3 uses
  %i.oq = load ptr, ptr %i.om, align 8, !tbaa !64 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.op, %i.oq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.eb, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ox, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i ], [ %i.op, %bb.eb ] ; 3 uses
  %i.or = load ptr, ptr %.05.i.i.i, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.or, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph.i.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !58
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = ptrtoint ptr %i.or to i64
  %i.ow = sub i64 %i.ou, %i.ov
  call void @_ZdlPvm(ptr noundef nonnull %i.or, i64 noundef %i.ow) #38
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i:  ; preds = %bb.ec, %.lr.ph.i.i.i
  %i.ox = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i154 = icmp eq ptr %i.ox, %i.oq
  br i1 %.not.i.i.i154, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !66

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %24, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.eb
  %i.oy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.op, %bb.eb ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.oy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit, label %bb.ed

bb.ed:                                            ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i
  %i.oz = load ptr, ptr %i.on, align 8, !tbaa !65
  %i.pa = ptrtoint ptr %i.oz to i64
  %i.pb = ptrtoint ptr %i.oy to i64
  %i.pc = sub i64 %i.pa, %i.pb
  call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef %i.pc) #38
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit:         ; preds = %bb.ed, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i
  %i.pd = invoke i32 @close(i32 noundef %i.z)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEE3$_3Lb1EED2Ev.exit" unwind label %bb.ee ; 0 uses

bb.ee:                                            ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit
  %i.pe = landingpad { ptr, i32 }
          catch ptr null
  %i.pf = extractvalue { ptr, i32 } %i.pe, 0
  call void @__clang_call_terminate(ptr %i.pf) #39
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS_13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEE3$_3Lb1EED2Ev.exit": ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  %i.pg = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !101 ; 2 uses
  %.not.i.i.i156 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i156, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i157, label %bb.ef

bb.ef:                                            ; preds = %"_ZN5folly6detail14ScopeGuardImplIZNS_13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEE3$_3Lb1EED2Ev.exit"
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.pg, ptr noundef nonnull %i.ph) #35
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i157

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i157: ; preds = %bb.ef, %"_ZN5folly6detail14ScopeGuardImplIZNS_13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEE3$_3Lb1EED2Ev.exit"
  %i.pi = load ptr, ptr %13, align 8, !tbaa !48   ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
end_hunk_2
