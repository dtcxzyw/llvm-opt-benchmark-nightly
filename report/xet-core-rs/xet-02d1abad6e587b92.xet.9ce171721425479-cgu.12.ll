Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.12?download=true
inline.NumInlined: 407
inline.NumDeleted: 256
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs1_NtNtCsUrhh0HcRih_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtB1d_25XetFileDownloadGroupInner27start_download_file_to_path00EB1h_:bb.a

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
  %.sroa.044.0.copyload.i = load i32, ptr %i.o, align 4, !noalias !300 ; 4 uses
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
  %.not183 = icmp eq i32 %.sroa.044.0.copyload.i, 0
  br i1 %.not183, label %._crit_edge, label %.lr.ph

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
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ao ], [ %i.by, %bb.at ], [ %lpad.loopexit155, %.loopexit153 ], [ %lpad.loopexit.split-lp156, %.loopexit.split-lp154 ]
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
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB6_11MDBFileInfo11deserializeINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECsQbU2fm3lSD_3xet:bb.a
  invoke void @_RNvXs13_NtCskKLDkoKarTP_4core5arrayAyj2_NtNtB8_7default7Default7defaultCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %.sroa.6.0..sroa_idx.i111)
          to label %bb.aw unwind label %.loopexit152

bb.aj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.c, i8 0, i64 48, i1 false), !noalias !305
  %i.bu = invoke noundef ptr @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull %i.c, i64 noundef 48)
          to label %.noexc121 unwind label %.loopexit.split-lp ; 2 uses

.noexc121:                                        ; preds = %bb.aj
  %.not.i115 = icmp eq ptr %i.bu, null
  br i1 %.not.i115, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %.noexc121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !305
  store ptr %i.c, ptr %i.b, align 8, !noalias !305
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.bv, align 8, !noalias !305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !noalias !305
  %i.bw = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull %i.a, i64 noundef 32)
          to label %.noexc122 unwind label %.loopexit.split-lp ; 2 uses

.noexc122:                                        ; preds = %bb.ak
  %.not23.i116 = icmp eq ptr %i.bw, null
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
  %.sroa.544.0.copyload.ph = phi ptr [ %i.bw, %bb.al ], [ %i.bu, %.noexc121 ]
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
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.ph.sink, ptr %i.bx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body unwind label %bb.av

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEECsQbU2fm3lSD_3xet.exit unwind label %.loopexit.split-lp154

bb.av:                                            ; preds = %bb.at
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

.loopexit267:                                     ; preds = %.noexc112, %bb.ah
  %.ph = phi ptr [ %i.bt, %bb.ah ], [ %i.bs, %.noexc112 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.as

bb.aw:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2135, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.513.0..sroa_idx.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ca = load i64, ptr %i.bn, align 8, !alias.scope !307, !noalias !308, !noundef !7 ; 3 uses
  %i.cb = load i64, ptr %i.x, align 8, !range !10, !alias.scope !307, !noalias !308, !noundef !7
  %i.cc = icmp eq i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #27
          to label %bb.ay unwind label %.loopexit152

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.cd = load ptr, ptr %i.bm, align 8, !alias.scope !307, !noalias !308, !nonnull !7, !noundef !7
  %i.ce = getelementptr inbounds nuw [48 x i8], ptr %i.cd, i64 %i.ca ; 2 uses
  store ptr %.sroa.019.0.copyload.i, ptr %i.ce, align 8
  %.sroa.2135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2135.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2135, i64 40, i1 false)
  %i.cf = add i64 %i.ca, 1
  store i64 %i.cf, ptr %i.bn, align 8, !alias.scope !307, !noalias !308
  %exitcond210.not = icmp eq i64 %i.br, %i.al
  br i1 %exitcond210.not, label %.loopexit, label %bb.af

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.az

bb.az:                                            ; preds = %.loopexit158, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEECsQbU2fm3lSD_3xet.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsQbU2fm3lSD_3xet.exit unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.ba
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.ba ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.az
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ar

bb.bc:                                            ; preds = %bb.ao, %.body
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.bd:                                            ; preds = %bb.ad
  unreachable

.loopexit158:                                     ; preds = %.noexc, %bb.ab
  %.sroa.7128.0.ph = phi ptr [ %.sink.i100, %bb.ab ], [ %i.ay, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i98)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7128.0.ph) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7128.0.ph, ptr %i.cj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.az

bb.be:                                            ; preds = %.noexc109
  %.sroa.058.0.copyload.i = load i32, ptr %i.g, align 4, !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.i98, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i98)
  %i.ck = load i64, ptr %i.av, align 8, !alias.scope !309, !noalias !310, !noundef !7 ; 3 uses
  %i.cl = load i64, ptr %i.y, align 8, !range !10, !alias.scope !309, !noalias !310, !noundef !7
  %i.cm = icmp eq i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #27
          to label %bb.bg unwind label %.loopexit153

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.cn = load ptr, ptr %i.au, align 8, !alias.scope !309, !noalias !310, !nonnull !7, !noundef !7
  %i.co = getelementptr inbounds nuw [48 x i8], ptr %i.cn, i64 %i.ck ; 6 uses
  store ptr %.sroa.043.0.copyload.i, ptr %i.co, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.sroa.0, i64 24, i1 false)
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store i32 %.sroa.049.0.copyload.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 36
  store i32 %.sroa.052.0.copyload.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 4
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  store i32 %.sroa.055.0.copyload.i, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 44
  store i32 %.sroa.058.0.copyload.i, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx, align 4
  %i.cp = add i64 %i.ck, 1
  store i64 %i.cp, ptr %i.av, align 8, !alias.scope !309, !noalias !310
  %exitcond.not = icmp eq i64 %i.ax, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtNtCsfaKIfeYzQZw_7reqwest10async_impl6clientNtB6_6Client7requestRNtNtCsexYYUdYSQU6_5alloc6string6StringECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([272 x i8]) align 8 captures(address) dereferenceable(272) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [128 x i8], align 8           ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 5 uses
  %i.d = alloca [264 x i8], align 8               ; 12 uses
  invoke void @_RNvXs4_NtCsfaKIfeYzQZw_7reqwest8into_urlRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_13IntoUrlSealed8into_url(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i8, ptr %2, align 8  ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %i.e = load i64, ptr %i.c, align 8, !range !11, !noundef !7
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !7, !align !12, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i64 2, ptr %i.d, align 8
  %switch.i.i.i = icmp samesign ult i8 %.sroa.0.0.copyload, 10
  %i.j = icmp eq i64 %.sroa.6.0.copyload, 0
  %or.cond = select i1 %switch.i.i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtNtCsfaKIfeYzQZw_7reqwest10async_impl6clientNtBK_6Client7requestRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ECsQbU2fm3lSD_3xet.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.55.0.copyload, i64 noundef range(i64 1, 0) %.sroa.6.0.copyload, i64 noundef 1) #31, !noalias !325
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtNtCsfaKIfeYzQZw_7reqwest10async_impl6clientNtBK_6Client7requestRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ECsQbU2fm3lSD_3xet.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !326
  invoke void @_RNvXs_NtNtCsdCDTHl3mYPb_4http6header3mapNtB4_9HeaderMapNtNtCskKLDkoKarTP_4core7default7Default7defaultCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a)
          to label %bb.j unwind label %bb.f, !noalias !326

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #29
          to label %bb.h unwind label %bb.g, !noalias !326

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !326
  unreachable

