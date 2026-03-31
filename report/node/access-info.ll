begin_hunk_0
  store ptr %i.et, ptr %12, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i8 0, i64 24, i1 false)
  br label %13

bb.q:                                             ; preds = %bb.p
  %i.ev = call noundef ptr @_ZNK2v88internal14Representation8MnemonicEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
end_hunk_0
begin_hunk_1
  %i.ez = shl nsw i64 %i.ey, 17
  %i.fa = or disjoint i64 %i.ez, %i.ew
  %i.fb = or i64 %i.fa, %i.ex
  %i.fc = or i64 %i.fb, %.0.i                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.fe = load ptr, ptr %i.fd, align 8
  store ptr %i.fe, ptr %12, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i8 0, i64 24, i1 false)
  switch i8 %i.dc, label %bb.y [
    i8 1, label %bb.r
    i8 2, label %13
    i8 3, label %bb.s
  ]

end_hunk_1
begin_hunk_2
  store ptr %i.fl, ptr %i.a, align 8
  call void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.y

13:                                               ; preds = %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit.thread, %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit
  %14 = phi ptr [ %i.eu, %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit.thread ], [ %i.ff, %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit ]
  %15 = phi ptr [ %i.es, %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit.thread ], [ %i.fd, %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit ]
  %16 = phi i64 [ %i.er, %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit.thread ], [ %i.fc, %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit ]
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 208
  %.sroa.046.0.copyload = load i64, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %20 = load ptr, ptr %1, align 8
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8544
  %22 = load ptr, ptr %21, align 8
  %.sroa.040.0.copyload = load ptr, ptr %10, align 8 ; 2 uses
  %23 = call noundef ptr @_ZNK2v88internal8compiler23CompilationDependencies41FieldRepresentationDependencyOffTheRecordENS1_6MapRefES3_NS0_13InternalIndexENS0_14RepresentationE(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr %.sroa.040.0.copyload, ptr %.sroa.040.0.copyload, i64 %i.bp, i8 2) #23
  store ptr %23, ptr %i.b, align 8
  call void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.y

bb.s:                                             ; preds = %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit
end_hunk_2
begin_hunk_3
  store ptr null, ptr %i.ho, align 8, !alias.scope !189
  br label %.critedge

bb.y:                                             ; preds = %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit, %bb.w, %.thread, %13, %bb.r
  %i.hp = phi ptr [ %i.ff, %bb.r ], [ %14, %13 ], [ %i.ff, %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit ], [ %i.ff, %.thread ], [ %i.ff, %bb.w ]
  %i.hq = phi ptr [ %i.fd, %bb.r ], [ %15, %13 ], [ %i.fd, %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit ], [ %i.fd, %.thread ], [ %i.fd, %bb.w ] ; 2 uses
  %i.hr = phi i64 [ %i.fc, %bb.r ], [ %16, %13 ], [ %i.fc, %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit ], [ %i.fc, %.thread ], [ %i.fc, %bb.w ] ; 2 uses
  %.sroa.086.2 = phi i64 [ 0, %bb.r ], [ 0, %13 ], [ 0, %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit ], [ %i.hf, %.thread ], [ 0, %bb.w ] ; 2 uses
  %.sroa.046.0 = phi i64 [ %i.fh, %bb.r ], [ %.sroa.046.0.copyload, %13 ], [ 53661925375, %_ZN2v88internal10FieldIndex16ForPropertyIndexENS0_6TaggedINS0_3MapEEEiNS0_14RepresentationE.exit ], [ 53661925375, %.thread ], [ 53661925375, %bb.w ] ; 2 uses
  %i.hs = load ptr, ptr %1, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8544
  %i.hu = load ptr, ptr %i.ht, align 8
end_hunk_3
