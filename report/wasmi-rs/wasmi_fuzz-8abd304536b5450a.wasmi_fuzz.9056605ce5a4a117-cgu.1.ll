Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_fuzz-8abd304536b5450a.wasmi_fuzz.9056605ce5a4a117-cgu.1?download=true
inline.NumInlined: 133
inline.NumDeleted: 74
begin_hunk_0_@_RINvCsaoJQ0BThbft_11wasmprinter11print_bytesRShECscoiT177WhKJ_10wasmi_fuzz:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs1_CsaoJQ0BThbft_11wasmprinterNtB5_6Config3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.d unwind label %bb.b

.body7:                                           ; preds = %bb.o, %bb.p, %bb.j, %bb.k, %bb.b, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.j ], [ %i.e, %bb.b ], [ %i.p, %bb.k ], [ %i.u, %bb.p ], [ %i.u, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #23
          to label %common.resume unwind label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body7

bb.c:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.m, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #23
          to label %.body7 unwind label %bb.w

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.g, align 8, !noalias !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.b, ptr %i.h, align 8, !noalias !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @2, ptr %i.i, align 8, !noalias !52
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 0, ptr %i.j, align 8, !noalias !52
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %i.k, align 8, !noalias !52
  store i64 0, ptr %i.a, align 8, !noalias !52
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !52
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !52
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !52
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !52
  %i.l = invoke noundef ptr @_RNvMs2_CsaoJQ0BThbft_11wasmprinterNtB5_7Printer14print_contents(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter7PrinterECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(88) %i.a) #23
          to label %.body unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter7PrinterECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(88) %i.a)
          to label %bb.h unwind label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !53 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.q, label %.body7, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val3.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !54, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !55
  br label %.body7

bb.l:                                             ; preds = %bb.i
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !53 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !54, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !56
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i9 = load i64, ptr %i.c, align 8, !alias.scope !57 ; 2 uses
  %i.v = icmp eq i64 %.val2.i.i.i9, 0
  br i1 %i.v, label %.body7, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val3.i.i.i10 = load ptr, ptr %i.w, align 8, !alias.scope !58, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i10, i64 noundef %.val2.i.i.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !59
  br label %.body7

bb.q:                                             ; preds = %bb.n
  %.val.i.i.i12 = load i64, ptr %i.c, align 8, !alias.scope !57 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i12, 0
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit16, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i13 = load ptr, ptr %i.y, align 8, !alias.scope !58, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i13, i64 noundef %.val.i.i.i12, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !60
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit16

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit16: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.v, %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.d, align 8, !alias.scope !61 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i, 0
  br i1 %i.aa, label %common.resume, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val3.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !62, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !63
  br label %common.resume

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsaoJQ0BThbft_11wasmprinter6ConfigECscoiT177WhKJ_10wasmi_fuzz.exit
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !61 ; 2 uses
  %i.ab = icmp eq i64 %.val.i.i, 0
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !62, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !64
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit

