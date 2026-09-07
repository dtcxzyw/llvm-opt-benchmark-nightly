Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/serial_instruction?download=true
inline.NumInlined: 1131
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK8WasmEdge9Configure19isInstrNeedProposalENS_6OpCodeE:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::unexpected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.WasmEdge::ErrInfo::InfoProposal", align 1 ; 4 uses
  %9 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %i.a = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i8 %3, ptr %8, align 1, !tbaa !31
  %i.b = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3 unwind label %bb.e

.noexc3:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoProposalEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i8 %4, ptr %9, align 1, !tbaa !34
  %i.c = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.d = load i32, ptr %2, align 4, !tbaa !28, !noalias !133
  store i32 %i.d, ptr %0, align 4, !tbaa !28, !alias.scope !133
  ret void

bb.e:                                             ; preds = %.noexc5, %bb.c, %.noexc3, %bb.b, %.noexc, %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #20
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEE9push_backEOh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.e, ptr %i.b, align 1, !tbaa !28
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %i.a, align 8, !tbaa !41
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJhEEERhDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !43     ; 4 uses
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 8 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.301) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i, %i.k    ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k ; 2 uses
  %i.s = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.s, ptr %i.r, align 1, !tbaa !28
  %i.t = icmp sgt i64 %i.k, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !43
  store ptr %i.u, ptr %i.a, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store ptr %i.v, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJhEEERhDpOT_.exit

_ZNSt6vectorIhSaIhEE12emplace_backIJhEEERhDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %1, %bb.a ]  ; 2 uses
  %i.d = trunc i32 %.0.i to i8
  %i.e = and i8 %i.d, 127
  %i.f = lshr i32 %.0.i, 7                        ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0                   ; 2 uses
  %masksel.i = select i1 %.not.i, i8 0, i8 -128
  %.09.i = or disjoint i8 %masksel.i, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %.09.i, ptr %i.g, align 1, !tbaa !28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i
  %i.i = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h)
          to label %_ZNK8WasmEdge6Loader10Serializer11serializeUNIjLm32EEEvT_RSt6vectorIhSaIhEEN9__gnu_cxx17__normal_iteratorIPhS6_EE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #20
  unreachable

