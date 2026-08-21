Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/instrument?download=true
inline.NumInlined: 7378
inline.NumDeleted: 4043
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN9grpc_core17instrument_detail15QueryableDomain16AllocateIntGaugeESt17basic_string_viewIcSt11char_traitsIcEES5_S5_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !319  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !320
  %.not.i5 = icmp eq ptr %i.o, %i.q
  br i1 %.not.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN9grpc_core17instrument_detail15InstrumentIndex3GetEv.exit
  store ptr %i.l, ptr %i.o, align 8, !tbaa !251
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %i.n, align 8, !tbaa !319
  br label %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %_ZN9grpc_core17instrument_detail15InstrumentIndex3GetEv.exit
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !321  ; 4 uses
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.h, label %_ZNKSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #37
  unreachable

_ZNKSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #36 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store ptr %i.l, ptr %i.ae, align 8, !tbaa !251
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.i, label %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.s, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.not.i17.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.v) #38
  br label %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.ad, ptr %i.m, align 8, !tbaa !321
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !319
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !320
  br label %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.f, %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN9grpc_core17instrument_detail15QueryableDomain17AllocateUintGaugeESt17basic_string_viewIcSt11char_traitsIcEES5_S5_(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr nofree noundef readonly byval(%"class.std::basic_string_view") align 8 captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.std::variant", align 8      ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291  ; 2 uses
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !291
  %i.d = load atomic i8, ptr @_ZGVZN9grpc_core17instrument_detail15InstrumentIndex3GetEvE5index acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN9grpc_core17instrument_detail15InstrumentIndex3GetEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core17instrument_detail15InstrumentIndex3GetEvE5index) #35
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN9grpc_core17instrument_detail15InstrumentIndex3GetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %bb.d unwind label %bb.e       ; 4 uses

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8
  store ptr %i.g, ptr @_ZZN9grpc_core17instrument_detail15InstrumentIndex3GetEvE5index, align 8, !tbaa !315
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core17instrument_detail15InstrumentIndex3GetEvE5index) #35
  br label %_ZN9grpc_core17instrument_detail15InstrumentIndex3GetEv.exit

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN9grpc_core17instrument_detail15InstrumentIndex3GetEvE5index) #35
  resume { ptr, i32 } %i.i

_ZN9grpc_core17instrument_detail15InstrumentIndex3GetEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.j = load ptr, ptr @_ZZN9grpc_core17instrument_detail15InstrumentIndex3GetEvE5index, align 8, !tbaa !315
  store i64 %3, ptr %6, align 8, !tbaa !44
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !381
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 5, ptr %i.k, align 8, !tbaa !539
  %i.l = tail call noundef ptr @_ZN9grpc_core17instrument_detail15InstrumentIndex8RegisterEPNS0_15QueryableDomainEmSt17basic_string_viewIcSt11char_traitsIcEES7_S7_St7variantIJNS_18InstrumentMetadata12CounterShapeENS9_18UpDownCounterShapeEN4absl12lts_202505124SpanIKlEENS9_16DoubleGaugeShapeENS9_13IntGaugeShapeENS9_14UintGaugeShapeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull %0, i64 noundef %i.b, i64 %1, ptr %2, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %6, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %5, ptr noundef nonnull byval(%"class.std::variant") align 8 %7) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !319  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !320
  %.not.i5 = icmp eq ptr %i.o, %i.q
  br i1 %.not.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN9grpc_core17instrument_detail15InstrumentIndex3GetEv.exit
  store ptr %i.l, ptr %i.o, align 8, !tbaa !251
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %i.n, align 8, !tbaa !319
  br label %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %_ZN9grpc_core17instrument_detail15InstrumentIndex3GetEv.exit
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !321  ; 4 uses
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.h, label %_ZNKSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #37
  unreachable

_ZNKSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #36 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store ptr %i.l, ptr %i.ae, align 8, !tbaa !251
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.i, label %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.s, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.not.i17.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.v) #38
  br label %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.ad, ptr %i.m, align 8, !tbaa !321
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !319
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !320
  br label %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.f, %_ZNSt6vectorIPKN9grpc_core18InstrumentMetadata11DescriptionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core17instrument_detail15QueryableDomain16TestOnlyResetAllEv() local_unnamed_addr #0 align 2 {
