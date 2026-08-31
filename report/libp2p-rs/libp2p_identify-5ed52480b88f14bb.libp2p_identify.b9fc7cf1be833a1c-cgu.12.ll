Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_identify-5ed52480b88f14bb.libp2p_identify.b9fc7cf1be833a1c-cgu.12?download=true
inline.NumInlined: 173
inline.NumDeleted: 105
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [95 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/collections/vec_deque/mod.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"^\00\00\00\00\00\00\00\0B\07\00\00$\00\00\00" }>, align 8
@2 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"^\00\00\00\00\00\00\00T\04\00\008\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfY02lUNHLPc_15libp2p_identify, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCsfY02lUNHLPc_15libp2p_identify }>, align 8
@5 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@6 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @5, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@7 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/io/write.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfY02lUNHLPc_15libp2p_identify(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %trunc = trunc nuw i8 %i.b to i1
  br i1 %trunc, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa.0.0.1.sroa_idx, align 8
  %.sroa.6.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa.0.0.1.sroa_idx, align 8
  store i64 0, ptr %1, align 8
  %i.c = trunc nuw i64 %.sroa.04.0.copyload to i1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = tail call { i64, i64 } @_RNvNtNtNtCsG258MDvU3F_3std3sys6random5linux19hashmap_random_keys() ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.3.0 = phi i64 [ %i.f, %bb.d ], [ %.sroa.6.0.copyload, %bb.c ]
  %.sroa.03.0 = phi i64 [ %i.e, %bb.d ], [ %.sroa.5.0.copyload, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0, ptr %0, align 8
  store i64 %.sroa.3.0, ptr %i.g, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RINvMs5_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerINtB6_18StreamUpgradeErrorINtCscu2bAJ62uie_6either6EitherzzEE15map_upgrade_errNCNvXs_NtCsfY02lUNHLPc_15libp2p_identify7handlerNtB25_7HandlerNtB6_17ConnectionHandler19on_connection_event0NtNtB27_8protocol12UpgradeErrorEB27_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef range(i64 0, 4) %1, ptr %2) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %default.unreachable2 [
    i64 0, label %bb.e
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.sink = phi i64 [ -9223372036854775801, %bb.d ], [ -9223372036854775802, %bb.c ], [ -9223372036854775804, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfY02lUNHLPc_15libp2p_identify.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfY02lUNHLPc_15libp2p_identify.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsfY02lUNHLPc_15libp2p_identify.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsfY02lUNHLPc_15libp2p_identify.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfY02lUNHLPc_15libp2p_identify.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsfY02lUNHLPc_15libp2p_identify(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsfY02lUNHLPc_15libp2p_identify.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsfY02lUNHLPc_15libp2p_identify.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsfY02lUNHLPc_15libp2p_identify.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsfY02lUNHLPc_15libp2p_identify.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #18
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeEECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !5
  switch i64 %i.a, label %bb.c [
    i64 2, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsfY02lUNHLPc_15libp2p_identify.exit.i
  ]

bb.b:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsfY02lUNHLPc_15libp2p_identify.exit
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity3rsa9PublicKeyECsfY02lUNHLPc_15libp2p_identify.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity3rsa9PublicKeyECsfY02lUNHLPc_15libp2p_identify.exit.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsfY02lUNHLPc_15libp2p_identify.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity3rsa9PublicKeyECsfY02lUNHLPc_15libp2p_identify.exit.i.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #19
          to label %.body5.i unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsfY02lUNHLPc_15libp2p_identify.exit.i: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity3rsa9PublicKeyECsfY02lUNHLPc_15libp2p_identify.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsfY02lUNHLPc_15libp2p_identify.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body5.i unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsfY02lUNHLPc_15libp2p_identify.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfY02lUNHLPc_15libp2p_identify.exit.i unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.body5.i:                                         ; preds = %bb.j, %bb.g, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.k, %bb.j ], [ %i.h, %bb.g ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #19
          to label %.body9.i unwind label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body5.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfY02lUNHLPc_15libp2p_identify.exit.i: ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfY02lUNHLPc_15libp2p_identify.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body9.i unwind label %bb.m

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfY02lUNHLPc_15libp2p_identify.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfY02lUNHLPc_15libp2p_identify.exit11.i unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.body9.i:                                         ; preds = %bb.n, %bb.k, %.body5.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %.body5.i ], [ %i.p, %bb.n ], [ %i.m, %bb.k ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #19
          to label %common.resume.i unwind label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body9.i
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortNtCsbli3iz7XG76_9multiaddr9MultiaddrNvYBT_NtNtB8_3cmp10PartialOrd2ltECsfY02lUNHLPc_15libp2p_identify:bb.a
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortNtCsbli3iz7XG76_9multiaddr9MultiaddrNvYB17_NtNtBa_3cmp10PartialOrd2ltECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noundef align 8 null, i32 noundef %i.ai, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCsbli3iz7XG76_9multiaddr9Multiaddr7reverseCsfY02lUNHLPc_15libp2p_identify.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtCsbli3iz7XG76_9multiaddr9Multiaddr7reverseCsfY02lUNHLPc_15libp2p_identify.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtCsbli3iz7XG76_9multiaddr9MultiaddrECsfY02lUNHLPc_15libp2p_identify.exit.i.i, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCsbli3iz7XG76_9multiaddr9MultiaddrNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfY02lUNHLPc_15libp2p_identify.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCsbli3iz7XG76_9multiaddr9MultiaddrNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfY02lUNHLPc_15libp2p_identify.exit.thread
  %i.aj = lshr i64 %1, 1
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtCsbli3iz7XG76_9multiaddr9MultiaddrECsfY02lUNHLPc_15libp2p_identify.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ap, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtCsbli3iz7XG76_9multiaddr9MultiaddrECsfY02lUNHLPc_15libp2p_identify.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.al = xor i64 %.sroa.0.017.i.i, -1
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.an = getelementptr [32 x i8], ptr %i.ak, i64 %i.al
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfY02lUNHLPc_15libp2p_identify(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtCsbli3iz7XG76_9multiaddr9MultiaddrECsfY02lUNHLPc_15libp2p_identify.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtCsbli3iz7XG76_9multiaddr9MultiaddrECsfY02lUNHLPc_15libp2p_identify.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ap = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ap, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCsbli3iz7XG76_9multiaddr9Multiaddr7reverseCsfY02lUNHLPc_15libp2p_identify.exit, label %.lr.ph.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE13push_back_mutB1Y_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(696) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.e = phi i64 [ %.pre6, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = add i64 %i.i, %i.f                       ; 2 uses
  %.not = icmp ult i64 %i.j, %i.e
  %i.k = select i1 %.not, i64 0, i64 %i.e
  %.sroa.03.0 = sub nuw i64 %i.j, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw [696 x i8], ptr %i.m, i64 %.sroa.03.0 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.n, ptr noundef nonnull align 8 dereferenceable(696) %1, i64 696, i1 false)
  ret ptr %i.n

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE4growB1Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %._crit_edge unwind label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8
  %.pre6 = load i64, ptr %0, align 8, !range !7
  br label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1u_7handler7InEventEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(696) %1) #19
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE4growB1Y_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 4 uses
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1F_7handler7InEventEE8grow_oneB1F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.b = load i64, ptr %0, align 8, !range !7, !alias.scope !168, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !168, !noundef !5 ; 2 uses
  %i.e = sub i64 %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !168, !noundef !5 ; 3 uses
  %.not.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE24handle_capacity_increaseB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.g                       ; 4 uses
  %i.i = sub i64 %i.d, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not2.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not2.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !168, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw [696 x i8], ptr %i.n, i64 %i.g
  %i.p = getelementptr inbounds nuw [696 x i8], ptr %i.n, i64 %i.l
  %i.q = mul nuw nsw i64 %i.h, 696
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !168
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !168
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE24handle_capacity_increaseB1Y_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !168, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw [696 x i8], ptr %i.s, i64 %i.a
  %i.u = mul nuw nsw i64 %i.i, 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !168
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE24handle_capacity_increaseB1Y_.exit

_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE24handle_capacity_increaseB1Y_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE9pop_frontB1Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([696 x i8]) align 8 captures(none) dereferenceable(696) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = load i64, ptr %1, align 8, !range !7, !noundef !5 ; 3 uses
  %.not = icmp ult i64 %i.f, %i.g
  %i.h = select i1 %.not, i64 0, i64 %i.g
  %.sroa.0.0 = sub nuw i64 %i.f, %i.h
  store i64 %.sroa.0.0, ptr %i.d, align 8
  %i.i = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [696 x i8], ptr %i.l, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(696) %i.m, i64 696, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque11spec_extendINtB4_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB2a_7handler7InEventEEINtB2_10SpecExtendB1h_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB4y_7HashMapNtNtB1m_10connection12ConnectionIdNtCsbli3iz7XG76_9multiaddr9MultiaddrEENCNvXs0_B28_NtB28_9BehaviourNtB1k_16NetworkBehaviour14on_swarm_events0_0EE11spec_extendB2a_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i17 = alloca [88 x i8], align 8        ; 4 uses
  %.sroa.5.i = alloca [88 x i8], align 8          ; 4 uses
  %.sroa.533 = alloca [88 x i8], align 8          ; 4 uses
  %i.a = alloca [696 x i8], align 8               ; 9 uses
  %i.b = tail call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !171
  %i.c = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %._crit_edge46, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.5.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.5.24..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %.sroa.5.i17, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.ar, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !alias.scope !174, !noalias !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.i, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  store i64 7, ptr %i.a, align 8
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8
  %.val = load i64, ptr %i.d, align 8, !noundef !5
  %i.i = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1) ; 3 uses
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !178, !noundef !5 ; 5 uses
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  br i1 %i.l, label %bb.d, label %bb.c, !prof !181

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %0, align 8, !range !7, !alias.scope !178, !noundef !5 ; 7 uses
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE7reserveB1Y_.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = sub i64 %i.m, %i.j                       ; 2 uses
  %i.p = icmp ugt i64 %i.i, %i.o
  br i1 %i.p, label %bb.j, label %bb.f, !prof !181

bb.f:                                             ; preds = %.noexc16, %bb.e
  %.pre-phi.i = phi i64 [ %.pre8.i, %.noexc16 ], [ %i.o, %bb.e ]
  %i.q = phi i64 [ %.pre7.i, %.noexc16 ], [ %i.j, %bb.e ]
  %i.r = phi i64 [ %.pre.i, %.noexc16 ], [ %i.m, %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.s = load i64, ptr %i.f, align 8, !alias.scope !185, !noundef !5 ; 3 uses
  %.not.i.i = icmp ugt i64 %i.s, %.pre-phi.i
  br i1 %.not.i.i, label %bb.g, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE7reserveB1Y_.exit

bb.g:                                             ; preds = %bb.f
  %i.t = sub i64 %i.m, %i.s                       ; 4 uses
  %i.u = sub i64 %i.q, %i.t                       ; 3 uses
  %i.v = icmp ule i64 %i.t, %i.u
  %i.w = sub nsw i64 %i.r, %i.m
  %.not2.i.i = icmp ult i64 %i.w, %i.u
  %or.cond.i.i = select i1 %i.v, i1 true, i1 %.not2.i.i
  br i1 %or.cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = sub i64 %i.r, %i.t                       ; 2 uses
  %i.y = load ptr, ptr %i.g, align 8, !alias.scope !185, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = getelementptr inbounds nuw [696 x i8], ptr %i.y, i64 %i.s
  %i.aa = getelementptr inbounds nuw [696 x i8], ptr %i.y, i64 %i.x
  %i.ab = mul nuw nsw i64 %i.t, 696
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.z, i64 %i.ab, i1 false), !noalias !182
  store i64 %i.x, ptr %i.f, align 8, !alias.scope !185
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE7reserveB1Y_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.g, align 8, !alias.scope !185, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = getelementptr inbounds nuw [696 x i8], ptr %i.ac, i64 %i.m
  %i.ae = mul nuw nsw i64 %i.u, 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ac, i64 %i.ae, i1 false), !noalias !182
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE7reserveB1Y_.exit

bb.j:                                             ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i64 noundef %i.i, i64 noundef 8, i64 noundef 696)
          to label %.noexc16 unwind label %.loopexit

.noexc16:                                         ; preds = %bb.j
  %.pre.i = load i64, ptr %0, align 8, !range !7, !alias.scope !185
  %.pre7.i = load i64, ptr %i.e, align 8, !alias.scope !185 ; 2 uses
  %.pre8.i = sub i64 %i.m, %.pre7.i
  br label %bb.f

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE7reserveB1Y_.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.c
  %i.af = load i64, ptr %i.e, align 8, !noundef !5
  %i.ag = load i64, ptr %i.f, align 8, !noundef !5
  %i.ah = add i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 2 uses
  %.not13 = icmp ult i64 %i.ah, %i.ai
  %i.aj = select i1 %.not13, i64 0, i64 %i.ai
  %.sroa.04.0 = sub nuw i64 %i.ah, %i.aj
  %i.ak = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw [696 x i8], ptr %i.ak, i64 %.sroa.04.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.al, ptr noundef nonnull align 8 dereferenceable(696) %i.a, i64 696, i1 false)
  %i.am = load i64, ptr %i.e, align 8, !noundef !5
  %i.an = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.an, ptr %i.e, align 8
  %i.ao = load i64, ptr %0, align 8, !range !7, !noundef !5
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %.noexc24, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE7reserveB1Y_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = tail call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !171
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %._crit_edge46, label %bb.b

