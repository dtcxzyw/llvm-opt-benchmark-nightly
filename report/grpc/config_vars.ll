Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/config_vars?download=true
inline.NumInlined: 833
inline.NumDeleted: 396
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.83 = private unnamed_addr constant [19 x i8] c", abort_on_leaks: \00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c", system_ssl_roots_dir: \00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c", default_ssl_roots_file_path: \00", align 1
@.str.86 = private unnamed_addr constant [44 x i8] c", use_system_roots_over_language_callback: \00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c", not_use_system_ssl_roots: \00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c", ssl_cipher_suites: \00", align 1
@.str.89 = private unnamed_addr constant [40 x i8] c", cpp_experimental_disable_reflection: \00", align 1
@.str.90 = private unnamed_addr constant [32 x i8] c", channelz_max_orphaned_nodes: \00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c", channelz_call_tracer: \00", align 1
@.str.92 = private unnamed_addr constant [40 x i8] c", experimental_target_memory_pressure: \00", align 1
@.str.93 = private unnamed_addr constant [43 x i8] c", experimental_memory_pressure_threshold: \00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c", chaotic_good_metrics_update_interval_ms: \00", align 1
@_ZN4absl12lts_2025051213base_internal11FastTypeTagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE9kDummyVarE = linkonce_odr constant i8 0, comdat, align 1
@_ZTISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE, i32 0, i32 1, ptr @_ZTISt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE, i64 0 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE = linkonce_odr constant [71 x i8] c"St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE\00", comdat, align 1
@_ZTISt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE = linkonce_odr constant [78 x i8] c"St12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE\00", comdat, align 1
@_ZN4absl12lts_2025051213base_internal11FastTypeTagISt8optionalIiEE9kDummyVarE = linkonce_odr constant i8 0, comdat, align 1
@_ZTISt8optionalIiE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSSt8optionalIiE, i32 0, i32 2, ptr @_ZTISt14_Optional_baseIiLb1ELb1EE, i64 0, ptr @_ZTISt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIiEE, i64 0 }, comdat, align 8
@_ZTSSt8optionalIiE = linkonce_odr constant [15 x i8] c"St8optionalIiE\00", comdat, align 1
@_ZTISt14_Optional_baseIiLb1ELb1EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt14_Optional_baseIiLb1ELb1EE, ptr @_ZTISt19_Optional_base_implIiSt14_Optional_baseIiLb1ELb1EEE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt14_Optional_baseIiLb1ELb1EE = linkonce_odr constant [30 x i8] c"St14_Optional_baseIiLb1ELb1EE\00", comdat, align 1
@_ZTISt19_Optional_base_implIiSt14_Optional_baseIiLb1ELb1EEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt19_Optional_base_implIiSt14_Optional_baseIiLb1ELb1EEE }, comdat, align 8
@_ZTSSt19_Optional_base_implIiSt14_Optional_baseIiLb1ELb1EEE = linkonce_odr constant [56 x i8] c"St19_Optional_base_implIiSt14_Optional_baseIiLb1ELb1EEE\00", comdat, align 1
@_ZTISt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIiEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIiEE }, comdat, align 8
@_ZTSSt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIiEE = linkonce_odr constant [54 x i8] c"St17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIiEE\00", comdat, align 1
@_ZN4absl12lts_2025051213base_internal11FastTypeTagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9kDummyVarE = linkonce_odr constant i8 0, comdat, align 1
@_ZTISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE, i32 0, i32 2, ptr @_ZTISt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE, i64 0, ptr @_ZTISt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 0 }, comdat, align 8
@_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE = linkonce_odr constant [66 x i8] c"St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE\00", comdat, align 1
@_ZTISt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE, ptr @_ZTISt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE }, comdat, align 8
@_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE = linkonce_odr constant [81 x i8] c"St14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE\00", comdat, align 1
@_ZTISt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE }, comdat, align 8
@_ZTSSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE = linkonce_odr constant [109 x i8] c"St19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE\00", comdat, align 1
@_ZTISt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE }, comdat, align 8
@_ZTSSt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr constant [105 x i8] c"St17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZN4absl12lts_2025051213base_internal11FastTypeTagISt8optionalIbEE9kDummyVarE = linkonce_odr constant i8 0, comdat, align 1
@_ZTISt8optionalIbE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSSt8optionalIbE, i32 0, i32 2, ptr @_ZTISt14_Optional_baseIbLb1ELb1EE, i64 0, ptr @_ZTISt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIbEE, i64 0 }, comdat, align 8
@_ZTSSt8optionalIbE = linkonce_odr constant [15 x i8] c"St8optionalIbE\00", comdat, align 1
@_ZTISt14_Optional_baseIbLb1ELb1EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt14_Optional_baseIbLb1ELb1EE, ptr @_ZTISt19_Optional_base_implIbSt14_Optional_baseIbLb1ELb1EEE }, comdat, align 8
@_ZTSSt14_Optional_baseIbLb1ELb1EE = linkonce_odr constant [30 x i8] c"St14_Optional_baseIbLb1ELb1EE\00", comdat, align 1
@_ZTISt19_Optional_base_implIbSt14_Optional_baseIbLb1ELb1EEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt19_Optional_base_implIbSt14_Optional_baseIbLb1ELb1EEE }, comdat, align 8
@_ZTSSt19_Optional_base_implIbSt14_Optional_baseIbLb1ELb1EEE = linkonce_odr constant [56 x i8] c"St19_Optional_base_implIbSt14_Optional_baseIbLb1ELb1EEE\00", comdat, align 1
@_ZTISt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIbEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIbEE }, comdat, align 8
@_ZTSSt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIbEE = linkonce_odr constant [54 x i8] c"St17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIbEE\00", comdat, align 1
@_ZN4absl12lts_2025051213base_internal11FastTypeTagISt8optionalIdEE9kDummyVarE = linkonce_odr constant i8 0, comdat, align 1
@_ZTISt8optionalIdE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSSt8optionalIdE, i32 0, i32 2, ptr @_ZTISt14_Optional_baseIdLb1ELb1EE, i64 0, ptr @_ZTISt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIdEE, i64 0 }, comdat, align 8
@_ZTSSt8optionalIdE = linkonce_odr constant [15 x i8] c"St8optionalIdE\00", comdat, align 1
@_ZTISt14_Optional_baseIdLb1ELb1EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt14_Optional_baseIdLb1ELb1EE, ptr @_ZTISt19_Optional_base_implIdSt14_Optional_baseIdLb1ELb1EEE }, comdat, align 8
@_ZTSSt14_Optional_baseIdLb1ELb1EE = linkonce_odr constant [30 x i8] c"St14_Optional_baseIdLb1ELb1EE\00", comdat, align 1
@_ZTISt19_Optional_base_implIdSt14_Optional_baseIdLb1ELb1EEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt19_Optional_base_implIdSt14_Optional_baseIdLb1ELb1EEE }, comdat, align 8
@_ZTSSt19_Optional_base_implIdSt14_Optional_baseIdLb1ELb1EEE = linkonce_odr constant [56 x i8] c"St19_Optional_base_implIdSt14_Optional_baseIdLb1ELb1EEE\00", comdat, align 1
@_ZTISt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIdEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIdEE }, comdat, align 8
@_ZTSSt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIdEE = linkonce_odr constant [54 x i8] c"St17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIdEE\00", comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_config_vars.cc, ptr null }]

