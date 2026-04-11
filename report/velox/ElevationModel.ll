inline.NumInlined: 146
inline.NumDeleted: 91
begin_hunk_0_@_ZN4geos9operation9overlayng14ElevationModelC2ERKNS_4geom8EnvelopeEii:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.c, i8 0, i64 26, i1 false)
  store double 0x7FF8000000000000, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load double, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %5 = fcmp uno double %4, 0.000000e+00           ; 2 uses
  %6 = load double, ptr %0, align 8
  %7 = fsub double %4, %6
  %.0.i = select i1 %5, double 0.000000e+00, double %7
  %8 = sitofp i32 %2 to double
  %9 = fdiv double %.0.i, %8                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %9, ptr %i.f, align 8, !tbaa !35
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load double, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load double, ptr %12, align 8
  %14 = fsub double %11, %13
  %.0.i5 = select i1 %5, double 0.000000e+00, double %14
  %15 = sitofp i32 %3 to double
  %16 = fdiv double %.0.i5, %15                   ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %16, ptr %17, align 8, !tbaa !36
  %i.g = fcmp ugt double %9, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN4geos9operation9overlayng14ElevationModelC2ERKNS_4geom8EnvelopeEii:bb.a

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ 1, %bb.b ], [ %2, %bb.a ]
  %i.k = fcmp ugt double %16, 0.000000e+00
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE6resizeEm
define linkonce_odr void @_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !24     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE6resizeEm:bb.a
bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = sdiv exact i64 %i.m, 24                  ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE6resizeEm:bb.a
  %i.r = mul nuw nsw i64 %i.i, 24                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !37
  br label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE6resizeEm:bb.a
.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !39, !alias.scope !40
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !44

_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE6resizeEm:bb.a
_ZNSt12_Vector_baseIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE13_M_deallocateEPS4_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !38
  br label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE6resizeEm:bb.a
  br i1 %.not.i4, label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN4geos9operation9overlayng14ElevationModel13ElevationCellES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4geos9operation9overlayng14ElevationModel13ElevationCellES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !37
  br label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE17_M_default_appendEm.exit

_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN4geos9operation9overlayng14ElevationModel13ElevationCellES4_EvT_S6_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE13_M_deallocateEPS4_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN4geos9operation9overlayng14ElevationModel13ElevationCellEmS4_ET_S6_T0_RSaIT1_E.exit.i, %bb.f
end_hunk_7
begin_hunk_8_@_ZN4geos9operation9overlayng14ElevationModel3addEddd:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 1, ptr %i.b, align 1, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
end_hunk_8
begin_hunk_9_@_ZN4geos9operation9overlayng14ElevationModel3addEddd:bb.a
  %i.f = load double, ptr %0, align 8, !tbaa !11
  %i.g = fsub double %1, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load double, ptr %i.h, align 8, !tbaa !35
  %i.j = fdiv double %i.g, %i.i
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = add nsw i32 %i.d, -1
end_hunk_9
begin_hunk_10_@_ZN4geos9operation9overlayng14ElevationModel3addEddd:bb.a
  %i.s = load double, ptr %i.r, align 8, !tbaa !15
  %i.t = fsub double %2, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load double, ptr %i.u, align 8, !tbaa !36
  %i.w = fdiv double %i.t, %i.v
  %i.x = fptosi double %i.w to i32                ; 2 uses
  %i.y = add nsw i32 %i.p, -1
end_hunk_10
begin_hunk_11_@_ZN4geos9operation9overlayng14ElevationModel7getCellEdd:bb.a
  %i.d = load double, ptr %0, align 8, !tbaa !11
  %i.e = fsub double %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load double, ptr %i.f, align 8, !tbaa !35
  %i.h = fdiv double %i.e, %i.g
  %i.i = fptosi double %i.h to i32                ; 2 uses
  %i.j = add nsw i32 %i.b, -1
