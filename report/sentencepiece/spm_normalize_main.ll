Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/spm_normalize_main?download=true
inline.NumInlined: 510
inline.NumDeleted: 246
begin_hunk_0_@_ZN4absl12lts_2026052614flags_internal7FlagOpsIbEEPvNS1_6FlagOpEPKvS3_S3_:bb.a
  store i8 0, ptr %i.ae, align 1, !tbaa !15
  %i.ag = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2026052614flags_internal7FlagOpsIbEEPvNS2_6FlagOpEPKvS4_S4_E12AlignedSpaceEE8allocateERS9_m.exit

bb.r:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2026052614flags_internal7FlagOpsIbEEPvNS2_6FlagOpEPKvS4_S4_E12AlignedSpaceEE8allocateERS9_m.exit

bb.s:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2026052614flags_internal7FlagOpsIbEEPvNS2_6FlagOpEPKvS4_S4_E12AlignedSpaceEE8allocateERS9_m.exit

_ZNSt16allocator_traitsISaIZN4absl12lts_2026052614flags_internal7FlagOpsIbEEPvNS2_6FlagOpEPKvS4_S4_E12AlignedSpaceEE8allocateERS9_m.exit: ; preds = %bb.b, %bb.a, %bb.s, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.1 = phi ptr [ null, %bb.s ], [ inttoptr (i64 1 to ptr), %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ inttoptr (i64 88 to ptr), %bb.r ], [ @_ZN4absl12lts_2026052613base_internal11FastTypeTagIbE9kDummyVarE, %bb.f ], [ @_ZTIb, %bb.g ], [ %.0, %bb.j ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.b, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN44AbslFlagDefaultGenFornormalization_rule_name3GenEPv(ptr noundef %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN44AbslFlagDefaultGenFornormalization_rule_nameD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN43AbslFlagDefaultGenFornormalization_rule_tsv3GenEPv(ptr noundef %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN43AbslFlagDefaultGenFornormalization_rule_tsvD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN26AbslFlagDefaultGenForinput3GenEPv(ptr noundef %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN26AbslFlagDefaultGenForinputD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN27AbslFlagDefaultGenForoutput3GenEPv(ptr noundef %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN27AbslFlagDefaultGenForoutputD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %"class.std::vector", align 8       ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.sentencepiece::NormalizerSpec", align 8 ; 21 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.sentencepiece::ModelProto", align 8 ; 6 uses
  %9 = alloca %"class.sentencepiece::SentencePieceProcessor", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20260526::log_internal::LogMessageQuietlyFatal", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %16 = alloca %"class.absl::lts_20260526::log_internal::LogMessageQuietlyFatal", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %20 = alloca %"class.absl::lts_20260526::log_internal::LogMessageQuietlyFatal", align 8 ; 6 uses
  %21 = alloca %"class.absl::lts_20260526::log_internal::LogMessageFatal", align 8 ; 7 uses
  %22 = alloca %"class.std::map", align 8         ; 12 uses
  %23 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %24 = alloca %"class.absl::lts_20260526::log_internal::LogMessageQuietlyFatal", align 8 ; 6 uses
  %25 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.absl::lts_20260526::log_internal::LogMessageQuietlyFatal", align 8 ; 6 uses
  %28 = alloca %"class.sentencepiece::normalizer::Normalizer", align 8 ; 7 uses
  %29 = alloca %"class.std::unique_ptr.59", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %32 = alloca %"class.absl::lts_20260526::log_internal::LogMessageQuietlyFatal", align 8 ; 6 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::unique_ptr.67", align 8 ; 8 uses
  %36 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %37 = alloca %"class.absl::lts_20260526::log_internal::LogMessageQuietlyFatal", align 8 ; 6 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i32 %0, ptr %i.b, align 4, !tbaa !49
  store ptr %1, ptr %i.c, align 8, !tbaa !52
  %i.d = load ptr, ptr %1, align 8, !tbaa !19
  invoke void @_ZN13sentencepiece21ParseCommandLineFlagsEPKcPiPPPcb(ptr noundef %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNK4absl12lts_2026052614flags_internal4FlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(128) @_Z11FLAGS_inputB5cxx11)
          to label %_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit unwind label %bb.d

_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  %i.k = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.k)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit
  %i.l = load i64, ptr %i.i, align 8, !tbaa !15
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.g, label %.preheader, label %bb.o

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load i32, ptr %i.b, align 4, !tbaa !49
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.d:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.fb

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 4 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !16
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.z, ptr %i.a, align 8, !tbaa !18
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc113 unwind label %.loopexit.split-lp ; 2 uses

.noexc113:                                        ; preds = %.noexc.i
  store ptr %i.ab, ptr %4, align 8, !tbaa !14
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.ac, ptr %i.p, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc113, %bb.g
  %i.ad = phi ptr [ %i.ab, %.noexc113 ], [ %i.p, %bb.g ] ; 2 uses
  switch i64 %i.z, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !15
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !15
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %i.x, i64 %i.z, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  store i64 %i.af, ptr %i.q, align 8, !tbaa !17
  %i.ag = load ptr, ptr %4, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !24  ; 7 uses
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !25
  %.not.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !16
  %i.al = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.p
  br i1 %i.am, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr %i.q, align 8, !tbaa !17  ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !14
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !15
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !15
  %.pre341.a = load i64, ptr %i.q, align 8, !tbaa !17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = phi i64 [ %.pre341.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.an, %bb.l ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !17
  store ptr %i.p, ptr %4, align 8, !tbaa !14
  store i64 0, ptr %i.q, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.at, ptr %i.r, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.m:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.n

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.m
  %.pre342 = load ptr, ptr %4, align 8, !tbaa !14 ; 2 uses
  %i.au = icmp eq ptr %.pre342, %i.p
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.av = load i64, ptr %i.p, align 8, !tbaa !15
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %.pre342, i64 noundef %i.aw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !49
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.e, label %.loopexit, !llvm.loop !45

.loopexit.split-lp:                               ; preds = %.noexc.i, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.p
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.n
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !15
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.n, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  %.pn109 = phi { ptr, i32 } [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ba, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.fb

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNK4absl12lts_2026052614flags_internal4FlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) @_Z11FLAGS_inputB5cxx11)
          to label %_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit122 unwind label %bb.s

_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit122: ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !24 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !25
  %.not.i.i123 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i.i123, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit122
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !16
  %i.bk = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !17 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit127.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124: ; preds = %bb.p
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !14
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !15
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit127.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit127.thread: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124
  %i.bs = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124 ], [ %i.bo, %bb.q ]
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !17
  store ptr %i.bl, ptr %5, align 8, !tbaa !14
  store i64 0, ptr %i.bt, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %i.bv, ptr %i.bf, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.r:                                             ; preds = %_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit122
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit127 unwind label %bb.t

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit127: ; preds = %bb.r
  %.pre340 = load ptr, ptr %5, align 8, !tbaa !14 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %.pre340, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit127
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %.pre340, i64 noundef %i.bz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit127, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit127.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.loopexit

bb.s:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.t:                                             ; preds = %bb.r
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.t
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !15
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.s ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %i.cb, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.fb

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN13sentencepiece14NormalizerSpecC2EPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef null)
          to label %_ZN13sentencepiece14NormalizerSpecC2Ev.exit unwind label %bb.ab

_ZN13sentencepiece14NormalizerSpecC2Ev.exit:      ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNK4absl12lts_2026052614flags_internal4FlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(128) @_Z11FLAGS_modelB5cxx11)
          to label %_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit136 unwind label %bb.ac

_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit136: ; preds = %_ZN13sentencepiece14NormalizerSpecC2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !17 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  %i.ck = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i138: ; preds = %_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit136
  %i.cn = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cn)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit136
  %i.co = load i64, ptr %i.cl, align 8, !tbaa !15
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.cj, label %bb.aq, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN13sentencepiece10ModelProtoC2EPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef null)
          to label %_ZN13sentencepiece10ModelProtoC2Ev.exit unwind label %bb.ad

