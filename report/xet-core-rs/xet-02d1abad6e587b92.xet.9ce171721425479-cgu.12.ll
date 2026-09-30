Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.12?download=true
inline.NumInlined: 407
inline.NumDeleted: 256
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs1_NtNtCsUrhh0HcRih_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB1a_8FileTerm13get_data_task0s_0ECsQbU2fm3lSD_3xet:bb.a
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCsUrhh0HcRih_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtB1d_25XetFileDownloadGroupInner27start_download_file_to_path00EB1h_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(208) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskNCNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtB1I_25XetFileDownloadGroupInner27start_download_file_to_path00EB1M_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtB1v_25XetFileDownloadGroupInner27start_download_file_to_path00EB1z_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCsUrhh0HcRih_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNvMs2_NtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking15callback_bridgeNtB1b_28GroupProgressCallbackUpdater5start0EB1h_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(504) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskNCNvMs2_NtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking15callback_bridgeNtB1G_28GroupProgressCallbackUpdater5start0EB1M_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(504) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCNvMs2_NtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking15callback_bridgeNtB1t_28GroupProgressCallbackUpdater5start0EB1z_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(504) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCsUrhh0HcRih_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNvMs3_NtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking15callback_bridgeNtB1b_27ItemProgressCallbackUpdater5start0EB1h_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(264) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskNCNvMs3_NtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking15callback_bridgeNtB1G_27ItemProgressCallbackUpdater5start0EB1M_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCNvMs3_NtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking15callback_bridgeNtB1t_27ItemProgressCallbackUpdater5start0EB1z_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs1_NtNtCsUrhh0HcRih_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session13upload_commitNtB1a_20XetUploadCommitInner21register_spawned_task0EB1e_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskNCNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session13upload_commitNtB1F_20XetUploadCommitInner21register_spawned_task0EB1J_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RINvMs2_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnNCNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session13upload_commitNtB1s_20XetUploadCommitInner21register_spawned_task0EB1w_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openRNtNtB8_4path4PathECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 18446745954905227264, ptr %i.a, align 16
  call void @_RNvMsj_NtCsG258MDvU3F_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openRNtNtB8_4path7PathBufECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 18446745954905227264, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !7
  call void @_RNvMsj_NtCsG258MDvU3F_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_11MDBFileInfo11deserializeINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 1                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 1                ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 6 uses
  %i.i = alloca [4 x i8], align 4                 ; 6 uses
  %i.j = alloca [4 x i8], align 4                 ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.2.i98 = alloca [24 x i8], align 8        ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 10 uses
  %i.m = alloca [48 x i8], align 1                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %i.o = alloca [4 x i8], align 4                 ; 6 uses
  %i.p = alloca [4 x i8], align 4                 ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 9 uses
  %i.r = alloca [16 x i8], align 8                ; 9 uses
  %i.s = alloca [48 x i8], align 1                ; 6 uses
  %.sroa.940 = alloca [40 x i8], align 8          ; 2 uses
  %i.t = alloca [56 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.2135 = alloca [40 x i8], align 8         ; 2 uses
  %i.w = alloca [56 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.2.sroa.0 = alloca [24 x i8], align 8     ; 2 uses
  %i.y = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !300
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.s, i8 0, i64 48, i1 false), !noalias !300
  %i.z = call noundef ptr @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull %i.s, i64 noundef 48), !noalias !301 ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !300
  store ptr %i.s, ptr %i.r, align 8, !noalias !300
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.aa, align 8, !noalias !300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !300
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false), !noalias !300
  %i.ab = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull %i.q, i64 noundef 32), !noalias !301 ; 2 uses
  %.not48.i = icmp eq ptr %i.ab, null
  br i1 %.not48.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !300
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %.sroa.035.0.copyload.i = load ptr, ptr %i.q, align 8, !noalias !300 ; 2 uses
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.2.i.sroa.0.0.copyload = load i64, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !300 ; 2 uses
  %.sroa.2.i.sroa.4.0..sroa.436.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.2.i.sroa.4.0.copyload = load i64, ptr %.sroa.2.i.sroa.4.0..sroa.436.0..sroa_idx.i.sroa_idx, align 8, !noalias !300 ; 2 uses
  %.sroa.2.i.sroa.5.0..sroa.436.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.2.i.sroa.5.0.copyload = load i64, ptr %.sroa.2.i.sroa.5.0..sroa.436.0..sroa_idx.i.sroa_idx, align 8, !noalias !300 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !300
  store i32 0, ptr %i.p, align 4, !noalias !300
  %i.ac = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull %i.p, i64 noundef 4), !noalias !301 ; 2 uses
  %.not49.i = icmp eq ptr %i.ac, null
  br i1 %.not49.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !300
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %.sroa.041.0.copyload.i = load i32, ptr %i.p, align 4, !noalias !300 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !300
  store i32 0, ptr %i.o, align 4, !noalias !300
  %i.ad = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull %i.o, i64 noundef 4), !noalias !301 ; 2 uses
  %.not50.i = icmp eq ptr %i.ad, null
  br i1 %.not50.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !300
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %.sroa.044.0.copyload.i = load i32, ptr %i.o, align 4, !noalias !300 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !300
  store i64 0, ptr %i.n, align 8, !noalias !300
  %i.ae = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull %i.n, i64 noundef 8), !noalias !301 ; 2 uses
  %.not51.i = icmp eq ptr %i.ae, null
  br i1 %.not51.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !300
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c
  %.sink.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.i ], [ %i.ad, %bb.g ], [ %i.ab, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !300
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  %.sroa.7.0.ph = phi ptr [ %i.z, %bb.a ], [ %.sink.i, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !300
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.ph) ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.ph, ptr %i.af, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ar

bb.l:                                             ; preds = %bb.h
  %.sroa.047.0.copyload.i = load i64, ptr %i.n, align 8, !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !300
  %i.ag = ptrtoint ptr %.sroa.035.0.copyload.i to i64
  %i.ah = icmp eq ptr %.sroa.035.0.copyload.i, inttoptr (i64 -1 to ptr)
  %i.ai = icmp eq i64 %.sroa.2.i.sroa.0.0.copyload, -1
  %or.cond = select i1 %i.ah, i1 %i.ai, i1 false
  %i.aj = icmp eq i64 %.sroa.2.i.sroa.4.0.copyload, -1
  %or.cond5 = select i1 %or.cond, i1 %i.aj, i1 false
  %i.ak = icmp eq i64 %.sroa.2.i.sroa.5.0.copyload, -1
  %or.cond8 = select i1 %or.cond5, i1 %i.ak, i1 false
  br i1 %or.cond8, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = zext i32 %.sroa.044.0.copyload.i to i64 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.al, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.am = load i64, ptr %i.v, align 8, !range !8, !noundef !7
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !9, !noundef !7 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.p, !prof !6

bb.n:                                             ; preds = %bb.l
  store i64 2, ptr %0, align 8
  br label %bb.ar

bb.o:                                             ; preds = %bb.m
  %i.ar = load i64, ptr %i.aq, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #28
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.aq, align 8, !nonnull !7, !noundef !7
  %i.at = icmp samesign uge i64 %i.ap, %i.al
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %i.ap, ptr %i.y, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  store i64 0, ptr %i.av, align 8
  %.not183 = icmp ne i32 %.sroa.044.0.copyload.i, 0 ; 2 uses
  br i1 %.not183, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.q

._crit_edge:                                      ; preds = %bb.bg, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.al, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
          to label %bb.ac unwind label %.loopexit.split-lp154

bb.q:                                             ; preds = %.lr.ph, %bb.bg
  %.sroa.089.0179 = phi i64 [ 0, %.lr.ph ], [ %i.ax, %bb.bg ]
  %i.ax = add nuw nsw i64 %.sroa.089.0179, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i98)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !302
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.m, i8 0, i64 48, i1 false), !noalias !302
  %i.ay = invoke noundef ptr @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull %i.m, i64 noundef 48)
          to label %.noexc unwind label %.loopexit153 ; 2 uses

