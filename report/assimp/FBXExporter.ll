Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXExporter?download=true
inline.NumInlined: 9027
inline.NumDeleted: 2242
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6Assimp11FBXExporter15WriteModelNodesERNS_12StreamWriterILb0ELb0EEEPK6aiNodelRKSt13unordered_setIS6_St4hashIS6_ESt8equal_toIS6_ESaIS6_EE:bb.a
  invoke void @_ZN6Assimp11FBXExporter15WriteModelNodesERNS_12StreamWriterILb0ELb0EEEPK6aiNodelRKSt13unordered_setIS6_St4hashIS6_ESt8equal_toIS6_ESaIS6_EERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEESaISQ_EE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEEvPT_.exit.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #32
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEESaIS9_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #32
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX4Node13AddPropertiesIRlJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA1_KcEEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8
  tail call void @_ZN6Assimp3FBX17FBXExportPropertyC1El(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.f)
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRlEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre = load ptr, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.j = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit
  tail call void @_ZN6Assimp3FBX17FBXExportPropertyC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr %i.l, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit
  tail call void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre.i4 = load ptr, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i

_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i: ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ %.pre.i4, %bb.e ] ; 3 uses
  %i.n = load ptr, ptr %i.d, align 8
  %.not.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i
  tail call void @_ZN6Assimp3FBX17FBXExportPropertyC1EPKcb(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext false)
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.p, ptr %i.b, align 8
  br label %_ZN6Assimp3FBX4Node13AddPropertiesIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA1_KcEEEvOT_DpOT0_.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i
  tail call void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRA1_KcEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.m, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %_ZN6Assimp3FBX4Node13AddPropertiesIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA1_KcEEEvOT_DpOT0_.exit

_ZN6Assimp3FBX4Node13AddPropertiesIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA1_KcEEEvOT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX4Node13AddPropertiesIRlJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA1_KcEEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8
  tail call void @_ZN6Assimp3FBX17FBXExportPropertyC1El(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.f)
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRlEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre = load ptr, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.j = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit
  tail call void @_ZN6Assimp3FBX17FBXExportPropertyC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr %i.l, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJRlEEERS2_DpOT_.exit
  tail call void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre.i4 = load ptr, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i

_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i: ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ %.pre.i4, %bb.e ] ; 3 uses
  %i.n = load ptr, ptr %i.d, align 8
  %.not.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i
  tail call void @_ZN6Assimp3FBX17FBXExportPropertyC1EPKcb(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext false)
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.p, ptr %i.b, align 8
  br label %_ZN6Assimp3FBX4Node13AddPropertiesINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA1_KcEEEvOT_DpOT0_.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i
  tail call void @_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRA1_KcEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.m, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %_ZN6Assimp3FBX4Node13AddPropertiesINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA1_KcEEEvOT_DpOT0_.exit