@_ZN9grpc_core10ConfigVarsC1ERKNS0_9OverridesE = unnamed_addr alias void (ptr, ptr), ptr @_ZN9grpc_core10ConfigVarsC2ERKNS0_9OverridesE

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN4absl12lts_2025051214flags_internal7FlagOpsISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEPvNS1_6FlagOpEPKvSC_SC_(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 16      ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  switch i32 %0, label %bb.ae [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEEPvNS2_6FlagOpEPKvSD_SD_E12AlignedSpaceEE8allocateERSI_m.exit
    i32 5, label %bb.l
    i32 6, label %bb.m
    i32 7, label %bb.n
    i32 8, label %bb.w
    i32 9, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEEPvNS2_6FlagOpEPKvSD_SD_E12AlignedSpaceEE8allocateERSI_m.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !8      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.c ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !18
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.c
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.c ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 24) #17
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEEPvNS2_6FlagOpEPKvSD_SD_E12AlignedSpaceEE8allocateERSI_m.exit

bb.f:                                             ; preds = %bb.a
  %i.q = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEEPvNS2_6FlagOpEPKvSD_SD_E12AlignedSpaceEE8allocateERSI_m.exit

bb.g:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12   ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp ugt i64 %i.w, 9223372036854775776
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !22

.noexc.i.i:                                       ; preds = %bb.h
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #16
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.g
  %i.z = phi ptr [ null, %bb.g ], [ %i.y, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !21
  %i.ad = load ptr, ptr %1, align 8, !tbaa !23
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.af = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ad, ptr %i.ae, ptr noundef %i.z)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !8     ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i24, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #17
  br label %common.resume

common.resume:                                    ; preds = %bb.s, %bb.q, %bb.r, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.ag, %bb.j ], [ %i.ag, %bb.k ], [ %i.az, %bb.r ], [ %i.bb, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %bb.i
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !12
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEEPvNS2_6FlagOpEPKvSD_SD_E12AlignedSpaceEE8allocateERSI_m.exit

bb.l:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEEPvNS2_6FlagOpEPKvSD_SD_E12AlignedSpaceEE8allocateERSI_m.exit

bb.m:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEEPvNS2_6FlagOpEPKvSD_SD_E12AlignedSpaceEE8allocateERSI_m.exit

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12 ; 3 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !8     ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 4 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = icmp ugt i64 %i.ar, 9223372036854775776
  br i1 %i.as, label %.noexc.i.i29, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i26, !prof !22

.noexc.i.i29:                                     ; preds = %bb.o
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i26: ; preds = %bb.o
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #16
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i26, %bb.n
  %i.au = phi ptr [ null, %bb.n ], [ %i.at, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i26 ] ; 5 uses
  store ptr %i.au, ptr %4, align 16, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.aw, ptr %i.ax, align 16, !tbaa !21
  %i.ay = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ao, ptr %i.an, ptr noundef %i.au)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit30 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i27, label %common.resume, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ar) #17
  br label %common.resume

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit30: ; preds = %bb.p
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !12
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !25
  %i.ba = invoke noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal13AbslParseFlagESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINSt7__cxx1112basic_stringIcS4_SaIcEEESaISA_EEPSA_(i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %4, ptr noundef %3)
          to label %_ZN4absl12lts_202505129ParseFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEbSt17basic_string_viewIcS6_EPT_PS8_.exit unwind label %bb.s

