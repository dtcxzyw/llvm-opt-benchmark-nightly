inline.NumInlined: 2070
inline.NumDeleted: 743
begin_hunk_0_@_ZN2v88internal15TranslatedStateC2EPKNS0_15JavaScriptFrameE:_ZN2v88internal29DeoptimizationLiteralProviderD2Ev.exit
  %i.av = add i16 %i.au, -1
  %i.aw = zext i16 %i.av to i32
  call void @_ZN2v88internal15TranslatedState4InitEPNS0_7IsolateEmmPNS0_24DeoptTranslationIteratorENS0_6TaggedINS0_19ProtectedFixedArrayEEERKNS0_29DeoptimizationLiteralProviderEPNS0_14RegisterValuesEP8_IO_FILEii(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef %i.an, i64 noundef %i.ap, i64 noundef %i.ap, ptr noundef nonnull %2, i64 %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef null, ptr noundef null, i32 noundef %i.aw, i32 noundef %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %4 = load ptr, ptr %2, align 8                  ; 3 uses
  %.not.i.i.i.i10 = icmp eq ptr %4, null
  br i1 %.not.i.i.i.i10, label %_ZN2v88internal24DeoptTranslationIteratorD2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN2v88internal29DeoptimizationLiteralProviderD2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %4 to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %i.bb) #21
  br label %_ZN2v88internal24DeoptTranslationIteratorD2Ev.exit

_ZN2v88internal24DeoptTranslationIteratorD2Ev.exit: ; preds = %_ZN2v88internal29DeoptimizationLiteralProviderD2Ev.exit, %bb.a
end_hunk_0
