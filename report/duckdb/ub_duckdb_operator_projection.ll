inline.NumInlined: 2100
inline.NumDeleted: 1255
begin_hunk_0_@_ZNK6duckdb26PhysicalTableInOutFunction16GetOperatorStateERNS_16ExecutionContextE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !195  ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !196  ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
end_hunk_0
begin_hunk_1_@_ZNK6duckdb26PhysicalTableInOutFunction16GetOperatorStateERNS_16ExecutionContextE:bb.a

_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #23
          to label %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge unwind label %bb.p, !inline_history !197

_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !116
  %.pre51 = load ptr, ptr %i.r, align 8, !tbaa !116
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge, %bb.c
  %9 = phi ptr [ %i.s, %bb.c ], [ %.pre51, %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge ]
  %10 = phi ptr [ %i.t, %bb.c ], [ %.pre, %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge ]
  %i.aa = phi ptr [ null, %bb.c ], [ %i.z, %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge ] ; 4 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !196
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !195
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !118
  %i.ae = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11ColumnIndexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %10, ptr %9, ptr noundef %i.aa)
          to label %bb.g unwind label %bb.e, !inline_history !198

bb.e:                                             ; preds = %.noexc26
end_hunk_1
begin_hunk_2_@_ZNK6duckdb26PhysicalTableInOutFunction22GetGlobalOperatorStateERNS_13ClientContextE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !195  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !196  ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
end_hunk_2
begin_hunk_3_@_ZNK6duckdb26PhysicalTableInOutFunction22GetGlobalOperatorStateERNS_13ClientContextE:bb.a

_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23
          to label %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i..noexc7_crit_edge unwind label %bb.o, !inline_history !197

_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i..noexc7_crit_edge: ; preds = %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !116
  %.pre24 = load ptr, ptr %i.h, align 8, !tbaa !116
  br label %.noexc7

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i..noexc7_crit_edge, %bb.b
  %8 = phi ptr [ %i.i, %bb.b ], [ %.pre24, %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i..noexc7_crit_edge ]
  %9 = phi ptr [ %i.j, %bb.b ], [ %.pre, %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i..noexc7_crit_edge ]
  %i.q = phi ptr [ null, %bb.b ], [ %i.p, %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i..noexc7_crit_edge ] ; 4 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !195
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !118
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11ColumnIndexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %9, ptr %8, ptr noundef %i.q)
          to label %bb.f unwind label %bb.d, !inline_history !198

bb.d:                                             ; preds = %.noexc7
end_hunk_3
