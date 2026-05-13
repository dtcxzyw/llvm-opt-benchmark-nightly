inline.NumInlined: 398
inline.NumDeleted: 225
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal10AppendPackEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE:bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr %0, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPvSt17basic_string_viewIcS7_E, ptr %1, i64 %2, ptr %3, i64 %4)
  br i1 %i.c, label %bb.d, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30, i64 noundef %i.b, i64 noundef %i.d) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.b
  store i64 %i.b, ptr %i.a, align 8, !tbaa !33
  %i.f = load ptr, ptr %0, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  store i8 0, ptr %i.g, align 1, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !33
  store i8 0, ptr %i.a, align 8, !tbaa !15
  %i.c = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull %0, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPvSt17basic_string_viewIcS7_E, ptr %1, i64 %2, ptr %3, i64 %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !33
  %i.d = load ptr, ptr %0, align 8, !tbaa !69
  store i8 0, ptr %i.d, align 1, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.a, align 8, !tbaa !15
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, -2147483648) i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::str_format_internal::FILERawSink", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %0, ptr %5, align 8, !tbaa !93
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !97
  %i.c = call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS1_11FILERawSinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr %1, i64 %2, ptr %3, i64 %4)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #19
  store i32 22, ptr %i.d, align 4, !tbaa !3
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__errno_location() #19
  store i32 %i.e, ptr %i.f, align 4, !tbaa !3
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.h = icmp ugt i64 %i.g, 2147483647
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__errno_location() #19
  store i32 27, ptr %i.i, align 4, !tbaa !3
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = trunc nuw nsw i64 %i.g to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ %i.j, %bb.g ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2025051219str_format_internal8SnprintFEPcmNS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %0, i64 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::str_format_internal::BufferRawSink", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = add i64 %1, -1
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 1)
  store ptr %0, ptr %6, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !101
  %i.e = call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull %6, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS1_13BufferRawSinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr %2, i64 %3, ptr %4, i64 %5)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #19
  store i32 22, ptr %i.f, align 4, !tbaa !3
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  %i.g = load i64, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.a, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated
  store i8 0, ptr %i.h, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = trunc i64 %i.g to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0 = phi i32 [ %i.i, %bb.e ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPvSt17basic_string_viewIcS7_E(ptr noundef %0, i64 %1, ptr %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33
  %i.c = sub i64 4611686018427387903, %i.b
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.b, label %_ZN4absl12lts_2025051219str_format_internal11InvokeFlushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTcl15AbslFormatFlushfp_fp0_EEPT_St17basic_string_viewIcS6_E.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZN4absl12lts_2025051219str_format_internal11InvokeFlushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTcl15AbslFormatFlushfp_fp0_EEPT_St17basic_string_viewIcS6_E.exit: ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, i64 noundef %1) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117ConverterConsumerINS2_20SummarizingConverterEE10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(15) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::str_format_internal::UntypedFormatSpecImpl", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 30 uses
  %4 = alloca %"class.absl::lts_20250512::str_format_internal::Streamable", align 8 ; 8 uses
  %.sroa.0.i = alloca %"class.absl::lts_20250512::str_format_internal::FormatArgImpl", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !7
  %i.f = add nsw i32 %i.e, -1
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !102  ; 2 uses
  %.not.i = icmp ugt i64 %i.i, %i.g
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4, !tbaa !13
  %.not35.i = icmp eq i8 %i.m, 0
  br i1 %.not35.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !14   ; 4 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !3
  %i.p = icmp slt i32 %i.o, -1
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = xor i32 %i.o, -1
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = icmp ult i64 %i.i, %i.r
  br i1 %i.s, label %.critedge.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i: ; preds = %bb.d
  %i.t = getelementptr [16 x i8], ptr %i.j, i64 %i.r ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.u, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.t, i64 -8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !16
  %i.v = call noundef zeroext i1 %.sroa.2.0.copyload.i.i(ptr %.sroa.0.0.copyload.i.i, i64 589843, i32 0, ptr noundef nonnull %i.b), !inline_history !18
  br i1 %i.v, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i
  %i.w = load i32, ptr %i.b, align 4, !tbaa !3    ; 3 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %i.w, i32 -2147483647)
  %i.y = sub nsw i32 0, %.sroa.speculated.i       ; 2 uses
  store i32 %i.y, ptr %i.b, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.z = phi i32 [ %i.y, %bb.f ], [ %i.w, %bb.e ], [ %i.o, %bb.c ]
  %.033.i = phi i8 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !14 ; 4 uses
  store i32 %i.ab, ptr %i.c, align 4, !tbaa !3
  %i.ac = icmp slt i32 %i.ab, -1
  br i1 %i.ac, label %bb.h, label %.critedge37.i