bb.a:
  %.03 = load ptr, ptr @_ZN9grpc_core17instrument_detail15QueryableDomain5last_E, align 8, !tbaa !246 ; 2 uses
  %.not4 = icmp eq ptr %.03, null
  br i1 %.not4, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.05 = phi ptr [ %.0, %.lr.ph ], [ %.03, %bb.a ] ; 2 uses
  tail call void @_ZN9grpc_core17instrument_detail15QueryableDomain13TestOnlyResetEv(ptr noundef nonnull align 8 dereferenceable(192) %.05)
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %.0 = load ptr, ptr %i.a, align 8, !tbaa !246   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !717
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_112FilterLabelsENS_19InstrumentLabelListENS_18InstrumentLabelSetEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr nofree noundef readonly byval(%"class.grpc_core::InstrumentLabelList") align 8 captures(none) %1, i64 %2, ptr %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca i64, align 8                        ; 6 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store i64 %2, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load i8, ptr %1, align 8, !tbaa !45      ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not22 = icmp eq i8 %i.b, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 25
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.021 = phi i64 [ 0, %.lr.ph ], [ %i.ax, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %.021
  %.sroa.0.0.copyload.i = load i8, ptr %i.k, align 1, !tbaa !28
  %6 = zext i8 %.sroa.0.0.copyload.i to i64       ; 2 uses
  %7 = lshr i64 %6, 3
  %.sroa.020.0..sroa_stride = and i64 %7, 24
  %.sroa.020.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.020.0..sroa_stride
  %.sroa.020.0..sroa.020.0..sroa.020.0. = load i64, ptr %.sroa.020.0..sroa_idx, align 8, !tbaa !44
  %8 = and i64 %6, 63
  %i.l = shl nuw i64 1, %8
  %i.m = and i64 %i.l, %.sroa.020.0..sroa.020.0..sroa.020.0.
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %.021 ; 3 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !176  ; 8 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !186
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !21
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !25   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store i64 %i.t, ptr %4, align 8, !tbaa !44
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.v, ptr %i.o, align 8, !tbaa !29
  %i.w = load i64, ptr %4, align 8, !tbaa !44
  store i64 %i.w, ptr %i.q, align 8, !tbaa !28
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.e
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.q, %bb.e ] ; 2 uses
  switch i64 %i.t, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %i.r, align 1, !tbaa !28
  store i8 %i.y, ptr %i.x, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.z = load i64, ptr %4, align 8, !tbaa !44     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !25
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !176
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.h:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %.noexc.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %i.g, ptr %5, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.g, ptr noundef nonnull align 1 dereferenceable(9) @.str.62, i64 9, i1 false)
  store i64 9, ptr %i.h, align 8, !tbaa !25
  store i8 0, ptr %i.i, align 1, !tbaa !28
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !176 ; 6 uses
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !186
  %.not.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !21
  %i.aj = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.g
  br i1 %i.ak, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ai, ptr noundef nonnull align 8 dereferenceable(10) %i.g, i64 10, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !29
  %i.al = load i64, ptr %i.g, align 8, !tbaa !28
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 9, ptr %i.am, align 8, !tbaa !25
  store ptr %i.g, ptr %5, align 8, !tbaa !29
  store i64 0, ptr %i.h, align 8, !tbaa !25
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !176
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.n

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.m
  %.pre = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.ap = icmp eq ptr %.pre, %i.g
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !28
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ar) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.g
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.n
  %i.av = load i64, ptr %i.g, align 8, !tbaa !28
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.o

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = add nuw nsw i64 %.021, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !718

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %.preheader
  ret void

bb.o:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.b
  %.pn11.pn = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.af, %bb.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #35
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE4findISI_EENSV_8iteratorERSS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !116
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !134
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE10find_smallISI_EENSV_8iteratorERSS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !28 ; 4 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !188
  %i.g = load ptr, ptr %1, align 8, !tbaa !188
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE10find_smallISI_EENSV_8iteratorERSS_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !176  ; 3 uses
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !175  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !176
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !175  ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp eq i64 %i.p, %i.v
  br i1 %i.w, label %bb.e, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE10find_smallISI_EENSV_8iteratorERSS_.exit