common.resume:                                    ; preds = %.body7, %bb.s, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.s ], [ %i.z, %bb.t ], [ %.pn, %.body7 ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %.body, %.body7
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error9constructNtNtCskKLDkoKarTP_4core3fmt5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !71
  %i.c = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #25, !noalias !71 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorEE3newCscoiT177WhKJ_10wasmi_fuzz.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load i64, ptr %i.b, align 8, !range !6, !alias.scope !72, !noundef !4
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtB4_3fmt5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtB4_3fmt5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtB4_3fmt5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.e

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorEE3newCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error9constructNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !75
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 8) #25, !noalias !75 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEE3newCscoiT177WhKJ_10wasmi_fuzz.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #26
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #23
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEE3newCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCsG258MDvU3F_3std2fs14create_dir_allRNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 511, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !noundef !4
  %i.e = call noundef ptr @_RNvMsD_NtCsG258MDvU3F_3std2fsNtB5_10DirBuilder7__create(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCsG258MDvU3F_3std2fs5writeNtNtCsexYYUdYSQU6_5alloc6string6StringBu_ECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4 = load i64, ptr %i.d, align 8, !noundef !4
  %i.e = invoke noundef ptr @_RNvNvNtCsG258MDvU3F_3std2fs5write5inner(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val3, i64 noundef %.val4)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #23
          to label %.body unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %1, align 8, !alias.scope !96 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i, 0
  br i1 %i.h, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !97, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !98
  br label %.body

bb.f:                                             ; preds = %bb.c
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !96 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !97, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !99
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit

.body:                                            ; preds = %bb.e, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.g, %bb.d ], [ %i.g, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #23
          to label %common.resume unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.g, %bb.f
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i5 = load i64, ptr %0, align 8, !alias.scope !100 ; 2 uses
  %i.k = icmp eq i64 %.val2.i.i5, 0
  br i1 %i.k, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val3.i.i6 = load ptr, ptr %i.a, align 8, !alias.scope !101, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i6, i64 noundef %.val2.i.i5, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !102
  br label %common.resume

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit
  %.val.i.i8 = load i64, ptr %0, align 8, !alias.scope !100 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i8, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit10, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i9 = load ptr, ptr %i.a, align 8, !alias.scope !101, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i9, i64 noundef %.val.i.i8, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !103
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit10

common.resume:                                    ; preds = %.body, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit10: ; preds = %bb.j, %bb.k
  ret ptr %i.e

bb.l:                                             ; preds = %.body, %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCsG258MDvU3F_3std2fs5writeNtNtCsexYYUdYSQU6_5alloc6string6StringRShECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val2 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = invoke noundef ptr @_RNvNvNtCsG258MDvU3F_3std2fs5write5inner(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2, i64 noundef %.val3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #23
          to label %common.resume unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !114 ; 2 uses
  %i.f = icmp eq i64 %.val2.i.i, 0
  br i1 %i.f, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val3.i.i = load ptr, ptr %i.a, align 8, !alias.scope !115, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !116
  br label %common.resume

bb.f:                                             ; preds = %bb.c
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !114 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i = load ptr, ptr %i.a, align 8, !alias.scope !115, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !117
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit

common.resume:                                    ; preds = %bb.b, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.f, %bb.g
  ret ptr %i.c

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCscK5W4trzgIe_6anyhow5error10object_refNtNtCskKLDkoKarTP_4core3fmt5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @5, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCscK5W4trzgIe_6anyhow5error10object_refNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull %0) unnamed_addr #2 {
end_hunk_0
begin_hunk_1_@_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCscoiT177WhKJ_10wasmi_fuzz:bb.a

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscoiT177WhKJ_10wasmi_fuzz(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !11
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #25
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #25
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscoiT177WhKJ_10wasmi_fuzz(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !11
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #25
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCscoiT177WhKJ_10wasmi_fuzz6configNtNtNtCsefoF4u9kbII_5wasmi6engine6config6ConfigINtNtCskKLDkoKarTP_4core7convert4FromNtB2_15FuzzWasmiConfigE4from(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, i24 %1) unnamed_addr #0 {
bb.a:
  %.sroa.02.0.extract.trunc = trunc i24 %1 to i8
  %.sroa.02.2.extract.shift = lshr i24 %1, 16
  %.sroa.02.2.extract.trunc = trunc nuw i24 %.sroa.02.2.extract.shift to i8
  tail call void @_RNvXNtNtCsefoF4u9kbII_5wasmi6engine6configNtB2_6ConfigNtNtCskKLDkoKarTP_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 159
  store i8 %.sroa.02.2.extract.trunc, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 %.sroa.02.0.extract.trunc, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !noundef !4
  %i.e = or i32 %i.d, 68157440
  store i32 %i.e, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmtINtB2_7AdapterINtB6_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core3fmt5Write9write_strCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4
  %i.c = tail call noundef zeroext i1 @_RNvXNtCskKLDkoKarTP_4core3fmtQNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_5Write9write_strCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvXs_NtCsaoJQ0BThbft_11wasmprinter5printINtB4_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB4_5Print9write_strCscoiT177WhKJ_10wasmi_fuzz.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 22) #28 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.e, align 8, !noundef !4 ; 4 uses
  %i.f = icmp eq ptr %.val, null
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !250
  %i.g = ptrtoint ptr %.val to i64                ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i
    i64 1, label %bb.e
  ], !prof !8

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !251, !noalias !250
  store i8 3, ptr %i.a, align 8, !alias.scope !251, !noalias !250
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !250
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit

_RNvXs_NtCsaoJQ0BThbft_11wasmprinter5printINtB4_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB4_5Print9write_strCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit
  ret i1 %i.c

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  store ptr %i.d, ptr %i.e, align 8
  resume { ptr, i32 } %i.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i, %bb.b
  store ptr %i.d, ptr %i.e, align 8
  br label %_RNvXs_NtCsaoJQ0BThbft_11wasmprinter5printINtB4_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB4_5Print9write_strCscoiT177WhKJ_10wasmi_fuzz.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.c
    i32 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit
    i32 0, label %bb.f
  ], !prof !262

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !263 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %common.resume, label %common.resume.sink.split

