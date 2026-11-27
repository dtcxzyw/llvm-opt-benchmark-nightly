Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/usernames-38fc0eb963246ca5.usernames.897995bc461e8f6b-cgu.1?download=true
inline.NumInlined: 182
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/prost-0.14.4/src/encoding/varint.rs\00", align 1, !guid !4
@1 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.0/src/bytes_mut.rs\00", align 1, !guid !4
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"b\00\00\00\00\00\00\00[\02\00\00\13\00\00\00" }>, align 8, !guid !4
@3 = private unnamed_addr constant [96 x i8] c"`\B9\93f:=\AE\CCL\85/S5G\E3\058\8C*P\A5\83\93\EA'}\E4\AB\F3\DET:\F2\B6\F1\C8&\FA6@ o;X\B2(k\DE\FD\FD\A6\A5O\F9\02\F2\04\A7-\E77\D2aW\06\06\BD:\BF\CEN\96\17\D4H\FB,\AE\B6\CC\02\8E\C9\A2\B6+\10\B3\D9\EB)H\DAo?S", align 1, !guid !4
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"b\00\00\00\00\00\00\00\AB\04\00\00\17\00\00\00" }>, align 8, !guid !4
@_RNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS = hidden local_unnamed_addr global <{ ptr, [472 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceB8_, [472 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8, !guid !5
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00Y\00\00\00\05\00\00\00" }>, align 8, !guid !4
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00_\00\00\00\05\00\00\00" }>, align 8, !guid !4
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00e\00\00\00\05\00\00\00" }>, align 8, !guid !4
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00s\00\00\00\05\00\00\00" }>, align 8, !guid !4
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00y\00\00\00\05\00\00\00" }>, align 8, !guid !4
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00\7F\00\00\00\05\00\00\00" }>, align 8, !guid !4
@_RNvNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx29constants22EXTENDEDPOINT_IDENTITY = external local_unnamed_addr global { { [5 x <4 x i64>] } }
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"b\00\00\00\00\00\00\00\EB\04\00\00\19\00\00\00" }>, align 8, !guid !4
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"b\00\00\00\00\00\00\00\F3\04\00\00\14\00\00\00" }>, align 8, !guid !4
@13 = private unnamed_addr constant [27 x i8] c"Username must contain a '.'", align 1, !guid !4
@14 = private unnamed_addr constant [20 x i8] c"Name cannot be empty", align 1, !guid !4
@15 = private unnamed_addr constant [30 x i8] c"Name cannot start with a digit", align 1, !guid !4
@16 = private unnamed_addr constant [38 x i8] c"Nickname contains disallowed character", align 1, !guid !4
@17 = private unnamed_addr constant [21 x i8] c"Nickname is too short", align 1, !guid !4
@18 = private unnamed_addr constant [20 x i8] c"Nickname is too long", align 1, !guid !4
@19 = private unnamed_addr constant [29 x i8] c"Discriminator cannot be empty", align 1, !guid !4
@20 = private unnamed_addr constant [28 x i8] c"Discriminator cannot be zero", align 1, !guid !4
@21 = private unnamed_addr constant [38 x i8] c"Discriminator cannot be a single digit", align 1, !guid !4
@22 = private unnamed_addr constant [83 x i8] c"Discriminator cannot have leading zeros unless it would otherwise be a single digit", align 1, !guid !4
@23 = private unnamed_addr constant [44 x i8] c"Discriminator must only be made up of digits", align 1, !guid !4
@24 = private unnamed_addr constant [49 x i8] c"Value is too large to be a username discriminator", align 1, !guid !4
@25 = private unnamed_addr constant [49 x i8] c"The combined length of all input data is too long", align 1, !guid !4
@26 = private unnamed_addr constant [32 x i8] c"Invalid size of the entropy data", align 1, !guid !4
@27 = private unnamed_addr constant [75 x i8] c"Username link data size is too short: must contain IV, ciphertext, and HMAC", align 1, !guid !4
@28 = private unnamed_addr constant [83 x i8] c"HMAC on username link doesn't match the one calculated with the given entropy input", align 1, !guid !4
@29 = private unnamed_addr constant [50 x i8] c"Ciphertext in the username link can't be decrypted", align 1, !guid !4
@30 = private unnamed_addr constant [61 x i8] c"Data decrypted from the username link is of invalid structure", align 1, !guid !4
@31 = private unnamed_addr constant [30 x i8] c"Username could not be verified", align 1, !guid !4
@32 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sha2-0.11.0/src/block_api.rs\00", align 1, !guid !4
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"a\00\00\00\00\00\00\00F\00\00\00\13\00\00\00" }>, align 8, !guid !4
@34 = private unnamed_addr constant [32 x i8] c"g\E6\09j\85\AEg\BBr\F3n<:\F5O\A5\7FR\0EQ\8Ch\05\9B\AB\D9\83\1F\19\CD\E0[", align 8, !guid !4
@35 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.0/src/buf/take.rs\00", align 1, !guid !4
@36 = private unnamed_addr constant [35 x i8] c"assertion failed: cnt <= self.limit", align 1, !guid !4
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"a\00\00\00\00\00\00\00\92\00\00\00\09\00\00\00" }>, align 8, !guid !4

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB24_2B0EB2h_EB2h_EB2h_EB2h_EB2h_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB38_7default7Default7default0E0ECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 1 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !13 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsd_B5_BF_NtNtB2Z_5clone5Clone5clone0E0ECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !19 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !20, !nonnull !6, !noundef !6 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.b = load <16 x i8>, ptr %.val.i.i, align 1, !alias.scope !21, !noalias !22
  store <16 x i8> %i.b, ptr %0, align 1
  %.sroa.1951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <16 x i8>, ptr %i.a, align 1, !alias.scope !21, !noalias !22
  store <16 x i8> %i.c, ptr %.sroa.1951.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdbmLU2M1sR8_3log13___private_api3loguNtB2_12GlobalLoggerECsbNM6vbj4kjf_9usernames(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #2 personality ptr @rust_eh_personality !guid !26 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !27, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !27, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !27, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !27, !noundef !6
  %i.k = load ptr, ptr %3, align 8, !alias.scope !27, !nonnull !6, !noundef !6
  %i.l = load ptr, ptr %i.d, align 8, !noalias !27, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !27, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !noalias !27, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %i.q, align 8, !noalias !27
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.k, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !27
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.j, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %0, ptr %i.r, align 8, !noalias !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %1, ptr %i.s, align 8, !noalias !27
  store i64 0, ptr %i.b, align 8, !noalias !27
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !27
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !27
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !27
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %4 = zext i32 %i.p to i64
  %5 = shl nuw i64 %4, 32
  %6 = or disjoint i64 %5, 1
  store i64 %6, ptr %i.u, align 8, !noalias !27
  call void @_RNvXs0_NtCsdbmLU2M1sR8_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsfkg6qDyjgHi_4hmac5utils11get_der_keyNtCsj2Wav7G13rI_4sha26Sha256ECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 1 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !121 {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [64 x i8], align 1                ; 4 uses
  %i.f = alloca [64 x i8], align 1                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 1                ; 6 uses
  %i.i = alloca [104 x i8], align 8               ; 15 uses
  %i.j = alloca [32 x i8], align 1                ; 5 uses
  %i.k = alloca [104 x i8], align 8               ; 9 uses
  %i.l = alloca [64 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.l, i8 0, i64 64, i1 false), !alias.scope !122
  %i.m = icmp samesign ult i64 %2, 65
  br i1 %i.m, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !123
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @34, i64 32, i1 false), !noalias !123
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 63 ; 2 uses
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !alias.scope !124, !noalias !123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.o = lshr i64 %2, 6                           ; 2 uses
  store i64 %i.o, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !129, !noalias !130
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, 144115188075855872) %i.o)
          to label %bb.d unwind label %.body.thread.i, !noalias !131

