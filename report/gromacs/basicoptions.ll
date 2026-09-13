Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/basicoptions?download=true
inline.NumInlined: 6252
inline.NumDeleted: 2968
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3gmx20IntegerOptionStorage13initConverterEPNS_26OptionValueConverterSimpleIiEE:_ZNSt8functionIFiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %_ZNSt8functionIFiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i3 = icmp eq ptr %i.i, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFiRKT_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef align 8 %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.427", align 16 ; 10 uses
  %3 = alloca %class.anon.443, align 8            ; 14 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !53
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !53
  br label %_ZNSt8functionIFiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZZN3gmx26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFiRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8
  %common.resume.op = phi { ptr, i32 } [ %i.af, %_ZZN3gmx26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFiRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8 ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit: ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %4, align 8, !tbaa !60
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapISt10type_indexSt8functionIFiRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.n       ; 4 uses

bb.g:                                             ; preds = %_ZNSt8functionIFiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %.noexc unwind label %bb.n     ; 5 uses

.noexc:                                           ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !113
  store ptr %i.q, ptr %i.p, align 8, !tbaa !113
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZNSt8functionIFiRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFiRKT_EEEUlS3_E_vEEOSG_.exit.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.r, ptr %i.s, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFiRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFiRKT_EEEUlS3_E_vEEOSG_.exit.i

_ZNSt8functionIFiRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFiRKT_EEEUlS3_E_vEEOSG_.exit.i: ; preds = %bb.h, %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.o, ptr %2, align 16, !tbaa !53
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 16, i1 false), !tbaa.struct !61
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.l, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53   ; 3 uses
  store ptr %i.v, ptr %i.m, align 16, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFiRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFiRKT_EEEUlS3_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.u, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  store ptr %i.x, ptr %i.t, align 8, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFiRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFiRKT_EEEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.w, align 8, !tbaa !53
  %.not.i.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i.i2, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFiRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFiRKT_EEEUlS3_E_vEEOSG_.exit.i
  %i.y = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

bb.k:                                             ; preds = %bb.i, %_ZNSt8functionIFiRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFiRKT_EEEUlS3_E_vEEOSG_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i4, label %_ZZN3gmx26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFiRKT_EEENUlRKNS_3AnyEE_D2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN3gmx26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFiRKT_EEENUlRKNS_3AnyEE_D2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #26
  unreachable

_ZZN3gmx26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFiRKT_EEENUlRKNS_3AnyEE_D2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.n:                                             ; preds = %bb.g, %_ZNSt8functionIFiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i6, label %_ZZN3gmx26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFiRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN3gmx26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFiRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZZN3gmx26OptionValueConverterSimpleIiE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFiRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef i32 @_ZN3gmxL13fromStdStringIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = tail call noundef i32 @_ZN3gmx13intFromStringEPKc(ptr noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx20IntegerOptionStorage16processSetValuesEPSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 6 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !114
  %i.c = and i64 %i.b, 256
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !115  ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_112expandVectorIiEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !117    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117  ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN12_GLOBAL__N_112expandVectorIiEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %.not20.i = icmp eq i64 %i.n, %i.f
  br i1 %.not20.i, label %_ZN12_GLOBAL__N_112expandVectorIiEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not21.i = icmp eq i64 %i.m, 4
  br i1 %.not21.i, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !119
  %i.q = load ptr, ptr %1, align 8, !tbaa !120
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.46, i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef %i.u)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %.thread.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112expandVectorIiEEvmPSt6vectorIT_SaIS2_EE, ptr %i.v, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.6, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 104, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.o, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr %i.o, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.r unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %.013.i = phi i1 [ false, %bb.j ], [ true, %bb.i ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.y, %bb.l ], [ %i.x, %bb.k ] ; 4 uses
  %.114.i = phi i1 [ %.013.i, %bb.l ], [ true, %bb.k ] ; 2 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  %i.z = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.thread.i:                                        ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %.sink.split.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i: ; preds = %.thread.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !52
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.aj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.114.i, label %bb.n, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.114.i, label %bb.n, label %bb.q

.sink.split.i:                                    ; preds = %.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn.pn.pn28.ph.i = phi { ptr, i32 } [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ac, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn28.i = phi { ptr, i32 } [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn.pn28.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.o) #27
  br label %bb.q

bb.o:                                             ; preds = %bb.e
  %i.ak = icmp ult i64 %i.n, %i.f
  br i1 %i.ak, label %bb.p, label %_ZN12_GLOBAL__N_112expandVectorIiEEvmPSt6vectorIT_SaIS2_EE.exit

bb.p:                                             ; preds = %bb.o
  %i.al = sub nuw nsw i64 %i.f, %i.n
  tail call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, i64 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  br label %_ZN12_GLOBAL__N_112expandVectorIiEEvmPSt6vectorIT_SaIS2_EE.exit

bb.q:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn27.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn.pn28.i, %bb.n ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn.pn.pn27.i

bb.r:                                             ; preds = %bb.j
  unreachable

_ZN12_GLOBAL__N_112expandVectorIiEEvmPSt6vectorIT_SaIS2_EE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.s

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_112expandVectorIiEEvmPSt6vectorIT_SaIS2_EE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx17IntegerOptionInfoC2EPNS_20IntegerOptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoC2EPNS_21AbstractOptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx17IntegerOptionInfoE, i64 16), ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK3gmx13IntegerOption13createStorageERKNS_22OptionManagerContainerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree nonnull readnone align 1 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #28 ; 13 uses
  invoke void @_ZN3gmx21OptionStorageTemplateIiEC2INS_13IntegerOptionEEERKNS_14OptionTemplateIiT_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 0)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr null, ptr %i.c, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.b, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.b, ptr %i.e, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i64 0, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i8 0, ptr %i.g, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN3gmx20IntegerOptionStorageE, i64 16), ptr %i.a, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  invoke void @_ZN3gmx17IntegerOptionInfoC1EPNS_20IntegerOptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(216) %i.a)
          to label %_ZN3gmx20IntegerOptionStorageC2ERKNS_13IntegerOptionE.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN3gmx27OptionStorageTemplateSimpleIiED2Ev(ptr noundef nonnull align 8 dead_on_return(193) dereferenceable(216) %i.a) #27
  br label %.body