bb.h:                                             ; preds = %bb.f
  %switch.i.i.i2 = icmp samesign ult i8 %.sroa.0.0.copyload, 10
  %i.m = icmp eq i64 %.sroa.6.0.copyload, 0
  %or.cond.i = select i1 %switch.i.i.i2, i1 true, i1 %i.m
  br i1 %or.cond.i, label %.body.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.55.0.copyload, i64 noundef range(i64 1, 0) %.sroa.6.0.copyload, i64 noundef 1) #31, !noalias !327
  br label %.body.thread

bb.j:                                             ; preds = %bb.e
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  %.sroa.4.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !326
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.4, i64 128, i1 false)
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store i8 %.sroa.0.0.copyload, ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store ptr %.sroa.55.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store i64 %.sroa.6.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store i8 2, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtNtCsfaKIfeYzQZw_7reqwest10async_impl6clientNtBK_6Client7requestRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ECsQbU2fm3lSD_3xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtNtCsfaKIfeYzQZw_7reqwest10async_impl6clientNtBK_6Client7requestRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ECsQbU2fm3lSD_3xet.exit: ; preds = %bb.d, %bb.c, %bb.j
  %i.n = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtNtCsfaKIfeYzQZw_7reqwest10async_impl6clientNtBK_6Client7requestRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ECsQbU2fm3lSD_3xet.exit
  call void @_RNvMs_NtNtCsfaKIfeYzQZw_7reqwest10async_impl7requestNtB4_14RequestBuilder3new(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %0, ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %i.d)
  ret void

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtNtCsfaKIfeYzQZw_7reqwest10async_impl6clientNtBK_6Client7requestRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ECsQbU2fm3lSD_3xet.exit
  call void @llvm.trap()
  unreachable

.body.thread:                                     ; preds = %bb.m, %bb.i, %bb.h
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.k, %bb.i ], [ %i.q, %bb.m ], [ %i.k, %bb.h ]
  resume { ptr, i32 } %eh.lpad-body19

bb.m:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http6method6MethodECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #29
  br label %.body.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_21FileDataSequenceEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 10 uses
  %i.g = alloca [48 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.h = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB6_3vec3VechEENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.g, i64 noundef 48) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i64 1, ptr %0, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.k = call noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRAhj30_ENtNtB4_4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull %i.e, i64 noundef 32) ; 2 uses
  %.not59 = icmp eq ptr %i.k, null
  br i1 %.not59, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %.sroa.043.0.copyload = load ptr, ptr %i.e, align 8
end_hunk_1
begin_hunk_2_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction18file_reconstructorNtBI_17FileReconstructor8run_impl0s_0ECsQbU2fm3lSD_3xet:bb.a
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsQbU2fm3lSD_3xet.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsQbU2fm3lSD_3xet.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsQbU2fm3lSD_3xet.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsQbU2fm3lSD_3xet.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http6method6MethodECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.a = load i8, ptr %0, align 8, !range !540, !alias.scope !539, !noundef !7
  %switch.i = icmp samesign ult i8 %i.a, 10
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http6method5InnerECsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !539, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http6method5InnerECsQbU2fm3lSD_3xet.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !539, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #31, !noalias !539
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http6method5InnerECsQbU2fm3lSD_3xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http6method5InnerECsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorECsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.b = load i16, ptr %i.a, align 8, !range !558, !alias.scope !559, !noundef !7
  %i.c = icmp eq i16 %i.b, 3
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error4KindECsQbU2fm3lSD_3xet.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !561, !noundef !7 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error4KindECsQbU2fm3lSD_3xet.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !565, !nonnull !7, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !565, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !565, !noundef !7
  invoke void %i.h(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.k, i64 noundef %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error4KindECsQbU2fm3lSD_3xet.exit.i.i unwind label %bb.d, !inline_history !553

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %.val3.i.i = load ptr, ptr %i.o, align 8, !alias.scope !556, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %.val4.i.i = load ptr, ptr %i.p, align 8, !alias.scope !556
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsQbU2fm3lSD_3xet(ptr %.val3.i.i, ptr %.val4.i.i) #29
          to label %.body.i.i unwind label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error4KindECsQbU2fm3lSD_3xet.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !556, !noundef !7 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %.val2.i.i = load ptr, ptr %i.r, align 8, !alias.scope !556 ; 6 uses
  %i.s = icmp eq ptr %.val.i.i, null
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsQbU2fm3lSD_3xet.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error4KindECsQbU2fm3lSD_3xet.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.t = load ptr, ptr %.val2.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.t(ptr noundef nonnull %.val.i.i)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !10, !invariant.load !7 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsQbU2fm3lSD_3xet.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !15, !invariant.load !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #31
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsQbU2fm3lSD_3xet.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !10, !invariant.load !7 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !15, !invariant.load !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #31
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.i, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.z, %bb.i ], [ %i.z, %bb.j ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbc8Eb5TzBdy_3url3UrlEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %.val) #29
          to label %bb.p unwind label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsQbU2fm3lSD_3xet.exit.i.i: ; preds = %bb.h, %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error4KindECsQbU2fm3lSD_3xet.exit.i.i
  %i.af = load i64, ptr %.val, align 8, !range !11, !alias.scope !566, !noundef !7
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsfaKIfeYzQZw_7reqwest5error5InnerEECsQbU2fm3lSD_3xet.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsQbU2fm3lSD_3xet.exit.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECsQbU2fm3lSD_3xet.exit.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %.val)
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECsQbU2fm3lSD_3xet.exit.i.i.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsfaKIfeYzQZw_7reqwest5error5InnerEECsQbU2fm3lSD_3xet.exit unwind label %bb.o

bb.n:                                             ; preds = %.body.i.i, %bb.d
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECsQbU2fm3lSD_3xet.exit.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %i.ah, %bb.l ], [ %.pn.i.i, %.body.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 144, i64 noundef 8) #31
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsfaKIfeYzQZw_7reqwest5error5InnerEECsQbU2fm3lSD_3xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsQbU2fm3lSD_3xet.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECsQbU2fm3lSD_3xet.exit.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 144, i64 noundef 8) #31
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsQbU2fm3lSD_3xet.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsQbU2fm3lSD_3xet.exit
    i64 1, label %bb.c
  ], !prof !18

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsQbU2fm3lSD_3xet.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !569
  store i8 3, ptr %i.a, align 8, !alias.scope !569
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsQbU2fm3lSD_3xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2 = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.d = shl nuw nsw i64 %.val2, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef 2) #31
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECsQbU2fm3lSD_3xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECsQbU2fm3lSD_3xet.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosEECsQbU2fm3lSD_3xet.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECsQbU2fm3lSD_3xet.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

.body:                                            ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.i, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #29
          to label %common.resume unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECsQbU2fm3lSD_3xet.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECsQbU2fm3lSD_3xet.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECsQbU2fm3lSD_3xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECsQbU2fm3lSD_3xet.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.i:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !7
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_RNvXs2_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !585, !noundef !7 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !586
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %.body

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %.body unwind label %bb.i

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.i = load ptr, ptr %i.c, align 8, !alias.scope !588, !noundef !7 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !589
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit unwind label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit, %bb.a
  ret void

bb.k:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.e, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.d, %bb.e ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #29
          to label %bb.m unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.g, %bb.f, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p)
  br label %bb.j

