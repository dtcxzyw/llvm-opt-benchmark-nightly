inline.NumInlined: 2100
inline.NumDeleted: 1255
begin_hunk_0_@_ZNK6duckdb26PhysicalTableInOutFunction16GetOperatorStateERNS_16ExecutionContextE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !195  ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !196  ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
end_hunk_0
begin_hunk_1_@_ZNK6duckdb26PhysicalTableInOutFunction16GetOperatorStateERNS_16ExecutionContextE:bb.a

_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #23
          to label %.noexc26 unwind label %bb.p, !inline_history !197

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i, %bb.c
  %i.aa = phi ptr [ null, %bb.c ], [ %i.z, %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !196
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !195
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !118
  %i.ae = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11ColumnIndexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.t, ptr %i.s, ptr noundef %i.aa)
          to label %bb.g unwind label %bb.e, !inline_history !198

bb.e:                                             ; preds = %.noexc26
end_hunk_1
begin_hunk_2_@_ZNK6duckdb26PhysicalTableInOutFunction22GetGlobalOperatorStateERNS_13ClientContextE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !195  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !196  ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
end_hunk_2
begin_hunk_3_@_ZNK6duckdb26PhysicalTableInOutFunction22GetGlobalOperatorStateERNS_13ClientContextE:bb.a

_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23
          to label %.noexc7 unwind label %bb.o, !inline_history !197

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.q = phi ptr [ null, %bb.b ], [ %i.p, %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !195
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !118
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11ColumnIndexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.j, ptr %i.i, ptr noundef %i.q)
          to label %bb.f unwind label %bb.d, !inline_history !198

bb.d:                                             ; preds = %.noexc7
end_hunk_3
