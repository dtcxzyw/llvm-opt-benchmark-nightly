Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.08?download=true
inline.NumInlined: 1501
inline.NumDeleted: 682
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCskKLDkoKarTP_4core2io8io_slice7IoSliceEINtB2_12SpecFromIterBU_INtNtNtNtB10_4iter8adapters3map3MapINtNtB26_4take4TakeINtNtNtNtB6_11collections9vec_deque4iter4IterTNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtB10_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEEEENCINvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB6a_16SyncWriterThread14run_vectorizedNtNtCsG258MDvU3F_3std2fs4FileE0EE9from_iterCsQbU2fm3lSD_3xet:bb.a
  store ptr %i.p, ptr %i.a, align 8, !noalias !1732
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.v, ptr %i.y, align 8, !noalias !1732
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_4take4TakeINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterTNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtBc_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEEEENCINvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB4M_16SyncWriterThread14run_vectorizedNtNtCsG258MDvU3F_3std2fs4FileE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7g_8for_each4callNtNtNtBc_2io8io_slice7IoSliceNCINvMsk_NtB1o_3vecINtB8V_3VecB8j_E14extend_trustedBN_E0E0ECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCskKLDkoKarTP_4core2io8io_slice7IoSliceEINtB4_18SpecFromIterNestedB13_INtNtNtNtB19_4iter8adapters3map3MapINtNtB2m_4take4TakeINtNtNtNtB8_11collections9vec_deque4iter4IterTNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtB19_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEEEENCINvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB6q_16SyncWriterThread14run_vectorizedNtNtCsG258MDvU3F_3std2fs4FileE0EE9from_iterCsQbU2fm3lSD_3xet.exit unwind label %bb.g, !noalias !1724