_ZNK8WasmEdge6Loader10Serializer11serializeUNIjLm32EEEvT_RSt6vectorIhSaIhEEN9__gnu_cxx17__normal_iteratorIPhS6_EE.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZNK8WasmEdge6Loader10Serializer20serializeInstructionERKNS_3AST11InstructionERSt6vectorIhSaIhEEENK3$_2clERKNS_9BlockTypeE"(ptr dead_on_unwind noalias nofree writable writeonly align 4 captures(none) %0, ptr %.0.val, ptr %.8.val, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 6 uses
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.WasmEdge::ErrInfo::InfoProposal", align 1 ; 4 uses
  %6 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %7 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %8 = alloca %"class.WasmEdge::ValType", align 8 ; 4 uses
  %9 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %i.b = load i8, ptr %1, align 4, !tbaa !28
  switch i8 %i.b, label %bb.j [
    i8 0, label %bb.b
    i8 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 64, ptr %i.d, align 1, !tbaa !28
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.c, align 8, !tbaa !41
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !43 ; 4 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 8 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775807
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.301) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.n = add i64 %.sroa.speculated.i.i.i.i, %i.l  ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 9223372036854775807)
  %i.q = select i1 %i.o, i64 9223372036854775807, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l ; 2 uses
  store i8 64, ptr %i.s, align 1, !tbaa !28
  %i.t = icmp sgt i64 %i.l, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.r, ptr %.8.val, align 8, !tbaa !43
  store ptr %i.u, ptr %i.c, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store ptr %i.v, ptr %i.e, align 8, !tbaa !42
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 4, !tbaa !28
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  call void @_ZNK8WasmEdge6Loader10Serializer16serializeValTypeERKNS_7ValTypeENS_11ASTNodeAttrERSt6vectorIhSaIhEE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %7, ptr noundef nonnull align 8 dereferenceable(8) %.0.val, ptr noundef nonnull align 4 dereferenceable(8) %8, i8 noundef zeroext 31, ptr noundef nonnull align 8 dereferenceable(24) %.8.val) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.w = load i8, ptr %7, align 4, !tbaa !36, !range !37, !noundef !25
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !28
  store i8 0, ptr %0, align 4, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %.0.val, align 8, !tbaa !24, !nonnull !25, !align !26 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.ac = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #19
  switch i32 %i.ac, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit [
    i32 11, label %bb.k
    i32 35, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #23
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #20
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit: ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !48
  %i.ah = and i64 %i.ag, 8
  %.not = icmp eq i64 %i.ah, 0
  %i.ai = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #19 ; 0 uses
  br i1 %.not, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit
  store i32 273, ptr %9, align 4, !tbaa !28
  %i.aj = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i5 unwind label %bb.q, !noalias !139

.noexc.i5:                                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !139
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aj, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %bb.o unwind label %bb.q, !noalias !139

bb.o:                                             ; preds = %.noexc.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !139
  store i8 3, ptr %5, align 1, !tbaa !31, !noalias !139
  %i.ak = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i unwind label %bb.q, !noalias !139

.noexc3.i:                                        ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !139
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoProposalEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.p unwind label %bb.q, !noalias !139

bb.p:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !139
  store i8 31, ptr %6, align 1, !tbaa !34, !noalias !139
  %i.al = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i unwind label %bb.q, !noalias !139

.noexc5.i:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !139
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.al, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit unwind label %bb.q, !noalias !139

bb.q:                                             ; preds = %.noexc5.i, %bb.p, %.noexc3.i, %bb.o, %.noexc.i5, %bb.n
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #20, !noalias !139
  unreachable

_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit: ; preds = %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !139
  %i.ao = load i32, ptr %9, align 4, !tbaa !28, !noalias !140
  store i8 0, ptr %0, align 4, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !28
  br label %bb.t

bb.r:                                             ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.as = trunc i32 %i.ar to i8                   ; 2 uses
  %i.at = lshr i32 %i.ar, 7                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  %.not.i.i64 = icmp ult i32 %i.ar, 64
  %or.cond.i.i5 = and i1 %.not.i.i64, %i.au
  br i1 %or.cond.i.i5, label %.thread.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.av = zext nneg i32 %i.at to i64
  br label %.lr.ph

.thread.i.i:                                      ; preds = %.lr.ph, %bb.r
  %.01520.i.i.lcssa = phi i32 [ 0, %bb.r ], [ %14, %.lr.ph ] ; 2 uses
  %.lcssa = phi i8 [ %i.as, %bb.r ], [ %i.bi, %.lr.ph ]
  %10 = zext i32 %.01520.i.i.lcssa to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %10
  store i8 %.lcssa, ptr %i.aw, align 1, !tbaa !28
  %11 = add i32 %.01520.i.i.lcssa, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !44
  %12 = zext i32 %11 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %12
  %i.ba = load ptr, ptr %.8.val, align 8, !tbaa !44 ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %.8.val, ptr %i.be, ptr noundef nonnull %i.a, ptr noundef nonnull %i.az)
          to label %_ZNK8WasmEdge6Loader10Serializer12serializeS33ElRSt6vectorIhSaIhEE.exit unwind label %bb.s

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bf = phi i64 [ %i.bj, %.lr.ph ], [ %i.av, %.lr.ph.preheader ] ; 3 uses
  %i.bg = phi i8 [ %i.bi, %.lr.ph ], [ %i.as, %.lr.ph.preheader ]
  %.01520.i.i6 = phi i32 [ %14, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %spec.select19.i.i = or i8 %i.bg, -128
  %13 = zext i32 %.01520.i.i6 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %13
  store i8 %spec.select19.i.i, ptr %i.bh, align 1, !tbaa !28
  %14 = add i32 %.01520.i.i6, 1                   ; 2 uses
  %i.bi = trunc i64 %i.bf to i8                   ; 2 uses
  %i.bj = lshr i64 %i.bf, 7                       ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  %.not.i.i6 = icmp samesign ult i64 %i.bf, 64
  %or.cond.i.i = and i1 %.not.i.i6, %i.bk
  br i1 %or.cond.i.i, label %.thread.i.i, label %.lr.ph, !llvm.loop !138

bb.s:                                             ; preds = %.thread.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #20
  unreachable

_ZNK8WasmEdge6Loader10Serializer12serializeS33ElRSt6vectorIhSaIhEE.exit: ; preds = %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %.thread, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.c, %_ZNK8WasmEdge6Loader10Serializer12serializeS33ElRSt6vectorIhSaIhEE.exit
  store i64 1, ptr %0, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, %_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEE9push_backERKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.e, ptr %i.b, align 1, !tbaa !28
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %i.a, align 8, !tbaa !41
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !43     ; 4 uses
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 8 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.301) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i, %i.k      ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k ; 2 uses
  %i.s = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.s, ptr %i.r, align 1, !tbaa !28
  %i.t = icmp sgt i64 %i.k, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.not.i17.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i, %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !43
  store ptr %i.u, ptr %i.a, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store ptr %i.v, ptr %i.c, align 8, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE(ptr noundef nonnull align 8 dereferenceable(168) %0, i8 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #19
  switch i32 %i.a, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit [
    i32 11, label %bb.b
    i32 35, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #23
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit: ; preds = %bb.b
  %i.b = zext i8 %1 to i64                        ; 2 uses
  %i.c = icmp ugt i8 %1, 17
  br i1 %i.c, label %bb.d, label %_ZNSt11shared_lockISt12shared_mutexED2Ev.exit

bb.d:                                             ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.299, i64 noundef %i.b, i64 noundef 18) #23
          to label %.noexc1 unwind label %bb.e

.noexc1:                                          ; preds = %bb.d
  unreachable

_ZNSt11shared_lockISt12shared_mutexED2Ev.exit:    ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48
  %i.f = shl nuw nsw i64 1, %i.b
  %i.g = and i64 %i.e, %i.f
  %i.h = icmp ne i64 %i.g, 0
  %i.i = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #19 ; 0 uses
  ret i1 %i.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #20
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNK8WasmEdge6Loader10Serializer17serializeHeapTypeERKNS_7ValTypeENS_11ASTNodeAttrERSt6vectorIhSaIhEE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNK8WasmEdge6Loader10Serializer16serializeValTypeERKNS_7ValTypeENS_11ASTNodeAttrERSt6vectorIhSaIhEE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZNK8WasmEdge6Loader10Serializer20serializeInstructionERKNS_3AST11InstructionERSt6vectorIhSaIhEEENK3$_0clEv"(ptr dead_on_unwind noalias nofree writable writeonly align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 5 uses
  %i.b = alloca [5 x i8], align 1                 ; 5 uses
  %i.c = alloca [5 x i8], align 1                 ; 5 uses
  %i.d = alloca [5 x i8], align 1                 ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !21
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24, !nonnull !25, !align !26 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %i.f) #19
  switch i32 %i.g, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit [
    i32 11, label %bb.b
    i32 35, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #23
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #20
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !48
  %i.l = and i64 %i.k, 2048
  %.not21 = icmp ne i64 %i.l, 0
  %i.m = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %i.f) #19 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !142 ; 2 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre23 = load i32, ptr %.phi.trans.insert22, align 4, !tbaa !28 ; 3 uses
  %i.n = icmp ult i32 %.pre23, 64
  %or.cond = select i1 %.not21, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.e, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit._crit_edge

