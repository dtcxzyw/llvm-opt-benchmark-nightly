Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/client_authority_filter?download=true
inline.NumInlined: 1224
inline.NumDeleted: 867
begin_hunk_0_@_ZN9grpc_core21ClientAuthorityFilter6CreateERKNS_11ChannelArgsENS_10FilterArgsE:bb.a
  %5 = alloca %"class.grpc_core::Slice", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNK9grpc_core11ChannelArgs9GetStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 22, ptr nonnull @.str)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !8, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %4, i64 134, ptr nonnull @.str.1)
  %i.d = load i64, ptr %4, align 8, !tbaa !13     ; 2 uses
  store i64 %i.d, ptr %0, align 8, !tbaa !13
  store i64 55, ptr %4, align 8, !tbaa !13
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4absl12lts_202505126StatusD2Ev.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN4absl12lts_202505128StatusOrISt10unique_ptrIN9grpc_core21ClientAuthorityFilterESt14default_deleteIS4_EEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit unwind label %.body

.body:                                            ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #27
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.i

_ZN4absl12lts_202505128StatusOrISt10unique_ptrIN9grpc_core21ClientAuthorityFilterESt14default_deleteIS4_EEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit: ; preds = %bb.c
  %.pre = load i64, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.g = trunc i64 %.pre to i1
  br i1 %i.g, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_202505128StatusOrISt10unique_ptrIN9grpc_core21ClientAuthorityFilterESt14default_deleteIS4_EEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit
  %i.h = inttoptr i64 %.pre to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.b, %_ZN4absl12lts_202505128StatusOrISt10unique_ptrIN9grpc_core21ClientAuthorityFilterESt14default_deleteIS4_EEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %.sroa.0.0.copyload = load i64, ptr %3, align 8, !tbaa !17
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !18
  call void @grpc_slice_from_copied_buffer(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %5, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload)
  %i.k = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %_ZN9grpc_core5SliceD2Ev.exit unwind label %bb.g ; 4 uses

_ZN9grpc_core5SliceD2Ev.exit:                     ; preds = %bb.f
  %.sroa.03.0.copyload.i = load ptr, ptr %5, align 8, !tbaa !21, !noalias !23
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.46.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.44.0..sroa_idx.i, i64 24, i1 false), !noalias !23
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9grpc_core21ClientAuthorityFilterE, i64 16), ptr %i.k, align 8, !tbaa !26, !noalias !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.03.0.copyload.i, ptr %i.l, align 8, !tbaa !21, !noalias !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.cast = ptrtoint ptr %i.k to i64
  store i64 %.cast, ptr %i.m, align 8, !tbaa !28
  store i64 1, ptr %0, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.i

bb.h:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit, %_ZN4absl12lts_202505126StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.i:                                             ; preds = %bb.g, %.body
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZNK9grpc_core11ChannelArgs9GetStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64, ptr) local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126Status5UnrefEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_ZN4absl12lts_202505126Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202505126Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN9grpc_core21ClientAuthorityFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 4 uses
  %i.d = icmp ugt ptr %i.c, inttoptr (i64 1 to ptr)
  br i1 %i.d, label %bb.c, label %_ZNKSt14default_deleteIN9grpc_core21ClientAuthorityFilterEEclEPS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_ZNKSt14default_deleteIN9grpc_core21ClientAuthorityFilterEEclEPS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZNKSt14default_deleteIN9grpc_core21ClientAuthorityFilterEEclEPS1_.exit unwind label %bb.e, !inline_history !36

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

_ZNKSt14default_deleteIN9grpc_core21ClientAuthorityFilterEEclEPS1_.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN9grpc_core21ClientAuthorityFilterEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 4 uses
  %i.b = icmp ugt ptr %i.a, inttoptr (i64 1 to ptr)
  br i1 %i.b, label %bb.b, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit unwind label %bb.d, !inline_history !36

_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit: ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9grpc_core21ClientAuthorityFilter4Call23OnClientInitialMetadataER19grpc_metadata_batchPS0_(ptr nofree nonnull readnone align 1 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(664) %1, ptr nofree noundef readonly captures(none) %2) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.8 = alloca %"union.grpc_slice::grpc_slice_data", align 8 ; 4 uses
  %i.a = load i16, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.b = and i16 %i.a, 2
  %.not.i.i.not.i = icmp eq i16 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  br i1 %.not.i.i.not.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30, !noalias !39 ; 3 uses
  %i.f = icmp ugt ptr %i.e, inttoptr (i64 1 to ptr)
  br i1 %i.f, label %bb.c, label %_ZNK9grpc_core5Slice3RefEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !39 ; 0 uses
  %.sroa.0.0.copyload.pre = load ptr, ptr %i.d, align 8, !tbaa !21
  %.pre = load i16, ptr %1, align 8, !tbaa !37
  br label %_ZNK9grpc_core5Slice3RefEv.exit

_ZNK9grpc_core5Slice3RefEv.exit:                  ; preds = %bb.b, %bb.c
  %i.h = phi i16 [ %i.a, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %.sroa.0.0.copyload = phi ptr [ %i.e, %bb.b ], [ %.sroa.0.0.copyload.pre, %bb.c ] ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, i64 24, i1 false), !tbaa.struct !42
  %storemerge.i.i.i.i = or i16 %i.h, 2
  store i16 %storemerge.i.i.i.i, ptr %1, align 8, !tbaa !37
  %i.i = and i16 %i.h, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK9grpc_core5Slice3RefEv.exit
  %.sroa.011.0.copyload.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !21 ; 4 uses
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8, !tbaa !21
  %i.j = icmp ugt ptr %.sroa.011.0.copyload.i.i.i, inttoptr (i64 1 to ptr)
  br i1 %i.j, label %bb.e, label %_ZN9grpc_core5SliceD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.k = atomicrmw sub ptr %.sroa.011.0.copyload.i.i.i, i64 1 acq_rel, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_ZN9grpc_core5SliceD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.0.copyload.i.i.i)
          to label %_ZN9grpc_core5SliceD2Ev.exit unwind label %bb.g, !inline_history !36

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #28
  unreachable

