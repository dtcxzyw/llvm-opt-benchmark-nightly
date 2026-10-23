Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/parse?download=true
inline.NumInlined: 1795
inline.NumDeleted: 747
begin_hunk_0_@_ZN4absl12lts_2026052614flags_internal20ParseCommandLineImplEiPPcNS1_16UsageFlagsActionENS1_15OnUndefinedFlagERSo:bb.a
_ZSt8_DestroyIN4absl12lts_2026052616UnrecognizedFlagEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.aa, %i.t
  br i1 %.not.i.i.i11, label %_ZSt8_DestroyIPN4absl12lts_2026052616UnrecognizedFlagES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4absl12lts_2026052616UnrecognizedFlagES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4absl12lts_2026052616UnrecognizedFlagEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPN4absl12lts_2026052616UnrecognizedFlagES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4absl12lts_2026052616UnrecognizedFlagES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052616UnrecognizedFlagES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.l
  %i.ab = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4absl12lts_2026052616UnrecognizedFlagES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.l ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4absl12lts_2026052616UnrecognizedFlagESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052616UnrecognizedFlagES2_EvT_S4_RSaIT0_E.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !68
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #25
  br label %_ZNSt6vectorIN4absl12lts_2026052616UnrecognizedFlagESaIS2_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052616UnrecognizedFlagESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052616UnrecognizedFlagES2_EvT_S4_RSaIT0_E.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4absl12lts_2026052614flags_internal24ParseAbseilFlagsOnlyImplEiPPcRSt6vectorIS2_SaIS2_EERS4_INS0_16UnrecognizedFlagESaIS8_EENS1_16UsageFlagsActionE(i32 noundef %0, ptr noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 8 uses
  %6 = alloca %"class.std::vector.15", align 8    ; 11 uses
  %7 = alloca %"class.std::vector.15", align 8    ; 7 uses
  %8 = alloca %"class.std::vector.15", align 8    ; 10 uses
  %9 = alloca %"class.std::vector.15", align 8    ; 7 uses
  %10 = alloca %"class.std::vector.15", align 8   ; 10 uses
  %11 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %18 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %19 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %22 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %23 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %26 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %27 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %28 = alloca %"class.std::tuple", align 8       ; 5 uses
  %29 = alloca %"class.std::tuple.48", align 8    ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %31 = alloca %"class.std::basic_ifstream", align 8 ; 37 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %34 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::basic_string_view", align 8 ; 7 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %39 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %40 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %41 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %42 = alloca %"class.absl::lts_20260526::flags_internal::(anonymous namespace)::ArgsList", align 8 ; 15 uses
  %43 = alloca %"class.std::vector.15", align 8   ; 11 uses
  %44 = alloca %"class.std::vector.15", align 8   ; 10 uses
  %45 = alloca %"class.std::vector.15", align 8   ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %47 = alloca %"class.std::allocator", align 1   ; 4 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.std::allocator", align 1   ; 4 uses
  %50 = alloca %"class.std::vector.15", align 8   ; 13 uses
  %51 = alloca %"class.std::vector.32", align 8   ; 17 uses
  %52 = alloca %"class.absl::lts_20260526::flags_internal::(anonymous namespace)::ArgsList", align 8 ; 8 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %55 = alloca %"class.std::allocator", align 1   ; 4 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %57 = alloca %"class.std::allocator", align 1   ; 4 uses
  %58 = alloca %"class.std::basic_string_view", align 8 ; 10 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %60 = alloca %"class.std::allocator", align 1   ; 4 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %62 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %64 = alloca %"class.std::vector.27", align 8   ; 15 uses
  %i.d = icmp slt i32 %0, 1
  br i1 %i.d, label %bb.b, label %bb.k, !prof !32

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %47)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %49)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %48, align 8, !tbaa !28    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8, !tbaa !29
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  %i.k = load atomic ptr, ptr @_ZN4absl12lts_2026052616raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.k(i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 754, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit unwind label %bb.i, !inline_history !1

_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

bb.g:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

bb.h:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %48, align 8, !tbaa !28    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.h
  %i.r = load i64, ptr %i.p, align 8, !tbaa !29
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134, %bb.g
  %.pn117 = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %i.n, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %.pn119 = phi { ptr, i32 } [ %i.t, %bb.i ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ] ; 2 uses
  %i.u = load ptr, ptr %46, align 8, !tbaa !28    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.j
  %i.x = load i64, ptr %i.v, align 8, !tbaa !29
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.f
  %.pn119.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %.pn119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %.pn119, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  br label %bb.im

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  invoke void @_ZN4absl12lts_2026052614flags_internal16FinalizeRegistryEv()
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i unwind label %bb.ab

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27
  %i.z = zext nneg i32 %0 to i64                  ; 6 uses
  %.idx.i = shl nuw nsw i64 %i.z, 5
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #24
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i unwind label %.thread ; 5 uses

.thread:                                          ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.idx5.i = shl nuw nsw i64 %i.z, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.idx5.i
  store ptr %i.aa, ptr %52, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %52, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !31
  %i.af = invoke noundef ptr @_ZSt16__do_uninit_copyIPPcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_T_SA_S9_(ptr noundef nonnull %1, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.aa)
          to label %_ZNKSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.l ; 2 uses

bb.l:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %i.z, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %.idx) #25
  br label %.body

_ZNKSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %52, i64 24
  store i64 0, ptr %i.ai, align 8, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  %i.al = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24
          to label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListD2Ev.exit unwind label %bb.p ; 6 uses

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListD2Ev.exit: ; preds = %_ZNKSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.aa, ptr %i.al, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.af, ptr %i.am, align 8, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.ad, ptr %i.an, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 0, ptr %i.ao, align 8, !tbaa !70
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  store ptr %i.al, ptr %51, align 8, !tbaa !73
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !74
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #27
  invoke void @_ZN4absl12lts_2026052614flags_internal21ProgramInvocationNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %53)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListD2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 7
  %.pre = load ptr, ptr %53, align 8, !tbaa !28   ; 4 uses
  br i1 %i.as, label %bb.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.n:                                             ; preds = %bb.m
  %i.at = load i32, ptr %.pre, align 1
  %i.au = xor i32 %i.at, 1313558101
  %i.av = getelementptr i8, ptr %.pre, i64 3
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = xor i32 %i.aw, 1314344782
  %i.ay = or i32 %i.au, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.m, %bb.n
  %i.bc = phi i1 [ false, %bb.m ], [ %i.bb, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.be = icmp eq ptr %.pre, %i.bd
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i144: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bf = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.bf)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bg = load i64, ptr %i.bd, align 8, !tbaa !29
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  br i1 %i.bc, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.bi = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.bj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bi) #27
  invoke void @_ZN4absl12lts_2026052614flags_internal24SetProgramInvocationNameESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.bj, ptr nonnull %i.bi)
          to label %bb.r unwind label %bb.ab

bb.p:                                             ; preds = %_ZNKSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %52) #27
  br label %.body

.body:                                            ; preds = %.thread, %bb.l, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.p ], [ %i.ab, %.thread ], [ %i.ag, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  br label %_ZN4absl12lts_202605269MutexLockD2Ev.exit330

bb.q:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListD2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  br label %_ZN4absl12lts_202605269MutexLockD2Ev.exit330

bb.r:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !119 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !64
  %.not.i = icmp eq ptr %i.bn, %i.bp
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !119
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

bb.t:                                             ; preds = %bb.r
  %i.bs = load ptr, ptr %2, align 8, !tbaa !63    ; 4 uses
  %i.bt = ptrtoint ptr %i.bn to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 6 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.u, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #26
          to label %.noexc146 unwind label %bb.ab

.noexc146:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.bx = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 1152921504606846975)
  %i.cb = select i1 %i.bz, i64 1152921504606846975, i64 %i.ca ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #24
          to label %.noexc147 unwind label %bb.ab ; 4 uses

