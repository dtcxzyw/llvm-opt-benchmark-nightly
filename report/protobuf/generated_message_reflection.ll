inline.NumInlined: 8096
inline.NumDeleted: 3435
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0
@.str.160 = private unnamed_addr constant [80 x i8] c"/opt-bench/work/protobuf/protobuf/src/google/protobuf/reflection_visit_fields.h\00", align 1
@.str.161 = private unnamed_addr constant [24 x i8] c"!schema.HasWeakFields()\00", align 1
@.str.162 = private unnamed_addr constant [30 x i8] c"weak fields are not supported\00", align 1
@.str.165 = private unnamed_addr constant [41 x i8] c"MapKey::type MapKey is not initialized. \00", align 1
@.str.166 = private unnamed_addr constant [39 x i8] c"Call set methods to initialize MapKey.\00", align 1
@.str.167 = private unnamed_addr constant [33 x i8] c"MapValueRef::MutableMessageValue\00", align 1
@"_ZZN4absl12lts_2025051213base_internal12CallOnceImplIZN6google8protobuf8internal17AssignDescriptorsEPKNS5_15DescriptorTableEE3$_0JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans" = internal constant [3 x %"struct.absl::lts_20250512::base_internal::SpinLockWaitTransition"] [%"struct.absl::lts_20250512::base_internal::SpinLockWaitTransition" { i32 0, i32 1707250555, i8 1 }, %"struct.absl::lts_20250512::base_internal::SpinLockWaitTransition" { i32 1707250555, i32 94570706, i8 0 }, %"struct.absl::lts_20250512::base_internal::SpinLockWaitTransition" { i32 221, i32 221, i8 1 }], align 16
@switch.table._ZNK6google8protobuf10Reflection18CreateTcParseTableEv.282 = private unnamed_addr constant [4 x i32] [i32 2147483644, i32 2147483647, i32 2147483644, i32 2147483644], align 4

@_ZN6google8protobuf10ReflectionC1EPKNS0_10DescriptorERKNS0_8internal16ReflectionSchemaEPKNS0_14DescriptorPoolEPNS0_14MessageFactoryE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN6google8protobuf10ReflectionC2EPKNS0_10DescriptorERKNS0_8internal16ReflectionSchemaEPKNS0_14DescriptorPoolEPNS0_14MessageFactoryE
@_ZN6google8protobuf10ReflectionD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf10ReflectionD2Ev
@_ZN6google8protobuf8internal20AddDescriptorsRunnerC1EPKNS1_15DescriptorTableE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6google8protobuf8internal20AddDescriptorsRunnerC2EPKNS1_15DescriptorTableE

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK6google8protobuf10Reflection14SwapFieldsImplILb1EEEvPNS0_7MessageES4_RKSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_set", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"struct.std::pair", align 8        ; 7 uses
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.d = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.f = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.g = extractvalue { ptr, ptr } %i.f, 1        ; 2 uses
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %bb.j, label %bb.k, !prof !7

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef %i.d, ptr noundef nonnull %0, ptr noundef nonnull @.str)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.1, i32 noundef 1155, ptr noundef nonnull %i.i) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 41, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi42EEERS2_RAT__Kc.exit unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi42EEERS2_RAT__Kc.exit: ; preds = %bb.d
  %i.j = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi42EEERS2_RAT__Kc.exit
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.n, align 1
  %i.o = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.p = xor i64 %i.o, -1
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.o, ptr nonnull %i.q)
          to label %bb.f unwind label %bb.i       ; 2 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 69, ptr nonnull @.str.3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %.0.copyload.i.i.i48 = load i16, ptr %i.w, align 1
  %i.x = zext i16 %.0.copyload.i.i.i48 to i64     ; 2 uses
  %i.y = xor i64 %i.x, -1
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 %i.x, ptr nonnull %i.z)
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 78, ptr nonnull @.str.4)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit: ; preds = %bb.h
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.i

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  unreachable

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit, %bb.h, %bb.f, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi42EEERS2_RAT__Kc.exit, %bb.d, %bb.g, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  unreachable

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store i64 1, ptr %6, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.ac = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %.not74 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not74, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.s

