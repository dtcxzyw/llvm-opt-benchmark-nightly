inline.NumInlined: 13
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.google::protobuf::internal::InternalMetadata" = type { i64 }
%struct.anon = type { %"class.google::protobuf::internal::CachedSize" }
%"class.google::protobuf::internal::CachedSize" = type { i32 }
%"struct.google::protobuf::internal::MigrationSchema" = type { i32, i32 }
%"struct.google::protobuf::internal::DescriptorTable" = type { i8, i8, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%"struct.google::protobuf::internal::DescriptorMethods" = type { ptr, ptr, ptr, ptr, ptr }
%"struct.google::protobuf::internal::TcParseTableBase" = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i16, i32, ptr, ptr, ptr }
%"struct.std::array" = type { [1 x %"struct.google::protobuf::internal::TcParseTableBase::FastFieldEntry"] }
%"struct.google::protobuf::internal::TcParseTableBase::FastFieldEntry" = type { ptr, %"struct.google::protobuf::internal::TcFieldData" }
%"struct.google::protobuf::internal::TcFieldData" = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%"struct.std::array.1" = type { [2 x i16] }
%"struct.std::array.2" = type { [1 x i8] }

$_ZN6google8protobuf5EmptyD0Ev = comdat any

$_ZN6google8protobuf8internal14ZeroFieldsBase5ClearEv = comdat any

$_ZNK6google8protobuf8internal14ZeroFieldsBase12ByteSizeLongEv = comdat any

$_ZNK6google8protobuf8internal14ZeroFieldsBase18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE = comdat any

@_ZTVN6google8protobuf5EmptyE = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6google8protobuf5EmptyE, ptr @_ZN6google8protobuf8internal14ZeroFieldsBaseD2Ev, ptr @_ZN6google8protobuf5EmptyD0Ev, ptr @_ZN6google8protobuf8internal14ZeroFieldsBase5ClearEv, ptr @_ZNK6google8protobuf8internal14ZeroFieldsBase12ByteSizeLongEv, ptr @_ZNK6google8protobuf5Empty12GetClassDataEv, ptr @_ZNK6google8protobuf8internal14ZeroFieldsBase18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE] }, align 8
@_ZN6google8protobuf24_Empty_default_instance_E = global { { { ptr, %"class.google::protobuf::internal::InternalMetadata", %struct.anon } } } { { { ptr, %"class.google::protobuf::internal::InternalMetadata", %struct.anon } } { { ptr, %"class.google::protobuf::internal::InternalMetadata", %struct.anon } { ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN6google8protobuf5EmptyE, i32 0, i32 0, i32 2), %"class.google::protobuf::internal::InternalMetadata" zeroinitializer, %struct.anon zeroinitializer } } }, align 8
@_ZN45TableStruct_google_2fprotobuf_2fempty_2eproto7offsetsE = constant [1 x i32] zeroinitializer, section "protodesc_cold", align 4
@_ZL59descriptor_table_protodef_google_2fprotobuf_2fempty_2eproto = internal constant [191 x i8] c"\0A\1Bgoogle/protobuf/empty.proto\12\0Fgoogle.protobuf\22\07\0A\05EmptyB}\0A\13com.google.protobufB\0AEmptyProtoP\01Z.google.golang.org/protobuf/types/known/emptypb\F8\01\01\A2\02\03GPB\AA\02\1EGoogle.Protobuf.WellKnownTypesb\06proto3\00", section "protodesc_cold", align 16
@.str = private unnamed_addr constant [28 x i8] c"google/protobuf/empty.proto\00", align 1
@_ZL7schemas = internal constant [1 x %"struct.google::protobuf::internal::MigrationSchema"] [%"struct.google::protobuf::internal::MigrationSchema" { i32 0, i32 24 }], section "protodesc_cold", align 4
@_ZL22file_default_instances = internal constant [1 x ptr] [ptr @_ZN6google8protobuf24_Empty_default_instance_E], align 8
@descriptor_table_google_2fprotobuf_2fempty_2eproto = global %"struct.google::protobuf::internal::DescriptorTable" { i8 0, i8 0, i32 190, ptr @_ZL59descriptor_table_protodef_google_2fprotobuf_2fempty_2eproto, ptr @.str, ptr @_ZL55descriptor_table_google_2fprotobuf_2fempty_2eproto_once, ptr null, i32 0, i32 1, ptr @_ZL7schemas, ptr @_ZL22file_default_instances, ptr @_ZN45TableStruct_google_2fprotobuf_2fempty_2eproto7offsetsE, ptr null, ptr null }, align 8
@_ZN6google8protobuf7Message18kDescriptorMethodsE = external global %"struct.google::protobuf::internal::DescriptorMethods", align 8
@_ZN6google8protobuf17Empty_class_data_E = global { ptr, ptr, ptr, ptr, { i32, i8, i8, { i64 } }, i32, i8, i8, ptr, ptr, ptr, ptr, ptr } { ptr @_ZN6google8protobuf24_Empty_default_instance_E, ptr @_ZN6google8protobuf5Empty7_table_E, ptr null, ptr @_ZN6google8protobuf8internal14ZeroFieldsBase9MergeImplERNS0_11MessageLiteERKS3_, { i32, i8, i8, { i64 } } { i32 24, i8 0, i8 8, { i64 } zeroinitializer }, i32 16, i8 0, i8 0, ptr null, ptr null, ptr @descriptor_table_google_2fprotobuf_2fempty_2eproto, ptr @_ZN6google8protobuf7Message18kDescriptorMethodsE, ptr null }, align 8
@_ZN6google8protobuf5Empty7_table_E = constant { %"struct.google::protobuf::internal::TcParseTableBase", %"struct.std::array", %"struct.std::array.1", %"struct.std::array.2" } { %"struct.google::protobuf::internal::TcParseTableBase" { i16 16, i16 0, i32 0, i8 0, i8 0, i16 72, i32 -1, i32 76, i16 0, i16 0, i32 76, ptr @_ZN6google8protobuf17Empty_class_data_E, ptr null, ptr @_ZN6google8protobuf8internal8TcParser15GenericFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm }, %"struct.std::array" { [1 x %"struct.google::protobuf::internal::TcParseTableBase::FastFieldEntry"] [%"struct.google::protobuf::internal::TcParseTableBase::FastFieldEntry" { ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %"struct.google::protobuf::internal::TcFieldData" zeroinitializer }] }, %"struct.std::array.1" { [2 x i16] [i16 -1, i16 -1] }, %"struct.std::array.2" zeroinitializer }, align 8
@_ZTIN6google8protobuf5EmptyE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6google8protobuf5EmptyE, ptr @_ZTIN6google8protobuf8internal14ZeroFieldsBaseE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6google8protobuf5EmptyE = constant [25 x i8] c"N6google8protobuf5EmptyE\00", align 1
@_ZTIN6google8protobuf8internal14ZeroFieldsBaseE = external constant ptr
@_ZL55descriptor_table_google_2fprotobuf_2fempty_2eproto_once = internal global { { i32 } } zeroinitializer, align 4
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 102, ptr @_GLOBAL__I_000102, ptr null }]

