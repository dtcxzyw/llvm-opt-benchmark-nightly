Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/usernames-38fc0eb963246ca5.usernames.897995bc461e8f6b-cgu.4?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/block-buffer-0.12.1/src/lib.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"c\00\00\00\00\00\00\00\8E\01\00\00\1F\00\00\00" }>, align 8
@2 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/prost-0.14.4/src/encoding/varint.rs\00", align 1
@3 = private unnamed_addr constant [12 x i8] c"UsernameData", align 1
@4 = private unnamed_addr constant [8 x i8] c"username", align 1
@5 = private unnamed_addr constant [7 x i8] c"padding", align 1
@6 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.0/src/bytes_mut.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"b\00\00\00\00\00\00\00I\07\00\00\05\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"b\00\00\00\00\00\00\00J\07\00\00\05\00\00\00" }>, align 8
@_RNvNtCs17cqnTMcAHA_5bytes9bytes_mut13SHARED_VTABLE = external global { ptr, ptr, ptr, ptr, ptr }
@9 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCs7QbGsRJVG1P_4hkdf6errorsNtB5_13InvalidLengthNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt }>, align 8
@10 = private unnamed_addr constant [39 x i8] c"Signal Username Link Authentication Key", align 1
@11 = private unnamed_addr constant [37 x i8] c"rust/usernames/src/username_links.rs\00", align 1
@12 = private unnamed_addr constant [35 x i8] c"Signal Username Link Encryption Key", align 1
@13 = private unnamed_addr constant [12 x i8] c"valid length", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"$\00\00\00\00\00\00\00Y\00\00\00\0A\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00Y\00\00\00\05\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00_\00\00\00\05\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00e\00\00\00\05\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00s\00\00\00\05\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00y\00\00\00\05\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00\7F\00\00\00\05\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"h\00\00\00\00\00\00\00\8D\00\00\00\14\00\00\00" }>, align 8
@22 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@23 = private unnamed_addr constant [87 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/sys/sync/once/futex.rs\00", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"V\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@25 = private unnamed_addr constant [42 x i8] c"!cannot advance past `remaining`: \C0\04 <= \C0\00", align 1
@26 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.0/src/bytes.rs\00", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"^\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@28 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sha2-0.11.0/src/block_api.rs\00", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"a\00\00\00\00\00\00\00F\00\00\00\13\00\00\00" }>, align 8
@30 = private unnamed_addr constant [32 x i8] c"g\E6\09j\85\AEg\BBr\F3n<:\F5O\A5\7FR\0EQ\8Ch\05\9B\AB\D9\83\1F\19\CD\E0[", align 8
@31 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs6i54tJFfzR_5alloc6string6StringNtB6_5Debug3fmtCsbNM6vbj4kjf_9usernames }>, align 8
@32 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtCs6i54tJFfzR_5alloc3vec3VechENtB6_5Debug3fmtCsbNM6vbj4kjf_9usernames }>, align 8
@33 = private unnamed_addr constant [112 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/digest-0.11.3/src/block_api/ct_variable.rs\00", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"o\00\00\00\00\00\00\00q\00\00\00$\00\00\00" }>, align 8
@35 = private unnamed_addr constant [13 x i8] c"InvalidLength", align 1
@36 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@37 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@38 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@39 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@40 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@41 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@42 = private unnamed_addr constant [16 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 8
@switch.table._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsbNM6vbj4kjf_9usernames = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsbNM6vbj4kjf_9usernames.40 = private unnamed_addr constant [6 x ptr] [ptr @36, ptr @37, ptr @38, ptr @39, ptr @40, ptr @41], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCsgxBkk5gSRhY_4core5arrayAAhj20_j3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointENCINvMBS_BP_10wrap_mut_1By_NCNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS00E0EB36_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([480 x i8]) align 8 captures(none) dereferenceable(480) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [160 x i8], align 8               ; 8 uses
  %i.c = alloca [160 x i8], align 8               ; 12 uses
  %i.d = alloca [160 x i8], align 8               ; 12 uses
  %i.e = alloca [160 x i8], align 8               ; 12 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [480 x i8], align 8               ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [96 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %i.i, ptr noundef nonnull align 1 dereferenceable(96) %1, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store ptr %i.i, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.a, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22
  store ptr %i.h, ptr %i.f, align 8, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23
  invoke void @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainAhj20_NCINvMNtNtB9_3ops9try_traitINtB13_17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointE10wrap_mut_1BR_NCNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS00E0EINtNtB15_8function5FnMutTjEE8call_mutB3c_(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(160) %i.c, i64 160, i1 false), !alias.scope !24, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull align 8 dereferenceable(160) %i.d, i64 160, i1 false), !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %i.e, i64 160, i1 false), !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false), !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23
  invoke void @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainAhj20_NCINvMNtNtB9_3ops9try_traitINtB13_17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointE10wrap_mut_1BR_NCNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS00E0EINtNtB15_8function5FnMutTjEE8call_mutB3c_(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 1)
          to label %.noexc3 unwind label %bb.b