bb.l:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.m:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCsUrhh0HcRih_5tokio4task8blocking14spawn_blockingNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB13_16ShardFileManager15register_shards0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtB17_5error9CoreErrorEECsQbU2fm3lSD_3xet(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1d_16ShardFileManager15register_shards0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtB1h_5error9CoreErrorEECsQbU2fm3lSD_3xet(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}
end_hunk_2
begin_hunk_3_@_RNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB7_9unbounded9SemaphoreE4recvCsQbU2fm3lSD_3xet:bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !614, !noalias !616
  br label %_RNCNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB9_9unbounded9SemaphoreE4recv0CsQbU2fm3lSD_3xet.exit

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 448
  %i.ag = invoke noundef zeroext i1 @_RNvXsf_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.af)
          to label %.noexc17 unwind label %bb.v

.noexc17:                                         ; preds = %bb.g
  br i1 %i.ag, label %bb.h, label %bb.f

bb.h:                                             ; preds = %.noexc17
  store i8 0, ptr %i.f, align 1, !noalias !615
  store i64 2, ptr %0, align 8, !alias.scope !614, !noalias !616
  br label %_RNCNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB9_9unbounded9SemaphoreE4recv0CsQbU2fm3lSD_3xet.exit

bb.i:                                             ; preds = %.noexc16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 448
  %i.ai = invoke noundef zeroext i1 @_RNvXsf_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.ah)
          to label %.noexc18 unwind label %bb.v

.noexc18:                                         ; preds = %bb.i
  br i1 %i.ai, label %bb.o, label %.invoke, !prof !612

bb.j:                                             ; preds = %.noexc16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !615
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 448
  invoke void @_RNvXsf_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.aj)
          to label %bb.l unwind label %bb.k, !noalias !615

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #29
          to label %.body unwind label %bb.n, !noalias !615

bb.l:                                             ; preds = %bb.j
  store i8 0, ptr %i.f, align 1, !noalias !615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !615
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !615
  br label %_RNCNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB9_9unbounded9SemaphoreE4recv0CsQbU2fm3lSD_3xet.exit

bb.n:                                             ; preds = %bb.r, %bb.k
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !615
  unreachable

bb.o:                                             ; preds = %.noexc18
  store i8 0, ptr %i.f, align 1, !noalias !615
  store i64 2, ptr %0, align 8, !alias.scope !614, !noalias !616
  br label %bb.m

bb.p:                                             ; preds = %.noexc
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 448
  %i.an = invoke noundef zeroext i1 @_RNvXsf_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.am)
          to label %.noexc20 unwind label %bb.v

.noexc20:                                         ; preds = %bb.p
  br i1 %i.an, label %bb.u, label %.invoke, !prof !612

bb.q:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !615
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 448
  invoke void @_RNvXsf_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.ao)
          to label %bb.s unwind label %bb.r, !noalias !615

bb.r:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #29
          to label %.body unwind label %bb.n, !noalias !615

bb.s:                                             ; preds = %bb.q
  store i8 0, ptr %i.f, align 1, !noalias !615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !615
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !615
  br label %_RNCNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB9_9unbounded9SemaphoreE4recv0CsQbU2fm3lSD_3xet.exit

.invoke:                                          ; preds = %.noexc20, %.noexc18
  %i.aq = phi ptr [ @20, %.noexc18 ], [ @21, %.noexc20 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq) #26
          to label %.cont unwind label %bb.v

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %.noexc20
  store i8 0, ptr %i.f, align 1, !noalias !615
  store i64 2, ptr %0, align 8, !alias.scope !614, !noalias !616
  br label %bb.t

bb.v:                                             ; preds = %.invoke, %bb.p, %bb.i, %bb.g, %.noexc15, %bb.d, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingENtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorE9unwrap_orCsQbU2fm3lSD_3xet.exit.thread
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.r, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.v ], [ %i.ap, %bb.r ], [ %i.ak, %bb.k ]
  invoke void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECsQbU2fm3lSD_3xet.exit unwind label %bb.x

_RNCNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB9_9unbounded9SemaphoreE4recv0CsQbU2fm3lSD_3xet.exit: ; preds = %bb.t, %bb.m, %bb.h, %bb.f
  call void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.f)
  br label %bb.w

bb.w:                                             ; preds = %_RNCNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB9_9unbounded9SemaphoreE4recv0CsQbU2fm3lSD_3xet.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.x:                                             ; preds = %.body
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECsQbU2fm3lSD_3xet.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCskKLDkoKarTP_4core3any6TypeIdINtB2_10EquivalentBq_E10equivalentCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load i128, ptr %0, align 8
  %.val1 = load i128, ptr %1, align 8
  %i.a = icmp eq i128 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs5jFM9WxmFav_14http_body_util11combinators7collectINtB2_7CollectINtNtB4_8box_body7BoxBodyNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB2M_6marker4SendNtB3j_4SyncEL_EEENtNtNtB2M_6future6future6Future4pollCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(144) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %.sroa.4 = alloca [72 x i8], align 8            ; 3 uses
  %i.e = alloca [96 x i8], align 8                ; 8 uses
  %i.f = alloca [96 x i8], align 8                ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs0_NtNtCs5jFM9WxmFav_14http_body_util11combinators8box_bodyINtB5_7BoxBodyNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB2r_6marker4SendNtB2Y_4SyncEL_EENtCs73UZPzK6E9E_9http_body4Body10poll_frameCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.h = load i64, ptr %i.f, align 8, !range !639, !noundef !7
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.4.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_RNvMNtCs5jFM9WxmFav_14http_body_util9collectedINtB2_9CollectedNtNtCslc8SwK8fohf_5bytes5bytes5BytesE10push_frameCsQbU2fm3lSD_3xet.exit, %bb.a
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aa

bb.b:                                             ; preds = %.lr.ph, %_RNvMNtCs5jFM9WxmFav_14http_body_util9collectedINtB2_9CollectedNtNtCslc8SwK8fohf_5bytes5bytes5BytesE10push_frameCsQbU2fm3lSD_3xet.exit
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 4 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx98, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  switch i64 %.sroa.0.0.copyload, label %bb.e [
    i64 -3, label %bb.c
    i64 -2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.019.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 -2, ptr %1, align 8
  %.not42 = icmp eq i64 %.sroa.019.0.copyload, -2
  br i1 %.not42, label %bb.z, label %bb.y, !prof !6

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  store i64 -2, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0.copyload, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.x

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.618.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4, i64 72, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = load i64, ptr %1, align 8, !range !640, !noundef !7 ; 2 uses
  %.not43 = icmp eq i64 %i.r, -2
  br i1 %.not43, label %bb.t, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not.i, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, i64 32, i1 false)
  %i.s = invoke noundef zeroext i1 @_RNvYNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf13has_remainingCsQbU2fm3lSD_3xet(ptr noundef nonnull align 8 %i.d)
          to label %bb.h unwind label %bb.j, !noalias !641

bb.h:                                             ; preds = %bb.g
  br i1 %i.s, label %.noexc45, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !642)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.t = load ptr, ptr %i.d, align 8, !alias.scope !644, !noalias !641, !nonnull !7, !align !12, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !645, !nonnull !7, !noundef !7
  %i.w = load ptr, ptr %i.o, align 8, !alias.scope !644, !noalias !641, !noundef !7
  %i.x = load i64, ptr %i.p, align 8, !alias.scope !644, !noalias !641, !noundef !7
  call void %i.v(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.w, i64 noundef %i.x), !inline_history !624
  br label %.noexc

