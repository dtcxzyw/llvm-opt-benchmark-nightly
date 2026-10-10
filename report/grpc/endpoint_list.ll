Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/endpoint_list?download=true
inline.NumInlined: 1504
inline.NumDeleted: 953
begin_hunk_0_@_ZN9grpc_core22SingleEndpointIteratorD0Ev:bb.a
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #36
  br label %_ZN9grpc_core22SingleEndpointIteratorD2Ev.exit

_ZN9grpc_core22SingleEndpointIteratorD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK9grpc_core22SingleEndpointIterator7ForEachEN4absl12lts_2025051211FunctionRefIFvRKNS_17EndpointAddressesEEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void %2(ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a), !inline_history !283
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN9grpc_core12EndpointList4InitEPNS3_25EndpointAddressesIteratorERKNS3_11ChannelArgsENS0_11FunctionRefIFSt10unique_ptrINS4_8EndpointENS3_16OrphanableDeleteEENS3_13RefCountedPtrIS4_EERKNS3_17EndpointAddressesES9_EEEE3$_0vJSJ_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !285   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9grpc_core17EndpointAddressesC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.f, ptr %i.a, align 8, !tbaa !126
  br label %"_ZSt6invokeIRKZN9grpc_core12EndpointList4InitEPNS0_25EndpointAddressesIteratorERKNS0_11ChannelArgsEN4absl12lts_2025051211FunctionRefIFSt10unique_ptrINS1_8EndpointENS0_16OrphanableDeleteEENS0_13RefCountedPtrIS1_EERKNS0_17EndpointAddressesES6_EEEE3$_0JSI_EENSt13invoke_resultIT_JDpT0_EE4typeEOSP_DpOSQ_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.val, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %"_ZSt6invokeIRKZN9grpc_core12EndpointList4InitEPNS0_25EndpointAddressesIteratorERKNS0_11ChannelArgsEN4absl12lts_2025051211FunctionRefIFSt10unique_ptrINS1_8EndpointENS0_16OrphanableDeleteEENS0_13RefCountedPtrIS1_EERKNS0_17EndpointAddressesES6_EEEE3$_0JSI_EENSt13invoke_resultIT_JDpT0_EE4typeEOSP_DpOSQ_.exit"

"_ZSt6invokeIRKZN9grpc_core12EndpointList4InitEPNS0_25EndpointAddressesIteratorERKNS0_11ChannelArgsEN4absl12lts_2025051211FunctionRefIFSt10unique_ptrINS1_8EndpointENS0_16OrphanableDeleteEENS0_13RefCountedPtrIS1_EERKNS0_17EndpointAddressesES6_EEEE3$_0JSI_EENSt13invoke_resultIT_JDpT0_EE4typeEOSP_DpOSQ_.exit": ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !127    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #37
  unreachable

_ZNKSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN9grpc_core17EndpointAddressesC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt16allocator_traitsISaIN9grpc_core17EndpointAddressesEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.g

_ZNSt16allocator_traitsISaIN9grpc_core17EndpointAddressesEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN9grpc_core17EndpointAddressesEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN9grpc_core17EndpointAddressesEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN9grpc_core17EndpointAddressesEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 5 uses
  tail call void @_ZN9grpc_core17EndpointAddressesC1EOS0_(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i) #31
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #31
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !104, !alias.scope !293, !noalias !294 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !105, !alias.scope !293, !noalias !294
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #36
  br label %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !289

_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN9grpc_core17EndpointAddressesEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN9grpc_core17EndpointAddressesEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.z, %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31
  %.012.i.i.i28 = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31 ], [ %i.aa, %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.ai, %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31 ], [ %1, %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  tail call void @_ZN9grpc_core17EndpointAddressesC1EOS0_(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i29) #31
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  tail call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ab) #31
  %i.ac = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !104, !alias.scope !295, !noalias !296 ; 3 uses
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i27
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !105, !alias.scope !295, !noalias !296
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #36
  br label %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31

_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31: ; preds = %bb.d, %.lr.ph.i.i.i27
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i27, !llvm.loop !289

_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34: ; preds = %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31, %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.aa, %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.aj, %_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i31 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !128
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #36
  br label %_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !127
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !126
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !128
  ret void

bb.f:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE12_M_check_lenEmPKc.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #31 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #36
  invoke void @__cxa_rethrow() #37
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ap

bb.i:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #33
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !122    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !305
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEEmS5_ET_S7_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEEmS5_ET_S7_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !307
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !121
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #37
  unreachable

