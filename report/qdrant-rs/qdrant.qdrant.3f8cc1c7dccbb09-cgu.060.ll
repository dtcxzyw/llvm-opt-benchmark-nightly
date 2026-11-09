Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.060?download=true
inline.NumInlined: 1411
inline.NumDeleted: 603
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1i_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1o_:bb.a
bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !3275, !nonnull !8, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !29, !noalias !3275, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3275
  store ptr %i.r, ptr %i.f, align 8, !noalias !3275
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.t, ptr %i.u, align 8, !noalias !3275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3275
  invoke void @_RINvYNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileNtNtNtB7_6traits4read13UniversalRead10read_wholehECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.k unwind label %bb.i, !noalias !3276

bb.i:                                             ; preds = %bb.p, %bb.n, %bb.l, %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3277)
  call void @llvm.experimental.noalias.scope.decl(metadata !3278)
  call void @llvm.experimental.noalias.scope.decl(metadata !3279)
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !3280, !noalias !3275, !nonnull !8, !noundef !8
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !3281
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3TE53SMfxyL_6fs_err4file4FileE9drop_slowCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #15
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.v, !noalias !3276

bb.k:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.d, align 8, !range !34, !noalias !3275, !noundef !8
  %.not31.i = icmp eq i64 %i.z, -1
  br i1 %.not31.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !3275
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvNtNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_api7helpers18io_error_to_status(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.u unwind label %bb.i, !noalias !3276 ; 2 uses

bb.m:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.024.0.copyload.i = load i64, ptr %i.ab, align 8, !noalias !3275 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3275 ; 3 uses
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.525.0.copyload.i = load i64, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !3275 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3275
  %.not32.i = icmp eq i64 %.sroa.024.0.copyload.i, -1
  br i1 %.not32.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3275
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.525.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.o unwind label %bb.i, !noalias !3276

bb.o:                                             ; preds = %bb.n
  %i.ac = load i64, ptr %i.a, align 8, !range !7, !noalias !3275, !noundef !8
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !31, !noalias !3275, !noundef !8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.p, label %bb.q, !prof !17

bb.p:                                             ; preds = %bb.o
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !3275
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #20
          to label %bb.t unwind label %bb.i, !noalias !3276

bb.q:                                             ; preds = %bb.o
  %i.ai = load ptr, ptr %i.ag, align 8, !noalias !3275, !nonnull !8, !noundef !8 ; 3 uses
  %i.aj = icmp ule i64 %.sroa.525.0.copyload.i, %i.af
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3275
  %.not33.i = icmp eq i64 %.sroa.525.0.copyload.i, 0
  br i1 %.not33.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull align 1 %.sroa.4.0.copyload.i, i64 %.sroa.525.0.copyload.i, i1 false), !noalias !3276
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.m
  %.sroa.021.0.i = phi i64 [ %i.af, %bb.q ], [ %i.af, %bb.r ], [ %.sroa.024.0.copyload.i, %bb.m ] ; 2 uses
  %.sroa.522.0.i = phi ptr [ %i.ai, %bb.q ], [ %i.ai, %bb.r ], [ %.sroa.4.0.copyload.i, %bb.m ] ; 2 uses
  %.sroa.823.0.i = phi i64 [ 0, %bb.q ], [ %.sroa.525.0.copyload.i, %bb.r ], [ %.sroa.525.0.copyload.i, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3282)
  call void @llvm.experimental.noalias.scope.decl(metadata !3283)
  call void @llvm.experimental.noalias.scope.decl(metadata !3284)
  %i.ak = load ptr, ptr %i.f, align 8, !alias.scope !3285, !noalias !3275, !nonnull !8, !noundef !8
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !3286
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %.invoke.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit38.i