bb.e:                                             ; preds = %bb.d
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEEvE5applyINS1_12raw_hash_setISM_NS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE12EqualElementISI_EEJRSW_ESM_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS13_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.e ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.m, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !25
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE10find_smallISI_EENSV_8iteratorERSS_.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ad = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !29
  %i.ae = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !29
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.y)
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE10find_smallISI_EENSV_8iteratorERSS_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEEvE5applyINS1_12raw_hash_setISM_NS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE12EqualElementISI_EEJRSW_ESM_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS13_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !184

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEEvE5applyINS1_12raw_hash_setISM_NS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE12EqualElementISI_EEJRSW_ESM_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS13_DpOS14_.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !28, !nonnull !154, !noundef !154
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.aj, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE10find_smallISI_EENSV_8iteratorERSS_.exit

bb.g:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !28
  tail call void @llvm.prefetch.p0(ptr %i.al, i32 0, i32 1, i32 1)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !246
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = xor i64 %i.ao, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.aq = mul i64 %i.ap, -2543921745674291987
  %i.ar = tail call noundef i64 @llvm.bswap.i64(i64 %i.aq)
  %i.as = xor i64 %i.ar, %i.ao
  %i.at = mul i64 %i.as, -2543921745674291987
  %i.au = tail call noundef i64 @llvm.bswap.i64(i64 %i.at) ; 2 uses
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !175 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.av
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE7hash_ofISI_EEmRKT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.06.09.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.au, %bb.g ]
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.ay = load ptr, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !25 ; 2 uses
  %i.bb = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %.sroa.06.09.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.ay, i64 noundef %i.ba)
  %i.bc = add i64 %i.ba, 87
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bf = icmp ult ptr %i.be, %i.ax
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051213hash_internal13HashStateBaseINS1_15MixingHashStateEE18combine_contiguousINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_S3_PKT_m.exit.loopexit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !187

_ZN4absl12lts_2025051213hash_internal13HashStateBaseINS1_15MixingHashStateEE18combine_contiguousINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_S3_PKT_m.exit.loopexit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !176
  %.pre6.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !175
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE7hash_ofISI_EEmRKT_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE7hash_ofISI_EEmRKT_.exit: ; preds = %bb.g, %_ZN4absl12lts_2025051213hash_internal13HashStateBaseINS1_15MixingHashStateEE18combine_contiguousINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_S3_PKT_m.exit.loopexit.i.i.i.i.i.i.i.i.i.i
  %i.bg = phi ptr [ %i.av, %bb.g ], [ %.pre6.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051213hash_internal13HashStateBaseINS1_15MixingHashStateEE18combine_contiguousINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_S3_PKT_m.exit.loopexit.i.i.i.i.i.i.i.i.i.i ]
  %i.bh = phi ptr [ %i.av, %bb.g ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051213hash_internal13HashStateBaseINS1_15MixingHashStateEE18combine_contiguousINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_S3_PKT_m.exit.loopexit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %bb.g ], [ %i.bd, %_ZN4absl12lts_2025051213hash_internal13HashStateBaseINS1_15MixingHashStateEE18combine_contiguousINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_S3_PKT_m.exit.loopexit.i.i.i.i.i.i.i.i.i.i ]
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 5
  %i.bm = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, 87
  %i.bn = add i64 %i.bm, %i.bl
  %i.bo = tail call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE10find_largeISI_EENSV_8iteratorERSS_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bn)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE10find_smallISI_EENSV_8iteratorERSS_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE10find_smallISI_EENSV_8iteratorERSS_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEEvE5applyINS1_12raw_hash_setISM_NS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE12EqualElementISI_EEJRSW_ESM_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS13_DpOS14_.exit.i, %bb.d, %bb.c, %bb.b, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE7hash_ofISI_EEmRKT_.exit
  %.pn = phi { ptr, ptr } [ %i.bo, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEENS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE7hash_ofISI_EEmRKT_.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEENS5_13RefCountedPtrINS6_13DomainStorageEEEEEvE5applyINS1_12raw_hash_setISM_NS0_13hash_internal4HashISI_EESt8equal_toISI_ESaIS4_IKSI_SL_EEE12EqualElementISI_EEJRSW_ESM_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOS13_DpOS14_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %bb.d ], [ { ptr null, ptr undef }, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ { ptr null, ptr undef }, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPN9grpc_core17instrument_detail15QueryableDomainESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !176  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !28
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !185

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !175
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !186
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core20LowContentionBackendC2Em(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