bb.e:                                             ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit
  %i.o = load i32, ptr %.pre, align 16, !tbaa !28
end_hunk_0
begin_hunk_1_@"_ZZNK8WasmEdge6Loader10Serializer20serializeInstructionERKNS_3AST11InstructionERSt6vectorIhSaIhEEENK3$_0clEv":bb.a
  %indvars.iv.next.i.i13 = add nuw nsw i64 %indvars.iv.i.i8, 1 ; 2 uses
  br i1 %.not.i.i10, label %bb.l, label %bb.k, !llvm.loop !0

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i.i13
  %i.bd = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.be = ptrtoint ptr %i.ax to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr %i.bh, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bc)
          to label %_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE.exit14 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #20
  unreachable

_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE.exit14: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.n

bb.n:                                             ; preds = %_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE.exit14, %_ZNK8WasmEdge6Loader10Serializer12serializeU32EjRSt6vectorIhSaIhEE.exit7
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !142, !nonnull !25, !align !144
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !28
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !143, !nonnull !25, !align !26 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.i.i15 = phi i64 [ %indvars.iv.next.i.i20, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %.0.i.i16 = phi i64 [ %i.bu, %bb.o ], [ %i.bn, %bb.n ] ; 2 uses
  %i.bs = trunc i64 %.0.i.i16 to i8
  %i.bt = and i8 %i.bs, 127
  %i.bu = lshr i64 %.0.i.i16, 7                   ; 2 uses
  %.not.i.i17 = icmp eq i64 %i.bu, 0              ; 2 uses
  %masksel.i.i18 = select i1 %.not.i.i17, i8 0, i8 -128
  %.09.i.i19 = or disjoint i8 %masksel.i.i18, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i15
  store i8 %.09.i.i19, ptr %i.bv, align 1, !tbaa !28
  %indvars.iv.next.i.i20 = add nuw nsw i64 %indvars.iv.i.i15, 1 ; 2 uses
  br i1 %.not.i.i17, label %bb.p, label %bb.o, !llvm.loop !141

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i20
  %i.bx = load ptr, ptr %i.bp, align 8, !tbaa !44 ; 2 uses
  %i.by = ptrtoint ptr %i.br to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 %i.ca
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr %i.cb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bw)
          to label %_ZNK8WasmEdge6Loader10Serializer12serializeU64EmRSt6vectorIhSaIhEE.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #20
  unreachable