bb.c:                                             ; preds = %.body.thread.i, %.body.i
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.bc, %.body.thread.i ], [ %eh.lpad-body.i.i.i, %.body.i ]
  resume { ptr, i32 } %eh.lpad-body9.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.e ], [ %lpad.loopexit.split-lp11, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !132
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %i.i, ptr nonnull align 1 %i.c, i64 64, i1 true), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(104) %i.i) #21, !noalias !133, !srcloc !8
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.t) #21, !noalias !133, !srcloc !8
  br label %bb.c

bb.d:                                             ; preds = %bb.b
  %i.p = and i64 %2, 9223372036854775744
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = and i64 %2, 63                           ; 2 uses
  %i.s = trunc nuw nsw i64 %i.r to i8
  store i8 %i.s, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !alias.scope !134, !noalias !123
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %i.k, ptr nonnull readonly align 1 %i.q, i64 %i.r, i1 false), !alias.scope !135, !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 104, i1 false), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, i8 0, i64 32, i1 false), !alias.scope !137, !noalias !136
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, i8 0, i64 32, i1 false), !alias.scope !142, !noalias !141
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 63 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !145, !noalias !136, !noundef !6 ; 2 uses
  %i.w = zext nneg i8 %i.v to i64                 ; 3 uses
  %i.x = icmp ult i8 %i.v, 64
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !146, !noalias !136, !noundef !6
  %i.aa = shl i64 %i.z, 9
  %i.ab = shl nuw nsw i64 %i.w, 3
  %i.ac = or disjoint i64 %i.aa, %i.ab
  %i.ad = call i64 @llvm.bswap.i64(i64 %i.ac)
  %i.ae = xor i64 %i.w, 63                        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.w ; 2 uses
  store i8 -128, ptr %i.af, align 1, !alias.scope !147, !noalias !136
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.ae, i1 false), !alias.scope !147, !noalias !136
  %i.ah = icmp samesign ult i64 %i.ae, 8
  br i1 %i.ah, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.h, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.u, align 1, !alias.scope !148, !noalias !149
  br label %.body.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.i, i64 64, i1 false), !noalias !151
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1)
          to label %bb.g unwind label %bb.e, !noalias !152

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i8 0, i64 56, i1 false), !alias.scope !145, !noalias !153
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %i.ad, ptr %i.aj, align 8, !alias.scope !154, !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.i, i64 64, i1 false), !noalias !151
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1)
          to label %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i unwind label %bb.e, !noalias !156