bb.k:                                             ; preds = %bb.c
  %i.ai = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef %i.g, ptr noundef nonnull %0, ptr noundef nonnull @.str.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.1, i32 noundef 1163, ptr noundef nonnull %i.ai) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 42, ptr nonnull @.str.6)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit unwind label %bb.p

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit: ; preds = %bb.k
  %i.aj = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %.0.copyload.i.i.i52 = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.0.copyload.i.i.i52 to i64    ; 2 uses
  %i.ap = xor i64 %i.ao, -1
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.ao, ptr nonnull %i.aq)
          to label %bb.m unwind label %bb.p       ; 2 uses

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 69, ptr nonnull @.str.3)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %.0.copyload.i.i.i56 = load i16, ptr %i.aw, align 1
  %i.ax = zext i16 %.0.copyload.i.i.i56 to i64    ; 2 uses
  %i.ay = xor i64 %i.ax, -1
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %i.ay
  %i.ba = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 %i.ax, ptr nonnull %i.az)
          to label %bb.o unwind label %bb.p       ; 2 uses

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 78, ptr nonnull @.str.4)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit59 unwind label %bb.p

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit59: ; preds = %bb.o
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit60 unwind label %bb.p

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit60: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit59
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  unreachable

bb.p:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit59, %bb.o, %bb.m, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit, %bb.k, %bb.n, %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  unreachable

._crit_edge:                                      ; preds = %bb.ag
  %.pre = load i64, ptr %6, align 8, !tbaa !27    ; 3 uses
  %i.bc = icmp ne i64 %.pre, 0
  call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp ult i64 %.pre, 2
  br i1 %i.bd, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !31
  %i.bg = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !32
  %i.bh = and i64 %i.bg, 65536
  %i.bi = icmp ne i64 %i.bh, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %.pre, ptr noundef %i.bf, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.bi)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #37
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit: ; preds = %bb.j, %._crit_edge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.ai

bb.s:                                             ; preds = %.lr.ph, %bb.ag
  %.sroa.063.075 = phi ptr [ %i.ac, %.lr.ph ], [ %i.cz, %bb.ag ] ; 2 uses
  %i.bl = load ptr, ptr %.sroa.063.075, align 8, !tbaa !33 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = and i8 %i.bn, 8
  %.not73 = icmp eq i8 %i.bo, 0
  br i1 %.not73, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = load i32, ptr %i.af, align 4, !tbaa !35
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq
  %i.bs = load i64, ptr %i.ag, align 8, !tbaa !36 ; 3 uses
  %i.bt = trunc i64 %i.bs to i1
  br i1 %i.bt, label %bb.u, label %bb.v, !prof !38

bb.u:                                             ; preds = %bb.t
  %i.bu = add nsw i64 %i.bs, -1
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !39
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bx = inttoptr i64 %i.bs to ptr
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.0.i.i = phi ptr [ %i.bw, %bb.u ], [ %i.bx, %bb.v ]
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %i.bq
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !42
  invoke void @_ZN6google8protobuf8internal12ExtensionSet26UnsafeShallowSwapExtensionEPNS0_5ArenaEPS2_i(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef %.0.i.i, ptr noundef nonnull %i.by, i32 noundef %i.ca)
          to label %bb.ag unwind label %bb.x

bb.x:                                             ; preds = %bb.af, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, %bb.w
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.y:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = and i8 %i.cd, 8
  %.not.i.i.not = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %8 = load i8, ptr %i.bm, align 1
  %9 = and i8 %8, 16
  %.not.i = icmp eq i8 %9, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !54
  %i.cl = ptrtoint ptr %i.cg to i64
  %i.cm = select i1 %.not.i, i64 0, i64 %i.cl
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 56
  %i.cq = trunc i64 %i.cp to i32
  store i32 %i.cq, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.z
  %i.cr = load i8, ptr %i.ah, align 8, !tbaa !81, !range !84, !alias.scope !85, !noundef !50
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.aa, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.ad

