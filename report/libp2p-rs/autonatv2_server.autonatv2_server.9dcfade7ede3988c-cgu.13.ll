Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/autonatv2_server.autonatv2_server.9dcfade7ede3988c-cgu.13?download=true
inline.NumInlined: 1697
inline.NumDeleted: 785
begin_hunk_0_@_RINvMNtCs80T0Klmhmtx_12clap_builder5errorNtB3_5Error3rawReECsdy1Aheh0r2i_16autonatv2_server:bb.a
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i8 -1, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i8 -1, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 218
  store i8 -1, ptr %.sroa.17.0..sroa_idx, align 2
  %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 222
  store i8 -1, ptr %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  store i8 -1, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 230
  store i16 0, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i8 -2, ptr %.sroa.19.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 247
  store i8 2, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store i8 2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 246
  store i8 0, ptr %i.j, align 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !65
  %i.k = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 1217) 256, i64 noundef range(i64 8, 129) 8) #23, !noalias !65 ; 14 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs80T0Klmhmtx_12clap_builder5error10ErrorInnerE3newCsdy1Aheh0r2i_16autonatv2_server.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #24
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs80T0Klmhmtx_12clap_builder5error10ErrorInnerECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.b) #25
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.y, %bb.j ], [ %i.w, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs80T0Klmhmtx_12clap_builder5error10ErrorInnerE3newCsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.k, ptr noundef nonnull align 8 dereferenceable(256) %i.b, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc64 unwind label %bb.j

.noexc64:                                         ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs80T0Klmhmtx_12clap_builder5error10ErrorInnerE3newCsdy1Aheh0r2i_16autonatv2_server.exit
  %i.o = load i64, ptr %i.a, align 8, !range !11, !noalias !66, !noundef !12
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !13, !noalias !66, !noundef !12 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i, !prof !10

bb.e:                                             ; preds = %.noexc64
  %i.t = load i64, ptr %i.s, align 8, !noalias !66
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #24
          to label %.noexc65 unwind label %bb.j

.noexc65:                                         ; preds = %bb.e
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i: ; preds = %.noexc64
  %i.u = load ptr, ptr %i.s, align 8, !noalias !66, !nonnull !12, !noundef !12 ; 3 uses
  %i.v = icmp samesign ule i64 %2, %i.r
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCsdy1Aheh0r2i_16autonatv2_server.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !67
  br label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCsdy1Aheh0r2i_16autonatv2_server.exit

_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %bb.f, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs80T0Klmhmtx_12clap_builder5error7MessageEECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.i unwind label %bb.g, !noalias !68

bb.g:                                             ; preds = %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCsdy1Aheh0r2i_16autonatv2_server.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.k, align 8, !alias.scope !69, !noalias !68
  %.sroa.5.0..sroa.0.0.2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.r, ptr %.sroa.5.0..sroa.0.0.2.sroa_idx.i, align 8, !alias.scope !70
  %.sroa.5.0..sroa.5.0..sroa.0.0.2.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.u, ptr %.sroa.5.0..sroa.5.0..sroa.0.0.2.sroa_idx.i.sroa_idx, align 8, !alias.scope !70
  %.sroa.6.0..sroa.5.0..sroa.0.0.2.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %2, ptr %.sroa.6.0..sroa.5.0..sroa.0.0.2.sroa_idx.i.sroa_idx, align 8, !alias.scope !70
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs80T0Klmhmtx_12clap_builder5error5ErrorECsdy1Aheh0r2i_16autonatv2_server(ptr nonnull align 8 %i.k) #25
          to label %common.resume unwind label %bb.h, !noalias !68

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !68
  unreachable

bb.i:                                             ; preds = %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCsdy1Aheh0r2i_16autonatv2_server.exit
  store i64 0, ptr %i.k, align 8, !alias.scope !69, !noalias !68
  %.sroa.5.0..sroa.0.0.3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.r, ptr %.sroa.5.0..sroa.0.0.3.sroa_idx.i, align 8, !alias.scope !70
  %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.u, ptr %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx, align 8, !alias.scope !70
  %.sroa.6.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %2, ptr %.sroa.6.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx, align 8, !alias.scope !70
  ret ptr %i.k

bb.j:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs80T0Klmhmtx_12clap_builder5error10ErrorInnerE3newCsdy1Aheh0r2i_16autonatv2_server.exit, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs80T0Klmhmtx_12clap_builder5error5ErrorECsdy1Aheh0r2i_16autonatv2_server(ptr %i.k) #25
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMNtNtCsc13h7DQFCSE_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EB17_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(2016) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [2016 x i8], align 8              ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 9 uses
  %i.g = alloca [2016 x i8], align 8              ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.j = alloca [2016 x i8], align 8              ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [2016 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2016) %i.l, ptr noundef nonnull align 8 dereferenceable(2016) %1, i64 2016, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !118
  invoke void @_RNvMNtNtCsc13h7DQFCSE_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 8 %0)
          to label %bb.b unwind label %bb.av, !noalias !118

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %0, align 8, !range !11, !noalias !118, !noundef !12
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2016) %i.j, ptr noundef nonnull align 8 dereferenceable(2016) %1, i64 2016, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !122
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.p = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !range !14, !noalias !124, !noundef !12
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i.i, !prof !15

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i.i: ; preds = %bb.c
  %i.t = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE16get_or_init_slowCsdy1Aheh0r2i_16autonatv2_server(ptr noundef nonnull align 8 %i.p)
          to label %.noexc.i.i unwind label %bb.ag, !noalias !125 ; 2 uses

.noexc.i.i:                                       ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i.i
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4e_5error5ErrorEL_EEE0INtNtB4e_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.thread.i.i.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i.i

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i.i: ; preds = %.noexc.i.i, %bb.c
  %.sroa.0.0.i.i2.i.i.i.i = phi ptr [ %i.t, %.noexc.i.i ], [ %i.p, %bb.c ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i.i, i64 70 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !range !14, !noalias !127, !noundef !12
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 2
  br i1 %.not.i.i.i.i.i, label %bb.d, label %.thread9.i.i

.thread9.i.i:                                     ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !122
  br label %bb.ab

bb.d:                                             ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i.i
  store i8 1, ptr %i.v, align 1, !noalias !127
  %i.x = load i64, ptr %i.o, align 8, !range !11, !alias.scope !128, !noalias !129, !noundef !12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %i.y, align 8, !alias.scope !128, !noalias !129, !nonnull !12
  %4 = shl nuw nsw i64 %i.x, 5
  %.sroa.0.0.v.i.i.i.i.i = xor i64 %4, 544
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.0.v.i.i.i.i.i
  %i.z = invoke { i32, i32 } @_RNvMNtNtNtCsc13h7DQFCSE_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %.sroa.0.0.i.i.i.i.i)
          to label %.noexc3.i.i unwind label %bb.ag, !noalias !125 ; 2 uses