.noexc:                                           ; preds = %bb.q
  %.not.i99 = icmp eq ptr %i.ay, null
  br i1 %.not.i99, label %bb.r, label %.loopexit158

bb.r:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !302
  store ptr %i.m, ptr %i.l, align 8, !noalias !302
  store i64 0, ptr %i.aw, align 8, !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !302
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false), !noalias !302
  %i.az = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull %i.k, i64 noundef 32)
          to label %.noexc105 unwind label %.loopexit153 ; 2 uses

.noexc105:                                        ; preds = %bb.r
  %.not59.i = icmp eq ptr %i.az, null
  br i1 %.not59.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.noexc105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !302
  br label %bb.ab

bb.t:                                             ; preds = %.noexc105
  %.sroa.043.0.copyload.i = load ptr, ptr %i.k, align 8, !noalias !302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.i98, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.444.0..sroa_idx.i, i64 24, i1 false), !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !302
  store i32 0, ptr %i.j, align 4, !noalias !302
  %i.ba = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull %i.j, i64 noundef 4)
          to label %.noexc106 unwind label %.loopexit153 ; 2 uses

.noexc106:                                        ; preds = %bb.t
  %.not60.i = icmp eq ptr %i.ba, null
  br i1 %.not60.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !302
  br label %bb.ab