.noexc3:                                          ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(160) %i.c, i64 160, i1 false), !alias.scope !24, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull align 8 dereferenceable(160) %i.d, i64 160, i1 false), !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %i.e, i64 160, i1 false), !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.m, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false), !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23
  invoke void @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainAhj20_NCINvMNtNtB9_3ops9try_traitINtB13_17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointE10wrap_mut_1BR_NCNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS00E0EINtNtB15_8function5FnMutTjEE8call_mutB3c_(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc3, %.noexc, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCsgxBkk5gSRhY_4core5array5drainINtB5_5DrainAhj20_NCINvMNtNtB9_3ops9try_traitINtB12_17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointE10wrap_mut_1BQ_NCNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS00E0ENtNtB14_4drop4Drop4dropB3b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainAhj20_NCINvMNtNtB4_3ops9try_traitINtB1f_17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointE10wrap_mut_1B13_NCNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS00E0EEB3p_.exit unwind label %bb.d

bb.c:                                             ; preds = %.noexc3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(160) %i.c, i64 160, i1 false), !alias.scope !24, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull align 8 dereferenceable(160) %i.d, i64 160, i1 false), !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %i.e, i64 160, i1 false), !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.o, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull readonly align 8 dereferenceable(480) %i.g, i64 480, i1 false), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvXs1_NtNtCsgxBkk5gSRhY_4core5array5drainINtB5_5DrainAhj20_NCINvMNtNtB9_3ops9try_traitINtB12_17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointE10wrap_mut_1BQ_NCNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS00E0ENtNtB14_4drop4Drop4dropB3b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainAhj20_NCINvMNtNtB4_3ops9try_traitINtB1f_17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointE10wrap_mut_1B13_NCNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS00E0EEB3p_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.n

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtBG_6borrow3CoweEEECsbNM6vbj4kjf_9usernames.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtBG_6borrow3CoweEEECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReB18_EEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReBF_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReBM_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTReB1f_EEECsbNM6vbj4kjf_9usernames.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReBM_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTReB1f_EEECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECsbNM6vbj4kjf_9usernames.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECsbNM6vbj4kjf_9usernames(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !32, !alias.scope !33, !noundef !4 ; 3 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775797
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %i.b, -9223372036854775808
  %i.e = icmp slt i64 %i.b, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 11
  switch i64 %i.f, label %bb.b [
    i64 0, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECsbNM6vbj4kjf_9usernames.exit.i.i
    i64 1, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECsbNM6vbj4kjf_9usernames.exit.i.i
    i64 2, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECsbNM6vbj4kjf_9usernames.exit.i.i
    i64 3, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECsbNM6vbj4kjf_9usernames.exit.i.i
    i64 4, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECsbNM6vbj4kjf_9usernames.exit.i.i
    i64 5, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECsbNM6vbj4kjf_9usernames.exit.i.i
    i64 6, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECsbNM6vbj4kjf_9usernames.exit.i.i
    i64 7, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECsbNM6vbj4kjf_9usernames.exit.i.i
    i64 8, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECsbNM6vbj4kjf_9usernames.exit.i.i
    i64 9, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECsbNM6vbj4kjf_9usernames.exit.i.i
    i64 10, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECsbNM6vbj4kjf_9usernames.exit.i.i
    i64 11, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvNtCsbNM6vbj4kjf_9usernames14username_links16decrypt_username:bb.a

bb.k:                                             ; preds = %bb.j
  %i.aq = load i64, ptr %i.m, align 8, !range !5, !noundef !4 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.as, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit77

bb.m:                                             ; preds = %bb.k
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.437.0.copyload = load i8, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.538.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.aq, ptr %i.n, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i8 %.sroa.437.0.copyload, ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.at = load ptr, ptr %.sroa.414.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.at, ptr %i.j, align 8, !noalias !92
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !92
  store i64 0, ptr %i.i, align 8, !alias.scope !93, !noalias !92
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !93, !noalias !92
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !93, !noalias !92
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !93, !noalias !92
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !93, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !92
  store ptr %i.j, ptr %i.g, align 8, !noalias !94
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %bb.n

bb.n:                                             ; preds = %_RINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB6_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i.i, %bb.m
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !94, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.ay = getelementptr i8, ptr %.val.i.i, i64 8  ; 3 uses
  %.val.i.i.i = load i64, ptr %i.ay, align 8, !noalias !95, !noundef !4 ; 14 uses
  %.not21.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not21.i.i, label %bb.bh, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val.i.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !96, !nonnull !4, !noundef !4 ; 13 uses
  %i.az = load i8, ptr %.val.i.i.i.i, align 1, !noalias !96, !noundef !4 ; 3 uses
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = icmp ugt i64 %.val.i.i.i, 10
  br i1 %i.bb, label %.thread.i.i.i, label %bb.ao

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit.i.i.i: ; preds = %bb.o
  %i.bc = add i64 %.val.i.i.i, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 1
  store ptr %i.bd, ptr %.val.i.i, align 8, !alias.scope !97, !noalias !96, !captures !7
  store i64 %i.bc, ptr %i.ay, align 8, !alias.scope !97, !noalias !96
  %i.be = zext nneg i8 %i.az to i64
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.thread.i.i

bb.q:                                             ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !98), !noalias !99
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.q, %bb.p
  %i.bf = zext i8 %i.az to i32
  %i.bg = add nsw i32 %i.bf, -128
  %i.bh = icmp ne i64 %.val.i.i.i, 1
  call void @llvm.assume(i1 %i.bh), !noalias !99
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !98, !noalias !100, !noundef !4 ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 7
  %i.bm = or disjoint i32 %i.bl, %i.bg            ; 3 uses
  %i.bn = icmp sgt i8 %i.bj, -1
  br i1 %i.bn, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread.i.i.i
  %i.bo = icmp samesign ult i32 %i.bm, 16384
  br i1 %i.bo, label %.invoke.i, label %bb.t

bb.s:                                             ; preds = %.thread.i.i.i
  %i.bp = zext nneg i32 %i.bm to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bq = add nsw i32 %i.bm, -16384
  %i.br = icmp samesign ugt i64 %.val.i.i.i, 2
  call void @llvm.assume(i1 %i.br), !noalias !99
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !98, !noalias !100, !noundef !4 ; 2 uses
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 14
  %i.bw = or disjoint i32 %i.bv, %i.bq            ; 3 uses
  %i.bx = icmp sgt i8 %i.bt, -1
  br i1 %i.bx, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = icmp samesign ult i32 %i.bw, 2097152
  br i1 %i.by, label %.invoke.i, label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bz = zext nneg i32 %i.bw to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ca = add nsw i32 %i.bw, -2097152
  %i.cb = icmp samesign ugt i64 %.val.i.i.i, 3
  call void @llvm.assume(i1 %i.cb), !noalias !99
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !98, !noalias !100, !noundef !4 ; 2 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 21
  %i.cg = add nuw nsw i32 %i.ca, %i.cf            ; 3 uses
  %i.ch = icmp sgt i8 %i.cd, -1
  br i1 %i.ch, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = icmp samesign ult i32 %i.cg, 268435456
  br i1 %i.ci, label %.invoke.i, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cj = zext nneg i32 %i.cg to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ck = add nsw i32 %i.cg, -268435456
  %i.cl = zext nneg i32 %i.ck to i64              ; 5 uses
  %i.cm = icmp samesign ugt i64 %.val.i.i.i, 4
  call void @llvm.assume(i1 %i.cm), !noalias !99
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 4
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !98, !noalias !100, !noundef !4 ; 3 uses
  %i.cp = icmp sgt i8 %i.co, -1
  br i1 %i.cp, label %bb.an, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = zext i8 %i.co to i32
  %i.cr = add nsw i32 %i.cq, -128
  %i.cs = icmp samesign ugt i64 %.val.i.i.i, 5
  call void @llvm.assume(i1 %i.cs), !noalias !99
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 5
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !98, !noalias !100, !noundef !4 ; 2 uses
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 7
  %i.cx = or disjoint i32 %i.cw, %i.cr            ; 3 uses
  %i.cy = icmp sgt i8 %i.cu, -1
  br i1 %i.cy, label %bb.am, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = icmp samesign ult i32 %i.cx, 16384
  br i1 %i.cz, label %.invoke.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = add nsw i32 %i.cx, -16384
  %i.db = icmp samesign ugt i64 %.val.i.i.i, 6
  call void @llvm.assume(i1 %i.db), !noalias !99
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 6
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !98, !noalias !100, !noundef !4 ; 2 uses
  %i.de = zext i8 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 14
  %i.dg = or disjoint i32 %i.df, %i.da            ; 3 uses
  %i.dh = icmp sgt i8 %i.dd, -1
  br i1 %i.dh, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = icmp samesign ult i32 %i.dg, 2097152
  br i1 %i.di, label %.invoke.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = add nsw i32 %i.dg, -2097152
  %i.dk = icmp samesign ugt i64 %.val.i.i.i, 7
  call void @llvm.assume(i1 %i.dk), !noalias !99
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 7
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !98, !noalias !100, !noundef !4 ; 2 uses
  %i.dn = zext i8 %i.dm to i32
  %i.do = shl nuw nsw i32 %i.dn, 21
  %i.dp = add nuw nsw i32 %i.dj, %i.do            ; 3 uses
  %i.dq = icmp sgt i8 %i.dm, -1
  br i1 %i.dq, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dr = icmp samesign ult i32 %i.dp, 268435456
  br i1 %i.dr, label %.invoke.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ds = add nsw i32 %i.dp, -268435456
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw nsw i64 %i.dt, 28
  %i.dv = add nuw nsw i64 %i.du, %i.cl            ; 3 uses
  %i.dw = icmp samesign ugt i64 %.val.i.i.i, 8
  call void @llvm.assume(i1 %i.dw), !noalias !99
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !98, !noalias !100, !noundef !4 ; 3 uses
  %i.dz = icmp sgt i8 %i.dy, -1
  br i1 %i.dz, label %bb.aj, label %bb.ah

.invoke.i:                                        ; preds = %bb.af, %bb.ad, %bb.ab, %bb.x, %bb.u, %bb.r
  %i.ea = phi ptr [ @19, %bb.ad ], [ @18, %bb.ab ], [ @17, %bb.x ], [ @16, %bb.u ], [ @15, %bb.r ], [ @20, %bb.af ]
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea) #27
          to label %.cont.i unwind label %.body.thread25.loopexit.split-lp.i, !noalias !95

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.eb = icmp samesign ugt i64 %.val.i.i.i, 9
  call void @llvm.assume(i1 %i.eb), !noalias !99
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 9
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !98, !noalias !100, !noundef !4 ; 2 uses
  %i.ee = icmp ult i8 %i.ed, 2
  br i1 %i.ee, label %bb.ai, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.thread12.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ef = zext nneg i8 %i.ed to i64
  %i.eg = and i8 %i.dy, 127
  %i.eh = zext nneg i8 %i.eg to i64
  %4 = shl nuw i64 %i.ef, 63
  %i.ei = shl nuw nsw i64 %i.eh, 56
  %i.ej = add nuw nsw i64 %i.ei, %i.dv
  %i.ek = or disjoint i64 %4, %i.ej               ; 2 uses
  %5 = icmp ult i64 %i.ek, %i.dv
  br i1 %5, label %6, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6.i.i.i

