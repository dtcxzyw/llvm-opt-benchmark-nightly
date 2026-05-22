inline.NumInlined: 683
inline.NumDeleted: 314
begin_hunk_0_@_ZN6google8protobuf8compiler6csharp14StringToBase64B5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57
  %i.gq = phi ptr [ %.pre.i.i58, %.noexc59 ], [ %i.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57 ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gi
  store i8 61, ptr %i.gr, align 1, !tbaa !14
  store i64 %i.gj, ptr %i.b, align 8, !tbaa !11
  %i.gs = load ptr, ptr %0, align 8, !tbaa !15
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gj
  store i8 0, ptr %i.gt, align 1, !tbaa !14
  %i.gu = load i64, ptr %i.b, align 8, !tbaa !11  ; 4 uses
  %i.gv = add i64 %i.gu, 1                        ; 2 uses
  %i.gw = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.a                 ; 2 uses
  br i1 %i.gx, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61

bb.ak:                                            ; preds = %bb.aj
  %i.gy = icmp ult i64 %i.gu, 16
  tail call void @llvm.assume(i1 %i.gy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61: ; preds = %bb.ak, %bb.aj
  %i.gz = load i64, ptr %i.a, align 8
  %i.ha = select i1 %i.gx, i64 15, i64 %i.gz
  %i.hb = icmp ugt i64 %i.gv, %i.ha
  br i1 %i.hb, label %bb.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.gu, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc63 unwind label %.loopexit.split-lp

.noexc63:                                         ; preds = %bb.al
  %.pre.i.i62 = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61, %.noexc63
  %i.hc = phi ptr [ %.pre.i.i62, %.noexc63 ], [ %i.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gu
  store i8 61, ptr %i.hd, align 1, !tbaa !14
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64
  %.sink = phi i64 [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64 ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit48 ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !11
  %i.he = load ptr, ptr %0, align 8, !tbaa !15
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sink
  store i8 0, ptr %i.hf, align 1, !tbaa !14
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler6csharp22FileDescriptorToBase64B5cxx11EPKNS0_14FileDescriptorE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.google::protobuf::FileDescriptorProto", align 8 ; 7 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !11
  store i8 0, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14FileDescriptorEb(ptr dead_on_unwind nonnull writable sret(%"class.google::protobuf::FileDescriptorProto") align 8 %3, ptr noundef nonnull align 8 dereferenceable(184) %1, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZNK6google8protobuf11MessageLite17SerializeToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %.critedge, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @.str.20) #26
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.i

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %.critedge, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  unreachable

.critedge:                                        ; preds = %bb.c
  %i.h = load ptr, ptr %2, align 8, !tbaa !15
  %i.i = load i64, ptr %i.b, align 8, !tbaa !11
  invoke void @_ZN6google8protobuf8compiler6csharp14StringToBase64B5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %i.i, ptr %i.h)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %.critedge
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.j = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.l = load i64, ptr %i.a, align 8, !tbaa !14
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.f, %bb.h ]
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %3) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.n = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.l
  %i.p = load i64, ptr %i.a, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14FileDescriptorEb(ptr dead_on_unwind writable sret(%"class.google::protobuf::FileDescriptorProto") align 8, ptr noundef nonnull align 8 dereferenceable(184), i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK6google8protobuf11MessageLite17SerializeToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6google8protobuf8compiler6csharp20CreateFieldGeneratorEPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2, !tbaa !43    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 32
  %.not79 = icmp eq i8 %i.e, 0                    ; 3 uses
  switch i8 %i.b, label %bb.aa [
    i8 10, label %bb.b
    i8 11, label %bb.b
    i8 14, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br i1 %.not79, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 16
  %.not78 = icmp eq i8 %i.h, 0
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 6 uses
  br i1 %.not78, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8compiler6csharp17MapFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2)
          to label %bb.ai unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 64) #28
  br label %bb.aj

bb.f:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8compiler6csharp29RepeatedMessageFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2)
          to label %bb.ai unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 64) #28
  br label %bb.aj

bb.h:                                             ; preds = %bb.b
  %i.l = icmp eq i8 %i.b, 11
  br i1 %i.l, label %bb.i, label %_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.m = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11
  %i.t = icmp eq i64 %i.s, 30
  br i1 %i.t, label %_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit, label %_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit.thread