_ZNKSt6vectorISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #32 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !307
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = add i64 %i.d, -8
  %i.y = sub i64 %i.x, %i.e                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %2 = and i64 %i.y, -8
  %3 = add i64 %2, 8                              ; 2 uses
  %4 = getelementptr i8, ptr %i.u, i64 %3
  %5 = getelementptr i8, ptr %i.c, i64 %3
  %bound0 = icmp ult ptr %i.u, %5
  %bound1 = icmp ult ptr %i.c, %4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.c, i64 %i.ae ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.af = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep41, align 8, !tbaa !62, !alias.scope !310, !noalias !308
  %wide.load42 = load <2 x i64>, ptr %i.af, align 8, !tbaa !62, !alias.scope !310, !noalias !308
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !62, !alias.scope !311, !noalias !310
  store <2 x i64> %wide.load42, ptr %i.ag, align 8, !tbaa !62, !alias.scope !311, !noalias !310
  %i.ah = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep41, align 8, !tbaa !62, !alias.scope !310, !noalias !308
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !62, !alias.scope !310, !noalias !308
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader44

.lr.ph.i.i.i.preheader44:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader44, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader44 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader44 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !62, !alias.scope !309, !noalias !308
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !62, !alias.scope !308, !noalias !309
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !62, !alias.scope !309, !noalias !308
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !304

_ZNSt6vectorISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE13_M_deallocateEPS5_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !305
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #36
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE13_M_deallocateEPS5_m.exit37

_ZNSt12_Vector_baseISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE13_M_deallocateEPS5_m.exit37: ; preds = %_ZNSt6vectorISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !122
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !121
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !305
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEEmS5_ET_S7_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE13_M_deallocateEPS5_m.exit37, %bb.a
  ret void
}

; Function Attrs: uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2025051224uniform_int_distributionImE8GenerateIN9grpc_core12SharedBitGenEEEmRT_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2) local_unnamed_addr #26 comdat align 2 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::random_internal::FastUniformBits", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %.not.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core12SharedBitGen8bit_gen_E, null
  br i1 %.not.i.i.i.i, label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core12SharedBitGen8bit_gen_E()
  br label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i

_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core12SharedBitGen8bit_gen_E) ; 5 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !155
  %i.g = icmp ugt i64 %i.f, 31
  br i1 %i.g, label %bb.c, label %_ZN4absl12lts_2025051215random_internal15FastUniformBitsImEclIN9grpc_core12SharedBitGenEEEmRT_.exit

bb.c:                                             ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i
  store i64 2, ptr %i.e, align 8, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.j = load i8, ptr %i.i, align 8, !tbaa !156, !range !143, !noundef !144
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !157  ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.l, ptr noundef nonnull %i.d)
  br label %_ZN4absl12lts_2025051215random_internal15FastUniformBitsImEclIN9grpc_core12SharedBitGenEEEmRT_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.l, ptr noundef nonnull %i.d)
  br label %_ZN4absl12lts_2025051215random_internal15FastUniformBitsImEclIN9grpc_core12SharedBitGenEEEmRT_.exit

_ZN4absl12lts_2025051215random_internal15FastUniformBitsImEclIN9grpc_core12SharedBitGenEEEmRT_.exit: ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i, %bb.d, %bb.e
  %i.m = load i64, ptr %i.e, align 8, !tbaa !155  ; 2 uses
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.e, align 8, !tbaa !155
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !tbaa !114  ; 2 uses
  %i.q = add i64 %2, 1                            ; 4 uses
  %i.r = and i64 %i.q, %2
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2025051215random_internal15FastUniformBitsImEclIN9grpc_core12SharedBitGenEEEmRT_.exit
  %i.t = and i64 %i.p, %2
  br label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051215random_internal15FastUniformBitsImEclIN9grpc_core12SharedBitGenEEEmRT_.exit
  %i.u = zext i64 %i.p to i128
  %i.v = zext i64 %i.q to i128                    ; 2 uses
  %i.w = mul nuw i128 %i.u, %i.v                  ; 2 uses
  %i.x = trunc i128 %i.w to i64                   ; 2 uses
  %i.y = lshr i128 %i.w, 64
  %i.z = trunc nuw i128 %i.y to i64               ; 2 uses
  %i.aa = icmp ugt i64 %i.q, %i.x
  br i1 %i.aa, label %bb.h, label %.loopexit, !prof !34