bb.h:                                             ; preds = %_ZNK9grpc_core5Slice3RefEv.exit
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8, !tbaa !21
  br label %_ZN9grpc_core5SliceD2Ev.exit

_ZN9grpc_core5SliceD2Ev.exit:                     ; preds = %bb.d, %bb.e, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.i

bb.i:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core29RegisterClientAuthorityFilterEPNS_17CoreConfiguration7BuilderE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %"class.grpc_core::UniqueTypeName"], align 8 ; 5 uses
  %2 = alloca %"class.grpc_core::SourceLocation", align 8 ; 5 uses
  %3 = alloca [1 x %"class.grpc_core::UniqueTypeName"], align 8 ; 5 uses
  %4 = alloca %"class.grpc_core::SourceLocation", align 8 ; 5 uses
  %5 = alloca [1 x %"class.grpc_core::UniqueTypeName"], align 8 ; 5 uses
  %6 = alloca %"class.grpc_core::SourceLocation", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::AnyInvocable.118", align 16 ; 8 uses
  %8 = alloca %"class.absl::lts_20250512::AnyInvocable.118", align 16 ; 8 uses
  %9 = alloca %"class.absl::lts_20250512::AnyInvocable.118", align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.b = load atomic i8, ptr @_ZGVZN9grpc_core17UniqueTypeNameForINS_21ClientAuthorityFilterEEENS_14UniqueTypeNameEvE7factory acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN9grpc_core11ChannelInit7Builder14RegisterFilterINS_21ClientAuthorityFilterEEERNS0_18FilterRegistrationE23grpc_channel_stack_typeNS_14SourceLocationE.exit, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core17UniqueTypeNameForINS_21ClientAuthorityFilterEEENS_14UniqueTypeNameEvE7factory) #27
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN9grpc_core11ChannelInit7Builder14RegisterFilterINS_21ClientAuthorityFilterEEERNS0_18FilterRegistrationE23grpc_channel_stack_typeNS_14SourceLocationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29
          to label %bb.d unwind label %bb.e       ; 5 uses

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.f, ptr noundef nonnull align 1 dereferenceable(9) @.str.19, i64 9, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 9, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  store i8 0, ptr %i.h, align 1, !tbaa !43
  store ptr %i.e, ptr @_ZZN9grpc_core17UniqueTypeNameForINS_21ClientAuthorityFilterEEENS_14UniqueTypeNameEvE7factory, align 8, !tbaa !49
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core17UniqueTypeNameForINS_21ClientAuthorityFilterEEENS_14UniqueTypeNameEvE7factory) #27
  br label %_ZN9grpc_core11ChannelInit7Builder14RegisterFilterINS_21ClientAuthorityFilterEEERNS0_18FilterRegistrationE23grpc_channel_stack_typeNS_14SourceLocationE.exit

common.resume:                                    ; preds = %.body, %.body12, %.body20, %bb.y, %bb.o, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.aj, %bb.o ], [ %i.bk, %bb.y ], [ %eh.lpad-body21, %.body20 ], [ %eh.lpad-body13, %.body12 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN9grpc_core17UniqueTypeNameForINS_21ClientAuthorityFilterEEENS_14UniqueTypeNameEvE7factory) #27
  br label %common.resume

_ZN9grpc_core11ChannelInit7Builder14RegisterFilterINS_21ClientAuthorityFilterEEERNS0_18FilterRegistrationE23grpc_channel_stack_typeNS_14SourceLocationE.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.j = load ptr, ptr @_ZZN9grpc_core17UniqueTypeNameForINS_21ClientAuthorityFilterEEENS_14UniqueTypeNameEvE7factory, align 8, !tbaa !49 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47
  store ptr @.str.2, ptr %6, align 8, !tbaa !18
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 73, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !53
  %i.n = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN9grpc_core11ChannelInit7Builder14RegisterFilterE23grpc_channel_stack_typeNS_14UniqueTypeNameEPK19grpc_channel_filterPFvRNS_24InterceptionChainBuilderEENS_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(896) %i.a, i32 noundef 1, i64 %i.m, ptr %i.k, ptr noundef nonnull @_ZN9grpc_core21ClientAuthorityFilter7kFilterE, ptr noundef nonnull @_ZZN9grpc_core11ChannelInit7Builder14RegisterFilterINS_21ClientAuthorityFilterEEERNS0_18FilterRegistrationE23grpc_channel_stack_typeNS_14SourceLocationEENUlRNS_24InterceptionChainBuilderEE_8__invokeES9_, ptr noundef nonnull byval(%"class.grpc_core::SourceLocation") align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr @_ZN9grpc_core12_GLOBAL__N_126NeedsClientAuthorityFilterERKNS_11ChannelArgsE, ptr %7, align 16, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EbRKPFbRKN9grpc_core11ChannelArgsEEJS6_EEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE, ptr %i.o, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable19LocalManagerTrivialENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.p, align 16, !tbaa !57
  %i.q = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN9grpc_core11ChannelInit18FilterRegistration2IfEN4absl12lts_2025051212AnyInvocableIKFbRKNS_11ChannelArgsEEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 16 %7)
          to label %bb.f unwind label %bb.af

