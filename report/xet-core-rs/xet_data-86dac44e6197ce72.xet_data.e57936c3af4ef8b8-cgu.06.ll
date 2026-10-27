Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_data-86dac44e6197ce72.xet_data.e57936c3af4ef8b8-cgu.06?download=true
inline.NumInlined: 1240
inline.NumDeleted: 463
begin_hunk_0_@_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream12process_term:bb.a
  ret void

bb.i:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream13blocking_next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [88 x i8], align 8                ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !9, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1508, !noundef !7 ; 5 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream14ensure_started.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  store ptr null, ptr %i.j, align 8, !alias.scope !1510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1510
  store ptr %i.k, ptr %i.c, align 8, !noalias !1510
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  invoke void @_RNvMs5_NtNtCsUrhh0HcRih_5tokio4sync6notifyNtB5_6Notify10notify_one(ptr noundef nonnull align 8 %i.l)
          to label %bb.f unwind label %bb.d, !noalias !1510

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !1511
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %common.resume unwind label %bb.h, !noalias !1510

bb.f:                                             ; preds = %bb.c
  %i.p = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !1512
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream5start.exit.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27, !noalias !1510
  br label %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream5start.exit.i

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1510
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %i.an, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream5start.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1510
  br label %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream14ensure_started.exit

_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream14ensure_started.exit: ; preds = %bb.b, %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream5start.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.s, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 0, ptr %i.t, align 8
  call void @_RINvNtNtCsUrhh0HcRih_5tokio6future8block_on8block_onNCNvMs1_NtNtNtB6_4sync4mpsc9unboundedINtBW_17UnboundedReceiverINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer16unordered_writer13CompletedTermNtNtB2w_5error23FileReconstructionErrorEE4recv0EB2y_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.u = load i64, ptr %i.f, align 8, !range !18, !noundef !7
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.j, label %bb.r

bb.i:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream12process_term.exit

bb.j:                                             ; preds = %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream14ensure_started.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.w, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  %i.x = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %i.y, align 8, !alias.scope !1513
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.439.0..sroa_idx.i, align 8, !alias.scope !1513
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0.copyload, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !1513
  %.sroa.641.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.10.0.copyload, ptr %.sroa.641.0..sroa_idx.i, align 8, !alias.scope !1513
  store i64 1, ptr %0, align 8, !alias.scope !1513
  br label %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream12process_term.exit

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1514, !nonnull !7, !noundef !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !1515, !noundef !7 ; 3 uses
  %.not.i4 = icmp eq ptr %i.ac, null
  %i.ad = icmp eq i64 %.sroa.6.0.copyload, 0
  %or.cond.i = select i1 %.not.i4, i1 true, i1 %i.ad
  br i1 %or.cond.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1515
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !1515
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1515
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1515
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %.sroa.8.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1515
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore25AdjustableSemaphorePermitEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
          to label %bb.p unwind label %bb.o, !noalias !1515

bb.n:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !1515, !nonnull !7, !noundef !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = atomicrmw add ptr %i.ai, i64 %.sroa.6.0.copyload release, align 8, !noalias !1515 ; 0 uses
  %i.ak = load ptr, ptr %i.af, align 8, !noalias !1515, !nonnull !7, !noundef !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = atomicrmw add ptr %i.al, i64 %.sroa.6.0.copyload release, align 8, !noalias !1515 ; 0 uses
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = inttoptr i64 %.sroa.4.0.copyload to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !1516, !nonnull !7, !noundef !7
  invoke void %i.aq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i, ptr noundef %i.ao, i64 noundef %.sroa.6.0.copyload)
          to label %common.resume unwind label %bb.q, !noalias !1515, !inline_history !0

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1515
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.424.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1517
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.0.copyload, ptr %i.ar, align 8, !alias.scope !1513
  store i64 0, ptr %0, align 8, !alias.scope !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1515
  br label %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream12process_term.exit

bb.q:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1515
  unreachable

bb.r:                                             ; preds = %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream14ensure_started.exit
  store i8 1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !7, !noundef !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @_RNvMs_NtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction9run_stateNtB4_8RunState11check_error(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noundef nonnull align 8 %i.av)
  %i.aw = load i64, ptr %i.e, align 8, !range !16, !noundef !7
  %.not = icmp eq i64 %i.aw, -1
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 1, ptr %0, align 8
  br label %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream12process_term.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.32.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream12process_term.exit

_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream12process_term.exit: ; preds = %bb.t, %bb.k, %bb.p, %bb.s, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream14abort_callback(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !noundef !7 ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.j, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.k = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 241) 16, i64 noundef 8) #28 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtBJ_23UnorderedDownloadStream14abort_callback0E3newBP_.exit, !prof !12

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #29
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtBG_23UnorderedDownloadStream14abort_callback0EBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #25
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.m

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtBJ_23UnorderedDownloadStream14abort_callback0E3newBP_.exit: ; preds = %bb.e
  store ptr %i.c, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.g, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.k, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @49, 1
  ret { ptr, ptr } %i.q

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream14ensure_started(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !7 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream5start.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  store ptr null, ptr %i.b, align 8, !alias.scope !1528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1528
  store ptr %i.c, ptr %i.a, align 8, !noalias !1528
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  invoke void @_RNvMs5_NtNtCsUrhh0HcRih_5tokio4sync6notifyNtB5_6Notify10notify_one(ptr noundef nonnull align 8 %i.d)
          to label %bb.f unwind label %bb.d, !noalias !1528

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !1529
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync6notify6NotifyEECsjHtSR7YjKD4_8xet_data.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync6notify6NotifyEECsjHtSR7YjKD4_8xet_data.exit.i unwind label %bb.h, !noalias !1528

bb.f:                                             ; preds = %bb.c
  %i.h = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !1530
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream5start.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #27, !noalias !1528
  br label %_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream5start.exit

bb.h:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1528
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync6notify6NotifyEECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.e

_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream5start.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1528
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream15bytes_completed(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !noundef !7 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = tail call noundef i64 @_RNvMs7_NtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_typesNtB5_19ItemProgressUpdater21total_bytes_completed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream17bytes_in_progress(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  ret i64 %i.c
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef i64 @_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream17terms_in_progress(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  ret i64 %i.c
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef i64 @_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream20total_bytes_expected(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !noundef !7 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load atomic i64, ptr %i.g acquire, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction11data_writer25unordered_download_streamNtB2_23UnorderedDownloadStream5start(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !7 ; 5 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b
end_hunk_0
