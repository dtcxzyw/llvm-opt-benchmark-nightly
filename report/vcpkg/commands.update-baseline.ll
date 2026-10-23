Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.update-baseline?download=true
inline.NumInlined: 945
inline.NumDeleted: 469
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5vcpkg3msg15println_warningIJEJEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS3_E4typeET0_EE:bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN5vcpkg15LocalizedStringD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !38
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit5

_ZN5vcpkg15LocalizedStringD2Ev.exit5:             ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZN5vcpkg6Checks12exit_successERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN5vcpkg6Checks19msg_exit_with_errorIJNS_3msg8option_tEEJNS_10StringViewEEEEvRKNS_8LineInfoENS2_8MessageTIJDpT_EEEDpNS2_6TagArgINS_8identityIS9_E4typeET0_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.121", align 16 ; 8 uses
  %5 = alloca %"struct.vcpkg::msg::TagArg", align 8 ; 5 uses
  %6 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN5vcpkg12error_prefixEv(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %2, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %i.a, align 8
  %i.b = load ptr, ptr @_ZN5vcpkg3msg8option_t4nameE, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.c, ptr %4, align 16, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %5, ptr %i.e, align 16, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg10StringViewEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.f, align 8, !tbaa !38
  store ptr %i.b, ptr %i.c, align 16, !tbaa !30
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !74
  invoke void @_ZN5vcpkg3msg6detail26format_message_by_index_toERNS_15LocalizedStringEmN3fmt3v1217basic_format_argsINS5_7contextEEE(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %1, i64 4611686018427387919, ptr nonnull %i.e)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawEc(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g) #19 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  invoke void @_ZN5vcpkg3msg32write_unlocalized_text_to_stderrENS_5ColorENS_10StringViewE(i8 noundef signext 49, ptr %i.i, i64 %i.j)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN5vcpkg15LocalizedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN5vcpkg6Checks9exit_failERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %6, align 8, !tbaa !36     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !38
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #21
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5vcpkg3msg15println_warningIJNS0_8option_tEEJNS_10StringViewEEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS5_E4typeET0_EE(i64 %0, ptr %1, i64 %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.121", align 16 ; 8 uses
  %4 = alloca %"struct.vcpkg::msg::TagArg", align 8 ; 5 uses
  %5 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  tail call void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 51, ptr nonnull @.str.41, i64 7)
  tail call void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr nonnull @.str.42, i64 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %1, ptr %4, align 8, !noalias !155
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.a, align 8, !noalias !155
  %i.b = load ptr, ptr @_ZN5vcpkg3msg8option_t4nameE, align 8, !tbaa !69, !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !156
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.c, ptr %3, align 16, !tbaa !72, !noalias !156
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.d, align 8, !tbaa !73, !noalias !156
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %4, ptr %i.e, align 16, !tbaa !38, !noalias !156
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg10StringViewEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.f, align 8, !tbaa !38, !noalias !156
  store ptr %i.b, ptr %i.c, align 16, !tbaa !30, !noalias !156
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !74, !noalias !156
  call void @_ZN5vcpkg3msg6detail23format_message_by_indexEmN3fmt3v1217basic_format_argsINS3_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %5, i64 noundef %0, i64 4611686018427387919, ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawEc(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext 10)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g) #19 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr %i.i, i64 %i.j)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !38
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN5vcpkg15LocalizedStringD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.d
  %i.t = load i64, ptr %i.r, align 8, !tbaa !38
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit9

_ZN5vcpkg15LocalizedStringD2Ev.exit9:             ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %i.p
}

declare void @_ZNK5vcpkg10StringView9to_stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef ptr @_ZN5vcpkg4Json6Object3getENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #7

; Function Attrs: nounwind
declare { ptr, i64 } @_ZNK5vcpkg4Json5Value6stringENS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef byval(%"struct.vcpkg::LineInfo") align 8) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125update_baseline_in_configERKN5vcpkg10VcpkgPathsERNS0_14RegistryConfigE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(344) %1) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  %3 = alloca %"struct.vcpkg::msg::TagArg.101", align 8 ; 5 uses
  %4 = alloca %"struct.vcpkg::msg::TagArg.101", align 8 ; 5 uses
  %5 = alloca %"struct.vcpkg::msg::TagArg.99", align 8 ; 5 uses
  %6 = alloca %"struct.vcpkg::msg::TagArg.98", align 8 ; 5 uses
  %7 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"struct.vcpkg::msg::TagArg.99", align 8 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call { ptr, i64 } @_ZNK5vcpkg14RegistryConfig15pretty_locationEv(ptr noundef nonnull align 8 dereferenceable(344) %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZNK5vcpkg14RegistryConfig19get_latest_baselineB5cxx11ERKNS_10VcpkgPathsE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %7, ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !76, !range !52, !noundef !53
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %14 = load i8, ptr %7, align 8, !tbaa !55, !range !52, !noundef !53 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !55, !range !52, !noundef !53 ; 2 uses
  %15 = and i8 %i.h, %14
  %.not3.i = icmp eq i8 %15, 0
  br i1 %.not3.i, label %_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.gep96 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.j = load i64, ptr %.sroa.gep96, align 8, !tbaa !37 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit.thread101, label %.split

.split:                                           ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.p = load ptr, ptr %.sroa.gep, align 8, !tbaa !36
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %.not = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not, label %_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit.thread101, label %_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit.thread

_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit: ; preds = %bb.b
  %16 = or i8 %i.h, %14
  %.mux.i.not = icmp eq i8 %16, 0
  br i1 %.mux.i.not, label %_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit.thread101, label %_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit.thread

_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit.thread: ; preds = %bb.c, %.split, %_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit
  %.sroa.014.0.copyload = load i64, ptr @_ZN5vcpkg32msgUpdateBaselineUpdatedBaselineE, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8value_orIRA1_KcEES6_OT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 1 dereferenceable(1) @.str.13)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  %.fca.0.load.i = load ptr, ptr %6, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8value_orIRA1_KcEES6_OT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(1) @.str.13)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %10) #19
  %.fca.0.load.i47 = load ptr, ptr %5, align 8
  %.fca.1.gep.i49 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i50 = load i64, ptr %.fca.1.gep.i49, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr %.fca.0.load.i47, ptr %9, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.fca.1.load.i50, ptr %i.q, align 8
  invoke void @_ZN5vcpkg3msg7printlnIJNS0_5url_tENS0_11old_value_tENS0_11new_value_tEEJNS_10StringViewES5_S5_EEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS7_E4typeET0_EE(i64 %.sroa.014.0.copyload, ptr %i.b, i64 %i.c, ptr %.fca.0.load.i, i64 %.fca.1.load.i, ptr noundef nonnull byval(%"struct.vcpkg::msg::TagArg.99") align 8 %9)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %10, align 8, !tbaa !36    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.u = load i64, ptr %i.s, align 8, !tbaa !38
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.w = load ptr, ptr %8, align 8, !tbaa !36     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !38
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.ab = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5vcpkg7details15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEaSEOS8_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %7) #19 ; 0 uses
  br label %bb.w