bb.aa:                                            ; preds = %.noexc
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !85
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !3, !noalias !85
  store i32 %i.ct, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.cu = load i8, ptr %i.bm, align 1
  %i.cv = and i8 %i.cu, 16
  %.not.i61 = icmp eq i8 %i.cv, 0
  %i.cw = load ptr, ptr %i.cf, align 8, !nonnull !50
  %.0.i62 = select i1 %.not.i61, ptr null, ptr %i.cw
  invoke void @_ZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %.0.i62)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.ab ], [ %i.cy, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.ah

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.y
  invoke void @_ZNK6google8protobuf10Reflection22UnsafeShallowSwapFieldEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.bl)
          to label %bb.af unwind label %bb.x

bb.af:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  invoke void @_ZNK6google8protobuf10Reflection15NaiveSwapHasBitEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.bl)
          to label %bb.ag unwind label %bb.x

bb.ag:                                            ; preds = %bb.af, %bb.w, %bb.ad
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.063.075, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cz, %i.ae
  br i1 %.not, label %._crit_edge, label %bb.s

bb.ah:                                            ; preds = %bb.ae, %bb.x
  %.pn45 = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %.pn, %bb.ae ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %.pn45

bb.ai:                                            ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK6google8protobuf10Reflection19MutableExtensionSetEPNS0_7MessageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readnone captures(ret: address, provenance) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  ret ptr %i.d
}

declare void @_ZN6google8protobuf8internal12ExtensionSet26UnsafeShallowSwapExtensionEPNS0_5ArenaEPS2_i(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.389, align 1            ; 3 uses
  %5 = alloca %class.anon.389, align 1            ; 3 uses
  %6 = alloca %struct.LocalVarWrapper, align 8    ; 9 uses
  %7 = alloca %struct.MessageWrapper, align 8     ; 11 uses
  %8 = alloca %struct.MessageWrapper, align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 56
  %i.k = trunc i64 %i.j to i32
  %i.l = shl i32 %i.k, 2
  %i.m = add i32 %i.l, %i.b
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store i32 0, ptr %6, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i8 0, ptr %i.s, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %.not = icmp eq i32 %i.p, 0                     ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.v = invoke noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160) %i.u, i32 noundef %i.p)
          to label %bb.c unwind label %bb.d       ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %7, align 8, !tbaa !91
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !93
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.v, ptr %.sroa.511.0..sroa_idx, align 8, !tbaa !33
  invoke void @_ZNK6google8protobuf10Reflection22InternalMoveOneofFieldILb1EZNKS1_14SwapOneofFieldILb1EEEvPNS0_7MessageES5_PKNS0_15OneofDescriptorEE14MessageWrapperZNKS3_ILb1EEEvS5_S5_S8_E15LocalVarWrapperEEvPKNS0_15FieldDescriptorEPT0_PT1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.v, ptr noundef nonnull %7, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.v, %bb.c ], [ null, %bb.a ]  ; 2 uses
  %.not41 = icmp eq i32 %i.r, 0
  br i1 %.not41, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.z = invoke noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160) %i.y, i32 noundef %i.r)
          to label %bb.g unwind label %bb.h       ; 3 uses

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %7, align 8, !tbaa !91
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !93
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.z, ptr %.sroa.56.0..sroa_idx, align 8, !tbaa !33
  store ptr %0, ptr %8, align 8, !tbaa !91
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !93
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.z, ptr %.sroa.53.0..sroa_idx, align 8, !tbaa !33
  invoke void @_ZNK6google8protobuf10Reflection22InternalMoveOneofFieldILb1EZNKS1_14SwapOneofFieldILb1EEEvPNS0_7MessageES5_PKNS0_15OneofDescriptorEE14MessageWrapperS9_EEvPKNS0_15FieldDescriptorEPT0_PT1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.z, ptr noundef nonnull %8, ptr noundef nonnull %7)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %bb.g, %bb.e
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %0, ptr %8, align 8, !tbaa !91
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !93
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev:bb.a
_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE15destructor_implEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK6google8protobuf10Reflection14SwapFieldsImplILb0EEEvPNS0_7MessageES4_RKSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_set", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"struct.std::pair", align 8        ; 7 uses
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.d = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.f = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.g = extractvalue { ptr, ptr } %i.f, 1        ; 2 uses
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %bb.j, label %bb.k, !prof !7

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef %i.d, ptr noundef nonnull %0, ptr noundef nonnull @.str)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.1, i32 noundef 1155, ptr noundef nonnull %i.i) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 41, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi42EEERS2_RAT__Kc.exit unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi42EEERS2_RAT__Kc.exit: ; preds = %bb.d
  %i.j = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi42EEERS2_RAT__Kc.exit
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.n, align 1
  %i.o = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.p = xor i64 %i.o, -1
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.o, ptr nonnull %i.q)
          to label %bb.f unwind label %bb.i       ; 2 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 69, ptr nonnull @.str.3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %.0.copyload.i.i.i51 = load i16, ptr %i.w, align 1
  %i.x = zext i16 %.0.copyload.i.i.i51 to i64     ; 2 uses
  %i.y = xor i64 %i.x, -1
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 %i.x, ptr nonnull %i.z)
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 78, ptr nonnull @.str.4)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit: ; preds = %bb.h
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.i

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  unreachable

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit, %bb.h, %bb.f, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi42EEERS2_RAT__Kc.exit, %bb.d, %bb.g, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  unreachable

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store i64 1, ptr %6, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.ac = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %.not80 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not80, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.s

