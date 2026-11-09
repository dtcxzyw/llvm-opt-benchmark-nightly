Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.050?download=true
inline.NumInlined: 2233
inline.NumDeleted: 990
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBO_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBU_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void @_RINvXs2_NtNtCslmvYCXbQjWR_6common12universal_io8io_uringNtB6_9IoUringFsNtNtNtB8_6traits8file_ops15UniversalReadFs4openRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.b, !noalias !3517

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.g, %bb.f, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.s, %bb.g ], [ %i.s, %bb.f ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) #25
          to label %bb.v unwind label %bb.s, !noalias !3517

bb.b:                                             ; preds = %.invoke.i, %bb.d, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.e, align 8, !range !47, !noalias !3519, !noundef !6
  %.not.i = icmp eq i64 %i.l, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !3519
  %i.m = invoke noundef nonnull align 8 ptr @_RNvNtNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_api7helpers18io_error_to_status(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.t unwind label %bb.b, !noalias !3517

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3519, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !30, !noalias !3519, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3519
  store ptr %i.o, ptr %i.f, align 8, !noalias !3519
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.q, ptr %i.r, align 8, !noalias !3519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3519
  invoke void @_RINvYNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileNtNtNtB7_6traits4read13UniversalRead10read_wholehECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.h unwind label %bb.f, !noalias !3517

bb.f:                                             ; preds = %bb.m, %bb.k, %bb.i, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3520)
  call void @llvm.experimental.noalias.scope.decl(metadata !3521)
  call void @llvm.experimental.noalias.scope.decl(metadata !3522)
  %i.t = load ptr, ptr %i.f, align 8, !alias.scope !3523, !noalias !3519, !nonnull !6, !noundef !6
  %i.u = atomicrmw add ptr %i.t, i64 -1 release, align 8, !noalias !3524
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3TE53SMfxyL_6fs_err4file4FileE9drop_slowCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.s, !noalias !3517

bb.h:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.d, align 8, !range !47, !noalias !3519, !noundef !6
  %.not31.i = icmp eq i64 %i.w, -1
  br i1 %.not31.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !3519
  %i.x = invoke noundef nonnull align 8 ptr @_RNvNtNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_api7helpers18io_error_to_status(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.r unwind label %bb.f, !noalias !3517

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.024.0.copyload.i = load i64, ptr %i.y, align 8, !noalias !3519 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3519 ; 3 uses
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.525.0.copyload.i = load i64, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !3519 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3519
  %.not32.i = icmp eq i64 %.sroa.024.0.copyload.i, -1
  br i1 %.not32.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3519
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.525.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.l unwind label %bb.f, !noalias !3517

bb.l:                                             ; preds = %bb.k
  %i.z = load i64, ptr %i.a, align 8, !range !9, !noalias !3519, !noundef !6
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !41, !noalias !3519, !noundef !6 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.m, label %bb.n, !prof !19

bb.m:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !3519
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #27
          to label %bb.q unwind label %bb.f, !noalias !3517

bb.n:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !3519, !nonnull !6, !noundef !6 ; 3 uses
  %i.ag = icmp ule i64 %.sroa.525.0.copyload.i, %i.ac
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3519
  %.not33.i = icmp eq i64 %.sroa.525.0.copyload.i, 0
  br i1 %.not33.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %.sroa.4.0.copyload.i, i64 %.sroa.525.0.copyload.i, i1 false), !noalias !3517
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.j
  %.sroa.021.0.i = phi i64 [ %i.ac, %bb.n ], [ %i.ac, %bb.o ], [ %.sroa.024.0.copyload.i, %bb.j ]
  %.sroa.522.0.i = phi ptr [ %i.af, %bb.n ], [ %i.af, %bb.o ], [ %.sroa.4.0.copyload.i, %bb.j ]
  %.sroa.823.0.i = phi i64 [ 0, %bb.n ], [ %.sroa.525.0.copyload.i, %bb.o ], [ %.sroa.525.0.copyload.i, %bb.j ]
  store i64 %.sroa.021.0.i, ptr %0, align 8, !alias.scope !3517
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.522.0.i, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !3517
  %.sroa.823.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.823.0.i, ptr %.sroa.823.0..sroa_idx.i, align 8, !alias.scope !3517
  call void @llvm.experimental.noalias.scope.decl(metadata !3525)
  call void @llvm.experimental.noalias.scope.decl(metadata !3526)
  call void @llvm.experimental.noalias.scope.decl(metadata !3527)
  %i.ah = load ptr, ptr %i.f, align 8, !alias.scope !3528, !noalias !3519, !nonnull !6, !noundef !6
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !3529
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %.invoke.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit38.i

