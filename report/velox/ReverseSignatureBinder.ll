inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox4exec22ReverseSignatureBinder7tryBindEv(ptr noundef nonnull align 8 dereferenceable(249) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !27, !align !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = tail call noundef zeroext i1 @_ZN8facebook5velox4exec19SignatureBinderBase7tryBindERKNS1_13TypeSignatureERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(97) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 8, !tbaa !29
  ret i1 %i.d
}

declare noundef zeroext i1 @_ZN8facebook5velox4exec19SignatureBinderBase7tryBindERKNS1_13TypeSignatureERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN8facebook5velox4exec19SignatureBinderBaseE", !10, i64 0, !12, i64 8, !21, i64 64, !23, i64 120, !25, i64 176}
!10 = !{!"p1 _ZTSN8facebook5velox4exec17FunctionSignatureE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKN8facebook5velox4TypeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SB_EEE", !13, i64 0}
!13 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE", !14, i64 0, !16, i64 8, !17, i64 16, !16, i64 24, !19, i64 32, !18, i64 48}
!14 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !15, i64 0}
!15 = !{!"any p2 pointer", !11, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!18 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!19 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !20, i64 0, !16, i64 8}
!20 = !{!"float", !6, i64 0}
!21 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !22, i64 0}
!22 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !14, i64 0, !16, i64 8, !17, i64 16, !16, i64 24, !19, i64 32, !18, i64 48}
!23 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox17LongEnumParameterESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE", !24, i64 0}
!24 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox17LongEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !14, i64 0, !16, i64 8, !17, i64 16, !16, i64 24, !19, i64 32, !18, i64 48}
!25 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox20VarcharEnumParameterESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE", !26, i64 0}
!26 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox20VarcharEnumParameterEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !14, i64 0, !16, i64 8, !17, i64 16, !16, i64 24, !19, i64 32, !18, i64 48}
!27 = !{}
!28 = !{i64 8}
!29 = !{!30, !36, i64 248}
!30 = !{!"_ZTSN8facebook5velox4exec22ReverseSignatureBinderE", !9, i64 0, !31, i64 232, !36, i64 248}
!31 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !32, i64 0}
!32 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0, !34, i64 8}
!33 = !{!"p1 _ZTSN8facebook5velox4TypeE", !11, i64 0}
!34 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0}
!35 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!36 = !{!"bool", !6, i64 0}
end_hunk_0
