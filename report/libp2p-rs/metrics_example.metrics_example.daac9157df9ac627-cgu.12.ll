Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/metrics_example.metrics_example.daac9157df9ac627-cgu.12?download=true
inline.NumInlined: 1969
inline.NumDeleted: 1054
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskSsi02DWvps_13opentelemetry5trace5EventENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example:bb.a
  invoke void @_RNvXs0_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !3232

.noexc.i:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !3233, !noalias !3234, !noundef !10
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !range !3235, !alias.scope !3233, !noalias !3234, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3230
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskSsi02DWvps_13opentelemetry6common8KeyValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.012.047.i)
          to label %bb.h unwind label %bb.e, !noalias !3234

bb.e:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load i64, ptr %i.b, align 8, !range !112, !alias.scope !3236, !noalias !3230, !noundef !10
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.g, !noalias !3234

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3234
  unreachable

bb.h:                                             ; preds = %.noexc.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 64
  %i.ai = load i32, ptr %i.ah, align 8, !alias.scope !3233, !noalias !3234, !noundef !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3230
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.7.046.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.013.i, i64 48, i1 false), !noalias !3232
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i64 %i.aa, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !3232
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store i32 %i.ac, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !3232
  %.sroa.733.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store i32 %i.ai, ptr %.sroa.733.0..sroa_idx.i, align 8, !noalias !3232
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013.i)
  %i.ak = icmp eq i64 %i.u, 0
  br i1 %i.ak, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCskSsi02DWvps_13opentelemetry5trace5EventNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiLZOIpitoQl_15metrics_example.exit, label %bb.c

bb.i:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3232
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.e, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ad, %bb.e ], [ %i.ad, %bb.f ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.046.i, ptr %i.r, align 8, !noalias !3225
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCskSsi02DWvps_13opentelemetry5trace5EventEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #25
          to label %bb.k unwind label %bb.i, !noalias !3232

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCskSsi02DWvps_13opentelemetry5trace5EventNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.c, %bb.h, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i
  store i64 %i.h, ptr %i.r, align 8, !noalias !3225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3225
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskSsi02DWvps_13opentelemetry6common8KeyValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.028.i = alloca [24 x i8], align 8        ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.l = load i64, ptr %i.i, align 8, !noundef !10 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3243
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, 164703072086692426) %i.l, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !noalias !3243
  %i.m = load i64, ptr %i.g, align 8, !range !30, !noalias !3243, !noundef !10
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !31, !noalias !3243, !noundef !10 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8, !noalias !3243
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #27, !noalias !3245
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !noalias !3243, !nonnull !10, !noundef !10 ; 2 uses
  %i.t = icmp ule i64 %i.l, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3243
  store i64 %i.p, ptr %i.h, align 8, !noalias !3243
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.s, ptr %i.u, align 8, !noalias !3243
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.l
  %i.x = icmp eq i64 %i.p, 0
  br i1 %i.x, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCskSsi02DWvps_13opentelemetry6common8KeyValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiLZOIpitoQl_15metrics_example.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.ao, %.lr.ph.i
  %.sroa.013.090.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.aj, %bb.ao ] ; 16 uses
  %.sroa.7.086.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ak, %bb.ao ] ; 3 uses
  %.sroa.10.085.i = phi i64 [ %i.p, %.lr.ph.i ], [ %i.ah, %bb.ao ]
  %i.ah = add i64 %.sroa.10.085.i, -1             ; 2 uses
  %i.ai = icmp eq ptr %.sroa.013.090.i, %i.w
  br i1 %i.ai, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCskSsi02DWvps_13opentelemetry6common8KeyValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiLZOIpitoQl_15metrics_example.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 56
  %i.ak = add nuw nsw i64 %.sroa.7.086.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3246)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3249
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3251)
  %i.al = load i64, ptr %.sroa.013.090.i, align 8, !range !306, !alias.scope !3254, !noalias !3255, !noundef !10 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 8 ; 3 uses
  switch i64 %i.al, label %.unreachabledefault [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

.unreachabledefault:                              ; preds = %bb.d
  unreachable

default.unreachable:                              ; preds = %bb.n, %bb.af
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.an = invoke { ptr, i64 } @_RNvXsf_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !3245 ; 2 uses

.noexc.i:                                         ; preds = %bb.e
  %i.ao = extractvalue { ptr, i64 } %i.an, 0
  %i.ap = extractvalue { ptr, i64 } %i.an, 1
  br label %_RNvXsM_NtCskSsi02DWvps_13opentelemetry6commonNtB5_10OtelStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.am, align 8, !alias.scope !3254, !noalias !3255, !nonnull !10, !noundef !10
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !3254, !noalias !3255, !noundef !10
  br label %_RNvXsM_NtCskSsi02DWvps_13opentelemetry6commonNtB5_10OtelStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %i.am, align 8, !alias.scope !3254, !noalias !3255, !nonnull !10, !noundef !10 ; 2 uses
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !3257
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !3254, !noalias !3255, !noundef !10
  br label %_RNvXsM_NtCskSsi02DWvps_13opentelemetry6commonNtB5_10OtelStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

_RNvXsM_NtCskSsi02DWvps_13opentelemetry6commonNtB5_10OtelStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.h, %bb.f, %.noexc.i
  %.sink4.i.i.i = phi ptr [ %i.at, %bb.h ], [ %i.aq, %bb.f ], [ %i.ao, %.noexc.i ]
  %.sink2.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %i.as, %bb.f ], [ %i.ap, %.noexc.i ]
  store i64 %i.al, ptr %i.f, align 8, !noalias !3249
  store ptr %.sink4.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3249
  store i64 %.sink2.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3249
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3258)
  %i.az = load i64, ptr %i.ay, align 8, !range !1329, !alias.scope !3261, !noalias !3262, !noundef !10 ; 3 uses
  %i.ba = add nsw i64 %i.az, -4
  %.inv.i.i.i = icmp samesign ult i64 %i.az, 4
  %i.bb = select i1 %.inv.i.i.i, i64 4, i64 %i.ba
  switch i64 %i.bb, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 4, label %bb.t
  ]