_ZN4absl12lts_202505129ParseFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEbSt17basic_string_viewIcS6_EPT_PS8_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit30
  br i1 %i.ba, label %bb.t, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

bb.s:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit30
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume

bb.t:                                             ; preds = %_ZN4absl12lts_202505129ParseFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEbSt17basic_string_viewIcS6_EPT_PS8_.exit
  %i.bc = load ptr, ptr %2, align 8, !tbaa !8     ; 5 uses
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !21
  %i.bg = load <2 x ptr>, ptr %4, align 16, !tbaa !23
  store <2 x ptr> %i.bg, ptr %2, align 8, !tbaa !23
  %i.bh = load ptr, ptr %i.ax, align 16, !tbaa !21
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !21
  %.not4.i.i.i.i.i = icmp eq ptr %i.bc, %i.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.t, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.bc, %bb.t ] ; 3 uses
  %i.bi = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !18
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bn, %i.bd
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.t
  %.not.i.i1.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.bo = ptrtoint ptr %i.bf to i64
  %i.bp = ptrtoint ptr %i.bc to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bq) #17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %bb.u, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %_ZN4absl12lts_202505129ParseFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEbSt17basic_string_viewIcS6_EPT_PS8_.exit
  %.0 = phi ptr [ null, %_ZN4absl12lts_202505129ParseFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEbSt17basic_string_viewIcS6_EPT_PS8_.exit ], [ %2, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i ], [ %2, %bb.u ]
  %i.br = load ptr, ptr %4, align 16, !tbaa !8    ; 3 uses
  %i.bs = load ptr, ptr %i.av, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i31 = icmp eq ptr %i.br, %i.bs
  br i1 %.not4.i.i.i31, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35
  %.05.i.i.i33 = phi ptr [ %i.by, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35 ], [ %i.br, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.bt = load ptr, ptr %.05.i.i.i33, align 8, !tbaa !13 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i33, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34: ; preds = %.lr.ph.i.i.i32
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !18
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35: ; preds = %.lr.ph.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i33, i64 32 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.by, %i.bs
  br i1 %.not.i.i.i36, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i37, label %.lr.ph.i.i.i32, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i37: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i35
  %.pr.i38 = load ptr, ptr %4, align 16, !tbaa !8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i37, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.bz = phi ptr [ %.pr.i38, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i37 ], [ %i.br, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i40 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i1.i40, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit43, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39
  %i.ca = load ptr, ptr %i.ax, align 16, !tbaa !21
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit43

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit43: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i39, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEEPvNS2_6FlagOpEPKvSD_SD_E12AlignedSpaceEE8allocateERSI_m.exit

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN4absl12lts_2025051214flags_internal15AbslUnparseFlagERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.ce = load ptr, ptr %2, align 8, !tbaa !13    ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  %i.ch = load ptr, ptr %5, align 8, !tbaa !13    ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci                ; 2 uses
  br i1 %i.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.w
  br i1 %i.cj, label %bb.x, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.w
  br i1 %i.cj, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !26 ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cm)
  %.not21.i = icmp eq ptr %5, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.y, !prof !22

bb.y:                                             ; preds = %bb.x
  switch i64 %i.cl, label %bb.aa [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.cn = load i8, ptr %i.ch, align 1, !tbaa !18
  store i8 %i.cn, ptr %i.ce, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.ch, i64 %i.cl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aa, %bb.z, %bb.y
  %i.co = load i64, ptr %i.ck, align 8, !tbaa !26 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !26
  %i.cq = load ptr, ptr %2, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.co
  store i8 0, ptr %i.cr, align 1, !tbaa !18
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ch, ptr %2, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cu = load <2 x i64>, ptr %i.ct, align 8, !tbaa !18
  store <2 x i64> %i.cu, ptr %i.cs, align 8, !tbaa !18
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cv = load i64, ptr %i.cf, align 8, !tbaa !18
  store ptr %i.ch, ptr %2, align 8, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cy = load <2 x i64>, ptr %i.cw, align 8, !tbaa !18
  store <2 x i64> %i.cy, ptr %i.cx, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ce, ptr %5, align 8, !tbaa !13
  store i64 %i.cv, ptr %i.ci, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ci, ptr %5, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ab, %bb.ac
  %i.cz = phi ptr [ %i.ce, %bb.ab ], [ %i.ci, %bb.ac ], [ %i.ch, %bb.x ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.da, align 8, !tbaa !26
  store i8 0, ptr %i.cz, align 1, !tbaa !18
end_hunk_0