_ZN3gmx20IntegerOptionStorageC2ERKNS_13IntegerOptionE.exit: ; preds = %.noexc
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 216) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx28UnsignedIntegerOptionStorage17formatSingleValueB5cxx11ERKj(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !111
  tail call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull @.str.26, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx28UnsignedIntegerOptionStorage13initConverterEPNS_26OptionValueConverterSimpleIjEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit:
  %2 = alloca %"class.std::function.55", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr @_ZN3gmxL13fromStdStringIjEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %2, align 8, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS8_E9_M_invokeERKSt9_Any_dataS7_, ptr %i.b, align 8, !tbaa !146
  store ptr @_ZNSt17_Function_handlerIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.c, align 8, !tbaa !57
  invoke void @_ZN3gmx26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFjRKT_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 %2)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i2 = icmp eq ptr %i.d, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i3 = icmp eq ptr %i.i, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFjRKT_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef align 8 %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.328", align 16 ; 10 uses
  %3 = alloca %class.anon.449, align 8            ; 14 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !53
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !53
  br label %_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZZN3gmx26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFjRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8
  %common.resume.op = phi { ptr, i32 } [ %i.af, %_ZZN3gmx26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFjRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8 ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit: ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %4, align 8, !tbaa !60
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapISt10type_indexSt8functionIFjRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.n       ; 4 uses

bb.g:                                             ; preds = %_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %.noexc unwind label %bb.n     ; 5 uses

.noexc:                                           ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !146
  store ptr %i.q, ptr %i.p, align 8, !tbaa !146
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZNSt8functionIFjRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFjRKT_EEEUlS3_E_vEEOSG_.exit.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.r, ptr %i.s, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFjRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFjRKT_EEEUlS3_E_vEEOSG_.exit.i

_ZNSt8functionIFjRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFjRKT_EEEUlS3_E_vEEOSG_.exit.i: ; preds = %bb.h, %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.o, ptr %2, align 16, !tbaa !53
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 16, i1 false), !tbaa.struct !61
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.l, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53   ; 3 uses
  store ptr %i.v, ptr %i.m, align 16, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFjRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFjRKT_EEEUlS3_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.u, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  store ptr %i.x, ptr %i.t, align 8, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFjRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFjRKT_EEEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.w, align 8, !tbaa !53
  %.not.i.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i.i2, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFjRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFjRKT_EEEUlS3_E_vEEOSG_.exit.i
  %i.y = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

bb.k:                                             ; preds = %bb.i, %_ZNSt8functionIFjRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFjRKT_EEEUlS3_E_vEEOSG_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i4, label %_ZZN3gmx26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFjRKT_EEENUlRKNS_3AnyEE_D2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN3gmx26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFjRKT_EEENUlRKNS_3AnyEE_D2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #26
  unreachable

_ZZN3gmx26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFjRKT_EEENUlRKNS_3AnyEE_D2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.n:                                             ; preds = %bb.g, %_ZNSt8functionIFjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i6, label %_ZZN3gmx26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFjRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN3gmx26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFjRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZZN3gmx26OptionValueConverterSimpleIjE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFjRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef i32 @_ZN3gmxL13fromStdStringIjEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = tail call noundef i32 @_ZN3gmx14uintFromStringEPKc(ptr noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx28UnsignedIntegerOptionStorage16processSetValuesEPSt6vectorIjSaIjEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 6 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !114
  %i.c = and i64 %i.b, 256
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !115  ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_112expandVectorIjEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !117    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117  ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN12_GLOBAL__N_112expandVectorIjEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %.not20.i = icmp eq i64 %i.n, %i.f
  br i1 %.not20.i, label %_ZN12_GLOBAL__N_112expandVectorIjEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not21.i = icmp eq i64 %i.m, 4
  br i1 %.not21.i, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.q = load ptr, ptr %1, align 8, !tbaa !149
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.46, i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef %i.u)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %.thread.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112expandVectorIjEEvmPSt6vectorIT_SaIS2_EE, ptr %i.v, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.6, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 104, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.o, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr %i.o, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.r unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %.013.i = phi i1 [ false, %bb.j ], [ true, %bb.i ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.y, %bb.l ], [ %i.x, %bb.k ] ; 4 uses
  %.114.i = phi i1 [ %.013.i, %bb.l ], [ true, %bb.k ] ; 2 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  %i.z = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.thread.i:                                        ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %.sink.split.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i: ; preds = %.thread.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !52
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.aj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.114.i, label %bb.n, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.114.i, label %bb.n, label %bb.q

.sink.split.i:                                    ; preds = %.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn.pn.pn28.ph.i = phi { ptr, i32 } [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ac, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn28.i = phi { ptr, i32 } [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn.pn28.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.o) #27
  br label %bb.q

bb.o:                                             ; preds = %bb.e
  %i.ak = icmp ult i64 %i.n, %i.f
  br i1 %i.ak, label %bb.p, label %_ZN12_GLOBAL__N_112expandVectorIjEEvmPSt6vectorIT_SaIS2_EE.exit

bb.p:                                             ; preds = %bb.o
  %i.al = sub nuw nsw i64 %i.f, %i.n
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, i64 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  br label %_ZN12_GLOBAL__N_112expandVectorIjEEvmPSt6vectorIT_SaIS2_EE.exit

bb.q:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn27.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn.pn28.i, %bb.n ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn.pn.pn27.i

bb.r:                                             ; preds = %bb.j
  unreachable

_ZN12_GLOBAL__N_112expandVectorIjEEvmPSt6vectorIT_SaIS2_EE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.s

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_112expandVectorIjEEvmPSt6vectorIT_SaIS2_EE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx25UnsignedIntegerOptionInfoC2EPNS_28UnsignedIntegerOptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoC2EPNS_21AbstractOptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx25UnsignedIntegerOptionInfoE, i64 16), ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK3gmx21UnsignedIntegerOption13createStorageERKNS_22OptionManagerContainerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree nonnull readnone align 1 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #28 ; 13 uses
  invoke void @_ZN3gmx21OptionStorageTemplateIjEC2INS_21UnsignedIntegerOptionEEERKNS_14OptionTemplateIjT_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 0)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr null, ptr %i.c, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.b, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.b, ptr %i.e, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i64 0, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i8 0, ptr %i.g, align 8, !tbaa !172
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN3gmx28UnsignedIntegerOptionStorageE, i64 16), ptr %i.a, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  invoke void @_ZN3gmx25UnsignedIntegerOptionInfoC1EPNS_28UnsignedIntegerOptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(216) %i.a)
          to label %_ZN3gmx28UnsignedIntegerOptionStorageC2ERKNS_21UnsignedIntegerOptionE.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN3gmx27OptionStorageTemplateSimpleIjED2Ev(ptr noundef nonnull align 8 dead_on_return(193) dereferenceable(216) %i.a) #27
  br label %.body