bb.j:                                             ; preds = %_RNvXsM_NtCskSsi02DWvps_13opentelemetry6commonNtB5_10OtelStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  unreachable

bb.k:                                             ; preds = %_RNvXsM_NtCskSsi02DWvps_13opentelemetry6commonNtB5_10OtelStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 32
  %i.bd = load i8, ptr %i.bc, align 8, !range !843, !alias.scope !3261, !noalias !3262, !noundef !10
  %.sroa.8.8.insert.ext.i.i = zext nneg i8 %i.bd to i64
  br label %bb.ao

bb.l:                                             ; preds = %_RNvXsM_NtCskSsi02DWvps_13opentelemetry6commonNtB5_10OtelStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !3261, !noalias !3262, !noundef !10
  br label %bb.ao

bb.m:                                             ; preds = %_RNvXsM_NtCskSsi02DWvps_13opentelemetry6commonNtB5_10OtelStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !3261, !noalias !3262, !noundef !10
  br label %bb.ao

bb.n:                                             ; preds = %_RNvXsM_NtCskSsi02DWvps_13opentelemetry6commonNtB5_10OtelStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3264)
  %i.bj = load i64, ptr %i.bi, align 8, !range !306, !alias.scope !3267, !noalias !3268, !noundef !10
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 40 ; 3 uses
  switch i64 %i.bj, label %default.unreachable [
    i64 0, label %bb.o
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.bl = invoke { ptr, i64 } @_RNvXsf_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bk)
          to label %.noexc.i.i unwind label %.loopexit41.i, !noalias !3270 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.o
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1
  br label %bb.ao

bb.p:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %i.bk, align 8, !alias.scope !3267, !noalias !3268, !nonnull !10, !noundef !10
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 48
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !3267, !noalias !3268, !noundef !10
  br label %bb.ao