bb.e:                                             ; preds = %bb.c
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !263 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit.sink.split

common.resume.sink.split:                         ; preds = %bb.d, %bb.g
  %.val2.i.i.sink = phi i64 [ %.val2.i.i, %bb.g ], [ %.val2.i.i.i, %bb.d ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.g = mul nuw i64 %.val2.i.i.sink, 56
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.h, %bb.g ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !264 ; 2 uses
  %i.i = icmp eq i64 %.val2.i.i, 0
  br i1 %i.i, label %common.resume, label %common.resume.sink.split

bb.h:                                             ; preds = %bb.f
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !264 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit.sink.split: ; preds = %bb.h, %bb.e
  %.val.i.i.sink = phi i64 [ %.val.i.i.i, %bb.e ], [ %.val.i.i, %bb.h ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.l = mul nuw i64 %.val.i.i.sink, 56
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit.sink.split, %bb.h, %bb.e, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB6_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !13, !noundef !4
  %i.b = zext nneg i8 %i.a to i64
  %i.c = load ptr, ptr @_RNvNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB8_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, align 8, !nonnull !4, !noundef !4
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB8_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB8_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 13, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_Cs7tz819kMsd3_12block_bufferINtB5_11BlockBufferINtNtCs8I1Ugy73B0z_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtCskKLDkoKarTP_4core7default7Default7defaultCscoiT177WhKJ_10wasmi_fuzz(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([65 x i8]) align 1 captures(none) dereferenceable(65) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsg_CseMxgY3HaIuJ_13generic_arrayINtB6_12GenericArrayhINtNtCs8I1Ugy73B0z_7typenum4uint4UIntIBV_IBV_IBV_IBV_IBV_IBV_NtBX_5UTermNtNtBZ_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EEINtNtB6_8sequence15GenericSequencehE8generateNCNvXNtB6_5implsBz_NtNtCskKLDkoKarTP_4core7default7Default7default0ECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull sret([64 x i8]) align 1 captures(none) dereferenceable(64) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.a, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCscoiT177WhKJ_10wasmi_fuzz6moduleNtB5_9WatSourceNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !12, !noundef !4
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @26, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 72
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core14branch_hinting10BranchHintEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #25
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 2) #25
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtCs13fhi2aYsSw_7flagset7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
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
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsY_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
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
  %i.e = tail call noundef zeroext i1 @_RNvXsK_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core3fmt3numoNtB4_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsM_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
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

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_RNvXs_NtCsaoJQ0BThbft_11wasmprinter5printINtB4_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB4_5Print9write_strCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNtCskKLDkoKarTP_4core3fmtQNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_5Write9write_strCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 22) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXs_NtCscK5W4trzgIe_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtBN_3fmt5ErrorE4fromCscoiT177WhKJ_10wasmi_fuzz() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = call noundef align 8 ptr @_RNvNtCscK5W4trzgIe_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @5)
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.b, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMs2_NtCsG258MDvU3F_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = call fastcc noalias noundef nonnull ptr @_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error9constructNtNtCskKLDkoKarTP_4core3fmt5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXs_NtCscK5W4trzgIe_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = invoke noundef align 8 ptr @_RNvNtCscK5W4trzgIe_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @7)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.b, align 8
  br label %_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCsG258MDvU3F_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit

_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.e, %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.f = call fastcc noalias noundef nonnull ptr @_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error9constructNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  ret ptr %i.f

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #23
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCscoiT177WhKJ_10wasmi_fuzz6moduleNtB4_10FuzzModuleNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(1040) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtCs7wImhEnBy0k_10wasm_smith4core6encodeNtB4_6Module8to_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1040) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !309
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !308, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !308, !noundef !4
  invoke void @_RINvCsaoJQ0BThbft_11wasmprinter11print_bytesRShECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !range !7, !noalias !309, !noundef !4
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.b, label %bb.g, !prof !5

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !309
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !309, !nonnull !4, !noundef !4
  store ptr %i.n, ptr %i.b, align 8, !noalias !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  store ptr %i.b, ptr %i.a, align 8, !noalias !309
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !309
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #26
          to label %bb.d unwind label %bb.c, !noalias !309

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body unwind label %bb.e, !noalias !309

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !309
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.o, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module10WasmSourceEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #23
          to label %common.resume unwind label %bb.u

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !309
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.e, align 8, !alias.scope !310 ; 2 uses
  %i.s = icmp eq i64 %.val2.i.i, 0
  br i1 %i.s, label %.body2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val3.i.i = load ptr, ptr %i.g, align 8, !alias.scope !311, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !312
  br label %.body2

bb.j:                                             ; preds = %bb.g
  %.val.i.i = load i64, ptr %i.e, align 8, !alias.scope !310 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module10WasmSourceEBF_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !311, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !313
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module10WasmSourceEBF_.exit

bb.l:                                             ; preds = %bb.o, %bb.n, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module10WasmSourceEBF_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body2

.body2:                                           ; preds = %bb.h, %bb.i, %bb.l
  %eh.lpad-body3 = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.r, %bb.i ], [ %i.r, %bb.h ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module9WatSourceEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #23
          to label %common.resume unwind label %bb.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module10WasmSourceEBF_.exit: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 10)
          to label %bb.m unwind label %bb.l

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module10WasmSourceEBF_.exit
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 6, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @119)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.w = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 3, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @121)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.x = invoke noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %bb.p unwind label %bb.l

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !314 ; 2 uses
  %i.z = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.z, label %common.resume, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val3.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !315, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !316
  br label %common.resume

bb.s:                                             ; preds = %bb.p
  %.val.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !314 ; 2 uses
  %i.ab = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module9WatSourceEBF_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !315, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !317
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module9WatSourceEBF_.exit