_ZN3gmx28UnsignedIntegerOptionStorageC2ERKNS_21UnsignedIntegerOptionE.exit: ; preds = %.noexc
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 216) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx18Int64OptionStorage17formatSingleValueB5cxx11ERKl(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !173
  tail call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull @.str.27, i64 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx18Int64OptionStorage13initConverterEPNS_26OptionValueConverterSimpleIlEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8functionIFlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit:
  %2 = alloca %"class.std::function.89", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr @_ZN3gmxL13fromStdStringIlEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %2, align 8, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS8_E9_M_invokeERKSt9_Any_dataS7_, ptr %i.b, align 8, !tbaa !175
  store ptr @_ZNSt17_Function_handlerIFlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.c, align 8, !tbaa !57
  invoke void @_ZN3gmx26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFlRKT_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 %2)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZNSt8functionIFlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i2 = icmp eq ptr %i.d, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %_ZNSt8functionIFlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i3 = icmp eq ptr %i.i, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFlRKT_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef align 8 %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.351", align 16 ; 10 uses
  %3 = alloca %class.anon.456, align 8            ; 14 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !53
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !53
  br label %_ZNSt8functionIFlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZZN3gmx26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFlRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8
  %common.resume.op = phi { ptr, i32 } [ %i.af, %_ZZN3gmx26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFlRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8 ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit: ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %4, align 8, !tbaa !60
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapISt10type_indexSt8functionIFlRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.n       ; 4 uses

bb.g:                                             ; preds = %_ZNSt8functionIFlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %.noexc unwind label %bb.n     ; 5 uses

.noexc:                                           ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !175
  store ptr %i.q, ptr %i.p, align 8, !tbaa !175
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZNSt8functionIFlRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFlRKT_EEEUlS3_E_vEEOSG_.exit.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.r, ptr %i.s, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFlRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFlRKT_EEEUlS3_E_vEEOSG_.exit.i

_ZNSt8functionIFlRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFlRKT_EEEUlS3_E_vEEOSG_.exit.i: ; preds = %bb.h, %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.o, ptr %2, align 16, !tbaa !53
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 16, i1 false), !tbaa.struct !61
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.l, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53   ; 3 uses
  store ptr %i.v, ptr %i.m, align 16, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFlRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFlRKT_EEEUlS3_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.u, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  store ptr %i.x, ptr %i.t, align 8, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFlRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFlRKT_EEEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.w, align 8, !tbaa !53
  %.not.i.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i.i2, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFlRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFlRKT_EEEUlS3_E_vEEOSG_.exit.i
  %i.y = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

bb.k:                                             ; preds = %bb.i, %_ZNSt8functionIFlRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFlRKT_EEEUlS3_E_vEEOSG_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i4, label %_ZZN3gmx26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFlRKT_EEENUlRKNS_3AnyEE_D2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN3gmx26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFlRKT_EEENUlRKNS_3AnyEE_D2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #26
  unreachable

_ZZN3gmx26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFlRKT_EEENUlRKNS_3AnyEE_D2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.n:                                             ; preds = %bb.g, %_ZNSt8functionIFlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i6, label %_ZZN3gmx26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFlRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN3gmx26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFlRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZZN3gmx26OptionValueConverterSimpleIlE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFlRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef i64 @_ZN3gmxL13fromStdStringIlEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = tail call noundef i64 @_ZN3gmx15int64FromStringEPKc(ptr noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx18Int64OptionStorage16processSetValuesEPSt6vectorIlSaIlEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 6 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !114
  %i.c = and i64 %i.b, 256
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !115  ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_112expandVectorIlEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !176    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !176  ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN12_GLOBAL__N_112expandVectorIlEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %.not20.i = icmp eq i64 %i.n, %i.f
  br i1 %.not20.i, label %_ZN12_GLOBAL__N_112expandVectorIlEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not21.i = icmp eq i64 %i.m, 8
  br i1 %.not21.i, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !178
  %i.q = load ptr, ptr %1, align 8, !tbaa !179
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.46, i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef %i.u)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %.thread.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112expandVectorIlEEvmPSt6vectorIT_SaIS2_EE, ptr %i.v, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.6, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 104, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.o, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr %i.o, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.r unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %.013.i = phi i1 [ false, %bb.j ], [ true, %bb.i ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.y, %bb.l ], [ %i.x, %bb.k ] ; 4 uses
  %.114.i = phi i1 [ %.013.i, %bb.l ], [ true, %bb.k ] ; 2 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  %i.z = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.thread.i:                                        ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %.sink.split.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i: ; preds = %.thread.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !52
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.aj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.114.i, label %bb.n, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.114.i, label %bb.n, label %bb.q

.sink.split.i:                                    ; preds = %.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn.pn.pn28.ph.i = phi { ptr, i32 } [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ac, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn28.i = phi { ptr, i32 } [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn.pn28.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.o) #27
  br label %bb.q

bb.o:                                             ; preds = %bb.e
  %i.ak = icmp ult i64 %i.n, %i.f
  br i1 %i.ak, label %bb.p, label %_ZN12_GLOBAL__N_112expandVectorIlEEvmPSt6vectorIT_SaIS2_EE.exit

bb.p:                                             ; preds = %bb.o
  %i.al = sub nuw nsw i64 %i.f, %i.n
  tail call void @_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_ZN12_GLOBAL__N_112expandVectorIlEEvmPSt6vectorIT_SaIS2_EE.exit

bb.q:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn27.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn.pn28.i, %bb.n ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn.pn.pn27.i

bb.r:                                             ; preds = %bb.j
  unreachable

_ZN12_GLOBAL__N_112expandVectorIlEEvmPSt6vectorIT_SaIS2_EE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.s

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_112expandVectorIlEEvmPSt6vectorIT_SaIS2_EE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx15Int64OptionInfoC2EPNS_18Int64OptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoC2EPNS_21AbstractOptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx15Int64OptionInfoE, i64 16), ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK3gmx11Int64Option13createStorageERKNS_22OptionManagerContainerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree nonnull readnone align 1 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #28 ; 13 uses
  invoke void @_ZN3gmx21OptionStorageTemplateIlEC2INS_11Int64OptionEEERKNS_14OptionTemplateIlT_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 0)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr null, ptr %i.c, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.b, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.b, ptr %i.e, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i64 0, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i8 0, ptr %i.g, align 8, !tbaa !202
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN3gmx18Int64OptionStorageE, i64 16), ptr %i.a, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  invoke void @_ZN3gmx15Int64OptionInfoC1EPNS_18Int64OptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(216) %i.a)
          to label %_ZN3gmx18Int64OptionStorageC2ERKNS_11Int64OptionE.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN3gmx27OptionStorageTemplateSimpleIlED2Ev(ptr noundef nonnull align 8 dead_on_return(193) dereferenceable(216) %i.a) #27
  br label %.body