bb.g:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCskKLDkoKarTP_4core2io8io_slice7IoSliceE14extend_trustedINtNtNtNtBM_4iter8adapters3map3MapINtNtB1L_4take4TakeINtNtNtNtB8_11collections9vec_deque4iter4IterTNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtBM_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEEEENCINvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB5N_16SyncWriterThread14run_vectorizedNtNtCsG258MDvU3F_3std2fs4FileE0EECsQbU2fm3lSD_3xet.exit.i.i, %bb.f, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterTNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtBb_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEEEENCINvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB4L_16SyncWriterThread14run_vectorizedNtNtCsG258MDvU3F_3std2fs4FileE0ENtNtNtB9_6traits8iterator8Iterator9size_hintCsQbU2fm3lSD_3xet.exit.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.c, align 8, !noalias !1720 ; 2 uses
  %i.aa = icmp eq i64 %.val.i, 0
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB4_2io8io_slice7IoSliceEECsQbU2fm3lSD_3xet.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val2.i = load ptr, ptr %i.o, align 8, !noalias !1720, !nonnull !7, !noundef !7
  %i.ab = shl nuw i64 %.val.i, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1733
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB4_2io8io_slice7IoSliceEECsQbU2fm3lSD_3xet.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB4_2io8io_slice7IoSliceEECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.z

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCskKLDkoKarTP_4core2io8io_slice7IoSliceEINtB4_18SpecFromIterNestedB13_INtNtNtNtB19_4iter8adapters3map3MapINtNtB2m_4take4TakeINtNtNtNtB8_11collections9vec_deque4iter4IterTNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtB19_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEEEENCINvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB6q_16SyncWriterThread14run_vectorizedNtNtCsG258MDvU3F_3std2fs4FileE0EE9from_iterCsQbU2fm3lSD_3xet.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCskKLDkoKarTP_4core2io8io_slice7IoSliceE14extend_trustedINtNtNtNtBM_4iter8adapters3map3MapINtNtB1L_4take4TakeINtNtNtNtB8_11collections9vec_deque4iter4IterTNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtBM_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEEEENCINvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer17sequential_writerNtB5N_16SyncWriterThread14run_vectorizedNtNtCsG258MDvU3F_3std2fs4FileE0EECsQbU2fm3lSD_3xet.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1720
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsG258MDvU3F_3std4path7PathBufINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types18ItemProgressReportEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB2B_4iter8adapters3map3MapINtNtNtNtB22_11collections4hash3map6ValuesB12_NtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENCNCNvMs_NtB6o_19file_download_groupNtB7H_20XetFileDownloadGroup20active_download_info00EE9from_iterB6q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.7.i.i = alloca [16 x i8], align 8        ; 6 uses
  %.sroa.8.i.i = alloca [40 x i8], align 8        ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.i = tail call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !1758 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %.not.i.i = icmp eq ptr %i.j, null
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 4 uses
  %.not2.i = icmp eq ptr %i.k, null
  %.not.i = select i1 %.not.i.i, i1 true, i1 %.not2.i
  br i1 %.not.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENCNCNvMs_NtB2P_19file_download_groupNtB48_20XetFileDownloadGroup20active_download_info00ENtNtNtB9_6traits8iterator8Iterator4nextB2R_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1759, !noalias !1758, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load i64, ptr %i.m, align 8, !noalias !1760, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1761
  call void @_RNvMNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handleNtB2_15XetFileDownload9file_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k), !noalias !1762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1761
  invoke void @_RNvMNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handleNtB2_15XetFileDownload8progress(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k)
          to label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENCNCNvMs_NtB2P_19file_download_groupNtB48_20XetFileDownloadGroup20active_download_info00ENtNtNtB9_6traits8iterator8Iterator4nextB2R_.exit unwind label %bb.c, !noalias !1762

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load i64, ptr %i.e, align 8, !noalias !1761 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i, 0
  br i1 %i.p, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i = load ptr, ptr %i.q, align 8, !noalias !1761, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1763
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.f, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %eh.lpad-body, %.body ], [ %i.t, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENCNCNvMs_NtB2P_19file_download_groupNtB48_20XetFileDownloadGroup20active_download_info00ENtNtNtB9_6traits8iterator8Iterator4nextB2R_.exit: ; preds = %bb.b
  %.sroa.0.0.copyload11 = load i64, ptr %i.e, align 8, !noalias !1764 ; 2 uses
  %.sroa.7.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx12, i64 16, i1 false), !noalias !1764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !1764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1761
  %.not = icmp eq i64 %.sroa.0.0.copyload11, -1
  br i1 %.not, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENCNCNvMs_NtB2P_19file_download_groupNtB48_20XetFileDownloadGroup20active_download_info00ENtNtNtB9_6traits8iterator8Iterator4nextB2R_.exit.thread, label %bb.g

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENCNCNvMs_NtB2P_19file_download_groupNtB48_20XetFileDownloadGroup20active_download_info00ENtNtNtB9_6traits8iterator8Iterator4nextB2R_.exit.thread: ; preds = %bb.a, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENCNCNvMs_NtB2P_19file_download_groupNtB48_20XetFileDownloadGroup20active_download_info00ENtNtNtB9_6traits8iterator8Iterator4nextB2R_.exit
  store i64 0, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.e

bb.e:                                             ; preds = %.loopexit18, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENCNCNvMs_NtB2P_19file_download_groupNtB48_20XetFileDownloadGroup20active_download_info00ENtNtNtB9_6traits8iterator8Iterator4nextB2R_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.f:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsG258MDvU3F_3std4path7PathBufINtNtB4_6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types18ItemProgressReportEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(72) %i.g) #31
  br label %common.resume

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENCNCNvMs_NtB2P_19file_download_groupNtB48_20XetFileDownloadGroup20active_download_info00ENtNtNtB9_6traits8iterator8Iterator4nextB2R_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.0.0.copyload11, ptr %i.g, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.n, ptr %.sroa.713.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.u, align 8, !noundef !7
  %i.v = call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1) ; 2 uses
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.v, i64 4) ; 3 uses
  %i.w = mul i64 %..i, 72                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.v, 128102389400760775
  br i1 %or.cond.i.i, label %bb.j, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1765
  %i.y = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1765 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.i ], [ 0, %bb.g ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.w) #30
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.h ], [ %..i, %bb.i ] ; 2 uses
  %i.aa = icmp ule i64 %..i, %.sroa.4.0.i
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0.i, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  store i64 %.sroa.4.0.i, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.ab = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc8 unwind label %.loopexit.split-lp ; 2 uses