bb.h:                                             ; preds = %bb.g
  %i.ad = xor i32 %i.ab, -1
  %.sroa.2.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !81
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = icmp ult i64 %.sroa.2.0.copyload.i, %i.ae
  br i1 %i.af, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i: ; preds = %bb.h
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.ag = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.ae ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -16
  %.sroa.0.0.copyload.i38.i = load ptr, ptr %i.ah, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i39.i = getelementptr i8, ptr %i.ag, i64 -8
  %.sroa.2.0.copyload.i40.i = load ptr, ptr %.sroa.2.0..sroa_idx.i39.i, align 8, !tbaa !16
  %i.ai = call noundef zeroext i1 %.sroa.2.0.copyload.i40.i(ptr %.sroa.0.0.copyload.i38.i, i64 589843, i32 0, ptr noundef nonnull %i.c), !inline_history !18
  br i1 %i.ai, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !3
  %.pre46.i = load i32, ptr %i.c, align 4, !tbaa !3
  br label %.critedge37.i

.critedge37.i:                                    ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i, %bb.g
  %i.aj = phi i32 [ %.pre46.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i ], [ %i.ab, %bb.g ]
  %i.ak = phi i32 [ %.pre.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i ], [ %i.z, %bb.g ]
  %i.al = load i8, ptr %i.l, align 4, !tbaa !13
  %.sink.i = or i8 %i.al, %.033.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit.thread

.critedge.i:                                      ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit.thread

bb.i:                                             ; preds = %bb.b, %.critedge37.i
  %.sroa.13.0 = phi i32 [ %i.aj, %.critedge37.i ], [ -1, %bb.b ] ; 2 uses
  %.sroa.101.0 = phi i32 [ %i.ak, %.critedge37.i ], [ -1, %bb.b ] ; 2 uses
  %.sroa.5.0 = phi i8 [ %.sink.i, %.critedge37.i ], [ 0, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.an = load i8, ptr %i.am, align 2, !tbaa !25  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr @.str.2, ptr %2, align 8, !tbaa !106
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.ao, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !109
  store ptr %2, ptr %4, align 8, !tbaa !110
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !tbaa.struct !109
  store i64 2, ptr %i.aq, align 8, !tbaa !81
  %i.as = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(8) %3, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushISoEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.2, i64 2, ptr nonnull %i.ar, i64 1)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  br i1 %i.as, label %_ZN4absl12lts_2025051219str_format_internallsERSoRKNS1_10StreamableE.exit.i, label %bb.j

bb.j:                                             ; preds = %.noexc.i
  %i.at = load ptr, ptr %3, align 8, !tbaa !82
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %3, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !84
  %i.az = or i32 %i.ay, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aw, i32 noundef %i.az)
          to label %_ZN4absl12lts_2025051219str_format_internallsERSoRKNS1_10StreamableE.exit.i unwind label %bb.n

_ZN4absl12lts_2025051219str_format_internallsERSoRKNS1_10StreamableE.exit.i: ; preds = %bb.j, %.noexc.i
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i: ; preds = %_ZN4absl12lts_2025051219str_format_internallsERSoRKNS1_10StreamableE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  invoke void @_ZN4absl12lts_2025051219str_format_internal13FlagsToStringB5cxx11ENS1_5FlagsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i8 noundef zeroext %.sroa.5.0)
          to label %_ZN4absl12lts_2025051219str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE.exit.i unwind label %bb.o