_ZN3gmx18Int64OptionStorageC2ERKNS_11Int64OptionE.exit: ; preds = %.noexc
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 216) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx26UnsignedInt64OptionStorage17formatSingleValueB5cxx11ERKm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !173
  tail call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull @.str.28, i64 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx26UnsignedInt64OptionStorage13initConverterEPNS_26OptionValueConverterSimpleImEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8functionIFmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit:
  %2 = alloca %"class.std::function.123", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr @_ZN3gmxL13fromStdStringImEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %2, align 8, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS8_E9_M_invokeERKSt9_Any_dataS7_, ptr %i.b, align 8, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.c, align 8, !tbaa !57
  invoke void @_ZN3gmx26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFmRKT_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 %2)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZNSt8functionIFmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i2 = icmp eq ptr %i.d, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %_ZNSt8functionIFmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i3 = icmp eq ptr %i.i, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFmRKT_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef align 8 %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.374", align 16 ; 10 uses
  %3 = alloca %class.anon.463, align 8            ; 14 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !53
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !53
  br label %_ZNSt8functionIFmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZZN3gmx26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFmRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8
  %common.resume.op = phi { ptr, i32 } [ %i.af, %_ZZN3gmx26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFmRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8 ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit: ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %4, align 8, !tbaa !60
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapISt10type_indexSt8functionIFmRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.n       ; 4 uses

bb.g:                                             ; preds = %_ZNSt8functionIFmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %.noexc unwind label %bb.n     ; 5 uses

.noexc:                                           ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !204
  store ptr %i.q, ptr %i.p, align 8, !tbaa !204
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZNSt8functionIFmRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFmRKT_EEEUlS3_E_vEEOSG_.exit.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.r, ptr %i.s, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFmRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFmRKT_EEEUlS3_E_vEEOSG_.exit.i

_ZNSt8functionIFmRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFmRKT_EEEUlS3_E_vEEOSG_.exit.i: ; preds = %bb.h, %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.o, ptr %2, align 16, !tbaa !53
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 16, i1 false), !tbaa.struct !61
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.l, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53   ; 3 uses
  store ptr %i.v, ptr %i.m, align 16, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFmRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFmRKT_EEEUlS3_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.u, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  store ptr %i.x, ptr %i.t, align 8, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFmRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFmRKT_EEEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.w, align 8, !tbaa !53
  %.not.i.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i.i2, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFmRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFmRKT_EEEUlS3_E_vEEOSG_.exit.i
  %i.y = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

bb.k:                                             ; preds = %bb.i, %_ZNSt8functionIFmRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFmRKT_EEEUlS3_E_vEEOSG_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i4, label %_ZZN3gmx26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFmRKT_EEENUlRKNS_3AnyEE_D2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN3gmx26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFmRKT_EEENUlRKNS_3AnyEE_D2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #26
  unreachable

_ZZN3gmx26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFmRKT_EEENUlRKNS_3AnyEE_D2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.n:                                             ; preds = %bb.g, %_ZNSt8functionIFmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i6, label %_ZZN3gmx26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFmRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN3gmx26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFmRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZZN3gmx26OptionValueConverterSimpleImE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFmRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef i64 @_ZN3gmxL13fromStdStringImEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = tail call noundef i64 @_ZN3gmx16uint64FromStringEPKc(ptr noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx26UnsignedInt64OptionStorage16processSetValuesEPSt6vectorImSaImEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 6 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !114
  %i.c = and i64 %i.b, 256
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !115  ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_112expandVectorImEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !176    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !176  ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN12_GLOBAL__N_112expandVectorImEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %.not20.i = icmp eq i64 %i.n, %i.f
  br i1 %.not20.i, label %_ZN12_GLOBAL__N_112expandVectorImEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not21.i = icmp eq i64 %i.m, 8
  br i1 %.not21.i, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !206
  %i.q = load ptr, ptr %1, align 8, !tbaa !207
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.46, i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef %i.u)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %.thread.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112expandVectorImEEvmPSt6vectorIT_SaIS2_EE, ptr %i.v, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.6, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 104, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.o, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr %i.o, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.r unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %.013.i = phi i1 [ false, %bb.j ], [ true, %bb.i ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.y, %bb.l ], [ %i.x, %bb.k ] ; 4 uses
  %.114.i = phi i1 [ %.013.i, %bb.l ], [ true, %bb.k ] ; 2 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  %i.z = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.thread.i:                                        ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %.sink.split.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i: ; preds = %.thread.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !52
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.aj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.114.i, label %bb.n, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.114.i, label %bb.n, label %bb.q