_ZNK8WasmEdge6Loader10Serializer12serializeU64EmRSt6vectorIhSaIhEE.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZNK8WasmEdge6Loader10Serializer20serializeInstructionERKNS_3AST11InstructionERSt6vectorIhSaIhEEENK3$_1clEj"(ptr dead_on_unwind noalias nofree writable writeonly align 4 captures(none) %0, ptr nofree captures(none) %.8.val, i32 noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %5 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 270, ptr %5, align 4, !tbaa !28
  %i.a = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i unwind label %bb.d, !noalias !149

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !149
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.c unwind label %bb.d, !noalias !149

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !149
  store i8 31, ptr %4, align 1, !tbaa !34, !noalias !149
  %i.b = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc2.i unwind label %bb.d, !noalias !149

.noexc2.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !149
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 4, ptr nonnull @.str.2, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZNK8WasmEdge6Loader10Serializer17logSerializeErrorENS_7ErrCodeENS_11ASTNodeAttrE.exit unwind label %bb.d, !noalias !149

bb.d:                                             ; preds = %.noexc2.i, %bb.c, %.noexc.i, %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #20, !noalias !149
  unreachable

_ZNK8WasmEdge6Loader10Serializer17logSerializeErrorENS_7ErrCodeENS_11ASTNodeAttrE.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !149
  %i.e = load i32, ptr %5, align 4, !tbaa !28, !noalias !150
  store i8 0, ptr %0, align 4, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !28
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.h, align 1, !tbaa !28
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %i.g, align 8, !tbaa !41
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.g:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %.8.val, align 8, !tbaa !43 ; 4 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 8 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775807
  br i1 %i.q, label %bb.h, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.301) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.r = add i64 %.sroa.speculated.i.i.i.i, %i.p  ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.p
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 9223372036854775807)
  %i.u = select i1 %i.s, i64 9223372036854775807, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #21 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p ; 2 uses
  store i8 0, ptr %i.w, align 1, !tbaa !28
  %i.x = icmp sgt i64 %i.p, 0
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.v, ptr %.8.val, align 8, !tbaa !43
  store ptr %i.y, ptr %i.g, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store ptr %i.z, ptr %i.i, align 8, !tbaa !42
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  store i64 1, ptr %0, align 4
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, %_ZNK8WasmEdge6Loader10Serializer17logSerializeErrorENS_7ErrCodeENS_11ASTNodeAttrE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge6Loader10Serializer12serializeS32EiRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.021.i = phi i32 [ %1, %bb.a ], [ %i.d, %bb.c ] ; 4 uses
  %.01520.i = phi i32 [ 0, %bb.a ], [ %6, %bb.c ] ; 4 uses
  %i.b = trunc i32 %.021.i to i8
  %i.c = and i8 %i.b, 127                         ; 2 uses
  %i.d = ashr i32 %.021.i, 7                      ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  %.not.i = icmp ult i32 %.021.i, 64
  %or.cond.i = and i1 %.not.i, %i.e
  br i1 %or.cond.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %3 = zext i32 %.01520.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  store i8 %i.c, ptr %i.f, align 1, !tbaa !28
  %4 = add i32 %.01520.i, 1
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ne i32 %i.d, -1
  %i.h = and i32 %.021.i, 64
  %.not16.i = icmp eq i32 %i.h, 0
  %or.cond17.i = or i1 %i.g, %.not16.i            ; 2 uses
  %masksel.i = select i1 %or.cond17.i, i8 -128, i8 0
  %spec.select19.i = or disjoint i8 %masksel.i, %i.c
  %5 = zext i32 %.01520.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %5
  store i8 %spec.select19.i, ptr %i.i, align 1, !tbaa !28
  %6 = add i32 %.01520.i, 1                       ; 2 uses
  br i1 %or.cond17.i, label %bb.b, label %.loopexit.i, !llvm.loop !151