_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !155
  store i8 0, ptr %i.u, align 1, !alias.scope !157, !noalias !158
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !159
  store ptr %i.ak, ptr %i.d, align 8, !noalias !160
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !160
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !160
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !160
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !161
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull %i.y)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !162

.noexc.i.i.i:                                     ; preds = %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !159
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.an = load i64, ptr %i.al, align 8, !alias.scope !163, !noalias !161, !noundef !6 ; 2 uses
  %i.ao = load i64, ptr %i.am, align 8, !alias.scope !163, !noalias !161, !noundef !6
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i.i.i.i.i, label %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha256NtB3_6Digest6digestRShECsbNM6vbj4kjf_9usernames.exit

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i.i.i.i.i
  %i.ar = phi i64 [ %i.an, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i.i.i.i.i ], [ %i.az, %_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i ] ; 3 uses
  %i.as = add nuw i64 %i.ar, 1
  store i64 %i.as, ptr %i.al, align 8, !alias.scope !163, !noalias !161
  %i.at = invoke { ptr, i64 } @_RNvXs1y_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g, i64 noundef %i.ar)
          to label %.noexc1.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !164 ; 2 uses

.noexc1.i.i.i:                                    ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha256NtB3_6Digest6digestRShECsbNM6vbj4kjf_9usernames.exit, label %bb.i

bb.i:                                             ; preds = %.noexc1.i.i.i
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !163, !noalias !161, !nonnull !6, !noundef !6
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.ar
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !162, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.av, 4
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i, label %bb.j, !prof !9

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %i.av, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22
          to label %.noexc2.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !167

.noexc2.i.i.i:                                    ; preds = %bb.j
  unreachable