bb.h:                                             ; preds = %_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit.thread
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.i:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.j:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.j
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !38
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.i
  %.pn37 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.ae, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.ak = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.an = load i64, ptr %i.al, align 8, !tbaa !38
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.h
  %.pn37.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %.pn37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ad

_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit.thread101: ; preds = %bb.d, %.split, %_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit
  %.sroa.08.0.copyload = load i64, ptr @_ZN5vcpkg25msgUpdateBaselineNoUpdateE, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8value_orIRA1_KcEES6_OT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 1 dereferenceable(1) @.str.13)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit.thread101
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %11) #19
  %.fca.0.load.i66 = load ptr, ptr %4, align 8
  %.fca.1.gep.i68 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load.i69 = load i64, ptr %.fca.1.gep.i68, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  invoke void @_ZN5vcpkg3msg7printlnIJNS0_5url_tENS0_7value_tEEJNS_10StringViewES4_EEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS6_E4typeET0_EE(i64 %.sroa.08.0.copyload, ptr %i.b, i64 %i.c, ptr %.fca.0.load.i66, i64 %.fca.1.load.i69)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.l
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !38
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.w

bb.m:                                             ; preds = %_ZN5vcpkgneERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_.exit.thread101
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.n:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.n
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !38
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.m
  %.pn = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %i.av, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ad

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %.sroa.03.0.copyload = load i64, ptr @_ZN5vcpkg25msgUpdateBaselineNoUpdateE, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8value_orIRA1_KcEES6_OT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) @.str.13)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %13) #19
  %.fca.0.load.i82 = load ptr, ptr %3, align 8
  %.fca.1.gep.i84 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i85 = load i64, ptr %.fca.1.gep.i84, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN5vcpkg3msg6formatIJNS0_5url_tENS0_7value_tEEJNS_10StringViewES4_EEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS7_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %12, i64 %.sroa.03.0.copyload, ptr %i.b, i64 %i.c, ptr %.fca.0.load.i82, i64 %.fca.1.load.i85)
          to label %bb.p unwind label %bb.ab

bb.p:                                             ; preds = %bb.o
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawEc(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 noundef signext 10)
          to label %bb.q unwind label %bb.ac

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i32 233, ptr %2, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.34, ptr %i.bd, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @__func__._ZNR5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEE5errorEv, ptr %i.be, align 8, !tbaa !50
  %i.bf = load i8, ptr %i.d, align 8, !tbaa !76, !range !52, !noundef !53
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNR5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEE5errorEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #23
  unreachable

_ZNR5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEE5errorEv.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString6appendERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %_ZNR5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEE5errorEv.exit
  invoke void @_ZN5vcpkg3msg15println_warningERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.bk = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.v
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !38
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #21
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bp = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !38
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.bu = load i8, ptr %i.d, align 8, !tbaa !76, !range !52, !noundef !53
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bw = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZN5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.x
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !38
  br label %_ZN5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEED2Ev.exit.sink.split

bb.y:                                             ; preds = %bb.w
  %i.ca = load i8, ptr %7, align 8, !tbaa !55, !range !52, !noundef !53
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.z, label %_ZN5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEED2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !36 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !38
  br label %_ZN5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEED2Ev.exit.sink.split

_ZN5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEED2Ev.exit.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.sink128 = phi i64 [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %.sink = phi ptr [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ch = add i64 %.sink128, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ch) #21
  br label %_ZN5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEED2Ev.exit

_ZN5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEED2Ev.exit: ; preds = %_ZN5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEED2Ev.exit.sink.split, %bb.z, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

bb.aa:                                            ; preds = %.critedge
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

bb.ab:                                            ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit92

bb.ac:                                            ; preds = %bb.u, %_ZNR5vcpkg9ExpectedTINS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15LocalizedStringEE5errorEv.exit, %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZN5vcpkg15LocalizedStringD2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90

end_hunk_0
