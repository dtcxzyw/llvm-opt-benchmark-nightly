begin_hunk_0
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i = select i1 %.not.i.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ar, !prof !289
  %i.ba = sdiv i64 %i.az, 8
  %i.bb = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i, i64 %i.ba ; 3 uses
  %i.bc = srem i64 %i.az, 8                       ; 6 uses
  %i.bd = sub nsw i64 8, %i.bc                    ; 7 uses
  %.not.i = icmp samesign ult i64 %2, %i.bd
  br i1 %.not.i, label %bb.f, label %bb.e

end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8, !tbaa !225
  %i.be = lshr i64 %i.bd, 3
  %i.bf = icmp ne i64 %i.bc, 0
  %i.bg = zext i1 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.be, %i.bg            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 1 %i.bb, i64 %i.bh, i1 false)
end_hunk_1
begin_hunk_2
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i29 = select i1 %.not.i.i28, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.bt, !prof !289
  %i.cc = sdiv i64 %i.cb, 8
  %i.cd = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i29, i64 %i.cc ; 3 uses
  %i.ce = srem i64 %i.cb, 8                       ; 6 uses
  %i.cf = sub nsw i64 8, %i.ce                    ; 7 uses
  %.not.i30 = icmp samesign ult i64 %2, %i.cf
  br i1 %.not.i30, label %bb.i, label %bb.h

end_hunk_2
begin_hunk_3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !tbaa !225
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = icmp ne i64 %i.ce, 0
  %i.ci = zext i1 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.cg, %i.ci            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr nonnull align 1 %i.cd, i64 %i.cj, i1 false)
end_hunk_3