_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.i
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %i.v = load i128, ptr %i.u, align 1
  %i.w = xor i128 %i.v, 63005710922238749866870542373108019047
  %i.x = getelementptr i8, ptr %i.u, i64 14
  %i.y = load i128, ptr %i.x, align 1
  %i.z = xor i128 %i.y, 148148874381910710728860405884568153958
  %i.aa = or i128 %i.w, %i.z
  %i.ab = icmp ne i128 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit.thread

bb.j:                                             ; preds = %_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = and i8 %i.af, 8
  %.not.i = icmp eq i8 %i.ag, 0
  %i.ah = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30 ; 6 uses
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6google8protobuf8compiler6csharp26WrapperOneofFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(65) %i.ah, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2)
          to label %bb.ai unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 72) #28
  br label %bb.aj

bb.m:                                             ; preds = %bb.j
  invoke void @_ZN6google8protobuf8compiler6csharp21WrapperFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(65) %i.ah, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2)
          to label %bb.ai unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 72) #28
  br label %bb.aj

_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit.thread: ; preds = %bb.i, %bb.h, %_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = and i8 %i.al, 8
  %.not.i54 = icmp eq i8 %i.am, 0
  %i.an = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 6 uses
  br i1 %.not.i54, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit.thread
  invoke void @_ZN6google8protobuf8compiler6csharp26MessageOneofFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2)
          to label %bb.ai unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 64) #28
  br label %bb.aj

bb.q:                                             ; preds = %_ZN6google8protobuf8compiler6csharp13IsWrapperTypeEPKNS0_15FieldDescriptorE.exit.thread
  invoke void @_ZN6google8protobuf8compiler6csharp21MessageFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2)
          to label %bb.ai unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 64) #28
  br label %bb.aj

bb.s:                                             ; preds = %bb.a
  br i1 %.not79, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 3 uses
  invoke void @_ZN6google8protobuf8compiler6csharp26RepeatedEnumFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2)
          to label %bb.ai unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 64) #28
  br label %bb.aj

bb.v:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.at = load i8, ptr %i.as, align 1
  %i.au = and i8 %i.at, 8
  %.not.i59 = icmp eq i8 %i.au, 0
  %i.av = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30 ; 6 uses
  br i1 %.not.i59, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6google8protobuf8compiler6csharp23EnumOneofFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(65) %i.av, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2)
          to label %bb.ai unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 72) #28
  br label %bb.aj

bb.y:                                             ; preds = %bb.v
  invoke void @_ZN6google8protobuf8compiler6csharp18EnumFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(65) %i.av, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2)
          to label %bb.ai unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 72) #28
  br label %bb.aj

bb.aa:                                            ; preds = %bb.a
  br i1 %.not79, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ay = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 3 uses
  invoke void @_ZN6google8protobuf8compiler6csharp31RepeatedPrimitiveFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2)
          to label %bb.ai unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 64) #28
  br label %bb.aj

bb.ad:                                            ; preds = %bb.aa
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = and i8 %i.bb, 8
  %.not.i64 = icmp eq i8 %i.bc, 0
  %i.bd = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30 ; 6 uses
  br i1 %.not.i64, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6google8protobuf8compiler6csharp28PrimitiveOneofFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(65) %i.bd, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2)
          to label %bb.ai unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 72) #28
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ad
  invoke void @_ZN6google8protobuf8compiler6csharp23PrimitiveFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(65) %i.bd, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 72) #28
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.ae, %bb.ab, %bb.y, %bb.w, %bb.t, %bb.q, %bb.o, %bb.m, %bb.k, %bb.f, %bb.d
  %.049 = phi ptr [ %i.av, %bb.y ], [ %i.ay, %bb.ab ], [ %i.bd, %bb.ae ], [ %i.av, %bb.w ], [ %i.i, %bb.d ], [ %i.i, %bb.f ], [ %i.ah, %bb.k ], [ %i.ah, %bb.m ], [ %i.an, %bb.o ], [ %i.an, %bb.q ], [ %i.aq, %bb.t ], [ %i.bd, %bb.ag ]
  ret ptr %.049