.noexc3.i.i:                                      ; preds = %bb.d
  %i.aa = extractvalue { i32, i32 } %i.z, 0
  %i.ab = extractvalue { i32, i32 } %i.z, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i.i, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i.i = load i32, ptr %i.ac, align 4, !noalias !127
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i.i, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i.i, i64 64 ; 2 uses
  %i.ad = trunc i32 %.sroa.04.0.copyload.i.i.i.i.i to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc3.i.i
  %.sroa.55.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i, align 4, !noalias !127
  %.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !127
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4e_5error5ErrorEL_EEE0INtNtB4e_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.i.i.i

bb.f:                                             ; preds = %.noexc3.i.i
  %i.ae = invoke { i32, i32 } @_RNvMs_NtNtCsc13h7DQFCSE_5tokio4util4randNtB4_8FastRand3new()
          to label %.noexc4.i.i unwind label %bb.ag, !noalias !125 ; 2 uses

.noexc4.i.i:                                      ; preds = %bb.f
  %i.af = extractvalue { i32, i32 } %i.ae, 0
  %i.ag = extractvalue { i32, i32 } %i.ae, 1
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4e_5error5ErrorEL_EEE0INtNtB4e_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.i.i.i

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4e_5error5ErrorEL_EEE0INtNtB4e_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.i.i.i: ; preds = %.noexc4.i.i, %bb.e
  %.sroa.5.0.i.i.i.i.i = phi i32 [ %.sroa.55.0.copyload.i.i.i.i.i, %bb.e ], [ %i.ag, %.noexc4.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i, %bb.e ], [ %i.af, %.noexc4.i.i ] ; 2 uses
  store i32 1, ptr %i.ac, align 4, !noalias !127
  store i32 %i.aa, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !127
  store i32 %i.ab, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i, align 4, !noalias !127
  invoke void @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %.sroa.0.0.i.i2.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o)
          to label %.noexc5.i.i unwind label %bb.ag, !noalias !125

.noexc5.i.i:                                      ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4e_5error5ErrorEL_EEE0INtNtB4e_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.i.i.i
  %i.ah = or i32 %.sroa.01.0.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i
  %or.cond.i.i.i.i.i = icmp eq i32 %i.ah, 0
  %..sroa.5.0.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i32 1, i32 %.sroa.5.0.i.i.i.i.i
  %.sroa.411.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %.sroa.01.0.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i, align 8, !noalias !130
  %.sroa.512.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %..sroa.5.0.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i, align 4, !noalias !130
  %.sroa.0.0.copyload1.pr.i.i.i = load i64, ptr %i.h, align 8, !noalias !130 ; 3 uses
  %i.ai = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i, -2
  br i1 %i.ai, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4e_5error5ErrorEL_EEE0INtNtB4e_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.thread.i.i.i, label %bb.g, !prof !16

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4e_5error5ErrorEL_EEE0INtNtB4e_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.thread.i.i.i: ; preds = %.noexc5.i.i, %.noexc.i.i
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %.noexc6.i.i unwind label %bb.ag, !noalias !125

.noexc6.i.i:                                      ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler12multi_threadNtB2u_11MultiThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4e_5error5ErrorEL_EEE0INtNtB4e_6option6OptionNtB1W_17EnterRuntimeGuardEEB3v_.exit.thread.i.i.i
  unreachable

bb.g:                                             ; preds = %.noexc5.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !122
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i, -1
  br i1 %.not.i.i, label %bb.ab, label %bb.h, !prof !17

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !122
  store i64 %.sroa.0.0.copyload1.pr.i.i.i, ptr %i.i, align 8, !noalias !122
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, i64 24, i1 false), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2016) %i.g, ptr noundef nonnull align 8 dereferenceable(2016) %1, i64 2016, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !134
  %i.ak = invoke { ptr, ptr } @_RNvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a)
          to label %bb.i unwind label %bb.z, !noalias !135 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !134
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 2008
  %i.ao = load i8, ptr %i.an, align 8, !range !18, !alias.scope !133, !noalias !136, !noundef !12
  %cond.i.i.i.i.i = icmp eq i8 %i.ao, 3
  br i1 %cond.i.i.i.i.i, label %bb.k, label %.noexc9.i.i

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6b9j1MKPRPC_12libp2p_swarm5SwarmNtCsdy1Aheh0r2i_16autonatv2_server9BehaviourEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2016) %i.g)
          to label %.noexc9.i.i unwind label %bb.ac, !noalias !125

bb.l:                                             ; preds = %bb.i
  %i.ap = extractvalue { ptr, ptr } %i.ak, 1
  store ptr %i.al, ptr %i.f, align 8, !noalias !134
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.ap, ptr %i.aq, align 8, !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !134
  store ptr %i.f, ptr %i.e, align 8, !noalias !134
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.ar, align 8, !noalias !134
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.as, align 8, !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2016) %i.d, ptr noundef nonnull align 8 dereferenceable(2016) %1, i64 2016, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.u, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !137
  %i.au = load i8, ptr %i.q, align 8, !range !14, !noalias !134, !noundef !12
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i.i.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i.i.i, !prof !15

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i.i.i: ; preds = %bb.m
  %i.aw = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE16get_or_init_slowCsdy1Aheh0r2i_16autonatv2_server(ptr noundef nonnull align 8 %i.p)
          to label %.noexc16.i.i.i.i unwind label %bb.r, !noalias !135 ; 2 uses