.loopexit.i:                                      ; preds = %bb.c, %.thread.i
  %7 = phi i32 [ %4, %.thread.i ], [ %6, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %8 = zext i32 %7 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %8
  %i.m = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l)
          to label %_ZNK8WasmEdge6Loader10Serializer11serializeSNIiLm32EEEvT_RSt6vectorIhSaIhEE.exit unwind label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #20
  unreachable

_ZNK8WasmEdge6Loader10Serializer11serializeSNIiLm32EEEvT_RSt6vectorIhSaIhEE.exit: ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge6Loader10Serializer12serializeS64ElRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.021.i.a = phi i64 [ %1, %bb.a ], [ %i.d, %bb.c ] ; 4 uses
  %.01520.i = phi i32 [ 0, %bb.a ], [ %6, %bb.c ] ; 4 uses
  %i.b = trunc i64 %.021.i.a to i8
  %i.c = and i8 %i.b, 127                         ; 2 uses
  %i.d = ashr i64 %.021.i.a, 7                    ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  %.not.i = icmp ult i64 %.021.i.a, 64
  %or.cond.i = and i1 %.not.i, %i.e
  br i1 %or.cond.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %3 = zext i32 %.01520.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  store i8 %i.c, ptr %i.f, align 1, !tbaa !28
  %4 = add i32 %.01520.i, 1
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ne i64 %i.d, -1
  %i.h = and i64 %.021.i.a, 64
  %.not16.i = icmp eq i64 %i.h, 0
  %or.cond17.i = or i1 %i.g, %.not16.i            ; 2 uses
  %masksel.i = select i1 %or.cond17.i, i8 -128, i8 0
  %spec.select19.i = or disjoint i8 %masksel.i, %i.c
  %5 = zext i32 %.01520.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %5
  store i8 %spec.select19.i, ptr %i.i, align 1, !tbaa !28
  %6 = add i32 %.01520.i, 1                       ; 2 uses
  br i1 %or.cond17.i, label %bb.b, label %.loopexit.i, !llvm.loop !152

.loopexit.i:                                      ; preds = %bb.c, %.thread.i
  %7 = phi i32 [ %4, %.thread.i ], [ %6, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %8 = zext i32 %7 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %8
  %i.m = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l)
          to label %_ZNK8WasmEdge6Loader10Serializer11serializeSNIlLm64EEEvT_RSt6vectorIhSaIhEE.exit unwind label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #20
  unreachable