bb.k:                                             ; preds = %bb.c
  %i.ak = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef %i.g, ptr noundef nonnull %0, ptr noundef nonnull @.str.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.1, i32 noundef 1163, ptr noundef nonnull %i.ak) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 42, ptr nonnull @.str.6)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit unwind label %bb.p

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit: ; preds = %bb.k
  %i.al = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit
  %i.am = extractvalue { ptr, ptr } %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %.0.copyload.i.i.i55 = load i16, ptr %i.ap, align 1
  %i.aq = zext i16 %.0.copyload.i.i.i55 to i64    ; 2 uses
  %i.ar = xor i64 %i.aq, -1
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  %i.at = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.aq, ptr nonnull %i.as)
          to label %bb.m unwind label %bb.p       ; 2 uses

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 69, ptr nonnull @.str.3)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !8  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %.0.copyload.i.i.i59 = load i16, ptr %i.ay, align 1
  %i.az = zext i16 %.0.copyload.i.i.i59 to i64    ; 2 uses
  %i.ba = xor i64 %i.az, -1
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  %i.bc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 %i.az, ptr nonnull %i.bb)
          to label %bb.o unwind label %bb.p       ; 2 uses

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 78, ptr nonnull @.str.4)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit62 unwind label %bb.p

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit62: ; preds = %bb.o
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit63 unwind label %bb.p

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit63: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit62
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  unreachable

bb.p:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi79EEERS2_RAT__Kc.exit62, %bb.o, %bb.m, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit, %bb.k, %bb.n, %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  unreachable

._crit_edge:                                      ; preds = %bb.al
  %.pre = load i64, ptr %6, align 8, !tbaa !27    ; 3 uses
  %i.be = icmp ne i64 %.pre, 0
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp ult i64 %.pre, 2
  br i1 %i.bf, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  %i.bi = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !32
  %i.bj = and i64 %i.bi, 65536
  %i.bk = icmp ne i64 %i.bj, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %.pre, ptr noundef %i.bh, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.bk)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #37
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit: ; preds = %bb.j, %._crit_edge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.an