bb.q:                                             ; preds = %bb.m
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.t, %.invoke.i, %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3519
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB6_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00Bc_.exit unwind label %bb.u

bb.r:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3519
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.ak, align 8, !alias.scope !3517
  store i64 -1, ptr %0, align 8, !alias.scope !3517
  call void @llvm.experimental.noalias.scope.decl(metadata !3530)
  call void @llvm.experimental.noalias.scope.decl(metadata !3531)
  call void @llvm.experimental.noalias.scope.decl(metadata !3532)
  %i.al = load ptr, ptr %i.f, align 8, !alias.scope !3533, !noalias !3519, !nonnull !6, !noundef !6
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !3534
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.invoke.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit38.i

.invoke.i:                                        ; preds = %bb.r, %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3TE53SMfxyL_6fs_err4file4FileE9drop_slowCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit38.i unwind label %bb.b, !noalias !3517

bb.s:                                             ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3517
  unreachable

bb.t:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3519
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.ap, align 8, !alias.scope !3517
  store i64 -1, ptr %0, align 8, !alias.scope !3517
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit38.i

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit38.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_RNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB6_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00Bc_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit38.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 64, i64 noundef 8) #23
  ret void

bb.v:                                             ; preds = %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.u ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 64, i64 noundef 8) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBO_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3544)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3545
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3544, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3544, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !3544, !noundef !6
  invoke void @_RNvXs_NtNtCslmvYCXbQjWR_6common12universal_io8io_uringNtB4_9IoUringFsNtNtNtB6_6traits8file_ops20UniversalReadFileOps6exists(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j)
          to label %bb.c unwind label %.thread.i, !noalias !3545

