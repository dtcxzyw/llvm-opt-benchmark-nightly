inline.NumInlined: 2616
inline.NumDeleted: 1036
begin_hunk_0_@_ZN2v88internal18FastKeyAccumulator11GetKeysFastENS0_17GetKeysConversionE:bb.a
  %i.ac = load atomic volatile i32, ptr %i.ab monotonic, align 4
  %i.ad = and i32 %i.ac, 1023
  %i.ae = icmp eq i32 %i.ad, 1023
  br i1 %i.ae, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_ZN2v88internal18FastKeyAccumulator11GetKeysFastENS0_17GetKeysConversionE:bb.a
  %i.ag = add i64 %i.i, 15
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %2 = load ptr, ptr %0, align 8                  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 864
  %i.ak = load i64, ptr %i.aj, align 8
  %.not.i = icmp eq i64 %i.ai, %i.ak
  br i1 %.not.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1856
  %i.am = load i64, ptr %i.al, align 8
  %.not50.i = icmp eq i64 %i.ai, %i.am
  br i1 %.not50.i, label %.critedge.i, label %.critedge
end_hunk_1
begin_hunk_2_@_ZN2v88internal18FastKeyAccumulator11GetKeysFastENS0_17GetKeysConversionE:bb.a
_ZN2v88internal18FastKeyAccumulator37GetOwnKeysWithUninitializedEnumLengthEv.exit: ; preds = %bb.h, %bb.i
  %.sroa.032.0.i = phi ptr [ %i.bc, %bb.i ], [ %i.ax, %bb.h ] ; 2 uses
  %i.bd = icmp eq ptr %.sroa.032.0.i, null
  br i1 %i.bd, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal18FastKeyAccumulator37GetOwnKeysWithUninitializedEnumLengthEv.exit.thread53, %_ZN2v88internal18FastKeyAccumulator37GetOwnKeysWithUninitializedEnumLengthEv.exit
  %.sroa.032.0.i55 = phi ptr [ %i.av, %_ZN2v88internal18FastKeyAccumulator37GetOwnKeysWithUninitializedEnumLengthEv.exit.thread53 ], [ %.sroa.032.0.i, %_ZN2v88internal18FastKeyAccumulator37GetOwnKeysWithUninitializedEnumLengthEv.exit ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal18FastKeyAccumulator11GetKeysFastENS0_17GetKeysConversionE:bb.a
  store i8 %i.bx, ptr %i.bw, align 2
  br label %bb.m

.critedge:                                        ; preds = %bb.g, %_ZN2v88internal18FastKeyAccumulator37GetOwnKeysWithUninitializedEnumLengthEv.exit, %bb.e
  %3 = load ptr, ptr %0, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.bz = load i8, ptr %i.by, align 1, !range !5, !noundef !6
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_122GetOwnKeysWithElementsILb1EEENS0_11MaybeHandleINS0_10FixedArrayEEEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_17GetKeysConversionEb(ptr noundef %3, ptr nonnull %.sroa.0.0.copyload.i11, i32 noundef %1, i1 noundef zeroext %i.ca)
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %.critedge, %bb.l, %bb.a, %bb.b
end_hunk_3
begin_hunk_4_@_ZN2v88internal18FastKeyAccumulator11GetKeysFastENS0_17GetKeysConversionE:bb.a
  ret ptr %.sroa.034.1
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal18FastKeyAccumulator14MayHaveSymbolsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 51
end_hunk_4
begin_hunk_5_@_ZN2v88internal18FastKeyAccumulator29GetKeysWithPrototypeInfoCacheENS0_17GetKeysConversionE:bb.a
  %i.di = add i64 %i.dh, 15
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load atomic volatile i32, ptr %i.dj acquire, align 4
  %.fr.i = freeze i32 %i.dk
  %i.dl = lshr i32 %.fr.i, 10
  %i.dm = and i32 %i.dl, 1023                     ; 3 uses
  %i.dn = icmp ne i32 %i.dm, 0
  %or.cond.i39 = or i1 %i.dn, %i.dc
end_hunk_5
begin_hunk_6_@_ZSt16__insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_T0_:bb.a
  %.pre.i = inttoptr i64 %.sroa.03.020.i to ptr
  br label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %._crit_edge.loopexit.i, %bb.c
  %.sink = phi ptr [ %i.b, %bb.c ], [ %i.f, %bb.d ], [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.b, %.lr.ph.i.i.i.i.i ]
  store atomic volatile i64 %i.x, ptr %.sink monotonic, align 8
  %.sroa.010.0 = add i64 %.sroa.010.029, 8        ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN2v88internal6String10SlowEqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_7
