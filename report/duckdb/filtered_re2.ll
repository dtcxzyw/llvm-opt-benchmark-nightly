inline.NumInlined: 326
inline.NumDeleted: 200
begin_hunk_0_@_ZN10duckdb_re211FilteredRE2C2Ev
define hidden void @_ZN10duckdb_re211FilteredRE2C2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 25)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 25, i1 false)
  %1 = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #11
          to label %2 unwind label %3             ; 3 uses

2:                                                ; preds = %bb.a
  invoke void @_ZN10duckdb_re213PrefilterTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.b unwind label %5

bb.b:                                             ; preds = %2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !7
  ret void

3:                                                ; preds = %bb.a
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %1) #12
  br label %bb.c

bb.c:                                             ; preds = %5, %3
  %.pn = phi { ptr, i32 } [ %6, %5 ], [ %4, %3 ]
  %.pr = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re211FilteredRE2C2Ev:bb.a
  br label %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
end_hunk_1
begin_hunk_2_@_ZN10duckdb_re211FilteredRE2C2Ei
define hidden void @_ZN10duckdb_re211FilteredRE2C2Ei(ptr noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 25)) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 25, i1 false)
  %2 = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #11
          to label %3 unwind label %4             ; 3 uses

3:                                                ; preds = %bb.a
  invoke void @_ZN10duckdb_re213PrefilterTreeC1Ei(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1)
          to label %bb.b unwind label %6

bb.b:                                             ; preds = %3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8, !tbaa !7
  ret void

4:                                                ; preds = %bb.a
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  br label %bb.c

bb.c:                                             ; preds = %6, %4
  %.pn = phi { ptr, i32 } [ %7, %6 ], [ %5, %4 ]
  %.pr = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit, label %bb.d
end_hunk_2
begin_hunk_3_@_ZN10duckdb_re211FilteredRE2C2Ei:bb.a
  br label %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %.pn
}

declare void @_ZN10duckdb_re213PrefilterTreeC1Ei(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) unnamed_addr #2
end_hunk_3
begin_hunk_4_@_ZNK10duckdb_re211FilteredRE210AllMatchesERKNS_11StringPieceERKSt6vectorIiSaIiEEPS6_:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre22 = load ptr, ptr %5, align 8, !tbaa !76  ; 3 uses
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %bb.e
end_hunk_4
begin_hunk_5_@_ZNK10duckdb_re211FilteredRE210AllMatchesERKNS_11StringPieceERKSt6vectorIiSaIiEEPS6_:bb.a

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.am, ptr %3, align 8, !tbaa !76
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !79
  %.pre = load ptr, ptr %5, align 8, !tbaa !76
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %bb.d, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
end_hunk_5