.sink.split.i:                                    ; preds = %.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn.pn.pn28.ph.i = phi { ptr, i32 } [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ac, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn28.i = phi { ptr, i32 } [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn.pn28.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.o) #27
  br label %bb.q

bb.o:                                             ; preds = %bb.e
  %i.ak = icmp ult i64 %i.n, %i.f
  br i1 %i.ak, label %bb.p, label %_ZN12_GLOBAL__N_112expandVectorImEEvmPSt6vectorIT_SaIS2_EE.exit

bb.p:                                             ; preds = %bb.o
  %i.al = sub nuw nsw i64 %i.f, %i.n
  tail call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_ZN12_GLOBAL__N_112expandVectorImEEvmPSt6vectorIT_SaIS2_EE.exit

bb.q:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn27.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn.pn28.i, %bb.n ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn.pn.pn27.i

bb.r:                                             ; preds = %bb.j
  unreachable

_ZN12_GLOBAL__N_112expandVectorImEEvmPSt6vectorIT_SaIS2_EE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.s

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_112expandVectorImEEvmPSt6vectorIT_SaIS2_EE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx23UnsignedInt64OptionInfoC2EPNS_26UnsignedInt64OptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoC2EPNS_21AbstractOptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx23UnsignedInt64OptionInfoE, i64 16), ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK3gmx19UnsignedInt64Option13createStorageERKNS_22OptionManagerContainerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree nonnull readnone align 1 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #28 ; 13 uses
  invoke void @_ZN3gmx21OptionStorageTemplateImEC2INS_19UnsignedInt64OptionEEERKNS_14OptionTemplateImT_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 0)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr null, ptr %i.c, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.b, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.b, ptr %i.e, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i64 0, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i8 0, ptr %i.g, align 8, !tbaa !230
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN3gmx26UnsignedInt64OptionStorageE, i64 16), ptr %i.a, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  invoke void @_ZN3gmx23UnsignedInt64OptionInfoC1EPNS_26UnsignedInt64OptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(216) %i.a)
          to label %_ZN3gmx26UnsignedInt64OptionStorageC2ERKNS_19UnsignedInt64OptionE.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN3gmx27OptionStorageTemplateSimpleImED2Ev(ptr noundef nonnull align 8 dead_on_return(193) dereferenceable(216) %i.a) #27
  br label %.body

_ZN3gmx26UnsignedInt64OptionStorageC2ERKNS_19UnsignedInt64OptionE.exit: ; preds = %.noexc
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 216) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19DoubleOptionStorageC2ERKNS_12DoubleOptionE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(89) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN3gmx21OptionStorageTemplateIdEC2INS_12DoubleOptionEEERKNS_14OptionTemplateIdT_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(193) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.b, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.a, ptr %i.c, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.a, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.e, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.f, align 8, !tbaa !255
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN3gmx19DoubleOptionStorageE, i64 16), ptr %0, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke void @_ZN3gmx16DoubleOptionInfoC1EPNS_19DoubleOptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i8, ptr %i.i, align 8, !tbaa !512, !range !43, !noundef !44
  store i8 %i.j, ptr %i.h, align 8, !tbaa !262
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  store double 1.000000e+00, ptr %i.k, align 8, !tbaa !263
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN3gmx27OptionStorageTemplateSimpleIdED2Ev(ptr noundef nonnull align 8 dead_on_return(193) dereferenceable(193) %0) #27
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK3gmx19DoubleOptionStorage10typeStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !114
  %i.c = and i64 %i.b, 256
  %.not = icmp eq i64 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.e = load i8, ptr %i.d, align 8, !range !43
  %i.f = trunc nuw i8 %i.e to i1
  %.str.3..str.4 = select i1 %i.f, ptr @.str.3, ptr @.str.4
  %i.g = select i1 %.not, ptr %.str.3..str.4, ptr @.str.2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !48
  %i.i = select i1 %.not, i64 4, i64 6            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.h, ptr noundef nonnull align 1 dereferenceable(4) %i.g, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 0, ptr %i.k, align 2, !tbaa !52
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx19DoubleOptionStorage17formatSingleValueB5cxx11ERKd(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !264
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.c = load double, ptr %i.b, align 8, !tbaa !263
  %i.d = fdiv double %i.a, %i.c
  tail call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull @.str.29, double noundef %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19DoubleOptionStorage13initConverterEPNS_26OptionValueConverterSimpleIdEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8functionIFdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit:
  %2 = alloca %"class.std::function.381", align 8 ; 7 uses
  %3 = alloca %"struct.std::type_index", align 8  ; 4 uses
  %4 = alloca %"class.std::function.179", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZN3gmxL13fromStdStringIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %4, align 8, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS8_E9_M_invokeERKSt9_Any_dataS7_, ptr %i.b, align 8, !tbaa !266
  store ptr @_ZNSt17_Function_handlerIFdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.c, align 8, !tbaa !57
  invoke void @_ZN3gmx26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFdRKT_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 %4)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %_ZNSt8functionIFdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i3 = icmp eq ptr %i.d, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr @_ZTIf, ptr %3, align 8, !tbaa !60
  %i.h = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapISt10type_indexSt8functionIFdRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 16, i1 false), !tbaa.struct !61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53   ; 3 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFdRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleIdE17addCastConversionIfEEvvEUlS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.k, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
  store ptr %i.n, ptr %i.j, align 8, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFdRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleIdE17addCastConversionIfEEvvEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.m, align 8, !tbaa !53
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN3gmx26OptionValueConverterSimpleIdE17addCastConversionIfEEvv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.o = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN3gmx26OptionValueConverterSimpleIdE17addCastConversionIfEEvv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #26
  unreachable

_ZN3gmx26OptionValueConverterSimpleIdE17addCastConversionIfEEvv.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.f:                                             ; preds = %_ZNSt8functionIFdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit
end_hunk_0
begin_hunk_1_@_ZN3gmx19DoubleOptionStorage13initConverterEPNS_26OptionValueConverterSimpleIdEE:_ZNSt8functionIFdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit

bb.g:                                             ; preds = %bb.f
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFdRKT_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef align 8 %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.381", align 16 ; 10 uses
  %3 = alloca %class.anon.478, align 8            ; 14 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !53
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !53
  br label %_ZNSt8functionIFdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZZN3gmx26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFdRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8
  %common.resume.op = phi { ptr, i32 } [ %i.af, %_ZZN3gmx26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFdRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8 ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit: ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %4, align 8, !tbaa !60
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapISt10type_indexSt8functionIFdRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.n       ; 4 uses

bb.g:                                             ; preds = %_ZNSt8functionIFdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %.noexc unwind label %bb.n     ; 5 uses

.noexc:                                           ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !266
  store ptr %i.q, ptr %i.p, align 8, !tbaa !266
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZNSt8functionIFdRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFdRKT_EEEUlS3_E_vEEOSG_.exit.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.r, ptr %i.s, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFdRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFdRKT_EEEUlS3_E_vEEOSG_.exit.i

_ZNSt8functionIFdRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFdRKT_EEEUlS3_E_vEEOSG_.exit.i: ; preds = %bb.h, %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.o, ptr %2, align 16, !tbaa !53
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 16, i1 false), !tbaa.struct !61
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.l, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53   ; 3 uses
  store ptr %i.v, ptr %i.m, align 16, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFdRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFdRKT_EEEUlS3_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.u, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  store ptr %i.x, ptr %i.t, align 8, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFdRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFdRKT_EEEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.w, align 8, !tbaa !53
  %.not.i.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i.i2, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFdRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFdRKT_EEEUlS3_E_vEEOSG_.exit.i
  %i.y = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