.noexc147:                                        ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !35
  %i.cg = icmp sgt i64 %i.bv, 0
  br i1 %i.cg, label %bb.v, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.v:                                             ; preds = %.noexc147
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.v, %.noexc147
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #25
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.cd, ptr %2, align 8, !tbaa !63
  store ptr %i.ch, ptr %i.bm, align 8, !tbaa !119
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ci, ptr %i.bo, align 8, !tbaa !64
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit:     ; preds = %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.s
  %i.cj = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119SpecifiedFlagsMutexEvE5mutex acquire, align 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.x, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119SpecifiedFlagsMutexEv.exit, !prof !37

bb.x:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  %i.cl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119SpecifiedFlagsMutexEvE5mutex) #27
  %.not.i148 = icmp eq i32 %i.cl, 0
  br i1 %.not.i148, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119SpecifiedFlagsMutexEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119SpecifiedFlagsMutexEvE5mutex, align 8, !tbaa !39
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119SpecifiedFlagsMutexEvE5mutex) #27
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119SpecifiedFlagsMutexEv.exit

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119SpecifiedFlagsMutexEv.exit: ; preds = %bb.y, %bb.x, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  invoke void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119SpecifiedFlagsMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockC2ERNS0_5MutexE.exit unwind label %bb.ab

_ZN4absl12lts_202605269MutexLockC2ERNS0_5MutexE.exit: ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119SpecifiedFlagsMutexEv.exit
  %i.cm = load ptr, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_115specified_flagsE, align 8, !tbaa !41 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_ZN4absl12lts_202605269MutexLockC2ERNS0_5MutexE.exit
  %i.co = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.aa unwind label %.loopexit.split-lp408.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  store ptr %i.co, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_115specified_flagsE, align 8, !tbaa !41
  br label %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE5clearEv.exit

bb.ab:                                            ; preds = %bb.k, %bb.o, %bb.u, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119SpecifiedFlagsMutexEv.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202605269MutexLockD2Ev.exit330

bb.ac:                                            ; preds = %_ZN4absl12lts_202605269MutexLockC2ERNS0_5MutexE.exit
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !77 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !78
  %.not.i.i150 = icmp eq ptr %i.cs, %i.cq
  br i1 %.not.i.i150, label %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPPKN4absl12lts_2026052615CommandLineFlagES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPKN4absl12lts_2026052615CommandLineFlagES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.ac
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !78
  br label %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE5clearEv.exit

_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPPKN4absl12lts_2026052615CommandLineFlagES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.ac, %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 10 uses
  %i.da = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 3 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %42, i64 24 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %31, i64 256 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %31, i64 472
  %i.dp = getelementptr inbounds nuw i8, ptr %31, i64 480
  %i.dq = getelementptr inbounds nuw i8, ptr %31, i64 481
  %i.dr = getelementptr inbounds nuw i8, ptr %31, i64 488
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 8), align 8 ; 4 uses
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 16), align 8 ; 3 uses
  %i.du = getelementptr i8, ptr %i.ds, i64 -24    ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  %i.dx = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8 ; 2 uses
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 24), align 8
  %i.dz = getelementptr i8, ptr %i.dx, i64 -24
  %i.ea = getelementptr inbounds nuw i8, ptr %31, i64 120
  %i.eb = getelementptr inbounds nuw i8, ptr %31, i64 72
  %i.ec = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %45, i64 16
  %.sroa.10.24..sroa.6349.16..sroa_idx = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %28, i64 24
  %.sroa.6.0..sroa_idx.i214 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.es = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.2.0..sroa_idx.i65.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.sroa.2.0..sroa_idx.i56.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.2.0..sroa_idx.i47.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
end_hunk_0