bb.aj:                                            ; preds = %bb.ah, %bb.af, %bb.ac, %bb.z, %bb.x, %bb.u, %bb.r, %bb.p, %bb.n, %bb.l, %bb.g, %bb.e
  %.pn = phi { ptr, i32 } [ %i.az, %bb.ac ], [ %i.be, %bb.af ], [ %i.bf, %bb.ah ], [ %i.j, %bb.e ], [ %i.k, %bb.g ], [ %i.ai, %bb.l ], [ %i.aj, %bb.n ], [ %i.ao, %bb.p ], [ %i.ap, %bb.r ], [ %i.ar, %bb.u ], [ %i.aw, %bb.x ], [ %i.ax, %bb.z ]
  resume { ptr, i32 } %.pn
}

declare void @_ZN6google8protobuf8compiler6csharp17MapFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf8compiler6csharp29RepeatedMessageFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf8compiler6csharp26WrapperOneofFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf8compiler6csharp21WrapperFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf8compiler6csharp26MessageOneofFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf8compiler6csharp21MessageFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf8compiler6csharp26RepeatedEnumFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf8compiler6csharp23EnumOneofFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf8compiler6csharp18EnumFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf8compiler6csharp31RepeatedPrimitiveFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf8compiler6csharp28PrimitiveOneofFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN6google8protobuf8compiler6csharp23PrimitiveFieldGeneratorC1EPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8compiler6csharp10IsNullableEPKNS0_15FieldDescriptorE(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 32
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 2, !tbaa !43
  %switch.tableidx = add i8 %i.e, -1              ; 2 uses
  %i.f = icmp ult i8 %switch.tableidx, 18
  br i1 %i.f, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 434) #26
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 19, ptr nonnull @.str.21)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit: ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #27
  unreachable

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #27
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %switch.cast = zext nneg i8 %switch.tableidx to i18
  %switch.downshift = lshr i18 3840, %switch.cast
  %switch.masked = trunc i18 %switch.downshift to i1
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi i1 [ %switch.masked, %switch.lookup ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2IPKPKcEET_SI_mRKS9_RKSA_RKSB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::pair.24", align 8     ; 6 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %1
  br i1 %i.a, label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.thread, label %bb.c

_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.thread: ; preds = %bb.b
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i13, align 8
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true) ; 2 uses
  %i.g = lshr i64 -2305843009213693952, %i.f
  %i.h = icmp ugt i64 %i.e, %i.g
  %.neg.i.i = sext i1 %i.h to i64
  %i.i = add nsw i64 %i.f, %.neg.i.i
  %i.j = and i64 %i.i, 4294967295
  %i.k = lshr i64 -1, %i.j
  br label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit

_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit: ; preds = %bb.a, %bb.c
  %.0.i = phi i64 [ %3, %bb.a ], [ %i.k, %bb.c ]  ; 2 uses
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.l = icmp ugt i64 %.0.i, 1
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit
  tail call void @_ZN4absl12lts_2025051218container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE18GetPolicyFunctionsEvE5value, i64 noundef %.0.i)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.thread, %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit, %bb.d
  %.not5.i = icmp eq ptr %1, %2
  br i1 %.not5.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertIPKPKcEEvT_SI_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_.exit.i, %.lr.ph.i
  %.06.i = phi ptr [ %1, %.lr.ph.i ], [ %i.v, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.n = load i64, ptr %0, align 8, !tbaa !82, !noalias !85 ; 2 uses
  %i.o = icmp ne i64 %i.n, 0
  call void @llvm.assume(i1 %i.o)
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE26find_or_prepare_insert_sooIPKcEESt4pairINSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.24") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %.06.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertIPKcEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE30find_or_prepare_insert_non_sooIPKcEESt4pairINSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.24") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %.06.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertIPKcEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i unwind label %bb.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertIPKcEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.q = load i8, ptr %i.m, align 8, !tbaa !88, !range !91, !alias.scope !92, !noundef !39
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_.exit.i

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertIPKcEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !92 ; 2 uses
  %i.s = load ptr, ptr %.06.i, align 8, !tbaa !93, !noalias !92 ; 2 uses
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #25
  store i64 %i.t, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  store ptr %i.s, ptr %i.u, align 8, !tbaa !96
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_.exit.i: ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertIPKcEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %.not.i10 = icmp eq ptr %i.v, %2
  br i1 %.not.i10, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertIPKPKcEEvT_SI_.exit, label %bb.e, !llvm.loop !97

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertIPKPKcEEvT_SI_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_.exit.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #25
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