bb.v:                                             ; preds = %.noexc106
  %.sroa.049.0.copyload.i = load i32, ptr %i.j, align 4, !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !302
  store i32 0, ptr %i.i, align 4, !noalias !302
  %i.bb = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull %i.i, i64 noundef 4)
          to label %.noexc107 unwind label %.loopexit153 ; 2 uses

.noexc107:                                        ; preds = %bb.v
  %.not61.i = icmp eq ptr %i.bb, null
  br i1 %.not61.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !302
  br label %bb.ab

bb.x:                                             ; preds = %.noexc107
  %.sroa.052.0.copyload.i = load i32, ptr %i.i, align 4, !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !302
  store i32 0, ptr %i.h, align 4, !noalias !302
  %i.bc = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull %i.h, i64 noundef 4)
          to label %.noexc108 unwind label %.loopexit153 ; 2 uses

.noexc108:                                        ; preds = %bb.x
  %.not62.i = icmp eq ptr %i.bc, null
  br i1 %.not62.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !302
  br label %bb.ab

bb.z:                                             ; preds = %.noexc108
  %.sroa.055.0.copyload.i = load i32, ptr %i.h, align 4, !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !302
  store i32 0, ptr %i.g, align 4, !noalias !302
  %i.bd = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull %i.g, i64 noundef 4)
          to label %.noexc109 unwind label %.loopexit153 ; 2 uses

.noexc109:                                        ; preds = %bb.z
  %.not63.i = icmp eq ptr %i.bd, null
  br i1 %.not63.i, label %bb.be, label %bb.aa

bb.aa:                                            ; preds = %.noexc109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !302
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s
  %.sink.i100 = phi ptr [ %i.ba, %bb.u ], [ %i.bc, %bb.y ], [ %i.bd, %bb.aa ], [ %i.bb, %bb.w ], [ %i.az, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !302
  br label %.loopexit158

.body:                                            ; preds = %.loopexit153, %.loopexit.split-lp154, %bb.at, %bb.ao
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ao ], [ %i.bx, %bb.at ], [ %lpad.loopexit155, %.loopexit153 ], [ %lpad.loopexit.split-lp156, %.loopexit.split-lp154 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #29
          to label %common.resume unwind label %bb.bc

.loopexit153:                                     ; preds = %bb.q, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z, %bb.bf
  %lpad.loopexit155 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp154:                            ; preds = %._crit_edge, %bb.ad, %bb.au
  %lpad.loopexit.split-lp156 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %._crit_edge
  %i.be = load i64, ptr %i.u, align 8, !range !8, !noundef !7
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !9, !noundef !7 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.bf, label %bb.ad, label %bb.ae, !prof !6

bb.ad:                                            ; preds = %bb.ac
  %i.bj = load i64, ptr %i.bi, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bh, i64 %i.bj) #28
          to label %bb.bd unwind label %.loopexit.split-lp154