bb.h:                                             ; preds = %bb.g
  %i.ab = xor i64 %2, -1
  %i.ac = urem i64 %i.ab, %i.q                    ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, %i.x
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %i.ae = call noundef i64 @_ZN4absl12lts_2025051215random_internal15FastUniformBitsImEclIN9grpc_core12SharedBitGenEEEmRT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %i.af = zext i64 %i.ae to i128
  %i.ag = mul nuw i128 %i.af, %i.v                ; 2 uses
  %i.ah = trunc i128 %i.ag to i64
  %i.ai = icmp ugt i64 %i.ac, %i.ah
  br i1 %i.ai, label %.lr.ph, label %..loopexit_crit_edge, !llvm.loop !314

..loopexit_crit_edge:                             ; preds = %.lr.ph
  %i.aj = lshr i128 %i.ag, 64
  %i.ak = trunc nuw i128 %i.aj to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %..loopexit_crit_edge, %bb.g, %bb.f
  %.0 = phi i64 [ %i.t, %bb.f ], [ %i.z, %bb.g ], [ %i.ak, %..loopexit_crit_edge ], [ %i.z, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i64 %.0
}

; Function Attrs: uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2025051215random_internal15FastUniformBitsImEclIN9grpc_core12SharedBitGenEEEmRT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #26 comdat align 2 {
bb.a:
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core12SharedBitGen8bit_gen_E, null
  br i1 %.not.i.i.i, label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core12SharedBitGen8bit_gen_E()
  br label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i

_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i: ; preds = %bb.b, %bb.a
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core12SharedBitGen8bit_gen_E) ; 5 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !155
  %i.g = icmp ugt i64 %i.f, 31
  br i1 %i.g, label %bb.c, label %_ZN4absl12lts_2025051215random_internal15FastUniformBitsImE8GenerateIN9grpc_core12SharedBitGenEEEmRT_NS1_17SimplifiedLoopTagE.exit

bb.c:                                             ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i
  store i64 2, ptr %i.e, align 8, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.j = load i8, ptr %i.i, align 8, !tbaa !156, !range !143, !noundef !144
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !157  ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.l, ptr noundef nonnull %i.d)
  br label %_ZN4absl12lts_2025051215random_internal15FastUniformBitsImE8GenerateIN9grpc_core12SharedBitGenEEEmRT_NS1_17SimplifiedLoopTagE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.l, ptr noundef nonnull %i.d)
  br label %_ZN4absl12lts_2025051215random_internal15FastUniformBitsImE8GenerateIN9grpc_core12SharedBitGenEEEmRT_NS1_17SimplifiedLoopTagE.exit

_ZN4absl12lts_2025051215random_internal15FastUniformBitsImE8GenerateIN9grpc_core12SharedBitGenEEEmRT_NS1_17SimplifiedLoopTagE.exit: ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i, %bb.d, %bb.e
  %i.m = load i64, ptr %i.e, align 8, !tbaa !155  ; 2 uses
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.e, align 8, !tbaa !155
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !tbaa !114
  ret i64 %i.p
}

declare void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN9grpc_core19LoadBalancingPolicy16SubchannelPickerC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core19LoadBalancingPolicy22TransientFailurePickerD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.b to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #33
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core19LoadBalancingPolicy22TransientFailurePickerD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZN9grpc_core19LoadBalancingPolicy22TransientFailurePickerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.b to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_ZN9grpc_core19LoadBalancingPolicy22TransientFailurePickerD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #33
  unreachable

