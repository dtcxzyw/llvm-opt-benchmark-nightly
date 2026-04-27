inline.NumInlined: 46
inline.NumDeleted: 25
begin_hunk_0_@_ZN6icu_7819CollationDataWriter5writeEaPKhRKNS_13CollationDataERKNS_17CollationSettingsEPKviPiPhiR10UErrorCode:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.f
  %.0219 = phi i32 [ %i.q, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ], [ %i.ai, %bb.j ] ; 2 uses
  %.not233 = phi i1 [ false, %bb.f ], [ true, %bb.h ], [ false, %bb.i ], [ false, %bb.j ] ; 6 uses
  %.1209 = phi i32 [ 20, %bb.f ], [ %.246, %bb.h ], [ %spec.select, %bb.i ], [ 17, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
end_hunk_0
begin_hunk_1_@_ZN6icu_7819CollationDataWriter5writeEaPKhRKNS_13CollationDataERKNS_17CollationSettingsEPKviPiPhiR10UErrorCode:bb.a
  %i.dq = getelementptr i8, ptr %6, i64 48        ; 3 uses
  store i32 %.4201, ptr %i.dq, align 4
  %i.dr = shl nsw i32 %5, 2
  %i.ds = add nsw i32 %.4201, %i.dr               ; 5 uses
  %i.dt = getelementptr i8, ptr %6, i64 52        ; 3 uses
  store i32 %i.ds, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  %i.dw = shl nsw i32 %i.dv, 1
  %i.dx = add nsw i32 %i.ds, %i.dw                ; 5 uses
  %.5202 = select i1 %.not233, i32 %i.ds, i32 %i.dx
  %i.dy = getelementptr i8, ptr %6, i64 56        ; 2 uses
  store i32 %.5202, ptr %i.dy, align 4
end_hunk_1
begin_hunk_2_@_ZN6icu_7819CollationDataWriter5writeEaPKhRKNS_13CollationDataERKNS_17CollationSettingsEPKviPiPhiR10UErrorCode:bb.a
  br i1 %or.cond6.not, label %.thread267, label %bb.ai

.thread267:                                       ; preds = %bb.ah
  %13 = add i32 %.0195, %i.dv
  %i.ek = shl i32 %13, 1
  %i.el = add i32 %i.ek, %i.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.aj

end_hunk_2
begin_hunk_3_@_ZN6icu_7819CollationDataWriter5writeEaPKhRKNS_13CollationDataERKNS_17CollationSettingsEPKviPiPhiR10UErrorCode:bb.a
  br label %bb.ba

bb.aj:                                            ; preds = %.thread267, %bb.ad, %bb.ac
  %.7 = phi i32 [ %i.dx, %bb.ad ], [ %i.el, %.thread267 ], [ %i.ds, %bb.ac ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  store i32 %.7, ptr %i.em, align 4
  %i.en = shl nsw i32 %.0219, 1
  %i.eo = add nsw i32 %.7, %i.en                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %12, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6icu_7819CollationDataWriter5writeEaPKhRKNS_13CollationDataERKNS_17CollationSettingsEPKviPiPhiR10UErrorCode:bb.a
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = select i1 %i.fg, i32 %i.fk, i32 %i.fi
  %14 = add i32 %i.fl, %.0219
  %i.fm = shl i32 %14, 1
  %i.fn = add i32 %i.fm, %.7
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
end_hunk_4
