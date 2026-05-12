inline.NumInlined: 275
inline.NumDeleted: 127
begin_hunk_0_@_ZN11NCoderMixer14CCoderMixer2MT11SetBindInfoERKNS_9CBindInfoE:bb.a
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 144
end_hunk_0
begin_hunk_1_@_ZN11NCoderMixer14CCoderMixer2MT11SetBindInfoERKNS_9CBindInfoE:bb.a

.noexc:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %3 = load ptr, ptr %i.g, align 8, !tbaa !65
  store ptr %3, ptr %i.t, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i16, ptr %i.l, align 8
  store i16 %i.v, ptr %i.u, align 8
end_hunk_1
begin_hunk_2_@_ZN11NCoderMixer14CCoderMixer2MT11SetBindInfoERKNS_9CBindInfoE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %4 = load ptr, ptr %i.j, align 8, !tbaa !65
  store ptr %4, ptr %i.y, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.aa = load i16, ptr %i.m, align 8
  store i16 %i.aa, ptr %i.z, align 8
end_hunk_2