6:                                                ; preds = %bb.ai
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #27
          to label %.noexc10.i unwind label %.body.thread25.loopexit.split-lp.i, !noalias !95

.noexc10.i:                                       ; preds = %6
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.el = zext nneg i8 %i.dy to i64
  %i.em = shl nuw nsw i64 %i.el, 56
  %i.en = add nuw nsw i64 %i.em, %i.dv
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6.i.i.i

bb.ak:                                            ; preds = %bb.ae
  %i.eo = zext nneg i32 %i.dp to i64
  %i.ep = shl nuw nsw i64 %i.eo, 28
  %i.eq = add nuw nsw i64 %i.ep, %i.cl
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6.i.i.i

bb.al:                                            ; preds = %bb.ac
  %i.er = zext nneg i32 %i.dg to i64
  %i.es = shl nuw nsw i64 %i.er, 28
  %i.et = add nuw nsw i64 %i.es, %i.cl
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6.i.i.i

bb.am:                                            ; preds = %bb.aa
  %i.eu = zext nneg i32 %i.cx to i64
  %i.ev = shl nuw nsw i64 %i.eu, 28
  %i.ew = add nuw nsw i64 %i.ev, %i.cl
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6.i.i.i

bb.an:                                            ; preds = %bb.z
  %i.ex = zext nneg i8 %i.co to i64
  %i.ey = shl nuw nsw i64 %i.ex, 28
  %i.ez = add nuw nsw i64 %i.ey, %i.cl
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6.i.i.i

bb.ao:                                            ; preds = %bb.p
  %i.fa = getelementptr i8, ptr %.val.i.i.i.i, i64 %.val.i.i.i
  %i.fb = getelementptr i8, ptr %i.fa, i64 -1
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !96, !noundef !4
  %i.fd = icmp sgt i8 %i.fc, -1
  br i1 %i.fd, label %bb.q, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.i.i, !prof !101

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.thread12.i.i: ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !102
  store i64 -9223372036854775807, ptr %i.c, align 8, !noalias !102
  %i.fe = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c)
          to label %.noexc11.i.a unwind label %.body.thread25.loopexit.split-lp.i, !noalias !95

.noexc11.i.a:                                     ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.thread12.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102
  br label %.loopexit.i.i

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6.i.i.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.y, %bb.v, %bb.s
  %.sroa.18.0.ph.i.i.i = phi i64 [ 10, %bb.ai ], [ 9, %bb.aj ], [ 8, %bb.ak ], [ 7, %bb.al ], [ 6, %bb.am ], [ 5, %bb.an ], [ 4, %bb.y ], [ 3, %bb.v ], [ 2, %bb.s ] ; 2 uses
  %.sroa.5.0.ph.i.i.i = phi i64 [ %i.ek, %bb.ai ], [ %i.en, %bb.aj ], [ %i.eq, %bb.ak ], [ %i.et, %bb.al ], [ %i.ew, %bb.am ], [ %i.ez, %bb.an ], [ %i.cj, %bb.y ], [ %i.bz, %bb.v ], [ %i.bp, %bb.s ]
  %i.ff = sub nuw i64 %.val.i.i.i, %.sroa.18.0.ph.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.18.0.ph.i.i.i
  store ptr %i.fg, ptr %.val.i.i, align 8, !alias.scope !103, !noalias !96, !captures !7
  store i64 %i.ff, ptr %i.ay, align 8, !alias.scope !103, !noalias !96
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.thread.i.i

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.thread.i.i: ; preds = %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6.i.i.i, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit.i.i.i
  %.sroa.6.0.i.ph.i.i = phi i64 [ %.sroa.5.0.ph.i.i.i, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6.i.i.i ], [ %i.be, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit.i.i.i ] ; 2 uses
  %i.fh = inttoptr i64 %.sroa.6.0.i.ph.i.i to ptr
  br label %bb.ap

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.i.i: ; preds = %bb.ao
  %i.fi = invoke { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #26
          to label %.noexc12.i.a unwind label %.body.thread25.loopexit.i, !noalias !95 ; 2 uses

.noexc12.i.a:                                     ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.i.i
  %i.fj = extractvalue { i64, ptr } %i.fi, 0
  %i.fk = extractvalue { i64, ptr } %i.fi, 1      ; 3 uses
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = trunc nuw i64 %i.fj to i1
  br i1 %i.fm, label %.loopexit.i.i, label %bb.ap

bb.ap:                                            ; preds = %.noexc12.i.a, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.thread.i.i
  %i.fn = phi ptr [ %i.fh, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.thread.i.i ], [ %i.fk, %.noexc12.i.a ]
  %.sroa.6.0.i11.i.i = phi i64 [ %.sroa.6.0.i.ph.i.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.thread.i.i ], [ %i.fl, %.noexc12.i.a ] ; 3 uses
  %i.fo = icmp ugt ptr %i.fn, inttoptr (i64 4294967295 to ptr)
  br i1 %i.fo, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fp = and i64 %.sroa.6.0.i11.i.i, 7           ; 3 uses
  %switch.i.i = icmp samesign ult i64 %i.fp, 6
  br i1 %switch.i.i, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !104
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.6.0.i11.i.i, ptr %i.fq, align 8, !noalias !104
  store i64 -9223372036854775804, ptr %i.f, align 8, !noalias !104
  %i.fr = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f)
          to label %.noexc13.i.a unwind label %.body.thread25.loopexit.split-lp.i, !noalias !95