bb.b:                                             ; preds = %bb.u, %4, %3, %bb.l, %.thread.i
  %.pn.i = phi { ptr, i32 } [ %i.al, %bb.u ], [ %i.al, %3 ], [ %i.al, %4 ], [ %i.al, %bb.l ], [ %i.t, %.thread.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #25
          to label %bb.x unwind label %bb.v, !noalias !3543

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !range !47, !noalias !3545, !noundef !6 ; 5 uses
  %.not.i = icmp eq i64 %i.k, -1
  br i1 %.not.i, label %.thread16.i.a, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ne i64 %i.k, -9223372036854775797
  tail call void @llvm.assume(i1 %i.l)
  %i.m = xor i64 %i.k, -9223372036854775808
  %i.n = icmp slt i64 %i.k, 0
  %i.o = select i1 %i.n, i64 %i.m, i64 11
  switch i64 %i.o, label %bb.f [
    i64 0, label %bb.g
    i64 6, label %.thread18.i
  ]

.thread16.i.a:                                    ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !30, !noalias !3545, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.q, ptr %i.r, align 1, !alias.scope !3543
  store i8 0, ptr %0, align 8, !alias.scope !3543
  br label %bb.q

bb.e:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3546
  %.pre.i = load i64, ptr %i.c, align 8, !range !47, !noalias !3545 ; 2 uses
  %.not5.i = icmp eq i64 %.pre.i, -1
  br i1 %.not5.i, label %bb.q, label %bb.p

bb.f:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !3545
  %i.s = invoke noundef nonnull align 8 ptr @_RNvNtNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_api7helpers18io_error_to_status(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.s unwind label %.thread.i, !noalias !3545

.thread.i:                                        ; preds = %bb.r, %bb.f, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.g:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.u, align 8, !noalias !3545, !nonnull !6, !noundef !6 ; 4 uses
  %i.v = ptrtoint ptr %.val.i to i64              ; 3 uses
  %i.w = and i64 %i.v, 3
  switch i64 %i.w, label %default.unreachable [
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 0, label %bb.j
    i64 1, label %bb.k
  ], !prof !17

default.unreachable:                              ; preds = %bb.m, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.x = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.l, !noalias !3545

.noexc.i:                                         ; preds = %bb.h
  %i.y = lshr i64 %i.v, 32
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !3545, !nonnull !6, !noundef !6
  %i.ac = invoke noundef i8 %i.ab(i32 noundef %i.z)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.l, !noalias !3545, !inline_history !3540

bb.i:                                             ; preds = %bb.g
  %i.ad = lshr i64 %i.v, 32
  %i.ae = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.ad to i8 ; 2 uses
  %i.af = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.j:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !range !3547, !noalias !3545, !noundef !6
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.k:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %.val.i, i64 31
  %i.aj = load i8, ptr %i.ai, align 8, !range !3547, !noalias !3545, !noundef !6
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

.thread18.i:                                      ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ak, align 1, !alias.scope !3543
  store i8 0, ptr %0, align 8, !alias.scope !3543
  br label %bb.p

bb.l:                                             ; preds = %bb.o, %.noexc.i, %bb.h
  %.sroa.02.0.i = phi i1 [ true, %bb.h ], [ false, %bb.o ], [ true, %.noexc.i ]
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load i64, ptr %i.c, align 8, !range !47, !noalias !3545, !noundef !6 ; 3 uses
  %.not13.i = icmp eq i64 %i.am, -1
  br i1 %.not13.i, label %bb.b, label %bb.t

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %.noexc.i
  %.sroa.0.0.i.i = phi i8 [ %i.aj, %bb.k ], [ %switch.idx.cast.i.i.i.i, %bb.i ], [ %i.ah, %bb.j ], [ %i.ac, %.noexc.i ]
  %i.an = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.an, label %bb.m, label %bb.f

bb.m:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i
  %i.ao = load ptr, ptr %i.u, align 8, !noalias !3545, !nonnull !6, !noundef !6 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ap, align 1, !alias.scope !3543
  store i8 0, ptr %0, align 8, !alias.scope !3543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3546
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = and i64 %i.aq, 3
  switch i64 %i.ar, label %default.unreachable [
    i64 2, label %bb.e
    i64 3, label %bb.n
    i64 0, label %bb.e
    i64 1, label %bb.o
  ], !prof !17

bb.n:                                             ; preds = %bb.m
  %i.as = icmp ult ptr %i.ao, inttoptr (i64 188978561024 to ptr)
  %i.at = and i64 %i.aq, 1095216660480
  %i.au = icmp ne i64 %i.at, 1095216660480
  tail call void @llvm.assume(i1 %i.as)
  tail call void @llvm.assume(i1 %i.au)
  br label %bb.e

bb.o:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %i.ao, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !3548, !noalias !3546
  store i8 3, ptr %i.a, align 8, !alias.scope !3548, !noalias !3546
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %bb.e unwind label %bb.l, !noalias !3545

bb.p:                                             ; preds = %.thread18.i, %bb.e
  %i.ax = phi i64 [ %i.k, %.thread18.i ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.ay = icmp ne i64 %i.ax, -9223372036854775797
  call void @llvm.assume(i1 %i.ay)
  %i.az = icmp eq i64 %i.ax, -9223372036854775808
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.s, %bb.r, %bb.p, %bb.e, %.thread16.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3545
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB6_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00Bc_.exit unwind label %bb.w

bb.r:                                             ; preds = %bb.p
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io5error16UniversalIoErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.q unwind label %.thread.i, !noalias !3545

bb.s:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.ba, align 8, !alias.scope !3543
  store i8 1, ptr %0, align 8, !alias.scope !3543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3545
  br label %bb.q

bb.t:                                             ; preds = %bb.l
  %i.bb = icmp ne i64 %i.am, -9223372036854775797
  call void @llvm.assume(i1 %i.bb)
  %2 = icmp eq i64 %i.am, -9223372036854775808
  br i1 %2, label %3, label %4

3:                                                ; preds = %bb.t
  br i1 %.sroa.02.0.i, label %bb.u, label %bb.b

4:                                                ; preds = %bb.t
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io5error16UniversalIoErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #25
          to label %bb.b unwind label %bb.v, !noalias !3545

bb.u:                                             ; preds = %3
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #25
          to label %bb.b unwind label %bb.v, !noalias !3545

bb.v:                                             ; preds = %bb.u, %4, %bb.b
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3543
  unreachable

bb.w:                                             ; preds = %bb.q
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_RNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB6_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00Bc_.exit: ; preds = %bb.q
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 32, i64 noundef 8) #23
  ret void

bb.x:                                             ; preds = %bb.w, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.w ], [ %.pn.i, %bb.b ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 32, i64 noundef 8) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBO_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBU_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3563)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3563
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3563, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  invoke void @_RINvXs2_NtNtCslmvYCXbQjWR_6common12universal_io8io_uringNtB6_9IoUringFsNtNtNtB8_6traits8file_ops15UniversalReadFs4openRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.g, %bb.f, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.r, %bb.g ], [ %i.r, %bb.f ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) #25
          to label %bb.r unwind label %bb.n

