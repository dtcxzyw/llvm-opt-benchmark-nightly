Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_boringssl-1866f05275b5cc7b.pingora_boringssl.fb3b88eaaa8ef3d8-cgu.0?download=true
inline.NumInlined: 41
inline.NumDeleted: 25
begin_hunk_0_@_RNvNtCslziUsABhg1g_17pingora_boringssl3ext19ssl_set_groups_list:bb.a
  %i.p = icmp eq i64 %i.k, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECslziUsABhg1g_17pingora_boringssl.exit24, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECslziUsABhg1g_17pingora_boringssl.exit24.sink.split

_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringNtBJ_8NulErrorE6unwrapCslziUsABhg1g_17pingora_boringssl.exit, %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  store i8 0, ptr %i.i, align 1
  %i.q = icmp eq i64 %i.k, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECslziUsABhg1g_17pingora_boringssl.exit24, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECslziUsABhg1g_17pingora_boringssl.exit24.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECslziUsABhg1g_17pingora_boringssl.exit24.sink.split: ; preds = %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread, %bb.h
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.k, i64 noundef 1) #8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECslziUsABhg1g_17pingora_boringssl.exit24

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECslziUsABhg1g_17pingora_boringssl.exit24: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECslziUsABhg1g_17pingora_boringssl.exit24.sink.split, %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCslziUsABhg1g_17pingora_boringssl3ext19ssl_use_certificate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i32 @SSL_use_certificate(ptr noundef nonnull %1, ptr noundef nonnull %2) #8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread, label %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit

_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit: ; preds = %bb.a
  call void @_RNvMNtCsgmeYf81KU2o_6boring5errorNtB2_10ErrorStack3get(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a)
  %.pr = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.410.0.copyload = load i32, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.511.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.pr, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.410.0.copyload, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.c