bb.q:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %i.bk, align 8, !alias.scope !3267, !noalias !3268, !nonnull !10, !noundef !10 ; 2 uses
  %i.bs = atomicrmw add ptr %i.br, i64 1 monotonic, align 8, !noalias !3271
  %i.bt = icmp slt i64 %i.bs, 0
  br i1 %i.bt, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !3267, !noalias !3268, !noundef !10
  br label %bb.ao

bb.s:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %_RNvXsM_NtCskSsi02DWvps_13opentelemetry6commonNtB5_10OtelStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3272)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !3275, !noalias !3276, !nonnull !10, !noundef !10 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.013.090.i, i64 48
  %.val1.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !3275, !noalias !3276, !noundef !10 ; 19 uses
  switch i64 %i.az, label %default.unreachable29.i.i.i.i [
    i64 0, label %bb.u
    i64 1, label %bb.x
    i64 2, label %bb.aa
    i64 3, label %bb.ad
  ]

default.unreachable29.i.i.i.i:                    ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3278
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc1.i.i unwind label %.loopexit41.i, !noalias !3270

.noexc1.i.i:                                      ; preds = %bb.u
  %i.by = load i64, ptr %i.e, align 8, !range !30, !noalias !3278, !noundef !10
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = load i64, ptr %i.af, align 8, !range !31, !noalias !3278, !noundef !10 ; 4 uses
  br i1 %i.bz, label %bb.v, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i.i, !prof !32

bb.v:                                             ; preds = %.noexc1.i.i
  %i.cb = load i64, ptr %i.ag, align 8, !noalias !3278
  br label %.invoke.i.i

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i.i: ; preds = %.noexc1.i.i
  %i.cc = load ptr, ptr %i.ag, align 8, !noalias !3278, !nonnull !10, !noundef !10 ; 3 uses
  %i.cd = icmp ule i64 %.val1.i.i.i.i, %i.ca
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3278
  %.not.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.w

bb.w:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull readonly align 1 %.val.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val1.i.i.i.i, i1 false), !noalias !3284
  br label %bb.ao

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3285
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 1152921504606846976) %.val1.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc3.i.i unwind label %.loopexit41.i, !noalias !3270

.noexc3.i.i:                                      ; preds = %bb.x
  %i.ce = load i64, ptr %i.d, align 8, !range !30, !noalias !3285, !noundef !10
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = load i64, ptr %i.ad, align 8, !range !31, !noalias !3285, !noundef !10 ; 4 uses
  br i1 %i.cf, label %bb.y, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i8.i.i.i.i, !prof !32

bb.y:                                             ; preds = %.noexc3.i.i
  %i.ch = load i64, ptr %i.ae, align 8, !noalias !3285
  br label %.invoke.i.i

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i8.i.i.i.i: ; preds = %.noexc3.i.i
  %i.ci = load ptr, ptr %i.ae, align 8, !noalias !3285, !nonnull !10, !noundef !10 ; 3 uses
  %i.cj = icmp ule i64 %.val1.i.i.i.i, %i.cg
  tail call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3285
  %.not.i.i9.i.i.i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %.not.i.i9.i.i.i.i, label %bb.ao, label %bb.z

bb.z:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i8.i.i.i.i
  %i.ck = shl nuw nsw i64 %.val1.i.i.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr nonnull readonly align 8 %.val.i.i.i.i, i64 %i.ck, i1 false), !noalias !3291
  br label %bb.ao

bb.aa:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3292
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 1152921504606846976) %.val1.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc5.i.i unwind label %.loopexit41.i, !noalias !3270

.noexc5.i.i:                                      ; preds = %bb.aa
  %i.cl = load i64, ptr %i.c, align 8, !range !30, !noalias !3292, !noundef !10
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = load i64, ptr %i.ab, align 8, !range !31, !noalias !3292, !noundef !10 ; 4 uses
  br i1 %i.cm, label %bb.ab, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i10.i.i.i.i, !prof !32

