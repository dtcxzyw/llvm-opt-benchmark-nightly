inline.NumInlined: 190
inline.NumDeleted: 110
begin_hunk_0_@_ZN2v88internal26ExternalizeStringExtension11ExternalizeERKNS_20FunctionCallbackInfoINS_5ValueEEE:bb.a

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit35: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 9 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = and i64 %i.g, 3
  %i.i = icmp eq i64 %i.h, 1
end_hunk_0
begin_hunk_1_@_ZN2v88internal26ExternalizeStringExtension11ExternalizeERKNS_20FunctionCallbackInfoINS_5ValueEEE:bb.a

bb.d:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %.not = icmp eq i16 %i.z, 0
  %i.aq = load i64, ptr %i.f, align 8
  %i.ar = add i64 %i.aq, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
end_hunk_1
begin_hunk_2_@_ZN2v88internal26ExternalizeStringExtension11ExternalizeERKNS_20FunctionCallbackInfoINS_5ValueEEE:bb.a

bb.e:                                             ; preds = %bb.d
  %i.aw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.av) #11 ; 2 uses
  %1 = load i64, ptr %i.f, align 8
  tail call void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jj(i64 %1, ptr noundef nonnull %i.aw, i32 noundef 0, i32 noundef %i.au) #9
  %i.ax = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %i.ay, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal26ExternalizeStringExtension11ExternalizeERKNS_20FunctionCallbackInfoINS_5ValueEEE:bb.a
bb.f:                                             ; preds = %bb.d
  %i.bf = shl nuw nsw i64 %i.av, 1
  %i.bg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bf) #11 ; 2 uses
  %2 = load i64, ptr %i.f, align 8
  tail call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64 %2, ptr noundef nonnull %i.bg, i32 noundef 0, i32 noundef %i.au) #9
  %i.bh = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr null, ptr %i.bi, align 8
end_hunk_3
