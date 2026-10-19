Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_proxy-72c884e3cf9f01a0.pingora_proxy.2baed5738fdb112f-cgu.09?download=true
inline.NumInlined: 338
inline.NumDeleted: 170
begin_hunk_0_@_RNvMs0_Cs3Kwrwkha1e5_13pingora_proxyNtB5_7Session19new_h1_with_modules:bb.a
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.h, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6server7SessionE3newCs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.b, ptr noundef nonnull align 8 dereferenceable(536) %i.a, i64 536, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.f = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 537) 24, i64 noundef 8) #18 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6server7SessionE3newCs3Kwrwkha1e5_13pingora_proxy.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #19
          to label %.noexc5 unwind label %bb.g

.noexc5:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6server7SessionE3newCs3Kwrwkha1e5_13pingora_proxy.exit
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call fastcc void @_RINvMs0_Cs3Kwrwkha1e5_13pingora_proxyNtB6_7Session3newINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6server7SessionEEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(248) %0, ptr noalias noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %3, ptr noundef nonnull %i.f)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6server7SessionEECs3Kwrwkha1e5_13pingora_proxy(ptr %i.b) #17
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef zeroext i1 @_RNvMs0_Cs3Kwrwkha1e5_13pingora_proxyNtB5_7Session24is_process_shutting_down(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(248) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load atomic i8, ptr %i.c acquire, align 1
  %i.e = icmp ne i8 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_Cs3Kwrwkha1e5_13pingora_proxyNtB5_7Session25downstream_custom_message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(248) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !range !15, !noundef !5 ; 2 uses
  %i.f = icmp ne i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 6
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !13, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !5, !nonnull !5
  %i.n = tail call { ptr, ptr } %i.m(ptr noundef nonnull %i.i) #20 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.n, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.p, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.s = phi ptr [ %i.p, %bb.e ], [ undef, %bb.b ]
  %storemerge = phi i64 [ 1, %bb.e ], [ 0, %bb.b ] ; 2 uses
  store i64 %storemerge, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !850
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 18, ptr %i.t, align 8, !noalias !851
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  store i8 3, ptr %i.u, align 1, !noalias !850
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.v, align 8, !noalias !850
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.w, align 8, !noalias !850
  store i64 0, ptr %i.a, align 8, !noalias !852
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @12, ptr %.sroa.415.0..sroa_idx, align 8, !noalias !852
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 43, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !852
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !853
  %i.x = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 537) 72, i64 noundef 8) #18, !noalias !853 ; 6 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.j, !prof !16

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #19
          to label %.noexc.i unwind label %bb.h, !noalias !850

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #17
          to label %.body unwind label %bb.i, !noalias !850

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !850
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !850
  %i.ab = trunc nuw i64 %storemerge to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  store ptr %i.o, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.ad, align 8
  store i64 0, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(72) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECs3Kwrwkha1e5_13pingora_proxy.exit unwind label %bb.l, !noalias !854

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef 72, i64 noundef 8) #18, !noalias !854
  br label %.body.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECs3Kwrwkha1e5_13pingora_proxy.exit: ; preds = %bb.k
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef 72, i64 noundef 8) #18, !noalias !854
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  store ptr %i.x, ptr %i.ac, align 8
  store i64 1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECs3Kwrwkha1e5_13pingora_proxy.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

.body.thread:                                     ; preds = %bb.l, %.body
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.z, %.body ], [ %i.ae, %bb.l ]
  resume { ptr, i32 } %eh.lpad-body18

.body:                                            ; preds = %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskuYkQcunIyP_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1eA6bChxBZF_5bytes5bytes5BytesIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker5UnpinNtB47_4SendNtB47_4SyncEL_EEEECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %.body.thread unwind label %bb.o