.noexc16.i.i.i.i:                                 ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i.i.i
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.noexc.i.i.i.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i.i.i

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i.i.i: ; preds = %.noexc16.i.i.i.i, %bb.m
  %.sroa.0.0.i.i2.i.i.i.i.i = phi ptr [ %i.aw, %.noexc16.i.i.i.i ], [ %i.p, %bb.m ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i.i.i, i64 68 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !range !19, !noalias !135, !noundef !12
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i.i.i, i64 69 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !135
  store i8 1, ptr %i.ay, align 1, !noalias !135
  store i8 -128, ptr %i.ba, align 1, !noalias !135
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i.i.i, %.noexc16.i.i.i.i
  %.sroa.3.0.i.i.i.i.i = phi i8 [ %i.bb, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i.i.i ], [ undef, %.noexc16.i.i.i.i ]
  %.sroa.0.0.i.i.i7.i.i = phi i8 [ %i.az, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i.i.i ], [ 2, %.noexc16.i.i.i.i ]
  store i8 %.sroa.0.0.i.i.i7.i.i, ptr %i.b, align 1, !noalias !137
  store i8 %.sroa.3.0.i.i.i.i.i, ptr %i.at, align 1, !noalias !137
  invoke fastcc void @_RNCNvCsdy1Aheh0r2i_16autonatv2_server4main0B3_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #28
          to label %_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0B1j_.exit.i.i.i.i unwind label %bb.n, !noalias !135

bb.n:                                             ; preds = %.noexc.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load i8, ptr %i.b, align 1, !range !14, !alias.scope !138, !noalias !139, !noundef !12
  %.not.i.i.i8.i.i = icmp eq i8 %i.bd, 2
  br i1 %.not.i.i.i8.i.i, label %.body.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXNvNtNtCsc13h7DQFCSE_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.body.i.i.i.i unwind label %bb.q, !noalias !135

_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0B1j_.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.be = load i8, ptr %i.b, align 1, !range !14, !alias.scope !140, !noalias !134, !noundef !12
  %.not.i19.i.i.i.i = icmp eq i8 %i.be, 2
  br i1 %.not.i19.i.i.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0B1j_.exit.i.i.i.i
  invoke void @_RNvXNvNtNtCsc13h7DQFCSE_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %bb.t unwind label %bb.r, !noalias !135

bb.q:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !141
  unreachable

bb.r:                                             ; preds = %bb.u, %bb.p, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.r, %bb.o, %bb.n
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.r ], [ %i.bc, %bb.n ], [ %i.bc, %bb.o ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 2008
  %i.bi = load i8, ptr %i.bh, align 8, !range !18, !noalias !134, !noundef !12
  %cond.i22.i.i.i.i = icmp eq i8 %i.bi, 3
  br i1 %cond.i22.i.i.i.i, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EBF_.exit24.i.i.i.i

bb.s:                                             ; preds = %.body.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6b9j1MKPRPC_12libp2p_swarm5SwarmNtCsdy1Aheh0r2i_16autonatv2_server9BehaviourEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2000) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EBF_.exit24.i.i.i.i unwind label %bb.y, !noalias !135

bb.t:                                             ; preds = %bb.p, %_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0B1j_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !137
  %i.bj = load i64, ptr %i.c, align 8, !range !11, !noalias !134, !noundef !12
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !134
  invoke void @_RNvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias nofree noundef nonnull %i.a)
          to label %bb.m unwind label %bb.r, !noalias !135

bb.v:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !134, !noundef !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !134
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 2008
  %i.bq = load i8, ptr %i.bp, align 8, !range !18, !noalias !134, !noundef !12
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7runtime17EnterRuntimeGuardECsdy1Aheh0r2i_16autonatv2_server:bb.a
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7current15SetCurrentGuardECsdy1Aheh0r2i_16autonatv2_server.exit

bb.k:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7current15SetCurrentGuardECsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %bb.j
  ret void