_ZN6Assimp3FBX4Node13AddPropertiesINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA1_KcEEEvOT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %4 = load float, ptr %0, align 4                ; 3 uses
  %5 = load float, ptr %i.c, align 4              ; 3 uses
  %i.k = load float, ptr %i.g, align 4            ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %7 = load <2 x float>, ptr %i.n, align 4        ; 2 uses
  %i.q = load float, ptr %i.p, align 4
  %8 = fmul float %5, %5
  %9 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %8)
  %10 = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.k, float %9)
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load <2 x float>, ptr %i.l, align 4      ; 3 uses
  %i.s = load <2 x float>, ptr %i.m, align 4      ; 3 uses
  %12 = tail call noundef float @sqrtf(float noundef %10) #31
  store float %12, ptr %1, align 4
  %13 = fmul <2 x float> %i.s, %i.s
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.r, <2 x float> %13)
  %15 = insertelement <2 x float> %7, float %i.q, i64 1 ; 2 uses
  %16 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %15, <2 x float> %14) ; 2 uses
  %17 = extractelement <2 x float> %16, i64 0
  %18 = tail call noundef float @sqrtf(float noundef %17) #31
  store float %18, ptr %11, align 4
  %19 = extractelement <2 x float> %16, i64 1
  %i.t = tail call noundef float @sqrtf(float noundef %19) #31 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store float %i.t, ptr %i.u, align 4
  %i.v = load float, ptr %0, align 4              ; 3 uses
  %i.w = load float, ptr %i.m, align 4            ; 3 uses
  %i.x = fmul float %i.v, %i.w                    ; 2 uses
  %i.y = load float, ptr %i.p, align 4            ; 4 uses
  %i.z = fmul float %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ab = load float, ptr %i.aa, align 4          ; 6 uses
  %i.ac = load float, ptr %i.h, align 4           ; 5 uses
  %i.ad = fmul float %i.x, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load float, ptr %i.ae, align 4          ; 6 uses
  %i.ag = fneg float %i.af
  %i.ah = fmul float %i.ad, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.z, float %i.ab, float %i.ah)
  %i.aj = load float, ptr %6, align 4             ; 3 uses
  %i.ak = fmul float %i.v, %i.aj                  ; 2 uses
  %i.al = fmul float %i.ac, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.an = load float, ptr %i.am, align 4          ; 6 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.al, float %i.an, float %i.ai)
  %i.ap = load float, ptr %i.n, align 4           ; 4 uses
  %i.aq = fneg float %i.ap                        ; 3 uses
  %i.ar = fmul float %i.ak, %i.aq
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ab, float %i.ao)
  %i.at = load float, ptr %i.d, align 4           ; 3 uses
  %i.au = fmul float %i.v, %i.at                  ; 2 uses
  %i.av = fmul float %i.ap, %i.au
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.af, float %i.as)
  %i.ax = fneg float %i.y                         ; 3 uses
  %i.ay = fmul float %i.au, %i.ax
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.an, float %i.aw)
  %i.ba = load float, ptr %i.l, align 4           ; 3 uses
  %i.bb = fmul float %i.aj, %i.ba                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load float, ptr %i.bc, align 4          ; 6 uses
  %i.be = fneg float %i.ac                        ; 2 uses
  %i.bf = fmul float %i.bb, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bd, float %i.az)
  %i.bh = load float, ptr %i.g, align 4           ; 4 uses
  %i.bi = fmul float %i.bb, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.ab, float %i.bg)
  %i.bk = fmul float %i.at, %i.ba                 ; 2 uses
  %i.bl = fneg float %i.bh                        ; 3 uses
  %i.bm = fmul float %i.bk, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.af, float %i.bj)
  %i.bo = fmul float %i.y, %i.bk
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bd, float %i.bn)
  %i.bq = load float, ptr %i.c, align 4           ; 3 uses
  %i.br = fmul float %i.ba, %i.bq                 ; 2 uses
  %i.bs = fmul float %i.br, %i.ax
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.ab, float %i.bp)
  %i.bu = fmul float %i.ac, %i.br
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.af, float %i.bt)
  %i.bw = load float, ptr %i.o, align 4           ; 3 uses
  %i.bx = fmul float %i.at, %i.bw                 ; 2 uses
  %i.by = fmul float %i.bh, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.an, float %i.bv)
  %i.ca = fmul float %i.bx, %i.aq
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.bd, float %i.bz)
  %i.cc = fmul float %i.bq, %i.bw                 ; 2 uses
  %i.cd = fmul float %i.ap, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.ab, float %i.cb)
  %i.cf = fmul float %i.cc, %i.be
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.an, float %i.ce)
  %i.ch = fmul float %i.w, %i.bw                  ; 2 uses
  %i.ci = fmul float %i.ac, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.bd, float %i.cg)
  %i.ck = fmul float %i.ch, %i.bl
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ab, float %i.cj)
  %i.cm = load float, ptr %i.a, align 4           ; 3 uses
  %i.cn = fmul float %i.bq, %i.cm                 ; 2 uses
  %i.co = fmul float %i.cn, %i.aq
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %i.af, float %i.cl)
  %i.cq = fmul float %i.y, %i.cn
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.an, float %i.cp)
  %i.cs = fmul float %i.w, %i.cm                  ; 2 uses
  %i.ct = fmul float %i.cs, %i.ax
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.bd, float %i.cr)
  %i.cv = fmul float %i.bh, %i.cs
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.af, float %i.cu)
  %i.cx = fmul float %i.aj, %i.cm                 ; 2 uses
  %i.cy = fmul float %i.cx, %i.bl
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.an, float %i.cw)
  %i.da = fmul float %i.ap, %i.cx
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %i.da, float %i.bd, float %i.cz)
  %i.dc = fcmp olt float %i.db, 0.000000e+00
  %20 = load <2 x float>, ptr %1, align 4         ; 2 uses
  br i1 %i.dc, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dd = fneg <2 x float> %20                    ; 2 uses
  %i.de = fneg float %i.t                         ; 2 uses
  store <2 x float> %i.dd, ptr %1, align 4
  store float %i.de, ptr %i.u, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.df = phi float [ %i.de, %bb.b ], [ %i.t, %bb.a ] ; 2 uses
  %i.dg = phi <2 x float> [ %i.dd, %bb.b ], [ %20, %bb.a ] ; 2 uses
  %i.dh = fcmp une <2 x float> %i.dg, zeroinitializer ; 3 uses
  %21 = extractelement <2 x i1> %i.dh, i64 0
  %i.di = fdiv <2 x float> splat (float 1.000000e+00), %i.dg ; 3 uses
  %i.dj = extractelement <2 x float> %i.di, i64 0
  %i.dk = fmul float %i.k, %i.dj
  %.sroa.12.0 = select i1 %21, float %i.dk, float %i.k
  %i.dl = tail call float @asinf(float %.sroa.12.0)
  %i.dm = fneg float %i.dl                        ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.dm, ptr %i.dn, align 4
  %i.do = tail call noundef float @cosf(float noundef %i.dm) #31 ; 2 uses
  %i.dp = tail call noundef float @llvm.fabs.f32(float %i.do)
  %i.dq = fcmp ogt float %i.dp, f0x34000000
  br i1 %i.dq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dr = fcmp une float %i.df, 0.000000e+00
  %i.ds = fdiv float 1.000000e+00, %i.df
  %22 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %23 = insertelement <4 x float> %22, float %5, i64 1
  %24 = insertelement <4 x float> %23, float %4, i64 3 ; 2 uses
  %i.dt = shufflevector <2 x float> %i.di, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.du = insertelement <4 x float> %i.dt, float %i.ds, i64 2
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dw = fmul <4 x float> %24, %i.dv
  %i.dx = shufflevector <2 x i1> %i.dh, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.dy = insertelement <4 x i1> %i.dx, i1 %i.dr, i64 2
  %i.dz = shufflevector <4 x i1> %i.dy, <4 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ea = select <4 x i1> %i.dz, <4 x float> %i.dw, <4 x float> %24
  %i.eb = insertelement <4 x float> poison, float %i.do, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = fdiv <4 x float> %i.ea, %i.ec           ; 4 uses
  %i.ee = extractelement <4 x float> %i.ed, i64 0
  %i.ef = extractelement <4 x float> %i.ed, i64 2
  %i.eg = tail call noundef float @atan2f(float noundef %i.ee, float noundef %i.ef) #31
  store float %i.eg, ptr %2, align 4
  %i.eh = extractelement <4 x float> %i.ed, i64 1
  %i.ei = extractelement <4 x float> %i.ed, i64 3
  %i.ej = tail call noundef float @atan2f(float noundef %i.eh, float noundef %i.ei) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %25 = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ek = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.el = fmul <2 x float> %25, %i.ek
  %i.em = shufflevector <2 x i1> %i.dh, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.en = select <2 x i1> %i.em, <2 x float> %i.el, <2 x float> %25 ; 2 uses
  store float 0.000000e+00, ptr %2, align 4
  %i.eo = extractelement <2 x float> %i.en, i64 0
  %i.ep = fneg float %i.eo
  %i.eq = extractelement <2 x float> %i.en, i64 1
  %i.er = tail call noundef float @atan2f(float noundef %i.ep, float noundef %i.eq) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi float [ %i.ej, %bb.d ], [ %i.er, %bb.e ]
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sink, ptr %i.es, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXExporter23WriteAnimationCurveNodeERNS_12StreamWriterILb0ELb0EEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfESB_ll(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, <2 x float> %4, float %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 2 uses
  %i.e = alloca i64, align 8                      ; 2 uses
  %9 = alloca %"class.Assimp::FBX::Node", align 8 ; 17 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.Assimp::FBX::Node", align 8 ; 15 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i64 %2, ptr %i.c, align 8
  store i64 %7, ptr %i.d, align 8
  store i64 %8, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.f, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 18, ptr %i.b, align 8
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %10, align 8
  %i.h = load i64, ptr %i.b, align 8              ; 3 uses
  store i64 %i.h, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.g, ptr noundef nonnull align 1 dereferenceable(18) @.str.255, i64 18, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.h, ptr %i.i, align 8
  %i.j = load ptr, ptr %10, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.l, ptr %9, align 8
  %i.m = load ptr, ptr %10, align 8               ; 2 uses
  %i.n = load i64, ptr %i.i, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.n, ptr %i.a, align 8
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc34 unwind label %bb.s   ; 2 uses

.noexc34:                                         ; preds = %.noexc.i.i
  store ptr %i.p, ptr %9, align 8
  %i.q = load i64, ptr %i.a, align 8
  store i64 %i.q, ptr %i.l, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc34, %.noexc
  %i.r = phi ptr [ %i.p, %.noexc34 ], [ %i.l, %.noexc ] ; 2 uses
  switch i64 %i.n, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.m, align 1
  store i8 %i.s, ptr %i.r, align 1
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.t = load i64, ptr %i.a, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.t, ptr %i.u, align 8
  %i.v = load ptr, ptr %9, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.x, i8 0, i64 49, i1 false)
  %i.y = load ptr, ptr %10, align 8               ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.f
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.aa = load i64, ptr %i.f, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.ac = load ptr, ptr %3, align 8, !noalias !383
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !383 ; 3 uses
  %i.af = load ptr, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, align 8, !noalias !383
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, i64 8), align 8, !noalias !383 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.ah, ptr %12, align 8, !alias.scope !384
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 0, ptr %i.ai, align 8, !alias.scope !384
  store i8 0, ptr %i.ah, align 8, !alias.scope !384
  %i.aj = add i64 %i.ag, %i.ae
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.aj)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8, !alias.scope !384
  %i.al = sub i64 4611686018427387903, %i.ak
  %i.am = icmp ult i64 %i.al, %i.ae
  br i1 %i.am, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.ac, i64 noundef %i.ae)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ao = load i64, ptr %i.ai, align 8, !alias.scope !384
  %i.ap = sub i64 4611686018427387903, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.ag
  br i1 %i.aq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.405) #30
          to label %.cont.i.i unwind label %bb.e

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.af, i64 noundef %i.ag)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %12, align 8, !alias.scope !384 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ah
  br i1 %i.au, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.av = load i64, ptr %i.ai, align 8, !noalias !385
  %i.aw = add i64 %i.av, -4611686018427387891
  %i.ax = icmp ult i64 %i.aw, 13
  br i1 %i.ax, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.405) #30
          to label %.noexc36 unwind label %bb.t

