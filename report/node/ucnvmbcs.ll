inline.NumInlined: 46
inline.NumDeleted: 15
begin_hunk_0_@_ZL13ucnv_MBCSOpenP10UConverterP18UConverterLoadArgsP10UErrorCode:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 252
  %i.f = load i8, ptr %i.e, align 4               ; 2 uses
  %i.g = icmp eq i8 %i.f, -37
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %4 = load i32, ptr %3, align 4
  %i.h = and i32 %4, -17                          ; 2 uses
  store i32 %i.h, ptr %3, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %.not40 = icmp eq i32 %7, 0
  br i1 %.not40, label %_ZL15_EBCDICSwapLFNLP20UConverterSharedDataP10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @umtx_lock_78(ptr noundef null) #17
end_hunk_0
begin_hunk_1_@_ZL13ucnv_MBCSOpenP10UConverterP18UConverterLoadArgsP10UErrorCode:bb.a
  br i1 %i.do, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.dp = load i32, ptr %5, align 4
  %i.dq = and i32 %i.dp, -17                      ; 2 uses
  store i32 %i.dq, ptr %5, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.dq, ptr %i.dr, align 8
  br label %_ZL15_EBCDICSwapLFNLP20UConverterSharedDataP10UErrorCode.exit

_ZL15_EBCDICSwapLFNLP20UConverterSharedDataP10UErrorCode.exit: ; preds = %bb.x, %.thread.i, %bb.z, %bb.e, %bb.d
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8            ; 9 uses
  %i.du = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dt, ptr noundef nonnull dereferenceable(1) @.str.2) #18
end_hunk_1