bb.f:                                             ; preds = %_ZN9grpc_core11ChannelInit7Builder14RegisterFilterINS_21ClientAuthorityFilterEEERNS0_18FilterRegistrationE23grpc_channel_stack_typeNS_14SourceLocationE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.r = load atomic i8, ptr @_ZGVZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEvE7factory acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.g, label %_ZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEv.exit.i, !prof !44

bb.g:                                             ; preds = %bb.f
  %i.t = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEvE7factory) #27
  %.not.i.i6 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i6, label %_ZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN9grpc_core14UniqueTypeName7FactoryC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEvE7factory, i64 18, ptr nonnull @.str.24)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEvE7factory) #27
  br label %_ZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEvE7factory) #27
  br label %.body

_ZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEv.exit.i: ; preds = %bb.i, %bb.g, %bb.f
  %i.v = load ptr, ptr @_ZZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEvE7factory, align 8, !tbaa !49 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !47
  store i64 %i.y, ptr %5, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN9grpc_core11ChannelInit18FilterRegistration6BeforeESt16initializer_listINS_14UniqueTypeNameEE(ptr noundef nonnull align 8 dereferenceable(128) %i.q, ptr nonnull %5, i64 1)
          to label %bb.k unwind label %bb.af      ; 0 uses

bb.k:                                             ; preds = %_ZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ab = load ptr, ptr %i.p, align 16, !tbaa !57
  call void %i.ab(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) %7) #27, !inline_history !58
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ac = load atomic i8, ptr @_ZGVZN9grpc_core17UniqueTypeNameForINS_21ClientAuthorityFilterEEENS_14UniqueTypeNameEvE7factory acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %_ZN9grpc_core11ChannelInit7Builder14RegisterFilterINS_21ClientAuthorityFilterEEERNS0_18FilterRegistrationE23grpc_channel_stack_typeNS_14SourceLocationE.exit9, !prof !44

bb.l:                                             ; preds = %bb.k
  %i.ae = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core17UniqueTypeNameForINS_21ClientAuthorityFilterEEENS_14UniqueTypeNameEvE7factory) #27
  %.not.i.i8 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i8, label %_ZN9grpc_core11ChannelInit7Builder14RegisterFilterINS_21ClientAuthorityFilterEEERNS0_18FilterRegistrationE23grpc_channel_stack_typeNS_14SourceLocationE.exit9, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29
          to label %bb.n unwind label %bb.o       ; 5 uses

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ag, ptr noundef nonnull align 1 dereferenceable(9) @.str.19, i64 9, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 9, ptr %i.ah, align 8, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 25
  store i8 0, ptr %i.ai, align 1, !tbaa !43
  store ptr %i.af, ptr @_ZZN9grpc_core17UniqueTypeNameForINS_21ClientAuthorityFilterEEENS_14UniqueTypeNameEvE7factory, align 8, !tbaa !49
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core17UniqueTypeNameForINS_21ClientAuthorityFilterEEENS_14UniqueTypeNameEvE7factory) #27
  br label %_ZN9grpc_core11ChannelInit7Builder14RegisterFilterINS_21ClientAuthorityFilterEEERNS0_18FilterRegistrationE23grpc_channel_stack_typeNS_14SourceLocationE.exit9

bb.o:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN9grpc_core17UniqueTypeNameForINS_21ClientAuthorityFilterEEENS_14UniqueTypeNameEvE7factory) #27
  br label %common.resume

_ZN9grpc_core11ChannelInit7Builder14RegisterFilterINS_21ClientAuthorityFilterEEERNS0_18FilterRegistrationE23grpc_channel_stack_typeNS_14SourceLocationE.exit9: ; preds = %bb.k, %bb.l, %bb.n
  %i.ak = load ptr, ptr @_ZZN9grpc_core17UniqueTypeNameForINS_21ClientAuthorityFilterEEENS_14UniqueTypeNameEvE7factory, align 8, !tbaa !49 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !47
  store ptr @.str.2, ptr %4, align 8, !tbaa !18
  %.sroa.22.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 77, ptr %.sroa.22.0..sroa_idx.i7, align 8, !tbaa !53
  %i.ao = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN9grpc_core11ChannelInit7Builder14RegisterFilterE23grpc_channel_stack_typeNS_14UniqueTypeNameEPK19grpc_channel_filterPFvRNS_24InterceptionChainBuilderEENS_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(896) %i.a, i32 noundef 4, i64 %i.an, ptr %i.al, ptr noundef nonnull @_ZN9grpc_core21ClientAuthorityFilter7kFilterE, ptr noundef nonnull @_ZZN9grpc_core11ChannelInit7Builder14RegisterFilterINS_21ClientAuthorityFilterEEERNS0_18FilterRegistrationE23grpc_channel_stack_typeNS_14SourceLocationEENUlRNS_24InterceptionChainBuilderEE_8__invokeES9_, ptr noundef nonnull byval(%"class.grpc_core::SourceLocation") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr @_ZN9grpc_core12_GLOBAL__N_126NeedsClientAuthorityFilterERKNS_11ChannelArgsE, ptr %8, align 16, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EbRKPFbRKN9grpc_core11ChannelArgsEEJS6_EEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE, ptr %i.ap, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable19LocalManagerTrivialENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.aq, align 16, !tbaa !57
  %i.ar = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN9grpc_core11ChannelInit18FilterRegistration2IfEN4absl12lts_2025051212AnyInvocableIKFbRKNS_11ChannelArgsEEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.ao, ptr noundef nonnull align 16 %8)
          to label %bb.p unwind label %bb.ag

bb.p:                                             ; preds = %_ZN9grpc_core11ChannelInit7Builder14RegisterFilterINS_21ClientAuthorityFilterEEERNS0_18FilterRegistrationE23grpc_channel_stack_typeNS_14SourceLocationE.exit9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.as = load atomic i8, ptr @_ZGVZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEvE7factory acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.q, label %_ZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEv.exit.i10, !prof !44