.noexc45:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !641
  %i.y = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE13push_back_mutCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !641
  br label %.noexc

.noexc:                                           ; preds = %bb.i, %.noexc45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !641
  br label %_RNvMNtCs5jFM9WxmFav_14http_body_util9collectedINtB2_9CollectedNtNtCslc8SwK8fohf_5bytes5bytes5BytesE10push_frameCsQbU2fm3lSD_3xet.exit

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.aa = load ptr, ptr %i.d, align 8, !alias.scope !648, !noalias !641, !nonnull !7, !align !12, !noundef !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !649, !nonnull !7, !noundef !7
  %i.ad = load ptr, ptr %i.o, align 8, !alias.scope !648, !noalias !641, !noundef !7
  %i.ae = load i64, ptr %i.p, align 8, !alias.scope !648, !noalias !641, !noundef !7
  invoke void %i.ac(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.ad, i64 noundef %i.ae)
          to label %.thread unwind label %bb.k, !noalias !641, !inline_history !0

bb.k:                                             ; preds = %bb.p, %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !650
  unreachable

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.521.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.40..sroa_idx, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.420.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, i64 32, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.j, align 8, !noalias !641
  store i64 0, ptr %i.b, align 8, !noalias !641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false), !noalias !641
  %.not12.i = icmp eq i64 %i.r, -1
  br i1 %.not12.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvXs6_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMapINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTINtNtB12_6option6OptionNtNtB8_4name10HeaderNameENtNtB8_5value11HeaderValueEE6extendBE_ECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
          to label %bb.o unwind label %bb.n, !noalias !650

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load i64, ptr %i.b, align 8, !range !8, !noalias !641, !noundef !7
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %.thread, label %bb.p

bb.o:                                             ; preds = %bb.m
  %.pre.i = load i64, ptr %i.b, align 8, !range !8, !noalias !641
  %i.aj = trunc nuw i64 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !641
  br i1 %i.aj, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapINtNtCs73UZPzK6E9E_9http_body5frame5FrameNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsQbU2fm3lSD_3xet.exit.i

.thread.i:                                        ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false), !noalias !650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !641
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapINtNtCs73UZPzK6E9E_9http_body5frame5FrameNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsQbU2fm3lSD_3xet.exit.i

bb.p:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapINtNtCs73UZPzK6E9E_9http_body5frame5FrameNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #29
          to label %.thread unwind label %bb.k, !noalias !650

bb.q:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.ak = load i64, ptr %i.j, align 8, !range !17, !alias.scope !654, !noalias !641, !noundef !7
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.am = load ptr, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !657, !noalias !641, !nonnull !7, !align !12, !noundef !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !658, !nonnull !7, !noundef !7
  %i.ap = load ptr, ptr %i.l, align 8, !alias.scope !657, !noalias !641, !noundef !7
  %i.aq = load i64, ptr %i.m, align 8, !alias.scope !657, !noalias !641, !noundef !7
  call void %i.ao(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.ap, i64 noundef %i.aq), !inline_history !624
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapINtNtCs73UZPzK6E9E_9http_body5frame5FrameNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsQbU2fm3lSD_3xet.exit.i

bb.s:                                             ; preds = %bb.q
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapINtNtCs73UZPzK6E9E_9http_body5frame5FrameNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsQbU2fm3lSD_3xet.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapINtNtCs73UZPzK6E9E_9http_body5frame5FrameNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.s, %bb.r, %.thread.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !641
  br label %_RNvMNtCs5jFM9WxmFav_14http_body_util9collectedINtB2_9CollectedNtNtCslc8SwK8fohf_5bytes5bytes5BytesE10push_frameCsQbU2fm3lSD_3xet.exit

bb.t:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #28
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

_RNvMNtCs5jFM9WxmFav_14http_body_util9collectedINtB2_9CollectedNtNtCslc8SwK8fohf_5bytes5bytes5BytesE10push_frameCsQbU2fm3lSD_3xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapINtNtCs73UZPzK6E9E_9http_body5frame5FrameNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEECsQbU2fm3lSD_3xet.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs0_NtNtCs5jFM9WxmFav_14http_body_util11combinators8box_bodyINtB5_7BoxBodyNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB2r_6marker4SendNtB2Y_4SyncEL_EENtCs73UZPzK6E9E_9http_body4Body10poll_frameCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.ar = load i64, ptr %i.f, align 8, !range !639, !noundef !7
  %i.as = icmp eq i64 %i.ar, 3
  br i1 %i.as, label %._crit_edge, label %bb.b

bb.v:                                             ; preds = %bb.t
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs73UZPzK6E9E_9http_body5frame5FrameNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(96) %i.e) #29
          to label %.thread unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aa

bb.y:                                             ; preds = %bb.c
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.521.0..sroa_idx, i64 120, i1 false)
  store i64 %.sroa.019.0.copyload, ptr %0, align 8
  br label %bb.x

bb.z:                                             ; preds = %bb.c
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
  unreachable

.thread:                                          ; preds = %bb.p, %bb.n, %bb.j, %bb.v
  %.pn57 = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.ag, %bb.p ], [ %lpad.thr_comm.split-lp, %bb.v ], [ %i.ag, %bb.n ]
  resume { ptr, i32 } %.pn57

bb.aa:                                            ; preds = %bb.x, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCsfaKIfeYzQZw_7reqwest5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !align !12, !noundef !7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ]
end_hunk_3
begin_hunk_4_@_RNvXs_NtCs5jFM9WxmFav_14http_body_util4utilINtB4_7BufListNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtBX_3buf8buf_impl3Buf13copy_to_bytesCsQbU2fm3lSD_3xet:bb.a
bb.au:                                            ; preds = %bb.ao
  %i.gp = add i64 %i.gc, %i.ft
  store i64 %i.gp, ptr %i.bi, align 8, !alias.scope !849, !noalias !850
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.gq = load ptr, ptr %i.u, align 8, !alias.scope !857, !nonnull !7, !align !12, !noundef !7
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !857, !nonnull !7, !noundef !7
  %i.gt = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.gu = load ptr, ptr %i.fq, align 8, !alias.scope !857, !noundef !7
  %i.gv = load i64, ptr %i.fs, align 8, !alias.scope !857, !noundef !7
  invoke void %i.gs(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef %i.gu, i64 noundef %i.gv)
          to label %.noexc39 unwind label %.body.thread158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !766

.noexc39:                                         ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !848
  br label %bb.as

bb.av:                                            ; preds = %bb.at
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !inline_history !758
  unreachable

bb.aw:                                            ; preds = %.noexc38
  %i.gx = invoke noundef zeroext i1 @_RNvMNtCslc8SwK8fohf_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.fl, i1 noundef zeroext true)
          to label %.noexc40 unwind label %.body.thread158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !758 ; 0 uses

.noexc40:                                         ; preds = %bb.aw, %.noexc38
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %.noexc43

.noexc43:                                         ; preds = %.noexc43.backedge, %.noexc40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !858
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE4iterCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc108 unwind label %.body.thread158.loopexit.split-lp.loopexit

.noexc108:                                        ; preds = %.noexc43
  %i.hd = invoke noundef zeroext i1 @_RINvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRB19_NCNvXs_NtCs5jFM9WxmFav_14http_body_util4utilINtB3m_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf13has_remaining0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc41 unwind label %.body.thread158.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !858
  br i1 %i.hd, label %bb.ax, label %_RINvXs1_NtCslc8SwK8fohf_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB8_5bytes5BytesEEECsQbU2fm3lSD_3xet.exit

