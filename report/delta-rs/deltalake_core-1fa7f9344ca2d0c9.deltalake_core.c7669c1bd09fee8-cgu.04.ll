inline.NumInlined: 8493
inline.NumDeleted: 3149
begin_hunk_0_@_RINvNtCs2pqxYH9ZEk8_3std2io18default_read_exactINtNtNtCs9Ct3XQYJhun_5bytes3buf6reader6ReaderNtNtBQ_5bytes5BytesEECs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call { i64, ptr } @_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf6readerINtB4_6ReaderNtNtB8_5bytes5BytesENtNtCs2pqxYH9ZEk8_3std2io4Read4readCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull %.sroa.0.069, i64 noundef %.sroa.7.068) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 11 uses
  store i64 %i.e, ptr %i.a, align 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = trunc nuw i64 %i.e to i1
end_hunk_0
begin_hunk_1_@_RINvNtCs2pqxYH9ZEk8_3std2io18default_read_exactINtNtNtCs9Ct3XQYJhun_5bytes3buf6reader6ReaderNtNtBQ_5bytes5BytesEECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.q, label %.thread, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.f, i64 15
  %i.s = load i8, ptr %i.r, align 8, !range !1821, !noundef !27
  %i.t = icmp eq i8 %i.s, 35
end_hunk_1
begin_hunk_2_@_RINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB2_4TakeNtNtB4_2fs4FileEECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexitsplit

bb.s:                                             ; preds = %bb.p
  %4 = getelementptr i8, ptr %.sroa.0.0.i64, i64 -1 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.ck = getelementptr i8, ptr %.sroa.0.0.i64, i64 15
  %i.cl = load i8, ptr %i.ck, align 8, !range !1821, !noundef !27
  %i.cm = icmp eq i8 %i.cl, 35
end_hunk_2
begin_hunk_3_@_RINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB2_4TakeNtNtB4_2fs4FileEECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.co, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs14kWLkQVSKO_14deltalake_core.exit.thread.loopexitsplit

bb.u:                                             ; preds = %bb.s
  %.val.i.i.i.i.i = load ptr, ptr %4, align 8, !noalias !1832 ; 5 uses
  %i.cp = getelementptr i8, ptr %.sroa.0.0.i64, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.cp, align 8, !noalias !1832, !nonnull !27, !align !106, !noundef !27 ; 5 uses
end_hunk_3
begin_hunk_4_@_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.0.0.i.i = call noundef range(i64 1, 33) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.h, i64 32)
  %i.i = call { i64, ptr } @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read4read(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.f, ptr noalias noundef nonnull %i.b, i64 noundef %.sroa.0.0.i.i) ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 14 uses
  %i.l = trunc nuw i64 %i.j to i1
  br i1 %i.l, label %bb.e, label %bb.c

end_hunk_4
begin_hunk_5_@_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit, label %.loopexit41

bb.k:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.k, i64 15
  %i.ah = load i8, ptr %i.ag, align 8, !range !1821, !noundef !27
  %i.ai = icmp eq i8 %i.ah, 35
end_hunk_5