bb.ae:                                            ; preds = %bb.ac
  %i.bk = load ptr, ptr %i.bi, align 8, !nonnull !7, !noundef !7
  %i.bl = icmp samesign uge i64 %i.bh, %i.al
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %i.bh, ptr %i.x, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %i.bn, align 8
  %.not = icmp slt i32 %.sroa.041.0.copyload.i, 0
  %or.cond182 = and i1 %.not, %.not183
  br i1 %or.cond182, label %.lr.ph181, label %.loopexit

.lr.ph181:                                        ; preds = %bb.ae
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  br label %bb.af

.loopexit:                                        ; preds = %bb.ay, %bb.ae
  %i.bp = and i32 %.sroa.041.0.copyload.i, 1073741824
  %.not96 = icmp eq i32 %i.bp, 0
  br i1 %.not96, label %bb.an, label %bb.aj

bb.af:                                            ; preds = %.lr.ph181, %bb.ay
  %.sroa.091.0180 = phi i64 [ 0, %.lr.ph181 ], [ %i.bq, %bb.ay ]
  %i.bq = add nuw nsw i64 %.sroa.091.0180, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !303
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.f, i8 0, i64 48, i1 false), !noalias !303
  %i.br = invoke noundef ptr @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull %i.f, i64 noundef 48)
          to label %.noexc112 unwind label %.loopexit152 ; 2 uses

.noexc112:                                        ; preds = %bb.af
  %.not.i110 = icmp eq ptr %i.br, null
  br i1 %.not.i110, label %bb.ag, label %.loopexit267

bb.ag:                                            ; preds = %.noexc112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !303
  store ptr %i.f, ptr %i.e, align 8, !noalias !303
  store i64 0, ptr %i.bo, align 8, !noalias !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !303
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !noalias !303
  %i.bs = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull %i.d, i64 noundef 32)
          to label %.noexc113 unwind label %.loopexit152 ; 2 uses

.noexc113:                                        ; preds = %bb.ag
  %.not23.i = icmp eq ptr %i.bs, null
  br i1 %.not23.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.noexc113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !303
  br label %.loopexit267

bb.ai:                                            ; preds = %.noexc113
  %.sroa.019.0.copyload.i = load ptr, ptr %i.d, align 8, !noalias !303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.420.0..sroa_idx.i, i64 24, i1 false), !noalias !304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !303
  invoke void @_RNvXs13_NtCskKLDkoKarTP_4core5arrayAyj2_NtNtB8_7default7Default7defaultCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %.sroa.6.0..sroa_idx.i111)
          to label %bb.aw unwind label %.loopexit152

bb.aj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.c, i8 0, i64 48, i1 false), !noalias !305
  %i.bt = invoke noundef ptr @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull %i.c, i64 noundef 48)
          to label %.noexc121 unwind label %.loopexit.split-lp ; 2 uses

.noexc121:                                        ; preds = %bb.aj
  %.not.i115 = icmp eq ptr %i.bt, null
  br i1 %.not.i115, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %.noexc121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !305
  store ptr %i.c, ptr %i.b, align 8, !noalias !305
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.bu, align 8, !noalias !305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !noalias !305
  %i.bv = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull %i.a, i64 noundef 32)
          to label %.noexc122 unwind label %.loopexit.split-lp ; 2 uses