bb.q:                                             ; preds = %bb.p
  %i.au = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEvE7factory) #27
  %.not.i.i11 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i11, label %_ZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEv.exit.i10, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN9grpc_core14UniqueTypeName7FactoryC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEvE7factory, i64 18, ptr nonnull @.str.24)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEvE7factory) #27
  br label %_ZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEv.exit.i10

bb.t:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEvE7factory) #27
  br label %.body12

_ZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEv.exit.i10: ; preds = %bb.s, %bb.q, %bb.p
  %i.aw = load ptr, ptr @_ZZN9grpc_core17UniqueTypeNameForINS_16ClientAuthFilterEEENS_14UniqueTypeNameEvE7factory, align 8, !tbaa !49 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !47
  store i64 %i.az, ptr %3, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ax, ptr %i.ba, align 8
end_hunk_0
begin_hunk_1_@_ZN9grpc_core21ClientAuthorityFilterD0Ev:bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN9grpc_core21ClientAuthorityFilterD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN9grpc_core21ClientAuthorityFilterD2Ev.exit unwind label %bb.d, !inline_history !36

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #28
  unreachable

_ZN9grpc_core21ClientAuthorityFilterD2Ev.exit:    ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core21promise_filter_detail7RunCallIMNS_21ClientAuthorityFilter4CallEFvR19grpc_metadata_batchPS2_ES2_EEDaT_NS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrIS4_NS_5Arena13PooledDeleterEEEESA_EEPNS0_14FilterCallDataIT0_EE(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::ArenaPromise") align 16 %0, i64 %1, i64 %2, ptr noundef align 8 %3, ptr noundef align 8 %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.grpc_core::CallArgs", align 8 ; 7 uses
  %7 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = load i8, ptr %3, align 8, !tbaa !84
  store i8 %i.a, ptr %6, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !85
  store i64 %i.d, ptr %i.b, align 8, !tbaa !85
  store ptr null, ptr %i.c, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87
  store ptr null, ptr %i.f, align 8, !tbaa !87
  store ptr %i.g, ptr %i.e, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !91
  store ptr %i.l, ptr %i.j, align 8, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !94   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN9grpc_core12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEENS0_8CallArgsEEEC2EOSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !95
  store ptr %i.n, ptr %i.o, align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFN9grpc_core12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEENS0_8CallArgsEEEC2EOSA_.exit

_ZNSt8functionIFN9grpc_core12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEENS0_8CallArgsEEEC2EOSA_.exit: ; preds = %bb.a, %bb.b
  invoke void @_ZN9grpc_core21promise_filter_detail11RunCallImplIMNS_21ClientAuthorityFilter4CallEFvR19grpc_metadata_batchPS2_ES2_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrIS4_NS_5Arena13PooledDeleterEEEESA_EEPNS0_14FilterCallDataIS2_EE(ptr dead_on_unwind writable sret(%"class.grpc_core::ArenaPromise") align 16 %0, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 %7, ptr noundef %5)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt8functionIFN9grpc_core12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEENS0_8CallArgsEEEC2EOSA_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94   ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  call void @_ZN9grpc_core37ClientInitialMetadataOutstandingTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #27
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !85   ; 3 uses
  %.not.i.i = icmp ne ptr %i.u, null
  %i.v = load i8, ptr %6, align 8, !range !11
  %i.w = trunc nuw i8 %i.v to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.w, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_ZN9grpc_core8CallArgsD2Ev.exit

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.u) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 664) #30
  br label %_ZN9grpc_core8CallArgsD2Ev.exit

_ZN9grpc_core8CallArgsD2Ev.exit:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.f
  ret void

bb.g:                                             ; preds = %_ZNSt8functionIFN9grpc_core12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEENS0_8CallArgsEEEC2EOSA_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94   ; 2 uses
  %.not.i3 = icmp eq ptr %i.z, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %bb.g, %bb.h
  call void @_ZN9grpc_core8CallArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #27
  resume { ptr, i32 } %i.x
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core8CallArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9grpc_core37ClientInitialMetadataOutstandingTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 3 uses
  %.not.i = icmp ne ptr %i.c, null
  %i.d = load i8, ptr %0, align 8, !range !11
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.c) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 664) #30
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