bb.ab:                                            ; preds = %.noexc5.i.i
  %i.co = load i64, ptr %i.ac, align 8, !noalias !3292
  br label %.invoke.i.i

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i10.i.i.i.i: ; preds = %.noexc5.i.i
  %i.cp = load ptr, ptr %i.ac, align 8, !noalias !3292, !nonnull !10, !noundef !10 ; 3 uses
  %i.cq = icmp ule i64 %.val1.i.i.i.i, %i.cn
  tail call void @llvm.assume(i1 %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3292
  %.not.i.i11.i.i.i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %.not.i.i11.i.i.i.i, label %bb.ao, label %bb.ac

bb.ac:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i10.i.i.i.i
  %i.cr = shl nuw nsw i64 %.val1.i.i.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cp, ptr nonnull readonly align 8 %.val.i.i.i.i, i64 %i.cr, i1 false), !noalias !3298
  br label %bb.ao

bb.ad:                                            ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3302
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %.val1.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc7.i.i unwind label %.loopexit41.i, !noalias !3270

.noexc7.i.i:                                      ; preds = %bb.ad
  %i.cs = load i64, ptr %i.a, align 8, !range !30, !noalias !3302, !noundef !10
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = load i64, ptr %i.y, align 8, !range !31, !noalias !3302, !noundef !10 ; 6 uses
  br i1 %i.ct, label %bb.ae, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i12.i.i.i.i, !prof !32

bb.ae:                                            ; preds = %.noexc7.i.i
  %i.cv = load i64, ptr %i.z, align 8, !noalias !3302
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.ae, %bb.ab, %bb.y, %bb.v
  %i.cw = phi i64 [ %i.cu, %bb.ae ], [ %i.cn, %bb.ab ], [ %i.cg, %bb.y ], [ %i.ca, %bb.v ]
  %i.cx = phi i64 [ %i.cv, %bb.ae ], [ %i.co, %bb.ab ], [ %i.ch, %bb.y ], [ %i.cb, %bb.v ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cw, i64 %i.cx) #27
          to label %.cont.i.i unwind label %.loopexit.split-lp42.i, !noalias !3270

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i12.i.i.i.i: ; preds = %.noexc7.i.i
  %i.cy = load ptr, ptr %i.z, align 8, !noalias !3302, !nonnull !10, !noundef !10 ; 3 uses
  %i.cz = icmp ule i64 %.val1.i.i.i.i, %i.cu
  tail call void @llvm.assume(i1 %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3302
  store i64 %i.cu, ptr %i.b, align 8, !noalias !3302
  store ptr %i.cy, ptr %i.aa, align 8, !noalias !3302
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %.val1.i.i.i.i
  %i.db = icmp eq i64 %i.cu, 0
  br i1 %i.db, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskSsi02DWvps_13opentelemetry6common11StringValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i12.i.i.i.i, %_RNvXs11_NtCskSsi02DWvps_13opentelemetry6commonNtB6_11StringValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  %.sroa.012.037.i.i.i.i.i.i = phi ptr [ %i.de, %_RNvXs11_NtCskSsi02DWvps_13opentelemetry6commonNtB6_11StringValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ %.val.i.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i12.i.i.i.i ] ; 6 uses
  %.sroa.7.036.i.i.i.i.i.i = phi i64 [ %i.df, %_RNvXs11_NtCskSsi02DWvps_13opentelemetry6commonNtB6_11StringValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i12.i.i.i.i ] ; 3 uses
  %.sroa.10.035.i.i.i.i.i.i = phi i64 [ %i.dc, %_RNvXs11_NtCskSsi02DWvps_13opentelemetry6commonNtB6_11StringValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ %i.cu, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i12.i.i.i.i ]
  %i.dc = add i64 %.sroa.10.035.i.i.i.i.i.i, -1   ; 2 uses
  %i.dd = icmp eq ptr %.sroa.012.037.i.i.i.i.i.i, %i.da
  br i1 %i.dd, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskSsi02DWvps_13opentelemetry6common11StringValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i.i.i.i.i, i64 24
  %i.df = add nuw nsw i64 %.sroa.7.036.i.i.i.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3309)
  %i.dg = load i64, ptr %.sroa.012.037.i.i.i.i.i.i, align 8, !range !306, !alias.scope !3312, !noalias !3313, !noundef !10 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i.i.i.i.i, i64 8 ; 3 uses
  switch i64 %i.dg, label %default.unreachable [
    i64 0, label %bb.ag
    i64 1, label %bb.ah
    i64 2, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %i.di = invoke { ptr, i64 } @_RNvXsf_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dh)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.am, !noalias !3316 ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ag
  %i.dj = extractvalue { ptr, i64 } %i.di, 0
  %i.dk = extractvalue { ptr, i64 } %i.di, 1
  br label %_RNvXs11_NtCskSsi02DWvps_13opentelemetry6commonNtB6_11StringValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.dl = load ptr, ptr %i.dh, align 8, !alias.scope !3312, !noalias !3313, !nonnull !10, !noundef !10
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i.i.i.i.i, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !3312, !noalias !3313, !noundef !10
  br label %_RNvXs11_NtCskSsi02DWvps_13opentelemetry6commonNtB6_11StringValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.af
  %i.do = load ptr, ptr %i.dh, align 8, !alias.scope !3312, !noalias !3313, !nonnull !10, !noundef !10 ; 2 uses
  %i.dp = atomicrmw add ptr %i.do, i64 1 monotonic, align 8, !noalias !3317
  %i.dq = icmp slt i64 %i.dp, 0
  br i1 %i.dq, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i.i.i.i.i, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !3312, !noalias !3313, !noundef !10
  br label %_RNvXs11_NtCskSsi02DWvps_13opentelemetry6commonNtB6_11StringValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  tail call void @llvm.trap()
  unreachable