common.resume:                                    ; preds = %.body, %.body2, %bb.q, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.q ], [ %i.y, %bb.r ], [ %eh.lpad-body3, %.body2 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module9WatSourceEBF_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i1 %i.x

bb.u:                                             ; preds = %.body2, %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !322, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !322, !nonnull !4, !noundef !4
  %i.d = icmp ne ptr %i.a, %i.c                   ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscoiT177WhKJ_10wasmi_fuzz.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %0, align 8, !alias.scope !322
  %i.f = load i8, ptr %i.a, align 1, !alias.scope !323, !noundef !4
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i8 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %i.g = insertvalue { i1, i8 } poison, i1 %i.d, 0
  %i.h = insertvalue { i1, i8 } %i.g, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.d = icmp samesign eq i64 %1, 0
  br i1 %i.d, label %_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECscoiT177WhKJ_10wasmi_fuzz.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.05.i = phi ptr [ %i.e, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !326
  store ptr %.sroa.0.05.i, ptr %i.a, align 8, !noalias !326, !captures !327
  %i.f = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
end_hunk_2
begin_hunk_3_@_RNvYINtNtCsaoJQ0BThbft_11wasmprinter5print13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Print9write_fmtCscoiT177WhKJ_10wasmi_fuzz:bb.a
  store ptr null, ptr %i.c, align 8
  %i.d = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @123, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmt7AdapterINtBI_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEEECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !noundef !4 ; 5 uses
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !332
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i
    i64 1, label %bb.g
  ], !prof !8

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.j = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.k = and i64 %i.h, 1095216660480
  %i.l = icmp ne i64 %i.k, 1095216660480
  call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !333, !noalias !332
  store i8 3, ptr %i.a, align 8, !alias.scope !333, !noalias !332
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n), !noalias !332
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !332
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i, %bb.d
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i ], [ null, %bb.d ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0

bb.h:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtNtBM_5error5Error11descriptionCscoiT177WhKJ_10wasmi_fuzz(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @125, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtNtBM_5error5Error7type_idCscoiT177WhKJ_10wasmi_fuzz(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @126, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_5error5Error11descriptionCscoiT177WhKJ_10wasmi_fuzz(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @125, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_5error5Error7type_idCscoiT177WhKJ_10wasmi_fuzz(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @127, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmt7AdapterINtB9_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core3fmt5Write10write_charCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !343
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !343
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !343
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !343
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !343
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !343
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !343
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !343
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !343
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !343
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !344, !nonnull !4, !align !12, !noundef !4
  %i.ad = call noundef zeroext i1 @_RNvXNtCskKLDkoKarTP_4core3fmtQNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_5Write9write_strCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i), !noalias !344 ; 2 uses
  br i1 %i.ad, label %bb.h, label %_RNvXNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmtINtB2_7AdapterINtB6_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core3fmt5Write9write_strCscoiT177WhKJ_10wasmi_fuzz.exit

bb.h:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit
  %i.ae = call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 22) #28, !noalias !344 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !344, !noundef !4 ; 4 uses
  %i.ag = icmp eq ptr %.val.i, null
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !345
  %i.ah = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ai = and i64 %i.ah, 3
  switch i64 %i.ai, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i.i
    i64 1, label %bb.k
  ], !prof !8

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.ak = and i64 %i.ah, 1095216660480
  %i.al = icmp ne i64 %i.ak, 1095216660480
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.assume(i1 %i.al)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !alias.scope !346, !noalias !345
  store i8 3, ptr %i.a, align 8, !alias.scope !346, !noalias !345
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i.i unwind label %bb.l, !noalias !344

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !345
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !344
  resume { ptr, i32 } %i.ao

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz.exit.i.i, %bb.h
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !344
  br label %_RNvXNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmtINtB2_7AdapterINtB6_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core3fmt5Write9write_strCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvXNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmtINtB2_7AdapterINtB6_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core3fmt5Write9write_strCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscoiT177WhKJ_10wasmi_fuzz.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.ad
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmt7AdapterINtB9_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtQINtNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmt7AdapterINtBV_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEENtB4_12SpecWriteFmt14spec_write_fmtCscoiT177WhKJ_10wasmi_fuzz.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @123, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !347
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error11descriptionCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @125, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error5causeCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error6sourceCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error7provideCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error7type_idCscoiT177WhKJ_10wasmi_fuzz(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @12, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @125, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7provideCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCscoiT177WhKJ_10wasmi_fuzz(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @13, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_CsaoJQ0BThbft_11wasmprinterNtB5_6Config3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscK5W4trzgIe_6anyhow5error11object_dropNtNtCskKLDkoKarTP_4core3fmt5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCscK5W4trzgIe_6anyhow5error23object_reallocate_boxedNtNtCskKLDkoKarTP_4core3fmt5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscK5W4trzgIe_6anyhow5error17object_drop_frontNtNtCskKLDkoKarTP_4core3fmt5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscK5W4trzgIe_6anyhow5error11object_dropNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCscK5W4trzgIe_6anyhow5error23object_reallocate_boxedNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscK5W4trzgIe_6anyhow5error17object_drop_frontNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMs2_CsaoJQ0BThbft_11wasmprinterNtB5_7Printer14print_contents(ptr noalias nofree noundef align 8 dereferenceable(88), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMsD_NtCsG258MDvU3F_3std2fsNtB5_10DirBuilder7__create(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNvNtCsG258MDvU3F_3std2fs5write5inner(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs8_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtBQ_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs9_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtBQ_7Display3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs7_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtNtBS_5error5Error6sourceCscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtNtBM_5error5Error5causeCscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtNtBS_5error5Error7provideCscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs8_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_3fmt5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs9_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_3fmt7Display3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs7_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_5error5Error6sourceCscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_5error5Error5causeCscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtCscK5W4trzgIe_6anyhow5errorINtB5_9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_5error5Error7provideCscoiT177WhKJ_10wasmi_fuzz(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmIBw_TjNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core14branch_hinting10BranchHintEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs7wImhEnBy0k_10wasm_smith4core9terminateNtB4_6Module18ensure_termination(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 16 dereferenceable(1040), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs7wImhEnBy0k_10wasm_smith4core6encodeNtB4_6Module8to_bytes(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(1040)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

end_hunk_3
begin_hunk_4_@llvm.umin.i64
!147 = !{!145}
!148 = distinct !{!148, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz"}
!149 = distinct !{!149, !148, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!150 = distinct !{!150, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz"}
!151 = distinct !{!151, !150, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!152 = distinct !{!152, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!153 = distinct !{!153, !152, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!154 = distinct !{!154, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!155 = distinct !{!155, !154, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!156 = distinct !{!156, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!157 = distinct !{!157, !156, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!158 = !{!153, !151, !149}
!159 = !{!151, !149}
!160 = !{!155}
!161 = !{!157}
!162 = distinct !{!162, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECscoiT177WhKJ_10wasmi_fuzz"}
!163 = distinct !{!163, !162, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!164 = distinct !{!164, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmIBC_TjNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core14branch_hinting10BranchHintEEEEECscoiT177WhKJ_10wasmi_fuzz"}
!165 = distinct !{!165, !164, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmIBC_TjNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core14branch_hinting10BranchHintEEEEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!166 = !{!163}
!167 = !{!165}
!168 = distinct !{!168, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECscoiT177WhKJ_10wasmi_fuzz"}
!169 = distinct !{!169, !168, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!170 = distinct !{!170, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz"}
!171 = distinct !{!171, !170, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!172 = distinct !{!172, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!173 = distinct !{!173, !172, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!174 = distinct !{!174, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!175 = distinct !{!175, !174, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!176 = distinct !{!176, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!177 = distinct !{!177, !176, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!178 = distinct !{!178, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECscoiT177WhKJ_10wasmi_fuzz"}
!179 = distinct !{!179, !178, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!180 = distinct !{!180, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz"}
!181 = distinct !{!181, !180, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!182 = distinct !{!182, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!183 = distinct !{!183, !182, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!184 = distinct !{!184, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!185 = distinct !{!185, !184, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!186 = distinct !{!186, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!187 = distinct !{!187, !186, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!188 = !{!169}
!189 = !{!173, !171, !169}
!190 = !{!171, !169}
!191 = !{!175}
!192 = !{!177}
!193 = !{!179}
!194 = !{!183, !181, !179}
!195 = !{!181, !179}
!196 = !{!185}
!197 = !{!187}
!198 = distinct !{!198, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz"}
!199 = distinct !{!199, !198, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!200 = distinct !{!200, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!201 = distinct !{!201, !200, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!202 = distinct !{!202, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!203 = distinct !{!203, !202, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!204 = distinct !{!204, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!205 = distinct !{!205, !204, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!206 = !{!201, !199}
!207 = !{!199}
!208 = !{!203}
!209 = !{!205}
!210 = distinct !{!210, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz"}
!211 = distinct !{!211, !210, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!212 = distinct !{!212, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz"}
!213 = distinct !{!213, !212, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!214 = distinct !{!214, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!215 = distinct !{!215, !214, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!216 = distinct !{!216, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!217 = distinct !{!217, !216, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!218 = distinct !{!218, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!219 = distinct !{!219, !218, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!220 = !{!215, !213, !211}
!221 = !{!213, !211}
!222 = !{!217}
!223 = !{!219}
!224 = distinct !{!224, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz"}
!225 = distinct !{!225, !224, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!226 = distinct !{!226, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!227 = distinct !{!227, !226, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!228 = distinct !{!228, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!229 = distinct !{!229, !228, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!230 = distinct !{!230, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!231 = distinct !{!231, !230, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!232 = !{!227, !225}
!233 = !{!225}
!234 = !{!229}
!235 = !{!231}
!236 = distinct !{!236, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECscoiT177WhKJ_10wasmi_fuzz"}
!237 = distinct !{!237, !236, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!238 = !{!237}
!239 = distinct !{!239, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCscoiT177WhKJ_10wasmi_fuzz"}
!240 = distinct !{!240, !239, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!241 = !{!240}
!242 = !{i64 0, i64 -9223372036854775808}
!243 = !{i64 0, i64 2}
!244 = !{i64 0, i64 -9223372036854775807}
!245 = !{i32 0, i32 2}
!246 = distinct !{!246, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz"}
!247 = distinct !{!247, !246, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!248 = distinct !{!248, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECscoiT177WhKJ_10wasmi_fuzz"}
!249 = distinct !{!249, !248, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!250 = !{!247}
!251 = !{!249}
!252 = distinct !{!252, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz"}
!253 = distinct !{!253, !252, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!254 = distinct !{!254, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace7CaptureECscoiT177WhKJ_10wasmi_fuzz"}
!255 = distinct !{!255, !254, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace7CaptureECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!256 = distinct !{!256, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameEECscoiT177WhKJ_10wasmi_fuzz"}
!257 = distinct !{!257, !256, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!258 = distinct !{!258, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace7CaptureECscoiT177WhKJ_10wasmi_fuzz"}
!259 = distinct !{!259, !258, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace7CaptureECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!260 = distinct !{!260, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameEECscoiT177WhKJ_10wasmi_fuzz"}
!261 = distinct !{!261, !260, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!262 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!263 = !{!257, !255, !253}
!264 = !{!261, !259}
!265 = distinct !{null}
!266 = distinct !{!266, i1 true, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtCs13fhi2aYsSw_7flagset4IterNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindEENtNtNtB8_6traits8iterator8Iterator4nextCscoiT177WhKJ_10wasmi_fuzz"}
!267 = distinct !{!267, !266, !"_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtCs13fhi2aYsSw_7flagset4IterNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindEENtNtNtB8_6traits8iterator8Iterator4nextCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!268 = distinct !{!268, i1 true, !"_RNvXs_Cs13fhi2aYsSw_7flagsetINtB4_4IterNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCscoiT177WhKJ_10wasmi_fuzz"}
!269 = distinct !{!269, !268, !"_RNvXs_Cs13fhi2aYsSw_7flagsetINtB4_4IterNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!270 = !{i64 2}
!271 = !{!269, !267}
!272 = distinct !{!272, i1 true, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt"}
!273 = distinct !{!273, !272, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt: argument 1"}
!274 = !{!273}
!275 = distinct !{!275, i1 true, !"_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt"}
!276 = distinct !{!276, !275, !"_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt: argument 1"}
!277 = !{i64 4}
!278 = !{!276}
!279 = !{i8 0, i8 7}
!280 = distinct !{!280, i1 true, !"_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCscoiT177WhKJ_10wasmi_fuzz"}
!281 = distinct !{!281, !280, !"_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!282 = !{!281}
!283 = distinct !{!283, i1 true, !"_RNvMs0_NtCscoiT177WhKJ_10wasmi_fuzz6moduleNtB5_10WasmSource6to_wat"}
!284 = distinct !{!284, !283, !"_RNvMs0_NtCscoiT177WhKJ_10wasmi_fuzz6moduleNtB5_10WasmSource6to_wat: argument 1"}
!285 = distinct !{!285, !283, !"_RNvMs0_NtCscoiT177WhKJ_10wasmi_fuzz6moduleNtB5_10WasmSource6to_wat: argument 0"}
!286 = distinct !{!286, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module10WasmSourceEBF_"}
!287 = distinct !{!287, !286, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module10WasmSourceEBF_: argument 0"}
!288 = distinct !{!288, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz"}
!289 = distinct !{!289, !288, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!290 = distinct !{!290, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!291 = distinct !{!291, !290, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!292 = distinct !{!292, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!293 = distinct !{!293, !292, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!294 = distinct !{!294, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!295 = distinct !{!295, !294, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!296 = distinct !{!296, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module9WatSourceEBF_"}
!297 = distinct !{!297, !296, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscoiT177WhKJ_10wasmi_fuzz6module9WatSourceEBF_: argument 0"}
!298 = distinct !{!298, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz"}
!299 = distinct !{!299, !298, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!300 = distinct !{!300, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz"}
!301 = distinct !{!301, !300, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!302 = distinct !{!302, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!303 = distinct !{!303, !302, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!304 = distinct !{!304, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!305 = distinct !{!305, !304, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!306 = distinct !{!306, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz"}
!307 = distinct !{!307, !306, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!308 = !{!284}
!309 = !{!285, !284}
!310 = !{!291, !289, !287}
!311 = !{!289, !287}
!312 = !{!293}
!313 = !{!295}
!314 = !{!303, !301, !299, !297}
!315 = !{!301, !299, !297}
!316 = !{!305}
!317 = !{!307}
!318 = distinct !{!318, i1 true, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscoiT177WhKJ_10wasmi_fuzz"}
!319 = distinct !{!319, !318, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!320 = distinct !{!320, i1 true, !"_RNvXsa_NtNtCskKLDkoKarTP_4core5clone5implshNtB7_5Clone5clone"}
!321 = distinct !{!321, !320, !"_RNvXsa_NtNtCskKLDkoKarTP_4core5clone5implshNtB7_5Clone5clone: argument 0"}
!322 = !{!319}
!323 = !{!321}
!324 = distinct !{!324, i1 true, !"_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECscoiT177WhKJ_10wasmi_fuzz"}
!325 = distinct !{!325, !324, !"_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!326 = !{!325}
!327 = !{!"address", !"read_provenance"}
!328 = distinct !{!328, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz"}
!329 = distinct !{!329, !328, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!330 = distinct !{!330, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECscoiT177WhKJ_10wasmi_fuzz"}
!331 = distinct !{!331, !330, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!332 = !{!329}
!333 = !{!331}
!334 = distinct !{!334, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw"}
!335 = distinct !{!335, !334, !"_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw: argument 0"}
!336 = distinct !{!336, i1 true, !"_RNvXNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmtINtB2_7AdapterINtB6_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core3fmt5Write9write_strCscoiT177WhKJ_10wasmi_fuzz"}
!337 = distinct !{!337, !336, !"_RNvXNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmtINtB2_7AdapterINtB6_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core3fmt5Write9write_strCscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!338 = distinct !{!338, !336, !"_RNvXNvNtNtCsaoJQ0BThbft_11wasmprinter5print5Print9write_fmtINtB2_7AdapterINtB6_13PrintFmtWriteQNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core3fmt5Write9write_strCscoiT177WhKJ_10wasmi_fuzz: argument 1"}
!339 = distinct !{!339, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz"}
!340 = distinct !{!340, !339, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!341 = distinct !{!341, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECscoiT177WhKJ_10wasmi_fuzz"}
!342 = distinct !{!342, !341, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECscoiT177WhKJ_10wasmi_fuzz: argument 0"}
!343 = !{!335}
!344 = !{!337}
!345 = !{!340, !337, !338}
!346 = !{!342}
!347 = distinct !{null}
end_hunk_4