bb.l:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread9CoreGuardECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs8_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB5_9CoreGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler7ContextECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(64) %0) #25
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler7ContextECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(64) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler5defer5DeferECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskKLDkoKarTP_4core4task4wake5WakerENtNtNtBL_3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB4_4task4wake5WakerEEECsdy1Aheh0r2i_16autonatv2_server.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core4task4wake5WakerENtNtNtBS_3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtB4_4task4wake5WakerEECsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtB4_4task4wake5WakerEECsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB4_4task4wake5WakerEEECsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core4task4wake5WakerENtNtNtBS_3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsG258MDvU3F_3std3sys3net10connection9each_addrNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNvNvMsa_NtB2_6socketNtB1T_9UdpSocket4bind5innerB25_ECsdy1Aheh0r2i_16autonatv2_server(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 4                ; 8 uses
  %.sroa.020.0.copyload = load i16, ptr %1, align 4, !alias.scope !2386 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 4, !alias.scope !2386 ; 3 uses
  switch i16 %.sroa.020.0.copyload, label %.lr.ph.split.us [
    i16 -1, label %.thread
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsdy1Aheh0r2i_16autonatv2_server(ptr null) #25
          to label %bb.f unwind label %bb.e

.thread:                                          ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.copyload, ptr %i.c, align 8
  store i32 1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsdy1Aheh0r2i_16autonatv2_server.exit19

.lr.ph.split.us:                                  ; preds = %bb.a
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.929.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.sroa.020.0.copyload, ptr %i.a, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.727.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.621.0..sroa_idx, i64 6, i1 false)
  store ptr %.sroa.7.0.copyload, ptr %.sroa.828.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.929.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx, i64 16, i1 false)
  invoke void @_RNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtB7_9UdpSocket4bind5inner(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %_RNvYNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtBa_9UdpSocket4bind5innerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRNtNtNtB1x_3net11socket_addr10SocketAddrEE8call_mutCsdy1Aheh0r2i_16autonatv2_server.exit.us unwind label %bb.b

_RNvYNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtBa_9UdpSocket4bind5innerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRNtNtNtB1x_3net11socket_addr10SocketAddrEE8call_mutCsdy1Aheh0r2i_16autonatv2_server.exit.us: ; preds = %.lr.ph.split.us
  %i.e = load i32, ptr %0, align 8, !range !2387, !noundef !12
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.c, label %.split41.us

bb.c:                                             ; preds = %_RNvYNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtBa_9UdpSocket4bind5innerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRNtNtNtB1x_3net11socket_addr10SocketAddrEE8call_mutCsdy1Aheh0r2i_16autonatv2_server.exit.us
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1.lcssa.sink = phi ptr [ %i.g, %bb.c ], [ @8, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.lcssa.sink, ptr %i.h, align 8
  store i32 1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsdy1Aheh0r2i_16autonatv2_server.exit19

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsdy1Aheh0r2i_16autonatv2_server.exit19: ; preds = %.split41.us, %.thread, %bb.d
  ret void

.split41.us:                                      ; preds = %_RNvYNvNvMsa_NtNtNtNtCsG258MDvU3F_3std3sys3net10connection6socketNtBa_9UdpSocket4bind5innerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRNtNtNtB1x_3net11socket_addr10SocketAddrEE8call_mutCsdy1Aheh0r2i_16autonatv2_server.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsdy1Aheh0r2i_16autonatv2_server.exit19

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler14current_threadNtB1b_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB2h_6result6ResultuIB2J_DNtNtB2h_5error5ErrorEL_EEEB3l_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i1 noundef zeroext %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [2 x i8], align 1                 ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  %i.g = alloca [64 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.n = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2439)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2440)
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noalias !2441, !noundef !12
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i, !prof !15

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i: ; preds = %bb.a
  %i.s = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE16get_or_init_slowCsdy1Aheh0r2i_16autonatv2_server(ptr noundef nonnull align 8 %i.o), !noalias !2441 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3A_6result6ResultuIB42_DNtNtB3A_5error5ErrorEL_EEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.thread.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i, %bb.a
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.s, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i ], [ %i.o, %bb.a ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 70 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !range !14, !noalias !2443, !noundef !12
  %.not.i.i.i = icmp eq i8 %i.v, 2
  br i1 %.not.i.i.i, label %bb.b, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3w_6result6ResultuIB3Y_DNtNtB3w_5error5ErrorEL_EEE0INtNtB3w_6option6OptionNtB1S_17EnterRuntimeGuardEEB4A_.exit.thread

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3w_6result6ResultuIB3Y_DNtNtB3w_5error5ErrorEL_EEE0INtNtB3w_6option6OptionNtB1S_17EnterRuntimeGuardEEB4A_.exit.thread: ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.al

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i
  store i8 %i.n, ptr %i.u, align 1, !noalias !2443
  %i.w = load i64, ptr %0, align 8, !range !11, !alias.scope !2444, !noalias !2445, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %i.x, align 8, !alias.scope !2444, !noalias !2445, !nonnull !12
  %5 = shl nuw nsw i64 %i.w, 5
  %.sroa.0.0.v.i.i.i = xor i64 %5, 544
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.0.0.v.i.i.i
  %i.y = tail call { i32, i32 } @_RNvMNtNtNtCsc13h7DQFCSE_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %.sroa.0.0.i.i.i), !noalias !2443 ; 2 uses
  %i.z = extractvalue { i32, i32 } %i.y, 0
  %i.aa = extractvalue { i32, i32 } %i.y, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.ab, align 4, !noalias !2443
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 64 ; 2 uses
  %i.ac = trunc i32 %.sroa.04.0.copyload.i.i.i to i1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.55.0.copyload.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i.i, align 4, !noalias !2443
  %.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !2443
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3A_6result6ResultuIB42_DNtNtB3A_5error5ErrorEL_EEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ad = tail call { i32, i32 } @_RNvMs_NtNtCsc13h7DQFCSE_5tokio4util4randNtB4_8FastRand3new(), !noalias !2443 ; 2 uses
  %i.ae = extractvalue { i32, i32 } %i.ad, 0
  %i.af = extractvalue { i32, i32 } %i.ad, 1
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3A_6result6ResultuIB42_DNtNtB3A_5error5ErrorEL_EEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.i

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3A_6result6ResultuIB42_DNtNtB3A_5error5ErrorEL_EEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi i32 [ %.sroa.55.0.copyload.i.i.i, %bb.c ], [ %i.af, %bb.d ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i, %bb.c ], [ %i.ae, %bb.d ] ; 2 uses
  %i.ag = or i32 %.sroa.01.0.i.i.i, %.sroa.5.0.i.i.i
  %or.cond.i.i.i = icmp eq i32 %i.ag, 0
  %..sroa.5.0.i.i.i = select i1 %or.cond.i.i.i, i32 1, i32 %.sroa.5.0.i.i.i
  store i32 1, ptr %i.ab, align 4, !noalias !2443
  store i32 %i.z, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !2443
  store i32 %i.aa, ptr %.sroa.55.0..sroa_idx.i.i.i, align 4, !noalias !2443
  call void @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noundef nonnull align 8 %.sroa.0.0.i.i2.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !noalias !2446
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %.sroa.01.0.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !2447
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  store i32 %..sroa.5.0.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i, align 4, !noalias !2447
  %.sroa.0.0.copyload1.pr.i = load i64, ptr %i.l, align 8, !noalias !2447 ; 3 uses
  %i.ah = icmp eq i64 %.sroa.0.0.copyload1.pr.i, -2
  br i1 %i.ah, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3A_6result6ResultuIB42_DNtNtB3A_5error5ErrorEL_EEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.thread.i, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3w_6result6ResultuIB3Y_DNtNtB3w_5error5ErrorEL_EEE0INtNtB3w_6option6OptionNtB1S_17EnterRuntimeGuardEEB4A_.exit, !prof !16

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3A_6result6ResultuIB42_DNtNtB3A_5error5ErrorEL_EEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.thread.i: ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3A_6result6ResultuIB42_DNtNtB3A_5error5ErrorEL_EEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.i, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27, !noalias !2446
  unreachable

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3w_6result6ResultuIB3Y_DNtNtB3w_5error5ErrorEL_EEE0INtNtB3w_6option6OptionNtB1S_17EnterRuntimeGuardEEB4A_.exit: ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3A_6result6ResultuIB42_DNtNtB3A_5error5ErrorEL_EEE0INtNtB3A_6option6OptionNtB1W_17EnterRuntimeGuardEEB4E_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !2439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not = icmp eq i64 %.sroa.0.0.copyload1.pr.i, -1
  br i1 %.not, label %bb.al, label %bb.e, !prof !17

