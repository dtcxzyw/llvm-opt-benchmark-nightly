begin_hunk_0
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr align 1 %2, i64 %.sroa.speculated65, i1 false)
  %i.cp = add i64 %.sroa.speculated65, %i.bi
  store i64 %i.cp, ptr %i.bt, align 8, !tbaa !22
  %i.cq = sub i64 %1, %.sroa.speculated65         ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.thread101, label %bb.ab

end_hunk_0
begin_hunk_1
_ZNK4absl12lts_202505124Cord4sizeEv.exit:         ; preds = %bb.c, %bb.b
  %i.h = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.h) ; 11 uses
  %i.i = sub i64 %i.h, %spec.select
  %.043 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.i) ; 20 uses
  %i.j = icmp eq i64 %.043, 0
  br i1 %i.j, label %_ZN4absl12lts_202505124Cord9InlineRep8set_dataEPKcm.exit, label %bb.d
end_hunk_1
begin_hunk_2

bb.h:                                             ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ao = sub i64 %.sroa.014.0.i, %.sroa.speculated.i ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread24, label %bb.i

end_hunk_2
begin_hunk_3
_ZN4absl12lts_2025051212_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit: ; preds = %bb.ab
  %i.fw = sub i64 %.0, %.sroa.speculated.i        ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.12.2.ph, i64 %.sroa.speculated.i
  %i.fy = sub i64 %.sroa.0.2.ph, %.sroa.speculated.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 %.sroa.speculated.i
  %i.ga = sub i64 %.sroa.032.0, %.sroa.speculated.i
  %.not54 = icmp eq i64 %i.fw, 0
  br i1 %.not54, label %_ZN4absl12lts_2025051212_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread, label %bb.q, !llvm.loop !469

end_hunk_3
begin_hunk_4
_ZN4absl12lts_2025051212_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit: ; preds = %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit.thread29.i99
  %i.mh = sub i64 %.0, %.sroa.speculated.i        ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.12116.2.ph, i64 %.sroa.speculated.i
  %i.mj = sub i64 %.sroa.0111.2.ph, %.sroa.speculated.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.12.2.ph, i64 %.sroa.speculated.i
  %i.ml = sub i64 %.sroa.0.3.ph, %.sroa.speculated.i
  %.not144 = icmp eq i64 %i.mh, 0
  br i1 %.not144, label %_ZN4absl12lts_2025051212_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES6_Pm.exit.thread, label %bb.ae, !llvm.loop !476

end_hunk_4