bb.k:                                             ; preds = %bb.i, %_ZNSt8functionIFdRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFdRKT_EEEUlS3_E_vEEOSG_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i4, label %_ZZN3gmx26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFdRKT_EEENUlRKNS_3AnyEE_D2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN3gmx26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFdRKT_EEENUlRKNS_3AnyEE_D2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #26
  unreachable

_ZZN3gmx26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFdRKT_EEENUlRKNS_3AnyEE_D2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.n:                                             ; preds = %bb.g, %_ZNSt8functionIFdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i6, label %_ZZN3gmx26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFdRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN3gmx26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFdRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZZN3gmx26OptionValueConverterSimpleIdE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFdRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef double @_ZN3gmxL13fromStdStringIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = tail call noundef double @_ZN3gmx16doubleFromStringEPKc(ptr noundef %i.a)
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK3gmx19DoubleOptionStorage12processValueERKd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !264
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load double, ptr %i.b, align 8, !tbaa !263
  %i.d = fmul double %i.a, %i.c
  ret double %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19DoubleOptionStorage16processSetValuesEPSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 6 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !114
  %i.c = and i64 %i.b, 256
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !115  ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_112expandVectorIdEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !267    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !267  ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN12_GLOBAL__N_112expandVectorIdEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %.not20.i = icmp eq i64 %i.n, %i.f
  br i1 %.not20.i, label %_ZN12_GLOBAL__N_112expandVectorIdEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not21.i = icmp eq i64 %i.m, 8
  br i1 %.not21.i, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !268
  %i.q = load ptr, ptr %1, align 8, !tbaa !269
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.46, i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef %i.u)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %.thread.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112expandVectorIdEEvmPSt6vectorIT_SaIS2_EE, ptr %i.v, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.6, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 104, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.o, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr %i.o, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.r unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %.013.i = phi i1 [ false, %bb.j ], [ true, %bb.i ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.y, %bb.l ], [ %i.x, %bb.k ] ; 4 uses
  %.114.i = phi i1 [ %.013.i, %bb.l ], [ true, %bb.k ] ; 2 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  %i.z = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.thread.i:                                        ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %.sink.split.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i: ; preds = %.thread.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !52
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.aj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.114.i, label %bb.n, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.114.i, label %bb.n, label %bb.q