bb.e:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3w_6result6ResultuIB3Y_DNtNtB3w_5error5ErrorEL_EEE0INtNtB3w_6option6OptionNtB1S_17EnterRuntimeGuardEEB4A_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %.sroa.0.0.copyload1.pr.i, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  %.sroa.011.0.copyload = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.512.0.copyload = load ptr, ptr %.sroa.512.0..sroa_idx, align 8 ; 3 uses
  %i.aj = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtCsc13h7DQFCSE_5tokio7runtime9schedulerNtB5_6Handle17as_current_thread(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.011.0.copyload)
          to label %.noexc unwind label %.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2448
  invoke void @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB2_13CurrentThread9take_core(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.k, ptr noundef nonnull align 8 %.sroa.4.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
          to label %.noexc4 unwind label %.loopexit.split-lp

.noexc4:                                          ; preds = %.noexc
  %i.ak = load i64, ptr %i.k, align 8, !range !21, !noalias !2448, !noundef !12
  %.not24.i = icmp eq i64 %i.ak, 2
  br i1 %.not24.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.noexc4
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  br label %bb.f

._crit_edge.i:                                    ; preds = %.noexc9, %.noexc4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !2448
  %i.at = load ptr, ptr %i.aj, align 8, !noalias !2448, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2448
  %i.au = invoke noundef nonnull ptr @_RNvNtNtCsG258MDvU3F_3std6thread7current7current()
          to label %bb.s unwind label %.thread8.i, !noalias !2448 ; 4 uses

bb.f:                                             ; preds = %.noexc9, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2448
  invoke void @_RNvMs5_NtNtCsc13h7DQFCSE_5tokio4sync6notifyNtB5_6Notify8notified(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noundef nonnull align 8 %.sroa.4.0.copyload)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !2448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2449
  %i.av = invoke { ptr, ptr } @_RNvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !2448 ; 2 uses

.noexc.i:                                         ; preds = %.noexc5
  %i.aw = extractvalue { ptr, ptr } %i.av, 0      ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.thread11.i, label %bb.g

.thread11.i:                                      ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2449
  br label %.loopexit15.i

bb.g:                                             ; preds = %.noexc.i
  %i.ay = extractvalue { ptr, ptr } %i.av, 1
  store ptr %i.aw, ptr %i.e, align 8, !noalias !2449
  store ptr %i.ay, ptr %i.al, align 8, !noalias !2449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2449
  store ptr %i.e, ptr %i.d, align 8, !noalias !2449
  store ptr %i.e, ptr %i.am, align 8, !noalias !2449
  store ptr null, ptr %i.an, align 8, !noalias !2449
  br label %bb.h

bb.h:                                             ; preds = %bb.p, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2450
  %i.az = load i8, ptr %i.p, align 8, !range !14, !noalias !2449, !noundef !12
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i, !prof !15

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i: ; preds = %bb.h
  %i.bb = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE16get_or_init_slowCsdy1Aheh0r2i_16autonatv2_server(ptr noundef nonnull align 8 %i.o)
          to label %.noexc14.i.i unwind label %bb.n, !noalias !2451 ; 2 uses

.noexc14.i.i:                                     ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.noexc.i.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i: ; preds = %.noexc14.i.i, %bb.h
  %.sroa.0.0.i.i2.i.i.i = phi ptr [ %i.bb, %.noexc14.i.i ], [ %i.o, %bb.h ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i, i64 68 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !range !19, !noalias !2451, !noundef !12
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i, i64 69 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !2451
  store i8 1, ptr %i.bd, align 1, !noalias !2451
  store i8 -128, ptr %i.bf, align 1, !noalias !2451
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i, %.noexc14.i.i
  %.sroa.3.0.i.i.i = phi i8 [ %i.bg, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i ], [ undef, %.noexc14.i.i ]
  %.sroa.0.0.i.i.i2 = phi i8 [ %i.be, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i ], [ 2, %.noexc14.i.i ]
  store i8 %.sroa.0.0.i.i.i2, ptr %i.c, align 1, !noalias !2450
  store i8 %.sroa.3.0.i.i.i, ptr %i.ao, align 1, !noalias !2450
  %i.bh = invoke noundef zeroext i1 @_RNvXsa_NtNtCsc13h7DQFCSE_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc15.i.i unwind label %bb.j, !noalias !2451

.noexc15.i.i:                                     ; preds = %.noexc.i.i
  br i1 %i.bh, label %bb.i, label %_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCskKLDkoKarTP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onINtNtB1m_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE00EE0B44_.exit.i.i

bb.i:                                             ; preds = %.noexc15.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2452
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.512.0.copyload, align 8, !noalias !2453, !nonnull !12, !noundef !12
  invoke fastcc void @_RNCNvCsdy1Aheh0r2i_16autonatv2_server4main0B3_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %.val.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #28
          to label %.noexc16.i.i unwind label %bb.j, !noalias !2451

.noexc16.i.i:                                     ; preds = %bb.i
  %i.bi = load i64, ptr %i.b, align 8, !range !11, !noalias !2452, !noundef !12 ; 2 uses
  %i.bj = trunc nuw i64 %i.bi to i1               ; 3 uses
  %i.bk = load ptr, ptr %i.ap, align 8, !noalias !2448
  %i.bl = load ptr, ptr %i.aq, align 8, !noalias !2448
  %.sroa.9.0.ph.i.i = select i1 %i.bj, ptr undef, ptr %i.bl
  %.sroa.8.0.ph.i.i = select i1 %i.bj, ptr undef, ptr %i.bk
  %.sroa.022.0.ph.i.i = add nuw nsw i64 %i.bi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2452
  br label %_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCskKLDkoKarTP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onINtNtB1m_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE00EE0B44_.exit.i.i

bb.j:                                             ; preds = %bb.i, %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load i8, ptr %i.c, align 1, !range !14, !alias.scope !2454, !noalias !2455, !noundef !12
  %.not.i.i.i3 = icmp eq i8 %i.bn, 2
  br i1 %.not.i.i.i3, label %.body.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXNvNtNtCsc13h7DQFCSE_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.c)
          to label %.body.i.i unwind label %bb.m, !noalias !2451

_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCskKLDkoKarTP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onINtNtB1m_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE00EE0B44_.exit.i.i: ; preds = %.noexc16.i.i, %.noexc15.i.i
  %.sroa.9.0.i.i = phi ptr [ undef, %.noexc15.i.i ], [ %.sroa.9.0.ph.i.i, %.noexc16.i.i ]
  %.sroa.8.0.i.i = phi ptr [ undef, %.noexc15.i.i ], [ %.sroa.8.0.ph.i.i, %.noexc16.i.i ]
  %i.bo = phi i1 [ false, %.noexc15.i.i ], [ %i.bj, %.noexc16.i.i ]
  %.sroa.022.0.i.i = phi i64 [ 0, %.noexc15.i.i ], [ %.sroa.022.0.ph.i.i, %.noexc16.i.i ]
  %i.bp = load i8, ptr %i.c, align 1, !range !14, !alias.scope !2456, !noalias !2449, !noundef !12
  %.not.i18.i.i = icmp eq i8 %i.bp, 2
  br i1 %.not.i18.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCskKLDkoKarTP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onINtNtB1m_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE00EE0B44_.exit.i.i
  invoke void @_RNvXNvNtNtCsc13h7DQFCSE_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.c)
          to label %bb.o unwind label %bb.n, !noalias !2451