.noexc13.i.a:                                     ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !104
  br label %.loopexit.i.i

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !104
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.fp, ptr %i.fs, align 8, !noalias !104
  store i64 -9223372036854775805, ptr %i.d, align 8, !noalias !104
  %i.ft = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
          to label %.noexc14.i.a unwind label %.body.thread25.loopexit.split-lp.i, !noalias !95

.noexc14.i.a:                                     ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !104
  br label %.loopexit.i.i

bb.at:                                            ; preds = %bb.aq
  %i.fu = trunc nuw i64 %.sroa.6.0.i11.i.i to i32
  %i.fv = lshr i32 %i.fu, 3                       ; 3 uses
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !104
  store i64 -9223372036854775803, ptr %i.e, align 8, !noalias !104
  %i.fx = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e)
          to label %.noexc15.i unwind label %.body.thread25.loopexit.split-lp.i, !noalias !95

.noexc15.i:                                       ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !104
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.noexc12.i.a, %.noexc15.i, %.noexc14.i.a, %.noexc13.i.a, %.noexc11.i.a
  %.sroa.11.0.ph.i.i = phi ptr [ %i.fr, %.noexc13.i.a ], [ %i.fe, %.noexc11.i.a ], [ %i.fx, %.noexc15.i ], [ %i.ft, %.noexc14.i.a ], [ %i.fk, %.noexc12.i.a ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph.i.i) ]
  br label %.loopexit.i

bb.av:                                            ; preds = %bb.at
  %.sroa.11.8.extract.trunc.i.i = trunc nuw nsw i64 %i.fp to i8 ; 3 uses
  switch i32 %i.fv, label %bb.aw [
    i32 1, label %bb.ax
    i32 2, label %bb.ay
  ]

bb.aw:                                            ; preds = %bb.av
  %i.fy = invoke noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECsbNM6vbj4kjf_9usernames(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, i32 noundef %i.fv, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef 100)
          to label %_RINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB6_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i.i unwind label %.body.thread25.loopexit.i, !noalias !95

bb.ax:                                            ; preds = %bb.av
  %i.fz = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6string5mergeQRShECsbNM6vbj4kjf_9usernames(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef 100)
          to label %.noexc17.i.a unwind label %.body.thread25.loopexit.i, !noalias !95 ; 2 uses

.noexc17.i.a:                                     ; preds = %bb.ax
  %.not5.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not5.i.i.i, label %_RINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB6_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i.i, label %bb.az

bb.ay:                                            ; preds = %bb.av
  %i.ga = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef 100)
          to label %.noexc18.i unwind label %.body.thread25.loopexit.i, !noalias !95 ; 2 uses

.noexc18.i:                                       ; preds = %bb.ay
  %.not.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i, label %_RINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB6_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i.i, label %bb.bc

bb.az:                                            ; preds = %.noexc17.i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !105
  store ptr %i.fz, ptr %i.b, align 8, !noalias !106
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 8)
          to label %_RNCINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB8_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i.i unwind label %bb.ba, !noalias !95

bb.ba:                                            ; preds = %bb.az
  %i.gb = landingpad { ptr, i32 }
          cleanup
  %.val.i.i7.i.i = load ptr, ptr %i.b, align 8, !noalias !106, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECsbNM6vbj4kjf_9usernames(ptr nonnull %.val.i.i7.i.i) #23
          to label %.body.thread.i unwind label %bb.bb, !noalias !95

bb.bb:                                            ; preds = %bb.ba
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !95
  unreachable

_RNCINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB8_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i.i: ; preds = %bb.az
  %i.gd = load ptr, ptr %i.b, align 8, !noalias !106, !nonnull !4, !align !6, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105
  br label %.loopexit.i

bb.bc:                                            ; preds = %.noexc18.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !105
  store ptr %i.ga, ptr %i.a, align 8, !noalias !107
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 7)
          to label %_RNCINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB8_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i.i unwind label %bb.bd, !noalias !95

bb.bd:                                            ; preds = %bb.bc
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %.val.i6.i.i.i = load ptr, ptr %i.a, align 8, !noalias !107, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECsbNM6vbj4kjf_9usernames(ptr nonnull %.val.i6.i.i.i) #23
          to label %.body.thread.i unwind label %bb.be, !noalias !95

bb.be:                                            ; preds = %bb.bd
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !95
  unreachable

_RNCINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB8_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i.i: ; preds = %bb.bc
  %i.gg = load ptr, ptr %i.a, align 8, !noalias !107, !nonnull !4, !align !6, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105
  br label %.loopexit.i

_RINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB6_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i.i: ; preds = %.noexc18.i, %.noexc17.i.a, %bb.aw
  %.sroa.0.1.i.i.i = phi ptr [ null, %.noexc18.i ], [ null, %.noexc17.i.a ], [ %i.fy, %bb.aw ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.1.i.i.i, null
  br i1 %.not.i.i, label %bb.n, label %.loopexit.i

.body.thread25.loopexit.i:                        ; preds = %bb.ay, %bb.ax, %bb.aw, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread25.loopexit.split-lp.i:               ; preds = %bb.au, %bb.as, %bb.ar, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.thread12.i.i, %6, %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.loopexit.i:                                      ; preds = %_RINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB6_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i.i, %_RNCINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB8_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i.i, %_RNCINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB8_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i.i, %.loopexit.i.i
  %.sroa.0.0.i.ph.i = phi ptr [ %.sroa.11.0.ph.i.i, %.loopexit.i.i ], [ %i.gd, %_RNCINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB8_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i.i ], [ %i.gg, %_RNCINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB8_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i.i ], [ %.sroa.0.1.i.i.i, %_RINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB6_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !92
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsbNM6vbj4kjf_9usernames5proto8username12UsernameDataEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.thread unwind label %bb.bg

.thread:                                          ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bi

.body.thread.i:                                   ; preds = %.body.thread25.loopexit.split-lp.i, %.body.thread25.loopexit.i, %bb.bd, %bb.ba
  %eh.lpad-body23.i = phi { ptr, i32 } [ %i.gb, %bb.ba ], [ %i.ge, %bb.bd ], [ %lpad.loopexit.i, %.body.thread25.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body.thread25.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsbNM6vbj4kjf_9usernames5proto8username12UsernameDataEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #23
          to label %.body unwind label %bb.bf, !noalias !95

bb.bf:                                            ; preds = %.body.thread.i
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !95
  unreachable

bb.bg:                                            ; preds = %bb.bl, %.loopexit.i, %bb.bi
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bk, %bb.bg, %.body.thread.i
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body23.i, %.body.thread.i ], [ %i.gi, %bb.bg ], [ %i.gm, %bb.bk ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #23
          to label %.body68 unwind label %bb.bx

bb.bh:                                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !92
  %.sroa.079.0.copyload = load i64, ptr %i.i, align 8, !noalias !108 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !108 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.56.0..sroa_idx.i.i, i64 32, i1 false), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.gj = icmp eq i64 %.sroa.079.0.copyload, -1
  br i1 %i.gj, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.thread, %bb.bh
  %.sroa.7.087 = phi ptr [ %.sroa.0.0.i.ph.i, %.thread ], [ %.sroa.7.0.copyload, %bb.bh ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.087) ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECsbNM6vbj4kjf_9usernames(ptr nonnull %.sroa.7.087)
          to label %bb.bt unwind label %bb.bg

bb.bj:                                            ; preds = %bb.bh
  %i.gk = ptrtoint ptr %.sroa.7.0.copyload to i64
  %.sroa.532.sroa.4.0..sroa.532.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.532.sroa.4.0..sroa.532.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i64 %.sroa.079.0.copyload, ptr %i.l, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.gk, ptr %.sroa.431.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gl)
          to label %bb.bl unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gl)
          to label %.body unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gl)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit65 unwind label %bb.bg