.sink.split.i:                                    ; preds = %.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn.pn.pn28.ph.i = phi { ptr, i32 } [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ac, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn28.i = phi { ptr, i32 } [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn.pn28.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.o) #27
  br label %bb.q

bb.o:                                             ; preds = %bb.e
  %i.ak = icmp ult i64 %i.n, %i.f
  br i1 %i.ak, label %bb.p, label %_ZN12_GLOBAL__N_112expandVectorIdEEvmPSt6vectorIT_SaIS2_EE.exit

bb.p:                                             ; preds = %bb.o
  %i.al = sub nuw nsw i64 %i.f, %i.n
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_ZN12_GLOBAL__N_112expandVectorIdEEvmPSt6vectorIT_SaIS2_EE.exit

bb.q:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn27.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn.pn28.i, %bb.n ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn.pn.pn27.i

bb.r:                                             ; preds = %bb.j
  unreachable

_ZN12_GLOBAL__N_112expandVectorIdEEvmPSt6vectorIT_SaIS2_EE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.s

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_112expandVectorIdEEvmPSt6vectorIT_SaIS2_EE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19DoubleOptionStorage14setScaleFactorEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(232) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = fcmp ogt double %1, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx19DoubleOptionStorage14setScaleFactorEdENK3$_0clEv", ptr noundef nonnull @.str.6, i32 noundef 395) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !114
  %i.d = and i64 %i.c, 2
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load double, ptr %i.e, align 8, !tbaa !263
  %i.g = fdiv double %1, %i.f                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !270  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call { ptr, ptr } %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !513 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 7 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 3 uses
  %.not1415 = icmp eq ptr %i.n, %i.o
  br i1 %.not1415, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = ptrtoaddr ptr %i.n to i64
  %i.r = add i64 %i.p, -8
  %i.s = sub i64 %i.r, %i.q                       ; 3 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.s, 24
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i64 %i.s, 120
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.u, 12
  %n.vec = and i64 %i.u, 4611686018427387888      ; 4 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.n, i64 %i.w
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.g, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.y ; 5 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 32  ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %next.gep, align 8, !tbaa !264
  %wide.load20 = load <4 x double>, ptr %i.z, align 8, !tbaa !264
  %wide.load21 = load <4 x double>, ptr %i.aa, align 8, !tbaa !264
  %wide.load22 = load <4 x double>, ptr %i.ab, align 8, !tbaa !264
  %i.ac = fmul <4 x double> %broadcast.splat, %wide.load
  %i.ad = fmul <4 x double> %broadcast.splat, %wide.load20
  %i.ae = fmul <4 x double> %broadcast.splat, %wide.load21
  %i.af = fmul <4 x double> %broadcast.splat, %wide.load22
  store <4 x double> %i.ac, ptr %next.gep, align 8, !tbaa !264
  store <4 x double> %i.ad, ptr %i.z, align 8, !tbaa !264
  store <4 x double> %i.ae, ptr %i.aa, align 8, !tbaa !264
  store <4 x double> %i.af, ptr %i.ab, align 8, !tbaa !264
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !514

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !273

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.u, 4611686018427387900    ; 3 uses
  %i.ah = shl i64 %n.vec23, 3
  %i.ai = getelementptr i8, ptr %i.n, i64 %i.ah
  %broadcast.splatinsert24 = insertelement <4 x double> poison, double %i.g, i64 0
  %broadcast.splat25 = shufflevector <4 x double> %broadcast.splatinsert24, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 2 uses
  %i.aj = shl i64 %index26, 3
  %next.gep27 = getelementptr i8, ptr %i.n, i64 %i.aj ; 2 uses
  %wide.load28 = load <4 x double>, ptr %next.gep27, align 8, !tbaa !264
  %i.ak = fmul <4 x double> %broadcast.splat25, %wide.load28
  store <4 x double> %i.ak, ptr %next.gep27, align 8, !tbaa !264
  %index.next29 = add nuw i64 %index26, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next29, %n.vec23
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !515

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.u, %n.vec23
  br i1 %cmp.n30, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.016.ph = phi ptr [ %i.n, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.016 = phi ptr [ %i.ao, %.lr.ph ], [ %.sroa.0.016.ph, %.lr.ph.preheader ] ; 3 uses
  %i.am = load double, ptr %.sroa.0.016, align 8, !tbaa !264
  %i.an = fmul double %i.g, %i.am
  store double %i.an, ptr %.sroa.0.016, align 8, !tbaa !264
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016, i64 8 ; 2 uses
  %.not14 = icmp eq ptr %i.ao, %i.o
  br i1 %.not14, label %.loopexit, label %.lr.ph, !llvm.loop !516

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224
  store double %1, ptr %i.ap, align 8, !tbaa !263
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16DoubleOptionInfoC2EPNS_19DoubleOptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoC2EPNS_21AbstractOptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx16DoubleOptionInfoE, i64 16), ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(232) ptr @_ZN3gmx16DoubleOptionInfo6optionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !44, !align !68
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(232) ptr @_ZNK3gmx16DoubleOptionInfo6optionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !44, !align !68
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK3gmx16DoubleOptionInfo6isTimeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !44, !align !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.d = load i8, ptr %i.c, align 8, !tbaa !262, !range !43, !noundef !44
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16DoubleOptionInfo14setScaleFactorEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !44, !align !68 ; 4 uses
  %i.c = fcmp ogt double %1, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx19DoubleOptionStorage14setScaleFactorEdENK3$_0clEv", ptr noundef nonnull @.str.6, i32 noundef 395) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !114
  %i.f = and i64 %i.e, 2
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %_ZN3gmx19DoubleOptionStorage14setScaleFactorEd.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.h = load double, ptr %i.g, align 8, !tbaa !263
  %i.i = fdiv double %1, %i.h                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !270  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
end_hunk_1
begin_hunk_2_@_ZN3gmx18FloatOptionStorage13initConverterEPNS_26OptionValueConverterSimpleIfEE:_ZNSt8functionIFfRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IPS8_vEEOT_.exit
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFfRKT_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef align 8 %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.393", align 16 ; 10 uses
  %3 = alloca %class.anon.498, align 8            ; 14 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFfRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !53
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !53
  br label %_ZNSt8functionIFfRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZZN3gmx26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFfRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8
  %common.resume.op = phi { ptr, i32 } [ %i.af, %_ZZN3gmx26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFfRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8 ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFfRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit: ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %4, align 8, !tbaa !60
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapISt10type_indexSt8functionIFfRKN3gmx3AnyEEESt4lessIS0_ESaISt4pairIKS0_S7_EEEixEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.n       ; 4 uses

bb.g:                                             ; preds = %_ZNSt8functionIFfRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %.noexc unwind label %bb.n     ; 5 uses

.noexc:                                           ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !308
  store ptr %i.q, ptr %i.p, align 8, !tbaa !308
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZNSt8functionIFfRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFfRKT_EEEUlS3_E_vEEOSG_.exit.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.r, ptr %i.s, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFfRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFfRKT_EEEUlS3_E_vEEOSG_.exit.i

_ZNSt8functionIFfRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFfRKT_EEEUlS3_E_vEEOSG_.exit.i: ; preds = %bb.h, %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.o, ptr %2, align 16, !tbaa !53
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 16, i1 false), !tbaa.struct !61
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.l, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53   ; 3 uses
  store ptr %i.v, ptr %i.m, align 16, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFfRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFfRKT_EEEUlS3_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.u, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  store ptr %i.x, ptr %i.t, align 8, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFfRKN3gmx3AnyEEZNS0_26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFfRKT_EEEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.w, align 8, !tbaa !53
  %.not.i.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i.i2, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFfRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFfRKT_EEEUlS3_E_vEEOSG_.exit.i
  %i.y = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

bb.k:                                             ; preds = %bb.i, %_ZNSt8functionIFfRKN3gmx3AnyEEEC2IZNS0_26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvS_IFfRKT_EEEUlS3_E_vEEOSG_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i4, label %_ZZN3gmx26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFfRKT_EEENUlRKNS_3AnyEE_D2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN3gmx26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFfRKT_EEENUlRKNS_3AnyEE_D2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #26
  unreachable

_ZZN3gmx26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFfRKT_EEENUlRKNS_3AnyEE_D2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.n:                                             ; preds = %bb.g, %_ZNSt8functionIFfRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS9_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i6, label %_ZZN3gmx26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFfRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZZN3gmx26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFfRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZZN3gmx26OptionValueConverterSimpleIfE12addConverterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt8functionIFfRKT_EEENUlRKNS_3AnyEE_D2Ev.exit8: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef float @_ZN3gmxL13fromStdStringIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = tail call noundef float @_ZN3gmx15floatFromStringEPKc(ptr noundef %i.a)
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZNK3gmx18FloatOptionStorage12processValueERKf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !306
  %i.b = fpext float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load double, ptr %i.c, align 8, !tbaa !304
  %i.e = fmul double %i.d, %i.b
  %i.f = fptrunc double %i.e to float
  ret float %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx18FloatOptionStorage16processSetValuesEPSt6vectorIfSaIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 6 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !114
  %i.c = and i64 %i.b, 256
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !115  ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_112expandVectorIfEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !309    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309  ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN12_GLOBAL__N_112expandVectorIfEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %.not20.i = icmp eq i64 %i.n, %i.f
  br i1 %.not20.i, label %_ZN12_GLOBAL__N_112expandVectorIfEEvmPSt6vectorIT_SaIS2_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not21.i = icmp eq i64 %i.m, 4
  br i1 %.not21.i, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !310
  %i.q = load ptr, ptr %1, align 8, !tbaa !311
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.46, i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef %i.u)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %.thread.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112expandVectorIfEEvmPSt6vectorIT_SaIS2_EE, ptr %i.v, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.6, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 104, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.o, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr %i.o, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.r unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %.013.i = phi i1 [ false, %bb.j ], [ true, %bb.i ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.y, %bb.l ], [ %i.x, %bb.k ] ; 4 uses
  %.114.i = phi i1 [ %.013.i, %bb.l ], [ true, %bb.k ] ; 2 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #27
  %i.z = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.thread.i:                                        ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %.sink.split.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i: ; preds = %.thread.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !52
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.aj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.114.i, label %bb.n, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.114.i, label %bb.n, label %bb.q