.noexc36:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.386, i64 noundef 13)
          to label %.noexc37 unwind label %bb.t   ; 6 uses

.noexc37:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.az, ptr %11, align 8, !alias.scope !385
  %i.ba = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

bb.g:                                             ; preds = %.noexc37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %.noexc37
  store ptr %i.ba, ptr %11, align 8, !alias.scope !385
  %i.bh = load i64, ptr %i.bb, align 8
  store i64 %i.bh, ptr %i.az, align 8, !alias.scope !385
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE17_M_realloc_insertIJRA7_KcEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.aj, %.lr.ph.i.i.i27 ], [ %i.aa, %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i29 = phi ptr [ %i.ai, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.ab = load i8, ptr %.0911.i.i.i29, align 8, !alias.scope !899
  store i8 %i.ab, ptr %.012.i.i.i28, align 8, !alias.scope !898
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !alias.scope !899
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !alias.scope !898
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !899
  store ptr %i.ah, ptr %i.af, align 8, !alias.scope !898
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !899
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !7

_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.aa, %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.aj, %.lr.ph.i.i.i27 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN6Assimp3FBX17FBXExportPropertyESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #32
  br label %_ZNSt12_Vector_baseIN6Assimp3FBX17FBXExportPropertyESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3FBX17FBXExportPropertyESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ao, ptr %i.ak, align 8
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN6Assimp3FBX17FBXExportPropertyESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #31 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #32
  invoke void @__cxa_rethrow() #30
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ap

bb.g:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #33
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN6Assimp3FBX17FBXExportPropertyC1ERK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %0, ptr %5, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = load i64, ptr %3, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.b, align 8
  %i.m = load i64, ptr %i.g, align 8
  store i64 %i.m, ptr %i.e, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.n, ptr %i.q, align 8
  store ptr %i.g, ptr %i.d, align 8
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.g, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %i.r, align 8
  store ptr %i.a, ptr %i.o, align 8
  %i.s = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 5 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.q, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.x) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.af = sub i64 %i.x, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ag = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.ah = phi i1 [ %i.ag, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v) #31
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %i.al

bb.h:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8: ; preds = %bb.h
  %i.ao = load i64, ptr %i.e, align 8
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #32
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #32
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.011 = phi ptr [ %i.a, %.thread ], [ %i.t, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret ptr %.sroa.0.011
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
  unreachable

_ZNKSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load ptr, ptr %2, align 8                ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %i.x = sdiv exact i64 %i.w, 24
  %i.y = icmp ugt i64 %i.x, 384307168202282325
  br i1 %i.y, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i, !prof !19

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #34
          to label %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge unwind label %bb.j

_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8               ; 2 uses
  %.pre43 = load ptr, ptr %i.r, align 8
  %.pre44 = ptrtoint ptr %.pre43 to i64
  %.pre45 = ptrtoint ptr %.pre to i64
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %.pre-phi46 = phi i64 [ %.pre45, %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.v, %_ZNKSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ]
  %.pre-phi = phi i64 [ %.pre44, %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.u, %_ZNKSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ]
  %i.aa = phi ptr [ %.pre, %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.t, %_ZNKSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.ab = phi ptr [ %i.z, %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ null, %_ZNKSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  store ptr %i.ab, ptr %i.q, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = sub i64 %.pre-phi, %.pre-phi46          ; 4 uses
  %i.ag = icmp sgt i64 %i.af, 24
  br i1 %i.ag, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ab, ptr align 8 %i.aa, i64 %i.af, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ah = icmp eq i64 %i.af, 24
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.ab, i64 %i.af
  store ptr %i.ai, ptr %i.ac, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.p, %bb.g ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !908
  store <2 x ptr> %i.aj, ptr %.012.i.i.i, align 8, !alias.scope !907
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !908
  store ptr %i.am, ptr %i.ak, align 8, !alias.scope !907
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !908
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !903

_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ao, %.lr.ph.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.av, %.lr.ph.i.i.i28 ], [ %i.ap, %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.au, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.aq = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !alias.scope !910
  store <2 x ptr> %i.aq, ptr %.012.i.i.i29, align 8, !alias.scope !909
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !910
  store ptr %i.at, ptr %i.ar, align 8, !alias.scope !909
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !910
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !903

_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ap, %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.av, %.lr.ph.i.i.i28 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt6vectorISt5arrayIlLm3EESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #32
  br label %_ZNSt12_Vector_baseISt6vectorISt5arrayIlLm3EESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt6vectorISt5arrayIlLm3EESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, %bb.h
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ba, ptr %i.aw, align 8
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = tail call ptr @__cxa_begin_catch(ptr %i.bd) #31 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #32
  invoke void @__cxa_rethrow() #30
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bb

bb.l:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_cEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp ne ptr %1, null
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_FBXExporter.cpp:bb.a
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497.i, %bb.j
  %.33144.i = phi ptr [ %.30141.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497.i ], [ %i.cc, %bb.j ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497.i ], [ %i.nx, %bb.j ]
  %.36.i = phi i1 [ %.33.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497.i ], [ false, %bb.j ]
  %i.su = load ptr, ptr %10, align 8              ; 2 uses
  %i.sv = icmp eq ptr %i.su, %i.cg
  br i1 %i.sv, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit500.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i498.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i498.i: ; preds = %bb.ax
  %i.sw = load i64, ptr %i.cg, align 8
  %i.sx = add i64 %i.sw, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sx) #32
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit500.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit500.i: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i498.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.sy = load ptr, ptr %9, align 8               ; 2 uses
  %i.sz = icmp eq ptr %i.sy, %i.cd
  br i1 %i.sz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i501.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i501.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit500.i
  %i.ta = load i64, ptr %i.cd, align 8
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sy, i64 noundef %i.tb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit500.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i501.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.i, %bb.i
  %.36147.i = phi ptr [ %.33144.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.i ], [ %i.bu, %bb.i ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.i ], [ %i.nw, %bb.i ]
  %.39.i = phi i1 [ %.36.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.i ], [ false, %bb.i ]
  %i.tc = load ptr, ptr %8, align 8               ; 2 uses
  %i.td = icmp eq ptr %i.tc, %i.by
  br i1 %i.td, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit506.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i504.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i504.i: ; preds = %bb.ay
  %i.te = load i64, ptr %i.by, align 8
  %i.tf = add i64 %i.te, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tf) #32
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit506.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit506.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i504.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.tg = load ptr, ptr %7, align 8               ; 2 uses
  %i.th = icmp eq ptr %i.tg, %i.bv
  br i1 %i.th, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit506.i
  %i.ti = load i64, ptr %i.bv, align 8
  %i.tj = add i64 %i.ti, 1
  call void @_ZdlPvm(ptr noundef %i.tg, i64 noundef %i.tj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit506.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509.i, %bb.h
  %.39150.i = phi ptr [ %.36147.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509.i ], [ %i.bm, %bb.h ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509.i ], [ %i.nv, %bb.h ]
  %.42.i = phi i1 [ %.39.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509.i ], [ false, %bb.h ]
  %i.tk = load ptr, ptr %6, align 8               ; 2 uses
  %i.tl = icmp eq ptr %i.tk, %i.bq
  br i1 %i.tl, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit512.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i510.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i510.i: ; preds = %bb.az
  %i.tm = load i64, ptr %i.bq, align 8
  %i.tn = add i64 %i.tm, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.tn) #32
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit512.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit512.i: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i510.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.to = load ptr, ptr %5, align 8               ; 2 uses
  %i.tp = icmp eq ptr %i.to, %i.bn
  br i1 %i.tp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit512.i
  %i.tq = load i64, ptr %i.bn, align 8
  %i.tr = add i64 %i.tq, 1
  call void @_ZdlPvm(ptr noundef %i.to, i64 noundef %i.tr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit512.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515.i, %bb.g
  %.42153.i = phi ptr [ %.39150.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515.i ], [ %i.be, %bb.g ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515.i ], [ %i.nu, %bb.g ]
  %.45.i = phi i1 [ %.42.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515.i ], [ false, %bb.g ]
  %i.ts = load ptr, ptr %4, align 8               ; 2 uses
  %i.tt = icmp eq ptr %i.ts, %i.bi
  br i1 %i.tt, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit518.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i516.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i516.i: ; preds = %bb.ba
  %i.tu = load i64, ptr %i.bi, align 8
  %i.tv = add i64 %i.tu, 1
  call void @_ZdlPvm(ptr noundef %i.ts, i64 noundef %i.tv) #32
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit518.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit518.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i516.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.tw = load ptr, ptr %3, align 8               ; 2 uses
  %i.tx = icmp eq ptr %i.tw, %i.bf
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit518.i
  %i.ty = load i64, ptr %i.bf, align 8
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.tz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit518.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.i, %bb.f
  %.45156.i = phi ptr [ %.42153.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.i ], [ %0, %bb.f ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.i ], [ %i.nt, %bb.f ]
  %.48.i = phi i1 [ %.45.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521.i ], [ false, %bb.f ]
  %i.ua = load ptr, ptr %2, align 8               ; 2 uses
  %i.ub = icmp eq ptr %i.ua, %i.ba
  br i1 %i.ub, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit524.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i522.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i522.i: ; preds = %bb.bb
  %i.uc = load i64, ptr %i.ba, align 8
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ud) #32
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit524.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit524.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i522.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.ue = load ptr, ptr %1, align 8               ; 2 uses
  %i.uf = icmp eq ptr %i.ue, %i.ax
  br i1 %i.uf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit524.i
  %i.ug = load i64, ptr %i.ax, align 8
  %i.uh = add i64 %i.ug, 1
  call void @_ZdlPvm(ptr noundef %i.ue, i64 noundef %i.uh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit524.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.ui = icmp eq ptr %0, %.45156.i
  %or.cond.i = select i1 %.48.i, i1 true, i1 %i.ui
  br i1 %or.cond.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527.i, %.preheader.i
  %i.uj = phi ptr [ %i.uk, %.preheader.i ], [ %.45156.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527.i ]
  %i.uk = getelementptr inbounds i8, ptr %i.uj, i64 -72 ; 3 uses
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_cEED2Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.uk) #31
  %i.ul = icmp eq ptr %i.uk, %0
  br i1 %i.ul, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i

__cxx_global_var_init.367.exit:                   ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcED2Ev.exit422.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  %i.um = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_cESt4lessIS5_ESaIS6_IKS5_S7_EEED2Ev, ptr nonnull @_ZL15transform_typesB5cxx11, ptr nonnull @__dso_handle) #31 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #22

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { noreturn }
attributes #31 = { nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18}

!0 = distinct !{null, ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev, null, null, null}
!2 = distinct !{!2, !20}
!3 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4 = distinct !{!4, !20}
!5 = distinct !{!5, !20}
!6 = distinct !{!6, !20}
!7 = distinct !{!7, !20}
!8 = distinct !{!8, !20}
!9 = distinct !{!9, !20}
!10 = distinct !{!10, !20}
!11 = distinct !{!11, !20}
!12 = distinct !{!12, !20}
!13 = distinct !{!13, !20}
!14 = distinct !{!14, !20}
!15 = distinct !{!15, !20}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{ptr @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EED2Ev}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!27 = !{ptr @_ZN6Assimp11FBXExporter15WriteModelNodesERNS_12StreamWriterILb0ELb0EEEPK6aiNodelRKSt13unordered_setIS6_St4hashIS6_ESt8equal_toIS6_ESaIS6_EE}
!28 = distinct !{null, null, null}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!32 = distinct !{!32, !31, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!33 = distinct !{!33, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!34 = distinct !{!34, !33, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!35 = !{!32}
!36 = !{!34}
!37 = !{!34, !32}
!38 = distinct !{!38, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!39 = distinct !{!39, !38, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!40 = distinct !{!40, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!41 = distinct !{!41, !40, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!42 = !{!39}
!43 = !{!41}
!44 = !{!41, !39}
!45 = distinct !{!45, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!46 = distinct !{!46, !45, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!47 = distinct !{!47, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!48 = distinct !{!48, !47, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!49 = distinct !{!49, !20, !24, !25}
!50 = distinct !{!50, !20, !24, !25}
!51 = distinct !{!51, !61}
!52 = distinct !{!52, !20, !24}
!53 = distinct !{!53, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!54 = distinct !{!54, !53, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!55 = distinct !{!55, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!56 = distinct !{!56, !55, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!57 = !{!46}
!58 = !{!48}
!59 = !{!48, !46}
!60 = !{!"branch_weights", i32 4, i32 28}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!54}
!63 = !{!56}
!64 = !{!56, !54}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20}
!70 = distinct !{!70, !20}
!71 = distinct !{!71, !20}
!72 = distinct !{!72, !20}
!73 = distinct !{!73, !20}
!74 = distinct !{!74, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!75 = distinct !{!75, !74, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!76 = distinct !{!76, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!77 = distinct !{!77, !76, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!78 = distinct !{!78, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!79 = distinct !{!79, !78, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!85 = distinct !{!85, !84, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!86 = distinct !{!86, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!87 = distinct !{!87, !86, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!89 = distinct !{!89, !88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!90 = distinct !{!90, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!91 = distinct !{!91, !90, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!92 = distinct !{!92, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!93 = distinct !{!93, !92, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!94 = distinct !{!94, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!95 = distinct !{!95, !94, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!96 = distinct !{!96, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!97 = distinct !{!97, !96, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!98 = distinct !{!98, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!99 = distinct !{!99, !98, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!100 = distinct !{!100, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!101 = distinct !{!101, !100, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!102 = distinct !{!102, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!103 = distinct !{!103, !102, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!104 = distinct !{!104, !20}
!105 = distinct !{!105, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!106 = distinct !{!106, !105, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!108 = distinct !{!108, !107, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!109 = distinct !{!109, !20}
!110 = distinct !{!110, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!111 = distinct !{!111, !110, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!112 = distinct !{!112, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!113 = distinct !{!113, !112, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!114 = distinct !{!114, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!115 = distinct !{!115, !114, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!116 = distinct !{!116, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!117 = distinct !{!117, !116, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!118 = distinct !{!118, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!119 = distinct !{!119, !118, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!120 = distinct !{!120, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!121 = distinct !{!121, !120, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!122 = distinct !{!122, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!123 = distinct !{!123, !122, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_"}
!125 = distinct !{!125, !124, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!126 = distinct !{!126, !124, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!127 = distinct !{!127, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_"}
!128 = distinct !{!128, !127, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!129 = distinct !{!129, !127, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!130 = distinct !{!130, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_"}
!131 = distinct !{!131, !130, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!132 = distinct !{!132, !130, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!133 = distinct !{!133, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_"}
!134 = distinct !{!134, !133, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!135 = distinct !{!135, !133, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!136 = distinct !{!136, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_"}
!137 = distinct !{!137, !136, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!138 = distinct !{!138, !136, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!139 = distinct !{!139, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_"}
!140 = distinct !{!140, !139, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 0:It1"}
!141 = distinct !{!141, !139, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 1:It1"}
!142 = distinct !{!142, !20}
!143 = distinct !{!143, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!144 = distinct !{!144, !143, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!145 = distinct !{!145, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!146 = distinct !{!146, !145, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!147 = distinct !{!147, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!148 = distinct !{!148, !147, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!149 = distinct !{!149, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_"}
!150 = distinct !{!150, !149, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!151 = distinct !{!151, !149, !"_ZSt19__relocate_object_aIN6Assimp3FBX17FBXExportPropertyES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!152 = distinct !{!152, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!153 = distinct !{!153, !152, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!154 = distinct !{!154, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!155 = distinct !{!155, !154, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!156 = distinct !{!156, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
end_hunk_2