_RNvXs11_NtCskSsi02DWvps_13opentelemetry6commonNtB6_11StringValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ah, %.noexc.i.i.i.i.i.i
  %.sink4.i.i.i.i.i.i.i.i = phi ptr [ %i.do, %bb.aj ], [ %i.dl, %bb.ah ], [ %i.dj, %.noexc.i.i.i.i.i.i ]
  %.sink2.i.i.i.i.i.i.i.i = phi i64 [ %i.ds, %bb.aj ], [ %i.dn, %bb.ah ], [ %i.dk, %.noexc.i.i.i.i.i.i ]
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %.sroa.7.036.i.i.i.i.i.i ; 3 uses
  store i64 %i.dg, ptr %i.dt, align 8, !noalias !3316
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %.sink4.i.i.i.i.i.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3316
  %.sroa.524.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %.sink2.i.i.i.i.i.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3316
  %i.du = icmp eq i64 %i.dc, 0
  br i1 %i.du, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskSsi02DWvps_13opentelemetry6common11StringValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.am
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3316
  unreachable

bb.am:                                            ; preds = %bb.ag
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.7.036.i.i.i.i.i.i, ptr %i.dw, align 8, !noalias !3302
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCskSsi02DWvps_13opentelemetry6common11StringValueEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %.body.i.i unwind label %bb.al, !noalias !3316

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskSsi02DWvps_13opentelemetry6common11StringValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i: ; preds = %_RNvXs11_NtCskSsi02DWvps_13opentelemetry6commonNtB6_11StringValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3302
  br label %bb.ao