.noexc24:                                         ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE7reserveB1Y_.exit, %bb.k
  %i.as = tail call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %i.at = extractvalue { ptr, ptr } %i.as, 0      ; 2 uses
  %.not.i18 = icmp eq ptr %i.at, null
  br i1 %.not.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.24..sroa_idx.i19, ptr noundef nonnull align 8 dereferenceable(80) %i.at, i64 80, i1 false), !alias.scope !186, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.533)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.533, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.i17, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i17)
  %i.au = load i64, ptr %i.e, align 8, !noundef !5
  %i.av = load i64, ptr %i.f, align 8, !noundef !5
  %i.aw = add i64 %i.av, %i.au                    ; 2 uses
  %i.ax = load i64, ptr %0, align 8, !range !7, !noundef !5 ; 2 uses
  %.not15 = icmp ult i64 %i.aw, %i.ax
  %i.ay = select i1 %.not15, i64 0, i64 %i.ax
  %.sroa.07.0 = sub nuw i64 %i.aw, %i.ay
  %i.az = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw [696 x i8], ptr %i.az, i64 %.sroa.07.0 ; 4 uses
  store i64 7, ptr %i.ba, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 1, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.533, i64 88, i1 false)
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  store ptr null, ptr %.sroa.634.0..sroa_idx, align 8
  %i.bb = load i64, ptr %i.e, align 8, !noundef !5
  %i.bc = add i64 %i.bb, 1                        ; 2 uses
  store i64 %i.bc, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.533)
  %i.bd = load i64, ptr %0, align 8, !range !7, !noundef !5
  %i.be = icmp ult i64 %i.bc, %i.bd
  br i1 %i.be, label %.noexc24, label %._crit_edge