.noexc122:                                        ; preds = %bb.ak
  %.not23.i116 = icmp eq ptr %i.bv, null
  br i1 %.not23.i116, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !305
  br label %bb.ap

bb.am:                                            ; preds = %.noexc122
  %.sroa.019.0.copyload.i117 = load ptr, ptr %i.a, align 8, !noalias !305
  %.sroa.420.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.513.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx.i119, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.420.0..sroa_idx.i118, i64 24, i1 false), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !305
  %.sroa.6.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  invoke void @_RNvXs13_NtCskKLDkoKarTP_4core5arrayAyj2_NtNtB8_7default7Default7defaultCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %.sroa.6.0..sroa_idx.i120)
          to label %bb.aq unwind label %.loopexit.split-lp

bb.an:                                            ; preds = %.loopexit, %bb.aq
  %.sroa.032.0 = phi i64 [ 1, %bb.aq ], [ 0, %.loopexit ]
  %.sroa.735.0 = phi ptr [ %.sroa.019.0.copyload.i117, %bb.aq ], [ undef, %.loopexit ]
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.658.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.759.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  store i64 %.sroa.032.0, ptr %0, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.735.0, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.557.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.940, i64 40, i1 false)
  %.sroa.860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ag, ptr %.sroa.860.0..sroa_idx, align 8
  %.sroa.961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.2.i.sroa.0.0.copyload, ptr %.sroa.961.0..sroa_idx, align 8
  %.sroa.1062.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.2.i.sroa.4.0.copyload, ptr %.sroa.1062.0..sroa_idx, align 8
  %.sroa.1163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.2.i.sroa.5.0.copyload, ptr %.sroa.1163.0..sroa_idx, align 8
  %.sroa.1264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sroa.041.0.copyload.i, ptr %.sroa.1264.0..sroa_idx, align 8
  %.sroa.1365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.sroa.044.0.copyload.i, ptr %.sroa.1365.0..sroa_idx, align 4
  %.sroa.1466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.047.0.copyload.i, ptr %.sroa.1466.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ar

.loopexit152:                                     ; preds = %bb.af, %bb.ag, %bb.ai, %bb.ax
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.aj, %bb.ak, %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp, %.loopexit152
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit152 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #29
          to label %.body unwind label %bb.bc

bb.ap:                                            ; preds = %.noexc121, %bb.al
  %.sroa.544.0.copyload.ph = phi ptr [ %i.bv, %bb.al ], [ %i.bt, %.noexc121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.as

bb.aq:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !305
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.940, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.745.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.an

bb.ar:                                            ; preds = %bb.k, %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsQbU2fm3lSD_3xet.exit, %bb.an
  ret void

bb.as:                                            ; preds = %.loopexit267, %bb.ap
  %.ph.sink = phi ptr [ %.ph, %.loopexit267 ], [ %.sroa.544.0.copyload.ph, %bb.ap ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.ph.sink, ptr %i.bw, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body unwind label %bb.av

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEECsQbU2fm3lSD_3xet.exit unwind label %.loopexit.split-lp154

bb.av:                                            ; preds = %bb.at
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

.loopexit267:                                     ; preds = %.noexc112, %bb.ah
  %.ph = phi ptr [ %i.bs, %bb.ah ], [ %i.br, %.noexc112 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.as

bb.aw:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2135, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.513.0..sroa_idx.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.bz = load i64, ptr %i.bn, align 8, !alias.scope !307, !noalias !308, !noundef !7 ; 3 uses
  %i.ca = load i64, ptr %i.x, align 8, !range !10, !alias.scope !307, !noalias !308, !noundef !7
  %i.cb = icmp eq i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #27
          to label %bb.ay unwind label %.loopexit152

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.cc = load ptr, ptr %i.bm, align 8, !alias.scope !307, !noalias !308, !nonnull !7, !noundef !7
end_hunk_0