bb.t:                                             ; preds = %bb.p
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.w, %.invoke.i, %bb.u, %bb.s
  %.sroa.9.0 = phi i64 [ %.sroa.9.1, %.invoke.i ], [ %.sroa.823.0.i, %bb.s ], [ undef, %bb.u ], [ undef, %bb.w ]
  %.sroa.6.0 = phi ptr [ %.sroa.6.1, %.invoke.i ], [ %.sroa.522.0.i, %bb.s ], [ %i.aa, %bb.u ], [ %i.p, %bb.w ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %.invoke.i ], [ %.sroa.021.0.i, %bb.s ], [ -1, %bb.u ], [ -1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3275
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3275
  call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  call void @llvm.experimental.noalias.scope.decl(metadata !3288)
  call void @llvm.experimental.noalias.scope.decl(metadata !3289)
  %i.an = load ptr, ptr %i.f, align 8, !alias.scope !3290, !noalias !3275, !nonnull !8, !noundef !8
  %i.ao = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !3291
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %.invoke.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit38.i

.invoke.i:                                        ; preds = %bb.u, %bb.s
  %.sroa.9.1 = phi i64 [ %.sroa.823.0.i, %bb.s ], [ undef, %bb.u ]
  %.sroa.6.1 = phi ptr [ %.sroa.522.0.i, %bb.s ], [ %i.aa, %bb.u ]
  %.sroa.0.1 = phi i64 [ %.sroa.021.0.i, %bb.s ], [ -1, %bb.u ]
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3TE53SMfxyL_6fs_err4file4FileE9drop_slowCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #15
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit38.i unwind label %bb.e, !noalias !3276

bb.v:                                             ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !3276
  unreachable

bb.w:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3275
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit38.i

.body.thread:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i, %bb.x
  %eh.lpad-body9 = phi { ptr, i32 } [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i ], [ %i.ar, %bb.x ]
  resume { ptr, i32 } %eh.lpad-body9

bb.x:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00EBO_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.h) #16
          to label %.body.thread unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1i_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.01.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 -1, ptr %1, align 8
  %.not = icmp eq i64 %.sroa.01.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.01.0.copyload, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa.0.0..sroa_idx, i64 24, i1 false)
  %i.f = invoke { i1, i8 } @_RNvNtNtCsjZG7hsAZr3B_5tokio4task4coop4stop()
          to label %bb.d unwind label %bb.x       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3298)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3299
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3298, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3298, !nonnull !8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !3298, !noundef !8
  invoke void @_RNvXs_NtNtCslmvYCXbQjWR_6common12universal_io8io_uringNtB4_9IoUringFsNtNtNtB6_6traits8file_ops20UniversalReadFileOps6exists(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m)
          to label %bb.f unwind label %.thread.i, !noalias !3299

