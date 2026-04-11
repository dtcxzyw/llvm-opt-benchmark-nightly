inline.NumInlined: 12919
inline.NumDeleted: 5719
begin_hunk_0_@_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker3new:bb.a

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i: ; preds = %bb.b, %bb.f
  %.sroa.03.08.ph.i = phi i1 [ %spec.select9.i, %bb.f ], [ false, %bb.b ] ; 2 uses
  %.sroa.0.037.ph.i = phi ptr [ %6, %bb.f ], [ %.val, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.037.ph.i, i64 272 ; 4 uses
  %i.e = load i64, ptr %.sroa.0.037.ph.i, align 8, !range !5909, !noundef !10 ; 3 uses
  %i.f = icmp ne i64 %i.e, 4
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker3new:bb.a
  %.inv.i.peel = icmp samesign ult i64 %i.e, 2
  %i.h = select i1 %.inv.i.peel, i64 2, i64 %i.g
  switch i64 %i.h, label %.thread.i.peel [
    i64 2, label %.loopexit.a
    i64 3, label %.loopexit34
  ]

.thread.i.peel:                                   ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker3new:bb.a
  %.inv.i = icmp samesign ult i64 %i.k, 2
  %i.n = select i1 %.inv.i, i64 2, i64 %i.m
  switch i64 %i.n, label %.thread.i [
    i64 2, label %.loopexit.a
    i64 3, label %.loopexit34
  ]

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.i: ; preds = %bb.f
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_15ConflictChecker3new:bb.a
    i64 17, label %_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker35can_downgrade_to_snapshot_isolationRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB6_6models6ActionEEB8_.exit.thread17
  ]

.loopexit.a:                                      ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i
  %.sroa.03.08.i.lcssa = phi i1 [ %.sroa.03.08.ph.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i ], [ true, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i ]
  %.sroa.0.037.i.lcssa = phi ptr [ %.sroa.0.037.ph.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i ], [ %.sroa.0.037.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i ]
  %.lcssa = phi ptr [ %i.d, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i ], [ %i.j, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i ]
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.037.i.lcssa, i64 264
  br label %bb.f

.loopexit34:                                      ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i
  %.sroa.03.08.i.lcssa30 = phi i1 [ %.sroa.03.08.ph.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i ], [ true, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i ]
  %.sroa.0.037.i.lcssa28 = phi ptr [ %.sroa.0.037.ph.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i ], [ %.sroa.0.037.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i ]
  %.lcssa26 = phi ptr [ %i.d, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i ], [ %i.j, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i ]
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.037.i.lcssa28, i64 240
  br label %bb.f

bb.f:                                             ; preds = %.loopexit34, %.loopexit.a
  %.sroa.03.08.i32 = phi i1 [ %.sroa.03.08.i.lcssa30, %.loopexit34 ], [ %.sroa.03.08.i.lcssa, %.loopexit.a ]
  %6 = phi ptr [ %.lcssa26, %.loopexit34 ], [ %.lcssa, %.loopexit.a ] ; 2 uses
  %.sink29.in.i = phi ptr [ %5, %.loopexit34 ], [ %4, %.loopexit.a ]
  %.sink29.i = load i8, ptr %.sink29.in.i, align 8, !range !349, !noundef !10
  %i.s = trunc nuw i8 %.sink29.i to i1
  %not..i = xor i1 %i.s, true
  %spec.select9.i = select i1 %not..i, i1 true, i1 %.sroa.03.08.i32 ; 2 uses
  %i.t = icmp eq ptr %6, %i.c
  br i1 %i.t, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.outer.i

.thread.i:                                        ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.i
end_hunk_3