_ZN13sentencepiece10ModelProtoC2Ev.exit:          ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN13sentencepiece22SentencePieceProcessorC1Ev(ptr noundef nonnull align 8 dereferenceable(104) %9)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %_ZN13sentencepiece10ModelProtoC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZNK4absl12lts_2026052614flags_internal4FlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) @_Z11FLAGS_modelB5cxx11)
          to label %_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit142 unwind label %bb.af

_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit142: ; preds = %bb.v
  %i.cq = load ptr, ptr %11, align 8, !tbaa !14
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !17
  invoke void @_ZN13sentencepiece22SentencePieceProcessor4LoadESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(104) %9, i64 %i.cs, ptr %i.cq)
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %_ZN4absl12lts_202605267GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_14flags_internal4FlagIS8_EE.exit142
  %i.ct = load i64, ptr %10, align 8, !tbaa !54   ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 1                    ; 2 uses
  br i1 %i.cu, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %bb.x, !prof !27

bb.x:                                             ; preds = %bb.w
  %i.cv = call noundef ptr @_ZN4absl12lts_2026052615status_internal19MakeCheckFailStringEPKNS0_6StatusEPKc(ptr noundef nonnull %10, ptr noundef nonnull @.str.24) #24 ; 2 uses
  %i.cw = trunc i64 %i.ct to i1
  br i1 %i.cw, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = inttoptr i64 %i.ct to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cx)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #25
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %bb.w, %bb.x, %bb.y
  %i.da = phi ptr [ %i.cv, %bb.y ], [ %i.cv, %bb.x ], [ @.str.23, %bb.w ]
  %i.db = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !15
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br i1 %i.cu, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.dg = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK13sentencepiece22SentencePieceProcessor11model_protoEv(ptr noundef nonnull align 8 dereferenceable(104) %9)
          to label %bb.al unwind label %bb.am

bb.ab:                                            ; preds = %.loopexit
  %i.dh = landingpad { ptr, i32 }
          cleanup
end_hunk_0