_ZN4absl12lts_2025051219str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i
  %i.bb = load ptr, ptr %5, align 8, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !33
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.bb, i64 noundef %i.bd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE.exit.i
  %i.bf = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.bk = load i64, ptr %i.aq, align 8, !tbaa !81
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %bb.k, label %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !15
  %i.bp = shl i64 %i.bo, 4
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #17
  br label %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit.i

_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit.i: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bq = icmp sgt i32 %.sroa.101.0, -1
  br i1 %i.bq, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit.i
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.sroa.101.0)
          to label %bb.s unwind label %bb.m       ; 0 uses

bb.m:                                             ; preds = %bb.x, %bb.w, %bb.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i, %bb.t, %bb.l, %bb.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.n:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internallsERSoRKNS1_10StreamableE.exit.i, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i

bb.p:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE.exit.i
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i: ; preds = %bb.p
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !15
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.bu, %bb.o ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i ], [ %i.bv, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, %bb.n
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i ], [ %i.bt, %bb.n ]
  %i.cb = load i64, ptr %i.aq, align 8, !tbaa !81
  %i.cc = trunc i64 %i.cb to i1
  br i1 %i.cc, label %bb.r, label %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit31.i

bb.r:                                             ; preds = %bb.q
  %i.cd = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !15
  %i.cg = shl i64 %i.cf, 4
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #17
  br label %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit31.i

_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit31.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.af

bb.s:                                             ; preds = %bb.l, %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit.i
  %i.ch = icmp sgt i32 %.sroa.13.0, -1
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i: ; preds = %bb.t
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.sroa.13.0)
          to label %bb.u unwind label %bb.m       ; 0 uses

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i, %bb.s
  %i.ck = icmp ult i8 %i.an, 19
  br i1 %i.ck, label %switch.lookup, label %_ZN4absl12lts_2025051219str_format_internal26FormatConversionCharToCharENS0_20FormatConversionCharE.exit.i.i

switch.lookup:                                    ; preds = %bb.u
  %i.cl = zext nneg i8 %i.an to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117ConverterConsumerINS2_20SummarizingConverterEE10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE, i64 %i.cl
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN4absl12lts_2025051219str_format_internal26FormatConversionCharToCharENS0_20FormatConversionCharE.exit.i.i

_ZN4absl12lts_2025051219str_format_internal26FormatConversionCharToCharENS0_20FormatConversionCharE.exit.i.i: ; preds = %switch.lookup, %bb.u
  %i.cm = phi i8 [ 63, %bb.u ], [ %switch.load, %switch.lookup ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.cm, ptr %i.a, align 1, !tbaa !15
  %i.cn = load ptr, ptr %3, align 8, !tbaa !82
  %i.co = getelementptr i8, ptr %i.cn, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %3, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !111
  %.not.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal26FormatConversionCharToCharENS0_20FormatConversionCharE.exit.i.i
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.x unwind label %bb.m

bb.w:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal26FormatConversionCharToCharENS0_20FormatConversionCharE.exit.i.i
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext %i.cm)
          to label %bb.x unwind label %bb.m       ; 0 uses

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.i3.i.i = phi ptr [ %i.ct, %bb.v ], [ %3, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i3.i.i, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37.i: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.cw, ptr %6, align 8, !tbaa !30, !alias.scope !118
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.cx, align 8, !tbaa !33, !alias.scope !118
  store i8 0, ptr %i.cw, align 8, !tbaa !15, !alias.scope !118
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !119, !noalias !118 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cz, null
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !noalias !118 ; 2 uses
  %i.dc = icmp ugt ptr %i.cz, %i.db
  %.08.i.i.i.i = select i1 %i.dc, ptr %i.cz, ptr %i.db ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i38.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i38.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37.i
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !121, !noalias !118 ; 2 uses
  %i.df = ptrtoint ptr %.08.i.i.i.i to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.de, i64 noundef %i.dh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.aa, %bb.y
end_hunk_0