end_hunk_1
begin_hunk_2_@_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler14current_threadNtB1b_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB2h_6result6ResultuIB2J_DNtNtB2h_5error5ErrorEL_EEEB3l_:bb.a
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4sync6notify8NotifiedECsdy1Aheh0r2i_16autonatv2_server(ptr noundef nonnull align 8 %i.f) #25
          to label %.body unwind label %bb.x, !noalias !2448

bb.y:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2449
  switch i64 %.sroa.022.0.i.i, label %bb.z [
    i64 2, label %.loopexit15.i
    i64 0, label %bb.af
  ], !prof !44

.loopexit15.i:                                    ; preds = %bb.y, %.thread11.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 27, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #27
          to label %.noexc9.i unwind label %.loopexit.split-lp.i, !noalias !2448

.noexc9.i:                                        ; preds = %.loopexit15.i
  unreachable

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXsb_NtNtCsc13h7DQFCSE_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.f)
          to label %bb.ac unwind label %bb.aa, !noalias !2448

bb.aa:                                            ; preds = %bb.z
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load ptr, ptr %i.ar, align 8, !noalias !2448, !align !20, !noundef !12 ; 2 uses
  %i.ci = icmp eq ptr %.val2.i.i, null
  br i1 %i.ci, label %.body, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val3.i.i = load ptr, ptr %i.as, align 8, !noalias !2448
  %i.cj = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !2448, !nonnull !12, !noundef !12
  invoke void %i.ck(ptr noundef %.val3.i.i)
          to label %.body unwind label %bb.ae, !noalias !2448, !inline_history !3

bb.ac:                                            ; preds = %bb.z
  %.val.i10.i = load ptr, ptr %i.ar, align 8, !noalias !2448, !align !20, !noundef !12 ; 2 uses
  %i.cl = icmp eq ptr %.val.i10.i, null
  br i1 %i.cl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4sync6notify8NotifiedECsdy1Aheh0r2i_16autonatv2_server.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val1.i.i = load ptr, ptr %i.as, align 8, !noalias !2448
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i10.i, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !2448, !nonnull !12, !noundef !12
  invoke void %i.cn(ptr noundef %.val1.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4sync6notify8NotifiedECsdy1Aheh0r2i_16autonatv2_server.exit.i unwind label %.loopexit.split-lp, !inline_history !2438

bb.ae:                                            ; preds = %bb.ab
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2448
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4sync6notify8NotifiedECsdy1Aheh0r2i_16autonatv2_server.exit.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2448
  %i.cp = insertvalue { ptr, ptr } poison, ptr %.sroa.8.0.i.i, 0
  %i.cq = insertvalue { ptr, ptr } %i.cp, ptr %.sroa.9.0.i.i, 1
  br label %bb.am

bb.af:                                            ; preds = %bb.y
  invoke void @_RNvXsb_NtNtCsc13h7DQFCSE_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.f)
          to label %bb.ai unwind label %bb.ag, !noalias !2448

bb.ag:                                            ; preds = %bb.af
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i11.i = load ptr, ptr %i.ar, align 8, !noalias !2448, !align !20, !noundef !12 ; 2 uses
  %i.cs = icmp eq ptr %.val2.i11.i, null
  br i1 %i.cs, label %.body, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val3.i12.i = load ptr, ptr %i.as, align 8, !noalias !2448
  %i.ct = getelementptr inbounds nuw i8, ptr %.val2.i11.i, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !2448, !nonnull !12, !noundef !12
  invoke void %i.cu(ptr noundef %.val3.i12.i)
          to label %.body unwind label %bb.ak, !noalias !2448, !inline_history !3

