Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/generated_message_util?download=true
inline.NumInlined: 133
inline.NumDeleted: 110
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.google::protobuf::internal::DummyWeakDefault" = type { ptr, %"struct.google::protobuf::internal::WeakDescriptorDefaultTail" }
%"struct.google::protobuf::internal::WeakDescriptorDefaultTail" = type { ptr, i64 }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i8 }
%"class.google::protobuf::internal::GlobalEmptyStringDynamicInit" = type { [32 x i8] }
%"class.google::protobuf::io::ArrayOutputStream" = type { %"class.google::protobuf::io::ZeroCopyOutputStream", ptr, i32, i32, i32, i32 }
%"class.google::protobuf::io::ZeroCopyOutputStream" = type { ptr }
%"class.google::protobuf::io::CodedOutputStream" = type { %"class.google::protobuf::io::EpsCopyOutputStream", ptr, i64 }
%"class.google::protobuf::io::EpsCopyOutputStream" = type <{ ptr, ptr, [32 x i8], ptr, i8, i8, i8, i8, [4 x i8] }>
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.2" }
%"struct.std::_Head_base.2" = type { ptr }

$_ZN6google8protobuf8internal19arena_delete_objectINS0_11MessageLiteEEEvPv = comdat any

@_ZN6google8protobuf8internal11empty_cord_E = local_unnamed_addr constant { { { { { { [16 x i8] } } } } } } zeroinitializer, align 8
@_ZN6google8protobuf8internal18dummy_weak_defaultE = hidden global %"struct.google::protobuf::internal::DummyWeakDefault" { ptr null, %"struct.google::protobuf::internal::WeakDescriptorDefaultTail" { ptr @_ZN6google8protobuf8internal18dummy_weak_defaultE, i64 24 } }, section "pb_defaults", align 8
@_ZN6google8protobuf8internal28init_protobuf_defaults_stateE = local_unnamed_addr global %"struct.std::atomic" zeroinitializer, align 1
@_ZGVZN6google8protobuf8internal24InitProtobufDefaultsSlowEvE9is_inited = internal global i64 0, align 8
@.str = private unnamed_addr constant [93 x i8] c"/opt-bench/work/grpc/grpc/third_party/protobuf/src/google/protobuf/generated_message_util.cc\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Not implemented field number \00", align 1
@_ZN6google8protobuf8internal26fixed_address_empty_stringE = external global %"class.google::protobuf::internal::GlobalEmptyStringDynamicInit", align 8
@__start_pb_defaults = external constant i8, align 1
@__stop_pb_defaults = external constant i8, align 1
@_ZN6google8protobuf2io17CodedOutputStream36default_serialization_deterministic_E = external local_unnamed_addr global %"struct.std::atomic", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 101, ptr @_GLOBAL__I_000101, ptr null }]

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8internal13DestroyStringEPKv(ptr nofree noundef readonly captures(address) %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !15
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal24InitProtobufDefaultsSlowEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6google8protobuf8internal24InitProtobufDefaultsSlowEvE9is_inited acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6google8protobuf8internal24InitProtobufDefaultsSlowEvE9is_inited) #17
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN6google8protobuf8internalL24InitProtobufDefaultsImplEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google8protobuf8internal24InitProtobufDefaultsSlowEvE9is_inited) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6google8protobuf8internal24InitProtobufDefaultsSlowEvE9is_inited) #17
  resume { ptr, i32 } %i.d
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8internalL24InitProtobufDefaultsImplEv() unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, i64 16), ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, align 8, !tbaa !53
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, i64 8), align 8, !tbaa !17
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, i64 16), align 8, !tbaa !15
  tail call void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef nonnull @_ZN6google8protobuf8internal13DestroyStringEPKv, ptr noundef nonnull @_ZN6google8protobuf8internal26fixed_address_empty_stringE)
  tail call void asm sideeffect ".reloc ., BFD_RELOC_NONE, ${0:p}", "^Ws,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6google8protobuf8internal18dummy_weak_defaultE) #17, !srcloc !54
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.08.i = phi ptr [ @__stop_pb_defaults, %bb.a ], [ %i.e, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds i8, ptr %.08.i, i64 -16
  %i.b = getelementptr inbounds i8, ptr %.08.i, i64 -8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !58
  %i.d = sub i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %.08.i, i64 %i.d ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !59
  store ptr %i.e, ptr %i.f, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.e, @__start_pb_defaults
  br i1 %.not.i, label %_ZN6google8protobuf8internalL16InitWeakDefaultsEv.exit, label %bb.b, !llvm.loop !52

_ZN6google8protobuf8internalL16InitWeakDefaultsEv.exit: ; preds = %bb.b
  store atomic i8 1, ptr @_ZN6google8protobuf8internal28init_protobuf_defaults_stateE release, align 1
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8internal23SerializeMessageNoTableEPKNS0_11MessageLiteEPNS0_2io17CodedOutputStreamE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %0, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.b, ptr noundef %1), !inline_history !0
  store ptr %i.f, ptr %i.a, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8internal23SerializeMessageNoTableEPKNS0_11MessageLiteEPNS1_11ArrayOutputE(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.google::protobuf::io::ArrayOutputStream", align 8 ; 7 uses
  %3 = alloca %"class.google::protobuf::io::CodedOutputStream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.c = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN6google8protobuf2io17ArrayOutputStreamC1EPvii(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.c, i32 noundef 2147483647, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.d = load atomic i8, ptr @_ZN6google8protobuf2io17CodedOutputStream36default_serialization_deterministic_E monotonic, align 1, !range !26, !noundef !27
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %2, ptr %i.h, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 0, ptr %i.i, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 0, ptr %i.j, align 1, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 58 ; 2 uses
  store i8 %i.d, ptr %i.k, align 2, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 59
  store i8 0, ptr %i.l, align 1, !tbaa !69
  store ptr %i.f, ptr %i.e, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.n = call noundef i64 @_ZNK6google8protobuf2io17ArrayOutputStream9ByteCountEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i64 %i.n, ptr %i.m, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.o = call noundef zeroext i1 @_ZN6google8protobuf2io17ArrayOutputStream4NextEPPvPi(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.p = load i32, ptr %i.b, align 4              ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = select i1 %i.o, i1 %i.q, i1 false, !prof !29
  br i1 %i.r, label %bb.a, label %.noexc._crit_edge, !prof !29

.noexc._crit_edge:                                ; preds = %.noexc
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !23
  br label %bb.b

bb.a:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %i.t = icmp samesign ugt i32 %i.p, 16           ; 3 uses
  %i.u = zext nneg i32 %i.p to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  %.sink9.i.i.i = select i1 %i.t, ptr %i.w, ptr %i.x
  %.sink.i.i.i = select i1 %i.t, ptr null, ptr %i.s
  %.0.i.i.i = select i1 %i.t, ptr %i.s, ptr %i.f  ; 2 uses
  store ptr %.sink9.i.i.i, ptr %3, align 8, !tbaa !28
  store ptr %.sink.i.i.i, ptr %i.g, align 8, !tbaa !64
  store ptr %.0.i.i.i, ptr %i.e, align 8, !tbaa !23
  br label %bb.b

bb.b:                                             ; preds = %.noexc._crit_edge, %bb.a
  %i.y = phi ptr [ %.pre, %.noexc._crit_edge ], [ %.0.i.i.i, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !73, !range !26, !noundef !27
  store i8 %i.aa, ptr %i.k, align 2, !tbaa !68
  %i.ab = load ptr, ptr %0, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.y, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.e, !inline_history !0 ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !23
  %i.af = invoke noundef i64 @_ZNK6google8protobuf2io19EpsCopyOutputStream9ByteCountEPh(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %i.ae)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !71
  %i.ah = sub nsw i64 %i.af, %i.ag
  %i.ai = load ptr, ptr %1, align 8, !tbaa !63
  %sext = shl i64 %i.ah, 32
  %i.aj = ashr exact i64 %sext, 32
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  store ptr %i.ak, ptr %1, align 8, !tbaa !63
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.al
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN6google8protobuf2io17ArrayOutputStreamC1EPvii(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold mustprogress noreturn uwtable
define hidden void @_ZN6google8protobuf8internal23SerializeNotImplementedEi(i32 noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 331) #18
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 29, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %0, ptr %i.a, align 4, !tbaa !74
  %i.b = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #19
  unreachable

bb.c:                                             ; preds = %bb.b, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #19
  unreachable
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal6IsNullILi9EEEbPKv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, -4
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp eq i64 %i.f, 0
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal6IsNullILi12EEEbPKv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, -4
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp eq i64 %i.f, 0
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal6IsNullILi10EEEbPKv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
end_hunk_0
