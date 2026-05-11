inline.NumInlined: 754
inline.NumDeleted: 205
begin_hunk_0_@_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE:bb.a
; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20250512::cord_internal::(anonymous namespace)::StackOperations", align 8 ; 15 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.v, label %bb.b, !prof !30

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  br i1 %exitcond.not.3, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new, !llvm.loop !25

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit: ; preds = %.prol.loopexit, %.lr.ph24.i.new, %.critedge.thread.i, %.critedge.i
  %i.bs = phi i32 [ %i.z, %.critedge.i ], [ %i.t, %.critedge.thread.i ], [ %i.z, %.lr.ph24.i.new ], [ %i.z, %.prol.loopexit ]
  %.115.lcssa.i = phi ptr [ %.014.lcssa.i, %.critedge.i ], [ %i.o, %.critedge.thread.i ], [ %.lcssa177.unr, %.prol.loopexit ], [ %i.br, %.lr.ph24.i.new ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 15 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !7
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.dc = zext i8 %i.c to i64
  %i.dd = add nsw i32 %i.d, -1
  %i.de = zext nneg i32 %i.dd to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i, %.preheader.i.i
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  br i1 %i.dh, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %5 = load i32, ptr %4, align 8, !tbaa !21
  %6 = sext i32 %5 to i64
  %.not46.i.i = icmp sgt i64 %indvars.iv.i.i, %6
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 14
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i64                    ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.ep = add i64 %i.eo, %i.cz
  store i64 %i.ep, ptr %.sroa.015.0.i.i.i, align 8, !tbaa !8
  store ptr %.sroa.015.0.i.i.i, ptr %i.df, align 8, !tbaa !14
  %7 = icmp samesign ugt i64 %indvars.iv.i.i, 1
  %indvars.iv.next63.i.i = add nsw i64 %indvars.iv62.i.i, -1
  br i1 %7, label %bb.h, label %.loopexit.i.i, !llvm.loop !49

.loopexit.i.i:                                    ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i, %bb.g
  %.sroa.024.3.i.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.015.0.i.i.i, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE0EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i ] ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE0EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20250512::cord_internal::(anonymous namespace)::StackOperations.0", align 8 ; 15 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.w, label %bb.b, !prof !30

end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  br i1 %exitcond.not.3, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new, !llvm.loop !37

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit: ; preds = %.prol.loopexit, %.lr.ph24.i.new, %.critedge.thread.i, %.critedge.i
  %i.br = phi i32 [ %i.y, %.critedge.i ], [ %i.s, %.critedge.thread.i ], [ %i.y, %.lr.ph24.i.new ], [ %i.y, %.prol.loopexit ]
  %.115.lcssa.i = phi ptr [ %.014.lcssa.i, %.critedge.i ], [ %i.n, %.critedge.thread.i ], [ %.lcssa221.unr, %.prol.loopexit ], [ %i.bq, %.lr.ph24.i.new ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 15 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !7
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.db = zext i8 %i.c to i64
  %i.dc = add nsw i32 %i.d, -1
  %i.dd = zext nneg i32 %i.dc to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i, %.preheader.i.i
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  br i1 %i.dg, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = sext i32 %5 to i64
  %.not45.i.i = icmp sgt i64 %indvars.iv.i.i, %6
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 15
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = zext i8 %i.di to i64
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.eq = add i64 %i.ep, %i.cy
  store i64 %i.eq, ptr %.sroa.015.0.i.i.i, align 8, !tbaa !8
  store ptr %.sroa.015.0.i.i.i, ptr %i.de, align 8, !tbaa !14
  %7 = icmp samesign ugt i64 %indvars.iv.i.i, 1
  %indvars.iv.next59.i.i = add nsw i64 %indvars.iv58.i.i, -1
  br i1 %7, label %bb.h, label %.loopexit.i.i, !llvm.loop !56

.loopexit.i.i:                                    ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i, %bb.g
  %.sroa.024.3.i.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.015.0.i.i.i, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i ] ; 3 uses
end_hunk_9