.loopexit41.i:                                    ; preds = %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.o
  %lpad.loopexit43.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp42.i:                           ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp44.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp42.i, %.loopexit41.i, %bb.am
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %bb.am ], [ %lpad.loopexit43.i, %.loopexit41.i ], [ %lpad.loopexit.split-lp44.i, %.loopexit.split-lp42.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskSsi02DWvps_13opentelemetry6common3KeyECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #25
          to label %bb.aq unwind label %bb.an, !noalias !3270

bb.an:                                            ; preds = %.body.i.i
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3270
  unreachable

bb.ao:                                            ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskSsi02DWvps_13opentelemetry6common11StringValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i, %bb.ac, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i10.i.i.i.i, %bb.z, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i8.i.i.i.i, %bb.w, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i.i, %bb.r, %bb.p, %.noexc.i.i, %bb.m, %bb.l, %bb.k
  %.sroa.15.0.i.i = phi i64 [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ %i.bn, %.noexc.i.i ], [ %i.bv, %bb.r ], [ %i.bq, %bb.p ], [ %.val1.i.i.i.i, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskSsi02DWvps_13opentelemetry6common11StringValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i.i ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i8.i.i.i.i ], [ %.val1.i.i.i.i, %bb.w ], [ %.val1.i.i.i.i, %bb.z ], [ %.val1.i.i.i.i, %bb.ac ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i10.i.i.i.i ]
  %.sroa.13.0.i.i = phi ptr [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ %i.bm, %.noexc.i.i ], [ %i.br, %bb.r ], [ %i.bo, %bb.p ], [ %i.cy, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskSsi02DWvps_13opentelemetry6common11StringValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i ], [ %i.cc, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i.i ], [ %i.ci, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i8.i.i.i.i ], [ %i.cc, %bb.w ], [ %i.ci, %bb.z ], [ %i.cp, %bb.ac ], [ %i.cp, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i10.i.i.i.i ]
  %.sroa.8.0.i.i = phi i64 [ %.sroa.8.8.insert.ext.i.i, %bb.k ], [ %i.bf, %bb.l ], [ %i.bh, %bb.m ], [ 0, %.noexc.i.i ], [ 2, %bb.r ], [ 1, %bb.p ], [ %i.cu, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskSsi02DWvps_13opentelemetry6common11StringValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i ], [ %i.ca, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i.i ], [ %i.cg, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i8.i.i.i.i ], [ %i.ca, %bb.w ], [ %i.cg, %bb.z ], [ %i.cn, %bb.ac ], [ %i.cn, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i10.i.i.i.i ]
  %.sroa.0.0.i12.i = phi i64 [ 4, %bb.k ], [ 5, %bb.l ], [ 6, %bb.m ], [ 7, %.noexc.i.i ], [ 7, %bb.r ], [ 7, %bb.p ], [ 3, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskSsi02DWvps_13opentelemetry6common11StringValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i8.i.i.i.i ], [ 0, %bb.w ], [ 1, %bb.z ], [ 2, %bb.ac ], [ 2, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i.i10.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.028.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.028.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !3243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3249
  %i.dy = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %.sroa.7.086.i ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.028.i, i64 24, i1 false), !noalias !3245
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store i64 %.sroa.0.0.i12.i, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !3245
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store i64 %.sroa.8.0.i.i, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !3245
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  store ptr %.sroa.13.0.i.i, ptr %.sroa.631.0..sroa_idx.i, align 8, !noalias !3245
  %.sroa.732.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  store i64 %.sroa.15.0.i.i, ptr %.sroa.732.0..sroa_idx.i, align 8, !noalias !3245
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.028.i)
  %i.dz = icmp eq i64 %i.ah, 0
  br i1 %i.dz, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCskSsi02DWvps_13opentelemetry6common8KeyValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiLZOIpitoQl_15metrics_example.exit, label %bb.c

bb.ap:                                            ; preds = %bb.aq
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3245
  unreachable

bb.aq:                                            ; preds = %.body.i.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.086.i, ptr %i.v, align 8, !noalias !3243
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCskSsi02DWvps_13opentelemetry6common8KeyValueEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #25
          to label %bb.ar unwind label %bb.ap, !noalias !3245

