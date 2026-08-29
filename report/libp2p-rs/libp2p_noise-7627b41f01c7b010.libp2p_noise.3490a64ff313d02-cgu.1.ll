Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_noise-7627b41f01c7b010.libp2p_noise.3490a64ff313d02-cgu.1?download=true
inline.NumInlined: 211
inline.NumDeleted: 123
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/thread/local.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\AD\01\00\00\19\00\00\00" }>, align 8
@2 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/multihash-0.19.5/src/multihash.rs\00", align 1
@3 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@4 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @3, [24 x i8] zeroinitializer }>, align 8
@_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"f\00\00\00\00\00\00\00Y\00\00\00\15\00\00\00" }>, align 8
@6 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@7 = private unnamed_addr constant [87 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/sys/sync/once/futex.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"V\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@9 = private unnamed_addr constant [79 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/slice/iter.rs\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"N\00\00\00\00\00\00\00o\07\00\00\11\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"N\00\00\00\00\00\00\00\0B\08\00\00\11\00\00\00" }>, align 8
@12 = private unnamed_addr constant [78 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/io/impls.rs\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"M\00\00\00\00\00\00\00?\01\00\00\11\00\00\00" }>, align 8
@14 = private unnamed_addr constant [27 x i8] c"failed to fill whole buffer", align 1
@15 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @14, [9 x i8] c"\1B\00\00\00\00\00\00\00%", [7 x i8] undef }>, align 8
@_RNvNvXs7_NtCsdnM8jOGFORn_4snow5errorNtB7_14PatternProblemNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES = external local_unnamed_addr global { ptr, i64 }
@_RNvNvXs7_NtCsdnM8jOGFORn_4snow5errorNtB7_14PatternProblemNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt8___OFFSET = external global [11 x i64]
@16 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshuexzQAPOo_12libp2p_noise, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCshuexzQAPOo_12libp2p_noise }>, align 8
@17 = private unnamed_addr constant [18 x i8] c"ValidateKeyLengths", align 1
@18 = private unnamed_addr constant [18 x i8] c"ValidatePskLengths", align 1
@19 = private unnamed_addr constant [19 x i8] c"ValidateCipherTypes", align 1
@20 = private unnamed_addr constant [10 x i8] c"GetRngImpl", align 1
@21 = private unnamed_addr constant [9 x i8] c"GetDhImpl", align 1
@22 = private unnamed_addr constant [13 x i8] c"GetCipherImpl", align 1
@23 = private unnamed_addr constant [11 x i8] c"GetHashImpl", align 1
@24 = private unnamed_addr constant [19 x i8] c"ValidatePskPosition", align 1
@25 = private unnamed_addr constant [18 x i8] c"ParameterOverwrite", align 1
@26 = private unnamed_addr constant [15 x i8] c"LocalPrivateKey", align 1
@27 = private unnamed_addr constant [15 x i8] c"RemotePublicKey", align 1
@28 = private unnamed_addr constant [18 x i8] c"MissingKeyMaterial", align 1
@29 = private unnamed_addr constant [10 x i8] c"MissingPsk", align 1
@30 = private unnamed_addr constant [14 x i8] c"NotTurnToWrite", align 1
@31 = private unnamed_addr constant [13 x i8] c"NotTurnToRead", align 1
@32 = private unnamed_addr constant [20 x i8] c"HandshakeNotFinished", align 1
@33 = private unnamed_addr constant [24 x i8] c"HandshakeAlreadyFinished", align 1
@34 = private unnamed_addr constant [6 x i8] c"OneWay", align 1
@35 = private unnamed_addr constant [9 x i8] c"Exhausted", align 1
@36 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@37 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@38 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@39 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@40 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@41 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdnM8jOGFORn_4snow5error12StateProblemNtB6_5Debug3fmtCshuexzQAPOo_12libp2p_noise = private unnamed_addr constant [8 x i8] c"\12\0A\0E\0D\14\18\06\09", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdnM8jOGFORn_4snow5error12StateProblemNtB6_5Debug3fmtCshuexzQAPOo_12libp2p_noise.46 = private unnamed_addr constant [8 x ptr] [ptr @28, ptr @29, ptr @30, ptr @31, ptr @32, ptr @33, ptr @34, ptr @35], align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdnM8jOGFORn_4snow5error9InitStageNtB6_5Debug3fmtCshuexzQAPOo_12libp2p_noise = private unnamed_addr constant [9 x i8] c"\12\12\13\0A\09\0D\0B\13\12", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdnM8jOGFORn_4snow5error9InitStageNtB6_5Debug3fmtCshuexzQAPOo_12libp2p_noise.47 = private unnamed_addr constant [9 x ptr] [ptr @17, ptr @18, ptr @19, ptr @20, ptr @21, ptr @22, ptr @23, ptr @24, ptr @25], align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCshuexzQAPOo_12libp2p_noise = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCshuexzQAPOo_12libp2p_noise.48 = private unnamed_addr constant [6 x ptr] [ptr @36, ptr @37, ptr @38, ptr @39, ptr @40, ptr @41], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCshhqnaxk4GqT_4rand8make_rngNtNtNtB2_4rngs3std6StdRngECshuexzQAPOo_12libp2p_noise(ptr dead_on_unwind noalias nofree noundef writable sret([320 x i8]) align 4 captures(address) dereferenceable(320) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef nonnull ptr @_RNvNtNtCshhqnaxk4GqT_4rand4rngs6thread3rng()
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng8from_rngNtNtB7_6thread9ThreadRngECshuexzQAPOo_12libp2p_noise(ptr noalias nofree noundef nonnull sret([320 x i8]) align 4 captures(address) dereferenceable(320) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !4)
  call void @llvm.experimental.noalias.scope.decl(metadata !7)
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %i.d = load ptr, ptr %i.a, align 8, !alias.scope !13, !nonnull !14, !noundef !14 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !13, !noundef !14
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !noalias !13
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECshuexzQAPOo_12libp2p_noise.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECshuexzQAPOo_12libp2p_noise.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.h = load ptr, ptr %i.a, align 8, !alias.scope !24, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !24, !noundef !14
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !noalias !24
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECshuexzQAPOo_12libp2p_noise.exit1

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECshuexzQAPOo_12libp2p_noise.exit1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECshuexzQAPOo_12libp2p_noise.exit1: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECshuexzQAPOo_12libp2p_noise.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_E4readRShECshuexzQAPOo_12libp2p_noise(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.28.sroa.0 = alloca [57 x i8], align 8    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %2, ptr %i.e, align 8, !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29
  call void @_RINvNtCsfPnYm3bSk7z_15unsigned_varint2io8read_u64QRShECshuexzQAPOo_12libp2p_noise(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !33
  %i.f = load i8, ptr %i.b, align 8, !range !34, !noalias !29, !noundef !14 ; 3 uses
  %.not.i.i = icmp eq i8 %i.f, 2
  br i1 %.not.i.i, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit.thread.i, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit.i

_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit.thread.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !29, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35
  call void @_RINvNtCsfPnYm3bSk7z_15unsigned_varint2io8read_u64QRShECshuexzQAPOo_12libp2p_noise(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !39
  %i.i = load i8, ptr %i.a, align 8, !range !34, !noalias !35, !noundef !14 ; 3 uses
  %.not.i73.i = icmp eq i8 %i.i, 2
  br i1 %.not.i73.i, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit84.thread.i, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit84.i

_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit.i: ; preds = %bb.a
  %i.j = trunc nuw i8 %i.f to i1                  ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !29
  %.sroa.51.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.51.0.copyload.i.i = load ptr, ptr %.sroa.51.0..sroa_idx.i.i, align 8, !noalias !29, !nonnull !14
  %.sroa.05.0.i.i = shl nuw nsw i8 %i.f, 1
  %i.k = ptrtoint ptr %.sroa.51.0.copyload.i.i to i64
  %i.l = select i1 %i.j, i64 undef, i64 %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29
  %.sroa.9.8.insert.ext = zext nneg i8 %.sroa.05.0.i.i to i64
  %i.m = zext i8 %.sroa.4.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %i.m, 8
  %.sroa.9.9.insert.shift = select i1 %i.j, i64 %i.n, i64 0
  %.sroa.9.9.insert.insert = or disjoint i64 %.sroa.9.9.insert.shift, %.sroa.9.8.insert.ext
  br label %bb.f

_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit84.thread.i: ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !35, !noundef !14 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35
  %i.q = icmp ugt i64 %i.p, 64
  br i1 %i.q, label %bb.f, label %bb.b

_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit84.i: ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit.thread.i
  %i.r = trunc nuw i8 %i.i to i1                  ; 2 uses
  %.sroa.4.0..sroa_idx.i74.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.4.0.copyload.i75.i = load i8, ptr %.sroa.4.0..sroa_idx.i74.i, align 1, !noalias !35
  %.sroa.51.0..sroa_idx.i76.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.51.0.copyload.i77.i = load ptr, ptr %.sroa.51.0..sroa_idx.i76.i, align 8, !noalias !35, !nonnull !14
  %.sroa.05.0.i78.i = shl nuw nsw i8 %i.i, 1
  %i.s = ptrtoint ptr %.sroa.51.0.copyload.i77.i to i64
  %i.t = select i1 %i.r, i64 undef, i64 %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35
  %.sroa.9.8.insert.ext29 = zext nneg i8 %.sroa.05.0.i78.i to i64
  %i.u = zext i8 %.sroa.4.0.copyload.i75.i to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %.sroa.9.9.insert.shift40 = select i1 %i.r, i64 %i.v, i64 0
  %.sroa.9.9.insert.insert42 = or disjoint i64 %.sroa.9.9.insert.shift40, %.sroa.9.8.insert.ext29
  br label %bb.f

bb.b:                                             ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit84.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !25
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.w = load i64, ptr %i.e, align 8, !alias.scope !40, !noalias !45, !noundef !14
  %i.x = icmp ugt i64 %i.p, %i.w
  %i.y = load ptr, ptr %i.d, align 8, !alias.scope !40, !noalias !45, !nonnull !14, !noundef !14 ; 2 uses
  br i1 %i.x, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCshuexzQAPOo_12libp2p_noise.exit.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCshuexzQAPOo_12libp2p_noise.exit.i.i: ; preds = %bb.b
  %i.z = icmp eq i64 %i.p, 1
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCshuexzQAPOo_12libp2p_noise.exit.i.i
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshuexzQAPOo_12libp2p_noise(ptr noalias nofree noundef nonnull %i.c, i64 noundef range(i64 0, 65) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef range(i64 0, 65) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13), !noalias !46
  br label %bb.g

bb.d:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCshuexzQAPOo_12libp2p_noise.exit.i.i
  %i.aa = load i8, ptr %i.y, align 1, !noalias !47, !noundef !14
  store i8 %i.aa, ptr %i.c, align 8, !alias.scope !43, !noalias !48
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit.i, %bb.e, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit84.i, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit84.thread.i
  %.sroa.18.sroa.10.sroa.0.0.ph.in.in = phi i64 [ %i.p, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit84.thread.i ], [ %i.t, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit84.i ], [ ptrtoint (ptr @15 to i64), %bb.e ], [ %i.l, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit.i ]
  %.sroa.9.0.ph = phi i64 [ 1, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit84.thread.i ], [ %.sroa.9.9.insert.insert42, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit84.i ], [ 0, %bb.e ], [ %.sroa.9.9.insert.insert, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QRShECshuexzQAPOo_12libp2p_noise.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0.ph, ptr %i.ab, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.18.sroa.10.sroa.0.0.ph.in.in, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c
  %.sroa.18.sroa.10.sroa.0.0.copyload53 = load i56, ptr %i.c, align 8, !noalias !49
  %.sroa.28.17..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %.sroa.28.sroa.0, ptr noundef nonnull align 1 dereferenceable(57) %.sroa.28.17..sroa_idx, i64 57, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.18.16.extract.trunc = trunc nuw nsw i64 %i.p to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i56 %.sroa.18.sroa.10.sroa.0.0.copyload53, ptr %i.ac, align 8
  %.sroa.011.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %.sroa.011.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(57) %.sroa.28.sroa.0, i64 57, i1 false)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.h, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sroa.18.16.extract.trunc, ptr %.sroa.513.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i64 [ 0, %bb.g ], [ 1, %bb.f ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtCsbZN1VVVQjZP_5prost8encoding10merge_loopNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsNCINvNtB2_7message5mergeBJ_QRShE0B2A_EBT_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = tail call fastcc { i64, ptr } @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13decode_varintQRShECshuexzQAPOo_12libp2p_noise(ptr noalias nofree noundef align 8 dereferenceable(8) %1) #24 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = trunc nuw i64 %i.g to i1
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val13 = load ptr, ptr %1, align 8, !nonnull !14, !align !50, !noundef !14
  %i.k = getelementptr i8, ptr %.val13, i64 8
  %.val.i = load i64, ptr %i.k, align 8, !noundef !14 ; 2 uses
  %i.l = icmp ult i64 %.val.i, %i.i
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i64 %.val.i, %i.i                ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 -9223372036854775801, ptr %i.e, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvXs1_NtCsbZN1VVVQjZP_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit

bb.e:                                             ; preds = %_RNCINvNtNtCsbZN1VVVQjZP_5prost8encoding7message5mergeNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsQRShE0BZ_.exit, %bb.c
  %.val12 = load ptr, ptr %1, align 8, !nonnull !14, !align !50, !noundef !14
  %i.o = getelementptr i8, ptr %.val12, i64 8
  %.val.i14 = load i64, ptr %i.o, align 8, !noundef !14 ; 2 uses
  %i.p = icmp ugt i64 %.val.i14, %i.m
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq i64 %.val.i14, %i.m
  br i1 %.not, label %.loopexit, label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.q = tail call fastcc { i64, ptr } @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13decode_varintQRShECshuexzQAPOo_12libp2p_noise(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #24, !noalias !51 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.u = trunc nuw i64 %i.r to i1
  br i1 %i.u, label %_RNCINvNtNtCsbZN1VVVQjZP_5prost8encoding7message5mergeNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsQRShE0BZ_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp ugt ptr %i.s, inttoptr (i64 4294967295 to ptr)
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = and i64 %i.t, 7                          ; 3 uses
  %switch.i = icmp samesign ult i64 %i.w, 6
  br i1 %switch.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.t, ptr %i.x, align 8, !noalias !56
  store i64 -9223372036854775804, ptr %i.c, align 8, !noalias !56
  %i.y = call noundef nonnull align 8 ptr @_RNvXs1_NtCsbZN1VVVQjZP_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c), !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !56
  br label %_RNCINvNtNtCsbZN1VVVQjZP_5prost8encoding7message5mergeNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsQRShE0BZ_.exit.thread

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !56
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.w, ptr %i.z, align 8, !noalias !56
  store i64 -9223372036854775805, ptr %i.a, align 8, !noalias !56
  %i.aa = call noundef nonnull align 8 ptr @_RNvXs1_NtCsbZN1VVVQjZP_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a), !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !56
  br label %_RNCINvNtNtCsbZN1VVVQjZP_5prost8encoding7message5mergeNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsQRShE0BZ_.exit.thread

bb.l:                                             ; preds = %bb.i
  %i.ab = trunc nuw i64 %i.t to i32
  %i.ac = lshr i32 %i.ab, 3                       ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %_RNCINvNtNtCsbZN1VVVQjZP_5prost8encoding7message5mergeNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsQRShE0BZ_.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !56
  store i64 -9223372036854775803, ptr %i.b, align 8, !noalias !56
  %i.ae = call noundef nonnull align 8 ptr @_RNvXs1_NtCsbZN1VVVQjZP_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b), !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !56
  br label %_RNCINvNtNtCsbZN1VVVQjZP_5prost8encoding7message5mergeNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsQRShE0BZ_.exit.thread

_RNCINvNtNtCsbZN1VVVQjZP_5prost8encoding7message5mergeNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsQRShE0BZ_.exit.thread: ; preds = %bb.g, %bb.j, %bb.k, %bb.m
  %.sroa.11.0.ph.i = phi ptr [ %i.y, %bb.j ], [ %i.ae, %bb.m ], [ %i.aa, %bb.k ], [ %i.s, %bb.g ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph.i) ]
  br label %.loopexit

_RNCINvNtNtCsbZN1VVVQjZP_5prost8encoding7message5mergeNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsQRShE0BZ_.exit: ; preds = %bb.l
  %.sroa.11.8.extract.trunc.i = trunc nuw nsw i64 %i.w to i8
  %i.af = tail call noundef align 8 ptr @_RINvXs3_NtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_protoNtB6_15NoiseExtensionsNtNtCsbZN1VVVQjZP_5prost7message7Message11merge_fieldQRShEBe_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ac, i8 noundef %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) ; 2 uses
  %.not11 = icmp eq ptr %i.af, null
  br i1 %.not11, label %bb.e, label %.loopexit

bb.n:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -9223372036854775800, ptr %i.d, align 8
  %i.ag = call noundef nonnull align 8 ptr @_RNvXs1_NtCsbZN1VVVQjZP_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNtNtCsbZN1VVVQjZP_5prost8encoding7message5mergeNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsQRShE0BZ_.exit, %_RNCINvNtNtCsbZN1VVVQjZP_5prost8encoding7message5mergeNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsQRShE0BZ_.exit.thread, %bb.f, %bb.a, %bb.n, %bb.d
  %.sroa.0.0 = phi ptr [ %i.h, %bb.a ], [ %i.n, %bb.d ], [ null, %bb.f ], [ %i.ag, %bb.n ], [ %.sroa.11.0.ph.i, %_RNCINvNtNtCsbZN1VVVQjZP_5prost8encoding7message5mergeNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsQRShE0BZ_.exit.thread ], [ %i.af, %_RNCINvNtNtCsbZN1VVVQjZP_5prost8encoding7message5mergeNtNtNtNtNtCshuexzQAPOo_12libp2p_noise2io9handshake5proto13payload_proto15NoiseExtensionsQRShE0BZ_.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtCsbZN1VVVQjZP_5prost8encoding10skip_fieldQRShECshuexzQAPOo_12libp2p_noise(i8 noundef range(i8 0, 6) %0, i32 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = icmp eq i32 %3, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -9223372036854775806, ptr %i.d, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvXs1_NtCsbZN1VVVQjZP_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit34

bb.c:                                             ; preds = %bb.a
  switch i8 %0, label %default.unreachable76 [
    i8 0, label %bb.d
    i8 1, label %bb.o
    i8 2, label %bb.e
    i8 3, label %.preheader
    i8 4, label %bb.m
    i8 5, label %bb.n
  ]

.preheader:                                       ; preds = %bb.c
  %i.j = add i32 %3, -1
  br label %bb.f

.loopexit34:                                      ; preds = %bb.s, %bb.e, %bb.d, %bb.t, %bb.m, %.loopexit, %bb.u, %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCshuexzQAPOo_12libp2p_noise.exit, %bb.b
  %.sroa.0.0 = phi ptr [ %i.i, %bb.b ], [ %i.ah, %bb.m ], [ %i.at, %bb.u ], [ null, %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCshuexzQAPOo_12libp2p_noise.exit ], [ %i.m, %bb.d ], [ %.sroa.11.0.ph, %.loopexit ], [ %i.ao, %bb.t ], [ %i.q, %bb.e ], [ %i.an, %bb.s ]
  ret ptr %.sroa.0.0

default.unreachable76:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc { i64, ptr } @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13decode_varintQRShECshuexzQAPOo_12libp2p_noise(ptr noalias nofree noundef align 8 dereferenceable(8) %2) #24 ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %.loopexit34, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.o = tail call fastcc { i64, ptr } @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13decode_varintQRShECshuexzQAPOo_12libp2p_noise(ptr noalias nofree noundef align 8 dereferenceable(8) %2) #24 ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  %i.r = trunc nuw i64 %i.p to i1
  br i1 %i.r, label %.loopexit34, label %bb.p

bb.f:                                             ; preds = %.preheader, %bb.s
  %i.s = tail call fastcc { i64, ptr } @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13decode_varintQRShECshuexzQAPOo_12libp2p_noise(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2) #24, !noalias !59 ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = extractvalue { i64, ptr } %i.s, 1        ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.w = trunc nuw i64 %i.t to i1
  br i1 %i.w, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ugt ptr %i.u, inttoptr (i64 4294967295 to ptr)
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = and i64 %i.v, 7                          ; 4 uses
  %switch = icmp samesign ult i64 %i.y, 6
  br i1 %switch, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !62
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.v, ptr %i.z, align 8, !noalias !62
  store i64 -9223372036854775804, ptr %i.c, align 8, !noalias !62
end_hunk_0
