Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/directory_reader?download=true
inline.NumInlined: 109
inline.NumDeleted: 85
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.absl::lts_20250512::Status" = type { i64 }

$_ZN9grpc_core19DirectoryReaderImplD2Ev = comdat any

$_ZN9grpc_core19DirectoryReaderImplD0Ev = comdat any

$_ZNK9grpc_core19DirectoryReaderImpl4NameEv = comdat any

$_ZTIN9grpc_core15DirectoryReaderE = comdat any

$_ZTSN9grpc_core15DirectoryReaderE = comdat any

@.str = private unnamed_addr constant [30 x i8] c"Could not read crl directory.\00", align 1
@_ZTVN9grpc_core19DirectoryReaderImplE = constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN9grpc_core19DirectoryReaderImplE, ptr @_ZN9grpc_core19DirectoryReaderImplD2Ev, ptr @_ZN9grpc_core19DirectoryReaderImplD0Ev, ptr @_ZNK9grpc_core19DirectoryReaderImpl4NameEv, ptr @_ZN9grpc_core19DirectoryReaderImpl7ForEachEN4absl12lts_2025051211FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE] }, align 8
@_ZTIN9grpc_core19DirectoryReaderImplE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9grpc_core19DirectoryReaderImplE, ptr @_ZTIN9grpc_core15DirectoryReaderE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN9grpc_core19DirectoryReaderImplE = constant [34 x i8] c"N9grpc_core19DirectoryReaderImplE\00", align 1
@_ZTIN9grpc_core15DirectoryReaderE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9grpc_core15DirectoryReaderE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN9grpc_core15DirectoryReaderE = linkonce_odr constant [30 x i8] c"N9grpc_core15DirectoryReaderE\00", comdat, align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core19MakeDirectoryReaderESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #10, !noalias !20 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core19DirectoryReaderImplE, i64 16), ptr %i.b, align 8, !tbaa !9, !noalias !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !21, !noalias !20
  %i.e = icmp eq ptr %2, null
  %i.f = icmp ne i64 %1, 0
  %or.cond.i.i.i.i.i = and i1 %i.f, %i.e
  br i1 %or.cond.i.i.i.i.i, label %.noexc.i.i, label %bb.b

.noexc.i.i:                                       ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #11
          to label %.noexc.i unwind label %bb.e, !noalias !20

.noexc.i:                                         ; preds = %.noexc.i.i
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !20
  store i64 %1, ptr %i.a, align 8, !tbaa !22, !noalias !20
  %i.g = icmp ugt i64 %1, 15
  br i1 %i.g, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc2.i unwind label %bb.e, !noalias !20 ; 2 uses

.noexc2.i:                                        ; preds = %.noexc.i.i.i.i.i
  store ptr %i.h, ptr %i.c, align 8, !tbaa !15, !noalias !20
  %i.i = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !20
  store i64 %i.i, ptr %i.d, align 8, !tbaa !16, !noalias !20
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc2.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc2.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %1, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt10unique_ptrIN9grpc_core19DirectoryReaderImplESt14default_deleteIS1_EED2Ev.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.k = load i8, ptr %2, align 1, !tbaa !16, !noalias !20
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16, !noalias !20
  br label %_ZNSt10unique_ptrIN9grpc_core19DirectoryReaderImplESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %2, i64 %1, i1 false), !noalias !20
  br label %_ZNSt10unique_ptrIN9grpc_core19DirectoryReaderImplESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %.noexc.i.i.i.i.i, %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #13, !noalias !20
  resume { ptr, i32 } %i.l

_ZNSt10unique_ptrIN9grpc_core19DirectoryReaderImplESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !20 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !17, !noalias !20
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !15, !noalias !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !16, !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !20
  store ptr %i.b, ptr %0, align 8, !tbaa !25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core19DirectoryReaderImpl7ForEachEN4absl12lts_2025051211FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr %2, ptr nofree readonly captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = tail call noalias ptr @opendir(ptr noundef %i.b) ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = tail call ptr @readdir(ptr noundef nonnull %i.c) ; 2 uses
  %.not23 = icmp eq ptr %i.e, null
  br i1 %.not23, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2025051213InternalErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 29, ptr nonnull @.str)
  br label %bb.d

.lr.ph:                                           ; preds = %.preheader, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.f = phi ptr [ %i.n, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ %i.e, %.preheader ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 19 ; 4 uses
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #12 ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i10
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %.lr.ph
  %i.i = load i16, ptr %i.g, align 1
  %i.j = icmp ne i16 %i.i, 11822
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.c, !llvm.loop !26

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i10: ; preds = %.lr.ph
  %lhsc = load i8, ptr %i.g, align 1
  %i.m = icmp eq i8 %lhsc, 46
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.c, !llvm.loop !26

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i10
  tail call void %3(ptr %2, i64 %i.h, ptr nonnull %i.g), !inline_history !27
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i10, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.c
  %i.n = tail call ptr @readdir(ptr noundef nonnull %i.c) ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, %.preheader
  %i.o = tail call i32 @closedir(ptr noundef nonnull %i.c) ; 0 uses
  store i64 1, ptr %0, align 8, !tbaa !32, !alias.scope !33
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051213InternalErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #3

declare ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core19DirectoryReaderImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core19DirectoryReaderImplE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core19DirectoryReaderImplD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core19DirectoryReaderImplE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN9grpc_core19DirectoryReaderImplD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #13, !inline_history !34
  br label %_ZN9grpc_core19DirectoryReaderImplD2Ev.exit

_ZN9grpc_core19DirectoryReaderImplD2Ev.exit:      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK9grpc_core19DirectoryReaderImpl4NameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.d, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.b, 1
  ret { i64, ptr } %.fca.1.insert.i
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { noreturn }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !4, i64 16}
!15 = !{!14, !11, i64 0}
!16 = !{!4, !4, i64 0}
!17 = !{!14, !13, i64 8}
!18 = distinct !{!18, i1 true, !"_ZSt11make_uniqueIN9grpc_core19DirectoryReaderImplEJRSt17basic_string_viewIcSt11char_traitsIcEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!19 = distinct !{!19, !18, !"_ZSt11make_uniqueIN9grpc_core19DirectoryReaderImplEJRSt17basic_string_viewIcSt11char_traitsIcEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!20 = !{!19}
!21 = !{!12, !11, i64 0}
!22 = !{!13, !13, i64 0}
!23 = !{!"p1 _ZTSN9grpc_core15DirectoryReaderE", !10, i64 0}
!24 = !{!"_ZTSSt10_Head_baseILm0EPN9grpc_core15DirectoryReaderELb0EE", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = distinct !{!26, !30}
!27 = distinct !{null}
!28 = distinct !{!28, i1 true, !"_ZN4absl12lts_202505128OkStatusEv"}
!29 = distinct !{!29, !28, !"_ZN4absl12lts_202505128OkStatusEv: argument 0"}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"_ZTSN4absl12lts_202505126StatusE", !13, i64 0}
!32 = !{!31, !13, i64 0}
!33 = !{!29}
!34 = !{ptr @_ZN9grpc_core19DirectoryReaderImplD2Ev}
end_hunk_0