bb.ar:                                            ; preds = %bb.aq
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCskSsi02DWvps_13opentelemetry6common8KeyValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.c, %bb.ao, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i
  store i64 %i.l, ptr %i.v, align 8, !noalias !3243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !3240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3243
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %i.e = load i64, ptr %i.b, align 8, !noundef !10 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3318)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3321
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 4611686018427387904) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !noalias !3321
  %i.f = load i64, ptr %i.a, align 8, !range !30, !noalias !3321, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !31, !noalias !3321, !noundef !10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !3321
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !3321
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !3321, !nonnull !10, !noundef !10 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3321
  store i64 %i.i, ptr %0, align 8, !alias.scope !3318, !noalias !3323
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !3318, !noalias !3323
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !3318, !noalias !3323
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsiLZOIpitoQl_15metrics_example.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i
  %i.p = shl nuw nsw i64 %i.e, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 %i.p, i1 false), !noalias !3318
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !3318, !noalias !3323
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsiLZOIpitoQl_15metrics_example.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsiLZOIpitoQl_15metrics_example.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.k = alloca [96 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [64 x i8], align 16               ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.1052.i = alloca [24 x i8], align 8       ; 4 uses
  %.sroa.1153.i = alloca [24 x i8], align 16      ; 4 uses
  %.sroa.014.i = alloca [224 x i8], align 16      ; 7 uses
  %.sroa.11.i = alloca [28 x i8], align 4         ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.w = load i64, ptr %i.t, align 8, !noundef !10 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3327
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, i64 noundef range(i64 0, 26202761468337432) %i.w, i1 noundef zeroext false, i64 noundef 16, i64 noundef 352), !noalias !3327
  %i.x = load i64, ptr %i.r, align 8, !range !30, !noalias !3327, !noundef !10
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !31, !noalias !3327, !noundef !10 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.y, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !3327
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #27, !noalias !3329
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %bb.a
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !3327, !nonnull !10, !noundef !10 ; 2 uses
  %i.ae = icmp ule i64 %i.w, %i.aa
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3327
  store i64 %i.aa, ptr %i.s, align 8, !noalias !3327
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !noalias !3327
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw [352 x i8], ptr %i.v, i64 %i.w
  %i.ai = icmp eq i64 %i.aa, 0
  br i1 %i.ai, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiLZOIpitoQl_15metrics_example.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiLZOIpitoQl_15metrics_example.exit.i
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 57
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.014.160..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 160
  %.sroa.11.256..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.i, i64 4
  %.sroa.014.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 32
  %.sroa.014.64..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.ar, %.lr.ph.i
  %.sroa.013.088.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.au, %bb.ar ] ; 26 uses
  %.sroa.7.087.i = phi i64 [ 0, %.lr.ph.i ], [ %i.av, %bb.ar ] ; 3 uses
  %.sroa.10.086.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.as, %bb.ar ]
  %i.as = add i64 %.sroa.10.086.i, -1             ; 2 uses
  %i.at = icmp eq ptr %.sroa.013.088.i, %i.ah
  br i1 %i.at, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiLZOIpitoQl_15metrics_example.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.088.i, i64 352
  %i.av = add nuw nsw i64 %.sroa.7.087.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3330)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3333
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.088.i, i64 160 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.088.i, i64 192
  %i.ay = load i128, ptr %i.ax, align 16, !alias.scope !3335, !noalias !3336, !noundef !10
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.088.i, i64 208
  %i.ba = load i64, ptr %i.az, align 16, !alias.scope !3335, !noalias !3336, !noundef !10
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.013.088.i, i64 217
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !3335, !noalias !3336, !noundef !10
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.013.088.i, i64 216
  %i.be = load i8, ptr %i.bd, align 8, !range !843, !alias.scope !3335, !noalias !3336, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.bf = load i64, ptr %i.aw, align 16, !range !112, !alias.scope !3335, !noalias !3336, !noundef !10
  %.not.i.i = icmp eq i64 %i.bf, -1
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3333
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB2_8VecDequeTNtNtB6_6string6StringB13_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !3329

.noexc.i:                                         ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !3333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, i64 24, i1 false), !noalias !3333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3333
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i, %bb.d
end_hunk_0