declare void @_ZN9grpc_core5Arena16ManagedNewObject4LinkEPSt6atomicIPS1_E(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN9grpc_core5Arena9AllocZoneEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core5Arena16ManagedNewObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core5Arena14ManagedNewImplINS_21promise_filter_detail14FilterCallDataINS_21ClientAuthorityFilterEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE8PollOnceEPNS0_7ArgTypeE(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::Poll") align 8 %0, ptr noundef %1) #4 comdat align 2 {
bb.a:
  tail call void @abort() #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE4MoveEPNS0_7ArgTypeES9_(ptr noundef %0, ptr noundef %1) #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE7DestroyEPNS0_7ArgTypeE(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core20arena_promise_detail4NullISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE7ToProtoEPKNS0_7ArgTypeEP24grpc_channelz_v2_PromiseP9upb_Arena(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.a, align 4, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.11, i64 45), ptr %i.b, align 4
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 69, ptr %.sroa.56.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core21promise_filter_detail11RunCallImplIMNS_21ClientAuthorityFilter4CallEFvR19grpc_metadata_batchPS2_ES2_vE3RunENS_8CallArgsESt8functionIFNS_12ArenaPromiseISt10unique_ptrIS4_NS_5Arena13PooledDeleterEEEESA_EEPNS0_14FilterCallDataIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::ArenaPromise") align 16 %0, ptr noundef align 8 %1, ptr noundef align 8 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.8.i = alloca %"union.grpc_slice::grpc_slice_data", align 8 ; 4 uses
  %4 = alloca %"struct.grpc_core::CallArgs", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !82     ; 2 uses
  %i.d = load i16, ptr %i.b, align 2, !tbaa !37   ; 2 uses
  %i.e = and i16 %i.d, 2
  %.not.i.i.not.i.i = icmp eq i16 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.g = ptrtoint ptr %i.b to i64
  br i1 %.not.i.i.not.i.i, label %bb.b, label %_ZN9grpc_core21ClientAuthorityFilter4Call23OnClientInitialMetadataER19grpc_metadata_batchPS0_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30, !noalias !110 ; 3 uses
  %i.j = icmp ugt ptr %i.i, inttoptr (i64 1 to ptr)
  br i1 %i.j, label %bb.c, label %_ZNK9grpc_core5Slice3RefEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !110 ; 0 uses
  %.sroa.0.0.copyload.pre.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %.pre.i = load i16, ptr %i.b, align 2, !tbaa !37
  br label %_ZNK9grpc_core5Slice3RefEv.exit.i

_ZNK9grpc_core5Slice3RefEv.exit.i:                ; preds = %bb.c, %bb.b
  %i.l = phi i16 [ %i.d, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %.sroa.0.0.copyload.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.0.0.copyload.pre.i, %bb.c ] ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i, i64 24, i1 false), !tbaa.struct !42
  %storemerge.i.i.i.i.i = or i16 %i.l, 2
  store i16 %storemerge.i.i.i.i.i, ptr %i.b, align 2, !tbaa !37
  %i.m = and i16 %i.l, 2
  %.not.i.i.i.i = icmp eq i16 %i.m, 0
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK9grpc_core5Slice3RefEv.exit.i
  %.sroa.011.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !21 ; 4 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.f, align 8, !tbaa !21
  %i.n = icmp ugt ptr %.sroa.011.0.copyload.i.i.i.i, inttoptr (i64 1 to ptr)
  br i1 %i.n, label %bb.e, label %_ZN9grpc_core5SliceD2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.o = atomicrmw sub ptr %.sroa.011.0.copyload.i.i.i.i, i64 1 acq_rel, align 8
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_ZN9grpc_core5SliceD2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.0.copyload.i.i.i.i)
          to label %_ZN9grpc_core5SliceD2Ev.exit.i unwind label %bb.g, !inline_history !36

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #28
  unreachable

bb.h:                                             ; preds = %_ZNK9grpc_core5Slice3RefEv.exit.i
  store ptr %.sroa.0.0.copyload.i, ptr %i.f, align 8, !tbaa !21
  br label %_ZN9grpc_core5SliceD2Ev.exit.i

_ZN9grpc_core5SliceD2Ev.exit.i:                   ; preds = %bb.d, %bb.e, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !85
  br label %_ZN9grpc_core21ClientAuthorityFilter4Call23OnClientInitialMetadataER19grpc_metadata_batchPS0_.exit

_ZN9grpc_core21ClientAuthorityFilter4Call23OnClientInitialMetadataER19grpc_metadata_batchPS0_.exit: ; preds = %bb.a, %_ZN9grpc_core5SliceD2Ev.exit.i
  %i.u = phi i64 [ %i.g, %bb.a ], [ %.pre, %_ZN9grpc_core5SliceD2Ev.exit.i ]
  %i.v = load i8, ptr %1, align 8, !tbaa !84
  store i8 %i.v, ptr %4, align 8, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.u, ptr %i.w, align 8, !tbaa !85
  store ptr null, ptr %i.a, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87
  store ptr null, ptr %i.y, align 8, !tbaa !87
  store ptr %i.z, ptr %i.x, align 8, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !94, !noalias !113
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN9grpc_core21ClientAuthorityFilter4Call23OnClientInitialMetadataER19grpc_metadata_batchPS0_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #31
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZN9grpc_core21ClientAuthorityFilter4Call23OnClientInitialMetadataER19grpc_metadata_batchPS0_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !91, !noalias !113
  invoke void %i.af(ptr dead_on_unwind writable sret(%"class.grpc_core::ArenaPromise") align 16 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZNKSt8functionIFN9grpc_core12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEENS0_8CallArgsEEEclES8_.exit unwind label %bb.l, !inline_history !116

_ZNKSt8functionIFN9grpc_core12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEENS0_8CallArgsEEEclES8_.exit: ; preds = %bb.j
  call void @_ZN9grpc_core37ClientInitialMetadataOutstandingTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #27
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !85  ; 3 uses
  %.not.i.i4 = icmp ne ptr %i.ag, null
  %i.ah = load i8, ptr %4, align 8, !range !11
  %i.ai = trunc nuw i8 %i.ah to i1
  %or.cond.i.i = select i1 %.not.i.i4, i1 %i.ai, i1 false
  br i1 %or.cond.i.i, label %bb.k, label %_ZN9grpc_core8CallArgsD2Ev.exit

bb.k:                                             ; preds = %_ZNKSt8functionIFN9grpc_core12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEENS0_8CallArgsEEEclES8_.exit
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.ag) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 664) #30
  br label %_ZN9grpc_core8CallArgsD2Ev.exit

_ZN9grpc_core8CallArgsD2Ev.exit:                  ; preds = %_ZNKSt8functionIFN9grpc_core12ArenaPromiseISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEENS0_8CallArgsEEEclES8_.exit, %bb.k
  ret void

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core8CallArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  resume { ptr, i32 } %i.aj
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core37ClientInitialMetadataOutstandingTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr @_ZN9grpc_core15ExperimentFlags17experiment_flags_E monotonic, align 16 ; 2 uses
  %i.b = and i64 %i.a, 33554432
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %.not4.i.i.i = icmp sgt i64 %i.a, -1
  br i1 %.not4.i.i.i, label %bb.c, label %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread6

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef 25)
          to label %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit unwind label %bb.k