bb.s:                                             ; preds = %.lr.ph, %bb.al
  %.sroa.069.081 = phi ptr [ %i.ac, %.lr.ph ], [ %i.dp, %bb.al ] ; 2 uses
  %i.bn = load ptr, ptr %.sroa.069.081, align 8, !tbaa !33 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = and i8 %i.bp, 8
  %.not79 = icmp eq i8 %i.bq, 0
  br i1 %.not79, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = load ptr, ptr %i.af, align 8, !tbaa !148 ; 2 uses
  %i.bs = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !149
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef %i.bt)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.by = load i32, ptr %i.ag, align 4, !tbaa !35
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz
  %i.cb = load i64, ptr %i.ah, align 8, !tbaa !36 ; 3 uses
  %i.cc = trunc i64 %i.cb to i1
  br i1 %i.cc, label %bb.w, label %bb.x, !prof !38

bb.w:                                             ; preds = %bb.v
  %i.cd = add nsw i64 %i.cb, -1
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !39
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cg = inttoptr i64 %i.cb to ptr
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.0.i.i = phi ptr [ %i.cf, %bb.w ], [ %i.cg, %bb.x ]
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %i.bz
  %i.ci = load i64, ptr %i.ai, align 8, !tbaa !36 ; 3 uses
  %i.cj = trunc i64 %i.ci to i1
  br i1 %i.cj, label %bb.z, label %bb.aa, !prof !38

bb.z:                                             ; preds = %bb.y
  %i.ck = add nsw i64 %i.ci, -1
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !39
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit66

bb.aa:                                            ; preds = %bb.y
  %i.cn = inttoptr i64 %i.ci to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit66

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit66: ; preds = %bb.aa, %bb.z
  %.0.i.i65 = phi ptr [ %i.cm, %bb.z ], [ %i.cn, %bb.aa ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !42
  invoke void @_ZN6google8protobuf8internal12ExtensionSet13SwapExtensionEPNS0_5ArenaEPKNS0_11MessageLiteEPS2_S4_i(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef %.0.i.i, ptr noundef %i.bx, ptr noundef nonnull %i.ch, ptr noundef %.0.i.i65, i32 noundef %i.cp)
          to label %bb.al unwind label %bb.ac

bb.ab:                                            ; preds = %bb.ak, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ac:                                            ; preds = %bb.t, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit66, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ad:                                            ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = and i8 %i.ct, 8
  %.not.i.i.not = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %8 = load i8, ptr %i.bo, align 1
  %9 = and i8 %8, 16
  %.not.i = icmp eq i8 %9, 0
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !54
  %i.db = ptrtoint ptr %i.cw to i64
  %i.dc = select i1 %.not.i, i64 0, i64 %i.db
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = sdiv exact i64 %i.de, 56
  %i.dg = trunc i64 %i.df to i32
  store i32 %i.dg, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.ae
  %i.dh = load i8, ptr %i.aj, align 8, !tbaa !81, !range !84, !alias.scope !169, !noundef !50
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.af, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.ai

bb.af:                                            ; preds = %.noexc
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !169
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !3, !noalias !169
  store i32 %i.dj, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.dk = load i8, ptr %i.bo, align 1
  %i.dl = and i8 %i.dk, 16
  %.not.i67 = icmp eq i8 %i.dl, 0
  %i.dm = load ptr, ptr %i.cv, align 8, !nonnull !50
  %.0.i68 = select i1 %.not.i67, ptr null, ptr %i.dm
  invoke void @_ZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %.0.i68)
          to label %bb.ai unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.ag ], [ %i.do, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.am

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.ad
  invoke void @_ZNK6google8protobuf10Reflection9SwapFieldEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.bn)
          to label %bb.ak unwind label %bb.ab

bb.ak:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  invoke void @_ZNK6google8protobuf10Reflection15NaiveSwapHasBitEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.bn)
          to label %bb.al unwind label %bb.ab

bb.al:                                            ; preds = %bb.ak, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit66, %bb.ai
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.069.081, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dp, %i.ae
  br i1 %.not, label %._crit_edge, label %bb.s

bb.am:                                            ; preds = %bb.aj, %bb.ac, %bb.ab
  %.pn48 = phi { ptr, i32 } [ %i.cr, %bb.ac ], [ %.pn, %bb.aj ], [ %i.cq, %bb.ab ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %.pn48

bb.an:                                            ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit
  ret void
}