_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread: ; preds = %bb.a, %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCslziUsABhg1g_17pingora_boringssl3ext25ssl_set_verify_cert_store(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i32 @SSL_set1_verify_cert_store(ptr noundef nonnull %1, ptr noundef nonnull %2) #8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread, label %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit

_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit: ; preds = %bb.a
  call void @_RNvMNtCsgmeYf81KU2o_6boring5errorNtB2_10ErrorStack3get(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a)
  %.pr = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.410.0.copyload = load i32, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.511.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.pr, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.410.0.copyload, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.c

_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread: ; preds = %bb.a, %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCslziUsABhg1g_17pingora_boringssl3ext26suspend_when_need_ssl_cert(ptr noalias nofree noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @SSL_set_cert_cb(ptr noundef nonnull %0, ptr noundef nonnull @_RNvNtCslziUsABhg1g_17pingora_boringssl3ext14raw_cert_block, ptr noundef null) #8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCslziUsABhg1g_17pingora_boringssl3ext31ssl_set_renegotiate_mode_freely(ptr noalias nofree noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @SSL_set_renegotiate_mode(ptr noundef nonnull %0, i32 noundef 2) #8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtCsgmeYf81KU2o_6boring5errorNtB2_10ErrorStack3get(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCslziUsABhg1g_17pingora_boringssl3ext8add_host(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call noundef i32 @X509_VERIFY_PARAM_add1_host(ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %3) #8
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread, label %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit

_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit: ; preds = %bb.c
  call void @_RNvMNtCsgmeYf81KU2o_6boring5errorNtB2_10ErrorStack3get(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a)
  %.pr = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.b
  ret void

bb.e:                                             ; preds = %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.f

_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread: ; preds = %bb.c, %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvNtCslziUsABhg1g_17pingora_boringssl3ext3cvt.exit.thread, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCslziUsABhg1g_17pingora_boringssl(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !41, !noundef !4 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !43
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %.val1
  %i.g = icmp samesign eq i64 %.val1, 0
  br i1 %i.g, label %_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslziUsABhg1g_17pingora_boringssl.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44
  store ptr %.sroa.0.05.i.i.i, ptr %i.a, align 8, !noalias !44, !captures !45
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslziUsABhg1g_17pingora_boringssl.exit, label %.lr.ph.i.i.i

_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslziUsABhg1g_17pingora_boringssl.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCslziUsABhg1g_17pingora_boringssl(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !49, !noalias !50, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCsexYYUdYSQU6_5alloc3ffi5c_strNtB5_8NulErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare void @SSL_set_cert_cb(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsgmeYf81KU2o_6boring5errorNtB2_10ErrorStack3get(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsF_NtCsgmeYf81KU2o_6boring3sslNtB5_3Ssl12new_from_ref(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @SSL_add1_chain_cert(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NvMs_NtNtCsexYYUdYSQU6_5alloc3ffi5c_strNtBa_7CString3newReNtB5_11SpecNewImpl13spec_new_impl(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @SSL_set1_curves_list(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @SSL_use_certificate(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @SSL_set1_verify_cert_store(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @SSL_set_renegotiate_mode(ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @X509_VERIFY_PARAM_add1_host(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = distinct !{!5, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgmeYf81KU2o_6boring5error10ErrorStackECslziUsABhg1g_17pingora_boringssl"}
!6 = distinct !{!6, !5, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgmeYf81KU2o_6boring5error10ErrorStackECslziUsABhg1g_17pingora_boringssl: argument 0"}
!7 = distinct !{!7, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgmeYf81KU2o_6boring5error5ErrorEECslziUsABhg1g_17pingora_boringssl"}
!8 = distinct !{!8, !7, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgmeYf81KU2o_6boring5error5ErrorEECslziUsABhg1g_17pingora_boringssl: argument 0"}
!9 = distinct !{!9, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsgmeYf81KU2o_6boring5error5ErrorECslziUsABhg1g_17pingora_boringssl"}
!10 = distinct !{!10, !9, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsgmeYf81KU2o_6boring5error5ErrorECslziUsABhg1g_17pingora_boringssl: argument 0"}
!11 = distinct !{!11, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgmeYf81KU2o_6boring5error5ErrorECslziUsABhg1g_17pingora_boringssl"}
!12 = distinct !{!12, !11, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgmeYf81KU2o_6boring5error5ErrorECslziUsABhg1g_17pingora_boringssl: argument 0"}
!13 = distinct !{!13, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgmeYf81KU2o_6boring5error4DataECslziUsABhg1g_17pingora_boringssl"}
!14 = distinct !{!14, !13, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgmeYf81KU2o_6boring5error4DataECslziUsABhg1g_17pingora_boringssl: argument 0"}
!15 = !{!6}
!16 = !{!8}
!17 = !{!8, !6}
!18 = !{!10}
!19 = !{!12}
!20 = !{!14}
!21 = !{i64 0, i64 -9223372036854775806}
!22 = !{!14, !12, !10}
!23 = !{!14, !12, !10, !8, !6}
!24 = !{i64 0, i64 -9223372036854775808}
!25 = distinct !{!25, i1 false, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringNtBJ_8NulErrorE6unwrapCslziUsABhg1g_17pingora_boringssl"}
!26 = distinct !{!26, !25, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringNtBJ_8NulErrorE6unwrapCslziUsABhg1g_17pingora_boringssl: argument 0"}
!27 = distinct !{!27, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str8NulErrorECslziUsABhg1g_17pingora_boringssl"}
!28 = distinct !{!28, !27, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str8NulErrorECslziUsABhg1g_17pingora_boringssl: argument 0"}
!29 = !{!26}
!30 = !{i64 -1, i64 -9223372036854775808}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = !{!28}
!33 = !{!28, !26}
!34 = distinct !{!34, i1 false, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslziUsABhg1g_17pingora_boringssl"}
!35 = distinct !{!35, !34, !"_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslziUsABhg1g_17pingora_boringssl: argument 0"}
!36 = distinct !{!36, i1 false, !"_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCslziUsABhg1g_17pingora_boringssl"}
!37 = distinct !{!37, !36, !"_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCslziUsABhg1g_17pingora_boringssl: argument 1"}
!38 = distinct !{!38, !36, !"_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCslziUsABhg1g_17pingora_boringssl: argument 0"}
!39 = distinct !{!39, i1 false, !"_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECslziUsABhg1g_17pingora_boringssl"}
!40 = distinct !{!40, !39, !"_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECslziUsABhg1g_17pingora_boringssl: argument 0"}
!41 = !{i64 8}
!42 = !{!38, !37, !35}
!43 = !{!38}
!44 = !{!40, !38, !37, !35}
!45 = !{!"address", !"read_provenance"}
!46 = distinct !{!46, i1 false, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt"}
!47 = distinct !{!47, !46, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt: argument 1"}
!48 = distinct !{!48, !46, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt: argument 0"}
!49 = !{!47}
!50 = !{!48}
end_hunk_0