_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit: ; preds = %bb.c
  br i1 %i.c, label %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread, label %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread6

_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread: ; preds = %bb.a, %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit
  %i.d = load ptr, ptr %0, align 8, !tbaa !89     ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN9grpc_core37ClientInitialMetadataOutstandingToken8MaybeSetEb.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !117, !range !11, !noundef !12
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN9grpc_core37ClientInitialMetadataOutstandingToken8MaybeSetEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.d, align 2, !tbaa !120
  store i8 1, ptr %i.e, align 1, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !121  ; 2 uses
  %i.j = icmp eq i16 %i.i, 0
  br i1 %i.j, label %_ZN9grpc_core37ClientInitialMetadataOutstandingToken8MaybeSetEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core8Activity19g_current_activity_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZTHN9grpc_core8Activity19g_current_activity_E()
          to label %.noexc1 unwind label %bb.k

.noexc1:                                          ; preds = %bb.g
  %.pre.i.i.i = load i16, ptr %i.h, align 2, !tbaa !37
  br label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.i

_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.i: ; preds = %.noexc1, %bb.f
  %i.k = phi i16 [ %i.i, %bb.f ], [ %.pre.i.i.i, %.noexc1 ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core8Activity19g_current_activity_E)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !122
  store i16 0, ptr %i.h, align 2, !tbaa !37
  br label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.invoke

_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread6: ; preds = %bb.b, %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !89     ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN9grpc_core37ClientInitialMetadataOutstandingToken8MaybeSetEb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread6
  store i8 0, ptr %i.n, align 2, !tbaa !120
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 1, ptr %i.o, align 1, !tbaa !117
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 3 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !121  ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %_ZN9grpc_core37ClientInitialMetadataOutstandingToken8MaybeSetEb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core8Activity19g_current_activity_E, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZTHN9grpc_core8Activity19g_current_activity_E()
          to label %.noexc3 unwind label %bb.k

.noexc3:                                          ; preds = %bb.j
  %.pre.i.i = load i16, ptr %i.p, align 2, !tbaa !37
  br label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i

_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i: ; preds = %.noexc3, %bb.i
  %i.s = phi i16 [ %i.q, %bb.i ], [ %.pre.i.i, %.noexc3 ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core8Activity19g_current_activity_E)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !122
  store i16 0, ptr %i.p, align 2, !tbaa !37
  br label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.invoke

_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.invoke: ; preds = %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.i, %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i
  %.sink = phi ptr [ %i.m, %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.i ], [ %i.u, %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i ] ; 2 uses
  %i.v = phi i16 [ %i.k, %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.i ], [ %i.s, %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i ]
  %i.w = load ptr, ptr %.sink, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %.sink, i16 noundef zeroext %i.v)
          to label %_ZN9grpc_core37ClientInitialMetadataOutstandingToken8MaybeSetEb.exit unwind label %bb.k, !inline_history !124

_ZN9grpc_core37ClientInitialMetadataOutstandingToken8MaybeSetEb.exit: ; preds = %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.invoke, %bb.h, %bb.e, %bb.d, %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread, %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread6
  ret void

bb.k:                                             ; preds = %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.invoke, %bb.j, %bb.g, %bb.c
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = load i8, ptr %0, align 8, !range !11
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %.not, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN9grpc_core5Arena13PooledDeleterclI19grpc_metadata_batchEEvPT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.b) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 664) #30
  br label %_ZN9grpc_core5Arena13PooledDeleterclI19grpc_metadata_batchEEvPT_.exit

_ZN9grpc_core5Arena13PooledDeleterclI19grpc_metadata_batchEEvPT_.exit: ; preds = %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_:bb.a

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !267 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #33 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !17
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !275
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !267 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !17 ; 2 uses
  %i.bg = icmp ult i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !267 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !273

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !274
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #33 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i64 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i64 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core14filters_detail9StackData17AddFilterMetadataINS_21ClientAuthorityFilterEEEvPT_mMNS4_4CallEFNS_8channelz12PropertyListEvE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef %1, i64 noundef %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !276  ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !277
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 32, ptr %i.c, align 8, !tbaa !17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.23, i64 45), ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !18
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !54
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !17
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @_ZZN9grpc_core14filters_detail9StackData17AddFilterMetadataINS_21ClientAuthorityFilterEEEvPT_mMNS4_4CallEFNS_8channelz12PropertyListEvEENUlPvSB_E_8__invokeESB_SB_, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !54
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !276
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.g, ptr %i.b, align 8, !tbaa !276
  br label %_ZNSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !278  ; 5 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #31
  unreachable

_ZNKSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = sdiv exact i64 %i.k, 40                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 230584300921369395)
  %i.q = select i1 %i.o, i64 230584300921369395, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = mul nuw nsw i64 %i.q, 40
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #29 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k ; 5 uses
  store i64 32, ptr %i.t, align 8, !tbaa !17
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.23, i64 45), ptr %.sroa.5.0..sroa_idx5, align 8, !tbaa !18
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %1, ptr %.sroa.6.0..sroa_idx7, align 8, !tbaa !54
  %.sroa.7.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %2, ptr %.sroa.7.0..sroa_idx9, align 8, !tbaa !17
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr @_ZZN9grpc_core14filters_detail9StackData17AddFilterMetadataINS_21ClientAuthorityFilterEEEvPT_mMNS4_4CallEFNS_8channelz12PropertyListEvEENUlPvSB_E_8__invokeESB_SB_, ptr %.sroa.8.0..sroa_idx11, align 8, !tbaa !54
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %_ZNKSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.h, %_ZNKSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !279, !alias.scope !280
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !284

_ZNSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 40
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !277
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.z) #30
  br label %_ZNSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !278
  store ptr %i.w, ptr %i.b, align 8, !tbaa !276
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.q
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !277
  br label %_ZNSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN9grpc_core14filters_detail14FilterMetadataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core21ClientAuthorityFilter4Call18ChannelzPropertiesEv(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::channelz::PropertyList") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN9grpc_core14filters_detail9AddOpImplINS_21ClientAuthorityFilterESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEMNS2_4CallEFvRS4_PS2_EXadL_ZNS8_23OnClientInitialMetadataES9_SA_EEvE3AddESA_mRNS0_6LayoutIS7_EEENUlPvSH_SH_OS7_E_8__invokeESH_SH_SH_SI_(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::Poll.340") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #22 comdat align 2 {
bb.a:
  %5 = alloca %class.anon.337, align 1
  call void @_ZZN9grpc_core14filters_detail9AddOpImplINS_21ClientAuthorityFilterESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEMNS2_4CallEFvRS4_PS2_EXadL_ZNS8_23OnClientInitialMetadataES9_SA_EEvE3AddESA_mRNS0_6LayoutIS7_EEENKUlPvSH_SH_OS7_E_clESH_SH_SH_SI_(ptr dead_on_unwind writable sret(%"class.grpc_core::Poll.340") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN9grpc_core14filters_detail9AddOpImplINS_21ClientAuthorityFilterESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEMNS2_4CallEFvRS4_PS2_EXadL_ZNS8_23OnClientInitialMetadataES9_SA_EEvE3AddESA_mRNS0_6LayoutIS7_EEENKUlPvSH_SH_OS7_E_clESH_SH_SH_SI_(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::Poll.340") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.8.i = alloca %"union.grpc_slice::grpc_slice_data", align 8 ; 4 uses
  %6 = alloca %"struct.grpc_core::filters_detail::ResultOr", align 8 ; 8 uses
  %7 = alloca %"class.std::unique_ptr.143", align 8 ; 5 uses
  %8 = alloca %"class.std::unique_ptr.143", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !37   ; 2 uses
  %i.d = and i16 %i.c, 2
  %.not.i.i.not.i.i = icmp eq i16 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.f = ptrtoint ptr %i.b to i64
  br i1 %.not.i.i.not.i.i, label %bb.b, label %_ZN9grpc_core21ClientAuthorityFilter4Call23OnClientInitialMetadataER19grpc_metadata_batchPS0_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30, !noalias !285 ; 3 uses
  %i.i = icmp ugt ptr %i.h, inttoptr (i64 1 to ptr)
  br i1 %i.i, label %bb.c, label %_ZNK9grpc_core5Slice3RefEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !285 ; 0 uses
  %.sroa.0.0.copyload.pre.i = load ptr, ptr %i.g, align 8, !tbaa !21
  %.pre.i = load i16, ptr %i.b, align 2, !tbaa !37
  br label %_ZNK9grpc_core5Slice3RefEv.exit.i

_ZNK9grpc_core5Slice3RefEv.exit.i:                ; preds = %bb.c, %bb.b
  %i.k = phi i16 [ %i.c, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %.sroa.0.0.copyload.i = phi ptr [ %i.h, %bb.b ], [ %.sroa.0.0.copyload.pre.i, %bb.c ] ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i, i64 24, i1 false), !tbaa.struct !42
  %storemerge.i.i.i.i.i = or i16 %i.k, 2
  store i16 %storemerge.i.i.i.i.i, ptr %i.b, align 2, !tbaa !37
  %i.l = and i16 %i.k, 2
  %.not.i.i.i.i = icmp eq i16 %i.l, 0
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK9grpc_core5Slice3RefEv.exit.i
  %.sroa.011.0.copyload.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !21 ; 4 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.e, align 8, !tbaa !21
  %i.m = icmp ugt ptr %.sroa.011.0.copyload.i.i.i.i, inttoptr (i64 1 to ptr)
  br i1 %i.m, label %bb.e, label %_ZN9grpc_core5SliceD2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = atomicrmw sub ptr %.sroa.011.0.copyload.i.i.i.i, i64 1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.f, label %_ZN9grpc_core5SliceD2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.0.copyload.i.i.i.i)
          to label %_ZN9grpc_core5SliceD2Ev.exit.i unwind label %bb.g, !inline_history !36

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #28
  unreachable

bb.h:                                             ; preds = %_ZNK9grpc_core5Slice3RefEv.exit.i
  store ptr %.sroa.0.0.copyload.i, ptr %i.e, align 8, !tbaa !21
  br label %_ZN9grpc_core5SliceD2Ev.exit.i

_ZN9grpc_core5SliceD2Ev.exit.i:                   ; preds = %bb.d, %bb.e, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !85
  br label %_ZN9grpc_core21ClientAuthorityFilter4Call23OnClientInitialMetadataER19grpc_metadata_batchPS0_.exit

_ZN9grpc_core21ClientAuthorityFilter4Call23OnClientInitialMetadataER19grpc_metadata_batchPS0_.exit: ; preds = %bb.a, %_ZN9grpc_core5SliceD2Ev.exit.i
  %i.t = phi i64 [ %i.f, %bb.a ], [ %.pre, %_ZN9grpc_core5SliceD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.u = load i8, ptr %5, align 8, !tbaa !84
  store i8 %i.u, ptr %7, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.v, align 8, !tbaa !85
  store ptr null, ptr %i.a, align 8, !tbaa !85
  store i64 1, ptr %8, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !288
  invoke void @_ZN9grpc_core14filters_detail8ResultOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEC2ES6_S6_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %_ZN9grpc_core14filters_detail8ResultOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEED2Ev.exit unwind label %bb.k

_ZN9grpc_core14filters_detail8ResultOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEED2Ev.exit: ; preds = %_ZN9grpc_core21ClientAuthorityFilter4Call23OnClientInitialMetadataER19grpc_metadata_batchPS0_.exit
  store i8 1, ptr %0, align 8, !tbaa !290
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %6, align 8, !tbaa !84
  store i8 %i.y, ptr %i.x, align 8, !tbaa !84
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !85
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !85
  store ptr null, ptr %i.aa, align 8, !tbaa !85
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !84
  store i8 %i.ae, ptr %i.ac, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !85
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !85
  store ptr null, ptr %i.ag, align 8, !tbaa !85
  %.pre10 = load ptr, ptr %i.w, align 8, !tbaa !85 ; 3 uses
  %.pre11 = load i8, ptr %8, align 8, !range !11
  %.not.i = icmp ne ptr %.pre10, null
  %i.ai = trunc nuw i8 %.pre11 to i1
  %or.cond.i = select i1 %.not.i, i1 %i.ai, i1 false
  br i1 %or.cond.i, label %bb.i, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

bb.i:                                             ; preds = %_ZN9grpc_core14filters_detail8ResultOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEED2Ev.exit
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %.pre10) #27
  call void @_ZdlPvm(ptr noundef nonnull %.pre10, i64 noundef 664) #30
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %_ZN9grpc_core14filters_detail8ResultOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEED2Ev.exit, %bb.i
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !85  ; 3 uses
  %.not.i7 = icmp ne ptr %i.aj, null
  %i.ak = load i8, ptr %7, align 8, !range !11
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond.i8 = select i1 %.not.i7, i1 %i.al, i1 false
  br i1 %or.cond.i8, label %bb.j, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit9

bb.j:                                             ; preds = %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.aj) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 664) #30
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit9

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit9: ; preds = %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void