bb.l:                                             ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %._crit_edge, %bb.a, %bb.l
  ret void

bb.m:                                             ; preds = %bb.n
  resume { ptr, i32 } %lpad.phi

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1u_7handler7InEventEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(696) %i.a) #19
          to label %bb.m unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %.val = load i64, ptr %0, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsfY02lUNHLPc_15libp2p_identify(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !noalias !193 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Z_7handler7InEventEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1Z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.e, %.val1                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %i.i, %i.j          ; 4 uses
  %i.k = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Z_7handler7InEventEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1Z_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.sroa.04.0.i, %i.g
  br label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Z_7handler7InEventEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1Z_.exit

_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Z_7handler7InEventEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1Z_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.07.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.sroa.58.0 = phi i64 [ %i.m, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.p = getelementptr inbounds nuw [696 x i8], ptr %i.o, i64 %.sroa.07.0 ; 2 uses
  %i.q = sub i64 %.sroa.58.0, %.sroa.07.0         ; 3 uses
  %i.r = icmp eq i64 %.sroa.58.0, %.sroa.07.0
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1v_7handler7InEventEEB1v_.exit.preheader, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.s = icmp eq i64 %i.v, %i.q
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1v_7handler7InEventEEB1v_.exit.preheader, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1v_7handler7InEventEEB1v_.exit.preheader: ; preds = %bb.e, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Z_7handler7InEventEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1Z_.exit
  %i.t = icmp eq i64 %.sroa.11.0, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB2q_7handler7InEventEEEB2q_.exit, label %.lr.ph20

.lr.ph:                                           ; preds = %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Z_7handler7InEventEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1Z_.exit, %bb.e
  %.sroa.0.0.i16 = phi i64 [ %i.v, %bb.e ], [ 0, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Z_7handler7InEventEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1Z_.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [696 x i8], ptr %i.p, i64 %.sroa.0.0.i16
  %i.v = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1u_7handler7InEventEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(696) %i.u)
          to label %bb.e unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph18
  %i.w = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.q
  br i1 %i.x, label %.body, label %.lr.ph18

bb.g:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = icmp eq i64 %i.v, %i.q
  br i1 %i.z, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i17 = phi i64 [ %i.w, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [696 x i8], ptr %i.p, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1u_7handler7InEventEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(696) %i.aa) #19
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph18
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.body:                                            ; preds = %bb.f, %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB2q_7handler7InEventEEEB2q_(ptr nonnull %i.o, i64 %.sroa.11.0) #19
          to label %common.resume unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1v_7handler7InEventEEB1v_.exit: ; preds = %.lr.ph20
  %i.ac = icmp eq i64 %i.ae, %.sroa.11.0
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB2q_7handler7InEventEEEB2q_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1v_7handler7InEventEEB1v_.exit.preheader, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1v_7handler7InEventEEB1v_.exit
  %.sroa.0.0.i.i.i19 = phi i64 [ %i.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1v_7handler7InEventEEB1v_.exit ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1v_7handler7InEventEEB1v_.exit.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [696 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.i19
  %i.ae = add nuw nsw i64 %.sroa.0.0.i.i.i19, 1   ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1u_7handler7InEventEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(696) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1v_7handler7InEventEEB1v_.exit unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph22
  %i.af = add i64 %.sroa.0.1.i.i.i21, 1           ; 2 uses
  %i.ag = icmp eq i64 %i.af, %.sroa.11.0
  br i1 %i.ag, label %common.resume, label %.lr.ph22

bb.j:                                             ; preds = %.lr.ph20
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = icmp eq i64 %i.ae, %.sroa.11.0
  br i1 %i.ai, label %common.resume, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.j, %bb.i
  %.sroa.0.1.i.i.i21 = phi i64 [ %i.af, %bb.i ], [ %i.ae, %bb.j ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [696 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i21
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1u_7handler7InEventEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(696) %i.aj) #19
          to label %bb.i unwind label %bb.k

common.resume:                                    ; preds = %bb.i, %bb.j, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.ah, %bb.j ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %.lr.ph22
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB2q_7handler7InEventEEEB2q_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1v_7handler7InEventEEB1v_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1v_7handler7InEventEEB1v_.exit.preheader
  ret void

bb.l:                                             ; preds = %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque11spec_extendINtB7_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB2d_7handler7InEventEEINtB5_10SpecExtendB1k_INtNtNtBb_3vec9into_iter8IntoIterB1k_EE11spec_extendB2d_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1P_7handler7InEventEE8as_sliceB1P_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.l       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !196, !noundef !5 ; 5 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.d, label %bb.c, !prof !181

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8, !range !7, !alias.scope !196, !noundef !5 ; 7 uses
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour7ToSwarmNtNtCsfY02lUNHLPc_15libp2p_identify9behaviour5EventNtNtB1Y_7handler7InEventEE7reserveB1Y_.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable
end_hunk_1