.noexc8:                                          ; preds = %bb.k
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0
  %.not.i.i9.i.i = icmp eq ptr %i.ac, null
  %i.ad = extractvalue { ptr, ptr } %i.ab, 1      ; 2 uses
  %.not2.i10.i.i = icmp eq ptr %i.ad, null
  %.not.i11.i.i = select i1 %.not.i.i9.i.i, i1 true, i1 %.not2.i10.i.i
  br i1 %.not.i11.i.i, label %.loopexit18, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc8
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.74.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %bb.l

bb.l:                                             ; preds = %.noexc10, %.lr.ph.i.i
  %i.af = phi ptr [ %.sroa.10.0.i, %.lr.ph.i.i ], [ %i.aq, %.noexc10 ]
  %i.ag = phi i64 [ 1, %.lr.ph.i.i ], [ %i.as, %.noexc10 ] ; 5 uses
  %i.ah = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.av, %.noexc10 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1770, !noalias !1771, !nonnull !7, !noundef !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1772, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1773
  invoke void @_RNvMNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handleNtB2_15XetFileDownload9file_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1773
  invoke void @_RNvMNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handleNtB2_15XetFileDownload8progress(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah)
          to label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENCNCNvMs_NtB2P_19file_download_groupNtB48_20XetFileDownloadGroup20active_download_info00ENtNtNtB9_6traits8iterator8Iterator4nextB2R_.exit.i.i unwind label %bb.m, !noalias !1774

bb.m:                                             ; preds = %.noexc9
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1773 ; 2 uses
  %i.am = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.am, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val1.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx3.i.i, align 8, !noalias !1773, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1775
  br label %.body

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENCNCNvMs_NtB2P_19file_download_groupNtB48_20XetFileDownloadGroup20active_download_info00ENtNtNtB9_6traits8iterator8Iterator4nextB2R_.exit.i.i: ; preds = %.noexc9
  %.sroa.0.0.copyload2.i.i = load i64, ptr %i.b, align 8, !noalias !1776 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx3.i.i, i64 16, i1 false), !noalias !1776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !1776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1773
  %.not.i.i6 = icmp eq i64 %.sroa.0.0.copyload2.i.i, -1
  br i1 %.not.i.i6, label %.loopexit18, label %bb.o

bb.o:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENCNCNvMs_NtB2P_19file_download_groupNtB48_20XetFileDownloadGroup20active_download_info00ENtNtNtB9_6traits8iterator8Iterator4nextB2R_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1777
  store i64 %.sroa.0.0.copyload2.i.i, ptr %i.c, align 8, !noalias !1777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !noalias !1777
  store i64 %i.ak, ptr %.sroa.74.0..sroa_idx.i.i, align 8, !noalias !1777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i.i, i64 40, i1 false), !noalias !1777
  %i.an = icmp samesign ult i64 %i.ag, 128102389400760776
  call void @llvm.assume(i1 %i.an)
  %i.ao = load i64, ptr %i.h, align 8, !range !9, !alias.scope !1778, !noundef !7
  %i.ap = icmp eq i64 %i.ag, %i.ao
  br i1 %i.ap, label %bb.q, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsG258MDvU3F_3std4path7PathBufINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types18ItemProgressReportEEE7reserveCsQbU2fm3lSD_3xet.exit.i.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsG258MDvU3F_3std4path7PathBufINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types18ItemProgressReportEEE7reserveCsQbU2fm3lSD_3xet.exit.i.i: ; preds = %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsG258MDvU3F_3std4path7PathBufINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types18ItemProgressReportEEE7reserveCsQbU2fm3lSD_3xet.exit.i.i_crit_edge, %bb.o
  %i.aq = phi ptr [ %.pre, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsG258MDvU3F_3std4path7PathBufINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types18ItemProgressReportEEE7reserveCsQbU2fm3lSD_3xet.exit.i.i_crit_edge ], [ %i.af, %bb.o ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [72 x i8], ptr %i.aq, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !1778
  %i.as = add nuw nsw i64 %i.ag, 1                ; 2 uses
  store i64 %i.as, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1777
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.at = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsG258MDvU3F_3std4path7PathBufINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types18ItemProgressReportEEE7reserveCsQbU2fm3lSD_3xet.exit.i.i
  %i.au = extractvalue { ptr, ptr } %i.at, 0
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  %i.av = extractvalue { ptr, ptr } %i.at, 1      ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.av, null
  %.not.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not2.i.i.i
  br i1 %.not.i.i.i, label %.loopexit18, label %bb.l

bb.p:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsG258MDvU3F_3std4path7PathBufINtNtB4_6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types18ItemProgressReportEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c) #31, !noalias !1778
  br label %.body