bb.o:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_Cs3Kwrwkha1e5_13pingora_proxyNtB5_7Session6new_h1(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [536 x i8], align 8               ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6serverNtB2_7Session9new_http1(ptr noalias nofree noundef nonnull sret([536 x i8]) align 8 captures(none) dereferenceable(536) %i.a, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %2)
          to label %bb.b unwind label %3

.body:                                            ; preds = %bb.h, %bb.d, %3, %bb.k
  %.pn = phi { ptr, i32 } [ %i.j, %bb.k ], [ %i.i, %bb.h ], [ %4, %3 ], [ %i.e, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core7modules4http11HttpModulesECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #17
          to label %bb.m unwind label %bb.l

3:                                                ; preds = %bb.a
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !857
  %i.c = tail call noundef align 8 dereferenceable_or_null(536) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 537) 536, i64 noundef 8) #18, !noalias !857 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.f, !prof !16

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 536) #19
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6server7SessionECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(536) %i.a) #17
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.c, ptr noundef nonnull align 8 dereferenceable(536) %i.a, i64 536, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.g = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 537) 24, i64 noundef 8) #18 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.i, !prof !16

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #19
          to label %.noexc13 unwind label %bb.k

.noexc13:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.f
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx16, align 8
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx17, align 8
  invoke fastcc void @_RINvMs0_Cs3Kwrwkha1e5_13pingora_proxyNtB6_7Session3newINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6server7SessionEEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(248) %0, ptr noalias noundef nonnull align 8 %i.c, ptr noundef nonnull align 8 %i.b, ptr noundef nonnull %i.g)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core7modules4http11HttpModulesECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6server7SessionEECs3Kwrwkha1e5_13pingora_proxy(ptr %i.c) #17
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.m:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_Cs3Kwrwkha1e5_13pingora_proxyNtB5_17SubrequestSpawner17create_subrequest(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(176) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [536 x i8], align 8               ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [176 x i8], align 8               ; 4 uses
  %i.d = alloca [568 x i8], align 8               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [536 x i8], align 8               ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !13, !noundef !5 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvNtCs3Kwrwkha1e5_13pingora_proxy10subrequest14create_session(ptr noalias nofree noundef nonnull sret([568 x i8]) align 8 captures(none) dereferenceable(568) %i.d, ptr noundef nonnull align 8 %2)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.f, ptr noundef nonnull align 8 dereferenceable(536) %i.d, i64 536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !5
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.f, align 8, !range !15, !noundef !5 ; 2 uses
  %i.t = icmp ne i64 %i.s, 4
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %i.s, 5
  br i1 %i.u, label %bb.k, label %bb.l, !prof !18

bb.g:                                             ; preds = %bb.k, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull align 8 dereferenceable(176) %3, i64 176, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !870
  %i.v = call noundef align 8 dereferenceable_or_null(176) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 537) 176, i64 noundef 8) #18, !noalias !870 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.n, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 176) #19
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3Kwrwkha1e5_13pingora_proxy10subrequest3CtxEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.c) #17
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession26clear_request_body_headers(ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %i.z)
          to label %bb.g unwind label %bb.m

bb.l:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19
          to label %bb.u unwind label %bb.m

.body:                                            ; preds = %bb.m, %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_.exit
  %.pn = phi { ptr, i32 } [ %i.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_.exit ], [ %i.aa, %bb.m ], [ %i.x, %bb.i ] ; 3 uses
  %.sroa.04.1 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_.exit ], [ true, %bb.m ], [ false, %bb.i ] ; 2 uses
  %.sroa.02.0 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_.exit ], [ true, %bb.m ], [ true, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6server16SubrequestHandleECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #17
          to label %bb.v unwind label %bb.t

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.v, ptr noundef nonnull align 8 dereferenceable(176) %3, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.a, ptr noundef nonnull align 8 dereferenceable(536) %i.f, i64 536, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !871
  %i.ac = call noundef align 8 dereferenceable_or_null(536) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 537) 536, i64 noundef 8) #18, !noalias !871 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.o, label %bb.s, !prof !16

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 536) #19
          to label %.noexc10 unwind label %bb.p

.noexc10:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6server7SessionECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(536) %i.a) #17
          to label %.body8 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

.body8:                                           ; preds = %bb.p
  %i.ag = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !872
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_.exit

bb.r:                                             ; preds = %.body8
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtCskKLDkoKarTP_4core6marker4SendNtB1q_4SyncEL_E9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #15
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_.exit unwind label %bb.t

bb.s:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.ac, ptr noundef nonnull align 8 dereferenceable(536) %i.a, i64 536, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  store ptr %i.h, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ac, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.t:                                             ; preds = %bb.z, %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtCs3Kwrwkha1e5_13pingora_proxy10SubrequestNtNtB4_6marker4SendNtB1T_4SyncEL_EEB1c_.exit, %bb.ab, %bb.w, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