declare void @_ZN6google8protobuf8internal12ExtensionSet13SwapExtensionEPNS0_5ArenaEPKNS0_11MessageLiteEPS2_S4_i(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.389, align 1            ; 3 uses
  %5 = alloca %class.anon.389, align 1            ; 3 uses
  %6 = alloca %struct.LocalVarWrapper.392, align 8 ; 9 uses
  %7 = alloca %struct.MessageWrapper.393, align 8 ; 11 uses
  %8 = alloca %struct.MessageWrapper.393, align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = ptrtoint ptr %3 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 56
  %i.k = trunc i64 %i.j to i32
  %i.l = shl i32 %i.k, 2
  %i.m = add i32 %i.l, %i.b
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store i32 0, ptr %6, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i8 0, ptr %i.s, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %.not = icmp eq i32 %i.p, 0                     ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.v = invoke noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160) %i.u, i32 noundef %i.p)
          to label %bb.c unwind label %bb.d       ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %7, align 8, !tbaa !91
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !93
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.v, ptr %.sroa.511.0..sroa_idx, align 8, !tbaa !33
  invoke void @_ZNK6google8protobuf10Reflection22InternalMoveOneofFieldILb0EZNKS1_14SwapOneofFieldILb0EEEvPNS0_7MessageES5_PKNS0_15OneofDescriptorEE14MessageWrapperZNKS3_ILb0EEEvS5_S5_S8_E15LocalVarWrapperEEvPKNS0_15FieldDescriptorEPT0_PT1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.v, ptr noundef nonnull %7, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.v, %bb.c ], [ null, %bb.a ]  ; 2 uses
  %.not39 = icmp eq i32 %i.r, 0
  br i1 %.not39, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.z = invoke noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160) %i.y, i32 noundef %i.r)
          to label %bb.g unwind label %bb.h       ; 3 uses

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %7, align 8, !tbaa !91
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !93
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.z, ptr %.sroa.56.0..sroa_idx, align 8, !tbaa !33
  store ptr %0, ptr %8, align 8, !tbaa !91
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !93
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.z, ptr %.sroa.53.0..sroa_idx, align 8, !tbaa !33
  invoke void @_ZNK6google8protobuf10Reflection22InternalMoveOneofFieldILb0EZNKS1_14SwapOneofFieldILb0EEEvPNS0_7MessageES5_PKNS0_15OneofDescriptorEE14MessageWrapperS9_EEvPKNS0_15FieldDescriptorEPT0_PT1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.z, ptr noundef nonnull %8, ptr noundef nonnull %7)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.i:                                             ; preds = %bb.e
  invoke void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %3)
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %bb.g, %bb.i
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %0, ptr %8, align 8, !tbaa !91
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !93
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !33
  invoke void @_ZNK6google8protobuf10Reflection22InternalMoveOneofFieldILb0EZNKS1_14SwapOneofFieldILb0EEEvPNS0_7MessageES5_PKNS0_15OneofDescriptorEE15LocalVarWrapperZNKS3_ILb0EEEvS5_S5_S8_E14MessageWrapperEEvPKNS0_15FieldDescriptorEPT0_PT1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %.0, ptr noundef nonnull %6, ptr noundef nonnull %8)
          to label %bb.m unwind label %bb.d

bb.l:                                             ; preds = %bb.j
  invoke void @_ZNK6google8protobuf10Reflection10ClearOneofEPNS0_7MessageEPKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.ab = load i8, ptr %i.s, align 8, !tbaa !89
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJiljmfdbPN6google8protobuf7MessageENS4_8internal14ArenaStringPtrENS7_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEvEUlOT_E_JRSt7variantIJiljmfdbS6_S8_S9_SD_SJ_EEEE9_S_vtableE, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !94
  invoke void %i.ae(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEEN15LocalVarWrapperD2Ev.exit unwind label %bb.n, !inline_history !95

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
end_hunk_1