_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ay = call i32 @llvm.bswap.i32(i32 %i.ax)
  store i32 %i.ay, ptr %i.au, align 1, !alias.scope !168, !noalias !162
  %i.az = load i64, ptr %i.al, align 8, !alias.scope !163, !noalias !161, !noundef !6 ; 2 uses
  %i.ba = load i64, ptr %i.am, align 8, !alias.scope !163, !noalias !161, !noundef !6
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i, label %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha256NtB3_6Digest6digestRShECsbNM6vbj4kjf_9usernames.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i, %bb.j, %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.thread.i:                                   ; preds = %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !noalias !169
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %i.k, ptr nonnull align 1 %i.a, i64 64, i1 true), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(104) %i.k) #21, !noalias !131, !srcloc !8
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.n) #21, !noalias !131, !srcloc !8
  br label %bb.c

_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha256NtB3_6Digest6digestRShECsbNM6vbj4kjf_9usernames.exit: ; preds = %.noexc1.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.h, i64 32, i1 false), !alias.scope !170, !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !172
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %i.i, ptr nonnull align 1 %i.b, i64 64, i1 true), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(104) %i.i) #21, !noalias !133, !srcloc !8
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.t) #21, !noalias !133, !srcloc !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.l, ptr noundef nonnull align 1 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !123
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha256NtB3_6Digest6digestRShECsbNM6vbj4kjf_9usernames.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(64) %i.l, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.l:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !173
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCseNmJmsPJ47l_7zeroize9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !174 {
bb.a:
  invoke void @_RNvXsd_CseNmJmsPJ47l_7zeroizeINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_ENtB5_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvXss_CseNmJmsPJ47l_7zeroizeINtB5_9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #23
          to label %common.resume unwind label %bb.e

_RNvXss_CseNmJmsPJ47l_7zeroizeINtB5_9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames.exit unwind label %bb.c

bb.c:                                             ; preds = %_RNvXss_CseNmJmsPJ47l_7zeroizeINtB5_9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames.exit
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames.exit: ; preds = %_RNvXss_CseNmJmsPJ47l_7zeroizeINtB5_9ZeroizingINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames.exit
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !175 {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecAaj40_EECsbNM6vbj4kjf_9usernames.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecAaj40_EECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtB1c_7backend6vector4avx27edwards11CachedPointEEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !176 {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtBJ_7backend6vector4avx27edwards11CachedPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtBQ_7backend6vector4avx27edwards11CachedPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtB1j_7backend6vector4avx27edwards11CachedPointEEECsbNM6vbj4kjf_9usernames.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtBQ_7backend6vector4avx27edwards11CachedPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtB1j_7backend6vector4avx27edwards11CachedPointEEECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #2 !guid !177 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #2 !guid !178 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %.not = icmp eq i8 %0, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(8) %2) #25 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %4 = zext nneg i8 %0 to i16
  %5 = or disjoint i16 %4, 512
  store i16 %5, ptr %i.i, align 8
  store i64 -9223372036854775802, ptr %i.a, align 8
  %i.j = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.val = load ptr, ptr %2, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.k = getelementptr i8, ptr %.val, i64 8
  %.val.i = load i64, ptr %i.k, align 8, !noundef !6
  %i.l = icmp ult i64 %.val.i, %i.g
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13copy_to_bytesCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val, i64 noundef %i.g)
  call void @_RINvXs3_NtCs43OB2dM8s8d_5prost8encodingINtNtCs6i54tJFfzR_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter12replace_withNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -9223372036854775801, ptr %i.c, align 8
  %i.m = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e, %bb.c
  %.sroa.0.0 = phi ptr [ %i.j, %bb.c ], [ null, %bb.e ], [ %i.m, %bb.f ], [ %i.f, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6string5mergeQRShECsbNM6vbj4kjf_9usernames(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !guid !182 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %.not.i = icmp eq i8 %0, 2
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke fastcc { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2) #25
          to label %.noexc unwind label %bb.l, !noalias !184 ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 3 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !185
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %4 = zext nneg i8 %0 to i16
  %5 = or disjoint i16 %4, 512
  store i16 %5, ptr %i.j, align 8, !noalias !185
  store i64 -9223372036854775802, ptr %i.a, align 8, !noalias !185
  %i.k = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
          to label %.noexc7 unwind label %bb.l, !noalias !185

.noexc7:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !185
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread

bb.d:                                             ; preds = %.noexc
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !183, !nonnull !6, !align !7, !noundef !6
  %i.l = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i = load i64, ptr %i.l, align 8, !noalias !184, !noundef !6
  %i.m = icmp ult i64 %.val.i.i, %i.h
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvXs3_NtCs43OB2dM8s8d_5prost8encodingINtNtCs6i54tJFfzR_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter12replace_withINtNtNtCs17cqnTMcAHA_5bytes3buf4take4TakeQQRShEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.h)
          to label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread13 unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !185
  store i64 -9223372036854775801, ptr %i.b, align 8, !noalias !185
  %i.n = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
          to label %.noexc9 unwind label %bb.l, !noalias !184

.noexc9:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !185
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread

_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit: ; preds = %.noexc
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread13, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread

_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread: ; preds = %.noexc9, %.noexc7, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit
  %.sroa.0.0.i12 = phi ptr [ %i.g, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit ], [ %i.n, %.noexc9 ], [ %i.k, %.noexc7 ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.o, align 8
  br label %bb.k

_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread13: ; preds = %bb.e, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread13
  %i.t = load i64, ptr %i.d, align 8, !range !10, !noundef !6
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -9223372036854775798, ptr %i.c, align 8
  %i.v = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c)
          to label %bb.j unwind label %bb.l

bb.i:                                             ; preds = %bb.g, %bb.j
  %.sroa.0.0 = phi ptr [ %i.v, %bb.j ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.r, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.i12, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread ], [ %.sroa.0.0, %bb.i ]
  ret ptr %.sroa.0.1

bb.l:                                             ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECsbNM6vbj4kjf_9usernames.exit.thread13, %bb.h, %bb.b, %bb.c, %bb.e, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.x, align 8
  resume { ptr, i32 } %i.w
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 !guid !193 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !6, !noundef !6 ; 13 uses
  %i.c = getelementptr i8, ptr %.val, i64 8       ; 3 uses
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !6 ; 14 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775807, ptr %i.b, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = ptrtoint ptr %i.e to i64
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %.val.i, align 1, !noundef !6 ; 3 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i64 %.val1.i, 10
  br i1 %i.i, label %.thread, label %bb.ai

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.c
  %i.j = add i64 %.val1.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  store ptr %i.k, ptr %.val, align 8, !alias.scope !194, !captures !11
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !194
  %i.l = zext nneg i8 %i.g to i64
  br label %bb.al

bb.e:                                             ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d
  %i.m = zext i8 %i.g to i32
  %i.n = add nsw i32 %i.m, -128
  %i.o = icmp ne i64 %.val1.i, 1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !195, !noundef !6 ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 7
  %i.t = or disjoint i32 %i.s, %i.n               ; 3 uses
  %i.u = icmp sgt i8 %i.q, -1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.v = icmp samesign ult i32 %i.t, 16384
  br i1 %i.v, label %bb.i, label %bb.h

bb.g:                                             ; preds = %.thread
  %i.w = zext nneg i32 %i.t to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.h:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.t, -16384
  %i.y = icmp samesign ugt i64 %.val1.i, 2
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !195, !noundef !6 ; 2 uses
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 14
  %i.ad = or disjoint i32 %i.ac, %i.x             ; 3 uses
  %i.ae = icmp sgt i8 %i.aa, -1
  br i1 %i.ae, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !noalias !196
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = icmp samesign ult i32 %i.ad, 2097152
  br i1 %i.af, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ag = zext nneg i32 %i.ad to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.l:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.ad, -2097152
  %i.ai = icmp samesign ugt i64 %.val1.i, 3
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !195, !noundef !6 ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 21
  %i.an = add nuw nsw i32 %i.ah, %i.am            ; 3 uses
  %i.ao = icmp sgt i8 %i.ak, -1
  br i1 %i.ao, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22, !noalias !196
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ap = icmp samesign ult i32 %i.an, 268435456
  br i1 %i.ap, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.aq = zext nneg i32 %i.an to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.p:                                             ; preds = %bb.n
  %i.ar = add nsw i32 %i.an, -268435456
  %i.as = zext nneg i32 %i.ar to i64              ; 5 uses
  %i.at = icmp samesign ugt i64 %.val1.i, 4
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !195, !noundef !6 ; 3 uses
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %bb.ah, label %bb.r
end_hunk_0