bb.bm:                                            ; preds = %bb.bk
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit65: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit65
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body68 unwind label %bb.bp

bb.bo:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit65
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit70 unwind label %.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bn
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit70: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit72 unwind label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit70
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit72: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit70
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit72
  ret void

bb.bt:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.gs, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body68 unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit77 unwind label %.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bu
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit77: ; preds = %bb.bv, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.f

bb.bx:                                            ; preds = %.body, %.body68
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbNM6vbj4kjf_9usernames14username_links4hkdf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [176 x i8], align 8               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = alloca [144 x i8], align 8               ; 10 uses
  %i.h = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE7extractCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.e, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %3, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %4, ptr %i.i, align 8
  %i.j = invoke noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull %i.h, i64 noundef 32)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !129
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.c, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #28, !srcloc !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %i.l)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECsbNM6vbj4kjf_9usernames.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.j, label %bb.d, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCsbNM6vbj4kjf_9usernames.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !130
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.b, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #28, !srcloc !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbNM6vbj4kjf_9usernames14username_links4hmac(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
vector.ph:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [64 x i8], align 1                ; 4 uses
  %i.e = alloca [64 x i8], align 1                ; 4 uses
  %i.f = alloca [32 x i8], align 1                ; 5 uses
  %i.g = alloca [144 x i8], align 8               ; 13 uses
  %i.h = alloca [32 x i8], align 1                ; 5 uses
  %i.i = alloca [64 x i8], align 1                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 3 uses
  %i.k = alloca [40 x i8], align 8                ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 6 uses
  %i.m = alloca [64 x i8], align 16               ; 15 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [144 x i8], align 8               ; 10 uses
  %i.p = alloca [144 x i8], align 8               ; 7 uses
  %i.q = alloca [32 x i8], align 1                ; 4 uses
  %i.r = alloca [32 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !227
  call void @_RINvNtCsfkg6qDyjgHi_4hmac5utils11get_der_keyNtCsj2Wav7G13rI_4sha26Sha256ECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([64 x i8]) align 1 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !228
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.m, align 16, !alias.scope !229, !noalias !228
  %wide.load8 = load <16 x i8>, ptr %i.s, align 16, !alias.scope !229, !noalias !228
  %i.t = xor <16 x i8> %wide.load, splat (i8 54)
  %i.u = xor <16 x i8> %wide.load8, splat (i8 54)
  store <16 x i8> %i.t, ptr %i.m, align 16, !alias.scope !229, !noalias !228
  store <16 x i8> %i.u, ptr %i.s, align 16, !alias.scope !229, !noalias !228
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.v, align 16, !alias.scope !229, !noalias !228
  %wide.load8.1 = load <16 x i8>, ptr %i.w, align 16, !alias.scope !229, !noalias !228
  %i.x = xor <16 x i8> %wide.load.1, splat (i8 54)
  %i.y = xor <16 x i8> %wide.load8.1, splat (i8 54)
  store <16 x i8> %i.x, ptr %i.v, align 16, !alias.scope !229, !noalias !228
  store <16 x i8> %i.y, ptr %i.w, align 16, !alias.scope !229, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @30, i64 32, i1 false), !noalias !228
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 1, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !230, !noalias !231
  call void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 1, 144115188075855872) 1)
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %wide.load12 = load <16 x i8>, ptr %i.m, align 16, !alias.scope !232, !noalias !228
  %wide.load13 = load <16 x i8>, ptr %i.z, align 16, !alias.scope !232, !noalias !228
  %i.aa = xor <16 x i8> %wide.load12, splat (i8 106)
  %i.ab = xor <16 x i8> %wide.load13, splat (i8 106)
  store <16 x i8> %i.aa, ptr %i.m, align 16, !alias.scope !232, !noalias !228
  store <16 x i8> %i.ab, ptr %i.z, align 16, !alias.scope !232, !noalias !228
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %wide.load12.1 = load <16 x i8>, ptr %i.ac, align 16, !alias.scope !232, !noalias !228
  %wide.load13.1 = load <16 x i8>, ptr %i.ad, align 16, !alias.scope !232, !noalias !228
  %i.ae = xor <16 x i8> %wide.load12.1, splat (i8 106)
  %i.af = xor <16 x i8> %wide.load13.1, splat (i8 106)
  store <16 x i8> %i.ae, ptr %i.ac, align 16, !alias.scope !232, !noalias !228
  store <16 x i8> %i.af, ptr %i.ad, align 16, !alias.scope !232, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @30, i64 32, i1 false), !noalias !228
  %.sroa.42.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 1, ptr %.sroa.42.0..sroa_idx.i3, align 8, !alias.scope !233, !noalias !234
  call void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 1, 144115188075855872) 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !227
  %.sroa.5.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 63 ; 3 uses
  store i8 0, ptr %.sroa.5.sroa.4.0..sroa_idx, align 1, !alias.scope !235
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.ah = icmp samesign ult i64 %4, 64
  br i1 %i.ah, label %bb.a, label %bb.b

common.resume:                                    ; preds = %.body.i.i, %bb.e, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %.body.i ], [ %i.ay, %bb.e ], [ %i.aw, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.i, i8 0, i64 64, i1 false), !noalias !243
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.o, ptr nonnull align 1 %i.i, i64 64, i1 true), !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.o) #28, !noalias !236, !srcloc !8
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %.sroa.5.sroa.5.0..sroa_idx)
          to label %common.resume unwind label %bb.c, !noalias !236