bb.b:                                             ; preds = %bb.l, %bb.d, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.d, align 8, !range !47, !noalias !3563, !noundef !6
  %.not.i = icmp eq i64 %i.k, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !3563
  %i.l = invoke noundef nonnull align 8 ptr @_RNvNtNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_api7helpers18io_error_to_status(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.o unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !3563, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !30, !noalias !3563, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3563
  store ptr %i.n, ptr %i.e, align 8, !noalias !3563
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %i.p, ptr %i.q, align 8, !noalias !3563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3563
  invoke void @_RINvXs3_NtNtCslmvYCXbQjWR_6common12universal_io8io_uringNtB6_11IoUringFileNtNtNtB8_6traits4read13UniversalRead3lenhECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3564)
  call void @llvm.experimental.noalias.scope.decl(metadata !3565)
  call void @llvm.experimental.noalias.scope.decl(metadata !3566)
  %i.s = load ptr, ptr %i.e, align 8, !alias.scope !3567, !noalias !3563, !nonnull !6, !noundef !6
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !3567
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3TE53SMfxyL_6fs_err4file4FileE9drop_slowCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.c, align 8, !range !47, !noalias !3563, !noundef !6
  %.not8.i = icmp eq i64 %i.v, -1
  br i1 %.not8.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !3563
  %i.w = invoke noundef nonnull align 8 ptr @_RNvNtNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_api7helpers18io_error_to_status(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.m unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noalias !3563, !noundef !6
  %i.z = inttoptr i64 %i.y to ptr
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %i.aa = phi ptr [ %.pre.i, %bb.m ], [ %i.n, %bb.j ]
  %.sroa.4.0.i = phi ptr [ %i.w, %bb.m ], [ %i.z, %bb.j ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 1, %bb.m ], [ 0, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3563
  call void @llvm.experimental.noalias.scope.decl(metadata !3568)
  call void @llvm.experimental.noalias.scope.decl(metadata !3569)
  call void @llvm.experimental.noalias.scope.decl(metadata !3570)
  %i.ab = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !3571
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit11.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3TE53SMfxyL_6fs_err4file4FileE9drop_slowCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit11.i unwind label %bb.b

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3563
  %.pre.i = load ptr, ptr %i.e, align 8, !alias.scope !3571, !noalias !3563
  br label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit11.i: ; preds = %bb.o, %bb.l, %bb.k
  %.sroa.4.1.i = phi ptr [ %i.l, %bb.o ], [ %.sroa.4.0.i, %bb.k ], [ %.sroa.4.0.i, %bb.l ]
  %.sroa.0.1.i = phi i64 [ 1, %bb.o ], [ %.sroa.0.0.i, %bb.k ], [ %.sroa.0.0.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3563
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.q unwind label %bb.p

bb.n:                                             ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.o:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3563
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit11.i

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit11.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit11.i
  %i.af = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i, 0
  %i.ag = insertvalue { i64, ptr } %i.af, ptr %.sroa.4.1.i, 1
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #23
  ret { i64, ptr } %i.ag

bb.r:                                             ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.p ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBO_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream00EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3589
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !3588, !nonnull !6, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  invoke void @_RINvXs2_NtNtCslmvYCXbQjWR_6common12universal_io8io_uringNtB6_9IoUringFsNtNtNtB8_6traits8file_ops15UniversalReadFs4openRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.b, !noalias !3587

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.g, %bb.f, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.b ], [ %i.t, %bb.g ], [ %i.t, %bb.f ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream00EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #25
          to label %bb.u unwind label %bb.r, !noalias !3587

bb.b:                                             ; preds = %bb.p, %bb.d, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.f, align 8, !range !47, !noalias !3589, !noundef !6
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3589
end_hunk_0
