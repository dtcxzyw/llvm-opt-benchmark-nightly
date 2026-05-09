inline.NumInlined: 29
inline.NumDeleted: 13
begin_hunk_0_@_ZN6icu_78L10checkAliasEPKcjPKDsiaPFvPvS1_S1_ES4_P10UErrorCode:bb.a
  %i.u = sext i32 %.030 to i64
  %i.v = getelementptr inbounds i8, ptr %i.b, i64 %i.u
  store i8 0, ptr %i.v, align 1
  %.not34 = icmp eq i8 %4, 0                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.w = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
end_hunk_0
begin_hunk_1_@_ZN6icu_78L10checkAliasEPKcjPKDsiaPFvPvS1_S1_ES4_P10UErrorCode:bb.a
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #14 ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  %8 = select i1 %.not34, i32 0, i32 4
  %i.ae = add i32 %8, %i.ad
  %i.af = add i32 %i.ae, %i.ab                    ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 199
  br i1 %i.ag, label %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.thread.i, label %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.i
end_hunk_1
begin_hunk_2_@_ZN6icu_78L10checkAliasEPKcjPKDsiaPFvPvS1_S1_ES4_P10UErrorCode:bb.a
  %i.an = ashr exact i64 %sext, 32                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 16 %i.b, i64 %i.an, i1 false)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  %sext32.i.i = select i1 %.not34, i64 1, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ak, i64 %sext32.i.i, i1 false)
  %.pre.i = load i32, ptr %7, align 4
  %i.ap = icmp sgt i32 %.pre.i, 0
end_hunk_2