bb.a:                                             ; preds = %vector.ph
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull readonly align 1 %3, i64 range(i64 0, -9223372036854775808) %4, i1 false), !alias.scope !244, !noalias !245
  %i.aj = trunc nuw nsw i64 %4 to i8
  store i8 %i.aj, ptr %.sroa.5.sroa.4.0..sroa_idx, align 1, !alias.scope !246, !noalias !247
  br label %_RINvXNtCs2KKWnYNkHVH_6digest3macINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB3_3Mac12chain_updateRShECsbNM6vbj4kjf_9usernames.exit

bb.b:                                             ; preds = %vector.ph
  %i.ak = lshr i64 %4, 6                          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 96 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !248, !noalias !249, !noundef !4
  %i.an = add i64 %i.am, %i.ak
  store i64 %i.an, ptr %i.al, align 8, !alias.scope !248, !noalias !249
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.sroa.5.sroa.5.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 1, 144115188075855872) %i.ak)
          to label %.noexc3.i unwind label %.body.i, !noalias !236

.noexc3.i:                                        ; preds = %bb.b
  %i.ao = and i64 %4, 9223372036854775744
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 %i.ao
  %i.aq = and i64 %4, 63                          ; 2 uses
  %i.ar = trunc nuw nsw i64 %i.aq to i8
  store i8 %i.ar, ptr %.sroa.5.sroa.4.0..sroa_idx, align 1, !alias.scope !250, !noalias !247
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.o, ptr nonnull align 1 %i.ap, i64 %i.aq, i1 false), !alias.scope !244, !noalias !245
  br label %_RINvXNtCs2KKWnYNkHVH_6digest3macINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB3_3Mac12chain_updateRShECsbNM6vbj4kjf_9usernames.exit

bb.c:                                             ; preds = %.body.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !236
  unreachable

_RINvXNtCs2KKWnYNkHVH_6digest3macINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB3_3Mac12chain_updateRShECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a, %.noexc3.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.p, ptr noundef nonnull align 8 dereferenceable(144) %i.o, i64 144, i1 false), !alias.scope !251, !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !252
  invoke void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECsbNM6vbj4kjf_9usernames.exit.i unwind label %bb.e, !noalias !252

_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECsbNM6vbj4kjf_9usernames.exit.i: ; preds = %_RINvXNtCs2KKWnYNkHVH_6digest3macINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB3_3Mac12chain_updateRShECsbNM6vbj4kjf_9usernames.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %i.p, i64 144, i1 false), !noalias !253
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !255
  invoke void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull %i.a)
          to label %.noexc.i.i unwind label %.body.i.i, !noalias !256

.noexc.i.i:                                       ; preds = %_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECsbNM6vbj4kjf_9usernames.exit.i
  invoke fastcc void @_RNvXs6_NtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB5_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB3b_2B0EB3p_EB3p_EB3p_EB3p_EENtB7_15FixedOutputCore19finalize_fixed_coreCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.at, ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.g, ptr noalias nofree noundef dereferenceable(32) %i.f)
          to label %.noexc3.i.i unwind label %.body.i.i, !noalias !257

.noexc3.i.i:                                      ; preds = %.noexc.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 63
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !259, !noalias !260
  store i8 32, ptr %i.au, align 1, !alias.scope !261, !noalias !262
  invoke fastcc void @_RNvXs6_NtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB5_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB3b_2B0EB3p_EB3p_EB3p_EB3p_EENtB7_15FixedOutputCore19finalize_fixed_coreCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(40) %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.g, ptr noalias nofree noundef nonnull dereferenceable(32) %i.h)
          to label %_RNvYINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest11FixedOutput14finalize_fixedCsbNM6vbj4kjf_9usernames.exit unwind label %.body.i.i, !noalias !252

.body.i.i:                                        ; preds = %.noexc3.i.i, %.noexc.i.i, %_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECsbNM6vbj4kjf_9usernames.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, i8 0, i64 64, i1 false), !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.e, i64 64, i1 true), !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #28, !noalias !252, !srcloc !8
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %i.at)
          to label %common.resume unwind label %bb.d, !noalias !252

bb.d:                                             ; preds = %.body.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !252
  unreachable

bb.e:                                             ; preds = %_RINvXNtCs2KKWnYNkHVH_6digest3macINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB3_3Mac12chain_updateRShECsbNM6vbj4kjf_9usernames.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !264
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.p, ptr nonnull align 1 %i.c, i64 64, i1 true), !noalias !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.p) #28, !noalias !253, !srcloc !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %i.az)
          to label %common.resume unwind label %bb.f, !noalias !253

bb.f:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !253
  unreachable

_RNvYINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest11FixedOutput14finalize_fixedCsbNM6vbj4kjf_9usernames.exit: ; preds = %.noexc3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, i8 0, i64 64, i1 false), !noalias !265
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.d, i64 64, i1 true), !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #28, !noalias !252, !srcloc !8
  call void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %i.at), !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.q, ptr noundef nonnull align 1 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.q, ptr %i.b, align 8, !noalias !266
  call void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsd_B5_BF_NtNtB2Z_5clone5Clone5clone0E0ECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.bb = load i64, ptr %i.n, align 8, !range !10, !noundef !4
  %i.bc = trunc nuw i64 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !11, !noundef !4 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.bc, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %_RNvYINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest11FixedOutput14finalize_fixedCsbNM6vbj4kjf_9usernames.exit
  %i.bg = load i64, ptr %i.bf, align 8
  call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.be, i64 %i.bg) #29
  unreachable

bb.h:                                             ; preds = %_RNvYINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest11FixedOutput14finalize_fixedCsbNM6vbj4kjf_9usernames.exit
  %i.bh = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bi = icmp samesign ugt i64 %i.be, 31
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %i.be, ptr %0, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bh, ptr noundef nonnull align 1 dereferenceable(32) %i.r, i64 32, i1 false)
  store i64 32, ptr %i.bk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsfBDUjroi3FF_9hashbrownINtNtCs6i54tJFfzR_5alloc6borrow3CoweEINtB2_10EquivalentBq_E10equivalentCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !273, !noalias !274, !noundef !4 ; 2 uses
  %.sroa.32.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.32.0.i = load i64, ptr %.sroa.32.0.in.i, align 8, !alias.scope !274, !noalias !273, !noundef !4
  %i.a = icmp eq i64 %.sroa.3.0.i, %.sroa.32.0.i
  br i1 %i.a, label %bb.b, label %_RNvXs8_NtCs6i54tJFfzR_5alloc6borrowINtB5_3CoweENtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eqCsbNM6vbj4kjf_9usernames.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !273, !noalias !274, !nonnull !4, !noundef !4
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.0.in.i, align 8, !alias.scope !274, !noalias !273, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.0.i, ptr nonnull readonly %.sroa.01.0.i, i64 %.sroa.3.0.i), !alias.scope !275, !noalias !276
  %i.b = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc6borrowINtB5_3CoweENtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eqCsbNM6vbj4kjf_9usernames.exit

