inline.NumInlined: 6368
inline.NumDeleted: 3022
begin_hunk_0_@_RINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB2_4TakeNtNtB4_2fs4FileEECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit

bb.s:                                             ; preds = %bb.p
  %i.ck = getelementptr i8, ptr %.sroa.0.0.i64, i64 15
  %i.cl = load i8, ptr %i.ck, align 8, !range !2493, !noundef !3
  %i.cm = icmp eq i8 %i.cl, 35
end_hunk_0
begin_hunk_1_@_RINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB2_4TakeNtNtB4_2fs4FileEECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.co, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit

bb.u:                                             ; preds = %bb.s
  %4 = getelementptr i8, ptr %.sroa.0.0.i64, i64 -1 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %.val.i.i.i.i.i = load ptr, ptr %4, align 8, !noalias !2494 ; 5 uses
  %i.cp = getelementptr i8, ptr %.sroa.0.0.i64, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.cp, align 8, !noalias !2494, !nonnull !3, !align !38, !noundef !3 ; 5 uses
end_hunk_1
begin_hunk_2_@_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.0.0.i.i = call noundef range(i64 1, 33) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.h, i64 32)
  %i.i = call { i64, ptr } @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read4read(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.f, ptr noalias noundef nonnull %i.b, i64 noundef %.sroa.0.0.i.i) ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 15 uses
  %i.l = trunc nuw i64 %i.j to i1
  br i1 %i.l, label %bb.e, label %bb.c

end_hunk_2
begin_hunk_3_@_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7p2uQeJxui2_9deltalake.exit, label %.loopexit41

bb.k:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ag = getelementptr i8, ptr %i.k, i64 15
  %i.ah = load i8, ptr %i.ag, align 8, !range !2493, !noundef !3
  %i.ai = icmp eq i8 %i.ah, 35
end_hunk_3
begin_hunk_4_@_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call { i64, ptr } @_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.062, i64 noundef %.sroa.6.061) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 12 uses
  store i64 %i.e, ptr %i.a, align 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = trunc nuw i64 %i.e to i1
end_hunk_4
begin_hunk_5_@_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.q, label %.thread, label %bb.f

bb.k:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.r = getelementptr i8, ptr %i.f, i64 15
  %i.s = load i8, ptr %i.r, align 8, !range !2493, !noundef !3
  %i.t = icmp eq i8 %i.s, 35
end_hunk_5
