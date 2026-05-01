inline.NumInlined: 342
inline.NumDeleted: 180
begin_hunk_0_@_ZN6icu_788message215FunctionOptionsC2EONS_7UVectorER10UErrorCode:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.s = phi ptr [ %i.p, %bb.e ], [ %i.z, %bb.f ] ; 8 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message222ResolvedFunctionOptionE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16)>, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i16 2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 72
end_hunk_0
begin_hunk_1_@_ZN6icu_788message215FunctionOptions12mergeOptionsEOS1_R10UErrorCode:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message222ResolvedFunctionOptionE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16)>, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i16 2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6icu_788message215FunctionOptions12mergeOptionsEOS1_R10UErrorCode:bb.a

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message222ResolvedFunctionOptionE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16)>, ptr %i.cc, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i16 2, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 72 ; 2 uses
end_hunk_2
