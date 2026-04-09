inline.NumInlined: 858
inline.NumDeleted: 400
begin_hunk_0_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
  br label %bb.bo

bb.h:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.c, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %bb.i
end_hunk_0
begin_hunk_1_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a

.noexc:                                           ; preds = %bb.i
  store i32 %i.l, ptr %i.n, align 8
  %i.o = and i64 %i.k, 4294967295                 ; 3 uses
  %i.p = mul nuw nsw i64 %i.o, 1028               ; 3 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #20
          to label %.noexc45 unwind label %bb.f   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
  store ptr %i.q, ptr %i.r, align 8
  %i.v = shl nuw nsw i64 %i.o, 4
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #20
          to label %.noexc46 unwind label %bb.f   ; 3 uses

.noexc46:                                         ; preds = %.noexc45
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.o
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.noexc46
  %i.y = phi ptr [ %i.w, %.noexc46 ], [ %i.aa, %bb.j ] ; 3 uses
  store i32 10, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr null, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.x
  br i1 %i.ab, label %bb.k, label %bb.j

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.w, ptr %i.ac, align 8
  br label %.lr.ph
end_hunk_2
begin_hunk_3_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
  %i.hv = load ptr, ptr %.sroa.0101.0112, align 8 ; 2 uses
  %i.hw = add i64 %.0113, 1
  %.not109 = icmp eq ptr %i.hv, %3
  br i1 %.not109, label %.loopexit.loopexit, label %bb.l, !llvm.loop !70

.loopexit.loopexit:                               ; preds = %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %.pre = load ptr, ptr %3, align 8
end_hunk_3
begin_hunk_4_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
  %i.hy = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #21
  %.not.i.i = icmp eq ptr %i.hy, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !71

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
end_hunk_4
begin_hunk_5_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
  %i.ia = load ptr, ptr %.09.i.i87, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i87, i64 noundef 24) #21
  %.not.i.i88 = icmp eq ptr %i.ia, %3
  br i1 %.not.i.i88, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit89, label %.lr.ph.i.i86, !llvm.loop !71

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit89: ; preds = %.lr.ph.i.i86, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
end_hunk_5
begin_hunk_6_@_ZNK6Assimp11X3DImporter22Postprocess_BuildShapeERK19X3DNodeElementShapeRNSt7__cxx114listIjSaIjEEERNS5_IP6aiMeshSaISA_EEERNS5_IP10aiMaterialSaISF_EEE:bb.a
  %.1 = phi i32 [ %.027, %bb.d ], [ %.027, %bb.c ], [ %i.af, %bb.f ], [ %.027, %bb.e ], [ %.027, %bb.b ] ; 2 uses
  %.sroa.016.0 = load ptr, ptr %.sroa.016.028, align 8 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.016.0, %i.d
  br i1 %.not23, label %._crit_edge, label %bb.b, !llvm.loop !72

bb.h:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 232
end_hunk_6
begin_hunk_7_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !82
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !82
  store i8 0, ptr %i.a, align 8, !alias.scope !82
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !82 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !82 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
end_hunk_7
begin_hunk_8_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !82 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
end_hunk_8
begin_hunk_9_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !82 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

end_hunk_9
begin_hunk_10_@llvm.fmuladd.v4f32
!67 = distinct !{!67, !4}
!68 = distinct !{!68, !4}
!69 = distinct !{!69, !4}
!70 = distinct !{!70, !4}
!71 = distinct !{!71, !4}
!72 = distinct !{!72, !4}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!75 = distinct !{!75, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!78 = distinct !{!78, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!81 = distinct !{!81, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!82 = !{!80, !77, !74}
end_hunk_10