bb.k:                                             ; preds = %_ZN9grpc_core21ClientAuthorityFilter4Call23OnClientInitialMetadataER19grpc_metadata_batchPS0_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #27
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core14filters_detail8ResultOrISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEC2ES6_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !84
  store i8 %i.a, ptr %0, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !85
  store i64 %i.d, ptr %i.b, align 8, !tbaa !85
  store ptr null, ptr %i.c, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i8, ptr %2, align 8, !tbaa !84
  store i8 %i.f, ptr %i.e, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !85
  store i64 %i.i, ptr %i.g, align 8, !tbaa !85
  store ptr null, ptr %i.h, align 8, !tbaa !85
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !85
  %.not.i = icmp eq ptr %i.j, null
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !85
  %.not.i9 = icmp eq ptr %i.k, null
  %i.l = xor i1 %.not.i, %.not.i9
  br i1 %i.l, label %.critedge, label %bb.b, !prof !144

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.21, i32 noundef 293, ptr noundef nonnull @.str.22) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.e) #27
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  unreachable

.critedge:                                        ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN9grpc_core14filters_detail9StackData17AddFilterMetadataINS_21ClientAuthorityFilterEEEvPT_mMNS4_4CallEFNS_8channelz12PropertyListEvEENUlPvSB_E_8__invokeESB_SB_(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::channelz::PropertyList") align 8 %0, ptr noundef %1, ptr noundef %2) #22 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %0, align 8, !tbaa !26, !alias.scope !292
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !alias.scope !292
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4absl12lts_2025051217internal_statusor22ThrowBadStatusOrAccessENS0_6StatusE(ptr noundef align 8) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN9grpc_core11CallFilters12StackBuilder14AddOwnedObjectINS_21ClientAuthorityFilterEEEvSt10unique_ptrIT_St14default_deleteIS5_EEENUlPvE_8__invokeES9_(ptr noundef %0) #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZZN9grpc_core11CallFilters12StackBuilder14AddOwnedObjectINS_21ClientAuthorityFilterEEEvSt10unique_ptrIT_St14default_deleteIS5_EEENKUlPvE_clES9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 4 uses
  %i.d = icmp ugt ptr %i.c, inttoptr (i64 1 to ptr)
  br i1 %i.d, label %bb.c, label %_ZN9grpc_core21ClientAuthorityFilterD2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_ZN9grpc_core21ClientAuthorityFilterD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN9grpc_core21ClientAuthorityFilterD2Ev.exit.i unwind label %bb.e, !inline_history !36

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

_ZN9grpc_core21ClientAuthorityFilterD2Ev.exit.i:  ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #30
  br label %_ZZN9grpc_core11CallFilters12StackBuilder14AddOwnedObjectINS_21ClientAuthorityFilterEEEvSt10unique_ptrIT_St14default_deleteIS5_EEENKUlPvE_clES9_.exit

_ZZN9grpc_core11CallFilters12StackBuilder14AddOwnedObjectINS_21ClientAuthorityFilterEEEvSt10unique_ptrIT_St14default_deleteIS5_EEENKUlPvE_clES9_.exit: ; preds = %bb.a, %_ZN9grpc_core21ClientAuthorityFilterD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EbRKPFbRKN9grpc_core11ChannelArgsEEJS6_EEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = tail call noundef zeroext i1 %i.a(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !297
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable19LocalManagerTrivialENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #3 comdat {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !95
  ret void
}

declare noundef nonnull align 8 dereferenceable(128) ptr @_ZN9grpc_core11ChannelInit18FilterRegistration6BeforeESt16initializer_listINS_14UniqueTypeNameEE(ptr noundef nonnull align 8 dereferenceable(128), ptr, i64) local_unnamed_addr #2

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_client_authority_filter.cc() #6 section ".text.startup" personality ptr @__gxx_personality_v0 {
end_hunk_2