bb.ax:                                            ; preds = %.noexc41
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.he = load i64, ptr %i.ah, align 8, !alias.scope !859, !noundef !7
  %.not.i.i106 = icmp eq i64 %i.he, 0
  br i1 %.not.i.i106, label %_RNvXNtNtCslc8SwK8fohf_5bytes3buf8buf_implQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsQbU2fm3lSD_3xet.exit.thread, label %_RNvXNtNtCslc8SwK8fohf_5bytes3buf8buf_implQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsQbU2fm3lSD_3xet.exit

_RNvXNtNtCslc8SwK8fohf_5bytes3buf8buf_implQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsQbU2fm3lSD_3xet.exit.thread: ; preds = %bb.ax
  %i.hf = load i64, ptr %i.bi, align 8, !alias.scope !860, !noalias !861, !noundef !7
  br label %bb.az

_RNvXNtNtCslc8SwK8fohf_5bytes3buf8buf_implQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsQbU2fm3lSD_3xet.exit: ; preds = %bb.ax
  %i.hg = load i64, ptr %i.gy, align 8, !alias.scope !859, !noundef !7 ; 2 uses
  %i.hh = load i64, ptr %1, align 8, !range !10, !alias.scope !859, !noundef !7 ; 2 uses
  %.not7.i.i = icmp ult i64 %i.hg, %i.hh
  %i.hi = select i1 %.not7.i.i, i64 0, i64 %i.hh
  %.sroa.05.0.i.i = sub nuw i64 %i.hg, %i.hi
  %i.hj = load ptr, ptr %i.gz, align 8, !alias.scope !859, !nonnull !7, !noundef !7
  %i.hk = getelementptr inbounds nuw [32 x i8], ptr %i.hj, i64 %.sroa.05.0.i.i ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 8
  %.val.i.i107 = load ptr, ptr %i.hl, align 8, !noalias !859, !nonnull !7, !noundef !7 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hk, i64 16
  %.val8.i.i = load i64, ptr %i.hm, align 8, !noalias !859, !noundef !7 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.hn = load i64, ptr %i.bi, align 8, !alias.scope !862, !noalias !863, !noundef !7 ; 2 uses
  %i.ho = load i64, ptr %i.bj, align 8, !alias.scope !862, !noalias !863, !noundef !7
  %i.hp = sub i64 %i.ho, %i.hn
  %.not.i101 = icmp ugt i64 %.val8.i.i, %i.hp
  br i1 %.not.i101, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_RNvXNtNtCslc8SwK8fohf_5bytes3buf8buf_implQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsQbU2fm3lSD_3xet.exit
  %i.hq = invoke noundef zeroext i1 @_RNvMNtCslc8SwK8fohf_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %.val8.i.i, i1 noundef zeroext true)
          to label %.noexc103 unwind label %.body.thread158.loopexit.split-lp.loopexit ; 0 uses

.noexc103:                                        ; preds = %bb.ay
  %.pre.i102 = load i64, ptr %i.bi, align 8, !alias.scope !862, !noalias !863
  br label %bb.az

bb.az:                                            ; preds = %_RNvXNtNtCslc8SwK8fohf_5bytes3buf8buf_implQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsQbU2fm3lSD_3xet.exit.thread, %.noexc103, %_RNvXNtNtCslc8SwK8fohf_5bytes3buf8buf_implQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsQbU2fm3lSD_3xet.exit
  %.sroa.0.0.i.i150 = phi ptr [ %.val.i.i107, %_RNvXNtNtCslc8SwK8fohf_5bytes3buf8buf_implQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsQbU2fm3lSD_3xet.exit ], [ %.val.i.i107, %.noexc103 ], [ inttoptr (i64 1 to ptr), %_RNvXNtNtCslc8SwK8fohf_5bytes3buf8buf_implQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsQbU2fm3lSD_3xet.exit.thread ]
  %.sroa.3.0.i.i149 = phi i64 [ %.val8.i.i, %_RNvXNtNtCslc8SwK8fohf_5bytes3buf8buf_implQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsQbU2fm3lSD_3xet.exit ], [ %.val8.i.i, %.noexc103 ], [ 0, %_RNvXNtNtCslc8SwK8fohf_5bytes3buf8buf_implQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsQbU2fm3lSD_3xet.exit.thread ] ; 6 uses
  %i.hr = phi i64 [ %i.hn, %_RNvXNtNtCslc8SwK8fohf_5bytes3buf8buf_implQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsQbU2fm3lSD_3xet.exit ], [ %.pre.i102, %.noexc103 ], [ %i.hf, %_RNvXNtNtCslc8SwK8fohf_5bytes3buf8buf_implQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsQbU2fm3lSD_3xet.exit.thread ]
  %i.hs = load ptr, ptr %i.ae, align 8, !alias.scope !862, !noalias !863, !nonnull !7, !noundef !7
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ht, ptr nonnull readonly align 1 %.sroa.0.0.i.i150, i64 range(i64 0, -9223372036854775808) %.sroa.3.0.i.i149, i1 false)
  %i.hu = load i64, ptr %i.bj, align 8, !alias.scope !862, !noalias !863, !noundef !7
  %i.hv = load i64, ptr %i.bi, align 8, !alias.scope !862, !noalias !863, !noundef !7 ; 2 uses
  %i.hw = sub i64 %i.hu, %i.hv                    ; 2 uses
  %i.hx = icmp ugt i64 %.sroa.3.0.i.i149, %i.hw
  br i1 %i.hx, label %bb.ba, label %.noexc42, !prof !6

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !864
  store i64 %.sroa.3.0.i.i149, ptr %i.f, align 8, !noalias !864
  br label %.invoke

.noexc42:                                         ; preds = %bb.az
  %i.hy = add i64 %i.hv, %.sroa.3.0.i.i149
  store i64 %i.hy, ptr %i.bi, align 8, !alias.scope !862, !noalias !863
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %.not22.i.i = icmp eq i64 %.sroa.3.0.i.i149, 0
  br i1 %.not22.i.i, label %.noexc43.backedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc42, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit.i.i
  %.sroa.0.023.i.i = phi i64 [ %i.ik, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit.i.i ], [ %.sroa.3.0.i.i149, %.noexc42 ] ; 4 uses
  %i.hz = load i64, ptr %i.ah, align 8, !alias.scope !865, !noundef !7
  %.not9.i.i = icmp eq i64 %i.hz, 0
  br i1 %.not9.i.i, label %.invoke289, label %bb.bb, !prof !6

bb.bb:                                            ; preds = %.lr.ph.i.i
  %i.ia = load i64, ptr %i.gy, align 8, !alias.scope !865, !noundef !7 ; 2 uses
  %i.ib = load i64, ptr %1, align 8, !range !10, !alias.scope !865, !noundef !7 ; 2 uses
  %.not10.i.i = icmp ult i64 %i.ia, %i.ib
  %i.ic = select i1 %.not10.i.i, i64 0, i64 %i.ib
  %.sroa.06.0.i.i = sub nuw i64 %i.ia, %i.ic
  %i.id = load ptr, ptr %i.gz, align 8, !alias.scope !865, !nonnull !7, !noundef !7
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.id, i64 %.sroa.06.0.i.i ; 3 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 16     ; 3 uses
  %.val.i.i = load i64, ptr %i.if, align 8, !noundef !7 ; 4 uses
  %i.ig = icmp ugt i64 %.val.i.i, %.sroa.0.023.i.i
  br i1 %i.ig, label %_RNvXs3_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit14.i.i, label %_RNvXs3_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i

