begin_hunk_0
  %.not74 = icmp eq i8 %i.cc, 0
  br i1 %.not74, label %.thread88, label %.lr.ph95, !llvm.loop !19

bb.aa:                                            ; preds = %.thread88, %bb.n
  %i.cd = icmp ult i32 %.156, 65536
  %i.ce = select i1 %i.cd, i32 1, i32 2
  %i.cf = add nuw nsw i32 %i.ce, %.05997          ; 2 uses
  %.not78 = icmp slt i32 %i.cf, %3
  br i1 %.not78, label %bb.f, label %.critedge, !llvm.loop !21

11:                                               ; preds = %_ZN6icu_789HashtableD2Ev.exit
  call void @_ZN6icu_7818UnicodeSetIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.ab

.critedge:                                        ; preds = %bb.aa, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit
  %i.cg = load i32, ptr %4, align 4
end_hunk_0