_ZN9grpc_core19LoadBalancingPolicy22TransientFailurePickerD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core19LoadBalancingPolicy16SubchannelPicker8OrphanedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core19LoadBalancingPolicy22TransientFailurePicker4PickENS0_8PickArgsE(ptr dead_on_unwind noalias writable sret(%"struct.grpc_core::LoadBalancingPolicy::PickResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef byval(%"struct.grpc_core::LoadBalancingPolicy::PickArgs") align 8 %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101  ; 6 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZN9grpc_core19LoadBalancingPolicy10PickResult4FailD2Ev.exit.thread, label %bb.b

_ZN9grpc_core19LoadBalancingPolicy10PickResult4FailD2Ev.exit.thread: ; preds = %bb.a
  store i64 %i.b, ptr %0, align 8, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 2, ptr %i.d, align 8, !tbaa !316
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr
  %i.f = atomicrmw add ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  %i.g = inttoptr i64 %i.b to ptr
  %i.h = atomicrmw add ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 2, ptr %i.i, align 8, !tbaa !316
  %i.j = inttoptr i64 %i.b to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #33
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %_ZN9grpc_core19LoadBalancingPolicy10PickResult4FailD2Ev.exit.thread, %bb.b
  ret void
}

declare extern_weak void @_ZTHN9grpc_core12SharedBitGen8bit_gen_E() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind }
attributes #26 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nounwind }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { noreturn nounwind }
attributes #34 = { cold }
attributes #35 = { cold nounwind }
attributes #36 = { builtin nounwind }
attributes #37 = { noreturn }
attributes #38 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{null}
!1 = distinct !{null, null, null}
!2 = distinct !{ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!3 = distinct !{ptr @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev, null, ptr @_ZSt8_DestroyIPN9grpc_core12experimental4JsonEEvT_S4_, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!4 = distinct !{ptr @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev, null, ptr @_ZSt8_DestroyIPN9grpc_core12experimental4JsonEEvT_S4_, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!5 = distinct !{!5, !97}
!6 = distinct !{null, null, null}
!7 = distinct !{!7, !97}
!8 = distinct !{null, null, null}
!9 = distinct !{null}
!10 = distinct !{ptr @_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEED2Ev, null, null, null}
!11 = distinct !{null, null, null}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"any pointer", !16, i64 0}
!21 = !{!"p1 _ZTSN9grpc_core19LoadBalancingPolicy20ChannelControlHelperE", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"vtable pointer", !15, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!20, !20, i64 0}
!26 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0}
!27 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 8, !17, i64 12}
!30 = !{!29, !17, i64 8}
!31 = !{!29, !17, i64 12}
!32 = !{!16, !16, i64 0}
!33 = !{!17, !17, i64 0}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{!"p1 _ZTSN9grpc_core12EndpointList8EndpointE", !20, i64 0}
!36 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_12EndpointList8EndpointEEE", !35, i64 0}
!37 = !{!36, !35, i64 0}
!38 = !{!"p1 _ZTSN9grpc_core14WorkSerializerE", !20, i64 0}
!39 = !{!"_ZTSSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EE", !38, i64 0, !27, i64 8}
!40 = !{!"p1 _ZTSN9grpc_core19LoadBalancingPolicyE", !20, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"p1 _ZTSN9grpc_core12EndpointListE", !20, i64 0}
!43 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_12EndpointListEEE", !42, i64 0}
!44 = !{!43, !42, i64 0}
!45 = !{!"_ZTSN9grpc_core10OrphanableE"}
!46 = !{!"long", !16, i64 0}
!47 = !{!"_ZTSSt13__atomic_baseIlE", !46, i64 0}
!48 = !{!"_ZTSSt6atomicIlE", !47, i64 0}
!49 = !{!"_ZTSN9grpc_core8RefCountE", !48, i64 0}
!50 = !{!"_ZTSN9grpc_core20InternallyRefCountedINS_12EndpointListENS_11UnrefDeleteEEE", !45, i64 0, !49, i64 8}
!51 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicyEEE", !40, i64 0}
!52 = !{!"p1 omnipotent char", !20, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !52, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !53, i64 0, !46, i64 8, !16, i64 16}
!55 = !{!"p1 _ZTSSt10unique_ptrIN9grpc_core12EndpointList8EndpointENS0_16OrphanableDeleteEE", !20, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEESaIS5_EE", !58, i64 0}
!60 = !{!"_ZTSN9grpc_core12EndpointListE", !50, i64 0, !51, i64 16, !54, i64 24, !52, i64 56, !59, i64 64, !46, i64 88}
!61 = !{!51, !40, i64 0}
!62 = !{!35, !35, i64 0}
!63 = !{!"_ZTSN9grpc_core20InternallyRefCountedINS_19LoadBalancingPolicyENS_11UnrefDeleteEEE", !45, i64 0, !49, i64 8}
!64 = !{!"_ZTSSt10shared_ptrIN9grpc_core14WorkSerializerEE", !39, i64 0}
!65 = !{!"p1 _ZTS16grpc_pollset_set", !20, i64 0}
!66 = !{!"_ZTSSt10_Head_baseILm0EPN9grpc_core19LoadBalancingPolicy20ChannelControlHelperELb0EE", !21, i64 0}
!67 = !{!"_ZTSSt11_Tuple_implILm0EJPN9grpc_core19LoadBalancingPolicy20ChannelControlHelperESt14default_deleteIS2_EEE", !66, i64 0}
!68 = !{!"_ZTSSt5tupleIJPN9grpc_core19LoadBalancingPolicy20ChannelControlHelperESt14default_deleteIS2_EEE", !67, i64 0}
!69 = !{!"_ZTSSt15__uniq_ptr_implIN9grpc_core19LoadBalancingPolicy20ChannelControlHelperESt14default_deleteIS2_EE", !68, i64 0}
!70 = !{!"_ZTSSt15__uniq_ptr_dataIN9grpc_core19LoadBalancingPolicy20ChannelControlHelperESt14default_deleteIS2_ELb1ELb1EE", !69, i64 0}
!71 = !{!"_ZTSSt10unique_ptrIN9grpc_core19LoadBalancingPolicy20ChannelControlHelperESt14default_deleteIS2_EE", !70, i64 0}
!72 = !{!"p1 _ZTSN9grpc_core3AVLINS_21RefCountedStringValueENS_11ChannelArgs5ValueEE4NodeE", !20, i64 0}
!73 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_3AVLINS_21RefCountedStringValueENS_11ChannelArgs5ValueEE4NodeEEE", !72, i64 0}
!74 = !{!"_ZTSN9grpc_core3AVLINS_21RefCountedStringValueENS_11ChannelArgs5ValueEEE", !73, i64 0}
!75 = !{!"_ZTSN9grpc_core11ChannelArgsE", !74, i64 0}
!76 = !{!"_ZTSN9grpc_core19LoadBalancingPolicyE", !63, i64 0, !64, i64 16, !65, i64 32, !71, i64 40, !75, i64 48}
!77 = !{!76, !65, i64 32}
!78 = !{!"_ZTSSt14_Rb_tree_color", !16, i64 0}
!79 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !20, i64 0}
!80 = !{!"_ZTSSt18_Rb_tree_node_base", !78, i64 0, !79, i64 8, !79, i64 16, !79, i64 24}
!81 = !{!"_ZTSSt15_Rb_tree_header", !80, i64 0, !46, i64 32}
!82 = !{!81, !79, i64 16}
!83 = !{!81, !79, i64 24}
!84 = !{!81, !46, i64 32}
!85 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEEE", !16, i64 0, !16, i64 48}
!86 = !{!85, !16, i64 48}
!87 = !{!81, !78, i64 0}
!88 = !{!81, !79, i64 8}
!89 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !20, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"p1 _ZTSN9grpc_core12experimental4JsonE", !20, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIN9grpc_core12experimental4JsonESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!92, !91, i64 0}
!94 = !{!92, !91, i64 16}
!95 = !{!92, !91, i64 8}
!96 = !{ptr @_ZN9grpc_core12experimental4JsonD2Ev, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{ptr @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev}
!99 = !{!54, !52, i64 0}
!100 = !{!"_ZTSN4absl12lts_202505126StatusE", !46, i64 0}
!101 = !{!100, !46, i64 0}
!102 = !{!"p1 _ZTS21grpc_resolved_address", !20, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseI21grpc_resolved_addressSaIS0_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!103, !102, i64 0}
!105 = !{!103, !102, i64 16}
!106 = !{!"p1 _ZTSN9grpc_core19LoadBalancingPolicy6ConfigE", !20, i64 0}
!107 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy6ConfigEEE", !106, i64 0}
!108 = !{!107, !106, i64 0}
!109 = !{!53, !52, i64 0}
!110 = !{!54, !46, i64 8}
!111 = !{!"p1 _ZTSN4absl12lts_2025051212log_internal10LogMessage14LogMessageDataE", !20, i64 0}
!112 = !{!111, !111, i64 0}
!113 = !{!52, !52, i64 0}
!114 = !{!46, !46, i64 0}
!115 = !{!"p1 _ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEEE", !20, i64 0}
!116 = !{!"_ZTSZNSt8__detail9__variant15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEEC1EOSO_EUlOT_T0_E_", !115, i64 0}
!117 = !{!116, !115, i64 0}
!118 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!119 = !{!"p1 _ZTSN9grpc_core19LoadBalancingPolicy16SubchannelPickerE", !20, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!56, !55, i64 8}
!122 = !{!56, !55, i64 0}
!123 = !{!"p1 _ZTSSt6vectorIN9grpc_core17EndpointAddressesESaIS1_EE", !20, i64 0}
!124 = !{!"p1 _ZTSN9grpc_core17EndpointAddressesE", !20, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIN9grpc_core17EndpointAddressesESaIS1_EE17_Vector_impl_dataE", !124, i64 0, !124, i64 8, !124, i64 16}
!126 = !{!125, !124, i64 8}
!127 = !{!125, !124, i64 0}
!128 = !{!125, !124, i64 16}
!129 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy16SubchannelPickerEEE", !119, i64 0}
!130 = !{!129, !119, i64 0}
!131 = !{!"p1 _ZTSN9grpc_core19LoadBalancingPolicy22TransientFailurePickerE", !20, i64 0}
!132 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy22TransientFailurePickerEEE", !131, i64 0}
!133 = !{!132, !131, i64 0}
!134 = !{!"short", !16, i64 0}
!135 = !{!134, !134, i64 0}
!136 = !{!91, !91, i64 0}
!137 = !{!79, !79, i64 0}
!138 = !{!80, !79, i64 8}
!139 = !{!80, !79, i64 24}
!140 = !{!80, !79, i64 16}
!141 = !{!"bool", !16, i64 0}
!142 = !{!141, !141, i64 0}
!143 = !{i8 0, i8 2}
!144 = !{}
!145 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIbLb1EEE", !141, i64 0}
!146 = !{!145, !141, i64 0}
!147 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_Alloc_nodeE", !89, i64 0}
!148 = !{!147, !89, i64 0}
!149 = !{i64 8}
!150 = !{!"p1 _ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEEE", !20, i64 0}
!151 = !{!"_ZTSZNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEEC1ERKSO_EUlOT_T0_E_", !150, i64 0}
!152 = !{!151, !150, i64 0}
!153 = !{!"_ZTSN4absl12lts_2025051215random_internal6RandenE", !20, i64 0, !141, i64 8}
!154 = !{!"_ZTSN4absl12lts_2025051215random_internal13randen_engineImEE", !16, i64 0, !46, i64 264, !153, i64 272}
!155 = !{!154, !46, i64 264}
!156 = !{!153, !141, i64 8}
!157 = !{!153, !20, i64 0}
!158 = distinct !{null, null, null}
!159 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!160 = distinct !{!160, i1 false, !"_ZN9grpc_core20InternallyRefCountedINS_12EndpointList8EndpointENS_11UnrefDeleteEE3RefERKNS_13DebugLocationEPKc"}
!161 = distinct !{!161, !160, !"_ZN9grpc_core20InternallyRefCountedINS_12EndpointList8EndpointENS_11UnrefDeleteEE3RefERKNS_13DebugLocationEPKc: argument 0"}
!162 = distinct !{!162, i1 false, !"_ZSt11make_uniqueIN9grpc_core12EndpointList8Endpoint6HelperEJNS0_13RefCountedPtrIS2_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!163 = distinct !{!163, !162, !"_ZSt11make_uniqueIN9grpc_core12EndpointList8Endpoint6HelperEJNS0_13RefCountedPtrIS2_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!164 = distinct !{null, null, null, null}
!165 = distinct !{ptr @_ZN9grpc_core19LoadBalancingPolicy4ArgsD2Ev, null, null}
!166 = distinct !{ptr @_ZN9grpc_core19LoadBalancingPolicy4ArgsD2Ev, ptr @_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!167 = distinct !{!167, i1 false, !"_ZN9grpc_core12experimental4Json10FromObjectEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_St4lessIS8_ESaISt4pairIKS8_S1_EEE"}
!168 = distinct !{!168, !167, !"_ZN9grpc_core12experimental4Json10FromObjectEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_St4lessIS8_ESaISt4pairIKS8_S1_EEE: argument 0"}
!169 = distinct !{!169, i1 false, !"_ZN9grpc_core12experimental4Json10FromObjectEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_St4lessIS8_ESaISt4pairIKS8_S1_EEE"}
!170 = distinct !{!170, !169, !"_ZN9grpc_core12experimental4Json10FromObjectEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_St4lessIS8_ESaISt4pairIKS8_S1_EEE: argument 0"}
!171 = distinct !{!171, i1 false, !"_ZN9grpc_core12experimental4Json9FromArrayEOSt6vectorIS1_SaIS1_EE"}
!172 = distinct !{!172, !171, !"_ZN9grpc_core12experimental4Json9FromArrayEOSt6vectorIS1_SaIS1_EE: argument 0"}
!173 = distinct !{ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!174 = distinct !{null, null, null, null, null, null}
!175 = distinct !{null, null, null, null}
!176 = distinct !{ptr @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core13RefCountedPtrINS3_19LoadBalancingPolicy6ConfigEEEED2Ev, null, null, null}
!177 = !{!161}
!178 = !{!163}
!179 = !{!39, !38, i64 0}
!180 = !{!60, !52, i64 56}
!181 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!182 = !{!168}
!183 = !{!170}
!184 = !{!172}
!185 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev}
!186 = !{ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev, ptr @_ZN9grpc_core12experimental4JsonD2Ev, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!187 = !{ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev}
!188 = !{!"p1 _ZTSN9grpc_core25EndpointAddressesIteratorE", !20, i64 0}
!189 = !{!188, !188, i64 0}
!190 = !{!106, !106, i64 0}
!191 = !{!"_ZTSSt12__shared_ptrIN9grpc_core25EndpointAddressesIteratorELN9__gnu_cxx12_Lock_policyE2EE", !188, i64 0, !27, i64 8}
!192 = !{!191, !188, i64 0}
!193 = distinct !{null, null}
!194 = distinct !{ptr @_ZNSt12__shared_ptrIN9grpc_core14WorkSerializerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!195 = distinct !{null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!196 = !{ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!197 = distinct !{null, ptr @_ZSt8_DestroyIPN9grpc_core12experimental4JsonEEvT_S4_, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!198 = distinct !{null, ptr @_ZSt8_DestroyIPN9grpc_core12experimental4JsonEEvT_S4_, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!199 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev}
!200 = distinct !{ptr @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIN9grpc_core25EndpointAddressesIteratorEEED2Ev, null, null, null}
!201 = distinct !{null, null}
!202 = distinct !{null, null, null, null}
!203 = distinct !{null, null}
!204 = distinct !{!204, !97}
!205 = distinct !{null}
!206 = distinct !{!206, !97}
!207 = distinct !{!207, i1 false, !"_ZN9grpc_core20InternallyRefCountedINS_12EndpointListENS_11UnrefDeleteEE3RefERKNS_13DebugLocationEPKc"}
!208 = distinct !{!208, !207, !"_ZN9grpc_core20InternallyRefCountedINS_12EndpointListENS_11UnrefDeleteEE3RefERKNS_13DebugLocationEPKc: argument 0"}
!209 = distinct !{null}
!210 = distinct !{!210, !97}
!211 = !{!123, !123, i64 0}
!212 = !{!"_ZTSN4absl12lts_2025051224uniform_int_distributionImE10param_typeE", !46, i64 0, !46, i64 8}
!213 = !{!212, !46, i64 0}
!214 = !{!212, !46, i64 8}
!215 = !{!208}
!216 = !{!55, !55, i64 0}
!217 = !{ptr @_ZN9grpc_core12EndpointList8Endpoint18ResetBackoffLockedEv}
!218 = distinct !{!218, i1 false, !"_ZN9grpc_core14MakeRefCountedINS_19LoadBalancingPolicy22TransientFailurePickerEJRN4absl12lts_202505126StatusEEEENS_13RefCountedPtrIT_EEDpOT0_"}
!219 = distinct !{!219, !218, !"_ZN9grpc_core14MakeRefCountedINS_19LoadBalancingPolicy22TransientFailurePickerEJRN4absl12lts_202505126StatusEEEENS_13RefCountedPtrIT_EEDpOT0_: argument 0"}
!220 = distinct !{ptr @_ZN9grpc_core13RefCountedPtrINS_19LoadBalancingPolicy22TransientFailurePickerEED2Ev, null, null, null}
!221 = !{!"_ZTSSt13__atomic_baseIiE", !17, i64 0}
!222 = !{!"_ZTSSt6atomicIiE", !221, i64 0}
!223 = !{!"_ZTSN4absl12lts_2025051210StatusCodeE", !16, i64 0}
!224 = !{!"p1 _ZTSN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EEE", !20, i64 0}
!225 = !{!"_ZTSSt10_Head_baseILm0EPN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEELb0EE", !224, i64 0}
!226 = !{!"_ZTSSt11_Tuple_implILm0EJPN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EEE", !225, i64 0}
!227 = !{!"_ZTSSt5tupleIJPN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EEE", !226, i64 0}
!228 = !{!"_ZTSSt15__uniq_ptr_implIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EE", !227, i64 0}
!229 = !{!"_ZTSSt15__uniq_ptr_dataIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_ELb1ELb1EE", !228, i64 0}
!230 = !{!"_ZTSSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EE", !229, i64 0}
!231 = !{!"_ZTSN4absl12lts_2025051215status_internal9StatusRepE", !222, i64 0, !223, i64 4, !54, i64 8, !230, i64 40}
!232 = !{!231, !223, i64 4}
!233 = !{!219}
!234 = distinct !{null, null, null}
!235 = !{!42, !42, i64 0}
!236 = !{!"branch_weights", i32 1, i32 1048575}
!237 = !{!"any p2 pointer", !20, i64 0}
!238 = !{!"_ZTSNSt12_Vector_baseIPFvPvESaIS2_EE17_Vector_impl_dataE", !237, i64 0, !237, i64 8, !237, i64 16}
!239 = !{!238, !237, i64 8}
!240 = !{!238, !237, i64 0}
!241 = !{!238, !237, i64 16}
!242 = distinct !{null}
!243 = distinct !{null, null, null, null, ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev, null, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev}
!244 = distinct !{null, null, null, null, null, ptr @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev, null, ptr @_ZSt8_DestroyIPN9grpc_core12experimental4JsonEEvT_S4_, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!245 = distinct !{null, null, null, null, null, ptr @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev, null, ptr @_ZSt8_DestroyIPN9grpc_core12experimental4JsonEEvT_S4_, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!246 = distinct !{null, null, null, null, ptr @_ZNSt6vectorIN9grpc_core12experimental4JsonESaIS2_EED2Ev, null}
!247 = distinct !{ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, null, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!248 = distinct !{ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, null, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!249 = distinct !{!249, !97}
!250 = distinct !{null}
!251 = distinct !{null, null, null}
!252 = distinct !{null}
!253 = distinct !{null, null}
!254 = distinct !{!254, !97}
!255 = distinct !{null, null, null, null, null}
!256 = distinct !{null, null, null, null}
!257 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, null}
!258 = distinct !{!258, !97}
!259 = distinct !{!259, !97}
!260 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null}
!261 = distinct !{null, null}
!262 = distinct !{null, null, null}
!263 = distinct !{!263, !97}
!264 = !{!80, !78, i64 0}
!265 = distinct !{null, null, null, null, null, null, null, null, null}
!266 = distinct !{null, null, null, null, null, null, null, null}
!267 = distinct !{null, null, null}
!268 = distinct !{!268, !97}
!269 = distinct !{null, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!270 = distinct !{null, ptr @_ZN9grpc_core12experimental4JsonD2Ev, null, ptr @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev}
!271 = distinct !{null, null}
!272 = distinct !{null, null, null}
!273 = distinct !{ptr @_ZN9grpc_core12EndpointList8Endpoint6HelperD2Ev, null, null, null}
!274 = distinct !{ptr @_ZN9grpc_core12EndpointList8Endpoint6HelperD2Ev, null, null, null}
!275 = distinct !{null}
!276 = distinct !{null, null, null, null, null}
!277 = !{!60, !46, i64 88}
!278 = distinct !{null, null, null, null, null, null, null, null, null}
!279 = distinct !{null, null, null, null, null, null, null, null}
!280 = distinct !{!280, !97}
!281 = !{!"_ZTSSt9type_info", !52, i64 8}
!282 = !{!281, !52, i64 8}
!283 = distinct !{null}
!284 = !{!"_ZTSZN9grpc_core12EndpointList4InitEPNS_25EndpointAddressesIteratorERKNS_11ChannelArgsEN4absl12lts_2025051211FunctionRefIFSt10unique_ptrINS0_8EndpointENS_16OrphanableDeleteEENS_13RefCountedPtrIS0_EERKNS_17EndpointAddressesES5_EEEE3$_0", !123, i64 0}
!285 = !{!284, !123, i64 0}
!286 = distinct !{!286, i1 false, !"_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_"}
!287 = distinct !{!287, !286, !"_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!288 = distinct !{!288, !286, !"_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!289 = distinct !{!289, !97}
!290 = distinct !{!290, i1 false, !"_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_"}
!291 = distinct !{!291, !290, !"_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!292 = distinct !{!292, !290, !"_ZSt19__relocate_object_aIN9grpc_core17EndpointAddressesES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!293 = !{!287}
!294 = !{!288}
!295 = !{!291}
!296 = !{!292}
!297 = distinct !{!297, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEES5_SaIS5_EEvPT_PT0_RT1_"}
!298 = distinct !{!298, !297, !"_ZSt19__relocate_object_aISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!299 = distinct !{!299, !297, !"_ZSt19__relocate_object_aISt10unique_ptrIN9grpc_core12EndpointList8EndpointENS1_16OrphanableDeleteEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!300 = distinct !{!300, i1 false, !"LVerDomain"}
!301 = distinct !{!301, !300}
!302 = distinct !{!302, !300}
!303 = distinct !{!303, !97, !312, !313}
!304 = distinct !{!304, !97, !312}
!305 = !{!56, !55, i64 16}
!306 = !{!"_ZTSSt10_Head_baseILm0EPN9grpc_core12EndpointList8EndpointELb0EE", !35, i64 0}
!307 = !{!306, !35, i64 0}
!308 = !{!298}
!309 = !{!299}
!310 = !{!299, !301}
!311 = !{!298, !302}
!312 = !{!"llvm.loop.isvectorized", i32 1}
!313 = !{!"llvm.loop.unroll.runtime.disable"}
!314 = distinct !{!314, !97}
!315 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core19LoadBalancingPolicy10PickResult8CompleteENS4_5QueueENS4_4FailENS4_4DropEEEE", !16, i64 0, !16, i64 200}
!316 = !{!315, !16, i64 200}
end_hunk_0