bb.q:                                             ; preds = %bb.o
  %.val.i.i7 = load i64, ptr %i.ae, align 8, !alias.scope !1779, !noundef !7
  %i.ax = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i7, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ag, i64 noundef range(i64 1, 0) %i.ax, i64 noundef 8, i64 noundef 72)
          to label %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsG258MDvU3F_3std4path7PathBufINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types18ItemProgressReportEEE7reserveCsQbU2fm3lSD_3xet.exit.i.i_crit_edge unwind label %bb.p

._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsG258MDvU3F_3std4path7PathBufINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types18ItemProgressReportEEE7reserveCsQbU2fm3lSD_3xet.exit.i.i_crit_edge: ; preds = %bb.q
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1778
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsG258MDvU3F_3std4path7PathBufINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types18ItemProgressReportEEE7reserveCsQbU2fm3lSD_3xet.exit.i.i

.loopexit:                                        ; preds = %bb.l, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsG258MDvU3F_3std4path7PathBufINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types18ItemProgressReportEEE7reserveCsQbU2fm3lSD_3xet.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %bb.n, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.m ], [ %i.aw, %bb.p ], [ %i.al, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtCsG258MDvU3F_3std4path7PathBufINtNtB4_6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types18ItemProgressReportEEEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #31
  br label %common.resume

.loopexit18:                                      ; preds = %.noexc10, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle15XetFileDownloadENCNCNvMs_NtB2P_19file_download_groupNtB48_20XetFileDownloadGroup20active_download_info00ENtNtNtB9_6traits8iterator8Iterator4nextB2R_.exit.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCsQbU2fm3lSD_3xet11xet_session13upload_commits_1__NtB7_15XetFileMetadataNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1n_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB10_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = udiv exact i64 %i.e, 48                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1787, !noundef !7 ; 5 uses
  %i.i = load i64, ptr %0, align 8, !range !9, !alias.scope !1787, !noundef !7
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ugt i64 %i.f, %i.j
  br i1 %i.k, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateE7reserveBK_.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateE7reserveBK_.exit.i, !prof !8

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateE7reserveBK_.exit.thread.i: ; preds = %bb.a
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef %i.f, i64 noundef 8, i64 noundef 48)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateE7reserveBK_.exit.thread.i
  %i.l = load i64, ptr %i.g, align 8, !alias.scope !1786, !noundef !7 ; 2 uses
  %i.m = icmp ult i64 %i.l, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  br label %bb.b

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateE7reserveBK_.exit.i: ; preds = %bb.a
  %i.n = icmp ult i64 %i.h, 192153584101141163
  tail call void @llvm.assume(i1 %i.n)
  %.not.i = icmp eq ptr %.val3, %.val
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateE7reserveBK_.exit.i, %.noexc
  %i.o = phi i64 [ %i.l, %.noexc ], [ %i.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateE7reserveBK_.exit.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1786, !nonnull !7, !noundef !7
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull readonly align 8 %.val, i64 %i.e, i1 false), !noalias !1786
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateE7reserveBK_.exit.i
  %i.s = phi i64 [ %i.o, %bb.b ], [ %i.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateE7reserveBK_.exit.i ]
  %i.t = add nuw nsw i64 %i.s, %i.f
  store i64 %i.t, ptr %i.g, align 8, !alias.scope !1786
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !7 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateEEB1l_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.y = mul nuw i64 %i.v, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1788
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateEEB1l_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateEEB1l_.exit: ; preds = %bb.d, %bb.c
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateE7reserveBK_.exit.thread.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking18ItemProgressUpdateEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #31
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsQbU2fm3lSD_3xet11xet_session13upload_commits_1__NtBa_15XetFileMetadataNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1q_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 22)
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking23TrackingProgressUpdaterEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1a_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCsQbU2fm3lSD_3xet11xet_session12task_runtime11TaskRuntimeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