_RNvXs8_NtCs6i54tJFfzR_5alloc6borrowINtB5_3CoweENtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eqCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockANtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointj3_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(488) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.c
    i32 2, label %bb.c
    i32 0, label %bb.c
  ], !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtCsfFEWD1QhNwv_6poksho9statement9StatementENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(176) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.q
    i32 2, label %bb.q
    i32 0, label %bb.c
  ], !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0)
          to label %.body.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationEECsbNM6vbj4kjf_9usernames.exit.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i unwind label %bb.p

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationEECsbNM6vbj4kjf_9usernames.exit.i: ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit6.i unwind label %bb.h

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i: ; preds = %bb.h, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.h ], [ %eh.lpad-body.i, %.body.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #23
          to label %.body7.i unwind label %bb.p

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationEECsbNM6vbj4kjf_9usernames.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit6.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationEECsbNM6vbj4kjf_9usernames.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit6.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body7.i unwind label %bb.k

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit6.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECsbNM6vbj4kjf_9usernames.exit.i unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

.body7.i:                                         ; preds = %bb.l, %bb.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i ], [ %i.n, %bb.l ], [ %i.k, %bb.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit9.i unwind label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body7.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECsbNM6vbj4kjf_9usernames.exit.i: ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit10.i unwind label %bb.m

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit9.i: ; preds = %bb.m, %.body7.i
  %.pn4.i = phi { ptr, i32 } [ %i.q, %bb.m ], [ %.pn2.i, %.body7.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #23
          to label %common.resume.i unwind label %bb.p

bb.m:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECsbNM6vbj4kjf_9usernames.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit9.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit10.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECsbNM6vbj4kjf_9usernames.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho9statement9StatementECsbNM6vbj4kjf_9usernames.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit10.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume.i:                                  ; preds = %bb.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit9.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.s, %bb.n ], [ %.pn4.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit9.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.p:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit9.i, %.body7.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i, %.body.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho9statement9StatementECsbNM6vbj4kjf_9usernames.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit10.i
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho9statement9StatementECsbNM6vbj4kjf_9usernames.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !277, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsbNM6vbj4kjf_9usernames, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsbNM6vbj4kjf_9usernames.40, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXs3_NtNtCsgxBkk5gSRhY_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 range(i64 0, -9223372036854775808) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !286
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i10 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !286
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i10
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i10, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !286, !noundef !4
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit

_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted20 = load i64, ptr %i.aj, align 8
  %.promoted21 = load i64, ptr %i.ak, align 8, !alias.scope !287
  %.promoted23 = load i64, ptr %i.al, align 8, !alias.scope !287
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !4
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !288, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !288, !noundef !4 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !288, !noundef !4
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !288
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !288
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !288
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !287
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !287
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i17 = load i32, ptr %i.bl, align 1, !alias.scope !289
  %i.bm = zext i32 %.sroa.014.0.copyload.i17 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i11 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i12 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i11, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i11
  %.sroa.015.0.copyload.i16 = load i16, ptr %i.bq, align 1, !alias.scope !289
  %i.br = zext i16 %.sroa.015.0.copyload.i16 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i11, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i12
  %i.bv = or disjoint i64 %.sroa.03.0.i11, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i13 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i11, %bb.m ] ; 3 uses
  %.sroa.0.1.i14 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i12, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i13, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit18

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i13, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !289, !noundef !4
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i13, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i14
  br label %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit18

_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit18: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i15 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i14, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i15, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted23, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.0.119 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.119
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.0.119, 8             ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit18, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit18 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB5_12UsernameDataNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !captures !7
  %i.d = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.a, align 8, !captures !7
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB5_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB3b_2B0EB3p_EB3p_EB3p_EB3p_EENtB7_15FixedOutputCore19finalize_fixed_coreCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull dereferenceable(64) %1, ptr noalias nofree noundef nonnull dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [64 x i8], align 1                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !309, !noalias !310, !noundef !4 ; 2 uses
  %i.l = zext nneg i8 %i.k to i64                 ; 3 uses
  %i.m = icmp ult i8 %i.k, 64
  call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !308, !noalias !311, !noundef !4
  %i.p = shl i64 %i.o, 9
  %i.q = shl nuw nsw i64 %i.l, 3
  %i.r = or disjoint i64 %i.p, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !312
  %i.s = call i64 @llvm.bswap.i64(i64 %i.r)
  store i64 %i.s, ptr %i.f, align 8, !noalias !312
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.t = xor i64 %i.l, 63                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !314
  store ptr %1, ptr %i.e, align 8, !noalias !314
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 2 uses
  store i8 -128, ptr %i.u, align 1, !alias.scope !315, !noalias !316
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.v, i8 0, i64 %i.t, i1 false), !alias.scope !315, !noalias !316
  %i.w = icmp samesign ult i64 %i.t, 8
  br i1 %i.w, label %bb.c, label %bb.f

bb.b:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(64) %1, i64 64, i1 false), !noalias !310
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
          to label %bb.e unwind label %bb.d, !noalias !318

bb.d:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.b unwind label %bb.h, !noalias !318

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %1, i8 0, i64 64, i1 false), !alias.scope !309, !noalias !319
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %i.y, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.g unwind label %bb.d, !noalias !318

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(64) %1, i64 64, i1 false), !noalias !310
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
          to label %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i unwind label %bb.d, !noalias !318

bb.h:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !318
  unreachable

_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !320
  call void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !312
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !321
  store ptr %i.aa, ptr %i.b, align 8, !noalias !322
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !322
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !322
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 32, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !322
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !312
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !321
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !323, !noalias !324, !noundef !4 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !323, !noalias !324, !noundef !4
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i, label %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i: ; preds = %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i: ; preds = %bb.i, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i
  %i.ah = phi i64 [ %i.ad, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i ], [ %i.ap, %bb.i ] ; 3 uses
  %i.ai = add nuw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ab, align 8, !alias.scope !323, !noalias !324
  %i.aj = call { ptr, i64 } @_RNvXs1y_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, i64 noundef %i.ah), !noalias !325 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit, label %bb.i

bb.i:                                             ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %.val.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !323, !noalias !324, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !312
  %i.an = load i32, ptr %i.am, align 4, !noundef !4
  %i.ao = call i32 @llvm.bswap.i32(i32 %i.an)
  store i32 %i.ao, ptr %i.g, align 4, !noalias !312
  call void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %i.ak, i64 noundef %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !312
  %i.ap = load i64, ptr %i.ab, align 8, !alias.scope !323, !noalias !324, !noundef !4 ; 2 uses
  %i.aq = load i64, ptr %i.ac, align 8, !alias.scope !323, !noalias !324, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i, label %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit

_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i, %bb.i, %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !312
  call void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %2, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCs7QbGsRJVG1P_4hkdf6errorsNtB5_13InvalidLengthNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs17cqnTMcAHA_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf13has_remainingCsbNM6vbj4kjf_9usernames(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !4
  %i.b = icmp ne i64 %.val, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13copy_to_bytesCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %i.j = icmp ult i64 %.val2, %2
  br i1 %i.j, label %bb.d, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !341
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !341
  %i.k = load i64, ptr %i.f, align 8, !range !10, !noalias !341, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !11, !noalias !341, !noundef !4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !noalias !341
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #29, !noalias !341
  unreachable

_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit: ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !noalias !341, !nonnull !4, !noundef !4
  %i.r = icmp ule i64 %2, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !341
  %i.s = lshr i64 %i.n, 10
  %i.t = tail call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 false)
  %i.u = sub nuw nsw i64 64, %i.t
  %.sroa.0.0.i.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.u, i64 7)
  %i.v = shl nuw nsw i64 %.sroa.0.0.i.i.i, 2
  %i.w = getelementptr i8, ptr null, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 1
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !342, !noalias !343
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 0, ptr %i.y, align 8, !alias.scope !342, !noalias !343
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 %i.n, ptr %i.z, align 8, !alias.scope !342, !noalias !343
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.aa, align 8, !alias.scope !342, !noalias !343
  invoke void @_RINvXs1_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQRShEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
          to label %bb.e unwind label %bb.m

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %2, ptr %i.h, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.val2, ptr %i.ab, align 8
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) #29
  unreachable

bb.e:                                             ; preds = %_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8 ; 4 uses
  %.sroa.5.0.copyload = load i64, ptr %i.y, align 8 ; 3 uses
  %.sroa.7.0.copyload = load i64, ptr %i.z, align 8 ; 2 uses
  %.sroa.8.0.copyload = load ptr, ptr %i.aa, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.ac = ptrtoint ptr %.sroa.8.0.copyload to i64 ; 2 uses
  %i.ad = and i64 %i.ac, 1
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = lshr i64 %i.ac, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !345
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.af
  %i.ah = add i64 %i.ae, %.sroa.5.0.copyload      ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %.sroa.5.0.copyload
  br i1 %i.ai, label %.noexc, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.aj, align 8, !alias.scope !344, !noalias !346
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %i.ak, align 8, !alias.scope !344, !noalias !346
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0.copyload, ptr %i.al, align 8, !alias.scope !344, !noalias !346
  store ptr @_RNvNtCs17cqnTMcAHA_5bytes9bytes_mut13SHARED_VTABLE, ptr %0, align 8, !alias.scope !344, !noalias !346
  br label %_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut6freeze.exit

bb.h:                                             ; preds = %bb.f
  %i.am = add i64 %i.ae, %.sroa.7.0.copyload      ; 3 uses
  %i.an = icmp ult i64 %i.am, %.sroa.7.0.copyload
  br i1 %i.an, label %.noexc4, label %.noexc3

.noexc:                                           ; preds = %bb.f
  call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
  unreachable

.noexc3:                                          ; preds = %bb.h
  %i.ao = icmp sgt i64 %i.am, -1
  call void @llvm.assume(i1 %i.ao)
  store i64 %i.am, ptr %i.e, align 8, !noalias !345
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ag, ptr %i.ap, align 8, !noalias !345
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ah, ptr %i.aq, align 8, !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !345
  call void @_RNvXsE_NtCs17cqnTMcAHA_5bytes5bytesNtB5_5BytesINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !345
  store i64 %i.ae, ptr %i.c, align 8, !noalias !348
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !347, !noalias !345, !noundef !4 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.ae, %i.as
  br i1 %.not.i.i, label %bb.i, label %bb.k, !prof !9

bb.i:                                             ; preds = %.noexc3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !348
  store i64 %i.as, ptr %i.b, align 8, !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !348
  store ptr %i.c, ptr %i.a, align 8, !noalias !348
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !348
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.at, align 8, !noalias !348
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !348
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #27
          to label %.noexc.i unwind label %bb.j, !noalias !345

.noexc.i:                                         ; preds = %bb.i
  unreachable

.noexc4:                                          ; preds = %bb.h
  call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !351, !noalias !345, !noundef !4
  %i.ax = load ptr, ptr %i.d, align 8, !alias.scope !351, !noalias !345, !nonnull !4, !align !6, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !352, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !351, !noalias !345, !noundef !4
  invoke void %i.az(ptr noundef %i.aw, ptr noundef %i.bb, i64 noundef %i.as)
          to label %.body.thread unwind label %bb.l, !noalias !345, !inline_history !340

bb.k:                                             ; preds = %.noexc3
  %i.bc = sub nuw i64 %i.as, %i.ae
  store i64 %i.bc, ptr %i.ar, align 8, !alias.scope !347, !noalias !345
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !347, !noalias !345, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ae
  store ptr %i.bf, ptr %i.bd, align 8, !alias.scope !347, !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !345
  br label %_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut6freeze.exit

bb.l:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !345
  unreachable

_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut6freeze.exit: ; preds = %bb.k, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.body.thread:                                     ; preds = %bb.m, %bb.j
  %eh.lpad-body10 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.m ], [ %i.au, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body10

bb.m:                                             ; preds = %_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val, 0
  br i1 %i.b, label %bb.b, label %_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @42) #29
  unreachable

_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit: ; preds = %bb.a
  %.val1 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = load i8, ptr %.val1, align 1, !noundef !4
  %i.d = add i64 %.val, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 1
  store ptr %i.e, ptr %0, align 8, !alias.scope !355, !captures !7
  store i64 %i.d, ptr %i.a, align 8, !alias.scope !355
  ret i8 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsd_B5_BF_NtNtB2Z_5clone5Clone5clone0E0ECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReBF_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReBM_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsgxBkk5gSRhY_4core5array5drainINtB5_5DrainAhj20_NCINvMNtNtB9_3ops9try_traitINtB12_17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointE10wrap_mut_1BQ_NCNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS00E0ENtNtB14_4drop4Drop4dropB3b_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainAhj20_NCINvMNtNtB9_3ops9try_traitINtB13_17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointE10wrap_mut_1BR_NCNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS00E0EINtNtB15_8function5FnMutTjEE8call_mutB3c_(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(address) dereferenceable(160), ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6string5mergeQRShECsbNM6vbj4kjf_9usernames(i8 noundef range(i8 0, 6), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames(i8 noundef range(i8 0, 6), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECsbNM6vbj4kjf_9usernames(i8 noundef range(i8 0, 6), i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef align 4 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 144115188075855872)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsE_NtCs17cqnTMcAHA_5bytes5bytesNtB5_5BytesINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs54uEYnqmHDA_13signal_crypto7aes_cbc19aes_256_cbc_decrypt(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE7extractCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias nofree noundef readonly captures(address, read_provenance), i64, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1y_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsfkg6qDyjgHi_4hmac5utils11get_der_keyNtCsj2Wav7G13rI_4sha26Sha256ECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 1 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs6i54tJFfzR_5alloc6string6StringNtB6_5Debug3fmtCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtCs6i54tJFfzR_5alloc3vec3VechENtB6_5Debug3fmtCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQRShEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20
end_hunk_1
