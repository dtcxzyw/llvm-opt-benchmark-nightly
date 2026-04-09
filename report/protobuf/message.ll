inline.NumInlined: 3020
inline.NumDeleted: 1291
begin_hunk_0_@_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE9CreateSCCEv:bb.a
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %1 = sub i64 %i.i, %i.j
  %2 = add i64 %1, -8                             ; 2 uses
  %i.u = lshr i64 %2, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.w = sub i64 %i.i, %i.j
  %i.x = and i64 %i.w, -8                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.x
  %scevgep4 = getelementptr i8, ptr %i.h, i64 %i.x
  %bound0 = icmp ult ptr %i.s, %scevgep4
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb:bb.a
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, %4
  %i.c = add i64 %i.b, %i.a
  %i.d = add i64 %i.c, 15
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, %i.f
  %i.j = add i64 %i.i, 7
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #25
  ret void
end_hunk_1