bb.ai:                                            ; preds = %bb.af
  %.val.i14.i = load ptr, ptr %i.ar, align 8, !noalias !2448, !align !20, !noundef !12 ; 2 uses
  %i.cv = icmp eq ptr %.val.i14.i, null
  br i1 %i.cv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4sync6notify8NotifiedECsdy1Aheh0r2i_16autonatv2_server.exit16.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val1.i15.i = load ptr, ptr %i.as, align 8, !noalias !2448
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i14.i, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !2448, !nonnull !12, !noundef !12
  invoke void %i.cx(ptr noundef %.val1.i15.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4sync6notify8NotifiedECsdy1Aheh0r2i_16autonatv2_server.exit16.i unwind label %.loopexit, !inline_history !2438

bb.ak:                                            ; preds = %bb.ah
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2448
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4sync6notify8NotifiedECsdy1Aheh0r2i_16autonatv2_server.exit16.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2448
  invoke void @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB2_13CurrentThread9take_core(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.k, ptr noundef nonnull align 8 %.sroa.4.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4sync6notify8NotifiedECsdy1Aheh0r2i_16autonatv2_server.exit16.i
  %i.cz = load i64, ptr %i.k, align 8, !range !21, !noalias !2448, !noundef !12
  %.not.i = icmp eq i64 %i.cz, 2
  br i1 %.not.i, label %bb.f, label %._crit_edge.i

bb.al:                                            ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3w_6result6ResultuIB3Y_DNtNtB3w_5error5ErrorEL_EEE0INtNtB3w_6option6OptionNtB1S_17EnterRuntimeGuardEEB4A_.exit.thread, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsdy1Aheh0r2i_16autonatv2_server4main0EEE0INtNtB3w_6result6ResultuIB3Y_DNtNtB3w_5error5ErrorEL_EEE0INtNtB3w_6option6OptionNtB1S_17EnterRuntimeGuardEEB4A_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 387 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #27
  unreachable

.loopexit:                                        ; preds = %bb.f, %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4sync6notify8NotifiedECsdy1Aheh0r2i_16autonatv2_server.exit16.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.e, %.noexc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdy1Aheh0r2i_16autonatv2_server.exit8.i, %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.thread.i, %.body.i, %bb.aa, %bb.ab, %bb.ag, %bb.ah
  %eh.lpad-body = phi { ptr, i32 } [ %i.cr, %bb.ah ], [ %i.ch, %bb.aa ], [ %eh.lpad-body.i, %.body.i ], [ %.pn7.i, %.thread.i ], [ %i.cr, %bb.ag ], [ %i.ch, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7runtime17EnterRuntimeGuardECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #25
          to label %bb.ao unwind label %bb.an

bb.am:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4sync6notify8NotifiedECsdy1Aheh0r2i_16autonatv2_server.exit.i, %.noexc6
  %.merged.i = phi { ptr, ptr } [ %i.cf, %.noexc6 ], [ %i.cq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio4sync6notify8NotifiedECsdy1Aheh0r2i_16autonatv2_server.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2448
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7runtime17EnterRuntimeGuardECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret { ptr, ptr } %.merged.i

bb.an:                                            ; preds = %.body
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ao:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler14current_threadNtB1b_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2Z_5error5ErrorEL_EEEB2g_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i1 noundef zeroext %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [2 x i8], align 1                 ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  %i.g = alloca [64 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.n = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2511)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noalias !2513, !noundef !12
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i, !prof !15

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i: ; preds = %bb.a
  %i.s = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE16get_or_init_slowCsdy1Aheh0r2i_16autonatv2_server(ptr noundef nonnull align 8 %i.o), !noalias !2513 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4i_5error5ErrorEL_EEE0INtNtB4i_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.thread.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i, %bb.a
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.s, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i ], [ %i.o, %bb.a ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 70 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !range !14, !noalias !2515, !noundef !12
  %.not.i.i.i = icmp eq i8 %i.v, 2
  br i1 %.not.i.i.i, label %bb.b, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4e_5error5ErrorEL_EEE0INtNtB4e_6option6OptionNtB1S_17EnterRuntimeGuardEEB3v_.exit.thread

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4e_5error5ErrorEL_EEE0INtNtB4e_6option6OptionNtB1S_17EnterRuntimeGuardEEB3v_.exit.thread: ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.al

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i
  store i8 %i.n, ptr %i.u, align 1, !noalias !2515
  %i.w = load i64, ptr %0, align 8, !range !11, !alias.scope !2516, !noalias !2517, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %i.x, align 8, !alias.scope !2516, !noalias !2517, !nonnull !12
  %5 = shl nuw nsw i64 %i.w, 5
  %.sroa.0.0.v.i.i.i = xor i64 %5, 544
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.0.0.v.i.i.i
  %i.y = tail call { i32, i32 } @_RNvMNtNtNtCsc13h7DQFCSE_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %.sroa.0.0.i.i.i), !noalias !2515 ; 2 uses
  %i.z = extractvalue { i32, i32 } %i.y, 0
  %i.aa = extractvalue { i32, i32 } %i.y, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.ab, align 4, !noalias !2515
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i, i64 64 ; 2 uses
  %i.ac = trunc i32 %.sroa.04.0.copyload.i.i.i to i1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.55.0.copyload.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i.i, align 4, !noalias !2515
  %.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !2515
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4i_5error5ErrorEL_EEE0INtNtB4i_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ad = tail call { i32, i32 } @_RNvMs_NtNtCsc13h7DQFCSE_5tokio4util4randNtB4_8FastRand3new(), !noalias !2515 ; 2 uses
  %i.ae = extractvalue { i32, i32 } %i.ad, 0
  %i.af = extractvalue { i32, i32 } %i.ad, 1
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4i_5error5ErrorEL_EEE0INtNtB4i_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.i

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4i_5error5ErrorEL_EEE0INtNtB4i_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi i32 [ %.sroa.55.0.copyload.i.i.i, %bb.c ], [ %i.af, %bb.d ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i, %bb.c ], [ %i.ae, %bb.d ] ; 2 uses
  %i.ag = or i32 %.sroa.01.0.i.i.i, %.sroa.5.0.i.i.i
  %or.cond.i.i.i = icmp eq i32 %i.ag, 0
  %..sroa.5.0.i.i.i = select i1 %or.cond.i.i.i, i32 1, i32 %.sroa.5.0.i.i.i
  store i32 1, ptr %i.ab, align 4, !noalias !2515
  store i32 %i.z, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !2515
  store i32 %i.aa, ptr %.sroa.55.0..sroa_idx.i.i.i, align 4, !noalias !2515
  call void @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noundef nonnull align 8 %.sroa.0.0.i.i2.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !noalias !2518
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %.sroa.01.0.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !2519
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  store i32 %..sroa.5.0.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i, align 4, !noalias !2519
  %.sroa.0.0.copyload1.pr.i = load i64, ptr %i.l, align 8, !noalias !2519 ; 3 uses
  %i.ah = icmp eq i64 %.sroa.0.0.copyload1.pr.i, -2
  br i1 %i.ah, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4i_5error5ErrorEL_EEE0INtNtB4i_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.thread.i, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4e_5error5ErrorEL_EEE0INtNtB4e_6option6OptionNtB1S_17EnterRuntimeGuardEEB3v_.exit, !prof !16

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4i_5error5ErrorEL_EEE0INtNtB4i_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.thread.i: ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4i_5error5ErrorEL_EEE0INtNtB4i_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.i, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27, !noalias !2518
  unreachable

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4e_5error5ErrorEL_EEE0INtNtB4e_6option6OptionNtB1S_17EnterRuntimeGuardEEB3v_.exit: ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2u_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4i_5error5ErrorEL_EEE0INtNtB4i_6option6OptionNtB1W_17EnterRuntimeGuardEEB3z_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !2511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not = icmp eq i64 %.sroa.0.0.copyload1.pr.i, -1
  br i1 %.not, label %bb.al, label %bb.e, !prof !17

bb.e:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE4withNCINvNtBV_7runtime13enter_runtimeNCINvMNtNtBX_9scheduler14current_threadNtB2q_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4e_5error5ErrorEL_EEE0INtNtB4e_6option6OptionNtB1S_17EnterRuntimeGuardEEB3v_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %.sroa.0.0.copyload1.pr.i, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  %.sroa.011.0.copyload = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.512.0.copyload = load ptr, ptr %.sroa.512.0..sroa_idx, align 8 ; 3 uses
  %i.aj = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtCsc13h7DQFCSE_5tokio7runtime9schedulerNtB5_6Handle17as_current_thread(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.011.0.copyload)
          to label %.noexc unwind label %.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2520
  invoke void @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB2_13CurrentThread9take_core(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.k, ptr noundef nonnull align 8 %.sroa.4.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
          to label %.noexc4 unwind label %.loopexit.split-lp

.noexc4:                                          ; preds = %.noexc
  %i.ak = load i64, ptr %i.k, align 8, !range !21, !noalias !2520, !noundef !12
  %.not24.i = icmp eq i64 %i.ak, 2
  br i1 %.not24.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.noexc4
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  br label %bb.f

._crit_edge.i:                                    ; preds = %.noexc9, %.noexc4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !2520
  %i.at = load ptr, ptr %i.aj, align 8, !noalias !2520, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2520
  %i.au = invoke noundef nonnull ptr @_RNvNtNtCsG258MDvU3F_3std6thread7current7current()
          to label %bb.s unwind label %.thread8.i, !noalias !2520 ; 4 uses

bb.f:                                             ; preds = %.noexc9, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2520
  invoke void @_RNvMs5_NtNtCsc13h7DQFCSE_5tokio4sync6notifyNtB5_6Notify8notified(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noundef nonnull align 8 %.sroa.4.0.copyload)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !2520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2521
  %i.av = invoke { ptr, ptr } @_RNvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !2520 ; 2 uses

.noexc.i:                                         ; preds = %.noexc5
  %i.aw = extractvalue { ptr, ptr } %i.av, 0      ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.thread11.i, label %bb.g

.thread11.i:                                      ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2521
  br label %.loopexit15.i

bb.g:                                             ; preds = %.noexc.i
  %i.ay = extractvalue { ptr, ptr } %i.av, 1
  store ptr %i.aw, ptr %i.e, align 8, !noalias !2521
  store ptr %i.ay, ptr %i.al, align 8, !noalias !2521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2521
  store ptr %i.e, ptr %i.d, align 8, !noalias !2521
  store ptr %i.e, ptr %i.am, align 8, !noalias !2521
  store ptr null, ptr %i.an, align 8, !noalias !2521
  br label %bb.h

bb.h:                                             ; preds = %bb.p, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2522
  %i.az = load i8, ptr %i.p, align 8, !range !14, !noalias !2521, !noundef !12
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i, !prof !15

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i: ; preds = %bb.h
  %i.bb = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE16get_or_init_slowCsdy1Aheh0r2i_16autonatv2_server(ptr noundef nonnull align 8 %i.o)
          to label %.noexc14.i.i unwind label %bb.n, !noalias !2523 ; 2 uses

.noexc14.i.i:                                     ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.i.i.i
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.noexc.i.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i: ; preds = %.noexc14.i.i, %bb.h
  %.sroa.0.0.i.i2.i.i.i = phi ptr [ %i.bb, %.noexc14.i.i ], [ %i.o, %bb.h ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i, i64 68 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !range !19, !noalias !2523, !noundef !12
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i.i.i, i64 69 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !2523
  store i8 1, ptr %i.bd, align 1, !noalias !2523
  store i8 -128, ptr %i.bf, align 1, !noalias !2523
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i, %.noexc14.i.i
  %.sroa.3.0.i.i.i = phi i8 [ %i.bg, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i ], [ undef, %.noexc14.i.i ]
  %.sroa.0.0.i.i.i2 = phi i8 [ %i.be, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsdy1Aheh0r2i_16autonatv2_server.exit.thread.i.i.i ], [ 2, %.noexc14.i.i ]
  store i8 %.sroa.0.0.i.i.i2, ptr %i.c, align 1, !noalias !2522
  store i8 %.sroa.3.0.i.i.i, ptr %i.ao, align 1, !noalias !2522
  %i.bh = invoke noundef zeroext i1 @_RNvXsa_NtNtCsc13h7DQFCSE_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc15.i.i unwind label %bb.j, !noalias !2523

.noexc15.i.i:                                     ; preds = %.noexc.i.i
  br i1 %i.bh, label %bb.i, label %_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCskKLDkoKarTP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E00EE0B3e_.exit.i.i

bb.i:                                             ; preds = %.noexc15.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2524
  invoke fastcc void @_RNCNvCsdy1Aheh0r2i_16autonatv2_server4main0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %.sroa.512.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #28
          to label %.noexc16.i.i unwind label %bb.j, !noalias !2523

.noexc16.i.i:                                     ; preds = %bb.i
  %i.bi = load i64, ptr %i.b, align 8, !range !11, !noalias !2524, !noundef !12 ; 2 uses
  %i.bj = trunc nuw i64 %i.bi to i1               ; 3 uses
  %i.bk = load ptr, ptr %i.ap, align 8, !noalias !2520
  %i.bl = load ptr, ptr %i.aq, align 8, !noalias !2520
  %.sroa.9.0.ph.i.i = select i1 %i.bj, ptr undef, ptr %i.bl
  %.sroa.8.0.ph.i.i = select i1 %i.bj, ptr undef, ptr %i.bk
  %.sroa.022.0.ph.i.i = add nuw nsw i64 %i.bi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2524
  br label %_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCskKLDkoKarTP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E00EE0B3e_.exit.i.i

bb.j:                                             ; preds = %bb.i, %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load i8, ptr %i.c, align 1, !range !14, !alias.scope !2525, !noalias !2526, !noundef !12
  %.not.i.i.i3 = icmp eq i8 %i.bn, 2
  br i1 %.not.i.i.i3, label %.body.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXNvNtNtCsc13h7DQFCSE_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.c)
          to label %.body.i.i unwind label %bb.m, !noalias !2523

_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCskKLDkoKarTP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E00EE0B3e_.exit.i.i: ; preds = %.noexc16.i.i, %.noexc15.i.i
  %.sroa.9.0.i.i = phi ptr [ undef, %.noexc15.i.i ], [ %.sroa.9.0.ph.i.i, %.noexc16.i.i ]
  %.sroa.8.0.i.i = phi ptr [ undef, %.noexc15.i.i ], [ %.sroa.8.0.ph.i.i, %.noexc16.i.i ]
  %i.bo = phi i1 [ false, %.noexc15.i.i ], [ %i.bj, %.noexc16.i.i ]
  %.sroa.022.0.i.i = phi i64 [ 0, %.noexc15.i.i ], [ %.sroa.022.0.ph.i.i, %.noexc16.i.i ]
  %i.bp = load i8, ptr %i.c, align 1, !range !14, !alias.scope !2527, !noalias !2521, !noundef !12
  %.not.i18.i.i = icmp eq i8 %i.bp, 2
  br i1 %.not.i18.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_RNCINvMs2_NtNtCsc13h7DQFCSE_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtNtCskKLDkoKarTP_4core6future7poll_fn6PollFnNCNCINvMNtNtBa_9scheduler14current_threadNtB29_13CurrentThread8block_onNCNvCsdy1Aheh0r2i_16autonatv2_server4main0E00EE0B3e_.exit.i.i
  invoke void @_RNvXNvNtNtCsc13h7DQFCSE_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.c)
          to label %bb.o unwind label %bb.n, !noalias !2523

bb.m:                                             ; preds = %bb.k
end_hunk_2