@_ZN6google8protobuf5EmptyC1EPNS0_5ArenaE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6google8protobuf5EmptyC2EPNS0_5ArenaE
@_ZN6google8protobuf5EmptyC1EPNS0_5ArenaERKS1_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6google8protobuf5EmptyC2EPNS0_5ArenaERKS1_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf5EmptyC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 20)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf5EmptyE, i64 16), ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf5EmptyC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 20)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf5EmptyE, i64 16), ptr %0, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %.noexc4, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

.noexc4:                                          ; preds = %.noexc
  %3 = add nsw i64 %i.e, -1
  %4 = inttoptr i64 %3 to ptr
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit unwind label %bb.a

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %.noexc, %.noexc4
  ret void

bb.a:                                             ; preds = %.noexc4
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf8internal14ZeroFieldsBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) #8
  resume { ptr, i32 } %i.g
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6google8protobuf8internal14ZeroFieldsBase9MergeImplERNS0_11MessageLiteERKS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) #2

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf5Empty12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf17Empty_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf17Empty_class_data_E, i64 8), align 8, !tbaa !14
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf17Empty_class_data_E
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser15GenericFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #2

declare noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf5Empty11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf5Empty12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8internal14ZeroFieldsBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf5EmptyD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN6google8protobuf8internal14ZeroFieldsBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal14ZeroFieldsBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN6google8protobuf8internal14ZeroFieldsBase5ClearERNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK6google8protobuf8internal14ZeroFieldsBase12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6google8protobuf8internal14ZeroFieldsBase12ByteSizeLongERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf8internal14ZeroFieldsBase18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf8internal14ZeroFieldsBase18_InternalSerializeERKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN6google8protobuf8internal14ZeroFieldsBase5ClearERNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i64 @_ZN6google8protobuf8internal14ZeroFieldsBase12ByteSizeLongERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf8internal14ZeroFieldsBase18_InternalSerializeERKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: uwtable
define internal void @_GLOBAL__I_000102() #7 section ".text.startup" {
bb.a:
  tail call void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef nonnull @descriptor_table_google_2fprotobuf_2fempty_2eproto)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !9, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!11, !4, i64 0}
!11 = !{!"_ZTSN6google8protobuf8internal10CachedSizeE", !4, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !6, i64 0}
!14 = !{!15, !18, i64 8}
!15 = !{!"_ZTSN6google8protobuf8internal9ClassDataE", !16, i64 0, !18, i64 8, !17, i64 16, !17, i64 24, !19, i64 32, !4, i64 48, !21, i64 52, !21, i64 53}
!16 = !{!"p1 _ZTSN6google8protobuf11MessageLiteE", !17, i64 0}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"p1 _ZTSN6google8protobuf8internal16TcParseTableBaseE", !17, i64 0}
!19 = !{!"_ZTSN6google8protobuf8internal14MessageCreatorE", !4, i64 0, !20, i64 4, !5, i64 5, !5, i64 8}
!20 = !{!"_ZTSN6google8protobuf8internal14MessageCreator3TagE", !5, i64 0}
!21 = !{!"bool", !5, i64 0}
end_hunk_0