_ZNK8WasmEdge6Loader10Serializer11serializeSNIlLm64EEEvT_RSt6vectorIhSaIhEE.exit: ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef ptr @_ZN6spdlog18default_logger_rawEv() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %8 = alloca %"struct.spdlog::details::log_msg", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = tail call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.d) ; 2 uses
  %or.cond = or i1 %i.c, %i.e
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !51
  store i64 250, ptr %i.f, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.j = ptrtoint ptr %5 to i64
  %.sroa.2.0.insert.ext.i = zext i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge7ErrCodeENS0_9formatterIS7_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_ to i64) to i128
  %.sroa.2.0.insert.shift.i = shl nuw i128 %.sroa.2.0.insert.ext.i, 64
  %.sroa.01.0.insert.ext.i = zext i64 %i.j to i128
  %.sroa.01.0.insert.insert.i = or disjoint i128 %.sroa.2.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  store i128 %.sroa.01.0.insert.insert.i, ptr %7, align 16
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %3, i64 %4, i64 15, ptr nonnull %7, ptr null)
          to label %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit unwind label %bb.g

_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !56
  %i.o = load ptr, ptr %6, align 8, !tbaa !51
  %i.p = load i64, ptr %i.h, align 8, !tbaa !57
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, ptr %i.l, i64 %i.n, i32 noundef %2, ptr %i.o, i64 %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.c, i1 noundef zeroext %i.e)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.q = load ptr, ptr %6, align 8, !tbaa !51     ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.f, align 8, !tbaa !52
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.r) #22
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.s, %bb.g ]
  %i.u = load ptr, ptr %6, align 8, !tbaa !51     ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.u, %i.i
  br i1 %.not.i.i15, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.f, align 8, !tbaa !52
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #22
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #11

declare void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef byval(%"struct.spdlog::source_loc") align 8, ptr, i64, i32 noundef, ptr, i64) unnamed_addr #11

declare void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @llvm.umax.i64(i64 %1, i64 9223372036854775807)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i64 [ %1, %bb.a ], [ %i.g, %bb.c ]    ; 2 uses
  %i.h = icmp slt i64 %.0, 0
  br i1 %i.h, label %bb.e, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit, !prof !58

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit:     ; preds = %bb.b, %bb.d
  %.035 = phi i64 [ %.0, %bb.d ], [ %i.d, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.035) #21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.m = icmp ule i64 %i.l, %.035
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.i, i64 %i.l, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !51
  store i64 %.035, ptr %i.a, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.i, %i.n
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.b) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

