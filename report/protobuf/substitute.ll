inline.NumInlined: 111
inline.NumDeleted: 67
begin_hunk_0_@_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.y = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.y(i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 91, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit unwind label %bb.m

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m:bb.a
  %i.bb = zext nneg i8 %i.ay to i64
  %i.bc = getelementptr [16 x i8], ptr %3, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -768
  %.sroa.0.0.copyload = load i64, ptr %i.bd, align 8, !tbaa !20 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.bc, i64 -760
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.be = icmp sgt i64 %.sroa.0.0.copyload, 1
  br i1 %i.be, label %bb.s, label %bb.t, !prof !22

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.04297, ptr align 1 %.sroa.4.0.copyload, i64 %.sroa.0.0.copyload, i1 false)
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m:bb.a
  %.1 = phi i64 [ %i.aw, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit ], [ %i.aw, %bb.w ], [ %.098, %bb.v ], [ %.098, %bb.x ]
  %i.bl = add i64 %.1, 1                          ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %1
  br i1 %i.bm, label %.lr.ph99, label %.thread88, !llvm.loop !23

.thread88:                                        ; preds = %bb.b, %bb.e, %bb.d, %bb.y, %bb.a, %._crit_edge
  ret void
end_hunk_2
begin_hunk_3_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !24
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

end_hunk_3
begin_hunk_4_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %i.d, ptr %i.a, align 8, !tbaa !20
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !19
  %i.g = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.g, ptr %i.b, align 8, !tbaa !7
  br label %._crit_edge.i

end_hunk_4
begin_hunk_5_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !15
  %i.l = load ptr, ptr %0, align 8, !tbaa !19
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051219substitute_internal3ArgC2EPKv:bb.a
  store i8 %i.f, ptr %i.g, align 1, !tbaa !7
  %i.h = lshr i64 %.0, 4                          ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !25

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %.010, i64 -2
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051219substitute_internal3ArgC2EPKv:bb.a
bb.e:                                             ; preds = %bb.a, %bb.d
  %.sink15 = phi i64 [ %i.m, %bb.d ], [ 4, %bb.a ]
  %.sink = phi ptr [ %i.j, %bb.d ], [ @.str.3, %bb.a ]
  store i64 %.sink15, ptr %0, align 8, !tbaa !20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  ret void
}

end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051219substitute_internal3ArgC2ENS0_3HexE:bb.a
  store i8 %i.d, ptr %i.e, align 1, !tbaa !7
  %i.f = lshr i64 %.015, 4                        ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !26

bb.c:                                             ; preds = %bb.b
  %.sroa.418.8.extract.shift = lshr i64 %2, 8
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051219substitute_internal3ArgC2ENS0_3HexE:bb.a
  %.pre-phi = phi i64 [ %i.n, %bb.e ], [ %i.n, %bb.d ], [ %i.h, %bb.c ]
  %.0 = phi ptr [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.e, %bb.c ]
  %i.q = sub i64 %i.g, %.pre-phi
  store i64 %i.q, ptr %0, align 8, !tbaa !20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  ret void
}

end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051219substitute_internal3ArgC2ENS0_3DecE:bb.a
  store i8 %i.j, ptr %i.k, align 1, !tbaa !7
  %i.l = udiv i64 %.02833, 10                     ; 2 uses
  %i.m = icmp ugt i64 %.02833, 99
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.028.lcssa = phi i64 [ %1, %bb.a ], [ %i.l, %.lr.ph ]
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051219substitute_internal3ArgC2ENS0_3DecE:bb.a
  %i.z = ptrtoint ptr %i.a to i64
  %i.aa = ptrtoint ptr %.4 to i64
  %i.ab = sub i64 %i.z, %i.aa
  store i64 %i.ab, ptr %0, align 8, !tbaa !20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.4, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  ret void
}

end_hunk_11
begin_hunk_12_@llvm.memset.p0.i64
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!16, !11, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!11, !11, i64 0}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = distinct !{!23, !14}
!24 = !{!17, !11, i64 0}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
end_hunk_12