_RNvXs3_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i: ; preds = %bb.bb
  store i64 0, ptr %i.if, align 8, !alias.scope !866
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !alias.scope !866, !noundef !7
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.val.i.i
  store ptr %i.ij, ptr %i.ih, align 8, !alias.scope !866
  %i.ik = sub nuw i64 %.sroa.0.023.i.i, %.val.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !865
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslc8SwK8fohf_5bytes5bytes5BytesE9pop_frontCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc99 unwind label %.body.thread158.loopexit

.noexc99:                                         ; preds = %_RNvXs3_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.il = load ptr, ptr %i.g, align 8, !alias.scope !867, !noalias !865, !noundef !7 ; 2 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %.noexc99
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  call void @llvm.experimental.noalias.scope.decl(metadata !869)
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !noalias !870, !nonnull !7, !noundef !7
  %i.ip = load ptr, ptr %i.hb, align 8, !alias.scope !870, !noalias !865, !noundef !7
  %i.iq = load i64, ptr %i.hc, align 8, !alias.scope !870, !noalias !865, !noundef !7
  invoke void %i.io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef %i.ip, i64 noundef %i.iq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit.i.i unwind label %.body.thread158.loopexit, !inline_history !790

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit.i.i: ; preds = %bb.bc, %.noexc99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !865
  %.not.i.i97 = icmp eq i64 %i.ik, 0
  br i1 %.not.i.i97, label %.noexc43.backedge, label %.lr.ph.i.i

_RNvXs3_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit14.i.i: ; preds = %bb.bb
  %i.ir = sub nuw i64 %.val.i.i, %.sroa.0.023.i.i
  store i64 %i.ir, ptr %i.if, align 8, !alias.scope !871
  %i.is = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !871, !noundef !7
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %.sroa.0.023.i.i
  store ptr %i.iu, ptr %i.is, align 8, !alias.scope !871
  br label %.noexc43.backedge

.noexc43.backedge:                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit.i.i, %_RNvXs3_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit14.i.i, %.noexc42
  br label %.noexc43

.body.thread158.loopexit:                         ; preds = %_RNvXs3_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i, %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread158.loopexit.split-lp.loopexit:       ; preds = %.noexc108, %bb.ay, %.noexc43
  %lpad.loopexit163 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread158.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvXs3_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i, %bb.ah
  %lpad.loopexit166 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc67, %bb.ac, %bb.aa
  %lpad.loopexit168 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke289, %.invoke, %.noexc94, %.noexc90, %bb.n, %.noexc18, %.noexc80, %bb.x, %bb.z, %.noexc127, %.noexc124, %.noexc35, %.noexc36, %.noexc121, %bb.au, %bb.aw, %bb.ai, %bb.o, %.noexc17, %.noexc85, %bb.m, %bb.l, %bb.j, %bb.al, %bb.ak
  %lpad.loopexit.split-lp169 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RINvXs1_NtCslc8SwK8fohf_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB8_5bytes5BytesEEECsQbU2fm3lSD_3xet.exit: ; preds = %.noexc23, %.noexc41, %bb.as, %.noexc34, %bb.v, %.noexc
  %.sroa.0.0.copyload = load ptr, ptr %i.ae, align 8 ; 4 uses
  %.sroa.5.0.copyload = load i64, ptr %i.bi, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %i.bj, align 8
  %.sroa.8.0.copyload = load ptr, ptr %i.bk, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.iv = ptrtoint ptr %.sroa.8.0.copyload to i64 ; 2 uses
  %i.iw = and i64 %i.iv, 1
  %.not.i47 = icmp eq i64 %i.iw, 0
  br i1 %.not.i47, label %bb.be, label %.noexc48

.noexc48:                                         ; preds = %_RINvXs1_NtCslc8SwK8fohf_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB8_5bytes5BytesEEECsQbU2fm3lSD_3xet.exit
  %i.ix = lshr i64 %i.iv, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !873
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.iy = sub nsw i64 0, %i.ix
  %i.iz = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.iy
  %i.ja = add i64 %i.ix, %.sroa.5.0.copyload
  %i.jb = add i64 %i.ix, %.sroa.7.0.copyload      ; 2 uses
  %i.jc = icmp sgt i64 %i.jb, -1
  call void @llvm.assume(i1 %i.jc)
  store i64 %i.jb, ptr %i.t, align 8, !noalias !873
  %i.jd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.iz, ptr %i.jd, align 8, !noalias !873
  %i.je = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.ja, ptr %i.je, align 8, !noalias !873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !873
  call void @_RNvXsE_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !873
  store i64 %i.ix, ptr %i.r, align 8, !noalias !875
  %i.jf = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !alias.scope !874, !noalias !873, !noundef !7 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.ix, %i.jg
  br i1 %.not.i.i, label %bb.bd, label %bb.bg, !prof !6

bb.bd:                                            ; preds = %.noexc48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !875
  store i64 %i.jg, ptr %i.q, align 8, !noalias !875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !875
  store ptr %i.r, ptr %i.p, align 8, !noalias !875
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !875
  %i.jh = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.jh, align 8, !noalias !875
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !875
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @47, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #26
          to label %.noexc.i unwind label %bb.bf, !noalias !873

.noexc.i:                                         ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %_RINvXs1_NtCslc8SwK8fohf_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtCs5jFM9WxmFav_14http_body_util4util7BufListNtNtB8_5bytes5BytesEEECsQbU2fm3lSD_3xet.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.ji, align 8, !alias.scope !872, !noalias !876
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %i.jj, align 8, !alias.scope !872, !noalias !876
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0.copyload, ptr %i.jk, align 8, !alias.scope !872, !noalias !876
  store ptr @_RNvNtCslc8SwK8fohf_5bytes9bytes_mut13SHARED_VTABLE, ptr %0, align 8, !alias.scope !872, !noalias !876
  br label %_RNvMNtCslc8SwK8fohf_5bytes9bytes_mutNtB2_8BytesMut6freeze.exit

bb.bf:                                            ; preds = %bb.bd
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.jm = load ptr, ptr %i.s, align 8, !alias.scope !879, !noalias !873, !nonnull !7, !align !12, !noundef !7
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !880, !nonnull !7, !noundef !7
  %i.jp = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.jq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !alias.scope !879, !noalias !873, !noundef !7
  invoke void %i.jo(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef %i.jr, i64 noundef %i.jg)
          to label %.body.thread154 unwind label %bb.bh, !noalias !873, !inline_history !0

bb.bg:                                            ; preds = %.noexc48
  %i.js = sub nuw i64 %i.jg, %i.ix
  store i64 %i.js, ptr %i.jf, align 8, !alias.scope !874, !noalias !873
  %i.jt = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !alias.scope !874, !noalias !873, !noundef !7
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.ix
  store ptr %i.jv, ptr %i.jt, align 8, !alias.scope !874, !noalias !873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !873
  br label %_RNvMNtCslc8SwK8fohf_5bytes9bytes_mutNtB2_8BytesMut6freeze.exit

bb.bh:                                            ; preds = %bb.bf
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !873
  unreachable