declare void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge7ErrCodeENS0_9formatterIS7_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #5 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store i32 -1, ptr %i.a, align 4, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i16 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 11
  store i8 32, ptr %i.c, align 1, !tbaa !28
  %scevgep.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %scevgep.i.i.i.i.i.i.i, i8 0, i64 3, i1 false), !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 1, ptr %i.d, align 1, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !28
  %i.g = load ptr, ptr %1, align 8, !tbaa !67     ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = icmp samesign eq i64 %i.i, 0
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.g, align 1, !tbaa !28
  %i.m = icmp eq i8 %i.l, 125
  br i1 %i.m, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !67
  %.pre6 = load i64, ptr %i.h, align 8, !tbaa !68
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i64 [ %.pre6, %bb.c ], [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.p = phi ptr [ %.pre, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ]
  %i.q = ptrtoint ptr %.0.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  store ptr %i.t, ptr %1, align 8, !tbaa !67
  %i.u = sub i64 %i.o, %i.s
  store i64 %i.u, ptr %i.h, align 8, !tbaa !68
  %i.v = call ptr @_ZNK3fmt3v119formatterIN8WasmEdge7ErrCodeEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKS3_RT_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v119formatterIN8WasmEdge7ErrCodeEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKS3_RT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.74", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = load i32, ptr %1, align 4, !tbaa !28     ; 3 uses
  %.not.i = icmp ult i32 %i.b, 16777216           ; 2 uses
  %i.c = lshr i32 %i.b, 8
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 15
  %i.f = select i1 %.not.i, i8 %i.e, i8 5
  store i8 %i.f, ptr %i.a, align 1, !tbaa !70
  %i.g = and i32 %i.b, 16777215                   ; 2 uses
  %spec.select.i = select i1 %.not.i, i32 %i.g, i32 12 ; 2 uses
  br label %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %bb.a
  %.030.i.i.i.i = phi i64 [ 160, %bb.a ], [ %.1.i.i.i.i, %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.sroa.4.029.i.i.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.4.1.i.i.i.i, %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.h = lshr i64 %.030.i.i.i.i, 1                ; 3 uses
  %.sroa.5.0.i.i.i.i = add i64 %i.h, %.sroa.4.029.i.i.i.i ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @_ZN8WasmEdgeL10ErrCodeStrE, i64 %.sroa.5.0.i.i.i.i
  %i.j = load i32, ptr %i.i, align 8, !tbaa !161
  %i.k = icmp ult i32 %i.j, %spec.select.i        ; 2 uses
  %i.l = add i64 %.sroa.5.0.i.i.i.i, 1
  %i.m = xor i64 %i.h, -1
  %i.n = add nsw i64 %.030.i.i.i.i, %i.m
  %.sroa.4.1.i.i.i.i = select i1 %i.k, i64 %i.l, i64 %.sroa.4.029.i.i.i.i ; 3 uses
  %.1.i.i.i.i = select i1 %i.k, i64 %i.n, i64 %i.h ; 2 uses
  %i.o = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.o, label %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %.noexc, !llvm.loop !153

.noexc:                                           ; preds = %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw [24 x i8], ptr @_ZN8WasmEdgeL10ErrCodeStrE, i64 %.sroa.4.1.i.i.i.i
  %i.q = load i32, ptr %i.p, align 8, !tbaa !162
  %i.r = icmp eq i32 %i.q, %spec.select.i
  %spec.select.i.i = select i1 %i.r, i64 %.sroa.4.1.i.i.i.i, i64 160
  %i.s = getelementptr inbounds nuw [24 x i8], ptr @_ZN8WasmEdgeL10ErrCodeStrE, i64 %spec.select.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !163
  %i.u = ptrtoint ptr %i.a to i64
  %.sroa.2.0.insert.ext.i = zext i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge9WasmPhaseENS0_9formatterIS7_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_ to i64) to i128
  %.sroa.2.0.insert.shift.i = shl nuw i128 %.sroa.2.0.insert.ext.i, 64
  %.sroa.01.0.insert.ext.i = zext i64 %i.u to i128
  %.sroa.01.0.insert.insert.i = or disjoint i128 %.sroa.2.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  store i128 %.sroa.01.0.insert.insert.i, ptr %3, align 16, !alias.scope !164
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !165
  %i.y = load i64, ptr %i.t, align 8, !tbaa !166
  %i.z = ptrtoint ptr %i.x to i64
  %.sroa.2.0.insert.ext.i11 = zext i64 %i.y to i128
  %.sroa.2.0.insert.shift.i12 = shl nuw i128 %.sroa.2.0.insert.ext.i11, 64
  %.sroa.01.0.insert.ext.i13 = zext i64 %i.z to i128
  %.sroa.01.0.insert.insert.i14 = or disjoint i128 %.sroa.2.0.insert.shift.i12, %.sroa.01.0.insert.ext.i13
  store i128 %.sroa.01.0.insert.insert.i14, ptr %i.v, align 16, !alias.scope !164
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.01.0.insert.ext.i15 = zext nneg i32 %i.g to i128
  store i128 %.sroa.01.0.insert.ext.i15, ptr %i.aa, align 16, !alias.scope !164
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.14, i64 29, i64 735, ptr nonnull %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ab = load ptr, ptr %4, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !56
  %i.ae = invoke ptr @_ZNK3fmt3v119formatterISt17basic_string_viewIcSt11char_traitsIcEEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES5_RT_(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %i.ad, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !28
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret ptr %i.ae

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i32 noundef %4) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !28
  switch i8 %i.f, label %_ZN3fmt3v116detail11parse_alignEc.exit.thread.sink.split [
    i8 60, label %_ZN3fmt3v116detail11parse_alignEc.exit.thread
    i8 62, label %_ZN3fmt3v116detail11parse_alignEc.exit.thread
    i8 94, label %_ZN3fmt3v116detail11parse_alignEc.exit.thread
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit, label %_ZN3fmt3v116detail11parse_alignEc.exit.thread.sink.split

_ZN3fmt3v116detail11parse_alignEc.exit.thread.sink.split: ; preds = %bb.c, %bb.b
  %i.h = load i8, ptr %0, align 1, !tbaa !28
  br label %_ZN3fmt3v116detail11parse_alignEc.exit.thread

_ZN3fmt3v116detail11parse_alignEc.exit.thread:    ; preds = %_ZN3fmt3v116detail11parse_alignEc.exit.thread.sink.split, %bb.b, %bb.b, %bb.b
  %.052 = phi i8 [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ %i.h, %_ZN3fmt3v116detail11parse_alignEc.exit.thread.sink.split ]
  %i.i = icmp eq i32 %4, 0                        ; 17 uses
  %i.j = add i32 %4, -1
  %i.k = icmp ult i32 %i.j, 11                    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 24 uses
  %i.m = lshr i32 15872, %4
  %i.n = trunc i32 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 15 ; 2 uses
  %i.t = lshr i32 3626, %4
  %i.u = trunc i32 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 14
  br label %bb.d

bb.d:                                             ; preds = %bb.cf, %_ZN3fmt3v116detail11parse_alignEc.exit.thread
  %.0195 = phi ptr [ %0, %_ZN3fmt3v116detail11parse_alignEc.exit.thread ], [ %.1196, %bb.cf ] ; 34 uses
  %.sroa.0146.0 = phi i32 [ 0, %_ZN3fmt3v116detail11parse_alignEc.exit.thread ], [ %.sroa.0146.1, %bb.cf ] ; 8 uses
  %.153 = phi i8 [ %.052, %_ZN3fmt3v116detail11parse_alignEc.exit.thread ], [ %i.du, %bb.cf ] ; 3 uses
  switch i8 %.153, label %bb.bv [
    i8 60, label %bb.e
    i8 62, label %bb.e
    i8 94, label %bb.e
    i8 43, label %bb.j
    i8 45, label %bb.j
    i8 32, label %bb.j
    i8 35, label %bb.p
    i8 48, label %bb.s
    i8 49, label %bb.z
    i8 50, label %bb.z
    i8 51, label %bb.z
    i8 52, label %bb.z
    i8 53, label %bb.z
    i8 54, label %bb.z
    i8 55, label %bb.z
    i8 56, label %bb.z
    i8 57, label %bb.z
    i8 123, label %bb.z
    i8 46, label %bb.ab
    i8 76, label %bb.ag
    i8 100, label %bb.aj
    i8 88, label %bb.am
    i8 120, label %.loopexit
    i8 111, label %bb.ap
    i8 66, label %bb.as
    i8 98, label %.loopexit200
    i8 69, label %bb.av
    i8 101, label %.loopexit201
    i8 70, label %bb.ay
    i8 102, label %.loopexit202
    i8 71, label %bb.bb
    i8 103, label %.loopexit203
    i8 65, label %bb.be
    i8 97, label %.loopexit204
    i8 99, label %bb.bh
    i8 115, label %bb.bm
    i8 112, label %bb.bp
    i8 63, label %bb.bs
    i8 125, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.z = icmp eq i32 %.sroa.0146.0, 0
  br i1 %i.z, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.5) #23
  unreachable

_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit: ; preds = %bb.e
  switch i8 %.153, label %bb.i [
    i8 60, label %_ZN3fmt3v116detail11parse_alignEc.exit61
    i8 62, label %bb.g
    i8 94, label %bb.h
  ]

bb.g:                                             ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit
  br label %_ZN3fmt3v116detail11parse_alignEc.exit61

bb.h:                                             ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit
  br label %_ZN3fmt3v116detail11parse_alignEc.exit61

bb.i:                                             ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit
  br label %_ZN3fmt3v116detail11parse_alignEc.exit61

_ZN3fmt3v116detail11parse_alignEc.exit61:         ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit, %bb.g, %bb.h, %bb.i
  %.0.i60 = phi i16 [ 0, %bb.i ], [ 3, %bb.h ], [ 2, %bb.g ], [ 1, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit ]
  %i.aa = load i16, ptr %i.l, align 1
  %i.ab = and i16 %i.aa, -16
  %i.ac = or disjoint i16 %i.ab, %.0.i60
  store i16 %i.ac, ptr %i.l, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.0195, i64 1
  br label %bb.ce

bb.j:                                             ; preds = %bb.d, %bb.d, %bb.d
  br i1 %i.i, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_1