end_hunk_11
begin_hunk_12_@_ZN4geos9operation9overlayng14ElevationModel7getCellEdd:bb.a
  %i.q = load double, ptr %i.p, align 8, !tbaa !15
  %i.r = fsub double %2, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load double, ptr %i.s, align 8, !tbaa !36
  %i.u = fdiv double %i.r, %i.t
  %i.v = fptosi double %i.u to i32                ; 2 uses
  %i.w = add nsw i32 %i.n, -1
end_hunk_12
begin_hunk_13_@_ZN4geos9operation9overlayng14ElevationModel4getZEdd:bb.a
  %i.ab = load double, ptr %0, align 8, !tbaa !11
  %i.ac = fsub double %1, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !35
  %i.af = fdiv double %i.ac, %i.ae
  %i.ag = fptosi double %i.af to i32              ; 2 uses
  %i.ah = add nsw i32 %i.z, -1
end_hunk_13
begin_hunk_14_@_ZN4geos9operation9overlayng14ElevationModel4getZEdd:bb.a
  %i.ao = load double, ptr %i.an, align 8, !tbaa !15
  %i.ap = fsub double %2, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !36
  %i.as = fdiv double %i.ap, %i.ar
  %i.at = fptosi double %i.as to i32              ; 2 uses
  %i.au = add nsw i32 %i.al, -1
end_hunk_14
begin_hunk_15_@_ZN4geos9operation9overlayng14ElevationModel9populateZERNS_4geom8GeometryE:bb.a
bb.a:
  %2 = alloca %class.Filter.10, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.b = load i8, ptr %i.a, align 1, !tbaa !46, !range !53, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

end_hunk_15
begin_hunk_16_@_ZZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryEEN6Filter9filter_roERKNS3_18CoordinateSequenceEm:bb.a

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 81
  store i8 1, ptr %i.s, align 1, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !28   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
end_hunk_16
begin_hunk_17_@_ZZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryEEN6Filter9filter_roERKNS3_18CoordinateSequenceEm:bb.a
  %i.w = load double, ptr %i.l, align 8, !tbaa !11
  %i.x = fsub double %i.m, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.z = load double, ptr %i.y, align 8, !tbaa !35
  %i.aa = fdiv double %i.x, %i.z
  %i.ab = fptosi double %i.aa to i32              ; 2 uses
  %i.ac = add nsw i32 %i.u, -1
end_hunk_17
begin_hunk_18_@_ZZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryEEN6Filter9filter_roERKNS3_18CoordinateSequenceEm:bb.a
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !15
  %i.ak = fsub double %i.o, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.am = load double, ptr %i.al, align 8, !tbaa !36
  %i.an = fdiv double %i.ak, %i.am
  %i.ao = fptosi double %i.an to i32              ; 2 uses
  %i.ap = add nsw i32 %i.ag, -1
end_hunk_18
begin_hunk_19_@llvm.umin.i64
!32 = !{!"_ZTSNSt12_Vector_baseIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE12_Vector_implE", !25, i64 0}
!33 = !{!29, !4, i64 36}
!34 = !{!29, !8, i64 88}
!35 = !{!29, !8, i64 40}
!36 = !{!29, !8, i64 48}
!37 = !{!25, !26, i64 8}
!38 = !{!25, !26, i64 16}
!39 = !{i64 0, i64 4, !3, i64 8, i64 8, !7, i64 16, i64 8, !7}
!40 = !{!41, !43}
!41 = distinct !{!41, !42, !"_ZSt19__relocate_object_aIN4geos9operation9overlayng14ElevationModel13ElevationCellES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!42 = distinct !{!42, !"_ZSt19__relocate_object_aIN4geos9operation9overlayng14ElevationModel13ElevationCellES4_SaIS4_EEvPT_PT0_RT1_"}
!43 = distinct !{!43, !42, !"_ZSt19__relocate_object_aIN4geos9operation9overlayng14ElevationModel13ElevationCellES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!29, !22, i64 81}
!47 = !{!48, !4, i64 0}
!48 = !{!"_ZTSN4geos9operation9overlayng14ElevationModel13ElevationCellE", !4, i64 0, !8, i64 8, !8, i64 16}
!49 = !{!48, !8, i64 8}
end_hunk_19