bb.e:                                             ; preds = %bb.v, %5, %4, %bb.o, %.thread.i
  %.pn.i = phi { ptr, i32 } [ %i.am, %bb.v ], [ %i.am, %4 ], [ %i.am, %5 ], [ %i.am, %bb.o ], [ %i.v, %.thread.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #16
          to label %.body.thread unwind label %bb.w, !noalias !3300

bb.f:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.c, align 8, !range !34, !noalias !3299, !noundef !8 ; 5 uses
  %.not.i = icmp eq i64 %i.n, -1
  br i1 %.not.i, label %.thread18.i.a, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ne i64 %i.n, -9223372036854775797
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.n, -9223372036854775808
  %i.q = icmp slt i64 %i.n, 0
  %i.r = select i1 %i.q, i64 %i.p, i64 11
  switch i64 %i.r, label %bb.i [
    i64 0, label %bb.j
    i64 6, label %.thread20.i
  ]

.thread18.i.a:                                    ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !29, !noalias !3299, !noundef !8
  br label %_RNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB6_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00Bc_.exit

bb.h:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3299
  %.pre.i = load i64, ptr %i.c, align 8, !range !34, !noalias !3299 ; 2 uses
  %.not5.i = icmp eq i64 %.pre.i, -1
  br i1 %.not5.i, label %_RNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB6_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00Bc_.exit, label %.thread20.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !3299
  %i.u = invoke noundef nonnull align 8 ptr @_RNvNtNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_api7helpers18io_error_to_status(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.t unwind label %.thread.i, !noalias !3299

.thread.i:                                        ; preds = %bb.s, %bb.i, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.j:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.val8.i = load ptr, ptr %i.w, align 8, !noalias !3299, !nonnull !8, !noundef !8 ; 4 uses
  %i.x = ptrtoint ptr %.val8.i to i64             ; 3 uses
  %i.y = and i64 %i.x, 3
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 0, label %bb.m
    i64 1, label %bb.n
  ], !prof !15

default.unreachable:                              ; preds = %bb.p, %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.z = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.o, !noalias !3299

.noexc.i:                                         ; preds = %bb.k
  %i.aa = lshr i64 %i.x, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !3299, !nonnull !8, !noundef !8
  %i.ae = invoke noundef i8 %i.ad(i32 noundef %i.ab)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.o, !noalias !3299, !inline_history !3295

bb.l:                                             ; preds = %bb.j
  %i.af = lshr i64 %i.x, 32
  %i.ag = icmp ult ptr %.val8.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.af to i8 ; 2 uses
  %i.ah = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.m:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !range !3301, !noalias !3299, !noundef !8
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.n:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %.val8.i, i64 31
  %i.al = load i8, ptr %i.ak, align 8, !range !3301, !noalias !3299, !noundef !8
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.o:                                             ; preds = %bb.r, %.noexc.i, %bb.k
  %.sroa.02.0.i = phi i1 [ true, %bb.k ], [ false, %bb.r ], [ true, %.noexc.i ]
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.an = load i64, ptr %i.c, align 8, !range !34, !noalias !3299, !noundef !8 ; 3 uses
  %.not15.i = icmp eq i64 %i.an, -1
  br i1 %.not15.i, label %bb.e, label %bb.u

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %.noexc.i
  %.sroa.0.0.i.i = phi i8 [ %i.al, %bb.n ], [ %switch.idx.cast.i.i.i.i, %bb.l ], [ %i.aj, %bb.m ], [ %i.ae, %.noexc.i ]
  %i.ao = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ao, label %bb.p, label %bb.i

bb.p:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i
  %i.ap = load ptr, ptr %i.w, align 8, !noalias !3299, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3299
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = and i64 %i.aq, 3
  switch i64 %i.ar, label %default.unreachable [
    i64 2, label %bb.h
    i64 3, label %bb.q
    i64 0, label %bb.h
    i64 1, label %bb.r
  ], !prof !15

bb.q:                                             ; preds = %bb.p
  %i.as = icmp ult ptr %i.ap, inttoptr (i64 188978561024 to ptr)
  %i.at = and i64 %i.aq, 1095216660480
  %i.au = icmp ne i64 %i.at, 1095216660480
  tail call void @llvm.assume(i1 %i.as)
  tail call void @llvm.assume(i1 %i.au)
  br label %bb.h

bb.r:                                             ; preds = %bb.p
  %i.av = getelementptr i8, ptr %i.ap, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !3302, !noalias !3299
  store i8 3, ptr %i.a, align 8, !alias.scope !3302, !noalias !3299
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %bb.h unwind label %bb.o, !noalias !3299

.thread20.i:                                      ; preds = %bb.g, %bb.h
  %i.ax = phi i64 [ %.pre.i, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.ay = icmp ne i64 %i.ax, -9223372036854775797
  call void @llvm.assume(i1 %i.ay)
  %i.az = icmp eq i64 %i.ax, -9223372036854775808
  br i1 %i.az, label %_RNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB6_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00Bc_.exit, label %bb.s

_RNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB6_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00Bc_.exit: ; preds = %bb.t, %bb.s, %.thread20.i, %bb.h, %.thread18.i.a
  %.sroa.107.0 = phi ptr [ undef, %.thread18.i.a ], [ %i.u, %bb.t ], [ undef, %bb.h ], [ undef, %.thread20.i ], [ undef, %bb.s ]
  %.sroa.7.1 = phi i8 [ %i.t, %.thread18.i.a ], [ undef, %bb.t ], [ 0, %bb.h ], [ 0, %.thread20.i ], [ 0, %bb.s ]
  %.sroa.0.1 = phi i8 [ 0, %.thread18.i.a ], [ 1, %bb.t ], [ 0, %bb.h ], [ 0, %.thread20.i ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3299
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 %.sroa.0.1, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.1, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.107.0, ptr %.sroa.107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.s:                                             ; preds = %.thread20.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io5error16UniversalIoErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
          to label %_RNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB6_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00Bc_.exit unwind label %.thread.i, !noalias !3299

bb.t:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3299
  br label %_RNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB6_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00Bc_.exit

bb.u:                                             ; preds = %bb.o
  %i.ba = icmp ne i64 %i.an, -9223372036854775797
  call void @llvm.assume(i1 %i.ba)
  %3 = icmp eq i64 %i.an, -9223372036854775808
  br i1 %3, label %4, label %5

4:                                                ; preds = %bb.u
  br i1 %.sroa.02.0.i, label %bb.v, label %bb.e

5:                                                ; preds = %bb.u
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io5error16UniversalIoErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #16
          to label %bb.e unwind label %bb.w, !noalias !3299

bb.v:                                             ; preds = %4
  %.val.i = load ptr, ptr %i.w, align 8, !noalias !3299, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #16
          to label %bb.e unwind label %bb.w, !noalias !3299

bb.w:                                             ; preds = %bb.v, %5, %bb.e
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !3300
  unreachable

.body.thread:                                     ; preds = %bb.e, %bb.x
  %eh.lpad-body10 = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %i.bc, %bb.x ]
  resume { ptr, i32 } %eh.lpad-body10

bb.x:                                             ; preds = %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00EBO_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #16
          to label %.body.thread unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1i_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.01.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  store i64 -1, ptr %0, align 8
  %.not = icmp eq i64 %.sroa.01.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01.0.copyload, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa.0.0..sroa_idx, i64 56, i1 false)
  %i.h = invoke { i1, i8 } @_RNvNtNtCsjZG7hsAZr3B_5tokio4task4coop4stop()
          to label %bb.d unwind label %bb.s       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3317)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3317
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3317, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  invoke void @_RINvXs2_NtNtCslmvYCXbQjWR_6common12universal_io8io_uringNtB6_9IoUringFsNtNtNtB8_6traits8file_ops15UniversalReadFs4openRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.g, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.j, %bb.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.u, %bb.j ], [ %i.u, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f) #16
          to label %.body.thread unwind label %bb.q