_RNvMNtCslc8SwK8fohf_5bytes9bytes_mutNtB2_8BytesMut6freeze.exit: ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit, %_RNvMNtCslc8SwK8fohf_5bytes9bytes_mutNtB2_8BytesMut6freeze.exit, %bb.f
  ret void

.body.thread154:                                  ; preds = %bb.bk, %.body.thread, %bb.bf
  %.pn = phi { ptr, i32 } [ %eh.lpad-body153, %.body.thread ], [ %i.jl, %bb.bf ], [ %i.jy, %bb.bk ]
  resume { ptr, i32 } %.pn

.body.thread:                                     ; preds = %.body.thread158.loopexit, %.body.thread158.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread158.loopexit.split-lp.loopexit, %bb.at, %bb.ar, %bb.w, %bb.u
  %eh.lpad-body153 = phi { ptr, i32 } [ %i.cq, %bb.w ], [ %i.gh, %bb.ar ], [ %i.gi, %bb.at ], [ %i.cp, %bb.u ], [ %lpad.loopexit, %.body.thread158.loopexit ], [ %lpad.loopexit163, %.body.thread158.loopexit.split-lp.loopexit ], [ %lpad.loopexit166, %.body.thread158.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit168, %.body.thread158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp169, %.body.thread158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXs_NtCslc8SwK8fohf_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %.body.thread154 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bk, %.body.thread
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.bk:                                            ; preds = %bb.bm, %bb.e
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.jz = load ptr, ptr %i.ag, align 8, !alias.scope !883, !nonnull !7, !align !12, !noundef !7
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !883, !nonnull !7, !noundef !7
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !883, !noundef !7
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !alias.scope !883, !noundef !7
  invoke void %i.kb(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kc, ptr noundef %i.ke, i64 noundef %i.kg)
          to label %.body.thread154 unwind label %bb.bj, !inline_history !0

bb.bl:                                            ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.kh = load ptr, ptr %i.af, align 8, !alias.scope !884, !noundef !7 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kk = load ptr, ptr %i.kj, align 8, !noalias !887, !nonnull !7, !noundef !7
  %i.kl = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.km = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !alias.scope !887, !noundef !7
  %i.ko = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.kp = load i64, ptr %i.ko, align 8, !alias.scope !887, !noundef !7
  invoke void %i.kk(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef %i.kn, i64 noundef %i.kp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit unwind label %bb.bk, !inline_history !812

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bi
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXNvNtNtCsiAynQAjgDuT_10xet_client10hub_client5types1__NtBG_10CasJWTInfoNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsiAynQAjgDuT_10xet_client10hub_client5types1__NtBa_10CasJWTInfoNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1i_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsfaw33hLWA9J_12futures_util6future6future12catch_unwindINtB4_11CatchUnwindINtNtNtCskKLDkoKarTP_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB2z_11TaskRuntime15run_inner_asyncNtNtB2B_13upload_commit15XetFileMetadataINtNtB1u_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultB3V_NtNtB2D_5error8XetErrorENtNtB1u_6marker4SendEL_EEE00EEB5q_4pollB2D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [176 x i8], align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1k_11TaskRuntime15run_inner_asyncNtNtB1m_13upload_commit15XetFileMetadataINtNtB9_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB9_6future6future6Futurep6OutputINtNtB9_6result6ResultB2G_NtNtB1o_5error8XetErrorENtNtB9_6marker4SendEL_EEE00EB4a_4pollB1o_(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.a, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.c)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #30
  unreachable

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.15.0..sroa_idx, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.g, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.d, 0
  %i.i = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  store i64 -1, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.644.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5, i64 176, i1 false)
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.f, ptr %.sroa.442.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.f ], [ -2, %bb.d ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsfaw33hLWA9J_12futures_util6future6future12catch_unwindINtB4_11CatchUnwindINtNtNtCskKLDkoKarTP_4core5panic11unwind_safe16AssertUnwindSafeNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB2z_11TaskRuntime15run_inner_asyncNtNtB2B_20file_download_handle17XetDownloadReportINtNtB1u_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultB3V_NtNtB2D_5error8XetErrorENtNtB1u_6marker4SendEL_EEE00EEB5z_4pollB2D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [112 x i8], align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1k_11TaskRuntime15run_inner_asyncNtNtB1m_20file_download_handle17XetDownloadReportINtNtB9_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB9_6future6future6Futurep6OutputINtNtB9_6result6ResultB2G_NtNtB1o_5error8XetErrorENtNtB9_6marker4SendEL_EEE00EB4j_4pollB1o_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.a, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.c)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #30
  unreachable

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.15.0..sroa_idx, i64 112, i1 false)
end_hunk_4
begin_hunk_5_@_RNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB1A_5error23FileReconstructionErrorENtNtB7_9unbounded9SemaphoreENtNtNtBX_3ops4drop4Drop4dropCsQbU2fm3lSD_3xet:bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 440 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !20, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB1A_5error23FileReconstructionErrorENtNtB7_9unbounded9SemaphoreE5closeCsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8
  br label %_RNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB1A_5error23FileReconstructionErrorENtNtB7_9unbounded9SemaphoreE5closeCsQbU2fm3lSD_3xet.exit

_RNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB1A_5error23FileReconstructionErrorENtNtB7_9unbounded9SemaphoreE5closeCsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 448 ; 2 uses
  %i.f = atomicrmw or ptr %i.e, i64 1 release, align 8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 384
  tail call void @_RNvMs5_NtNtCsUrhh0HcRih_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 128
  store ptr %i.h, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  invoke fastcc void @_RNvMNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop0INtB2_5GuardINtNtB16_6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB2o_5error23FileReconstructionErrorENtNtBc_9unbounded9SemaphoreE5drainCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
          to label %_RNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB1C_5error23FileReconstructionErrorENtNtB9_9unbounded9SemaphoreENtNtNtBZ_3ops4drop4Drop4drop0CsQbU2fm3lSD_3xet.exit unwind label %bb.c

bb.c:                                             ; preds = %_RNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB1A_5error23FileReconstructionErrorENtNtB7_9unbounded9SemaphoreE5closeCsQbU2fm3lSD_3xet.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvMNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop0INtB2_5GuardINtNtB16_6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB2o_5error23FileReconstructionErrorENtNtBc_9unbounded9SemaphoreE5drainCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtBM_2RxppENtNtNtB4_3ops4drop4Drop4drop05GuardINtNtB4_6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB2D_5error23FileReconstructionErrorENtNtBO_9unbounded9SemaphoreEECsQbU2fm3lSD_3xet.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtBM_2RxppENtNtNtB4_3ops4drop4Drop4drop05GuardINtNtB4_6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB2D_5error23FileReconstructionErrorENtNtBO_9unbounded9SemaphoreEECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.l

_RNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB1C_5error23FileReconstructionErrorENtNtB9_9unbounded9SemaphoreENtNtNtBZ_3ops4drop4Drop4drop0CsQbU2fm3lSD_3xet.exit: ; preds = %_RNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB1A_5error23FileReconstructionErrorENtNtB7_9unbounded9SemaphoreE5closeCsQbU2fm3lSD_3xet.exit
  call fastcc void @_RNvMNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop0INtB2_5GuardINtNtB16_6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB2o_5error23FileReconstructionErrorENtNtBc_9unbounded9SemaphoreE5drainCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB7_9unbounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 440 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !20, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB7_9unbounded9SemaphoreE5closeCsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8
  br label %_RNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB7_9unbounded9SemaphoreE5closeCsQbU2fm3lSD_3xet.exit

_RNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB7_9unbounded9SemaphoreE5closeCsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 448 ; 2 uses
  %i.f = atomicrmw or ptr %i.e, i64 1 release, align 8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 384
  tail call void @_RNvMs5_NtNtCsUrhh0HcRih_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 128
  store ptr %i.h, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  invoke fastcc void @_RNvMNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop0INtB2_5GuardNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtBc_9unbounded9SemaphoreE5drainCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
          to label %_RNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB9_9unbounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop0CsQbU2fm3lSD_3xet.exit unwind label %bb.c

bb.c:                                             ; preds = %_RNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB7_9unbounded9SemaphoreE5closeCsQbU2fm3lSD_3xet.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvMNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop0INtB2_5GuardNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtBc_9unbounded9SemaphoreE5drainCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtBM_2RxppENtNtNtB4_3ops4drop4Drop4drop05GuardNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtBO_9unbounded9SemaphoreEECsQbU2fm3lSD_3xet.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtBM_2RxppENtNtNtB4_3ops4drop4Drop4drop05GuardNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtBO_9unbounded9SemaphoreEECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.l

_RNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB7_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB9_9unbounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop0CsQbU2fm3lSD_3xet.exit: ; preds = %_RNvMsa_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtB5_2RxNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtB7_9unbounded9SemaphoreE5closeCsQbU2fm3lSD_3xet.exit
  call fastcc void @_RNvMNCNvXsb_NtNtNtCsUrhh0HcRih_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop0INtB2_5GuardNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writer23SequentialRetrievalItemNtNtBc_9unbounded9SemaphoreE5drainCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read10read_exactCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactNtNtCsG258MDvU3F_3std2fs4FileECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.0.041.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.0.120.i, %bb.k ] ; 3 uses
  %.sroa.7.040.i = phi i64 [ %2, %.lr.ph.i ], [ %.sroa.7.118.i, %bb.k ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXsa_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %.sroa.0.041.i, i64 noundef %.sroa.7.040.i) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 12 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split27.i
    i64 0, label %.split28.i
    i64 1, label %.split.i
  ], !prof !18

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.d
  %i.k = lshr i64 %i.g, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7
  %i.o = invoke noundef zeroext i1 %i.n(i32 noundef %i.l)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i unwind label %bb.l, !inline_history !1

.split27.i:                                       ; preds = %bb.c
  %i.p = lshr i64 %i.g, 32
  %i.q = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.p to i8
  %spec.select.i.i.i.i = select i1 %i.q, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.r = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.s, label %bb.i, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactNtNtCsG258MDvU3F_3std2fs4FileECsQbU2fm3lSD_3xet.exit

.split28.i:                                       ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !19, !noundef !7
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread.thread.i, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactNtNtCsG258MDvU3F_3std2fs4FileECsQbU2fm3lSD_3xet.exit

.split.i:                                         ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !19, !noundef !7
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactNtNtCsG258MDvU3F_3std2fs4FileECsQbU2fm3lSD_3xet.exit

bb.e:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.f, null
  br i1 %i.z, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactNtNtCsG258MDvU3F_3std2fs4FileECsQbU2fm3lSD_3xet.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %.sroa.7.040.i, %i.g
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.sroa.7.040.i, i64 noundef %.sroa.7.040.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = sub nuw nsw i64 %.sroa.7.040.i, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i, i64 %i.g
  br label %bb.k

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %.noexc.i
  br i1 %i.o, label %.thread.thread.i, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactNtNtCsG258MDvU3F_3std2fs4FileECsQbU2fm3lSD_3xet.exit

.thread.thread.i:                                 ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !893
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i

bb.i:                                             ; preds = %.split27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !893
  %i.ad = and i64 %i.g, 1095216660480
  %i.ae = icmp ne i64 %i.ad, 1095216660480
  call void @llvm.assume(i1 %i.q)
  call void @llvm.assume(i1 %i.ae)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i

bb.j:                                             ; preds = %.split.i
  %i.af = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !893
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  store ptr %i.af, ptr %i.c, align 8, !alias.scope !894, !noalias !893
  store i8 3, ptr %i.a, align 8, !alias.scope !894, !noalias !893
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.j, %bb.i, %.thread.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !893
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i, %bb.h
  %.sroa.0.120.i = phi ptr [ %.sroa.0.041.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i ], [ %i.ac, %bb.h ]
  %.sroa.7.118.i = phi i64 [ %.sroa.7.040.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit.i ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ag = icmp eq i64 %.sroa.7.118.i, 0
  br i1 %i.ag, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactNtNtCsG258MDvU3F_3std2fs4FileECsQbU2fm3lSD_3xet.exit, label %bb.b

bb.l:                                             ; preds = %.noexc.i, %bb.d
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet(ptr nonnull %i.f) #29
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm.i

bb.n:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactNtNtCsG258MDvU3F_3std2fs4FileECsQbU2fm3lSD_3xet.exit: ; preds = %.split27.i, %.split28.i, %.split.i, %bb.e, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.k, %bb.a
  %.sroa.09.0.i = phi ptr [ null, %bb.a ], [ %i.f, %.split28.i ], [ null, %bb.k ], [ %i.f, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.f, %.split.i ], [ %i.f, %.split27.i ], [ @12, %bb.e ]
  ret ptr %.sroa.09.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.119, %bb.k ] ; 3 uses
  %.sroa.6.039 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.117, %bb.k ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXsb_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.040, i64 noundef %.sroa.6.039) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 13 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split26
    i64 0, label %.split27
    i64 1, label %.split
  ], !prof !18

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.k = lshr i64 %i.g, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7
  %i.o = invoke noundef zeroext i1 %i.n(i32 noundef %i.l)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !1

.split26:                                         ; preds = %bb.c
  %i.p = lshr i64 %i.g, 32
  %i.q = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.p to i8
  %spec.select.i.i.i = select i1 %i.q, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.r = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.s, label %bb.i, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split27:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !19, !noundef !7
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread.thread, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split:                                           ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !19, !noundef !7
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.f, null
  br i1 %i.z, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %.sroa.6.039, %i.g
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.sroa.6.039, i64 noundef %.sroa.6.039, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = sub nuw nsw i64 %.sroa.6.039, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %i.g
  br label %bb.k

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.o, label %.thread.thread, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge: ; preds = %bb.k, %bb.e, %.split27, %.split26, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.a
  %.sroa.07.1 = phi ptr [ null, %bb.a ], [ @46, %bb.e ], [ %i.f, %.split27 ], [ %i.f, %.split26 ], [ %i.f, %.split ], [ %i.f, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.k ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit

bb.i:                                             ; preds = %.split26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.g, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !897
  store i8 3, ptr %i.a, align 8, !alias.scope !897
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit: ; preds = %.thread.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit
  %.sroa.0.119 = phi ptr [ %.sroa.0.040, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit ], [ %i.ac, %bb.h ]
  %.sroa.6.117 = phi i64 [ %.sroa.6.039, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet.exit ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.6.117, 0
  br i1 %i.ah, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.b

bb.l:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsQbU2fm3lSD_3xet(ptr nonnull %i.f) #29
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !alias.scope !900, !noundef !7
  %i.b = icmp eq i64 %i.a, 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @44, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @70, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
end_hunk_5
