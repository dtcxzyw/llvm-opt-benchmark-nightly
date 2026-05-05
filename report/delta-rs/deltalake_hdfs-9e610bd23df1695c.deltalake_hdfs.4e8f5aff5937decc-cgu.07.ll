inline.NumInlined: 60
inline.NumDeleted: 41
begin_hunk_0_@_RINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB2_4TakeNtNtB4_2fs4FileEECs6KaIMXx2hZw_14deltalake_hdfs:bb.a
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexitsplit

bb.s:                                             ; preds = %bb.p
  %i.ck = getelementptr i8, ptr %.sroa.0.0.i65, i64 15
  %i.cl = load i8, ptr %i.ck, align 8, !range !21, !noundef !4
  %i.cm = icmp eq i8 %i.cl, 35
end_hunk_0
begin_hunk_1_@_RINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB2_4TakeNtNtB4_2fs4FileEECs6KaIMXx2hZw_14deltalake_hdfs:bb.a
  br i1 %i.co, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexitsplit

bb.u:                                             ; preds = %bb.s
  %4 = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %.val.i.i.i.i.i = load ptr, ptr %4, align 8     ; 5 uses
  %i.cp = getelementptr i8, ptr %.sroa.0.0.i65, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.cp, align 8, !nonnull !4, !align !22, !noundef !4 ; 5 uses
end_hunk_1
begin_hunk_2_@_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs6KaIMXx2hZw_14deltalake_hdfs:bb.a
  %.sroa.0.0.i.i = call noundef range(i64 1, 33) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.f, i64 32)
  %i.g = call { i64, ptr } @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read4read(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.e, ptr noalias noundef nonnull %i.a, i64 noundef %.sroa.0.0.i.i) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 15 uses
  %i.j = trunc nuw i64 %i.h to i1
  %i.k = ptrtoint ptr %i.i to i64                 ; 5 uses
  br i1 %i.j, label %bb.e, label %bb.c
end_hunk_2
begin_hunk_3_@_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs6KaIMXx2hZw_14deltalake_hdfs:bb.a
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %.loopexit48

bb.k:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.af = getelementptr i8, ptr %i.i, i64 15
  %i.ag = load i8, ptr %i.af, align 8, !range !21, !noundef !4
  %i.ah = icmp eq i8 %i.ag, 35
end_hunk_3