bb.e:                                             ; preds = %bb.o, %bb.g, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8, !range !34, !noalias !3317, !noundef !8
  %.not.i = icmp eq i64 %i.n, -1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !3317
  %i.o = invoke noundef nonnull align 8 ptr @_RNvNtNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_api7helpers18io_error_to_status(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.r unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !3317, !nonnull !8, !noundef !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !29, !noalias !3317, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3317
  store ptr %i.q, ptr %i.e, align 8, !noalias !3317
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %i.s, ptr %i.t, align 8, !noalias !3317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3317
  invoke void @_RINvXs3_NtNtCslmvYCXbQjWR_6common12universal_io8io_uringNtB6_11IoUringFileNtNtNtB8_6traits4read13UniversalRead3lenhECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3318)
  call void @llvm.experimental.noalias.scope.decl(metadata !3319)
  call void @llvm.experimental.noalias.scope.decl(metadata !3320)
  %i.v = load ptr, ptr %i.e, align 8, !alias.scope !3321, !noalias !3317, !nonnull !8, !noundef !8
  %i.w = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !3321
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3TE53SMfxyL_6fs_err4file4FileE9drop_slowCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #15
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.q

bb.k:                                             ; preds = %bb.h
  %i.y = load i64, ptr %i.c, align 8, !range !34, !noalias !3317, !noundef !8
  %.not8.i = icmp eq i64 %i.y, -1
  br i1 %.not8.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !3317
  %i.z = invoke noundef nonnull align 8 ptr @_RNvNtNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_api7helpers18io_error_to_status(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.p unwind label %bb.i

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !3317, !noundef !8
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.ad = phi ptr [ %.pre.i, %bb.p ], [ %i.q, %bb.m ]
  %.sroa.4.0.i = phi ptr [ %i.z, %bb.p ], [ %i.ac, %bb.m ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 1, %bb.p ], [ 0, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3317
  call void @llvm.experimental.noalias.scope.decl(metadata !3322)
  call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !3325
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit11.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3TE53SMfxyL_6fs_err4file4FileE9drop_slowCslmvYCXbQjWR_6common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #15
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit11.i unwind label %bb.e

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3317
  %.pre.i = load ptr, ptr %i.e, align 8, !alias.scope !3325, !noalias !3317
  br label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit11.i: ; preds = %bb.r, %bb.o, %bb.n
  %.sroa.4.1.i = phi ptr [ %i.o, %bb.r ], [ %.sroa.4.0.i, %bb.n ], [ %.sroa.4.0.i, %bb.o ]
  %.sroa.0.1.i = phi i64 [ 1, %bb.r ], [ %.sroa.0.0.i, %bb.n ], [ %.sroa.0.0.i, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3317
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f)
  %i.ag = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i, 0
  %i.ah = insertvalue { i64, ptr } %i.ag, ptr %.sroa.4.1.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret { i64, ptr } %i.ah

bb.q:                                             ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.r:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3317
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit11.i

.body.thread:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i, %bb.s
  %eh.lpad-body9 = phi { ptr, i32 } [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileECsl8OoimOLbh_6qdrant.exit.i ], [ %i.aj, %bb.s ]
  resume { ptr, i32 } %eh.lpad-body9

bb.s:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00EBO_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.g) #16
          to label %.body.thread unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1i_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream00ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
end_hunk_0