.sink.split.i:                                    ; preds = %.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn.pn.pn28.ph.i = phi { ptr, i32 } [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ac, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn28.i = phi { ptr, i32 } [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn.pn28.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.o) #27
  br label %bb.q

bb.o:                                             ; preds = %bb.e
  %i.ak = icmp ult i64 %i.n, %i.f
  br i1 %i.ak, label %bb.p, label %_ZN12_GLOBAL__N_112expandVectorIfEEvmPSt6vectorIT_SaIS2_EE.exit

bb.p:                                             ; preds = %bb.o
  %i.al = sub nuw nsw i64 %i.f, %i.n
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, i64 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  br label %_ZN12_GLOBAL__N_112expandVectorIfEEvmPSt6vectorIT_SaIS2_EE.exit

bb.q:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn27.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn.pn28.i, %bb.n ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn.pn.pn27.i

bb.r:                                             ; preds = %bb.j
  unreachable

_ZN12_GLOBAL__N_112expandVectorIfEEvmPSt6vectorIT_SaIS2_EE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.s

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_112expandVectorIfEEvmPSt6vectorIT_SaIS2_EE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx18FloatOptionStorage14setScaleFactorEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(232) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = fcmp ogt double %1, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx18FloatOptionStorage14setScaleFactorEdENK3$_0clEv", ptr noundef nonnull @.str.6, i32 noundef 485) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !114
  %i.d = and i64 %i.c, 2
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load double, ptr %i.e, align 8, !tbaa !304
  %i.g = fdiv double %1, %i.f
  %i.h = fptrunc double %i.g to float             ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !312  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call { ptr, ptr } %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !inline_history !523 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 7 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 3 uses
  %.not1415 = icmp eq ptr %i.o, %i.p
  br i1 %.not1415, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = ptrtoaddr ptr %i.o to i64
  %i.s = add i64 %i.q, -4
  %i.t = sub i64 %i.s, %i.r                       ; 3 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.t, 28
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i64 %i.t, 124
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.v, 24
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  %i.x = shl i64 %n.vec, 2
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.h, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.z ; 5 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 32 ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !306
  %wide.load20 = load <8 x float>, ptr %i.aa, align 4, !tbaa !306
  %wide.load21 = load <8 x float>, ptr %i.ab, align 4, !tbaa !306
  %wide.load22 = load <8 x float>, ptr %i.ac, align 4, !tbaa !306
  %i.ad = fmul <8 x float> %wide.load, %broadcast.splat
  %i.ae = fmul <8 x float> %wide.load20, %broadcast.splat
  %i.af = fmul <8 x float> %wide.load21, %broadcast.splat
  %i.ag = fmul <8 x float> %wide.load22, %broadcast.splat
  store <8 x float> %i.ad, ptr %next.gep, align 4, !tbaa !306
  store <8 x float> %i.ae, ptr %i.aa, align 4, !tbaa !306
  store <8 x float> %i.af, ptr %i.ab, align 4, !tbaa !306
  store <8 x float> %i.ag, ptr %i.ac, align 4, !tbaa !306
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !524

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !313

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.v, 9223372036854775800    ; 3 uses
  %i.ai = shl i64 %n.vec23, 2
  %i.aj = getelementptr i8, ptr %i.o, i64 %i.ai
  %broadcast.splatinsert24 = insertelement <8 x float> poison, float %i.h, i64 0
  %broadcast.splat25 = shufflevector <8 x float> %broadcast.splatinsert24, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index26, 2
  %next.gep27 = getelementptr i8, ptr %i.o, i64 %i.ak ; 2 uses
  %wide.load28 = load <8 x float>, ptr %next.gep27, align 4, !tbaa !306
  %i.al = fmul <8 x float> %wide.load28, %broadcast.splat25
  store <8 x float> %i.al, ptr %next.gep27, align 4, !tbaa !306
  %index.next29 = add nuw i64 %index26, 8         ; 2 uses
  %i.am = icmp eq i64 %index.next29, %n.vec23
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !525

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.v, %n.vec23
  br i1 %cmp.n30, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.016.ph = phi ptr [ %i.o, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.016 = phi ptr [ %i.ap, %.lr.ph ], [ %.sroa.0.016.ph, %.lr.ph.preheader ] ; 3 uses
  %i.an = load float, ptr %.sroa.0.016, align 4, !tbaa !306
  %i.ao = fmul float %i.an, %i.h
  store float %i.ao, ptr %.sroa.0.016, align 4, !tbaa !306
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.016, i64 4 ; 2 uses
  %.not14 = icmp eq ptr %i.ap, %i.p
  br i1 %.not14, label %.loopexit, label %.lr.ph, !llvm.loop !526

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  store double %1, ptr %i.aq, align 8, !tbaa !304
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx15FloatOptionInfoC2EPNS_18FloatOptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoC2EPNS_21AbstractOptionStorageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx15FloatOptionInfoE, i64 16), ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(232) ptr @_ZN3gmx15FloatOptionInfo6optionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !44, !align !68
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(232) ptr @_ZNK3gmx15FloatOptionInfo6optionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !44, !align !68
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK3gmx15FloatOptionInfo6isTimeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !44, !align !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.d = load i8, ptr %i.c, align 8, !tbaa !303, !range !43, !noundef !44
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx15FloatOptionInfo14setScaleFactorEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !44, !align !68 ; 4 uses
  %i.c = fcmp ogt double %1, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx18FloatOptionStorage14setScaleFactorEdENK3$_0clEv", ptr noundef nonnull @.str.6, i32 noundef 485) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !114
  %i.f = and i64 %i.e, 2
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %_ZN3gmx18FloatOptionStorage14setScaleFactorEd.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.h = load double, ptr %i.g, align 8, !tbaa !304
  %i.i = fdiv double %1, %i.h
  %i.j = fptrunc double %i.i to float             ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !312  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
end_hunk_2
